@interface MDMHTTPTransaction
+ (id)reauthRequiredMAIDError;
+ (id)reauthRequiredThirdPartyError;
+ (id)unauthorizedByServerError;
- (void)_updateAuthentication;
- (void)resetAuthentication;
@end

@implementation MDMHTTPTransaction

- (void)resetAuthentication
{
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_22E997000, v3, OS_LOG_TYPE_DEBUG, "Reset authentication in MDMHTTPTransaction", v4, 2u);
  }

  [(MDMHTTPTransaction *)self _updateAuthentication];
}

- (void)_updateAuthentication
{
  v13 = *MEMORY[0x277D85DE8];
  rmAccountID = [(MDMHTTPTransaction *)self rmAccountID];

  v4 = *(DMCLogObjects() + 8);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (rmAccountID)
  {
    if (v5)
    {
      v6 = v4;
      rmAccountID2 = [(MDMHTTPTransaction *)self rmAccountID];
      v11 = 138543362;
      v12 = rmAccountID2;
      _os_log_impl(&dword_22E997000, v6, OS_LOG_TYPE_DEBUG, "RMAccount ID provided to MDMHTTPTransaction: %{public}@", &v11, 0xCu);
    }

    rmAccountID3 = [(MDMHTTPTransaction *)self rmAccountID];
    v9 = [MDMAccountUtilities authenticatorForRMAccountID:rmAccountID3];
    [(DMCHTTPTransaction *)self setAuthenticator:v9];
  }

  else if (v5)
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_22E997000, v4, OS_LOG_TYPE_DEBUG, "No RMAccount ID provided to MDMHTTPTransaction", &v11, 2u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)unauthorizedByServerError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12020 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)reauthRequiredMAIDError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12095 descriptionArray:v4 errorType:{*MEMORY[0x277D03308], 0}];

  return v5;
}

+ (id)reauthRequiredThirdPartyError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12096 descriptionArray:v4 errorType:{*MEMORY[0x277D03308], 0}];

  return v5;
}

@end