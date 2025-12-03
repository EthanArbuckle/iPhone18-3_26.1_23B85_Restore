@interface CMLPECConfig
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPECConfig:(id)config;
- (CMLPECConfig)initWithCoder:(id)coder;
- (CMLPECConfig)initWithPECConfig:(id)config keyStatus:(id)status;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMLPECConfig

- (CMLPECConfig)initWithPECConfig:(id)config keyStatus:(id)status
{
  configCopy = config;
  statusCopy = status;
  v14.receiver = self;
  v14.super_class = CMLPECConfig;
  v8 = [(CMLPECConfig *)&v14 init];
  if (v8)
  {
    v9 = [configCopy copy];
    serializedPECConfig = v8->_serializedPECConfig;
    v8->_serializedPECConfig = v9;

    v11 = [statusCopy copy];
    serializedKeyStatus = v8->_serializedKeyStatus;
    v8->_serializedKeyStatus = v11;
  }

  return v8;
}

- (BOOL)isEqualToPECConfig:(id)config
{
  configCopy = config;
  serializedPECConfig = [(CMLPECConfig *)self serializedPECConfig];
  serializedPECConfig2 = [configCopy serializedPECConfig];
  if ([serializedPECConfig isEqualToData:serializedPECConfig2])
  {
    serializedKeyStatus = [(CMLPECConfig *)self serializedKeyStatus];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CMLPECConfig *)self isEqualToPECConfig:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  serializedPECConfig = [(CMLPECConfig *)self serializedPECConfig];
  v4 = [serializedPECConfig hash];
  serializedKeyStatus = [(CMLPECConfig *)self serializedKeyStatus];
  v6 = [serializedKeyStatus hash];

  return v6 ^ v4;
}

- (CMLPECConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializedPECConfig"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializedKeyStatus"];

  v7 = [(CMLPECConfig *)self initWithPECConfig:v5 keyStatus:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serializedPECConfig = [(CMLPECConfig *)self serializedPECConfig];
  [coderCopy encodeObject:serializedPECConfig forKey:@"serializedPECConfig"];

  serializedKeyStatus = [(CMLPECConfig *)self serializedKeyStatus];
  [coderCopy encodeObject:serializedKeyStatus forKey:@"serializedKeyStatus"];
}

@end