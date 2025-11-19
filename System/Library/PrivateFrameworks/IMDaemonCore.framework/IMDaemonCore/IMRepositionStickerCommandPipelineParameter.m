@interface IMRepositionStickerCommandPipelineParameter
- (IMRepositionStickerCommandPipelineParameter)initWithDefusedMessage:(id)a3 idsTrustedData:(id)a4;
- (id)description;
@end

@implementation IMRepositionStickerCommandPipelineParameter

- (IMRepositionStickerCommandPipelineParameter)initWithDefusedMessage:(id)a3 idsTrustedData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = IMRepositionStickerCommandPipelineParameter;
  v8 = [(IMRepositionStickerCommandPipelineParameter *)&v26 init];
  if (v8)
  {
    v9 = [v6 metadata];
    v10 = [v7 fromIdentifier];
    fromIdentifier = v8->_fromIdentifier;
    v8->_fromIdentifier = v10;

    v12 = [v7 toIdentifier];
    toIdentifier = v8->_toIdentifier;
    v8->_toIdentifier = v12;

    v14 = [v9 messageGUID];
    v15 = [v14 UUIDString];
    GUID = v8->_GUID;
    v8->_GUID = v15;

    v17 = [v6 stickerMetadata];
    stickerAttachmentInfo = v8->_stickerAttachmentInfo;
    v8->_stickerAttachmentInfo = v17;

    v19 = [v6 stickerEditedMessageGUID];
    stickerEditedMessageGuid = v8->_stickerEditedMessageGuid;
    v8->_stickerEditedMessageGuid = v19;

    v21 = [v9 storageContext];
    v8->_isFromStorage = [v21 isFromStorage];

    v22 = [v9 storageContext];
    v8->_isLastFromStorage = [v22 isLastFromStorage];

    v23 = [v7 batchContext];
    batchContext = v8->_batchContext;
    v8->_batchContext = v23;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(IMRepositionStickerCommandPipelineParameter *)self GUID];
  v5 = [(IMRepositionStickerCommandPipelineParameter *)self stickerEditedMessageGuid];
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

  v8 = [(IMRepositionStickerCommandPipelineParameter *)self chat];
  v9 = [v3 stringWithFormat:@"<IMRepositionStickerCommandPipelineParameter %p GUID = %@; stickerEditedMessageGUID = %@; isFromStorage = %@; isLastFromStorage = %@; OUTPUT chat = %@;", self, v4, v5, v7, v6, v8];;

  return v9;
}

@end