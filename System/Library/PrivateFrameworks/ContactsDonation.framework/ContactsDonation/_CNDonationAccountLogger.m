@interface _CNDonationAccountLogger
- (_CNDonationAccountLogger)init;
- (void)accountAdded:(id)a3;
- (void)accountChanged:(id)a3;
- (void)accountRemoved:(id)a3;
- (void)accountsDidNotChange;
- (void)donationFailedWithError:(id)a3;
- (void)pluginLoaded;
- (void)pluginUnloaded;
- (void)removalFailedWithError:(id)a3;
- (void)removing:(id)a3;
@end

@implementation _CNDonationAccountLogger

- (_CNDonationAccountLogger)init
{
  v9.receiver = self;
  v9.super_class = _CNDonationAccountLogger;
  v2 = [(_CNDonationAccountLogger *)&v9 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.contacts.donation", "accounts");
    log_t = v2->_log_t;
    v2->_log_t = v3;

    v5 = [[_CNDonationValueLogger alloc] initWithLog:v2->_log_t];
    valueLogger = v2->_valueLogger;
    v2->_valueLogger = v5;

    v7 = v2;
  }

  return v2;
}

- (void)pluginLoaded
{
  v2 = [(_CNDonationAccountLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "Plugin loaded", v3, 2u);
  }
}

- (void)pluginUnloaded
{
  v2 = [(_CNDonationAccountLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "Plugin unloaded", v3, 2u);
  }
}

- (void)accountAdded:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_CNDonationAccountLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2258E5000, v5, OS_LOG_TYPE_DEFAULT, "Account added: %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)accountChanged:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_CNDonationAccountLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2258E5000, v5, OS_LOG_TYPE_DEFAULT, "Account changed: %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)accountRemoved:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_CNDonationAccountLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2258E5000, v5, OS_LOG_TYPE_DEFAULT, "Account removed: %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removing:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_CNDonationAccountLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_2258E5000, v5, OS_LOG_TYPE_DEFAULT, "Removing donation with identifier: %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)donationFailedWithError:(id)a3
{
  v4 = a3;
  v5 = [(_CNDonationAccountLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(_CNDonationAccountLogger *)v4 donationFailedWithError:v5];
  }
}

- (void)removalFailedWithError:(id)a3
{
  v4 = a3;
  v5 = [(_CNDonationAccountLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(_CNDonationAccountLogger *)v4 removalFailedWithError:v5];
  }
}

- (void)accountsDidNotChange
{
  v2 = [(_CNDonationAccountLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_INFO, "Ignoring account changes (no relevant changes)", v3, 2u);
  }
}

- (void)donationFailedWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_2258E5000, a2, OS_LOG_TYPE_ERROR, "Could not donate contact information: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)removalFailedWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_2258E5000, a2, OS_LOG_TYPE_ERROR, "Could not remove donated values: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end