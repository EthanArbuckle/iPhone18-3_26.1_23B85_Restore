@interface HMMCredentialKey
- (BOOL)isEqual:(id)equal;
- (HMMCredentialKey)initWithCredentialParams:(id)params;
- (HMMCredentialKey)initWithCredentialType:(id)type andCredentialIndex:(id)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)credentialStruct;
- (unint64_t)hash;
@end

@implementation HMMCredentialKey

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HMMCredentialKey allocWithZone:?]];
  credentialType = [(HMMCredentialKey *)self credentialType];
  [(HMMCredentialKey *)v4 setCredentialType:credentialType];

  credentialIndex = [(HMMCredentialKey *)self credentialIndex];
  [(HMMCredentialKey *)v4 setCredentialIndex:credentialIndex];

  return v4;
}

- (unint64_t)hash
{
  credentialType = [(HMMCredentialKey *)self credentialType];
  v4 = [credentialType hash];
  credentialIndex = [(HMMCredentialKey *)self credentialIndex];
  v6 = [credentialIndex hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      credentialType = [(HMMCredentialKey *)self credentialType];
      credentialType2 = [(HMMCredentialKey *)v5 credentialType];
      if ([credentialType isEqualToNumber:credentialType2])
      {
        credentialIndex = [(HMMCredentialKey *)self credentialIndex];
        credentialIndex2 = [(HMMCredentialKey *)v5 credentialIndex];
        v10 = [credentialIndex isEqualToNumber:credentialIndex2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)credentialStruct
{
  v3 = objc_opt_new();
  credentialType = [(HMMCredentialKey *)self credentialType];
  [v3 setCredentialType:credentialType];

  credentialIndex = [(HMMCredentialKey *)self credentialIndex];
  [v3 setCredentialIndex:credentialIndex];

  return v3;
}

- (HMMCredentialKey)initWithCredentialType:(id)type andCredentialIndex:(id)index
{
  typeCopy = type;
  indexCopy = index;
  v12.receiver = self;
  v12.super_class = HMMCredentialKey;
  v9 = [(HMMCredentialKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_credentialType, type);
    objc_storeStrong(&v10->_credentialIndex, index);
  }

  return v10;
}

- (HMMCredentialKey)initWithCredentialParams:(id)params
{
  paramsCopy = params;
  credentialType = [paramsCopy credentialType];
  credentialIndex = [paramsCopy credentialIndex];

  v7 = [(HMMCredentialKey *)self initWithCredentialType:credentialType andCredentialIndex:credentialIndex];
  return v7;
}

@end