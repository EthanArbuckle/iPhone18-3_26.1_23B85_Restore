@interface ELSPrivacyPolicyDescription
- (BOOL)isEqualToDescription:(id)description;
- (ELSPrivacyPolicyDescription)initWithCoder:(id)coder;
- (ELSPrivacyPolicyDescription)initWithPolicyKey:(id)key andSuiteNameKey:(id)nameKey andSensitiveInformationKey:(id)informationKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
@end

@implementation ELSPrivacyPolicyDescription

- (ELSPrivacyPolicyDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ELSPrivacyPolicyDescription;
  v5 = [(ELSPrivacyPolicyDescription *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"policyKey"];
    policyKey = v5->_policyKey;
    v5->_policyKey = v6;

    v8 = [coderCopy decodeObjectForKey:@"suiteNameKey"];
    suiteNameKey = v5->_suiteNameKey;
    v5->_suiteNameKey = v8;

    v10 = [coderCopy decodeObjectForKey:@"sensitiveInfoKey"];
    sensitiveInformationKey = v5->_sensitiveInformationKey;
    v5->_sensitiveInformationKey = v10;
  }

  return v5;
}

- (ELSPrivacyPolicyDescription)initWithPolicyKey:(id)key andSuiteNameKey:(id)nameKey andSensitiveInformationKey:(id)informationKey
{
  keyCopy = key;
  nameKeyCopy = nameKey;
  informationKeyCopy = informationKey;
  v15.receiver = self;
  v15.super_class = ELSPrivacyPolicyDescription;
  v12 = [(ELSPrivacyPolicyDescription *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_policyKey, key);
    objc_storeStrong(&v13->_suiteNameKey, nameKey);
    objc_storeStrong(&v13->_sensitiveInformationKey, informationKey);
  }

  return v13;
}

- (BOOL)isEqualToDescription:(id)description
{
  descriptionCopy = description;
  if (descriptionCopy)
  {
    policyKey = [(ELSPrivacyPolicyDescription *)self policyKey];
    policyKey2 = [descriptionCopy policyKey];
    if ([policyKey isEqualToString:policyKey2])
    {
      suiteNameKey = [(ELSPrivacyPolicyDescription *)self suiteNameKey];
      suiteNameKey2 = [descriptionCopy suiteNameKey];
      if ([suiteNameKey isEqualToString:suiteNameKey2])
      {
        sensitiveInformationKey = [(ELSPrivacyPolicyDescription *)self sensitiveInformationKey];
        sensitiveInformationKey2 = [descriptionCopy sensitiveInformationKey];
        v11 = [sensitiveInformationKey isEqualToString:sensitiveInformationKey2];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [ELSPrivacyPolicyDescription alloc];
  policyKey = [(ELSPrivacyPolicyDescription *)self policyKey];
  v7 = [policyKey copyWithZone:zone];
  suiteNameKey = [(ELSPrivacyPolicyDescription *)self suiteNameKey];
  v9 = [suiteNameKey copyWithZone:zone];
  sensitiveInformationKey = [(ELSPrivacyPolicyDescription *)self sensitiveInformationKey];
  v11 = [sensitiveInformationKey copyWithZone:zone];
  v12 = [(ELSPrivacyPolicyDescription *)v5 initWithPolicyKey:v7 andSuiteNameKey:v9 andSensitiveInformationKey:v11];

  return v12;
}

- (id)dictionaryRepresentation
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"policyKey";
  policyKey = [(ELSPrivacyPolicyDescription *)self policyKey];
  v10[0] = policyKey;
  v9[1] = @"suiteNameKey";
  suiteNameKey = [(ELSPrivacyPolicyDescription *)self suiteNameKey];
  v10[1] = suiteNameKey;
  v9[2] = @"sensitiveInfoKey";
  sensitiveInformationKey = [(ELSPrivacyPolicyDescription *)self sensitiveInformationKey];
  v10[2] = sensitiveInformationKey;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end