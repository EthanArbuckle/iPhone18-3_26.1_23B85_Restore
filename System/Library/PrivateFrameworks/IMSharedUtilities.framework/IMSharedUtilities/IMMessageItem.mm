@interface IMMessageItem
+ (BOOL)messageContainsSurfDD:(id)d;
+ (id)_messageItemWithIndexesDeleted:(id)deleted subRangesToDeleteMapping:(id)mapping deleteSubject:(BOOL)subject deleteTransferCallback:(id)callback createItemCallback:(id)itemCallback fromMessageItem:(id)item;
+ (id)editedMessageItemWithOriginalMessageItem:(id)item editedPartIndex:(int64_t)index newPartText:(id)text newPartTranslation:(id)translation;
+ (id)editedMessageItemWithOriginalMessageItem:(id)item retractedPartIndex:(int64_t)index shouldRetractSubject:(BOOL)subject;
+ (id)editedMessageItemWithOriginalMessageItem:(id)item retractedPartIndexes:(id)indexes shouldRetractSubject:(BOOL)subject;
+ (id)newMessageItemFrom:(id)from withText:(id)text deleteSubject:(BOOL)subject withFileTransferGUIDs:(id)ds;
+ (id)translationMessagePartClasses;
+ (unint64_t)messagePartIndexForAttachmentMessagePartWithTransferGUID:(id)d inBody:(id)body;
- (BOOL)_retractAllowedForBundleIdentifier:(id)identifier;
- (BOOL)_unrestrictedModificationsAllowedForBundleIdentifier:(id)identifier;
- (BOOL)_updateFileTransfersArrayReplacingTemporaryFileTransferGUIDs:(id)ds;
- (BOOL)_updateMessageBodyReplacingTemporaryFileTransferGUIDsWithUpdatedGUIDs:(id)ds;
- (BOOL)_updateMessageEditHistoryReplacingTemporaryFileTransferGUIDsWithUpdatedGUIDs:(id)ds;
- (BOOL)canRetryFailedRetraction;
- (BOOL)containsRichLink;
- (BOOL)encrypted;
- (BOOL)hasEditedParts;
- (BOOL)hasLegacyUrgentTriggerMatchInText;
- (BOOL)hasMessageHistoryForSpamReport;
- (BOOL)isAvailabilityReplySupported;
- (BOOL)isDeviceActionMessage;
- (BOOL)isEqual:(id)equal;
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
- (BOOL)updateTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:(id)ds;
- (BOOL)wasEverTimeSensitive;
- (BOOL)wasInterworked;
- (IMMessageItem)initWithCoder:(id)coder;
- (IMMessageItem)initWithDictionary:(id)dictionary hint:(id)hint;
- (IMMessageItem)initWithSender:(id)sender time:(id)time body:(id)body attributes:(id)attributes fileTransferGUIDs:(id)ds flags:(unint64_t)flags error:(id)error guid:(id)self0 type:(int64_t)self1 threadIdentifier:(id)self2;
- (IMMessageItem)initWithSender:(id)sender time:(id)time guid:(id)guid type:(int64_t)type;
- (IMMessageItem)initWithSenderInfo:(id)info time:(id)time timeRead:(id)read timeDelivered:(id)delivered timePlayed:(id)played subject:(id)subject body:(id)body bodyData:(id)self0 attributes:(id)self1 fileTransferGUIDs:(id)self2 flags:(unint64_t)self3 guid:(id)self4 messageID:(int64_t)self5 account:(id)self6 accountID:(id)self7 service:(id)self8 handle:(id)self9 roomName:(id)name unformattedID:(id)unformattedID countryCode:(id)code expireState:(int64_t)state balloonBundleID:(id)bundleID payloadData:(id)payloadData expressiveSendStyleID:(id)styleID timeExpressiveSendPlayed:(id)sendPlayed bizIntent:(id)intent locale:(id)locale biaReferenceID:(id)info0 errorType:(unsigned int)info1 type:(int64_t)info2 threadIdentifier:(id)info3 syndicationRanges:(id)info4 syncedSyndicationRanges:(id)info5 partCount:(unint64_t)info6 dateEdited:(id)info7 dateRecovered:(id)info8 scheduleType:(unint64_t)info9 scheduleState:(unint64_t)time0 cloudKitChatID:(id)time1;
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
- (double)_timeoutIntervalForEditType:(unint64_t)type;
- (id)_localizedBackwardsCompatibleExpressiveSendText;
- (id)_partRangeByIndexFromPlistSerializable:(id)serializable;
- (id)_partRangeByIndexToPlistSerializable:(id)serializable;
- (id)attachmentGUIDAtIndex:(unint64_t)index;
- (id)copyAsReplied;
- (id)copyDictionaryRepresentation;
- (id)copyForBackwardsCompatibility;
- (id)copyWithFlags:(unint64_t)flags;
- (id)copyWithZone:(_NSZone *)zone;
- (id)criticalMessagingAppName;
- (id)description;
- (id)findTransferGUIDMatchingSpotlightDonatedSpeculativeTransferGUID:(id)d;
- (id)formatWithReasonCode:(int64_t)code subReasonCode:(int64_t)reasonCode pathID:(int64_t)d;
- (id)historyForMessagePart:(int64_t)part;
- (id)messagePartMatchingPartIndex:(int64_t)index;
- (id)sender;
- (id)translationsForMessagePart:(int64_t)part;
- (int64_t)stewieConversationID;
- (int64_t)stewieSequenceNumber;
- (int64_t)transcriptSharingMessageType;
- (unint64_t)eligibilityForEditType:(unint64_t)type messagePartIndex:(int64_t)index;
- (unint64_t)expectedOffGridCapableDeliveries;
- (unint64_t)getCMMAssetOffset;
- (unint64_t)getCMMState;
- (unint64_t)messagePartIndexForAttachmentMessagePartWithTransferGUID:(id)d;
- (unint64_t)powerLogMessageType;
- (unint64_t)replyCountForPartIndex:(int64_t)index;
- (void)_generateBodyDataIfNeeded;
- (void)_generateBodyTextIfNeeded;
- (void)_recalculatePartCount;
- (void)_regenerateBodyData;
- (void)_regenerateBodyText;
- (void)addEditedPartIndex:(int64_t)index;
- (void)addFailedEditPartIndex:(int64_t)index;
- (void)addFailedRetractPartIndex:(int64_t)index;
- (void)addRetractedPartIndex:(int64_t)index;
- (void)addTelemetryMetricForKey:(int64_t)key;
- (void)addTelemetryMetricsFromDictionary:(id)dictionary;
- (void)addTranslation:(id)translation forMessagePart:(int64_t)part;
- (void)adjustIsEmptyFlag;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAttachmentGUIDsWithBlock:(id)block;
- (void)eraseMessageContent;
- (void)removeTranslationsForMessagePart:(int64_t)part;
- (void)setBody:(id)body;
- (void)setCMMAssetOffset:(unint64_t)offset;
- (void)setCMMState:(unint64_t)state;
- (void)setCMMStateToRegisteredAndAssetOffsetTo:(unint64_t)to;
- (void)setCriticalMessagingAppName:(id)name;
- (void)setEditedPartIndexes:(id)indexes;
- (void)setEncrypted:(BOOL)encrypted;
- (void)setExpectedOffGridCapableDeliveries:(unint64_t)deliveries;
- (void)setExpectedServiceForCrossServiceReplacement:(id)replacement;
- (void)setFailedEditPartIndexes:(id)indexes;
- (void)setFailedRetractPartIndexes:(id)indexes;
- (void)setFileTransferGUIDs:(id)ds;
- (void)setHasDataDetectorResults:(BOOL)results;
- (void)setHasUnseenMention:(BOOL)mention;
- (void)setHistory:(id)history forMessagePart:(int64_t)part;
- (void)setInitialTranscriptSharingItem:(BOOL)item;
- (void)setIsCorrupt:(BOOL)corrupt;
- (void)setIsCritical:(BOOL)critical;
- (void)setIsFailedHQTransfer:(BOOL)transfer;
- (void)setIsHQTransfer:(BOOL)transfer;
- (void)setIsKeyTransparencyVerifiedMessage:(BOOL)message;
- (void)setIsPendingSatelliteSend:(BOOL)send;
- (void)setIsSOS:(BOOL)s;
- (void)setIsSpam:(BOOL)spam;
- (void)setIsStewie:(BOOL)stewie;
- (void)setIsTapToRetry:(BOOL)retry;
- (void)setIsTimeSensitive:(BOOL)sensitive;
- (void)setMessageContentType:(id)type;
- (void)setNeedsRelay:(BOOL)relay;
- (void)setNeedsRepeatForRelayReplication:(BOOL)replication;
- (void)setOriginalGUID:(id)d;
- (void)setOriginalServiceName:(id)name;
- (void)setOriginalTextRangesByPartIndex:(id)index;
- (void)setOriginalUnformattedID:(id)d;
- (void)setPayloadData:(id)data;
- (void)setPlainBody:(id)body;
- (void)setRcsAdvisedAction:(id)action;
- (void)setReplicatedFallbackGUIDs:(id)ds;
- (void)setRetractedPartIndexes:(id)indexes;
- (void)setSatelliteMessageRetry:(BOOL)retry;
- (void)setScheduledMessageLastModifiedTime:(id)time;
- (void)setScheduledMessageOriginalTransferGUIDs:(id)ds;
- (void)setSentOrReceivedOffGrid:(BOOL)grid;
- (void)setSpamModelMetadata:(id)metadata;
- (void)setSpamModelVersion:(id)version;
- (void)setStewieConversationID:(int64_t)d;
- (void)setStewieConversationUUID:(id)d;
- (void)setStewieSequenceNumber:(int64_t)number;
- (void)setSubject:(id)subject;
- (void)setSwyAppName:(id)name;
- (void)setSwyBundleID:(id)d;
- (void)setTelemetryMetricsReasonCode:(int64_t)code subReasonCode:(int64_t)reasonCode pathID:(int64_t)d;
- (void)setTranscriptSharingMessageType:(int64_t)type;
- (void)setWasDataDetected:(BOOL)detected;
- (void)setWasEverTimeSensitive:(BOOL)sensitive;
- (void)setWasInterworked:(BOOL)interworked;
@end

@implementation IMMessageItem

- (id)copyDictionaryRepresentation
{
  v84[2] = *MEMORY[0x1E69E9840];
  v82.receiver = self;
  v82.super_class = IMMessageItem;
  copyDictionaryRepresentation = [(IMItem *)&v82 copyDictionaryRepresentation];
  v4 = objc_autoreleasePoolPush();
  if (!self->_plainBody || self->_fileTransferGUIDs || [(IMMessageItem *)self hasDataDetectorResults])
  {
    goto LABEL_16;
  }

  v5 = self->_plainBody;
  if (v5)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"plainBody", v5);
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
  isExpressiveTextEnabled = [v10 isExpressiveTextEnabled];

  v12 = MEMORY[0x1E695E0F0];
  if (isExpressiveTextEnabled)
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

  body = [(IMMessageItem *)self body];
  v23 = [body __im_containsAttributedValue:v21];

  if (v23)
  {
LABEL_16:
    bodyData = [(IMMessageItem *)self bodyData];
    if (bodyData)
    {
      CFDictionarySetValue(copyDictionaryRepresentation, @"bodyData", bodyData);
    }
  }

  v25 = self->_subject;
  if (v25)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"subject", v25);
  }

  v26 = self->_fileTransferGUIDs;
  if (v26)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"fileTransferGUIDs", v26);
  }

  typingIndicatorIcon = [(IMMessageItem *)self typingIndicatorIcon];
  if (typingIndicatorIcon)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"typingIndicatorIcon", typingIndicatorIcon);
  }

  timeRead = self->_timeRead;
  if (timeRead)
  {
    [(NSDate *)timeRead timeIntervalSinceReferenceDate];
    v29 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    if (v29)
    {
      CFDictionarySetValue(copyDictionaryRepresentation, @"timeRead", v29);
    }
  }

  timeDelivered = self->_timeDelivered;
  if (timeDelivered)
  {
    [(NSDate *)timeDelivered timeIntervalSinceReferenceDate];
    v31 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    if (v31)
    {
      CFDictionarySetValue(copyDictionaryRepresentation, @"timeDelivered", v31);
    }
  }

  timePlayed = self->_timePlayed;
  if (timePlayed)
  {
    [(NSDate *)timePlayed timeIntervalSinceReferenceDate];
    v33 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    if (v33)
    {
      CFDictionarySetValue(copyDictionaryRepresentation, @"timePlayed", v33);
    }
  }

  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_flags];
  if (v34)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"flags", v34);
  }

  if (self->_expireState)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
    if (v35)
    {
      CFDictionarySetValue(copyDictionaryRepresentation, @"expireState", v35);
    }
  }

  if (self->_payloadData)
  {
    payloadData = [(IMMessageItem *)self payloadData];
    if (payloadData)
    {
      CFDictionarySetValue(copyDictionaryRepresentation, @"payloadData", payloadData);
    }
  }

  if ([(NSString *)self->_expressiveSendStyleID length])
  {
    expressiveSendStyleID = [(IMMessageItem *)self expressiveSendStyleID];
    if (expressiveSendStyleID)
    {
      CFDictionarySetValue(copyDictionaryRepresentation, @"expressiveSendStyleID", expressiveSendStyleID);
    }
  }

  timeExpressiveSendPlayed = self->_timeExpressiveSendPlayed;
  if (timeExpressiveSendPlayed)
  {
    [(NSDate *)timeExpressiveSendPlayed timeIntervalSinceReferenceDate];
    v39 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    if (v39)
    {
      CFDictionarySetValue(copyDictionaryRepresentation, @"timeExpressiveSendPlayed", v39);
    }
  }

  if (self->_error)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    if (v40)
    {
      CFDictionarySetValue(copyDictionaryRepresentation, @"error", v40);
    }
  }

  if (self->_contactsAvatarRecipeData)
  {
    contactsAvatarRecipeData = [(IMMessageItem *)self contactsAvatarRecipeData];
    if (contactsAvatarRecipeData)
    {
      CFDictionarySetValue(copyDictionaryRepresentation, @"contactsAvatarRecipeData", contactsAvatarRecipeData);
    }
  }

  if (self->_messageSummaryInfo)
  {
    messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
    if (messageSummaryInfo)
    {
      CFDictionarySetValue(copyDictionaryRepresentation, @"messageSummaryInfo", messageSummaryInfo);
    }
  }

  bizIntent = self->_bizIntent;
  if (bizIntent)
  {
    v44 = bizIntent;
    CFDictionarySetValue(copyDictionaryRepresentation, @"bizIntent", v44);
  }

  locale = self->_locale;
  if (locale)
  {
    v46 = locale;
    CFDictionarySetValue(copyDictionaryRepresentation, @"locale", v46);
  }

  biaReferenceID = self->_biaReferenceID;
  if (biaReferenceID)
  {
    v48 = biaReferenceID;
    CFDictionarySetValue(copyDictionaryRepresentation, @"biaReferenceID", v48);
  }

  if (self->_useStandalone)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v49)
    {
      CFDictionarySetValue(copyDictionaryRepresentation, @"useStandalone", v49);
    }
  }

  notificationIDSTokenURI = self->_notificationIDSTokenURI;
  if (notificationIDSTokenURI)
  {
    v51 = notificationIDSTokenURI;
    CFDictionarySetValue(copyDictionaryRepresentation, @"notificationnotificationIDSTokenURI", v51);
  }

  if (self->_shouldSendMeCard)
  {
    v52 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v52)
    {
      CFDictionarySetValue(copyDictionaryRepresentation, @"shouldSendMeCard", v52);
    }
  }

  if (self->_shouldNotifyOnSend)
  {
    v53 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v53)
    {
      CFDictionarySetValue(copyDictionaryRepresentation, @"shouldNotifyOnSend", v53);
    }
  }

  if (self->_sentViaRemoteIntent)
  {
    v54 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v54)
    {
      CFDictionarySetValue(copyDictionaryRepresentation, @"sentViaRemoteIntent", v54);
    }
  }

  if (self->_isBeingRetried)
  {
    v55 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v55)
    {
      CFDictionarySetValue(copyDictionaryRepresentation, @"isBeingRetried", v55);
    }
  }

  retryToParticipant = self->_retryToParticipant;
  if (retryToParticipant)
  {
    v57 = retryToParticipant;
    CFDictionarySetValue(copyDictionaryRepresentation, @"retryToParticipant", v57);
  }

  threadIdentifier = self->_threadIdentifier;
  if (threadIdentifier)
  {
    [(__CFDictionary *)copyDictionaryRepresentation setValue:threadIdentifier forKey:@"threadIdentifier"];
  }

  threadOriginator = self->_threadOriginator;
  if (threadOriginator)
  {
    copyDictionaryRepresentation2 = [(IMMessageItem *)threadOriginator copyDictionaryRepresentation];
    [(__CFDictionary *)copyDictionaryRepresentation setValue:copyDictionaryRepresentation2 forKey:@"threadOriginator"];
  }

  replyCountsByPart = self->_replyCountsByPart;
  if (replyCountsByPart)
  {
    [(__CFDictionary *)copyDictionaryRepresentation setValue:replyCountsByPart forKey:@"replyCountsByPart"];
  }

  if (self->_syndicationRanges)
  {
    v62 = [IMMessagePartSyndicationRange serializedStringFromArray:?];
    [(__CFDictionary *)copyDictionaryRepresentation setValue:v62 forKey:@"syndicationRanges"];
  }

  if (self->_syncedSyndicationRanges)
  {
    v63 = [IMMessagePartSyndicationRange serializedStringFromArray:?];
    [(__CFDictionary *)copyDictionaryRepresentation setValue:v63 forKey:@"syncedSyndicationRanges"];
  }

  dateEdited = self->_dateEdited;
  if (dateEdited)
  {
    [(NSDate *)dateEdited timeIntervalSinceReferenceDate];
    v65 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    if (v65)
    {
      CFDictionarySetValue(copyDictionaryRepresentation, @"dateEdited", v65);
    }
  }

  dateRecovered = self->_dateRecovered;
  if (dateRecovered)
  {
    [(NSDate *)dateRecovered timeIntervalSinceReferenceDate];
    v67 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    if (v67)
    {
      CFDictionarySetValue(copyDictionaryRepresentation, @"dateRecovered", v67);
    }
  }

  groupActivity = self->_groupActivity;
  if (groupActivity)
  {
    v69 = groupActivity;
    CFDictionarySetValue(copyDictionaryRepresentation, @"groupActivity", v69);
  }

  collaborationInitiationRequestInfo = self->_collaborationInitiationRequestInfo;
  if (collaborationInitiationRequestInfo)
  {
    v71 = collaborationInitiationRequestInfo;
    CFDictionarySetValue(copyDictionaryRepresentation, @"collaborationInitiationRequest", v71);
  }

  v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_partCount];
  [(__CFDictionary *)copyDictionaryRepresentation setObject:v72 forKeyedSubscript:@"partCount"];

  v73 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_replaceID];
  [(__CFDictionary *)copyDictionaryRepresentation setObject:v73 forKeyedSubscript:@"replaceID"];

  [(__CFDictionary *)copyDictionaryRepresentation setObject:self->_fallbackHash forKeyedSubscript:@"fallbackHash"];
  v74 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_scheduleType];
  [(__CFDictionary *)copyDictionaryRepresentation setObject:v74 forKeyedSubscript:@"scheduleType"];

  v75 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_scheduleState];
  [(__CFDictionary *)copyDictionaryRepresentation setObject:v75 forKeyedSubscript:@"scheduleState"];

  telemetryMetrics = self->_telemetryMetrics;
  if (telemetryMetrics)
  {
    v77 = telemetryMetrics;
    CFDictionarySetValue(copyDictionaryRepresentation, @"telemetryMetrics", v77);
  }

  telemetryMetricsReasonCode = self->_telemetryMetricsReasonCode;
  if (telemetryMetricsReasonCode)
  {
    v79 = telemetryMetricsReasonCode;
    CFDictionarySetValue(copyDictionaryRepresentation, @"telemetryMetricsReasonCode", v79);
  }

  objc_autoreleasePoolPop(v4);
  v80 = copyDictionaryRepresentation;

  return v80;
}

- (BOOL)isStewie
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  stewieEnabled = [v3 stewieEnabled];

  if (stewieEnabled)
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
  stewieEnabled = [v3 stewieEnabled];

  if (!stewieEnabled)
  {
    return -1;
  }

  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v6 = [messageSummaryInfo objectForKey:@"stid"];

  if (!v6 || [v6 integerValue] < 0)
  {
    integerValue = -1;
  }

  else
  {
    integerValue = [v6 integerValue];
  }

  return integerValue;
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
  threadIdentifier = [(IMMessageItem *)self threadIdentifier];

  if (!threadIdentifier)
  {
    return 0;
  }

  threadIdentifier2 = [(IMMessageItem *)self threadIdentifier];
  v5 = [threadIdentifier2 length] != 0;

  return v5;
}

- (BOOL)isTypingMessage
{
  if ([(IMMessageItem *)self wasDetonated])
  {
    LOBYTE(isFinished) = 0;
  }

  else if ([(IMMessageItem *)self isFinished])
  {
    isFinished = [(IMMessageItem *)self isFinished];
    if (isFinished)
    {
      isFinished = [(IMMessageItem *)self isEmpty];
      if (isFinished)
      {
        LOBYTE(isFinished) = ![(IMMessageItem *)self hasEditedParts];
      }
    }
  }

  else
  {
    LOBYTE(isFinished) = 1;
  }

  return isFinished;
}

- (BOOL)isSuggestedActionResponse
{
  v6[1] = *MEMORY[0x1E69E9840];
  body = [(IMMessageItem *)self body];
  v6[0] = @"__kIMSuggestedActionAttributeName";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [body __im_containsAttributedValue:v3];

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
  isRCSEncryptionOptInTestEnabled = [v3 isRCSEncryptionOptInTestEnabled];

  if (isRCSEncryptionOptInTestEnabled)
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
  dateEdited = [(IMMessageItem *)self dateEdited];
  v3 = dateEdited != 0;

  return v3;
}

- (void)adjustIsEmptyFlag
{
  if (self->_body || self->_subject || [(NSData *)self->_payloadData length])
  {
    body = [(IMMessageItem *)self body];
    string = [body string];

    if (-[NSString length](self->_subject, "length") || [string length] || -[NSArray count](self->_fileTransferGUIDs, "count") || -[NSData length](self->_payloadData, "length"))
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
  dateEdited = [(IMMessageItem *)self dateEdited];

  if (!dateEdited)
  {
    return 0;
  }

  body = [(IMMessageItem *)self body];
  __im_countMessageParts = [body __im_countMessageParts];

  if (__im_countMessageParts > 0)
  {
    return 0;
  }

  subject = [(IMMessageItem *)self subject];
  v6 = [subject length] == 0;

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

- (id)translationsForMessagePart:(int64_t)part
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v5 = [messageSummaryInfo objectForKeyedSubscript:@"tmp"];
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
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:part];
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

- (void)addTranslation:(id)translation forMessagePart:(int64_t)part
{
  translationCopy = translation;
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  Mutable = [messageSummaryInfo mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  IMAddTranslatedMessagePartToMessageSummaryInfo(translationCopy, part, Mutable);
  v8 = [(__CFDictionary *)Mutable copy];
  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (void)removeTranslationsForMessagePart:(int64_t)part
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  capacitya = [messageSummaryInfo mutableCopy];

  Mutable = capacitya;
  if (!capacitya)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  capacity = Mutable;
  IMRemoveTranslatedMessagePartFromMessageSummaryInfo(part, Mutable);
  v7 = [(__CFDictionary *)capacity copy];
  [(IMMessageItem *)self setMessageSummaryInfo:v7];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v38.receiver = self;
  v38.super_class = IMMessageItem;
  v4 = [(IMItem *)&v38 copyWithZone:zone];
  plainBody = [(IMMessageItem *)self plainBody];
  [v4 setPlainBody:plainBody];

  timeRead = [(IMMessageItem *)self timeRead];
  [v4 setTimeRead:timeRead];

  timeDelivered = [(IMMessageItem *)self timeDelivered];
  [v4 setTimeDelivered:timeDelivered];

  timePlayed = [(IMMessageItem *)self timePlayed];
  [v4 setTimePlayed:timePlayed];

  body = [(IMMessageItem *)self body];
  [v4 setBody:body];

  bodyData = [(IMMessageItem *)self bodyData];
  [v4 setBodyData:bodyData];

  subject = [(IMMessageItem *)self subject];
  [v4 setSubject:subject];

  [v4 setErrorCode:{-[IMMessageItem errorCode](self, "errorCode")}];
  fileTransferGUIDs = [(IMMessageItem *)self fileTransferGUIDs];
  [v4 setFileTransferGUIDs:fileTransferGUIDs];

  [v4 setReplaceID:{-[IMMessageItem replaceID](self, "replaceID")}];
  [v4 setExpireState:{-[IMMessageItem expireState](self, "expireState")}];
  payloadData = [(IMMessageItem *)self payloadData];
  [v4 setPayloadData:payloadData];

  expressiveSendStyleID = [(IMMessageItem *)self expressiveSendStyleID];
  [v4 setExpressiveSendStyleID:expressiveSendStyleID];

  timeExpressiveSendPlayed = [(IMMessageItem *)self timeExpressiveSendPlayed];
  [v4 setTimeExpressiveSendPlayed:timeExpressiveSendPlayed];

  typingIndicatorIcon = [(IMMessageItem *)self typingIndicatorIcon];
  [v4 setTypingIndicatorIcon:typingIndicatorIcon];

  contactsAvatarRecipeData = [(IMMessageItem *)self contactsAvatarRecipeData];
  [v4 setContactsAvatarRecipeData:contactsAvatarRecipeData];

  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  [v4 setMessageSummaryInfo:messageSummaryInfo];

  bizIntent = [(IMMessageItem *)self bizIntent];
  [v4 setBizIntent:bizIntent];

  locale = [(IMMessageItem *)self locale];
  [v4 setLocale:locale];

  biaReferenceID = [(IMMessageItem *)self biaReferenceID];
  [v4 setBiaReferenceID:biaReferenceID];

  [v4 setUseStandalone:{-[IMMessageItem useStandalone](self, "useStandalone")}];
  notificationIDSTokenURI = [(IMMessageItem *)self notificationIDSTokenURI];
  [v4 setNotificationIDSTokenURI:notificationIDSTokenURI];

  [v4 setIsCorrupt:{-[IMMessageItem isCorrupt](self, "isCorrupt")}];
  [v4 setIsSpam:{-[IMMessageItem isSpam](self, "isSpam")}];
  [v4 setHasUnseenMention:{-[IMMessageItem hasUnseenMention](self, "hasUnseenMention")}];
  [v4 setShouldSendMeCard:{-[IMMessageItem shouldSendMeCard](self, "shouldSendMeCard")}];
  [v4 setShouldNotifyOnSend:{-[IMMessageItem shouldNotifyOnSend](self, "shouldNotifyOnSend")}];
  [v4 setSentViaRemoteIntent:{-[IMMessageItem sentViaRemoteIntent](self, "sentViaRemoteIntent")}];
  [v4 setIsBeingRetried:{-[IMMessageItem isBeingRetried](self, "isBeingRetried")}];
  retryToParticipant = [(IMMessageItem *)self retryToParticipant];
  [v4 setRetryToParticipant:retryToParticipant];

  threadIdentifier = [(IMMessageItem *)self threadIdentifier];
  [v4 setThreadIdentifier:threadIdentifier];

  threadOriginator = [(IMMessageItem *)self threadOriginator];
  [v4 setThreadOriginator:threadOriginator];

  replyCountsByPart = [(IMMessageItem *)self replyCountsByPart];
  [v4 setReplyCountsByPart:replyCountsByPart];

  syndicationRanges = [(IMMessageItem *)self syndicationRanges];
  [v4 setSyndicationRanges:syndicationRanges];

  syncedSyndicationRanges = [(IMMessageItem *)self syncedSyndicationRanges];
  [v4 setSyncedSyndicationRanges:syncedSyndicationRanges];

  dateEdited = [(IMMessageItem *)self dateEdited];
  [v4 setDateEdited:dateEdited];

  dateRecovered = [(IMMessageItem *)self dateRecovered];
  [v4 setDateRecovered:dateRecovered];

  groupActivity = [(IMMessageItem *)self groupActivity];
  [v4 setGroupActivity:groupActivity];

  collaborationInitiationRequestInfo = [(IMMessageItem *)self collaborationInitiationRequestInfo];
  [v4 setCollaborationInitiationRequestInfo:collaborationInitiationRequestInfo];

  fallbackHash = [(IMMessageItem *)self fallbackHash];
  [v4 setFallbackHash:fallbackHash];

  [v4 setIsKeyTransparencyVerifiedMessage:{-[IMMessageItem isKeyTransparencyVerifiedMessage](self, "isKeyTransparencyVerifiedMessage")}];
  [v4 setScheduleType:{-[IMMessageItem scheduleType](self, "scheduleType")}];
  [v4 setScheduleState:{-[IMMessageItem scheduleState](self, "scheduleState")}];
  [v4 setSelectedRichCardIndex:{-[IMMessageItem selectedRichCardIndex](self, "selectedRichCardIndex")}];
  telemetryMetrics = [(IMMessageItem *)self telemetryMetrics];
  v35 = [telemetryMetrics copy];
  [v4 setTelemetryMetrics:v35];

  telemetryMetricsReasonCode = [(IMMessageItem *)self telemetryMetricsReasonCode];
  [v4 setTelemetryMetricsReasonCode:telemetryMetricsReasonCode];

  [v4 setSkipIndexing:{-[IMMessageItem skipIndexing](self, "skipIndexing")}];
  return v4;
}

- (id)copyWithFlags:(unint64_t)flags
{
  v4 = [(IMMessageItem *)self copy];
  [v4 _updateFlags:flags];
  return v4;
}

- (id)copyAsReplied
{
  v3 = [(IMMessageItem *)self copyWithFlags:[(IMMessageItem *)self flags]];
  body = [(IMMessageItem *)self body];
  if ([body length])
  {
    string = [body string];
    v6 = [string substringFromIndex:{objc_msgSend(body, "length") - 1}];
    v7 = [v6 isEqualToString:@"\uFFFF"];

    if (v7)
    {
      v8 = [body attributesAtIndex:objc_msgSend(body effectiveRange:{"length") - 1, 0}];
      v9 = [v8 _arrayForKey:@"__kIMChipListAttributeName"];
      v10 = [[IMChipList alloc] initWithChipArray:v9 replied:1];
      v11 = [body mutableCopy];
      dictionaryRepresentation = [(IMChipList *)v10 dictionaryRepresentation];
      [v11 setAttributes:dictionaryRepresentation range:{objc_msgSend(v11, "length") - 1, 1}];

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
  body = [v3 body];
  string = [body string];
  v6 = [string rangeOfString:*MEMORY[0x1E69A5F20]];
  v8 = v7;

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = objc_alloc(MEMORY[0x1E696AD40]);
    body2 = [v3 body];
    v11 = [v9 initWithAttributedString:body2];

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

- (id)findTransferGUIDMatchingSpotlightDonatedSpeculativeTransferGUID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  guid = [(IMItem *)self guid];
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
        transferGUID = [v11 transferGUID];
        if ([transferGUID length])
        {
          v13 = IMFileTransferGUIDForAttachmentMessagePartAtMessageGUIDAndMessagePartIndex(guid, [v11 messagePartIndex]);
          if ([v13 isEqualToString:dCopy])
          {
            v14 = IMLogHandleForCategory("IMMessageItem");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v21 = transferGUID;
              v22 = 2112;
              v23 = dCopy;
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

  transferGUID = 0;
LABEL_15:

  return transferGUID;
}

- (unint64_t)messagePartIndexForAttachmentMessagePartWithTransferGUID:(id)d
{
  dCopy = d;
  body = [(IMMessageItem *)self body];
  v6 = [objc_opt_class() messagePartIndexForAttachmentMessagePartWithTransferGUID:dCopy inBody:body];

  return v6;
}

+ (unint64_t)messagePartIndexForAttachmentMessagePartWithTransferGUID:(id)d inBody:(id)body
{
  dCopy = d;
  bodyCopy = body;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if ([dCopy length])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A8655148;
    v9[3] = &unk_1E7827CF8;
    v10 = dCopy;
    v11 = &v12;
    [bodyCopy __im_visitMessageParts:v9];
    v7 = v13[3];

    _Block_object_dispose(&v12, 8);
  }

  return v7;
}

- (BOOL)_updateFileTransfersArrayReplacingTemporaryFileTransferGUIDs:(id)ds
{
  dsCopy = ds;
  fileTransferGUIDs = [(IMMessageItem *)self fileTransferGUIDs];
  v6 = [fileTransferGUIDs mutableCopy];
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
  [dsCopy enumerateKeysAndObjectsUsingBlock:&v11];
  v8 = *(v18 + 24);
  if (v8)
  {
    v9 = [v7 copy];
    [(IMMessageItem *)self setFileTransferGUIDs:v9];
  }

  _Block_object_dispose(&v17, 8);
  return v8;
}

- (BOOL)_updateMessageBodyReplacingTemporaryFileTransferGUIDsWithUpdatedGUIDs:(id)ds
{
  dsCopy = ds;
  body = [(IMMessageItem *)self body];
  if ([body length])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_1A8601EA8;
    v17 = sub_1A8602148;
    v18 = body;
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
    [dsCopy enumerateKeysAndObjectsUsingBlock:v8];
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

- (BOOL)_updateMessageEditHistoryReplacingTemporaryFileTransferGUIDsWithUpdatedGUIDs:(id)ds
{
  v73 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  selfCopy = self;
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v31 = [messageSummaryInfo _dictionaryForKey:@"ec"];

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
                    messagePartText = [(IMMessagePartHistoricalContent *)v13 messagePartText];
                    messagePartTranslation = [p_super messagePartTranslation];
                    v53 = 0;
                    v54 = &v53;
                    v55 = 0x3032000000;
                    v56 = sub_1A8601EA8;
                    v57 = sub_1A8602148;
                    v17 = messagePartText;
                    v58 = v17;
                    v47 = 0;
                    v48 = &v47;
                    v49 = 0x3032000000;
                    v50 = sub_1A8601EA8;
                    v51 = sub_1A8602148;
                    v18 = messagePartTranslation;
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
                    [dsCopy enumerateKeysAndObjectsUsingBlock:v42];
                    if (*(v44 + 24) == 1)
                    {
                      v19 = [p_super copyWithUpdatedMessagePartText:v54[5] updatedMessagePartTranslation:v48[5]];
                      messageSummaryInfoDictionaryRepresentation = [v19 messageSummaryInfoDictionaryRepresentation];
                      [v40 addObject:messageSummaryInfoDictionaryRepresentation];

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
      messageSummaryInfo2 = [(IMMessageItem *)selfCopy messageSummaryInfo];
      v23 = [messageSummaryInfo2 mutableCopy];
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
      [(IMMessageItem *)selfCopy setMessageSummaryInfo:v27];
    }

    goto LABEL_35;
  }

  v30 = 0;
LABEL_36:

  return v30;
}

- (BOOL)updateTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:(id)ds
{
  dsCopy = ds;
  v5 = [(IMMessageItem *)self _updateFileTransfersArrayReplacingTemporaryFileTransferGUIDs:dsCopy];
  v6 = [(IMMessageItem *)self _updateMessageBodyReplacingTemporaryFileTransferGUIDsWithUpdatedGUIDs:dsCopy];
  LOBYTE(self) = [(IMMessageItem *)self _updateMessageEditHistoryReplacingTemporaryFileTransferGUIDsWithUpdatedGUIDs:dsCopy];

  return ((v5 || v6) | self) & 1;
}

- (void)enumerateAttachmentGUIDsWithBlock:(id)block
{
  blockCopy = block;
  body = [(IMMessageItem *)self body];
  v6 = *MEMORY[0x1E69A5FD8];
  v7 = [body length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A8655DC8;
  v10[3] = &unk_1E7827D70;
  v11 = body;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = body;
  [v9 enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{0, v10}];
}

- (id)attachmentGUIDAtIndex:(unint64_t)index
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
  v8[6] = index;
  v8[4] = &v9;
  [(IMMessageItem *)self enumerateAttachmentGUIDsWithBlock:v8];
  if ((v10[3] & 1) == 0 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy = self;
      v21 = 2048;
      indexCopy = index;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "IMMessageItem.attachmentGUIDAtIndex: Did not find an attachment in message %@ at partKey %lu", buf, 0x16u);
    }
  }

  v6 = v14[5];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v6;
}

- (IMMessageItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v53.receiver = self;
  v53.super_class = IMMessageItem;
  v5 = [(IMItem *)&v53 initWithCoder:coderCopy];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"plainBody"];
    [(IMMessageItem *)v5 setPlainBody:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"typingIndicatorIcon"];
    [(IMMessageItem *)v5 setTypingIndicatorIcon:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bodyData"];
    [(IMMessageItem *)v5 setBodyData:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subject"];
    [(IMMessageItem *)v5 setSubject:v9];

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v10 setWithObjects:{v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"fileTransferGUIDs"];
    [(IMMessageItem *)v5 setFileTransferGUIDs:v17];

    [coderCopy decodeDoubleForKey:@"timeRead"];
    if (v18 > 10.0)
    {
      v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      [(IMMessageItem *)v5 setTimeRead:v19];
    }

    [coderCopy decodeDoubleForKey:@"timeDelivered"];
    if (v20 > 10.0)
    {
      v21 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      [(IMMessageItem *)v5 setTimeDelivered:v21];
    }

    [coderCopy decodeDoubleForKey:@"timePlayed"];
    if (v22 > 10.0)
    {
      v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      [(IMMessageItem *)v5 setTimePlayed:v23];
    }

    v5->_flags = [coderCopy decodeInt64ForKey:@"flags"];
    v5->_error = [coderCopy decodeInt32ForKey:@"error"];
    v5->_replaceID = [coderCopy decodeInt64ForKey:@"replaceID"];
    v5->_expireState = [coderCopy decodeInt64ForKey:@"expireState"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payloadData"];
    [(IMMessageItem *)v5 setPayloadData:v24];

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expressiveSendStyleID"];
    [(IMMessageItem *)v5 setExpressiveSendStyleID:v25];

    [coderCopy decodeDoubleForKey:@"timeExpressiveSendPlayed"];
    if (v26 > 10.0)
    {
      v27 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      [(IMMessageItem *)v5 setTimeExpressiveSendPlayed:v27];
    }

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactsAvatarRecipeData"];
    [(IMMessageItem *)v5 setContactsAvatarRecipeData:v28];

    v29 = [coderCopy decodeObjectOfClasses:v16 forKey:@"messageSummaryInfo"];
    [(IMMessageItem *)v5 setMessageSummaryInfo:v29];

    v30 = [coderCopy decodeObjectOfClasses:v16 forKey:@"bizIntent"];
    [(IMMessageItem *)v5 setBizIntent:v30];

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    [(IMMessageItem *)v5 setLocale:v31];

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"biaReferenceID"];
    [(IMMessageItem *)v5 setBiaReferenceID:v32];

    v5->_useStandalone = [coderCopy decodeBoolForKey:@"useStandalone"];
    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notificationnotificationIDSTokenURI"];
    [(IMMessageItem *)v5 setNotificationIDSTokenURI:v33];

    v5->_shouldSendMeCard = [coderCopy decodeBoolForKey:@"shouldSendMeCard"];
    v5->_shouldNotifyOnSend = [coderCopy decodeBoolForKey:@"shouldNotifyOnSend"];
    v5->_sentViaRemoteIntent = [coderCopy decodeBoolForKey:@"sentViaRemoteIntent"];
    v5->_isBeingRetried = [coderCopy decodeBoolForKey:@"isBeingRetried"];
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"retryToParticipant"];
    [(IMMessageItem *)v5 setRetryToParticipant:v34];

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"threadIdentifier"];
    [(IMMessageItem *)v5 setThreadIdentifier:v35];

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"threadOriginator"];
    [(IMMessageItem *)v5 setThreadOriginator:v36];

    v37 = [coderCopy decodeObjectOfClasses:v16 forKey:@"replyCountsByPart"];
    [(IMMessageItem *)v5 setReplyCountsByPart:v37];

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"syndicationRanges"];
    v39 = [IMMessagePartSyndicationRange rangesFromSerializedString:v38];
    [(IMMessageItem *)v5 setSyndicationRanges:v39];

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"syncedSyndicationRanges"];
    v41 = [IMMessagePartSyndicationRange rangesFromSerializedString:v40];
    [(IMMessageItem *)v5 setSyncedSyndicationRanges:v41];

    [coderCopy decodeDoubleForKey:@"dateEdited"];
    if (v42 > 10.0)
    {
      v43 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      [(IMMessageItem *)v5 setDateEdited:v43];
    }

    [coderCopy decodeDoubleForKey:@"dateRecovered"];
    if (v44 > 10.0)
    {
      v45 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      [(IMMessageItem *)v5 setDateRecovered:v45];
    }

    v5->_partCount = [coderCopy decodeIntegerForKey:@"partCount"];
    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupActivity"];
    [(IMMessageItem *)v5 setGroupActivity:v46];

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collaborationInitiationRequest"];
    [(IMMessageItem *)v5 setCollaborationInitiationRequestInfo:v47];

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fallbackHash"];
    [(IMMessageItem *)v5 setFallbackHash:v48];

    -[IMMessageItem setScheduleType:](v5, "setScheduleType:", [coderCopy decodeIntegerForKey:@"scheduleType"]);
    -[IMMessageItem setScheduleState:](v5, "setScheduleState:", [coderCopy decodeIntegerForKey:@"scheduleState"]);
    v49 = [coderCopy decodeObjectOfClasses:v16 forKey:@"telemetryMetrics"];
    [(IMMessageItem *)v5 setTelemetryMetrics:v49];

    v50 = [coderCopy decodeObjectOfClasses:v16 forKey:@"telemetryMetricsReasonCode"];
    [(IMMessageItem *)v5 setTelemetryMetricsReasonCode:v50];

    objc_autoreleasePoolPop(context);
  }

  return v5;
}

+ (BOOL)messageContainsSurfDD:(id)d
{
  dCopy = d;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [dCopy length];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A8656B0C;
  v7[3] = &unk_1E7827DE8;
  v7[4] = &v8;
  [dCopy enumerateAttributesInRange:0 options:v4 usingBlock:{0, v7}];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v49.receiver = self;
  v49.super_class = IMMessageItem;
  coderCopy = coder;
  [(IMItem *)&v49 encodeWithCoder:coderCopy];
  v5 = [(IMMessageItem *)self plainBody:v49.receiver];
  [coderCopy encodeObject:v5 forKey:@"plainBody"];

  typingIndicatorIcon = [(IMMessageItem *)self typingIndicatorIcon];
  [coderCopy encodeObject:typingIndicatorIcon forKey:@"typingIndicatorIcon"];

  bodyData = [(IMMessageItem *)self bodyData];
  [coderCopy encodeObject:bodyData forKey:@"bodyData"];

  subject = [(IMMessageItem *)self subject];
  [coderCopy encodeObject:subject forKey:@"subject"];

  fileTransferGUIDs = [(IMMessageItem *)self fileTransferGUIDs];
  [coderCopy encodeObject:fileTransferGUIDs forKey:@"fileTransferGUIDs"];

  timeRead = [(IMMessageItem *)self timeRead];
  [timeRead timeIntervalSinceReferenceDate];
  v12 = v11;

  [coderCopy encodeDouble:@"timeRead" forKey:v12];
  timeDelivered = [(IMMessageItem *)self timeDelivered];
  [timeDelivered timeIntervalSinceReferenceDate];
  v15 = v14;

  [coderCopy encodeDouble:@"timeDelivered" forKey:v15];
  timePlayed = [(IMMessageItem *)self timePlayed];
  [timePlayed timeIntervalSinceReferenceDate];
  v18 = v17;

  [coderCopy encodeDouble:@"timePlayed" forKey:v18];
  [coderCopy encodeInt64:self->_flags forKey:@"flags"];
  [coderCopy encodeInt32:self->_error forKey:@"error"];
  [coderCopy encodeInt64:self->_replaceID forKey:@"replaceID"];
  [coderCopy encodeInt64:self->_expireState forKey:@"expireState"];
  payloadData = [(IMMessageItem *)self payloadData];
  [coderCopy encodeObject:payloadData forKey:@"payloadData"];

  expressiveSendStyleID = [(IMMessageItem *)self expressiveSendStyleID];
  [coderCopy encodeObject:expressiveSendStyleID forKey:@"expressiveSendStyleID"];

  timeExpressiveSendPlayed = [(IMMessageItem *)self timeExpressiveSendPlayed];
  [timeExpressiveSendPlayed timeIntervalSinceReferenceDate];
  v23 = v22;

  [coderCopy encodeDouble:@"timeExpressiveSendPlayed" forKey:v23];
  contactsAvatarRecipeData = [(IMMessageItem *)self contactsAvatarRecipeData];
  [coderCopy encodeObject:contactsAvatarRecipeData forKey:@"contactsAvatarRecipeData"];

  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  [coderCopy encodeObject:messageSummaryInfo forKey:@"messageSummaryInfo"];

  bizIntent = [(IMMessageItem *)self bizIntent];
  [coderCopy encodeObject:bizIntent forKey:@"bizIntent"];

  locale = [(IMMessageItem *)self locale];
  [coderCopy encodeObject:locale forKey:@"locale"];

  biaReferenceID = [(IMMessageItem *)self biaReferenceID];
  [coderCopy encodeObject:biaReferenceID forKey:@"biaReferenceID"];

  [coderCopy encodeBool:self->_useStandalone forKey:@"useStandalone"];
  notificationIDSTokenURI = [(IMMessageItem *)self notificationIDSTokenURI];
  [coderCopy encodeObject:notificationIDSTokenURI forKey:@"notificationnotificationIDSTokenURI"];

  [coderCopy encodeBool:self->_shouldSendMeCard forKey:@"shouldSendMeCard"];
  [coderCopy encodeBool:self->_shouldNotifyOnSend forKey:@"shouldNotifyOnSend"];
  [coderCopy encodeBool:self->_sentViaRemoteIntent forKey:@"sentViaRemoteIntent"];
  [coderCopy encodeBool:-[IMMessageItem isBeingRetried](self forKey:{"isBeingRetried"), @"isBeingRetried"}];
  retryToParticipant = [(IMMessageItem *)self retryToParticipant];
  [coderCopy encodeObject:retryToParticipant forKey:@"retryToParticipant"];

  threadIdentifier = [(IMMessageItem *)self threadIdentifier];
  [coderCopy encodeObject:threadIdentifier forKey:@"threadIdentifier"];

  threadOriginator = [(IMMessageItem *)self threadOriginator];
  [coderCopy encodeObject:threadOriginator forKey:@"threadOriginator"];

  replyCountsByPart = [(IMMessageItem *)self replyCountsByPart];
  [coderCopy encodeObject:replyCountsByPart forKey:@"replyCountsByPart"];

  syndicationRanges = [(IMMessageItem *)self syndicationRanges];
  v35 = [IMMessagePartSyndicationRange serializedStringFromArray:syndicationRanges];
  [coderCopy encodeObject:v35 forKey:@"syndicationRanges"];

  syncedSyndicationRanges = [(IMMessageItem *)self syncedSyndicationRanges];
  v37 = [IMMessagePartSyndicationRange serializedStringFromArray:syncedSyndicationRanges];
  [coderCopy encodeObject:v37 forKey:@"syncedSyndicationRanges"];

  dateEdited = [(IMMessageItem *)self dateEdited];
  [dateEdited timeIntervalSinceReferenceDate];
  v40 = v39;

  [coderCopy encodeDouble:@"dateEdited" forKey:v40];
  dateRecovered = [(IMMessageItem *)self dateRecovered];
  [dateRecovered timeIntervalSinceReferenceDate];
  v43 = v42;

  [coderCopy encodeDouble:@"dateRecovered" forKey:v43];
  [coderCopy encodeInteger:-[IMMessageItem partCount](self forKey:{"partCount"), @"partCount"}];
  groupActivity = [(IMMessageItem *)self groupActivity];
  [coderCopy encodeObject:groupActivity forKey:@"groupActivity"];

  collaborationInitiationRequestInfo = [(IMMessageItem *)self collaborationInitiationRequestInfo];
  [coderCopy encodeObject:collaborationInitiationRequestInfo forKey:@"collaborationInitiationRequest"];

  fallbackHash = [(IMMessageItem *)self fallbackHash];
  [coderCopy encodeObject:fallbackHash forKey:@"fallbackHash"];

  [coderCopy encodeInteger:-[IMMessageItem scheduleType](self forKey:{"scheduleType"), @"scheduleType"}];
  [coderCopy encodeInteger:-[IMMessageItem scheduleState](self forKey:{"scheduleState"), @"scheduleState"}];
  telemetryMetrics = [(IMMessageItem *)self telemetryMetrics];
  [coderCopy encodeObject:telemetryMetrics forKey:@"telemetryMetrics"];

  telemetryMetricsReasonCode = [(IMMessageItem *)self telemetryMetricsReasonCode];
  [coderCopy encodeObject:telemetryMetricsReasonCode forKey:@"telemetryMetricsReasonCode"];
}

- (IMMessageItem)initWithDictionary:(id)dictionary hint:(id)hint
{
  dictionaryCopy = dictionary;
  hintCopy = hint;
  v79.receiver = self;
  v79.super_class = IMMessageItem;
  v8 = [(IMItem *)&v79 initWithDictionary:dictionaryCopy];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKey:@"bodyData"];
    [(IMMessageItem *)v8 setBodyData:v9];

    v10 = [dictionaryCopy objectForKey:@"subject"];
    [(IMMessageItem *)v8 setSubject:v10];

    v11 = [dictionaryCopy objectForKey:@"fileTransferGUIDs"];
    [(IMMessageItem *)v8 setFileTransferGUIDs:v11];

    v12 = [dictionaryCopy objectForKey:@"timeRead"];
    [v12 doubleValue];
    v14 = v13;

    if (v14 > 10.0)
    {
      v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v14];
      [(IMMessageItem *)v8 setTimeRead:v15];
    }

    v16 = [dictionaryCopy objectForKey:@"timeDelivered"];
    [v16 doubleValue];
    v18 = v17;

    if (v18 > 10.0)
    {
      v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v18];
      [(IMMessageItem *)v8 setTimeDelivered:v19];
    }

    v20 = [dictionaryCopy objectForKey:@"timePlayed"];
    [v20 doubleValue];
    v22 = v21;

    if (v22 > 10.0)
    {
      v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v22];
      [(IMMessageItem *)v8 setTimePlayed:v23];
    }

    v24 = [dictionaryCopy objectForKey:@"flags"];
    v8->_flags = [v24 unsignedLongLongValue];

    v25 = [dictionaryCopy objectForKey:@"expireState"];
    v8->_expireState = [v25 longLongValue];

    v26 = [dictionaryCopy objectForKey:@"error"];
    v8->_error = [v26 unsignedIntValue];

    v27 = [dictionaryCopy objectForKey:@"plainBody"];
    plainBody = v8->_plainBody;
    v8->_plainBody = v27;

    v29 = [dictionaryCopy objectForKey:@"typingIndicatorIcon"];
    typingIndicatorIcon = v8->_typingIndicatorIcon;
    v8->_typingIndicatorIcon = v29;

    v31 = [dictionaryCopy objectForKey:@"payloadData"];
    [(IMMessageItem *)v8 setPayloadData:v31];

    v32 = [dictionaryCopy objectForKey:@"balloonBundleID"];
    [(IMItem *)v8 setBalloonBundleID:v32];

    v33 = [dictionaryCopy objectForKey:@"expressiveSendStyleID"];
    [(IMMessageItem *)v8 setExpressiveSendStyleID:v33];

    v34 = [dictionaryCopy objectForKey:@"timeExpressiveSendPlayed"];
    [v34 doubleValue];
    v36 = v35;

    if (v36 > 10.0)
    {
      v37 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v36];
      [(IMMessageItem *)v8 setTimeExpressiveSendPlayed:v37];
    }

    if ([(IMMessageItem *)v8 isEqual:hintCopy])
    {
      body = [hintCopy body];
      [(IMMessageItem *)v8 setBody:body];
    }

    v39 = [dictionaryCopy objectForKey:@"contactsAvatarRecipeData"];
    [(IMMessageItem *)v8 setContactsAvatarRecipeData:v39];

    v40 = [dictionaryCopy objectForKey:@"messageSummaryInfo"];
    [(IMMessageItem *)v8 setMessageSummaryInfo:v40];

    v41 = [dictionaryCopy objectForKey:@"bizIntent"];
    [(IMMessageItem *)v8 setBizIntent:v41];

    v42 = [dictionaryCopy objectForKey:@"locale"];
    [(IMMessageItem *)v8 setLocale:v42];

    v43 = [dictionaryCopy objectForKey:@"biaReferenceID"];
    [(IMMessageItem *)v8 setBiaReferenceID:v43];

    v44 = [dictionaryCopy objectForKey:@"useStandalone"];
    -[IMMessageItem setUseStandalone:](v8, "setUseStandalone:", [v44 BOOLValue]);

    v45 = [dictionaryCopy objectForKey:@"notificationnotificationIDSTokenURI"];
    [(IMMessageItem *)v8 setNotificationIDSTokenURI:v45];

    v46 = [dictionaryCopy objectForKey:@"shouldSendMeCard"];
    -[IMMessageItem setShouldSendMeCard:](v8, "setShouldSendMeCard:", [v46 BOOLValue]);

    v47 = [dictionaryCopy objectForKey:@"shouldNotifyOnSend"];
    -[IMMessageItem setShouldNotifyOnSend:](v8, "setShouldNotifyOnSend:", [v47 BOOLValue]);

    v48 = [dictionaryCopy objectForKey:@"sentViaRemoteIntent"];
    -[IMMessageItem setSentViaRemoteIntent:](v8, "setSentViaRemoteIntent:", [v48 BOOLValue]);

    v49 = [dictionaryCopy objectForKey:@"isBeingRetried"];
    -[IMMessageItem setIsBeingRetried:](v8, "setIsBeingRetried:", [v49 BOOLValue]);

    v50 = [dictionaryCopy objectForKey:@"retryToParticipant"];
    [(IMMessageItem *)v8 setRetryToParticipant:v50];

    v51 = [dictionaryCopy objectForKey:@"threadIdentifier"];
    [(IMMessageItem *)v8 setThreadIdentifier:v51];

    [(IMMessageItem *)v8 setThreadOriginator:0];
    if ([(IMMessageItem *)v8 isReply])
    {
      v52 = [dictionaryCopy objectForKey:@"threadOriginator"];
      if (v52)
      {
        v53 = [[IMMessageItem alloc] initWithDictionary:v52 hint:0];
        [(IMMessageItem *)v8 setThreadOriginator:v53];
      }
    }

    v54 = [dictionaryCopy objectForKey:@"replyCountsByPart"];
    [(IMMessageItem *)v8 setReplyCountsByPart:v54];

    v55 = [dictionaryCopy objectForKey:@"syndicationRanges"];
    v56 = [IMMessagePartSyndicationRange rangesFromSerializedString:v55];
    [(IMMessageItem *)v8 setSyndicationRanges:v56];

    v57 = [dictionaryCopy objectForKey:@"syncedSyndicationRanges"];
    v58 = [IMMessagePartSyndicationRange rangesFromSerializedString:v57];
    [(IMMessageItem *)v8 setSyncedSyndicationRanges:v58];

    v59 = [dictionaryCopy objectForKey:@"dateEdited"];
    [v59 doubleValue];
    v61 = v60;

    if (v61 > 10.0)
    {
      v62 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v61];
      [(IMMessageItem *)v8 setDateEdited:v62];
    }

    v63 = [dictionaryCopy objectForKey:@"dateRecovered"];
    [v63 doubleValue];
    v65 = v64;

    if (v65 > 10.0)
    {
      v66 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v65];
      [(IMMessageItem *)v8 setDateRecovered:v66];
    }

    v67 = [dictionaryCopy objectForKey:@"partCount"];
    -[IMMessageItem setPartCount:](v8, "setPartCount:", [v67 unsignedIntegerValue]);

    v68 = [dictionaryCopy objectForKey:@"groupActivity"];
    [(IMMessageItem *)v8 setGroupActivity:v68];

    v69 = [dictionaryCopy objectForKey:@"collaborationInitiationRequest"];
    [(IMMessageItem *)v8 setCollaborationInitiationRequestInfo:v69];

    v70 = [dictionaryCopy objectForKey:@"replaceID"];
    -[IMMessageItem setReplaceID:](v8, "setReplaceID:", [v70 longLongValue]);

    v71 = [dictionaryCopy objectForKey:@"fallbackHash"];
    [(IMMessageItem *)v8 setFallbackHash:v71];

    v72 = [dictionaryCopy objectForKey:@"scheduleType"];
    [v72 doubleValue];
    [(IMMessageItem *)v8 setScheduleType:v73];

    v74 = [dictionaryCopy objectForKey:@"scheduleState"];
    [v74 doubleValue];
    [(IMMessageItem *)v8 setScheduleState:v75];

    v76 = [dictionaryCopy objectForKey:@"telemetryMetrics"];
    [(IMMessageItem *)v8 setTelemetryMetrics:v76];

    v77 = [dictionaryCopy objectForKey:@"telemetryMetricsReasonCode"];
    [(IMMessageItem *)v8 setTelemetryMetricsReasonCode:v77];
  }

  return v8;
}

- (IMMessageItem)initWithSender:(id)sender time:(id)time body:(id)body attributes:(id)attributes fileTransferGUIDs:(id)ds flags:(unint64_t)flags error:(id)error guid:(id)self0 type:(int64_t)self1 threadIdentifier:(id)self2
{
  senderCopy = sender;
  timeCopy = time;
  bodyCopy = body;
  attributesCopy = attributes;
  dsCopy = ds;
  errorCopy = error;
  guidCopy = guid;
  identifierCopy = identifier;
  if (senderCopy)
  {
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObject:senderCopy forKey:*MEMORY[0x1E69A6310]];
  }

  else
  {
    v24 = 0;
  }

  LODWORD(v27) = [errorCopy code];
  v25 = -[IMMessageItem initWithSenderInfo:time:timeRead:timeDelivered:timePlayed:subject:body:bodyData:attributes:fileTransferGUIDs:flags:guid:messageID:account:accountID:service:handle:roomName:unformattedID:countryCode:expireState:balloonBundleID:payloadData:expressiveSendStyleID:timeExpressiveSendPlayed:bizIntent:locale:biaReferenceID:errorType:type:threadIdentifier:syndicationRanges:syncedSyndicationRanges:partCount:dateEdited:dateRecovered:scheduleType:scheduleState:cloudKitChatID:](self, "initWithSenderInfo:time:timeRead:timeDelivered:timePlayed:subject:body:bodyData:attributes:fileTransferGUIDs:flags:guid:messageID:account:accountID:service:handle:roomName:unformattedID:countryCode:expireState:balloonBundleID:payloadData:expressiveSendStyleID:timeExpressiveSendPlayed:bizIntent:locale:biaReferenceID:errorType:type:threadIdentifier:syndicationRanges:syncedSyndicationRanges:partCount:dateEdited:dateRecovered:scheduleType:scheduleState:cloudKitChatID:", v24, timeCopy, 0, 0, 0, 0, bodyCopy, 0, attributesCopy, dsCopy, flags, guidCopy, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v27, type, identifierCopy, 0, 0, [bodyCopy __im_countMessageParts], 0, 0, 0, 0, 0);
  if (senderCopy)
  {
  }

  return v25;
}

- (IMMessageItem)initWithSender:(id)sender time:(id)time guid:(id)guid type:(int64_t)type
{
  if (sender)
  {
    v9 = MEMORY[0x1E695DF20];
    v10 = *MEMORY[0x1E69A6310];
    guidCopy = guid;
    timeCopy = time;
    v13 = [v9 dictionaryWithObject:sender forKey:v10];
    LODWORD(v20) = 0;
    v14 = [(IMMessageItem *)self initWithSenderInfo:v13 time:timeCopy timeRead:0 timeDelivered:0 timePlayed:0 subject:0 body:0 bodyData:0 attributes:0 fileTransferGUIDs:0 flags:0 guid:guidCopy messageID:0 account:0 accountID:0 service:0 handle:0 roomName:0 unformattedID:0 countryCode:0 expireState:0 balloonBundleID:0 payloadData:0 expressiveSendStyleID:0 timeExpressiveSendPlayed:0 bizIntent:0 locale:0 biaReferenceID:0 errorType:v20 type:0 threadIdentifier:0 syndicationRanges:0 syncedSyndicationRanges:0 partCount:0 dateEdited:0 dateRecovered:0 scheduleType:0 scheduleState:0 cloudKitChatID:0];

    v15 = v14;
  }

  else
  {
    guidCopy2 = guid;
    timeCopy2 = time;
    LODWORD(v20) = 0;
    v18 = [(IMMessageItem *)self initWithSenderInfo:0 time:timeCopy2 timeRead:0 timeDelivered:0 timePlayed:0 subject:0 body:0 bodyData:0 attributes:0 fileTransferGUIDs:0 flags:0 guid:guidCopy2 messageID:0 account:0 accountID:0 service:0 handle:0 roomName:0 unformattedID:0 countryCode:0 expireState:0 balloonBundleID:0 payloadData:0 expressiveSendStyleID:0 timeExpressiveSendPlayed:0 bizIntent:0 locale:0 biaReferenceID:0 errorType:v20 type:0 threadIdentifier:0 syndicationRanges:0 syncedSyndicationRanges:0 partCount:0 dateEdited:0 dateRecovered:0 scheduleType:0 scheduleState:0 cloudKitChatID:0];

    v15 = v18;
  }

  return v15;
}

- (IMMessageItem)initWithSenderInfo:(id)info time:(id)time timeRead:(id)read timeDelivered:(id)delivered timePlayed:(id)played subject:(id)subject body:(id)body bodyData:(id)self0 attributes:(id)self1 fileTransferGUIDs:(id)self2 flags:(unint64_t)self3 guid:(id)self4 messageID:(int64_t)self5 account:(id)self6 accountID:(id)self7 service:(id)self8 handle:(id)self9 roomName:(id)name unformattedID:(id)unformattedID countryCode:(id)code expireState:(int64_t)state balloonBundleID:(id)bundleID payloadData:(id)payloadData expressiveSendStyleID:(id)styleID timeExpressiveSendPlayed:(id)sendPlayed bizIntent:(id)intent locale:(id)locale biaReferenceID:(id)info0 errorType:(unsigned int)info1 type:(int64_t)info2 threadIdentifier:(id)info3 syndicationRanges:(id)info4 syncedSyndicationRanges:(id)info5 partCount:(unint64_t)info6 dateEdited:(id)info7 dateRecovered:(id)info8 scheduleType:(unint64_t)info9 scheduleState:(unint64_t)time0 cloudKitChatID:(id)time1
{
  readCopy = read;
  deliveredCopy = delivered;
  playedCopy = played;
  subjectCopy = subject;
  bodyCopy = body;
  dataCopy = data;
  dsCopy = ds;
  bundleIDCopy = bundleID;
  payloadDataCopy = payloadData;
  styleIDCopy = styleID;
  sendPlayedCopy = sendPlayed;
  intentCopy = intent;
  localeCopy = locale;
  referenceIDCopy = referenceID;
  identifierCopy = identifier;
  rangesCopy = ranges;
  syndicationRangesCopy = syndicationRanges;
  editedCopy = edited;
  recoveredCopy = recovered;
  chatIDCopy = chatID;
  v70.receiver = self;
  v70.super_class = IMMessageItem;
  v53 = [(IMItem *)&v70 initWithSenderInfo:info time:time guid:guid messageID:d account:account accountID:iD service:service handle:handle roomName:name unformattedID:unformattedID countryCode:code type:a32];
  v54 = v53;
  if (v53)
  {
    [(IMMessageItem *)v53 setSubject:subjectCopy];
    [(IMMessageItem *)v54 setTimeRead:readCopy];
    [(IMMessageItem *)v54 setTimeDelivered:deliveredCopy];
    [(IMMessageItem *)v54 setTimePlayed:playedCopy];
    [(IMMessageItem *)v54 _updateFlags:flags];
    [(IMMessageItem *)v54 setExpireState:state];
    [(IMMessageItem *)v54 setErrorCode:type];
    objc_storeStrong(&v54->_fileTransferGUIDs, ds);
    objc_storeStrong(&v54->_body, body);
    [(IMMessageItem *)v54 setPayloadData:payloadDataCopy];
    [(IMItem *)v54 setBalloonBundleID:bundleIDCopy];
    [(IMMessageItem *)v54 setExpressiveSendStyleID:styleIDCopy];
    [(IMMessageItem *)v54 setTimeExpressiveSendPlayed:sendPlayedCopy];
    if (dataCopy)
    {
      objc_storeStrong(&v54->_bodyData, data);
    }

    [(IMMessageItem *)v54 adjustIsEmptyFlag];
    [(IMMessageItem *)v54 setContactsAvatarRecipeData:0];
    [(IMMessageItem *)v54 setBizIntent:intentCopy];
    [(IMMessageItem *)v54 setLocale:localeCopy];
    [(IMMessageItem *)v54 setBiaReferenceID:referenceIDCopy];
    [(IMMessageItem *)v54 setThreadIdentifier:identifierCopy];
    [(IMMessageItem *)v54 setThreadOriginator:0];
    [(IMMessageItem *)v54 setSyndicationRanges:rangesCopy];
    [(IMMessageItem *)v54 setSyncedSyndicationRanges:syndicationRangesCopy];
    [(IMMessageItem *)v54 setPartCount:count];
    [(IMMessageItem *)v54 setDateEdited:editedCopy];
    [(IMMessageItem *)v54 setDateRecovered:recoveredCopy];
    [(IMMessageItem *)v54 setScheduleType:scheduleType];
    [(IMMessageItem *)v54 setScheduleState:scheduleState];
    [(IMItem *)v54 setCloudKitChatID:chatIDCopy];
  }

  return v54;
}

- (id)sender
{
  senderInfo = [(IMItem *)self senderInfo];
  v3 = [senderInfo objectForKey:*MEMORY[0x1E69A6310]];

  return v3;
}

- (BOOL)isFindMyPlugin
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  if ([v3 isWaldoEnabled])
  {
    balloonBundleID = [(IMItem *)self balloonBundleID];
    if ([balloonBundleID length])
    {
      balloonBundleID2 = [(IMItem *)self balloonBundleID];
      v6 = [balloonBundleID2 containsString:@"com.apple.findmy.FindMyMessagesApp"];
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
  isSWYAttachmentsEnabled = [v3 isSWYAttachmentsEnabled];

  if (isSWYAttachmentsEnabled)
  {
    balloonBundleID = [(IMItem *)self balloonBundleID];
    if (balloonBundleID)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      fileTransferGUIDs = [(IMMessageItem *)self fileTransferGUIDs];
      if (![fileTransferGUIDs count] || -[IMMessageItem isAudioMessage](self, "isAudioMessage") || -[IMMessageItem isTypingMessage](self, "isTypingMessage") || -[IMMessageItem isGroupTypingMessage](self, "isGroupTypingMessage"))
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

- (void)setIsTapToRetry:(BOOL)retry
{
  v3 = 0x10000000000;
  if (!retry)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (void)setIsCorrupt:(BOOL)corrupt
{
  v3 = 0x4000000;
  if (!corrupt)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)setIsSpam:(BOOL)spam
{
  v3 = 0x8000000;
  if (!spam)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)setIsSOS:(BOOL)s
{
  v3 = 0x8000000000;
  if (!s)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFF7FFFFFFFFFLL | v3;
}

- (void)setIsHQTransfer:(BOOL)transfer
{
  transferCopy = transfer;
  v5 = +[IMFeatureFlags sharedFeatureFlags];
  isLQMHQEnabled = [v5 isLQMHQEnabled];

  if (isLQMHQEnabled)
  {
    messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
    if ([messageSummaryInfo count])
    {
      messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
      v10 = [messageSummaryInfo2 mutableCopy];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithBool:transferCopy];
    [v10 setObject:v9 forKey:@"ihqt"];

    [(IMMessageItem *)self setMessageSummaryInfo:v10];
  }
}

- (void)setIsFailedHQTransfer:(BOOL)transfer
{
  transferCopy = transfer;
  v5 = +[IMFeatureFlags sharedFeatureFlags];
  isLQMHQEnabled = [v5 isLQMHQEnabled];

  if (isLQMHQEnabled)
  {
    messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
    if ([messageSummaryInfo count])
    {
      messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
      v10 = [messageSummaryInfo2 mutableCopy];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithBool:transferCopy];
    [v10 setObject:v9 forKey:@"ihqtf"];

    [(IMMessageItem *)self setMessageSummaryInfo:v10];
  }
}

- (BOOL)wasEverTimeSensitive
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  isPriorityMessagesEnabled = [v3 isPriorityMessagesEnabled];

  if (!isPriorityMessagesEnabled)
  {
    return 0;
  }

  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v6 = [messageSummaryInfo objectForKeyedSubscript:@"wets"];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)setWasEverTimeSensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  v5 = +[IMFeatureFlags sharedFeatureFlags];
  isPriorityMessagesEnabled = [v5 isPriorityMessagesEnabled];

  if (isPriorityMessagesEnabled)
  {
    messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
    if ([messageSummaryInfo count])
    {
      messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
      v10 = [messageSummaryInfo2 mutableCopy];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithBool:sensitiveCopy];
    [v10 setObject:v9 forKey:@"wets"];

    [(IMMessageItem *)self setMessageSummaryInfo:v10];
  }
}

- (NSString)originalGUID
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKeyedSubscript:@"orgid"];

  return v3;
}

- (void)setOriginalGUID:(id)d
{
  dCopy = d;
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v7 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v7 setObject:dCopy forKey:@"orgid"];
  [(IMMessageItem *)self setMessageSummaryInfo:v7];
}

- (void)setIsCritical:(BOOL)critical
{
  v3 = 0x4000000000;
  if (!critical)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFBFFFFFFFFFLL | v3;
}

- (void)setIsStewie:(BOOL)stewie
{
  stewieCopy = stewie;
  v5 = +[IMFeatureFlags sharedFeatureFlags];
  stewieEnabled = [v5 stewieEnabled];

  if (stewieEnabled)
  {
    v7 = 0x200000000;
    if (!stewieCopy)
    {
      v7 = 0;
    }

    self->_flags = self->_flags & 0xFFFFFFFDFFFFFFFFLL | v7;
  }
}

- (int64_t)stewieSequenceNumber
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  stewieEnabled = [v3 stewieEnabled];

  if (!stewieEnabled)
  {
    return -1;
  }

  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v6 = [messageSummaryInfo objectForKey:@"stsn"];

  if (!v6 || [v6 integerValue] < 0)
  {
    integerValue = -1;
  }

  else
  {
    integerValue = [v6 integerValue];
  }

  return integerValue;
}

- (void)setStewieSequenceNumber:(int64_t)number
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v8 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:number];
  [v8 setObject:v7 forKey:@"stsn"];

  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (void)setStewieConversationID:(int64_t)d
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v8 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:d];
  [v8 setObject:v7 forKey:@"stid"];

  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (NSUUID)stewieConversationUUID
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  stewieEnabled = [v3 stewieEnabled];

  if (stewieEnabled)
  {
    messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
    v6 = [messageSummaryInfo objectForKeyedSubscript:@"stcuuid"];

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

- (void)setStewieConversationUUID:(id)d
{
  dCopy = d;
  v4 = +[IMFeatureFlags sharedFeatureFlags];
  stewieEnabled = [v4 stewieEnabled];

  if (stewieEnabled)
  {
    messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
    if ([messageSummaryInfo count])
    {
      messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
      v8 = [messageSummaryInfo2 mutableCopy];
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    uUIDString = [dCopy UUIDString];
    [v8 setObject:uUIDString forKeyedSubscript:@"stcuuid"];

    [(IMMessageItem *)self setMessageSummaryInfo:v8];
  }
}

- (int64_t)transcriptSharingMessageType
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  isTranscriptSharingEnabled = [v3 isTranscriptSharingEnabled];

  if (!isTranscriptSharingEnabled)
  {
    return 0;
  }

  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v6 = [messageSummaryInfo objectForKey:@"tsmt"];

  if (!v6 || [v6 integerValue] < 0)
  {
    integerValue = 0;
  }

  else
  {
    integerValue = [v6 integerValue];
  }

  return integerValue;
}

- (void)setTranscriptSharingMessageType:(int64_t)type
{
  v5 = +[IMFeatureFlags sharedFeatureFlags];
  isTranscriptSharingEnabled = [v5 isTranscriptSharingEnabled];

  if (isTranscriptSharingEnabled)
  {
    messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
    if ([messageSummaryInfo count])
    {
      messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
      v10 = [messageSummaryInfo2 mutableCopy];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    [v10 setValue:v9 forKey:@"tsmt"];

    [(IMMessageItem *)self setMessageSummaryInfo:v10];
  }
}

- (BOOL)isInitialTranscriptSharingItem
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  isTranscriptSharingEnabled = [v3 isTranscriptSharingEnabled];

  if (!isTranscriptSharingEnabled)
  {
    return 0;
  }

  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v6 = [messageSummaryInfo objectForKey:@"tsfirstitem"];

  if (!v6)
  {
    return 0;
  }

  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)setInitialTranscriptSharingItem:(BOOL)item
{
  itemCopy = item;
  v5 = +[IMFeatureFlags sharedFeatureFlags];
  isTranscriptSharingEnabled = [v5 isTranscriptSharingEnabled];

  if (isTranscriptSharingEnabled)
  {
    messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
    if ([messageSummaryInfo count])
    {
      messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
      v10 = [messageSummaryInfo2 mutableCopy];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithBool:itemCopy];
    [v10 setValue:v9 forKey:@"tsfirstitem"];

    [(IMMessageItem *)self setMessageSummaryInfo:v10];
  }
}

- (void)setIsPendingSatelliteSend:(BOOL)send
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
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  isIntroductionsEnabled = [v3 isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    return (BYTE5(self->_flags) >> 4) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)setIsTimeSensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  v5 = +[IMFeatureFlags sharedFeatureFlags];
  isIntroductionsEnabled = [v5 isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    if (sensitiveCopy)
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
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKeyedSubscript:@"rfgs"];

  return v3;
}

- (void)setReplicatedFallbackGUIDs:(id)ds
{
  dsCopy = ds;
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v5 = [messageSummaryInfo mutableCopy];

  if (dsCopy)
  {
    [v5 setObject:dsCopy forKeyedSubscript:@"rfgs"];
  }

  else
  {
    [v5 removeObjectForKey:@"rfgs"];
  }

  v6 = [v5 copy];
  [(IMMessageItem *)self setMessageSummaryInfo:v6];
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

- (BOOL)shouldSendPartIndexesInMessageBody
{
  body = [(IMMessageItem *)self body];
  __im_countMessageParts = [body __im_countMessageParts];

  if (__im_countMessageParts > 1)
  {
    return 1;
  }

  editedPartIndexes = [(IMMessageItem *)self editedPartIndexes];
  v6 = [editedPartIndexes count];

  if (v6)
  {
    return 1;
  }

  retractedPartIndexes = [(IMMessageItem *)self retractedPartIndexes];
  v7 = [retractedPartIndexes count] != 0;

  return v7;
}

- (unint64_t)replyCountForPartIndex:(int64_t)index
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  replyCountsByPart = [(IMMessageItem *)self replyCountsByPart];
  if ([replyCountsByPart count])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1A86599E0;
    v7[3] = &unk_1E7827E10;
    v7[4] = &v8;
    v7[5] = index;
    [replyCountsByPart enumerateKeysAndObjectsUsingBlock:v7];
  }

  v5 = v9[3];

  _Block_object_dispose(&v8, 8);
  return v5;
}

- (BOOL)needsRepeatForRelayReplication
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"nrr"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setNeedsRepeatForRelayReplication:(BOOL)replication
{
  replicationCopy = replication;
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v8 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  if (replicationCopy)
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
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"ismr"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setSatelliteMessageRetry:(BOOL)retry
{
  retryCopy = retry;
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v8 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  if (retryCopy)
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
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"eogcd"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setExpectedOffGridCapableDeliveries:(unint64_t)deliveries
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v8 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  if (deliveries)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:deliveries];
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
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"acsr"];

  return v3;
}

- (void)setExpectedServiceForCrossServiceReplacement:(id)replacement
{
  replacementCopy = replacement;
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v7 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v7 setObject:replacementCopy forKeyedSubscript:@"acsr"];
  [(IMMessageItem *)self setMessageSummaryInfo:v7];
}

- (NSString)rcsAdvisedAction
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"raa"];

  return v3;
}

- (void)setRcsAdvisedAction:(id)action
{
  actionCopy = action;
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v7 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v7 setObject:actionCopy forKeyedSubscript:@"raa"];
  [(IMMessageItem *)self setMessageSummaryInfo:v7];
}

- (BOOL)encrypted
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"enc"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setEncrypted:(BOOL)encrypted
{
  encryptedCopy = encrypted;
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v8 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:encryptedCopy];
  [v8 setObject:v7 forKeyedSubscript:@"enc"];

  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (NSNumber)messageContentType
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"amc"];

  return v3;
}

- (void)setMessageContentType:(id)type
{
  typeCopy = type;
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v7 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v7 setObject:typeCopy forKeyedSubscript:@"amc"];
  [(IMMessageItem *)self setMessageSummaryInfo:v7];
}

- (NSString)spamModelVersion
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"smv"];

  return v3;
}

- (void)setSpamModelVersion:(id)version
{
  versionCopy = version;
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v7 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v7 setObject:versionCopy forKeyedSubscript:@"smv"];
  [(IMMessageItem *)self setMessageSummaryInfo:v7];
}

- (NSDictionary)spamModelMetadata
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"smm"];

  return v3;
}

- (void)setSpamModelMetadata:(id)metadata
{
  metadataCopy = metadata;
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v8 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  __im_propertyListSafeCopy = [metadataCopy __im_propertyListSafeCopy];

  [v8 setObject:__im_propertyListSafeCopy forKeyedSubscript:@"smm"];
  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (id)criticalMessagingAppName
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"critical-messaging-app-name"];

  return v3;
}

- (void)setCriticalMessagingAppName:(id)name
{
  nameCopy = name;
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v7 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v7 setObject:nameCopy forKeyedSubscript:@"critical-messaging-app-name"];
  [(IMMessageItem *)self setMessageSummaryInfo:v7];
}

- (NSDate)scheduledMessageLastModifiedTime
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"smlmt"];

  return v3;
}

- (void)setScheduledMessageLastModifiedTime:(id)time
{
  if (time)
  {
    timeCopy = time;
    messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
    if ([messageSummaryInfo count])
    {
      messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
      v7 = [messageSummaryInfo2 mutableCopy];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v7 setObject:timeCopy forKeyedSubscript:@"smlmt"];
    [(IMMessageItem *)self setMessageSummaryInfo:v7];
  }
}

- (NSArray)scheduledMessageOriginalTransferGUIDs
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"smotg"];

  return v3;
}

- (void)setScheduledMessageOriginalTransferGUIDs:(id)ds
{
  if (ds)
  {
    dsCopy = ds;
    messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
    if ([messageSummaryInfo count])
    {
      messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
      v7 = [messageSummaryInfo2 mutableCopy];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v7 setObject:dsCopy forKeyedSubscript:@"smotg"];
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
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A865A89C;
  v11[3] = &unk_1E7827E38;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  [messageSummaryInfo enumerateKeysAndObjectsUsingBlock:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (id)editedMessageItemWithOriginalMessageItem:(id)item retractedPartIndex:(int64_t)index shouldRetractSubject:(BOOL)subject
{
  subjectCopy = subject;
  v8 = MEMORY[0x1E696AC90];
  itemCopy = item;
  v10 = [v8 indexSetWithIndex:index];
  v11 = [self editedMessageItemWithOriginalMessageItem:itemCopy retractedPartIndexes:v10 shouldRetractSubject:subjectCopy];

  return v11;
}

+ (id)editedMessageItemWithOriginalMessageItem:(id)item retractedPartIndexes:(id)indexes shouldRetractSubject:(BOOL)subject
{
  itemCopy = item;
  indexesCopy = indexes;
  body = [itemCopy body];
  if (!body)
  {
    plainBody = [itemCopy plainBody];
    v11 = plainBody;
    v12 = &stru_1F1BB91F0;
    if (plainBody)
    {
      v12 = plainBody;
    }

    v13 = v12;

    body = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v13];
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1A8601EA8;
  v30 = sub_1A8602148;
  v14 = body;
  subject = 0;
  v31 = v14;
  if (!subject)
  {
    subject = [itemCopy subject];
  }

  v16 = [itemCopy copyWithFlags:{objc_msgSend(itemCopy, "flags")}];
  [v16 _setMessageID:{objc_msgSend(itemCopy, "messageID")}];
  [v16 setPlainBody:0];
  [v16 setSubject:subject];
  [v16 setSortID:0];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = sub_1A865ABF0;
  v23 = &unk_1E7827E60;
  v25 = &v26;
  v17 = v16;
  v24 = v17;
  [indexesCopy enumerateIndexesUsingBlock:&v20];
  __im_dateWithCurrentServerTime = [MEMORY[0x1E695DF00] __im_dateWithCurrentServerTime];
  [v17 setDateEdited:__im_dateWithCurrentServerTime];

  [v17 setBody:v27[5]];
  _Block_object_dispose(&v26, 8);

  return v17;
}

+ (id)editedMessageItemWithOriginalMessageItem:(id)item editedPartIndex:(int64_t)index newPartText:(id)text newPartTranslation:(id)translation
{
  itemCopy = item;
  textCopy = text;
  translationCopy = translation;
  body = [itemCopy body];
  if (!body)
  {
    plainBody = [itemCopy plainBody];
    v14 = plainBody;
    v15 = &stru_1F1BB91F0;
    if (plainBody)
    {
      v15 = plainBody;
    }

    v16 = v15;

    body = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v16];
  }

  if (index == -1)
  {
    string = [textCopy string];
    v18 = body;
  }

  else
  {
    string = [itemCopy subject];
    v18 = [body __im_messageTextByReplacingMessagePartIndex:index withNewPartText:textCopy];
  }

  v19 = v18;
  v20 = [itemCopy copyWithFlags:{objc_msgSend(itemCopy, "flags")}];
  [v20 _setMessageID:{objc_msgSend(itemCopy, "messageID")}];
  [v20 setBody:v19];
  [v20 setPlainBody:0];
  [v20 setSubject:string];
  __im_dateWithCurrentServerTime = [MEMORY[0x1E695DF00] __im_dateWithCurrentServerTime];
  [v20 setDateEdited:__im_dateWithCurrentServerTime];

  [v20 addEditedPartIndex:index];
  [v20 setSortID:0];
  v22 = +[IMFeatureFlags sharedFeatureFlags];
  isAutomaticOutgoingTranslationEnabled = [v22 isAutomaticOutgoingTranslationEnabled];

  if (translationCopy && isAutomaticOutgoingTranslationEnabled)
  {
    [v20 addTranslation:translationCopy forMessagePart:index];
  }

  return v20;
}

- (NSIndexSet)editedPartIndexes
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"ep"];

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

- (void)setEditedPartIndexes:(id)indexes
{
  indexesCopy = indexes;
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v9 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  __im_numberArray = [indexesCopy __im_numberArray];

  [v9 setObject:__im_numberArray forKey:@"ep"];
  v8 = [v9 copy];
  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (void)addEditedPartIndex:(int64_t)index
{
  editedPartIndexes = [(IMMessageItem *)self editedPartIndexes];
  v5 = [editedPartIndexes mutableCopy];
  [v5 addIndex:index];
  v6 = [v5 copy];
  [(IMMessageItem *)self setEditedPartIndexes:v6];
}

- (NSIndexSet)retractedPartIndexes
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"rp"];

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

- (void)setRetractedPartIndexes:(id)indexes
{
  indexesCopy = indexes;
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v9 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  __im_numberArray = [indexesCopy __im_numberArray];

  [v9 setObject:__im_numberArray forKey:@"rp"];
  v8 = [v9 copy];
  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (void)addRetractedPartIndex:(int64_t)index
{
  retractedPartIndexes = [(IMMessageItem *)self retractedPartIndexes];
  v5 = [retractedPartIndexes mutableCopy];
  [v5 addIndex:index];
  v6 = [v5 copy];
  [(IMMessageItem *)self setRetractedPartIndexes:v6];
}

- (NSIndexSet)failedEditPartIndexes
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"edfp"];

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

- (void)setFailedEditPartIndexes:(id)indexes
{
  indexesCopy = indexes;
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v9 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  __im_numberArray = [indexesCopy __im_numberArray];

  [v9 setObject:__im_numberArray forKey:@"edfp"];
  v8 = [v9 copy];
  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (void)addFailedEditPartIndex:(int64_t)index
{
  v14 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      guid = [(IMItem *)self guid];
      v10 = 134218242;
      indexCopy = index;
      v12 = 2112;
      v13 = guid;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Adding failed edit part index %ld to message %@", &v10, 0x16u);
    }
  }

  failedEditPartIndexes = [(IMMessageItem *)self failedEditPartIndexes];
  v8 = [failedEditPartIndexes mutableCopy];
  [v8 addIndex:index];
  v9 = [v8 copy];
  [(IMMessageItem *)self setFailedEditPartIndexes:v9];
}

- (NSIndexSet)failedRetractPartIndexes
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"rdfp"];

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

- (void)setFailedRetractPartIndexes:(id)indexes
{
  indexesCopy = indexes;
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v9 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  __im_numberArray = [indexesCopy __im_numberArray];

  [v9 setObject:__im_numberArray forKey:@"rdfp"];
  v8 = [v9 copy];
  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (void)addFailedRetractPartIndex:(int64_t)index
{
  v14 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      guid = [(IMItem *)self guid];
      v10 = 134218242;
      indexCopy = index;
      v12 = 2112;
      v13 = guid;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Adding failed retract part index %ld to message %@", &v10, 0x16u);
    }
  }

  failedRetractPartIndexes = [(IMMessageItem *)self failedRetractPartIndexes];
  v8 = [failedRetractPartIndexes mutableCopy];
  [v8 addIndex:index];
  v9 = [v8 copy];
  [(IMMessageItem *)self setFailedRetractPartIndexes:v9];
}

- (id)historyForMessagePart:(int64_t)part
{
  v25 = *MEMORY[0x1E69E9840];
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v5 = [messageSummaryInfo _dictionaryForKey:@"ec"];

  if ([v5 count])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:part];
    stringValue = [v6 stringValue];

    v8 = [v5 _arrayForKey:stringValue];
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

- (void)setHistory:(id)history forMessagePart:(int64_t)part
{
  v34 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = historyCopy;
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

        messageSummaryInfoDictionaryRepresentation = [*(*(&v29 + 1) + 8 * i) messageSummaryInfoDictionaryRepresentation];
        if (messageSummaryInfoDictionaryRepresentation)
        {
          [v7 addObject:messageSummaryInfoDictionaryRepresentation];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v16 = [messageSummaryInfo mutableCopy];
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

  v25 = [MEMORY[0x1E696AD98] numberWithInteger:part];
  stringValue = [v25 stringValue];

  if ([v14 count])
  {
    [v24 setObject:v14 forKey:stringValue];
  }

  else
  {
    [v24 removeObjectForKey:stringValue];
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
  balloonBundleID = [(IMItem *)self balloonBundleID];

  if (balloonBundleID)
  {
    v5 = MEMORY[0x1E696AEC0];
    guid = [(IMItem *)self guid];
    v7 = [v5 stringWithFormat:@"bp:%@", guid];
    [v3 addObject:v7];
  }

  else if ([(IMMessageItem *)self partCount])
  {
    v8 = 0;
    do
    {
      v9 = MEMORY[0x1E696AEC0];
      guid2 = [(IMItem *)self guid];
      v11 = [v9 stringWithFormat:@"p:%lu/%@", v8, guid2];
      [v3 addObject:v11];

      ++v8;
    }

    while (v8 < [(IMMessageItem *)self partCount]);
  }

  return v3;
}

- (NSDictionary)originalTextRangesByPartIndex
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v4 = [messageSummaryInfo objectForKey:@"otr"];

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

- (void)setOriginalTextRangesByPartIndex:(id)index
{
  v8 = [(IMMessageItem *)self _partRangeByIndexToPlistSerializable:index];
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v6 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v6 setObject:v8 forKey:@"otr"];
  v7 = [v6 copy];
  [(IMMessageItem *)self setMessageSummaryInfo:v7];
}

- (id)_partRangeByIndexToPlistSerializable:(id)serializable
{
  v3 = MEMORY[0x1E695DF90];
  serializableCopy = serializable;
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A865BF38;
  v9[3] = &unk_1E7827E88;
  v10 = v5;
  v6 = v5;
  [serializableCopy enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

- (id)_partRangeByIndexFromPlistSerializable:(id)serializable
{
  v3 = MEMORY[0x1E695DF90];
  serializableCopy = serializable;
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A865C120;
  v9[3] = &unk_1E7827EB0;
  v10 = v5;
  v6 = v5;
  [serializableCopy enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

- (NSArray)editUnsupportedByHandleIDs
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"euh"];
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

- (BOOL)_retractAllowedForBundleIdentifier:(id)identifier
{
  balloonBundleID = [(IMItem *)self balloonBundleID];
  v4 = IMBalloonBundleIDFromExtensionID(balloonBundleID);

  LOBYTE(balloonBundleID) = [v4 isEqualToString:@"com.apple.messages.URLBalloonProvider"];
  v5 = [v4 isEqualToString:@"com.apple.DigitalTouchBalloonProvider"];
  v6 = [v4 isEqualToString:@"com.apple.Jellyfish.Animoji"];
  LOBYTE(balloonBundleID) = balloonBundleID | v5 | v6 | [v4 isEqualToString:@"com.apple.messages.Polls"];

  return balloonBundleID & 1;
}

- (unint64_t)eligibilityForEditType:(unint64_t)type messagePartIndex:(int64_t)index
{
  v43 = *MEMORY[0x1E69E9840];
  if ([(IMMessageItem *)self isFromMe])
  {
    if ([(IMMessageItem *)self isSent])
    {
      if (type != 2 || (-[IMItem service](self, "service"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqualToString:IMServiceNameiMessage[0]], v7, (v8 & 1) != 0))
      {
        handle = [(IMItem *)self handle];
        if ([handle length] && MEMORY[0x1AC570A30](handle))
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

        time = [(IMItem *)self time];
        __im_dateWithCurrentServerTime = [MEMORY[0x1E695DF00] __im_dateWithCurrentServerTime];
        [__im_dateWithCurrentServerTime timeIntervalSinceDate:time];
        v18 = v17;
        [(IMMessageItem *)self _timeoutIntervalForEditType:type];
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
              v40 = time;
              v41 = 2112;
              v42 = __im_dateWithCurrentServerTime;
              _os_log_impl(&dword_1A85E5000, v26, OS_LOG_TYPE_INFO, "Message cannot be edited, message was sent %ld seconds ago, which is greater than timeout of %ld seconds. Sent: %@ Now: %@", &v35, 0x2Au);
            }
          }

          v11 = 3;
          goto LABEL_58;
        }

        balloonBundleID = [(IMItem *)self balloonBundleID];
        if (![balloonBundleID length])
        {
LABEL_30:
          messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
          v22 = [messageSummaryInfo objectForKey:@"amab"];

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

          if (type == 1)
          {
            v29 = [(IMMessageItem *)self historyForMessagePart:index];
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

        if (type == 2)
        {
          if ([(IMMessageItem *)self _retractAllowedForBundleIdentifier:balloonBundleID])
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

- (double)_timeoutIntervalForEditType:(unint64_t)type
{
  if (type == 2)
  {
    MEMORY[0x1EEE66B58](self, sel__messageRetractionTimeout);
  }

  else if (type == 1)
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
  time = [(IMItem *)self time];
  __im_dateWithCurrentServerTime = [MEMORY[0x1E695DF00] __im_dateWithCurrentServerTime];
  [__im_dateWithCurrentServerTime timeIntervalSinceDate:time];
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
      v16 = time;
      v17 = 2112;
      v18 = __im_dateWithCurrentServerTime;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Cannot retry retraction, message was sent %ld seconds ago, which is greater than timeout of %ld seconds. Sent: %@ Now: %@", &v11, 0x2Au);
    }
  }

  return v6 < v8;
}

- (void)setHasUnseenMention:(BOOL)mention
{
  v3 = 0x10000000;
  if (!mention)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)setHasDataDetectorResults:(BOOL)results
{
  resultsCopy = results;
  if ([(IMMessageItem *)self hasDataDetectorResults]!= results)
  {
    v5 = 0x10000;
    if (!resultsCopy)
    {
      v5 = 0;
    }

    self->_flags = self->_flags & 0xFFFFFFFFFFFEFFFFLL | v5;
  }
}

- (BOOL)containsRichLink
{
  body = [(IMMessageItem *)self body];
  v3 = [body length];
  v4 = body && ([body attribute:*MEMORY[0x1E69A5FB0] existsInRange:{0, v3}] & 1) != 0;

  return v4;
}

- (NSArray)richLinkURLs
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1A8601EA8;
  v13 = sub_1A8602148;
  array = [MEMORY[0x1E695DF70] array];
  body = [(IMMessageItem *)self body];
  v4 = [body length];
  v5 = *MEMORY[0x1E69A5FB0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A865D310;
  v8[3] = &unk_1E7827ED8;
  v8[4] = &v9;
  [body enumerateAttribute:v5 inRange:0 options:v4 usingBlock:{0, v8}];
  v6 = [v10[5] copy];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (NSString)swyAppName
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"swyan"];

  return v3;
}

- (void)setSwyAppName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
    if ([messageSummaryInfo count])
    {
      messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
      v6 = [messageSummaryInfo2 mutableCopy];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v6 setObject:nameCopy forKey:@"swyan"];
    [(IMMessageItem *)self setMessageSummaryInfo:v6];
  }
}

- (NSString)swyBundleID
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"swybid"];

  return v3;
}

- (void)setSwyBundleID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
    if ([messageSummaryInfo count])
    {
      messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
      v6 = [messageSummaryInfo2 mutableCopy];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v6 setObject:dCopy forKey:@"swybid"];
    [(IMMessageItem *)self setMessageSummaryInfo:v6];
  }
}

- (void)setWasDataDetected:(BOOL)detected
{
  v3 = 0x100000;
  if (!detected)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (NSString)originalUnformattedID
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKeyedSubscript:@"oui"];

  return v3;
}

- (void)setOriginalUnformattedID:(id)d
{
  dCopy = d;
  if (dCopy || ([(IMMessageItem *)self originalUnformattedID], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
    v6 = [messageSummaryInfo mutableCopy];
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

    if (dCopy)
    {
      [v9 setObject:dCopy forKeyedSubscript:@"oui"];
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
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKeyedSubscript:@"osn"];

  return v3;
}

- (void)setOriginalServiceName:(id)name
{
  nameCopy = name;
  originalServiceName = [(IMMessageItem *)self originalServiceName];
  if (originalServiceName != nameCopy)
  {
    originalServiceName2 = [(IMMessageItem *)self originalServiceName];
    v6 = [originalServiceName2 isEqualToString:nameCopy];

    if (v6)
    {
      goto LABEL_11;
    }

    messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
    v8 = [messageSummaryInfo mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    originalServiceName = v10;

    if (nameCopy)
    {
      [originalServiceName setObject:nameCopy forKeyedSubscript:@"osn"];
    }

    else
    {
      [originalServiceName removeObjectForKey:@"osn"];
    }

    v11 = [originalServiceName copy];
    [(IMMessageItem *)self setMessageSummaryInfo:v11];
  }

LABEL_11:
}

- (BOOL)wasInterworked
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKeyedSubscript:@"i"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setWasInterworked:(BOOL)interworked
{
  interworkedCopy = interworked;
  if ([(IMMessageItem *)self wasInterworked]!= interworked)
  {
    messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
    v6 = [messageSummaryInfo mutableCopy];
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

    if (interworkedCopy)
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

- (void)setCMMStateToRegisteredAndAssetOffsetTo:(unint64_t)to
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v9 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
  [v9 setObject:v7 forKey:@"cmmS\x10"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:to];
  [v9 setObject:v8 forKey:@"cmmAO"];

  [(IMMessageItem *)self setMessageSummaryInfo:v9];
}

- (unint64_t)getCMMState
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"cmmS\x10"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setCMMState:(unint64_t)state
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v8 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
  [v8 setObject:v7 forKey:@"cmmS\x10"];

  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (void)setCMMAssetOffset:(unint64_t)offset
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessageItem *)self messageSummaryInfo];
    v8 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:offset];
  [v8 setObject:v7 forKey:@"cmmAO"];

  [(IMMessageItem *)self setMessageSummaryInfo:v8];
}

- (unint64_t)getCMMAssetOffset
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"cmmAO"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setFileTransferGUIDs:(id)ds
{
  dsCopy = ds;
  if (self->_fileTransferGUIDs != dsCopy)
  {
    v6 = dsCopy;
    objc_storeStrong(&self->_fileTransferGUIDs, ds);
    [(IMMessageItem *)self adjustIsEmptyFlag];
    dsCopy = v6;
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

- (void)setBody:(id)body
{
  bodyCopy = body;
  if (self->_body != bodyCopy)
  {
    v6 = bodyCopy;
    objc_storeStrong(&self->_body, body);
    [(IMMessageItem *)self _clearBodyData];
    [(IMMessageItem *)self _recalculatePartCount];
    [(IMMessageItem *)self adjustIsEmptyFlag];
    bodyCopy = v6;
  }
}

- (void)setPlainBody:(id)body
{
  bodyCopy = body;
  if (self->_plainBody != bodyCopy)
  {
    v6 = bodyCopy;
    objc_storeStrong(&self->_plainBody, body);
    [(IMMessageItem *)self _recalculatePartCount];
    bodyCopy = v6;
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

- (void)setSubject:(id)subject
{
  subjectCopy = subject;
  if (self->_subject != subjectCopy)
  {
    v6 = subjectCopy;
    objc_storeStrong(&self->_subject, subject);
    [(IMMessageItem *)self adjustIsEmptyFlag];
    subjectCopy = v6;
  }
}

- (void)setPayloadData:(id)data
{
  dataCopy = data;
  if (self->_payloadData != dataCopy)
  {
    v6 = dataCopy;
    objc_storeStrong(&self->_payloadData, data);
    [(IMMessageItem *)self adjustIsEmptyFlag];
    [(IMMessageItem *)self adjustSendAlternateLayoutAsText];
    dataCopy = v6;
  }
}

- (BOOL)_unrestrictedModificationsAllowedForBundleIdentifier:(id)identifier
{
  balloonBundleID = [(IMItem *)self balloonBundleID];
  v4 = IMBalloonBundleIDFromExtensionID(balloonBundleID);

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v137.receiver = self;
      v137.super_class = IMMessageItem;
      if (![(IMItem *)&v137 isEqual:v5]|| (flags = self->_flags, flags != [(IMMessageItem *)v5 flags]) || (replaceID = self->_replaceID, replaceID != [(IMMessageItem *)v5 replaceID]))
      {
        v12 = 0;
LABEL_12:

        goto LABEL_13;
      }

      subject = self->_subject;
      subject = [(IMMessageItem *)v5 subject];
      if (subject != subject)
      {
        v10 = self->_subject;
        subject2 = [(IMMessageItem *)v5 subject];
        if (![(NSString *)v10 isEqualToString:subject2])
        {
          v12 = 0;
          goto LABEL_133;
        }

        v133 = subject2;
      }

      bodyData = self->_bodyData;
      bodyData = [(IMMessageItem *)v5 bodyData];
      if (bodyData == bodyData)
      {
        v18 = 0;
        v135 = 0;
      }

      else
      {
        v16 = self->_bodyData;
        bodyData2 = [(IMMessageItem *)v5 bodyData];
        if ([(NSData *)v16 isEqualToData:bodyData2])
        {
          v132 = bodyData2;
          v18 = 0;
          v135 = 0;
        }

        else
        {
          v19 = subject;
          v20 = subject;
          v21 = bodyData;
          body = self->_body;
          body = [(IMMessageItem *)v5 body];
          if (body == body)
          {
            v132 = bodyData2;
            v135 = 0;
          }

          else
          {
            v23 = self->_body;
            body2 = [(IMMessageItem *)v5 body];
            v25 = v23;
            v26 = body2;
            if (![(NSAttributedString *)v25 isEqualToAttributedString:body2])
            {

              v12 = 0;
              v61 = v20 == v19;
              subject = v19;
              goto LABEL_132;
            }

            v128 = v26;
            v132 = bodyData2;
            v135 = 1;
          }

          bodyData = v21;
          subject = v20;
          subject = v19;
          v18 = 1;
        }
      }

      timeRead = self->_timeRead;
      timeRead = [(IMMessageItem *)v5 timeRead];
      v134 = timeRead;
      v61 = timeRead == timeRead;
      v29 = timeRead;
      if (v61)
      {
        v130 = bodyData;
      }

      else
      {
        v30 = self->_timeRead;
        timeRead2 = [(IMMessageItem *)v5 timeRead];
        v32 = v30;
        v33 = timeRead2;
        if (![(NSDate *)v32 isEqualToDate:timeRead2])
        {

          v12 = 0;
          v41 = v128;
          goto LABEL_57;
        }

        v124 = v33;
        v130 = bodyData;
      }

      timeDelivered = self->_timeDelivered;
      timeDelivered = [(IMMessageItem *)v5 timeDelivered];
      v129 = timeDelivered;
      v61 = timeDelivered == timeDelivered;
      v36 = timeDelivered;
      if (v61)
      {
        v127 = v18;
      }

      else
      {
        v37 = self->_timeDelivered;
        timeDelivered2 = [(IMMessageItem *)v5 timeDelivered];
        v39 = v37;
        v40 = timeDelivered2;
        if (![(NSDate *)v39 isEqualToDate:timeDelivered2])
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
      timePlayed = [(IMMessageItem *)v5 timePlayed];
      v126 = timePlayed;
      v61 = timePlayed == timePlayed;
      v44 = timePlayed;
      if (v61)
      {
        v122 = subject;
        v49 = bodyData;
        v50 = subject;
        v51 = v29;
        v52 = v36;
        v53 = timePlayed;
      }

      else
      {
        v45 = self->_timePlayed;
        timePlayed2 = [(IMMessageItem *)v5 timePlayed];
        v47 = v45;
        v48 = timePlayed2;
        if (![(NSDate *)v47 isEqualToDate:timePlayed2])
        {

LABEL_51:
          v18 = v127;
          if (v129 != v36)
          {
          }

          goto LABEL_53;
        }

        v122 = subject;
        v49 = bodyData;
        v50 = subject;
        v51 = v29;
        v52 = v36;
        v53 = v44;
        v118 = v48;
      }

      fileTransferGUIDs = self->_fileTransferGUIDs;
      fileTransferGUIDs = [(IMMessageItem *)v5 fileTransferGUIDs];
      v121 = fileTransferGUIDs;
      if (fileTransferGUIDs == fileTransferGUIDs)
      {
        v44 = v53;
        v36 = v52;
        v29 = v51;
        subject = v50;
        bodyData = v49;
        subject = v122;
      }

      else
      {
        v55 = self->_fileTransferGUIDs;
        fileTransferGUIDs2 = [(IMMessageItem *)v5 fileTransferGUIDs];
        v44 = v53;
        v36 = v52;
        v29 = v51;
        subject = v50;
        bodyData = v49;
        subject = v122;
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
        if (v121 == fileTransferGUIDs)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      v116 = v44;
      expressiveSendStyleID = self->_expressiveSendStyleID;
      expressiveSendStyleID = [(IMMessageItem *)v5 expressiveSendStyleID];
      if (expressiveSendStyleID == expressiveSendStyleID)
      {
        v115 = expressiveSendStyleID;
      }

      else
      {
        v58 = self->_expressiveSendStyleID;
        expressiveSendStyleID2 = [(IMMessageItem *)v5 expressiveSendStyleID];
        if (![(NSString *)v58 isEqualToString:?])
        {
          v12 = 0;
          v18 = v127;
          v65 = expressiveSendStyleID;
          goto LABEL_106;
        }

        v115 = expressiveSendStyleID;
      }

      timeExpressiveSendPlayed = self->_timeExpressiveSendPlayed;
      timeExpressiveSendPlayed = [(IMMessageItem *)v5 timeExpressiveSendPlayed];
      if (timeExpressiveSendPlayed != timeExpressiveSendPlayed)
      {
        v63 = self->_timeExpressiveSendPlayed;
        timeExpressiveSendPlayed2 = [(IMMessageItem *)v5 timeExpressiveSendPlayed];
        if (![(NSDate *)v63 isEqualToDate:?])
        {
          v12 = 0;
          v18 = v127;
          v64 = timeExpressiveSendPlayed;
          goto LABEL_105;
        }
      }

      error = self->_error;
      if (error != [(IMMessageItem *)v5 errorCode])
      {
        v70 = timeExpressiveSendPlayed;
        v64 = timeExpressiveSendPlayed;
        if (v70 == timeExpressiveSendPlayed)
        {

          v12 = 0;
          v65 = expressiveSendStyleID;
          v18 = v127;
          if (v115 == expressiveSendStyleID)
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
      threadIdentifier = [(IMMessageItem *)v5 threadIdentifier];
      if (threadIdentifier != threadIdentifier)
      {

        v12 = 0;
        v69 = timeExpressiveSendPlayed;
        v64 = timeExpressiveSendPlayed;
        v18 = v127;
        if (v69 == timeExpressiveSendPlayed)
        {
LABEL_116:

          v93 = expressiveSendStyleID;
          if (v115 != expressiveSendStyleID)
          {

            v93 = expressiveSendStyleID;
          }

          v94 = fileTransferGUIDs;
          if (v121 != fileTransferGUIDs)
          {

            v94 = fileTransferGUIDs;
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

            v59 = body;
            v60 = v132;
            if ((v18 & 1) == 0)
            {
              goto LABEL_129;
            }

            goto LABEL_128;
          }

LABEL_127:
          v59 = body;
          v60 = v132;
          if (!v18)
          {
LABEL_129:
            if (bodyData != bodyData)
            {
            }

            v61 = subject == subject;
LABEL_132:
            subject2 = v133;
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

        v65 = expressiveSendStyleID;
        if (v115 == expressiveSendStyleID)
        {
LABEL_107:

          if (v121 != fileTransferGUIDs)
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

      v110 = threadIdentifier;
      threadOriginator = self->_threadOriginator;
      [(IMMessageItem *)v5 threadOriginator];
      v109 = v108 = threadOriginator;
      v111 = timeExpressiveSendPlayed;
      if (threadOriginator != v109)
      {
        v72 = self->_threadOriginator;
        threadOriginator = [(IMMessageItem *)v5 threadOriginator];
        if (![(IMMessageItem *)v72 isEqual:?])
        {
          v12 = 0;
          v18 = v127;
          v73 = v109;
LABEL_103:

LABEL_104:
          v64 = timeExpressiveSendPlayed;
          if (v111 == timeExpressiveSendPlayed)
          {
            goto LABEL_116;
          }

          goto LABEL_105;
        }
      }

      replyCountsByPart = self->_replyCountsByPart;
      replyCountsByPart = [(IMMessageItem *)v5 replyCountsByPart];
      v106 = replyCountsByPart;
      v61 = replyCountsByPart == replyCountsByPart;
      v76 = replyCountsByPart;
      if (v61)
      {
        v101 = replyCountsByPart;
        v102 = subject;
        v104 = v29;
        v105 = v36;
        v123 = subject;
        v103 = bodyData;
      }

      else
      {
        v77 = self->_replyCountsByPart;
        replyCountsByPart2 = [(IMMessageItem *)v5 replyCountsByPart];
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
        v123 = subject;
        v103 = bodyData;
      }

      syndicationRanges = self->_syndicationRanges;
      syndicationRanges = [(IMMessageItem *)v5 syndicationRanges];
      v80 = syndicationRanges;
      if (syndicationRanges != syndicationRanges)
      {
        v81 = self->_syndicationRanges;
        syndicationRanges2 = [(IMMessageItem *)v5 syndicationRanges];
        if (![(NSArray *)v81 isEqualToArray:?])
        {
          v12 = 0;
LABEL_99:

LABEL_100:
          v36 = v105;
          v76 = v101;
          subject = v102;
          bodyData = v103;
          v29 = v104;
          subject = v123;
          v18 = v127;
          if (v106 == v101)
          {
            goto LABEL_102;
          }

          goto LABEL_101;
        }
      }

      syncedSyndicationRanges = self->_syncedSyndicationRanges;
      syncedSyndicationRanges = [(IMMessageItem *)v5 syncedSyndicationRanges];
      v98 = syncedSyndicationRanges;
      if (syncedSyndicationRanges != syncedSyndicationRanges)
      {
        v84 = self->_syncedSyndicationRanges;
        syncedSyndicationRanges2 = [(IMMessageItem *)v5 syncedSyndicationRanges];
        if (![(NSArray *)v84 isEqualToArray:?])
        {
          v12 = 0;
LABEL_97:

LABEL_98:
          if (v80 == syndicationRanges)
          {
            goto LABEL_100;
          }

          goto LABEL_99;
        }
      }

      dateEdited = self->_dateEdited;
      dateEdited = [(IMMessageItem *)v5 dateEdited];
      v87 = dateEdited;
      if (dateEdited == dateEdited || (v88 = self->_dateEdited, [(IMMessageItem *)v5 dateEdited], v95 = objc_claimAutoreleasedReturnValue(), [(NSDate *)v88 isEqualToDate:?]))
      {
        fallbackHash = self->_fallbackHash;
        fallbackHash = [(IMMessageItem *)v5 fallbackHash];
        v90 = fallbackHash;
        if (fallbackHash == fallbackHash)
        {

          v12 = 1;
        }

        else
        {
          v91 = self->_fallbackHash;
          fallbackHash2 = [(IMMessageItem *)v5 fallbackHash];
          v12 = [(NSString *)v91 isEqualToString:fallbackHash2];
        }

        if (v87 == dateEdited)
        {
LABEL_96:

          if (v98 == syncedSyndicationRanges)
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
    v12 = [(IMItem *)&v136 isEqual:equalCopy];
  }

LABEL_13:

  return v12;
}

- (NSAttributedString)breadcrumbText
{
  v26[1] = *MEMORY[0x1E69E9840];
  body = [(IMMessageItem *)self body];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1A8601EA8;
  v23 = sub_1A8602148;
  v24 = 0;
  v3 = [body length];
  v4 = *MEMORY[0x1E69A5F28];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1A865EFB8;
  v18[3] = &unk_1E78267C0;
  v18[4] = &v19;
  [body enumerateAttribute:v4 inRange:0 options:v3 usingBlock:{0x100000, v18}];
  if (v20[5])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v5 = [body length];
    v6 = *MEMORY[0x1E69A5F30];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A865F030;
    v13[3] = &unk_1E78267C0;
    v13[4] = &v14;
    [body enumerateAttribute:v6 inRange:0 options:v5 usingBlock:{0x100000, v13}];
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
  sender = [(IMMessageItem *)self sender];
  service = [(IMItem *)self service];
  if ([(IMMessageItem *)self encrypted])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v82 = v5;
  handle = [(IMItem *)self handle];
  destinationCallerID = [(IMItem *)self destinationCallerID];
  unformattedID = [(IMItem *)self unformattedID];
  countryCode = [(IMItem *)self countryCode];
  roomName = [(IMItem *)self roomName];
  flags = self->_flags;
  v78 = off_1ED8C99E8(self->_subject);
  v6 = off_1ED8C99E8;
  string = [(NSAttributedString *)self->_body string];
  v77 = v6();
  messageID = [(IMItem *)self messageID];
  guid = [(IMItem *)self guid];
  v75 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IMItem sortID](self, "sortID")}];
  time = [(IMItem *)self time];
  [time timeIntervalSinceReferenceDate];
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
  scheduleType = [(IMMessageItem *)self scheduleType];
  scheduleState = [(IMMessageItem *)self scheduleState];
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
  expireState = [(IMMessageItem *)self expireState];
  balloonBundleID = [(IMItem *)self balloonBundleID];
  expressiveSendStyleID = [(IMMessageItem *)self expressiveSendStyleID];
  timeExpressiveSendPlayed = [(IMMessageItem *)self timeExpressiveSendPlayed];
  bizIntent = [(IMMessageItem *)self bizIntent];
  locale = [(IMMessageItem *)self locale];
  biaReferenceID = [(IMMessageItem *)self biaReferenceID];
  errorCode = [(IMMessageItem *)self errorCode];
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
  groupActivity = [(IMMessageItem *)self groupActivity];
  if (groupActivity)
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
  v86 = [v85 stringWithFormat:@"%@[outgoing: %@ sender=%@ service=%@; encrypted=%@; handle=%@; destinationCallerID= %@, unformatted=%@; country=%@; roomName='%@'; flags=0x%llx; subject='%@' text='%@' messageID: %lld GUID:'%@' sortID: %@ date:'%f' date-delivered:'%f' date-read:'%f' date-played:'%f' transfer guids: '%@' empty: %@ finished: %@ sent: %@ read: %@ delivered: %@ scheduleType: %lu, scheduleState: %lu, audio: %@ played: %@ from-me: %@ DD results: %@ DD Scanned: %@ Downgraded: %@ emote: %@ expirable: %@ expire-state: %d balloon-bundle-id: %@ expressive-send-style-id: %@ time-expressive-send-played: %@ bizIntent: %@ locale: %@ biaReferenceID: %@ error: %d sync-state %@ corrupt: %@ shouldSendMeCard: %@ isSpam: %@ hasUnseenMention: %@ threadIdentifier: %@, threadOriginator: %@, replyCountsByPart: %@, isChoros: %@, chorosConversationID: %@, syndicationRanges: %@, syncedSyndicationRanges: %@, dateEdited: '%f', dateRecovered: '%f', hasGroupActivity: %@, wasDetonated: %@, isSOS: %@, isCritical %@, fallbackHash (len): %llu]", v95, v83, sender, service, v82, handle, destinationCallerID, unformattedID, countryCode, roomName, flags, v78, v77, messageID, guid, v75, v8, v10, v12, v14, fileTransferGUIDs, v73, v72, v71, v70, v69, scheduleType, scheduleState, v66, v65, v64, v63, v62, v61, v60, v59, expireState, balloonBundleID, expressiveSendStyleID, timeExpressiveSendPlayed, bizIntent, locale, biaReferenceID, errorCode, v51, v50, v49, v48, v47, threadIdentifier, threadOriginator, replyCountsByPart, v32, v33, v34, v35, v37, v39, v40, v41];;

  return v86;
}

- (BOOL)unsentIsFromMeItem
{
  isFromMe = [(IMMessageItem *)self isFromMe];
  if (isFromMe)
  {
    scheduleType = [(IMMessageItem *)self scheduleType];
    LOBYTE(isFromMe) = (scheduleType >= 2 && (scheduleType != 2 || (v5 = [(IMMessageItem *)self scheduleState], v5 > 5) || ((1 << v5) & 0x39) == 0) || ![(IMMessageItem *)self isSent]) && [(IMMessageItem *)self errorCode]== 0;
  }

  return isFromMe;
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
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"dam"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isFailedHQTransfer
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"ihqtf"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isHQTransfer
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"ihqt"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (id)_messageItemWithIndexesDeleted:(id)deleted subRangesToDeleteMapping:(id)mapping deleteSubject:(BOOL)subject deleteTransferCallback:(id)callback createItemCallback:(id)itemCallback fromMessageItem:(id)item
{
  subjectCopy = subject;
  v65 = *MEMORY[0x1E69E9840];
  deletedCopy = deleted;
  mappingCopy = mapping;
  callbackCopy = callback;
  itemCallbackCopy = itemCallback;
  itemCopy = item;
  body = [itemCopy body];
  v17 = [body mutableCopy];

  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = *MEMORY[0x1E69A5FD8];
  v21 = [v17 length];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = sub_1A86601BC;
  v56[3] = &unk_1E7827F28;
  v47 = subjectCopy;
  v63 = subjectCopy;
  v48 = deletedCopy;
  v57 = v48;
  v46 = mappingCopy;
  v58 = v46;
  v22 = v17;
  v59 = v22;
  v45 = callbackCopy;
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

        rangeValue = [*(*(&v52 + 1) + 8 * i) rangeValue];
        v32 = v31;
        if (rangeValue < [v22 length])
        {
          v33 = [v22 length];
          if (v32 >= v33 - rangeValue ? v33 - rangeValue : v32)
          {
            [v22 deleteCharactersInRange:rangeValue];
          }
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v27);
  }

  fileTransferGUIDs = [itemCopy fileTransferGUIDs];
  v36 = [fileTransferGUIDs mutableCopy];

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

  if (itemCallbackCopy)
  {
    v40 = (itemCallbackCopy)[2](itemCallbackCopy, itemCopy, v22, v47, v39);
  }

  else
  {
    v40 = [self newMessageItemFrom:itemCopy withText:v22 deleteSubject:v47 withFileTransferGUIDs:v39];
  }

  v41 = v40;

  return v41;
}

+ (id)newMessageItemFrom:(id)from withText:(id)text deleteSubject:(BOOL)subject withFileTransferGUIDs:(id)ds
{
  fromCopy = from;
  dsCopy = ds;
  textCopy = text;
  v34 = [IMMessageItem alloc];
  senderInfo = [fromCopy senderInfo];
  time = [fromCopy time];
  timeRead = [fromCopy timeRead];
  timeDelivered = [fromCopy timeDelivered];
  timePlayed = [fromCopy timePlayed];
  v51 = timeRead;
  v52 = time;
  if (subject)
  {
    subject = 0;
  }

  else
  {
    subject = [fromCopy subject];
  }

  flags = [fromCopy flags];
  guid = [fromCopy guid];
  messageID = [fromCopy messageID];
  account = [fromCopy account];
  accountID = [fromCopy accountID];
  service = [fromCopy service];
  handle = [fromCopy handle];
  unformattedID = [fromCopy unformattedID];
  countryCode = [fromCopy countryCode];
  balloonBundleID = [fromCopy balloonBundleID];
  payloadData = [fromCopy payloadData];
  expressiveSendStyleID = [fromCopy expressiveSendStyleID];
  timeExpressiveSendPlayed = [fromCopy timeExpressiveSendPlayed];
  bizIntent = [fromCopy bizIntent];
  locale = [fromCopy locale];
  biaReferenceID = [fromCopy biaReferenceID];
  errorCode = [fromCopy errorCode];
  type = [fromCopy type];
  threadIdentifier = [fromCopy threadIdentifier];
  syndicationRanges = [fromCopy syndicationRanges];
  syncedSyndicationRanges = [fromCopy syncedSyndicationRanges];
  partCount = [fromCopy partCount];
  dateEdited = [fromCopy dateEdited];
  dateRecovered = [fromCopy dateRecovered];
  scheduleType = [fromCopy scheduleType];
  scheduleState = [fromCopy scheduleState];
  cloudKitChatID = [fromCopy cloudKitChatID];
  LODWORD(v23) = errorCode;
  v18 = [(IMMessageItem *)v34 initWithSenderInfo:senderInfo time:v52 timeRead:v51 timeDelivered:timeDelivered timePlayed:timePlayed subject:subject body:textCopy bodyData:0 attributes:0 fileTransferGUIDs:dsCopy flags:flags guid:guid messageID:messageID account:account accountID:accountID service:service handle:handle roomName:0 unformattedID:unformattedID countryCode:countryCode expireState:0 balloonBundleID:balloonBundleID payloadData:payloadData expressiveSendStyleID:expressiveSendStyleID timeExpressiveSendPlayed:timeExpressiveSendPlayed bizIntent:bizIntent locale:locale biaReferenceID:biaReferenceID errorType:v23 type:type threadIdentifier:threadIdentifier syndicationRanges:syndicationRanges syncedSyndicationRanges:syncedSyndicationRanges partCount:partCount dateEdited:dateEdited dateRecovered:dateRecovered scheduleType:scheduleType scheduleState:scheduleState cloudKitChatID:cloudKitChatID];

  if (!subject)
  {
  }

  -[IMMessageItem setUseStandalone:](v18, "setUseStandalone:", [fromCopy useStandalone]);
  messageSummaryInfo = [fromCopy messageSummaryInfo];
  [(IMMessageItem *)v18 setMessageSummaryInfo:messageSummaryInfo];

  -[IMItem setSortID:](v18, "setSortID:", [fromCopy sortID]);
  replyCountsByPart = [fromCopy replyCountsByPart];
  [(IMMessageItem *)v18 setReplyCountsByPart:replyCountsByPart];

  fallbackHash = [fromCopy fallbackHash];
  [(IMMessageItem *)v18 setFallbackHash:fallbackHash];

  return v18;
}

- (NSArray)messageParts
{
  body = [(IMMessageItem *)self body];
  if (body)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1A86AAB88;
    v7[3] = &unk_1E7826888;
    v8 = array;
    v4 = array;
    [body __im_visitMessageParts:v7];
    v5 = [v4 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)messagePartMatchingPartIndex:(int64_t)index
{
  body = [(IMMessageItem *)self body];
  v5 = body;
  if (body)
  {
    v6 = [body __im_messagePartMatchingPartIndex:index];
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

  expressiveSendStyleID = [(IMMessageItem *)self expressiveSendStyleID];
  v5 = [expressiveSendStyleID length];

  sender = [(IMMessageItem *)self sender];
  if (sender)
  {
    destinationCallerID = [(IMItem *)self destinationCallerID];
    if (destinationCallerID)
    {
      sender2 = [(IMMessageItem *)self sender];
      destinationCallerID2 = [(IMItem *)self destinationCallerID];
      if ([sender2 isEqualToString:destinationCallerID2])
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
  selfCopy = self;
  v3 = sub_1A8721C44();

  return v3 & 1;
}

- (BOOL)hasLegacyUrgentTriggerMatchInText
{
  selfCopy = self;
  v3 = sub_1A8722290();

  return v3 & 1;
}

- (BOOL)messageContainsOneTimeCode
{
  selfCopy = self;
  v3 = sub_1A874A198();

  return v3 & 1;
}

- (NSMutableDictionary)mutableTelemetryMetrics
{
  selfCopy = self;
  v3 = sub_1A8821490();

  return v3;
}

- (void)addTelemetryMetricForKey:(int64_t)key
{
  selfCopy = self;
  IMMessageItem.addTelemetryMetric(for:)(key);
}

- (void)addTelemetryMetricsFromDictionary:(id)dictionary
{
  sub_1A85E9718(0, &qword_1ED8C9450);
  v4 = sub_1A88C81A8();
  selfCopy = self;
  IMMessageItem.addTelemetryMetrics(from:)(v4);
}

- (id)formatWithReasonCode:(int64_t)code subReasonCode:(int64_t)reasonCode pathID:(int64_t)d
{
  sub_1A88230B8();
  v5 = sub_1A88C82A8();

  return v5;
}

- (void)setTelemetryMetricsReasonCode:(int64_t)code subReasonCode:(int64_t)reasonCode pathID:(int64_t)d
{
  selfCopy = self;
  v8 = [(IMMessageItem *)selfCopy formatWithReasonCode:code subReasonCode:reasonCode pathID:d];
  [(IMMessageItem *)selfCopy setTelemetryMetricsReasonCode:v8];
}

- (BOOL)hasMessageHistoryForSpamReport
{
  selfCopy = self;
  v3 = sub_1A8823258();

  return v3 & 1;
}

- (NSArray)messageHistoryForSpamReport
{
  selfCopy = self;
  sub_1A88235C8();

  v3 = sub_1A88C85E8();

  return v3;
}

@end