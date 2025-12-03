@interface WFAppLaunchRequest
- (BOOL)isRequestForUserFacingApp;
- (id)readableErrorFromError:(id)error;
- (id)rootCauseErrorFromError:(id)error;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation WFAppLaunchRequest

- (id)rootCauseErrorFromError:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277CCA7E8]];

  if (v6)
  {
    v7 = [(WFAppLaunchRequest *)self rootCauseErrorFromError:v6];
  }

  else
  {
    v7 = errorCopy;
  }

  v8 = v7;

  return v8;
}

- (id)readableErrorFromError:(id)error
{
  v39[3] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:@"FBSOpenApplicationServiceErrorDomain"];

  if (v6)
  {
    currentDevice = [MEMORY[0x277D79F18] currentDevice];
    localizedModel = [currentDevice localizedModel];

    v9 = WFLocalizedString(@"Couldn't Open App");
    v10 = WFLocalizedString(@"The app couldn't be opened because an unknown error occurred.");
    v11 = MEMORY[0x277CC1E90];
    bundleIdentifier = [(INCAppLaunchRequest *)self bundleIdentifier];
    v13 = [v11 bundleRecordWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];

    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        localizedName = [v13 localizedName];
        v15 = [localizedName length];

        if (!v15)
        {
          v24 = 0;
LABEL_9:
          v25 = [(WFAppLaunchRequest *)self rootCauseErrorFromError:errorCopy];
          domain2 = [v25 domain];
          if ([domain2 isEqualToString:@"FBSOpenApplicationErrorDomain"])
          {
            code = [v25 code];

            if (code != 7)
            {
LABEL_16:
              v31 = MEMORY[0x277CCA9B8];
              domain3 = [errorCopy domain];
              code2 = [errorCopy code];
              v34 = *MEMORY[0x277CCA450];
              v38[0] = *MEMORY[0x277CCA470];
              v38[1] = v34;
              v39[0] = v9;
              v39[1] = v10;
              v38[2] = *MEMORY[0x277CCA7E8];
              v39[2] = errorCopy;
              v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
              v36 = [v31 errorWithDomain:domain3 code:code2 userInfo:v35];

              errorCopy = v36;
              goto LABEL_17;
            }

            v28 = MEMORY[0x277CCACA8];
            if (v24)
            {
              domain2 = WFLocalizedString(@"“%1$@” couldn't be opened because the %2$@ is locked.");
              localizedName2 = [v13 localizedName];
              v30 = [v28 localizedStringWithFormat:domain2, localizedName2, localizedModel];

              v10 = localizedName2;
            }

            else
            {
              domain2 = WFLocalizedString(@"The app couldn't be opened because the %@ is locked.");
              v30 = [v28 localizedStringWithFormat:domain2, localizedModel];
            }

            v10 = v30;
          }

          goto LABEL_16;
        }

        v16 = MEMORY[0x277CCACA8];
        v17 = WFLocalizedString(@"Couldn't Open “%@”");
        localizedName3 = [v13 localizedName];
        v19 = [v16 localizedStringWithFormat:v17, localizedName3];

        v20 = MEMORY[0x277CCACA8];
        v21 = WFLocalizedString(@"“%@” couldn't be opened because an unknown error occurred.");
        localizedName4 = [v13 localizedName];
        v23 = [v20 localizedStringWithFormat:v21, localizedName4];

        v24 = 1;
        v10 = v23;
        v9 = v19;
      }

      else
      {
        v24 = 0;
        v21 = v13;
        v13 = 0;
      }
    }

    else
    {
      v21 = 0;
      v24 = 0;
    }

    goto LABEL_9;
  }

LABEL_17:

  return errorCopy;
}

- (BOOL)isRequestForUserFacingApp
{
  v3 = objc_alloc(MEMORY[0x277CC1E70]);
  bundleIdentifier = [(INCAppLaunchRequest *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];

  LOBYTE(bundleIdentifier) = [v5 wf_isAvailableInContext:0];
  return bundleIdentifier;
}

- (void)performWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (![(WFAppLaunchRequest *)self requiresUserFacingApp]|| [(WFAppLaunchRequest *)self requiresUserFacingApp]&& [(WFAppLaunchRequest *)self isRequestForUserFacingApp])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__WFAppLaunchRequest_performWithCompletionHandler___block_invoke;
    v8[3] = &unk_278349B20;
    v8[4] = self;
    v9 = handlerCopy;
    v7.receiver = self;
    v7.super_class = WFAppLaunchRequest;
    [(INCAppLaunchRequest *)&v7 performWithCompletionHandler:v8];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"FBSOpenApplicationErrorDomain" code:4 userInfo:0];
    v6 = [(WFAppLaunchRequest *)self readableErrorFromError:v5];
    (*(handlerCopy + 2))(handlerCopy, 0, v6);
  }
}

void __51__WFAppLaunchRequest_performWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = [*(a1 + 32) readableErrorFromError:?];
    (*(v2 + 16))(v2, a2, v4);
  }
}

@end