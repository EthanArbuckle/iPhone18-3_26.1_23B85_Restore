@interface HMIVideoAnalyzerEventFace
- (BOOL)isEqual:(id)equal;
- (HMIVideoAnalyzerEventFace)initWithCoder:(id)coder;
- (HMIVideoAnalyzerEventFace)initWithConfidence:(id)confidence boundingBox:(CGRect)box yaw:(id)yaw roll:(id)roll faceRecognition:(id)recognition torsoAnnotation:(id)annotation userInfo:(id)info;
- (NSUUID)sessionEntityUUID;
- (id)attributeDescriptions;
- (id)shortDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIVideoAnalyzerEventFace

- (HMIVideoAnalyzerEventFace)initWithConfidence:(id)confidence boundingBox:(CGRect)box yaw:(id)yaw roll:(id)roll faceRecognition:(id)recognition torsoAnnotation:(id)annotation userInfo:(id)info
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  yawCopy = yaw;
  rollCopy = roll;
  recognitionCopy = recognition;
  annotationCopy = annotation;
  v27.receiver = self;
  v27.super_class = HMIVideoAnalyzerEventFace;
  height = [(HMIVideoAnalyzerEvent *)&v27 initWithConfidence:confidence boundingBox:info userInfo:x, y, width, height];
  v24 = height;
  if (height)
  {
    objc_storeStrong(&height->_faceRecognition, recognition);
    objc_storeStrong(&v24->_torsoAnnotation, annotation);
    objc_storeStrong(&v24->_yaw, yaw);
    objc_storeStrong(&v24->_roll, roll);
  }

  return v24;
}

- (NSUUID)sessionEntityUUID
{
  faceRecognition = [(HMIVideoAnalyzerEventFace *)self faceRecognition];
  if (faceRecognition)
  {
    faceRecognition2 = [(HMIVideoAnalyzerEventFace *)self faceRecognition];
    sessionEntityUUID = [faceRecognition2 sessionEntityUUID];
  }

  else
  {
    sessionEntityUUID = 0;
  }

  return sessionEntityUUID;
}

- (id)attributeDescriptions
{
  v20[4] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = HMIVideoAnalyzerEventFace;
  attributeDescriptions = [(HMIVideoAnalyzerEvent *)&v19 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  faceRecognition = [(HMIVideoAnalyzerEventFace *)self faceRecognition];
  v5 = [v4 initWithName:@"Face Recognition" value:faceRecognition];
  v20[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  torsoAnnotation = [(HMIVideoAnalyzerEventFace *)self torsoAnnotation];
  v8 = [v6 initWithName:@"Torso Annotation" value:torsoAnnotation];
  v20[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMIVideoAnalyzerEventFace *)self yaw];
  v11 = [v9 initWithName:@"Face Yaw" value:v10];
  v20[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  roll = [(HMIVideoAnalyzerEventFace *)self roll];
  v14 = [v12 initWithName:@"Face Roll" value:roll];
  v20[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  v16 = [attributeDescriptions arrayByAddingObjectsFromArray:v15];

  return v16;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = HMIVideoAnalyzerEventFace;
  shortDescription = [(HMIVideoAnalyzerEvent *)&v11 shortDescription];
  roll = [(HMIVideoAnalyzerEventFace *)self roll];
  v6 = HMIFormatNumber(roll, 2);
  v7 = [(HMIVideoAnalyzerEventFace *)self yaw];
  v8 = HMIFormatNumber(v7, 2);
  v9 = [v3 stringWithFormat:@"%@@(%@, %@)", shortDescription, v6, v8];

  return v9;
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
  if (v6 && (v19.receiver = self, v19.super_class = HMIVideoAnalyzerEventFace, -[HMIVideoAnalyzerEvent isEqual:](&v19, sel_isEqual_, v6)) && (-[HMIVideoAnalyzerEventFace faceRecognition](self, "faceRecognition"), v7 = objc_claimAutoreleasedReturnValue(), [v6 faceRecognition], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9) && (-[HMIVideoAnalyzerEventFace torsoAnnotation](self, "torsoAnnotation"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "torsoAnnotation"), v11 = objc_claimAutoreleasedReturnValue(), v12 = HMFEqualObjects(), v11, v10, v12))
  {
    v13 = [(HMIVideoAnalyzerEventFace *)self yaw];
    v14 = [v6 yaw];
    if (v13 == v14)
    {
      roll = [(HMIVideoAnalyzerEventFace *)self roll];
      roll2 = [v6 roll];
      v15 = roll == roll2;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = HMIVideoAnalyzerEventFace;
  coderCopy = coder;
  [(HMIVideoAnalyzerEvent *)&v9 encodeWithCoder:coderCopy];
  v5 = [(HMIVideoAnalyzerEventFace *)self faceRecognition:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"HMIVAEF.fr"];

  torsoAnnotation = [(HMIVideoAnalyzerEventFace *)self torsoAnnotation];
  [coderCopy encodeObject:torsoAnnotation forKey:@"HMIVAEF.ta"];

  v7 = [(HMIVideoAnalyzerEventFace *)self yaw];
  [coderCopy encodeObject:v7 forKey:@"HMIVAEF.ya"];

  roll = [(HMIVideoAnalyzerEventFace *)self roll];
  [coderCopy encodeObject:roll forKey:@"HMIVAEF.ro"];
}

- (HMIVideoAnalyzerEventFace)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [[HMIVideoAnalyzerEvent alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIVAEF.fr"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIVAEF.ta"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIVAEF.ya"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIVAEF.ro"];
    confidence = [(HMIVideoAnalyzerEvent *)v5 confidence];
    [(HMIVideoAnalyzerEvent *)v5 boundingBox];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    userInfo = [(HMIVideoAnalyzerEvent *)v5 userInfo];
    self = [(HMIVideoAnalyzerEventFace *)self initWithConfidence:confidence boundingBox:v8 yaw:v9 roll:v6 faceRecognition:v7 torsoAnnotation:userInfo userInfo:v12, v14, v16, v18];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end