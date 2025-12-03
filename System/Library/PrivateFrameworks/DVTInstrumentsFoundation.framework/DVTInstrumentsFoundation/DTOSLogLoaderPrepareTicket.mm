@interface DTOSLogLoaderPrepareTicket
- (void)_setupLoaderForLoggedEventStore:(id)store agent:(id)agent setDatesBasedOnSource:(BOOL)source genericFailureReason:(id)reason;
- (void)holdAgent:(id)agent loader:(id)loader;
@end

@implementation DTOSLogLoaderPrepareTicket

- (void)holdAgent:(id)agent loader:(id)loader
{
  agentCopy = agent;
  loaderCopy = loader;
  configuration = [(DTOSLogLoaderPrepareTicket *)self configuration];
  v9 = *(loaderCopy + 6);
  *(loaderCopy + 6) = configuration;

  configuration2 = [(DTOSLogLoaderPrepareTicket *)self configuration];
  mode = [configuration2 mode];

  if (!mode)
  {
    dynamicTracingEnabledSubsystems = [*(loaderCopy + 6) dynamicTracingEnabledSubsystems];
    sub_247F920B8(dynamicTracingEnabledSubsystems, 1, 0);

    logSubsystemCategoryPairsToEnable = [*(loaderCopy + 6) logSubsystemCategoryPairsToEnable];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = sub_247F94C58;
    v18 = &unk_278EF23C0;
    v20 = 1;
    v19 = 0;
    [logSubsystemCategoryPairsToEnable enumerateKeysAndObjectsUsingBlock:&v15];

    signpostSubsystemCategoryPairsToEnable = [*(loaderCopy + 6) signpostSubsystemCategoryPairsToEnable];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = sub_247F94C58;
    v18 = &unk_278EF23C0;
    v20 = 1;
    v19 = 1;
    [signpostSubsystemCategoryPairsToEnable enumerateKeysAndObjectsUsingBlock:&v15];
  }

  pthread_mutex_lock((loaderCopy + 184));
  sub_247F8C514(loaderCopy);
  operator new();
}

- (void)_setupLoaderForLoggedEventStore:(id)store agent:(id)agent setDatesBasedOnSource:(BOOL)source genericFailureReason:(id)reason
{
  storeCopy = store;
  agentCopy = agent;
  reasonCopy = reason;
  *(storeCopy + 14) = 0;
  v12 = *(storeCopy + 7);
  if (v12)
  {
    [v12 setUpgradeConfirmationHandler:&unk_285A18168];
    [*(storeCopy + 7) setProgressHandler:&unk_285A18188];
    v13 = *(storeCopy + 7);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_247F92634;
    v16[3] = &unk_278EF2378;
    v17 = storeCopy;
    sourceCopy = source;
    v18 = agentCopy;
    [v13 prepareWithCompletionHandler:v16];
  }

  else
  {
    reasonCopy = [MEMORY[0x277CCA9B8] dvtiuErrorWithFormat:@"%@", reasonCopy];
    v15 = *(storeCopy + 11);
    *(storeCopy + 11) = reasonCopy;

    [storeCopy _welcomeAgent:agentCopy];
  }
}

@end