@interface HMIHomePersonManagerSettings
- (BOOL)isEqual:(id)equal;
- (HMIHomePersonManagerSettings)initWithCoder:(id)coder;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIHomePersonManagerSettings

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    isFaceClassificationEnabled = [(HMIHomePersonManagerSettings *)self isFaceClassificationEnabled];
    v8 = isFaceClassificationEnabled ^ [v6 isFaceClassificationEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [[HMIMutableHomePersonManagerSettings allocWithZone:?]];
  [(HMIHomePersonManagerSettings *)v4 setFaceClassificationEnabled:[(HMIHomePersonManagerSettings *)self isFaceClassificationEnabled]];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[HMIHomePersonManagerSettings isFaceClassificationEnabled](self forKey:{"isFaceClassificationEnabled"), @"HMPMS.fce"}];
}

- (HMIHomePersonManagerSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [coderCopy decodeBoolForKey:@"HMPMS.fce"];

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