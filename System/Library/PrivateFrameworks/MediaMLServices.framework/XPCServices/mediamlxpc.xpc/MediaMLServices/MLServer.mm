@interface MLServer
- (void)getModelStatsWith:(id)a3;
- (void)getPredictionDictionaryWithInputFeatures:(id)a3 with:(id)a4;
- (void)getPredictionWithInputFeatures:(id)a3 with:(id)a4;
- (void)wakeRemoteServiceWith:(id)a3;
- (void)writeWithData:(id)a3 with:(id)a4;
@end

@implementation MLServer

- (void)getPredictionWithInputFeatures:(id)a3 with:(id)a4
{
  _objc_retain(a3);
  v6 = _Block_copy(a4);
  _objc_retain(self);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  MLServer.getPrediction(inputFeatures:with:)(v8, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Double) -> (), v7);
}

- (void)getPredictionDictionaryWithInputFeatures:(id)a3 with:(id)a4
{
  _objc_retain(a3);
  v6 = _Block_copy(a4);
  _objc_retain(self);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  MLServer.getPredictionDictionary(inputFeatures:with:)(v8, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSDictionary) -> (), v7);
}

- (void)writeWithData:(id)a3 with:(id)a4
{
  _objc_retain(a3);
  v6 = _Block_copy(a4);
  _objc_retain(self);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  MLServer.write(data:with:)(v8, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSString) -> (), v7);
}

- (void)wakeRemoteServiceWith:(id)a3
{
  v4 = _Block_copy(a3);
  _objc_retain(self);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  MLServer.wakeRemoteService(with:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v5);
}

- (void)getModelStatsWith:(id)a3
{
  v4 = _Block_copy(a3);
  _objc_retain(self);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  MLServer.getModelStats(with:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSDictionary?) -> (), v5);
}

@end