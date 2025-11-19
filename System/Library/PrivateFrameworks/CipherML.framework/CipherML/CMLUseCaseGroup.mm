@interface CMLUseCaseGroup
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUseCaseGroup:(id)a3;
- (CMLUseCaseGroup)initWithCoder:(id)a3;
- (CMLUseCaseGroup)initWithKeyExpirationMinutes:(int64_t)a3 keyRotationBeforeExpirationMinutes:(int64_t)a4 keyRotationIgnoreMissingEvaluationKey:(BOOL)a5 useCases:(id)a6 networkConfig:(id)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMLUseCaseGroup

- (CMLUseCaseGroup)initWithKeyExpirationMinutes:(int64_t)a3 keyRotationBeforeExpirationMinutes:(int64_t)a4 keyRotationIgnoreMissingEvaluationKey:(BOOL)a5 useCases:(id)a6 networkConfig:(id)a7
{
  v12 = a6;
  v13 = a7;
  v19.receiver = self;
  v19.super_class = CMLUseCaseGroup;
  v14 = [(CMLUseCaseGroup *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_keyExpirationMinutes = a3;
    v14->_keyRotationBeforeExpirationMinutes = a4;
    v14->_keyRotationIgnoreMissingEvaluationKey = a5;
    v16 = [v12 copy];
    useCases = v15->_useCases;
    v15->_useCases = v16;

    objc_storeStrong(&v15->_networkConfig, a7);
  }

  return v15;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CMLUseCaseGroup *)self isEqualToUseCaseGroup:v5];
  }

  return v6;
}

- (BOOL)isEqualToUseCaseGroup:(id)a3
{
  v4 = a3;
  v5 = [(CMLUseCaseGroup *)self keyExpirationMinutes];
  if (v5 == [v4 keyExpirationMinutes] && (v6 = -[CMLUseCaseGroup keyRotationBeforeExpirationMinutes](self, "keyRotationBeforeExpirationMinutes"), v6 == objc_msgSend(v4, "keyRotationBeforeExpirationMinutes")) && (v7 = -[CMLUseCaseGroup keyRotationIgnoreMissingEvaluationKey](self, "keyRotationIgnoreMissingEvaluationKey"), v7 == objc_msgSend(v4, "keyRotationIgnoreMissingEvaluationKey")))
  {
    v10 = [(CMLUseCaseGroup *)self useCases];
    v11 = [v4 useCases];
    if ([v10 isEqual:v11])
    {
      v12 = [(CMLUseCaseGroup *)self networkConfig];
      v13 = [v4 networkConfig];
      v8 = [v12 isEqual:v13];
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
  v3 = [(CMLUseCaseGroup *)self keyExpirationMinutes];
  v4 = [(CMLUseCaseGroup *)self keyRotationBeforeExpirationMinutes]^ v3;
  v5 = [(CMLUseCaseGroup *)self keyRotationIgnoreMissingEvaluationKey];
  v6 = [(CMLUseCaseGroup *)self useCases];
  v7 = v4 ^ [v6 hash] ^ v5;
  v8 = [(CMLUseCaseGroup *)self networkConfig];
  v9 = [v8 hash];

  return v7 ^ v9;
}

- (CMLUseCaseGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"keyExpirationMinutes"];
  v6 = [v4 decodeIntegerForKey:@"keyRotationBeforeExpirationMinutes"];
  v7 = [v4 decodeBoolForKey:@"keyRotationIgnoreMissingEvaluationKey"];
  v8 = objc_opt_class();
  v9 = [v4 decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"useCases"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"networkConfig"];

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
    v12 = 0;
  }

  else
  {
    self = [(CMLUseCaseGroup *)self initWithKeyExpirationMinutes:v5 keyRotationBeforeExpirationMinutes:v6 keyRotationIgnoreMissingEvaluationKey:v7 useCases:v9 networkConfig:v10];
    v12 = self;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[CMLUseCaseGroup keyExpirationMinutes](self forKey:{"keyExpirationMinutes"), @"keyExpirationMinutes"}];
  [v4 encodeInteger:-[CMLUseCaseGroup keyRotationBeforeExpirationMinutes](self forKey:{"keyRotationBeforeExpirationMinutes"), @"keyRotationBeforeExpirationMinutes"}];
  [v4 encodeBool:-[CMLUseCaseGroup keyRotationIgnoreMissingEvaluationKey](self forKey:{"keyRotationIgnoreMissingEvaluationKey"), @"keyRotationIgnoreMissingEvaluationKey"}];
  v5 = [(CMLUseCaseGroup *)self useCases];
  [v4 encodeObject:v5 forKey:@"useCases"];

  v6 = [(CMLUseCaseGroup *)self networkConfig];
  [v4 encodeObject:v6 forKey:@"networkConfig"];
}

@end