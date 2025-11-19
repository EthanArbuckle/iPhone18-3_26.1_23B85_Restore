@interface ELSPrivacyPolicyDescription
- (BOOL)isEqualToDescription:(id)a3;
- (ELSPrivacyPolicyDescription)initWithCoder:(id)a3;
- (ELSPrivacyPolicyDescription)initWithPolicyKey:(id)a3 andSuiteNameKey:(id)a4 andSensitiveInformationKey:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
@end

@implementation ELSPrivacyPolicyDescription

- (ELSPrivacyPolicyDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ELSPrivacyPolicyDescription;
  v5 = [(ELSPrivacyPolicyDescription *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"policyKey"];
    policyKey = v5->_policyKey;
    v5->_policyKey = v6;

    v8 = [v4 decodeObjectForKey:@"suiteNameKey"];
    suiteNameKey = v5->_suiteNameKey;
    v5->_suiteNameKey = v8;

    v10 = [v4 decodeObjectForKey:@"sensitiveInfoKey"];
    sensitiveInformationKey = v5->_sensitiveInformationKey;
    v5->_sensitiveInformationKey = v10;
  }

  return v5;
}

- (ELSPrivacyPolicyDescription)initWithPolicyKey:(id)a3 andSuiteNameKey:(id)a4 andSensitiveInformationKey:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ELSPrivacyPolicyDescription;
  v12 = [(ELSPrivacyPolicyDescription *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_policyKey, a3);
    objc_storeStrong(&v13->_suiteNameKey, a4);
    objc_storeStrong(&v13->_sensitiveInformationKey, a5);
  }

  return v13;
}

- (BOOL)isEqualToDescription:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ELSPrivacyPolicyDescription *)self policyKey];
    v6 = [v4 policyKey];
    if ([v5 isEqualToString:v6])
    {
      v7 = [(ELSPrivacyPolicyDescription *)self suiteNameKey];
      v8 = [v4 suiteNameKey];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(ELSPrivacyPolicyDescription *)self sensitiveInformationKey];
        v10 = [v4 sensitiveInformationKey];
        v11 = [v9 isEqualToString:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [ELSPrivacyPolicyDescription alloc];
  v6 = [(ELSPrivacyPolicyDescription *)self policyKey];
  v7 = [v6 copyWithZone:a3];
  v8 = [(ELSPrivacyPolicyDescription *)self suiteNameKey];
  v9 = [v8 copyWithZone:a3];
  v10 = [(ELSPrivacyPolicyDescription *)self sensitiveInformationKey];
  v11 = [v10 copyWithZone:a3];
  v12 = [(ELSPrivacyPolicyDescription *)v5 initWithPolicyKey:v7 andSuiteNameKey:v9 andSensitiveInformationKey:v11];

  return v12;
}

- (id)dictionaryRepresentation
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"policyKey";
  v3 = [(ELSPrivacyPolicyDescription *)self policyKey];
  v10[0] = v3;
  v9[1] = @"suiteNameKey";
  v4 = [(ELSPrivacyPolicyDescription *)self suiteNameKey];
  v10[1] = v4;
  v9[2] = @"sensitiveInfoKey";
  v5 = [(ELSPrivacyPolicyDescription *)self sensitiveInformationKey];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end