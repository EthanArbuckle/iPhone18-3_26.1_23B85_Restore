@interface DefaultsObserver
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation DefaultsObserver

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  MEMORY[0x1E69E5928](a3);
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](a5);
  MEMORY[0x1E69E5928](self);
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x1E69E5920](a3);
  }

  if (a4)
  {
    _bridgeAnyObjectToAny(_:)();
    outlined init with take of Any(v10, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  if (a5)
  {
    type metadata accessor for NSKeyValueChangeKey();
    lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey();
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x1E69E5920](a5);
  }

  DefaultsObserver.observeValue(forKeyPath:of:change:context:)();

  outlined destroy of Any?(v11);

  MEMORY[0x1E69E5920](self);
}

@end