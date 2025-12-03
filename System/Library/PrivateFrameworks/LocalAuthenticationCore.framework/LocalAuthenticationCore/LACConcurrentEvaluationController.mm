@interface LACConcurrentEvaluationController
- (BOOL)canProcessRequest:(id)request;
- (LACConcurrentEvaluationController)initWithManager:(id)manager replyQueue:(id)queue;
- (id)makeModel;
- (void)postProcessRequest:(id)request result:(id)result completion:(id)completion;
- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion;
@end

@implementation LACConcurrentEvaluationController

- (LACConcurrentEvaluationController)initWithManager:(id)manager replyQueue:(id)queue
{
  managerCopy = manager;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = LACConcurrentEvaluationController;
  v9 = [(LACConcurrentEvaluationController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_manager, manager);
    objc_storeStrong(&v10->_replyQueue, queue);
    makeModel = [(LACConcurrentEvaluationController *)v10 makeModel];
    model = v10->_model;
    v10->_model = makeModel;
  }

  return v10;
}

- (BOOL)canProcessRequest:(id)request
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = [-[LACConcurrentEvaluationController model](selfCopy model)];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v6;
}

- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_unknownObjectRetain();
  configurationCopy = configuration;
  selfCopy = self;
  model = [(LACConcurrentEvaluationController *)selfCopy model];
  v14[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned LACEvaluationResult) -> ()partial apply;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
  v14[3] = &block_descriptor_13_0;
  v13 = _Block_copy(v14);

  [model processRequest:request configuration:configurationCopy completion:v13];
  swift_unknownObjectRelease();

  _Block_release(v13);
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
  model = [(LACConcurrentEvaluationController *)selfCopy model];
  if ([model respondsToSelector_])
  {
    aBlock[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned LACEvaluationResult) -> ();
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
    aBlock[3] = &block_descriptor_6_0;
    v12 = _Block_copy(aBlock);

    [model postProcessRequest:request result:resultCopy completion:v12];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    _Block_release(v12);
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

- (id)makeModel
{
  selfCopy = self;
  v3 = LACConcurrentEvaluationController.makeModel()();

  return v3;
}

@end