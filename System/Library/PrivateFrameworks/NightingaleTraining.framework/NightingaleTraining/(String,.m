@interface (String,
- (unint64_t)Any);
@end

@implementation (String,

- (unint64_t)Any)
{
  v2 = lazy protocol witness table cache variable for type [(String, Any)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(String, Any)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySS_yptGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(String, Any)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

@end