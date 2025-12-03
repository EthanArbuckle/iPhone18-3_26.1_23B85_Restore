@interface MFDigestMD5AuthScheme
- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection;
@end

@implementation MFDigestMD5AuthScheme

- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection
{
  v5.receiver = self;
  v5.super_class = MFDigestMD5AuthScheme;
  return [(ECAuthenticationScheme *)&v5 canAuthenticateAccountClass:class connection:connection];
}

@end