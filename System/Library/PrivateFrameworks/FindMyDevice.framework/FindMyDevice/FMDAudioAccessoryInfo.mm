@interface FMDAudioAccessoryInfo
- (FMDAudioAccessoryInfo)initWithCoder:(id)a3;
- (FMDAudioAccessoryInfo)initWithSystemSerialNumber:(id)a3 leftSerialNumber:(id)a4 rightSerialNumber:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDAudioAccessoryInfo

- (FMDAudioAccessoryInfo)initWithSystemSerialNumber:(id)a3 leftSerialNumber:(id)a4 rightSerialNumber:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = FMDAudioAccessoryInfo;
  v11 = [(FMDAudioAccessoryInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(FMDAudioAccessoryInfo *)v11 setSystemSerialNumber:v8];
    [(FMDAudioAccessoryInfo *)v12 setLeftSerialNumber:v9];
    [(FMDAudioAccessoryInfo *)v12 setRightSerialNumber:v10];
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDAudioAccessoryInfo *)self systemSerialNumber];
  [v4 encodeObject:v5 forKey:@"systemSerialNumber"];

  v6 = [(FMDAudioAccessoryInfo *)self leftSerialNumber];
  [v4 encodeObject:v6 forKey:@"leftSerialNumber"];

  v7 = [(FMDAudioAccessoryInfo *)self rightSerialNumber];
  [v4 encodeObject:v7 forKey:@"rightSerialNumber"];
}

- (FMDAudioAccessoryInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FMDAudioAccessoryInfo;
  v5 = [(FMDAudioAccessoryInfo *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemSerialNumber"];
    [(FMDAudioAccessoryInfo *)v5 setSystemSerialNumber:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"leftSerialNumber"];
    [(FMDAudioAccessoryInfo *)v5 setLeftSerialNumber:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rightSerialNumber"];
    [(FMDAudioAccessoryInfo *)v5 setRightSerialNumber:v8];
  }

  return v5;
}

@end