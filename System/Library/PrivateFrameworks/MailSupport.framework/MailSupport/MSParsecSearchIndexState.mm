@interface MSParsecSearchIndexState
+ (id)indexStateForMessagesIndexed:(id)indexed messageBodiesIndexed:(id)bodiesIndexed indexableMessages:(id)messages percentUnindexedBodiesInFrecent:(id)frecent attachmentsIndexed:(id)attachmentsIndexed indexableAttachments:(id)attachments;
- (MSParsecSearchIndexState)initWithPercentMessagesIndexed:(int64_t)indexed percentMessageBodiesIndexed:(int64_t)bodiesIndexed percentUnindexedBodiesInFrecent:(int64_t)frecent percentAttachmentsIndexed:(int64_t)attachmentsIndexed totalMessageCount:(int64_t)count indexedMessageCount:(int64_t)messageCount indexType:(int64_t)type;
@end

@implementation MSParsecSearchIndexState

+ (id)indexStateForMessagesIndexed:(id)indexed messageBodiesIndexed:(id)bodiesIndexed indexableMessages:(id)messages percentUnindexedBodiesInFrecent:(id)frecent attachmentsIndexed:(id)attachmentsIndexed indexableAttachments:(id)attachments
{
  indexedCopy = indexed;
  bodiesIndexedCopy = bodiesIndexed;
  messagesCopy = messages;
  frecentCopy = frecent;
  attachmentsIndexedCopy = attachmentsIndexed;
  attachmentsCopy = attachments;
  [messagesCopy doubleValue];
  v19 = v18;
  if (v18 <= 0.0)
  {
    v22 = -1;
    v25 = -1;
  }

  else
  {
    v20 = MEMORY[0x277D07198];
    [indexedCopy doubleValue];
    v22 = [v20 bucketedNumber:(v21 / v19 * 100.0) leadingDigits:2];
    v23 = MEMORY[0x277D07198];
    [bodiesIndexedCopy doubleValue];
    v25 = [v23 bucketedNumber:(v24 / v19 * 100.0) leadingDigits:2];
  }

  [attachmentsCopy doubleValue];
  v27 = v26;
  if (v26 <= 0.0)
  {
    v30 = -1;
  }

  else
  {
    v28 = MEMORY[0x277D07198];
    [attachmentsIndexedCopy doubleValue];
    v30 = [v28 bucketedNumber:(v29 / v27 * 100.0) leadingDigits:2];
  }

  v31 = [MEMORY[0x277D07198] roundedInteger:objc_msgSend(messagesCopy placeValueDigits:{"integerValue"), 2}];
  v32 = [[self alloc] initWithPercentMessagesIndexed:v22 percentMessageBodiesIndexed:v25 percentUnindexedBodiesInFrecent:objc_msgSend(frecentCopy percentAttachmentsIndexed:"integerValue") totalMessageCount:v30 indexedMessageCount:v31 indexType:{objc_msgSend(MEMORY[0x277D07198], "roundedInteger:placeValueDigits:", objc_msgSend(indexedCopy, "integerValue"), 2), 0}];

  return v32;
}

- (MSParsecSearchIndexState)initWithPercentMessagesIndexed:(int64_t)indexed percentMessageBodiesIndexed:(int64_t)bodiesIndexed percentUnindexedBodiesInFrecent:(int64_t)frecent percentAttachmentsIndexed:(int64_t)attachmentsIndexed totalMessageCount:(int64_t)count indexedMessageCount:(int64_t)messageCount indexType:(int64_t)type
{
  v16.receiver = self;
  v16.super_class = MSParsecSearchIndexState;
  result = [(MSParsecSearchIndexState *)&v16 init];
  if (result)
  {
    result->_percentMessageBodiesIndexed = bodiesIndexed;
    result->_percentUnindexedBodiesInFrecent = frecent;
    result->_percentAttachmentsIndexed = attachmentsIndexed;
    result->_totalMessageCount = count;
    result->_indexedMessageCount = messageCount;
    result->_indexType = type;
    result->_percentMessagesIndexed = indexed;
  }

  return result;
}

@end