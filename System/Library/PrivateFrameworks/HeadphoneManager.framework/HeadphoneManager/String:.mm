@interface String:
- (Class)NSObject;
- (uint64_t)Data;
- (uint64_t)HMDeviceRecord;
- (uint64_t)HeadphoneDevice;
- (unint64_t)Data;
- (unint64_t)HMDeviceRecord;
- (unint64_t)HeadphoneDevice;
- (void)HMDeviceRecord;
- (void)HeadphoneDevice;
@end

@implementation String:

- (uint64_t)HMDeviceRecord
{
  v4 = lazy cache variable for type metadata for Published<[String : HMDeviceRecord]>;
  if (!lazy cache variable for type metadata for Published<[String : HMDeviceRecord]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySSSo14HMDeviceRecordCGMd, &_sSDySSSo14HMDeviceRecordCGMR);
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<[String : HMDeviceRecord]>);
      return v1;
    }
  }

  return v4;
}

- (uint64_t)HeadphoneDevice
{
  v1 = *self;

  return self;
}

- (unint64_t)Data
{
  v2 = lazy protocol witness table cache variable for type [String : Data] and conformance [A : B];
  if (!lazy protocol witness table cache variable for type [String : Data] and conformance [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String : Data] and conformance [A : B]);
    return WitnessTable;
  }

  return v2;
}

- (uint64_t)Data
{
  v1 = *self;

  return self;
}

- (unint64_t)HMDeviceRecord
{
  v2 = lazy protocol witness table cache variable for type [String : HMDeviceRecord] and conformance [A : B];
  if (!lazy protocol witness table cache variable for type [String : HMDeviceRecord] and conformance [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySSSo14HMDeviceRecordCGMd, &_sSDySSSo14HMDeviceRecordCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String : HMDeviceRecord] and conformance [A : B]);
    return WitnessTable;
  }

  return v2;
}

- (Class)NSObject
{
  v6 = *(self + 32);
  v5 = *(self + 40);

  if (v6(v1))
  {
    type metadata accessor for NSObject();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v4 = isa;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)HeadphoneDevice
{
  v2 = lazy protocol witness table cache variable for type [String : HeadphoneDevice] and conformance [A : B];
  if (!lazy protocol witness table cache variable for type [String : HeadphoneDevice] and conformance [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySS16HeadphoneManager0A6DeviceCGMd, &_sSDySS16HeadphoneManager0A6DeviceCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String : HeadphoneDevice] and conformance [A : B]);
    return WitnessTable;
  }

  return v2;
}

- (void)HeadphoneDevice
{
  v4 = *self;

  result = a2;
  *a2 = v4;
  return result;
}

- (void)HMDeviceRecord
{
  v4 = *self;

  result = a2;
  *a2 = v4;
  return result;
}

@end