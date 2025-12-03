@interface DTOSLogLoaderStartTicket
- (void)prepareAgent:(id)agent loader:(id)loader;
@end

@implementation DTOSLogLoaderStartTicket

- (void)prepareAgent:(id)agent loader:(id)loader
{
  agentCopy = agent;
  loaderCopy = loader;
  *(loaderCopy + 511) = 1;
  if (!*(loaderCopy + 12))
  {
    v7 = objc_opt_new();
    v8 = *(loaderCopy + 12);
    *(loaderCopy + 12) = v7;

    v9 = *(loaderCopy + 13);
    *(loaderCopy + 13) = 0;
  }

  mode = [*(loaderCopy + 6) mode];
  v11 = *(loaderCopy + 10);
  if (v11)
  {
    [v11 activate];
    dynamicTracingEnabledSubsystems = [*(loaderCopy + 6) dynamicTracingEnabledSubsystems];
    sub_247F920B8(dynamicTracingEnabledSubsystems, 1, mode == 1);

    logSubsystemCategoryPairsToEnable = [*(loaderCopy + 6) logSubsystemCategoryPairsToEnable];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = sub_247F94C58;
    v18 = &unk_278EF23C0;
    v20 = 1;
    v19 = 0;
    v21 = mode == 1;
    [logSubsystemCategoryPairsToEnable enumerateKeysAndObjectsUsingBlock:&v15];

    signpostSubsystemCategoryPairsToEnable = [*(loaderCopy + 6) signpostSubsystemCategoryPairsToEnable];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = sub_247F94C58;
    v18 = &unk_278EF23C0;
    v20 = 1;
    v19 = 1;
    v21 = mode == 1;
    [signpostSubsystemCategoryPairsToEnable enumerateKeysAndObjectsUsingBlock:&v15];
  }
}

@end