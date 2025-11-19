@interface String:
- (Class)NSObject;
- (uint64_t)NSNumber;
- (unint64_t)NSObject;
@end

@implementation String:

- (Class)NSObject
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (unint64_t)NSObject
{
  result = lazy protocol witness table cache variable for type [String : NSObject] and conformance [A : B];
  if (!lazy protocol witness table cache variable for type [String : NSObject] and conformance [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySSSo8NSObjectCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String : NSObject] and conformance [A : B]);
  }

  return result;
}

- (uint64_t)NSNumber
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  return specialized _resumeUnsafeContinuation<A>(_:_:)(v3, v4);
}

@end