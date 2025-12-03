@interface ENAppConfiguration
+ (id)appConfigurationForRegion:(id)region withInfo:(id)info;
- (ENAppConfiguration)initWithCoder:(id)coder;
- (ENAppConfiguration)initWithRegion:(id)region andAppConfigInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENAppConfiguration

- (ENAppConfiguration)initWithRegion:(id)region andAppConfigInfo:(id)info
{
  regionCopy = region;
  infoCopy = info;
  v20.receiver = self;
  v20.super_class = ENAppConfiguration;
  v8 = [(ENAppConfiguration *)&v20 init];
  v9 = v8;
  if (v8)
  {
    [(ENAppConfiguration *)v8 setRegionID:regionCopy];
    v10 = [infoCopy objectForKeyedSubscript:@"appBundleId"];
    [(ENAppConfiguration *)v9 setAppID:v10];

    v11 = [infoCopy objectForKeyedSubscript:@"publicKey"];
    [(ENAppConfiguration *)v9 setPublicKey:v11];

    v12 = [infoCopy objectForKeyedSubscript:@"publicKeyVersion"];
    [(ENAppConfiguration *)v9 setPublicKeyVersion:v12];

    v13 = [infoCopy objectForKeyedSubscript:@"exposureMatching"];
    -[ENAppConfiguration setExposureMatching:](v9, "setExposureMatching:", [v13 BOOLValue]);

    v14 = [infoCopy objectForKeyedSubscript:@"maxMatchingAttempts"];
    -[ENAppConfiguration setMaxMatchingAttempts:](v9, "setMaxMatchingAttempts:", [v14 integerValue]);

    v15 = [infoCopy objectForKeyedSubscript:@"maxTtkMatchAttempt"];
    -[ENAppConfiguration setMaxTtkMatchAttempt:](v9, "setMaxTtkMatchAttempt:", [v15 integerValue]);

    v16 = [infoCopy objectForKeyedSubscript:@"maxTtkMatchAttemptPerDay"];
    -[ENAppConfiguration setMaxTtkMatchAttemptPerDay:](v9, "setMaxTtkMatchAttemptPerDay:", [v16 integerValue]);

    v17 = [infoCopy objectForKeyedSubscript:@"callbackIntervalInMin"];
    [v17 doubleValue];
    [(ENAppConfiguration *)v9 setCallbackIntervalInMin:?];

    date = [MEMORY[0x277CBEAA0] date];
    [date timeIntervalSince1970];
    [(ENAppConfiguration *)v9 setLastCachedEpochTimeInterval:?];
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA0];
  regionID = [(ENAppConfiguration *)self regionID];
  appID = [(ENAppConfiguration *)self appID];
  publicKey = [(ENAppConfiguration *)self publicKey];
  publicKeyVersion = [(ENAppConfiguration *)self publicKeyVersion];
  exposureMatching = [(ENAppConfiguration *)self exposureMatching];
  maxMatchingAttempts = [(ENAppConfiguration *)self maxMatchingAttempts];
  maxTtkMatchAttempt = [(ENAppConfiguration *)self maxTtkMatchAttempt];
  maxTtkMatchAttemptPerDay = [(ENAppConfiguration *)self maxTtkMatchAttemptPerDay];
  [(ENAppConfiguration *)self callbackIntervalInMin];
  v13 = v12;
  [(ENAppConfiguration *)self lastCachedEpochTimeInterval];
  v15 = [v3 stringWithFormat:@"ENAppConfiguration - RegionID: %@, App ID: %@, Public Key: %@, Public Key Version: %@, exposureMatching: %i, maxMatchingAttempts: %ld, maxTtkMatchAttempt: %ld, maxTtkMatchAttemptPerDay: %ld, callbackIntervalInMin: %f, lastCachedEpochTimeInterval: %f", regionID, appID, publicKey, publicKeyVersion, exposureMatching, maxMatchingAttempts, maxTtkMatchAttempt, maxTtkMatchAttemptPerDay, v13, v14];

  return v15;
}

+ (id)appConfigurationForRegion:(id)region withInfo:(id)info
{
  infoCopy = info;
  regionCopy = region;
  v7 = [[ENAppConfiguration alloc] initWithRegion:regionCopy andAppConfigInfo:infoCopy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ENAppConfiguration allocWithZone:?]];
  appID = [(ENAppConfiguration *)self appID];
  [(ENAppConfiguration *)v4 setAppID:appID];

  regionID = [(ENAppConfiguration *)self regionID];
  [(ENAppConfiguration *)v4 setRegionID:regionID];

  publicKey = [(ENAppConfiguration *)self publicKey];
  [(ENAppConfiguration *)v4 setPublicKey:publicKey];

  publicKeyVersion = [(ENAppConfiguration *)self publicKeyVersion];
  [(ENAppConfiguration *)v4 setPublicKeyVersion:publicKeyVersion];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appID = [(ENAppConfiguration *)self appID];
  v6 = NSStringFromSelector(sel_appID);
  [coderCopy encodeObject:appID forKey:v6];

  regionID = [(ENAppConfiguration *)self regionID];
  v8 = NSStringFromSelector(sel_regionID);
  [coderCopy encodeObject:regionID forKey:v8];

  publicKey = [(ENAppConfiguration *)self publicKey];
  v10 = NSStringFromSelector(sel_publicKey);
  [coderCopy encodeObject:publicKey forKey:v10];

  publicKeyVersion = [(ENAppConfiguration *)self publicKeyVersion];
  v12 = NSStringFromSelector(sel_publicKeyVersion);
  [coderCopy encodeObject:publicKeyVersion forKey:v12];

  exposureMatching = [(ENAppConfiguration *)self exposureMatching];
  v14 = NSStringFromSelector(sel_exposureMatching);
  [coderCopy encodeBool:exposureMatching forKey:v14];

  maxMatchingAttempts = [(ENAppConfiguration *)self maxMatchingAttempts];
  v16 = NSStringFromSelector(sel_maxMatchingAttempts);
  [coderCopy encodeInteger:maxMatchingAttempts forKey:v16];

  maxTtkMatchAttempt = [(ENAppConfiguration *)self maxTtkMatchAttempt];
  v18 = NSStringFromSelector(sel_maxTtkMatchAttempt);
  [coderCopy encodeInteger:maxTtkMatchAttempt forKey:v18];

  maxTtkMatchAttemptPerDay = [(ENAppConfiguration *)self maxTtkMatchAttemptPerDay];
  v20 = NSStringFromSelector(sel_maxTtkMatchAttemptPerDay);
  [coderCopy encodeInteger:maxTtkMatchAttemptPerDay forKey:v20];

  [(ENAppConfiguration *)self callbackIntervalInMin];
  v22 = v21;
  v23 = NSStringFromSelector(sel_callbackIntervalInMin);
  [coderCopy encodeDouble:v23 forKey:v22];

  [(ENAppConfiguration *)self lastCachedEpochTimeInterval];
  v25 = v24;
  v26 = NSStringFromSelector(sel_lastCachedEpochTimeInterval);
  [coderCopy encodeDouble:v26 forKey:v25];
}

- (ENAppConfiguration)initWithCoder:(id)coder
{
  v26.receiver = self;
  v26.super_class = ENAppConfiguration;
  coderCopy = coder;
  v4 = [(ENAppConfiguration *)&v26 init];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_appID);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:{v6, v26.receiver, v26.super_class}];
  [(ENAppConfiguration *)v4 setAppID:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_regionID);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];
  [(ENAppConfiguration *)v4 setRegionID:v10];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_publicKey);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];
  [(ENAppConfiguration *)v4 setPublicKey:v13];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_publicKeyVersion);
  v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
  [(ENAppConfiguration *)v4 setPublicKeyVersion:v16];

  v17 = NSStringFromSelector(sel_exposureMatching);
  -[ENAppConfiguration setExposureMatching:](v4, "setExposureMatching:", [coderCopy decodeBoolForKey:v17]);

  v18 = NSStringFromSelector(sel_maxMatchingAttempts);
  -[ENAppConfiguration setMaxMatchingAttempts:](v4, "setMaxMatchingAttempts:", [coderCopy decodeIntegerForKey:v18]);

  v19 = NSStringFromSelector(sel_maxTtkMatchAttempt);
  -[ENAppConfiguration setMaxTtkMatchAttempt:](v4, "setMaxTtkMatchAttempt:", [coderCopy decodeIntegerForKey:v19]);

  v20 = NSStringFromSelector(sel_maxTtkMatchAttemptPerDay);
  -[ENAppConfiguration setMaxTtkMatchAttemptPerDay:](v4, "setMaxTtkMatchAttemptPerDay:", [coderCopy decodeIntegerForKey:v20]);

  v21 = NSStringFromSelector(sel_callbackIntervalInMin);
  [coderCopy decodeDoubleForKey:v21];
  [(ENAppConfiguration *)v4 setCallbackIntervalInMin:?];

  v22 = NSStringFromSelector(sel_lastCachedEpochTimeInterval);
  [coderCopy decodeDoubleForKey:v22];
  v24 = v23;

  [(ENAppConfiguration *)v4 setLastCachedEpochTimeInterval:v24];
  return v4;
}

@end