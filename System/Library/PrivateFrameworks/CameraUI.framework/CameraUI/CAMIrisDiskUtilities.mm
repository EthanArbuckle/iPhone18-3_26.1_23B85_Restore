@interface CAMIrisDiskUtilities
+ (BOOL)hasPendingWork;
+ (BOOL)parseVideoDestinationPath:(id)path forStillImagePersistenceUUID:(id *)d videoPersistenceUUID:(id *)iD captureDevice:(int64_t *)device captureOrientation:(int64_t *)orientation captureTime:(double *)time persistenceOptions:(int64_t *)options temporaryPersistenceOptions:(int64_t *)self0 bundleIdentifier:(id *)self1 filterName:(id *)self2;
+ (id)irisVideoDirectoryPathCreateIfNeeded:(BOOL)needed;
+ (id)videoDestinationPathForStillImageRequest:(id)request captureTime:(double)time isEV0ForHDR:(BOOL)r bundleIdentifier:(id)identifier;
@end

@implementation CAMIrisDiskUtilities

+ (BOOL)hasPendingWork
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [self irisVideoDirectoryPathCreateIfNeeded:0];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [defaultManager fileExistsAtPath:v2];

  v5 = 0;
  if (v4)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = 0;
    v7 = [defaultManager2 contentsOfDirectoryAtPath:v2 error:&v11];
    v8 = v11;

    if (v8)
    {
      v9 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v13 = v2;
        v14 = 2114;
        v15 = v8;
        _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Failed to get contents of %{public}@: %{public}@", buf, 0x16u);
      }
    }

    v5 = [v7 count] != 0;
  }

  return v5;
}

+ (id)irisVideoDirectoryPathCreateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  photoDCIMDirectory = [MEMORY[0x1E69BF168] photoDCIMDirectory];
  v5 = [photoDCIMDirectory stringByAppendingPathComponent:@".MISC/Iris"];

  if (neededCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v5;
}

+ (id)videoDestinationPathForStillImageRequest:(id)request captureTime:(double)time isEV0ForHDR:(BOOL)r bundleIdentifier:(id)identifier
{
  rCopy = r;
  requestCopy = request;
  identifierCopy = identifier;
  v29 = [requestCopy irisStillImagePersistenceUUIDForEV0:rCopy];
  if ([requestCopy isCTMVideo])
  {
    [requestCopy persistenceUUID];
  }

  else
  {
    [requestCopy irisVideoPersistenceUUIDForEV0:rCopy];
  }
  v12 = ;
  captureDevice = [requestCopy captureDevice];
  captureOrientation = [requestCopy captureOrientation];
  persistenceOptions = [requestCopy persistenceOptions];
  temporaryPersistenceOptions = [requestCopy temporaryPersistenceOptions];
  v16 = +[CAMEffectFilterManager ciFilterNameForFilterType:](CAMEffectFilterManager, "ciFilterNameForFilterType:", [requestCopy effectFilterType]);
  _substituteForDotInBundleIdentifier = [self _substituteForDotInBundleIdentifier];
  v18 = [identifierCopy stringByReplacingOccurrencesOfString:@"." withString:_substituteForDotInBundleIdentifier];

  _delimiterForFilenames = [self _delimiterForFilenames];
  v28 = v18;
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%ld%@%ld%@%.f%@%ld%@%ld%@%@", v29, _delimiterForFilenames, v12, _delimiterForFilenames, captureDevice, _delimiterForFilenames, captureOrientation, _delimiterForFilenames, time * 100.0, _delimiterForFilenames, persistenceOptions, _delimiterForFilenames, temporaryPersistenceOptions, _delimiterForFilenames, v18];
  if (v16)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v20, _delimiterForFilenames, v16];

    v20 = v21;
  }

  irisVideoDirectoryPath = [self irisVideoDirectoryPath];
  v23 = [irisVideoDirectoryPath stringByAppendingPathComponent:v20];
  videoPathExtension = [self videoPathExtension];
  v25 = [v23 stringByAppendingPathExtension:videoPathExtension];

  return v25;
}

+ (BOOL)parseVideoDestinationPath:(id)path forStillImagePersistenceUUID:(id *)d videoPersistenceUUID:(id *)iD captureDevice:(int64_t *)device captureOrientation:(int64_t *)orientation captureTime:(double *)time persistenceOptions:(int64_t *)options temporaryPersistenceOptions:(int64_t *)self0 bundleIdentifier:(id *)self1 filterName:(id *)self2
{
  pathCopy = path;
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  lastPathComponent = [pathCopy lastPathComponent];
  pathExtension = [pathCopy pathExtension];
  stringByDeletingPathExtension = lastPathComponent;
  pathExtension2 = 0;
  v48 = stringByDeletingPathExtension;
  do
  {
    v18 = pathExtension2;
    v19 = stringByDeletingPathExtension;
    stringByDeletingPathExtension = [stringByDeletingPathExtension stringByDeletingPathExtension];

    pathExtension2 = [stringByDeletingPathExtension pathExtension];
  }

  while ([pathExtension2 length]);
  v20 = [MEMORY[0x1E696AE88] scannerWithString:stringByDeletingPathExtension];
  _delimiterForFilenames = [self _delimiterForFilenames];
  videoPathExtension = [self videoPathExtension];
  v23 = [pathExtension isEqualToString:videoPathExtension];

  v47 = pathExtension;
  if (v23)
  {
    v53 = 0;
    v24 = [v20 scanUpToString:_delimiterForFilenames intoString:&v53];
    v25 = v53;
    if (v24 && [v20 scanString:_delimiterForFilenames intoString:0])
    {
      v52 = 0;
      v26 = [v20 scanUpToString:_delimiterForFilenames intoString:&v52];
      v27 = v52;
      if (v26)
      {
        if ([v20 scanString:_delimiterForFilenames intoString:0])
        {
          if ([v20 scanInteger:&v57])
          {
            if ([v20 scanString:_delimiterForFilenames intoString:0])
            {
              if ([v20 scanInteger:&v56])
              {
                if ([v20 scanString:_delimiterForFilenames intoString:0])
                {
                  v51 = 0;
                  if ([v20 scanLongLong:&v51])
                  {
                    v28 = v51;
                    if ([v20 scanString:_delimiterForFilenames intoString:0])
                    {
                      if ([v20 scanInteger:&v55])
                      {
                        v41 = v27;
                        if (![v20 scanString:_delimiterForFilenames intoString:0])
                        {
                          v36 = 0;
                          v31 = 0;
                          v30 = 0;
LABEL_48:
                          v27 = v41;
                          goto LABEL_44;
                        }

                        v40 = v25;
                        if (![v20 scanInteger:&v54] || !objc_msgSend(v20, "scanString:intoString:", _delimiterForFilenames, 0))
                        {
                          v36 = 0;
                          v31 = 0;
                          v30 = 0;
LABEL_47:
                          v25 = v40;
                          goto LABEL_48;
                        }

                        v50 = 0;
                        v29 = [v20 scanUpToString:_delimiterForFilenames intoString:&v50];
                        v30 = v50;
                        if (v29)
                        {
                          if ([v20 isAtEnd])
                          {
                            v31 = 0;
                            goto LABEL_21;
                          }

                          if ([v20 scanString:_delimiterForFilenames intoString:0])
                          {
                            alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
                            v49 = 0;
                            v39 = [v20 scanCharactersFromSet:alphanumericCharacterSet intoString:&v49];
                            v31 = v49;

                            if (!v39)
                            {
LABEL_51:
                              v36 = 0;
                              goto LABEL_47;
                            }

LABEL_21:
                            if ([v20 isAtEnd])
                            {
                              if (d)
                              {
                                *d = v40;
                              }

                              if (iD)
                              {
                                *iD = v41;
                              }

                              if (device)
                              {
                                *device = v57;
                              }

                              if (orientation)
                              {
                                *orientation = v56;
                              }

                              if (time)
                              {
                                *time = v28 / 100.0;
                              }

                              if (options)
                              {
                                *options = v55;
                              }

                              if (persistenceOptions)
                              {
                                *persistenceOptions = v54;
                              }

                              if (identifier)
                              {
                                _substituteForDotInBundleIdentifier = [self _substituteForDotInBundleIdentifier];
                                v33 = [v30 stringByReplacingOccurrencesOfString:_substituteForDotInBundleIdentifier withString:@"."];

                                v34 = v33;
                                *identifier = v33;
                              }

                              if (name)
                              {
                                v35 = v31;
                                *name = v31;
                              }

                              v36 = 1;
                              goto LABEL_47;
                            }

                            goto LABEL_51;
                          }
                        }

                        v36 = 0;
                        v31 = 0;
                        goto LABEL_47;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v36 = 0;
      v31 = 0;
      v30 = 0;
    }

    else
    {
      v36 = 0;
      v31 = 0;
      v30 = 0;
      v27 = 0;
    }
  }

  else
  {
    v36 = 0;
    v31 = 0;
    v30 = 0;
    v27 = 0;
    v25 = 0;
  }

LABEL_44:

  return v36;
}

@end