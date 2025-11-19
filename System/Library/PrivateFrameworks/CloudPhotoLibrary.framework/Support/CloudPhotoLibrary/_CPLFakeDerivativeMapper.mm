@interface _CPLFakeDerivativeMapper
+ (unint64_t)destinationresourceTypeFromShortDescription:(id)a3;
+ (void)initialize;
- (CGSize)_dimensionsFromBaseResource:(id)a3;
- (_CPLFakeDerivativeMapper)initWithRule:(id)a3;
- (id)_bestSourceResourceFromResources:(id)a3;
- (id)description;
- (void)updateResources:(id)a3;
@end

@implementation _CPLFakeDerivativeMapper

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = CGImageDestinationCopyTypeIdentifiers();
    v3 = qword_1002C5140;
    qword_1002C5140 = v2;

    v4 = CGImageDestinationCopyTypeIdentifiers();
    v5 = qword_1002C5148;
    qword_1002C5148 = v4;
  }
}

+ (unint64_t)destinationresourceTypeFromShortDescription:(id)a3
{
  result = [CPLResource resourceTypeFromShortDescription:a3];
  if (result - 2 >= 4)
  {
    return 0;
  }

  return result;
}

- (_CPLFakeDerivativeMapper)initWithRule:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _CPLFakeDerivativeMapper;
  v5 = [(_CPLFakeDerivativeMapper *)&v17 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [v4 componentsSeparatedByString:@"/"];
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

- (id)_bestSourceResourceFromResources:(id)a3
{
  v4 = a3;
  if (self->_maxPixelCount != 0.0)
  {
    v10 = 0;
    resourceType = self->_resourceType;
    v18 = xmmword_100243DD0;
    v19 = xmmword_100243DE0;
    while (1)
    {
      v11 = [NSNumber numberWithUnsignedInteger:*(&resourceType + v10), resourceType, v18, v19];
      v9 = [v4 objectForKeyedSubscript:v11];

      if (v9 && ![CPLCloudKitFakeDynamicDerivatives isFakeDerivative:v9])
      {
        v12 = [v9 identity];
        if ([v12 isAvailable])
        {
          [v12 imageDimensions];
          if (v13 * v14 >= self->_maxPixelCount)
          {
            v15 = [v12 fileUTI];
            if (v15 && ([qword_1002C5148 containsObject:v15] & 1) != 0)
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
  v6 = [v4 objectForKeyedSubscript:v5];

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

- (CGSize)_dimensionsFromBaseResource:(id)a3
{
  v4 = a3;
  v5 = [v4 identity];
  [v5 imageDimensions];
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

- (void)updateResources:(id)a3
{
  v20 = a3;
  v4 = [(_CPLFakeDerivativeMapper *)self _bestSourceResourceFromResources:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identity];
    [(_CPLFakeDerivativeMapper *)self _dimensionsFromBaseResource:v5];
    v8 = v7;
    v10 = v9;
    v11 = [_CPLCloudKitFakeFingerPrint alloc];
    v12 = [v5 resourceType];
    v13 = [v6 fingerPrint];
    v14 = [(_CPLCloudKitFakeFingerPrint *)v11 initWithRealResourceType:v12 realFingerPrint:v13 outputType:self->_outputType dimensions:v8, v10];

    v15 = [CPLResource alloc];
    v16 = [(_CPLCloudKitFakeFingerPrint *)v14 fakeIdentity];
    v17 = [v5 itemScopedIdentifier];
    v18 = [v15 initWithResourceIdentity:v16 itemScopedIdentifier:v17 resourceType:self->_resourceType];

    v19 = [NSNumber numberWithUnsignedInteger:self->_resourceType];
    [v20 setObject:v18 forKeyedSubscript:v19];
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