@interface LACOnenessController
- (BOOL)canAuthenticateRequest:(id)a3 availabilityError:(id)a4 error:(id *)a5;
- (LACOnenessController)initWithAuthenticator:(id)a3 clientInfoProvider:(id)a4 environmentProvider:(id)a5 sessionMonitor:(id)a6 replyQueue:(id)a7;
- (LACOnenessController)initWithAuthenticator:(id)a3 clientInfoProvider:(id)a4 environmentProvider:(id)a5 sessionMonitor:(id)a6 uiPresenter:(id)a7 replyQueue:(id)a8;
- (LACUserInterfacePresenting)uiPresenter;
- (id)mapError:(id)a3;
- (void)postProcessRequest:(id)a3 result:(id)a4 completion:(id)a5;
@end

@implementation LACOnenessController

- (LACUserInterfacePresenting)uiPresenter
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___LACOnenessController_uiPresenter);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (LACOnenessController)initWithAuthenticator:(id)a3 clientInfoProvider:(id)a4 environmentProvider:(id)a5 sessionMonitor:(id)a6 uiPresenter:(id)a7 replyQueue:(id)a8
{
  *(&self->super.super.isa + OBJC_IVAR___LACOnenessController_uiPresenter) = a7;
  v14.receiver = self;
  v14.super_class = LACOnenessController;
  swift_unknownObjectRetain();
  return [(LACCompanionAuthenticationController *)&v14 initWithAuthenticator:a3 clientInfoProvider:a4 environmentProvider:a5 sessionMonitor:a6 replyQueue:a8];
}

- (BOOL)canAuthenticateRequest:(id)a3 availabilityError:(id)a4 error:(id *)a5
{
  swift_unknownObjectRetain();
  v8 = self;
  v9 = a4;
  LACOnenessController.canAuthenticateRequest(_:availabilityError:)(a3, a4);

  swift_unknownObjectRelease();
  return 1;
}

- (void)postProcessRequest:(id)a3 result:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = a3;
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
  v13 = a4;
  v14 = self;

  v15.receiver = v14;
  v15.super_class = LACOnenessController;
  [(LACCompanionAuthenticationController *)&v15 postProcessRequest:a3 result:v13 completion:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
}

- (id)mapError:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = LACOnenessController.mapError(_:)();

  v7 = _convertErrorToNSError(_:)();

  return v7;
}

- (LACOnenessController)initWithAuthenticator:(id)a3 clientInfoProvider:(id)a4 environmentProvider:(id)a5 sessionMonitor:(id)a6 replyQueue:(id)a7
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end