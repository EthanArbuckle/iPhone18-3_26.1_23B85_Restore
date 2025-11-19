@interface _OSIBatteryLifeManager
+ (id)sharedInstance;
- (_OSIBatteryLifeManager)init;
- (id)mitigationWithError:(id *)a3;
- (void)overrideAllMitigations:(unint64_t)a3;
- (void)overrideCLPCMitigations:(unint64_t)a3;
- (void)registerForDrainLevelPredictionForClient:(id)a3 withithUpdateHandler:(id)a4;
@end

@implementation _OSIBatteryLifeManager

- (_OSIBatteryLifeManager)init
{
  v16.receiver = self;
  v16.super_class = _OSIBatteryLifeManager;
  v2 = [(_OSIBatteryLifeManager *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.osintelligence.iblm.batteryLifeManager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = os_log_create("com.apple.osintelligence", "OSIBatteryLifeManager");
    log = v2->_log;
    v2->_log = v6;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    clientToHandler = v2->_clientToHandler;
    v2->_clientToHandler = v8;

    objc_initWeak(&location, v2);
    v10 = [@"com.apple.osintelligence.iblm.mitigationchanged" UTF8String];
    v11 = dispatch_get_global_queue(-32768, 0);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __30___OSIBatteryLifeManager_init__block_invoke;
    v13[3] = &unk_2799C1970;
    objc_copyWeak(&v14, &location);
    notify_register_dispatch(v10, &v2->_notifyToken, v11, v13);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[_OSIBatteryLifeManager sharedInstance];
  }

  v3 = sharedInstance_instance_1;

  return v3;
}

- (id)mitigationWithError:(id *)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = +[_OSBatteryPredictor predictor];
  v6 = [v5 batteryLifeMitigationWithError:a3];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_25D171000, log, OS_LOG_TYPE_DEFAULT, "Current OSIBLMitigation %@", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)registerForDrainLevelPredictionForClient:(id)a3 withithUpdateHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = MEMORY[0x25F893860](v6);
  [(NSMutableDictionary *)self->_clientToHandler setObject:v8 forKeyedSubscript:v7];

  v12 = 0;
  v9 = [(_OSIBatteryLifeManager *)self mitigationWithError:&v12];
  v10 = v12;
  if (v10)
  {
    v11 = [(_OSIBatteryLifeManager *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __30___OSIBatteryLifeManager_init__block_invoke_cold_1(v10, v11);
    }
  }

  v6[2](v6, v9);
}

- (void)overrideAllMitigations:(unint64_t)a3
{
  v4 = +[_OSBatteryPredictor predictor];
  [v4 overrideAllMitigations:a3];
}

- (void)overrideCLPCMitigations:(unint64_t)a3
{
  v4 = +[_OSBatteryPredictor predictor];
  [v4 overrideCLPCMitigations:a3];
}

@end