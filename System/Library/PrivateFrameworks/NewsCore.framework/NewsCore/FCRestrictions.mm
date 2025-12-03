@interface FCRestrictions
+ (id)sharedInstance;
+ (int64_t)integerRepresentationOfShortVersionString:(id)string;
- (BOOL)isContentBlockedInStorefrontID:(id)d withAllowedStorefrontIDs:(id)ds blockedStorefrontIDs:(id)iDs;
- (BOOL)isExplicitContentAllowed;
- (BOOL)isNewsVersionAllowed:(int64_t)allowed;
- (BOOL)isNewsVersionAllowedWithMinNewsVersion:(int64_t)version maxNewsVersion:(int64_t)newsVersion;
- (FCRestrictions)init;
@end

@implementation FCRestrictions

+ (id)sharedInstance
{
  if (qword_1EDB26F18 != -1)
  {
    dispatch_once(&qword_1EDB26F18, &__block_literal_global_17);
  }

  v3 = _MergedGlobals_136;

  return v3;
}

uint64_t __32__FCRestrictions_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(FCRestrictions);
  v1 = _MergedGlobals_136;
  _MergedGlobals_136 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (FCRestrictions)init
{
  v18 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = FCRestrictions;
  v2 = [(FCRestrictions *)&v9 init];
  if (v2)
  {
    v2->_testing = NSClassFromString(&cfstr_Xctest.isa) != 0;
    v3 = FCBundle();
    v4 = [v3 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];

    v5 = [FCRestrictions integerRepresentationOfShortVersionString:v4];
    if (v5 <= 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Build version string is missing or not valid (current value: %@)", v4];
      *buf = 136315906;
      v11 = "[FCRestrictions init]";
      v12 = 2080;
      v13 = "FCRestrictions.m";
      v14 = 1024;
      v15 = 49;
      v16 = 2114;
      v17 = v8;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v2->_buildVersionNumber = v5;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

- (BOOL)isExplicitContentAllowed
{
  if ([(FCRestrictions *)self testing]&& [(FCRestrictions *)self isExplicitContentAllowedOverride]!= -1)
  {
    return [(FCRestrictions *)self isExplicitContentAllowedOverride]== 1;
  }

  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v5 = [mEMORY[0x1E69ADFB8] isExplicitContentAllowedOutAsk:0];

  return v5;
}

- (BOOL)isNewsVersionAllowed:(int64_t)allowed
{
  if (allowed < 1)
  {
    return 1;
  }

  if ([(FCRestrictions *)self buildVersionNumber]< 1)
  {
    return 1;
  }

  return [(FCRestrictions *)self buildVersionNumber]>= allowed;
}

- (BOOL)isNewsVersionAllowedWithMinNewsVersion:(int64_t)version maxNewsVersion:(int64_t)newsVersion
{
  if ([(FCRestrictions *)self buildVersionNumber]< 1)
  {
    return 1;
  }

  if ([(FCRestrictions *)self buildVersionNumber]>= version)
  {
    return [(FCRestrictions *)self buildVersionNumber]<= newsVersion;
  }

  return 0;
}

+ (int64_t)integerRepresentationOfShortVersionString:(id)string
{
  v3 = [string componentsSeparatedByString:@"."];
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 objectAtIndexedSubscript:0];
    v7 = 1000000 * [v6 integerValue];

    if (v5 != 1)
    {
      v8 = [v3 objectAtIndexedSubscript:1];
      v7 += 1000 * [v8 integerValue];

      if (v5 >= 3)
      {
        v9 = [v3 objectAtIndexedSubscript:2];
        v7 += [v9 integerValue];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isContentBlockedInStorefrontID:(id)d withAllowedStorefrontIDs:(id)ds blockedStorefrontIDs:(id)iDs
{
  dCopy = d;
  dsCopy = ds;
  if ([iDs containsObject:dCopy])
  {
    LOBYTE(v9) = 1;
  }

  else if ([dsCopy count])
  {
    v9 = [dsCopy containsObject:dCopy] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

@end