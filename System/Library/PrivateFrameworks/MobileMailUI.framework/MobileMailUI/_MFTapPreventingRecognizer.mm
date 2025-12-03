@interface _MFTapPreventingRecognizer
- (BOOL)_isMatchingTapGestureRecognizer:(id)recognizer;
@end

@implementation _MFTapPreventingRecognizer

- (BOOL)_isMatchingTapGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    numberOfTapsRequired = [recognizerCopy numberOfTapsRequired];
    v6 = numberOfTapsRequired == [(_MFTapPreventingRecognizer *)self numberOfTapsRequired];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end