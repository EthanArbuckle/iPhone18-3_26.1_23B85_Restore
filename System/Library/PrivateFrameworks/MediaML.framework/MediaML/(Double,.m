@interface (Double,
- (unint64_t)Double);
@end

@implementation (Double,

- (unint64_t)Double)
{
  v2 = lazy protocol witness table cache variable for type [(Double, Double)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(Double, Double)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySd_SdtGMd, &_sSaySd_SdtGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(Double, Double)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

@end