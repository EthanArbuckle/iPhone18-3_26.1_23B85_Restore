@interface OSIBLMState
@end

@implementation OSIBLMState

uint64_t __30___OSIBLMState_sharedInstance__block_invoke()
{
  sharedInstance_instance_5 = objc_alloc_init(_OSIBLMState);

  return MEMORY[0x2821F96F8]();
}

void __33___OSIBLMState_monitorForAutoLPM__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33___OSIBLMState_monitorForAutoLPM__block_invoke_2;
  block[3] = &unk_2799C1770;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __33___OSIBLMState_monitorForAutoLPM__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CFE318] userContext];
  v18 = a1;
  [*(a1 + 32) setContext:v2];

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.osintelligence.iblm.AutoLPMState", v3);
  [*(a1 + 32) setQueue:v4];

  v17 = MEMORY[0x277CFE360];
  v5 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  v6 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:21];
  v8 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:19];
  v10 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:11];
  v12 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:9];
  v14 = [v17 predicateForKeyPath:v5 withFormat:@"SELF.%@.value == %@ OR SELF.%@.value == %@ OR SELF.%@.value == %@ OR SELF.%@.value == %@", v6, v7, v8, v9, v10, v11, v12, v13];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __33___OSIBLMState_monitorForAutoLPM__block_invoke_3;
  v19[3] = &unk_2799C1838;
  v19[4] = *(v18 + 32);
  v15 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.osintelligence.iblm.autoLPMQuery" contextualPredicate:v14 clientIdentifier:@"com.apple.osintelligence.iblmState.contextstore-registration" callback:v19];
  v16 = [*(v18 + 32) context];
  [v16 registerCallback:v15];
}

void __33___OSIBLMState_monitorForAutoLPM__block_invoke_3(uint64_t a1)
{
  v2 = +[_OSBatteryPredictor predictor];
  v3 = [v2 recommendsAutoLPMWithError:0];

  v4 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33___OSIBLMState_monitorForAutoLPM__block_invoke_4;
  v5[3] = &unk_2799C1D08;
  v5[4] = *(a1 + 32);
  v6 = v3;
  dispatch_sync(v4, v5);
}

@end