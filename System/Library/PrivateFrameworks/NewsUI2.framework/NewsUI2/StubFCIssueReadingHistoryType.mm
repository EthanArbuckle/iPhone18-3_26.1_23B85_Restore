@interface StubFCIssueReadingHistoryType
- (id)recentlyVisitedIssueIDs;
- (void)prepareForUseWithCompletion:(id)completion;
@end

@implementation StubFCIssueReadingHistoryType

- (id)recentlyVisitedIssueIDs
{
  v0 = sub_219BF5904();

  return v0;
}

- (void)prepareForUseWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v3[2]();

  _Block_release(v3);
}

@end