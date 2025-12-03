@interface LACOnenessController
- (BOOL)canAuthenticateRequest:(id)request availabilityError:(id)error error:(id *)a5;
- (LACOnenessController)initWithAuthenticator:(id)authenticator clientInfoProvider:(id)provider environmentProvider:(id)environmentProvider sessionMonitor:(id)monitor replyQueue:(id)queue;
- (LACOnenessController)initWithAuthenticator:(id)authenticator clientInfoProvider:(id)provider environmentProvider:(id)environmentProvider sessionMonitor:(id)monitor uiPresenter:(id)presenter replyQueue:(id)queue;
- (LACUserInterfacePresenting)uiPresenter;
- (id)mapError:(id)error;
- (void)postProcessRequest:(id)request result:(id)result completion:(id)completion;
@end

@implementation LACOnenessController

- (LACUserInterfacePresenting)uiPresenter
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___LACOnenessController_uiPresenter);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (LACOnenessController)initWithAuthenticator:(id)authenticator clientInfoProvider:(id)provider environmentProvider:(id)environmentProvider sessionMonitor:(id)monitor uiPresenter:(id)presenter replyQueue:(id)queue
{
  *(&self->super.super.isa + OBJC_IVAR___LACOnenessController_uiPresenter) = presenter;
  v14.receiver = self;
  v14.super_class = LACOnenessController;
  swift_unknownObjectRetain();
  return [(LACCompanionAuthenticationController *)&v14 initWithAuthenticator:authenticator clientInfoProvider:provider environmentProvider:environmentProvider sessionMonitor:monitor replyQueue:queue];
}

- (BOOL)canAuthenticateRequest:(id)request availabilityError:(id)error error:(id *)a5
{
  swift_unknownObjectRetain();
  selfCopy = self;
  errorCopy = error;
  LACOnenessController.canAuthenticateRequest(_:availabilityError:)(request, error);

  swift_unknownObjectRelease();
  return 1;
}

- (void)postProcessRequest:(id)request result:(id)result completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = v10;
  v11[4] = _sSo19LACEvaluationResultCIeyBy_ABIegg_TRTA_0;
  v11[5] = v9;
  aBlock[4] = closure #1 in LACOnenessController.postProcessRequest(_:result:completion:)partial apply;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
  aBlock[3] = &block_descriptor_14_1;
  v12 = _Block_copy(aBlock);
  swift_unknownObjectRetain_n();
  resultCopy = result;
  selfCopy = self;

  v15.receiver = selfCopy;
  v15.super_class = LACOnenessController;
  [(LACCompanionAuthenticationController *)&v15 postProcessRequest:request result:resultCopy completion:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
}

- (id)mapError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  v6 = LACOnenessController.mapError(_:)();

  v7 = _convertErrorToNSError(_:)();

  return v7;
}

- (LACOnenessController)initWithAuthenticator:(id)authenticator clientInfoProvider:(id)provider environmentProvider:(id)environmentProvider sessionMonitor:(id)monitor replyQueue:(id)queue
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end