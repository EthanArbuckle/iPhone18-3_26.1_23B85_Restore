@interface CESRSpeechProfileAdminXPCServiceWrapper
- (CESRSpeechProfileAdminXPCServiceWrapper)init;
- (void)beginEvaluationWithSetEnumerator:(id)a3 completion:(id)a4;
- (void)endEvaluation:(id)a3;
- (void)rebuildSpeechProfileForUserId:(id)a3 completion:(id)a4;
@end

@implementation CESRSpeechProfileAdminXPCServiceWrapper

- (void)endEvaluation:(id)a3
{
  xpcServiceBridge = self->_xpcServiceBridge;
  v4 = a3;
  v5 = [(CESRSpeechProfileAdminXPCServiceBridge *)xpcServiceBridge service];
  [v5 endEvaluation:v4];
}

- (void)beginEvaluationWithSetEnumerator:(id)a3 completion:(id)a4
{
  xpcServiceBridge = self->_xpcServiceBridge;
  v6 = a4;
  v7 = a3;
  v8 = [(CESRSpeechProfileAdminXPCServiceBridge *)xpcServiceBridge service];
  [v8 beginEvaluationWithSetEnumerator:v7 completion:v6];
}

- (void)rebuildSpeechProfileForUserId:(id)a3 completion:(id)a4
{
  xpcServiceBridge = self->_xpcServiceBridge;
  v6 = a4;
  v7 = a3;
  v8 = [(CESRSpeechProfileAdminXPCServiceBridge *)xpcServiceBridge service];
  [v8 rebuildSpeechProfileForUserId:v7 completion:v6];
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