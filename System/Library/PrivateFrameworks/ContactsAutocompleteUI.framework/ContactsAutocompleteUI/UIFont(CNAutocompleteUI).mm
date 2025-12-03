@interface UIFont(CNAutocompleteUI)
- (double)cn_caplinePointFromOriginPoint:()CNAutocompleteUI;
- (double)cn_originPointFromCaplinePoint:()CNAutocompleteUI;
- (double)cn_originPointFromMidlinePoint:()CNAutocompleteUI;
@end

@implementation UIFont(CNAutocompleteUI)

- (double)cn_originPointFromCaplinePoint:()CNAutocompleteUI
{
  [self pointSize];
  [self capHeight];
  return a2;
}

- (double)cn_caplinePointFromOriginPoint:()CNAutocompleteUI
{
  [self pointSize];
  [self capHeight];
  return a2;
}

- (double)cn_originPointFromMidlinePoint:()CNAutocompleteUI
{
  [self capHeight];
  [self pointSize];
  return a2;
}

@end