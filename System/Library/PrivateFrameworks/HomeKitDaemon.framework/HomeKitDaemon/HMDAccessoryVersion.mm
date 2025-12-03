@interface HMDAccessoryVersion
- (HMDAccessoryVersion)initWithCoder:(id)coder;
- (HMDAccessoryVersion)initWithMatterVersionString:(id)string;
- (HMDAccessoryVersion)initWithString:(id)string;
- (NSString)rawVersionString;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDAccessoryVersion

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = HMDAccessoryVersion;
  [(HMDAccessoryVersion *)&v6 encodeWithCoder:coderCopy];
  rawVersionString = self->_rawVersionString;
  if (rawVersionString)
  {
    [coderCopy encodeObject:rawVersionString forKey:@"HM.rawVersionString"];
  }
}

- (HMDAccessoryVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMDAccessoryVersion;
  v5 = [(HMDAccessoryVersion *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.rawVersionString"];
    rawVersionString = v5->_rawVersionString;
    v5->_rawVersionString = v6;
  }

  return v5;
}

- (NSString)rawVersionString
{
  rawVersionString = self->_rawVersionString;
  if (rawVersionString)
  {
    versionString = rawVersionString;
  }

  else
  {
    versionString = [(HMDAccessoryVersion *)self versionString];
  }

  return versionString;
}

- (HMDAccessoryVersion)initWithMatterVersionString:(id)string
{
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = HMDAccessoryVersion;
  v5 = [(HMDAccessoryVersion *)&v12 initWithString:stringCopy];
  v6 = v5;
  if (v5)
  {
    versionString = [(HMDAccessoryVersion *)v5 versionString];
    v8 = [stringCopy isEqualToString:versionString];

    if ((v8 & 1) == 0)
    {
      v9 = [stringCopy copy];
      rawVersionString = v6->_rawVersionString;
      v6->_rawVersionString = v9;
    }
  }

  return v6;
}

- (HMDAccessoryVersion)initWithString:(id)string
{
  stringCopy = string;
  if ([stringCopy integerValue] < 10000)
  {
    v12.receiver = self;
    v12.super_class = HMDAccessoryVersion;
    v5 = [(HMDAccessoryVersion *)&v12 initWithString:stringCopy];
  }

  else
  {
    v5 = [HMDAccessoryVersion initWithMajorVersion:"initWithMajorVersion:minorVersion:updateVersion:" minorVersion:? updateVersion:?];
  }

  v6 = v5;
  if (v5)
  {
    versionString = [(HMDAccessoryVersion *)v5 versionString];
    v8 = [stringCopy isEqualToString:versionString];

    if ((v8 & 1) == 0)
    {
      v9 = [stringCopy copy];
      rawVersionString = v6->_rawVersionString;
      v6->_rawVersionString = v9;
    }
  }

  return v6;
}

@end