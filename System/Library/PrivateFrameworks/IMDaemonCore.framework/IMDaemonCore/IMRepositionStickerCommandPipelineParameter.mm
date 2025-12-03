@interface IMRepositionStickerCommandPipelineParameter
- (IMRepositionStickerCommandPipelineParameter)initWithDefusedMessage:(id)message idsTrustedData:(id)data;
- (id)description;
@end

@implementation IMRepositionStickerCommandPipelineParameter

- (IMRepositionStickerCommandPipelineParameter)initWithDefusedMessage:(id)message idsTrustedData:(id)data
{
  messageCopy = message;
  dataCopy = data;
  v26.receiver = self;
  v26.super_class = IMRepositionStickerCommandPipelineParameter;
  v8 = [(IMRepositionStickerCommandPipelineParameter *)&v26 init];
  if (v8)
  {
    metadata = [messageCopy metadata];
    fromIdentifier = [dataCopy fromIdentifier];
    fromIdentifier = v8->_fromIdentifier;
    v8->_fromIdentifier = fromIdentifier;

    toIdentifier = [dataCopy toIdentifier];
    toIdentifier = v8->_toIdentifier;
    v8->_toIdentifier = toIdentifier;

    messageGUID = [metadata messageGUID];
    uUIDString = [messageGUID UUIDString];
    GUID = v8->_GUID;
    v8->_GUID = uUIDString;

    stickerMetadata = [messageCopy stickerMetadata];
    stickerAttachmentInfo = v8->_stickerAttachmentInfo;
    v8->_stickerAttachmentInfo = stickerMetadata;

    stickerEditedMessageGUID = [messageCopy stickerEditedMessageGUID];
    stickerEditedMessageGuid = v8->_stickerEditedMessageGuid;
    v8->_stickerEditedMessageGuid = stickerEditedMessageGUID;

    storageContext = [metadata storageContext];
    v8->_isFromStorage = [storageContext isFromStorage];

    storageContext2 = [metadata storageContext];
    v8->_isLastFromStorage = [storageContext2 isLastFromStorage];

    batchContext = [dataCopy batchContext];
    batchContext = v8->_batchContext;
    v8->_batchContext = batchContext;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  gUID = [(IMRepositionStickerCommandPipelineParameter *)self GUID];
  stickerEditedMessageGuid = [(IMRepositionStickerCommandPipelineParameter *)self stickerEditedMessageGuid];
  v6 = @"YES";
  if ([(IMRepositionStickerCommandPipelineParameter *)self isFromStorage])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (![(IMRepositionStickerCommandPipelineParameter *)self isLastFromStorage])
  {
    v6 = @"NO";
  }

  chat = [(IMRepositionStickerCommandPipelineParameter *)self chat];
  v9 = [v3 stringWithFormat:@"<IMRepositionStickerCommandPipelineParameter %p GUID = %@; stickerEditedMessageGUID = %@; isFromStorage = %@; isLastFromStorage = %@; OUTPUT chat = %@;", self, gUID, stickerEditedMessageGuid, v7, v6, chat];;

  return v9;
}

@end