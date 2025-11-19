@interface CAMIrisDiskUtilities
+ (BOOL)hasPendingWork;
+ (BOOL)parseVideoDestinationPath:(id)a3 forStillImagePersistenceUUID:(id *)a4 videoPersistenceUUID:(id *)a5 captureDevice:(int64_t *)a6 captureOrientation:(int64_t *)a7 captureTime:(double *)a8 persistenceOptions:(int64_t *)a9 temporaryPersistenceOptions:(int64_t *)a10 bundleIdentifier:(id *)a11 filterName:(id *)a12;
+ (id)irisVideoDirectoryPathCreateIfNeeded:(BOOL)a3;
+ (id)videoDestinationPathForStillImageRequest:(id)a3 captureTime:(double)a4 isEV0ForHDR:(BOOL)a5 bundleIdentifier:(id)a6;
@end

@implementation CAMIrisDiskUtilities

+ (BOOL)hasPendingWork
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 irisVideoDirectoryPathCreateIfNeeded:0];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  v5 = 0;
  if (v4)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = 0;
    v7 = [v6 contentsOfDirectoryAtPath:v2 error:&v11];
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

+ (id)irisVideoDirectoryPathCreateIfNeeded:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69BF168] photoDCIMDirectory];
  v5 = [v4 stringByAppendingPathComponent:@".MISC/Iris"];

  if (v3)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    [v6 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v5;
}

+ (id)videoDestinationPathForStillImageRequest:(id)a3 captureTime:(double)a4 isEV0ForHDR:(BOOL)a5 bundleIdentifier:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  v29 = [v10 irisStillImagePersistenceUUIDForEV0:v7];
  if ([v10 isCTMVideo])
  {
    [v10 persistenceUUID];
  }

  else
  {
    [v10 irisVideoPersistenceUUIDForEV0:v7];
  }
  v12 = ;
  v27 = [v10 captureDevice];
  v13 = [v10 captureOrientation];
  v14 = [v10 persistenceOptions];
  v15 = [v10 temporaryPersistenceOptions];
  v16 = +[CAMEffectFilterManager ciFilterNameForFilterType:](CAMEffectFilterManager, "ciFilterNameForFilterType:", [v10 effectFilterType]);
  v17 = [a1 _substituteForDotInBundleIdentifier];
  v18 = [v11 stringByReplacingOccurrencesOfString:@"." withString:v17];

  v19 = [a1 _delimiterForFilenames];
  v28 = v18;
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%ld%@%ld%@%.f%@%ld%@%ld%@%@", v29, v19, v12, v19, v27, v19, v13, v19, a4 * 100.0, v19, v14, v19, v15, v19, v18];
  if (v16)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v20, v19, v16];

    v20 = v21;
  }

  v22 = [a1 irisVideoDirectoryPath];
  v23 = [v22 stringByAppendingPathComponent:v20];
  v24 = [a1 videoPathExtension];
  v25 = [v23 stringByAppendingPathExtension:v24];

  return v25;
}

+ (BOOL)parseVideoDestinationPath:(id)a3 forStillImagePersistenceUUID:(id *)a4 videoPersistenceUUID:(id *)a5 captureDevice:(int64_t *)a6 captureOrientation:(int64_t *)a7 captureTime:(double *)a8 persistenceOptions:(int64_t *)a9 temporaryPersistenceOptions:(int64_t *)a10 bundleIdentifier:(id *)a11 filterName:(id *)a12
{
  v13 = a3;
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v14 = [v13 lastPathComponent];
  v15 = [v13 pathExtension];
  v16 = v14;
  v17 = 0;
  v48 = v16;
  do
  {
    v18 = v17;
    v19 = v16;
    v16 = [v16 stringByDeletingPathExtension];

    v17 = [v16 pathExtension];
  }

  while ([v17 length]);
  v20 = [MEMORY[0x1E696AE88] scannerWithString:v16];
  v21 = [a1 _delimiterForFilenames];
  v22 = [a1 videoPathExtension];
  v23 = [v15 isEqualToString:v22];

  v47 = v15;
  if (v23)
  {
    v53 = 0;
    v24 = [v20 scanUpToString:v21 intoString:&v53];
    v25 = v53;
    if (v24 && [v20 scanString:v21 intoString:0])
    {
      v52 = 0;
      v26 = [v20 scanUpToString:v21 intoString:&v52];
      v27 = v52;
      if (v26)
      {
        if ([v20 scanString:v21 intoString:0])
        {
          if ([v20 scanInteger:&v57])
          {
            if ([v20 scanString:v21 intoString:0])
            {
              if ([v20 scanInteger:&v56])
              {
                if ([v20 scanString:v21 intoString:0])
                {
                  v51 = 0;
                  if ([v20 scanLongLong:&v51])
                  {
                    v28 = v51;
                    if ([v20 scanString:v21 intoString:0])
                    {
                      if ([v20 scanInteger:&v55])
                      {
                        v41 = v27;
                        if (![v20 scanString:v21 intoString:0])
                        {
                          v36 = 0;
                          v31 = 0;
                          v30 = 0;
LABEL_48:
                          v27 = v41;
                          goto LABEL_44;
                        }

                        v40 = v25;
                        if (![v20 scanInteger:&v54] || !objc_msgSend(v20, "scanString:intoString:", v21, 0))
                        {
                          v36 = 0;
                          v31 = 0;
                          v30 = 0;
LABEL_47:
                          v25 = v40;
                          goto LABEL_48;
                        }

                        v50 = 0;
                        v29 = [v20 scanUpToString:v21 intoString:&v50];
                        v30 = v50;
                        if (v29)
                        {
                          if ([v20 isAtEnd])
                          {
                            v31 = 0;
                            goto LABEL_21;
                          }

                          if ([v20 scanString:v21 intoString:0])
                          {
                            v38 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
                            v49 = 0;
                            v39 = [v20 scanCharactersFromSet:v38 intoString:&v49];
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
                              if (a4)
                              {
                                *a4 = v40;
                              }

                              if (a5)
                              {
                                *a5 = v41;
                              }

                              if (a6)
                              {
                                *a6 = v57;
                              }

                              if (a7)
                              {
                                *a7 = v56;
                              }

                              if (a8)
                              {
                                *a8 = v28 / 100.0;
                              }

                              if (a9)
                              {
                                *a9 = v55;
                              }

                              if (a10)
                              {
                                *a10 = v54;
                              }

                              if (a11)
                              {
                                v32 = [a1 _substituteForDotInBundleIdentifier];
                                v33 = [v30 stringByReplacingOccurrencesOfString:v32 withString:@"."];

                                v34 = v33;
                                *a11 = v33;
                              }

                              if (a12)
                              {
                                v35 = v31;
                                *a12 = v31;
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