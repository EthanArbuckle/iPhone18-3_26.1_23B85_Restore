@interface HMDResidentStatus
- (BOOL)hasChangedFrom:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPrimary;
- (HMDResidentStatus)initWithChannelRecord:(id)a3;
- (HMDResidentStatus)initWithIDSIdentifier:(id)a3 idsDestination:(id)a4 version:(id)a5 generationID:(id)a6 assertionTime:(id)a7 preferredResidentsList:(id)a8 selectionInfo:(id)a9 connectionType:(unint64_t)a10 locationRawValue:(id)a11 hasReachableAccessories:(BOOL)a12;
- (id)description;
- (id)matchingDeviceFromResidentDevices:(id)a3;
- (unint64_t)hash;
@end

@implementation HMDResidentStatus

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDResidentStatus *)self idsIdentifier];
  v5 = [(HMDResidentStatus *)self idsDestination];
  v6 = [(HMDResidentStatus *)self assertionTime];
  v7 = [(HMDResidentStatus *)self swVersion];
  v8 = [(HMDResidentStatus *)self generationID];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDResidentStatus networkConnectionType](self, "networkConnectionType")}];
  v10 = StringFromHMDResidentLocation([(HMDResidentStatus *)self location]);
  v11 = [(HMDResidentStatus *)self preferredResidentsList];
  v12 = [v3 stringWithFormat:@"%@ %@ assertionTime: %@ swVer %@ generationID %@ connectionType %@ location %@ preferredResidentsList %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BOOL)isPrimary
{
  v2 = [(HMDResidentStatus *)self generationID];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasChangedFrom:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentStatus *)self idsIdentifier];
  v6 = [v4 idsIdentifier];
  if ([v5 isEqual:v6])
  {
    v7 = [(HMDResidentStatus *)self idsDestination];
    v8 = [v4 idsDestination];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMDResidentStatus *)self swVersion];
      v10 = [v4 swVersion];
      if ([v9 isEqual:v10])
      {
        v26 = v9;
        v11 = [(HMDResidentStatus *)self generationID];
        v12 = [v4 generationID];
        v13 = HMFEqualObjects();

        if (!v13)
        {
          goto LABEL_13;
        }

        v14 = [(HMDResidentStatus *)self assertionTime];
        v15 = [v4 assertionTime];
        v16 = HMFEqualObjects();

        if (!v16)
        {
          goto LABEL_13;
        }

        v17 = [(HMDResidentStatus *)self preferredResidentsList];
        v18 = [v4 preferredResidentsList];
        v19 = HMFEqualObjects();

        if (!v19)
        {
          goto LABEL_13;
        }

        v20 = [(HMDResidentStatus *)self networkConnectionType];
        if (v20 == [v4 networkConnectionType])
        {
          v21 = [(HMDResidentStatus *)self locationRawValue];
          v22 = [v4 locationRawValue];
          if ([v21 isEqualToNumber:v22])
          {
            v23 = [(HMDResidentStatus *)self hasReachableAccessories];
            v24 = v23 ^ [v4 hasReachableAccessories];
          }

          else
          {
            LOBYTE(v24) = 1;
          }

          v9 = v26;
        }

        else
        {
LABEL_13:
          LOBYTE(v24) = 1;
          v9 = v26;
        }
      }

      else
      {
        LOBYTE(v24) = 1;
      }
    }

    else
    {
      LOBYTE(v24) = 0;
    }
  }

  else
  {
    LOBYTE(v24) = 0;
  }

  return v24;
}

- (unint64_t)hash
{
  v2 = [(HMDResidentStatus *)self idsIdentifier];
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
    v7 = [(HMDResidentStatus *)self idsIdentifier];
    v8 = [v6 idsIdentifier];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMDResidentStatus *)self idsDestination];
      v10 = [v6 idsDestination];
      v11 = [v9 isEqual:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)matchingDeviceFromResidentDevices:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentStatus *)self idsIdentifier];
  v6 = [(HMDResidentStatus *)self idsDestination];
  v7 = [HMDDeviceAddress addressWithIDSIdentifier:v5 idsDestination:v6];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HMDResidentStatus_matchingDeviceFromResidentDevices___block_invoke;
  v11[3] = &unk_2786850E0;
  v12 = v7;
  v8 = v7;
  v9 = [v4 na_firstObjectPassingTest:v11];

  return v9;
}

- (HMDResidentStatus)initWithChannelRecord:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 payload];
  v6 = [v5 hmf_stringForKey:@"residentStatusSwVersionKey"];

  v7 = [v4 payload];
  v8 = [v7 hmf_UUIDForKey:@"residentStatusGenerationIDKey"];

  v9 = [[HMDHomeKitVersion alloc] initWithString:v6];
  if (v9)
  {
    v10 = [v4 payload];
    v11 = [v10 hmf_dictionaryForKey:@"RS.ck.prl"];

    v54 = self;
    v55 = v8;
    if (v11)
    {
      v12 = MEMORY[0x277CBEB98];
      v57 = objc_opt_class();
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
      v14 = [v12 setWithArray:v13];
      v15 = [v11 hmf_arrayForKey:@"PRL.ck.rii" ofClasses:v14];

      v16 = [v11 hmf_dateForKey:@"PRL.ck.mt"];
      v17 = v16;
      if (v15 && v16)
      {
        v18 = [v15 na_map:&__block_literal_global_148_107236];
        v51 = [[HMDPreferredResidentsList alloc] initWithResidentIDSIdentifiers:v18 modifiedTimestamp:v17];
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = self;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v28 = v52 = v25;
          v29 = [v4 payload];
          *buf = 138543618;
          v59 = v28;
          v60 = 2112;
          v61 = v29;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to create preferred residents list from invalid record %@", buf, 0x16u);

          v25 = v52;
        }

        objc_autoreleasePoolPop(v25);
        v51 = 0;
      }
    }

    else
    {
      v51 = 0;
    }

    v30 = [v4 payload];
    v31 = [v30 hmf_dateForKey:@"RSI.ck.st"];

    v56 = v6;
    v53 = v11;
    v50 = v31;
    if (v31)
    {
      v32 = [v4 payload];
      v33 = [v32 hmf_dataForKey:@"RSI.ck.prii"];

      if (v33)
      {
        v34 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v33, "bytes")}];
      }

      else
      {
        v34 = 0;
      }

      v35 = [[HMDResidentSelectionInfo alloc] initWithPreferredResidentIDSIdentifier:v34 selectionTimestamp:v31];
    }

    else
    {
      v35 = 0;
    }

    v36 = [v4 payload];
    v37 = [v36 hmf_numberForKey:@"RS.ck.rl"];

    if (v37)
    {
      v38 = v37;
    }

    else
    {
      v38 = &unk_283E72A40;
    }

    v39 = [v4 payload];
    v40 = [v39 hmf_numberForKey:@"RS.ck.nw"];
    v41 = [v40 unsignedIntegerValue];

    v42 = [v4 payload];
    LOBYTE(v40) = [v42 hmf_BOOLForKey:@"RS.ck.acc"];

    v43 = [v4 idsIdentifier];
    v44 = [v4 idsDestination];
    v45 = [v4 assertionTime];
    LOBYTE(v49) = v40;
    v48 = v41;
    v8 = v55;
    v20 = [(HMDResidentStatus *)v54 initWithIDSIdentifier:v43 idsDestination:v44 version:v9 generationID:v55 assertionTime:v45 preferredResidentsList:v51 selectionInfo:v35 connectionType:v48 locationRawValue:v38 hasReachableAccessories:v49];

    v24 = v20;
    v6 = v56;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v4 payload];
      *buf = 138543618;
      v59 = v22;
      v60 = 2112;
      v61 = v23;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to create resident status from invalid record %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v24 = 0;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v24;
}

id __43__HMDResidentStatus_initWithChannelRecord___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 bytes];

  v6 = [v4 initWithUUIDBytes:v5];

  return v6;
}

- (HMDResidentStatus)initWithIDSIdentifier:(id)a3 idsDestination:(id)a4 version:(id)a5 generationID:(id)a6 assertionTime:(id)a7 preferredResidentsList:(id)a8 selectionInfo:(id)a9 connectionType:(unint64_t)a10 locationRawValue:(id)a11 hasReachableAccessories:(BOOL)a12
{
  v19 = a3;
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v26 = a7;
  v25 = a8;
  v24 = a9;
  v20 = a11;
  v30.receiver = self;
  v30.super_class = HMDResidentStatus;
  v21 = [(HMDResidentStatus *)&v30 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_idsIdentifier, a3);
    objc_storeStrong(&v22->_idsDestination, a4);
    objc_storeStrong(&v22->_swVersion, a5);
    objc_storeStrong(&v22->_generationID, a6);
    objc_storeStrong(&v22->_assertionTime, a7);
    objc_storeStrong(&v22->_preferredResidentsList, a8);
    objc_storeStrong(&v22->_selectionInfo, a9);
    v22->_networkConnectionType = a10;
    objc_storeStrong(&v22->_locationRawValue, a11);
    v22->_location = [v20 unsignedIntegerValue];
    v22->_hasReachableAccessories = a12;
  }

  return v22;
}

@end