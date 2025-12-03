@interface (start:UInt32,end:
- (uint64_t)UInt32);
- (unint64_t)UInt32);
@end

@implementation (start:UInt32,end:

- (uint64_t)UInt32)
{
  result = a2(*self, *(self + 1));
  *a3 = result;
  a3[1] = v4;
  return result;
}

- (unint64_t)UInt32)
{
  v2 = lazy protocol witness table cache variable for type [(start: UInt32, end: UInt32)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(start: UInt32, end: UInt32)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays6UInt32V5start_AB3endtGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(start: UInt32, end: UInt32)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

@end