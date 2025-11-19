@interface HMDHomeLockNotificationContextResolutionResult
- (BOOL)isEqual:(id)a3;
- (HMDHomeLockNotificationContextResolutionResult)initWithCoder:(id)a3;
- (HMDHomeLockNotificationContextResolutionResult)initWithUserUUID:(id)a3 label:(id)a4 labelIdentifier:(id)a5;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDHomeLockNotificationContextResolutionResult

- (id)attributeDescriptions
{
  v17[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDHomeLockNotificationContextResolutionResult *)self userUUID];
  v5 = [v3 initWithName:@"UserUUID" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDHomeLockNotificationContextResolutionResult *)self label];
  v8 = [MEMORY[0x277D0F8D8] defaultFormatter];
  v9 = [v6 initWithName:@"Label" value:v7 options:2 formatter:v8];
  v17[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMDHomeLockNotificationContextResolutionResult *)self labelIdentifier];
  v12 = [MEMORY[0x277D0F8D8] defaultFormatter];
  v13 = [v10 initWithName:@"LabelIdentifier" value:v11 options:2 formatter:v12];
  v17[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeLockNotificationContextResolutionResult *)self userUUID];
  [v4 encodeObject:v5 forKey:@"HMDHomeLockNotificationContextResolutionResultUserUUIDCodingKey"];

  v6 = [(HMDHomeLockNotificationContextResolutionResult *)self label];
  [v4 encodeObject:v6 forKey:@"HMDHomeLockNotificationContextResolutionResultLabelCodingKey"];

  v7 = [(HMDHomeLockNotificationContextResolutionResult *)self labelIdentifier];
  [v4 encodeObject:v7 forKey:@"HMDHomeLockNotificationContextResolutionResultLabelIdentifierCodingKey"];
}

- (HMDHomeLockNotificationContextResolutionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDHomeLockNotificationContextResolutionResultUserUUIDCodingKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDHomeLockNotificationContextResolutionResultLabelCodingKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDHomeLockNotificationContextResolutionResultLabelIdentifierCodingKey"];

  if (v5 | v6)
  {
    self = [(HMDHomeLockNotificationContextResolutionResult *)self initWithUserUUID:v5 label:v6 labelIdentifier:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(HMDHomeLockNotificationContextResolutionResult *)self userUUID];
  v4 = [v3 hash];

  v5 = [(HMDHomeLockNotificationContextResolutionResult *)self label];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMDHomeLockNotificationContextResolutionResult *)self labelIdentifier];
  v8 = [v7 hash];

  return v6 ^ v8;
}

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
  v7 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = [v6 userUUID];
  v9 = [(HMDHomeLockNotificationContextResolutionResult *)self userUUID];
  v10 = HMFEqualObjects();

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = [v7 label];
  v12 = [(HMDHomeLockNotificationContextResolutionResult *)self label];
  v13 = HMFEqualObjects();

  if (v13)
  {
    v14 = [v7 labelIdentifier];
    v15 = [(HMDHomeLockNotificationContextResolutionResult *)self labelIdentifier];
    v16 = HMFEqualObjects();
  }

  else
  {
LABEL_8:
    v16 = 0;
  }

  return v16;
}

- (HMDHomeLockNotificationContextResolutionResult)initWithUserUUID:(id)a3 label:(id)a4 labelIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDHomeLockNotificationContextResolutionResult;
  v12 = [(HMDHomeLockNotificationContextResolutionResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userUUID, a3);
    objc_storeStrong(&v13->_label, a4);
    objc_storeStrong(&v13->_labelIdentifier, a5);
  }

  return v13;
}

@end