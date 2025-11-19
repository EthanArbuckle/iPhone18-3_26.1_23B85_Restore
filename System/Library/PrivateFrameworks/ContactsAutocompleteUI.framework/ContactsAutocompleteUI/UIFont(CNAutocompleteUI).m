@interface UIFont(CNAutocompleteUI)
- (double)cn_caplinePointFromOriginPoint:()CNAutocompleteUI;
- (double)cn_originPointFromCaplinePoint:()CNAutocompleteUI;
- (double)cn_originPointFromMidlinePoint:()CNAutocompleteUI;
@end

@implementation UIFont(CNAutocompleteUI)

- (double)cn_originPointFromCaplinePoint:()CNAutocompleteUI
{
  [a1 pointSize];
  [a1 capHeight];
  return a2;
}

- (double)cn_caplinePointFromOriginPoint:()CNAutocompleteUI
{
  [a1 pointSize];
  [a1 capHeight];
  return a2;
}

- (double)cn_originPointFromMidlinePoint:()CNAutocompleteUI
{
  [a1 capHeight];
  [a1 pointSize];
  return a2;
}

@end