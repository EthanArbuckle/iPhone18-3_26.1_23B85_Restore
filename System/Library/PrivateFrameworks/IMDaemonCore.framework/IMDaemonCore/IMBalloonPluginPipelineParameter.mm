@interface IMBalloonPluginPipelineParameter
+ (id)logger;
- (IMBalloonPluginPipelineParameter)initWithBD:(id)d idsTrustedData:(id)data;
- (_NSRange)associatedMessageRange;
@end

@implementation IMBalloonPluginPipelineParameter

+ (id)logger
{
  if (qword_281421278 != -1)
  {
    sub_22B7D62F0();
  }

  v3 = qword_281421288;

  return v3;
}

- (IMBalloonPluginPipelineParameter)initWithBD:(id)d idsTrustedData:(id)data
{
  v48 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v45.receiver = self;
  v45.super_class = IMBalloonPluginPipelineParameter;
  v7 = [(IMTextMessagePipelineParameter *)&v45 initWithBD:dCopy idsTrustedData:data];
  if (!v7)
  {
    goto LABEL_41;
  }

  messageSubType = [dCopy messageSubType];
  balloonPlugin = [messageSubType balloonPlugin];

  payload = [balloonPlugin payload];
  type = [payload type];

  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_15;
      }

      payload2 = [balloonPlugin payload];
      handwriting = [payload2 handwriting];
    }

    else
    {
      payload2 = [balloonPlugin payload];
      handwriting = [payload2 messagesAppBalloon];
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        payload2 = [balloonPlugin payload];
        handwriting = [payload2 linkPresentation];
        break;
      case 4:
        payload2 = [balloonPlugin payload];
        handwriting = [payload2 digitalTouchBalloon];
        break;
      case 3:
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        payload3 = [balloonPlugin payload];
        payload2 = [payload3 combinedPluginAttachmentInfo];

        ownerID = [payload2 ownerID];
        if (ownerID)
        {
          CFDictionarySetValue(Mutable, @"o", ownerID);
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_22B7D6304();
        }

        signature = [payload2 signature];
        if (signature)
        {
          CFDictionarySetValue(Mutable, @"s", signature);
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_22B7D638C();
        }

        attachmentURL = [payload2 attachmentURL];
        absoluteString = [attachmentURL absoluteString];

        if (absoluteString)
        {
          CFDictionarySetValue(Mutable, @"r", absoluteString);
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_22B7D6414();
        }

        encryptionKey = [payload2 encryptionKey];
        if (encryptionKey)
        {
          CFDictionarySetValue(Mutable, @"e", encryptionKey);
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_22B7D649C();
        }

        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject expectedFileSize](payload2, "expectedFileSize")}];
        if (v24)
        {
          CFDictionarySetValue(Mutable, @"f", v24);
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_22B7D6524();
        }

LABEL_37:
        v17 = 0;
        goto LABEL_38;
      default:
LABEL_15:
        payload2 = +[IMBalloonPluginPipelineParameter logger];
        if (os_log_type_enabled(payload2, OS_LOG_TYPE_DEFAULT))
        {
          payload4 = [balloonPlugin payload];
          type2 = [payload4 type];
          *buf = 134217984;
          v47 = type2;
          _os_log_impl(&dword_22B4CC000, payload2, OS_LOG_TYPE_DEFAULT, "[WARN] Unable to handle unknown payload type (type: %tu).", buf, 0xCu);
        }

        Mutable = 0;
        goto LABEL_37;
    }
  }

  v17 = handwriting;
  Mutable = 0;
LABEL_38:

  attachments = [balloonPlugin attachments];
  contents = [attachments contents];
  v27 = [contents count];

  if (v27)
  {
    v44 = +[IMDFileTransferCenter sharedInstance];
    attachments2 = [balloonPlugin attachments];
    metadata = [dCopy metadata];
    [metadata messageGUID];
    v30 = v7;
    v31 = balloonPlugin;
    v32 = v17;
    v33 = dCopy;
    v35 = v34 = Mutable;
    uUIDString = [v35 UUIDString];
    v37 = [v44 guidsForStoredAttachmentBlastDoorPayloadData:attachments2 messageGUID:uUIDString];

    Mutable = v34;
    dCopy = v33;
    v17 = v32;
    balloonPlugin = v31;
    v7 = v30;

    [(IMTextMessagePipelineParameter *)v30 setFileTransferGUIDs:v37];
  }

  -[IMTextMessagePipelineParameter setExpirable:](v7, "setExpirable:", [balloonPlugin isExpirable]);
  bundleID = [balloonPlugin bundleID];
  [(IMBalloonPluginPipelineParameter *)v7 setBalloonPluginBundleID:bundleID];

  [(IMBalloonPluginPipelineParameter *)v7 setBalloonPluginPayload:v17];
  [(IMBalloonPluginPipelineParameter *)v7 setCombinedPayloadAttachmentDictionary:Mutable];
  -[IMBalloonPluginPipelineParameter setAssociatedMessageType:](v7, "setAssociatedMessageType:", [balloonPlugin associatedMessageType]);
  associatedMessageGUID = [balloonPlugin associatedMessageGUID];
  [(IMTextMessagePipelineParameter *)v7 setAssociatedMessageGUID:associatedMessageGUID];

  associatedMessageRange = [balloonPlugin associatedMessageRange];
  [(IMBalloonPluginPipelineParameter *)v7 setAssociatedMessageRange:associatedMessageRange, v41];

LABEL_41:
  v42 = *MEMORY[0x277D85DE8];
  return v7;
}

- (_NSRange)associatedMessageRange
{
  p_associatedMessageRange = &self->_associatedMessageRange;
  location = self->_associatedMessageRange.location;
  length = p_associatedMessageRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end