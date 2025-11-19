@interface CMLPIRConfig
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPIRConfig:(id)a3;
- (CMLPIRConfig)initWithCoder:(id)a3;
- (CMLPIRConfig)initWithPIRConfig:(id)a3 keyStatus:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMLPIRConfig

- (CMLPIRConfig)initWithPIRConfig:(id)a3 keyStatus:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CMLPIRConfig;
  v8 = [(CMLPIRConfig *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    serializedPIRConfig = v8->_serializedPIRConfig;
    v8->_serializedPIRConfig = v9;

    v11 = [v7 copy];
    serializedKeyStatus = v8->_serializedKeyStatus;
    v8->_serializedKeyStatus = v11;
  }

  return v8;
}

- (BOOL)isEqualToPIRConfig:(id)a3
{
  v4 = a3;
  v5 = [(CMLPIRConfig *)self serializedPIRConfig];
  v6 = [v4 serializedPIRConfig];
  if ([v5 isEqualToData:v6])
  {
    v7 = [(CMLPIRConfig *)self serializedKeyStatus];
    v8 = [v4 serializedKeyStatus];
    v9 = [v7 isEqualToData:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CMLPIRConfig *)self isEqualToPIRConfig:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(CMLPIRConfig *)self serializedPIRConfig];
  v4 = [v3 hash];
  v5 = [(CMLPIRConfig *)self serializedKeyStatus];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (CMLPIRConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serializedPIRConfig"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serializedKeyStatus"];

  v7 = [(CMLPIRConfig *)self initWithPIRConfig:v5 keyStatus:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CMLPIRConfig *)self serializedPIRConfig];
  [v4 encodeObject:v5 forKey:@"serializedPIRConfig"];

  v6 = [(CMLPIRConfig *)self serializedKeyStatus];
  [v4 encodeObject:v6 forKey:@"serializedKeyStatus"];
}

@end