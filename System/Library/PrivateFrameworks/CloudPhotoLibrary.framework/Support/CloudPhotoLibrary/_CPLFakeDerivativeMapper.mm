@interface _CPLFakeDerivativeMapper
+ (unint64_t)destinationresourceTypeFromShortDescription:(id)description;
+ (void)initialize;
- (CGSize)_dimensionsFromBaseResource:(id)resource;
- (_CPLFakeDerivativeMapper)initWithRule:(id)rule;
- (id)_bestSourceResourceFromResources:(id)resources;
- (id)description;
- (void)updateResources:(id)resources;
@end

@implementation _CPLFakeDerivativeMapper

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = CGImageDestinationCopyTypeIdentifiers();
    v3 = qword_1002C5140;
    qword_1002C5140 = v2;

    v4 = CGImageDestinationCopyTypeIdentifiers();
    v5 = qword_1002C5148;
    qword_1002C5148 = v4;
  }
}

+ (unint64_t)destinationresourceTypeFromShortDescription:(id)description
{
  result = [CPLResource resourceTypeFromShortDescription:description];
  if (result - 2 >= 4)
  {
    return 0;
  }

  return result;
}

- (_CPLFakeDerivativeMapper)initWithRule:(id)rule
{
  ruleCopy = rule;
  v17.receiver = self;
  v17.super_class = _CPLFakeDerivativeMapper;
  v5 = [(_CPLFakeDerivativeMapper *)&v17 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [ruleCopy componentsSeparatedByString:@"/"];
  v7 = [v6 objectAtIndexedSubscript:0];
  if ([v6 count] < 2)
  {
    v8 = @"public.jpeg";
  }

  else
  {
    v8 = [v6 objectAtIndexedSubscript:1];
    if (([qword_1002C5140 containsObject:v8] & 1) == 0)
    {
      sub_100199E54(v8, buf);
LABEL_17:
      v15 = *buf;
LABEL_18:

      goto LABEL_19;
    }
  }

  outputType = v5->_outputType;
  v5->_outputType = &v8->isa;

  if ([v6 count] >= 3)
  {
    v10 = [v6 objectAtIndexedSubscript:2];
    [v10 doubleValue];
    v12 = v11;

    if (v12 <= 1000.0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_100199F18(v6, buf);
        goto LABEL_17;
      }

LABEL_19:

      v14 = 0;
      goto LABEL_20;
    }

    v5->_maxPixelCount = v12;
  }

  v13 = [objc_opt_class() destinationresourceTypeFromShortDescription:v7];
  v5->_resourceType = v13;
  if (!v13)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid dynamic resource type '%@'", buf, 0xCu);
      }

      goto LABEL_18;
    }

    goto LABEL_19;
  }

LABEL_11:
  v14 = v5;
LABEL_20:

  return v14;
}

- (id)_bestSourceResourceFromResources:(id)resources
{
  resourcesCopy = resources;
  if (self->_maxPixelCount != 0.0)
  {
    v10 = 0;
    resourceType = self->_resourceType;
    v18 = xmmword_100243DD0;
    v19 = xmmword_100243DE0;
    while (1)
    {
      v11 = [NSNumber numberWithUnsignedInteger:*(&resourceType + v10), resourceType, v18, v19];
      v9 = [resourcesCopy objectForKeyedSubscript:v11];

      if (v9 && ![CPLCloudKitFakeDynamicDerivatives isFakeDerivative:v9])
      {
        identity = [v9 identity];
        if ([identity isAvailable])
        {
          [identity imageDimensions];
          if (v13 * v14 >= self->_maxPixelCount)
          {
            fileUTI = [identity fileUTI];
            if (fileUTI && ([qword_1002C5148 containsObject:fileUTI] & 1) != 0)
            {

              goto LABEL_18;
            }
          }
        }
      }

      v10 += 8;

      if (v10 == 48)
      {
        v9 = 0;
        goto LABEL_18;
      }
    }
  }

  v5 = [NSNumber numberWithUnsignedInteger:self->_resourceType];
  v6 = [resourcesCopy objectForKeyedSubscript:v5];

  if (v6 && ([v6 identity], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isAvailable"), v7, v8))
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

LABEL_18:

  return v9;
}

- (CGSize)_dimensionsFromBaseResource:(id)resource
{
  resourceCopy = resource;
  identity = [resourceCopy identity];
  [identity imageDimensions];
  v8 = v7;
  v9 = v6;
  maxPixelCount = self->_maxPixelCount;
  if (maxPixelCount != 0.0)
  {
    v11 = v8 * v6;
    if (v8 * v9 <= 0.0)
    {
      sub_10019A00C();
    }

    v12 = maxPixelCount / v11;
    if (v12 > 1.0)
    {
      sub_100199FE0();
    }

    v13 = floor(v8 * v12);
    if (v13 >= 1.0)
    {
      v8 = v13;
    }

    else
    {
      v8 = 1.0;
    }

    v14 = floor(v9 * v12);
    if (v14 >= 1.0)
    {
      v9 = v14;
    }

    else
    {
      v9 = 1.0;
    }
  }

  v15 = v8;
  v16 = v9;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)updateResources:(id)resources
{
  resourcesCopy = resources;
  v4 = [(_CPLFakeDerivativeMapper *)self _bestSourceResourceFromResources:?];
  v5 = v4;
  if (v4)
  {
    identity = [v4 identity];
    [(_CPLFakeDerivativeMapper *)self _dimensionsFromBaseResource:v5];
    v8 = v7;
    v10 = v9;
    v11 = [_CPLCloudKitFakeFingerPrint alloc];
    resourceType = [v5 resourceType];
    fingerPrint = [identity fingerPrint];
    v14 = [(_CPLCloudKitFakeFingerPrint *)v11 initWithRealResourceType:resourceType realFingerPrint:fingerPrint outputType:self->_outputType dimensions:v8, v10];

    v15 = [CPLResource alloc];
    fakeIdentity = [(_CPLCloudKitFakeFingerPrint *)v14 fakeIdentity];
    itemScopedIdentifier = [v5 itemScopedIdentifier];
    v18 = [v15 initWithResourceIdentity:fakeIdentity itemScopedIdentifier:itemScopedIdentifier resourceType:self->_resourceType];

    v19 = [NSNumber numberWithUnsignedInteger:self->_resourceType];
    [resourcesCopy setObject:v18 forKeyedSubscript:v19];
  }
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = [CPLResource shortDescriptionForResourceType:self->_resourceType];
  v5 = [v3 initWithFormat:@"%@/%@", v4, self->_outputType];

  return v5;
}

@end