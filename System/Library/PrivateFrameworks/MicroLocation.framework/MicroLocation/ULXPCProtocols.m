@interface ULXPCProtocols
+ (id)requestInterface;
+ (id)responseInterface;
@end

@implementation ULXPCProtocols

+ (id)requestInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286A56F18];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_createServiceWithServiceType_locationTypes_reply_ argumentIndex:1 ofReply:0];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_queryServicesWithReply_ argumentIndex:0 ofReply:1];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_exportDatabaseWithReply_ argumentIndex:0 ofReply:1];
  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v2 setClasses:v14 forSelector:sel_imageFeaturesDebugWithTask_additionalInformation_reply_ argumentIndex:1 ofReply:0];
  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];
  [v2 setClasses:v19 forSelector:sel_getRecordingTriggerUUIDAndRequestMicroLocationRecordingScanWithAdditionalInformation_shouldForceRecording_handler_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v19 forSelector:sel_requestMicroLocationRecordingScanWithAdditionalInformation_reply_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v19 forSelector:sel_requestCurrentMicroLocationWithAdditionalInformation_reply_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)responseInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286A56F78];
  [v2 setClass:objc_opt_class() forSelector:sel_didUpdatePredictionContext_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_didUpdateMap_ argumentIndex:0 ofReply:0];

  return v2;
}

@end