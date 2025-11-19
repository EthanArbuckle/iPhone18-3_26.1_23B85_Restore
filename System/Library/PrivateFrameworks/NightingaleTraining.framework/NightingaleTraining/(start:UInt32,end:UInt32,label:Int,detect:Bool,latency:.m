@interface (start:UInt32,end:UInt32,label:Int,detect:Bool,latency:
- (unint64_t)Int?);
@end

@implementation (start:UInt32,end:UInt32,label:Int,detect:Bool,latency:

- (unint64_t)Int?)
{
  v2 = lazy protocol witness table cache variable for type [(start: UInt32, end: UInt32, label: Int, detect: Bool, latency: Int?)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(start: UInt32, end: UInt32, label: Int, detect: Bool, latency: Int?)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays6UInt32V5start_AB3endSi5labelSb6detectSiSg7latencytGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(start: UInt32, end: UInt32, label: Int, detect: Bool, latency: Int?)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

@end