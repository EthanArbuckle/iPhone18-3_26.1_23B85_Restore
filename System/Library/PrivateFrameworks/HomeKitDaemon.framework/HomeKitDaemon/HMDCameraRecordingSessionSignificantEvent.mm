@interface HMDCameraRecordingSessionSignificantEvent
- (BOOL)isEqual:(id)equal;
- (HMDCameraRecordingSessionSignificantEvent)initWithUUID:(id)d;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HMDCameraRecordingSessionSignificantEvent

- (id)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  uUID = [(HMDCameraRecordingSessionSignificantEvent *)self UUID];
  v6 = [v4 initWithName:@"UUID" value:uUID];
  [array addObject:v6];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCameraRecordingSessionSignificantEvent *)self reason];
  v8 = HMStringFromCameraSignificantEventReason();
  v9 = [v7 initWithName:@"Reason" value:v8];
  [array addObject:v9];

  v10 = objc_alloc(MEMORY[0x277D0F778]);
  dateOfOccurrence = [(HMDCameraRecordingSessionSignificantEvent *)self dateOfOccurrence];
  v12 = [v10 initWithName:@"Date" value:dateOfOccurrence];
  [array addObject:v12];

  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v14 = MEMORY[0x277CCABB0];
  [(HMDCameraRecordingSessionSignificantEvent *)self timeOffsetWithinClip];
  v15 = [v14 numberWithDouble:?];
  v16 = [v13 initWithName:@"Time Offset Within Clip" value:v15];
  [array addObject:v16];

  if ([(HMDCameraRecordingSessionSignificantEvent *)self confidenceLevel]!= 100)
  {
    v17 = objc_alloc(MEMORY[0x277D0F778]);
    [(HMDCameraRecordingSessionSignificantEvent *)self confidenceLevel];
    v18 = HMStringFromCameraSignificantEventConfidenceLevel();
    v19 = [v17 initWithName:@"Confidence Level" value:v18];
    [array addObject:v19];
  }

  sessionEntityUUID = [(HMDCameraRecordingSessionSignificantEvent *)self sessionEntityUUID];

  if (sessionEntityUUID)
  {
    v21 = objc_alloc(MEMORY[0x277D0F778]);
    sessionEntityUUID2 = [(HMDCameraRecordingSessionSignificantEvent *)self sessionEntityUUID];
    v23 = [v21 initWithName:@"Session Entity UUID" value:sessionEntityUUID2];
    [array addObject:v23];
  }

  faceClassifications = [(HMDCameraRecordingSessionSignificantEvent *)self faceClassifications];
  v25 = [faceClassifications count];

  if (v25)
  {
    v26 = objc_alloc(MEMORY[0x277D0F778]);
    faceClassifications2 = [(HMDCameraRecordingSessionSignificantEvent *)self faceClassifications];
    v28 = [v26 initWithName:@"Face Classifications" value:faceClassifications2];
    [array addObject:v28];
  }

  heroFrameData = [(HMDCameraRecordingSessionSignificantEvent *)self heroFrameData];

  if (heroFrameData)
  {
    v30 = objc_alloc(MEMORY[0x277D0F778]);
    heroFrameData2 = [(HMDCameraRecordingSessionSignificantEvent *)self heroFrameData];
    shortDescription = [heroFrameData2 shortDescription];
    v33 = [v30 initWithName:@"Hero Frame Data" value:shortDescription];
    [array addObject:v33];
  }

  faceCropData = [(HMDCameraRecordingSessionSignificantEvent *)self faceCropData];

  if (faceCropData)
  {
    v35 = objc_alloc(MEMORY[0x277D0F778]);
    faceCropData2 = [(HMDCameraRecordingSessionSignificantEvent *)self faceCropData];
    shortDescription2 = [faceCropData2 shortDescription];
    v38 = [v35 initWithName:@"Face Crop Data" value:shortDescription2];
    [array addObject:v38];
  }

  v39 = [array copy];

  return v39;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMDMutableCameraRecordingSessionSignificantEvent allocWithZone:zone];
  uUID = [(HMDCameraRecordingSessionSignificantEvent *)self UUID];
  v6 = [(HMDCameraRecordingSessionSignificantEvent *)v4 initWithUUID:uUID];

  [(HMDCameraRecordingSessionSignificantEvent *)v6 setReason:[(HMDCameraRecordingSessionSignificantEvent *)self reason]];
  dateOfOccurrence = [(HMDCameraRecordingSessionSignificantEvent *)self dateOfOccurrence];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setDateOfOccurrence:dateOfOccurrence];

  [(HMDCameraRecordingSessionSignificantEvent *)v6 setConfidenceLevel:[(HMDCameraRecordingSessionSignificantEvent *)self confidenceLevel]];
  sessionEntityUUID = [(HMDCameraRecordingSessionSignificantEvent *)self sessionEntityUUID];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setSessionEntityUUID:sessionEntityUUID];

  faceClassifications = [(HMDCameraRecordingSessionSignificantEvent *)self faceClassifications];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setFaceClassifications:faceClassifications];

  heroFrameData = [(HMDCameraRecordingSessionSignificantEvent *)self heroFrameData];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setHeroFrameData:heroFrameData];

  faceCropData = [(HMDCameraRecordingSessionSignificantEvent *)self faceCropData];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setFaceCropData:faceCropData];

  [(HMDCameraRecordingSessionSignificantEvent *)self timeOffsetWithinClip];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setTimeOffsetWithinClip:?];
  return v6;
}

- (unint64_t)hash
{
  uUID = [(HMDCameraRecordingSessionSignificantEvent *)self UUID];
  v3 = [uUID hash];

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
    uUID = [(HMDCameraRecordingSessionSignificantEvent *)self UUID];
    uUID2 = [v6 UUID];
    if ([uUID isEqual:uUID2] && (v9 = -[HMDCameraRecordingSessionSignificantEvent reason](self, "reason"), v9 == objc_msgSend(v6, "reason")))
    {
      dateOfOccurrence = [(HMDCameraRecordingSessionSignificantEvent *)self dateOfOccurrence];
      dateOfOccurrence2 = [v6 dateOfOccurrence];
      if (![dateOfOccurrence isEqualToDate:dateOfOccurrence2])
      {
        goto LABEL_16;
      }

      confidenceLevel = [(HMDCameraRecordingSessionSignificantEvent *)self confidenceLevel];
      if (confidenceLevel != [v6 confidenceLevel])
      {
        goto LABEL_16;
      }

      sessionEntityUUID = [(HMDCameraRecordingSessionSignificantEvent *)self sessionEntityUUID];
      sessionEntityUUID2 = [v6 sessionEntityUUID];
      v15 = HMFEqualObjects();

      if (v15)
      {
        faceClassifications = [(HMDCameraRecordingSessionSignificantEvent *)self faceClassifications];
        faceClassifications2 = [v6 faceClassifications];
        if ([faceClassifications isEqualToSet:faceClassifications2])
        {
          v29 = faceClassifications2;
          v30 = faceClassifications;
          heroFrameData = [(HMDCameraRecordingSessionSignificantEvent *)self heroFrameData];
          heroFrameData2 = [v6 heroFrameData];
          v20 = HMFEqualObjects();

          if (v20 && (-[HMDCameraRecordingSessionSignificantEvent faceCropData](self, "faceCropData"), v21 = objc_claimAutoreleasedReturnValue(), [v6 faceCropData], v22 = objc_claimAutoreleasedReturnValue(), v23 = HMFEqualObjects(), v22, v21, v23))
          {
            [(HMDCameraRecordingSessionSignificantEvent *)self timeOffsetWithinClip];
            v25 = v24;
            [v6 timeOffsetWithinClip];
            v27 = v25 == v26;
          }

          else
          {
            v27 = 0;
          }

          faceClassifications2 = v29;
          faceClassifications = v30;
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
LABEL_16:
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (HMDCameraRecordingSessionSignificantEvent)initWithUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = dCopy;
    v16.receiver = self;
    v16.super_class = HMDCameraRecordingSessionSignificantEvent;
    v6 = [(HMDCameraRecordingSessionSignificantEvent *)&v16 init];
    if (v6)
    {
      v7 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:v5];
      UUID = v6->_UUID;
      v6->_UUID = v7;

      v6->_reason = 1;
      date = [MEMORY[0x277CBEAA8] date];
      dateOfOccurrence = v6->_dateOfOccurrence;
      v6->_dateOfOccurrence = date;

      v6->_confidenceLevel = 100;
      v11 = [MEMORY[0x277CBEB98] set];
      faceClassifications = v6->_faceClassifications;
      v6->_faceClassifications = v11;
    }

    return v6;
  }

  else
  {
    v14 = _HMFPreconditionFailure();
    return +[(_MKFBulletinRegistration *)v14];
  }
}

@end