@interface DTOSLogLoaderStopTicket
- (void)holdAgent:(id)a3 loader:(id)a4;
- (void)prepareAgent:(id)a3 loader:(id)a4;
@end

@implementation DTOSLogLoaderStopTicket

- (void)holdAgent:(id)a3 loader:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = *(v6 + 13);
  *(v6 + 13) = v7;

  v9 = *(v6 + 8);
  if (v9)
  {
    [v9 invalidate];
LABEL_5:
    objc_storeStrong(v6 + 15, a3);
    goto LABEL_6;
  }

  v10 = *(v6 + 10);
  if (v10)
  {
    [v10 invalidate];
    +[DTOSLogLoader heartbeat];
    goto LABEL_5;
  }

  [v6 _welcomeAgent:v11];
LABEL_6:
}

- (void)prepareAgent:(id)a3 loader:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6[8] || v6[10])
  {
    __assert_rtn("[DTOSLogLoaderStopTicket prepareAgent:loader:]", "DTOSLogLoader.mm", 2066, "loader->_loggedStream == nil && loader->_liveStream == nil");
  }

  *(v6 + 511) = 0;
  v8 = [v6[6] mode];
  if ((v8 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = [v7[6] dynamicTracingEnabledSubsystems];
    sub_247F920B8(v9, 0, v8 == 1);

    v10 = [v7[6] logSubsystemCategoryPairsToEnable];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = sub_247F94C58;
    v16 = &unk_278EF23C0;
    v11 = v8 == 1;
    v18 = 0;
    v17 = 0;
    v19 = v11;
    [v10 enumerateKeysAndObjectsUsingBlock:&v13];

    v12 = [v7[6] signpostSubsystemCategoryPairsToEnable];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = sub_247F94C58;
    v16 = &unk_278EF23C0;
    v18 = 0;
    v17 = 1;
    v19 = v11;
    [v12 enumerateKeysAndObjectsUsingBlock:&v13];
  }
}

@end