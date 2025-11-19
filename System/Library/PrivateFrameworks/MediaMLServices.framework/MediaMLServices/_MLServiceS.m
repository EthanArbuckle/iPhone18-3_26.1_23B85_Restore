@interface _MLServiceS
- (_MLServiceS)initWithNameOfModel:(id)a3;
- (double)getPredictionWithInputFeatures:(id)a3;
- (id)getPredictionDictionaryWithInputFeatures:(id)a3;
- (void)getModelStatsWithCompletionHandler:(id)a3;
- (void)writeWithData:(id)a3;
@end

@implementation _MLServiceS

- (_MLServiceS)initWithNameOfModel:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = _MLServiceS.init(nameOfModel:)(v3, v4);
  MEMORY[0x277D82BD8](a3);
  return v7;
}

- (void)getModelStatsWithCompletionHandler:(id)a3
{
  v7 = _Block_copy(a3);
  MEMORY[0x277D82BE0](self);
  if (v7)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v7;
    v4 = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary?) -> ();
    v5 = v3;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  _MLServiceS.getModelStats(completionHandler:)(v4, v5);
  outlined consume of (@escaping @callee_guaranteed @Sendable (@guaranteed [String : Any]?) -> ())?(v4);
  MEMORY[0x277D82BD8](self);
}

- (double)getPredictionWithInputFeatures:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = _MLServiceS.getPrediction(inputFeatures:)(v5);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
  return v8;
}

- (id)getPredictionDictionaryWithInputFeatures:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = _MLServiceS.getPredictionDictionary(withInputFeatures:)(v7);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
  if (v10)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = isa;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)writeWithData:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  _MLServiceS.write(data:)(v4);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

@end