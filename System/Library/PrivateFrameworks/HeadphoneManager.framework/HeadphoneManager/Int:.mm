@interface Int:
- (uint64_t)String;
- (unint64_t)String;
- (void)String;
@end

@implementation Int:

- (uint64_t)String
{
  v1 = *a1;

  return a1;
}

- (unint64_t)String
{
  v2 = lazy protocol witness table cache variable for type [Int : String] and conformance [A : B];
  if (!lazy protocol witness table cache variable for type [Int : String] and conformance [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySiSSGMd, &_sSDySiSSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Int : String] and conformance [A : B]);
    return WitnessTable;
  }

  return v2;
}

- (void)String
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

@end