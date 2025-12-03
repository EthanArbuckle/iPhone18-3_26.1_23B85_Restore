@interface IMDMessageRecord
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)keyPathsToColumns;
- (BOOL)isAssociatedMessage;
- (BOOL)isReply;
- (IMDChatRecord)chatRecord;
- (IMDHandleRecord)handleRecord;
- (IMDHandleRecord)otherHandleRecord;
- (IMDMessageRecord)initWithItemType:(int64_t)type text:(id)text date:(int64_t)date dateRead:(int64_t)read dateDelivered:(int64_t)delivered datePlayed:(int64_t)played error:(int64_t)error type:(int64_t)self0 replaceID:(int64_t)self1 flags:(id)self2 guid:(id)self3 attributedBody:(id)self4 service:(id)self5 account:(id)self6 accountGUID:(id)self7 subject:(id)self8 handleID:(id)self9 countryCode:(id)code unformattedID:(id)unformattedID otherHandleID:(id)otherHandleID groupTitle:(id)title groupActionType:(int64_t)actionType shareStatus:(int64_t)status shareDirection:(int64_t)direction expireState:(int64_t)state messageActionType:(int64_t)messageActionType associatedMessageGUID:(id)uID associatedMessageType:(int64_t)type0 associatedMessageRange:(_NSRange)type1 associatedMessageEmoji:(id)type2 balloonBundleID:(id)type3 payloadData:(id)type4 expressiveSendStyleID:(id)type5 timeExpressiveSendPlayed:(int64_t)type6 messageSummaryInfo:(id)type7 cloudKitSyncState:(int64_t)type8 cloudKitRecordID:(id)type9 cloudKitServerChangeTokenBlob:(id)text0 cloudKitRecordChangeTag:(id)text1 dataDetectorsInfo:(id)text2 destinationCallerID:(id)text3 replyToGUID:(id)text4 sortID:(int64_t)text5 threadOriginatorGUID:(id)text6 threadOriginatorPart:(id)text7 syndicationRanges:(id)text8 syncedSyndicationRanges:(id)text9 partCount:(int64_t)date0 dateEdited:(int64_t)date1 dateRecovered:(int64_t)date2 biaReferenceID:(id)date3 fallbackHash:(id)date4 scheduleType:(int64_t)date5 scheduleState:(int64_t)date6 cloudKitChatID:(id)date7;
- (IMDMessageRecord)initWithRecordRef:(_IMDMessageRecordStruct *)ref;
- (NSArray)attachmentRecords;
- (NSAttributedString)attributedBodyText;
- (NSData)attributedBodyData;
- (NSData)iMessageAppData;
- (NSData)messageSummaryInfoData;
- (NSDate)dateEdited;
- (NSDate)dateRecovered;
- (NSDate)expressiveSendPlayedTime;
- (NSDictionary)messageSummaryInfo;
- (NSString)iMessageAppBundleID;
- (_IMDMessageRecordStruct)cfMessageRecord;
- (_NSRange)associatedMessageRange;
- (unint64_t)flags;
- (void)_copyUpdatedRecord;
@end

@implementation IMDMessageRecord

+ (id)keyPathsToColumns
{
  if (qword_1EDBE5AE8 != -1)
  {
    sub_1B7CEB500();
  }

  v3 = qword_1EDBE5B10;

  return v3;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v3 = *MEMORY[0x1E695E480];
  IMDMessageRecordGetTypeID();

  return _CFRuntimeCreateInstance();
}

- (_IMDMessageRecordStruct)cfMessageRecord
{
  v3 = CFGetTypeID(self);
  if (v3 == IMDMessageRecordGetTypeID())
  {
    return self;
  }

  else
  {
    return 0;
  }
}

- (void)_copyUpdatedRecord
{
  v3 = objc_msgSend_rowID(self, a2, v2);

  return IMDMessageRecordCopyMessageRecordUnlocked(v3);
}

- (NSData)attributedBodyData
{
  v2 = IMDBridgedRecordCopyPropertyValue(self, 7);

  return v2;
}

- (NSAttributedString)attributedBodyText
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_attributedBodyData(self, a2, v2);
  if (objc_msgSend_length(v4, v5, v6))
  {
    v9 = JWDecodeCodableObjectWithStandardAllowlist();
  }

  else
  {
    v10 = objc_msgSend_text(self, v7, v8);

    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x1E696AAB0]);
      v14 = objc_msgSend_text(self, v12, v13);
      v20 = *MEMORY[0x1E69A5FD8];
      v21[0] = &unk_1F2FCA248;
      v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, v21, &v20, 1);
      v9 = objc_msgSend_initWithString_attributes_(v11, v17, v14, v16);
    }

    else
    {
      v9 = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSData)messageSummaryInfoData
{
  v2 = IMDBridgedRecordCopyPropertyValue(self, 58);

  return v2;
}

- (NSDictionary)messageSummaryInfo
{
  v3 = objc_msgSend_messageSummaryInfoData(self, a2, v2);
  if (objc_msgSend_length(v3, v4, v5))
  {
    v6 = JWDecodeCodableObjectWithStandardAllowlist();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)iMessageAppBundleID
{
  v2 = IMDBridgedRecordCopyPropertyValue(self, 52);

  return v2;
}

- (NSData)iMessageAppData
{
  v2 = IMDBridgedRecordCopyPropertyValue(self, 53);

  return v2;
}

- (BOOL)isReply
{
  v3 = objc_msgSend_threadOriginatorGUID(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isAssociatedMessage
{
  v3 = objc_msgSend_associatedMessageGUID(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (IMDHandleRecord)handleRecord
{
  v3 = objc_msgSend_cfMessageRecord(self, a2, v2);
  v6 = IMDMessageRecordCopyHandle(v3, v4, v5);

  return v6;
}

- (IMDHandleRecord)otherHandleRecord
{
  v3 = objc_msgSend_cfMessageRecord(self, a2, v2);
  v6 = IMDMessageRecordCopyOtherHandle(v3, v4, v5);

  return v6;
}

- (NSArray)attachmentRecords
{
  v3 = objc_msgSend_cfMessageRecord(self, a2, v2);
  v4 = IMDMessageRecordCopyAttachments(v3);

  return v4;
}

- (IMDChatRecord)chatRecord
{
  v3 = objc_msgSend_rowID(self, a2, v2);
  v4 = IMDChatRecordCopyChatForMessageID(v3);

  return v4;
}

- (NSDate)dateEdited
{
  v3 = objc_msgSend_rawDateEdited(self, a2, v2);
  if (v3)
  {
    v3 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v4, v5, v3);
  }

  return v3;
}

- (NSDate)dateRecovered
{
  v3 = objc_msgSend_rawDateRecovered(self, a2, v2);
  if (v3)
  {
    v3 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v4, v5, v3);
  }

  return v3;
}

- (_NSRange)associatedMessageRange
{
  PropertyInteger = IMDBridgedRecordGetPropertyInteger(self, 55);
  v4 = IMDBridgedRecordGetPropertyInteger(self, 56);
  v5 = PropertyInteger;
  result.length = v4;
  result.location = v5;
  return result;
}

- (unint64_t)flags
{
  v3 = objc_msgSend_cfMessageRecord(self, a2, v2);

  return sub_1B7B38474(v3, v4, v5);
}

- (NSDate)expressiveSendPlayedTime
{
  v3 = objc_msgSend_timeExpressiveSendPlayed(self, a2, v2);
  if (v3)
  {
    v3 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v4, v5, v3);
  }

  return v3;
}

- (IMDMessageRecord)initWithItemType:(int64_t)type text:(id)text date:(int64_t)date dateRead:(int64_t)read dateDelivered:(int64_t)delivered datePlayed:(int64_t)played error:(int64_t)error type:(int64_t)self0 replaceID:(int64_t)self1 flags:(id)self2 guid:(id)self3 attributedBody:(id)self4 service:(id)self5 account:(id)self6 accountGUID:(id)self7 subject:(id)self8 handleID:(id)self9 countryCode:(id)code unformattedID:(id)unformattedID otherHandleID:(id)otherHandleID groupTitle:(id)title groupActionType:(int64_t)actionType shareStatus:(int64_t)status shareDirection:(int64_t)direction expireState:(int64_t)state messageActionType:(int64_t)messageActionType associatedMessageGUID:(id)uID associatedMessageType:(int64_t)type0 associatedMessageRange:(_NSRange)type1 associatedMessageEmoji:(id)type2 balloonBundleID:(id)type3 payloadData:(id)type4 expressiveSendStyleID:(id)type5 timeExpressiveSendPlayed:(int64_t)type6 messageSummaryInfo:(id)type7 cloudKitSyncState:(int64_t)type8 cloudKitRecordID:(id)type9 cloudKitServerChangeTokenBlob:(id)text0 cloudKitRecordChangeTag:(id)text1 dataDetectorsInfo:(id)text2 destinationCallerID:(id)text3 replyToGUID:(id)text4 sortID:(int64_t)text5 threadOriginatorGUID:(id)text6 threadOriginatorPart:(id)text7 syndicationRanges:(id)text8 syncedSyndicationRanges:(id)text9 partCount:(int64_t)date0 dateEdited:(int64_t)date1 dateRecovered:(int64_t)date2 biaReferenceID:(id)date3 fallbackHash:(id)date4 scheduleType:(int64_t)date5 scheduleState:(int64_t)date6 cloudKitChatID:(id)date7
{
  v101.receiver = self;
  v101.super_class = IMDMessageRecord;
  chatIDCopy = chatID;
  hashCopy = hash;
  referenceIDCopy = referenceID;
  syndicationRangesCopy = syndicationRanges;
  rangesCopy = ranges;
  partCopy = part;
  originatorGUIDCopy = originatorGUID;
  gUIDCopy = gUID;
  callerIDCopy = callerID;
  detectorsInfoCopy = detectorsInfo;
  tagCopy = tag;
  blobCopy = blob;
  recordIDCopy = recordID;
  infoCopy = info;
  styleIDCopy = styleID;
  dataCopy = data;
  bundleIDCopy = bundleID;
  emojiCopy = emoji;
  uIDCopy = uID;
  titleCopy = title;
  otherHandleIDCopy = otherHandleID;
  unformattedIDCopy = unformattedID;
  codeCopy = code;
  handleIDCopy = handleID;
  subjectCopy = subject;
  iDCopy = iD;
  accountCopy = account;
  serviceCopy = service;
  bodyCopy = body;
  guidCopy = guid;
  flagsCopy = flags;
  textCopy = text;
  v80 = [(IMDRecord *)&v101 init];
  v59 = objc_msgSend_cfMessageRecord(v80, v57, v58);
  v86 = sub_1B7B34C14(v59, type, textCopy, date, read, delivered, played, error, a10, d, flagsCopy, guidCopy, bodyCopy, serviceCopy, accountCopy, iDCopy, subjectCopy, handleIDCopy, codeCopy, unformattedIDCopy, otherHandleIDCopy, titleCopy, actionType, status, direction, state, messageActionType, uIDCopy, messageType, range.location, range.length, bundleIDCopy, dataCopy, styleIDCopy, sendPlayed, infoCopy, syncState, recordIDCopy, blobCopy, tagCopy, detectorsInfoCopy, callerIDCopy, gUIDCopy, sortID, originatorGUIDCopy, partCopy, rangesCopy, syndicationRangesCopy, count, edited, recovered, referenceIDCopy, hashCopy, emojiCopy, scheduleType, scheduleState, chatIDCopy);

  return v86;
}

- (IMDMessageRecord)initWithRecordRef:(_IMDMessageRecordStruct *)ref
{
  refCopy = ref;

  return refCopy;
}

@end