@interface HMITorsoRecognition
- (HMITorsoRecognition)initWithCoder:(id)coder;
- (HMITorsoRecognition)initWithTorsoprint:(id)torsoprint classification:(id)classification predictedLinkedEntityUUIDs:(id)ds sessionEntityAssignment:(int64_t)assignment sessionEntityUUID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMITorsoRecognition

- (HMITorsoRecognition)initWithTorsoprint:(id)torsoprint classification:(id)classification predictedLinkedEntityUUIDs:(id)ds sessionEntityAssignment:(int64_t)assignment sessionEntityUUID:(id)d
{
  torsoprintCopy = torsoprint;
  classificationCopy = classification;
  dsCopy = ds;
  dCopy = d;
  v20.receiver = self;
  v20.super_class = HMITorsoRecognition;
  v17 = [(HMITorsoRecognition *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_torsoprint, torsoprint);
    objc_storeStrong(&v18->_classification, classification);
    objc_storeStrong(&v18->_predictedLinkedEntityUUIDs, ds);
    v18->_sessionEntityAssignment = assignment;
    objc_storeStrong(&v18->_sessionEntityUUID, d);
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  classification = [(HMITorsoRecognition *)self classification];
  [coderCopy encodeObject:classification forKey:@"HMITR.c"];

  torsoprint = [(HMITorsoRecognition *)self torsoprint];
  [coderCopy encodeObject:torsoprint forKey:@"HMITR.tp"];

  [coderCopy encodeInteger:-[HMITorsoRecognition sessionEntityAssignment](self forKey:{"sessionEntityAssignment"), @"HMITR.sea"}];
  sessionEntityUUID = [(HMITorsoRecognition *)self sessionEntityUUID];
  [coderCopy encodeObject:sessionEntityUUID forKey:@"HMITR.seu"];
}

- (HMITorsoRecognition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMITR.tp"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMITR.c"];
  v7 = [coderCopy decodeIntegerForKey:@"HMITR.sea"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMITR.seu"];

  v9 = [MEMORY[0x277CBEB98] set];
  v10 = [(HMITorsoRecognition *)self initWithTorsoprint:v5 classification:v6 predictedLinkedEntityUUIDs:v9 sessionEntityAssignment:v7 sessionEntityUUID:v8];

  return v10;
}

@end