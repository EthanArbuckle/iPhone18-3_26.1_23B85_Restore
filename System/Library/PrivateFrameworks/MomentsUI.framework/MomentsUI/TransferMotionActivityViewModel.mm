@interface TransferMotionActivityViewModel
- (void)encodeWithCoder:(id)coder;
@end

@implementation TransferMotionActivityViewModel

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  TransferMotionActivityViewModel.encode(with:)(coderCopy);
}

@end