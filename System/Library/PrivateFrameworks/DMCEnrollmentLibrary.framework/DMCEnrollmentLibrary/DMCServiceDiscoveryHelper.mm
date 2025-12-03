@interface DMCServiceDiscoveryHelper
- (id)_defaultServiceDiscoveryQueryItemsWithUserIdentifier:(id)identifier;
- (id)_fallbackServer;
- (void)_checkForESSOWithMethod:(unint64_t)method authParams:(id)params httpResponse:(id)response completionHandler:(id)handler;
- (void)_discoverAppleServerWithUserIdentifier:(id)identifier anchorCertificateRefs:(id)refs completionHandler:(id)handler;
- (void)_discoverServerURLForDomain:(id)domain port:(id)port userIdentifier:(id)identifier anchorCertificateRefs:(id)refs completionHandler:(id)handler;
- (void)_discoverServerURLForUserIdentifier:(id)identifier anchorCertificateRefs:(id)refs completionHandler:(id)handler;
- (void)_fetchESSODictionaryFromURL:(id)l completionHandler:(id)handler;
- (void)_serversFromWellKnownURL:(id)l anchorCertificateRefs:(id)refs completionHandler:(id)handler;
- (void)determineEnrollmentMethodWithServiceURL:(id)l enrollmentType:(unint64_t)type machineInfo:(id)info anchorCertificateRefs:(id)refs completionHandler:(id)handler;
- (void)discoverEnrollmentMethodWithServiceURL:(id)l enrollmentType:(unint64_t)type machineInfo:(id)info anchorCertificateRefs:(id)refs completionHandler:(id)handler;
- (void)discoverServerForUserIdentifier:(id)identifier anchorCertificateRefs:(id)refs completionHandler:(id)handler;
- (void)fetchEnrollmentProfileWithServiceURL:(id)l authToken:(id)token machineInfo:(id)info anchorCertificateRefs:(id)refs completionHandler:(id)handler;
- (void)fetchEnrollmentProfileWithServiceURL:(id)l username:(id)username password:(id)password authTokens:(id)tokens enrollmentMethod:(unint64_t)method machineInfo:(id)info anchorCertificateRefs:(id)refs completionHandler:(id)self0;
@end

@implementation DMCServiceDiscoveryHelper

- (void)discoverServerForUserIdentifier:(id)identifier anchorCertificateRefs:(id)refs completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  refsCopy = refs;
  handlerCopy = handler;
  v11 = [identifierCopy componentsSeparatedByString:@"@"];
  if ([v11 count] == 2)
  {
    v12 = [v11 objectAtIndexedSubscript:1];
    if ([MEMORY[0x277D03500] shouldSimulateMDMAccountDrivenEnrollment])
    {
      v13 = *DMCLogObjects();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_DEFAULT, "Simulating service discovery.", buf, 2u);
      }

      v14 = MEMORY[0x277D03578];
      simulatedMDMEnrollmentMode = [MEMORY[0x277D03500] simulatedMDMEnrollmentMode];
      v16 = [v14 buildWithVersion:simulatedMDMEnrollmentMode baseURL:@"https://mdm.example.com/sign-in"];

      v32 = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
      handlerCopy[2](handlerCopy, v17, 3, 0);
    }

    else
    {
      v21 = [MEMORY[0x277D03500] serviceDiscoveryDomainWithValue:v12];

      v22 = MEMORY[0x277D03500];
      v23 = [MEMORY[0x277CCABB0] numberWithInteger:443];
      v24 = [v22 serviceDiscoveryDefaultPortWithValue:v23];
      integerValue = [v24 integerValue];

      v26 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __101__DMCServiceDiscoveryHelper_discoverServerForUserIdentifier_anchorCertificateRefs_completionHandler___block_invoke;
      v28[3] = &unk_278EE4268;
      v31 = handlerCopy;
      v28[4] = self;
      v29 = identifierCopy;
      v30 = refsCopy;
      [(DMCServiceDiscoveryHelper *)self _discoverServerURLForDomain:v21 port:v26 userIdentifier:v29 anchorCertificateRefs:v30 completionHandler:v28];

      v16 = v31;
      v12 = v21;
    }
  }

  else
  {
    v18 = *DMCLogObjects();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = identifierCopy;
      _os_log_impl(&dword_247E39000, v18, OS_LOG_TYPE_ERROR, "User identifier is wrong format for discovery: %{public}@", buf, 0xCu);
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277D032F0];
    v12 = DMCErrorArray();
    v16 = [v19 DMCErrorWithDomain:v20 code:15000 descriptionArray:v12 errorType:{*MEMORY[0x277D032F8], identifierCopy, 0}];
    (handlerCopy)[2](handlerCopy, 0, 0, v16);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __101__DMCServiceDiscoveryHelper_discoverServerForUserIdentifier_anchorCertificateRefs_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __101__DMCServiceDiscoveryHelper_discoverServerForUserIdentifier_anchorCertificateRefs_completionHandler___block_invoke_2;
    v13[3] = &unk_278EE4268;
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v12 = *(a1 + 32);
    v8 = *(&v12 + 1);
    *&v9 = *(a1 + 48);
    *(&v9 + 1) = v7;
    v14 = v12;
    v15 = v9;
    [v4 _discoverServerURLForUserIdentifier:v5 anchorCertificateRefs:v6 completionHandler:v13];
  }

  else
  {
    v10 = *(a1 + 56);
    v11 = *(*(a1 + 56) + 16);

    v11();
  }
}

void __101__DMCServiceDiscoveryHelper_discoverServerForUserIdentifier_anchorCertificateRefs_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __101__DMCServiceDiscoveryHelper_discoverServerForUserIdentifier_anchorCertificateRefs_completionHandler___block_invoke_3;
    v10[3] = &unk_278EE4240;
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v10[4] = *(a1 + 32);
    v11 = v7;
    [v4 _discoverAppleServerWithUserIdentifier:v5 anchorCertificateRefs:v6 completionHandler:v10];
  }

  else
  {
    v8 = *(a1 + 56);
    v9 = *(*(a1 + 56) + 16);

    v9();
  }
}

void __101__DMCServiceDiscoveryHelper_discoverServerForUserIdentifier_anchorCertificateRefs_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v4;
      _os_log_impl(&dword_247E39000, v5, OS_LOG_TYPE_ERROR, "Failed to discover apple well-known URL with error: %{public}@", buf, 0xCu);
    }

    v6 = [*(a1 + 32) _fallbackServer];
    v7 = v6;
    v8 = *(a1 + 40);
    if (v6)
    {
      v11 = v6;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
      (*(v8 + 16))(v8, v9, 3, 0);
    }

    else
    {
      (*(v8 + 16))(v8, 0, 2, v4);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)discoverEnrollmentMethodWithServiceURL:(id)l enrollmentType:(unint64_t)type machineInfo:(id)info anchorCertificateRefs:(id)refs completionHandler:(id)handler
{
  handlerCopy = handler;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __135__DMCServiceDiscoveryHelper_discoverEnrollmentMethodWithServiceURL_enrollmentType_machineInfo_anchorCertificateRefs_completionHandler___block_invoke;
  v14[3] = &unk_278EE4290;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(DMCServiceDiscoveryHelper *)self determineEnrollmentMethodWithServiceURL:l enrollmentType:type machineInfo:info anchorCertificateRefs:refs completionHandler:v14];
}

void __135__DMCServiceDiscoveryHelper_discoverEnrollmentMethodWithServiceURL_enrollmentType_machineInfo_anchorCertificateRefs_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v7 = [a3 objectForKeyedSubscript:@"url"];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
  }

  else
  {
    v8 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)determineEnrollmentMethodWithServiceURL:(id)l enrollmentType:(unint64_t)type machineInfo:(id)info anchorCertificateRefs:(id)refs completionHandler:(id)handler
{
  v35[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  infoCopy = info;
  refsCopy = refs;
  handlerCopy = handler;
  if ([MEMORY[0x277D03500] shouldSimulateMDMAccountDrivenEnrollment])
  {
    v16 = *DMCLogObjects();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v16, OS_LOG_TYPE_DEFAULT, "Simulating determination of enrollment method.", buf, 2u);
    }

    simulatedMDMAccountDrivenEnrollmentAuthMethod = [MEMORY[0x277D03500] simulatedMDMAccountDrivenEnrollmentAuthMethod];
    authenticationMethod = [MEMORY[0x277D24620] authenticationMethod];
    v19 = [simulatedMDMAccountDrivenEnrollmentAuthMethod isEqualToString:authenticationMethod];

    if (v19)
    {
      v20 = 2;
    }

    else
    {
      authenticationMethod2 = [MEMORY[0x277D24680] authenticationMethod];
      v23 = [simulatedMDMAccountDrivenEnrollmentAuthMethod isEqualToString:authenticationMethod2];

      if (v23)
      {
        v20 = 5;
      }

      else
      {
        authenticationMethod3 = [MEMORY[0x277D24670] authenticationMethod];
        v25 = [simulatedMDMAccountDrivenEnrollmentAuthMethod isEqualToString:authenticationMethod3];

        if (v25)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }
      }
    }

    v26 = *MEMORY[0x277D245D0];
    v34[0] = *MEMORY[0x277D245B8];
    v34[1] = v26;
    v35[0] = simulatedMDMAccountDrivenEnrollmentAuthMethod;
    v35[1] = @"https://mdm.example.com/auth";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    (*(handlerCopy + 2))(handlerCopy, v20, v21, 0, 0);
  }

  else
  {
    simulatedMDMAccountDrivenEnrollmentAuthMethod = [MEMORY[0x277CCAB70] requestWithURL:lCopy];
    [simulatedMDMAccountDrivenEnrollmentAuthMethod setAttribution:1];
    [simulatedMDMAccountDrivenEnrollmentAuthMethod setHTTPMethod:*MEMORY[0x277D033A0]];
    [simulatedMDMAccountDrivenEnrollmentAuthMethod setTimeoutInterval:*MEMORY[0x277D033B0]];
    [simulatedMDMAccountDrivenEnrollmentAuthMethod setValue:@"application/pkcs7-signature" forHTTPHeaderField:@"Content-Type"];
    [simulatedMDMAccountDrivenEnrollmentAuthMethod setHTTPBody:infoCopy];
    v21 = objc_opt_new();
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __136__DMCServiceDiscoveryHelper_determineEnrollmentMethodWithServiceURL_enrollmentType_machineInfo_anchorCertificateRefs_completionHandler___block_invoke;
    v28[3] = &unk_278EE42B8;
    v29 = lCopy;
    v31 = handlerCopy;
    typeCopy = type;
    selfCopy = self;
    [v21 startWithRequest:simulatedMDMAccountDrivenEnrollmentAuthMethod username:0 password:0 anchorCertificateRefs:refsCopy completionBlock:v28];
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __136__DMCServiceDiscoveryHelper_determineEnrollmentMethodWithServiceURL_enrollmentType_machineInfo_anchorCertificateRefs_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = v9;
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 138543618;
      v37 = v12;
      v38 = 2114;
      v39 = v10;
      _os_log_impl(&dword_247E39000, v11, OS_LOG_TYPE_ERROR, "Failed to discover enrollment method with service URL: %{public}@, error: %{public}@", buf, 0x16u);
    }

LABEL_14:
    v14 = *(*(a1 + 48) + 16);
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = *DMCLogObjects();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v8;
      _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_ERROR, "Response from the MDM server does not follow the HTTP protocol: %@", buf, 0xCu);
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D032F0];
    v18 = DMCErrorArray();
    v10 = [v16 DMCErrorWithDomain:v17 code:15003 descriptionArray:v18 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

    goto LABEL_14;
  }

  v10 = v8;
  if ([v10 statusCode] != 200 && objc_msgSend(v10, "statusCode") != 401)
  {
    v20 = *DMCLogObjects();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v13 = *(a1 + 56);
  if ((v13 - 1) > 2)
  {
LABEL_20:
    if ((v13 & 0xFFFFFFFFFFFFFFFELL) != 4 || [v10 statusCode] == 401)
    {
      v21 = MEMORY[0x277D24618];
      v22 = [v10 allHeaderFields];
      v23 = [v22 objectForKeyedSubscript:*MEMORY[0x277D03368]];
      v35 = 0;
      v24 = [v21 enrollmentMethodFromAuthenticateString:v23 outParams:&v35];
      v25 = v35;

      if (v24)
      {
        [*(a1 + 40) _checkForESSOWithMethod:v24 authParams:v25 httpResponse:v10 completionHandler:*(a1 + 48)];
      }

      else
      {
        v26 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277D032F0];
        v28 = DMCErrorArray();
        v29 = [v26 DMCErrorWithDomain:v27 code:15003 descriptionArray:v28 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

        (*(*(a1 + 48) + 16))();
      }

      goto LABEL_32;
    }

    v30 = *DMCLogObjects();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v37 = v10;
      _os_log_impl(&dword_247E39000, v30, OS_LOG_TYPE_ERROR, "Server's response is not 401 for the BYOD/ADDE enrollment. Response: %{public}@", buf, 0xCu);
    }

    v31 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277D032F0];
LABEL_31:
    v34 = DMCErrorArray();
    v25 = [v31 DMCErrorWithDomain:v32 code:15003 descriptionArray:v34 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

    (*(*(a1 + 48) + 16))();
LABEL_32:

    goto LABEL_16;
  }

  if ([v10 statusCode] != 200)
  {
    v13 = *(a1 + 56);
    goto LABEL_20;
  }

  if (![v7 length])
  {
    v20 = *DMCLogObjects();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
LABEL_29:
      v33 = *(a1 + 32);
      *buf = 138543618;
      v37 = v33;
      v38 = 2114;
      v39 = v10;
      _os_log_impl(&dword_247E39000, v20, OS_LOG_TYPE_ERROR, "Failed to discover enrollment method with service URL: %{public}@, response: %{public}@", buf, 0x16u);
    }

LABEL_30:
    v31 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277D032F0];
    goto LABEL_31;
  }

  v14 = *(*(a1 + 48) + 16);
LABEL_15:
  v14();
LABEL_16:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)fetchEnrollmentProfileWithServiceURL:(id)l authToken:(id)token machineInfo:(id)info anchorCertificateRefs:(id)refs completionHandler:(id)handler
{
  v21[1] = *MEMORY[0x277D85DE8];
  v20 = *MEMORY[0x277D245C8];
  v21[0] = token;
  v12 = MEMORY[0x277CBEAC0];
  handlerCopy = handler;
  refsCopy = refs;
  infoCopy = info;
  tokenCopy = token;
  lCopy = l;
  v18 = [v12 dictionaryWithObjects:v21 forKeys:&v20 count:1];

  [(DMCServiceDiscoveryHelper *)self fetchEnrollmentProfileWithServiceURL:lCopy authTokens:v18 enrollmentMethod:1 machineInfo:infoCopy anchorCertificateRefs:refsCopy completionHandler:handlerCopy];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)fetchEnrollmentProfileWithServiceURL:(id)l username:(id)username password:(id)password authTokens:(id)tokens enrollmentMethod:(unint64_t)method machineInfo:(id)info anchorCertificateRefs:(id)refs completionHandler:(id)self0
{
  lCopy = l;
  usernameCopy = username;
  passwordCopy = password;
  tokensCopy = tokens;
  infoCopy = info;
  refsCopy = refs;
  handlerCopy = handler;
  if (([MEMORY[0x277D03500] shouldSimulateMDMAccountDrivenEnrollment] & 1) == 0 && !objc_msgSend(MEMORY[0x277D03500], "shouldSimulateDEPCommunication"))
  {
    v25 = [MEMORY[0x277CCAB70] requestWithURL:lCopy];
    [v25 setAttribution:1];
    [v25 setHTTPMethod:*MEMORY[0x277D033A0]];
    [v25 setTimeoutInterval:*MEMORY[0x277D033B0]];
    [v25 setValue:@"application/pkcs7-signature" forHTTPHeaderField:@"Content-Type"];
    [v25 setHTTPBody:infoCopy];
    v26 = objc_opt_new();
    switch(method)
    {
      case 5uLL:
        v27 = 0x277D24680;
        break;
      case 2uLL:
        v27 = 0x277D24620;
        break;
      case 1uLL:
        v27 = 0x277D24670;
        break;
      default:
LABEL_13:
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __164__DMCServiceDiscoveryHelper_fetchEnrollmentProfileWithServiceURL_username_password_authTokens_enrollmentMethod_machineInfo_anchorCertificateRefs_completionHandler___block_invoke_2;
        v30[3] = &unk_278EE42E0;
        v31 = lCopy;
        v32 = handlerCopy;
        v29 = handlerCopy;
        [v26 startWithRequest:v25 username:usernameCopy password:passwordCopy anchorCertificateRefs:refsCopy completionBlock:v30];

        goto LABEL_14;
    }

    v28 = [objc_alloc(*v27) initWithTokens:tokensCopy];
    [v26 setAuthenticator:v28];

    goto LABEL_13;
  }

  v22 = *DMCLogObjects();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E39000, v22, OS_LOG_TYPE_DEFAULT, "Simulating enrollment profile.", buf, 2u);
  }

  v23 = dispatch_time(0, 1000000000);
  v24 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __164__DMCServiceDiscoveryHelper_fetchEnrollmentProfileWithServiceURL_username_password_authTokens_enrollmentMethod_machineInfo_anchorCertificateRefs_completionHandler___block_invoke;
  block[3] = &unk_278EE3A70;
  v34 = handlerCopy;
  v25 = handlerCopy;
  dispatch_after(v23, v24, block);

  v26 = v34;
LABEL_14:
}

void __164__DMCServiceDiscoveryHelper_fetchEnrollmentProfileWithServiceURL_username_password_authTokens_enrollmentMethod_machineInfo_anchorCertificateRefs_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D03500] simulatedMDMEnrollmentProfile];
  (*(v1 + 16))(v1, v2, 0);
}

void __164__DMCServiceDiscoveryHelper_fetchEnrollmentProfileWithServiceURL_username_password_authTokens_enrollmentMethod_machineInfo_anchorCertificateRefs_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *DMCLogObjects();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 134218242;
    v33 = [v7 length];
    v34 = 2114;
    v35 = v8;
    _os_log_impl(&dword_247E39000, v11, OS_LOG_TYPE_DEFAULT, "Fetch enrollment profile finished with data: %lu bytes, response: %{public}@", buf, 0x16u);
  }

  if (v9)
  {
    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      v33 = v13;
      v34 = 2114;
      v35 = v9;
      _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_ERROR, "Failed to fetch enrollment profile with service URL: %{public}@, error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = [v8 statusCode];
    if (v14 == 200)
    {
      v23 = [MEMORY[0x277D03500] enrollmentProfileWithDefaultValue:v7];

      if ([v23 length])
      {
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v25 = *DMCLogObjects();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v25, OS_LOG_TYPE_ERROR, "Empty profile!", buf, 2u);
        }

        v26 = *(a1 + 40);
        v27 = MEMORY[0x277CCA9B8];
        v28 = *MEMORY[0x277D032F0];
        v29 = DMCErrorArray();
        v30 = [v27 DMCErrorWithDomain:v28 code:15003 descriptionArray:v29 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];
        (*(v26 + 16))(v26, 0, v30);
      }

      v7 = v23;
    }

    else
    {
      v15 = *(a1 + 40);
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D032F0];
      if (v14 == 401)
      {
        v18 = DMCErrorArray();
        v19 = *MEMORY[0x277D032F8];
        v20 = v16;
        v21 = v17;
        v22 = 15009;
      }

      else
      {
        v18 = DMCErrorArray();
        v19 = *MEMORY[0x277D032F8];
        v20 = v16;
        v21 = v17;
        v22 = 15003;
      }

      v24 = [v20 DMCErrorWithDomain:v21 code:v22 descriptionArray:v18 underlyingError:0 errorType:{v19, 0}];
      (*(v15 + 16))(v15, 0, v24);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_discoverServerURLForDomain:(id)domain port:(id)port userIdentifier:(id)identifier anchorCertificateRefs:(id)refs completionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  portCopy = port;
  handlerCopy = handler;
  refsCopy = refs;
  identifierCopy = identifier;
  v17 = objc_opt_new();
  [v17 setScheme:@"https"];
  [v17 setHost:domainCopy];
  if ([portCopy intValue] != 443)
  {
    [v17 setPort:portCopy];
  }

  [v17 setPath:@"/.well-known/com.apple.remotemanagement"];
  v18 = [(DMCServiceDiscoveryHelper *)self _defaultServiceDiscoveryQueryItemsWithUserIdentifier:identifierCopy];

  v19 = [v18 mutableCopy];
  if ([MEMORY[0x277D034F8] isAppleInternal] && objc_msgSend(MEMORY[0x277D034E8], "DSLiveOnModeEnabled"))
  {
    v20 = [MEMORY[0x277CCAD18] queryItemWithName:@"ignoreBusinessEssentialsSubscription" value:@"true"];
    [v19 addObject:v20];
  }

  [v17 setQueryItems:v19];
  v21 = [v17 URL];
  v22 = *DMCLogObjects();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138543362;
    v26 = domainCopy;
    _os_log_impl(&dword_247E39000, v22, OS_LOG_TYPE_DEFAULT, "Discovering servers with domain: %{public}@", &v25, 0xCu);
  }

  v23 = *DMCLogObjects();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v25 = 138543362;
    v26 = v21;
    _os_log_impl(&dword_247E39000, v23, OS_LOG_TYPE_DEBUG, "Well known url is: %{public}@", &v25, 0xCu);
  }

  [(DMCServiceDiscoveryHelper *)self _serversFromWellKnownURL:v21 anchorCertificateRefs:refsCopy completionHandler:handlerCopy];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_discoverServerURLForUserIdentifier:(id)identifier anchorCertificateRefs:(id)refs completionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  refsCopy = refs;
  v10 = MEMORY[0x277D03500];
  handlerCopy = handler;
  v12 = [v10 wellKnownDiscoveryURLWithValue:@"https://axm-servicediscovery.apple.com/mdmBaseURL"];
  if ([MEMORY[0x277D034F8] isWellKnownDiscoveryEnabled])
  {
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = identifierCopy;
      _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_DEFAULT, "Discovering servers with user identifier: %{public}@", buf, 0xCu);
    }

    v14 = [MEMORY[0x277CCACE0] componentsWithString:v12];
    v15 = [(DMCServiceDiscoveryHelper *)self _defaultServiceDiscoveryQueryItemsWithUserIdentifier:identifierCopy];
    v16 = [v15 mutableCopy];

    if ([MEMORY[0x277D034F8] isAppleInternal] && objc_msgSend(MEMORY[0x277D034E8], "DSLiveOnModeEnabled"))
    {
      v17 = [MEMORY[0x277CCAD18] queryItemWithName:@"ignoreBusinessEssentialsSubscription" value:@"true"];
      [v16 addObject:v17];
    }

    [v14 setQueryItems:v16];
    v18 = [v14 URL];
    v19 = *DMCLogObjects();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v26 = v18;
      _os_log_impl(&dword_247E39000, v19, OS_LOG_TYPE_DEBUG, "DEP service discovery url is: %{public}@", buf, 0xCu);
    }

    [(DMCServiceDiscoveryHelper *)self _serversFromWellKnownURL:v18 anchorCertificateRefs:refsCopy completionHandler:handlerCopy];
  }

  else
  {
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277D032F0];
    v22 = DMCErrorArray();
    v23 = [v20 DMCErrorWithDomain:v21 code:15001 descriptionArray:v22 errorType:{*MEMORY[0x277D032F8], v12, 0}];
    (*(handlerCopy + 2))(handlerCopy, 0, v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_discoverAppleServerWithUserIdentifier:(id)identifier anchorCertificateRefs:(id)refs completionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v9 = MEMORY[0x277CCACE0];
  v10 = MEMORY[0x277D03500];
  handlerCopy = handler;
  refsCopy = refs;
  v13 = [v10 appleMDMWellKnownURLWithDefaultValue:@"https://axm-adm-enroll.apple.com/.well-known/com.apple.remotemanagement"];
  v14 = [v9 componentsWithString:v13];

  v15 = [(DMCServiceDiscoveryHelper *)self _defaultServiceDiscoveryQueryItemsWithUserIdentifier:identifierCopy];
  [v14 setQueryItems:v15];

  v16 = [v14 URL];
  v17 = *DMCLogObjects();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = identifierCopy;
    _os_log_impl(&dword_247E39000, v17, OS_LOG_TYPE_DEFAULT, "Discovering Apple server with user identifier: %{public}@", &v19, 0xCu);
  }

  [(DMCServiceDiscoveryHelper *)self _serversFromWellKnownURL:v16 anchorCertificateRefs:refsCopy completionHandler:handlerCopy];

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_defaultServiceDiscoveryQueryItemsWithUserIdentifier:(id)identifier
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D03500];
  v4 = MEMORY[0x277D03530];
  identifierCopy = identifier;
  deviceClass = [v4 deviceClass];
  v7 = [v3 productNameWithDefaultValue:deviceClass];

  v8 = [MEMORY[0x277CCAD18] queryItemWithName:@"user-identifier" value:identifierCopy];

  v13[0] = v8;
  v9 = [MEMORY[0x277CCAD18] queryItemWithName:@"model-family" value:v7];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_serversFromWellKnownURL:(id)l anchorCertificateRefs:(id)refs completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCAB70];
  refsCopy = refs;
  v11 = [v9 requestWithURL:lCopy];
  [v11 setAttribution:1];
  [v11 setHTTPMethod:*MEMORY[0x277D03398]];
  [v11 setTimeoutInterval:90.0];
  v12 = objc_opt_new();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94__DMCServiceDiscoveryHelper__serversFromWellKnownURL_anchorCertificateRefs_completionHandler___block_invoke;
  v15[3] = &unk_278EE42E0;
  v16 = lCopy;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = lCopy;
  [v12 startWithRequest:v11 username:0 password:0 anchorCertificateRefs:refsCopy completionBlock:v15];
}

void __94__DMCServiceDiscoveryHelper__serversFromWellKnownURL_anchorCertificateRefs_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v59 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *DMCLogObjects();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 134218242;
    v56 = [v7 length];
    v57 = 2114;
    v58 = v8;
    _os_log_impl(&dword_247E39000, v11, OS_LOG_TYPE_DEFAULT, "Service URL from wellknown URL request finished with data: %lu bytes, response: %{public}@", buf, 0x16u);
  }

  if (!v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v8;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v18 = v17;
    if (!v7 || !v8 || !v17 || ([v17 MIMEType], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", *MEMORY[0x277D03338]), v19, (v20 & 1) == 0))
    {
      v29 = *DMCLogObjects();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 32);
        *buf = 138543618;
        v56 = v30;
        v57 = 2114;
        v58 = v8;
        _os_log_impl(&dword_247E39000, v29, OS_LOG_TYPE_ERROR, "Invalid well-known response for %{public}@: %{public}@", buf, 0x16u);
      }

      v31 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277D032F0];
      v33 = *(a1 + 40);
      v49 = *(a1 + 32);
      v22 = DMCErrorArray();
      v21 = [v31 DMCErrorWithDomain:v32 code:15002 descriptionArray:v22 errorType:{*MEMORY[0x277D032F8], v49, 0}];
      (*(v33 + 16))(v33, 0, v21);
      goto LABEL_25;
    }

    if ([v18 statusCode] != 200)
    {
      v35 = *(a1 + 40);
      v36 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277D032F0];
      v22 = DMCErrorArray();
      v21 = [v36 DMCErrorWithDomain:v37 code:15003 descriptionArray:v22 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];
      (*(v35 + 16))(v35, 0, v21);
LABEL_25:

      goto LABEL_26;
    }

    v54 = 0;
    v21 = [MEMORY[0x277D03570] loadData:v7 serializationType:1 error:&v54];
    v22 = v54;
    if (v21)
    {
      v23 = [v21 responseServers];
      if ([v23 count])
      {
        (*(*(a1 + 40) + 16))();
LABEL_35:

        goto LABEL_25;
      }

      v43 = *DMCLogObjects();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = *(a1 + 32);
        *buf = 138543618;
        v56 = v44;
        v57 = 2114;
        v58 = v7;
        _os_log_impl(&dword_247E39000, v43, OS_LOG_TYPE_ERROR, "Invalid well-known servers response for %{public}@: no servers: %{public}@", buf, 0x16u);
      }

      v53 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277D032F0];
      v46 = *(a1 + 40);
      v51 = *(a1 + 32);
      v42 = DMCErrorArray();
      v47 = [v53 DMCErrorWithDomain:v45 code:15002 descriptionArray:v42 errorType:{*MEMORY[0x277D032F8], v51, 0}];
      (*(v46 + 16))(v46, 0, v47);
    }

    else
    {
      v38 = *DMCLogObjects();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = *(a1 + 32);
        *buf = 138543618;
        v56 = v39;
        v57 = 2114;
        v58 = v22;
        _os_log_impl(&dword_247E39000, v38, OS_LOG_TYPE_ERROR, "Invalid well-known response for %{public}@: JSON error: %{public}@", buf, 0x16u);
      }

      v52 = MEMORY[0x277CCA9B8];
      v40 = *MEMORY[0x277D032F0];
      v41 = *(a1 + 40);
      v50 = *(a1 + 32);
      v23 = DMCErrorArray();
      v42 = [v52 DMCErrorWithDomain:v40 code:15002 descriptionArray:v23 underlyingError:v22 errorType:{*MEMORY[0x277D032F8], v50, 0}];
      (*(v41 + 16))(v41, 0, v42);
    }

    goto LABEL_35;
  }

  v12 = *DMCLogObjects();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    *buf = 138543618;
    v56 = v13;
    v57 = 2114;
    v58 = v9;
    _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_ERROR, "Well-known request for %{public}@ failed: %{public}@", buf, 0x16u);
  }

  v14 = [v9 domain];
  if (![v14 isEqualToString:*MEMORY[0x277D033B8]])
  {

    goto LABEL_21;
  }

  v15 = [v9 code];

  if (v15 != 23009)
  {
LABEL_21:
    v24 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277D032F0];
    v26 = *(a1 + 40);
    v48 = *(a1 + 32);
    v27 = DMCErrorArray();
    v28 = [v24 DMCErrorWithDomain:v25 code:15001 descriptionArray:v27 errorType:{*MEMORY[0x277D032F8], v48, 0}];
    (*(v26 + 16))(v26, 0, v28);

    goto LABEL_26;
  }

  (*(*(a1 + 40) + 16))();
LABEL_26:

  v34 = *MEMORY[0x277D85DE8];
}

- (id)_fallbackServer
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D03500] serviceDiscoveryFallbackURLWithValue:0];
  serviceDiscoveryFallbackServerVersion = [MEMORY[0x277D03500] serviceDiscoveryFallbackServerVersion];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:v2];

  if (v4)
  {
    v5 = serviceDiscoveryFallbackServerVersion == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = *DMCLogObjects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543618;
      v11 = v2;
      v12 = 2114;
      v13 = serviceDiscoveryFallbackServerVersion;
      _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_ERROR, "Invalid fallback service URL: %{public}@, fallabck server version: %{public}@", &v10, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277D03578] buildWithVersion:serviceDiscoveryFallbackServerVersion baseURL:v2];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_checkForESSOWithMethod:(unint64_t)method authParams:(id)params httpResponse:(id)response completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  handlerCopy = handler;
  responseCopy = response;
  v13 = *DMCLogObjects();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = MEMORY[0x277D034E8];
    v15 = v13;
    eSSOTestModeEnabled = [v14 ESSOTestModeEnabled];
    v17 = @"off";
    if (eSSOTestModeEnabled)
    {
      v17 = @"on";
    }

    *buf = 138543362;
    v34 = v17;
    _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_DEFAULT, "ESSO Test Mode is %{public}@", buf, 0xCu);
  }

  allHeaderFields = [responseCopy allHeaderFields];

  eSSOTestModeEnabled2 = [MEMORY[0x277D034E8] ESSOTestModeEnabled];
  v20 = MEMORY[0x277D03350];
  if (!eSSOTestModeEnabled2)
  {
    v20 = MEMORY[0x277D03348];
  }

  v21 = [allHeaderFields objectForKeyedSubscript:*v20];

  if (v21)
  {
    v22 = [MEMORY[0x277CBEBC0] URLWithString:v21];
    if (v22)
    {
      v23 = v22;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __95__DMCServiceDiscoveryHelper__checkForESSOWithMethod_authParams_httpResponse_completionHandler___block_invoke;
      v29[3] = &unk_278EE4308;
      v31 = handlerCopy;
      methodCopy = method;
      v30 = paramsCopy;
      [(DMCServiceDiscoveryHelper *)self _fetchESSODictionaryFromURL:v23 completionHandler:v29];
    }

    else
    {
      v24 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277D032F0];
      v26 = DMCErrorArray();
      v27 = [v24 DMCErrorWithDomain:v25 code:15003 descriptionArray:v26 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v27);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, method, paramsCopy, 0, 0);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __95__DMCServiceDiscoveryHelper__checkForESSOWithMethod_authParams_httpResponse_completionHandler___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a1[5];
  if (a2)
  {
    v4 = a1[6];
    v5 = a1[4];
    v12 = *MEMORY[0x277D245E8];
    v13[0] = a2;
    v6 = MEMORY[0x277CBEAC0];
    v7 = a2;
    v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
    (*(v3 + 16))(v3, v4, v5, v8, 0);
  }

  else
  {
    v10 = *(v3 + 16);
    v8 = 0;
    v10(v3, 0, 0, 0, a3);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_fetchESSODictionaryFromURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v7 = [MEMORY[0x277CCAB70] requestWithURL:lCopy];
  [v7 setAttribution:1];
  [v7 setHTTPMethod:*MEMORY[0x277D03398]];
  [v7 setTimeoutInterval:90.0];
  v8 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__DMCServiceDiscoveryHelper__fetchESSODictionaryFromURL_completionHandler___block_invoke;
  v11[3] = &unk_278EE42E0;
  v12 = lCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = lCopy;
  [v8 startWithRequest:v7 username:0 password:0 anchorCertificateRefs:0 completionBlock:v11];
}

void __75__DMCServiceDiscoveryHelper__fetchESSODictionaryFromURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *DMCLogObjects();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 134218242;
    v46 = [v7 length];
    v47 = 2114;
    v48 = v8;
    _os_log_impl(&dword_247E39000, v11, OS_LOG_TYPE_DEFAULT, "Fetch ESSO dictionary request finished with data: %lu bytes, response: %{public}@", buf, 0x16u);
  }

  if (!v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v8;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    v17 = v20;
    if (v7 && v8 && v20 && ([v20 MIMEType], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", *MEMORY[0x277D03338]), v21, (v22 & 1) != 0))
    {
      if ([v17 statusCode] == 200)
      {
        v44 = 0;
        v23 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v44];
        v18 = v44;
        if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v34 = *DMCLogObjects();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = *(a1 + 32);
            *buf = 138543618;
            v46 = v35;
            v47 = 2114;
            v48 = v18;
            _os_log_impl(&dword_247E39000, v34, OS_LOG_TYPE_ERROR, "Invalid ESSO dictionary response for %{public}@: JSON error: %{public}@", buf, 0x16u);
          }

          v36 = MEMORY[0x277CCA9B8];
          v37 = *MEMORY[0x277D032F0];
          v38 = *(a1 + 40);
          v43 = *(a1 + 32);
          v39 = DMCErrorArray();
          v40 = [v36 DMCErrorWithDomain:v37 code:15027 descriptionArray:v39 underlyingError:v18 errorType:{*MEMORY[0x277D032F8], v43, 0}];
          (*(v38 + 16))(v38, 0, v40);

          goto LABEL_22;
        }

        v24 = *(*(a1 + 40) + 16);
      }

      else
      {
        v31 = *(a1 + 40);
        v32 = MEMORY[0x277CCA9B8];
        v33 = *MEMORY[0x277D032F0];
        v18 = DMCErrorArray();
        v23 = [v32 DMCErrorWithDomain:v33 code:15003 descriptionArray:v18 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];
        v24 = *(v31 + 16);
      }
    }

    else
    {
      v25 = *DMCLogObjects();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 32);
        *buf = 138543618;
        v46 = v26;
        v47 = 2114;
        v48 = v8;
        _os_log_impl(&dword_247E39000, v25, OS_LOG_TYPE_ERROR, "Invalid well-known response for %{public}@: %{public}@", buf, 0x16u);
      }

      v27 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277D032F0];
      v29 = *(a1 + 40);
      v42 = *(a1 + 32);
      v18 = DMCErrorArray();
      v23 = [v27 DMCErrorWithDomain:v28 code:15027 descriptionArray:v18 errorType:{*MEMORY[0x277D032F8], v42, 0}];
      v24 = *(v29 + 16);
    }

    v24();
LABEL_22:

    goto LABEL_23;
  }

  v12 = *DMCLogObjects();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    *buf = 138543618;
    v46 = v13;
    v47 = 2114;
    v48 = v9;
    _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_ERROR, "Fetch ESSO dictionary request for %{public}@ failed: %{public}@", buf, 0x16u);
  }

  v14 = MEMORY[0x277CCA9B8];
  v15 = *MEMORY[0x277D032F0];
  v16 = *(a1 + 40);
  v41 = *(a1 + 32);
  v17 = DMCErrorArray();
  v18 = [v14 DMCErrorWithDomain:v15 code:15026 descriptionArray:v17 errorType:{*MEMORY[0x277D032F8], v41, 0}];
  (*(v16 + 16))(v16, 0, v18);
LABEL_23:

  v30 = *MEMORY[0x277D85DE8];
}

@end