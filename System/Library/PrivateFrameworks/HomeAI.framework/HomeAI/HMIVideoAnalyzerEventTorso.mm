@interface HMIVideoAnalyzerEventTorso
- (BOOL)isEqual:(id)equal;
- (HMIVideoAnalyzerEventTorso)initWithCoder:(id)coder;
- (HMIVideoAnalyzerEventTorso)initWithConfidence:(id)confidence boundingBox:(CGRect)box roll:(id)roll torsoRecognition:(id)recognition;
- (NSUUID)sessionEntityUUID;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIVideoAnalyzerEventTorso

- (HMIVideoAnalyzerEventTorso)initWithConfidence:(id)confidence boundingBox:(CGRect)box roll:(id)roll torsoRecognition:(id)recognition
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  rollCopy = roll;
  recognitionCopy = recognition;
  v19.receiver = self;
  v19.super_class = HMIVideoAnalyzerEventTorso;
  height = [(HMIVideoAnalyzerEvent *)&v19 initWithConfidence:confidence boundingBox:0 userInfo:x, y, width, height];
  v17 = height;
  if (height)
  {
    objc_storeStrong(&height->_roll, roll);
    objc_storeStrong(&v17->_torsoRecognition, recognition);
  }

  return v17;
}

- (NSUUID)sessionEntityUUID
{
  torsoRecognition = [(HMIVideoAnalyzerEventTorso *)self torsoRecognition];
  if (torsoRecognition)
  {
    torsoRecognition2 = [(HMIVideoAnalyzerEventTorso *)self torsoRecognition];
    sessionEntityUUID = [torsoRecognition2 sessionEntityUUID];
  }

  else
  {
    sessionEntityUUID = 0;
  }

  return sessionEntityUUID;
}

- (id)attributeDescriptions
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = HMIVideoAnalyzerEventTorso;
  attributeDescriptions = [(HMIVideoAnalyzerEvent *)&v13 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  roll = [(HMIVideoAnalyzerEventTorso *)self roll];
  v6 = [v4 initWithName:@"Torso Roll" value:roll];
  v14[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  torsoRecognition = [(HMIVideoAnalyzerEventTorso *)self torsoRecognition];
  v9 = [v7 initWithName:@"Torso Recognition" value:torsoRecognition];
  v14[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v11 = [attributeDescriptions arrayByAddingObjectsFromArray:v10];

  return v11;
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
    v9.receiver = self;
    v9.super_class = HMIVideoAnalyzerEventTorso;
    v7 = [(HMIVideoAnalyzerEvent *)&v9 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = HMIVideoAnalyzerEventTorso;
  return [(HMIVideoAnalyzerEvent *)&v3 hash];
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = HMIVideoAnalyzerEventTorso;
  coderCopy = coder;
  [(HMIVideoAnalyzerEvent *)&v7 encodeWithCoder:coderCopy];
  v5 = [(HMIVideoAnalyzerEventTorso *)self roll:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"HMIVAET.ro"];

  torsoRecognition = [(HMIVideoAnalyzerEventTorso *)self torsoRecognition];
  [coderCopy encodeObject:torsoRecognition forKey:@"HMIVAET.tr"];
}

- (HMIVideoAnalyzerEventTorso)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [[HMIVideoAnalyzerEvent alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIVAET.ro"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIVAET.tr"];
    confidence = [(HMIVideoAnalyzerEvent *)v5 confidence];
    [(HMIVideoAnalyzerEvent *)v5 boundingBox];
    self = [(HMIVideoAnalyzerEventTorso *)self initWithConfidence:confidence boundingBox:v6 roll:v7 torsoRecognition:?];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end