@interface MLServer
- (void)getModelStatsWith:(id)with;
- (void)getPredictionDictionaryWithInputFeatures:(id)features with:(id)with;
- (void)getPredictionWithInputFeatures:(id)features with:(id)with;
- (void)wakeRemoteServiceWith:(id)with;
- (void)writeWithData:(id)data with:(id)with;
@end

@implementation MLServer

- (void)getPredictionWithInputFeatures:(id)features with:(id)with
{
  _objc_retain(features);
  v6 = _Block_copy(with);
  _objc_retain(self);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  MLServer.getPrediction(inputFeatures:with:)(v8, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Double) -> (), v7);
}

- (void)getPredictionDictionaryWithInputFeatures:(id)features with:(id)with
{
  _objc_retain(features);
  v6 = _Block_copy(with);
  _objc_retain(self);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  MLServer.getPredictionDictionary(inputFeatures:with:)(v8, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSDictionary) -> (), v7);
}

- (void)writeWithData:(id)data with:(id)with
{
  _objc_retain(data);
  v6 = _Block_copy(with);
  _objc_retain(self);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  MLServer.write(data:with:)(v8, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSString) -> (), v7);
}

- (void)wakeRemoteServiceWith:(id)with
{
  v4 = _Block_copy(with);
  _objc_retain(self);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  MLServer.wakeRemoteService(with:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v5);
}

- (void)getModelStatsWith:(id)with
{
  v4 = _Block_copy(with);
  _objc_retain(self);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  MLServer.getModelStats(with:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSDictionary?) -> (), v5);
}

@end