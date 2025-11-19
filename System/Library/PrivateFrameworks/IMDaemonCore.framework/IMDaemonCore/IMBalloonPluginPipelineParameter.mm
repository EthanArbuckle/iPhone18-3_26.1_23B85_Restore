@interface IMBalloonPluginPipelineParameter
+ (id)logger;
- (IMBalloonPluginPipelineParameter)initWithBD:(id)a3 idsTrustedData:(id)a4;
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

- (IMBalloonPluginPipelineParameter)initWithBD:(id)a3 idsTrustedData:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v45.receiver = self;
  v45.super_class = IMBalloonPluginPipelineParameter;
  v7 = [(IMTextMessagePipelineParameter *)&v45 initWithBD:v6 idsTrustedData:a4];
  if (!v7)
  {
    goto LABEL_41;
  }

  v8 = [v6 messageSubType];
  v9 = [v8 balloonPlugin];

  v10 = [v9 payload];
  v11 = [v10 type];

  if (v11 <= 1)
  {
    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_15;
      }

      v14 = [v9 payload];
      v16 = [v14 handwriting];
    }

    else
    {
      v14 = [v9 payload];
      v16 = [v14 messagesAppBalloon];
    }
  }

  else
  {
    switch(v11)
    {
      case 2:
        v14 = [v9 payload];
        v16 = [v14 linkPresentation];
        break;
      case 4:
        v14 = [v9 payload];
        v16 = [v14 digitalTouchBalloon];
        break;
      case 3:
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v13 = [v9 payload];
        v14 = [v13 combinedPluginAttachmentInfo];

        v15 = [v14 ownerID];
        if (v15)
        {
          CFDictionarySetValue(Mutable, @"o", v15);
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_22B7D6304();
        }

        v20 = [v14 signature];
        if (v20)
        {
          CFDictionarySetValue(Mutable, @"s", v20);
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_22B7D638C();
        }

        v21 = [v14 attachmentURL];
        v22 = [v21 absoluteString];

        if (v22)
        {
          CFDictionarySetValue(Mutable, @"r", v22);
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_22B7D6414();
        }

        v23 = [v14 encryptionKey];
        if (v23)
        {
          CFDictionarySetValue(Mutable, @"e", v23);
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_22B7D649C();
        }

        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject expectedFileSize](v14, "expectedFileSize")}];
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
        v14 = +[IMBalloonPluginPipelineParameter logger];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v9 payload];
          v19 = [v18 type];
          *buf = 134217984;
          v47 = v19;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Unable to handle unknown payload type (type: %tu).", buf, 0xCu);
        }

        Mutable = 0;
        goto LABEL_37;
    }
  }

  v17 = v16;
  Mutable = 0;
LABEL_38:

  v25 = [v9 attachments];
  v26 = [v25 contents];
  v27 = [v26 count];

  if (v27)
  {
    v44 = +[IMDFileTransferCenter sharedInstance];
    v28 = [v9 attachments];
    v29 = [v6 metadata];
    [v29 messageGUID];
    v30 = v7;
    v31 = v9;
    v32 = v17;
    v33 = v6;
    v35 = v34 = Mutable;
    v36 = [v35 UUIDString];
    v37 = [v44 guidsForStoredAttachmentBlastDoorPayloadData:v28 messageGUID:v36];

    Mutable = v34;
    v6 = v33;
    v17 = v32;
    v9 = v31;
    v7 = v30;

    [(IMTextMessagePipelineParameter *)v30 setFileTransferGUIDs:v37];
  }

  -[IMTextMessagePipelineParameter setExpirable:](v7, "setExpirable:", [v9 isExpirable]);
  v38 = [v9 bundleID];
  [(IMBalloonPluginPipelineParameter *)v7 setBalloonPluginBundleID:v38];

  [(IMBalloonPluginPipelineParameter *)v7 setBalloonPluginPayload:v17];
  [(IMBalloonPluginPipelineParameter *)v7 setCombinedPayloadAttachmentDictionary:Mutable];
  -[IMBalloonPluginPipelineParameter setAssociatedMessageType:](v7, "setAssociatedMessageType:", [v9 associatedMessageType]);
  v39 = [v9 associatedMessageGUID];
  [(IMTextMessagePipelineParameter *)v7 setAssociatedMessageGUID:v39];

  v40 = [v9 associatedMessageRange];
  [(IMBalloonPluginPipelineParameter *)v7 setAssociatedMessageRange:v40, v41];

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