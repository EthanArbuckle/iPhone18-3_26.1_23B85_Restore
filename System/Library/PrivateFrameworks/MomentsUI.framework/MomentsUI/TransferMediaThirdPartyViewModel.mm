@interface TransferMediaThirdPartyViewModel
- (void)encodeWithCoder:(id)coder;
@end

@implementation TransferMediaThirdPartyViewModel

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  TransferMediaThirdPartyViewModel.encode(with:)(coderCopy);
}

@end