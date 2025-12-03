@interface String:
- (Class)NSObject;
- (uint64_t)Any;
- (unint64_t)DOCDebugUIScenario.Settings;
@end

@implementation String:

- (uint64_t)Any
{
  v3 = a3;
  v5 = *(self + 32);
  if (!a2)
  {
    memset(v10, 0, sizeof(v10));
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjectType = swift_getObjectType();
  *&v8 = a2;
  outlined init with take of Any(&v8, v10);
  if (v3)
  {
LABEL_3:
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  outlined destroy of Any?(v10);
  return v6 & 1;
}

- (Class)NSObject
{
  v1 = *(self + 32);

  v3 = v1(v2);

  if (v3)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (unint64_t)DOCDebugUIScenario.Settings
{
  result = lazy protocol witness table cache variable for type [String : DOCDebugUIScenario.Settings] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [String : DOCDebugUIScenario.Settings] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySS26DocumentManagerExecutables18DOCDebugUIScenarioV8SettingsVGMd);
    lazy protocol witness table accessor for type DOCDebugUIScenario.Settings and conformance DOCDebugUIScenario.Settings();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String : DOCDebugUIScenario.Settings] and conformance <> [A : B]);
  }

  return result;
}

@end