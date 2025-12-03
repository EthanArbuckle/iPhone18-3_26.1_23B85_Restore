@interface TransferPosterViewModel
- (void)encodeWithCoder:(id)coder;
@end

@implementation TransferPosterViewModel

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  TransferPosterViewModel.encode(with:)(coderCopy);
}

@end