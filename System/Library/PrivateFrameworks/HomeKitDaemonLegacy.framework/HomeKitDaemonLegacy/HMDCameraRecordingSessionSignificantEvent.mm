@interface HMDCameraRecordingSessionSignificantEvent
- (BOOL)isEqual:(id)a3;
- (HMDCameraRecordingSessionSignificantEvent)initWithUUID:(id)a3;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation HMDCameraRecordingSessionSignificantEvent

- (id)attributeDescriptions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDCameraRecordingSessionSignificantEvent *)self UUID];
  v6 = [v4 initWithName:@"UUID" value:v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCameraRecordingSessionSignificantEvent *)self reason];
  v8 = HMStringFromCameraSignificantEventReason();
  v9 = [v7 initWithName:@"Reason" value:v8];
  [v3 addObject:v9];

  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMDCameraRecordingSessionSignificantEvent *)self dateOfOccurrence];
  v12 = [v10 initWithName:@"Date" value:v11];
  [v3 addObject:v12];

  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v14 = MEMORY[0x277CCABB0];
  [(HMDCameraRecordingSessionSignificantEvent *)self timeOffsetWithinClip];
  v15 = [v14 numberWithDouble:?];
  v16 = [v13 initWithName:@"Time Offset Within Clip" value:v15];
  [v3 addObject:v16];

  if ([(HMDCameraRecordingSessionSignificantEvent *)self confidenceLevel]!= 100)
  {
    v17 = objc_alloc(MEMORY[0x277D0F778]);
    [(HMDCameraRecordingSessionSignificantEvent *)self confidenceLevel];
    v18 = HMStringFromCameraSignificantEventConfidenceLevel();
    v19 = [v17 initWithName:@"Confidence Level" value:v18];
    [v3 addObject:v19];
  }

  v20 = [(HMDCameraRecordingSessionSignificantEvent *)self sessionEntityUUID];

  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x277D0F778]);
    v22 = [(HMDCameraRecordingSessionSignificantEvent *)self sessionEntityUUID];
    v23 = [v21 initWithName:@"Session Entity UUID" value:v22];
    [v3 addObject:v23];
  }

  v24 = [(HMDCameraRecordingSessionSignificantEvent *)self faceClassifications];
  v25 = [v24 count];

  if (v25)
  {
    v26 = objc_alloc(MEMORY[0x277D0F778]);
    v27 = [(HMDCameraRecordingSessionSignificantEvent *)self faceClassifications];
    v28 = [v26 initWithName:@"Face Classifications" value:v27];
    [v3 addObject:v28];
  }

  v29 = [(HMDCameraRecordingSessionSignificantEvent *)self heroFrameData];

  if (v29)
  {
    v30 = objc_alloc(MEMORY[0x277D0F778]);
    v31 = [(HMDCameraRecordingSessionSignificantEvent *)self heroFrameData];
    v32 = [v31 shortDescription];
    v33 = [v30 initWithName:@"Hero Frame Data" value:v32];
    [v3 addObject:v33];
  }

  v34 = [(HMDCameraRecordingSessionSignificantEvent *)self faceCropData];

  if (v34)
  {
    v35 = objc_alloc(MEMORY[0x277D0F778]);
    v36 = [(HMDCameraRecordingSessionSignificantEvent *)self faceCropData];
    v37 = [v36 shortDescription];
    v38 = [v35 initWithName:@"Face Crop Data" value:v37];
    [v3 addObject:v38];
  }

  v39 = [v3 copy];

  return v39;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMDMutableCameraRecordingSessionSignificantEvent allocWithZone:a3];
  v5 = [(HMDCameraRecordingSessionSignificantEvent *)self UUID];
  v6 = [(HMDCameraRecordingSessionSignificantEvent *)v4 initWithUUID:v5];

  [(HMDCameraRecordingSessionSignificantEvent *)v6 setReason:[(HMDCameraRecordingSessionSignificantEvent *)self reason]];
  v7 = [(HMDCameraRecordingSessionSignificantEvent *)self dateOfOccurrence];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setDateOfOccurrence:v7];

  [(HMDCameraRecordingSessionSignificantEvent *)v6 setConfidenceLevel:[(HMDCameraRecordingSessionSignificantEvent *)self confidenceLevel]];
  v8 = [(HMDCameraRecordingSessionSignificantEvent *)self sessionEntityUUID];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setSessionEntityUUID:v8];

  v9 = [(HMDCameraRecordingSessionSignificantEvent *)self faceClassifications];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setFaceClassifications:v9];

  v10 = [(HMDCameraRecordingSessionSignificantEvent *)self heroFrameData];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setHeroFrameData:v10];

  v11 = [(HMDCameraRecordingSessionSignificantEvent *)self faceCropData];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setFaceCropData:v11];

  [(HMDCameraRecordingSessionSignificantEvent *)self timeOffsetWithinClip];
  [(HMDCameraRecordingSessionSignificantEvent *)v6 setTimeOffsetWithinClip:?];
  return v6;
}

- (unint64_t)hash
{
  v2 = [(HMDCameraRecordingSessionSignificantEvent *)self UUID];
  v3 = [v2 hash];

  return v3;
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
    v7 = [(HMDCameraRecordingSessionSignificantEvent *)self UUID];
    v8 = [v6 UUID];
    if ([v7 isEqual:v8] && (v9 = -[HMDCameraRecordingSessionSignificantEvent reason](self, "reason"), v9 == objc_msgSend(v6, "reason")))
    {
      v10 = [(HMDCameraRecordingSessionSignificantEvent *)self dateOfOccurrence];
      v11 = [v6 dateOfOccurrence];
      if (![v10 isEqualToDate:v11])
      {
        goto LABEL_16;
      }

      v12 = [(HMDCameraRecordingSessionSignificantEvent *)self confidenceLevel];
      if (v12 != [v6 confidenceLevel])
      {
        goto LABEL_16;
      }

      v13 = [(HMDCameraRecordingSessionSignificantEvent *)self sessionEntityUUID];
      v14 = [v6 sessionEntityUUID];
      v15 = HMFEqualObjects();

      if (v15)
      {
        v16 = [(HMDCameraRecordingSessionSignificantEvent *)self faceClassifications];
        v17 = [v6 faceClassifications];
        if ([v16 isEqualToSet:v17])
        {
          v29 = v17;
          v30 = v16;
          v18 = [(HMDCameraRecordingSessionSignificantEvent *)self heroFrameData];
          v19 = [v6 heroFrameData];
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

          v17 = v29;
          v16 = v30;
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

- (HMDCameraRecordingSessionSignificantEvent)initWithUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v16.receiver = self;
    v16.super_class = HMDCameraRecordingSessionSignificantEvent;
    v6 = [(HMDCameraRecordingSessionSignificantEvent *)&v16 init];
    if (v6)
    {
      v7 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:v5];
      UUID = v6->_UUID;
      v6->_UUID = v7;

      v6->_reason = 1;
      v9 = [MEMORY[0x277CBEAA8] date];
      dateOfOccurrence = v6->_dateOfOccurrence;
      v6->_dateOfOccurrence = v9;

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
    [(HMDHomeObjectChangeHandler *)v14 .cxx_destruct];
  }

  return result;
}

@end