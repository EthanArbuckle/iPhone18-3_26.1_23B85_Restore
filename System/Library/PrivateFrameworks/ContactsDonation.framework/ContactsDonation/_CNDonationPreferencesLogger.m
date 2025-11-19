@interface _CNDonationPreferencesLogger
- (_CNDonationPreferencesLogger)init;
- (void)isDonationsEnabled:(BOOL)a3;
- (void)setDonationsEnabled:(BOOL)a3;
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

- (void)isDonationsEnabled:(BOOL)a3
{
  v3 = a3;
  v7 = *MEMORY[0x277D85DE8];
  v4 = [(_CNDonationPreferencesLogger *)self log_t];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_2258E5000, v4, OS_LOG_TYPE_INFO, "-isDonationsEnabled: %d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setDonationsEnabled:(BOOL)a3
{
  v3 = a3;
  v7 = *MEMORY[0x277D85DE8];
  v4 = [(_CNDonationPreferencesLogger *)self log_t];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_2258E5000, v4, OS_LOG_TYPE_INFO, "-setDonationsEnabled: %d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end