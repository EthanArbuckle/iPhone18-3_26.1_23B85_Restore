@interface HMDAccessoryVersion
- (HMDAccessoryVersion)initWithCoder:(id)a3;
- (HMDAccessoryVersion)initWithMatterVersionString:(id)a3;
- (HMDAccessoryVersion)initWithString:(id)a3;
- (NSString)rawVersionString;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDAccessoryVersion

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = HMDAccessoryVersion;
  [(HMDAccessoryVersion *)&v6 encodeWithCoder:v4];
  rawVersionString = self->_rawVersionString;
  if (rawVersionString)
  {
    [v4 encodeObject:rawVersionString forKey:@"HM.rawVersionString"];
  }
}

- (HMDAccessoryVersion)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDAccessoryVersion;
  v5 = [(HMDAccessoryVersion *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.rawVersionString"];
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
    v3 = rawVersionString;
  }

  else
  {
    v3 = [(HMDAccessoryVersion *)self versionString];
  }

  return v3;
}

- (HMDAccessoryVersion)initWithMatterVersionString:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HMDAccessoryVersion;
  v5 = [(HMDAccessoryVersion *)&v12 initWithString:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(HMDAccessoryVersion *)v5 versionString];
    v8 = [v4 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [v4 copy];
      rawVersionString = v6->_rawVersionString;
      v6->_rawVersionString = v9;
    }
  }

  return v6;
}

- (HMDAccessoryVersion)initWithString:(id)a3
{
  v4 = a3;
  if ([v4 integerValue] < 10000)
  {
    v12.receiver = self;
    v12.super_class = HMDAccessoryVersion;
    v5 = [(HMDAccessoryVersion *)&v12 initWithString:v4];
  }

  else
  {
    v5 = [HMDAccessoryVersion initWithMajorVersion:"initWithMajorVersion:minorVersion:updateVersion:" minorVersion:? updateVersion:?];
  }

  v6 = v5;
  if (v5)
  {
    v7 = [(HMDAccessoryVersion *)v5 versionString];
    v8 = [v4 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [v4 copy];
      rawVersionString = v6->_rawVersionString;
      v6->_rawVersionString = v9;
    }
  }

  return v6;
}

@end