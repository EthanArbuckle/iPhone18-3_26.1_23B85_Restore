@interface HMMCredentialKey
- (BOOL)isEqual:(id)a3;
- (HMMCredentialKey)initWithCredentialParams:(id)a3;
- (HMMCredentialKey)initWithCredentialType:(id)a3 andCredentialIndex:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)credentialStruct;
- (unint64_t)hash;
@end

@implementation HMMCredentialKey

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[HMMCredentialKey allocWithZone:?]];
  v5 = [(HMMCredentialKey *)self credentialType];
  [(HMMCredentialKey *)v4 setCredentialType:v5];

  v6 = [(HMMCredentialKey *)self credentialIndex];
  [(HMMCredentialKey *)v4 setCredentialIndex:v6];

  return v4;
}

- (unint64_t)hash
{
  v3 = [(HMMCredentialKey *)self credentialType];
  v4 = [v3 hash];
  v5 = [(HMMCredentialKey *)self credentialIndex];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HMMCredentialKey *)self credentialType];
      v7 = [(HMMCredentialKey *)v5 credentialType];
      if ([v6 isEqualToNumber:v7])
      {
        v8 = [(HMMCredentialKey *)self credentialIndex];
        v9 = [(HMMCredentialKey *)v5 credentialIndex];
        v10 = [v8 isEqualToNumber:v9];
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
  v4 = [(HMMCredentialKey *)self credentialType];
  [v3 setCredentialType:v4];

  v5 = [(HMMCredentialKey *)self credentialIndex];
  [v3 setCredentialIndex:v5];

  return v3;
}

- (HMMCredentialKey)initWithCredentialType:(id)a3 andCredentialIndex:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMMCredentialKey;
  v9 = [(HMMCredentialKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_credentialType, a3);
    objc_storeStrong(&v10->_credentialIndex, a4);
  }

  return v10;
}

- (HMMCredentialKey)initWithCredentialParams:(id)a3
{
  v4 = a3;
  v5 = [v4 credentialType];
  v6 = [v4 credentialIndex];

  v7 = [(HMMCredentialKey *)self initWithCredentialType:v5 andCredentialIndex:v6];
  return v7;
}

@end