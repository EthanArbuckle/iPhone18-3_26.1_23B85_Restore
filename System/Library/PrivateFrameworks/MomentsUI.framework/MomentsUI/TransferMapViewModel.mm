@interface TransferMapViewModel
- (void)encodeWithCoder:(id)coder;
@end

@implementation TransferMapViewModel

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  TransferMapViewModel.encode(with:)(coderCopy);
}

@end