@interface HMDHomeLockNotificationContextResolutionResult
- (BOOL)isEqual:(id)equal;
- (HMDHomeLockNotificationContextResolutionResult)initWithCoder:(id)coder;
- (HMDHomeLockNotificationContextResolutionResult)initWithUserUUID:(id)d label:(id)label labelIdentifier:(id)identifier;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDHomeLockNotificationContextResolutionResult

- (id)attributeDescriptions
{
  v17[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  userUUID = [(HMDHomeLockNotificationContextResolutionResult *)self userUUID];
  v5 = [v3 initWithName:@"UserUUID" value:userUUID];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  label = [(HMDHomeLockNotificationContextResolutionResult *)self label];
  defaultFormatter = [MEMORY[0x277D0F8D8] defaultFormatter];
  v9 = [v6 initWithName:@"Label" value:label options:2 formatter:defaultFormatter];
  v17[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  labelIdentifier = [(HMDHomeLockNotificationContextResolutionResult *)self labelIdentifier];
  defaultFormatter2 = [MEMORY[0x277D0F8D8] defaultFormatter];
  v13 = [v10 initWithName:@"LabelIdentifier" value:labelIdentifier options:2 formatter:defaultFormatter2];
  v17[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  userUUID = [(HMDHomeLockNotificationContextResolutionResult *)self userUUID];
  [coderCopy encodeObject:userUUID forKey:@"HMDHomeLockNotificationContextResolutionResultUserUUIDCodingKey"];

  label = [(HMDHomeLockNotificationContextResolutionResult *)self label];
  [coderCopy encodeObject:label forKey:@"HMDHomeLockNotificationContextResolutionResultLabelCodingKey"];

  labelIdentifier = [(HMDHomeLockNotificationContextResolutionResult *)self labelIdentifier];
  [coderCopy encodeObject:labelIdentifier forKey:@"HMDHomeLockNotificationContextResolutionResultLabelIdentifierCodingKey"];
}

- (HMDHomeLockNotificationContextResolutionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDHomeLockNotificationContextResolutionResultUserUUIDCodingKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDHomeLockNotificationContextResolutionResultLabelCodingKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDHomeLockNotificationContextResolutionResultLabelIdentifierCodingKey"];

  if (v5 | v6)
  {
    self = [(HMDHomeLockNotificationContextResolutionResult *)self initWithUserUUID:v5 label:v6 labelIdentifier:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  userUUID = [(HMDHomeLockNotificationContextResolutionResult *)self userUUID];
  v4 = [userUUID hash];

  label = [(HMDHomeLockNotificationContextResolutionResult *)self label];
  v6 = [label hash] ^ v4;

  labelIdentifier = [(HMDHomeLockNotificationContextResolutionResult *)self labelIdentifier];
  v8 = [labelIdentifier hash];

  return v6 ^ v8;
}

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
  v7 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  userUUID = [v6 userUUID];
  userUUID2 = [(HMDHomeLockNotificationContextResolutionResult *)self userUUID];
  v10 = HMFEqualObjects();

  if (!v10)
  {
    goto LABEL_8;
  }

  label = [v7 label];
  label2 = [(HMDHomeLockNotificationContextResolutionResult *)self label];
  v13 = HMFEqualObjects();

  if (v13)
  {
    labelIdentifier = [v7 labelIdentifier];
    labelIdentifier2 = [(HMDHomeLockNotificationContextResolutionResult *)self labelIdentifier];
    v16 = HMFEqualObjects();
  }

  else
  {
LABEL_8:
    v16 = 0;
  }

  return v16;
}

- (HMDHomeLockNotificationContextResolutionResult)initWithUserUUID:(id)d label:(id)label labelIdentifier:(id)identifier
{
  dCopy = d;
  labelCopy = label;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = HMDHomeLockNotificationContextResolutionResult;
  v12 = [(HMDHomeLockNotificationContextResolutionResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userUUID, d);
    objc_storeStrong(&v13->_label, label);
    objc_storeStrong(&v13->_labelIdentifier, identifier);
  }

  return v13;
}

@end