@interface HMDResidentSelectionInfo
- (HMDResidentSelectionInfo)initWithPreferredResidentIDSIdentifier:(id)identifier currentResidentSelectionModeType:(unint64_t)type selectionTimestamp:(id)timestamp;
- (id)description;
@end

@implementation HMDResidentSelectionInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  preferredResidentIDSIdentifier = [(HMDResidentSelectionInfo *)self preferredResidentIDSIdentifier];
  currentModeType = [(HMDResidentSelectionInfo *)self currentModeType];
  selectionTimestamp = [(HMDResidentSelectionInfo *)self selectionTimestamp];
  localTimeDescription = [selectionTimestamp localTimeDescription];
  v8 = [v3 stringWithFormat:@"Preferred resident IDS identifier: %@, Mode: %lu, Selection Timestamp: %@", preferredResidentIDSIdentifier, currentModeType, localTimeDescription];

  return v8;
}

- (HMDResidentSelectionInfo)initWithPreferredResidentIDSIdentifier:(id)identifier currentResidentSelectionModeType:(unint64_t)type selectionTimestamp:(id)timestamp
{
  identifierCopy = identifier;
  timestampCopy = timestamp;
  v15.receiver = self;
  v15.super_class = HMDResidentSelectionInfo;
  v10 = [(HMDResidentSelectionInfo *)&v15 init];
  preferredResidentIDSIdentifier = v10->_preferredResidentIDSIdentifier;
  v10->_preferredResidentIDSIdentifier = identifierCopy;
  v12 = identifierCopy;

  selectionTimestamp = v10->_selectionTimestamp;
  v10->_currentModeType = type;
  v10->_selectionTimestamp = timestampCopy;

  return v10;
}

@end