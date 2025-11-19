@interface LACPhoneIntegrationController
- (BOOL)canAuthenticateRequest:(id)a3 availabilityError:(id)a4 error:(id *)a5;
- (LACPhoneIntegrationController)initWithAuthenticator:(id)a3 clientInfoProvider:(id)a4 environmentProvider:(id)a5 sessionMonitor:(id)a6 replyQueue:(id)a7;
- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5;
@end

@implementation LACPhoneIntegrationController

- (BOOL)canAuthenticateRequest:(id)a3 availabilityError:(id)a4 error:(id *)a5
{
  swift_unknownObjectRetain();
  v8 = self;
  v9 = a4;
  LACPhoneIntegrationController.canAuthenticateRequest(_:availabilityError:)(a3, a4);

  swift_unknownObjectRelease();
  return 1;
}

- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned LACEvaluationResult) -> ();
  v11[3] = v9;
  v11[4] = v10;
  v11[5] = a3;
  aBlock[4] = closure #1 in LACPhoneIntegrationController.processRequest(_:configuration:completion:)partial apply;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
  aBlock[3] = &block_descriptor_14;
  v12 = _Block_copy(aBlock);
  swift_unknownObjectRetain_n();
  v13 = a4;
  v14 = self;

  v15.receiver = v14;
  v15.super_class = LACPhoneIntegrationController;
  [(LACCompanionAuthenticationController *)&v15 processRequest:a3 configuration:v13 completion:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
}

- (LACPhoneIntegrationController)initWithAuthenticator:(id)a3 clientInfoProvider:(id)a4 environmentProvider:(id)a5 sessionMonitor:(id)a6 replyQueue:(id)a7
{
  v8.receiver = self;
  v8.super_class = LACPhoneIntegrationController;
  return [(LACCompanionAuthenticationController *)&v8 initWithAuthenticator:a3 clientInfoProvider:a4 environmentProvider:a5 sessionMonitor:a6 replyQueue:a7];
}

@end