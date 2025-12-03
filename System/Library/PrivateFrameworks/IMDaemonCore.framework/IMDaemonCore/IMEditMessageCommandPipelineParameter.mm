@interface IMEditMessageCommandPipelineParameter
- (IMEditMessageCommandPipelineParameter)initWithDefusedMessage:(id)message idsTrustedData:(id)data;
- (IMEditMessageCommandPipelineParameter)initWithIdsTrustedData:(id)data editCommandGUID:(id)d timestamp:(id)timestamp isFromStorage:(BOOL)storage isLastFromStorage:(BOOL)fromStorage editedMessageGUID:(id)iD editedMessagePartIndex:(int64_t)index editType:(unint64_t)self0 editedMessagePartBody:(id)self1 editedMessagePartTranslation:(id)self2 editedMessagePartFileTransferGUIDs:(id)self3 shouldRetractMessageSubject:(BOOL)self4 hasEditTypeAndPartIndex:(BOOL)self5;
- (id)_createSuperFormattedStringWithAttributedString:(id)string;
- (id)_existingFileTransfersForMessageGuid:(id)guid;
- (id)description;
- (unint64_t)_messageItemEditTypeForBlastdoorEditType:(int64_t)type;
@end

@implementation IMEditMessageCommandPipelineParameter

- (IMEditMessageCommandPipelineParameter)initWithDefusedMessage:(id)message idsTrustedData:(id)data
{
  messageCopy = message;
  dataCopy = data;
  metadata = [messageCopy metadata];
  messageGUID = [metadata messageGUID];
  uUIDString = [messageGUID UUIDString];
  v42 = [uUIDString copy];

  has_timestamp = [metadata has_timestamp];
  v11 = MEMORY[0x277CCABB0];
  if (has_timestamp)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(metadata, "timestamp")}];
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v12 = [v11 numberWithDouble:?];
  }

  storageContext = [metadata storageContext];
  isFromStorage = [storageContext isFromStorage];

  storageContext2 = [metadata storageContext];
  isLastFromStorage = [storageContext2 isLastFromStorage];

  editedMessageGUID = [messageCopy editedMessageGUID];
  v17 = [(IMEditMessageCommandPipelineParameter *)self _existingFileTransfersForMessageGuid:editedMessageGUID];
  editType = [messageCopy editType];
  has_editedMessagePartIndex = [messageCopy has_editedMessagePartIndex];
  if (editType)
  {
    v20 = has_editedMessagePartIndex;
  }

  else
  {
    v20 = 0;
  }

  v40 = v17;
  if (v20 == 1)
  {
    editedMessagePartIndex = [messageCopy editedMessagePartIndex];
    v35 = [(IMEditMessageCommandPipelineParameter *)self _messageItemEditTypeForBlastdoorEditType:editType];
    shouldRetractSubject = [messageCopy shouldRetractSubject];
    editedMessagePartBody = [messageCopy editedMessagePartBody];
    content = [editedMessagePartBody content];
    [IMTextMessagePipelineParameter convertBlastDoorInstanceTypedAttributesToNativeTypesInAttributedString:content supportingStickerAttributes:0 existingFileTransfersForMessage:v17];
    v22 = v38 = v12;
    messageBodyWithNativeAttributes = [v22 messageBodyWithNativeAttributes];
    [messageCopy editedMessagePartTranslation];
    v23 = v37 = editedMessageGUID;
    [v23 content];
    v24 = v39 = self;
    v25 = [IMTextMessagePipelineParameter convertBlastDoorInstanceTypedAttributesToNativeTypesInAttributedString:v24 supportingStickerAttributes:0 existingFileTransfersForMessage:v17];
    messageBodyWithNativeAttributes2 = [v25 messageBodyWithNativeAttributes];
    fileTransferGuids = [v22 fileTransferGuids];

    self = v39;
    editedMessageGUID = v37;

    v12 = v38;
    v29 = v35;
    v28 = editedMessagePartIndex;
    LOBYTE(v20) = 1;
  }

  else
  {
    v28 = 0;
    messageBodyWithNativeAttributes = 0;
    messageBodyWithNativeAttributes2 = 0;
    fileTransferGuids = 0;
    shouldRetractSubject = 0;
    v29 = 1;
  }

  BYTE1(v32) = v20;
  LOBYTE(v32) = shouldRetractSubject;
  v30 = [(IMEditMessageCommandPipelineParameter *)self initWithIdsTrustedData:dataCopy editCommandGUID:v42 timestamp:v12 isFromStorage:isFromStorage isLastFromStorage:isLastFromStorage editedMessageGUID:editedMessageGUID editedMessagePartIndex:v28 editType:v29 editedMessagePartBody:messageBodyWithNativeAttributes editedMessagePartTranslation:messageBodyWithNativeAttributes2 editedMessagePartFileTransferGUIDs:fileTransferGuids shouldRetractMessageSubject:v32 hasEditTypeAndPartIndex:?];

  return v30;
}

- (IMEditMessageCommandPipelineParameter)initWithIdsTrustedData:(id)data editCommandGUID:(id)d timestamp:(id)timestamp isFromStorage:(BOOL)storage isLastFromStorage:(BOOL)fromStorage editedMessageGUID:(id)iD editedMessagePartIndex:(int64_t)index editType:(unint64_t)self0 editedMessagePartBody:(id)self1 editedMessagePartTranslation:(id)self2 editedMessagePartFileTransferGUIDs:(id)self3 shouldRetractMessageSubject:(BOOL)self4 hasEditTypeAndPartIndex:(BOOL)self5
{
  dataCopy = data;
  dCopy = d;
  timestampCopy = timestamp;
  iDCopy = iD;
  bodyCopy = body;
  translationCopy = translation;
  dsCopy = ds;
  v42.receiver = self;
  v42.super_class = IMEditMessageCommandPipelineParameter;
  v24 = [(IMEditMessageCommandPipelineParameter *)&v42 init];
  if (v24)
  {
    v25 = [dataCopy copy];
    idsTrustedData = v24->_idsTrustedData;
    v24->_idsTrustedData = v25;

    v27 = [dCopy copy];
    editCommandGUID = v24->_editCommandGUID;
    v24->_editCommandGUID = v27;

    v29 = [timestampCopy copy];
    timestamp = v24->_timestamp;
    v24->_timestamp = v29;

    v24->_isFromStorage = storage;
    v24->_isLastFromStorage = fromStorage;
    batchContext = [dataCopy batchContext];
    batchContext = v24->_batchContext;
    v24->_batchContext = batchContext;

    objc_storeStrong(&v24->_editedMessageGUID, iD);
    v24->_editedMessagePartIndex = index;
    v24->_editType = type;
    objc_storeStrong(&v24->_editedMessagePartBody, body);
    objc_storeStrong(&v24->_editedMessagePartTranslation, translation);
    objc_storeStrong(&v24->_editedMessagePartFileTransferGUIDs, ds);
    v24->_shouldRetractMessageSubject = subject;
    v24->_hasEditTypeAndPartIndex = partIndex;
    fromIdentifier = [dataCopy fromIdentifier];
    fromIdentifier = v24->_fromIdentifier;
    v24->_fromIdentifier = fromIdentifier;

    toIdentifier = [dataCopy toIdentifier];
    toIdentifier = v24->_toIdentifier;
    v24->_toIdentifier = toIdentifier;
  }

  return v24;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  editCommandGUID = [(IMEditMessageCommandPipelineParameter *)self editCommandGUID];
  editedMessageGUID = [(IMEditMessageCommandPipelineParameter *)self editedMessageGUID];
  timestamp = [(IMEditMessageCommandPipelineParameter *)self timestamp];
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

  idsTrustedData = [(IMEditMessageCommandPipelineParameter *)self idsTrustedData];
  chat = [(IMEditMessageCommandPipelineParameter *)self chat];
  messageItems = [(IMEditMessageCommandPipelineParameter *)self messageItems];
  v12 = [v3 stringWithFormat:@"<IMEditMessageCommandPipelineParameter %p editCommandGUID = %@; editedMessageGUID = %@; timestamp = %@; isFromStorage = %@; isLastFromStorage = %@; idsTrustedData = %@; OUTPUT chat = %@; numMessageItems = %lu}", self, editCommandGUID, editedMessageGUID, timestamp, v7, v8, idsTrustedData, chat, objc_msgSend(messageItems, "count")];;

  return v12;
}

- (id)_createSuperFormattedStringWithAttributedString:(id)string
{
  stringCopy = string;
  __im_attributedStringByAssigningMessagePartNumbers = [stringCopy __im_attributedStringByAssigningMessagePartNumbers];
  v5 = __im_attributedStringByAssigningMessagePartNumbers;
  if (__im_attributedStringByAssigningMessagePartNumbers)
  {
    v6 = __im_attributedStringByAssigningMessagePartNumbers;
  }

  else
  {
    v6 = stringCopy;
  }

  v7 = v6;

  return v6;
}

- (id)_existingFileTransfersForMessageGuid:(id)guid
{
  v23 = *MEMORY[0x277D85DE8];
  guidCopy = guid;
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 messageWithGUID:guidCopy];
  v6 = +[IMDFileTransferCenter sharedInstance];
  fileTransferGUIDs = [v5 fileTransferGUIDs];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = fileTransferGUIDs;
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

- (unint64_t)_messageItemEditTypeForBlastdoorEditType:(int64_t)type
{
  if (type == 2)
  {
    return 2;
  }

  else
  {
    return type == 1;
  }
}

@end