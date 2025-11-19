@interface IMAssociatedMessageItem
- (BOOL)_updateAssociatedMessagePartTextReplacingTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:(id)a3;
- (BOOL)isEmojiSticker;
- (BOOL)isEqual:(id)a3;
- (BOOL)updateTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:(id)a3;
- (IMAssociatedMessageItem)initWithCoder:(id)a3;
- (IMAssociatedMessageItem)initWithDictionary:(id)a3 hint:(id)a4;
- (IMAssociatedMessageItem)initWithMessageItem:(id)a3;
- (IMAssociatedMessageItem)initWithSender:(id)a3 time:(id)a4 body:(id)a5 attributes:(id)a6 fileTransferGUIDs:(id)a7 flags:(unint64_t)a8 error:(id)a9 guid:(id)a10 associatedMessageGUID:(id)a11 associatedMessageType:(int64_t)a12 associatedMessageRange:(_NSRange)a13 associatedMessageEmoji:(id)a14 messageSummaryInfo:(id)a15 threadIdentifier:(id)a16;
- (IMAssociatedMessageItem)initWithSender:(id)a3 time:(id)a4 body:(id)a5 attributes:(id)a6 fileTransferGUIDs:(id)a7 flags:(unint64_t)a8 error:(id)a9 guid:(id)a10 associatedMessageGUID:(id)a11 associatedMessageType:(int64_t)a12 associatedMessageRange:(_NSRange)a13 messageSummaryInfo:(id)a14 threadIdentifier:(id)a15;
- (IMAssociatedMessageItem)initWithSenderInfo:(id)a3 time:(id)a4 timeRead:(id)a5 timeDelivered:(id)a6 timePlayed:(id)a7 subject:(id)a8 body:(id)a9 bodyData:(id)a10 attributes:(id)a11 fileTransferGUIDs:(id)a12 flags:(unint64_t)a13 guid:(id)a14 messageID:(int64_t)a15 account:(id)a16 accountID:(id)a17 service:(id)a18 handle:(id)a19 roomName:(id)a20 unformattedID:(id)a21 countryCode:(id)a22 expireState:(int64_t)a23 balloonBundleID:(id)a24 payloadData:(id)a25 expressiveSendStyleID:(id)a26 timeExpressiveSendPlayed:(id)a27 errorType:(unsigned int)a28 associatedMessageGUID:(id)a29 associatedMessageType:(int64_t)a30 associatedMessageRange:(_NSRange)a31 associatedMessageEmoji:(id)a32 bizIntent:(id)a33 locale:(id)a34 biaReferenceID:(id)a35 messageSummaryInfo:(id)a36 partCount:(unint64_t)a37 threadIdentifier:(id)a38 dateRecovered:(id)a39 scheduleType:(unint64_t)a40 scheduleState:(unint64_t)a41 cloudKitChatID:(id)a42;
- (IMAssociatedMessageItem)initWithSenderInfo:(id)a3 time:(id)a4 timeRead:(id)a5 timeDelivered:(id)a6 timePlayed:(id)a7 subject:(id)a8 body:(id)a9 bodyData:(id)a10 attributes:(id)a11 fileTransferGUIDs:(id)a12 flags:(unint64_t)a13 guid:(id)a14 messageID:(int64_t)a15 account:(id)a16 accountID:(id)a17 service:(id)a18 handle:(id)a19 roomName:(id)a20 unformattedID:(id)a21 countryCode:(id)a22 expireState:(int64_t)a23 balloonBundleID:(id)a24 payloadData:(id)a25 expressiveSendStyleID:(id)a26 timeExpressiveSendPlayed:(id)a27 errorType:(unsigned int)a28 associatedMessageGUID:(id)a29 associatedMessageType:(int64_t)a30 associatedMessageRange:(_NSRange)a31 bizIntent:(id)a32 locale:(id)a33 biaReferenceID:(id)a34 messageSummaryInfo:(id)a35 partCount:(unint64_t)a36 threadIdentifier:(id)a37 dateRecovered:(id)a38;
- (IMAssociatedMessageItem)initWithSenderInfo:(id)a3 time:(id)a4 timeRead:(id)a5 timeDelivered:(id)a6 timePlayed:(id)a7 subject:(id)a8 body:(id)a9 bodyData:(id)a10 attributes:(id)a11 fileTransferGUIDs:(id)a12 flags:(unint64_t)a13 guid:(id)a14 messageID:(int64_t)a15 account:(id)a16 accountID:(id)a17 service:(id)a18 handle:(id)a19 roomName:(id)a20 unformattedID:(id)a21 countryCode:(id)a22 expireState:(int64_t)a23 balloonBundleID:(id)a24 payloadData:(id)a25 expressiveSendStyleID:(id)a26 timeExpressiveSendPlayed:(id)a27 errorType:(unsigned int)a28 associatedMessageGUID:(id)a29 associatedMessageType:(int64_t)a30 associatedMessageRange:(_NSRange)a31 bizIntent:(id)a32 locale:(id)a33 biaReferenceID:(id)a34 messageSummaryInfo:(id)a35 partCount:(unint64_t)a36 threadIdentifier:(id)a37 dateRecovered:(id)a38 scheduleType:(unint64_t)a39 scheduleState:(unint64_t)a40;
- (IMEmojiSticker)emojiSticker;
- (IMTapback)tapback;
- (NSAttributedString)associatedMessagePartText;
- (NSString)associatedMessageEffect;
- (_NSRange)associatedMessageRange;
- (id)copyDictionaryRepresentation;
- (id)copyForBackwardsCompatibility;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)emojiString;
- (void)encodeWithCoder:(id)a3;
- (void)setAssociatedMessageEffect:(id)a3;
- (void)setAssociatedMessagePartText:(id)a3;
@end

@implementation IMAssociatedMessageItem

- (id)copyDictionaryRepresentation
{
  v13.receiver = self;
  v13.super_class = IMAssociatedMessageItem;
  v3 = [(IMMessageItem *)&v13 copyDictionaryRepresentation];
  v4 = v3;
  associatedMessageGUID = self->_associatedMessageGUID;
  if (associatedMessageGUID)
  {
    CFDictionarySetValue(v3, @"associatedMessageGUID", associatedMessageGUID);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_associatedMessageType];
  if (v6)
  {
    CFDictionarySetValue(v4, @"associatedMessageType", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_associatedMessageRange.location];
  if (v7)
  {
    CFDictionarySetValue(v4, @"associatedMessageRangeLocation", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_associatedMessageRange.length];
  if (v8)
  {
    CFDictionarySetValue(v4, @"associatedMessageRangeLength", v8);
  }

  associatedMessageEmoji = self->_associatedMessageEmoji;
  if (associatedMessageEmoji)
  {
    CFDictionarySetValue(v4, @"associatedMessageEmoji", associatedMessageEmoji);
  }

  consumedSessionPayloads = self->_consumedSessionPayloads;
  if (consumedSessionPayloads)
  {
    CFDictionarySetValue(v4, @"consumedSessionPayloads", consumedSessionPayloads);
  }

  if ([(IMAssociatedMessageItem *)self associatedMessageType]== 3)
  {
    v11 = [(IMMessageItem *)self bodyData];
    if (v11)
    {
      CFDictionarySetValue(v4, @"bodyData", v11);
    }
  }

  return v4;
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

- (IMAssociatedMessageItem)initWithDictionary:(id)a3 hint:(id)a4
{
  v6 = a3;
  v22.receiver = self;
  v22.super_class = IMAssociatedMessageItem;
  v7 = [(IMMessageItem *)&v22 initWithDictionary:v6 hint:a4];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v6 objectForKey:@"associatedMessageGUID"];
    v10 = [v9 copy];
    associatedMessageGUID = v8->_associatedMessageGUID;
    v8->_associatedMessageGUID = v10;

    v12 = [v6 objectForKey:@"associatedMessageType"];
    v8->_associatedMessageType = [v12 longLongValue];

    v13 = [v6 objectForKeyedSubscript:@"associatedMessageRangeLocation"];
    v8->_associatedMessageRange.location = [v13 integerValue];

    v14 = [v6 objectForKeyedSubscript:@"associatedMessageRangeLength"];
    v8->_associatedMessageRange.length = [v14 integerValue];

    v15 = [v6 objectForKey:@"associatedMessageEmoji"];
    v16 = [v15 copy];
    associatedMessageEmoji = v8->_associatedMessageEmoji;
    v8->_associatedMessageEmoji = v16;

    v18 = [v6 objectForKey:@"consumedSessionPayloads"];
    v19 = [v18 copy];
    consumedSessionPayloads = v8->_consumedSessionPayloads;
    v8->_consumedSessionPayloads = v19;
  }

  return v8;
}

- (IMAssociatedMessageItem)initWithSender:(id)a3 time:(id)a4 body:(id)a5 attributes:(id)a6 fileTransferGUIDs:(id)a7 flags:(unint64_t)a8 error:(id)a9 guid:(id)a10 associatedMessageGUID:(id)a11 associatedMessageType:(int64_t)a12 associatedMessageRange:(_NSRange)a13 messageSummaryInfo:(id)a14 threadIdentifier:(id)a15
{
  v20 = a11;
  v21 = a14;
  v28.receiver = self;
  v28.super_class = IMAssociatedMessageItem;
  v22 = [(IMMessageItem *)&v28 initWithSender:a3 time:a4 body:a5 attributes:a6 fileTransferGUIDs:a7 flags:a8 error:a9 guid:a10 type:0 threadIdentifier:a15];
  if (v22)
  {
    v23 = [v20 copy];
    associatedMessageGUID = v22->_associatedMessageGUID;
    v22->_associatedMessageGUID = v23;

    v22->_associatedMessageType = a12;
    v22->_associatedMessageRange = a13;
    [(IMMessageItem *)v22 setMessageSummaryInfo:v21];
  }

  return v22;
}

- (IMAssociatedMessageItem)initWithSender:(id)a3 time:(id)a4 body:(id)a5 attributes:(id)a6 fileTransferGUIDs:(id)a7 flags:(unint64_t)a8 error:(id)a9 guid:(id)a10 associatedMessageGUID:(id)a11 associatedMessageType:(int64_t)a12 associatedMessageRange:(_NSRange)a13 associatedMessageEmoji:(id)a14 messageSummaryInfo:(id)a15 threadIdentifier:(id)a16
{
  v20 = a11;
  v29 = a14;
  v21 = a15;
  v30.receiver = self;
  v30.super_class = IMAssociatedMessageItem;
  v22 = [(IMMessageItem *)&v30 initWithSender:a3 time:a4 body:a5 attributes:a6 fileTransferGUIDs:a7 flags:a8 error:a9 guid:a10 type:0 threadIdentifier:a16];
  if (v22)
  {
    v23 = [v20 copy];
    associatedMessageGUID = v22->_associatedMessageGUID;
    v22->_associatedMessageGUID = v23;

    v22->_associatedMessageType = a12;
    v22->_associatedMessageRange = a13;
    objc_storeStrong(&v22->_associatedMessageEmoji, a14);
    [(IMMessageItem *)v22 setMessageSummaryInfo:v21];
  }

  return v22;
}

- (IMAssociatedMessageItem)initWithSenderInfo:(id)a3 time:(id)a4 timeRead:(id)a5 timeDelivered:(id)a6 timePlayed:(id)a7 subject:(id)a8 body:(id)a9 bodyData:(id)a10 attributes:(id)a11 fileTransferGUIDs:(id)a12 flags:(unint64_t)a13 guid:(id)a14 messageID:(int64_t)a15 account:(id)a16 accountID:(id)a17 service:(id)a18 handle:(id)a19 roomName:(id)a20 unformattedID:(id)a21 countryCode:(id)a22 expireState:(int64_t)a23 balloonBundleID:(id)a24 payloadData:(id)a25 expressiveSendStyleID:(id)a26 timeExpressiveSendPlayed:(id)a27 errorType:(unsigned int)a28 associatedMessageGUID:(id)a29 associatedMessageType:(int64_t)a30 associatedMessageRange:(_NSRange)a31 bizIntent:(id)a32 locale:(id)a33 biaReferenceID:(id)a34 messageSummaryInfo:(id)a35 partCount:(unint64_t)a36 threadIdentifier:(id)a37 dateRecovered:(id)a38
{
  v39 = a29;
  v40 = a35;
  v51.receiver = self;
  v51.super_class = IMAssociatedMessageItem;
  v41 = [(IMMessageItem *)&v51 initWithSenderInfo:a3 time:a4 timeRead:a5 timeDelivered:a6 timePlayed:a7 subject:a8 body:a9 bodyData:a10 attributes:a11 fileTransferGUIDs:a12 flags:a13 guid:a14 messageID:a15 account:a16 accountID:a17 service:a18 handle:a19 roomName:a20 unformattedID:a21 countryCode:a22 expireState:a23 balloonBundleID:a24 payloadData:a25 expressiveSendStyleID:a26 timeExpressiveSendPlayed:a27 bizIntent:a32 locale:a33 biaReferenceID:a34 errorType:a28 type:0 threadIdentifier:a37 syndicationRanges:0 syncedSyndicationRanges:0 partCount:a36 dateEdited:0 dateRecovered:a38 scheduleType:0 scheduleState:0 cloudKitChatID:0];
  if (v41)
  {
    v42 = [v39 copy];
    associatedMessageGUID = v41->_associatedMessageGUID;
    v41->_associatedMessageGUID = v42;

    v41->_associatedMessageType = a30;
    v41->_associatedMessageRange = a31;
    [(IMMessageItem *)v41 setMessageSummaryInfo:v40];
  }

  return v41;
}

- (IMAssociatedMessageItem)initWithSenderInfo:(id)a3 time:(id)a4 timeRead:(id)a5 timeDelivered:(id)a6 timePlayed:(id)a7 subject:(id)a8 body:(id)a9 bodyData:(id)a10 attributes:(id)a11 fileTransferGUIDs:(id)a12 flags:(unint64_t)a13 guid:(id)a14 messageID:(int64_t)a15 account:(id)a16 accountID:(id)a17 service:(id)a18 handle:(id)a19 roomName:(id)a20 unformattedID:(id)a21 countryCode:(id)a22 expireState:(int64_t)a23 balloonBundleID:(id)a24 payloadData:(id)a25 expressiveSendStyleID:(id)a26 timeExpressiveSendPlayed:(id)a27 errorType:(unsigned int)a28 associatedMessageGUID:(id)a29 associatedMessageType:(int64_t)a30 associatedMessageRange:(_NSRange)a31 bizIntent:(id)a32 locale:(id)a33 biaReferenceID:(id)a34 messageSummaryInfo:(id)a35 partCount:(unint64_t)a36 threadIdentifier:(id)a37 dateRecovered:(id)a38 scheduleType:(unint64_t)a39 scheduleState:(unint64_t)a40
{
  v41 = a29;
  v42 = a35;
  v53.receiver = self;
  v53.super_class = IMAssociatedMessageItem;
  v43 = [(IMMessageItem *)&v53 initWithSenderInfo:a3 time:a4 timeRead:a5 timeDelivered:a6 timePlayed:a7 subject:a8 body:a9 bodyData:a10 attributes:a11 fileTransferGUIDs:a12 flags:a13 guid:a14 messageID:a15 account:a16 accountID:a17 service:a18 handle:a19 roomName:a20 unformattedID:a21 countryCode:a22 expireState:a23 balloonBundleID:a24 payloadData:a25 expressiveSendStyleID:a26 timeExpressiveSendPlayed:a27 bizIntent:a32 locale:a33 biaReferenceID:a34 errorType:a28 type:0 threadIdentifier:a37 syndicationRanges:0 syncedSyndicationRanges:0 partCount:a36 dateEdited:0 dateRecovered:a38 scheduleType:a39 scheduleState:a40 cloudKitChatID:0];
  if (v43)
  {
    v44 = [v41 copy];
    associatedMessageGUID = v43->_associatedMessageGUID;
    v43->_associatedMessageGUID = v44;

    v43->_associatedMessageType = a30;
    v43->_associatedMessageRange = a31;
    [(IMMessageItem *)v43 setMessageSummaryInfo:v42];
  }

  return v43;
}

- (IMAssociatedMessageItem)initWithSenderInfo:(id)a3 time:(id)a4 timeRead:(id)a5 timeDelivered:(id)a6 timePlayed:(id)a7 subject:(id)a8 body:(id)a9 bodyData:(id)a10 attributes:(id)a11 fileTransferGUIDs:(id)a12 flags:(unint64_t)a13 guid:(id)a14 messageID:(int64_t)a15 account:(id)a16 accountID:(id)a17 service:(id)a18 handle:(id)a19 roomName:(id)a20 unformattedID:(id)a21 countryCode:(id)a22 expireState:(int64_t)a23 balloonBundleID:(id)a24 payloadData:(id)a25 expressiveSendStyleID:(id)a26 timeExpressiveSendPlayed:(id)a27 errorType:(unsigned int)a28 associatedMessageGUID:(id)a29 associatedMessageType:(int64_t)a30 associatedMessageRange:(_NSRange)a31 associatedMessageEmoji:(id)a32 bizIntent:(id)a33 locale:(id)a34 biaReferenceID:(id)a35 messageSummaryInfo:(id)a36 partCount:(unint64_t)a37 threadIdentifier:(id)a38 dateRecovered:(id)a39 scheduleType:(unint64_t)a40 scheduleState:(unint64_t)a41 cloudKitChatID:(id)a42
{
  v43 = a29;
  v44 = a32;
  v56.receiver = self;
  v56.super_class = IMAssociatedMessageItem;
  v45 = a36;
  v46 = [(IMMessageItem *)&v56 initWithSenderInfo:a3 time:a4 timeRead:a5 timeDelivered:a6 timePlayed:a7 subject:a8 body:a9 bodyData:a10 attributes:a11 fileTransferGUIDs:a12 flags:a13 guid:a14 messageID:a15 account:a16 accountID:a17 service:a18 handle:a19 roomName:a20 unformattedID:a21 countryCode:a22 expireState:a23 balloonBundleID:a24 payloadData:a25 expressiveSendStyleID:a26 timeExpressiveSendPlayed:a27 bizIntent:a33 locale:a34 biaReferenceID:a35 errorType:a28 type:0 threadIdentifier:a38 syndicationRanges:0 syncedSyndicationRanges:0 partCount:a37 dateEdited:0 dateRecovered:a39 scheduleType:a40 scheduleState:a41 cloudKitChatID:a42];
  if (v46)
  {
    v47 = [v43 copy];
    associatedMessageGUID = v46->_associatedMessageGUID;
    v46->_associatedMessageGUID = v47;

    v46->_associatedMessageType = a30;
    v46->_associatedMessageRange = a31;
    objc_storeStrong(&v46->_associatedMessageEmoji, a32);
    [(IMMessageItem *)v46 setMessageSummaryInfo:v45];
  }

  return v46;
}

- (IMAssociatedMessageItem)initWithMessageItem:(id)a3
{
  v3 = a3;
  v49 = [v3 senderInfo];
  v48 = [v3 time];
  v47 = [v3 timeRead];
  v46 = [v3 timeDelivered];
  v45 = [v3 timePlayed];
  v43 = [v3 subject];
  v44 = [v3 body];
  v42 = [v3 bodyData];
  v40 = [v3 fileTransferGUIDs];
  v30 = [v3 flags];
  v41 = [v3 guid];
  v29 = [v3 messageID];
  v38 = [v3 account];
  v37 = [v3 accountID];
  v36 = [v3 service];
  v28 = [v3 handle];
  v39 = [v3 roomName];
  v27 = [v3 unformattedID];
  v26 = [v3 countryCode];
  v25 = [v3 expireState];
  v35 = [v3 balloonBundleID];
  v24 = [v3 payloadData];
  v34 = [v3 expressiveSendStyleID];
  v23 = [v3 timeExpressiveSendPlayed];
  v22 = [v3 errorCode];
  v21 = [v3 associatedMessageGUID];
  v20 = [v3 associatedMessageType];
  v4 = [v3 associatedMessageRange];
  v18 = v5;
  v19 = v4;
  v33 = [v3 associatedMessageEmoji];
  v17 = [v3 bizIntent];
  v16 = [v3 locale];
  v15 = [v3 biaReferenceID];
  v14 = [v3 messageSummaryInfo];
  v6 = [v3 partCount];
  v7 = [v3 threadIdentifier];
  v8 = [v3 dateRecovered];
  v9 = [v3 scheduleType];
  v10 = [v3 scheduleState];
  v11 = [v3 cloudKitChatID];

  LODWORD(v13) = v22;
  v32 = [(IMAssociatedMessageItem *)self initWithSenderInfo:v49 time:v48 timeRead:v47 timeDelivered:v46 timePlayed:v45 subject:v43 body:v44 bodyData:v42 attributes:0 fileTransferGUIDs:v40 flags:v30 guid:v41 messageID:v29 account:v38 accountID:v37 service:v36 handle:v28 roomName:v39 unformattedID:v27 countryCode:v26 expireState:v25 balloonBundleID:v35 payloadData:v24 expressiveSendStyleID:v34 timeExpressiveSendPlayed:v23 errorType:v13 associatedMessageGUID:v21 associatedMessageType:v20 associatedMessageRange:v19 associatedMessageEmoji:v18 bizIntent:v33 locale:v17 biaReferenceID:v16 messageSummaryInfo:v15 partCount:v14 threadIdentifier:v6 dateRecovered:v7 scheduleType:v8 scheduleState:v9 cloudKitChatID:v10, v11];

  return v32;
}

- (IMAssociatedMessageItem)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = IMAssociatedMessageItem;
  v5 = [(IMMessageItem *)&v25 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedMessageGUID"];
    v7 = [v6 copy];
    associatedMessageGUID = v5->_associatedMessageGUID;
    v5->_associatedMessageGUID = v7;

    v5->_associatedMessageType = [v4 decodeInt64ForKey:@"associatedMessageType"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedMessageRange"];
    v5->_associatedMessageRange.location = [v9 rangeValue];
    v5->_associatedMessageRange.length = v10;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedMessageEmoji"];
    v12 = [v11 copy];
    associatedMessageEmoji = v5->_associatedMessageEmoji;
    v5->_associatedMessageEmoji = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v14 setWithObjects:{v15, v16, v17, v18, v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"consumedSessionPayloads"];
    v22 = [v21 copy];
    consumedSessionPayloads = v5->_consumedSessionPayloads;
    v5->_consumedSessionPayloads = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = IMAssociatedMessageItem;
  v4 = a3;
  [(IMMessageItem *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_associatedMessageGUID forKey:{@"associatedMessageGUID", v6.receiver, v6.super_class}];
  [v4 encodeInt64:self->_associatedMessageType forKey:@"associatedMessageType"];
  v5 = [MEMORY[0x1E696B098] valueWithRange:{self->_associatedMessageRange.location, self->_associatedMessageRange.length}];
  [v4 encodeObject:v5 forKey:@"associatedMessageRange"];

  [v4 encodeObject:self->_associatedMessageEmoji forKey:@"associatedMessageEmoji"];
  [v4 encodeObject:self->_consumedSessionPayloads forKey:@"consumedSessionPayloads"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = IMAssociatedMessageItem;
  v4 = [(IMMessageItem *)&v10 copyWithZone:a3];
  v5 = [(IMAssociatedMessageItem *)self associatedMessageGUID];
  [v4 setAssociatedMessageGUID:v5];

  [v4 setAssociatedMessageType:{-[IMAssociatedMessageItem associatedMessageType](self, "associatedMessageType")}];
  v6 = [(IMAssociatedMessageItem *)self associatedMessageRange];
  [v4 setAssociatedMessageRange:{v6, v7}];
  v8 = [(IMAssociatedMessageItem *)self associatedMessageEmoji];
  [v4 setAssociatedMessageEmoji:v8];

  return v4;
}

- (id)copyForBackwardsCompatibility
{
  v8.receiver = self;
  v8.super_class = IMAssociatedMessageItem;
  v3 = [(IMMessageItem *)&v8 copyForBackwardsCompatibility];
  if ([(IMAssociatedMessageItem *)self associatedMessageType]== 3007)
  {
    [v3 setFileTransferGUIDs:0];
    v4 = objc_alloc(MEMORY[0x1E696AD40]);
    v5 = [v3 body];
    v6 = [v4 initWithAttributedString:v5];

    [v6 removeAttribute:*MEMORY[0x1E69A5F68] range:{0, objc_msgSend(v6, "length")}];
    [v3 setBody:v6];
  }

  [v3 setAssociatedMessageGUID:0];
  [v3 setAssociatedMessageRange:{0, 0x7FFFFFFFFFFFFFFFLL}];
  [v3 setAssociatedMessageType:0];
  [v3 setAssociatedMessageEmoji:0];
  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = IMAssociatedMessageItem;
  v4 = [(IMMessageItem *)&v10 description];
  associatedMessageGUID = self->_associatedMessageGUID;
  associatedMessageType = self->_associatedMessageType;
  v7 = NSStringFromRange(self->_associatedMessageRange);
  v8 = [v3 stringWithFormat:@"%@ associatedMessageGUID: %@, associatedMessageType: %lld, range: %@", v4, associatedMessageGUID, associatedMessageType, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v21.receiver = self;
      v21.super_class = IMAssociatedMessageItem;
      if (![(IMMessageItem *)&v21 isEqual:v5])
      {
        v10 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v6 = 568;
      associatedMessageGUID = self->_associatedMessageGUID;
      v8 = [(IMAssociatedMessageItem *)v5 associatedMessageGUID];
      if (associatedMessageGUID == v8 || (v9 = self->_associatedMessageGUID, [(IMAssociatedMessageItem *)v5 associatedMessageGUID], v6 = objc_claimAutoreleasedReturnValue(), [(NSString *)v9 isEqualToString:v6]))
      {
        associatedMessageType = self->_associatedMessageType;
        if (associatedMessageType == [(IMAssociatedMessageItem *)v5 associatedMessageType]&& (self->_associatedMessageRange.location == [(IMAssociatedMessageItem *)v5 associatedMessageRange]? (v13 = self->_associatedMessageRange.length == v12) : (v13 = 0), v13))
        {
          consumedSessionPayloads = self->_consumedSessionPayloads;
          v16 = [(IMAssociatedMessageItem *)v5 consumedSessionPayloads];
          v17 = v16;
          if (consumedSessionPayloads == v16)
          {

            v10 = 1;
          }

          else
          {
            v18 = self->_consumedSessionPayloads;
            v19 = [(IMAssociatedMessageItem *)v5 consumedSessionPayloads];
            v10 = [(NSArray *)v18 isEqualToArray:v19];
          }
        }

        else
        {
          v10 = 0;
        }

        if (associatedMessageGUID == v8)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v10 = 0;
      }

LABEL_18:
      goto LABEL_19;
    }

    v20.receiver = self;
    v20.super_class = IMAssociatedMessageItem;
    v10 = [(IMMessageItem *)&v20 isEqual:v4];
  }

LABEL_20:

  return v10;
}

- (IMTapback)tapback
{
  v3 = [(IMAssociatedMessageItem *)self associatedMessageType];
  if ((v3 - 3000) >= 6 && (v3 - 2000) > 5)
  {
    v6 = [(IMAssociatedMessageItem *)self associatedMessageType];
    if (v6 == 3006 || v6 == 2006)
    {
      v7 = [IMEmojiTapback alloc];
      v8 = [(IMAssociatedMessageItem *)self associatedMessageEmoji];
      v4 = [(IMEmojiTapback *)v7 initWithEmoji:v8 isRemoved:([(IMAssociatedMessageItem *)self associatedMessageType]& 0xFFFFFFFFFFFFFFF8) == 3000];
    }

    else
    {
      v9 = [(IMAssociatedMessageItem *)self associatedMessageType];
      if (v9 == 3007 || v9 == 2007)
      {
        v10 = [(IMMessageItem *)self fileTransferGUIDs];
        v11 = [v10 firstObject];

        if (v11)
        {
          v4 = [[IMStickerTapback alloc] initWithTransferGUID:v11 isRemoved:([(IMAssociatedMessageItem *)self associatedMessageType]& 0xFFFFFFFFFFFFFFF8) == 3000];
        }

        else
        {
          v12 = IMLogHandleForCategory("IMAssociatedMessageItem");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_1A88C4820(v12);
          }

          v4 = 0;
        }
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = [[IMClassicTapback alloc] initWithAssociatedMessageType:[(IMAssociatedMessageItem *)self associatedMessageType]];
  }

  return v4;
}

- (id)emojiString
{
  if ([(IMAssociatedMessageItem *)self associatedMessageType]== 1001)
  {
    v3 = [(IMMessageItem *)self body];
    v4 = [v3 string];
    v5 = [v4 stringByReplacingOccurrencesOfString:*MEMORY[0x1E69A5F00] withString:&stru_1F1BB91F0];

    if ([v5 __im_hasEmoji])
    {
      goto LABEL_5;
    }
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (IMEmojiSticker)emojiSticker
{
  v2 = [(IMAssociatedMessageItem *)self emojiString];
  if (v2)
  {
    v3 = [IMEmojiSticker alloc];
    v4 = +[IMEmojiSticker defaultEmojiStickerPackID];
    v5 = [(IMEmojiSticker *)v3 initWithEmojiString:v2 stickerPackID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEmojiSticker
{
  v2 = [(IMAssociatedMessageItem *)self emojiString];
  v3 = v2 != 0;

  return v3;
}

- (NSAttributedString)associatedMessagePartText
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 __imami_attributedStringForKey:@"ampt"];

  return v3;
}

- (void)setAssociatedMessagePartText:(id)a3
{
  v9 = a3;
  v4 = [(IMMessageItem *)self messageSummaryInfo];
  if (v9)
  {
    if ([v4 count])
    {
      v5 = [v4 mutableCopy];
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v7 = v5;
    [v5 __imami_setAttributedString:v9 forKey:@"ampt"];
  }

  else
  {
    v6 = [v4 objectForKey:@"ampt"];

    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = [v4 mutableCopy];
    [v7 removeObjectForKey:@"ampt"];
  }

  v8 = [v7 copy];
  [(IMMessageItem *)self setMessageSummaryInfo:v8];

LABEL_9:
}

- (NSString)associatedMessageEffect
{
  v2 = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [v2 objectForKey:@"ame"];

  return v3;
}

- (void)setAssociatedMessageEffect:(id)a3
{
  v4 = a3;
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

  [v9 setObject:v4 forKeyedSubscript:@"ame"];
  [(IMMessageItem *)self setMessageSummaryInfo:v9];
}

- (BOOL)_updateAssociatedMessagePartTextReplacingTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:(id)a3
{
  v4 = a3;
  v5 = [(IMAssociatedMessageItem *)self associatedMessagePartText];
  if ([v5 length])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_1A8601FC4;
    v17 = sub_1A86021D0;
    v18 = v5;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1A86C7FCC;
    v8[3] = &unk_1E7827D20;
    v8[4] = &v13;
    v8[5] = &v9;
    [v4 enumerateKeysAndObjectsUsingBlock:v8];
    v6 = *(v10 + 24);
    if (v6)
    {
      [(IMAssociatedMessageItem *)self setAssociatedMessagePartText:v14[5]];
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

- (BOOL)updateTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:(id)a3
{
  v3 = self;
  v7.receiver = self;
  v7.super_class = IMAssociatedMessageItem;
  v4 = a3;
  v5 = [(IMMessageItem *)&v7 updateTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:v4];
  LOBYTE(v3) = [(IMAssociatedMessageItem *)v3 _updateAssociatedMessagePartTextReplacingTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:v4, v7.receiver, v7.super_class];

  return (v5 | v3) & 1;
}

@end