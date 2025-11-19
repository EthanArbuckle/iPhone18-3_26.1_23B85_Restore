uint64_t OUTLINED_FUNCTION_11_0()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_11_2()
{

  JUMPOUT(0x223DD4390);
}

void OUTLINED_FUNCTION_11_3()
{

  JUMPOUT(0x223DD4390);
}

void static FeatureStoreService.insert<A>(taskId:interactionId:item:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_9_1();
  v99 = v22;
  v24 = v23;
  v94 = v25;
  v95 = v26;
  v28 = v27;
  v30 = v29;
  v100 = v31;
  v33 = v32;
  v97 = a21;
  v98 = a22;
  v34 = type metadata accessor for DispatchQoS();
  v35 = OUTLINED_FUNCTION_0(v34);
  v89 = v36;
  v90 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2();
  v41 = v40 - v39;
  OUTLINED_FUNCTION_0_0();
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_11_1();
  v92 = v48;
  v93 = v47;
  MEMORY[0x28223BE20](v49);
  v51 = &v82 - v50;
  v52 = type metadata accessor for Logger();
  v53 = OUTLINED_FUNCTION_0(v52);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_2();
  v64 = v59 - v58;
  v60 = Logger.service.unsafeMutableAddressor();
  v88 = v55;
  v61 = *(v55 + 16);
  v91 = v52;
  v61(v64, v60, v52);
  v101 = v43;
  v62 = *(v43 + 16);
  v96 = v28;
  v86 = v62;
  v62(v51, v28, v24);

  v87 = v64;
  v63 = Logger.logObject.getter();
  LODWORD(v64) = static os_log_type_t.debug.getter();

  v65 = v33;

  if (os_log_type_enabled(v63, v64))
  {
    OUTLINED_FUNCTION_6_1();
    v66 = swift_slowAlloc();
    v84 = OUTLINED_FUNCTION_14_0();
    v103[0] = v84;
    *v66 = 136315650;
    DynamicType = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v67 = String.init<A>(describing:)();
    v85 = v41;
    v68 = v67;
    v83 = v64;
    v64 = v24;
    v70 = v69;
    (*(v101 + 8))(v51, v64);
    v41 = v85;
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v103);

    *(v66 + 4) = v71;
    *(v66 + 12) = 2080;
    *(v66 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v65, v103);
    *(v66 + 22) = 2080;
    v24 = v64;
    *(v66 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v30, v103);
    _os_log_impl(&dword_223066000, v63, v83, "Will submit insertion task of type %s with taskId: %s,  interactionId: %s", v66, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();

    (*(v88 + 8))(v87, v91);
  }

  else
  {

    (*(v88 + 8))(v87, v91);
    (*(v101 + 8))(v51, v24);
  }

  v72 = v65;
  v73 = v93;
  v86(v93, v96, v24);
  v74 = v101;
  v75 = (*(v101 + 80) + 80) & ~*(v101 + 80);
  v76 = swift_allocObject();
  v77 = v24;
  v78 = v76;
  v80 = v97;
  v79 = v98;
  *(v76 + 2) = v77;
  *(v76 + 3) = v80;
  *(v76 + 4) = v79;
  *(v76 + 5) = v64;
  v81 = v100;
  *(v76 + 6) = v99;
  *(v76 + 7) = v72;
  *(v76 + 8) = v81;
  *(v76 + 9) = v30;
  (*(v74 + 32))(&v76[v75], v73);

  default argument 0 of static FeatureStoreService.performInsert(qos:insertBlock:completion:)();
  static FeatureStoreService.performInsert(qos:insertBlock:completion:)(v41, partial apply for closure #1 in static FeatureStoreService.insert<A>(taskId:interactionId:item:completion:), v78, v94, v95);

  (*(v89 + 8))(v41, v90);
  OUTLINED_FUNCTION_8_1();
}

uint64_t OUTLINED_FUNCTION_8()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_8_2()
{
  v2 = v0[18];
  v3 = v0[12];
  v12 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  return type metadata accessor for FeatureStoreService();
}

uint64_t OUTLINED_FUNCTION_8_4()
{
  v1 = *(v0 + 536);
  outlined init with take of InstrumentationStreamsProviderProtocol((v0 + 136), v0 + 96);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v2);

  return MEMORY[0x282137798](v2, v3);
}

void OUTLINED_FUNCTION_1()
{

  JUMPOUT(0x223DD4390);
}

uint64_t OUTLINED_FUNCTION_4()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static FeatureStoreService.performRetrieve<A>(retrieveBlock:)(v3, a3, v4 - 8);
}

uint64_t OUTLINED_FUNCTION_4_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_1_4()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[9];
  v8 = v0[3];
  v7 = v0[4];
  v9 = *(v0[14] + 32);
  return v0[2];
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_7()
{

  JUMPOUT(0x223DD3460);
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD000000000000026;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD000000000000026;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return swift_beginAccess();
}

uint64_t static LogSignpost.begin(logger:_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v55 = a2;
  v56 = a3;
  v54 = a4;
  v52 = type metadata accessor for OSSignpostID();
  v7 = OUTLINED_FUNCTION_0(v52);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v50 - v15;
  v17 = type metadata accessor for Logger();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2();
  v25 = v24 - v23;
  v53 = type metadata accessor for OSSignposter();
  v26 = OUTLINED_FUNCTION_0(v53);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2();
  v33 = v32 - v31;
  (*(v20 + 16))(v25, a1, v17);
  v34 = v16;
  v35 = v56;
  OSSignposter.init(logger:)();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v36 = OSSignposter.logHandle.getter();
  v37 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v51 = v28;
  if ((v54 & 1) == 0)
  {
    v39 = v55;
    if (v55)
    {
      v40 = v34;
LABEL_9:
      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_223066000, v36, v37, v42, v39, "", v41, 2u);
      v43 = v41;
      v34 = v40;
      MEMORY[0x223DD4390](v43, -1, -1);
      v35 = v56;
      v28 = v51;
LABEL_10:

      v44 = v52;
      (*(v9 + 16))(v14, v34, v52);
      v45 = type metadata accessor for OSSignpostIntervalState();
      v46 = *(v45 + 48);
      v47 = *(v45 + 52);
      swift_allocObject();
      v48 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v9 + 8))(v34, v44);
      *a5 = v55;
      *(a5 + 8) = v35;
      *(a5 + 16) = v54;
      *(a5 + 24) = v48;
      v49 = type metadata accessor for LogSignpost();
      return (*(v28 + 32))(a5 + *(v49 + 24), v33, v53);
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v55 >> 32)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v55 & 0xFFFFF800) != 0xD800)
  {
    if (v55 >> 16 <= 0x10)
    {
      v40 = v34;
      v39 = &v57;
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for LogSignpost()
{
  result = type metadata singleton initialization cache for LogSignpost;
  if (!type metadata singleton initialization cache for LogSignpost)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static FeatureStoreService.isInternalBuild.getter()
{
  OUTLINED_FUNCTION_3_0();
  v0 = static FeatureStoreService.overriddenInternalBuildValue;
  if (static FeatureStoreService.overriddenInternalBuildValue == 2)
  {
    v0 = [objc_opt_self() isRunningOnInternalBuild];
  }

  return v0 & 1;
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return type metadata accessor for StreamQuery();
}

uint64_t OUTLINED_FUNCTION_3_2()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1)
{
  *(a1 + 8) = closure #1 in closure #1 in static FeatureStoreService.streamEvents<A>();
  v2 = v1[18];
  v3 = v1[16];
  return v1[12];
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t partial apply for closure #2 in static FeatureStoreService.performInsert(qos:insertBlock:completion:)()
{
  v1 = *(type metadata accessor for LogSignpost() - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = (v2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v6 = *v4;
  v5 = *(v4 + 8);
  v8 = *(v0 + v3);
  v7 = *(v0 + v3 + 8);
  LogSignpost.end()();
  result = v6();
  if (v8)
  {
    return v8(result);
  }

  return result;
}

uint64_t closure #1 in static FeatureStoreService.performInsert(qos:insertBlock:completion:)(void (*a1)(uint64_t))
{
  v2 = type metadata accessor for Logger();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = type metadata accessor for LogSignpost();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  default argument 0 of static LogSignpost.begin(logger:_:)(v10);
  static LogSignpost.begin(logger:_:)(v10, "Insert", 6, 2u, v15);
  v16 = (*(v5 + 8))(v10, v2);
  a1(v16);
  LogSignpost.end()();
  return outlined destroy of LogSignpost(v15);
}

uint64_t default argument 0 of static LogSignpost.begin(logger:_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = Logger.signpost.unsafeMutableAddressor();
  v3 = type metadata accessor for Logger();
  v4 = OUTLINED_FUNCTION_2_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v2, v4);
}

Swift::Void __swiftcall LogSignpost.end()()
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = OUTLINED_FUNCTION_0(v1);
  v28 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = type metadata accessor for OSSignpostID();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v17 = v16 - v15;
  v18 = type metadata accessor for LogSignpost();
  v19 = *v0;
  v20 = *(v0 + 16);
  v21 = *(v0 + 24);
  v22 = v0 + *(v18 + 24);
  v23 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v27 = static os_signpost_type_t.end.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
LABEL_13:

    (*(v12 + 8))(v17, v9);
    return;
  }

  if ((v20 & 1) == 0)
  {
    if (v19)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      if ((*(v28 + 88))(v8, v1) == *MEMORY[0x277D85B00])
      {
        v24 = "[Error] Interval already ended";
      }

      else
      {
        (*(v28 + 8))(v8, v1);
        v24 = "";
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_223066000, v23, v27, v26, v19, v24, v25, 2u);
      MEMORY[0x223DD4390](v25, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v19 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v19 & 0xFFFFF800) != 0xD800)
  {
    if (v19 >> 16 <= 0x10)
    {
      v19 = &v29;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t Logger.accessor.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static FeatureStoreService.performInsert(qos:insertBlock:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v52 = a2;
  v58 = a5;
  v55 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = OUTLINED_FUNCTION_0(v7);
  v56 = v9;
  v57 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v54 = v13 - v12;
  v14 = type metadata accessor for Logger();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v50 - v23;
  v25 = type metadata accessor for LogSignpost();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v50 - v30;
  result = static FeatureStoreService.isInternalBuild.getter();
  if ((result & 1) == 0)
  {
    if (!a4)
    {
      return result;
    }

    v45 = a4;
    return v45();
  }

  v51 = a4;
  if (static FeatureStoreService.isSupportedUser.getter())
  {
    v33 = swift_allocObject();
    v34 = v52;
    *(v33 + 2) = v53;
    *(v33 + 3) = v34;
    *(v33 + 4) = a3;

    default argument 0 of static LogSignpost.begin(logger:_:)(v24);
    static LogSignpost.begin(logger:_:)(v24, "QueueLatency", 12, 2u, v31);
    (*(v17 + 8))(v24, v14);
    if (one-time initialization token for fsCaptureQueue != -1)
    {
      OUTLINED_FUNCTION_2_4();
    }

    outlined init with copy of LogSignpost(v31, v29);
    v35 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v36 = (v27 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    outlined init with take of LogSignpost(v29, v37 + v35);
    v38 = (v37 + v36);
    *v38 = partial apply for closure #1 in static FeatureStoreService.performInsert(qos:insertBlock:completion:);
    v38[1] = v33;
    v39 = (v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8));
    v40 = v51;
    v41 = v58;
    *v39 = v51;
    v39[1] = v41;
    aBlock[4] = partial apply for closure #2 in static FeatureStoreService.performInsert(qos:insertBlock:completion:);
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor;
    v42 = _Block_copy(aBlock);
    v59 = MEMORY[0x277D84F90];

    outlined copy of (@escaping @callee_guaranteed () -> ())?(v40);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
    v43 = v54;
    v44 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DD3730](0, v55, v43, v42);
    _Block_release(v42);

    (*(v56 + 8))(v43, v44);
    outlined destroy of LogSignpost(v31);
  }

  v46 = Logger.service.unsafeMutableAddressor();
  (*(v17 + 16))(v22, v46, v14);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_223066000, v47, v48, "Skipping insertion as process does not run with a supported user", v49, 2u);
    MEMORY[0x223DD4390](v49, -1, -1);
  }

  result = (*(v17 + 8))(v22, v14);
  v45 = v51;
  if (v51)
  {
    return v45();
  }

  return result;
}

uint64_t sub_223069934()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22306996C()
{
  v1 = (type metadata accessor for LogSignpost() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 24);

  v8 = v1[8];
  v9 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_9_0(v9);
  (*(v10 + 8))(v6 + v8);
  v11 = *(v0 + v4 + 8);

  if (*(v0 + v5))
  {
    v12 = *(v0 + v5 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v2 | 7);
}

uint64_t static FeatureStoreService.isSupportedUser.getter()
{
  OUTLINED_FUNCTION_3_0();
  if (static FeatureStoreService.overrideSupportedUserCheck)
  {
    return 1;
  }

  else
  {
    return [objc_opt_self() isSupportedUser];
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

void static FeatureStoreService.insertSync<A>(taskId:interactionId:item:)()
{
  OUTLINED_FUNCTION_9_1();
  v88 = v0;
  v89 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v86 = v8;
  v10 = v9;
  v93 = v11;
  v12 = type metadata accessor for LogSignpost();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_2();
  v92 = v15 - v14;
  OUTLINED_FUNCTION_0_0();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2();
  v23 = v22 - v21;
  v24 = type metadata accessor for Logger();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_1();
  v83 = v30 - v31;
  v33 = MEMORY[0x28223BE20](v32);
  v84 = &v78 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v78 - v35;
  v37 = Logger.service.unsafeMutableAddressor();
  v38 = *(v27 + 16);
  v81 = v37;
  v82 = v27 + 16;
  v85 = v24;
  v80 = v38;
  (v38)(v36);
  v39 = *(v17 + 16);
  v91 = v5;
  v39(v23, v5, v3);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  v87 = v7;

  v42 = os_log_type_enabled(v40, v41);
  v90 = v10;
  if (v42)
  {
    OUTLINED_FUNCTION_6_1();
    v43 = swift_slowAlloc();
    v79 = OUTLINED_FUNCTION_14_0();
    v95 = v79;
    *v43 = 136315650;
    DynamicType = swift_getDynamicType();
    swift_getMetatypeMetadata();
    String.init<A>(describing:)();
    v44 = v23;
    v45 = v3;
    (*(v17 + 8))(v44, v3);
    v46 = OUTLINED_FUNCTION_7_2();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v48);

    *(v43 + 4) = v49;
    *(v43 + 12) = 2080;
    *(v43 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v10, &v95);
    *(v43 + 22) = 2080;
    v50 = v86;
    v51 = v87;
    *(v43 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, &v95);
    _os_log_impl(&dword_223066000, v40, v41, "Inserting item of type %s with taskId: %s,  interactionId: %s", v43, 0x20u);
    v41 = v79;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();

    v52 = OUTLINED_FUNCTION_13_0();
    v53 = v85;
    v41(v52, v85);
    v54 = v50;
  }

  else
  {

    v55 = OUTLINED_FUNCTION_13_0();
    v56 = v85;
    v41(v55, v85);
    (*(v17 + 8))(v23, v3);
    v45 = v3;
    v54 = v86;
    v51 = v87;
    v53 = v56;
  }

  inserted = FeatureStoreService.signpostInsertSync.unsafeMutableAddressor();
  v58 = *inserted;
  v59 = inserted[1];
  v60 = *(inserted + 16);
  v61 = v84;
  default argument 0 of static LogSignpost.begin(logger:_:)(v84);
  static LogSignpost.begin(logger:_:)(v61, v58, v59, v60, v92);
  v41(v61, v53);
  v62 = static JSONCoder.encode(codable:)();
  if (v63 >> 60 == 15)
  {
    v89 = v45;
    v64 = v83;
    v80(v83, v81, v53);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_223066000, v65, v66, "Could not encode the item. Skipping insertion.", v67, 2u);
      OUTLINED_FUNCTION_9();
      MEMORY[0x223DD4390]();
    }

    v41(v64, v53);
  }

  else
  {
    v68 = v63;
    v69 = v62;
    v95 = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v70 = String.init<A>(describing:)();
    static FeatureStoreService.streamIdentifierFor(typeName:taskId:)(v70, v71, v93, v90);

    static accessorFor(streamIdentifier:) in AccessorProvider #1 in static FeatureStoreService.insert(streamIdentifier:interactionId:featureData:)();
    v73 = v72;
    type metadata accessor for FeatureStoreBiomeEvent();

    v89 = v69;
    outlined copy of Data._Representation(v69, v68);
    v74 = default argument 2 of FeatureStoreBiomeEvent.init(interactionId:featureData:dataVersion:timestamp:)();
    v75 = default argument 3 of FeatureStoreBiomeEvent.init(interactionId:featureData:dataVersion:timestamp:)();
    v76 = FeatureStoreBiomeEvent.__allocating_init(interactionId:featureData:dataVersion:timestamp:)(v54, v51, v69, v68, v74, v75);
    (*(*v73 + 112))();

    outlined consume of Data?(v89, v68);
  }

  v77 = v92;
  $defer #1 <A>() in static FeatureStoreService.insertSync<A>(taskId:interactionId:item:)();
  outlined destroy of LogSignpost(v77);
  OUTLINED_FUNCTION_8_1();
}

id FeatureStoreStreamAccessor.insert(feature:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12FeatureStore26FeatureStoreStreamAccessor_streamSource);
  (*((*MEMORY[0x277D85000] & *a1) + 0x78))();

  return [v3 sendEvent:a1 timestamp:?];
}

uint64_t static FeatureStoreService.streamIdentifierFor(typeName:taskId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a4 && (a3 || a4 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    MEMORY[0x223DD3460](a3, a4);
    MEMORY[0x223DD3460](95, 0xE100000000000000);

    return a1;
  }

  else
  {
  }

  return v4;
}

void partial apply for closure #1 in static FeatureStoreService.insert<A>(taskId:interactionId:item:completion:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(*(v0[2] - 8) + 80);
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  static FeatureStoreService.insertSync<A>(taskId:interactionId:item:)();
}

{
  partial apply for closure #1 in closure #1 in static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:)();
}

uint64_t static JSONCoder.encode(codable:)()
{
  v0 = type metadata accessor for Logger();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v4 = type metadata accessor for JSONEncoder.OutputFormatting();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_2();
  v6 = type metadata accessor for JSONEncoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v9;
}

uint64_t OUTLINED_FUNCTION_7_4()
{
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[64];
}

uint64_t outlined copy of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return static FeatureStoreService.insert<A>(taskId:interactionId:item:)(0, 0xE000000000000000, v4, v3, v5, v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_23()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t outlined init with copy of LogSignpost(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogSignpost();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of LogSignpost(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogSignpost();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of LogSignpost(uint64_t a1)
{
  v2 = type metadata accessor for LogSignpost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD000000000000026;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_2_10()
{
  *(v0 + 8) = CurareInteractionSELFStream.retrieve();
  v2 = *(v1 + 536);
  return *(v1 + 520);
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return swift_beginAccess();
}

uint64_t static FeatureStoreService.insertAwait<A>(interactionId:item:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = static FeatureStoreService.insertAwait<A>(interactionId:item:);

  return static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:)(0, 0xE000000000000000, a1, a2, a3, a4, a5, a6);
}

uint64_t static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return MEMORY[0x2822009F8](static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:), 0, 0);
}

uint64_t static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:)()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *(v8 + 16) = *(v0 + 56);
  *(v8 + 32) = v2;
  *(v8 + 40) = v3;
  *(v8 + 48) = v7;
  *(v8 + 56) = v6;
  *(v8 + 64) = v5;
  *(v8 + 72) = v4;
  *(v8 + 80) = v1;
  v9 = *(MEMORY[0x277D859E0] + 4);
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:);

  return MEMORY[0x2822007B8]();
}

{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:), 0, 0);
}

{
  return (*(v0 + 8))();
}

void closure #1 in static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_9_1();
  v23 = v22;
  v125 = v25;
  v126 = v24;
  v27 = v26;
  v29 = v28;
  v111 = v30;
  v32 = v31;
  v34 = v33;
  v116 = a21;
  v117 = a22;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v36 = OUTLINED_FUNCTION_0(v35);
  v122 = v37;
  v123 = v36;
  v118 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v119 = &v103[-v39];
  v120 = type metadata accessor for DispatchQoS();
  v40 = OUTLINED_FUNCTION_0(v120);
  v124 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2();
  v121 = v45 - v44;
  OUTLINED_FUNCTION_0_0();
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_11_1();
  v113 = v52;
  v114 = v51;
  MEMORY[0x28223BE20](v53);
  v55 = &v103[-v54];
  v56 = type metadata accessor for Logger();
  v57 = OUTLINED_FUNCTION_0(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_2();
  v64 = v63 - v62;
  v65 = Logger.service.unsafeMutableAddressor();
  v110 = v59;
  v66 = *(v59 + 16);
  v112 = v56;
  v66(v64, v65, v56);
  v67 = *(v47 + 16);
  v115 = v32;
  v109 = v67;
  v67(v55, v32, v23);

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v68, v69))
  {
    OUTLINED_FUNCTION_6_1();
    v70 = swift_slowAlloc();
    v108 = v34;
    v71 = v70;
    v106 = OUTLINED_FUNCTION_14_0();
    v128[0] = v106;
    *v71 = 136315650;
    DynamicType = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v72 = String.init<A>(describing:)();
    v105 = v68;
    v73 = v72;
    v104 = v69;
    v74 = v111;
    v107 = v47 + 16;
    v75 = v29;
    v76 = v27;
    v78 = v77;
    v79 = OUTLINED_FUNCTION_10_1();
    v80(v79);
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v78, v128);
    v27 = v76;
    v29 = v75;

    *(v71 + 4) = v81;
    *(v71 + 12) = 2080;
    *(v71 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v128);
    *(v71 + 22) = 2080;
    *(v71 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v27, v128);
    v82 = v105;
    _os_log_impl(&dword_223066000, v105, v104, "Will submit insertion task of type %s with taskId: %s,  interactionId: %s", v71, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();
    v34 = v108;
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();

    v83 = OUTLINED_FUNCTION_12_1();
    v84(v83);
  }

  else
  {

    v85 = OUTLINED_FUNCTION_12_1();
    v86(v85);
    v87 = OUTLINED_FUNCTION_10_1();
    v88(v87);
    v74 = v111;
  }

  v89 = v121;
  static DispatchQoS.userInitiated.getter();
  v90 = v114;
  v109(v114, v115, v23);
  v91 = (*(v47 + 80) + 80) & ~*(v47 + 80);
  v92 = swift_allocObject();
  v93 = v23;
  v94 = v92;
  v96 = v116;
  v95 = v117;
  *(v92 + 2) = v93;
  *(v92 + 3) = v96;
  v97 = v125;
  *(v92 + 4) = v95;
  *(v92 + 5) = v97;
  *(v92 + 6) = v74;
  *(v92 + 7) = v29;
  *(v92 + 8) = v126;
  *(v92 + 9) = v27;
  (*(v47 + 32))(&v92[v91], v90);
  v99 = v122;
  v98 = v123;
  v100 = v119;
  (*(v122 + 16))(v119, v34, v123);
  v101 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v102 = swift_allocObject();
  (*(v99 + 32))(v102 + v101, v100, v98);

  static FeatureStoreService.performInsert(qos:insertBlock:completion:)(v89, partial apply for closure #1 in closure #1 in static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:), v94, partial apply for implicit closure #5 in implicit closure #4 in closure #1 in static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:), v102);

  (*(v124 + 8))(v89, v120);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_22306B450()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t OUTLINED_FUNCTION_10()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1)
{

  return static FeatureStoreService.insert<A>(taskId:interactionId:item:)(a1, v7, v6, v5, v2, v4, v3, v1);
}

uint64_t OUTLINED_FUNCTION_10_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_12_1()
{
  v2 = *(*(v1 - 240) + 8);
  result = v0;
  v4 = *(v1 - 224);
  return result;
}

void OUTLINED_FUNCTION_12_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t FeatureStoreBiomeEvent.serialize()()
{
  v0 = type metadata accessor for Logger();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_23_0();
  v4 = type metadata accessor for JSONEncoder.OutputFormatting();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_2();
  v6 = type metadata accessor for JSONEncoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  type metadata accessor for FeatureStoreBiomeEvent();
  lazy protocol witness table accessor for type FeatureStoreBiomeEvent and conformance FeatureStoreBiomeEvent(&lazy protocol witness table cache variable for type FeatureStoreBiomeEvent and conformance FeatureStoreBiomeEvent);
  dispatch thunk of JSONEncoder.encode<A>(_:)();

  return OUTLINED_FUNCTION_16();
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

void $defer #1 <A>() in static FeatureStoreService.insertSync<A>(taskId:interactionId:item:)()
{
  OUTLINED_FUNCTION_9_1();
  v1 = v0;
  v3 = v2;
  v42 = v4;
  v6 = v5;
  v41 = v7;
  v9 = v8;
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v17 = v16 - v15;
  v18 = type metadata accessor for Logger();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2();
  v26 = v25 - v24;
  LogSignpost.end()();
  v27 = Logger.service.unsafeMutableAddressor();
  (*(v21 + 16))(v26, v27, v18);
  (*(v11 + 16))(v17, v9, v1);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_6_1();
    v39 = v29;
    v30 = swift_slowAlloc();
    v43 = OUTLINED_FUNCTION_14_0();
    *v30 = 136315650;
    swift_getDynamicType();
    swift_getMetatypeMetadata();
    v38 = v3;
    v31 = String.init<A>(describing:)();
    v40 = v18;
    v33 = v32;
    (*(v11 + 8))(v17, v1);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v43);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v6, &v43);
    *(v30 + 22) = 2080;
    *(v30 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v38, &v43);
    _os_log_impl(&dword_223066000, v28, v39, "Inserted item of type %s with taskId: %s,  interactionId: %s", v30, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();

    (*(v21 + 8))(v26, v40);
  }

  else
  {

    v35 = *(v21 + 8);
    v36 = OUTLINED_FUNCTION_7_2();
    v37(v36);
    (*(v11 + 8))(v17, v1);
  }

  OUTLINED_FUNCTION_8_1();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 2);
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 80) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 7);

  v9 = *(v0 + 9);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

double default argument 3 of FeatureStoreBiomeEvent.init(interactionId:featureData:dataVersion:timestamp:)()
{
  v0 = type metadata accessor for Date();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v10 = v9;
  (*(v3 + 8))(v8, v0);
  return v10;
}

id FeatureStoreBiomeEvent.init(interactionId:featureData:dataVersion:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, double a6)
{
  v7 = v6;
  v14 = type metadata accessor for Logger();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_21();
  v72 = v20;
  v22 = MEMORY[0x28223BE20](v21);
  v70 = &v67 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v67 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v67 - v27;
  v29 = &v7[OBJC_IVAR___FSFFeatureStoreBiomeEvent_interactionId];
  *v29 = a1;
  v29[1] = a2;
  *&v7[OBJC_IVAR___FSFFeatureStoreBiomeEvent_dataVersion] = a5;
  v30 = &v7[OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData];
  *v30 = a3;
  v30[1] = a4;
  *&v7[OBJC_IVAR___FSFFeatureStoreBiomeEvent_timestamp] = a6;
  if (a5)
  {
    v31 = OUTLINED_FUNCTION_15();
    outlined copy of Data._Representation(v31, v32);
    v33 = Logger.accessor.unsafeMutableAddressor();
    v34 = *(v17 + 16);
    v68 = v33;
    v69 = v34;
    v71 = v14;
    (v34)(v26);
    v35 = OUTLINED_FUNCTION_15();
    outlined copy of Data._Representation(v35, v36);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      v40 = v39;
      v41 = 0;
      switch(a4 >> 62)
      {
        case 1uLL:
          LODWORD(v41) = HIDWORD(a3) - a3;
          if (__OFSUB__(HIDWORD(a3), a3))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            JUMPOUT(0x22306C3F4);
          }

          v41 = v41;
LABEL_12:
          *(v39 + 4) = v41;
          outlined consume of Data._Representation(a3, a4);
          _os_log_impl(&dword_223066000, v37, v38, "Data size in bytes: %ld", v40, 0xCu);
          OUTLINED_FUNCTION_9();
          MEMORY[0x223DD4390]();
          break;
        case 2uLL:
          v49 = *(a3 + 16);
          v48 = *(a3 + 24);
          v50 = __OFSUB__(v48, v49);
          v41 = v48 - v49;
          if (!v50)
          {
            goto LABEL_12;
          }

          goto LABEL_22;
        case 3uLL:
          goto LABEL_12;
        default:
          v41 = BYTE6(a4);
          goto LABEL_12;
      }
    }

    else
    {
      v46 = OUTLINED_FUNCTION_15();
      outlined consume of Data._Representation(v46, v47);
    }

    v51 = *(v17 + 8);
    v52 = v71;
    v51(v26, v71);
    v53 = OUTLINED_FUNCTION_15();
    v54 = MEMORY[0x223DD2FD0](v53);
    if (static FeatureStoreBiomeEvent.maximumSizeBeforeCompression.getter() >= v54)
    {
      v69(v72, v68, v52);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_223066000, v59, v60, "No compression is needed.", v61, 2u);
        OUTLINED_FUNCTION_9();
        MEMORY[0x223DD4390]();
      }

      v51(v72, v52);
      v7[OBJC_IVAR___FSFFeatureStoreBiomeEvent_compressionPolicy] = 0;
    }

    else
    {
      v55 = v70;
      v69(v70, v68, v52);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_223066000, v56, v57, "Compression is needed.", v58, 2u);
        v52 = v71;
        OUTLINED_FUNCTION_9();
        MEMORY[0x223DD4390]();
      }

      v51(v55, v52);
      v7[OBJC_IVAR___FSFFeatureStoreBiomeEvent_compressionPolicy] = 1;
    }
  }

  else
  {
    v7[OBJC_IVAR___FSFFeatureStoreBiomeEvent_compressionPolicy] = 0;
    outlined copy of Data._Representation(a3, a4);
    v42 = Logger.accessor.unsafeMutableAddressor();
    (*(v17 + 16))(v28, v42, v14);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_223066000, v43, v44, "No compression is needed", v45, 2u);
      OUTLINED_FUNCTION_9();
      MEMORY[0x223DD4390]();
    }

    (*(v17 + 8))(v28, v14);
  }

  v62 = type metadata accessor for FeatureStoreBiomeEvent();
  v73.receiver = v7;
  v73.super_class = v62;
  v63 = objc_msgSendSuper2(&v73, sel_init);
  v64 = OUTLINED_FUNCTION_15();
  outlined consume of Data._Representation(v64, v65);
  return v63;
}

uint64_t OUTLINED_FUNCTION_19_0()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2080;
  v5 = *(v3 - 224);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v1, (v3 - 104));
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_14_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2[15];
  v4 = v2[7];
  v5 = v2[5];
  return result;
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = *(v32 - 184) + a32;

  return Logger.logObject.getter();
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t static FeatureStoreBiomeEvent.maximumSizeBeforeCompression.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = MEMORY[0x223DD33D0](0xD000000000000028, 0x8000000223093AB0);
  v3 = [v1 objectForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of Any?(v8, &_sypSgMd, &_sypSgMR);
    v4 = [v0 standardUserDefaults];
    v5 = MEMORY[0x223DD33D0](0xD000000000000028, 0x8000000223093AB0);
    v6 = [v4 integerForKey_];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    outlined destroy of Any?(v8, &_sypSgMd, &_sypSgMR);
    return 700000;
  }

  return v6;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return swift_task_alloc();
}

void FeatureStoreBiomeEvent.encode(to:)()
{
  OUTLINED_FUNCTION_26();
  v92 = v1;
  v2 = v0;
  v4 = v3;
  v96 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for Logger();
  v6 = OUTLINED_FUNCTION_0(v5);
  v90 = v7;
  v91 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_21();
  v89 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v83 - v12;
  v14 = type metadata accessor for LogSignpost();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12FeatureStore0dE10BiomeEventC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy12FeatureStore0dE10BiomeEventC10CodingKeysOGMR);
  OUTLINED_FUNCTION_0(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v24);
  v26 = &v83 - v25;
  v27 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  lazy protocol witness table accessor for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v28 = *(v2 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_interactionId);
  v29 = *(v2 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_interactionId + 8);
  LOBYTE(v94) = 0;
  v30 = v92;
  v31 = KeyedEncodingContainer.encode(_:forKey:)();
  if (v30)
  {
    (*(v21 + 8))(v26, v19);
  }

  else
  {
    v88 = v13;
    v33 = v90;
    v32 = v91;
    v92 = v18;
    v34 = v21;
    (*((*MEMORY[0x277D85000] & *v2) + 0x90))(v31);
    LOBYTE(v94) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v35 = OBJC_IVAR___FSFFeatureStoreBiomeEvent_compressionPolicy;
    LOBYTE(v94) = *(v2 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_compressionPolicy);
    v93 = 3;
    lazy protocol witness table accessor for type CompressionPolicy and conformance CompressionPolicy();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v86 = v26;
    v87 = v19;
    v36 = *(v2 + v35);
    v37 = 0;
    v38 = v2;
    v39 = v88;
    switch(v36)
    {
      case 1:
        goto LABEL_8;
      case 2:
        v37 = 1;
        goto LABEL_8;
      case 3:
        v37 = 2;
        goto LABEL_8;
      case 4:
        v37 = 3;
LABEL_8:
        default argument 0 of static LogSignpost.begin(logger:_:)(v88);
        static LogSignpost.begin(logger:_:)(v39, "BiomeEncodeCompress", 19, 2u, v92);
        v44 = *(v33 + 8);
        v88 = (v33 + 8);
        v85 = v44;
        v44(v39, v32);
        v45 = v38;
        v46 = (v38 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData);
        v47 = *v46;
        v48 = v46[1];
        isa = Data._bridgeToObjectiveC()().super.isa;
        v94 = 0;
        v50 = [(objc_class *)isa compressedDataUsingAlgorithm:v37 error:&v94];

        v51 = v94;
        if (v50)
        {
          v84 = v46;
          v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v41 = v53;

          v54 = Logger.accessor.unsafeMutableAddressor();
          v55 = v89;
          (*(v33 + 16))(v89, v54, v32);
          v56 = v45;
          v40 = v52;
          v57 = v56;
          v58 = OUTLINED_FUNCTION_19();
          outlined copy of Data._Representation(v58, v59);
          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v60, v61))
          {
            LODWORD(v90) = v61;
            v62 = swift_slowAlloc();
            *v62 = 134218240;
            v63 = *v84;
            v64 = v84[1];
            v65 = v92;
            v66 = v62;
            v67 = 0;
            switch(v64 >> 62)
            {
              case 1uLL:
                LODWORD(v67) = HIDWORD(v63) - v63;
                if (__OFSUB__(HIDWORD(v63), v63))
                {
                  __break(1u);
LABEL_27:
                  __break(1u);
LABEL_28:
                  __break(1u);
LABEL_29:
                  __break(1u);
                }

                v67 = v67;
LABEL_17:
                *(v62 + 4) = v67;

                *(v66 + 12) = 2048;
                v75 = 0;
                switch(v41 >> 62)
                {
                  case 1uLL:
                    LODWORD(v75) = HIDWORD(v40) - v40;
                    if (__OFSUB__(HIDWORD(v40), v40))
                    {
                      goto LABEL_28;
                    }

                    v75 = v75;
LABEL_22:
                    *(v66 + 14) = v75;
                    v78 = OUTLINED_FUNCTION_19();
                    outlined consume of Data._Representation(v78, v79);
                    _os_log_impl(&dword_223066000, v60, v90, "Compressed data of size %ld to a data of size %ld", v66, 0x16u);
                    OUTLINED_FUNCTION_9();
                    MEMORY[0x223DD4390]();
                    break;
                  case 2uLL:
                    v77 = v40[2];
                    v76 = v40[3];
                    v74 = __OFSUB__(v76, v77);
                    v75 = v76 - v77;
                    if (!v74)
                    {
                      goto LABEL_22;
                    }

                    goto LABEL_29;
                  case 3uLL:
                    goto LABEL_22;
                  default:
                    v75 = BYTE6(v41);
                    goto LABEL_22;
                }

                break;
              case 2uLL:
                v73 = v63 + 16;
                v72 = *(v63 + 16);
                v71 = *(v73 + 8);
                v74 = __OFSUB__(v71, v72);
                v67 = v71 - v72;
                if (!v74)
                {
                  goto LABEL_17;
                }

                goto LABEL_27;
              case 3uLL:
                goto LABEL_17;
              default:
                v67 = BYTE6(v64);
                goto LABEL_17;
            }
          }

          else
          {
            v69 = OUTLINED_FUNCTION_19();
            outlined consume of Data._Representation(v69, v70);

            v60 = v57;
            v65 = v92;
          }

          v85(v55, v91);
          LogSignpost.end()();
          outlined destroy of LogSignpost(v65);
LABEL_24:
          v94 = v40;
          v95 = v41;
          v93 = 1;
          lazy protocol witness table accessor for type Data and conformance Data();
          v81 = v86;
          v80 = v87;
          KeyedEncodingContainer.encode<A>(_:forKey:)();
          outlined consume of Data._Representation(v94, v95);
          (*(v34 + 8))(v81, v80);
        }

        else
        {
          v68 = v51;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          outlined destroy of LogSignpost(v92);
          (*(v34 + 8))(v86, v87);
        }

        break;
      default:
        v40 = *(v38 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData);
        v41 = *(v38 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData + 8);
        v42 = OUTLINED_FUNCTION_19();
        outlined copy of Data._Representation(v42, v43);
        goto LABEL_24;
    }
  }

  v82 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_24();
}

void OUTLINED_FUNCTION_25_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys);
  }

  return result;
}

uint64_t FeatureStoreBiomeEvent.dataVersion.getter()
{
  v1 = OBJC_IVAR___FSFFeatureStoreBiomeEvent_dataVersion;
  OUTLINED_FUNCTION_27_0();
  return *(v0 + v1);
}

uint64_t lazy protocol witness table accessor for type FeatureStoreBiomeEvent and conformance FeatureStoreBiomeEvent(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FeatureStoreBiomeEvent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t FeatureStoreBiomeEvent.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7463617265746E69;
  switch(a1)
  {
    case 1:
      result = 0x65727574616566;
      break;
    case 2:
      result = 0x7372655661746164;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompressionPolicy and conformance CompressionPolicy()
{
  result = lazy protocol witness table cache variable for type CompressionPolicy and conformance CompressionPolicy;
  if (!lazy protocol witness table cache variable for type CompressionPolicy and conformance CompressionPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy and conformance CompressionPolicy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy and conformance CompressionPolicy;
  if (!lazy protocol witness table cache variable for type CompressionPolicy and conformance CompressionPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy and conformance CompressionPolicy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy and conformance CompressionPolicy;
  if (!lazy protocol witness table cache variable for type CompressionPolicy and conformance CompressionPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy and conformance CompressionPolicy);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeatureStoreBiomeEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x22306D408);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureStoreBiomeEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

double FeatureStoreBiomeEvent.timestamp.getter()
{
  v1 = OBJC_IVAR___FSFFeatureStoreBiomeEvent_timestamp;
  OUTLINED_FUNCTION_27_0();
  return *(v0 + v1);
}

void CompressionPolicy.encode(to:)()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO14ZlibCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO14ZlibCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  v4 = OUTLINED_FUNCTION_0(v3);
  v66 = v5;
  v67 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  v65 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO14LzmaCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO14LzmaCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  v11 = OUTLINED_FUNCTION_0(v10);
  v63 = v12;
  v64 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  v62 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO13Lz4CodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO13Lz4CodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  v18 = OUTLINED_FUNCTION_0(v17);
  v60 = v19;
  v61 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11();
  v59 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO15LzfseCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO15LzfseCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  v25 = OUTLINED_FUNCTION_0(v24);
  v57 = v26;
  v58 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_11();
  v56 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO23DoNotCompressCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO23DoNotCompressCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  v32 = OUTLINED_FUNCTION_0(v31);
  v54 = v33;
  v55 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v36);
  v38 = &v53 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO10CodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO10CodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  OUTLINED_FUNCTION_0(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v44);
  v46 = &v53 - v45;
  v47 = *v0;
  v48 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v49 = (v41 + 8);
  switch(v47)
  {
    case 1:
      lazy protocol witness table accessor for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys();
      v50 = v56;
      OUTLINED_FUNCTION_8();
      v52 = v57;
      v51 = v58;
      goto LABEL_7;
    case 2:
      lazy protocol witness table accessor for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys();
      v50 = v59;
      OUTLINED_FUNCTION_8();
      v52 = v60;
      v51 = v61;
      goto LABEL_7;
    case 3:
      lazy protocol witness table accessor for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys();
      v50 = v62;
      OUTLINED_FUNCTION_8();
      v52 = v63;
      v51 = v64;
      goto LABEL_7;
    case 4:
      lazy protocol witness table accessor for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys();
      v50 = v65;
      OUTLINED_FUNCTION_8();
      v52 = v66;
      v51 = v67;
LABEL_7:
      (*(v52 + 8))(v50, v51);
      break;
    default:
      lazy protocol witness table accessor for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v54 + 8))(v38, v55);
      break;
  }

  (*v49)(v46, v39);
  OUTLINED_FUNCTION_24();
}

unint64_t lazy protocol witness table accessor for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t lazy protocol witness table accessor for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys()
{
  result = lazy protocol witness table cache variable for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys);
  }

  return result;
}

uint64_t CompressionPolicy.CodingKeys.stringValue.getter()
{
  result = OUTLINED_FUNCTION_17_0();
  switch(v1)
  {
    case 1:
      result = 0x6573667A6CLL;
      break;
    case 2:
      result = 3439212;
      break;
    case 3:
      result = 1634564716;
      break;
    case 4:
      result = 1651076218;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CompressionPolicy(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x22306DC84);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CompressionPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

__n128 OUTLINED_FUNCTION_22_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __n128 a27)
{
  *(v28 - 144) = a1;
  *(v28 - 128) = a1;
  result = a27;
  *v27 = a27.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_18_0()
{

  return static FeatureStoreService.insert<A>(interactionId:item:)(v4, v3, v5, v2, v1, v0);
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t interactionForInjection<A>(taskId:interactionId:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v106 = a4;
  v103 = a3;
  v114 = a2;
  v111 = a1;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_0_0();
  v112 = v13;
  v113 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_1();
  v110 = v16 - v17;
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x28223BE20](v18);
  v108 = &v99 - v19;
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x28223BE20](v20);
  v105 = &v99 - v21;
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x28223BE20](v22);
  v24 = &v99 - v23;
  OUTLINED_FUNCTION_0_0();
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_1();
  v102 = (v30 - v31);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x28223BE20](v32);
  v104 = &v99 - v33;
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x28223BE20](v34);
  v107 = &v99 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  OUTLINED_FUNCTION_4_1();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v99 - v42;
  type metadata accessor for FeatureStoreService();
  v44 = static FeatureStoreService.interactionIdForInjection()();
  if (v45)
  {
    v46 = v45;
    v99 = v26;
    v100 = v24;
    v109 = a8;
    v47 = v44;
    type metadata accessor for StreamQuery();
    v48 = a5;
    v49 = type metadata accessor for Date();
    __swift_storeEnumTagSinglePayload(v43, 1, 1, v49);
    __swift_storeEnumTagSinglePayload(v40, 1, 1, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_223092B00;
    v101 = v47;
    *(v50 + 32) = v47;
    *(v50 + 40) = v46;

    v51 = a6;
    v52 = a7;
    v53 = v114;

    v54 = StreamQuery.__allocating_init(startDate:endDate:interactionIds:taskId:)(v43, v40, v50, v111, v53);
    v56 = static FeatureStoreService.retrieve<A>(query:)(v54, v48, v51, v52);
    v110 = v51;

    v116[0] = v56;
    type metadata accessor for Array();
    swift_getWitnessTable();
    v57 = Collection.isEmpty.getter();
    a5 = v48;
    if (v57)
    {

      Logger.service.unsafeMutableAddressor();
      OUTLINED_FUNCTION_28();
      v58 = v108;
      v59(v108);

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v115 = v48;
        v116[0] = v63;
        *v62 = 136315394;
        swift_getMetatypeMetadata();
        v64 = String.init<A>(describing:)();
        v66 = v65;
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v116);

        OUTLINED_FUNCTION_19_0();
        OUTLINED_FUNCTION_32();
        *(v62 + 14) = v66;
        OUTLINED_FUNCTION_30(&dword_223066000, v67, v68, "No injection available for type:%s injectInteractionId:%s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_11_2();
        OUTLINED_FUNCTION_1();

        (*(v51 + 8))(v108, v48);
LABEL_7:
        v55 = 1;
        a8 = v109;
        return __swift_storeEnumTagSinglePayload(a8, v55, 1, a5);
      }

LABEL_15:

      (*(v51 + 8))(v58, v48);
      goto LABEL_7;
    }

    v70 = v46;
    v71 = static InjectionCursor.getNextAndIncrement<A>(forType:taskId:interactionId:)(v48);
    if (v71 >= MEMORY[0x223DD3510](v56, v48))
    {

      Logger.service.unsafeMutableAddressor();
      OUTLINED_FUNCTION_28();
      v58 = v105;
      v90(v105);

      v60 = Logger.logObject.getter();
      v91 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v60, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v115 = v48;
        v116[0] = v93;
        *v92 = 136315394;
        swift_getMetatypeMetadata();
        v94 = String.init<A>(describing:)();
        v96 = v95;
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, v116);

        OUTLINED_FUNCTION_19_0();
        OUTLINED_FUNCTION_32();
        *(v92 + 14) = v96;
        OUTLINED_FUNCTION_30(&dword_223066000, v97, v98, "Used up all injection values for type: %s injectInteractionId:%s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_11_2();
        OUTLINED_FUNCTION_1();

        (*(v51 + 8))(v105, v48);
        goto LABEL_7;
      }

      goto LABEL_15;
    }

    v72 = v107;
    Array.subscript.getter();

    v73 = Logger.service.unsafeMutableAddressor();
    v74 = v112;
    (*(v112 + 16))(v100, v73, v113);
    v75 = v99;
    v76 = v104;
    v111 = *(v99 + 16);
    v111(v104, v72, v48);

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();

    LODWORD(v114) = v78;
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v115 = v48;
      v116[0] = v110;
      *v79 = 136316162;
      swift_getMetatypeMetadata();
      v80 = String.init<A>(describing:)();
      v82 = v81;
      v83 = v76;
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, v116);

      *(v79 + 4) = v84;
      *(v79 + 12) = 2080;
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v70, v116);
      OUTLINED_FUNCTION_32();
      *(v79 + 14) = v82;
      *(v79 + 22) = 2080;
      *(v79 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v106, v116);
      *(v79 + 32) = 2080;
      v111(v102, v83, v48);
      v85 = String.init<A>(describing:)();
      v87 = v86;
      v88 = v99;
      (*(v99 + 8))(v83, v48);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, v116);
      OUTLINED_FUNCTION_32();
      *(v79 + 34) = v85;
      *(v79 + 42) = 2048;
      *(v79 + 44) = v71;
      _os_log_impl(&dword_223066000, v77, v114, "=== Injecting Value ===\ntype:%s\ninjectInteractionId:%s\ninteractionId:%s\nvalue: %s\nvalueIndex: %ld", v79, 0x34u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_11_2();

      (*(v74 + 8))(v100, v113);
      v89 = v88;
    }

    else
    {

      (*(v75 + 8))(v76, v48);
      (*(v74 + 8))(v100, v113);
      v89 = v75;
    }

    a8 = v109;
    (*(v89 + 32))(v109, v107, v48);
    v55 = 0;
  }

  else
  {
    v55 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a8, v55, 1, a5);
}

uint64_t static FeatureStoreService.interactionIdForInjection()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = @nonobjc NSUserDefaults.init(suiteName:)(0xD000000000000013, 0x8000000223093ED0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = MEMORY[0x223DD33D0](0xD00000000000001CLL, 0x8000000223093EF0);
  v4 = [v2 stringForKey_];

  if (!v4)
  {

    return 0;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

id @nonobjc NSUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x223DD33D0]();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t runSimulatableTask<A, B>(interactionId:input:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v33 = a4;
  v34 = a8;
  v32 = a5;
  v35 = a9;
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_0_0();
  v29 = v18;
  v30 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v28 - v21;
  v23 = type metadata accessor for FeatureStoreService();
  v31 = a3;
  v24 = v34;
  v34 = v23;
  static FeatureStoreService.insert<A>(interactionId:item:)(a1, a2, a3, a6, v24, a10);
  interactionForInjection<A>(taskId:interactionId:)(0, 0xE000000000000000, a1, a2, a7, a11, a12, v22);

  if (__swift_getEnumTagSinglePayload(v22, 1, a7) != 1)
  {
    v25 = v35;
    (*(*(a7 - 8) + 32))(v35, v22, a7);
    return static FeatureStoreService.insert<A>(interactionId:item:)(a1, a2, v25, a7, a11, a12);
  }

  v25 = v35;
  v26 = v36;
  v33(v31);
  if (!v26)
  {
    if (__swift_getEnumTagSinglePayload(v22, 1, a7) != 1)
    {
      (*(v29 + 8))(v22, v30);
    }

    return static FeatureStoreService.insert<A>(interactionId:item:)(a1, a2, v25, a7, a11, a12);
  }

  result = __swift_getEnumTagSinglePayload(v22, 1, a7);
  if (result != 1)
  {
    return (*(v29 + 8))(v22, v30);
  }

  return result;
}

uint64_t partial apply for implicit closure #5 in implicit closure #4 in closure #1 in static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return CheckedContinuation.resume(returning:)();
}

uint64_t static FeatureStoreService.insertAwait<A>(interactionId:item:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = static FeatureStoreService.insertAwait<A>(interactionId:item:);

  return MEMORY[0x2822007B8]();
}

{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:), 0, 0);
}

uint64_t static FeatureStoreService.runReplayableOperation<A, B>(interactionId:input:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_6_2();
  *(v11 + 96) = a10;
  *(v11 + 104) = a11;
  *(v11 + 80) = a9;
  OUTLINED_FUNCTION_5_1(v12, v13, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_0_0();
  *(v11 + 112) = v20;
  v22 = *(v21 + 64);
  *(v11 + 120) = OUTLINED_FUNCTION_25_0();
  v23 = type metadata accessor for Optional();
  *(v11 + 128) = v23;
  OUTLINED_FUNCTION_17(v23);
  *(v11 + 136) = v24;
  v26 = *(v25 + 64);
  *(v11 + 144) = OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13_1();
  return OUTLINED_FUNCTION_31();
}

void OUTLINED_FUNCTION_23_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t static FeatureStoreService.runReplayableOperation<A, B>(interactionId:input:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_27_1();
  v22 = OUTLINED_FUNCTION_8_2();
  *(v15 + 152) = v22;
  v23 = v13;
  v24 = v22;
  static FeatureStoreService.insert<A>(interactionId:item:)(v14, v21, v20, v19, v17, v23);
  v25 = OUTLINED_FUNCTION_4_3();
  interactionForInjection<A>(taskId:interactionId:)(v25, v26, v27, v28, v18, v16, a9, v29);

  OUTLINED_FUNCTION_22_0();
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_26_0();
    v32(v31);
    OUTLINED_FUNCTION_0_3();
    v55 = v33;
    v34 = *(v24 + 4);
    v35 = swift_task_alloc();
    *(v15 + 160) = v35;
    *v35 = v15;
    OUTLINED_FUNCTION_14_1(v35);
    OUTLINED_FUNCTION_7_3();

    return v38(v36, v37, v38, v39, v40, v41, v42, v43, v55, a10, a11, a12);
  }

  else
  {
    v45 = OUTLINED_FUNCTION_1_4();
    v46(v45, v12, v18);
    OUTLINED_FUNCTION_18_0();

    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_7_3();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
  }
}

{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_27_1();
  v14 = OUTLINED_FUNCTION_1_4();
  v15(v14, v12, v13);
  OUTLINED_FUNCTION_18_0();

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_7_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_26_0()
{
  result = v0[18];
  v2 = v0[16];
  v3 = v0[6];
  v4 = *(v0[17] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_32()
{
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_1(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = result;
  v8[3] = a2;
  return result;
}

void runSimulatableTask<A, B>(taskId:interactionId:input:task:)()
{
  v9 = v0[21];
  v10 = v0[20];
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  (*(v0[16] + 32))(v0[2], v0[17], v0[11]);
  OUTLINED_FUNCTION_10_2(v5);

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_29();

  __asm { BRAA            X1, X16 }
}

{
  v1 = v0[20];
  v33 = v0[14];
  v35 = v0[15];
  v2 = v0[12];
  v32 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  v0[21] = type metadata accessor for FeatureStoreService();
  v10 = OUTLINED_FUNCTION_21_0();
  static FeatureStoreService.insert<A>(taskId:interactionId:item:)(v10, v11, v7, v6, v5, v4, v2, v32);
  v12 = OUTLINED_FUNCTION_21_0();
  interactionForInjection<A>(taskId:interactionId:)(v12, v13, v7, v6, v3, v33, v35, v14);
  OUTLINED_FUNCTION_22_0();
  if (!v15)
  {
    v34 = v0[21];
    v36 = v0[17];
    v25 = v0[14];
    v24 = v0[15];
    v27 = v0[5];
    v26 = v0[6];
    v28 = v0[3];
    v29 = v0[4];
    (*(v0[16] + 32))(v0[2], v0[20], v0[11]);
    OUTLINED_FUNCTION_10_2(v28);

    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_29();

    __asm { BRAA            X1, X16 }
  }

  v16 = v0[8];
  (*(v0[19] + 8))(v0[20], v0[18]);
  OUTLINED_FUNCTION_0_3();
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v0[22] = v18;
  *v18 = v0;
  v18[1] = runSimulatableTask<A, B>(taskId:interactionId:input:task:);
  v19 = v0[17];
  v20 = v0[9];
  v21 = v0[7];
  OUTLINED_FUNCTION_29();

  __asm { BRAA            X2, X16 }
}

void OUTLINED_FUNCTION_30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return type metadata accessor for Logger();
}

uint64_t sub_22306F40C()
{
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_2_5();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22306F448()
{
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_2_5();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22306F484()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22306F4C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22306F558()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_22306F628()
{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Date();
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v5 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for InteractionWrapper();
  OUTLINED_FUNCTION_15_0();
  v8 = type metadata accessor for AsyncStream.Continuation();
  OUTLINED_FUNCTION_0(v8);
  v10 = v9;
  v11 = (v7 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v13 = *(v12 + 64);
  (*(v4 + 8))(v0 + v5, v2);
  v14 = *(v0 + v7);

  (*(v10 + 8))(v0 + v11, v8);
  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x2821FE8E8](v15, v16, v17);
}

uint64_t specialized Array.count.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x223DD39B0);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

uint64_t sub_22306F798()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for AsyncStream.Continuation();
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 56) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v0 + v6, v2);

  return MEMORY[0x2821FE8E8](v0, v6 + v8, v5 | 7);
}

uint64_t sub_22306F854()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22306F88C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22306F8CC()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_3_5();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22306F900()
{
  OUTLINED_FUNCTION_3_5();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22306F96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for OSSignposter();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_22306F9F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OSSignposter();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22306FA74()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22306FAB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_223072330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *FSFStringFromSourceType(uint64_t a1)
{
  if (a1)
  {
    return @"SELF";
  }

  else
  {
    return @"FEATURE_STORE";
  }
}

uint64_t FSFSourceTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"FEATURE_STORE"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"SELF"])
  {
    v2 = 1;
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v2;
}

void FSFSwitchToMobile()
{
  v0 = geteuid();
  v1 = getpwnam("mobile");
  if (v1)
  {
    pw_uid = v1->pw_uid;
  }

  else
  {
    pw_uid = 501;
  }

  if (pw_uid != v0)
  {
    if (seteuid(pw_uid))
    {
      NSLog(&cfstr_SeteuidToMobil.isa);
    }
  }
}

uint64_t AceObjectFeatureWrapper.serialize()()
{
  v36[1] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for Logger();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v2);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v35[-v10];
  v12 = [*(v0 + 16) dictionary];
  if (!v12)
  {
    v18 = Logger.accessor.unsafeMutableAddressor();
    (*(v4 + 16))(v11, v18, v1);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_2_2(&dword_223066000, v21, v22, "AceObject dictionary is nil.");
      OUTLINED_FUNCTION_1();
    }

    (*(v4 + 8))(v11, v1);
    goto LABEL_11;
  }

  v13 = v12;
  v14 = objc_opt_self();
  v36[0] = 0;
  v15 = [v14 dataWithJSONObject:v13 options:0 error:v36];
  v16 = v36[0];
  if (!v15)
  {
    v23 = v16;
    v24 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v25 = Logger.accessor.unsafeMutableAddressor();
    (*(v4 + 16))(v9, v25, v1);
    v26 = v24;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v24;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_223066000, v27, v28, "Serialization failed. Error: %@", v29, 0xCu);
      outlined destroy of NSObject?(v30);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    else
    {
    }

    (*(v4 + 8))(v9, v1);
LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_12:
  v33 = *MEMORY[0x277D85DE8];
  return v17;
}

Class @objc AceObjectFeatureWrapper.serialize()()
{

  v0 = AceObjectFeatureWrapper.serialize()();
  v2 = v1;

  if (v2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v0, v2);
  }

  return isa;
}

uint64_t static AceObjectFeatureWrapper.deserialize(_:dataVersion:interactionId:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v45[1] = a3;
  v46[4] = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for Logger();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v45 - v18;
  v20 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v46[0] = 0;
  v22 = [v20 JSONObjectWithData:isa options:0 error:v46];

  if (!v22)
  {
    v33 = v46[0];
    v34 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v35 = Logger.accessor.unsafeMutableAddressor();
    (*(v12 + 16))(v17, v35, v9);
    v36 = v34;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    v39 = v9;
    if (os_log_type_enabled(v37, v38))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v34;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_223066000, v37, v38, "Deserialization failed. Error: %@", v40, 0xCu);
      outlined destroy of NSObject?(v41);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    else
    {
    }

    (*(v12 + 8))(v17, v39);
    goto LABEL_13;
  }

  v23 = v46[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
  if ((swift_dynamicCast() & 1) == 0 || (v24 = *(v6 + 144), v25 = objc_allocWithZone(swift_getObjCClassFromMetadata()), v26 = Dictionary._bridgeToObjectiveC()().super.isa, , v27 = [v25 initWithDictionary_], v26, !v27))
  {
    v29 = Logger.accessor.unsafeMutableAddressor();
    (*(v12 + 16))(v19, v29, v9);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_223066000, v30, v31, "Could not create AceObject.", v32, 2u);
      OUTLINED_FUNCTION_1();
    }

    (*(v12 + 8))(v19, v9);
    goto LABEL_13;
  }

  type metadata accessor for AceObjectFeatureWrapper();

  AceObjectFeatureWrapper.__allocating_init(interactionId:dataVersion:feature:)(a4, a5);
  result = swift_dynamicCastClass();
  if (!result)
  {

LABEL_13:
    result = 0;
  }

  v44 = *MEMORY[0x277D85DE8];
  return result;
}

id @objc static AceObjectFeatureWrapper.deserialize(_:dataVersion:interactionId:)(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  swift_getObjCClassMetadata();
  v15 = static AceObjectFeatureWrapper.deserialize(_:dataVersion:interactionId:)(v9, v11, a4, v12, v14);

  outlined consume of Data._Representation(v9, v11);

  return v15;
}

Swift::String_optional __swiftcall AceObjectFeatureWrapper.json()()
{
  v1 = type metadata accessor for Logger();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.Encoding();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v12 = (*(*v0 + 120))(v11);
  if (v13 >> 60 == 15)
  {
    v14 = Logger.accessor.unsafeMutableAddressor();
    (*(v4 + 16))(v8, v14, v1);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_2_2(&dword_223066000, v17, v18, "Json fetch failed.");
      OUTLINED_FUNCTION_1();
    }

    (*(v4 + 8))(v8, v1);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v21 = v12;
    v22 = v13;
    static String.Encoding.utf8.getter();
    v19 = String.init(data:encoding:)();
    v20 = v23;
    outlined consume of Data?(v21, v22);
  }

  v24 = v19;
  v25 = v20;
  result.value._object = v25;
  result.value._countAndFlagsBits = v24;
  return result;
}

id @objc AceObjectFeatureWrapper.json()()
{

  v0 = AceObjectFeatureWrapper.json()();

  if (v0.value._object)
  {
    v1 = MEMORY[0x223DD33D0](v0.value._countAndFlagsBits, v0.value._object);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t AceObjectFeatureWrapper.__deallocating_deinit()
{
  v0 = BaseFeatureWrapper.deinit();

  return MEMORY[0x2821FE8D8](v0, 44, 7);
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id @objc BaseFeatureWrapper.interactionId.getter(uint64_t a1)
{
  v1 = (a1 + *(*a1 + 96));
  v2 = *v1;
  v3 = v1[1];

  v4 = MEMORY[0x223DD33D0](v2, v3);

  return v4;
}

uint64_t BaseFeatureWrapper.interactionId.getter()
{
  OUTLINED_FUNCTION_0_1();
  v2 = (v0 + *(v1 + 96));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t BaseFeatureWrapper.__allocating_init(interactionId:dataVersion:feature:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  BaseFeatureWrapper.init(interactionId:dataVersion:feature:)(a1, a2);
  return v7;
}

uint64_t BaseFeatureWrapper.init(interactionId:dataVersion:feature:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 96));
  *v3 = a1;
  v3[1] = a2;
  OUTLINED_FUNCTION_0_1();
  *(v2 + *(v4 + 104)) = v5;
  OUTLINED_FUNCTION_0_1();
  (*(*(*(v7 + 80) - 8) + 32))(v2 + *(v6 + 88), v8);
  return v2;
}

id @objc static BaseFeatureWrapper.deserialize(_:dataVersion:interactionId:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v6 = a3;
  v7 = a5;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  outlined consume of Data._Representation(v8, v10);

  return 0;
}

Swift::String_optional __swiftcall BaseFeatureWrapper.json()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t BaseFeatureWrapper.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  OUTLINED_FUNCTION_0_1();
  v2 = *(v0 + *(v1 + 96) + 8);

  return v0;
}

uint64_t BaseFeatureWrapper.__deallocating_deinit()
{
  BaseFeatureWrapper.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata completion function for BaseFeatureWrapper(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

NSDataCompressionAlgorithm_optional __swiftcall CompressionPolicy.compressionAlgorithm()()
{
  v1 = *v0;
  v2 = 1;
  switch(*v0)
  {
    case 1:
      v1 = NSDataCompressionAlgorithmLZFSE;
      v2 = 0;
      break;
    case 2:
      v2 = 0;
      v1 = NSDataCompressionAlgorithmLZ4;
      break;
    case 3:
      v2 = 0;
      v1 = NSDataCompressionAlgorithmLZMA;
      break;
    case 4:
      v2 = 0;
      v1 = NSDataCompressionAlgorithmZlib;
      break;
    default:
      break;
  }

  result.value = v1;
  result.is_nil = v2;
  return result;
}

uint64_t CompressionPolicy.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v5 = a1 == OUTLINED_FUNCTION_17_0() && a2 == v4;
  if (v5 || (OUTLINED_FUNCTION_10() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == 0x6573667A6CLL && a2 == 0xE500000000000000;
    if (v7 || (OUTLINED_FUNCTION_10() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = a1 == 3439212 && a2 == 0xE300000000000000;
      if (v8 || (OUTLINED_FUNCTION_10() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = a1 == 1634564716 && a2 == 0xE400000000000000;
        if (v9 || (OUTLINED_FUNCTION_10() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1651076218 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v11 = OUTLINED_FUNCTION_10();

          if (v11)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

Swift::Int CompressionPolicy.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DD3B40](a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CompressionPolicy.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CompressionPolicy.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompressionPolicy.CodingKeys()
{
  lazy protocol witness table accessor for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys();
  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE718](v0);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompressionPolicy.CodingKeys()
{
  lazy protocol witness table accessor for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys();
  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE720](v0);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompressionPolicy.DoNotCompressCodingKeys()
{
  lazy protocol witness table accessor for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys();
  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE718](v0);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompressionPolicy.DoNotCompressCodingKeys()
{
  lazy protocol witness table accessor for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys();
  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE720](v0);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CompressionPolicy.Lz4CodingKeys@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = CompressionPolicy.Lz4CodingKeys.init(stringValue:)(a1);
  *a2 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompressionPolicy.Lz4CodingKeys()
{
  lazy protocol witness table accessor for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys();
  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE718](v0);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompressionPolicy.Lz4CodingKeys()
{
  lazy protocol witness table accessor for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys();
  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE720](v0);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompressionPolicy.LzfseCodingKeys()
{
  lazy protocol witness table accessor for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys();
  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE718](v0);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompressionPolicy.LzfseCodingKeys()
{
  lazy protocol witness table accessor for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys();
  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE720](v0);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompressionPolicy.LzmaCodingKeys()
{
  lazy protocol witness table accessor for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys();
  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE718](v0);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompressionPolicy.LzmaCodingKeys()
{
  lazy protocol witness table accessor for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys();
  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE720](v0);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompressionPolicy.ZlibCodingKeys()
{
  lazy protocol witness table accessor for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys();
  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE718](v0);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompressionPolicy.ZlibCodingKeys()
{
  lazy protocol witness table accessor for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys();
  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE720](v0);
}

unint64_t lazy protocol witness table accessor for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys()
{
  result = lazy protocol witness table cache variable for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys()
{
  result = lazy protocol witness table cache variable for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys()
{
  result = lazy protocol witness table cache variable for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys()
{
  result = lazy protocol witness table cache variable for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys);
  }

  return result;
}

Swift::Int CompressionPolicy.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DD3B40](v1);
  return Hasher._finalize()();
}

void CompressionPolicy.init(from:)()
{
  OUTLINED_FUNCTION_26();
  v88 = v0;
  v3 = v2;
  v84 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO14ZlibCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO14ZlibCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  v81 = OUTLINED_FUNCTION_0(v5);
  v82 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  v87 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO14LzmaCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO14LzmaCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  v79 = OUTLINED_FUNCTION_0(v11);
  v80 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  v86 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO13Lz4CodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO13Lz4CodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  v18 = OUTLINED_FUNCTION_0(v17);
  v77 = v19;
  v78 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11();
  v83 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO15LzfseCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO15LzfseCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  v25 = OUTLINED_FUNCTION_0(v24);
  v75 = v26;
  v76 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v29);
  v31 = &v69 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO23DoNotCompressCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO23DoNotCompressCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  OUTLINED_FUNCTION_0(v32);
  v74 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_23_0();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO10CodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO10CodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  OUTLINED_FUNCTION_0(v37);
  v85 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v41);
  v43 = &v69 - v42;
  v44 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  lazy protocol witness table accessor for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys();
  v45 = v88;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v45)
  {
    goto LABEL_10;
  }

  v72 = v32;
  v73 = v1;
  v88 = v31;
  v46 = v86;
  v47 = v87;
  v48 = v43;
  v49 = KeyedDecodingContainer.allKeys.getter();
  started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC12FeatureStore17CompressionPolicyO10CodingKeys33_6E4DA4487853CCBD20194769027D9644LLO_Tt1g5(v49, 0);
  if (v51 == v52 >> 1)
  {
    v54 = v85;
LABEL_9:
    v63 = type metadata accessor for DecodingError();
    swift_allocError();
    v65 = v64;
    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v65 = &type metadata for CompressionPolicy;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x277D84160], v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v54 + 8))(v48, v37);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_11:
    OUTLINED_FUNCTION_24();
    return;
  }

  if (v51 < (v52 >> 1))
  {
    v70 = *(v50 + v51);
    v55 = specialized ArraySlice.subscript.getter(v51 + 1, v52 >> 1, started, v50, v51, v52);
    v57 = v56;
    v59 = v58;
    swift_unknownObjectRelease();
    v71 = v55;
    if (v57 == v59 >> 1)
    {
      v60 = v84;
      v61 = v85;
      switch(v70)
      {
        case 1:
          lazy protocol witness table accessor for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys();
          v46 = v88;
          OUTLINED_FUNCTION_4();
          swift_unknownObjectRelease();
          v68 = v75;
          v67 = v76;
          goto LABEL_16;
        case 2:
          lazy protocol witness table accessor for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys();
          v46 = v83;
          OUTLINED_FUNCTION_4();
          swift_unknownObjectRelease();
          v68 = v77;
          v67 = v78;
          goto LABEL_16;
        case 3:
          lazy protocol witness table accessor for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys();
          OUTLINED_FUNCTION_4();
          swift_unknownObjectRelease();
          v67 = v79;
          v68 = v80;
LABEL_16:
          (*(v68 + 8))(v46, v67);
          break;
        case 4:
          lazy protocol witness table accessor for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys();
          v55 = v43;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          (*(v82 + 8))(v47, v81);
          break;
        default:
          lazy protocol witness table accessor for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys();
          v62 = v73;
          OUTLINED_FUNCTION_4();
          swift_unknownObjectRelease();
          (*(v74 + 8))(v62, v72);
          break;
      }

      (*(v61 + 8))(v55, v37);
      *v60 = v70;
      __swift_destroy_boxed_opaque_existential_1(v3);
      goto LABEL_11;
    }

    v54 = v85;
    v48 = v43;
    goto LABEL_9;
  }

  __break(1u);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CompressionPolicy.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DD3B40](v1);
  return Hasher._finalize()();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t FeatureStoreBiomeEvent.interactionId.getter()
{
  v1 = *(v0 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_interactionId);
  v2 = *(v0 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_interactionId + 8);

  return OUTLINED_FUNCTION_12_0();
}

uint64_t FeatureStoreBiomeEvent.featureData.getter()
{
  v1 = *(v0 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData);
  v2 = *(v0 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData + 8);
  v3 = OUTLINED_FUNCTION_12_0();
  outlined copy of Data._Representation(v3, v4);
  return OUTLINED_FUNCTION_12_0();
}

uint64_t FeatureStoreBiomeEvent.timestamp.setter(double a1)
{
  v3 = OBJC_IVAR___FSFFeatureStoreBiomeEvent_timestamp;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t FeatureStoreBiomeEvent.dataVersion.setter(int a1)
{
  v3 = OBJC_IVAR___FSFFeatureStoreBiomeEvent_dataVersion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for FeatureStoreBiomeEvent.dataVersion : FeatureStoreBiomeEvent@<X0>(void **a1@<X0>, _DWORD *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t static FeatureStoreBiomeEvent.event(with:dataVersion:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = type metadata accessor for Logger();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_23_0();
  v8 = type metadata accessor for JSONDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type FeatureStoreBiomeEvent and conformance FeatureStoreBiomeEvent(&lazy protocol witness table cache variable for type FeatureStoreBiomeEvent and conformance FeatureStoreBiomeEvent);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v11 = OBJC_IVAR___FSFFeatureStoreBiomeEvent_dataVersion;
  swift_beginAccess();
  *(v13 + v11) = a3;
  return v13;
}

FeatureStore::FeatureStoreBiomeEvent::CodingKeys_optional __swiftcall FeatureStoreBiomeEvent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FeatureStoreBiomeEvent.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 0xED000064496E6F69;
  v3 = 0x7463617265746E69;
  v4 = a1;
  v5 = 0x7463617265746E69;
  v6 = 0xED000064496E6F69;
  switch(v4)
  {
    case 1:
      v6 = 0xE700000000000000;
      v5 = 0x65727574616566;
      break;
    case 2:
      v5 = 0x7372655661746164;
      v6 = 0xEB000000006E6F69;
      break;
    case 3:
      v5 = 0xD000000000000011;
      v6 = 0x8000000223093AE0;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE700000000000000;
      v3 = 0x65727574616566;
      break;
    case 2:
      v3 = 0x7372655661746164;
      v2 = 0xEB000000006E6F69;
      break;
    case 3:
      v3 = 0xD000000000000011;
      v2 = 0x8000000223093AE0;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

FeatureStore::FeatureStoreBiomeEvent::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance FeatureStoreBiomeEvent.CodingKeys@<W0>(Swift::String *a1@<X0>, FeatureStore::FeatureStoreBiomeEvent::CodingKeys_optional *a2@<X8>)
{
  result.value = FeatureStoreBiomeEvent.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FeatureStoreBiomeEvent.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = FeatureStoreBiomeEvent.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FeatureStoreBiomeEvent.CodingKeys()
{
  lazy protocol witness table accessor for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys();
  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE718](v0);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FeatureStoreBiomeEvent.CodingKeys()
{
  lazy protocol witness table accessor for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys();
  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE720](v0);
}

void FeatureStoreBiomeEvent.init(from:)()
{
  OUTLINED_FUNCTION_26();
  v67 = v1;
  v69 = v0;
  v4 = v3;
  v72[2] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for Logger();
  v6 = OUTLINED_FUNCTION_0(v5);
  v66 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = type metadata accessor for LogSignpost();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_23_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12FeatureStore0dE10BiomeEventC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy12FeatureStore0dE10BiomeEventC10CodingKeysOGMR);
  OUTLINED_FUNCTION_0(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v20);
  v22 = v63 - v21;
  v23 = v4[3];
  v24 = v4[4];
  v68 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v23);
  lazy protocol witness table accessor for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys();
  v25 = v67;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1(v68);
LABEL_4:
    type metadata accessor for FeatureStoreBiomeEvent();
    OUTLINED_FUNCTION_5();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v65 = v12;
    v67 = v2;
    v26 = v17;
    LOBYTE(v72[0]) = 0;
    OUTLINED_FUNCTION_22();
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = v69;
    v30 = &v69[OBJC_IVAR___FSFFeatureStoreBiomeEvent_interactionId];
    *v30 = v27;
    v30[1] = v31;
    LOBYTE(v72[0]) = 2;
    OUTLINED_FUNCTION_22();
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v32 & 0x100000000) != 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    *&v29[OBJC_IVAR___FSFFeatureStoreBiomeEvent_dataVersion] = v33;
    v71 = 3;
    lazy protocol witness table accessor for type CompressionPolicy and conformance CompressionPolicy();
    OUTLINED_FUNCTION_13();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v34 = v72[0];
    if (LOBYTE(v72[0]) == 5)
    {
      v34 = 0;
    }

    v35 = OBJC_IVAR___FSFFeatureStoreBiomeEvent_compressionPolicy;
    v29[OBJC_IVAR___FSFFeatureStoreBiomeEvent_compressionPolicy] = v34;
    v71 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_13();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36 = 0;
    v38 = v72[0];
    v63[1] = 0;
    v64 = v72[1];
    v39 = v29[v35];
    v40 = v67;
    switch(v39)
    {
      case 1:
        goto LABEL_16;
      case 2:
        v36 = 1;
        goto LABEL_16;
      case 3:
        v36 = 2;
        goto LABEL_16;
      case 4:
        v36 = 3;
LABEL_16:
        v63[0] = v15;
        v43 = v65;
        default argument 0 of static LogSignpost.begin(logger:_:)(v65);
        static LogSignpost.begin(logger:_:)(v43, "BiomeDecodeDecompress", 21, 2u, v40);
        (*(v66 + 8))(v43, v5);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v72[0] = 0;
        v45 = [(objc_class *)isa decompressedDataUsingAlgorithm:v36 error:v72];

        v46 = v72[0];
        v47 = v40;
        if (!v45)
        {
          v58 = v46;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v59 = OUTLINED_FUNCTION_16();
          outlined consume of Data._Representation(v59, v60);
          outlined destroy of LogSignpost(v47);
          v61 = OUTLINED_FUNCTION_20();
          v62(v61, v63[0]);
          __swift_destroy_boxed_opaque_existential_1(v68);
          v37 = v30[1];

          goto LABEL_4;
        }

        v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        v51 = v69;
        v52 = &v69[OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData];
        *v52 = v48;
        v52[1] = v50;
        v29 = v51;
        LogSignpost.end()();
        v53 = OUTLINED_FUNCTION_16();
        outlined consume of Data._Representation(v53, v54);
        outlined destroy of LogSignpost(v47);
        v55 = OUTLINED_FUNCTION_20();
        v56(v55, v63[0]);
LABEL_18:
        *&v29[OBJC_IVAR___FSFFeatureStoreBiomeEvent_timestamp] = 0x7FF0000000000000;
        v57 = type metadata accessor for FeatureStoreBiomeEvent();
        v70.receiver = v29;
        v70.super_class = v57;
        objc_msgSendSuper2(&v70, sel_init);
        __swift_destroy_boxed_opaque_existential_1(v68);
        break;
      default:
        (*(v26 + 8))(v22, v15);
        v41 = &v29[OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData];
        v42 = v64;
        *v41 = v38;
        v41[1] = v42;
        goto LABEL_18;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_24();
}

id FeatureStoreBiomeEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeatureStoreBiomeEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureStoreBiomeEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Decodable.init(from:) in conformance FeatureStoreBiomeEvent@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 216))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC12FeatureStore17CompressionPolicyO10CodingKeys33_6E4DA4487853CCBD20194769027D9644LLO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t specialized ArraySlice.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_0()
{

  return swift_beginAccess();
}

uint64_t NSCodingFeatureWrapper.serialize()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  [v1 setOutputFormat_];
  v2 = *(v0 + 16);
  v3 = MEMORY[0x223DD33D0](1953460082, 0xE400000000000000);
  [v1 encodeObject:v2 forKey:v3];

  [v1 finishEncoding];
  v4 = [v1 encodedData];
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

Class @objc NSCodingFeatureWrapper.serialize()()
{

  v0 = NSCodingFeatureWrapper.serialize()();
  v2 = v1;

  if (v2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v0, v2);
  }

  return isa;
}

uint64_t static NSCodingFeatureWrapper.deserialize(_:dataVersion:interactionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v7 = type metadata accessor for Logger();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  type metadata accessor for NSKeyedUnarchiver();
  v16 = *(v5 + 144);
  v17 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v18 = v10;
  v19 = v25;
  if (v17)
  {
    type metadata accessor for NSCodingFeatureWrapper();

    AceObjectFeatureWrapper.__allocating_init(interactionId:dataVersion:feature:)(a4, v19);
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  else
  {
    v21 = Logger.accessor.unsafeMutableAddressor();
    (*(v18 + 16))(v15, v21, v7);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_223066000, v22, v23, "Deserialization failed. Returned nil object.", v24, 2u);
      OUTLINED_FUNCTION_1();
    }

    (*(v18 + 8))(v15, v7);
  }

  return 0;
}

unint64_t type metadata accessor for NSKeyedUnarchiver()
{
  result = lazy cache variable for type metadata for NSKeyedUnarchiver;
  if (!lazy cache variable for type metadata for NSKeyedUnarchiver)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSKeyedUnarchiver);
  }

  return result;
}

id @objc static NSCodingFeatureWrapper.deserialize(_:dataVersion:interactionId:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  swift_getObjCClassMetadata();
  v15 = static NSCodingFeatureWrapper.deserialize(_:dataVersion:interactionId:)(v9, v11, a4, v12, v14);

  outlined consume of Data._Representation(v9, v11);

  return v15;
}

Swift::String_optional __swiftcall NSCodingFeatureWrapper.json()()
{
  v1 = type metadata accessor for Logger();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.Encoding();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v12 = (*(*v0 + 120))(v11);
  if (v13 >> 60 == 15)
  {
    v14 = Logger.accessor.unsafeMutableAddressor();
    (*(v4 + 16))(v8, v14, v1);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_223066000, v15, v16, "Json fetch failed.", v17, 2u);
      OUTLINED_FUNCTION_1();
    }

    (*(v4 + 8))(v8, v1);
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v20 = v12;
    v21 = v13;
    static String.Encoding.utf8.getter();
    v18 = String.init(data:encoding:)();
    v19 = v22;
    outlined consume of Data?(v20, v21);
  }

  v23 = v18;
  v24 = v19;
  result.value._object = v24;
  result.value._countAndFlagsBits = v23;
  return result;
}

id @objc NSCodingFeatureWrapper.json()()
{

  v0 = NSCodingFeatureWrapper.json()();

  if (v0.value._object)
  {
    v1 = MEMORY[0x223DD33D0](v0.value._countAndFlagsBits, v0.value._object);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t PBCodableFeatureWrapper.serialize()()
{
  v1 = [*(v0 + 16) data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Class @objc PBCodableFeatureWrapper.serialize()()
{

  v0 = PBCodableFeatureWrapper.serialize()();
  v2 = v1;

  if (v2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v0, v2);
  }

  return isa;
}

uint64_t static PBCodableFeatureWrapper.deserialize(_:dataVersion:interactionId:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v12 = type metadata accessor for Logger();
  v13 = OUTLINED_FUNCTION_2_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  v21 = *(v7 + 144);
  objc_allocWithZone(swift_getObjCClassFromMetadata());
  outlined copy of Data._Representation(a1, a2);
  if (@nonobjc PBCodable.init(data:)(a1, a2))
  {
    type metadata accessor for PBCodableFeatureWrapper();

    AceObjectFeatureWrapper.__allocating_init(interactionId:dataVersion:feature:)(a4, a5);
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  else
  {
    Logger.accessor.unsafeMutableAddressor();
    v23 = OUTLINED_FUNCTION_1_1();
    v24(v23);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      OUTLINED_FUNCTION_2_2(&dword_223066000, v28, v29, "Serialization failed");
      MEMORY[0x223DD4390](v27, -1, -1);
    }

    (*(v15 + 8))(v20, v5);
  }

  return 0;
}

id @objc static PBCodableFeatureWrapper.deserialize(_:dataVersion:interactionId:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  swift_getObjCClassMetadata();
  v15 = static PBCodableFeatureWrapper.deserialize(_:dataVersion:interactionId:)(v9, v11, a4, v12, v14);

  outlined consume of Data._Representation(v9, v11);

  return v15;
}

Swift::String_optional __swiftcall PBCodableFeatureWrapper.json()()
{
  v1 = type metadata accessor for Logger();
  v2 = OUTLINED_FUNCTION_2_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = type metadata accessor for String.Encoding();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_2();
  v12 = (*(*v0 + 120))();
  if (v13 >> 60 == 15)
  {
    Logger.accessor.unsafeMutableAddressor();
    v14 = OUTLINED_FUNCTION_1_1();
    v15(v14);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      OUTLINED_FUNCTION_2_2(&dword_223066000, v19, v20, "Json fetch failed.");
      MEMORY[0x223DD4390](v18, -1, -1);
    }

    (*(v4 + 8))(v9);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v23 = v12;
    v24 = v13;
    static String.Encoding.utf8.getter();
    v21 = String.init(data:encoding:)();
    v22 = v25;
    outlined consume of Data?(v23, v24);
  }

  v26 = v21;
  v27 = v22;
  result.value._object = v27;
  result.value._countAndFlagsBits = v26;
  return result;
}

id @objc PBCodableFeatureWrapper.json()()
{

  v0 = PBCodableFeatureWrapper.json()();

  if (v0.value._object)
  {
    v1 = MEMORY[0x223DD33D0](v0.value._countAndFlagsBits, v0.value._object);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id @nonobjc PBCodable.init(data:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

uint64_t SerializableFeatureWrapper.serialize()()
{
  v1 = *(*(*v0 + 152) + 16);
  v2 = *(*v0 + 144);
  v3 = v0 + *(*v0 + 88);
  return v1(v2);
}

Class @objc SerializableFeatureWrapper.serialize()()
{

  v0 = SerializableFeatureWrapper.serialize()();
  v2 = v1;

  if (v2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v0, v2);
  }

  return isa;
}

uint64_t static SerializableFeatureWrapper.deserialize(_:dataVersion:interactionId:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v30 = a4;
  v31 = a3;
  v34 = a1;
  v35 = a2;
  v6 = *(v5 + 144);
  v29 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v33 = v5;
  v14 = *(v5 + 152);
  swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_0();
  v18 = v17;
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v28 - v25;
  (*(v14 + 24))(v34, v35, v6, v14);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v6);
    (*(v18 + 32))(v26, v13, v6);
    type metadata accessor for SerializableFeatureWrapper();
    (*(v18 + 16))(v24, v26, v6);

    SerializableFeatureWrapper.__allocating_init(interactionId:dataVersion:feature:)();
    (*(v18 + 8))(v26, v6);
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v6);
    (*(v8 + 8))(v13, v29);
  }

  return 0;
}

uint64_t SerializableFeatureWrapper.__allocating_init(interactionId:dataVersion:feature:)()
{
  OUTLINED_FUNCTION_1_2();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return SerializableFeatureWrapper.init(interactionId:dataVersion:feature:)();
}

id @objc static SerializableFeatureWrapper.deserialize(_:dataVersion:interactionId:)(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  swift_getObjCClassMetadata();
  v15 = static SerializableFeatureWrapper.deserialize(_:dataVersion:interactionId:)(v9, v11, a4, v12, v14);

  outlined consume of Data._Representation(v9, v11);

  return v15;
}

uint64_t SerializableFeatureWrapper.init(interactionId:dataVersion:feature:)()
{
  OUTLINED_FUNCTION_1_2();
  v4 = *(*v1 + 144);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v6 + 16))(&v14 - v10, v11, v4);
  v12 = BaseFeatureWrapper.init(interactionId:dataVersion:feature:)(v3, v2);
  (*(v6 + 8))(v0, v4);
  return v12;
}

uint64_t SerializableFeatureWrapper.__deallocating_deinit()
{
  v0 = BaseFeatureWrapper.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id INIntent.fsf_serialize()()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = INSJSONEncodedIntent();
  if (result)
  {
    v6 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String.Encoding.utf8.getter();
    v7 = String.data(using:allowLossyConversion:)();

    (*(v1 + 8))(v4, v0);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static INIntent.fsf_deserialize(from:)()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = INIntentCreate();

  return v1;
}

id protocol witness for static Serializable.fsf_deserialize(from:) in conformance INIntent@<X0>(void *a1@<X8>)
{
  result = static INIntent.fsf_deserialize(from:)();
  *a1 = result;
  return result;
}

id INIntentResponse.fsf_serialize()()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = INSJSONEncodedIntentResponse();
  if (result)
  {
    v6 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String.Encoding.utf8.getter();
    v7 = String.data(using:allowLossyConversion:)();

    (*(v1 + 8))(v4, v0);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static INIntentResponse.fsf_deserialize(from:)()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = INIntentResponseCreate();

  return v1;
}

id protocol witness for static Serializable.fsf_deserialize(from:) in conformance INIntentResponse@<X0>(void *a1@<X8>)
{
  result = static INIntentResponse.fsf_deserialize(from:)();
  *a1 = result;
  return result;
}

uint64_t static JSONCoder.decode(data:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v8 = type metadata accessor for JSONDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, a1);
}

uint64_t protocol witness for static Coder.encode(codable:) in conformance JSONCoder<A>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  return static JSONCoder.encode(codable:)();
}

uint64_t static NSCodingCoder.encode(codable:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  [v2 setOutputFormat_];
  [v2 encodeObject:a1 forKey:*MEMORY[0x277CCA308]];
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t static NSCodingCoder.decode(data:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  type metadata accessor for NSKeyedUnarchiver();
  result = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (!result)
  {
    v7 = Logger.accessor.unsafeMutableAddressor();
    (*(v1 + 16))(v5, v7, v0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_223066000, v8, v9, "Decoding failed, unexpectedly returns . Returning nil object", v10, 2u);
      MEMORY[0x223DD4390](v10, -1, -1);
    }

    (*(v1 + 8))(v5, v0);
    return 0;
  }

  return result;
}

uint64_t protocol witness for static Coder.decode(data:) in conformance NSCodingCoder<A>@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = static NSCodingCoder.decode(data:)();
  *a2 = result;
  return result;
}

uint64_t static PBCodableCoder.encode(codable:)(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id static PBCodableCoder.decode(data:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  outlined copy of Data._Representation(a1, a2);
  v10 = @nonobjc PBCodable.init(data:)(a1, a2);
  if (!v10)
  {
    v11 = Logger.accessor.unsafeMutableAddressor();
    (*(v5 + 16))(v8, v11, v4);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_223066000, v12, v13, "Serialization failed", v14, 2u);
      MEMORY[0x223DD4390](v14, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }

  return v10;
}

id protocol witness for static Coder.decode(data:) in conformance PBCodableCoder<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = static PBCodableCoder.decode(data:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static FeatureStoreService.logger);
  v1 = __swift_project_value_buffer(v0, static FeatureStoreService.logger);
  Logger.service.unsafeMutableAddressor();
  OUTLINED_FUNCTION_9_0(v0);
  v3 = *(v2 + 16);

  return v3(v1);
}

uint64_t one-time initialization function for signposter()
{
  v0 = type metadata accessor for Logger();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v9, static FeatureStoreService.signposter);
  __swift_project_value_buffer(v9, static FeatureStoreService.signposter);
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v10 = __swift_project_value_buffer(v0, static FeatureStoreService.logger);
  (*(v3 + 16))(v8, v10, v0);
  return OSSignposter.init(logger:)();
}

uint64_t FeatureStoreService.logger.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = a2(0);

  return __swift_project_value_buffer(v5, a3);
}

uint64_t static FeatureStoreService.logger.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  __swift_project_value_buffer(v7, a3);
  OUTLINED_FUNCTION_9_0(v7);
  v9 = *(v8 + 16);

  return v9(a4);
}

uint64_t static FeatureStoreService.qos.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x223DD33D0](0xD000000000000014, 0x8000000223093C80);
  v2 = [v0 stringForKey_];

  if (v2)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = v4 == 0x74696E4972657375 && v6 == 0xED00006465746169;
    if (v7 || (OUTLINED_FUNCTION_6_0() & 1) != 0)
    {

      return static DispatchQoS.userInitiated.getter();
    }

    v9 = v4 == 0x65746E4972657375 && v6 == 0xEF65766974636172;
    if (v9 || (OUTLINED_FUNCTION_6_0() & 1) != 0)
    {

      return MEMORY[0x2821FF020](v10);
    }

    v11 = v4 == 0x7974696C697475 && v6 == 0xE700000000000000;
    if (v11 || (OUTLINED_FUNCTION_6_0() & 1) != 0)
    {

      return MEMORY[0x2821FF030](v12);
    }

    if (v4 != 0x756F72676B636162 || v6 != 0xEA0000000000646ELL)
    {
      OUTLINED_FUNCTION_6_0();
    }
  }

  return MEMORY[0x2821FF008](v3);
}

uint64_t one-time initialization function for fsCaptureQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_9_0(v0);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_2();
  type metadata accessor for OS_dispatch_queue();
  type metadata accessor for FeatureStoreService();
  static FeatureStoreService.qos.getter();
  (*(v7 + 104))(v12, *MEMORY[0x277D85268], v4);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static FeatureStoreService.fsCaptureQueue = result;
  return result;
}

uint64_t *FeatureStoreService.fsCaptureQueue.unsafeMutableAddressor()
{
  if (one-time initialization token for fsCaptureQueue != -1)
  {
    OUTLINED_FUNCTION_2_4();
  }

  return &static FeatureStoreService.fsCaptureQueue;
}

id static FeatureStoreService.fsCaptureQueue.getter()
{
  if (one-time initialization token for fsCaptureQueue != -1)
  {
    OUTLINED_FUNCTION_2_4();
  }

  v0 = static FeatureStoreService.fsCaptureQueue;

  return v0;
}

uint64_t static FeatureStoreService.overriddenInternalBuildValue.setter(char a1)
{
  result = OUTLINED_FUNCTION_10_0();
  static FeatureStoreService.overriddenInternalBuildValue = a1;
  return result;
}

uint64_t static FeatureStoreService.overrideSupportedUserCheck.setter(char a1)
{
  result = OUTLINED_FUNCTION_10_0();
  static FeatureStoreService.overrideSupportedUserCheck = a1;
  return result;
}

uint64_t static FeatureStoreService.performRetrieve<A>(retrieveBlock:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v28 = *(a2 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = type metadata accessor for Logger();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  v19 = type metadata accessor for LogSignpost();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_2();
  v23 = v22 - v21;
  if ((static FeatureStoreService.isInternalBuild.getter() & 1) == 0)
  {
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    swift_allocError();
    *v26 = 0xD000000000000018;
    *(v26 + 8) = 0x8000000223093CA0;
    *(v26 + 16) = 3;
    return swift_willThrow();
  }

  if (![objc_opt_self() isSupportedUser])
  {
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    swift_allocError();
    *v27 = 0xD000000000000040;
    *(v27 + 8) = 0x8000000223093CC0;
    *(v27 + 16) = 0;
    return swift_willThrow();
  }

  default argument 0 of static LogSignpost.begin(logger:_:)(v18);
  static LogSignpost.begin(logger:_:)(v18, "Retrieve", 8, 2u, v23);
  v24 = (*(v13 + 8))(v18, v10);
  a1(v24);
  if (!v3)
  {
    (*(v28 + 32))(a3, v9, a2);
  }

  LogSignpost.end()();
  return outlined destroy of LogSignpost(v23);
}

uint64_t static FeatureStoreService.deleteStream(identifier:)()
{
  type metadata accessor for FeatureStoreStreamAccessor();

  v0 = FeatureStoreStreamAccessor.__allocating_init(identifier:)();
  (*(*v0 + 136))(v0);
}

id FeatureStoreService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeatureStoreService.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureStoreService();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FeatureStoreService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureStoreService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError()
{
  result = lazy protocol witness table cache variable for type FeatureStoreError and conformance FeatureStoreError;
  if (!lazy protocol witness table cache variable for type FeatureStoreError and conformance FeatureStoreError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureStoreError and conformance FeatureStoreError);
  }

  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t static FeatureStoreService.insertAceObject<A>(interactionId:item:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_5();
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a3;
  v13[4] = a1;
  v13[5] = a2;
  v14 = a3;

  default argument 0 of static FeatureStoreService.performInsert(qos:insertBlock:completion:)();
  static FeatureStoreService.performInsert(qos:insertBlock:completion:)(v12, partial apply for closure #1 in static FeatureStoreService.insertAceObject<A>(interactionId:item:), v13, 0, 0);

  return (*(v9 + 8))(v12, v8);
}

uint64_t partial apply for closure #1 in static FeatureStoreService.insertAceObject<A>(interactionId:item:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  swift_getObjectType();
  swift_getMetatypeMetadata();
  v5 = String.init<A>(describing:)();
  v7 = v6;
  type metadata accessor for AceObjectStreamAccessor();
  v8 = AceObjectStreamAccessor.__allocating_init(identifier:)(v5, v7);
  v10 = v2;
  (*(*v8 + 104))(v3, v4, &v10);
}

uint64_t static FeatureStoreService.retrieveAceObject<A>(query:)(uint64_t a1, uint64_t a2)
{
  v5 = static FeatureStoreService.retrieveAceObjectWithInteractionWrapper<A>(query:)();
  if (!v3)
  {
    v10[5] = v5;
    MEMORY[0x28223BE20](v5);
    v10[2] = a2;
    type metadata accessor for InteractionWrapper();
    v6 = type metadata accessor for Array();
    OUTLINED_FUNCTION_0_2();
    WitnessTable = swift_getWitnessTable();
    v2 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static FeatureStoreService.retrieveAceObject<A>(query:), v10, v6, a2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);
  }

  return v2;
}

unint64_t static FeatureStoreService.retrieve<A>(interactionId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v7 = v3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1_3(v5);
  OUTLINED_FUNCTION_1_3(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  OUTLINED_FUNCTION_2_5();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_223092B00;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;

  v17 = StreamQuery.__allocating_init(startDate:endDate:interactionIds:)(v5, v15, v16);
  v18 = v7;
  v19 = static FeatureStoreService.retrieveAceObject<A>(query:)(v17, a3);

  if (!v6)
  {
    v23 = v19;
    type metadata accessor for Array();
    OUTLINED_FUNCTION_0_2();
    swift_getWitnessTable();
    Collection.first.getter();
    v18 = v25;

    if (!v18)
    {
      v23 = 0;
      v24 = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      v23 = 0xD000000000000028;
      v24 = 0x8000000223093DA0;
      MEMORY[0x223DD3460](a1, a2);
      v21 = v23;
      v18 = v24;
      lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
      swift_allocError();
      *v22 = v21;
      *(v22 + 8) = v18;
      *(v22 + 16) = 0;
      swift_willThrow();
    }
  }

  return v18;
}

{
  return static FeatureStoreService.retrieveAceObject<A>(interactionId:)(a1, a2, a3);
}

uint64_t static FeatureStoreService.retrieveAceObjectWithInteractionWrapper<A>(query:)()
{
  type metadata accessor for InteractionWrapper();
  v1 = type metadata accessor for Array();
  result = static FeatureStoreService.performRetrieve<A>(retrieveBlock:)(partial apply for closure #1 in static FeatureStoreService.retrieveAceObjectWithInteractionWrapper<A>(query:), v1, &v3);
  if (!v0)
  {
    return v3;
  }

  return result;
}

id partial apply for closure #1 in static FeatureStoreService.retrieveAceObject<A>(query:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = v2;
  return v2;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static FeatureStoreService.retrieveWithInteractionWrapper<A>(interactionId:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1_3(v2);
  OUTLINED_FUNCTION_1_3(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  OUTLINED_FUNCTION_2_5();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_223092B00;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  v11 = StreamQuery.__allocating_init(startDate:endDate:interactionIds:)(v2, v9, v10);
  v12 = static FeatureStoreService.retrieveAceObjectWithInteractionWrapper<A>(query:)();

  return v12;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1_3(v2);
  OUTLINED_FUNCTION_1_3(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  OUTLINED_FUNCTION_2_5();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_223092B00;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  v11 = StreamQuery.__allocating_init(startDate:endDate:interactionIds:)(v2, v9, v10);
  v12 = static FeatureStoreService.retrieveNSCodingWithInteractionWrapper<A>(query:)();

  return v12;
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  type metadata accessor for StreamQuery();
  v11 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_223092B00;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v13 = StreamQuery.__allocating_init(startDate:endDate:interactionIds:)(v10, v8, v12);
  v14 = static FeatureStoreService.retrieveSerializableWithInteractionWrapper<A>(query:)();

  return v14;
}

uint64_t partial apply for closure #1 in static FeatureStoreService.retrieveAceObjectWithInteractionWrapper<A>(query:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 24);
  v18 = *(v1 + 16);
  swift_getMetatypeMetadata();
  v5 = String.init<A>(describing:)();
  v7 = v6;
  type metadata accessor for AceObjectStreamAccessor();
  v8 = AceObjectStreamAccessor.__allocating_init(identifier:)(v5, v7);
  v9 = *((*MEMORY[0x277D85000] & *v4) + 0xA0);
  v10 = *(v9() + 16);

  if (v10 != 1)
  {
    goto LABEL_6;
  }

  v12 = (v9)(v11);
  if (!v12[2])
  {

LABEL_6:
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    swift_allocError();
    *v17 = 0xD000000000000075;
    *(v17 + 8) = 0x8000000223093DD0;
    *(v17 + 16) = 0;
    swift_willThrow();
  }

  v13 = v12[4];
  v14 = v12[5];

  v15 = (*(*v8 + 136))(v13, v14);

  if (!v2)
  {
    *a1 = v15;
  }

  return result;
}

void static accessorFor(streamIdentifier:) in AccessorProvider #1 in static FeatureStoreService.insert(streamIdentifier:interactionId:featureData:)()
{
  OUTLINED_FUNCTION_9_1();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  if (_MergedGlobals != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = OUTLINED_FUNCTION_7_2();
  if (specialized Dictionary.subscript.getter(v16, v17, v18))
  {
    swift_endAccess();
    v19 = Logger.service.unsafeMutableAddressor();
    (*(v7 + 16))(v15, v19, v4);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_6_1();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136315138;
      v24 = OUTLINED_FUNCTION_7_2();
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v26);
      _os_log_impl(&dword_223066000, v20, v21, "Using cached accessor for streamIdentifier: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_9();
      MEMORY[0x223DD4390]();
      OUTLINED_FUNCTION_9();
      MEMORY[0x223DD4390]();
    }

    (*(v7 + 8))(v15, v4);
  }

  else
  {
    swift_endAccess();
    v27 = Logger.service.unsafeMutableAddressor();
    (*(v7 + 16))(v12, v27, v4);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      OUTLINED_FUNCTION_6_1();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136315138;
      v32 = OUTLINED_FUNCTION_7_2();
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v34);
      _os_log_impl(&dword_223066000, v28, v29, "Initializing accessor for streamIdentifier: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_9();
      MEMORY[0x223DD4390]();
      OUTLINED_FUNCTION_9();
      MEMORY[0x223DD4390]();
    }

    (*(v7 + 8))(v12, v4);
    type metadata accessor for FeatureStoreStreamAccessor();

    OUTLINED_FUNCTION_7_2();
    v35 = FeatureStoreStreamAccessor.__allocating_init(identifier:)();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = qword_280B57D88;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v3, v1, isUniquelyReferenced_nonNull_native);
    qword_280B57D88 = v37;
    swift_endAccess();
  }

  OUTLINED_FUNCTION_8_1();
}

uint64_t static FeatureStoreService.retrieve<A>(interactionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_4_1();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  type metadata accessor for StreamQuery();
  v18 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v18);
  v19 = variable initialization expression of StreamQuery.interactionIds();
  v20 = StreamQuery.__allocating_init(startDate:endDate:interactionIds:)(v17, v14, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_223092B00;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  v22 = *((*MEMORY[0x277D85000] & *v20) + 0xA8);

  v22(v21);
  v23 = static FeatureStoreService.retrieve<A>(query:)(v20, a3, a4, a5);

  return v23;
}

uint64_t static FeatureStoreService.retrieve<A>(query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = static FeatureStoreService.retrieveWithInteractionWrapper<A>(query:)();
  if (!v5)
  {
    v14[7] = v9;
    MEMORY[0x28223BE20](v9);
    v14[2] = a2;
    v14[3] = a3;
    v14[4] = a4;
    type metadata accessor for InteractionWrapper();
    v10 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static FeatureStoreService.retrieve<A>(query:), v14, v10, a2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);
  }

  return v4;
}

uint64_t static FeatureStoreService.retrieveWithInteractionWrapper<A>(query:)()
{
  type metadata accessor for InteractionWrapper();
  v1 = type metadata accessor for Array();
  result = static FeatureStoreService.performRetrieve<A>(retrieveBlock:)(partial apply for closure #1 in static FeatureStoreService.retrieveWithInteractionWrapper<A>(query:), v1, &v3);
  if (!v0)
  {
    return v3;
  }

  return result;
}

uint64_t closure #1 in static FeatureStoreService.retrieveWithInteractionWrapper<A>(query:)@<X0>(void *a1@<X0>, NSObject *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v69 = a3;
  v70 = a4;
  v67 = a5;
  v9 = type metadata accessor for Logger();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_1();
  v68 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v74 = a2;
  v71 = a2;
  swift_getMetatypeMetadata();
  v20 = String.init<A>(describing:)();
  v22 = v21;
  v23 = Logger.service.unsafeMutableAddressor();
  v24 = *(v12 + 16);
  v64 = v23;
  v65 = v12 + 16;
  v63 = v24;
  (v24)(v19);

  v25 = a1;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  v28 = os_log_type_enabled(v26, v27);
  v72 = v12;
  v73 = v9;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v62 = v5;
    v30 = v29;
    v31 = v20;
    v32 = swift_slowAlloc();
    OUTLINED_FUNCTION_6_1();
    v33 = swift_slowAlloc();
    v74 = v33;
    *v30 = 136315394;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v22, &v74);
    *(v30 + 12) = 2112;
    *(v30 + 14) = v25;
    *v32 = v25;
    v34 = v25;
    _os_log_impl(&dword_223066000, v26, v27, "Retrieving items of type %s) with query: %@", v30, 0x16u);
    outlined destroy of NSObject?(v32);
    v20 = v31;
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();
    v6 = v62;
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();

    v66 = *(v72 + 8);
    v66(v19, v73);
  }

  else
  {

    v66 = *(v12 + 8);
    v66(v19, v9);
  }

  type metadata accessor for FeatureStoreStreamAccessor();
  v35 = (*((*MEMORY[0x277D85000] & *v25) + 0xB8))();
  static FeatureStoreService.streamIdentifierFor(typeName:taskId:)(v20, v22, v35, v36);

  v37 = FeatureStoreStreamAccessor.__allocating_init(identifier:)();
  v38 = (*(*v37 + 120))(v25);
  if (v6)
  {
  }

  else
  {
    v61 = v20;
    v62 = &v60;
    v74 = v38;
    MEMORY[0x28223BE20](v38);
    v41 = v69;
    v40 = v70;
    *(&v60 - 4) = v71;
    *(&v60 - 3) = v41;
    *(&v60 - 2) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12FeatureStore0aB10BiomeEventCGMd, &_sSay12FeatureStore0aB10BiomeEventCGMR);
    v42 = type metadata accessor for InteractionWrapper();
    lazy protocol witness table accessor for type [FeatureStoreBiomeEvent] and conformance [A]();
    v43 = Sequence.compactMap<A>(_:)();
    v71 = v42;

    v44 = v73;
    v63(v68, v64, v73);

    v45 = v25;

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    v70 = v45;

    if (os_log_type_enabled(v46, v47))
    {
      OUTLINED_FUNCTION_6_1();
      v48 = v43;
      v49 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v74 = v69;
      *v49 = 134218498;
      *(v49 + 4) = MEMORY[0x223DD3510](v48, v71);

      v71 = v46;
      *(v49 + 12) = 2080;
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v22, &v74);
      LODWORD(v65) = v47;
      v51 = v50;

      *(v49 + 14) = v51;
      *(v49 + 22) = 2080;
      (*((*MEMORY[0x277D85000] & *v70) + 0xA0))(v52);
      v53 = MEMORY[0x223DD34D0]();
      v55 = v54;

      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v74);

      *(v49 + 24) = v56;
      v57 = v71;
      _os_log_impl(&dword_223066000, v71, v65, "Retrieved %ld item(s) of type %s) with query: %s", v49, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_9();
      MEMORY[0x223DD4390]();
      v43 = v48;
      OUTLINED_FUNCTION_9();
      MEMORY[0x223DD4390]();

      v58 = v73;
      v59 = v68;
    }

    else
    {

      v59 = v68;
      v58 = v44;
    }

    result = (v66)(v59, v58);
    *v67 = v43;
  }

  return result;
}

uint64_t closure #1 in closure #1 in static FeatureStoreService.retrieveWithInteractionWrapper<A>(query:)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44[2] = a3;
  v44[3] = a4;
  v44[0] = a5;
  v7 = type metadata accessor for Optional();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = v44 - v13;
  OUTLINED_FUNCTION_0_0();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_1();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v44 - v24;
  v26 = *a1;
  v27 = (v26 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData);
  v28 = *(v26 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData);
  v29 = *(v26 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData + 8);
  static JSONCoder.decode(data:)(a2, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, a2) == 1)
  {
    (*(v10 + 8))(v14, v7);
    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v45 = 0x6420746F6E6E6163;
    v46 = 0xEF203A65646F6365;
    v30 = *v27;
    v31 = v27[1];
    v32 = Data.description.getter();
    MEMORY[0x223DD3460](v32);

    v33 = v45;
    v34 = v46;
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    swift_allocError();
    *v35 = v33;
    *(v35 + 8) = v34;
    *(v35 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    (*(v16 + 32))(v25, v14, a2);
    v37 = *(v26 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_interactionId);
    v38 = *(v26 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_interactionId + 8);
    v39 = *((*MEMORY[0x277D85000] & *v26) + 0x78);

    v41 = v39(v40);
    (*(v16 + 16))(v22, v25, a2);
    v42 = v44[0];
    InteractionWrapper.init(interactionId:timestamp:feature:)(v37, v38, v22, a2, v44[0], v41);
    (*(v16 + 8))(v25, a2);
    v43 = type metadata accessor for InteractionWrapper();
    return __swift_storeEnumTagSinglePayload(v42, 0, 1, v43);
  }
}

uint64_t one-time initialization function for cache()
{
  type metadata accessor for FeatureStoreStreamAccessor();
  result = Dictionary.init(dictionaryLiteral:)();
  qword_280B57D88 = result;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t partial apply for closure #1 in static FeatureStoreService.retrieve<A>(query:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for InteractionWrapper();
  return (*(*(v5 - 8) + 16))(a2, a1 + *(v6 + 32), v5);
}

unint64_t lazy protocol witness table accessor for type [FeatureStoreBiomeEvent] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [FeatureStoreBiomeEvent] and conformance [A];
  if (!lazy protocol witness table cache variable for type [FeatureStoreBiomeEvent] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12FeatureStore0aB10BiomeEventCGMd, &_sSay12FeatureStore0aB10BiomeEventCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [FeatureStoreBiomeEvent] and conformance [A]);
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12FeatureStore0cD14StreamAccessorCGMd, &_ss17_NativeDictionaryVySS12FeatureStore0cD14StreamAccessorCGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v16);
    *(v22 + 8 * v16) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a1, v21);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSiGMd, ",+");
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = result;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v16) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a1, v21);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t static FeatureStoreService.insertNSCoding<A>(interactionId:item:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchQoS();
  v10 = OUTLINED_FUNCTION_2_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_5();
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a3;
  v17[4] = a1;
  v17[5] = a2;
  v18 = a3;

  default argument 0 of static FeatureStoreService.performInsert(qos:insertBlock:completion:)();
  static FeatureStoreService.performInsert(qos:insertBlock:completion:)(v16, partial apply for closure #1 in static FeatureStoreService.insertNSCoding<A>(interactionId:item:), v17, 0, 0);

  return (*(v12 + 8))(v16, v4);
}

uint64_t closure #1 in static FeatureStoreService.insertNSCoding<A>(interactionId:item:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v8 = OUTLINED_FUNCTION_2_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = static NSCodingCoder.encode(codable:)(a1);
  if (v16 >> 60 == 15)
  {
    v17 = Logger.service.unsafeMutableAddressor();
    (*(v10 + 16))(v14, v17, v3);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_223066000, v18, v19, "Could not encode the item. Skipping insertion.", v20, 2u);
      MEMORY[0x223DD4390](v20, -1, -1);
    }

    return (*(v10 + 8))(v14, v3);
  }

  else
  {
    v22 = v15;
    v23 = v16;
    v28[1] = swift_getObjectType();
    swift_getMetatypeMetadata();
    String.init<A>(describing:)();
    type metadata accessor for FeatureStoreStreamAccessor();
    v24 = FeatureStoreStreamAccessor.__allocating_init(identifier:)();
    type metadata accessor for FeatureStoreBiomeEvent();

    outlined copy of Data?(v22, v23);
    v25 = default argument 2 of FeatureStoreBiomeEvent.init(interactionId:featureData:dataVersion:timestamp:)();
    v26 = default argument 3 of FeatureStoreBiomeEvent.init(interactionId:featureData:dataVersion:timestamp:)();
    v27 = FeatureStoreBiomeEvent.__allocating_init(interactionId:featureData:dataVersion:timestamp:)(a2, a3, v22, v23, v25, v26);
    (*(*v24 + 112))();

    return outlined consume of Data?(v22, v23);
  }
}

unint64_t static FeatureStoreService.retrieve<A>(interactionId:)(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v6 = v2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1_3(v4);
  OUTLINED_FUNCTION_1_3(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  OUTLINED_FUNCTION_2_5();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_223092B00;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;

  v15 = StreamQuery.__allocating_init(startDate:endDate:interactionIds:)(v4, v13, v14);
  v16 = v6;
  v17 = static FeatureStoreService.retrieveNSCoding<A>(query:)();

  if (!v5)
  {
    v21 = v17;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
    v16 = v23;

    if (!v16)
    {
      v21 = 0;
      v22 = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      v21 = 0xD000000000000028;
      v22 = 0x8000000223093DA0;
      MEMORY[0x223DD3460](a1, a2);
      v19 = v21;
      v16 = v22;
      lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
      swift_allocError();
      *v20 = v19;
      *(v20 + 8) = v16;
      *(v20 + 16) = 0;
      swift_willThrow();
    }
  }

  return v16;
}

uint64_t static FeatureStoreService.retrieveNSCoding<A>(query:)()
{
  v1 = type metadata accessor for Array();
  result = OUTLINED_FUNCTION_4_2(v1, v2, v1);
  if (!v0)
  {
    return v4;
  }

  return result;
}

uint64_t closure #1 in static FeatureStoreService.retrieveNSCoding<A>(query:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  type metadata accessor for FeatureStoreStreamAccessor();
  v5 = FeatureStoreStreamAccessor.__allocating_init(identifier:)();
  v6 = (*(*v5 + 120))(a1);
  if (v2)
  {
  }

  MEMORY[0x28223BE20](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12FeatureStore0aB10BiomeEventCGMd, &_sSay12FeatureStore0aB10BiomeEventCGMR);
  lazy protocol witness table accessor for type [FeatureStoreBiomeEvent] and conformance [A]();
  v8 = Sequence.compactMap<A>(_:)();

  *a2 = v8;
  return result;
}

uint64_t static FeatureStoreService.retrieveNSCodingWithInteractionWrapper<A>(query:)()
{
  type metadata accessor for InteractionWrapper();
  v1 = type metadata accessor for Array();
  result = OUTLINED_FUNCTION_4_2(v1, v2, v1);
  if (!v0)
  {
    return v4;
  }

  return result;
}

uint64_t partial apply for closure #1 in static FeatureStoreService.retrieveNSCodingWithInteractionWrapper<A>(query:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 24);
  v18 = *(v1 + 16);
  swift_getMetatypeMetadata();
  v5 = String.init<A>(describing:)();
  v7 = v6;
  type metadata accessor for FeatureStoreNSCodingAccessor();
  v8 = AceObjectStreamAccessor.__allocating_init(identifier:)(v5, v7);
  v9 = *((*MEMORY[0x277D85000] & *v4) + 0xA0);
  v10 = *(v9() + 16);

  if (v10 != 1)
  {
    goto LABEL_6;
  }

  v12 = (v9)(v11);
  if (!v12[2])
  {

LABEL_6:
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    swift_allocError();
    *v17 = 0xD000000000000075;
    *(v17 + 8) = 0x8000000223093DD0;
    *(v17 + 16) = 0;
    swift_willThrow();
  }

  v13 = v12[4];
  v14 = v12[5];

  v15 = (*(*v8 + 136))(v13, v14);

  if (!v2)
  {
    *a1 = v15;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static FeatureStoreService.retrieveNSCoding<A>(query:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = (*a1 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData);
  v6 = *v5;
  v7 = v5[1];
  result = static NSCodingCoder.decode(data:)();
  *a2 = result;
  return result;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t static FeatureStoreService.insertCoding(interactionId:item:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return static FeatureStoreService.insertNSCoding<A>(interactionId:item:)(a1, a2, a3, ObjectType);
}

uint64_t static FeatureStoreService.insertPBCodable(interactionId:item:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for PBCodable();

  return static FeatureStoreService.insert<A>(interactionId:item:completion:)(a1, a2, a3, 0, 0, v6);
}

unint64_t type metadata accessor for PBCodable()
{
  result = lazy cache variable for type metadata for PBCodable;
  if (!lazy cache variable for type metadata for PBCodable)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PBCodable);
  }

  return result;
}

uint64_t @objc static FeatureStoreService.insertCoding(interactionId:item:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t, id))
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_getObjCClassMetadata();
  v10 = a4;
  a5(v7, v9, v10);
}

uint64_t static FeatureStoreService.insertAwait<A>(interactionId:item:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](static FeatureStoreService.insertAwait<A>(interactionId:item:), 0, 0);
}

uint64_t closure #1 in static FeatureStoreService.insertAwait<A>(interactionId:item:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v22 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v21 - v16;
  (*(v13 + 16))(&v21 - v16, a1, v10);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v18, v17, v10);
  static FeatureStoreService.insert<A>(interactionId:item:completion:)(a3, a4, a5, partial apply for implicit closure #5 in implicit closure #4 in closure #1 in static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:), v19, v22);
}

uint64_t static FeatureStoreService.insert<A>(interactionId:item:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t a6)
{
  v12 = type metadata accessor for DispatchQoS();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a3;
  v20[4] = a1;
  v20[5] = a2;
  v21 = a3;

  default argument 0 of static FeatureStoreService.performInsert(qos:insertBlock:completion:)();
  static FeatureStoreService.performInsert(qos:insertBlock:completion:)(v19, partial apply for closure #1 in static FeatureStoreService.insert<A>(interactionId:item:completion:), v20, a4, a5);

  return (*(v15 + 8))(v19, v12);
}

uint64_t closure #1 in static FeatureStoreService.insert<A>(interactionId:item:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static PBCodableCoder.encode(codable:)(a1);
  if (v15 >> 60 == 15)
  {
    v16 = Logger.service.unsafeMutableAddressor();
    (*(v9 + 16))(v13, v16, v6);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_223066000, v17, v18, "Could not encode the item. Skipping insertion.", v19, 2u);
      MEMORY[0x223DD4390](v19, -1, -1);
    }

    return (*(v9 + 8))(v13, v6);
  }

  else
  {
    v21 = v14;
    v22 = v15;
    v27[1] = swift_getObjectType();
    swift_getMetatypeMetadata();
    String.init<A>(describing:)();
    type metadata accessor for FeatureStoreStreamAccessor();
    v23 = FeatureStoreStreamAccessor.__allocating_init(identifier:)();
    type metadata accessor for FeatureStoreBiomeEvent();

    outlined copy of Data?(v21, v22);
    v24 = default argument 2 of FeatureStoreBiomeEvent.init(interactionId:featureData:dataVersion:timestamp:)();
    v25 = default argument 3 of FeatureStoreBiomeEvent.init(interactionId:featureData:dataVersion:timestamp:)();
    v26 = FeatureStoreBiomeEvent.__allocating_init(interactionId:featureData:dataVersion:timestamp:)(a2, a3, v21, v22, v24, v25);
    (*(*v23 + 112))();

    return outlined consume of Data?(v21, v22);
  }
}

uint64_t static FeatureStoreService.retrieve<A>(query:)()
{
  v1 = type metadata accessor for Array();
  result = static FeatureStoreService.performRetrieve<A>(retrieveBlock:)(partial apply for closure #1 in static FeatureStoreService.retrieve<A>(query:), v1, &v3);
  if (!v0)
  {
    return v3;
  }

  return result;
}

uint64_t closure #1 in static FeatureStoreService.retrieve<A>(query:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  type metadata accessor for FeatureStoreStreamAccessor();
  v5 = FeatureStoreStreamAccessor.__allocating_init(identifier:)();
  v6 = (*(*v5 + 120))(a1);
  if (v2)
  {
  }

  MEMORY[0x28223BE20](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12FeatureStore0aB10BiomeEventCGMd, &_sSay12FeatureStore0aB10BiomeEventCGMR);
  lazy protocol witness table accessor for type [FeatureStoreBiomeEvent] and conformance [A]();
  v8 = Sequence.compactMap<A>(_:)();

  *a2 = v8;
  return result;
}

id partial apply for closure #1 in closure #1 in static FeatureStoreService.retrieve<A>(query:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  result = static PBCodableCoder.decode(data:)(*(*a1 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData), *(*a1 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData + 8));
  *a2 = result;
  return result;
}

uint64_t static FeatureStoreService.insertSerializable<A>(interactionId:item:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a1;
  v27 = a5;
  v8 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_0();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  (*(v17 + 16))(&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a4);
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = swift_allocObject();
  v23 = v27;
  *(v22 + 16) = a4;
  *(v22 + 24) = v23;
  (*(v17 + 32))(v22 + v21, &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  v24 = (v22 + ((v19 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = v28;
  v24[1] = a2;

  default argument 0 of static FeatureStoreService.performInsert(qos:insertBlock:completion:)();
  static FeatureStoreService.performInsert(qos:insertBlock:completion:)(v15, partial apply for closure #1 in static FeatureStoreService.insertSerializable<A>(interactionId:item:), v22, 0, 0);

  return (*(v10 + 8))(v15, v8);
}

uint64_t partial apply for closure #1 in static FeatureStoreService.insertSerializable<A>(interactionId:item:)()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_0_0();
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = (v1 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v10 = String.init<A>(describing:)();
  v12 = v11;
  type metadata accessor for SerializableStreamAccessor();
  v13 = AceObjectStreamAccessor.__allocating_init(identifier:)(v10, v12);
  (*(*v13 + 104))(v8, v9, v1 + v5);
}

uint64_t partial apply for closure #1 in static FeatureStoreService.retrieveSerializable<A>(interactionId:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v9 = v0[2];
  swift_getMetatypeMetadata();
  v4 = String.init<A>(describing:)();
  v6 = v5;
  type metadata accessor for SerializableStreamAccessor();
  v7 = AceObjectStreamAccessor.__allocating_init(identifier:)(v4, v6);
  (*(*v7 + 128))(v2, v3);
}

uint64_t static FeatureStoreService.retrieveSerializableWithInteractionWrapper<A>(query:)()
{
  type metadata accessor for InteractionWrapper();
  v1 = type metadata accessor for Array();
  result = static FeatureStoreService.performRetrieve<A>(retrieveBlock:)(partial apply for closure #1 in static FeatureStoreService.retrieveSerializableWithInteractionWrapper<A>(query:), v1, &v3);
  if (!v0)
  {
    return v3;
  }

  return result;
}

uint64_t partial apply for closure #1 in static FeatureStoreService.retrieveSerializableWithInteractionWrapper<A>(query:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v19 = v1[2];
  swift_getMetatypeMetadata();
  v6 = String.init<A>(describing:)();
  v8 = v7;
  type metadata accessor for SerializableStreamAccessor();
  v9 = AceObjectStreamAccessor.__allocating_init(identifier:)(v6, v8);
  v10 = *((*MEMORY[0x277D85000] & *v5) + 0xA0);
  v11 = *(v10() + 16);

  if (v11 != 1)
  {
    goto LABEL_6;
  }

  v13 = (v10)(v12);
  if (!v13[2])
  {

LABEL_6:
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    swift_allocError();
    *v18 = 0xD000000000000075;
    *(v18 + 8) = 0x8000000223093DD0;
    *(v18 + 16) = 0;
    swift_willThrow();
  }

  v14 = v13[4];
  v15 = v13[5];

  v16 = (*(*v9 + 136))(v14, v15);

  if (!v2)
  {
    *a1 = v16;
  }

  return result;
}

uint64_t runSimulatableTask<A, B>(interactionId:input:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_6_2();
  *(v11 + 96) = a10;
  *(v11 + 104) = a11;
  *(v11 + 80) = a9;
  OUTLINED_FUNCTION_5_1(v12, v13, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_0_0();
  *(v11 + 112) = v20;
  v22 = *(v21 + 64);
  *(v11 + 120) = OUTLINED_FUNCTION_25_0();
  v23 = type metadata accessor for Optional();
  *(v11 + 128) = v23;
  OUTLINED_FUNCTION_17(v23);
  *(v11 + 136) = v24;
  v26 = *(v25 + 64);
  *(v11 + 144) = OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13_1();
  return OUTLINED_FUNCTION_31();
}

uint64_t runSimulatableTask<A, B>(interactionId:input:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_27_1();
  *(v14 + 152) = OUTLINED_FUNCTION_8_2();
  v20 = OUTLINED_FUNCTION_4_3();
  v21 = v13;
  v23 = v22;
  static FeatureStoreService.insert<A>(taskId:interactionId:item:)(v20, v24, v25, v26, v19, v18, v16, v21);
  v27 = OUTLINED_FUNCTION_4_3();
  interactionForInjection<A>(taskId:interactionId:)(v27, v28, v29, v30, v17, v15, a9, v31);
  OUTLINED_FUNCTION_22_0();
  if (v32)
  {
    v33 = OUTLINED_FUNCTION_26_0();
    v34(v33);
    OUTLINED_FUNCTION_0_3();
    v57 = v35;
    v36 = *(v23 + 4);
    v37 = swift_task_alloc();
    *(v14 + 160) = v37;
    *v37 = v14;
    OUTLINED_FUNCTION_14_1(v37);
    OUTLINED_FUNCTION_7_3();

    return v40(v38, v39, v40, v41, v42, v43, v44, v45, v57, a10, a11, a12);
  }

  else
  {
    v47 = OUTLINED_FUNCTION_1_4();
    v48(v47, v12, v17);
    OUTLINED_FUNCTION_9_2();

    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_7_3();

    return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12);
  }
}

{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_27_1();
  v14 = OUTLINED_FUNCTION_1_4();
  v15(v14, v12, v13);
  OUTLINED_FUNCTION_9_2();

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_7_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t runSimulatableTask<A, B>(interactionId:input:task:)()
{
  OUTLINED_FUNCTION_6_2();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_12();
  *v8 = v7;
  *(v9 + 168) = v0;

  OUTLINED_FUNCTION_13_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t runSimulatableTask<A, B>(taskId:interactionId:input:task:)()
{
  OUTLINED_FUNCTION_6_2();
  *(v0 + 112) = v24;
  *(v0 + 120) = v25;
  *(v0 + 96) = v23;
  *(v0 + 80) = v21;
  *(v0 + 88) = v22;
  OUTLINED_FUNCTION_5_1(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_0_0();
  *(v0 + 128) = v9;
  v11 = *(v10 + 64);
  *(v0 + 136) = OUTLINED_FUNCTION_25_0();
  v12 = type metadata accessor for Optional();
  *(v0 + 144) = v12;
  OUTLINED_FUNCTION_17(v12);
  *(v0 + 152) = v13;
  v15 = *(v14 + 64);
  *(v0 + 160) = OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13_1();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

{
  OUTLINED_FUNCTION_6_2();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_12();
  *v8 = v7;
  *(v9 + 184) = v0;

  OUTLINED_FUNCTION_13_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_6_2();
  v1 = v0[20];
  v2 = v0[17];

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t one-time initialization function for lock()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, "0+");
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_280B57D98 = result;
  return result;
}

uint64_t one-time initialization function for cursors()
{
  result = Dictionary.init(dictionaryLiteral:)();
  qword_280B57DA8 = result;
  return result;
}

uint64_t static InjectionCursor.getNextAndIncrement<A>(forType:taskId:interactionId:)(uint64_t a1)
{
  if (_MergedGlobals_0 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_280B57D98;
  v2 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v2);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v3, &v5);
  os_unfair_lock_unlock(v1 + 4);
  return v5;
}

uint64_t closure #1 in static InjectionCursor.getNextAndIncrement<A>(forType:taskId:interactionId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  swift_getMetatypeMetadata();
  v43 = String.init<A>(describing:)();
  v44 = v16;

  MEMORY[0x223DD3460](58, 0xE100000000000000);

  MEMORY[0x223DD3460](a2, a3);

  MEMORY[0x223DD3460](58, 0xE100000000000000);

  v17 = OUTLINED_FUNCTION_21_0();
  MEMORY[0x223DD3460](v17);

  v19 = v43;
  v18 = v44;
  if (qword_280B57DA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = qword_280B57DA8;
  if (*(qword_280B57DA8 + 16) && (v21 = OUTLINED_FUNCTION_21_0(), v23 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22), (v24 & 1) != 0))
  {
    v25 = *(*(v20 + 56) + 8 * v23);
  }

  else
  {
    v25 = -1;
  }

  result = swift_endAccess();
  v27 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = qword_280B57DA8;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v19, v18, isUniquelyReferenced_nonNull_native);
    qword_280B57DA8 = v42;
    swift_endAccess();
    v29 = Logger.service.unsafeMutableAddressor();
    (*(v10 + 16))(v15, v29, v8);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v41 = v8;
      v34 = a4;
      v35 = v33;
      v43 = v33;
      *v32 = 134218242;
      *(v32 + 4) = v27;
      *(v32 + 12) = 2080;
      v36 = OUTLINED_FUNCTION_21_0();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v38);

      *(v32 + 14) = v39;
      __swift_destroy_boxed_opaque_existential_1(v35);
      a4 = v34;
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();

      result = (*(v10 + 8))(v15, v41);
    }

    else
    {

      result = (*(v10 + 8))(v15, v8);
    }

    *a4 = v27;
  }

  return result;
}

uint64_t static FeatureStoreService.runReplayableOperation<A, B>(interactionId:input:_:)()
{
  OUTLINED_FUNCTION_6_2();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_12();
  *v8 = v7;
  *(v9 + 168) = v0;

  OUTLINED_FUNCTION_13_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_6_2();
  v1 = v0[18];
  v2 = v0[15];

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

void *specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t partial apply for closure #1 in static InjectionCursor.getNextAndIncrement<A>(forType:taskId:interactionId:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[8];
  v4 = v1[9];
  return closure #1 in static InjectionCursor.getNextAndIncrement<A>(forType:taskId:interactionId:)(v1[5], v1[6], v1[7], a1);
}

void *specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
    }
  }
}

uint64_t OUTLINED_FUNCTION_31()
{

  return MEMORY[0x2822009F8]();
}

Swift::Int FeatureStoreService.EventStreamState.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DD3B40](a1 & 1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for timers()
{
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (MEMORY[0x223DD39B0](MEMORY[0x277D84F90]))
    {
      result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5(MEMORY[0x277D84F90]);
    }

    else
    {
      result = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    result = MEMORY[0x277D84FA0];
  }

  static FeatureStoreService.timers = result;
  return result;
}

uint64_t *FeatureStoreService.timers.unsafeMutableAddressor()
{
  if (one-time initialization token for timers != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  return &static FeatureStoreService.timers;
}

uint64_t static FeatureStoreService.timers.getter()
{
  if (one-time initialization token for timers != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  swift_beginAccess();
}

uint64_t static FeatureStoreService.timers.setter(uint64_t a1)
{
  if (one-time initialization token for timers != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  swift_beginAccess();
  static FeatureStoreService.timers = a1;
}

uint64_t (*static FeatureStoreService.timers.modify())()
{
  if (one-time initialization token for timers != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  swift_beginAccess();
  return FeatureStoreBiomeEvent.timestamp.modify;
}

uint64_t static FeatureStoreService.streamEvents<A>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  OUTLINED_FUNCTION_8_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v9);
  v13 = a1;
  v14 = a2;
  v15 = a3;
  default argument 1 of AsyncStream.init(_:bufferingPolicy:_:)(&v12[-v10]);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

void closure #1 in static FeatureStoreService.streamEvents<A>()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_9_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = type metadata accessor for AsyncStream.Continuation();
  v31 = OUTLINED_FUNCTION_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  v37 = &a9 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_8_3(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v41);
  v43 = &a9 - v42;
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_25();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  (*(v33 + 16))(v37, v29, v30);
  v48 = (*(v33 + 80) + 56) & ~*(v33 + 80);
  v49 = swift_allocObject();
  *(v49 + 2) = 0;
  *(v49 + 3) = 0;
  *(v49 + 4) = v27;
  *(v49 + 5) = v25;
  *(v49 + 6) = v23;
  (*(v33 + 32))(&v49[v48], v37, v30);
  v50 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v43, &async function pointer to partial apply for closure #1 in closure #1 in static FeatureStoreService.streamEvents<A>(), v49);
  v51 = swift_allocObject();
  v51[2] = v27;
  v51[3] = v25;
  v51[4] = v23;
  v51[5] = v50;
  AsyncStream.Continuation.onTermination.setter();
  OUTLINED_FUNCTION_8_1();
}

uint64_t closure #1 in closure #1 in static FeatureStoreService.streamEvents<A>()()
{
  OUTLINED_FUNCTION_6_2();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_26_1();
  v7 = type metadata accessor for AsyncStream.Continuation.YieldResult();
  v0[8] = v7;
  OUTLINED_FUNCTION_17(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = OUTLINED_FUNCTION_25_0();
  v0[11] = type metadata accessor for InteractionWrapper();
  OUTLINED_FUNCTION_26_1();
  v11 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_8_3(v11);
  v13 = *(v12 + 64);
  v0[12] = OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_26_1();
  v14 = type metadata accessor for AsyncStream();
  v0[13] = v14;
  OUTLINED_FUNCTION_17(v14);
  v0[14] = v15;
  v17 = *(v16 + 64);
  v0[15] = OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_26_1();
  v18 = type metadata accessor for AsyncStream.Iterator();
  v0[16] = v18;
  OUTLINED_FUNCTION_17(v18);
  v0[17] = v19;
  v21 = *(v20 + 64);
  v0[18] = OUTLINED_FUNCTION_25_0();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static FeatureStoreService.streamEvents<A>(), 0, 0);
}

{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  type metadata accessor for FeatureStoreService();
  OUTLINED_FUNCTION_14_2();
  static FeatureStoreService.streamWithInteractionWrapperEvents<A>()();
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v8 = *(MEMORY[0x277D85798] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[19] = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_3_3(v9);

  return MEMORY[0x2822003E8](v11);
}

{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_27();
  v2 = *(v1 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static FeatureStoreService.streamEvents<A>(), 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[12];
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = v0[15];
    v4 = v0[10];
    v5 = v0[7];
    (*(v0[17] + 8))(v0[18], v0[16]);

    OUTLINED_FUNCTION_23();

    return v6();
  }

  else
  {
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];
    v11 = v0[2];
    (*(v0[6] + 16))(v0[7], v2 + *(v1 + 32), v0[3]);
    (*(*(v1 - 8) + 8))(v2, v1);
    type metadata accessor for AsyncStream.Continuation();
    AsyncStream.Continuation.yield(_:)();
    (*(v9 + 8))(v8, v10);
    v12 = *(MEMORY[0x277D85798] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[19] = v13;
    *v13 = v14;
    v15 = OUTLINED_FUNCTION_3_3();

    return MEMORY[0x2822003E8](v15);
  }
}

uint64_t static FeatureStoreService.streamWithInteractionWrapperEvents<A>()()
{
  type metadata accessor for InteractionWrapper();
  v1 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  OUTLINED_FUNCTION_8_3(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_2();
  swift_checkMetadataState();
  default argument 1 of AsyncStream.init(_:bufferingPolicy:_:)(v0);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  outlined init with copy of TaskPriority?(a3, v26 - v11);
  v13 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Any?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void closure #2 in closure #1 in static FeatureStoreService.streamEvents<A>()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_9_1();
  a19 = v23;
  a20 = v24;
  v25 = OUTLINED_FUNCTION_30_0();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  v35 = type metadata accessor for AsyncStream.Continuation.Termination();
  OUTLINED_FUNCTION_0(v35);
  v37 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_5_2();
  v41 = OUTLINED_FUNCTION_17_1();
  v42(v41);
  v43 = *(v37 + 88);
  v44 = OUTLINED_FUNCTION_14_2();
  v46 = v45(v44);
  if (v46 == *MEMORY[0x277D85738])
  {
    Logger.service.unsafeMutableAddressor();
    OUTLINED_FUNCTION_4_4();
    v47(v22);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_20_1();
      OUTLINED_FUNCTION_22_1(v50);
      OUTLINED_FUNCTION_12_2(&dword_223066000, v51, v49, "Stream finished.");
      OUTLINED_FUNCTION_11_3();
    }

    (*(v28 + 8))(v22, v25);
  }

  else
  {
    v52 = v46;
    v53 = *MEMORY[0x277D85740];
    Logger.service.unsafeMutableAddressor();
    OUTLINED_FUNCTION_4_4();
    if (v52 == v53)
    {
      v54(v34);
      v55 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      OUTLINED_FUNCTION_29_0();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_22_1(v57);
        OUTLINED_FUNCTION_12_2(&dword_223066000, v58, v53, "Stream cancelled.");
        OUTLINED_FUNCTION_11_3();
      }

      (*(v28 + 8))(v34, v25);
    }

    else
    {
      v54(v21);
      v59 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_29_0();
      if (os_log_type_enabled(v59, v60))
      {
        *OUTLINED_FUNCTION_20_1() = 0;
        OUTLINED_FUNCTION_31_0(&dword_223066000, v61, v62, "Unknown termination condition!");
        OUTLINED_FUNCTION_1();
      }

      (*(v28 + 8))(v21, v25);
      v63 = *(v37 + 8);
      v64 = OUTLINED_FUNCTION_14_2();
      v65(v64);
    }
  }

  MEMORY[0x223DD3630](v20, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  OUTLINED_FUNCTION_8_1();
}

uint64_t default argument 1 of AsyncStream.init(_:bufferingPolicy:_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85778];
  v3 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void closure #1 in static FeatureStoreService.streamWithInteractionWrapperEvents<A>()()
{
  OUTLINED_FUNCTION_9_1();
  v59 = v0;
  v60 = v1;
  v58 = v2;
  v56 = v3;
  v61 = v4;
  type metadata accessor for InteractionWrapper();
  OUTLINED_FUNCTION_15_0();
  v5 = type metadata accessor for AsyncStream.Continuation();
  v6 = OUTLINED_FUNCTION_0(v5);
  v54 = v7;
  v55 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, "t*");
  OUTLINED_FUNCTION_8_3(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v17 = type metadata accessor for Date();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v24 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v49 - v25;
  v52 = &v49 - v25;
  static Date.now.getter();
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  type metadata accessor for NSTimer();
  v27 = [objc_opt_self() mainRunLoop];
  v28 = *MEMORY[0x277CBE738];
  type metadata accessor for NSRunLoop.SchedulerOptions();
  OUTLINED_FUNCTION_25();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of Any?(v16, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, "t*");
  v62 = v33;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x277CC9DF0]);
  v34 = ConnectablePublisher.autoconnect()();
  v51 = v34;

  v62 = v34;
  v35 = v20;
  (*(v20 + 16))(v24, v26, v17);
  v36 = v54;
  v37 = v55;
  (*(v54 + 16))(v57, v61, v55);
  v38 = *(v20 + 80);
  v50 = v20;
  v39 = (v38 + 40) & ~v38;
  v40 = (v22 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = (*(v36 + 80) + v41 + 8) & ~*(v36 + 80);
  v43 = swift_allocObject();
  v44 = v59;
  *(v43 + 2) = v58;
  *(v43 + 3) = v44;
  *(v43 + 4) = v60;
  (*(v35 + 32))(&v43[v39], v24, v17);
  v45 = v57;
  *&v43[v40] = v56;
  *&v43[v41] = v53;
  (*(v36 + 32))(&v43[v42], v45, v37);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>();
  v46 = Publisher<>.sink(receiveValue:)();

  v47 = swift_allocObject();
  v48 = v59;
  v47[2] = v58;
  v47[3] = v48;
  v47[4] = v60;
  v47[5] = v46;
  AsyncStream.Continuation.onTermination.setter();
  (*(v50 + 8))(v52, v17);

  OUTLINED_FUNCTION_8_1();
}

void partial apply for closure #1 in static FeatureStoreService.streamWithInteractionWrapperEvents<A>()()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  closure #1 in static FeatureStoreService.streamWithInteractionWrapperEvents<A>()();
}

unint64_t lazy protocol witness table accessor for type FeatureStoreService.EventStreamState and conformance FeatureStoreService.EventStreamState()
{
  result = lazy protocol witness table cache variable for type FeatureStoreService.EventStreamState and conformance FeatureStoreService.EventStreamState;
  if (!lazy protocol witness table cache variable for type FeatureStoreService.EventStreamState and conformance FeatureStoreService.EventStreamState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureStoreService.EventStreamState and conformance FeatureStoreService.EventStreamState);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureStoreService.EventStreamState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FeatureStoreService.EventStreamState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t type metadata accessor for NSTimer()
{
  result = lazy cache variable for type metadata for NSTimer;
  if (!lazy cache variable for type metadata for NSTimer)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSTimer);
  }

  return result;
}

void closure #1 in closure #1 in static FeatureStoreService.streamWithInteractionWrapperEvents<A>()()
{
  OUTLINED_FUNCTION_9_1();
  v92 = v2;
  v93 = v3;
  v90 = v4;
  v91 = v5;
  v88 = v7;
  v89 = v6;
  v94 = v8;
  v9 = type metadata accessor for Logger();
  v10 = OUTLINED_FUNCTION_0(v9);
  v86 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  type metadata accessor for InteractionWrapper();
  v14 = type metadata accessor for AsyncStream.Continuation.YieldResult();
  OUTLINED_FUNCTION_0(v14);
  v85 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_2();
  v19 = swift_checkMetadataState();
  v20 = OUTLINED_FUNCTION_0(v19);
  v84 = v21;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v20);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v83 = &v76 - v27;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_15_0();
  v82 = v28;
  v81 = type metadata accessor for Optional();
  v29 = OUTLINED_FUNCTION_0(v81);
  v79 = v30;
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v29);
  v80 = &v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v76 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v38 = OUTLINED_FUNCTION_8_3(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v41);
  v43 = &v76 - v42;
  v87 = type metadata accessor for StreamQuery();
  v44 = type metadata accessor for Date();
  OUTLINED_FUNCTION_25();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
  OUTLINED_FUNCTION_25();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v44);
  v51 = variable initialization expression of StreamQuery.interactionIds();
  v52 = StreamQuery.__allocating_init(startDate:endDate:interactionIds:)(v43, v0, v51);
  (*(*(v44 - 8) + 16))(v43, v89, v44);
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v44);
  (*((*MEMORY[0x277D85000] & *v52) + 0x78))(v43);
  v53 = static FeatureStoreService.retrieveWithInteractionWrapper<A>(query:)();
  v89 = v26;
  v78 = v52;
  v90 = v1;
  v91 = v14;
  v77 = v53;
  v95[4] = v53;
  v54 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x223DD3490](v95, v54, WitnessTable);
  v95[3] = v95[0];
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  swift_beginAccess();
  v56 = type metadata accessor for EnumeratedSequence.Iterator();
  v57 = (v79 + 32);
  v58 = v83;
  v59 = (v84 + 32);
  v86 = (v85 + 8);
  v87 = (v84 + 16);
  v93 = (v84 + 8);
  v60 = v82;
  v61 = v81;
  v62 = v80;
  v88 = (v84 + 32);
  while (1)
  {
    EnumeratedSequence.Iterator.next()();
    (*v57)(v36, v62, v61);
    if (__swift_getEnumTagSinglePayload(v36, 1, v60) == 1)
    {
      break;
    }

    v63 = *v36;
    (*v59)(v58, &v36[*(v60 + 48)], v19);
    if (v63 >= *(v94 + 16))
    {
      (*v87)(v89, v58, v19);
      type metadata accessor for AsyncStream.Continuation();
      v64 = v57;
      v65 = v56;
      v66 = v36;
      v67 = v62;
      v68 = v61;
      v69 = v60;
      v70 = v19;
      v71 = v58;
      v72 = v90;
      AsyncStream.Continuation.yield(_:)();
      v73 = v72;
      v58 = v71;
      v19 = v70;
      v60 = v69;
      v61 = v68;
      v62 = v67;
      v36 = v66;
      v56 = v65;
      v57 = v64;
      v59 = v88;
      (*v86)(v73, v91);
    }

    (*v93)(v58, v19);
  }

  v74 = MEMORY[0x223DD3510](v77, v19);

  v75 = v94;
  swift_beginAccess();
  *(v75 + 16) = v74;
  OUTLINED_FUNCTION_8_1();
}

void partial apply for closure #1 in closure #1 in static FeatureStoreService.streamWithInteractionWrapperEvents<A>()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = type metadata accessor for Date();
  OUTLINED_FUNCTION_17(v4);
  v7 = (*(v6 + 64) + ((*(v5 + 80) + 40) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for InteractionWrapper();
  OUTLINED_FUNCTION_15_0();
  v9 = type metadata accessor for AsyncStream.Continuation();
  OUTLINED_FUNCTION_8_3(v9);
  v11 = *(v0 + v7);
  v12 = *(v0 + v8);
  v13 = v0 + ((v8 + *(v10 + 80) + 8) & ~*(v10 + 80));

  closure #1 in closure #1 in static FeatureStoreService.streamWithInteractionWrapperEvents<A>()();
}

unint64_t lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>()
{
  result = lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>;
  if (!lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>);
  }

  return result;
}

void closure #2 in closure #1 in static FeatureStoreService.streamWithInteractionWrapperEvents<A>()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_9_1();
  a19 = v22;
  a20 = v23;
  v24 = OUTLINED_FUNCTION_30_0();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  type metadata accessor for InteractionWrapper();
  OUTLINED_FUNCTION_15_0();
  v34 = type metadata accessor for AsyncStream.Continuation.Termination();
  OUTLINED_FUNCTION_0(v34);
  v36 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_5_2();
  v40 = OUTLINED_FUNCTION_17_1();
  v41(v40);
  v42 = *(v36 + 88);
  v43 = OUTLINED_FUNCTION_14_2();
  v45 = v44(v43);
  if (v45 == *MEMORY[0x277D85738])
  {
    Logger.service.unsafeMutableAddressor();
    OUTLINED_FUNCTION_4_4();
    v46(v21);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = OUTLINED_FUNCTION_20_1();
      OUTLINED_FUNCTION_22_1(v49);
      OUTLINED_FUNCTION_12_2(&dword_223066000, v50, v48, "Stream finished.");
      OUTLINED_FUNCTION_11_3();
    }

    (*(v27 + 8))(v21, v24);
  }

  else
  {
    v51 = v45;
    v52 = *MEMORY[0x277D85740];
    Logger.service.unsafeMutableAddressor();
    OUTLINED_FUNCTION_4_4();
    if (v51 == v52)
    {
      v53(v33);
      v54 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      OUTLINED_FUNCTION_29_0();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_22_1(v56);
        OUTLINED_FUNCTION_12_2(&dword_223066000, v57, v52, "Stream cancelled.");
        OUTLINED_FUNCTION_11_3();
      }

      (*(v27 + 8))(v33, v24);
    }

    else
    {
      v53(v20);
      v58 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_29_0();
      if (os_log_type_enabled(v58, v59))
      {
        *OUTLINED_FUNCTION_20_1() = 0;
        OUTLINED_FUNCTION_31_0(&dword_223066000, v60, v61, "Unknown termination condition!");
        OUTLINED_FUNCTION_1();
      }

      (*(v27 + 8))(v20, v24);
      v62 = *(v36 + 8);
      v63 = OUTLINED_FUNCTION_14_2();
      v64(v63);
    }
  }

  AnyCancellable.cancel()();
  OUTLINED_FUNCTION_8_1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_27();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_23();

  return v5();
}

uint64_t partial apply for closure #1 in closure #1 in static FeatureStoreService.streamEvents<A>()()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = type metadata accessor for AsyncStream.Continuation();
  OUTLINED_FUNCTION_8_3(v5);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #1 in closure #1 in static FeatureStoreService.streamEvents<A>();

  return closure #1 in closure #1 in static FeatureStoreService.streamEvents<A>()();
}

{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_27();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_23();

  return v5();
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_3(v4);

  return v7(v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_25()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_3(v4);

  return v7(v6);
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5(unint64_t a1)
{
  v1 = a1;
  if (specialized Array.count.getter(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v19 = specialized Array.count.getter(v1);
  if (v19)
  {
    v3 = 0;
    v4 = v2 + 56;
    v17 = v1;
    v18 = v1 & 0xC000000000000001;
    v16 = v1 + 32;
    while (1)
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v3, v18 == 0, v1);
      if (v18)
      {
        result = MEMORY[0x223DD38A0](v3, v1);
        v6 = result;
      }

      else
      {
        v6 = *(v16 + 8 * v3);
      }

      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      v8 = *(v2 + 40);
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v9 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v10 = result & v9;
        v11 = (result & v9) >> 6;
        v12 = *(v4 + 8 * v11);
        v13 = 1 << (result & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        v20 = *(*(v2 + 48) + 8 * v10);
        lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {

          goto LABEL_17;
        }

        result = v10 + 1;
      }

      *(v4 + 8 * v11) = v13 | v12;
      *(*(v2 + 48) + 8 * v10) = v6;
      v14 = *(v2 + 16);
      v7 = __OFADD__(v14, 1);
      v15 = v14 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v15;
LABEL_17:
      v1 = v17;
      if (v3 == v19)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_31_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t AceObjectStreamAccessor.insert(interactionId:feature:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = *(*v2 + 144);
  type metadata accessor for AceObjectFeatureWrapper();

  swift_unknownObjectRetain();
  v7 = AceObjectFeatureWrapper.__allocating_init(interactionId:dataVersion:feature:)(a1, a2);
  v8 = *(v3 + 16);
  v13[0] = 0;
  if ([v8 insert:v7 error:v13])
  {
    v9 = v13[0];
  }

  else
  {
    v10 = v13[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AceObjectStreamAccessor.retrieve(interactionId:)()
{
  v2 = *v0;
  v3 = (*(*v0 + 112))();
  if (v1)
  {
    return v0;
  }

  v4 = v3;
  v5 = *(v2 + 144);
  result = type metadata accessor for AceObjectFeatureWrapper();
  if (v4[2])
  {
    v7 = result;
    v8 = v4[4];
    v9 = v4[5];
    v10 = OUTLINED_FUNCTION_1_6();
    outlined copy of Data._Representation(v10, v11);

    v12 = *(v7 + 128);
    v13 = OUTLINED_FUNCTION_1_6();
    v15 = v14(v13);
    v16 = OUTLINED_FUNCTION_1_6();
    outlined consume of Data._Representation(v16, v17);
    if (v15)
    {
      v0 = *(v15 + 16);
      swift_unknownObjectRetain();
    }

    else
    {
      v0 = 0x8000000223093F30;
      lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
      v18 = swift_allocError();
      OUTLINED_FUNCTION_0_4(v18, v19);
    }

    return v0;
  }

  __break(1u);
  return result;
}

uint64_t AceObjectStreamAccessor.retrieve(interactionId:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = (*(*v2 + 120))();
  if (!v3)
  {
    v14[1] = v7;
    MEMORY[0x28223BE20](v7);
    v13[2] = *(v6 + 144);
    v13[3] = a1;
    v13[4] = a2;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMd, _sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMR);
    v9 = type metadata accessor for InteractionWrapper();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    v11 = lazy protocol witness table accessor for type [InteractionWrapper<Data>] and conformance [A]();
    v2 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in AceObjectStreamAccessor.retrieve(interactionId:), v13, v8, v9, v10, v11, MEMORY[0x277D84950], v14);
  }

  return v2;
}

uint64_t partial apply for closure #1 in AceObjectStreamAccessor.retrieve(interactionId:)(double *a1, void *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = a1[2];
  v9 = *(a1 + 3);
  v10 = *(a1 + 4);
  v11 = type metadata accessor for AceObjectFeatureWrapper();
  v12 = (*(v11 + 128))(v9, v10, 0, v6, v7);
  if (v12)
  {
    v20 = *(v12 + 16);

    swift_unknownObjectRetain();
    v13 = OUTLINED_FUNCTION_1_6();
    InteractionWrapper.init(interactionId:timestamp:feature:)(v13, v14, v15, v5, v16, v8);
  }

  else
  {
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    v18 = swift_allocError();
    result = OUTLINED_FUNCTION_0_4(v18, v19);
    *a2 = v3;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [InteractionWrapper<Data>] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [InteractionWrapper<Data>] and conformance [A];
  if (!lazy protocol witness table cache variable for type [InteractionWrapper<Data>] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMd, _sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [InteractionWrapper<Data>] and conformance [A]);
  }

  return result;
}

uint64_t AceObjectStreamAccessor.__deallocating_deinit()
{
  v0 = BaseStreamAccessor.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t vtable thunk for BaseStreamAccessor.retrieve(interactionId:) dispatching to AceObjectStreamAccessor.retrieve(interactionId:)@<X0>(uint64_t *a1@<X8>)
{
  result = AceObjectStreamAccessor.retrieve(interactionId:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t BaseStreamAccessor.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  BaseStreamAccessor.init(identifier:)(a1, a2);
  return v4;
}

id BaseStreamAccessor.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  objc_allocWithZone(FSFCurareInteractionStream);

  result = @nonobjc FSFCurareInteractionStream.init(streamId:sourceType:)(a1, a2, 0);
  if (result)
  {
    v7 = result;

    *(v3 + 16) = v7;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BaseStreamAccessor.insert(interactionId:feature:)()
{
  OUTLINED_FUNCTION_0_5();
  _StringGuts.grow(_:)(47);

  v1 = *v0;
  v2 = _typeName(_:qualified:)();
  MEMORY[0x223DD3460](v2);

  OUTLINED_FUNCTION_1_7();
  lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
  OUTLINED_FUNCTION_2_3();
  *v3 = 0xD00000000000002CLL;
  *(v3 + 8) = 0x8000000223093F60;
  *(v3 + 16) = 1;
  return swift_willThrow();
}

uint64_t BaseStreamAccessor.retrieveSerializedInteractions(interactionId:)(uint64_t a1, uint64_t a2)
{
  v5 = 0xD000000000000014;
  v6 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223092B00;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(inited);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v9 = [v6 retrieve_];

  v10 = "is not overridden for class ";
  if (v9)
  {
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v11 + 16))
    {

      AnyHashable.init<A>(_:)();
      specialized Dictionary.subscript.getter(v14, v11, &v15);

      outlined destroy of AnyHashable(v14);
      if (v16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
        if (swift_dynamicCast())
        {
          return a1;
        }
      }

      else
      {
        outlined destroy of Any?(&v15);
      }

      v10 = "Item does not exist!";
      v5 = 0xD000000000000018;
    }

    else
    {
    }
  }

  lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
  OUTLINED_FUNCTION_2_3();
  *v13 = v5;
  *(v13 + 8) = v10 | 0x8000000000000000;
  *(v13 + 16) = 0;
  return swift_willThrow();
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    outlined init with copy of Any(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void *BaseStreamAccessor.retrieveSerializedInteractions(interactionId:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223092B00;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(inited);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v8 = [v5 retrieveWithInteractionWrapper_];

  if (!v8 || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25FSFFeatureStoreBiomeEventCGMd, &_sSaySo25FSFFeatureStoreBiomeEventCGMR), v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v8, v9 = specialized Dictionary.subscript.getter(a1, a2, v5), , !v9))
  {
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    OUTLINED_FUNCTION_2_3();
    *v34 = 0xD000000000000014;
    *(v34 + 8) = 0x8000000223093F90;
    *(v34 + 16) = 0;
    swift_willThrow();
    return v5;
  }

  v10 = specialized Array.count.getter(v9);
  if (!v10)
  {

    return MEMORY[0x277D84F90];
  }

  v11 = v10;
  v41 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v5 = v41;
    v36 = v9 & 0xC000000000000001;
    v37 = v11;
    v14 = v9;
    do
    {
      if (v36)
      {
        v15 = MEMORY[0x223DD38A0](v13, v9);
      }

      else
      {
        v15 = *(v9 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = [v15 interactionId];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      [v16 timestamp];
      v22 = v21;
      v23 = [v16 featureData];
      v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v38[0] = v24;
      v38[1] = v26;
      InteractionWrapper.init(interactionId:timestamp:feature:)(v18, v20, v38, MEMORY[0x277CC9318], v39, v22);

      v27 = v39[0];
      v28 = v39[1];
      v29 = v39[2];
      v30 = v40;
      v41 = v5;
      v32 = v5[2];
      v31 = v5[3];
      if (v32 >= v31 >> 1)
      {
        v35 = v40;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
        v30 = v35;
        v5 = v41;
      }

      ++v13;
      v5[2] = v32 + 1;
      v33 = &v5[5 * v32];
      v33[4] = v27;
      v33[5] = v28;
      v33[6] = v29;
      *(v33 + 7) = v30;
      v9 = v14;
    }

    while (v37 != v13);

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t BaseStreamAccessor.retrieve(interactionId:)()
{
  OUTLINED_FUNCTION_0_5();
  _StringGuts.grow(_:)(54);
  MEMORY[0x223DD3460](0xD000000000000033, 0x8000000223093FD0);
  v1 = *v0;
  v2 = _typeName(_:qualified:)();
  MEMORY[0x223DD3460](v2);

  OUTLINED_FUNCTION_1_7();
  lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
  v3 = OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_3_4(v3, v4);
}

{
  OUTLINED_FUNCTION_0_5();
  _StringGuts.grow(_:)(74);
  MEMORY[0x223DD3460](0xD000000000000047, 0x8000000223094010);
  v1 = *v0;
  v2 = _typeName(_:qualified:)();
  MEMORY[0x223DD3460](v2);

  OUTLINED_FUNCTION_1_7();
  lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
  v3 = OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_3_4(v3, v4);
}

uint64_t BaseStreamAccessor.__deallocating_deinit()
{
  BaseStreamAccessor.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id @nonobjc FSFCurareInteractionStream.init(streamId:sourceType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = MEMORY[0x223DD33D0]();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithStreamId:v5 sourceType:a3];

  return v6;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}