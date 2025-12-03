@interface BRRTCMigrationReportManager
- (BRRTCMigrationReportManager)initWithPairingID:(id)d;
- (id)_likelyOffendingTransaction;
- (id)_transactionNameFromKey:(id)key;
- (id)formatDate:(id)date;
- (void)addDeviceDetails:(id)details;
- (void)setErrorCode:(id)code domain:(id)domain description:(id)description;
- (void)setLastActiveDate:(id)date;
- (void)setSessionID:(id)d;
- (void)submitMetic;
@end

@implementation BRRTCMigrationReportManager

- (BRRTCMigrationReportManager)initWithPairingID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = BRRTCMigrationReportManager;
  v6 = [(BRRTCMigrationReportManager *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(BRRTCMigrationMetric);
    migrationMetric = v6->_migrationMetric;
    v6->_migrationMetric = v7;

    objc_storeStrong(&v6->_pairingID, d);
  }

  return v6;
}

- (void)addDeviceDetails:(id)details
{
  detailsCopy = details;
  migrationMetric = [(BRRTCMigrationReportManager *)self migrationMetric];
  [migrationMetric setDeviceDetails:detailsCopy];
}

- (void)setErrorCode:(id)code domain:(id)domain description:(id)description
{
  v20 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  descriptionCopy = description;
  domainCopy = domain;
  v11 = br_metriccollection_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = codeCopy;
    v18 = 2112;
    v19 = descriptionCopy;
    _os_log_impl(&dword_241ECA000, v11, OS_LOG_TYPE_DEFAULT, "Setting migration failure code %@ with description %@", &v16, 0x16u);
  }

  migrationMetric = [(BRRTCMigrationReportManager *)self migrationMetric];
  [migrationMetric setMigrationFailureCode:codeCopy];

  migrationMetric2 = [(BRRTCMigrationReportManager *)self migrationMetric];
  [migrationMetric2 setMigrationFailureDomain:domainCopy];

  migrationMetric3 = [(BRRTCMigrationReportManager *)self migrationMetric];
  [migrationMetric3 setMigrationFailureDescription:descriptionCopy];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setLastActiveDate:(id)date
{
  v5 = [(BRRTCMigrationReportManager *)self formatDate:date];
  migrationMetric = [(BRRTCMigrationReportManager *)self migrationMetric];
  [migrationMetric setLastActiveDate:v5];
}

- (void)setSessionID:(id)d
{
  dCopy = d;
  migrationMetric = [(BRRTCMigrationReportManager *)self migrationMetric];
  [migrationMetric setSessionID:dCopy];
}

- (void)submitMetic
{
  v13 = *MEMORY[0x277D85DE8];
  _likelyOffendingTransaction = [(BRRTCMigrationReportManager *)self _likelyOffendingTransaction];
  if (_likelyOffendingTransaction)
  {
    migrationMetric = [(BRRTCMigrationReportManager *)self migrationMetric];
    [migrationMetric setSuspectTransaction:_likelyOffendingTransaction];
  }

  v5 = br_metriccollection_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    migrationMetric2 = [(BRRTCMigrationReportManager *)self migrationMetric];
    dictionaryRepresentation = [migrationMetric2 dictionaryRepresentation];
    v11 = 138412290;
    v12 = dictionaryRepresentation;
    _os_log_impl(&dword_241ECA000, v5, OS_LOG_TYPE_DEFAULT, "Request to submit migration Metric with these keys: %@", &v11, 0xCu);
  }

  v8 = [BRReportManager reporterWithCatergory:2000];
  migrationMetric3 = [(BRRTCMigrationReportManager *)self migrationMetric];
  [v8 reportRTCMetric:migrationMetric3];

  [(BRRTCMigrationReportManager *)self setMetricSubmitted:1];
  [(BRRTCMigrationReportManager *)self setMigrationMetric:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_transactionNameFromKey:(id)key
{
  keyCopy = key;
  v4 = [keyCopy substringFromIndex:{objc_msgSend(@"MigrationPhonePhase", "length")}];

  v5 = [v4 substringToIndex:{objc_msgSend(v4, "length") - 3}];

  return v5;
}

- (id)_likelyOffendingTransaction
{
  v19 = *MEMORY[0x277D85DE8];
  migrationMetric = [(BRRTCMigrationReportManager *)self migrationMetric];
  transactionPhases = [migrationMetric transactionPhases];

  if (transactionPhases)
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
    [transactionPhases enumerateKeysAndObjectsUsingBlock:v10];
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

- (id)formatDate:(id)date
{
  v3 = MEMORY[0x277CCA968];
  dateCopy = date;
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
  v7 = [v5 stringFromDate:dateCopy];

  return v7;
}

@end