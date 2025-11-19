@interface MFMimePart(SMIMESupport)
- (BOOL)isSigned;
- (uint64_t)isEncrypted;
@end

@implementation MFMimePart(SMIMESupport)

- (BOOL)isSigned
{
  v2 = [a1 _objectInOtherIvarsForKey:@"x-is-signed"];
  if ([v2 BOOLValue])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 _objectInOtherIvarsForKey:@"x-apple-smime-signers"];
    v3 = v4 != 0;
  }

  return v3;
}

- (uint64_t)isEncrypted
{
  v1 = [a1 _objectInOtherIvarsForKey:@"x-is-encrypted"];
  v2 = [v1 BOOLValue];

  return v2;
}

@end