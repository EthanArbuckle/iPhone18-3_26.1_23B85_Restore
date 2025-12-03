@interface HMDResidentStatus
- (BOOL)hasChangedFrom:(id)from;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPrimary;
- (HMDResidentStatus)initWithChannelRecord:(id)record;
- (HMDResidentStatus)initWithIDSIdentifier:(id)identifier idsDestination:(id)destination version:(id)version generationID:(id)d assertionTime:(id)time preferredResidentsList:(id)list selectionInfo:(id)info connectionType:(unint64_t)self0 locationRawValue:(id)self1 hasReachableAccessories:(BOOL)self2;
- (id)description;
- (id)matchingDeviceFromResidentDevices:(id)devices;
- (unint64_t)hash;
@end

@implementation HMDResidentStatus

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  idsIdentifier = [(HMDResidentStatus *)self idsIdentifier];
  idsDestination = [(HMDResidentStatus *)self idsDestination];
  assertionTime = [(HMDResidentStatus *)self assertionTime];
  swVersion = [(HMDResidentStatus *)self swVersion];
  generationID = [(HMDResidentStatus *)self generationID];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDResidentStatus networkConnectionType](self, "networkConnectionType")}];
  v10 = StringFromHMDResidentLocation([(HMDResidentStatus *)self location]);
  preferredResidentsList = [(HMDResidentStatus *)self preferredResidentsList];
  v12 = [v3 stringWithFormat:@"%@ %@ assertionTime: %@ swVer %@ generationID %@ connectionType %@ location %@ preferredResidentsList %@", idsIdentifier, idsDestination, assertionTime, swVersion, generationID, v9, v10, preferredResidentsList];

  return v12;
}

- (BOOL)isPrimary
{
  generationID = [(HMDResidentStatus *)self generationID];
  v3 = generationID != 0;

  return v3;
}

- (BOOL)hasChangedFrom:(id)from
{
  fromCopy = from;
  idsIdentifier = [(HMDResidentStatus *)self idsIdentifier];
  idsIdentifier2 = [fromCopy idsIdentifier];
  if ([idsIdentifier isEqual:idsIdentifier2])
  {
    idsDestination = [(HMDResidentStatus *)self idsDestination];
    idsDestination2 = [fromCopy idsDestination];
    if ([idsDestination isEqual:idsDestination2])
    {
      swVersion = [(HMDResidentStatus *)self swVersion];
      swVersion2 = [fromCopy swVersion];
      if ([swVersion isEqual:swVersion2])
      {
        v26 = swVersion;
        generationID = [(HMDResidentStatus *)self generationID];
        generationID2 = [fromCopy generationID];
        v13 = HMFEqualObjects();

        if (!v13)
        {
          goto LABEL_13;
        }

        assertionTime = [(HMDResidentStatus *)self assertionTime];
        assertionTime2 = [fromCopy assertionTime];
        v16 = HMFEqualObjects();

        if (!v16)
        {
          goto LABEL_13;
        }

        preferredResidentsList = [(HMDResidentStatus *)self preferredResidentsList];
        preferredResidentsList2 = [fromCopy preferredResidentsList];
        v19 = HMFEqualObjects();

        if (!v19)
        {
          goto LABEL_13;
        }

        networkConnectionType = [(HMDResidentStatus *)self networkConnectionType];
        if (networkConnectionType == [fromCopy networkConnectionType])
        {
          locationRawValue = [(HMDResidentStatus *)self locationRawValue];
          locationRawValue2 = [fromCopy locationRawValue];
          if ([locationRawValue isEqualToNumber:locationRawValue2])
          {
            hasReachableAccessories = [(HMDResidentStatus *)self hasReachableAccessories];
            v24 = hasReachableAccessories ^ [fromCopy hasReachableAccessories];
          }

          else
          {
            LOBYTE(v24) = 1;
          }

          swVersion = v26;
        }

        else
        {
LABEL_13:
          LOBYTE(v24) = 1;
          swVersion = v26;
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
  idsIdentifier = [(HMDResidentStatus *)self idsIdentifier];
  v3 = [idsIdentifier hash];

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
    idsIdentifier = [(HMDResidentStatus *)self idsIdentifier];
    idsIdentifier2 = [v6 idsIdentifier];
    if ([idsIdentifier isEqual:idsIdentifier2])
    {
      idsDestination = [(HMDResidentStatus *)self idsDestination];
      idsDestination2 = [v6 idsDestination];
      v11 = [idsDestination isEqual:idsDestination2];
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

- (id)matchingDeviceFromResidentDevices:(id)devices
{
  devicesCopy = devices;
  idsIdentifier = [(HMDResidentStatus *)self idsIdentifier];
  idsDestination = [(HMDResidentStatus *)self idsDestination];
  v7 = [HMDDeviceAddress addressWithIDSIdentifier:idsIdentifier idsDestination:idsDestination];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HMDResidentStatus_matchingDeviceFromResidentDevices___block_invoke;
  v11[3] = &unk_2786850E0;
  v12 = v7;
  v8 = v7;
  v9 = [devicesCopy na_firstObjectPassingTest:v11];

  return v9;
}

- (HMDResidentStatus)initWithChannelRecord:(id)record
{
  v62 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  payload = [recordCopy payload];
  v6 = [payload hmf_stringForKey:@"residentStatusSwVersionKey"];

  payload2 = [recordCopy payload];
  v8 = [payload2 hmf_UUIDForKey:@"residentStatusGenerationIDKey"];

  v9 = [[HMDHomeKitVersion alloc] initWithString:v6];
  if (v9)
  {
    payload3 = [recordCopy payload];
    v11 = [payload3 hmf_dictionaryForKey:@"RS.ck.prl"];

    selfCopy = self;
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
        selfCopy2 = self;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v28 = v52 = v25;
          payload4 = [recordCopy payload];
          *buf = 138543618;
          v59 = v28;
          v60 = 2112;
          v61 = payload4;
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

    payload5 = [recordCopy payload];
    v31 = [payload5 hmf_dateForKey:@"RSI.ck.st"];

    v56 = v6;
    v53 = v11;
    v50 = v31;
    if (v31)
    {
      payload6 = [recordCopy payload];
      v33 = [payload6 hmf_dataForKey:@"RSI.ck.prii"];

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

    payload7 = [recordCopy payload];
    v37 = [payload7 hmf_numberForKey:@"RS.ck.rl"];

    if (v37)
    {
      v38 = v37;
    }

    else
    {
      v38 = &unk_283E72A40;
    }

    payload8 = [recordCopy payload];
    v40 = [payload8 hmf_numberForKey:@"RS.ck.nw"];
    unsignedIntegerValue = [v40 unsignedIntegerValue];

    payload9 = [recordCopy payload];
    LOBYTE(v40) = [payload9 hmf_BOOLForKey:@"RS.ck.acc"];

    idsIdentifier = [recordCopy idsIdentifier];
    idsDestination = [recordCopy idsDestination];
    assertionTime = [recordCopy assertionTime];
    LOBYTE(v49) = v40;
    v48 = unsignedIntegerValue;
    v8 = v55;
    selfCopy3 = [(HMDResidentStatus *)selfCopy initWithIDSIdentifier:idsIdentifier idsDestination:idsDestination version:v9 generationID:v55 assertionTime:assertionTime preferredResidentsList:v51 selectionInfo:v35 connectionType:v48 locationRawValue:v38 hasReachableAccessories:v49];

    v24 = selfCopy3;
    v6 = v56;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      payload10 = [recordCopy payload];
      *buf = 138543618;
      v59 = v22;
      v60 = 2112;
      v61 = payload10;
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

- (HMDResidentStatus)initWithIDSIdentifier:(id)identifier idsDestination:(id)destination version:(id)version generationID:(id)d assertionTime:(id)time preferredResidentsList:(id)list selectionInfo:(id)info connectionType:(unint64_t)self0 locationRawValue:(id)self1 hasReachableAccessories:(BOOL)self2
{
  identifierCopy = identifier;
  destinationCopy = destination;
  versionCopy = version;
  dCopy = d;
  timeCopy = time;
  listCopy = list;
  infoCopy = info;
  valueCopy = value;
  v30.receiver = self;
  v30.super_class = HMDResidentStatus;
  v21 = [(HMDResidentStatus *)&v30 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_idsIdentifier, identifier);
    objc_storeStrong(&v22->_idsDestination, destination);
    objc_storeStrong(&v22->_swVersion, version);
    objc_storeStrong(&v22->_generationID, d);
    objc_storeStrong(&v22->_assertionTime, time);
    objc_storeStrong(&v22->_preferredResidentsList, list);
    objc_storeStrong(&v22->_selectionInfo, info);
    v22->_networkConnectionType = type;
    objc_storeStrong(&v22->_locationRawValue, value);
    v22->_location = [valueCopy unsignedIntegerValue];
    v22->_hasReachableAccessories = accessories;
  }

  return v22;
}

@end