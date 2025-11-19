@interface UIViewController(DOCExtensions)
- (uint64_t)doc_hasAppearedOrIsAppearing;
- (uint64_t)doc_hasDisappearedOrIsDisappearing;
@end

@implementation UIViewController(DOCExtensions)

- (uint64_t)doc_hasAppearedOrIsAppearing
{
  if ([a1 doc_hasAppeared])
  {
    return 1;
  }

  return [a1 doc_isAppearing];
}

- (uint64_t)doc_hasDisappearedOrIsDisappearing
{
  if ([a1 doc_hasDisappeared])
  {
    return 1;
  }

  return [a1 doc_isDisappearing];
}

@end