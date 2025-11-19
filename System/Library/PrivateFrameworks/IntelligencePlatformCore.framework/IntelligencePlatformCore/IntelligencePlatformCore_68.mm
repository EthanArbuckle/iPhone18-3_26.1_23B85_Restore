uint64_t sub_1C4A2AA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = MEMORY[0x1E69E7CC0];
  v9 = type metadata accessor for LongitudinalDataCollection(0);
  v10 = a4 + v9[5];
  sub_1C4F00318();
  v11 = (a4 + v9[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a4 + v9[7];
  *v12 = 0;
  v12[8] = 1;
  *v12 = *(v4 + *(type metadata accessor for LongitudinalDataCollectionTask() + 28));
  v12[8] = 0;
  *v11 = a2;
  v11[1] = a3;
  *a4 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4A2AB10(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C456902C(&qword_1EC0C1988, &qword_1C4F45438);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25[-1] - v6;
  v8 = type metadata accessor for LongitudinalDataCollection(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C446C964(a1, v7, &qword_1EC0C1988, &qword_1C4F45438);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    sub_1C4420C3C(v7, &qword_1EC0C1988, &qword_1C4F45438);
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CF8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C43F8000, v13, v14, "LongitudinalDataCollection: Events were not logged to PET2", v15, 2u);
      MEMORY[0x1C6942830](v15, -1, -1);
    }
  }

  else
  {
    sub_1C4A2AED8(v7, v11);
    sub_1C4F00518();
    sub_1C4F00508();
    v25[3] = v8;
    v25[4] = sub_1C4A2B034(&qword_1EC0C1738, type metadata accessor for LongitudinalDataCollection);
    v16 = sub_1C4422F90(v25);
    sub_1C4A2AF30(v11, v16);
    v17 = (v2 + *(type metadata accessor for LongitudinalDataCollectionTask() + 24));
    v18 = *v17;
    v19 = v17[1];
    sub_1C4F004F8();

    sub_1C440962C(v25);
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDDFECB8);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CC8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C43F8000, v21, v22, "LongitudinalDataCollection: Events were logged to PET2", v23, 2u);
      MEMORY[0x1C6942830](v23, -1, -1);
    }

    sub_1C4A2AF88(v11, type metadata accessor for LongitudinalDataCollection);
  }
}

uint64_t type metadata accessor for LongitudinalDataCollectionTask()
{
  result = qword_1EDDDF0E8;
  if (!qword_1EDDDF0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A2AED8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C4A2AF30(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C4A2AF88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1C4A2AFE0()
{
  result = qword_1EC0C19A0;
  if (!qword_1EC0C19A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C19A0);
  }

  return result;
}

uint64_t sub_1C4A2B034(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for LongitudinalDataCollectionTask.LongitudinalDataCollectionError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C4A2B150()
{
  result = type metadata accessor for Configuration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C4A2B1F4()
{
  result = qword_1EC0C19A8;
  if (!qword_1EC0C19A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C19A8);
  }

  return result;
}

char *sub_1C4A2B248()
{
  v2 = v0;
  v3 = sub_1C456902C(&qword_1EC0C19B0, &qword_1C4F45548);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v83 - v5;
  v7 = type metadata accessor for LSBundleRecordStructs.Organization(0);
  v8 = sub_1C43FBCE0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LSBundleRecordStructs.Software(0);
  v14 = sub_1C43FBCE0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C45B4BF8(v2, &selRef_bundleIdentifier);
  if (!v20)
  {
    goto LABEL_10;
  }

  v21 = v19;
  v22 = v20;
  v23 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v23 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {

LABEL_10:
    sub_1C465B58C();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
    return v6;
  }

  v85 = v2;
  v86 = v12;
  v87 = v7;
  v88 = v18;
  if (qword_1EDDF7960 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for SourceIdPrefix();
  sub_1C442B738(v24, qword_1EDE2D6F8);
  String.base64EncodedSHA(withPrefix:)();
  v26 = v25;
  v28 = v27;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v29 = v88;
  sub_1C4E2EC7C(v26, v28, v30, v31, v32, v33, v34, v35, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
  if (!v1)
  {
    v83 = v6;
    v84 = v28;
    v38 = (v29 + v13[11]);
    v39 = v38[1];

    *v38 = v21;
    v38[1] = v22;
    v40 = v85;
    v41 = [v85 localizedName];
    v42 = sub_1C4F01138();
    v44 = v43;

    v45 = (v29 + v13[9]);
    v46 = v45[1];

    *v45 = v42;
    v45[1] = v44;
    v47 = sub_1C45B4BF8(v40, &selRef_applicationIdentifier);
    v49 = v48;
    v50 = (v29 + v13[13]);
    v51 = v40;
    v52 = v50[1];

    *v50 = v47;
    v50[1] = v49;
    v53 = [v40 persistentIdentifier];
    v54 = [objc_allocWithZone(MEMORY[0x1E69635F8]) initWithPersistentIdentifier_];

    if (v54)
    {
      v55 = sub_1C4A2B838([v54 iTunesMetadata]);
      v57 = v56;
    }

    else
    {
      v55 = 0;
      v57 = 0;
    }

    v58 = v87;
    v59 = v26;
    v60 = sub_1C45B4BF8(v51, &selRef_teamIdentifier);
    v62 = v86;
    if (!v61)
    {

LABEL_30:
      HIBYTE(v90) = 1;
      v81 = v88;
      v6 = sub_1C4E30054(v59, v84, &v90 + 7);

      sub_1C4419FF4();
      sub_1C4A2B7E0(v81, v82);
      return v6;
    }

    v63 = v61;
    v87 = v59;
    if (v60 == 0x3030303030303030 && v61 == 0xEA00000000003030)
    {
      v65 = v60;
    }

    else
    {
      v65 = v60;
      if ((sub_1C4F02938() & 1) == 0)
      {
        if (!v57)
        {

LABEL_29:
          v59 = v87;
          goto LABEL_30;
        }

LABEL_26:
        v66 = v24;
        if (qword_1EDDF7938 != -1)
        {
          swift_once();
          v66 = v24;
        }

        sub_1C442B738(v66, qword_1EDE2D698);
        String.base64EncodedSHA(withPrefix:)();
        sub_1C4E2F5C4(v67, v68, v69, v70, v71, v72, v73, v74, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
        v75 = v55;
        v76 = (v62 + *(v58 + 36));
        v77 = v76[1];

        *v76 = v75;
        v76[1] = v57;
        v78 = (v62 + *(v58 + 44));
        v79 = v78[1];

        *v78 = v65;
        v78[1] = v63;
        v80 = v83;
        sub_1C4A2B77C(v62, v83);
        sub_1C440BAA8(v80, 0, 1, v58);
        sub_1C4E2FE78(v80);
        sub_1C4A2B7E0(v62, type metadata accessor for LSBundleRecordStructs.Organization);
        goto LABEL_29;
      }
    }

    v55 = 0x656C707041;

    v57 = 0xE500000000000000;
    goto LABEL_26;
  }

  return v6;
}

uint64_t sub_1C4A2B77C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LSBundleRecordStructs.Organization(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4A2B7E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4A2B838(void *a1)
{
  v2 = [a1 artistName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4A2B8A8(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser();
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  v8 = type metadata accessor for Linker();
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v11 = type metadata accessor for LSBundleRecordSourceIngestor();
  *(v3 + 48) = v11;
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v14 = type metadata accessor for Source();
  *(v3 + 64) = v14;
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v17 = type metadata accessor for PhaseStores();
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 121) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C4A2BA00, 0, 0);
}

uint64_t sub_1C4A2BA00()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);
  sub_1C4419288();
  sub_1C44717B8(v3, v4, v5);
  if (qword_1EDDFD2F0 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 121);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 72);
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = *(v0 + 16);
  v13 = sub_1C442B738(*(v0 + 64), qword_1EDDFD2F8);
  *(v0 + 104) = v13;
  sub_1C44717B8(v13, v7, type metadata accessor for Source);
  sub_1C44717B8(v12, v10, type metadata accessor for PhaseStores);
  sub_1C44717B8(v13, v10 + *(v11 + 20), type metadata accessor for Source);
  *(v10 + *(v11 + 24)) = v6;
  sub_1C44717B8(v13, v9, type metadata accessor for Source);
  sub_1C44717B8(v12, v8, type metadata accessor for PhaseStores);
  *(v0 + 120) = v6;
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *v14 = v0;
  v14[1] = sub_1C4A2BBB4;
  v15 = *(v0 + 88);
  v16 = *(v0 + 72);
  v17 = *(v0 + 40);

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C4A2BBB4()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C4A2BCB0, 0, 0);
}

uint64_t sub_1C4A2BCB0()
{
  v1 = *(v0 + 121);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  v23 = *(v0 + 96);
  v24 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  sub_1C44717B8(*(v0 + 104), *(v0 + 72), type metadata accessor for Source);
  sub_1C4419288();
  sub_1C44717B8(v7, v2, v9);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44857CC(v7);
  v10 = (v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v4;
  v10[4] = sub_1C4A2BF5C();
  v11 = sub_1C4422F90(v10);
  sub_1C4A2BFB4(v5, v11, type metadata accessor for LSBundleRecordSourceIngestor);
  sub_1C44002E8();
  sub_1C4A2BFB4(v3, v12, v13);
  sub_1C44002E8();
  sub_1C4A2BFB4(v23, v14, v15);
  sub_1C44002E8();
  sub_1C4A2BFB4(v24, v16, v17);
  sub_1C44002E8();
  sub_1C4A2BFB4(v6, v18, v19);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v20 = *(v0 + 8);
  v21 = *(v0 + 24);

  return v20(v21);
}

uint64_t type metadata accessor for LSBundleRecordSoftwarePhase()
{
  result = qword_1EDDE05D8;
  if (!qword_1EDDE05D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C4A2BF5C()
{
  result = qword_1EDDDFDD8;
  if (!qword_1EDDDFDD8)
  {
    type metadata accessor for LSBundleRecordSourceIngestor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDFDD8);
  }

  return result;
}

uint64_t sub_1C4A2BFB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FCE50(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for LSBundleRecordSourceIngestor()
{
  result = qword_1EDDDFDB8;
  if (!qword_1EDDDFDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A2C0A4()
{
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() enumeratorWithOptions_];
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 40) = 0;
  v3 = *(v1 + *(type metadata accessor for PhaseStores() + 24));
  v4 = swift_task_alloc();
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v0 + 16;
  v4[5] = v0 + 24;
  v4[6] = v0 + 40;
  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C4A2CAF4, v4);
  v5 = *(v0 + 32);

  sub_1C4EF9AE8();
  sub_1C4647050();
  sub_1C4A2C200(v5, (v0 + 24), (v0 + 16));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1C4A2C200(uint64_t a1, void *a2, void *a3)
{
  sub_1C43FBE94();
  v6 = type metadata accessor for Pipeline.StatusStore();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C4430FB0(v3, v10);
  v10[*(v7 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C44BCB8C(v10, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v12 = sub_1C4F01108();

  *(inited + 48) = v12;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  v13 = *a2;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

void sub_1C4A2C478(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, char *a7@<X6>, char *a8@<X8>)
{
  v9 = v8;
  v48 = a7;
  v49 = a8;
  v50 = a6;
  v51 = a1;
  v52 = a2;
  v53 = a4;
  v12 = type metadata accessor for LSBundleRecordSourceIngestor();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v45 - v16;
  while (1)
  {
    v17 = [a3 nextObject];
    if (!v17)
    {
      v29 = *v48;
LABEL_18:
      *v49 = v29;
      return;
    }

    v18 = v17;
    if (sub_1C4F01948())
    {
      break;
    }

    if (__OFADD__(*a5, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    ++*a5;
    v18 = v18;
    sub_1C4630D78(v18);
    if (v19)
    {

      sub_1C4A2B248();
      v20 = v9;
      if (v9)
      {
        v9 = 0;
        v55 = v20;
        v23 = v20;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        if (!swift_dynamicCast())
        {

          v29 = 1;
          LOBYTE(v55) = 1;
          sub_1C4407510(v20, v42, v43, v44, &v55);

          *v48 = 1;
          goto LABEL_18;
        }

        v24 = v54[1];
        sub_1C465B58C();
        v25 = swift_allocError();
        *v26 = v24;
        v54[0] = 1;
        sub_1C4407510(v25, v26, v27, v28, v54);
      }

      else
      {
        sub_1C4812140();
        v22 = v21;

        v51(v22);
        v9 = 0;

        if (__OFADD__(*v50, 1))
        {
          goto LABEL_22;
        }

        ++*v50;
      }
    }

    else
    {
    }
  }

  if (qword_1EDDFD028 == -1)
  {
    goto LABEL_15;
  }

LABEL_23:
  swift_once();
LABEL_15:
  v30 = sub_1C4F00978();
  sub_1C442B738(v30, qword_1EDE2DE10);
  sub_1C441A00C();
  v31 = v47;
  sub_1C4430FB0(v53, v47);
  v32 = sub_1C4F00968();
  v33 = sub_1C4F01CF8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v55 = v35;
    *v34 = 136315138;
    sub_1C441A00C();
    v36 = v46;
    sub_1C4430FB0(v31, v46);
    sub_1C44BCB8C(v31, type metadata accessor for LSBundleRecordSourceIngestor);
    sub_1C4640810();
    v38 = v37;
    v40 = v39;
    sub_1C44BCB8C(v36, type metadata accessor for LSBundleRecordSourceIngestor);
    v41 = sub_1C441D828(v38, v40, &v55);

    *(v34 + 4) = v41;
    _os_log_impl(&dword_1C43F8000, v32, v33, "%s going to defer", v34, 0xCu);
    sub_1C440962C(v35);
    MEMORY[0x1C6942830](v35, -1, -1);
    MEMORY[0x1C6942830](v34, -1, -1);
  }

  else
  {
    sub_1C44BCB8C(v31, type metadata accessor for LSBundleRecordSourceIngestor);
  }

  sub_1C4F01828();
  sub_1C4A2CB18(&qword_1EDDFCF00, MEMORY[0x1E69E8550]);
  swift_allocError();
  sub_1C4F00EA8();
  swift_willThrow();
}

uint64_t sub_1C4A2C8F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return sub_1C4A2C084();
}

uint64_t sub_1C4A2C9EC(uint64_t a1)
{
  result = sub_1C4A2CB18(qword_1EDDDFDE0, type metadata accessor for LSBundleRecordSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A2CA44(uint64_t a1)
{
  result = sub_1C4A2CB18(&qword_1EDDDFDC8, type metadata accessor for LSBundleRecordSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A2CA9C(uint64_t a1)
{
  result = sub_1C4A2CB18(&qword_1EDDDFDD0, type metadata accessor for LSBundleRecordSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A2CB18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4A2CB60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4F00F28();
  if (*(v4 + 16) && (v5 = sub_1C445FAA8(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1C4A2CBE8(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6F65646976;
      break;
    case 2:
      result = 0x636973756DLL;
      break;
    case 3:
      result = 0x74736163646F70;
      break;
    case 4:
      result = 0x676E6973776F7262;
      break;
    case 5:
      result = 0x676E6974786574;
      break;
    case 6:
      result = 1818845549;
      break;
    case 7:
      result = 0x676E696D6167;
      break;
    case 8:
      result = 0x6C6169636F73;
      break;
    case 9:
      result = 1936744813;
      break;
    case 10:
      result = 0x6168735F65646972;
      break;
    case 11:
      result = 0x6C65645F646F6F66;
      break;
    case 12:
      result = 0x676E6970706F6873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A2CD2C()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C4A2CD78(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1C4686AF4();
}

uint64_t sub_1C4A2CD9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4A2CD2C();
  *a2 = result;
  return result;
}

uint64_t sub_1C4A2CDCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4A2CBE8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ManualBundleCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4A2CEE8()
{
  result = qword_1EC0C19B8;
  if (!qword_1EC0C19B8)
  {
    sub_1C4572308(&qword_1EC0C19C0, qword_1C4F45648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C19B8);
  }

  return result;
}

unint64_t sub_1C4A2CF50()
{
  result = qword_1EC0C19C8;
  if (!qword_1EC0C19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C19C8);
  }

  return result;
}

unint64_t MappingError.description.getter()
{
  result = 0x206E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000034;
      break;
    case 4:
      result = 0xD000000000000045;
      break;
    case 5:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MappingError.hashValue.getter()
{
  v1 = *v0;
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  return sub_1C4F02B68();
}

unint64_t sub_1C4A2D11C()
{
  result = qword_1EC0C19D0;
  if (!qword_1EC0C19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C19D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MappingError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

double Source.mapper(stores:pipelineType:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = type metadata accessor for StandardEntityMapper();
  a3[3] = v7;
  a3[4] = sub_1C4A2D390();
  v8 = sub_1C4422F90(a3);
  sub_1C44717B8(a1, v8 + v7[9], type metadata accessor for PhaseStores);
  sub_1C44717B8(v3, v8, type metadata accessor for Source);
  v9 = *(type metadata accessor for Source() + 24);
  v10 = v7[5];
  v11 = sub_1C4EFD548();
  sub_1C43FCE50(v11);
  (*(v12 + 16))(v8 + v10, v3 + v9);
  *(v8 + v7[6]) = 8;
  *&result = 1;
  *(v8 + v7[8]) = xmmword_1C4F14630;
  *(v8 + v7[7]) = v6;
  return result;
}

unint64_t sub_1C4A2D390()
{
  result = qword_1EDDE4218;
  if (!qword_1EDDE4218)
  {
    type metadata accessor for StandardEntityMapper();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE4218);
  }

  return result;
}

void *sub_1C4A2D3E8()
{
  v34 = *MEMORY[0x1E69E9840];
  v0 = sub_1C4EF98F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4A2D7C4();
  if (!v6)
  {
LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  v7 = v5;
  v8 = v6;
  v9 = objc_autoreleasePoolPush();
  sub_1C4EF9838();
  v22 = sub_1C4EF9938();
  v24 = v23;
  v25 = objc_opt_self();
  (*(v1 + 8))(v4, v0);
  v26 = sub_1C4EF9A38();
  sub_1C4434000(v22, v24);
  v32[0] = 0;
  v27 = [v25 JSONObjectWithData:v26 options:0 error:v32];

  if (!v27)
  {
    v29 = v32[0];
    v30 = sub_1C4EF97A8();

    swift_willThrow();
    objc_autoreleasePoolPop(v9);
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v10 = sub_1C4F00978();
    sub_1C4400920(v10, qword_1EDE2DE10);
    v11 = v30;
    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CE8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v14 = 136315394;
      v15 = sub_1C441D828(v7, v8, v32);

      *(v14 + 4) = v15;
      *(v14 + 12) = 2080;
      v33 = v30;
      v16 = v30;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v17 = sub_1C4F01198();
      v19 = sub_1C441D828(v17, v18, v32);

      *(v14 + 14) = v19;
      _os_log_impl(&dword_1C43F8000, v12, v13, "StandardEntityMapper: failed to deserialize JSON of %s: %s", v14, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    goto LABEL_8;
  }

  v28 = v32[0];
  sub_1C4F02078();
  swift_unknownObjectRelease();
  sub_1C456902C(&qword_1EC0C34B0, &qword_1C4F40190);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = 0;
  }

  objc_autoreleasePoolPop(v9);
  result = v33;
LABEL_9:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C4A2D7C4()
{
  v55 = *v0;
  v56 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](7364941, 0xE300000000000000);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](46, 0xE100000000000000);
  MEMORY[0x1C6940010](1852797802, 0xE400000000000000);
  sub_1C44867F4();
  v1 = sub_1C4F01E88();
  v2 = sub_1C4407544();
  v6 = sub_1C495B9CC(v2, v3, v4, v5, v1);
  v8 = v7;

  if (v8)
  {
    v9 = [objc_opt_self() defaultManager];
    v10 = sub_1C4F01108();
    v11 = [v9 fileExistsAtPath_];

    if (v11)
    {

      if (qword_1EDDFD028 != -1)
      {
        sub_1C43FE9B4();
      }

      v12 = sub_1C4F00978();
      sub_1C4400920(v12, qword_1EDE2DE10);
      v13 = sub_1C4F00968();
      v14 = sub_1C4F01CC8();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 136315138;
        v24 = sub_1C442CF80(v16, v17, v18, v19, v20, v21, v22, v23, v16);

        *(v15 + 4) = v24;
        v25 = "Loading %s from Core framework.";
LABEL_13:
        _os_log_impl(&dword_1C43F8000, v13, v14, v25, v15, 0xCu);
        sub_1C440962C(v16);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
LABEL_15:

        return v6;
      }

      goto LABEL_14;
    }
  }

  v26 = sub_1C4407544();
  v6 = static InternalPlugin.pathForResource(named:type:)(v26, v27, v28, v29);
  v31 = v30;

  if (v31)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v32 = sub_1C4F00978();
    sub_1C4400920(v32, qword_1EDE2DE10);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CC8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136315138;
      v40 = sub_1C442CF80(v16, v33, v34, v35, v36, v37, v38, v39, v16);

      *(v15 + 4) = v40;
      v25 = "Loading %s from Internal bundle.";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v41 = sub_1C4F00978();
  sub_1C4400920(v41, qword_1EDE2DE10);
  v42 = sub_1C4F00968();
  v43 = sub_1C4F01CE8();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 136315138;
    v53 = sub_1C442CF80(v45, v46, v47, v48, v49, v50, v51, v52, v45);

    *(v44 + 4) = v53;
    _os_log_impl(&dword_1C43F8000, v42, v43, "Resource %s not found.", v44, 0xCu);
    sub_1C440962C(v45);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
  }

  return 0;
}

uint64_t MatchExtractor.init(config:graphStore:phaseSource:sourceIngestor:linker:entityClasses:pipelineType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v16 = a4[3];
  v15 = a4[4];
  sub_1C4418280(a4, v16);
  sub_1C441FEEC();
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = sub_1C440755C(v20, v25);
  v22(v21);
  v23 = sub_1C4A2EAC0(a1, a2, a3, v7, a5, a6, a7, v26, v16, v15);
  sub_1C440962C(a4);
  return v23;
}

uint64_t MatchExtractor.deinit()
{
  sub_1C44540B0(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_config, type metadata accessor for Configuration);
  sub_1C44540B0(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_source, type metadata accessor for Source);
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_graphStore);

  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_sourceIngestor));
  sub_1C44540B0(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_linker, type metadata accessor for Linker);
  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_entityClasses);

  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_matchesDict);

  return v0;
}

uint64_t sub_1C4A2DD78()
{
  MEMORY[0x1C6940010](*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_source), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_source + 8));
  MEMORY[0x1C6940010](43, 0xE100000000000000);
  sub_1C448D934(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_pipelineType));
  return 0;
}

uint64_t sub_1C4A2DDE8()
{
  sub_1C43FBCD4();
  v1[2] = v0;
  v2 = *(*(sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_1C4EFD548();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4A2DEE8, 0, 0);
}

uint64_t sub_1C4A2DEE8()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_sourceIngestor);
  v3 = v1[3];
  v2 = v1[4];
  sub_1C4409678(v1, v3);
  (*(*(*(v2 + 8) + 8) + 56))(v3);
  v4 = *(v0 + 16);
  v5 = v1[3];
  v6 = v1[4];
  sub_1C4409678(v1, v5);
  *(v0 + 88) = *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_pipelineType);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  v8 = *(v6 + 8);
  *v7 = v0;
  v7[1] = sub_1C4A2E064;

  return ResumableStage.executeIfRequired(_:)((v0 + 88), v5, v8);
}

uint64_t sub_1C4A2E064()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 64);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    v7 = sub_1C4A2E790;
  }

  else
  {
    v7 = sub_1C4A2E168;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C4A2E168()
{
  v1 = v0[9];
  v2 = v0[2];
  sub_1C4ACF534();
  if (v1)
  {
    v4 = v0[6];
    v3 = v0[7];
    v5 = v0[3];

    sub_1C43FBDA0();

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_1C4A2E278;

    return sub_1C49E09FC();
  }
}

uint64_t sub_1C4A2E278()
{
  sub_1C43FBDE4();
  v3 = v2;
  v4 = v2[10];
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;

  if (v0)
  {
    v8 = v3[6];
    v7 = v3[7];
    v9 = v3[3];

    sub_1C43FBDA0();

    return v10();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4A2E3C0, 0, 0);
  }
}

void sub_1C4A2E3C0()
{
  v51 = v0;
  v1 = v0[4];
  v2 = *(v0[2] + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_entityClasses);
  sub_1C456902C(&qword_1EC0BD3E0, &qword_1C4F45860);
  sub_1C4A2ED18(&qword_1EDDFA230, MEMORY[0x1E69A92C8]);
  v3 = sub_1C4F00F28();
  v4 = *(v2 + 16);
  if (!v4)
  {
LABEL_13:
    v36 = v0[6];
    v37 = v0[7];
    v38 = v0[2];
    v39 = v0[3];
    v40 = *(v38 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_matchesDict);
    *(v38 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_matchesDict) = v3;

    sub_1C43FBDA0();

    v41();
    return;
  }

  v5 = v0[5];
  v6 = *(v0[2] + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_graphStore);
  v8 = *(v5 + 16);
  v5 += 16;
  v7 = v8;
  v9 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
  v44 = *(v5 + 56);
  v43 = (v5 - 8);
  v47 = v0;
  while (1)
  {
    v45 = v9;
    v46 = v4;
    v11 = v0[6];
    v10 = v0[7];
    v13 = v0[3];
    v12 = v0[4];
    v7(v10);
    (v7)(v11, v10, v12);
    v48 = 3;
    (v7)(v13, v10, v12);
    sub_1C440BAA8(v13, 0, 1, v12);
    v14 = sub_1C44B0950(&v48);
    sub_1C49E1870(v13);
    swift_isUniquelyReferenced_nonNull_native();
    v49 = v3;
    sub_1C457B3EC();
    if (__OFADD__(*(v3 + 16), (v16 & 1) == 0))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v17 = v15;
    v18 = v16;
    sub_1C456902C(&qword_1EC0C19D8, &qword_1C4F45868);
    v19 = sub_1C4F02458();
    v20 = v49;
    if (v19)
    {
      break;
    }

    v21 = v47;
LABEL_8:
    if (v18)
    {
      v25 = v20[7];
      v26 = *(v25 + 8 * v17);
      *(v25 + 8 * v17) = v14;
    }

    else
    {
      v27 = v21[6];
      v28 = v21[4];
      v20[(v17 >> 6) + 8] |= 1 << v17;
      (v7)(v20[6] + v17 * v44, v27, v28);
      *(v20[7] + 8 * v17) = v14;
      v29 = v20[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_20;
      }

      v20[2] = v31;
    }

    v32 = v21[7];
    v34 = v21[3];
    v33 = v21[4];
    v35 = *v43;
    (*v43)(v21[6], v33);
    v50 = 3;
    (v7)(v34, v32, v33);
    sub_1C440BAA8(v34, 0, 1, v33);
    sub_1C44ABA54(&v50, v34);
    sub_1C49E1870(v34);
    v35(v32, v33);
    v0 = v47;
    v3 = v20;
    v9 = v45 + v44;
    v4 = v46 - 1;
    if (v46 == 1)
    {
      goto LABEL_13;
    }
  }

  v21 = v47;
  v22 = v47[6];
  sub_1C457B3EC();
  if ((v18 & 1) == (v24 & 1))
  {
    v17 = v23;
    goto LABEL_8;
  }

  v42 = v47[4];

  sub_1C4F029F8();
}

uint64_t sub_1C4A2E790()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[3];

  sub_1C43FBDA0();

  return v5();
}

uint64_t MatchExtractor.__allocating_init(config:graphStore:phaseSource:sourceIngestor:linker:entityClasses:pipelineType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  v19 = a4[3];
  v18 = a4[4];
  sub_1C4418280(a4, v19);
  sub_1C441FEEC();
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = sub_1C440755C(v23, v28);
  v25(v24);
  v26 = sub_1C4A2EAC0(a1, a2, a3, v8, a5, a6, a7, v17, v19, v18);
  sub_1C440962C(a4);
  return v26;
}

uint64_t MatchExtractor.__deallocating_deinit()
{
  MatchExtractor.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4A2E9DC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442E8C4;

  return sub_1C4A2DDE8();
}

uint64_t sub_1C4A2EA6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ConstructionPhase.description.getter(a1, WitnessTable);
}

uint64_t sub_1C4A2EAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = (a8 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_sourceIngestor);
  v18[3] = a9;
  v18[4] = a10;
  v19 = sub_1C4422F90(v18);
  (*(*(a9 - 8) + 32))(v19, a4, a9);
  LOBYTE(a7) = *a7;
  sub_1C4A2F020(a1, a8 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_config, type metadata accessor for Configuration);
  *(a8 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_graphStore) = a2;
  sub_1C4A2F020(a3, a8 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_source, type metadata accessor for Source);
  sub_1C4A2F020(a5, a8 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_linker, type metadata accessor for Linker);
  *(a8 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_entityClasses) = a6;
  *(a8 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_matchesDict) = MEMORY[0x1E69E7CC8];
  *(a8 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_pipelineType) = a7;
  return a8;
}

uint64_t sub_1C4A2EC1C(uint64_t a1)
{
  result = sub_1C4A2ED18(&qword_1EC0C19E0, type metadata accessor for MatchExtractor);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for MatchExtractor()
{
  result = qword_1EC0C19F0;
  if (!qword_1EC0C19F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A2ECC0(uint64_t a1)
{
  result = sub_1C4A2ED18(&qword_1EC0C19E8, type metadata accessor for MatchExtractor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A2ED18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4A2ED68()
{
  result = type metadata accessor for Configuration();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for Source();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for Linker();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of MatchExtractor.run()()
{
  v2 = *(*v0 + 184);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442E8C4;

  return v6();
}

uint64_t sub_1C4A2F020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C4A2F088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Configuration();
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = *(a1 + *(type metadata accessor for PhaseStores() + 24));
  matched = type metadata accessor for MatchExtractorService();
  *(a2 + matched[7]) = v11;
  sub_1C4A31C54(a1, v10, type metadata accessor for Configuration);

  sub_1C4EF9888();
  v13 = sub_1C4EF98F8();
  sub_1C43FBCE0(v13);
  v15 = *(v14 + 8);
  v15(v10, v13);
  sub_1C4A31C54(a1, v10, type metadata accessor for Configuration);
  v16 = matched[5];
  sub_1C4EF9888();
  v15(v10, v13);
  v17 = [objc_opt_self() defaultManager];
  sub_1C4EF98E8();
  v18 = sub_1C4F01108();

  LODWORD(v10) = [v17 fileExistsAtPath_];

  if (v10)
  {
    v19 = sub_1C4EF9348();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    sub_1C4EF9338();
    sub_1C4837F7C();
    v23 = v22;

    result = sub_1C440D65C();
    v25 = MEMORY[0x1E69E7CD0];
    if (v23)
    {
      v25 = v23;
    }
  }

  else
  {
    result = sub_1C440D65C();
    v25 = MEMORY[0x1E69E7CD0];
  }

  *(a2 + matched[6]) = v25;
  return result;
}

uint64_t sub_1C4A2F2BC(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 64);
  v5 = (v2 + 63) >> 6;
  while (v4)
  {
    v6 = v1;
LABEL_10:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    if (*(*(*(result + 56) + ((v6 << 9) | (8 * v7))) + 16))
    {
      return 0;
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= v5)
    {
      return 1;
    }

    v4 = *(result + 64 + 8 * v6);
    ++v1;
    if (v4)
    {
      v1 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4A2F358(uint64_t a1)
{
  matched = type metadata accessor for MatchExtractorService();
  v5 = sub_1C43FBD18(matched);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C4EF9378();
  v12 = sub_1C43FBD18(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = sub_1C4EF93D8();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_1C4EF93C8();
  sub_1C4EF9368();
  sub_1C4EF9388();
  v43 = a1;
  sub_1C456902C(&qword_1EC0BDF80, &unk_1C4F45940);
  sub_1C4A319F8();
  v18 = sub_1C4EF93B8();
  if (v2)
  {

    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDE2DE10);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CF8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C43F8000, v21, v22, "Linked pairs unsuccessfully saved.", v23, 2u);
      sub_1C43FBE2C();
    }
  }

  else
  {
    v25 = v18;
    v26 = v19;
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v27 = sub_1C4F00978();
    sub_1C442B738(v27, qword_1EDE2DE10);
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CF8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      sub_1C440BE40(v30);
      _os_log_impl(&dword_1C43F8000, v28, v29, "Saving linked pairs to json...", v26, 2u);
      v26 = v25;
      v25 = v1;
      sub_1C43FBE2C();
    }

    sub_1C4EF9AA8();
    sub_1C4407580();
    sub_1C4A31C54(v1, v10, v31);
    v32 = sub_1C4F00968();
    v33 = sub_1C4F01CF8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v43 = v41;
      *v34 = 136315138;
      sub_1C4EF98F8();
      v42 = v26;
      sub_1C4A31C0C(&qword_1EDDFF9E8, MEMORY[0x1E6968FB0]);
      v35 = sub_1C4F02858();
      v37 = v36;
      sub_1C441A024();
      sub_1C4A31CB4(v10, v38);
      v39 = sub_1C441D828(v35, v37, &v43);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_1C43F8000, v32, v33, "Linked pairs successfully saved to %s", v34, 0xCu);
      sub_1C440962C(v41);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
      sub_1C4434000(v25, v42);
    }

    else
    {
      sub_1C4434000(v25, v26);

      sub_1C441A024();
      return sub_1C4A31CB4(v10, v40);
    }
  }
}

void sub_1C4A2F810(void *a1, uint64_t *a2, uint64_t a3)
{
  v401 = a3;
  v356 = a1;
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2C8(&v348 - v9);
  v10 = sub_1C4EFEEF8();
  v11 = sub_1C43FFAE0(v10, &v379);
  v387 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v16 - v15);
  v17 = sub_1C4F00DD8();
  v18 = sub_1C43FFAE0(v17, &v395);
  v402 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v23 - v22);
  v24 = sub_1C4F00DC8();
  v25 = sub_1C43FFAE0(v24, &v393);
  v381 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD230();
  sub_1C43FD2C8(v30);
  v31 = sub_1C4F01188();
  v32 = sub_1C43FFAE0(v31, &v397);
  v380 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v37 - v36);
  v396 = type metadata accessor for ExtractedMatch();
  v38 = sub_1C43FBCE0(v396);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD230();
  sub_1C43FD2C8(v43);
  v44 = type metadata accessor for Source();
  v45 = sub_1C43FBD18(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD230();
  sub_1C43FD2C8(v49);
  matched = type metadata accessor for MatchExtractorService();
  v50 = sub_1C43FBCE0(matched);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBCC4();
  v390 = v54 - v53;
  v55 = sub_1C456902C(&qword_1EC0C1A18, &unk_1C4F45960);
  v56 = sub_1C43FBD18(v55);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FD230();
  v63 = sub_1C43FD2C8(v62);
  v64 = type metadata accessor for EntityTriple(v63);
  v65 = sub_1C43FFAE0(v64, v407);
  v384 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v348 - v71;
  v73 = type metadata accessor for ConstructionGraphTriple(0);
  v74 = sub_1C43FFAE0(v73, v405);
  v376 = v75;
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v74);
  sub_1C43FBCC4();
  v80 = v79 - v78;
  v81 = type metadata accessor for EntityMatch(0);
  v82 = sub_1C43FFAE0(v81, &v414);
  v397 = v83;
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v82);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v87 - v86);
  v88 = sub_1C4EFD548();
  v403 = *(v88 - 8);
  v89 = v403[8];
  MEMORY[0x1EEE9AC00](v88);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v90);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v91);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v92);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v348 - v94;
  v96 = sub_1C43FC034();
  v98 = sub_1C456902C(v96, v97);
  v99 = v98 - 8;
  v100 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98);
  v102 = &v348 - v101;
  sub_1C445FFF0(a2, &v348 - v101, &qword_1EC0C1A20, &unk_1C4F4E130);
  v103 = *&v102[*(v99 + 56)];
  v104 = v403;
  v105 = v403[1];
  v389 = v403 + 1;
  v388 = v105;
  v105(v102, v88);
  sub_1C445FFF0(a2, v102, &qword_1EC0C1A20, &unk_1C4F4E130);
  v106 = *&v102[*(v99 + 56)];

  v107 = v104[4];
  v386 = v95;
  v108 = sub_1C4409F48();
  v109(v108);
  v395 = *(v103 + 16);
  if (!v395)
  {
LABEL_107:

    sub_1C440094C();
    v347();
    return;
  }

  v391 = v88;
  v110 = *(v397 + 80);
  sub_1C43FC354();
  v394 = *(matched + 28);
  v393 = v111 + v112;
  v350 = v387 + 8;
  v362 = v104 + 2;
  v361 = v380 + 8;
  v360 = v402 + 8;
  v359 = v381 + 16;
  v358 = v381 + 8;
  sub_1C44051DC();
  v113 = v399;
  sub_1C4415B7C();
  v392 = v114;
  v372 = v117;
  while (v116 < *(v114 + 16))
  {
    v118 = *(v115 + 72);
    v402 = v116;
    sub_1C4A31C54(v393 + v118 * v116, v113, type metadata accessor for EntityMatch);
    v119 = v394;
    v120 = *(a2 + v394);
    v121 = v398;
    v122 = *(v398 + 20);

    v123 = sub_1C44FEDEC(v113 + v122);

    v124 = *(v121 + 24);
    v125 = sub_1C4EFEFF8();
    v126 = *(a2 + v119);

    v403 = v123;
    v127 = v113 + v124;
    if (v125)
    {
      v128 = GraphStore.loadConstructionGraphTriples(subject:)(v127);

      v129 = *(v128 + 16);
      if (!v129)
      {
        goto LABEL_17;
      }

      sub_1C443FE70(MEMORY[0x1E69E7CC0]);
      v113 = v408;
      sub_1C4425E24(v404);
      v130 = v377;
      do
      {
        sub_1C43FF44C();
        sub_1C4A31C54(a2, v80, v131);
        sub_1C444FEAC();
        if (v132)
        {
          sub_1C44252F0();
          v130 = v377;
          v113 = v408;
        }

        v412 = v130;
        v413 = sub_1C4A31C0C(&qword_1EC0BE158, type metadata accessor for ConstructionGraphTriple);
        sub_1C4422F90(&v410);
        sub_1C43FF44C();
        sub_1C4A31C54(v80, v133, v134);
        sub_1C4416298();
        sub_1C4A31CB4(v80, type metadata accessor for ConstructionGraphTriple);
        a2 = (a2 + v128);
        --v129;
      }

      while (v129);
    }

    else
    {
      v135 = sub_1C44FEDEC(v127);

      v136 = *(v135 + 16);
      if (!v136)
      {
LABEL_17:

        v113 = MEMORY[0x1E69E7CC0];
        v142 = v400;
        goto LABEL_18;
      }

      sub_1C443FE70(MEMORY[0x1E69E7CC0]);
      v113 = v408;
      sub_1C4425E24(v406);
      v137 = v385;
      do
      {
        sub_1C442CF9C();
        sub_1C4A31C54(a2, v72, v138);
        sub_1C444FEAC();
        if (v132)
        {
          sub_1C44252F0();
          v137 = v385;
          v113 = v408;
        }

        v412 = v137;
        v413 = sub_1C4A31C0C(&qword_1EC0BE208, type metadata accessor for EntityTriple);
        sub_1C4422F90(&v410);
        sub_1C442CF9C();
        sub_1C4A31C54(v72, v139, v140);
        sub_1C4416298();
        sub_1C4412160();
        sub_1C4A31CB4(v72, v141);
        a2 = (a2 + v135);
        --v136;
      }

      while (v136);
    }

    sub_1C44051DC();
    sub_1C4415B7C();
    v123 = v403;
LABEL_18:
    if (*(v123 + 16) && *(v113 + 16))
    {
      sub_1C440BAA8(v142, 1, 1, v396);
      sub_1C4EFD4C8();
      sub_1C4A31C0C(&unk_1EDDFE830, MEMORY[0x1E69A92C8]);
      sub_1C442BD48();
      sub_1C4F01578();
      sub_1C442BD48();
      sub_1C4F01578();
      v143 = v103;
      v144 = v409;
      v145 = v410 == v408 && v411 == v409;
      if (v145)
      {
        sub_1C440094C();
        v152();
      }

      else
      {
        v146 = sub_1C4F02938();
        sub_1C440094C();
        v147();

        if ((v146 & 1) == 0)
        {
          _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
          sub_1C442BD48();
          sub_1C4F01578();
          sub_1C442BD48();
          sub_1C4F01578();
          v148 = v409;
          if (v410 == v408 && v411 == v409)
          {
            sub_1C43FC034();
            sub_1C440094C();
            v196();
          }

          else
          {
            v150 = sub_1C4F02938();
            sub_1C440094C();
            v151();

            if ((v150 & 1) == 0)
            {
LABEL_44:

              v194 = v396;
              a2 = v383;
              goto LABEL_45;
            }
          }

          sub_1C4407580();
          sub_1C44149D4(&v411);
          sub_1C4A31C54(v197, v198, v199);
          sub_1C44F40EC();
          v200 = v352;
          sub_1C4EFEBF8();
          v201 = v354;
          v202 = v353;
          sub_1C440BAA8(v354, 1, 1, v353);
          sub_1C4409F48();
          sub_1C47CB9E0();
          v381 = v203;
          v205 = v204;

          sub_1C4420C3C(v201, &qword_1EC0B9A08, &unk_1C4F107B0);
          sub_1C4402C08(&v376);
          v206(v200, v202);
          sub_1C441A024();
          sub_1C4A31CB4(v148, v207);
          v387 = v205;
          if (!v205)
          {
            sub_1C4409A34();
            goto LABEL_44;
          }

          sub_1C4407580();
          sub_1C4A31C54(v401, v148, v208);
          sub_1C4812C40();
          sub_1C47CB318();
          v380 = v209;
          v211 = v210;

          sub_1C441A024();
          sub_1C4A31CB4(v148, v212);
          a2 = v383;
          v375 = v211;
          if (v211)
          {
            _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
            v213 = v403;
            if (!v403[2])
            {
              goto LABEL_114;
            }

            v214 = *(v384 + 80);
            sub_1C43FC354();
            sub_1C442CF9C();
            v216 = v349;
            sub_1C4A31C54(v213 + v215, v349, v217);

            sub_1C440E5B8();
            sub_1C44149D4(&v375);
            sub_1C4A31C54(v218, v219, v220);
            sub_1C4412160();
            sub_1C4A31CB4(v216, v221);
            sub_1C441101C();
            if (__OFSUB__(v216, 1))
            {
              goto LABEL_115;
            }

            if (!*(v113 + 16))
            {
              goto LABEL_116;
            }

            sub_1C4405EEC();
            if (!v145 & v132)
            {
              v223 = 0;
            }

            else
            {
              v223 = v222;
            }

            sub_1C442E860(v113 + 32, &v410);
            sub_1C4409678(&v410, v412);
            sub_1C441C3C0();
            v224 = sub_1C442BD48();
            v225(v224);
            v226 = v408;
            sub_1C440962C(&v410);
            sub_1C4435204();
            v228 = *(v227 - 256);
            v229 = v351;
            v230 = (v351 + v228[8]);
            v231 = v228[5];
            sub_1C4402C08(&v391);
            v232(&v229[v231], v355, v391);
            v233 = &v229[v228[6]];
            v234 = v387;
            *v233 = v381;
            v233[1] = v234;
            v233[2] = v223;
            v233[3] = 0;
            v235 = &v229[v228[7]];
            v236 = v375;
            *v235 = v380;
            v235[1] = v236;
            v235[2] = v226;
            v235[3] = 0;
            *v230 = 0;
            v230[1] = 0;
            *&v229[v228[9]] = v3;
            v237 = MEMORY[0x1E69E7CC0];
            v238 = *(MEMORY[0x1E69E7CC0] + 16);

            if (v238)
            {
              if (!v237[2])
              {
                goto LABEL_117;
              }

              v239 = v237[4];
              v371 = v237[5];
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            }

            else
            {
              v239 = 0;
              v371 = 0xE000000000000000;
            }

            v314 = v237[2];

            if (v314)
            {
              if (!v237[2])
              {
                goto LABEL_118;
              }

              v315 = v237[5];
              v370 = v237[4];
              sub_1C441B7D8(v315);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            }

            else
            {
              v370 = 0;
              v403 = 0xE000000000000000;
            }

            sub_1C447F204();
            v316 = sub_1C4EFD3D8();
            MEMORY[0x1C6940010](v316);

            sub_1C4410C38();
            MEMORY[0x1C6940010](v381, v387);
            sub_1C4410C38();
            MEMORY[0x1C6940010](v239, v371);
            sub_1C4410C38();
            MEMORY[0x1C6940010](v380, v375);
            sub_1C4410C38();
            MEMORY[0x1C6940010](v370, v403);
            sub_1C4410C38();
            sub_1C4F01A98();
            v317 = v365;
            sub_1C4F01178();
            v318 = sub_1C4F01148();
            v320 = v319;
            sub_1C4402C08(&v390);
            v321(v317, v366);
            if (v320 >> 60 == 15)
            {
              goto LABEL_120;
            }

            sub_1C4409A34();

            sub_1C440F944();
            v323 = sub_1C4A31C0C(&qword_1EDDFEAD0, v322);
            sub_1C441B7D8(v323);
            sub_1C44104E0();
            v325 = *(v324 - 256);
            sub_1C4F00DB8();
            v326 = v318;
            v327 = sub_1C43FC034();
            sub_1C44344B8(v327, v328);
            v329 = sub_1C43FC034();
            v330 = v378;
            sub_1C4498FD8(v329, v331);
            v378 = v330;
            v332 = sub_1C43FC034();
            sub_1C441DFEC(v332, v333);
            v334 = v367;
            sub_1C4F00DA8();
            sub_1C4402C08(&v389);
            v335(v229, v325);
            sub_1C4402C08(&v388);
            v336 = v363;
            v337 = v364;
            v338(v363, v334, v364);
            v294 = sub_1C44D5F88(v336);
            v340 = v339;
            v341 = sub_1C4EF9A48();
            sub_1C441B7D8(v341);
            v343 = v342;
            sub_1C4434000(v294, v340);
            sub_1C441DFEC(v326, v320);
            sub_1C4402C08(&v387);
            v344(v367, v337);
            sub_1C440094C();
            v345();
            v103 = v400;
            sub_1C4420C3C(v400, &qword_1EC0C1A18, &unk_1C4F45960);
            v346 = v351;
            *v351 = v403;
            v346[1] = v343;
            p_matched = &matched;
            goto LABEL_90;
          }

          sub_1C4409A34();

          v194 = v396;
LABEL_45:
          v195 = v382;
          v103 = v400;
LABEL_91:
          sub_1C445FFF0(v103, v195, &qword_1EC0C1A18, &unk_1C4F45960);
          if (sub_1C44157D4(v195, 1, v194) == 1)
          {
            sub_1C4420C3C(v103, &qword_1EC0C1A18, &unk_1C4F45960);

            sub_1C44326A8();
            sub_1C4420C3C(v195, &qword_1EC0C1A18, &unk_1C4F45960);
            sub_1C44051DC();
            sub_1C4415B7C();
          }

          else
          {
            sub_1C4A31B38(v195, a2);
            v304 = *(v401 + *(matched + 24));
            v305 = *a2;
            v306 = a2[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v307 = sub_1C442BD48();
            v103 = sub_1C4499AD0(v307, v308, v304);

            if ((v103 & 1) == 0)
            {
              sub_1C4407580();
              v103 = v390;
              sub_1C4A31C54(v401, v390, v309);
              v310 = a2 + *(v396 + 20);
              v311 = sub_1C4EFD3D8();
              sub_1C4A31594(v356, a2, v311, v312);

              sub_1C441A024();
              sub_1C4A31CB4(v103, v313);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C44869B4(&v410, v305, v306);
            }

            sub_1C4A31CB4(a2, type metadata accessor for ExtractedMatch);
            sub_1C4420C3C(v400, &qword_1EC0C1A18, &unk_1C4F45960);
            sub_1C44326A8();
            sub_1C4415B7C();
            sub_1C44051DC();
          }

          goto LABEL_96;
        }
      }

      sub_1C4407580();
      sub_1C44051DC();
      sub_1C44149D4(&v411);
      sub_1C4A31C54(v153, v154, v155);
      sub_1C44F40EC();
      sub_1C47CAB88();
      v157 = v156;
      v159 = v158;

      sub_1C441A024();
      sub_1C4A31CB4(v144, v160);
      if (!v159)
      {
        goto LABEL_44;
      }

      v387 = v157;
      sub_1C4407580();
      sub_1C4A31C54(v143, v144, v161);
      sub_1C4812C40();
      sub_1C47CAB88();
      v381 = v162;
      v164 = v163;

      sub_1C441A024();
      sub_1C4A31CB4(v144, v165);
      v380 = v164;
      if (!v164)
      {

        goto LABEL_44;
      }

      v375 = v159;
      sub_1C4A31C54(v143, v144, type metadata accessor for MatchExtractorService);
      sub_1C44F40EC();
      sub_1C47CA8A4();
      v167 = v166;

      sub_1C4A31CB4(v144, type metadata accessor for MatchExtractorService);
      sub_1C4A31C54(v143, v144, type metadata accessor for MatchExtractorService);
      sub_1C4812C40();
      sub_1C47CA8A4();
      v169 = v168;
      v170 = v403;

      sub_1C4A31CB4(v390, type metadata accessor for MatchExtractorService);
      sub_1C4EFD4C8();
      if (!v170[2])
      {
        goto LABEL_109;
      }

      v171 = *(v384 + 80);
      sub_1C43FC354();
      sub_1C442CF9C();
      v173 = v357;
      sub_1C4A31C54(v170 + v172, v357, v174);

      sub_1C440E5B8();
      sub_1C44149D4(&v386);
      sub_1C4A31C54(v175, v176, v177);
      sub_1C4412160();
      sub_1C4A31CB4(v173, v178);
      sub_1C441101C();
      if (__OFSUB__(v173, 1))
      {
        goto LABEL_110;
      }

      v403 = v169;
      sub_1C4405EEC();
      if (!v145 & v132)
      {
        v180 = 0;
      }

      else
      {
        v180 = v179;
      }

      sub_1C456902C(&qword_1EC0C1A28, &unk_1C4F45970);
      inited = swift_initStackObject();
      sub_1C442FFB4(inited);
      *(v182 + 40) = 0xE600000000000000;
      *(v182 + 48) = v167;
      sub_1C456902C(&qword_1EC0B9498, &qword_1C4F0F020);
      v371 = sub_1C4F00F28();
      if (!*(v113 + 16))
      {
        goto LABEL_111;
      }

      v370 = v180;
      sub_1C442E860(v113 + 32, &v410);
      v184 = v412;
      v183 = v413;
      sub_1C4409678(&v410, v412);
      sub_1C441C3C0();
      v185(v184, v183);
      v369 = v408;
      v186 = swift_initStackObject();
      sub_1C442FFB4(v186);
      v187 = v403;
      *(v188 + 40) = 0xE600000000000000;
      *(v188 + 48) = v187;
      v189 = sub_1C4F00F28();
      sub_1C441B7D8(v189);
      sub_1C440962C(&v410);
      v190 = *(v399 + *(v398 + 40));
      if (v190)
      {
        v191 = sub_1C44735D4(0x6E6F73616572, 0xE600000000000000, v190);
        v193 = v192;
      }

      else
      {
        v191 = 0;
        v193 = 0;
      }

      v240 = v375;
      sub_1C4435204();
      v242 = *(v241 - 256);
      v243 = v374;
      v244 = (v374 + v242[8]);
      v245 = v242[5];
      sub_1C4402C08(&v391);
      v368 = v246;
      v247(v243 + v246, v379, v391);
      v248 = (v243 + v242[6]);
      *v248 = v387;
      v248[1] = v240;
      v249 = v371;
      v248[2] = v370;
      v248[3] = v249;
      v250 = (v243 + v242[7]);
      v251 = v380;
      *v250 = v381;
      v250[1] = v251;
      v252 = v403;
      v250[2] = v369;
      v250[3] = v252;
      *v244 = v191;
      v244[1] = v193;
      v253 = v249;
      *(v243 + v242[9]) = v3;
      if (v249)
      {
        v254 = MEMORY[0x1E69E7CC0];
        if (*(v249 + 16) && (v255 = sub_1C445FAA8(0x736C69616D65, 0xE600000000000000), (v256 & 1) != 0))
        {
          sub_1C44045A0(v255, *(v253 + 56));
        }

        else
        {
          v125 = v254;
        }
      }

      else
      {
        v254 = MEMORY[0x1E69E7CC0];
        v125 = MEMORY[0x1E69E7CC0];
      }

      v257 = *(v125 + 16);

      if (v257)
      {
        if (v253 && *(v253 + 16) && (v258 = sub_1C445FAA8(0x736C69616D65, 0xE600000000000000), (v259 & 1) != 0))
        {
          sub_1C44045A0(v258, *(v253 + 56));
        }

        else
        {
          v125 = v254;
        }

        if (!*(v125 + 16))
        {
          goto LABEL_112;
        }

        v260 = *(v125 + 40);
        v371 = *(v125 + 32);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        v371 = 0;
        v260 = 0xE000000000000000;
      }

      v261 = v403;
      if (v403 && v403[2] && (v262 = sub_1C445FAA8(0x736C69616D65, 0xE600000000000000), (v263 & 1) != 0))
      {
        sub_1C44045A0(v262, v261[7]);
      }

      else
      {
        v125 = v254;
      }

      v264 = *(v125 + 16);

      if (v264)
      {
        v265 = v403;
        if (v403 && v403[2] && (v266 = sub_1C445FAA8(0x736C69616D65, 0xE600000000000000), (v267 & 1) != 0))
        {
          sub_1C44045A0(v266, v265[7]);
        }

        else
        {
          v125 = v254;
        }

        if (!*(v125 + 16))
        {
          goto LABEL_113;
        }

        v268 = v260;
        v269 = *(v125 + 32);
        sub_1C441B7D8(*(v125 + 40));
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        v268 = v260;
        v269 = 0;
        v403 = 0xE000000000000000;
      }

      sub_1C447F204();
      v270 = sub_1C4EFD3D8();
      MEMORY[0x1C6940010](v270);

      sub_1C4410C38();
      MEMORY[0x1C6940010](v387, v375);
      sub_1C4410C38();
      MEMORY[0x1C6940010](v371, v268);
      sub_1C4410C38();
      MEMORY[0x1C6940010](v381, v380);
      sub_1C4410C38();
      MEMORY[0x1C6940010](v269, v403);
      sub_1C4410C38();
      sub_1C4F01A98();
      v271 = v365;
      sub_1C4F01178();
      v272 = sub_1C4F01148();
      v274 = v273;
      sub_1C4402C08(&v390);
      v275(v271, v366);
      if (v274 >> 60 == 15)
      {
        goto LABEL_119;
      }

      sub_1C4409A34();

      sub_1C440F944();
      sub_1C4A31C0C(&qword_1EDDFEAD0, v276);
      sub_1C44104E0();
      v278 = *(v277 - 256);
      sub_1C43FC034();
      sub_1C4F00DB8();
      v279 = sub_1C4409F48();
      sub_1C44344B8(v279, v280);
      v281 = sub_1C4409F48();
      v282 = v378;
      sub_1C4498FD8(v281, v283);
      v378 = v282;
      v284 = sub_1C4409F48();
      sub_1C441DFEC(v284, v285);
      v403 = v272;
      v286 = v367;
      sub_1C43FC034();
      sub_1C4F00DA8();
      sub_1C4402C08(&v389);
      v287(v268, v278);
      sub_1C4402C08(&v388);
      v288 = v363;
      v289 = sub_1C442BD48();
      v290 = v364;
      v291(v289);
      v292 = sub_1C44D5F88(v288);
      v294 = v293;
      v387 = sub_1C4EF9A48();
      v296 = v295;
      sub_1C4434000(v292, v294);
      v297 = sub_1C4409A34();
      sub_1C441DFEC(v297, v274);
      sub_1C4402C08(&v387);
      v298(v286, v290);
      sub_1C440094C();
      v299();
      v103 = v400;
      sub_1C4420C3C(v400, &qword_1EC0C1A18, &unk_1C4F45960);
      v300 = v374;
      *v374 = v387;
      v300[1] = v296;
      p_matched = &v384;
LABEL_90:
      sub_1C44149D4(p_matched);
      sub_1C4A31B38(v302, v303);
      v194 = v396;
      sub_1C440BAA8(v294, 0, 1, v396);
      sub_1C4A31B9C(v294, v103);
      a2 = v383;
      v195 = v382;
      goto LABEL_91;
    }

    sub_1C44326A8();
    v115 = v397;
LABEL_96:
    v116 = v402 + 1;
    v114 = v392;
    if (v402 + 1 == v395)
    {
      goto LABEL_107;
    }
  }

  __break(1u);
LABEL_109:
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
}

uint64_t sub_1C4A31594(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ExtractedMatch();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = sub_1C4663244(a3, a4, *a1);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4A31C54(a2, v13, type metadata accessor for ExtractedMatch);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C458E95C(0, *(v15 + 16) + 1, 1, v15);
    v15 = v22;
  }

  v17 = *(v15 + 16);
  v16 = *(v15 + 24);
  if (v17 >= v16 >> 1)
  {
    sub_1C458E95C(v16 > 1, v17 + 1, 1, v15);
    v15 = v23;
  }

  *(v15 + 16) = v17 + 1;
  v18 = *(v9 + 80);
  sub_1C43FC354();
  sub_1C4A31B38(v13, v15 + v19 + *(v9 + 72) * v17);
  v20 = *a1;
  swift_isUniquelyReferenced_nonNull_native();
  v24 = *a1;
  result = sub_1C4662724();
  *a1 = v24;
  return result;
}

uint64_t sub_1C4A31734(void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  v35 = v7;
  v36 = v3;
  v37 = a1;
  if (v6)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v6)) | (v8 << 6);
      v11 = (*(a2 + 48) + 16 * v10);
      v13 = *v11;
      v12 = v11[1];
      v14 = *(*(a2 + 56) + 8 * v10);
      v15 = *a1;
      v16 = *(*a1 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (!v16)
      {
        goto LABEL_11;
      }

LABEL_8:
      v17 = sub_1C445FAA8(v13, v12);
      if (v18)
      {
        v40 = *(*(v15 + 56) + 8 * v17);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
LABEL_11:
        v40 = MEMORY[0x1E69E7CC0];
      }

      sub_1C49D4B18(v14);
      v19 = *a1;
      swift_isUniquelyReferenced_nonNull_native();
      v20 = *a1;
      v39 = *a1;
      v21 = v13;
      v22 = sub_1C445FAA8(v13, v12);
      if (__OFADD__(*(v20 + 16), (v23 & 1) == 0))
      {
        break;
      }

      v24 = v22;
      v25 = v23;
      sub_1C456902C(&qword_1EC0BA898, &unk_1C4F45950);
      if (sub_1C4F02458())
      {
        v26 = sub_1C445FAA8(v21, v12);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_28;
        }

        v24 = v26;
      }

      if (v25)
      {
        v28 = v39[7];
        v29 = *(v28 + 8 * v24);
        *(v28 + 8 * v24) = v40;
      }

      else
      {
        v39[(v24 >> 6) + 8] |= 1 << v24;
        v30 = (v39[6] + 16 * v24);
        *v30 = v21;
        v30[1] = v12;
        *(v39[7] + 8 * v24) = v40;
        v31 = v39[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_27;
        }

        v39[2] = v33;
      }

      v6 &= v6 - 1;
      v3 = v36;
      *v37 = v39;
      a1 = v37;
      v7 = v35;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_1C4F029F8();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_4:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for MatchExtractorService()
{
  result = qword_1EC0C1A30;
  if (!qword_1EC0C1A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C4A319F8()
{
  result = qword_1EC0C1A00;
  if (!qword_1EC0C1A00)
  {
    sub_1C4572308(&qword_1EC0BDF80, &unk_1C4F45940);
    sub_1C4A31A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1A00);
  }

  return result;
}

unint64_t sub_1C4A31A84()
{
  result = qword_1EC0C1A08;
  if (!qword_1EC0C1A08)
  {
    sub_1C4572308(&unk_1EC0C2EB0, &qword_1C4F32390);
    sub_1C4A31C0C(&qword_1EC0C1A10, type metadata accessor for ExtractedMatch);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1A08);
  }

  return result;
}

uint64_t sub_1C4A31B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedMatch();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4A31B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C1A18, &unk_1C4F45960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4A31C0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4A31C54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4A31CB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1C4A31D34()
{
  sub_1C4EF98F8();
  if (v0 <= 0x3F)
  {
    sub_1C4A31DD0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GraphStore();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4A31DD0()
{
  if (!qword_1EC0C1A40)
  {
    v0 = sub_1C4F01B38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0C1A40);
    }
  }
}

void *sub_1C4A31E28(uint64_t a1, uint64_t a2)
{
  v58 = sub_1C4EFF0C8();
  v5 = *(v58 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v47[1] = v2;
    v64 = MEMORY[0x1E69E7CC0];
    sub_1C459D768(0, v8, 0);
    v9 = v64;
    v10 = sub_1C486C288(a1);
    v12 = v11;
    v14 = v13;
    v15 = a1 + 56;
    result = objc_opt_self();
    v17 = v12;
    v18 = v10;
    v19 = 0;
    v47[0] = a2;
    v54 = (a2 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal_config);
    v55 = result;
    v56 = v5;
    v52 = v5 + 8;
    v53 = v5 + 16;
    v48 = a1 + 64;
    v49 = v8;
    v50 = a1 + 56;
    v51 = a1;
    if ((v10 & 0x8000000000000000) == 0)
    {
      while (v18 < 1 << *(a1 + 32))
      {
        v63 = v14;
        v20 = v18 >> 6;
        v21 = 1 << v18;
        if ((*(v15 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v17)
        {
          goto LABEL_27;
        }

        v60 = v18;
        v61 = v17;
        v59 = v19;
        v22 = v56;
        v23 = *(a1 + 48) + *(v56 + 72) * v18;
        v24 = *(v56 + 16);
        v62 = v9;
        v26 = v57;
        v25 = v58;
        v24(v57, v23, v58);
        v27 = *v54;
        v28 = v54[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v29 = sub_1C4EFF068();
        v31 = v30;
        v32 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
        v33 = sub_1C4673B1C(v27, v28, 0x69616D45656D6173, 0xEF6E69616D6F446CLL, v29, v31);
        v34 = [v55 featureValueWithInt64_];
        v35 = v26;
        v9 = v62;
        result = (*(v22 + 8))(v35, v25);
        v64 = v9;
        v37 = *(v9 + 16);
        v36 = *(v9 + 24);
        if (v37 >= v36 >> 1)
        {
          result = sub_1C459D768((v36 > 1), v37 + 1, 1);
          v9 = v64;
        }

        *(v9 + 16) = v37 + 1;
        v38 = v9 + 16 * v37;
        *(v38 + 32) = v33;
        *(v38 + 40) = v34;
        if (v63)
        {
          goto LABEL_31;
        }

        v15 = v50;
        a1 = v51;
        v18 = 1 << *(v51 + 32);
        result = v60;
        if (v60 >= v18)
        {
          goto LABEL_28;
        }

        v39 = *(v50 + 8 * v20);
        if ((v39 & v21) == 0)
        {
          goto LABEL_29;
        }

        if (*(v51 + 36) != v61)
        {
          goto LABEL_30;
        }

        v40 = v39 & (-2 << (v60 & 0x3F));
        if (v40)
        {
          v18 = __clz(__rbit64(v40)) | v60 & 0x7FFFFFFFFFFFFFC0;
          v41 = v49;
        }

        else
        {
          v42 = v20 << 6;
          v43 = v20 + 1;
          v41 = v49;
          v44 = (v48 + 8 * v20);
          while (v43 < (v18 + 63) >> 6)
          {
            v46 = *v44++;
            v45 = v46;
            v42 += 64;
            ++v43;
            if (v46)
            {
              result = sub_1C440951C(v60, v61, 0);
              v18 = __clz(__rbit64(v45)) + v42;
              goto LABEL_19;
            }
          }

          result = sub_1C440951C(v60, v61, 0);
        }

LABEL_19:
        v19 = v59 + 1;
        if (v59 + 1 == v41)
        {

          return v9;
        }

        v14 = 0;
        v17 = *(a1 + 36);
        if ((v18 & 0x8000000000000000) != 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1C4A32204(void *a1, void *a2)
{
  v4 = sub_1C4EFF0C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v35 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v35 - v12;
  v13 = a2[2];
  if (!v13)
  {
    return 1;
  }

  v14 = a1[2];
  if (!v14)
  {
    return 1;
  }

  if (v13 >= v14)
  {
    v15 = a1;
  }

  else
  {
    v15 = a2;
  }

  if (v13 < v14)
  {
    a2 = a1;
  }

  v16 = v15 + 7;
  v17 = 1 << *(v15 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v15[7];
  v20 = (v17 + 63) >> 6;
  v44 = v5 + 16;
  v39 = v5 + 32;
  v42 = a2 + 7;
  v21 = (v5 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v45 = a2;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v23 = 0;
  v36 = v20;
  v37 = v15 + 7;
  v38 = v5;
  v40 = v15;
  if (v19)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v20)
    {

      return 1;
    }

    v19 = v16[v24];
    ++v23;
    if (v19)
    {
      v23 = v24;
      do
      {
LABEL_16:
        v25 = v15[6];
        v43 = *(v5 + 72);
        v26 = *(v5 + 16);
        v27 = v41;
        v26(v41, v25 + v43 * (__clz(__rbit64(v19)) | (v23 << 6)), v4);
        (*(v5 + 32))(v46, v27, v4);
        if (v45[2])
        {
          v28 = v45;
          v29 = v45[5];
          sub_1C450232C(&qword_1EDDFE820);
          v30 = sub_1C4F00FD8();
          v31 = ~(-1 << *(v28 + 32));
          while (1)
          {
            v32 = v30 & v31;
            if (((*(v42 + (((v30 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v30 & v31)) & 1) == 0)
            {
              break;
            }

            v26(v8, v45[6] + v32 * v43, v4);
            sub_1C450232C(&qword_1EDDFCC98);
            v33 = sub_1C4F010B8();
            v34 = *v21;
            (*v21)(v8, v4);
            v30 = v32 + 1;
            if (v33)
            {

              v34(v46, v4);
              return 0;
            }
          }
        }

        v19 &= v19 - 1;
        result = (*v21)(v46, v4);
        v16 = v37;
        v5 = v38;
        v15 = v40;
        v20 = v36;
      }

      while (v19);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4A32590(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v25 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v6 + 40);
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      v19 = sub_1C4F02B68();
      v20 = ~(-1 << *(v6 + 32));
      do
      {
        v21 = v19 & v20;
        if (((*(v6 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {

          v4 = v25;
          goto LABEL_13;
        }

        v22 = (*(v6 + 48) + 16 * v21);
        if (*v22 == v17 && v22[1] == v16)
        {
          break;
        }

        v24 = sub_1C4F02938();
        v19 = v21 + 1;
      }

      while ((v24 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4A32790(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal____lazy_storage___featureNames) = 0;
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *(v3 + 40) = *(a1 + 24);
  sub_1C4A34400(a2, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal_config, _s10ViewConfigVMa);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal_store) = a3;
  return v3;
}

uint64_t sub_1C4A32810()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(v5 + 16);
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v5;
  v8[5] = v1;
  v8[6] = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C446C37C(sub_1C4A343A8, v8);
}

uint64_t sub_1C4A32994(uint64_t a1)
{
  v270 = a1;
  v268 = sub_1C4EFF0C8();
  v2 = sub_1C43FCDF8(v268);
  v290 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD230();
  sub_1C43FD2C8(v8);
  v262 = sub_1C4EFD548();
  v9 = sub_1C43FCDF8(v262);
  v261 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = sub_1C43FD2C8(&v249 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v292 = type metadata accessor for GraphTriple(v14);
  v15 = sub_1C43FCDF8(v292);
  v285 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  v289 = v21;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD230();
  v288 = v23;
  v24 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  sub_1C43FD2C8(&v249 - v26);
  v27 = sub_1C4EFDE88();
  v28 = sub_1C43FCDF8(v27);
  v30 = v29;
  v283 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  v280 = &v249 - v36;
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD230();
  sub_1C43FD2C8(v38);
  v278 = sub_1C4EFDE98();
  v39 = sub_1C43FCDF8(v278);
  v274 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD230();
  v286 = v44;
  v269 = v1;
  v279 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal_store);
  sub_1C486DFC0();
  v282 = v45;
  v46 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v47 = *(sub_1C4EFEEF8() - 8);
  v48 = *(v47 + 80);
  v49 = (v48 + 32) & ~v48;
  v253 = *(v47 + 72);
  v252 = v48;
  v260 = v46;
  v50 = swift_allocObject();
  v265 = xmmword_1C4F0D130;
  *(v50 + 16) = xmmword_1C4F0D130;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v254 = v49;
  sub_1C4EFE518();
  sub_1C4D504A4();
  v51 = *MEMORY[0x1E69A95C0];
  v52 = *(v30 + 104);
  sub_1C440F974();
  v52();
  sub_1C440F974();
  v52();
  v53 = v275;
  sub_1C440F974();
  v52();
  v54 = v276;
  sub_1C440F974();
  v52();
  v55 = v277;
  HIDWORD(v258) = v51;
  sub_1C440F974();
  v259 = v30 + 104;
  v257 = v52;
  v52();
  v247 = v55;
  v248 = 0;
  v56 = v280;
  v57 = v54;
  sub_1C4EFDCD8();

  v59 = v283 + 8;
  v58 = *(v283 + 8);
  v58(v55, v27);
  v58(v57, v27);
  v58(v53, v27);
  v58(v56, v27);
  v263 = v27;
  v283 = v59;
  v255 = v58;
  v58(v284, v27);
  v60 = sub_1C4EFF8F8();
  v61 = v281;
  v266 = v60;
  sub_1C440BAA8(v281, 1, 1, v60);
  v62 = sub_1C498DB80();
  sub_1C482ADC8(v61);
  v63 = *(v62 + 16);
  v64 = MEMORY[0x1E69E7CC0];
  v271 = v62;
  if (v63)
  {
    v65 = v288;
    v292 = v288 + *(v292 + 32);
    sub_1C43FBF6C();
    v67 = v62 + v66;
    v291 = *(v68 + 72);
    do
    {
      sub_1C4407598();
      sub_1C443BEE4(v67, v65, v69);
      v70 = *(v292 + 8);
      v293[0] = *v292;
      v293[1] = v70;
      sub_1C4415EA8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v71 = sub_1C4F02058();

      v72 = *(v71 + 16);
      if (v72)
      {
        v73 = (v71 + 32 * v72);
        v75 = *v73;
        v74 = v73[1];
        v77 = v73[2];
        v76 = v73[3];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C440F95C();
        sub_1C449F17C(v65, v78);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = *(v64 + 16);
          sub_1C458B7F4();
          v64 = v84;
        }

        v80 = *(v64 + 16);
        v79 = *(v64 + 24);
        if (v80 >= v79 >> 1)
        {
          sub_1C43FCFE8(v79);
          sub_1C458B7F4();
          v64 = v85;
        }

        *(v64 + 16) = v80 + 1;
        v81 = (v64 + 32 * v80);
        v81[4] = v75;
        v81[5] = v74;
        v81[6] = v77;
        v81[7] = v76;
        v65 = v288;
      }

      else
      {
        sub_1C440F95C();
        sub_1C449F17C(v65, v82);
      }

      v67 += v291;
      --v63;
    }

    while (v63);
  }

  v86 = *(v64 + 16);
  if (v86)
  {
    v293[0] = MEMORY[0x1E69E7CC0];
    sub_1C4411048();
    sub_1C44CD9C0();
    v87 = v293[0];
    v63 = v64 + 56;
    do
    {
      v89 = *(v63 - 24);
      v88 = *(v63 - 16);
      v90 = *(v63 - 8);
      v91 = *v63;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v92 = MEMORY[0x1C693FEF0](v89, v88, v90, v91);
      v94 = v93;

      v293[0] = v87;
      v96 = *(v87 + 16);
      v95 = *(v87 + 24);
      if (v96 >= v95 >> 1)
      {
        sub_1C43FCFE8(v95);
        sub_1C44CD9C0();
        v87 = v293[0];
      }

      *(v87 + 16) = v96 + 1;
      v97 = v87 + 16 * v96;
      *(v97 + 32) = v92;
      *(v97 + 40) = v94;
      v63 += 32;
      --v86;
    }

    while (v86);
  }

  else
  {

    v87 = MEMORY[0x1E69E7CC0];
  }

  v98 = 0;
  v99 = *(v87 + 16);
  v291 = v87 + 32;
  v292 = v99;
  v100 = MEMORY[0x1E69E7CC0];
LABEL_19:
  while (v98 != v292)
  {
    if (v98 >= *(v87 + 16))
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      swift_once();
      goto LABEL_77;
    }

    v101 = (v291 + 16 * v98);
    v103 = *v101;
    v102 = v101[1];
    v104 = qword_1EC0B6F80;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v104 != -1)
    {
      swift_once();
    }

    ++v98;
    v105 = qword_1EC1529D8;
    if (*(qword_1EC1529D8 + 16))
    {
      v106 = *(qword_1EC1529D8 + 40);
      sub_1C4F02AF8();
      sub_1C4F01298();
      v107 = sub_1C4F02B68();
      v108 = ~(-1 << *(v105 + 32));
      while (1)
      {
        v63 = v107 & v108;
        if (((*(v105 + 56 + (((v107 & v108) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v107 & v108)) & 1) == 0)
        {
          break;
        }

        v109 = (*(v105 + 48) + 16 * v63);
        if (*v109 != v103 || v109[1] != v102)
        {
          v111 = sub_1C4F02938();
          v107 = v63 + 1;
          if ((v111 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v294 = v100;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v113 = *(v100 + 16);
      sub_1C44CD9C0();
      v100 = v294;
    }

    v63 = *(v100 + 16);
    v114 = *(v100 + 24);
    if (v63 >= v114 >> 1)
    {
      sub_1C43FCFE8(v114);
      sub_1C44CD9C0();
      v100 = v294;
    }

    *(v100 + 16) = v63 + 1;
    v115 = v100 + 16 * v63;
    *(v115 + 32) = v103;
    *(v115 + 40) = v102;
  }

  sub_1C4499940(v100, v116, v117, v118, v119, v120, v121, v122, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262);
  v124 = v285;
  if (!*(v123 + 16))
  {
    v130 = sub_1C4400960();
    v131(v130);
  }

  v292 = v123;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45972E0();
  v126 = sub_1C4A32204(v282, v125);

  v127 = v287;
  LODWORD(v288) = v126;
  if (v126)
  {
    v128 = v273;
    v129 = v271;
  }

  else
  {

    v133 = v256;
    sub_1C4EFD4C8();
    v134 = v267;
    sub_1C4EFDCC8();
    (*(v261 + 8))(v133, v262);
    sub_1C441753C();
    v135 = sub_1C498DB80();
    sub_1C482ADC8(v133);
    v136 = *(v274 + 8);
    v282 = (v274 + 8);
    v271 = v136;
    v136(v134, v278);
    v137 = *(v135 + 16);
    if (v137)
    {
      v293[0] = MEMORY[0x1E69E7CC0];
      sub_1C4411048();
      sub_1C459D178();
      v138 = v293[0];
      sub_1C43FBF6C();
      v262 = v135;
      v140 = v135 + v139;
      v291 = *(v141 + 72);
      v142 = (v290 + 16);
      v143 = v268;
      v144 = v251;
      do
      {
        sub_1C4407598();
        v145 = v289;
        sub_1C443BEE4(v140, v289, v146);
        (*v142)(v144, v145, v143);
        sub_1C440F95C();
        sub_1C449F17C(v145, v147);
        v293[0] = v138;
        v149 = *(v138 + 16);
        v148 = *(v138 + 24);
        if (v149 >= v148 >> 1)
        {
          sub_1C4412178(v148);
          sub_1C459D178();
          v138 = v293[0];
        }

        *(v138 + 16) = v149 + 1;
        sub_1C43FBF6C();
        (*(v151 + 32))(v138 + v150 + *(v151 + 72) * v149, v144, v143);
        v140 += v291;
        --v137;
      }

      while (v137);

      v127 = v287;
    }

    else
    {
    }

    sub_1C45972E0();
    v291 = v152;
    *(swift_allocObject() + 16) = v265;
    sub_1C4EFE518();
    sub_1C4D504A4();
    v287 = v153;
    v154 = v263;
    v155 = v257;
    (v257)(v284, HIDWORD(v258), v263);
    sub_1C43FDA64();
    v155();
    v156 = v275;
    sub_1C43FDA64();
    v155();
    v157 = v276;
    sub_1C43FDA64();
    v155();
    v158 = v277;
    sub_1C43FDA64();
    v155();
    v247 = v158;
    v248 = 0;
    v159 = v267;
    v160 = v280;
    sub_1C4EFDCD8();

    v161 = v283;
    v162 = v255;
    v255(v158, v154);
    v162(v157, v154);
    v162(v156, v154);
    v162(v160, v154);
    v162(v284, v154);
    sub_1C441753C();
    v129 = sub_1C498DB80();
    sub_1C482ADC8(v161);
    v271(v159, v278);
    v124 = v285;
    v128 = v273;
  }

  v163 = 0;
  v164 = v129;
  v63 = *(v129 + 16);
  v291 = MEMORY[0x1E69E7CC0];
  while (v63 != v163)
  {
    if (v163 >= *(v164 + 16))
    {
      goto LABEL_81;
    }

    v165 = (*(v124 + 80) + 32) & ~*(v124 + 80);
    v166 = v124[9];
    sub_1C4407598();
    v169 = sub_1C443BEE4(v167, v128, v168);
    MEMORY[0x1EEE9AC00](v169);
    v247 = v128;
    sub_1C479B3C8(sub_1C4A34330);
    if (v170)
    {
      sub_1C4413508();
      sub_1C4A34400(v128, v272, v172);
      v173 = v291;
      v174 = swift_isUniquelyReferenced_nonNull_native();
      v175 = v173;
      v293[0] = v173;
      v287 = v127;
      if ((v174 & 1) == 0)
      {
        v176 = *(v173 + 16);
        sub_1C4411048();
        sub_1C459D7C8();
        v124 = v285;
        v175 = v293[0];
      }

      v178 = *(v175 + 16);
      v177 = *(v175 + 24);
      if (v178 >= v177 >> 1)
      {
        sub_1C4412178(v177);
        sub_1C459D7C8();
        v124 = v285;
        v175 = v293[0];
      }

      ++v163;
      *(v175 + 16) = v178 + 1;
      v291 = v175;
      sub_1C4413508();
      sub_1C4A34400(v272, v179, v180);
      v127 = v287;
      v128 = v273;
    }

    else
    {
      sub_1C440F95C();
      sub_1C449F17C(v128, v171);
      ++v163;
    }
  }

  v181 = *(v291 + 16);
  if (v181)
  {
    v287 = v127;
    v293[0] = MEMORY[0x1E69E7CC0];
    v182 = v124;
    sub_1C4411048();
    v184 = v183;
    sub_1C459D178();
    v185 = v293[0];
    v186 = v184 + ((*(v182 + 80) + 32) & ~*(v182 + 80));
    v292 = v182[9];
    v187 = (v290 + 16);
    v188 = v268;
    v189 = v264;
    do
    {
      sub_1C4407598();
      v190 = v289;
      sub_1C443BEE4(v186, v289, v191);
      (*v187)(v189, v190, v188);
      sub_1C440F95C();
      sub_1C449F17C(v190, v192);
      v293[0] = v185;
      v194 = *(v185 + 16);
      v193 = *(v185 + 24);
      if (v194 >= v193 >> 1)
      {
        sub_1C4412178(v193);
        sub_1C459D178();
        v185 = v293[0];
      }

      *(v185 + 16) = v194 + 1;
      sub_1C43FBF6C();
      (*(v196 + 32))(v185 + v195 + *(v196 + 72) * v194, v189, v188);
      v186 += v292;
      --v181;
    }

    while (v181);

    v127 = v287;
  }

  else
  {
  }

  sub_1C45972E0();
  v198 = v197;
  v63 = v269;

  v199 = sub_1C4A31E28(v198, v63);

  if (v288)
  {
    v200 = *(v63 + 24);
    v288 = *(v63 + 32);
    v201 = *(v63 + 40);
    v202 = *(v63 + 48);
    v203 = v270;
    v204 = *(v270 + 16);
    if (v204)
    {
      v285 = v199;
      v287 = v127;
      v293[0] = MEMORY[0x1E69E7CC0];
      v284 = v200;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v283 = v201;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v282 = v202;

      sub_1C4F02348();
      v205 = *(v63 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal_config);
      v291 = *(v63 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal_config + 8);
      v292 = v205;
      v207 = v290 + 16;
      v206 = *(v290 + 16);
      v208 = v203 + ((*(v290 + 80) + 32) & ~*(v290 + 80));
      v289 = *(v290 + 72);
      v290 = v206;
      v209 = v268;
      v210 = v250;
      do
      {
        (v290)(v210, v208, v209);
        v211 = v291;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v212 = sub_1C4EFF068();
        v214 = v213;
        v215 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
        sub_1C4673B1C(v292, v211, 0x69616D45656D6173, 0xEF6E69616D6F446CLL, v212, v214);
        (*(v207 - 8))(v210, v209);
        sub_1C4F02318();
        v216 = *(v293[0] + 16);
        sub_1C4F02358();
        sub_1C4F02368();
        v217 = sub_1C4F02328();
        v208 += v289;
        --v204;
      }

      while (v204);
      v218 = v293[0];
      v63 = v269;
      v199 = v285;
      v219 = v283;
      v202 = v282;
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v218 = MEMORY[0x1E69E7CC0];
      v219 = v201;
    }

    v238 = v202[2];
    MEMORY[0x1EEE9AC00](v217);
    *(&v249 - 6) = v218;
    *(&v249 - 5) = v239;
    *(&v249 - 4) = v219;
    *(&v249 - 3) = v202;
    v247 = v199;
    sub_1C446C37C(sub_1C4A34350, (&v249 - 8));
  }

  else
  {
    v220 = *(v63 + 16);
    v221 = *(v63 + 24);
    v287 = v127;
    v222 = v63;
    v224 = *(v63 + 32);
    v223 = *(v63 + 40);
    v225 = *(v222 + 48);
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    inited = swift_initStackObject();
    v292 = &v249;
    *(inited + 16) = v265;
    *(inited + 32) = v220;
    *(inited + 40) = v221;
    v227 = *(v225 + 16);
    MEMORY[0x1EEE9AC00](inited);
    *(&v249 - 6) = v228;
    *(&v249 - 5) = v224;
    *(&v249 - 4) = v223;
    *(&v249 - 3) = v225;
    v247 = v199;
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v229 = v287;
    sub_1C4418704(sub_1C4A3437C, (&v249 - 8), v230, v231, v232, v233, v234, v235, v249, v250);
    if (v229)
    {
      v236 = sub_1C4400960();
      v237(v236);

      swift_setDeallocating();
      sub_1C44DEE40();
    }

    swift_setDeallocating();
    sub_1C44DEE40();

    v63 = v222;
  }

  if (qword_1EDDFECD0 != -1)
  {
    goto LABEL_82;
  }

LABEL_77:
  v240 = sub_1C4F00978();
  sub_1C442B738(v240, qword_1EDE2DF70);

  v241 = sub_1C4F00968();
  v242 = sub_1C4F01CB8();

  if (os_log_type_enabled(v241, v242))
  {
    v243 = swift_slowAlloc();
    v244 = swift_slowAlloc();
    v293[0] = v244;
    *v243 = 136315138;
    *(v243 + 4) = sub_1C441D828(*(v63 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal_config), *(v63 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal_config + 8), v293);
    _os_log_impl(&dword_1C43F8000, v241, v242, "SignalView %s: Wrote features", v243, 0xCu);
    sub_1C440962C(v244);
    MEMORY[0x1C6942830](v244, -1, -1);
    MEMORY[0x1C6942830](v243, -1, -1);
  }

  v245 = sub_1C4400960();
  return v246(v245);
}

uint64_t sub_1C4A3408C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for GraphTriple(0) + 32));
  v5 = *v4;
  v6 = v4[1];
  return sub_1C4F013F8() & 1;
}

void *sub_1C4A340E4()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  sub_1C449F17C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal_config, _s10ViewConfigVMa);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal_store);

  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal____lazy_storage___featureNames);

  return v0;
}

uint64_t sub_1C4A3416C()
{
  sub_1C4A340E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MatchingWorkEmailAddressSignal()
{
  result = qword_1EC0C1A50;
  if (!qword_1EC0C1A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A34218()
{
  result = _s10ViewConfigVMa(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4A34400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void sub_1C4A34460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v10 = sub_1C4428DA0();
  for (i = 0; ; ++i)
  {
    if (v10 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1C6940F90](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v12 = *(a1 + 8 * i + 32);
    }

    v13 = v12;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v17 = v12;
    sub_1C4A365A4(&v17, a2, a3, a4, a5, a6);
    if (v6)
    {

      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_1C4A34584(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = sub_1C4428DA0();
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1C6940F90](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v10 = *(a1 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v13 = v10;
    sub_1C4A38538(&v13, a2, a3, a4);
    if (v4)
    {

      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

unint64_t sub_1C4A34688(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
    case 3:
    case 6:
    case 7:
    case 10:
    case 11:
      result = 0xD000000000000015;
      break;
    case 4:
    case 8:
      result = 0xD000000000000016;
      break;
    case 5:
    case 9:
      result = 0xD000000000000018;
      break;
    case 12:
    case 13:
      result = 0xD000000000000026;
      break;
    case 14:
    case 15:
      result = 0xD000000000000028;
      break;
    case 16:
    case 17:
    case 18:
    case 19:
      result = 0xD000000000000025;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A34814()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView____lazy_storage___featureNames;
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView____lazy_storage___featureNames);
  if (v3)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v4 = 0;
    v5 = *(v21 + 16);
    v6 = 16 * v5;
    do
    {
      v14 = sub_1C4A34688(byte_1F43DAAA8[v4 + 32]);
      v15 = v7;
      if (v5 >= *(v21 + 24) >> 1)
      {
        sub_1C44CD9C0();
      }

      ++v4;
      *(v21 + 16) = v5 + 1;
      v16 = v21 + v6;
      *(v16 + 32) = v14;
      *(v16 + 40) = v15;
      v6 += 16;
      ++v5;
    }

    while (v4 != 20);
    sub_1C4499940(v21, v7, v8, v9, v10, v11, v12, v13, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, vars0, vars8);
    v3 = v17;
    v18 = *(v1 + v2);
    *(v1 + v2) = v17;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return v3;
}

void sub_1C4A34940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a1;
  v73 = a2;
  v76 = MEMORY[0x1E69E7CC0];
  v4 = sub_1C4428DA0();
  v5 = 0;
  v6 = a3 & 0xC000000000000001;
  v7 = a3 & 0xFFFFFFFFFFFFFF8;
  while (v4 != v5)
  {
    if (v6)
    {
      v8 = MEMORY[0x1C6940F90](v5, a3);
    }

    else
    {
      if (v5 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v8 = *(a3 + 8 * v5 + 32);
    }

    v9 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      return;
    }

    v10 = [v8 bundleId];
    sub_1C4F01138();

    sub_1C441A03C();
    LOBYTE(v10) = sub_1C4F013E8();

    if (v10)
    {
      sub_1C4F02318();
      v11 = *(v76 + 16);
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
    }

    ++v5;
  }

  v12 = 0;
  v13 = v76;
  v74 = a3 & 0xFFFFFFFFFFFFFF8;
  v77 = MEMORY[0x1E69E7CC0];
  while (v4 != v12)
  {
    if (v6)
    {
      v14 = MEMORY[0x1C6940F90](v12, a3);
    }

    else
    {
      if (v12 >= *(v7 + 16))
      {
        goto LABEL_55;
      }

      v14 = *(a3 + 8 * v12 + 32);
    }

    v15 = v14;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_54;
    }

    v16 = [v14 bundleId];
    sub_1C4F01138();

    sub_1C441A03C();
    LOBYTE(v16) = sub_1C4F013E8();

    if (v16)
    {
    }

    else
    {
      v17 = sub_1C4F02318();
      sub_1C44335E8(v17, v18, v19, v20, v21, v22, v23, v24, v69, v71, v72, v73, v74, v77);
      sub_1C4F02368();
      sub_1C4F02328();
    }

    ++v12;
    v7 = v74;
  }

  v25 = v77;
  v78 = MEMORY[0x1E69E7CC0];
  v26 = sub_1C4428DA0();
  for (i = 0; v26 != i; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1C6940F90](i, v13);
    }

    else
    {
      if (i >= *(v13 + 16))
      {
        goto LABEL_57;
      }

      v28 = *(v13 + 8 * i + 32);
    }

    v29 = v28;
    if (__OFADD__(i, 1))
    {
      goto LABEL_56;
    }

    if ([v28 direction] == 1)
    {
      v30 = sub_1C4F02318();
      sub_1C44335E8(v30, v31, v32, v33, v34, v35, v36, v37, v69, v71, v72, v73, v74, v78);
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
    }
  }

  v75 = sub_1C4428DA0();

  v79 = MEMORY[0x1E69E7CC0];
  v38 = sub_1C4428DA0();
  for (j = 0; v38 != j; ++j)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x1C6940F90](j, v25);
    }

    else
    {
      if (j >= *(v25 + 16))
      {
        goto LABEL_59;
      }

      v40 = *(v25 + 8 * j + 32);
    }

    v41 = v40;
    if (__OFADD__(j, 1))
    {
      goto LABEL_58;
    }

    if ([v40 direction] == 1)
    {
      v42 = sub_1C4F02318();
      sub_1C44335E8(v42, v43, v44, v45, v46, v47, v48, v49, v69, v71, v72, v73, v75, v79);
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
    }
  }

  v70 = sub_1C4428DA0();

  sub_1C466F588();
  v51 = v50;
  sub_1C466F588();
  v53 = v52;
  sub_1C456902C(&qword_1EC0B87D8, &qword_1C4F0DBC8);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1C4F0D480;
  v55 = *(v71 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_config);
  v56 = *(v71 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_config + 8);
  v57 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  swift_bridgeObjectRetain_n();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C444FEC0();
  *(v54 + 32) = sub_1C4673B1C(v55, v56, v58 + 5, 0x80000001C4FAD4C0, v72, v73);
  v59 = sub_1C4428DA0();

  if (v59 <= 1)
  {
    v60 = 1;
  }

  else
  {
    v60 = v59;
  }

  v61 = v75 / v60;
  v62 = objc_opt_self();
  *(v54 + 40) = [v62 featureValueWithDouble_];
  v63 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C444FEC0();
  *(v54 + 48) = sub_1C4673B1C(v55, v56, v64 + 5, 0x80000001C4FAD4A0, v72, v73);
  v65 = sub_1C4428DA0();

  if (v65 <= 1)
  {
    v66 = 1;
  }

  else
  {
    v66 = v65;
  }

  *(v54 + 56) = [v62 featureValueWithDouble_];
  v67 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v54 + 64) = sub_1C4425E48();
  *(v54 + 72) = [v62 featureValueWithDouble_];
  v68 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v54 + 80) = sub_1C4425E48();
  *(v54 + 88) = [v62 featureValueWithDouble_];
}

void sub_1C4A34F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v12);
  v112 = MEMORY[0x1E69E7CC0];
  v13 = sub_1C4428DA0();
  v14 = 0;
  v110 = a3 & 0xC000000000000001;
  v15 = (v9 + 8);
  v109 = a3;
  while (v13 != v14)
  {
    if (v110)
    {
      sub_1C44051E8();
    }

    else
    {
      sub_1C441FF04();
      if (v16)
      {
        goto LABEL_115;
      }

      sub_1C441EE18();
    }

    sub_1C4411054();
    if (v17)
    {
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
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      return;
    }

    v18 = [v4 startDate];
    sub_1C4EF9C78();

    sub_1C4EF9C38();
    v9 = sub_1C441CC2C();
    v3 = *v15;
    v19 = sub_1C43FD388();
    (v3)(v19);
    v20 = sub_1C43FCE84();
    (v3)(v20);
    if (v9)
    {
      v9 = [v4 bundleId];
      v3 = sub_1C4F01138();

      sub_1C441A03C();
      sub_1C4F013E8();
      sub_1C4435224();
      if (v3)
      {
      }

      else
      {
        v9 = &v112;
        sub_1C4F02318();
        sub_1C4413520();
        sub_1C4414DDC();
        sub_1C4F02328();
      }

      a3 = v109;
    }

    else
    {
    }

    ++v14;
  }

  v107 = sub_1C4405F00();

  v21 = 0;
  v112 = MEMORY[0x1E69E7CC0];
  while (v13 != v21)
  {
    if (v110)
    {
      sub_1C44051E8();
    }

    else
    {
      sub_1C441FF04();
      if (v16)
      {
        goto LABEL_117;
      }

      sub_1C441EE18();
    }

    sub_1C4411054();
    if (v17)
    {
      goto LABEL_116;
    }

    v22 = [v4 startDate];
    sub_1C44045BC();

    sub_1C4EF9C38();
    sub_1C441CC2C();
    v23 = sub_1C44075B0();
    (v9)(v23);
    v24 = sub_1C43FCE84();
    (v9)(v24);
    if (v3)
    {
      v3 = [v4 bundleId];
      sub_1C4F01138();
      sub_1C4408DEC();

      sub_1C441A03C();
      sub_1C4409F54();
      sub_1C4435224();
      if (v3)
      {
      }

      else
      {
        v9 = &v112;
        sub_1C4F02318();
        sub_1C4413520();
        sub_1C4414DDC();
        sub_1C4F02328();
      }

      a3 = v109;
    }

    else
    {
    }

    ++v21;
  }

  v106 = sub_1C4405F00();

  v25 = 0;
  v112 = MEMORY[0x1E69E7CC0];
  while (v13 != v25)
  {
    if (v110)
    {
      sub_1C44051E8();
    }

    else
    {
      sub_1C441FF04();
      if (v16)
      {
        goto LABEL_119;
      }

      sub_1C441EE18();
    }

    sub_1C4411054();
    if (v17)
    {
      goto LABEL_118;
    }

    v26 = [v4 startDate];
    sub_1C44045BC();

    sub_1C4EF9C38();
    sub_1C441CC2C();
    v27 = sub_1C44075B0();
    (v9)(v27);
    v28 = sub_1C43FCE84();
    (v9)(v28);
    if (v3)
    {
      v3 = [v4 bundleId];
      sub_1C4F01138();
      sub_1C4408DEC();

      sub_1C441A03C();
      sub_1C4409F54();
      sub_1C4435224();
      if (v3)
      {
      }

      else
      {
        v9 = &v112;
        sub_1C4F02318();
        sub_1C4413520();
        sub_1C4414DDC();
        sub_1C4F02328();
      }

      a3 = v109;
    }

    else
    {
    }

    ++v25;
  }

  v105 = sub_1C4405F00();

  v29 = 0;
  v112 = MEMORY[0x1E69E7CC0];
  while (v13 != v29)
  {
    if (v110)
    {
      sub_1C44051E8();
    }

    else
    {
      sub_1C441FF04();
      if (v16)
      {
        goto LABEL_121;
      }

      sub_1C441EE18();
    }

    sub_1C4411054();
    if (v17)
    {
      goto LABEL_120;
    }

    v30 = [v4 startDate];
    sub_1C44045BC();

    sub_1C4EF9C38();
    sub_1C441CC2C();
    v31 = sub_1C44075B0();
    (v9)(v31);
    v32 = sub_1C43FCE84();
    (v9)(v32);
    if (v3)
    {
      v3 = [v4 bundleId];
      sub_1C4F01138();
      sub_1C4408DEC();

      sub_1C441A03C();
      sub_1C4409F54();
      sub_1C4435224();
      if (v3)
      {
      }

      else
      {
        v9 = &v112;
        sub_1C4F02318();
        sub_1C4413520();
        sub_1C4414DDC();
        sub_1C4F02328();
      }

      a3 = v109;
    }

    else
    {
    }

    ++v29;
  }

  v104 = sub_1C4405F00();

  v33 = 0;
  v112 = MEMORY[0x1E69E7CC0];
  while (v13 != v33)
  {
    if (v110)
    {
      sub_1C44051E8();
    }

    else
    {
      sub_1C441FF04();
      if (v16)
      {
        goto LABEL_123;
      }

      sub_1C441EE18();
    }

    sub_1C4411054();
    if (v17)
    {
      goto LABEL_122;
    }

    v34 = [v4 startDate];
    sub_1C44045BC();

    sub_1C4EF9C38();
    sub_1C441CC2C();
    v35 = sub_1C44075B0();
    (v9)(v35);
    v36 = sub_1C43FCE84();
    (v9)(v36);
    if (v3)
    {
      v3 = [v4 bundleId];
      sub_1C4F01138();
      sub_1C4408DEC();

      sub_1C441A03C();
      sub_1C4409F54();
      sub_1C4435224();
      if (v3)
      {
        v9 = &v112;
        sub_1C4F02318();
        sub_1C4413520();
        sub_1C4414DDC();
        sub_1C4F02328();
      }

      else
      {
      }

      a3 = v109;
    }

    else
    {
    }

    ++v33;
  }

  v103 = sub_1C4405F00();

  v37 = 0;
  v112 = MEMORY[0x1E69E7CC0];
  while (v13 != v37)
  {
    if (v110)
    {
      sub_1C44051E8();
    }

    else
    {
      sub_1C441FF04();
      if (v16)
      {
        goto LABEL_125;
      }

      sub_1C441EE18();
    }

    sub_1C4411054();
    if (v17)
    {
      goto LABEL_124;
    }

    v38 = [v4 startDate];
    sub_1C44045BC();

    sub_1C4EF9C38();
    sub_1C441CC2C();
    v39 = sub_1C44075B0();
    (v9)(v39);
    v40 = sub_1C43FCE84();
    (v9)(v40);
    if (v3)
    {
      v3 = [v4 bundleId];
      sub_1C4F01138();
      sub_1C4408DEC();

      sub_1C441A03C();
      sub_1C4409F54();
      sub_1C4435224();
      if (v3)
      {
        v9 = &v112;
        sub_1C4F02318();
        sub_1C4413520();
        sub_1C4414DDC();
        sub_1C4F02328();
      }

      else
      {
      }

      a3 = v109;
    }

    else
    {
    }

    ++v37;
  }

  v102 = sub_1C4405F00();

  v41 = 0;
  v112 = MEMORY[0x1E69E7CC0];
  while (v13 != v41)
  {
    if (v110)
    {
      sub_1C44051E8();
    }

    else
    {
      sub_1C441FF04();
      if (v16)
      {
        goto LABEL_127;
      }

      sub_1C441EE18();
    }

    sub_1C4411054();
    if (v17)
    {
      goto LABEL_126;
    }

    v42 = [v4 startDate];
    sub_1C44045BC();

    sub_1C4EF9C38();
    sub_1C441CC2C();
    v43 = sub_1C44075B0();
    (v9)(v43);
    v44 = sub_1C43FCE84();
    (v9)(v44);
    if (v3)
    {
      v3 = [v4 bundleId];
      sub_1C4F01138();
      sub_1C4408DEC();

      sub_1C441A03C();
      sub_1C4409F54();
      sub_1C4435224();
      if (v3)
      {
        v9 = &v112;
        sub_1C4F02318();
        sub_1C4413520();
        sub_1C4414DDC();
        sub_1C4F02328();
      }

      else
      {
      }

      a3 = v109;
    }

    else
    {
    }

    ++v41;
  }

  v101 = sub_1C4405F00();

  v45 = 0;
  v112 = MEMORY[0x1E69E7CC0];
  while (v13 != v45)
  {
    if (v110)
    {
      v47 = MEMORY[0x1C6940F90](v45, a3);
    }

    else
    {
      sub_1C44326D8();
      if (v45 >= v46)
      {
        goto LABEL_129;
      }

      v47 = *(a3 + 8 * v45 + 32);
    }

    v48 = v47;
    if (__OFADD__(v45, 1))
    {
      goto LABEL_128;
    }

    v49 = [v47 startDate];
    sub_1C44045BC();

    sub_1C4EF9C38();
    sub_1C441CC2C();
    v50 = sub_1C44075B0();
    (v9)(v50);
    v51 = sub_1C43FCE84();
    (v9)(v51);
    if (v3)
    {
      v3 = [v48 bundleId];
      sub_1C4F01138();
      sub_1C4408DEC();

      sub_1C441A03C();
      sub_1C4409F54();
      sub_1C4435224();
      if (v3)
      {
        v9 = &v112;
        sub_1C4F02318();
        sub_1C4413520();
        sub_1C4F02368();
        sub_1C4F02328();
      }

      else
      {
      }

      a3 = v109;
    }

    else
    {
    }

    ++v45;
  }

  v111 = sub_1C4405F00();

  sub_1C456902C(&qword_1EC0B87D8, &qword_1C4F0DBC8);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1C4F3B920;
  v53 = *(v108 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_config);
  v54 = *(v108 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_config + 8);
  swift_bridgeObjectRetain_n();
  v55 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v56 = sub_1C4400980();
  *(v52 + 32) = sub_1C442BD54(v56, v57, v58, v59);
  *(v52 + 40) = [objc_opt_self() featureValueWithInt64_];
  v60 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  sub_1C4425314();
  v61 = sub_1C4400980();
  *(v52 + 48) = sub_1C442BD54(v61, v62, v63, v64);
  v65 = sub_1C440D684();
  *(v52 + 56) = [v65 v66];
  v67 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  sub_1C4425314();
  sub_1C444FEC0();
  *(v52 + 64) = sub_1C44034DC(v69, v70, v68 + 3, 0x80000001C4FAD420);
  v71 = sub_1C440D684();
  *(v52 + 72) = [v71 v72];
  v73 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  sub_1C4425314();
  sub_1C444FEC0();
  *(v52 + 80) = sub_1C44034DC(v75, v76, v74 + 1, 0x80000001C4FAD440);
  v77 = sub_1C440D684();
  *(v52 + 88) = [v77 v78];
  v79 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  sub_1C4425314();
  v80 = sub_1C4400980();
  *(v52 + 96) = sub_1C442BD54(v80, v81, v82, v83);
  v84 = sub_1C440D684();
  *(v52 + 104) = [v84 v85];
  v86 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  sub_1C4425314();
  v87 = sub_1C4400980();
  *(v52 + 112) = sub_1C442BD54(v87, v88, v89, v90);
  v91 = sub_1C440D684();
  *(v52 + 120) = [v91 v92];
  v93 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  *(v52 + 128) = sub_1C44034DC(v93, v94, 0xD000000000000018, 0x80000001C4FAD3A0);
  v95 = sub_1C440D684();
  *(v52 + 136) = [v95 v96];
  v97 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  *(v52 + 144) = sub_1C44034DC(v97, v98, 0xD000000000000016, 0x80000001C4FAD3C0);
  v99 = sub_1C440D684();
  *(v52 + 152) = [v99 v100];
}

uint64_t sub_1C4A35BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v74 = a6;
  LODWORD(v76) = a5;
  v78 = sub_1C456902C(&qword_1EC0BA9F8, &unk_1C4F168D0);
  v11 = sub_1C43FBCE0(v78);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  v73 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v75 = &v71 - v17;
  v18 = sub_1C4EFF0C8();
  sub_1C456902C(&qword_1EC0C1A78, &unk_1C4F45B00);
  sub_1C4887098();
  v80 = v18;
  v83 = sub_1C4F00F28();
  v19 = sub_1C4428DA0();
  for (i = 0; v19 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1C6940F90](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v21 = *(a3 + 8 * i + 32);
    }

    v6 = v21;
    if (__OFADD__(i, 1))
    {
      goto LABEL_38;
    }

    v82 = v21;
    sub_1C4A360EC(&v83, &v82, a4, a1, a2);
  }

  v23 = *(v83 + 64);
  v22 = v83 + 64;
  v24 = *(v83 + 32);
  sub_1C43FD030();
  v27 = v26 & v25;
  v29 = (v28 + 63) >> 6;
  v77 = v80 - 8;
  v81 = v30;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v31 = 0;
  v72 = MEMORY[0x1E69E7CC0];
  while (v27)
  {
LABEL_15:
    v33 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v34 = v33 | (v31 << 6);
    v35 = v81;
    v6 = v75;
    (*(*(v80 - 8) + 16))(v75, v81[6] + *(*(v80 - 8) + 72) * v34);
    v36 = *(v35[7] + 8 * v34);
    *(v6 + *(v78 + 48)) = v36;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4A3692C(v6, v36, v79, v76, a1, a2);
    v38 = v37;
    v40 = v39;
    sub_1C4420C3C(v6, &qword_1EC0BA9F8, &unk_1C4F168D0);
    if (v38)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C441C3D4(isUniquelyReferenced_nonNull_native, v42, v43, v72);
        v72 = v48;
      }

      v44 = *(v72 + 16);
      v45 = v44 + 1;
      if (v44 >= *(v72 + 24) >> 1)
      {
        v71 = v44 + 1;
        sub_1C458B740();
        v45 = v71;
        v72 = v49;
      }

      v46 = v72;
      *(v72 + 16) = v45;
      v47 = v46 + 16 * v44;
      *(v47 + 32) = v38;
      *(v47 + 40) = v6;
    }
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v32 >= v29)
    {
      break;
    }

    v27 = *(v22 + 8 * v32);
    ++v31;
    if (v27)
    {
      v31 = v32;
      goto LABEL_15;
    }
  }

  v50 = v81;

  v51 = 1 << *(v50 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & v50[8];
  v54 = (v51 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v55 = 0;
  v76 = MEMORY[0x1E69E7CC0];
  while (v53)
  {
LABEL_29:
    v57 = __clz(__rbit64(v53));
    v53 &= v53 - 1;
    v58 = v57 | (v55 << 6);
    v6 = v81;
    v59 = v73;
    (*(*(v80 - 8) + 16))(v73, v81[6] + *(*(v80 - 8) + 72) * v58);
    v60 = *(v6[7] + 8 * v58);
    *(v59 + *(v78 + 48)) = v60;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4A36B7C(v59, v60, v79, v74, a1, a2);
    sub_1C4408DEC();
    sub_1C4420C3C(v59, &qword_1EC0BA9F8, &unk_1C4F168D0);
    if (v60)
    {
      v61 = swift_isUniquelyReferenced_nonNull_native();
      if ((v61 & 1) == 0)
      {
        sub_1C441C3D4(v61, v62, v63, v76);
        v76 = v68;
      }

      v64 = *(v76 + 16);
      v65 = (v64 + 1);
      if (v64 >= *(v76 + 24) >> 1)
      {
        v75 = (v64 + 1);
        sub_1C458B740();
        v65 = v75;
        v76 = v69;
      }

      v66 = v76;
      *(v76 + 16) = v65;
      v67 = v66 + 16 * v64;
      *(v67 + 32) = v60;
      *(v67 + 40) = v6;
    }
  }

  while (1)
  {
    v56 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v56 >= v54)
    {

      v83 = v72;
      sub_1C49D39CC(v76);
      return v83;
    }

    v53 = *(v22 + 8 * v56);
    ++v55;
    if (v53)
    {
      v55 = v56;
      goto LABEL_29;
    }
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C4A360EC(uint64_t *a1, id *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v44 - v13;
  v15 = sub_1C4EFF0C8();
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v48 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v44 - v19;
  v20 = *a2;
  v21 = [*a2 sender];
  v22 = v21;
  if (!v21)
  {
    goto LABEL_20;
  }

  v49 = v15;
  v50 = v5;
  v51 = a1;
  v23 = [v21 handle];
  sub_1C4F01138();

  v24 = String.normalizedContactHandle()();

  if (!v24.value._object)
  {

    v22 = 0;
    goto LABEL_6;
  }

  sub_1C465C294(v24.value._countAndFlagsBits, v24.value._object, a3);

  v25 = v49;
  if (sub_1C44157D4(v14, 1, v49) == 1)
  {

    sub_1C4420C3C(v14, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v22 = 0;
LABEL_6:
    a1 = v51;
LABEL_20:
    v40 = [v20 recipients];
    sub_1C4461BB8(0, &qword_1EDDF0360, off_1E81EC590);
    v41 = sub_1C4F01678();

    v42 = v20;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4A34460(v41, a3, a4, a5, a1, v42);

    return sub_1C44239FC(v22);
  }

  (*(v52 + 32))(v53, v14, v25);
  if (sub_1C4EFF048() == a4 && v26 == a5)
  {

    a1 = v51;
    goto LABEL_19;
  }

  v28 = sub_1C4F02938();

  a1 = v51;
  if (v28)
  {
LABEL_19:
    (*(v52 + 8))(v53, v49);

    v22 = 0;
    goto LABEL_20;
  }

  v46 = v20;
  v29 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = *a1;
  v30 = v54;
  sub_1C44E3664();
  v47 = v32;
  v33 = *(v30 + 16);
  v34 = (v31 & 1) == 0;
  v44 = v33 + v34;
  if (__OFADD__(v33, v34))
  {
    __break(1u);
  }

  else
  {
    v35 = v31;
    sub_1C456902C(&qword_1EC0BAA10, &qword_1C4F16910);
    v36 = sub_1C4F02458();
    v37 = v54;
    if ((v36 & 1) == 0 || (sub_1C44E3664(), v47 = v36, (v35 & 1) == (v38 & 1)))
    {
      *a1 = v37;
      if ((v35 & 1) == 0)
      {
        (*(v52 + 16))(v48, v53, v49);
        v36 = sub_1C457EB2C(v47);
      }

      v39 = (*(v37 + 56) + 8 * v47);
      MEMORY[0x1C6940330](v36);
      sub_1C4427EF0(*((*v39 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1C4F01748();

      (*(v52 + 8))(v53, v49);
      v22 = sub_1C48362FC;
      goto LABEL_20;
    }
  }

  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4A365A4(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v45 = a4;
  v42 = a6;
  v43 = a5;
  v44 = a3;
  v8 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v41 - v10;
  v12 = sub_1C4EFF0C8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v41 - v18;
  v20 = [*a1 handle];
  sub_1C4F01138();

  v21 = String.normalizedContactHandle()();

  if (v21.value._object)
  {
    sub_1C465C294(v21.value._countAndFlagsBits, v21.value._object, a2);

    if (sub_1C44157D4(v11, 1, v12) == 1)
    {
      return sub_1C4420C3C(v11, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    (*(v13 + 32))(v19, v11, v12);
    if (sub_1C4EFF048() == v44 && v23 == v45)
    {
    }

    else
    {
      v25 = sub_1C4F02938();

      if ((v25 & 1) == 0)
      {
        v26 = v43;
        v27 = *v43;
        swift_isUniquelyReferenced_nonNull_native();
        v46 = *v26;
        v28 = v46;
        *v26 = 0x8000000000000000;
        sub_1C44E3664();
        v45 = v30;
        if (__OFADD__(*(v28 + 16), (v29 & 1) == 0))
        {
          __break(1u);
        }

        else
        {
          v31 = v29;
          sub_1C456902C(&qword_1EC0BAA10, &qword_1C4F16910);
          v32 = sub_1C4F02458();
          v33 = v46;
          if ((v32 & 1) == 0)
          {
            v36 = v45;
            goto LABEL_15;
          }

          sub_1C44E3664();
          if ((v31 & 1) == (v35 & 1))
          {
            v36 = v34;
LABEL_15:
            v37 = *v26;
            *v26 = v33;

            v38 = *v26;
            if ((v31 & 1) == 0)
            {
              (*(v13 + 16))(v17, v19, v12);
              sub_1C457EB2C(v36);
            }

            v39 = (*(v38 + 56) + 8 * v36);
            v40 = v42;
            MEMORY[0x1C6940330]();
            sub_1C4427EF0(*((*v39 & 0xFFFFFFFFFFFFFF8) + 0x10));
            sub_1C4F01748();
            return (*(v13 + 8))(v19, v12);
          }
        }

        result = sub_1C4F029F8();
        __break(1u);
        return result;
      }
    }

    return (*(v13 + 8))(v19, v12);
  }

  return result;
}

void sub_1C4A3692C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v26 = MEMORY[0x1E69E7CC0];
  v7 = sub_1C4428DA0();
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {
      v13 = sub_1C4428DA0();

      v14 = *(a3 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_config);
      v15 = *(a3 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_config + 8);
      v16 = sub_1C4A34688(a4);
      v18 = v17;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](15933, 0xE200000000000000);
      v19 = sub_1C4EFF048();
      MEMORY[0x1C6940010](v19);

      v20 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
      sub_1C4673B1C(v14, v15, v16, v18, a5, a6);
      v21 = [objc_opt_self() featureValueWithInt64_];
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1C6940F90](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v9 = *(a2 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = [v9 bundleId];
    sub_1C4F01138();

    LOBYTE(v11) = sub_1C4F013E8();

    if (v11)
    {
      sub_1C4F02318();
      v12 = *(v26 + 16);
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_1C4A36B7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v26 = MEMORY[0x1E69E7CC0];
  v7 = sub_1C4428DA0();
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {
      v13 = sub_1C4428DA0();

      v14 = *(a3 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_config);
      v15 = *(a3 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_config + 8);
      v16 = sub_1C4A34688(a4);
      v18 = v17;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](15933, 0xE200000000000000);
      v19 = sub_1C4EFF048();
      MEMORY[0x1C6940010](v19);

      v20 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
      sub_1C4673B1C(v14, v15, v16, v18, a5, a6);
      v21 = [objc_opt_self() featureValueWithInt64_];
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1C6940F90](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v9 = *(a2 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = [v9 bundleId];
    sub_1C4F01138();

    LOBYTE(v11) = sub_1C4F013E8();

    if (v11)
    {
    }

    else
    {
      sub_1C4F02318();
      v12 = *(v26 + 16);
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_1C4A36DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4EF9CD8();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v15 = MEMORY[0x1E69E7CC0];
  v68 = MEMORY[0x1E69E7CC0];
  v16 = sub_1C4428DA0();
  v17 = 0;
  v66 = a3;
  v67 = a3 & 0xC000000000000001;
  v18 = (v8 + 8);
  while (v16 != v17)
  {
    if (v67)
    {
      v20 = MEMORY[0x1C6940F90](v17, v66);
    }

    else
    {
      sub_1C44326D8();
      if (v17 >= v19)
      {
        goto LABEL_47;
      }

      v20 = sub_1C441E5BC();
    }

    v21 = v20;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return;
    }

    v22 = [v20 startDate];
    sub_1C440BE54();

    sub_1C440C618();
    sub_1C43FD388();
    sub_1C4EF9C08();
    v23 = sub_1C440F980();
    v3(v23);
    v24 = sub_1C4415864();
    v3(v24);
    if (v8)
    {
      v8 = &v68;
      sub_1C4F02318();
      sub_1C441BB74();
      sub_1C4405814();
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
    }

    ++v17;
  }

  v25 = sub_1C44104F4();
  sub_1C4A35BE4(v25, v26, v27, v28, 18, 19);

  v29 = 0;
  v68 = v15;
  while (v16 != v29)
  {
    if (v67)
    {
      v31 = MEMORY[0x1C6940F90](v29, v66);
    }

    else
    {
      sub_1C44326D8();
      if (v29 >= v30)
      {
        goto LABEL_49;
      }

      v31 = sub_1C441E5BC();
    }

    v32 = v31;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_48;
    }

    v33 = [v31 startDate];
    sub_1C440BE54();

    sub_1C440C618();
    sub_1C43FD388();
    sub_1C4EF9C08();
    v34 = sub_1C440F980();
    v3(v34);
    v35 = sub_1C4415864();
    v3(v35);
    if (v8)
    {
      v8 = &v68;
      sub_1C4F02318();
      sub_1C441BB74();
      sub_1C4405814();
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
    }

    ++v29;
  }

  v36 = sub_1C44104F4();
  v65 = sub_1C4A35BE4(v36, v37, v38, v39, 16, 17);

  v40 = 0;
  v68 = v15;
  while (v16 != v40)
  {
    if (v67)
    {
      v42 = MEMORY[0x1C6940F90](v40, v66);
    }

    else
    {
      sub_1C44326D8();
      if (v40 >= v41)
      {
        goto LABEL_51;
      }

      v42 = sub_1C441E5BC();
    }

    v43 = v42;
    if (__OFADD__(v40, 1))
    {
      goto LABEL_50;
    }

    v44 = [v42 startDate];
    sub_1C440BE54();

    sub_1C440C618();
    sub_1C43FD388();
    sub_1C4EF9C08();
    v45 = sub_1C440F980();
    v3(v45);
    v46 = sub_1C4415864();
    v3(v46);
    if (v8)
    {
      v8 = &v68;
      sub_1C4F02318();
      sub_1C441BB74();
      sub_1C4405814();
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
    }

    ++v40;
  }

  v47 = sub_1C4426CD4();
  v51 = sub_1C4A35BE4(v47, v48, v49, v50, 14, 15);

  v52 = 0;
  v68 = v15;
  while (v16 != v52)
  {
    if (v67)
    {
      v54 = MEMORY[0x1C6940F90](v52, v66);
    }

    else
    {
      sub_1C44326D8();
      if (v52 >= v53)
      {
        goto LABEL_53;
      }

      v54 = *(v66 + 8 * v52 + 32);
    }

    v55 = v54;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_52;
    }

    v56 = [v54 startDate];
    sub_1C440BE54();

    sub_1C440C618();
    sub_1C43FD388();
    v8 = sub_1C4EF9C08();
    v57 = *v18;
    (*v18)(v13, v5);
    v58 = sub_1C4415864();
    v57(v58);
    if (v8)
    {
      v8 = &v68;
      sub_1C4F02318();
      v59 = *(v68 + 16);
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
    }

    ++v52;
  }

  v60 = sub_1C4426CD4();
  v64 = sub_1C4A35BE4(v60, v61, v62, v63, 12, 13);

  sub_1C49D39CC(v65);
  sub_1C49D39CC(v51);
  sub_1C49D39CC(v64);
}

uint64_t sub_1C4A372BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4A34940(a1, a2, a3);
  v5 = v4;
  v6 = sub_1C43FE5F8();
  sub_1C4A34F60(v6, v7, a3);
  sub_1C49D39CC(v8);
  v9 = sub_1C43FE5F8();
  sub_1C4A36DCC(v9, v10, a3);
  sub_1C49D39CC(v11);
  return v5;
}

uint64_t sub_1C4A3734C()
{
  v1 = v0;
  v155 = sub_1C456902C(&qword_1EC0BA9F8, &unk_1C4F168D0);
  v2 = sub_1C43FBCE0(v155);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v154 = &v140 - v5;
  v6 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1C43FD2C8(&v140 - v8);
  v160 = sub_1C4EFF0C8();
  v9 = sub_1C43FCDF8(v160);
  v151 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2C8(&v140 - v14);
  v15 = type metadata accessor for GDInteractionEnumeration.GDInteractionIterator();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v17);
  v18 = type metadata accessor for Configuration();
  v19 = *(v18 - 8);
  v156 = v18 - 8;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  sub_1C43FD2D8();
  v152 = v21;
  v22 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  sub_1C43FD2C8(&v140 - v24);
  v25 = sub_1C4EFDE88();
  v26 = sub_1C43FCDF8(v25);
  v28 = v27;
  v143 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF28();
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v140 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v140 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v140 - v39;
  v148 = sub_1C4EFDE98();
  v41 = sub_1C43FCDF8(v148);
  v147 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD2D8();
  v161 = v45;
  v166 = MEMORY[0x1E69E7CC0];
  v146 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_store);
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v46 = *(sub_1C4EFEEF8() - 8);
  v47 = *(v46 + 72);
  v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  *(swift_allocObject() + 16) = xmmword_1C4F0C890;
  sub_1C4EFE518();
  sub_1C4EFE478();
  sub_1C4EFEA18();
  sub_1C4D504A4();
  v142 = v49;
  v50 = *MEMORY[0x1E69A95C0];
  v51 = *(v28 + 104);
  v52 = v40;
  sub_1C442E3F8();
  v51();
  v53 = v38;
  sub_1C442E3F8();
  v51();
  v54 = v35;
  sub_1C442E3F8();
  v51();
  v55 = v144;
  sub_1C442E3F8();
  v51();
  v56 = v145;
  sub_1C442E3F8();
  v51();
  v138 = v56;
  v139 = 0;
  sub_1C4EFDCD8();

  v57 = *(v143 + 8);
  v57(v56, v25);
  v57(v55, v25);
  v57(v54, v25);
  v57(v53, v25);
  v58 = v152;
  v57(v52, v25);
  v59 = sub_1C4EFD678();
  v60 = v149;
  sub_1C440BAA8(v149, 1, 1, v59);
  v163 = &v166;
  v61 = v161;
  v62 = v146;
  sub_1C48687D0(v161, v60, sub_1C4A38B44, v162);
  sub_1C4420C3C(v60, &unk_1EC0C07E0, &unk_1C4F168F0);
  (v147)[1](v61, v148);
  v63 = *(v158 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_handleView + 32);
  sub_1C4409678((v158 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_handleView), *(v158 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_handleView + 24));
  v161 = sub_1C4EFF2B8();
  sub_1C4431014(v62 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config, v58, type metadata accessor for Configuration);
  v64 = (v58 + *(v156 + 28));
  v65 = *v64;
  v66 = v64[1];
  if (qword_1EDDFEC70 != -1)
  {
    goto LABEL_54;
  }

LABEL_2:
  v67 = xmmword_1EDDFEC78;
  sub_1C4454110(v58, type metadata accessor for Configuration);
  if (v67 & ~v65 | *(&v67 + 1) & ~v66)
  {
    v68 = 2000;
  }

  else
  {
    v68 = 200;
  }

  v69 = [objc_opt_self() interactionHistoryEnumeratorWithBatchSize_];
  v165 = MEMORY[0x1E69E7CC8];
  v70 = v69;
  v71 = v159;
  v149 = v70;
  sub_1C4EF97F8();
  v152 = 0;
  v148 = (v151 + 32);
  v156 = v151 + 16;
  v147 = (v151 + 8);
  v72 = v153;
  v73 = v150;
  while (1)
  {
    v66 = v71;
    sub_1C4EF97D8();
    if (!v164[3])
    {
      v153 = v72;
      sub_1C4420C3C(v164, &qword_1EC0BCD10, &qword_1C4F0C8C0);
      goto LABEL_31;
    }

    sub_1C4461BB8(0, &qword_1EDDF0578, off_1E81EC5C8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v153 = v72;
LABEL_31:
      sub_1C4454110(v71, type metadata accessor for GDInteractionEnumeration.GDInteractionIterator);
      v58 = v165;
      v103 = *(v165 + 64);
      v150 = v165 + 64;
      v104 = *(v165 + 32);
      sub_1C43FD030();
      v107 = v106 & v105;
      v109 = (v108 + 63) >> 6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v110 = 0;
      v65 = MEMORY[0x1E69E7CC0];
      v111 = v151;
      v157 = v58;
      do
      {
LABEL_32:
        while (2)
        {
          if (v107)
          {
            v159 = v65;
            goto LABEL_38;
          }

          do
          {
            v112 = v110 + 1;
            if (__OFADD__(v110, 1))
            {
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

            if (v112 >= v109)
            {
              goto LABEL_49;
            }

            v107 = *(v150 + 8 * v112);
            ++v110;
          }

          while (!v107);
          v159 = v65;
          v110 = v112;
LABEL_38:
          v113 = __clz(__rbit64(v107)) | (v110 << 6);
          v114 = v111;
          v115 = v154;
          (*(v111 + 16))(v154, v58[6] + *(v111 + 72) * v113, v160);
          v116 = *(v58[7] + 8 * v113);
          *(v115 + *(v155 + 48)) = v116;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v117 = sub_1C4EFF048();
          v58 = sub_1C4A372BC(v117, v118, v116);

          sub_1C4420C3C(v115, &qword_1EC0BA9F8, &unk_1C4F168D0);
          v66 = v58[2];
          v65 = v159;
          v119 = *(v159 + 16);
          if (__OFADD__(v119, v66))
          {
            goto LABEL_51;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || v119 + v66 > *(v65 + 24) >> 1)
          {
            sub_1C458B740();
            v65 = v120;
          }

          v111 = v114;
          v107 &= v107 - 1;
          if (!v58[2])
          {

            v58 = v157;
            if (!v66)
            {
              continue;
            }

            __break(1u);
LABEL_49:

            v124 = v158[2];
            v125 = v158[3];
            v127 = v158[4];
            v126 = v158[5];
            v128 = v158[6];
            sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1C4F0D130;
            *(inited + 32) = v124;
            *(inited + 40) = v125;
            v130 = *(v128 + 16);
            *(&v140 - 6) = MEMORY[0x1EEE9AC00](inited);
            *(&v140 - 5) = v127;
            *(&v140 - 4) = v126;
            *(&v140 - 3) = v128;
            v138 = v65;
            swift_bridgeObjectRetain_n();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

            sub_1C4418704(sub_1C4673BE8, (&v140 - 8), v131, v132, v133, v134, v135, v136, v140, v141);

            swift_setDeallocating();
            sub_1C44DEE40();

            return sub_1C44239FC(v152);
          }

          break;
        }

        if ((*(v65 + 24) >> 1) - *(v65 + 16) < v66)
        {
          goto LABEL_52;
        }

        sub_1C456902C(&qword_1EC0B87E0, &qword_1C4F0DBD0);
        v111 = v114;
        swift_arrayInitWithCopy();

        v58 = v157;
      }

      while (!v66);
      v121 = *(v65 + 16);
      v122 = __OFADD__(v121, v66);
      v123 = v121 + v66;
      if (!v122)
      {
        *(v65 + 16) = v123;
        goto LABEL_32;
      }

LABEL_53:
      __break(1u);
LABEL_54:
      swift_once();
      goto LABEL_2;
    }

    v74 = v164[9];
    if (qword_1EC0B6F88 != -1)
    {
      swift_once();
    }

    v75 = qword_1EC1529F0;
    v76 = [v74 mechanism];
    if (*(v75 + 16))
    {
      break;
    }

LABEL_28:
  }

  v77 = v76;
  v78 = *(v75 + 40);
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v77);
  v79 = sub_1C4F02B68();
  v80 = ~(-1 << *(v75 + 32));
  do
  {
    v81 = v79 & v80;
    if (((*(v75 + 56 + (((v79 & v80) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v79 & v80)) & 1) == 0)
    {
      goto LABEL_28;
    }

    v79 = v81 + 1;
  }

  while (*(*(v75 + 48) + 8 * v81) != v77);
  v82 = [v74 sender];
  if (!v82)
  {
    goto LABEL_27;
  }

  v83 = v82;
  v84 = [v82 handle];
  sub_1C4F01138();

  v85 = String.normalizedContactHandle()();

  if (!v85.value._object)
  {

LABEL_19:
    v71 = v159;
    goto LABEL_27;
  }

  sub_1C465C294(v85.value._countAndFlagsBits, v85.value._object, v161);

  v86 = v160;
  if (sub_1C44157D4(v73, 1, v160) == 1)
  {

    sub_1C4420C3C(v73, &unk_1EC0BA0E0, &qword_1C4F105A0);
    goto LABEL_19;
  }

  (*v148)(v157, v73, v86);
  sub_1C44239FC(v152);
  v87 = v165;
  swift_isUniquelyReferenced_nonNull_native();
  v164[0] = v87;
  sub_1C44E3664();
  if (__OFADD__(*(v87 + 16), (v89 & 1) == 0))
  {
    __break(1u);
  }

  else
  {
    v90 = v88;
    v91 = v89;
    sub_1C456902C(&qword_1EC0BAA10, &qword_1C4F16910);
    v92 = sub_1C4F02458();
    v93 = v164[0];
    if ((v92 & 1) == 0)
    {
      goto LABEL_24;
    }

    sub_1C44E3664();
    if ((v91 & 1) == (v95 & 1))
    {
      v90 = v94;
LABEL_24:
      v165 = v93;
      if ((v91 & 1) == 0)
      {
        (*v156)(v141, v157, v160);
        v96 = sub_1C43FE5F8();
        sub_1C457EB2C(v96);
      }

      v97 = (*(v93 + 56) + 8 * v90);
      v98 = v74;
      MEMORY[0x1C6940330]();
      sub_1C4427EF0(*((*v97 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1C43FE5F8();
      sub_1C4F01748();

      (*v147)(v157, v160);
      v152 = sub_1C48362FC;
      v73 = v150;
      v71 = v159;
LABEL_27:
      v99 = [v74 recipients];
      sub_1C4461BB8(0, &qword_1EDDF0360, off_1E81EC590);
      sub_1C4F01678();

      v74 = v74;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v100 = sub_1C4405814();
      sub_1C4A34584(v100, v101, v102, v74);

      goto LABEL_28;
    }
  }

  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4A38340(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for GraphTriple(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4EFEEF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 20);
  sub_1C4EFEA18();
  LOBYTE(v13) = sub_1C44DBB50(a1 + v13, v12);
  v14 = *(v9 + 8);
  v14(v12, v8);
  if (v13)
  {
    v15 = *(v4 + 28);
    sub_1C4EFE518();
    v16 = sub_1C44DBB50(a1 + v15, v12);
    v14(v12, v8);
    if ((v16 & 1) == 0)
    {
      sub_1C4EFE478();
      v17 = sub_1C44DBB50(a1 + v15, v12);
      v14(v12, v8);
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }
  }

  sub_1C4589088();
  v18 = *(*a2 + 16);
  sub_1C4589C48();
  sub_1C4431014(a1, v7, type metadata accessor for GraphTriple);
  sub_1C4673C64(v18, v7, a2);
  return 1;
}

uint64_t sub_1C4A38538(id *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v36 = a4;
  v7 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v35 - v9;
  v11 = sub_1C4EFF0C8();
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = [*a1 handle];
  sub_1C4F01138();

  v19 = String.normalizedContactHandle()();

  if (!v19.value._object)
  {
    return result;
  }

  sub_1C465C294(v19.value._countAndFlagsBits, v19.value._object, a2);

  if (sub_1C44157D4(v10, 1, v11) == 1)
  {
    return sub_1C4420C3C(v10, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  (*(v37 + 32))(v17, v10, v11);
  v21 = *a3;
  swift_isUniquelyReferenced_nonNull_native();
  v38 = *a3;
  v22 = v38;
  *a3 = 0x8000000000000000;
  sub_1C44E3664();
  if (__OFADD__(*(v22 + 16), (v24 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v25 = v23;
  v26 = v24;
  sub_1C456902C(&qword_1EC0BAA10, &qword_1C4F16910);
  v27 = sub_1C4F02458();
  v28 = v38;
  if (v27)
  {
    sub_1C44E3664();
    if ((v26 & 1) == (v30 & 1))
    {
      v25 = v29;
      goto LABEL_8;
    }

LABEL_13:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

LABEL_8:
  v31 = *a3;
  *a3 = v28;

  v32 = *a3;
  if ((v26 & 1) == 0)
  {
    (*(v37 + 16))(v15, v17, v11);
    sub_1C457EB2C(v25);
  }

  v33 = (*(v32 + 56) + 8 * v25);
  v34 = v36;
  MEMORY[0x1C6940330]();
  sub_1C4427EF0(*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1C4F01748();
  return (*(v37 + 8))(v17, v11);
}

void *sub_1C4A38870()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  sub_1C4454110(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_config, _s10ViewConfigVMa);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_store);

  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_handleView));
  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView____lazy_storage___featureNames);

  return v0;
}

uint64_t sub_1C4A38908()
{
  sub_1C4A38870();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MessagingInteractionSignalView()
{
  result = qword_1EC0C1A68;
  if (!qword_1EC0C1A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A389B4()
{
  result = _s10ViewConfigVMa(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4A38A68()
{
  sub_1C4A3734C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4A38B94(uint64_t a1, unint64_t a2)
{
  v4 = *(*(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v8 = sub_1C4F00F28();
  if (a2)
  {
    v9 = sub_1C45FB538();
    if (v9)
    {
      v10 = v9;
      v11 = sub_1C4EF9CD8();
      sub_1C440BAA8(v7, 1, 1, v11);
      sub_1C4886564(a1, a2, v7);
      v13 = v12;
      sub_1C45942C8(v10);
      sub_1C44686E4(v7);
      if (v13)
      {
        if (sub_1C4594E18())
        {
          swift_isUniquelyReferenced_nonNull_native();
          v22 = v8;
          sub_1C4660314();
          return v22;
        }

        else
        {
          v14 = sub_1C445FAA8(0x636F6C6F7263696DLL, 0xEF64496E6F697461);
          if (v15)
          {
            v16 = v14;
            swift_isUniquelyReferenced_nonNull_native();
            v22 = v8;
            v17 = *(v8 + 24);
            sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
            sub_1C4F02458();
            v8 = v22;
            v18 = *(*(v22 + 48) + 16 * v16 + 8);

            v19 = *(*(v8 + 56) + 8 * v16);
            sub_1C4F02478();
          }
        }
      }
    }
  }

  return v8;
}

uint64_t sub_1C4A38DD8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1C4EF9CD8();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for MicrolocationEvent();
  *(a5 + *(result + 20)) = a2;
  v12 = (a5 + *(result + 24));
  *v12 = a3;
  v12[1] = a4;
  return result;
}

void sub_1C4A38E84(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = *(*(sub_1C456902C(&qword_1EC0C1A88, &qword_1C4F45B70) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C456902C(&qword_1EC0C1A90, &unk_1C4F45B78);
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = [BiomeLibrary() Location];
  swift_unknownObjectRelease();
  v11 = [v10 MicroLocationVisit];
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(GDMicroLocationVisitUtility) initWithMicroLocationVisitStream_];
  v13 = sub_1C4EF9BF8();
  v14 = a1 + *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);
  v15 = sub_1C4EF9BF8();
  v16 = [v12 microLocationVisitEventPublisherFrom:v13 to:v15];

  sub_1C4461BB8(0, &qword_1EC0C1A98, off_1E81EC5E0);
  v17 = v16;
  v18 = v21;
  sub_1C4EFFC38();
  if (v18)
  {
  }

  else
  {
    type metadata accessor for MicrolocationEvent();
    sub_1C4401CBC(&qword_1EC0C1AA0, &qword_1EC0C1A88, &qword_1C4F45B70);
    sub_1C4F02848();

    (*(v19 + 32))(v20, v9, v5);
  }
}

uint64_t sub_1C4A39154(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C4A39178, 0, 0);
}

uint64_t sub_1C4A39178()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = [v1 date];
  sub_1C4EF9C78();

  LOBYTE(v3) = [v1 isEnter];
  v4 = [v1 microLocationIdentifier];
  v5 = sub_1C4F01138();
  v7 = v6;

  v8 = type metadata accessor for MicrolocationEvent();
  *(v2 + *(v8 + 20)) = v3;
  v9 = (v2 + *(v8 + 24));
  *v9 = v5;
  v9[1] = v7;
  sub_1C440BAA8(v2, 0, 1, v8);
  v10 = v0[1];

  return v10();
}

void sub_1C4A3927C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(sub_1C456902C(&qword_1EC0C1A80, &qword_1C4F45B68) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v9 - v7;
  sub_1C4A38E84(a1, &v9 - v7);
  if (!v2)
  {
    sub_1C4A39338(v8, a2);
  }
}

uint64_t sub_1C4A39338(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C1A80, &qword_1C4F45B68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MicrolocationEvent()
{
  result = qword_1EC0C1AA8;
  if (!qword_1EC0C1AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A3941C()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1C4A394B0()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - v3;
  v0[2] = 0x4072C00000000000;
  v0[4] = sub_1C4F00F28();
  v5 = OBJC_IVAR____TtC24IntelligencePlatformCore19MicroLocationSignal_lastMicroLocationTimestamp;
  v6 = sub_1C4EF9CD8();
  sub_1C440BAA8(v0 + v5, 1, 1, v6);
  v7 = [BiomeLibrary() Location];
  swift_unknownObjectRelease();
  v8 = [v7 MicroLocationVisit];
  swift_unknownObjectRelease();
  v0[3] = v8;
  sub_1C440BAA8(v4, 1, 1, v6);
  v9 = OBJC_IVAR____TtC24IntelligencePlatformCore19MicroLocationSignal_lastMicroLocationTimestamp;
  swift_beginAccess();
  sub_1C45AD734(v4, v0 + v9);
  swift_endAccess();
  return v0;
}

void sub_1C4A39694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v36 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v29 = v36;
  v30 = *(v36 + 16);
  v31 = *(v36 + 24) >> 1;
  v32 = v30 + 1;
  if (v31 <= v30)
  {
    sub_1C44CD9C0();
    v29 = v36;
    v31 = *(v36 + 24) >> 1;
  }

  *(v29 + 16) = v32;
  v33 = v29 + 16 * v30;
  *(v33 + 32) = 0xD000000000000028;
  *(v33 + 40) = 0x80000001C4F8FD80;
  v34 = v30 + 2;
  if (v31 <= v32)
  {
    sub_1C44CD9C0();
    v29 = v36;
  }

  *(v29 + 16) = v34;
  v35 = v29 + 16 * v32;
  *(v35 + 32) = 0xD000000000000036;
  *(v35 + 40) = 0x80000001C4F8FDB0;

  sub_1C4499940(v29, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void sub_1C4A397A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &aBlock - v11;
  v13 = objc_autoreleasePoolPush();
  v14 = *(v3 + 24);
  sub_1C4467FE0(a1, v12);
  sub_1C4467FE0(a2, v10);
  v15 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v16 = sub_1C457A86C(v12, v10, 0, 0, 0);
  v17 = [v14 publisherWithOptions_];

  v25 = sub_1C4A3B428;
  v26 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1C44405F8;
  v24 = &unk_1F43F4CE0;
  v18 = _Block_copy(&aBlock);
  v25 = sub_1C4A3B3B4;
  v26 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1C4440590;
  v24 = &unk_1F43F4D08;
  v19 = _Block_copy(&aBlock);

  v20 = [v17 sinkWithCompletion:v18 receiveInput:v19];
  _Block_release(v19);
  _Block_release(v18);

  objc_autoreleasePoolPop(v13);
}

void sub_1C4A399E4(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (!v3)
  {
    if (qword_1EDDFECB0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  v23 = v3;
  v4 = sub_1C4A3B3BC(v3);
  if (!v5)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v19 = sub_1C4F00978();
    sub_1C442B738(v19, qword_1EDDFECB8);
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CF8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1C43F8000, v20, v21, "Max Probability Microlocation Identifier is nil", v22, 2u);
      MEMORY[0x1C6942830](v22, -1, -1);
    }

    goto LABEL_18;
  }

  v6 = v4;
  v7 = v5;
  swift_beginAccess();
  v8 = *(a2 + 32);
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a2 + 32);
  *(a2 + 32) = 0x8000000000000000;
  v10 = sub_1C445FAA8(v6, v7);
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
LABEL_22:
    swift_once();
LABEL_11:
    v16 = sub_1C4F00978();
    sub_1C442B738(v16, qword_1EDDFECB8);
    v23 = sub_1C4F00968();
    v17 = sub_1C4F01CF8();
    if (os_log_type_enabled(v23, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1C43F8000, v23, v17, "Unable to parse eventBody in BMMicrolocationStream", v18, 2u);
      MEMORY[0x1C6942830](v18, -1, -1);
    }

LABEL_18:

    return;
  }

  v12 = v10;
  v13 = v11;
  sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
  if (sub_1C4F02458())
  {
    v14 = sub_1C445FAA8(v6, v7);
    if ((v13 & 1) != (v15 & 1))
    {
      sub_1C4F029F8();
      __break(1u);
      return;
    }

    v12 = v14;
  }

  *(a2 + 32) = v9;
  if ((v13 & 1) == 0)
  {
    sub_1C457DBD8(v12, v6, v7, v9);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  *(*(v9 + 56) + 8 * v12) = *(*(v9 + 56) + 8 * v12) + 1.0;
  swift_endAccess();
}

uint64_t sub_1C4A39CF8(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4A39D50(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C4A39D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v13 = *(a1 + 24);
  v14 = sub_1C4EF9CD8();
  sub_1C440BAA8(v12, 1, 1, v14);
  (*(*(v14 - 8) + 16))(v10, a2, v14);
  sub_1C440BAA8(v10, 0, 1, v14);
  v15 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v16 = sub_1C457A86C(v12, v10, 1, 1, 0);
  v17 = [v13 publisherWithOptions_];

  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 1;
  v33 = sub_1C4A3B428;
  v34 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1C44405F8;
  v32 = &unk_1F43F4C68;
  v20 = _Block_copy(&aBlock);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v19;
  v33 = sub_1C4A3B3AC;
  v34 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1C4440590;
  v32 = &unk_1F43F4CB8;
  v22 = _Block_copy(&aBlock);

  v23 = [v17 sinkWithCompletion:v20 receiveInput:v22];

  _Block_release(v22);
  _Block_release(v20);

  swift_beginAccess();
  v24 = *(v18 + 16);
  swift_beginAccess();
  if (v24)
  {
    if ((*(v19 + 24) & 1) == 0)
    {
      v25 = *(v19 + 16);
      v26 = v24;
      goto LABEL_6;
    }

    v24 = 0;
  }

  v25 = 0;
LABEL_6:

  *a3 = v24;
  a3[1] = v25;
  return result;
}

void sub_1C4A3A0AC(void *a1)
{
  v1 = [a1 error];
  if (v1)
  {
    v2 = v1;
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDDFECB8);
    v4 = v2;
    oslog = sub_1C4F00968();
    v5 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      v8 = v4;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v9 = sub_1C4F01198();
      v11 = sub_1C441D828(v9, v10, &v13);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_1C43F8000, oslog, v5, "BMMicrolocation could not be fetched with error: %s", v6, 0xCu);
      sub_1C440962C(v7);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }
  }
}

void sub_1C4A3A24C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 eventBody];
  if (v6)
  {
    v7 = v6;
    swift_beginAccess();
    v8 = *(a2 + 16);
    *(a2 + 16) = v7;
    v9 = v7;

    [a1 timestamp];
    v11 = v10;

    swift_beginAccess();
    *(a3 + 16) = v11;
    *(a3 + 24) = 0;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v13 = sub_1C4F01CF8();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v13, "Unable to parse eventBody in BMMicrolocationStream", v14, 2u);
      MEMORY[0x1C6942830](v14, -1, -1);
    }
  }
}

uint64_t sub_1C4A3A3EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v56 - v18;
  v20 = OBJC_IVAR____TtC24IntelligencePlatformCore19MicroLocationSignal_lastMicroLocationTimestamp;
  swift_beginAccess();
  sub_1C4467FE0(v1 + v20, v19);
  v56 = v7;
  v21 = *(v7 + 16);
  v21(v17, a1, v4);
  sub_1C440BAA8(v17, 0, 1, v4);
  sub_1C4A397A0(v19, v17);
  sub_1C44686E4(v17);
  sub_1C44686E4(v19);
  v21(v19, a1, v4);
  sub_1C440BAA8(v19, 0, 1, v4);
  swift_beginAccess();
  sub_1C45AD734(v19, v1 + v20);
  swift_endAccess();
  v22 = sub_1C4A39CF8(a1);
  if (v22)
  {
    v23 = v22;
    v24 = sub_1C4A3B33C(v23);
    if (v25)
    {
      v26 = v24;
      v27 = v25;
      swift_beginAccess();
      v28 = COERCE_DOUBLE(sub_1C465C024(v26, v27, *(v2 + 32)));
      v30 = v29;
      swift_endAccess();

      v31 = 0;
      v32 = 0.0;
      if (v30)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = v28;
      }

      v34 = *(v2 + 32);
      v35 = 1 << *(v34 + 32);
      v36 = -1;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      v37 = v36 & *(v34 + 64);
      v38 = (v35 + 63) >> 6;
      if (v37)
      {
        while (1)
        {
          v39 = v31;
LABEL_14:
          v40 = __clz(__rbit64(v37));
          v37 &= v37 - 1;
          v32 = v32 + *(*(v34 + 56) + ((v39 << 9) | (8 * v40)));
          if (!v37)
          {
            goto LABEL_10;
          }
        }
      }

      while (1)
      {
LABEL_10:
        v39 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          __break(1u);
          goto LABEL_31;
        }

        if (v39 >= v38)
        {
          break;
        }

        v37 = *(v34 + 64 + 8 * v39);
        ++v31;
        if (v37)
        {
          v31 = v39;
          goto LABEL_14;
        }
      }

      sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0CE60;
      *(inited + 32) = 0xD000000000000028;
      *(inited + 40) = 0x80000001C4F8FD80;
      v42 = objc_opt_self();
      *(inited + 48) = [v42 featureValueWithDouble_];
      *(inited + 56) = 0xD000000000000036;
      *(inited + 64) = 0x80000001C4F8FDB0;
      sub_1C4EF9BE8();
      sub_1C4EF9AD8();
      v44 = v43;
      (*(v56 + 8))(v12, v4);
      v45 = v44 / *(v2 + 16);
      if (v45 > 150.0)
      {
        v45 = 150.0;
      }

      *(inited + 72) = [v42 featureValueWithDouble_];
      sub_1C4577DBC();
    }

    else
    {
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C43FFB88();
      }

      v51 = sub_1C4F00978();
      sub_1C442B738(v51, qword_1EDDFECB8);
      v52 = sub_1C4F00968();
      v53 = sub_1C4F01CF8();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_1C43F8000, v52, v53, "Max Probability Microlocation Identifier is nil", v54, 2u);
        sub_1C43FBE2C();
      }

      sub_1C4577DBC();
    }

    v50 = sub_1C4F00F28();
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
LABEL_31:
      sub_1C43FFB88();
    }

    v46 = sub_1C4F00978();
    sub_1C442B738(v46, qword_1EDDFECB8);
    v47 = sub_1C4F00968();
    v48 = sub_1C4F01CF8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1C43F8000, v47, v48, "Microlocation event is nil", v49, 2u);
      sub_1C43FBE2C();
    }

    sub_1C4577DBC();
    return sub_1C4F00F28();
  }

  return v50;
}

void sub_1C4A3A9AC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v40 = sub_1C4EF9CD8();
  v7 = sub_1C43FCDF8(v40);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = type metadata accessor for FeatureProviderSnapshot(0);
  v16 = sub_1C43FCDF8(v15);
  v38 = v17;
  v39 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = *(a2 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v35 = a3;
    v43 = MEMORY[0x1E69E7CC0];
    v42 = v22;
    sub_1C459D0A8();
    v25 = v42;
    v24 = v43;
    v27 = *(v9 + 16);
    v26 = v9 + 16;
    v28 = a2 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v36 = *(v26 + 56);
    v37 = v27;
    do
    {
      v37(v14, v28, v40);
      v37(v25, v14, v40);
      v29 = sub_1C4A3A3EC(v14);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v30 = v4;
      v31 = sub_1C4A3B178(v29, a1);

      sub_1C465CF34(v31);
      v33 = v32;
      v25 = v42;

      (*(v26 - 8))(v14, v40);
      *(v42 + *(v39 + 20)) = v33;
      v34 = *(v43 + 16);
      if (v34 >= *(v43 + 24) >> 1)
      {
        sub_1C459D0A8();
        v25 = v42;
      }

      *(v43 + 16) = v34 + 1;
      sub_1C4586A54(v25, v43 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v34);
      v28 += v36;
      --v23;
      v4 = v30;
    }

    while (v23);
    a3 = v35;
  }

  *a3 = v24;
}

uint64_t sub_1C4A3AC60()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4EF9C88();
  v9 = sub_1C4A3A3EC(v8);
  (*(v3 + 8))(v8, v0);
  return v9;
}

uint64_t sub_1C4A3AEDC()
{
  v1 = *(v0 + 32);

  sub_1C44686E4(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore19MicroLocationSignal_lastMicroLocationTimestamp);
  return v0;
}

uint64_t sub_1C4A3AF14()
{
  sub_1C4A3AEDC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MicroLocationSignal()
{
  result = qword_1EC0C1AD0;
  if (!qword_1EC0C1AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4A3AFC0()
{
  sub_1C45C2C2C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C4A3B0F8(uint64_t a1)
{
  result = sub_1C4A3B120();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4A3B120()
{
  result = qword_1EC0C1AE0;
  if (!qword_1EC0C1AE0)
  {
    type metadata accessor for MicroLocationSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1AE0);
  }

  return result;
}

void *sub_1C4A3B178(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v13, v7, v4, a2);
      MEMORY[0x1C6942830](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1C4A3B33C(void *a1)
{
  v2 = [a1 maxProbabilityMicroLocationIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4A3B3BC(void *a1)
{
  v1 = [a1 maxProbabilityMicroLocationIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4A3B434@<X0>(uint64_t a1@<X8>)
{
  if ([v1 type] == 1)
  {
    MEMORY[0x1C6941780]([v1 int64Value]);
LABEL_5:
    v3 = 0;
    goto LABEL_7;
  }

  if ([v1 type] == 2)
  {
    MEMORY[0x1C69406E0]([v1 doubleValue]);
    goto LABEL_5;
  }

  v3 = 1;
LABEL_7:
  v4 = sub_1C4EFB258();

  return sub_1C440BAA8(a1, v3, 1, v4);
}

uint64_t DatabaseValue.init(featureValueData:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C456902C(&qword_1EC0C1AE8, &qword_1C4F5D6A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25[-v4];
  v6 = sub_1C4EFB258();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C4461BB8(0, &qword_1EDDFCE70, 0x1E696ACD0);
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v11 = sub_1C4F01D38();
  v15 = v11;
  if (v11)
  {
    sub_1C4A3B434(v5);

    if (sub_1C44157D4(v5, 1, v6) == 1)
    {
      sub_1C4A3B890(v5);
      sub_1C43FE5F8();
      sub_1C4EF9998();
      v16 = sub_1C43FE5F8();
      sub_1C4434000(v16, v17);
      (*(v7 + 32))(a1, v10, v6);
    }

    else
    {
      v22 = sub_1C43FE5F8();
      sub_1C4434000(v22, v23);
      v24 = *(v7 + 32);
      v24(v10, v5, v6);
      v24(a1, v10, v6);
    }

    return sub_1C440BAA8(a1, 0, 1, v6);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v18 = sub_1C4F00978();
    sub_1C442B738(v18, qword_1EDDFECB8);
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CD8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C43F8000, v19, v20, "DatabaseValueConvertible error: Expected value to be an MLFeatureValue", v21, 2u);
      MEMORY[0x1C6942830](v21, -1, -1);
    }

    v12 = sub_1C43FE5F8();
    sub_1C4434000(v12, v13);

    return sub_1C440BAA8(a1, 1, 1, v6);
  }
}

uint64_t sub_1C4A3B890(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C1AE8, &qword_1C4F5D6A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1C4A3B8F8(char a1)
{
  v1 = [swift_getObjCClassFromMetadata() featureValueWithInt64_];

  return v1;
}

id sub_1C4A3B944(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return [swift_getObjCClassFromMetadata() featureValueWithDouble_];
  }
}

uint64_t sub_1C4A3B994(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *(a1 + 2);
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal____lazy_storage___featureNames) = 0;
  *(v4 + 16) = v7;
  *(v4 + 32) = v8;
  *(v4 + 40) = *(a1 + 24);
  sub_1C463F300(a2, v4 + OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal_config);
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal_store) = a3;
  v9 = OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal_handleView;
  v10 = sub_1C4EFCE48();
  sub_1C43FBCE0(v10);
  (*(v11 + 32))(v4 + v9, a4);
  return v4;
}

uint64_t sub_1C4A3BA48()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal____lazy_storage___featureNames);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal____lazy_storage___featureNames);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v21 = OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal____lazy_storage___featureNames;
    v24 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    for (i = 0; i != 44; i += 4)
    {
      v4 = *(&unk_1F43DAA18 + i + 32);
      sub_1C4F02248();
      v5 = 0xE700000000000000;
      v6 = 0x746C7561666564;
      switch(v4)
      {
        case 1:
          v5 = 0xE600000000000000;
          v6 = 0x6D6F74737563;
          break;
        case 2:
          break;
        case 3:
          v5 = 0xE500000000000000;
          v6 = 0x7065656C73;
          break;
        case 4:
          v7 = 1986622052;
          goto LABEL_15;
        case 5:
          v5 = 0xE800000000000000;
          v6 = 0x6573696372657865;
          break;
        case 6:
          v5 = 0xE400000000000000;
          v6 = 1802661751;
          break;
        case 7:
          v5 = 0xE800000000000000;
          v6 = 0x6C616E6F73726570;
          break;
        case 8:
          v7 = 1684104562;
LABEL_15:
          v6 = v7 | 0x676E6900000000;
          break;
        case 9:
          v5 = 0xE600000000000000;
          v6 = 0x676E696D6167;
          break;
        case 10:
          v6 = 0x6E6C7566646E696DLL;
          v5 = 0xEB00000000737365;
          break;
        default:
          v6 = 0x6E776F6E6B6E75;
          break;
      }

      MEMORY[0x1C6940010](v6, v5);

      MEMORY[0x1C6940010](0xD000000000000010, 0x80000001C4FAD5E0);
      v15 = *(v24 + 16);
      if (v15 >= *(v24 + 24) >> 1)
      {
        sub_1C44CD9C0();
      }

      *(v24 + 16) = v15 + 1;
      v16 = v24 + 16 * v15;
      *(v16 + 32) = 0;
      *(v16 + 40) = 0xE000000000000000;
    }

    sub_1C4499940(v24, v8, v9, v10, v11, v12, v13, v14, v20, v21, v0, 0, 0xE000000000000000, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    v1 = v17;
    v18 = *(v23 + v22);
    *(v23 + v22) = v17;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return v1;
}

uint64_t sub_1C4A3BCBC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0C1B10, &unk_1C4F45D50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24[-v8];
  v10 = type metadata accessor for GDInteractionEnumeration.GDInteractionIterator();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a2 + 16);
  if (v14 && *(a3 + 16))
  {
    v15 = a1;
    sub_1C4EF97F8();
    GDInteractionEnumeration.GDInteractionIterator.next()(v16);
    v26 = v17;
    v18 = sub_1C456902C(&qword_1EC0B8F18, &unk_1C4F0E9D0);
    sub_1C440BAA8(v9, 1, 1, v18);
    v25 = MEMORY[0x1E69E7CC8];
    v19 = a2 + ((*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80));
    v20 = *(*(v18 - 8) + 72);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v21 = v14 + 1;
    while (--v21)
    {
      sub_1C4A3BF78(&v25, v19, v9, &v26, a3, v13);
      v19 += v20;
    }

    v23 = v25;
    sub_1C4420C3C(v9, &qword_1EC0C1B10, &unk_1C4F45D50);

    sub_1C4454110(v13, type metadata accessor for GDInteractionEnumeration.GDInteractionIterator);
    return v23;
  }

  else
  {
    type metadata accessor for BMUserFocusModeComputedSemanticType(0);
    sub_1C456902C(&qword_1EC0C1B18, &unk_1C4F45D60);
    sub_1C4A3DE18(&qword_1EC0C1B20, type metadata accessor for BMUserFocusModeComputedSemanticType);

    return sub_1C4F00F28();
  }
}

void sub_1C4A3BF78(uint64_t a1, uint64_t a2, unint64_t a3, void **a4, uint64_t a5, uint64_t a6)
{
  v96 = a1;
  v97 = a6;
  v108 = a3;
  v109 = a5;
  v99 = a4;
  v7 = sub_1C4EFF0C8();
  v8 = *(v7 - 8);
  v102 = v7;
  v103 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v91 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v101 = v87 - v12;
  v13 = sub_1C4EF9CD8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v98 = v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C456902C(&qword_1EC0C1B10, &unk_1C4F45D50);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v87 - v19;
  v21 = sub_1C456902C(&qword_1EC0B8F18, &unk_1C4F0E9D0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v100 = v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (v87 - v25);
  sub_1C4460050(a2, v87 - v25, &qword_1EC0B8F18, &unk_1C4F0E9D0);
  v27 = *v26;
  v28 = *(v21 + 48);
  v29 = [*v26 starting];

  v30 = v26 + v28;
  v31 = v14 + 8;
  v32 = *(v14 + 8);
  v33 = v13;
  v32(v30, v13);
  if (v29)
  {
    v34 = v108;
    sub_1C4420C3C(v108, &qword_1EC0C1B10, &unk_1C4F45D50);
    sub_1C4460050(a2, v34, &qword_1EC0B8F18, &unk_1C4F0E9D0);
    sub_1C440BAA8(v34, 0, 1, v21);
    return;
  }

  v95 = a2;
  sub_1C4460050(v108, v20, &qword_1EC0C1B10, &unk_1C4F45D50);
  if (sub_1C44157D4(v20, 1, v21) == 1)
  {
    v35 = &qword_1EC0C1B10;
    v36 = &unk_1C4F45D50;
    v37 = v20;
LABEL_32:
    sub_1C4420C3C(v37, v35, v36);
    return;
  }

  v38 = v21;
  v92 = v32;
  v39 = v100;
  sub_1C44CD9E0(v20, v100, &qword_1EC0B8F18, &unk_1C4F0E9D0);
  v87[1] = v103 + 16;
  v94 = v103 + 32;
  v40 = &selRef_localizedName;
  v88 = xmmword_1C4F0FCC0;
  v41 = v99;
  v93 = v33;
  v89 = v21;
  v90 = v31;
LABEL_6:
  v42 = v98;
  if (!*v41)
  {
LABEL_31:
    v35 = &qword_1EC0B8F18;
    v36 = &unk_1C4F0E9D0;
    v37 = v39;
    goto LABEL_32;
  }

  v43 = *v41;
  v44 = [v43 v40[461]];
  sub_1C4EF9C78();

  v45 = *(v38 + 48);
  v46 = v93;
  LOBYTE(v44) = sub_1C4EF9C08();
  v47 = v92;
  v92(v42, v46);
  if ((v44 & 1) == 0 || (v48 = [v43 v40[461]], sub_1C4EF9C78(), v48, v49 = *(v38 + 48), sub_1C4A3DE18(&qword_1EDDFCD70, MEMORY[0x1E6969530]), LOBYTE(v49) = sub_1C4F01068(), v47(v42, v46), (v49 & 1) == 0))
  {

    v39 = v100;
    goto LABEL_31;
  }

  v50 = [v43 recipients];
  sub_1C481B61C();
  v51 = sub_1C4F01678();
  v52 = [v43 sender];
  v104 = v43;
  if (v52)
  {

    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    v53 = swift_allocObject();
    *(v53 + 16) = v88;
    v54 = [v43 sender];
    if (!v54)
    {
      goto LABEL_35;
    }

    v55 = v54;

    *(v53 + 32) = v55;
    v56 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v56 = MEMORY[0x1E69E7CC0];
    v53 = MEMORY[0x1E69E7CC0];
  }

  v110 = v51;
  sub_1C49D4B44(v53);
  v57 = v110;
  v58 = sub_1C4428DA0();
  v59 = 0;
  v107 = v57 & 0xFFFFFFFFFFFFFF8;
  v108 = v57 & 0xC000000000000001;
  v106 = v56;
  while (1)
  {
    if (v58 == v59)
    {

      MEMORY[0x1EEE9AC00](v81);
      v39 = v100;
      v87[-2] = v96;
      v87[-1] = v39;
      v82 = v105;
      sub_1C4D373DC(sub_1C4A3DDFC, &v87[-4], v106);
      v105 = v82;

      GDInteractionEnumeration.GDInteractionIterator.next()(v83);
      v85 = v84;

      v41 = v99;
      v86 = *v99;
      *v99 = v85;

      v38 = v89;
      v40 = &selRef_localizedName;
      goto LABEL_6;
    }

    if (v108)
    {
      v60 = MEMORY[0x1C6940F90](v59, v57);
    }

    else
    {
      if (v59 >= *(v107 + 16))
      {
        goto LABEL_34;
      }

      v60 = *(v57 + 8 * v59 + 32);
    }

    v61 = v60;
    v62 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    v63 = [v60 handle];
    v64 = sub_1C4F01138();
    v66 = v65;

    if (*(v109 + 16))
    {
      v67 = sub_1C445FAA8(v64, v66);
      v69 = v68;

      if ((v69 & 1) == 0)
      {
        goto LABEL_27;
      }

      v70 = v103;
      v71 = *(v103 + 72);
      v72 = *(v109 + 56) + v71 * v67;
      v73 = v91;
      v74 = v102;
      (*(v103 + 16))(v91, v72, v102);

      v75 = *(v70 + 32);
      v75(v101, v73, v74);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44D45E4(0, *(v106 + 16) + 1, 1, v106);
        v106 = v79;
      }

      v77 = *(v106 + 16);
      v76 = *(v106 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_1C44D45E4(v76 > 1, v77 + 1, 1, v106);
        v106 = v80;
      }

      v78 = v106;
      *(v106 + 16) = v77 + 1;
      v75((v78 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + v77 * v71), v101, v102);
      v59 = v62;
    }

    else
    {

LABEL_27:

      ++v59;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1C4A3C780(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v50 = a1;
  v49 = sub_1C4EFF0C8();
  v47 = *(v49 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1C456902C(&qword_1EC0B8F18, &unk_1C4F0E9D0);
  v8 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v10 = (&v46 - v9);
  sub_1C4460050(a3, &v46 - v9, &qword_1EC0B8F18, &unk_1C4F0E9D0);
  v11 = *v10;
  v12 = [*v10 semanticType];

  v13 = *a2;
  swift_isUniquelyReferenced_nonNull_native();
  v51 = *a2;
  v14 = v51;
  *a2 = 0x8000000000000000;
  v15 = sub_1C457EB4C(v12);
  if (__OFADD__(*(v14 + 16), (v16 & 1) == 0))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v15;
  v18 = v16;
  sub_1C456902C(&qword_1EC0C1B28, &qword_1C4F45D70);
  v19 = sub_1C4F02458();
  v20 = v51;
  if (v19)
  {
    v21 = sub_1C457EB4C(v12);
    if ((v18 & 1) != (v22 & 1))
    {
LABEL_18:
      type metadata accessor for BMUserFocusModeComputedSemanticType(0);
      goto LABEL_19;
    }

    v17 = v21;
  }

  v23 = *a2;
  *a2 = v20;

  v24 = *a2;
  if ((v18 & 1) == 0)
  {
    sub_1C4A3DE18(&qword_1EDDFE820, MEMORY[0x1E69A9810]);
    v25 = sub_1C4F00F28();
    sub_1C457E600(v17, v12, v25, v24);
  }

  v26 = *(v24 + 56);
  v27 = *(v26 + 8 * v17);
  swift_isUniquelyReferenced_nonNull_native();
  v51 = *(v26 + 8 * v17);
  v28 = v51;
  *(v26 + 8 * v17) = 0x8000000000000000;
  sub_1C44E3664();
  if (__OFADD__(*(v28 + 16), (v30 & 1) == 0))
  {
    goto LABEL_16;
  }

  v31 = v29;
  v32 = v30;
  sub_1C456902C(&qword_1EC0C1B30, &unk_1C4F45D78);
  v33 = sub_1C4F02458();
  v34 = v51;
  if ((v33 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1C44E3664();
  if ((v32 & 1) == (v36 & 1))
  {
    v31 = v35;
LABEL_11:
    v37 = *(v26 + 8 * v17);
    *(v26 + 8 * v17) = v34;

    v38 = *(v26 + 8 * v17);
    if ((v32 & 1) == 0)
    {
      (*(v47 + 16))(v7, v50, v49);
      sub_1C457EB38(v31, v7, 0, v38);
    }

    v39 = *(v38 + 56);
    v40 = *(v39 + 8 * v31);
    v41 = __CFADD__(v40, 1);
    v42 = v40 + 1;
    if (!v41)
    {
      v43 = *(v48 + 48);
      *(v39 + 8 * v31) = v42;
      v44 = sub_1C4EF9CD8();
      return (*(*(v44 - 8) + 8))(v10 + v43, v44);
    }

    goto LABEL_17;
  }

LABEL_19:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4A3CB2C()
{
  v1 = v0;
  v2 = type metadata accessor for Configuration();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v54 - v12;
  v58 = sub_1C4EFCE38();
  v14 = [BiomeLibrary() UserFocus];
  swift_unknownObjectRelease();
  v15 = [v14 ComputedMode];
  swift_unknownObjectRelease();
  sub_1C4EF9AC8();
  v16 = sub_1C4EF9CD8();
  sub_1C440BAA8(v13, 0, 1, v16);
  sub_1C440BAA8(v11, 1, 1, v16);
  v17 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v18 = sub_1C457A86C(v13, v11, 0, 0, 0);
  v56 = v15;
  v19 = [v15 publisherWithOptions_];

  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x1E69E7CC0];
  v21 = v20 + 16;
  v63 = sub_1C4A3D1D4;
  v64 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1C44405F8;
  v62 = &unk_1F43F4DB0;
  v22 = _Block_copy(&aBlock);
  v63 = sub_1C4A3DDF4;
  v64 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1C4440590;
  v62 = &unk_1F43F4DD8;
  v23 = _Block_copy(&aBlock);
  v54[1] = v20;

  v55 = v19;
  v24 = [v19 sinkWithCompletion:v22 receiveInput:v23];
  _Block_release(v23);
  _Block_release(v22);

  v57 = v1;
  sub_1C4431074(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal_store) + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config, v6, type metadata accessor for Configuration);
  v25 = &v6[*(v3 + 28)];
  v26 = *v25;
  v27 = *(v25 + 1);
  if (qword_1EDDFEC70 != -1)
  {
LABEL_29:
    swift_once();
  }

  v28 = xmmword_1EDDFEC78;
  sub_1C4454110(v6, type metadata accessor for Configuration);
  if (v28 & ~v26 | *(&v28 + 1) & ~v27)
  {
    v29 = 2000;
  }

  else
  {
    v29 = 200;
  }

  v26 = [objc_opt_self() interactionHistoryEnumeratorWithBatchSize_];
  swift_beginAccess();
  v30 = *v21;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4811B78();
  v27 = v31;

  v21 = sub_1C4A3BCBC(v26, v27, v58);

  v32 = v21 + 64;
  v33 = 1 << *(v21 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v21 + 64);
  v6 = ((v33 + 63) >> 6);
  v58 = v21;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v36 = 0;
  v37 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v35)
      {
        while (1)
        {
          v38 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            break;
          }

          if (v38 >= v6)
          {
            goto LABEL_24;
          }

          v35 = *(v32 + 8 * v38);
          ++v36;
          if (v35)
          {
            v36 = v38;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_13:
      v39 = __clz(__rbit64(v35)) | (v36 << 6);
      v40 = *(*(v58 + 48) + 4 * v39);
      v41 = *(*(v58 + 56) + 8 * v39);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4A3D5B4(v40, v41);
      v27 = v42;

      v26 = *(v27 + 16);
      v43 = v37[2];
      v21 = v43 + v26;
      if (__OFADD__(v43, v26))
      {
        goto LABEL_26;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v21 > v37[3] >> 1)
      {
        sub_1C458B8D8();
        v37 = v44;
      }

      v35 &= v35 - 1;
      if (!*(v27 + 16))
      {
        break;
      }

      v45 = v37[2];
      if ((v37[3] >> 1) - v45 < v26)
      {
        goto LABEL_27;
      }

      v21 = &v37[5 * v45];
      sub_1C456902C(&qword_1EC0B8828, &qword_1C4F0E9C0);
      swift_arrayInitWithCopy();

      if (v26)
      {
        v46 = v37[2];
        v47 = __OFADD__(v46, v26);
        v48 = (v46 + v26);
        if (v47)
        {
          goto LABEL_28;
        }

        v37[2] = v48;
      }
    }
  }

  while (!v26);
  __break(1u);
LABEL_24:

  v49 = v57[3];
  v50 = v57[4];
  v51 = v57[5];
  v52 = v57[6];
  aBlock = v57[2];
  v60 = v49;
  v61 = v50;
  v62 = v51;
  v63 = v52;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4811D34(v37);

  sub_1C47D32C8();
}

void sub_1C4A3D1D4(void *a1)
{
  if ([a1 state] == 1)
  {
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDE2DF70);
    v3 = a1;
    oslog = sub_1C4F00968();
    v4 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      [v3 error];
      sub_1C456902C(&qword_1EC0C1B38, &unk_1C4F45D88);
      v7 = sub_1C4F01198();
      v9 = sub_1C441D828(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1C43F8000, oslog, v4, "Error traversing Biome stream: %s", v5, 0xCu);
      sub_1C440962C(v6);
      MEMORY[0x1C6942830](v6, -1, -1);
      MEMORY[0x1C6942830](v5, -1, -1);
    }

    else
    {
    }
  }
}

id sub_1C4A3D39C(void *a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8830, &unk_1C4F0DC20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v9 = sub_1C4EF9CD8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 eventBody];
  if (result)
  {
    v15 = result;
    [a1 timestamp];
    sub_1C4EF9AC8();
    v16 = *(v4 + 48);
    *v8 = v15;
    (*(v10 + 32))(&v8[v16], v13, v9);
    swift_beginAccess();
    sub_1C4589538();
    v17 = *(*(a2 + 16) + 16);
    sub_1C458A0C8();
    v18 = *(a2 + 16);
    *(v18 + 16) = v17 + 1;
    sub_1C44CD9E0(v8, v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, &qword_1EC0B8830, &unk_1C4F0DC20);
    *(a2 + 16) = v18;
    return swift_endAccess();
  }

  return result;
}

void sub_1C4A3D5B4(int a1, uint64_t a2)
{
  v57 = sub_1C456902C(&qword_1EC0C1B08, &qword_1C4F45D48);
  v4 = *(*(v57 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v57);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v47 - v8;
  v9 = *(a2 + 16);
  if (v9)
  {
    v64 = MEMORY[0x1E69E7CC0];
    sub_1C459EA50();
    v10 = v64;
    v11 = sub_1C4703354(a2);
    v13 = v12;
    v14 = a2 + 64;
    v15 = objc_opt_self();
    v16 = 0;
    v54 = v15;
    v55 = "ModeInteractionSignal";
    v17 = *(a2 + 32);
    v48 = a2 + 72;
    v49 = v9;
    v52 = v13;
    v53 = a2 + 64;
    v51 = a1;
    v50 = v7;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << v17)
    {
      if ((*(v14 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_34;
      }

      if (*(a2 + 36) != v13)
      {
        goto LABEL_35;
      }

      v59 = 1 << v11;
      v60 = v11 >> 6;
      v58 = v16;
      v61 = v10;
      v18 = *(a2 + 48);
      v19 = sub_1C4EFF0C8();
      v20 = *(v19 - 8);
      v21 = v20;
      v22 = v18 + *(v20 + 72) * v11;
      v23 = v56;
      (*(v20 + 16))(v56, v22, v19);
      v24 = *(*(a2 + 56) + 8 * v11);
      (*(v21 + 32))(v7, v23, v19);
      *&v7[*(v57 + 48)] = v24;
      v62 = 0;
      v63 = 0xE000000000000000;
      sub_1C4F02248();

      v25 = 0xE700000000000000;
      v26 = 0x746C7561666564;
      switch(a1)
      {
        case 1:
          v25 = 0xE600000000000000;
          v26 = 0x6D6F74737563;
          break;
        case 2:
          break;
        case 3:
          v25 = 0xE500000000000000;
          v26 = 0x7065656C73;
          break;
        case 4:
          v27 = 1986622052;
          goto LABEL_18;
        case 5:
          v25 = 0xE800000000000000;
          v26 = 0x6573696372657865;
          break;
        case 6:
          v25 = 0xE400000000000000;
          v26 = 1802661751;
          break;
        case 7:
          v25 = 0xE800000000000000;
          v26 = 0x6C616E6F73726570;
          break;
        case 8:
          v27 = 1684104562;
LABEL_18:
          v26 = v27 | 0x676E6900000000;
          break;
        case 9:
          v25 = 0xE600000000000000;
          v26 = 0x676E696D6167;
          break;
        case 10:
          v26 = 0x6E6C7566646E696DLL;
          v25 = 0xEB00000000737365;
          break;
        default:
          v26 = 0x6E776F6E6B6E75;
          break;
      }

      v62 = v26;
      v63 = v25;
      MEMORY[0x1C6940010](0xD000000000000010, v55 | 0x8000000000000000);
      v28 = v62;
      v29 = v63;
      v30 = sub_1C4EFF048();
      if (v24 < 0)
      {
        goto LABEL_36;
      }

      v32 = v7;
      v33 = v30;
      v34 = v31;
      v35 = [v54 featureValueWithInt64_];
      sub_1C4420C3C(v32, &qword_1EC0C1B08, &qword_1C4F45D48);
      v10 = v61;
      v64 = v61;
      v36 = *(v61 + 16);
      if (v36 >= *(v61 + 24) >> 1)
      {
        sub_1C459EA50();
        v10 = v64;
      }

      *(v10 + 16) = v36 + 1;
      v37 = (v10 + 40 * v36);
      v37[4] = v28;
      v37[5] = v29;
      v37[6] = v33;
      v37[7] = v34;
      v37[8] = v35;
      v17 = *(a2 + 32);
      v38 = 1 << v17;
      if (v11 >= 1 << v17)
      {
        goto LABEL_37;
      }

      v14 = v53;
      v39 = *(v53 + 8 * v60);
      if ((v39 & v59) == 0)
      {
        goto LABEL_38;
      }

      LODWORD(v13) = v52;
      if (*(a2 + 36) != v52)
      {
        goto LABEL_39;
      }

      v40 = v39 & (-2 << (v11 & 0x3F));
      if (v40)
      {
        v38 = __clz(__rbit64(v40)) | v11 & 0x7FFFFFFFFFFFFFC0;
        a1 = v51;
        v41 = v49;
        v7 = v50;
      }

      else
      {
        v42 = v60 << 6;
        v43 = v60 + 1;
        v41 = v49;
        v44 = (v48 + 8 * v60);
        a1 = v51;
        v7 = v50;
        while (v43 < (v38 + 63) >> 6)
        {
          v46 = *v44++;
          v45 = v46;
          v42 += 64;
          ++v43;
          if (v46)
          {
            v38 = __clz(__rbit64(v45)) + v42;
            break;
          }
        }
      }

      v11 = v38;
      v16 = v58 + 1;
      if (v58 + 1 == v41)
      {
        return;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }
}

char *sub_1C4A3DAC0()
{
  v1 = *(v0 + 3);
  v3 = *(v0 + 5);
  v2 = *(v0 + 6);

  sub_1C4454110(&v0[OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal_config], _s10ViewConfigVMa);
  v4 = *&v0[OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal_store];

  v5 = OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal_handleView;
  v6 = sub_1C4EFCE48();
  sub_1C43FBCE0(v6);
  (*(v7 + 8))(&v0[v5]);
  v8 = *&v0[OBJC_IVAR____TtC24IntelligencePlatformCore21ModeInteractionSignal____lazy_storage___featureNames];

  return v0;
}

uint64_t sub_1C4A3DB80()
{
  sub_1C4A3DAC0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ModeInteractionSignal()
{
  result = qword_1EC0C1AF8;
  if (!qword_1EC0C1AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A3DC2C()
{
  result = _s10ViewConfigVMa(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1C4EFCE48();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4A3DD18()
{
  sub_1C4A3CB2C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4A3DE18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C4A3DEB4()
{
  result = qword_1EC0C1B40;
  if (!qword_1EC0C1B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1B40);
  }

  return result;
}

unint64_t sub_1C4A3DF0C()
{
  result = qword_1EC0C1B48;
  if (!qword_1EC0C1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1B48);
  }

  return result;
}

unint64_t sub_1C4A3DF68()
{
  result = qword_1EC0C1B50;
  if (!qword_1EC0C1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1B50);
  }

  return result;
}

unint64_t sub_1C4A3DFC0()
{
  result = qword_1EC0C1B58;
  if (!qword_1EC0C1B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1B58);
  }

  return result;
}

IntelligencePlatformCore::MotionState sub_1C4A3E018@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = MotionState.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C4A3E058@<X0>(uint64_t *a1@<X8>)
{
  result = MotionState.rawValue.getter();
  *a1 = result;
  return result;
}

void *MotionStateActivityIntervalProvider.__allocating_init()()
{
  type metadata accessor for MotionStateDistributionProvider();
  *(swift_allocObject() + 16) = 0x404E000000000000;
  type metadata accessor for MotionStateActivityIntervalProvider();
  v0 = swift_allocObject();
  return sub_1C442CFB4(v0);
}

double sub_1C4A3E0E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1C480BC20(a1 + 40 * v2 - 8, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1C4A3E114(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4A3E138(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 1;
  }

  v2 = *(a1 + 8 * v1 + 24);
}

uint64_t sub_1C4A3E184(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v5;
}

uint64_t sub_1C4A3E1E4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = a2(0);
    (*(*(v7 - 8) + 16))(a3, a1 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v6, v7);
    v8 = sub_1C440AF48();
  }

  else
  {
    a2(0);
    v8 = sub_1C4412BF8();
  }

  return sub_1C440BAA8(v8, v9, v10, v11);
}

uint64_t sub_1C4A3E29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = *(sub_1C456902C(&qword_1EC0B9078, &unk_1C4F30C70) - 8);
    sub_1C4A3F7D8(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, a2);
    v7 = sub_1C440AF48();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9078, &unk_1C4F30C70);
    v7 = sub_1C4412BF8();
  }

  return sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C4A3E37C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001C4F84300 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {
    return 0;
  }

  v5 = 1;
  if (a1 != 0xD000000000000017 || 0x80000001C4F84320 != a2)
  {
    if (sub_1C4F02938())
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return v5;
}

void *MotionStateActivityIntervalProvider.init(motionStateDistributionProvider:)(uint64_t a1)
{
  v1[4] = 43200;
  v1[5] = 0x3FE0000000000000;
  v1[2] = a1;
  v1[3] = 0x4072C00000000000;
  return v1;
}

uint64_t sub_1C4A3E4A8()
{
  sub_1C43FBCD4();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_1C4EF9CD8();
  v1[15] = v4;
  v5 = *(v4 - 8);
  v1[16] = v5;
  v6 = *(v5 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v7 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4A3E5B4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v5 + 16);
  *(v0 + 200) = v8;
  *(v0 + 208) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v6, v4);
  sub_1C4EF9BE8();
  v8(v3, v1, v4);
  *(v0 + 216) = *(v7 + 16);
  *(v0 + 224) = 1;
  *(v0 + 264) = 3;
  v9 = swift_task_alloc();
  *(v0 + 232) = v9;
  *v9 = v0;
  v10 = sub_1C44075C4(v9);

  return sub_1C4A3FC08(v10, v11);
}

uint64_t sub_1C4A3E6AC()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 232);
  v7 = *v0;
  *(*v0 + 240) = v2;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4A3E7A0()
{
  v44 = v0;
  v1 = sub_1C4A3F194(*(v0 + 240));

  v2 = *(v0 + 264);
  if (v1 == 3)
  {
LABEL_33:
    *(v0 + 265) = v2;
    v29 = swift_task_alloc();
    *(v0 + 248) = v29;
    *v29 = v0;
    v29[1] = sub_1C4A3ECD4;
    v30 = *(v0 + 216);
    v32 = *(v0 + 184);
    v31 = *(v0 + 192);

    return sub_1C4A40700();
  }

  else
  {
    v3 = 0xD000000000000014;
    v4 = "raph";
    v2 = v1;
    switch(*(v0 + 264))
    {
      case 1:
        v4 = "motion_state_unknown";
        v3 = 0xD000000000000017;
        goto LABEL_5;
      case 2:
        v4 = "motion_state_stationary";
        v3 = 0xD000000000000013;
        goto LABEL_5;
      case 3:
        goto LABEL_32;
      default:
LABEL_5:
        v5 = v4 | 0x8000000000000000;
        if (v1)
        {
          if (v1 == 1)
          {
            v6 = 0xD000000000000017;
          }

          else
          {
            v6 = 0xD000000000000013;
          }

          if (v1 == 1)
          {
            v7 = "motion_state_unknown";
          }

          else
          {
            v7 = "motion_state_stationary";
          }
        }

        else
        {
          v6 = 0xD000000000000014;
          v7 = "raph";
        }

        if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
        {

LABEL_31:
          v2 = *(v0 + 264);
          goto LABEL_32;
        }

        v9 = sub_1C4F02938();

        v2 = *(v0 + 264);
        if (v9)
        {
          goto LABEL_32;
        }

        if (*(v0 + 264))
        {
          v10 = "motion_state_unknown";
          v11 = sub_1C44326E4();

          v2 = v1;
          if (v11)
          {
            goto LABEL_32;
          }

          if (v1)
          {
            v12 = sub_1C44326E4();

            if ((v12 & 1) == 0)
            {
              if (qword_1EDDFECB0 != -1)
              {
                sub_1C43FFB88();
              }

              v13 = sub_1C4F00978();
              sub_1C442B738(v13, qword_1EDDFECB8);
              v14 = sub_1C4F00968();
              v15 = sub_1C4F01CF8();
              if (os_log_type_enabled(v14, v15))
              {
                v16 = swift_slowAlloc();
                v17 = swift_slowAlloc();
                v43 = v17;
                *v16 = 136315138;
                if (v1 == 2)
                {
                  v10 = "motion_state_stationary";
                  v18 = 0xD000000000000013;
                }

                else
                {
                  v18 = 0xD000000000000017;
                }

                v19 = sub_1C441D828(v18, v10 | 0x8000000000000000, &v43);

                *(v16 + 4) = v19;
                _os_log_impl(&dword_1C43F8000, v14, v15, "New activity interval type %s is different from current activity interval type", v16, 0xCu);
                sub_1C440962C(v17);
                sub_1C43FBE2C();
                sub_1C43FBE2C();
              }

              v2 = *(v0 + 264);
              goto LABEL_33;
            }
          }

          else
          {
          }

          if (qword_1EDDFECB0 != -1)
          {
            sub_1C43FFB88();
          }

          v37 = sub_1C4F00978();
          sub_1C442B738(v37, qword_1EDDFECB8);
          v38 = sub_1C4F00968();
          v39 = sub_1C4F01CF8();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            _os_log_impl(&dword_1C43F8000, v38, v39, "New activity type is unknown, therefore carrying along old interval type", v40, 2u);
            sub_1C43FBE2C();
          }

          goto LABEL_31;
        }

        v2 = v1;
LABEL_32:
        v20 = *(v0 + 208);
        v42 = *(v0 + 224);
        v41 = *(v0 + 200);
        v21 = *(v0 + 184);
        v22 = *(v0 + 192);
        v24 = *(v0 + 168);
        v23 = *(v0 + 176);
        v25 = *(v0 + 120);
        v26 = *(v0 + 128);
        v27 = *(v26 + 8);
        v27(v23, v25);
        v41(v23, v21, v25);
        sub_1C4EF9BE8();
        v27(v22, v25);
        v28 = *(v26 + 32);
        v28(v22, v24, v25);
        sub_1C4EF9BE8();
        v27(v21, v25);
        v28(v21, v24, v25);
        if (v42 == 144)
        {
          goto LABEL_33;
        }

        ++*(v0 + 224);
        *(v0 + 264) = v2;
        v34 = swift_task_alloc();
        *(v0 + 232) = v34;
        *v34 = v0;
        v35 = sub_1C44075C4();

        result = sub_1C4A3FC08(v35, v36);
        break;
    }
  }

  return result;
}