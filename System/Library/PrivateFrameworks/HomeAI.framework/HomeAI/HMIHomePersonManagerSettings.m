@interface HMIHomePersonManagerSettings
- (BOOL)isEqual:(id)a3;
- (HMIHomePersonManagerSettings)initWithCoder:(id)a3;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMIHomePersonManagerSettings

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(HMIHomePersonManagerSettings *)self isFaceClassificationEnabled];
    v8 = v7 ^ [v6 isFaceClassificationEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [[HMIMutableHomePersonManagerSettings allocWithZone:?]];
  [(HMIHomePersonManagerSettings *)v4 setFaceClassificationEnabled:[(HMIHomePersonManagerSettings *)self isFaceClassificationEnabled]];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[HMIHomePersonManagerSettings isFaceClassificationEnabled](self forKey:{"isFaceClassificationEnabled"), @"HMPMS.fce"}];
}

- (HMIHomePersonManagerSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [v4 decodeBoolForKey:@"HMPMS.fce"];

  [(HMIHomePersonManagerSettings *)v5 setFaceClassificationEnabled:v6];
  return v5;
}

- (id)attributeDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIHomePersonManagerSettings *)self isFaceClassificationEnabled];
  v4 = HMFBooleanToString();
  v5 = [v3 initWithName:@"Face Classification Enabled" value:v4];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

@end