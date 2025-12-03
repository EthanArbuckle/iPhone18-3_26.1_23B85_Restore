@interface TransferMediaFirstPartyViewModel
- (void)encodeWithCoder:(id)coder;
@end

@implementation TransferMediaFirstPartyViewModel

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  TransferMediaFirstPartyViewModel.encode(with:)(coderCopy);
}

@end