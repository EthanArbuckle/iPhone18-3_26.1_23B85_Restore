@interface IMDMessageRecord
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)keyPathsToColumns;
- (BOOL)isAssociatedMessage;
- (BOOL)isReply;
- (IMDChatRecord)chatRecord;
- (IMDHandleRecord)handleRecord;
- (IMDHandleRecord)otherHandleRecord;
- (IMDMessageRecord)initWithItemType:(int64_t)a3 text:(id)a4 date:(int64_t)a5 dateRead:(int64_t)a6 dateDelivered:(int64_t)a7 datePlayed:(int64_t)a8 error:(int64_t)a9 type:(int64_t)a10 replaceID:(int64_t)a11 flags:(id)a12 guid:(id)a13 attributedBody:(id)a14 service:(id)a15 account:(id)a16 accountGUID:(id)a17 subject:(id)a18 handleID:(id)a19 countryCode:(id)a20 unformattedID:(id)a21 otherHandleID:(id)a22 groupTitle:(id)a23 groupActionType:(int64_t)a24 shareStatus:(int64_t)a25 shareDirection:(int64_t)a26 expireState:(int64_t)a27 messageActionType:(int64_t)a28 associatedMessageGUID:(id)a29 associatedMessageType:(int64_t)a30 associatedMessageRange:(_NSRange)a31 associatedMessageEmoji:(id)a32 balloonBundleID:(id)a33 payloadData:(id)a34 expressiveSendStyleID:(id)a35 timeExpressiveSendPlayed:(int64_t)a36 messageSummaryInfo:(id)a37 cloudKitSyncState:(int64_t)a38 cloudKitRecordID:(id)a39 cloudKitServerChangeTokenBlob:(id)a40 cloudKitRecordChangeTag:(id)a41 dataDetectorsInfo:(id)a42 destinationCallerID:(id)a43 replyToGUID:(id)a44 sortID:(int64_t)a45 threadOriginatorGUID:(id)a46 threadOriginatorPart:(id)a47 syndicationRanges:(id)a48 syncedSyndicationRanges:(id)a49 partCount:(int64_t)a50 dateEdited:(int64_t)a51 dateRecovered:(int64_t)a52 biaReferenceID:(id)a53 fallbackHash:(id)a54 scheduleType:(int64_t)a55 scheduleState:(int64_t)a56 cloudKitChatID:(id)a57;
- (IMDMessageRecord)initWithRecordRef:(_IMDMessageRecordStruct *)a3;
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

+ (id)allocWithZone:(_NSZone *)a3
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

- (IMDMessageRecord)initWithItemType:(int64_t)a3 text:(id)a4 date:(int64_t)a5 dateRead:(int64_t)a6 dateDelivered:(int64_t)a7 datePlayed:(int64_t)a8 error:(int64_t)a9 type:(int64_t)a10 replaceID:(int64_t)a11 flags:(id)a12 guid:(id)a13 attributedBody:(id)a14 service:(id)a15 account:(id)a16 accountGUID:(id)a17 subject:(id)a18 handleID:(id)a19 countryCode:(id)a20 unformattedID:(id)a21 otherHandleID:(id)a22 groupTitle:(id)a23 groupActionType:(int64_t)a24 shareStatus:(int64_t)a25 shareDirection:(int64_t)a26 expireState:(int64_t)a27 messageActionType:(int64_t)a28 associatedMessageGUID:(id)a29 associatedMessageType:(int64_t)a30 associatedMessageRange:(_NSRange)a31 associatedMessageEmoji:(id)a32 balloonBundleID:(id)a33 payloadData:(id)a34 expressiveSendStyleID:(id)a35 timeExpressiveSendPlayed:(int64_t)a36 messageSummaryInfo:(id)a37 cloudKitSyncState:(int64_t)a38 cloudKitRecordID:(id)a39 cloudKitServerChangeTokenBlob:(id)a40 cloudKitRecordChangeTag:(id)a41 dataDetectorsInfo:(id)a42 destinationCallerID:(id)a43 replyToGUID:(id)a44 sortID:(int64_t)a45 threadOriginatorGUID:(id)a46 threadOriginatorPart:(id)a47 syndicationRanges:(id)a48 syncedSyndicationRanges:(id)a49 partCount:(int64_t)a50 dateEdited:(int64_t)a51 dateRecovered:(int64_t)a52 biaReferenceID:(id)a53 fallbackHash:(id)a54 scheduleType:(int64_t)a55 scheduleState:(int64_t)a56 cloudKitChatID:(id)a57
{
  v101.receiver = self;
  v101.super_class = IMDMessageRecord;
  v79 = a57;
  v78 = a54;
  v76 = a53;
  v77 = a49;
  v75 = a48;
  v74 = a47;
  v61 = a46;
  v62 = a44;
  v63 = a43;
  v64 = a42;
  v73 = a41;
  v72 = a40;
  v65 = a39;
  v66 = a37;
  v71 = a35;
  v70 = a34;
  v67 = a33;
  v68 = a32;
  v69 = a29;
  v100 = a23;
  v99 = a22;
  v98 = a21;
  v97 = a20;
  v96 = a19;
  v95 = a18;
  v94 = a17;
  v93 = a16;
  v92 = a15;
  v91 = a14;
  v90 = a13;
  v89 = a12;
  v88 = a4;
  v80 = [(IMDRecord *)&v101 init];
  v59 = objc_msgSend_cfMessageRecord(v80, v57, v58);
  v86 = sub_1B7B34C14(v59, a3, v88, a5, a6, a7, a8, a9, a10, a11, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, a24, a25, a26, a27, a28, v69, a30, a31.location, a31.length, v67, v70, v71, a36, v66, a38, v65, v72, v73, v64, v63, v62, a45, v61, v74, v75, v77, a50, a51, a52, v76, v78, v68, a55, a56, v79);

  return v86;
}

- (IMDMessageRecord)initWithRecordRef:(_IMDMessageRecordStruct *)a3
{
  v4 = a3;

  return v4;
}

@end