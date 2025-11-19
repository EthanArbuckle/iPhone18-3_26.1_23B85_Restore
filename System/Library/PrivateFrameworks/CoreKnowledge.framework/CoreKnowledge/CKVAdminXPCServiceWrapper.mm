@interface CKVAdminXPCServiceWrapper
- (CKVAdminXPCServiceWrapper)init;
- (void)beginEvaluation:(id)a3 clean:(BOOL)a4 completion:(id)a5;
- (void)captureVocabularySnapshot:(id)a3 completion:(id)a4;
- (void)deleteAllItemsWithUserId:(id)a3 completion:(id)a4;
- (void)deleteAllItemsWithUserId:(id)a3 deviceId:(id)a4 completion:(id)a5;
- (void)endEvaluation:(id)a3;
- (void)finishEventSimulation:(id)a3;
- (void)handleTask:(unsigned __int16)a3 reason:(unsigned __int16)a4 completion:(id)a5;
- (void)rebuildSpeechProfileForUserId:(id)a3 completion:(id)a4;
- (void)startEventSimulation:(BOOL)a3 completion:(id)a4;
- (void)triggerMaintenance:(id)a3;
- (void)triggerMigration:(BOOL)a3 completeAfterTrigger:(BOOL)a4 completion:(id)a5;
@end

@implementation CKVAdminXPCServiceWrapper

- (void)endEvaluation:(id)a3
{
  xpcServiceBridge = self->_xpcServiceBridge;
  v4 = a3;
  v5 = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [v5 endEvaluation:v4];
}

- (void)beginEvaluation:(id)a3 clean:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  xpcServiceBridge = self->_xpcServiceBridge;
  v8 = a5;
  v9 = a3;
  v10 = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [v10 beginEvaluation:v9 clean:v5 completion:v8];
}

- (void)deleteAllItemsWithUserId:(id)a3 deviceId:(id)a4 completion:(id)a5
{
  xpcServiceBridge = self->_xpcServiceBridge;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [v11 deleteAllItemsWithUserId:v10 deviceId:v9 completion:v8];
}

- (void)deleteAllItemsWithUserId:(id)a3 completion:(id)a4
{
  xpcServiceBridge = self->_xpcServiceBridge;
  v6 = a4;
  v7 = a3;
  v8 = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [v8 deleteAllItemsWithUserId:v7 completion:v6];
}

- (void)rebuildSpeechProfileForUserId:(id)a3 completion:(id)a4
{
  xpcServiceBridge = self->_xpcServiceBridge;
  v6 = a4;
  v7 = a3;
  v8 = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [v8 rebuildSpeechProfileForUserId:v7 completion:v6];
}

- (void)captureVocabularySnapshot:(id)a3 completion:(id)a4
{
  xpcServiceBridge = self->_xpcServiceBridge;
  v6 = a4;
  v7 = a3;
  v8 = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [v8 captureVocabularySnapshot:v7 completion:v6];
}

- (void)triggerMaintenance:(id)a3
{
  xpcServiceBridge = self->_xpcServiceBridge;
  v4 = a3;
  v5 = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [v5 triggerMaintenance:v4];
}

- (void)triggerMigration:(BOOL)a3 completeAfterTrigger:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  xpcServiceBridge = self->_xpcServiceBridge;
  v8 = a5;
  v9 = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [v9 triggerMigration:v6 completeAfterTrigger:v5 completion:v8];
}

- (void)finishEventSimulation:(id)a3
{
  xpcServiceBridge = self->_xpcServiceBridge;
  v4 = a3;
  v5 = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [v5 finishEventSimulation:v4];
}

- (void)handleTask:(unsigned __int16)a3 reason:(unsigned __int16)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  xpcServiceBridge = self->_xpcServiceBridge;
  v8 = a5;
  v9 = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [v9 handleTask:v6 reason:v5 completion:v8];
}

- (void)startEventSimulation:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  xpcServiceBridge = self->_xpcServiceBridge;
  v6 = a4;
  v7 = [(CKVXPCServiceBridge *)xpcServiceBridge service];
  [v7 startEventSimulation:v4 completion:v6];
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