@interface DTOSLogLoaderPrepareTicket
- (void)_setupLoaderForLoggedEventStore:(id)a3 agent:(id)a4 setDatesBasedOnSource:(BOOL)a5 genericFailureReason:(id)a6;
- (void)holdAgent:(id)a3 loader:(id)a4;
@end

@implementation DTOSLogLoaderPrepareTicket

- (void)holdAgent:(id)a3 loader:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DTOSLogLoaderPrepareTicket *)self configuration];
  v9 = *(v7 + 6);
  *(v7 + 6) = v8;

  v10 = [(DTOSLogLoaderPrepareTicket *)self configuration];
  v11 = [v10 mode];

  if (!v11)
  {
    v12 = [*(v7 + 6) dynamicTracingEnabledSubsystems];
    sub_247F920B8(v12, 1, 0);

    v13 = [*(v7 + 6) logSubsystemCategoryPairsToEnable];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = sub_247F94C58;
    v18 = &unk_278EF23C0;
    v20 = 1;
    v19 = 0;
    [v13 enumerateKeysAndObjectsUsingBlock:&v15];

    v14 = [*(v7 + 6) signpostSubsystemCategoryPairsToEnable];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = sub_247F94C58;
    v18 = &unk_278EF23C0;
    v20 = 1;
    v19 = 1;
    [v14 enumerateKeysAndObjectsUsingBlock:&v15];
  }

  pthread_mutex_lock((v7 + 184));
  sub_247F8C514(v7);
  operator new();
}

- (void)_setupLoaderForLoggedEventStore:(id)a3 agent:(id)a4 setDatesBasedOnSource:(BOOL)a5 genericFailureReason:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  *(v9 + 14) = 0;
  v12 = *(v9 + 7);
  if (v12)
  {
    [v12 setUpgradeConfirmationHandler:&unk_285A18168];
    [*(v9 + 7) setProgressHandler:&unk_285A18188];
    v13 = *(v9 + 7);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_247F92634;
    v16[3] = &unk_278EF2378;
    v17 = v9;
    v19 = a5;
    v18 = v10;
    [v13 prepareWithCompletionHandler:v16];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] dvtiuErrorWithFormat:@"%@", v11];
    v15 = *(v9 + 11);
    *(v9 + 11) = v14;

    [v9 _welcomeAgent:v10];
  }
}

@end