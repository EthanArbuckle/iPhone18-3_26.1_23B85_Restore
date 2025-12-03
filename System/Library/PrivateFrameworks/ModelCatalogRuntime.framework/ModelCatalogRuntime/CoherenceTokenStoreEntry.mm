@interface CoherenceTokenStoreEntry
- (void)encodeWithCoder:(id)coder;
@end

@implementation CoherenceTokenStoreEntry

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_22D8763C0();
}

@end