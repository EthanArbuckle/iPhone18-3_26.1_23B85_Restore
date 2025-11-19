@interface HMFSoftwareVersion
+ (BOOL)isValidVersionString:(id)a3;
+ (id)logCategory;
- (HMFSoftwareVersion)initWithCoder:(id)a3;
- (HMFSoftwareVersion)initWithMajorVersion:(unint64_t)a3 minorVersion:(unint64_t)a4 updateVersion:(unint64_t)a5 buildVersion:(id)a6;
- (HMFSoftwareVersion)initWithString:(id)a3;
- (NSString)shortVersionString;
- (id)versionString;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMFSoftwareVersion

- (HMFSoftwareVersion)initWithMajorVersion:(unint64_t)a3 minorVersion:(unint64_t)a4 updateVersion:(unint64_t)a5 buildVersion:(id)a6
{
  v10 = a6;
  v15.receiver = self;
  v15.super_class = HMFSoftwareVersion;
  v11 = [(HMFVersion *)&v15 initWithMajorVersion:a3 minorVersion:a4 updateVersion:a5];
  if (v11)
  {
    v12 = [v10 copy];
    buildVersion = v11->_buildVersion;
    v11->_buildVersion = v12;
  }

  return v11;
}

- (HMFSoftwareVersion)initWithString:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = +[HMFVersion versionRegex];
    v6 = [v5 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];

    if ([v6 count])
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      if ([v7 numberOfRanges])
      {
        v8 = [v7 rangeAtIndex:1];
        v10 = [v4 substringWithRange:{v8, v9}];
        if ([v7 numberOfRanges] >= 4 && (v11 = objc_msgSend(v7, "rangeAtIndex:", 3), v12))
        {
          v13 = [v4 substringWithRange:{v11, v12}];
        }

        else
        {
          v13 = 0;
        }

        if ([v7 numberOfRanges] >= 6 && (v18 = objc_msgSend(v7, "rangeAtIndex:", 5), v19))
        {
          v20 = [v4 substringWithRange:{v18, v19}];
        }

        else
        {
          v20 = 0;
        }

        if ([v7 numberOfRanges] >= 0xD && (v21 = objc_msgSend(v7, "rangeAtIndex:", 12), v22))
        {
          v23 = [v4 substringWithRange:{v21, v22}];
        }

        else
        {
          v23 = 0;
        }

        if ([v7 numberOfRanges] >= 0xB)
        {
          v24 = [v7 rangeAtIndex:10];
          if (v25)
          {
            v26 = [v4 substringWithRange:{v24, v25}];

            v23 = v26;
          }
        }

        if ([v7 numberOfRanges] >= 9)
        {
          v27 = [v7 rangeAtIndex:8];
          if (v28)
          {
            v29 = [v4 substringWithRange:{v27, v28}];

            v23 = v29;
          }
        }

        self = -[HMFSoftwareVersion initWithMajorVersion:minorVersion:updateVersion:buildVersion:](self, "initWithMajorVersion:minorVersion:updateVersion:buildVersion:", [v10 integerValue], objc_msgSend(v13, "integerValue"), objc_msgSend(v20, "integerValue"), v23);

        v14 = self;
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        self = self;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier(self);
          v35 = 138543618;
          v36 = v32;
          v37 = 2112;
          v38 = v4;
          _os_log_impl(&dword_22ADEC000, v31, OS_LOG_TYPE_INFO, "%{public}@Invalid version string: %@", &v35, 0x16u);
        }

        objc_autoreleasePoolPop(v30);
        v14 = 0;
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      self = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier(self);
        v35 = 138543618;
        v36 = v17;
        v37 = 2112;
        v38 = v4;
        _os_log_impl(&dword_22ADEC000, v16, OS_LOG_TYPE_INFO, "%{public}@Invalid version string: %@", &v35, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)versionString
{
  v3 = [(HMFSoftwareVersion *)self buildVersion];

  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v10.receiver = self;
    v10.super_class = HMFSoftwareVersion;
    v5 = [(HMFVersion *)&v10 versionString];
    v6 = [(HMFSoftwareVersion *)self buildVersion];
    v7 = [v4 stringWithFormat:@"%@ (%@)", v5, v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HMFSoftwareVersion;
    v7 = [(HMFVersion *)&v9 versionString];
  }

  return v7;
}

- (NSString)shortVersionString
{
  v4.receiver = self;
  v4.super_class = HMFSoftwareVersion;
  v2 = [(HMFVersion *)&v4 versionString];

  return v2;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMFSoftwareVersion;
  v5 = [(HMFVersion *)&v13 compare:v4];
  if (!v5)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v5 = [(HMFSoftwareVersion *)self buildVersion];
    if (v5)
    {
      v9 = [v8 buildVersion];

      if (v9)
      {
        v10 = [(HMFSoftwareVersion *)self buildVersion];
        v11 = [v8 buildVersion];
        v5 = [v10 compare:v11 options:65];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

+ (BOOL)isValidVersionString:(id)a3
{
  v3 = a3;
  v4 = +[HMFVersion versionRegex];
  if (v4)
  {
    v5 = [v4 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
    v6 = [v5 count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HMFSoftwareVersion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [[HMFVersion alloc] initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.build"];
    self = [(HMFSoftwareVersion *)self initWithMajorVersion:[(HMFVersion *)v5 majorVersion] minorVersion:[(HMFVersion *)v5 minorVersion] updateVersion:[(HMFVersion *)v5 updateVersion] buildVersion:v6];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMFSoftwareVersion;
  v4 = a3;
  [(HMFVersion *)&v6 encodeWithCoder:v4];
  v5 = [(HMFSoftwareVersion *)self buildVersion:v6.receiver];
  [v4 encodeObject:v5 forKey:@"HM.build"];
}

+ (id)logCategory
{
  if (qword_280AFC308 != -1)
  {
    dispatch_once(&qword_280AFC308, &__block_literal_global_138);
  }

  v3 = qword_280AFC310;

  return v3;
}

uint64_t __33__HMFSoftwareVersion_logCategory__block_invoke()
{
  qword_280AFC310 = HMFCreateOSLogHandle(@"HMFSoftwareVersion", @"com.apple.HomeKit");

  return MEMORY[0x2821F96F8]();
}

@end