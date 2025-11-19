@interface _NTKEFaceChoiceHighlightButton
- (_NTKEFaceChoiceHighlightButtonDelegate)delegate;
@end

@implementation _NTKEFaceChoiceHighlightButton

- (_NTKEFaceChoiceHighlightButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end