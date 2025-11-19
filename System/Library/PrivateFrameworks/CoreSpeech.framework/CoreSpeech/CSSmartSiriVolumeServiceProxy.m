@interface CSSmartSiriVolumeServiceProxy
- (CSSmartSiriVolumeServiceProxy)init;
- (void)getVolumeForTTSType:(unint64_t)a3 withContext:(id)a4 reply:(id)a5;
- (void)setSmartSiriVolumePercentage:(float)a3;
@end

@implementation CSSmartSiriVolumeServiceProxy

- (void)setSmartSiriVolumePercentage:(float)a3
{
  v4 = +[CSSmartSiriVolumeManager sharedInstance];
  v6 = v4;
  if (v4)
  {
    *&v5 = a3;
    [v4 setSmartSiriVolumePercentage:v5];
  }

  else
  {
    v7 = [NSString stringWithFormat:@"SmartSiriVolume not supported on this device type. smartSiriVolume : %p", 0];
    v8 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[CSSmartSiriVolumeServiceProxy setSmartSiriVolumePercentage:]";
      v11 = 2114;
      v12 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
    }
  }
}

- (void)getVolumeForTTSType:(unint64_t)a3 withContext:(id)a4 reply:(id)a5
{
  v7 = a5;
  v8 = [a4 objectForKeyedSubscript:@"overrideMediaVolume"];
  v9 = +[CSSmartSiriVolumeManager sharedInstance];
  if (v9)
  {
    v10 = [v9 getVolumeForTTSType:a3 withOverrideMediaVolume:v8 WithRequestTime:mach_absolute_time()];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      if (!v7)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v13 = [NSString stringWithFormat:@"SSV Manager returned estimate as nil"];
    v19 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[CSSmartSiriVolumeServiceProxy getVolumeForTTSType:withContext:reply:]";
      v27 = 2114;
      v28 = v13;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
    }

    v20 = CSErrorDomain;
    v23 = @"reason";
    v24 = v13;
    v16 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v17 = v20;
    v18 = 1701;
  }

  else
  {
    v13 = [NSString stringWithFormat:@"SmartSiriVolume not supported on this device type. smartSiriVolume : %p", 0];
    v14 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[CSSmartSiriVolumeServiceProxy getVolumeForTTSType:withContext:reply:]";
      v27 = 2114;
      v28 = v13;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
    }

    v15 = CSErrorDomain;
    v21 = @"reason";
    v22 = v13;
    v16 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v17 = v15;
    v18 = 1702;
  }

  v12 = [NSError errorWithDomain:v17 code:v18 userInfo:v16];

  v11 = 0;
  if (v7)
  {
LABEL_12:
    v7[2](v7, v12, v11);
  }

LABEL_13:
}

- (CSSmartSiriVolumeServiceProxy)init
{
  v8.receiver = self;
  v8.super_class = CSSmartSiriVolumeServiceProxy;
  v2 = [(CSSmartSiriVolumeServiceProxy *)&v8 init];
  if (v2 && (+[CSSmartSiriVolumeManager sharedInstance], v3 = objc_claimAutoreleasedReturnValue(), ssvManager = v2->_ssvManager, v2->_ssvManager = v3, ssvManager, !v2->_ssvManager))
  {
    v6 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "[CSSmartSiriVolumeServiceProxy init]";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s ERR: Failed to initialize SSV Manager!", buf, 0xCu);
    }

    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

@end