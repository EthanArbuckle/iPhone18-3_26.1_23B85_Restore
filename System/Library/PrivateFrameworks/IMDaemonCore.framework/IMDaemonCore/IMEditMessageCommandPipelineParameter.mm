@interface IMEditMessageCommandPipelineParameter
- (IMEditMessageCommandPipelineParameter)initWithDefusedMessage:(id)a3 idsTrustedData:(id)a4;
- (IMEditMessageCommandPipelineParameter)initWithIdsTrustedData:(id)a3 editCommandGUID:(id)a4 timestamp:(id)a5 isFromStorage:(BOOL)a6 isLastFromStorage:(BOOL)a7 editedMessageGUID:(id)a8 editedMessagePartIndex:(int64_t)a9 editType:(unint64_t)a10 editedMessagePartBody:(id)a11 editedMessagePartTranslation:(id)a12 editedMessagePartFileTransferGUIDs:(id)a13 shouldRetractMessageSubject:(BOOL)a14 hasEditTypeAndPartIndex:(BOOL)a15;
- (id)_createSuperFormattedStringWithAttributedString:(id)a3;
- (id)_existingFileTransfersForMessageGuid:(id)a3;
- (id)description;
- (unint64_t)_messageItemEditTypeForBlastdoorEditType:(int64_t)a3;
@end

@implementation IMEditMessageCommandPipelineParameter

- (IMEditMessageCommandPipelineParameter)initWithDefusedMessage:(id)a3 idsTrustedData:(id)a4
{
  v6 = a3;
  v43 = a4;
  v7 = [v6 metadata];
  v8 = [v7 messageGUID];
  v9 = [v8 UUIDString];
  v42 = [v9 copy];

  v10 = [v7 has_timestamp];
  v11 = MEMORY[0x277CCABB0];
  if (v10)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "timestamp")}];
  }

  else
  {
    v13 = [MEMORY[0x277CBEAA8] date];
    [v13 timeIntervalSince1970];
    v12 = [v11 numberWithDouble:?];
  }

  v14 = [v7 storageContext];
  v41 = [v14 isFromStorage];

  v15 = [v7 storageContext];
  v45 = [v15 isLastFromStorage];

  v16 = [v6 editedMessageGUID];
  v17 = [(IMEditMessageCommandPipelineParameter *)self _existingFileTransfersForMessageGuid:v16];
  v18 = [v6 editType];
  v19 = [v6 has_editedMessagePartIndex];
  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v40 = v17;
  if (v20 == 1)
  {
    v36 = [v6 editedMessagePartIndex];
    v35 = [(IMEditMessageCommandPipelineParameter *)self _messageItemEditTypeForBlastdoorEditType:v18];
    v21 = [v6 shouldRetractSubject];
    v34 = [v6 editedMessagePartBody];
    v33 = [v34 content];
    [IMTextMessagePipelineParameter convertBlastDoorInstanceTypedAttributesToNativeTypesInAttributedString:v33 supportingStickerAttributes:0 existingFileTransfersForMessage:v17];
    v22 = v38 = v12;
    v44 = [v22 messageBodyWithNativeAttributes];
    [v6 editedMessagePartTranslation];
    v23 = v37 = v16;
    [v23 content];
    v24 = v39 = self;
    v25 = [IMTextMessagePipelineParameter convertBlastDoorInstanceTypedAttributesToNativeTypesInAttributedString:v24 supportingStickerAttributes:0 existingFileTransfersForMessage:v17];
    v26 = [v25 messageBodyWithNativeAttributes];
    v27 = [v22 fileTransferGuids];

    self = v39;
    v16 = v37;

    v12 = v38;
    v29 = v35;
    v28 = v36;
    LOBYTE(v20) = 1;
  }

  else
  {
    v28 = 0;
    v44 = 0;
    v26 = 0;
    v27 = 0;
    v21 = 0;
    v29 = 1;
  }

  BYTE1(v32) = v20;
  LOBYTE(v32) = v21;
  v30 = [(IMEditMessageCommandPipelineParameter *)self initWithIdsTrustedData:v43 editCommandGUID:v42 timestamp:v12 isFromStorage:v41 isLastFromStorage:v45 editedMessageGUID:v16 editedMessagePartIndex:v28 editType:v29 editedMessagePartBody:v44 editedMessagePartTranslation:v26 editedMessagePartFileTransferGUIDs:v27 shouldRetractMessageSubject:v32 hasEditTypeAndPartIndex:?];

  return v30;
}

- (IMEditMessageCommandPipelineParameter)initWithIdsTrustedData:(id)a3 editCommandGUID:(id)a4 timestamp:(id)a5 isFromStorage:(BOOL)a6 isLastFromStorage:(BOOL)a7 editedMessageGUID:(id)a8 editedMessagePartIndex:(int64_t)a9 editType:(unint64_t)a10 editedMessagePartBody:(id)a11 editedMessagePartTranslation:(id)a12 editedMessagePartFileTransferGUIDs:(id)a13 shouldRetractMessageSubject:(BOOL)a14 hasEditTypeAndPartIndex:(BOOL)a15
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a8;
  v23 = a11;
  v41 = a12;
  v40 = a13;
  v42.receiver = self;
  v42.super_class = IMEditMessageCommandPipelineParameter;
  v24 = [(IMEditMessageCommandPipelineParameter *)&v42 init];
  if (v24)
  {
    v25 = [v19 copy];
    idsTrustedData = v24->_idsTrustedData;
    v24->_idsTrustedData = v25;

    v27 = [v20 copy];
    editCommandGUID = v24->_editCommandGUID;
    v24->_editCommandGUID = v27;

    v29 = [v21 copy];
    timestamp = v24->_timestamp;
    v24->_timestamp = v29;

    v24->_isFromStorage = a6;
    v24->_isLastFromStorage = a7;
    v31 = [v19 batchContext];
    batchContext = v24->_batchContext;
    v24->_batchContext = v31;

    objc_storeStrong(&v24->_editedMessageGUID, a8);
    v24->_editedMessagePartIndex = a9;
    v24->_editType = a10;
    objc_storeStrong(&v24->_editedMessagePartBody, a11);
    objc_storeStrong(&v24->_editedMessagePartTranslation, a12);
    objc_storeStrong(&v24->_editedMessagePartFileTransferGUIDs, a13);
    v24->_shouldRetractMessageSubject = a14;
    v24->_hasEditTypeAndPartIndex = a15;
    v33 = [v19 fromIdentifier];
    fromIdentifier = v24->_fromIdentifier;
    v24->_fromIdentifier = v33;

    v35 = [v19 toIdentifier];
    toIdentifier = v24->_toIdentifier;
    v24->_toIdentifier = v35;
  }

  return v24;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(IMEditMessageCommandPipelineParameter *)self editCommandGUID];
  v5 = [(IMEditMessageCommandPipelineParameter *)self editedMessageGUID];
  v6 = [(IMEditMessageCommandPipelineParameter *)self timestamp];
  if ([(IMEditMessageCommandPipelineParameter *)self isFromStorage])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(IMEditMessageCommandPipelineParameter *)self isLastFromStorage])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [(IMEditMessageCommandPipelineParameter *)self idsTrustedData];
  v10 = [(IMEditMessageCommandPipelineParameter *)self chat];
  v11 = [(IMEditMessageCommandPipelineParameter *)self messageItems];
  v12 = [v3 stringWithFormat:@"<IMEditMessageCommandPipelineParameter %p editCommandGUID = %@; editedMessageGUID = %@; timestamp = %@; isFromStorage = %@; isLastFromStorage = %@; idsTrustedData = %@; OUTPUT chat = %@; numMessageItems = %lu}", self, v4, v5, v6, v7, v8, v9, v10, objc_msgSend(v11, "count")];;

  return v12;
}

- (id)_createSuperFormattedStringWithAttributedString:(id)a3
{
  v3 = a3;
  v4 = [v3 __im_attributedStringByAssigningMessagePartNumbers];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v6;
}

- (id)_existingFileTransfersForMessageGuid:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 messageWithGUID:v3];
  v6 = +[IMDFileTransferCenter sharedInstance];
  v7 = [v5 fileTransferGUIDs];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v6 transferForGUID:{*(*(&v18 + 1) + 8 * i), v18}];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (unint64_t)_messageItemEditTypeForBlastdoorEditType:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

@end