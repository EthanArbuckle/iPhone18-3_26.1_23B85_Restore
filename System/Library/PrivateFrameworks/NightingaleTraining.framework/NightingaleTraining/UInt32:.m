@interface UInt32:
- (unint64_t)Bool;
- (unint64_t)Float;
- (unint64_t)Int;
- (unint64_t)UInt8;
@end

@implementation UInt32:

- (unint64_t)Float
{
  v2 = lazy protocol witness table cache variable for type [UInt32 : Float] and conformance [A : B];
  if (!lazy protocol witness table cache variable for type [UInt32 : Float] and conformance [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDys6UInt32VSfGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UInt32 : Float] and conformance [A : B]);
    return WitnessTable;
  }

  return v2;
}

- (unint64_t)UInt8
{
  v2 = lazy protocol witness table cache variable for type [UInt32 : UInt8].Keys and conformance [A : B].Keys;
  if (!lazy protocol witness table cache variable for type [UInt32 : UInt8].Keys and conformance [A : B].Keys)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSD4KeysVys6UInt32Vs5UInt8V_GMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UInt32 : UInt8].Keys and conformance [A : B].Keys);
    return WitnessTable;
  }

  return v2;
}

- (unint64_t)Bool
{
  v2 = lazy protocol witness table cache variable for type [UInt32 : Bool].Keys and conformance [A : B].Keys;
  if (!lazy protocol witness table cache variable for type [UInt32 : Bool].Keys and conformance [A : B].Keys)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSD4KeysVys6UInt32VSb_GMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UInt32 : Bool].Keys and conformance [A : B].Keys);
    return WitnessTable;
  }

  return v2;
}

- (unint64_t)Int
{
  v2 = lazy protocol witness table cache variable for type [UInt32 : Int].Keys and conformance [A : B].Keys;
  if (!lazy protocol witness table cache variable for type [UInt32 : Int].Keys and conformance [A : B].Keys)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSD4KeysVys6UInt32VSi_GMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UInt32 : Int].Keys and conformance [A : B].Keys);
    return WitnessTable;
  }

  return v2;
}

@end