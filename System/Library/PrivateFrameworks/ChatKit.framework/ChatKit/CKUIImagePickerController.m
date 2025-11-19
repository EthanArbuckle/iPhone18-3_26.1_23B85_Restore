@interface CKUIImagePickerController
- (BOOL)preserveModalPresentationStyle;
@end

@implementation CKUIImagePickerController

- (BOOL)preserveModalPresentationStyle
{
  result = [(CKUIImagePickerController *)self sourceType]== 1;
  self->_preserveModalPresentationStyle = result;
  return result;
}

@end