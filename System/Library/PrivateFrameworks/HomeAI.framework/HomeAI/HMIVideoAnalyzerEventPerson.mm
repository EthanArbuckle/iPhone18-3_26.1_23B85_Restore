@interface HMIVideoAnalyzerEventPerson
- (BOOL)isEqual:(id)equal;
- (CGRect)boundingBox;
- (CGRect)boundingBoxForTracker;
- (HMIVideoAnalyzerEventPerson)initWithCoder:(id)coder;
- (HMIVideoAnalyzerEventPerson)initWithConfidence:(id)confidence boundingBox:(CGRect)box;
- (HMIVideoAnalyzerEventPerson)initWithConfidence:(id)confidence boundingBox:(CGRect)box face:(id)face;
- (HMIVideoAnalyzerEventPerson)initWithConfidence:(id)confidence boundingBox:(CGRect)box face:(id)face torso:(id)torso;
- (HMIVideoAnalyzerEventPerson)initWithFaceEvent:(id)event;
- (HMIVideoAnalyzerEventPerson)initWithFaceEvent:(id)event torso:(id)torso;
- (HMIVideoAnalyzerEventPerson)initWithTorsoEvent:(id)event;
- (NSUUID)sessionEntityUUID;
- (id)allEvents;
- (id)attributeDescriptions;
- (id)confidence;
- (id)copyWithFaceEvent:(id)event torso:(id)torso;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIVideoAnalyzerEventPerson

- (HMIVideoAnalyzerEventPerson)initWithConfidence:(id)confidence boundingBox:(CGRect)box
{
  v9.receiver = self;
  v9.super_class = HMIVideoAnalyzerEventPerson;
  v4 = [(HMIVideoAnalyzerEvent *)&v9 initWithConfidence:confidence boundingBox:box.origin.x, box.origin.y, box.size.width, box.size.height];
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

- (HMIVideoAnalyzerEventPerson)initWithConfidence:(id)confidence boundingBox:(CGRect)box face:(id)face
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  faceCopy = face;
  v17.receiver = self;
  v17.super_class = HMIVideoAnalyzerEventPerson;
  height = [(HMIVideoAnalyzerEvent *)&v17 initWithConfidence:confidence boundingBox:x, y, width, height];
  v14 = height;
  if (height)
  {
    objc_storeStrong(&height->_face, face);
    torso = v14->_torso;
    v14->_torso = 0;

    v14->_isBoundingBoxEstimated = 0;
  }

  return v14;
}

- (HMIVideoAnalyzerEventPerson)initWithConfidence:(id)confidence boundingBox:(CGRect)box face:(id)face torso:(id)torso
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  faceCopy = face;
  torsoCopy = torso;
  v19.receiver = self;
  v19.super_class = HMIVideoAnalyzerEventPerson;
  height = [(HMIVideoAnalyzerEvent *)&v19 initWithConfidence:confidence boundingBox:0 userInfo:x, y, width, height];
  v17 = height;
  if (height)
  {
    objc_storeStrong(&height->_face, face);
    objc_storeStrong(&v17->_torso, torso);
    v17->_isBoundingBoxEstimated = 0;
  }

  return v17;
}

- (HMIVideoAnalyzerEventPerson)initWithFaceEvent:(id)event
{
  eventCopy = event;
  v6 = [[HMIConfidence alloc] initWithValue:&unk_284075630 levelThresholds:0.0];
  v11.receiver = self;
  v11.super_class = HMIVideoAnalyzerEventPerson;
  v7 = [(HMIVideoAnalyzerEvent *)&v11 initWithConfidence:v6 boundingBox:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_face, event);
    torso = v8->_torso;
    v8->_torso = 0;

    v8->_isBoundingBoxEstimated = 1;
  }

  return v8;
}

- (HMIVideoAnalyzerEventPerson)initWithTorsoEvent:(id)event
{
  eventCopy = event;
  v6 = [[HMIConfidence alloc] initWithValue:&unk_284075648 levelThresholds:0.0];
  v11.receiver = self;
  v11.super_class = HMIVideoAnalyzerEventPerson;
  v7 = [(HMIVideoAnalyzerEvent *)&v11 initWithConfidence:v6 boundingBox:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v8 = v7;
  if (v7)
  {
    face = v7->_face;
    v7->_face = 0;

    objc_storeStrong(&v8->_torso, event);
    v8->_isBoundingBoxEstimated = 1;
  }

  return v8;
}

- (HMIVideoAnalyzerEventPerson)initWithFaceEvent:(id)event torso:(id)torso
{
  eventCopy = event;
  torsoCopy = torso;
  v9 = [[HMIConfidence alloc] initWithValue:&unk_284075660 levelThresholds:0.0];
  v13.receiver = self;
  v13.super_class = HMIVideoAnalyzerEventPerson;
  v10 = [(HMIVideoAnalyzerEvent *)&v13 initWithConfidence:v9 boundingBox:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_face, event);
    objc_storeStrong(&v11->_torso, torso);
    v11->_isBoundingBoxEstimated = 1;
  }

  return v11;
}

- (id)copyWithFaceEvent:(id)event torso:(id)torso
{
  eventCopy = event;
  torsoCopy = torso;
  if ([(HMIVideoAnalyzerEventPerson *)self hasEstimatedBoundingBox])
  {
    if (eventCopy && torsoCopy)
    {
      v8 = [[HMIVideoAnalyzerEventPerson alloc] initWithFaceEvent:eventCopy torso:torsoCopy];
LABEL_13:
      v11 = v8;
      goto LABEL_14;
    }

    if (eventCopy && !torsoCopy)
    {
      v8 = [[HMIVideoAnalyzerEventPerson alloc] initWithFaceEvent:eventCopy];
      goto LABEL_13;
    }

    v12 = [HMIVideoAnalyzerEventPerson alloc];
    v13 = v12;
    if (!eventCopy && torsoCopy)
    {
      v8 = [(HMIVideoAnalyzerEventPerson *)v12 initWithTorsoEvent:torsoCopy];
      goto LABEL_13;
    }

    confidence = [(HMIVideoAnalyzerEventPerson *)self confidence];
    [(HMIVideoAnalyzerEventPerson *)self boundingBox];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    face = [(HMIVideoAnalyzerEventPerson *)self face];
    torso = [(HMIVideoAnalyzerEventPerson *)self torso];
    v11 = [(HMIVideoAnalyzerEventPerson *)v13 initWithConfidence:confidence boundingBox:face face:torso torso:v16, v18, v20, v22];
  }

  else
  {
    v9 = [HMIVideoAnalyzerEventPerson alloc];
    confidence = [(HMIVideoAnalyzerEventPerson *)self confidence];
    [(HMIVideoAnalyzerEventPerson *)self boundingBox];
    v11 = [(HMIVideoAnalyzerEventPerson *)v9 initWithConfidence:confidence boundingBox:eventCopy face:torsoCopy torso:?];
  }

LABEL_14:
  return v11;
}

- (id)allEvents
{
  v3 = [MEMORY[0x277CBEB18] arrayWithObject:self];
  face = [(HMIVideoAnalyzerEventPerson *)self face];

  if (face)
  {
    face2 = [(HMIVideoAnalyzerEventPerson *)self face];
    [v3 addObject:face2];
  }

  torso = [(HMIVideoAnalyzerEventPerson *)self torso];

  if (torso)
  {
    torso2 = [(HMIVideoAnalyzerEventPerson *)self torso];
    [v3 addObject:torso2];
  }

  v8 = [v3 copy];

  return v8;
}

- (CGRect)boundingBox
{
  if ([(HMIVideoAnalyzerEventPerson *)self hasEstimatedBoundingBox]&& ([(HMIVideoAnalyzerEventPerson *)self torso], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    torso = [(HMIVideoAnalyzerEventPerson *)self torso];
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

    torso = [(HMIVideoAnalyzerEventPerson *)self face];
  }

  v6 = torso;
  [torso boundingBox];
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
    torso = [(HMIVideoAnalyzerEventPerson *)self torso];
    [torso boundingBox];
    x = v5;
    y = v7;
    width = v9;
    height = v11;
  }

  else if ([(HMIVideoAnalyzerEventPerson *)self hasEstimatedBoundingBox]&& ([(HMIVideoAnalyzerEventPerson *)self face], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    face = [(HMIVideoAnalyzerEventPerson *)self face];
    [face boundingBox];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    face2 = [(HMIVideoAnalyzerEventPerson *)self face];
    [face2 boundingBox];
    v24 = CGRectGetWidth(v36) * -0.5;
    face3 = [(HMIVideoAnalyzerEventPerson *)self face];
    [face3 boundingBox];
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
    torso = [(HMIVideoAnalyzerEventPerson *)self torso];

    if (torso)
    {
      torso2 = [(HMIVideoAnalyzerEventPerson *)self torso];
LABEL_7:
      v6 = torso2;
      confidence = [torso2 confidence];

      goto LABEL_9;
    }
  }

  if ([(HMIVideoAnalyzerEventPerson *)self hasEstimatedBoundingBox])
  {
    face = [(HMIVideoAnalyzerEventPerson *)self face];

    if (face)
    {
      torso2 = [(HMIVideoAnalyzerEventPerson *)self face];
      goto LABEL_7;
    }
  }

  v9.receiver = self;
  v9.super_class = HMIVideoAnalyzerEventPerson;
  confidence = [(HMIVideoAnalyzerEvent *)&v9 confidence];
LABEL_9:

  return confidence;
}

- (NSUUID)sessionEntityUUID
{
  face = [(HMIVideoAnalyzerEventPerson *)self face];
  if (!face || (v4 = face, -[HMIVideoAnalyzerEventPerson face](self, "face"), v5 = objc_claimAutoreleasedReturnValue(), [v5 sessionEntityUUID], sessionEntityUUID = objc_claimAutoreleasedReturnValue(), v5, v4, !sessionEntityUUID))
  {
    torso = [(HMIVideoAnalyzerEventPerson *)self torso];
    if (torso)
    {
      torso2 = [(HMIVideoAnalyzerEventPerson *)self torso];
      sessionEntityUUID = [torso2 sessionEntityUUID];
    }

    else
    {
      sessionEntityUUID = 0;
    }
  }

  return sessionEntityUUID;
}

- (id)attributeDescriptions
{
  v17[3] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = HMIVideoAnalyzerEventPerson;
  attributeDescriptions = [(HMIVideoAnalyzerEvent *)&v16 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMIVideoAnalyzerEventPerson hasEstimatedBoundingBox](self, "hasEstimatedBoundingBox")}];
  v6 = [v4 initWithName:@"Is Bounding Box & Confidence Estimated" value:v5];
  v17[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  face = [(HMIVideoAnalyzerEventPerson *)self face];
  v9 = [v7 initWithName:@"Face" value:face];
  v17[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  torso = [(HMIVideoAnalyzerEventPerson *)self torso];
  v12 = [v10 initWithName:@"Torso" value:torso];
  v17[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v14 = [attributeDescriptions arrayByAddingObjectsFromArray:v13];

  return v14;
}

- (id)shortDescription
{
  face = [(HMIVideoAnalyzerEventPerson *)self face];
  if (face)
  {
    face2 = [(HMIVideoAnalyzerEventPerson *)self face];
    shortDescription = [face2 shortDescription];
  }

  else
  {
    shortDescription = &stru_284057FB8;
  }

  torso = [(HMIVideoAnalyzerEventPerson *)self torso];
  if (torso)
  {
    torso2 = [(HMIVideoAnalyzerEventPerson *)self torso];
    shortDescription2 = [torso2 shortDescription];
  }

  else
  {
    shortDescription2 = &stru_284057FB8;
  }

  v9 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = HMIVideoAnalyzerEventPerson;
  shortDescription3 = [(HMIVideoAnalyzerEvent *)&v13 shortDescription];
  v11 = [v9 stringWithFormat:@"%@ %@ %@", shortDescription3, shortDescription, shortDescription2];

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
  if (v6 && (v7 = -[HMIVideoAnalyzerEventPerson hasEstimatedBoundingBox](self, "hasEstimatedBoundingBox"), v7 == [v6 hasEstimatedBoundingBox]) && (v15.receiver = self, v15.super_class = HMIVideoAnalyzerEventPerson, -[HMIVideoAnalyzerEvent isEqual:](&v15, sel_isEqual_, v6)) && (-[HMIVideoAnalyzerEventPerson face](self, "face"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "face"), v9 = objc_claimAutoreleasedReturnValue(), v10 = HMFEqualObjects(), v9, v8, v10))
  {
    torso = [(HMIVideoAnalyzerEventPerson *)self torso];
    torso2 = [v6 torso];
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
  hasEstimatedBoundingBox = [(HMIVideoAnalyzerEventPerson *)self hasEstimatedBoundingBox];
  v5.receiver = self;
  v5.super_class = HMIVideoAnalyzerEventPerson;
  return [(HMIVideoAnalyzerEvent *)&v5 hash]^ hasEstimatedBoundingBox;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = HMIVideoAnalyzerEventPerson;
  coderCopy = coder;
  [(HMIVideoAnalyzerEvent *)&v7 encodeWithCoder:coderCopy];
  v5 = [(HMIVideoAnalyzerEventPerson *)self face:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"HMIVAEP.f"];

  torso = [(HMIVideoAnalyzerEventPerson *)self torso];
  [coderCopy encodeObject:torso forKey:@"HMIVAEP.t"];

  [coderCopy encodeBool:-[HMIVideoAnalyzerEventPerson hasEstimatedBoundingBox](self forKey:{"hasEstimatedBoundingBox"), @"HMIVAEP.ibbe"}];
}

- (HMIVideoAnalyzerEventPerson)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [[HMIVideoAnalyzerEvent alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIVAEP.f"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIVAEP.t"];
    if ([coderCopy decodeBoolForKey:@"HMIVAEP.ibbe"])
    {
      if (v6 && v7)
      {
        v8 = [(HMIVideoAnalyzerEventPerson *)self initWithFaceEvent:v6 torso:v7];
LABEL_11:
        self = v8;
LABEL_13:

        selfCopy = self;
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

    confidence = [(HMIVideoAnalyzerEvent *)v5 confidence];
    [(HMIVideoAnalyzerEvent *)v5 boundingBox];
    self = [(HMIVideoAnalyzerEventPerson *)self initWithConfidence:confidence boundingBox:v6 face:v7 torso:?];

    goto LABEL_13;
  }

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

@end