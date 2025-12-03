@interface UIViewController(DOCExtensions)
- (uint64_t)doc_hasAppearedOrIsAppearing;
- (uint64_t)doc_hasDisappearedOrIsDisappearing;
@end

@implementation UIViewController(DOCExtensions)

- (uint64_t)doc_hasAppearedOrIsAppearing
{
  if ([self doc_hasAppeared])
  {
    return 1;
  }

  return [self doc_isAppearing];
}

- (uint64_t)doc_hasDisappearedOrIsDisappearing
{
  if ([self doc_hasDisappeared])
  {
    return 1;
  }

  return [self doc_isDisappearing];
}

@end