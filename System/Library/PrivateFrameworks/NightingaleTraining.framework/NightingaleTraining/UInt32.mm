@interface UInt32
- (unint64_t):;
- (unint64_t):.Keys and conformance [A : B].Keys();
@end

@implementation UInt32

- (unint64_t):
{
  v2 = lazy protocol witness table cache variable for type [UInt32 : [Float]] and conformance [A : B];
  if (!lazy protocol witness table cache variable for type [UInt32 : [Float]] and conformance [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDys6UInt32VSaySfGGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UInt32 : [Float]] and conformance [A : B]);
    return WitnessTable;
  }

  return v2;
}

- (unint64_t):.Keys and conformance [A : B].Keys()
{
  v2 = lazy protocol witness table cache variable for type [UInt32 : [Float]].Keys and conformance [A : B].Keys;
  if (!lazy protocol witness table cache variable for type [UInt32 : [Float]].Keys and conformance [A : B].Keys)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSD4KeysVys6UInt32VSaySfG_GMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UInt32 : [Float]].Keys and conformance [A : B].Keys);
    return WitnessTable;
  }

  return v2;
}

@end