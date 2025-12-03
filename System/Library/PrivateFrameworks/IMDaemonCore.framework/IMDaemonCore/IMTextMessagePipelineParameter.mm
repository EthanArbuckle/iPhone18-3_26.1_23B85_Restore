@interface IMTextMessagePipelineParameter
+ (BOOL)seenAsOffGridWithBlastDoorMessage:(id)message;
+ (id)_fileTransferMatchingAttribute:(id)attribute inFileTransfers:(id)transfers;
+ (id)attributionInfoArrayWithBlastDoorMessage:(id)message;
+ (id)availabilityOffGridRecipientEncryptionValidationTokenWithBlastDoorMessage:(id)message;
+ (id)availabilityOffGridRecipientSubscriptionValidationTokenWithBlastDoorMessage:(id)message;
+ (id)convertBlastDoorInstanceTypedAttributesToNativeTypesInAttributedString:(id)string supportingStickerAttributes:(BOOL)attributes existingFileTransfersForMessage:(id)message;
+ (id)fileTransferForBlastDoorFileTransferAttribute:(id)attribute fileTransferGUIDs:(id)ds supportingStickerAttributes:(BOOL)attributes;
+ (id)lastPublisherOfOffGridStatusWithBlastDoorMessage:(id)message;
+ (id)nicknameDictionaryWithBlastDoorMessage:(id)message;
+ (id)participantDestinationIdentifierWithBasicMessage:(id)message;
+ (id)participantDestinationIdentifierWithMessage:(id)message;
+ (id)plainTextBodyWithBlastDoorBasicMessage:(id)message;
+ (id)plainTextBodyWithBlastDoorMessage:(id)message;
+ (id)plainTextSubjectWithBlastDoorBasicMessage:(id)message;
+ (id)plainTextSubjectWithBlastDoorMessage:(id)message;
+ (id)replicationSourceServiceNameWithBlastDoorBasicMessage:(id)message;
+ (id)replicationSourceServiceNameWithBlastDoorMessage:(id)message;
+ (id)richBodyWithBlastDoorBasicMessage:(id)message;
+ (id)richBodyWithBlastDoorMessage:(id)message;
+ (id)stickerInfoDictionaryFromBlastDoorEmojiImageAttachmentInfo:(id)info;
+ (id)stickerInfoDictionaryFromBlastDoorStickerAttachmentInfo:(id)info;
+ (id)stickerInfoDictionaryWithStickerGUID:(id)d stickerPackGUID:(id)iD stickerHash:(id)hash positionIntent:(id)intent associatedPositionIntent:(id)positionIntent parentPreviewWidth:(id)width stickerXOffset:(id)offset stickerYOffset:(id)self0 stickerScale:(id)self1 stickerRotation:(id)self2 stickerBundleID:(id)self3 stickerIsReaction:(id)self4 stickerPositionVersion:(id)self5 stickerExternalURI:(id)self6;
+ (id)transcriptBackgroundVersionWithBlastDoorMessage:(id)message;
+ (unint64_t)scheduleTypeWithBlastDoorTextMessage:(id)message;
- (IMTextMessagePipelineParameter)initWithBD:(id)d idsTrustedData:(id)data;
- (IMTextMessagePipelineParameter)initWithBDBasic:(id)basic idsTrustedData:(id)data;
- (id)_createSuperFormattedStringWithAttributedString:(id)string;
- (id)description;
- (id)messageSummaryInfoDictionaryWithBlastDoorBasicMessage:(id)message;
- (id)messageSummaryInfoDictionaryWithBlastDoorMessage:(id)message;
- (void)_addTranslatedMessageParts:(id)parts to:(id)to;
@end

@implementation IMTextMessagePipelineParameter

+ (id)participantDestinationIdentifierWithMessage:(id)message
{
  v15 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  messageSubType = [messageCopy messageSubType];
  type = [messageSubType type];

  if (type > 3)
  {
    if (type > 5)
    {
      switch(type)
      {
        case 6:
          messageSubType2 = [messageCopy messageSubType];
          emojiTapback = [messageSubType2 emojiTapback];
          participantDestinationIdentifiers = [emojiTapback participantDestinationIdentifiers];
          goto LABEL_21;
        case 7:
          messageSubType2 = [messageCopy messageSubType];
          emojiTapback = [messageSubType2 stickerTapback];
          participantDestinationIdentifiers = [emojiTapback participantDestinationIdentifiers];
          goto LABEL_21;
        case 8:
          messageSubType2 = [messageCopy messageSubType];
          emojiTapback = [messageSubType2 customAcknowledgement];
          participantDestinationIdentifiers = [emojiTapback participantDestinationIdentifiers];
LABEL_21:
          v9 = participantDestinationIdentifiers;

          goto LABEL_22;
      }

      goto LABEL_25;
    }

    messageSubType2 = [messageCopy messageSubType];
    if (type == 4)
    {
      [messageSubType2 sticker];
    }

    else
    {
      [messageSubType2 audioMessage];
    }

    emojiTapback = LABEL_13:;
    participantDestinationIdentifiers = [emojiTapback participantDestinationIdentifiers];
    goto LABEL_21;
  }

  if (type > 1)
  {
    messageSubType2 = [messageCopy messageSubType];
    if (type == 2)
    {
      [messageSubType2 tapback];
    }

    else
    {
      [messageSubType2 balloonPlugin];
    }

    goto LABEL_13;
  }

  if (!type)
  {
    messageSubType2 = [messageCopy messageSubType];
    emojiTapback = [messageSubType2 typingIndicator];
    participantDestinationIdentifiers = [emojiTapback participantDestinationIdentifiers];
    goto LABEL_21;
  }

  if (type == 1)
  {
    messageSubType2 = [messageCopy messageSubType];
    emojiTapback = [messageSubType2 textMessage];
    participantDestinationIdentifiers = [emojiTapback participantDestinationIdentifiers];
    goto LABEL_21;
  }

LABEL_25:
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      v14 = type;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "<IMTextMessagePipelineParameter> Unhandled BlastDoorTextMessageMessageType: %ld", &v13, 0xCu);
    }
  }

  v9 = 0;
LABEL_22:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)participantDestinationIdentifierWithBasicMessage:(id)message
{
  v15 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  messageSubType = [messageCopy messageSubType];
  type = [messageSubType type];

  if (type > 2)
  {
    switch(type)
    {
      case 3:
        messageSubType2 = [messageCopy messageSubType];
        audioMessage = [messageSubType2 audioMessage];
        participantDestinationIdentifiers = [audioMessage participantDestinationIdentifiers];
        goto LABEL_19;
      case 4:
        messageSubType2 = [messageCopy messageSubType];
        audioMessage = [messageSubType2 unsupported];
        participantDestinationIdentifiers = [audioMessage participantDestinationIdentifiers];
        goto LABEL_19;
      case 5:
        messageSubType2 = [messageCopy messageSubType];
        audioMessage = [messageSubType2 emojiTapback];
        participantDestinationIdentifiers = [audioMessage participantDestinationIdentifiers];
        goto LABEL_19;
    }
  }

  else
  {
    switch(type)
    {
      case 0:
        messageSubType2 = [messageCopy messageSubType];
        audioMessage = [messageSubType2 typingIndicator];
        participantDestinationIdentifiers = [audioMessage participantDestinationIdentifiers];
        goto LABEL_19;
      case 1:
        messageSubType2 = [messageCopy messageSubType];
        audioMessage = [messageSubType2 textMessage];
        participantDestinationIdentifiers = [audioMessage participantDestinationIdentifiers];
        goto LABEL_19;
      case 2:
        messageSubType2 = [messageCopy messageSubType];
        audioMessage = [messageSubType2 tapback];
        participantDestinationIdentifiers = [audioMessage participantDestinationIdentifiers];
LABEL_19:
        v10 = participantDestinationIdentifiers;

        goto LABEL_20;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      v14 = type;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "<IMTextMessagePipelineParameter> Unable to extract destination identifiers from BlastDoorTextMessageMessageType: %ld", &v13, 0xCu);
    }
  }

  v10 = 0;
LABEL_20:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)messageSummaryInfoDictionaryWithBlastDoorMessage:(id)message
{
  messageCopy = message;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = MEMORY[0x277CCABB0];
  messageSubType = [messageCopy messageSubType];
  tapback = [messageSubType tapback];
  messageSummaryInfo = [tapback messageSummaryInfo];
  v10 = [v6 numberWithInteger:{objc_msgSend(messageSummaryInfo, "contentType")}];

  if (v10)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A008], v10);
  }

  messageSubType2 = [messageCopy messageSubType];
  tapback2 = [messageSubType2 tapback];
  messageSummaryInfo2 = [tapback2 messageSummaryInfo];
  summary = [messageSummaryInfo2 summary];

  if (summary)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A050], summary);
  }

  messageSubType3 = [messageCopy messageSubType];
  tapback3 = [messageSubType3 tapback];
  messageSummaryInfo3 = [tapback3 messageSummaryInfo];
  pluginBundleID = [messageSummaryInfo3 pluginBundleID];

  if (pluginBundleID)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A028], pluginBundleID);
  }

  messageSubType4 = [messageCopy messageSubType];
  tapback4 = [messageSubType4 tapback];
  messageSummaryInfo4 = [tapback4 messageSummaryInfo];
  pluginDisplayName = [messageSummaryInfo4 pluginDisplayName];

  if (pluginDisplayName)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A030], pluginDisplayName);
  }

  messageSummaryInfo5 = [messageCopy messageSummaryInfo];
  associatedBalloonBundleID = [messageSummaryInfo5 associatedBalloonBundleID];

  if (associatedBalloonBundleID)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D19FF8], associatedBalloonBundleID);
  }

  messageSummaryInfo6 = [messageCopy messageSummaryInfo];
  sourceApplicationID = [messageSummaryInfo6 sourceApplicationID];

  if (sourceApplicationID)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A040], sourceApplicationID);
  }

  messageSummaryInfo7 = [messageCopy messageSummaryInfo];
  if ([messageSummaryInfo7 has_updatedDateWithServerTime])
  {
    v28 = MEMORY[0x277CCABB0];
    messageSummaryInfo8 = [messageCopy messageSummaryInfo];
    v30 = [v28 numberWithBool:{objc_msgSend(messageSummaryInfo8, "updatedDateWithServerTime")}];

    if (!v30)
    {
      goto LABEL_17;
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A060], v30);
    messageSummaryInfo7 = v30;
  }

LABEL_17:
  messageSummaryInfo9 = [messageCopy messageSummaryInfo];
  if ([messageSummaryInfo9 has_hasBeenRetried])
  {
    v32 = MEMORY[0x277CCABB0];
    messageSummaryInfo10 = [messageCopy messageSummaryInfo];
    v34 = [v32 numberWithBool:{objc_msgSend(messageSummaryInfo10, "hasBeenRetried")}];

    if (!v34)
    {
      goto LABEL_21;
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A020], v34);
    messageSummaryInfo9 = v34;
  }

LABEL_21:
  messageSummaryInfo11 = [messageCopy messageSummaryInfo];
  translatedMessageParts = [messageSummaryInfo11 translatedMessageParts];
  [(IMTextMessagePipelineParameter *)self _addTranslatedMessageParts:translatedMessageParts to:Mutable];

  if ([(__CFDictionary *)Mutable count])
  {
    v37 = Mutable;
  }

  else
  {
    v37 = 0;
  }

  v38 = v37;

  return v37;
}

- (void)_addTranslatedMessageParts:(id)parts to:(id)to
{
  v29 = *MEMORY[0x277D85DE8];
  partsCopy = parts;
  toCopy = to;
  Mutable = [MEMORY[0x277CBEB38] dictionary];
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v22 = Mutable;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = partsCopy;
  v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    v11 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        [v13 messagePartIndex];
        translatedText = [v13 translatedText];
        v15 = [IMTextMessagePipelineParameter convertBlastDoorInstanceTypedAttributesToNativeTypesInAttributedString:translatedText supportingStickerAttributes:1 existingFileTransfersForMessage:v11];
        messageBodyWithNativeAttributes = [v15 messageBodyWithNativeAttributes];

        v17 = objc_alloc(MEMORY[0x277D1ACB0]);
        sourceLanguage = [v13 sourceLanguage];
        translationLanguage = [v13 translationLanguage];
        v20 = [v17 initWithSourceLanguage:sourceLanguage translationLanguage:translationLanguage translatedText:messageBodyWithNativeAttributes];

        IMAddTranslatedMessagePartToMessageSummaryInfo();
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)messageSummaryInfoDictionaryWithBlastDoorBasicMessage:(id)message
{
  messageCopy = message;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = MEMORY[0x277CCABB0];
  messageSubType = [messageCopy messageSubType];
  tapback = [messageSubType tapback];
  messageSummaryInfo = [tapback messageSummaryInfo];
  v9 = [v5 numberWithInteger:{objc_msgSend(messageSummaryInfo, "contentType")}];

  if (v9)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A008], v9);
  }

  messageSubType2 = [messageCopy messageSubType];
  tapback2 = [messageSubType2 tapback];
  messageSummaryInfo2 = [tapback2 messageSummaryInfo];
  summary = [messageSummaryInfo2 summary];

  if (summary)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A050], summary);
  }

  if ([(__CFDictionary *)Mutable count])
  {
    v14 = Mutable;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

+ (id)nicknameDictionaryWithBlastDoorMessage:(id)message
{
  messageCopy = message;
  nicknameInformation = [messageCopy nicknameInformation];
  if (nicknameInformation)
  {
  }

  else
  {
    Mutable = [messageCopy truncatedNicknameRecordKey];

    if (!Mutable)
    {
      goto LABEL_27;
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  nicknameInformation2 = [messageCopy nicknameInformation];
  recordKey = [nicknameInformation2 recordKey];

  if (recordKey)
  {
    CFDictionarySetValue(Mutable, MessageDictionaryNicknameCloudKitRecordKey, recordKey);
  }

  nicknameInformation3 = [messageCopy nicknameInformation];
  decryptionKey = [nicknameInformation3 decryptionKey];

  if (decryptionKey)
  {
    CFDictionarySetValue(Mutable, MessageDictionaryNicknameCloudKitDecryptionRecordKey, decryptionKey);
  }

  truncatedNicknameRecordKey = [messageCopy truncatedNicknameRecordKey];
  if (truncatedNicknameRecordKey)
  {
    CFDictionarySetValue(Mutable, MessageDictionaryNicknameParticipantTruncatedRIDKey, truncatedNicknameRecordKey);
  }

  nicknameInformation4 = [messageCopy nicknameInformation];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    nicknameInformation5 = [messageCopy nicknameInformation];
    lowResWallpaperTag = [nicknameInformation5 lowResWallpaperTag];

    if (lowResWallpaperTag)
    {
      CFDictionarySetValue(Mutable, MessageDictionaryNicknameLowResWallpaperTagKey, lowResWallpaperTag);
    }

    nicknameInformation6 = [messageCopy nicknameInformation];
    wallpaperTag = [nicknameInformation6 wallpaperTag];

    if (wallpaperTag)
    {
      CFDictionarySetValue(Mutable, MessageDictionaryNicknameWallpaperTagKey, wallpaperTag);
    }

    nicknameInformation7 = [messageCopy nicknameInformation];
    wallpaperMetadataTag = [nicknameInformation7 wallpaperMetadataTag];

    if (wallpaperMetadataTag)
    {
      CFDictionarySetValue(Mutable, MessageDictionaryNicknameWallpaperMetadataTagKey, wallpaperMetadataTag);
    }

    nicknameInformation8 = [messageCopy nicknameInformation];
    [nicknameInformation8 includesWallpaperData];
    v20 = NSStringFromBOOL();

    if (v20)
    {
      CFDictionarySetValue(Mutable, MessageDictionaryWallpaperUpdateKey, v20);
    }

    nicknameInformation9 = [messageCopy nicknameInformation];
    messageType = [nicknameInformation9 messageType];

    if (messageType)
    {
      CFDictionarySetValue(Mutable, @"MessageType", messageType);
    }

    v23 = objc_alloc(MEMORY[0x277CCABB0]);
    nicknameInformation10 = [messageCopy nicknameInformation];
    v25 = [v23 initWithLong:{objc_msgSend(nicknameInformation10, "updateInfoIncluded")}];

    if (v25)
    {
      CFDictionarySetValue(Mutable, MessageDictionaryNicknameUpdateInfoIncluded, v25);
    }
  }

  nicknameInformation11 = [messageCopy nicknameInformation];
  avatarRecipeDataTag = [nicknameInformation11 avatarRecipeDataTag];

  if (avatarRecipeDataTag)
  {
    CFDictionarySetValue(Mutable, MessageDictionaryNicknameAvatarRecipeDataTagKey, avatarRecipeDataTag);
  }

LABEL_27:

  return Mutable;
}

+ (id)transcriptBackgroundVersionWithBlastDoorMessage:(id)message
{
  messageCopy = message;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [messageCopy has_transcriptBackgroundVersion])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(messageCopy, "transcriptBackgroundVersion")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)availabilityOffGridRecipientSubscriptionValidationTokenWithBlastDoorMessage:(id)message
{
  messageCopy = message;
  if (objc_opt_respondsToSelector())
  {
    availabilityOffGridRecipientSubscriptionValidationToken = [messageCopy availabilityOffGridRecipientSubscriptionValidationToken];
  }

  else
  {
    availabilityOffGridRecipientSubscriptionValidationToken = 0;
  }

  return availabilityOffGridRecipientSubscriptionValidationToken;
}

+ (id)availabilityOffGridRecipientEncryptionValidationTokenWithBlastDoorMessage:(id)message
{
  messageCopy = message;
  if (objc_opt_respondsToSelector())
  {
    availabilityOffGridRecipientEncryptionValidationToken = [messageCopy availabilityOffGridRecipientEncryptionValidationToken];
  }

  else
  {
    availabilityOffGridRecipientEncryptionValidationToken = 0;
  }

  return availabilityOffGridRecipientEncryptionValidationToken;
}

+ (BOOL)seenAsOffGridWithBlastDoorMessage:(id)message
{
  messageCopy = message;
  if (objc_opt_respondsToSelector())
  {
    seenAsOffGrid = [messageCopy seenAsOffGrid];
  }

  else
  {
    seenAsOffGrid = 0;
  }

  return seenAsOffGrid;
}

+ (id)lastPublisherOfOffGridStatusWithBlastDoorMessage:(id)message
{
  messageCopy = message;
  if (objc_opt_respondsToSelector())
  {
    lastPublisherOfOffGridStatus = [messageCopy lastPublisherOfOffGridStatus];
  }

  else
  {
    lastPublisherOfOffGridStatus = 0;
  }

  return lastPublisherOfOffGridStatus;
}

+ (id)replicationSourceServiceNameWithBlastDoorMessage:(id)message
{
  v15 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([messageCopy has_replicationSourceID])
  {
    replicationSourceID = [messageCopy replicationSourceID];
    v5 = +[IMDServiceController sharedController];
    v6 = [v5 serviceWithReplicationSourceID:replicationSourceID];

    internalName = [v6 internalName];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412546;
        v12 = internalName;
        v13 = 2048;
        v14 = replicationSourceID;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Resolved replication source service to %@ for ID %llu", &v11, 0x16u);
      }
    }
  }

  else
  {
    internalName = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return internalName;
}

+ (id)replicationSourceServiceNameWithBlastDoorBasicMessage:(id)message
{
  v15 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([messageCopy has_replicationSourceID])
  {
    replicationSourceID = [messageCopy replicationSourceID];
    v5 = +[IMDServiceController sharedController];
    v6 = [v5 serviceWithReplicationSourceID:replicationSourceID];

    internalName = [v6 internalName];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412546;
        v12 = internalName;
        v13 = 2048;
        v14 = replicationSourceID;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Resolved replication source service to %@ for ID %llu", &v11, 0x16u);
      }
    }
  }

  else
  {
    internalName = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return internalName;
}

+ (unint64_t)scheduleTypeWithBlastDoorTextMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy scheduleType] == -1)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Got message with Unspecified ScheduleType, downgrading to NotScheduled", v7, 2u);
      }
    }

    scheduleType = 0;
  }

  else
  {
    scheduleType = [messageCopy scheduleType];
  }

  return scheduleType;
}

+ (id)richBodyWithBlastDoorMessage:(id)message
{
  messageCopy = message;
  messageSubType = [messageCopy messageSubType];
  type = [messageSubType type];

  content = 0;
  if (type <= 3)
  {
    if (type == 1)
    {
      messageSubType2 = [messageCopy messageSubType];
      textMessage = [messageSubType2 textMessage];
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_15;
      }

      messageSubType2 = [messageCopy messageSubType];
      textMessage = [messageSubType2 balloonPlugin];
    }

    goto LABEL_13;
  }

  if (type != 4)
  {
    if (type != 5)
    {
      if (type != 7)
      {
        goto LABEL_15;
      }

      messageSubType2 = [messageCopy messageSubType];
      stickerTapback = [messageSubType2 stickerTapback];
      goto LABEL_10;
    }

    messageSubType2 = [messageCopy messageSubType];
    textMessage = [messageSubType2 audioMessage];
LABEL_13:
    v10 = textMessage;
    content = [textMessage content];
    goto LABEL_14;
  }

  messageSubType2 = [messageCopy messageSubType];
  stickerTapback = [messageSubType2 sticker];
LABEL_10:
  v10 = stickerTapback;
  messageContent = [stickerTapback messageContent];
  content = [messageContent content];

LABEL_14:
LABEL_15:

  return content;
}

+ (id)richBodyWithBlastDoorBasicMessage:(id)message
{
  messageCopy = message;
  messageSubType = [messageCopy messageSubType];
  type = [messageSubType type];

  if (type == 3)
  {
    messageSubType2 = [messageCopy messageSubType];
    audioMessage = [messageSubType2 audioMessage];
    goto LABEL_5;
  }

  if (type == 1)
  {
    messageSubType2 = [messageCopy messageSubType];
    audioMessage = [messageSubType2 textMessage];
LABEL_5:
    v8 = audioMessage;
    content = [audioMessage content];

    goto LABEL_7;
  }

  content = 0;
LABEL_7:

  return content;
}

+ (id)attributionInfoArrayWithBlastDoorMessage:(id)message
{
  messageCopy = message;
  messageSubType = [messageCopy messageSubType];
  type = [messageSubType type];

  switch(type)
  {
    case 4:
      messageSubType2 = [messageCopy messageSubType];
      sticker = [messageSubType2 sticker];
      messageContent = [sticker messageContent];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        messageSubType3 = [messageCopy messageSubType];
        sticker2 = [messageSubType3 sticker];
        messageContent2 = [sticker2 messageContent];
        attributionInfo = [messageContent2 attributionInfo];

        goto LABEL_7;
      }

      break;
    case 3:
      messageSubType3 = [messageCopy messageSubType];
      balloonPlugin = [messageSubType3 balloonPlugin];
      goto LABEL_6;
    case 1:
      messageSubType3 = [messageCopy messageSubType];
      balloonPlugin = [messageSubType3 textMessage];
LABEL_6:
      sticker2 = balloonPlugin;
      attributionInfo = [balloonPlugin attributionInfo];
LABEL_7:

      goto LABEL_11;
  }

  attributionInfo = 0;
LABEL_11:
  v16 = [self convertAttributionInfoToArray:attributionInfo];

  return v16;
}

+ (id)plainTextBodyWithBlastDoorMessage:(id)message
{
  messageCopy = message;
  messageSubType = [messageCopy messageSubType];
  type = [messageSubType type];

  if (type == 3)
  {
    messageSubType2 = [messageCopy messageSubType];
    balloonPlugin = [messageSubType2 balloonPlugin];
    goto LABEL_5;
  }

  if (type == 1)
  {
    messageSubType2 = [messageCopy messageSubType];
    balloonPlugin = [messageSubType2 textMessage];
LABEL_5:
    v8 = balloonPlugin;
    plainTextBody = [balloonPlugin plainTextBody];

    goto LABEL_7;
  }

  plainTextBody = 0;
LABEL_7:

  return plainTextBody;
}

+ (id)plainTextBodyWithBlastDoorBasicMessage:(id)message
{
  messageCopy = message;
  messageSubType = [messageCopy messageSubType];
  type = [messageSubType type];

  if (type == 1)
  {
    messageSubType2 = [messageCopy messageSubType];
    textMessage = [messageSubType2 textMessage];
    plainTextBody = [textMessage plainTextBody];
  }

  else
  {
    plainTextBody = 0;
  }

  return plainTextBody;
}

+ (id)plainTextSubjectWithBlastDoorMessage:(id)message
{
  messageCopy = message;
  messageSubType = [messageCopy messageSubType];
  type = [messageSubType type];

  if (type == 1)
  {
    messageSubType2 = [messageCopy messageSubType];
    textMessage = [messageSubType2 textMessage];
    plainTextSubject = [textMessage plainTextSubject];
  }

  else
  {
    plainTextSubject = 0;
  }

  return plainTextSubject;
}

+ (id)plainTextSubjectWithBlastDoorBasicMessage:(id)message
{
  messageCopy = message;
  messageSubType = [messageCopy messageSubType];
  type = [messageSubType type];

  if (type == 1)
  {
    messageSubType2 = [messageCopy messageSubType];
    textMessage = [messageSubType2 textMessage];
    plainTextSubject = [textMessage plainTextSubject];
  }

  else
  {
    plainTextSubject = 0;
  }

  return plainTextSubject;
}

+ (id)fileTransferForBlastDoorFileTransferAttribute:(id)attribute fileTransferGUIDs:(id)ds supportingStickerAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  v79 = *MEMORY[0x277D85DE8];
  attributeCopy = attribute;
  dsCopy = ds;
  name = [attributeCopy name];
  if (!name)
  {
    v18 = 0;
    goto LABEL_40;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(attributeCopy, "datasize")}];
  stringValue = [v8 stringValue];

  attachmentSubtype = [attributeCopy attachmentSubtype];
  livePhoto = [attachmentSubtype livePhoto];

  iris = [livePhoto iris];
  if ([iris length])
  {
    if ([dsCopy count])
    {
      lastObject = [dsCopy lastObject];
      v11 = +[IMDFileTransferCenter sharedInstance];
      v12 = [v11 transferForGUID:lastObject];

      if (v12)
      {
        [v12 setIsAuxImage:1];
        v13 = [MEMORY[0x277D1A9C0] AuxGUIDFromFileTransferGUID:lastObject];
        v14 = +[IMDFileTransferCenter sharedInstance];
        lastPathComponent = [name lastPathComponent];
        LOWORD(v64) = 0;
        [v14 makeNewIncomingTransferWithGUID:v13 filename:lastPathComponent isDirectory:0 totalBytes:objc_msgSend(stringValue hfsType:"longLongValue") hfsCreator:0 hfsFlags:{0, v64}];

        v16 = v13;
        v17 = +[IMDFileTransferCenter sharedInstance];
        v18 = [v17 transferForGUID:v16];

        if (v18)
        {
          [v18 setIsAuxVideo:1];
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v76 = v18;
              _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Successfully created AuxVideo transfer %@", buf, 0xCu);
            }
          }

          goto LABEL_24;
        }

        if (IMOSLoggingEnabled())
        {
          v37 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v76 = v16;
            _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Was not able to create Aux video transfer for guid %@", buf, 0xCu);
          }
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v76 = lastObject;
            _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Could not find Aux image transfer with guid %@ while parsing message", buf, 0xCu);
          }
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v76 = name;
        v77 = 2112;
        v78 = dsCopy;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Could not find Aux image transfer with name (%@) because the list of guids was nil or empty: %@", buf, 0x16u);
      }
    }

    v36 = 0;
    v18 = 0;
    goto LABEL_39;
  }

  v20 = +[IMDFileTransferCenter sharedInstance];
  lastPathComponent2 = [name lastPathComponent];
  v16 = [v20 guidForNewIncomingTransferWithFilename:lastPathComponent2 isDirectory:0 totalBytes:objc_msgSend(stringValue hfsType:"longLongValue") hfsCreator:0 hfsFlags:{0, 0}];

  if (v16)
  {
    v22 = +[IMDFileTransferCenter sharedInstance];
    v18 = [v22 transferForGUID:v16];
  }

  else
  {
    v18 = 0;
  }

LABEL_24:
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  attachments = [attributeCopy attachments];
  v27 = [attachments sortedArrayUsingComparator:&unk_283F197A8];

  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = sub_22B51FCBC;
  v71[3] = &unk_2787034D0;
  v28 = Mutable;
  v72 = v28;
  v29 = name;
  v73 = v29;
  v30 = attributeCopy;
  v74 = v30;
  [v27 enumerateObjectsUsingBlock:v71];
  attachmentSubtype2 = [v30 attachmentSubtype];
  audioMessage = [attachmentSubtype2 audioMessage];

  if (audioMessage)
  {
    CFDictionarySetValue(v28, @"name", v29);
    utiType = [v30 utiType];
    if (utiType)
    {
      CFDictionarySetValue(v28, @"uti-type", utiType);
    }

    inlineAttachmentKey = [audioMessage inlineAttachmentKey];
    if (inlineAttachmentKey)
    {
      CFDictionarySetValue(v28, @"inline-attachment", inlineAttachmentKey);
    }

    audioTranscription = [audioMessage audioTranscription];
    if (audioTranscription)
    {
      CFDictionarySetValue(v28, @"audio-transcription", audioTranscription);
    }
  }

  [v18 setUserInfo:v28];

  v36 = 1;
LABEL_39:

  if ((v36 & 1) == 0)
  {
    v53 = 0;
    goto LABEL_55;
  }

LABEL_40:
  attachmentSubtype3 = [attributeCopy attachmentSubtype];
  emojiImage = [attachmentSubtype3 emojiImage];

  if (emojiImage)
  {
    emojiImageContentIdentifer = [emojiImage emojiImageContentIdentifer];
    emojiImageShortDescription = [emojiImage emojiImageShortDescription];
    v42 = [self stickerInfoDictionaryFromBlastDoorEmojiImageAttachmentInfo:emojiImage];
    [v18 setAdaptiveImageGlyphContentIdentifier:emojiImageContentIdentifer];
    [v18 setAdaptiveImageGlyphContentDescription:emojiImageShortDescription];
    [v18 setStickerUserInfo:v42];
  }

  if (v18 && attributesCopy)
  {
    attachmentSubtype4 = [attributeCopy attachmentSubtype];
    sticker = [attachmentSubtype4 sticker];

    if (sticker)
    {
      v45 = [self stickerInfoDictionaryFromBlastDoorStickerAttachmentInfo:sticker];
      if (v45)
      {
        [v18 setStickerUserInfo:v45];
      }

      else
      {
        v54 = IMLogHandleForCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D0614(v54, v55, v56, v57, v58, v59, v60, v61);
        }
      }
    }
  }

  else
  {
    sticker = IMLogHandleForCategory();
    if (os_log_type_enabled(sticker, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D05DC(sticker, v46, v47, v48, v49, v50, v51, v52);
    }
  }

  v18 = v18;
  v53 = v18;
LABEL_55:

  v62 = *MEMORY[0x277D85DE8];

  return v53;
}

+ (id)stickerInfoDictionaryWithStickerGUID:(id)d stickerPackGUID:(id)iD stickerHash:(id)hash positionIntent:(id)intent associatedPositionIntent:(id)positionIntent parentPreviewWidth:(id)width stickerXOffset:(id)offset stickerYOffset:(id)self0 stickerScale:(id)self1 stickerRotation:(id)self2 stickerBundleID:(id)self3 stickerIsReaction:(id)self4 stickerPositionVersion:(id)self5 stickerExternalURI:(id)self6
{
  dCopy = d;
  iDCopy = iD;
  hashCopy = hash;
  intentCopy = intent;
  positionIntentCopy = positionIntent;
  widthCopy = width;
  offsetCopy = offset;
  v25 = dCopy;
  yOffsetCopy = yOffset;
  scaleCopy = scale;
  rotationCopy = rotation;
  bundleIDCopy = bundleID;
  reactionCopy = reaction;
  versionCopy = version;
  iCopy = i;
  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31 = v30;
  if (v25)
  {
    CFDictionarySetValue(v30, *MEMORY[0x277D1A748], v25);
  }

  v38 = scaleCopy;
  if (iDCopy)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A760], iDCopy);
  }

  if (hashCopy)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A750], hashCopy);
  }

  if (intentCopy)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A718], intentCopy);
  }

  if (positionIntentCopy)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A710], positionIntentCopy);
  }

  if (widthCopy)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A720], widthCopy);
  }

  if (offsetCopy)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A778], offsetCopy);
  }

  if (yOffsetCopy)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A780], yOffsetCopy);
  }

  if (scaleCopy)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A730], scaleCopy);
  }

  if (rotationCopy)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A728], rotationCopy);
  }

  if (bundleIDCopy)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A738], bundleIDCopy);
  }

  if (reactionCopy)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A758], reactionCopy);
  }

  if (versionCopy)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A768], versionCopy);
  }

  if (iCopy)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A740], iCopy);
  }

  v32 = [(__CFDictionary *)v31 copy];

  return v32;
}

+ (id)stickerInfoDictionaryFromBlastDoorStickerAttachmentInfo:(id)info
{
  infoCopy = info;
  stickerIdentifier = [infoCopy stickerIdentifier];
  stickerPackIdentifier = [infoCopy stickerPackIdentifier];
  stickerHash = [infoCopy stickerHash];
  if ([infoCopy has_positionIntent])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(infoCopy, "positionIntent")}];
    stringValue = [v5 stringValue];
  }

  else
  {
    stringValue = 0;
  }

  if ([infoCopy has_associatedPositionIntent])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(infoCopy, "associatedPositionIntent")}];
    stringValue2 = [v6 stringValue];
  }

  else
  {
    stringValue2 = 0;
  }

  if ([infoCopy has_parentPreviewWidth])
  {
    v7 = MEMORY[0x277CCABB0];
    [infoCopy parentPreviewWidth];
    v8 = [v7 numberWithDouble:?];
    stringValue3 = [v8 stringValue];
  }

  else
  {
    stringValue3 = 0;
  }

  if ([infoCopy has_stickerOffset])
  {
    v9 = MEMORY[0x277CCABB0];
    [infoCopy stickerOffset];
    v10 = [v9 numberWithDouble:?];
    stringValue4 = [v10 stringValue];
  }

  else
  {
    stringValue4 = 0;
  }

  if ([infoCopy has_stickerOffset])
  {
    v11 = MEMORY[0x277CCABB0];
    [infoCopy stickerOffset];
    v13 = [v11 numberWithDouble:v12];
    stringValue5 = [v13 stringValue];
  }

  else
  {
    stringValue5 = 0;
  }

  if ([infoCopy has_stickerScale])
  {
    v14 = MEMORY[0x277CCABB0];
    [infoCopy stickerScale];
    v15 = [v14 numberWithDouble:?];
    stringValue6 = [v15 stringValue];
  }

  else
  {
    stringValue6 = 0;
  }

  if ([infoCopy has_stickerRotation])
  {
    v17 = MEMORY[0x277CCABB0];
    [infoCopy stickerRotation];
    [v17 numberWithDouble:?];
    v19 = v18 = self;
    stringValue7 = [v19 stringValue];

    self = v18;
  }

  else
  {
    stringValue7 = 0;
  }

  balloonBundleID = [infoCopy balloonBundleID];
  isReaction = [infoCopy isReaction];
  stickerPositionVersion = [infoCopy stickerPositionVersion];
  stickerExternalURI = [infoCopy stickerExternalURI];
  v24 = [MEMORY[0x277CCABB0] numberWithBool:isReaction];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:stickerPositionVersion];
  v28 = [self stickerInfoDictionaryWithStickerGUID:stickerIdentifier stickerPackGUID:stickerPackIdentifier stickerHash:stickerHash positionIntent:stringValue associatedPositionIntent:stringValue2 parentPreviewWidth:stringValue3 stickerXOffset:stringValue4 stickerYOffset:stringValue5 stickerScale:stringValue6 stickerRotation:stringValue7 stickerBundleID:balloonBundleID stickerIsReaction:v24 stickerPositionVersion:v25 stickerExternalURI:stickerExternalURI];

  return v28;
}

+ (id)stickerInfoDictionaryFromBlastDoorEmojiImageAttachmentInfo:(id)info
{
  infoCopy = info;
  stickerIdentifier = [infoCopy stickerIdentifier];
  stickerPackIdentifier = [infoCopy stickerPackIdentifier];
  stickerHash = [infoCopy stickerHash];
  stickerBalloonBundleID = [infoCopy stickerBalloonBundleID];
  stickerExternalURI = [infoCopy stickerExternalURI];

  v10 = [self stickerInfoDictionaryWithStickerGUID:stickerIdentifier stickerPackGUID:stickerPackIdentifier stickerHash:stickerHash positionIntent:0 associatedPositionIntent:0 parentPreviewWidth:0 stickerXOffset:0 stickerYOffset:0 stickerScale:0 stickerRotation:0 stickerBundleID:stickerBalloonBundleID stickerIsReaction:0 stickerPositionVersion:0 stickerExternalURI:stickerExternalURI];

  return v10;
}

+ (id)_fileTransferMatchingAttribute:(id)attribute inFileTransfers:(id)transfers
{
  v46 = *MEMORY[0x277D85DE8];
  attributeCopy = attribute;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = transfers;
  v31 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v31)
  {
    v33 = 0;
    v30 = *v41;
    do
    {
      v5 = 0;
      do
      {
        if (*v41 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v5;
        v6 = *(*(&v40 + 1) + 8 * v5);
        attachments = [attributeCopy attachments];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v34 = attachments;
        v8 = [v34 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v37;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v37 != v10)
              {
                objc_enumerationMutation(v34);
              }

              v12 = *(*(&v36 + 1) + 8 * i);
              attachmentURL = [v12 attachmentURL];
              absoluteString = [attachmentURL absoluteString];

              encryptionKey = [v12 encryptionKey];
              if ([absoluteString length])
              {
                userInfo = [v6 userInfo];
                v17 = [userInfo objectForKeyedSubscript:@"mmcs-url"];

                userInfo2 = [v6 userInfo];
                v19 = [userInfo2 objectForKeyedSubscript:@"decryption-key"];

                if ([v17 isEqualToString:absoluteString] && (objc_msgSend(v19, "isEqualToString:", encryptionKey) & 1) != 0)
                {
                  v26 = v6;

                  v33 = v26;
                  goto LABEL_25;
                }
              }

              attachmentSubtype = [attributeCopy attachmentSubtype];
              emojiImage = [attachmentSubtype emojiImage];
              emojiImageContentIdentifer = [emojiImage emojiImageContentIdentifer];

              adaptiveImageGlyphContentIdentifier = [v6 adaptiveImageGlyphContentIdentifier];
              if ([emojiImageContentIdentifer length] && objc_msgSend(adaptiveImageGlyphContentIdentifier, "length") && objc_msgSend(emojiImageContentIdentifer, "isEqualToString:", adaptiveImageGlyphContentIdentifier))
              {
                v24 = v6;

                v25 = 0;
                v33 = v24;
              }

              else
              {
                v25 = 1;
              }

              if (!v25)
              {
                goto LABEL_25;
              }
            }

            v9 = [v34 countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_25:

        v5 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v31);
  }

  else
  {
    v33 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v33;
}

+ (id)convertBlastDoorInstanceTypedAttributesToNativeTypesInAttributedString:(id)string supportingStickerAttributes:(BOOL)attributes existingFileTransfersForMessage:(id)message
{
  messageCopy = message;
  if (string)
  {
    v9 = [string mutableCopy];
    v10 = [v9 length];
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = sub_22B520BB4;
    v24 = &unk_2787034F8;
    selfCopy = self;
    v25 = messageCopy;
    v26 = v11;
    attributesCopy = attributes;
    v27 = v12;
    v28 = v9;
    v13 = v9;
    v14 = v12;
    v15 = v11;
    [v13 enumerateAttributesInRange:0 options:v10 usingBlock:{0, &v21}];
    v16 = [IMTextMessageAttributedStringContent alloc];
    v17 = [v13 copy];
    v18 = [v14 copy];
    v19 = [(IMTextMessageAttributedStringContent *)v16 initWithMessageBodyWithNativeAttributes:v17 fileTransferGuids:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
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

- (IMTextMessagePipelineParameter)initWithBD:(id)d idsTrustedData:(id)data
{
  dCopy = d;
  dataCopy = data;
  v86.receiver = self;
  v86.super_class = IMTextMessagePipelineParameter;
  v8 = [(IMTextMessagePipelineParameter *)&v86 init];
  if (!v8)
  {
    goto LABEL_32;
  }

  fromIdentifier = [dataCopy fromIdentifier];
  [(IMTextMessagePipelineParameter *)v8 setFromIdentifier:fromIdentifier];

  toIdentifier = [dataCopy toIdentifier];
  [(IMTextMessagePipelineParameter *)v8 setToIdentifier:toIdentifier];

  -[IMTextMessagePipelineParameter setIsFromMe:](v8, "setIsFromMe:", [dataCopy isFromMe]);
  batchContext = [dataCopy batchContext];
  batchContext = v8->_batchContext;
  v8->_batchContext = batchContext;

  metadata = [dCopy metadata];
  messageGUID = [metadata messageGUID];
  uUIDString = [messageGUID UUIDString];

  v15 = metadata;
  timestamp = [metadata timestamp];
  v16 = [IMTextMessagePipelineParameter richBodyWithBlastDoorMessage:dCopy];
  supportsStickerAttributesInMessageBody = [(IMTextMessagePipelineParameter *)v8 supportsStickerAttributesInMessageBody];
  v82 = v16;
  v18 = [IMTextMessagePipelineParameter convertBlastDoorInstanceTypedAttributesToNativeTypesInAttributedString:v16 supportingStickerAttributes:supportsStickerAttributesInMessageBody existingFileTransfersForMessage:MEMORY[0x277CBEBF8]];
  messageBodyWithNativeAttributes = [v18 messageBodyWithNativeAttributes];
  v81 = v18;
  fileTransferGuids = [v18 fileTransferGuids];
  v21 = [IMTextMessagePipelineParameter plainTextBodyWithBlastDoorMessage:dCopy];
  if (!messageBodyWithNativeAttributes)
  {
    v22 = objc_alloc(MEMORY[0x277CCA898]);
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = @" ";
    }

    v24 = [v22 initWithString:v23];
    messageBodyWithNativeAttributes = [(IMTextMessagePipelineParameter *)v8 _createSuperFormattedStringWithAttributedString:v24];
  }

  v25 = [IMTextMessagePipelineParameter plainTextSubjectWithBlastDoorMessage:dCopy];
  v26 = [IMTextMessagePipelineParameter attributionInfoArrayWithBlastDoorMessage:dCopy];
  [(IMTextMessagePipelineParameter *)v8 setAttributionInfoArray:v26];

  v79 = messageBodyWithNativeAttributes;
  [(IMTextMessagePipelineParameter *)v8 setRichBody:messageBodyWithNativeAttributes];
  [(IMTextMessagePipelineParameter *)v8 setPlainTextBody:v21];
  v78 = v25;
  [(IMTextMessagePipelineParameter *)v8 setPlainTextSubject:v25];
  v80 = fileTransferGuids;
  [(IMTextMessagePipelineParameter *)v8 setFileTransferGUIDs:fileTransferGuids];
  messageSubType = [dCopy messageSubType];
  audioMessage = [messageSubType audioMessage];
  inlineAudioMessages = [audioMessage inlineAudioMessages];

  v30 = v15;
  if ([inlineAudioMessages count] == 1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    firstObject = [inlineAudioMessages firstObject];
    if (firstObject)
    {
      CFDictionarySetValue(Mutable, @"ia-0", firstObject);
    }

    [(IMTextMessagePipelineParameter *)v8 setInlineAttachmentsDictionary:Mutable];
  }

  [(IMTextMessagePipelineParameter *)v8 setGUID:uUIDString];
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:timestamp];
  [(IMTextMessagePipelineParameter *)v8 setTimestamp:v33];

  storageContext = [v15 storageContext];
  -[IMTextMessagePipelineParameter setIsFromStorage:](v8, "setIsFromStorage:", [storageContext isFromStorage]);

  storageContext2 = [v15 storageContext];
  -[IMTextMessagePipelineParameter setIsLastFromStorage:](v8, "setIsLastFromStorage:", [storageContext2 isLastFromStorage]);

  -[IMTextMessagePipelineParameter setWantsDeliveryReceipt:](v8, "setWantsDeliveryReceipt:", [v15 wantsDeliveryReceipt]);
  -[IMTextMessagePipelineParameter setWantsCheckpointing:](v8, "setWantsCheckpointing:", [v15 wantsCheckpointing]);
  v36 = [IMTextMessagePipelineParameter participantDestinationIdentifierWithMessage:dCopy];
  [(IMTextMessagePipelineParameter *)v8 setParticipantIdentifiers:v36];

  v37 = [(IMTextMessagePipelineParameter *)v8 messageSummaryInfoDictionaryWithBlastDoorMessage:dCopy];
  [(IMTextMessagePipelineParameter *)v8 setMessageSummaryInfo:v37];

  v38 = [IMTextMessagePipelineParameter nicknameDictionaryWithBlastDoorMessage:dCopy];
  [(IMTextMessagePipelineParameter *)v8 setNicknameDictionary:v38];

  v39 = [IMTextMessagePipelineParameter transcriptBackgroundVersionWithBlastDoorMessage:dCopy];
  [(IMTextMessagePipelineParameter *)v8 setTranscriptBackgroundVersion:v39];

  [(IMTextMessagePipelineParameter *)v8 setAutoReply:[IMTextMessagePipelineParameter isAutoReplyWithBlastDoorMessage:dCopy]];
  v40 = [IMTextMessagePipelineParameter availabilityVerificationRecipientChannelIDPrefixWithBlastDoorMessage:dCopy];
  [(IMTextMessagePipelineParameter *)v8 setAvailabilityVerificationRecipientChannelIDPrefix:v40];

  v41 = [IMTextMessagePipelineParameter availabilityVerificationRecipientEncryptionValidationTokenWithBlastDoorTextMessage:dCopy];
  [(IMTextMessagePipelineParameter *)v8 setAvailabilityVerificationRecipientEncryptionValidationToken:v41];

  v42 = [IMTextMessagePipelineParameter availabilityOffGridRecipientSubscriptionValidationTokenWithBlastDoorMessage:dCopy];
  [(IMTextMessagePipelineParameter *)v8 setAvailabilityOffGridRecipientSubscriptionValidationToken:v42];

  v43 = [IMTextMessagePipelineParameter availabilityOffGridRecipientEncryptionValidationTokenWithBlastDoorMessage:dCopy];
  [(IMTextMessagePipelineParameter *)v8 setAvailabilityOffGridRecipientEncryptionValidationToken:v43];

  [(IMTextMessagePipelineParameter *)v8 setSeenAsOffGrid:[IMTextMessagePipelineParameter seenAsOffGridWithBlastDoorMessage:dCopy]];
  v44 = [IMTextMessagePipelineParameter lastPublisherOfOffGridStatusWithBlastDoorMessage:dCopy];
  [(IMTextMessagePipelineParameter *)v8 setLastPublisherOfOffGridStatus:v44];

  [(IMTextMessagePipelineParameter *)v8 setExpirable:[IMTextMessagePipelineParameter isExpirableWithBlastDoorTextMessage:dCopy]];
  [(IMTextMessagePipelineParameter *)v8 setSos:[IMTextMessagePipelineParameter isSOSWithBlastDoorMessage:dCopy]];
  [(IMTextMessagePipelineParameter *)v8 setCritical:[IMTextMessagePipelineParameter isCriticalWithBlastDoorMessage:dCopy]];
  [(IMTextMessagePipelineParameter *)v8 setIsBIA:[IMTextMessagePipelineParameter isBIAWithBlastDoorMessage:dCopy]];
  v45 = [IMTextMessagePipelineParameter biaReferenceIDWithBlastDoorMessage:dCopy];
  [(IMTextMessagePipelineParameter *)v8 setBiaReferenceID:v45];

  v46 = [IMTextMessagePipelineParameter replicationSourceServiceNameWithBlastDoorMessage:dCopy];
  [(IMTextMessagePipelineParameter *)v8 setReplicationSourceServiceName:v46];

  [(IMTextMessagePipelineParameter *)v8 setScheduleType:[IMTextMessagePipelineParameter scheduleTypeWithBlastDoorTextMessage:dCopy]];
  v47 = [IMTextMessagePipelineParameter scheduledDateWithBlastDoorTextMessage:dCopy];
  [(IMTextMessagePipelineParameter *)v8 setScheduledDate:v47];

  threadIdentifierGUID = [dCopy threadIdentifierGUID];
  [(IMTextMessagePipelineParameter *)v8 setThreadIdentifierGUID:threadIdentifierGUID];

  threadOriginatorFallbackHash = [dCopy threadOriginatorFallbackHash];
  [(IMTextMessagePipelineParameter *)v8 setThreadOriginatorFallbackHash:threadOriginatorFallbackHash];

  expressiveSendStyleIdentifier = [dCopy expressiveSendStyleIdentifier];
  [(IMTextMessagePipelineParameter *)v8 setExpressiveSendStyleIdentifier:expressiveSendStyleIdentifier];

  if ([dCopy has_groupParticipantVersion])
  {
    v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dCopy, "groupParticipantVersion")}];
    [(IMTextMessagePipelineParameter *)v8 setGroupParticipantVersion:v51];
  }

  else
  {
    [(IMTextMessagePipelineParameter *)v8 setGroupParticipantVersion:0];
  }

  if ([dCopy has_groupProtocolVersion])
  {
    v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dCopy, "groupProtocolVersion")}];
    [(IMTextMessagePipelineParameter *)v8 setGroupProtocolVersion:v52];
  }

  else
  {
    [(IMTextMessagePipelineParameter *)v8 setGroupProtocolVersion:0];
  }

  v77 = dataCopy;
  v53 = inlineAudioMessages;
  if ([dCopy has_groupPhotoCreationTime])
  {
    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(dCopy, "groupPhotoCreationTime")}];
    [(IMTextMessagePipelineParameter *)v8 setGroupPhotoCreationTime:v54];
  }

  else
  {
    [(IMTextMessagePipelineParameter *)v8 setGroupPhotoCreationTime:0];
  }

  replicatedFallbackGUIDs = [dCopy replicatedFallbackGUIDs];
  [(IMTextMessagePipelineParameter *)v8 setReplicatedFallbackGUIDs:replicatedFallbackGUIDs];

  participantIdentifiers = [(IMTextMessagePipelineParameter *)v8 participantIdentifiers];
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = sub_22B522470;
  v84[3] = &unk_278702A40;
  v57 = v8;
  v85 = v57;
  v58 = [participantIdentifiers __imArrayByFilteringWithBlock:v84];
  _IDsFromURIs = [v58 _IDsFromURIs];

  fromIdentifier2 = [(IMTextMessagePipelineParameter *)v57 fromIdentifier];
  _stripFZIDPrefix = [fromIdentifier2 _stripFZIDPrefix];

  participantIdentifiers2 = [(IMTextMessagePipelineParameter *)v57 participantIdentifiers];
  v63 = [participantIdentifiers2 count];

  if (v63 <= 2)
  {
    if (!-[IMTextMessagePipelineParameter isFromMe](v57, "isFromMe") || ![_IDsFromURIs count])
    {
      goto LABEL_26;
    }

    lastObject = [_IDsFromURIs lastObject];
    _stripFZIDPrefix2 = [lastObject _stripFZIDPrefix];

    _stripFZIDPrefix = _stripFZIDPrefix2;
  }

  else
  {
    groupID = [dCopy groupID];
    [(IMTextMessagePipelineParameter *)v57 setGroupID:groupID];

    lastObject = [dCopy currentGroupName];
    [(IMTextMessagePipelineParameter *)v57 setCurrentGroupName:lastObject];
  }

LABEL_26:
  if ([_stripFZIDPrefix length])
  {
    [(IMTextMessagePipelineParameter *)v57 setFromDisplayID:_stripFZIDPrefix];
  }

  else
  {
    v67 = IMLogHandleForCategory();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D064C(v67, v68, v69, v70, v71, v72, v73, v74);
    }
  }

  dataCopy = v77;
LABEL_32:

  return v8;
}

- (IMTextMessagePipelineParameter)initWithBDBasic:(id)basic idsTrustedData:(id)data
{
  basicCopy = basic;
  dataCopy = data;
  v63.receiver = self;
  v63.super_class = IMTextMessagePipelineParameter;
  v8 = [(IMTextMessagePipelineParameter *)&v63 init];
  if (v8)
  {
    fromIdentifier = [dataCopy fromIdentifier];
    [(IMTextMessagePipelineParameter *)v8 setFromIdentifier:fromIdentifier];

    toIdentifier = [dataCopy toIdentifier];
    [(IMTextMessagePipelineParameter *)v8 setToIdentifier:toIdentifier];

    -[IMTextMessagePipelineParameter setIsFromMe:](v8, "setIsFromMe:", [dataCopy isFromMe]);
    metadata = [basicCopy metadata];
    messageGUID = [metadata messageGUID];
    uUIDString = [messageGUID UUIDString];

    timestamp = [metadata timestamp];
    v59 = [IMTextMessagePipelineParameter richBodyWithBlastDoorBasicMessage:basicCopy];
    v14 = [IMTextMessagePipelineParameter convertBlastDoorInstanceTypedAttributesToNativeTypesInAttributedString:"convertBlastDoorInstanceTypedAttributesToNativeTypesInAttributedString:supportingStickerAttributes:existingFileTransfersForMessage:" supportingStickerAttributes:? existingFileTransfersForMessage:?];
    messageBodyWithNativeAttributes = [v14 messageBodyWithNativeAttributes];
    v58 = v14;
    v16 = v14;
    v17 = messageBodyWithNativeAttributes;
    fileTransferGuids = [v16 fileTransferGuids];
    v19 = [IMTextMessagePipelineParameter plainTextBodyWithBlastDoorBasicMessage:basicCopy];
    if (!v17)
    {
      v20 = objc_alloc(MEMORY[0x277CCA898]);
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = @" ";
      }

      v22 = [v20 initWithString:v21];
      v23 = [(IMTextMessagePipelineParameter *)v8 _createSuperFormattedStringWithAttributedString:v22];

      v17 = v23;
    }

    v24 = [IMTextMessagePipelineParameter plainTextSubjectWithBlastDoorBasicMessage:basicCopy];
    v56 = v17;
    [(IMTextMessagePipelineParameter *)v8 setRichBody:v17];
    [(IMTextMessagePipelineParameter *)v8 setPlainTextBody:v19];
    v55 = v24;
    [(IMTextMessagePipelineParameter *)v8 setPlainTextSubject:v24];
    v57 = fileTransferGuids;
    [(IMTextMessagePipelineParameter *)v8 setFileTransferGUIDs:fileTransferGuids];
    threadIdentifierGUID = [basicCopy threadIdentifierGUID];
    [(IMTextMessagePipelineParameter *)v8 setThreadIdentifierGUID:threadIdentifierGUID];

    threadOriginatorFallbackHash = [basicCopy threadOriginatorFallbackHash];
    [(IMTextMessagePipelineParameter *)v8 setThreadOriginatorFallbackHash:threadOriginatorFallbackHash];

    messageSubType = [basicCopy messageSubType];
    audioMessage = [messageSubType audioMessage];
    inlineAudioMessages = [audioMessage inlineAudioMessages];

    if ([inlineAudioMessages count] == 1)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      firstObject = [inlineAudioMessages firstObject];
      if (firstObject)
      {
        CFDictionarySetValue(Mutable, @"ia-0", firstObject);
      }

      [(IMTextMessagePipelineParameter *)v8 setInlineAttachmentsDictionary:Mutable];
    }

    [(IMTextMessagePipelineParameter *)v8 setGUID:uUIDString];
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:timestamp];
    [(IMTextMessagePipelineParameter *)v8 setTimestamp:v32];

    storageContext = [metadata storageContext];
    -[IMTextMessagePipelineParameter setIsFromStorage:](v8, "setIsFromStorage:", [storageContext isFromStorage]);

    storageContext2 = [metadata storageContext];
    -[IMTextMessagePipelineParameter setIsLastFromStorage:](v8, "setIsLastFromStorage:", [storageContext2 isLastFromStorage]);

    -[IMTextMessagePipelineParameter setWantsDeliveryReceipt:](v8, "setWantsDeliveryReceipt:", [metadata wantsDeliveryReceipt]);
    -[IMTextMessagePipelineParameter setWantsCheckpointing:](v8, "setWantsCheckpointing:", [metadata wantsCheckpointing]);
    v35 = [IMTextMessagePipelineParameter participantDestinationIdentifierWithBasicMessage:basicCopy];
    [(IMTextMessagePipelineParameter *)v8 setParticipantIdentifiers:v35];

    v36 = [(IMTextMessagePipelineParameter *)v8 messageSummaryInfoDictionaryWithBlastDoorBasicMessage:basicCopy];
    [(IMTextMessagePipelineParameter *)v8 setMessageSummaryInfo:v36];

    v37 = [IMTextMessagePipelineParameter replicationSourceServiceNameWithBlastDoorBasicMessage:basicCopy];
    [(IMTextMessagePipelineParameter *)v8 setReplicationSourceServiceName:v37];

    if ([basicCopy has_groupParticipantVersion])
    {
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(basicCopy, "groupParticipantVersion")}];
      [(IMTextMessagePipelineParameter *)v8 setGroupParticipantVersion:v38];
    }

    else
    {
      [(IMTextMessagePipelineParameter *)v8 setGroupParticipantVersion:0];
    }

    has_groupProtocolVersion = [basicCopy has_groupProtocolVersion];
    v40 = inlineAudioMessages;
    if (has_groupProtocolVersion)
    {
      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(basicCopy, "groupProtocolVersion")}];
      [(IMTextMessagePipelineParameter *)v8 setGroupProtocolVersion:v41];
    }

    else
    {
      [(IMTextMessagePipelineParameter *)v8 setGroupProtocolVersion:0];
    }

    participantIdentifiers = [(IMTextMessagePipelineParameter *)v8 participantIdentifiers];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = sub_22B522B1C;
    v61[3] = &unk_278702A40;
    v43 = v8;
    v62 = v43;
    v44 = [participantIdentifiers __imArrayByFilteringWithBlock:v61];
    _IDsFromURIs = [v44 _IDsFromURIs];

    fromIdentifier2 = [(IMTextMessagePipelineParameter *)v43 fromIdentifier];
    _stripFZIDPrefix = [fromIdentifier2 _stripFZIDPrefix];

    participantIdentifiers2 = [(IMTextMessagePipelineParameter *)v43 participantIdentifiers];
    v49 = [participantIdentifiers2 count];

    if (v49 <= 2)
    {
      if (!-[IMTextMessagePipelineParameter isFromMe](v43, "isFromMe") || ![_IDsFromURIs count])
      {
        goto LABEL_23;
      }

      lastObject = [_IDsFromURIs lastObject];
      _stripFZIDPrefix2 = [lastObject _stripFZIDPrefix];

      _stripFZIDPrefix = _stripFZIDPrefix2;
    }

    else
    {
      groupID = [basicCopy groupID];
      [(IMTextMessagePipelineParameter *)v43 setGroupID:groupID];

      lastObject = [basicCopy currentGroupName];
      [(IMTextMessagePipelineParameter *)v43 setCurrentGroupName:lastObject];
    }

LABEL_23:
    [(IMTextMessagePipelineParameter *)v43 setFromDisplayID:_stripFZIDPrefix];
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  gUID = [(IMTextMessagePipelineParameter *)self GUID];
  timestamp = [(IMTextMessagePipelineParameter *)self timestamp];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMTextMessagePipelineParameter isFromStorage](self, "isFromStorage")}];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMTextMessagePipelineParameter isLastFromStorage](self, "isLastFromStorage")}];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMTextMessagePipelineParameter isFromMe](self, "isFromMe")}];
  messageItems = [(IMTextMessagePipelineParameter *)self messageItems];
  v10 = [messageItems count];
  hadChat = [(IMTextMessagePipelineParameter *)self hadChat];
  v12 = @"NO";
  if (hadChat)
  {
    v12 = @"YES";
  }

  v13 = [v3 stringWithFormat:@"<IMMessagePipelineParameter %p> { guid: %@, timestamp: %@, isFromStorage: %@, isLastFromStorage: %@, isFromMe: %@, output messageItems: %lu, hadChat: %@}", self, gUID, timestamp, v6, v7, v8, v10, v12];

  return v13;
}

@end