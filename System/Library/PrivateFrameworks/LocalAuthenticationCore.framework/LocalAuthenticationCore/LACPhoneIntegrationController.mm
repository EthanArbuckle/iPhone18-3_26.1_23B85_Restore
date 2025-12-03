@interface LACPhoneIntegrationController
- (BOOL)canAuthenticateRequest:(id)request availabilityError:(id)error error:(id *)a5;
- (LACPhoneIntegrationController)initWithAuthenticator:(id)authenticator clientInfoProvider:(id)provider environmentProvider:(id)environmentProvider sessionMonitor:(id)monitor replyQueue:(id)queue;
- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion;
@end

@implementation LACPhoneIntegrationController

- (BOOL)canAuthenticateRequest:(id)request availabilityError:(id)error error:(id *)a5
{
  swift_unknownObjectRetain();
  selfCopy = self;
  errorCopy = error;
  LACPhoneIntegrationController.canAuthenticateRequest(_:availabilityError:)(request, error);

  swift_unknownObjectRelease();
  return 1;
}

- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned LACEvaluationResult) -> ();
  v11[3] = v9;
  v11[4] = v10;
  v11[5] = request;
  aBlock[4] = closure #1 in LACPhoneIntegrationController.processRequest(_:configuration:completion:)partial apply;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
  aBlock[3] = &block_descriptor_14;
  v12 = _Block_copy(aBlock);
  swift_unknownObjectRetain_n();
  configurationCopy = configuration;
  selfCopy = self;

  v15.receiver = selfCopy;
  v15.super_class = LACPhoneIntegrationController;
  [(LACCompanionAuthenticationController *)&v15 processRequest:request configuration:configurationCopy completion:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
}

- (LACPhoneIntegrationController)initWithAuthenticator:(id)authenticator clientInfoProvider:(id)provider environmentProvider:(id)environmentProvider sessionMonitor:(id)monitor replyQueue:(id)queue
{
  v8.receiver = self;
  v8.super_class = LACPhoneIntegrationController;
  return [(LACCompanionAuthenticationController *)&v8 initWithAuthenticator:authenticator clientInfoProvider:provider environmentProvider:environmentProvider sessionMonitor:monitor replyQueue:queue];
}

@end