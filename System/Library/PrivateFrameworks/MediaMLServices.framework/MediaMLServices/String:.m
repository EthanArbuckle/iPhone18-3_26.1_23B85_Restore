@interface String:
- (uint64_t)Any;
- (unint64_t)Any;
@end

@implementation String:

- (uint64_t)Any
{
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);

  MEMORY[0x277D82BE0](a2);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v3();

  MEMORY[0x277D82BD8](a2);
}

- (unint64_t)Any
{
  v2 = lazy protocol witness table cache variable for type [String : Any] and conformance [A : B];
  if (!lazy protocol witness table cache variable for type [String : Any] and conformance [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySSypGMd, &_sSDySSypGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String : Any] and conformance [A : B]);
    return WitnessTable;
  }

  return v2;
}

@end