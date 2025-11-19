@interface PFPosterConfiguration(Helper)
+ (id)ck_temporaryImageDirectoryURL;
- (id)ck_newPosterKitPosterConfigurationForPlayground:()Helper withError:;
@end

@implementation PFPosterConfiguration(Helper)

- (id)ck_newPosterKitPosterConfigurationForPlayground:()Helper withError:
{
  v41[2] = *MEMORY[0x1E69E9840];
  Helper_x8__PRSPosterRoleBackdrop = gotLoadHelper_x8__PRSPosterRoleBackdrop(a2);
  v10 = **(v9 + 104);
  Helper_x8__OBJC_CLASS___PRSMutablePosterConfiguration = gotLoadHelper_x8__OBJC_CLASS___PRSMutablePosterConfiguration(Helper_x8__PRSPosterRoleBackdrop);
  v13 = [*(v12 + 4072) mutableConfigurationWithRole:{v10, Helper_x8__OBJC_CLASS___PRSMutablePosterConfiguration}];
  v40[0] = @"isForPlayground";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:a4];
  v40[1] = @"wasPosterCreatedLocally";
  v41[0] = v14;
  v41[1] = MEMORY[0x1E695E118];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];

  [v13 storeUserInfo:v15 error:a5];
  v16 = [v13 assetDirectory];
  v39 = 0;
  v17 = [a1 saveToURL:v16 error:&v39];
  v18 = v39;

  if (v17)
  {
    v19 = [v13 _path];
    if (v19)
    {
      gotLoadHelper_x8__OBJC_CLASS___PRSPosterConfigurationAttributes(v20);
      v22 = [objc_alloc(*(v21 + 8)) initWithPath:v19 extensionIdentifier:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];
      Helper_x8__OBJC_CLASS___PRPosterConfiguredProperties = gotLoadHelper_x8__OBJC_CLASS___PRPosterConfiguredProperties(v23);
      v26 = [*(v25 + 752) defaultConfiguredPropertiesForRole:{v10, Helper_x8__OBJC_CLASS___PRPosterConfiguredProperties}];
      Helper_x8__OBJC_CLASS___PRUISPosterConfigurationFinalizer = gotLoadHelper_x8__OBJC_CLASS___PRUISPosterConfigurationFinalizer(v27);
      v30 = *(v29 + 184);
      v38 = 0;
      v31 = [v30 finalizedConfigurationForAttributes:v22 withConfiguredProperties:v26 error:{&v38, Helper_x8__OBJC_CLASS___PRUISPosterConfigurationFinalizer}];
      v32 = v38;
      v33 = v32;
      if (v31)
      {
        v34 = v31;
      }

      else if (a5)
      {
        v36 = v32;
        *a5 = v33;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  else if (a5)
  {
    v35 = v18;
    v31 = 0;
    *a5 = v18;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

+ (id)ck_temporaryImageDirectoryURL
{
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v1 = [v0 temporaryDirectory];
  v2 = [v1 URLByAppendingPathComponent:@"PFPosterConfigurationImages"];

  return v2;
}

@end