@interface (interval:DateInterval,hr:
- (unint64_t)Float);
@end

@implementation (interval:DateInterval,hr:

- (unint64_t)Float)
{
  v2 = lazy protocol witness table cache variable for type [(interval: DateInterval, hr: Float)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(interval: DateInterval, hr: Float)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation12DateIntervalV8interval_Sf2hrtGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(interval: DateInterval, hr: Float)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

@end