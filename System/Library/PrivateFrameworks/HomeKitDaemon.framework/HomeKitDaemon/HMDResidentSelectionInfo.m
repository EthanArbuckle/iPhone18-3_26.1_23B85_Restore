@interface HMDResidentSelectionInfo
- (HMDResidentSelectionInfo)initWithPreferredResidentIDSIdentifier:(id)a3 currentResidentSelectionModeType:(unint64_t)a4 selectionTimestamp:(id)a5;
- (id)description;
@end

@implementation HMDResidentSelectionInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDResidentSelectionInfo *)self preferredResidentIDSIdentifier];
  v5 = [(HMDResidentSelectionInfo *)self currentModeType];
  v6 = [(HMDResidentSelectionInfo *)self selectionTimestamp];
  v7 = [v6 localTimeDescription];
  v8 = [v3 stringWithFormat:@"Preferred resident IDS identifier: %@, Mode: %lu, Selection Timestamp: %@", v4, v5, v7];

  return v8;
}

- (HMDResidentSelectionInfo)initWithPreferredResidentIDSIdentifier:(id)a3 currentResidentSelectionModeType:(unint64_t)a4 selectionTimestamp:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = HMDResidentSelectionInfo;
  v10 = [(HMDResidentSelectionInfo *)&v15 init];
  preferredResidentIDSIdentifier = v10->_preferredResidentIDSIdentifier;
  v10->_preferredResidentIDSIdentifier = v8;
  v12 = v8;

  selectionTimestamp = v10->_selectionTimestamp;
  v10->_currentModeType = a4;
  v10->_selectionTimestamp = v9;

  return v10;
}

@end