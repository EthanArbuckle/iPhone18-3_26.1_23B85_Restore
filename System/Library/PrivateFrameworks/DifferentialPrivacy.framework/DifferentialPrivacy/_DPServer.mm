@interface _DPServer
+ (BOOL)shouldNotRecord:(id)a3 forKey:(id)a4 count:(unint64_t)a5;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)metadataMethodsAllowed;
- (BOOL)retireReports:(id)a3 inDirectory:(id)a4;
- (_DPServer)init;
- (_DPServer)initWithDatabaseDirectoryPath:(id)a3 reportsDirectoryPath:(id)a4 enablePeriodicTasks:(BOOL)a5 enterSandbox:(BOOL)a6;
- (void)init;
- (void)recordBitValues:(id)a3 forKey:(id)a4 withReply:(id)a5;
- (void)recordBitValues:(id)a3 metadata:(id)a4 forKey:(id)a5 withReply:(id)a6;
- (void)recordBitVectors:(id)a3 forKey:(id)a4 withReply:(id)a5;
- (void)recordBitVectors:(id)a3 metadata:(id)a4 forKey:(id)a5 withReply:(id)a6;
- (void)recordFloatVectors:(id)a3 forKey:(id)a4 withReply:(id)a5;
- (void)recordFloatVectors:(id)a3 metadata:(id)a4 forKey:(id)a5 withReply:(id)a6;
- (void)recordNumbers:(id)a3 forKey:(id)a4 withReply:(id)a5;
- (void)recordNumbers:(id)a3 metadata:(id)a4 forKey:(id)a5 withReply:(id)a6;
- (void)recordNumbersVectors:(id)a3 forKey:(id)a4 withReply:(id)a5;
- (void)recordNumbersVectors:(id)a3 metadata:(id)a4 forKey:(id)a5 withReply:(id)a6;
- (void)recordStrings:(id)a3 forKey:(id)a4 withReply:(id)a5;
- (void)recordStrings:(id)a3 metadata:(id)a4 forKey:(id)a5 withReply:(id)a6;
- (void)recordValues:(id)a3 metadata:(id)a4 forKey:(id)a5 usingSelector:(SEL)a6;
- (void)recordWords:(id)a3 forKey:(id)a4 withReply:(id)a5;
- (void)reportsNotYetSubmittedWithReply:(id)a3;
- (void)retireReports:(id)a3 withReply:(id)a4;
- (void)setupPeriodicTasksWith:(id)a3;
- (void)start;
@end

@implementation _DPServer

- (BOOL)metadataMethodsAllowed
{
  v2 = [MEMORY[0x277CCAE80] currentConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.private.dprivacyd.metadata.allow"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (_DPServer)init
{
  v3 = +[_DPLog daemon];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(_DPServer *)v3 init];
  }

  v4 = +[_DPStrings databaseDirectoryPath];
  v5 = +[_DPStrings reportsDirectoryPath];
  v6 = [(_DPServer *)self initWithDatabaseDirectoryPath:v4 reportsDirectoryPath:v5 enablePeriodicTasks:1 enterSandbox:1];

  return v6;
}

- (void)setupPeriodicTasksWith:(id)a3
{
  v10 = a3;
  v3 = objc_opt_new();
  [v3 scheduleMaintenanceWithName:@"com.apple.DifferentialPrivacy.ReportFilesMaintenance" database:v10];
  [v10 scheduleStorageCullingWithName:@"com.apple.DifferentialPrivacy.StorageCulling" database:v10];
  [v10 scheduleMaintenanceWithName:@"com.apple.DifferentialPrivacy.StorageMaintenance" database:v10];
  v4 = objc_opt_new();
  [v4 scheduleMaintenanceWithName:@"com.apple.DifferentialPrivacy.TransparencyLogMaintenance" database:v10];
  if (!+[_DPDeviceInfo isRunningAsLaunchDaemon])
  {
    v5 = objc_opt_new();
    [v5 scheduleMaintenanceWithName:@"com.apple.DifferentialPrivacy.DediscoReporter" database:v10];
    v6 = objc_opt_new();
    [v6 scheduleMaintenanceWithName:@"com.apple.DifferentialPrivacy.PrivacyBudgetMaintenance" database:v10];
    v7 = objc_opt_new();
    [v7 scheduleMaintenanceWithName:@"com.apple.DifferentialPrivacy.runtimeBlacklistMaintenance" database:v10];
    v8 = objc_opt_new();
    [v8 scheduleMaintenanceWithName:@"com.apple.DifferentialPrivacy.serverBlacklistUpdate" database:v10];
    v9 = [[_DPTokenFetcher alloc] initWithTaskName:@"com.apple.DifferentialPrivacy.TokenFetcher"];
    [(_DPTokenFetcher *)v9 scheduleMaintenanceWithName:@"com.apple.DifferentialPrivacy.TokenFetcher" database:v10];
  }
}

- (_DPServer)initWithDatabaseDirectoryPath:(id)a3 reportsDirectoryPath:(id)a4 enablePeriodicTasks:(BOOL)a5 enterSandbox:(BOOL)a6
{
  v6 = a5;
  v9 = a3;
  v10 = a4;
  v11 = v9;
  v12 = v10;
  if (!v11)
  {
    v22 = +[_DPLog daemon];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [_DPServer initWithDatabaseDirectoryPath:reportsDirectoryPath:enablePeriodicTasks:enterSandbox:];
    }

    exit(1);
  }

  v13 = v12;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __one_time_setup_block_invoke;
  block[3] = &unk_27858AD90;
  v25 = v11;
  v26 = v12;
  if (one_time_setup_onceToken != -1)
  {
    dispatch_once(&one_time_setup_onceToken, block);
  }

  v23.receiver = self;
  v23.super_class = _DPServer;
  v14 = [(_DPServer *)&v23 init];
  if (v14)
  {
    v15 = [_DPStorage storageWithDirectory:v11 readOnly:0];
    db = v14->_db;
    v14->_db = v15;

    +[_DPPrivacyBudgetProperties initializeAllBudgetProperties];
    [_DPPrivacyBudget createBudgetRecordsIn:v14->_db];
    +[_DPBlacklistManager processRuntimeBlacklist];
    if (v6)
    {
      [(_DPServer *)v14 setupPeriodicTasksWith:v14->_db];
    }

    v17 = objc_alloc(MEMORY[0x277CCAE98]);
    v18 = +[_DPStrings machServiceName];
    v19 = [v17 initWithMachServiceName:v18];
    listener = v14->_listener;
    v14->_listener = v19;

    [(NSXPCListener *)v14->_listener setDelegate:v14];
  }

  return v14;
}

- (void)start
{
  [(NSXPCListener *)self->_listener resume];
  v2 = +[_DPLog daemon];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_22622D000, v2, OS_LOG_TYPE_INFO, "dprivacyd: accepting work now", v3, 2u);
  }

  dispatch_main();
}

+ (BOOL)shouldNotRecord:(id)a3 forKey:(id)a4 count:(unint64_t)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = [_DPKeyNames keyPropertiesForKey:v8];
  v10 = [v9 approvedForNonDNU];
  v11 = [v9 transport];
  if (+[_DPDeviceInfo isDataCollectionEnabled]|| (v10 & 1) != 0)
  {
    if (![_DPDeviceInfo isDisabledByTaskingForTransport:v11])
    {
      v19 = 0;
      goto LABEL_16;
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Disabled by Tasking (%lu)", v7, v11];
    v16 = +[_DPLog daemon];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[_DPServer shouldNotRecord:forKey:count:];
    }

    v17 = [v9 telemetryAllowed];
    v18 = 1;
    if ((v17 & 1) == 0)
    {
      v18 = +[_DPDeviceInfo isInternalBuild];
    }

    LOBYTE(v24) = v18;
    LODWORD(v22) = 1;
    HIDWORD(v22) = v5;
    [_DPLHBitacoraLogger donateEventToBitacoraForKey:v8 eventPhase:1 uuid:0 succeeded:0 errorCode:103 errorMessage:v12 aggregateFunction:v22 count:v24 telemetryAllowed:?];
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Disabled by D&U switch and not approved for non D&U", v7];
    v13 = +[_DPLog daemon];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[_DPServer shouldNotRecord:forKey:count:];
    }

    v14 = [v9 telemetryAllowed];
    v15 = 1;
    if ((v14 & 1) == 0)
    {
      v15 = +[_DPDeviceInfo isInternalBuild];
    }

    LOBYTE(v23) = v15;
    LODWORD(v21) = 1;
    HIDWORD(v21) = v5;
    [_DPLHBitacoraLogger donateEventToBitacoraForKey:v8 eventPhase:1 uuid:0 succeeded:0 errorCode:102 errorMessage:v12 aggregateFunction:v21 count:v23 telemetryAllowed:?];
  }

  v19 = 1;
LABEL_16:

  return v19;
}

- (void)recordValues:(id)a3 metadata:(id)a4 forKey:(id)a5 usingSelector:(SEL)a6
{
  v20 = a3;
  v10 = a4;
  v19 = a5;
  v11 = [[_DPDatabaseRecorder alloc] initWithKey:v19 storage:self->_db];
  v12 = [v20 count];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = v12;
    do
    {
      v16 = objc_autoreleasePoolPush();
      if (v15 >= 128)
      {
        v17 = 128;
      }

      else
      {
        v17 = v15;
      }

      v18 = [v20 subarrayWithRange:{v14, v17}];
      [(_DPDatabaseRecorder *)v11 performSelector:a6 withObject:v18 withObject:v10];
      v15 -= v17;

      objc_autoreleasePoolPop(v16);
      v14 += 128;
    }

    while (v14 < v13);
  }
}

- (void)recordBitValues:(id)a3 forKey:(id)a4 withReply:(id)a5
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = NSStringFromSelector(a2);
  LODWORD(v11) = [v11 shouldNotRecord:v12 forKey:v9 count:{objc_msgSend(v15, "count")}];

  if (v11)
  {
    v10[2](v10, 1, 0);
  }

  else
  {
    v13 = os_transaction_create();
    v14 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", v9, 1, [v15 count]);
    v10[2](v10, 1, 0);
    [(_DPServer *)self recordValues:v15 forKey:v9 usingSelector:sel_recordBitValues_];
    objc_autoreleasePoolPop(v14);
  }
}

- (void)recordBitValues:(id)a3 metadata:(id)a4 forKey:(id)a5 withReply:(id)a6
{
  v25[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (![(_DPServer *)self metadataMethodsAllowed])
  {
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", v13, 0, [v11 count]);
    v18 = MEMORY[0x277CCA9B8];
    v19 = +[_DPStrings errorDomain];
    v24 = *MEMORY[0x277CCA470];
    v25[0] = @"Missing entitlement required for this method";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v21 = [v18 errorWithDomain:v19 code:0 userInfo:v20];
    v14[2](v14, 0, v21);

LABEL_8:
    goto LABEL_9;
  }

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(a2);
  LODWORD(v15) = [v15 shouldNotRecord:v16 forKey:v13 count:{objc_msgSend(v11, "count")}];

  if (!v15)
  {
    v19 = os_transaction_create();
    v22 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", v13, 1, [v11 count]);
    v14[2](v14, 1, 0);
    [(_DPServer *)self recordValues:v11 metadata:v12 forKey:v13 usingSelector:sel_recordBitValues_metadata_];
    objc_autoreleasePoolPop(v22);
    goto LABEL_8;
  }

  v17 = +[_DPLog daemon];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [_DPServer recordBitValues:metadata:forKey:withReply:];
  }

  v14[2](v14, 1, 0);
LABEL_9:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)recordBitVectors:(id)a3 forKey:(id)a4 withReply:(id)a5
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = NSStringFromSelector(a2);
  LODWORD(v11) = [v11 shouldNotRecord:v12 forKey:v9 count:{objc_msgSend(v15, "count")}];

  if (v11)
  {
    v10[2](v10, 1, 0);
  }

  else
  {
    v13 = os_transaction_create();
    v14 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", v9, 1, [v15 count]);
    v10[2](v10, 1, 0);
    [(_DPServer *)self recordValues:v15 forKey:v9 usingSelector:sel_recordBitVectors_];
    objc_autoreleasePoolPop(v14);
  }
}

- (void)recordBitVectors:(id)a3 metadata:(id)a4 forKey:(id)a5 withReply:(id)a6
{
  v24[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (![(_DPServer *)self metadataMethodsAllowed])
  {
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", v13, 0, [v11 count]);
    v17 = MEMORY[0x277CCA9B8];
    v18 = +[_DPStrings errorDomain];
    v23 = *MEMORY[0x277CCA470];
    v24[0] = @"Missing entitlement required for this method";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v20 = [v17 errorWithDomain:v18 code:0 userInfo:v19];
    v14[2](v14, 0, v20);

LABEL_6:
    goto LABEL_7;
  }

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(a2);
  LODWORD(v15) = [v15 shouldNotRecord:v16 forKey:v13 count:{objc_msgSend(v11, "count")}];

  if (!v15)
  {
    v18 = os_transaction_create();
    v21 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", v13, 1, [v11 count]);
    v14[2](v14, 1, 0);
    [(_DPServer *)self recordValues:v11 metadata:v12 forKey:v13 usingSelector:sel_recordBitVectors_metadata_];
    objc_autoreleasePoolPop(v21);
    goto LABEL_6;
  }

  v14[2](v14, 1, 0);
LABEL_7:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)recordFloatVectors:(id)a3 forKey:(id)a4 withReply:(id)a5
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = NSStringFromSelector(a2);
  LODWORD(v11) = [v11 shouldNotRecord:v12 forKey:v9 count:{objc_msgSend(v15, "count")}];

  if (v11)
  {
    v10[2](v10, 1, 0);
  }

  else
  {
    v13 = os_transaction_create();
    v14 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", v9, 1, [v15 count]);
    [(_DPServer *)self recordValues:v15 forKey:v9 usingSelector:sel_recordFloatVectors_];
    v10[2](v10, 1, 0);
    objc_autoreleasePoolPop(v14);
  }
}

- (void)recordFloatVectors:(id)a3 metadata:(id)a4 forKey:(id)a5 withReply:(id)a6
{
  v24[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (![(_DPServer *)self metadataMethodsAllowed])
  {
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", v13, 0, [v11 count]);
    v17 = MEMORY[0x277CCA9B8];
    v18 = +[_DPStrings errorDomain];
    v23 = *MEMORY[0x277CCA470];
    v24[0] = @"Missing entitlement required for this method";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v20 = [v17 errorWithDomain:v18 code:0 userInfo:v19];
    v14[2](v14, 0, v20);

LABEL_6:
    goto LABEL_7;
  }

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(a2);
  LODWORD(v15) = [v15 shouldNotRecord:v16 forKey:v13 count:{objc_msgSend(v11, "count")}];

  if (!v15)
  {
    v18 = os_transaction_create();
    v21 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", v13, 1, [v11 count]);
    [(_DPServer *)self recordValues:v11 metadata:v12 forKey:v13 usingSelector:sel_recordFloatVectors_metadata_];
    v14[2](v14, 1, 0);
    objc_autoreleasePoolPop(v21);
    goto LABEL_6;
  }

  v14[2](v14, 1, 0);
LABEL_7:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)recordNumbers:(id)a3 forKey:(id)a4 withReply:(id)a5
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = NSStringFromSelector(a2);
  LODWORD(v11) = [v11 shouldNotRecord:v12 forKey:v9 count:{objc_msgSend(v15, "count")}];

  if (v11)
  {
    v10[2](v10, 1, 0);
  }

  else
  {
    v13 = os_transaction_create();
    v14 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", v9, 1, [v15 count]);
    v10[2](v10, 1, 0);
    [(_DPServer *)self recordValues:v15 forKey:v9 usingSelector:sel_recordNumbers_];
    objc_autoreleasePoolPop(v14);
  }
}

- (void)recordNumbers:(id)a3 metadata:(id)a4 forKey:(id)a5 withReply:(id)a6
{
  v24[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (![(_DPServer *)self metadataMethodsAllowed])
  {
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", v13, 0, [v11 count]);
    v17 = MEMORY[0x277CCA9B8];
    v18 = +[_DPStrings errorDomain];
    v23 = *MEMORY[0x277CCA470];
    v24[0] = @"Missing entitlement required for this method";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v20 = [v17 errorWithDomain:v18 code:0 userInfo:v19];
    v14[2](v14, 0, v20);

LABEL_6:
    goto LABEL_7;
  }

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(a2);
  LODWORD(v15) = [v15 shouldNotRecord:v16 forKey:v13 count:{objc_msgSend(v11, "count")}];

  if (!v15)
  {
    v18 = os_transaction_create();
    v21 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", v13, 1, [v11 count]);
    v14[2](v14, 1, 0);
    [(_DPServer *)self recordValues:v11 metadata:v12 forKey:v13 usingSelector:sel_recordNumbers_metadata_];
    objc_autoreleasePoolPop(v21);
    goto LABEL_6;
  }

  v14[2](v14, 1, 0);
LABEL_7:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)recordNumbersVectors:(id)a3 forKey:(id)a4 withReply:(id)a5
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = NSStringFromSelector(a2);
  LODWORD(v11) = [v11 shouldNotRecord:v12 forKey:v9 count:{objc_msgSend(v15, "count")}];

  if (v11)
  {
    v10[2](v10, 1, 0);
  }

  else
  {
    v13 = os_transaction_create();
    v14 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", v9, 1, [v15 count]);
    v10[2](v10, 1, 0);
    [(_DPServer *)self recordValues:v15 forKey:v9 usingSelector:sel_recordNumbersVectors_];
    objc_autoreleasePoolPop(v14);
  }
}

- (void)recordNumbersVectors:(id)a3 metadata:(id)a4 forKey:(id)a5 withReply:(id)a6
{
  v24[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (![(_DPServer *)self metadataMethodsAllowed])
  {
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", v13, 0, [v11 count]);
    v17 = MEMORY[0x277CCA9B8];
    v18 = +[_DPStrings errorDomain];
    v23 = *MEMORY[0x277CCA470];
    v24[0] = @"Missing entitlement required for this method";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v20 = [v17 errorWithDomain:v18 code:0 userInfo:v19];
    v14[2](v14, 0, v20);

LABEL_6:
    goto LABEL_7;
  }

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(a2);
  LODWORD(v15) = [v15 shouldNotRecord:v16 forKey:v13 count:{objc_msgSend(v11, "count")}];

  if (!v15)
  {
    v18 = os_transaction_create();
    v21 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", v13, 1, [v11 count]);
    v14[2](v14, 1, 0);
    [(_DPServer *)self recordValues:v11 metadata:v12 forKey:v13 usingSelector:sel_recordNumbersVectors_metadata_];
    objc_autoreleasePoolPop(v21);
    goto LABEL_6;
  }

  v14[2](v14, 1, 0);
LABEL_7:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)recordStrings:(id)a3 forKey:(id)a4 withReply:(id)a5
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = NSStringFromSelector(a2);
  LODWORD(v11) = [v11 shouldNotRecord:v12 forKey:v9 count:{objc_msgSend(v15, "count")}];

  if (v11)
  {
    v10[2](v10, 1, 0);
  }

  else
  {
    v13 = os_transaction_create();
    v14 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", v9, 1, [v15 count]);
    v10[2](v10, 1, 0);
    [(_DPServer *)self recordValues:v15 forKey:v9 usingSelector:sel_recordStrings_];
    objc_autoreleasePoolPop(v14);
  }
}

- (void)recordStrings:(id)a3 metadata:(id)a4 forKey:(id)a5 withReply:(id)a6
{
  v24[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (![(_DPServer *)self metadataMethodsAllowed])
  {
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", v13, 0, [v11 count]);
    v17 = MEMORY[0x277CCA9B8];
    v18 = +[_DPStrings errorDomain];
    v23 = *MEMORY[0x277CCA470];
    v24[0] = @"Missing entitlement required for this method";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v20 = [v17 errorWithDomain:v18 code:0 userInfo:v19];
    v14[2](v14, 0, v20);

LABEL_6:
    goto LABEL_7;
  }

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(a2);
  LODWORD(v15) = [v15 shouldNotRecord:v16 forKey:v13 count:{objc_msgSend(v11, "count")}];

  if (!v15)
  {
    v18 = os_transaction_create();
    v21 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", v13, 1, [v11 count]);
    v14[2](v14, 1, 0);
    [(_DPServer *)self recordValues:v11 metadata:v12 forKey:v13 usingSelector:sel_recordStrings_metadata_];
    objc_autoreleasePoolPop(v21);
    goto LABEL_6;
  }

  v14[2](v14, 1, 0);
LABEL_7:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)recordWords:(id)a3 forKey:(id)a4 withReply:(id)a5
{
  v5 = a5;
  v6 = +[_DPLog framework];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [_DPServer recordWords:forKey:withReply:];
  }

  v5[2](v5, 1, 0);
}

- (void)reportsNotYetSubmittedWithReply:(id)a3
{
  v8 = a3;
  v4 = os_transaction_create();
  v5 = objc_autoreleasePoolPush();
  v6 = +[_DPStrings reportsDirectoryPath];
  v7 = [(_DPServer *)self reportsNotYetSubmittedInDirecory:v6];

  v8[2](v8, 1, v7, 0);
  objc_autoreleasePoolPop(v5);
}

- (void)retireReports:(id)a3 withReply:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = os_transaction_create();
  v8 = objc_autoreleasePoolPush();
  v9 = +[_DPStrings reportsDirectoryPath];
  v10 = [(_DPServer *)self retireReports:v11 inDirectory:v9];

  v6[2](v6, v10, 0);
  objc_autoreleasePoolPop(v8);
}

- (BOOL)retireReports:(id)a3 inDirectory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [_DPReportFilesMaintainer retiredReportsPath:v6];
  v9 = [_DPReportFilesMaintainer retireFiles:v5 toDirectory:v8];

  objc_autoreleasePoolPop(v7);
  return v9;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.private.dprivacyd.allow"];
  v7 = v6;
  if (v6 && ([v6 BOOLValue] & 1) != 0)
  {
    v8 = _DPDaemonInterface();
    [v5 setExportedInterface:v8];
    [v5 setExportedObject:self];
    [v5 resume];

    v9 = 1;
  }

  else
  {
    v10 = +[_DPLog daemon];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_DPServer listener:v5 shouldAcceptNewConnection:?];
    }

    [v5 invalidate];
    [(_DPServer *)self donateEventToCoreAnalytics:@"XPCConnectionRejectedWithoutEntitlement" succeeded:0 count:1];
    v9 = 0;
  }

  return v9;
}

- (void)init
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = +[_DPStrings databaseDirectoryPath];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_22622D000, a1, OS_LOG_TYPE_DEBUG, "DataBaseDirectoryPath: %@", v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

+ (void)shouldNotRecord:forKey:count:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0(&dword_22622D000, v0, v1, "%@ for key: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)recordBitValues:metadata:forKey:withReply:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_22622D000, v0, OS_LOG_TYPE_DEBUG, "Skipping recording for key=%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)listener:(void *)a1 shouldAcceptNewConnection:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 processIdentifier];
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

@end