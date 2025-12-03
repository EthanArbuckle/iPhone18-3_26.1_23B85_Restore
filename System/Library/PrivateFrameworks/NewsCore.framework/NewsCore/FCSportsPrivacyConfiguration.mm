@interface FCSportsPrivacyConfiguration
- (FCSportsPrivacyConfiguration)init;
- (FCSportsPrivacyConfiguration)initWithConfigDictionary:(id)dictionary;
@end

@implementation FCSportsPrivacyConfiguration

- (FCSportsPrivacyConfiguration)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCSportsPrivacyConfiguration init]";
    v10 = 2080;
    v11 = "FCSportsPrivacyConfiguration.m";
    v12 = 1024;
    v13 = 17;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCSportsPrivacyConfiguration init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCSportsPrivacyConfiguration)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = FCSportsPrivacyConfiguration;
  v5 = [(FCSportsPrivacyConfiguration *)&v11 init];
  if (v5)
  {
    v5->_isHeadlineExposureTrackingDisabled = [FCFeatureEnablementChecker enabledForCurrentLevel:FCAppConfigurationIntegerValue(dictionaryCopy, @"disableHeadlineExposureTrackingEnabledLevel", 0)];
    v6 = FCAppConfigurationNumberValue(dictionaryCopy, @"syncEventSamplingRate", &unk_1F2E71BA8);
    [v6 floatValue];
    v5->_syncEventSamplingRate = v7;

    v8 = FCAppConfigurationNumberValue(dictionaryCopy, @"headlineExposureNoiseRate", &unk_1F2E71BB8);
    [v8 floatValue];
    v5->_headlineExposureNoiseRate = v9;
  }

  return v5;
}

@end