@interface HKURLSessionCertVerificationDelegate
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
@end

@implementation HKURLSessionCertVerificationDelegate

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 protectionSpace];
  v10 = [v9 serverTrust];

  if (!v10)
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      [HKURLSessionCertVerificationDelegate URLSession:v16 didReceiveChallenge:? completionHandler:?];
    }

    goto LABEL_10;
  }

  v11 = [v7 protectionSpace];
  v12 = HKAcceptAuthenticationChallengeWithTrust([v11 serverTrust]);

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC2C0];
  v14 = *MEMORY[0x277CCC2C0];
  if (!v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [HKURLSessionCertVerificationDelegate URLSession:v13 didReceiveChallenge:? completionHandler:?];
    }

LABEL_10:
    v15 = 2;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [HKURLSessionCertVerificationDelegate URLSession:v13 didReceiveChallenge:? completionHandler:?];
  }

  v15 = 1;
LABEL_11:
  v8[2](v8, v15, 0);
}

- (void)URLSession:(uint64_t)a1 didReceiveChallenge:(NSObject *)a2 completionHandler:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_2519FE000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: SecTrustStore verification passed for root cert from FHIR API", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(uint64_t)a1 didReceiveChallenge:(NSObject *)a2 completionHandler:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_2519FE000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Failed authentication challenge for serverTrust!", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(uint64_t)a1 didReceiveChallenge:(NSObject *)a2 completionHandler:.cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_2519FE000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Could not retrieve serverTrust from FHIR API connection", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end