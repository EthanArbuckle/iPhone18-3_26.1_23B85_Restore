@interface MSParsecSearchIndexState
+ (id)indexStateForMessagesIndexed:(id)a3 messageBodiesIndexed:(id)a4 indexableMessages:(id)a5 percentUnindexedBodiesInFrecent:(id)a6 attachmentsIndexed:(id)a7 indexableAttachments:(id)a8;
- (MSParsecSearchIndexState)initWithPercentMessagesIndexed:(int64_t)a3 percentMessageBodiesIndexed:(int64_t)a4 percentUnindexedBodiesInFrecent:(int64_t)a5 percentAttachmentsIndexed:(int64_t)a6 totalMessageCount:(int64_t)a7 indexedMessageCount:(int64_t)a8 indexType:(int64_t)a9;
@end

@implementation MSParsecSearchIndexState

+ (id)indexStateForMessagesIndexed:(id)a3 messageBodiesIndexed:(id)a4 indexableMessages:(id)a5 percentUnindexedBodiesInFrecent:(id)a6 attachmentsIndexed:(id)a7 indexableAttachments:(id)a8
{
  v14 = a3;
  v35 = a4;
  v15 = a5;
  v16 = a6;
  v34 = a7;
  v17 = a8;
  [v15 doubleValue];
  v19 = v18;
  if (v18 <= 0.0)
  {
    v22 = -1;
    v25 = -1;
  }

  else
  {
    v20 = MEMORY[0x277D07198];
    [v14 doubleValue];
    v22 = [v20 bucketedNumber:(v21 / v19 * 100.0) leadingDigits:2];
    v23 = MEMORY[0x277D07198];
    [v35 doubleValue];
    v25 = [v23 bucketedNumber:(v24 / v19 * 100.0) leadingDigits:2];
  }

  [v17 doubleValue];
  v27 = v26;
  if (v26 <= 0.0)
  {
    v30 = -1;
  }

  else
  {
    v28 = MEMORY[0x277D07198];
    [v34 doubleValue];
    v30 = [v28 bucketedNumber:(v29 / v27 * 100.0) leadingDigits:2];
  }

  v31 = [MEMORY[0x277D07198] roundedInteger:objc_msgSend(v15 placeValueDigits:{"integerValue"), 2}];
  v32 = [[a1 alloc] initWithPercentMessagesIndexed:v22 percentMessageBodiesIndexed:v25 percentUnindexedBodiesInFrecent:objc_msgSend(v16 percentAttachmentsIndexed:"integerValue") totalMessageCount:v30 indexedMessageCount:v31 indexType:{objc_msgSend(MEMORY[0x277D07198], "roundedInteger:placeValueDigits:", objc_msgSend(v14, "integerValue"), 2), 0}];

  return v32;
}

- (MSParsecSearchIndexState)initWithPercentMessagesIndexed:(int64_t)a3 percentMessageBodiesIndexed:(int64_t)a4 percentUnindexedBodiesInFrecent:(int64_t)a5 percentAttachmentsIndexed:(int64_t)a6 totalMessageCount:(int64_t)a7 indexedMessageCount:(int64_t)a8 indexType:(int64_t)a9
{
  v16.receiver = self;
  v16.super_class = MSParsecSearchIndexState;
  result = [(MSParsecSearchIndexState *)&v16 init];
  if (result)
  {
    result->_percentMessageBodiesIndexed = a4;
    result->_percentUnindexedBodiesInFrecent = a5;
    result->_percentAttachmentsIndexed = a6;
    result->_totalMessageCount = a7;
    result->_indexedMessageCount = a8;
    result->_indexType = a9;
    result->_percentMessagesIndexed = a3;
  }

  return result;
}

@end