@interface _MFTapPreventingRecognizer
- (BOOL)_isMatchingTapGestureRecognizer:(id)a3;
@end

@implementation _MFTapPreventingRecognizer

- (BOOL)_isMatchingTapGestureRecognizer:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 numberOfTapsRequired];
    v6 = v5 == [(_MFTapPreventingRecognizer *)self numberOfTapsRequired];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end