@interface _CNDonationExtensionLogger
- (_CNDonationExtensionLogger)init;
- (void)couldNotLoadDonorExtensionForIdentifier:(id)identifier error:(id)error;
- (void)couldNotRedonateValuesWithReason:(unint64_t)reason error:(id)error;
- (void)couldNotRenewDonation:(id)donation error:(id)error;
- (void)didExpireDonation:(id)donation withError:(id)error;
- (void)didRedonateValuesWithReason:(unint64_t)reason;
- (void)didRenewDonation:(id)donation untilDate:(id)date;
- (void)loadedDonorExtension:(id)extension forIdentifier:(id)identifier;
- (void)willRedonateValuesWithReason:(unint64_t)reason;
- (void)willRenewDonation:(id)donation;
@end

@implementation _CNDonationExtensionLogger

- (_CNDonationExtensionLogger)init
{
  v7.receiver = self;
  v7.super_class = _CNDonationExtensionLogger;
  v2 = [(_CNDonationExtensionLogger *)&v7 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.contacts.donation", "extensions");
    log_t = v2->_log_t;
    v2->_log_t = v3;

    v5 = v2;
  }

  return v2;
}

- (void)loadedDonorExtension:(id)extension forIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  identifierCopy = identifier;
  log_t = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = identifierCopy;
    v12 = 2114;
    v13 = extensionCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Loaded extension for donor '%{public}@': %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)couldNotLoadDonorExtensionForIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  log_t = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [(_CNDonationExtensionLogger *)identifierCopy couldNotLoadDonorExtensionForIdentifier:errorCopy error:log_t];
  }
}

- (void)willRenewDonation:(id)donation
{
  v9 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  log_t = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = donationCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Will renew donation %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didRenewDonation:(id)donation untilDate:(id)date
{
  v14 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  dateCopy = date;
  log_t = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = donationCopy;
    v12 = 2114;
    v13 = dateCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Donation %{public}@ renewed until %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didExpireDonation:(id)donation withError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  errorCopy = error;
  log_t = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = donationCopy;
    v12 = 2114;
    v13 = errorCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Will not renew donation %{public}@: %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)couldNotRenewDonation:(id)donation error:(id)error
{
  donationCopy = donation;
  errorCopy = error;
  log_t = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationExtensionLogger couldNotRenewDonation:error:];
  }
}

- (void)willRedonateValuesWithReason:(unint64_t)reason
{
  v9 = *MEMORY[0x277D85DE8];
  log_t = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Will redonate values (reason %{public}@)", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didRedonateValuesWithReason:(unint64_t)reason
{
  v9 = *MEMORY[0x277D85DE8];
  log_t = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Did redonate values (reason %{public}@)", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)couldNotRedonateValuesWithReason:(unint64_t)reason error:(id)error
{
  errorCopy = error;
  log_t = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [(_CNDonationExtensionLogger *)reason couldNotRedonateValuesWithReason:errorCopy error:log_t];
  }
}

- (void)couldNotLoadDonorExtensionForIdentifier:(NSObject *)a3 error:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_2(&dword_2258E5000, a2, a3, "Could not load extension for donor '%{public}@' : %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)couldNotRenewDonation:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_2258E5000, v0, v1, "Could not renew donation %{public}@: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)couldNotRedonateValuesWithReason:(NSObject *)a3 error:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_0_0();
  v8 = a2;
  _os_log_error_impl(&dword_2258E5000, a3, OS_LOG_TYPE_ERROR, "Could not redonate values (reason %{public}@): %{public}@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end