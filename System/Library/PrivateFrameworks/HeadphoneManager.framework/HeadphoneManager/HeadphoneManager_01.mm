uint64_t closure #1 in Data.init(hexString:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  Character.hexDigitValue.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  result = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in closure #1 in Data.init(hexString:), 0, v2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7508], v6, a2);
  if (v5)
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  v2 = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Substring and conformance Substring);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of Substring(uint64_t a1)
{
  v1 = *(a1 + 24);

  return a1;
}

uint64_t *closure #1 in closure #1 in Data.init(hexString:)@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  if (*result < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v3 > 255)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v18 = a7;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v25 = a6;
  v39 = a4;
  v38 = a5;
  v26 = *(a4 - 8);
  v27 = a4 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v29 = v17 - v28;
  v35 = *(v9 + 16);
  v37 = v35;
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v30 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v31 = v17 - v30;
  v32 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v36 = v17 - v32;
  _sxSgs5ErrorRd__Ri_d_0_r_0_lWOc(v12, v17 - v32, v13, v14);
  if ((*(v33 + 48))(v36, 1, v35) == 1)
  {
    result = (*(*(v23 - 8) + 56))(v18, 1);
    v17[1] = v24;
  }

  else
  {
    (*(v33 + 32))(v31, v36, v35);
    v16 = v24;
    v19(v31, v29);
    v17[0] = v16;
    (*(v33 + 8))(v31, v35);
    if (v16)
    {
      return (*(v26 + 32))(v25, v29, v22);
    }

    else
    {
      (*(*(v23 - 8) + 56))(v18, 0, 1);
      return v17[0];
    }
  }

  return result;
}

uint64_t closure #2 in Data.init(hexString:)(uint64_t result, unsigned __int8 *a2)
{
  v2 = result;
  v3 = *a2;
  if (*(result + 17))
  {
    *(result + 16) = 16 * v3;
    *(result + 17) = 0;
  }

  else if (v3 + *(result + 16) == (v3 + *(result + 16)))
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    result = RangeReplaceableCollection.append(_:)();
    *(v2 + 16) = 0;
    *(v2 + 17) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [UInt8] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UInt8] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

uint64_t *outlined destroy of [UInt8](uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

void *CodableIgnored.wrappedValue.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v2 = type metadata accessor for Optional();
  return outlined init with copy of A?(v6, a2, v4, v2);
}

void *outlined init with copy of A?(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t CodableIgnored.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v10 = *(a2 + 16);
  v15 = v10;
  v11 = type metadata accessor for Optional();
  v7 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v6 - v7;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v13 = v2;
  outlined init with copy of A?(v14, &v6 - v7, v3, v4);
  outlined assign with take of A?(v9, v8, v10, v11);
  return outlined destroy of A?(v12, v10);
}

void *outlined assign with take of A?(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 48);
  if (v10())
  {
    if ((v10)(a1, 1, a3))
    {
      memcpy(a2, a1, *(*(a4 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(a2, a1, a3);
      (*(v9 + 56))(a2, 0, 1, a3);
    }
  }

  else if ((v10)(a1, 1, a3))
  {
    (*(v9 + 8))(a2, a3);
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 40))(a2, a1, a3);
  }

  return a2;
}

uint64_t outlined destroy of A?(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t CodableIgnored.init(wrappedValue:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v10 = a3;
  v11 = a1;
  v12 = a2;
  v17 = 0;
  v16 = 0;
  v18 = a2;
  v6[1] = 0;
  v13 = type metadata accessor for Optional();
  v7 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v6 - v7;
  v14 = type metadata accessor for CodableIgnored();
  v8 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v15 = v6 - v8;
  v17 = v6 - v8;
  v16 = v3;
  (*(*(v4 - 8) + 56))();
  outlined init with copy of A?(v11, v9, v12, v13);
  outlined assign with take of A?(v9, v15, v12, v13);
  outlined init with copy of CodableIgnored<A>(v15, v10, v12, v13);
  outlined destroy of A?(v11, v12);
  return outlined destroy of CodableIgnored<A>(v15, v12);
}

void *outlined init with copy of CodableIgnored<A>(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t outlined destroy of CodableIgnored<A>(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t CodableIgnored.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v14 = a3;
  v15 = a1;
  v17 = a2;
  v21 = 0;
  v20 = 0;
  v22 = a2;
  v7[1] = 0;
  v18 = type metadata accessor for Optional();
  v8 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v13 = v7 - v8;
  v19 = type metadata accessor for CodableIgnored();
  v9 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v16 = v7 - v9;
  v21 = v7 - v9;
  v20 = v3;
  v5 = *(v4 - 8);
  v12 = *(v5 + 56);
  v11 = v5 + 56;
  v10 = 1;
  v12();
  (v12)(v13, v10, v10, v17);
  outlined assign with take of A?(v13, v16, v17, v18);
  outlined init with copy of CodableIgnored<A>(v16, v14, v17, v18);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return outlined destroy of CodableIgnored<A>(v16, v17);
}

uint64_t DefaultsObserver.defaults.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver_defaults);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t DefaultsObserver.updatesSubject.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver_updatesSubject);

  return v2;
}

uint64_t DefaultsObserver.publisher.setter(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver____lazy_storage___publisher);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t *(*DefaultsObserver.publisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = DefaultsObserver.publisher.getter();
  return DefaultsObserver.publisher.modify;
}

uint64_t *DefaultsObserver.publisher.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return DefaultsObserver.publisher.setter(*a1);
  }

  v4 = *a1;

  DefaultsObserver.publisher.setter(v4);
  return outlined destroy of AnyPublisher<NSUserDefaults, Never>(a1);
}

uint64_t *outlined destroy of AnyPublisher<NSUserDefaults, Never>?(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t DefaultsObserver.observeValue(forKeyPath:of:change:context:)()
{
  v4 = *(v0 + OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver_updatesSubject);

  v3 = *(v2 + OBJC_IVAR____TtC16HeadphoneManager16DefaultsObserver_defaults);
  MEMORY[0x1E69E5928](v3);
  CurrentValueSubject.send(_:)();
  MEMORY[0x1E69E5920](v3);
}

uint64_t type metadata accessor for NSKeyValueChangeKey()
{
  v4 = lazy cache variable for type metadata for NSKeyValueChangeKey;
  if (!lazy cache variable for type metadata for NSKeyValueChangeKey)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSKeyValueChangeKey);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey()
{
  v2 = lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey;
  if (!lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey)
  {
    type metadata accessor for NSKeyValueChangeKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey;
  if (!lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey)
  {
    type metadata accessor for NSKeyValueChangeKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey;
  if (!lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey)
  {
    type metadata accessor for NSKeyValueChangeKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey;
  if (!lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey)
  {
    type metadata accessor for NSKeyValueChangeKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey;
  if (!lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey)
  {
    type metadata accessor for NSKeyValueChangeKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey);
    return WitnessTable;
  }

  return v2;
}

id DefaultsObserver.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultsObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AudioAccessoryContainerDevice._cbDevice.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneManager29AudioAccessoryContainerDevice__cbDevice);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

id AudioAccessoryContainerDevice.init(withCBDevice:)(uint64_t a1)
{
  v6 = 0;
  v5 = a1;
  MEMORY[0x1E69E5928](a1);
  *OBJC_IVAR____TtC16HeadphoneManager29AudioAccessoryContainerDevice__cbDevice = a1;
  v4.receiver = v6;
  v4.super_class = type metadata accessor for AudioAccessoryContainerDevice();
  v3 = objc_msgSendSuper2(&v4, sel_init);
  MEMORY[0x1E69E5928](v3);
  v6 = v3;
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v6);
  return v3;
}

id AudioAccessoryContainerDevice.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id AudioAccessoryContainerDevice.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR____TtC16HeadphoneManager29AudioAccessoryContainerDevice__cbDevice = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for AudioAccessoryContainerDevice();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x1E69E5928](v4);
    v7 = v4;
    MEMORY[0x1E69E5920](a1);
    MEMORY[0x1E69E5920](v7);
    return v4;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a1);
    return 0;
  }
}

uint64_t AudioAccessoryContainerDevice.coreBluetoothDevice.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneManager29AudioAccessoryContainerDevice__cbDevice);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

id AudioAccessoryContainerDevice.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioAccessoryContainerDevice();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ReplayAudioAccessoryDevice.init(withCBDevice:)(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = AudioAccessoryContainerDevice.init(withCBDevice:)(a1);
  MEMORY[0x1E69E5928](v3);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v3);
  return v3;
}

id ReplayAudioAccessoryDevice.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id ReplayAudioAccessoryDevice.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for ReplayAudioAccessoryDevice();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x1E69E5928](v4);
    v7 = v4;
    MEMORY[0x1E69E5920](a1);
    MEMORY[0x1E69E5920](v7);
    return v4;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a1);
    return 0;
  }
}

id ReplayAudioAccessoryDevice.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReplayAudioAccessoryDevice();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *AudioAccessoryDevice.headphoneDevice(cbDevice:withDelegate:)(void *a1, uint64_t a2)
{
  type metadata accessor for HeadphoneDevice();
  (MEMORY[0x1E69E5928])();
  MEMORY[0x1E69E5928](a1);
  swift_unknownObjectRetain();
  return HeadphoneDevice.__allocating_init(_aaDevice:cbDevice:delegate:)(v3, a1, a2);
}

uint64_t *@objc AudioAccessoryDevice.headphoneDevice(cbDevice:withDelegate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](a1);
  v9 = AudioAccessoryDevice.headphoneDevice(cbDevice:withDelegate:)(a3, a4);
  MEMORY[0x1E69E5920](a1);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a3);

  return v9;
}

id dynamic AudioAccessoryDevice.headphoneDevice(cbDevice:withDelegate:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1);
  swift_unknownObjectRetain();
  (MEMORY[0x1E69E5928])();
  v6 = [v3 headphoneDeviceWithCbDevice:a1 withDelegate:a2];
  (MEMORY[0x1E69E5920])();
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a1);
  return v6;
}

uint64_t ReplayAudioAccessoryDevice.headphoneDevice(cbDevice:withDelegate:)(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  v25 = a1;
  v24 = a2;
  v23 = v2;
  type metadata accessor for HeadphoneReplayDevice();
  MEMORY[0x1E69E5928](v2);
  v18 = *(v2 + OBJC_IVAR____TtC16HeadphoneManager29AudioAccessoryContainerDevice__cbDevice);
  MEMORY[0x1E69E5928](v18);
  (MEMORY[0x1E69E5920])();
  if (v18)
  {
    v17 = v18;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  swift_unknownObjectRetain();
  v16 = HeadphoneDevice.__allocating_init(cbDevice:delegate:)(v17);
  v22 = v16;
  MEMORY[0x1E69E5928](v16);
  v7 = *(v16 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);
  v8 = *(v16 + OBJC_IVAR___HPMHeadphoneDevice_btAddress + 8);

  MEMORY[0x1E69E5920](v16);
  v21[0] = v7;
  v21[1] = v8;
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("-", 1uLL, 1);
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(":", 1uLL, 1);
  v9 = lazy protocol witness table accessor for type String and conformance String();
  v10 = MEMORY[0x1E69E6158];
  default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v15 = v3;
  outlined destroy of String(&v19);
  outlined destroy of String(&v20);
  outlined destroy of String(v21);
  v11 = HeadphoneDataProvider.shared.unsafeMutableAddressor();
  swift_beginAccess();
  v4 = *v11;
  v12 = *v11;
  MEMORY[0x1E69E5928](*v11);
  v5 = swift_endAccess();
  v14 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x140))(v5);
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5928](v16);

  MEMORY[0x1DA730940](v13, v15);
  [v14 setObject:v16 forKey:{v10, v9, v9, v9}];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v14);

  return v16;
}

uint64_t default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo22NSStringCompareOptionsV_Tt0gq5(0);

  return 0;
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance NSKeyValueObservingOptions()
{
  lazy protocol witness table accessor for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance NSKeyValueObservingOptions()
{
  lazy protocol witness table accessor for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance NSKeyValueObservingOptions()
{
  lazy protocol witness table accessor for type NSKeyValueObservingOptions and conformance NSKeyValueObservingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance NSKeyValueChangeKey()
{
  lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey();
  lazy protocol witness table accessor for type String and conformance String();
  return _SwiftNewtypeWrapper<>._bridgeToObjectiveC()();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSKeyValueChangeKey()
{
  lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey();
  lazy protocol witness table accessor for type String and conformance String();
  return static _SwiftNewtypeWrapper<>._forceBridgeFromObjectiveC(_:result:)();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSKeyValueChangeKey()
{
  lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey();
  lazy protocol witness table accessor for type String and conformance String();
  return static _SwiftNewtypeWrapper<>._conditionallyBridgeFromObjectiveC(_:result:)() & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSKeyValueChangeKey()
{
  lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey();
  lazy protocol witness table accessor for type String and conformance String();
  return static _SwiftNewtypeWrapper<>._unconditionallyBridgeFromObjectiveC(_:)();
}

__C::NSKeyValueObservingOptions protocol witness for RawRepresentable.init(rawValue:) in conformance NSKeyValueObservingOptions@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = NSKeyValueObservingOptions.init(rawValue:)(*a1).rawValue;
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSKeyValueObservingOptions@<X0>(uint64_t *a1@<X8>)
{
  result = NSKeyValueObservingOptions.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

__C::NSKeyValueChangeKey protocol witness for RawRepresentable.init(rawValue:) in conformance NSKeyValueChangeKey@<X0>(Swift::String *a1@<X0>, __C::NSKeyValueChangeKey *a2@<X8>)
{
  result._rawValue = NSKeyValueChangeKey.init(rawValue:)(*a1)._rawValue;
  a2->_rawValue = result._rawValue;
  return result;
}

__C::NSKeyValueChangeKey __swiftcall NSKeyValueChangeKey.init(rawValue:)(Swift::String rawValue)
{

  v3._rawValue = MEMORY[0x1DA730940](rawValue._countAndFlagsBits, rawValue._object);
  MEMORY[0x1E69E5928](v3._rawValue);

  MEMORY[0x1E69E5920](v3._rawValue);
  return v3;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSKeyValueChangeKey@<X0>(uint64_t *a1@<X8>)
{
  result = NSKeyValueChangeKey.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t NSKeyValueChangeKey.rawValue.getter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSKeyValueChangeKey()
{
  lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey();
  lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  Int.init(bitPattern:)(&v9);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x1EEE9AC00](v17);
        v15 = partial apply for closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:);
        v16 = &v37;
        specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(partial apply for specialized closure #1 in StaticString.withUTF8Buffer<A>(_:), v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined destroy of String(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t type metadata completion function for CodableIgnored(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo22NSStringCompareOptionsV_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for NSStringCompareOptions();
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t type metadata accessor for NSStringCompareOptions()
{
  v4 = lazy cache variable for type metadata for NSStringCompareOptions;
  if (!lazy cache variable for type metadata for NSStringCompareOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSStringCompareOptions);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  v2 = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Data and conformance Data);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Data and conformance Data);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Data and conformance Data);
    return WitnessTable;
  }

  return v2;
}

void *_sxSgs5ErrorRd__Ri_d_0_r_0_lWOc(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t AADeviceModel.bluetoothAddressData.getter()
{
  v2 = *(v0 + 16);
  outlined copy of Data?(v2, *(v0 + 24));
  return v2;
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t AADeviceModel.bluetoothAddressData.setter(uint64_t a1, unint64_t a2)
{
  outlined copy of Data?(a1, a2);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  outlined consume of Data?(v3, v4);
  return outlined consume of Data?(a1, a2);
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

unint64_t type metadata accessor for NSDate()
{
  v2 = lazy cache variable for type metadata for NSDate;
  if (!lazy cache variable for type metadata for NSDate)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSDate);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t AADeviceModel.audiogramEnrolledTimestamp.getter()
{
  v2 = *(v0 + 48);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t AADeviceModel.audiogramEnrolledTimestamp.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t AADeviceModel.identifier.getter()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  return v2;
}

uint64_t AADeviceModel.identifier.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

id static AADeviceModel.deviceConfigFor<A>(keyPath:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v228 = &v287;
  v224 = a1;
  v177 = a2;
  v176 = a3;
  v292 = 0;
  v291 = 0;
  v290 = 0;
  v293 = a3;
  v178 = 0;
  v171 = type metadata accessor for Date();
  v172 = *(v171 - 8);
  v173 = v171 - 8;
  v174 = (*(v172 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v171);
  v175 = &v79 - v174;
  v182 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  v179 = (v182 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v178);
  v180 = &v79 - v179;
  v181 = (v182 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v183 = &v79 - v181;
  v184 = (v182 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v185 = &v79 - v184;
  v186 = *(v6 - 8);
  v187 = v6 - 8;
  v219 = *(v186 + 64);
  v188 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v189 = &v79 - v188;
  v190 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v191 = &v79 - v190;
  v192 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v193 = &v79 - v192;
  v194 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v195 = &v79 - v194;
  v196 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v197 = &v79 - v196;
  v198 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v199 = &v79 - v198;
  v200 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v201 = &v79 - v200;
  v202 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v203 = &v79 - v202;
  v204 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v205 = &v79 - v204;
  v206 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v207 = &v79 - v206;
  v208 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v209 = &v79 - v208;
  v210 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v211 = &v79 - v210;
  v212 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v213 = &v79 - v212;
  v214 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v215 = &v79 - v214;
  v216 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v217 = &v79 - v216;
  v218 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v220 = &v79 - v218;
  v221 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v222 = &v79 - v221;
  *(v23 + 224) = v224;
  *(v23 + 216) = v24;
  type metadata accessor for AADeviceConfig();
  v223 = AADeviceConfig.__allocating_init()();
  v228[26] = v223;

  KeyPath = swift_getKeyPath();
  v26 = v228;
  v27 = KeyPath;
  v28 = v224;
  v226 = &v289;
  v228[25] = v27;
  v225 = &v288;
  v26[24] = v28;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14PartialKeyPathCy16HeadphoneManager13AADeviceModelVGMd, _ss14PartialKeyPathCy16HeadphoneManager13AADeviceModelVGMR);
  v229 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = v228[25];

  if (v229)
  {

    (*(v186 + 16))(v222, v177, v176);
    type metadata accessor for AAHeadGestureConfig();
    if (swift_dynamicCast())
    {
      v170 = v232;
    }

    else
    {
      v170 = 0x100000000;
    }

    v230 = v170;
    v231 = BYTE4(v170) & 1;
    MEMORY[0x1E69E5928](v223);
    if (v231)
    {
      v168 = [v223 acceptReplyPlayPauseConfig];
      v169 = v168;
    }

    else
    {
      v169 = v230;
    }

    v167 = v169;
    MEMORY[0x1E69E5920](v223);
    [v223 setAcceptReplyPlayPauseConfig_];
  }

  else
  {

    v30 = swift_getKeyPath();
    v31 = v224;
    v32 = v228;
    v228[23] = v30;
    v32[22] = v31;
    v166 = dispatch thunk of static Equatable.== infix(_:_:)();
    v33 = v228[23];

    if (v166)
    {

      (*(v186 + 16))(v220, v177, v176);
      type metadata accessor for AAAutoANCStrength();
      if (swift_dynamicCast())
      {
        v165 = v235;
      }

      else
      {
        v165 = 0x100000000;
      }

      v233 = v165;
      v234 = BYTE4(v165) & 1;
      MEMORY[0x1E69E5928](v223);
      if (v234)
      {
        v163 = [v223 autoANCStrength];
        v164 = v163;
      }

      else
      {
        v164 = v233;
      }

      v162 = v164;
      MEMORY[0x1E69E5920](v223);
      [v223 setAutoANCStrength_];
    }

    else
    {

      v34 = swift_getKeyPath();
      v35 = v224;
      v36 = v228;
      v228[21] = v34;
      v36[20] = v35;
      v161 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = v228[21];

      if (v161)
      {

        (*(v186 + 16))(v217, v177, v176);
        type metadata accessor for AABobbleConfiguration();
        if (swift_dynamicCast())
        {
          v160 = v238;
        }

        else
        {
          v160 = 0x100000000;
        }

        v236 = v160;
        v237 = BYTE4(v160) & 1;
        MEMORY[0x1E69E5928](v223);
        if (v237)
        {
          v158 = [v223 bobbleConfig];
          v159 = v158;
        }

        else
        {
          v159 = v236;
        }

        v157 = v159;
        MEMORY[0x1E69E5920](v223);
        [v223 setBobbleConfig_];
      }

      else
      {

        v38 = swift_getKeyPath();
        v39 = v224;
        v40 = v228;
        v228[19] = v38;
        v40[18] = v39;
        v156 = dispatch thunk of static Equatable.== infix(_:_:)();
        v41 = v228[19];

        if (v156)
        {

          (*(v186 + 16))(v215, v177, v176);
          type metadata accessor for AAHeadGestureConfig();
          if (swift_dynamicCast())
          {
            v155 = v241;
          }

          else
          {
            v155 = 0x100000000;
          }

          v239 = v155;
          v240 = BYTE4(v155) & 1;
          MEMORY[0x1E69E5928](v223);
          if (v240)
          {
            v153 = [v223 declineDismissSkipConfig];
            v154 = v153;
          }

          else
          {
            v154 = v239;
          }

          v152 = v154;
          MEMORY[0x1E69E5920](v223);
          [v223 setDeclineDismissSkipConfig_];
        }

        else
        {

          v42 = swift_getKeyPath();
          v43 = v224;
          v44 = v228;
          v228[17] = v42;
          v44[16] = v43;
          v151 = dispatch thunk of static Equatable.== infix(_:_:)();
          v45 = v228[17];

          if (v151)
          {

            (*(v186 + 16))(v213, v177, v176);
            type metadata accessor for AAMultiState();
            if (swift_dynamicCast())
            {
              v150 = v244;
            }

            else
            {
              v150 = 0x100000000;
            }

            v242 = v150;
            v243 = BYTE4(v150) & 1;
            MEMORY[0x1E69E5928](v223);
            if (v243)
            {
              v148 = [v223 headGestureToggle];
              v149 = v148;
            }

            else
            {
              v149 = v242;
            }

            v147 = v149;
            MEMORY[0x1E69E5920](v223);
            [v223 setHeadGestureToggle_];
          }

          else
          {

            v46 = swift_getKeyPath();
            v47 = v224;
            v48 = v228;
            v228[15] = v46;
            v48[14] = v47;
            v146 = dispatch thunk of static Equatable.== infix(_:_:)();
            v49 = v228[15];

            if (v146)
            {

              (*(v186 + 16))(v211, v177, v176);
              type metadata accessor for AAMultiState();
              if (swift_dynamicCast())
              {
                v145 = v247;
              }

              else
              {
                v145 = 0x100000000;
              }

              v245 = v145;
              v246 = BYTE4(v145) & 1;
              MEMORY[0x1E69E5928](v223);
              if (v246)
              {
                v143 = [v223 headGestureProxCardShown];
                v144 = v143;
              }

              else
              {
                v144 = v245;
              }

              v142 = v144;
              MEMORY[0x1E69E5920](v223);
              [v223 setHeadGestureProxCardShown_];
            }

            else
            {

              v50 = swift_getKeyPath();
              v51 = v224;
              v52 = v228;
              v228[13] = v50;
              v52[12] = v51;
              v141 = dispatch thunk of static Equatable.== infix(_:_:)();
              v53 = v228[13];

              if (v141)
              {

                (*(v186 + 16))(v209, v177, v176);
                type metadata accessor for AAMultiState();
                if (swift_dynamicCast())
                {
                  v140 = v250;
                }

                else
                {
                  v140 = 0x100000000;
                }

                v248 = v140;
                v249 = BYTE4(v140) & 1;
                MEMORY[0x1E69E5928](v223);
                if (v249)
                {
                  v138 = [v223 hearingAidEnrolled];
                  v139 = v138;
                }

                else
                {
                  v139 = v248;
                }

                v137 = v139;
                MEMORY[0x1E69E5920](v223);
                [v223 setHearingAidEnrolled_];
              }

              else
              {

                v54 = swift_getKeyPath();
                v55 = v224;
                v56 = v228;
                v228[11] = v54;
                v56[10] = v55;
                v136 = dispatch thunk of static Equatable.== infix(_:_:)();
                v57 = v228[11];

                if (v136)
                {

                  (*(v186 + 16))(v207, v177, v176);
                  type metadata accessor for AAMultiState();
                  if (swift_dynamicCast())
                  {
                    v135 = v253;
                  }

                  else
                  {
                    v135 = 0x100000000;
                  }

                  v251 = v135;
                  v252 = BYTE4(v135) & 1;
                  MEMORY[0x1E69E5928](v223);
                  if (v252)
                  {
                    v133 = [v223 enableHearingAidGainSwipe];
                    v134 = v133;
                  }

                  else
                  {
                    v134 = v251;
                  }

                  v132 = v134;
                  MEMORY[0x1E69E5920](v223);
                  [v223 setEnableHearingAidGainSwipe_];
                }

                else
                {

                  v58 = swift_getKeyPath();
                  v59 = v224;
                  v60 = v228;
                  v228[9] = v58;
                  v60[8] = v59;
                  v131 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v61 = v228[9];

                  if (v131)
                  {

                    (*(v186 + 16))(v205, v177, v176);
                    type metadata accessor for NSDate();
                    if (swift_dynamicCast())
                    {
                      v130 = v254;
                    }

                    else
                    {
                      v130 = 0;
                    }

                    v129 = v130;
                    if (v130)
                    {
                      v128 = v129;
                      v127 = v129;
                      static Date._unconditionallyBridgeFromObjectiveC(_:)();
                      (*(v172 + 32))(v183, v175, v171);
                      (*(v172 + 56))(v183, 0, 1, v171);
                      MEMORY[0x1E69E5920](v127);
                    }

                    else
                    {
                      (*(v172 + 56))(v183, 1, 1, v171);
                    }

                    MEMORY[0x1E69E5928](v223);
                    v125 = *(v172 + 48);
                    v126 = v172 + 48;
                    if (v125(v183, 1, v171) == 1)
                    {
                      v124 = [v223 audiogramEnrolledTimestamp];
                      if (v124)
                      {
                        v123 = v124;
                        v122 = v124;
                        static Date._unconditionallyBridgeFromObjectiveC(_:)();
                        (*(v172 + 32))(v180, v175, v171);
                        (*(v172 + 56))(v180, 0, 1, v171);
                        MEMORY[0x1E69E5920](v122);
                      }

                      else
                      {
                        (*(v172 + 56))(v180, 1, 1, v171);
                      }

                      outlined init with take of Date?(v180, v185);
                      if (v125(v183, 1, v171) != 1)
                      {
                        outlined destroy of Date?(v183);
                      }
                    }

                    else
                    {
                      (*(v172 + 32))(v185, v183, v171);
                      (*(v172 + 56))(v185, 0, 1, v171);
                    }

                    MEMORY[0x1E69E5920](v223);
                    if (v125(v185, 1, v171) == 1)
                    {
                      v121 = 0;
                    }

                    else
                    {
                      isa = Date._bridgeToObjectiveC()().super.isa;
                      (*(v172 + 8))(v185, v171);
                      v121 = isa;
                    }

                    v119 = v121;
                    [v223 setAudiogramEnrolledTimestamp_];
                    MEMORY[0x1E69E5920](v119);
                  }

                  else
                  {

                    v62 = swift_getKeyPath();
                    v63 = v224;
                    v64 = v228;
                    v228[7] = v62;
                    v64[6] = v63;
                    v118 = dispatch thunk of static Equatable.== infix(_:_:)();
                    v65 = v228[7];

                    if (v118)
                    {

                      (*(v186 + 16))(v203, v177, v176);
                      type metadata accessor for AAMultiState();
                      if (swift_dynamicCast())
                      {
                        v117 = v257;
                      }

                      else
                      {
                        v117 = 0x100000000;
                      }

                      v255 = v117;
                      v256 = BYTE4(v117) & 1;
                      MEMORY[0x1E69E5928](v223);
                      if (v256)
                      {
                        v115 = [v223 enableHeartRateMonitor];
                        v116 = v115;
                      }

                      else
                      {
                        v116 = v255;
                      }

                      v114 = v116;
                      MEMORY[0x1E69E5920](v223);
                      [v223 setEnableHeartRateMonitor_];
                    }

                    else
                    {

                      v66 = swift_getKeyPath();
                      v67 = v224;
                      v68 = v228;
                      v228[5] = v66;
                      v68[4] = v67;
                      v113 = dispatch thunk of static Equatable.== infix(_:_:)();
                      v69 = v228[5];

                      if (v113)
                      {

                        (*(v186 + 16))(v201, v177, v176);
                        type metadata accessor for AAMultiState();
                        if (swift_dynamicCast())
                        {
                          v112 = v260;
                        }

                        else
                        {
                          v112 = 0x100000000;
                        }

                        v258 = v112;
                        v259 = BYTE4(v112) & 1;
                        MEMORY[0x1E69E5928](v223);
                        if (v259)
                        {
                          v110 = [v223 enableSleepDetection];
                          v111 = v110;
                        }

                        else
                        {
                          v111 = v258;
                        }

                        v109 = v111;
                        MEMORY[0x1E69E5920](v223);
                        [v223 setEnableSleepDetection_];
                      }

                      else
                      {

                        v70 = swift_getKeyPath();
                        v71 = v224;
                        v72 = v228;
                        v228[3] = v70;
                        v72[2] = v71;
                        v108 = dispatch thunk of static Equatable.== infix(_:_:)();
                        v73 = v228[3];

                        if (v108)
                        {

                          (*(v186 + 16))(v199, v177, v176);
                          type metadata accessor for AARemoteCameraControlConfig();
                          if (swift_dynamicCast())
                          {
                            v107 = v263;
                          }

                          else
                          {
                            v107 = 0x100000000;
                          }

                          v261 = v107;
                          v262 = BYTE4(v107) & 1;
                          MEMORY[0x1E69E5928](v223);
                          if (v262)
                          {
                            v105 = [v223 remoteCameraControlConfig];
                            v106 = v105;
                          }

                          else
                          {
                            v106 = v261;
                          }

                          v104 = v106;
                          MEMORY[0x1E69E5920](v223);
                          [v223 setRemoteCameraControlConfig_];
                        }

                        else
                        {

                          v74 = swift_getKeyPath();
                          v75 = v224;
                          v76 = v228;
                          v228[1] = v74;
                          *v76 = v75;
                          v103 = dispatch thunk of static Equatable.== infix(_:_:)();
                          v77 = v228[1];

                          if (v103)
                          {

                            (*(v186 + 16))(v197, v177, v176);
                            type metadata accessor for AAMultiState();
                            if (swift_dynamicCast())
                            {
                              v102 = v266;
                            }

                            else
                            {
                              v102 = 0x100000000;
                            }

                            v264 = v102;
                            v265 = BYTE4(v102) & 1;
                            MEMORY[0x1E69E5928](v223);
                            if (v265)
                            {
                              v100 = [v223 enableChargingReminder];
                              v101 = v100;
                            }

                            else
                            {
                              v101 = v264;
                            }

                            v99 = v101;
                            MEMORY[0x1E69E5920](v223);
                            [v223 setEnableChargingReminder_];
                          }

                          else
                          {

                            v286 = swift_getKeyPath();
                            v285 = v224;
                            v98 = dispatch thunk of static Equatable.== infix(_:_:)();

                            if (v98)
                            {

                              (*(v186 + 16))(v195, v177, v176);
                              type metadata accessor for AAMultiState();
                              if (swift_dynamicCast())
                              {
                                v97 = v269;
                              }

                              else
                              {
                                v97 = 0x100000000;
                              }

                              v267 = v97;
                              v268 = BYTE4(v97) & 1;
                              MEMORY[0x1E69E5928](v223);
                              if (v268)
                              {
                                v95 = [v223 allowTemporaryManagedPairing];
                                v96 = v95;
                              }

                              else
                              {
                                v96 = v267;
                              }

                              v94 = v96;
                              MEMORY[0x1E69E5920](v223);
                              [v223 setAllowTemporaryManagedPairing_];
                            }

                            else
                            {

                              v284 = swift_getKeyPath();
                              v283 = v224;
                              v93 = dispatch thunk of static Equatable.== infix(_:_:)();

                              if (v93)
                              {

                                (*(v186 + 16))(v193, v177, v176);
                                type metadata accessor for AAChargingFeatureEnablementState();
                                if (swift_dynamicCast())
                                {
                                  v92 = v272;
                                }

                                else
                                {
                                  v92 = 0x100000000;
                                }

                                v270 = v92;
                                v271 = BYTE4(v92) & 1;
                                MEMORY[0x1E69E5928](v223);
                                if (v271)
                                {
                                  v90 = [v223 changeOptimizedBatteryChargingState];
                                  v91 = v90;
                                }

                                else
                                {
                                  v91 = v270;
                                }

                                v89 = v91;
                                MEMORY[0x1E69E5920](v223);
                                [v223 setChangeOptimizedBatteryChargingState_];
                              }

                              else
                              {

                                v282 = swift_getKeyPath();
                                v281 = v224;
                                v88 = dispatch thunk of static Equatable.== infix(_:_:)();

                                if (v88)
                                {

                                  (*(v186 + 16))(v191, v177, v176);
                                  type metadata accessor for AAChargingFeatureEnablementState();
                                  if (swift_dynamicCast())
                                  {
                                    v87 = v275;
                                  }

                                  else
                                  {
                                    v87 = 0x100000000;
                                  }

                                  v273 = v87;
                                  v274 = BYTE4(v87) & 1;
                                  MEMORY[0x1E69E5928](v223);
                                  if (v274)
                                  {
                                    v85 = [v223 changeDynamicEndOfChargeState];
                                    v86 = v85;
                                  }

                                  else
                                  {
                                    v86 = v273;
                                  }

                                  v84 = v86;
                                  MEMORY[0x1E69E5920](v223);
                                  [v223 setChangeDynamicEndOfChargeState_];
                                }

                                else
                                {

                                  v280 = swift_getKeyPath();
                                  v279 = v224;
                                  v83 = dispatch thunk of static Equatable.== infix(_:_:)();

                                  if (v83)
                                  {

                                    (*(v186 + 16))(v189, v177, v176);
                                    type metadata accessor for AAMultiState();
                                    if (swift_dynamicCast())
                                    {
                                      v82 = v278;
                                    }

                                    else
                                    {
                                      v82 = 0x100000000;
                                    }

                                    v276 = v82;
                                    v277 = BYTE4(v82) & 1;
                                    MEMORY[0x1E69E5928](v223);
                                    if (v277)
                                    {
                                      v80 = [v223 allowHealthKitDataWrite];
                                      v81 = v80;
                                    }

                                    else
                                    {
                                      v81 = v276;
                                    }

                                    v79 = v81;
                                    MEMORY[0x1E69E5920](v223);
                                    [v223 setAllowHealthKitDataWrite_];
                                  }

                                  else
                                  {
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
          }
        }
      }
    }
  }

  return v223;
}

unint64_t type metadata accessor for AADeviceConfig()
{
  v2 = lazy cache variable for type metadata for AADeviceConfig;
  if (!lazy cache variable for type metadata for AADeviceConfig)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for AADeviceConfig);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for AAMultiState()
{
  v4 = lazy cache variable for type metadata for AAMultiState;
  if (!lazy cache variable for type metadata for AAMultiState)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAMultiState);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for AAChargingFeatureEnablementState()
{
  v4 = lazy cache variable for type metadata for AAChargingFeatureEnablementState;
  if (!lazy cache variable for type metadata for AAChargingFeatureEnablementState)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAChargingFeatureEnablementState);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for AARemoteCameraControlConfig()
{
  v4 = lazy cache variable for type metadata for AARemoteCameraControlConfig;
  if (!lazy cache variable for type metadata for AARemoteCameraControlConfig)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AARemoteCameraControlConfig);
      return v1;
    }
  }

  return v4;
}

void *outlined init with take of Date?(const void *a1, void *a2)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t type metadata accessor for AAHeadGestureConfig()
{
  v4 = lazy cache variable for type metadata for AAHeadGestureConfig;
  if (!lazy cache variable for type metadata for AAHeadGestureConfig)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAHeadGestureConfig);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for AABobbleConfiguration()
{
  v4 = lazy cache variable for type metadata for AABobbleConfiguration;
  if (!lazy cache variable for type metadata for AABobbleConfiguration)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AABobbleConfiguration);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for AAAutoANCStrength()
{
  v4 = lazy cache variable for type metadata for AAAutoANCStrength;
  if (!lazy cache variable for type metadata for AAAutoANCStrength)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAAutoANCStrength);
      return v1;
    }
  }

  return v4;
}

uint64_t AADeviceModel.init(acceptReplyPlayPauseConfig:autoANCCapability:autoANCStrength:bluetoothAddressData:bobbleCapability:bobbleConfig:caseSoundCapability:declineDismissSkipConfig:earTipFitTestCapability:frequencyBand:headGestureToggle:headGestureProxCardShown:hearingAidCapability:hearingAidEnrolled:hearingAidConfig:hearingAidGainSwipeEnabled:hearingTestCapability:hideOffListeningModeCapability:audiogramEnrolledTimestamp:heartRateMonitorEnabled:hideEarDetectionCapability:identifier:streamStateAoS:smartRoutingMode:sleepDetectionCapability:sleepDetectionEnabled:cameraControlConfig:chargingReminderEnabled:optimizedBatteryChargingState:dynamicEndOfChargeState:temporaryManagedPairedStatus:healthKitDataWriteAllowed:)@<X0>(char a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, uint64_t a21, char a22, char a23, uint64_t a24, uint64_t a25, unsigned __int8 a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35)
{
  *a9 = a1;
  result = a26;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 33) = a7;
  *(a9 + 34) = a8;
  *(a9 + 35) = a10;
  *(a9 + 36) = a11;
  *(a9 + 37) = a12;
  *(a9 + 38) = a13;
  *(a9 + 39) = a14;
  *(a9 + 40) = a15;
  *(a9 + 41) = a16;
  *(a9 + 42) = a17;
  *(a9 + 43) = a18;
  *(a9 + 44) = a19;
  *(a9 + 45) = a20;
  *(a9 + 48) = a21;
  *(a9 + 56) = a22;
  *(a9 + 57) = a23;
  *(a9 + 64) = a24;
  *(a9 + 72) = a25;
  *(a9 + 80) = a26;
  *(a9 + 81) = a27;
  *(a9 + 82) = a28;
  *(a9 + 83) = a29;
  *(a9 + 84) = a30;
  *(a9 + 85) = a31;
  *(a9 + 86) = a32;
  *(a9 + 87) = a33;
  *(a9 + 88) = a34;
  *(a9 + 89) = a35;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(void *a1)
{
  if ((HIBYTE(a1[1]) >> 6) < 3u)
  {
    return HIBYTE(a1[1]) >> 6;
  }

  else
  {
    return *a1 + 3;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = HIBYTE(*(a1 + 8)) >> 4;
  v2 = 15 - (((4 * v1) | (v1 >> 2)) & 0xF);
  if (v2 >= 0xC)
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t getEnumTagSinglePayload for AADeviceModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 90))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 48)))
      {
        v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for AADeviceModel(uint64_t result, int a2, int a3)
{
  v3 = (result + 90);
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
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
      *(result + 48) = (a2 - 1);
    }
  }

  return result;
}

uint64_t type metadata accessor for AASmartRoutingMode()
{
  v4 = lazy cache variable for type metadata for AASmartRoutingMode;
  if (!lazy cache variable for type metadata for AASmartRoutingMode)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AASmartRoutingMode);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for AAStreamStateAoS()
{
  v4 = lazy cache variable for type metadata for AAStreamStateAoS;
  if (!lazy cache variable for type metadata for AAStreamStateAoS)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAStreamStateAoS);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for AAHearingTestCapability()
{
  v4 = lazy cache variable for type metadata for AAHearingTestCapability;
  if (!lazy cache variable for type metadata for AAHearingTestCapability)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAHearingTestCapability);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for AAHearingAidConfiguration()
{
  v4 = lazy cache variable for type metadata for AAHearingAidConfiguration;
  if (!lazy cache variable for type metadata for AAHearingAidConfiguration)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAHearingAidConfiguration);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for AAHearingAidCapability()
{
  v4 = lazy cache variable for type metadata for AAHearingAidCapability;
  if (!lazy cache variable for type metadata for AAHearingAidCapability)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAHearingAidCapability);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for AAFrequencyBand()
{
  v4 = lazy cache variable for type metadata for AAFrequencyBand;
  if (!lazy cache variable for type metadata for AAFrequencyBand)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAFrequencyBand);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for AAAutoANCCapability()
{
  v4 = lazy cache variable for type metadata for AAAutoANCCapability;
  if (!lazy cache variable for type metadata for AAAutoANCCapability)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAAutoANCCapability);
      return v1;
    }
  }

  return v4;
}

uint64_t one-time initialization function for fwSeeding()
{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static Logger.fwSeeding);
  __swift_project_value_buffer(v1, static Logger.fwSeeding);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneSettings", 0x1BuLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("firmwareSeeding", 0xFuLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.fwSeeding.unsafeMutableAddressor()
{
  if (one-time initialization token for fwSeeding != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static Logger.fwSeeding);
}

uint64_t static Logger.fwSeeding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Logger.fwSeeding.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

Swift::Bool __swiftcall HeadphoneDevice.shouldShowFirmwareSeeding()()
{
  v44 = 0;
  v55 = partial apply for implicit closure #1 in HeadphoneDevice.shouldShowFirmwareSeeding();
  v57 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  v59 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  v63 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
  v65 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v67 = closure #1 in OSLogArguments.append(_:)partial apply;
  v70 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v82 = 0;
  v81 = 0;
  v36 = 0;
  v52 = type metadata accessor for Logger();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v37 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52);
  v0 = &v23[-v37];
  v38 = &v23[-v37];
  v82 = v1;
  v43 = "com.apple.HeadphoneSettings";
  v41 = 27;
  v42 = 1;
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneSettings", 0x1BuLL, 1);
  object = v2._object;
  v39 = MEMORY[0x1DA730940](v2._countAndFlagsBits);
  CFPreferencesAppSynchronize(v39);
  MEMORY[0x1E69E5920](v39);

  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SeedingPlacardShowed", 0x14uLL, v42 & 1);
  v48 = v3._object;
  v47 = MEMORY[0x1DA730940](v3._countAndFlagsBits);
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v43, v41, v42 & 1);
  v46 = v4._object;
  v45 = MEMORY[0x1DA730940](v4._countAndFlagsBits);
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v47, v45, v44);
  MEMORY[0x1E69E5920](v45);

  MEMORY[0x1E69E5920](v47);

  v53 = AppBooleanValue != 0;
  v81 = AppBooleanValue != 0;
  v5 = Logger.fwSeeding.unsafeMutableAddressor();
  (*(v50 + 16))(v0, v5, v52);
  v54 = 17;
  v61 = 7;
  v56 = swift_allocObject();
  *(v56 + 16) = v53;
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  v66 = swift_allocObject();
  *(v66 + 16) = 0;
  v68 = swift_allocObject();
  *(v68 + 16) = 4;
  v60 = 32;
  v6 = swift_allocObject();
  v7 = v56;
  v58 = v6;
  *(v6 + 16) = v55;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v58;
  v62 = v8;
  *(v8 + 16) = v57;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v62;
  v64 = v10;
  *(v10 + 16) = v59;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v64;
  v71 = v12;
  *(v12 + 16) = v63;
  *(v12 + 24) = v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v69 = _allocateUninitializedArray<A>(_:)();
  v72 = v14;

  v15 = v66;
  v16 = v72;
  *v72 = v65;
  v16[1] = v15;

  v17 = v68;
  v18 = v72;
  v72[2] = v67;
  v18[3] = v17;

  v19 = v71;
  v20 = v72;
  v72[4] = v70;
  v20[5] = v19;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v74, v75))
  {
    v21 = v36;
    v29 = static UnsafeMutablePointer.allocate(capacity:)();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v28 = 0;
    v30 = createStorage<A>(capacity:type:)(0);
    v31 = createStorage<A>(capacity:type:)(v28);
    v32 = &v80;
    v80 = v29;
    v33 = &v79;
    v79 = v30;
    v34 = &v78;
    v78 = v31;
    serialize(_:at:)(0, &v80);
    serialize(_:at:)(1, v32);
    v76 = v65;
    v77 = v66;
    closure #1 in osLogInternal(_:log:type:)(&v76, v32, v33, v34);
    v35 = v21;
    if (v21)
    {

      __break(1u);
    }

    else
    {
      v76 = v67;
      v77 = v68;
      closure #1 in osLogInternal(_:log:type:)(&v76, &v80, &v79, &v78);
      v26 = 0;
      v76 = v70;
      v77 = v71;
      closure #1 in osLogInternal(_:log:type:)(&v76, &v80, &v79, &v78);
      _os_log_impl(&dword_1D93D0000, v74, v75, "FW Seeding: placardShowed: %{BOOL}d", v29, 8u);
      v25 = 0;
      destroyStorage<A>(_:count:)(v30, 0, v27);
      destroyStorage<A>(_:count:)(v31, v25, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v29, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v74);
  (*(v50 + 8))(v38, v52);
  return !v53 && HeadphoneDevice.shouldShowFirmwareUpdate()();
}

Swift::Bool __swiftcall HeadphoneDevice.shouldShowFirmwareUpdate()()
{
  v168 = partial apply for implicit closure #9 in HeadphoneDevice.shouldShowFirmwareUpdate();
  v169 = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_0;
  v170 = partial apply for implicit closure #10 in HeadphoneDevice.shouldShowFirmwareUpdate();
  v171 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v172 = partial apply for implicit closure #11 in HeadphoneDevice.shouldShowFirmwareUpdate();
  v173 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v174 = partial apply for implicit closure #12 in HeadphoneDevice.shouldShowFirmwareUpdate();
  v175 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v176 = partial apply for implicit closure #13 in HeadphoneDevice.shouldShowFirmwareUpdate();
  v177 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v178 = partial apply for implicit closure #14 in HeadphoneDevice.shouldShowFirmwareUpdate();
  v179 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v180 = partial apply for implicit closure #15 in HeadphoneDevice.shouldShowFirmwareUpdate();
  v181 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v182 = closure #1 in OSLogArguments.append(_:)partial apply;
  v183 = closure #1 in OSLogArguments.append(_:)partial apply;
  v184 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v185 = closure #1 in OSLogArguments.append(_:)partial apply;
  v186 = closure #1 in OSLogArguments.append(_:)partial apply;
  v187 = closure #1 in OSLogArguments.append(_:)partial apply;
  v188 = closure #1 in OSLogArguments.append(_:)partial apply;
  v189 = closure #1 in OSLogArguments.append(_:)partial apply;
  v190 = closure #1 in OSLogArguments.append(_:)partial apply;
  v191 = closure #1 in OSLogArguments.append(_:)partial apply;
  v192 = closure #1 in OSLogArguments.append(_:)partial apply;
  v193 = closure #1 in OSLogArguments.append(_:)partial apply;
  v194 = closure #1 in OSLogArguments.append(_:)partial apply;
  v195 = closure #1 in OSLogArguments.append(_:)partial apply;
  v196 = closure #1 in OSLogArguments.append(_:)partial apply;
  v197 = closure #1 in OSLogArguments.append(_:)partial apply;
  v198 = closure #1 in OSLogArguments.append(_:)partial apply;
  v199 = closure #1 in OSLogArguments.append(_:)partial apply;
  v200 = closure #1 in OSLogArguments.append(_:)partial apply;
  v201 = closure #1 in OSLogArguments.append(_:)partial apply;
  v202 = closure #1 in OSLogArguments.append(_:)partial apply;
  v238 = 0;
  v234 = 0;
  v233 = 0;
  v232 = 0;
  v231 = 0;
  v230 = 0;
  v229 = 0;
  v228 = 0;
  v203 = 0;
  v204 = type metadata accessor for Logger();
  v205 = *(v204 - 8);
  v206 = v204 - 8;
  v207 = (*(v205 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v204);
  v208 = v81 - v207;
  v238 = v0;
  v209 = &v235;
  v236 = &type metadata for AudioAccessoryFeatures;
  v237 = lazy protocol witness table accessor for type AudioAccessoryFeatures and conformance AudioAccessoryFeatures();
  v235 = 3;
  v210 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v209);
  v234 = v210 & 1;
  v211 = swift_allocObject();
  v233 = v211 + 16;
  *(v211 + 16) = 0;
  v212 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x228))();
  v213 = [v212 productID];
  MEMORY[0x1E69E5920](v212);
  v215 = CBProductIDIsW3(v213);
  MEMORY[0x1E69E5928](v214);
  if (v215)
  {
    v165 = (*((*v214 & *MEMORY[0x1E69E7D40]) + 0x228))();
    v166 = [v165 productID];
    MEMORY[0x1E69E5920](v165);
    v167 = CBProductIDIsAirPods(v166);
  }

  else
  {
    v167 = 0;
  }

  v151 = v167;
  MEMORY[0x1E69E5920](v214);
  v161 = 1;
  v232 = v151 & 1;
  v155 = "com.apple.HeadphoneSettings";
  v154 = 27;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneSettings", 0x1BuLL, 1);
  object = v1._object;
  v152 = MEMORY[0x1DA730940](v1._countAndFlagsBits);
  CFPreferencesAppSynchronize(v152);
  MEMORY[0x1E69E5920](v152);

  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ImprovedSeedingUI", 0x11uLL, v161 & 1);
  v159 = v2._object;
  v158 = MEMORY[0x1DA730940](v2._countAndFlagsBits);
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v155, v154, v161 & 1);
  v157 = v3._object;
  v156 = MEMORY[0x1DA730940](v3._countAndFlagsBits);
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v158, v156, 0);
  MEMORY[0x1E69E5920](v156);

  MEMORY[0x1E69E5920](v158);

  v162 = AppBooleanValue != 0;
  v231 = v162 & v161;
  v163 = HeadphoneDevice.getUARPSettingsAccessory()();
  v230 = v163;
  v164 = HeadphoneDevice.getSeedProgram()();
  v229 = v164;
  if (v210)
  {
    v150 = *(v211 + 16);
  }

  else
  {
    v150 = 0;
  }

  v149 = v150;
  MEMORY[0x1E69E5928](v163);
  if (v149)
  {
    v216 = v163;
    v148 = v163 != 0;
    v147 = v148;
  }

  else
  {
    v147 = 0;
  }

  v146 = v147;
  MEMORY[0x1E69E5920](v163);
  v145 = v146 || v162;
  if (v145)
  {
    v144 = v151;
  }

  else
  {
    v144 = 0;
  }

  if (v144)
  {
    v142 = &v222;
    v222 = v164;
    v140 = &v221;
    v221 = 1;
    v141 = type metadata accessor for SDSeedProgram();
    v143 = lazy protocol witness table accessor for type SDSeedProgram and conformance SDSeedProgram();
    if (== infix<A>(_:_:)())
    {
      v139 = 1;
    }

    else
    {
      v220 = v164;
      v219 = 2;
      v139 = == infix<A>(_:_:)();
    }

    if (v139)
    {
      v138 = 1;
    }

    else
    {
      v218 = v164;
      v217 = 3;
      v138 = == infix<A>(_:_:)();
    }

    v137 = v138;
  }

  else
  {
    v137 = 0;
  }

  v4 = v208;
  v90 = v137;
  v92 = 1;
  v228 = v137 & 1;
  v5 = Logger.fwSeeding.unsafeMutableAddressor();
  (*(v205 + 16))(v4, v5, v204);
  v105 = 17;
  v108 = 7;
  v93 = swift_allocObject();
  *(v93 + 16) = v90 & v92;
  v95 = swift_allocObject();
  *(v95 + 16) = v210 & v92;

  v91 = 24;
  v6 = swift_allocObject();
  v7 = v163;
  v98 = v6;
  *(v6 + 16) = v164;
  MEMORY[0x1E69E5928](v7);
  v100 = swift_allocObject();
  *(v100 + 16) = v163;
  v102 = swift_allocObject();
  *(v102 + 16) = v151 & v92;
  v109 = swift_allocObject();
  *(v109 + 16) = v162;
  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.default.getter();
  v111 = swift_allocObject();
  v104 = 32;
  *(v111 + 16) = 32;
  v112 = swift_allocObject();
  v106 = 8;
  *(v112 + 16) = 8;
  v107 = 32;
  v8 = swift_allocObject();
  v9 = v93;
  v94 = v8;
  *(v8 + 16) = v168;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v94;
  v113 = v10;
  *(v10 + 16) = v169;
  *(v10 + 24) = v11;
  v114 = swift_allocObject();
  *(v114 + 16) = v104;
  v115 = swift_allocObject();
  *(v115 + 16) = v106;
  v12 = swift_allocObject();
  v13 = v95;
  v96 = v12;
  *(v12 + 16) = v170;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v96;
  v116 = v14;
  *(v14 + 16) = v171;
  *(v14 + 24) = v15;
  v117 = swift_allocObject();
  *(v117 + 16) = v104;
  v118 = swift_allocObject();
  *(v118 + 16) = v106;
  v16 = swift_allocObject();
  v17 = v211;
  v97 = v16;
  *(v16 + 16) = v172;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v97;
  v119 = v18;
  *(v18 + 16) = v173;
  *(v18 + 24) = v19;
  v120 = swift_allocObject();
  *(v120 + 16) = v104;
  v121 = swift_allocObject();
  *(v121 + 16) = v106;
  v20 = swift_allocObject();
  v21 = v98;
  v99 = v20;
  *(v20 + 16) = v174;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v99;
  v122 = v22;
  *(v22 + 16) = v175;
  *(v22 + 24) = v23;
  v123 = swift_allocObject();
  *(v123 + 16) = v104;
  v124 = swift_allocObject();
  *(v124 + 16) = v106;
  v24 = swift_allocObject();
  v25 = v100;
  v101 = v24;
  *(v24 + 16) = v176;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v101;
  v125 = v26;
  *(v26 + 16) = v177;
  *(v26 + 24) = v27;
  v126 = swift_allocObject();
  *(v126 + 16) = v104;
  v127 = swift_allocObject();
  *(v127 + 16) = v106;
  v28 = swift_allocObject();
  v29 = v102;
  v103 = v28;
  *(v28 + 16) = v178;
  *(v28 + 24) = v29;
  v30 = swift_allocObject();
  v31 = v103;
  v128 = v30;
  *(v30 + 16) = v179;
  *(v30 + 24) = v31;
  v129 = swift_allocObject();
  *(v129 + 16) = v104;
  v130 = swift_allocObject();
  *(v130 + 16) = v106;
  v32 = swift_allocObject();
  v33 = v109;
  v110 = v32;
  *(v32 + 16) = v180;
  *(v32 + 24) = v33;
  v34 = swift_allocObject();
  v35 = v110;
  v132 = v34;
  *(v34 + 16) = v181;
  *(v34 + 24) = v35;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v131 = _allocateUninitializedArray<A>(_:)();
  v133 = v36;

  v37 = v111;
  v38 = v133;
  *v133 = v182;
  v38[1] = v37;

  v39 = v112;
  v40 = v133;
  v133[2] = v183;
  v40[3] = v39;

  v41 = v113;
  v42 = v133;
  v133[4] = v184;
  v42[5] = v41;

  v43 = v114;
  v44 = v133;
  v133[6] = v185;
  v44[7] = v43;

  v45 = v115;
  v46 = v133;
  v133[8] = v186;
  v46[9] = v45;

  v47 = v116;
  v48 = v133;
  v133[10] = v187;
  v48[11] = v47;

  v49 = v117;
  v50 = v133;
  v133[12] = v188;
  v50[13] = v49;

  v51 = v118;
  v52 = v133;
  v133[14] = v189;
  v52[15] = v51;

  v53 = v119;
  v54 = v133;
  v133[16] = v190;
  v54[17] = v53;

  v55 = v120;
  v56 = v133;
  v133[18] = v191;
  v56[19] = v55;

  v57 = v121;
  v58 = v133;
  v133[20] = v192;
  v58[21] = v57;

  v59 = v122;
  v60 = v133;
  v133[22] = v193;
  v60[23] = v59;

  v61 = v123;
  v62 = v133;
  v133[24] = v194;
  v62[25] = v61;

  v63 = v124;
  v64 = v133;
  v133[26] = v195;
  v64[27] = v63;

  v65 = v125;
  v66 = v133;
  v133[28] = v196;
  v66[29] = v65;

  v67 = v126;
  v68 = v133;
  v133[30] = v197;
  v68[31] = v67;

  v69 = v127;
  v70 = v133;
  v133[32] = v198;
  v70[33] = v69;

  v71 = v128;
  v72 = v133;
  v133[34] = v199;
  v72[35] = v71;

  v73 = v129;
  v74 = v133;
  v133[36] = v200;
  v74[37] = v73;

  v75 = v130;
  v76 = v133;
  v133[38] = v201;
  v76[39] = v75;

  v77 = v132;
  v78 = v133;
  v133[40] = v202;
  v78[41] = v77;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v135, v136))
  {
    v79 = v203;
    v83 = static UnsafeMutablePointer.allocate(capacity:)();
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v84 = createStorage<A>(capacity:type:)(0);
    v85 = createStorage<A>(capacity:type:)(7);
    v86 = &v227;
    v227 = v83;
    v87 = &v226;
    v226 = v84;
    v88 = &v225;
    v225 = v85;
    serialize(_:at:)(2, &v227);
    serialize(_:at:)(7, v86);
    v223 = v182;
    v224 = v111;
    closure #1 in osLogInternal(_:log:type:)(&v223, v86, v87, v88);
    v89 = v79;
    if (v79)
    {

      __break(1u);
    }

    else
    {
      v223 = v183;
      v224 = v112;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[19] = 0;
      v223 = v184;
      v224 = v113;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[18] = 0;
      v223 = v185;
      v224 = v114;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[17] = 0;
      v223 = v186;
      v224 = v115;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[16] = 0;
      v223 = v187;
      v224 = v116;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[15] = 0;
      v223 = v188;
      v224 = v117;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[14] = 0;
      v223 = v189;
      v224 = v118;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[13] = 0;
      v223 = v190;
      v224 = v119;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[12] = 0;
      v223 = v191;
      v224 = v120;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[11] = 0;
      v223 = v192;
      v224 = v121;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[10] = 0;
      v223 = v193;
      v224 = v122;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[9] = 0;
      v223 = v194;
      v224 = v123;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[8] = 0;
      v223 = v195;
      v224 = v124;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[7] = 0;
      v223 = v196;
      v224 = v125;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[6] = 0;
      v223 = v197;
      v224 = v126;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[5] = 0;
      v223 = v198;
      v224 = v127;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[4] = 0;
      v223 = v199;
      v224 = v128;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[3] = 0;
      v223 = v200;
      v224 = v129;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[2] = 0;
      v223 = v201;
      v224 = v130;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      v81[1] = 0;
      v223 = v202;
      v224 = v132;
      closure #1 in osLogInternal(_:log:type:)(&v223, &v227, &v226, &v225);
      _os_log_impl(&dword_1D93D0000, v135, v136, "FW Seeding: Should Show: %s -> Feature Flag: %s, Seed Build: %s, Seed Program: %s, Accessory: %s, W3 AirPods: %s, Force Show: %s", v83, 0x48u);
      destroyStorage<A>(_:count:)(v84, 0, v82);
      destroyStorage<A>(_:count:)(v85, 7, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v83, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v135);
  (*(v205 + 8))(v208, v204);
  MEMORY[0x1E69E5920](v163);

  return v90 & 1;
}

Swift::Void __swiftcall HeadphoneDevice.setFirmwareSeedingPlacardShowed()()
{
  v54 = 0;
  v41 = 0;
  v42 = type metadata accessor for Logger();
  v43 = *(v42 - 8);
  v44 = v43;
  v1 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v45 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v0;
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SeedingPlacardShowed", 0x14uLL, 1);
  object = v3._object;
  v47 = MEMORY[0x1DA730940](v3._countAndFlagsBits);
  v49 = *MEMORY[0x1E695E4D0];
  v48 = v49;
  v4 = v49;
  if (v49)
  {
    v40 = v48;
    v39 = v48;
  }

  else
  {
    v39 = 0;
  }

  v5 = v45;
  v28 = v39;
  v29 = "com.apple.HeadphoneSettings";
  v30 = 27;
  v31 = 1;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneSettings", 0x1BuLL, 1);
  v27 = v6._object;
  v26 = MEMORY[0x1DA730940](v6._countAndFlagsBits);
  CFPreferencesSetAppValue(v47, v28, v26);

  swift_unknownObjectRelease();

  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v29, v30, v31);
  v33 = v7._object;
  v32 = MEMORY[0x1DA730940](v7._countAndFlagsBits);
  CFPreferencesAppSynchronize(v32);

  v8 = Logger.fwSeeding.unsafeMutableAddressor();
  (*(v44 + 16))(v5, v8, v42);
  v37 = Logger.logObject.getter();
  v34 = v37;
  v36 = static os_log_type_t.default.getter();
  v35 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v38 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v37, v36))
  {
    v9 = v41;
    v17 = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = v17;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = 0;
    v18 = createStorage<A>(capacity:type:)(0);
    v16 = v18;
    v19 = createStorage<A>(capacity:type:)(v15);
    v53 = v17;
    v52 = v18;
    v51 = v19;
    v20 = 0;
    v21 = &v53;
    serialize(_:at:)(0, &v53);
    serialize(_:at:)(v20, v21);
    v50 = v38;
    v22 = &v11;
    MEMORY[0x1EEE9AC00](&v11);
    v23 = &v11 - 6;
    *(&v11 - 4) = v10;
    *(&v11 - 3) = &v52;
    *(&v11 - 2) = &v51;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v25 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v34, v35, "FW Seeding: setFirmwareSeedingPlacardShowed", v13, 2u);
      v11 = 0;
      destroyStorage<A>(_:count:)(v16, 0, v14);
      destroyStorage<A>(_:count:)(v19, v11, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v13, MEMORY[0x1E69E7508]);

      v12 = v25;
    }
  }

  else
  {

    v12 = v41;
  }

  (*(v44 + 8))(v45, v42);
}

id HeadphoneDevice.getUARPSettingsAccessory()()
{
  v244 = partial apply for implicit closure #2 in HeadphoneDevice.getUARPSettingsAccessory();
  v245 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v246 = closure #1 in OSLogArguments.append(_:)partial apply;
  v247 = closure #1 in OSLogArguments.append(_:)partial apply;
  v248 = closure #1 in OSLogArguments.append(_:)partial apply;
  v249 = partial apply for implicit closure #4 in HeadphoneDevice.getUARPSettingsAccessory();
  v250 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v251 = partial apply for implicit closure #6 in HeadphoneDevice.getUARPSettingsAccessory();
  v252 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v253 = partial apply for implicit closure #8 in HeadphoneDevice.getUARPSettingsAccessory();
  v254 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v255 = closure #1 in OSLogArguments.append(_:)partial apply;
  v256 = closure #1 in OSLogArguments.append(_:)partial apply;
  v257 = closure #1 in OSLogArguments.append(_:)partial apply;
  v258 = closure #1 in OSLogArguments.append(_:)partial apply;
  v259 = closure #1 in OSLogArguments.append(_:)partial apply;
  v260 = closure #1 in OSLogArguments.append(_:)partial apply;
  v261 = closure #1 in OSLogArguments.append(_:)partial apply;
  v262 = closure #1 in OSLogArguments.append(_:)partial apply;
  v263 = closure #1 in OSLogArguments.append(_:)partial apply;
  v264 = partial apply for implicit closure #10 in HeadphoneDevice.getUARPSettingsAccessory();
  v265 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v266 = closure #1 in OSLogArguments.append(_:)partial apply;
  v267 = closure #1 in OSLogArguments.append(_:)partial apply;
  v268 = closure #1 in OSLogArguments.append(_:)partial apply;
  v321 = 0;
  v320 = 0;
  v282 = v319;
  v319[0] = 0;
  v319[1] = 0;
  v316[0] = 0;
  v316[1] = 0;
  v313 = 0;
  v285 = 0;
  v302 = 0;
  v279 = 0;
  v269 = type metadata accessor for Logger();
  v270 = *(v269 - 8);
  v271 = v269 - 8;
  v272 = (*(v270 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v269);
  v273 = v78 - v272;
  v274 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v78 - v272);
  v275 = v78 - v274;
  v276 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v78 - v274);
  v277 = v78 - v276;
  v321 = v0;
  v278 = [objc_opt_self() sharedDatabase];
  v280 = [v278 accessoryList];
  MEMORY[0x1E69E5920](v278);
  type metadata accessor for UARPSettingsAccessory();
  v281 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v320 = v281;
  MEMORY[0x1E69E5920](v280);

  v318 = v281;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo21UARPSettingsAccessoryCGMd, &_sSaySo21UARPSettingsAccessoryCGMR);
  v284 = lazy protocol witness table accessor for type [UARPSettingsAccessory] and conformance [A]();
  Collection<>.makeIterator()();
  for (i = v285; ; i = v239)
  {
    v239 = i;
    v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo21UARPSettingsAccessoryCGGMd, &_ss16IndexingIteratorVySaySo21UARPSettingsAccessoryCGGMR);
    IndexingIterator.next()();
    v241 = v317;
    v242 = v240;
    if (!v317)
    {
      break;
    }

    v238 = v241;
    v235 = v241;
    v302 = v241;
    v236 = (*((*v243 & *MEMORY[0x1E69E7D40]) + 0x228))();
    v237 = [v236 serialNumberLeft];
    if (v237)
    {
      v234 = v237;
      v229 = v237;
      v230 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v231 = v3;
      MEMORY[0x1E69E5920](v229);
      v232 = v230;
      v233 = v231;
    }

    else
    {
      v232 = 0;
      v233 = 0;
    }

    v227 = v233;
    v226 = v232;
    MEMORY[0x1E69E5920](v236);

    v228 = [v235 serialNumber];
    if (v228)
    {
      v225 = v228;
      v222 = v228;
      *&v223 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v223 + 1) = v4;
      MEMORY[0x1E69E5920](v222);
      v224 = v223;
    }

    else
    {
      v224 = 0uLL;
    }

    v221 = v224;

    v300[0] = v226;
    v300[1] = v227;
    v301 = v221;
    if (v227)
    {
      outlined init with copy of String?(v300, &v289);
      if (*(&v301 + 1))
      {
        v218 = &v288;
        v288 = v289;
        v217 = &v287;
        v287 = v301;
        v219 = MEMORY[0x1DA7309E0](v289, *(&v289 + 1), v301, *(&v301 + 1));
        outlined destroy of String(v217);
        outlined destroy of String(v218);
        outlined destroy of String?(v300);
        v220 = v219;
        goto LABEL_15;
      }

      outlined destroy of String(&v289);
LABEL_17:
      outlined destroy of (String?, String?)(v300);
      v220 = 0;
      goto LABEL_15;
    }

    if (*(&v301 + 1))
    {
      goto LABEL_17;
    }

    outlined destroy of String?(v300);
    v220 = 1;
LABEL_15:
    v216 = v220;

    MEMORY[0x1E69E5928](v243);
    v5 = MEMORY[0x1E69E5928](v235);
    if (v216)
    {
      v215 = 1;
      goto LABEL_35;
    }

    v213 = (*((*v243 & *MEMORY[0x1E69E7D40]) + 0x228))(v5);
    v6 = [v213 serialNumberRight];
    v214 = v6;
    if (v6)
    {
      v212 = v214;
      v207 = v214;
      v208 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v209 = v7;
      MEMORY[0x1E69E5920](v207);
      v210 = v208;
      v211 = v209;
    }

    else
    {
      v210 = 0;
      v211 = 0;
    }

    v205 = v211;
    v204 = v210;
    MEMORY[0x1E69E5920](v213);

    v206 = [v235 serialNumber];
    if (v206)
    {
      v203 = v206;
      v200 = v206;
      *&v201 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v201 + 1) = v8;
      MEMORY[0x1E69E5920](v200);
      v202 = v201;
    }

    else
    {
      v202 = 0uLL;
    }

    v199 = v202;

    v298[0] = v204;
    v298[1] = v205;
    v299 = v199;
    if (!v205)
    {
      if (!*(&v299 + 1))
      {
        outlined destroy of String?(v298);
        v198 = 1;
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    outlined init with copy of String?(v298, &v292);
    if (!*(&v299 + 1))
    {
      outlined destroy of String(&v292);
LABEL_33:
      outlined destroy of (String?, String?)(v298);
      v198 = 0;
      goto LABEL_32;
    }

    v196 = &v291;
    v291 = v292;
    v195 = &v290;
    v290 = v299;
    v197 = MEMORY[0x1DA7309E0](v292, *(&v292 + 1), v299, *(&v299 + 1));
    outlined destroy of String(v195);
    outlined destroy of String(v196);
    outlined destroy of String?(v298);
    v198 = v197;
LABEL_32:
    v194 = v198;

    v215 = v194;
LABEL_35:
    v192 = v215;
    MEMORY[0x1E69E5920](v243);
    MEMORY[0x1E69E5920](v235);
    v193 = v235;
    if (v192)
    {
      v9 = v277;
      v178 = v193;
      v10 = Logger.fwSeeding.unsafeMutableAddressor();
      (*(v270 + 16))(v9, v10, v269);
      MEMORY[0x1E69E5928](v178);
      v181 = 7;
      v182 = swift_allocObject();
      *(v182 + 16) = v178;
      v190 = Logger.logObject.getter();
      v191 = static os_log_type_t.error.getter();
      v179 = 17;
      v184 = swift_allocObject();
      *(v184 + 16) = 32;
      v185 = swift_allocObject();
      *(v185 + 16) = 8;
      v180 = 32;
      v11 = swift_allocObject();
      v12 = v182;
      v183 = v11;
      *(v11 + 16) = v244;
      *(v11 + 24) = v12;
      v13 = swift_allocObject();
      v14 = v183;
      v187 = v13;
      *(v13 + 16) = v245;
      *(v13 + 24) = v14;
      v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v186 = _allocateUninitializedArray<A>(_:)();
      v188 = v15;

      v16 = v184;
      v17 = v188;
      *v188 = v246;
      v17[1] = v16;

      v18 = v185;
      v19 = v188;
      v188[2] = v247;
      v19[3] = v18;

      v20 = v187;
      v21 = v188;
      v188[4] = v248;
      v21[5] = v20;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v190, v191))
      {
        v22 = v239;
        v171 = static UnsafeMutablePointer.allocate(capacity:)();
        v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v172 = createStorage<A>(capacity:type:)(0);
        v173 = createStorage<A>(capacity:type:)(1);
        v174 = &v297;
        v297 = v171;
        v175 = &v296;
        v296 = v172;
        v176 = &v295;
        v295 = v173;
        serialize(_:at:)(2, &v297);
        serialize(_:at:)(1, v174);
        v293 = v246;
        v294 = v184;
        closure #1 in osLogInternal(_:log:type:)(&v293, v174, v175, v176);
        v177 = v22;
        if (v22)
        {

          __break(1u);
        }

        else
        {
          v293 = v247;
          v294 = v185;
          closure #1 in osLogInternal(_:log:type:)(&v293, &v297, &v296, &v295);
          v169 = 0;
          v293 = v248;
          v294 = v187;
          closure #1 in osLogInternal(_:log:type:)(&v293, &v297, &v296, &v295);
          _os_log_impl(&dword_1D93D0000, v190, v191, "FW Seeding: Get Accessory List: Accessory found for %s", v171, 0xCu);
          destroyStorage<A>(_:count:)(v172, 0, v170);
          destroyStorage<A>(_:count:)(v173, 1, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1DA730D30](v171, MEMORY[0x1E69E7508]);
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v190);
      (*(v270 + 8))(v277, v269);
      outlined destroy of IndexingIterator<[UARPSettingsAccessory]>(v319);

      return v178;
    }

    MEMORY[0x1E69E5920](v235);
  }

  v23 = v275;
  v139 = v242;
  outlined destroy of IndexingIterator<[UARPSettingsAccessory]>(v319);
  v24 = Logger.fwSeeding.unsafeMutableAddressor();
  v140 = *(v270 + 16);
  v141 = v270 + 16;
  v140(v23, v24, v269);
  MEMORY[0x1E69E5928](v243);
  v142 = 24;
  v151 = 7;
  v25 = swift_allocObject();
  v26 = v243;
  v143 = v25;
  *(v25 + 16) = v243;
  MEMORY[0x1E69E5928](v26);
  v27 = swift_allocObject();
  v28 = v243;
  v145 = v27;
  *(v27 + 16) = v243;
  MEMORY[0x1E69E5928](v28);
  v152 = swift_allocObject();
  *(v152 + 16) = v243;
  v166 = Logger.logObject.getter();
  v167 = static os_log_type_t.default.getter();
  v148 = 17;
  v154 = swift_allocObject();
  v147 = 32;
  *(v154 + 16) = 32;
  v155 = swift_allocObject();
  v149 = 8;
  *(v155 + 16) = 8;
  v150 = 32;
  v29 = swift_allocObject();
  v30 = v143;
  v144 = v29;
  *(v29 + 16) = v249;
  *(v29 + 24) = v30;
  v31 = swift_allocObject();
  v32 = v144;
  v156 = v31;
  *(v31 + 16) = v250;
  *(v31 + 24) = v32;
  v157 = swift_allocObject();
  *(v157 + 16) = v147;
  v158 = swift_allocObject();
  *(v158 + 16) = v149;
  v33 = swift_allocObject();
  v34 = v145;
  v146 = v33;
  *(v33 + 16) = v251;
  *(v33 + 24) = v34;
  v35 = swift_allocObject();
  v36 = v146;
  v159 = v35;
  *(v35 + 16) = v252;
  *(v35 + 24) = v36;
  v160 = swift_allocObject();
  *(v160 + 16) = v147;
  v161 = swift_allocObject();
  *(v161 + 16) = v149;
  v37 = swift_allocObject();
  v38 = v152;
  v153 = v37;
  *(v37 + 16) = v253;
  *(v37 + 24) = v38;
  v39 = swift_allocObject();
  v40 = v153;
  v163 = v39;
  *(v39 + 16) = v254;
  *(v39 + 24) = v40;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v162 = _allocateUninitializedArray<A>(_:)();
  v164 = v41;

  v42 = v154;
  v43 = v164;
  *v164 = v255;
  v43[1] = v42;

  v44 = v155;
  v45 = v164;
  v164[2] = v256;
  v45[3] = v44;

  v46 = v156;
  v47 = v164;
  v164[4] = v257;
  v47[5] = v46;

  v48 = v157;
  v49 = v164;
  v164[6] = v258;
  v49[7] = v48;

  v50 = v158;
  v51 = v164;
  v164[8] = v259;
  v51[9] = v50;

  v52 = v159;
  v53 = v164;
  v164[10] = v260;
  v53[11] = v52;

  v54 = v160;
  v55 = v164;
  v164[12] = v261;
  v55[13] = v54;

  v56 = v161;
  v57 = v164;
  v164[14] = v262;
  v57[15] = v56;

  v58 = v163;
  v59 = v164;
  v164[16] = v263;
  v59[17] = v58;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v166, v167))
  {
    v60 = v239;
    v132 = static UnsafeMutablePointer.allocate(capacity:)();
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v133 = createStorage<A>(capacity:type:)(0);
    v134 = createStorage<A>(capacity:type:)(3);
    v135 = &v307;
    v307 = v132;
    v136 = &v306;
    v306 = v133;
    v137 = &v305;
    v305 = v134;
    serialize(_:at:)(2, &v307);
    serialize(_:at:)(3, v135);
    v303 = v255;
    v304 = v154;
    closure #1 in osLogInternal(_:log:type:)(&v303, v135, v136, v137);
    v138 = v60;
    if (v60)
    {

      __break(1u);
    }

    else
    {
      v303 = v256;
      v304 = v155;
      closure #1 in osLogInternal(_:log:type:)(&v303, &v307, &v306, &v305);
      v129 = 0;
      v303 = v257;
      v304 = v156;
      closure #1 in osLogInternal(_:log:type:)(&v303, &v307, &v306, &v305);
      v128 = 0;
      v303 = v258;
      v304 = v157;
      closure #1 in osLogInternal(_:log:type:)(&v303, &v307, &v306, &v305);
      v127 = 0;
      v303 = v259;
      v304 = v158;
      closure #1 in osLogInternal(_:log:type:)(&v303, &v307, &v306, &v305);
      v126 = 0;
      v303 = v260;
      v304 = v159;
      closure #1 in osLogInternal(_:log:type:)(&v303, &v307, &v306, &v305);
      v125 = 0;
      v303 = v261;
      v304 = v160;
      closure #1 in osLogInternal(_:log:type:)(&v303, &v307, &v306, &v305);
      v124 = 0;
      v303 = v262;
      v304 = v161;
      closure #1 in osLogInternal(_:log:type:)(&v303, &v307, &v306, &v305);
      v123 = 0;
      v303 = v263;
      v304 = v163;
      closure #1 in osLogInternal(_:log:type:)(&v303, &v307, &v306, &v305);
      v122 = 0;
      _os_log_impl(&dword_1D93D0000, v166, v167, "FW Seeding: Get Accessory List: Serial: %s, Serial Left: %s, Serial Right: %s", v132, 0x20u);
      destroyStorage<A>(_:count:)(v133, 0, v131);
      destroyStorage<A>(_:count:)(v134, 3, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v132, MEMORY[0x1E69E7508]);

      v130 = v122;
    }
  }

  else
  {
    v61 = v239;

    v130 = v61;
  }

  v120 = v130;
  MEMORY[0x1E69E5920](v166);
  v118 = *(v270 + 8);
  v119 = v270 + 8;
  v118(v275, v269);

  v315 = v281;
  Collection<>.makeIterator()();
  for (j = v120; ; j = v78[0])
  {
    v116 = j;
    IndexingIterator.next()();
    v117 = v314;
    if (!v314)
    {
      break;
    }

    v115 = v117;
    v62 = v273;
    v102 = v117;
    v313 = v117;
    v63 = Logger.fwSeeding.unsafeMutableAddressor();
    v140(v62, v63, v269);
    MEMORY[0x1E69E5928](v102);
    v105 = 7;
    v106 = swift_allocObject();
    *(v106 + 16) = v102;
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.error.getter();
    v103 = 17;
    v108 = swift_allocObject();
    *(v108 + 16) = 32;
    v109 = swift_allocObject();
    *(v109 + 16) = 8;
    v104 = 32;
    v64 = swift_allocObject();
    v65 = v106;
    v107 = v64;
    *(v64 + 16) = v264;
    *(v64 + 24) = v65;
    v66 = swift_allocObject();
    v67 = v107;
    v111 = v66;
    *(v66 + 16) = v265;
    *(v66 + 24) = v67;
    v110 = _allocateUninitializedArray<A>(_:)();
    v112 = v68;

    v69 = v108;
    v70 = v112;
    *v112 = v266;
    v70[1] = v69;

    v71 = v109;
    v72 = v112;
    v112[2] = v267;
    v72[3] = v71;

    v73 = v111;
    v74 = v112;
    v112[4] = v268;
    v74[5] = v73;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v113, v114))
    {
      v75 = v116;
      v92 = static UnsafeMutablePointer.allocate(capacity:)();
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v93 = createStorage<A>(capacity:type:)(0);
      v94 = createStorage<A>(capacity:type:)(1);
      v95 = &v312;
      v312 = v92;
      v96 = &v311;
      v311 = v93;
      v97 = &v310;
      v310 = v94;
      serialize(_:at:)(2, &v312);
      serialize(_:at:)(1, v95);
      v308 = v266;
      v309 = v108;
      closure #1 in osLogInternal(_:log:type:)(&v308, v95, v96, v97);
      v98 = v75;
      v99 = v108;
      v100 = v109;
      v101 = v111;
      if (v75)
      {
        v87 = v99;
        v88 = v100;
        v89 = v101;
        v78[2] = v101;
        v78[1] = v100;

        __break(1u);
      }

      else
      {
        v308 = v267;
        v309 = v109;
        closure #1 in osLogInternal(_:log:type:)(&v308, &v312, &v311, &v310);
        v83 = 0;
        v84 = v108;
        v85 = v109;
        v86 = v111;
        v308 = v268;
        v309 = v111;
        closure #1 in osLogInternal(_:log:type:)(&v308, &v312, &v311, &v310);
        v79 = 0;
        v80 = v108;
        v81 = v109;
        v82 = v111;
        _os_log_impl(&dword_1D93D0000, v113, v114, "FW Seeding: Get Accessory List: Accessory: %s", v92, 0xCu);
        destroyStorage<A>(_:count:)(v93, 0, v91);
        destroyStorage<A>(_:count:)(v94, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v92, MEMORY[0x1E69E7508]);

        v90 = v79;
      }
    }

    else
    {
      v76 = v116;

      v90 = v76;
    }

    v78[0] = v90;
    MEMORY[0x1E69E5920](v113);
    v118(v273, v269);
    MEMORY[0x1E69E5920](v102);
  }

  outlined destroy of IndexingIterator<[UARPSettingsAccessory]>(v316);

  return 0;
}

uint64_t HeadphoneDevice.getSeedProgram()()
{
  v129 = partial apply for implicit closure #1 in HeadphoneDevice.getSeedProgram();
  v130 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  v131 = partial apply for implicit closure #2 in HeadphoneDevice.getSeedProgram();
  v132 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v133 = closure #1 in OSLogArguments.append(_:)partial apply;
  v134 = closure #1 in OSLogArguments.append(_:)partial apply;
  v135 = partial apply for closure #1 in OSLogArguments.append(_:);
  v136 = closure #1 in OSLogArguments.append(_:)partial apply;
  v137 = closure #1 in OSLogArguments.append(_:)partial apply;
  v138 = closure #1 in OSLogArguments.append(_:)partial apply;
  v139 = partial apply for specialized implicit closure #3 in HeadphoneDevice.getSeedProgram();
  v140 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v141 = closure #1 in OSLogArguments.append(_:)partial apply;
  v142 = closure #1 in OSLogArguments.append(_:)partial apply;
  v143 = closure #1 in OSLogArguments.append(_:)partial apply;
  v144 = "Fatal error";
  v145 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v146 = "HeadphoneManager/FirmwareUpdate.swift";
  v177 = *MEMORY[0x1E69E9840];
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v147 = 0;
  v160 = 0;
  v148 = type metadata accessor for Logger();
  v149 = *(v148 - 8);
  v150 = v148 - 8;
  v151 = (*(v149 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v148);
  v152 = v46 - v151;
  v153 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46 - v151);
  v154 = v46 - v153;
  v167 = v0;
  v155 = swift_allocObject();
  v166 = v155 + 16;
  *(v155 + 16) = 0;
  v156 = [objc_opt_self() sharedManager];
  if (v156)
  {
    v128 = v156;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v126 = v128;
  v127 = [v128 enrolledBetaProgramForCurrentDevice];
  MEMORY[0x1E69E5920](v126);
  if (v127)
  {
    v125 = v127;
    v2 = v154;
    v105 = v127;
    v160 = v127;
    v3 = [v127 program];
    *(v155 + 16) = v3;
    v4 = Logger.fwSeeding.unsafeMutableAddressor();
    (*(v149 + 16))(v2, v4, v148);
    MEMORY[0x1E69E5928](v105);
    v111 = 7;
    v106 = swift_allocObject();
    *(v106 + 16) = v105;

    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.default.getter();
    v108 = 17;
    v113 = swift_allocObject();
    *(v113 + 16) = 64;
    v114 = swift_allocObject();
    v109 = 8;
    *(v114 + 16) = 8;
    v110 = 32;
    v5 = swift_allocObject();
    v6 = v106;
    v107 = v5;
    *(v5 + 16) = v129;
    *(v5 + 24) = v6;
    v7 = swift_allocObject();
    v8 = v107;
    v115 = v7;
    *(v7 + 16) = v130;
    *(v7 + 24) = v8;
    v116 = swift_allocObject();
    *(v116 + 16) = 32;
    v117 = swift_allocObject();
    *(v117 + 16) = v109;
    v9 = swift_allocObject();
    v10 = v155;
    v112 = v9;
    *(v9 + 16) = v131;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v112;
    v119 = v11;
    *(v11 + 16) = v132;
    *(v11 + 24) = v12;
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v118 = _allocateUninitializedArray<A>(_:)();
    v120 = v13;

    v14 = v113;
    v15 = v120;
    *v120 = v133;
    v15[1] = v14;

    v16 = v114;
    v17 = v120;
    v120[2] = v134;
    v17[3] = v16;

    v18 = v115;
    v19 = v120;
    v120[4] = v135;
    v19[5] = v18;

    v20 = v116;
    v21 = v120;
    v120[6] = v136;
    v21[7] = v20;

    v22 = v117;
    v23 = v120;
    v120[8] = v137;
    v23[9] = v22;

    v24 = v119;
    v25 = v120;
    v120[10] = v138;
    v25[11] = v24;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v122, v123))
    {
      v26 = v147;
      v97 = static UnsafeMutablePointer.allocate(capacity:)();
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v96 = 1;
      v98 = createStorage<A>(capacity:type:)(1);
      v99 = createStorage<A>(capacity:type:)(v96);
      v101 = &v159;
      v159 = v97;
      v102 = &v169;
      v169 = v98;
      v103 = &v168;
      v168 = v99;
      v100 = 2;
      serialize(_:at:)(2, &v159);
      serialize(_:at:)(v100, v101);
      v157 = v133;
      v158 = v113;
      closure #1 in osLogInternal(_:log:type:)(&v157, v101, v102, v103);
      v104 = v26;
      if (v26)
      {

        __break(1u);
      }

      else
      {
        v157 = v134;
        v158 = v114;
        closure #1 in osLogInternal(_:log:type:)(&v157, &v159, &v169, &v168);
        v93 = 0;
        v157 = v135;
        v158 = v115;
        closure #1 in osLogInternal(_:log:type:)(&v157, &v159, &v169, &v168);
        v92 = 0;
        v157 = v136;
        v158 = v116;
        closure #1 in osLogInternal(_:log:type:)(&v157, &v159, &v169, &v168);
        v91 = 0;
        v157 = v137;
        v158 = v117;
        closure #1 in osLogInternal(_:log:type:)(&v157, &v159, &v169, &v168);
        v90 = 0;
        v157 = v138;
        v158 = v119;
        closure #1 in osLogInternal(_:log:type:)(&v157, &v159, &v169, &v168);
        v89 = 0;
        _os_log_impl(&dword_1D93D0000, v122, v123, "FW Seeding: Get: Beta Program: %@, Seed Program: %s", v97, 0x16u);
        v88 = 1;
        destroyStorage<A>(_:count:)(v98, 1, v95);
        destroyStorage<A>(_:count:)(v99, v88, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v97, MEMORY[0x1E69E7508]);

        v94 = v89;
      }
    }

    else
    {
      v27 = v147;

      v94 = v27;
    }

    v87 = v94;
    MEMORY[0x1E69E5920](v122);
    (*(v149 + 8))(v154, v148);
    MEMORY[0x1E69E5920](v105);
    v124 = v87;
  }

  else
  {
    v124 = v147;
  }

  v75 = v124;
  v80 = &v165;
  v165 = 0;
  v79 = "com.apple.HeadphoneSettings";
  v78 = 27;
  v86 = 1;
  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneSettings", 0x1BuLL, 1);
  object = v28._object;
  v76 = MEMORY[0x1DA730940](v28._countAndFlagsBits);
  CFPreferencesAppSynchronize(v76);
  MEMORY[0x1E69E5920](v76);

  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ImprovedSeedingUIForcedSeedProgram", 0x22uLL, v86 & 1);
  v84 = v29._object;
  v83 = MEMORY[0x1DA730940](v29._countAndFlagsBits);
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v79, v78, v86 & 1);
  v82 = v30._object;
  v81 = MEMORY[0x1DA730940](v30._countAndFlagsBits);
  AppIntegerValue = CFPreferencesGetAppIntegerValue(v83, v81, v80);
  MEMORY[0x1E69E5920](v81);

  MEMORY[0x1E69E5920](v83);

  v164 = AppIntegerValue;
  if ((v165 != 0) == (v86 & 1))
  {
    if (AppIntegerValue)
    {
      if (AppIntegerValue == 1)
      {
        v73 = &v171;
        swift_beginAccess();
        *(v155 + 16) = 2;
        swift_endAccess();
      }

      else
      {
        if (AppIntegerValue == 2)
        {
          v72 = &v172;
          swift_beginAccess();
          *(v155 + 16) = 3;
        }

        else
        {
          v71 = &v175;
          swift_beginAccess();
          *(v155 + 16) = 4;
        }

        swift_endAccess();
      }
    }

    else
    {
      v74 = &v170;
      swift_beginAccess();
      *(v155 + 16) = 0;
      swift_endAccess();
    }

    v31 = v152;
    v32 = Logger.fwSeeding.unsafeMutableAddressor();
    (*(v149 + 16))(v31, v32, v148);

    v57 = *(v155 + 16);

    v60 = 7;
    v61 = swift_allocObject();
    *(v61 + 16) = v57;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    v58 = 17;
    v63 = swift_allocObject();
    *(v63 + 16) = 32;
    v64 = swift_allocObject();
    *(v64 + 16) = 8;
    v59 = 32;
    v33 = swift_allocObject();
    v34 = v61;
    v62 = v33;
    *(v33 + 16) = v139;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v62;
    v66 = v35;
    *(v35 + 16) = v140;
    *(v35 + 24) = v36;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v65 = _allocateUninitializedArray<A>(_:)();
    v67 = v37;

    v38 = v63;
    v39 = v67;
    *v67 = v141;
    v39[1] = v38;

    v40 = v64;
    v41 = v67;
    v67[2] = v142;
    v41[3] = v40;

    v42 = v66;
    v43 = v67;
    v67[4] = v143;
    v43[5] = v42;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v69, v70))
    {
      v44 = v75;
      v50 = static UnsafeMutablePointer.allocate(capacity:)();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v51 = createStorage<A>(capacity:type:)(0);
      v52 = createStorage<A>(capacity:type:)(1);
      v53 = &v163;
      v163 = v50;
      v54 = &v174;
      v174 = v51;
      v55 = &v173;
      v173 = v52;
      serialize(_:at:)(2, &v163);
      serialize(_:at:)(1, v53);
      v161 = v141;
      v162 = v63;
      closure #1 in osLogInternal(_:log:type:)(&v161, v53, v54, v55);
      v56 = v44;
      if (v44)
      {

        __break(1u);
      }

      else
      {
        v161 = v142;
        v162 = v64;
        closure #1 in osLogInternal(_:log:type:)(&v161, &v163, &v174, &v173);
        v48 = 0;
        v161 = v143;
        v162 = v66;
        closure #1 in osLogInternal(_:log:type:)(&v161, &v163, &v174, &v173);
        _os_log_impl(&dword_1D93D0000, v69, v70, "FW Seeding: Get: Force Seed Program: %s", v50, 0xCu);
        destroyStorage<A>(_:count:)(v51, 0, v49);
        destroyStorage<A>(_:count:)(v52, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v50, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v69);
    (*(v149 + 8))(v152, v148);
  }

  v46[1] = &v176;
  swift_beginAccess();
  v47 = *(v155 + 16);
  swift_endAccess();

  *MEMORY[0x1E69E9840];
  return v47;
}

uint64_t implicit closure #9 in HeadphoneDevice.shouldShowFirmwareUpdate()(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("YES", 3uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO", 2uLL, 1)._countAndFlagsBits;
  }
}

uint64_t implicit closure #10 in HeadphoneDevice.shouldShowFirmwareUpdate()(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Enabled", 7uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Disabled", 8uLL, 1)._countAndFlagsBits;
  }
}

uint64_t implicit closure #11 in HeadphoneDevice.shouldShowFirmwareUpdate()(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_endAccess();
  if (v3)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("YES", 3uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO", 2uLL, 1)._countAndFlagsBits;
  }
}

uint64_t implicit closure #12 in HeadphoneDevice.shouldShowFirmwareUpdate()(uint64_t a1)
{
  v2 = [objc_opt_self() stringForSeedProgram_];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t implicit closure #13 in HeadphoneDevice.shouldShowFirmwareUpdate()(uint64_t a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Found", 5uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NOT Found", 9uLL, 1)._countAndFlagsBits;
  }
}

uint64_t implicit closure #14 in HeadphoneDevice.shouldShowFirmwareUpdate()(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("YES", 3uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO", 2uLL, 1)._countAndFlagsBits;
  }
}

uint64_t implicit closure #15 in HeadphoneDevice.shouldShowFirmwareUpdate()(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("YES", 3uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO", 2uLL, 1)._countAndFlagsBits;
  }
}

Swift::Bool __swiftcall HeadphoneDevice.getFirmwareUpgradeParticipation()()
{
  v252 = v274;
  v297 = 0;
  v253 = 0;
  v292 = 0;
  v291 = 0;
  v254 = type metadata accessor for Logger();
  v255 = *(v254 - 8);
  v256 = v255;
  v258 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v254 - 8);
  v260 = (v258 + 15) & 0xFFFFFFFFFFFFFFF0;
  v257 = &v60 - v260;
  MEMORY[0x1EEE9AC00](&v60 - v260);
  v259 = &v60 - v260;
  MEMORY[0x1EEE9AC00](&v60 - v260);
  v261 = &v60 - v260;
  v297 = v0;
  v262 = HeadphoneDevice.getUARPSettingsAccessory()();
  if (v262)
  {
    v251 = v262;
    v221 = v262;
    v292 = v262;
    v1 = HeadphoneDevice.getSeedProgram()();
    v2 = v261;
    v219 = v1;
    v216 = v1;
    v291 = v1;
    v3 = Logger.fwSeeding.unsafeMutableAddressor();
    v217 = *(v256 + 16);
    v218 = (v256 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v217(v2, v3, v254);
    v220 = 24;
    v235 = 7;
    v4 = swift_allocObject();
    v5 = v221;
    v226 = v4;
    *(v4 + 16) = v219;
    v6 = v5;
    v236 = swift_allocObject();
    *(v236 + 16) = v221;
    v250 = Logger.logObject.getter();
    v222 = v250;
    v249 = static os_log_type_t.default.getter();
    v223 = v249;
    v230 = 17;
    v240 = swift_allocObject();
    v224 = v240;
    v229 = 32;
    *(v240 + 16) = 32;
    v7 = swift_allocObject();
    v8 = v229;
    v241 = v7;
    v225 = v7;
    v232 = 8;
    *(v7 + 16) = 8;
    v234 = v8;
    v9 = swift_allocObject();
    v10 = v226;
    v227 = v9;
    *(v9 + 16) = partial apply for implicit closure #1 in HeadphoneDevice.getFirmwareUpgradeParticipation();
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v227;
    v242 = v11;
    v228 = v11;
    *(v11 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v11 + 24) = v12;
    v243 = swift_allocObject();
    v231 = v243;
    *(v243 + 16) = v229;
    v244 = swift_allocObject();
    v233 = v244;
    *(v244 + 16) = v232;
    v13 = swift_allocObject();
    v14 = v236;
    v237 = v13;
    *(v13 + 16) = partial apply for implicit closure #2 in HeadphoneDevice.getFirmwareUpgradeParticipation();
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v237;
    v247 = v15;
    v238 = v15;
    *(v15 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v15 + 24) = v16;
    v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v239 = v248;
    v245 = _allocateUninitializedArray<A>(_:)();
    v246 = v17;

    v18 = v240;
    v19 = v246;
    *v246 = closure #1 in OSLogArguments.append(_:)partial apply;
    v19[1] = v18;

    v20 = v241;
    v21 = v246;
    v246[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v21[3] = v20;

    v22 = v242;
    v23 = v246;
    v246[4] = closure #1 in OSLogArguments.append(_:)partial apply;
    v23[5] = v22;

    v24 = v243;
    v25 = v246;
    v246[6] = closure #1 in OSLogArguments.append(_:)partial apply;
    v25[7] = v24;

    v26 = v244;
    v27 = v246;
    v246[8] = closure #1 in OSLogArguments.append(_:)partial apply;
    v27[9] = v26;

    v28 = v246;
    v29 = v247;
    v246[10] = closure #1 in OSLogArguments.append(_:)partial apply;
    v28[11] = v29;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v250, v249))
    {
      v30 = v253;
      v209 = static UnsafeMutablePointer.allocate(capacity:)();
      v206 = v209;
      v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v210 = createStorage<A>(capacity:type:)(0);
      v208 = v210;
      v212 = 2;
      v211 = createStorage<A>(capacity:type:)(2);
      v267 = v209;
      v266 = v210;
      v265 = v211;
      v213 = &v267;
      serialize(_:at:)(v212, &v267);
      serialize(_:at:)(v212, v213);
      v263 = closure #1 in OSLogArguments.append(_:)partial apply;
      v264 = v224;
      closure #1 in osLogInternal(_:log:type:)(&v263, v213, &v266, &v265);
      v214 = v30;
      v215 = v30;
      if (v30)
      {
        v204 = 0;

        __break(1u);
      }

      else
      {
        v263 = closure #1 in OSLogArguments.append(_:)partial apply;
        v264 = v225;
        closure #1 in osLogInternal(_:log:type:)(&v263, &v267, &v266, &v265);
        v202 = 0;
        v203 = 0;
        v263 = closure #1 in OSLogArguments.append(_:)partial apply;
        v264 = v228;
        closure #1 in osLogInternal(_:log:type:)(&v263, &v267, &v266, &v265);
        v200 = 0;
        v201 = 0;
        v263 = closure #1 in OSLogArguments.append(_:)partial apply;
        v264 = v231;
        closure #1 in osLogInternal(_:log:type:)(&v263, &v267, &v266, &v265);
        v198 = 0;
        v199 = 0;
        v263 = closure #1 in OSLogArguments.append(_:)partial apply;
        v264 = v233;
        closure #1 in osLogInternal(_:log:type:)(&v263, &v267, &v266, &v265);
        v196 = 0;
        v197 = 0;
        v263 = closure #1 in OSLogArguments.append(_:)partial apply;
        v264 = v238;
        closure #1 in osLogInternal(_:log:type:)(&v263, &v267, &v266, &v265);
        v194 = 0;
        v195 = 0;
        _os_log_impl(&dword_1D93D0000, v222, v223, "FW Seeding: Get: Program: %s, Asset Location: %s", v206, 0x16u);
        destroyStorage<A>(_:count:)(v208, 0, v207);
        destroyStorage<A>(_:count:)(v211, 2, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v206, MEMORY[0x1E69E7508]);

        v205 = v194;
      }
    }

    else
    {
      v31 = v253;

      v205 = v31;
    }

    v187 = v205;

    v188 = *(v256 + 8);
    v189 = (v256 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v188(v261, v254);
    v290[8] = v216;
    v290[7] = 0;
    v191 = type metadata accessor for SDSeedProgram();
    v190 = v191;
    v192 = lazy protocol witness table accessor for type SDSeedProgram and conformance SDSeedProgram();
    v193 = == infix<A>(_:_:)();
    v32 = v221;
    if ((v193 & 1) == 0)
    {
      v170 = 0;
LABEL_21:
      v168 = v170;

      if (v168)
      {

        v166 = 0;
        v167 = v187;
        return v166;
      }

      v290[6] = v216;
      v290[5] = 3;
      v165 = == infix<A>(_:_:)();
      v35 = v221;
      if ((v165 & 1) == 0)
      {
        v148 = 0;
LABEL_37:
        v146 = v148;

        v39 = v221;
        if (v146)
        {
          v145 = 1;
          goto LABEL_71;
        }

        v290[4] = v216;
        v290[3] = 2;
        v144 = == infix<A>(_:_:)();
        v40 = v221;
        if ((v144 & 1) == 0)
        {
          v141 = 0;
          goto LABEL_51;
        }

        v143 = [v221 assetLocation];
        if (v143)
        {
          v142 = v143;
          v136 = v143;
          v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v138 = v41;

          v139 = v137;
          v140 = v138;
        }

        else
        {
          v139 = 0;
          v140 = 0;
        }

        v132 = v140;
        v131 = v139;

        AUDeveloperSettingsURLTypeToString();
        v130 = String.init(cString:)();
        v133 = v42;
        v129 = v42;

        v134 = v281;
        v135 = v282;
        v281[0] = v131;
        v281[1] = v132;
        v282[0] = v130;
        v282[1] = v133;
        if (v132)
        {
          outlined init with copy of String?(v134, v280);
          if (v135[1])
          {
            v43 = v252;
            v44 = v135;
            v252[5] = v252[6];
            v43[4] = *v44;
            v127 = MEMORY[0x1DA7309E0](v279[0], v279[1], v278[0], v278[1]);
            outlined destroy of String(v278);
            outlined destroy of String(v279);
            outlined destroy of String?(v134);
            v128 = v127;
LABEL_50:
            v126 = v128;

            v141 = v126;
LABEL_51:
            v125 = v141;

            v45 = v221;
            if (v125)
            {
              v124 = 1;
LABEL_55:
              v122 = v124;

              v145 = v122;
LABEL_71:
              v102 = v145;

              if (v102)
              {

                v166 = 1;
                v167 = v187;
              }

              else
              {
                v51 = v259;
                v52 = Logger.fwSeeding.unsafeMutableAddressor();
                v217(v51, v52, v254);
                v100 = Logger.logObject.getter();
                v97 = v100;
                v99 = static os_log_type_t.default.getter();
                v98 = v99;
                v101 = _allocateUninitializedArray<A>(_:)();
                if (os_log_type_enabled(v100, v99))
                {
                  v53 = v187;
                  v88 = static UnsafeMutablePointer.allocate(capacity:)();
                  v84 = v88;
                  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  v86 = 0;
                  v89 = createStorage<A>(capacity:type:)(0);
                  v87 = v89;
                  v90 = createStorage<A>(capacity:type:)(v86);
                  v290[0] = v88;
                  v289 = v89;
                  v288 = v90;
                  v91 = 0;
                  v92 = v290;
                  serialize(_:at:)(0, v290);
                  serialize(_:at:)(v91, v92);
                  v287[2] = v101;
                  v93 = &v60;
                  MEMORY[0x1EEE9AC00](&v60);
                  v94 = &v60 - 6;
                  *(&v60 - 4) = v54;
                  *(&v60 - 3) = &v289;
                  *(&v60 - 2) = &v288;
                  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
                  lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
                  Sequence.forEach(_:)();
                  v96 = v53;
                  if (v53)
                  {
                    __break(1u);
                  }

                  else
                  {
                    _os_log_impl(&dword_1D93D0000, v97, v98, "FW Seeding: Get: Mismatch between Program and Accessory, NO-OP here", v84, 2u);
                    v82 = 0;
                    destroyStorage<A>(_:count:)(v87, 0, v85);
                    destroyStorage<A>(_:count:)(v90, v82, MEMORY[0x1E69E7CA0] + 8);
                    MEMORY[0x1DA730D30](v84, MEMORY[0x1E69E7508]);

                    v83 = v96;
                  }
                }

                else
                {

                  v83 = v187;
                }

                v81 = v83;

                v188(v259, v254);
                v166 = 0;
                v167 = v81;
              }

              return v166;
            }

            v290[2] = v216;
            v290[1] = 1;
            v123 = == infix<A>(_:_:)();
            v46 = v221;
            if ((v123 & 1) == 0)
            {
              v119 = 0;
LABEL_66:
              v103 = v119;

              v124 = v103;
              goto LABEL_55;
            }

            v121 = [v221 assetLocation];
            if (v121)
            {
              v120 = v121;
              v114 = v121;
              v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v116 = v47;

              v117 = v115;
              v118 = v116;
            }

            else
            {
              v117 = 0;
              v118 = 0;
            }

            v110 = v118;
            v109 = v117;

            AUDeveloperSettingsURLTypeToString();
            v108 = String.init(cString:)();
            v111 = v48;
            v107 = v48;

            v112 = v286;
            v113 = v287;
            v286[0] = v109;
            v286[1] = v110;
            v287[0] = v108;
            v287[1] = v111;
            if (v110)
            {
              outlined init with copy of String?(v112, v285);
              if (v113[1])
              {
                v49 = v252;
                v50 = v113;
                v252[10] = v252[11];
                v49[9] = *v50;
                v105 = MEMORY[0x1DA7309E0](v284[0], v284[1], v283[0], v283[1]);
                outlined destroy of String(v283);
                outlined destroy of String(v284);
                outlined destroy of String?(v112);
                v106 = v105;
LABEL_65:
                v104 = v106;

                v119 = v104;
                goto LABEL_66;
              }

              outlined destroy of String(v285);
            }

            else if (!v113[1])
            {
              outlined destroy of String?(v112);
              v106 = 1;
              goto LABEL_65;
            }

            outlined destroy of (String?, String?)(v286);
            v106 = 0;
            goto LABEL_65;
          }

          outlined destroy of String(v280);
        }

        else if (!v135[1])
        {
          outlined destroy of String?(v134);
          v128 = 1;
          goto LABEL_50;
        }

        outlined destroy of (String?, String?)(v281);
        v128 = 0;
        goto LABEL_50;
      }

      v164 = [v221 assetLocation];
      if (v164)
      {
        v163 = v164;
        v158 = v164;
        v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v160 = v36;

        v161 = v159;
        v162 = v160;
      }

      else
      {
        v161 = 0;
        v162 = 0;
      }

      v154 = v162;
      v153 = v161;

      AUDeveloperSettingsURLTypeToString();
      v152 = String.init(cString:)();
      v155 = v37;
      v151 = v37;

      v156 = v276;
      v157 = v277;
      v276[0] = v153;
      v276[1] = v154;
      v277[0] = v152;
      v277[1] = v155;
      if (v154)
      {
        outlined init with copy of String?(v156, v275);
        if (*(v157 + 1))
        {
          v38 = v157;
          *v252 = v252[1];
          v273 = *v38;
          v149 = MEMORY[0x1DA7309E0](v274[0], v274[1], v273, *(&v273 + 1));
          outlined destroy of String(&v273);
          outlined destroy of String(v274);
          outlined destroy of String?(v156);
          v150 = v149;
LABEL_33:
          v147 = v150;

          v148 = v147;
          goto LABEL_37;
        }

        outlined destroy of String(v275);
      }

      else if (!*(v157 + 1))
      {
        outlined destroy of String?(v156);
        v150 = 1;
        goto LABEL_33;
      }

      outlined destroy of (String?, String?)(v276);
      v150 = 0;
      goto LABEL_33;
    }

    v186 = [v221 assetLocation];
    if (v186)
    {
      v185 = v186;
      v180 = v186;
      v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v182 = v33;

      v183 = v181;
      v184 = v182;
    }

    else
    {
      v183 = 0;
      v184 = 0;
    }

    v176 = v184;
    v175 = v183;

    AUDeveloperSettingsURLTypeToString();
    v174 = String.init(cString:)();
    v177 = v34;
    v173 = v34;

    v178 = v271;
    v179 = v272;
    v271[0] = v175;
    v271[1] = v176;
    v272[0] = v174;
    v272[1] = v177;
    if (v176)
    {
      outlined init with copy of String?(v178, &v270);
      if (v179[1])
      {
        v269 = v270;
        v268 = *v179;
        v171 = MEMORY[0x1DA7309E0](v270, *(&v270 + 1), v268, *(&v268 + 1));
        outlined destroy of String(&v268);
        outlined destroy of String(&v269);
        outlined destroy of String?(v178);
        v172 = v171;
LABEL_17:
        v169 = v172;

        v170 = v169;
        goto LABEL_21;
      }

      outlined destroy of String(&v270);
    }

    else if (!v179[1])
    {
      outlined destroy of String?(v178);
      v172 = 1;
      goto LABEL_17;
    }

    outlined destroy of (String?, String?)(v271);
    v172 = 0;
    goto LABEL_17;
  }

  v55 = v257;
  v56 = Logger.fwSeeding.unsafeMutableAddressor();
  (*(v256 + 16))(v55, v56, v254);
  v79 = Logger.logObject.getter();
  v76 = v79;
  v78 = static os_log_type_t.error.getter();
  v77 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v80 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v79, v78))
  {
    v57 = v253;
    v67 = static UnsafeMutablePointer.allocate(capacity:)();
    v63 = v67;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v65 = 0;
    v68 = createStorage<A>(capacity:type:)(0);
    v66 = v68;
    v69 = createStorage<A>(capacity:type:)(v65);
    v296 = v67;
    v295 = v68;
    v294 = v69;
    v70 = 0;
    v71 = &v296;
    serialize(_:at:)(0, &v296);
    serialize(_:at:)(v70, v71);
    v293 = v80;
    v72 = &v60;
    MEMORY[0x1EEE9AC00](&v60);
    v73 = &v60 - 6;
    *(&v60 - 4) = v58;
    *(&v60 - 3) = &v295;
    *(&v60 - 2) = &v294;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v75 = v57;
    if (v57)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v76, v77, "FW Seeding: Get: Invalid Accessory", v63, 2u);
      v61 = 0;
      destroyStorage<A>(_:count:)(v66, 0, v64);
      destroyStorage<A>(_:count:)(v69, v61, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v63, MEMORY[0x1E69E7508]);

      v62 = v75;
    }
  }

  else
  {

    v62 = v253;
  }

  v60 = v62;

  (*(v256 + 8))(v257, v254);
  v166 = 0;
  v167 = v60;
  return v166;
}

uint64_t implicit closure #1 in HeadphoneDevice.getFirmwareUpgradeParticipation()(uint64_t a1)
{
  v2 = [objc_opt_self() stringForSeedProgram_];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t implicit closure #2 in HeadphoneDevice.getFirmwareUpgradeParticipation()(void *a1)
{
  v5 = [a1 assetLocation];
  if (v5)
  {
    v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3._object = v1;
    MEMORY[0x1E69E5920](v5);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  if (v4._object)
  {
    v7 = v6;
  }

  else
  {
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("N/A", 3uLL, 1);
  }

  return v7._countAndFlagsBits;
}

Swift::Void __swiftcall HeadphoneDevice.setFirmwareUpgradeParticipation()()
{
  v222 = 0;
  v256 = 0;
  v223 = 0;
  v251 = 0;
  v250 = 0;
  v249 = 0;
  v248 = 0;
  v244 = 0;
  v224 = type metadata accessor for Logger();
  v225 = *(v224 - 8);
  v226 = v225;
  v227 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v224 - 8);
  v229 = (v227 + 15) & 0xFFFFFFFFFFFFFFF0;
  v228 = &v74 - v229;
  MEMORY[0x1EEE9AC00](&v74 - v229);
  v230 = &v74 - v229;
  v256 = v0;
  v231 = HeadphoneDevice.getUARPSettingsAccessory()();
  if (!v231)
  {
LABEL_31:
    v70 = v228;
    v71 = Logger.fwSeeding.unsafeMutableAddressor();
    (*(v226 + 16))(v70, v71, v224);
    v93 = Logger.logObject.getter();
    v90 = v93;
    v92 = static os_log_type_t.error.getter();
    v91 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v94 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v93, v92))
    {
      v72 = v223;
      v81 = static UnsafeMutablePointer.allocate(capacity:)();
      v77 = v81;
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v79 = 0;
      v82 = createStorage<A>(capacity:type:)(0);
      v80 = v82;
      v83 = createStorage<A>(capacity:type:)(v79);
      v255 = v81;
      v254 = v82;
      v253 = v83;
      v84 = 0;
      v85 = &v255;
      serialize(_:at:)(0, &v255);
      serialize(_:at:)(v84, v85);
      v252 = v94;
      v86 = &v74;
      MEMORY[0x1EEE9AC00](&v74);
      v87 = &v74 - 6;
      *(&v74 - 4) = v73;
      *(&v74 - 3) = &v254;
      *(&v74 - 2) = &v253;
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v89 = v72;
      if (v72)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1D93D0000, v90, v91, "FW Seeding: Update: Invalid Accessory or Serial Number", v77, 2u);
        v75 = 0;
        destroyStorage<A>(_:count:)(v80, 0, v78);
        destroyStorage<A>(_:count:)(v83, v75, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v77, MEMORY[0x1E69E7508]);

        v76 = v89;
      }
    }

    else
    {

      v76 = v223;
    }

    v74 = v76;

    (*(v226 + 8))(v228, v224);
    return;
  }

  v220 = v231;
  v218 = v231;
  v251 = v231;
  v1 = [v231 serialNumber];
  v219 = v1;
  if (v1)
  {
    v217 = v219;
    v212 = v219;
    v213 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v214 = v2;

    v215 = v213;
    v216 = v214;
  }

  else
  {
    v215 = 0;
    v216 = 0;
  }

  v210 = v216;
  v211 = v215;
  if (!v216)
  {

    goto LABEL_31;
  }

  v208 = v211;
  v209 = v210;
  v205 = v210;
  v206 = v211;
  v249 = v211;
  v250 = v210;
  v207 = HeadphoneDevice.getSeedProgram()();
  v248 = v207;
  v3 = (*((*v221 & *MEMORY[0x1E69E7D40]) + 0xAE0))();
  if (v3)
  {
    v235 = v207;
    v234 = 3;
    v203 = type metadata accessor for SDSeedProgram();
    v202 = v203;
    v204 = lazy protocol witness table accessor for type SDSeedProgram and conformance SDSeedProgram();
    if (== infix<A>(_:_:)())
    {
      v201 = 1;
    }

    else
    {
      v233 = v207;
      v232 = 2;
      v201 = == infix<A>(_:_:)();
    }

    v200 = v201;
  }

  else
  {
    v200 = 0;
  }

  if (v200)
  {
    v237 = v207;
    v236 = 3;
    v199 = type metadata accessor for SDSeedProgram();
    lazy protocol witness table accessor for type SDSeedProgram and conformance SDSeedProgram();
    if (== infix<A>(_:_:)())
    {
      v198 = 3;
    }

    else
    {
      v198 = 8;
    }

    v247 = v198;
    v197 = v198;
  }

  else
  {
    v247 = 2;
    v197 = 2;
  }

  v195 = v197;
  v246 = v197;
  v245 = 2;
  v196 = type metadata accessor for AUDeveloperSettingsURLType();
  lazy protocol witness table accessor for type AUDeveloperSettingsURLType and conformance AUDeveloperSettingsURLType();
  if (== infix<A>(_:_:)())
  {
    AAMultiState.rawValue.getter(2);
  }

  else
  {
    AAMultiState.rawValue.getter(1);
  }

  isa = Int8._bridgeToObjectiveC()().super.super.isa;
  v133 = isa;
  v244 = isa;
  v135 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneFeaturesChange", 0x21uLL, 1);
  object = v4._object;
  v148 = MEMORY[0x1DA730940](v4._countAndFlagsBits);

  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, _sSS_So8NSObjectCtMR);
  v134 = 3;
  v140 = _allocateUninitializedArray<A>(_:)();
  v138 = v5;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeatureName", 0xBuLL, v135);
  *v138 = v6;
  v141 = 0;
  type metadata accessor for NSString();
  v7 = NSString.init(stringLiteral:)();
  v8 = v221;
  v9 = v135;
  *(v138 + 16) = v7;
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeatureNewValue", 0xFuLL, v9);
  v11 = v133;
  *(v138 + 24) = v10;
  v12 = v11;
  v13 = v134;
  v14 = v135;
  *(v138 + 40) = v133;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PID", v13, v14);
  *(v138 + 48) = v15;
  v16 = (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x228))();
  v17 = v230;
  v136 = v16;
  v137 = [v16 productID];

  v18 = UInt32._bridgeToObjectiveC()().super.super.isa;
  v19 = v140;
  *(v138 + 64) = v18;
  _finalizeUninitializedArray<A>(_:)();
  v142 = v19;
  v144 = type metadata accessor for NSObject();
  v143 = MEMORY[0x1E69E6158];
  v145 = MEMORY[0x1E69E6168];
  v146 = Dictionary.init(dictionaryLiteral:)();
  v147 = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();

  v20 = Logger.fwSeeding.unsafeMutableAddressor();
  (*(v226 + 16))(v17, v20, v224);
  v21 = v221;
  v149 = 24;
  v173 = 7;
  v154 = swift_allocObject();
  *(v154 + 16) = v221;
  v22 = swift_allocObject();
  v23 = v218;
  v159 = v22;
  *(v22 + 16) = v207;
  v24 = v23;
  v164 = swift_allocObject();
  *(v164 + 16) = v218;
  v174 = swift_allocObject();
  *(v174 + 16) = v195;
  v193 = Logger.logObject.getter();
  v150 = v193;
  v192 = static os_log_type_t.default.getter();
  v151 = v192;
  v168 = 17;
  v177 = swift_allocObject();
  v152 = v177;
  v167 = 32;
  *(v177 + 16) = 32;
  v25 = swift_allocObject();
  v26 = v167;
  v178 = v25;
  v153 = v25;
  v170 = 8;
  *(v25 + 16) = 8;
  v172 = v26;
  v27 = swift_allocObject();
  v28 = v154;
  v155 = v27;
  *(v27 + 16) = partial apply for implicit closure #3 in HeadphoneDevice.setFirmwareUpgradeParticipation();
  *(v27 + 24) = v28;
  v29 = swift_allocObject();
  v30 = v155;
  v179 = v29;
  v156 = v29;
  *(v29 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v29 + 24) = v30;
  v180 = swift_allocObject();
  v157 = v180;
  *(v180 + 16) = v167;
  v181 = swift_allocObject();
  v158 = v181;
  *(v181 + 16) = v170;
  v31 = swift_allocObject();
  v32 = v159;
  v160 = v31;
  *(v31 + 16) = partial apply for implicit closure #4 in HeadphoneDevice.setFirmwareUpgradeParticipation();
  *(v31 + 24) = v32;
  v33 = swift_allocObject();
  v34 = v160;
  v182 = v33;
  v161 = v33;
  *(v33 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v33 + 24) = v34;
  v183 = swift_allocObject();
  v162 = v183;
  *(v183 + 16) = v167;
  v184 = swift_allocObject();
  v163 = v184;
  *(v184 + 16) = v170;
  v35 = swift_allocObject();
  v36 = v164;
  v165 = v35;
  *(v35 + 16) = partial apply for implicit closure #5 in HeadphoneDevice.setFirmwareUpgradeParticipation();
  *(v35 + 24) = v36;
  v37 = swift_allocObject();
  v38 = v165;
  v185 = v37;
  v166 = v37;
  *(v37 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v37 + 24) = v38;
  v186 = swift_allocObject();
  v169 = v186;
  *(v186 + 16) = v167;
  v187 = swift_allocObject();
  v171 = v187;
  *(v187 + 16) = v170;
  v39 = swift_allocObject();
  v40 = v174;
  v175 = v39;
  *(v39 + 16) = partial apply for specialized implicit closure #7 in HeadphoneDevice.setFirmwareUpgradeParticipation();
  *(v39 + 24) = v40;
  v41 = swift_allocObject();
  v42 = v175;
  v190 = v41;
  v176 = v41;
  *(v41 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v41 + 24) = v42;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v188 = _allocateUninitializedArray<A>(_:)();
  v189 = v43;

  v44 = v177;
  v45 = v189;
  *v189 = closure #1 in OSLogArguments.append(_:)partial apply;
  v45[1] = v44;

  v46 = v178;
  v47 = v189;
  v189[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v47[3] = v46;

  v48 = v179;
  v49 = v189;
  v189[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v49[5] = v48;

  v50 = v180;
  v51 = v189;
  v189[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v51[7] = v50;

  v52 = v181;
  v53 = v189;
  v189[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v53[9] = v52;

  v54 = v182;
  v55 = v189;
  v189[10] = closure #1 in OSLogArguments.append(_:)partial apply;
  v55[11] = v54;

  v56 = v183;
  v57 = v189;
  v189[12] = closure #1 in OSLogArguments.append(_:)partial apply;
  v57[13] = v56;

  v58 = v184;
  v59 = v189;
  v189[14] = closure #1 in OSLogArguments.append(_:)partial apply;
  v59[15] = v58;

  v60 = v185;
  v61 = v189;
  v189[16] = closure #1 in OSLogArguments.append(_:)partial apply;
  v61[17] = v60;

  v62 = v186;
  v63 = v189;
  v189[18] = closure #1 in OSLogArguments.append(_:)partial apply;
  v63[19] = v62;

  v64 = v187;
  v65 = v189;
  v189[20] = closure #1 in OSLogArguments.append(_:)partial apply;
  v65[21] = v64;

  v66 = v189;
  v67 = v190;
  v189[22] = closure #1 in OSLogArguments.append(_:)partial apply;
  v66[23] = v67;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v193, v192))
  {
    v68 = v223;
    v125 = static UnsafeMutablePointer.allocate(capacity:)();
    v122 = v125;
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v126 = createStorage<A>(capacity:type:)(0);
    v124 = v126;
    v128 = 4;
    v127 = createStorage<A>(capacity:type:)(4);
    v242 = v125;
    v241 = v126;
    v240 = v127;
    v129 = &v242;
    serialize(_:at:)(2, &v242);
    serialize(_:at:)(v128, v129);
    v238 = closure #1 in OSLogArguments.append(_:)partial apply;
    v239 = v152;
    closure #1 in osLogInternal(_:log:type:)(&v238, v129, &v241, &v240);
    v130 = v68;
    v131 = v68;
    if (v68)
    {
      v120 = 0;

      __break(1u);
    }

    else
    {
      v238 = closure #1 in OSLogArguments.append(_:)partial apply;
      v239 = v153;
      closure #1 in osLogInternal(_:log:type:)(&v238, &v242, &v241, &v240);
      v118 = 0;
      v119 = 0;
      v238 = closure #1 in OSLogArguments.append(_:)partial apply;
      v239 = v156;
      closure #1 in osLogInternal(_:log:type:)(&v238, &v242, &v241, &v240);
      v116 = 0;
      v117 = 0;
      v238 = closure #1 in OSLogArguments.append(_:)partial apply;
      v239 = v157;
      closure #1 in osLogInternal(_:log:type:)(&v238, &v242, &v241, &v240);
      v114 = 0;
      v115 = 0;
      v238 = closure #1 in OSLogArguments.append(_:)partial apply;
      v239 = v158;
      closure #1 in osLogInternal(_:log:type:)(&v238, &v242, &v241, &v240);
      v112 = 0;
      v113 = 0;
      v238 = closure #1 in OSLogArguments.append(_:)partial apply;
      v239 = v161;
      closure #1 in osLogInternal(_:log:type:)(&v238, &v242, &v241, &v240);
      v110 = 0;
      v111 = 0;
      v238 = closure #1 in OSLogArguments.append(_:)partial apply;
      v239 = v162;
      closure #1 in osLogInternal(_:log:type:)(&v238, &v242, &v241, &v240);
      v108 = 0;
      v109 = 0;
      v238 = closure #1 in OSLogArguments.append(_:)partial apply;
      v239 = v163;
      closure #1 in osLogInternal(_:log:type:)(&v238, &v242, &v241, &v240);
      v106 = 0;
      v107 = 0;
      v238 = closure #1 in OSLogArguments.append(_:)partial apply;
      v239 = v166;
      closure #1 in osLogInternal(_:log:type:)(&v238, &v242, &v241, &v240);
      v104 = 0;
      v105 = 0;
      v238 = closure #1 in OSLogArguments.append(_:)partial apply;
      v239 = v169;
      closure #1 in osLogInternal(_:log:type:)(&v238, &v242, &v241, &v240);
      v102 = 0;
      v103 = 0;
      v238 = closure #1 in OSLogArguments.append(_:)partial apply;
      v239 = v171;
      closure #1 in osLogInternal(_:log:type:)(&v238, &v242, &v241, &v240);
      v100 = 0;
      v101 = 0;
      v238 = closure #1 in OSLogArguments.append(_:)partial apply;
      v239 = v176;
      closure #1 in osLogInternal(_:log:type:)(&v238, &v242, &v241, &v240);
      v98 = 0;
      v99 = 0;
      _os_log_impl(&dword_1D93D0000, v150, v151, "FW Seeding: Update: Participation: %s, Program: %s, AssetLocation: %s -> %s", v122, 0x2Au);
      destroyStorage<A>(_:count:)(v124, 0, v123);
      destroyStorage<A>(_:count:)(v127, 4, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v122, MEMORY[0x1E69E7508]);

      v121 = v98;
    }
  }

  else
  {
    v69 = v223;

    v121 = v69;
  }

  v96 = v121;

  (*(v226 + 8))(v230, v224);
  v95 = &v243;
  swift_beginAccess();
  swift_endAccess();
  HeadphoneDevice.setFirmwareAssetLocation(serialNumber:assetLocationType:)(v206, v205, v195);

  v97 = v96;
}

uint64_t implicit closure #3 in HeadphoneDevice.setFirmwareUpgradeParticipation()(void *a1)
{
  if ((*((*a1 & *MEMORY[0x1E69E7D40]) + 0xAE0))())
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Turn On", 7uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Turn Off", 8uLL, 1)._countAndFlagsBits;
  }
}

uint64_t implicit closure #4 in HeadphoneDevice.setFirmwareUpgradeParticipation()(uint64_t a1)
{
  v2 = [objc_opt_self() stringForSeedProgram_];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t implicit closure #5 in HeadphoneDevice.setFirmwareUpgradeParticipation()(void *a1)
{
  v5 = [a1 assetLocation];
  if (v5)
  {
    v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3._object = v1;
    MEMORY[0x1E69E5920](v5);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  if (v4._object)
  {
    v7 = v6;
  }

  else
  {
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Invalid", 7uLL, 1);
  }

  return v7._countAndFlagsBits;
}

uint64_t HeadphoneDevice.setFirmwareAssetLocation(serialNumber:assetLocationType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a1;
  v69 = a2;
  v71 = a3;
  v72 = partial apply for implicit closure #1 in HeadphoneDevice.setFirmwareAssetLocation(serialNumber:assetLocationType:);
  v74 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v77 = partial apply for implicit closure #2 in HeadphoneDevice.setFirmwareAssetLocation(serialNumber:assetLocationType:);
  v79 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v83 = partial apply for implicit closure #3 in HeadphoneDevice.setFirmwareAssetLocation(serialNumber:assetLocationType:);
  v87 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned UInt);
  v89 = closure #1 in OSLogArguments.append(_:)partial apply;
  v91 = closure #1 in OSLogArguments.append(_:)partial apply;
  v93 = closure #1 in OSLogArguments.append(_:)partial apply;
  v95 = closure #1 in OSLogArguments.append(_:)partial apply;
  v97 = closure #1 in OSLogArguments.append(_:)partial apply;
  v99 = closure #1 in OSLogArguments.append(_:)partial apply;
  v101 = closure #1 in OSLogArguments.append(_:)partial apply;
  v103 = closure #1 in OSLogArguments.append(_:)partial apply;
  v106 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v119 = 0;
  v120 = 0;
  v118 = 0;
  v117 = 0;
  v62 = 0;
  v67 = type metadata accessor for Logger();
  v65 = *(v67 - 8);
  v66 = v67 - 8;
  v63 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = &v43 - v63;
  v64 = &v43 - v63;
  v119 = MEMORY[0x1EEE9AC00](v68);
  v120 = v4;
  v118 = v5;
  v117 = v6;
  v7 = Logger.fwSeeding.unsafeMutableAddressor();
  (*(v65 + 16))(v3, v7, v67);

  v84 = 32;
  v85 = 7;
  v8 = swift_allocObject();
  v9 = v69;
  v73 = v8;
  *(v8 + 16) = v68;
  *(v8 + 24) = v9;
  v70 = 24;
  v78 = swift_allocObject();
  *(v78 + 16) = v71;
  v86 = swift_allocObject();
  *(v86 + 16) = v71;
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.default.getter();
  v81 = 17;
  v90 = swift_allocObject();
  v76 = 32;
  *(v90 + 16) = 32;
  v92 = swift_allocObject();
  v82 = 8;
  *(v92 + 16) = 8;
  v10 = swift_allocObject();
  v11 = v73;
  v75 = v10;
  *(v10 + 16) = v72;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v75;
  v94 = v12;
  *(v12 + 16) = v74;
  *(v12 + 24) = v13;
  v96 = swift_allocObject();
  *(v96 + 16) = v76;
  v98 = swift_allocObject();
  *(v98 + 16) = v82;
  v14 = swift_allocObject();
  v15 = v78;
  v80 = v14;
  *(v14 + 16) = v77;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v80;
  v100 = v16;
  *(v16 + 16) = v79;
  *(v16 + 24) = v17;
  v102 = swift_allocObject();
  *(v102 + 16) = 0;
  v104 = swift_allocObject();
  *(v104 + 16) = v82;
  v18 = swift_allocObject();
  v19 = v86;
  v88 = v18;
  *(v18 + 16) = v83;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v88;
  v107 = v20;
  *(v20 + 16) = v87;
  *(v20 + 24) = v21;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v105 = _allocateUninitializedArray<A>(_:)();
  v108 = v22;

  v23 = v90;
  v24 = v108;
  *v108 = v89;
  v24[1] = v23;

  v25 = v92;
  v26 = v108;
  v108[2] = v91;
  v26[3] = v25;

  v27 = v94;
  v28 = v108;
  v108[4] = v93;
  v28[5] = v27;

  v29 = v96;
  v30 = v108;
  v108[6] = v95;
  v30[7] = v29;

  v31 = v98;
  v32 = v108;
  v108[8] = v97;
  v32[9] = v31;

  v33 = v100;
  v34 = v108;
  v108[10] = v99;
  v34[11] = v33;

  v35 = v102;
  v36 = v108;
  v108[12] = v101;
  v36[13] = v35;

  v37 = v104;
  v38 = v108;
  v108[14] = v103;
  v38[15] = v37;

  v39 = v107;
  v40 = v108;
  v108[16] = v106;
  v40[17] = v39;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v110, v111))
  {
    v41 = v62;
    v55 = static UnsafeMutablePointer.allocate(capacity:)();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v56 = createStorage<A>(capacity:type:)(0);
    v57 = createStorage<A>(capacity:type:)(2);
    v58 = &v116;
    v116 = v55;
    v59 = &v115;
    v115 = v56;
    v60 = &v114;
    v114 = v57;
    serialize(_:at:)(2, &v116);
    serialize(_:at:)(3, v58);
    v112 = v89;
    v113 = v90;
    closure #1 in osLogInternal(_:log:type:)(&v112, v58, v59, v60);
    v61 = v41;
    if (v41)
    {

      __break(1u);
    }

    else
    {
      v112 = v91;
      v113 = v92;
      closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
      v53 = 0;
      v112 = v93;
      v113 = v94;
      closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
      v52 = 0;
      v112 = v95;
      v113 = v96;
      closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
      v51 = 0;
      v112 = v97;
      v113 = v98;
      closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
      v50 = 0;
      v112 = v99;
      v113 = v100;
      closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
      v49 = 0;
      v112 = v101;
      v113 = v102;
      closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
      v48 = 0;
      v112 = v103;
      v113 = v104;
      closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
      v47 = 0;
      v112 = v106;
      v113 = v107;
      closure #1 in osLogInternal(_:log:type:)(&v112, &v116, &v115, &v114);
      _os_log_impl(&dword_1D93D0000, v110, v111, "FW Seeding: Set Asset Location of %s to: %s (%lu)", v55, 0x20u);
      destroyStorage<A>(_:count:)(v56, 0, v54);
      destroyStorage<A>(_:count:)(v57, 2, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v55, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v110);
  (*(v65 + 8))(v64, v67);
  v44 = [objc_opt_self() sharedDatabase];

  v43 = MEMORY[0x1DA730940](v68, v69);

  [v44 updateAccessory:v43 locationType:v71];
  MEMORY[0x1E69E5920](v43);
  MEMORY[0x1E69E5920](v44);
  type metadata accessor for AUObserverXPC();
  v46 = AUObserverXPC.__allocating_init()();

  v45 = MEMORY[0x1DA730940](v68, v69);

  [v46 settingsChangedForSerialNumber_];
  MEMORY[0x1E69E5920](v45);
  return MEMORY[0x1E69E5920](v46);
}

uint64_t implicit closure #2 in HeadphoneDevice.getSeedProgram()(uint64_t a1)
{
  v3 = objc_opt_self();
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_endAccess();
  v5 = [v3 stringForSeedProgram_];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](v5);
  return v6;
}

uint64_t specialized implicit closure #3 in HeadphoneDevice.getSeedProgram()(uint64_t a1)
{
  v2 = [objc_opt_self() stringForSeedProgram_];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t implicit closure #2 in HeadphoneDevice.getUARPSettingsAccessory()(void *a1)
{
  v5 = [a1 serialNumber];
  if (v5)
  {
    v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3._object = v1;
    MEMORY[0x1E69E5920](v5);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  if (v4._object)
  {
    v7 = v6;
  }

  else
  {
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("N/A", 3uLL, 1);
  }

  return v7._countAndFlagsBits;
}

uint64_t implicit closure #4 in HeadphoneDevice.getUARPSettingsAccessory()(void *a1)
{
  v5 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x228))();
  v6 = [v5 serialNumber];
  if (v6)
  {
    v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3._object = v1;
    MEMORY[0x1E69E5920](v6);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1E69E5920](v5);
  v7 = v4;
  if (v4._object)
  {
    v8 = v7;
  }

  else
  {
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("N/A", 3uLL, 1);
  }

  return v8._countAndFlagsBits;
}

uint64_t implicit closure #6 in HeadphoneDevice.getUARPSettingsAccessory()(void *a1)
{
  v5 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x228))();
  v6 = [v5 serialNumberLeft];
  if (v6)
  {
    v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3._object = v1;
    MEMORY[0x1E69E5920](v6);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1E69E5920](v5);
  v7 = v4;
  if (v4._object)
  {
    v8 = v7;
  }

  else
  {
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("N/A", 3uLL, 1);
  }

  return v8._countAndFlagsBits;
}

uint64_t implicit closure #8 in HeadphoneDevice.getUARPSettingsAccessory()(void *a1)
{
  v5 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x228))();
  v6 = [v5 serialNumberRight];
  if (v6)
  {
    v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3._object = v1;
    MEMORY[0x1E69E5920](v6);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1E69E5920](v5);
  v7 = v4;
  if (v4._object)
  {
    v8 = v7;
  }

  else
  {
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("N/A", 3uLL, 1);
  }

  return v8._countAndFlagsBits;
}

uint64_t implicit closure #10 in HeadphoneDevice.getUARPSettingsAccessory()(void *a1)
{
  v5 = [a1 serialNumber];
  if (v5)
  {
    v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3._object = v1;
    MEMORY[0x1E69E5920](v5);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  if (v4._object)
  {
    v7 = v6;
  }

  else
  {
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("N/A", 3uLL, 1);
  }

  return v7._countAndFlagsBits;
}

Swift::Void __swiftcall HeadphoneDevice.getFirmwareLoggingEnabled()()
{
  v14 = 0;
  v0 = Headphone_Manager.shared.unsafeMutableAddressor();
  v1 = *v0;
  v3 = *v0;
  v2 = MEMORY[0x1E69E5928](*v0);
  v6 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x180))(v2);
  MEMORY[0x1E69E5920](v3);
  v4 = swift_allocObject();
  (MEMORY[0x1E69E5928])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  v12 = partial apply for closure #1 in HeadphoneDevice.getFirmwareLoggingEnabled();
  v13 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = 0;
  v10 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v11 = &block_descriptor;
  v5 = _Block_copy(&aBlock);

  [v6 appleAudioAccessoryLimitedLoggingWithCompletion_];
  _Block_release(v5);
  MEMORY[0x1E69E5920](v6);
}

uint64_t closure #1 in HeadphoneDevice.getFirmwareLoggingEnabled()(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v98 = a3;
  v100 = a2;
  v99 = a1;
  v96 = a1;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v97 = 0;
  v101 = type metadata accessor for Logger();
  v102 = *(v101 - 8);
  v103 = v102;
  v104 = *(v102 + 64);
  v3 = MEMORY[0x1EEE9AC00](v99);
  v106 = (v104 + 15) & 0xFFFFFFFFFFFFFFF0;
  v105 = &v33 - v106;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v107 = &v33 - v106;
  v120 = v4;
  v119 = v5;
  v108 = v6 + 16;
  v118 = v6 + 16;
  v117[1] = v5;
  v95 = v5 == 0;
  if (v5)
  {
    v28 = v105;
    v29 = Logger.fwSeeding.unsafeMutableAddressor();
    (*(v103 + 16))(v28, v29, v101);
    v53 = Logger.logObject.getter();
    v50 = v53;
    v52 = static os_log_type_t.default.getter();
    v51 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v54 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v53, v52))
    {
      v30 = v97;
      v41 = static UnsafeMutablePointer.allocate(capacity:)();
      v37 = v41;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v39 = 0;
      v42 = createStorage<A>(capacity:type:)(0);
      v40 = v42;
      v43 = createStorage<A>(capacity:type:)(v39);
      v117[0] = v41;
      v116 = v42;
      v115 = v43;
      v44 = 0;
      v45 = v117;
      serialize(_:at:)(0, v117);
      serialize(_:at:)(v44, v45);
      v114[5] = v54;
      v46 = &v33;
      MEMORY[0x1EEE9AC00](&v33);
      v47 = &v33 - 6;
      *(&v33 - 4) = v31;
      *(&v33 - 3) = &v116;
      *(&v33 - 2) = &v115;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v49 = v30;
      if (v30)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1D93D0000, v50, v51, "FW Seeding: Get Logging: Failed", v37, 2u);
        v35 = 0;
        destroyStorage<A>(_:count:)(v40, 0, v38);
        destroyStorage<A>(_:count:)(v43, v35, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v37, MEMORY[0x1E69E7508]);

        v36 = v49;
      }
    }

    else
    {

      v36 = v97;
    }

    v34 = v36;

    (*(v103 + 8))(v105, v101);
    return v34;
  }

  else
  {
    v7 = v107;
    v8 = Logger.fwSeeding.unsafeMutableAddressor();
    (*(v103 + 16))(v7, v8, v101);
    v77 = 17;
    v83 = 7;
    v80 = swift_allocObject();
    *(v80 + 16) = v96 & 1;
    v94 = Logger.logObject.getter();
    v75 = v94;
    v93 = static os_log_type_t.default.getter();
    v76 = v93;
    v87 = swift_allocObject();
    v78 = v87;
    *(v87 + 16) = 0;
    v88 = swift_allocObject();
    v79 = v88;
    *(v88 + 16) = 4;
    v82 = 32;
    v9 = swift_allocObject();
    v10 = v80;
    v81 = v9;
    *(v9 + 16) = partial apply for implicit closure #1 in closure #1 in HeadphoneDevice.getFirmwareLoggingEnabled();
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v81;
    v84 = v11;
    *(v11 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)partial apply;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v84;
    v85 = v13;
    *(v13 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)partial apply;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v85;
    v91 = v15;
    v86 = v15;
    *(v15 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int32)partial apply;
    *(v15 + 24) = v16;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v89 = _allocateUninitializedArray<A>(_:)();
    v90 = v17;

    v18 = v87;
    v19 = v90;
    *v90 = closure #1 in OSLogArguments.append(_:)partial apply;
    v19[1] = v18;

    v20 = v88;
    v21 = v90;
    v90[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v21[3] = v20;

    v22 = v90;
    v23 = v91;
    v90[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v22[5] = v23;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v94, v93))
    {
      v24 = v97;
      v69 = static UnsafeMutablePointer.allocate(capacity:)();
      v65 = v69;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v67 = 0;
      v70 = createStorage<A>(capacity:type:)(0);
      v68 = v70;
      v71 = createStorage<A>(capacity:type:)(v67);
      v113 = v69;
      v112 = v70;
      v111 = v71;
      v72 = &v113;
      serialize(_:at:)(0, &v113);
      serialize(_:at:)(1, v72);
      v109 = closure #1 in OSLogArguments.append(_:)partial apply;
      v110 = v78;
      closure #1 in osLogInternal(_:log:type:)(&v109, v72, &v112, &v111);
      v73 = v24;
      v74 = v24;
      if (v24)
      {
        v63 = 0;

        __break(1u);
      }

      else
      {
        v109 = closure #1 in OSLogArguments.append(_:)partial apply;
        v110 = v79;
        closure #1 in osLogInternal(_:log:type:)(&v109, &v113, &v112, &v111);
        v61 = 0;
        v62 = 0;
        v109 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        v110 = v86;
        closure #1 in osLogInternal(_:log:type:)(&v109, &v113, &v112, &v111);
        v59 = 0;
        v60 = 0;
        _os_log_impl(&dword_1D93D0000, v75, v76, "FW Seeding: Get Logging: Succeeded -> Value: %{BOOL}d", v65, 8u);
        v58 = 0;
        destroyStorage<A>(_:count:)(v68, 0, v66);
        destroyStorage<A>(_:count:)(v71, v58, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v65, MEMORY[0x1E69E7508]);

        v64 = v59;
      }
    }

    else
    {
      v25 = v97;

      v64 = v25;
    }

    v57 = v64;

    (*(v103 + 8))(v107, v101);
    swift_beginAccess();
    v114[0] = swift_unknownObjectWeakLoadStrong();
    if (v114[0])
    {
      v26 = v114[0];
      v56 = v114[0];
      v27 = v114[0];
      outlined destroy of HeadphoneDevice?(v114);
      swift_endAccess();
      (*((*v26 & *MEMORY[0x1E69E7D40]) + 0xB18))(v96 & 1);
    }

    else
    {
      outlined destroy of HeadphoneDevice?(v114);
      swift_endAccess();
    }

    return v57;
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, unsigned int a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  MEMORY[0x1E69E5928](a3);
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  v6(a2);
}

Swift::Void __swiftcall HeadphoneDevice.setFirmwareLoggingEnabled()()
{
  v85 = partial apply for implicit closure #1 in HeadphoneDevice.setFirmwareLoggingEnabled();
  v87 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)partial apply;
  v89 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)partial apply;
  v93 = thunk for @escaping @callee_guaranteed () -> (@unowned Int32)partial apply;
  v95 = closure #1 in OSLogArguments.append(_:)partial apply;
  v97 = closure #1 in OSLogArguments.append(_:)partial apply;
  v100 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v75 = closure #1 in HeadphoneDevice.setFirmwareLoggingEnabled();
  v76 = "FWSeedingAnalyticsData";
  v119 = 0;
  v111 = 0;
  v77 = 0;
  v82 = type metadata accessor for Logger();
  v80 = *(v82 - 8);
  v81 = v82 - 8;
  v78 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v82);
  v0 = v41 - v78;
  v79 = v41 - v78;
  v119 = v1;
  v2 = Logger.fwSeeding.unsafeMutableAddressor();
  (*(v80 + 16))(v0, v2, v82);
  MEMORY[0x1E69E5928](v83);
  v91 = 7;
  v86 = swift_allocObject();
  *(v86 + 16) = v83;
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.default.getter();
  v84 = 17;
  v96 = swift_allocObject();
  *(v96 + 16) = 0;
  v98 = swift_allocObject();
  *(v98 + 16) = 4;
  v90 = 32;
  v3 = swift_allocObject();
  v4 = v86;
  v88 = v3;
  *(v3 + 16) = v85;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v88;
  v92 = v5;
  *(v5 + 16) = v87;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v92;
  v94 = v7;
  *(v7 + 16) = v89;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v94;
  v101 = v9;
  *(v9 + 16) = v93;
  *(v9 + 24) = v10;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v99 = _allocateUninitializedArray<A>(_:)();
  v102 = v11;

  v12 = v96;
  v13 = v102;
  *v102 = v95;
  v13[1] = v12;

  v14 = v98;
  v15 = v102;
  v102[2] = v97;
  v15[3] = v14;

  v16 = v101;
  v17 = v102;
  v102[4] = v100;
  v17[5] = v16;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v104, v105))
  {
    v18 = v77;
    v68 = static UnsafeMutablePointer.allocate(capacity:)();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v67 = 0;
    v69 = createStorage<A>(capacity:type:)(0);
    v70 = createStorage<A>(capacity:type:)(v67);
    v71 = &v110;
    v110 = v68;
    v72 = &v109;
    v109 = v69;
    v73 = &v108;
    v108 = v70;
    serialize(_:at:)(0, &v110);
    serialize(_:at:)(1, v71);
    v106 = v95;
    v107 = v96;
    closure #1 in osLogInternal(_:log:type:)(&v106, v71, v72, v73);
    v74 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v106 = v97;
      v107 = v98;
      closure #1 in osLogInternal(_:log:type:)(&v106, &v110, &v109, &v108);
      v65 = 0;
      v106 = v100;
      v107 = v101;
      closure #1 in osLogInternal(_:log:type:)(&v106, &v110, &v109, &v108);
      _os_log_impl(&dword_1D93D0000, v104, v105, "FW Seeding: Set Logging: New Value: %{BOOL}d", v68, 8u);
      v64 = 0;
      destroyStorage<A>(_:count:)(v69, 0, v66);
      destroyStorage<A>(_:count:)(v70, v64, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v68, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v104);
  (*(v80 + 8))(v79, v82);
  v59 = *Headphone_Manager.shared.unsafeMutableAddressor();
  v19 = v59;
  v20 = MEMORY[0x1E69E5928](v59);
  v21 = *v19;
  v63 = MEMORY[0x1E69E7D40];
  v22 = (*((v21 & *MEMORY[0x1E69E7D40]) + 0x180))(v20);
  v23 = v83;
  v62 = v22;
  v24 = MEMORY[0x1E69E5920](v59);
  v25 = (*((*v23 & *v63) + 0xB10))(v24);
  v26 = v83;
  v60 = v25;
  v117 = v75;
  v118 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v113 = 1107296256;
  v114 = 0;
  v115 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v116 = &block_descriptor_506;
  v61 = _Block_copy(&aBlock);
  [v62 setAppleAudioAccessoryLimitedLogging:v60 & 1 completion:?];
  _Block_release(v61);
  v27 = MEMORY[0x1E69E5920](v62);
  if ((*((*v26 & *v63) + 0xB10))(v27))
  {
    AAMultiState.rawValue.getter(1);
  }

  else
  {
    AAMultiState.rawValue.getter(2);
  }

  isa = Int8._bridgeToObjectiveC()().super.super.isa;
  v57 = isa;
  v111 = isa;
  v43 = 1;
  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneFeaturesChange", 0x21uLL, 1);
  v41[1] = v28._object;
  v56 = MEMORY[0x1DA730940](v28._countAndFlagsBits);

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, _sSS_So8NSObjectCtMR);
  v42 = 3;
  v48 = _allocateUninitializedArray<A>(_:)();
  v46 = v29;
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeatureName", 0xBuLL, v43 & 1);
  *v46 = v30;
  v49 = 0;
  type metadata accessor for NSString();
  v31 = NSString.init(stringLiteral:)();
  v32 = v83;
  v33 = v43;
  *(v46 + 16) = v31;
  v34 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeatureNewValue", 0xFuLL, v33 & 1);
  v35 = v57;
  *(v46 + 24) = v34;
  MEMORY[0x1E69E5928](v35);
  v36 = v42;
  v37 = v43;
  *(v46 + 40) = v57;
  v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PID", v36, v37 & 1);
  *(v46 + 48) = v38;
  v44 = (*((*v32 & *MEMORY[0x1E69E7D40]) + 0x228))();
  v45 = [v44 productID];
  MEMORY[0x1E69E5920](v44);
  v39 = UInt32._bridgeToObjectiveC()().super.super.isa;
  v40 = v48;
  *(v46 + 64) = v39;
  _finalizeUninitializedArray<A>(_:)();
  v50 = v40;
  v52 = type metadata accessor for NSObject();
  v51 = MEMORY[0x1E69E6158];
  v53 = MEMORY[0x1E69E6168];
  v54 = Dictionary.init(dictionaryLiteral:)();
  v55 = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
  MEMORY[0x1E69E5920](v55);
  MEMORY[0x1E69E5920](v56);
  MEMORY[0x1E69E5920](v57);
}

uint64_t closure #1 in HeadphoneDevice.setFirmwareLoggingEnabled()(void *a1)
{
  v32 = a1;
  v34 = partial apply for implicit closure #1 in closure #1 in HeadphoneDevice.setFirmwareLoggingEnabled();
  v38 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v40 = closure #1 in OSLogArguments.append(_:)partial apply;
  v42 = closure #1 in OSLogArguments.append(_:)partial apply;
  v45 = closure #1 in OSLogArguments.append(_:)partial apply;
  v56 = 0;
  v26 = 0;
  v31 = type metadata accessor for Logger();
  v29 = *(v31 - 8);
  v30 = v31 - 8;
  v27 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = v17 - v27;
  v28 = v17 - v27;
  v56 = MEMORY[0x1EEE9AC00](v32);
  v2 = Logger.fwSeeding.unsafeMutableAddressor();
  (*(v29 + 16))(v1, v2, v31);
  v3 = v32;
  v36 = 7;
  v37 = swift_allocObject();
  *(v37 + 16) = v32;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  v33 = 17;
  v41 = swift_allocObject();
  *(v41 + 16) = 32;
  v43 = swift_allocObject();
  *(v43 + 16) = 8;
  v35 = 32;
  v4 = swift_allocObject();
  v5 = v37;
  v39 = v4;
  *(v4 + 16) = v34;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v39;
  v46 = v6;
  *(v6 + 16) = v38;
  *(v6 + 24) = v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v44 = _allocateUninitializedArray<A>(_:)();
  v47 = v8;

  v9 = v41;
  v10 = v47;
  *v47 = v40;
  v10[1] = v9;

  v11 = v43;
  v12 = v47;
  v47[2] = v42;
  v12[3] = v11;

  v13 = v46;
  v14 = v47;
  v47[4] = v45;
  v14[5] = v13;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v49, v50))
  {
    v15 = v26;
    v19 = static UnsafeMutablePointer.allocate(capacity:)();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v20 = createStorage<A>(capacity:type:)(0);
    v21 = createStorage<A>(capacity:type:)(1);
    v22 = &v55;
    v55 = v19;
    v23 = &v54;
    v54 = v20;
    v24 = &v53;
    v53 = v21;
    serialize(_:at:)(2, &v55);
    serialize(_:at:)(1, v22);
    v51 = v40;
    v52 = v41;
    closure #1 in osLogInternal(_:log:type:)(&v51, v22, v23, v24);
    v25 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v51 = v42;
      v52 = v43;
      closure #1 in osLogInternal(_:log:type:)(&v51, &v55, &v54, &v53);
      v17[1] = 0;
      v51 = v45;
      v52 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v51, &v55, &v54, &v53);
      _os_log_impl(&dword_1D93D0000, v49, v50, "FW Seeding: Set Logging: Result: %s", v19, 0xCu);
      destroyStorage<A>(_:count:)(v20, 0, v18);
      destroyStorage<A>(_:count:)(v21, 1, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v19, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v49);
  return (*(v29 + 8))(v28, v31);
}

uint64_t implicit closure #1 in closure #1 in HeadphoneDevice.setFirmwareLoggingEnabled()(uint64_t a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed", 6uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Succeeded", 9uLL, 1)._countAndFlagsBits;
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  MEMORY[0x1E69E5928](a2);
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  v4();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance SDSeedProgram(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  SDSeedProgram.init(rawValue:)();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SDSeedProgram(void *a1@<X8>)
{
  v2 = *v1;
  SDSeedProgram.rawValue.getter();
  *a1 = v3;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance AUDeveloperSettingsURLType(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  AUDeveloperSettingsURLType.init(rawValue:)();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AUDeveloperSettingsURLType(void *a1@<X8>)
{
  v2 = *v1;
  AUDeveloperSettingsURLType.rawValue.getter();
  *a1 = v3;
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = *(v21 + 64);
  (MEMORY[0x1EEE9AC00])();
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  v27 = dispatch thunk of static FixedWidthInteger.bitWidth.getter() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    v10 = MEMORY[0x1EEE9AC00](v23);
    v16 = v29;
    v17 = v11;
    _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v10, partial apply for closure #1 in serialize<A>(_:at:), v15, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v13, MEMORY[0x1E69E7CA8]);
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t partial apply for closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int32 and conformance Int32();
  v5 = MEMORY[0x1E69E72F0];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  v2 = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
    return WitnessTable;
  }

  return v2;
}

BOOL CBProductIDIsW3(int a1)
{
  switch(a1)
  {
    case 8212:
      v2 = 1;
      break;
    case 8217:
      v2 = 1;
      break;
    case 8219:
      v2 = 1;
      break;
    case 8221:
      v2 = 1;
      break;
    case 8222:
      v2 = 1;
      break;
    case 8224:
      v2 = 1;
      break;
    case 8228:
      v2 = 1;
      break;
    default:
      v2 = a1 == 8232 || a1 == 8231;
      break;
  }

  return v2;
}

uint64_t type metadata accessor for SDSeedProgram()
{
  v4 = lazy cache variable for type metadata for SDSeedProgram;
  if (!lazy cache variable for type metadata for SDSeedProgram)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for SDSeedProgram);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type SDSeedProgram and conformance SDSeedProgram()
{
  v2 = lazy protocol witness table cache variable for type SDSeedProgram and conformance SDSeedProgram;
  if (!lazy protocol witness table cache variable for type SDSeedProgram and conformance SDSeedProgram)
  {
    type metadata accessor for SDSeedProgram();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SDSeedProgram and conformance SDSeedProgram);
    return WitnessTable;
  }

  return v2;
}

uint64_t CBProductIDIsAirPods(int a1)
{
  switch(a1)
  {
    case 8194:
      v2 = 1;
      break;
    case 8202:
      v2 = 1;
      break;
    case 8206:
      v2 = 1;
      break;
    case 8207:
      v2 = 1;
      break;
    case 8211:
      v2 = 1;
      break;
    case 8212:
      v2 = 1;
      break;
    case 8217:
      v2 = 1;
      break;
    case 8219:
      v2 = 1;
      break;
    case 8222:
      v2 = 1;
      break;
    case 8223:
      v2 = 1;
      break;
    case 8224:
      v2 = 1;
      break;
    case 8228:
      v2 = 1;
      break;
    case 8231:
      v2 = 1;
      break;
    case 8232:
      v2 = 1;
      break;
    default:
      v2 = 0;
      break;
  }

  return v2 & 1;
}

unint64_t type metadata accessor for UARPSettingsAccessory()
{
  v2 = lazy cache variable for type metadata for UARPSettingsAccessory;
  if (!lazy cache variable for type metadata for UARPSettingsAccessory)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for UARPSettingsAccessory);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [UARPSettingsAccessory] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [UARPSettingsAccessory] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UARPSettingsAccessory] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo21UARPSettingsAccessoryCGMd, &_sSaySo21UARPSettingsAccessoryCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UARPSettingsAccessory] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t *outlined destroy of IndexingIterator<[UARPSettingsAccessory]>(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t outlined destroy of (String?, String?)(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 24);

  return a1;
}

uint64_t outlined destroy of String?(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

void *outlined init with copy of String?(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t closure #1 in osLogInternal(_:log:type:)partial apply(uint64_t a1)
{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

uint64_t type metadata accessor for AUDeveloperSettingsURLType()
{
  v4 = lazy cache variable for type metadata for AUDeveloperSettingsURLType;
  if (!lazy cache variable for type metadata for AUDeveloperSettingsURLType)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AUDeveloperSettingsURLType);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type AUDeveloperSettingsURLType and conformance AUDeveloperSettingsURLType()
{
  v2 = lazy protocol witness table cache variable for type AUDeveloperSettingsURLType and conformance AUDeveloperSettingsURLType;
  if (!lazy protocol witness table cache variable for type AUDeveloperSettingsURLType and conformance AUDeveloperSettingsURLType)
  {
    type metadata accessor for AUDeveloperSettingsURLType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AUDeveloperSettingsURLType and conformance AUDeveloperSettingsURLType);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for NSString()
{
  v2 = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSString);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for NSObject()
{
  v2 = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSObject);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t partial apply for implicit closure #1 in HeadphoneDevice.setFirmwareAssetLocation(serialNumber:assetLocationType:)()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  implicit closure #1 in HeadphoneDevice.setFirmwareAssetLocation(serialNumber:assetLocationType:)();
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)partial apply(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type UInt and conformance UInt();
  v5 = MEMORY[0x1E69E6810];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int32 and conformance Int32();
  v5 = MEMORY[0x1E69E72F0];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int32 and conformance Int32();
  v5 = MEMORY[0x1E69E72F0];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t type metadata accessor for AUObserverXPC()
{
  v2 = lazy cache variable for type metadata for AUObserverXPC;
  if (!lazy cache variable for type metadata for AUObserverXPC)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for AUObserverXPC);
    return ObjCClassMetadata;
  }

  return v2;
}

BOOL implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)partial apply()
{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(*(v0 + 16));
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)partial apply()
{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(*(v0 + 16));
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)partial apply@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int32)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int32)(*(v1 + 16), a1);
}

uint64_t block_copy_helper_504(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t partial apply for closure #1 in serialize<A>(_:at:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in serialize<A>(_:at:)();
}

uint64_t RawRepresentable<>.description.getter()
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  return String.init<A>(_:)();
}

{
  dispatch thunk of RawRepresentable.rawValue.getter();
  return v1;
}

BOOL static AADevicePropertyRemoteSendState.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    if (*a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t AADevicePropertyRemoteSendState.hash(into:)()
{
  if (*v0)
  {
    *v0;
  }

  return Hasher.combine<A>(_:)();
}

uint64_t AADevicePropertyRemoteSendState.hashValue.getter()
{
  v2 = *v0;
  lazy protocol witness table accessor for type AADevicePropertyRemoteSendState and conformance AADevicePropertyRemoteSendState();
  return _hashValue<A>(for:)();
}

unint64_t lazy protocol witness table accessor for type AADevicePropertyRemoteSendState and conformance AADevicePropertyRemoteSendState()
{
  v2 = lazy protocol witness table cache variable for type AADevicePropertyRemoteSendState and conformance AADevicePropertyRemoteSendState;
  if (!lazy protocol witness table cache variable for type AADevicePropertyRemoteSendState and conformance AADevicePropertyRemoteSendState)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AADevicePropertyRemoteSendState and conformance AADevicePropertyRemoteSendState);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AADevicePropertyRemoteSendState and conformance AADevicePropertyRemoteSendState;
  if (!lazy protocol witness table cache variable for type AADevicePropertyRemoteSendState and conformance AADevicePropertyRemoteSendState)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AADevicePropertyRemoteSendState and conformance AADevicePropertyRemoteSendState);
    return WitnessTable;
  }

  return v2;
}

uint64_t AudioAccessoryDevice.btAddress.getter()
{
  v105 = implicit closure #1 in AudioAccessoryDevice.btAddress.getter;
  v106 = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_1;
  v107 = implicit closure #2 in AudioAccessoryDevice.btAddress.getter;
  v108 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  v109 = partial apply for implicit closure #3 in AudioAccessoryDevice.btAddress.getter;
  v110 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v111 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1;
  v112 = closure #1 in OSLogArguments.append(_:)partial apply;
  v113 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1;
  v114 = closure #1 in OSLogArguments.append(_:)partial apply;
  v115 = closure #1 in OSLogArguments.append(_:)partial apply;
  v116 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v117 = closure #1 in OSLogArguments.append(_:)partial apply;
  v118 = closure #1 in OSLogArguments.append(_:)partial apply;
  v119 = closure #1 in OSLogArguments.append(_:)partial apply;
  v139 = 0;
  v120 = 0;
  v132 = 0;
  v133 = 0;
  v122 = type metadata accessor for Logger();
  v123 = *(v122 - 8);
  v124 = v122 - 8;
  v125 = (*(v123 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v126 = v38 - v125;
  v139 = MEMORY[0x1EEE9AC00](v121);
  v127 = [v139 bluetoothAddressData];
  if (v127)
  {
    v104 = v127;
    v99 = v127;
    v100 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v0;
    MEMORY[0x1E69E5920](v99);
    v102 = v100;
    v103 = v101;
  }

  else
  {
    v102 = 0;
    v103 = 0xF000000000000000;
  }

  v97 = v103;
  v98 = v102;
  if ((v103 & 0xF000000000000000) == 0xF000000000000000)
  {
    v94 = 0;
  }

  else
  {
    v95 = v98;
    v96 = v97;
    v91 = v97;
    v92 = v98;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v92, v91);
    v94 = isa;
  }

  v89 = v94;
  v90 = CUPrintNSDataAddress();
  MEMORY[0x1E69E5920](v89);
  if (v90)
  {
    v88 = v90;
    v83 = v90;
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v1;
    MEMORY[0x1E69E5920](v83);
    v86 = v84;
    v87 = v85;
  }

  else
  {
    v86 = 0;
    v87 = 0;
  }

  v81 = v87;
  v82 = v86;
  if (v87)
  {
    v79 = v82;
    v80 = v81;
    v76 = v81;
    v132 = v82;
    v133 = v81;
    v130 = v82;
    v131 = v81;
    v70 = 1;
    v72 = 1;
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(":", 1uLL, 1);
    v75 = &v129;
    v129 = v2;
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("-", v70, v72 & 1);
    v74 = &v128;
    v128 = v3;
    v71 = lazy protocol witness table accessor for type String and conformance String();
    v73 = MEMORY[0x1E69E6158];
    default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v77._countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v77._object = v4;
    outlined destroy of String(v74);
    outlined destroy of String(v75);

    v78 = v77;
  }

  else
  {
    v5 = v126;
    v6 = Logger.shared.unsafeMutableAddressor();
    (*(v123 + 16))(v5, v6, v122);
    MEMORY[0x1E69E5928](v121);
    v53 = 7;
    v54 = swift_allocObject();
    *(v54 + 16) = v121;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    v50 = 17;
    v56 = swift_allocObject();
    v49 = 32;
    *(v56 + 16) = 32;
    v57 = swift_allocObject();
    v51 = 8;
    *(v57 + 16) = 8;
    v52 = 32;
    v7 = swift_allocObject();
    v47 = v7;
    *(v7 + 16) = v105;
    *(v7 + 24) = 0;
    v8 = swift_allocObject();
    v9 = v47;
    v58 = v8;
    *(v8 + 16) = v106;
    *(v8 + 24) = v9;
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v51;
    v10 = swift_allocObject();
    v48 = v10;
    *(v10 + 16) = v107;
    *(v10 + 24) = 0;
    v11 = swift_allocObject();
    v12 = v48;
    v61 = v11;
    *(v11 + 16) = v108;
    *(v11 + 24) = v12;
    v62 = swift_allocObject();
    *(v62 + 16) = v49;
    v63 = swift_allocObject();
    *(v63 + 16) = v51;
    v13 = swift_allocObject();
    v14 = v54;
    v55 = v13;
    *(v13 + 16) = v109;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v55;
    v65 = v15;
    *(v15 + 16) = v110;
    *(v15 + 24) = v16;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v64 = _allocateUninitializedArray<A>(_:)();
    v66 = v17;

    v18 = v56;
    v19 = v66;
    *v66 = v111;
    v19[1] = v18;

    v20 = v57;
    v21 = v66;
    v66[2] = v112;
    v21[3] = v20;

    v22 = v58;
    v23 = v66;
    v66[4] = v113;
    v23[5] = v22;

    v24 = v59;
    v25 = v66;
    v66[6] = v114;
    v25[7] = v24;

    v26 = v60;
    v27 = v66;
    v66[8] = v115;
    v27[9] = v26;

    v28 = v61;
    v29 = v66;
    v66[10] = v116;
    v29[11] = v28;

    v30 = v62;
    v31 = v66;
    v66[12] = v117;
    v31[13] = v30;

    v32 = v63;
    v33 = v66;
    v66[14] = v118;
    v33[15] = v32;

    v34 = v65;
    v35 = v66;
    v66[16] = v119;
    v35[17] = v34;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v68, v69))
    {
      v36 = v120;
      v40 = static UnsafeMutablePointer.allocate(capacity:)();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v41 = createStorage<A>(capacity:type:)(0);
      v42 = createStorage<A>(capacity:type:)(2);
      v43 = &v138;
      v138 = v40;
      v44 = &v137;
      v137 = v41;
      v45 = &v136;
      v136 = v42;
      serialize(_:at:)(2, &v138);
      serialize(_:at:)(3, v43);
      v134 = v111;
      v135 = v56;
      closure #1 in osLogInternal(_:log:type:)(&v134, v43, v44, v45);
      v46 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v134 = v112;
        v135 = v57;
        closure #1 in osLogInternal(_:log:type:)(&v134, &v138, &v137, &v136);
        v38[7] = 0;
        v134 = v113;
        v135 = v58;
        closure #1 in osLogInternal(_:log:type:)(&v134, &v138, &v137, &v136);
        v38[6] = 0;
        v134 = v114;
        v135 = v59;
        closure #1 in osLogInternal(_:log:type:)(&v134, &v138, &v137, &v136);
        v38[5] = 0;
        v134 = v115;
        v135 = v60;
        closure #1 in osLogInternal(_:log:type:)(&v134, &v138, &v137, &v136);
        v38[4] = 0;
        v134 = v116;
        v135 = v61;
        closure #1 in osLogInternal(_:log:type:)(&v134, &v138, &v137, &v136);
        v38[3] = 0;
        v134 = v117;
        v135 = v62;
        closure #1 in osLogInternal(_:log:type:)(&v134, &v138, &v137, &v136);
        v38[2] = 0;
        v134 = v118;
        v135 = v63;
        closure #1 in osLogInternal(_:log:type:)(&v134, &v138, &v137, &v136);
        v38[1] = 0;
        v134 = v119;
        v135 = v65;
        closure #1 in osLogInternal(_:log:type:)(&v134, &v138, &v137, &v136);
        _os_log_impl(&dword_1D93D0000, v68, v69, "HeadphoneManager: %s: %ld::HeadphoneManager: Invalid BT Address address: %s", v40, 0x20u);
        destroyStorage<A>(_:count:)(v41, 0, v39);
        destroyStorage<A>(_:count:)(v42, 2, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v40, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v68);
    (*(v123 + 8))(v126, v122);
    v78 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNKNOWN", 7uLL, 1);
  }

  return v78._countAndFlagsBits;
}

uint64_t implicit closure #3 in AudioAccessoryDevice.btAddress.getter(void *a1)
{
  v10 = [a1 bluetoothAddressData];
  if (v10)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v1;
    MEMORY[0x1E69E5920](v10);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xF000000000000000;
  }

  if ((v9 & 0xF000000000000000) == 0xF000000000000000)
  {
    v5._countAndFlagsBits = 0;
    v5._object = 0;
  }

  else
  {
    v2 = default argument 0 of Data.base64EncodedString(options:)();
    v3 = Data.base64EncodedString(options:)(v2);
    outlined consume of Data._Representation(v8, v9);
    v5 = v3;
  }

  v11 = v5;
  if (v5._object)
  {
    v12 = v11;
  }

  else
  {
    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nil data", 8uLL, 1);
  }

  return v12._countAndFlagsBits;
}

uint64_t default argument 0 of Data.base64EncodedString(options:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo27NSDataBase64EncodingOptionsV_Tt0gq5(0);

  return 0;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo27NSDataBase64EncodingOptionsV_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for NSDataBase64EncodingOptions();
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t getEnumTagSinglePayload for AADevicePropertyRemoteSendState(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AADevicePropertyRemoteSendState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t _s2os9serialize_2atyx_Spys5UInt8VGzts17FixedWidthIntegerRzlFySWXEfU_TA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in serialize<A>(_:at:)();
}

uint64_t type metadata accessor for NSDataBase64EncodingOptions()
{
  v4 = lazy cache variable for type metadata for NSDataBase64EncodingOptions;
  if (!lazy cache variable for type metadata for NSDataBase64EncodingOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSDataBase64EncodingOptions);
      return v1;
    }
  }

  return v4;
}

id AudioAccessoryDevice.cbDeviceValidator(aaDevice:)(void *a1)
{
  v45 = a1;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v40 = 0;
  v47 = 0;
  v46 = 0;
  v41 = type metadata accessor for Logger();
  v42 = *(v41 - 8);
  v43 = v42;
  v2 = *(v42 + 64);
  v3 = MEMORY[0x1EEE9AC00](v45);
  v44 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v3;
  v54 = v1;
  v5 = v3;
  v53 = v45;
  if ([v45 respondsToSelector_])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    if ([v45 respondsToSelector_])
    {
      swift_unknownObjectRetain();
      v48 = [v45 coreBluetoothDevice];
      swift_unknownObjectRelease();
    }

    else
    {
      v48 = 1;
    }

    v39 = v48;
    if (v48 == 1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = v39;
      v37 = v39;
      v47 = v39;
      swift_unknownObjectRelease();
      v6 = v37;
      if (v37)
      {
        v36 = v37;
        v46 = v37;
        v33 = v37;

        swift_unknownObjectRelease();
        v34 = v33;
        v35 = v40;
        return v34;
      }
    }
  }

  v7 = v44;
  v8 = Logger.shared.unsafeMutableAddressor();
  (*(v43 + 16))(v7, v8, v41);
  v31 = Logger.logObject.getter();
  v28 = v31;
  v30 = static os_log_type_t.error.getter();
  v29 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v32 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v31, v30))
  {
    v9 = v40;
    v19 = static UnsafeMutablePointer.allocate(capacity:)();
    v15 = v19;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v17 = 0;
    v20 = createStorage<A>(capacity:type:)(0);
    v18 = v20;
    v21 = createStorage<A>(capacity:type:)(v17);
    v52 = v19;
    v51 = v20;
    v50 = v21;
    v22 = 0;
    v23 = &v52;
    serialize(_:at:)(0, &v52);
    serialize(_:at:)(v22, v23);
    v49 = v32;
    v24 = &v12;
    MEMORY[0x1EEE9AC00](&v12);
    v25 = &v12 - 6;
    *(&v12 - 4) = v10;
    *(&v12 - 3) = &v51;
    *(&v12 - 2) = &v50;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v27 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v28, v29, "HeadphoneManager: AudioAccessoryDevice does not have CBDevice yet.", v15, 2u);
      v13 = 0;
      destroyStorage<A>(_:count:)(v18, 0, v16);
      destroyStorage<A>(_:count:)(v21, v13, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v15, MEMORY[0x1E69E7508]);

      v14 = v27;
    }
  }

  else
  {

    v14 = v40;
  }

  v12 = v14;

  (*(v43 + 8))(v44, v41);
  swift_unknownObjectRelease();
  v34 = 0;
  v35 = v12;
  return v34;
}

uint64_t SerialNumberType.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SerialNumberType@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SerialNumberType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SerialNumberType(void *a1@<X8>)
{
  v2 = *v1;
  SerialNumberType.rawValue.getter();
  *a1 = v3;
}

uint64_t HeadphoneDevice.HeadphoneFeatures.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 7:
      return 7;
    case 8:
      return 8;
    case 9:
      return 9;
    case 10:
      return 10;
    case 11:
      return 11;
    case 12:
      return 12;
    case 13:
      return 13;
    case 14:
      return 14;
    case 15:
      return 15;
    case 16:
      return 16;
    case 17:
      return 17;
    case 18:
      return 18;
    case 19:
      return 19;
    case 20:
      return 20;
    case 21:
      return 21;
    case 22:
      return 22;
    case 23:
      return 23;
    case 24:
      return 24;
    case 25:
      return 25;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HeadphoneDevice.HeadphoneFeatures@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = HeadphoneDevice.HeadphoneFeatures.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance HeadphoneDevice.HeadphoneFeatures(void *a1@<X8>)
{
  v2 = *v1;
  HeadphoneDevice.HeadphoneFeatures.rawValue.getter();
  *a1 = v3;
}

uint64_t HeadphoneDevice.ListeningModeConfigs.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 7:
      return 7;
    case 8:
      return 8;
    case 9:
      return 9;
    case 10:
      return 10;
    case 11:
      return 11;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HeadphoneDevice.ListeningModeConfigs@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = HeadphoneDevice.ListeningModeConfigs.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance HeadphoneDevice.ListeningModeConfigs(void *a1@<X8>)
{
  v2 = *v1;
  HeadphoneDevice.ListeningModeConfigs.rawValue.getter();
  *a1 = v3;
}

uint64_t HeadphoneDevice.cbDevice.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_cbDevice);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDevice.cbDevice.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_cbDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for HeadphoneDevice.cbDevice : HeadphoneDevice@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x228))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.cbDevice : HeadphoneDevice(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x230))(v3);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t HeadphoneDevice.productInfo.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_productInfo);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDevice.productInfo.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_productInfo);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for HeadphoneDevice.productInfo : HeadphoneDevice@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x240))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.productInfo : HeadphoneDevice(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x248))(v3);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t HeadphoneDevice.aaDevice.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_aaDevice);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDevice.aaDevice.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_aaDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t key path getter for HeadphoneDevice.aaDevice : HeadphoneDevice@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x258))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.aaDevice : HeadphoneDevice(void *a1, void *a2)
{
  outlined init with copy of AudioAccessoryDevice?(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x260))(v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t HeadphoneDevice.btAddress.getter()
{
  v2 = *(v0 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);
  v3 = *(v0 + OBJC_IVAR___HPMHeadphoneDevice_btAddress + 8);

  return v2;
}

uint64_t HeadphoneDevice.isUpdatingDeviceConfig.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_isUpdatingDeviceConfig);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t HeadphoneDevice.isUpdatingDeviceConfig.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_isUpdatingDeviceConfig);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for HeadphoneDevice.isUpdatingDeviceConfig : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x270))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.isUpdatingDeviceConfig : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x278))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HeadphoneDevice.isAirpods.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_isAirpods);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t HeadphoneDevice.isAirpods.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_isAirpods);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for HeadphoneDevice.isAirpods : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x288))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.isAirpods : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x290))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HeadphoneDevice.findMyNetworkSupport.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_findMyNetworkSupport);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t HeadphoneDevice.findMyNetworkSupport.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_findMyNetworkSupport);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for HeadphoneDevice.findMyNetworkSupport : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x2A0))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.findMyNetworkSupport : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x2A8))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HeadphoneDevice.isResettingFindMyNetworkOnError.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_isResettingFindMyNetworkOnError);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t HeadphoneDevice.isResettingFindMyNetworkOnError.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_isResettingFindMyNetworkOnError);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for HeadphoneDevice.isResettingFindMyNetworkOnError : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x2B8))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.isResettingFindMyNetworkOnError : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x2C0))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.findMyNetworkEnable@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.findMyNetworkEnable.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.findMyNetworkEnable.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.findMyNetworkEnable : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x2D0))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.findMyNetworkEnable : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x2D8))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.findMyNetworkEnable.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.findMyNetworkEnable.modify;
}

void HeadphoneDevice.findMyNetworkEnable.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t key path getter for HeadphoneDevice.$findMyNetworkEnable : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x2E8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$findMyNetworkEnable : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x2F0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$findMyNetworkEnable.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$findMyNetworkEnable.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$findMyNetworkEnable.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$findMyNetworkEnable.getter();
  return HeadphoneDevice.$findMyNetworkEnable.modify;
}

void HeadphoneDevice.$findMyNetworkEnable.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$findMyNetworkEnable.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$findMyNetworkEnable.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._findMyNetworkEnable.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__findMyNetworkEnable;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._findMyNetworkEnable.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__findMyNetworkEnable;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t HeadphoneDevice.findMyNetworkSession.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_findMyNetworkSession);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDevice.findMyNetworkSession.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  v4 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_findMyNetworkSession);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for HeadphoneDevice.findMyNetworkSession : HeadphoneDevice@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x300))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.findMyNetworkSession : HeadphoneDevice(uint64_t *a1, void *a2)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x308))(v3);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t HeadphoneDevice.findMyNetworkValueUpdated.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_findMyNetworkValueUpdated);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t HeadphoneDevice.findMyNetworkValueUpdated.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_findMyNetworkValueUpdated);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for HeadphoneDevice.findMyNetworkValueUpdated : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x318))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.findMyNetworkValueUpdated : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x320))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.isSettingFindMyNetworkValue@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t HeadphoneDevice.isSettingFindMyNetworkValue.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.isSettingFindMyNetworkValue.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.isSettingFindMyNetworkValue : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x330))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.isSettingFindMyNetworkValue : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x338))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

void (*HeadphoneDevice.isSettingFindMyNetworkValue.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.isSettingFindMyNetworkValue.modify;
}

void HeadphoneDevice.isSettingFindMyNetworkValue.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t key path getter for HeadphoneDevice.$isSettingFindMyNetworkValue : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x348))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$isSettingFindMyNetworkValue : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x350))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$isSettingFindMyNetworkValue.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$isSettingFindMyNetworkValue.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$isSettingFindMyNetworkValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$isSettingFindMyNetworkValue.getter();
  return HeadphoneDevice.$isSettingFindMyNetworkValue.modify;
}

void HeadphoneDevice.$isSettingFindMyNetworkValue.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$isSettingFindMyNetworkValue.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$isSettingFindMyNetworkValue.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._isSettingFindMyNetworkValue.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__isSettingFindMyNetworkValue;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._isSettingFindMyNetworkValue.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__isSettingFindMyNetworkValue;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.name@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7[2] = a1;
  v7[3] = a2;

  v7[0] = a1;
  v7[1] = a2;
  Published.init(wrappedValue:)(v7, MEMORY[0x1E69E6158], a3);
}

uint64_t HeadphoneDevice.name.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t HeadphoneDevice.name.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t key path getter for HeadphoneDevice.name : HeadphoneDevice@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x360))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t key path setter for HeadphoneDevice.name : HeadphoneDevice(void *a1, void *a2)
{
  outlined init with copy of String(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x368))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

void (*HeadphoneDevice.name.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.name.modify;
}

void HeadphoneDevice.name.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t key path getter for HeadphoneDevice.$name : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x378))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$name : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x380))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$name.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$name.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$name.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$name.getter();
  return HeadphoneDevice.$name.modify;
}

void HeadphoneDevice.$name.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$name.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$name.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._name.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__name;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._name.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__name;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.isConnected@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return Published.init(wrappedValue:)(v3, MEMORY[0x1E69E6370], a2);
}

uint64_t key path getter for HeadphoneDevice.isConnected : HeadphoneDevice@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x390))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.isConnected : HeadphoneDevice(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x398))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HeadphoneDevice.isConnected.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2 & 1;
}

uint64_t HeadphoneDevice.isConnected.setter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*HeadphoneDevice.isConnected.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return HeadphoneDevice.isConnected.modify;
}

void HeadphoneDevice.isConnected.modify(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    MEMORY[0x1E69E5920](v7);
  }

  free(v8);
}

uint64_t key path getter for HeadphoneDevice.$isConnected : HeadphoneDevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  v2 = MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v12 = v6;
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x3A8))(v2);
  (*(v7 + 32))(v9, v10, v11);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t key path setter for HeadphoneDevice.$isConnected : HeadphoneDevice(uint64_t a1, void **a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x3B0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t HeadphoneDevice.$isConnected.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t HeadphoneDevice.$isConnected.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*HeadphoneDevice.$isConnected.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  HeadphoneDevice.$isConnected.getter();
  return HeadphoneDevice.$isConnected.modify;
}

void HeadphoneDevice.$isConnected.modify(uint64_t **a1, char a2)
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
    HeadphoneDevice.$isConnected.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    HeadphoneDevice.$isConnected.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t HeadphoneDevice._isConnected.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___HPMHeadphoneDevice__isConnected;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t HeadphoneDevice._isConnected.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR___HPMHeadphoneDevice__isConnected;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of HeadphoneDevice.listeningMode@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for CBListeningMode();
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t HeadphoneDevice.listeningMode.getter()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MEMORY[0x1E69E5920](v0);
  return v2;
}