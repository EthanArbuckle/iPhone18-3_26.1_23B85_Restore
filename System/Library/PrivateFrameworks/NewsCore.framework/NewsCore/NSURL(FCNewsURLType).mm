@interface NSURL(FCNewsURLType)
- (uint64_t)fc_newsURLType;
@end

@implementation NSURL(FCNewsURLType)

- (uint64_t)fc_newsURLType
{
  if ([self fc_isNewsTagURL])
  {
    return 3;
  }

  if ([self fc_isNewsArticleURL])
  {
    return 1;
  }

  if ([self fc_isNewsIssueURL])
  {
    return 2;
  }

  if ([self fc_isNewsPuzzleURL])
  {
    return 5;
  }

  if ([self fc_isNewsPuzzleTypeURL])
  {
    return 6;
  }

  if ([self fc_isNewsSportsEventURL])
  {
    return 4;
  }

  return 0;
}

@end