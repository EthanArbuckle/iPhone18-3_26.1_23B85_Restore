@interface FCAudioUpsellConfig
- (FCAudioUpsellConfig)init;
- (FCAudioUpsellConfig)initWithConfigDictionary:(id)a3;
@end

@implementation FCAudioUpsellConfig

- (FCAudioUpsellConfig)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCAudioUpsellConfig init]";
    v10 = 2080;
    v11 = "FCAudioUpsellConfig.m";
    v12 = 1024;
    v13 = 17;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCAudioUpsellConfig init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCAudioUpsellConfig)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FCAudioUpsellConfig;
  v5 = [(FCAudioUpsellConfig *)&v12 init];
  if (v5)
  {
    v6 = FCAppConfigurationStringValue(v4, @"identifier", &stru_1F2DC7DC0);
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = FCAppConfigurationURLValue(v4, @"url");
    URL = v5->_URL;
    v5->_URL = v8;

    v5->_duration = FCAppConfigurationDoubleValue(v4, @"duration", 0.0);
    v10 = FCAppConfigurationStringValue(v4, @"playPosition", 0);
    v5->_playPosition = FCAudioUpsellPlayPositionForValue(v10);
  }

  return v5;
}

@end