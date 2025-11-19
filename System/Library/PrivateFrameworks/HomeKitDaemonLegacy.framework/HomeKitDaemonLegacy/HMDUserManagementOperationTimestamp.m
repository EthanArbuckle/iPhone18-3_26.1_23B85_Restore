@interface HMDUserManagementOperationTimestamp
- (BOOL)isEqual:(id)a3;
- (HMDUserManagementOperationTimestamp)initWithCoder:(id)a3;
- (HMDUserManagementOperationTimestamp)initWithDevice:(id)a3 state:(unint64_t)a4;
- (id)attributeDescriptions;
- (id)shortDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDUserManagementOperationTimestamp

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserManagementOperationTimestamp *)self device];
  [v4 encodeObject:v5 forKey:@"HM.device"];

  v6 = [(HMDUserManagementOperationTimestamp *)self timestamp];
  [v4 encodeObject:v6 forKey:@"HM.date"];

  v7 = [(HMDUserManagementOperationTimestamp *)self state];
  [v4 encodeObject:v7 forKey:@"HM.state"];
}

- (HMDUserManagementOperationTimestamp)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.device"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.state"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unsignedIntegerValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(HMDUserManagementOperationTimestamp *)self initWithDevice:v5 state:v8];
  if (v9)
  {
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.date"];
    if (v10)
    {
      objc_storeStrong(&v9->_timestamp, v10);
    }
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v16 = 1;
  }

  else
  {
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
      goto LABEL_9;
    }

    v8 = [(HMDUserManagementOperationTimestamp *)v6 timestamp];
    v9 = [(HMDUserManagementOperationTimestamp *)self timestamp];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_9;
    }

    v11 = [(HMDUserManagementOperationTimestamp *)v7 state];
    v12 = [(HMDUserManagementOperationTimestamp *)self state];
    v13 = [v11 isEqual:v12];

    if (v13)
    {
      v14 = [(HMDUserManagementOperationTimestamp *)v7 device];
      v15 = [(HMDUserManagementOperationTimestamp *)self device];
      v16 = [v14 isEqual:v15];
    }

    else
    {
LABEL_9:
      v16 = 0;
    }
  }

  return v16;
}

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDUserManagementOperationTimestamp *)self device];
  v5 = [v3 initWithName:@"Device" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDUserManagementOperationTimestamp *)self timestamp];
  v8 = [v6 initWithName:@"Timestamp" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDUserManagementOperationTimestamp *)self state];
  v11 = [v9 initWithName:@"State" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDUserManagementOperationTimestamp *)self timestamp];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (HMDUserManagementOperationTimestamp)initWithDevice:(id)a3 state:(unint64_t)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = HMDUserManagementOperationTimestamp;
  v8 = [(HMDUserManagementOperationTimestamp *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, a3);
    v10 = [MEMORY[0x277CBEAA8] date];
    timestamp = v9->_timestamp;
    v9->_timestamp = v10;

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    state = v9->_state;
    v9->_state = v12;
  }

  return v9;
}

@end