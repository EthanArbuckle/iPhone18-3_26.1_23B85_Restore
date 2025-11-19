@interface FMDBLEBeaconIdentifier
+ (id)identifierBLEDevice:(id)a3 other:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (FMDBLEBeaconIdentifier)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDBLEBeaconIdentifier

- (BOOL)isValid
{
  v3 = [(FMDBLEBeaconIdentifier *)self string];
  if (v3)
  {
    v4 = [(FMDBLEBeaconIdentifier *)self string];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(FMDBLEBeaconIdentifier *)self string];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(FMDBLEBeaconIdentifier *)v4 string];
      v6 = [(FMDBLEBeaconIdentifier *)self string];
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[FMDBLEBeaconIdentifier allocWithZone:?]];
  v5 = [(FMDBLEBeaconIdentifier *)self string];
  [(FMDBLEBeaconIdentifier *)v4 setString:v5];

  return v4;
}

+ (id)identifierBLEDevice:(id)a3 other:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 bluetoothAddress];
  if (v6)
  {
    v7 = [v5 bluetoothAddress];
    v8 = [v7 fm_MACAddressString];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 advertisementFields];
  v10 = [v9 objectForKeyedSubscript:@"hsStatus"];

  if (v10)
  {
    v11 = [v10 unsignedIntValue];
    if ((dword_100012D94 & v11) != 0)
    {
      v12 = @"_l";
    }

    else
    {
      v12 = @"_r";
    }

    v13 = v12;
    if (v4)
    {
      if ((dword_100012D94 & v11) != 0)
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

    v16 = [v8 stringByAppendingString:v13];

    v8 = v16;
  }

  return v8;
}

- (FMDBLEBeaconIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FMDBLEBeaconIdentifier;
  v5 = [(FMDBLEBeaconIdentifier *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("string");
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    [(FMDBLEBeaconIdentifier *)v5 setString:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(FMDBLEBeaconIdentifier *)self string];
  v5 = NSStringFromSelector("string");
  [v4 encodeObject:v6 forKey:v5];
}

@end