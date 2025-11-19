@interface HMITorsoRecognition
- (HMITorsoRecognition)initWithCoder:(id)a3;
- (HMITorsoRecognition)initWithTorsoprint:(id)a3 classification:(id)a4 predictedLinkedEntityUUIDs:(id)a5 sessionEntityAssignment:(int64_t)a6 sessionEntityUUID:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMITorsoRecognition

- (HMITorsoRecognition)initWithTorsoprint:(id)a3 classification:(id)a4 predictedLinkedEntityUUIDs:(id)a5 sessionEntityAssignment:(int64_t)a6 sessionEntityUUID:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = HMITorsoRecognition;
  v17 = [(HMITorsoRecognition *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_torsoprint, a3);
    objc_storeStrong(&v18->_classification, a4);
    objc_storeStrong(&v18->_predictedLinkedEntityUUIDs, a5);
    v18->_sessionEntityAssignment = a6;
    objc_storeStrong(&v18->_sessionEntityUUID, a7);
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMITorsoRecognition *)self classification];
  [v4 encodeObject:v5 forKey:@"HMITR.c"];

  v6 = [(HMITorsoRecognition *)self torsoprint];
  [v4 encodeObject:v6 forKey:@"HMITR.tp"];

  [v4 encodeInteger:-[HMITorsoRecognition sessionEntityAssignment](self forKey:{"sessionEntityAssignment"), @"HMITR.sea"}];
  v7 = [(HMITorsoRecognition *)self sessionEntityUUID];
  [v4 encodeObject:v7 forKey:@"HMITR.seu"];
}

- (HMITorsoRecognition)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMITR.tp"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMITR.c"];
  v7 = [v4 decodeIntegerForKey:@"HMITR.sea"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMITR.seu"];

  v9 = [MEMORY[0x277CBEB98] set];
  v10 = [(HMITorsoRecognition *)self initWithTorsoprint:v5 classification:v6 predictedLinkedEntityUUIDs:v9 sessionEntityAssignment:v7 sessionEntityUUID:v8];

  return v10;
}

@end