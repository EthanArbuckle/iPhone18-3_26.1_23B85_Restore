@interface LACConcurrentEvaluationController
- (BOOL)canProcessRequest:(id)a3;
- (LACConcurrentEvaluationController)initWithManager:(id)a3 replyQueue:(id)a4;
- (id)makeModel;
- (void)postProcessRequest:(id)a3 result:(id)a4 completion:(id)a5;
- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5;
@end

@implementation LACConcurrentEvaluationController

- (LACConcurrentEvaluationController)initWithManager:(id)a3 replyQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = LACConcurrentEvaluationController;
  v9 = [(LACConcurrentEvaluationController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_manager, a3);
    objc_storeStrong(&v10->_replyQueue, a4);
    v11 = [(LACConcurrentEvaluationController *)v10 makeModel];
    model = v10->_model;
    v10->_model = v11;
  }

  return v10;
}

- (BOOL)canProcessRequest:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = [-[LACConcurrentEvaluationController model](v5 model)];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v6;
}

- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = self;
  v12 = [(LACConcurrentEvaluationController *)v11 model];
  v14[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned LACEvaluationResult) -> ()partial apply;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
  v14[3] = &block_descriptor_13_0;
  v13 = _Block_copy(v14);

  [v12 processRequest:a3 configuration:v10 completion:v13];
  swift_unknownObjectRelease();

  _Block_release(v13);
  swift_unknownObjectRelease();
}

- (void)postProcessRequest:(id)a3 result:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_unknownObjectRetain();
  v10 = a4;
  v13 = self;
  v11 = [(LACConcurrentEvaluationController *)v13 model];
  if ([v11 respondsToSelector_])
  {
    aBlock[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned LACEvaluationResult) -> ();
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
    aBlock[3] = &block_descriptor_6_0;
    v12 = _Block_copy(aBlock);

    [v11 postProcessRequest:a3 result:v10 completion:v12];
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
  v2 = self;
  v3 = LACConcurrentEvaluationController.makeModel()();

  return v3;
}

@end