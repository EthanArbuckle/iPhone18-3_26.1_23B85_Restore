@interface StubFCIssueReadingHistoryType
- (id)recentlyVisitedIssueIDs;
- (void)prepareForUseWithCompletion:(id)a3;
@end

@implementation StubFCIssueReadingHistoryType

- (id)recentlyVisitedIssueIDs
{
  v0 = sub_219BF5904();

  return v0;
}

- (void)prepareForUseWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  v3[2]();

  _Block_release(v3);
}

@end