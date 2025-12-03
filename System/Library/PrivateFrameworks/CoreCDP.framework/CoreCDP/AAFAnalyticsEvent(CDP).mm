@interface AAFAnalyticsEvent(CDP)
+ (id)analyticsEventWithContext:()CDP eventName:category:;
+ (id)analyticsEventWithFollowUpContext:()CDP eventName:category:;
@end

@implementation AAFAnalyticsEvent(CDP)

+ (id)analyticsEventWithContext:()CDP eventName:category:
{
  v7 = MEMORY[0x1E6985DB0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithEventName:v9 eventCategory:v8 initData:0];

  telemetryFlowID = [v10 telemetryFlowID];
  [v11 setObject:telemetryFlowID forKeyedSubscript:*MEMORY[0x1E6985E48]];

  telemetryDeviceSessionID = [v10 telemetryDeviceSessionID];
  [v11 setObject:telemetryDeviceSessionID forKeyedSubscript:*MEMORY[0x1E6985E30]];

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "type")}];
  [v11 setObject:v14 forKeyedSubscript:@"contextType"];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "walrusStatus")}];
  [v11 setObject:v15 forKeyedSubscript:@"advancedDataProtectionState"];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "securityLevel")}];
  [v11 setObject:v16 forKeyedSubscript:@"securityLevel"];

  followUpType = [v10 followUpType];
  [v11 setObject:followUpType forKeyedSubscript:@"cfuType"];

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "keychainSyncSystem")}];
  [v11 setObject:v18 forKeyedSubscript:@"keychainSyncSystemType"];

  accountType = [v10 accountType];
  [v11 setObject:accountType forKeyedSubscript:@"accountType"];

  adpCohort = [v10 adpCohort];

  [v11 setObject:adpCohort forKeyedSubscript:@"telemetryVersion"];

  return v11;
}

+ (id)analyticsEventWithFollowUpContext:()CDP eventName:category:
{
  v7 = MEMORY[0x1E6985DB0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithEventName:v9 eventCategory:v8 initData:0];

  telemetryFlowID = [v10 telemetryFlowID];
  [v11 setObject:telemetryFlowID forKeyedSubscript:*MEMORY[0x1E6985E48]];

  telemetryDeviceSessionID = [v10 telemetryDeviceSessionID];

  [v11 setObject:telemetryDeviceSessionID forKeyedSubscript:*MEMORY[0x1E6985E30]];

  return v11;
}

@end