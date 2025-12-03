@interface UARPDeploymentRule
- (BOOL)isDeploymentAllowed:(id *)allowed;
- (BOOL)isDeploymentAllowedPerCountryList;
- (BOOL)isDeploymentAllowedPerDeploymentLimit;
- (BOOL)isDeploymentAllowedPerGoLiveDate;
- (BOOL)isDeploymentAllowedPerRampPeriod;
- (BOOL)isEqual:(id)equal;
- (BOOL)validateDeploymentLimits:(id *)limits;
- (UARPDeploymentRule)initWithCoder:(id)coder;
- (UARPDeploymentRule)initWithConfig:(id)config;
- (UARPDeploymentRule)initWithMinOSVersion:(id)version maxOSVersion:(id)sVersion;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)compareOSVersion:(id)version withVersion:(id)withVersion;
- (void)addDeploymentLimit:(id)limit withGoLiveDate:(id)date error:(id *)error;
- (void)calculateDeploymentDay;
- (void)calculateDeploymentPercent;
- (void)createSerialNumber;
- (void)dumpWithTabDepth:(unint64_t)depth dumpString:(id)string;
- (void)encodeWithCoder:(id)coder;
- (void)setTestSerialNumber:(id)number;
@end

@implementation UARPDeploymentRule

- (UARPDeploymentRule)initWithMinOSVersion:(id)version maxOSVersion:(id)sVersion
{
  versionCopy = version;
  sVersionCopy = sVersion;
  v14.receiver = self;
  v14.super_class = UARPDeploymentRule;
  v8 = [(UARPDeploymentRule *)&v14 init];
  if (v8)
  {
    v9 = [versionCopy copy];
    minOSVersion = v8->_minOSVersion;
    v8->_minOSVersion = v9;

    v11 = [sVersionCopy copy];
    maxOSVersion = v8->_maxOSVersion;
    v8->_maxOSVersion = v11;
  }

  return v8;
}

- (UARPDeploymentRule)initWithConfig:(id)config
{
  configCopy = config;
  rampPeriod = [configCopy rampPeriod];
  if (rampPeriod)
  {
    v6 = rampPeriod;
    deploymentLimit = [configCopy deploymentLimit];

    if (deploymentLimit)
    {
      goto LABEL_17;
    }
  }

  rampPeriod2 = [configCopy rampPeriod];

  if (rampPeriod2)
  {
    rampPeriod3 = [configCopy rampPeriod];
    unsignedIntValue = [rampPeriod3 unsignedIntValue];

    if (unsignedIntValue != 28 && unsignedIntValue != 7)
    {
LABEL_17:
      selfCopy = 0;
      goto LABEL_18;
    }
  }

  else
  {
    deploymentLimit2 = [configCopy deploymentLimit];

    if (deploymentLimit2)
    {
      deploymentLimit3 = [configCopy deploymentLimit];
      unsignedIntValue2 = [deploymentLimit3 unsignedIntValue];

      if ((unsignedIntValue2 - 1) >= 0x63)
      {
        goto LABEL_17;
      }
    }
  }

  v42.receiver = self;
  v42.super_class = UARPDeploymentRule;
  v14 = [(UARPDeploymentRule *)&v42 init];
  if (v14)
  {
    goLiveDate = [configCopy goLiveDate];
    v16 = [goLiveDate copy];
    goLiveDate = v14->_goLiveDate;
    v14->_goLiveDate = v16;

    countryList = [configCopy countryList];
    v19 = [countryList copy];
    countryList = v14->_countryList;
    v14->_countryList = v19;

    rampPeriod4 = [configCopy rampPeriod];
    v22 = [rampPeriod4 copy];
    rampPeriod = v14->_rampPeriod;
    v14->_rampPeriod = v22;

    deploymentLimit4 = [configCopy deploymentLimit];
    v25 = [deploymentLimit4 copy];
    deploymentLimit = v14->_deploymentLimit;
    v14->_deploymentLimit = v25;

    v27 = os_log_create("com.apple.accessoryupdater.uarp", "deployment");
    log = v14->_log;
    v14->_log = v27;

    if (objc_opt_class())
    {
      mEMORY[0x277D0EAF8] = [MEMORY[0x277D0EAF8] sharedConfiguration];
      countryCode = [mEMORY[0x277D0EAF8] countryCode];
      v31 = [countryCode copy];
      currentISOCountryCode = v14->_currentISOCountryCode;
      v14->_currentISOCountryCode = v31;
    }

    v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deploymentLimits = v14->_deploymentLimits;
    v14->_deploymentLimits = v33;

    v14->_isFullyDeployedDeploymentLimits = 0;
    v35 = [(NSNumber *)v14->_deploymentLimit copy];
    v36 = [(NSDate *)v14->_goLiveDate copy];
    v41 = 0;
    [(UARPDeploymentRule *)v14 addDeploymentLimit:v35 withGoLiveDate:v36 error:&v41];
    v37 = v41;

    if (v37)
    {
      v38 = v14->_log;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [(UARPDeploymentRule *)v37 initWithConfig:v38];
      }
    }
  }

  self = v14;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (UARPDeploymentRule)initWithCoder:(id)coder
{
  v24[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = UARPDeploymentRule;
  v5 = [(UARPDeploymentRule *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"goLiveDate"];
    goLiveDate = v5->_goLiveDate;
    v5->_goLiveDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rampPeriod"];
    rampPeriod = v5->_rampPeriod;
    v5->_rampPeriod = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deploymentLimit"];
    deploymentLimit = v5->_deploymentLimit;
    v5->_deploymentLimit = v10;

    v12 = MEMORY[0x277CBEB98];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v14 = [v12 setWithArray:v13];

    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"countryList"];
    countryList = v5->_countryList;
    v5->_countryList = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minOSVersion"];
    minOSVersion = v5->_minOSVersion;
    v5->_minOSVersion = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxOSVersion"];
    maxOSVersion = v5->_maxOSVersion;
    v5->_maxOSVersion = v19;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  goLiveDate = self->_goLiveDate;
  coderCopy = coder;
  [coderCopy encodeObject:goLiveDate forKey:@"goLiveDate"];
  [coderCopy encodeObject:self->_countryList forKey:@"countryList"];
  [coderCopy encodeObject:self->_rampPeriod forKey:@"rampPeriod"];
  [coderCopy encodeObject:self->_deploymentLimit forKey:@"deploymentLimit"];
  [coderCopy encodeObject:self->_minOSVersion forKey:@"minOSVersion"];
  [coderCopy encodeObject:self->_maxOSVersion forKey:@"maxOSVersion"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(UARPDeploymentRule);
  objc_storeStrong(&v4->_currentISOCountryCode, self->_currentISOCountryCode);
  objc_storeStrong(&v4->_goLiveDate, self->_goLiveDate);
  objc_storeStrong(&v4->_countryList, self->_countryList);
  objc_storeStrong(&v4->_rampPeriod, self->_rampPeriod);
  objc_storeStrong(&v4->_deploymentLimit, self->_deploymentLimit);
  v5 = [(NSMutableDictionary *)self->_deploymentLimits mutableCopy];
  deploymentLimits = v4->_deploymentLimits;
  v4->_deploymentLimits = v5;

  v4->_isFullyDeployedDeploymentLimits = self->_isFullyDeployedDeploymentLimits;
  v7 = [(NSString *)self->_minOSVersion copy];
  minOSVersion = v4->_minOSVersion;
  v4->_minOSVersion = v7;

  v9 = [(NSString *)self->_maxOSVersion copy];
  maxOSVersion = v4->_maxOSVersion;
  v4->_maxOSVersion = v9;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: goLiveDate=%@, countryList=%@, rampPeriod=%@, deploymentLimit=%@>", v5, self->_goLiveDate, self->_countryList, self->_rampPeriod, self->_deploymentLimit];

  return v6;
}

- (void)setTestSerialNumber:(id)number
{
  v4 = [number copy];
  testSerialNumber = self->_testSerialNumber;
  self->_testSerialNumber = v4;

  MEMORY[0x2821F96F8]();
}

- (BOOL)isDeploymentAllowed:(id *)allowed
{
  [(UARPDeploymentRule *)self createSerialNumber];
  [(UARPDeploymentRule *)self calculateDeploymentDay];
  [(UARPDeploymentRule *)self calculateDeploymentPercent];
  if (self->_goLiveDate && ![(UARPDeploymentRule *)self isDeploymentAllowedPerGoLiveDate]|| [(NSArray *)self->_countryList count]&& ![(UARPDeploymentRule *)self isDeploymentAllowedPerCountryList]|| self->_rampPeriod && ![(UARPDeploymentRule *)self isDeploymentAllowedPerRampPeriod])
  {
    goto LABEL_19;
  }

  if (self->_deploymentLimit)
  {
    isDeploymentAllowedPerDeploymentLimit = [(UARPDeploymentRule *)self isDeploymentAllowedPerDeploymentLimit];
  }

  else
  {
    isDeploymentAllowedPerDeploymentLimit = 1;
  }

  if (self->_minOSVersion && self->_maxOSVersion)
  {
    v12 = 0uLL;
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v7 = processInfo;
    if (processInfo)
    {
      [processInfo operatingSystemVersion];
    }

    else
    {
      v12 = 0uLL;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld.%ld.%ld", v12, 0];
    v10 = [(UARPDeploymentRule *)self compareOSVersion:self->_minOSVersion withVersion:v9];
    v11 = [(UARPDeploymentRule *)self compareOSVersion:self->_maxOSVersion withVersion:v9]| (v10 + 1);

    if (v11 >= 2)
    {
      goto LABEL_19;
    }
  }

  else if (!isDeploymentAllowedPerDeploymentLimit)
  {
LABEL_19:
    [UARPDeploymentRule isDeploymentAllowed:allowed];
    return 0;
  }

  return 1;
}

- (int64_t)compareOSVersion:(id)version withVersion:(id)withVersion
{
  withVersionCopy = withVersion;
  v6 = [version componentsSeparatedByString:@"."];
  v7 = [withVersionCopy componentsSeparatedByString:@"."];
  v8 = 0;
  v9 = 1;
  while (1)
  {
    v10 = v8;
    if ([v6 count] <= v8 && objc_msgSend(v7, "count") <= v8)
    {
      break;
    }

    if ([v6 count] > v8)
    {
      if ([v7 count] <= v8)
      {
        goto LABEL_10;
      }

      v11 = [v6 objectAtIndexedSubscript:v8];
      integerValue = [v11 integerValue];

      v13 = [v7 objectAtIndexedSubscript:v8];
      integerValue2 = [v13 integerValue];

      if (integerValue > integerValue2)
      {
        goto LABEL_10;
      }

      v8 = v10 + 1;
      if (integerValue >= integerValue2)
      {
        continue;
      }
    }

    v9 = -1;
    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (BOOL)isDeploymentAllowedPerGoLiveDate
{
  v20 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [date compare:self->_goLiveDate];
  log = self->_log;
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (!v4)
  {
    if (v6)
    {
      goLiveDate = self->_goLiveDate;
      v14 = 136315650;
      v15 = "[UARPDeploymentRule isDeploymentAllowedPerGoLiveDate]";
      v16 = 2112;
      v17 = goLiveDate;
      v18 = 2112;
      v19 = date;
      v8 = "%s: GoLive %@ date today (today: %@), deployment allowed";
      goto LABEL_7;
    }

LABEL_8:
    v10 = 1;
    goto LABEL_12;
  }

  if (v4 == 1)
  {
    if (v6)
    {
      v7 = self->_goLiveDate;
      v14 = 136315650;
      v15 = "[UARPDeploymentRule isDeploymentAllowedPerGoLiveDate]";
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = date;
      v8 = "%s: GoLive %@ date in past (today: %@), deployment allowed";
LABEL_7:
      v10 = 1;
      _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, v8, &v14, 0x20u);
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v6)
  {
    v11 = self->_goLiveDate;
    v14 = 136315650;
    v15 = "[UARPDeploymentRule isDeploymentAllowedPerGoLiveDate]";
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = date;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s: GoLive date (%@) in future (today: %@), deployment not allowed", &v14, 0x20u);
  }

  v10 = 0;
LABEL_12:

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isDeploymentAllowedPerRampPeriod
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = 0;
  time(&v13);
  v3 = localtime(&v13);
  deploymentDay = self->_deploymentDay;
  if (!deploymentDay)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  unsignedIntValue = [(NSNumber *)deploymentDay unsignedIntValue];
  tm_wday = v3->tm_wday;
  log = self->_log;
  v8 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (tm_wday != unsignedIntValue)
  {
    if (v8)
    {
      v10 = v3->tm_wday;
      *buf = 136315650;
      v15 = "[UARPDeploymentRule isDeploymentAllowedPerRampPeriod]";
      v16 = 1024;
      v17 = v10;
      v18 = 1024;
      v19 = unsignedIntValue;
      _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s: Cannot apply update today is Day %d and this device can only do Ramped Updates on Day %d", buf, 0x18u);
    }

    goto LABEL_7;
  }

  if (v8)
  {
    *buf = 136315394;
    v15 = "[UARPDeploymentRule isDeploymentAllowedPerRampPeriod]";
    v16 = 1024;
    v17 = unsignedIntValue;
    v9 = 1;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s: Today is the day for Ramped Updates: Day %d", buf, 0x12u);
  }

  else
  {
    v9 = 1;
  }

LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isDeploymentAllowedPerDeploymentLimit
{
  v16 = *MEMORY[0x277D85DE8];
  if (!self->_deploymentPercent)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  unsignedIntValue = [(NSNumber *)self->_deploymentLimit unsignedIntValue];
  unsignedIntValue2 = [(NSNumber *)self->_deploymentPercent unsignedIntValue];
  log = self->_log;
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (unsignedIntValue2 > unsignedIntValue)
  {
    if (v6)
    {
      v10 = 136315650;
      v11 = "[UARPDeploymentRule isDeploymentAllowedPerDeploymentLimit]";
      v12 = 1024;
      v13 = unsignedIntValue;
      v14 = 1024;
      v15 = unsignedIntValue2;
      _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s: Device cannot apply metered rollout as it doesn't fall under %d percent. Device is %d percent.", &v10, 0x18u);
    }

    goto LABEL_5;
  }

  if (v6)
  {
    v10 = 136315394;
    v11 = "[UARPDeploymentRule isDeploymentAllowedPerDeploymentLimit]";
    v12 = 1024;
    v13 = unsignedIntValue2;
    v7 = 1;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s: Device can apply metered rollout, %d percent.", &v10, 0x12u);
  }

  else
  {
    v7 = 1;
  }

LABEL_6:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)calculateDeploymentDay
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_serialNumber)
  {
    rampPeriod = self->_rampPeriod;
    if (rampPeriod)
    {
      unsignedIntValue = [(NSNumber *)rampPeriod unsignedIntValue];
      uTF8String = [(NSString *)self->_serialNumber UTF8String];
      v6 = [(NSString *)self->_serialNumber length];
      for (i = 0; v6; --v6)
      {
        v8 = *uTF8String++;
        i += v8;
      }

      v9 = i % unsignedIntValue;
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        v14 = 136315394;
        v15 = "[UARPDeploymentRule calculateDeploymentDay]";
        v16 = 1024;
        v17 = v9;
        _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s: deployDay = %d", &v14, 0x12u);
      }

      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
      deploymentDay = self->_deploymentDay;
      self->_deploymentDay = v11;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)calculateDeploymentPercent
{
  v18 = *MEMORY[0x277D85DE8];
  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    uTF8String = [(NSString *)serialNumber UTF8String];
    v5 = [(NSString *)self->_serialNumber length];
    if (v5)
    {
      v6 = 0;
      v7 = 3;
      do
      {
        v8 = *uTF8String++;
        v6 += v8;
        v7 *= v8;
        --v5;
      }

      while (v5);
      v9 = v7 % 0xA + 10 * (v6 % 0xA);
    }

    else
    {
      v9 = 3;
    }

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[UARPDeploymentRule calculateDeploymentPercent]";
      v16 = 1024;
      v17 = v9;
      _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s: deployPercent = %d", &v14, 0x12u);
    }

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    deploymentPercent = self->_deploymentPercent;
    self->_deploymentPercent = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)createSerialNumber
{
  v17 = *MEMORY[0x277D85DE8];
  testSerialNumber = self->_testSerialNumber;
  if (testSerialNumber)
  {
    objc_storeStrong(&self->_serialNumber, testSerialNumber);
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      serialNumber = self->_serialNumber;
      v13 = 136315394;
      v14 = "[UARPDeploymentRule createSerialNumber]";
      v15 = 2112;
      v16 = serialNumber;
      v6 = "%s: Using %@ provided by user as seed";
      v7 = log;
      v8 = 22;
LABEL_6:
      _os_log_impl(&dword_247AA7000, v7, OS_LOG_TYPE_INFO, v6, &v13, v8);
    }
  }

  else
  {
    v9 = MGCopyAnswer();
    v10 = self->_serialNumber;
    self->_serialNumber = v9;

    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "[UARPDeploymentRule createSerialNumber]";
      v6 = "%s: Using device serial number as seed";
      v7 = v11;
      v8 = 12;
      goto LABEL_6;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addDeploymentLimit:(id)limit withGoLiveDate:(id)date error:(id *)error
{
  limitCopy = limit;
  dateCopy = date;
  if (self->_isFullyDeployedDeploymentLimits)
  {
    v9 = objc_opt_new();
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid Deployment Rule: Deployment already scheduled for full deployment for %@", self->_currentISOCountryCode];
    [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x277CCA450]];

LABEL_5:
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uarp" code:6 userInfo:v9];
    *error = v15;

    goto LABEL_6;
  }

  v11 = [(NSMutableDictionary *)self->_deploymentLimits objectForKey:dateCopy];

  if (v11)
  {
    v9 = objc_opt_new();
    v12 = MEMORY[0x277CCACA8];
    v13 = [(NSDate *)self->_goLiveDate description];
    v14 = [v12 stringWithFormat:@"Invalid Deployment Rule: Deployment Limit already set on Go Live Date %@ for %@", v13, self->_currentISOCountryCode];
    [v9 setObject:v14 forKeyedSubscript:*MEMORY[0x277CCA450]];

    goto LABEL_5;
  }

  if (dateCopy)
  {
    [(NSMutableDictionary *)self->_deploymentLimits setObject:limitCopy forKeyedSubscript:dateCopy];
  }

  [(UARPDeploymentRule *)self validateDeploymentLimits:error];
LABEL_6:
}

- (BOOL)validateDeploymentLimits:(id *)limits
{
  allKeys = [(NSMutableDictionary *)self->_deploymentLimits allKeys];
  v6 = [allKeys sortedArrayUsingSelector:sel_compare_];

  if ([v6 count] < 2)
  {
LABEL_5:
    deploymentLimits = self->_deploymentLimits;
    lastObject = [v6 lastObject];
    v20 = [(NSMutableDictionary *)deploymentLimits objectForKeyedSubscript:lastObject];
    unsignedIntValue = [v20 unsignedIntValue];

    v22 = 1;
    if (unsignedIntValue == 100)
    {
      self->_isFullyDeployedDeploymentLimits = 1;
    }
  }

  else
  {
    v7 = 2;
    v8 = 1;
    while (1)
    {
      v9 = self->_deploymentLimits;
      v10 = [v6 objectAtIndexedSubscript:v7 - 2];
      v11 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v10];
      unsignedIntValue2 = [v11 unsignedIntValue];

      v13 = self->_deploymentLimits;
      v14 = [v6 objectAtIndexedSubscript:v8];
      v15 = [(NSMutableDictionary *)v13 objectForKeyedSubscript:v14];
      unsignedIntValue3 = [v15 unsignedIntValue];

      if (unsignedIntValue2 >= unsignedIntValue3)
      {
        break;
      }

      v8 = v7;
      if ([v6 count] <= v7++)
      {
        goto LABEL_5;
      }
    }

    v23 = unsignedIntValue3;
    v24 = objc_opt_new();
    v25 = MEMORY[0x277CCACA8];
    currentISOCountryCode = self->_currentISOCountryCode;
    v27 = [v6 objectAtIndexedSubscript:v8];
    v28 = [v27 description];
    v29 = [v25 stringWithFormat:@"Invalid Deployment Rule: Deployment Limit %lu for %@ with Go Live Date %@ is invalid, must be strictly increasing", v23, currentISOCountryCode, v28];
    [v24 setObject:v29 forKeyedSubscript:*MEMORY[0x277CCA450]];

    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uarp" code:6 userInfo:v24];
    *limits = v30;
    v31 = self->_deploymentLimits;
    v32 = [v6 objectAtIndexedSubscript:v8];
    [(NSMutableDictionary *)v31 removeObjectForKey:v32];

    v22 = 0;
  }

  return v22;
}

- (void)dumpWithTabDepth:(unint64_t)depth dumpString:(id)string
{
  v18 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  [stringCopy appendWithTabDepth:depth format:@"Deployment Rule:\n"];
  if (self->_currentISOCountryCode)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Current Country Code: %@\n", self->_currentISOCountryCode}];
  }

  if (self->_goLiveDate)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Go-Live Date: %@\n", self->_goLiveDate}];
  }

  if ([(NSArray *)self->_countryList count])
  {
    [stringCopy appendWithTabDepth:depth + 1 format:@"Country List:"];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_countryList;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [stringCopy appendFormat:@" %@", *(*(&v13 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [stringCopy appendString:@"\n"];
  }

  if (self->_rampPeriod)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Ramp Period: %@\n", self->_rampPeriod}];
  }

  if (self->_deploymentLimit)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Deployment Limit: %@\n", self->_deploymentLimit}];
  }

  if (self->_deploymentPercent)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Deployment Percent: %@\n", self->_deploymentPercent}];
  }

  if (self->_deploymentDay)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Deployment Day: %@\n", self->_deploymentDay}];
  }

  if (self->_serialNumber)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Serial Number: %@\n", self->_serialNumber}];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (self == equalCopy)
    {
      v7 = 1;
    }

    else
    {
      currentISOCountryCode = [(UARPDeploymentRule *)self currentISOCountryCode];
      currentISOCountryCode2 = [(UARPDeploymentRule *)equalCopy currentISOCountryCode];
      v7 = [currentISOCountryCode isEqualToString:currentISOCountryCode2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isDeploymentAllowedPerCountryList
{
  v20 = *MEMORY[0x277D85DE8];
  if (!self->_currentISOCountryCode)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      currentISOCountryCode = self->_currentISOCountryCode;
      v16 = 136315394;
      v17 = "[UARPDeploymentRule isDeploymentAllowedPerCountryList]";
      v18 = 2112;
      v19 = currentISOCountryCode;
      _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s: Current location unknown %@", &v16, 0x16u);
    }

    if (!objc_opt_class())
    {
      goto LABEL_12;
    }

    if (!self->_currentISOCountryCode)
    {
LABEL_11:
      v13 = 0;
      goto LABEL_13;
    }
  }

  v5 = [(NSArray *)self->_countryList containsObject:?];
  v6 = os_log_type_enabled(self->_log, OS_LOG_TYPE_INFO);
  if (!v5)
  {
    if (v6)
    {
      v17 = "[UARPDeploymentRule isDeploymentAllowedPerCountryList]";
      OUTLINED_FUNCTION_0(&dword_247AA7000, v7, v8, "%s: Device not in country list, deployment not allowed", v9, v10, v11, v12, 2u);
    }

    goto LABEL_11;
  }

  if (!v6)
  {
LABEL_12:
    v13 = 1;
    goto LABEL_13;
  }

  v17 = "[UARPDeploymentRule isDeploymentAllowedPerCountryList]";
  v13 = 1;
  OUTLINED_FUNCTION_0(&dword_247AA7000, v7, v8, "%s: Device is in country list", v9, v10, v11, v12, 2u);
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)initWithConfig:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[UARPDeploymentRule initWithConfig:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_247AA7000, a2, OS_LOG_TYPE_ERROR, "%s: Failed to initialize deployment limits with error %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)isDeploymentAllowed:(void *)a1 .cold.1(void *a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uarp" code:6 userInfo:0];
  *a1 = v2;
}

@end