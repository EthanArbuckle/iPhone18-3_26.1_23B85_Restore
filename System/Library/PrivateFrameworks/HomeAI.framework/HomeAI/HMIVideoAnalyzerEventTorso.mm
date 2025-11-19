@interface HMIVideoAnalyzerEventTorso
- (BOOL)isEqual:(id)a3;
- (HMIVideoAnalyzerEventTorso)initWithCoder:(id)a3;
- (HMIVideoAnalyzerEventTorso)initWithConfidence:(id)a3 boundingBox:(CGRect)a4 roll:(id)a5 torsoRecognition:(id)a6;
- (NSUUID)sessionEntityUUID;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMIVideoAnalyzerEventTorso

- (HMIVideoAnalyzerEventTorso)initWithConfidence:(id)a3 boundingBox:(CGRect)a4 roll:(id)a5 torsoRecognition:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = HMIVideoAnalyzerEventTorso;
  v16 = [(HMIVideoAnalyzerEvent *)&v19 initWithConfidence:a3 boundingBox:0 userInfo:x, y, width, height];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_roll, a5);
    objc_storeStrong(&v17->_torsoRecognition, a6);
  }

  return v17;
}

- (NSUUID)sessionEntityUUID
{
  v3 = [(HMIVideoAnalyzerEventTorso *)self torsoRecognition];
  if (v3)
  {
    v4 = [(HMIVideoAnalyzerEventTorso *)self torsoRecognition];
    v5 = [v4 sessionEntityUUID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)attributeDescriptions
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = HMIVideoAnalyzerEventTorso;
  v3 = [(HMIVideoAnalyzerEvent *)&v13 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMIVideoAnalyzerEventTorso *)self roll];
  v6 = [v4 initWithName:@"Torso Roll" value:v5];
  v14[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMIVideoAnalyzerEventTorso *)self torsoRecognition];
  v9 = [v7 initWithName:@"Torso Recognition" value:v8];
  v14[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v11 = [v3 arrayByAddingObjectsFromArray:v10];

  return v11;
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

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = HMIVideoAnalyzerEventTorso;
  v4 = a3;
  [(HMIVideoAnalyzerEvent *)&v7 encodeWithCoder:v4];
  v5 = [(HMIVideoAnalyzerEventTorso *)self roll:v7.receiver];
  [v4 encodeObject:v5 forKey:@"HMIVAET.ro"];

  v6 = [(HMIVideoAnalyzerEventTorso *)self torsoRecognition];
  [v4 encodeObject:v6 forKey:@"HMIVAET.tr"];
}

- (HMIVideoAnalyzerEventTorso)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [[HMIVideoAnalyzerEvent alloc] initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIVAET.ro"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIVAET.tr"];
    v8 = [(HMIVideoAnalyzerEvent *)v5 confidence];
    [(HMIVideoAnalyzerEvent *)v5 boundingBox];
    self = [(HMIVideoAnalyzerEventTorso *)self initWithConfidence:v8 boundingBox:v6 roll:v7 torsoRecognition:?];

    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end