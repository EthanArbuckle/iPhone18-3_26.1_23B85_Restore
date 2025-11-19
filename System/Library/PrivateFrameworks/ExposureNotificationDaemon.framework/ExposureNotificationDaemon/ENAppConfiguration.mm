@interface ENAppConfiguration
+ (id)appConfigurationForRegion:(id)a3 withInfo:(id)a4;
- (ENAppConfiguration)initWithCoder:(id)a3;
- (ENAppConfiguration)initWithRegion:(id)a3 andAppConfigInfo:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENAppConfiguration

- (ENAppConfiguration)initWithRegion:(id)a3 andAppConfigInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = ENAppConfiguration;
  v8 = [(ENAppConfiguration *)&v20 init];
  v9 = v8;
  if (v8)
  {
    [(ENAppConfiguration *)v8 setRegionID:v6];
    v10 = [v7 objectForKeyedSubscript:@"appBundleId"];
    [(ENAppConfiguration *)v9 setAppID:v10];

    v11 = [v7 objectForKeyedSubscript:@"publicKey"];
    [(ENAppConfiguration *)v9 setPublicKey:v11];

    v12 = [v7 objectForKeyedSubscript:@"publicKeyVersion"];
    [(ENAppConfiguration *)v9 setPublicKeyVersion:v12];

    v13 = [v7 objectForKeyedSubscript:@"exposureMatching"];
    -[ENAppConfiguration setExposureMatching:](v9, "setExposureMatching:", [v13 BOOLValue]);

    v14 = [v7 objectForKeyedSubscript:@"maxMatchingAttempts"];
    -[ENAppConfiguration setMaxMatchingAttempts:](v9, "setMaxMatchingAttempts:", [v14 integerValue]);

    v15 = [v7 objectForKeyedSubscript:@"maxTtkMatchAttempt"];
    -[ENAppConfiguration setMaxTtkMatchAttempt:](v9, "setMaxTtkMatchAttempt:", [v15 integerValue]);

    v16 = [v7 objectForKeyedSubscript:@"maxTtkMatchAttemptPerDay"];
    -[ENAppConfiguration setMaxTtkMatchAttemptPerDay:](v9, "setMaxTtkMatchAttemptPerDay:", [v16 integerValue]);

    v17 = [v7 objectForKeyedSubscript:@"callbackIntervalInMin"];
    [v17 doubleValue];
    [(ENAppConfiguration *)v9 setCallbackIntervalInMin:?];

    v18 = [MEMORY[0x277CBEAA0] date];
    [v18 timeIntervalSince1970];
    [(ENAppConfiguration *)v9 setLastCachedEpochTimeInterval:?];
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA0];
  v4 = [(ENAppConfiguration *)self regionID];
  v5 = [(ENAppConfiguration *)self appID];
  v6 = [(ENAppConfiguration *)self publicKey];
  v7 = [(ENAppConfiguration *)self publicKeyVersion];
  v8 = [(ENAppConfiguration *)self exposureMatching];
  v9 = [(ENAppConfiguration *)self maxMatchingAttempts];
  v10 = [(ENAppConfiguration *)self maxTtkMatchAttempt];
  v11 = [(ENAppConfiguration *)self maxTtkMatchAttemptPerDay];
  [(ENAppConfiguration *)self callbackIntervalInMin];
  v13 = v12;
  [(ENAppConfiguration *)self lastCachedEpochTimeInterval];
  v15 = [v3 stringWithFormat:@"ENAppConfiguration - RegionID: %@, App ID: %@, Public Key: %@, Public Key Version: %@, exposureMatching: %i, maxMatchingAttempts: %ld, maxTtkMatchAttempt: %ld, maxTtkMatchAttemptPerDay: %ld, callbackIntervalInMin: %f, lastCachedEpochTimeInterval: %f", v4, v5, v6, v7, v8, v9, v10, v11, v13, v14];

  return v15;
}

+ (id)appConfigurationForRegion:(id)a3 withInfo:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ENAppConfiguration alloc] initWithRegion:v6 andAppConfigInfo:v5];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ENAppConfiguration allocWithZone:?]];
  v5 = [(ENAppConfiguration *)self appID];
  [(ENAppConfiguration *)v4 setAppID:v5];

  v6 = [(ENAppConfiguration *)self regionID];
  [(ENAppConfiguration *)v4 setRegionID:v6];

  v7 = [(ENAppConfiguration *)self publicKey];
  [(ENAppConfiguration *)v4 setPublicKey:v7];

  v8 = [(ENAppConfiguration *)self publicKeyVersion];
  [(ENAppConfiguration *)v4 setPublicKeyVersion:v8];

  [(ENAppConfiguration *)v4 setExposureMatching:[(ENAppConfiguration *)self exposureMatching]];
  [(ENAppConfiguration *)v4 setMaxMatchingAttempts:[(ENAppConfiguration *)self maxMatchingAttempts]];
  [(ENAppConfiguration *)v4 setMaxTtkMatchAttempt:[(ENAppConfiguration *)self maxTtkMatchAttempt]];
  [(ENAppConfiguration *)v4 setMaxTtkMatchAttemptPerDay:[(ENAppConfiguration *)self maxTtkMatchAttemptPerDay]];
  [(ENAppConfiguration *)self callbackIntervalInMin];
  [(ENAppConfiguration *)v4 setCallbackIntervalInMin:?];
  [(ENAppConfiguration *)self lastCachedEpochTimeInterval];
  [(ENAppConfiguration *)v4 setLastCachedEpochTimeInterval:?];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ENAppConfiguration *)self appID];
  v6 = NSStringFromSelector(sel_appID);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(ENAppConfiguration *)self regionID];
  v8 = NSStringFromSelector(sel_regionID);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(ENAppConfiguration *)self publicKey];
  v10 = NSStringFromSelector(sel_publicKey);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(ENAppConfiguration *)self publicKeyVersion];
  v12 = NSStringFromSelector(sel_publicKeyVersion);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(ENAppConfiguration *)self exposureMatching];
  v14 = NSStringFromSelector(sel_exposureMatching);
  [v4 encodeBool:v13 forKey:v14];

  v15 = [(ENAppConfiguration *)self maxMatchingAttempts];
  v16 = NSStringFromSelector(sel_maxMatchingAttempts);
  [v4 encodeInteger:v15 forKey:v16];

  v17 = [(ENAppConfiguration *)self maxTtkMatchAttempt];
  v18 = NSStringFromSelector(sel_maxTtkMatchAttempt);
  [v4 encodeInteger:v17 forKey:v18];

  v19 = [(ENAppConfiguration *)self maxTtkMatchAttemptPerDay];
  v20 = NSStringFromSelector(sel_maxTtkMatchAttemptPerDay);
  [v4 encodeInteger:v19 forKey:v20];

  [(ENAppConfiguration *)self callbackIntervalInMin];
  v22 = v21;
  v23 = NSStringFromSelector(sel_callbackIntervalInMin);
  [v4 encodeDouble:v23 forKey:v22];

  [(ENAppConfiguration *)self lastCachedEpochTimeInterval];
  v25 = v24;
  v26 = NSStringFromSelector(sel_lastCachedEpochTimeInterval);
  [v4 encodeDouble:v26 forKey:v25];
}

- (ENAppConfiguration)initWithCoder:(id)a3
{
  v26.receiver = self;
  v26.super_class = ENAppConfiguration;
  v3 = a3;
  v4 = [(ENAppConfiguration *)&v26 init];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_appID);
  v7 = [v3 decodeObjectOfClass:v5 forKey:{v6, v26.receiver, v26.super_class}];
  [(ENAppConfiguration *)v4 setAppID:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_regionID);
  v10 = [v3 decodeObjectOfClass:v8 forKey:v9];
  [(ENAppConfiguration *)v4 setRegionID:v10];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_publicKey);
  v13 = [v3 decodeObjectOfClass:v11 forKey:v12];
  [(ENAppConfiguration *)v4 setPublicKey:v13];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_publicKeyVersion);
  v16 = [v3 decodeObjectOfClass:v14 forKey:v15];
  [(ENAppConfiguration *)v4 setPublicKeyVersion:v16];

  v17 = NSStringFromSelector(sel_exposureMatching);
  -[ENAppConfiguration setExposureMatching:](v4, "setExposureMatching:", [v3 decodeBoolForKey:v17]);

  v18 = NSStringFromSelector(sel_maxMatchingAttempts);
  -[ENAppConfiguration setMaxMatchingAttempts:](v4, "setMaxMatchingAttempts:", [v3 decodeIntegerForKey:v18]);

  v19 = NSStringFromSelector(sel_maxTtkMatchAttempt);
  -[ENAppConfiguration setMaxTtkMatchAttempt:](v4, "setMaxTtkMatchAttempt:", [v3 decodeIntegerForKey:v19]);

  v20 = NSStringFromSelector(sel_maxTtkMatchAttemptPerDay);
  -[ENAppConfiguration setMaxTtkMatchAttemptPerDay:](v4, "setMaxTtkMatchAttemptPerDay:", [v3 decodeIntegerForKey:v20]);

  v21 = NSStringFromSelector(sel_callbackIntervalInMin);
  [v3 decodeDoubleForKey:v21];
  [(ENAppConfiguration *)v4 setCallbackIntervalInMin:?];

  v22 = NSStringFromSelector(sel_lastCachedEpochTimeInterval);
  [v3 decodeDoubleForKey:v22];
  v24 = v23;

  [(ENAppConfiguration *)v4 setLastCachedEpochTimeInterval:v24];
  return v4;
}

@end