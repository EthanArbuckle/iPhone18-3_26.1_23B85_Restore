@interface LACConcurrentEvaluationControllerModel
- (BOOL)canProcessRequest:(id)request;
- (_TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel)init;
- (void)postProcessRequest:(id)request result:(id)result completion:(id)completion;
- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion;
@end

@implementation LACConcurrentEvaluationControllerModel

- (BOOL)canProcessRequest:(id)request
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_helper);
  swift_unknownObjectRetain();
  selfCopy = self;
  if ([v5 isConcurrentEvaluationAvailable])
  {
    isInteractive = [request isInteractive];
  }

  else
  {
    isInteractive = 0;
  }

  swift_unknownObjectRelease();

  return isInteractive;
}

- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  swift_unknownObjectRetain();
  configurationCopy = configuration;
  selfCopy = self;
  specialized LACConcurrentEvaluationControllerModel.processRequest(_:configuration:completion:)(request, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)postProcessRequest:(id)request result:(id)result completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_unknownObjectRetain();
  resultCopy = result;
  selfCopy = self;
  _Block_copy(v8);
  if ((LACConcurrentEvaluationControllerModel.shouldStash(request:for:)(request, resultCopy) & 1) != 0 && (v11 = [resultCopy error]) != 0)
  {
    v12 = v11;
    _Block_release(v8);
    LACConcurrentEvaluationControllerModel.stashRequest(_:for:completion:)(request, v12, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned LACEvaluationResult) -> (), v9);

    swift_unknownObjectRelease();
  }

  else
  {
    [*(&selfCopy->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_manager) unregisterRequest_];
    (*(v8 + 2))(v8, resultCopy);
    swift_unknownObjectRelease();

    _Block_release(v8);
  }
}

- (_TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end