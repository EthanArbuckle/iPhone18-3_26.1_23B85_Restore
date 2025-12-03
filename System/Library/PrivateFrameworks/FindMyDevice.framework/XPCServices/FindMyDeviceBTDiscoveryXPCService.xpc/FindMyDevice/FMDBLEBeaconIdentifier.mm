@interface FMDBLEBeaconIdentifier
+ (id)identifierBLEDevice:(id)device other:(BOOL)other;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (FMDBLEBeaconIdentifier)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDBLEBeaconIdentifier

- (BOOL)isValid
{
  string = [(FMDBLEBeaconIdentifier *)self string];
  if (string)
  {
    string2 = [(FMDBLEBeaconIdentifier *)self string];
    v5 = [string2 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  string = [(FMDBLEBeaconIdentifier *)self string];
  v3 = [string hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      string = [(FMDBLEBeaconIdentifier *)equalCopy string];
      string2 = [(FMDBLEBeaconIdentifier *)self string];
      v7 = [string isEqualToString:string2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[FMDBLEBeaconIdentifier allocWithZone:?]];
  string = [(FMDBLEBeaconIdentifier *)self string];
  [(FMDBLEBeaconIdentifier *)v4 setString:string];

  return v4;
}

+ (id)identifierBLEDevice:(id)device other:(BOOL)other
{
  otherCopy = other;
  deviceCopy = device;
  bluetoothAddress = [deviceCopy bluetoothAddress];
  if (bluetoothAddress)
  {
    bluetoothAddress2 = [deviceCopy bluetoothAddress];
    fm_MACAddressString = [bluetoothAddress2 fm_MACAddressString];
  }

  else
  {
    fm_MACAddressString = 0;
  }

  advertisementFields = [deviceCopy advertisementFields];
  v10 = [advertisementFields objectForKeyedSubscript:@"hsStatus"];

  if (v10)
  {
    unsignedIntValue = [v10 unsignedIntValue];
    if ((dword_100012D94 & unsignedIntValue) != 0)
    {
      v12 = @"_l";
    }

    else
    {
      v12 = @"_r";
    }

    v13 = v12;
    if (otherCopy)
    {
      if ((dword_100012D94 & unsignedIntValue) != 0)
      {
        v14 = @"_r";
      }

      else
      {
        v14 = @"_l";
      }

      v15 = v14;

      v13 = v15;
    }

    v16 = [fm_MACAddressString stringByAppendingString:v13];

    fm_MACAddressString = v16;
  }

  return fm_MACAddressString;
}

- (FMDBLEBeaconIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = FMDBLEBeaconIdentifier;
  v5 = [(FMDBLEBeaconIdentifier *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("string");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    [(FMDBLEBeaconIdentifier *)v5 setString:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  string = [(FMDBLEBeaconIdentifier *)self string];
  v5 = NSStringFromSelector("string");
  [coderCopy encodeObject:string forKey:v5];
}

@end