@interface HMFVersion
+ (id)logCategory;
+ (id)versionFromOperatingSystemVersion:(id *)version;
+ (id)versionRegex;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersion;
- (BOOL)isEqual:(id)equal;
- (HMFVersion)init;
- (HMFVersion)initWithCoder:(id)coder;
- (HMFVersion)initWithMajorVersion:(unint64_t)version minorVersion:(unint64_t)minorVersion updateVersion:(unint64_t)updateVersion;
- (HMFVersion)initWithString:(id)string;
- (NSString)versionString;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMFVersion

- (NSString)versionString
{
  updateVersion = [(HMFVersion *)self updateVersion];
  v4 = MEMORY[0x277CCACA8];
  majorVersion = [(HMFVersion *)self majorVersion];
  minorVersion = [(HMFVersion *)self minorVersion];
  if (updateVersion)
  {
    [v4 stringWithFormat:@"%tu.%tu.%tu", majorVersion, minorVersion, -[HMFVersion updateVersion](self, "updateVersion")];
  }

  else
  {
    [v4 stringWithFormat:@"%tu.%tu", majorVersion, minorVersion, v9];
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

- (HMFVersion)initWithMajorVersion:(unint64_t)version minorVersion:(unint64_t)minorVersion updateVersion:(unint64_t)updateVersion
{
  v9.receiver = self;
  v9.super_class = HMFVersion;
  result = [(HMFVersion *)&v9 init];
  if (result)
  {
    result->_majorVersion = version;
    result->_minorVersion = minorVersion;
    result->_updateVersion = updateVersion;
  }

  return result;
}

+ (id)versionFromOperatingSystemVersion:(id *)version
{
  v4 = [self alloc];
  v7 = *version;
  v5 = [v4 initWithOperatingSystemVersion:&v7];

  return v5;
}

- (HMFVersion)initWithString:(id)string
{
  v30 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (stringCopy)
  {
    v5 = +[HMFVersion versionRegex];
    v6 = [v5 matchesInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];

    if ([v6 count])
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      if ([v7 numberOfRanges])
      {
        v8 = [v7 rangeAtIndex:1];
        v10 = [stringCopy substringWithRange:{v8, v9}];
        if ([v7 numberOfRanges] >= 4 && (v11 = objc_msgSend(v7, "rangeAtIndex:", 3), v12))
        {
          v13 = [stringCopy substringWithRange:{v11, v12}];
        }

        else
        {
          v13 = 0;
        }

        if ([v7 numberOfRanges] >= 6 && (v18 = objc_msgSend(v7, "rangeAtIndex:", 5), v19))
        {
          v20 = [stringCopy substringWithRange:{v18, v19}];
        }

        else
        {
          v20 = 0;
        }

        self = -[HMFVersion initWithMajorVersion:minorVersion:updateVersion:](self, "initWithMajorVersion:minorVersion:updateVersion:", [v10 integerValue], objc_msgSend(v13, "integerValue"), objc_msgSend(v20, "integerValue"));

        selfCopy = self;
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
          v29 = stringCopy;
          _os_log_impl(&dword_22ADEC000, v22, OS_LOG_TYPE_INFO, "%{public}@Invalid version string: %@", &v26, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        selfCopy = 0;
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
        v29 = stringCopy;
        _os_log_impl(&dword_22ADEC000, v16, OS_LOG_TYPE_INFO, "%{public}@Invalid version string: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return selfCopy;
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
  majorVersion = [(HMFVersion *)self majorVersion];
  v4 = ([(HMFVersion *)self minorVersion]<< 16) ^ (majorVersion << 48);
  return v4 ^ [(HMFVersion *)self updateVersion];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = compareCopy;
  if (self == compareCopy)
  {
    v7 = 0;
    goto LABEL_8;
  }

  if (!compareCopy)
  {
    goto LABEL_4;
  }

  majorVersion = [(HMFVersion *)self majorVersion];
  if (majorVersion > [(HMFVersion *)v5 majorVersion])
  {
    goto LABEL_4;
  }

  majorVersion2 = [(HMFVersion *)self majorVersion];
  if (majorVersion2 < [(HMFVersion *)v5 majorVersion])
  {
LABEL_7:
    v7 = -1;
    goto LABEL_8;
  }

  minorVersion = [(HMFVersion *)self minorVersion];
  if (minorVersion > [(HMFVersion *)v5 minorVersion])
  {
    goto LABEL_4;
  }

  minorVersion2 = [(HMFVersion *)self minorVersion];
  if (minorVersion2 < [(HMFVersion *)v5 minorVersion])
  {
    goto LABEL_7;
  }

  updateVersion = [(HMFVersion *)self updateVersion];
  if (updateVersion > [(HMFVersion *)v5 updateVersion])
  {
LABEL_4:
    v7 = 1;
    goto LABEL_8;
  }

  updateVersion2 = [(HMFVersion *)self updateVersion];
  if (updateVersion2 >= [(HMFVersion *)v5 updateVersion])
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

- (HMFVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"HM.major"];
  v6 = [coderCopy decodeIntegerForKey:@"HM.minor"];
  v7 = [coderCopy decodeIntegerForKey:@"HM.update"];

  return [(HMFVersion *)self initWithMajorVersion:v5 minorVersion:v6 updateVersion:v7];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[HMFVersion majorVersion](self forKey:{"majorVersion"), @"HM.major"}];
  [coderCopy encodeInteger:-[HMFVersion minorVersion](self forKey:{"minorVersion"), @"HM.minor"}];
  [coderCopy encodeInteger:-[HMFVersion updateVersion](self forKey:{"updateVersion"), @"HM.update"}];
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