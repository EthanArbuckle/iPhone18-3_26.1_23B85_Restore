unint64_t sub_1D97FBFCC()
{
  result = qword_1EDCFE310;
  if (!qword_1EDCFE310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCFE310);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D97FC078()
{
  result = qword_1EDCFE308;
  if (!qword_1EDCFE308)
  {
    sub_1D97FBFCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE308);
  }

  return result;
}

uint64_t _s15CoreDiagnostics19CompatibilityBridgeC23WriteJetsamMemoryReport22visibilityEndowmentSet014audioAssertionK0SbShySo8NSNumberCGSg_AJtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9849C54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x1EEE9AC00])();
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - v10;
  if (a1)
  {
    v12 = sub_1D97FC4A4(a1);
    if (v12)
    {
      if (!a2)
      {
        goto LABEL_13;
      }

LABEL_12:
      v21 = sub_1D97FC4A4(a2);
      if (v21)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }
  }

  sub_1D9849C44();

  v13 = sub_1D9849C24();
  v14 = sub_1D984A124();

  if (os_log_type_enabled(v13, v14))
  {
    v32 = v4;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    if (a1)
    {
      sub_1D97FBFCC();
      sub_1D97FC078();
      v17 = sub_1D984A0B4();
      v19 = v18;
    }

    else
    {
      v17 = 0x7263736564206F4ELL;
      v19 = 0xEE006E6F69747069;
    }

    v20 = sub_1D9819F0C(v17, v19, &v33);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1D97FA000, v13, v14, "Unable to represent visibility endowments as a set as PIDs: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1DA738F10](v16, -1, -1);
    MEMORY[0x1DA738F10](v15, -1, -1);

    v4 = v32;
    (*(v5 + 8))(v11, v32);
  }

  else
  {

    (*(v5 + 8))(v11, v4);
  }

  v12 = 0;
  if (a2)
  {
    goto LABEL_12;
  }

LABEL_13:
  sub_1D9849C44();

  v22 = sub_1D9849C24();
  v23 = sub_1D984A124();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v33 = v25;
    *v24 = 136315138;
    if (a2)
    {
      sub_1D97FBFCC();
      sub_1D97FC078();
      v26 = sub_1D984A0B4();
      v28 = v27;
    }

    else
    {
      v26 = 0x7263736564206F4ELL;
      v28 = 0xEE006E6F69747069;
    }

    v29 = sub_1D9819F0C(v26, v28, &v33);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_1D97FA000, v22, v23, "Unable to represent audio assertions as a set as PIDs: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1DA738F10](v25, -1, -1);
    MEMORY[0x1DA738F10](v24, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  v21 = 0;
LABEL_19:
  v30 = WriteJetsamMemoryReport(visibilityEndowmentSet:audioAssertionSet:)(v12, v21);

  return v30 & 1;
}

uint64_t sub_1D97FC4A4(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1D984A2E4())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CD0];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41E98, &qword_1D984F918);
  v3 = sub_1D984A334();
  if (v2)
  {
LABEL_4:

    sub_1D984A2D4();
    sub_1D97FBFCC();
    sub_1D97FC078();
    result = sub_1D984A0C4();
    v1 = v17;
    v5 = v18;
    v6 = v19;
    v7 = v20;
    v8 = v21;
    goto LABEL_11;
  }

LABEL_7:
  v9 = -1 << *(v1 + 32);
  v5 = v1 + 56;
  v6 = ~v9;
  v10 = -v9;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v8 = v11 & *(v1 + 56);

  v7 = 0;
LABEL_11:
  if (v1 < 0)
  {
    if (!sub_1D984A2F4())
    {
LABEL_21:
      sub_1D97FC7D8();
      return v3;
    }

    sub_1D97FBFCC();
    swift_dynamicCast();
    v15 = v16;
LABEL_20:
    sub_1D984A684();

    sub_1D97FC7D8();

    return 0;
  }

  v12 = v8;
  v13 = v7;
  if (v8)
  {
LABEL_17:
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    goto LABEL_20;
  }

  v14 = v7;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= ((v6 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v12 = *(v5 + 8 * v13);
    ++v14;
    if (v12)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t WriteJetsamMemoryReport(visibilityEndowmentSet:audioAssertionSet:)(void *a1, void *a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v5 = sub_1D9849DC4();
  v6 = [v4 initWithMachServiceName:v5 options:4096];

  v7 = [objc_opt_self() interfaceWithProtocol_];
  [v6 setRemoteObjectInterface_];

  [v6 resume];
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v19 = sub_1D983AA70;
  v20 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1D983AC08;
  v18 = &block_descriptor_3;
  v9 = _Block_copy(&aBlock);
  v10 = [v6 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_1D984A284();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41E90, &qword_1D984F8E8);
  if (swift_dynamicCast())
  {
    if (a1)
    {
      a1 = sub_1D984A094();
    }

    if (a2)
    {
      a2 = sub_1D984A094();
    }

    v19 = sub_1D983AC78;
    v20 = v8;
    aBlock = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1D983ACB8;
    v18 = &block_descriptor_3;
    v11 = _Block_copy(&aBlock);

    [v14 writeJetsamMemoryReportWithVisibilityEndowmentSet:a1 audioAssertionSet:a2 with:v11];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  [v6 invalidate];

  swift_beginAccess();
  v12 = *(v8 + 16);

  return v12;
}

CoreDiagnostics::CrashPatternInfo::Frame __swiftcall CrashPatternInfo.Frame.init(symbol:imageIndex:)(Swift::String_optional symbol, Swift::UInt imageIndex)
{
  *v2 = symbol;
  v2[1].value._countAndFlagsBits = imageIndex;
  result.symbol = symbol;
  result.imageIndex = imageIndex;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

CoreDiagnostics::CrashPatternInfo::Thread __swiftcall CrashPatternInfo.Thread.init(frames:name:triggered:)(Swift::OpaquePointer frames, Swift::String_optional name, Swift::Bool_optional triggered)
{
  *(v3 + 8) = name;
  *v3 = frames;
  *(v3 + 24) = triggered;
  result.name = name;
  result.frames = frames;
  result.triggered = triggered;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

id CrashPatternInfo.init(procName:threads:usedImages:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_procName];
  *v5 = a1;
  *(v5 + 1) = a2;
  *&v4[OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_threads] = a3;
  *&v4[OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_usedImages] = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for CrashPatternInfo();
  return objc_msgSendSuper2(&v7, sel_init);
}

id DiagnosticPatternMatching.init(type:)(int a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1D984A164();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D984A154();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1D9849D54();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  *&v1[OBJC_IVAR____SwiftDiagnosticPatternMatching_type] = a1;
  v13 = &v1[OBJC_IVAR____SwiftDiagnosticPatternMatching_patternMatcher];
  if ((a1 - 1) > 1)
  {
    *(v13 + 32) = 0;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    sub_1D981A4E8(v13, &qword_1ECB41608, &qword_1D984C090);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v14 = sub_1D97FCF98();
    v19 = "n";
    v20 = v14;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0;
    sub_1D9849D44();
    v22 = MEMORY[0x1E69E7CC0];
    sub_1D97FCFE4(&qword_1EDCFE318, MEMORY[0x1E69E8030]);
    v17 = v4;
    v18 = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41610, &qword_1D984C098);
    sub_1D97FD02C(&qword_1EDCFE320, &qword_1ECB41610, &qword_1D984C098);
    sub_1D984A2B4();
    (*(v5 + 104))(v8, *MEMORY[0x1E69E8090], v17);
    *&v1[OBJC_IVAR____SwiftDiagnosticPatternMatching_asyncQueue] = sub_1D984A1A4();
    v21.receiver = v1;
    v21.super_class = v18;
    return objc_msgSendSuper2(&v21, sel_init);
  }
}

unint64_t sub_1D97FCF98()
{
  result = qword_1EDCFE9C0;
  if (!qword_1EDCFE9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCFE9C0);
  }

  return result;
}

uint64_t sub_1D97FCFE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D97FD02C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

double DiagnosticPatternMatching.lookForCrashPatternRemote(report:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D97FD0F8(a1, &unk_1F550B5C8, sub_1D97FE778, &block_descriptor_103, &qword_1ECB41708, &unk_1D984CC40, &qword_1EDCFE400, &v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1D97FD0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, unint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v110 = a7;
  v111 = a6;
  v109 = a5;
  v123 = a4;
  v122 = a3;
  v121 = a2;
  v124 = a1;
  v9 = sub_1D9849CF4();
  v112 = *(v9 - 8);
  v10 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v113 = v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41640, &qword_1D984C0C0);
  v12 = *(*(v118 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v118);
  v114 = (v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v102 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v132 = v102 - v18;
  v131 = sub_1D9849D14();
  v130 = *(v131 - 8);
  v19 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v127 = (v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = sub_1D9849D74();
  v128 = *(v129 - 8);
  v21 = *(v128 + 64);
  v22 = MEMORY[0x1EEE9AC00](v129);
  v125 = v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v126 = v102 - v24;
  v120 = sub_1D9849D34();
  v119 = *(v120 - 8);
  v25 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v27 = v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D984A164();
  v115 = *(v28 - 8);
  v29 = v115[8];
  MEMORY[0x1EEE9AC00](v28);
  v31 = v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D984A154();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v117 = sub_1D9849D54();
  v116 = *(v117 - 8);
  v34 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v36 = v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D9849CA4();
  v38 = *(*(v37 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v37 - 8);
  if (qword_1EDCFE368 != -1)
  {
    result = swift_once();
  }

  if (byte_1EDCFE370 != 1)
  {
    *a8 = MEMORY[0x1E69E7CC0];
    *(a8 + 8) = 0;
    *(a8 + 16) = 0;
    return result;
  }

  v108 = v27;
  v106 = v9;
  v107 = v17;
  *&v137 = 0xD000000000000010;
  *(&v137 + 1) = 0x80000001D9853B00;
  v138 = 1;
  sub_1D9849CD4();
  sub_1D9849C94();
  v40 = sub_1D9849C84();
  v102[0] = 0;
  v105 = a8;
  v41 = v40;

  v103 = dispatch_semaphore_create(0);
  v102[2] = sub_1D97FCF98();
  v102[1] = "t to listener, error: ";
  sub_1D9849D44();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D97FCFE4(&qword_1EDCFE318, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41610, &qword_1D984C098);
  v104 = MEMORY[0x1E69E6328];
  sub_1D97FD02C(&qword_1EDCFE320, &qword_1ECB41610, &qword_1D984C098);
  sub_1D984A2B4();
  (v115[13])(v31, *MEMORY[0x1E69E8090], v28);
  v115 = sub_1D984A1A4();
  v42 = swift_allocBox();
  v44 = v43;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41648, &qword_1D984C0C8);
  v45 = *(v118 - 8);
  (*(v45 + 56))(v44, 1, 1, v118);
  v46 = swift_allocObject();
  v46[2] = v42;
  v46[3] = v41;
  v121 = v41;
  v47 = v124;
  v48 = v103;
  v46[4] = v124;
  v46[5] = v48;
  aBlock[4] = v122;
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D97FE3F0;
  aBlock[3] = v123;
  v49 = _Block_copy(aBlock);
  v50 = (v47 & 0x7FFFFFFFFFFFFFFFLL);
  v51 = v48;
  v124 = v42;

  sub_1D9849D44();
  *&v134 = MEMORY[0x1E69E7CC0];
  sub_1D97FCFE4(&qword_1EDCFE360, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41650, &qword_1D984C0D0);
  sub_1D97FD02C(&qword_1EDCFE328, &qword_1ECB41650, &qword_1D984C0D0);
  v52 = v108;
  v53 = v115;
  v54 = v120;
  sub_1D984A2B4();
  MEMORY[0x1DA737DF0](0, v36, v52, v49);
  _Block_release(v49);
  v55 = v51;
  (*(v119 + 8))(v52, v54);
  (*(v116 + 8))(v36, v117);

  v56 = v125;
  sub_1D9849D64();
  v57 = v127;
  *v127 = 10;
  v58 = v130;
  v59 = v131;
  (*(v130 + 104))(v57, *MEMORY[0x1E69E7F48], v131);
  v60 = v126;
  MEMORY[0x1DA7379E0](v56, v57);
  (*(v58 + 8))(v57, v59);
  v61 = *(v128 + 8);
  v62 = v129;
  v61(v56, v129);
  sub_1D984A1B4();
  v61(v60, v62);
  swift_beginAccess();
  v63 = v44;
  v64 = v132;
  sub_1D981A480(v44, v132, &qword_1ECB41640, &qword_1D984C0C0);
  v65 = *(v45 + 48);
  v66 = v118;
  v67 = v65(v64, 1);
  if (v67 != 1)
  {
    v69 = v55;
    sub_1D981A4E8(v64, &qword_1ECB41640, &qword_1D984C0C0);
    v70 = v107;
    sub_1D981A480(v63, v107, &qword_1ECB41640, &qword_1D984C0C0);
    if ((v65)(v70, 1, v66) == 1)
    {

      v71 = v105;
    }

    else
    {
      sub_1D981A474();
      v72 = v70;
      v73 = v114;
      sub_1D981A480(v72, v114, &qword_1ECB41640, &qword_1D984C0C0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v74 = *v73;
        *&v134 = 0;
        *(&v134 + 1) = 0xE000000000000000;
        sub_1D984A354();
        MEMORY[0x1DA737B20](0xD000000000000025, 0x80000001D9853BC0);
        swift_getErrorValue();
        sub_1D984A5E4();

        v137 = v134;
        v138 = 1;
        v71 = v105;
      }

      else
      {
        v75 = v112;
        v76 = v113;
        v77 = v106;
        (*(v112 + 32))(v113, v73, v106);
        v78 = v109;
        v79 = v111;
        __swift_instantiateConcreteTypeFromMangledNameV2(v109, v111);
        sub_1D97FD02C(v110, v78, v79);
        v80 = v102[0];
        sub_1D9849CE4();
        v71 = v105;
        if (v80)
        {
          (*(v75 + 8))(v76, v77);

          sub_1D981A4E8(v107, &qword_1ECB41640, &qword_1D984C0C0);

          if (qword_1EDCFE578 != -1)
          {
            swift_once();
          }

          v81 = sub_1D9849C54();
          __swift_project_value_buffer(v81, qword_1EDD005E8);
          v82 = v80;
          v83 = sub_1D9849C24();
          v84 = sub_1D984A134();

          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            *v85 = 138412290;
            v87 = v80;
            v88 = _swift_stdlib_bridgeErrorToNSError();
            *(v85 + 4) = v88;
            *v86 = v88;
            _os_log_impl(&dword_1D97FA000, v83, v84, "Failed to send message or decode reply: %@", v85, 0xCu);
            sub_1D981A4E8(v86, &qword_1ECB41628, &qword_1D984E3B0);
            MEMORY[0x1DA738F10](v86, -1, -1);
            MEMORY[0x1DA738F10](v85, -1, -1);
          }

          *&v134 = 0;
          *(&v134 + 1) = 0xE000000000000000;
          sub_1D984A354();
          MEMORY[0x1DA737B20](0xD000000000000028, 0x80000001D9853BF0);
          swift_getErrorValue();
          sub_1D984A5E4();

          v137 = v134;
          v138 = 1;
          goto LABEL_26;
        }

        v137 = v134;
        v138 = v135;
        if (qword_1EDCFE578 != -1)
        {
          swift_once();
        }

        v89 = sub_1D9849C54();
        __swift_project_value_buffer(v89, qword_1EDD005E8);
        v90 = v137;
        v91 = v138;
        sub_1D981A548();
        v92 = sub_1D9849C24();
        v93 = sub_1D984A134();
        sub_1D981A474();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v133 = v95;
          *v94 = 136315138;
          v134 = v90;
          v135 = v91;
          sub_1D981A548();
          v96 = sub_1D9849E44();
          v98 = sub_1D9819F0C(v96, v97, &v133);

          *(v94 + 4) = v98;
          _os_log_impl(&dword_1D97FA000, v92, v93, "Received response: %s", v94, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v95);
          v99 = v95;
          v71 = v105;
          MEMORY[0x1DA738F10](v99, -1, -1);
          MEMORY[0x1DA738F10](v94, -1, -1);
        }

        else
        {
        }

        (*(v75 + 8))(v113, v106);
      }

      v70 = v107;
    }

    sub_1D981A4E8(v70, &qword_1ECB41640, &qword_1D984C0C0);

LABEL_26:
    swift_beginAccess();
    v100 = *(&v137 + 1);
    v101 = v138;
    *v71 = v137;
    v71[1] = v100;
    *(v71 + 16) = v101;
    sub_1D981A548();
    sub_1D981A474();
    goto LABEL_27;
  }

  sub_1D981A474();
  sub_1D981A4E8(v64, &qword_1ECB41640, &qword_1D984C0C0);

  v68 = v105;
  *v105 = 0xD000000000000015;
  v68[1] = 0x80000001D9853B80;
  *(v68 + 16) = 1;
LABEL_27:
  sub_1D9849CB4();
}

uint64_t sub_1D97FE3F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1D97FE434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41640, &qword_1D984C0C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = swift_projectBox();
  v12 = a3;
  sub_1D97FE77C();
  sub_1D9849CC4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41648, &qword_1D984C0C8);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  swift_beginAccess();
  sub_1D981B098(v8, v9);
  return sub_1D984A1C4();
}

unint64_t sub_1D97FE77C()
{
  result = qword_1EDCFE378;
  if (!qword_1EDCFE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE378);
  }

  return result;
}

uint64_t XPCPatternInfoContainer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41658, &qword_1D984C0D8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41660, &qword_1D984C0E0);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41668, &qword_1D984C0E8);
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v13 = &v22 - v12;
  v14 = *v1;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D97FEBD8();
  sub_1D984A704();
  if (v14 < 0)
  {
    v18 = v14 & 0x7FFFFFFFFFFFFFFFLL;
    LOBYTE(v27) = 1;
    sub_1D981A56C();
    v19 = v22;
    v20 = v26;
    sub_1D984A504();
    v27 = v18;
    type metadata accessor for PanicPatternInfo();
    sub_1D97FCFE4(&qword_1ECB41678, type metadata accessor for PanicPatternInfo);
    v21 = v24;
    sub_1D984A5A4();
    (*(v23 + 8))(v19, v21);
    return (*(v10 + 8))(v13, v20);
  }

  else
  {
    LOBYTE(v27) = 0;
    sub_1D97FEC2C();
    v16 = v26;
    sub_1D984A504();
    v27 = v14;
    type metadata accessor for CrashPatternInfo();
    sub_1D97FCFE4(&qword_1EDCFE418, type metadata accessor for CrashPatternInfo);
    sub_1D984A5A4();
    (*(v25 + 8))(v9, v6);
    return (*(v10 + 8))(v13, v16);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1D97FEBD8()
{
  result = qword_1EDCFE750;
  if (!qword_1EDCFE750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE750);
  }

  return result;
}

unint64_t sub_1D97FEC2C()
{
  result = qword_1EDCFE738;
  if (!qword_1EDCFE738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE738);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for CrashPatternInfo.Frame.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CrashPatternInfo.Frame.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D97FEDE8()
{
  if (*v0)
  {
    return 0x63696E6170;
  }

  else
  {
    return 0x6873617263;
  }
}

_WORD *storeEnumTagSinglePayload for CrashPatternAction(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CrashPatternAction(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

uint64_t sub_1D97FEF0C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418F0, &qword_1D984D5B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D97FF130();
  sub_1D984A704();
  v11 = *(v3 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_procName);
  v12 = *(v3 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_procName + 8);
  LOBYTE(v15) = 0;
  sub_1D984A584();
  if (!v2)
  {
    v15 = *(v3 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_threads);
    HIBYTE(v14) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418F8, &qword_1D984D5C0);
    sub_1D982153C();
    sub_1D984A534();
    v15 = *(v3 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_usedImages);
    HIBYTE(v14) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41900, &qword_1D984D5C8);
    sub_1D9821614();
    sub_1D984A534();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D97FF130()
{
  result = qword_1EDCFE9B8;
  if (!qword_1EDCFE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE9B8);
  }

  return result;
}

uint64_t sub_1D97FF184()
{
  v1 = 0x73646165726874;
  if (*v0 != 1)
  {
    v1 = 0x67616D4964657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D614E636F7270;
  }
}

uint64_t storeEnumTagSinglePayload for CrashPatternDefinition.SymbolName.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CrashPatternDefinition.SymbolName.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t CrashPatternInfo.Thread.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418B8, &qword_1D984D580);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v14 = v1[2];
  v15 = v9;
  v13[1] = *(v1 + 24);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D97FF538();

  sub_1D984A704();
  v19 = v10;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418C0, &qword_1D984D588);
  sub_1D9820D2C();
  sub_1D984A5A4();

  if (!v2)
  {
    v17 = 1;
    sub_1D984A514();
    v16 = 2;
    sub_1D984A524();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D97FF538()
{
  result = qword_1EDCFE970;
  if (!qword_1EDCFE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE970);
  }

  return result;
}

uint64_t sub_1D97FF58C()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x6572656767697274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656D617266;
  }
}

uint64_t CrashPatternInfo.Frame.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418D0, &qword_1D984D598);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D97FF78C();
  sub_1D984A704();
  v15 = 0;
  v11 = v13[1];
  sub_1D984A514();
  if (!v11)
  {
    v14 = 1;
    sub_1D984A594();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D97FF78C()
{
  result = qword_1EDCFE988;
  if (!qword_1EDCFE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE988);
  }

  return result;
}

uint64_t sub_1D97FF7E0()
{
  if (*v0)
  {
    result = 0x646E496567616D69;
  }

  else
  {
    result = 0x6C6F626D7973;
  }

  *v0;
  return result;
}

uint64_t sub_1D97FF81C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418E0, &qword_1D984D5A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D97FF958();
  sub_1D984A704();
  sub_1D984A514();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D97FF958()
{
  result = qword_1EDCFE9A0;
  if (!qword_1EDCFE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE9A0);
  }

  return result;
}

uint64_t sub_1D97FF9EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D97FFA3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t XPCPatternInfoContainer.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41680, &qword_1D984C0F0);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41688, &qword_1D984C0F8);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41690, &unk_1D984C100);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v30 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D97FEBD8();
  v18 = v35;
  sub_1D984A6F4();
  if (!v18)
  {
    v35 = v7;
    v19 = v12;
    v20 = v33;
    v21 = v34;
    v22 = sub_1D984A4E4();
    if (*(v22 + 16) == 1)
    {
      v30[1] = v22;
      if (*(v22 + 32))
      {
        LOBYTE(v37) = 1;
        sub_1D981A56C();
        sub_1D984A424();
        type metadata accessor for PanicPatternInfo();
        sub_1D97FCFE4(&qword_1ECB416A0, type metadata accessor for PanicPatternInfo);
        sub_1D984A4D4();
        (*(v32 + 8))(v6, v20);
        (*(v19 + 8))(v15, v11);
        swift_unknownObjectRelease();
        *v21 = v37 | 0x8000000000000000;
      }

      else
      {
        LOBYTE(v37) = 0;
        sub_1D97FEC2C();
        v27 = v10;
        sub_1D984A424();
        type metadata accessor for CrashPatternInfo();
        sub_1D97FCFE4(&qword_1EDCFE410, type metadata accessor for CrashPatternInfo);
        v29 = v35;
        sub_1D984A4D4();
        (*(v31 + 8))(v27, v29);
        (*(v19 + 8))(v15, v11);
        swift_unknownObjectRelease();
        *v21 = v37;
      }
    }

    else
    {
      v23 = sub_1D984A3A4();
      swift_allocError();
      v25 = v24;
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41698, &qword_1D984D0B0) + 48);
      *v25 = &type metadata for XPCPatternInfoContainer;
      sub_1D984A434();
      sub_1D984A364();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v19 + 8))(v15, v11);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v36);
}

uint64_t sub_1D97FFFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6873617263 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D984A5F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x63696E6170 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D984A5F4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

id sub_1D98000B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for CrashPatternInfo());
  result = CrashPatternInfo.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id CrashPatternInfo.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41908, &qword_1D984D5D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D97FF130();
  sub_1D984A6F4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for CrashPatternInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v19) = 0;
    v11 = sub_1D984A4B4();
    v13 = &v1[OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_procName];
    *v13 = v11;
    v13[1] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418F8, &qword_1D984D5C0);
    v18 = 1;
    sub_1D9821730();
    sub_1D984A464();
    *&v1[OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_threads] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41900, &qword_1D984D5C8);
    v18 = 2;
    sub_1D9821808();
    sub_1D984A464();
    *&v1[OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_usedImages] = v19;
    v15 = type metadata accessor for CrashPatternInfo();
    v17.receiver = v1;
    v17.super_class = v15;
    v3 = objc_msgSendSuper2(&v17, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t sub_1D98003EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9800430(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t CrashPatternInfo.Thread.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418C8, &qword_1D984D590);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D97FF538();
  sub_1D984A6F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418C0, &qword_1D984D588);
  v24 = 0;
  sub_1D9820E04();
  sub_1D984A4D4();
  v20 = a2;
  v11 = v25;
  v23 = 1;
  v12 = sub_1D984A444();
  v21 = v13;
  v14 = v12;
  v22 = 2;
  v15 = sub_1D984A454();
  (*(v6 + 8))(v9, v5);
  v16 = v20;
  v17 = v21;
  *v20 = v11;
  v16[1] = v14;
  v16[2] = v17;
  *(v16 + 24) = v15;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D9800700(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D980075C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t CrashPatternInfo.Frame.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418D8, &qword_1D984D5A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D97FF78C();
  sub_1D984A6F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = 0;
  v11 = sub_1D984A444();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  v15 = sub_1D984A4C4();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1D98009D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D9800A30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t CrashPatternInfo.BinaryImage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418E8, &qword_1D984D5B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D97FF958();
  sub_1D984A6F4();
  if (!v2)
  {
    v11 = sub_1D984A444();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t CrashPatternInfo.procName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_procName);
  v2 = *(v0 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_procName + 8);

  return v1;
}

uint64_t sub_1D9800C64()
{
  v1 = v0;
  v3 = *v0;
  v2 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v6 = sub_1D9801420(*v0, v2, v5, v4, &qword_1ECB41808, &qword_1D984D0D0, sub_1D981FF14);
  if (v6)
  {
    v7 = v6;
    if (qword_1EDCFE578 != -1)
    {
LABEL_26:
      swift_once();
    }

    v8 = sub_1D9849C54();
    __swift_project_value_buffer(v8, qword_1EDD005E8);

    v9 = sub_1D9849C24();
    v10 = sub_1D984A124();

    v50 = v1;
    if (os_log_type_enabled(v9, v10))
    {
      v11 = v5;
      v5 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v71 = v12;
      *v5 = 136315906;
      *(v5 + 4) = sub_1D9819F0C(v3, v2, &v71);
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_1D9819F0C(v11, v4, &v71);
      *(v5 + 22) = 2080;
      *(v5 + 24) = sub_1D9819F0C(0xD000000000000016, 0x80000001D984CEE0, &v71);
      *(v5 + 32) = 2048;
      *(v5 + 34) = v7[2];

      _os_log_impl(&dword_1D97FA000, v9, v10, "Successfully parsed payload for %s in namespace %s as type %s. Count = %ld", v5, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1DA738F10](v12, -1, -1);
      MEMORY[0x1DA738F10](v5, -1, -1);
    }

    else
    {
    }

    v1 = v7;
    v4 = 0;
    v3 = v7[2];
    v53 = v7 + 4;
    v21 = &qword_1ECB41810;
    v22 = &qword_1D984D0D8;
    v51 = v7;
    v52 = v3;
    while (1)
    {
      if (v4 == v3)
      {
        sub_1D981FEF8(&v71);
        v2 = v71;
        v84 = v76;
        v85 = v77;
        v86 = v78;
        v87 = v79;
        v80 = v72;
        v81 = v73;
        v24 = v74;
        v25 = v75;
        v4 = v3;
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        if (v4 >= v1[2])
        {
          goto LABEL_25;
        }

        v26 = &v53[16 * v4];
        v27 = *v26;
        v28 = *(v26 + 1);
        v29 = *(v26 + 3);
        v57 = *(v26 + 2);
        v58 = v29;
        v55 = v27;
        v56 = v28;
        v30 = *(v26 + 4);
        v31 = *(v26 + 5);
        v32 = *(v26 + 7);
        v61 = *(v26 + 6);
        v62 = v32;
        v59 = v30;
        v60 = v31;
        v33 = *v26;
        v34 = *(v26 + 1);
        v35 = *(v26 + 3);
        v65 = *(v26 + 2);
        v66 = v35;
        v63 = v33;
        v64 = v34;
        v36 = *(v26 + 4);
        v37 = *(v26 + 5);
        v38 = *(v26 + 7);
        v69 = *(v26 + 6);
        v70 = v38;
        v67 = v36;
        v68 = v37;
        v71 = v4;
        v76 = v36;
        v77 = v37;
        v78 = v69;
        v79 = v38;
        v72 = v63;
        v73 = v64;
        v74 = v65;
        v75 = v66;
        nullsub_1(&v71);
        sub_1D981A480(&v55, v54, v21, v22);
        v2 = v71;
        v84 = v76;
        v85 = v77;
        v86 = v78;
        v87 = v79;
        v80 = v72;
        v81 = v73;
        v24 = v74;
        v25 = v75;
        ++v4;
      }

      v82 = v24;
      v83 = v25;
      v76 = v84;
      v77 = v85;
      v78 = v86;
      v79 = v87;
      v72 = v80;
      v73 = v81;
      v74 = v24;
      v75 = v25;
      v71 = v2;
      if (sub_1D981FEE0(&v71) == 1)
      {
        break;
      }

      v67 = v84;
      v68 = v85;
      v69 = v86;
      v70 = v87;
      v63 = v80;
      v64 = v81;
      v65 = v82;
      v66 = v83;
      sub_1D981A480(&v63, &v55, v21, v22);
      v7 = v22;
      v39 = sub_1D9849C24();
      v5 = sub_1D984A114();
      if (os_log_type_enabled(v39, v5))
      {
        v40 = v21;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v54[0] = v42;
        *v41 = 134218242;
        *(v41 + 4) = v2;
        *(v41 + 12) = 2080;
        v59 = v67;
        v60 = v68;
        v61 = v69;
        v62 = v70;
        v55 = v63;
        v56 = v64;
        v57 = v65;
        v58 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(v40, v7);
        v43 = sub_1D9849E44();
        v2 = v44;
        v45 = sub_1D9819F0C(v43, v44, v54);

        *(v41 + 14) = v45;
        _os_log_impl(&dword_1D97FA000, v39, v5, "Payload %ld: %s", v41, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x1DA738F10](v42, -1, -1);
        v46 = v41;
        v21 = v40;
        v1 = v51;
        v3 = v52;
        MEMORY[0x1DA738F10](v46, -1, -1);
        v23 = v40;
      }

      else
      {
        sub_1D981A4E8(&v63, v21, v22);
        v23 = v21;
      }

      sub_1D981A4E8(&v63, v23, v7);

      v22 = v7;
    }

    v47 = v50[4];

    v50[4] = v1;
  }

  else
  {
    if (qword_1EDCFE578 != -1)
    {
      swift_once();
    }

    v13 = sub_1D9849C54();
    __swift_project_value_buffer(v13, qword_1EDD005E8);

    v14 = sub_1D9849C24();
    v15 = sub_1D984A124();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = v1;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v71 = v18;
      *v17 = 136315650;
      v19 = sub_1D9819F0C(v3, v2, &v71);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2080;
      v20 = sub_1D9819F0C(v5, v4, &v71);

      *(v17 + 14) = v20;
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_1D9819F0C(0xD000000000000016, 0x80000001D984CEE0, &v71);
      _os_log_impl(&dword_1D97FA000, v14, v15, "Unable to parse payload for %s in namespace %s as type %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA738F10](v18, -1, -1);
      v1 = v16;
      MEMORY[0x1DA738F10](v17, -1, -1);
    }

    else
    {
    }

    v49 = v1[4];

    v1[4] = MEMORY[0x1E69E7CC0];
  }

  return result;
}

double CrashMatcherOOP.init()@<D0>(uint64_t a1@<X8>)
{
  strcpy(&v4, "crashPayload");
  BYTE13(v4) = 0;
  HIWORD(v4) = -5120;
  *&v5 = 0x80000001D9853DC0;
  *(&v5 + 1) = MEMORY[0x1E69E7CC0];
  sub_1D9800C64();
  result = *&v4;
  v3 = v5;
  *a1 = v4;
  *(a1 + 16) = 0xD000000000000021;
  *(a1 + 24) = v3;
  return result;
}

uint64_t sub_1D9801420(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void))
{
  v55 = a6;
  v56 = a7;
  v54 = a5;
  v11 = sub_1D984A394();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v52[13] = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v52[11] = v52 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v52 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v52[12] = v52 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v52[9] = v52 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v52[10] = v52 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v52[7] = v52 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v52[6] = v52 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v52[8] = v52 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v52[4] = v52 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v52[5] = v52 - v35;
  v36 = sub_1D984A3A4();
  v53 = *(v36 - 8);
  v37 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1D9802870(a1, a2, a3, a4);
  if (!v38)
  {
    return 0;
  }

  v52[1] = v20;
  v52[3] = v11;
  v52[2] = v12;
  v39 = sub_1D98499C4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v43 = v52 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9849984();
  v44 = sub_1D98499D4();
  v46 = v45;
  v47 = v44;
  (*(v40 + 8))(v43, v39);

  v48 = sub_1D9849864();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  sub_1D9849854();
  __swift_instantiateConcreteTypeFromMangledNameV2(v54, v55);
  v56();
  sub_1D9849844();

  sub_1D981FA9C(v47, v46);
  return v57;
}

uint64_t sub_1D9802870(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!MEMORY[0x1E69DB520])
  {
    if (qword_1EDCFE578 != -1)
    {
      swift_once();
    }

    v23 = sub_1D9849C54();
    __swift_project_value_buffer(v23, qword_1EDD005E8);
    v8 = sub_1D9849C24();
    v24 = sub_1D984A134();
    if (os_log_type_enabled(v8, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D97FA000, v8, v24, "Trial is not available", v25, 2u);
      MEMORY[0x1DA738F10](v25, -1, -1);
    }

    goto LABEL_24;
  }

  v8 = [objc_opt_self() clientWithIdentifier_];
  v9 = sub_1D9849DC4();
  v10 = sub_1D9849DC4();
  v11 = [v8 levelForFactor:v9 withNamespaceName:v10];

  if (!v11)
  {
    if (qword_1EDCFE578 != -1)
    {
      swift_once();
    }

    v26 = sub_1D9849C54();
    __swift_project_value_buffer(v26, qword_1EDD005E8);

    v27 = sub_1D9849C24();
    v28 = sub_1D984A124();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40 = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_1D9819F0C(a1, a2, &v40);
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_1D9819F0C(a3, a4, &v40);
      _os_log_impl(&dword_1D97FA000, v27, v28, "Missing level for %s in namespace %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA738F10](v30, -1, -1);
      MEMORY[0x1DA738F10](v29, -1, -1);
    }

    goto LABEL_23;
  }

  v12 = [v11 fileValue];
  if (!v12)
  {
    __break(1u);
    JUMPOUT(0x1D9802EB0);
  }

  v13 = v12;
  v14 = [v12 path];

  if (!v14)
  {
    if (qword_1EDCFE578 != -1)
    {
      swift_once();
    }

    v31 = sub_1D9849C54();
    __swift_project_value_buffer(v31, qword_1EDD005E8);

    v32 = sub_1D9849C24();
    v33 = sub_1D984A124();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_1D9819F0C(a1, a2, &v40);
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_1D9819F0C(a3, a4, &v40);
      _os_log_impl(&dword_1D97FA000, v32, v33, "Missing asset for %s in namespace %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA738F10](v35, -1, -1);
      MEMORY[0x1DA738F10](v34, -1, -1);
    }

LABEL_23:
    [v8 dispose];
LABEL_24:
    v15 = 0;
    goto LABEL_26;
  }

  v38 = a1;
  v39 = a3;
  v15 = sub_1D9849DF4();
  v17 = v16;

  if (qword_1EDCFE578 != -1)
  {
    swift_once();
  }

  v18 = sub_1D9849C54();
  __swift_project_value_buffer(v18, qword_1EDD005E8);

  v19 = sub_1D9849C24();
  v20 = sub_1D984A134();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v40 = v22;
    *v21 = 136315650;
    *(v21 + 4) = sub_1D9819F0C(v15, v17, &v40);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_1D9819F0C(v38, a2, &v40);
    *(v21 + 22) = 2080;
    *(v21 + 24) = sub_1D9819F0C(v39, a4, &v40);
    _os_log_impl(&dword_1D97FA000, v19, v20, "Using Trial payload at %s for %s in namespace %s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA738F10](v22, -1, -1);
    MEMORY[0x1DA738F10](v21, -1, -1);

    [v8 dispose];
  }

  else
  {

    [v8 dispose];
  }

LABEL_26:

  return v15;
}

uint64_t sub_1D9803060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1D9818AC4(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D98030B4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9803114(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_threads);
  if (!v2)
  {
    return 2;
  }

  v3 = *(a2 + 24);
  if (!v3)
  {
    return 2;
  }

  v4 = *(v2 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  for (i = (v2 + 56); ; i += 32)
  {
    v8 = *(i - 1);
    if (v6 & 1) == 0 || (*i)
    {
      if (v8)
      {
        v9 = *(i - 2) == v5 && v8 == v3;
        if (v9 || (sub_1D984A5F4() & 1) != 0)
        {
          break;
        }
      }
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D98031D4(uint64_t a1, uint64_t a2)
{
  v21 = *(a1 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_threads);
  if (!v21)
  {
    return 2;
  }

  v2 = *(a2 + 40);
  if (!v2)
  {
    return 2;
  }

  v20 = *(v2 + 16);
  if (v20)
  {
    v3 = 0;
    v19 = v2 + 32;
    v4 = *(a1 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_threads);
    do
    {
      v5 = (v19 + 24 * v3);
      v6 = *(v5 + 17);
      v7 = *(v21 + 16);
      if (v7)
      {
        v8 = 0;
        v9 = *v5;
        v10 = v5[1];
        v11 = *(v5 + 16);
        while (1)
        {
          v12 = v21 + 32 + 32 * v8;
          v13 = *v12;
          if (v11 & 1) == 0 || (v14 = *(v12 + 24), v14 != 2) && (v14)
          {
            v15 = *(v13 + 16);
            if (v15)
            {
              break;
            }
          }

LABEL_8:
          if (++v8 == v7)
          {
            goto LABEL_24;
          }
        }

        v16 = (v13 + 40);
        while (1)
        {
          if (*v16)
          {
            v17 = *(v16 - 1) == v9 && *v16 == v10;
            if (v17 || (sub_1D984A5F4() & 1) != 0)
            {
              break;
            }
          }

          v16 += 3;
          if (!--v15)
          {
            goto LABEL_8;
          }
        }

        if (v6 != 2 && (v6 & 1) != 0)
        {
          return 0;
        }
      }

      else
      {
LABEL_24:
        if (v6 == 2 || (v6 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
    }

    while (v3 != v20);
  }

  return 1;
}

uint64_t sub_1D9803338(uint64_t result, uint64_t a2)
{
  v2 = *(result + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_threads);
  if (!v2)
  {
    return 2;
  }

  v3 = *(a2 + 56);
  if (!v3)
  {
    return 2;
  }

  v4 = *(v2 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  v24 = result;
  v25 = OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_usedImages;
  v8 = v2 + 32;
  v23 = *(v2 + 16);
  v22 = v7;
  while (v5 < *(v2 + 16))
  {
    v9 = (v8 + 32 * v5);
    v10 = *v9;
    if (v7 & 1) == 0 || (v11 = *(v9 + 24), v11 != 2) && (v11)
    {
      v12 = *(v10 + 16);
      if (v12)
      {
        v13 = *(result + v25);

        v14 = 0;
        v15 = 48;
        while (v14 < *(v10 + 16))
        {
          if (v13)
          {
            v16 = *(v10 + v15);
            v17 = *(v13 + 16);
            if (v17 && v16 < v17)
            {
              v19 = (v13 + 32 + 16 * v16);
              v20 = v19[1];
              if (v20)
              {
                v21 = *v19 == v6 && v20 == v3;
                if (v21 || (result = sub_1D984A5F4(), (result & 1) != 0))
                {

                  return 1;
                }
              }

              else
              {
              }
            }
          }

          ++v14;
          v15 += 24;
          if (v12 == v14)
          {

            v4 = v23;
            result = v24;
            v7 = v22;
            v8 = v2 + 32;
            goto LABEL_7;
          }
        }

        __break(1u);
        break;
      }
    }

LABEL_7:
    if (++v5 == v4)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D98034D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9803554()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D98035FC()
{
  sub_1D981FA9C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9803644()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D980367C()
{
  MEMORY[0x1DA738FB0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D98036B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D98036F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t getScenarioStateVerboseFromEventDataWrapper(char a1)
{
  if (a1)
  {
    v1 = "ON";
  }

  else
  {
    v1 = "OFF";
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:v1];
}

__CFString *processName(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 20);
  v8[0] = *(v1 + 4);
  v8[1] = v2;
  v9 = *(v1 + 36);
  v10 = 0;
  if (LOBYTE(v8[0]))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
  }

  else
  {
    v3 = @"unknown";
  }

  v4 = @"(unprintable)";
  if (v3)
  {
    v4 = v3;
  }

  v5 = v4;

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

__CFString *killDescription(unint64_t a1)
{
  if (a1 >= 0x12)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown-%llu)", a1];
  }

  else
  {
    v2 = off_1E85851E8[a1];
  }

  return v2;
}

uint64_t includeSection(void *a1, uint64_t a2)
{
  v3 = [a1 objectForKeyedSubscript:a2];
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v5 = [v3 BOOLValue];
  }

  return v5;
}

uint64_t excludeSection(void *a1, uint64_t a2)
{
  v3 = [a1 objectForKeyedSubscript:a2];
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v5 = [v3 BOOLValue] ^ 1;
  }

  return v5;
}

uint64_t kcdata_iter_size(uint64_t a1)
{
  v1 = *a1;
  if ((*a1 & 0xFFFFFFF0) == 0x20)
  {
    v1 = 17;
  }

  if (v1 <= 2309)
  {
    if (v1 == 17 || v1 == 19)
    {
      return *(a1 + 4);
    }

LABEL_15:
    v4 = *(a1 + 4);
    goto LABEL_19;
  }

  if (v1 != 2310)
  {
    if (v1 == 2312)
    {
      v4 = *(a1 + 4);
      if (v4 == 32)
      {
        if ((*(a1 + 8) & 0x8F) == 0)
        {
          return 24;
        }

        v4 = 32;
      }

      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v4 = *(a1 + 4);
  if (v4 == 112)
  {
    if ((*(a1 + 8) & 0x8F) == 0)
    {
      return 104;
    }

    v4 = 112;
  }

LABEL_19:
  v5 = v4 >= (*(a1 + 8) & 0xFu);
  v6 = v4 - (*(a1 + 8) & 0xF);
  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

__CFString *DecodeQOS(unsigned int a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"QOS_CLASS_UNKNOWN (%u)", a1];
  }

  else
  {
    v2 = off_1E85855A0[a1];
  }

  return v2;
}

id DecodeThreadFlags(unint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  memcpy(__dst, off_1E8585390, sizeof(__dst));
  v11 = xmmword_1E8585590;
  v4 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 32; ++i)
  {
    if (((1 << i) & a1) != 0)
    {
      if (*&__dst[256 * a2 + 8 * i])
      {
        [v4 addObject:?];
      }

      else
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_0x%04X", *&__dst[8 * a2 - 16], (1 << i)];
        [v4 addObject:v6];
      }
    }
  }

  for (j = 8; j != -8; j -= 8)
  {
  }

  for (k = 504; k != -8; k -= 8)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

void handleDiagnosticLog(uint64_t a1, void *a2)
{
  v5 = a2;
  if (OSAIsFeedbackPromptingEnabled())
  {
    gotLoadHelper_x22__OBJC_CLASS___OSADiagnosticsReporter(v6);
    v7 = *(v3 + 128);
    if (objc_opt_class() && (gotLoadHelper_x21__OBJC_CLASS___DiagnosticsReporterLaunchOptions(v8), v9 = *(v2 + 120), objc_opt_class()))
    {
      v10 = *(v2 + 120);
      v11 = objc_opt_new();
      [v11 setLog_path:v5];
      [*(v3 + 128) launchAppWith:a1 options:v11 completion:&__block_literal_global_0];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      handleDiagnosticLog_cold_1();
    }
  }
}

void __handleDiagnosticLog_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __handleDiagnosticLog_block_invoke_cold_1(v2);
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Swift::Bool __swiftcall DiagnosticPatternMatching.isPatternPayloadAvailable()()
{
  sub_1D981A480(v0 + OBJC_IVAR____SwiftDiagnosticPatternMatching_patternMatcher, v11, &qword_1ECB41608, &qword_1D984C090);
  v1 = v12;
  if (v12)
  {
    v2 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v4 = *(AssociatedTypeWitness - 8);
    v5 = *(v4 + 64);
    MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    v7 = &v11[-1] - v6;
    (*(v2 + 40))(v1, v2);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    LOBYTE(v1) = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v4 + 8))(v7, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    sub_1D981A4E8(v11, &qword_1ECB41608, &qword_1D984C090);
  }

  return v1 & 1;
}

BOOL DiagnosticPatternMatching.lookForPattern(report:)(uint64_t a1)
{
  v3 = OBJC_IVAR____SwiftDiagnosticPatternMatching_patternMatcher;
  sub_1D981A480(v1 + OBJC_IVAR____SwiftDiagnosticPatternMatching_patternMatcher, &v16, &qword_1ECB41608, &qword_1D984C090);
  v4 = v17;
  sub_1D981A4E8(&v16, &qword_1ECB41608, &qword_1D984C090);
  if (v4)
  {
    sub_1D981A480(v1 + v3, &v16, &qword_1ECB41608, &qword_1D984C090);
    v5 = v17;
    if (v17)
    {
      v6 = v18;
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      if ((*(v6 + 48))(a1, v5, v6))
      {
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41638, &qword_1D984C0B8);
        v13 = sub_1D984A3C4();

        __swift_destroy_boxed_opaque_existential_1Tm(&v16);
        v14 = v13;
LABEL_15:
        v15 = *(v14 + 16);

        return v15 != 0;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v16);
    }

    else
    {
      sub_1D981A4E8(&v16, &qword_1ECB41608, &qword_1D984C090);
    }

    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  if (qword_1EDCFE578 != -1)
  {
    swift_once();
  }

  v7 = sub_1D9849C54();
  __swift_project_value_buffer(v7, qword_1EDD005E8);
  v8 = v1;
  v9 = sub_1D9849C24();
  v10 = sub_1D984A134();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = *&v8[OBJC_IVAR____SwiftDiagnosticPatternMatching_type];

    _os_log_impl(&dword_1D97FA000, v9, v10, "there is no available matcher with type %u", v11, 8u);
    MEMORY[0x1DA738F10](v11, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t DiagnosticPatternMatching.lookForPattern(report:)(uint64_t a1)
{
  v3 = OBJC_IVAR____SwiftDiagnosticPatternMatching_patternMatcher;
  sub_1D981A480(v1 + OBJC_IVAR____SwiftDiagnosticPatternMatching_patternMatcher, &v14, &qword_1ECB41608, &qword_1D984C090);
  v4 = v15;
  sub_1D981A4E8(&v14, &qword_1ECB41608, &qword_1D984C090);
  if (v4)
  {
    sub_1D981A480(v1 + v3, &v14, &qword_1ECB41608, &qword_1D984C090);
    v5 = v15;
    if (v15)
    {
      v6 = v16;
      __swift_project_boxed_opaque_existential_1(&v14, v15);
      if ((*(v6 + 48))(a1, v5, v6))
      {
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41638, &qword_1D984C0B8);
        v13 = sub_1D984A3C4();

        __swift_destroy_boxed_opaque_existential_1Tm(&v14);
        return v13;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v14);
    }

    else
    {
      sub_1D981A4E8(&v14, &qword_1ECB41608, &qword_1D984C090);
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    if (qword_1EDCFE578 != -1)
    {
      swift_once();
    }

    v7 = sub_1D9849C54();
    __swift_project_value_buffer(v7, qword_1EDD005E8);
    v8 = v1;
    v9 = sub_1D9849C24();
    v10 = sub_1D984A134();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = *&v8[OBJC_IVAR____SwiftDiagnosticPatternMatching_type];

      _os_log_impl(&dword_1D97FA000, v9, v10, "there is no available matcher with type %u", v11, 8u);
      MEMORY[0x1DA738F10](v11, -1, -1);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t DiagnosticPatternMatching.lookForPatternAsync(report:callback:)(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = 0;
  sub_1D981A480(&v3[OBJC_IVAR____SwiftDiagnosticPatternMatching_patternMatcher], v20, &qword_1ECB41608, &qword_1D984C090);
  v7 = v21;
  sub_1D981A4E8(v20, &qword_1ECB41608, &qword_1D984C090);
  if (v7)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v8 = *&v3[OBJC_IVAR____SwiftDiagnosticPatternMatching_asyncQueue];
    v9 = swift_allocObject();
    v9[2] = &v24;
    v9[3] = v3;
    v9[4] = a1;
    v9[5] = &v25;
    v9[6] = a2;
    v9[7] = a3;
    a2 = swift_allocObject();
    *(a2 + 16) = sub_1D981A440;
    *(a2 + 24) = v9;
    v22 = sub_1D981A444;
    v23 = a2;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = sub_1D98170A8;
    v21 = &block_descriptor;
    v10 = _Block_copy(v20);
    v11 = v3;
    v12 = a1;

    dispatch_async_and_wait(v8, v10);
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
    }

    __break(1u);
    goto LABEL_10;
  }

  if (qword_1EDCFE578 != -1)
  {
LABEL_10:
    swift_once();
  }

  v15 = sub_1D9849C54();
  __swift_project_value_buffer(v15, qword_1EDD005E8);
  v16 = v3;
  v17 = sub_1D9849C24();
  v18 = sub_1D984A134();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = *(&v16->isa + OBJC_IVAR____SwiftDiagnosticPatternMatching_type);

    _os_log_impl(&dword_1D97FA000, v17, v18, "there is no available matcher with type %u", v19, 8u);
    MEMORY[0x1DA738F10](v19, -1, -1);
  }

  else
  {

    v17 = v16;
  }

  return (a2)(v25);
}

uint64_t sub_1D9816EB8(uint64_t *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t (*a5)(void))
{
  sub_1D981A480(a2 + OBJC_IVAR____SwiftDiagnosticPatternMatching_patternMatcher, v15, &qword_1ECB41608, &qword_1D984C090);
  v9 = v16;
  if (!v16)
  {
    sub_1D981A4E8(v15, &qword_1ECB41608, &qword_1D984C090);
LABEL_4:
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  v10 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  if (!(*(v10 + 48))(a3, v9, v10))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    goto LABEL_4;
  }

  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41638, &qword_1D984C0B8);
  v11 = sub_1D984A3C4();

  __swift_destroy_boxed_opaque_existential_1Tm(v15);
LABEL_7:
  v12 = *a1;
  *a1 = v11;

  if (*(*a1 + 16))
  {
    *a4 = 1;
  }

  else
  {
    v13 = *a4;
  }

  return a5();
}

uint64_t DiagnosticPatternMatching.lookForPatternRemote<A>(report:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v102 = a4;
  v101 = a3;
  v119 = a2;
  v100 = sub_1D9849CF4();
  v99 = *(v100 - 8);
  v7 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v103 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41640, &qword_1D984C0C0);
  v9 = *(*(v105 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v105);
  v104 = (v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v91 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v118 = (v91 - v15);
  v117 = sub_1D9849D14();
  v116 = *(v117 - 8);
  v16 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v113 = (v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = sub_1D9849D74();
  v114 = *(v115 - 8);
  v18 = *(v114 + 64);
  v19 = MEMORY[0x1EEE9AC00](v115);
  v111 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v112 = v91 - v21;
  v110 = sub_1D9849D34();
  v109 = *(v110 - 8);
  v22 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v108 = v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D984A164();
  v25 = *(v24 - 8);
  v26 = v25[8];
  MEMORY[0x1EEE9AC00](v24);
  v28 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D984A154();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v107 = sub_1D9849D54();
  v106 = *(v107 - 8);
  v31 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v33 = v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D9849CA4();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = *a1;
  if (qword_1EDCFE368 != -1)
  {
    swift_once();
  }

  if (byte_1EDCFE370 != 1)
  {
    result = sub_1D984A014();
    *a5 = result;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    return result;
  }

  v97 = v25;
  v98 = v36;
  v96 = v14;
  *&v123 = 0xD000000000000010;
  *(&v123 + 1) = 0x80000001D9853B00;
  v124 = 1;
  sub_1D9849CD4();
  sub_1D9849C94();
  v37 = sub_1D9849C84();
  v91[0] = 0;
  v95 = a5;
  v39 = v37;

  v92 = dispatch_semaphore_create(0);
  v94 = sub_1D97FCF98();
  v91[1] = "t to listener, error: ";
  sub_1D9849D44();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D97FCFE4(&qword_1EDCFE318, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41610, &qword_1D984C098);
  v93 = MEMORY[0x1E69E6328];
  sub_1D97FD02C(&qword_1EDCFE320, &qword_1ECB41610, &qword_1D984C098);
  sub_1D984A2B4();
  (v97)[13](v28, *MEMORY[0x1E69E8090], v24);
  v97 = sub_1D984A1A4();
  v40 = swift_allocBox();
  v42 = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41648, &qword_1D984C0C8);
  v94 = *(v43 - 8);
  (*(v94 + 56))(v42, 1, 1, v43);
  v44 = swift_allocObject();
  v44[2] = v40;
  v44[3] = v39;
  v105 = v39;
  v45 = v98;
  v46 = v92;
  v44[4] = v98;
  v44[5] = v46;
  aBlock[4] = sub_1D97FE76C;
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D97FE3F0;
  aBlock[3] = &block_descriptor_31;
  v47 = _Block_copy(aBlock);
  v48 = (v45 & 0x7FFFFFFFFFFFFFFFLL);
  v49 = v46;
  v98 = v40;

  sub_1D9849D44();
  *&v120 = MEMORY[0x1E69E7CC0];
  sub_1D97FCFE4(&qword_1EDCFE360, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41650, &qword_1D984C0D0);
  sub_1D97FD02C(&qword_1EDCFE328, &qword_1ECB41650, &qword_1D984C0D0);
  v50 = v108;
  v51 = v110;
  sub_1D984A2B4();
  MEMORY[0x1DA737DF0](0, v33, v50, v47);
  _Block_release(v47);
  (*(v109 + 8))(v50, v51);
  (*(v106 + 8))(v33, v107);

  v52 = v111;
  sub_1D9849D64();
  v53 = v113;
  *v113 = 10;
  v54 = v116;
  v55 = v117;
  (*(v116 + 104))(v53, *MEMORY[0x1E69E7F48], v117);
  v56 = v112;
  MEMORY[0x1DA7379E0](v52, v53);
  (*(v54 + 8))(v53, v55);
  v57 = *(v114 + 8);
  v58 = v115;
  v57(v52, v115);
  sub_1D984A1B4();
  v57(v56, v58);
  swift_beginAccess();
  v59 = v118;
  sub_1D981A480(v42, v118, &qword_1ECB41640, &qword_1D984C0C0);
  v60 = *(v94 + 48);
  if (v60(v59, 1, v43) != 1)
  {
    v62 = v97;
    sub_1D981A4E8(v59, &qword_1ECB41640, &qword_1D984C0C0);
    v63 = v96;
    sub_1D981A480(v42, v96, &qword_1ECB41640, &qword_1D984C0C0);
    if (v60(v63, 1, v43) == 1)
    {

      v64 = v95;
    }

    else
    {
      sub_1D981A474();
      v65 = v63;
      v66 = v104;
      sub_1D981A480(v65, v104, &qword_1ECB41640, &qword_1D984C0C0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v67 = *v66;
        *&v120 = 0;
        *(&v120 + 1) = 0xE000000000000000;
        sub_1D984A354();
        MEMORY[0x1DA737B20](0xD000000000000025, 0x80000001D9853BC0);
        swift_getErrorValue();
        sub_1D984A5E4();

        v123 = v120;
        v124 = 1;
        v64 = v95;
      }

      else
      {
        v118 = v49;
        v70 = v99;
        v71 = v103;
        v72 = v100;
        (*(v99 + 32))(v103, v66, v100);
        type metadata accessor for PatternMatchResult();
        swift_getWitnessTable();
        v73 = v91[0];
        sub_1D9849CE4();
        v64 = v95;
        if (v73)
        {
          (*(v70 + 8))(v71, v72);

          sub_1D981A4E8(v96, &qword_1ECB41640, &qword_1D984C0C0);

          if (qword_1EDCFE578 != -1)
          {
            swift_once();
          }

          v74 = sub_1D9849C54();
          __swift_project_value_buffer(v74, qword_1EDD005E8);
          v75 = v73;
          v76 = sub_1D9849C24();
          v77 = sub_1D984A134();

          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            *v78 = 138412290;
            v80 = v73;
            v81 = _swift_stdlib_bridgeErrorToNSError();
            *(v78 + 4) = v81;
            *v79 = v81;
            _os_log_impl(&dword_1D97FA000, v76, v77, "Failed to send message or decode reply: %@", v78, 0xCu);
            sub_1D981A4E8(v79, &qword_1ECB41628, &qword_1D984E3B0);
            MEMORY[0x1DA738F10](v79, -1, -1);
            MEMORY[0x1DA738F10](v78, -1, -1);
          }

          *&v120 = 0;
          *(&v120 + 1) = 0xE000000000000000;
          sub_1D984A354();
          MEMORY[0x1DA737B20](0xD000000000000028, 0x80000001D9853BF0);
          swift_getErrorValue();
          sub_1D984A5E4();

          v123 = v120;
          v124 = 1;
          goto LABEL_14;
        }

        v123 = v120;
        v124 = v121;
        if (qword_1EDCFE578 != -1)
        {
          swift_once();
        }

        v82 = sub_1D9849C54();
        __swift_project_value_buffer(v82, qword_1EDD005E8);
        sub_1D981A548();
        v83 = sub_1D9849C24();
        v84 = sub_1D984A134();
        sub_1D981A474();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = v70;
          v87 = swift_slowAlloc();
          *&v120 = v87;
          *v85 = 136315138;
          v88 = sub_1D9818484();
          v90 = sub_1D9819F0C(v88, v89, &v120);

          *(v85 + 4) = v90;
          _os_log_impl(&dword_1D97FA000, v83, v84, "Received response: %s", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v87);
          MEMORY[0x1DA738F10](v87, -1, -1);
          MEMORY[0x1DA738F10](v85, -1, -1);

          (*(v86 + 8))(v103, v72);
        }

        else
        {

          (*(v70 + 8))(v103, v72);
        }
      }

      v63 = v96;
    }

    sub_1D981A4E8(v63, &qword_1ECB41640, &qword_1D984C0C0);

LABEL_14:
    swift_beginAccess();
    v68 = *(&v123 + 1);
    v69 = v124;
    *v64 = v123;
    v64[1] = v68;
    *(v64 + 16) = v69;
    sub_1D981A548();
    sub_1D981A474();
    goto LABEL_15;
  }

  sub_1D981A474();
  sub_1D981A4E8(v59, &qword_1ECB41640, &qword_1D984C0C0);

  v61 = v95;
  *v95 = 0xD000000000000015;
  v61[1] = 0x80000001D9853B80;
  *(v61 + 16) = 1;
LABEL_15:
  sub_1D9849CB4();
}

uint64_t sub_1D9818484()
{
  sub_1D981A548();
  type metadata accessor for PatternMatchResult();
  return sub_1D9849E44();
}

double DiagnosticPatternMatching.lookForPanicPatternRemote(report:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D97FD0F8(a1 | 0x8000000000000000, &unk_1F550B578, sub_1D97FE778, &block_descriptor_96, &qword_1ECB416F8, &qword_1D984CC38, &qword_1ECB41700, &v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1D981856C()
{
  result = os_variant_is_darwinos();
  byte_1EDCFE370 = result ^ 1;
  return result;
}

id DiagnosticPatternMatching.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiagnosticPatternMatching.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98186C0()
{
  v1 = *v0;
  sub_1D984A6A4();
  MEMORY[0x1DA738310](v1);
  return sub_1D984A6D4();
}

uint64_t sub_1D9818708()
{
  v1 = *v0;
  sub_1D984A6A4();
  MEMORY[0x1DA738310](v1);
  return sub_1D984A6D4();
}

uint64_t sub_1D9818758(uint64_t a1)
{
  v2 = sub_1D97FEBD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9818794(uint64_t a1)
{
  v2 = sub_1D97FEBD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D98187D8(uint64_t a1)
{
  v2 = sub_1D97FEC2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9818814(uint64_t a1)
{
  v2 = sub_1D97FEC2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9818850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D984A5F4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D98188D0(uint64_t a1)
{
  v2 = sub_1D981A56C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D981890C(uint64_t a1)
{
  v2 = sub_1D981A56C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9818948(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D984A5F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D984A5F4();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D9818A4C(char a1)
{
  sub_1D984A6A4();
  MEMORY[0x1DA738310](a1 & 1);
  return sub_1D984A6D4();
}

uint64_t sub_1D9818A94(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1D9818AC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D984A5F4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_1D9818B34(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_1D9818A14(*a1, *a2);
}

uint64_t sub_1D9818B4C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1D9818A4C(*v1);
}

uint64_t sub_1D9818B60(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_1D9818A24(a1, *v2);
}

uint64_t sub_1D9818B74(uint64_t a1, void *a2)
{
  sub_1D984A6A4();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_1D9818A24(v8, *v2);
  return sub_1D984A6D4();
}

uint64_t sub_1D9818BC0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1D9818A94(*v1);
}

uint64_t sub_1D9818BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1D9818948(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1D9818C08@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1D981AFCC();
  *a2 = result;
  return result;
}

uint64_t sub_1D9818C3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9818C90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D9818CE4@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1D98187D0();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D9818D1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9818D70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D9818DC4()
{
  sub_1D984A6A4();
  MEMORY[0x1DA738310](0);
  return sub_1D984A6D4();
}

uint64_t sub_1D9818E08()
{
  sub_1D984A6A4();
  MEMORY[0x1DA738310](0);
  return sub_1D984A6D4();
}

uint64_t sub_1D9818E48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9818E9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t PatternMatchResult.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  matched = type metadata accessor for PatternMatchResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1D984A5B4();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v30 = v26 - v9;
  type metadata accessor for PatternMatchResult.SuccessCodingKeys();
  v26[2] = swift_getWitnessTable();
  v31 = sub_1D984A5B4();
  v28 = *(v31 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v27 = v26 - v11;
  v35 = v4;
  v36 = v6;
  type metadata accessor for PatternMatchResult.CodingKeys();
  swift_getWitnessTable();
  v12 = sub_1D984A5B4();
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - v14;
  v16 = v2[1];
  v37 = *v2;
  v26[1] = v16;
  v17 = *(v2 + 16);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D984A704();
  if (v17)
  {
    LOBYTE(v41) = 1;
    v19 = v30;
    v20 = v39;
    sub_1D984A504();
    v21 = v34;
    sub_1D984A584();
    (*(v33 + 8))(v19, v21);
    return (*(v38 + 8))(v15, v20);
  }

  else
  {
    LOBYTE(v41) = 0;
    v23 = v27;
    v24 = v39;
    sub_1D984A504();
    v41 = v37;
    sub_1D984A044();
    v40 = v36;
    swift_getWitnessTable();
    v25 = v31;
    sub_1D984A5A4();
    (*(v28 + 8))(v23, v25);
    return (*(v38 + 8))(v15, v24);
  }
}

uint64_t PatternMatchResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v53 = a4;
  matched = type metadata accessor for PatternMatchResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v51 = matched;
  v8 = sub_1D984A4F4();
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v42 - v10;
  v11 = type metadata accessor for PatternMatchResult.SuccessCodingKeys();
  v49 = swift_getWitnessTable();
  v46 = sub_1D984A4F4();
  v45 = *(v46 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v14 = &v42 - v13;
  v55 = a3;
  type metadata accessor for PatternMatchResult.CodingKeys();
  swift_getWitnessTable();
  v54 = sub_1D984A4F4();
  v56 = *(v54 - 8);
  v15 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v17 = a1[3];
  v16 = a1[4];
  v58 = a1;
  v18 = a1;
  v20 = &v42 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  v21 = v57;
  sub_1D984A6F4();
  if (!v21)
  {
    v43 = v11;
    v44 = v14;
    v22 = v54;
    v57 = v20;
    *&v59 = sub_1D984A4E4();
    sub_1D984A044();
    swift_getWitnessTable();
    *&v61 = sub_1D984A2A4();
    *(&v61 + 1) = v23;
    *&v62 = v24;
    *(&v62 + 1) = v25;
    sub_1D984A294();
    swift_getWitnessTable();
    sub_1D984A0E4();
    v26 = v59;
    if (v59 == 2 || (v42 = v61, v59 = v61, v60 = v62, (sub_1D984A0F4() & 1) == 0))
    {
      v29 = sub_1D984A3A4();
      swift_allocError();
      v31 = v30;
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41698, &qword_1D984D0B0) + 48);
      *v31 = type metadata accessor for PatternMatchResult();
      v33 = v57;
      sub_1D984A434();
      sub_1D984A364();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
      (*(v56 + 8))(v33, v22);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v26)
      {
        LOBYTE(v59) = 1;
        v27 = v52;
        sub_1D984A424();
        v28 = v53;
        v36 = v48;
        v39 = sub_1D984A4B4();
        v41 = v40;
        (*(v47 + 8))(v27, v36);
        (*(v56 + 8))(v57, v22);
        swift_unknownObjectRelease();
      }

      else
      {
        LOBYTE(v59) = 0;
        v34 = v44;
        sub_1D984A424();
        v35 = v56;
        sub_1D984A044();
        v63 = a2;
        swift_getWitnessTable();
        v37 = v46;
        sub_1D984A4D4();
        (*(v45 + 8))(v34, v37);
        (*(v35 + 8))(v57, v22);
        swift_unknownObjectRelease();
        v41 = 0;
        v39 = v59;
        v28 = v53;
      }

      *v28 = v39;
      *(v28 + 8) = v41;
      *(v28 + 16) = v26 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v58);
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

uint64_t sub_1D9819AC0(uint64_t a1, id *a2)
{
  result = sub_1D9849DD4();
  *a2 = 0;
  return result;
}

uint64_t sub_1D9819B38(uint64_t a1, id *a2)
{
  v3 = sub_1D9849DE4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D9819BB8@<X0>(uint64_t *a1@<X8>)
{
  sub_1D9849DF4();
  v2 = sub_1D9849DC4();

  *a1 = v2;
  return result;
}

uint64_t sub_1D9819BFC()
{
  v1 = *v0;
  v2 = sub_1D9849DF4();
  v3 = MEMORY[0x1DA737BA0](v2);

  return v3;
}

uint64_t sub_1D9819C38()
{
  v1 = *v0;
  sub_1D9849DF4();
  sub_1D9849E84();
}

uint64_t sub_1D9819C8C()
{
  v1 = *v0;
  sub_1D9849DF4();
  sub_1D984A6A4();
  sub_1D9849E84();
  v2 = sub_1D984A6D4();

  return v2;
}

_DWORD *sub_1D9819D00@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1D9819D1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1D9849DF4();
  v6 = v5;
  if (v4 == sub_1D9849DF4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D984A5F4();
  }

  return v9 & 1;
}

uint64_t sub_1D9819DA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D9849DC4();

  *a2 = v5;
  return result;
}

uint64_t sub_1D9819DEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1D9849DF4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1D9819E18(uint64_t a1)
{
  v2 = sub_1D97FCFE4(&qword_1ECB416E8, type metadata accessor for URLResourceKey);
  v3 = sub_1D97FCFE4(&qword_1ECB416F0, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1D9819F0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D9819FD8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D981B108(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1D9819FD8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D981A0E4(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_1D984A3B4();
    a6 = v11;
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

uint64_t sub_1D981A0E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D981A130(a1, a2);
  sub_1D981A260(&unk_1F550A590);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1D981A130(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D983F8E8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D984A3B4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D9849EE4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D983F8E8(v10, 0);
        result = sub_1D984A344();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D981A260(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1D981A34C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1D981A34C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41710, &qword_1D984FCE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_1D981A444()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D981A480(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D981A4E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D981A56C()
{
  result = qword_1ECB41670;
  if (!qword_1ECB41670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41670);
  }

  return result;
}

uint64_t sub_1D981A654()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D981A6BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D981A704(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D981A7BC()
{
  result = qword_1ECB416B8;
  if (!qword_1ECB416B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB416B8);
  }

  return result;
}

unint64_t sub_1D981A814()
{
  result = qword_1ECB416C0;
  if (!qword_1ECB416C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB416C0);
  }

  return result;
}

unint64_t sub_1D981A86C()
{
  result = qword_1ECB416C8;
  if (!qword_1ECB416C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB416C8);
  }

  return result;
}

unint64_t sub_1D981AA98()
{
  result = qword_1EDCFE728;
  if (!qword_1EDCFE728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE728);
  }

  return result;
}

unint64_t sub_1D981AAF0()
{
  result = qword_1EDCFE730;
  if (!qword_1EDCFE730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE730);
  }

  return result;
}

unint64_t sub_1D981AB48()
{
  result = qword_1EDCFE718;
  if (!qword_1EDCFE718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE718);
  }

  return result;
}

unint64_t sub_1D981ABA0()
{
  result = qword_1EDCFE720;
  if (!qword_1EDCFE720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE720);
  }

  return result;
}

unint64_t sub_1D981ABF8()
{
  result = qword_1EDCFE740;
  if (!qword_1EDCFE740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE740);
  }

  return result;
}

unint64_t sub_1D981AC50()
{
  result = qword_1EDCFE748;
  if (!qword_1EDCFE748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE748);
  }

  return result;
}

uint64_t sub_1D981ACA4(void *a1, uint64_t isEscapingClosureAtFileLocation, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v24 = 0;
  sub_1D981A480(isEscapingClosureAtFileLocation + OBJC_IVAR____SwiftDiagnosticPatternMatching_patternMatcher, v19, &qword_1ECB41608, &qword_1D984C090);
  v7 = v20;
  _Block_copy(a3);
  sub_1D981A4E8(v19, &qword_1ECB41608, &qword_1D984C090);
  if (v7)
  {
    v23 = MEMORY[0x1E69E7CC0];
    v8 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____SwiftDiagnosticPatternMatching_asyncQueue);
    a3 = swift_allocObject();
    a3[2] = &v23;
    a3[3] = isEscapingClosureAtFileLocation;
    a3[4] = a1;
    a3[5] = &v24;
    a3[6] = sub_1D981AFD4;
    a3[7] = v6;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1D981B260;
    *(v9 + 24) = a3;
    v21 = sub_1D981B268;
    v22 = v9;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1D98170A8;
    v20 = &block_descriptor_89;
    v10 = _Block_copy(v19);
    v11 = isEscapingClosureAtFileLocation;
    v12 = a1;

    dispatch_async_and_wait(v8, v10);
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
    }

    __break(1u);
    goto LABEL_10;
  }

  if (qword_1EDCFE578 != -1)
  {
LABEL_10:
    swift_once();
  }

  v14 = sub_1D9849C54();
  __swift_project_value_buffer(v14, qword_1EDD005E8);
  v15 = isEscapingClosureAtFileLocation;
  v16 = sub_1D9849C24();
  v17 = sub_1D984A134();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = *(&v15->isa + OBJC_IVAR____SwiftDiagnosticPatternMatching_type);

    _os_log_impl(&dword_1D97FA000, v16, v17, "there is no available matcher with type %u", v18, 8u);
    MEMORY[0x1DA738F10](v18, -1, -1);
  }

  else
  {

    v16 = v15;
  }

  (a3[2])(a3, v24);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_27Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D981B098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41640, &qword_1D984C0C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D981B108(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D981B1A4(uint64_t a1, int a2)
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

uint64_t sub_1D981B1C4(uint64_t result, int a2, int a3)
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

void sub_1D981B200(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1D981B294(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41860, &qword_1D984D348);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D982076C();
  sub_1D984A704();
  v16 = 0;
  sub_1D984A584();
  if (!v4)
  {
    v15 = 1;
    sub_1D984A524();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D981B424(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41868, &qword_1D984D350);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D98207C0();
  sub_1D984A704();
  v17 = 0;
  sub_1D984A584();
  if (v4)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v16 = 1;
  sub_1D984A524();
  v15 = 2;
  sub_1D984A524();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D981B5D8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB417A8, &qword_1D984D090);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D981F728();
  sub_1D984A704();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v16) = 0;
  sub_1D984A514();
  if (!v2)
  {
    v16 = *(v3 + 1);
    v17 = *(v3 + 32);
    v15 = 1;
    sub_1D981F88C();
    sub_1D984A534();
    *&v16 = v3[5];
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41790, &qword_1D984D088);
    sub_1D981F8E0(&qword_1ECB417B8, sub_1D981F958);
    sub_1D984A534();
    v16 = *(v3 + 3);
    v17 = *(v3 + 64);
    v15 = 3;
    sub_1D984A534();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D981B828()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_1D981B860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D984A5F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D9853E80 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D984A5F4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D981B944(uint64_t a1)
{
  v2 = sub_1D982076C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D981B980(uint64_t a1)
{
  v2 = sub_1D982076C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D981B9BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D981EC90(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1D981BA0C()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x4F65726975716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1D981BA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D981EE68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D981BA98(uint64_t a1)
{
  v2 = sub_1D98207C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D981BAD4(uint64_t a1)
{
  v2 = sub_1D98207C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D981BB10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D981EF90(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1D981BB68()
{
  v1 = 0x656D614E636F7270;
  v2 = 0x614E6C6F626D7973;
  if (*v0 != 2)
  {
    v2 = 0x6D497972616E6962;
  }

  if (*v0)
  {
    v1 = 0x614E646165726874;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D981BBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D981F198(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D981BC24(uint64_t a1)
{
  v2 = sub_1D981F728();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D981BC60(uint64_t a1)
{
  v2 = sub_1D981F728();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D981BC9C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D981F310(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1D981BD20()
{
  sub_1D984A6A4();
  sub_1D984A6C4();
  return sub_1D984A6D4();
}

uint64_t sub_1D981BD8C()
{
  sub_1D984A6A4();
  sub_1D984A6C4();
  return sub_1D984A6D4();
}

uint64_t CrashMatchedPattern.uuid.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CrashMatchedPattern.uuid.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CrashMatchedPattern.actions.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1D981BF78()
{
  if (*v0)
  {
    result = 0x736E6F69746361;
  }

  else
  {
    result = 1684632949;
  }

  *v0;
  return result;
}

uint64_t sub_1D981BFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D984A5F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D984A5F4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D981C088(uint64_t a1)
{
  v2 = sub_1D981C2D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D981C0C4(uint64_t a1)
{
  v2 = sub_1D981C2D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CrashMatchedPattern.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41720, &qword_1D984CCB0);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D981C2D8();
  sub_1D984A704();
  v17 = 0;
  sub_1D984A584();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41730, &qword_1D984CCB8);
    sub_1D981C5D4(&qword_1ECB41738, sub_1D981C32C);
    sub_1D984A534();
  }

  return (*(v14 + 8))(v7, v4);
}

unint64_t sub_1D981C2D8()
{
  result = qword_1ECB41728;
  if (!qword_1ECB41728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41728);
  }

  return result;
}

unint64_t sub_1D981C32C()
{
  result = qword_1ECB41740;
  if (!qword_1ECB41740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41740);
  }

  return result;
}

uint64_t CrashMatchedPattern.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41748, &unk_1D984CCC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D981C2D8();
  sub_1D984A6F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = 0;
  v11 = sub_1D984A4B4();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41730, &qword_1D984CCB8);
  v18 = 1;
  sub_1D981C5D4(&qword_1ECB41750, sub_1D981C64C);
  sub_1D984A464();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D981C5D4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41730, &qword_1D984CCB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D981C64C()
{
  result = qword_1ECB41758;
  if (!qword_1ECB41758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41758);
  }

  return result;
}

uint64_t sub_1D981C6A0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D981C700(void *a1)
{
  v2 = *(v1 + 4);
  v3 = *v1;
  v93 = v1[1];
  v94 = v3;
  v92 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {
    if (qword_1EDCFE578 != -1)
    {
      goto LABEL_62;
    }

    goto LABEL_50;
  }

  type metadata accessor for CrashPatternInfo();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    v78 = 1;
    goto LABEL_57;
  }

  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41800, &qword_1D984D0C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D984CC70;
  v9 = swift_allocObject();
  v10 = v1[1];
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v1 + 4);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D981FBC0;
  *(v11 + 24) = v9;
  *(inited + 32) = sub_1D981FBC8;
  *(inited + 40) = v11;
  v86 = inited + 40;
  v12 = swift_allocObject();
  v13 = v1[1];
  *(v12 + 16) = *v1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(v1 + 4);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1D981FBCC;
  *(v14 + 24) = v12;
  *(inited + 48) = sub_1D9820A4C;
  *(inited + 56) = v14;
  v15 = swift_allocObject();
  v16 = v1[1];
  *(v15 + 16) = *v1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v1 + 4);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D981FBD0;
  *(v17 + 24) = v15;
  *(inited + 64) = sub_1D9820A4C;
  *(inited + 72) = v17;
  v18 = swift_allocObject();
  v19 = v1[1];
  *(v18 + 16) = *v1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(v1 + 4);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1D981FC1C;
  *(v20 + 24) = v18;
  *(inited + 80) = sub_1D9820A4C;
  *(inited + 88) = v20;
  sub_1D981A480(&v92, v90, &qword_1ECB41808, &qword_1D984D0D0);
  v85 = v2 + 32;
  sub_1D981FC20(&v94, v90);
  sub_1D981FC20(&v93, v90);
  sub_1D981A480(&v92, v90, &qword_1ECB41808, &qword_1D984D0D0);
  sub_1D981FC20(&v94, v90);
  sub_1D981FC20(&v93, v90);
  sub_1D981A480(&v92, v90, &qword_1ECB41808, &qword_1D984D0D0);
  sub_1D981FC20(&v94, v90);
  sub_1D981FC20(&v93, v90);
  sub_1D981A480(&v92, v90, &qword_1ECB41808, &qword_1D984D0D0);
  sub_1D981FC20(&v94, v90);
  sub_1D981FC20(&v93, v90);
  sub_1D981A480(&v92, v90, &qword_1ECB41808, &qword_1D984D0D0);
  v81 = a1;
  v82 = 0;
  v21 = 0;
  v83 = MEMORY[0x1E69E7CC0];
  v84 = v4;
LABEL_4:
  while (v21 < v4)
  {
    v22 = (v85 + (v21 << 7));
    v23 = v22[4];
    v24 = v22[5];
    v25 = v22[7];
    v101 = v22[6];
    v26 = *v22;
    v27 = v22[1];
    v28 = v22[3];
    v97 = v22[2];
    v98 = v28;
    v95 = v26;
    v96 = v27;
    v102 = v25;
    v99 = v23;
    v100 = v24;
    v29 = v101;
    v30 = *(v22 + 24);
    v31 = *(v22 + 40);
    v32 = *(v22 + 56);
    v33 = *(v22 + 72);
    v107 = *(v22 + 88);
    v105 = v32;
    v106 = v33;
    v103 = v30;
    v104 = v31;
    v34 = __OFADD__(v21, 1);
    v35 = v21 + 1;
    if (v34)
    {
      goto LABEL_61;
    }

    v87 = v35;
    sub_1D981A480(&v95, v90, &qword_1ECB41810, &qword_1D984D0D8);
    v36 = 0;
    v37 = 0;
LABEL_7:
    v38 = 4;
    if (v36 > 4)
    {
      v38 = v36;
    }

    v39 = v38 + 1;
    v40 = (v86 + 16 * v36);
    while (v36 != 4)
    {
      if (v39 == ++v36)
      {
        __break(1u);
LABEL_59:
        sub_1D981A4E8(&v92, &qword_1ECB41808, &qword_1D984D0D0);

        return v83;
      }

      v41 = v40 + 2;
      v43 = *(v40 - 1);
      v42 = *v40;
      aBlock[0] = v7;
      v90[2] = v105;
      v90[3] = v106;
      v91 = v107;
      v90[0] = v103;
      v90[1] = v104;

      v43(&v89, aBlock, v90);

      v40 = v41;
      if (v89 != 2)
      {
        v37 = 1;
        if (v89)
        {
          goto LABEL_7;
        }

LABEL_16:
        sub_1D981A4E8(&v95, &qword_1ECB41810, &qword_1D984D0D8);
        v4 = v84;
        v21 = v87;
        if (v87 != v84)
        {
          goto LABEL_4;
        }

        sub_1D981A4E8(&v92, &qword_1ECB41808, &qword_1D984D0D0);

        if (v82)
        {
        }

        return v83;
      }
    }

    if ((v37 & 1) == 0)
    {
      goto LABEL_16;
    }

    if (qword_1ECB415A8 != -1)
    {
      swift_once();
    }

    v44 = sub_1D9849C54();
    __swift_project_value_buffer(v44, qword_1ECB47600);
    sub_1D981A480(&v95, v90, &qword_1ECB41810, &qword_1D984D0D8);
    v45 = sub_1D9849C24();
    v46 = sub_1D984A134();
    sub_1D981A4E8(&v95, &qword_1ECB41810, &qword_1D984D0D8);
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v90[0] = v48;
      *v47 = 136315138;

      v49 = v29;
      v50 = v45;
      v51 = sub_1D9819F0C(v29, *(&v29 + 1), v90);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_1D97FA000, v50, v46, "Matched the pattern definition with UUID %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x1DA738F10](v48, -1, -1);
      MEMORY[0x1DA738F10](v47, -1, -1);

      v52 = v95;
      if (v95)
      {
        goto LABEL_22;
      }
    }

    else
    {

      v49 = v29;
      v52 = v95;
      if (v95)
      {
LABEL_22:
        v53 = *(v52 + 16);
        if (v53)
        {
          v54 = (v52 + 32);

          v55 = MEMORY[0x1E69E7CC0];
          do
          {
            v56 = *v54++;
            if (v56 == 1)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v55 = sub_1D98324D0(0, *(v55 + 2) + 1, 1, v55);
              }

              v58 = *(v55 + 2);
              v57 = *(v55 + 3);
              v59 = v58 + 1;
              if (v58 >= v57 >> 1)
              {
                v55 = sub_1D98324D0((v57 > 1), v58 + 1, 1, v55);
              }

              *(v55 + 2) = v59;
            }

            --v53;
          }

          while (v53);
        }

        else
        {

          v55 = MEMORY[0x1E69E7CC0];
        }

        goto LABEL_34;
      }
    }

    v55 = 0;
LABEL_34:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v83 = sub_1D98324B4(0, *(v83 + 2) + 1, 1, v83);
    }

    v61 = *(v83 + 2);
    v60 = *(v83 + 3);
    if (v61 >= v60 >> 1)
    {
      v83 = sub_1D98324B4((v60 > 1), v61 + 1, 1, v83);
    }

    *(v83 + 2) = v61 + 1;
    v62 = &v83[24 * v61];
    *(v62 + 4) = v49;
    *(v62 + 5) = *(&v29 + 1);
    *(v62 + 6) = v55;
    if (v29)
    {
      v63 = v52;
    }

    else
    {
      v63 = &unk_1F550A5E0;
    }

    if (v82)
    {
    }

    v64 = v63[2];
    if (v64)
    {

      v65 = 32;
      do
      {
        v66 = *(v63 + v65);
        v67 = sub_1D9849DC4();
        v68 = swift_allocObject();
        v69 = v100;
        *(v68 + 80) = v99;
        *(v68 + 96) = v69;
        v70 = v102;
        *(v68 + 112) = v101;
        *(v68 + 128) = v70;
        v71 = v96;
        *(v68 + 16) = v95;
        *(v68 + 32) = v71;
        v72 = v98;
        *(v68 + 48) = v97;
        *(v68 + 64) = v72;
        *(v68 + 144) = v66;
        aBlock[4] = sub_1D981FC7C;
        aBlock[5] = v68;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D98220F4;
        aBlock[3] = &block_descriptor_0;
        v73 = _Block_copy(aBlock);
        sub_1D981A480(&v95, v90, &qword_1ECB41810, &qword_1D984D0D8);

        AnalyticsSendEventLazy();
        _Block_release(v73);

        v65 += 4;
        --v64;
      }

      while (v64);
    }

    sub_1D981A4E8(&v95, &qword_1ECB41810, &qword_1D984D0D8);
    v82 = 1;
    v4 = v84;
    v21 = v87;
    if (v87 == v84)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  swift_once();
LABEL_50:
  v74 = sub_1D9849C54();
  __swift_project_value_buffer(v74, qword_1EDD005E8);
  v75 = sub_1D9849C24();
  v76 = sub_1D984A134();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_1D97FA000, v75, v76, "There are no crash payloads available", v77, 2u);
    MEMORY[0x1DA738F10](v77, -1, -1);
  }

  v78 = 0;
LABEL_57:
  sub_1D981FB6C();
  swift_allocError();
  *v80 = v78;
  return swift_willThrow();
}

uint64_t sub_1D981D164(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (((*(v4 + 24))(v5, v4) & 1) == 0)
  {
    if (qword_1EDCFE578 == -1)
    {
LABEL_52:
      v82 = sub_1D9849C54();
      __swift_project_value_buffer(v82, qword_1EDD005E8);
      v83 = sub_1D9849C24();
      v84 = sub_1D984A134();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_1D97FA000, v83, v84, "There are no crash payloads available", v85, 2u);
        MEMORY[0x1DA738F10](v85, -1, -1);
      }

      v86 = 0;
      goto LABEL_56;
    }

LABEL_65:
    swift_once();
    goto LABEL_52;
  }

  type metadata accessor for CrashPatternInfo();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    v86 = 1;
LABEL_56:
    sub_1D981FB6C();
    swift_allocError();
    *v87 = v86;
    return swift_willThrow();
  }

  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41800, &qword_1D984D0C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D984CC70;
  v9 = sub_1D981DABC(v2, v5, v4);
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  *(inited + 32) = sub_1D9820A4C;
  *(inited + 40) = v12;
  v13 = sub_1D981DC58(v2, v5, v4);
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  *(inited + 48) = sub_1D9820A4C;
  *(inited + 56) = v16;
  v17 = sub_1D981DD90(v2, v5, v4);
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;
  *(inited + 64) = sub_1D9820A4C;
  *(inited + 72) = v20;
  v21 = sub_1D981DEC8(v2, v5, v4);
  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v23;
  v25 = inited;
  *(inited + 80) = sub_1D9820A4C;
  *(inited + 88) = v24;
  v26 = *(v4 + 16);
  v27 = a1;
  v28 = v26(v5, v4);
  v29 = v28;
  v96 = *(v28 + 16);
  if (!v96)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v90 = 0;
  v30 = 0;
  v95 = v28 + 32;
  v97 = v25 + 40;
  v89 = MEMORY[0x1E69E7CC0];
  v92 = v28;
  v91 = v27;
  while (1)
  {
LABEL_5:
    if (v30 >= *(v29 + 16))
    {
      __break(1u);
      goto LABEL_65;
    }

    v31 = v95 + (v30 << 7);
    v32 = *(v31 + 64);
    v33 = *(v31 + 80);
    v34 = *(v31 + 112);
    v108 = *(v31 + 96);
    v35 = *v31;
    v36 = *(v31 + 16);
    v37 = *(v31 + 48);
    v104 = *(v31 + 32);
    v105 = v37;
    v102 = v35;
    v103 = v36;
    v109 = v34;
    v106 = v32;
    v107 = v33;
    v38 = *(&v108 + 1);
    v93 = v108;
    v39 = *(v31 + 24);
    v40 = *(v31 + 40);
    v41 = *(v31 + 56);
    v42 = *(v31 + 72);
    v114 = *(v31 + 88);
    v112 = v41;
    v113 = v42;
    v110 = v39;
    v111 = v40;
    ++v30;
    sub_1D981A480(&v102, v100, &qword_1ECB41810, &qword_1D984D0D8);
    v43 = 0;
    v44 = 0;
LABEL_7:
    v45 = 4;
    if (v43 > 4)
    {
      v45 = v43;
    }

    v46 = v45 + 1;
    v47 = (v97 + 16 * v43);
LABEL_10:
    if (v43 != 4)
    {
      break;
    }

    if ((v44 & 1) == 0)
    {
      goto LABEL_16;
    }

    if (qword_1ECB415A8 != -1)
    {
      swift_once();
    }

    v51 = sub_1D9849C54();
    __swift_project_value_buffer(v51, qword_1ECB47600);
    sub_1D981A480(&v102, v100, &qword_1ECB41810, &qword_1D984D0D8);
    v52 = sub_1D9849C24();
    v53 = sub_1D984A134();
    sub_1D981A4E8(&v102, &qword_1ECB41810, &qword_1D984D0D8);
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v100[0] = v55;
      *v54 = 136315138;

      v56 = sub_1D9819F0C(v93, v38, v100);

      *(v54 + 4) = v56;
      _os_log_impl(&dword_1D97FA000, v52, v53, "Matched the pattern definition with UUID %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x1DA738F10](v55, -1, -1);
      MEMORY[0x1DA738F10](v54, -1, -1);
    }

    v57 = v90;
    v58 = v102;
    if (v102)
    {
      v59 = *(v102 + 16);
      if (v59)
      {
        v60 = v102;
        v61 = (v102 + 32);

        v62 = MEMORY[0x1E69E7CC0];
        do
        {
          v63 = *v61++;
          if (v63 == 1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v62 = sub_1D98324D0(0, *(v62 + 2) + 1, 1, v62);
            }

            v65 = *(v62 + 2);
            v64 = *(v62 + 3);
            v66 = v65 + 1;
            if (v65 >= v64 >> 1)
            {
              v62 = sub_1D98324D0((v64 > 1), v65 + 1, 1, v62);
            }

            *(v62 + 2) = v66;
          }

          --v59;
        }

        while (v59);
      }

      else
      {
        v60 = v102;

        v62 = MEMORY[0x1E69E7CC0];
      }

      v58 = v60;
      v57 = v90;
    }

    else
    {

      v62 = 0;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v67 = v89;
    }

    else
    {
      v67 = sub_1D98324B4(0, *(v89 + 2) + 1, 1, v89);
    }

    v69 = *(v67 + 2);
    v68 = *(v67 + 3);
    if (v69 >= v68 >> 1)
    {
      v67 = sub_1D98324B4((v68 > 1), v69 + 1, 1, v67);
    }

    *(v67 + 2) = v69 + 1;
    v89 = v67;
    v70 = &v67[24 * v69];
    *(v70 + 4) = v93;
    *(v70 + 5) = v38;
    *(v70 + 6) = v62;
    if (v58)
    {
      v71 = v58;
    }

    else
    {
      v71 = &unk_1F550A5B8;
    }

    v94 = v71;
    if (v57)
    {
    }

    v72 = v71[2];
    if (v72)
    {

      v73 = 32;
      do
      {
        v74 = *(v71 + v73);
        v75 = sub_1D9849DC4();
        v76 = swift_allocObject();
        v77 = v107;
        *(v76 + 80) = v106;
        *(v76 + 96) = v77;
        v78 = v109;
        *(v76 + 112) = v108;
        *(v76 + 128) = v78;
        v79 = v103;
        *(v76 + 16) = v102;
        *(v76 + 32) = v79;
        v80 = v105;
        *(v76 + 48) = v104;
        *(v76 + 64) = v80;
        *(v76 + 144) = v74;
        aBlock[4] = sub_1D9820A6C;
        aBlock[5] = v76;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D98220F4;
        aBlock[3] = &block_descriptor_70;
        v81 = _Block_copy(aBlock);
        sub_1D981A480(&v102, v100, &qword_1ECB41810, &qword_1D984D0D8);

        AnalyticsSendEventLazy();
        _Block_release(v81);

        v71 = v94;
        v73 += 4;
        --v72;
      }

      while (v72);
    }

    sub_1D981A4E8(&v102, &qword_1ECB41810, &qword_1D984D0D8);
    v90 = 1;
    v29 = v92;
    v38 = v91;
    if (v30 == v96)
    {
      goto LABEL_63;
    }
  }

  if (v46 == ++v43)
  {
    __break(1u);
LABEL_63:

    return v89;
  }

  v48 = v47 + 2;
  v50 = *(v47 - 1);
  v49 = *v47;
  aBlock[0] = v7;
  v100[2] = v112;
  v100[3] = v113;
  v101 = v114;
  v100[0] = v110;
  v100[1] = v111;

  v50(&v99, aBlock, v100);

  v47 = v48;
  if (v99 == 2)
  {
    goto LABEL_10;
  }

  v44 = 1;
  if (v99)
  {
    goto LABEL_7;
  }

LABEL_16:
  sub_1D981A4E8(&v102, &qword_1ECB41810, &qword_1D984D0D8);
  v29 = v92;
  if (v30 != v96)
  {
    goto LABEL_5;
  }

  if (v90)
  {
  }

  return v89;
}

uint64_t (*sub_1D981DABC(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, void *a2)
{
  v6 = type metadata accessor for CrashMatcher();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_1D981FE44;
}

uint64_t sub_1D981DBF4(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    return 2;
  }

  if (*(a1 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_procName) == *a2 && v2 == *(a1 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_procName + 8))
  {
    return 1;
  }

  else
  {
    return sub_1D984A5F4() & 1;
  }
}

uint64_t (*sub_1D981DC58(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t)
{
  v6 = type metadata accessor for CrashMatcher();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_1D981FBCC;
}

uint64_t (*sub_1D981DD90(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t)
{
  v6 = type metadata accessor for CrashMatcher();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_1D981FBD0;
}

uint64_t (*sub_1D981DEC8(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t result, uint64_t)
{
  v6 = type metadata accessor for CrashMatcher();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_1D981FC1C;
}

unint64_t sub_1D981E000(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41818, &unk_1D984D0E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D984CC80;
  *(inited + 32) = 0x556E726574746170;
  *(inited + 40) = 0xEB00000000444955;
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  *(inited + 48) = sub_1D9849DC4();
  *(inited + 56) = 0x6E6F69746361;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = sub_1D984A6E4();
  *(inited + 80) = 0x657079745F677562;
  *(inited + 88) = 0xE800000000000000;
  sub_1D97FBFCC();
  *(inited + 96) = sub_1D984A1E4();
  v5 = sub_1D98336F8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41820, &qword_1D984E090);
  swift_arrayDestroy();
  return v5;
}

uint64_t CrashMatcherOOP.lookForPattern(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v7 = *(v2 + 2);
  v8 = *(v2 + 24);
  result = sub_1D981C700(a1);
  v5 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = result;
  }

  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

unint64_t sub_1D981E2D8()
{
  result = qword_1EDCFE408;
  if (!qword_1EDCFE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE408);
  }

  return result;
}

uint64_t sub_1D981E33C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D981E384(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D981E3E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D981E430(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D981E49C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D981E4F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1D981E584()
{
  result = qword_1ECB41760;
  if (!qword_1ECB41760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41760);
  }

  return result;
}

unint64_t sub_1D981E5DC()
{
  result = qword_1ECB41768;
  if (!qword_1ECB41768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41768);
  }

  return result;
}

unint64_t sub_1D981E634()
{
  result = qword_1ECB41770;
  if (!qword_1ECB41770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41770);
  }

  return result;
}

uint64_t sub_1D981E688()
{
  v1 = v0;
  v3 = *v0;
  v2 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v6 = sub_1D9801420(*v0, v2, v5, v4, &qword_1ECB417D8, &unk_1D984D0A0, sub_1D981FA00);
  if (v6)
  {
    v7 = v6;
    if (qword_1EDCFE578 != -1)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v39 = v1;
      v8 = sub_1D9849C54();
      __swift_project_value_buffer(v8, qword_1EDD005E8);

      v9 = sub_1D9849C24();
      v10 = sub_1D984A124();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = v5;
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v48 = v13;
        *v12 = 136315906;
        *(v12 + 4) = sub_1D9819F0C(v3, v2, &v48);
        v1 = 2080;
        *(v12 + 12) = 2080;
        *(v12 + 14) = sub_1D9819F0C(v11, v4, &v48);
        *(v12 + 22) = 2080;
        *(v12 + 24) = sub_1D9819F0C(0xD000000000000016, 0x80000001D9853E10, &v48);
        *(v12 + 32) = 2048;
        *(v12 + 34) = *(v7 + 16);

        _os_log_impl(&dword_1D97FA000, v9, v10, "Successfully parsed payload for %s in namespace %s as type %s. Count = %ld", v12, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1DA738F10](v13, -1, -1);
        MEMORY[0x1DA738F10](v12, -1, -1);
      }

      else
      {
      }

      v3 = v7;
      v23 = *(v7 + 16);
      if (!v23)
      {
        break;
      }

      v7 = 0;
      v24 = (v3 + 32);
      v4 = &qword_1ECB417D0;
      v5 = &qword_1D984D098;
      v40 = v23;
      v41 = v3;
      while (v7 < *(v3 + 16))
      {
        v26 = v24[3];
        v25 = v24[4];
        v27 = v24[2];
        v49 = v24[1];
        v48 = *v24;
        v50 = v27;
        v51 = v26;
        v52 = v25;
        v44 = v26;
        v45 = v49;
        v42 = v27;
        v43 = v48;
        v2 = *(&v25 + 1);
        v28 = v25;
        sub_1D981A480(&v48, v47, &qword_1ECB417D0, v5);
        if (v45)
        {
          v48 = v43;
          v49 = v45;
          v50 = v42;
          v51 = v44;
          v52 = __PAIR128__(v2, v28);
          sub_1D981A480(&v48, v47, &qword_1ECB417D0, v5);
          v1 = &v48;
          v29 = sub_1D9849C24();
          v30 = v5;
          v31 = sub_1D984A114();
          if (os_log_type_enabled(v29, v31))
          {
            v32 = swift_slowAlloc();
            v2 = swift_slowAlloc();
            v46 = v2;
            *v32 = 134218242;
            *(v32 + 4) = v7;
            *(v32 + 12) = 2080;
            v47[2] = v50;
            v47[3] = v51;
            v47[4] = v52;
            v47[0] = v48;
            v47[1] = v49;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB417D0, v30);
            v33 = sub_1D9849E44();
            v1 = sub_1D9819F0C(v33, v34, &v46);

            *(v32 + 14) = v1;
            _os_log_impl(&dword_1D97FA000, v29, v31, "Payload %ld: %s", v32, 0x16u);
            __swift_destroy_boxed_opaque_existential_1Tm(v2);
            MEMORY[0x1DA738F10](v2, -1, -1);
            v35 = v32;
            v23 = v40;
            v3 = v41;
            MEMORY[0x1DA738F10](v35, -1, -1);
          }

          else
          {
            sub_1D981A4E8(&v48, &qword_1ECB417D0, v30);
          }

          sub_1D981A4E8(&v48, &qword_1ECB417D0, v30);

          v5 = v30;
          ++v7;
          v24 += 5;
          if (v23 != v7)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      __break(1u);
LABEL_22:
      swift_once();
    }

LABEL_18:
    v36 = *(v39 + 32);

    *(v39 + 32) = v3;
  }

  else
  {
    if (qword_1EDCFE578 != -1)
    {
      swift_once();
    }

    v14 = sub_1D9849C54();
    __swift_project_value_buffer(v14, qword_1EDD005E8);

    v15 = sub_1D9849C24();
    v16 = sub_1D984A124();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v48 = v18;
      *v17 = 136315650;
      v19 = sub_1D9819F0C(v3, v2, &v48);
      v20 = v1;
      v21 = v19;

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v22 = sub_1D9819F0C(v5, v4, &v48);

      *(v17 + 14) = v22;
      v1 = v20;
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_1D9819F0C(0xD000000000000016, 0x80000001D9853E10, &v48);
      _os_log_impl(&dword_1D97FA000, v15, v16, "Unable to parse payload for %s in namespace %s as type %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA738F10](v18, -1, -1);
      MEMORY[0x1DA738F10](v17, -1, -1);
    }

    else
    {
    }

    v38 = *(v1 + 32);

    *(v1 + 32) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D981EC90(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41840, &qword_1D984D338);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D982076C();
  sub_1D984A6F4();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_1D984A4B4();
    v10[14] = 1;
    sub_1D984A454();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t sub_1D981EE68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D984A5F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D9853E80 == a2 || (sub_1D984A5F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4F65726975716572 && a2 == 0xEE0064657474696DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D984A5F4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D981EF90(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41850, &qword_1D984D340);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D98207C0();
  sub_1D984A6F4();
  if (!v1)
  {
    v13 = 0;
    v8 = sub_1D984A4B4();
    v12 = 1;
    sub_1D984A454();
    v11 = 2;
    sub_1D984A454();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t sub_1D981F198(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E636F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D984A5F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E646165726874 && a2 == 0xEA0000000000656DLL || (sub_1D984A5F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEB0000000073656DLL || (sub_1D984A5F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D497972616E6962 && a2 == 0xEF656D614E656761)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D984A5F4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D981F310@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41778, &qword_1D984D080);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D981F728();
  sub_1D984A6F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v30) = 0;
  *&v24 = sub_1D984A444();
  *(&v24 + 1) = v11;
  LOBYTE(v25) = 1;
  sub_1D981F77C();
  sub_1D984A464();
  v23 = v30;
  v39 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41790, &qword_1D984D088);
  LOBYTE(v25) = 2;
  sub_1D981F8E0(&qword_1ECB41798, sub_1D981F7D0);
  sub_1D984A464();
  v22 = v30;
  v40 = 3;
  sub_1D984A464();
  (*(v6 + 8))(v9, v5);
  v20 = *(&v37 + 1);
  v21 = v37;
  HIDWORD(v19) = v38;
  v12 = v24;
  v25 = v24;
  v13 = v23;
  v26 = v23;
  v14 = v39;
  LOBYTE(v27) = v39;
  v15 = v22;
  *(&v27 + 1) = v22;
  v28 = v37;
  v29 = v38;
  sub_1D981F824(&v25, &v30);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v30 = v12;
  v31 = v13;
  v32 = v14;
  v33 = v15;
  v34 = v21;
  v35 = v20;
  v36 = BYTE4(v19);
  result = sub_1D981F85C(&v30);
  v17 = v28;
  *(a2 + 32) = v27;
  *(a2 + 48) = v17;
  *(a2 + 64) = v29;
  v18 = v26;
  *a2 = v25;
  *(a2 + 16) = v18;
  return result;
}

unint64_t sub_1D981F728()
{
  result = qword_1ECB41780;
  if (!qword_1ECB41780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41780);
  }

  return result;
}

unint64_t sub_1D981F77C()
{
  result = qword_1ECB41788;
  if (!qword_1ECB41788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41788);
  }

  return result;
}

unint64_t sub_1D981F7D0()
{
  result = qword_1ECB417A0;
  if (!qword_1ECB417A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB417A0);
  }

  return result;
}

unint64_t sub_1D981F88C()
{
  result = qword_1ECB417B0;
  if (!qword_1ECB417B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB417B0);
  }

  return result;
}

uint64_t sub_1D981F8E0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41790, &qword_1D984D088);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D981F958()
{
  result = qword_1ECB417C0;
  if (!qword_1ECB417C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB417C0);
  }

  return result;
}

unint64_t sub_1D981F9AC()
{
  result = qword_1ECB417C8;
  if (!qword_1ECB417C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB417C8);
  }

  return result;
}

unint64_t sub_1D981FA00()
{
  result = qword_1ECB417E0;
  if (!qword_1ECB417E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB417D8, &unk_1D984D0A0);
    sub_1D981FFB0(&qword_1ECB417E8, &qword_1ECB417D0, &qword_1D984D098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB417E0);
  }

  return result;
}

uint64_t sub_1D981FA9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D981FAF0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D981FB08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1D981FB6C()
{
  result = qword_1EDCFE710;
  if (!qword_1EDCFE710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE710);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D981FC90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *a1;
  v8 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v8;
  v12 = *(a2 + 64);
  v9 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v9;
  result = v5(v7, v11);
  *a3 = result;
  return result;
}

uint64_t objectdestroy_45Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[15];

  v8 = v0[17];

  return MEMORY[0x1EEE6BDD0](v0, 148, 7);
}

uint64_t objectdestroy_72Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(type metadata accessor for CrashMatcher() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  (*(*(v2 - 8) + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1D981FE44(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(*(type metadata accessor for CrashMatcher() - 8) + 80);

  return sub_1D981DBF4(a1, a2);
}

uint64_t sub_1D981FEE0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1D981FEF8(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1D981FF14()
{
  result = qword_1EDCFE570;
  if (!qword_1EDCFE570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41808, &qword_1D984D0D0);
    sub_1D981FFB0(qword_1EDCFE588, &qword_1ECB41810, &qword_1D984D0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE570);
  }

  return result;
}

uint64_t sub_1D981FFB0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D9820004(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D9820074(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1D98201B4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t getEnumTagSinglePayload for CrashPatternDefinition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CrashPatternDefinition.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D9820520(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9820568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D98205B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9820600(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D9820654()
{
  result = qword_1ECB41828;
  if (!qword_1ECB41828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41828);
  }

  return result;
}

unint64_t sub_1D98206C0()
{
  result = qword_1ECB41830;
  if (!qword_1ECB41830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41830);
  }

  return result;
}

unint64_t sub_1D9820718()
{
  result = qword_1ECB41838;
  if (!qword_1ECB41838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41838);
  }

  return result;
}

unint64_t sub_1D982076C()
{
  result = qword_1ECB41848;
  if (!qword_1ECB41848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41848);
  }

  return result;
}

unint64_t sub_1D98207C0()
{
  result = qword_1ECB41858;
  if (!qword_1ECB41858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41858);
  }

  return result;
}

unint64_t sub_1D9820838()
{
  result = qword_1ECB41870;
  if (!qword_1ECB41870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41870);
  }

  return result;
}

unint64_t sub_1D9820890()
{
  result = qword_1ECB41878;
  if (!qword_1ECB41878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41878);
  }

  return result;
}

unint64_t sub_1D98208E8()
{
  result = qword_1ECB41880;
  if (!qword_1ECB41880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41880);
  }

  return result;
}

unint64_t sub_1D9820940()
{
  result = qword_1ECB41888;
  if (!qword_1ECB41888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41888);
  }

  return result;
}

unint64_t sub_1D9820998()
{
  result = qword_1ECB41890;
  if (!qword_1ECB41890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41890);
  }

  return result;
}

unint64_t sub_1D98209F0()
{
  result = qword_1ECB41898;
  if (!qword_1ECB41898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41898);
  }

  return result;
}

uint64_t sub_1D9820AC8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D9849C54();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1D9849C34();
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

id CrashPatternInfo.__allocating_init(procName:threads:usedImages:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_procName];
  *v10 = a1;
  *(v10 + 1) = a2;
  *&v9[OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_threads] = a3;
  *&v9[OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_usedImages] = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t CrashPatternInfo.Thread.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D9820C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9821E10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9820CB4(uint64_t a1)
{
  v2 = sub_1D97FF538();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9820CF0(uint64_t a1)
{
  v2 = sub_1D97FF538();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9820D2C()
{
  result = qword_1EDCFE348;
  if (!qword_1EDCFE348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB418C0, &qword_1D984D588);
    sub_1D9820DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE348);
  }

  return result;
}

unint64_t sub_1D9820DB0()
{
  result = qword_1EDCFE438;
  if (!qword_1EDCFE438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE438);
  }

  return result;
}

unint64_t sub_1D9820E04()
{
  result = qword_1EDCFE340;
  if (!qword_1EDCFE340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB418C0, &qword_1D984D588);
    sub_1D9820E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE340);
  }

  return result;
}

unint64_t sub_1D9820E88()
{
  result = qword_1EDCFE430;
  if (!qword_1EDCFE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE430);
  }

  return result;
}

uint64_t CrashPatternInfo.Frame.symbol.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D9820F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D984A5F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E496567616D69 && a2 == 0xEA00000000007865)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D984A5F4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D9820FF4(uint64_t a1)
{
  v2 = sub_1D97FF78C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9821030(uint64_t a1)
{
  v2 = sub_1D97FF78C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CrashPatternInfo.BinaryImage.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D982109C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D984A5F4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9821124(uint64_t a1)
{
  v2 = sub_1D97FF958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9821160(uint64_t a1)
{
  v2 = sub_1D97FF958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CrashPatternInfo.BinaryImage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418E0, &qword_1D984D5A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D97FF958();
  sub_1D984A704();
  sub_1D984A514();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D98212D8@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(v2 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_usedImages);
  if (!v3 || ((v4 = *(result + 16), (v5 = *(v3 + 16)) != 0) ? (v6 = v4 >= v5) : (v6 = 1), v6))
  {
    *a2 = xmmword_1D984D570;
  }

  else
  {
    *a2 = *(v3 + 16 * v4 + 32);
  }

  return result;
}

id CrashPatternInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D98213B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9821F2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D98213DC(uint64_t a1)
{
  v2 = sub_1D97FF130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9821418(uint64_t a1)
{
  v2 = sub_1D97FF130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9821454()
{
  v1 = *(v0 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_procName + 8);

  v2 = *(v0 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_threads);

  v3 = *(v0 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_usedImages);
}

id CrashPatternInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CrashPatternInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D982153C()
{
  result = qword_1EDCFE338;
  if (!qword_1EDCFE338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB418F8, &qword_1D984D5C0);
    sub_1D98215C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE338);
  }

  return result;
}

unint64_t sub_1D98215C0()
{
  result = qword_1EDCFE428;
  if (!qword_1EDCFE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE428);
  }

  return result;
}

unint64_t sub_1D9821614()
{
  result = qword_1EDCFE358;
  if (!qword_1EDCFE358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41900, &qword_1D984D5C8);
    sub_1D9821698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE358);
  }

  return result;
}

unint64_t sub_1D9821698()
{
  result = qword_1EDCFE448[0];
  if (!qword_1EDCFE448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCFE448);
  }

  return result;
}

unint64_t sub_1D9821730()
{
  result = qword_1EDCFE330;
  if (!qword_1EDCFE330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB418F8, &qword_1D984D5C0);
    sub_1D98217B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE330);
  }

  return result;
}

unint64_t sub_1D98217B4()
{
  result = qword_1EDCFE420;
  if (!qword_1EDCFE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE420);
  }

  return result;
}

unint64_t sub_1D9821808()
{
  result = qword_1EDCFE350;
  if (!qword_1EDCFE350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41900, &qword_1D984D5C8);
    sub_1D982188C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE350);
  }

  return result;
}

unint64_t sub_1D982188C()
{
  result = qword_1EDCFE440;
  if (!qword_1EDCFE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE440);
  }

  return result;
}

unint64_t sub_1D98219F4()
{
  result = qword_1ECB41910;
  if (!qword_1ECB41910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41910);
  }

  return result;
}

unint64_t sub_1D9821A4C()
{
  result = qword_1ECB41918;
  if (!qword_1ECB41918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41918);
  }

  return result;
}

unint64_t sub_1D9821AA4()
{
  result = qword_1ECB41920;
  if (!qword_1ECB41920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41920);
  }

  return result;
}

unint64_t sub_1D9821AFC()
{
  result = qword_1ECB41928;
  if (!qword_1ECB41928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41928);
  }

  return result;
}

unint64_t sub_1D9821B54()
{
  result = qword_1EDCFE9A8;
  if (!qword_1EDCFE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE9A8);
  }

  return result;
}

unint64_t sub_1D9821BAC()
{
  result = qword_1EDCFE9B0;
  if (!qword_1EDCFE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE9B0);
  }

  return result;
}

unint64_t sub_1D9821C04()
{
  result = qword_1EDCFE990;
  if (!qword_1EDCFE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE990);
  }

  return result;
}

unint64_t sub_1D9821C5C()
{
  result = qword_1EDCFE998;
  if (!qword_1EDCFE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE998);
  }

  return result;
}

unint64_t sub_1D9821CB4()
{
  result = qword_1EDCFE978;
  if (!qword_1EDCFE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE978);
  }

  return result;
}

unint64_t sub_1D9821D0C()
{
  result = qword_1EDCFE980;
  if (!qword_1EDCFE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE980);
  }

  return result;
}

unint64_t sub_1D9821D64()
{
  result = qword_1EDCFE960;
  if (!qword_1EDCFE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE960);
  }

  return result;
}

unint64_t sub_1D9821DBC()
{
  result = qword_1EDCFE968;
  if (!qword_1EDCFE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE968);
  }

  return result;
}

uint64_t sub_1D9821E10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656D617266 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D984A5F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D984A5F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572656767697274 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D984A5F4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D9821F2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E636F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D984A5F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73646165726874 && a2 == 0xE700000000000000 || (sub_1D984A5F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x67616D4964657375 && a2 == 0xEA00000000007365)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D984A5F4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D9822050()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

BOOL sub_1D98220A4(void *a1)
{
  v2 = *(v1 + 32);
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  type metadata accessor for Payload();
  return sub_1D984A034() > 0;
}

id sub_1D98220F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1D98247A4();
    v5 = sub_1D9849D94();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1D9822180(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419B0, &qword_1D984E060);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D98245A4();
  sub_1D984A704();
  v15 = 0;
  sub_1D984A584();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
    sub_1D98245F8(&qword_1ECB419B8);
    sub_1D984A534();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D9822348()
{
  if (*v0)
  {
    result = 0x61724663696E6170;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_1D9822390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001D9853FA0 == a2 || (sub_1D984A5F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x61724663696E6170 && a2 == 0xEB0000000073656DLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D984A5F4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D982247C(uint64_t a1)
{
  v2 = sub_1D98245A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D98224B8(uint64_t a1)
{
  v2 = sub_1D98245A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D98224F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D98234FC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

CoreDiagnostics::PanicPatternAction_optional __swiftcall PanicPatternAction.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t PanicPatternAction.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1D9822574()
{
  v1 = *v0;
  sub_1D984A6A4();
  sub_1D984A6C4();
  return sub_1D984A6D4();
}

uint64_t sub_1D98225FC()
{
  v1 = *v0;
  sub_1D984A6A4();
  sub_1D984A6C4();
  return sub_1D984A6D4();
}

_DWORD *sub_1D9822648@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_1D9822668(int *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t PanicMatchedPattern.uuid.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PanicMatchedPattern.uuid.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PanicMatchedPattern.panicActions.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1D982280C()
{
  if (*v0)
  {
    result = 0x74634163696E6170;
  }

  else
  {
    result = 1684632949;
  }

  *v0;
  return result;
}

uint64_t sub_1D9822848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D984A5F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74634163696E6170 && a2 == 0xEC000000736E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D984A5F4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D9822928(uint64_t a1)
{
  v2 = sub_1D9822B78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9822964(uint64_t a1)
{
  v2 = sub_1D9822B78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PanicMatchedPattern.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41930, &qword_1D984DCA0);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9822B78();
  sub_1D984A704();
  v17 = 0;
  sub_1D984A584();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41940, &qword_1D984DCA8);
    sub_1D9822E74(&qword_1ECB41948, sub_1D9822BCC);
    sub_1D984A534();
  }

  return (*(v14 + 8))(v7, v4);
}

unint64_t sub_1D9822B78()
{
  result = qword_1ECB41938;
  if (!qword_1ECB41938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41938);
  }

  return result;
}

unint64_t sub_1D9822BCC()
{
  result = qword_1ECB41950;
  if (!qword_1ECB41950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41950);
  }

  return result;
}

uint64_t PanicMatchedPattern.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41958, &qword_1D984DCB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9822B78();
  sub_1D984A6F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = 0;
  v11 = sub_1D984A4B4();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41940, &qword_1D984DCA8);
  v18 = 1;
  sub_1D9822E74(&qword_1ECB41960, sub_1D9822EEC);
  sub_1D984A464();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D9822E74(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41940, &qword_1D984DCA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9822EEC()
{
  result = qword_1ECB41968;
  if (!qword_1ECB41968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41968);
  }

  return result;
}

uint64_t sub_1D9822F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41818, &unk_1D984D0E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D984CC80;
  *(inited + 32) = 0x556E726574746170;
  *(inited + 40) = 0xEB00000000444955;
  swift_beginAccess();
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);

  v8 = sub_1D9849DC4();

  *(inited + 48) = v8;
  *(inited + 56) = 0x6E6F69746361;
  *(inited + 64) = 0xE600000000000000;
  result = sub_1D984A6E4();
  *(inited + 72) = result;
  *(inited + 80) = 0x657079745F677562;
  *(inited + 88) = 0xE800000000000000;
  v11 = *(a3 + 8);
  v10 = *(a3 + 16);
  v12 = (HIBYTE(v10) & 0xF);
  v13 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    goto LABEL_65;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {

    sub_1D983F95C(v11, v10, 10);

    goto LABEL_65;
  }

  if ((v10 & 0x2000000000000000) == 0)
  {
    if ((v11 & 0x1000000000000000) != 0)
    {
      v12 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1D984A3B4();
      v12 = result;
    }

    v15 = *v12;
    if (v15 == 43)
    {
      if (v13 >= 1)
      {
        v24 = v13 - 1;
        if (v13 != 1)
        {
          v25 = 0;
          if (v12)
          {
            v26 = v12 + 1;
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v25, 0xAuLL))
              {
                goto LABEL_63;
              }

              v20 = __CFADD__(10 * v25, v27);
              v25 = 10 * v25 + v27;
              if (v20)
              {
                goto LABEL_63;
              }

              ++v26;
              if (!--v24)
              {
LABEL_55:
                LOBYTE(v12) = 0;
                goto LABEL_64;
              }
            }
          }

          goto LABEL_64;
        }

        goto LABEL_63;
      }

      goto LABEL_70;
    }

    if (v15 != 45)
    {
      if (v13)
      {
        v31 = 0;
        if (v12)
        {
          while (1)
          {
            v32 = *v12 - 48;
            if (v32 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v31, 0xAuLL))
            {
              goto LABEL_63;
            }

            v20 = __CFADD__(10 * v31, v32);
            v31 = 10 * v31 + v32;
            if (v20)
            {
              goto LABEL_63;
            }

            ++v12;
            if (!--v13)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_63:
      LOBYTE(v12) = 1;
      goto LABEL_64;
    }

    if (v13 >= 1)
    {
      v16 = v13 - 1;
      if (v13 != 1)
      {
        v17 = 0;
        if (v12)
        {
          v18 = v12 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v17, 0xAuLL))
            {
              goto LABEL_63;
            }

            v20 = 10 * v17 >= v19;
            v17 = 10 * v17 - v19;
            if (!v20)
            {
              goto LABEL_63;
            }

            ++v18;
            if (!--v16)
            {
              goto LABEL_55;
            }
          }
        }

LABEL_64:
        v38 = v12;
LABEL_65:
        *(inited + 96) = sub_1D984A254();
        v36 = sub_1D98336F8(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41820, &qword_1D984E090);
        swift_arrayDestroy();
        return v36;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v37[0] = v11;
  v37[1] = v10 & 0xFFFFFFFFFFFFFFLL;
  if (v11 != 43)
  {
    if (v11 != 45)
    {
      if (v12)
      {
        v33 = 0;
        v34 = v37;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          if (!is_mul_ok(v33, 0xAuLL))
          {
            break;
          }

          v20 = __CFADD__(10 * v33, v35);
          v33 = 10 * v33 + v35;
          if (v20)
          {
            break;
          }

          ++v34;
          if (!--v12)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v12)
    {
      if (--v12)
      {
        v21 = 0;
        v22 = v37 + 1;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          if (!is_mul_ok(v21, 0xAuLL))
          {
            break;
          }

          v20 = 10 * v21 >= v23;
          v21 = 10 * v21 - v23;
          if (!v20)
          {
            break;
          }

          ++v22;
          if (!--v12)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_69;
  }

  if (v12)
  {
    if (--v12)
    {
      v28 = 0;
      v29 = v37 + 1;
      while (1)
      {
        v30 = *v29 - 48;
        if (v30 > 9)
        {
          break;
        }

        if (!is_mul_ok(v28, 0xAuLL))
        {
          break;
        }

        v20 = __CFADD__(10 * v28, v30);
        v28 = 10 * v28 + v30;
        if (v20)
        {
          break;
        }

        ++v29;
        if (!--v12)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_71:
  __break(1u);
  return result;
}

double PanicMatcherOOP.init()@<D0>(uint64_t a1@<X8>)
{
  strcpy(&v4, "panicPayloadV1");
  HIBYTE(v4) = -18;
  *&v5 = 0x80000001D9853F70;
  *(&v5 + 1) = MEMORY[0x1E69E7CC0];
  sub_1D981E688();
  result = *&v4;
  v3 = v5;
  *a1 = v4;
  *(a1 + 16) = 0xD000000000000021;
  *(a1 + 24) = v3;
  return result;
}

char *PanicMatcherOOP.lookForPattern(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D9823724(a1, *(v2 + 32));
  v5 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = result;
  }

  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1D98234FC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41990, &qword_1D984E050);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D98245A4();
  sub_1D984A6F4();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_1D984A4B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
    v10[15] = 1;
    sub_1D98245F8(&qword_1ECB419A8);
    sub_1D984A464();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

char *sub_1D9823724(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419C8, &qword_1D984E068);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v94 = &v88 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419D0, &unk_1D984E070);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v93 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v101 = *(a2 + 16);
  if (v101)
  {
    v103 = &v88 - v13;
    type metadata accessor for PanicPatternInfo();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = v14;
      v106 = v2;
      v99 = v8;
      v16 = swift_allocObject();
      v92 = (v15 + OBJC_IVAR____SwiftPanicPatternInfo_panicReasonString);
      v100 = a2 + 32;
      v89 = a1;
      v90 = a2;

      swift_beginAccess();
      v17 = 0;
      v18 = 0;
      v98 = (v9 + 8);
      v91 = v109;
      *&v19 = 136315138;
      v96 = v19;
      v95 = MEMORY[0x1E69E7CC0];
      v102 = v16;
      v107 = "PanicPatternDefinition";
      while (1)
      {
        v21 = (v100 + 80 * v18);
        v22 = v21[3];
        v113 = v21[2];
        v114 = v22;
        v115 = v21[4];
        v116 = v22;
        v23 = v21[1];
        v111 = *v21;
        v112 = v23;
        v25 = *(&v23 + 1);
        v24 = v113;
        v105 = v18;
        if (v17)
        {
          v26 = *(v16 + 24);
          sub_1D98246B8(&v111, v110);
          sub_1D981FC20(&v116, v110);

          v27 = v111;
          *(v16 + 16) = v116;
          if (v27)
          {
            v28 = v27;
          }

          else
          {
            v28 = &unk_1F550A608;
          }

          v104 = v28;
        }

        else
        {
          sub_1D98246B8(&v111, v110);
          sub_1D981FC20(&v116, v110);
          v29 = v111;
          *(v16 + 16) = v116;
          v30 = &unk_1F550A608;
          if (v29)
          {
            v30 = v29;
          }

          v104 = v30;
        }

        if (qword_1ECB415B0 != -1)
        {
          swift_once();
        }

        v31 = sub_1D9849C54();
        v32 = __swift_project_value_buffer(v31, qword_1ECB47618);
        sub_1D98246B8(&v111, v110);
        v33 = sub_1D9849C24();
        v34 = sub_1D984A134();
        sub_1D981A4E8(&v111, &qword_1ECB417D0, &qword_1D984D098);
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v110[0] = v36;
          *v35 = v96;

          v37 = sub_1D9819F0C(v25, v24, v110);

          *(v35 + 4) = v37;
          _os_log_impl(&dword_1D97FA000, v33, v34, "create a regex %s", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
          MEMORY[0x1DA738F10](v36, -1, -1);
          v38 = v35;
          v16 = v102;
          MEMORY[0x1DA738F10](v38, -1, -1);
        }

        v39 = v106;
        sub_1D9849C14();
        if (v39)
        {
          v40 = sub_1D9849C24();
          v41 = sub_1D984A134();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            _os_log_impl(&dword_1D97FA000, v40, v41, "Failed to create regex", v42, 2u);
            MEMORY[0x1DA738F10](v42, -1, -1);
          }

          v106 = 0;
          v20 = v105;
          goto LABEL_5;
        }

        v97 = v32;
        v43 = *v92;
        v44 = v92[1];
        sub_1D9849F84();
        sub_1D9824728();
        v45 = v93;
        v46 = v99;
        sub_1D9849BF4();
        v47 = v94;
        sub_1D9849C04();
        v106 = 0;

        v48 = *v98;
        (*v98)(v45, v46);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419E0, &unk_1D984E080);
        v50 = (*(*(v49 - 8) + 48))(v47, 1, v49) != 1;
        sub_1D981A4E8(v47, &qword_1ECB419C8, &qword_1D984E068);
        v51 = sub_1D9849C24();
        v52 = sub_1D984A134();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v97 = v48;
          v54 = v53;
          v55 = swift_slowAlloc();
          v110[0] = v55;
          *v54 = v96;
          if (v50)
          {
            v56 = 7562585;
          }

          else
          {
            v56 = 28494;
          }

          if (v50)
          {
            v57 = 0xE300000000000000;
          }

          else
          {
            v57 = 0xE200000000000000;
          }

          v58 = sub_1D9819F0C(v56, v57, v110);

          *(v54 + 4) = v58;
          _os_log_impl(&dword_1D97FA000, v51, v52, "panic string matched: %s", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v55);
          MEMORY[0x1DA738F10](v55, -1, -1);
          MEMORY[0x1DA738F10](v54, -1, -1);

          v97(v103, v99);
          if (!v50)
          {
LABEL_29:
            v16 = v102;
            goto LABEL_52;
          }
        }

        else
        {

          v48(v103, v99);
          if (!v50)
          {
            goto LABEL_29;
          }
        }

        v59 = *(v102 + 24);
        v97 = *(v102 + 16);
        v60 = *(v104 + 2);
        if (v60)
        {
          break;
        }

        v63 = MEMORY[0x1E69E7CC0];
LABEL_44:
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v16 = v102;
          v69 = v95;
        }

        else
        {
          v69 = sub_1D98325C4(0, *(v95 + 2) + 1, 1, v95);
          v16 = v102;
        }

        v71 = *(v69 + 2);
        v70 = *(v69 + 3);
        if (v71 >= v70 >> 1)
        {
          v69 = sub_1D98325C4((v70 > 1), v71 + 1, 1, v69);
        }

        *(v69 + 2) = v71 + 1;
        v95 = v69;
        v72 = &v69[24 * v71];
        *(v72 + 4) = v97;
        *(v72 + 5) = v59;
        *(v72 + 6) = v63;
        if (v60)
        {
          v73 = (v104 + 32);
          do
          {
            v74 = *v73++;
            v75 = sub_1D9849DC4();
            v76 = swift_allocObject();
            *(v76 + 16) = v16;
            *(v76 + 24) = v74;
            v77 = v114;
            *(v76 + 64) = v113;
            *(v76 + 80) = v77;
            *(v76 + 96) = v115;
            v78 = v112;
            *(v76 + 32) = v111;
            *(v76 + 48) = v78;
            v109[2] = sub_1D982478C;
            v109[3] = v76;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            v109[0] = sub_1D98220F4;
            v109[1] = &block_descriptor_1;
            v79 = _Block_copy(aBlock);
            sub_1D98246B8(&v111, v110);

            AnalyticsSendEventLazy();
            _Block_release(v79);

            --v60;
          }

          while (v60);
          v20 = v105;
          goto LABEL_5;
        }

LABEL_52:
        v20 = v105;
LABEL_5:
        v18 = v20 + 1;
        sub_1D981A4E8(&v111, &qword_1ECB417D0, &qword_1D984D098);
        v17 = 1;
        if (v18 == v101)
        {

          v80 = *(v16 + 24);

          swift_deallocUninitializedObject();
          return v95;
        }
      }

      v61 = (v104 + 32);

      v62 = v60;
      v63 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v65 = *v61++;
        v64 = v65;
        if (v65 == 2)
        {
          break;
        }

        if (v64 == 1)
        {
          v66 = 0;
LABEL_39:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_1D9832700(0, *(v63 + 2) + 1, 1, v63);
          }

          v68 = *(v63 + 2);
          v67 = *(v63 + 3);
          if (v68 >= v67 >> 1)
          {
            v63 = sub_1D9832700((v67 > 1), v68 + 1, 1, v63);
          }

          *(v63 + 2) = v68 + 1;
          v63[v68 + 32] = v66;
        }

        if (!--v62)
        {
          goto LABEL_44;
        }
      }

      v66 = 1;
      goto LABEL_39;
    }

    v86 = 1;
  }

  else
  {
    if (qword_1ECB415B0 != -1)
    {
      swift_once();
    }

    v82 = sub_1D9849C54();
    __swift_project_value_buffer(v82, qword_1ECB47618);
    v83 = sub_1D9849C24();
    v84 = sub_1D984A134();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_1D97FA000, v83, v84, "There is no panic payload available", v85, 2u);
      MEMORY[0x1DA738F10](v85, -1, -1);
    }

    v86 = 0;
  }

  sub_1D981FB6C();
  swift_allocError();
  *v87 = v86;
  return swift_willThrow();
}