@interface HMFVersion
+ (id)logCategory;
+ (id)versionFromOperatingSystemVersion:(id *)a3;
+ (id)versionRegex;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersion;
- (BOOL)isEqual:(id)a3;
- (HMFVersion)init;
- (HMFVersion)initWithCoder:(id)a3;
- (HMFVersion)initWithMajorVersion:(unint64_t)a3 minorVersion:(unint64_t)a4 updateVersion:(unint64_t)a5;
- (HMFVersion)initWithString:(id)a3;
- (NSString)versionString;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMFVersion

- (NSString)versionString
{
  v3 = [(HMFVersion *)self updateVersion];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(HMFVersion *)self majorVersion];
  v6 = [(HMFVersion *)self minorVersion];
  if (v3)
  {
    [v4 stringWithFormat:@"%tu.%tu.%tu", v5, v6, -[HMFVersion updateVersion](self, "updateVersion")];
  }

  else
  {
    [v4 stringWithFormat:@"%tu.%tu", v5, v6, v9];
  }
  v7 = ;

  return v7;
}

- (HMFVersion)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMFVersion)initWithMajorVersion:(unint64_t)a3 minorVersion:(unint64_t)a4 updateVersion:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = HMFVersion;
  result = [(HMFVersion *)&v9 init];
  if (result)
  {
    result->_majorVersion = a3;
    result->_minorVersion = a4;
    result->_updateVersion = a5;
  }

  return result;
}

+ (id)versionFromOperatingSystemVersion:(id *)a3
{
  v4 = [a1 alloc];
  v7 = *a3;
  v5 = [v4 initWithOperatingSystemVersion:&v7];

  return v5;
}

- (HMFVersion)initWithString:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
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

        self = -[HMFVersion initWithMajorVersion:minorVersion:updateVersion:](self, "initWithMajorVersion:minorVersion:updateVersion:", [v10 integerValue], objc_msgSend(v13, "integerValue"), objc_msgSend(v20, "integerValue"));

        v14 = self;
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        self = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier(self);
          v26 = 138543618;
          v27 = v23;
          v28 = 2112;
          v29 = v4;
          _os_log_impl(&dword_22ADEC000, v22, OS_LOG_TYPE_INFO, "%{public}@Invalid version string: %@", &v26, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
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
        v26 = 138543618;
        v27 = v17;
        v28 = 2112;
        v29 = v4;
        _os_log_impl(&dword_22ADEC000, v16, OS_LOG_TYPE_INFO, "%{public}@Invalid version string: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersion
{
  retstr->var0 = [(HMFVersion *)self majorVersion];
  retstr->var1 = [(HMFVersion *)self minorVersion];
  result = [(HMFVersion *)self updateVersion];
  retstr->var2 = result;
  return result;
}

- (unint64_t)hash
{
  v3 = [(HMFVersion *)self majorVersion];
  v4 = ([(HMFVersion *)self minorVersion]<< 16) ^ (v3 << 48);
  return v4 ^ [(HMFVersion *)self updateVersion];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(HMFVersion *)self isEqualToVersion:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 0;
    goto LABEL_8;
  }

  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = [(HMFVersion *)self majorVersion];
  if (v6 > [(HMFVersion *)v5 majorVersion])
  {
    goto LABEL_4;
  }

  v8 = [(HMFVersion *)self majorVersion];
  if (v8 < [(HMFVersion *)v5 majorVersion])
  {
LABEL_7:
    v7 = -1;
    goto LABEL_8;
  }

  v10 = [(HMFVersion *)self minorVersion];
  if (v10 > [(HMFVersion *)v5 minorVersion])
  {
    goto LABEL_4;
  }

  v11 = [(HMFVersion *)self minorVersion];
  if (v11 < [(HMFVersion *)v5 minorVersion])
  {
    goto LABEL_7;
  }

  v12 = [(HMFVersion *)self updateVersion];
  if (v12 > [(HMFVersion *)v5 updateVersion])
  {
LABEL_4:
    v7 = 1;
    goto LABEL_8;
  }

  v13 = [(HMFVersion *)self updateVersion];
  if (v13 >= [(HMFVersion *)v5 updateVersion])
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

LABEL_8:

  return v7;
}

+ (id)versionRegex
{
  if (qword_280AFC2F0 != -1)
  {
    dispatch_once(&qword_280AFC2F0, &__block_literal_global_12);
  }

  v3 = _MergedGlobals_3_2;

  return v3;
}

void __26__HMFVersion_versionRegex__block_invoke()
{
  v10 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^(\\d+)(\\.(\\d+))?(\\.(\\d+))?(((.*))|(\\s*\\((.*)\\))|(\\.(.*)))?" options:0 error:&v10];;
  v1 = v10;
  v2 = _MergedGlobals_3_2;
  _MergedGlobals_3_2 = v0;

  if (!_MergedGlobals_3_2)
  {
    _HMFPreconditionFailureWithFormat(@"Failed to compile HMFSoftwareVersion regex pattern '%@': %@", v3, v4, v5, v6, v7, v8, v9, @"^(\\d+)(\\.(\\d+))?(\\.(\\d+))?((;(.*))|(\\s*\\((.*)\\))|(\\.(.*)))?");
  }
}

- (HMFVersion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"HM.major"];
  v6 = [v4 decodeIntegerForKey:@"HM.minor"];
  v7 = [v4 decodeIntegerForKey:@"HM.update"];

  return [(HMFVersion *)self initWithMajorVersion:v5 minorVersion:v6 updateVersion:v7];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[HMFVersion majorVersion](self forKey:{"majorVersion"), @"HM.major"}];
  [v4 encodeInteger:-[HMFVersion minorVersion](self forKey:{"minorVersion"), @"HM.minor"}];
  [v4 encodeInteger:-[HMFVersion updateVersion](self forKey:{"updateVersion"), @"HM.update"}];
}

+ (id)logCategory
{
  if (qword_280AFC2F8 != -1)
  {
    dispatch_once(&qword_280AFC2F8, &__block_literal_global_27);
  }

  v3 = qword_280AFC300;

  return v3;
}

uint64_t __25__HMFVersion_logCategory__block_invoke()
{
  qword_280AFC300 = HMFCreateOSLogHandle(@"HMFVersion", @"com.apple.HomeKit");

  return MEMORY[0x2821F96F8]();
}

@end