@interface String:
- (Class)NSObject;
- (unint64_t)Any;
@end

@implementation String:

- (unint64_t)Any
{
  v2 = lazy protocol witness table cache variable for type [String : Any] and conformance [A : B];
  if (!lazy protocol witness table cache variable for type [String : Any] and conformance [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySSypGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String : Any] and conformance [A : B]);
    return WitnessTable;
  }

  return v2;
}

- (Class)NSObject
{
  v5 = *(self + 32);

  if (v5(v1))
  {
    type metadata accessor for NSObject();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v4 = isa;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end