@interface IMReadReceiptPipelineParameter
- (IMReadReceiptPipelineParameter)initWithBD:(id)d idsTrustedData:(id)data;
- (id)description;
@end

@implementation IMReadReceiptPipelineParameter

- (IMReadReceiptPipelineParameter)initWithBD:(id)d idsTrustedData:(id)data
{
  dCopy = d;
  dataCopy = data;
  v42.receiver = self;
  v42.super_class = IMReadReceiptPipelineParameter;
  v8 = [(IMReadReceiptPipelineParameter *)&v42 init];
  if (v8)
  {
    metadata = [dCopy metadata];
    messageGUID = [metadata messageGUID];
    uUIDString = [messageGUID UUIDString];

    timestamp = [metadata timestamp];
    [(IMReadReceiptPipelineParameter *)v8 setGUID:uUIDString];
    has_timestamp = [metadata has_timestamp];
    v14 = MEMORY[0x277CCABB0];
    if (has_timestamp)
    {
      date = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:timestamp];
      [(IMReadReceiptPipelineParameter *)v8 setTimestamp:date];
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v16 = [v14 numberWithDouble:?];
      [(IMReadReceiptPipelineParameter *)v8 setTimestamp:v16];
    }

    storageContext = [metadata storageContext];
    -[IMReadReceiptPipelineParameter setIsFromStorage:](v8, "setIsFromStorage:", [storageContext isFromStorage]);

    storageContext2 = [metadata storageContext];
    -[IMReadReceiptPipelineParameter setIsLastFromStorage:](v8, "setIsLastFromStorage:", [storageContext2 isLastFromStorage]);

    fromIdentifier = [dataCopy fromIdentifier];
    fromIdentifier = v8->_fromIdentifier;
    v8->_fromIdentifier = fromIdentifier;

    toIdentifier = [dataCopy toIdentifier];
    toIdentifier = v8->_toIdentifier;
    v8->_toIdentifier = toIdentifier;

    batchContext = [dataCopy batchContext];
    batchContext = v8->_batchContext;
    v8->_batchContext = batchContext;

    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isEnhancedReadReceiptProcessingEnabled = [mEMORY[0x277D1A9B8] isEnhancedReadReceiptProcessingEnabled];

    if (isEnhancedReadReceiptProcessingEnabled)
    {
      participantDestinationIdentifiers = [dCopy participantDestinationIdentifiers];
      v28 = [participantDestinationIdentifiers count];

      if (v28)
      {
        participantDestinationIdentifiers2 = [dCopy participantDestinationIdentifiers];
        participantIdentifiers = v8->_participantIdentifiers;
        v8->_participantIdentifiers = participantDestinationIdentifiers2;
      }

      groupID = [dCopy groupID];
      v32 = [groupID length];

      if (v32)
      {
        groupID2 = [dCopy groupID];
        groupID = v8->_groupID;
        v8->_groupID = groupID2;
      }

      groupName = [dCopy groupName];
      v36 = [groupName length];

      if (v36)
      {
        groupName2 = [dCopy groupName];
        groupName = v8->_groupName;
        v8->_groupName = groupName2;
      }

      if ([dCopy has_originalMessageTimestamp])
      {
        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(dCopy, "originalMessageTimestamp")}];
        originalMessageTimestamp = v8->_originalMessageTimestamp;
        v8->_originalMessageTimestamp = v39;
      }
    }
  }

  return v8;
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  gUID = [(IMReadReceiptPipelineParameter *)self GUID];
  timestamp = [(IMReadReceiptPipelineParameter *)self timestamp];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMReadReceiptPipelineParameter isFromStorage](self, "isFromStorage")}];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMReadReceiptPipelineParameter isLastFromStorage](self, "isLastFromStorage")}];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMReadReceiptPipelineParameter isFromMe](self, "isFromMe")}];
  messageItems = [(IMReadReceiptPipelineParameter *)self messageItems];
  v6 = [messageItems count];
  participantIdentifiers = [(IMReadReceiptPipelineParameter *)self participantIdentifiers];
  groupID = [(IMReadReceiptPipelineParameter *)self groupID];
  groupName = [(IMReadReceiptPipelineParameter *)self groupName];
  originalMessageTimestamp = [(IMReadReceiptPipelineParameter *)self originalMessageTimestamp];
  v11 = [v16 stringWithFormat:@"<IMReadReceiptPipelineParameter %p> { guid: %@, timestamp: %@, isFromStorage: %@, isLastFromStorage: %@, isFromMe: %@, output messageItems: %lu, participants: %@, groupID: %@, groupName: %@, originalMessageTime: %@}", self, gUID, timestamp, v13, v3, v4, v6, participantIdentifiers, groupID, groupName, originalMessageTimestamp];

  return v11;
}

@end