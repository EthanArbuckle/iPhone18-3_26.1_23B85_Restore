@interface DefaultsObserver
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation DefaultsObserver

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  MEMORY[0x1E69E5928](path);
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](change);
  MEMORY[0x1E69E5928](self);
  if (path)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x1E69E5920](path);
  }

  if (object)
  {
    _bridgeAnyObjectToAny(_:)();
    outlined init with take of Any(v10, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  if (change)
  {
    type metadata accessor for NSKeyValueChangeKey();
    lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey();
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x1E69E5920](change);
  }

  DefaultsObserver.observeValue(forKeyPath:of:change:context:)();

  outlined destroy of Any?(v11);

  MEMORY[0x1E69E5920](self);
}

@end