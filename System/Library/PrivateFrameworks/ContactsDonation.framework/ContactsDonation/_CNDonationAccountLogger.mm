@interface _CNDonationAccountLogger
- (_CNDonationAccountLogger)init;
- (void)accountAdded:(id)added;
- (void)accountChanged:(id)changed;
- (void)accountRemoved:(id)removed;
- (void)accountsDidNotChange;
- (void)donationFailedWithError:(id)error;
- (void)pluginLoaded;
- (void)pluginUnloaded;
- (void)removalFailedWithError:(id)error;
- (void)removing:(id)removing;
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
  log_t = [(_CNDonationAccountLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Plugin loaded", v3, 2u);
  }
}

- (void)pluginUnloaded
{
  log_t = [(_CNDonationAccountLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Plugin unloaded", v3, 2u);
  }
}

- (void)accountAdded:(id)added
{
  v10 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  log_t = [(_CNDonationAccountLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [addedCopy identifier];
    v8 = 138543362;
    v9 = identifier;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Account added: %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)accountChanged:(id)changed
{
  v10 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  log_t = [(_CNDonationAccountLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [changedCopy identifier];
    v8 = 138543362;
    v9 = identifier;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Account changed: %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)accountRemoved:(id)removed
{
  v10 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  log_t = [(_CNDonationAccountLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [removedCopy identifier];
    v8 = 138543362;
    v9 = identifier;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Account removed: %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removing:(id)removing
{
  v9 = *MEMORY[0x277D85DE8];
  removingCopy = removing;
  log_t = [(_CNDonationAccountLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = removingCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Removing donation with identifier: %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)donationFailedWithError:(id)error
{
  errorCopy = error;
  log_t = [(_CNDonationAccountLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [(_CNDonationAccountLogger *)errorCopy donationFailedWithError:log_t];
  }
}

- (void)removalFailedWithError:(id)error
{
  errorCopy = error;
  log_t = [(_CNDonationAccountLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [(_CNDonationAccountLogger *)errorCopy removalFailedWithError:log_t];
  }
}

- (void)accountsDidNotChange
{
  log_t = [(_CNDonationAccountLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Ignoring account changes (no relevant changes)", v3, 2u);
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