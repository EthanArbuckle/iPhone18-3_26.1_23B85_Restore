@interface IMTextMessagePipelineParameter
+ (BOOL)seenAsOffGridWithBlastDoorMessage:(id)a3;
+ (id)_fileTransferMatchingAttribute:(id)a3 inFileTransfers:(id)a4;
+ (id)attributionInfoArrayWithBlastDoorMessage:(id)a3;
+ (id)availabilityOffGridRecipientEncryptionValidationTokenWithBlastDoorMessage:(id)a3;
+ (id)availabilityOffGridRecipientSubscriptionValidationTokenWithBlastDoorMessage:(id)a3;
+ (id)convertBlastDoorInstanceTypedAttributesToNativeTypesInAttributedString:(id)a3 supportingStickerAttributes:(BOOL)a4 existingFileTransfersForMessage:(id)a5;
+ (id)fileTransferForBlastDoorFileTransferAttribute:(id)a3 fileTransferGUIDs:(id)a4 supportingStickerAttributes:(BOOL)a5;
+ (id)lastPublisherOfOffGridStatusWithBlastDoorMessage:(id)a3;
+ (id)nicknameDictionaryWithBlastDoorMessage:(id)a3;
+ (id)participantDestinationIdentifierWithBasicMessage:(id)a3;
+ (id)participantDestinationIdentifierWithMessage:(id)a3;
+ (id)plainTextBodyWithBlastDoorBasicMessage:(id)a3;
+ (id)plainTextBodyWithBlastDoorMessage:(id)a3;
+ (id)plainTextSubjectWithBlastDoorBasicMessage:(id)a3;
+ (id)plainTextSubjectWithBlastDoorMessage:(id)a3;
+ (id)replicationSourceServiceNameWithBlastDoorBasicMessage:(id)a3;
+ (id)replicationSourceServiceNameWithBlastDoorMessage:(id)a3;
+ (id)richBodyWithBlastDoorBasicMessage:(id)a3;
+ (id)richBodyWithBlastDoorMessage:(id)a3;
+ (id)stickerInfoDictionaryFromBlastDoorEmojiImageAttachmentInfo:(id)a3;
+ (id)stickerInfoDictionaryFromBlastDoorStickerAttachmentInfo:(id)a3;
+ (id)stickerInfoDictionaryWithStickerGUID:(id)a3 stickerPackGUID:(id)a4 stickerHash:(id)a5 positionIntent:(id)a6 associatedPositionIntent:(id)a7 parentPreviewWidth:(id)a8 stickerXOffset:(id)a9 stickerYOffset:(id)a10 stickerScale:(id)a11 stickerRotation:(id)a12 stickerBundleID:(id)a13 stickerIsReaction:(id)a14 stickerPositionVersion:(id)a15 stickerExternalURI:(id)a16;
+ (id)transcriptBackgroundVersionWithBlastDoorMessage:(id)a3;
+ (unint64_t)scheduleTypeWithBlastDoorTextMessage:(id)a3;
- (IMTextMessagePipelineParameter)initWithBD:(id)a3 idsTrustedData:(id)a4;
- (IMTextMessagePipelineParameter)initWithBDBasic:(id)a3 idsTrustedData:(id)a4;
- (id)_createSuperFormattedStringWithAttributedString:(id)a3;
- (id)description;
- (id)messageSummaryInfoDictionaryWithBlastDoorBasicMessage:(id)a3;
- (id)messageSummaryInfoDictionaryWithBlastDoorMessage:(id)a3;
- (void)_addTranslatedMessageParts:(id)a3 to:(id)a4;
@end

@implementation IMTextMessagePipelineParameter

+ (id)participantDestinationIdentifierWithMessage:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 messageSubType];
  v5 = [v4 type];

  if (v5 > 3)
  {
    if (v5 > 5)
    {
      switch(v5)
      {
        case 6:
          v6 = [v3 messageSubType];
          v7 = [v6 emojiTapback];
          v8 = [v7 participantDestinationIdentifiers];
          goto LABEL_21;
        case 7:
          v6 = [v3 messageSubType];
          v7 = [v6 stickerTapback];
          v8 = [v7 participantDestinationIdentifiers];
          goto LABEL_21;
        case 8:
          v6 = [v3 messageSubType];
          v7 = [v6 customAcknowledgement];
          v8 = [v7 participantDestinationIdentifiers];
LABEL_21:
          v9 = v8;

          goto LABEL_22;
      }

      goto LABEL_25;
    }

    v6 = [v3 messageSubType];
    if (v5 == 4)
    {
      [v6 sticker];
    }

    else
    {
      [v6 audioMessage];
    }

    v7 = LABEL_13:;
    v8 = [v7 participantDestinationIdentifiers];
    goto LABEL_21;
  }

  if (v5 > 1)
  {
    v6 = [v3 messageSubType];
    if (v5 == 2)
    {
      [v6 tapback];
    }

    else
    {
      [v6 balloonPlugin];
    }

    goto LABEL_13;
  }

  if (!v5)
  {
    v6 = [v3 messageSubType];
    v7 = [v6 typingIndicator];
    v8 = [v7 participantDestinationIdentifiers];
    goto LABEL_21;
  }

  if (v5 == 1)
  {
    v6 = [v3 messageSubType];
    v7 = [v6 textMessage];
    v8 = [v7 participantDestinationIdentifiers];
    goto LABEL_21;
  }

LABEL_25:
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      v14 = v5;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "<IMTextMessagePipelineParameter> Unhandled BlastDoorTextMessageMessageType: %ld", &v13, 0xCu);
    }
  }

  v9 = 0;
LABEL_22:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)participantDestinationIdentifierWithBasicMessage:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 messageSubType];
  v5 = [v4 type];

  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v6 = [v3 messageSubType];
        v7 = [v6 audioMessage];
        v8 = [v7 participantDestinationIdentifiers];
        goto LABEL_19;
      case 4:
        v6 = [v3 messageSubType];
        v7 = [v6 unsupported];
        v8 = [v7 participantDestinationIdentifiers];
        goto LABEL_19;
      case 5:
        v6 = [v3 messageSubType];
        v7 = [v6 emojiTapback];
        v8 = [v7 participantDestinationIdentifiers];
        goto LABEL_19;
    }
  }

  else
  {
    switch(v5)
    {
      case 0:
        v6 = [v3 messageSubType];
        v7 = [v6 typingIndicator];
        v8 = [v7 participantDestinationIdentifiers];
        goto LABEL_19;
      case 1:
        v6 = [v3 messageSubType];
        v7 = [v6 textMessage];
        v8 = [v7 participantDestinationIdentifiers];
        goto LABEL_19;
      case 2:
        v6 = [v3 messageSubType];
        v7 = [v6 tapback];
        v8 = [v7 participantDestinationIdentifiers];
LABEL_19:
        v10 = v8;

        goto LABEL_20;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      v14 = v5;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "<IMTextMessagePipelineParameter> Unable to extract destination identifiers from BlastDoorTextMessageMessageType: %ld", &v13, 0xCu);
    }
  }

  v10 = 0;
LABEL_20:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)messageSummaryInfoDictionaryWithBlastDoorMessage:(id)a3
{
  v4 = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = MEMORY[0x277CCABB0];
  v7 = [v4 messageSubType];
  v8 = [v7 tapback];
  v9 = [v8 messageSummaryInfo];
  v10 = [v6 numberWithInteger:{objc_msgSend(v9, "contentType")}];

  if (v10)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A008], v10);
  }

  v11 = [v4 messageSubType];
  v12 = [v11 tapback];
  v13 = [v12 messageSummaryInfo];
  v14 = [v13 summary];

  if (v14)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A050], v14);
  }

  v15 = [v4 messageSubType];
  v16 = [v15 tapback];
  v17 = [v16 messageSummaryInfo];
  v18 = [v17 pluginBundleID];

  if (v18)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A028], v18);
  }

  v19 = [v4 messageSubType];
  v20 = [v19 tapback];
  v21 = [v20 messageSummaryInfo];
  v22 = [v21 pluginDisplayName];

  if (v22)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A030], v22);
  }

  v23 = [v4 messageSummaryInfo];
  v24 = [v23 associatedBalloonBundleID];

  if (v24)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D19FF8], v24);
  }

  v25 = [v4 messageSummaryInfo];
  v26 = [v25 sourceApplicationID];

  if (v26)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A040], v26);
  }

  v27 = [v4 messageSummaryInfo];
  if ([v27 has_updatedDateWithServerTime])
  {
    v28 = MEMORY[0x277CCABB0];
    v29 = [v4 messageSummaryInfo];
    v30 = [v28 numberWithBool:{objc_msgSend(v29, "updatedDateWithServerTime")}];

    if (!v30)
    {
      goto LABEL_17;
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A060], v30);
    v27 = v30;
  }

LABEL_17:
  v31 = [v4 messageSummaryInfo];
  if ([v31 has_hasBeenRetried])
  {
    v32 = MEMORY[0x277CCABB0];
    v33 = [v4 messageSummaryInfo];
    v34 = [v32 numberWithBool:{objc_msgSend(v33, "hasBeenRetried")}];

    if (!v34)
    {
      goto LABEL_21;
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A020], v34);
    v31 = v34;
  }

LABEL_21:
  v35 = [v4 messageSummaryInfo];
  v36 = [v35 translatedMessageParts];
  [(IMTextMessagePipelineParameter *)self _addTranslatedMessageParts:v36 to:Mutable];

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

- (void)_addTranslatedMessageParts:(id)a3 to:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
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
  obj = v5;
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
        v14 = [v13 translatedText];
        v15 = [IMTextMessagePipelineParameter convertBlastDoorInstanceTypedAttributesToNativeTypesInAttributedString:v14 supportingStickerAttributes:1 existingFileTransfersForMessage:v11];
        v16 = [v15 messageBodyWithNativeAttributes];

        v17 = objc_alloc(MEMORY[0x277D1ACB0]);
        v18 = [v13 sourceLanguage];
        v19 = [v13 translationLanguage];
        v20 = [v17 initWithSourceLanguage:v18 translationLanguage:v19 translatedText:v16];

        IMAddTranslatedMessagePartToMessageSummaryInfo();
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)messageSummaryInfoDictionaryWithBlastDoorBasicMessage:(id)a3
{
  v3 = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = MEMORY[0x277CCABB0];
  v6 = [v3 messageSubType];
  v7 = [v6 tapback];
  v8 = [v7 messageSummaryInfo];
  v9 = [v5 numberWithInteger:{objc_msgSend(v8, "contentType")}];

  if (v9)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A008], v9);
  }

  v10 = [v3 messageSubType];
  v11 = [v10 tapback];
  v12 = [v11 messageSummaryInfo];
  v13 = [v12 summary];

  if (v13)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1A050], v13);
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

+ (id)nicknameDictionaryWithBlastDoorMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 nicknameInformation];
  if (v4)
  {
  }

  else
  {
    Mutable = [v3 truncatedNicknameRecordKey];

    if (!Mutable)
    {
      goto LABEL_27;
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = [v3 nicknameInformation];
  v7 = [v6 recordKey];

  if (v7)
  {
    CFDictionarySetValue(Mutable, MessageDictionaryNicknameCloudKitRecordKey, v7);
  }

  v8 = [v3 nicknameInformation];
  v9 = [v8 decryptionKey];

  if (v9)
  {
    CFDictionarySetValue(Mutable, MessageDictionaryNicknameCloudKitDecryptionRecordKey, v9);
  }

  v10 = [v3 truncatedNicknameRecordKey];
  if (v10)
  {
    CFDictionarySetValue(Mutable, MessageDictionaryNicknameParticipantTruncatedRIDKey, v10);
  }

  v11 = [v3 nicknameInformation];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [v3 nicknameInformation];
    v14 = [v13 lowResWallpaperTag];

    if (v14)
    {
      CFDictionarySetValue(Mutable, MessageDictionaryNicknameLowResWallpaperTagKey, v14);
    }

    v15 = [v3 nicknameInformation];
    v16 = [v15 wallpaperTag];

    if (v16)
    {
      CFDictionarySetValue(Mutable, MessageDictionaryNicknameWallpaperTagKey, v16);
    }

    v17 = [v3 nicknameInformation];
    v18 = [v17 wallpaperMetadataTag];

    if (v18)
    {
      CFDictionarySetValue(Mutable, MessageDictionaryNicknameWallpaperMetadataTagKey, v18);
    }

    v19 = [v3 nicknameInformation];
    [v19 includesWallpaperData];
    v20 = NSStringFromBOOL();

    if (v20)
    {
      CFDictionarySetValue(Mutable, MessageDictionaryWallpaperUpdateKey, v20);
    }

    v21 = [v3 nicknameInformation];
    v22 = [v21 messageType];

    if (v22)
    {
      CFDictionarySetValue(Mutable, @"MessageType", v22);
    }

    v23 = objc_alloc(MEMORY[0x277CCABB0]);
    v24 = [v3 nicknameInformation];
    v25 = [v23 initWithLong:{objc_msgSend(v24, "updateInfoIncluded")}];

    if (v25)
    {
      CFDictionarySetValue(Mutable, MessageDictionaryNicknameUpdateInfoIncluded, v25);
    }
  }

  v26 = [v3 nicknameInformation];
  v27 = [v26 avatarRecipeDataTag];

  if (v27)
  {
    CFDictionarySetValue(Mutable, MessageDictionaryNicknameAvatarRecipeDataTagKey, v27);
  }

LABEL_27:

  return Mutable;
}

+ (id)transcriptBackgroundVersionWithBlastDoorMessage:(id)a3
{
  v3 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 has_transcriptBackgroundVersion])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v3, "transcriptBackgroundVersion")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)availabilityOffGridRecipientSubscriptionValidationTokenWithBlastDoorMessage:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 availabilityOffGridRecipientSubscriptionValidationToken];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)availabilityOffGridRecipientEncryptionValidationTokenWithBlastDoorMessage:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 availabilityOffGridRecipientEncryptionValidationToken];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)seenAsOffGridWithBlastDoorMessage:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 seenAsOffGrid];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)lastPublisherOfOffGridStatusWithBlastDoorMessage:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 lastPublisherOfOffGridStatus];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)replicationSourceServiceNameWithBlastDoorMessage:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 has_replicationSourceID])
  {
    v4 = [v3 replicationSourceID];
    v5 = +[IMDServiceController sharedController];
    v6 = [v5 serviceWithReplicationSourceID:v4];

    v7 = [v6 internalName];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412546;
        v12 = v7;
        v13 = 2048;
        v14 = v4;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Resolved replication source service to %@ for ID %llu", &v11, 0x16u);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)replicationSourceServiceNameWithBlastDoorBasicMessage:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 has_replicationSourceID])
  {
    v4 = [v3 replicationSourceID];
    v5 = +[IMDServiceController sharedController];
    v6 = [v5 serviceWithReplicationSourceID:v4];

    v7 = [v6 internalName];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412546;
        v12 = v7;
        v13 = 2048;
        v14 = v4;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Resolved replication source service to %@ for ID %llu", &v11, 0x16u);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (unint64_t)scheduleTypeWithBlastDoorTextMessage:(id)a3
{
  v3 = a3;
  if ([v3 scheduleType] == -1)
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

    v4 = 0;
  }

  else
  {
    v4 = [v3 scheduleType];
  }

  return v4;
}

+ (id)richBodyWithBlastDoorMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 messageSubType];
  v5 = [v4 type];

  v6 = 0;
  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      v7 = [v3 messageSubType];
      v9 = [v7 textMessage];
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_15;
      }

      v7 = [v3 messageSubType];
      v9 = [v7 balloonPlugin];
    }

    goto LABEL_13;
  }

  if (v5 != 4)
  {
    if (v5 != 5)
    {
      if (v5 != 7)
      {
        goto LABEL_15;
      }

      v7 = [v3 messageSubType];
      v8 = [v7 stickerTapback];
      goto LABEL_10;
    }

    v7 = [v3 messageSubType];
    v9 = [v7 audioMessage];
LABEL_13:
    v10 = v9;
    v6 = [v9 content];
    goto LABEL_14;
  }

  v7 = [v3 messageSubType];
  v8 = [v7 sticker];
LABEL_10:
  v10 = v8;
  v11 = [v8 messageContent];
  v6 = [v11 content];

LABEL_14:
LABEL_15:

  return v6;
}

+ (id)richBodyWithBlastDoorBasicMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 messageSubType];
  v5 = [v4 type];

  if (v5 == 3)
  {
    v6 = [v3 messageSubType];
    v7 = [v6 audioMessage];
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v6 = [v3 messageSubType];
    v7 = [v6 textMessage];
LABEL_5:
    v8 = v7;
    v9 = [v7 content];

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)attributionInfoArrayWithBlastDoorMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 messageSubType];
  v6 = [v5 type];

  switch(v6)
  {
    case 4:
      v11 = [v4 messageSubType];
      v12 = [v11 sticker];
      v13 = [v12 messageContent];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        v7 = [v4 messageSubType];
        v9 = [v7 sticker];
        v15 = [v9 messageContent];
        v10 = [v15 attributionInfo];

        goto LABEL_7;
      }

      break;
    case 3:
      v7 = [v4 messageSubType];
      v8 = [v7 balloonPlugin];
      goto LABEL_6;
    case 1:
      v7 = [v4 messageSubType];
      v8 = [v7 textMessage];
LABEL_6:
      v9 = v8;
      v10 = [v8 attributionInfo];
LABEL_7:

      goto LABEL_11;
  }

  v10 = 0;
LABEL_11:
  v16 = [a1 convertAttributionInfoToArray:v10];

  return v16;
}

+ (id)plainTextBodyWithBlastDoorMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 messageSubType];
  v5 = [v4 type];

  if (v5 == 3)
  {
    v6 = [v3 messageSubType];
    v7 = [v6 balloonPlugin];
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v6 = [v3 messageSubType];
    v7 = [v6 textMessage];
LABEL_5:
    v8 = v7;
    v9 = [v7 plainTextBody];

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)plainTextBodyWithBlastDoorBasicMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 messageSubType];
  v5 = [v4 type];

  if (v5 == 1)
  {
    v6 = [v3 messageSubType];
    v7 = [v6 textMessage];
    v8 = [v7 plainTextBody];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)plainTextSubjectWithBlastDoorMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 messageSubType];
  v5 = [v4 type];

  if (v5 == 1)
  {
    v6 = [v3 messageSubType];
    v7 = [v6 textMessage];
    v8 = [v7 plainTextSubject];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)plainTextSubjectWithBlastDoorBasicMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 messageSubType];
  v5 = [v4 type];

  if (v5 == 1)
  {
    v6 = [v3 messageSubType];
    v7 = [v6 textMessage];
    v8 = [v7 plainTextSubject];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)fileTransferForBlastDoorFileTransferAttribute:(id)a3 fileTransferGUIDs:(id)a4 supportingStickerAttributes:(BOOL)a5
{
  v65 = a5;
  v79 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v70 = a4;
  v7 = [v6 name];
  if (!v7)
  {
    v18 = 0;
    goto LABEL_40;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "datasize")}];
  v66 = [v8 stringValue];

  v9 = [v6 attachmentSubtype];
  v69 = [v9 livePhoto];

  v68 = [v69 iris];
  if ([v68 length])
  {
    if ([v70 count])
    {
      v10 = [v70 lastObject];
      v11 = +[IMDFileTransferCenter sharedInstance];
      v12 = [v11 transferForGUID:v10];

      if (v12)
      {
        [v12 setIsAuxImage:1];
        v13 = [MEMORY[0x277D1A9C0] AuxGUIDFromFileTransferGUID:v10];
        v14 = +[IMDFileTransferCenter sharedInstance];
        v15 = [v7 lastPathComponent];
        LOWORD(v64) = 0;
        [v14 makeNewIncomingTransferWithGUID:v13 filename:v15 isDirectory:0 totalBytes:objc_msgSend(v66 hfsType:"longLongValue") hfsCreator:0 hfsFlags:{0, v64}];

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
            v76 = v10;
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
        v76 = v7;
        v77 = 2112;
        v78 = v70;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Could not find Aux image transfer with name (%@) because the list of guids was nil or empty: %@", buf, 0x16u);
      }
    }

    v36 = 0;
    v18 = 0;
    goto LABEL_39;
  }

  v20 = +[IMDFileTransferCenter sharedInstance];
  v21 = [v7 lastPathComponent];
  v16 = [v20 guidForNewIncomingTransferWithFilename:v21 isDirectory:0 totalBytes:objc_msgSend(v66 hfsType:"longLongValue") hfsCreator:0 hfsFlags:{0, 0}];

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
  v26 = [v6 attachments];
  v27 = [v26 sortedArrayUsingComparator:&unk_283F197A8];

  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = sub_22B51FCBC;
  v71[3] = &unk_2787034D0;
  v28 = Mutable;
  v72 = v28;
  v29 = v7;
  v73 = v29;
  v30 = v6;
  v74 = v30;
  [v27 enumerateObjectsUsingBlock:v71];
  v31 = [v30 attachmentSubtype];
  v32 = [v31 audioMessage];

  if (v32)
  {
    CFDictionarySetValue(v28, @"name", v29);
    v33 = [v30 utiType];
    if (v33)
    {
      CFDictionarySetValue(v28, @"uti-type", v33);
    }

    v34 = [v32 inlineAttachmentKey];
    if (v34)
    {
      CFDictionarySetValue(v28, @"inline-attachment", v34);
    }

    v35 = [v32 audioTranscription];
    if (v35)
    {
      CFDictionarySetValue(v28, @"audio-transcription", v35);
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
  v38 = [v6 attachmentSubtype];
  v39 = [v38 emojiImage];

  if (v39)
  {
    v40 = [v39 emojiImageContentIdentifer];
    v41 = [v39 emojiImageShortDescription];
    v42 = [a1 stickerInfoDictionaryFromBlastDoorEmojiImageAttachmentInfo:v39];
    [v18 setAdaptiveImageGlyphContentIdentifier:v40];
    [v18 setAdaptiveImageGlyphContentDescription:v41];
    [v18 setStickerUserInfo:v42];
  }

  if (v18 && v65)
  {
    v43 = [v6 attachmentSubtype];
    v44 = [v43 sticker];

    if (v44)
    {
      v45 = [a1 stickerInfoDictionaryFromBlastDoorStickerAttachmentInfo:v44];
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
    v44 = IMLogHandleForCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D05DC(v44, v46, v47, v48, v49, v50, v51, v52);
    }
  }

  v18 = v18;
  v53 = v18;
LABEL_55:

  v62 = *MEMORY[0x277D85DE8];

  return v53;
}

+ (id)stickerInfoDictionaryWithStickerGUID:(id)a3 stickerPackGUID:(id)a4 stickerHash:(id)a5 positionIntent:(id)a6 associatedPositionIntent:(id)a7 parentPreviewWidth:(id)a8 stickerXOffset:(id)a9 stickerYOffset:(id)a10 stickerScale:(id)a11 stickerRotation:(id)a12 stickerBundleID:(id)a13 stickerIsReaction:(id)a14 stickerPositionVersion:(id)a15 stickerExternalURI:(id)a16
{
  v21 = a3;
  v35 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v34 = a8;
  v40 = a9;
  v25 = v21;
  v39 = a10;
  v26 = a11;
  v37 = a12;
  v36 = a13;
  v27 = a14;
  v28 = a15;
  v29 = a16;
  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31 = v30;
  if (v25)
  {
    CFDictionarySetValue(v30, *MEMORY[0x277D1A748], v25);
  }

  v38 = v26;
  if (v35)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A760], v35);
  }

  if (v22)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A750], v22);
  }

  if (v23)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A718], v23);
  }

  if (v24)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A710], v24);
  }

  if (v34)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A720], v34);
  }

  if (v40)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A778], v40);
  }

  if (v39)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A780], v39);
  }

  if (v26)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A730], v26);
  }

  if (v37)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A728], v37);
  }

  if (v36)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A738], v36);
  }

  if (v27)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A758], v27);
  }

  if (v28)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A768], v28);
  }

  if (v29)
  {
    CFDictionarySetValue(v31, *MEMORY[0x277D1A740], v29);
  }

  v32 = [(__CFDictionary *)v31 copy];

  return v32;
}

+ (id)stickerInfoDictionaryFromBlastDoorStickerAttachmentInfo:(id)a3
{
  v4 = a3;
  v36 = [v4 stickerIdentifier];
  v35 = [v4 stickerPackIdentifier];
  v34 = [v4 stickerHash];
  if ([v4 has_positionIntent])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "positionIntent")}];
    v32 = [v5 stringValue];
  }

  else
  {
    v32 = 0;
  }

  if ([v4 has_associatedPositionIntent])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "associatedPositionIntent")}];
    v31 = [v6 stringValue];
  }

  else
  {
    v31 = 0;
  }

  if ([v4 has_parentPreviewWidth])
  {
    v7 = MEMORY[0x277CCABB0];
    [v4 parentPreviewWidth];
    v8 = [v7 numberWithDouble:?];
    v30 = [v8 stringValue];
  }

  else
  {
    v30 = 0;
  }

  if ([v4 has_stickerOffset])
  {
    v9 = MEMORY[0x277CCABB0];
    [v4 stickerOffset];
    v10 = [v9 numberWithDouble:?];
    v33 = [v10 stringValue];
  }

  else
  {
    v33 = 0;
  }

  if ([v4 has_stickerOffset])
  {
    v11 = MEMORY[0x277CCABB0];
    [v4 stickerOffset];
    v13 = [v11 numberWithDouble:v12];
    v29 = [v13 stringValue];
  }

  else
  {
    v29 = 0;
  }

  if ([v4 has_stickerScale])
  {
    v14 = MEMORY[0x277CCABB0];
    [v4 stickerScale];
    v15 = [v14 numberWithDouble:?];
    v16 = [v15 stringValue];
  }

  else
  {
    v16 = 0;
  }

  if ([v4 has_stickerRotation])
  {
    v17 = MEMORY[0x277CCABB0];
    [v4 stickerRotation];
    [v17 numberWithDouble:?];
    v19 = v18 = a1;
    v20 = [v19 stringValue];

    a1 = v18;
  }

  else
  {
    v20 = 0;
  }

  v27 = [v4 balloonBundleID];
  v21 = [v4 isReaction];
  v22 = [v4 stickerPositionVersion];
  v23 = [v4 stickerExternalURI];
  v24 = [MEMORY[0x277CCABB0] numberWithBool:v21];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
  v28 = [a1 stickerInfoDictionaryWithStickerGUID:v36 stickerPackGUID:v35 stickerHash:v34 positionIntent:v32 associatedPositionIntent:v31 parentPreviewWidth:v30 stickerXOffset:v33 stickerYOffset:v29 stickerScale:v16 stickerRotation:v20 stickerBundleID:v27 stickerIsReaction:v24 stickerPositionVersion:v25 stickerExternalURI:v23];

  return v28;
}

+ (id)stickerInfoDictionaryFromBlastDoorEmojiImageAttachmentInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 stickerIdentifier];
  v6 = [v4 stickerPackIdentifier];
  v7 = [v4 stickerHash];
  v8 = [v4 stickerBalloonBundleID];
  v9 = [v4 stickerExternalURI];

  v10 = [a1 stickerInfoDictionaryWithStickerGUID:v5 stickerPackGUID:v6 stickerHash:v7 positionIntent:0 associatedPositionIntent:0 parentPreviewWidth:0 stickerXOffset:0 stickerYOffset:0 stickerScale:0 stickerRotation:0 stickerBundleID:v8 stickerIsReaction:0 stickerPositionVersion:0 stickerExternalURI:v9];

  return v10;
}

+ (id)_fileTransferMatchingAttribute:(id)a3 inFileTransfers:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = a4;
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
        v7 = [v35 attachments];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v34 = v7;
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
              v13 = [v12 attachmentURL];
              v14 = [v13 absoluteString];

              v15 = [v12 encryptionKey];
              if ([v14 length])
              {
                v16 = [v6 userInfo];
                v17 = [v16 objectForKeyedSubscript:@"mmcs-url"];

                v18 = [v6 userInfo];
                v19 = [v18 objectForKeyedSubscript:@"decryption-key"];

                if ([v17 isEqualToString:v14] && (objc_msgSend(v19, "isEqualToString:", v15) & 1) != 0)
                {
                  v26 = v6;

                  v33 = v26;
                  goto LABEL_25;
                }
              }

              v20 = [v35 attachmentSubtype];
              v21 = [v20 emojiImage];
              v22 = [v21 emojiImageContentIdentifer];

              v23 = [v6 adaptiveImageGlyphContentIdentifier];
              if ([v22 length] && objc_msgSend(v23, "length") && objc_msgSend(v22, "isEqualToString:", v23))
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

+ (id)convertBlastDoorInstanceTypedAttributesToNativeTypesInAttributedString:(id)a3 supportingStickerAttributes:(BOOL)a4 existingFileTransfersForMessage:(id)a5
{
  v8 = a5;
  if (a3)
  {
    v9 = [a3 mutableCopy];
    v10 = [v9 length];
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = sub_22B520BB4;
    v24 = &unk_2787034F8;
    v29 = a1;
    v25 = v8;
    v26 = v11;
    v30 = a4;
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

- (IMTextMessagePipelineParameter)initWithBD:(id)a3 idsTrustedData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v86.receiver = self;
  v86.super_class = IMTextMessagePipelineParameter;
  v8 = [(IMTextMessagePipelineParameter *)&v86 init];
  if (!v8)
  {
    goto LABEL_32;
  }

  v9 = [v7 fromIdentifier];
  [(IMTextMessagePipelineParameter *)v8 setFromIdentifier:v9];

  v10 = [v7 toIdentifier];
  [(IMTextMessagePipelineParameter *)v8 setToIdentifier:v10];

  -[IMTextMessagePipelineParameter setIsFromMe:](v8, "setIsFromMe:", [v7 isFromMe]);
  v11 = [v7 batchContext];
  batchContext = v8->_batchContext;
  v8->_batchContext = v11;

  v13 = [v6 metadata];
  v14 = [v13 messageGUID];
  v83 = [v14 UUIDString];

  v15 = v13;
  v76 = [v13 timestamp];
  v16 = [IMTextMessagePipelineParameter richBodyWithBlastDoorMessage:v6];
  v17 = [(IMTextMessagePipelineParameter *)v8 supportsStickerAttributesInMessageBody];
  v82 = v16;
  v18 = [IMTextMessagePipelineParameter convertBlastDoorInstanceTypedAttributesToNativeTypesInAttributedString:v16 supportingStickerAttributes:v17 existingFileTransfersForMessage:MEMORY[0x277CBEBF8]];
  v19 = [v18 messageBodyWithNativeAttributes];
  v81 = v18;
  v20 = [v18 fileTransferGuids];
  v21 = [IMTextMessagePipelineParameter plainTextBodyWithBlastDoorMessage:v6];
  if (!v19)
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
    v19 = [(IMTextMessagePipelineParameter *)v8 _createSuperFormattedStringWithAttributedString:v24];
  }

  v25 = [IMTextMessagePipelineParameter plainTextSubjectWithBlastDoorMessage:v6];
  v26 = [IMTextMessagePipelineParameter attributionInfoArrayWithBlastDoorMessage:v6];
  [(IMTextMessagePipelineParameter *)v8 setAttributionInfoArray:v26];

  v79 = v19;
  [(IMTextMessagePipelineParameter *)v8 setRichBody:v19];
  [(IMTextMessagePipelineParameter *)v8 setPlainTextBody:v21];
  v78 = v25;
  [(IMTextMessagePipelineParameter *)v8 setPlainTextSubject:v25];
  v80 = v20;
  [(IMTextMessagePipelineParameter *)v8 setFileTransferGUIDs:v20];
  v27 = [v6 messageSubType];
  v28 = [v27 audioMessage];
  v29 = [v28 inlineAudioMessages];

  v30 = v15;
  if ([v29 count] == 1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v32 = [v29 firstObject];
    if (v32)
    {
      CFDictionarySetValue(Mutable, @"ia-0", v32);
    }

    [(IMTextMessagePipelineParameter *)v8 setInlineAttachmentsDictionary:Mutable];
  }

  [(IMTextMessagePipelineParameter *)v8 setGUID:v83];
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v76];
  [(IMTextMessagePipelineParameter *)v8 setTimestamp:v33];

  v34 = [v15 storageContext];
  -[IMTextMessagePipelineParameter setIsFromStorage:](v8, "setIsFromStorage:", [v34 isFromStorage]);

  v35 = [v15 storageContext];
  -[IMTextMessagePipelineParameter setIsLastFromStorage:](v8, "setIsLastFromStorage:", [v35 isLastFromStorage]);

  -[IMTextMessagePipelineParameter setWantsDeliveryReceipt:](v8, "setWantsDeliveryReceipt:", [v15 wantsDeliveryReceipt]);
  -[IMTextMessagePipelineParameter setWantsCheckpointing:](v8, "setWantsCheckpointing:", [v15 wantsCheckpointing]);
  v36 = [IMTextMessagePipelineParameter participantDestinationIdentifierWithMessage:v6];
  [(IMTextMessagePipelineParameter *)v8 setParticipantIdentifiers:v36];

  v37 = [(IMTextMessagePipelineParameter *)v8 messageSummaryInfoDictionaryWithBlastDoorMessage:v6];
  [(IMTextMessagePipelineParameter *)v8 setMessageSummaryInfo:v37];

  v38 = [IMTextMessagePipelineParameter nicknameDictionaryWithBlastDoorMessage:v6];
  [(IMTextMessagePipelineParameter *)v8 setNicknameDictionary:v38];

  v39 = [IMTextMessagePipelineParameter transcriptBackgroundVersionWithBlastDoorMessage:v6];
  [(IMTextMessagePipelineParameter *)v8 setTranscriptBackgroundVersion:v39];

  [(IMTextMessagePipelineParameter *)v8 setAutoReply:[IMTextMessagePipelineParameter isAutoReplyWithBlastDoorMessage:v6]];
  v40 = [IMTextMessagePipelineParameter availabilityVerificationRecipientChannelIDPrefixWithBlastDoorMessage:v6];
  [(IMTextMessagePipelineParameter *)v8 setAvailabilityVerificationRecipientChannelIDPrefix:v40];

  v41 = [IMTextMessagePipelineParameter availabilityVerificationRecipientEncryptionValidationTokenWithBlastDoorTextMessage:v6];
  [(IMTextMessagePipelineParameter *)v8 setAvailabilityVerificationRecipientEncryptionValidationToken:v41];

  v42 = [IMTextMessagePipelineParameter availabilityOffGridRecipientSubscriptionValidationTokenWithBlastDoorMessage:v6];
  [(IMTextMessagePipelineParameter *)v8 setAvailabilityOffGridRecipientSubscriptionValidationToken:v42];

  v43 = [IMTextMessagePipelineParameter availabilityOffGridRecipientEncryptionValidationTokenWithBlastDoorMessage:v6];
  [(IMTextMessagePipelineParameter *)v8 setAvailabilityOffGridRecipientEncryptionValidationToken:v43];

  [(IMTextMessagePipelineParameter *)v8 setSeenAsOffGrid:[IMTextMessagePipelineParameter seenAsOffGridWithBlastDoorMessage:v6]];
  v44 = [IMTextMessagePipelineParameter lastPublisherOfOffGridStatusWithBlastDoorMessage:v6];
  [(IMTextMessagePipelineParameter *)v8 setLastPublisherOfOffGridStatus:v44];

  [(IMTextMessagePipelineParameter *)v8 setExpirable:[IMTextMessagePipelineParameter isExpirableWithBlastDoorTextMessage:v6]];
  [(IMTextMessagePipelineParameter *)v8 setSos:[IMTextMessagePipelineParameter isSOSWithBlastDoorMessage:v6]];
  [(IMTextMessagePipelineParameter *)v8 setCritical:[IMTextMessagePipelineParameter isCriticalWithBlastDoorMessage:v6]];
  [(IMTextMessagePipelineParameter *)v8 setIsBIA:[IMTextMessagePipelineParameter isBIAWithBlastDoorMessage:v6]];
  v45 = [IMTextMessagePipelineParameter biaReferenceIDWithBlastDoorMessage:v6];
  [(IMTextMessagePipelineParameter *)v8 setBiaReferenceID:v45];

  v46 = [IMTextMessagePipelineParameter replicationSourceServiceNameWithBlastDoorMessage:v6];
  [(IMTextMessagePipelineParameter *)v8 setReplicationSourceServiceName:v46];

  [(IMTextMessagePipelineParameter *)v8 setScheduleType:[IMTextMessagePipelineParameter scheduleTypeWithBlastDoorTextMessage:v6]];
  v47 = [IMTextMessagePipelineParameter scheduledDateWithBlastDoorTextMessage:v6];
  [(IMTextMessagePipelineParameter *)v8 setScheduledDate:v47];

  v48 = [v6 threadIdentifierGUID];
  [(IMTextMessagePipelineParameter *)v8 setThreadIdentifierGUID:v48];

  v49 = [v6 threadOriginatorFallbackHash];
  [(IMTextMessagePipelineParameter *)v8 setThreadOriginatorFallbackHash:v49];

  v50 = [v6 expressiveSendStyleIdentifier];
  [(IMTextMessagePipelineParameter *)v8 setExpressiveSendStyleIdentifier:v50];

  if ([v6 has_groupParticipantVersion])
  {
    v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "groupParticipantVersion")}];
    [(IMTextMessagePipelineParameter *)v8 setGroupParticipantVersion:v51];
  }

  else
  {
    [(IMTextMessagePipelineParameter *)v8 setGroupParticipantVersion:0];
  }

  if ([v6 has_groupProtocolVersion])
  {
    v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "groupProtocolVersion")}];
    [(IMTextMessagePipelineParameter *)v8 setGroupProtocolVersion:v52];
  }

  else
  {
    [(IMTextMessagePipelineParameter *)v8 setGroupProtocolVersion:0];
  }

  v77 = v7;
  v53 = v29;
  if ([v6 has_groupPhotoCreationTime])
  {
    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v6, "groupPhotoCreationTime")}];
    [(IMTextMessagePipelineParameter *)v8 setGroupPhotoCreationTime:v54];
  }

  else
  {
    [(IMTextMessagePipelineParameter *)v8 setGroupPhotoCreationTime:0];
  }

  v55 = [v6 replicatedFallbackGUIDs];
  [(IMTextMessagePipelineParameter *)v8 setReplicatedFallbackGUIDs:v55];

  v56 = [(IMTextMessagePipelineParameter *)v8 participantIdentifiers];
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = sub_22B522470;
  v84[3] = &unk_278702A40;
  v57 = v8;
  v85 = v57;
  v58 = [v56 __imArrayByFilteringWithBlock:v84];
  v59 = [v58 _IDsFromURIs];

  v60 = [(IMTextMessagePipelineParameter *)v57 fromIdentifier];
  v61 = [v60 _stripFZIDPrefix];

  v62 = [(IMTextMessagePipelineParameter *)v57 participantIdentifiers];
  v63 = [v62 count];

  if (v63 <= 2)
  {
    if (!-[IMTextMessagePipelineParameter isFromMe](v57, "isFromMe") || ![v59 count])
    {
      goto LABEL_26;
    }

    v65 = [v59 lastObject];
    v66 = [v65 _stripFZIDPrefix];

    v61 = v66;
  }

  else
  {
    v64 = [v6 groupID];
    [(IMTextMessagePipelineParameter *)v57 setGroupID:v64];

    v65 = [v6 currentGroupName];
    [(IMTextMessagePipelineParameter *)v57 setCurrentGroupName:v65];
  }

LABEL_26:
  if ([v61 length])
  {
    [(IMTextMessagePipelineParameter *)v57 setFromDisplayID:v61];
  }

  else
  {
    v67 = IMLogHandleForCategory();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D064C(v67, v68, v69, v70, v71, v72, v73, v74);
    }
  }

  v7 = v77;
LABEL_32:

  return v8;
}

- (IMTextMessagePipelineParameter)initWithBDBasic:(id)a3 idsTrustedData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v63.receiver = self;
  v63.super_class = IMTextMessagePipelineParameter;
  v8 = [(IMTextMessagePipelineParameter *)&v63 init];
  if (v8)
  {
    v9 = [v7 fromIdentifier];
    [(IMTextMessagePipelineParameter *)v8 setFromIdentifier:v9];

    v10 = [v7 toIdentifier];
    [(IMTextMessagePipelineParameter *)v8 setToIdentifier:v10];

    -[IMTextMessagePipelineParameter setIsFromMe:](v8, "setIsFromMe:", [v7 isFromMe]);
    v11 = [v6 metadata];
    v12 = [v11 messageGUID];
    v60 = [v12 UUIDString];

    v13 = [v11 timestamp];
    v59 = [IMTextMessagePipelineParameter richBodyWithBlastDoorBasicMessage:v6];
    v14 = [IMTextMessagePipelineParameter convertBlastDoorInstanceTypedAttributesToNativeTypesInAttributedString:"convertBlastDoorInstanceTypedAttributesToNativeTypesInAttributedString:supportingStickerAttributes:existingFileTransfersForMessage:" supportingStickerAttributes:? existingFileTransfersForMessage:?];
    v15 = [v14 messageBodyWithNativeAttributes];
    v58 = v14;
    v16 = v14;
    v17 = v15;
    v18 = [v16 fileTransferGuids];
    v19 = [IMTextMessagePipelineParameter plainTextBodyWithBlastDoorBasicMessage:v6];
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

    v24 = [IMTextMessagePipelineParameter plainTextSubjectWithBlastDoorBasicMessage:v6];
    v56 = v17;
    [(IMTextMessagePipelineParameter *)v8 setRichBody:v17];
    [(IMTextMessagePipelineParameter *)v8 setPlainTextBody:v19];
    v55 = v24;
    [(IMTextMessagePipelineParameter *)v8 setPlainTextSubject:v24];
    v57 = v18;
    [(IMTextMessagePipelineParameter *)v8 setFileTransferGUIDs:v18];
    v25 = [v6 threadIdentifierGUID];
    [(IMTextMessagePipelineParameter *)v8 setThreadIdentifierGUID:v25];

    v26 = [v6 threadOriginatorFallbackHash];
    [(IMTextMessagePipelineParameter *)v8 setThreadOriginatorFallbackHash:v26];

    v27 = [v6 messageSubType];
    v28 = [v27 audioMessage];
    v29 = [v28 inlineAudioMessages];

    if ([v29 count] == 1)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v31 = [v29 firstObject];
      if (v31)
      {
        CFDictionarySetValue(Mutable, @"ia-0", v31);
      }

      [(IMTextMessagePipelineParameter *)v8 setInlineAttachmentsDictionary:Mutable];
    }

    [(IMTextMessagePipelineParameter *)v8 setGUID:v60];
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v13];
    [(IMTextMessagePipelineParameter *)v8 setTimestamp:v32];

    v33 = [v11 storageContext];
    -[IMTextMessagePipelineParameter setIsFromStorage:](v8, "setIsFromStorage:", [v33 isFromStorage]);

    v34 = [v11 storageContext];
    -[IMTextMessagePipelineParameter setIsLastFromStorage:](v8, "setIsLastFromStorage:", [v34 isLastFromStorage]);

    -[IMTextMessagePipelineParameter setWantsDeliveryReceipt:](v8, "setWantsDeliveryReceipt:", [v11 wantsDeliveryReceipt]);
    -[IMTextMessagePipelineParameter setWantsCheckpointing:](v8, "setWantsCheckpointing:", [v11 wantsCheckpointing]);
    v35 = [IMTextMessagePipelineParameter participantDestinationIdentifierWithBasicMessage:v6];
    [(IMTextMessagePipelineParameter *)v8 setParticipantIdentifiers:v35];

    v36 = [(IMTextMessagePipelineParameter *)v8 messageSummaryInfoDictionaryWithBlastDoorBasicMessage:v6];
    [(IMTextMessagePipelineParameter *)v8 setMessageSummaryInfo:v36];

    v37 = [IMTextMessagePipelineParameter replicationSourceServiceNameWithBlastDoorBasicMessage:v6];
    [(IMTextMessagePipelineParameter *)v8 setReplicationSourceServiceName:v37];

    if ([v6 has_groupParticipantVersion])
    {
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "groupParticipantVersion")}];
      [(IMTextMessagePipelineParameter *)v8 setGroupParticipantVersion:v38];
    }

    else
    {
      [(IMTextMessagePipelineParameter *)v8 setGroupParticipantVersion:0];
    }

    v39 = [v6 has_groupProtocolVersion];
    v40 = v29;
    if (v39)
    {
      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "groupProtocolVersion")}];
      [(IMTextMessagePipelineParameter *)v8 setGroupProtocolVersion:v41];
    }

    else
    {
      [(IMTextMessagePipelineParameter *)v8 setGroupProtocolVersion:0];
    }

    v42 = [(IMTextMessagePipelineParameter *)v8 participantIdentifiers];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = sub_22B522B1C;
    v61[3] = &unk_278702A40;
    v43 = v8;
    v62 = v43;
    v44 = [v42 __imArrayByFilteringWithBlock:v61];
    v45 = [v44 _IDsFromURIs];

    v46 = [(IMTextMessagePipelineParameter *)v43 fromIdentifier];
    v47 = [v46 _stripFZIDPrefix];

    v48 = [(IMTextMessagePipelineParameter *)v43 participantIdentifiers];
    v49 = [v48 count];

    if (v49 <= 2)
    {
      if (!-[IMTextMessagePipelineParameter isFromMe](v43, "isFromMe") || ![v45 count])
      {
        goto LABEL_23;
      }

      v51 = [v45 lastObject];
      v52 = [v51 _stripFZIDPrefix];

      v47 = v52;
    }

    else
    {
      v50 = [v6 groupID];
      [(IMTextMessagePipelineParameter *)v43 setGroupID:v50];

      v51 = [v6 currentGroupName];
      [(IMTextMessagePipelineParameter *)v43 setCurrentGroupName:v51];
    }

LABEL_23:
    [(IMTextMessagePipelineParameter *)v43 setFromDisplayID:v47];
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(IMTextMessagePipelineParameter *)self GUID];
  v5 = [(IMTextMessagePipelineParameter *)self timestamp];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMTextMessagePipelineParameter isFromStorage](self, "isFromStorage")}];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMTextMessagePipelineParameter isLastFromStorage](self, "isLastFromStorage")}];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMTextMessagePipelineParameter isFromMe](self, "isFromMe")}];
  v9 = [(IMTextMessagePipelineParameter *)self messageItems];
  v10 = [v9 count];
  v11 = [(IMTextMessagePipelineParameter *)self hadChat];
  v12 = @"NO";
  if (v11)
  {
    v12 = @"YES";
  }

  v13 = [v3 stringWithFormat:@"<IMMessagePipelineParameter %p> { guid: %@, timestamp: %@, isFromStorage: %@, isLastFromStorage: %@, isFromMe: %@, output messageItems: %lu, hadChat: %@}", self, v4, v5, v6, v7, v8, v10, v12];

  return v13;
}

@end