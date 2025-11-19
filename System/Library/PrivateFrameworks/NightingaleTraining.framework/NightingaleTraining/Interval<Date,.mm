@interface Interval<Date,
- (unint64_t)UInt32>;
@end

@implementation Interval<Date,

- (unint64_t)UInt32>
{
  v2 = lazy protocol witness table cache variable for type [Interval<Date, UInt32>] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Interval<Date, UInt32>] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining8IntervalVy10Foundation4DateVs6UInt32VGGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Interval<Date, UInt32>] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

@end