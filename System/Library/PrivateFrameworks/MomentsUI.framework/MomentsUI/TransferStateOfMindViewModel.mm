@interface TransferStateOfMindViewModel
- (void)encodeWithCoder:(id)coder;
@end

@implementation TransferStateOfMindViewModel

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  TransferStateOfMindViewModel.encode(with:)(coderCopy);
}

@end