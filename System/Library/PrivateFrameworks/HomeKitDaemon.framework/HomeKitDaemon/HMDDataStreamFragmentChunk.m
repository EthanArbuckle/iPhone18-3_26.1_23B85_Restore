@interface HMDDataStreamFragmentChunk
- (BOOL)isEqual:(id)a3;
- (HMDDataStreamFragmentChunk)initWithData:(id)a3 sequenceNumber:(id)a4 fragmentSequenceNumber:(id)a5 type:(id)a6 isLast:(BOOL)a7;
- (HMDDataStreamFragmentChunk)initWithDictionaryRepresentation:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDDataStreamFragmentChunk

- (unint64_t)hash
{
  v3 = [(HMDDataStreamFragmentChunk *)self data];
  v4 = [v3 hash];

  v5 = [(HMDDataStreamFragmentChunk *)self sequenceNumber];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMDDataStreamFragmentChunk *)self fragmentSequenceNumber];
  v8 = [v7 hash];

  v9 = [(HMDDataStreamFragmentChunk *)self type];
  v10 = v6 ^ v8 ^ [v9 hash];

  return v10 ^ [(HMDDataStreamFragmentChunk *)self isLast];
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
  v7 = v6;
  if (v6)
  {
    v8 = [v6 data];
    v9 = [(HMDDataStreamFragmentChunk *)self data];
    if ([v8 isEqualToData:v9])
    {
      v10 = [v7 sequenceNumber];
      v11 = [(HMDDataStreamFragmentChunk *)self sequenceNumber];
      if ([v10 isEqualToNumber:v11])
      {
        v12 = [v7 fragmentSequenceNumber];
        v13 = [(HMDDataStreamFragmentChunk *)self fragmentSequenceNumber];
        if ([v12 isEqualToNumber:v13])
        {
          v14 = [v7 type];
          v15 = [(HMDDataStreamFragmentChunk *)self type];
          v21 = v14;
          v16 = v14;
          v17 = v15;
          if ([v16 isEqualToString:v15])
          {
            v20 = [v7 isLast];
            v18 = v20 ^ [(HMDDataStreamFragmentChunk *)self isLast]^ 1;
          }

          else
          {
            LOBYTE(v18) = 0;
          }
        }

        else
        {
          LOBYTE(v18) = 0;
        }
      }

      else
      {
        LOBYTE(v18) = 0;
      }
    }

    else
    {
      LOBYTE(v18) = 0;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (id)attributeDescriptions
{
  v23[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = MEMORY[0x277CCABB0];
  v22 = [(HMDDataStreamFragmentChunk *)self data];
  v21 = [v4 numberWithUnsignedInteger:{objc_msgSend(v22, "length")}];
  v5 = [v3 initWithName:@"Data Length" value:v21];
  v23[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDDataStreamFragmentChunk *)self sequenceNumber];
  v8 = [v6 initWithName:@"Sequence Number" value:v7];
  v23[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDDataStreamFragmentChunk *)self fragmentSequenceNumber];
  v11 = [v9 initWithName:@"Fragment Sequence Number" value:v10];
  v23[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMDDataStreamFragmentChunk *)self type];
  v14 = [v12 initWithName:@"Type" value:v13];
  v23[3] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDataStreamFragmentChunk *)self isLast];
  v16 = HMFBooleanToString();
  v17 = [v15 initWithName:@"Is Last" value:v16];
  v23[4] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:5];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (NSDictionary)dictionaryRepresentation
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"metadata";
  v12[0] = @"dataChunkSequenceNumber";
  v3 = [(HMDDataStreamFragmentChunk *)self sequenceNumber];
  v13[0] = v3;
  v12[1] = @"dataSequenceNumber";
  v4 = [(HMDDataStreamFragmentChunk *)self fragmentSequenceNumber];
  v13[1] = v4;
  v12[2] = @"dataType";
  v5 = [(HMDDataStreamFragmentChunk *)self type];
  v13[2] = v5;
  v12[3] = @"isLastDataChunk";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDDataStreamFragmentChunk isLast](self, "isLast")}];
  v13[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];
  v14[1] = @"data";
  v15[0] = v7;
  v8 = [(HMDDataStreamFragmentChunk *)self data];
  v15[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDDataStreamFragmentChunk)initWithDictionaryRepresentation:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hmf_dataForKey:@"data"];
  if (v5)
  {
    v6 = [v4 hmf_dictionaryForKey:@"metadata"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 hmf_numberForKey:@"dataChunkSequenceNumber"];
      if (v8)
      {
        v9 = [v7 hmf_numberForKey:@"dataSequenceNumber"];
        if (v9)
        {
          v10 = [v7 hmf_stringForKey:@"dataType"];
          if (v10)
          {
            v11 = [v7 hmf_numberForKey:@"isLastDataChunk"];
            v12 = v11;
            if (v11)
            {
              v13 = -[HMDDataStreamFragmentChunk initWithData:sequenceNumber:fragmentSequenceNumber:type:isLast:](self, "initWithData:sequenceNumber:fragmentSequenceNumber:type:isLast:", v5, v8, v9, v10, [v11 BOOLValue]);
              v14 = v13;
            }

            else
            {
              context = objc_autoreleasePoolPush();
              v13 = self;
              v30 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v33 = HMFGetLogIdentifier();
                *buf = 138543874;
                v37 = v33;
                v38 = 2112;
                v39 = @"isLastDataChunk";
                v40 = 2112;
                v41 = v4;
                _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Could not determine isLast (key=%@) from stream data dictionary: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(context);
              v14 = 0;
            }
          }

          else
          {
            v27 = objc_autoreleasePoolPush();
            v13 = self;
            v28 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v29 = contexta = v27;
              *buf = 138543874;
              v37 = v29;
              v38 = 2112;
              v39 = @"dataType";
              v40 = 2112;
              v41 = v4;
              _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Could not determine type (key=%@) from stream data dictionary: %@", buf, 0x20u);

              v27 = contexta;
            }

            objc_autoreleasePoolPop(v27);
            v14 = 0;
          }
        }

        else
        {
          v24 = objc_autoreleasePoolPush();
          v13 = self;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543874;
            v37 = v26;
            v38 = 2112;
            v39 = @"dataSequenceNumber";
            v40 = 2112;
            v41 = v4;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Could not determine fragment sequence number (key=%@) from stream data dictionary: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v24);
          v14 = 0;
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v13 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543874;
          v37 = v23;
          v38 = 2112;
          v39 = @"dataChunkSequenceNumber";
          v40 = 2112;
          v41 = v4;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Could not determine sequence number (key=%@) from stream data dictionary: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
        v14 = 0;
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v13 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v37 = v20;
        v38 = 2112;
        v39 = @"metadata";
        v40 = 2112;
        v41 = v4;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Could not determine metadata (key=%@) from stream data dictionary: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v14 = 0;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v13 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543874;
      v37 = v17;
      v38 = 2112;
      v39 = @"data";
      v40 = 2112;
      v41 = v4;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Could not determine data (key=%@) from stream data dictionary: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v14;
}

- (HMDDataStreamFragmentChunk)initWithData:(id)a3 sequenceNumber:(id)a4 fragmentSequenceNumber:(id)a5 type:(id)a6 isLast:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (!v13)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v14)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v15)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v17 = v16;
  if (!v16)
  {
LABEL_11:
    v27 = _HMFPreconditionFailure();
    [(HMDAudioAnalysisBulletinNotificationManager *)v27 .cxx_destruct];
    return result;
  }

  v29.receiver = self;
  v29.super_class = HMDDataStreamFragmentChunk;
  v18 = [(HMDDataStreamFragmentChunk *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_data, a3);
    v20 = [v14 copy];
    sequenceNumber = v19->_sequenceNumber;
    v19->_sequenceNumber = v20;

    v22 = [v15 copy];
    fragmentSequenceNumber = v19->_fragmentSequenceNumber;
    v19->_fragmentSequenceNumber = v22;

    v24 = [v17 copy];
    type = v19->_type;
    v19->_type = v24;

    v19->_last = a7;
  }

  return v19;
}

@end