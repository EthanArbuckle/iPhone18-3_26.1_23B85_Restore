@interface _CNDonationManagedDuplicatesLogger
- (_CNDonationManagedDuplicatesLogger)init;
- (void)didFailRefreshingDuplicates:(id)a3;
- (void)didRefreshDuplicates;
- (void)didSkipRefreshDuplicates:(id)a3;
- (void)managedDuplicateServiceCheckingIn;
- (void)managedDuplicateServiceCriteria:(id)a3;
- (void)willRefreshDuplicates;
@end

@implementation _CNDonationManagedDuplicatesLogger

- (_CNDonationManagedDuplicatesLogger)init
{
  v7.receiver = self;
  v7.super_class = _CNDonationManagedDuplicatesLogger;
  v2 = [(_CNDonationManagedDuplicatesLogger *)&v7 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.contacts.donation", "deduplication");
    log_t = v2->_log_t;
    v2->_log_t = v3;

    v5 = v2;
  }

  return v2;
}

- (void)managedDuplicateServiceCheckingIn
{
  v2 = [(_CNDonationManagedDuplicatesLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "managed duplicate service checking in", v3, 2u);
  }
}

- (void)managedDuplicateServiceCriteria:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_CNDonationManagedDuplicatesLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_2258E5000, v5, OS_LOG_TYPE_DEFAULT, "managed duplicate service has criteria %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)willRefreshDuplicates
{
  v2 = [(_CNDonationManagedDuplicatesLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "Will refresh duplicates", v3, 2u);
  }
}

- (void)didRefreshDuplicates
{
  v2 = [(_CNDonationManagedDuplicatesLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "Did refresh duplicates", v3, 2u);
  }
}

- (void)didSkipRefreshDuplicates:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_CNDonationManagedDuplicatesLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_2258E5000, v5, OS_LOG_TYPE_DEFAULT, "Skipping refresh of duplicates due to recent failure. Previous refresh attempted at %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didFailRefreshingDuplicates:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_CNDonationManagedDuplicatesLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_2258E5000, v5, OS_LOG_TYPE_DEFAULT, "Failed to refresh duplicates. %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end