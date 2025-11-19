@interface IMMessageItem
+ (BOOL)messageContainsSurfDD:(id)a3;
+ (id)_messageItemWithIndexesDeleted:(id)a3 subRangesToDeleteMapping:(id)a4 deleteSubject:(BOOL)a5 deleteTransferCallback:(id)a6 createItemCallback:(id)a7 fromMessageItem:(id)a8;
+ (id)editedMessageItemWithOriginalMessageItem:(id)a3 editedPartIndex:(int64_t)a4 newPartText:(id)a5 newPartTranslation:(id)a6;
+ (id)editedMessageItemWithOriginalMessageItem:(id)a3 retractedPartIndex:(int64_t)a4 shouldRetractSubject:(BOOL)a5;
+ (id)editedMessageItemWithOriginalMessageItem:(id)a3 retractedPartIndexes:(id)a4 shouldRetractSubject:(BOOL)a5;
+ (id)newMessageItemFrom:(id)a3 withText:(id)a4 deleteSubject:(BOOL)a5 withFileTransferGUIDs:(id)a6;
+ (id)translationMessagePartClasses;
+ (unint64_t)messagePartIndexForAttachmentMessagePartWithTransferGUID:(id)a3 inBody:(id)a4;
- (BOOL)_retractAllowedForBundleIdentifier:(id)a3;
- (BOOL)_unrestrictedModificationsAllowedForBundleIdentifier:(id)a3;
- (BOOL)_updateFileTransfersArrayReplacingTemporaryFileTransferGUIDs:(id)a3;
- (BOOL)_updateMessageBodyReplacingTemporaryFileTransferGUIDsWithUpdatedGUIDs:(id)a3;
- (BOOL)_updateMessageEditHistoryReplacingTemporaryFileTransferGUIDsWithUpdatedGUIDs:(id)a3;
- (BOOL)canRetryFailedRetraction;
- (BOOL)containsRichLink;
- (BOOL)encrypted;
- (BOOL)hasEditedParts;
- (BOOL)hasLegacyUrgentTriggerMatchInText;
- (BOOL)hasMessageHistoryForSpamReport;
- (BOOL)isAvailabilityReplySupported;
- (BOOL)isDeviceActionMessage;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFailedHQTransfer;
- (BOOL)isFileAttachment;
- (BOOL)isFindMyPlugin;
- (BOOL)isFullyRetracted;
- (BOOL)isHQTransfer;
- (BOOL)isInitialTranscriptSharingItem;
- (BOOL)isLastMessageCandidate;
- (BOOL)isRCSEncryptionTest;
- (BOOL)isReply;
- (BOOL)isSatelliteMessageRetry;
- (BOOL)isStewie;
- (BOOL)isSuggestedActionResponse;
- (BOOL)isTimeSensitive;
- (BOOL)isTypingMessage;
- (BOOL)messageContainsOneTimeCode;
- (BOOL)needsRepeatForRelayReplication;
- (BOOL)shouldSendPartIndexesInMessageBody;
- (BOOL)unsentIsFromMeItem;
- (BOOL)updateTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:(id)a3;
- (BOOL)wasEverTimeSensitive;
- (BOOL)wasInterworked;
- (IMMessageItem)initWithCoder:(id)a3;
- (IMMessageItem)initWithDictionary:(id)a3 hint:(id)a4;
- (IMMessageItem)initWithSender:(id)a3 time:(id)a4 body:(id)a5 attributes:(id)a6 fileTransferGUIDs:(id)a7 flags:(unint64_t)a8 error:(id)a9 guid:(id)a10 type:(int64_t)a11 threadIdentifier:(id)a12;
- (IMMessageItem)initWithSender:(id)a3 time:(id)a4 guid:(id)a5 type:(int64_t)a6;
- (IMMessageItem)initWithSenderInfo:(id)a3 time:(id)a4 timeRead:(id)a5 timeDelivered:(id)a6 timePlayed:(id)a7 subject:(id)a8 body:(id)a9 bodyData:(id)a10 attributes:(id)a11 fileTransferGUIDs:(id)a12 flags:(unint64_t)a13 guid:(id)a14 messageID:(int64_t)a15 account:(id)a16 accountID:(id)a17 service:(id)a18 handle:(id)a19 roomName:(id)a20 unformattedID:(id)a21 countryCode:(id)a22 expireState:(int64_t)a23 balloonBundleID:(id)a24 payloadData:(id)a25 expressiveSendStyleID:(id)a26 timeExpressiveSendPlayed:(id)a27 bizIntent:(id)a28 locale:(id)a29 biaReferenceID:(id)a30 errorType:(unsigned int)a31 type:(int64_t)a32 threadIdentifier:(id)a33 syndicationRanges:(id)a34 syncedSyndicationRanges:(id)a35 partCount:(unint64_t)a36 dateEdited:(id)a37 dateRecovered:(id)a38 scheduleType:(unint64_t)a39 scheduleState:(unint64_t)a40 cloudKitChatID:(id)a41;
- (NSArray)editUnsupportedByHandleIDs;
- (NSArray)messageHistoryForSpamReport;
- (NSArray)messagePartGUIDs;
- (NSArray)messageParts;
- (NSArray)replicatedFallbackGUIDs;
- (NSArray)richLinkURLs;
- (NSArray)scheduledMessageOriginalTransferGUIDs;
- (NSAttributedString)body;
- (NSAttributedString)breadcrumbText;
- (NSData)bodyData;
- (NSDate)scheduledMessageLastModifiedTime;
- (NSDictionary)messageSummaryInfoForSending;
- (NSDictionary)originalTextRangesByPartIndex;
- (NSDictionary)spamModelMetadata;
- (NSIndexSet)editedPartIndexes;
- (NSIndexSet)failedEditPartIndexes;
- (NSIndexSet)failedRetractPartIndexes;
- (NSIndexSet)retractedPartIndexes;
- (NSMutableDictionary)mutableTelemetryMetrics;
- (NSNumber)messageContentType;
- (NSString)expectedServiceForCrossServiceReplacement;
- (NSString)originalGUID;
- (NSString)originalServiceName;
- (NSString)originalUnformattedID;
- (NSString)rcsAdvisedAction;
- (NSString)spamModelVersion;
- (NSString)swyAppName;
- (NSString)swyBundleID;
- (NSUUID)stewieConversationUUID;
- (double)_messageEditHistoryLimit;
- (double)_messageEditTimeout;
- (double)_messageRetractionTimeout;
- (double)_timeoutIntervalForEditType:(unint64_t)a3;
- (id)_localizedBackwardsCompatibleExpressiveSendText;
- (id)_partRangeByIndexFromPlistSerializable:(id)a3;
- (id)_partRangeByIndexToPlistSerializable:(id)a3;
- (id)attachmentGUIDAtIndex:(unint64_t)a3;
- (id)copyAsReplied;
- (id)copyDictionaryRepresentation;
- (id)copyForBackwardsCompatibility;
- (id)copyWithFlags:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)criticalMessagingAppName;
- (id)description;
- (id)findTransferGUIDMatchingSpotlightDonatedSpeculativeTransferGUID:(id)a3;
- (id)formatWithReasonCode:(int64_t)a3 subReasonCode:(int64_t)a4 pathID:(int64_t)a5;
- (id)historyForMessagePart:(int64_t)a3;
- (id)messagePartMatchingPartIndex:(int64_t)a3;
- (id)sender;
- (id)translationsForMessagePart:(int64_t)a3;
- (int64_t)stewieConversationID;
- (int64_t)stewieSequenceNumber;
- (int64_t)transcriptSharingMessageType;
- (unint64_t)eligibilityForEditType:(unint64_t)a3 messagePartIndex:(int64_t)a4;
- (unint64_t)expectedOffGridCapableDeliveries;
- (unint64_t)getCMMAssetOffset;
- (unint64_t)getCMMState;
- (unint64_t)messagePartIndexForAttachmentMessagePartWithTransferGUID:(id)a3;
- (unint64_t)powerLogMessageType;
- (unint64_t)replyCountForPartIndex:(int64_t)a3;
- (void)_generateBodyDataIfNeeded;
- (void)_generateBodyTextIfNeeded;
- (void)_recalculatePartCount;
- (void)_regenerateBodyData;
- (void)_regenerateBodyText;
- (void)addEditedPartIndex:(int64_t)a3;
- (void)addFailedEditPartIndex:(int64_t)a3;
- (void)addFailedRetractPartIndex:(int64_t)a3;
- (void)addRetractedPartIndex:(int64_t)a3;
- (void)addTelemetryMetricForKey:(int64_t)a3;
- (void)addTelemetryMetricsFromDictionary:(id)a3;
- (void)addTranslation:(id)a3 forMessagePart:(int64_t)a4;
- (void)adjustIsEmptyFlag;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateAttachmentGUIDsWithBlock:(id)a3;
- (void)eraseMessageContent;
- (void)removeTranslationsForMessagePart:(int64_t)a3;
- (void)setBody:(id)a3;
- (void)setCMMAssetOffset:(unint64_t)a3;
- (void)setCMMState:(unint64_t)a3;
- (void)setCMMStateToRegisteredAndAssetOffsetTo:(unint64_t)a3;
- (void)setCriticalMessagingAppName:(id)a3;
- (void)setEditedPartIndexes:(id)a3;
- (void)setEncrypted:(BOOL)a3;
- (void)setExpectedOffGridCapableDeliveries:(unint64_t)a3;
- (void)setExpectedServiceForCrossServiceReplacement:(id)a3;
- (void)setFailedEditPartIndexes:(id)a3;
- (void)setFailedRetractPartIndexes:(id)a3;
- (void)setFileTransferGUIDs:(id)a3;
- (void)setHasDataDetectorResults:(BOOL)a3;
- (void)setHasUnseenMention:(BOOL)a3;
- (void)setHistory:(id)a3 forMessagePart:(int64_t)a4;
- (void)setInitialTranscriptSharingItem:(BOOL)a3;
- (void)setIsCorrupt:(BOOL)a3;
- (void)setIsCritical:(BOOL)a3;
- (void)setIsFailedHQTransfer:(BOOL)a3;
- (void)setIsHQTransfer:(BOOL)a3;
- (void)setIsKeyTransparencyVerifiedMessage:(BOOL)a3;
- (void)setIsPendingSatelliteSend:(BOOL)a3;
- (void)setIsSOS:(BOOL)a3;
- (void)setIsSpam:(BOOL)a3;
- (void)setIsStewie:(BOOL)a3;
- (void)setIsTapToRetry:(BOOL)a3;
- (void)setIsTimeSensitive:(BOOL)a3;
- (void)setMessageContentType:(id)a3;
- (void)setNeedsRelay:(BOOL)a3;
- (void)setNeedsRepeatForRelayReplication:(BOOL)a3;
- (void)setOriginalGUID:(id)a3;
- (void)setOriginalServiceName:(id)a3;
- (void)setOriginalTextRangesByPartIndex:(id)a3;
- (void)setOriginalUnformattedID:(id)a3;
- (void)setPayloadData:(id)a3;
- (void)setPlainBody:(id)a3;
- (void)setRcsAdvisedAction:(id)a3;
- (void)setReplicatedFallbackGUIDs:(id)a3;
- (void)setRetractedPartIndexes:(id)a3;
- (void)setSatelliteMessageRetry:(BOOL)a3;
- (void)setScheduledMessageLastModifiedTime:(id)a3;
- (void)setScheduledMessageOriginalTransferGUIDs:(id)a3;
- (void)setSentOrReceivedOffGrid:(BOOL)a3;
- (void)setSpamModelMetadata:(id)a3;
- (void)setSpamModelVersion:(id)a3;
- (void)setStewieConversationID:(int64_t)a3;
- (void)setStewieConversationUUID:(id)a3;
- (void)setStewieSequenceNumber:(int64_t)a3;
- (void)setSubject:(id)a3;
- (void)setSwyAppName:(id)a3;
- (void)setSwyBundleID:(id)a3;
- (void)setTelemetryMetricsReasonCode:(int64_t)a3 subReasonCode:(int64_t)a4 pathID:(int64_t)a5;
- (void)setTranscriptSharingMessageType:(int64_t)a3;
- (void)setWasDataDetected:(BOOL)a3;
- (void)setWasEverTimeSensitive:(BOOL)a3;
- (void)setWasInterworked:(BOOL)a3;
@end

@implementation IMMessageItem

- (id)copyDictionaryRepresentation
{
  v84[2] = *MEMORY[0x1E69E9840];
  v82.receiver = self;
  v82.super_class = IMMessageItem;
  v3 = [(IMItem *)&v82 copyDictionaryRepresentation];
  v4 = objc_autoreleasePoolPush();
  if (!self->_plainBody || self->_fileTransferGUIDs || [(IMMessageItem *)self hasDataDetectorResults])
  {
    goto LABEL_16;
  }

  v5 = self->_plainBody;
  if (v5)
  {
    CFDictionarySetValue(v3, @"plainBody", v5);
  }

  if ([(IMMessageItem *)self isStewie])
  {
    v84[0] = @"__kIMMentionConfirmedMention";
    v84[1] = @"__kIMApplyBoldFont";
    v6 = MEMORY[0x1E695DEC8];
    v7 = v84;
    v8 = 2;
  }

  else
  {
    v83 = @"__kIMMentionConfirmedMention";
    v6 = MEMORY[0x1E695DEC8];
    v7 = &v83;
    v8 = 1;
  }

  v9 = [v6 arrayWithObjects:v7 count:v8];
  v10 = +[IMFeatureFlags sharedFeatureFlags];
  v11 = [v10 isExpressiveTextEnabled];

  v12 = MEMORY[0x1E695E0F0];
  if (v11)
  {
    if (!v9)
    {
      v9 = MEMORY[0x1E695E0F0];
    }

    v13 = [v9 arrayByAddingObject:@"__kIMTextEffectAttributeName"];

    v14 = [v13 arrayByAddingObject:@"__kIMTextBoldAttributeName"];

    v15 = [v14 arrayByAddingObject:@"__kIMTextItalicAttributeName"];

    v16 = [v15 arrayByAddingObject:@"__kIMTextUnderlineAttributeName"];

    v9 = [v16 arrayByAddingObject:@"__kIMTextStrikethroughAttributeName"];
  }

  if (!v9)
  {
    v9 = v12;
  }

  v17 = [v9 arrayByAddingObject:@"__kIMRichCardsAttributeName"];

  v18 = [v17 arrayByAddingObject:@"__kIMChipListAttributeName"];

  v19 = [v18 arrayByAddingObject:@"__kIMSuggestedReplyAttributeName"];

  v20 = [v19 arrayByAddingObject:@"__kIMSuggestedActionAttributeName"];

  v21 = [v20 arrayByAddingObject:@"__kIMUrlToTransferMapAttributeName"];

  v22 = [(IMMessageItem *)self body];
  v23 = [v22 __im_containsAttributedValue:v21];

  if (v23)
  {
LABEL_16:
    v24 = [(IMMessageItem *)self bodyData];
    if (v24)
    {
      CFDictionarySetValue(v3, @"bodyData", v24);
    }
  }

  v25 = self->_subject;
  if (v25)
  {
    CFDictionarySetValue(v3, @"subject", v25);
  }

  v26 = self->_fileTransferGUIDs;
  if (v26)
  {
    CFDictionarySetValue(v3, @"fileTransferGUIDs", v26);
  }

  v27 = [(IMMessageItem *)self typingIndicatorIcon];
  if (v27)
  {
    CFDictionarySetValue(v3, @"typingIndicatorIcon", v27);
  }

  timeRead = self->_timeRead;
  if (timeRead)
  {
    [(NSDate *)timeRead timeIntervalSinceReferenceDate];
    v29 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    if (v29)
    {
      CFDictionarySetValue(v3, @"timeRead", v29);
    }
  }

  timeDelivered = self->_timeDelivered;
  if (timeDelivered)
  {
    [(NSDate *)timeDelivered timeIntervalSinceReferenceDate];
    v31 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    if (v31)
    {
      CFDictionarySetValue(v3, @"timeDelivered", v31);
    }
  }

  timePlayed = self->_timePlayed;
  if (timePlayed)
  {
    [(NSDate *)timePlayed timeIntervalSinceReferenceDate];
    v33 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    if (v33)
    {
      CFDictionarySetValue(v3, @"timePlayed", v33);
    }
  }

  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_flags];
  if (v34)
  {
    CFDictionarySetValue(v3, @"flags", v34);
  }

  if (self->_expireState)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
    if (v35)
    {
      CFDictionarySetValue(v3, @"expireState", v35);
    }
  }

  if (self->_payloadData)
  {
    v36 = [(IMMessageItem *)self payloadData];
    if (v36)
    {
      CFDictionarySetValue(v3, @"payloadData", v36);
    }
  }

  if ([(NSString *)self->_expressiveSendStyleID length])
  {
    v37 = [(IMMessageItem *)self expressiveSendStyleID];
    if (v37)
    {
      CFDictionarySetValue(v3, @"expressiveSendStyleID", v37);
    }
  }

  timeExpressiveSendPlayed = self->_timeExpressiveSendPlayed;
  if (timeExpressiveSendPlayed)
  {
    [(NSDate *)timeExpressiveSendPlayed timeIntervalSinceReferenceDate];
    v39 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    if (v39)
    {
      CFDictionarySetValue(v3, @"timeExpressiveSendPlayed", v39);
    }
  }

  if (self->_error)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    if (v40)
    {
      CFDictionarySetValue(v3, @"error", v40);
    }
  }

  if (self->_contactsAvatarRecipeData)
  {
    v41 = [(IMMessageItem *)self contactsAvatarRecipeData];
    if (v41)
    {
      CFDictionarySetValue(v3, @"contactsAvatarRecipeData", v41);
    }
  }

  if (self->_messageSummaryInfo)
  {
    v42 = [(IMMessageItem *)self messageSummaryInfo];
    if (v42)
    {
      CFDictionarySetValue(v3, @"messageSummaryInfo", v42);
    }
  }

  bizIntent = self->_bizIntent;
  if (bizIntent)
  {
    v44 = bizIntent;
    CFDictionarySetValue(v3, @"bizIntent", v44);
  }

  locale = self->_locale;
  if (locale)
  {
    v46 = locale;
    CFDictionarySetValue(v3, @"locale", v46);
  }

  biaReferenceID = self->_biaReferenceID;
  if (biaReferenceID)
  {
    v48 = biaReferenceID;
    CFDictionarySetValue(v3, @"biaReferenceID", v48);
  }

  if (self->_useStandalone)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v49)
    {
      CFDictionarySetValue(v3, @"useStandalone", v49);
    }
  }

  notificationIDSTokenURI = self->_notificationIDSTokenURI;
  if (notificationIDSTokenURI)
  {
    v51 = notificationIDSTokenURI;
    CFDictionarySetValue(v3, @"notificationnotificationIDSTokenURI", v51);
  }

  if (self->_shouldSendMeCard)
  {
    v52 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v52)
    {
      CFDictionarySetValue(v3, @"shouldSendMeCard", v52);
    }
  }

  if (self->_shouldNotifyOnSend)
  {
    v53 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v53)
    {
      CFDictionarySetValue(v3, @"shouldNotifyOnSend", v53);
    }
  }

  if (self->_sentViaRemoteIntent)
  {
    v54 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v54)
    {
      CFDictionarySetValue(v3, @"sentViaRemoteIntent", v54);
    }
  }

  if (self->_isBeingRetried)
  {
    v55 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v55)
    {
      CFDictionarySetValue(v3, @"isBeingRetried", v55);
    }
  }

  retryToParticipant = self->_retryToParticipant;
  if (retryToParticipant)
  {
    v57 = retryToParticipant;
    CFDictionarySetValue(v3, @"retryToParticipant", v57);
  }

  threadIdentifier = self->_threadIdentifier;
  if (threadIdentifier)
  {
    [(__CFDictionary *)v3 setValue:threadIdentifier forKey:@"threadIdentifier"];
  }

  threadOriginator = self->_threadOriginator;
  if (threadOriginator)
  {
    v60 = [(IMMessageItem *)threadOriginator copyDictionaryRepresentation];
    [(__CFDictionary *)v3 setValue:v60 forKey:@"threadOriginator"];
  }

  replyCountsByPart = self->_replyCountsByPart;
  if (replyCountsByPart)
  {
    [(__CFDictionary *)v3 setValue:replyCountsByPart forKey:@"replyCountsByPart"];
  }

  if (self->_syndicationRanges)
  {
    v62 = [IMMessagePartSyndicationRange serializedStringFromArray:?];
    [(__CFDictionary *)v3 setValue:v62 forKey:@"syndicationRanges"];
  }

  if (self->_syncedSyndicationRanges)
  {
    v63 = [IMMessagePartSyndicationRange serializedStringFromArray:?];
    [(__CFDictionary *)v3 setValue:v63 forKey:@"syncedSyndicationRanges"];
  }

  dateEdited = self->_dateEdited;
  if (dateEdited)
  {
    [(NSDate *)dateEdited timeIntervalSinceReferenceDate];
    v65 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    if (v65)
    {
      CFDictionarySetValue(v3, @"dateEdited", v65);
    }
  }

  dateRecovered = self->_dateRecovered;
  if (dateRecovered)
  {
    [(NSDate *)dateRecovered timeIntervalSinceReferenceDate];
    v67 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    if (v67)
    {
      CFDictionarySetValue(v3, @"dateRecovered", v67);
    }
  }

  groupActivity = self->_groupActivity;
  if (groupActivity)
  {
    v69 = groupActivity;
    CFDictionarySetValue(v3, @"groupActivity", v69);
  }

  collaborationInitiationRequestInfo = self->_collaborationInitiationRequestInfo;
  if (collaborationInitiationRequestInfo)
  {
    v71 = collaborationInitiationRequestInfo;
    CFDictionarySetValue(v3, @"collaborationInitiationRequest", v71);
  }

  v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_partCount];
  [(__CFDictionary *)v3 setObject:v72 forKeyedSubscript:@"partCount"];

  v73 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_replaceID];
  [(__CFDictionary *)v3 setObject:v73 forKeyedSubscript:@"replaceID"];

  [(__CFDictionary *)v3 setObject:self->_fallbackHash forKeyedSubscript:@"fallbackHash"];
  v74 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_scheduleType];
  [(__CFDictionary *)v3 setObject:v74 forKeyedSubscript:@"scheduleType"];

  v75 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_scheduleState];
  [(__CFDictionary *)v3 setObject:v75 forKeyedSubscript:@"scheduleState"];

  telemetryMetrics = self->_telemetryMetrics;
  if (telemetryMetrics)
  {
    v77 = telemetryMetrics;
    CFDictionarySetValue(v3, @"telemetryMetrics", v77);
  }

  telemetryMetricsReasonCode = self->_telemetryMetricsReasonCode;
  if (telemetryMetricsReasonCode)
  {
    v79 = telemetryMetricsReasonCode;
    CFDictionarySetValue(v3, @"telemetryMetricsReasonCode", v79);
  }

  objc_autoreleasePoolPop(v4);
  v80 = v3;

  return v80;
}

- (BOOL)isStewie
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  v4 = [v3 stewieEnabled];

  if (v4)
  {
    if ([(IMMessageItem *)self stewieConversationID]< 0)
    {
      return (BYTE4(self->_flags) >> 1) & 1;
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (int64_t)stewieConversationID
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  v4 = [v3 stewieEnabled];

  if (!v4)
  {
    return -1;
  }

  v5 = [(IMMessageItem *)self messageSummaryInfo];
  v6 = [v5 objectForKey:@"stid"];

  if (!v6 || [v6 integerValue] < 0)
  {
    v7 = -1;
  }

  else
  {
    v7 = [v6 integerValue];
  }

  return v7;
}

- (NSAttributedString)body
{
  [(IMMessageItem *)self _generateBodyTextIfNeeded];
  body = self->_body;

  return body;
}

- (void)_generateBodyTextIfNeeded
{
  if ((self->_bodyData || self->_plainBody) && !self->_body)
  {
    MEMORY[0x1EEE66B58](self, sel__regenerateBodyText);
  }
}

- (NSData)bodyData
{
  [(IMMessageItem *)self _generateBodyDataIfNeeded];
  bodyData = self->_bodyData;

  return bodyData;
}

- (void)_generateBodyDataIfNeeded
{
  if (!self->_bodyData)
  {
    MEMORY[0x1EEE66B58](self, sel__regenerateBodyData);
  }
}

- (BOOL)isReply
{
  v3 = [(IMMessageItem *)self threadIdentifier];

  if (!v3)
  {
    return 0;
  }

  v4 = [(IMMessageItem *)self threadIdentifier];
  v5 = [v4 length] != 0;

  return v5;
}

- (BOOL)isTypingMessage
{
  if ([(IMMessageItem *)self wasDetonated])
  {
    LOBYTE(v3) = 0;
  }

  else if ([(IMMessageItem *)self isFinished])
  {
    v3 = [(IMMessageItem *)self isFinished];
    if (v3)
    {
      v3 = [(IMMessageItem *)self isEmpty];
      if (v3)
      {
        LOBYTE(v3) = ![(IMMessageItem *)self hasEditedParts];
      }
    }
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)isSuggestedActionResponse
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(IMMessageItem *)self body];
  v6[0] = @"__kIMSuggestedActionAttributeName";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [v2 __im_containsAttributedValue:v3];

  return v4;
}

- (void)_regenerateBodyText
{
  body = self->_body;
  self->_body = 0;

  if ([(NSData *)self->_bodyData length])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [(NSData *)self->_bodyData copy];
    v6 = JWDecodeCodableObjectWithStandardAllowlist();
    v7 = self->_body;
    self->_body = v6;

    objc_autoreleasePoolPop(v4);
  }

  else if (self->_plainBody)
  {
    v8 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (qword_1ED8C99F8 != -1)
    {
      v11 = v8;
      sub_1A85F8230();
      v8 = v11;
    }

    v9 = [v8 initWithString:? attributes:?];
    v10 = self->_body;
    self->_body = v9;
  }

  [(IMMessageItem *)self _recalculatePartCount];
}

- (void)_recalculatePartCount
{
  if ([(NSAttributedString *)self->_body length])
  {
    self->_partCount = [(NSAttributedString *)self->_body __im_countMessageParts];
  }

  else if ([(NSString *)self->_plainBody length])
  {
    self->_partCount = 1;
  }

  else
  {
    self->_partCount = 0;
  }
}

- (BOOL)isLastMessageCandidate
{
  if ([(IMMessageItem *)self scheduleType]!= 2)
  {
    return 1;
  }

  if ([(IMMessageItem *)self scheduleState]== 2)
  {
    return 0;
  }

  return [(IMMessageItem *)self scheduleState]!= 1;
}

- (BOOL)isRCSEncryptionTest
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  v4 = [v3 isRCSEncryptionOptInTestEnabled];

  if (v4)
  {
    return (BYTE5(self->_flags) >> 5) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)hasEditedParts
{
  v2 = [(IMMessageItem *)self dateEdited];
  v3 = v2 != 0;

  return v3;
}

- (void)adjustIsEmptyFlag
{
  if (self->_body || self->_subject || [(NSData *)self->_payloadData length])
  {
    v3 = [(IMMessageItem *)self body];
    v5 = [v3 string];

    if (-[NSString length](self->_subject, "length") || [v5 length] || -[NSArray count](self->_fileTransferGUIDs, "count") || -[NSData length](self->_payloadData, "length"))
    {
      if (![(IMMessageItem *)self isEmpty])
      {
LABEL_11:

        return;
      }

      v4 = self->_flags & 0xFFFFFFFFFFFFFFF7;
    }

    else
    {
      v4 = self->_flags | 8;
    }

    self->_flags = v4;
    goto LABEL_11;
  }

  if (([(IMMessageItem *)self wasDetonated]|| [(NSArray *)self->_fileTransferGUIDs count]) && [(IMMessageItem *)self isEmpty])
  {
    self->_flags &= ~8uLL;
  }
}

- (BOOL)isFullyRetracted
{
  v3 = [(IMMessageItem *)self dateEdited];

  if (!v3)
  {
    return 0;
  }

  v4 = [(IMMessageItem *)self body];
  v5 = [v4 __im_countMessageParts];

  if (v5 > 0)
  {
    return 0;
  }

  v7 = [(IMMessageItem *)self subject];
  v6 = [v7 length] == 0;

  return v6;
}

+ (id)translationMessagePartClasses
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:5];
  v4 = [v2 setWithArray:{v3, v6, v7, v8, v9}];

  return v4;
}

- (id)translationsForMessagePart:(int64_t)a3
{
  v4 = [(IMMessageItem *)self messageSummaryInfo];
  v5 = [v4 objectForKeyedSubscript:@"tmp"];
  v6 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v7 = +[IMMessageItem translationMessagePartClasses];
    v21 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v7 fromData:v5 error:&v21];
    v9 = v21;
    v10 = v9;
    if (v8)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v12 = [v8 objectForKeyedSubscript:v11];

      if (v12)
      {
        v6 = v12;
      }
    }

    else if (v9)
    {
      v13 = IMLogHandleForCategory("Translation");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C15CC(v10, v13, v14, v15, v16, v17, v18, v19);
      }

      v6 = MEMORY[0x1E695E0F0];
    }
  }

  return v6;
}

- (void)addTranslation:(id)a3 forMessagePart:(int64_t)a4
{
  v9 = a3;
  v6 = [(IMMessageItem *)self messageSummaryInfo];
  Mutable = [v6 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  IMAddTranslatedMessagePartToMessageSummaryInfo(v9, a4, Mutable);
  v8 = [(__CFDictionary *)Mutable copy];
  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (void)removeTranslationsForMessagePart:(int64_t)a3
{
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  capacitya = [v5 mutableCopy];

  Mutable = capacitya;
  if (!capacitya)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  capacity = Mutable;
  IMRemoveTranslatedMessagePartFromMessageSummaryInfo(a3, Mutable);
  v7 = [(__CFDictionary *)capacity copy];
  [(IMMessageItem *)self setMessageSummaryInfo:v7];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v38.receiver = self;
  v38.super_class = IMMessageItem;
  v4 = [(IMItem *)&v38 copyWithZone:a3];
  v5 = [(IMMessageItem *)self plainBody];
  [v4 setPlainBody:v5];

  v6 = [(IMMessageItem *)self timeRead];
  [v4 setTimeRead:v6];

  v7 = [(IMMessageItem *)self timeDelivered];
  [v4 setTimeDelivered:v7];

  v8 = [(IMMessageItem *)self timePlayed];
  [v4 setTimePlayed:v8];

  v9 = [(IMMessageItem *)self body];
  [v4 setBody:v9];

  v10 = [(IMMessageItem *)self bodyData];
  [v4 setBodyData:v10];

  v11 = [(IMMessageItem *)self subject];
  [v4 setSubject:v11];

  [v4 setErrorCode:{-[IMMessageItem errorCode](self, "errorCode")}];
  v12 = [(IMMessageItem *)self fileTransferGUIDs];
  [v4 setFileTransferGUIDs:v12];

  [v4 setReplaceID:{-[IMMessageItem replaceID](self, "replaceID")}];
  [v4 setExpireState:{-[IMMessageItem expireState](self, "expireState")}];
  v13 = [(IMMessageItem *)self payloadData];
  [v4 setPayloadData:v13];

  v14 = [(IMMessageItem *)self expressiveSendStyleID];
  [v4 setExpressiveSendStyleID:v14];

  v15 = [(IMMessageItem *)self timeExpressiveSendPlayed];
  [v4 setTimeExpressiveSendPlayed:v15];

  v16 = [(IMMessageItem *)self typingIndicatorIcon];
  [v4 setTypingIndicatorIcon:v16];

  v17 = [(IMMessageItem *)self contactsAvatarRecipeData];
  [v4 setContactsAvatarRecipeData:v17];

  v18 = [(IMMessageItem *)self messageSummaryInfo];
  [v4 setMessageSummaryInfo:v18];

  v19 = [(IMMessageItem *)self bizIntent];
  [v4 setBizIntent:v19];

  v20 = [(IMMessageItem *)self locale];
  [v4 setLocale:v20];

  v21 = [(IMMessageItem *)self biaReferenceID];
  [v4 setBiaReferenceID:v21];

  [v4 setUseStandalone:{-[IMMessageItem useStandalone](self, "useStandalone")}];
  v22 = [(IMMessageItem *)self notificationIDSTokenURI];
  [v4 setNotificationIDSTokenURI:v22];

  [v4 setIsCorrupt:{-[IMMessageItem isCorrupt](self, "isCorrupt")}];
  [v4 setIsSpam:{-[IMMessageItem isSpam](self, "isSpam")}];
  [v4 setHasUnseenMention:{-[IMMessageItem hasUnseenMention](self, "hasUnseenMention")}];
  [v4 setShouldSendMeCard:{-[IMMessageItem shouldSendMeCard](self, "shouldSendMeCard")}];
  [v4 setShouldNotifyOnSend:{-[IMMessageItem shouldNotifyOnSend](self, "shouldNotifyOnSend")}];
  [v4 setSentViaRemoteIntent:{-[IMMessageItem sentViaRemoteIntent](self, "sentViaRemoteIntent")}];
  [v4 setIsBeingRetried:{-[IMMessageItem isBeingRetried](self, "isBeingRetried")}];
  v23 = [(IMMessageItem *)self retryToParticipant];
  [v4 setRetryToParticipant:v23];

  v24 = [(IMMessageItem *)self threadIdentifier];
  [v4 setThreadIdentifier:v24];

  v25 = [(IMMessageItem *)self threadOriginator];
  [v4 setThreadOriginator:v25];

  v26 = [(IMMessageItem *)self replyCountsByPart];
  [v4 setReplyCountsByPart:v26];

  v27 = [(IMMessageItem *)self syndicationRanges];
  [v4 setSyndicationRanges:v27];

  v28 = [(IMMessageItem *)self syncedSyndicationRanges];
  [v4 setSyncedSyndicationRanges:v28];

  v29 = [(IMMessageItem *)self dateEdited];
  [v4 setDateEdited:v29];

  v30 = [(IMMessageItem *)self dateRecovered];
  [v4 setDateRecovered:v30];

  v31 = [(IMMessageItem *)self groupActivity];
  [v4 setGroupActivity:v31];

  v32 = [(IMMessageItem *)self collaborationInitiationRequestInfo];
  [v4 setCollaborationInitiationRequestInfo:v32];

  v33 = [(IMMessageItem *)self fallbackHash];
  [v4 setFallbackHash:v33];

  [v4 setIsKeyTransparencyVerifiedMessage:{-[IMMessageItem isKeyTransparencyVerifiedMessage](self, "isKeyTransparencyVerifiedMessage")}];
  [v4 setScheduleType:{-[IMMessageItem scheduleType](self, "scheduleType")}];
  [v4 setScheduleState:{-[IMMessageItem scheduleState](self, "scheduleState")}];
  [v4 setSelectedRichCardIndex:{-[IMMessageItem selectedRichCardIndex](self, "selectedRichCardIndex")}];
  v34 = [(IMMessageItem *)self telemetryMetrics];
  v35 = [v34 copy];
  [v4 setTelemetryMetrics:v35];

  v36 = [(IMMessageItem *)self telemetryMetricsReasonCode];
  [v4 setTelemetryMetricsReasonCode:v36];

  [v4 setSkipIndexing:{-[IMMessageItem skipIndexing](self, "skipIndexing")}];
  return v4;
}

- (id)copyWithFlags:(unint64_t)a3
{
  v4 = [(IMMessageItem *)self copy];
  [v4 _updateFlags:a3];
  return v4;
}

- (id)copyAsReplied
{
  v3 = [(IMMessageItem *)self copyWithFlags:[(IMMessageItem *)self flags]];
  v4 = [(IMMessageItem *)self body];
  if ([v4 length])
  {
    v5 = [v4 string];
    v6 = [v5 substringFromIndex:{objc_msgSend(v4, "length") - 1}];
    v7 = [v6 isEqualToString:@"\uFFFF"];

    if (v7)
    {
      v8 = [v4 attributesAtIndex:objc_msgSend(v4 effectiveRange:{"length") - 1, 0}];
      v9 = [v8 _arrayForKey:@"__kIMChipListAttributeName"];
      v10 = [[IMChipList alloc] initWithChipArray:v9 replied:1];
      v11 = [v4 mutableCopy];
      v12 = [(IMChipList *)v10 dictionaryRepresentation];
      [v11 setAttributes:v12 range:{objc_msgSend(v11, "length") - 1, 1}];

      [v3 setBody:v11];
    }
  }

  return v3;
}

- (id)copyForBackwardsCompatibility
{
  v3 = [(IMMessageItem *)self copy];
  [v3 setPayloadData:0];
  [v3 setBalloonBundleID:0];
  [v3 setExpressiveSendStyleID:0];
  [v3 setTimeExpressiveSendPlayed:0];
  [v3 setFlags:{-[IMMessageItem flags](self, "flags") & 0x200005 | objc_msgSend(v3, "flags")}];
  [v3 setContactsAvatarRecipeData:0];
  [v3 setMessageSummaryInfo:0];
  v4 = [v3 body];
  v5 = [v4 string];
  v6 = [v5 rangeOfString:*MEMORY[0x1E69A5F20]];
  v8 = v7;

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = objc_alloc(MEMORY[0x1E696AD40]);
    v10 = [v3 body];
    v11 = [v9 initWithAttributedString:v10];

    [v11 deleteCharactersInRange:{v6, v8}];
    [v3 setBody:v11];
  }

  [v3 setThreadIdentifier:0];
  [v3 setThreadOriginator:0];
  [v3 setReplyCountsByPart:0];
  [v3 setBackwardsCompatibleVersion:1];
  [v3 setSyndicationRanges:0];
  [v3 setSyncedSyndicationRanges:0];
  [v3 setDateEdited:0];
  [v3 setDateRecovered:0];
  return v3;
}

- (id)findTransferGUIDMatchingSpotlightDonatedSpeculativeTransferGUID:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(IMItem *)self guid];
  [(IMMessageItem *)self messageParts];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 transferGUID];
        if ([v12 length])
        {
          v13 = IMFileTransferGUIDForAttachmentMessagePartAtMessageGUIDAndMessagePartIndex(v5, [v11 messagePartIndex]);
          if ([v13 isEqualToString:v4])
          {
            v14 = IMLogHandleForCategory("IMMessageItem");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v21 = v12;
              v22 = 2112;
              v23 = v4;
              _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_DEFAULT, "Found transferGUID %@ matching potentially donated transferGUID %@.", buf, 0x16u);
            }

            goto LABEL_15;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (unint64_t)messagePartIndexForAttachmentMessagePartWithTransferGUID:(id)a3
{
  v4 = a3;
  v5 = [(IMMessageItem *)self body];
  v6 = [objc_opt_class() messagePartIndexForAttachmentMessagePartWithTransferGUID:v4 inBody:v5];

  return v6;
}

+ (unint64_t)messagePartIndexForAttachmentMessagePartWithTransferGUID:(id)a3 inBody:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if ([v5 length])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A8655148;
    v9[3] = &unk_1E7827CF8;
    v10 = v5;
    v11 = &v12;
    [v6 __im_visitMessageParts:v9];
    v7 = v13[3];

    _Block_object_dispose(&v12, 8);
  }

  return v7;
}

- (BOOL)_updateFileTransfersArrayReplacingTemporaryFileTransferGUIDs:(id)a3
{
  v4 = a3;
  v5 = [(IMMessageItem *)self fileTransferGUIDs];
  v6 = [v5 mutableCopy];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = sub_1A8655300;
  v14 = &unk_1E7826CC8;
  v7 = v6;
  v15 = v7;
  v16 = &v17;
  [v4 enumerateKeysAndObjectsUsingBlock:&v11];
  v8 = *(v18 + 24);
  if (v8)
  {
    v9 = [v7 copy];
    [(IMMessageItem *)self setFileTransferGUIDs:v9];
  }

  _Block_object_dispose(&v17, 8);
  return v8;
}

- (BOOL)_updateMessageBodyReplacingTemporaryFileTransferGUIDsWithUpdatedGUIDs:(id)a3
{
  v4 = a3;
  v5 = [(IMMessageItem *)self body];
  if ([v5 length])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_1A8601EA8;
    v17 = sub_1A8602148;
    v18 = v5;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1A86554F4;
    v8[3] = &unk_1E7827D20;
    v8[4] = &v13;
    v8[5] = &v9;
    [v4 enumerateKeysAndObjectsUsingBlock:v8];
    v6 = *(v10 + 24);
    if (v6)
    {
      [(IMMessageItem *)self setBody:v14[5]];
    }

    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_updateMessageEditHistoryReplacingTemporaryFileTransferGUIDsWithUpdatedGUIDs:(id)a3
{
  v73 = *MEMORY[0x1E69E9840];
  v39 = a3;
  v29 = self;
  v4 = [(IMMessageItem *)self messageSummaryInfo];
  v31 = [v4 _dictionaryForKey:@"ec"];

  v5 = v31;
  if ([v31 count])
  {
    v33 = [v31 mutableCopy];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = v31;
    v34 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
    v30 = v34 != 0;
    if (v34)
    {
      v38 = 0;
      v32 = *v68;
      do
      {
        v6 = 0;
        do
        {
          if (*v68 != v32)
          {
            v7 = v6;
            objc_enumerationMutation(obj);
            v6 = v7;
          }

          v36 = v6;
          v37 = *(*(&v67 + 1) + 8 * v6);
          v8 = [obj _arrayForKey:?];
          v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v41 = v8;
          v9 = [v41 countByEnumeratingWithState:&v63 objects:v71 count:16];
          if (v9)
          {
            v10 = *v64;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v64 != v10)
                {
                  objc_enumerationMutation(v41);
                }

                v12 = *(*(&v63 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v13 = [[IMMessagePartHistoricalContent alloc] initWithMessageSummaryInfoDictionary:v12];
                  p_super = &v13->super;
                  if (v13)
                  {
                    v15 = [(IMMessagePartHistoricalContent *)v13 messagePartText];
                    v16 = [p_super messagePartTranslation];
                    v53 = 0;
                    v54 = &v53;
                    v55 = 0x3032000000;
                    v56 = sub_1A8601EA8;
                    v57 = sub_1A8602148;
                    v17 = v15;
                    v58 = v17;
                    v47 = 0;
                    v48 = &v47;
                    v49 = 0x3032000000;
                    v50 = sub_1A8601EA8;
                    v51 = sub_1A8602148;
                    v18 = v16;
                    v52 = v18;
                    v43 = 0;
                    v44 = &v43;
                    v45 = 0x2020000000;
                    v46 = 0;
                    v42[0] = MEMORY[0x1E69E9820];
                    v42[1] = 3221225472;
                    v42[2] = sub_1A8655B98;
                    v42[3] = &unk_1E7827D48;
                    v42[4] = &v53;
                    v42[5] = &v47;
                    v42[6] = &v43;
                    [v39 enumerateKeysAndObjectsUsingBlock:v42];
                    if (*(v44 + 24) == 1)
                    {
                      v19 = [p_super copyWithUpdatedMessagePartText:v54[5] updatedMessagePartTranslation:v48[5]];
                      v20 = [v19 messageSummaryInfoDictionaryRepresentation];
                      [v40 addObject:v20];

                      v38 = 1;
                    }

                    else
                    {
                      [v40 addObject:v12];
                    }

                    _Block_object_dispose(&v43, 8);
                    _Block_object_dispose(&v47, 8);

                    _Block_object_dispose(&v53, 8);
                  }

                  else
                  {
                    v17 = IMLogHandleForCategory("IMMessageItem");
                    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                    {
                      sub_1A88C1778(&v59, v60, v17);
                    }
                  }
                }

                else
                {
                  p_super = IMLogHandleForCategory("IMMessageItem");
                  if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
                  {
                    sub_1A88C1738(&buf, v62, p_super);
                  }
                }
              }

              v9 = [v41 countByEnumeratingWithState:&v63 objects:v71 count:16];
            }

            while (v9);
          }

          v21 = [v40 copy];
          [v33 setObject:v21 forKeyedSubscript:v37];

          v6 = v36 + 1;
        }

        while (v36 + 1 != v34);
        v34 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
      }

      while (v34);

      if ((v38 & 1) == 0)
      {
        v30 = 0;
LABEL_35:

        v5 = v31;
        goto LABEL_36;
      }

      obj = [v33 copy];
      v22 = [(IMMessageItem *)v29 messageSummaryInfo];
      v23 = [v22 mutableCopy];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v26 = v25;

      [v26 setObject:obj forKeyedSubscript:@"ec"];
      v27 = [v26 copy];
      [(IMMessageItem *)v29 setMessageSummaryInfo:v27];
    }

    goto LABEL_35;
  }

  v30 = 0;
LABEL_36:

  return v30;
}

- (BOOL)updateTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:(id)a3
{
  v4 = a3;
  v5 = [(IMMessageItem *)self _updateFileTransfersArrayReplacingTemporaryFileTransferGUIDs:v4];
  v6 = [(IMMessageItem *)self _updateMessageBodyReplacingTemporaryFileTransferGUIDsWithUpdatedGUIDs:v4];
  LOBYTE(self) = [(IMMessageItem *)self _updateMessageEditHistoryReplacingTemporaryFileTransferGUIDsWithUpdatedGUIDs:v4];

  return ((v5 || v6) | self) & 1;
}

- (void)enumerateAttachmentGUIDsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(IMMessageItem *)self body];
  v6 = *MEMORY[0x1E69A5FD8];
  v7 = [v5 length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A8655DC8;
  v10[3] = &unk_1E7827D70;
  v11 = v5;
  v12 = v4;
  v8 = v4;
  v9 = v5;
  [v9 enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{0, v10}];
}

- (id)attachmentGUIDAtIndex:(unint64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1A8601EA8;
  v17 = sub_1A8602148;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A86560CC;
  v8[3] = &unk_1E7827D98;
  v8[5] = &v13;
  v8[6] = a3;
  v8[4] = &v9;
  [(IMMessageItem *)self enumerateAttachmentGUIDsWithBlock:v8];
  if ((v10[3] & 1) == 0 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v20 = self;
      v21 = 2048;
      v22 = a3;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "IMMessageItem.attachmentGUIDAtIndex: Did not find an attachment in message %@ at partKey %lu", buf, 0x16u);
    }
  }

  v6 = v14[5];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v6;
}

- (IMMessageItem)initWithCoder:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = IMMessageItem;
  v5 = [(IMItem *)&v53 initWithCoder:v4];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"plainBody"];
    [(IMMessageItem *)v5 setPlainBody:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"typingIndicatorIcon"];
    [(IMMessageItem *)v5 setTypingIndicatorIcon:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bodyData"];
    [(IMMessageItem *)v5 setBodyData:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subject"];
    [(IMMessageItem *)v5 setSubject:v9];

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v10 setWithObjects:{v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"fileTransferGUIDs"];
    [(IMMessageItem *)v5 setFileTransferGUIDs:v17];

    [v4 decodeDoubleForKey:@"timeRead"];
    if (v18 > 10.0)
    {
      v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      [(IMMessageItem *)v5 setTimeRead:v19];
    }

    [v4 decodeDoubleForKey:@"timeDelivered"];
    if (v20 > 10.0)
    {
      v21 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      [(IMMessageItem *)v5 setTimeDelivered:v21];
    }

    [v4 decodeDoubleForKey:@"timePlayed"];
    if (v22 > 10.0)
    {
      v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      [(IMMessageItem *)v5 setTimePlayed:v23];
    }

    v5->_flags = [v4 decodeInt64ForKey:@"flags"];
    v5->_error = [v4 decodeInt32ForKey:@"error"];
    v5->_replaceID = [v4 decodeInt64ForKey:@"replaceID"];
    v5->_expireState = [v4 decodeInt64ForKey:@"expireState"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payloadData"];
    [(IMMessageItem *)v5 setPayloadData:v24];

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expressiveSendStyleID"];
    [(IMMessageItem *)v5 setExpressiveSendStyleID:v25];

    [v4 decodeDoubleForKey:@"timeExpressiveSendPlayed"];
    if (v26 > 10.0)
    {
      v27 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      [(IMMessageItem *)v5 setTimeExpressiveSendPlayed:v27];
    }

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactsAvatarRecipeData"];
    [(IMMessageItem *)v5 setContactsAvatarRecipeData:v28];

    v29 = [v4 decodeObjectOfClasses:v16 forKey:@"messageSummaryInfo"];
    [(IMMessageItem *)v5 setMessageSummaryInfo:v29];

    v30 = [v4 decodeObjectOfClasses:v16 forKey:@"bizIntent"];
    [(IMMessageItem *)v5 setBizIntent:v30];

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    [(IMMessageItem *)v5 setLocale:v31];

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"biaReferenceID"];
    [(IMMessageItem *)v5 setBiaReferenceID:v32];

    v5->_useStandalone = [v4 decodeBoolForKey:@"useStandalone"];
    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notificationnotificationIDSTokenURI"];
    [(IMMessageItem *)v5 setNotificationIDSTokenURI:v33];

    v5->_shouldSendMeCard = [v4 decodeBoolForKey:@"shouldSendMeCard"];
    v5->_shouldNotifyOnSend = [v4 decodeBoolForKey:@"shouldNotifyOnSend"];
    v5->_sentViaRemoteIntent = [v4 decodeBoolForKey:@"sentViaRemoteIntent"];
    v5->_isBeingRetried = [v4 decodeBoolForKey:@"isBeingRetried"];
    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"retryToParticipant"];
    [(IMMessageItem *)v5 setRetryToParticipant:v34];

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"threadIdentifier"];
    [(IMMessageItem *)v5 setThreadIdentifier:v35];

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"threadOriginator"];
    [(IMMessageItem *)v5 setThreadOriginator:v36];

    v37 = [v4 decodeObjectOfClasses:v16 forKey:@"replyCountsByPart"];
    [(IMMessageItem *)v5 setReplyCountsByPart:v37];

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"syndicationRanges"];
    v39 = [IMMessagePartSyndicationRange rangesFromSerializedString:v38];
    [(IMMessageItem *)v5 setSyndicationRanges:v39];

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"syncedSyndicationRanges"];
    v41 = [IMMessagePartSyndicationRange rangesFromSerializedString:v40];
    [(IMMessageItem *)v5 setSyncedSyndicationRanges:v41];

    [v4 decodeDoubleForKey:@"dateEdited"];
    if (v42 > 10.0)
    {
      v43 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      [(IMMessageItem *)v5 setDateEdited:v43];
    }

    [v4 decodeDoubleForKey:@"dateRecovered"];
    if (v44 > 10.0)
    {
      v45 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      [(IMMessageItem *)v5 setDateRecovered:v45];
    }

    v5->_partCount = [v4 decodeIntegerForKey:@"partCount"];
    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupActivity"];
    [(IMMessageItem *)v5 setGroupActivity:v46];

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collaborationInitiationRequest"];
    [(IMMessageItem *)v5 setCollaborationInitiationRequestInfo:v47];

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fallbackHash"];
    [(IMMessageItem *)v5 setFallbackHash:v48];

    -[IMMessageItem setScheduleType:](v5, "setScheduleType:", [v4 decodeIntegerForKey:@"scheduleType"]);
    -[IMMessageItem setScheduleState:](v5, "setScheduleState:", [v4 decodeIntegerForKey:@"scheduleState"]);
    v49 = [v4 decodeObjectOfClasses:v16 forKey:@"telemetryMetrics"];
    [(IMMessageItem *)v5 setTelemetryMetrics:v49];

    v50 = [v4 decodeObjectOfClasses:v16 forKey:@"telemetryMetricsReasonCode"];
    [(IMMessageItem *)v5 setTelemetryMetricsReasonCode:v50];

    objc_autoreleasePoolPop(context);
  }

  return v5;
}

+ (BOOL)messageContainsSurfDD:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [v3 length];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A8656B0C;
  v7[3] = &unk_1E7827DE8;
  v7[4] = &v8;
  [v3 enumerateAttributesInRange:0 options:v4 usingBlock:{0, v7}];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v49.receiver = self;
  v49.super_class = IMMessageItem;
  v4 = a3;
  [(IMItem *)&v49 encodeWithCoder:v4];
  v5 = [(IMMessageItem *)self plainBody:v49.receiver];
  [v4 encodeObject:v5 forKey:@"plainBody"];

  v6 = [(IMMessageItem *)self typingIndicatorIcon];
  [v4 encodeObject:v6 forKey:@"typingIndicatorIcon"];

  v7 = [(IMMessageItem *)self bodyData];
  [v4 encodeObject:v7 forKey:@"bodyData"];

  v8 = [(IMMessageItem *)self subject];
  [v4 encodeObject:v8 forKey:@"subject"];

  v9 = [(IMMessageItem *)self fileTransferGUIDs];
  [v4 encodeObject:v9 forKey:@"fileTransferGUIDs"];

  v10 = [(IMMessageItem *)self timeRead];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;

  [v4 encodeDouble:@"timeRead" forKey:v12];
  v13 = [(IMMessageItem *)self timeDelivered];
  [v13 timeIntervalSinceReferenceDate];
  v15 = v14;

  [v4 encodeDouble:@"timeDelivered" forKey:v15];
  v16 = [(IMMessageItem *)self timePlayed];
  [v16 timeIntervalSinceReferenceDate];
  v18 = v17;

  [v4 encodeDouble:@"timePlayed" forKey:v18];
  [v4 encodeInt64:self->_flags forKey:@"flags"];
  [v4 encodeInt32:self->_error forKey:@"error"];
  [v4 encodeInt64:self->_replaceID forKey:@"replaceID"];
  [v4 encodeInt64:self->_expireState forKey:@"expireState"];
  v19 = [(IMMessageItem *)self payloadData];
  [v4 encodeObject:v19 forKey:@"payloadData"];

  v20 = [(IMMessageItem *)self expressiveSendStyleID];
  [v4 encodeObject:v20 forKey:@"expressiveSendStyleID"];

  v21 = [(IMMessageItem *)self timeExpressiveSendPlayed];
  [v21 timeIntervalSinceReferenceDate];
  v23 = v22;

  [v4 encodeDouble:@"timeExpressiveSendPlayed" forKey:v23];
  v24 = [(IMMessageItem *)self contactsAvatarRecipeData];
  [v4 encodeObject:v24 forKey:@"contactsAvatarRecipeData"];

  v25 = [(IMMessageItem *)self messageSummaryInfo];
  [v4 encodeObject:v25 forKey:@"messageSummaryInfo"];

  v26 = [(IMMessageItem *)self bizIntent];
  [v4 encodeObject:v26 forKey:@"bizIntent"];

  v27 = [(IMMessageItem *)self locale];
  [v4 encodeObject:v27 forKey:@"locale"];

  v28 = [(IMMessageItem *)self biaReferenceID];
  [v4 encodeObject:v28 forKey:@"biaReferenceID"];

  [v4 encodeBool:self->_useStandalone forKey:@"useStandalone"];
  v29 = [(IMMessageItem *)self notificationIDSTokenURI];
  [v4 encodeObject:v29 forKey:@"notificationnotificationIDSTokenURI"];

  [v4 encodeBool:self->_shouldSendMeCard forKey:@"shouldSendMeCard"];
  [v4 encodeBool:self->_shouldNotifyOnSend forKey:@"shouldNotifyOnSend"];
  [v4 encodeBool:self->_sentViaRemoteIntent forKey:@"sentViaRemoteIntent"];
  [v4 encodeBool:-[IMMessageItem isBeingRetried](self forKey:{"isBeingRetried"), @"isBeingRetried"}];
  v30 = [(IMMessageItem *)self retryToParticipant];
  [v4 encodeObject:v30 forKey:@"retryToParticipant"];

  v31 = [(IMMessageItem *)self threadIdentifier];
  [v4 encodeObject:v31 forKey:@"threadIdentifier"];

  v32 = [(IMMessageItem *)self threadOriginator];
  [v4 encodeObject:v32 forKey:@"threadOriginator"];

  v33 = [(IMMessageItem *)self replyCountsByPart];
  [v4 encodeObject:v33 forKey:@"replyCountsByPart"];

  v34 = [(IMMessageItem *)self syndicationRanges];
  v35 = [IMMessagePartSyndicationRange serializedStringFromArray:v34];
  [v4 encodeObject:v35 forKey:@"syndicationRanges"];

  v36 = [(IMMessageItem *)self syncedSyndicationRanges];
  v37 = [IMMessagePartSyndicationRange serializedStringFromArray:v36];
  [v4 encodeObject:v37 forKey:@"syncedSyndicationRanges"];

  v38 = [(IMMessageItem *)self dateEdited];
  [v38 timeIntervalSinceReferenceDate];
  v40 = v39;

  [v4 encodeDouble:@"dateEdited" forKey:v40];
  v41 = [(IMMessageItem *)self dateRecovered];
  [v41 timeIntervalSinceReferenceDate];
  v43 = v42;

  [v4 encodeDouble:@"dateRecovered" forKey:v43];
  [v4 encodeInteger:-[IMMessageItem partCount](self forKey:{"partCount"), @"partCount"}];
  v44 = [(IMMessageItem *)self groupActivity];
  [v4 encodeObject:v44 forKey:@"groupActivity"];

  v45 = [(IMMessageItem *)self collaborationInitiationRequestInfo];
  [v4 encodeObject:v45 forKey:@"collaborationInitiationRequest"];

  v46 = [(IMMessageItem *)self fallbackHash];
  [v4 encodeObject:v46 forKey:@"fallbackHash"];

  [v4 encodeInteger:-[IMMessageItem scheduleType](self forKey:{"scheduleType"), @"scheduleType"}];
  [v4 encodeInteger:-[IMMessageItem scheduleState](self forKey:{"scheduleState"), @"scheduleState"}];
  v47 = [(IMMessageItem *)self telemetryMetrics];
  [v4 encodeObject:v47 forKey:@"telemetryMetrics"];

  v48 = [(IMMessageItem *)self telemetryMetricsReasonCode];
  [v4 encodeObject:v48 forKey:@"telemetryMetricsReasonCode"];
}

- (IMMessageItem)initWithDictionary:(id)a3 hint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v79.receiver = self;
  v79.super_class = IMMessageItem;
  v8 = [(IMItem *)&v79 initWithDictionary:v6];
  if (v8)
  {
    v9 = [v6 objectForKey:@"bodyData"];
    [(IMMessageItem *)v8 setBodyData:v9];

    v10 = [v6 objectForKey:@"subject"];
    [(IMMessageItem *)v8 setSubject:v10];

    v11 = [v6 objectForKey:@"fileTransferGUIDs"];
    [(IMMessageItem *)v8 setFileTransferGUIDs:v11];

    v12 = [v6 objectForKey:@"timeRead"];
    [v12 doubleValue];
    v14 = v13;

    if (v14 > 10.0)
    {
      v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v14];
      [(IMMessageItem *)v8 setTimeRead:v15];
    }

    v16 = [v6 objectForKey:@"timeDelivered"];
    [v16 doubleValue];
    v18 = v17;

    if (v18 > 10.0)
    {
      v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v18];
      [(IMMessageItem *)v8 setTimeDelivered:v19];
    }

    v20 = [v6 objectForKey:@"timePlayed"];
    [v20 doubleValue];
    v22 = v21;

    if (v22 > 10.0)
    {
      v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v22];
      [(IMMessageItem *)v8 setTimePlayed:v23];
    }

    v24 = [v6 objectForKey:@"flags"];
    v8->_flags = [v24 unsignedLongLongValue];

    v25 = [v6 objectForKey:@"expireState"];
    v8->_expireState = [v25 longLongValue];

    v26 = [v6 objectForKey:@"error"];
    v8->_error = [v26 unsignedIntValue];

    v27 = [v6 objectForKey:@"plainBody"];
    plainBody = v8->_plainBody;
    v8->_plainBody = v27;

    v29 = [v6 objectForKey:@"typingIndicatorIcon"];
    typingIndicatorIcon = v8->_typingIndicatorIcon;
    v8->_typingIndicatorIcon = v29;

    v31 = [v6 objectForKey:@"payloadData"];
    [(IMMessageItem *)v8 setPayloadData:v31];

    v32 = [v6 objectForKey:@"balloonBundleID"];
    [(IMItem *)v8 setBalloonBundleID:v32];

    v33 = [v6 objectForKey:@"expressiveSendStyleID"];
    [(IMMessageItem *)v8 setExpressiveSendStyleID:v33];

    v34 = [v6 objectForKey:@"timeExpressiveSendPlayed"];
    [v34 doubleValue];
    v36 = v35;

    if (v36 > 10.0)
    {
      v37 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v36];
      [(IMMessageItem *)v8 setTimeExpressiveSendPlayed:v37];
    }

    if ([(IMMessageItem *)v8 isEqual:v7])
    {
      v38 = [v7 body];
      [(IMMessageItem *)v8 setBody:v38];
    }

    v39 = [v6 objectForKey:@"contactsAvatarRecipeData"];
    [(IMMessageItem *)v8 setContactsAvatarRecipeData:v39];

    v40 = [v6 objectForKey:@"messageSummaryInfo"];
    [(IMMessageItem *)v8 setMessageSummaryInfo:v40];

    v41 = [v6 objectForKey:@"bizIntent"];
    [(IMMessageItem *)v8 setBizIntent:v41];

    v42 = [v6 objectForKey:@"locale"];
    [(IMMessageItem *)v8 setLocale:v42];

    v43 = [v6 objectForKey:@"biaReferenceID"];
    [(IMMessageItem *)v8 setBiaReferenceID:v43];

    v44 = [v6 objectForKey:@"useStandalone"];
    -[IMMessageItem setUseStandalone:](v8, "setUseStandalone:", [v44 BOOLValue]);

    v45 = [v6 objectForKey:@"notificationnotificationIDSTokenURI"];
    [(IMMessageItem *)v8 setNotificationIDSTokenURI:v45];

    v46 = [v6 objectForKey:@"shouldSendMeCard"];
    -[IMMessageItem setShouldSendMeCard:](v8, "setShouldSendMeCard:", [v46 BOOLValue]);

    v47 = [v6 objectForKey:@"shouldNotifyOnSend"];
    -[IMMessageItem setShouldNotifyOnSend:](v8, "setShouldNotifyOnSend:", [v47 BOOLValue]);

    v48 = [v6 objectForKey:@"sentViaRemoteIntent"];
    -[IMMessageItem setSentViaRemoteIntent:](v8, "setSentViaRemoteIntent:", [v48 BOOLValue]);

    v49 = [v6 objectForKey:@"isBeingRetried"];
    -[IMMessageItem setIsBeingRetried:](v8, "setIsBeingRetried:", [v49 BOOLValue]);

    v50 = [v6 objectForKey:@"retryToParticipant"];
    [(IMMessageItem *)v8 setRetryToParticipant:v50];

    v51 = [v6 objectForKey:@"threadIdentifier"];
    [(IMMessageItem *)v8 setThreadIdentifier:v51];

    [(IMMessageItem *)v8 setThreadOriginator:0];
    if ([(IMMessageItem *)v8 isReply])
    {
      v52 = [v6 objectForKey:@"threadOriginator"];
      if (v52)
      {
        v53 = [[IMMessageItem alloc] initWithDictionary:v52 hint:0];
        [(IMMessageItem *)v8 setThreadOriginator:v53];
      }
    }

    v54 = [v6 objectForKey:@"replyCountsByPart"];
    [(IMMessageItem *)v8 setReplyCountsByPart:v54];

    v55 = [v6 objectForKey:@"syndicationRanges"];
    v56 = [IMMessagePartSyndicationRange rangesFromSerializedString:v55];
    [(IMMessageItem *)v8 setSyndicationRanges:v56];

    v57 = [v6 objectForKey:@"syncedSyndicationRanges"];
    v58 = [IMMessagePartSyndicationRange rangesFromSerializedString:v57];
    [(IMMessageItem *)v8 setSyncedSyndicationRanges:v58];

    v59 = [v6 objectForKey:@"dateEdited"];
    [v59 doubleValue];
    v61 = v60;

    if (v61 > 10.0)
    {
      v62 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v61];
      [(IMMessageItem *)v8 setDateEdited:v62];
    }

    v63 = [v6 objectForKey:@"dateRecovered"];
    [v63 doubleValue];
    v65 = v64;

    if (v65 > 10.0)
    {
      v66 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v65];
      [(IMMessageItem *)v8 setDateRecovered:v66];
    }

    v67 = [v6 objectForKey:@"partCount"];
    -[IMMessageItem setPartCount:](v8, "setPartCount:", [v67 unsignedIntegerValue]);

    v68 = [v6 objectForKey:@"groupActivity"];
    [(IMMessageItem *)v8 setGroupActivity:v68];

    v69 = [v6 objectForKey:@"collaborationInitiationRequest"];
    [(IMMessageItem *)v8 setCollaborationInitiationRequestInfo:v69];

    v70 = [v6 objectForKey:@"replaceID"];
    -[IMMessageItem setReplaceID:](v8, "setReplaceID:", [v70 longLongValue]);

    v71 = [v6 objectForKey:@"fallbackHash"];
    [(IMMessageItem *)v8 setFallbackHash:v71];

    v72 = [v6 objectForKey:@"scheduleType"];
    [v72 doubleValue];
    [(IMMessageItem *)v8 setScheduleType:v73];

    v74 = [v6 objectForKey:@"scheduleState"];
    [v74 doubleValue];
    [(IMMessageItem *)v8 setScheduleState:v75];

    v76 = [v6 objectForKey:@"telemetryMetrics"];
    [(IMMessageItem *)v8 setTelemetryMetrics:v76];

    v77 = [v6 objectForKey:@"telemetryMetricsReasonCode"];
    [(IMMessageItem *)v8 setTelemetryMetricsReasonCode:v77];
  }

  return v8;
}

- (IMMessageItem)initWithSender:(id)a3 time:(id)a4 body:(id)a5 attributes:(id)a6 fileTransferGUIDs:(id)a7 flags:(unint64_t)a8 error:(id)a9 guid:(id)a10 type:(int64_t)a11 threadIdentifier:(id)a12
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  v22 = a10;
  v23 = a12;
  if (v16)
  {
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObject:v16 forKey:*MEMORY[0x1E69A6310]];
  }

  else
  {
    v24 = 0;
  }

  LODWORD(v27) = [v21 code];
  v25 = -[IMMessageItem initWithSenderInfo:time:timeRead:timeDelivered:timePlayed:subject:body:bodyData:attributes:fileTransferGUIDs:flags:guid:messageID:account:accountID:service:handle:roomName:unformattedID:countryCode:expireState:balloonBundleID:payloadData:expressiveSendStyleID:timeExpressiveSendPlayed:bizIntent:locale:biaReferenceID:errorType:type:threadIdentifier:syndicationRanges:syncedSyndicationRanges:partCount:dateEdited:dateRecovered:scheduleType:scheduleState:cloudKitChatID:](self, "initWithSenderInfo:time:timeRead:timeDelivered:timePlayed:subject:body:bodyData:attributes:fileTransferGUIDs:flags:guid:messageID:account:accountID:service:handle:roomName:unformattedID:countryCode:expireState:balloonBundleID:payloadData:expressiveSendStyleID:timeExpressiveSendPlayed:bizIntent:locale:biaReferenceID:errorType:type:threadIdentifier:syndicationRanges:syncedSyndicationRanges:partCount:dateEdited:dateRecovered:scheduleType:scheduleState:cloudKitChatID:", v24, v17, 0, 0, 0, 0, v18, 0, v19, v20, a8, v22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v27, a11, v23, 0, 0, [v18 __im_countMessageParts], 0, 0, 0, 0, 0);
  if (v16)
  {
  }

  return v25;
}

- (IMMessageItem)initWithSender:(id)a3 time:(id)a4 guid:(id)a5 type:(int64_t)a6
{
  if (a3)
  {
    v9 = MEMORY[0x1E695DF20];
    v10 = *MEMORY[0x1E69A6310];
    v11 = a5;
    v12 = a4;
    v13 = [v9 dictionaryWithObject:a3 forKey:v10];
    LODWORD(v20) = 0;
    v14 = [(IMMessageItem *)self initWithSenderInfo:v13 time:v12 timeRead:0 timeDelivered:0 timePlayed:0 subject:0 body:0 bodyData:0 attributes:0 fileTransferGUIDs:0 flags:0 guid:v11 messageID:0 account:0 accountID:0 service:0 handle:0 roomName:0 unformattedID:0 countryCode:0 expireState:0 balloonBundleID:0 payloadData:0 expressiveSendStyleID:0 timeExpressiveSendPlayed:0 bizIntent:0 locale:0 biaReferenceID:0 errorType:v20 type:0 threadIdentifier:0 syndicationRanges:0 syncedSyndicationRanges:0 partCount:0 dateEdited:0 dateRecovered:0 scheduleType:0 scheduleState:0 cloudKitChatID:0];

    v15 = v14;
  }

  else
  {
    v16 = a5;
    v17 = a4;
    LODWORD(v20) = 0;
    v18 = [(IMMessageItem *)self initWithSenderInfo:0 time:v17 timeRead:0 timeDelivered:0 timePlayed:0 subject:0 body:0 bodyData:0 attributes:0 fileTransferGUIDs:0 flags:0 guid:v16 messageID:0 account:0 accountID:0 service:0 handle:0 roomName:0 unformattedID:0 countryCode:0 expireState:0 balloonBundleID:0 payloadData:0 expressiveSendStyleID:0 timeExpressiveSendPlayed:0 bizIntent:0 locale:0 biaReferenceID:0 errorType:v20 type:0 threadIdentifier:0 syndicationRanges:0 syncedSyndicationRanges:0 partCount:0 dateEdited:0 dateRecovered:0 scheduleType:0 scheduleState:0 cloudKitChatID:0];

    v15 = v18;
  }

  return v15;
}

- (IMMessageItem)initWithSenderInfo:(id)a3 time:(id)a4 timeRead:(id)a5 timeDelivered:(id)a6 timePlayed:(id)a7 subject:(id)a8 body:(id)a9 bodyData:(id)a10 attributes:(id)a11 fileTransferGUIDs:(id)a12 flags:(unint64_t)a13 guid:(id)a14 messageID:(int64_t)a15 account:(id)a16 accountID:(id)a17 service:(id)a18 handle:(id)a19 roomName:(id)a20 unformattedID:(id)a21 countryCode:(id)a22 expireState:(int64_t)a23 balloonBundleID:(id)a24 payloadData:(id)a25 expressiveSendStyleID:(id)a26 timeExpressiveSendPlayed:(id)a27 bizIntent:(id)a28 locale:(id)a29 biaReferenceID:(id)a30 errorType:(unsigned int)a31 type:(int64_t)a32 threadIdentifier:(id)a33 syndicationRanges:(id)a34 syncedSyndicationRanges:(id)a35 partCount:(unint64_t)a36 dateEdited:(id)a37 dateRecovered:(id)a38 scheduleType:(unint64_t)a39 scheduleState:(unint64_t)a40 cloudKitChatID:(id)a41
{
  v69 = a5;
  v68 = a6;
  v67 = a7;
  v66 = a8;
  v60 = a9;
  v63 = a10;
  v59 = a12;
  v62 = a24;
  v65 = a25;
  v61 = a26;
  v44 = a27;
  v64 = a28;
  v45 = a29;
  v46 = a30;
  v47 = a33;
  v48 = a34;
  v49 = a35;
  v50 = a37;
  v51 = a38;
  v52 = a41;
  v70.receiver = self;
  v70.super_class = IMMessageItem;
  v53 = [(IMItem *)&v70 initWithSenderInfo:a3 time:a4 guid:a14 messageID:a15 account:a16 accountID:a17 service:a18 handle:a19 roomName:a20 unformattedID:a21 countryCode:a22 type:a32];
  v54 = v53;
  if (v53)
  {
    [(IMMessageItem *)v53 setSubject:v66];
    [(IMMessageItem *)v54 setTimeRead:v69];
    [(IMMessageItem *)v54 setTimeDelivered:v68];
    [(IMMessageItem *)v54 setTimePlayed:v67];
    [(IMMessageItem *)v54 _updateFlags:a13];
    [(IMMessageItem *)v54 setExpireState:a23];
    [(IMMessageItem *)v54 setErrorCode:a31];
    objc_storeStrong(&v54->_fileTransferGUIDs, a12);
    objc_storeStrong(&v54->_body, a9);
    [(IMMessageItem *)v54 setPayloadData:v65];
    [(IMItem *)v54 setBalloonBundleID:v62];
    [(IMMessageItem *)v54 setExpressiveSendStyleID:v61];
    [(IMMessageItem *)v54 setTimeExpressiveSendPlayed:v44];
    if (v63)
    {
      objc_storeStrong(&v54->_bodyData, a10);
    }

    [(IMMessageItem *)v54 adjustIsEmptyFlag];
    [(IMMessageItem *)v54 setContactsAvatarRecipeData:0];
    [(IMMessageItem *)v54 setBizIntent:v64];
    [(IMMessageItem *)v54 setLocale:v45];
    [(IMMessageItem *)v54 setBiaReferenceID:v46];
    [(IMMessageItem *)v54 setThreadIdentifier:v47];
    [(IMMessageItem *)v54 setThreadOriginator:0];
    [(IMMessageItem *)v54 setSyndicationRanges:v48];
    [(IMMessageItem *)v54 setSyncedSyndicationRanges:v49];
    [(IMMessageItem *)v54 setPartCount:a36];
    [(IMMessageItem *)v54 setDateEdited:v50];
    [(IMMessageItem *)v54 setDateRecovered:v51];
    [(IMMessageItem *)v54 setScheduleType:a39];
    [(IMMessageItem *)v54 setScheduleState:a40];
    [(IMItem *)v54 setCloudKitChatID:v52];
  }

  return v54;
}

- (id)sender
{
  v2 = [(IMItem *)self senderInfo];
  v3 = [v2 objectForKey:*MEMORY[0x1E69A6310]];

  return v3;
}

- (BOOL)isFindMyPlugin
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  if ([v3 isWaldoEnabled])
  {
    v4 = [(IMItem *)self balloonBundleID];
    if ([v4 length])
    {
      v5 = [(IMItem *)self balloonBundleID];
      v6 = [v5 containsString:@"com.apple.findmy.FindMyMessagesApp"];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isFileAttachment
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  v4 = [v3 isSWYAttachmentsEnabled];

  if (v4)
  {
    v5 = [(IMItem *)self balloonBundleID];
    if (v5)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v7 = [(IMMessageItem *)self fileTransferGUIDs];
      if (![v7 count] || -[IMMessageItem isAudioMessage](self, "isAudioMessage") || -[IMMessageItem isTypingMessage](self, "isTypingMessage") || -[IMMessageItem isGroupTypingMessage](self, "isGroupTypingMessage"))
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = ![(IMMessageItem *)self isLocatingMessage];
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)setIsTapToRetry:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (void)setIsCorrupt:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)setIsSpam:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)setIsSOS:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFF7FFFFFFFFFLL | v3;
}

- (void)setIsHQTransfer:(BOOL)a3
{
  v3 = a3;
  v5 = +[IMFeatureFlags sharedFeatureFlags];
  v6 = [v5 isLQMHQEnabled];

  if (v6)
  {
    v7 = [(IMMessageItem *)self messageSummaryInfo];
    if ([v7 count])
    {
      v8 = [(IMMessageItem *)self messageSummaryInfo];
      v10 = [v8 mutableCopy];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    [v10 setObject:v9 forKey:@"ihqt"];

    [(IMMessageItem *)self setMessageSummaryInfo:v10];
  }
}

- (void)setIsFailedHQTransfer:(BOOL)a3
{
  v3 = a3;
  v5 = +[IMFeatureFlags sharedFeatureFlags];
  v6 = [v5 isLQMHQEnabled];

  if (v6)
  {
    v7 = [(IMMessageItem *)self messageSummaryInfo];
    if ([v7 count])
    {
      v8 = [(IMMessageItem *)self messageSummaryInfo];
      v10 = [v8 mutableCopy];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    [v10 setObject:v9 forKey:@"ihqtf"];

    [(IMMessageItem *)self setMessageSummaryInfo:v10];
  }
}

- (BOOL)wasEverTimeSensitive
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  v4 = [v3 isPriorityMessagesEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(IMMessageItem *)self messageSummaryInfo];
  v6 = [v5 objectForKeyedSubscript:@"wets"];
  v7 = [v6 BOOLValue];

  return v7;
}

- (void)setWasEverTimeSensitive:(BOOL)a3
{
  v3 = a3;
  v5 = +[IMFeatureFlags sharedFeatureFlags];
  v6 = [v5 isPriorityMessagesEnabled];

  if (v6)
  {
    v7 = [(IMMessageItem *)self messageSummaryInfo];
    if ([v7 count])
    {
      v8 = [(IMMessageItem *)self messageSummaryInfo];
      v10 = [v8 mutableCopy];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    [v10 setObject:v9 forKey:@"wets"];

    [(IMMessageItem *)self setMessageSummaryInfo:v10];
  }
}

- (NSString)originalGUID
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKeyedSubscript:@"orgid"];

  return v3;
}

- (void)setOriginalGUID:(id)a3
{
  v4 = a3;
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v5 count])
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v7 setObject:v4 forKey:@"orgid"];
  [(IMMessageItem *)self setMessageSummaryInfo:v7];
}

- (void)setIsCritical:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFBFFFFFFFFFLL | v3;
}

- (void)setIsStewie:(BOOL)a3
{
  v3 = a3;
  v5 = +[IMFeatureFlags sharedFeatureFlags];
  v6 = [v5 stewieEnabled];

  if (v6)
  {
    v7 = 0x200000000;
    if (!v3)
    {
      v7 = 0;
    }

    self->_flags = self->_flags & 0xFFFFFFFDFFFFFFFFLL | v7;
  }
}

- (int64_t)stewieSequenceNumber
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  v4 = [v3 stewieEnabled];

  if (!v4)
  {
    return -1;
  }

  v5 = [(IMMessageItem *)self messageSummaryInfo];
  v6 = [v5 objectForKey:@"stsn"];

  if (!v6 || [v6 integerValue] < 0)
  {
    v7 = -1;
  }

  else
  {
    v7 = [v6 integerValue];
  }

  return v7;
}

- (void)setStewieSequenceNumber:(int64_t)a3
{
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v5 count])
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v8 setObject:v7 forKey:@"stsn"];

  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (void)setStewieConversationID:(int64_t)a3
{
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v5 count])
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v8 setObject:v7 forKey:@"stid"];

  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (NSUUID)stewieConversationUUID
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  v4 = [v3 stewieEnabled];

  if (v4)
  {
    v5 = [(IMMessageItem *)self messageSummaryInfo];
    v6 = [v5 objectForKeyedSubscript:@"stcuuid"];

    if ([v6 length])
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setStewieConversationUUID:(id)a3
{
  v10 = a3;
  v4 = +[IMFeatureFlags sharedFeatureFlags];
  v5 = [v4 stewieEnabled];

  if (v5)
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    if ([v6 count])
    {
      v7 = [(IMMessageItem *)self messageSummaryInfo];
      v8 = [v7 mutableCopy];
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v9 = [v10 UUIDString];
    [v8 setObject:v9 forKeyedSubscript:@"stcuuid"];

    [(IMMessageItem *)self setMessageSummaryInfo:v8];
  }
}

- (int64_t)transcriptSharingMessageType
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  v4 = [v3 isTranscriptSharingEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(IMMessageItem *)self messageSummaryInfo];
  v6 = [v5 objectForKey:@"tsmt"];

  if (!v6 || [v6 integerValue] < 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v6 integerValue];
  }

  return v7;
}

- (void)setTranscriptSharingMessageType:(int64_t)a3
{
  v5 = +[IMFeatureFlags sharedFeatureFlags];
  v6 = [v5 isTranscriptSharingEnabled];

  if (v6)
  {
    v7 = [(IMMessageItem *)self messageSummaryInfo];
    if ([v7 count])
    {
      v8 = [(IMMessageItem *)self messageSummaryInfo];
      v10 = [v8 mutableCopy];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v10 setValue:v9 forKey:@"tsmt"];

    [(IMMessageItem *)self setMessageSummaryInfo:v10];
  }
}

- (BOOL)isInitialTranscriptSharingItem
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  v4 = [v3 isTranscriptSharingEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(IMMessageItem *)self messageSummaryInfo];
  v6 = [v5 objectForKey:@"tsfirstitem"];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 BOOLValue];

  return v7;
}

- (void)setInitialTranscriptSharingItem:(BOOL)a3
{
  v3 = a3;
  v5 = +[IMFeatureFlags sharedFeatureFlags];
  v6 = [v5 isTranscriptSharingEnabled];

  if (v6)
  {
    v7 = [(IMMessageItem *)self messageSummaryInfo];
    if ([v7 count])
    {
      v8 = [(IMMessageItem *)self messageSummaryInfo];
      v10 = [v8 mutableCopy];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    [v10 setValue:v9 forKey:@"tsfirstitem"];

    [(IMMessageItem *)self setMessageSummaryInfo:v10];
  }
}

- (void)setIsPendingSatelliteSend:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (void)setNeedsRelay:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (void)setSentOrReceivedOffGrid:(BOOL)a3
{
  v3 = 0x80000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (BOOL)isTimeSensitive
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  v4 = [v3 isIntroductionsEnabled];

  if (v4)
  {
    return (BYTE5(self->_flags) >> 4) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)setIsTimeSensitive:(BOOL)a3
{
  v3 = a3;
  v5 = +[IMFeatureFlags sharedFeatureFlags];
  v6 = [v5 isIntroductionsEnabled];

  if (v6)
  {
    if (v3)
    {
      [(IMMessageItem *)self setWasEverTimeSensitive:1];
      v7 = self->_flags | 0x100000000000;
    }

    else
    {
      v7 = self->_flags & 0xFFFFEFFFFFFFFFFFLL;
    }

    self->_flags = v7;
  }
}

- (NSArray)replicatedFallbackGUIDs
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKeyedSubscript:@"rfgs"];

  return v3;
}

- (void)setReplicatedFallbackGUIDs:(id)a3
{
  v7 = a3;
  v4 = [(IMMessageItem *)self messageSummaryInfo];
  v5 = [v4 mutableCopy];

  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:@"rfgs"];
  }

  else
  {
    [v5 removeObjectForKey:@"rfgs"];
  }

  v6 = [v5 copy];
  [(IMMessageItem *)self setMessageSummaryInfo:v6];
}

- (void)setIsKeyTransparencyVerifiedMessage:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (BOOL)shouldSendPartIndexesInMessageBody
{
  v3 = [(IMMessageItem *)self body];
  v4 = [v3 __im_countMessageParts];

  if (v4 > 1)
  {
    return 1;
  }

  v5 = [(IMMessageItem *)self editedPartIndexes];
  v6 = [v5 count];

  if (v6)
  {
    return 1;
  }

  v9 = [(IMMessageItem *)self retractedPartIndexes];
  v7 = [v9 count] != 0;

  return v7;
}

- (unint64_t)replyCountForPartIndex:(int64_t)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [(IMMessageItem *)self replyCountsByPart];
  if ([v4 count])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1A86599E0;
    v7[3] = &unk_1E7827E10;
    v7[4] = &v8;
    v7[5] = a3;
    [v4 enumerateKeysAndObjectsUsingBlock:v7];
  }

  v5 = v9[3];

  _Block_object_dispose(&v8, 8);
  return v5;
}

- (BOOL)needsRepeatForRelayReplication
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"nrr"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setNeedsRepeatForRelayReplication:(BOOL)a3
{
  v3 = a3;
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v5 count])
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  if (v3)
  {
    v7 = MEMORY[0x1E695E118];
  }

  else
  {
    v7 = 0;
  }

  [v8 setObject:v7 forKeyedSubscript:@"nrr"];
  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (BOOL)isSatelliteMessageRetry
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"ismr"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setSatelliteMessageRetry:(BOOL)a3
{
  v3 = a3;
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v5 count])
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  if (v3)
  {
    v7 = MEMORY[0x1E695E118];
  }

  else
  {
    v7 = 0;
  }

  [v8 setObject:v7 forKeyedSubscript:@"ismr"];
  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (unint64_t)expectedOffGridCapableDeliveries
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"eogcd"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setExpectedOffGridCapableDeliveries:(unint64_t)a3
{
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v5 count])
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  if (a3)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v8 setObject:v7 forKeyedSubscript:@"eogcd"];
  }

  else
  {
    [v8 setObject:0 forKeyedSubscript:@"eogcd"];
  }

  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (NSString)expectedServiceForCrossServiceReplacement
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"acsr"];

  return v3;
}

- (void)setExpectedServiceForCrossServiceReplacement:(id)a3
{
  v4 = a3;
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v5 count])
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v7 setObject:v4 forKeyedSubscript:@"acsr"];
  [(IMMessageItem *)self setMessageSummaryInfo:v7];
}

- (NSString)rcsAdvisedAction
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"raa"];

  return v3;
}

- (void)setRcsAdvisedAction:(id)a3
{
  v4 = a3;
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v5 count])
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v7 setObject:v4 forKeyedSubscript:@"raa"];
  [(IMMessageItem *)self setMessageSummaryInfo:v7];
}

- (BOOL)encrypted
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"enc"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setEncrypted:(BOOL)a3
{
  v3 = a3;
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v5 count])
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v8 setObject:v7 forKeyedSubscript:@"enc"];

  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (NSNumber)messageContentType
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"amc"];

  return v3;
}

- (void)setMessageContentType:(id)a3
{
  v4 = a3;
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v5 count])
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v7 setObject:v4 forKeyedSubscript:@"amc"];
  [(IMMessageItem *)self setMessageSummaryInfo:v7];
}

- (NSString)spamModelVersion
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"smv"];

  return v3;
}

- (void)setSpamModelVersion:(id)a3
{
  v4 = a3;
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v5 count])
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v7 setObject:v4 forKeyedSubscript:@"smv"];
  [(IMMessageItem *)self setMessageSummaryInfo:v7];
}

- (NSDictionary)spamModelMetadata
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"smm"];

  return v3;
}

- (void)setSpamModelMetadata:(id)a3
{
  v4 = a3;
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v5 count])
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = [v4 __im_propertyListSafeCopy];

  [v8 setObject:v7 forKeyedSubscript:@"smm"];
  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (id)criticalMessagingAppName
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"critical-messaging-app-name"];

  return v3;
}

- (void)setCriticalMessagingAppName:(id)a3
{
  v4 = a3;
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v5 count])
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v7 setObject:v4 forKeyedSubscript:@"critical-messaging-app-name"];
  [(IMMessageItem *)self setMessageSummaryInfo:v7];
}

- (NSDate)scheduledMessageLastModifiedTime
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"smlmt"];

  return v3;
}

- (void)setScheduledMessageLastModifiedTime:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(IMMessageItem *)self messageSummaryInfo];
    if ([v5 count])
    {
      v6 = [(IMMessageItem *)self messageSummaryInfo];
      v7 = [v6 mutableCopy];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v7 setObject:v4 forKeyedSubscript:@"smlmt"];
    [(IMMessageItem *)self setMessageSummaryInfo:v7];
  }
}

- (NSArray)scheduledMessageOriginalTransferGUIDs
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"smotg"];

  return v3;
}

- (void)setScheduledMessageOriginalTransferGUIDs:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(IMMessageItem *)self messageSummaryInfo];
    if ([v5 count])
    {
      v6 = [(IMMessageItem *)self messageSummaryInfo];
      v7 = [v6 mutableCopy];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v7 setObject:v4 forKeyedSubscript:@"smotg"];
    [(IMMessageItem *)self setMessageSummaryInfo:v7];
  }
}

- (NSDictionary)messageSummaryInfoForSending
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (qword_1EB309668 != -1)
  {
    sub_1A88C17B8();
  }

  v4 = qword_1EB309660;
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A865A89C;
  v11[3] = &unk_1E7827E38;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (id)editedMessageItemWithOriginalMessageItem:(id)a3 retractedPartIndex:(int64_t)a4 shouldRetractSubject:(BOOL)a5
{
  v5 = a5;
  v8 = MEMORY[0x1E696AC90];
  v9 = a3;
  v10 = [v8 indexSetWithIndex:a4];
  v11 = [a1 editedMessageItemWithOriginalMessageItem:v9 retractedPartIndexes:v10 shouldRetractSubject:v5];

  return v11;
}

+ (id)editedMessageItemWithOriginalMessageItem:(id)a3 retractedPartIndexes:(id)a4 shouldRetractSubject:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 body];
  if (!v9)
  {
    v10 = [v7 plainBody];
    v11 = v10;
    v12 = &stru_1F1BB91F0;
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v13];
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1A8601EA8;
  v30 = sub_1A8602148;
  v14 = v9;
  v15 = 0;
  v31 = v14;
  if (!a5)
  {
    v15 = [v7 subject];
  }

  v16 = [v7 copyWithFlags:{objc_msgSend(v7, "flags")}];
  [v16 _setMessageID:{objc_msgSend(v7, "messageID")}];
  [v16 setPlainBody:0];
  [v16 setSubject:v15];
  [v16 setSortID:0];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = sub_1A865ABF0;
  v23 = &unk_1E7827E60;
  v25 = &v26;
  v17 = v16;
  v24 = v17;
  [v8 enumerateIndexesUsingBlock:&v20];
  v18 = [MEMORY[0x1E695DF00] __im_dateWithCurrentServerTime];
  [v17 setDateEdited:v18];

  [v17 setBody:v27[5]];
  _Block_object_dispose(&v26, 8);

  return v17;
}

+ (id)editedMessageItemWithOriginalMessageItem:(id)a3 editedPartIndex:(int64_t)a4 newPartText:(id)a5 newPartTranslation:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v9 body];
  if (!v12)
  {
    v13 = [v9 plainBody];
    v14 = v13;
    v15 = &stru_1F1BB91F0;
    if (v13)
    {
      v15 = v13;
    }

    v16 = v15;

    v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v16];
  }

  if (a4 == -1)
  {
    v17 = [v10 string];
    v18 = v12;
  }

  else
  {
    v17 = [v9 subject];
    v18 = [v12 __im_messageTextByReplacingMessagePartIndex:a4 withNewPartText:v10];
  }

  v19 = v18;
  v20 = [v9 copyWithFlags:{objc_msgSend(v9, "flags")}];
  [v20 _setMessageID:{objc_msgSend(v9, "messageID")}];
  [v20 setBody:v19];
  [v20 setPlainBody:0];
  [v20 setSubject:v17];
  v21 = [MEMORY[0x1E695DF00] __im_dateWithCurrentServerTime];
  [v20 setDateEdited:v21];

  [v20 addEditedPartIndex:a4];
  [v20 setSortID:0];
  v22 = +[IMFeatureFlags sharedFeatureFlags];
  v23 = [v22 isAutomaticOutgoingTranslationEnabled];

  if (v11 && v23)
  {
    [v20 addTranslation:v11 forMessagePart:a4];
  }

  return v20;
}

- (NSIndexSet)editedPartIndexes
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"ep"];

  if (v3)
  {
    [MEMORY[0x1E696AC90] __im_indexSetFromNumberArray:v3];
  }

  else
  {
    [MEMORY[0x1E696AC90] indexSet];
  }
  v4 = ;

  return v4;
}

- (void)setEditedPartIndexes:(id)a3
{
  v4 = a3;
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v5 count])
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    v9 = [v6 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = [v4 __im_numberArray];

  [v9 setObject:v7 forKey:@"ep"];
  v8 = [v9 copy];
  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (void)addEditedPartIndex:(int64_t)a3
{
  v7 = [(IMMessageItem *)self editedPartIndexes];
  v5 = [v7 mutableCopy];
  [v5 addIndex:a3];
  v6 = [v5 copy];
  [(IMMessageItem *)self setEditedPartIndexes:v6];
}

- (NSIndexSet)retractedPartIndexes
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"rp"];

  if (v3)
  {
    [MEMORY[0x1E696AC90] __im_indexSetFromNumberArray:v3];
  }

  else
  {
    [MEMORY[0x1E696AC90] indexSet];
  }
  v4 = ;

  return v4;
}

- (void)setRetractedPartIndexes:(id)a3
{
  v4 = a3;
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v5 count])
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    v9 = [v6 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = [v4 __im_numberArray];

  [v9 setObject:v7 forKey:@"rp"];
  v8 = [v9 copy];
  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (void)addRetractedPartIndex:(int64_t)a3
{
  v7 = [(IMMessageItem *)self retractedPartIndexes];
  v5 = [v7 mutableCopy];
  [v5 addIndex:a3];
  v6 = [v5 copy];
  [(IMMessageItem *)self setRetractedPartIndexes:v6];
}

- (NSIndexSet)failedEditPartIndexes
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"edfp"];

  if (v3)
  {
    [MEMORY[0x1E696AC90] __im_indexSetFromNumberArray:v3];
  }

  else
  {
    [MEMORY[0x1E696AC90] indexSet];
  }
  v4 = ;

  return v4;
}

- (void)setFailedEditPartIndexes:(id)a3
{
  v4 = a3;
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v5 count])
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    v9 = [v6 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = [v4 __im_numberArray];

  [v9 setObject:v7 forKey:@"edfp"];
  v8 = [v9 copy];
  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (void)addFailedEditPartIndex:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(IMItem *)self guid];
      v10 = 134218242;
      v11 = a3;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Adding failed edit part index %ld to message %@", &v10, 0x16u);
    }
  }

  v7 = [(IMMessageItem *)self failedEditPartIndexes];
  v8 = [v7 mutableCopy];
  [v8 addIndex:a3];
  v9 = [v8 copy];
  [(IMMessageItem *)self setFailedEditPartIndexes:v9];
}

- (NSIndexSet)failedRetractPartIndexes
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"rdfp"];

  if (v3)
  {
    [MEMORY[0x1E696AC90] __im_indexSetFromNumberArray:v3];
  }

  else
  {
    [MEMORY[0x1E696AC90] indexSet];
  }
  v4 = ;

  return v4;
}

- (void)setFailedRetractPartIndexes:(id)a3
{
  v4 = a3;
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v5 count])
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    v9 = [v6 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = [v4 __im_numberArray];

  [v9 setObject:v7 forKey:@"rdfp"];
  v8 = [v9 copy];
  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (void)addFailedRetractPartIndex:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(IMItem *)self guid];
      v10 = 134218242;
      v11 = a3;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Adding failed retract part index %ld to message %@", &v10, 0x16u);
    }
  }

  v7 = [(IMMessageItem *)self failedRetractPartIndexes];
  v8 = [v7 mutableCopy];
  [v8 addIndex:a3];
  v9 = [v8 copy];
  [(IMMessageItem *)self setFailedRetractPartIndexes:v9];
}

- (id)historyForMessagePart:(int64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [(IMMessageItem *)self messageSummaryInfo];
  v5 = [v4 _dictionaryForKey:@"ec"];

  if ([v5 count])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v7 = [v6 stringValue];

    v8 = [v5 _arrayForKey:v7];
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [IMMessagePartHistoricalContent alloc];
            v17 = [(IMMessagePartHistoricalContent *)v16 initWithMessageSummaryInfoDictionary:v15, v20];
            if (v17)
            {
              [v9 addObject:v17];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    v18 = [v9 copy];
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  return v18;
}

- (void)setHistory:(id)a3 forMessagePart:(int64_t)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v29 + 1) + 8 * i) messageSummaryInfoDictionaryRepresentation];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];
  v15 = [(IMMessageItem *)self messageSummaryInfo];
  v16 = [v15 mutableCopy];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v19 = v18;

  v20 = [v19 _dictionaryForKey:@"ec"];
  v21 = [v20 mutableCopy];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v24 = v23;

  v25 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v26 = [v25 stringValue];

  if ([v14 count])
  {
    [v24 setObject:v14 forKey:v26];
  }

  else
  {
    [v24 removeObjectForKey:v26];
  }

  v27 = [v24 copy];
  if ([v27 count])
  {
    [v19 setObject:v27 forKey:@"ec"];
  }

  else
  {
    [v19 removeObjectForKey:@"ec"];
  }

  v28 = [v19 copy];
  [(IMMessageItem *)self setMessageSummaryInfo:v28];
}

- (NSArray)messagePartGUIDs
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(IMItem *)self balloonBundleID];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(IMItem *)self guid];
    v7 = [v5 stringWithFormat:@"bp:%@", v6];
    [v3 addObject:v7];
  }

  else if ([(IMMessageItem *)self partCount])
  {
    v8 = 0;
    do
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = [(IMItem *)self guid];
      v11 = [v9 stringWithFormat:@"p:%lu/%@", v8, v10];
      [v3 addObject:v11];

      ++v8;
    }

    while (v8 < [(IMMessageItem *)self partCount]);
  }

  return v3;
}

- (NSDictionary)originalTextRangesByPartIndex
{
  v3 = [(IMMessageItem *)self messageSummaryInfo];
  v4 = [v3 objectForKey:@"otr"];

  if ([v4 count])
  {
    v5 = [(IMMessageItem *)self _partRangeByIndexFromPlistSerializable:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setOriginalTextRangesByPartIndex:(id)a3
{
  v8 = [(IMMessageItem *)self _partRangeByIndexToPlistSerializable:a3];
  v4 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v4 count])
  {
    v5 = [(IMMessageItem *)self messageSummaryInfo];
    v6 = [v5 mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v6 setObject:v8 forKey:@"otr"];
  v7 = [v6 copy];
  [(IMMessageItem *)self setMessageSummaryInfo:v7];
}

- (id)_partRangeByIndexToPlistSerializable:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A865BF38;
  v9[3] = &unk_1E7827E88;
  v10 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

- (id)_partRangeByIndexFromPlistSerializable:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A865C120;
  v9[3] = &unk_1E7827EB0;
  v10 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

- (NSArray)editUnsupportedByHandleIDs
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"euh"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (BOOL)_retractAllowedForBundleIdentifier:(id)a3
{
  v3 = [(IMItem *)self balloonBundleID];
  v4 = IMBalloonBundleIDFromExtensionID(v3);

  LOBYTE(v3) = [v4 isEqualToString:@"com.apple.messages.URLBalloonProvider"];
  v5 = [v4 isEqualToString:@"com.apple.DigitalTouchBalloonProvider"];
  v6 = [v4 isEqualToString:@"com.apple.Jellyfish.Animoji"];
  LOBYTE(v3) = v3 | v5 | v6 | [v4 isEqualToString:@"com.apple.messages.Polls"];

  return v3 & 1;
}

- (unint64_t)eligibilityForEditType:(unint64_t)a3 messagePartIndex:(int64_t)a4
{
  v43 = *MEMORY[0x1E69E9840];
  if ([(IMMessageItem *)self isFromMe])
  {
    if ([(IMMessageItem *)self isSent])
    {
      if (a3 != 2 || (-[IMItem service](self, "service"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqualToString:IMServiceNameiMessage[0]], v7, (v8 & 1) != 0))
      {
        v9 = [(IMItem *)self handle];
        if ([v9 length] && MEMORY[0x1AC570A30](v9))
        {
          if (IMOSLoggingEnabled())
          {
            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              LOWORD(v35) = 0;
              _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Message cannot be edited, message is in a business chat", &v35, 2u);
            }
          }

          v11 = 2;
          goto LABEL_59;
        }

        if ([(IMMessageItem *)self scheduleType]== 2)
        {
          v14 = [(IMMessageItem *)self scheduleState]- 1;
          if (v14 < 5 && ((0x1Du >> v14) & 1) != 0)
          {
            v11 = qword_1A88E1290[v14];
LABEL_59:

            return v11;
          }
        }

        v15 = [(IMItem *)self time];
        v16 = [MEMORY[0x1E695DF00] __im_dateWithCurrentServerTime];
        [v16 timeIntervalSinceDate:v15];
        v18 = v17;
        [(IMMessageItem *)self _timeoutIntervalForEditType:a3];
        if (v18 >= v19)
        {
          v25 = v19;
          if (IMOSLoggingEnabled())
          {
            v26 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              v35 = 134218754;
              v36 = v18;
              v37 = 2048;
              v38 = v25;
              v39 = 2112;
              v40 = v15;
              v41 = 2112;
              v42 = v16;
              _os_log_impl(&dword_1A85E5000, v26, OS_LOG_TYPE_INFO, "Message cannot be edited, message was sent %ld seconds ago, which is greater than timeout of %ld seconds. Sent: %@ Now: %@", &v35, 0x2Au);
            }
          }

          v11 = 3;
          goto LABEL_58;
        }

        v20 = [(IMItem *)self balloonBundleID];
        if (![v20 length])
        {
LABEL_30:
          v21 = [(IMMessageItem *)self messageSummaryInfo];
          v22 = [v21 objectForKey:@"amab"];

          if (([v22 containsString:@"com.apple.PassbookUIService.PeerPaymentMessagesExtension"] & 1) != 0 || objc_msgSend(v22, "containsString:", @"com.apple.Passbook.PeerPaymentMessagesExtension"))
          {
            if (IMOSLoggingEnabled())
            {
              v23 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                LOWORD(v35) = 0;
                _os_log_impl(&dword_1A85E5000, v23, OS_LOG_TYPE_INFO, "Message cannot be edited or retracted, message is a memo associated with an Apple Cash payment or request", &v35, 2u);
              }
            }

            v11 = 4;
            goto LABEL_37;
          }

          if (a3 == 1)
          {
            v29 = [(IMMessageItem *)self historyForMessagePart:a4];
            v30 = [v29 count] - 1;
            [(IMMessageItem *)self _messageEditHistoryLimit];
            v32 = v31;
            if (v30 >= v31)
            {
              if (IMOSLoggingEnabled())
              {
                v34 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                {
                  v35 = 134218240;
                  v36 = v30;
                  v37 = 2048;
                  v38 = v32;
                  _os_log_impl(&dword_1A85E5000, v34, OS_LOG_TYPE_INFO, "Message cannot be edited, message has already been edited %ld times. Maximum is %ld edits.", &v35, 0x16u);
                }
              }

              v11 = 5;
              goto LABEL_37;
            }

            if (!IMOSLoggingEnabled())
            {
              goto LABEL_71;
            }

            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              LOWORD(v35) = 0;
              _os_log_impl(&dword_1A85E5000, v33, OS_LOG_TYPE_INFO, "Message can be edited", &v35, 2u);
            }
          }

          else
          {
            if (!IMOSLoggingEnabled())
            {
LABEL_71:
              v11 = 0;
LABEL_37:

LABEL_57:
LABEL_58:

              goto LABEL_59;
            }

            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              LOWORD(v35) = 0;
              _os_log_impl(&dword_1A85E5000, v33, OS_LOG_TYPE_INFO, "Message can be retracted", &v35, 2u);
            }
          }

          goto LABEL_71;
        }

        if (a3 == 2)
        {
          if ([(IMMessageItem *)self _retractAllowedForBundleIdentifier:v20])
          {
            goto LABEL_30;
          }

          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              LOWORD(v35) = 0;
              _os_log_impl(&dword_1A85E5000, v27, OS_LOG_TYPE_INFO, "Message cannot be retracted, message is a balloon plugin message", &v35, 2u);
            }

LABEL_55:
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            LOWORD(v35) = 0;
            _os_log_impl(&dword_1A85E5000, v27, OS_LOG_TYPE_INFO, "Message cannot be edited, message is a balloon plugin message", &v35, 2u);
          }

          goto LABEL_55;
        }

        v11 = 4;
        goto LABEL_57;
      }

      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          LOWORD(v35) = 0;
          _os_log_impl(&dword_1A85E5000, v24, OS_LOG_TYPE_INFO, "Message cannot be edited, message service is not iMessage", &v35, 2u);
        }
      }

      return 2;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          LOWORD(v35) = 0;
          _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Message cannot be edited, message is currently sending", &v35, 2u);
        }
      }

      return 6;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v35) = 0;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Message cannot be edited, message is not from me", &v35, 2u);
      }
    }

    return 1;
  }
}

- (double)_timeoutIntervalForEditType:(unint64_t)a3
{
  if (a3 == 2)
  {
    MEMORY[0x1EEE66B58](self, sel__messageRetractionTimeout);
  }

  else if (a3 == 1)
  {
    MEMORY[0x1EEE66B58](self, sel__messageEditTimeout);
  }

  else
  {
    return 0.0;
  }

  return result;
}

- (double)_messageEditTimeout
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"message-edit-timeout"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 doubleValue], v4 > 0.0))
  {
    v5 = v4;
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 134218240;
        v9 = v5;
        v10 = 2048;
        v11 = 900.0;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Server bag override for message edit timeout. Server: %ld Default: %ld", &v8, 0x16u);
      }
    }
  }

  else
  {
    v5 = 900.0;
  }

  return v5;
}

- (double)_messageEditHistoryLimit
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"message-edit-history-limit"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = [v3 intValue], v4 >= 1))
  {
    v5 = v4;
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
        v8 = [MEMORY[0x1E696AD98] numberWithInteger:5];
        v10 = 138412546;
        v11 = v7;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Server bag override for message edit history limit. Server: %@ Default: %@", &v10, 0x16u);
      }
    }
  }

  else
  {
    v5 = 5;
  }

  return v5;
}

- (double)_messageRetractionTimeout
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"message-retraction-timeout"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 doubleValue], v4 > 0.0))
  {
    v5 = v4;
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 134218240;
        v9 = v5;
        v10 = 2048;
        v11 = 120.0;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Server bag override for message retraction timeout. Server: %ld Default: %ld", &v8, 0x16u);
      }
    }
  }

  else
  {
    v5 = 120.0;
  }

  return v5;
}

- (BOOL)canRetryFailedRetraction
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(IMItem *)self time];
  v4 = [MEMORY[0x1E695DF00] __im_dateWithCurrentServerTime];
  [v4 timeIntervalSinceDate:v3];
  v6 = v5;
  [(IMMessageItem *)self _timeoutIntervalForEditType:2];
  v8 = v7;
  if (v6 >= v7 && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 134218754;
      v12 = v6;
      v13 = 2048;
      v14 = 120.0;
      v15 = 2112;
      v16 = v3;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Cannot retry retraction, message was sent %ld seconds ago, which is greater than timeout of %ld seconds. Sent: %@ Now: %@", &v11, 0x2Au);
    }
  }

  return v6 < v8;
}

- (void)setHasUnseenMention:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)setHasDataDetectorResults:(BOOL)a3
{
  v3 = a3;
  if ([(IMMessageItem *)self hasDataDetectorResults]!= a3)
  {
    v5 = 0x10000;
    if (!v3)
    {
      v5 = 0;
    }

    self->_flags = self->_flags & 0xFFFFFFFFFFFEFFFFLL | v5;
  }
}

- (BOOL)containsRichLink
{
  v2 = [(IMMessageItem *)self body];
  v3 = [v2 length];
  v4 = v2 && ([v2 attribute:*MEMORY[0x1E69A5FB0] existsInRange:{0, v3}] & 1) != 0;

  return v4;
}

- (NSArray)richLinkURLs
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1A8601EA8;
  v13 = sub_1A8602148;
  v14 = [MEMORY[0x1E695DF70] array];
  v3 = [(IMMessageItem *)self body];
  v4 = [v3 length];
  v5 = *MEMORY[0x1E69A5FB0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A865D310;
  v8[3] = &unk_1E7827ED8;
  v8[4] = &v9;
  [v3 enumerateAttribute:v5 inRange:0 options:v4 usingBlock:{0, v8}];
  v6 = [v10[5] copy];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (NSString)swyAppName
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"swyan"];

  return v3;
}

- (void)setSwyAppName:(id)a3
{
  v7 = a3;
  if ([v7 length])
  {
    v4 = [(IMMessageItem *)self messageSummaryInfo];
    if ([v4 count])
    {
      v5 = [(IMMessageItem *)self messageSummaryInfo];
      v6 = [v5 mutableCopy];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v6 setObject:v7 forKey:@"swyan"];
    [(IMMessageItem *)self setMessageSummaryInfo:v6];
  }
}

- (NSString)swyBundleID
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"swybid"];

  return v3;
}

- (void)setSwyBundleID:(id)a3
{
  v7 = a3;
  if ([v7 length])
  {
    v4 = [(IMMessageItem *)self messageSummaryInfo];
    if ([v4 count])
    {
      v5 = [(IMMessageItem *)self messageSummaryInfo];
      v6 = [v5 mutableCopy];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v6 setObject:v7 forKey:@"swybid"];
    [(IMMessageItem *)self setMessageSummaryInfo:v6];
  }
}

- (void)setWasDataDetected:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (NSString)originalUnformattedID
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKeyedSubscript:@"oui"];

  return v3;
}

- (void)setOriginalUnformattedID:(id)a3
{
  v11 = a3;
  if (v11 || ([(IMMessageItem *)self originalUnformattedID], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [(IMMessageItem *)self messageSummaryInfo];
    v6 = [v5 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v9 = v8;

    if (v11)
    {
      [v9 setObject:v11 forKeyedSubscript:@"oui"];
    }

    else
    {
      [v9 removeObjectForKey:@"oui"];
    }

    v10 = [v9 copy];
    [(IMMessageItem *)self setMessageSummaryInfo:v10];
  }
}

- (NSString)originalServiceName
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKeyedSubscript:@"osn"];

  return v3;
}

- (void)setOriginalServiceName:(id)a3
{
  v12 = a3;
  v4 = [(IMMessageItem *)self originalServiceName];
  if (v4 != v12)
  {
    v5 = [(IMMessageItem *)self originalServiceName];
    v6 = [v5 isEqualToString:v12];

    if (v6)
    {
      goto LABEL_11;
    }

    v7 = [(IMMessageItem *)self messageSummaryInfo];
    v8 = [v7 mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v4 = v10;

    if (v12)
    {
      [v4 setObject:v12 forKeyedSubscript:@"osn"];
    }

    else
    {
      [v4 removeObjectForKey:@"osn"];
    }

    v11 = [v4 copy];
    [(IMMessageItem *)self setMessageSummaryInfo:v11];
  }

LABEL_11:
}

- (BOOL)wasInterworked
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKeyedSubscript:@"i"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setWasInterworked:(BOOL)a3
{
  v3 = a3;
  if ([(IMMessageItem *)self wasInterworked]!= a3)
  {
    v5 = [(IMMessageItem *)self messageSummaryInfo];
    v6 = [v5 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v11 = v8;

    if (v3)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v11 setObject:v9 forKeyedSubscript:@"i"];
    }

    else
    {
      [v11 removeObjectForKey:@"i"];
    }

    v10 = [v11 copy];
    [(IMMessageItem *)self setMessageSummaryInfo:v10];
  }
}

- (void)setCMMStateToRegisteredAndAssetOffsetTo:(unint64_t)a3
{
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v5 count])
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    v9 = [v6 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
  [v9 setObject:v7 forKey:@"cmmS\x10"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v9 setObject:v8 forKey:@"cmmAO"];

  [(IMMessageItem *)self setMessageSummaryInfo:v9];
}

- (unint64_t)getCMMState
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"cmmS\x10"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setCMMState:(unint64_t)a3
{
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v5 count])
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v8 setObject:v7 forKey:@"cmmS\x10"];

  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (void)setCMMAssetOffset:(unint64_t)a3
{
  v5 = [(IMMessageItem *)self messageSummaryInfo];
  if ([v5 count])
  {
    v6 = [(IMMessageItem *)self messageSummaryInfo];
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v8 setObject:v7 forKey:@"cmmAO"];

  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (unint64_t)getCMMAssetOffset
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"cmmAO"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setFileTransferGUIDs:(id)a3
{
  v5 = a3;
  if (self->_fileTransferGUIDs != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_fileTransferGUIDs, a3);
    [(IMMessageItem *)self adjustIsEmptyFlag];
    v5 = v6;
  }
}

- (void)_regenerateBodyData
{
  bodyData = self->_bodyData;
  self->_bodyData = 0;

  if ([(NSAttributedString *)self->_body length])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = JWEncodeCodableObject();
    v6 = self->_bodyData;
    self->_bodyData = v5;

    objc_autoreleasePoolPop(v4);
  }
}

- (void)setBody:(id)a3
{
  v5 = a3;
  if (self->_body != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_body, a3);
    [(IMMessageItem *)self _clearBodyData];
    [(IMMessageItem *)self _recalculatePartCount];
    [(IMMessageItem *)self adjustIsEmptyFlag];
    v5 = v6;
  }
}

- (void)setPlainBody:(id)a3
{
  v5 = a3;
  if (self->_plainBody != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_plainBody, a3);
    [(IMMessageItem *)self _recalculatePartCount];
    v5 = v6;
  }
}

- (void)eraseMessageContent
{
  body = self->_body;
  self->_body = 0;

  plainBody = self->_plainBody;
  self->_plainBody = 0;

  subject = self->_subject;
  self->_subject = 0;

  [(IMMessageItem *)self _clearBodyData];
  self->_flags &= ~8uLL;
  self->_partCount = 0;
}

- (void)setSubject:(id)a3
{
  v5 = a3;
  if (self->_subject != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_subject, a3);
    [(IMMessageItem *)self adjustIsEmptyFlag];
    v5 = v6;
  }
}

- (void)setPayloadData:(id)a3
{
  v5 = a3;
  if (self->_payloadData != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_payloadData, a3);
    [(IMMessageItem *)self adjustIsEmptyFlag];
    [(IMMessageItem *)self adjustSendAlternateLayoutAsText];
    v5 = v6;
  }
}

- (BOOL)_unrestrictedModificationsAllowedForBundleIdentifier:(id)a3
{
  v3 = [(IMItem *)self balloonBundleID];
  v4 = IMBalloonBundleIDFromExtensionID(v3);

  if ([v4 isEqualToString:@"com.apple.PeopleMessageService.ScreenTime"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.PeopleMessageService.AskToBuy"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"com.apple.AskToMessagesHost.AskToMessagesExtension"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v137.receiver = self;
      v137.super_class = IMMessageItem;
      if (![(IMItem *)&v137 isEqual:v5]|| (flags = self->_flags, flags != [(IMMessageItem *)v5 flags]) || (replaceID = self->_replaceID, replaceID != [(IMMessageItem *)v5 replaceID]))
      {
        v12 = 0;
LABEL_12:

        goto LABEL_13;
      }

      subject = self->_subject;
      v9 = [(IMMessageItem *)v5 subject];
      if (subject != v9)
      {
        v10 = self->_subject;
        v11 = [(IMMessageItem *)v5 subject];
        if (![(NSString *)v10 isEqualToString:v11])
        {
          v12 = 0;
          goto LABEL_133;
        }

        v133 = v11;
      }

      bodyData = self->_bodyData;
      v15 = [(IMMessageItem *)v5 bodyData];
      if (bodyData == v15)
      {
        v18 = 0;
        v135 = 0;
      }

      else
      {
        v16 = self->_bodyData;
        v17 = [(IMMessageItem *)v5 bodyData];
        if ([(NSData *)v16 isEqualToData:v17])
        {
          v132 = v17;
          v18 = 0;
          v135 = 0;
        }

        else
        {
          v19 = v9;
          v20 = subject;
          v21 = bodyData;
          body = self->_body;
          v131 = [(IMMessageItem *)v5 body];
          if (body == v131)
          {
            v132 = v17;
            v135 = 0;
          }

          else
          {
            v23 = self->_body;
            v24 = [(IMMessageItem *)v5 body];
            v25 = v23;
            v26 = v24;
            if (![(NSAttributedString *)v25 isEqualToAttributedString:v24])
            {

              v12 = 0;
              v61 = v20 == v19;
              v9 = v19;
              goto LABEL_132;
            }

            v128 = v26;
            v132 = v17;
            v135 = 1;
          }

          bodyData = v21;
          subject = v20;
          v9 = v19;
          v18 = 1;
        }
      }

      timeRead = self->_timeRead;
      v28 = [(IMMessageItem *)v5 timeRead];
      v134 = timeRead;
      v61 = timeRead == v28;
      v29 = v28;
      if (v61)
      {
        v130 = bodyData;
      }

      else
      {
        v30 = self->_timeRead;
        v31 = [(IMMessageItem *)v5 timeRead];
        v32 = v30;
        v33 = v31;
        if (![(NSDate *)v32 isEqualToDate:v31])
        {

          v12 = 0;
          v41 = v128;
          goto LABEL_57;
        }

        v124 = v33;
        v130 = bodyData;
      }

      timeDelivered = self->_timeDelivered;
      v35 = [(IMMessageItem *)v5 timeDelivered];
      v129 = timeDelivered;
      v61 = timeDelivered == v35;
      v36 = v35;
      if (v61)
      {
        v127 = v18;
      }

      else
      {
        v37 = self->_timeDelivered;
        v38 = [(IMMessageItem *)v5 timeDelivered];
        v39 = v37;
        v40 = v38;
        if (![(NSDate *)v39 isEqualToDate:v38])
        {

LABEL_53:
          v41 = v128;
          if (v134 != v29)
          {
          }

          v12 = 0;
LABEL_56:
          bodyData = v130;
LABEL_57:
          if (v135)
          {
            goto LABEL_58;
          }

          goto LABEL_127;
        }

        v120 = v40;
        v127 = v18;
      }

      timePlayed = self->_timePlayed;
      v43 = [(IMMessageItem *)v5 timePlayed];
      v126 = timePlayed;
      v61 = timePlayed == v43;
      v44 = v43;
      if (v61)
      {
        v122 = v9;
        v49 = v15;
        v50 = subject;
        v51 = v29;
        v52 = v36;
        v53 = v43;
      }

      else
      {
        v45 = self->_timePlayed;
        v46 = [(IMMessageItem *)v5 timePlayed];
        v47 = v45;
        v48 = v46;
        if (![(NSDate *)v47 isEqualToDate:v46])
        {

LABEL_51:
          v18 = v127;
          if (v129 != v36)
          {
          }

          goto LABEL_53;
        }

        v122 = v9;
        v49 = v15;
        v50 = subject;
        v51 = v29;
        v52 = v36;
        v53 = v44;
        v118 = v48;
      }

      fileTransferGUIDs = self->_fileTransferGUIDs;
      v125 = [(IMMessageItem *)v5 fileTransferGUIDs];
      v121 = fileTransferGUIDs;
      if (fileTransferGUIDs == v125)
      {
        v44 = v53;
        v36 = v52;
        v29 = v51;
        subject = v50;
        v15 = v49;
        v9 = v122;
      }

      else
      {
        v55 = self->_fileTransferGUIDs;
        v119 = [(IMMessageItem *)v5 fileTransferGUIDs];
        v44 = v53;
        v36 = v52;
        v29 = v51;
        subject = v50;
        v15 = v49;
        v9 = v122;
        if (![(NSArray *)v55 isEqualToArray:?])
        {
LABEL_48:

LABEL_49:
          if (v126 != v44)
          {
          }

          goto LABEL_51;
        }
      }

      expireState = self->_expireState;
      if (expireState != [(IMMessageItem *)v5 expireState])
      {
        if (v121 == v125)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      v116 = v44;
      expressiveSendStyleID = self->_expressiveSendStyleID;
      v117 = [(IMMessageItem *)v5 expressiveSendStyleID];
      if (expressiveSendStyleID == v117)
      {
        v115 = expressiveSendStyleID;
      }

      else
      {
        v58 = self->_expressiveSendStyleID;
        v113 = [(IMMessageItem *)v5 expressiveSendStyleID];
        if (![(NSString *)v58 isEqualToString:?])
        {
          v12 = 0;
          v18 = v127;
          v65 = v117;
          goto LABEL_106;
        }

        v115 = expressiveSendStyleID;
      }

      timeExpressiveSendPlayed = self->_timeExpressiveSendPlayed;
      v114 = [(IMMessageItem *)v5 timeExpressiveSendPlayed];
      if (timeExpressiveSendPlayed != v114)
      {
        v63 = self->_timeExpressiveSendPlayed;
        v112 = [(IMMessageItem *)v5 timeExpressiveSendPlayed];
        if (![(NSDate *)v63 isEqualToDate:?])
        {
          v12 = 0;
          v18 = v127;
          v64 = v114;
          goto LABEL_105;
        }
      }

      error = self->_error;
      if (error != [(IMMessageItem *)v5 errorCode])
      {
        v70 = timeExpressiveSendPlayed;
        v64 = v114;
        if (v70 == v114)
        {

          v12 = 0;
          v65 = v117;
          v18 = v127;
          if (v115 == v117)
          {
            goto LABEL_107;
          }

          goto LABEL_106;
        }

        v12 = 0;
        v18 = v127;
        goto LABEL_105;
      }

      threadIdentifier = self->_threadIdentifier;
      v68 = [(IMMessageItem *)v5 threadIdentifier];
      if (threadIdentifier != v68)
      {

        v12 = 0;
        v69 = timeExpressiveSendPlayed;
        v64 = v114;
        v18 = v127;
        if (v69 == v114)
        {
LABEL_116:

          v93 = v117;
          if (v115 != v117)
          {

            v93 = v117;
          }

          v94 = v125;
          if (v121 != v125)
          {

            v94 = v125;
          }

          if (v126 != v116)
          {
          }

          if (v129 != v36)
          {
          }

          v41 = v128;
          if (v134 != v29)
          {
          }

          bodyData = v130;
          if (v135)
          {
LABEL_58:

            v59 = v131;
            v60 = v132;
            if ((v18 & 1) == 0)
            {
              goto LABEL_129;
            }

            goto LABEL_128;
          }

LABEL_127:
          v59 = v131;
          v60 = v132;
          if (!v18)
          {
LABEL_129:
            if (bodyData != v15)
            {
            }

            v61 = subject == v9;
LABEL_132:
            v11 = v133;
            if (v61)
            {
LABEL_134:

              goto LABEL_12;
            }

LABEL_133:

            goto LABEL_134;
          }

LABEL_128:

          goto LABEL_129;
        }

LABEL_105:

        v65 = v117;
        if (v115 == v117)
        {
LABEL_107:

          if (v121 != v125)
          {
          }

          if (v126 != v116)
          {
          }

          if (v129 != v36)
          {
          }

          v41 = v128;
          if (v134 != v29)
          {
          }

          goto LABEL_56;
        }

LABEL_106:

        goto LABEL_107;
      }

      v110 = v68;
      threadOriginator = self->_threadOriginator;
      [(IMMessageItem *)v5 threadOriginator];
      v109 = v108 = threadOriginator;
      v111 = timeExpressiveSendPlayed;
      if (threadOriginator != v109)
      {
        v72 = self->_threadOriginator;
        v107 = [(IMMessageItem *)v5 threadOriginator];
        if (![(IMMessageItem *)v72 isEqual:?])
        {
          v12 = 0;
          v18 = v127;
          v73 = v109;
LABEL_103:

LABEL_104:
          v64 = v114;
          if (v111 == v114)
          {
            goto LABEL_116;
          }

          goto LABEL_105;
        }
      }

      replyCountsByPart = self->_replyCountsByPart;
      v75 = [(IMMessageItem *)v5 replyCountsByPart];
      v106 = replyCountsByPart;
      v61 = replyCountsByPart == v75;
      v76 = v75;
      if (v61)
      {
        v101 = v75;
        v102 = subject;
        v104 = v29;
        v105 = v36;
        v123 = v9;
        v103 = v15;
      }

      else
      {
        v77 = self->_replyCountsByPart;
        v100 = [(IMMessageItem *)v5 replyCountsByPart];
        if (![(NSDictionary *)v77 isEqualToDictionary:?])
        {
          v12 = 0;
          v18 = v127;
LABEL_101:

LABEL_102:
          v73 = v109;
          if (v108 == v109)
          {
            goto LABEL_104;
          }

          goto LABEL_103;
        }

        v101 = v76;
        v102 = subject;
        v104 = v29;
        v105 = v36;
        v123 = v9;
        v103 = v15;
      }

      syndicationRanges = self->_syndicationRanges;
      v79 = [(IMMessageItem *)v5 syndicationRanges];
      v80 = syndicationRanges;
      if (syndicationRanges != v79)
      {
        v81 = self->_syndicationRanges;
        v99 = [(IMMessageItem *)v5 syndicationRanges];
        if (![(NSArray *)v81 isEqualToArray:?])
        {
          v12 = 0;
LABEL_99:

LABEL_100:
          v36 = v105;
          v76 = v101;
          subject = v102;
          v15 = v103;
          v29 = v104;
          v9 = v123;
          v18 = v127;
          if (v106 == v101)
          {
            goto LABEL_102;
          }

          goto LABEL_101;
        }
      }

      syncedSyndicationRanges = self->_syncedSyndicationRanges;
      v83 = [(IMMessageItem *)v5 syncedSyndicationRanges];
      v98 = syncedSyndicationRanges;
      if (syncedSyndicationRanges != v83)
      {
        v84 = self->_syncedSyndicationRanges;
        v97 = [(IMMessageItem *)v5 syncedSyndicationRanges];
        if (![(NSArray *)v84 isEqualToArray:?])
        {
          v12 = 0;
LABEL_97:

LABEL_98:
          if (v80 == v79)
          {
            goto LABEL_100;
          }

          goto LABEL_99;
        }
      }

      dateEdited = self->_dateEdited;
      v86 = [(IMMessageItem *)v5 dateEdited];
      v87 = dateEdited;
      if (dateEdited == v86 || (v88 = self->_dateEdited, [(IMMessageItem *)v5 dateEdited], v95 = objc_claimAutoreleasedReturnValue(), [(NSDate *)v88 isEqualToDate:?]))
      {
        fallbackHash = self->_fallbackHash;
        v89 = [(IMMessageItem *)v5 fallbackHash];
        v90 = v89;
        if (fallbackHash == v89)
        {

          v12 = 1;
        }

        else
        {
          v91 = self->_fallbackHash;
          v92 = [(IMMessageItem *)v5 fallbackHash];
          v12 = [(NSString *)v91 isEqualToString:v92];
        }

        if (v87 == v86)
        {
LABEL_96:

          if (v98 == v83)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        }
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_96;
    }

    v136.receiver = self;
    v136.super_class = IMMessageItem;
    v12 = [(IMItem *)&v136 isEqual:v4];
  }

LABEL_13:

  return v12;
}

- (NSAttributedString)breadcrumbText
{
  v26[1] = *MEMORY[0x1E69E9840];
  v2 = [(IMMessageItem *)self body];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1A8601EA8;
  v23 = sub_1A8602148;
  v24 = 0;
  v3 = [v2 length];
  v4 = *MEMORY[0x1E69A5F28];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1A865EFB8;
  v18[3] = &unk_1E78267C0;
  v18[4] = &v19;
  [v2 enumerateAttribute:v4 inRange:0 options:v3 usingBlock:{0x100000, v18}];
  if (v20[5])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v5 = [v2 length];
    v6 = *MEMORY[0x1E69A5F30];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A865F030;
    v13[3] = &unk_1E78267C0;
    v13[4] = &v14;
    [v2 enumerateAttribute:v6 inRange:0 options:v5 usingBlock:{0x100000, v13}];
    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    v8 = v20[5];
    v25 = v6;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v15 + 6)];
    v26[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v11 = [v7 initWithString:v8 attributes:v10];

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v11;
}

- (id)description
{
  if (qword_1ED8C99E0 != -1)
  {
    sub_1A88C17CC();
  }

  v85 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v95 = NSStringFromClass(v3);
  if ([(IMMessageItem *)self isFromMe])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v83 = v4;
  v94 = [(IMMessageItem *)self sender];
  v93 = [(IMItem *)self service];
  if ([(IMMessageItem *)self encrypted])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v82 = v5;
  v92 = [(IMItem *)self handle];
  v91 = [(IMItem *)self destinationCallerID];
  v90 = [(IMItem *)self unformattedID];
  v89 = [(IMItem *)self countryCode];
  v80 = [(IMItem *)self roomName];
  flags = self->_flags;
  v78 = off_1ED8C99E8(self->_subject);
  v6 = off_1ED8C99E8;
  v84 = [(NSAttributedString *)self->_body string];
  v77 = v6();
  v76 = [(IMItem *)self messageID];
  v88 = [(IMItem *)self guid];
  v75 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IMItem sortID](self, "sortID")}];
  v81 = [(IMItem *)self time];
  [v81 timeIntervalSinceReferenceDate];
  v8 = v7;
  [(NSDate *)self->_timeDelivered timeIntervalSinceReferenceDate];
  v10 = v9;
  [(NSDate *)self->_timeRead timeIntervalSinceReferenceDate];
  v12 = v11;
  [(NSDate *)self->_timePlayed timeIntervalSinceReferenceDate];
  v14 = v13;
  fileTransferGUIDs = self->_fileTransferGUIDs;
  if ([(IMMessageItem *)self isEmpty])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v73 = v15;
  if ([(IMMessageItem *)self isFinished])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v72 = v16;
  if ([(IMMessageItem *)self isSent])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v71 = v17;
  if ([(IMMessageItem *)self isRead])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v70 = v18;
  if ([(IMMessageItem *)self isDelivered])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  v69 = v19;
  v68 = [(IMMessageItem *)self scheduleType];
  v67 = [(IMMessageItem *)self scheduleState];
  if ([(IMMessageItem *)self isAudioMessage])
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v66 = v20;
  if ([(IMMessageItem *)self isPlayed])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  v65 = v21;
  if ([(IMMessageItem *)self isFromMe])
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  v64 = v22;
  if ([(IMMessageItem *)self hasDataDetectorResults])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  v63 = v23;
  if ([(IMMessageItem *)self wasDataDetected])
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  v62 = v24;
  if ([(IMMessageItem *)self wasDowngraded])
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  v61 = v25;
  if ([(IMMessageItem *)self isEmote])
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  v60 = v26;
  if ([(IMMessageItem *)self isExpirable])
  {
    v27 = @"YES";
  }

  else
  {
    v27 = @"NO";
  }

  v59 = v27;
  v58 = [(IMMessageItem *)self expireState];
  v87 = [(IMItem *)self balloonBundleID];
  v57 = [(IMMessageItem *)self expressiveSendStyleID];
  v56 = [(IMMessageItem *)self timeExpressiveSendPlayed];
  v55 = [(IMMessageItem *)self bizIntent];
  v54 = [(IMMessageItem *)self locale];
  v53 = [(IMMessageItem *)self biaReferenceID];
  v52 = [(IMMessageItem *)self errorCode];
  v51 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IMItem cloudKitSyncState](self, "cloudKitSyncState")}];
  if ([(IMMessageItem *)self isCorrupt])
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  v50 = v28;
  if ([(IMMessageItem *)self shouldSendMeCard])
  {
    v29 = @"YES";
  }

  else
  {
    v29 = @"NO";
  }

  v49 = v29;
  if ([(IMMessageItem *)self isSpam])
  {
    v30 = @"YES";
  }

  else
  {
    v30 = @"NO";
  }

  v48 = v30;
  if ([(IMMessageItem *)self hasUnseenMention])
  {
    v31 = @"YES";
  }

  else
  {
    v31 = @"NO";
  }

  v47 = v31;
  threadIdentifier = self->_threadIdentifier;
  threadOriginator = self->_threadOriginator;
  replyCountsByPart = self->_replyCountsByPart;
  if ([(IMMessageItem *)self isStewie])
  {
    v32 = @"YES";
  }

  else
  {
    v32 = @"NO";
  }

  v33 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IMMessageItem stewieConversationID](self, "stewieConversationID")}];
  v34 = [(NSArray *)self->_syndicationRanges componentsJoinedByString:@", "];
  v35 = [(NSArray *)self->_syncedSyndicationRanges componentsJoinedByString:@", "];
  [(NSDate *)self->_dateEdited timeIntervalSinceReferenceDate];
  v37 = v36;
  [(NSDate *)self->_dateRecovered timeIntervalSinceReferenceDate];
  v39 = v38;
  v44 = [(IMMessageItem *)self groupActivity];
  if (v44)
  {
    v40 = @"YES";
  }

  else
  {
    v40 = @"NO";
  }

  if ([(IMMessageItem *)self wasDetonated])
  {
    v41 = @"YES";
  }

  else
  {
    v41 = @"NO";
  }

  [(IMMessageItem *)self isSOS];
  [(IMMessageItem *)self isCritical];
  [(NSString *)self->_fallbackHash length];
  v86 = [v85 stringWithFormat:@"%@[outgoing: %@ sender=%@ service=%@; encrypted=%@; handle=%@; destinationCallerID= %@, unformatted=%@; country=%@; roomName='%@'; flags=0x%llx; subject='%@' text='%@' messageID: %lld GUID:'%@' sortID: %@ date:'%f' date-delivered:'%f' date-read:'%f' date-played:'%f' transfer guids: '%@' empty: %@ finished: %@ sent: %@ read: %@ delivered: %@ scheduleType: %lu, scheduleState: %lu, audio: %@ played: %@ from-me: %@ DD results: %@ DD Scanned: %@ Downgraded: %@ emote: %@ expirable: %@ expire-state: %d balloon-bundle-id: %@ expressive-send-style-id: %@ time-expressive-send-played: %@ bizIntent: %@ locale: %@ biaReferenceID: %@ error: %d sync-state %@ corrupt: %@ shouldSendMeCard: %@ isSpam: %@ hasUnseenMention: %@ threadIdentifier: %@, threadOriginator: %@, replyCountsByPart: %@, isChoros: %@, chorosConversationID: %@, syndicationRanges: %@, syncedSyndicationRanges: %@, dateEdited: '%f', dateRecovered: '%f', hasGroupActivity: %@, wasDetonated: %@, isSOS: %@, isCritical %@, fallbackHash (len): %llu]", v95, v83, v94, v93, v82, v92, v91, v90, v89, v80, flags, v78, v77, v76, v88, v75, v8, v10, v12, v14, fileTransferGUIDs, v73, v72, v71, v70, v69, v68, v67, v66, v65, v64, v63, v62, v61, v60, v59, v58, v87, v57, v56, v55, v54, v53, v52, v51, v50, v49, v48, v47, threadIdentifier, threadOriginator, replyCountsByPart, v32, v33, v34, v35, v37, v39, v40, v41];;

  return v86;
}

- (BOOL)unsentIsFromMeItem
{
  v3 = [(IMMessageItem *)self isFromMe];
  if (v3)
  {
    v4 = [(IMMessageItem *)self scheduleType];
    LOBYTE(v3) = (v4 >= 2 && (v4 != 2 || (v5 = [(IMMessageItem *)self scheduleState], v5 > 5) || ((1 << v5) & 0x39) == 0) || ![(IMMessageItem *)self isSent]) && [(IMMessageItem *)self errorCode]== 0;
  }

  return v3;
}

- (id)_localizedBackwardsCompatibleExpressiveSendText
{
  if ([(NSString *)self->_expressiveSendStyleID length])
  {
    if ([(NSString *)self->_expressiveSendStyleID isEqualToString:@"com.apple.MobileSMS.expressivesend.invisibleink"])
    {
      v3 = MEMORY[0x1E696AEC0];
      v4 = IMSharedUtilitiesFrameworkBundle();
      v5 = v4;
      v6 = @"IMPACT_INVISIBLE";
LABEL_4:
      v7 = [v4 localizedStringForKey:v6 value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
      v8 = [v3 localizedStringWithFormat:v7, 0];
      goto LABEL_5;
    }

    v9 = [(NSString *)self->_expressiveSendStyleID rangeOfString:@"com.apple.MobileSMS.expressivesend"];
    if (v10)
    {
      v11 = v9 + v10 + 1;
      if (v11 < [(NSString *)self->_expressiveSendStyleID length])
      {
        v5 = [(NSString *)self->_expressiveSendStyleID substringFromIndex:v11];
        if ([v5 isEqualToString:@"gentle"])
        {
          v12 = @"IMPACT_GENTLE";
        }

        else if ([v5 isEqualToString:@"loud"])
        {
          v12 = @"IMPACT_LOUD";
        }

        else
        {
          if (![v5 isEqualToString:@"impact"])
          {
            v8 = 0;
            goto LABEL_6;
          }

          v12 = @"IMPACT_IMPACT";
        }

        v14 = MEMORY[0x1E696AEC0];
        v7 = IMSharedUtilitiesFrameworkBundle();
        v15 = [v7 localizedStringForKey:v12 value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
        v8 = [v14 localizedStringWithFormat:v15, 0];

LABEL_5:
LABEL_6:

        goto LABEL_37;
      }
    }

    else
    {
      [(NSString *)self->_expressiveSendStyleID rangeOfString:@"com.apple.messages.effect"];
      if (v13)
      {
        if ([(NSString *)self->_expressiveSendStyleID hasSuffix:@"CKConfettiEffect"])
        {
          v3 = MEMORY[0x1E696AEC0];
          v4 = IMSharedUtilitiesFrameworkBundle();
          v5 = v4;
          v6 = @"FSM_SENT_WITH_CONFETTI";
          goto LABEL_4;
        }

        if ([(NSString *)self->_expressiveSendStyleID hasSuffix:@"CKHappyBirthdayEffect"])
        {
          v3 = MEMORY[0x1E696AEC0];
          v4 = IMSharedUtilitiesFrameworkBundle();
          v5 = v4;
          v6 = @"FSM_SENT_WITH_BALLOONS";
          goto LABEL_4;
        }

        if ([(NSString *)self->_expressiveSendStyleID hasSuffix:@"CKLasersEffect"])
        {
          v3 = MEMORY[0x1E696AEC0];
          v4 = IMSharedUtilitiesFrameworkBundle();
          v5 = v4;
          v6 = @"FSM_SENT_WITH_LASERS";
          goto LABEL_4;
        }

        if ([(NSString *)self->_expressiveSendStyleID hasSuffix:@"CKFireworksEffect"])
        {
          v3 = MEMORY[0x1E696AEC0];
          v4 = IMSharedUtilitiesFrameworkBundle();
          v5 = v4;
          v6 = @"FSM_SENT_WITH_FIREWORKS";
          goto LABEL_4;
        }

        if ([(NSString *)self->_expressiveSendStyleID hasSuffix:@"CKShootingStarEffect"])
        {
          v3 = MEMORY[0x1E696AEC0];
          v4 = IMSharedUtilitiesFrameworkBundle();
          v5 = v4;
          v6 = @"FSM_SENT_WITH_SHOOTING_STAR";
          goto LABEL_4;
        }

        if ([(NSString *)self->_expressiveSendStyleID hasSuffix:@"CKSparklesEffect"])
        {
          v3 = MEMORY[0x1E696AEC0];
          v4 = IMSharedUtilitiesFrameworkBundle();
          v5 = v4;
          v6 = @"FSM_SENT_WITH_CELEBRATION";
          goto LABEL_4;
        }

        if ([(NSString *)self->_expressiveSendStyleID hasSuffix:@"CKHeartEffect"])
        {
          v3 = MEMORY[0x1E696AEC0];
          v4 = IMSharedUtilitiesFrameworkBundle();
          v5 = v4;
          v6 = @"FSM_SENT_WITH_LOVE";
          goto LABEL_4;
        }

        if ([(NSString *)self->_expressiveSendStyleID hasSuffix:@"CKEchoEffect"])
        {
          v3 = MEMORY[0x1E696AEC0];
          v4 = IMSharedUtilitiesFrameworkBundle();
          v5 = v4;
          v6 = @"FSM_SENT_WITH_ECHO";
          goto LABEL_4;
        }

        if ([(NSString *)self->_expressiveSendStyleID hasSuffix:@"CKSpotlightEffect"])
        {
          v3 = MEMORY[0x1E696AEC0];
          v4 = IMSharedUtilitiesFrameworkBundle();
          v5 = v4;
          v6 = @"FSM_SENT_WITH_SPOTLIGHT";
          goto LABEL_4;
        }
      }
    }
  }

  v8 = 0;
LABEL_37:

  return v8;
}

- (BOOL)isDeviceActionMessage
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"dam"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isFailedHQTransfer
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"ihqtf"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isHQTransfer
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"ihqt"];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (id)_messageItemWithIndexesDeleted:(id)a3 subRangesToDeleteMapping:(id)a4 deleteSubject:(BOOL)a5 deleteTransferCallback:(id)a6 createItemCallback:(id)a7 fromMessageItem:(id)a8
{
  v11 = a5;
  v65 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v44 = a6;
  v49 = a7;
  v15 = a8;
  v16 = [v15 body];
  v17 = [v16 mutableCopy];

  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = *MEMORY[0x1E69A5FD8];
  v21 = [v17 length];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = sub_1A86601BC;
  v56[3] = &unk_1E7827F28;
  v47 = v11;
  v63 = v11;
  v48 = v13;
  v57 = v48;
  v46 = v14;
  v58 = v46;
  v22 = v17;
  v59 = v22;
  v45 = v44;
  v62 = v45;
  v23 = v19;
  v60 = v23;
  v24 = v18;
  v61 = v24;
  [v22 enumerateAttribute:v20 inRange:0 options:v21 usingBlock:{0, v56}];
  v25 = [v24 sortedArrayUsingComparator:&unk_1F1BA5F08];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v26 = [v25 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v53;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v53 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v52 + 1) + 8 * i) rangeValue];
        v32 = v31;
        if (v30 < [v22 length])
        {
          v33 = [v22 length];
          if (v32 >= v33 - v30 ? v33 - v30 : v32)
          {
            [v22 deleteCharactersInRange:v30];
          }
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v27);
  }

  v35 = [v15 fileTransferGUIDs];
  v36 = [v35 mutableCopy];

  v37 = *MEMORY[0x1E69A5F68];
  v38 = [v22 length];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = sub_1A8660610;
  v50[3] = &unk_1E7827F70;
  v39 = v36;
  v51 = v39;
  [v22 enumerateAttribute:v37 inRange:0 options:v38 usingBlock:{0, v50}];
  if ([v23 count])
  {
    [v39 removeObjectsInArray:v23];
  }

  if (v49)
  {
    v40 = (v49)[2](v49, v15, v22, v47, v39);
  }

  else
  {
    v40 = [a1 newMessageItemFrom:v15 withText:v22 deleteSubject:v47 withFileTransferGUIDs:v39];
  }

  v41 = v40;

  return v41;
}

+ (id)newMessageItemFrom:(id)a3 withText:(id)a4 deleteSubject:(BOOL)a5 withFileTransferGUIDs:(id)a6
{
  v9 = a3;
  v36 = a6;
  v35 = a4;
  v34 = [IMMessageItem alloc];
  v53 = [v9 senderInfo];
  v10 = [v9 time];
  v11 = [v9 timeRead];
  v50 = [v9 timeDelivered];
  v49 = [v9 timePlayed];
  v51 = v11;
  v52 = v10;
  if (a5)
  {
    v37 = 0;
  }

  else
  {
    v37 = [v9 subject];
  }

  v33 = [v9 flags];
  v48 = [v9 guid];
  v32 = [v9 messageID];
  v45 = [v9 account];
  v47 = [v9 accountID];
  v43 = [v9 service];
  v41 = [v9 handle];
  v46 = [v9 unformattedID];
  v44 = [v9 countryCode];
  v31 = [v9 balloonBundleID];
  v42 = [v9 payloadData];
  v40 = [v9 expressiveSendStyleID];
  v30 = [v9 timeExpressiveSendPlayed];
  v29 = [v9 bizIntent];
  v39 = [v9 locale];
  v38 = [v9 biaReferenceID];
  v28 = [v9 errorCode];
  v26 = [v9 type];
  v27 = [v9 threadIdentifier];
  v12 = [v9 syndicationRanges];
  v13 = [v9 syncedSyndicationRanges];
  v14 = [v9 partCount];
  v25 = [v9 dateEdited];
  v24 = [v9 dateRecovered];
  v15 = [v9 scheduleType];
  v16 = [v9 scheduleState];
  v17 = [v9 cloudKitChatID];
  LODWORD(v23) = v28;
  v18 = [(IMMessageItem *)v34 initWithSenderInfo:v53 time:v52 timeRead:v51 timeDelivered:v50 timePlayed:v49 subject:v37 body:v35 bodyData:0 attributes:0 fileTransferGUIDs:v36 flags:v33 guid:v48 messageID:v32 account:v45 accountID:v47 service:v43 handle:v41 roomName:0 unformattedID:v46 countryCode:v44 expireState:0 balloonBundleID:v31 payloadData:v42 expressiveSendStyleID:v40 timeExpressiveSendPlayed:v30 bizIntent:v29 locale:v39 biaReferenceID:v38 errorType:v23 type:v26 threadIdentifier:v27 syndicationRanges:v12 syncedSyndicationRanges:v13 partCount:v14 dateEdited:v25 dateRecovered:v24 scheduleType:v15 scheduleState:v16 cloudKitChatID:v17];

  if (!a5)
  {
  }

  -[IMMessageItem setUseStandalone:](v18, "setUseStandalone:", [v9 useStandalone]);
  v19 = [v9 messageSummaryInfo];
  [(IMMessageItem *)v18 setMessageSummaryInfo:v19];

  -[IMItem setSortID:](v18, "setSortID:", [v9 sortID]);
  v20 = [v9 replyCountsByPart];
  [(IMMessageItem *)v18 setReplyCountsByPart:v20];

  v21 = [v9 fallbackHash];
  [(IMMessageItem *)v18 setFallbackHash:v21];

  return v18;
}

- (NSArray)messageParts
{
  v2 = [(IMMessageItem *)self body];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1A86AAB88;
    v7[3] = &unk_1E7826888;
    v8 = v3;
    v4 = v3;
    [v2 __im_visitMessageParts:v7];
    v5 = [v4 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)messagePartMatchingPartIndex:(int64_t)a3
{
  v4 = [(IMMessageItem *)self body];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 __im_messagePartMatchingPartIndex:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)powerLogMessageType
{
  if ([(IMMessageItem *)self isTypingMessage])
  {
    return 0;
  }

  if ([(IMMessageItem *)self isAudioMessage])
  {
    return 3;
  }

  v4 = [(IMMessageItem *)self expressiveSendStyleID];
  v5 = [v4 length];

  v6 = [(IMMessageItem *)self sender];
  if (v6)
  {
    v7 = [(IMItem *)self destinationCallerID];
    if (v7)
    {
      v8 = [(IMMessageItem *)self sender];
      v9 = [(IMItem *)self destinationCallerID];
      if ([v8 isEqualToString:v9])
      {
        v10 = 10;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A87082B0;
  v14[3] = &unk_1E782B800;
  v14[4] = &v15;
  [(IMMessageItem *)self enumerateAttachmentGUIDsWithBlock:v14];
  v11 = 4;
  if (v5)
  {
    v11 = 5;
  }

  v12 = 2;
  if (!v5)
  {
    v12 = v10;
  }

  if (*(v16 + 24))
  {
    v3 = v11;
  }

  else
  {
    v3 = v12;
  }

  _Block_object_dispose(&v15, 8);
  return v3;
}

- (BOOL)isAvailabilityReplySupported
{
  v2 = self;
  v3 = sub_1A8721C44();

  return v3 & 1;
}

- (BOOL)hasLegacyUrgentTriggerMatchInText
{
  v2 = self;
  v3 = sub_1A8722290();

  return v3 & 1;
}

- (BOOL)messageContainsOneTimeCode
{
  v2 = self;
  v3 = sub_1A874A198();

  return v3 & 1;
}

- (NSMutableDictionary)mutableTelemetryMetrics
{
  v2 = self;
  v3 = sub_1A8821490();

  return v3;
}

- (void)addTelemetryMetricForKey:(int64_t)a3
{
  v4 = self;
  IMMessageItem.addTelemetryMetric(for:)(a3);
}

- (void)addTelemetryMetricsFromDictionary:(id)a3
{
  sub_1A85E9718(0, &qword_1ED8C9450);
  v4 = sub_1A88C81A8();
  v5 = self;
  IMMessageItem.addTelemetryMetrics(from:)(v4);
}

- (id)formatWithReasonCode:(int64_t)a3 subReasonCode:(int64_t)a4 pathID:(int64_t)a5
{
  sub_1A88230B8();
  v5 = sub_1A88C82A8();

  return v5;
}

- (void)setTelemetryMetricsReasonCode:(int64_t)a3 subReasonCode:(int64_t)a4 pathID:(int64_t)a5
{
  v9 = self;
  v8 = [(IMMessageItem *)v9 formatWithReasonCode:a3 subReasonCode:a4 pathID:a5];
  [(IMMessageItem *)v9 setTelemetryMetricsReasonCode:v8];
}

- (BOOL)hasMessageHistoryForSpamReport
{
  v2 = self;
  v3 = sub_1A8823258();

  return v3 & 1;
}

- (NSArray)messageHistoryForSpamReport
{
  v2 = self;
  sub_1A88235C8();

  v3 = sub_1A88C85E8();

  return v3;
}

@end