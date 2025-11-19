@interface HMIVideoAnalyzerEventFace
- (BOOL)isEqual:(id)a3;
- (HMIVideoAnalyzerEventFace)initWithCoder:(id)a3;
- (HMIVideoAnalyzerEventFace)initWithConfidence:(id)a3 boundingBox:(CGRect)a4 yaw:(id)a5 roll:(id)a6 faceRecognition:(id)a7 torsoAnnotation:(id)a8 userInfo:(id)a9;
- (NSUUID)sessionEntityUUID;
- (id)attributeDescriptions;
- (id)shortDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMIVideoAnalyzerEventFace

- (HMIVideoAnalyzerEventFace)initWithConfidence:(id)a3 boundingBox:(CGRect)a4 yaw:(id)a5 roll:(id)a6 faceRecognition:(id)a7 torsoAnnotation:(id)a8 userInfo:(id)a9
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v26 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v27.receiver = self;
  v27.super_class = HMIVideoAnalyzerEventFace;
  v23 = [(HMIVideoAnalyzerEvent *)&v27 initWithConfidence:a3 boundingBox:a9 userInfo:x, y, width, height];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_faceRecognition, a7);
    objc_storeStrong(&v24->_torsoAnnotation, a8);
    objc_storeStrong(&v24->_yaw, a5);
    objc_storeStrong(&v24->_roll, a6);
  }

  return v24;
}

- (NSUUID)sessionEntityUUID
{
  v3 = [(HMIVideoAnalyzerEventFace *)self faceRecognition];
  if (v3)
  {
    v4 = [(HMIVideoAnalyzerEventFace *)self faceRecognition];
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
  v20[4] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = HMIVideoAnalyzerEventFace;
  v3 = [(HMIVideoAnalyzerEvent *)&v19 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v18 = [(HMIVideoAnalyzerEventFace *)self faceRecognition];
  v5 = [v4 initWithName:@"Face Recognition" value:v18];
  v20[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMIVideoAnalyzerEventFace *)self torsoAnnotation];
  v8 = [v6 initWithName:@"Torso Annotation" value:v7];
  v20[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMIVideoAnalyzerEventFace *)self yaw];
  v11 = [v9 initWithName:@"Face Yaw" value:v10];
  v20[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMIVideoAnalyzerEventFace *)self roll];
  v14 = [v12 initWithName:@"Face Roll" value:v13];
  v20[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  v16 = [v3 arrayByAddingObjectsFromArray:v15];

  return v16;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = HMIVideoAnalyzerEventFace;
  v4 = [(HMIVideoAnalyzerEvent *)&v11 shortDescription];
  v5 = [(HMIVideoAnalyzerEventFace *)self roll];
  v6 = HMIFormatNumber(v5, 2);
  v7 = [(HMIVideoAnalyzerEventFace *)self yaw];
  v8 = HMIFormatNumber(v7, 2);
  v9 = [v3 stringWithFormat:@"%@@(%@, %@)", v4, v6, v8];

  return v9;
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
  if (v6 && (v19.receiver = self, v19.super_class = HMIVideoAnalyzerEventFace, -[HMIVideoAnalyzerEvent isEqual:](&v19, sel_isEqual_, v6)) && (-[HMIVideoAnalyzerEventFace faceRecognition](self, "faceRecognition"), v7 = objc_claimAutoreleasedReturnValue(), [v6 faceRecognition], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9) && (-[HMIVideoAnalyzerEventFace torsoAnnotation](self, "torsoAnnotation"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "torsoAnnotation"), v11 = objc_claimAutoreleasedReturnValue(), v12 = HMFEqualObjects(), v11, v10, v12))
  {
    v13 = [(HMIVideoAnalyzerEventFace *)self yaw];
    v14 = [v6 yaw];
    if (v13 == v14)
    {
      v17 = [(HMIVideoAnalyzerEventFace *)self roll];
      v18 = [v6 roll];
      v15 = v17 == v18;
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

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = HMIVideoAnalyzerEventFace;
  v4 = a3;
  [(HMIVideoAnalyzerEvent *)&v9 encodeWithCoder:v4];
  v5 = [(HMIVideoAnalyzerEventFace *)self faceRecognition:v9.receiver];
  [v4 encodeObject:v5 forKey:@"HMIVAEF.fr"];

  v6 = [(HMIVideoAnalyzerEventFace *)self torsoAnnotation];
  [v4 encodeObject:v6 forKey:@"HMIVAEF.ta"];

  v7 = [(HMIVideoAnalyzerEventFace *)self yaw];
  [v4 encodeObject:v7 forKey:@"HMIVAEF.ya"];

  v8 = [(HMIVideoAnalyzerEventFace *)self roll];
  [v4 encodeObject:v8 forKey:@"HMIVAEF.ro"];
}

- (HMIVideoAnalyzerEventFace)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [[HMIVideoAnalyzerEvent alloc] initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIVAEF.fr"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIVAEF.ta"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIVAEF.ya"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIVAEF.ro"];
    v10 = [(HMIVideoAnalyzerEvent *)v5 confidence];
    [(HMIVideoAnalyzerEvent *)v5 boundingBox];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(HMIVideoAnalyzerEvent *)v5 userInfo];
    self = [(HMIVideoAnalyzerEventFace *)self initWithConfidence:v10 boundingBox:v8 yaw:v9 roll:v6 faceRecognition:v7 torsoAnnotation:v19 userInfo:v12, v14, v16, v18];

    v20 = self;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end