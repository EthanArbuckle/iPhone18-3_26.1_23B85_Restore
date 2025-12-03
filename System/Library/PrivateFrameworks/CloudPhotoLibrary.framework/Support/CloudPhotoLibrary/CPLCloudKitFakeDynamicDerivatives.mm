@interface CPLCloudKitFakeDynamicDerivatives
+ (BOOL)_transferImageFromSource:(CGImageSource *)source toDestination:(CGImageDestination *)destination matchingResource:(id)resource;
+ (BOOL)isFakeDerivative:(id)derivative;
+ (BOOL)transformFromURL:(id)l fileType:(id)type toTargetURL:(id)rL matchingResource:(id)resource error:(id *)error;
+ (NSString)fakeDerivativesDescription;
+ (id)_metadataWithoutOrientation:(id)orientation;
+ (id)_outputOptionsFromSource:(CGImageSource *)source matchingResource:(id)resource;
+ (id)overriddenResourcesFromResources:(id)resources;
+ (id)transformData:(id)data fileType:(id)type matchingResource:(id)resource error:(id *)error;
+ (unint64_t)realResourceTypeForResource:(id)resource;
+ (void)setAllowsFakeDerivatives:(BOOL)derivatives;
@end

@implementation CPLCloudKitFakeDynamicDerivatives

+ (NSString)fakeDerivativesDescription
{
  if (byte_1002C5129 == 1 && [qword_1002C5120 count])
  {
    v2 = [NSMutableArray alloc];
    v3 = [v2 initWithCapacity:{objc_msgSend(qword_1002C5120, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = qword_1002C5120;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v12 + 1) + 8 * i) description];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v10 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)setAllowsFakeDerivatives:(BOOL)derivatives
{
  if (derivatives)
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 stringForKey:@"CPLFakeDynamicDerivatives"];

    if (v6)
    {
      selfCopy = self;
      v7 = [v6 componentsSeparatedByString:{@", "}];
      v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v24;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v23 + 1) + 8 * v13);
            v15 = [[_CPLFakeDerivativeMapper alloc] initWithRule:v14];
            if (!v15)
            {
              if ((_CPLSilentLogging & 1) == 0)
              {
                v20 = __CPLGenericOSLogDomain();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v28 = v14;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid fake derivative rule '%@'", buf, 0xCu);
                }
              }

              if ((_CPLSilentLogging & 1) == 0)
              {
                v21 = __CPLGenericOSLogDomain();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v28 = v6;
                  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to parse fake derivatives rules '%@'", buf, 0xCu);
                }
              }

              byte_1002C5129 = 0;
              v17 = qword_1002C5120;
              qword_1002C5120 = 0;
              goto LABEL_24;
            }

            v16 = v15;
            [v8 addObject:v15];

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      byte_1002C5129 = 1;
      objc_storeStrong(&qword_1002C5120, v8);
      if ((_CPLSilentLogging & 1) == 0)
      {
        v17 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          fakeDerivativesDescription = [selfCopy fakeDerivativesDescription];
          *buf = 138412290;
          v28 = fakeDerivativesDescription;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Will produce fake derivatives: %@", buf, 0xCu);
        }

LABEL_24:
      }
    }
  }

  else
  {
    byte_1002C5129 = 0;
    v19 = qword_1002C5120;
    qword_1002C5120 = 0;
  }

  byte_1002C5128 = derivatives;
}

+ (id)overriddenResourcesFromResources:(id)resources
{
  resourcesCopy = resources;
  v4 = resourcesCopy;
  if (byte_1002C5129 == 1 && [resourcesCopy count])
  {
    v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 resourceType]);
          [v5 setObject:v11 forKeyedSubscript:v12];
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = qword_1002C5120;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v20 + 1) + 8 * j) updateResources:{v5, v20}];
        }

        v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }

    allValues = [v5 allValues];
  }

  else
  {
    allValues = v4;
  }

  return allValues;
}

+ (BOOL)isFakeDerivative:(id)derivative
{
  if (byte_1002C5129 != 1)
  {
    return 0;
  }

  identity = [derivative identity];
  fingerPrint = [identity fingerPrint];
  v5 = [fingerPrint hasPrefix:@"^"];

  return v5;
}

+ (unint64_t)realResourceTypeForResource:(id)resource
{
  resourceCopy = resource;
  v4 = [_CPLCloudKitFakeFingerPrint alloc];
  identity = [resourceCopy identity];
  v6 = [(_CPLCloudKitFakeFingerPrint *)v4 initWithFakeIdentity:identity];

  if (v6)
  {
    realResourceType = [(_CPLCloudKitFakeFingerPrint *)v6 realResourceType];
  }

  else
  {
    realResourceType = [resourceCopy resourceType];
  }

  v8 = realResourceType;

  return v8;
}

+ (id)_metadataWithoutOrientation:(id)orientation
{
  orientationCopy = orientation;
  v4 = [orientationCopy mutableCopy];
  [v4 removeObjectForKey:kCGImagePropertyOrientation];
  v5 = [orientationCopy objectForKey:kCGImagePropertyTIFFDictionary];

  v6 = [v5 mutableCopy];
  if (v6)
  {
    [v6 removeObjectForKey:kCGImagePropertyTIFFOrientation];
    [v4 setObject:v6 forKey:kCGImagePropertyTIFFDictionary];
  }

  return v4;
}

+ (id)_outputOptionsFromSource:(CGImageSource *)source matchingResource:(id)resource
{
  v18 = @"kCGImageSourceKeepOriginalProfile";
  v19 = kCFBooleanTrue;
  resourceCopy = resource;
  v7 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v8 = CGImageSourceCopyPropertiesAtIndex(source, 0, v7);
  v9 = [self _metadataWithoutOrientation:v8];
  [v9 setObject:&off_1002914E8 forKey:kCGImageDestinationLossyCompressionQuality];
  identity = [resourceCopy identity];

  [identity imageDimensions];
  v12 = v11;
  v14 = v13;

  if (v12 >= v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  v16 = [NSNumber numberWithInt:v15];
  [v9 setObject:v16 forKey:kCGImageDestinationImageMaxPixelSize];

  [v9 setObject:&__kCFBooleanTrue forKey:kCGImageSourceCreateThumbnailWithTransform];

  return v9;
}

+ (BOOL)_transferImageFromSource:(CGImageSource *)source toDestination:(CGImageDestination *)destination matchingResource:(id)resource
{
  v7 = [self _outputOptionsFromSource:source matchingResource:resource];
  CGImageDestinationAddImageFromSource(destination, source, 0, v7);
  LOBYTE(destination) = CGImageDestinationFinalize(destination);

  return destination;
}

+ (BOOL)transformFromURL:(id)l fileType:(id)type toTargetURL:(id)rL matchingResource:(id)resource error:(id *)error
{
  lCopy = l;
  typeCopy = type;
  rLCopy = rL;
  resourceCopy = resource;
  v16 = [_CPLCloudKitFakeFingerPrint alloc];
  identity = [resourceCopy identity];
  v18 = [(_CPLCloudKitFakeFingerPrint *)v16 initWithFakeIdentity:identity];

  if (v18)
  {
    if (typeCopy)
    {
      v32 = kCGImageSourceTypeIdentifierHint;
      v33 = typeCopy;
      v19 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    }

    else
    {
      v19 = 0;
    }

    v22 = CGImageSourceCreateWithURL(lCopy, v19);
    if (!v22)
    {
      v20 = 0;
      if (!error)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v23 = v22;
    v30 = lCopy;
    errorCopy = error;
    selfCopy = self;
    outputType = [(_CPLCloudKitFakeFingerPrint *)v18 outputType];
    v27 = rLCopy;
    v28 = CGImageDestinationCreateWithURL(rLCopy, outputType, 1uLL, 0);

    if (v28)
    {
      v20 = [selfCopy _transferImageFromSource:v23 toDestination:v28 matchingResource:resourceCopy];
      CFRelease(v28);
    }

    else
    {
      v20 = 0;
    }

    error = errorCopy;
    CFRelease(v23);
    rLCopy = v27;
    lCopy = v30;
    if (errorCopy)
    {
LABEL_16:
      if ((v20 & 1) == 0)
      {
        *error = +[CPLErrors unknownError];
      }
    }
  }

  else
  {
    v19 = +[NSFileManager defaultManager];
    v31 = 0;
    v20 = [(__CFDictionary *)v19 cplCopyItemAtURL:lCopy toURL:rLCopy error:&v31];
    v21 = v31;
    if (error && (v20 & 1) == 0)
    {
      v21 = v21;
      *error = v21;
    }
  }

LABEL_18:

  return v20;
}

+ (id)transformData:(id)data fileType:(id)type matchingResource:(id)resource error:(id *)error
{
  dataCopy = data;
  typeCopy = type;
  resourceCopy = resource;
  v12 = [_CPLCloudKitFakeFingerPrint alloc];
  identity = [resourceCopy identity];
  v14 = [(_CPLCloudKitFakeFingerPrint *)v12 initWithFakeIdentity:identity];

  if (v14)
  {
    if (typeCopy)
    {
      v22 = kCGImageSourceTypeIdentifierHint;
      v23 = typeCopy;
      v15 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    }

    else
    {
      v15 = 0;
    }

    v17 = CGImageSourceCreateWithData(dataCopy, v15);
    if (v17)
    {
      v18 = v17;
      v16 = objc_alloc_init(NSMutableData);
      outputType = [(_CPLCloudKitFakeFingerPrint *)v14 outputType];
      v20 = CGImageDestinationCreateWithData(v16, outputType, 1uLL, 0);

      if (v20)
      {
        if (([self _transferImageFromSource:v18 toDestination:v20 matchingResource:resourceCopy] & 1) == 0)
        {

          v16 = 0;
        }

        CFRelease(v20);
      }

      CFRelease(v18);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = dataCopy;
  }

  return v16;
}

@end