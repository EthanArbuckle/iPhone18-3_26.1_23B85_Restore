@interface CMLUseCaseGroup
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUseCaseGroup:(id)group;
- (CMLUseCaseGroup)initWithCoder:(id)coder;
- (CMLUseCaseGroup)initWithKeyExpirationMinutes:(int64_t)minutes keyRotationBeforeExpirationMinutes:(int64_t)expirationMinutes keyRotationIgnoreMissingEvaluationKey:(BOOL)key useCases:(id)cases networkConfig:(id)config;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMLUseCaseGroup

- (CMLUseCaseGroup)initWithKeyExpirationMinutes:(int64_t)minutes keyRotationBeforeExpirationMinutes:(int64_t)expirationMinutes keyRotationIgnoreMissingEvaluationKey:(BOOL)key useCases:(id)cases networkConfig:(id)config
{
  casesCopy = cases;
  configCopy = config;
  v19.receiver = self;
  v19.super_class = CMLUseCaseGroup;
  v14 = [(CMLUseCaseGroup *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_keyExpirationMinutes = minutes;
    v14->_keyRotationBeforeExpirationMinutes = expirationMinutes;
    v14->_keyRotationIgnoreMissingEvaluationKey = key;
    v16 = [casesCopy copy];
    useCases = v15->_useCases;
    v15->_useCases = v16;

    objc_storeStrong(&v15->_networkConfig, config);
  }

  return v15;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CMLUseCaseGroup *)self isEqualToUseCaseGroup:v5];
  }

  return v6;
}

- (BOOL)isEqualToUseCaseGroup:(id)group
{
  groupCopy = group;
  keyExpirationMinutes = [(CMLUseCaseGroup *)self keyExpirationMinutes];
  if (keyExpirationMinutes == [groupCopy keyExpirationMinutes] && (v6 = -[CMLUseCaseGroup keyRotationBeforeExpirationMinutes](self, "keyRotationBeforeExpirationMinutes"), v6 == objc_msgSend(groupCopy, "keyRotationBeforeExpirationMinutes")) && (v7 = -[CMLUseCaseGroup keyRotationIgnoreMissingEvaluationKey](self, "keyRotationIgnoreMissingEvaluationKey"), v7 == objc_msgSend(groupCopy, "keyRotationIgnoreMissingEvaluationKey")))
  {
    useCases = [(CMLUseCaseGroup *)self useCases];
    useCases2 = [groupCopy useCases];
    if ([useCases isEqual:useCases2])
    {
      networkConfig = [(CMLUseCaseGroup *)self networkConfig];
      networkConfig2 = [groupCopy networkConfig];
      v8 = [networkConfig isEqual:networkConfig2];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  keyExpirationMinutes = [(CMLUseCaseGroup *)self keyExpirationMinutes];
  v4 = [(CMLUseCaseGroup *)self keyRotationBeforeExpirationMinutes]^ keyExpirationMinutes;
  keyRotationIgnoreMissingEvaluationKey = [(CMLUseCaseGroup *)self keyRotationIgnoreMissingEvaluationKey];
  useCases = [(CMLUseCaseGroup *)self useCases];
  v7 = v4 ^ [useCases hash] ^ keyRotationIgnoreMissingEvaluationKey;
  networkConfig = [(CMLUseCaseGroup *)self networkConfig];
  v9 = [networkConfig hash];

  return v7 ^ v9;
}

- (CMLUseCaseGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"keyExpirationMinutes"];
  v6 = [coderCopy decodeIntegerForKey:@"keyRotationBeforeExpirationMinutes"];
  v7 = [coderCopy decodeBoolForKey:@"keyRotationIgnoreMissingEvaluationKey"];
  v8 = objc_opt_class();
  v9 = [coderCopy decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"useCases"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"networkConfig"];

  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CMLUseCaseGroup *)self initWithKeyExpirationMinutes:v5 keyRotationBeforeExpirationMinutes:v6 keyRotationIgnoreMissingEvaluationKey:v7 useCases:v9 networkConfig:v10];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[CMLUseCaseGroup keyExpirationMinutes](self forKey:{"keyExpirationMinutes"), @"keyExpirationMinutes"}];
  [coderCopy encodeInteger:-[CMLUseCaseGroup keyRotationBeforeExpirationMinutes](self forKey:{"keyRotationBeforeExpirationMinutes"), @"keyRotationBeforeExpirationMinutes"}];
  [coderCopy encodeBool:-[CMLUseCaseGroup keyRotationIgnoreMissingEvaluationKey](self forKey:{"keyRotationIgnoreMissingEvaluationKey"), @"keyRotationIgnoreMissingEvaluationKey"}];
  useCases = [(CMLUseCaseGroup *)self useCases];
  [coderCopy encodeObject:useCases forKey:@"useCases"];

  networkConfig = [(CMLUseCaseGroup *)self networkConfig];
  [coderCopy encodeObject:networkConfig forKey:@"networkConfig"];
}

@end