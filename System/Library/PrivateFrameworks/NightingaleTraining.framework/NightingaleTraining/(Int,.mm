@interface (Int,
- (unint64_t)Float);
@end

@implementation (Int,

- (unint64_t)Float)
{
  v2 = lazy protocol witness table cache variable for type [(Int, Float)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(Int, Float)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySi_SftGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(Int, Float)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

@end