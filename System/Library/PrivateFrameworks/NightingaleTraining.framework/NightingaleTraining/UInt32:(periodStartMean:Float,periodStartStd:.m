@interface UInt32:(periodStartMean:Float,periodStartStd:
- (unint64_t)Float);
@end

@implementation UInt32:(periodStartMean:Float,periodStartStd:

- (unint64_t)Float)
{
  v2 = lazy protocol witness table cache variable for type [UInt32 : (periodStartMean: Float, periodStartStd: Float)] and conformance [A : B];
  if (!lazy protocol witness table cache variable for type [UInt32 : (periodStartMean: Float, periodStartStd: Float)] and conformance [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDys6UInt32VSf15periodStartMean_Sf0bC3StdtGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UInt32 : (periodStartMean: Float, periodStartStd: Float)] and conformance [A : B]);
    return WitnessTable;
  }

  return v2;
}

@end