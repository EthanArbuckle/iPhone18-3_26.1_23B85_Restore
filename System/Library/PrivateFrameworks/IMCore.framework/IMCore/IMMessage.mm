@interface IMMessage
+ (IMMessage)messageWithLocation:(id)location flags:(unint64_t)flags error:(id)error guid:(id)guid;
+ (id)breadcrumbMessageWithText:(id)text associatedMessageGUID:(id)d balloonBundleID:(id)iD fileTransferGUIDs:(id)ds payloadData:(id)data threadIdentifier:(id)identifier;
+ (id)customAcknowledgementMessageWithPayloadData:(id)data associatedMessageGUID:(id)d balloonBundleID:(id)iD messageSummaryInfo:(id)info threadIdentifier:(id)identifier;
+ (id)defaultInvitationMessageFromSender:(id)sender flags:(unint64_t)flags;
+ (id)fromMeIMHandle:(id)handle withText:(id)text fileTransferGUIDs:(id)ds flags:(unint64_t)flags;
+ (id)instantMessageWithAssociatedMessageContent:(id)content associatedMessageGUID:(id)d associatedMessageType:(int64_t)type associatedMessageRange:(_NSRange)range associatedMessageEmoji:(id)emoji messageSummaryInfo:(id)info threadIdentifier:(id)identifier;
+ (id)instantMessageWithText:(id)text messageSubject:(id)subject fileTransferGUIDs:(id)ds flags:(unint64_t)flags balloonBundleID:(id)d payloadData:(id)data expressiveSendStyleID:(id)iD;
+ (id)instantMessageWithText:(id)text messageSubject:(id)subject fileTransferGUIDs:(id)ds flags:(unint64_t)flags threadIdentifier:(id)identifier;
+ (id)instantMessageWithText:(id)text messageSubject:(id)subject flags:(unint64_t)flags expressiveSendStyleID:(id)d threadIdentifier:(id)identifier;
+ (id)instantMessageWithText:(id)text messageSubject:(id)subject flags:(unint64_t)flags threadIdentifier:(id)identifier associatedMessageGUID:(id)d scheduledDate:(id)date;
+ (id)locatingMessageWithGuid:(id)guid error:(id)error;
+ (id)messageFromIMMessageItem:(id)item sender:(id)sender subject:(id)subject;
+ (id)messageFromIMMessageItemDictionary:(id)dictionary body:(id)body sender:(id)sender subject:(id)subject;
+ (id)textMessageWithLocation:(id)location flags:(unint64_t)flags error:(id)error guid:(id)guid;
- (BOOL)hasEditedParts;
- (BOOL)hasInlineAttachments;
- (BOOL)isAssociatedMessage;
- (BOOL)isCancelTypingMessage;
- (BOOL)isDeviceActionMessage;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isIncomingTypingMessage;
- (BOOL)isIncomingTypingOrCancelTypingMessage;
- (BOOL)isRCSEncryptionTest;
- (BOOL)isReply;
- (BOOL)isRichLinkMessage;
- (BOOL)isSenderContactAndNotMe;
- (BOOL)isSenderUnknown;
- (BOOL)isSuggestedActionResponse;
- (BOOL)isSystemMessage;
- (BOOL)isTimeSensitive;
- (BOOL)isTypingMessage;
- (BOOL)isTypingOrCancelTypingMessage;
- (IMMessage)initWithSender:(id)sender fileTransfer:(id)transfer;
- (IMMessageItem)_imMessageItem;
- (IMTapback)tapback;
- (NSArray)inlineAttachmentAttributesArray;
- (NSArray)messageParts;
- (NSIndexSet)editedPartIndexes;
- (NSIndexSet)retractedPartIndexes;
- (NSString)plainBody;
- (NSString)summaryString;
- (_NSRange)associatedMessageRange;
- (id)_account;
- (id)_copyWithFlags:(unint64_t)flags;
- (id)_initWithSender:(id)sender time:(id)time timeRead:(id)read timeDelivered:(id)delivered timePlayed:(id)played plainText:(id)text text:(id)a9 messageSubject:(id)self0 fileTransferGUIDs:(id)self1 flags:(unint64_t)self2 error:(id)self3 guid:(id)self4 messageID:(int64_t)self5 subject:(id)self6 balloonBundleID:(id)self7 payloadData:(id)self8 expressiveSendStyleID:(id)self9 timeExpressiveSendPlayed:(id)sendPlayed associatedMessageGUID:(id)uID associatedMessageType:(int64_t)type associatedMessageRange:(_NSRange)range associatedMessageEmoji:(id)emoji messageSummaryInfo:(id)info threadIdentifier:(id)identifier dateEdited:(id)edited dateRecovered:(id)recovered scheduleType:(unint64_t)scheduleType scheduleState:(unint64_t)sender0;
- (id)_transcriptPluginChatItemFromTypeErasedPartChatItems:(id)items;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionForPurpose:(int64_t)purpose;
- (id)descriptionForPurpose:(int64_t)purpose inChat:(id)chat;
- (id)descriptionForPurpose:(int64_t)purpose inChat:(id)chat senderDisplayName:(id)name;
- (id)messagePartMatchingPartIndex:(int64_t)index;
- (id)messagesBySeparatingRichLinks;
- (id)messagesSeparatedByByteLength:(int64_t)length;
- (id)richLinkDataSourceWithChatContext:(id)context;
- (id)tapbackSummaryForConversationListUsingIsAdaptiveImageGlyphProvider:(id)provider isCommSafetySensitiveProvider:(id)sensitiveProvider adaptiveImageGlyphProvider:(id)glyphProvider effectString:(id)string;
- (void)addEditedPartIndex:(int64_t)index;
- (void)addRetractedPartIndex:(int64_t)index;
- (void)setAssociatedBalloonBundleID:(id)d;
- (void)setEditedPartIndexes:(id)indexes;
- (void)setIsKeyTransparencyVerifiedMessage:(BOOL)message;
- (void)setIsTapToRetry:(BOOL)retry;
- (void)setNeedsRelay:(BOOL)relay;
- (void)setPendingSatelliteSend:(BOOL)send;
- (void)setRetractedPartIndexes:(id)indexes;
- (void)setSentOrReceivedOffGrid:(BOOL)grid;
- (void)setSourceApplicationID:(id)d;
@end

@implementation IMMessage

- (NSString)plainBody
{
  p_plainBody = &self->_plainBody;
  plainBody = self->_plainBody;
  if (!plainBody)
  {
    v6 = objc_msgSend_string(self->_text, a2, v2);
    v8 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v6, v7, *MEMORY[0x1E69A5F00], &stru_1F1B76F98);
    v10 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v8, v9, *MEMORY[0x1E69A5F20], &stru_1F1B76F98);
    v12 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v10, v11, *MEMORY[0x1E69A6CF0], &stru_1F1B76F98);

    if (objc_msgSend_length(v12, v13, v14))
    {
      objc_storeStrong(p_plainBody, v12);
    }

    plainBody = *p_plainBody;
  }

  return plainBody;
}

- (BOOL)isEmpty
{
  if (self->_flags & 8) == 0 || (objc_msgSend_hasInlineAttachments(self, a2, v2))
  {
    return 0;
  }

  v7 = objc_msgSend_fileTransferGUIDs(self, v4, v5);
  if (objc_msgSend_count(v7, v8, v9))
  {
    v6 = 0;
  }

  else
  {
    v12 = objc_msgSend_messageSubject(self, v10, v11);
    if (objc_msgSend_length(v12, v13, v14))
    {
      v6 = 0;
    }

    else
    {
      v17 = objc_msgSend_payloadData(self, v15, v16);
      v6 = objc_msgSend_length(v17, v18, v19) == 0;
    }
  }

  return v6;
}

- (NSIndexSet)retractedPartIndexes
{
  v3 = objc_msgSend_messageSummaryInfo(self, a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, *MEMORY[0x1E69A7240]);

  if (v5)
  {
    objc_msgSend___im_indexSetFromNumberArray_(MEMORY[0x1E696AC90], v6, v5);
  }

  else
  {
    objc_msgSend_indexSet(MEMORY[0x1E696AC90], v6, v7);
  }
  v8 = ;

  return v8;
}

- (BOOL)isTypingMessage
{
  if (objc_msgSend_wasDetonated(self, a2, v2))
  {
    LOBYTE(isFinished) = 0;
  }

  else if (objc_msgSend_isFinished(self, v4, v5))
  {
    isFinished = objc_msgSend_isFinished(self, v7, v8);
    if (isFinished)
    {
      isFinished = objc_msgSend_isEmpty(self, v9, v10);
      if (isFinished)
      {
        LOBYTE(isFinished) = objc_msgSend_hasEditedParts(self, v11, v12) ^ 1;
      }
    }
  }

  else
  {
    LOBYTE(isFinished) = 1;
  }

  return isFinished;
}

- (IMTapback)tapback
{
  v4 = objc_msgSend_associatedMessageType(self, a2, v2);
  if ((v4 - 3000) >= 6 && (v4 - 2000) > 5)
  {
    v14 = objc_msgSend_associatedMessageType(self, v5, v6);
    if (v14 == 3006 || v14 == 2006)
    {
      v17 = objc_alloc(MEMORY[0x1E69A8060]);
      v20 = objc_msgSend_associatedMessageEmoji(self, v18, v19);
      v23 = (objc_msgSend_associatedMessageType(self, v21, v22) & 0xFFFFFFFFFFFFFFF8) == 3000;
      isRemoved = objc_msgSend_initWithEmoji_isRemoved_(v17, v24, v20, v23);
    }

    else
    {
      v25 = objc_msgSend_associatedMessageType(self, v15, v16);
      if (v25 == 3007 || v25 == 2007)
      {
        v28 = objc_msgSend_fileTransferGUIDs(self, v26, v27);
        v31 = objc_msgSend_firstObject(v28, v29, v30);

        if (v31)
        {
          v34 = (objc_msgSend_associatedMessageType(self, v32, v33) & 0xFFFFFFFFFFFFFFF8) == 3000;
          v35 = objc_alloc(MEMORY[0x1E69A82C8]);
          isRemoved = objc_msgSend_initWithTransferGUID_isRemoved_(v35, v36, v31, v34);
        }

        else
        {
          isRemoved = 0;
        }
      }

      else
      {
        isRemoved = 0;
      }
    }
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E69A7FB0]);
    v10 = objc_msgSend_associatedMessageType(self, v8, v9);
    isRemoved = objc_msgSend_initWithAssociatedMessageType_(v7, v11, v10);
  }

  return isRemoved;
}

- (id)tapbackSummaryForConversationListUsingIsAdaptiveImageGlyphProvider:(id)provider isCommSafetySensitiveProvider:(id)sensitiveProvider adaptiveImageGlyphProvider:(id)glyphProvider effectString:(id)string
{
  providerCopy = provider;
  sensitiveProviderCopy = sensitiveProvider;
  glyphProviderCopy = glyphProvider;
  stringCopy = string;
  v18 = objc_msgSend_associatedMessageType(self, v14, v15) & 0xFFFFFFFFFFFFFFF8;
  if (v18 != 3000 && v18 != 2000)
  {
LABEL_15:
    v34 = 0;
    goto LABEL_16;
  }

  v19 = objc_msgSend_sender(self, v16, v17);
  v24 = objc_msgSend_isFromMe(self, v20, v21);
  if (v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = objc_msgSend__displayNameWithAbbreviation(v19, v22, v23);
  }

  v26 = objc_msgSend_tapback(self, v22, v23);
  if (!v26)
  {
    v42 = IMLogHandleForCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1A84DF054(v42);
    }

    goto LABEL_15;
  }

  v29 = v26;
  v30 = objc_msgSend_messageSummaryInfo(self, v27, v28);
  v34 = objc_msgSend_previewAttributedStringWithMessageSummaryInfo_isAdaptiveImageGlyphProvider_isCommSafetySensitiveProvider_adaptiveImageGlyphProvider_senderDisplayName_isFromMe_effectString_(v29, v31, v30, providerCopy, sensitiveProviderCopy, glyphProviderCopy, v25, v24, stringCopy);
  if (!v34)
  {
    v35 = objc_msgSend_plainBody(self, v32, v33);
    v36 = v35;
    v37 = &stru_1F1B76F98;
    if (v35)
    {
      v37 = v35;
    }

    v38 = v37;

    v39 = objc_alloc(MEMORY[0x1E696AAB0]);
    v40 = v38;
    v34 = objc_msgSend_initWithString_(v39, v41, v38);
  }

LABEL_16:

  return v34;
}

- (id)descriptionForPurpose:(int64_t)purpose
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_guid(self, a2, purpose);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = objc_msgSend_sharedRegistry(IMChatRegistry, v6, v7, 0);
  v11 = objc_msgSend_cachedChats(v8, v9, v10);

  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v24, v28, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v25;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = objc_msgSend_messageForGUID_(v18, v14, v5);

        if (v19)
        {
          v21 = objc_msgSend_descriptionForPurpose_inChat_(self, v14, purpose, v18);

          goto LABEL_11;
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v24, v28, 16);
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v21 = objc_msgSend_descriptionForPurpose_inChat_(self, v20, purpose, 0);
LABEL_11:

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)descriptionForPurpose:(int64_t)purpose inChat:(id)chat
{
  if (chat)
  {
    v6 = objc_msgSend_chatStyle(chat, a2, purpose) != 45;
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_msgSend__imMessageItem(self, a2, purpose);
  v9 = objc_msgSend_descriptionForPurpose_isGroupMessage_messageDataSource_attachmentDataSource_(v7, v8, purpose, v6, 0, &unk_1F1B6E240);

  return v9;
}

- (id)descriptionForPurpose:(int64_t)purpose inChat:(id)chat senderDisplayName:(id)name
{
  nameCopy = name;
  if (chat)
  {
    chat = (objc_msgSend_chatStyle(chat, v8, v9) != 45);
  }

  v11 = objc_msgSend__imMessageItem(self, v8, v9);
  v13 = objc_msgSend_descriptionForPurpose_isGroupMessage_senderDisplayName_messageDataSource_attachmentDataSource_(v11, v12, purpose, chat, nameCopy, 0, &unk_1F1B6E260);

  return v13;
}

+ (id)defaultInvitationMessageFromSender:(id)sender flags:(unint64_t)flags
{
  senderCopy = sender;
  v8 = objc_msgSend_messageClass(IMChatRegistry, v6, v7);
  v9 = objc_alloc(MEMORY[0x1E696AAB0]);
  v11 = objc_msgSend_initWithString_(v9, v10, &stru_1F1B76F98);
  v12 = [v8 alloc];
  v15 = objc_msgSend_date(MEMORY[0x1E695DF00], v13, v14);
  v17 = objc_msgSend_initWithSender_time_text_fileTransferGUIDs_flags_error_guid_subject_threadIdentifier_(v12, v16, senderCopy, v15, v11, 0, flags | 1, 0, 0, 0, 0);

  return v17;
}

+ (id)instantMessageWithText:(id)text messageSubject:(id)subject flags:(unint64_t)flags expressiveSendStyleID:(id)d threadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dCopy = d;
  subjectCopy = subject;
  textCopy = text;
  v16 = [self alloc];
  v19 = objc_msgSend_date(MEMORY[0x1E695DF00], v17, v18);
  v22 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v20, v21);
  timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState = objc_msgSend__initWithSender_time_timeRead_timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState_(v16, v23, 0, v19, 0, 0, 0, 0, textCopy, subjectCopy, 0, flags, 0, v22, 0, 0, 0, 0, dCopy, 0, 0, 0, 0, 0, 0, 0, identifierCopy, 0, 0, 0, 0);

  return timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState;
}

+ (id)instantMessageWithText:(id)text messageSubject:(id)subject flags:(unint64_t)flags threadIdentifier:(id)identifier associatedMessageGUID:(id)d scheduledDate:(id)date
{
  dateCopy = date;
  dCopy = d;
  identifierCopy = identifier;
  subjectCopy = subject;
  textCopy = text;
  v20 = [self alloc];
  if (dateCopy)
  {
    v21 = 2;
    v22 = dateCopy;
  }

  else
  {
    v22 = objc_msgSend_date(MEMORY[0x1E695DF00], v18, v19);
    v21 = 0;
  }

  v23 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v18, v19);
  timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState = objc_msgSend__initWithSender_time_timeRead_timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState_(v20, v24, 0, v22, 0, 0, 0, 0, textCopy, subjectCopy, 0, flags, 0, v23, 0, 0, 0, 0, 0, 0, dCopy, 0, 0, 0, 0, 0, identifierCopy, 0, 0, v21, dateCopy != 0);

  if (!dateCopy)
  {
  }

  return timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState;
}

+ (id)instantMessageWithText:(id)text messageSubject:(id)subject fileTransferGUIDs:(id)ds flags:(unint64_t)flags threadIdentifier:(id)identifier
{
  textCopy = text;
  subjectCopy = subject;
  dsCopy = ds;
  identifierCopy = identifier;
  if (!textCopy)
  {
    textCopy = objc_alloc_init(MEMORY[0x1E696AAB0]);
  }

  v16 = [self alloc];
  v19 = objc_msgSend_date(MEMORY[0x1E695DF00], v17, v18);
  v22 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v20, v21);
  timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState = objc_msgSend__initWithSender_time_timeRead_timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState_(v16, v23, 0, v19, 0, 0, 0, 0, textCopy, subjectCopy, dsCopy, flags, 0, v22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, identifierCopy, 0, 0, 0, 0);

  return timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState;
}

+ (id)instantMessageWithText:(id)text messageSubject:(id)subject fileTransferGUIDs:(id)ds flags:(unint64_t)flags balloonBundleID:(id)d payloadData:(id)data expressiveSendStyleID:(id)iD
{
  textCopy = text;
  subjectCopy = subject;
  dsCopy = ds;
  dCopy = d;
  dataCopy = data;
  iDCopy = iD;
  if (!textCopy)
  {
    textCopy = objc_alloc_init(MEMORY[0x1E696AAB0]);
  }

  v21 = [self alloc];
  v24 = objc_msgSend_date(MEMORY[0x1E695DF00], v22, v23);
  v27 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v25, v26);
  timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState = objc_msgSend__initWithSender_time_timeRead_timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState_(v21, v28, 0, v24, 0, 0, 0, 0, textCopy, subjectCopy, dsCopy, flags, 0, v27, 0, 0, dCopy, dataCopy, iDCopy, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

  return timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState;
}

+ (id)fromMeIMHandle:(id)handle withText:(id)text fileTransferGUIDs:(id)ds flags:(unint64_t)flags
{
  handleCopy = handle;
  textCopy = text;
  dsCopy = ds;
  if (handleCopy)
  {
    if (textCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1A84E1A0C(a2, self, v13);
  if (!textCopy)
  {
LABEL_3:
    textCopy = objc_alloc_init(MEMORY[0x1E696AAB0]);
  }

LABEL_4:
  v15 = [self alloc];
  v18 = objc_msgSend_date(MEMORY[0x1E695DF00], v16, v17);
  v21 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v19, v20);
  v23 = objc_msgSend_initWithSender_time_text_fileTransferGUIDs_flags_error_guid_subject_threadIdentifier_(v15, v22, handleCopy, v18, textCopy, dsCopy, flags, 0, v21, 0, 0);

  return v23;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v168 = objc_alloc(objc_opt_class());
  v167 = objc_msgSend_sender(self, v4, v5);
  v8 = objc_msgSend_time(self, v6, v7);
  v11 = objc_msgSend_text(self, v9, v10);
  v14 = objc_msgSend_messageSubject(self, v12, v13);
  v17 = objc_msgSend_fileTransferGUIDs(self, v15, v16);
  v166 = objc_msgSend_flags(self, v18, v19);
  v22 = objc_msgSend_error(self, v20, v21);
  v25 = objc_msgSend_guid(self, v23, v24);
  v28 = objc_msgSend_subject(self, v26, v27);
  v31 = objc_msgSend_threadIdentifier(self, v29, v30);
  v33 = objc_msgSend_initWithSender_time_text_messageSubject_fileTransferGUIDs_flags_error_guid_subject_threadIdentifier_(v168, v32, v167, v8, v11, v14, v17, v166, v22, v25, v28, v31);

  v36 = objc_msgSend_time(self, v34, v35);
  objc_msgSend__updateTime_(v33, v37, v36);

  v40 = objc_msgSend_timeRead(self, v38, v39);
  objc_msgSend__updateTimeRead_(v33, v41, v40);

  v44 = objc_msgSend_timeDelivered(self, v42, v43);
  objc_msgSend__updateTimeDelivered_(v33, v45, v44);

  v48 = objc_msgSend_timePlayed(self, v46, v47);
  objc_msgSend__updateTimePlayed_(v33, v49, v48);

  v52 = objc_msgSend_messageID(self, v50, v51);
  objc_msgSend__updateMessageID_(v33, v53, v52);
  v56 = objc_msgSend_associatedMessageGUID(self, v54, v55);
  objc_msgSend__associatedMessageGUID_(v33, v57, v56);

  v60 = objc_msgSend_associatedMessageType(self, v58, v59);
  objc_msgSend__associatedMessageType_(v33, v61, v60);
  v64 = objc_msgSend_associatedMessageRange(self, v62, v63);
  objc_msgSend__associatedMessageRange_(v33, v65, v64, v65);
  v68 = objc_msgSend_associatedMessageEmoji(self, v66, v67);
  objc_msgSend__associatedMessageEmoji_(v33, v69, v68);

  v72 = objc_msgSend_messageSummaryInfo(self, v70, v71);
  objc_msgSend__messageSummaryInfo_(v33, v73, v72);

  v76 = objc_msgSend_balloonBundleID(self, v74, v75);
  objc_msgSend_setBalloonBundleID_(v33, v77, v76);

  v80 = objc_msgSend_payloadData(self, v78, v79);
  objc_msgSend_setPayloadData_(v33, v81, v80);

  v84 = objc_msgSend_expressiveSendStyleID(self, v82, v83);
  objc_msgSend_setExpressiveSendStyleID_(v33, v85, v84);

  v88 = objc_msgSend_timeExpressiveSendPlayed(self, v86, v87);
  objc_msgSend_setTimeExpressiveSendPlayed_(v33, v89, v88);

  v92 = objc_msgSend_bizIntent(self, v90, v91);
  objc_msgSend__updateBizIntent_(v33, v93, v92);

  v96 = objc_msgSend_locale(self, v94, v95);
  objc_msgSend__updateLocale_(v33, v97, v96);

  v100 = objc_msgSend_useStandalone(self, v98, v99);
  objc_msgSend_setUseStandalone_(v33, v101, v100);
  shouldNotifyOnSend = objc_msgSend_shouldNotifyOnSend(self, v102, v103);
  objc_msgSend_setShouldNotifyOnSend_(v33, v105, shouldNotifyOnSend);
  v108 = objc_msgSend_sentViaRemoteIntent(self, v106, v107);
  objc_msgSend_setSentViaRemoteIntent_(v33, v109, v108);
  v112 = objc_msgSend_messageSummaryInfo(self, v110, v111);
  v114 = objc_msgSend_objectForKey_(v112, v113, *MEMORY[0x1E69A7208]);
  objc_msgSend_setAssociatedBalloonBundleID_(v33, v115, v114);

  v118 = objc_msgSend_messageSummaryInfo(self, v116, v117);
  v120 = objc_msgSend_objectForKey_(v118, v119, *MEMORY[0x1E69A7250]);
  objc_msgSend_setSourceApplicationID_(v33, v121, v120);

  v124 = objc_msgSend_syndicationRanges(self, v122, v123);
  objc_msgSend__syndicationRanges_(v33, v125, v124);

  v128 = objc_msgSend_syncedSyndicationRanges(self, v126, v127);
  objc_msgSend__syncedSyndicationRanges_(v33, v129, v128);

  v132 = objc_msgSend_dateEdited(self, v130, v131);
  objc_msgSend__updatedDateEdited_(v33, v133, v132);

  v136 = objc_msgSend_dateRecovered(self, v134, v135);
  objc_msgSend__updatedDateRecovered_(v33, v137, v136);

  v140 = objc_msgSend_groupActivity(self, v138, v139);
  objc_msgSend_setGroupActivity_(v33, v141, v140);

  v144 = objc_msgSend_collaborationInitiationRequestInfo(self, v142, v143);
  objc_msgSend_setCollaborationInitiationRequestInfo_(v33, v145, v144);

  v148 = objc_msgSend_scheduleType(self, v146, v147);
  objc_msgSend_setScheduleType_(v33, v149, v148);
  v152 = objc_msgSend_scheduleState(self, v150, v151);
  objc_msgSend_setScheduleState_(v33, v153, v152);
  v156 = objc_msgSend_telemetryMetrics(self, v154, v155);
  v159 = objc_msgSend_copy(v156, v157, v158);
  objc_msgSend_setTelemetryMetrics_(v33, v160, v159);

  v163 = objc_msgSend_telemetryMetricsReasonCode(self, v161, v162);
  objc_msgSend_setTelemetryMetricsReasonCode_(v33, v164, v163);

  return v33;
}

- (id)_copyWithFlags:(unint64_t)flags
{
  v4 = objc_msgSend_copy(self, a2, flags);
  objc_msgSend__updateFlags_(v4, v5, flags);
  return v4;
}

- (id)_initWithSender:(id)sender time:(id)time timeRead:(id)read timeDelivered:(id)delivered timePlayed:(id)played plainText:(id)text text:(id)a9 messageSubject:(id)self0 fileTransferGUIDs:(id)self1 flags:(unint64_t)self2 error:(id)self3 guid:(id)self4 messageID:(int64_t)self5 subject:(id)self6 balloonBundleID:(id)self7 payloadData:(id)self8 expressiveSendStyleID:(id)self9 timeExpressiveSendPlayed:(id)sendPlayed associatedMessageGUID:(id)uID associatedMessageType:(int64_t)type associatedMessageRange:(_NSRange)range associatedMessageEmoji:(id)emoji messageSummaryInfo:(id)info threadIdentifier:(id)identifier dateEdited:(id)edited dateRecovered:(id)recovered scheduleType:(unint64_t)scheduleType scheduleState:(unint64_t)sender0
{
  v177 = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  timeCopy = time;
  timeCopy2 = time;
  readCopy = read;
  readCopy2 = read;
  deliveredCopy = delivered;
  deliveredCopy2 = delivered;
  playedCopy = played;
  textCopy = text;
  v168 = a9;
  subjectCopy = subject;
  dsCopy = ds;
  errorCopy = error;
  guidCopy = guid;
  v159 = a16;
  iDCopy = iD;
  v38 = readCopy2;
  dataCopy = data;
  styleIDCopy = styleID;
  sendPlayedCopy = sendPlayed;
  uIDCopy = uID;
  emojiCopy = emoji;
  infoCopy = info;
  identifierCopy = identifier;
  v41 = timeCopy2;
  editedCopy = edited;
  v175.receiver = self;
  v175.super_class = IMMessage;
  v42 = [(IMMessage *)&v175 init];
  v43 = v42;
  if (v42)
  {
    v143 = identifierCopy;
    v144 = errorCopy;
    v145 = v38;
    v151 = guidCopy;
    objc_storeStrong(&v42->_sender, sender);
    objc_storeStrong(&v43->_time, timeCopy);
    objc_storeStrong(&v43->_messageSubject, subject);
    v43->_messageID = d;
    v43->_flags = flags;
    objc_storeStrong(&v43->_timeRead, readCopy);
    objc_storeStrong(&v43->_timeDelivered, deliveredCopy);
    objc_storeStrong(&v43->_timePlayed, played);
    objc_storeStrong(&v43->_subject, a16);
    objc_storeStrong(&v43->_balloonBundleID, iD);
    objc_storeStrong(&v43->_payloadData, data);
    objc_storeStrong(&v43->_expressiveSendStyleID, styleID);
    objc_storeStrong(&v43->_timeExpressiveSendPlayed, sendPlayed);
    objc_storeStrong(&v43->_associatedMessageGUID, uID);
    v43->_associatedMessageType = type;
    v43->_associatedMessageRange = range;
    objc_storeStrong(&v43->_associatedMessageEmoji, emoji);
    objc_storeStrong(&v43->_messageSummaryInfo, info);
    v45 = objc_msgSend_objectForKey_(infoCopy, v44, *MEMORY[0x1E69A7208]);
    associatedBalloonBundleID = v43->_associatedBalloonBundleID;
    v43->_associatedBalloonBundleID = v45;

    v48 = objc_msgSend_objectForKey_(infoCopy, v47, *MEMORY[0x1E69A7250]);
    sourceApplicationID = v43->_sourceApplicationID;
    v43->_sourceApplicationID = v48;

    objc_storeStrong(&v43->_dateEdited, edited);
    v43->_scheduleType = scheduleType;
    v43->_scheduleState = state;
    if (guidCopy)
    {
      v52 = guidCopy;
    }

    else
    {
      v52 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v50, v51);
    }

    guid = v43->_guid;
    v43->_guid = v52;

    v56 = v38;
    if (objc_msgSend_isLoginIMHandle(senderCopy, v54, v55))
    {
      v43->_flags |= 4uLL;
    }

    if (v168)
    {
      objc_storeStrong(&v43->_text, a9);
    }

    v57 = infoCopy;
    objc_storeStrong(&v43->_fileTransferGUIDs, ds);
    if (objc_msgSend_length(textCopy, v58, v59))
    {
      v62 = textCopy;
      plainBody = v43->_plainBody;
      v43->_plainBody = v62;
    }

    else
    {
      v64 = objc_msgSend_count(dsCopy, v60, v61);
      v67 = objc_msgSend_string(v43->_text, v65, v66);
      plainBody = v67;
      if (v64)
      {
        v70 = objc_msgSend___stringByStrippingAttachmentAndControlCharacters(v67, v68, v69);
        v71 = v43->_plainBody;
        v43->_plainBody = v70;
      }

      else
      {
        v72 = v43->_plainBody;
        v43->_plainBody = v67;
        plainBody = v72;
      }
    }

    if (objc_msgSend_length(v43->_plainBody, v73, v74) && objc_msgSend_characterAtIndex_(v43->_plainBody, v75, 0) == 47 && !objc_msgSend_count(v43->_fileTransferGUIDs, v75, v76) && !objc_msgSend_length(v43->_messageSubject, v75, v76))
    {
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v77 = IMEmotePrefixes();
      v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v78, &v171, v176, 16);
      if (v79)
      {
        v81 = v79;
        v82 = *v172;
        while (2)
        {
          for (i = 0; i != v81; ++i)
          {
            if (*v172 != v82)
            {
              objc_enumerationMutation(v77);
            }

            v84 = *(*(&v171 + 1) + 8 * i);
            v85 = objc_msgSend_commonPrefixWithString_options_(v84, v80, v43->_plainBody, 1);
            isEqualToString = objc_msgSend_isEqualToString_(v85, v86, v84);

            if (isEqualToString)
            {
              v89 = objc_msgSend_length(v43->_plainBody, v80, v88);
              if (v89 > objc_msgSend_length(v84, v90, v91))
              {
                v93 = v43->_plainBody;
                v94 = objc_msgSend_length(v84, v80, v92);
                v96 = objc_msgSend_characterAtIndex_(v93, v95, v94);
                v99 = objc_msgSend_alphanumericCharacterSet(MEMORY[0x1E696AB08], v97, v98);
                LOBYTE(v96) = objc_msgSend_characterIsMember_(v99, v100, v96);

                if ((v96 & 1) == 0)
                {
                  v43->_flags |= 2uLL;
                  goto LABEL_30;
                }
              }
            }
          }

          v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v80, &v171, v176, 16);
          if (v81)
          {
            continue;
          }

          break;
        }
      }

LABEL_30:

      v56 = v145;
      errorCopy = v144;
      guidCopy = v151;
    }

    if ((v43->_flags & 0x20000000) == 0)
    {
      v101 = objc_msgSend_subject(v43, v75, v76);
      if (objc_msgSend_isBusiness(v101, v102, v103))
      {
LABEL_35:

        goto LABEL_36;
      }

      v106 = objc_msgSend_sender(v43, v104, v105);
      isBusiness = objc_msgSend_isBusiness(v106, v107, v108);

      if ((isBusiness & 1) == 0)
      {
        v110 = *MEMORY[0x1E69A70F8];
        v111 = objc_msgSend_length(v168, v75, v76);
        v169[0] = MEMORY[0x1E69E9820];
        v169[1] = 3221225472;
        v169[2] = sub_1A8345540;
        v169[3] = &unk_1E7812DF8;
        v170 = v43;
        objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v168, v112, v110, 0, v111, 0, v169);
        v101 = v170;
        goto LABEL_35;
      }
    }

LABEL_36:
    v113 = objc_msgSend_plainBody(v43, v75, v76);
    if (!objc_msgSend_length(v113, v114, v115) && !objc_msgSend_count(v43->_fileTransferGUIDs, v116, v117))
    {
      v120 = objc_msgSend_messageSubject(v43, v118, v119);
      if (!objc_msgSend_length(v120, v121, v122))
      {
        v125 = objc_msgSend_payloadData(v43, v123, v124);
        if (!objc_msgSend_length(v125, v126, v127) && (objc_msgSend_wasDetonated(v43, v128, v129) & 1) == 0)
        {
          v132 = objc_msgSend_associatedMessageGUID(v43, v130, v131);
          if (!objc_msgSend_length(v132, v133, v134))
          {
            v164 = objc_msgSend_messageSummaryInfo(v43, v135, v136);
            v142 = objc_msgSend_objectForKeyedSubscript_(v164, v141, *MEMORY[0x1E69A7220]);

            guidCopy = v151;
            if (!v142)
            {
              v137 = v43->_flags | 8;
              goto LABEL_47;
            }

LABEL_46:
            v137 = v43->_flags & 0xFFFFFFFFFFFFFFF7;
LABEL_47:
            v41 = timeCopy2;
            v43->_flags = v137;
            objc_storeStrong(&v43->_error, error);
            objc_storeStrong(&v43->_threadIdentifier, identifier);
            replyCountsByPart = v43->_replyCountsByPart;
            v43->_replyCountsByPart = 0;

            infoCopy = v57;
            identifierCopy = v143;
            v38 = v56;
            goto LABEL_48;
          }

          guidCopy = v151;
        }
      }
    }

    goto LABEL_46;
  }

LABEL_48:

  v139 = *MEMORY[0x1E69E9840];
  return v43;
}

- (IMMessage)initWithSender:(id)sender fileTransfer:(id)transfer
{
  senderCopy = sender;
  v9 = objc_msgSend_guid(transfer, v7, v8);
  v10 = objc_alloc(MEMORY[0x1E695DF20]);
  v12 = objc_msgSend_initWithObjectsAndKeys_(v10, v11, v9, *MEMORY[0x1E69A5F68], 0);
  v13 = objc_alloc(MEMORY[0x1E696AAB0]);
  v15 = objc_msgSend_initWithString_attributes_(v13, v14, *MEMORY[0x1E69A5F00], v12);
  v16 = objc_alloc(MEMORY[0x1E695DEC8]);
  v18 = objc_msgSend_initWithObjects_(v16, v17, v9, 0);
  v21 = objc_msgSend_date(MEMORY[0x1E695DF00], v19, v20);
  v24 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v22, v23);
  v26 = objc_msgSend_initWithSender_time_text_fileTransferGUIDs_flags_error_guid_subject_threadIdentifier_(self, v25, senderCopy, v21, v15, v18, 1, 0, v24, 0, 0);

  v27 = v26;
  return v27;
}

- (NSString)summaryString
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_plainBody(self, a2, v2);
  v7 = objc_msgSend_mutableCopy(v4, v5, v6);
  if (objc_msgSend_isEmote(self, v8, v9))
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = IMEmotePrefixes();
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v31, v35, 16);
    if (v14)
    {
      v16 = v14;
      v17 = *v32;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v31 + 1) + 8 * i);
          v20 = objc_msgSend_commonPrefixWithString_options_(v19, v15, v7, 1, v31);
          isEqualToString = objc_msgSend_isEqualToString_(v20, v21, v19);

          if (isEqualToString)
          {
            v24 = objc_msgSend_length(v19, v15, v23);
            v27 = objc_msgSend_senderName(self, v25, v26);
            objc_msgSend_replaceCharactersInRange_withString_(v7, v28, 0, v24, v27);
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v31, v35, 16);
      }

      while (v16);
    }
  }

  objc_msgSend_replaceNewlinesWithSpaces(v7, v10, v11, v31);

  v29 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)hasInlineAttachments
{
  if (!objc_msgSend_length(self->_text, a2, v2))
  {
    return 0;
  }

  v6 = objc_msgSend_string(self->_text, v4, v5);
  v8 = objc_msgSend_rangeOfString_(v6, v7, *MEMORY[0x1E69A5F00]) != 0x7FFFFFFFFFFFFFFFLL;

  return v8;
}

- (NSArray)inlineAttachmentAttributesArray
{
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2);
  v7 = objc_msgSend_length(self->_text, v5, v6);
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *MEMORY[0x1E69A5F68];
    do
    {
      v17 = 0;
      v18 = 0;
      v12 = objc_msgSend_attributesAtIndex_longestEffectiveRange_inRange_(self->_text, v8, v10, &v17, v10, v9 - v10);
      v14 = objc_msgSend_objectForKey_(v12, v13, v11);

      if (v14)
      {
        objc_msgSend_addObject_(v4, v15, v12);
      }

      v10 = v18 + v17;
    }

    while (v10 < v9);
  }

  return v4;
}

- (BOOL)isSenderContactAndNotMe
{
  if (objc_msgSend_isFromMe(self, a2, v2))
  {
    return 0;
  }

  v7 = objc_msgSend_sender(self, v4, v5);
  v10 = v7;
  if (v7)
  {
    isContact = objc_msgSend_isContact(v7, v8, v9);
  }

  else
  {
    isContact = 0;
  }

  return isContact;
}

- (BOOL)isSenderUnknown
{
  if ((objc_msgSend_isFromMe(self, a2, v2) & 1) == 0)
  {
    v7 = objc_msgSend_sender(self, v4, v5);
    v10 = v7;
    if (v7)
    {
      if (objc_msgSend_isContact(v7, v8, v9) & 1) != 0 || (objc_msgSend_isBusiness(v10, v11, v12))
      {
        goto LABEL_6;
      }

      v16 = objc_msgSend_service(v10, v13, v14);
      v19 = objc_msgSend_iMessageService(IMServiceImpl, v17, v18);

      if (v16 == v19)
      {
        v15 = objc_msgSend_normalizedID(v10, v20, v21);
        if (IMStringIsEmail() && ((objc_msgSend_hasSuffix_(v15, v22, @"@apple.com") & 1) != 0 || (objc_msgSend_hasSuffix_(v15, v23, @".apple.com") & 1) != 0))
        {

LABEL_6:
          v6 = 0;
LABEL_17:

          return v6;
        }

        goto LABEL_15;
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v25 = 0;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Could not determine sender, returning unknown sender", v25, 2u);
      }

LABEL_15:
    }

    v6 = 1;
    goto LABEL_17;
  }

  return 0;
}

- (BOOL)isSystemMessage
{
  if ((self->_flags & 4) != 0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v4 = objc_msgSend_sender(self, a2, v2);
    if (v4)
    {
      v5 = (BYTE1(self->_flags) >> 6) & 1;
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)isSuggestedActionResponse
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_text(self, a2, v2);
  v10[0] = *MEMORY[0x1E69A7CD8];
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v10, 1);
  v7 = objc_msgSend___im_containsAttributedValue_(v3, v6, v5);

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)isRCSEncryptionTest
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isRCSEncryptionOptInTestEnabled = objc_msgSend_isRCSEncryptionOptInTestEnabled(v4, v5, v6);

  if (isRCSEncryptionOptInTestEnabled)
  {
    return (BYTE5(self->_flags) >> 5) & 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)setIsKeyTransparencyVerifiedMessage:(BOOL)message
{
  v3 = 0x2000000000;
  if (!message)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (void)setIsTapToRetry:(BOOL)retry
{
  v3 = 0x10000000000;
  if (!retry)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (void)setPendingSatelliteSend:(BOOL)send
{
  v3 = 0x20000000000;
  if (!send)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (void)setNeedsRelay:(BOOL)relay
{
  v3 = 0x40000000000;
  if (!relay)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (void)setSentOrReceivedOffGrid:(BOOL)grid
{
  v3 = 0x80000000000;
  if (!grid)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (BOOL)isTimeSensitive
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isIntroductionsEnabled = objc_msgSend_isIntroductionsEnabled(v4, v5, v6);

  if (isIntroductionsEnabled)
  {
    return (BYTE5(self->_flags) >> 4) & 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (NSIndexSet)editedPartIndexes
{
  v3 = objc_msgSend_messageSummaryInfo(self, a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, *MEMORY[0x1E69A7238]);
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v10 = objc_msgSend___im_indexSetFromNumberArray_(MEMORY[0x1E696AC90], v9, v8);

  return v10;
}

- (void)setEditedPartIndexes:(id)indexes
{
  v17 = objc_msgSend___im_numberArray(indexes, a2, indexes);
  v6 = objc_msgSend_messageSummaryInfo(self, v4, v5);
  if (objc_msgSend_count(v6, v7, v8))
  {
    v11 = objc_msgSend_messageSummaryInfo(self, v9, v10);
    v14 = objc_msgSend_mutableCopy(v11, v12, v13);
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  objc_msgSend_setObject_forKey_(v14, v15, v17, *MEMORY[0x1E69A7238]);
  messageSummaryInfo = self->_messageSummaryInfo;
  self->_messageSummaryInfo = v14;
}

- (void)addEditedPartIndex:(int64_t)index
{
  v13 = objc_msgSend_editedPartIndexes(self, a2, index);
  v7 = objc_msgSend_mutableCopy(v13, v5, v6);
  objc_msgSend_addIndex_(v7, v8, index);
  v11 = objc_msgSend_copy(v7, v9, v10);
  objc_msgSend_setEditedPartIndexes_(self, v12, v11);
}

- (void)setRetractedPartIndexes:(id)indexes
{
  v17 = objc_msgSend___im_numberArray(indexes, a2, indexes);
  v6 = objc_msgSend_messageSummaryInfo(self, v4, v5);
  if (objc_msgSend_count(v6, v7, v8))
  {
    v11 = objc_msgSend_messageSummaryInfo(self, v9, v10);
    v14 = objc_msgSend_mutableCopy(v11, v12, v13);
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  objc_msgSend_setObject_forKey_(v14, v15, v17, *MEMORY[0x1E69A7240]);
  messageSummaryInfo = self->_messageSummaryInfo;
  self->_messageSummaryInfo = v14;
}

- (void)addRetractedPartIndex:(int64_t)index
{
  v13 = objc_msgSend_retractedPartIndexes(self, a2, index);
  v7 = objc_msgSend_mutableCopy(v13, v5, v6);
  objc_msgSend_addIndex_(v7, v8, index);
  v11 = objc_msgSend_copy(v7, v9, v10);
  objc_msgSend_setRetractedPartIndexes_(self, v12, v11);
}

- (BOOL)hasEditedParts
{
  v3 = objc_msgSend_dateEdited(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isDeviceActionMessage
{
  v3 = objc_msgSend_messageSummaryInfo(self, a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, *MEMORY[0x1E69A7230]);
  v8 = objc_msgSend_BOOLValue(v5, v6, v7);

  return v8;
}

- (void)setAssociatedBalloonBundleID:(id)d
{
  p_associatedBalloonBundleID = &self->_associatedBalloonBundleID;
  dCopy = d;
  if ((objc_msgSend_isEqualToString_(*p_associatedBalloonBundleID, v6, dCopy) & 1) == 0)
  {
    objc_storeStrong(&self->_associatedBalloonBundleID, d);
    Mutable = objc_msgSend_mutableCopy(self->_messageSummaryInfo, v7, v8);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    if (*p_associatedBalloonBundleID)
    {
      objc_msgSend_setObject_forKey_(Mutable, v9, *p_associatedBalloonBundleID, *MEMORY[0x1E69A7208]);
    }

    messageSummaryInfo = self->_messageSummaryInfo;
    self->_messageSummaryInfo = Mutable;
  }
}

- (void)setSourceApplicationID:(id)d
{
  dCopy = d;
  if ((objc_msgSend_isEqualToString_(self->_sourceApplicationID, v5, dCopy) & 1) == 0)
  {
    objc_storeStrong(&self->_sourceApplicationID, d);
    Mutable = objc_msgSend_mutableCopy(self->_messageSummaryInfo, v6, v7);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    sourceApplicationID = self->_sourceApplicationID;
    if (sourceApplicationID)
    {
      objc_msgSend_setObject_forKey_(Mutable, v8, sourceApplicationID, *MEMORY[0x1E69A7250]);
    }

    messageSummaryInfo = self->_messageSummaryInfo;
    self->_messageSummaryInfo = Mutable;
  }
}

- (BOOL)isReply
{
  v3 = objc_msgSend_threadIdentifier(self, a2, v2);
  v6 = objc_msgSend_length(v3, v4, v5) != 0;

  return v6;
}

- (id)_account
{
  v4 = objc_msgSend_subject(self, a2, v2);
  v7 = objc_msgSend_account(v4, v5, v6);

  if (!v7)
  {
    v10 = objc_msgSend_sender(self, v8, v9);
    v7 = objc_msgSend_account(v10, v11, v12);
  }

  return v7;
}

- (IMMessageItem)_imMessageItem
{
  v4 = objc_msgSend__account(self, a2, v2);
  v7 = objc_msgSend_text(self, v5, v6);
  v10 = objc_msgSend___im_attributedStringByAssigningMessagePartNumbers(v7, v8, v9);

  v330 = v10;
  v313 = objc_msgSend___im_countMessageParts(v10, v11, v12);
  v15 = objc_msgSend_sender(self, v13, v14);
  v18 = objc_msgSend_ID(v15, v16, v17);
  v21 = objc_msgSend_length(v18, v19, v20);

  if (v21)
  {
    v24 = MEMORY[0x1E695DF20];
    v25 = objc_msgSend_sender(self, v22, v23);
    v28 = objc_msgSend_ID(v25, v26, v27);
    v329 = objc_msgSend_dictionaryWithObject_forKey_(v24, v29, v28, *MEMORY[0x1E69A6310]);
  }

  else
  {
    v329 = MEMORY[0x1E695E0F8];
  }

  v30 = objc_msgSend_associatedMessageGUID(self, v22, v23);
  v315 = v4;
  if (v30 && (v33 = v30, objc_msgSend_associatedMessageGUID(self, v31, v32), v34 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend_length(v34, v35, v36), v34, v33, v37))
  {
    v40 = objc_msgSend_balloonBundleID(self, v38, v39);
    isEqualToString = objc_msgSend_isEqualToString_(v40, v41, *MEMORY[0x1E69A68E8]);

    if (isEqualToString)
    {
      v328 = objc_msgSend_locale(self, v43, v44);
    }

    else
    {
      v328 = 0;
    }

    v296 = objc_alloc(MEMORY[0x1E69A7EF0]);
    v307 = objc_msgSend_time(self, v131, v132);
    v323 = objc_msgSend_messageSubject(self, v133, v134);
    v324 = objc_msgSend_string(v323, v135, v136);
    v327 = objc_msgSend_fileTransferGUIDs(self, v137, v138);
    v294 = objc_msgSend_flags(self, v139, v140);
    v318 = objc_msgSend_guid(self, v141, v142);
    v292 = objc_msgSend_messageID(self, v143, v144);
    v322 = objc_msgSend_loginIMHandle(v4, v145, v146);
    v326 = objc_msgSend_ID(v322, v147, v148);
    v325 = objc_msgSend_uniqueID(v4, v149, v150);
    v316 = objc_msgSend_internalName(v4, v151, v152);
    v321 = objc_msgSend_subject(self, v153, v154);
    v317 = objc_msgSend_ID(v321, v155, v156);
    v320 = objc_msgSend_subject(self, v157, v158);
    v304 = objc_msgSend_originalID(v320, v159, v160);
    v319 = objc_msgSend_subject(self, v161, v162);
    v302 = objc_msgSend_countryCode(v319, v163, v164);
    v300 = objc_msgSend_balloonBundleID(self, v165, v166);
    v298 = objc_msgSend_payloadData(self, v167, v168);
    v171 = objc_msgSend_expressiveSendStyleID(self, v169, v170);
    v174 = objc_msgSend_timeExpressiveSendPlayed(self, v172, v173);
    v312 = objc_msgSend_error(self, v175, v176);
    v290 = objc_msgSend_code(v312, v177, v178);
    v181 = objc_msgSend_associatedMessageGUID(self, v179, v180);
    v288 = objc_msgSend_associatedMessageType(self, v182, v183);
    v186 = objc_msgSend_associatedMessageRange(self, v184, v185);
    v286 = v187;
    v287 = v186;
    v189 = objc_msgSend_associatedMessageEmoji(self, v187, v188);
    v192 = objc_msgSend_biaReferenceID(self, v190, v191);
    v195 = objc_msgSend_messageSummaryInfo(self, v193, v194);
    v198 = objc_msgSend_threadIdentifier(self, v196, v197);
    v201 = objc_msgSend_dateRecovered(self, v199, v200);
    v204 = objc_msgSend_scheduleType(self, v202, v203);
    v207 = objc_msgSend_scheduleState(self, v205, v206);
    v283 = v313;
    v305 = v201;
    v285 = v201;
    v308 = v198;
    v284 = v198;
    v309 = v195;
    v282 = v195;
    v314 = v192;
    v281 = v192;
    v310 = v189;
    v277 = v189;
    v130 = v307;
    v121 = v181;
    v272 = v181;
    v122 = v174;
    v268 = v171;
    v269 = v174;
    v123 = v171;
    v124 = v298;
    v126 = v300;
    v125 = v302;
    v127 = v304;
    timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = objc_msgSend_initWithSenderInfo_time_timeRead_timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID_(v296, v208, v329, v307, 0, 0, 0, v324, v330, 0, 0, v327, v294, v318, v292, v326, v325, v316, v317, 0, v304, v302, 0, v300, v298, v268, v269, v290, v272, v288, v287, v286, v277, 0, v328, v281, v282, v283, v284, v285, v204, v207, 0);
  }

  else
  {
    v295 = objc_alloc(MEMORY[0x1E69A8138]);
    v328 = objc_msgSend_time(self, v45, v46);
    v306 = objc_msgSend_messageSubject(self, v47, v48);
    v323 = objc_msgSend_string(v306, v49, v50);
    v324 = objc_msgSend_fileTransferGUIDs(self, v51, v52);
    v293 = objc_msgSend_flags(self, v53, v54);
    v327 = objc_msgSend_guid(self, v55, v56);
    v291 = objc_msgSend_messageID(self, v57, v58);
    v318 = objc_msgSend_loginIMHandle(v4, v59, v60);
    v322 = objc_msgSend_ID(v318, v61, v62);
    v326 = objc_msgSend_uniqueID(v4, v63, v64);
    v325 = objc_msgSend_internalName(v4, v65, v66);
    v316 = objc_msgSend_subject(self, v67, v68);
    v321 = objc_msgSend_ID(v316, v69, v70);
    v317 = objc_msgSend_subject(self, v71, v72);
    v320 = objc_msgSend_originalID(v317, v73, v74);
    v303 = objc_msgSend_subject(self, v75, v76);
    v319 = objc_msgSend_countryCode(v303, v77, v78);
    v301 = objc_msgSend_balloonBundleID(self, v79, v80);
    v299 = objc_msgSend_payloadData(self, v81, v82);
    v297 = objc_msgSend_expressiveSendStyleID(self, v83, v84);
    v289 = objc_msgSend_timeExpressiveSendPlayed(self, v85, v86);
    v89 = objc_msgSend_bizIntent(self, v87, v88);
    v92 = objc_msgSend_locale(self, v90, v91);
    v95 = objc_msgSend_biaReferenceID(self, v93, v94);
    v310 = objc_msgSend_error(self, v96, v97);
    v311 = objc_msgSend_code(v310, v98, v99);
    v102 = objc_msgSend_threadIdentifier(self, v100, v101);
    v105 = objc_msgSend_syndicationRanges(self, v103, v104);
    v108 = objc_msgSend_syncedSyndicationRanges(self, v106, v107);
    v111 = objc_msgSend_dateEdited(self, v109, v110);
    v114 = objc_msgSend_dateRecovered(self, v112, v113);
    v117 = objc_msgSend_scheduleType(self, v115, v116);
    v120 = objc_msgSend_scheduleState(self, v118, v119);
    v305 = v111;
    v280 = v111;
    v279 = v313;
    v308 = v108;
    v278 = v108;
    v309 = v105;
    v276 = v105;
    v314 = v102;
    v275 = v102;
    v274 = v311;
    v121 = v95;
    v273 = v95;
    v312 = v92;
    v270 = v89;
    v271 = v92;
    v122 = v89;
    v123 = v289;
    v124 = v297;
    v125 = v301;
    v126 = v299;
    v127 = v303;
    timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = objc_msgSend_initWithSenderInfo_time_timeRead_timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_bizIntent_locale_biaReferenceID_errorType_threadIdentifier_syndicationRanges_syncedSyndicationRanges_partCount_dateEdited_dateRecovered_scheduleType_scheduleState_cloudKitChatID_(v295, v128, v329, v328, 0, 0, 0, v323, v330, 0, 0, v324, v293, v327, v291, v322, v326, v325, v321, 0, v320, v319, 0, v301, v299, v297, v289, v270, v271, v273, v274, v275, v276, v278, v279, v280, v114, v117, v120, 0);

    v130 = v306;
  }

  if (objc_msgSend_isReply(self, v209, v210))
  {
    v213 = objc_msgSend_threadOriginator(self, v211, v212);
    v216 = objc_msgSend__imMessageItem(v213, v214, v215);
    objc_msgSend_setThreadOriginator_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v217, v216);
  }

  v218 = objc_msgSend_replyCountsByPart(self, v211, v212);
  objc_msgSend_setReplyCountsByPart_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v219, v218);

  v222 = objc_msgSend_sender(self, v220, v221);
  v225 = objc_msgSend_subject(self, v223, v224);
  objc_msgSend__updateContextWithSenderHandle_otherHandle_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v226, v222, v225);

  isInvitationMessage = objc_msgSend_isInvitationMessage(self, v227, v228);
  objc_msgSend__setInvitation_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v230, isInvitationMessage);
  v233 = objc_msgSend_useStandalone(self, v231, v232);
  objc_msgSend_setUseStandalone_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v234, v233);
  shouldNotifyOnSend = objc_msgSend_shouldNotifyOnSend(self, v235, v236);
  objc_msgSend_setShouldNotifyOnSend_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v238, shouldNotifyOnSend);
  v241 = objc_msgSend_sentViaRemoteIntent(self, v239, v240);
  objc_msgSend_setSentViaRemoteIntent_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v242, v241);
  v245 = objc_msgSend_messageSummaryInfo(self, v243, v244);
  objc_msgSend_setMessageSummaryInfo_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v246, v245);

  v249 = objc_msgSend_sortID(self, v247, v248);
  objc_msgSend_setSortID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v250, v249);
  v253 = objc_msgSend_groupActivity(self, v251, v252);
  objc_msgSend_setGroupActivity_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v254, v253);

  v257 = objc_msgSend_collaborationInitiationRequestInfo(self, v255, v256);
  objc_msgSend_setCollaborationInitiationRequestInfo_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v258, v257);

  v261 = objc_msgSend_telemetryMetrics(self, v259, v260);
  objc_msgSend_setTelemetryMetrics_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v262, v261);

  v265 = objc_msgSend_telemetryMetricsReasonCode(self, v263, v264);
  objc_msgSend_setTelemetryMetricsReasonCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v266, v265);

  return timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID;
}

+ (id)messageFromIMMessageItem:(id)item sender:(id)sender subject:(id)subject
{
  itemCopy = item;
  subjectCopy = subject;
  senderCopy = sender;
  v10 = objc_msgSend_messageClass(IMChatRegistry, v8, v9);
  v13 = objc_msgSend_errorCode(itemCopy, v11, v12);
  if (v13)
  {
    v148 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v14, @"__kIMMessageErrorDomain", v13, 0);
  }

  else
  {
    v148 = 0;
  }

  v16 = objc_msgSend_subject(itemCopy, v14, v15);
  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x1E696AAB0]);
    v20 = objc_msgSend_subject(itemCopy, v18, v19);
    v147 = objc_msgSend_initWithString_(v17, v21, v20);
  }

  else
  {
    v147 = 0;
  }

  v137 = [v10 alloc];
  v146 = objc_msgSend_time(itemCopy, v22, v23);
  v145 = objc_msgSend_timeRead(itemCopy, v24, v25);
  v142 = objc_msgSend_timeDelivered(itemCopy, v26, v27);
  v136 = objc_msgSend_timePlayed(itemCopy, v28, v29);
  v135 = objc_msgSend_plainBody(itemCopy, v30, v31);
  v144 = objc_msgSend_body(itemCopy, v32, v33);
  v143 = objc_msgSend_fileTransferGUIDs(itemCopy, v34, v35);
  v134 = objc_msgSend_flags(itemCopy, v36, v37);
  v141 = objc_msgSend_guid(itemCopy, v38, v39);
  v133 = objc_msgSend_messageID(itemCopy, v40, v41);
  v140 = objc_msgSend_balloonBundleID(itemCopy, v42, v43);
  v132 = objc_msgSend_payloadData(itemCopy, v44, v45);
  v131 = objc_msgSend_expressiveSendStyleID(itemCopy, v46, v47);
  v130 = objc_msgSend_timeExpressiveSendPlayed(itemCopy, v48, v49);
  v128 = objc_msgSend_associatedMessageGUID(itemCopy, v50, v51);
  v129 = objc_msgSend_associatedMessageType(itemCopy, v52, v53);
  v56 = objc_msgSend_associatedMessageRange(itemCopy, v54, v55);
  v124 = v57;
  v125 = v56;
  v127 = objc_msgSend_associatedMessageEmoji(itemCopy, v57, v58);
  v126 = objc_msgSend_messageSummaryInfo(itemCopy, v59, v60);
  v63 = objc_msgSend_threadIdentifier(itemCopy, v61, v62);
  v66 = objc_msgSend_dateEdited(itemCopy, v64, v65);
  v69 = objc_msgSend_dateRecovered(itemCopy, v67, v68);
  v72 = objc_msgSend_scheduleType(itemCopy, v70, v71);
  v75 = objc_msgSend_scheduleState(itemCopy, v73, v74);
  timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState = objc_msgSend__initWithSender_time_timeRead_timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState_(v137, v76, senderCopy, v146, v145, v142, v136, v135, v144, v147, v143, v134, v148, v141, v133, subjectCopy, v140, v132, v131, v130, v128, v129, v125, v124, v127, v126, v63, v66, v69, v72, v75);

  v80 = objc_msgSend_sortID(itemCopy, v78, v79);
  objc_msgSend_setSortID_(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v81, v80);
  v84 = objc_msgSend_account(itemCopy, v82, v83);
  v85 = _IMBestAccountForIMItem(itemCopy, 0, v84, 0, 0);

  v88 = objc_msgSend_threadOriginator(itemCopy, v86, v87);
  IMMessageFromIMItem = _CreateIMMessageFromIMItem(v88, v85, 1);

  objc_msgSend_setThreadOriginator_(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v90, IMMessageFromIMItem);
  v93 = objc_msgSend_replyCountsByPart(itemCopy, v91, v92);
  objc_msgSend_setReplyCountsByPart_(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v94, v93);

  v97 = objc_msgSend_flags(itemCopy, v95, v96);
  if (objc_msgSend_isEmote(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v98, v99))
  {
    v97 |= 2uLL;
  }

  if (objc_msgSend_isEmpty(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v100, v101))
  {
    v97 |= 8uLL;
  }

  if (objc_msgSend_hasMention(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v102, v103))
  {
    v97 |= 0x20000000uLL;
  }

  if (objc_msgSend_isAddressedToMe(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v104, v105))
  {
    objc_msgSend__updateFlags_(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v106, v97 | 0x800);
  }

  else
  {
    objc_msgSend__updateFlags_(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v106, v97);
  }

  v109 = objc_msgSend_syndicationRanges(itemCopy, v107, v108);
  objc_msgSend__syndicationRanges_(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v110, v109);

  v113 = objc_msgSend_syncedSyndicationRanges(itemCopy, v111, v112);
  objc_msgSend__syncedSyndicationRanges_(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v114, v113);

  v117 = objc_msgSend_telemetryMetrics(itemCopy, v115, v116);
  objc_msgSend_setTelemetryMetrics_(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v118, v117);

  v121 = objc_msgSend_telemetryMetricsReasonCode(itemCopy, v119, v120);
  objc_msgSend_setTelemetryMetricsReasonCode_(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v122, v121);

  return timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState;
}

+ (id)messageFromIMMessageItemDictionary:(id)dictionary body:(id)body sender:(id)sender subject:(id)subject
{
  dictionaryCopy = dictionary;
  bodyCopy = body;
  senderCopy = sender;
  subjectCopy = subject;
  v157 = objc_msgSend_messageClass(IMChatRegistry, v12, v13);
  v15 = objc_msgSend_objectForKey_(dictionaryCopy, v14, @"flags");
  v150 = objc_msgSend_unsignedLongLongValue(v15, v16, v17);

  v19 = objc_msgSend_objectForKey_(dictionaryCopy, v18, @"error");
  v22 = objc_msgSend_unsignedIntValue(v19, v20, v21);

  if (v22)
  {
    v172 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v23, @"__kIMMessageErrorDomain", v22, 0);
  }

  else
  {
    v172 = 0;
  }

  v24 = objc_msgSend_objectForKey_(dictionaryCopy, v23, @"subject");
  v175 = objc_msgSend_objectForKey_(dictionaryCopy, v25, @"plainBody");
  v27 = objc_msgSend_objectForKey_(dictionaryCopy, v26, @"bodyData");
  v171 = objc_msgSend_objectForKey_(dictionaryCopy, v28, @"balloonBundleID");
  v170 = objc_msgSend_objectForKey_(dictionaryCopy, v29, @"payloadData");
  v169 = objc_msgSend_objectForKey_(dictionaryCopy, v30, @"expressiveSendStyleID");
  v168 = objc_msgSend_objectForKey_(dictionaryCopy, v31, @"associatedMessageGUID");
  if (v24)
  {
    v34 = objc_alloc(MEMORY[0x1E696AAB0]);
    v167 = objc_msgSend_initWithString_(v34, v35, v24);
  }

  else
  {
    v167 = 0;
  }

  v152 = v24;
  if (!bodyCopy)
  {
    if (objc_msgSend_length(v175, v32, v33))
    {
      v39 = objc_alloc(MEMORY[0x1E696AAB0]);
      if (qword_1EB2EA390 != -1)
      {
        sub_1A84E1A88();
      }

      bodyCopy = objc_msgSend_initWithString_attributes_(v39, v38, v175, qword_1EB2EA388);
    }

    else if (objc_msgSend_length(v27, v36, v37))
    {
      v40 = objc_autoreleasePoolPush();
      bodyCopy = JWDecodeCodableObjectWithStandardAllowlist();
      objc_autoreleasePoolPop(v40);
    }

    else
    {
      bodyCopy = 0;
    }
  }

  v151 = v27;
  v41 = objc_msgSend_objectForKey_(dictionaryCopy, v32, @"time");
  v43 = objc_msgSend_objectForKey_(dictionaryCopy, v42, @"timeDelivered");
  v45 = objc_msgSend_objectForKey_(dictionaryCopy, v44, @"timeRead");
  v47 = objc_msgSend_objectForKey_(dictionaryCopy, v46, @"timePlayed");
  v49 = objc_msgSend_objectForKey_(dictionaryCopy, v48, @"timeExpressiveSendPlayed");
  v51 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v50, @"associatedMessageRangeLocation");
  v144 = objc_msgSend_integerValue(v51, v52, v53);

  v55 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v54, @"associatedMessageRangeLength");
  v143 = objc_msgSend_integerValue(v55, v56, v57);

  v166 = objc_msgSend_objectForKey_(dictionaryCopy, v58, @"associatedMessageEmoji");
  v165 = objc_msgSend_objectForKey_(dictionaryCopy, v59, @"threadIdentifier");
  v164 = objc_msgSend_objectForKey_(dictionaryCopy, v60, @"dateEdited");
  v163 = objc_msgSend_objectForKey_(dictionaryCopy, v61, @"scheduleType");
  v162 = objc_msgSend_objectForKey_(dictionaryCopy, v62, @"scheduleState");
  if (v49)
  {
    v65 = MEMORY[0x1E695DF00];
    objc_msgSend_doubleValue(v49, v63, v64);
    v161 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v65, v66, v67);
  }

  else
  {
    v161 = 0;
  }

  if (v164)
  {
    v68 = MEMORY[0x1E695DF00];
    objc_msgSend_doubleValue(v164, v63, v64);
    v160 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v68, v69, v70);
  }

  else
  {
    v160 = 0;
  }

  v71 = objc_msgSend_objectForKey_(dictionaryCopy, v63, @"dateRecovered");
  v145 = v71;
  if (v71)
  {
    v74 = MEMORY[0x1E695DF00];
    objc_msgSend_doubleValue(v71, v72, v73);
    v159 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v74, v75, v76);
  }

  else
  {
    v159 = 0;
  }

  v142 = [v157 alloc];
  if (v41)
  {
    v79 = MEMORY[0x1E695DF00];
    objc_msgSend_doubleValue(v41, v77, v78);
    v158 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v79, v80, v81);
    if (v45)
    {
      goto LABEL_26;
    }

LABEL_29:
    v156 = 0;
    if (v43)
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  v158 = 0;
  if (!v45)
  {
    goto LABEL_29;
  }

LABEL_26:
  v82 = MEMORY[0x1E695DF00];
  objc_msgSend_doubleValue(v45, v77, v78);
  v156 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v82, v83, v84);
  if (v43)
  {
LABEL_27:
    v85 = MEMORY[0x1E695DF00];
    objc_msgSend_doubleValue(v43, v77, v78);
    v155 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v85, v86, v87);
    goto LABEL_31;
  }

LABEL_30:
  v155 = 0;
LABEL_31:
  v148 = v43;
  v153 = senderCopy;
  v173 = bodyCopy;
  v149 = v41;
  v146 = v49;
  v147 = v45;
  if (v47)
  {
    v88 = MEMORY[0x1E695DF00];
    objc_msgSend_doubleValue(v47, v77, v78);
    v154 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v88, v89, v90);
  }

  else
  {
    v154 = 0;
  }

  v91 = objc_msgSend_objectForKey_(dictionaryCopy, v77, @"fileTransferGUIDs");
  v93 = objc_msgSend_objectForKey_(dictionaryCopy, v92, @"guid");
  v95 = objc_msgSend_objectForKey_(dictionaryCopy, v94, @"messageID");
  v98 = objc_msgSend_longLongValue(v95, v96, v97);
  v100 = objc_msgSend_objectForKey_(dictionaryCopy, v99, @"associatedMessageType");
  v103 = objc_msgSend_longLongValue(v100, v101, v102);
  v105 = objc_msgSend_objectForKey_(dictionaryCopy, v104, @"messageSummaryInfo");
  v108 = objc_msgSend_unsignedIntegerValue(v163, v106, v107);
  v111 = objc_msgSend_unsignedIntegerValue(v162, v109, v110);
  timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState = objc_msgSend__initWithSender_time_timeRead_timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState_(v142, v112, v153, v158, v156, v155, v154, v175, v173, v167, v91, v150, v172, v93, v98, subjectCopy, v171, v170, v169, v161, v168, v103, v144, v143, v166, v105, v165, v160, v159, v108, v111);

  if (v47)
  {
  }

  if (v148)
  {
  }

  if (v147)
  {
  }

  if (v149)
  {
  }

  if (objc_msgSend_isEmote(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v114, v115))
  {
    v118 = v150 | 2;
  }

  else
  {
    v118 = v150;
  }

  if (objc_msgSend_isEmpty(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v116, v117))
  {
    v118 |= 8uLL;
  }

  if (objc_msgSend_hasMention(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v119, v120))
  {
    v118 |= 0x20000000uLL;
  }

  if (objc_msgSend_isAddressedToMe(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v121, v122))
  {
    objc_msgSend__updateFlags_(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v123, v118 | 0x800);
  }

  else
  {
    objc_msgSend__updateFlags_(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v123, v118);
  }

  v125 = objc_msgSend_objectForKey_(dictionaryCopy, v124, @"threadOriginator");
  v127 = objc_msgSend_messageFromIMMessageItemDictionary_body_sender_subject_(IMMessage, v126, v125, 0, 0, 0);
  objc_msgSend_setThreadOriginator_(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v128, v127);
  v130 = objc_msgSend_objectForKey_(dictionaryCopy, v129, @"syndicationRanges");
  objc_msgSend__syndicationRanges_(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v131, v130);

  v133 = objc_msgSend_objectForKey_(dictionaryCopy, v132, @"syncedSyndicationRanges");
  objc_msgSend__syncedSyndicationRanges_(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v134, v133);

  v136 = objc_msgSend_objectForKey_(dictionaryCopy, v135, @"telemetryMetrics");
  objc_msgSend_setTelemetryMetrics_(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v137, v136);

  v139 = objc_msgSend_objectForKey_(dictionaryCopy, v138, @"telemetryMetricsReasonCode");
  objc_msgSend_setTelemetryMetricsReasonCode_(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v140, v139);

  return timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState;
}

- (id)messagesBySeparatingRichLinks
{
  v127[1] = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Separate rich links", buf, 2u);
    }
  }

  selfCopy = self;
  v7 = objc_msgSend_payloadData(selfCopy, v5, v6);
  v10 = objc_msgSend_length(v7, v8, v9) != 0;

  v13 = objc_msgSend_fileTransferGUIDs(selfCopy, v11, v12);
  v16 = objc_msgSend_count(v13, v14, v15) != 0;

  if (v10 && v16)
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v23 = objc_msgSend_payloadData(selfCopy, v21, v22);
        v26 = objc_msgSend_length(v23, v24, v25);
        v29 = objc_msgSend_fileTransferGUIDs(selfCopy, v27, v28);
        v32 = objc_msgSend_count(v29, v30, v31);
        *buf = 134218240;
        *&buf[4] = v26;
        *&buf[12] = 2048;
        *&buf[14] = v32;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Not splitting message, payloadData.length: %lu, transfers.count: %lu", buf, 0x16u);
      }
    }

    v127[0] = selfCopy;
    v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, v127, 1);
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v124 = sub_1A8259BE0;
    v125 = sub_1A825AF1C;
    v126 = 0;
    v121[0] = 0;
    v121[1] = v121;
    v121[2] = 0x3032000000;
    v121[3] = sub_1A8259BE0;
    v121[4] = sub_1A825AF1C;
    v122 = objc_msgSend_guid(selfCopy, v17, v18);
    v117 = 0;
    v118 = &v117;
    v119 = 0x2020000000;
    v120 = 0;
    v115[0] = 0;
    v115[1] = v115;
    v115[2] = 0x2020000000;
    v116 = 1;
    v109 = 0;
    v110 = &v109;
    v111 = 0x3032000000;
    v112 = sub_1A8259BE0;
    v113 = sub_1A825AF1C;
    v114 = objc_msgSend_text(selfCopy, v34, v35);
    v107[0] = 0;
    v107[1] = v107;
    v107[2] = 0x3032000000;
    v107[3] = sub_1A8259BE0;
    v107[4] = sub_1A825AF1C;
    v108 = objc_msgSend_text(selfCopy, v36, v37);
    v38 = sub_1A8399EB0(v110[5]);
    v39 = v110[5];
    v110[5] = v38;

    v40 = v110[5];
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = sub_1A8348904;
    v99[3] = &unk_1E7812E70;
    v101 = &v109;
    v102 = v107;
    v103 = v121;
    v41 = selfCopy;
    v100 = v41;
    v104 = v115;
    v105 = &v117;
    v106 = buf;
    IMRichLinkUtilitiesEnumerateRichLinksInAttributedString(v40, 1, v99);
    if (*(v118 + 24) == 1)
    {
      v97 = [IMMessage alloc];
      v98 = objc_msgSend_sender(v41, v42, v43);
      v46 = objc_msgSend_time(v41, v44, v45);
      v49 = objc_msgSend_messageSubject(v41, v47, v48);
      v52 = objc_msgSend_flags(v41, v50, v51);
      v55 = objc_msgSend_guid(v41, v53, v54);
      v58 = objc_msgSend_subject(v41, v56, v57);
      v61 = objc_msgSend_expressiveSendStyleID(v41, v59, v60);
      v64 = objc_msgSend_threadIdentifier(v41, v62, v63);
      v67 = objc_msgSend_scheduleType(v41, v65, v66);
      v70 = objc_msgSend_scheduleState(v41, v68, v69);
      v72 = objc_msgSend_initWithSender_time_text_messageSubject_fileTransferGUIDs_flags_error_guid_subject_balloonBundleID_payloadData_expressiveSendStyleID_threadIdentifier_scheduleType_scheduleState_(v97, v71, v98, v46, v49, 0, 0, v52, 0, v55, v58, 0, 0, v61, v64, v67, v70);

      v75 = objc_msgSend_associatedBalloonBundleID(v41, v73, v74);
      objc_msgSend_setAssociatedBalloonBundleID_(v72, v76, v75);

      v79 = objc_msgSend_sourceApplicationID(v41, v77, v78);
      objc_msgSend_setSourceApplicationID_(v72, v80, v79);

      v83 = objc_msgSend_collaborationInitiationRequestInfo(v41, v81, v82);
      objc_msgSend_setCollaborationInitiationRequestInfo_(v72, v84, v83);

      v87 = objc_msgSend_messageSummaryInfo(v41, v85, v86);
      objc_msgSend__messageSummaryInfo_(v72, v88, v87);

      if (objc_msgSend_isReply(v72, v89, v90))
      {
        v93 = objc_msgSend_threadOriginator(v41, v91, v92);
        objc_msgSend_setThreadOriginator_(v72, v94, v93);
      }

      objc_msgSend_insertObject_atIndex_(*(*&buf[8] + 40), v91, v72, 0);
    }

    v33 = *(*&buf[8] + 40);

    _Block_object_dispose(v107, 8);
    _Block_object_dispose(&v109, 8);

    _Block_object_dispose(v115, 8);
    _Block_object_dispose(&v117, 8);
    _Block_object_dispose(v121, 8);

    _Block_object_dispose(buf, 8);
  }

  v95 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)messagesSeparatedByByteLength:(int64_t)length
{
  v61 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      lengthCopy = length;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Separating message by byte length: %ld", buf, 0xCu);
    }
  }

  v7 = objc_msgSend_text(self, v4, v5);
  v48 = objc_msgSend_string(v7, v8, v9);

  v11 = objc_msgSend___im_separateStringByByteLength_(v48, v10, length);
  v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v11;
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v54, v58, 16);
  if (v52)
  {
    v51 = *v55;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v55 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v54 + 1) + 8 * i);
        v17 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v13, v14);
        v19 = objc_msgSend_stringByTrimmingCharactersInSet_(v16, v18, v17);

        if (objc_msgSend_length(v19, v20, v21))
        {
          v22 = objc_alloc(MEMORY[0x1E696AAB0]);
          v24 = objc_msgSend_initWithString_(v22, v23, v16);
          v27 = objc_msgSend___im_attributedStringByAssigningMessagePartNumbers(v24, v25, v26);
          v28 = [IMMessage alloc];
          v31 = objc_msgSend_sender(self, v29, v30);
          v34 = objc_msgSend_time(self, v32, v33);
          v37 = objc_msgSend_flags(self, v35, v36);
          v38 = StringGUID();
          v41 = objc_msgSend_subject(self, v39, v40);
          v43 = objc_msgSend_initWithSender_time_text_messageSubject_fileTransferGUIDs_flags_error_guid_subject_balloonBundleID_payloadData_expressiveSendStyleID_threadIdentifier_(v28, v42, v31, v34, v27, 0, 0, v37, 0, v38, v41, 0, 0, 0, 0);

          objc_msgSend_addObject_(v50, v44, v43);
        }

        else if (IMOSLoggingEnabled())
        {
          v45 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v45, OS_LOG_TYPE_INFO, "Dropping empty message", buf, 2u);
          }
        }
      }

      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v54, v58, 16);
    }

    while (v52);
  }

  v46 = *MEMORY[0x1E69E9840];

  return v50;
}

- (NSArray)messageParts
{
  v6 = objc_msgSend_text(self, a2, v2);
  if (!v6)
  {
    if (objc_msgSend_length(self->_plainBody, v4, v5))
    {
      v7 = objc_alloc(MEMORY[0x1E696AAB0]);
      v6 = objc_msgSend_initWithString_(v7, v8, self->_plainBody);
    }

    else
    {
      v6 = 0;
    }
  }

  v9 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A8349848;
  v16[3] = &unk_1E7812E98;
  v17 = v9;
  v10 = v9;
  objc_msgSend___im_visitMessageParts_(v6, v11, v16);
  v14 = objc_msgSend_copy(v10, v12, v13);

  return v14;
}

- (id)messagePartMatchingPartIndex:(int64_t)index
{
  v7 = objc_msgSend_text(self, a2, index);
  if (!v7)
  {
    if (objc_msgSend_length(self->_plainBody, v5, v6))
    {
      v8 = objc_alloc(MEMORY[0x1E696AAB0]);
      v7 = objc_msgSend_initWithString_(v8, v9, self->_plainBody);
      objc_msgSend___im_messagePartMatchingPartIndex_(v7, v10, index);
      goto LABEL_6;
    }

    v7 = 0;
  }

  objc_msgSend___im_messagePartMatchingPartIndex_(v7, v5, index);
  v11 = LABEL_6:;

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v21 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      flags = self->_flags;
      if (flags != objc_msgSend_flags(v6, v8, v9) || (messageID = self->_messageID, messageID != objc_msgSend_messageID(v6, v10, v11)))
      {
        v21 = 0;
LABEL_92:

        goto LABEL_93;
      }

      guid = self->_guid;
      v18 = objc_msgSend_guid(v6, v13, v14);
      if (guid != v18)
      {
        v19 = self->_guid;
        v3 = objc_msgSend_guid(v6, v16, v17);
        if (!objc_msgSend_isEqualToString_(v19, v20, v3))
        {
          v21 = 0;
          goto LABEL_90;
        }
      }

      sender = self->_sender;
      v25 = objc_msgSend_sender(v6, v16, v17);
      if (sender != v25)
      {
        v21 = 0;
LABEL_13:

        goto LABEL_89;
      }

      subject = self->_subject;
      v27 = objc_msgSend_subject(v6, v23, v24);
      if (subject != v27)
      {

LABEL_88:
        v21 = 0;
LABEL_89:
        if (guid == v18)
        {
LABEL_91:

          goto LABEL_92;
        }

LABEL_90:

        goto LABEL_91;
      }

      v114 = v27;
      time = self->_time;
      v31 = objc_msgSend_time(v6, v28, v29);
      v34 = v31;
      v113 = time;
      if (time == v31)
      {
        v112 = v31;
      }

      else
      {
        v35 = self->_time;
        v36 = objc_msgSend_time(v6, v32, v33);
        if ((objc_msgSend_isEqualToDate_(v35, v37, v36) & 1) == 0)
        {

          goto LABEL_87;
        }

        v108 = v36;
        v112 = v34;
      }

      timeRead = self->_timeRead;
      objc_msgSend_timeRead(v6, v32, v33);
      v111 = v110 = timeRead;
      if (timeRead != v111)
      {
        v41 = self->_timeRead;
        v42 = objc_msgSend_timeRead(v6, v39, v40);
        v43 = v41;
        timeRead = v42;
        if ((objc_msgSend_isEqualToDate_(v43, v44, v42) & 1) == 0)
        {

          v45 = v112;
          v46 = v108;
          if (v113 == v112)
          {
LABEL_24:

LABEL_87:
            goto LABEL_88;
          }

LABEL_23:

          goto LABEL_24;
        }
      }

      v107 = timeRead;
      timeDelivered = self->_timeDelivered;
      v109 = objc_msgSend_timeDelivered(v6, v39, v40);
      if (timeDelivered != v109)
      {
        v50 = self->_timeDelivered;
        v51 = objc_msgSend_timeDelivered(v6, v48, v49);
        v52 = v50;
        timeRead = v51;
        if ((objc_msgSend_isEqualToDate_(v52, v53, v51) & 1) == 0)
        {

          v45 = v112;
          v46 = v108;
          if (v110 != v111)
          {
          }

          if (v113 == v112)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }
      }

      timePlayed = self->_timePlayed;
      objc_msgSend_timePlayed(v6, v48, v49);
      v106 = v105 = timePlayed;
      if (timePlayed != v106)
      {
        v57 = timeRead;
        v58 = self->_timePlayed;
        v59 = objc_msgSend_timePlayed(v6, v55, v56);
        v60 = v58;
        v61 = v59;
        if ((objc_msgSend_isEqualToDate_(v60, v62, v59) & 1) == 0)
        {

          v69 = v108;
          v68 = v112;
          if (timeDelivered == v109)
          {
          }

          else
          {

            v69 = v108;
          }

          if (v110 != v111)
          {
          }

          if (v113 != v112)
          {
          }

          goto LABEL_86;
        }

        v97 = v61;
        timeRead = v57;
      }

      v103 = timeDelivered;
      text = self->_text;
      v104 = objc_msgSend_text(v6, v55, v56);
      v100 = timeRead;
      v101 = text;
      if (text != v104)
      {
        v66 = self->_text;
        timeDelivered = objc_msgSend_text(v6, v64, v65);
        if ((objc_msgSend_isEqualToAttributedString_(v66, v67, timeDelivered) & 1) == 0)
        {

          v68 = v112;
          if (v105 != v106)
          {
          }

          if (v103 != v109)
          {
          }

          if (v110 != v111)
          {
          }

          if (v113 != v112)
          {
          }

LABEL_86:

          goto LABEL_87;
        }
      }

      messageSubject = self->_messageSubject;
      v102 = objc_msgSend_messageSubject(v6, v64, v65);
      v98 = timeDelivered;
      v99 = messageSubject;
      if (messageSubject == v102 || (v73 = self->_messageSubject, objc_msgSend_messageSubject(v6, v71, v72), v96 = objc_claimAutoreleasedReturnValue(), objc_msgSend_isEqualToAttributedString_(v73, v74, v96)))
      {
        fileTransferGUIDs = self->_fileTransferGUIDs;
        v81 = objc_msgSend_fileTransferGUIDs(v6, v71, v72);
        v95 = fileTransferGUIDs;
        if (fileTransferGUIDs == v81 || (v82 = self->_fileTransferGUIDs, objc_msgSend_fileTransferGUIDs(v6, v79, v80), v94 = objc_claimAutoreleasedReturnValue(), objc_msgSend_isEqualToArray_(v82, v83, v94)))
        {
          v85 = objc_msgSend_code(self->_error, v79, v80);
          v88 = objc_msgSend_error(v6, v86, v87);
          v21 = v85 == objc_msgSend_code(v88, v89, v90);

          if (v95 == v81)
          {

            if (v99 != v102)
            {
            }

            if (v101 != v104)
            {
            }

            v91 = v106;
            if (v105 != v106)
            {

              v91 = v106;
            }

            v92 = v109;
            if (v103 != v109)
            {

              v92 = v109;
            }

            if (v110 != v111)
            {
            }

            if (v113 != v112)
            {
            }

            goto LABEL_63;
          }

          v84 = v81;
        }

        else
        {
          v84 = v81;
          v21 = 0;
        }

        v75 = v111;
        v76 = v103;

        v77 = v104;
        if (v99 == v102)
        {
LABEL_53:

          if (v101 != v77)
          {
          }

          if (v105 != v106)
          {
          }

          if (v76 != v109)
          {
          }

          if (v110 != v75)
          {
          }

          if (v113 != v112)
          {
          }

LABEL_63:

          goto LABEL_13;
        }
      }

      else
      {
        v21 = 0;
        v75 = v111;
        v76 = v103;
        v77 = v104;
      }

      goto LABEL_53;
    }

    v115.receiver = self;
    v115.super_class = IMMessage;
    v21 = [(IMMessage *)&v115 isEqual:equalCopy];
  }

LABEL_93:

  return v21;
}

- (id)description
{
  if (qword_1EB2E9FD8 != -1)
  {
    sub_1A84E1A9C();
  }

  v161 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v172 = NSStringFromClass(v3);
  v171 = objc_msgSend_ID(self->_sender, v4, v5);
  v170 = objc_msgSend_ID(self->_subject, v6, v7);
  v166 = objc_msgSend_account(self->_sender, v8, v9);
  v169 = objc_msgSend_uniqueID(v166, v10, v11);
  v165 = objc_msgSend_account(self->_sender, v12, v13);
  v164 = objc_msgSend_service(v165, v14, v15);
  v168 = objc_msgSend_internalName(v164, v16, v17);
  v163 = objc_msgSend__imMessageItem(self, v18, v19);
  if (objc_msgSend_encrypted(v163, v20, v21))
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  v157 = v24;
  flags = self->_flags;
  v25 = off_1EB2E9FE0;
  v160 = objc_msgSend_string(self->_messageSubject, v22, v23);
  v167 = v25();
  v26 = off_1EB2E9FE0;
  v159 = objc_msgSend_string(self->_text, v27, v28);
  v155 = v26();
  messageID = self->_messageID;
  guid = self->_guid;
  v29 = MEMORY[0x1E696AD98];
  v158 = objc_msgSend__imMessageItem(self, v30, v31);
  v34 = objc_msgSend_sortID(v158, v32, v33);
  v152 = objc_msgSend_numberWithUnsignedInteger_(v29, v35, v34);
  objc_msgSend_timeIntervalSinceReferenceDate(self->_time, v36, v37);
  v39 = v38;
  objc_msgSend_timeIntervalSinceReferenceDate(self->_timeDelivered, v40, v41);
  v43 = v42;
  objc_msgSend_timeIntervalSinceReferenceDate(self->_timeRead, v44, v45);
  v47 = v46;
  objc_msgSend_timeIntervalSinceReferenceDate(self->_timePlayed, v48, v49);
  v51 = v50;
  if (objc_msgSend_isEmpty(self, v52, v53))
  {
    v56 = @"YES";
  }

  else
  {
    v56 = @"NO";
  }

  v150 = v56;
  if (objc_msgSend_isFinished(self, v54, v55))
  {
    v59 = @"YES";
  }

  else
  {
    v59 = @"NO";
  }

  v151 = v59;
  if (objc_msgSend_isSent(self, v57, v58))
  {
    v62 = @"YES";
  }

  else
  {
    v62 = @"NO";
  }

  v149 = v62;
  if (objc_msgSend_isRead(self, v60, v61))
  {
    v65 = @"YES";
  }

  else
  {
    v65 = @"NO";
  }

  v148 = v65;
  if (objc_msgSend_isDelivered(self, v63, v64))
  {
    v68 = @"YES";
  }

  else
  {
    v68 = @"NO";
  }

  v147 = v68;
  if (objc_msgSend_isAudioMessage(self, v66, v67))
  {
    v71 = @"YES";
  }

  else
  {
    v71 = @"NO";
  }

  v146 = v71;
  if (objc_msgSend_isPlayed(self, v69, v70))
  {
    v74 = @"YES";
  }

  else
  {
    v74 = @"NO";
  }

  v144 = v74;
  if (objc_msgSend_isFromMe(self, v72, v73))
  {
    v77 = @"YES";
  }

  else
  {
    v77 = @"NO";
  }

  v142 = v77;
  if (objc_msgSend_isEmote(self, v75, v76))
  {
    v80 = @"YES";
  }

  else
  {
    v80 = @"NO";
  }

  v141 = v80;
  if (objc_msgSend_hasDataDetectorResults(self, v78, v79))
  {
    v83 = @"YES";
  }

  else
  {
    v83 = @"NO";
  }

  v138 = v83;
  if (objc_msgSend_wasDataDetected(self, v81, v82))
  {
    v86 = @"YES";
  }

  else
  {
    v86 = @"NO";
  }

  v136 = v86;
  v87 = objc_msgSend_error(self, v84, v85);
  v143 = objc_msgSend_associatedMessageGUID(self, v88, v89);
  v133 = objc_msgSend_associatedMessageType(self, v90, v91);
  v140 = objc_msgSend_associatedMessageEmoji(self, v92, v93);
  v139 = objc_msgSend_balloonBundleID(self, v94, v95);
  v137 = objc_msgSend_expressiveSendStyleID(self, v96, v97);
  v145 = objc_msgSend_timeExpressiveSendPlayed(self, v98, v99);
  objc_msgSend_timeIntervalSinceReferenceDate(v145, v100, v101);
  v103 = v102;
  v104 = *&self->_threadIdentifier;
  v134 = v104;
  v135 = *&self->_bizIntent;
  replyCountsByPart = self->_replyCountsByPart;
  v107 = objc_msgSend_componentsJoinedByString_(self->_syndicationRanges, v106, @",");
  v132 = objc_msgSend_componentsJoinedByString_(self->_syncedSyndicationRanges, v108, @",");
  objc_msgSend_timeIntervalSinceReferenceDate(self->_dateEdited, v109, v110);
  v112 = v111;
  objc_msgSend_timeIntervalSinceReferenceDate(self->_dateRecovered, v113, v114);
  v116 = v115;
  if (objc_msgSend_wasDetonated(self, v117, v118))
  {
    v120 = @"YES";
  }

  else
  {
    v120 = @"NO";
  }

  v121 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v119, self->_scheduleType);
  v123 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v122, self->_scheduleState);
  if (objc_msgSend_isPendingSatelliteSend(self, v124, v125))
  {
    v128 = @"YES";
  }

  else
  {
    v128 = @"NO";
  }

  if (objc_msgSend_isTimeSensitive(self, v126, v127))
  {
    v130 = @"YES";
  }

  else
  {
    v130 = @"NO";
  }

  v162 = objc_msgSend_stringWithFormat_(v161, v129, @"%@[from=%@ msg-subject=%@; account:%@; service=%@; encrypted=%@; flags=%x; subject='%@' text='%@' messageID: %lld GUID:'%@' sortID: %@ date:'%f' date-delivered:'%f' date-read:'%f' date-played:'%f' empty: %@ finished: %@ sent: %@ read: %@ delivered: %@ audio: %@ played: %@ from-me: %@ emote: %@ dd-results: %@ dd-scanned: %@ error: %@ associatedMessageGUID: %@ associatedMessageType: %lld associatedMessageEmoji: %@ balloonBundleID: %@ expressiveSendStyleID: %@ timeExpressiveSendStylePlayed: %f bizIntent:%@ locale:%@ threadIdentifier: %@, threadOriginator: %@, replyCountsByPart: %@, syndicationRanges: %@, syncedSyndicationRanges: %@, dateEdited:'%f', dateRecovered: '%f', wasDetonated: %@, scheduleType: %@, scheduleState: %@, pendingSatelliteSend: %@, isTimeSensitive: %@]", v172, v171, v170, v169, v168, v157, flags, v167, v155, messageID, guid, v152, v39, v43, v47, v51, v150, v151, v149, v148, v147, v146, v144, v142, v141, v138, v136, v87, v143, v133, v140, v139, v137, v103, v135, v134, replyCountsByPart, v107, v132, v112, v116, v120, v121, v123, v128, v130);;

  return v162;
}

- (_NSRange)associatedMessageRange
{
  length = self->_associatedMessageRange.length;
  location = self->_associatedMessageRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (BOOL)isRichLinkMessage
{
  v3 = objc_msgSend__imMessageItem(self, a2, v2);
  v6 = objc_msgSend_balloonBundleID(v3, v4, v5);
  hasPrefix = objc_msgSend_hasPrefix_(v6, v7, *MEMORY[0x1E69A6A18]);

  return hasPrefix;
}

- (id)richLinkDataSourceWithChatContext:(id)context
{
  contextCopy = context;
  v7 = objc_msgSend__imMessageItem(self, v5, v6);
  v9 = objc_msgSend__newMessagePartsForMessageItem_chatContext_(IMMessagePartChatItem, v8, v7, contextCopy);
  v11 = objc_msgSend__transcriptPluginChatItemFromTypeErasedPartChatItems_(self, v10, v9);
  v14 = objc_msgSend_dataSource(v11, v12, v13);
  v17 = objc_msgSend_bundleID(v14, v15, v16);

  if (objc_msgSend_containsString_(v17, v18, *MEMORY[0x1E69A6A18]))
  {
    v21 = objc_msgSend_dataSource(v11, v19, v20);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *v24 = 0;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Attempting to access rich link metadata from non-rich link plugin payload. Returning nil.", v24, 2u);
      }
    }

    v21 = 0;
  }

  return v21;
}

- (id)_transcriptPluginChatItemFromTypeErasedPartChatItems:(id)items
{
  itemsCopy = items;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = itemsCopy;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = itemsCopy;
      if (objc_msgSend_count(v5, v6, v7) == 1 && (objc_msgSend_firstObject(v5, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) != 0))
      {
        v4 = objc_msgSend_firstObject(v5, v12, v13);
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (IMMessage)messageWithLocation:(id)location flags:(unint64_t)flags error:(id)error guid:(id)guid
{
  errorCopy = error;
  guidCopy = guid;
  v15 = objc_msgSend__vCardDataWithCLLocation_(self, v12, location);
  if (v15)
  {
    v16 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v13, v14);
    v18 = objc_msgSend_im_randomTemporaryFileURLWithFileName_(v16, v17, @"CL.loc.vcf");

    v46 = v18;
    objc_msgSend_writeToURL_atomically_(v15, v19, v18, 1);
    v22 = objc_msgSend_sharedInstance(IMFileTransferCenter, v20, v21);
    v24 = objc_msgSend_createNewOutgoingTransferWithLocalFileURL_(v22, v23, v18);

    v25 = objc_alloc(MEMORY[0x1E695DF20]);
    v45 = objc_msgSend_initWithObjectsAndKeys_(v25, v26, v24, *MEMORY[0x1E69A5F68], 0);
    v27 = objc_alloc(MEMORY[0x1E696AAB0]);
    v29 = objc_msgSend_initWithString_attributes_(v27, v28, *MEMORY[0x1E69A5F00], v45);
    v30 = objc_alloc(MEMORY[0x1E695DEC8]);
    v32 = objc_msgSend_initWithObjects_(v30, v31, v24, 0);
    objc_msgSend___im_attributedStringByAssigningMessagePartNumbers(v29, v33, v34);
    v36 = v35 = errorCopy;
    v37 = [self alloc];
    objc_msgSend_date(MEMORY[0x1E695DF00], v38, v39);
    v41 = v40 = guidCopy;
    timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState = objc_msgSend__initWithSender_time_timeRead_timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState_(v37, v42, 0, v41, 0, 0, 0, 0, v36, 0, v32, flags, v35, v40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

    guidCopy = v40;
    errorCopy = v35;
  }

  else
  {
    timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState = 0;
  }

  return timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState;
}

+ (id)textMessageWithLocation:(id)location flags:(unint64_t)flags error:(id)error guid:(id)guid
{
  errorCopy = error;
  guidCopy = guid;
  v11 = IMCurrentLocationURLFromLocation();
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E696AAB0]);
    v14 = objc_msgSend_initWithString_(v12, v13, v11);
    v17 = objc_msgSend___im_attributedStringByAssigningMessagePartNumbers(v14, v15, v16);
    v18 = [self alloc];
    v21 = objc_msgSend_date(MEMORY[0x1E695DF00], v19, v20);
    timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState = objc_msgSend__initWithSender_time_timeRead_timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState_(v18, v22, 0, v21, 0, 0, 0, 0, v17, 0, 0, flags, errorCopy, guidCopy, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState = 0;
  }

  return timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState;
}

+ (id)locatingMessageWithGuid:(id)guid error:(id)error
{
  errorCopy = error;
  guidCopy = guid;
  v8 = [self alloc];
  v11 = objc_msgSend_date(MEMORY[0x1E695DF00], v9, v10);
  timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState = objc_msgSend__initWithSender_time_timeRead_timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState_(v8, v12, 0, v11, 0, 0, 0, 0, 0, 0, 0, 8388620, errorCopy, guidCopy, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

  return timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState;
}

+ (id)instantMessageWithAssociatedMessageContent:(id)content associatedMessageGUID:(id)d associatedMessageType:(int64_t)type associatedMessageRange:(_NSRange)range associatedMessageEmoji:(id)emoji messageSummaryInfo:(id)info threadIdentifier:(id)identifier
{
  length = range.length;
  location = range.location;
  identifierCopy = identifier;
  infoCopy = info;
  emojiCopy = emoji;
  dCopy = d;
  contentCopy = content;
  v20 = [self alloc];
  v23 = objc_msgSend_date(MEMORY[0x1E695DF00], v21, v22);
  v26 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v24, v25);
  timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState = objc_msgSend__initWithSender_time_timeRead_timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState_(v20, v27, 0, v23, 0, 0, 0, 0, contentCopy, 0, 0, 5, 0, v26, 0, 0, 0, 0, 0, 0, dCopy, type, location, length, emojiCopy, infoCopy, identifierCopy, 0, 0, 0, 0);

  return timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState;
}

+ (id)breadcrumbMessageWithText:(id)text associatedMessageGUID:(id)d balloonBundleID:(id)iD fileTransferGUIDs:(id)ds payloadData:(id)data threadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataCopy = data;
  dsCopy = ds;
  iDCopy = iD;
  dCopy = d;
  textCopy = text;
  v20 = [self alloc];
  v23 = objc_msgSend_date(MEMORY[0x1E695DF00], v21, v22);
  v26 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v24, v25);
  timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState = objc_msgSend__initWithSender_time_timeRead_timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState_(v20, v27, 0, v23, 0, 0, 0, 0, textCopy, 0, dsCopy, 5, 0, v26, 0, 0, iDCopy, dataCopy, 0, 0, dCopy, 2, 0, 0x7FFFFFFFFFFFFFFFLL, 0, 0, identifierCopy, 0, 0, 0, 0);

  return timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState;
}

+ (id)customAcknowledgementMessageWithPayloadData:(id)data associatedMessageGUID:(id)d balloonBundleID:(id)iD messageSummaryInfo:(id)info threadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  infoCopy = info;
  iDCopy = iD;
  dCopy = d;
  dataCopy = data;
  v17 = [self alloc];
  v20 = objc_msgSend_date(MEMORY[0x1E695DF00], v18, v19);
  v21 = objc_alloc(MEMORY[0x1E696AAB0]);
  v23 = objc_msgSend_initWithString_(v21, v22, @" ");
  v26 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v24, v25);
  timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState = objc_msgSend__initWithSender_time_timeRead_timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState_(v17, v27, 0, v20, 0, 0, 0, 0, v23, 0, 0, 5, 0, v26, 0, 0, iDCopy, dataCopy, 0, 0, dCopy, 4000, 0, 0x7FFFFFFFFFFFFFFFLL, 0, infoCopy, identifierCopy, 0, 0, 0, 0);

  return timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState;
}

- (BOOL)isAssociatedMessage
{
  v3 = objc_msgSend_associatedMessageGUID(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isIncomingTypingMessage
{
  v3 = MEMORY[0x1E69A8138];
  v4 = objc_msgSend_flags(self, a2, v2);

  return MEMORY[0x1EEE66B58](v3, sel_isIncomingTypingMessage_, v4);
}

- (BOOL)isCancelTypingMessage
{
  v4 = MEMORY[0x1E69A8138];
  v5 = objc_msgSend_flags(self, a2, v2);
  objc_msgSend_hasEditedParts(self, v6, v7);

  return MEMORY[0x1EEE66B58](v4, sel_isCancelTypingMessage_isEditedMessage_, v5);
}

- (BOOL)isTypingOrCancelTypingMessage
{
  v4 = MEMORY[0x1E69A8138];
  v5 = objc_msgSend_flags(self, a2, v2);
  objc_msgSend_hasEditedParts(self, v6, v7);

  return MEMORY[0x1EEE66B58](v4, sel_isTypingOrCancelTypingMessage_isEditedMessage_, v5);
}

- (BOOL)isIncomingTypingOrCancelTypingMessage
{
  v4 = MEMORY[0x1E69A8138];
  v5 = objc_msgSend_flags(self, a2, v2);
  objc_msgSend_hasEditedParts(self, v6, v7);

  return MEMORY[0x1EEE66B58](v4, sel_isIncomingTypingOrCancelTypingMessage_isEditedMessage_, v5);
}

@end