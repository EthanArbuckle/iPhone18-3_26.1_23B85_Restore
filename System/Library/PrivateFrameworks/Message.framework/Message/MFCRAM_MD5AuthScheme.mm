@interface MFCRAM_MD5AuthScheme
- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4;
@end

@implementation MFCRAM_MD5AuthScheme

- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4
{
  v5.receiver = self;
  v5.super_class = MFCRAM_MD5AuthScheme;
  return [(ECAuthenticationScheme *)&v5 canAuthenticateAccountClass:a3 connection:a4];
}

@end