@interface CKPRSPosterConfiguration
+ (double)ck_luminanceInConfiguration:(id)a3;
@end

@implementation CKPRSPosterConfiguration

+ (double)ck_luminanceInConfiguration:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v14 = 0;
    v4 = [a3 pr_loadTitleStyleConfigurationWithError:&v14];
    v5 = v14;
    if (v4)
    {
      [v4 contentsLuminance];
      v7 = v6;
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v16 = v7;
        v17 = 2112;
        v18 = v4;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Derived luminance: %.2f, titleStyleConfiguration: %@", buf, 0x16u);
      }
    }

    else
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(CKPRSPosterConfiguration *)v5 ck_luminanceInConfiguration:v11];
      }

      [objc_opt_class() ck_defaultLuminance];
      v7 = v12;
    }
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CKPRSPosterConfiguration ck_luminanceInConfiguration:v9];
    }

    [a1 ck_defaultLuminance];
    return v10;
  }

  return v7;
}

+ (void)ck_luminanceInConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Poster archive did not contain a title style configuration, using default luminance. Error: %@", &v2, 0xCu);
}

@end