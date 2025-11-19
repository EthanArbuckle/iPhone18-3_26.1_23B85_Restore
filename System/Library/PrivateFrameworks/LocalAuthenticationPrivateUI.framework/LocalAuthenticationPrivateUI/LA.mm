@interface LA
@end

@implementation LA

void __LA_LOG_LAUIAuthenticationView_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "LAUIAuthenticationView");
  v1 = LA_LOG_LAUIAuthenticationView_log;
  LA_LOG_LAUIAuthenticationView_log = v0;
}

void __LA_LOG_LAUIPKGlyphWrapper_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "LAUIPKGlyphWrapper");
  v1 = LA_LOG_LAUIPKGlyphWrapper_log;
  LA_LOG_LAUIPKGlyphWrapper_log = v0;
}

void __LA_LOG_LAUIAuthenticationCore_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "LAUIAuthenticationCore");
  v1 = LA_LOG_LAUIAuthenticationCore_log;
  LA_LOG_LAUIAuthenticationCore_log = v0;
}

@end