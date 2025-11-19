uint64_t AADevice._heartRateMonitorCapability.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__heartRateMonitorCapability;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADevice._heartRateMonitorCapability.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__heartRateMonitorCapability;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t key path getter for AADevice.heartRateMonitorEnabled : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1104))(v2);
}

uint64_t key path setter for AADevice.heartRateMonitorEnabled : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1112))(v3);
}

uint64_t AADevice.heartRateMonitorEnabled.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.heartRateMonitorEnabled.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.heartRateMonitorEnabled.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.heartRateMonitorEnabled.modify;
}

uint64_t AADevice.heartRateMonitorEnabled.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._heartRateMonitorEnabled@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice();
  v5 = type metadata accessor for AAMultiState();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

uint64_t AADevice.$heartRateMonitorEnabled.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._heartRateMonitorEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__heartRateMonitorEnabled);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._heartRateMonitorEnabled.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v7 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v10;
  __b[2] = v11;
  __b[3] = v12;
  LOBYTE(__b[4]) = v7;

  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__heartRateMonitorEnabled;
  swift_beginAccess();
  v2 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  *v6 = v5;
  *(v6 + 8) = v10;
  *(v6 + 16) = v11;
  *(v6 + 24) = v12;
  *(v6 + 32) = v7;

  swift_endAccess();
}

uint64_t key path getter for AADevice.hideEarDetectionCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1136))(v2);
}

uint64_t key path setter for AADevice.hideEarDetectionCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1144))(v3);
}

uint64_t AADevice.hideEarDetectionCapability.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.hideEarDetectionCapability.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.hideEarDetectionCapability.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.hideEarDetectionCapability.modify;
}

uint64_t AADevice.hideEarDetectionCapability.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._hideEarDetectionCapability@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice();
  v6 = 1;
  v4 = type metadata accessor for AAFeatureCapability();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAFeatureCapability and conformance AAFeatureCapability();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

uint64_t AADevice.$hideEarDetectionCapability.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._hideEarDetectionCapability.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__hideEarDetectionCapability);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._hideEarDetectionCapability.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v7 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v10;
  __b[2] = v11;
  __b[3] = v12;
  LOBYTE(__b[4]) = v7;

  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__hideEarDetectionCapability;
  swift_beginAccess();
  v2 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  *v6 = v5;
  *(v6 + 8) = v10;
  *(v6 + 16) = v11;
  *(v6 + 24) = v12;
  *(v6 + 32) = v7;

  swift_endAccess();
}

uint64_t key path getter for AADevice.identifier : AADevice@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 1168))(v2);
  a2[1] = v3;
}

uint64_t key path setter for AADevice.identifier : AADevice(void *a1, uint64_t *a2)
{
  outlined init with copy of String?(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  (*(*v5 + 1176))(v4, v6);
}

uint64_t AADevice.identifier.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager8AADevice_identifier);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t AADevice.identifier.setter(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC16HeadphoneManager8AADevice_identifier);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t key path getter for AADevice.streamStateAoS : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1192))(v2);
}

uint64_t key path setter for AADevice.streamStateAoS : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1200))(v3);
}

uint64_t AADevice.streamStateAoS.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.streamStateAoS.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.streamStateAoS.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.streamStateAoS.modify;
}

uint64_t AADevice.streamStateAoS.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._streamStateAoS@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice();
  v6 = 1;
  v4 = type metadata accessor for AAStreamStateAoS();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAStreamStateAoS and conformance AAStreamStateAoS();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

unint64_t lazy protocol witness table accessor for type AAStreamStateAoS and conformance AAStreamStateAoS()
{
  v2 = lazy protocol witness table cache variable for type AAStreamStateAoS and conformance AAStreamStateAoS;
  if (!lazy protocol witness table cache variable for type AAStreamStateAoS and conformance AAStreamStateAoS)
  {
    type metadata accessor for AAStreamStateAoS();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAStreamStateAoS and conformance AAStreamStateAoS);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAStreamStateAoS and conformance AAStreamStateAoS;
  if (!lazy protocol witness table cache variable for type AAStreamStateAoS and conformance AAStreamStateAoS)
  {
    type metadata accessor for AAStreamStateAoS();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAStreamStateAoS and conformance AAStreamStateAoS);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$streamStateAoS.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo16AAStreamStateAoSVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo16AAStreamStateAoSVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._streamStateAoS.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__streamStateAoS);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._streamStateAoS.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v7 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v10;
  __b[2] = v11;
  __b[3] = v12;
  LOBYTE(__b[4]) = v7;

  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__streamStateAoS;
  swift_beginAccess();
  v2 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  *v6 = v5;
  *(v6 + 8) = v10;
  *(v6 + 16) = v11;
  *(v6 + 24) = v12;
  *(v6 + 32) = v7;

  swift_endAccess();
}

uint64_t property wrapper backing initializer of AADevice.batteryInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = type metadata accessor for AADBatteryInfoVM();
  Published.init(wrappedValue:)(v6, v2, a2);
}

uint64_t key path getter for AADevice.batteryInfo : AADevice@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1224))(v2);
}

uint64_t key path setter for AADevice.batteryInfo : AADevice(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  v5 = *a2;

  (*(*v5 + 1232))(v3);
}

uint64_t AADevice.batteryInfo.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADevice.batteryInfo.setter()
{

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

void (*AADevice.batteryInfo.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADevice.batteryInfo.modify;
}

void AADevice.batteryInfo.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
  }

  (*(v8 + 56))(v8, 0);

  free(v8);
}

uint64_t key path getter for AADevice.$batteryInfo : AADevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager16AADBatteryInfoVMC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager16AADBatteryInfoVMC_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 1248))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADevice.$batteryInfo : AADevice(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager16AADBatteryInfoVMC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager16AADBatteryInfoVMC_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  (*(*v9 + 1256))(v8);
}

uint64_t AADevice.$batteryInfo.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMd, &_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADevice.$batteryInfo.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager16AADBatteryInfoVMC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager16AADBatteryInfoVMC_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMd, &_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*AADevice.$batteryInfo.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager16AADBatteryInfoVMC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager16AADBatteryInfoVMC_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  AADevice.$batteryInfo.getter();
  return AADevice.$batteryInfo.modify;
}

void AADevice.$batteryInfo.modify(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    AADevice.$batteryInfo.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    AADevice.$batteryInfo.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t AADevice._batteryInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__batteryInfo;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMd, &_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADevice._batteryInfo.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMd, &_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__batteryInfo;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t key path getter for AADevice.btAddress : AADevice@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 1272))(v2);
  a2[1] = v3;
}

uint64_t key path setter for AADevice.btAddress : AADevice(void *a1, uint64_t *a2)
{
  outlined init with copy of String(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  (*(*v5 + 1280))(v4, v6);
}

uint64_t AADevice.btAddress.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager8AADevice_btAddress);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t AADevice.btAddress.setter(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC16HeadphoneManager8AADevice_btAddress);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t key path getter for AADevice.sleepDetectionCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1296))(v2);
}

uint64_t key path setter for AADevice.sleepDetectionCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1304))(v3);
}

uint64_t AADevice.sleepDetectionCapability.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.sleepDetectionCapability.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.sleepDetectionCapability.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.sleepDetectionCapability.modify;
}

uint64_t AADevice.sleepDetectionCapability.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._sleepDetectionCapability@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice();
  v6 = 1;
  v4 = type metadata accessor for AAFeatureCapability();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAFeatureCapability and conformance AAFeatureCapability();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

uint64_t AADevice.$sleepDetectionCapability.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._sleepDetectionCapability.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__sleepDetectionCapability);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._sleepDetectionCapability.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v7 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v10;
  __b[2] = v11;
  __b[3] = v12;
  LOBYTE(__b[4]) = v7;

  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__sleepDetectionCapability;
  swift_beginAccess();
  v2 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  *v6 = v5;
  *(v6 + 8) = v10;
  *(v6 + 16) = v11;
  *(v6 + 24) = v12;
  *(v6 + 32) = v7;

  swift_endAccess();
}

uint64_t key path getter for AADevice.sleepDetectionEnabled : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1328))(v2);
}

uint64_t key path setter for AADevice.sleepDetectionEnabled : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1336))(v3);
}

uint64_t AADevice.sleepDetectionEnabled.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.sleepDetectionEnabled.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.sleepDetectionEnabled.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.sleepDetectionEnabled.modify;
}

uint64_t AADevice.sleepDetectionEnabled.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._sleepDetectionEnabled@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice();
  v5 = type metadata accessor for AAMultiState();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

uint64_t AADevice.$sleepDetectionEnabled.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._sleepDetectionEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__sleepDetectionEnabled);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._sleepDetectionEnabled.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v7 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v10;
  __b[2] = v11;
  __b[3] = v12;
  LOBYTE(__b[4]) = v7;

  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__sleepDetectionEnabled;
  swift_beginAccess();
  v2 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  *v6 = v5;
  *(v6 + 8) = v10;
  *(v6 + 16) = v11;
  *(v6 + 24) = v12;
  *(v6 + 32) = v7;

  swift_endAccess();
}

uint64_t property wrapper backing initializer of AADevice.cameraControlCapability@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for AAFeatureCapability();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for AADevice.cameraControlCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1360))(v2);
}

uint64_t key path setter for AADevice.cameraControlCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  AADevice.cameraControlCapability.setter();
}

uint64_t AADevice.cameraControlCapability.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADevice.cameraControlCapability.setter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*AADevice.cameraControlCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADevice.cameraControlCapability.modify;
}

void AADevice.cameraControlCapability.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
  }

  (*(v8 + 56))(v8, 0);

  free(v8);
}

uint64_t key path getter for AADevice.$cameraControlCapability : AADevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 1384))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADevice.$cameraControlCapability : AADevice(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  AADevice.$cameraControlCapability.setter(v8);
}

uint64_t AADevice.$cameraControlCapability.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADevice.$cameraControlCapability.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*AADevice.$cameraControlCapability.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  AADevice.$cameraControlCapability.getter();
  return AADevice.$cameraControlCapability.modify;
}

void AADevice.$cameraControlCapability.modify(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    AADevice.$cameraControlCapability.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    AADevice.$cameraControlCapability.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t AADevice._cameraControlCapability.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__cameraControlCapability;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADevice._cameraControlCapability.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__cameraControlCapability;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t key path getter for AADevice.cameraControlConfig : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1408))(v2);
}

uint64_t key path setter for AADevice.cameraControlConfig : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1416))(v3);
}

uint64_t AADevice.cameraControlConfig.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.cameraControlConfig.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.cameraControlConfig.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.cameraControlConfig.modify;
}

uint64_t AADevice.cameraControlConfig.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._cameraControlConfig@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice();
  v5 = type metadata accessor for AARemoteCameraControlConfig();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AARemoteCameraControlConfig and conformance AARemoteCameraControlConfig();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

unint64_t lazy protocol witness table accessor for type AARemoteCameraControlConfig and conformance AARemoteCameraControlConfig()
{
  v2 = lazy protocol witness table cache variable for type AARemoteCameraControlConfig and conformance AARemoteCameraControlConfig;
  if (!lazy protocol witness table cache variable for type AARemoteCameraControlConfig and conformance AARemoteCameraControlConfig)
  {
    type metadata accessor for AARemoteCameraControlConfig();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AARemoteCameraControlConfig and conformance AARemoteCameraControlConfig);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AARemoteCameraControlConfig and conformance AARemoteCameraControlConfig;
  if (!lazy protocol witness table cache variable for type AARemoteCameraControlConfig and conformance AARemoteCameraControlConfig)
  {
    type metadata accessor for AARemoteCameraControlConfig();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AARemoteCameraControlConfig and conformance AARemoteCameraControlConfig);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$cameraControlConfig.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo27AARemoteCameraControlConfigVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo27AARemoteCameraControlConfigVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._cameraControlConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__cameraControlConfig);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._cameraControlConfig.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v7 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v10;
  __b[2] = v11;
  __b[3] = v12;
  LOBYTE(__b[4]) = v7;

  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__cameraControlConfig;
  swift_beginAccess();
  v2 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  *v6 = v5;
  *(v6 + 8) = v10;
  *(v6 + 16) = v11;
  *(v6 + 24) = v12;
  *(v6 + 32) = v7;

  swift_endAccess();
}

uint64_t property wrapper backing initializer of AADevice.personalTranslatorCapability@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for AAFeatureCapability();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for AADevice.personalTranslatorCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1440))(v2);
}

uint64_t key path setter for AADevice.personalTranslatorCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  AADevice.personalTranslatorCapability.setter();
}

uint64_t AADevice.personalTranslatorCapability.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADevice.personalTranslatorCapability.setter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*AADevice.personalTranslatorCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADevice.personalTranslatorCapability.modify;
}

void AADevice.personalTranslatorCapability.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
  }

  (*(v8 + 56))(v8, 0);

  free(v8);
}

uint64_t key path getter for AADevice.$personalTranslatorCapability : AADevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 1464))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADevice.$personalTranslatorCapability : AADevice(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  AADevice.$personalTranslatorCapability.setter(v8);
}

uint64_t AADevice.$personalTranslatorCapability.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADevice.$personalTranslatorCapability.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*AADevice.$personalTranslatorCapability.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  AADevice.$personalTranslatorCapability.getter();
  return AADevice.$personalTranslatorCapability.modify;
}

void AADevice.$personalTranslatorCapability.modify(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    AADevice.$personalTranslatorCapability.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    AADevice.$personalTranslatorCapability.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t AADevice._personalTranslatorCapability.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__personalTranslatorCapability;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADevice._personalTranslatorCapability.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__personalTranslatorCapability;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of AADevice.chargingReminderCapability@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for AAFeatureCapability();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for AADevice.chargingReminderCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1488))(v2);
}

uint64_t key path setter for AADevice.chargingReminderCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  AADevice.chargingReminderCapability.setter();
}

uint64_t AADevice.chargingReminderCapability.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADevice.chargingReminderCapability.setter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*AADevice.chargingReminderCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADevice.chargingReminderCapability.modify;
}

void AADevice.chargingReminderCapability.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
  }

  (*(v8 + 56))(v8, 0);

  free(v8);
}

uint64_t key path getter for AADevice.$chargingReminderCapability : AADevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 1512))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADevice.$chargingReminderCapability : AADevice(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  AADevice.$chargingReminderCapability.setter(v8);
}

uint64_t AADevice.$chargingReminderCapability.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADevice.$chargingReminderCapability.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*AADevice.$chargingReminderCapability.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  AADevice.$chargingReminderCapability.getter();
  return AADevice.$chargingReminderCapability.modify;
}

void AADevice.$chargingReminderCapability.modify(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    AADevice.$chargingReminderCapability.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    AADevice.$chargingReminderCapability.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t AADevice._chargingReminderCapability.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__chargingReminderCapability;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADevice._chargingReminderCapability.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__chargingReminderCapability;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t key path getter for AADevice.chargingReminderEnabled : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1536))(v2);
}

uint64_t key path setter for AADevice.chargingReminderEnabled : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1544))(v3);
}

uint64_t AADevice.chargingReminderEnabled.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.chargingReminderEnabled.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.chargingReminderEnabled.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.chargingReminderEnabled.modify;
}

uint64_t AADevice.chargingReminderEnabled.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._chargingReminderEnabled@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice();
  v5 = type metadata accessor for AAMultiState();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

uint64_t AADevice.$chargingReminderEnabled.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._chargingReminderEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__chargingReminderEnabled);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._chargingReminderEnabled.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v7 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v10;
  __b[2] = v11;
  __b[3] = v12;
  LOBYTE(__b[4]) = v7;

  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__chargingReminderEnabled;
  swift_beginAccess();
  v2 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  *v6 = v5;
  *(v6 + 8) = v10;
  *(v6 + 16) = v11;
  *(v6 + 24) = v12;
  *(v6 + 32) = v7;

  swift_endAccess();
}

uint64_t property wrapper backing initializer of AADevice.optimizedBatteryChargingCapability@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for AAFeatureCapability();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for AADevice.optimizedBatteryChargingCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1568))(v2);
}

uint64_t key path setter for AADevice.optimizedBatteryChargingCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  AADevice.optimizedBatteryChargingCapability.setter();
}

uint64_t AADevice.optimizedBatteryChargingCapability.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADevice.optimizedBatteryChargingCapability.setter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*AADevice.optimizedBatteryChargingCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADevice.optimizedBatteryChargingCapability.modify;
}

void AADevice.optimizedBatteryChargingCapability.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
  }

  (*(v8 + 56))(v8, 0);

  free(v8);
}

uint64_t key path getter for AADevice.$optimizedBatteryChargingCapability : AADevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 1592))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADevice.$optimizedBatteryChargingCapability : AADevice(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  AADevice.$optimizedBatteryChargingCapability.setter(v8);
}

uint64_t AADevice.$optimizedBatteryChargingCapability.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADevice.$optimizedBatteryChargingCapability.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*AADevice.$optimizedBatteryChargingCapability.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  AADevice.$optimizedBatteryChargingCapability.getter();
  return AADevice.$optimizedBatteryChargingCapability.modify;
}

void AADevice.$optimizedBatteryChargingCapability.modify(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    AADevice.$optimizedBatteryChargingCapability.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    AADevice.$optimizedBatteryChargingCapability.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t AADevice._optimizedBatteryChargingCapability.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__optimizedBatteryChargingCapability;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADevice._optimizedBatteryChargingCapability.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__optimizedBatteryChargingCapability;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of AADevice.dynamicEndOfChargeCapability@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for AAFeatureCapability();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for AADevice.dynamicEndOfChargeCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1616))(v2);
}

uint64_t key path setter for AADevice.dynamicEndOfChargeCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  AADevice.dynamicEndOfChargeCapability.setter();
}

uint64_t AADevice.dynamicEndOfChargeCapability.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADevice.dynamicEndOfChargeCapability.setter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*AADevice.dynamicEndOfChargeCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADevice.dynamicEndOfChargeCapability.modify;
}

void AADevice.dynamicEndOfChargeCapability.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
  }

  (*(v8 + 56))(v8, 0);

  free(v8);
}

uint64_t key path getter for AADevice.$dynamicEndOfChargeCapability : AADevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 1640))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADevice.$dynamicEndOfChargeCapability : AADevice(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  AADevice.$dynamicEndOfChargeCapability.setter(v8);
}

uint64_t AADevice.$dynamicEndOfChargeCapability.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADevice.$dynamicEndOfChargeCapability.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*AADevice.$dynamicEndOfChargeCapability.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  AADevice.$dynamicEndOfChargeCapability.getter();
  return AADevice.$dynamicEndOfChargeCapability.modify;
}

void AADevice.$dynamicEndOfChargeCapability.modify(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    AADevice.$dynamicEndOfChargeCapability.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    AADevice.$dynamicEndOfChargeCapability.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t AADevice._dynamicEndOfChargeCapability.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__dynamicEndOfChargeCapability;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADevice._dynamicEndOfChargeCapability.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__dynamicEndOfChargeCapability;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t key path getter for AADevice.optimizedBatteryChargingState : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1664))(v2);
}

uint64_t key path setter for AADevice.optimizedBatteryChargingState : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1672))(v3);
}

uint64_t AADevice.optimizedBatteryChargingState.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.optimizedBatteryChargingState.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.optimizedBatteryChargingState.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.optimizedBatteryChargingState.modify;
}

uint64_t AADevice.optimizedBatteryChargingState.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._optimizedBatteryChargingState@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice();
  v5 = type metadata accessor for AAChargingFeatureEnablementState();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

unint64_t lazy protocol witness table accessor for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState()
{
  v2 = lazy protocol witness table cache variable for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState;
  if (!lazy protocol witness table cache variable for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState)
  {
    type metadata accessor for AAChargingFeatureEnablementState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState;
  if (!lazy protocol witness table cache variable for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState)
  {
    type metadata accessor for AAChargingFeatureEnablementState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$optimizedBatteryChargingState.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo32AAChargingFeatureEnablementStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo32AAChargingFeatureEnablementStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._optimizedBatteryChargingState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__optimizedBatteryChargingState);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._optimizedBatteryChargingState.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v7 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v10;
  __b[2] = v11;
  __b[3] = v12;
  LOBYTE(__b[4]) = v7;

  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__optimizedBatteryChargingState;
  swift_beginAccess();
  v2 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  *v6 = v5;
  *(v6 + 8) = v10;
  *(v6 + 16) = v11;
  *(v6 + 24) = v12;
  *(v6 + 32) = v7;

  swift_endAccess();
}

uint64_t key path getter for AADevice.dynamicEndOfChargeState : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1696))(v2);
}

uint64_t key path setter for AADevice.dynamicEndOfChargeState : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1704))(v3);
}

uint64_t AADevice.dynamicEndOfChargeState.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.dynamicEndOfChargeState.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.dynamicEndOfChargeState.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.dynamicEndOfChargeState.modify;
}

uint64_t AADevice.dynamicEndOfChargeState.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._dynamicEndOfChargeState@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice();
  v5 = type metadata accessor for AAChargingFeatureEnablementState();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

uint64_t AADevice.$dynamicEndOfChargeState.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo32AAChargingFeatureEnablementStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo32AAChargingFeatureEnablementStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._dynamicEndOfChargeState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__dynamicEndOfChargeState);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._dynamicEndOfChargeState.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v7 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v10;
  __b[2] = v11;
  __b[3] = v12;
  LOBYTE(__b[4]) = v7;

  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__dynamicEndOfChargeState;
  swift_beginAccess();
  v2 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  *v6 = v5;
  *(v6 + 8) = v10;
  *(v6 + 16) = v11;
  *(v6 + 24) = v12;
  *(v6 + 32) = v7;

  swift_endAccess();
}

uint64_t key path getter for AADevice.temporaryManagedPairedStatus : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1728))(v2);
}

uint64_t key path setter for AADevice.temporaryManagedPairedStatus : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1736))(v3);
}

uint64_t AADevice.temporaryManagedPairedStatus.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.temporaryManagedPairedStatus.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.temporaryManagedPairedStatus.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.temporaryManagedPairedStatus.modify;
}

uint64_t AADevice.temporaryManagedPairedStatus.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._temporaryManagedPairedStatus@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice();
  v5 = type metadata accessor for AAMultiState();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

uint64_t AADevice.$temporaryManagedPairedStatus.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._temporaryManagedPairedStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__temporaryManagedPairedStatus);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._temporaryManagedPairedStatus.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v7 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v10;
  __b[2] = v11;
  __b[3] = v12;
  LOBYTE(__b[4]) = v7;

  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__temporaryManagedPairedStatus;
  swift_beginAccess();
  v2 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  *v6 = v5;
  *(v6 + 8) = v10;
  *(v6 + 16) = v11;
  *(v6 + 24) = v12;
  *(v6 + 32) = v7;

  swift_endAccess();
}

uint64_t key path getter for AADevice.healthKitDataWriteAllowed : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1760))(v2);
}

uint64_t key path setter for AADevice.healthKitDataWriteAllowed : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1768))(v3);
}

uint64_t AADevice.healthKitDataWriteAllowed.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3;
}

uint64_t AADevice.healthKitDataWriteAllowed.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.healthKitDataWriteAllowed.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(KeyPath, (a1 + 3));
  return AADevice.healthKitDataWriteAllowed.modify;
}

uint64_t AADevice.healthKitDataWriteAllowed.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

uint64_t variable initialization expression of AADevice._healthKitDataWriteAllowed@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice();
  v5 = type metadata accessor for AAMultiState();
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

uint64_t AADevice.$healthKitDataWriteAllowed.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._healthKitDataWriteAllowed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__healthKitDataWriteAllowed);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._healthKitDataWriteAllowed.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v7 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v5 = __b[0];
  __b[1] = v10;
  __b[2] = v11;
  __b[3] = v12;
  LOBYTE(__b[4]) = v7;

  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__healthKitDataWriteAllowed;
  swift_beginAccess();
  v2 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  *v6 = v5;
  *(v6 + 8) = v10;
  *(v6 + 16) = v11;
  *(v6 + 24) = v12;
  *(v6 + 32) = v7;

  swift_endAccess();
}

uint64_t property wrapper backing initializer of AADevice.IEDEnabled@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for AADevicePlacementMode();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t type metadata accessor for AADevicePlacementMode()
{
  v4 = lazy cache variable for type metadata for AADevicePlacementMode;
  if (!lazy cache variable for type metadata for AADevicePlacementMode)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AADevicePlacementMode);
      return v1;
    }
  }

  return v4;
}

uint64_t key path getter for AADevice.IEDEnabled : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1792))(v2);
}

uint64_t key path setter for AADevice.IEDEnabled : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1800))(v3);
}

uint64_t AADevice.IEDEnabled.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADevice.IEDEnabled.setter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*AADevice.IEDEnabled.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADevice.IEDEnabled.modify;
}

void AADevice.IEDEnabled.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
  }

  (*(v8 + 56))(v8, 0);

  free(v8);
}

uint64_t key path getter for AADevice.$IEDEnabled : AADevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21AADevicePlacementModeV_GMd, &_s7Combine9PublishedV9PublisherVySo21AADevicePlacementModeV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 1816))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADevice.$IEDEnabled : AADevice(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21AADevicePlacementModeV_GMd, &_s7Combine9PublishedV9PublisherVySo21AADevicePlacementModeV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  (*(*v9 + 1824))(v8);
}

uint64_t AADevice.$IEDEnabled.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21AADevicePlacementModeVGMd, &_s7Combine9PublishedVySo21AADevicePlacementModeVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADevice.$IEDEnabled.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21AADevicePlacementModeV_GMd, &_s7Combine9PublishedV9PublisherVySo21AADevicePlacementModeV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21AADevicePlacementModeVGMd, &_s7Combine9PublishedVySo21AADevicePlacementModeVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*AADevice.$IEDEnabled.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21AADevicePlacementModeV_GMd, &_s7Combine9PublishedV9PublisherVySo21AADevicePlacementModeV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  AADevice.$IEDEnabled.getter();
  return AADevice.$IEDEnabled.modify;
}

void AADevice.$IEDEnabled.modify(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    AADevice.$IEDEnabled.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    AADevice.$IEDEnabled.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t AADevice._IEDEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__IEDEnabled;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21AADevicePlacementModeVGMd, &_s7Combine9PublishedVySo21AADevicePlacementModeVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADevice._IEDEnabled.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21AADevicePlacementModeVGMd, &_s7Combine9PublishedVySo21AADevicePlacementModeVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__IEDEnabled;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of AADevice.primaryInEarStatus@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for AAPlacement();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t type metadata accessor for AAPlacement()
{
  v4 = lazy cache variable for type metadata for AAPlacement;
  if (!lazy cache variable for type metadata for AAPlacement)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAPlacement);
      return v1;
    }
  }

  return v4;
}

uint64_t key path getter for AADevice.primaryInEarStatus : AADevice@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1840))(v2);
}

uint64_t key path setter for AADevice.primaryInEarStatus : AADevice(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1848))(v3);
}

uint64_t AADevice.primaryInEarStatus.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADevice.primaryInEarStatus.setter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*AADevice.primaryInEarStatus.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADevice.primaryInEarStatus.modify;
}

void AADevice.primaryInEarStatus.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
  }

  (*(v8 + 56))(v8, 0);

  free(v8);
}

uint64_t key path getter for AADevice.$primaryInEarStatus : AADevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMd, &_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 1864))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADevice.$primaryInEarStatus : AADevice(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMd, &_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  (*(*v9 + 1872))(v8);
}

uint64_t AADevice.$primaryInEarStatus.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo11AAPlacementVGMd, &_s7Combine9PublishedVySo11AAPlacementVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADevice.$primaryInEarStatus.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMd, &_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo11AAPlacementVGMd, &_s7Combine9PublishedVySo11AAPlacementVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*AADevice.$primaryInEarStatus.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMd, &_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  AADevice.$primaryInEarStatus.getter();
  return AADevice.$primaryInEarStatus.modify;
}

void AADevice.$primaryInEarStatus.modify(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    AADevice.$primaryInEarStatus.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    AADevice.$primaryInEarStatus.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t AADevice._primaryInEarStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__primaryInEarStatus;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo11AAPlacementVGMd, &_s7Combine9PublishedVySo11AAPlacementVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADevice._primaryInEarStatus.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo11AAPlacementVGMd, &_s7Combine9PublishedVySo11AAPlacementVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__primaryInEarStatus;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of AADevice.secondaryInEarStatus@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for AAPlacement();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for AADevice.secondaryInEarStatus : AADevice@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1888))(v2);
}

uint64_t key path setter for AADevice.secondaryInEarStatus : AADevice(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1896))(v3);
}

uint64_t AADevice.secondaryInEarStatus.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADevice.secondaryInEarStatus.setter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*AADevice.secondaryInEarStatus.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADevice.secondaryInEarStatus.modify;
}

void AADevice.secondaryInEarStatus.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
  }

  (*(v8 + 56))(v8, 0);

  free(v8);
}

uint64_t key path getter for AADevice.$secondaryInEarStatus : AADevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMd, &_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 1912))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADevice.$secondaryInEarStatus : AADevice(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMd, &_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  (*(*v9 + 1920))(v8);
}

uint64_t AADevice.$secondaryInEarStatus.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo11AAPlacementVGMd, &_s7Combine9PublishedVySo11AAPlacementVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADevice.$secondaryInEarStatus.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMd, &_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo11AAPlacementVGMd, &_s7Combine9PublishedVySo11AAPlacementVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*AADevice.$secondaryInEarStatus.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMd, &_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  AADevice.$secondaryInEarStatus.getter();
  return AADevice.$secondaryInEarStatus.modify;
}

void AADevice.$secondaryInEarStatus.modify(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    AADevice.$secondaryInEarStatus.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    AADevice.$secondaryInEarStatus.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t AADevice._secondaryInEarStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__secondaryInEarStatus;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo11AAPlacementVGMd, &_s7Combine9PublishedVySo11AAPlacementVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADevice._secondaryInEarStatus.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo11AAPlacementVGMd, &_s7Combine9PublishedVySo11AAPlacementVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__secondaryInEarStatus;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t key path getter for AADevice.underlyingDevice : AADevice@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1936))(v2);
}

uint64_t key path setter for AADevice.underlyingDevice : AADevice(void *a1, uint64_t *a2)
{
  outlined init with copy of AudioAccessoryDevice?(a1, &v6);
  v4 = v6;
  v5 = *a2;

  (*(*v5 + 1944))(v4);
}

uint64_t AADevice.underlyingDevice.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager8AADevice_underlyingDevice);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t AADevice.underlyingDevice.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice_underlyingDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

Swift::Void __swiftcall AADevice.updateWithDevice(_:)(AudioAccessoryDevice *a1)
{
  v93 = a1;
  v72 = implicit closure #2 in AADevice.updateWithDevice(_:);
  v73 = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_3;
  v74 = implicit closure #3 in AADevice.updateWithDevice(_:);
  v75 = _sSiIegd_SiIegr_TRTA_0;
  v76 = partial apply for implicit closure #4 in AADevice.updateWithDevice(_:);
  v77 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v78 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_3;
  v79 = closure #1 in OSLogArguments.append(_:)partial apply;
  v80 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_3;
  v81 = closure #1 in OSLogArguments.append(_:)partial apply;
  v82 = closure #1 in OSLogArguments.append(_:)partial apply;
  v83 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1;
  v84 = closure #1 in OSLogArguments.append(_:)partial apply;
  v85 = closure #1 in OSLogArguments.append(_:)partial apply;
  v86 = closure #1 in OSLogArguments.append(_:)partial apply;
  v107 = 0;
  v106 = 0;
  v87 = 0;
  v94 = 0;
  v88 = type metadata accessor for Logger();
  v89 = *(v88 - 8);
  v90 = v88 - 8;
  v91 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v92 = v39 - v91;
  v98 = type metadata accessor for DispatchPredicate();
  v96 = *(v98 - 8);
  v97 = v98 - 8;
  v95 = (*(v96 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v94);
  v99 = (v39 - v95);
  v107 = v2;
  v106 = v1;
  type metadata accessor for OS_dispatch_queue();
  v3 = static OS_dispatch_queue.main.getter();
  v4 = v96;
  *v99 = v3;
  v5 = *MEMORY[0x1E69E8020];
  (*(v4 + 104))();
  v100 = _dispatchPreconditionTest(_:)();
  (*(v96 + 8))(v99, v98);
  if (v100)
  {
    v6 = v92;
    v7 = Logger.shared.unsafeMutableAddressor();
    (*(v89 + 16))(v6, v7, v88);
    MEMORY[0x1E69E5928](v93);
    v54 = 7;
    v55 = swift_allocObject();
    *(v55 + 16) = v93;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    v51 = 17;
    v57 = swift_allocObject();
    v50 = 32;
    *(v57 + 16) = 32;
    v58 = swift_allocObject();
    v52 = 8;
    *(v58 + 16) = 8;
    v53 = 32;
    v8 = swift_allocObject();
    v48 = v8;
    *(v8 + 16) = v72;
    *(v8 + 24) = 0;
    v9 = swift_allocObject();
    v10 = v48;
    v59 = v9;
    *(v9 + 16) = v73;
    *(v9 + 24) = v10;
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v52;
    v11 = swift_allocObject();
    v49 = v11;
    *(v11 + 16) = v74;
    *(v11 + 24) = 0;
    v12 = swift_allocObject();
    v13 = v49;
    v62 = v12;
    *(v12 + 16) = v75;
    *(v12 + 24) = v13;
    v63 = swift_allocObject();
    *(v63 + 16) = v50;
    v64 = swift_allocObject();
    *(v64 + 16) = v52;
    v14 = swift_allocObject();
    v15 = v55;
    v56 = v14;
    *(v14 + 16) = v76;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v56;
    v66 = v16;
    *(v16 + 16) = v77;
    *(v16 + 24) = v17;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v65 = _allocateUninitializedArray<A>(_:)();
    v67 = v18;

    v19 = v57;
    v20 = v67;
    *v67 = v78;
    v20[1] = v19;

    v21 = v58;
    v22 = v67;
    v67[2] = v79;
    v22[3] = v21;

    v23 = v59;
    v24 = v67;
    v67[4] = v80;
    v24[5] = v23;

    v25 = v60;
    v26 = v67;
    v67[6] = v81;
    v26[7] = v25;

    v27 = v61;
    v28 = v67;
    v67[8] = v82;
    v28[9] = v27;

    v29 = v62;
    v30 = v67;
    v67[10] = v83;
    v30[11] = v29;

    v31 = v63;
    v32 = v67;
    v67[12] = v84;
    v32[13] = v31;

    v33 = v64;
    v34 = v67;
    v67[14] = v85;
    v34[15] = v33;

    v35 = v66;
    v36 = v67;
    v67[16] = v86;
    v36[17] = v35;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v69, v70))
    {
      v37 = v87;
      v41 = static UnsafeMutablePointer.allocate(capacity:)();
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v42 = createStorage<A>(capacity:type:)(0);
      v43 = createStorage<A>(capacity:type:)(2);
      v44 = &v105;
      v105 = v41;
      v45 = &v104;
      v104 = v42;
      v46 = &v103;
      v103 = v43;
      serialize(_:at:)(2, &v105);
      serialize(_:at:)(3, v44);
      v101 = v78;
      v102 = v57;
      closure #1 in osLogInternal(_:log:type:)(&v101, v44, v45, v46);
      v47 = v37;
      if (v37)
      {

        __break(1u);
      }

      else
      {
        v101 = v79;
        v102 = v58;
        closure #1 in osLogInternal(_:log:type:)(&v101, &v105, &v104, &v103);
        v39[6] = 0;
        v101 = v80;
        v102 = v59;
        closure #1 in osLogInternal(_:log:type:)(&v101, &v105, &v104, &v103);
        v39[5] = 0;
        v101 = v81;
        v102 = v60;
        closure #1 in osLogInternal(_:log:type:)(&v101, &v105, &v104, &v103);
        v39[4] = 0;
        v101 = v82;
        v102 = v61;
        closure #1 in osLogInternal(_:log:type:)(&v101, &v105, &v104, &v103);
        v39[3] = 0;
        v101 = v83;
        v102 = v62;
        closure #1 in osLogInternal(_:log:type:)(&v101, &v105, &v104, &v103);
        v39[2] = 0;
        v101 = v84;
        v102 = v63;
        closure #1 in osLogInternal(_:log:type:)(&v101, &v105, &v104, &v103);
        v39[1] = 0;
        v101 = v85;
        v102 = v64;
        closure #1 in osLogInternal(_:log:type:)(&v101, &v105, &v104, &v103);
        v39[0] = 0;
        v101 = v86;
        v102 = v66;
        closure #1 in osLogInternal(_:log:type:)(&v101, &v105, &v104, &v103);
        _os_log_impl(&dword_1D93D0000, v69, v70, "HeadphoneManager: %s: %ld::: value changed updateDevice: %s", v41, 0x20u);
        destroyStorage<A>(_:count:)(v42, 0, v40);
        destroyStorage<A>(_:count:)(v43, 2, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v41, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    v38 = v71;
    MEMORY[0x1E69E5920](v69);
    (*(v89 + 8))(v92, v88);
    MEMORY[0x1E69E5928](v93);
    (*(*v38 + 1944))(v93);
    AADevice.updatePropertiesFor(updatedDevice:)(v93);
  }

  else
  {
    __break(1u);
  }
}

uint64_t implicit closure #4 in AADevice.updateWithDevice(_:)(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = [a1 debugDescription];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t AADevice.updatePropertiesFor(updatedDevice:)(void *a1)
{
  v240 = a1;
  v225 = 0;
  v287 = 0;
  v286 = 0;
  v224 = 0;
  v242 = 0;
  v226 = type metadata accessor for Logger();
  v227 = *(v226 - 8);
  v228 = v227;
  v229 = *(v227 + 64);
  v2 = MEMORY[0x1EEE9AC00](0);
  v231 = (v229 + 15) & 0xFFFFFFFFFFFFFFF0;
  v230 = &v90 - v231;
  MEMORY[0x1EEE9AC00](v2);
  v232 = &v90 - v231;
  v233 = type metadata accessor for Date();
  v234 = *(v233 - 8);
  v235 = v234;
  v3 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v233 - 8);
  v236 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v240);
  v238 = &v90 - v237;
  v287 = v5;
  v286 = v1;
  v285 = 2;
  AADevice._deviceRemoteSendState.setter(&v285);
  (*(*v239 + 464))([v240 acceptReplyPlayPauseConfig]);
  (*(*v239 + 744))([v240 autoANCCapability]);
  (*(*v239 + 496))([v240 autoANCStrength]);
  (*(*v239 + 528))([v240 bobbleConfig]);
  (*(*v239 + 560))([v240 declineDismissSkipConfig]);
  (*(*v239 + 592))([v240 headGestureToggle]);
  (*(*v239 + 624))([v240 headGestureProxCardShown]);
  (*(*v239 + 656))([v240 hearingAidEnrolled]);
  (*(*v239 + 688))([v240 hearingAidGainSwipeEnabled]);
  (*(*v239 + 776))([v240 bobbleCapability]);
  (*(*v239 + 808))([v240 caseSoundCapability]);
  (*(*v239 + 840))([v240 earTipFitTestCapability]);
  (*(*v239 + 872))([v240 frequencyBand]);
  (*(*v239 + 904))([v240 hearingAidCapability]);
  (*(*v239 + 936))([v240 hearingAidConfig]);
  (*(*v239 + 968))([v240 hearingTestCapability]);
  (*(*v239 + 1000))([v240 hideOffListeningModeCapability]);
  v241 = [v240 audiogramEnrolledTimestamp];
  if (v241)
  {
    v223 = v241;
    v222 = v241;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v235 + 32))(v238, v236, v233);
    (*(v235 + 56))(v238, 0, 1, v233);
  }

  else
  {
    (*(v235 + 56))(v238, 1, 1, v233);
  }

  (*(*v239 + 1032))(v238);
  v195 = 0x1FBD85000uLL;
  (*(*v239 + 1112))([v240 0x1FBD85E83]);
  v6 = v239;
  v284 = [v240 heartRateMonitorCapability];
  v7 = *(*v6 + 1072);
  v193 = &v283;
  v8 = v7();
  v9 = v239;
  v194 = v8;
  v191 = v10;
  v211 = 0;
  v203 = type metadata accessor for AAFeatureCapability();
  v190 = v203;
  v204 = lazy protocol witness table accessor for type AAFeatureCapability and conformance AAFeatureCapability();
  v192 = v204;
  ==? infix<A>(_:_:)(v191, &v284, v203, v204);
  v219 = 0;
  v194(v193);
  (*(*v9 + 1112))([v240 (v195 + 3715)]);
  (*(*v239 + 1144))([v240 hideEarDetectionCapability]);
  v11 = v239;
  v196 = [v240 identifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(*v11 + 1176))(v12);
  v13 = v239;

  (*(*v13 + 1200))([v240 streamStateAoS]);
  v14 = AudioAccessoryDevice.btAddress.getter();
  (*(*v239 + 1280))(v14);
  (*(*v239 + 1304))([v240 sleepDetectionCapability]);
  (*(*v239 + 1336))([v240 sleepDetectionEnabled]);
  v282 = [v240 cameraControlCapability];
  v197 = v281;
  v15 = AADevice.cameraControlCapability.modify(v281);
  v16 = v239;
  v198 = v15;
  ==? infix<A>(_:_:)(v17, &v282, v203, v204);
  v198(v197, v219);
  v280 = [v240 remoteCameraControlConfig];
  v18 = *(*v16 + 1424);
  v201 = &v279;
  v202 = v18();
  v200 = v19;
  v199 = type metadata accessor for AARemoteCameraControlConfig();
  v20 = lazy protocol witness table accessor for type AARemoteCameraControlConfig and conformance AARemoteCameraControlConfig();
  ==? infix<A>(_:_:)(v200, &v280, v199, v20);
  v202(v201, v219);
  v278 = [v240 personalTranslatorCapability];
  v205 = v277;
  v21 = AADevice.personalTranslatorCapability.modify(v277);
  v22 = v239;
  v206 = v21;
  ==? infix<A>(_:_:)(v23, &v278, v203, v204);
  v206(v205, v219);
  v276 = [v240 placementMode];
  v24 = *(*v22 + 1808);
  v209 = &v275;
  v25 = v24();
  v26 = v239;
  v210 = v25;
  v208 = v27;
  v207 = type metadata accessor for AADevicePlacementMode();
  v28 = lazy protocol witness table accessor for type AADevicePlacementMode and conformance AADevicePlacementMode();
  ==? infix<A>(_:_:)(v208, &v276, v207, v28);
  v210(v209, v219);
  v274 = [v240 primaryPlacement];
  v29 = *(*v26 + 1856);
  v213 = &v273;
  v30 = v29();
  v31 = v239;
  v214 = v30;
  v212 = v32;
  v215 = type metadata accessor for AAPlacement();
  v216 = lazy protocol witness table accessor for type AAPlacement and conformance AAPlacement();
  ==? infix<A>(_:_:)(v212, &v274, v215, v216);
  v214(v213, v219);
  v272 = [v240 secondaryPlacement];
  v33 = *(*v31 + 1904);
  v217 = &v271;
  v218 = v33();
  ==? infix<A>(_:_:)(v34, &v272, v215, v216);
  v218(v217, v219);
  v269 = &type metadata for AudioAccessoryFeatures;
  v270 = lazy protocol witness table accessor for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures();
  v268 = v219;
  v220 = &v268;
  v221 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v220);
  if ((v221 & 1) == 0)
  {
LABEL_13:
    v39 = v239;
    v267 = [v240 chargingReminderEnabled];
    v40 = *(*v39 + 1552);
    v115 = &v266;
    v116 = v40();
    v114 = v41;
    v141 = 0;
    v132 = type metadata accessor for AAMultiState();
    v133 = lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
    ==? infix<A>(_:_:)(v114, &v267, v132, v133);
    v134 = 0;
    v116(v115);
    v265 = [v240 chargingReminderCapability];
    v117 = v264;
    v118 = AADevice.chargingReminderCapability.modify(v264);
    ==? infix<A>(_:_:)(v42, &v265, v190, v192);
    v118(v117, v134);
    v263 = [v240 optimizedBatteryChargingCapability];
    v119 = v262;
    v43 = AADevice.optimizedBatteryChargingCapability.modify(v262);
    v44 = v239;
    v120 = v43;
    ==? infix<A>(_:_:)(v45, &v263, v190, v192);
    v120(v119, v134);
    v261 = [v240 optimizedBatteryChargingState];
    v46 = *(*v44 + 1680);
    v122 = &v260;
    v123 = v46();
    v121 = v47;
    v126 = type metadata accessor for AAChargingFeatureEnablementState();
    v127 = lazy protocol witness table accessor for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState();
    ==? infix<A>(_:_:)(v121, &v261, v126, v127);
    v123(v122, v134);
    v259 = [v240 dynamicEndOfChargeCapability];
    v124 = v258;
    v48 = AADevice.dynamicEndOfChargeCapability.modify(v258);
    v49 = v239;
    v125 = v48;
    ==? infix<A>(_:_:)(v50, &v259, v190, v192);
    v125(v124, v134);
    v257 = [v240 dynamicEndOfChargeState];
    v51 = *(*v49 + 1712);
    v128 = &v256;
    v52 = v51();
    v53 = v239;
    v129 = v52;
    ==? infix<A>(_:_:)(v54, &v257, v126, v127);
    v129(v128, v134);
    v255 = [v240 temporaryManagedPairedStatus];
    v55 = *(*v53 + 1744);
    v130 = &v254;
    v56 = v55();
    v57 = v239;
    v131 = v56;
    ==? infix<A>(_:_:)(v58, &v255, v132, v133);
    v131(v130, v134);
    v253 = [v240 healthKitDataWriteAllowed];
    v59 = *(*v57 + 1776);
    v135 = &v252;
    v60 = v59();
    v61 = v230;
    v136 = v60;
    ==? infix<A>(_:_:)(v62, &v253, v132, v133);
    v136(v135, v134);
    v63 = Logger.shared.unsafeMutableAddressor();
    (*(v228 + 16))(v61, v63, v226);

    v163 = Logger.logObject.getter();
    v137 = v163;
    v162 = static os_log_type_t.default.getter();
    v138 = v162;
    v145 = 17;
    v150 = 7;
    v153 = swift_allocObject();
    v139 = v153;
    v144 = 32;
    *(v153 + 16) = 32;
    v64 = swift_allocObject();
    v65 = v144;
    v154 = v64;
    v140 = v64;
    v147 = 8;
    *(v64 + 16) = 8;
    v149 = v65;
    v66 = swift_allocObject();
    v67 = v141;
    v142 = v66;
    *(v66 + 16) = implicit closure #1 in AADevice.updatePropertiesFor(updatedDevice:);
    *(v66 + 24) = v67;
    v68 = swift_allocObject();
    v69 = v142;
    v155 = v68;
    v143 = v68;
    *(v68 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v68 + 24) = v69;
    v156 = swift_allocObject();
    v146 = v156;
    *(v156 + 16) = v144;
    v157 = swift_allocObject();
    v148 = v157;
    *(v157 + 16) = v147;
    v70 = swift_allocObject();
    v71 = v239;
    v151 = v70;
    *(v70 + 16) = partial apply for implicit closure #2 in AADevice.updatePropertiesFor(updatedDevice:);
    *(v70 + 24) = v71;
    v72 = swift_allocObject();
    v73 = v151;
    v160 = v72;
    v152 = v72;
    *(v72 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v72 + 24) = v73;
    v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v158 = _allocateUninitializedArray<A>(_:)();
    v159 = v74;

    v75 = v153;
    v76 = v159;
    *v159 = closure #1 in OSLogArguments.append(_:)partial apply;
    v76[1] = v75;

    v77 = v154;
    v78 = v159;
    v159[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v78[3] = v77;

    v79 = v155;
    v80 = v159;
    v159[4] = closure #1 in OSLogArguments.append(_:)partial apply;
    v80[5] = v79;

    v81 = v156;
    v82 = v159;
    v159[6] = closure #1 in OSLogArguments.append(_:)partial apply;
    v82[7] = v81;

    v83 = v157;
    v84 = v159;
    v159[8] = closure #1 in OSLogArguments.append(_:)partial apply;
    v84[9] = v83;

    v85 = v159;
    v86 = v160;
    v159[10] = closure #1 in OSLogArguments.append(_:)partial apply;
    v85[11] = v86;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v163, v162))
    {
      v87 = v224;
      v107 = static UnsafeMutablePointer.allocate(capacity:)();
      v104 = v107;
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v108 = createStorage<A>(capacity:type:)(0);
      v106 = v108;
      v110 = 2;
      v109 = createStorage<A>(capacity:type:)(2);
      v251 = v107;
      v250 = v108;
      v249 = v109;
      v111 = &v251;
      serialize(_:at:)(v110, &v251);
      serialize(_:at:)(v110, v111);
      v247 = closure #1 in OSLogArguments.append(_:)partial apply;
      v248 = v139;
      closure #1 in osLogInternal(_:log:type:)(&v247, v111, &v250, &v249);
      v112 = v87;
      v113 = v87;
      if (v87)
      {
        v102 = 0;

        __break(1u);
      }

      else
      {
        v247 = closure #1 in OSLogArguments.append(_:)partial apply;
        v248 = v140;
        closure #1 in osLogInternal(_:log:type:)(&v247, &v251, &v250, &v249);
        v100 = 0;
        v101 = 0;
        v247 = closure #1 in OSLogArguments.append(_:)partial apply;
        v248 = v143;
        closure #1 in osLogInternal(_:log:type:)(&v247, &v251, &v250, &v249);
        v98 = 0;
        v99 = 0;
        v247 = closure #1 in OSLogArguments.append(_:)partial apply;
        v248 = v146;
        closure #1 in osLogInternal(_:log:type:)(&v247, &v251, &v250, &v249);
        v96 = 0;
        v97 = 0;
        v247 = closure #1 in OSLogArguments.append(_:)partial apply;
        v248 = v148;
        closure #1 in osLogInternal(_:log:type:)(&v247, &v251, &v250, &v249);
        v94 = 0;
        v95 = 0;
        v247 = closure #1 in OSLogArguments.append(_:)partial apply;
        v248 = v152;
        closure #1 in osLogInternal(_:log:type:)(&v247, &v251, &v250, &v249);
        v92 = 0;
        v93 = 0;
        _os_log_impl(&dword_1D93D0000, v137, v138, "HeadphoneManager: %s: updated VM set: %s", v104, 0x16u);
        destroyStorage<A>(_:count:)(v106, 0, v105);
        destroyStorage<A>(_:count:)(v109, 2, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v104, MEMORY[0x1E69E7508]);

        v103 = v92;
      }
    }

    else
    {
      v88 = v224;

      v103 = v88;
    }

    v91 = v103;

    (*(v228 + 8))(v230, v226);
    $defer #1 () in AADevice.updatePropertiesFor(updatedDevice:)(v239);
    return v91;
  }

  v189 = [v240 batteryInfo];
  if (v189)
  {
    v188 = v189;
    v187 = v189;
    v242 = v189;
    v186 = (*(*v239 + 1224))();
    (*(*v186 + 448))(v187);

    goto LABEL_13;
  }

  v35 = v232;
  v36 = Logger.shared.unsafeMutableAddressor();
  (*(v228 + 16))(v35, v36, v226);
  v184 = Logger.logObject.getter();
  v181 = v184;
  v183 = static os_log_type_t.error.getter();
  v182 = v183;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v185 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v184, v183))
  {
    v37 = v224;
    v172 = static UnsafeMutablePointer.allocate(capacity:)();
    v168 = v172;
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v170 = 0;
    v173 = createStorage<A>(capacity:type:)(0);
    v171 = v173;
    v174 = createStorage<A>(capacity:type:)(v170);
    v246[0] = v172;
    v245 = v173;
    v244 = v174;
    v175 = 0;
    v176 = v246;
    serialize(_:at:)(0, v246);
    serialize(_:at:)(v175, v176);
    v243 = v185;
    v177 = &v90;
    MEMORY[0x1EEE9AC00](&v90);
    v178 = &v90 - 6;
    *(&v90 - 4) = v38;
    *(&v90 - 3) = &v245;
    *(&v90 - 2) = &v244;
    v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v180 = v37;
    if (v37)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v181, v182, "AADevice: Battery info is nil", v168, 2u);
      v166 = 0;
      destroyStorage<A>(_:count:)(v171, 0, v169);
      destroyStorage<A>(_:count:)(v174, v166, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v168, MEMORY[0x1E69E7508]);

      v167 = v180;
    }
  }

  else
  {

    v167 = v224;
  }

  v164 = v167;

  (*(v228 + 8))(v232, v226);
  $defer #1 () in AADevice.updatePropertiesFor(updatedDevice:)(v239);
  return v164;
}

uint64_t $defer #1 () in AADevice.updatePropertiesFor(updatedDevice:)(uint64_t a1)
{
  v3 = a1;
  v2 = 0;
  return AADevice._deviceRemoteSendState.setter(&v2);
}

uint64_t AADevice.debugDescription.getter()
{
  v339 = 0;
  v338._countAndFlagsBits = 0;
  v338._object = 0;
  v338 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" accptRplyPlPssCfg: ", 0x14uLL, 1);
  v336 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v337 = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](countAndFlagsBits);

  v4 = (*(*v251 + 456))(v3);
  v335 = AAHeadGestureConfig.rawValue.getter(v4);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v5);

  v198 = v336;
  v197 = v337;

  outlined destroy of DefaultStringInterpolation(&v336);
  v6 = MEMORY[0x1DA7309B0](v198, v197);
  MEMORY[0x1DA7309C0](v0._countAndFlagsBits, v0._object, v6);

  static String.+= infix(_:_:)();

  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" decDisSkipCfg: ", 0x10uLL, 1);
  v333 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v334 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v9);

  v11 = (*(*v251 + 552))(v10);
  v332 = AAHeadGestureConfig.rawValue.getter(v11);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v12);

  v200 = v333;
  v199 = v334;

  outlined destroy of DefaultStringInterpolation(&v333);
  v13 = MEMORY[0x1DA7309B0](v200, v199);
  MEMORY[0x1DA7309C0](v7._countAndFlagsBits, v7._object, v13);

  static String.+= infix(_:_:)();

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" autoANCCap: ", 0xDuLL, 1);
  v330 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v331 = v15;
  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v16);

  v18 = (*(*v251 + 736))(v17);
  v329 = AAAutoANCCapability.rawValue.getter(v18);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v19);

  v202 = v330;
  v201 = v331;

  outlined destroy of DefaultStringInterpolation(&v330);
  v20 = MEMORY[0x1DA7309B0](v202, v201);
  MEMORY[0x1DA7309C0](v14._countAndFlagsBits, v14._object, v20);

  static String.+= infix(_:_:)();

  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" autoANCStr: ", 0xDuLL, 1);
  v327 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v328 = v22;
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v23);

  v25 = (*(*v251 + 488))(v24);
  v326 = AAAutoANCStrength.rawValue.getter(v25);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v26);

  v204 = v327;
  v203 = v328;

  outlined destroy of DefaultStringInterpolation(&v327);
  v27 = MEMORY[0x1DA7309B0](v204, v203);
  MEMORY[0x1DA7309C0](v21._countAndFlagsBits, v21._object, v27);

  static String.+= infix(_:_:)();

  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" bblCap: ", 9uLL, 1);
  v324 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v325 = v29;
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v30);

  v32 = (*(*v251 + 768))(v31);
  v323 = AAFeatureCapability.rawValue.getter(v32);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v33);

  v206 = v324;
  v205 = v325;

  outlined destroy of DefaultStringInterpolation(&v324);
  v34 = MEMORY[0x1DA7309B0](v206, v205);
  MEMORY[0x1DA7309C0](v28._countAndFlagsBits, v28._object, v34);

  static String.+= infix(_:_:)();

  v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" bblCfg: ", 9uLL, 1);
  v321 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v322 = v36;
  v37 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v37);

  v39 = (*(*v251 + 520))(v38);
  v320 = AABobbleConfiguration.rawValue.getter(v39);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v40 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v40);

  v208 = v321;
  v207 = v322;

  outlined destroy of DefaultStringInterpolation(&v321);
  v41 = MEMORY[0x1DA7309B0](v208, v207);
  MEMORY[0x1DA7309C0](v35._countAndFlagsBits, v35._object, v41);

  static String.+= infix(_:_:)();

  v42 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" caseSndCap: ", 0xDuLL, 1);
  v318 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v319 = v43;
  v44 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v44);

  v46 = (*(*v251 + 800))(v45);
  v317 = AAFeatureCapability.rawValue.getter(v46);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v47 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v47);

  v210 = v318;
  v209 = v319;

  outlined destroy of DefaultStringInterpolation(&v318);
  v48 = MEMORY[0x1DA7309B0](v210, v209);
  MEMORY[0x1DA7309C0](v42._countAndFlagsBits, v42._object, v48);

  static String.+= infix(_:_:)();

  v49 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" earTipFitTestCap: ", 0x13uLL, 1);
  v315 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v316 = v50;
  v51 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v51);

  v53 = (*(*v251 + 832))(v52);
  v314 = AAFeatureCapability.rawValue.getter(v53);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v54 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v54);

  v212 = v315;
  v211 = v316;

  outlined destroy of DefaultStringInterpolation(&v315);
  v55 = MEMORY[0x1DA7309B0](v212, v211);
  MEMORY[0x1DA7309C0](v49._countAndFlagsBits, v49._object, v55);

  static String.+= infix(_:_:)();

  v56 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" freqBnd: ", 0xAuLL, 1);
  v312 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v313 = v57;
  v58 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v58);

  v60 = (*(*v251 + 864))(v59);
  v311 = AAFrequencyBand.rawValue.getter(v60);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v61 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v61);

  v214 = v312;
  v213 = v313;

  outlined destroy of DefaultStringInterpolation(&v312);
  v62 = MEMORY[0x1DA7309B0](v214, v213);
  MEMORY[0x1DA7309C0](v56._countAndFlagsBits, v56._object, v62);

  static String.+= infix(_:_:)();

  v63 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" headGstrTgl: ", 0xEuLL, 1);
  v309 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v310 = v64;
  v65 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v65);

  v67 = (*(*v251 + 584))(v66);
  v308 = AAMultiState.rawValue.getter(v67);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v68 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v68);

  v216 = v309;
  v215 = v310;

  outlined destroy of DefaultStringInterpolation(&v309);
  v69 = MEMORY[0x1DA7309B0](v216, v215);
  MEMORY[0x1DA7309C0](v63._countAndFlagsBits, v63._object, v69);

  static String.+= infix(_:_:)();

  v70 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" headGstrProxShwn: ", 0x13uLL, 1);
  v306 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v307 = v71;
  v72 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v72);

  v74 = (*(*v251 + 616))(v73);
  v305 = AAMultiState.rawValue.getter(v74);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v75 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v75);

  v218 = v306;
  v217 = v307;

  outlined destroy of DefaultStringInterpolation(&v306);
  v76 = MEMORY[0x1DA7309B0](v218, v217);
  MEMORY[0x1DA7309C0](v70._countAndFlagsBits, v70._object, v76);

  static String.+= infix(_:_:)();

  v77 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" haCap: ", 8uLL, 1);
  v303 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v304 = v78;
  v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v79);

  v81 = (*(*v251 + 896))(v80);
  v302 = AAHearingAidCapability.rawValue.getter(v81);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v82 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v82);

  v220 = v303;
  v219 = v304;

  outlined destroy of DefaultStringInterpolation(&v303);
  v83 = MEMORY[0x1DA7309B0](v220, v219);
  MEMORY[0x1DA7309C0](v77._countAndFlagsBits, v77._object, v83);

  static String.+= infix(_:_:)();

  v84 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" haEnrll: ", 0xAuLL, 1);
  v300 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v301 = v85;
  v86 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v86);

  v88 = (*(*v251 + 648))(v87);
  v299 = AAMultiState.rawValue.getter(v88);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v89 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v89);

  v222 = v300;
  v221 = v301;

  outlined destroy of DefaultStringInterpolation(&v300);
  v90 = MEMORY[0x1DA7309B0](v222, v221);
  MEMORY[0x1DA7309C0](v84._countAndFlagsBits, v84._object, v90);

  static String.+= infix(_:_:)();

  v91 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" haCfg: ", 8uLL, 1);
  v297 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v298 = v92;
  v93 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v93);

  v95 = (*(*v251 + 928))(v94);
  v296 = AAHearingAidConfiguration.rawValue.getter(v95);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v96 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v96);

  v224 = v297;
  v223 = v298;

  outlined destroy of DefaultStringInterpolation(&v297);
  v97 = MEMORY[0x1DA7309B0](v224, v223);
  MEMORY[0x1DA7309C0](v91._countAndFlagsBits, v91._object, v97);

  static String.+= infix(_:_:)();

  v98 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" htCap: ", 8uLL, 1);
  v294 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v295 = v99;
  v100 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v100);

  v102 = (*(*v251 + 960))(v101);
  v293 = AAHearingTestCapability.rawValue.getter(v102);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v103 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v103);

  v226 = v294;
  v225 = v295;

  outlined destroy of DefaultStringInterpolation(&v294);
  v104 = MEMORY[0x1DA7309B0](v226, v225);
  MEMORY[0x1DA7309C0](v98._countAndFlagsBits, v98._object, v104);

  static String.+= infix(_:_:)();

  v105 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" haGSwpeEn: ", 0xCuLL, 1);
  v291 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v292 = v106;
  v107 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v107);

  v109 = (*(*v251 + 680))(v108);
  v290 = AAMultiState.rawValue.getter(v109);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v110 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v110);

  v228 = v291;
  v227 = v292;

  outlined destroy of DefaultStringInterpolation(&v291);
  v111 = MEMORY[0x1DA7309B0](v228, v227);
  MEMORY[0x1DA7309C0](v105._countAndFlagsBits, v105._object, v111);

  static String.+= infix(_:_:)();

  v112 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hideOffLstnMdCap: ", 0x13uLL, 1);
  v288 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v289 = v113;
  v114 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v114);

  v116 = (*(*v251 + 992))(v115);
  v287 = AAFeatureCapability.rawValue.getter(v116);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v117 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v117);

  v230 = v288;
  v229 = v289;

  outlined destroy of DefaultStringInterpolation(&v288);
  v118 = MEMORY[0x1DA7309B0](v230, v229);
  MEMORY[0x1DA7309C0](v112._countAndFlagsBits, v112._object, v118);

  static String.+= infix(_:_:)();

  v119 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hrmEn: ", 8uLL, 1);
  v285 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v286 = v120;
  v121 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v121);

  v123 = (*(*v251 + 1104))(v122);
  v284 = AAMultiState.rawValue.getter(v123);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v124 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v124);

  v232 = v285;
  v231 = v286;

  outlined destroy of DefaultStringInterpolation(&v285);
  v125 = MEMORY[0x1DA7309B0](v232, v231);
  MEMORY[0x1DA7309C0](v119._countAndFlagsBits, v119._object, v125);

  static String.+= infix(_:_:)();

  v126 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" hideEarDetCap: ", 0x10uLL, 1);
  v282 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v283 = v127;
  v128 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v128);

  v130 = (*(*v251 + 1136))(v129);
  v281 = AAFeatureCapability.rawValue.getter(v130);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v131 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v131);

  v234 = v282;
  v233 = v283;

  outlined destroy of DefaultStringInterpolation(&v282);
  v132 = MEMORY[0x1DA7309B0](v234, v233);
  MEMORY[0x1DA7309C0](v126._countAndFlagsBits, v126._object, v132);

  static String.+= infix(_:_:)();

  v133 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" strmStateAoS: ", 0xFuLL, 1);
  v279 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v280 = v134;
  v135 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v135);

  v137 = (*(*v251 + 1192))(v136);
  v278 = AAStreamStateAoS.rawValue.getter(v137);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v138 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v138);

  v236 = v279;
  v235 = v280;

  outlined destroy of DefaultStringInterpolation(&v279);
  v139 = MEMORY[0x1DA7309B0](v236, v235);
  MEMORY[0x1DA7309C0](v133._countAndFlagsBits, v133._object, v139);

  static String.+= infix(_:_:)();

  v140 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" slpDetCap: ", 0xCuLL, 1);
  v276 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v277 = v141;
  v142 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v142);

  v144 = (*(*v251 + 1296))(v143);
  v275 = AAFeatureCapability.rawValue.getter(v144);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v145 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v145);

  v238 = v276;
  v237 = v277;

  outlined destroy of DefaultStringInterpolation(&v276);
  v146 = MEMORY[0x1DA7309B0](v238, v237);
  MEMORY[0x1DA7309C0](v140._countAndFlagsBits, v140._object, v146);

  static String.+= infix(_:_:)();

  v147 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" slpDetEn: ", 0xBuLL, 1);
  v273 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v274 = v148;
  v149 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v149);

  v151 = (*(*v251 + 1328))(v150);
  v272 = AAMultiState.rawValue.getter(v151);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v152 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v152);

  v240 = v273;
  v239 = v274;

  outlined destroy of DefaultStringInterpolation(&v273);
  v153 = MEMORY[0x1DA7309B0](v240, v239);
  MEMORY[0x1DA7309C0](v147._countAndFlagsBits, v147._object, v153);

  static String.+= infix(_:_:)();

  v154 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" camCtrlCap: ", 0xDuLL, 1);
  v270 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v271 = v155;
  v156 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v156);

  v158 = (*(*v251 + 1360))(v157);
  v269 = AAFeatureCapability.rawValue.getter(v158);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v159 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v159);

  v242 = v270;
  v241 = v271;

  outlined destroy of DefaultStringInterpolation(&v270);
  v160 = MEMORY[0x1DA7309B0](v242, v241);
  MEMORY[0x1DA7309C0](v154._countAndFlagsBits, v154._object, v160);

  static String.+= infix(_:_:)();

  v161 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" camCtrlCfg: ", 0xDuLL, 1);
  v267 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v268 = v162;
  v163 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v163);

  v165 = (*(*v251 + 1408))(v164);
  v266 = AARemoteCameraControlConfig.rawValue.getter(v165);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v166 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v166);

  v244 = v267;
  v243 = v268;

  outlined destroy of DefaultStringInterpolation(&v267);
  v167 = MEMORY[0x1DA7309B0](v244, v243);
  MEMORY[0x1DA7309C0](v161._countAndFlagsBits, v161._object, v167);

  static String.+= infix(_:_:)();

  v168 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ptCap: ", 8uLL, 1);
  v264 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v265 = v169;
  v170 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v170);

  v172 = (*(*v251 + 1440))(v171);
  v263 = AAFeatureCapability.rawValue.getter(v172);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v173 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v173);

  v246 = v264;
  v245 = v265;

  outlined destroy of DefaultStringInterpolation(&v264);
  v174 = MEMORY[0x1DA7309B0](v246, v245);
  MEMORY[0x1DA7309C0](v168._countAndFlagsBits, v168._object, v174);

  static String.+= infix(_:_:)();

  v175 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" chrgRmndrEn: ", 0xEuLL, 1);
  v261 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v262 = v176;
  v177 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v177);

  v179 = (*(*v251 + 1536))(v178);
  v260 = AAMultiState.rawValue.getter(v179);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v180 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v180);

  v248 = v261;
  v247 = v262;

  outlined destroy of DefaultStringInterpolation(&v261);
  v181 = MEMORY[0x1DA7309B0](v248, v247);
  MEMORY[0x1DA7309C0](v175._countAndFlagsBits, v175._object, v181);

  static String.+= infix(_:_:)();

  v182 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" chrgRmndrCap: ", 0xFuLL, 1);
  v258 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v259 = v183;
  v184 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v184);

  v186 = (*(*v251 + 1488))(v185);
  v257 = AAFeatureCapability.rawValue.getter(v186);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v187 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v187);

  v250 = v258;
  v249 = v259;

  outlined destroy of DefaultStringInterpolation(&v258);
  v188 = MEMORY[0x1DA7309B0](v250, v249);
  MEMORY[0x1DA7309C0](v182._countAndFlagsBits, v182._object, v188);

  static String.+= infix(_:_:)();

  v189 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" tempPairStat: ", 0xFuLL, 1);
  v255 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v256 = v190;
  v191 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v191);

  v193 = (*(*v251 + 1728))(v192);
  AAMultiState.rawValue.getter(v193);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v194 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v194);

  v253 = v255;
  v252 = v256;

  outlined destroy of DefaultStringInterpolation(&v255);
  v195 = MEMORY[0x1DA7309B0](v253, v252);
  MEMORY[0x1DA7309C0](v189._countAndFlagsBits, v189._object, v195);

  static String.+= infix(_:_:)();

  v254 = v338._countAndFlagsBits;

  outlined destroy of String(&v338);
  return v254;
}

uint64_t AADevice.deinit()
{
  outlined destroy of AADeviceProperty<AADevice, AAHeadGestureConfig>(v0 + 3);
  outlined destroy of AADeviceProperty<AADevice, AAAutoANCStrength>(v0 + 8);
  outlined destroy of AADeviceProperty<AADevice, AABobbleConfiguration>(v0 + 13);
  outlined destroy of AADeviceProperty<AADevice, AAHeadGestureConfig>(v0 + 18);
  outlined destroy of AADeviceProperty<AADevice, AAMultiState>(v0 + 23);
  outlined destroy of AADeviceProperty<AADevice, AAMultiState>(v0 + 28);
  outlined destroy of AADeviceProperty<AADevice, AAMultiState>(v0 + 33);
  outlined destroy of AADeviceProperty<AADevice, AAMultiState>(v0 + 38);
  outlined destroy of Data?((v0 + 344));
  outlined destroy of AADeviceProperty<AADevice, AAAutoANCCapability>(v0 + 45);
  outlined destroy of AADeviceProperty<AADevice, AAFeatureCapability>(v0 + 50);
  outlined destroy of AADeviceProperty<AADevice, AAFeatureCapability>(v0 + 55);
  outlined destroy of AADeviceProperty<AADevice, AAFeatureCapability>(v0 + 60);
  outlined destroy of AADeviceProperty<AADevice, AAFrequencyBand>(v0 + 65);
  outlined destroy of AADeviceProperty<AADevice, AAHearingAidCapability>(v0 + 70);
  outlined destroy of AADeviceProperty<AADevice, AAHearingAidConfiguration>(v0 + 75);
  outlined destroy of AADeviceProperty<AADevice, AAHearingTestCapability>(v0 + 80);
  outlined destroy of AADeviceProperty<AADevice, AAFeatureCapability>(v0 + 85);
  outlined destroy of AADeviceProperty<AADevice, Date?>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__audiogramEnrolledTimestamp]);
  v4 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__heartRateMonitorCapability;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  v7 = *(*(v6 - 8) + 8);
  v7(&v0[v4]);
  outlined destroy of AADeviceProperty<AADevice, AAMultiState>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__heartRateMonitorEnabled]);
  outlined destroy of AADeviceProperty<AADevice, AAFeatureCapability>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__hideEarDetectionCapability]);
  outlined destroy of String?(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice_identifier]);
  outlined destroy of AADeviceProperty<AADevice, AAStreamStateAoS>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__streamStateAoS]);
  v5 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__batteryInfo;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMd, &_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMR);
  (*(*(v1 - 8) + 8))(&v0[v5]);
  outlined destroy of String(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice_btAddress]);
  outlined destroy of AADeviceProperty<AADevice, AAFeatureCapability>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__sleepDetectionCapability]);
  outlined destroy of AADeviceProperty<AADevice, AAMultiState>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__sleepDetectionEnabled]);
  (v7)(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__cameraControlCapability], v6);
  outlined destroy of AADeviceProperty<AADevice, AARemoteCameraControlConfig>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__cameraControlConfig]);
  (v7)(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__personalTranslatorCapability], v6);
  (v7)(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__chargingReminderCapability], v6);
  outlined destroy of AADeviceProperty<AADevice, AAMultiState>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__chargingReminderEnabled]);
  (v7)(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__optimizedBatteryChargingCapability], v6);
  (v7)(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__dynamicEndOfChargeCapability], v6);
  outlined destroy of AADeviceProperty<AADevice, AAChargingFeatureEnablementState>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__optimizedBatteryChargingState]);
  outlined destroy of AADeviceProperty<AADevice, AAChargingFeatureEnablementState>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__dynamicEndOfChargeState]);
  outlined destroy of AADeviceProperty<AADevice, AAMultiState>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__temporaryManagedPairedStatus]);
  outlined destroy of AADeviceProperty<AADevice, AAMultiState>(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__healthKitDataWriteAllowed]);
  v8 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__IEDEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21AADevicePlacementModeVGMd, &_s7Combine9PublishedVySo21AADevicePlacementModeVGMR);
  (*(*(v2 - 8) + 8))(&v0[v8]);
  v9 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__primaryInEarStatus;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo11AAPlacementVGMd, &_s7Combine9PublishedVySo11AAPlacementVGMR);
  v11 = *(*(v10 - 8) + 8);
  v11(&v0[v9]);
  (v11)(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice__secondaryInEarStatus], v10);
  outlined destroy of AudioAccessoryDevice?(&v0[OBJC_IVAR____TtC16HeadphoneManager8AADevice_underlyingDevice]);
  return v12;
}

uint64_t AADevice.__deallocating_deinit()
{
  v0 = *AADevice.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t AADevice.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return AADevice.init()();
}

uint64_t AADevice.init()()
{
  v217 = 0;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo11AAPlacementVGMd, &_s7Combine9PublishedVySo11AAPlacementVGMR);
  v133 = *(v139 - 8);
  v134 = v139 - 8;
  v12 = (*(v133 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v12 - v12;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21AADevicePlacementModeVGMd, &_s7Combine9PublishedVySo21AADevicePlacementModeVGMR);
  v128 = *(v132 - 8);
  v129 = v132 - 8;
  v13 = (*(v128 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v12 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMd, &_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMR);
  v79 = *(v83 - 8);
  v80 = v83 - 8;
  v14 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v12 - v14;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  v67 = *(v107 - 8);
  v68 = v107 - 8;
  v15 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v12 - v15;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = (*(*(v65 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v12 - v16;
  v217 = v0;
  *(v0 + 16) = 0;
  KeyPath = swift_getKeyPath();
  v18 = &v216;
  v216 = 0;
  v142 = 0;
  v124 = type metadata accessor for AADevice();
  v29 = type metadata accessor for AAHeadGestureConfig();
  v126 = lazy protocol witness table accessor for type AADevice and conformance AADevice();
  v30 = lazy protocol witness table accessor for type AAHeadGestureConfig and conformance AAHeadGestureConfig();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v215);
  v214 = v215;
  AADeviceProperty.init(_:_:_:_:)(KeyPath, v18, v124, &v214, v124, v29, v0 + 24);
  v19 = swift_getKeyPath();
  v20 = &v213;
  v136 = 0;
  v213 = 0;
  v21 = type metadata accessor for AAAutoANCStrength();
  v22 = lazy protocol witness table accessor for type AAAutoANCStrength and conformance AAAutoANCStrength();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v212);
  v211 = v212;
  AADeviceProperty.init(_:_:_:_:)(v19, v20, v124, &v211, v124, v21, v0 + 64);
  v23 = swift_getKeyPath();
  v24 = &v210;
  v210 = 0;
  v25 = type metadata accessor for AABobbleConfiguration();
  v26 = lazy protocol witness table accessor for type AABobbleConfiguration and conformance AABobbleConfiguration();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v209);
  v208 = v209;
  AADeviceProperty.init(_:_:_:_:)(v23, v24, v124, &v208, v124, v25, v0 + 104);
  v27 = swift_getKeyPath();
  v28 = &v207;
  v207 = 0;
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v206);
  v205 = v206;
  AADeviceProperty.init(_:_:_:_:)(v27, v28, v124, &v205, v124, v29, v0 + 144);
  v31 = swift_getKeyPath();
  v32 = &v204;
  v204 = 0;
  v125 = type metadata accessor for AAMultiState();
  v127 = lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v203);
  v202 = v203;
  AADeviceProperty.init(_:_:_:_:)(v31, v32, v124, &v202, v124, v125, v0 + 184);
  v33 = swift_getKeyPath();
  v34 = &v201;
  v201 = 0;
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v200);
  v199 = v200;
  AADeviceProperty.init(_:_:_:_:)(v33, v34, v124, &v199, v124, v125, v0 + 224);
  v35 = swift_getKeyPath();
  v36 = &v198;
  v198 = 0;
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v197);
  v196 = v197;
  AADeviceProperty.init(_:_:_:_:)(v35, v36, v124, &v196, v124, v125, v0 + 264);
  v37 = swift_getKeyPath();
  v38 = &v195;
  v195 = 0;
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v194);
  v193 = v194;
  AADeviceProperty.init(_:_:_:_:)(v37, v38, v124, &v193, v124, v125, v0 + 304);
  *(v0 + 344) = 0;
  *(v0 + 352) = 0xF000000000000000;
  v42 = swift_getKeyPath();
  v39 = &v192;
  v192 = 0;
  v40 = &v191;
  v86 = 1;
  v191 = 1;
  v41 = type metadata accessor for AAAutoANCCapability();
  lazy protocol witness table accessor for type AAAutoANCCapability and conformance AAAutoANCCapability();
  AADeviceProperty.init(_:_:_:_:)(v42, v39, v124, v40, v124, v41, v0 + 360);
  v45 = swift_getKeyPath();
  v43 = &v190;
  v190 = 0;
  v44 = &v189;
  v189 = v86;
  v88 = type metadata accessor for AAFeatureCapability();
  v89 = lazy protocol witness table accessor for type AAFeatureCapability and conformance AAFeatureCapability();
  AADeviceProperty.init(_:_:_:_:)(v45, v43, v124, v44, v124, v88, v0 + 400);
  v1 = swift_getKeyPath();
  v188 = 0;
  v187 = v86;
  AADeviceProperty.init(_:_:_:_:)(v1, &v188, v124, &v187, v124, v88, v0 + 440);
  v2 = swift_getKeyPath();
  v186 = 0;
  v185 = v86;
  AADeviceProperty.init(_:_:_:_:)(v2, &v186, v124, &v185, v124, v88, v0 + 480);
  v49 = swift_getKeyPath();
  v46 = &v184;
  v184 = 0;
  v47 = &v183;
  v183 = v86;
  v48 = type metadata accessor for AAFrequencyBand();
  lazy protocol witness table accessor for type AAFrequencyBand and conformance AAFrequencyBand();
  AADeviceProperty.init(_:_:_:_:)(v49, v46, v124, v47, v124, v48, v0 + 520);
  v53 = swift_getKeyPath();
  v50 = &v182;
  v182 = 0;
  v51 = &v181;
  v181 = v86;
  v52 = type metadata accessor for AAHearingAidCapability();
  lazy protocol witness table accessor for type AAHearingAidCapability and conformance AAHearingAidCapability();
  AADeviceProperty.init(_:_:_:_:)(v53, v50, v124, v51, v124, v52, v0 + 560);
  v57 = swift_getKeyPath();
  v54 = &v180;
  v180 = 0;
  v55 = &v179;
  v179 = v86;
  v56 = type metadata accessor for AAHearingAidConfiguration();
  lazy protocol witness table accessor for type AAHearingAidConfiguration and conformance AAHearingAidConfiguration();
  AADeviceProperty.init(_:_:_:_:)(v57, v54, v124, v55, v124, v56, v0 + 600);
  v61 = swift_getKeyPath();
  v58 = &v178;
  v178 = 0;
  v59 = &v177;
  v177 = v86;
  v60 = type metadata accessor for AAHearingTestCapability();
  lazy protocol witness table accessor for type AAHearingTestCapability and conformance AAHearingTestCapability();
  AADeviceProperty.init(_:_:_:_:)(v61, v58, v124, v59, v124, v60, v0 + 640);
  v3 = swift_getKeyPath();
  v176 = 0;
  v175 = v86;
  AADeviceProperty.init(_:_:_:_:)(v3, &v176, v124, &v175, v124, v88, v0 + 680);
  v62 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__audiogramEnrolledTimestamp;
  v66 = swift_getKeyPath();
  v4 = *(*(type metadata accessor for Date() - 8) + 56);
  v84 = 1;
  v4(v63, 1);
  v64 = &v174;
  v174 = v86;
  lazy protocol witness table accessor for type Date? and conformance <A> A?();
  AADeviceProperty.init(_:_:_:_:)(v66, v63, v124, v64, v124, v65, v0 + v62);
  v69 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__heartRateMonitorCapability;
  property wrapper backing initializer of AADevice.heartRateMonitorCapability(v136, v106);
  v109 = *(v67 + 32);
  v108 = v67 + 32;
  v109(v0 + v69, v106, v107);
  v70 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__heartRateMonitorEnabled;
  v71 = swift_getKeyPath();
  v72 = &v173;
  v173 = 0;
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v172);
  v171 = v172;
  AADeviceProperty.init(_:_:_:_:)(v71, v72, v124, &v171, v124, v125, v0 + v70);
  v73 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__hideEarDetectionCapability;
  v5 = swift_getKeyPath();
  v170 = 0;
  v169 = v86;
  AADeviceProperty.init(_:_:_:_:)(v5, &v170, v124, &v169, v124, v88, v0 + v73);
  v6 = (v0 + OBJC_IVAR____TtC16HeadphoneManager8AADevice_identifier);
  *v6 = 0;
  v6[1] = 0;
  v74 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__streamStateAoS;
  v78 = swift_getKeyPath();
  v75 = &v168;
  v168 = 0;
  v76 = &v167;
  v167 = v86;
  v77 = type metadata accessor for AAStreamStateAoS();
  lazy protocol witness table accessor for type AAStreamStateAoS and conformance AAStreamStateAoS();
  AADeviceProperty.init(_:_:_:_:)(v78, v75, v124, v76, v124, v77, v0 + v74);
  v81 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__batteryInfo;
  type metadata accessor for AADBatteryInfoVM();
  v7 = AADBatteryInfoVM.__allocating_init(with:)(v142);
  v8 = v143;
  property wrapper backing initializer of AADevice.batteryInfo(v7, v82);
  (*(v79 + 32))(v8 + v81, v82, v83);
  v85 = OBJC_IVAR____TtC16HeadphoneManager8AADevice_btAddress;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unknown", 7uLL, v84 & 1);
  *(v8 + v85) = v9;
  v87 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__sleepDetectionCapability;
  v10 = swift_getKeyPath();
  v166 = 0;
  v165 = v86;
  AADeviceProperty.init(_:_:_:_:)(v10, &v166, v124, &v165, v124, v88, v8 + v87);
  v90 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__sleepDetectionEnabled;
  v91 = swift_getKeyPath();
  v92 = &v164;
  v164 = 0;
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v163);
  v162 = v163;
  AADeviceProperty.init(_:_:_:_:)(v91, v92, v124, &v162, v124, v125, v8 + v90);
  v93 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__cameraControlCapability;
  property wrapper backing initializer of AADevice.cameraControlCapability(v136, v106);
  v109(v8 + v93, v106, v107);
  v94 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__cameraControlConfig;
  v95 = swift_getKeyPath();
  v96 = &v161;
  v161 = 0;
  v97 = type metadata accessor for AARemoteCameraControlConfig();
  v98 = lazy protocol witness table accessor for type AARemoteCameraControlConfig and conformance AARemoteCameraControlConfig();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v160);
  v159 = v160;
  AADeviceProperty.init(_:_:_:_:)(v95, v96, v124, &v159, v124, v97, v8 + v94);
  v99 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__personalTranslatorCapability;
  property wrapper backing initializer of AADevice.personalTranslatorCapability(v136, v106);
  v109(v8 + v99, v106, v107);
  v100 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__chargingReminderCapability;
  property wrapper backing initializer of AADevice.chargingReminderCapability(v136, v106);
  v109(v8 + v100, v106, v107);
  v101 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__chargingReminderEnabled;
  v102 = swift_getKeyPath();
  v103 = &v158;
  v158 = 0;
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v157);
  v156 = v157;
  AADeviceProperty.init(_:_:_:_:)(v102, v103, v124, &v156, v124, v125, v8 + v101);
  v104 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__optimizedBatteryChargingCapability;
  property wrapper backing initializer of AADevice.optimizedBatteryChargingCapability(v136, v106);
  v109(v8 + v104, v106, v107);
  v105 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__dynamicEndOfChargeCapability;
  property wrapper backing initializer of AADevice.dynamicEndOfChargeCapability(v136, v106);
  v109(v8 + v105, v106, v107);
  v110 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__optimizedBatteryChargingState;
  v111 = swift_getKeyPath();
  v112 = &v155;
  v155 = 0;
  v116 = type metadata accessor for AAChargingFeatureEnablementState();
  v117 = lazy protocol witness table accessor for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v154);
  v153 = v154;
  AADeviceProperty.init(_:_:_:_:)(v111, v112, v124, &v153, v124, v116, v8 + v110);
  v113 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__dynamicEndOfChargeState;
  v114 = swift_getKeyPath();
  v115 = &v152;
  v152 = 0;
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v151);
  v150 = v151;
  AADeviceProperty.init(_:_:_:_:)(v114, v115, v124, &v150, v124, v116, v8 + v113);
  v118 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__temporaryManagedPairedStatus;
  v119 = swift_getKeyPath();
  v120 = &v149;
  v149 = 0;
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v148);
  v147 = v148;
  AADeviceProperty.init(_:_:_:_:)(v119, v120, v124, &v147, v124, v125, v8 + v118);
  v121 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__healthKitDataWriteAllowed;
  v122 = swift_getKeyPath();
  v123 = &v146;
  v146 = 0;
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v145);
  v144 = v145;
  AADeviceProperty.init(_:_:_:_:)(v122, v123, v124, &v144, v124, v125, v8 + v121);
  v130 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__IEDEnabled;
  property wrapper backing initializer of AADevice.IEDEnabled(v136, v131);
  (*(v128 + 32))(v8 + v130, v131, v132);
  v135 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__primaryInEarStatus;
  property wrapper backing initializer of AADevice.primaryInEarStatus(v136, v138);
  v141 = *(v133 + 32);
  v140 = v133 + 32;
  v141(v8 + v135, v138, v139);
  v137 = OBJC_IVAR____TtC16HeadphoneManager8AADevice__secondaryInEarStatus;
  property wrapper backing initializer of AADevice.secondaryInEarStatus(v136, v138);
  v141(v8 + v137, v138, v139);
  result = v143;
  *(v143 + OBJC_IVAR____TtC16HeadphoneManager8AADevice_underlyingDevice) = v142;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance AADevice@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AADevice();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAHeadGestureConfig@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AAHeadGestureConfig.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAHeadGestureConfig@<X0>(_BYTE *a1@<X8>)
{
  result = AAHeadGestureConfig.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAAutoANCStrength@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = AAAutoANCStrength.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t AAAutoANCStrength.init(rawValue:)(int a1)
{
  LODWORD(v2) = a1;
  BYTE4(v2) = 0;
  return v2;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAAutoANCStrength@<X0>(_DWORD *a1@<X8>)
{
  result = AAAutoANCStrength.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AABobbleConfiguration@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AABobbleConfiguration.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AABobbleConfiguration@<X0>(_BYTE *a1@<X8>)
{
  result = AABobbleConfiguration.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAMultiState@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AAMultiState.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAMultiState@<X0>(_BYTE *a1@<X8>)
{
  result = AAMultiState.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAAutoANCCapability@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = AAAutoANCCapability.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t AAAutoANCCapability.init(rawValue:)(int a1)
{
  LODWORD(v2) = a1;
  BYTE4(v2) = 0;
  return v2;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAAutoANCCapability@<X0>(_DWORD *a1@<X8>)
{
  result = AAAutoANCCapability.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAFrequencyBand@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AAFrequencyBand.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAFrequencyBand@<X0>(_BYTE *a1@<X8>)
{
  result = AAFrequencyBand.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAHearingAidCapability@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AAHearingAidCapability.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAHearingAidCapability@<X0>(_BYTE *a1@<X8>)
{
  result = AAHearingAidCapability.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAHearingAidConfiguration@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AAHearingAidConfiguration.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAHearingAidConfiguration@<X0>(_BYTE *a1@<X8>)
{
  result = AAHearingAidConfiguration.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAHearingTestCapability@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AAHearingTestCapability.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAHearingTestCapability@<X0>(_BYTE *a1@<X8>)
{
  result = AAHearingTestCapability.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAStreamStateAoS@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AAStreamStateAoS.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAStreamStateAoS@<X0>(_BYTE *a1@<X8>)
{
  result = AAStreamStateAoS.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AARemoteCameraControlConfig@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AARemoteCameraControlConfig.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AARemoteCameraControlConfig@<X0>(_BYTE *a1@<X8>)
{
  result = AARemoteCameraControlConfig.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAChargingFeatureEnablementState@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AAChargingFeatureEnablementState.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAChargingFeatureEnablementState@<X0>(_BYTE *a1@<X8>)
{
  result = AAChargingFeatureEnablementState.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AADevicePlacementMode@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AADevicePlacementMode.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AADevicePlacementMode@<X0>(_BYTE *a1@<X8>)
{
  result = AADevicePlacementMode.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAPlacement@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = AAPlacement.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t AAPlacement.init(rawValue:)(int a1)
{
  LODWORD(v2) = a1;
  BYTE4(v2) = 0;
  return v2;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAPlacement@<X0>(_DWORD *a1@<X8>)
{
  result = AAPlacement.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t lazy protocol witness table accessor for type AADevicePlacementMode and conformance AADevicePlacementMode()
{
  v2 = lazy protocol witness table cache variable for type AADevicePlacementMode and conformance AADevicePlacementMode;
  if (!lazy protocol witness table cache variable for type AADevicePlacementMode and conformance AADevicePlacementMode)
  {
    type metadata accessor for AADevicePlacementMode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AADevicePlacementMode and conformance AADevicePlacementMode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AADevicePlacementMode and conformance AADevicePlacementMode;
  if (!lazy protocol witness table cache variable for type AADevicePlacementMode and conformance AADevicePlacementMode)
  {
    type metadata accessor for AADevicePlacementMode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AADevicePlacementMode and conformance AADevicePlacementMode);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type AAPlacement and conformance AAPlacement()
{
  v2 = lazy protocol witness table cache variable for type AAPlacement and conformance AAPlacement;
  if (!lazy protocol witness table cache variable for type AAPlacement and conformance AAPlacement)
  {
    type metadata accessor for AAPlacement();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAPlacement and conformance AAPlacement);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAPlacement and conformance AAPlacement;
  if (!lazy protocol witness table cache variable for type AAPlacement and conformance AAPlacement)
  {
    type metadata accessor for AAPlacement();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAPlacement and conformance AAPlacement);
    return WitnessTable;
  }

  return v2;
}

void *outlined destroy of AADeviceProperty<AADevice, AAHeadGestureConfig>(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  v3 = a1[3];

  return a1;
}

void *outlined destroy of AADeviceProperty<AADevice, AAAutoANCStrength>(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  v3 = a1[3];

  return a1;
}

void *outlined destroy of AADeviceProperty<AADevice, AABobbleConfiguration>(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  v3 = a1[3];

  return a1;
}

void *outlined destroy of AADeviceProperty<AADevice, AAMultiState>(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  v3 = a1[3];

  return a1;
}

uint64_t outlined destroy of Data?(uint64_t a1)
{
  if ((*(a1 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    outlined consume of Data._Representation(*a1, *(a1 + 8));
  }

  return a1;
}

void *outlined destroy of AADeviceProperty<AADevice, AAAutoANCCapability>(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  v3 = a1[3];

  return a1;
}

void *outlined destroy of AADeviceProperty<AADevice, AAFeatureCapability>(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  v3 = a1[3];

  return a1;
}

void *outlined destroy of AADeviceProperty<AADevice, AAFrequencyBand>(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  v3 = a1[3];

  return a1;
}

void *outlined destroy of AADeviceProperty<AADevice, AAHearingAidCapability>(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  v3 = a1[3];

  return a1;
}

void *outlined destroy of AADeviceProperty<AADevice, AAHearingAidConfiguration>(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  v3 = a1[3];

  return a1;
}

void *outlined destroy of AADeviceProperty<AADevice, AAHearingTestCapability>(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  v3 = a1[3];

  return a1;
}

void *outlined destroy of AADeviceProperty<AADevice, AAStreamStateAoS>(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  v3 = a1[3];

  return a1;
}

void *outlined destroy of AADeviceProperty<AADevice, AARemoteCameraControlConfig>(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  v3 = a1[3];

  return a1;
}

void *outlined destroy of AADeviceProperty<AADevice, AAChargingFeatureEnablementState>(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  v3 = a1[3];

  return a1;
}

uint64_t type metadata accessor for Published<AADevicePlacementMode>()
{
  v4 = lazy cache variable for type metadata for Published<AADevicePlacementMode>;
  if (!lazy cache variable for type metadata for Published<AADevicePlacementMode>)
  {
    type metadata accessor for AADevicePlacementMode();
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<AADevicePlacementMode>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Published<AAPlacement>()
{
  v4 = lazy cache variable for type metadata for Published<AAPlacement>;
  if (!lazy cache variable for type metadata for Published<AAPlacement>)
  {
    type metadata accessor for AAPlacement();
    v3 = type metadata accessor for Published();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for Published<AAPlacement>);
      return v1;
    }
  }

  return v4;
}

uint64_t outlined init with copy of Data?(uint64_t *a1, uint64_t a2)
{
  if ((a1[1] & 0xF000000000000000) == 0xF000000000000000)
  {
    *a2 = *a1;
  }

  else
  {
    v3 = *a1;
    v4 = a1[1];
    outlined copy of Data._Representation(*a1, v4);
    *a2 = v3;
    *(a2 + 8) = v4;
  }

  return a2;
}

uint64_t _s2os9serialize_2atyx_Spys5UInt8VGzts17FixedWidthIntegerRzlFySWXEfU_TA_1()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in serialize<A>(_:at:)();
}

uint64_t getSystemPrefsImage()()
{
  assertionFailure(_:file:line:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  return Image.init(systemName:)();
}

uint64_t getBluetoothImage()()
{
  assertionFailure(_:file:line:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  return Image.init(systemName:)();
}

uint64_t fetchFindMyIcon()()
{
  assertionFailure(_:file:line:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  return Image.init(systemName:)();
}

UIImage_optional __swiftcall getIcon(bundleID:)(Swift::String bundleID)
{
  assertionFailure(_:file:line:)();
  v2 = 0;
  result.value.super.isa = v2;
  result.is_nil = v1;
  return result;
}

id getUTType(hpDevice:)(void *a1)
{
  v22 = 0;
  v23 = a1;
  v14 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x228))();
  v15 = [v14 productID];
  v22 = v15;
  MEMORY[0x1E69E5920](v14);
  v21 = v15;
  v20 = 8214;
  type metadata accessor for CBProductID();
  lazy protocol witness table accessor for type CBProductID and conformance CBProductID();
  if (== infix<A>(_:_:)())
  {
    v22 = 8209;
    v12 = 8209;
  }

  else
  {
    v12 = v15;
  }

  v19 = v12;
  v18 = 8215;
  if (== infix<A>(_:_:)())
  {
    v22 = 8201;
    v11 = 8201;
  }

  else
  {
    v11 = v12;
  }

  type metadata accessor for UTType();
  v8 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x240))();
  v9 = [v8 vendorIDBluetooth];
  MEMORY[0x1E69E5920](v8);
  v10 = @nonobjc UTType.init(_bluetoothProductID:vendorID:)(v11, v9);
  if (v10)
  {
    return v10;
  }

  type metadata accessor for Log();
  static Log.shared.getter();
  v16 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v17 = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneSettings: Invalid PID: ", 0x20uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](countAndFlagsBits);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", using regular headphone", 0x19uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v3);

  v6 = v16;
  v5 = v17;

  outlined destroy of DefaultStringInterpolation(&v16);
  MEMORY[0x1DA7309B0](v6, v5);
  dispatch thunk of Log.error(_:function:file:line:)();

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.beats-headphones", 0x1AuLL, 1);
  return @nonobjc UTType.__allocating_init(_:)();
}

uint64_t type metadata accessor for CBProductID()
{
  v4 = lazy cache variable for type metadata for CBProductID;
  if (!lazy cache variable for type metadata for CBProductID)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBProductID);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type CBProductID and conformance CBProductID()
{
  v2 = lazy protocol witness table cache variable for type CBProductID and conformance CBProductID;
  if (!lazy protocol witness table cache variable for type CBProductID and conformance CBProductID)
  {
    type metadata accessor for CBProductID();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBProductID and conformance CBProductID);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for UTType()
{
  v2 = lazy cache variable for type metadata for UTType;
  if (!lazy cache variable for type metadata for UTType)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for UTType);
    return ObjCClassMetadata;
  }

  return v2;
}

id @nonobjc UTType.__allocating_init(_:)()
{
  v1 = MEMORY[0x1DA730940]();
  v2 = [swift_getObjCClassFromMetadata() typeWithIdentifier_];
  MEMORY[0x1E69E5920](v1);

  return v2;
}

id @nonobjc UTType.init(_bluetoothProductID:vendorID:)(unsigned int a1, unsigned __int16 a2)
{
  v2 = [swift_getObjCClassFromMetadata() _typeWithBluetoothProductID_vendorID_];

  return v2;
}

uint64_t checkIsFindMyNetworkSupported(cbDevice:)(void *a1)
{
  [a1 productID];
  type metadata accessor for CBProductID();
  lazy protocol witness table accessor for type CBProductID and conformance CBProductID();
  if (== infix<A>(_:_:)())
  {
    v5 = 1;
  }

  else
  {
    v5 = == infix<A>(_:_:)();
  }

  if (v5)
  {
    v4 = 1;
  }

  else
  {
    v4 = == infix<A>(_:_:)();
  }

  if (v4)
  {
    v3 = 1;
  }

  else
  {
    v3 = == infix<A>(_:_:)();
  }

  if (v3)
  {
    v2 = 1;
  }

  else
  {
    v2 = == infix<A>(_:_:)();
  }

  return v2 & 1;
}

void *one-time initialization function for shared()
{
  type metadata accessor for HPSDeviceAnalytics();
  result = HPSDeviceAnalytics.__allocating_init()();
  static HPSDeviceAnalytics.shared = result;
  return result;
}

uint64_t *HPSDeviceAnalytics.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static HPSDeviceAnalytics.shared;
}

uint64_t static HPSDeviceAnalytics.shared.getter()
{
  v1 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

  return v1;
}

uint64_t HPSDeviceAnalytics.keyValuePair.featureName.getter()
{
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t HPSDeviceAnalytics.keyValuePair.featureName.setter(uint64_t a1, uint64_t a2)
{

  v3 = v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t HPSDeviceAnalytics.keyValuePair.featureValue.getter()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t HPSDeviceAnalytics.keyValuePair.featureValue.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void __swiftcall HPSDeviceAnalytics.keyValuePair.init()(HeadphoneManager::HPSDeviceAnalytics::keyValuePair *__return_ptr retstr)
{
  memset(__b, 0, sizeof(__b));
  __b[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  __b[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  __b[2]._countAndFlagsBits = 0;
  __b[2]._object = 0;
  memcpy(retstr, __b, sizeof(HeadphoneManager::HPSDeviceAnalytics::keyValuePair));
}

void __swiftcall HPSDeviceAnalytics.keyValuePair.init(featureName:featureValue:pid:adaptiveModeSupported:)(HeadphoneManager::HPSDeviceAnalytics::keyValuePair *__return_ptr retstr, Swift::String featureName, Swift::String featureValue, Swift::Int pid, Swift::Int adaptiveModeSupported)
{
  retstr->featureName = featureName;
  retstr->featureValue = featureValue;
  retstr->pid = pid;
  retstr->adaptiveModeSupported = adaptiveModeSupported;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.caseSoundVal.getter()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.caseSoundVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 16);
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.crownRotationVal.getter()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.crownRotationVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.cycleBetweenLeftBudVal.getter()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.cycleBetweenLeftBudVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.cycleBetweenRightBudVal.getter()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.cycleBetweenRightBudVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.cycleBetweenSingleVal.getter()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.cycleBetweenSingleVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.doubleTapLeftVal.getter()
{
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.doubleTapLeftVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 128);
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.doubleTapRightVal.getter()
{
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.doubleTapRightVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 144);
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.entryPoint.getter()
{
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.entryPoint.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 160);
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.earTipFitTestVal.getter()
{
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.earTipFitTestVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 184);
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.endCallGestureVal.getter()
{
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.endCallGestureVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 208);
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.findMyNetworkVal.getter()
{
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.findMyNetworkVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 232);
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.inEarOnHeadDetectionVal.getter()
{
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.inEarOnHeadDetectionVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 264);
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.listeningModeVal.getter()
{
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.listeningModeVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 288);
  *(v2 + 280) = a1;
  *(v2 + 288) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.magneticEarbudDetectVal.getter()
{
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.magneticEarbudDetectVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 312);
  *(v2 + 304) = a1;
  *(v2 + 312) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.microphoneSwitchVal.getter()
{
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.microphoneSwitchVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 336);
  *(v2 + 328) = a1;
  *(v2 + 336) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.muteControlGestureVal.getter()
{
  v2 = *(v0 + 352);
  v3 = *(v0 + 360);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.muteControlGestureVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 360);
  *(v2 + 352) = a1;
  *(v2 + 360) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.optimizedBudChargingVal.getter()
{
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.optimizedBudChargingVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 384);
  *(v2 + 376) = a1;
  *(v2 + 384) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.pressHoldLeftBudVal.getter()
{
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.pressHoldLeftBudVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 408);
  *(v2 + 400) = a1;
  *(v2 + 408) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.pressHoldRightBudVal.getter()
{
  v2 = *(v0 + 416);
  v3 = *(v0 + 424);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.pressHoldRightBudVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 424);
  *(v2 + 416) = a1;
  *(v2 + 424) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.smartRoutingVal.getter()
{
  v2 = *(v0 + 440);
  v3 = *(v0 + 448);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.smartRoutingVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 448);
  *(v2 + 440) = a1;
  *(v2 + 448) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.selectiveSpeechListeningVal.getter()
{
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.selectiveSpeechListeningVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 496);
  *(v2 + 488) = a1;
  *(v2 + 496) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.conversationDetectVal.getter()
{
  v2 = *(v0 + 512);
  v3 = *(v0 + 520);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.conversationDetectVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 520);
  *(v2 + 512) = a1;
  *(v2 + 520) = a2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.adaptiveVolumeVal.getter()
{
  v2 = *(v0 + 536);
  v3 = *(v0 + 544);

  return v2;
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.adaptiveVolumeVal.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 544);
  *(v2 + 536) = a1;
  *(v2 + 544) = a2;
}

void __swiftcall HPSDeviceAnalytics.headphoneFeatureList.init()(HeadphoneManager::HPSDeviceAnalytics::headphoneFeatureList *__return_ptr retstr)
{
  bzero(v2, 0x228uLL);
  *v2 = 0;
  *&v2[8] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[24] = 0;
  *&v2[32] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[48] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[64] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[80] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  memset(&v2[96], 0, 24);
  *&v2[120] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[136] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[152] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("macOS_Sidebar", 0xDuLL, 1);
  *&v2[168] = 0;
  *&v2[176] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
  *&v2[192] = 0;
  *&v2[200] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[216] = 0;
  *&v2[224] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[240] = 0;
  *&v2[248] = 0;
  *&v2[256] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[272] = 0;
  *&v2[280] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[296] = 0;
  *&v2[304] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
  *&v2[320] = 0;
  *&v2[328] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[344] = 0;
  *&v2[352] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
  *&v2[368] = 0;
  *&v2[376] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1);
  *&v2[392] = 0;
  *&v2[400] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[416] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[432] = 0;
  *&v2[440] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  memset(&v2[456], 0, 32);
  *&v2[488] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[504] = 0;
  *&v2[512] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  *&v2[528] = 0;
  *&v2[536] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  memcpy(retstr, v2, sizeof(HeadphoneManager::HPSDeviceAnalytics::headphoneFeatureList));
}

uint64_t HPSDeviceAnalytics.headphoneFeatureList.init(caseSound:caseSoundVal:crownRotation:crownRotationVal:cycleBetweenLeftBudVal:cycleBetweenRightBudVal:cycleBetweenSingleVal:deviceName:disconnect:doubleTap:doubleTapLeftVal:doubleTapRightVal:entryPoint:earTipFitTest:earTipFitTestVal:endCallGesture:endCallGestureVal:findMyNetwork:findMyNetworkVal:forgetDevice:inEarOnHeadDetection:inEarOnHeadDetectionVal:listeningMode:listeningModeVal:magneticEarbudDetect:magneticEarbudDetectVal:microphoneSwitch:microphoneSwitchVal:muteControlGesture:muteControlGestureVal:optimizedBudCharging:optimizedBudChargingVal:pressHold:pressHoldLeftBudVal:pressHoldRightBudVal:smartRouting:smartRoutingVal:spatialAudioProfile:spatialAudioTutorial:viewInFindMy:selectiveSpeechListening:selectiveSpeechListeningVal:conversationDetect:conversationDetectVal:adaptiveVolume:adaptiveVolumeVal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *a9 = a1;
  result = a61;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  a9[10] = a12;
  a9[11] = a13;
  a9[12] = a14;
  a9[13] = a15;
  a9[14] = a16;
  a9[15] = a17;
  a9[16] = a18;
  a9[17] = a19;
  a9[18] = a20;
  a9[19] = a21;
  a9[20] = a22;
  a9[21] = a23;
  a9[22] = a24;
  a9[23] = a25;
  a9[24] = a26;
  a9[25] = a27;
  a9[26] = a28;
  a9[27] = a29;
  a9[28] = a30;
  a9[29] = a31;
  a9[30] = a32;
  a9[31] = a33;
  a9[32] = a34;
  a9[33] = a35;
  a9[34] = a36;
  a9[35] = a37;
  a9[36] = a38;
  a9[37] = a39;
  a9[38] = a40;
  a9[39] = a41;
  a9[40] = a42;
  a9[41] = a43;
  a9[42] = a44;
  a9[43] = a45;
  a9[44] = a46;
  a9[45] = a47;
  a9[46] = a48;
  a9[47] = a49;
  a9[48] = a50;
  a9[49] = a51;
  a9[50] = a52;
  a9[51] = a53;
  a9[52] = a54;
  a9[53] = a55;
  a9[54] = a56;
  a9[55] = a57;
  a9[56] = a58;
  a9[57] = a59;
  a9[58] = a60;
  a9[59] = a61;
  a9[60] = a62;
  a9[61] = a63;
  a9[62] = a64;
  a9[63] = a65;
  a9[64] = a66;
  a9[65] = a67;
  a9[66] = a68;
  a9[67] = a69;
  a9[68] = a70;
  return result;
}

void *HPSDeviceAnalytics.featureList.getter@<X0>(void *a1@<X8>)
{
  v4[72] = 0;
  swift_beginAccess();
  memcpy(__dst, (v1 + 16), sizeof(__dst));
  outlined init with copy of HPSDeviceAnalytics.headphoneFeatureList(__dst, v4);
  swift_endAccess();
  return memcpy(a1, __dst, 0x228uLL);
}

void *HPSDeviceAnalytics.featureList.setter(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v6 = __src;
  v5 = v1;
  outlined init with copy of HPSDeviceAnalytics.headphoneFeatureList(__dst, v4);
  swift_beginAccess();
  memcpy(v8, (v1 + 16), sizeof(v8));
  memcpy((v1 + 16), __dst, 0x228uLL);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v8);
  swift_endAccess();
  return outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(__dst);
}

uint64_t HPSDeviceAnalytics.eventV2.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[71];
  v4 = v1[72];
  v5 = v1[73];
  v6 = v1[74];
  v7 = v1[75];
  v9 = v1[76];

  result = swift_endAccess();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v9;
  return result;
}

uint64_t HPSDeviceAnalytics.eventV2.setter(void *a1)
{
  memset(__b, 0, sizeof(__b));
  v10 = a1[1];
  v6 = a1[2];
  v11 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  __b[0] = *a1;
  v5 = __b[0];
  __b[1] = v10;
  __b[2] = v6;
  __b[3] = v11;
  __b[4] = v7;
  __b[5] = v8;

  swift_beginAccess();
  v2 = v1[72];
  v9 = v1[74];
  v1[71] = v5;
  v1[72] = v10;
  v1[73] = v6;
  v1[74] = v11;
  v1[75] = v7;
  v1[76] = v8;

  swift_endAccess();
}

void *HPSDeviceAnalytics.init()()
{
  v10 = v0;
  HPSDeviceAnalytics.headphoneFeatureList.init()(&v9);
  memcpy(__dst, &v9, sizeof(__dst));
  memcpy((v0 + 16), __dst, 0x228uLL);
  HPSDeviceAnalytics.keyValuePair.init()(&v8);
  result = v7;
  object = v8.featureName._object;
  countAndFlagsBits = v8.featureValue._countAndFlagsBits;
  v4 = v8.featureValue._object;
  pid = v8.pid;
  adaptiveModeSupported = v8.adaptiveModeSupported;
  v7[71] = v8.featureName._countAndFlagsBits;
  v7[72] = object;
  v7[73] = countAndFlagsBits;
  v7[74] = v4;
  v7[75] = pid;
  v7[76] = adaptiveModeSupported;
  return result;
}

void *outlined init with copy of HPSDeviceAnalytics.headphoneFeatureList(void *a1, void *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];
  v3 = a1[2];

  a2[2] = v3;
  a2[3] = a1[3];
  a2[4] = a1[4];
  v4 = a1[5];

  a2[5] = v4;
  a2[6] = a1[6];
  v5 = a1[7];

  a2[7] = v5;
  a2[8] = a1[8];
  v6 = a1[9];

  a2[9] = v6;
  a2[10] = a1[10];
  v7 = a1[11];

  a2[11] = v7;
  a2[12] = a1[12];
  a2[13] = a1[13];
  a2[14] = a1[14];
  a2[15] = a1[15];
  v8 = a1[16];

  a2[16] = v8;
  a2[17] = a1[17];
  v9 = a1[18];

  a2[18] = v9;
  a2[19] = a1[19];
  v10 = a1[20];

  a2[20] = v10;
  a2[21] = a1[21];
  a2[22] = a1[22];
  v11 = a1[23];

  a2[23] = v11;
  a2[24] = a1[24];
  a2[25] = a1[25];
  v12 = a1[26];

  a2[26] = v12;
  a2[27] = a1[27];
  a2[28] = a1[28];
  v13 = a1[29];

  a2[29] = v13;
  a2[30] = a1[30];
  a2[31] = a1[31];
  a2[32] = a1[32];
  v14 = a1[33];

  a2[33] = v14;
  a2[34] = a1[34];
  a2[35] = a1[35];
  v15 = a1[36];

  a2[36] = v15;
  a2[37] = a1[37];
  a2[38] = a1[38];
  v16 = a1[39];

  a2[39] = v16;
  a2[40] = a1[40];
  a2[41] = a1[41];
  v17 = a1[42];

  a2[42] = v17;
  a2[43] = a1[43];
  a2[44] = a1[44];
  v18 = a1[45];

  a2[45] = v18;
  a2[46] = a1[46];
  a2[47] = a1[47];
  v19 = a1[48];

  a2[48] = v19;
  a2[49] = a1[49];
  a2[50] = a1[50];
  v20 = a1[51];

  a2[51] = v20;
  a2[52] = a1[52];
  v21 = a1[53];

  a2[53] = v21;
  a2[54] = a1[54];
  a2[55] = a1[55];
  v22 = a1[56];

  a2[56] = v22;
  a2[57] = a1[57];
  a2[58] = a1[58];
  a2[59] = a1[59];
  a2[60] = a1[60];
  a2[61] = a1[61];
  v23 = a1[62];

  a2[62] = v23;
  a2[63] = a1[63];
  a2[64] = a1[64];
  v25 = a1[65];

  a2[65] = v25;
  a2[66] = a1[66];
  a2[67] = a1[67];
  v27 = a1[68];

  result = a2;
  a2[68] = v27;
  return result;
}

void *outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(void *a1)
{
  v1 = a1[2];

  v2 = a1[5];

  v3 = a1[7];

  v4 = a1[9];

  v5 = a1[11];

  v6 = a1[16];

  v7 = a1[18];

  v8 = a1[20];

  v9 = a1[23];

  v10 = a1[26];

  v11 = a1[29];

  v12 = a1[33];

  v13 = a1[36];

  v14 = a1[39];

  v15 = a1[42];

  v16 = a1[45];

  v17 = a1[48];

  v18 = a1[51];

  v19 = a1[53];

  v20 = a1[56];

  v21 = a1[62];

  v22 = a1[65];

  v23 = a1[68];

  return a1;
}

uint64_t HPSDeviceAnalytics.updateFeatureCount(feature:)(uint64_t a1)
{
  result = MEMORY[0x1EEE9AC00](a1);
  v226 = result;
  v225 = v1;
  v224 = result;
  switch(result)
  {
    case 0:
      v181 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v181 + 112))(v183);
      v4 = *(v3 + 96);
      v182 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_127;
      }

      *(v3 + 96) = v182;
      (result)();

      goto LABEL_108;
    case 1:
      v179 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v179 + 112))(v186);
      v8 = *(v7 + 272);
      v180 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_126;
      }

      *(v7 + 272) = v180;
      (result)();

      (*(*v1 + 120))(v185, v10);
      v178 = v185[5];

      if (v178 != 1)
      {
        goto LABEL_108;
      }

      (*(*v1 + 96))(v6);
      v174 = v184[35];
      v175 = v184[36];

      outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v184);
      v176 = (*(*v1 + 136))();
      v12 = *(v11 + 24);
      *(v11 + 16) = v174;
      *(v11 + 24) = v175;

      v176();
      v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ListeningModeV2", 0xFuLL, 1);
      v177 = (*(*v1 + 136))();
      object = v14->_object;
      *v14 = v13;

      v16 = v177();
      result = (*(*v1 + 160))(v16);
      break;
    case 2:
      v172 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v172 + 112))(&v200);
      v18 = *(v17 + 392);
      v173 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_125;
      }

      *(v17 + 392) = v173;
      (result)();

      (*(*v1 + 120))(v199, v20);
      v171 = v199[5];

      if (v171 != 1)
      {
        goto LABEL_108;
      }

      (*(*v1 + 96))(v6);
      memcpy(v198, v197, sizeof(v198));
      v168 = v198[6];
      v169 = v198[7];

      v195 = v168;
      v196 = v169;
      v194 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      v170 = MEMORY[0x1DA7309E0](v195, v196, v194._countAndFlagsBits, v194._object);
      outlined destroy of String(&v194);
      outlined destroy of String(&v195);
      outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v198);
      v21 = v170;
      if ((v170 & 1) == 0)
      {
        (*(*v1 + 96))();
        v164 = v187[6];
        v165 = v187[7];

        outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v187);
        v166 = (*(*v1 + 136))();
        v23 = *(v22 + 24);
        *(v22 + 16) = v164;
        *(v22 + 24) = v165;

        v166();
        v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CycleBetweenV2LeftBud", 0x15uLL, 1);
        v167 = (*(*v1 + 136))();
        v26 = v25->_object;
        *v25 = v24;

        v27 = v167();
        v21 = (*(*v1 + 160))(v27);
      }

      (*(*v1 + 96))(v21);
      memcpy(__dst, v192, sizeof(__dst));
      v161 = __dst[8];
      v162 = __dst[9];

      v190 = v161;
      v191 = v162;
      v189 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      v163 = MEMORY[0x1DA7309E0](v190, v191, v189._countAndFlagsBits, v189._object);
      outlined destroy of String(&v189);
      outlined destroy of String(&v190);
      outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(__dst);
      result = v163;
      if ((v163 & 1) == 0)
      {
        (*(*v1 + 96))();
        v157 = v188[8];
        v158 = v188[9];

        outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v188);
        v159 = (*(*v1 + 136))();
        v29 = *(v28 + 24);
        *(v28 + 16) = v157;
        *(v28 + 24) = v158;

        v159();
        v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CycleBetweenV2RightBud", 0x16uLL, 1);
        v160 = (*(*v1 + 136))();
        v32 = v31->_object;
        *v31 = v30;

        v33 = v160();
        result = (*(*v1 + 160))(v33);
      }

      break;
    case 3:
      v155 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v155 + 112))(&v201);
      v35 = *(v34 + 112);
      v156 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_124;
      }

      *(v34 + 112) = v156;
      (result)();

      goto LABEL_108;
    case 4:
      v153 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v153 + 112))(&v202);
      v38 = *(v37 + 24);
      v154 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_123;
      }

      *(v37 + 24) = v154;
      (result)();

      goto LABEL_108;
    case 5:
      v151 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v151 + 112))(&v203);
      v41 = *(v40 + 248);
      v152 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_122;
      }

      *(v40 + 248) = v152;
      (result)();

      goto LABEL_108;
    case 6:
      v149 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v149 + 112))(&v204);
      v44 = *(v43 + 432);
      v150 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_121;
      }

      *(v43 + 432) = v150;
      (result)();

      goto LABEL_108;
    case 7:
      v147 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v147 + 112))(&v205);
      v47 = *(v46 + 320);
      v148 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_120;
      }

      *(v46 + 320) = v148;
      (result)();

      goto LABEL_108;
    case 8:
      v145 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v145 + 112))(&v206);
      v50 = *(v49 + 368);
      v146 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_119;
      }

      *(v49 + 368) = v146;
      (result)();

      goto LABEL_108;
    case 9:
      v143 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v143 + 112))(&v207);
      v53 = *(v52 + 216);
      v144 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        goto LABEL_118;
      }

      *(v52 + 216) = v144;
      (result)();

      goto LABEL_108;
    case 10:
      v141 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v141 + 112))(&v208);
      v56 = *(v55 + 472);
      v142 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_117;
      }

      *(v55 + 472) = v142;
      (result)();

      goto LABEL_108;
    case 11:
    case 12:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
      return result;
    case 13:
      v139 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v139 + 112))(&v209);
      v59 = *(v58 + 104);
      v140 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        goto LABEL_116;
      }

      *(v58 + 104) = v140;
      (result)();

      goto LABEL_108;
    case 14:
      v137 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v137 + 112))(&v210);
      v62 = *(v61 + 240);
      v138 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        goto LABEL_115;
      }

      *(v61 + 240) = v138;
      (result)();

      goto LABEL_108;
    case 15:
      v123 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v123 + 112))(&v217);
      v84 = *(v83 + 456);
      v124 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        goto LABEL_112;
      }

      *(v83 + 456) = v124;
      (result)();

      goto LABEL_108;
    case 16:
      v125 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v125 + 112))(&v216);
      if (__OFADD__(*v81, 1))
      {
        goto LABEL_113;
      }

      ++*v81;
      (result)();

      goto LABEL_108;
    case 17:
      v135 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v135 + 112))(&v214);
      v65 = *(v64 + 192);
      v136 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        goto LABEL_114;
      }

      *(v64 + 192) = v136;
      (result)();

      (*(*v1 + 96))(v67);
      memcpy(v215, v213, sizeof(v215));
      v134 = v215[43];
      v6 = outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v215);
      if (!v134)
      {
        goto LABEL_108;
      }

      (*(*v1 + 96))(v6);
      v126 = v212[44];
      v127 = v212[45];

      outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v212);
      v128 = (*(*v1 + 136))();
      v69 = *(v68 + 24);
      *(v68 + 16) = v126;
      *(v68 + 24) = v127;

      v128();
      v70 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MuteCall", 8uLL, 1);
      v129 = (*(*v1 + 136))();
      v72 = v71->_object;
      *v71 = v70;

      v73 = v129();
      v74 = (*(*v1 + 160))(v73);
      (*(*v1 + 96))(v74);
      v130 = v211[25];
      v131 = v211[26];

      outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v211);
      v132 = (*(*v1 + 136))();
      v76 = *(v75 + 24);
      *(v75 + 16) = v130;
      *(v75 + 24) = v131;

      v132();
      v77 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EndCall", 7uLL, 1);
      v133 = (*(*v1 + 136))();
      v79 = v78->_object;
      *v78 = v77;

      v80 = v133();
      result = (*(*v1 + 160))(v80);
      break;
    case 18:
      v121 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v121 + 112))(&v218);
      v87 = *(v86 + 480);
      v122 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        goto LABEL_111;
      }

      *(v86 + 480) = v122;
      (result)();

LABEL_108:
      result = (*(*v1 + 168))(v6);
      break;
    case 19:
      v119 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v119 + 112))(&v220);
      v90 = *(v89 + 504);
      v120 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        goto LABEL_110;
      }

      *(v89 + 504) = v120;
      (result)();

      (*(*v1 + 96))(v92);
      v115 = v219[64];
      v116 = v219[65];

      outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v219);
      v117 = (*(*v1 + 136))();
      v94 = *(v93 + 24);
      *(v93 + 16) = v115;
      *(v93 + 24) = v116;

      v117();
      v95 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SpeechDetection", 0xFuLL, 1);
      v118 = (*(*v1 + 136))();
      v97 = v96->_object;
      *v96 = v95;

      v98 = v118();
      result = (*(*v1 + 160))(v98);
      break;
    case 20:
      v113 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      result = (*(*v113 + 112))(v222);
      v100 = *(v99 + 528);
      v114 = v100 + 1;
      if (__OFADD__(v100, 1))
      {
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
      }

      else
      {
        *(v99 + 528) = v114;
        (result)();

        (*(*v1 + 96))(v102);
        v109 = v221[67];
        v110 = v221[68];

        outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v221);
        v111 = (*(*v1 + 136))();
        v104 = *(v103 + 24);
        *(v103 + 16) = v109;
        *(v103 + 24) = v110;

        v111();
        v105 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AdaptiveVolume", 0xEuLL, 1);
        v112 = (*(*v1 + 136))();
        v107 = v106->_object;
        *v106 = v105;

        v108 = v112();
        result = (*(*v1 + 160))(v108);
      }

      break;
    default:
      v223 = result;
      v6 = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      goto LABEL_108;
  }

  return result;
}

Swift::Void __swiftcall HPSDeviceAnalytics.sendEventV2()()
{
  v11 = v0;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneSettings.FeatureInfo", 0x27uLL, 1)._countAndFlagsBits;
  v3 = MEMORY[0x1DA730940](countAndFlagsBits);

  v9 = partial apply for closure #1 in HPSDeviceAnalytics.sendEventV2();
  v10 = v0;
  aBlock = MEMORY[0x1E69E9820];
  v5 = 1107296256;
  v6 = 0;
  v7 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v8 = &block_descriptor_1;
  v2 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v2);
  MEMORY[0x1E69E5920](v3);
}

uint64_t closure #1 in HPSDeviceAnalytics.sendEventV2()(uint64_t a1)
{
  v11[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, _sSS_So8NSObjectCtMR);
  _allocateUninitializedArray<A>(_:)();
  v6 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeatureChangeCount", 0x12uLL, 1);
  type metadata accessor for NSNumber();
  v6[1]._countAndFlagsBits = NSNumber.init(integerLiteral:)(1).super.super.isa;
  *(v6 + 24) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeatureName", 0xBuLL, 1);
  (*(*a1 + 120))(v11);
  v3 = v11[0];
  v8 = v11[1];

  v6[2]._object = MEMORY[0x1DA730940](v3, v8);
  v6[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeatureValue", 0xCuLL, 1);
  (*(*a1 + 120))(v10);
  v5 = v10[2];
  v7 = v10[3];

  v6[4]._countAndFlagsBits = MEMORY[0x1DA730940](v5, v7);
  *(v6 + 72) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphonePID", 0xCuLL, 1);
  (*(*a1 + 120))(&v9);
  v6[5]._object = Int._bridgeToObjectiveC()().super.super.isa;
  _finalizeUninitializedArray<A>(_:)();

  type metadata accessor for NSObject();
  return Dictionary.init(dictionaryLiteral:)();
}

Swift::Void __swiftcall HPSDeviceAnalytics.sendEvent()()
{
  v13 = v0;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneSettings", 0x1BuLL, 1)._countAndFlagsBits;
  v3 = MEMORY[0x1DA730940](countAndFlagsBits);

  v11 = partial apply for closure #1 in HPSDeviceAnalytics.sendEvent();
  v12 = v0;
  aBlock = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  v8 = 0;
  v9 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v10 = &block_descriptor_49;
  v2 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v2);
  MEMORY[0x1E69E5920](v3);
  HPSDeviceAnalytics.headphoneFeatureList.init()(&v5);
  memcpy(__dst, &v5, sizeof(__dst));
  memcpy(v4, __dst, sizeof(v4));
  (*(*v0 + 104))(v4);
}

uint64_t closure #1 in HPSDeviceAnalytics.sendEvent()(uint64_t a1)
{
  v25 = MEMORY[0x1EEE9AC00](a1);
  v97 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, _sSS_So8NSObjectCtMR);
  _allocateUninitializedArray<A>(_:)();
  v27 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CaseSound", 9uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v98, v96, sizeof(v98));
  v27[1]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 24) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CaseSoundValue", 0xEuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v99, v95, sizeof(v99));
  v3 = v99[1];
  v50 = v99[2];

  v27[2]._object = MEMORY[0x1DA730940](v3, v50);
  v27[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CrownRotation", 0xDuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v100, v94, sizeof(v100));
  v27[4]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 72) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CrownRotationValue", 0x12uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v101, v93, sizeof(v101));
  v4 = v101[4];
  v49 = v101[5];

  v27[5]._object = MEMORY[0x1DA730940](v4, v49);
  v27[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CycleBetweenLeftBudValue", 0x18uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v102, v92, sizeof(v102));
  v5 = v102[6];
  v48 = v102[7];

  v27[7]._countAndFlagsBits = MEMORY[0x1DA730940](v5, v48);
  *(v27 + 120) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CycleBetweenRightBudValue", 0x19uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v103, v91, sizeof(v103));
  v6 = v103[8];
  v47 = v103[9];

  v27[8]._object = MEMORY[0x1DA730940](v6, v47);
  v27[9] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CycleBetweenSingleValue", 0x17uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v104, v90, sizeof(v104));
  v7 = v104[10];
  v46 = v104[11];

  v27[10]._countAndFlagsBits = MEMORY[0x1DA730940](v7, v46);
  *(v27 + 168) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DeviceName", 0xAuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v105, v89, sizeof(v105));
  v27[11]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v27[12] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Disconnect", 0xAuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v106, v88, sizeof(v106));
  v27[13]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 216) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DoubleTap", 9uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v107, v87, sizeof(v107));
  v27[14]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v27[15] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DoubleTapLeftValue", 0x12uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v108, v86, sizeof(v108));
  v8 = v108[15];
  v45 = v108[16];

  v27[16]._countAndFlagsBits = MEMORY[0x1DA730940](v8, v45);
  *(v27 + 264) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DoubleTapRightValue", 0x13uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v109, v85, sizeof(v109));
  v9 = v109[17];
  v44 = v109[18];

  v27[17]._object = MEMORY[0x1DA730940](v9, v44);
  v27[18] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EarTipFitTest", 0xDuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v110, v84, sizeof(v110));
  v27[19]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 312) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EarTipFitTestValue", 0x12uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v111, v83, sizeof(v111));
  v10 = v111[22];
  v43 = v111[23];

  v27[20]._object = MEMORY[0x1DA730940](v10, v43);
  v27[21] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EntryPoint", 0xAuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v112, v82, sizeof(v112));
  v11 = v112[19];
  v42 = v112[20];

  v27[22]._countAndFlagsBits = MEMORY[0x1DA730940](v11, v42);
  *(v27 + 360) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EndCallGesture", 0xEuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v113, v81, sizeof(v113));
  v27[23]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v27[24] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EndCallGestureValue", 0x13uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v114, v80, sizeof(v114));
  v12 = v114[25];
  v41 = v114[26];

  v27[25]._countAndFlagsBits = MEMORY[0x1DA730940](v12, v41);
  *(v27 + 408) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FindMyNetwork", 0xDuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v115, v79, sizeof(v115));
  v27[26]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v27[27] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FindMyNetworkValue", 0x12uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v116, v78, sizeof(v116));
  v13 = v116[28];
  v40 = v116[29];

  v27[28]._countAndFlagsBits = MEMORY[0x1DA730940](v13, v40);
  *(v27 + 456) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ForgetDevice", 0xCuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v117, v77, sizeof(v117));
  v27[29]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v27[30] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InEarOnHeadDetection", 0x14uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v118, v76, sizeof(v118));
  v27[31]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 504) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InEarOnHeadDetectionValue", 0x19uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v119, v75, sizeof(v119));
  v14 = v119[32];
  v39 = v119[33];

  v27[32]._object = MEMORY[0x1DA730940](v14, v39);
  v27[33] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ListeningMode", 0xDuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v120, v74, sizeof(v120));
  v27[34]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 552) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ListeningModeValue", 0x12uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v121, v73, sizeof(v121));
  v15 = v121[35];
  v38 = v121[36];

  v27[35]._object = MEMORY[0x1DA730940](v15, v38);
  v27[36] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MagneticEarbudDetect", 0x14uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v122, v72, sizeof(v122));
  v27[37]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 600) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MagneticEarbudDetectValue", 0x19uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v123, v71, sizeof(v123));
  v16 = v123[38];
  v37 = v123[39];

  v27[38]._object = MEMORY[0x1DA730940](v16, v37);
  v27[39] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MicrophoneSwitch", 0x10uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v124, v70, sizeof(v124));
  v27[40]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 648) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MicrophoneSwitchValue", 0x15uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v125, v69, sizeof(v125));
  v17 = v125[41];
  v36 = v125[42];

  v27[41]._object = MEMORY[0x1DA730940](v17, v36);
  v27[42] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MuteControlGesture", 0x12uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v126, v68, sizeof(v126));
  v27[43]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 696) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MuteControlGestureValue", 0x17uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v127, v67, sizeof(v127));
  v18 = v127[44];
  v35 = v127[45];

  v27[44]._object = MEMORY[0x1DA730940](v18, v35);
  v27[45] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OptimizedBudCharging", 0x14uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v128, v66, sizeof(v128));
  v27[46]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 744) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OptimizedBudChargingValue", 0x19uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v129, v65, sizeof(v129));
  v19 = v129[47];
  v34 = v129[48];

  v27[47]._object = MEMORY[0x1DA730940](v19, v34);
  v27[48] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PressHold", 9uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v130, v64, sizeof(v130));
  v27[49]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 792) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PressHoldLeftBudValue", 0x15uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v131, v63, sizeof(v131));
  v20 = v131[50];
  v33 = v131[51];

  v27[50]._object = MEMORY[0x1DA730940](v20, v33);
  v27[51] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PressHoldRightBudValue", 0x16uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v132, v62, sizeof(v132));
  v21 = v132[52];
  v32 = v132[53];

  v27[52]._countAndFlagsBits = MEMORY[0x1DA730940](v21, v32);
  *(v27 + 840) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SmartRouting", 0xCuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v133, v61, sizeof(v133));
  v27[53]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v27[54] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SmartRoutingValue", 0x11uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v134, v60, sizeof(v134));
  v22 = v134[55];
  v31 = v134[56];

  v27[55]._countAndFlagsBits = MEMORY[0x1DA730940](v22, v31);
  *(v27 + 888) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SpatialAudioProfile", 0x13uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v135, v59, sizeof(v135));
  v27[56]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v27[57] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SpatialAudioTutorial", 0x14uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v136, v58, sizeof(v136));
  v27[58]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 936) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ViewInFindMy", 0xCuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v137, v57, sizeof(v137));
  v27[59]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v27[60] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ConversationBoost", 0x11uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v138, v56, sizeof(v138));
  v27[61]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 984) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ConversationBoostValue", 0x16uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v139, v55, sizeof(v139));
  v23 = v139[61];
  v30 = v139[62];

  v27[62]._object = MEMORY[0x1DA730940](v23, v30);
  v27[63] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SpeechDetection", 0xFuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v140, v54, sizeof(v140));
  v27[64]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 1032) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SpeechDetectionValue", 0x14uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v141, v53, sizeof(v141));
  v24 = v141[64];
  v29 = v141[65];

  v27[65]._object = MEMORY[0x1DA730940](v24, v29);
  v27[66] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AutomaticallyAdjustVolume", 0x19uLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v142, v52, sizeof(v142));
  v27[67]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v27 + 1080) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AutomaticallyAdjustVolumeValue", 0x1EuLL, 1);
  (*(*v25 + 96))(v25);
  memcpy(v143, v51, sizeof(v143));
  v26 = v143[67];
  v28 = v143[68];

  v27[68]._object = MEMORY[0x1DA730940](v26, v28);
  _finalizeUninitializedArray<A>(_:)();

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v143);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v142);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v141);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v140);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v139);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v138);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v137);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v136);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v135);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v134);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v133);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v132);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v131);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v130);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v129);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v128);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v127);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v126);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v125);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v124);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v123);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v122);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v121);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v120);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v119);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v118);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v117);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v116);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v115);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v114);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v113);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v112);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v111);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v110);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v109);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v108);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v107);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v106);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v105);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v104);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v103);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v102);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v101);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v100);

  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v99);
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList(v98);
  type metadata accessor for NSObject();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t HPSDeviceAnalytics.deinit()
{
  outlined destroy of HPSDeviceAnalytics.headphoneFeatureList((v0 + 16));
  outlined destroy of HPSDeviceAnalytics.keyValuePair(v0 + 568);
  return v2;
}

uint64_t HPSDeviceAnalytics.updateListeningModeForSyncSelection(mode:)(void *a1)
{
  v28 = [a1 listeningMode];
  switch(v28)
  {
    case 1u:
      v26 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Off", 3uLL, 1);
      v25 = (*(*v26 + 112))();
      v3 = *(v2 + 288);
      *(v2 + 280) = v1;

      v25();

      break;
    case 2u:
      v24 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NoiseCancellation", 0x11uLL, 1);
      v23 = (*(*v24 + 112))();
      v6 = *(v5 + 288);
      *(v5 + 280) = v4;

      v23();

      break;
    case 3u:
      v22 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Transparency", 0xCuLL, 1);
      v21 = (*(*v22 + 112))();
      v9 = *(v8 + 288);
      *(v8 + 280) = v7;

      v21();

      break;
    case 4u:
      v20 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

      v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Automatic", 9uLL, 1);
      v19 = (*(*v20 + 112))();
      v12 = *(v11 + 288);
      *(v11 + 280) = v10;

      v19();

      break;
  }

  v17 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

  v16 = [a1 productID];
  v13 = (*(*v17 + 136))();
  *(v14 + 32) = v16;
  v13();

  v18 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

  (*(*v18 + 152))(1);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBProductID@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = CBProductID.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBProductID@<X0>(_DWORD *a1@<X8>)
{
  result = CBProductID.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t outlined destroy of HPSDeviceAnalytics.keyValuePair(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for HPSDeviceAnalytics.keyValuePair(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HPSDeviceAnalytics.keyValuePair(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HPSDeviceAnalytics.headphoneFeatureList(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 552))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v3 = *(a1 + 16);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *storeEnumTagSinglePayload for HPSDeviceAnalytics.headphoneFeatureList(void *result, int a2, int a3)
{
  v3 = result + 69;
  if (a2 < 0)
  {
    result[63] = 0;
    result[62] = 0;
    result[61] = 0;
    result[60] = 0;
    result[59] = 0;
    result[58] = 0;
    result[57] = 0;
    result[56] = 0;
    result[55] = 0;
    result[54] = 0;
    result[53] = 0;
    result[52] = 0;
    result[51] = 0;
    result[50] = 0;
    result[49] = 0;
    result[48] = 0;
    result[47] = 0;
    result[46] = 0;
    result[45] = 0;
    result[44] = 0;
    result[43] = 0;
    result[42] = 0;
    result[41] = 0;
    result[40] = 0;
    result[39] = 0;
    result[38] = 0;
    result[37] = 0;
    result[36] = 0;
    result[35] = 0;
    result[34] = 0;
    result[33] = 0;
    result[32] = 0;
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 + 0x80000000;
    result[67] = 0;
    result[66] = 0;
    result[65] = 0;
    result[64] = 0;
    result[68] = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      result[2] = (a2 - 1);
    }
  }

  return result;
}

uint64_t HeadphoneDeviceDataReplayable.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v8 = a2;
  v7[1] = a3;
  v14 = 0;
  v13 = 0;
  v15 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v8);
  v12 = v7 - v9;
  v14 = v10;
  v13 = v3;
  (*(v5 + 280))(v4);
  lazy protocol witness table accessor for type UUID? and conformance <A> A?();
  Hasher.combine<A>(_:)();
  return outlined destroy of UUID?(v12);
}

unint64_t lazy protocol witness table accessor for type UUID? and conformance <A> A?()
{
  v2 = lazy protocol witness table cache variable for type UUID? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UUID? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UUID? and conformance <A> A?);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  v2 = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UUID and conformance UUID);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UUID and conformance UUID);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UUID and conformance UUID);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UUID and conformance UUID);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t HeadphoneDeviceDataReplayable.description.getter(uint64_t a1, uint64_t (**a2)(void))
{
  v65 = 0;
  v66 = a1;
  v63 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v64 = v2;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\tclass: ", 8uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](countAndFlagsBits);

  v62[2] = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v62[0] = String.init<A>(describing:)();
  v62[1] = v4;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v62);
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\tproductID:", 0xCuLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v5);

  v60[2] = a2[5](a1);
  v61 = v6 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  v60[0] = String.init<A>(describing:)();
  v60[1] = v7;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v60);
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\tbatteryStateCase:", 0x13uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v8);

  v59 = a2[8](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
  v58[0] = String.init<A>(describing:)();
  v58[1] = v9;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v58);
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\tbatteryStateLeft:", 0x13uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v10);

  v57 = a2[11](a1);
  v56[0] = String.init<A>(describing:)();
  v56[1] = v11;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v56);
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\tbatteryStateRight:", 0x14uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v12);

  v55 = a2[14](a1);
  v54[0] = String.init<A>(describing:)();
  v54[1] = v13;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v54);
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\tbatteryStateMain:", 0x13uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v14);

  v53 = a2[17](a1);
  v52[0] = String.init<A>(describing:)();
  v52[1] = v15;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v52);
  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\tbatteryLevelCase:", 0x13uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v16);

  v51 = a2[20](a1);
  v49 = v51;
  v50 = BYTE4(v51) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfSgMd, &_sSfSgMR);
  v48[0] = String.init<A>(describing:)();
  v48[1] = v17;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v48);
  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\tbatteryLevelLeft:", 0x13uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v18);

  v47 = a2[23](a1);
  v45 = v47;
  v46 = BYTE4(v47) & 1;
  v44[0] = String.init<A>(describing:)();
  v44[1] = v19;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v44);
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\tbatteryLevelRight:", 0x14uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v20);

  v43 = a2[26](a1);
  v41 = v43;
  v42 = BYTE4(v43) & 1;
  v40[0] = String.init<A>(describing:)();
  v40[1] = v21;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v40);
  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\tbatteryLevelMain:", 0x13uLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v22);

  v39 = a2[29](a1);
  v37 = v39;
  v38 = BYTE4(v39) & 1;
  v36[0] = String.init<A>(describing:)();
  v36[1] = v23;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v36);
  v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\tdeviceColor:", 0xEuLL, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v24);

  v35 = a2[32](a1);
  v33 = v35;
  v34 = BYTE4(v35) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
  v32[0] = String.init<A>(describing:)();
  v32[1] = v25;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String(v32);
  v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v26);

  v31 = v63;
  v30 = v64;

  outlined destroy of DefaultStringInterpolation(&v63);
  return MEMORY[0x1DA7309B0](v31, v30);
}

uint64_t HeadphoneDeviceDataReplayable.customizableKeyPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  _allocateUninitializedArray<A>(_:)();
  v6 = v0;
  v1 = ReplayData.kProductIdKey.unsafeMutableAddressor();
  v4 = *v1;
  v5 = *(v1 + 1);

  v6->_countAndFlagsBits = v4;
  v6->_object = v5;
  v6[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateCase", 0x10uLL, 1);
  v6[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateLeft", 0x10uLL, 1);
  v6[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateRight", 0x11uLL, 1);
  v6[4] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateMain", 0x10uLL, 1);
  v6[5] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelCase", 0x10uLL, 1);
  v6[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelLeft", 0x10uLL, 1);
  v6[7] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelRight", 0x11uLL, 1);
  v6[8] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelMain", 0x10uLL, 1);
  v6[9] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("deviceColor", 0xBuLL, 1);
  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
  lazy protocol witness table accessor for type [String?] and conformance [A]();
  Sequence.compactMap<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v3 = Set.init<A>(_:)();

  return v3;
}

__int128 *ReplayData.kProductIdKey.unsafeMutableAddressor()
{
  if (one-time initialization token for kProductIdKey != -1)
  {
    swift_once();
  }

  return &static ReplayData.kProductIdKey;
}

uint64_t closure #1 in HeadphoneDeviceDataReplayable.customizableKeyPaths.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = 0;
  v7 = 0;
  *(&v4 + 1) = a1[1];
  v6 = *a1;
  *&v4 = v6;
  v7 = *(&v4 + 1);

  v5 = v4;
  if (*(&v4 + 1))
  {
    *a2 = v5;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    if (*(&v5 + 1))
    {
      return outlined destroy of String?(&v5);
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [String?] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [String?] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String?] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSSgGMd, &_sSaySSSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String?] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t static ReplayData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v31 = a2;
  v3 = v2;
  v4 = v20;
  v30 = v3;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v38 = type metadata accessor for UUID();
  v36 = *(v38 - 8);
  v37 = v38 - 8;
  v21 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v22 = &v12[-v21];
  v23 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v12[-v21]);
  v24 = &v12[-v23];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v25 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v39 = &v12[-v25];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v26 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v12[-v26];
  v28 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v12[-v26]);
  v35 = &v12[-v28];
  v29 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v12[-v28]);
  v33 = &v12[-v29];
  v44 = v4;
  v43 = v9;
  v42 = v30;
  v10 = (*(*v4 + 448))(v4);
  (*(*v31 + 448))(v10);
  v34 = *(v32 + 48);
  outlined init with copy of UUID?(v33, v39);
  outlined init with copy of UUID?(v35, &v39[v34]);
  v40 = *(v36 + 48);
  v41 = v36 + 48;
  if (v40(v39, 1, v38) == 1)
  {
    if (v40(&v39[v34], 1, v38) != 1)
    {
      goto LABEL_8;
    }

    outlined destroy of UUID?(v39);
    v19 = 1;
  }

  else
  {
    outlined init with copy of UUID?(v39, v27);
    if (v40(&v39[v34], 1, v38) == 1)
    {
      (*(v36 + 8))(v27, v38);
LABEL_8:
      outlined destroy of (UUID?, UUID?)(v39);
      v19 = 0;
      goto LABEL_7;
    }

    v15 = *(v36 + 32);
    v14 = v36 + 32;
    v15(v24, v27, v38);
    v15(v22, &v39[v34], v38);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    v17 = *(v36 + 8);
    v16 = v36 + 8;
    v17(v22, v38);
    v17(v24, v38);
    outlined destroy of UUID?(v39);
    v19 = v18;
  }

LABEL_7:
  v13 = v19;
  outlined destroy of UUID?(v35);
  outlined destroy of UUID?(v33);
  return v13 & 1;
}

uint64_t one-time initialization function for kProductIdKey()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("productId", 9uLL, 1);
  result = v1._countAndFlagsBits;
  static ReplayData.kProductIdKey = v1;
  return result;
}

void *outlined init with copy of UUID?(const void *a1, void *a2)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of (UUID?, UUID?)(uint64_t a1)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

uint64_t static ReplayData.kProductIdKey.getter()
{
  v0 = ReplayData.kProductIdKey.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t key path getter for ReplayData.productId : ReplayData@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 184))(v2);
  *(a2 + 8) = v3 & 1;
}

uint64_t key path setter for ReplayData.productId : ReplayData(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v5 = *(a1 + 8);
  v4 = *a2;

  (*(*v4 + 192))(v3, v5 & 1);
}

uint64_t ReplayData.productId.getter()
{
  swift_beginAccess();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_endAccess();
  return v3;
}

uint64_t ReplayData.productId.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return swift_endAccess();
}

uint64_t key path getter for ReplayData.batteryStateCase : ReplayData@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 208))(v2);
}

uint64_t key path setter for ReplayData.batteryStateCase : ReplayData(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 216))(v3);
}

uint64_t ReplayData.batteryStateCase.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 25);
  swift_endAccess();
  return v2;
}

uint64_t ReplayData.batteryStateCase.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 25) = a1;
  return swift_endAccess();
}

uint64_t key path getter for ReplayData.batteryStateLeft : ReplayData@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 232))(v2);
}

uint64_t key path setter for ReplayData.batteryStateLeft : ReplayData(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 240))(v3);
}

uint64_t ReplayData.batteryStateLeft.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 26);
  swift_endAccess();
  return v2;
}

uint64_t ReplayData.batteryStateLeft.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 26) = a1;
  return swift_endAccess();
}

uint64_t key path getter for ReplayData.batteryStateRight : ReplayData@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 256))(v2);
}

uint64_t key path setter for ReplayData.batteryStateRight : ReplayData(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 264))(v3);
}

uint64_t ReplayData.batteryStateRight.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 27);
  swift_endAccess();
  return v2;
}

uint64_t ReplayData.batteryStateRight.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 27) = a1;
  return swift_endAccess();
}

uint64_t key path getter for ReplayData.batteryStateMain : ReplayData@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 280))(v2);
}

uint64_t key path setter for ReplayData.batteryStateMain : ReplayData(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 288))(v3);
}

uint64_t ReplayData.batteryStateMain.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 28);
  swift_endAccess();
  return v2;
}

uint64_t ReplayData.batteryStateMain.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 28) = a1;
  return swift_endAccess();
}

uint64_t variable initialization expression of ReplayData.batteryLevelCase()
{
  LODWORD(v1) = 0;
  BYTE4(v1) = 1;
  return v1;
}

uint64_t key path getter for ReplayData.batteryLevelCase : ReplayData@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;

  v3 = (*(*v5 + 304))(v2);
  *a2 = v3;
  *(a2 + 4) = BYTE4(v3) & 1;
}

uint64_t key path setter for ReplayData.batteryLevelCase : ReplayData(int *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v3 = *a2;

  LODWORD(v6) = v4;
  BYTE4(v6) = v5 & 1;
  (*(*v3 + 312))(v6);
}

uint64_t ReplayData.batteryLevelCase.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = *(v0 + 36);
  swift_endAccess();
  LODWORD(v4) = v2;
  BYTE4(v4) = v3 & 1;
  return v4;
}

uint64_t ReplayData.batteryLevelCase.setter(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  swift_beginAccess();
  *(v1 + 32) = v3;
  *(v1 + 36) = v4 & 1;
  return swift_endAccess();
}

uint64_t variable initialization expression of ReplayData.batteryLevelLeft()
{
  LODWORD(v1) = 0;
  BYTE4(v1) = 1;
  return v1;
}

uint64_t key path getter for ReplayData.batteryLevelLeft : ReplayData@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;

  v3 = (*(*v5 + 328))(v2);
  *a2 = v3;
  *(a2 + 4) = BYTE4(v3) & 1;
}

uint64_t key path setter for ReplayData.batteryLevelLeft : ReplayData(int *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v3 = *a2;

  LODWORD(v6) = v4;
  BYTE4(v6) = v5 & 1;
  (*(*v3 + 336))(v6);
}

uint64_t ReplayData.batteryLevelLeft.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  v3 = *(v0 + 44);
  swift_endAccess();
  LODWORD(v4) = v2;
  BYTE4(v4) = v3 & 1;
  return v4;
}

uint64_t ReplayData.batteryLevelLeft.setter(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  swift_beginAccess();
  *(v1 + 40) = v3;
  *(v1 + 44) = v4 & 1;
  return swift_endAccess();
}

uint64_t variable initialization expression of ReplayData.batteryLevelRight()
{
  LODWORD(v1) = 0;
  BYTE4(v1) = 1;
  return v1;
}

uint64_t key path getter for ReplayData.batteryLevelRight : ReplayData@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;

  v3 = (*(*v5 + 352))(v2);
  *a2 = v3;
  *(a2 + 4) = BYTE4(v3) & 1;
}

uint64_t key path setter for ReplayData.batteryLevelRight : ReplayData(int *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v3 = *a2;

  LODWORD(v6) = v4;
  BYTE4(v6) = v5 & 1;
  (*(*v3 + 360))(v6);
}

uint64_t ReplayData.batteryLevelRight.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);
  swift_endAccess();
  LODWORD(v4) = v2;
  BYTE4(v4) = v3 & 1;
  return v4;
}

uint64_t ReplayData.batteryLevelRight.setter(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  swift_beginAccess();
  *(v1 + 48) = v3;
  *(v1 + 52) = v4 & 1;
  return swift_endAccess();
}

uint64_t variable initialization expression of ReplayData.batteryLevelMain()
{
  LODWORD(v1) = 0;
  BYTE4(v1) = 1;
  return v1;
}

uint64_t key path getter for ReplayData.batteryLevelMain : ReplayData@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;

  v3 = (*(*v5 + 376))(v2);
  *a2 = v3;
  *(a2 + 4) = BYTE4(v3) & 1;
}

uint64_t key path setter for ReplayData.batteryLevelMain : ReplayData(int *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v3 = *a2;

  LODWORD(v6) = v4;
  BYTE4(v6) = v5 & 1;
  (*(*v3 + 384))(v6);
}

uint64_t ReplayData.batteryLevelMain.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  v3 = *(v0 + 60);
  swift_endAccess();
  LODWORD(v4) = v2;
  BYTE4(v4) = v3 & 1;
  return v4;
}

uint64_t ReplayData.batteryLevelMain.setter(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  swift_beginAccess();
  *(v1 + 56) = v3;
  *(v1 + 60) = v4 & 1;
  return swift_endAccess();
}

uint64_t key path getter for ReplayData.deviceName : ReplayData@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 400))(v2);
  a2[1] = v3;
}

uint64_t key path setter for ReplayData.deviceName : ReplayData(void *a1, uint64_t *a2)
{
  outlined init with copy of String?(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  (*(*v5 + 408))(v4, v6);
}

uint64_t ReplayData.deviceName.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  swift_endAccess();
  return v2;
}

uint64_t ReplayData.deviceName.setter(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  v3 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  swift_endAccess();
}

uint64_t variable initialization expression of ReplayData.deviceColor()
{
  LODWORD(v1) = 0;
  BYTE4(v1) = 1;
  return v1;
}

uint64_t key path getter for ReplayData.deviceColor : ReplayData@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;

  v3 = (*(*v5 + 424))(v2);
  *a2 = v3;
  *(a2 + 4) = BYTE4(v3) & 1;
}

uint64_t key path setter for ReplayData.deviceColor : ReplayData(int *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v3 = *a2;

  LODWORD(v6) = v4;
  BYTE4(v6) = v5 & 1;
  (*(*v3 + 432))(v6);
}

uint64_t ReplayData.deviceColor.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 80);
  v3 = *(v0 + 84);
  swift_endAccess();
  LODWORD(v4) = v2;
  BYTE4(v4) = v3 & 1;
  return v4;
}

uint64_t ReplayData.deviceColor.setter(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  swift_beginAccess();
  *(v1 + 80) = v3;
  *(v1 + 84) = v4 & 1;
  return swift_endAccess();
}

uint64_t variable initialization expression of ReplayData.randomHexAddress@<X0>(uint64_t a1@<X8>)
{
  UUID.init()();
  v1 = type metadata accessor for UUID();
  return (*(*(v1 - 8) + 56))(a1, 0, 1);
}

uint64_t key path getter for ReplayData.randomHexAddress : ReplayData@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v4 - v6;
  v7 = *MEMORY[0x1EEE9AC00](v5);

  v11 = v7;
  v10 = v7;
  (*(*v7 + 448))(v2);
  outlined init with take of UUID?(v8, v9);
}

uint64_t key path setter for ReplayData.randomHexAddress : ReplayData(uint64_t a1, uint64_t *a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v4 - v6;
  outlined init with copy of UUID?(v2, &v4 - v6);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  (*(*v9 + 456))(v8);
}

uint64_t ReplayData.randomHexAddress.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData_randomHexAddress);
  swift_beginAccess();
  outlined init with copy of UUID?(v3, a1);
  return swift_endAccess();
}

uint64_t ReplayData.randomHexAddress.setter(uint64_t a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v9 = v1;
  outlined init with copy of UUID?(v10, &v3 - v3);
  v5 = (v1 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData_randomHexAddress);
  v6 = &v8;
  swift_beginAccess();
  outlined assign with take of UUID?(v4, v5);
  swift_endAccess();
  return outlined destroy of UUID?(v7);
}

void *outlined assign with take of UUID?(const void *a1, void *a2)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t property wrapper backing initializer of ReplayData.listeners@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy7Combine14AnyCancellableCGMd, &_sShy7Combine14AnyCancellableCGMR);
  CodableIgnored.init(wrappedValue:)(v6, v2, a2);
}

uint64_t ReplayData.listeners.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData__listeners);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t ReplayData.listeners.setter(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData__listeners);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t variable initialization expression of ReplayData._listeners()
{
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable();
  return Set.init()();
}

uint64_t ReplayData._listeners.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData__listeners);
  swift_beginAccess();
  v5 = *v3;

  result = swift_endAccess();
  *a1 = v5;
  return result;
}

uint64_t ReplayData._listeners.setter(uint64_t *a1)
{
  v5 = *a1;

  v4 = (v1 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData__listeners);
  swift_beginAccess();
  v2 = *v4;
  *v4 = v5;

  swift_endAccess();
}

uint64_t ReplayData.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return ReplayData.init()();
}

uint64_t ReplayData.init()()
{
  v8 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 25) = 2;
  *(v0 + 26) = 2;
  *(v0 + 27) = 2;
  *(v0 + 28) = 2;
  *(v0 + 32) = 0;
  *(v0 + 36) = 1;
  *(v0 + 40) = 0;
  *(v0 + 44) = 1;
  *(v0 + 48) = 0;
  *(v0 + 52) = 1;
  *(v0 + 56) = 0;
  *(v0 + 60) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 84) = 1;
  v4 = v0 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData_randomHexAddress;
  UUID.init()();
  v1 = type metadata accessor for UUID();
  (*(*(v1 - 8) + 56))(v4, 0, 1);
  v5 = OBJC_IVAR____TtC16HeadphoneManager10ReplayData__listeners;
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable();
  v2 = Set.init()();
  property wrapper backing initializer of ReplayData.listeners(v2, &v7);
  result = v6;
  *(v6 + v5) = v7;
  return result;
}

uint64_t ReplayData.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v58 = a2;

  v56 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("productId", 9uLL, 1);
  v54 = a1;
  v55 = a2;
  v19 = MEMORY[0x1DA7309E0](v56._countAndFlagsBits, v56._object, a1, a2);
  outlined destroy of String(&v56);
  if (v19)
  {

    v59 = 0;
    v16 = 0;
LABEL_28:

    return v16;
  }

  v53 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateCase", 0x10uLL, 1);
  v51 = a1;
  v52 = a2;
  v15 = MEMORY[0x1DA7309E0](v53._countAndFlagsBits, v53._object, a1, a2);
  outlined destroy of String(&v53);
  if (v15)
  {

    v59 = 1;
    v16 = 1;
    goto LABEL_28;
  }

  v50 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateLeft", 0x10uLL, 1);
  v48 = a1;
  v49 = a2;
  v14 = MEMORY[0x1DA7309E0](v50._countAndFlagsBits, v50._object, a1, a2);
  outlined destroy of String(&v50);
  if (v14)
  {

    v59 = 2;
    v16 = 2;
    goto LABEL_28;
  }

  v47 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateRight", 0x11uLL, 1);
  v45 = a1;
  v46 = a2;
  v13 = MEMORY[0x1DA7309E0](v47._countAndFlagsBits, v47._object, a1, a2);
  outlined destroy of String(&v47);
  if (v13)
  {

    v59 = 3;
    v16 = 3;
    goto LABEL_28;
  }

  v44 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateMain", 0x10uLL, 1);
  v42 = a1;
  v43 = a2;
  v12 = MEMORY[0x1DA7309E0](v44._countAndFlagsBits, v44._object, a1, a2);
  outlined destroy of String(&v44);
  if (v12)
  {

    v59 = 4;
    v16 = 4;
    goto LABEL_28;
  }

  v41 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelCase", 0x10uLL, 1);
  v39 = a1;
  v40 = a2;
  v11 = MEMORY[0x1DA7309E0](v41._countAndFlagsBits, v41._object, a1, a2);
  outlined destroy of String(&v41);
  if (v11)
  {

    v59 = 5;
    v16 = 5;
    goto LABEL_28;
  }

  v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelLeft", 0x10uLL, 1);
  v36 = a1;
  v37 = a2;
  v10 = MEMORY[0x1DA7309E0](v38._countAndFlagsBits, v38._object, a1, a2);
  outlined destroy of String(&v38);
  if (v10)
  {

    v59 = 6;
    v16 = 6;
    goto LABEL_28;
  }

  v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelRight", 0x11uLL, 1);
  v33 = a1;
  v34 = a2;
  v9 = MEMORY[0x1DA7309E0](v35._countAndFlagsBits, v35._object, a1, a2);
  outlined destroy of String(&v35);
  if (v9)
  {

    v59 = 7;
    v16 = 7;
    goto LABEL_28;
  }

  v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelMain", 0x10uLL, 1);
  v30 = a1;
  v31 = a2;
  v8 = MEMORY[0x1DA7309E0](v32._countAndFlagsBits, v32._object, a1, a2);
  outlined destroy of String(&v32);
  if (v8)
  {

    v59 = 8;
    v16 = 8;
    goto LABEL_28;
  }

  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("deviceName", 0xAuLL, 1);
  v27 = a1;
  v28 = a2;
  v7 = MEMORY[0x1DA7309E0](v29._countAndFlagsBits, v29._object, a1, a2);
  outlined destroy of String(&v29);
  if (v7)
  {

    v59 = 9;
    v16 = 9;
    goto LABEL_28;
  }

  v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("deviceColor", 0xBuLL, 1);
  v24 = a1;
  v25 = a2;
  v6 = MEMORY[0x1DA7309E0](v26._countAndFlagsBits, v26._object, a1, a2);
  outlined destroy of String(&v26);
  if (v6)
  {

    v59 = 10;
    v16 = 10;
    goto LABEL_28;
  }

  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("randomHexAddress", 0x10uLL, 1);
  v21 = a1;
  v22 = a2;
  v5 = MEMORY[0x1DA7309E0](v23._countAndFlagsBits, v23._object, a1, a2);
  outlined destroy of String(&v23);
  if (v5)
  {

    v59 = 11;
    v16 = 11;
    goto LABEL_28;
  }

  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("listeners", 9uLL, 1);
  v4 = MEMORY[0x1DA7309E0](v20._countAndFlagsBits, v20._object, a1, a2);
  outlined destroy of String(&v20);
  if (v4)
  {

    v59 = 12;
    v16 = 12;
    goto LABEL_28;
  }

  return 13;
}

BOOL static ReplayData.CodingKeys.== infix(_:_:)(char a1, char a2)
{
  switch(a1)
  {
    case 1:
      v4 = 1;
      break;
    case 2:
      v4 = 2;
      break;
    case 3:
      v4 = 3;
      break;
    case 4:
      v4 = 4;
      break;
    case 5:
      v4 = 5;
      break;
    case 6:
      v4 = 6;
      break;
    case 7:
      v4 = 7;
      break;
    case 8:
      v4 = 8;
      break;
    case 9:
      v4 = 9;
      break;
    case 10:
      v4 = 10;
      break;
    case 11:
      v4 = 11;
      break;
    case 12:
      v4 = 12;
      break;
    default:
      v4 = 0;
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    default:
      v3 = 0;
      break;
  }

  return v4 == v3;
}

unint64_t lazy protocol witness table accessor for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys()
{
  v2 = lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

uint64_t ReplayData.CodingKeys.stringValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateCase", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 2:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateLeft", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 3:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateRight", 0x11uLL, 1)._countAndFlagsBits;
      break;
    case 4:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryStateMain", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 5:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelCase", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 6:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelLeft", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 7:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelRight", 0x11uLL, 1)._countAndFlagsBits;
      break;
    case 8:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batteryLevelMain", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 9:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("deviceName", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 10:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("deviceColor", 0xBuLL, 1)._countAndFlagsBits;
      break;
    case 11:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("randomHexAddress", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 12:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("listeners", 9uLL, 1)._countAndFlagsBits;
      break;
    default:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("productId", 9uLL, 1)._countAndFlagsBits;
      break;
  }

  return countAndFlagsBits;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ReplayData.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ReplayData.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance ReplayData.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = ReplayData.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t ReplayData.deinit()
{
  outlined destroy of String?(v0 + 64);
  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData_randomHexAddress);
  outlined destroy of CodableIgnored<Set<AnyCancellable>>((v0 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData__listeners));
  return v2;
}

uint64_t *outlined destroy of CodableIgnored<Set<AnyCancellable>>(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t ReplayData.__deallocating_deinit()
{
  v0 = *ReplayData.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t ReplayData.encode(to:)(uint64_t a1)
{
  v92 = v125;
  v93 = a1;
  v127 = 0;
  v126 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v90 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v91 = v44 - v90;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16HeadphoneManager10ReplayDataC10CodingKeys33_E0CD115AC4CBFD655F45F736CCCB4A57LLOGMd, &_ss22KeyedEncodingContainerVy16HeadphoneManager10ReplayDataC10CodingKeys33_E0CD115AC4CBFD655F45F736CCCB4A57LLOGMR);
  v94 = *(v101 - 8);
  v95 = v101 - 8;
  v96 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v93);
  v100 = v44 - v96;
  *(v4 + 48) = v3;
  *(v4 + 40) = v1;
  v97 = v3[3];
  v98 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v97);
  lazy protocol witness table accessor for type ReplayData.CodingKeys and conformance ReplayData.CodingKeys();
  v5 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(*v99 + 184))(v5);
  v6 = v102;
  v125[39] = 0;
  v7 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v103 = v6;
  v104 = v6;
  if (v6)
  {
    v55 = v104;
    result = (*(v94 + 8))(v100, v101);
    v56 = v55;
  }

  else
  {
    (*(*v99 + 208))(v7);
    v8 = v103;
    v125[38] = 1;
    v9 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v88 = v8;
    v89 = v8;
    if (v8)
    {
      v54 = v89;
      result = (*(v94 + 8))(v100, v101);
      v56 = v54;
    }

    else
    {
      (*(*v99 + 232))(v9);
      v10 = v88;
      v125[37] = 2;
      v11 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      v86 = v10;
      v87 = v10;
      if (v10)
      {
        v53 = v87;
        result = (*(v94 + 8))(v100, v101);
        v56 = v53;
      }

      else
      {
        (*(*v99 + 256))(v11);
        v12 = v86;
        v125[36] = 3;
        v13 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
        v84 = v12;
        v85 = v12;
        if (v12)
        {
          v52 = v85;
          result = (*(v94 + 8))(v100, v101);
          v56 = v52;
        }

        else
        {
          (*(*v99 + 280))(v13);
          v14 = v84;
          v125[35] = 4;
          v15 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
          v82 = v14;
          v83 = v14;
          if (v14)
          {
            v51 = v83;
            result = (*(v94 + 8))(v100, v101);
            v56 = v51;
          }

          else
          {
            v16 = (*(*v99 + 304))(v15);
            v17 = v92;
            v18 = v82;
            v92[3] = v16;
            v19 = *(v17 + 6);
            v20 = v125[28];
            v125[23] = 5;
            *(v17 + 2) = v19;
            v125[12] = v20 & 1;
            v21 = v17[1];
            v22 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v80 = v18;
            v81 = v18;
            if (v18)
            {
              v50 = v81;
              result = (*(v94 + 8))(v100, v101);
              v56 = v50;
            }

            else
            {
              v23 = (*(*v99 + 328))(v22);
              v24 = v92;
              v25 = v80;
              *v92 = v23;
              v26 = *v24;
              v124 = 6;
              v122 = v26;
              v123 = v125[4] & 1;
              v27 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
              v78 = v25;
              v79 = v25;
              if (v25)
              {
                v49 = v79;
                result = (*(v94 + 8))(v100, v101);
                v56 = v49;
              }

              else
              {
                v28 = (*(*v99 + 352))(v27);
                v29 = v78;
                v121 = v28;
                v120 = 7;
                v118 = v28;
                v119 = BYTE4(v28) & 1;
                v30 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
                v76 = v29;
                v77 = v29;
                if (v29)
                {
                  v48 = v77;
                  result = (*(v94 + 8))(v100, v101);
                  v56 = v48;
                }

                else
                {
                  v31 = (*(*v99 + 376))(v30);
                  v32 = v76;
                  v117 = v31;
                  v116 = 8;
                  v114 = v31;
                  v115 = BYTE4(v31) & 1;
                  v33 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
                  v74 = v32;
                  v75 = v32;
                  if (v32)
                  {
                    v47 = v75;
                    result = (*(v94 + 8))(v100, v101);
                    v56 = v47;
                  }

                  else
                  {
                    (*(*v99 + 400))(v33);
                    v34 = v74;
                    v71 = v35;
                    v113 = 9;
                    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
                    v72 = v34;
                    v73 = v34;
                    if (v34)
                    {
                      v46 = v73;

                      result = (*(v94 + 8))(v100, v101);
                      v56 = v46;
                    }

                    else
                    {
                      v36 = v99;

                      v38 = (*(*v36 + 424))(v37);
                      v39 = v72;
                      v112 = v38;
                      v111 = 10;
                      v109 = v38;
                      v110 = BYTE4(v38) & 1;
                      v40 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
                      v69 = v39;
                      v70 = v39;
                      if (v39)
                      {
                        v45 = v70;
                        result = (*(v94 + 8))(v100, v101);
                        v56 = v45;
                      }

                      else
                      {
                        (*(*v99 + 448))(v40);
                        v65 = &v108;
                        v108 = 11;
                        v66 = type metadata accessor for UUID();
                        lazy protocol witness table accessor for type UUID and conformance UUID();
                        v41 = v69;
                        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
                        v67 = v41;
                        v68 = v41;
                        if (v41)
                        {
                          v44[2] = v68;
                          outlined destroy of UUID?(v91);
                          return (*(v94 + 8))(v100, v101);
                        }

                        else
                        {
                          outlined destroy of UUID?(v91);
                          v57 = (v99 + OBJC_IVAR____TtC16HeadphoneManager10ReplayData__listeners);
                          v58 = &v107;
                          swift_beginAccess();
                          v59 = *v57;

                          swift_endAccess();
                          v62 = &v106;
                          v106 = v59;
                          v60 = &v105;
                          v105 = 12;
                          v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager14CodableIgnoredVyShy7Combine14AnyCancellableCGGMd, &_s16HeadphoneManager14CodableIgnoredVyShy7Combine14AnyCancellableCGGMR);
                          lazy protocol witness table accessor for type CodableIgnored<Set<AnyCancellable>> and conformance CodableIgnored<A>();
                          v42 = v67;
                          KeyedEncodingContainer.encode<A>(_:forKey:)();
                          v63 = v42;
                          v64 = v42;
                          if (v42)
                          {
                            v44[1] = v64;
                          }

                          outlined destroy of CodableIgnored<Set<AnyCancellable>>(&v106);
                          return (*(v94 + 8))(v100, v101);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}