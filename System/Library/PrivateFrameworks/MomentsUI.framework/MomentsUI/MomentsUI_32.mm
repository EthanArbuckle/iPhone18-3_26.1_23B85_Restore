uint64_t specialized static CloudMetaDevice.dumpRecord(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v39 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v39 - v14;
  MEMORY[0x28223BE20](v13);
  v49 = &v39 - v16;
  v17 = MEMORY[0x21CE92CC0](0x614E64726F636572, 0xEA0000000000656DLL);
  v48 = 0x6E776F6E6B6E55;
  if (v17)
  {
    v50 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    if (swift_dynamicCast())
    {
      v46 = v51;
      v47 = v52;
    }

    else
    {
      v46 = 0x6E776F6E6B6E55;
      v47 = 0xE700000000000000;
    }
  }

  else
  {
    v46 = 0x6E776F6E6B6E55;
    v47 = 0xE700000000000000;
  }

  v18 = [a1 creationDate];
  if (v18)
  {
    v19 = v18;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = *(v9 + 32);
    v20(v7, v15, v8);
    v21 = *(v9 + 56);
    v21(v7, 0, 1, v8);
    v20(v49, v7, v8);
  }

  else
  {
    v21 = *(v9 + 56);
    v21(v7, 1, 1, v8);
    static Date.distantPast.getter();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      outlined destroy of UTType?(v7, &_s10Foundation4DateVSgMd);
    }
  }

  v22 = MEMORY[0x21CE92CC0](0x6465696669646F6DLL, 0xEA00000000007441);
  if (v22)
  {
    v51 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v23 = swift_dynamicCast();
    v21(v5, v23 ^ 1u, 1, v8);
    if ((*(v9 + 48))(v5, 1, v8) != 1)
    {
      (*(v9 + 32))(v12, v5, v8);
      goto LABEL_16;
    }
  }

  else
  {
    v21(v5, 1, 1, v8);
  }

  static Date.distantPast.getter();
  if ((*(v9 + 48))(v5, 1, v8) != 1)
  {
    outlined destroy of UTType?(v5, &_s10Foundation4DateVSgMd);
  }

LABEL_16:
  v24 = MEMORY[0x21CE92CC0](0x534F656369766544, 0xED0000646C697542);
  if (v24 && (v50 = v24, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v44 = v51;
    v45 = v52;
  }

  else
  {
    v44 = 0x6E776F6E6B6E55;
    v45 = 0xE700000000000000;
  }

  v25 = MEMORY[0x21CE92CC0](0xD000000000000015, 0x80000002165847E0);
  v26 = v12;
  if (v25 && (v50 = v25, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v42 = v51;
    v43 = v52;
  }

  else
  {
    v42 = 0x6E776F6E6B6E55;
    v43 = 0xE700000000000000;
  }

  v27 = MEMORY[0x21CE92CC0](0x534F656369766544, 0xEC00000065707954);
  if (v27 && (v50 = v27, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v28 = v52;
    v41 = v51;
  }

  else
  {
    v28 = 0xE700000000000000;
    v41 = 0x6E776F6E6B6E55;
  }

  v29 = MEMORY[0x21CE92CC0](0xD000000000000015, 0x8000000216584800);
  if (v29 && (v50 = v29, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v30 = v52;
    v40 = v51;
  }

  else
  {
    v30 = 0xE700000000000000;
    v40 = 0x6E776F6E6B6E55;
  }

  v31 = MEMORY[0x21CE92CC0](0xD000000000000016, 0x8000000216584820);
  if (v31 && (v50 = v31, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v32 = v52;
    v48 = v51;
  }

  else
  {
    v32 = 0xE700000000000000;
  }

  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(100);
  MEMORY[0x21CE92100](540697705, 0xE400000000000000);
  MEMORY[0x21CE92100](v46, v47);

  MEMORY[0x21CE92100](0x646574616572630ALL, 0xEA0000000000203ALL);
  v33 = v49;
  v34 = Date.debugDescription.getter();
  MEMORY[0x21CE92100](v34);

  MEMORY[0x21CE92100](0x65696669646F6D0ALL, 0xEB00000000203A64);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v35 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v35);

  MEMORY[0x21CE92100](0x646C697542736F0ALL, 0xEA0000000000203ALL);
  MEMORY[0x21CE92100](v44, v45);

  MEMORY[0x21CE92100](0x7365726556736F0ALL, 0xED0000203A6E6F69);
  MEMORY[0x21CE92100](v42, v43);

  MEMORY[0x21CE92100](0x3A65707954736F0ALL, 0xE900000000000020);
  MEMORY[0x21CE92100](v41, v28);

  MEMORY[0x21CE92100](0x737265567070610ALL, 0xED0000203A6E6F69);
  MEMORY[0x21CE92100](v40, v30);

  MEMORY[0x21CE92100](0x646E75427070610ALL, 0xEE00203A6449656CLL);
  MEMORY[0x21CE92100](v48, v32);

  v36 = v51;
  v37 = *(v9 + 8);
  v37(v26, v8);
  v37(v33, v8);
  return v36;
}

unint64_t lazy protocol witness table accessor for type CloudMetaDevice.CodingKeys and conformance CloudMetaDevice.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CloudMetaDevice.CodingKeys and conformance CloudMetaDevice.CodingKeys;
  if (!lazy protocol witness table cache variable for type CloudMetaDevice.CodingKeys and conformance CloudMetaDevice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudMetaDevice.CodingKeys and conformance CloudMetaDevice.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudMetaDevice.CodingKeys and conformance CloudMetaDevice.CodingKeys;
  if (!lazy protocol witness table cache variable for type CloudMetaDevice.CodingKeys and conformance CloudMetaDevice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudMetaDevice.CodingKeys and conformance CloudMetaDevice.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudMetaDevice.CodingKeys and conformance CloudMetaDevice.CodingKeys;
  if (!lazy protocol witness table cache variable for type CloudMetaDevice.CodingKeys and conformance CloudMetaDevice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudMetaDevice.CodingKeys and conformance CloudMetaDevice.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudMetaDevice.CodingKeys and conformance CloudMetaDevice.CodingKeys;
  if (!lazy protocol witness table cache variable for type CloudMetaDevice.CodingKeys and conformance CloudMetaDevice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudMetaDevice.CodingKeys and conformance CloudMetaDevice.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of CloudMetaDevice(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudMetaDevice();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CloudMetaDevice(uint64_t a1)
{
  v2 = type metadata accessor for CloudMetaDevice();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for CloudMetaDevice(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type CloudMetaDevice and conformance CloudMetaDevice, type metadata accessor for CloudMetaDevice);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type CloudMetaDevice and conformance CloudMetaDevice, type metadata accessor for CloudMetaDevice);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type CloudMetaDevice and conformance CloudMetaDevice, type metadata accessor for CloudMetaDevice);
  a1[3] = result;
  return result;
}

void type metadata completion function for CloudMetaDevice()
{
  type metadata accessor for Date?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Data?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t specialized CloudMetaDevice.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657461657263 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646C697542736FLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65707954736FLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021657BAC0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t CloudManager.retainUIActive(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 248) = a5;
  *(v6 + 256) = v5;
  *(v6 + 193) = a4;
  *(v6 + 232) = a2;
  *(v6 + 240) = a3;
  *(v6 + 224) = a1;
  *(v6 + 264) = *v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO8DebounceVy_AA9PublishedV0C0VySi_GSo9NSRunLoopCG_GMd);
  *(v6 + 272) = v7;
  *(v6 + 280) = *(v7 - 8);
  *(v6 + 288) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA10PublishersO8DebounceVy_AA9PublishedV0C0VySi_GSo9NSRunLoopCGGMd);
  *(v6 + 296) = v8;
  *(v6 + 304) = *(v8 - 8);
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v6 + 328) = swift_task_alloc();
  v9 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  *(v6 + 336) = v9;
  *(v6 + 344) = *(v9 - 8);
  *(v6 + 352) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd);
  *(v6 + 360) = v10;
  *(v6 + 368) = *(v10 - 8);
  *(v6 + 376) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AA9PublishedV9PublisherVySi_GSo9NSRunLoopCGMd);
  *(v6 + 384) = v11;
  *(v6 + 392) = *(v11 - 8);
  *(v6 + 400) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v6 + 408) = v12;
  *(v6 + 416) = *(v12 - 8);
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudManager.retainUIActive(_:_:_:), v5, 0);
}

uint64_t CloudManager.retainUIActive(_:_:_:)()
{
  v80 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 193);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21658E190;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd);
  v8 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [UUID] and conformance [A], &_sSay10Foundation4UUIDVGMd);
  v9 = MEMORY[0x277D840F8];
  *(v7 + 96) = MEMORY[0x277D840E8];
  *(v7 + 104) = v9;
  *(v7 + 32) = v5;
  *(v7 + 64) = v8;
  *(v7 + 72) = v6;
  *(v7 + 80) = v4;
  v10 = MEMORY[0x277D83B88];
  *(v7 + 88) = v2;
  v11 = MEMORY[0x277D83BF8];
  *(v7 + 136) = v10;
  *(v7 + 144) = v11;
  *(v7 + 112) = v3;

  static CloudLog.LogBeginInfo(_:_:)(v7, "retainUIActive(_:_:_:)", 22, 2, v1, &protocol witness table for CloudManager);

  v12 = *(v5 + 16);
  if (v12)
  {
    v13 = *(type metadata accessor for UUID() - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = *(v13 + 72);
    do
    {
      specialized closure #1 in CloudManager.retainUIActive(_:_:_:)(*(v0 + 224) + v14, *(v0 + 256));
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  v16 = *(v0 + 256);
  v17 = OBJC_IVAR____TtC9MomentsUI12CloudManager__uiActiveIDs;
  swift_beginAccess();
  v18 = *(*(v16 + v17) + 16);
  *(v0 + 456) = v18;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 448);
  v20 = *(v0 + 408);
  v21 = *(v0 + 416);
  v22 = __swift_project_value_buffer(v20, static CloudManager.Log);
  *(v0 + 464) = v22;
  swift_beginAccess();
  v23 = *(v21 + 16);
  *(v0 + 472) = v23;
  *(v0 + 480) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23(v19, v22, v20);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 448);
  v28 = *(v0 + 416);
  v77 = *(v0 + 408);
  if (v26)
  {
    v75 = v22;
    v29 = swift_slowAlloc();
    v74 = v23;
    v30 = swift_slowAlloc();
    v79[0] = v30;
    *v29 = 136446722;
    swift_beginAccess();
    v31 = StaticString.description.getter();
    v72 = v27;
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v79);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000216584840, v79);
    *(v29 + 22) = 2050;
    *(v29 + 24) = v18;
    _os_log_impl(&dword_21607C000, v24, v25, "%{public}s.%{public}s Setting uitActiveCount to %{public}ld", v29, 0x20u);
    swift_arrayDestroy();
    v34 = v30;
    v23 = v74;
    MEMORY[0x21CE94770](v34, -1, -1);
    v35 = v29;
    v22 = v75;
    MEMORY[0x21CE94770](v35, -1, -1);

    v36 = *(v28 + 8);
    v36(v72, v77);
  }

  else
  {

    v36 = *(v28 + 8);
    v36(v27, v77);
  }

  *(v0 + 488) = v36;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 200) = v18;

  static Published.subscript.setter();
  if (!v18)
  {
    goto LABEL_22;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v37 = *(v0 + 408);
  if (*(v0 + 208) >= 1)
  {
    v23(*(v0 + 440), v22, v37);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 440);
    v42 = *(v0 + 408);
    if (v40)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 136446466;
      v79[0] = v44;
      swift_beginAccess();
      v45 = StaticString.description.getter();
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v79);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2082;
      *(v43 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000216584840, v79);
      _os_log_impl(&dword_21607C000, v38, v39, "%{public}s.%{public}s Waiting for GC to stop", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v44, -1, -1);
      MEMORY[0x21CE94770](v43, -1, -1);
    }

    v36(v41, v42);
    v76 = *(v0 + 384);
    v78 = *(v0 + 392);
    v68 = *(v0 + 376);
    v69 = *(v0 + 360);
    v70 = *(v0 + 400);
    v58 = *(v0 + 344);
    v59 = *(v0 + 352);
    v60 = *(v0 + 328);
    v71 = *(v0 + 336);
    v73 = *(v0 + 368);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd);
    Published.projectedValue.getter();
    v61 = swift_endAccess();
    MEMORY[0x21CE92E90](v61, 0.5);
    v62 = [objc_opt_self() mainRunLoop];
    *(v0 + 216) = v62;
    v63 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v63 - 8) + 56))(v60, 1, 1, v63);
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSRunLoop);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Int>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySi_GMd);
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
    Publisher.debounce<A>(for:scheduler:options:)();
    outlined destroy of UTType?(v60, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    (*(v58 + 8))(v59, v71);
    (*(v73 + 8))(v68, v69);
    v64 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Debounce<Published<Int>.Publisher, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AA9PublishedV9PublisherVySi_GSo9NSRunLoopCGMd);
    MEMORY[0x21CE912F0](v76, v64);
    (*(v78 + 8))(v70, v76);

    return MEMORY[0x2822009F8](CloudManager.retainUIActive(_:_:_:), 0, 0);
  }

  v23(*(v0 + 424), v22, v37);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();
  v50 = os_log_type_enabled(v48, v49);
  v51 = *(v0 + 424);
  v52 = *(v0 + 408);
  if (v50)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 136446466;
    v79[0] = v54;
    swift_beginAccess();
    v55 = StaticString.description.getter();
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v79);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2082;
    *(v53 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000216584840, v79);
    _os_log_impl(&dword_21607C000, v48, v49, "%{public}s.%{public}s GC is idle", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v54, -1, -1);
    MEMORY[0x21CE94770](v53, -1, -1);
  }

  v36(v51, v52);
  if (*(v0 + 456) == 1)
  {
    v65 = swift_task_alloc();
    *(v0 + 504) = v65;
    *v65 = v0;
    v65[1] = CloudManager.retainUIActive(_:_:_:);

    return CloudManager.initializeSyncEngine(wait:_:)(1, 0xD000000000000027, 0x8000000216584860);
  }

  else
  {
LABEL_22:
    static CloudLog.LogEndInfo(_:)("retainUIActive(_:_:_:)", 22, 2, *(v0 + 264), &protocol witness table for CloudManager);

    v66 = *(v0 + 8);

    return v66();
  }
}

{
  (*(v0[38] + 16))(v0[39], v0[40], v0[37]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Publishers.Debounce<Published<Int>.Publisher, NSRunLoop>> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA10PublishersO8DebounceVy_AA9PublishedV0C0VySi_GSo9NSRunLoopCGGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Publishers.Debounce<Published<Int>.Publisher, NSRunLoop>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO8DebounceVy_AA9PublishedV0C0VySi_GSo9NSRunLoopCG_GMd);
  v2 = swift_task_alloc();
  v0[62] = v2;
  *v2 = v0;
  v2[1] = CloudManager.retainUIActive(_:_:_:);
  v3 = v0[34];

  return MEMORY[0x282200308](v0 + 23, v3, v1);
}

{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[35];
    v3 = v2[36];
    v5 = v2[34];

    (*(v4 + 8))(v3, v5);
    v6 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  }

  else
  {
    v6 = CloudManager.retainUIActive(_:_:_:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  if ((*(v0 + 192) & 1) != 0 || !*(v0 + 184))
  {
    v4 = *(v0 + 320);
    v5 = *(v0 + 296);
    v6 = *(v0 + 304);
    v7 = *(v0 + 256);
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    (*(v6 + 8))(v4, v5);

    return MEMORY[0x2822009F8](CloudManager.retainUIActive(_:_:_:), v7, 0);
  }

  else
  {
    v1 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Publishers.Debounce<Published<Int>.Publisher, NSRunLoop>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO8DebounceVy_AA9PublishedV0C0VySi_GSo9NSRunLoopCG_GMd);
    v2 = swift_task_alloc();
    *(v0 + 496) = v2;
    *v2 = v0;
    v2[1] = CloudManager.retainUIActive(_:_:_:);
    v3 = *(v0 + 272);

    return MEMORY[0x282200308](v0 + 184, v3, v1);
  }
}

{
  v18 = v0;
  (*(v0 + 472))(*(v0 + 432), *(v0 + 464), *(v0 + 408));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v16 = *(v0 + 488);
    v3 = *(v0 + 432);
    v4 = *(v0 + 408);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446466;
    swift_beginAccess();
    v7 = StaticString.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v17);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000216584840, &v17);
    _os_log_impl(&dword_21607C000, v1, v2, "%{public}s.%{public}s GC has stopped", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v6, -1, -1);
    MEMORY[0x21CE94770](v5, -1, -1);

    v16(v3, v4);
  }

  else
  {
    v10 = *(v0 + 488);
    v11 = *(v0 + 432);
    v12 = *(v0 + 408);

    v10(v11, v12);
  }

  if (*(v0 + 456) == 1)
  {
    v13 = swift_task_alloc();
    *(v0 + 504) = v13;
    *v13 = v0;
    v13[1] = CloudManager.retainUIActive(_:_:_:);

    return CloudManager.initializeSyncEngine(wait:_:)(1, 0xD000000000000027, 0x8000000216584860);
  }

  else
  {
    static CloudLog.LogEndInfo(_:)("retainUIActive(_:_:_:)", 22, 2, *(v0 + 264), &protocol witness table for CloudManager);

    v15 = *(v0 + 8);

    return v15();
  }
}

{
  v1 = *(*v0 + 256);

  return MEMORY[0x2822009F8](CloudManager.retainUIActive(_:_:_:), v1, 0);
}

{
  notify_post("com.apple.momentsd.ui-active-status-updated");
  static CloudLog.LogEndInfo(_:)("retainUIActive(_:_:_:)", 22, 2, *(v0 + 264), &protocol witness table for CloudManager);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CloudManager.releaseUIActive(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = v5;
  *(v6 + 176) = a4;
  *(v6 + 104) = a2;
  *(v6 + 112) = a3;
  *(v6 + 96) = a1;
  *(v6 + 136) = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v6 + 144) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v6 + 152) = v7;
  *(v6 + 160) = *(v7 - 8);
  *(v6 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudManager.releaseUIActive(_:_:_:), v5, 0);
}

uint64_t CloudManager.releaseUIActive(_:_:_:)()
{
  v47 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 176);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21658E190;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd);
  v8 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [UUID] and conformance [A], &_sSay10Foundation4UUIDVGMd);
  v9 = MEMORY[0x277D840F8];
  *(v7 + 96) = MEMORY[0x277D840E8];
  *(v7 + 104) = v9;
  *(v7 + 32) = v5;
  *(v7 + 64) = v8;
  *(v7 + 72) = v6;
  *(v7 + 80) = v4;
  v10 = MEMORY[0x277D83B88];
  *(v7 + 88) = v2;
  v11 = MEMORY[0x277D83BF8];
  *(v7 + 136) = v10;
  *(v7 + 144) = v11;
  *(v7 + 112) = v3;

  static CloudLog.LogBeginInfo(_:_:)(v7, "releaseUIActive(_:_:_:)", 23, 2, v1, &protocol witness table for CloudManager);

  v12 = *(v5 + 16);
  if (v12)
  {
    v13 = *(type metadata accessor for UUID() - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = *(v13 + 72);
    do
    {
      specialized closure #1 in CloudManager.releaseUIActive(_:_:_:)(*(v0 + 96) + v14, *(v0 + 128));
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  v16 = *(v0 + 128);
  v17 = OBJC_IVAR____TtC9MomentsUI12CloudManager__uiActiveIDs;
  swift_beginAccess();
  v18 = *(*(v16 + v17) + 16);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 160);
  v20 = *(v0 + 168);
  v21 = *(v0 + 152);
  v22 = __swift_project_value_buffer(v21, static CloudManager.Log);
  swift_beginAccess();
  (*(v19 + 16))(v20, v22, v21);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 160);
  v27 = *(v0 + 168);
  v28 = *(v0 + 152);
  if (v25)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 136446722;
    v46[0] = v30;
    swift_beginAccess();
    v31 = StaticString.description.getter();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v46);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x80000002165848C0, v46);
    *(v29 + 22) = 2050;
    *(v29 + 24) = v18;
    _os_log_impl(&dword_21607C000, v23, v24, "%{public}s.%{public}s Setting uitActiveCount to %{public}ld", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v30, -1, -1);
    MEMORY[0x21CE94770](v29, -1, -1);

    (*(v26 + 8))(v27, v28);
  }

  else
  {

    (*(v26 + 8))(v27, v28);
  }

  if (v18)
  {
    v34 = *(v0 + 128);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 88) = v18;

    static Published.subscript.setter();
    v35 = OBJC_IVAR____TtC9MomentsUI12CloudManager__uiActiveTask;
    if (*(v34 + OBJC_IVAR____TtC9MomentsUI12CloudManager__uiActiveTask))
    {

      MEMORY[0x21CE92450](v36, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    }

    *(v34 + v35) = 0;
  }

  else
  {
    v38 = *(v0 + 136);
    v37 = *(v0 + 144);
    v39 = *(v0 + 128);
    v40 = type metadata accessor for TaskPriority();
    (*(*(v40 - 8) + 56))(v37, 1, 1, v40);
    v41 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, type metadata accessor for CloudManager);
    v42 = swift_allocObject();
    v42[2] = v39;
    v42[3] = v41;
    v42[4] = v39;
    v42[5] = v38;
    swift_retain_n();
    *(v39 + OBJC_IVAR____TtC9MomentsUI12CloudManager__uiActiveTask) = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v37, &async function pointer to partial apply for closure #2 in CloudManager.releaseUIActive(_:_:_:), v42);
  }

  v43 = *(v0 + 136);

  static CloudLog.LogEndInfo(_:)("releaseUIActive(_:_:_:)", 23, 2, v43, &protocol witness table for CloudManager);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t CloudManager.__allocating_init(automaticallySync:cloudSyncStateURL:cloudDeviceDBURL:cloudSuggestionsStateURL:suggestionsDBURL:cloudSyncDBURL:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  CloudManager.init(automaticallySync:cloudSyncStateURL:cloudDeviceDBURL:cloudSuggestionsStateURL:suggestionsDBURL:cloudSyncDBURL:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t CloudManagerProtocol.add(pendingRecordZoneChanges:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 400) + **(a6 + 400));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t CloudManagerAccountState.rawValue.getter()
{
  v1 = 0x65696E6544636374;
  if (*v0 != 1)
  {
    v1 = 0x6E4964656E676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x754F64656E676973;
  }
}

uint64_t specialized AsyncSequence.first(where:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized AsyncSequence.first(where:), 0, 0);
}

{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized AsyncSequence.first(where:), 0, 0);
}

uint64_t specialized AsyncSequence.first(where:)()
{
  (*(v0[4] + 16))(v0[5], v0[2], v0[3]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = specialized AsyncSequence.first(where:);
  v3 = v0[6];

  return MEMORY[0x282200308](v0 + 11, v3, v1);
}

{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    (*(v2[7] + 8))(v2[8], v2[6]);
    v3 = specialized AsyncSequence.first(where:);
  }

  else
  {
    v3 = specialized AsyncSequence.first(where:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 88);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

    v5 = *(v0 + 8);

    return v5(v1);
  }

  else
  {
    v2 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = specialized AsyncSequence.first(where:);
    v4 = *(v0 + 48);

    return MEMORY[0x282200308](v0 + 88, v4, v2);
  }
}

{
  (*(v0[4] + 16))(v0[5], v0[2], v0[3]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = specialized AsyncSequence.first(where:);
  v3 = v0[6];

  return MEMORY[0x282200308](v0 + 11, v3, v1);
}

{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    (*(v2[7] + 8))(v2[8], v2[6]);
    v3 = specialized AsyncSequence.first(where:);
  }

  else
  {
    v3 = specialized AsyncSequence.first(where:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 88);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

    v5 = *(v0 + 8);

    return v5(v1);
  }

  else
  {
    v2 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = specialized AsyncSequence.first(where:);
    v4 = *(v0 + 48);

    return MEMORY[0x282200308](v0 + 88, v4, v2);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v7 = MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t CloudManager.getDBManager()()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x2822009F8](CloudManager.getDBManager(), 0, 0);
}

{
  static CloudLog.LogBegin(_:_:)(0, "getDBManager()", 14, 2, *(v0 + 32), &protocol witness table for CloudManager);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = CloudManager.getDBManager();

  return CloudManager._waitForInitialization(_:_:)("getDBManager()", 14, 2, 1944);
}

{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](CloudManager.getDBManager(), v1, 0);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v0 + 48) = *(v0 + 16);

  return MEMORY[0x2822009F8](CloudManager.getDBManager(), 0, 0);
}

{
  static CloudLog.LogEnd(_:)("getDBManager()", 14, 2, v0[4], &protocol witness table for CloudManager);
  v1 = v0[1];
  v2 = v0[6];

  return v1(v2);
}

uint64_t CloudManager.records(ids:desiredKeys:loadAssets:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 104) = a3;
  *(v4 + 24) = a1;
  *(v4 + 48) = *v3;
  return MEMORY[0x2822009F8](CloudManager.records(ids:desiredKeys:loadAssets:), v3, 0);
}

uint64_t CloudManager.records(ids:desiredKeys:loadAssets:)()
{
  if (*(v0 + 104) & 1) == 0 && ((v4 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)(), v4 == 2) || (v4))
  {
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    v12 = *(v0 + 24);
    v7 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, type metadata accessor for CloudManager);
    v8 = swift_task_alloc();
    *(v0 + 56) = v8;
    *(v8 + 16) = v12;
    *(v8 + 32) = v6;
    v9 = swift_task_alloc();
    *(v0 + 64) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo10CKRecordIDCs6ResultOySo0A0Cs5Error_pGGMd);
    *v9 = v0;
    v9[1] = CloudManager.records(ids:desiredKeys:loadAssets:);

    return MEMORY[0x2822008A0](v0 + 16, v5, v7, 0xD000000000000024, 0x80000002165848F0, partial apply for closure #1 in CloudManager.records(ids:desiredKeys:loadAssets:), v8, v10);
  }

  else
  {
    if (one-time initialization token for container != -1)
    {
      swift_once();
    }

    *(v0 + 80) = [static CloudManager.container privateCloudDatabase];
    v1 = swift_task_alloc();
    *(v0 + 88) = v1;
    *v1 = v0;
    v1[1] = CloudManager.records(ids:desiredKeys:loadAssets:);
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);

    return MEMORY[0x28210DF18](v3, v2);
  }
}

{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = CloudManager.records(ids:desiredKeys:loadAssets:);
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = HKWorkout.fetchRoute();
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CloudManager.records(ids:desiredKeys:loadAssets:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v6 = *(v4 + 40);

    return MEMORY[0x2822009F8](CloudManager.records(ids:desiredKeys:loadAssets:), v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

Swift::Void __swiftcall CloudManager.retainGCActive()()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CloudLog.LogBegin(_:_:)(0, "retainGCActive()", 16, 2, v1, &protocol witness table for CloudManager);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v18[0] == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v6 = static Published.subscript.modify();
  if (__OFADD__(*v7, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  ++*v7;
  v6(v18, 0);

  if (one-time initialization token for Log != -1)
  {
LABEL_10:
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, static CloudManager.Log);
  swift_beginAccess();
  (*(v3 + 16))(v5, v8, v2);
  swift_retain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    v17 = v16[0];
    *v11 = 136446722;
    swift_beginAccess();
    v12 = StaticString.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000216584920, &v17);
    *(v11 + 22) = 2050;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v11 + 24) = v16[1];

    _os_log_impl(&dword_21607C000, v9, v10, "%{public}s.%{public}s gcActiveCount is %{public}ld", v11, 0x20u);
    v15 = v16[0];
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v15, -1, -1);
    MEMORY[0x21CE94770](v11, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);
LABEL_8:
  static CloudLog.LogEnd(_:)("retainGCActive()", 16, 2, v1, &protocol witness table for CloudManager);
}

Swift::Void __swiftcall CloudManager.releaseGCActive()()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CloudLog.LogBegin(_:_:)(0, "releaseGCActive()", 17, 2, v1, &protocol witness table for CloudManager);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v18[0] < 1)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v6 = static Published.subscript.modify();
  if (__OFSUB__(*v7, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  --*v7;
  v6(v18, 0);

  if (one-time initialization token for Log != -1)
  {
LABEL_10:
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, static CloudManager.Log);
  swift_beginAccess();
  (*(v3 + 16))(v5, v8, v2);
  swift_retain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    v17 = v16[0];
    *v11 = 136446722;
    swift_beginAccess();
    v12 = StaticString.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216584940, &v17);
    *(v11 + 22) = 2050;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v11 + 24) = v16[1];

    _os_log_impl(&dword_21607C000, v9, v10, "%{public}s.%{public}s gcActiveCount is %{public}ld", v11, 0x20u);
    v15 = v16[0];
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v15, -1, -1);
    MEMORY[0x21CE94770](v11, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);
LABEL_8:
  static CloudLog.LogEnd(_:)("releaseGCActive()", 17, 2, v1, &protocol witness table for CloudManager);
}

uint64_t CloudManager.primaryID.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t CloudManager.getFastDBManager()()
{
  v1[38] = v0;
  v1[39] = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy9MomentsUI9DBManagerCSg_G_GMd);
  v1[40] = v2;
  v1[41] = *(v2 - 8);
  v1[42] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy9MomentsUI9DBManagerCSg_GGMd);
  v1[43] = v3;
  v1[44] = *(v3 - 8);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI9DBManagerCSg_GMd);
  v1[47] = v4;
  v1[48] = *(v4 - 8);
  v1[49] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v1[50] = v5;
  v1[51] = *(v5 - 8);
  v1[52] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  v1[53] = v6;
  v1[54] = *(v6 - 8);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v1[57] = v7;
  v1[58] = *(v7 - 8);
  v1[59] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[60] = v8;
  v1[61] = *(v8 - 8);
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudManager.getFastDBManager(), 0, 0);
}

{
  v1 = v0[38];
  static CloudLog.LogBegin(_:_:)(0, "getFastDBManager()", 18, 2, v0[39], &protocol witness table for CloudManager);
  v0[68] = OBJC_IVAR____TtC9MomentsUI12CloudManager_hasFinishedBasicInitialization;

  return MEMORY[0x2822009F8](CloudManager.getFastDBManager(), v1, 0);
}

{
  *(v0 + 665) = *(*(v0 + 304) + *(v0 + 544));
  return MEMORY[0x2822009F8](CloudManager.getFastDBManager(), 0, 0);
}

{
  v22 = v0;
  if (*(v0 + 665))
  {
    v1 = *(v0 + 304);

    return MEMORY[0x2822009F8](CloudManager.getFastDBManager(), v1, 0);
  }

  else
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 536);
    v3 = *(v0 + 480);
    v4 = *(v0 + 488);
    v5 = __swift_project_value_buffer(v3, static CloudManager.Log);
    *(v0 + 552) = v5;
    swift_beginAccess();
    v6 = *(v4 + 16);
    *(v0 + 560) = v6;
    *(v0 + 568) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v2, v5, v3);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 536);
    v11 = *(v0 + 480);
    v12 = *(v0 + 488);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136446466;
      swift_beginAccess();
      v15 = StaticString.description.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v21);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216584960, &v21);
      _os_log_impl(&dword_21607C000, v7, v8, "%{public}s.%{public}s waiting for basic init", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v14, -1, -1);
      MEMORY[0x21CE94770](v13, -1, -1);
    }

    v18 = *(v12 + 8);
    v18(v10, v11);
    *(v0 + 576) = v18;
    v19 = swift_task_alloc();
    *(v0 + 584) = v19;
    *v19 = v0;
    v19[1] = CloudManager.getFastDBManager();

    return CloudManager.initializeBasicSyncEngine()();
  }
}

{
  v1 = *(*v0 + 304);

  return MEMORY[0x2822009F8](CloudManager.getFastDBManager(), v1, 0);
}

{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();

  return MEMORY[0x2822009F8](CloudManager.getFastDBManager(), 0, 0);
}

{
  v2 = v0[58];
  v1 = v0[59];
  v4 = v0[56];
  v3 = v0[57];
  v6 = v0[54];
  v5 = v0[55];
  v7 = v0[53];
  v8 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
  MEMORY[0x21CE912F0](v3, v8);
  (*(v2 + 8))(v1, v3);
  (*(v6 + 16))(v5, v4, v7);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v9 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v10 = swift_task_alloc();
  v0[74] = v10;
  *v10 = v0;
  v10[1] = CloudManager.getFastDBManager();
  v11 = v0[50];

  return MEMORY[0x282200308](v0 + 83, v11, v9);
}

{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[51];
    v3 = v2[52];
    v5 = v2[50];

    (*(v4 + 8))(v3, v5);
    v6 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  }

  else
  {
    v6 = CloudManager.getFastDBManager();
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v27 = v0;
  v1 = *(v0 + 664);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v5 = *(v0 + 560);
    v6 = *(v0 + 552);
    v7 = *(v0 + 528);
    v8 = *(v0 + 480);
    v9 = *(v0 + 448);
    v10 = *(v0 + 424);
    v11 = *(v0 + 432);
    (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
    (*(v11 + 8))(v9, v10);
    v5(v7, v6, v8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 576);
    v16 = *(v0 + 528);
    v17 = *(v0 + 480);
    if (v14)
    {
      v25 = *(v0 + 576);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136446466;
      swift_beginAccess();
      v20 = StaticString.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v26);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216584960, &v26);
      _os_log_impl(&dword_21607C000, v12, v13, "%{public}s.%{public}s done waiting for basic init", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v19, -1, -1);
      MEMORY[0x21CE94770](v18, -1, -1);

      v25(v16, v17);
    }

    else
    {

      v15(v16, v17);
    }

    v23 = *(v0 + 304);

    return MEMORY[0x2822009F8](CloudManager.getFastDBManager(), v23, 0);
  }

  else
  {
    v2 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
    v3 = swift_task_alloc();
    *(v0 + 592) = v3;
    *v3 = v0;
    v3[1] = CloudManager.getFastDBManager();
    v4 = *(v0 + 400);

    return MEMORY[0x282200308](v0 + 664, v4, v2);
  }
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v0 + 600) = *(v0 + 280);

  return MEMORY[0x2822009F8](CloudManager.getFastDBManager(), 0, 0);
}

{
  v38 = v0;
  if (v0[75])
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v1 = v0[65];
    v2 = v0[60];
    v3 = v0[61];
    v4 = __swift_project_value_buffer(v2, static CloudManager.Log);
    swift_beginAccess();
    (*(v3 + 16))(v1, v4, v2);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[65];
    v9 = v0[60];
    v10 = v0[61];
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v37 = v12;
      *v11 = 136446466;
      swift_beginAccess();
      v13 = StaticString.description.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v37);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216584960, &v37);
      _os_log_impl(&dword_21607C000, v5, v6, "%{public}s.%{public}s instant success", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v12, -1, -1);
      MEMORY[0x21CE94770](v11, -1, -1);
    }

    (*(v10 + 8))(v8, v9);
    v36 = v0[75];
    static CloudLog.LogEnd(_:)("getFastDBManager()", 18, 2, v0[39], &protocol witness table for CloudManager);

    v16 = v0[1];

    return v16(v36);
  }

  else
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v18 = v0[64];
    v19 = v0[60];
    v20 = v0[61];
    v21 = __swift_project_value_buffer(v19, static CloudManager.Log);
    v0[76] = v21;
    swift_beginAccess();
    v22 = *(v20 + 16);
    v0[77] = v22;
    v0[78] = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v22(v18, v21, v19);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[64];
    v27 = v0[60];
    v28 = v0[61];
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37 = v30;
      *v29 = 136446466;
      swift_beginAccess();
      v31 = StaticString.description.getter();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v37);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216584960, &v37);
      _os_log_impl(&dword_21607C000, v23, v24, "%{public}s.%{public}s basic wait", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v30, -1, -1);
      MEMORY[0x21CE94770](v29, -1, -1);
    }

    v34 = *(v28 + 8);
    v34(v26, v27);
    v0[79] = v34;
    v35 = v0[38];

    return MEMORY[0x2822009F8](CloudManager.getFastDBManager(), v35, 0);
  }
}

{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI9DBManagerCSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();

  return MEMORY[0x2822009F8](CloudManager.getFastDBManager(), 0, 0);
}

{
  v2 = v0[48];
  v1 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[43];
  v8 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy9MomentsUI9DBManagerCSg_GMd);
  MEMORY[0x21CE912F0](v3, v8);
  (*(v2 + 8))(v1, v3);
  (*(v6 + 16))(v5, v4, v7);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<DBManager?>.Publisher> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy9MomentsUI9DBManagerCSg_GGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v9 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<DBManager?>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy9MomentsUI9DBManagerCSg_G_GMd);
  v10 = swift_task_alloc();
  v0[80] = v10;
  *v10 = v0;
  v10[1] = CloudManager.getFastDBManager();
  v11 = v0[40];

  return MEMORY[0x282200308](v0 + 36, v11, v9);
}

{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[41];
    v3 = v2[42];
    v5 = v2[40];

    (*(v4 + 8))(v3, v5);
    v6 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  }

  else
  {
    v6 = CloudManager.getFastDBManager();
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v49 = v0;
  v1 = v0[36];
  if (v1 == 1)
  {
    v5 = v0[77];
    v6 = v0[76];
    v7 = v0[62];
    v8 = v0[60];
    v9 = v0[46];
    v10 = v0[43];
    v11 = v0[44];
    (*(v0[41] + 8))(v0[42], v0[40]);
    (*(v11 + 8))(v9, v10);
    v5(v7, v6, v8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[79];
    v16 = v0[62];
    v17 = v0[60];
    if (v14)
    {
      v46 = v0[79];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v48 = v19;
      *v18 = 136446466;
      swift_beginAccess();
      v20 = StaticString.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v48);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216584960, &v48);
      _os_log_impl(&dword_21607C000, v12, v13, "%{public}s.%{public}s full wait", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v19, -1, -1);
      MEMORY[0x21CE94770](v18, -1, -1);

      v46(v16, v17);
    }

    else
    {

      v15(v16, v17);
    }

    v41 = swift_task_alloc();
    v0[81] = v41;
    *v41 = v0;
    v41[1] = CloudManager.getFastDBManager();

    return CloudManager._waitForInitialization(_:_:)("getFastDBManager()", 18, 2, 1981);
  }

  else if (v1)
  {
    v23 = v0[77];
    v24 = v0[76];
    v25 = v0[63];
    v26 = v0[60];
    v27 = v0[46];
    v28 = v0[43];
    v29 = v0[44];
    (*(v0[41] + 8))(v0[42], v0[40]);
    (*(v29 + 8))(v27, v28);
    v23(v25, v24, v26);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[79];
    v34 = v0[63];
    v35 = v0[60];
    if (v32)
    {
      v47 = v0[79];
      v36 = swift_slowAlloc();
      v45 = v34;
      v37 = swift_slowAlloc();
      v48 = v37;
      *v36 = 136446466;
      swift_beginAccess();
      v38 = StaticString.description.getter();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v48);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2082;
      *(v36 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216584960, &v48);
      _os_log_impl(&dword_21607C000, v30, v31, "%{public}s.%{public}s success after basic wait", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v37, -1, -1);
      MEMORY[0x21CE94770](v36, -1, -1);

      v47(v45, v35);
    }

    else
    {

      v33(v34, v35);
    }

    v42 = v0[38];

    specialized BTask.init(name:operation:)(0xD00000000000001FLL, 0x8000000216584980, &async function pointer to partial apply for closure #3 in CloudManager.getFastDBManager(), v42);
    static CloudLog.LogEnd(_:)("getFastDBManager()", 18, 2, v0[39], &protocol witness table for CloudManager);

    v43 = v0[1];

    return v43(v1);
  }

  else
  {
    v2 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<DBManager?>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy9MomentsUI9DBManagerCSg_G_GMd);
    v3 = swift_task_alloc();
    v0[80] = v3;
    *v3 = v0;
    v3[1] = CloudManager.getFastDBManager();
    v4 = v0[40];

    return MEMORY[0x282200308](v0 + 36, v4, v2);
  }
}

{
  v1 = *(*v0 + 304);

  return MEMORY[0x2822009F8](CloudManager.getFastDBManager(), v1, 0);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v0 + 656) = *(v0 + 296);

  return MEMORY[0x2822009F8](CloudManager.getFastDBManager(), 0, 0);
}

{
  v3 = v0[82];
  static CloudLog.LogEnd(_:)("getFastDBManager()", 18, 2, v0[39], &protocol witness table for CloudManager);

  v1 = v0[1];

  return v1(v3);
}

uint64_t CloudManagerProtocol.refresh(force:wait:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 392) + **(a7 + 392));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudManagerProtocol.refresh(force:wait:_:_:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t CloudManager.getDeviceDB()()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](CloudManager.getDeviceDB(), 0, 0);
}

{
  static CloudLog.LogBegin(_:_:)(0, "getDeviceDB()", 13, 2, *(v0 + 24), &protocol witness table for CloudManager);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = CloudManager.getDeviceDB();

  return CloudManager._waitForInitialization(_:_:)("getDeviceDB()", 13, 2, 1922);
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v2;
  v3[1] = CloudManager.getDeviceDB();

  return CloudManager._getDeviceDB()();
}

{
  static CloudLog.LogEnd(_:)("getDeviceDB()", 13, 2, v0[3], &protocol witness table for CloudManager);
  v1 = v0[1];
  v2 = v0[6];

  return v1(v2);
}

uint64_t CloudManager.getDeviceDB()(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](CloudManager.getDeviceDB(), 0, 0);
}

const char *CloudManager.FreeSpace.stringValue.getter()
{
  v1 = ".low";
  if (*v0 != 1)
  {
    v1 = ".critical";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return ".ok";
  }
}

uint64_t CloudManager.checkFreeSpace()(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for URL();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudManager.checkFreeSpace(), v1, 0);
}

uint64_t CloudManager.checkFreeSpace()()
{
  if (one-time initialization token for cloudSyncDBURL != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4 = __swift_project_value_buffer(v3, static MomentsUIManager.cloudSyncDBURL);
  swift_beginAccess();
  if ((*(v2 + 48))(v4, 1, v1))
  {
    LOBYTE(v5) = 0;
    goto LABEL_18;
  }

  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 104);
  (*(v7 + 16))(v6, v4, v8);
  v9 = URL.path(percentEncoded:)(1);
  (*(v7 + 8))(v6, v8);
  v10 = [objc_opt_self() defaultManager];
  v11 = MEMORY[0x21CE91FC0](v9._countAndFlagsBits, v9._object);

  *(v0 + 72) = 0;
  v12 = [v10 attributesOfFileSystemForPath:v11 error:v0 + 72];

  v13 = *(v0 + 72);
  if (!v12)
  {
    v21 = v13;
    v22 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_14;
  }

  type metadata accessor for NSFileAttributeKey(0);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey);
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v13;

  if (!*(v14 + 16) || (v16 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x277CCA1D0]), (v17 & 1) == 0))
  {

    goto LABEL_14;
  }

  outlined init with copy of Any(*(v14 + 56) + 32 * v16, v0 + 16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  v18 = *(v0 + 80);
  v19 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
  if ((v20 & 1) == 0)
  {
    if (v19 >= v18)
    {
      goto LABEL_11;
    }

LABEL_22:
    v26 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
    if (v27)
    {
      if (v18 < 1073741825)
      {
        goto LABEL_26;
      }
    }

    else if (v26 >= v18)
    {
LABEL_26:
      v5 = 1;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v18 >= 1073741825)
  {
    goto LABEL_22;
  }

LABEL_11:
  v5 = 2;
LABEL_15:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v23 = *(v0 + 128);
  if (v23 == 3 || v23 != v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 129) = v5;

    static Published.subscript.setter();
  }

LABEL_18:
  **(v0 + 88) = v5;

  v24 = *(v0 + 8);

  return v24();
}

uint64_t CloudManager.checkiCloudPhotoLibraryAvailable()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](CloudManager.checkiCloudPhotoLibraryAvailable(), v0, 0);
}

{
  v1 = [objc_opt_self() defaultManager];
  v2 = MEMORY[0x21CE91FC0](0xD000000000000032, 0x80000002165849C0);
  v3 = [v1 fileExistsAtPath_];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = *(v0 + 24);
  if (v4 == 2 || ((v3 ^ v4) & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 24) = v3;

    static Published.subscript.setter();
  }

  v5 = *(v0 + 8);

  return v5(v3);
}

Swift::Bool __swiftcall CloudManager.add(databaseOperation:)(CKDatabaseOperation databaseOperation)
{
  v2 = v1;
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21658CA50;
  *(v5 + 56) = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKDatabaseOperation);
  *(v5 + 64) = lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type CKDatabaseOperation and conformance NSObject, &lazy cache variable for type metadata for CKDatabaseOperation);
  *(v5 + 32) = databaseOperation;
  v6 = databaseOperation.super.super.super.isa;
  static CloudLog.LogBegin(_:_:)(v5, "add(databaseOperation:)", 23, 2, v4, &protocol witness table for CloudManager);

  v7 = v2[17];
  if (v7)
  {
    if (one-time initialization token for container != -1)
    {
      swift_once();
    }

    v8 = [static CloudManager.container privateCloudDatabase];
    [v8 addOperation_];
  }

  static CloudLog.LogEnd(_:)("add(databaseOperation:)", 23, 2, v4, &protocol witness table for CloudManager);
  return v7 != 0;
}

uint64_t CloudManagerProtocol.add(pendingDatabaseChanges:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 408) + **(a6 + 408));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v15(a1, a2, a3, a4, a5, a6);
}

MomentsUI::CloudManagerAccountState_optional __swiftcall CloudManagerAccountState.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CloudManagerAccountState.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CloudManagerAccountState(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000064;
  v3 = *a1;
  v4 = 0x65696E6544636374;
  v5 = 0xE800000000000000;
  if (v3 == 1)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v4 = 0x6E4964656E676973;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x754F64656E676973;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE900000000000074;
  }

  v8 = 0x65696E6544636374;
  if (*a2 != 1)
  {
    v8 = 0x6E4964656E676973;
    v2 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x754F64656E676973;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xE900000000000074;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CloudManagerAccountState()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CloudManagerAccountState()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CloudManagerAccountState()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CloudManagerAccountState(uint64_t *a1@<X8>)
{
  v2 = 0x65696E6544636374;
  v3 = 0xE800000000000000;
  if (*v1 == 1)
  {
    v3 = 0xE900000000000064;
  }

  else
  {
    v2 = 0x6E4964656E676973;
  }

  if (*v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x754F64656E676973;
  }

  if (*v1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE900000000000074;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t CloudManagerProtocol.retainUIActive(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudManagerProtocol.retainUIActive(_:_:_:)(a1, a2, a3, a4, a5, a6, a7);
}

{
  v17 = (*(a7 + 120) + **(a7 + 120));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t CloudManagerProtocol.releaseUIActive(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudManagerProtocol.releaseUIActive(_:_:_:)(a1, a2, a3, a4, a5, a6, a7);
}

{
  v17 = (*(a7 + 128) + **(a7 + 128));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t static CloudManager.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static CloudManager.Class = a1;
  unk_27CA92850 = a2;
  byte_27CA92858 = a3;
  return result;
}

uint64_t CloudManager.Log.unsafeMutableAddressor()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static CloudManager.Log);
}

uint64_t static CloudManager.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudManager.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CloudManager.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudManager.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CloudManager.Log.modify())()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static CloudManager.Log);
  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance CloudManager@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudManager.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t one-time initialization function for DEBUG_NO_NETWORK()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    result = outlined destroy of UTType?(&v7, &_sypSgMd);
    goto LABEL_12;
  }

  v1 = MEMORY[0x21CE91FC0](0x53656C6261736944, 0xEB00000000636E79);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  v4 = v5;
LABEL_13:
  static CloudManager.DEBUG_NO_NETWORK = v4;
  return result;
}

uint64_t static CloudManager.DEBUG_NO_NETWORK.getter()
{
  if (one-time initialization token for DEBUG_NO_NETWORK != -1)
  {
    swift_once();
  }

  return static CloudManager.DEBUG_NO_NETWORK;
}

id one-time initialization function for container()
{
  result = closure #1 in variable initialization expression of static CloudManager.container();
  static CloudManager.container = result;
  return result;
}

id closure #1 in variable initialization expression of static CloudManager.container()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBC230]) init];
  [v0 setUseZoneWidePCS_];
  v1 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v3 = [objc_opt_self() defaultContainer];
    v4 = [v3 containerID];
    v2 = [v4 environment];
  }

  else
  {
    v2 = 2;
  }

  v5 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v6 = MEMORY[0x21CE91FC0](0xD00000000000001DLL, 0x8000000216584A20);
  v7 = [v5 initWithContainerIdentifier:v6 environment:v2];

  v8 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID:v7 options:v0];
  return v8;
}

id static CloudManager.environment.getter()
{
  if (one-time initialization token for container != -1)
  {
    swift_once();
  }

  v0 = [static CloudManager.container containerID];
  v1 = [v0 environment];

  return v1;
}

uint64_t static CloudManager.deviceID.getter(uint64_t *a1)
{
  swift_beginAccess();
  v2 = *a1;

  return v2;
}

uint64_t static CloudManager.deviceID.setter(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t key path setter for static CloudManager.deviceID : CloudManager.Type(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  *a5 = v9;
  *a6 = v8;
}

uint64_t static CloudManager.systemIdiom.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static CloudManager.systemIdiom = a1;
  return result;
}

uint64_t key path setter for CloudManager.$primaryID : CloudManager(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t key path getter for CloudManager.onboarded : CloudManager@<X0>(_BYTE *a1@<X8>)
{
  return key path getter for CloudManager.onboarded : CloudManager(a1);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for CloudManager.onboarded : CloudManager()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return CloudManager.onboarded.didset(v1);
}

uint64_t CloudManager.onboarded.didset(int a1)
{
  v2 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2 == 2)
  {
    if (v5 == 2)
    {
      return result;
    }

LABEL_6:
    v4 = swift_allocObject();
    swift_weakInit();
    return specialized BTask.init(name:operation:)(0xD000000000000028, 0x8000000216585660, &async function pointer to partial apply for closure #1 in CloudManager.onboarded.didset, v4);
  }

  if (v5 == 2 || ((v5 ^ a1) & 1) != 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t closure #1 in CloudManager.onboarded.didset()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = closure #1 in CloudManager.onboarded.didset;

    return CloudManager.initializeSyncEngine(wait:_:)(0, 0xD000000000000010, 0x8000000216585690);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

{

  return MEMORY[0x2822009F8](closure #1 in CloudManager.onboarded.didset, 0, 0);
}

uint64_t CloudManager.initializeSyncEngine(wait:_:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 2336) = v3;
  *(v4 + 2328) = a3;
  *(v4 + 2320) = a2;
  *(v4 + 3157) = a1;
  *(v4 + 2344) = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v4 + 2352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
  *(v4 + 2360) = swift_task_alloc();
  v5 = type metadata accessor for CKSyncEngine.Configuration();
  *(v4 + 2368) = v5;
  *(v4 + 2376) = *(v5 - 8);
  *(v4 + 2384) = swift_task_alloc();
  *(v4 + 2392) = swift_task_alloc();
  v6 = type metadata accessor for POSIXError();
  *(v4 + 2400) = v6;
  *(v4 + 2408) = *(v6 - 8);
  *(v4 + 2416) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v4 + 2424) = v7;
  *(v4 + 2432) = *(v7 - 8);
  *(v4 + 2440) = swift_task_alloc();
  *(v4 + 2448) = swift_task_alloc();
  *(v4 + 2456) = swift_task_alloc();
  *(v4 + 2464) = swift_task_alloc();
  *(v4 + 2472) = swift_task_alloc();
  *(v4 + 2480) = swift_task_alloc();
  *(v4 + 2488) = swift_task_alloc();
  *(v4 + 2496) = swift_task_alloc();
  *(v4 + 2504) = swift_task_alloc();
  *(v4 + 2512) = swift_task_alloc();
  *(v4 + 2520) = swift_task_alloc();
  *(v4 + 2528) = swift_task_alloc();
  *(v4 + 2536) = swift_task_alloc();
  *(v4 + 2544) = swift_task_alloc();
  *(v4 + 2552) = swift_task_alloc();
  *(v4 + 2560) = swift_task_alloc();
  *(v4 + 2568) = swift_task_alloc();
  *(v4 + 2576) = swift_task_alloc();
  *(v4 + 2584) = swift_task_alloc();
  *(v4 + 2592) = swift_task_alloc();
  *(v4 + 2600) = swift_task_alloc();
  *(v4 + 2608) = swift_task_alloc();
  *(v4 + 2616) = swift_task_alloc();
  *(v4 + 2624) = swift_task_alloc();
  *(v4 + 2632) = swift_task_alloc();
  *(v4 + 2640) = swift_task_alloc();
  *(v4 + 2648) = swift_task_alloc();
  *(v4 + 2656) = swift_task_alloc();
  *(v4 + 2664) = swift_task_alloc();
  *(v4 + 2672) = swift_task_alloc();
  *(v4 + 2680) = swift_task_alloc();
  *(v4 + 2688) = swift_task_alloc();
  *(v4 + 2696) = swift_task_alloc();
  *(v4 + 2704) = swift_task_alloc();
  *(v4 + 2712) = swift_task_alloc();
  *(v4 + 2720) = swift_task_alloc();
  *(v4 + 2728) = swift_task_alloc();
  *(v4 + 2736) = swift_task_alloc();
  *(v4 + 2744) = swift_task_alloc();
  *(v4 + 2752) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  *(v4 + 2760) = v8;
  *(v4 + 2768) = *(v8 - 8);
  *(v4 + 2776) = swift_task_alloc();
  *(v4 + 2784) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  *(v4 + 2792) = v9;
  *(v4 + 2800) = *(v9 - 8);
  *(v4 + 2808) = swift_task_alloc();
  *(v4 + 2816) = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudManager.initializeSyncEngine(wait:_:), v3, 0);
}

uint64_t CloudManager.initializeSyncEngine(wait:_:)()
{
  v48 = v0;
  v1 = *(v0 + 2344);
  v2 = *(v0 + 2328);
  v3 = *(v0 + 2320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21658CA50;
  v5 = MEMORY[0x277D83838];
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = v5;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;

  static CloudLog.LogBeginInfo(_:_:)(v4, "initializeSyncEngine(wait:_:)", 29, 2, v1, &protocol witness table for CloudManager);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v0 + 3156))
  {
    if (*(v0 + 3157) == 1)
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 2464);
      v7 = *(v0 + 2432);
      v8 = *(v0 + 2424);
      v9 = __swift_project_value_buffer(v8, static CloudManager.Log);
      swift_beginAccess();
      (*(v7 + 16))(v6, v9, v8);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 2464);
      v14 = *(v0 + 2432);
      v15 = *(v0 + 2424);
      if (v12)
      {
        v45 = *(v0 + 2464);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v47[0] = v17;
        *v16 = 136446466;
        swift_beginAccess();
        v18 = StaticString.description.getter();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v47);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2082;
        *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, v47);
        _os_log_impl(&dword_21607C000, v10, v11, "%{public}s.%{public}s Already initializing sync engine, waiting...", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v17, -1, -1);
        MEMORY[0x21CE94770](v16, -1, -1);

        (*(v14 + 8))(v45, v15);
      }

      else
      {

        (*(v14 + 8))(v13, v15);
      }

      v38 = *(v0 + 2808);
      v39 = *(v0 + 2800);
      v40 = *(v0 + 2792);
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
      Published.projectedValue.getter();
      swift_endAccess();
      v41 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
      MEMORY[0x21CE912F0](v40, v41);
      (*(v39 + 8))(v38, v40);
      v42 = swift_task_alloc();
      *(v0 + 3120) = v42;
      *v42 = v0;
      v42[1] = CloudManager.initializeSyncEngine(wait:_:);
      v43 = *(v0 + 2776);

      return (specialized AsyncSequence.first(where:))(v43);
    }

    else
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v23 = *(v0 + 2456);
      v24 = *(v0 + 2432);
      v25 = *(v0 + 2424);
      v26 = __swift_project_value_buffer(v25, static CloudManager.Log);
      swift_beginAccess();
      (*(v24 + 16))(v23, v26, v25);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 2456);
      v31 = *(v0 + 2432);
      v32 = *(v0 + 2424);
      if (v29)
      {
        v46 = *(v0 + 2456);
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v47[0] = v34;
        *v33 = 136446466;
        swift_beginAccess();
        v35 = StaticString.description.getter();
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v47);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2082;
        *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, v47);
        _os_log_impl(&dword_21607C000, v27, v28, "%{public}s.%{public}s Already initializing sync engine, skipping", v33, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v34, -1, -1);
        MEMORY[0x21CE94770](v33, -1, -1);

        (*(v31 + 8))(v46, v32);
      }

      else
      {

        (*(v31 + 8))(v30, v32);
      }

      static CloudLog.LogEndInfo(_:)("initializeSyncEngine(wait:_:)", 29, 2, *(v0 + 2344), &protocol witness table for CloudManager);

      v44 = *(v0 + 8);

      return v44();
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 3155) = 1;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 3154) = 1;

    static Published.subscript.setter();
    v21 = swift_task_alloc();
    *(v0 + 2824) = v21;
    *v21 = v0;
    v21[1] = CloudManager.initializeSyncEngine(wait:_:);

    return CloudManager.initializeBasicSyncEngine()();
  }
}

{
  v1 = *(*v0 + 2336);

  return MEMORY[0x2822009F8](CloudManager.initializeSyncEngine(wait:_:), v1, 0);
}

{
  v1 = v0[352];
  v2 = v0[350];
  v3 = v0[349];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  v4 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
  MEMORY[0x21CE912F0](v3, v4);
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  v0[354] = v5;
  *v5 = v0;
  v5[1] = CloudManager.initializeSyncEngine(wait:_:);
  v6 = v0[348];

  return (specialized AsyncSequence.first(where:))(v6);
}

{
  v126 = v0;
  swift_beginAccess();
  if (static CloudManager.systemIdiom == -1)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v19 = v0[344];
    v20 = v0[304];
    v21 = v0[303];
    v22 = __swift_project_value_buffer(v21, static CloudManager.Log);
    v0[355] = v22;
    swift_beginAccess();
    v23 = *(v20 + 16);
    v0[356] = v23;
    v0[357] = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v19, v22, v21);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[344];
    v28 = v0[304];
    v29 = v0[303];
    if (v26)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v124 = v31;
      *v30 = 136446466;
      swift_beginAccess();
      v32 = StaticString.description.getter();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v124);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v124);
      _os_log_impl(&dword_21607C000, v24, v25, "%{public}s.%{public}s Checking idiom...", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v31, -1, -1);
      MEMORY[0x21CE94770](v30, -1, -1);
    }

    v35 = *(v28 + 8);
    v35(v27, v29);
    v0[358] = v35;
    v0[359] = objc_opt_self();
    v0[360] = type metadata accessor for MainActor();
    v0[361] = static MainActor.shared.getter();
    v37 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](CloudManager.initializeSyncEngine(wait:_:), v37, v36);
  }

  else
  {
    swift_beginAccess();
    v1 = static CloudManager.deviceID & 0xFFFFFFFFFFFFLL;
    if ((qword_2811A6948 & 0x2000000000000000) != 0)
    {
      v1 = HIBYTE(qword_2811A6948) & 0xF;
    }

    if (v1)
    {
      swift_beginAccess();
      v2 = static CloudManager.bundleID & 0xFFFFFFFFFFFFLL;
      if ((qword_2811A6958 & 0x2000000000000000) != 0)
      {
        v2 = HIBYTE(qword_2811A6958) & 0xF;
      }

      if (!v2)
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v3 = v0[340];
        v4 = v0[304];
        v5 = v0[303];
        v6 = __swift_project_value_buffer(v5, static CloudManager.Log);
        swift_beginAccess();
        v116 = *(v4 + 16);
        v120 = v6;
        v116(v3, v6, v5);
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.info.getter();
        v9 = os_log_type_enabled(v7, v8);
        v10 = v0[340];
        v11 = v0[304];
        v12 = v0[303];
        if (v9)
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v124 = v14;
          *v13 = 136446466;
          swift_beginAccess();
          v15 = StaticString.description.getter();
          v112 = v12;
          v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v124);

          *(v13 + 4) = v17;
          *(v13 + 12) = 2082;
          *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v124);
          _os_log_impl(&dword_21607C000, v7, v8, "%{public}s.%{public}s Checking bundle ID...", v13, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v14, -1, -1);
          MEMORY[0x21CE94770](v13, -1, -1);

          v18 = *(v11 + 8);
          v18(v10, v112);
        }

        else
        {

          v18 = *(v11 + 8);
          v18(v10, v12);
        }

        v59 = [objc_opt_self() mainBundle];
        v60 = [v59 bundleIdentifier];

        if (v60)
        {
          v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v63 = v62;
        }

        else
        {
          v61 = 0;
          v63 = 0xE000000000000000;
        }

        v64 = v0[339];
        v65 = v0[303];
        static CloudManager.bundleID = v61;
        qword_2811A6958 = v63;

        v116(v64, v120, v65);
        swift_bridgeObjectRetain_n();
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.info.getter();
        v68 = os_log_type_enabled(v66, v67);
        v69 = v0[339];
        v70 = v0[303];
        if (v68)
        {
          v121 = v18;
          v71 = swift_slowAlloc();
          v117 = v70;
          v72 = swift_slowAlloc();
          v124 = v72;
          *v71 = 136446722;
          v114 = v69;
          swift_beginAccess();
          v73 = StaticString.description.getter();
          v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v124);

          *(v71 + 4) = v75;
          *(v71 + 12) = 2082;
          *(v71 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v124);
          *(v71 + 22) = 2080;

          v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v124);

          *(v71 + 24) = v76;
          swift_bridgeObjectRelease_n();
          _os_log_impl(&dword_21607C000, v66, v67, "%{public}s.%{public}s My Bundle ID: %s", v71, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v72, -1, -1);
          MEMORY[0x21CE94770](v71, -1, -1);

          v121(v114, v117);
        }

        else
        {
          swift_bridgeObjectRelease_n();

          v18(v69, v70);
        }
      }

      v77 = static CloudManager.deviceID & 0xFFFFFFFFFFFFLL;
      if ((qword_2811A6948 & 0x2000000000000000) != 0)
      {
        v77 = HIBYTE(qword_2811A6948) & 0xF;
      }

      if (v77)
      {
        v78 = static CloudManager.bundleID & 0xFFFFFFFFFFFFLL;
        if ((qword_2811A6958 & 0x2000000000000000) != 0)
        {
          v78 = HIBYTE(qword_2811A6958) & 0xF;
        }

        if (v78)
        {
          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v79 = v0[338];
          v80 = v0[304];
          v81 = v0[303];
          v82 = __swift_project_value_buffer(v81, static CloudManager.Log);
          swift_beginAccess();
          v118 = *(v80 + 16);
          v122 = v82;
          v118(v79, v82, v81);
          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.info.getter();
          v85 = os_log_type_enabled(v83, v84);
          v86 = v0[304];
          v113 = v0[303];
          v115 = v0[338];
          if (v85)
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v124 = v88;
            *v87 = 136446466;
            swift_beginAccess();
            v89 = StaticString.description.getter();
            v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, &v124);

            *(v87 + 4) = v91;
            *(v87 + 12) = 2082;
            *(v87 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v124);
            _os_log_impl(&dword_21607C000, v83, v84, "%{public}s.%{public}s Computing CloudKit ID...", v87, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CE94770](v88, -1, -1);
            MEMORY[0x21CE94770](v87, -1, -1);
          }

          v92 = *(v86 + 8);
          v92(v115, v113);
          v93 = v0[337];
          v94 = v0[303];
          v124 = static CloudManager.deviceID;
          v125 = qword_2811A6948;

          MEMORY[0x21CE92100](46, 0xE100000000000000);
          v95 = static CloudManager.bundleID;
          v96 = qword_2811A6958;

          MEMORY[0x21CE92100](v95, v96);

          v98 = v124;
          v97 = v125;
          swift_beginAccess();
          static CloudManager.currentID = v98;
          qword_2811A6918 = v97;

          v118(v93, v122, v94);
          swift_bridgeObjectRetain_n();
          v99 = Logger.logObject.getter();
          v100 = static os_log_type_t.info.getter();
          v101 = os_log_type_enabled(v99, v100);
          v102 = v0[337];
          v103 = v0[303];
          if (v101)
          {
            v123 = v92;
            v104 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            v124 = v105;
            *v104 = 136446722;
            v119 = v102;
            swift_beginAccess();
            v106 = StaticString.description.getter();
            v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, &v124);

            *(v104 + 4) = v108;
            *(v104 + 12) = 2082;
            *(v104 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v124);
            *(v104 + 22) = 2080;

            v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v97, &v124);

            *(v104 + 24) = v109;
            swift_bridgeObjectRelease_n();
            _os_log_impl(&dword_21607C000, v99, v100, "%{public}s.%{public}s My CloudKit ID: %s", v104, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x21CE94770](v105, -1, -1);
            MEMORY[0x21CE94770](v104, -1, -1);

            v123(v119, v103);
          }

          else
          {
            swift_bridgeObjectRelease_n();

            v92(v102, v103);
          }
        }
      }

      v110 = swift_task_alloc();
      v0[370] = v110;
      *v110 = v0;
      v110[1] = CloudManager.initializeSyncEngine(wait:_:);

      return CloudManager.checkFreeSpace()(v0 + 3153);
    }

    else
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v38 = v0 + 271;
      v39 = v0[342];
      v40 = v0[304];
      v41 = v0[303];
      v42 = __swift_project_value_buffer(v41, static CloudManager.Log);
      v0[365] = v42;
      swift_beginAccess();
      v43 = *(v40 + 16);
      v0[366] = v43;
      v0[367] = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v43(v39, v42, v41);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();
      v46 = os_log_type_enabled(v44, v45);
      v47 = v0[342];
      v48 = v0[304];
      v49 = v0[303];
      if (v46)
      {
        v50 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v51 = v124;
        *v50 = 136446466;
        swift_beginAccess();
        v52 = StaticString.description.getter();
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v124);

        *(v50 + 4) = v54;
        *(v50 + 12) = 2082;
        *(v50 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v124);
        _os_log_impl(&dword_21607C000, v44, v45, "%{public}s.%{public}s Checking device ID...", v50, 0x16u);
        swift_arrayDestroy();
        v55 = v51;
        v38 = v0 + 271;
        MEMORY[0x21CE94770](v55, -1, -1);
        MEMORY[0x21CE94770](v50, -1, -1);
      }

      v56 = *(v48 + 8);
      v56(v47, v49);
      v0[368] = v56;
      if (one-time initialization token for container != -1)
      {
        swift_once();
      }

      v57 = static CloudManager.container;
      v0[18] = v0;
      v0[23] = v38;
      v0[19] = CloudManager.initializeSyncEngine(wait:_:);
      v58 = swift_continuation_init();
      v0[65] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
      v0[58] = MEMORY[0x277D85DD0];
      v0[59] = 1107296256;
      v0[60] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
      v0[61] = &block_descriptor_116;
      v0[62] = v58;
      [v57 fetchCurrentDeviceIDWithCompletionHandler_];

      return MEMORY[0x282200938](v0 + 18);
    }
  }
}

{
  v1 = v0[359];
  v2 = v0[292];

  v0[362] = [v1 currentDevice];

  return MEMORY[0x2822009F8](CloudManager.initializeSyncEngine(wait:_:), v2, 0);
}

{
  *(v0 + 2904) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CloudManager.initializeSyncEngine(wait:_:), v2, v1);
}

{
  v1 = v0[362];
  v2 = v0[292];

  v0[364] = [v1 userInterfaceIdiom];

  return MEMORY[0x2822009F8](CloudManager.initializeSyncEngine(wait:_:), v2, 0);
}

{
  v127 = v0;
  v1 = v0[356];
  v2 = v0[355];
  v3 = v0[343];
  v4 = v0[303];
  static CloudManager.systemIdiom = v0[364];
  v1(v3, v2, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v125 = v8;
    *v7 = 136446722;
    swift_beginAccess();
    v9 = StaticString.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v125);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v125);
    *(v7 + 22) = 2080;
    v15 = v0[358];
    v16 = v0[343];
    v17 = v0[303];
    v18 = StaticString.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v125);

    *(v7 + 24) = v20;
    _os_log_impl(&dword_21607C000, v5, v6, "%{public}s.%{public}s My Device Idiom: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v8, -1, -1);
    MEMORY[0x21CE94770](v7, -1, -1);

    v15(v16, v17);
  }

  else
  {
    v12 = v0[358];
    v13 = v0[343];
    v14 = v0[303];

    v12(v13, v14);
  }

  swift_beginAccess();
  v21 = static CloudManager.deviceID & 0xFFFFFFFFFFFFLL;
  if ((qword_2811A6948 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(qword_2811A6948) & 0xF;
  }

  if (v21)
  {
    swift_beginAccess();
    v22 = static CloudManager.bundleID & 0xFFFFFFFFFFFFLL;
    if ((qword_2811A6958 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(qword_2811A6958) & 0xF;
    }

    if (!v22)
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v23 = v0[340];
      v24 = v0[304];
      v25 = v0[303];
      v26 = __swift_project_value_buffer(v25, static CloudManager.Log);
      swift_beginAccess();
      v117 = *(v24 + 16);
      v121 = v26;
      v117(v23, v26, v25);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v0[340];
      v31 = v0[304];
      v32 = v0[303];
      if (v29)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v125 = v34;
        *v33 = 136446466;
        swift_beginAccess();
        v35 = StaticString.description.getter();
        v113 = v32;
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v125);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2082;
        *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v125);
        _os_log_impl(&dword_21607C000, v27, v28, "%{public}s.%{public}s Checking bundle ID...", v33, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v34, -1, -1);
        MEMORY[0x21CE94770](v33, -1, -1);

        v38 = *(v31 + 8);
        v38(v30, v113);
      }

      else
      {

        v38 = *(v31 + 8);
        v38(v30, v32);
      }

      v60 = [objc_opt_self() mainBundle];
      v61 = [v60 bundleIdentifier];

      if (v61)
      {
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;
      }

      else
      {
        v62 = 0;
        v64 = 0xE000000000000000;
      }

      v65 = v0[339];
      v66 = v0[303];
      static CloudManager.bundleID = v62;
      qword_2811A6958 = v64;

      v117(v65, v121, v66);
      swift_bridgeObjectRetain_n();
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.info.getter();
      v69 = os_log_type_enabled(v67, v68);
      v70 = v0[339];
      v71 = v0[303];
      if (v69)
      {
        v122 = v38;
        v72 = swift_slowAlloc();
        v118 = v71;
        v73 = swift_slowAlloc();
        v125 = v73;
        *v72 = 136446722;
        v115 = v70;
        swift_beginAccess();
        v74 = StaticString.description.getter();
        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v125);

        *(v72 + 4) = v76;
        *(v72 + 12) = 2082;
        *(v72 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v125);
        *(v72 + 22) = 2080;

        v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v125);

        *(v72 + 24) = v77;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_21607C000, v67, v68, "%{public}s.%{public}s My Bundle ID: %s", v72, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v73, -1, -1);
        MEMORY[0x21CE94770](v72, -1, -1);

        v122(v115, v118);
      }

      else
      {
        swift_bridgeObjectRelease_n();

        v38(v70, v71);
      }
    }

    v78 = static CloudManager.deviceID & 0xFFFFFFFFFFFFLL;
    if ((qword_2811A6948 & 0x2000000000000000) != 0)
    {
      v78 = HIBYTE(qword_2811A6948) & 0xF;
    }

    if (v78)
    {
      v79 = static CloudManager.bundleID & 0xFFFFFFFFFFFFLL;
      if ((qword_2811A6958 & 0x2000000000000000) != 0)
      {
        v79 = HIBYTE(qword_2811A6958) & 0xF;
      }

      if (v79)
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v80 = v0[338];
        v81 = v0[304];
        v82 = v0[303];
        v83 = __swift_project_value_buffer(v82, static CloudManager.Log);
        swift_beginAccess();
        v119 = *(v81 + 16);
        v123 = v83;
        v119(v80, v83, v82);
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.info.getter();
        v86 = os_log_type_enabled(v84, v85);
        v87 = v0[304];
        v114 = v0[303];
        v116 = v0[338];
        if (v86)
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v125 = v89;
          *v88 = 136446466;
          swift_beginAccess();
          v90 = StaticString.description.getter();
          v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, &v125);

          *(v88 + 4) = v92;
          *(v88 + 12) = 2082;
          *(v88 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v125);
          _os_log_impl(&dword_21607C000, v84, v85, "%{public}s.%{public}s Computing CloudKit ID...", v88, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v89, -1, -1);
          MEMORY[0x21CE94770](v88, -1, -1);
        }

        v93 = *(v87 + 8);
        v93(v116, v114);
        v94 = v0[337];
        v95 = v0[303];
        v125 = static CloudManager.deviceID;
        v126 = qword_2811A6948;

        MEMORY[0x21CE92100](46, 0xE100000000000000);
        v96 = static CloudManager.bundleID;
        v97 = qword_2811A6958;

        MEMORY[0x21CE92100](v96, v97);

        v99 = v125;
        v98 = v126;
        swift_beginAccess();
        static CloudManager.currentID = v99;
        qword_2811A6918 = v98;

        v119(v94, v123, v95);
        swift_bridgeObjectRetain_n();
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.info.getter();
        v102 = os_log_type_enabled(v100, v101);
        v103 = v0[337];
        v104 = v0[303];
        if (v102)
        {
          v124 = v93;
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v125 = v106;
          *v105 = 136446722;
          v120 = v103;
          swift_beginAccess();
          v107 = StaticString.description.getter();
          v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, &v125);

          *(v105 + 4) = v109;
          *(v105 + 12) = 2082;
          *(v105 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v125);
          *(v105 + 22) = 2080;

          v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v98, &v125);

          *(v105 + 24) = v110;
          swift_bridgeObjectRelease_n();
          _os_log_impl(&dword_21607C000, v100, v101, "%{public}s.%{public}s My CloudKit ID: %s", v105, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v106, -1, -1);
          MEMORY[0x21CE94770](v105, -1, -1);

          v124(v120, v104);
        }

        else
        {
          swift_bridgeObjectRelease_n();

          v93(v103, v104);
        }
      }
    }

    v111 = swift_task_alloc();
    v0[370] = v111;
    *v111 = v0;
    v111[1] = CloudManager.initializeSyncEngine(wait:_:);

    return CloudManager.checkFreeSpace()(v0 + 3153);
  }

  else
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v39 = v0 + 271;
    v40 = v0[342];
    v41 = v0[304];
    v42 = v0[303];
    v43 = __swift_project_value_buffer(v42, static CloudManager.Log);
    v0[365] = v43;
    swift_beginAccess();
    v44 = *(v41 + 16);
    v0[366] = v44;
    v0[367] = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v44(v40, v43, v42);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v0[342];
    v49 = v0[304];
    v50 = v0[303];
    if (v47)
    {
      v51 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v52 = v125;
      *v51 = 136446466;
      swift_beginAccess();
      v53 = StaticString.description.getter();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v125);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2082;
      *(v51 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v125);
      _os_log_impl(&dword_21607C000, v45, v46, "%{public}s.%{public}s Checking device ID...", v51, 0x16u);
      swift_arrayDestroy();
      v56 = v52;
      v39 = v0 + 271;
      MEMORY[0x21CE94770](v56, -1, -1);
      MEMORY[0x21CE94770](v51, -1, -1);
    }

    v57 = *(v49 + 8);
    v57(v48, v50);
    v0[368] = v57;
    if (one-time initialization token for container != -1)
    {
      swift_once();
    }

    v58 = static CloudManager.container;
    v0[18] = v0;
    v0[23] = v39;
    v0[19] = CloudManager.initializeSyncEngine(wait:_:);
    v59 = swift_continuation_init();
    v0[65] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    v0[58] = MEMORY[0x277D85DD0];
    v0[59] = 1107296256;
    v0[60] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    v0[61] = &block_descriptor_116;
    v0[62] = v59;
    [v58 fetchCurrentDeviceIDWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 18);
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 2952) = v2;
  v3 = *(v1 + 2336);
  if (v2)
  {
    v4 = CloudManager.initializeSyncEngine(wait:_:);
  }

  else
  {
    v4 = CloudManager.initializeSyncEngine(wait:_:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v111 = v0;
  v1 = v0[366];
  v2 = v0[365];
  v3 = v0[341];
  v4 = v0[303];
  v5 = v0[271];
  v6 = v0[272];
  static CloudManager.deviceID = v5;
  qword_2811A6948 = v6;

  v1(v3, v2, v4);
  swift_bridgeObjectRetain_n();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v99 = v0[341];
    v104 = v0[368];
    v95 = v0[303];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v109 = v10;
    *v9 = 136446722;
    swift_beginAccess();
    v11 = StaticString.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v109);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v109);
    *(v9 + 22) = 2080;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v109);

    *(v9 + 24) = v14;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_21607C000, v7, v8, "%{public}s.%{public}s My Device ID: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v10, -1, -1);
    MEMORY[0x21CE94770](v9, -1, -1);

    v104(v99, v95);
  }

  else
  {
    v15 = v0[368];
    v16 = v0[341];
    v17 = v0[303];
    swift_bridgeObjectRelease_n();

    v15(v16, v17);
  }

  swift_beginAccess();
  v18 = static CloudManager.bundleID & 0xFFFFFFFFFFFFLL;
  if ((qword_2811A6958 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(qword_2811A6958) & 0xF;
  }

  if (!v18)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v19 = v0[340];
    v20 = v0[304];
    v21 = v0[303];
    v22 = __swift_project_value_buffer(v21, static CloudManager.Log);
    swift_beginAccess();
    v105 = *(v20 + 16);
    v105(v19, v22, v21);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[340];
    v27 = v0[304];
    v28 = v0[303];
    if (v25)
    {
      v29 = swift_slowAlloc();
      v100 = v22;
      v30 = swift_slowAlloc();
      v109 = v30;
      *v29 = 136446466;
      swift_beginAccess();
      v31 = StaticString.description.getter();
      v96 = v26;
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v109);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v109);
      _os_log_impl(&dword_21607C000, v23, v24, "%{public}s.%{public}s Checking bundle ID...", v29, 0x16u);
      swift_arrayDestroy();
      v34 = v30;
      v22 = v100;
      MEMORY[0x21CE94770](v34, -1, -1);
      MEMORY[0x21CE94770](v29, -1, -1);

      v35 = *(v27 + 8);
      v35(v96, v28);
    }

    else
    {

      v35 = *(v27 + 8);
      v35(v26, v28);
    }

    v36 = [objc_opt_self() mainBundle];
    v37 = [v36 bundleIdentifier];

    if (v37)
    {
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0xE000000000000000;
    }

    v41 = v0[339];
    v42 = v0[303];
    static CloudManager.bundleID = v38;
    qword_2811A6958 = v40;

    v105(v41, v22, v42);
    swift_bridgeObjectRetain_n();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v0[339];
    v47 = v0[303];
    if (v45)
    {
      v48 = swift_slowAlloc();
      v106 = v35;
      v109 = swift_slowAlloc();
      v49 = v109;
      *v48 = 136446722;
      v101 = v46;
      swift_beginAccess();
      v50 = StaticString.description.getter();
      v97 = v47;
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v109);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2082;
      *(v48 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v109);
      *(v48 + 22) = 2080;

      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v109);

      *(v48 + 24) = v53;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_21607C000, v43, v44, "%{public}s.%{public}s My Bundle ID: %s", v48, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v49, -1, -1);
      MEMORY[0x21CE94770](v48, -1, -1);

      v106(v101, v97);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v35(v46, v47);
    }
  }

  v54 = static CloudManager.deviceID & 0xFFFFFFFFFFFFLL;
  if ((qword_2811A6948 & 0x2000000000000000) != 0)
  {
    v54 = HIBYTE(qword_2811A6948) & 0xF;
  }

  if (v54)
  {
    v55 = static CloudManager.bundleID & 0xFFFFFFFFFFFFLL;
    if ((qword_2811A6958 & 0x2000000000000000) != 0)
    {
      v55 = HIBYTE(qword_2811A6958) & 0xF;
    }

    if (v55)
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v56 = v0[338];
      v57 = v0[304];
      v58 = v0[303];
      v59 = __swift_project_value_buffer(v58, static CloudManager.Log);
      swift_beginAccess();
      v98 = *(v57 + 16);
      v102 = v59;
      v98(v56, v59, v58);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.info.getter();
      v62 = os_log_type_enabled(v60, v61);
      v63 = v0[338];
      v64 = v0[304];
      v107 = v0[303];
      if (v62)
      {
        v94 = v0[338];
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v109 = v66;
        *v65 = 136446466;
        swift_beginAccess();
        v67 = StaticString.description.getter();
        v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v109);

        *(v65 + 4) = v69;
        *(v65 + 12) = 2082;
        *(v65 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v109);
        _os_log_impl(&dword_21607C000, v60, v61, "%{public}s.%{public}s Computing CloudKit ID...", v65, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v66, -1, -1);
        MEMORY[0x21CE94770](v65, -1, -1);

        v70 = *(v64 + 8);
        v71 = v94;
      }

      else
      {

        v70 = *(v64 + 8);
        v71 = v63;
      }

      v72 = v107;
      v108 = v70;
      v70(v71, v72);
      v73 = v0[337];
      v74 = v0[303];
      v109 = static CloudManager.deviceID;
      v110 = qword_2811A6948;

      MEMORY[0x21CE92100](46, 0xE100000000000000);
      v75 = static CloudManager.bundleID;
      v76 = qword_2811A6958;

      MEMORY[0x21CE92100](v75, v76);

      v78 = v109;
      v77 = v110;
      swift_beginAccess();
      static CloudManager.currentID = v78;
      qword_2811A6918 = v77;

      v98(v73, v102, v74);
      swift_bridgeObjectRetain_n();
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.info.getter();
      v81 = os_log_type_enabled(v79, v80);
      v82 = v0[337];
      v83 = v0[303];
      if (v81)
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v109 = v85;
        *v84 = 136446722;
        v103 = v82;
        swift_beginAccess();
        v86 = StaticString.description.getter();
        v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, &v109);

        *(v84 + 4) = v88;
        *(v84 + 12) = 2082;
        *(v84 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v109);
        *(v84 + 22) = 2080;

        v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v77, &v109);

        *(v84 + 24) = v89;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_21607C000, v79, v80, "%{public}s.%{public}s My CloudKit ID: %s", v84, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v85, -1, -1);
        MEMORY[0x21CE94770](v84, -1, -1);

        v91 = v83;
        v90 = v103;
      }

      else
      {
        swift_bridgeObjectRelease_n();

        v90 = v82;
        v91 = v83;
      }

      v108(v90, v91);
    }
  }

  v92 = swift_task_alloc();
  v0[370] = v92;
  *v92 = v0;
  v92[1] = CloudManager.initializeSyncEngine(wait:_:);

  return CloudManager.checkFreeSpace()(v0 + 3153);
}

{
  v1 = *(*v0 + 2336);

  return MEMORY[0x2822009F8](CloudManager.initializeSyncEngine(wait:_:), v1, 0);
}

{
  v37 = v0;
  v1 = *(v0 + 3153);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v0 + 3152) == 3)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v2 = *(v0 + 2680);
        v3 = *(v0 + 2432);
        v4 = *(v0 + 2424);
        v5 = __swift_project_value_buffer(v4, static CloudManager.Log);
        swift_beginAccess();
        (*(v3 + 16))(v2, v5, v4);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.info.getter();
        v8 = os_log_type_enabled(v6, v7);
        v9 = *(v0 + 2680);
        v10 = *(v0 + 2432);
        v11 = *(v0 + 2424);
        if (!v8)
        {
          goto LABEL_17;
        }

        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v36 = v13;
        *v12 = 136446466;
        swift_beginAccess();
        v14 = StaticString.description.getter();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v36);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2082;
        *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v36);
        v17 = "%{public}s.%{public}s Free Space: .low";
      }

      else
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v26 = *(v0 + 2672);
        v27 = *(v0 + 2432);
        v28 = *(v0 + 2424);
        v29 = __swift_project_value_buffer(v28, static CloudManager.Log);
        swift_beginAccess();
        (*(v27 + 16))(v26, v29, v28);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.info.getter();
        v30 = os_log_type_enabled(v6, v7);
        v9 = *(v0 + 2672);
        v10 = *(v0 + 2432);
        v11 = *(v0 + 2424);
        if (!v30)
        {
          goto LABEL_17;
        }

        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v36 = v13;
        *v12 = 136446466;
        swift_beginAccess();
        v31 = StaticString.description.getter();
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v36);

        *(v12 + 4) = v33;
        *(v12 + 12) = 2082;
        *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v36);
        v17 = "%{public}s.%{public}s Free Space: .critical";
      }
    }

    else
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 2688);
      v19 = *(v0 + 2432);
      v20 = *(v0 + 2424);
      v21 = __swift_project_value_buffer(v20, static CloudManager.Log);
      swift_beginAccess();
      (*(v19 + 16))(v18, v21, v20);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.info.getter();
      v22 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 2688);
      v10 = *(v0 + 2432);
      v11 = *(v0 + 2424);
      if (!v22)
      {
        goto LABEL_17;
      }

      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v36 = v13;
      *v12 = 136446466;
      swift_beginAccess();
      v23 = StaticString.description.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v36);

      *(v12 + 4) = v25;
      *(v12 + 12) = 2082;
      *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v36);
      v17 = "%{public}s.%{public}s Free Space: .ok";
    }

    _os_log_impl(&dword_21607C000, v6, v7, v17, v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v13, -1, -1);
    MEMORY[0x21CE94770](v12, -1, -1);
LABEL_17:

    (*(v10 + 8))(v9, v11);
  }

  v34 = swift_task_alloc();
  *(v0 + 2968) = v34;
  *v34 = v0;
  v34[1] = CloudManager.initializeSyncEngine(wait:_:);

  return CloudManager.checkiCloudPhotoLibraryAvailable()();
}

{
  v28 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v0 + 3151) == 2)
  {
    if (*(v0 + 2240) == 1)
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v1 = *(v0 + 2664);
      v2 = *(v0 + 2432);
      v3 = *(v0 + 2424);
      v4 = __swift_project_value_buffer(v3, static CloudManager.Log);
      swift_beginAccess();
      (*(v2 + 16))(v1, v4, v3);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.info.getter();
      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 2664);
      v9 = *(v0 + 2432);
      v10 = *(v0 + 2424);
      if (!v7)
      {
        goto LABEL_12;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136446466;
      swift_beginAccess();
      v13 = StaticString.description.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v27);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v27);
      v16 = "%{public}s.%{public}s iCPL: Available";
    }

    else
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 2656);
      v18 = *(v0 + 2432);
      v19 = *(v0 + 2424);
      v20 = __swift_project_value_buffer(v19, static CloudManager.Log);
      swift_beginAccess();
      (*(v18 + 16))(v17, v20, v19);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.info.getter();
      v21 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 2656);
      v9 = *(v0 + 2432);
      v10 = *(v0 + 2424);
      if (!v21)
      {
        goto LABEL_12;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136446466;
      swift_beginAccess();
      v22 = StaticString.description.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v27);

      *(v11 + 4) = v24;
      *(v11 + 12) = 2082;
      *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v27);
      v16 = "%{public}s.%{public}s iCPL: NOT Available";
    }

    _os_log_impl(&dword_21607C000, v5, v6, v16, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v12, -1, -1);
    MEMORY[0x21CE94770](v11, -1, -1);
LABEL_12:

    (*(v9 + 8))(v8, v10);
  }

  v25 = swift_task_alloc();
  *(v0 + 2976) = v25;
  *v25 = v0;
  v25[1] = CloudManager.initializeSyncEngine(wait:_:);

  return CloudManager.checkHealthDataAvailable()();
}

{
  v160 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v0 + 3150) == 2)
  {
    if (*(v0 + 2256) == 1)
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v1 = *(v0 + 2648);
      v2 = *(v0 + 2432);
      v3 = *(v0 + 2424);
      v4 = __swift_project_value_buffer(v3, static CloudManager.Log);
      swift_beginAccess();
      (*(v2 + 16))(v1, v4, v3);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.info.getter();
      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 2648);
      v9 = *(v0 + 2432);
      v10 = *(v0 + 2424);
      if (!v7)
      {
        goto LABEL_12;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v159[0] = v12;
      *v11 = 136446466;
      swift_beginAccess();
      v13 = StaticString.description.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v159);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, v159);
      v16 = "%{public}s.%{public}s Health: Available";
    }

    else
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 2640);
      v18 = *(v0 + 2432);
      v19 = *(v0 + 2424);
      v20 = __swift_project_value_buffer(v19, static CloudManager.Log);
      swift_beginAccess();
      (*(v18 + 16))(v17, v20, v19);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.info.getter();
      v21 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 2640);
      v9 = *(v0 + 2432);
      v10 = *(v0 + 2424);
      if (!v21)
      {
        goto LABEL_12;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v159[0] = v12;
      *v11 = 136446466;
      swift_beginAccess();
      v22 = StaticString.description.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v159);

      *(v11 + 4) = v24;
      *(v11 + 12) = 2082;
      *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, v159);
      v16 = "%{public}s.%{public}s Health: NOT Available";
    }

    _os_log_impl(&dword_21607C000, v5, v6, v16, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v12, -1, -1);
    MEMORY[0x21CE94770](v11, -1, -1);
LABEL_12:

    (*(v9 + 8))(v8, v10);
  }

  v25 = *(v0 + 2336);
  v26 = OBJC_IVAR____TtC9MomentsUI12CloudManager_onboardedObserver;
  if (!*(v25 + OBJC_IVAR____TtC9MomentsUI12CloudManager_onboardedObserver))
  {
    v27 = (v0 + 528);
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 2632);
    v29 = *(v0 + 2432);
    v30 = *(v0 + 2424);
    v31 = __swift_project_value_buffer(v30, static CloudManager.Log);
    swift_beginAccess();
    (*(v29 + 16))(v28, v31, v30);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 2632);
    v36 = *(v0 + 2432);
    v37 = *(v0 + 2424);
    if (v34)
    {
      v38 = swift_slowAlloc();
      v155 = v37;
      v39 = swift_slowAlloc();
      v159[0] = v39;
      *v38 = 136446466;
      swift_beginAccess();
      v40 = StaticString.description.getter();
      v153 = v35;
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v159);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2082;
      *(v38 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, v159);
      _os_log_impl(&dword_21607C000, v32, v33, "%{public}s.%{public}s Registering onboradedObserver...", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v39, -1, -1);
      v43 = v38;
      v27 = (v0 + 528);
      MEMORY[0x21CE94770](v43, -1, -1);

      (*(v36 + 8))(v153, v155);
    }

    else
    {

      (*(v36 + 8))(v35, v37);
    }

    v44 = *(v0 + 2336);
    v45 = [objc_opt_self() defaultCenter];
    v46 = *MEMORY[0x277CCA858];
    *(v0 + 560) = partial apply for closure #3 in CloudManager.initializeSyncEngine(wait:_:);
    *(v0 + 568) = v44;
    *(v0 + 528) = MEMORY[0x277D85DD0];
    *(v0 + 536) = 1107296256;
    *(v0 + 544) = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
    *(v0 + 552) = &block_descriptor_31;
    v47 = _Block_copy(v27);

    v48 = [v45 addObserverForName:v46 object:0 queue:0 usingBlock:v47];
    _Block_release(v47);

    *(v25 + v26) = v48;
    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v0 + 3149) != 2)
  {
    goto LABEL_25;
  }

  if (one-time initialization token for Log != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v49 = *(v0 + 2624);
    v50 = *(v0 + 2432);
    v51 = *(v0 + 2424);
    v52 = __swift_project_value_buffer(v51, static CloudManager.Log);
    swift_beginAccess();
    (*(v50 + 16))(v49, v52, v51);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();
    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 2624);
    v57 = *(v0 + 2432);
    v58 = *(v0 + 2424);
    if (v55)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v159[0] = v60;
      *v59 = 136446466;
      swift_beginAccess();
      v61 = StaticString.description.getter();
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v159);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2082;
      *(v59 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, v159);
      _os_log_impl(&dword_21607C000, v53, v54, "%{public}s.%{public}s Checking onboarding status...", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v60, -1, -1);
      MEMORY[0x21CE94770](v59, -1, -1);
    }

    (*(v57 + 8))(v56, v58);
    CloudManager._updateOnboarded()();
LABEL_25:
    if (static CloudManager.systemIdiom != -1)
    {
      if ((qword_2811A6948 & 0x2000000000000000) != 0 ? HIBYTE(qword_2811A6948) & 0xF : static CloudManager.deviceID & 0xFFFFFFFFFFFFLL)
      {
        swift_beginAccess();
        v65 = static CloudManager.bundleID & 0xFFFFFFFFFFFFLL;
        if ((qword_2811A6958 & 0x2000000000000000) != 0)
        {
          v65 = HIBYTE(qword_2811A6958) & 0xF;
        }

        if (v65)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (*(v0 + 3148))
          {
            v66 = *(v0 + 2336);
            v67 = OBJC_IVAR____TtC9MomentsUI12CloudManager_initRetries;
            if (*(v66 + OBJC_IVAR____TtC9MomentsUI12CloudManager_initRetries) < 1)
            {
              if (one-time initialization token for Log != -1)
              {
                swift_once();
              }

              v135 = *(v0 + 2592);
              v136 = *(v0 + 2432);
              v137 = *(v0 + 2424);
              v138 = __swift_project_value_buffer(v137, static CloudManager.Log);
              swift_beginAccess();
              v72 = *(v136 + 16);
              v72(v135, v138, v137);
              v139 = Logger.logObject.getter();
              v140 = static os_log_type_t.info.getter();
              v141 = os_log_type_enabled(v139, v140);
              v142 = *(v0 + 2592);
              v143 = *(v0 + 2432);
              v144 = *(v0 + 2424);
              if (v141)
              {
                v145 = swift_slowAlloc();
                v146 = swift_slowAlloc();
                v159[0] = v146;
                *v145 = 136446466;
                swift_beginAccess();
                v147 = StaticString.description.getter();
                v158 = v142;
                v149 = v72;
                v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v148, v159);

                *(v145 + 4) = v150;
                v72 = v149;
                *(v145 + 12) = 2082;
                *(v145 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, v159);
                _os_log_impl(&dword_21607C000, v139, v140, "%{public}s.%{public}s Ready to initialize sync engine.", v145, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x21CE94770](v146, -1, -1);
                MEMORY[0x21CE94770](v145, -1, -1);

                v85 = *(v143 + 8);
                v85(v158, v144);
              }

              else
              {

                v85 = *(v143 + 8);
                v85(v142, v144);
              }
            }

            else
            {
              if (one-time initialization token for Log != -1)
              {
                swift_once();
              }

              v68 = *(v0 + 2600);
              v69 = *(v0 + 2432);
              v70 = *(v0 + 2424);
              v71 = __swift_project_value_buffer(v70, static CloudManager.Log);
              swift_beginAccess();
              v72 = *(v69 + 16);
              v72(v68, v71, v70);
              swift_retain_n();
              v73 = Logger.logObject.getter();
              v74 = static os_log_type_t.error.getter();
              v75 = os_log_type_enabled(v73, v74);
              v76 = *(v0 + 2600);
              v77 = *(v0 + 2432);
              v78 = *(v0 + 2424);
              if (v75)
              {
                v156 = *(v0 + 2424);
                v79 = swift_slowAlloc();
                v154 = swift_slowAlloc();
                *v79 = 136446722;
                v159[0] = v154;
                swift_beginAccess();
                v80 = StaticString.description.getter();
                v152 = v76;
                v82 = v67;
                v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, v159);

                *(v79 + 4) = v83;
                *(v79 + 12) = 2082;
                *(v79 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, v159);
                *(v79 + 22) = 2048;
                v84 = *(v66 + v82);

                *(v79 + 24) = v84;

                _os_log_impl(&dword_21607C000, v73, v74, "%{public}s.%{public}s Ready to initialize sync engine after %ld retries.", v79, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x21CE94770](v154, -1, -1);
                MEMORY[0x21CE94770](v79, -1, -1);

                v85 = *(v77 + 8);
                v85(v152, v156);
              }

              else
              {

                v85 = *(v77 + 8);
                v85(v76, v78);
              }
            }

            *(v0 + 3048) = v72;
            *(v0 + 3040) = v85;
            v151 = swift_task_alloc();
            *(v0 + 3056) = v151;
            *v151 = v0;
            v151[1] = CloudManager.initializeSyncEngine(wait:_:);

            return specialized static CloudManager._checkTCC(retrying:)();
          }

          else
          {
            if (one-time initialization token for Log != -1)
            {
              swift_once();
            }

            v111 = *(v0 + 2616);
            v112 = *(v0 + 2432);
            v113 = *(v0 + 2424);
            v114 = __swift_project_value_buffer(v113, static CloudManager.Log);
            *(v0 + 2984) = v114;
            swift_beginAccess();
            v115 = *(v112 + 16);
            *(v0 + 2992) = v115;
            *(v0 + 3000) = (v112 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
            v115(v111, v114, v113);
            v116 = Logger.logObject.getter();
            v117 = static os_log_type_t.debug.getter();
            v118 = os_log_type_enabled(v116, v117);
            v119 = *(v0 + 2616);
            v120 = *(v0 + 2432);
            v121 = *(v0 + 2424);
            if (v118)
            {
              v122 = swift_slowAlloc();
              v123 = swift_slowAlloc();
              v159[0] = v123;
              *v122 = 136446466;
              swift_beginAccess();
              v124 = StaticString.description.getter();
              v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, v159);

              *(v122 + 4) = v126;
              *(v122 + 12) = 2082;
              *(v122 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, v159);
              _os_log_impl(&dword_21607C000, v116, v117, "%{public}s.%{public}s Initializing subDBs...", v122, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x21CE94770](v123, -1, -1);
              MEMORY[0x21CE94770](v122, -1, -1);
            }

            v127 = *(v120 + 8);
            v127(v119, v121);
            *(v0 + 3008) = v127;
            v128 = (*(v0 + 2336) + OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel);
            swift_beginAccess();
            v129 = *v128;
            v130 = v128[1];
            *(v0 + 3016) = v130;
            ObjectType = swift_getObjectType();
            *(v0 + 3024) = ObjectType;
            *(v0 + 2280) = v129;
            v132 = *(v130 + 8);
            v133 = *(v132 + 88);
            swift_unknownObjectRetain();
            v157 = (v133 + *v133);
            v134 = swift_task_alloc();
            *(v0 + 3032) = v134;
            *v134 = v0;
            v134[1] = CloudManager.initializeSyncEngine(wait:_:);

            return v157(ObjectType, v132);
          }
        }
      }
    }

    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v86 = *(v0 + 2472);
    v87 = *(v0 + 2432);
    v88 = *(v0 + 2424);
    v89 = __swift_project_value_buffer(v88, static CloudManager.Log);
    swift_beginAccess();
    (*(v87 + 16))(v86, v89, v88);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    v92 = os_log_type_enabled(v90, v91);
    v93 = *(v0 + 2472);
    v94 = *(v0 + 2432);
    v95 = *(v0 + 2424);
    if (v92)
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v159[0] = v97;
      *v96 = 136446466;
      swift_beginAccess();
      v98 = StaticString.description.getter();
      v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, v159);

      *(v96 + 4) = v100;
      *(v96 + 12) = 2082;
      *(v96 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, v159);
      _os_log_impl(&dword_21607C000, v90, v91, "%{public}s.%{public}s Cloud sync needs to know what my Device ID and Bundle ID are! Retrying...", v96, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v97, -1, -1);
      MEMORY[0x21CE94770](v96, -1, -1);
    }

    (*(v94 + 8))(v93, v95);
    v101 = *(v0 + 2336);
    v102 = *(v101 + OBJC_IVAR____TtC9MomentsUI12CloudManager_initRetries);
    v103 = __OFADD__(v102, 1);
    v104 = v102 + 1;
    if (!v103)
    {
      break;
    }

    __break(1u);
LABEL_64:
    swift_once();
  }

  v105 = *(v0 + 2352);
  *(v101 + OBJC_IVAR____TtC9MomentsUI12CloudManager_initRetries) = v104;
  v106 = type metadata accessor for TaskPriority();
  (*(*(v106 - 8) + 56))(v105, 1, 1, v106);
  v107 = swift_allocObject();
  swift_weakInit();
  v108 = swift_allocObject();
  v108[2] = 0;
  v108[3] = 0;
  v108[4] = v107;
  _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(0, 0, v105, &async function pointer to partial apply for closure #4 in CloudManager.initializeSyncEngine(wait:_:), v108);

  outlined destroy of UTType?(v105, &_sScPSgMd);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 3147) = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 3140) = 0;

  static Published.subscript.setter();
  static CloudLog.LogEndInfo(_:)("initializeSyncEngine(wait:_:)", 29, 2, *(v0 + 2344), &protocol witness table for CloudManager);

  v109 = *(v0 + 8);

  return v109();
}

{
  v1 = *v0;
  v2 = *(*v0 + 3024);
  v3 = *(*v0 + 3016);
  v4 = *(*v0 + 2336);

  specialized CloudManager.cloudModel.setter(*(v1 + 2280), v4, v2, v3);

  return MEMORY[0x2822009F8](CloudManager.initializeSyncEngine(wait:_:), v4, 0);
}

{
  v61 = v0;
  v1 = *(v0 + 2992);
  v2 = *(v0 + 2984);
  v3 = *(v0 + 2608);
  v4 = *(v0 + 2424);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 3146) = 1;

  static Published.subscript.setter();
  v1(v3, v2, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v58 = *(v0 + 3008);
    v7 = *(v0 + 2608);
    v8 = *(v0 + 2424);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v60 = v10;
    *v9 = 136446466;
    swift_beginAccess();
    v11 = StaticString.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v60);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v60);
    _os_log_impl(&dword_21607C000, v5, v6, "%{public}s.%{public}s Initialized subDBs", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v10, -1, -1);
    MEMORY[0x21CE94770](v9, -1, -1);

    v58(v7, v8);
  }

  else
  {
    v14 = *(v0 + 3008);
    v15 = *(v0 + 2608);
    v16 = *(v0 + 2424);

    v14(v15, v16);
  }

  v17 = *(v0 + 2336);
  v18 = OBJC_IVAR____TtC9MomentsUI12CloudManager_initRetries;
  if (*(v17 + OBJC_IVAR____TtC9MomentsUI12CloudManager_initRetries) < 1)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v37 = *(v0 + 2592);
    v38 = *(v0 + 2432);
    v39 = *(v0 + 2424);
    v40 = __swift_project_value_buffer(v39, static CloudManager.Log);
    swift_beginAccess();
    v23 = *(v38 + 16);
    v23(v37, v40, v39);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 2592);
    v45 = *(v0 + 2432);
    v46 = *(v0 + 2424);
    if (v43)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v60 = v48;
      *v47 = 136446466;
      swift_beginAccess();
      v49 = StaticString.description.getter();
      v59 = v44;
      v51 = v23;
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v60);

      *(v47 + 4) = v52;
      v23 = v51;
      *(v47 + 12) = 2082;
      *(v47 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v60);
      _os_log_impl(&dword_21607C000, v41, v42, "%{public}s.%{public}s Ready to initialize sync engine.", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v48, -1, -1);
      MEMORY[0x21CE94770](v47, -1, -1);

      v36 = *(v45 + 8);
      v36(v59, v46);
    }

    else
    {

      v36 = *(v45 + 8);
      v36(v44, v46);
    }
  }

  else
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 2600);
    v20 = *(v0 + 2432);
    v21 = *(v0 + 2424);
    v22 = __swift_project_value_buffer(v21, static CloudManager.Log);
    swift_beginAccess();
    v23 = *(v20 + 16);
    v23(v19, v22, v21);
    swift_retain_n();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 2600);
    v28 = *(v0 + 2432);
    v29 = *(v0 + 2424);
    if (v26)
    {
      v57 = *(v0 + 2424);
      v30 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v30 = 136446722;
      v60 = v56;
      swift_beginAccess();
      v31 = StaticString.description.getter();
      v55 = v27;
      v33 = v18;
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v60);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v60);
      *(v30 + 22) = 2048;
      v35 = *(v17 + v33);

      *(v30 + 24) = v35;

      _os_log_impl(&dword_21607C000, v24, v25, "%{public}s.%{public}s Ready to initialize sync engine after %ld retries.", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v56, -1, -1);
      MEMORY[0x21CE94770](v30, -1, -1);

      v36 = *(v28 + 8);
      v36(v55, v57);
    }

    else
    {

      v36 = *(v28 + 8);
      v36(v27, v29);
    }
  }

  *(v0 + 3048) = v23;
  *(v0 + 3040) = v36;
  v53 = swift_task_alloc();
  *(v0 + 3056) = v53;
  *v53 = v0;
  v53[1] = CloudManager.initializeSyncEngine(wait:_:);

  return specialized static CloudManager._checkTCC(retrying:)();
}

{
  v24 = v0;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3048);
  v2 = *(v0 + 2584);
  v3 = *(v0 + 2432);
  v4 = *(v0 + 2424);
  v5 = __swift_project_value_buffer(v4, static CloudManager.Log);
  *(v0 + 3064) = v5;
  swift_beginAccess();
  *(v0 + 3072) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v1(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 3158);
    v21 = *(v0 + 2584);
    v22 = *(v0 + 3040);
    v9 = *(v0 + 2424);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136446466;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v23);
    *(v10 + 12) = 2082;
    *(v0 + 3145) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v23);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_21607C000, v6, v7, "CloudManager.%{public}s TCC status %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v11, -1, -1);
    MEMORY[0x21CE94770](v10, -1, -1);

    v22(v21, v9);
  }

  else
  {
    v15 = *(v0 + 3040);
    v16 = *(v0 + 2584);
    v17 = *(v0 + 2424);

    v15(v16, v17);
  }

  if (one-time initialization token for container != -1)
  {
    swift_once();
  }

  v18 = static CloudManager.container;
  *(v0 + 3080) = static CloudManager.container;
  *(v0 + 208) = v0;
  *(v0 + 248) = v0 + 2288;
  *(v0 + 216) = CloudManager.initializeSyncEngine(wait:_:);
  v19 = swift_continuation_init();
  *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo15CKAccountStatusVs5Error_pGMd);
  *(v0 + 400) = MEMORY[0x277D85DD0];
  *(v0 + 408) = 1107296256;
  *(v0 + 416) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CKAccountStatus, @unowned NSError?) -> () with result type CKAccountStatus;
  *(v0 + 424) = &block_descriptor_92;
  *(v0 + 432) = v19;
  [v18 accountStatusWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 208);
}

{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 3088) = v2;
  v3 = *(v1 + 2336);
  if (v2)
  {
    v4 = CloudManager.initializeSyncEngine(wait:_:);
  }

  else
  {
    v4 = CloudManager.initializeSyncEngine(wait:_:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v158 = v0;
  v1 = *(v0 + 2288);
  (*(v0 + 3048))(*(v0 + 2576), *(v0 + 3064), *(v0 + 2424));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v147 = *(v0 + 2576);
    v153 = *(v0 + 3040);
    v4 = *(v0 + 2424);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v156 = v6;
    *v5 = 136446466;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v156);
    *(v5 + 12) = 2082;
    *(v0 + 2296) = v1;
    type metadata accessor for CKAccountStatus(0);
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v156);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_21607C000, v2, v3, "CloudManager.%{public}s account status %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v6, -1, -1);
    MEMORY[0x21CE94770](v5, -1, -1);

    v153(v147, v4);
    if (v1 != 1)
    {
LABEL_3:
      v10 = *(v0 + 2416);
      v11 = *(v0 + 2408);
      v12 = *(v0 + 2400);
      *(v0 + 3136) = 22;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type POSIXError and conformance POSIXError, MEMORY[0x277CC8658]);
      _BridgedStoredNSError.init(_:userInfo:)();
      v13 = POSIXError._nsError.getter();
      (*(v11 + 8))(v10, v12);
      swift_willThrow();
      (*(v0 + 3048))(*(v0 + 2440), *(v0 + 3064), *(v0 + 2424));
      v14 = v13;
      v15 = v13;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 3040);
      v20 = *(v0 + 2440);
      v21 = *(v0 + 2424);
      if (v18)
      {
        v154 = *(v0 + 2440);
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v148 = v21;
        v24 = swift_slowAlloc();
        v156 = v24;
        *v22 = 136446722;
        swift_beginAccess();
        v25 = StaticString.description.getter();
        v144 = v19;
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v156);

        *(v22 + 4) = v27;
        *(v22 + 12) = 2082;
        *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v156);
        *(v22 + 22) = 2112;
        v28 = v13;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 24) = v29;
        *v23 = v29;

        _os_log_impl(&dword_21607C000, v16, v17, "%{public}s.%{public}s Unexpected error: %@", v22, 0x20u);
        outlined destroy of UTType?(v23, &_sSo8NSObjectCSgMd);
        MEMORY[0x21CE94770](v23, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v24, -1, -1);
        MEMORY[0x21CE94770](v22, -1, -1);

        v144(v154, v148);
      }

      else
      {

        v19(v20, v21);
      }

      v43 = *(v0 + 3158);
      *(*(v0 + 2336) + 136) = 0;

      if (v43 == 2 || (*(v0 + 3158) & 1) == 0)
      {
        v44 = 1;
      }

      else
      {
        specialized static DefaultsManager.Cloud.clearUserData()();
        v44 = 0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v45 = *(v0 + 2216);
      v46 = *(v0 + 2224);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 2200) = v44;
      *(v0 + 2208) = 0;

      static Published.subscript.setter();
      LOBYTE(v156) = v45;
      v47 = v46;
      CloudManager._accountState.didset(&v156, v46);

      v48 = *(v0 + 3064);
      v49 = *(v0 + 3048);
      v50 = *(v0 + 2512);
      v51 = *(v0 + 2424);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v52 = *(v0 + 2192);
      v49(v50, v48, v51);
      v53 = v52;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.info.getter();
      v155 = v53;
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v156 = v57;
        *v56 = 136446722;
        swift_beginAccess();
        v58 = StaticString.description.getter();
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v156);

        *(v56 + 4) = v60;
        *(v56 + 12) = 2082;
        *(v56 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v156);
        *(v56 + 22) = 2080;
        v149 = v52;
        if (v52)
        {
          v61 = [v53 recordName];
          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;
        }

        else
        {
          v64 = 0xE500000000000000;
          v62 = 0x3E6C696E3CLL;
        }

        v142 = *(v0 + 2512);
        v145 = *(v0 + 3040);
        v68 = *(v0 + 2424);
        v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v156);

        *(v56 + 24) = v69;

        _os_log_impl(&dword_21607C000, v54, v55, "%{public}s.%{public}s My User ID: %s", v56, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v57, -1, -1);
        MEMORY[0x21CE94770](v56, -1, -1);

        v145(v142, v68);
        v52 = v149;
      }

      else
      {
        v65 = *(v0 + 3040);
        v66 = *(v0 + 2512);
        v67 = *(v0 + 2424);

        v65(v66, v67);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 3144) = 0;

      static Published.subscript.setter();
      if (!v52)
      {
        *(*(v0 + 2336) + 136) = 0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v70 = *(v0 + 3143);
      if (v70 != 2 && (v70 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , *(v0 + 2272) > 0) || static CloudManager.systemIdiom == 1 && (specialized static DefaultsManager.Cloud.enableIPadCloudKitWithoutOnboarding.getter() & 1) != 0)
      {
        if (!v52)
        {
          goto LABEL_32;
        }

        v71 = *(v0 + 2336);
        if (*(v71 + 136))
        {
          goto LABEL_32;
        }

        if (one-time initialization token for DEBUG_NO_NETWORK != -1)
        {
          swift_once();
        }

        if (static CloudManager.DEBUG_NO_NETWORK)
        {
LABEL_32:
          (*(v0 + 3048))(*(v0 + 2488), *(v0 + 3064), *(v0 + 2424));
          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.info.getter();
          v74 = os_log_type_enabled(v72, v73);
          v75 = *(v0 + 3040);
          v76 = *(v0 + 2488);
          v77 = *(v0 + 2424);
          if (v74)
          {
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            v156 = v79;
            *v78 = 136446466;
            swift_beginAccess();
            v80 = StaticString.description.getter();
            v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &v156);

            *(v78 + 4) = v82;
            *(v78 + 12) = 2082;
            *(v78 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v156);
            _os_log_impl(&dword_21607C000, v72, v73, "%{public}s.%{public}s Skipping Sync Engine initialization", v78, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CE94770](v79, -1, -1);
            MEMORY[0x21CE94770](v78, -1, -1);
          }

          v75(v76, v77);
        }

        else
        {
          v151 = v71;
          (*(v0 + 3048))(*(v0 + 2504), *(v0 + 3064), *(v0 + 2424));
          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.info.getter();
          v97 = os_log_type_enabled(v95, v96);
          v98 = *(v0 + 3040);
          v99 = *(v0 + 2504);
          v100 = *(v0 + 2424);
          if (v97)
          {
            v101 = swift_slowAlloc();
            v146 = v98;
            v102 = swift_slowAlloc();
            v156 = v102;
            *v101 = 136446466;
            swift_beginAccess();
            v103 = StaticString.description.getter();
            v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v104, &v156);

            *(v101 + 4) = v105;
            *(v101 + 12) = 2082;
            *(v101 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v156);
            _os_log_impl(&dword_21607C000, v95, v96, "%{public}s.%{public}s Initializing sync engine...", v101, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CE94770](v102, -1, -1);
            MEMORY[0x21CE94770](v101, -1, -1);

            v146(v99, v100);
          }

          else
          {

            v98(v99, v100);
          }

          v143 = *(v0 + 3048);
          v138 = *(v0 + 2424);
          v140 = *(v0 + 3064);
          v106 = *(v0 + 2392);
          v133 = *(v0 + 2376);
          v134 = *(v0 + 2384);
          v135 = *(v0 + 2368);
          v137 = *(v0 + 2496);
          v107 = *(v0 + 2336);
          [*(v0 + 3080) privateCloudDatabase];
          v108 = v107 + OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
          swift_beginAccess();
          v109 = *(v108 + 8);
          ObjectType = swift_getObjectType();
          v111 = *(v109 + 16);
          swift_unknownObjectRetain();
          v111(ObjectType, v109);
          swift_unknownObjectRelease();
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, type metadata accessor for CloudManager);
          swift_unknownObjectRetain();
          CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
          CKSyncEngine.Configuration.automaticallySync.setter();
          (*(v133 + 16))(v134, v106, v135);
          type metadata accessor for CKSyncEngine();
          swift_allocObject();
          v112 = CKSyncEngine.init(_:)();
          *(v151 + 136) = v112;

          v143(v137, v140, v138);
          swift_retain_n();
          v113 = Logger.logObject.getter();
          v114 = static os_log_type_t.info.getter();
          v115 = os_log_type_enabled(v113, v114);
          v116 = *(v0 + 3040);
          v117 = *(v0 + 2496);
          v152 = *(v0 + 2424);
          v118 = *(v0 + 2392);
          v119 = *(v0 + 2376);
          v120 = *(v0 + 2368);
          if (v115)
          {
            v141 = *(v0 + 2496);
            v121 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            v156 = v136;
            *v121 = 136446722;
            v139 = v120;
            swift_beginAccess();
            v122 = StaticString.description.getter();
            v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v123, &v156);

            *(v121 + 4) = v124;
            *(v121 + 12) = 2082;
            *(v121 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v156);
            *(v121 + 22) = 2080;
            *(v0 + 2312) = v112;
            _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine and conformance CKSyncEngine, MEMORY[0x277CBBDB0]);
            v125 = dispatch thunk of CustomStringConvertible.description.getter();
            v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v126, &v156);

            *(v121 + 24) = v127;

            _os_log_impl(&dword_21607C000, v113, v114, "%{public}s.%{public}s Initialized sync engine: %s", v121, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x21CE94770](v136, -1, -1);
            MEMORY[0x21CE94770](v121, -1, -1);

            v116(v141, v152);
            (*(v119 + 8))(v118, v139);
          }

          else
          {

            v116(v117, v152);
            (*(v119 + 8))(v118, v120);
          }
        }
      }

      else
      {
        v83 = *(v0 + 2336);
        if (*(v83 + 136))
        {
          (*(v0 + 3048))(*(v0 + 2480), *(v0 + 3064), *(v0 + 2424));
          v84 = Logger.logObject.getter();
          v85 = static os_log_type_t.info.getter();
          v86 = os_log_type_enabled(v84, v85);
          v87 = *(v0 + 3040);
          v88 = *(v0 + 2480);
          v89 = *(v0 + 2424);
          if (v86)
          {
            v150 = *(v0 + 2424);
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v156 = v91;
            *v90 = 136446466;
            swift_beginAccess();
            v92 = StaticString.description.getter();
            v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, &v156);

            *(v90 + 4) = v94;
            *(v90 + 12) = 2082;
            *(v90 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v156);
            _os_log_impl(&dword_21607C000, v84, v85, "%{public}s.%{public}s Stopping sync engine...", v90, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CE94770](v91, -1, -1);
            MEMORY[0x21CE94770](v90, -1, -1);

            v87(v88, v150);
          }

          else
          {

            v87(v88, v89);
          }

          *(v83 + 136) = 0;
        }
      }

      v128 = *(v0 + 2336);
      v156 = 0;
      v157 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);
      MEMORY[0x21CE92100](0x6E614D64756F6C43, 0xED00002E72656761);
      MEMORY[0x21CE92100](0xD00000000000001DLL, 0x8000000216584A40);
      MEMORY[0x21CE92100](0xD000000000000010, 0x8000000216584A80);
      v129 = v156;
      v130 = v157;

      specialized static BTask.detached(name:operation:)(v129, v130, &async function pointer to partial apply for closure #5 in CloudManager.initializeSyncEngine(wait:_:), v128);

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 3141) = 0;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 3142) = 0;

      static Published.subscript.setter();
      static CloudLog.LogEndInfo(_:)("initializeSyncEngine(wait:_:)", 29, 2, *(v0 + 2344), &protocol witness table for CloudManager);

      v131 = *(v0 + 8);

      return v131();
    }
  }

  else
  {
    v30 = *(v0 + 3040);
    v31 = *(v0 + 2576);
    v32 = *(v0 + 2424);

    v30(v31, v32);
    if (v1 != 1)
    {
      goto LABEL_3;
    }
  }

  (*(v0 + 3048))(*(v0 + 2568), *(v0 + 3064), *(v0 + 2424));
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 3040);
  v37 = *(v0 + 2568);
  v38 = *(v0 + 2424);
  if (v35)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v156 = v40;
    *v39 = 136446210;
    *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v156);
    _os_log_impl(&dword_21607C000, v33, v34, "CloudManager.%{public}s account status is available", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x21CE94770](v40, -1, -1);
    MEMORY[0x21CE94770](v39, -1, -1);
  }

  v36(v37, v38);
  v41 = *(v0 + 3080);
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 2304;
  *(v0 + 88) = CloudManager.initializeSyncEngine(wait:_:);
  v42 = swift_continuation_init();
  *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo13CKAccountInfoCs5Error_pGMd);
  *(v0 + 336) = MEMORY[0x277D85DD0];
  *(v0 + 344) = 1107296256;
  *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CKAccountInfo?, @unowned NSError?) -> () with result type CKAccountInfo;
  *(v0 + 360) = &block_descriptor_103;
  *(v0 + 368) = v42;
  [v41 accountInfoWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 80);
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 3096) = v2;
  v3 = *(v1 + 2336);
  if (v2)
  {
    v4 = CloudManager.initializeSyncEngine(wait:_:);
  }

  else
  {
    v4 = CloudManager.initializeSyncEngine(wait:_:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v203 = v0;
  v1 = *(v0 + 2304);
  *(v0 + 3104) = v1;
  v2 = [v1 supportsDeviceToDeviceEncryption];
  v3 = *(v0 + 3064);
  v4 = *(v0 + 3048);
  v5 = *(v0 + 2424);
  if (v2)
  {
    v4(*(v0 + 2560), v3, v5);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 3040);
    v10 = *(v0 + 2560);
    v11 = *(v0 + 2424);
    if (v8)
    {
      v194 = *(v0 + 2560);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v201 = v13;
      *v12 = 136446466;
      swift_beginAccess();
      v14 = StaticString.description.getter();
      v187 = v9;
      v16 = v1;
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v201);

      *(v12 + 4) = v17;
      v1 = v16;
      *(v12 + 12) = 2082;
      *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v201);
      v18 = "%{public}s.%{public}s MANATEE SUPPORTED";
LABEL_6:
      _os_log_impl(&dword_21607C000, v6, v7, v18, v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v13, -1, -1);
      MEMORY[0x21CE94770](v12, -1, -1);

      v187(v194, v11);
      goto LABEL_8;
    }
  }

  else
  {
    v4(*(v0 + 2552), v3, v5);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    v19 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 3040);
    v10 = *(v0 + 2552);
    v11 = *(v0 + 2424);
    if (v19)
    {
      v194 = *(v0 + 2552);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v201 = v13;
      *v12 = 136446466;
      swift_beginAccess();
      v20 = StaticString.description.getter();
      v187 = v9;
      v22 = v1;
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v201);

      *(v12 + 4) = v23;
      v1 = v22;
      *(v12 + 12) = 2082;
      *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v201);
      v18 = "%{public}s.%{public}s MANATEE UNSUPPORTED";
      goto LABEL_6;
    }
  }

  v9(v10, v11);
LABEL_8:
  v24 = [v1 hasValidCredentials];
  v25 = *(v0 + 3064);
  v26 = *(v0 + 3048);
  v27 = *(v0 + 2424);
  if (v24)
  {
    v26(*(v0 + 2544), v25, v27);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 3040);
    v32 = *(v0 + 2544);
    v33 = *(v0 + 2424);
    if (v30)
    {
      v195 = *(v0 + 2544);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v201 = v35;
      *v34 = 136446466;
      swift_beginAccess();
      v36 = StaticString.description.getter();
      v188 = v31;
      v38 = v1;
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v201);

      *(v34 + 4) = v39;
      v1 = v38;
      *(v34 + 12) = 2082;
      *(v34 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v201);
      _os_log_impl(&dword_21607C000, v28, v29, "%{public}s.%{public}s account has valid credentials", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v35, -1, -1);
      MEMORY[0x21CE94770](v34, -1, -1);

      v188(v195, v33);
    }

    else
    {

      v31(v32, v33);
    }

    v51 = *(v0 + 3158);
    if (v51 == 2 || (v51 & 1) != 0)
    {
      v52 = *(v0 + 3080);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 2264;
      *(v0 + 24) = CloudManager.initializeSyncEngine(wait:_:);
      v53 = swift_continuation_init();
      *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CKRecordIDCs5Error_pGMd);
      *(v0 + 272) = MEMORY[0x277D85DD0];
      *(v0 + 280) = 1107296256;
      *(v0 + 288) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CKAccountInfo?, @unowned NSError?) -> () with result type CKAccountInfo;
      *(v0 + 296) = &block_descriptor_106_0;
      *(v0 + 304) = v53;
      [v52 fetchUserRecordIDWithCompletionHandler_];

      return MEMORY[0x282200938](v0 + 16);
    }

    v196 = (v0 + 3128);
    (*(v0 + 3048))(*(v0 + 2536), *(v0 + 3064), *(v0 + 2424));
    v40 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    v55 = os_log_type_enabled(v40, v54);
    v43 = *(v0 + 3040);
    v44 = *(v0 + 2536);
    v45 = *(v0 + 2424);
    if (v55)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v201 = v57;
      *v56 = 136446210;
      *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v201);
      _os_log_impl(&dword_21607C000, v40, v54, "CloudManager.%{public}s account has valid credentials BUT TCC=OFF", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x21CE94770](v57, -1, -1);
      MEMORY[0x21CE94770](v56, -1, -1);
    }

    goto LABEL_21;
  }

  v196 = (v0 + 3132);
  v26(*(v0 + 2528), v25, v27);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v0 + 3040);
  v44 = *(v0 + 2528);
  v45 = *(v0 + 2424);
  if (!v42)
  {
LABEL_21:

    v43(v44, v45);
    goto LABEL_22;
  }

  v46 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  v201 = v47;
  *v46 = 136446466;
  swift_beginAccess();
  v48 = StaticString.description.getter();
  v182 = v43;
  v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v201);

  *(v46 + 4) = v50;
  *(v46 + 12) = 2082;
  *(v46 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v201);
  _os_log_impl(&dword_21607C000, v40, v41, "%{public}s.%{public}s account invalid credentials", v46, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x21CE94770](v47, -1, -1);
  MEMORY[0x21CE94770](v46, -1, -1);

  v182(v44, v45);
LABEL_22:
  v58 = *(v0 + 2416);
  v59 = *(v0 + 2408);
  v60 = *(v0 + 2400);
  *v196 = 22;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type POSIXError and conformance POSIXError, MEMORY[0x277CC8658]);
  _BridgedStoredNSError.init(_:userInfo:)();
  v61 = POSIXError._nsError.getter();
  (*(v59 + 8))(v58, v60);
  swift_willThrow();

  (*(v0 + 3048))(*(v0 + 2440), *(v0 + 3064), *(v0 + 2424));
  v62 = v61;
  v63 = v61;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.error.getter();
  v66 = os_log_type_enabled(v64, v65);
  v67 = *(v0 + 3040);
  v68 = *(v0 + 2440);
  v69 = *(v0 + 2424);
  if (v66)
  {
    v197 = *(v0 + 2440);
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v189 = v69;
    v72 = swift_slowAlloc();
    v201 = v72;
    *v70 = 136446722;
    swift_beginAccess();
    v73 = StaticString.description.getter();
    v183 = v67;
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v201);

    *(v70 + 4) = v75;
    *(v70 + 12) = 2082;
    *(v70 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v201);
    *(v70 + 22) = 2112;
    v76 = v61;
    v77 = _swift_stdlib_bridgeErrorToNSError();
    *(v70 + 24) = v77;
    *v71 = v77;

    _os_log_impl(&dword_21607C000, v64, v65, "%{public}s.%{public}s Unexpected error: %@", v70, 0x20u);
    outlined destroy of UTType?(v71, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v71, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v72, -1, -1);
    MEMORY[0x21CE94770](v70, -1, -1);

    v183(v197, v189);
  }

  else
  {

    v67(v68, v69);
  }

  v78 = *(v0 + 3158);
  *(*(v0 + 2336) + 136) = 0;

  if (v78 == 2 || (*(v0 + 3158) & 1) == 0)
  {
    v79 = 1;
  }

  else
  {
    specialized static DefaultsManager.Cloud.clearUserData()();
    v79 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v80 = *(v0 + 2216);
  v81 = *(v0 + 2224);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 2200) = v79;
  *(v0 + 2208) = 0;

  static Published.subscript.setter();
  LOBYTE(v201) = v80;
  v82 = v81;
  CloudManager._accountState.didset(&v201, v81);

  v83 = *(v0 + 3064);
  v84 = *(v0 + 3048);
  v85 = *(v0 + 2512);
  v86 = *(v0 + 2424);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v87 = *(v0 + 2192);
  v84(v85, v83, v86);
  v88 = v87;
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v201 = v92;
    *v91 = 136446722;
    swift_beginAccess();
    v93 = StaticString.description.getter();
    v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, &v201);

    *(v91 + 4) = v95;
    *(v91 + 12) = 2082;
    *(v91 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v201);
    *(v91 + 22) = 2080;
    v198 = v87;
    if (v87)
    {
      v96 = [v88 recordName];
      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v98 = v88;
      v100 = v99;
    }

    else
    {
      v98 = v88;
      v100 = 0xE500000000000000;
      v97 = 0x3E6C696E3CLL;
    }

    v184 = *(v0 + 2512);
    v190 = *(v0 + 3040);
    v104 = *(v0 + 2424);
    v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v100, &v201);

    *(v91 + 24) = v105;

    _os_log_impl(&dword_21607C000, v89, v90, "%{public}s.%{public}s My User ID: %s", v91, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v92, -1, -1);
    MEMORY[0x21CE94770](v91, -1, -1);

    v190(v184, v104);
    v88 = v98;
    v87 = v198;
  }

  else
  {
    v101 = *(v0 + 3040);
    v102 = *(v0 + 2512);
    v103 = *(v0 + 2424);

    v101(v102, v103);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 3144) = 0;

  static Published.subscript.setter();
  if (!v87)
  {
    *(*(v0 + 2336) + 136) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v106 = *(v0 + 3143);
  if (v106 != 2 && (v106 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , *(v0 + 2272) > 0) || static CloudManager.systemIdiom == 1 && (specialized static DefaultsManager.Cloud.enableIPadCloudKitWithoutOnboarding.getter() & 1) != 0)
  {
    if (!v87)
    {
      goto LABEL_45;
    }

    v107 = *(v0 + 2336);
    if (*(v107 + 136))
    {
      goto LABEL_45;
    }

    if (one-time initialization token for DEBUG_NO_NETWORK != -1)
    {
      swift_once();
    }

    if (static CloudManager.DEBUG_NO_NETWORK)
    {
LABEL_45:
      (*(v0 + 3048))(*(v0 + 2488), *(v0 + 3064), *(v0 + 2424));
      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.info.getter();
      v110 = os_log_type_enabled(v108, v109);
      v111 = *(v0 + 3040);
      v112 = *(v0 + 2488);
      v113 = *(v0 + 2424);
      if (v110)
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        *v114 = 136446466;
        v201 = v115;
        swift_beginAccess();
        v116 = StaticString.description.getter();
        v191 = v112;
        v118 = v88;
        v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, &v201);

        *(v114 + 4) = v119;
        v88 = v118;
        *(v114 + 12) = 2082;
        *(v114 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v201);
        _os_log_impl(&dword_21607C000, v108, v109, "%{public}s.%{public}s Skipping Sync Engine initialization", v114, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v115, -1, -1);
        MEMORY[0x21CE94770](v114, -1, -1);

        v111(v191, v113);
      }

      else
      {

        v111(v112, v113);
      }
    }

    else
    {
      v192 = v107;
      (*(v0 + 3048))(*(v0 + 2504), *(v0 + 3064), *(v0 + 2424));
      v133 = Logger.logObject.getter();
      v134 = static os_log_type_t.info.getter();
      v135 = os_log_type_enabled(v133, v134);
      v136 = *(v0 + 3040);
      v137 = *(v0 + 2504);
      v138 = *(v0 + 2424);
      v200 = v88;
      if (v135)
      {
        v186 = *(v0 + 3040);
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v201 = v140;
        *v139 = 136446466;
        swift_beginAccess();
        v141 = StaticString.description.getter();
        v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, &v201);

        *(v139 + 4) = v143;
        *(v139 + 12) = 2082;
        *(v139 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v201);
        _os_log_impl(&dword_21607C000, v133, v134, "%{public}s.%{public}s Initializing sync engine...", v139, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v140, -1, -1);
        MEMORY[0x21CE94770](v139, -1, -1);

        v186(v137, v138);
      }

      else
      {

        v136(v137, v138);
      }

      v181 = *(v0 + 3048);
      v177 = *(v0 + 2424);
      v179 = *(v0 + 3064);
      v144 = *(v0 + 2392);
      v171 = *(v0 + 2376);
      v172 = *(v0 + 2384);
      v173 = *(v0 + 2368);
      v175 = *(v0 + 2496);
      v145 = *(v0 + 2336);
      [*(v0 + 3080) privateCloudDatabase];
      v146 = v145 + OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
      swift_beginAccess();
      v147 = *(v146 + 8);
      ObjectType = swift_getObjectType();
      v149 = *(v147 + 16);
      swift_unknownObjectRetain();
      v149(ObjectType, v147);
      swift_unknownObjectRelease();
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, type metadata accessor for CloudManager);
      swift_unknownObjectRetain();
      CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
      CKSyncEngine.Configuration.automaticallySync.setter();
      (*(v171 + 16))(v172, v144, v173);
      type metadata accessor for CKSyncEngine();
      swift_allocObject();
      v150 = CKSyncEngine.init(_:)();
      *(v192 + 136) = v150;

      v181(v175, v179, v177);
      swift_retain_n();
      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.info.getter();
      v153 = os_log_type_enabled(v151, v152);
      v154 = *(v0 + 3040);
      v155 = *(v0 + 2496);
      v193 = *(v0 + 2424);
      v156 = *(v0 + 2392);
      v157 = *(v0 + 2376);
      v158 = *(v0 + 2368);
      if (v153)
      {
        v180 = *(v0 + 3040);
        v159 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        v201 = v176;
        *v159 = 136446722;
        v178 = v158;
        swift_beginAccess();
        v160 = StaticString.description.getter();
        v174 = v155;
        v162 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v161, &v201);

        *(v159 + 4) = v162;
        *(v159 + 12) = 2082;
        *(v159 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v201);
        *(v159 + 22) = 2080;
        *(v0 + 2312) = v150;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine and conformance CKSyncEngine, MEMORY[0x277CBBDB0]);
        v163 = dispatch thunk of CustomStringConvertible.description.getter();
        v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v163, v164, &v201);

        *(v159 + 24) = v165;

        _os_log_impl(&dword_21607C000, v151, v152, "%{public}s.%{public}s Initialized sync engine: %s", v159, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v176, -1, -1);
        MEMORY[0x21CE94770](v159, -1, -1);

        v180(v174, v193);
        (*(v157 + 8))(v156, v178);
      }

      else
      {

        v154(v155, v193);
        (*(v157 + 8))(v156, v158);
      }

      v88 = v200;
    }
  }

  else
  {
    v120 = *(v0 + 2336);
    if (*(v120 + 136))
    {
      (*(v0 + 3048))(*(v0 + 2480), *(v0 + 3064), *(v0 + 2424));
      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.info.getter();
      v123 = os_log_type_enabled(v121, v122);
      v124 = *(v0 + 3040);
      v125 = *(v0 + 2480);
      v126 = *(v0 + 2424);
      if (v123)
      {
        v199 = *(v0 + 2424);
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v201 = v128;
        *v127 = 136446466;
        swift_beginAccess();
        v129 = StaticString.description.getter();
        v185 = v125;
        v131 = v88;
        v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, &v201);

        *(v127 + 4) = v132;
        v88 = v131;
        *(v127 + 12) = 2082;
        *(v127 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v201);
        _os_log_impl(&dword_21607C000, v121, v122, "%{public}s.%{public}s Stopping sync engine...", v127, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v128, -1, -1);
        MEMORY[0x21CE94770](v127, -1, -1);

        v124(v185, v199);
      }

      else
      {

        v124(v125, v126);
      }

      *(v120 + 136) = 0;
    }
  }

  v166 = *(v0 + 2336);
  v201 = 0;
  v202 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);
  MEMORY[0x21CE92100](0x6E614D64756F6C43, 0xED00002E72656761);
  MEMORY[0x21CE92100](0xD00000000000001DLL, 0x8000000216584A40);
  MEMORY[0x21CE92100](0xD000000000000010, 0x8000000216584A80);
  v168 = v201;
  v167 = v202;

  specialized static BTask.detached(name:operation:)(v168, v167, &async function pointer to partial apply for closure #5 in CloudManager.initializeSyncEngine(wait:_:), v166);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 3141) = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 3142) = 0;

  static Published.subscript.setter();
  static CloudLog.LogEndInfo(_:)("initializeSyncEngine(wait:_:)", 29, 2, *(v0 + 2344), &protocol witness table for CloudManager);

  v169 = *(v0 + 8);

  return v169();
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 3112) = v2;
  v3 = *(v1 + 2336);
  if (v2)
  {
    v4 = CloudManager.initializeSyncEngine(wait:_:);
  }

  else
  {
    v4 = CloudManager.initializeSyncEngine(wait:_:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v132 = v0;
  v1 = *(v0 + 2264);
  (*(v0 + 3048))(*(v0 + 2520), *(v0 + 3064), *(v0 + 2424));
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v121 = *(v0 + 2520);
    v125 = *(v0 + 3040);
    v117 = *(v0 + 2424);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v130 = v7;
    *v5 = 136446722;
    swift_beginAccess();
    v8 = StaticString.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v130);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2082;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v130);
    *(v5 + 22) = 2112;
    *(v5 + 24) = v2;
    *v6 = v2;

    _os_log_impl(&dword_21607C000, v3, v4, "%{public}s.%{public}s current user ID: %@", v5, 0x20u);
    outlined destroy of UTType?(v6, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v6, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v7, -1, -1);
    MEMORY[0x21CE94770](v5, -1, -1);

    v125(v121, v117);
  }

  else
  {
    v11 = *(v0 + 3040);
    v12 = *(v0 + 2520);
    v13 = *(v0 + 2424);

    v11(v12, v13);
  }

  v14 = *(v0 + 3104);
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v2;
  static Published.subscript.getter();

  v16 = *(v0 + 2152);
  v17 = *(v0 + 2160);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 2136) = 2;
  *(v0 + 2144) = v2;

  static Published.subscript.setter();
  LOBYTE(v130) = v16;
  v18 = v17;
  CloudManager._accountState.didset(&v130, v17);

  v19 = *(v0 + 3064);
  v20 = *(v0 + 3048);
  v21 = *(v0 + 2512);
  v22 = *(v0 + 2424);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v23 = *(v0 + 2192);
  v20(v21, v19, v22);
  v24 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v130 = v28;
    *v27 = 136446722;
    swift_beginAccess();
    v29 = StaticString.description.getter();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v130);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v130);
    *(v27 + 22) = 2080;
    v126 = v23;
    if (v23)
    {
      v32 = [v24 recordName];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v24;
      v36 = v35;
    }

    else
    {
      v34 = v24;
      v36 = 0xE500000000000000;
      v33 = 0x3E6C696E3CLL;
    }

    v118 = *(v0 + 2512);
    v122 = *(v0 + 3040);
    v40 = *(v0 + 2424);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v36, &v130);

    *(v27 + 24) = v41;

    _os_log_impl(&dword_21607C000, v25, v26, "%{public}s.%{public}s My User ID: %s", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v28, -1, -1);
    MEMORY[0x21CE94770](v27, -1, -1);

    v122(v118, v40);
    v24 = v34;
    v23 = v126;
  }

  else
  {
    v37 = *(v0 + 3040);
    v38 = *(v0 + 2512);
    v39 = *(v0 + 2424);

    v37(v38, v39);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 3144) = 0;

  static Published.subscript.setter();
  if (!v23)
  {
    *(*(v0 + 2336) + 136) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v42 = *(v0 + 3143);
  if (v42 != 2 && (v42 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , *(v0 + 2272) > 0) || static CloudManager.systemIdiom == 1 && (specialized static DefaultsManager.Cloud.enableIPadCloudKitWithoutOnboarding.getter() & 1) != 0)
  {
    if (!v23)
    {
      goto LABEL_20;
    }

    v43 = *(v0 + 2336);
    if (*(v43 + 136))
    {
      goto LABEL_20;
    }

    if (one-time initialization token for DEBUG_NO_NETWORK != -1)
    {
      swift_once();
    }

    if (static CloudManager.DEBUG_NO_NETWORK)
    {
LABEL_20:
      (*(v0 + 3048))(*(v0 + 2488), *(v0 + 3064), *(v0 + 2424));
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();
      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v0 + 3040);
      v48 = *(v0 + 2488);
      v49 = *(v0 + 2424);
      if (v46)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 136446466;
        v130 = v51;
        swift_beginAccess();
        v52 = StaticString.description.getter();
        v123 = v47;
        v54 = v24;
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v130);

        *(v50 + 4) = v55;
        v24 = v54;
        *(v50 + 12) = 2082;
        *(v50 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v130);
        _os_log_impl(&dword_21607C000, v44, v45, "%{public}s.%{public}s Skipping Sync Engine initialization", v50, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v51, -1, -1);
        MEMORY[0x21CE94770](v50, -1, -1);

        v123(v48, v49);
      }

      else
      {

        v47(v48, v49);
      }
    }

    else
    {
      v128 = v43;
      (*(v0 + 3048))(*(v0 + 2504), *(v0 + 3064), *(v0 + 2424));
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.info.getter();
      v71 = os_log_type_enabled(v69, v70);
      v72 = *(v0 + 3040);
      v73 = *(v0 + 2504);
      v74 = *(v0 + 2424);
      v116 = v24;
      if (v71)
      {
        v75 = swift_slowAlloc();
        v124 = v72;
        v76 = swift_slowAlloc();
        v130 = v76;
        *v75 = 136446466;
        swift_beginAccess();
        v77 = StaticString.description.getter();
        v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v130);

        *(v75 + 4) = v79;
        *(v75 + 12) = 2082;
        *(v75 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v130);
        _os_log_impl(&dword_21607C000, v69, v70, "%{public}s.%{public}s Initializing sync engine...", v75, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v76, -1, -1);
        MEMORY[0x21CE94770](v75, -1, -1);

        v124(v73, v74);
      }

      else
      {

        v72(v73, v74);
      }

      v120 = *(v0 + 3048);
      v112 = *(v0 + 2424);
      v114 = *(v0 + 3064);
      v80 = *(v0 + 2392);
      v107 = *(v0 + 2376);
      v108 = *(v0 + 2384);
      v109 = *(v0 + 2368);
      v111 = *(v0 + 2496);
      v81 = *(v0 + 2336);
      [*(v0 + 3080) privateCloudDatabase];
      v82 = v81 + OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
      swift_beginAccess();
      v83 = *(v82 + 8);
      ObjectType = swift_getObjectType();
      v85 = *(v83 + 16);
      swift_unknownObjectRetain();
      v85(ObjectType, v83);
      swift_unknownObjectRelease();
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, type metadata accessor for CloudManager);
      swift_unknownObjectRetain();
      CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
      CKSyncEngine.Configuration.automaticallySync.setter();
      (*(v107 + 16))(v108, v80, v109);
      type metadata accessor for CKSyncEngine();
      swift_allocObject();
      v86 = CKSyncEngine.init(_:)();
      *(v128 + 136) = v86;

      v120(v111, v114, v112);
      swift_retain_n();
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.info.getter();
      v89 = os_log_type_enabled(v87, v88);
      v90 = *(v0 + 3040);
      v91 = *(v0 + 2496);
      v129 = *(v0 + 2424);
      v92 = *(v0 + 2392);
      v93 = *(v0 + 2376);
      v94 = *(v0 + 2368);
      if (v89)
      {
        v115 = *(v0 + 2496);
        v95 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v130 = v110;
        *v95 = 136446722;
        v113 = v94;
        swift_beginAccess();
        v96 = StaticString.description.getter();
        v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, &v130);

        *(v95 + 4) = v98;
        *(v95 + 12) = 2082;
        *(v95 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v130);
        *(v95 + 22) = 2080;
        *(v0 + 2312) = v86;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine and conformance CKSyncEngine, MEMORY[0x277CBBDB0]);
        v99 = dispatch thunk of CustomStringConvertible.description.getter();
        v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, &v130);

        *(v95 + 24) = v101;

        _os_log_impl(&dword_21607C000, v87, v88, "%{public}s.%{public}s Initialized sync engine: %s", v95, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v110, -1, -1);
        MEMORY[0x21CE94770](v95, -1, -1);

        v90(v115, v129);
        (*(v93 + 8))(v92, v113);
      }

      else
      {

        v90(v91, v129);
        (*(v93 + 8))(v92, v94);
      }

      v24 = v116;
    }
  }

  else
  {
    v56 = *(v0 + 2336);
    if (*(v56 + 136))
    {
      (*(v0 + 3048))(*(v0 + 2480), *(v0 + 3064), *(v0 + 2424));
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.info.getter();
      v59 = os_log_type_enabled(v57, v58);
      v60 = *(v0 + 3040);
      v61 = *(v0 + 2480);
      v62 = *(v0 + 2424);
      if (v59)
      {
        v127 = *(v0 + 2424);
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v130 = v64;
        *v63 = 136446466;
        swift_beginAccess();
        v65 = StaticString.description.getter();
        v119 = v61;
        v67 = v24;
        v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v130);

        *(v63 + 4) = v68;
        v24 = v67;
        *(v63 + 12) = 2082;
        *(v63 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v130);
        _os_log_impl(&dword_21607C000, v57, v58, "%{public}s.%{public}s Stopping sync engine...", v63, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v64, -1, -1);
        MEMORY[0x21CE94770](v63, -1, -1);

        v60(v119, v127);
      }

      else
      {

        v60(v61, v62);
      }

      *(v56 + 136) = 0;
    }
  }

  v102 = *(v0 + 2336);
  v130 = 0;
  v131 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);
  MEMORY[0x21CE92100](0x6E614D64756F6C43, 0xED00002E72656761);
  MEMORY[0x21CE92100](0xD00000000000001DLL, 0x8000000216584A40);
  MEMORY[0x21CE92100](0xD000000000000010, 0x8000000216584A80);
  v103 = v130;
  v104 = v131;

  specialized static BTask.detached(name:operation:)(v103, v104, &async function pointer to partial apply for closure #5 in CloudManager.initializeSyncEngine(wait:_:), v102);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 3141) = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 3142) = 0;

  static Published.subscript.setter();
  static CloudLog.LogEndInfo(_:)("initializeSyncEngine(wait:_:)", 29, 2, *(v0 + 2344), &protocol witness table for CloudManager);

  v105 = *(v0 + 8);

  return v105();
}

{
  static CloudLog.LogEndInfo(_:)("initializeSyncEngine(wait:_:)", 29, 2, *(v0 + 2344), &protocol witness table for CloudManager);

  v1 = *(v0 + 8);

  return v1();
}

{
  v120 = v0;
  v1 = *(v0 + 2952);
  v2 = *(v0 + 2928);
  v3 = *(v0 + 2920);
  v4 = *(v0 + 2448);
  v5 = *(v0 + 2424);
  swift_willThrow();
  v2(v4, v3, v5);
  v6 = v1;
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 2952);
    v114 = *(v0 + 2448);
    v117 = *(v0 + 2944);
    v112 = *(v0 + 2424);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v119[0] = v13;
    *v11 = 136446722;
    swift_beginAccess();
    v14 = StaticString.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v119);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2082;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, v119);
    *(v11 + 22) = 2112;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v18;
    *v12 = v18;

    _os_log_impl(&dword_21607C000, v8, v9, "%{public}s.%{public}s Error gathering device info: %@", v11, 0x20u);
    outlined destroy of UTType?(v12, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v13, -1, -1);
    MEMORY[0x21CE94770](v11, -1, -1);

    v117(v114, v112);
  }

  else
  {
    v19 = *(v0 + 2952);
    v20 = *(v0 + 2944);
    v21 = *(v0 + 2448);
    v22 = *(v0 + 2424);

    v20(v21, v22);
  }

  if (static CloudManager.systemIdiom != -1)
  {
    if ((qword_2811A6948 & 0x2000000000000000) != 0 ? HIBYTE(qword_2811A6948) & 0xF : static CloudManager.deviceID & 0xFFFFFFFFFFFFLL)
    {
      swift_beginAccess();
      v24 = static CloudManager.bundleID & 0xFFFFFFFFFFFFLL;
      if ((qword_2811A6958 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(qword_2811A6958) & 0xF;
      }

      if (v24)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (*(v0 + 3148))
        {
          v25 = *(v0 + 2336);
          v26 = OBJC_IVAR____TtC9MomentsUI12CloudManager_initRetries;
          if (*(v25 + OBJC_IVAR____TtC9MomentsUI12CloudManager_initRetries) < 1)
          {
            if (one-time initialization token for Log != -1)
            {
              swift_once();
            }

            v94 = *(v0 + 2592);
            v95 = *(v0 + 2432);
            v96 = *(v0 + 2424);
            v97 = __swift_project_value_buffer(v96, static CloudManager.Log);
            swift_beginAccess();
            v31 = *(v95 + 16);
            v31(v94, v97, v96);
            v98 = Logger.logObject.getter();
            v99 = static os_log_type_t.info.getter();
            v100 = os_log_type_enabled(v98, v99);
            v101 = *(v0 + 2592);
            v102 = *(v0 + 2432);
            v103 = *(v0 + 2424);
            if (v100)
            {
              v104 = swift_slowAlloc();
              v105 = swift_slowAlloc();
              v119[0] = v105;
              *v104 = 136446466;
              swift_beginAccess();
              v106 = StaticString.description.getter();
              v118 = v101;
              v108 = v31;
              v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, v119);

              *(v104 + 4) = v109;
              v31 = v108;
              *(v104 + 12) = 2082;
              *(v104 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, v119);
              _os_log_impl(&dword_21607C000, v98, v99, "%{public}s.%{public}s Ready to initialize sync engine.", v104, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x21CE94770](v105, -1, -1);
              MEMORY[0x21CE94770](v104, -1, -1);

              v44 = *(v102 + 8);
              v44(v118, v103);
            }

            else
            {

              v44 = *(v102 + 8);
              v44(v101, v103);
            }
          }

          else
          {
            if (one-time initialization token for Log != -1)
            {
              swift_once();
            }

            v27 = *(v0 + 2600);
            v28 = *(v0 + 2432);
            v29 = *(v0 + 2424);
            v30 = __swift_project_value_buffer(v29, static CloudManager.Log);
            swift_beginAccess();
            v31 = *(v28 + 16);
            v31(v27, v30, v29);
            swift_retain_n();
            v32 = Logger.logObject.getter();
            v33 = static os_log_type_t.error.getter();
            v34 = os_log_type_enabled(v32, v33);
            v35 = *(v0 + 2600);
            v36 = *(v0 + 2432);
            v37 = *(v0 + 2424);
            if (v34)
            {
              v115 = *(v0 + 2424);
              v38 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              *v38 = 136446722;
              v119[0] = v113;
              swift_beginAccess();
              v39 = StaticString.description.getter();
              v111 = v35;
              v41 = v26;
              v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v119);

              *(v38 + 4) = v42;
              *(v38 + 12) = 2082;
              *(v38 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, v119);
              *(v38 + 22) = 2048;
              v43 = *(v25 + v41);

              *(v38 + 24) = v43;

              _os_log_impl(&dword_21607C000, v32, v33, "%{public}s.%{public}s Ready to initialize sync engine after %ld retries.", v38, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x21CE94770](v113, -1, -1);
              MEMORY[0x21CE94770](v38, -1, -1);

              v44 = *(v36 + 8);
              v44(v111, v115);
            }

            else
            {

              v44 = *(v36 + 8);
              v44(v35, v37);
            }
          }

          *(v0 + 3048) = v31;
          *(v0 + 3040) = v44;
          v110 = swift_task_alloc();
          *(v0 + 3056) = v110;
          *v110 = v0;
          v110[1] = CloudManager.initializeSyncEngine(wait:_:);

          return specialized static CloudManager._checkTCC(retrying:)();
        }

        if (one-time initialization token for Log == -1)
        {
          goto LABEL_27;
        }

        goto LABEL_42;
      }
    }
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 2472);
  v46 = *(v0 + 2432);
  v47 = *(v0 + 2424);
  v48 = __swift_project_value_buffer(v47, static CloudManager.Log);
  swift_beginAccess();
  (*(v46 + 16))(v45, v48, v47);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  v51 = os_log_type_enabled(v49, v50);
  v52 = *(v0 + 2472);
  v53 = *(v0 + 2432);
  v54 = *(v0 + 2424);
  if (v51)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v119[0] = v56;
    *v55 = 136446466;
    swift_beginAccess();
    v57 = StaticString.description.getter();
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v119);

    *(v55 + 4) = v59;
    *(v55 + 12) = 2082;
    *(v55 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, v119);
    _os_log_impl(&dword_21607C000, v49, v50, "%{public}s.%{public}s Cloud sync needs to know what my Device ID and Bundle ID are! Retrying...", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v56, -1, -1);
    MEMORY[0x21CE94770](v55, -1, -1);
  }

  (*(v53 + 8))(v52, v54);
  v60 = *(v0 + 2336);
  v61 = *(v60 + OBJC_IVAR____TtC9MomentsUI12CloudManager_initRetries);
  v62 = __OFADD__(v61, 1);
  v63 = v61 + 1;
  if (v62)
  {
    __break(1u);
LABEL_42:
    swift_once();
LABEL_27:
    v70 = *(v0 + 2616);
    v71 = *(v0 + 2432);
    v72 = *(v0 + 2424);
    v73 = __swift_project_value_buffer(v72, static CloudManager.Log);
    *(v0 + 2984) = v73;
    swift_beginAccess();
    v74 = *(v71 + 16);
    *(v0 + 2992) = v74;
    *(v0 + 3000) = (v71 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v74(v70, v73, v72);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();
    v77 = os_log_type_enabled(v75, v76);
    v78 = *(v0 + 2616);
    v79 = *(v0 + 2432);
    v80 = *(v0 + 2424);
    if (v77)
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v119[0] = v82;
      *v81 = 136446466;
      swift_beginAccess();
      v83 = StaticString.description.getter();
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, v119);

      *(v81 + 4) = v85;
      *(v81 + 12) = 2082;
      *(v81 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, v119);
      _os_log_impl(&dword_21607C000, v75, v76, "%{public}s.%{public}s Initializing subDBs...", v81, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v82, -1, -1);
      MEMORY[0x21CE94770](v81, -1, -1);
    }

    v86 = *(v79 + 8);
    v86(v78, v80);
    *(v0 + 3008) = v86;
    v87 = (*(v0 + 2336) + OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel);
    swift_beginAccess();
    v88 = *v87;
    v89 = v87[1];
    *(v0 + 3016) = v89;
    ObjectType = swift_getObjectType();
    *(v0 + 3024) = ObjectType;
    *(v0 + 2280) = v88;
    v91 = *(v89 + 8);
    v92 = *(v91 + 88);
    swift_unknownObjectRetain();
    v116 = (v92 + *v92);
    v93 = swift_task_alloc();
    *(v0 + 3032) = v93;
    *v93 = v0;
    v93[1] = CloudManager.initializeSyncEngine(wait:_:);

    return v116(ObjectType, v91);
  }

  v64 = *(v0 + 2352);
  *(v60 + OBJC_IVAR____TtC9MomentsUI12CloudManager_initRetries) = v63;
  v65 = type metadata accessor for TaskPriority();
  (*(*(v65 - 8) + 56))(v64, 1, 1, v65);
  v66 = swift_allocObject();
  swift_weakInit();
  v67 = swift_allocObject();
  v67[2] = 0;
  v67[3] = 0;
  v67[4] = v66;
  _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(0, 0, v64, &async function pointer to partial apply for closure #4 in CloudManager.initializeSyncEngine(wait:_:), v67);

  outlined destroy of UTType?(v64, &_sScPSgMd);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 3147) = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 3140) = 0;

  static Published.subscript.setter();
  static CloudLog.LogEndInfo(_:)("initializeSyncEngine(wait:_:)", 29, 2, *(v0 + 2344), &protocol witness table for CloudManager);

  v68 = *(v0 + 8);

  return v68();
}

{
  v135 = v0;
  swift_willThrow();
  v1 = *(v0 + 3088);
  (*(v0 + 3048))(*(v0 + 2440), *(v0 + 3064), *(v0 + 2424));
  v2 = v1;
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v124 = *(v0 + 2440);
    v129 = *(v0 + 3040);
    v120 = *(v0 + 2424);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v133 = v8;
    *v6 = 136446722;
    swift_beginAccess();
    v9 = StaticString.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v133);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v133);
    *(v6 + 22) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v13;
    *v7 = v13;

    _os_log_impl(&dword_21607C000, v4, v5, "%{public}s.%{public}s Unexpected error: %@", v6, 0x20u);
    outlined destroy of UTType?(v7, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v7, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v8, -1, -1);
    MEMORY[0x21CE94770](v6, -1, -1);

    v129(v124, v120);
  }

  else
  {
    v14 = *(v0 + 3040);
    v15 = *(v0 + 2440);
    v16 = *(v0 + 2424);

    v14(v15, v16);
  }

  v17 = *(v0 + 3158);
  *(*(v0 + 2336) + 136) = 0;

  if (v17 == 2 || (*(v0 + 3158) & 1) == 0)
  {
    v18 = 1;
  }

  else
  {
    specialized static DefaultsManager.Cloud.clearUserData()();
    v18 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v19 = *(v0 + 2216);
  v20 = *(v0 + 2224);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 2200) = v18;
  *(v0 + 2208) = 0;

  static Published.subscript.setter();
  LOBYTE(v133) = v19;
  v21 = v20;
  CloudManager._accountState.didset(&v133, v20);

  v22 = *(v0 + 3064);
  v23 = *(v0 + 3048);
  v24 = *(v0 + 2512);
  v25 = *(v0 + 2424);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v26 = *(v0 + 2192);
  v23(v24, v22, v25);
  v27 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v133 = v31;
    *v30 = 136446722;
    swift_beginAccess();
    v32 = StaticString.description.getter();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v133);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2082;
    *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v133);
    *(v30 + 22) = 2080;
    v130 = v26;
    if (v26)
    {
      v35 = [v27 recordName];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v27;
      v39 = v38;
    }

    else
    {
      v37 = v27;
      v39 = 0xE500000000000000;
      v36 = 0x3E6C696E3CLL;
    }

    v121 = *(v0 + 2512);
    v125 = *(v0 + 3040);
    v43 = *(v0 + 2424);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v39, &v133);

    *(v30 + 24) = v44;

    _os_log_impl(&dword_21607C000, v28, v29, "%{public}s.%{public}s My User ID: %s", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v31, -1, -1);
    MEMORY[0x21CE94770](v30, -1, -1);

    v125(v121, v43);
    v27 = v37;
    v26 = v130;
  }

  else
  {
    v40 = *(v0 + 3040);
    v41 = *(v0 + 2512);
    v42 = *(v0 + 2424);

    v40(v41, v42);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 3144) = 0;

  static Published.subscript.setter();
  if (!v26)
  {
    *(*(v0 + 2336) + 136) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v45 = *(v0 + 3143);
  if (v45 != 2 && (v45 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , *(v0 + 2272) > 0) || static CloudManager.systemIdiom == 1 && (specialized static DefaultsManager.Cloud.enableIPadCloudKitWithoutOnboarding.getter() & 1) != 0)
  {
    if (!v26)
    {
      goto LABEL_24;
    }

    v46 = *(v0 + 2336);
    if (*(v46 + 136))
    {
      goto LABEL_24;
    }

    if (one-time initialization token for DEBUG_NO_NETWORK != -1)
    {
      swift_once();
    }

    if (static CloudManager.DEBUG_NO_NETWORK)
    {
LABEL_24:
      (*(v0 + 3048))(*(v0 + 2488), *(v0 + 3064), *(v0 + 2424));
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.info.getter();
      v49 = os_log_type_enabled(v47, v48);
      v50 = *(v0 + 3040);
      v51 = *(v0 + 2488);
      v52 = *(v0 + 2424);
      if (v49)
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 136446466;
        v133 = v54;
        swift_beginAccess();
        v55 = StaticString.description.getter();
        v126 = v50;
        v57 = v27;
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v133);

        *(v53 + 4) = v58;
        v27 = v57;
        *(v53 + 12) = 2082;
        *(v53 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v133);
        _os_log_impl(&dword_21607C000, v47, v48, "%{public}s.%{public}s Skipping Sync Engine initialization", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v54, -1, -1);
        MEMORY[0x21CE94770](v53, -1, -1);

        v126(v51, v52);
      }

      else
      {

        v50(v51, v52);
      }
    }

    else
    {
      v127 = v46;
      (*(v0 + 3048))(*(v0 + 2504), *(v0 + 3064), *(v0 + 2424));
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.info.getter();
      v74 = os_log_type_enabled(v72, v73);
      v75 = *(v0 + 3040);
      v76 = *(v0 + 2504);
      v77 = *(v0 + 2424);
      v132 = v27;
      if (v74)
      {
        v78 = swift_slowAlloc();
        v123 = v75;
        v79 = swift_slowAlloc();
        v133 = v79;
        *v78 = 136446466;
        swift_beginAccess();
        v80 = StaticString.description.getter();
        v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &v133);

        *(v78 + 4) = v82;
        *(v78 + 12) = 2082;
        *(v78 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v133);
        _os_log_impl(&dword_21607C000, v72, v73, "%{public}s.%{public}s Initializing sync engine...", v78, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v79, -1, -1);
        MEMORY[0x21CE94770](v78, -1, -1);

        v123(v76, v77);
      }

      else
      {

        v75(v76, v77);
      }

      v119 = *(v0 + 3048);
      v115 = *(v0 + 2424);
      v117 = *(v0 + 3064);
      v83 = *(v0 + 2392);
      v110 = *(v0 + 2376);
      v111 = *(v0 + 2384);
      v112 = *(v0 + 2368);
      v114 = *(v0 + 2496);
      v84 = *(v0 + 2336);
      [*(v0 + 3080) privateCloudDatabase];
      v85 = v84 + OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
      swift_beginAccess();
      v86 = *(v85 + 8);
      ObjectType = swift_getObjectType();
      v88 = *(v86 + 16);
      swift_unknownObjectRetain();
      v88(ObjectType, v86);
      swift_unknownObjectRelease();
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, type metadata accessor for CloudManager);
      swift_unknownObjectRetain();
      CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
      CKSyncEngine.Configuration.automaticallySync.setter();
      (*(v110 + 16))(v111, v83, v112);
      type metadata accessor for CKSyncEngine();
      swift_allocObject();
      v89 = CKSyncEngine.init(_:)();
      *(v127 + 136) = v89;

      v119(v114, v117, v115);
      swift_retain_n();
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.info.getter();
      v92 = os_log_type_enabled(v90, v91);
      v93 = *(v0 + 3040);
      v94 = *(v0 + 2496);
      v128 = *(v0 + 2424);
      v95 = *(v0 + 2392);
      v96 = *(v0 + 2376);
      v97 = *(v0 + 2368);
      if (v92)
      {
        v118 = *(v0 + 2496);
        v98 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v133 = v113;
        *v98 = 136446722;
        v116 = v97;
        swift_beginAccess();
        v99 = StaticString.description.getter();
        v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, &v133);

        *(v98 + 4) = v101;
        *(v98 + 12) = 2082;
        *(v98 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v133);
        *(v98 + 22) = 2080;
        *(v0 + 2312) = v89;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine and conformance CKSyncEngine, MEMORY[0x277CBBDB0]);
        v102 = dispatch thunk of CustomStringConvertible.description.getter();
        v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, &v133);

        *(v98 + 24) = v104;

        _os_log_impl(&dword_21607C000, v90, v91, "%{public}s.%{public}s Initialized sync engine: %s", v98, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v113, -1, -1);
        MEMORY[0x21CE94770](v98, -1, -1);

        v93(v118, v128);
        (*(v96 + 8))(v95, v116);
      }

      else
      {

        v93(v94, v128);
        (*(v96 + 8))(v95, v97);
      }

      v27 = v132;
    }
  }

  else
  {
    v59 = *(v0 + 2336);
    if (*(v59 + 136))
    {
      (*(v0 + 3048))(*(v0 + 2480), *(v0 + 3064), *(v0 + 2424));
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.info.getter();
      v62 = os_log_type_enabled(v60, v61);
      v63 = *(v0 + 3040);
      v64 = *(v0 + 2480);
      v65 = *(v0 + 2424);
      if (v62)
      {
        v131 = *(v0 + 2424);
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v133 = v67;
        *v66 = 136446466;
        swift_beginAccess();
        v68 = StaticString.description.getter();
        v122 = v64;
        v70 = v27;
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v133);

        *(v66 + 4) = v71;
        v27 = v70;
        *(v66 + 12) = 2082;
        *(v66 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v133);
        _os_log_impl(&dword_21607C000, v60, v61, "%{public}s.%{public}s Stopping sync engine...", v66, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v67, -1, -1);
        MEMORY[0x21CE94770](v66, -1, -1);

        v63(v122, v131);
      }

      else
      {

        v63(v64, v65);
      }

      *(v59 + 136) = 0;
    }
  }

  v105 = *(v0 + 2336);
  v133 = 0;
  v134 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);
  MEMORY[0x21CE92100](0x6E614D64756F6C43, 0xED00002E72656761);
  MEMORY[0x21CE92100](0xD00000000000001DLL, 0x8000000216584A40);
  MEMORY[0x21CE92100](0xD000000000000010, 0x8000000216584A80);
  v106 = v133;
  v107 = v134;

  specialized static BTask.detached(name:operation:)(v106, v107, &async function pointer to partial apply for closure #5 in CloudManager.initializeSyncEngine(wait:_:), v105);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 3141) = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 3142) = 0;

  static Published.subscript.setter();
  static CloudLog.LogEndInfo(_:)("initializeSyncEngine(wait:_:)", 29, 2, *(v0 + 2344), &protocol witness table for CloudManager);

  v108 = *(v0 + 8);

  return v108();
}

{
  v135 = v0;
  swift_willThrow();
  v1 = *(v0 + 3096);
  (*(v0 + 3048))(*(v0 + 2440), *(v0 + 3064), *(v0 + 2424));
  v2 = v1;
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v124 = *(v0 + 2440);
    v129 = *(v0 + 3040);
    v120 = *(v0 + 2424);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v133 = v8;
    *v6 = 136446722;
    swift_beginAccess();
    v9 = StaticString.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v133);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v133);
    *(v6 + 22) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v13;
    *v7 = v13;

    _os_log_impl(&dword_21607C000, v4, v5, "%{public}s.%{public}s Unexpected error: %@", v6, 0x20u);
    outlined destroy of UTType?(v7, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v7, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v8, -1, -1);
    MEMORY[0x21CE94770](v6, -1, -1);

    v129(v124, v120);
  }

  else
  {
    v14 = *(v0 + 3040);
    v15 = *(v0 + 2440);
    v16 = *(v0 + 2424);

    v14(v15, v16);
  }

  v17 = *(v0 + 3158);
  *(*(v0 + 2336) + 136) = 0;

  if (v17 == 2 || (*(v0 + 3158) & 1) == 0)
  {
    v18 = 1;
  }

  else
  {
    specialized static DefaultsManager.Cloud.clearUserData()();
    v18 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v19 = *(v0 + 2216);
  v20 = *(v0 + 2224);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 2200) = v18;
  *(v0 + 2208) = 0;

  static Published.subscript.setter();
  LOBYTE(v133) = v19;
  v21 = v20;
  CloudManager._accountState.didset(&v133, v20);

  v22 = *(v0 + 3064);
  v23 = *(v0 + 3048);
  v24 = *(v0 + 2512);
  v25 = *(v0 + 2424);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v26 = *(v0 + 2192);
  v23(v24, v22, v25);
  v27 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v133 = v31;
    *v30 = 136446722;
    swift_beginAccess();
    v32 = StaticString.description.getter();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v133);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2082;
    *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v133);
    *(v30 + 22) = 2080;
    v130 = v26;
    if (v26)
    {
      v35 = [v27 recordName];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v27;
      v39 = v38;
    }

    else
    {
      v37 = v27;
      v39 = 0xE500000000000000;
      v36 = 0x3E6C696E3CLL;
    }

    v121 = *(v0 + 2512);
    v125 = *(v0 + 3040);
    v43 = *(v0 + 2424);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v39, &v133);

    *(v30 + 24) = v44;

    _os_log_impl(&dword_21607C000, v28, v29, "%{public}s.%{public}s My User ID: %s", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v31, -1, -1);
    MEMORY[0x21CE94770](v30, -1, -1);

    v125(v121, v43);
    v27 = v37;
    v26 = v130;
  }

  else
  {
    v40 = *(v0 + 3040);
    v41 = *(v0 + 2512);
    v42 = *(v0 + 2424);

    v40(v41, v42);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 3144) = 0;

  static Published.subscript.setter();
  if (!v26)
  {
    *(*(v0 + 2336) + 136) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v45 = *(v0 + 3143);
  if (v45 != 2 && (v45 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , *(v0 + 2272) > 0) || static CloudManager.systemIdiom == 1 && (specialized static DefaultsManager.Cloud.enableIPadCloudKitWithoutOnboarding.getter() & 1) != 0)
  {
    if (!v26)
    {
      goto LABEL_24;
    }

    v46 = *(v0 + 2336);
    if (*(v46 + 136))
    {
      goto LABEL_24;
    }

    if (one-time initialization token for DEBUG_NO_NETWORK != -1)
    {
      swift_once();
    }

    if (static CloudManager.DEBUG_NO_NETWORK)
    {
LABEL_24:
      (*(v0 + 3048))(*(v0 + 2488), *(v0 + 3064), *(v0 + 2424));
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.info.getter();
      v49 = os_log_type_enabled(v47, v48);
      v50 = *(v0 + 3040);
      v51 = *(v0 + 2488);
      v52 = *(v0 + 2424);
      if (v49)
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 136446466;
        v133 = v54;
        swift_beginAccess();
        v55 = StaticString.description.getter();
        v126 = v50;
        v57 = v27;
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v133);

        *(v53 + 4) = v58;
        v27 = v57;
        *(v53 + 12) = 2082;
        *(v53 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v133);
        _os_log_impl(&dword_21607C000, v47, v48, "%{public}s.%{public}s Skipping Sync Engine initialization", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v54, -1, -1);
        MEMORY[0x21CE94770](v53, -1, -1);

        v126(v51, v52);
      }

      else
      {

        v50(v51, v52);
      }
    }

    else
    {
      v127 = v46;
      (*(v0 + 3048))(*(v0 + 2504), *(v0 + 3064), *(v0 + 2424));
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.info.getter();
      v74 = os_log_type_enabled(v72, v73);
      v75 = *(v0 + 3040);
      v76 = *(v0 + 2504);
      v77 = *(v0 + 2424);
      v132 = v27;
      if (v74)
      {
        v78 = swift_slowAlloc();
        v123 = v75;
        v79 = swift_slowAlloc();
        v133 = v79;
        *v78 = 136446466;
        swift_beginAccess();
        v80 = StaticString.description.getter();
        v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &v133);

        *(v78 + 4) = v82;
        *(v78 + 12) = 2082;
        *(v78 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v133);
        _os_log_impl(&dword_21607C000, v72, v73, "%{public}s.%{public}s Initializing sync engine...", v78, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v79, -1, -1);
        MEMORY[0x21CE94770](v78, -1, -1);

        v123(v76, v77);
      }

      else
      {

        v75(v76, v77);
      }

      v119 = *(v0 + 3048);
      v115 = *(v0 + 2424);
      v117 = *(v0 + 3064);
      v83 = *(v0 + 2392);
      v110 = *(v0 + 2376);
      v111 = *(v0 + 2384);
      v112 = *(v0 + 2368);
      v114 = *(v0 + 2496);
      v84 = *(v0 + 2336);
      [*(v0 + 3080) privateCloudDatabase];
      v85 = v84 + OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
      swift_beginAccess();
      v86 = *(v85 + 8);
      ObjectType = swift_getObjectType();
      v88 = *(v86 + 16);
      swift_unknownObjectRetain();
      v88(ObjectType, v86);
      swift_unknownObjectRelease();
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, type metadata accessor for CloudManager);
      swift_unknownObjectRetain();
      CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
      CKSyncEngine.Configuration.automaticallySync.setter();
      (*(v110 + 16))(v111, v83, v112);
      type metadata accessor for CKSyncEngine();
      swift_allocObject();
      v89 = CKSyncEngine.init(_:)();
      *(v127 + 136) = v89;

      v119(v114, v117, v115);
      swift_retain_n();
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.info.getter();
      v92 = os_log_type_enabled(v90, v91);
      v93 = *(v0 + 3040);
      v94 = *(v0 + 2496);
      v128 = *(v0 + 2424);
      v95 = *(v0 + 2392);
      v96 = *(v0 + 2376);
      v97 = *(v0 + 2368);
      if (v92)
      {
        v118 = *(v0 + 2496);
        v98 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v133 = v113;
        *v98 = 136446722;
        v116 = v97;
        swift_beginAccess();
        v99 = StaticString.description.getter();
        v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, &v133);

        *(v98 + 4) = v101;
        *(v98 + 12) = 2082;
        *(v98 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v133);
        *(v98 + 22) = 2080;
        *(v0 + 2312) = v89;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine and conformance CKSyncEngine, MEMORY[0x277CBBDB0]);
        v102 = dispatch thunk of CustomStringConvertible.description.getter();
        v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, &v133);

        *(v98 + 24) = v104;

        _os_log_impl(&dword_21607C000, v90, v91, "%{public}s.%{public}s Initialized sync engine: %s", v98, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v113, -1, -1);
        MEMORY[0x21CE94770](v98, -1, -1);

        v93(v118, v128);
        (*(v96 + 8))(v95, v116);
      }

      else
      {

        v93(v94, v128);
        (*(v96 + 8))(v95, v97);
      }

      v27 = v132;
    }
  }

  else
  {
    v59 = *(v0 + 2336);
    if (*(v59 + 136))
    {
      (*(v0 + 3048))(*(v0 + 2480), *(v0 + 3064), *(v0 + 2424));
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.info.getter();
      v62 = os_log_type_enabled(v60, v61);
      v63 = *(v0 + 3040);
      v64 = *(v0 + 2480);
      v65 = *(v0 + 2424);
      if (v62)
      {
        v131 = *(v0 + 2424);
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v133 = v67;
        *v66 = 136446466;
        swift_beginAccess();
        v68 = StaticString.description.getter();
        v122 = v64;
        v70 = v27;
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v133);

        *(v66 + 4) = v71;
        v27 = v70;
        *(v66 + 12) = 2082;
        *(v66 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v133);
        _os_log_impl(&dword_21607C000, v60, v61, "%{public}s.%{public}s Stopping sync engine...", v66, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v67, -1, -1);
        MEMORY[0x21CE94770](v66, -1, -1);

        v63(v122, v131);
      }

      else
      {

        v63(v64, v65);
      }

      *(v59 + 136) = 0;
    }
  }

  v105 = *(v0 + 2336);
  v133 = 0;
  v134 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);
  MEMORY[0x21CE92100](0x6E614D64756F6C43, 0xED00002E72656761);
  MEMORY[0x21CE92100](0xD00000000000001DLL, 0x8000000216584A40);
  MEMORY[0x21CE92100](0xD000000000000010, 0x8000000216584A80);
  v106 = v133;
  v107 = v134;

  specialized static BTask.detached(name:operation:)(v106, v107, &async function pointer to partial apply for closure #5 in CloudManager.initializeSyncEngine(wait:_:), v105);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 3141) = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 3142) = 0;

  static Published.subscript.setter();
  static CloudLog.LogEndInfo(_:)("initializeSyncEngine(wait:_:)", 29, 2, *(v0 + 2344), &protocol witness table for CloudManager);

  v108 = *(v0 + 8);

  return v108();
}

{
  v136 = v0;
  v1 = *(v0 + 3104);
  swift_willThrow();

  v2 = *(v0 + 3112);
  (*(v0 + 3048))(*(v0 + 2440), *(v0 + 3064), *(v0 + 2424));
  v3 = v2;
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v125 = *(v0 + 2440);
    v130 = *(v0 + 3040);
    v121 = *(v0 + 2424);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v134 = v9;
    *v7 = 136446722;
    swift_beginAccess();
    v10 = StaticString.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v134);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v134);
    *(v7 + 22) = 2112;
    v13 = v2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v14;
    *v8 = v14;

    _os_log_impl(&dword_21607C000, v5, v6, "%{public}s.%{public}s Unexpected error: %@", v7, 0x20u);
    outlined destroy of UTType?(v8, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v9, -1, -1);
    MEMORY[0x21CE94770](v7, -1, -1);

    v130(v125, v121);
  }

  else
  {
    v15 = *(v0 + 3040);
    v16 = *(v0 + 2440);
    v17 = *(v0 + 2424);

    v15(v16, v17);
  }

  v18 = *(v0 + 3158);
  *(*(v0 + 2336) + 136) = 0;

  if (v18 == 2 || (*(v0 + 3158) & 1) == 0)
  {
    v19 = 1;
  }

  else
  {
    specialized static DefaultsManager.Cloud.clearUserData()();
    v19 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = *(v0 + 2216);
  v21 = *(v0 + 2224);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 2200) = v19;
  *(v0 + 2208) = 0;

  static Published.subscript.setter();
  LOBYTE(v134) = v20;
  v22 = v21;
  CloudManager._accountState.didset(&v134, v21);

  v23 = *(v0 + 3064);
  v24 = *(v0 + 3048);
  v25 = *(v0 + 2512);
  v26 = *(v0 + 2424);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v27 = *(v0 + 2192);
  v24(v25, v23, v26);
  v28 = v27;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v134 = v32;
    *v31 = 136446722;
    swift_beginAccess();
    v33 = StaticString.description.getter();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v134);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2082;
    *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v134);
    *(v31 + 22) = 2080;
    v131 = v27;
    if (v27)
    {
      v36 = [v28 recordName];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v28;
      v40 = v39;
    }

    else
    {
      v38 = v28;
      v40 = 0xE500000000000000;
      v37 = 0x3E6C696E3CLL;
    }

    v122 = *(v0 + 2512);
    v126 = *(v0 + 3040);
    v44 = *(v0 + 2424);
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v40, &v134);

    *(v31 + 24) = v45;

    _os_log_impl(&dword_21607C000, v29, v30, "%{public}s.%{public}s My User ID: %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v32, -1, -1);
    MEMORY[0x21CE94770](v31, -1, -1);

    v126(v122, v44);
    v28 = v38;
    v27 = v131;
  }

  else
  {
    v41 = *(v0 + 3040);
    v42 = *(v0 + 2512);
    v43 = *(v0 + 2424);

    v41(v42, v43);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 3144) = 0;

  static Published.subscript.setter();
  if (!v27)
  {
    *(*(v0 + 2336) + 136) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v46 = *(v0 + 3143);
  if (v46 != 2 && (v46 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , *(v0 + 2272) > 0) || static CloudManager.systemIdiom == 1 && (specialized static DefaultsManager.Cloud.enableIPadCloudKitWithoutOnboarding.getter() & 1) != 0)
  {
    if (!v27)
    {
      goto LABEL_24;
    }

    v47 = *(v0 + 2336);
    if (*(v47 + 136))
    {
      goto LABEL_24;
    }

    if (one-time initialization token for DEBUG_NO_NETWORK != -1)
    {
      swift_once();
    }

    if (static CloudManager.DEBUG_NO_NETWORK)
    {
LABEL_24:
      (*(v0 + 3048))(*(v0 + 2488), *(v0 + 3064), *(v0 + 2424));
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();
      v50 = os_log_type_enabled(v48, v49);
      v51 = *(v0 + 3040);
      v52 = *(v0 + 2488);
      v53 = *(v0 + 2424);
      if (v50)
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 136446466;
        v134 = v55;
        swift_beginAccess();
        v56 = StaticString.description.getter();
        v127 = v51;
        v58 = v28;
        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v134);

        *(v54 + 4) = v59;
        v28 = v58;
        *(v54 + 12) = 2082;
        *(v54 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v134);
        _os_log_impl(&dword_21607C000, v48, v49, "%{public}s.%{public}s Skipping Sync Engine initialization", v54, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v55, -1, -1);
        MEMORY[0x21CE94770](v54, -1, -1);

        v127(v52, v53);
      }

      else
      {

        v51(v52, v53);
      }
    }

    else
    {
      v128 = v47;
      (*(v0 + 3048))(*(v0 + 2504), *(v0 + 3064), *(v0 + 2424));
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.info.getter();
      v75 = os_log_type_enabled(v73, v74);
      v76 = *(v0 + 3040);
      v77 = *(v0 + 2504);
      v78 = *(v0 + 2424);
      v133 = v28;
      if (v75)
      {
        v79 = swift_slowAlloc();
        v124 = v76;
        v80 = swift_slowAlloc();
        v134 = v80;
        *v79 = 136446466;
        swift_beginAccess();
        v81 = StaticString.description.getter();
        v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v134);

        *(v79 + 4) = v83;
        *(v79 + 12) = 2082;
        *(v79 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v134);
        _os_log_impl(&dword_21607C000, v73, v74, "%{public}s.%{public}s Initializing sync engine...", v79, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v80, -1, -1);
        MEMORY[0x21CE94770](v79, -1, -1);

        v124(v77, v78);
      }

      else
      {

        v76(v77, v78);
      }

      v120 = *(v0 + 3048);
      v116 = *(v0 + 2424);
      v118 = *(v0 + 3064);
      v84 = *(v0 + 2392);
      v111 = *(v0 + 2376);
      v112 = *(v0 + 2384);
      v113 = *(v0 + 2368);
      v115 = *(v0 + 2496);
      v85 = *(v0 + 2336);
      [*(v0 + 3080) privateCloudDatabase];
      v86 = v85 + OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
      swift_beginAccess();
      v87 = *(v86 + 8);
      ObjectType = swift_getObjectType();
      v89 = *(v87 + 16);
      swift_unknownObjectRetain();
      v89(ObjectType, v87);
      swift_unknownObjectRelease();
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, type metadata accessor for CloudManager);
      swift_unknownObjectRetain();
      CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
      CKSyncEngine.Configuration.automaticallySync.setter();
      (*(v111 + 16))(v112, v84, v113);
      type metadata accessor for CKSyncEngine();
      swift_allocObject();
      v90 = CKSyncEngine.init(_:)();
      *(v128 + 136) = v90;

      v120(v115, v118, v116);
      swift_retain_n();
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.info.getter();
      v93 = os_log_type_enabled(v91, v92);
      v94 = *(v0 + 3040);
      v95 = *(v0 + 2496);
      v129 = *(v0 + 2424);
      v96 = *(v0 + 2392);
      v97 = *(v0 + 2376);
      v98 = *(v0 + 2368);
      if (v93)
      {
        v119 = *(v0 + 2496);
        v99 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v134 = v114;
        *v99 = 136446722;
        v117 = v98;
        swift_beginAccess();
        v100 = StaticString.description.getter();
        v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, &v134);

        *(v99 + 4) = v102;
        *(v99 + 12) = 2082;
        *(v99 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v134);
        *(v99 + 22) = 2080;
        *(v0 + 2312) = v90;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine and conformance CKSyncEngine, MEMORY[0x277CBBDB0]);
        v103 = dispatch thunk of CustomStringConvertible.description.getter();
        v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v104, &v134);

        *(v99 + 24) = v105;

        _os_log_impl(&dword_21607C000, v91, v92, "%{public}s.%{public}s Initialized sync engine: %s", v99, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v114, -1, -1);
        MEMORY[0x21CE94770](v99, -1, -1);

        v94(v119, v129);
        (*(v97 + 8))(v96, v117);
      }

      else
      {

        v94(v95, v129);
        (*(v97 + 8))(v96, v98);
      }

      v28 = v133;
    }
  }

  else
  {
    v60 = *(v0 + 2336);
    if (*(v60 + 136))
    {
      (*(v0 + 3048))(*(v0 + 2480), *(v0 + 3064), *(v0 + 2424));
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.info.getter();
      v63 = os_log_type_enabled(v61, v62);
      v64 = *(v0 + 3040);
      v65 = *(v0 + 2480);
      v66 = *(v0 + 2424);
      if (v63)
      {
        v132 = *(v0 + 2424);
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v134 = v68;
        *v67 = 136446466;
        swift_beginAccess();
        v69 = StaticString.description.getter();
        v123 = v65;
        v71 = v28;
        v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v134);

        *(v67 + 4) = v72;
        v28 = v71;
        *(v67 + 12) = 2082;
        *(v67 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216584A40, &v134);
        _os_log_impl(&dword_21607C000, v61, v62, "%{public}s.%{public}s Stopping sync engine...", v67, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v68, -1, -1);
        MEMORY[0x21CE94770](v67, -1, -1);

        v64(v123, v132);
      }

      else
      {

        v64(v65, v66);
      }

      *(v60 + 136) = 0;
    }
  }

  v106 = *(v0 + 2336);
  v134 = 0;
  v135 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);
  MEMORY[0x21CE92100](0x6E614D64756F6C43, 0xED00002E72656761);
  MEMORY[0x21CE92100](0xD00000000000001DLL, 0x8000000216584A40);
  MEMORY[0x21CE92100](0xD000000000000010, 0x8000000216584A80);
  v107 = v134;
  v108 = v135;

  specialized static BTask.detached(name:operation:)(v107, v108, &async function pointer to partial apply for closure #5 in CloudManager.initializeSyncEngine(wait:_:), v106);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 3141) = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 3142) = 0;

  static Published.subscript.setter();
  static CloudLog.LogEndInfo(_:)("initializeSyncEngine(wait:_:)", 29, 2, *(v0 + 2344), &protocol witness table for CloudManager);

  v109 = *(v0 + 8);

  return v109();
}

void CloudManager.initializeSyncEngine(wait:_:)()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = v2[292];
    (*(v2[346] + 8))(v2[348], v2[345]);

    MEMORY[0x2822009F8](CloudManager.initializeSyncEngine(wait:_:), v3, 0);
  }
}

{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = v2[292];
    (*(v2[346] + 8))(v2[347], v2[345]);

    MEMORY[0x2822009F8](CloudManager.initializeSyncEngine(wait:_:), v3, 0);
  }
}

uint64_t CloudManager.initializeSyncEngine(wait:_:)(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 2240) = a1;
  *(v3 + 2232) = v1;
  v4 = *(v2 + 2336);

  return MEMORY[0x2822009F8](CloudManager.initializeSyncEngine(wait:_:), v4, 0);
}

{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 2256) = a1;
  *(v3 + 2248) = v1;
  v4 = *(v2 + 2336);

  return MEMORY[0x2822009F8](CloudManager.initializeSyncEngine(wait:_:), v4, 0);
}

{
  v2 = *(*v1 + 2336);
  *(*v1 + 3158) = a1;

  return MEMORY[0x2822009F8](CloudManager.initializeSyncEngine(wait:_:), v2, 0);
}

uint64_t key path setter for CloudManager.$onboarded : CloudManager(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySbSg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

void CloudManager._accountState.didset(unsigned __int8 *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = v60;
  v10 = v61;
  v11 = v61;
  v12 = specialized != infix<A, B>(_:_:)(v8, a2, v9, v10);

  if (v12)
  {
    v57 = v9;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v4, static CloudManager.Log);
    swift_beginAccess();
    (*(v5 + 16))(v7, v13, v4);
    v14 = a2;
    v15 = v11;
    v16 = Logger.logObject.getter();
    v17 = v4;
    v18 = v5;
    v19 = static os_log_type_t.info.getter();
    v56 = v14;

    v58 = v19;
    if (os_log_type_enabled(v16, v19))
    {
      v53 = v7;
      v54 = v16;
      v20 = v18;
      v55 = v15;
      v21 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v59 = v52;
      *v21 = 136446978;
      v22 = 0xE900000000000074;
      v23 = 0xE800000000000000;
      v24 = 0x6E4964656E676973;
      if (v8 != 2)
      {
        v24 = 7104878;
        v23 = 0xE300000000000000;
      }

      v25 = 0x65696E6544636374;
      if (v8)
      {
        v22 = 0xE900000000000064;
      }

      else
      {
        v25 = 0x754F64656E676973;
      }

      if (v8 <= 1)
      {
        v26 = v25;
      }

      else
      {
        v26 = v24;
      }

      if (v8 <= 1)
      {
        v27 = v22;
      }

      else
      {
        v27 = v23;
      }

      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v59);

      *(v21 + 4) = v28;
      *(v21 + 12) = 2080;
      v29 = v17;
      v30 = v57;
      if (a2)
      {
        v31 = [v56 recordName];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
      }

      else
      {
        v34 = 0xE300000000000000;
        v32 = 7104878;
      }

      v35 = v53;
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v59);

      *(v21 + 14) = v36;
      *(v21 + 22) = 2082;
      v37 = 0xE900000000000074;
      v38 = 0xE800000000000000;
      v39 = 0x6E4964656E676973;
      v40 = 7104878;
      if (v30 != 2)
      {
        v39 = 7104878;
        v38 = 0xE300000000000000;
      }

      v41 = 0x65696E6544636374;
      if (v30)
      {
        v37 = 0xE900000000000064;
      }

      else
      {
        v41 = 0x754F64656E676973;
      }

      if (v30 <= 1)
      {
        v42 = v41;
      }

      else
      {
        v42 = v39;
      }

      if (v30 <= 1)
      {
        v43 = v37;
      }

      else
      {
        v43 = v38;
      }

      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v59);

      *(v21 + 24) = v44;
      *(v21 + 32) = 2080;
      if (v10)
      {
        v45 = v55;
        v46 = [v55 recordName];
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;
      }

      else
      {
        v48 = 0xE300000000000000;
        v45 = v55;
      }

      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v48, &v59);

      *(v21 + 34) = v49;
      v50 = v54;
      _os_log_impl(&dword_21607C000, v54, v58, "CloudManager.accountState changed: (%{public}s, %s) -> (%{public}s, %s)", v21, 0x2Au);
      v51 = v52;
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v51, -1, -1);
      MEMORY[0x21CE94770](v21, -1, -1);

      (*(v20 + 8))(v35, v29);
    }

    else
    {

      (*(v18 + 8))(v7, v17);
    }
  }

  else
  {
  }
}

uint64_t CloudManager._accountState.getter(_BYTE *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *a1 = v3;
  return result;
}

uint64_t specialized != infix<A, B>(_:_:)(unsigned __int8 a1, unint64_t a2, unsigned __int8 a3, void *a4)
{
  v4 = a4;
  if (a1 == 3)
  {
    if (a3 == 3)
    {
      v6 = a4;
      v7 = a2;
      goto LABEL_27;
    }

LABEL_5:
    v4 = a4;
    a2 = a2;
    v8 = 1;
    goto LABEL_31;
  }

  if (a3 == 3)
  {
    goto LABEL_5;
  }

  v9 = a1;
  if (!a1)
  {
    v11 = 0xE900000000000074;
    v10 = 0x754F64656E676973;
    v12 = a3;
    if (a3)
    {
      goto LABEL_14;
    }

LABEL_23:
    v14 = 0xE900000000000074;
    if (v10 != 0x754F64656E676973)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (a1 == 1)
  {
    v10 = 0x65696E6544636374;
  }

  else
  {
    v10 = 0x6E4964656E676973;
  }

  if (v9 == 1)
  {
    v11 = 0xE900000000000064;
  }

  else
  {
    v11 = 0xE800000000000000;
  }

  v12 = a3;
  if (!a3)
  {
    goto LABEL_23;
  }

LABEL_14:
  if (v12 == 1)
  {
    v13 = 0x65696E6544636374;
  }

  else
  {
    v13 = 0x6E4964656E676973;
  }

  if (v12 == 1)
  {
    v14 = 0xE900000000000064;
  }

  else
  {
    v14 = 0xE800000000000000;
  }

  if (v10 != v13)
  {
LABEL_26:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v18 = v4;
    v19 = a2;

    if ((v17 & 1) == 0)
    {
      v8 = 1;
      a2 = v19;
      v4 = v18;
      goto LABEL_31;
    }

    goto LABEL_27;
  }

LABEL_24:
  if (v11 != v14)
  {
    goto LABEL_26;
  }

  v15 = a4;
  v16 = a2;

LABEL_27:
  v20 = (a2 | v4) == 0;
  if (a2 && v4)
  {
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
    v21 = a2;
    v22 = v4;
    v20 = static NSObject.== infix(_:_:)();
  }

  v8 = v20 ^ 1;
LABEL_31:

  return v8 & 1;
}

uint64_t key path getter for CloudManager._accountState : CloudManager@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

void CloudManager._accountState.setter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a2;

  static Published.subscript.setter();
  v4 = v3;
  CloudManager._accountState.didset(v5, v3);
}

uint64_t CloudManager.accountUpdating.getter()
{
  return CloudManager.accountUpdating.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for CloudManager.accountUpdating : CloudManager@<X0>(_BYTE *a1@<X8>)
{
  return key path getter for CloudManager.accountUpdating : CloudManager(a1);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for CloudManager.$accountUpdating : CloudManager(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

Swift::Int CloudManager.FreeSpace.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](v1);
  return Hasher._finalize()();
}

uint64_t CloudManager.freeSpace.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path getter for CloudManager.freeSpace : CloudManager@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for CloudManager.freeSpace : CloudManager()
{
  return key path setter for CloudManager.freeSpace : CloudManager();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for CloudManager.$freeSpace : CloudManager(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI12CloudManagerC9FreeSpaceOSg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI12CloudManagerC9FreeSpaceOSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t key path setter for CloudManager.$cloudQuotaExceeded : CloudManager(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySbSg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t CloudManager.clearCloudQuotaExceeded()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](CloudManager.clearCloudQuotaExceeded(), v0, 0);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 24) = 0;

  static Published.subscript.setter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t key path setter for CloudManager.$iCloudPhotoLibraryAvailable : CloudManager(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySbSg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t key path setter for CloudManager.$healthDataAvailable : CloudManager(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySbSg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t CloudManager.checkHealthDataAvailable()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](CloudManager.checkHealthDataAvailable(), v0, 0);
}

{
  v1 = [objc_opt_self() isHealthDataAvailable];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = *(v0 + 24);
  if (v2 == 2 || ((v1 ^ v2) & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 24) = v1;

    static Published.subscript.setter();
  }

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t CloudManager.gcActiveCount.getter()
{
  return CloudManager.gcActiveCount.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for CloudManager.gcActiveCount : CloudManager@<X0>(void *a1@<X8>)
{
  return key path getter for CloudManager.gcActiveCount : CloudManager(a1);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for CloudManager.gcActiveCount : CloudManager()
{
  return key path setter for CloudManager.gcActiveCount : CloudManager();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t CloudManager.gcActiveCount.setter()
{
  return CloudManager.gcActiveCount.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*CloudManager.gcActiveCount.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return BlurGradientView.startPoint.modify;
}

uint64_t key path setter for CloudManager.$gcActiveCount : CloudManager(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t CloudManager.$gcActiveCount.setter(uint64_t a1)
{
  return CloudManager.$gcActiveCount.setter(a1);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*CloudManager.$gcActiveCount.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9MomentsUI12CloudManager__gcActiveCount;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return DBManager.$latestLocalSnapshotSequence.modify;
}

uint64_t (*CloudManager.uiActiveCount.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return BlurGradientView.locations.modify;
}

uint64_t key path setter for CloudManager.$uiActiveCount : CloudManager(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t (*CloudManager.$uiActiveCount.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9MomentsUI12CloudManager__uiActiveCount;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return DBManager.$latestLocalSnapshotSequence.modify;
}

uint64_t closure #2 in CloudManager.releaseUIActive(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = type metadata accessor for ContinuousClock();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in CloudManager.releaseUIActive(_:_:_:), a4, 0);
}

uint64_t closure #2 in CloudManager.releaseUIActive(_:_:_:)()
{
  v0[17] = objc_opt_self();
  v0[18] = type metadata accessor for MainActor();
  v0[19] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in CloudManager.releaseUIActive(_:_:_:), v2, v1);
}

{
  v1 = v0[17];
  v2 = v0[12];

  v0[20] = [v1 sharedApplication];

  return MEMORY[0x2822009F8](closure #2 in CloudManager.releaseUIActive(_:_:_:), v2, 0);
}

{
  v1 = v0[20];
  v2 = v0[13];
  v3 = MEMORY[0x21CE91FC0](0xD000000000000017, 0x80000002165848C0);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000017;
  v4[3] = 0x80000002165848C0;
  v4[4] = v2;
  v0[6] = partial apply for closure #1 in closure #2 in CloudManager.releaseUIActive(_:_:_:);
  v0[7] = v4;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed () -> ();
  v0[5] = &block_descriptor_458;
  v5 = _Block_copy(v0 + 2);

  v0[21] = [v1 beginBackgroundTaskWithName:v3 expirationHandler:v5];
  _Block_release(v5);

  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = closure #2 in CloudManager.releaseUIActive(_:_:_:);

  return specialized Clock.sleep(for:tolerance:)(1000000000000000000, 0, 0, 0, 1);
}

{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = v2[16];
  v4 = v2[15];
  v5 = v2[14];
  v6 = v2[12];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v7 = closure #2 in CloudManager.releaseUIActive(_:_:_:);
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v7 = closure #2 in CloudManager.releaseUIActive(_:_:_:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v1 = v0[12];
  v2 = OBJC_IVAR____TtC9MomentsUI12CloudManager__uiActiveIDs;
  swift_beginAccess();
  v3 = *(*(v1 + v2) + 16);
  if ((static Task<>.isCancelled.getter() & 1) == 0 && !v3)
  {
    v4 = v0[12];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[11] = 0;

    static Published.subscript.setter();

    specialized BTask.init(name:operation:)(0xD000000000000017, 0x80000002165848C0, &async function pointer to partial apply for closure #2 in closure #2 in CloudManager.releaseUIActive(_:_:_:), v4);
    notify_post("com.apple.momentsd.ui-active-status-updated");
  }

  v5 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
  withUnsafeCurrentTask<A>(body:)();
  v6 = OBJC_IVAR____TtC9MomentsUI12CloudManager__uiActiveTask;
  if (*(v5 + OBJC_IVAR____TtC9MomentsUI12CloudManager__uiActiveTask))
  {

    isCancelled = swift_task_isCancelled();

    if (isCancelled)
    {
      *(v5 + v6) = 0;
    }
  }

  v0[24] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in CloudManager.releaseUIActive(_:_:_:), v9, v8);
}

{
  v1 = v0[12];
  v2 = OBJC_IVAR____TtC9MomentsUI12CloudManager__uiActiveIDs;
  swift_beginAccess();
  v3 = *(*(v1 + v2) + 16);
  if ((static Task<>.isCancelled.getter() & 1) == 0 && !v3)
  {
    v4 = v0[12];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[11] = 0;

    static Published.subscript.setter();

    specialized BTask.init(name:operation:)(0xD000000000000017, 0x80000002165848C0, &async function pointer to partial apply for closure #2 in closure #2 in CloudManager.releaseUIActive(_:_:_:), v4);
    notify_post("com.apple.momentsd.ui-active-status-updated");
  }

  v5 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
  withUnsafeCurrentTask<A>(body:)();
  v6 = OBJC_IVAR____TtC9MomentsUI12CloudManager__uiActiveTask;
  if (*(v5 + OBJC_IVAR____TtC9MomentsUI12CloudManager__uiActiveTask))
  {

    isCancelled = swift_task_isCancelled();

    if (isCancelled)
    {
      *(v5 + v6) = 0;
    }
  }

  v0[24] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in CloudManager.releaseUIActive(_:_:_:), v9, v8);
}

{
  v1 = v0[17];
  v2 = v0[12];

  v0[25] = [v1 sharedApplication];

  return MEMORY[0x2822009F8](closure #2 in CloudManager.releaseUIActive(_:_:_:), v2, 0);
}

{
  v1 = v0[25];
  [v1 endBackgroundTask_];

  v2 = v0[1];

  return v2();
}

uint64_t closure #1 in closure #2 in CloudManager.releaseUIActive(_:_:_:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, static CloudManager.Log);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20[0] = v13;
    *v12 = 136446722;
    swift_beginAccess();
    v14 = StaticString.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v20);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x80000002165848C0, v20);
    *(v12 + 22) = 2080;
    *(v12 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, a2, v20);
    _os_log_impl(&dword_21607C000, v9, v10, "%{public}s.%{public}s Cancelling background task for: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v13, -1, -1);
    MEMORY[0x21CE94770](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
  return withUnsafeCurrentTask<A>(body:)();
}

uint64_t closure #2 in closure #2 in CloudManager.releaseUIActive(_:_:_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudManager.initializeSyncEngine(wait:_:)(0, 0xD00000000000002ALL, 0x80000002165857F0);
}

uint64_t closure #1 in closure #1 in closure #2 in CloudManager.releaseUIActive(_:_:_:)@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSctSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  outlined init with copy of DateInterval?(a1, &v11 - v5, &_sSctSgMd);
  v7 = type metadata accessor for UnsafeCurrentTask();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  if (v9 == 1)
  {
    result = outlined destroy of UTType?(v6, &_sSctSgMd);
  }

  else
  {
    UnsafeCurrentTask.cancel()();
    result = (*(v8 + 8))(v6, v7);
  }

  *a2 = v9 == 1;
  return result;
}

{
  return sub_216094F4C(a1, a2);
}

uint64_t CloudManager.dbManager.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t CloudManager.snapshotGeneration.getter()
{
  return CloudManager.snapshotGeneration.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double key path getter for CloudManager.snapshotGeneration : CloudManager@<D0>(_OWORD *a1@<X8>)
{
  return key path getter for CloudManager.snapshotGeneration : CloudManager(a1);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for CloudManager.snapshotGeneration : CloudManager()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for CloudManager.$snapshotGeneration : CloudManager(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

Swift::Void __swiftcall CloudManager.setSnapshotGeneration(_:)(Swift::String_optional a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t key path setter for CloudManager.$pendingDBChanges : CloudManager(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t CloudManager.latestLocalSnapshotSequence.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double key path getter for CloudManager.latestLocalSnapshotSequence : CloudManager@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 17) = v5;
  return result;
}

uint64_t key path setter for CloudManager.latestLocalSnapshotSequence : CloudManager()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for CloudManager.$latestLocalSnapshotSequence : CloudManager(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVys6UInt64V8sequence_AGSg11suggestionstSg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64V8sequence_AESg11suggestionstSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t CloudManager.newlyOnboardedDevices.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for CloudManager.newlyOnboardedDevices : CloudManager@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for CloudManager.newlyOnboardedDevices : CloudManager()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for CloudManager.$newlyOnboardedDevices : CloudManager(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay9MomentsUI11CloudDeviceVG_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9MomentsUI11CloudDeviceVGGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t CloudManager.clearNewlyOnboardedDevices()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](CloudManager.clearNewlyOnboardedDevices(), v0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CloudManager.clearNewlyOnboardedDevices(), v2, v1);
}

{

  v1 = CloudManager.devicesDB.getter();
  v0[4] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = CloudManager.clearNewlyOnboardedDevices();

    return CloudDevicesDB.clearNewlyOnboardedDevices()();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](CloudManager.clearNewlyOnboardedDevices(), v1, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CloudManager.devicesDB.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7)
  {
    ObjectType = swift_getObjectType();
    v2 = (*(v8 + 40))(ObjectType, v8);
    result = swift_unknownObjectRelease();
    v3 = *(v2 + 16);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
    v3 = *(MEMORY[0x277D84F90] + 16);
    if (!v3)
    {
LABEL_9:

      return 0;
    }
  }

  v4 = 0;
  v5 = v2 + 32;
  while (v4 < *(v2 + 16))
  {
    outlined init with copy of DBObject(v5, &v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI10CloudSubDB_pMd);
    type metadata accessor for CloudDevicesDB();
    result = swift_dynamicCast();
    if (result)
    {

      return v6;
    }

    ++v4;
    v5 += 40;
    if (v3 == v4)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}