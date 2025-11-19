@interface FCCKOrderFeedQueryResult
- (id)initWithFeedItemAndArticleRecords:(void *)a3 feedResponses:(void *)a4 tagRecords:(void *)a5 issueRecords:(void *)a6 networkEvents:;
@end

@implementation FCCKOrderFeedQueryResult

- (id)initWithFeedItemAndArticleRecords:(void *)a3 feedResponses:(void *)a4 tagRecords:(void *)a5 issueRecords:(void *)a6 networkEvents:
{
  v18 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = FCCKOrderFeedQueryResult;
    v16 = objc_msgSendSuper2(&v19, sel_init);
    a1 = v16;
    if (v16)
    {
      objc_storeStrong(v16 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
      objc_storeStrong(a1 + 4, a5);
      objc_storeStrong(a1 + 5, a6);
    }
  }

  return a1;
}

@end