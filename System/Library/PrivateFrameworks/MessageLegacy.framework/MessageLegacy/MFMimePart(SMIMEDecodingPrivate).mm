@interface MFMimePart(SMIMEDecodingPrivate)
- (BOOL)_needsSignatureVerification:()SMIMEDecodingPrivate;
@end

@implementation MFMimePart(SMIMEDecodingPrivate)

- (BOOL)_needsSignatureVerification:()SMIMEDecodingPrivate
{
  v5 = *MEMORY[0x277D25040];
  v6 = [*(self + v5) objectForKey:@"x-apple-smime-error"];
  *a3 = v6;
  return !v6 && [*(self + v5) objectForKey:@"x-apple-smime-signers"] == 0;
}

@end