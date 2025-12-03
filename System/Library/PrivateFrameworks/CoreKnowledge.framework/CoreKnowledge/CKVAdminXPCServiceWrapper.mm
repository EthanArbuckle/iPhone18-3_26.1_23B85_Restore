@interface CKVAdminXPCServiceWrapper
- (CKVAdminXPCServiceWrapper)init;
- (void)beginEvaluation:(id)evaluation clean:(BOOL)clean completion:(id)completion;
- (void)captureVocabularySnapshot:(id)snapshot completion:(id)completion;
- (void)deleteAllItemsWithUserId:(id)id completion:(id)completion;
- (void)deleteAllItemsWithUserId:(id)id deviceId:(id)deviceId completion:(id)completion;
- (void)endEvaluation:(id)evaluation;
- (void)finishEventSimulation:(id)simulation;
- (void)handleTask:(unsigned __int16)task reason:(unsigned __int16)reason completion:(id)completion;
- (void)rebuildSpeechProfileForUserId:(id)id completion:(id)completion;
- (void)startEventSimulation:(BOOL)simulation completion:(id)completion;
- (void)triggerMaintenance:(id)maintenance;
- (void)triggerMigration:(BOOL)migration completeAfterTrigger:(BOOL)trigger completion:(id)completion;
@end

@implementation CKVAdminXPCServiceWrapper

- (void)endEvaluation:(id)evaluation
{
  xpcServiceBridge = self->_xpcServiceBridge;
  evaluationCopy = evaluation;
  service = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [service endEvaluation:evaluationCopy];
}

- (void)beginEvaluation:(id)evaluation clean:(BOOL)clean completion:(id)completion
{
  cleanCopy = clean;
  xpcServiceBridge = self->_xpcServiceBridge;
  completionCopy = completion;
  evaluationCopy = evaluation;
  service = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [service beginEvaluation:evaluationCopy clean:cleanCopy completion:completionCopy];
}

- (void)deleteAllItemsWithUserId:(id)id deviceId:(id)deviceId completion:(id)completion
{
  xpcServiceBridge = self->_xpcServiceBridge;
  completionCopy = completion;
  deviceIdCopy = deviceId;
  idCopy = id;
  service = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [service deleteAllItemsWithUserId:idCopy deviceId:deviceIdCopy completion:completionCopy];
}

- (void)deleteAllItemsWithUserId:(id)id completion:(id)completion
{
  xpcServiceBridge = self->_xpcServiceBridge;
  completionCopy = completion;
  idCopy = id;
  service = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [service deleteAllItemsWithUserId:idCopy completion:completionCopy];
}

- (void)rebuildSpeechProfileForUserId:(id)id completion:(id)completion
{
  xpcServiceBridge = self->_xpcServiceBridge;
  completionCopy = completion;
  idCopy = id;
  service = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [service rebuildSpeechProfileForUserId:idCopy completion:completionCopy];
}

- (void)captureVocabularySnapshot:(id)snapshot completion:(id)completion
{
  xpcServiceBridge = self->_xpcServiceBridge;
  completionCopy = completion;
  snapshotCopy = snapshot;
  service = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [service captureVocabularySnapshot:snapshotCopy completion:completionCopy];
}

- (void)triggerMaintenance:(id)maintenance
{
  xpcServiceBridge = self->_xpcServiceBridge;
  maintenanceCopy = maintenance;
  service = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [service triggerMaintenance:maintenanceCopy];
}

- (void)triggerMigration:(BOOL)migration completeAfterTrigger:(BOOL)trigger completion:(id)completion
{
  triggerCopy = trigger;
  migrationCopy = migration;
  xpcServiceBridge = self->_xpcServiceBridge;
  completionCopy = completion;
  service = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [service triggerMigration:migrationCopy completeAfterTrigger:triggerCopy completion:completionCopy];
}

- (void)finishEventSimulation:(id)simulation
{
  xpcServiceBridge = self->_xpcServiceBridge;
  simulationCopy = simulation;
  service = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [service finishEventSimulation:simulationCopy];
}

- (void)handleTask:(unsigned __int16)task reason:(unsigned __int16)reason completion:(id)completion
{
  reasonCopy = reason;
  taskCopy = task;
  xpcServiceBridge = self->_xpcServiceBridge;
  completionCopy = completion;
  service = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [service handleTask:taskCopy reason:reasonCopy completion:completionCopy];
}

- (void)startEventSimulation:(BOOL)simulation completion:(id)completion
{
  simulationCopy = simulation;
  xpcServiceBridge = self->_xpcServiceBridge;
  completionCopy = completion;
  service = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [service startEventSimulation:simulationCopy completion:completionCopy];
}

- (CKVAdminXPCServiceWrapper)init
{
  v7.receiver = self;
  v7.super_class = CKVAdminXPCServiceWrapper;
  v2 = [(CKVAdminXPCServiceWrapper *)&v7 init];
  if (v2 && (v3 = [[CKVXPCServiceBridge alloc] initWithServiceProtocol:&unk_1F485D650 machServiceName:@"com.apple.siriknowledged.vocabulary.admin"], xpcServiceBridge = v2->_xpcServiceBridge, v2->_xpcServiceBridge = v3, xpcServiceBridge, !v2->_xpcServiceBridge))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

@end