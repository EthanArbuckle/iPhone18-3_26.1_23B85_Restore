@interface _CNDonationExtensionLogger
- (_CNDonationExtensionLogger)init;
- (void)couldNotLoadDonorExtensionForIdentifier:(id)a3 error:(id)a4;
- (void)couldNotRedonateValuesWithReason:(unint64_t)a3 error:(id)a4;
- (void)couldNotRenewDonation:(id)a3 error:(id)a4;
- (void)didExpireDonation:(id)a3 withError:(id)a4;
- (void)didRedonateValuesWithReason:(unint64_t)a3;
- (void)didRenewDonation:(id)a3 untilDate:(id)a4;
- (void)loadedDonorExtension:(id)a3 forIdentifier:(id)a4;
- (void)willRedonateValuesWithReason:(unint64_t)a3;
- (void)willRenewDonation:(id)a3;
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

- (void)loadedDonorExtension:(id)a3 forIdentifier:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_2258E5000, v8, OS_LOG_TYPE_DEFAULT, "Loaded extension for donor '%{public}@': %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)couldNotLoadDonorExtensionForIdentifier:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(_CNDonationExtensionLogger *)v6 couldNotLoadDonorExtensionForIdentifier:v7 error:v8];
  }
}

- (void)willRenewDonation:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_2258E5000, v5, OS_LOG_TYPE_DEFAULT, "Will renew donation %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didRenewDonation:(id)a3 untilDate:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_2258E5000, v8, OS_LOG_TYPE_DEFAULT, "Donation %{public}@ renewed until %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didExpireDonation:(id)a3 withError:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_2258E5000, v8, OS_LOG_TYPE_DEFAULT, "Will not renew donation %{public}@: %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)couldNotRenewDonation:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationExtensionLogger couldNotRenewDonation:error:];
  }
}

- (void)willRedonateValuesWithReason:(unint64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2258E5000, v4, OS_LOG_TYPE_DEFAULT, "Will redonate values (reason %{public}@)", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didRedonateValuesWithReason:(unint64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2258E5000, v4, OS_LOG_TYPE_DEFAULT, "Did redonate values (reason %{public}@)", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)couldNotRedonateValuesWithReason:(unint64_t)a3 error:(id)a4
{
  v6 = a4;
  v7 = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(_CNDonationExtensionLogger *)a3 couldNotRedonateValuesWithReason:v6 error:v7];
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