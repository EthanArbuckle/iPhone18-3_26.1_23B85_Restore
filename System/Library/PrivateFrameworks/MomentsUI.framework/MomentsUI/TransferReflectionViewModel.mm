@interface TransferReflectionViewModel
- (void)encodeWithCoder:(id)coder;
@end

@implementation TransferReflectionViewModel

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  TransferReflectionViewModel.encode(with:)(coderCopy);
}

@end