@interface TransferPhotoFamilyViewModel
- (void)encodeWithCoder:(id)coder;
@end

@implementation TransferPhotoFamilyViewModel

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  TransferPhotoFamilyViewModel.encode(with:)(coderCopy);
}

@end