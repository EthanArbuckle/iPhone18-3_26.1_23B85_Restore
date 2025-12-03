@interface CESRSpeechProfileAdminXPCServiceWrapper
- (CESRSpeechProfileAdminXPCServiceWrapper)init;
- (void)beginEvaluationWithSetEnumerator:(id)enumerator completion:(id)completion;
- (void)endEvaluation:(id)evaluation;
- (void)rebuildSpeechProfileForUserId:(id)id completion:(id)completion;
@end

@implementation CESRSpeechProfileAdminXPCServiceWrapper

- (void)endEvaluation:(id)evaluation
{
  xpcServiceBridge = self->_xpcServiceBridge;
  evaluationCopy = evaluation;
  service = [(CESRSpeechProfileAdminXPCServiceBridge *)xpcServiceBridge service];
  [service endEvaluation:evaluationCopy];
}

- (void)beginEvaluationWithSetEnumerator:(id)enumerator completion:(id)completion
{
  xpcServiceBridge = self->_xpcServiceBridge;
  completionCopy = completion;
  enumeratorCopy = enumerator;
  service = [(CESRSpeechProfileAdminXPCServiceBridge *)xpcServiceBridge service];
  [service beginEvaluationWithSetEnumerator:enumeratorCopy completion:completionCopy];
}

- (void)rebuildSpeechProfileForUserId:(id)id completion:(id)completion
{
  xpcServiceBridge = self->_xpcServiceBridge;
  completionCopy = completion;
  idCopy = id;
  service = [(CESRSpeechProfileAdminXPCServiceBridge *)xpcServiceBridge service];
  [service rebuildSpeechProfileForUserId:idCopy completion:completionCopy];
}

- (CESRSpeechProfileAdminXPCServiceWrapper)init
{
  v7.receiver = self;
  v7.super_class = CESRSpeechProfileAdminXPCServiceWrapper;
  v2 = [(CESRSpeechProfileAdminXPCServiceWrapper *)&v7 init];
  if (v2 && (v3 = [[CESRSpeechProfileAdminXPCServiceBridge alloc] initWithServiceProtocol:&unk_28395A128 machServiceName:@"com.apple.corespeech.corespeechd.speechprofileadmin.service"], xpcServiceBridge = v2->_xpcServiceBridge, v2->_xpcServiceBridge = v3, xpcServiceBridge, !v2->_xpcServiceBridge))
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