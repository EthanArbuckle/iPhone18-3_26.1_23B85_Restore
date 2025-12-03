@interface MFMimePart(SMIMESupport)
- (id)SMIMEError;
- (uint64_t)copySigners;
@end

@implementation MFMimePart(SMIMESupport)

- (id)SMIMEError
{
  v1 = [*(self + *MEMORY[0x277D25040]) objectForKey:@"x-apple-smime-error"];

  return v1;
}

- (uint64_t)copySigners
{
  v1 = [*(self + *MEMORY[0x277D25040]) objectForKey:@"x-apple-smime-signers"];

  return [v1 copy];
}

@end