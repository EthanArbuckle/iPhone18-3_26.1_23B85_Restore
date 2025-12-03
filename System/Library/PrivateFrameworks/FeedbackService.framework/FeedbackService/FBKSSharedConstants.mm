@interface FBKSSharedConstants
+ (NSString)overrideGeoCountryCode;
+ (NSUserDefaults)sharedUserDefaults;
+ (id)appleSeedURL;
+ (id)appleSeedURLFromDefaults:(id)defaults withEnvironment:(signed __int16)environment;
+ (id)productVersion;
+ (id)swTrain;
+ (id)swVers;
+ (signed)environment;
+ (void)_deriveSystemVersion;
+ (void)initialize;
+ (void)overrideEnvironment:(signed __int16)environment host:(id)host;
@end

@implementation FBKSSharedConstants

+ (void)initialize
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults addSuiteNamed:@"group.com.apple.feedback"];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"production" forKey:@"environment"];
  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults2 registerDefaults:dictionary];
}

+ (id)appleSeedURLFromDefaults:(id)defaults withEnvironment:(signed __int16)environment
{
  environmentCopy = environment;
  defaultsCopy = defaults;
  if ((environmentCopy - 1) > 3)
  {
    v6 = @"https://fba.apple.com/";
  }

  else
  {
    if (FBKSHasInternalUI() && [_overrideHostString length])
    {
      v6 = _overrideHostString;
    }

    else
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v6 = [standardUserDefaults stringForKey:@"developmentHost"];
    }

    v8 = FBKSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [FBKSSharedConstants appleSeedURLFromDefaults:v6 withEnvironment:v8];
    }
  }

  v9 = [MEMORY[0x1E695DFF8] URLWithString:v6];
  v10 = v9;
  if (!v9 || ([v9 host], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v12 = [MEMORY[0x1E695DFF8] URLWithString:@"https://fba.apple.com/"];

    v10 = v12;
  }

  return v10;
}

+ (id)appleSeedURL
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [self appleSeedURLFromDefaults:standardUserDefaults withEnvironment:{objc_msgSend(self, "environment")}];

  return v4;
}

+ (signed)environment
{
  v2 = _cachedEnvironment;
  if (_cachedEnvironment < 0)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [standardUserDefaults stringForKey:@"environment"];

    _cachedEnvironment = FBKSEnvironmentFromString(v4);
    return _cachedEnvironment;
  }

  return v2;
}

+ (void)overrideEnvironment:(signed __int16)environment host:(id)host
{
  environmentCopy = environment;
  v17 = *MEMORY[0x1E69E9840];
  hostCopy = host;
  _cachedEnvironment = environmentCopy;
  objc_storeStrong(&_overrideHostString, host);
  v7 = FBKSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446978;
    v10 = "+[FBKSSharedConstants overrideEnvironment:host:]";
    v11 = 1024;
    v12 = environmentCopy;
    v13 = 1024;
    v14 = _cachedEnvironment;
    v15 = 2114;
    v16 = _overrideHostString;
    _os_log_impl(&dword_1B00C4000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: %hd -> [%hd] [%{public}@]", &v9, 0x22u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (NSString)overrideGeoCountryCode
{
  if (overrideGeoCountryCode_onceToken != -1)
  {
    +[FBKSSharedConstants overrideGeoCountryCode];
  }

  v3 = overrideGeoCountryCode_overrideValue;

  return v3;
}

void __45__FBKSSharedConstants_overrideGeoCountryCode__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  if (FBKSIsInternalInstall_onceToken != -1)
  {
    FBKSIsInternalInstall_cold_1();
  }

  if (FBKSIsInternalInstall__isInternal == 1)
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    v1 = [v0 stringForKey:@"geoOverride"];
    v2 = [v1 uppercaseString];
    v3 = overrideGeoCountryCode_overrideValue;
    overrideGeoCountryCode_overrideValue = v2;

    if (overrideGeoCountryCode_overrideValue)
    {
      v4 = FBKSLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138543362;
        v7 = overrideGeoCountryCode_overrideValue;
        _os_log_impl(&dword_1B00C4000, v4, OS_LOG_TYPE_DEFAULT, "Using geo override: %{public}@", &v6, 0xCu);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (NSUserDefaults)sharedUserDefaults
{
  if (sharedUserDefaults_onceToken != -1)
  {
    +[FBKSSharedConstants sharedUserDefaults];
  }

  v3 = sharedUserDefaults_userDefaults;

  return v3;
}

uint64_t __41__FBKSSharedConstants_sharedUserDefaults__block_invoke()
{
  sharedUserDefaults_userDefaults = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"group.com.apple.feedback"];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)_deriveSystemVersion
{
  v2 = _swVers;
  _swVers = &stru_1F25DB460;

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults valueForKey:@"BuildOverride"];

  v5 = _CFCopySystemVersionDictionary();
  if (v4 && [v4 length])
  {
    objc_storeStrong(&_swVers, v4);
LABEL_6:
    CFRelease(v5);
    goto LABEL_10;
  }

  if (v5)
  {
    v6 = CFDictionaryGetValue(v5, *MEMORY[0x1E695E1E8]);
    v7 = _swVers;
    _swVers = v6;

    v8 = CFDictionaryGetValue(v5, *MEMORY[0x1E695E208]);
    v9 = _productVersion;
    _productVersion = v8;

    goto LABEL_6;
  }

  v10 = FBKSLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    +[(FBKSSharedConstants *)v10];
  }

LABEL_10:
  if (_swVers)
  {
    v11 = [MEMORY[0x1E696AE88] scannerWithString:?];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    [v11 setCharactersToBeSkipped:whitespaceAndNewlineCharacterSet];

    v19 = 0;
    if ([v11 scanInteger:&v19])
    {
      uppercaseLetterCharacterSet = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
      v18 = 0;
      v14 = [v11 scanCharactersFromSet:uppercaseLetterCharacterSet intoString:&v18];
      v15 = v18;
      if (v14)
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld%@", v19, v15];
        v17 = _swTrain;
        _swTrain = v16;
      }
    }
  }
}

+ (id)swVers
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults valueForKey:@"BuildOverride"];

  if (!v4 || (v5 = [v4 length], v6 = v4, !v5))
  {
    v6 = _swVers;
    if (!_swVers)
    {
      [self _deriveSystemVersion];
      v6 = _swVers;
    }
  }

  v7 = v6;

  return v7;
}

+ (id)swTrain
{
  v2 = _swTrain;
  if (!_swTrain)
  {
    [self _deriveSystemVersion];
    v2 = _swTrain;
  }

  v3 = v2;

  return v3;
}

+ (id)productVersion
{
  v2 = _productVersion;
  if (!_productVersion)
  {
    [self _deriveSystemVersion];
    v2 = _productVersion;
  }

  v3 = v2;

  return v3;
}

+ (void)appleSeedURLFromDefaults:(uint64_t)a1 withEnvironment:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1B00C4000, a2, OS_LOG_TYPE_DEBUG, "Using non-production server: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end