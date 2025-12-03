@interface DTOSLogLoaderStopTicket
- (void)holdAgent:(id)agent loader:(id)loader;
- (void)prepareAgent:(id)agent loader:(id)loader;
@end

@implementation DTOSLogLoaderStopTicket

- (void)holdAgent:(id)agent loader:(id)loader
{
  agentCopy = agent;
  loaderCopy = loader;
  v7 = objc_opt_new();
  v8 = *(loaderCopy + 13);
  *(loaderCopy + 13) = v7;

  v9 = *(loaderCopy + 8);
  if (v9)
  {
    [v9 invalidate];
LABEL_5:
    objc_storeStrong(loaderCopy + 15, agent);
    goto LABEL_6;
  }

  v10 = *(loaderCopy + 10);
  if (v10)
  {
    [v10 invalidate];
    +[DTOSLogLoader heartbeat];
    goto LABEL_5;
  }

  [loaderCopy _welcomeAgent:agentCopy];
LABEL_6:
}

- (void)prepareAgent:(id)agent loader:(id)loader
{
  agentCopy = agent;
  loaderCopy = loader;
  v7 = loaderCopy;
  if (loaderCopy[8] || loaderCopy[10])
  {
    __assert_rtn("[DTOSLogLoaderStopTicket prepareAgent:loader:]", "DTOSLogLoader.mm", 2066, "loader->_loggedStream == nil && loader->_liveStream == nil");
  }

  *(loaderCopy + 511) = 0;
  mode = [loaderCopy[6] mode];
  if ((mode - 4) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    dynamicTracingEnabledSubsystems = [v7[6] dynamicTracingEnabledSubsystems];
    sub_247F920B8(dynamicTracingEnabledSubsystems, 0, mode == 1);

    logSubsystemCategoryPairsToEnable = [v7[6] logSubsystemCategoryPairsToEnable];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = sub_247F94C58;
    v16 = &unk_278EF23C0;
    v11 = mode == 1;
    v18 = 0;
    v17 = 0;
    v19 = v11;
    [logSubsystemCategoryPairsToEnable enumerateKeysAndObjectsUsingBlock:&v13];

    signpostSubsystemCategoryPairsToEnable = [v7[6] signpostSubsystemCategoryPairsToEnable];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = sub_247F94C58;
    v16 = &unk_278EF23C0;
    v18 = 0;
    v17 = 1;
    v19 = v11;
    [signpostSubsystemCategoryPairsToEnable enumerateKeysAndObjectsUsingBlock:&v13];
  }
}

@end