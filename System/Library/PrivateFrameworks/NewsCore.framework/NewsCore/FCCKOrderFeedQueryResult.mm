@interface FCCKOrderFeedQueryResult
- (id)initWithFeedItemAndArticleRecords:(void *)records feedResponses:(void *)responses tagRecords:(void *)tagRecords issueRecords:(void *)issueRecords networkEvents:;
@end

@implementation FCCKOrderFeedQueryResult

- (id)initWithFeedItemAndArticleRecords:(void *)records feedResponses:(void *)responses tagRecords:(void *)tagRecords issueRecords:(void *)issueRecords networkEvents:
{
  v18 = a2;
  recordsCopy = records;
  responsesCopy = responses;
  tagRecordsCopy = tagRecords;
  issueRecordsCopy = issueRecords;
  if (self)
  {
    v19.receiver = self;
    v19.super_class = FCCKOrderFeedQueryResult;
    v16 = objc_msgSendSuper2(&v19, sel_init);
    self = v16;
    if (v16)
    {
      objc_storeStrong(v16 + 1, a2);
      objc_storeStrong(self + 2, records);
      objc_storeStrong(self + 3, responses);
      objc_storeStrong(self + 4, tagRecords);
      objc_storeStrong(self + 5, issueRecords);
    }
  }

  return self;
}

@end