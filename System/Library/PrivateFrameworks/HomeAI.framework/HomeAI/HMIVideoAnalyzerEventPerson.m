@interface HMIVideoAnalyzerEventPerson
- (BOOL)isEqual:(id)a3;
- (CGRect)boundingBox;
- (CGRect)boundingBoxForTracker;
- (HMIVideoAnalyzerEventPerson)initWithCoder:(id)a3;
- (HMIVideoAnalyzerEventPerson)initWithConfidence:(id)a3 boundingBox:(CGRect)a4;
- (HMIVideoAnalyzerEventPerson)initWithConfidence:(id)a3 boundingBox:(CGRect)a4 face:(id)a5;
- (HMIVideoAnalyzerEventPerson)initWithConfidence:(id)a3 boundingBox:(CGRect)a4 face:(id)a5 torso:(id)a6;
- (HMIVideoAnalyzerEventPerson)initWithFaceEvent:(id)a3;
- (HMIVideoAnalyzerEventPerson)initWithFaceEvent:(id)a3 torso:(id)a4;
- (HMIVideoAnalyzerEventPerson)initWithTorsoEvent:(id)a3;
- (NSUUID)sessionEntityUUID;
- (id)allEvents;
- (id)attributeDescriptions;
- (id)confidence;
- (id)copyWithFaceEvent:(id)a3 torso:(id)a4;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMIVideoAnalyzerEventPerson

- (HMIVideoAnalyzerEventPerson)initWithConfidence:(id)a3 boundingBox:(CGRect)a4
{
  v9.receiver = self;
  v9.super_class = HMIVideoAnalyzerEventPerson;
  v4 = [(HMIVideoAnalyzerEvent *)&v9 initWithConfidence:a3 boundingBox:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  v5 = v4;
  if (v4)
  {
    face = v4->_face;
    v4->_face = 0;

    torso = v5->_torso;
    v5->_torso = 0;

    v5->_isBoundingBoxEstimated = 0;
  }

  return v5;
}

- (HMIVideoAnalyzerEventPerson)initWithConfidence:(id)a3 boundingBox:(CGRect)a4 face:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = HMIVideoAnalyzerEventPerson;
  v13 = [(HMIVideoAnalyzerEvent *)&v17 initWithConfidence:a3 boundingBox:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_face, a5);
    torso = v14->_torso;
    v14->_torso = 0;

    v14->_isBoundingBoxEstimated = 0;
  }

  return v14;
}

- (HMIVideoAnalyzerEventPerson)initWithConfidence:(id)a3 boundingBox:(CGRect)a4 face:(id)a5 torso:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = HMIVideoAnalyzerEventPerson;
  v16 = [(HMIVideoAnalyzerEvent *)&v19 initWithConfidence:a3 boundingBox:0 userInfo:x, y, width, height];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_face, a5);
    objc_storeStrong(&v17->_torso, a6);
    v17->_isBoundingBoxEstimated = 0;
  }

  return v17;
}

- (HMIVideoAnalyzerEventPerson)initWithFaceEvent:(id)a3
{
  v5 = a3;
  v6 = [[HMIConfidence alloc] initWithValue:&unk_284075630 levelThresholds:0.0];
  v11.receiver = self;
  v11.super_class = HMIVideoAnalyzerEventPerson;
  v7 = [(HMIVideoAnalyzerEvent *)&v11 initWithConfidence:v6 boundingBox:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_face, a3);
    torso = v8->_torso;
    v8->_torso = 0;

    v8->_isBoundingBoxEstimated = 1;
  }

  return v8;
}

- (HMIVideoAnalyzerEventPerson)initWithTorsoEvent:(id)a3
{
  v5 = a3;
  v6 = [[HMIConfidence alloc] initWithValue:&unk_284075648 levelThresholds:0.0];
  v11.receiver = self;
  v11.super_class = HMIVideoAnalyzerEventPerson;
  v7 = [(HMIVideoAnalyzerEvent *)&v11 initWithConfidence:v6 boundingBox:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v8 = v7;
  if (v7)
  {
    face = v7->_face;
    v7->_face = 0;

    objc_storeStrong(&v8->_torso, a3);
    v8->_isBoundingBoxEstimated = 1;
  }

  return v8;
}

- (HMIVideoAnalyzerEventPerson)initWithFaceEvent:(id)a3 torso:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [[HMIConfidence alloc] initWithValue:&unk_284075660 levelThresholds:0.0];
  v13.receiver = self;
  v13.super_class = HMIVideoAnalyzerEventPerson;
  v10 = [(HMIVideoAnalyzerEvent *)&v13 initWithConfidence:v9 boundingBox:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_face, a3);
    objc_storeStrong(&v11->_torso, a4);
    v11->_isBoundingBoxEstimated = 1;
  }

  return v11;
}

- (id)copyWithFaceEvent:(id)a3 torso:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(HMIVideoAnalyzerEventPerson *)self hasEstimatedBoundingBox])
  {
    if (v6 && v7)
    {
      v8 = [[HMIVideoAnalyzerEventPerson alloc] initWithFaceEvent:v6 torso:v7];
LABEL_13:
      v11 = v8;
      goto LABEL_14;
    }

    if (v6 && !v7)
    {
      v8 = [[HMIVideoAnalyzerEventPerson alloc] initWithFaceEvent:v6];
      goto LABEL_13;
    }

    v12 = [HMIVideoAnalyzerEventPerson alloc];
    v13 = v12;
    if (!v6 && v7)
    {
      v8 = [(HMIVideoAnalyzerEventPerson *)v12 initWithTorsoEvent:v7];
      goto LABEL_13;
    }

    v10 = [(HMIVideoAnalyzerEventPerson *)self confidence];
    [(HMIVideoAnalyzerEventPerson *)self boundingBox];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [(HMIVideoAnalyzerEventPerson *)self face];
    v24 = [(HMIVideoAnalyzerEventPerson *)self torso];
    v11 = [(HMIVideoAnalyzerEventPerson *)v13 initWithConfidence:v10 boundingBox:v23 face:v24 torso:v16, v18, v20, v22];
  }

  else
  {
    v9 = [HMIVideoAnalyzerEventPerson alloc];
    v10 = [(HMIVideoAnalyzerEventPerson *)self confidence];
    [(HMIVideoAnalyzerEventPerson *)self boundingBox];
    v11 = [(HMIVideoAnalyzerEventPerson *)v9 initWithConfidence:v10 boundingBox:v6 face:v7 torso:?];
  }

LABEL_14:
  return v11;
}

- (id)allEvents
{
  v3 = [MEMORY[0x277CBEB18] arrayWithObject:self];
  v4 = [(HMIVideoAnalyzerEventPerson *)self face];

  if (v4)
  {
    v5 = [(HMIVideoAnalyzerEventPerson *)self face];
    [v3 addObject:v5];
  }

  v6 = [(HMIVideoAnalyzerEventPerson *)self torso];

  if (v6)
  {
    v7 = [(HMIVideoAnalyzerEventPerson *)self torso];
    [v3 addObject:v7];
  }

  v8 = [v3 copy];

  return v8;
}

- (CGRect)boundingBox
{
  if ([(HMIVideoAnalyzerEventPerson *)self hasEstimatedBoundingBox]&& ([(HMIVideoAnalyzerEventPerson *)self torso], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(HMIVideoAnalyzerEventPerson *)self torso];
  }

  else
  {
    if (![(HMIVideoAnalyzerEventPerson *)self hasEstimatedBoundingBox]|| ([(HMIVideoAnalyzerEventPerson *)self face], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
    {
      v23.receiver = self;
      v23.super_class = HMIVideoAnalyzerEventPerson;
      [(HMIVideoAnalyzerEvent *)&v23 boundingBox];
      v8 = v15;
      v10 = v16;
      v12 = v17;
      v14 = v18;
      goto LABEL_9;
    }

    v4 = [(HMIVideoAnalyzerEventPerson *)self face];
  }

  v6 = v4;
  [v4 boundingBox];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

LABEL_9:
  v19 = v8;
  v20 = v10;
  v21 = v12;
  v22 = v14;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)boundingBoxForTracker
{
  if ([(HMIVideoAnalyzerEventPerson *)self hasEstimatedBoundingBox]&& ([(HMIVideoAnalyzerEventPerson *)self torso], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(HMIVideoAnalyzerEventPerson *)self torso];
    [v4 boundingBox];
    x = v5;
    y = v7;
    width = v9;
    height = v11;
  }

  else if ([(HMIVideoAnalyzerEventPerson *)self hasEstimatedBoundingBox]&& ([(HMIVideoAnalyzerEventPerson *)self face], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = [(HMIVideoAnalyzerEventPerson *)self face];
    [v14 boundingBox];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [(HMIVideoAnalyzerEventPerson *)self face];
    [v23 boundingBox];
    v24 = CGRectGetWidth(v36) * -0.5;
    v25 = [(HMIVideoAnalyzerEventPerson *)self face];
    [v25 boundingBox];
    v26 = CGRectGetHeight(v37) * -0.5;
    v38.origin.x = v16;
    v38.origin.y = v18;
    v38.size.width = v20;
    v38.size.height = v22;
    v39 = CGRectInset(v38, v24, v26);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
  }

  else
  {
    v35.receiver = self;
    v35.super_class = HMIVideoAnalyzerEventPerson;
    [(HMIVideoAnalyzerEvent *)&v35 boundingBox];
    x = v27;
    y = v28;
    width = v29;
    height = v30;
  }

  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (id)confidence
{
  if ([(HMIVideoAnalyzerEventPerson *)self hasEstimatedBoundingBox])
  {
    v3 = [(HMIVideoAnalyzerEventPerson *)self torso];

    if (v3)
    {
      v4 = [(HMIVideoAnalyzerEventPerson *)self torso];
LABEL_7:
      v6 = v4;
      v7 = [v4 confidence];

      goto LABEL_9;
    }
  }

  if ([(HMIVideoAnalyzerEventPerson *)self hasEstimatedBoundingBox])
  {
    v5 = [(HMIVideoAnalyzerEventPerson *)self face];

    if (v5)
    {
      v4 = [(HMIVideoAnalyzerEventPerson *)self face];
      goto LABEL_7;
    }
  }

  v9.receiver = self;
  v9.super_class = HMIVideoAnalyzerEventPerson;
  v7 = [(HMIVideoAnalyzerEvent *)&v9 confidence];
LABEL_9:

  return v7;
}

- (NSUUID)sessionEntityUUID
{
  v3 = [(HMIVideoAnalyzerEventPerson *)self face];
  if (!v3 || (v4 = v3, -[HMIVideoAnalyzerEventPerson face](self, "face"), v5 = objc_claimAutoreleasedReturnValue(), [v5 sessionEntityUUID], v6 = objc_claimAutoreleasedReturnValue(), v5, v4, !v6))
  {
    v7 = [(HMIVideoAnalyzerEventPerson *)self torso];
    if (v7)
    {
      v8 = [(HMIVideoAnalyzerEventPerson *)self torso];
      v6 = [v8 sessionEntityUUID];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)attributeDescriptions
{
  v17[3] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = HMIVideoAnalyzerEventPerson;
  v3 = [(HMIVideoAnalyzerEvent *)&v16 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMIVideoAnalyzerEventPerson hasEstimatedBoundingBox](self, "hasEstimatedBoundingBox")}];
  v6 = [v4 initWithName:@"Is Bounding Box & Confidence Estimated" value:v5];
  v17[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMIVideoAnalyzerEventPerson *)self face];
  v9 = [v7 initWithName:@"Face" value:v8];
  v17[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMIVideoAnalyzerEventPerson *)self torso];
  v12 = [v10 initWithName:@"Torso" value:v11];
  v17[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v14 = [v3 arrayByAddingObjectsFromArray:v13];

  return v14;
}

- (id)shortDescription
{
  v3 = [(HMIVideoAnalyzerEventPerson *)self face];
  if (v3)
  {
    v4 = [(HMIVideoAnalyzerEventPerson *)self face];
    v5 = [v4 shortDescription];
  }

  else
  {
    v5 = &stru_284057FB8;
  }

  v6 = [(HMIVideoAnalyzerEventPerson *)self torso];
  if (v6)
  {
    v7 = [(HMIVideoAnalyzerEventPerson *)self torso];
    v8 = [v7 shortDescription];
  }

  else
  {
    v8 = &stru_284057FB8;
  }

  v9 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = HMIVideoAnalyzerEventPerson;
  v10 = [(HMIVideoAnalyzerEvent *)&v13 shortDescription];
  v11 = [v9 stringWithFormat:@"%@ %@ %@", v10, v5, v8];

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
  if (v6 && (v7 = -[HMIVideoAnalyzerEventPerson hasEstimatedBoundingBox](self, "hasEstimatedBoundingBox"), v7 == [v6 hasEstimatedBoundingBox]) && (v15.receiver = self, v15.super_class = HMIVideoAnalyzerEventPerson, -[HMIVideoAnalyzerEvent isEqual:](&v15, sel_isEqual_, v6)) && (-[HMIVideoAnalyzerEventPerson face](self, "face"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "face"), v9 = objc_claimAutoreleasedReturnValue(), v10 = HMFEqualObjects(), v9, v8, v10))
  {
    v11 = [(HMIVideoAnalyzerEventPerson *)self torso];
    v12 = [v6 torso];
    v13 = HMFEqualObjects();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(HMIVideoAnalyzerEventPerson *)self hasEstimatedBoundingBox];
  v5.receiver = self;
  v5.super_class = HMIVideoAnalyzerEventPerson;
  return [(HMIVideoAnalyzerEvent *)&v5 hash]^ v3;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = HMIVideoAnalyzerEventPerson;
  v4 = a3;
  [(HMIVideoAnalyzerEvent *)&v7 encodeWithCoder:v4];
  v5 = [(HMIVideoAnalyzerEventPerson *)self face:v7.receiver];
  [v4 encodeObject:v5 forKey:@"HMIVAEP.f"];

  v6 = [(HMIVideoAnalyzerEventPerson *)self torso];
  [v4 encodeObject:v6 forKey:@"HMIVAEP.t"];

  [v4 encodeBool:-[HMIVideoAnalyzerEventPerson hasEstimatedBoundingBox](self forKey:{"hasEstimatedBoundingBox"), @"HMIVAEP.ibbe"}];
}

- (HMIVideoAnalyzerEventPerson)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [[HMIVideoAnalyzerEvent alloc] initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIVAEP.f"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIVAEP.t"];
    if ([v4 decodeBoolForKey:@"HMIVAEP.ibbe"])
    {
      if (v6 && v7)
      {
        v8 = [(HMIVideoAnalyzerEventPerson *)self initWithFaceEvent:v6 torso:v7];
LABEL_11:
        self = v8;
LABEL_13:

        v9 = self;
        goto LABEL_14;
      }

      if (v6)
      {
        v8 = [(HMIVideoAnalyzerEventPerson *)self initWithFaceEvent:v6];
        goto LABEL_11;
      }

      if (v7)
      {
        v8 = [(HMIVideoAnalyzerEventPerson *)self initWithTorsoEvent:v7];
        goto LABEL_11;
      }
    }

    v10 = [(HMIVideoAnalyzerEvent *)v5 confidence];
    [(HMIVideoAnalyzerEvent *)v5 boundingBox];
    self = [(HMIVideoAnalyzerEventPerson *)self initWithConfidence:v10 boundingBox:v6 face:v7 torso:?];

    goto LABEL_13;
  }

  v9 = 0;
LABEL_14:

  return v9;
}

@end