@interface IMReadReceiptPipelineParameter
- (IMReadReceiptPipelineParameter)initWithBD:(id)a3 idsTrustedData:(id)a4;
- (id)description;
@end

@implementation IMReadReceiptPipelineParameter

- (IMReadReceiptPipelineParameter)initWithBD:(id)a3 idsTrustedData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v42.receiver = self;
  v42.super_class = IMReadReceiptPipelineParameter;
  v8 = [(IMReadReceiptPipelineParameter *)&v42 init];
  if (v8)
  {
    v9 = [v6 metadata];
    v10 = [v9 messageGUID];
    v11 = [v10 UUIDString];

    v12 = [v9 timestamp];
    [(IMReadReceiptPipelineParameter *)v8 setGUID:v11];
    v13 = [v9 has_timestamp];
    v14 = MEMORY[0x277CCABB0];
    if (v13)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
      [(IMReadReceiptPipelineParameter *)v8 setTimestamp:v15];
    }

    else
    {
      v15 = [MEMORY[0x277CBEAA8] date];
      [v15 timeIntervalSince1970];
      v16 = [v14 numberWithDouble:?];
      [(IMReadReceiptPipelineParameter *)v8 setTimestamp:v16];
    }

    v17 = [v9 storageContext];
    -[IMReadReceiptPipelineParameter setIsFromStorage:](v8, "setIsFromStorage:", [v17 isFromStorage]);

    v18 = [v9 storageContext];
    -[IMReadReceiptPipelineParameter setIsLastFromStorage:](v8, "setIsLastFromStorage:", [v18 isLastFromStorage]);

    v19 = [v7 fromIdentifier];
    fromIdentifier = v8->_fromIdentifier;
    v8->_fromIdentifier = v19;

    v21 = [v7 toIdentifier];
    toIdentifier = v8->_toIdentifier;
    v8->_toIdentifier = v21;

    v23 = [v7 batchContext];
    batchContext = v8->_batchContext;
    v8->_batchContext = v23;

    v25 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v26 = [v25 isEnhancedReadReceiptProcessingEnabled];

    if (v26)
    {
      v27 = [v6 participantDestinationIdentifiers];
      v28 = [v27 count];

      if (v28)
      {
        v29 = [v6 participantDestinationIdentifiers];
        participantIdentifiers = v8->_participantIdentifiers;
        v8->_participantIdentifiers = v29;
      }

      v31 = [v6 groupID];
      v32 = [v31 length];

      if (v32)
      {
        v33 = [v6 groupID];
        groupID = v8->_groupID;
        v8->_groupID = v33;
      }

      v35 = [v6 groupName];
      v36 = [v35 length];

      if (v36)
      {
        v37 = [v6 groupName];
        groupName = v8->_groupName;
        v8->_groupName = v37;
      }

      if ([v6 has_originalMessageTimestamp])
      {
        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v6, "originalMessageTimestamp")}];
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
  v15 = [(IMReadReceiptPipelineParameter *)self GUID];
  v14 = [(IMReadReceiptPipelineParameter *)self timestamp];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMReadReceiptPipelineParameter isFromStorage](self, "isFromStorage")}];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMReadReceiptPipelineParameter isLastFromStorage](self, "isLastFromStorage")}];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMReadReceiptPipelineParameter isFromMe](self, "isFromMe")}];
  v5 = [(IMReadReceiptPipelineParameter *)self messageItems];
  v6 = [v5 count];
  v7 = [(IMReadReceiptPipelineParameter *)self participantIdentifiers];
  v8 = [(IMReadReceiptPipelineParameter *)self groupID];
  v9 = [(IMReadReceiptPipelineParameter *)self groupName];
  v10 = [(IMReadReceiptPipelineParameter *)self originalMessageTimestamp];
  v11 = [v16 stringWithFormat:@"<IMReadReceiptPipelineParameter %p> { guid: %@, timestamp: %@, isFromStorage: %@, isLastFromStorage: %@, isFromMe: %@, output messageItems: %lu, participants: %@, groupID: %@, groupName: %@, originalMessageTime: %@}", self, v15, v14, v13, v3, v4, v6, v7, v8, v9, v10];

  return v11;
}

@end