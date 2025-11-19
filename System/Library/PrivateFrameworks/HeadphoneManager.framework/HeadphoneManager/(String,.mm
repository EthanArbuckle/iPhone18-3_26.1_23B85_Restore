@interface (String,
- (uint64_t)ReplayData);
- (unint64_t)ReplayData);
@end

@implementation (String,

- (unint64_t)ReplayData)
{
  v2 = lazy protocol witness table cache variable for type [(String, ReplayData)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(String, ReplayData)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySS_16HeadphoneManager10ReplayDataCtGMd, &_sSaySS_16HeadphoneManager10ReplayDataCtGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(String, ReplayData)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

- (uint64_t)ReplayData)
{
  v1 = *a1;

  return a1;
}

@end