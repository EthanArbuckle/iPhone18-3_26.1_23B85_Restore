@interface LSBundleRecord(LNAdditions)
+ (id)platformToSDKMapping2024;
+ (id)platformToSDKMapping2025;
+ (uint64_t)bundle:()LNAdditions linkedOnOrAfter:;
+ (uint64_t)bundleLinkedOnOrAfter2024:()LNAdditions;
+ (uint64_t)bundleLinkedOnOrAfter2025:()LNAdditions;
- (BOOL)linkedOnOrAfter:()LNAdditions;
- (id)ln_linkedFrameworksWithError:()LNAdditions;
- (uint64_t)linkedOnOrAfter2024;
- (uint64_t)linkedOnOrAfter2025;
@end

@implementation LSBundleRecord(LNAdditions)

- (BOOL)linkedOnOrAfter:()LNAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  sDKVersion = [self SDKVersion];

  if (!sDKVersion)
  {
    v7 = getLNLogCategoryPolicy();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [self bundleIdentifier];
      *v17 = 138543362;
      *&v17[4] = bundleIdentifier;
      _os_log_impl(&dword_18EF7E000, v7, OS_LOG_TYPE_DEFAULT, "No SDKVersion for %{public}@", v17, 0xCu);
    }

    goto LABEL_8;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(self, "platform")}];
  v7 = [v4 objectForKeyedSubscript:v6];

  if (!v7)
  {
LABEL_8:
    v11 = 1;
    goto LABEL_9;
  }

  *v17 = 0u;
  v18 = 0u;
  sDKVersion2 = [self SDKVersion];
  MEMORY[0x193AD91A0](v17);

  memset(v16, 0, sizeof(v16));
  MEMORY[0x193AD91A0](v16, v7);
  v9 = getLNLogCategoryPolicy();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    sDKVersion3 = [self SDKVersion];
    *buf = 138543618;
    *&buf[4] = sDKVersion3;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&dword_18EF7E000, v9, OS_LOG_TYPE_INFO, "Comparing %{public}@ to %{public}@", buf, 0x16u);
  }

  *buf = *v17;
  *&buf[16] = v18;
  v11 = _LSVersionNumberCompare() != -1;
LABEL_9:

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (uint64_t)linkedOnOrAfter2025
{
  platformToSDKMapping2025 = [objc_opt_class() platformToSDKMapping2025];
  v3 = [self linkedOnOrAfter:platformToSDKMapping2025];

  return v3;
}

- (uint64_t)linkedOnOrAfter2024
{
  platformToSDKMapping2024 = [objc_opt_class() platformToSDKMapping2024];
  v3 = [self linkedOnOrAfter:platformToSDKMapping2024];

  return v3;
}

- (id)ln_linkedFrameworksWithError:()LNAdditions
{
  executableURL = [self executableURL];
  v5 = [executableURL ln_linkedFrameworksWithError:a3];

  return v5;
}

+ (id)platformToSDKMapping2025
{
  v4[10] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F02FF090;
  v3[1] = &unk_1F02FF0A8;
  v4[0] = @"26.0";
  v4[1] = @"26.0";
  v3[2] = &unk_1F02FF0C0;
  v3[3] = &unk_1F02FF0D8;
  v4[2] = @"26.0";
  v4[3] = @"26.0";
  v3[4] = &unk_1F02FF0F0;
  v3[5] = &unk_1F02FF108;
  v4[4] = @"26.0";
  v4[5] = @"26.0";
  v3[6] = &unk_1F02FF120;
  v3[7] = &unk_1F02FF138;
  v4[6] = @"26.0";
  v4[7] = @"26.0";
  v3[8] = &unk_1F02FF150;
  v3[9] = &unk_1F02FF168;
  v4[8] = @"26.0";
  v4[9] = @"26.0";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:10];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

+ (id)platformToSDKMapping2024
{
  v4[10] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F02FF090;
  v3[1] = &unk_1F02FF0A8;
  v4[0] = @"15.0";
  v4[1] = @"18.0";
  v3[2] = &unk_1F02FF0C0;
  v3[3] = &unk_1F02FF0D8;
  v4[2] = @"18.0";
  v4[3] = @"18.0";
  v3[4] = &unk_1F02FF0F0;
  v3[5] = &unk_1F02FF108;
  v4[4] = @"18.0";
  v4[5] = @"18.0";
  v3[6] = &unk_1F02FF120;
  v3[7] = &unk_1F02FF138;
  v4[6] = @"18.0";
  v4[7] = @"18.0";
  v3[8] = &unk_1F02FF150;
  v3[9] = &unk_1F02FF168;
  v4[8] = @"2.0";
  v4[9] = @"2.0";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:10];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

+ (uint64_t)bundle:()LNAdditions linkedOnOrAfter:
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v7 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v5 allowPlaceholder:0 error:&v13];
  v8 = v13;
  if (v7)
  {
    v9 = [v7 linkedOnOrAfter:v6];
  }

  else
  {
    v10 = getLNLogCategoryPolicy();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = v5;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_18EF7E000, v10, OS_LOG_TYPE_ERROR, "Unable to create a bundle record for %{public}@: %{public}@", buf, 0x16u);
    }

    v9 = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (uint64_t)bundleLinkedOnOrAfter2025:()LNAdditions
{
  v4 = a3;
  platformToSDKMapping2025 = [self platformToSDKMapping2025];
  v6 = [self bundle:v4 linkedOnOrAfter:platformToSDKMapping2025];

  return v6;
}

+ (uint64_t)bundleLinkedOnOrAfter2024:()LNAdditions
{
  v4 = a3;
  platformToSDKMapping2024 = [self platformToSDKMapping2024];
  v6 = [self bundle:v4 linkedOnOrAfter:platformToSDKMapping2024];

  return v6;
}

@end