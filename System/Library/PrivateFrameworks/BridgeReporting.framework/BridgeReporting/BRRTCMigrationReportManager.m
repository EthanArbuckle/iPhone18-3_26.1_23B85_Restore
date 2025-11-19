@interface BRRTCMigrationReportManager
- (BRRTCMigrationReportManager)initWithPairingID:(id)a3;
- (id)_likelyOffendingTransaction;
- (id)_transactionNameFromKey:(id)a3;
- (id)formatDate:(id)a3;
- (void)addDeviceDetails:(id)a3;
- (void)setErrorCode:(id)a3 domain:(id)a4 description:(id)a5;
- (void)setLastActiveDate:(id)a3;
- (void)setSessionID:(id)a3;
- (void)submitMetic;
@end

@implementation BRRTCMigrationReportManager

- (BRRTCMigrationReportManager)initWithPairingID:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = BRRTCMigrationReportManager;
  v6 = [(BRRTCMigrationReportManager *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(BRRTCMigrationMetric);
    migrationMetric = v6->_migrationMetric;
    v6->_migrationMetric = v7;

    objc_storeStrong(&v6->_pairingID, a3);
  }

  return v6;
}

- (void)addDeviceDetails:(id)a3
{
  v4 = a3;
  v5 = [(BRRTCMigrationReportManager *)self migrationMetric];
  [v5 setDeviceDetails:v4];
}

- (void)setErrorCode:(id)a3 domain:(id)a4 description:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = br_metriccollection_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_241ECA000, v11, OS_LOG_TYPE_DEFAULT, "Setting migration failure code %@ with description %@", &v16, 0x16u);
  }

  v12 = [(BRRTCMigrationReportManager *)self migrationMetric];
  [v12 setMigrationFailureCode:v8];

  v13 = [(BRRTCMigrationReportManager *)self migrationMetric];
  [v13 setMigrationFailureDomain:v10];

  v14 = [(BRRTCMigrationReportManager *)self migrationMetric];
  [v14 setMigrationFailureDescription:v9];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setLastActiveDate:(id)a3
{
  v5 = [(BRRTCMigrationReportManager *)self formatDate:a3];
  v4 = [(BRRTCMigrationReportManager *)self migrationMetric];
  [v4 setLastActiveDate:v5];
}

- (void)setSessionID:(id)a3
{
  v4 = a3;
  v5 = [(BRRTCMigrationReportManager *)self migrationMetric];
  [v5 setSessionID:v4];
}

- (void)submitMetic
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(BRRTCMigrationReportManager *)self _likelyOffendingTransaction];
  if (v3)
  {
    v4 = [(BRRTCMigrationReportManager *)self migrationMetric];
    [v4 setSuspectTransaction:v3];
  }

  v5 = br_metriccollection_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(BRRTCMigrationReportManager *)self migrationMetric];
    v7 = [v6 dictionaryRepresentation];
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_241ECA000, v5, OS_LOG_TYPE_DEFAULT, "Request to submit migration Metric with these keys: %@", &v11, 0xCu);
  }

  v8 = [BRReportManager reporterWithCatergory:2000];
  v9 = [(BRRTCMigrationReportManager *)self migrationMetric];
  [v8 reportRTCMetric:v9];

  [(BRRTCMigrationReportManager *)self setMetricSubmitted:1];
  [(BRRTCMigrationReportManager *)self setMigrationMetric:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_transactionNameFromKey:(id)a3
{
  v3 = a3;
  v4 = [v3 substringFromIndex:{objc_msgSend(@"MigrationPhonePhase", "length")}];

  v5 = [v4 substringToIndex:{objc_msgSend(v4, "length") - 3}];

  return v5;
}

- (id)_likelyOffendingTransaction
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(BRRTCMigrationReportManager *)self migrationMetric];
  v4 = [v3 transactionPhases];

  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy_;
    v15 = __Block_byref_object_dispose_;
    v16 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__BRRTCMigrationReportManager__likelyOffendingTransaction__block_invoke;
    v10[3] = &unk_278D27360;
    v10[4] = self;
    v10[5] = &v11;
    [v4 enumerateKeysAndObjectsUsingBlock:v10];
    v5 = br_metriccollection_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v12[5];
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_241ECA000, v5, OS_LOG_TYPE_DEFAULT, "offending transaction %@", buf, 0xCu);
    }

    v7 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __58__BRRTCMigrationReportManager__likelyOffendingTransaction__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v7 = a3;
  if (([v7 BOOLValue] & 1) != 0 || *(*(*(a1 + 40) + 8) + 40))
  {
    if (([v7 BOOLValue] & 1) == 0)
    {
      *a4 = 1;
    }
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [*(a1 + 32) _transactionNameFromKey:v13];
    v10 = [v8 stringWithFormat:@"EPSagaTransaction%@", v9];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)formatDate:(id)a3
{
  v3 = MEMORY[0x277CCA968];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  if (BRIsInternalInstall())
  {
    v6 = @"yyyy.MM.dd_HH-mm-ss";
  }

  else
  {
    v6 = @"yyyy.MM.dd_HH-mm";
  }

  [v5 setDateFormat:v6];
  v7 = [v5 stringFromDate:v4];

  return v7;
}

@end