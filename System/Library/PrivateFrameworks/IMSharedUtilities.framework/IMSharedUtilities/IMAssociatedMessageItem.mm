@interface IMAssociatedMessageItem
- (BOOL)_updateAssociatedMessagePartTextReplacingTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:(id)ds;
- (BOOL)isEmojiSticker;
- (BOOL)isEqual:(id)equal;
- (BOOL)updateTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:(id)ds;
- (IMAssociatedMessageItem)initWithCoder:(id)coder;
- (IMAssociatedMessageItem)initWithDictionary:(id)dictionary hint:(id)hint;
- (IMAssociatedMessageItem)initWithMessageItem:(id)item;
- (IMAssociatedMessageItem)initWithSender:(id)sender time:(id)time body:(id)body attributes:(id)attributes fileTransferGUIDs:(id)ds flags:(unint64_t)flags error:(id)error guid:(id)self0 associatedMessageGUID:(id)self1 associatedMessageType:(int64_t)self2 associatedMessageRange:(_NSRange)self3 associatedMessageEmoji:(id)self4 messageSummaryInfo:(id)self5 threadIdentifier:(id)self6;
- (IMAssociatedMessageItem)initWithSender:(id)sender time:(id)time body:(id)body attributes:(id)attributes fileTransferGUIDs:(id)ds flags:(unint64_t)flags error:(id)error guid:(id)self0 associatedMessageGUID:(id)self1 associatedMessageType:(int64_t)self2 associatedMessageRange:(_NSRange)self3 messageSummaryInfo:(id)self4 threadIdentifier:(id)self5;
- (IMAssociatedMessageItem)initWithSenderInfo:(id)info time:(id)time timeRead:(id)read timeDelivered:(id)delivered timePlayed:(id)played subject:(id)subject body:(id)body bodyData:(id)self0 attributes:(id)self1 fileTransferGUIDs:(id)self2 flags:(unint64_t)self3 guid:(id)self4 messageID:(int64_t)self5 account:(id)self6 accountID:(id)self7 service:(id)self8 handle:(id)self9 roomName:(id)name unformattedID:(id)unformattedID countryCode:(id)code expireState:(int64_t)state balloonBundleID:(id)bundleID payloadData:(id)payloadData expressiveSendStyleID:(id)styleID timeExpressiveSendPlayed:(id)sendPlayed errorType:(unsigned int)type associatedMessageGUID:(id)uID associatedMessageType:(int64_t)info0 associatedMessageRange:(_NSRange)info1 associatedMessageEmoji:(id)info2 bizIntent:(id)info3 locale:(id)info4 biaReferenceID:(id)info5 messageSummaryInfo:(id)info6 partCount:(unint64_t)info7 threadIdentifier:(id)info8 dateRecovered:(id)info9 scheduleType:(unint64_t)time0 scheduleState:(unint64_t)time1 cloudKitChatID:(id)time2;
- (IMAssociatedMessageItem)initWithSenderInfo:(id)info time:(id)time timeRead:(id)read timeDelivered:(id)delivered timePlayed:(id)played subject:(id)subject body:(id)body bodyData:(id)self0 attributes:(id)self1 fileTransferGUIDs:(id)self2 flags:(unint64_t)self3 guid:(id)self4 messageID:(int64_t)self5 account:(id)self6 accountID:(id)self7 service:(id)self8 handle:(id)self9 roomName:(id)name unformattedID:(id)unformattedID countryCode:(id)code expireState:(int64_t)state balloonBundleID:(id)bundleID payloadData:(id)payloadData expressiveSendStyleID:(id)styleID timeExpressiveSendPlayed:(id)sendPlayed errorType:(unsigned int)type associatedMessageGUID:(id)uID associatedMessageType:(int64_t)info0 associatedMessageRange:(_NSRange)info1 bizIntent:(id)info2 locale:(id)info3 biaReferenceID:(id)info4 messageSummaryInfo:(id)info5 partCount:(unint64_t)info6 threadIdentifier:(id)info7 dateRecovered:(id)info8;
- (IMAssociatedMessageItem)initWithSenderInfo:(id)info time:(id)time timeRead:(id)read timeDelivered:(id)delivered timePlayed:(id)played subject:(id)subject body:(id)body bodyData:(id)self0 attributes:(id)self1 fileTransferGUIDs:(id)self2 flags:(unint64_t)self3 guid:(id)self4 messageID:(int64_t)self5 account:(id)self6 accountID:(id)self7 service:(id)self8 handle:(id)self9 roomName:(id)name unformattedID:(id)unformattedID countryCode:(id)code expireState:(int64_t)state balloonBundleID:(id)bundleID payloadData:(id)payloadData expressiveSendStyleID:(id)styleID timeExpressiveSendPlayed:(id)sendPlayed errorType:(unsigned int)type associatedMessageGUID:(id)uID associatedMessageType:(int64_t)info0 associatedMessageRange:(_NSRange)info1 bizIntent:(id)info2 locale:(id)info3 biaReferenceID:(id)info4 messageSummaryInfo:(id)info5 partCount:(unint64_t)info6 threadIdentifier:(id)info7 dateRecovered:(id)info8 scheduleType:(unint64_t)info9 scheduleState:(unint64_t)time0;
- (IMEmojiSticker)emojiSticker;
- (IMTapback)tapback;
- (NSAttributedString)associatedMessagePartText;
- (NSString)associatedMessageEffect;
- (_NSRange)associatedMessageRange;
- (id)copyDictionaryRepresentation;
- (id)copyForBackwardsCompatibility;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)emojiString;
- (void)encodeWithCoder:(id)coder;
- (void)setAssociatedMessageEffect:(id)effect;
- (void)setAssociatedMessagePartText:(id)text;
@end

@implementation IMAssociatedMessageItem

- (id)copyDictionaryRepresentation
{
  v13.receiver = self;
  v13.super_class = IMAssociatedMessageItem;
  copyDictionaryRepresentation = [(IMMessageItem *)&v13 copyDictionaryRepresentation];
  v4 = copyDictionaryRepresentation;
  associatedMessageGUID = self->_associatedMessageGUID;
  if (associatedMessageGUID)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"associatedMessageGUID", associatedMessageGUID);
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
    bodyData = [(IMMessageItem *)self bodyData];
    if (bodyData)
    {
      CFDictionarySetValue(v4, @"bodyData", bodyData);
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

- (IMAssociatedMessageItem)initWithDictionary:(id)dictionary hint:(id)hint
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = IMAssociatedMessageItem;
  v7 = [(IMMessageItem *)&v22 initWithDictionary:dictionaryCopy hint:hint];
  v8 = v7;
  if (dictionaryCopy && v7)
  {
    v9 = [dictionaryCopy objectForKey:@"associatedMessageGUID"];
    v10 = [v9 copy];
    associatedMessageGUID = v8->_associatedMessageGUID;
    v8->_associatedMessageGUID = v10;

    v12 = [dictionaryCopy objectForKey:@"associatedMessageType"];
    v8->_associatedMessageType = [v12 longLongValue];

    v13 = [dictionaryCopy objectForKeyedSubscript:@"associatedMessageRangeLocation"];
    v8->_associatedMessageRange.location = [v13 integerValue];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"associatedMessageRangeLength"];
    v8->_associatedMessageRange.length = [v14 integerValue];

    v15 = [dictionaryCopy objectForKey:@"associatedMessageEmoji"];
    v16 = [v15 copy];
    associatedMessageEmoji = v8->_associatedMessageEmoji;
    v8->_associatedMessageEmoji = v16;

    v18 = [dictionaryCopy objectForKey:@"consumedSessionPayloads"];
    v19 = [v18 copy];
    consumedSessionPayloads = v8->_consumedSessionPayloads;
    v8->_consumedSessionPayloads = v19;
  }

  return v8;
}

- (IMAssociatedMessageItem)initWithSender:(id)sender time:(id)time body:(id)body attributes:(id)attributes fileTransferGUIDs:(id)ds flags:(unint64_t)flags error:(id)error guid:(id)self0 associatedMessageGUID:(id)self1 associatedMessageType:(int64_t)self2 associatedMessageRange:(_NSRange)self3 messageSummaryInfo:(id)self4 threadIdentifier:(id)self5
{
  dCopy = d;
  infoCopy = info;
  v28.receiver = self;
  v28.super_class = IMAssociatedMessageItem;
  v22 = [(IMMessageItem *)&v28 initWithSender:sender time:time body:body attributes:attributes fileTransferGUIDs:ds flags:flags error:error guid:guid type:0 threadIdentifier:identifier];
  if (v22)
  {
    v23 = [dCopy copy];
    associatedMessageGUID = v22->_associatedMessageGUID;
    v22->_associatedMessageGUID = v23;

    v22->_associatedMessageType = type;
    v22->_associatedMessageRange = range;
    [(IMMessageItem *)v22 setMessageSummaryInfo:infoCopy];
  }

  return v22;
}

- (IMAssociatedMessageItem)initWithSender:(id)sender time:(id)time body:(id)body attributes:(id)attributes fileTransferGUIDs:(id)ds flags:(unint64_t)flags error:(id)error guid:(id)self0 associatedMessageGUID:(id)self1 associatedMessageType:(int64_t)self2 associatedMessageRange:(_NSRange)self3 associatedMessageEmoji:(id)self4 messageSummaryInfo:(id)self5 threadIdentifier:(id)self6
{
  dCopy = d;
  emojiCopy = emoji;
  infoCopy = info;
  v30.receiver = self;
  v30.super_class = IMAssociatedMessageItem;
  v22 = [(IMMessageItem *)&v30 initWithSender:sender time:time body:body attributes:attributes fileTransferGUIDs:ds flags:flags error:error guid:guid type:0 threadIdentifier:identifier];
  if (v22)
  {
    v23 = [dCopy copy];
    associatedMessageGUID = v22->_associatedMessageGUID;
    v22->_associatedMessageGUID = v23;

    v22->_associatedMessageType = type;
    v22->_associatedMessageRange = range;
    objc_storeStrong(&v22->_associatedMessageEmoji, emoji);
    [(IMMessageItem *)v22 setMessageSummaryInfo:infoCopy];
  }

  return v22;
}

- (IMAssociatedMessageItem)initWithSenderInfo:(id)info time:(id)time timeRead:(id)read timeDelivered:(id)delivered timePlayed:(id)played subject:(id)subject body:(id)body bodyData:(id)self0 attributes:(id)self1 fileTransferGUIDs:(id)self2 flags:(unint64_t)self3 guid:(id)self4 messageID:(int64_t)self5 account:(id)self6 accountID:(id)self7 service:(id)self8 handle:(id)self9 roomName:(id)name unformattedID:(id)unformattedID countryCode:(id)code expireState:(int64_t)state balloonBundleID:(id)bundleID payloadData:(id)payloadData expressiveSendStyleID:(id)styleID timeExpressiveSendPlayed:(id)sendPlayed errorType:(unsigned int)type associatedMessageGUID:(id)uID associatedMessageType:(int64_t)info0 associatedMessageRange:(_NSRange)info1 bizIntent:(id)info2 locale:(id)info3 biaReferenceID:(id)info4 messageSummaryInfo:(id)info5 partCount:(unint64_t)info6 threadIdentifier:(id)info7 dateRecovered:(id)info8
{
  uIDCopy = uID;
  summaryInfoCopy = summaryInfo;
  v51.receiver = self;
  v51.super_class = IMAssociatedMessageItem;
  v41 = [(IMMessageItem *)&v51 initWithSenderInfo:info time:time timeRead:read timeDelivered:delivered timePlayed:played subject:subject body:body bodyData:data attributes:attributes fileTransferGUIDs:ds flags:flags guid:guid messageID:d account:account accountID:iD service:service handle:handle roomName:name unformattedID:unformattedID countryCode:code expireState:state balloonBundleID:bundleID payloadData:payloadData expressiveSendStyleID:styleID timeExpressiveSendPlayed:sendPlayed bizIntent:intent locale:locale biaReferenceID:referenceID errorType:type type:0 threadIdentifier:identifier syndicationRanges:0 syncedSyndicationRanges:0 partCount:count dateEdited:0 dateRecovered:recovered scheduleType:0 scheduleState:0 cloudKitChatID:0];
  if (v41)
  {
    v42 = [uIDCopy copy];
    associatedMessageGUID = v41->_associatedMessageGUID;
    v41->_associatedMessageGUID = v42;

    v41->_associatedMessageType = messageType;
    v41->_associatedMessageRange = range;
    [(IMMessageItem *)v41 setMessageSummaryInfo:summaryInfoCopy];
  }

  return v41;
}

- (IMAssociatedMessageItem)initWithSenderInfo:(id)info time:(id)time timeRead:(id)read timeDelivered:(id)delivered timePlayed:(id)played subject:(id)subject body:(id)body bodyData:(id)self0 attributes:(id)self1 fileTransferGUIDs:(id)self2 flags:(unint64_t)self3 guid:(id)self4 messageID:(int64_t)self5 account:(id)self6 accountID:(id)self7 service:(id)self8 handle:(id)self9 roomName:(id)name unformattedID:(id)unformattedID countryCode:(id)code expireState:(int64_t)state balloonBundleID:(id)bundleID payloadData:(id)payloadData expressiveSendStyleID:(id)styleID timeExpressiveSendPlayed:(id)sendPlayed errorType:(unsigned int)type associatedMessageGUID:(id)uID associatedMessageType:(int64_t)info0 associatedMessageRange:(_NSRange)info1 bizIntent:(id)info2 locale:(id)info3 biaReferenceID:(id)info4 messageSummaryInfo:(id)info5 partCount:(unint64_t)info6 threadIdentifier:(id)info7 dateRecovered:(id)info8 scheduleType:(unint64_t)info9 scheduleState:(unint64_t)time0
{
  uIDCopy = uID;
  summaryInfoCopy = summaryInfo;
  v53.receiver = self;
  v53.super_class = IMAssociatedMessageItem;
  v43 = [(IMMessageItem *)&v53 initWithSenderInfo:info time:time timeRead:read timeDelivered:delivered timePlayed:played subject:subject body:body bodyData:data attributes:attributes fileTransferGUIDs:ds flags:flags guid:guid messageID:d account:account accountID:iD service:service handle:handle roomName:name unformattedID:unformattedID countryCode:code expireState:state balloonBundleID:bundleID payloadData:payloadData expressiveSendStyleID:styleID timeExpressiveSendPlayed:sendPlayed bizIntent:intent locale:locale biaReferenceID:referenceID errorType:type type:0 threadIdentifier:identifier syndicationRanges:0 syncedSyndicationRanges:0 partCount:count dateEdited:0 dateRecovered:recovered scheduleType:scheduleType scheduleState:scheduleState cloudKitChatID:0];
  if (v43)
  {
    v44 = [uIDCopy copy];
    associatedMessageGUID = v43->_associatedMessageGUID;
    v43->_associatedMessageGUID = v44;

    v43->_associatedMessageType = messageType;
    v43->_associatedMessageRange = range;
    [(IMMessageItem *)v43 setMessageSummaryInfo:summaryInfoCopy];
  }

  return v43;
}

- (IMAssociatedMessageItem)initWithSenderInfo:(id)info time:(id)time timeRead:(id)read timeDelivered:(id)delivered timePlayed:(id)played subject:(id)subject body:(id)body bodyData:(id)self0 attributes:(id)self1 fileTransferGUIDs:(id)self2 flags:(unint64_t)self3 guid:(id)self4 messageID:(int64_t)self5 account:(id)self6 accountID:(id)self7 service:(id)self8 handle:(id)self9 roomName:(id)name unformattedID:(id)unformattedID countryCode:(id)code expireState:(int64_t)state balloonBundleID:(id)bundleID payloadData:(id)payloadData expressiveSendStyleID:(id)styleID timeExpressiveSendPlayed:(id)sendPlayed errorType:(unsigned int)type associatedMessageGUID:(id)uID associatedMessageType:(int64_t)info0 associatedMessageRange:(_NSRange)info1 associatedMessageEmoji:(id)info2 bizIntent:(id)info3 locale:(id)info4 biaReferenceID:(id)info5 messageSummaryInfo:(id)info6 partCount:(unint64_t)info7 threadIdentifier:(id)info8 dateRecovered:(id)info9 scheduleType:(unint64_t)time0 scheduleState:(unint64_t)time1 cloudKitChatID:(id)time2
{
  uIDCopy = uID;
  emojiCopy = emoji;
  v56.receiver = self;
  v56.super_class = IMAssociatedMessageItem;
  summaryInfoCopy = summaryInfo;
  v46 = [(IMMessageItem *)&v56 initWithSenderInfo:info time:time timeRead:read timeDelivered:delivered timePlayed:played subject:subject body:body bodyData:data attributes:attributes fileTransferGUIDs:ds flags:flags guid:guid messageID:d account:account accountID:iD service:service handle:handle roomName:name unformattedID:unformattedID countryCode:code expireState:state balloonBundleID:bundleID payloadData:payloadData expressiveSendStyleID:styleID timeExpressiveSendPlayed:sendPlayed bizIntent:intent locale:locale biaReferenceID:referenceID errorType:type type:0 threadIdentifier:identifier syndicationRanges:0 syncedSyndicationRanges:0 partCount:count dateEdited:0 dateRecovered:recovered scheduleType:scheduleType scheduleState:scheduleState cloudKitChatID:chatID];
  if (v46)
  {
    v47 = [uIDCopy copy];
    associatedMessageGUID = v46->_associatedMessageGUID;
    v46->_associatedMessageGUID = v47;

    v46->_associatedMessageType = messageType;
    v46->_associatedMessageRange = range;
    objc_storeStrong(&v46->_associatedMessageEmoji, emoji);
    [(IMMessageItem *)v46 setMessageSummaryInfo:summaryInfoCopy];
  }

  return v46;
}

- (IMAssociatedMessageItem)initWithMessageItem:(id)item
{
  itemCopy = item;
  senderInfo = [itemCopy senderInfo];
  time = [itemCopy time];
  timeRead = [itemCopy timeRead];
  timeDelivered = [itemCopy timeDelivered];
  timePlayed = [itemCopy timePlayed];
  subject = [itemCopy subject];
  body = [itemCopy body];
  bodyData = [itemCopy bodyData];
  fileTransferGUIDs = [itemCopy fileTransferGUIDs];
  flags = [itemCopy flags];
  guid = [itemCopy guid];
  messageID = [itemCopy messageID];
  account = [itemCopy account];
  accountID = [itemCopy accountID];
  service = [itemCopy service];
  handle = [itemCopy handle];
  roomName = [itemCopy roomName];
  unformattedID = [itemCopy unformattedID];
  countryCode = [itemCopy countryCode];
  expireState = [itemCopy expireState];
  balloonBundleID = [itemCopy balloonBundleID];
  payloadData = [itemCopy payloadData];
  expressiveSendStyleID = [itemCopy expressiveSendStyleID];
  timeExpressiveSendPlayed = [itemCopy timeExpressiveSendPlayed];
  errorCode = [itemCopy errorCode];
  associatedMessageGUID = [itemCopy associatedMessageGUID];
  associatedMessageType = [itemCopy associatedMessageType];
  associatedMessageRange = [itemCopy associatedMessageRange];
  v18 = v5;
  v19 = associatedMessageRange;
  associatedMessageEmoji = [itemCopy associatedMessageEmoji];
  bizIntent = [itemCopy bizIntent];
  locale = [itemCopy locale];
  biaReferenceID = [itemCopy biaReferenceID];
  messageSummaryInfo = [itemCopy messageSummaryInfo];
  partCount = [itemCopy partCount];
  threadIdentifier = [itemCopy threadIdentifier];
  dateRecovered = [itemCopy dateRecovered];
  scheduleType = [itemCopy scheduleType];
  scheduleState = [itemCopy scheduleState];
  cloudKitChatID = [itemCopy cloudKitChatID];

  LODWORD(v13) = errorCode;
  v32 = [(IMAssociatedMessageItem *)self initWithSenderInfo:senderInfo time:time timeRead:timeRead timeDelivered:timeDelivered timePlayed:timePlayed subject:subject body:body bodyData:bodyData attributes:0 fileTransferGUIDs:fileTransferGUIDs flags:flags guid:guid messageID:messageID account:account accountID:accountID service:service handle:handle roomName:roomName unformattedID:unformattedID countryCode:countryCode expireState:expireState balloonBundleID:balloonBundleID payloadData:payloadData expressiveSendStyleID:expressiveSendStyleID timeExpressiveSendPlayed:timeExpressiveSendPlayed errorType:v13 associatedMessageGUID:associatedMessageGUID associatedMessageType:associatedMessageType associatedMessageRange:v19 associatedMessageEmoji:v18 bizIntent:associatedMessageEmoji locale:bizIntent biaReferenceID:locale messageSummaryInfo:biaReferenceID partCount:messageSummaryInfo threadIdentifier:partCount dateRecovered:threadIdentifier scheduleType:dateRecovered scheduleState:scheduleType cloudKitChatID:scheduleState, cloudKitChatID];

  return v32;
}

- (IMAssociatedMessageItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = IMAssociatedMessageItem;
  v5 = [(IMMessageItem *)&v25 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedMessageGUID"];
    v7 = [v6 copy];
    associatedMessageGUID = v5->_associatedMessageGUID;
    v5->_associatedMessageGUID = v7;

    v5->_associatedMessageType = [coderCopy decodeInt64ForKey:@"associatedMessageType"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedMessageRange"];
    v5->_associatedMessageRange.location = [v9 rangeValue];
    v5->_associatedMessageRange.length = v10;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedMessageEmoji"];
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
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"consumedSessionPayloads"];
    v22 = [v21 copy];
    consumedSessionPayloads = v5->_consumedSessionPayloads;
    v5->_consumedSessionPayloads = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = IMAssociatedMessageItem;
  coderCopy = coder;
  [(IMMessageItem *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_associatedMessageGUID forKey:{@"associatedMessageGUID", v6.receiver, v6.super_class}];
  [coderCopy encodeInt64:self->_associatedMessageType forKey:@"associatedMessageType"];
  v5 = [MEMORY[0x1E696B098] valueWithRange:{self->_associatedMessageRange.location, self->_associatedMessageRange.length}];
  [coderCopy encodeObject:v5 forKey:@"associatedMessageRange"];

  [coderCopy encodeObject:self->_associatedMessageEmoji forKey:@"associatedMessageEmoji"];
  [coderCopy encodeObject:self->_consumedSessionPayloads forKey:@"consumedSessionPayloads"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = IMAssociatedMessageItem;
  v4 = [(IMMessageItem *)&v10 copyWithZone:zone];
  associatedMessageGUID = [(IMAssociatedMessageItem *)self associatedMessageGUID];
  [v4 setAssociatedMessageGUID:associatedMessageGUID];

  [v4 setAssociatedMessageType:{-[IMAssociatedMessageItem associatedMessageType](self, "associatedMessageType")}];
  associatedMessageRange = [(IMAssociatedMessageItem *)self associatedMessageRange];
  [v4 setAssociatedMessageRange:{associatedMessageRange, v7}];
  associatedMessageEmoji = [(IMAssociatedMessageItem *)self associatedMessageEmoji];
  [v4 setAssociatedMessageEmoji:associatedMessageEmoji];

  return v4;
}

- (id)copyForBackwardsCompatibility
{
  v8.receiver = self;
  v8.super_class = IMAssociatedMessageItem;
  copyForBackwardsCompatibility = [(IMMessageItem *)&v8 copyForBackwardsCompatibility];
  if ([(IMAssociatedMessageItem *)self associatedMessageType]== 3007)
  {
    [copyForBackwardsCompatibility setFileTransferGUIDs:0];
    v4 = objc_alloc(MEMORY[0x1E696AD40]);
    body = [copyForBackwardsCompatibility body];
    v6 = [v4 initWithAttributedString:body];

    [v6 removeAttribute:*MEMORY[0x1E69A5F68] range:{0, objc_msgSend(v6, "length")}];
    [copyForBackwardsCompatibility setBody:v6];
  }

  [copyForBackwardsCompatibility setAssociatedMessageGUID:0];
  [copyForBackwardsCompatibility setAssociatedMessageRange:{0, 0x7FFFFFFFFFFFFFFFLL}];
  [copyForBackwardsCompatibility setAssociatedMessageType:0];
  [copyForBackwardsCompatibility setAssociatedMessageEmoji:0];
  return copyForBackwardsCompatibility;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
      associatedMessageGUID = [(IMAssociatedMessageItem *)v5 associatedMessageGUID];
      if (associatedMessageGUID == associatedMessageGUID || (v9 = self->_associatedMessageGUID, [(IMAssociatedMessageItem *)v5 associatedMessageGUID], v6 = objc_claimAutoreleasedReturnValue(), [(NSString *)v9 isEqualToString:v6]))
      {
        associatedMessageType = self->_associatedMessageType;
        if (associatedMessageType == [(IMAssociatedMessageItem *)v5 associatedMessageType]&& (self->_associatedMessageRange.location == [(IMAssociatedMessageItem *)v5 associatedMessageRange]? (v13 = self->_associatedMessageRange.length == v12) : (v13 = 0), v13))
        {
          consumedSessionPayloads = self->_consumedSessionPayloads;
          consumedSessionPayloads = [(IMAssociatedMessageItem *)v5 consumedSessionPayloads];
          v17 = consumedSessionPayloads;
          if (consumedSessionPayloads == consumedSessionPayloads)
          {

            v10 = 1;
          }

          else
          {
            v18 = self->_consumedSessionPayloads;
            consumedSessionPayloads2 = [(IMAssociatedMessageItem *)v5 consumedSessionPayloads];
            v10 = [(NSArray *)v18 isEqualToArray:consumedSessionPayloads2];
          }
        }

        else
        {
          v10 = 0;
        }

        if (associatedMessageGUID == associatedMessageGUID)
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
    v10 = [(IMMessageItem *)&v20 isEqual:equalCopy];
  }

LABEL_20:

  return v10;
}

- (IMTapback)tapback
{
  associatedMessageType = [(IMAssociatedMessageItem *)self associatedMessageType];
  if ((associatedMessageType - 3000) >= 6 && (associatedMessageType - 2000) > 5)
  {
    associatedMessageType2 = [(IMAssociatedMessageItem *)self associatedMessageType];
    if (associatedMessageType2 == 3006 || associatedMessageType2 == 2006)
    {
      v7 = [IMEmojiTapback alloc];
      associatedMessageEmoji = [(IMAssociatedMessageItem *)self associatedMessageEmoji];
      3000 = [(IMEmojiTapback *)v7 initWithEmoji:associatedMessageEmoji isRemoved:([(IMAssociatedMessageItem *)self associatedMessageType]& 0xFFFFFFFFFFFFFFF8) == 3000];
    }

    else
    {
      associatedMessageType3 = [(IMAssociatedMessageItem *)self associatedMessageType];
      if (associatedMessageType3 == 3007 || associatedMessageType3 == 2007)
      {
        fileTransferGUIDs = [(IMMessageItem *)self fileTransferGUIDs];
        firstObject = [fileTransferGUIDs firstObject];

        if (firstObject)
        {
          3000 = [[IMStickerTapback alloc] initWithTransferGUID:firstObject isRemoved:([(IMAssociatedMessageItem *)self associatedMessageType]& 0xFFFFFFFFFFFFFFF8) == 3000];
        }

        else
        {
          v12 = IMLogHandleForCategory("IMAssociatedMessageItem");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_1A88C4820(v12);
          }

          3000 = 0;
        }
      }

      else
      {
        3000 = 0;
      }
    }
  }

  else
  {
    3000 = [[IMClassicTapback alloc] initWithAssociatedMessageType:[(IMAssociatedMessageItem *)self associatedMessageType]];
  }

  return 3000;
}

- (id)emojiString
{
  if ([(IMAssociatedMessageItem *)self associatedMessageType]== 1001)
  {
    body = [(IMMessageItem *)self body];
    string = [body string];
    v5 = [string stringByReplacingOccurrencesOfString:*MEMORY[0x1E69A5F00] withString:&stru_1F1BB91F0];

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
  emojiString = [(IMAssociatedMessageItem *)self emojiString];
  if (emojiString)
  {
    v3 = [IMEmojiSticker alloc];
    v4 = +[IMEmojiSticker defaultEmojiStickerPackID];
    v5 = [(IMEmojiSticker *)v3 initWithEmojiString:emojiString stickerPackID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEmojiSticker
{
  emojiString = [(IMAssociatedMessageItem *)self emojiString];
  v3 = emojiString != 0;

  return v3;
}

- (NSAttributedString)associatedMessagePartText
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo __imami_attributedStringForKey:@"ampt"];

  return v3;
}

- (void)setAssociatedMessagePartText:(id)text
{
  textCopy = text;
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  if (textCopy)
  {
    if ([messageSummaryInfo count])
    {
      v5 = [messageSummaryInfo mutableCopy];
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v7 = v5;
    [v5 __imami_setAttributedString:textCopy forKey:@"ampt"];
  }

  else
  {
    v6 = [messageSummaryInfo objectForKey:@"ampt"];

    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = [messageSummaryInfo mutableCopy];
    [v7 removeObjectForKey:@"ampt"];
  }

  v8 = [v7 copy];
  [(IMMessageItem *)self setMessageSummaryInfo:v8];

LABEL_9:
}

- (NSString)associatedMessageEffect
{
  messageSummaryInfo = [(IMMessageItem *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:@"ame"];

  return v3;
}

- (void)setAssociatedMessageEffect:(id)effect
{
  effectCopy = effect;
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

  [v9 setObject:effectCopy forKeyedSubscript:@"ame"];
  [(IMMessageItem *)self setMessageSummaryInfo:v9];
}

- (BOOL)_updateAssociatedMessagePartTextReplacingTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:(id)ds
{
  dsCopy = ds;
  associatedMessagePartText = [(IMAssociatedMessageItem *)self associatedMessagePartText];
  if ([associatedMessagePartText length])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_1A8601FC4;
    v17 = sub_1A86021D0;
    v18 = associatedMessagePartText;
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
    [dsCopy enumerateKeysAndObjectsUsingBlock:v8];
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

- (BOOL)updateTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:(id)ds
{
  selfCopy = self;
  v7.receiver = self;
  v7.super_class = IMAssociatedMessageItem;
  dsCopy = ds;
  v5 = [(IMMessageItem *)&v7 updateTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:dsCopy];
  LOBYTE(selfCopy) = [(IMAssociatedMessageItem *)selfCopy _updateAssociatedMessagePartTextReplacingTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:dsCopy, v7.receiver, v7.super_class];

  return (v5 | selfCopy) & 1;
}

@end