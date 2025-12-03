@interface MFCRAM_MD5AuthScheme
- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection;
@end

@implementation MFCRAM_MD5AuthScheme

- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection
{
  v5.receiver = self;
  v5.super_class = MFCRAM_MD5AuthScheme;
  return [(MFAuthScheme *)&v5 canAuthenticateAccountClass:class connection:connection];
}

@end