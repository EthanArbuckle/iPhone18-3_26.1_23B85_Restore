@interface CDPDLocalDeviceSecretProxyImpl
- (BOOL)hasLocalSecret;
- (void)hasLocalSecret;
@end

@implementation CDPDLocalDeviceSecretProxyImpl

- (BOOL)hasLocalSecret
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isPasscodeSet];
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(CDPDLocalDeviceSecretProxyImpl *)v2 hasLocalSecret];
  }

  return v3;
}

- (void)hasLocalSecret
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 1024;
  v7 = a2 & 1;
  _os_log_debug_impl(&dword_24510B000, log, OS_LOG_TYPE_DEBUG, "Managed config (%@) reports isPasscodeSet=%i", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end