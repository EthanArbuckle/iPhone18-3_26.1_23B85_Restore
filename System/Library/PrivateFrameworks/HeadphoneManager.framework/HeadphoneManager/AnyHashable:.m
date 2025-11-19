@interface AnyHashable:
- (uint64_t)Any;
- (unint64_t)Any;
@end

@implementation AnyHashable:

- (unint64_t)Any
{
  v2 = lazy protocol witness table cache variable for type [AnyHashable : Any].Values and conformance [A : B].Values;
  if (!lazy protocol witness table cache variable for type [AnyHashable : Any].Values and conformance [A : B].Values)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSD6ValuesVys11AnyHashableVyp_GMd, &_sSD6ValuesVys11AnyHashableVyp_GMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [AnyHashable : Any].Values and conformance [A : B].Values);
    return WitnessTable;
  }

  return v2;
}

- (uint64_t)Any
{
  v1 = *a1;

  return a1;
}

@end