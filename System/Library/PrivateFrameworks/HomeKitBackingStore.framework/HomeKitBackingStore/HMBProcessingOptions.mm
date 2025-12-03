@interface HMBProcessingOptions
+ (id)optionsWithLabel:(id)label;
- (BOOL)isEqual:(id)equal;
- (HMBProcessingOptions)initWithCoder:(id)coder;
- (HMBProcessingOptions)initWithLabel:(id)label;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMBProcessingOptions

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  label = [(HMBProcessingOptions *)self label];
  [coderCopy encodeObject:label forKey:@"HMBPBO.label"];

  [coderCopy encodeBool:-[HMBProcessingOptions shouldEnqueueMirrorOutput](self forKey:{"shouldEnqueueMirrorOutput"), @"HMBPBO.enqueue"}];
  [coderCopy encodeInteger:-[HMBProcessingOptions qualityOfService](self forKey:{"qualityOfService"), @"HMBPBO.qos"}];
  [coderCopy encodeBool:-[HMBProcessingOptions shouldRollBackIfMirrorOutputFails](self forKey:{"shouldRollBackIfMirrorOutputFails"), @"HMBPBO.r"}];
  [coderCopy encodeBool:-[HMBProcessingOptions disallowsCellularAccessForMirrorOutput](self forKey:{"disallowsCellularAccessForMirrorOutput"), @"HMBPBO.dca"}];
  [coderCopy encodeBool:-[HMBProcessingOptions requiresModelCreation](self forKey:{"requiresModelCreation"), @"HMBPBO.rmc"}];
  [coderCopy encodeBool:-[HMBProcessingOptions disallowsModelCreation](self forKey:{"disallowsModelCreation"), @"HMBPBO.dmc"}];
}

- (HMBProcessingOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMBPBO.label"];
  v6 = [(HMBProcessingOptions *)self initWithLabel:v5];
  -[HMBProcessingOptions setShouldEnqueueMirrorOutput:](v6, "setShouldEnqueueMirrorOutput:", [coderCopy decodeBoolForKey:@"HMBPBO.enqueue"]);
  -[HMBProcessingOptions setQualityOfService:](v6, "setQualityOfService:", [coderCopy decodeIntegerForKey:@"HMBPBO.qos"]);
  -[HMBProcessingOptions setShouldRollBackIfMirrorOutputFails:](v6, "setShouldRollBackIfMirrorOutputFails:", [coderCopy decodeBoolForKey:@"HMBPBO.r"]);
  -[HMBProcessingOptions setDisallowsCellularAccessForMirrorOutput:](v6, "setDisallowsCellularAccessForMirrorOutput:", [coderCopy decodeBoolForKey:@"HMBPBO.dca"]);
  -[HMBProcessingOptions setRequiresModelCreation:](v6, "setRequiresModelCreation:", [coderCopy decodeBoolForKey:@"HMBPBO.rmc"]);
  v7 = [coderCopy decodeBoolForKey:@"HMBPBO.dmc"];

  [(HMBProcessingOptions *)v6 setDisallowsModelCreation:v7];
  return v6;
}

- (unint64_t)hash
{
  label = [(HMBProcessingOptions *)self label];
  v3 = [label hash];

  return v3;
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
  if (v6)
  {
    label = [(HMBProcessingOptions *)self label];
    label2 = [v6 label];
    if ([label isEqualToString:label2] && (v9 = -[HMBProcessingOptions shouldEnqueueMirrorOutput](self, "shouldEnqueueMirrorOutput"), v9 == objc_msgSend(v6, "shouldEnqueueMirrorOutput")) && (v10 = -[HMBProcessingOptions qualityOfService](self, "qualityOfService"), v10 == objc_msgSend(v6, "qualityOfService")) && (v11 = -[HMBProcessingOptions shouldRollBackIfMirrorOutputFails](self, "shouldRollBackIfMirrorOutputFails"), v11 == objc_msgSend(v6, "shouldRollBackIfMirrorOutputFails")) && (v12 = -[HMBProcessingOptions disallowsCellularAccessForMirrorOutput](self, "disallowsCellularAccessForMirrorOutput"), v12 == objc_msgSend(v6, "disallowsCellularAccessForMirrorOutput")) && (v13 = -[HMBProcessingOptions requiresModelCreation](self, "requiresModelCreation"), v13 == objc_msgSend(v6, "requiresModelCreation")))
    {
      disallowsModelCreation = [(HMBProcessingOptions *)self disallowsModelCreation];
      v14 = disallowsModelCreation ^ [v6 disallowsModelCreation] ^ 1;
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
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  label = [(HMBProcessingOptions *)self label];
  v6 = [v4 initWithName:@"Label" value:label];
  [array addObject:v6];

  if (![(HMBProcessingOptions *)self shouldEnqueueMirrorOutput])
  {
    v7 = objc_alloc(MEMORY[0x277D0F778]);
    [(HMBProcessingOptions *)self shouldEnqueueMirrorOutput];
    v8 = HMFBooleanToString();
    v9 = [v7 initWithName:@"Enqueue Mirror Output" value:v8];
    [array addObject:v9];
  }

  if ([(HMBProcessingOptions *)self shouldRollBackIfMirrorOutputFails])
  {
    v10 = objc_alloc(MEMORY[0x277D0F778]);
    [(HMBProcessingOptions *)self shouldRollBackIfMirrorOutputFails];
    v11 = HMFBooleanToString();
    v12 = [v10 initWithName:@"Roll Back" value:v11];
    [array addObject:v12];
  }

  if ([(HMBProcessingOptions *)self disallowsCellularAccessForMirrorOutput])
  {
    v13 = objc_alloc(MEMORY[0x277D0F778]);
    [(HMBProcessingOptions *)self disallowsCellularAccessForMirrorOutput];
    v14 = HMFBooleanToString();
    v15 = [v13 initWithName:@"Disallow Cellular" value:v14];
    [array addObject:v15];
  }

  if ([(HMBProcessingOptions *)self requiresModelCreation])
  {
    v16 = objc_alloc(MEMORY[0x277D0F778]);
    [(HMBProcessingOptions *)self requiresModelCreation];
    v17 = HMFBooleanToString();
    v18 = [v16 initWithName:@"Require Model Creation" value:v17];
    [array addObject:v18];
  }

  if ([(HMBProcessingOptions *)self disallowsModelCreation])
  {
    v19 = objc_alloc(MEMORY[0x277D0F778]);
    [(HMBProcessingOptions *)self disallowsModelCreation];
    v20 = HMFBooleanToString();
    v21 = [v19 initWithName:@"Disallow Model Creation" value:v20];
    [array addObject:v21];
  }

  v22 = [array copy];

  return v22;
}

- (HMBProcessingOptions)initWithLabel:(id)label
{
  labelCopy = label;
  v10.receiver = self;
  v10.super_class = HMBProcessingOptions;
  v5 = [(HMBProcessingOptions *)&v10 init];
  if (v5)
  {
    v6 = [labelCopy copy];
    label = v5->_label;
    v5->_label = v6;

    v5->_shouldEnqueueMirrorOutput = 1;
    v5->_qualityOfService = 17;
    v8 = v5;
  }

  return v5;
}

+ (id)optionsWithLabel:(id)label
{
  labelCopy = label;
  v5 = [[self alloc] initWithLabel:labelCopy];

  return v5;
}

@end