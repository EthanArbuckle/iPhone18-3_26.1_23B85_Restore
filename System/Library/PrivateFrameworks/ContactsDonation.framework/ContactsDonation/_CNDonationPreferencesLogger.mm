@interface _CNDonationPreferencesLogger
- (_CNDonationPreferencesLogger)init;
- (void)isDonationsEnabled:(BOOL)enabled;
- (void)setDonationsEnabled:(BOOL)enabled;
@end

@implementation _CNDonationPreferencesLogger

- (_CNDonationPreferencesLogger)init
{
  v7.receiver = self;
  v7.super_class = _CNDonationPreferencesLogger;
  v2 = [(_CNDonationPreferencesLogger *)&v7 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.contacts.donation", "preferences");
    log_t = v2->_log_t;
    v2->_log_t = v3;

    v5 = v2;
  }

  return v2;
}

- (void)isDonationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7 = *MEMORY[0x277D85DE8];
  log_t = [(_CNDonationPreferencesLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = enabledCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "-isDonationsEnabled: %d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setDonationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7 = *MEMORY[0x277D85DE8];
  log_t = [(_CNDonationPreferencesLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = enabledCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "-setDonationsEnabled: %d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end