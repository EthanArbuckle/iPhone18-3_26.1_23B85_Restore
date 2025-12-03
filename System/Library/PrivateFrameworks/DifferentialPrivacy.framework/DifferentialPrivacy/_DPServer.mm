@interface _DPServer
+ (BOOL)shouldNotRecord:(id)record forKey:(id)key count:(unint64_t)count;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)metadataMethodsAllowed;
- (BOOL)retireReports:(id)reports inDirectory:(id)directory;
- (_DPServer)init;
- (_DPServer)initWithDatabaseDirectoryPath:(id)path reportsDirectoryPath:(id)directoryPath enablePeriodicTasks:(BOOL)tasks enterSandbox:(BOOL)sandbox;
- (void)init;
- (void)recordBitValues:(id)values forKey:(id)key withReply:(id)reply;
- (void)recordBitValues:(id)values metadata:(id)metadata forKey:(id)key withReply:(id)reply;
- (void)recordBitVectors:(id)vectors forKey:(id)key withReply:(id)reply;
- (void)recordBitVectors:(id)vectors metadata:(id)metadata forKey:(id)key withReply:(id)reply;
- (void)recordFloatVectors:(id)vectors forKey:(id)key withReply:(id)reply;
- (void)recordFloatVectors:(id)vectors metadata:(id)metadata forKey:(id)key withReply:(id)reply;
- (void)recordNumbers:(id)numbers forKey:(id)key withReply:(id)reply;
- (void)recordNumbers:(id)numbers metadata:(id)metadata forKey:(id)key withReply:(id)reply;
- (void)recordNumbersVectors:(id)vectors forKey:(id)key withReply:(id)reply;
- (void)recordNumbersVectors:(id)vectors metadata:(id)metadata forKey:(id)key withReply:(id)reply;
- (void)recordStrings:(id)strings forKey:(id)key withReply:(id)reply;
- (void)recordStrings:(id)strings metadata:(id)metadata forKey:(id)key withReply:(id)reply;
- (void)recordValues:(id)values metadata:(id)metadata forKey:(id)key usingSelector:(SEL)selector;
- (void)recordWords:(id)words forKey:(id)key withReply:(id)reply;
- (void)reportsNotYetSubmittedWithReply:(id)reply;
- (void)retireReports:(id)reports withReply:(id)reply;
- (void)setupPeriodicTasksWith:(id)with;
- (void)start;
@end

@implementation _DPServer

- (BOOL)metadataMethodsAllowed
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v3 = [currentConnection valueForEntitlement:@"com.apple.private.dprivacyd.metadata.allow"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
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

- (void)setupPeriodicTasksWith:(id)with
{
  withCopy = with;
  v3 = objc_opt_new();
  [v3 scheduleMaintenanceWithName:@"com.apple.DifferentialPrivacy.ReportFilesMaintenance" database:withCopy];
  [withCopy scheduleStorageCullingWithName:@"com.apple.DifferentialPrivacy.StorageCulling" database:withCopy];
  [withCopy scheduleMaintenanceWithName:@"com.apple.DifferentialPrivacy.StorageMaintenance" database:withCopy];
  v4 = objc_opt_new();
  [v4 scheduleMaintenanceWithName:@"com.apple.DifferentialPrivacy.TransparencyLogMaintenance" database:withCopy];
  if (!+[_DPDeviceInfo isRunningAsLaunchDaemon])
  {
    v5 = objc_opt_new();
    [v5 scheduleMaintenanceWithName:@"com.apple.DifferentialPrivacy.DediscoReporter" database:withCopy];
    v6 = objc_opt_new();
    [v6 scheduleMaintenanceWithName:@"com.apple.DifferentialPrivacy.PrivacyBudgetMaintenance" database:withCopy];
    v7 = objc_opt_new();
    [v7 scheduleMaintenanceWithName:@"com.apple.DifferentialPrivacy.runtimeBlacklistMaintenance" database:withCopy];
    v8 = objc_opt_new();
    [v8 scheduleMaintenanceWithName:@"com.apple.DifferentialPrivacy.serverBlacklistUpdate" database:withCopy];
    v9 = [[_DPTokenFetcher alloc] initWithTaskName:@"com.apple.DifferentialPrivacy.TokenFetcher"];
    [(_DPTokenFetcher *)v9 scheduleMaintenanceWithName:@"com.apple.DifferentialPrivacy.TokenFetcher" database:withCopy];
  }
}

- (_DPServer)initWithDatabaseDirectoryPath:(id)path reportsDirectoryPath:(id)directoryPath enablePeriodicTasks:(BOOL)tasks enterSandbox:(BOOL)sandbox
{
  tasksCopy = tasks;
  pathCopy = path;
  directoryPathCopy = directoryPath;
  v11 = pathCopy;
  v12 = directoryPathCopy;
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
    if (tasksCopy)
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

+ (BOOL)shouldNotRecord:(id)record forKey:(id)key count:(unint64_t)count
{
  countCopy = count;
  recordCopy = record;
  keyCopy = key;
  v9 = [_DPKeyNames keyPropertiesForKey:keyCopy];
  approvedForNonDNU = [v9 approvedForNonDNU];
  transport = [v9 transport];
  if (+[_DPDeviceInfo isDataCollectionEnabled]|| (approvedForNonDNU & 1) != 0)
  {
    if (![_DPDeviceInfo isDisabledByTaskingForTransport:transport])
    {
      v19 = 0;
      goto LABEL_16;
    }

    recordCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Disabled by Tasking (%lu)", recordCopy, transport];
    v16 = +[_DPLog daemon];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[_DPServer shouldNotRecord:forKey:count:];
    }

    telemetryAllowed = [v9 telemetryAllowed];
    v18 = 1;
    if ((telemetryAllowed & 1) == 0)
    {
      v18 = +[_DPDeviceInfo isInternalBuild];
    }

    LOBYTE(v24) = v18;
    LODWORD(v22) = 1;
    HIDWORD(v22) = countCopy;
    [_DPLHBitacoraLogger donateEventToBitacoraForKey:keyCopy eventPhase:1 uuid:0 succeeded:0 errorCode:103 errorMessage:recordCopy aggregateFunction:v22 count:v24 telemetryAllowed:?];
  }

  else
  {
    recordCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Disabled by D&U switch and not approved for non D&U", recordCopy];
    v13 = +[_DPLog daemon];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[_DPServer shouldNotRecord:forKey:count:];
    }

    telemetryAllowed2 = [v9 telemetryAllowed];
    v15 = 1;
    if ((telemetryAllowed2 & 1) == 0)
    {
      v15 = +[_DPDeviceInfo isInternalBuild];
    }

    LOBYTE(v23) = v15;
    LODWORD(v21) = 1;
    HIDWORD(v21) = countCopy;
    [_DPLHBitacoraLogger donateEventToBitacoraForKey:keyCopy eventPhase:1 uuid:0 succeeded:0 errorCode:102 errorMessage:recordCopy aggregateFunction:v21 count:v23 telemetryAllowed:?];
  }

  v19 = 1;
LABEL_16:

  return v19;
}

- (void)recordValues:(id)values metadata:(id)metadata forKey:(id)key usingSelector:(SEL)selector
{
  valuesCopy = values;
  metadataCopy = metadata;
  keyCopy = key;
  v11 = [[_DPDatabaseRecorder alloc] initWithKey:keyCopy storage:self->_db];
  v12 = [valuesCopy count];
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

      v18 = [valuesCopy subarrayWithRange:{v14, v17}];
      [(_DPDatabaseRecorder *)v11 performSelector:selector withObject:v18 withObject:metadataCopy];
      v15 -= v17;

      objc_autoreleasePoolPop(v16);
      v14 += 128;
    }

    while (v14 < v13);
  }
}

- (void)recordBitValues:(id)values forKey:(id)key withReply:(id)reply
{
  valuesCopy = values;
  keyCopy = key;
  replyCopy = reply;
  v11 = objc_opt_class();
  v12 = NSStringFromSelector(a2);
  LODWORD(v11) = [v11 shouldNotRecord:v12 forKey:keyCopy count:{objc_msgSend(valuesCopy, "count")}];

  if (v11)
  {
    replyCopy[2](replyCopy, 1, 0);
  }

  else
  {
    v13 = os_transaction_create();
    v14 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", keyCopy, 1, [valuesCopy count]);
    replyCopy[2](replyCopy, 1, 0);
    [(_DPServer *)self recordValues:valuesCopy forKey:keyCopy usingSelector:sel_recordBitValues_];
    objc_autoreleasePoolPop(v14);
  }
}

- (void)recordBitValues:(id)values metadata:(id)metadata forKey:(id)key withReply:(id)reply
{
  v25[1] = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  metadataCopy = metadata;
  keyCopy = key;
  replyCopy = reply;
  if (![(_DPServer *)self metadataMethodsAllowed])
  {
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", keyCopy, 0, [valuesCopy count]);
    v18 = MEMORY[0x277CCA9B8];
    v19 = +[_DPStrings errorDomain];
    v24 = *MEMORY[0x277CCA470];
    v25[0] = @"Missing entitlement required for this method";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v21 = [v18 errorWithDomain:v19 code:0 userInfo:v20];
    replyCopy[2](replyCopy, 0, v21);

LABEL_8:
    goto LABEL_9;
  }

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(a2);
  LODWORD(v15) = [v15 shouldNotRecord:v16 forKey:keyCopy count:{objc_msgSend(valuesCopy, "count")}];

  if (!v15)
  {
    v19 = os_transaction_create();
    v22 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", keyCopy, 1, [valuesCopy count]);
    replyCopy[2](replyCopy, 1, 0);
    [(_DPServer *)self recordValues:valuesCopy metadata:metadataCopy forKey:keyCopy usingSelector:sel_recordBitValues_metadata_];
    objc_autoreleasePoolPop(v22);
    goto LABEL_8;
  }

  v17 = +[_DPLog daemon];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [_DPServer recordBitValues:metadata:forKey:withReply:];
  }

  replyCopy[2](replyCopy, 1, 0);
LABEL_9:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)recordBitVectors:(id)vectors forKey:(id)key withReply:(id)reply
{
  vectorsCopy = vectors;
  keyCopy = key;
  replyCopy = reply;
  v11 = objc_opt_class();
  v12 = NSStringFromSelector(a2);
  LODWORD(v11) = [v11 shouldNotRecord:v12 forKey:keyCopy count:{objc_msgSend(vectorsCopy, "count")}];

  if (v11)
  {
    replyCopy[2](replyCopy, 1, 0);
  }

  else
  {
    v13 = os_transaction_create();
    v14 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", keyCopy, 1, [vectorsCopy count]);
    replyCopy[2](replyCopy, 1, 0);
    [(_DPServer *)self recordValues:vectorsCopy forKey:keyCopy usingSelector:sel_recordBitVectors_];
    objc_autoreleasePoolPop(v14);
  }
}

- (void)recordBitVectors:(id)vectors metadata:(id)metadata forKey:(id)key withReply:(id)reply
{
  v24[1] = *MEMORY[0x277D85DE8];
  vectorsCopy = vectors;
  metadataCopy = metadata;
  keyCopy = key;
  replyCopy = reply;
  if (![(_DPServer *)self metadataMethodsAllowed])
  {
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", keyCopy, 0, [vectorsCopy count]);
    v17 = MEMORY[0x277CCA9B8];
    v18 = +[_DPStrings errorDomain];
    v23 = *MEMORY[0x277CCA470];
    v24[0] = @"Missing entitlement required for this method";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v20 = [v17 errorWithDomain:v18 code:0 userInfo:v19];
    replyCopy[2](replyCopy, 0, v20);

LABEL_6:
    goto LABEL_7;
  }

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(a2);
  LODWORD(v15) = [v15 shouldNotRecord:v16 forKey:keyCopy count:{objc_msgSend(vectorsCopy, "count")}];

  if (!v15)
  {
    v18 = os_transaction_create();
    v21 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", keyCopy, 1, [vectorsCopy count]);
    replyCopy[2](replyCopy, 1, 0);
    [(_DPServer *)self recordValues:vectorsCopy metadata:metadataCopy forKey:keyCopy usingSelector:sel_recordBitVectors_metadata_];
    objc_autoreleasePoolPop(v21);
    goto LABEL_6;
  }

  replyCopy[2](replyCopy, 1, 0);
LABEL_7:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)recordFloatVectors:(id)vectors forKey:(id)key withReply:(id)reply
{
  vectorsCopy = vectors;
  keyCopy = key;
  replyCopy = reply;
  v11 = objc_opt_class();
  v12 = NSStringFromSelector(a2);
  LODWORD(v11) = [v11 shouldNotRecord:v12 forKey:keyCopy count:{objc_msgSend(vectorsCopy, "count")}];

  if (v11)
  {
    replyCopy[2](replyCopy, 1, 0);
  }

  else
  {
    v13 = os_transaction_create();
    v14 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", keyCopy, 1, [vectorsCopy count]);
    [(_DPServer *)self recordValues:vectorsCopy forKey:keyCopy usingSelector:sel_recordFloatVectors_];
    replyCopy[2](replyCopy, 1, 0);
    objc_autoreleasePoolPop(v14);
  }
}

- (void)recordFloatVectors:(id)vectors metadata:(id)metadata forKey:(id)key withReply:(id)reply
{
  v24[1] = *MEMORY[0x277D85DE8];
  vectorsCopy = vectors;
  metadataCopy = metadata;
  keyCopy = key;
  replyCopy = reply;
  if (![(_DPServer *)self metadataMethodsAllowed])
  {
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", keyCopy, 0, [vectorsCopy count]);
    v17 = MEMORY[0x277CCA9B8];
    v18 = +[_DPStrings errorDomain];
    v23 = *MEMORY[0x277CCA470];
    v24[0] = @"Missing entitlement required for this method";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v20 = [v17 errorWithDomain:v18 code:0 userInfo:v19];
    replyCopy[2](replyCopy, 0, v20);

LABEL_6:
    goto LABEL_7;
  }

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(a2);
  LODWORD(v15) = [v15 shouldNotRecord:v16 forKey:keyCopy count:{objc_msgSend(vectorsCopy, "count")}];

  if (!v15)
  {
    v18 = os_transaction_create();
    v21 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", keyCopy, 1, [vectorsCopy count]);
    [(_DPServer *)self recordValues:vectorsCopy metadata:metadataCopy forKey:keyCopy usingSelector:sel_recordFloatVectors_metadata_];
    replyCopy[2](replyCopy, 1, 0);
    objc_autoreleasePoolPop(v21);
    goto LABEL_6;
  }

  replyCopy[2](replyCopy, 1, 0);
LABEL_7:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)recordNumbers:(id)numbers forKey:(id)key withReply:(id)reply
{
  numbersCopy = numbers;
  keyCopy = key;
  replyCopy = reply;
  v11 = objc_opt_class();
  v12 = NSStringFromSelector(a2);
  LODWORD(v11) = [v11 shouldNotRecord:v12 forKey:keyCopy count:{objc_msgSend(numbersCopy, "count")}];

  if (v11)
  {
    replyCopy[2](replyCopy, 1, 0);
  }

  else
  {
    v13 = os_transaction_create();
    v14 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", keyCopy, 1, [numbersCopy count]);
    replyCopy[2](replyCopy, 1, 0);
    [(_DPServer *)self recordValues:numbersCopy forKey:keyCopy usingSelector:sel_recordNumbers_];
    objc_autoreleasePoolPop(v14);
  }
}

- (void)recordNumbers:(id)numbers metadata:(id)metadata forKey:(id)key withReply:(id)reply
{
  v24[1] = *MEMORY[0x277D85DE8];
  numbersCopy = numbers;
  metadataCopy = metadata;
  keyCopy = key;
  replyCopy = reply;
  if (![(_DPServer *)self metadataMethodsAllowed])
  {
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", keyCopy, 0, [numbersCopy count]);
    v17 = MEMORY[0x277CCA9B8];
    v18 = +[_DPStrings errorDomain];
    v23 = *MEMORY[0x277CCA470];
    v24[0] = @"Missing entitlement required for this method";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v20 = [v17 errorWithDomain:v18 code:0 userInfo:v19];
    replyCopy[2](replyCopy, 0, v20);

LABEL_6:
    goto LABEL_7;
  }

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(a2);
  LODWORD(v15) = [v15 shouldNotRecord:v16 forKey:keyCopy count:{objc_msgSend(numbersCopy, "count")}];

  if (!v15)
  {
    v18 = os_transaction_create();
    v21 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", keyCopy, 1, [numbersCopy count]);
    replyCopy[2](replyCopy, 1, 0);
    [(_DPServer *)self recordValues:numbersCopy metadata:metadataCopy forKey:keyCopy usingSelector:sel_recordNumbers_metadata_];
    objc_autoreleasePoolPop(v21);
    goto LABEL_6;
  }

  replyCopy[2](replyCopy, 1, 0);
LABEL_7:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)recordNumbersVectors:(id)vectors forKey:(id)key withReply:(id)reply
{
  vectorsCopy = vectors;
  keyCopy = key;
  replyCopy = reply;
  v11 = objc_opt_class();
  v12 = NSStringFromSelector(a2);
  LODWORD(v11) = [v11 shouldNotRecord:v12 forKey:keyCopy count:{objc_msgSend(vectorsCopy, "count")}];

  if (v11)
  {
    replyCopy[2](replyCopy, 1, 0);
  }

  else
  {
    v13 = os_transaction_create();
    v14 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", keyCopy, 1, [vectorsCopy count]);
    replyCopy[2](replyCopy, 1, 0);
    [(_DPServer *)self recordValues:vectorsCopy forKey:keyCopy usingSelector:sel_recordNumbersVectors_];
    objc_autoreleasePoolPop(v14);
  }
}

- (void)recordNumbersVectors:(id)vectors metadata:(id)metadata forKey:(id)key withReply:(id)reply
{
  v24[1] = *MEMORY[0x277D85DE8];
  vectorsCopy = vectors;
  metadataCopy = metadata;
  keyCopy = key;
  replyCopy = reply;
  if (![(_DPServer *)self metadataMethodsAllowed])
  {
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", keyCopy, 0, [vectorsCopy count]);
    v17 = MEMORY[0x277CCA9B8];
    v18 = +[_DPStrings errorDomain];
    v23 = *MEMORY[0x277CCA470];
    v24[0] = @"Missing entitlement required for this method";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v20 = [v17 errorWithDomain:v18 code:0 userInfo:v19];
    replyCopy[2](replyCopy, 0, v20);

LABEL_6:
    goto LABEL_7;
  }

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(a2);
  LODWORD(v15) = [v15 shouldNotRecord:v16 forKey:keyCopy count:{objc_msgSend(vectorsCopy, "count")}];

  if (!v15)
  {
    v18 = os_transaction_create();
    v21 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", keyCopy, 1, [vectorsCopy count]);
    replyCopy[2](replyCopy, 1, 0);
    [(_DPServer *)self recordValues:vectorsCopy metadata:metadataCopy forKey:keyCopy usingSelector:sel_recordNumbersVectors_metadata_];
    objc_autoreleasePoolPop(v21);
    goto LABEL_6;
  }

  replyCopy[2](replyCopy, 1, 0);
LABEL_7:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)recordStrings:(id)strings forKey:(id)key withReply:(id)reply
{
  stringsCopy = strings;
  keyCopy = key;
  replyCopy = reply;
  v11 = objc_opt_class();
  v12 = NSStringFromSelector(a2);
  LODWORD(v11) = [v11 shouldNotRecord:v12 forKey:keyCopy count:{objc_msgSend(stringsCopy, "count")}];

  if (v11)
  {
    replyCopy[2](replyCopy, 1, 0);
  }

  else
  {
    v13 = os_transaction_create();
    v14 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", keyCopy, 1, [stringsCopy count]);
    replyCopy[2](replyCopy, 1, 0);
    [(_DPServer *)self recordValues:stringsCopy forKey:keyCopy usingSelector:sel_recordStrings_];
    objc_autoreleasePoolPop(v14);
  }
}

- (void)recordStrings:(id)strings metadata:(id)metadata forKey:(id)key withReply:(id)reply
{
  v24[1] = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  metadataCopy = metadata;
  keyCopy = key;
  replyCopy = reply;
  if (![(_DPServer *)self metadataMethodsAllowed])
  {
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", keyCopy, 0, [stringsCopy count]);
    v17 = MEMORY[0x277CCA9B8];
    v18 = +[_DPStrings errorDomain];
    v23 = *MEMORY[0x277CCA470];
    v24[0] = @"Missing entitlement required for this method";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v20 = [v17 errorWithDomain:v18 code:0 userInfo:v19];
    replyCopy[2](replyCopy, 0, v20);

LABEL_6:
    goto LABEL_7;
  }

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(a2);
  LODWORD(v15) = [v15 shouldNotRecord:v16 forKey:keyCopy count:{objc_msgSend(stringsCopy, "count")}];

  if (!v15)
  {
    v18 = os_transaction_create();
    v21 = objc_autoreleasePoolPush();
    -[_DPServer donateDonationReceivedEventToBitacoraForKey:succeeded:count:](self, "donateDonationReceivedEventToBitacoraForKey:succeeded:count:", keyCopy, 1, [stringsCopy count]);
    replyCopy[2](replyCopy, 1, 0);
    [(_DPServer *)self recordValues:stringsCopy metadata:metadataCopy forKey:keyCopy usingSelector:sel_recordStrings_metadata_];
    objc_autoreleasePoolPop(v21);
    goto LABEL_6;
  }

  replyCopy[2](replyCopy, 1, 0);
LABEL_7:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)recordWords:(id)words forKey:(id)key withReply:(id)reply
{
  replyCopy = reply;
  v6 = +[_DPLog framework];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [_DPServer recordWords:forKey:withReply:];
  }

  replyCopy[2](replyCopy, 1, 0);
}

- (void)reportsNotYetSubmittedWithReply:(id)reply
{
  replyCopy = reply;
  v4 = os_transaction_create();
  v5 = objc_autoreleasePoolPush();
  v6 = +[_DPStrings reportsDirectoryPath];
  v7 = [(_DPServer *)self reportsNotYetSubmittedInDirecory:v6];

  replyCopy[2](replyCopy, 1, v7, 0);
  objc_autoreleasePoolPop(v5);
}

- (void)retireReports:(id)reports withReply:(id)reply
{
  reportsCopy = reports;
  replyCopy = reply;
  v7 = os_transaction_create();
  v8 = objc_autoreleasePoolPush();
  v9 = +[_DPStrings reportsDirectoryPath];
  v10 = [(_DPServer *)self retireReports:reportsCopy inDirectory:v9];

  replyCopy[2](replyCopy, v10, 0);
  objc_autoreleasePoolPop(v8);
}

- (BOOL)retireReports:(id)reports inDirectory:(id)directory
{
  reportsCopy = reports;
  directoryCopy = directory;
  v7 = objc_autoreleasePoolPush();
  v8 = [_DPReportFilesMaintainer retiredReportsPath:directoryCopy];
  v9 = [_DPReportFilesMaintainer retireFiles:reportsCopy toDirectory:v8];

  objc_autoreleasePoolPop(v7);
  return v9;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.private.dprivacyd.allow"];
  v7 = v6;
  if (v6 && ([v6 BOOLValue] & 1) != 0)
  {
    v8 = _DPDaemonInterface();
    [connectionCopy setExportedInterface:v8];
    [connectionCopy setExportedObject:self];
    [connectionCopy resume];

    v9 = 1;
  }

  else
  {
    v10 = +[_DPLog daemon];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_DPServer listener:connectionCopy shouldAcceptNewConnection:?];
    }

    [connectionCopy invalidate];
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
  _os_log_debug_impl(&dword_22622D000, self, OS_LOG_TYPE_DEBUG, "DataBaseDirectoryPath: %@", v4, 0xCu);

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