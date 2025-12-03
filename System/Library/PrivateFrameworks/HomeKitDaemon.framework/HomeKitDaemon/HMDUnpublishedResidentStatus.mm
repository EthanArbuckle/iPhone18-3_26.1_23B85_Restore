@interface HMDUnpublishedResidentStatus
- (HMDUnpublishedResidentStatus)initWithVersion:(id)version generationID:(id)d preferredResidentsList:(id)list selectionInfo:(id)info connectionType:(unint64_t)type locationRawValue:(id)value hasReachableAccessories:(BOOL)accessories;
- (NSDictionary)channelRecordPayload;
- (id)description;
@end

@implementation HMDUnpublishedResidentStatus

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  swVersion = [(HMDUnpublishedResidentStatus *)self swVersion];
  generationID = [(HMDUnpublishedResidentStatus *)self generationID];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUnpublishedResidentStatus networkConnectionType](self, "networkConnectionType")}];
  locationRawValue = [(HMDUnpublishedResidentStatus *)self locationRawValue];
  preferredResidentsList = [(HMDUnpublishedResidentStatus *)self preferredResidentsList];
  [(HMDUnpublishedResidentStatus *)self hasReachableAccessories];
  v9 = HMFBooleanToString();
  v10 = [v3 stringWithFormat:@"swVer %@ generationID %@ connectionType %@ location %@ preferredResidentsList %@ hasReachableAccessories %@", swVersion, generationID, v6, locationRawValue, preferredResidentsList, v9];

  return v10;
}

- (NSDictionary)channelRecordPayload
{
  v39[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v38 = @"residentStatusSwVersionKey";
  swVersion = [(HMDUnpublishedResidentStatus *)self swVersion];
  versionString = [swVersion versionString];
  v39[0] = versionString;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v7 = [v3 dictionaryWithDictionary:v6];

  generationID = [(HMDUnpublishedResidentStatus *)self generationID];

  if (generationID)
  {
    generationID2 = [(HMDUnpublishedResidentStatus *)self generationID];
    uUIDString = [generationID2 UUIDString];
    [v7 setObject:uUIDString forKeyedSubscript:@"residentStatusGenerationIDKey"];
  }

  preferredResidentsList = [(HMDUnpublishedResidentStatus *)self preferredResidentsList];

  if (preferredResidentsList)
  {
    preferredResidentsList2 = [(HMDUnpublishedResidentStatus *)self preferredResidentsList];
    residentIDSIdentifiers = [preferredResidentsList2 residentIDSIdentifiers];
    v14 = [residentIDSIdentifiers na_map:&__block_literal_global_107174];

    v36[0] = @"PRL.ck.rii";
    v36[1] = @"PRL.ck.mt";
    v37[0] = v14;
    preferredResidentsList3 = [(HMDUnpublishedResidentStatus *)self preferredResidentsList];
    modifiedTimestamp = [preferredResidentsList3 modifiedTimestamp];
    v37[1] = modifiedTimestamp;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
    [v7 setObject:v17 forKeyedSubscript:@"RS.ck.prl"];
  }

  selectionInfo = [(HMDUnpublishedResidentStatus *)self selectionInfo];
  currentModeType = [selectionInfo currentModeType];

  if ((currentModeType & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    selectionInfo2 = [(HMDUnpublishedResidentStatus *)self selectionInfo];
    selectionTimestamp = [selectionInfo2 selectionTimestamp];
    [v7 setObject:selectionTimestamp forKeyedSubscript:@"RSI.ck.st"];

    v22 = MEMORY[0x277CCABB0];
    selectionInfo3 = [(HMDUnpublishedResidentStatus *)self selectionInfo];
    v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(selectionInfo3, "currentModeType")}];
    [v7 setObject:v24 forKeyedSubscript:@"RSI.ck.m"];

    selectionInfo4 = [(HMDUnpublishedResidentStatus *)self selectionInfo];
    preferredResidentIDSIdentifier = [selectionInfo4 preferredResidentIDSIdentifier];

    if (preferredResidentIDSIdentifier)
    {
      selectionInfo5 = [(HMDUnpublishedResidentStatus *)self selectionInfo];
      preferredResidentIDSIdentifier2 = [selectionInfo5 preferredResidentIDSIdentifier];
      hmf_bytesAsData = [preferredResidentIDSIdentifier2 hmf_bytesAsData];
      [v7 setObject:hmf_bytesAsData forKeyedSubscript:@"RSI.ck.prii"];
    }
  }

  locationRawValue = [(HMDUnpublishedResidentStatus *)self locationRawValue];
  [v7 setObject:locationRawValue forKeyedSubscript:@"RS.ck.rl"];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUnpublishedResidentStatus networkConnectionType](self, "networkConnectionType")}];
  [v7 setObject:v31 forKeyedSubscript:@"RS.ck.nw"];

  v32 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUnpublishedResidentStatus hasReachableAccessories](self, "hasReachableAccessories")}];
  [v7 setObject:v32 forKeyedSubscript:@"RS.ck.acc"];

  v33 = [v7 copy];
  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (HMDUnpublishedResidentStatus)initWithVersion:(id)version generationID:(id)d preferredResidentsList:(id)list selectionInfo:(id)info connectionType:(unint64_t)type locationRawValue:(id)value hasReachableAccessories:(BOOL)accessories
{
  versionCopy = version;
  dCopy = d;
  listCopy = list;
  infoCopy = info;
  valueCopy = value;
  v24.receiver = self;
  v24.super_class = HMDUnpublishedResidentStatus;
  v19 = [(HMDUnpublishedResidentStatus *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_swVersion, version);
    objc_storeStrong(&v20->_generationID, d);
    objc_storeStrong(&v20->_preferredResidentsList, list);
    objc_storeStrong(&v20->_selectionInfo, info);
    v20->_networkConnectionType = type;
    objc_storeStrong(&v20->_locationRawValue, value);
    v20->_hasReachableAccessories = accessories;
  }

  return v20;
}

@end