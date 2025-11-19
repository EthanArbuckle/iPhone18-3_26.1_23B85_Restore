@interface HMBProcessingOptions
+ (id)optionsWithLabel:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMBProcessingOptions)initWithCoder:(id)a3;
- (HMBProcessingOptions)initWithLabel:(id)a3;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMBProcessingOptions

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(HMBProcessingOptions *)self label];
  [v5 encodeObject:v4 forKey:@"HMBPBO.label"];

  [v5 encodeBool:-[HMBProcessingOptions shouldEnqueueMirrorOutput](self forKey:{"shouldEnqueueMirrorOutput"), @"HMBPBO.enqueue"}];
  [v5 encodeInteger:-[HMBProcessingOptions qualityOfService](self forKey:{"qualityOfService"), @"HMBPBO.qos"}];
  [v5 encodeBool:-[HMBProcessingOptions shouldRollBackIfMirrorOutputFails](self forKey:{"shouldRollBackIfMirrorOutputFails"), @"HMBPBO.r"}];
  [v5 encodeBool:-[HMBProcessingOptions disallowsCellularAccessForMirrorOutput](self forKey:{"disallowsCellularAccessForMirrorOutput"), @"HMBPBO.dca"}];
  [v5 encodeBool:-[HMBProcessingOptions requiresModelCreation](self forKey:{"requiresModelCreation"), @"HMBPBO.rmc"}];
  [v5 encodeBool:-[HMBProcessingOptions disallowsModelCreation](self forKey:{"disallowsModelCreation"), @"HMBPBO.dmc"}];
}

- (HMBProcessingOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMBPBO.label"];
  v6 = [(HMBProcessingOptions *)self initWithLabel:v5];
  -[HMBProcessingOptions setShouldEnqueueMirrorOutput:](v6, "setShouldEnqueueMirrorOutput:", [v4 decodeBoolForKey:@"HMBPBO.enqueue"]);
  -[HMBProcessingOptions setQualityOfService:](v6, "setQualityOfService:", [v4 decodeIntegerForKey:@"HMBPBO.qos"]);
  -[HMBProcessingOptions setShouldRollBackIfMirrorOutputFails:](v6, "setShouldRollBackIfMirrorOutputFails:", [v4 decodeBoolForKey:@"HMBPBO.r"]);
  -[HMBProcessingOptions setDisallowsCellularAccessForMirrorOutput:](v6, "setDisallowsCellularAccessForMirrorOutput:", [v4 decodeBoolForKey:@"HMBPBO.dca"]);
  -[HMBProcessingOptions setRequiresModelCreation:](v6, "setRequiresModelCreation:", [v4 decodeBoolForKey:@"HMBPBO.rmc"]);
  v7 = [v4 decodeBoolForKey:@"HMBPBO.dmc"];

  [(HMBProcessingOptions *)v6 setDisallowsModelCreation:v7];
  return v6;
}

- (unint64_t)hash
{
  v2 = [(HMBProcessingOptions *)self label];
  v3 = [v2 hash];

  return v3;
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
  if (v6)
  {
    v7 = [(HMBProcessingOptions *)self label];
    v8 = [v6 label];
    if ([v7 isEqualToString:v8] && (v9 = -[HMBProcessingOptions shouldEnqueueMirrorOutput](self, "shouldEnqueueMirrorOutput"), v9 == objc_msgSend(v6, "shouldEnqueueMirrorOutput")) && (v10 = -[HMBProcessingOptions qualityOfService](self, "qualityOfService"), v10 == objc_msgSend(v6, "qualityOfService")) && (v11 = -[HMBProcessingOptions shouldRollBackIfMirrorOutputFails](self, "shouldRollBackIfMirrorOutputFails"), v11 == objc_msgSend(v6, "shouldRollBackIfMirrorOutputFails")) && (v12 = -[HMBProcessingOptions disallowsCellularAccessForMirrorOutput](self, "disallowsCellularAccessForMirrorOutput"), v12 == objc_msgSend(v6, "disallowsCellularAccessForMirrorOutput")) && (v13 = -[HMBProcessingOptions requiresModelCreation](self, "requiresModelCreation"), v13 == objc_msgSend(v6, "requiresModelCreation")))
    {
      v16 = [(HMBProcessingOptions *)self disallowsModelCreation];
      v14 = v16 ^ [v6 disallowsModelCreation] ^ 1;
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (id)attributeDescriptions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMBProcessingOptions *)self label];
  v6 = [v4 initWithName:@"Label" value:v5];
  [v3 addObject:v6];

  if (![(HMBProcessingOptions *)self shouldEnqueueMirrorOutput])
  {
    v7 = objc_alloc(MEMORY[0x277D0F778]);
    [(HMBProcessingOptions *)self shouldEnqueueMirrorOutput];
    v8 = HMFBooleanToString();
    v9 = [v7 initWithName:@"Enqueue Mirror Output" value:v8];
    [v3 addObject:v9];
  }

  if ([(HMBProcessingOptions *)self shouldRollBackIfMirrorOutputFails])
  {
    v10 = objc_alloc(MEMORY[0x277D0F778]);
    [(HMBProcessingOptions *)self shouldRollBackIfMirrorOutputFails];
    v11 = HMFBooleanToString();
    v12 = [v10 initWithName:@"Roll Back" value:v11];
    [v3 addObject:v12];
  }

  if ([(HMBProcessingOptions *)self disallowsCellularAccessForMirrorOutput])
  {
    v13 = objc_alloc(MEMORY[0x277D0F778]);
    [(HMBProcessingOptions *)self disallowsCellularAccessForMirrorOutput];
    v14 = HMFBooleanToString();
    v15 = [v13 initWithName:@"Disallow Cellular" value:v14];
    [v3 addObject:v15];
  }

  if ([(HMBProcessingOptions *)self requiresModelCreation])
  {
    v16 = objc_alloc(MEMORY[0x277D0F778]);
    [(HMBProcessingOptions *)self requiresModelCreation];
    v17 = HMFBooleanToString();
    v18 = [v16 initWithName:@"Require Model Creation" value:v17];
    [v3 addObject:v18];
  }

  if ([(HMBProcessingOptions *)self disallowsModelCreation])
  {
    v19 = objc_alloc(MEMORY[0x277D0F778]);
    [(HMBProcessingOptions *)self disallowsModelCreation];
    v20 = HMFBooleanToString();
    v21 = [v19 initWithName:@"Disallow Model Creation" value:v20];
    [v3 addObject:v21];
  }

  v22 = [v3 copy];

  return v22;
}

- (HMBProcessingOptions)initWithLabel:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HMBProcessingOptions;
  v5 = [(HMBProcessingOptions *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    label = v5->_label;
    v5->_label = v6;

    v5->_shouldEnqueueMirrorOutput = 1;
    v5->_qualityOfService = 17;
    v8 = v5;
  }

  return v5;
}

+ (id)optionsWithLabel:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithLabel:v4];

  return v5;
}

@end