@interface CMLPIRConfig
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPIRConfig:(id)config;
- (CMLPIRConfig)initWithCoder:(id)coder;
- (CMLPIRConfig)initWithPIRConfig:(id)config keyStatus:(id)status;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMLPIRConfig

- (CMLPIRConfig)initWithPIRConfig:(id)config keyStatus:(id)status
{
  configCopy = config;
  statusCopy = status;
  v14.receiver = self;
  v14.super_class = CMLPIRConfig;
  v8 = [(CMLPIRConfig *)&v14 init];
  if (v8)
  {
    v9 = [configCopy copy];
    serializedPIRConfig = v8->_serializedPIRConfig;
    v8->_serializedPIRConfig = v9;

    v11 = [statusCopy copy];
    serializedKeyStatus = v8->_serializedKeyStatus;
    v8->_serializedKeyStatus = v11;
  }

  return v8;
}

- (BOOL)isEqualToPIRConfig:(id)config
{
  configCopy = config;
  serializedPIRConfig = [(CMLPIRConfig *)self serializedPIRConfig];
  serializedPIRConfig2 = [configCopy serializedPIRConfig];
  if ([serializedPIRConfig isEqualToData:serializedPIRConfig2])
  {
    serializedKeyStatus = [(CMLPIRConfig *)self serializedKeyStatus];
    serializedKeyStatus2 = [configCopy serializedKeyStatus];
    v9 = [serializedKeyStatus isEqualToData:serializedKeyStatus2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CMLPIRConfig *)self isEqualToPIRConfig:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  serializedPIRConfig = [(CMLPIRConfig *)self serializedPIRConfig];
  v4 = [serializedPIRConfig hash];
  serializedKeyStatus = [(CMLPIRConfig *)self serializedKeyStatus];
  v6 = [serializedKeyStatus hash];

  return v6 ^ v4;
}

- (CMLPIRConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializedPIRConfig"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializedKeyStatus"];

  v7 = [(CMLPIRConfig *)self initWithPIRConfig:v5 keyStatus:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serializedPIRConfig = [(CMLPIRConfig *)self serializedPIRConfig];
  [coderCopy encodeObject:serializedPIRConfig forKey:@"serializedPIRConfig"];

  serializedKeyStatus = [(CMLPIRConfig *)self serializedKeyStatus];
  [coderCopy encodeObject:serializedKeyStatus forKey:@"serializedKeyStatus"];
}

@end