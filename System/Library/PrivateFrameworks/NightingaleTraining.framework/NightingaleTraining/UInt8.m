@interface UInt8
- (unint64_t):()UInt32 .Keys and conformance [A : B].Keys();
- (unint64_t):(start:(end:)UInt32 )UInt32;
@end

@implementation UInt8

- (unint64_t):()UInt32 .Keys and conformance [A : B].Keys()
{
  v2 = lazy protocol witness table cache variable for type [UInt8 : [(UInt32, UInt32)]].Keys and conformance [A : B].Keys;
  if (!lazy protocol witness table cache variable for type [UInt8 : [(UInt32, UInt32)]].Keys and conformance [A : B].Keys)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSD4KeysVys5UInt8VSays6UInt32V_AFtG_GMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UInt8 : [(UInt32, UInt32)]].Keys and conformance [A : B].Keys);
    return WitnessTable;
  }

  return v2;
}

- (unint64_t):(start:(end:)UInt32 )UInt32
{
  v2 = lazy protocol witness table cache variable for type [UInt8 : [(start: UInt32, end: UInt32)]] and conformance [A : B];
  if (!lazy protocol witness table cache variable for type [UInt8 : [(start: UInt32, end: UInt32)]] and conformance [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDys5UInt8VSays6UInt32V5start_AD3endtGGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UInt8 : [(start: UInt32, end: UInt32)]] and conformance [A : B]);
    return WitnessTable;
  }

  return v2;
}

@end