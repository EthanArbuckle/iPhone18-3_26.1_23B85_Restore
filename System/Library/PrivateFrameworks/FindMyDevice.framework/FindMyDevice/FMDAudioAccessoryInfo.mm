@interface FMDAudioAccessoryInfo
- (FMDAudioAccessoryInfo)initWithCoder:(id)coder;
- (FMDAudioAccessoryInfo)initWithSystemSerialNumber:(id)number leftSerialNumber:(id)serialNumber rightSerialNumber:(id)rightSerialNumber;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDAudioAccessoryInfo

- (FMDAudioAccessoryInfo)initWithSystemSerialNumber:(id)number leftSerialNumber:(id)serialNumber rightSerialNumber:(id)rightSerialNumber
{
  numberCopy = number;
  serialNumberCopy = serialNumber;
  rightSerialNumberCopy = rightSerialNumber;
  v14.receiver = self;
  v14.super_class = FMDAudioAccessoryInfo;
  v11 = [(FMDAudioAccessoryInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(FMDAudioAccessoryInfo *)v11 setSystemSerialNumber:numberCopy];
    [(FMDAudioAccessoryInfo *)v12 setLeftSerialNumber:serialNumberCopy];
    [(FMDAudioAccessoryInfo *)v12 setRightSerialNumber:rightSerialNumberCopy];
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  systemSerialNumber = [(FMDAudioAccessoryInfo *)self systemSerialNumber];
  [coderCopy encodeObject:systemSerialNumber forKey:@"systemSerialNumber"];

  leftSerialNumber = [(FMDAudioAccessoryInfo *)self leftSerialNumber];
  [coderCopy encodeObject:leftSerialNumber forKey:@"leftSerialNumber"];

  rightSerialNumber = [(FMDAudioAccessoryInfo *)self rightSerialNumber];
  [coderCopy encodeObject:rightSerialNumber forKey:@"rightSerialNumber"];
}

- (FMDAudioAccessoryInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = FMDAudioAccessoryInfo;
  v5 = [(FMDAudioAccessoryInfo *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemSerialNumber"];
    [(FMDAudioAccessoryInfo *)v5 setSystemSerialNumber:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"leftSerialNumber"];
    [(FMDAudioAccessoryInfo *)v5 setLeftSerialNumber:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rightSerialNumber"];
    [(FMDAudioAccessoryInfo *)v5 setRightSerialNumber:v8];
  }

  return v5;
}

@end