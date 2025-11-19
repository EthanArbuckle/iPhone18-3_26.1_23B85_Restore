@interface HMDUnpublishedResidentStatus
- (HMDUnpublishedResidentStatus)initWithVersion:(id)a3 generationID:(id)a4 preferredResidentsList:(id)a5 selectionInfo:(id)a6 connectionType:(unint64_t)a7 locationRawValue:(id)a8 hasReachableAccessories:(BOOL)a9;
- (NSDictionary)channelRecordPayload;
- (id)description;
@end

@implementation HMDUnpublishedResidentStatus

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDUnpublishedResidentStatus *)self swVersion];
  v5 = [(HMDUnpublishedResidentStatus *)self generationID];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUnpublishedResidentStatus networkConnectionType](self, "networkConnectionType")}];
  v7 = [(HMDUnpublishedResidentStatus *)self locationRawValue];
  v8 = [(HMDUnpublishedResidentStatus *)self preferredResidentsList];
  [(HMDUnpublishedResidentStatus *)self hasReachableAccessories];
  v9 = HMFBooleanToString();
  v10 = [v3 stringWithFormat:@"swVer %@ generationID %@ connectionType %@ location %@ preferredResidentsList %@ hasReachableAccessories %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (NSDictionary)channelRecordPayload
{
  v39[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v38 = @"residentStatusSwVersionKey";
  v4 = [(HMDUnpublishedResidentStatus *)self swVersion];
  v5 = [v4 versionString];
  v39[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v7 = [v3 dictionaryWithDictionary:v6];

  v8 = [(HMDUnpublishedResidentStatus *)self generationID];

  if (v8)
  {
    v9 = [(HMDUnpublishedResidentStatus *)self generationID];
    v10 = [v9 UUIDString];
    [v7 setObject:v10 forKeyedSubscript:@"residentStatusGenerationIDKey"];
  }

  v11 = [(HMDUnpublishedResidentStatus *)self preferredResidentsList];

  if (v11)
  {
    v12 = [(HMDUnpublishedResidentStatus *)self preferredResidentsList];
    v13 = [v12 residentIDSIdentifiers];
    v14 = [v13 na_map:&__block_literal_global_107174];

    v36[0] = @"PRL.ck.rii";
    v36[1] = @"PRL.ck.mt";
    v37[0] = v14;
    v15 = [(HMDUnpublishedResidentStatus *)self preferredResidentsList];
    v16 = [v15 modifiedTimestamp];
    v37[1] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
    [v7 setObject:v17 forKeyedSubscript:@"RS.ck.prl"];
  }

  v18 = [(HMDUnpublishedResidentStatus *)self selectionInfo];
  v19 = [v18 currentModeType];

  if ((v19 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v20 = [(HMDUnpublishedResidentStatus *)self selectionInfo];
    v21 = [v20 selectionTimestamp];
    [v7 setObject:v21 forKeyedSubscript:@"RSI.ck.st"];

    v22 = MEMORY[0x277CCABB0];
    v23 = [(HMDUnpublishedResidentStatus *)self selectionInfo];
    v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(v23, "currentModeType")}];
    [v7 setObject:v24 forKeyedSubscript:@"RSI.ck.m"];

    v25 = [(HMDUnpublishedResidentStatus *)self selectionInfo];
    v26 = [v25 preferredResidentIDSIdentifier];

    if (v26)
    {
      v27 = [(HMDUnpublishedResidentStatus *)self selectionInfo];
      v28 = [v27 preferredResidentIDSIdentifier];
      v29 = [v28 hmf_bytesAsData];
      [v7 setObject:v29 forKeyedSubscript:@"RSI.ck.prii"];
    }
  }

  v30 = [(HMDUnpublishedResidentStatus *)self locationRawValue];
  [v7 setObject:v30 forKeyedSubscript:@"RS.ck.rl"];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUnpublishedResidentStatus networkConnectionType](self, "networkConnectionType")}];
  [v7 setObject:v31 forKeyedSubscript:@"RS.ck.nw"];

  v32 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUnpublishedResidentStatus hasReachableAccessories](self, "hasReachableAccessories")}];
  [v7 setObject:v32 forKeyedSubscript:@"RS.ck.acc"];

  v33 = [v7 copy];
  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (HMDUnpublishedResidentStatus)initWithVersion:(id)a3 generationID:(id)a4 preferredResidentsList:(id)a5 selectionInfo:(id)a6 connectionType:(unint64_t)a7 locationRawValue:(id)a8 hasReachableAccessories:(BOOL)a9
{
  v16 = a3;
  v17 = a4;
  v23 = a5;
  v22 = a6;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = HMDUnpublishedResidentStatus;
  v19 = [(HMDUnpublishedResidentStatus *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_swVersion, a3);
    objc_storeStrong(&v20->_generationID, a4);
    objc_storeStrong(&v20->_preferredResidentsList, a5);
    objc_storeStrong(&v20->_selectionInfo, a6);
    v20->_networkConnectionType = a7;
    objc_storeStrong(&v20->_locationRawValue, a8);
    v20->_hasReachableAccessories = a9;
  }

  return v20;
}

@end