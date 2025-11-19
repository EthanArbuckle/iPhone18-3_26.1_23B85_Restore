@interface MFDigestMD5AuthScheme
- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4;
@end

@implementation MFDigestMD5AuthScheme

- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4
{
  v5.receiver = self;
  v5.super_class = MFDigestMD5AuthScheme;
  return [(ECAuthenticationScheme *)&v5 canAuthenticateAccountClass:a3 connection:a4];
}

@end