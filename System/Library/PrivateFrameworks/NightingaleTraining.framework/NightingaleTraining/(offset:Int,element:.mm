@interface (offset:Int,element:
- (unint64_t)Float);
@end

@implementation (offset:Int,element:

- (unint64_t)Float)
{
  v2 = lazy protocol witness table cache variable for type [(offset: Int, element: Float)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(offset: Int, element: Float)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySi6offset_Sf7elementtGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(offset: Int, element: Float)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

@end