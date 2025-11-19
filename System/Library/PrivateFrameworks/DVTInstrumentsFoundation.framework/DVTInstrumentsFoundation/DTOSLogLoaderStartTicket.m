@interface DTOSLogLoaderStartTicket
- (void)prepareAgent:(id)a3 loader:(id)a4;
@end

@implementation DTOSLogLoaderStartTicket

- (void)prepareAgent:(id)a3 loader:(id)a4
{
  v5 = a3;
  v6 = a4;
  *(v6 + 511) = 1;
  if (!*(v6 + 12))
  {
    v7 = objc_opt_new();
    v8 = *(v6 + 12);
    *(v6 + 12) = v7;

    v9 = *(v6 + 13);
    *(v6 + 13) = 0;
  }

  v10 = [*(v6 + 6) mode];
  v11 = *(v6 + 10);
  if (v11)
  {
    [v11 activate];
    v12 = [*(v6 + 6) dynamicTracingEnabledSubsystems];
    sub_247F920B8(v12, 1, v10 == 1);

    v13 = [*(v6 + 6) logSubsystemCategoryPairsToEnable];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = sub_247F94C58;
    v18 = &unk_278EF23C0;
    v20 = 1;
    v19 = 0;
    v21 = v10 == 1;
    [v13 enumerateKeysAndObjectsUsingBlock:&v15];

    v14 = [*(v6 + 6) signpostSubsystemCategoryPairsToEnable];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = sub_247F94C58;
    v18 = &unk_278EF23C0;
    v20 = 1;
    v19 = 1;
    v21 = v10 == 1;
    [v14 enumerateKeysAndObjectsUsingBlock:&v15];
  }
}

@end