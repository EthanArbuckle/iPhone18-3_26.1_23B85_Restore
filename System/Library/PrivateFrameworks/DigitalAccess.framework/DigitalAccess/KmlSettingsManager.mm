@interface KmlSettingsManager
- (BOOL)BOOLValueForSetting:(unint64_t)setting manufacturer:(id)manufacturer brand:(id)brand uuid:(id)uuid error:(id *)error;
- (BOOL)BOOLValueForUserDefault:(id)default;
- (BOOL)defaultBoolValueForSetting:(unint64_t)setting;
- (BOOL)isManufacturerSupported:(id)supported error:(id *)error;
- (KmlSettingsManager)init;
- (double)opt2AuthDeletionAlarmDurationSeconds;
- (double)timeIntervalForUserDefault:(id)default minTimeInterval:(double)interval maxTimeInterval:(double)timeInterval defaultTimeInterval:(double)defaultTimeInterval;
- (id)buildNonOSPPreShareTlvOverride;
- (id)fleetManufacturerAllowListWithError:(id *)error;
- (id)fleetServiceProviderAllowListWithError:(id *)error;
- (id)getRootCertificateFor:(id)for keyId:(id)id;
- (id)keyRoleToShareOverride;
- (id)kmlVersionOverride;
- (id)mockFleetEndpointCert;
- (id)mockFleetExtCaCert;
- (id)mockFleetIntermediateCert;
@end

@implementation KmlSettingsManager

- (KmlSettingsManager)init
{
  v12[9] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = KmlSettingsManager;
  v2 = [(KmlSettingsManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = 0;

    dckConfig = v3->_dckConfig;
    v3->_dckConfig = 0;

    v11[0] = &unk_285B9CB50;
    v11[1] = &unk_285B9CB68;
    v12[0] = MEMORY[0x277CBEC38];
    v12[1] = MEMORY[0x277CBEC28];
    v11[2] = &unk_285B9CB80;
    v11[3] = &unk_285B9CB98;
    v12[2] = MEMORY[0x277CBEC28];
    v12[3] = MEMORY[0x277CBEC28];
    v11[4] = &unk_285B9CBB0;
    v11[5] = &unk_285B9CBC8;
    v12[4] = MEMORY[0x277CBEC28];
    v12[5] = MEMORY[0x277CBEC38];
    v11[6] = &unk_285B9CBE0;
    v11[7] = &unk_285B9CBF8;
    v12[6] = MEMORY[0x277CBEC28];
    v12[7] = MEMORY[0x277CBEC28];
    v11[8] = &unk_285B9CC10;
    v12[8] = MEMORY[0x277CBEC28];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:9];
    defaultSLGValues = v3->_defaultSLGValues;
    v3->_defaultSLGValues = v6;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)defaultBoolValueForSetting:(unint64_t)setting
{
  v22 = *MEMORY[0x277D85DE8];
  defaultSLGValues = self->_defaultSLGValues;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSDictionary *)defaultSLGValues objectForKey:v6];

  if (v7)
  {
    v8 = self->_defaultSLGValues;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:setting];
    v10 = [(NSDictionary *)v8 objectForKeyedSubscript:v9];
    LOBYTE(v8) = [v10 BOOLValue];

    v11 = *MEMORY[0x277D85DE8];
    return v8;
  }

  else
  {
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:setting];
      v16 = 136315650;
      v17 = "[KmlSettingsManager defaultBoolValueForSetting:]";
      v18 = 1024;
      v19 = 83;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_ERROR, "%s : %i : Missing default value for key: %@, assuming default is NO", &v16, 0x1Cu);
    }

    v15 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

- (BOOL)BOOLValueForSetting:(unint64_t)setting manufacturer:(id)manufacturer brand:(id)brand uuid:(id)uuid error:(id *)error
{
  manufacturerCopy = manufacturer;
  brandCopy = brand;
  uuidCopy = uuid;
  if (error)
  {
    *error = 0;
  }

  if (!self->_dckConfig)
  {
    v15 = objc_opt_new();
    dckConfig = self->_dckConfig;
    self->_dckConfig = v15;
  }

  bOOLValue = [(KmlSettingsManager *)self defaultBoolValueForSetting:setting];
  v18 = self->_dckConfig;
  v23 = 0;
  v19 = [(SESConfigDCK *)v18 BOOLValueForSetting:setting manufacturer:manufacturerCopy brand:brandCopy uuid:uuidCopy error:&v23];
  v20 = v23;
  if (v19)
  {
    bOOLValue = [v19 BOOLValue];
  }

  if (error && v20)
  {
    v21 = v20;
    *error = v20;
  }

  return bOOLValue;
}

- (BOOL)isManufacturerSupported:(id)supported error:(id *)error
{
  supportedCopy = supported;
  if (error)
  {
    *error = 0;
  }

  dckConfig = self->_dckConfig;
  if (!dckConfig)
  {
    v8 = objc_opt_new();
    v9 = self->_dckConfig;
    self->_dckConfig = v8;

    dckConfig = self->_dckConfig;
  }

  v13 = 0;
  v10 = [(SESConfigDCK *)dckConfig isDCKConfigurationAvailableFor:supportedCopy error:&v13];
  v11 = v13;
  if (error && v11)
  {
    v11 = v11;
    *error = v11;
  }

  return v10;
}

- (id)fleetServiceProviderAllowListWithError:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  dckConfig = self->_dckConfig;
  if (!dckConfig)
  {
    v6 = objc_opt_new();
    v7 = self->_dckConfig;
    self->_dckConfig = v6;

    dckConfig = self->_dckConfig;
  }

  v11 = 0;
  v8 = [(SESConfigDCK *)dckConfig getSettingForKey:@"AllowedFleetServiceProviders" error:&v11];
  v9 = v11;
  if (error && v9)
  {
    v9 = v9;
    *error = v9;
  }

  return v8;
}

- (id)fleetManufacturerAllowListWithError:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  dckConfig = self->_dckConfig;
  if (!dckConfig)
  {
    v6 = objc_opt_new();
    v7 = self->_dckConfig;
    self->_dckConfig = v6;

    dckConfig = self->_dckConfig;
  }

  v11 = 0;
  v8 = [(SESConfigDCK *)dckConfig getSettingForKey:@"AllowedFleetManufacturers" error:&v11];
  v9 = v11;
  if (error && v9)
  {
    v9 = v9;
    *error = v9;
  }

  return v8;
}

- (id)getRootCertificateFor:(id)for keyId:(id)id
{
  forCopy = for;
  idCopy = id;
  dckConfig = self->_dckConfig;
  if (!dckConfig)
  {
    v9 = objc_opt_new();
    v10 = self->_dckConfig;
    self->_dckConfig = v9;

    dckConfig = self->_dckConfig;
  }

  v11 = [(SESConfigDCK *)dckConfig getRootCertificateFor:forCopy keyID:idCopy error:0];

  return v11;
}

- (id)kmlVersionOverride
{
  userDefaults = self->_userDefaults;
  if (!userDefaults)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.seserviced"];
    v5 = self->_userDefaults;
    self->_userDefaults = v4;

    userDefaults = self->_userDefaults;
  }

  return [(NSUserDefaults *)userDefaults stringForKey:@"KmlVersion"];
}

- (id)keyRoleToShareOverride
{
  userDefaults = self->_userDefaults;
  if (!userDefaults)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.seserviced"];
    v5 = self->_userDefaults;
    self->_userDefaults = v4;

    userDefaults = self->_userDefaults;
  }

  return [(NSUserDefaults *)userDefaults objectForKey:@"KeyRole"];
}

- (id)mockFleetEndpointCert
{
  userDefaults = self->_userDefaults;
  if (!userDefaults)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.seserviced"];
    v5 = self->_userDefaults;
    self->_userDefaults = v4;

    userDefaults = self->_userDefaults;
  }

  v6 = [(NSUserDefaults *)userDefaults objectForKey:@"MockFleetEndpointCert"];
  v7 = kmlUtilDataForHexString(v6);

  return v7;
}

- (id)mockFleetIntermediateCert
{
  userDefaults = self->_userDefaults;
  if (!userDefaults)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.seserviced"];
    v5 = self->_userDefaults;
    self->_userDefaults = v4;

    userDefaults = self->_userDefaults;
  }

  v6 = [(NSUserDefaults *)userDefaults objectForKey:@"MockFleetIntermediateCert"];
  v7 = kmlUtilDataForHexString(v6);

  return v7;
}

- (id)mockFleetExtCaCert
{
  userDefaults = self->_userDefaults;
  if (!userDefaults)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.seserviced"];
    v5 = self->_userDefaults;
    self->_userDefaults = v4;

    userDefaults = self->_userDefaults;
  }

  v6 = [(NSUserDefaults *)userDefaults objectForKey:@"MockFleetExtCaCert"];
  v7 = kmlUtilDataForHexString(v6);

  return v7;
}

- (id)buildNonOSPPreShareTlvOverride
{
  userDefaults = self->_userDefaults;
  if (!userDefaults)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.seserviced"];
    v5 = self->_userDefaults;
    self->_userDefaults = v4;

    userDefaults = self->_userDefaults;
  }

  return [(NSUserDefaults *)userDefaults objectForKey:@"debug.BuildNonOSPPreShareTlvOverride"];
}

- (double)opt2AuthDeletionAlarmDurationSeconds
{
  if (!isInternalBuild())
  {
    return 43200.0;
  }

  [(KmlSettingsManager *)self timeIntervalForUserDefault:@"Opt2AuthDeletionAlarmDurationSeconds" minTimeInterval:300.0 maxTimeInterval:86400.0 defaultTimeInterval:43200.0];
  return result;
}

- (BOOL)BOOLValueForUserDefault:(id)default
{
  defaultCopy = default;
  userDefaults = self->_userDefaults;
  if (!userDefaults)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.seserviced"];
    v7 = self->_userDefaults;
    self->_userDefaults = v6;

    userDefaults = self->_userDefaults;
  }

  v8 = [(NSUserDefaults *)userDefaults objectForKey:defaultCopy];
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (double)timeIntervalForUserDefault:(id)default minTimeInterval:(double)interval maxTimeInterval:(double)timeInterval defaultTimeInterval:(double)defaultTimeInterval
{
  defaultCopy = default;
  userDefaults = self->_userDefaults;
  if (!userDefaults)
  {
    v12 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.seserviced"];
    v13 = self->_userDefaults;
    self->_userDefaults = v12;

    userDefaults = self->_userDefaults;
  }

  [(NSUserDefaults *)userDefaults doubleForKey:defaultCopy];
  if (v14 >= timeInterval)
  {
    timeIntervalCopy = timeInterval;
  }

  else
  {
    timeIntervalCopy = v14;
  }

  if (v14 >= interval)
  {
    defaultTimeInterval = timeIntervalCopy;
  }

  return defaultTimeInterval;
}

@end