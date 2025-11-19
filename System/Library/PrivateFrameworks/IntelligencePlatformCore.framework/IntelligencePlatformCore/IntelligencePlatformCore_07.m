uint64_t sub_1C4489690()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1152);
  v2 = *(v0 + 1136);
  sub_1C44A1824();
  *(v0 + 792) = v3;
  sub_1C446035C();
  *(v0 + 800) = sub_1C4472508(v4, v5);
  *(v0 + 768) = v1;
  inited = swift_initStackObject();
  *(v0 + 1160) = inited;
  *(inited + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 768), inited + 32);
  sub_1C441A2F4();
  sub_1C442A990();
  *(v0 + 1195) = 1;
  v7 = type metadata accessor for PGRelationshipPhase();
  *(v0 + 1168) = v7;
  sub_1C43FD23C(v7);
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v0 + 1176) = v8;
  *v8 = v0;
  sub_1C44C12B8(v8);
  sub_1C440F4D4(v9);
  sub_1C4426C44();

  return sub_1C4489800(v10, v11);
}

uint64_t type metadata accessor for PGRelationshipPhase()
{
  result = qword_1EDDE4FC0;
  if (!qword_1EDDE4FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4489800(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser();
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  *(v3 + 32) = sub_1C43FBE7C();
  v8 = type metadata accessor for Linker();
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  *(v3 + 40) = sub_1C43FBE7C();
  v11 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  *(v3 + 48) = sub_1C43FBE7C();
  v14 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  *(v3 + 56) = sub_1C43FBE7C();
  v17 = type metadata accessor for PGRelationshipFullSourceIngestor();
  *(v3 + 64) = v17;
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64);
  *(v3 + 72) = sub_1C43FBE7C();
  v20 = type metadata accessor for Source();
  *(v3 + 80) = v20;
  sub_1C43FBD18(v20);
  v22 = *(v21 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v23 = type metadata accessor for PhaseStores();
  sub_1C43FBD18(v23);
  v25 = *(v24 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 145) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C44899F0, 0, 0);
}

uint64_t type metadata accessor for PGRelationshipFullSourceIngestor()
{
  result = qword_1EDDDDDB8;
  if (!qword_1EDDDDDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C44899F0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 16);
  sub_1C4419288();
  sub_1C44717B8(v3, v4, v5);
  if (qword_1EDDFD2C8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 112);
  v7 = *(v0 + 96);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);
  v11 = *(v0 + 48);
  v12 = *(v0 + 16);
  v13 = sub_1C442B738(*(v0 + 80), qword_1EDDFD2D0);
  *(v0 + 128) = v13;
  sub_1C44717B8(v13, v7, type metadata accessor for Source);
  sub_1C44717B8(v12, v6, type metadata accessor for PhaseStores);
  *(v8 + *(v10 + 24)) = 1;
  sub_1C44717B8(v13, v8, type metadata accessor for Source);
  sub_1C44717B8(v6, v8 + *(v10 + 20), type metadata accessor for PhaseStores);
  v14 = sub_1C4EF9E48();
  sub_1C440BAA8(v11, 1, 1, v14);
  sub_1C4EFF1A8();
  LOBYTE(v12) = *(v0 + 145);
  v15 = *(v0 + 104);
  v16 = *(v0 + 88);
  v18 = *(v0 + 64);
  v17 = *(v0 + 72);
  v19 = *(v0 + 56);
  v20 = *(v0 + 16);
  sub_1C44857CC(*(v0 + 112));
  v21 = sub_1C4EFF1C8();
  sub_1C440BAA8(v19, 0, 1, v21);
  sub_1C4482F3C(v19, v17 + *(v18 + 28));
  sub_1C44068F0();
  sub_1C44717B8(v13, v16, v22);
  sub_1C4419288();
  sub_1C44717B8(v20, v15, v23);
  *(v0 + 144) = v12;
  v24 = swift_task_alloc();
  *(v0 + 136) = v24;
  *v24 = v0;
  v24[1] = sub_1C448A398;
  v25 = *(v0 + 104);
  v26 = *(v0 + 88);
  v27 = *(v0 + 40);

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C4489C4C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 2520);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 2528) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C4489D44()
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v1 = v0[316];
  v2 = v0[314];
  sub_1C44F0CD8();
  v3 = v0[165];
  v4 = v0[130];
  v5 = v0[103];
  v6 = v0[101];
  v33 = v0[86];
  v34 = v7;
  v8 = v0[70];
  v9 = v0[68];
  v10 = v0[67];
  sub_1C440D610();
  sub_1C4471988(v11, v4);
  sub_1C442BD10();
  sub_1C4471988(v10, v3);
  v2[22] = v6;
  sub_1C44174EC();
  v2[23] = sub_1C4471C58(v12, v13);
  v14 = sub_1C4422F90(v2 + 19);
  sub_1C444B1FC(v14);
  sub_1C43FE710(v15);
  sub_1C4471D00();
  v16 = sub_1C4462804();
  sub_1C445FE04(v16);
  if (v6)
  {
  }

  v17 = v0[314];
  sub_1C446BCB0();
  v18 = v0[165];
  v19 = v0[130];
  v20 = v0[103];
  v21 = v0[101];
  v22 = v0[86];
  sub_1C4408D30();
  sub_1C447E970(v23, v24);
  sub_1C4410FD4();
  sub_1C447E970(v19, v25);
  v26 = sub_1C4EFF1C8();
  sub_1C4404528(v26);
  sub_1C440E538();
  sub_1C49E19B0();
  sub_1C4485FF0();
  v27 = sub_1C43FD258();
  sub_1C447E970(v27, v28);
  *(v32 + *(v33 + 24)) = v34;
  sub_1C4419C7C();
  sub_1C442CE50(v29);

  sub_1C441BB34();
  sub_1C43FEA3C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C448A2A4()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 80);
  v7 = *v0;
  *(*v0 + 88) = v2;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C448A398()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C448A494, 0, 0);
}

uint64_t sub_1C448A494()
{
  v1 = *(v0 + 145);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v29 = *(v0 + 112);
  v30 = *(v0 + 56);
  v31 = *(v0 + 48);
  v8 = *(v0 + 32);
  v27 = *(v0 + 120);
  v28 = *(v0 + 40);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  sub_1C44068F0();
  sub_1C44717B8(v11, v5, v12);
  sub_1C4419288();
  sub_1C44717B8(v9, v3, v13);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44857CC(v9);
  v14 = (v10 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v10 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v6;
  v14[4] = sub_1C448A6CC();
  v15 = sub_1C4422F90(v14);
  sub_1C448A724(v7, v15, type metadata accessor for PGRelationshipFullSourceIngestor);
  sub_1C44002E8();
  sub_1C448A724(v4, v16, v17);
  sub_1C44002E8();
  sub_1C448A724(v27, v18, v19);
  sub_1C44002E8();
  sub_1C448A724(v28, v20, v21);
  sub_1C44002E8();
  sub_1C448A724(v8, v22, v23);
  *(v10 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v24 = *(v0 + 8);
  v25 = *(v0 + 24);

  return v24(v25);
}

unint64_t sub_1C448A6CC()
{
  result = qword_1EDDDDDD8;
  if (!qword_1EDDDDDD8)
  {
    type metadata accessor for PGRelationshipFullSourceIngestor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDDDD8);
  }

  return result;
}

uint64_t sub_1C448A724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FCE50(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C448A780()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1176);
  *v2 = *v0;
  *(v1 + 1184) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C448A868()
{
  v1 = *(v0 + 1184);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 1040);
  v5 = *(v0 + 1032);
  v6 = *(v0 + 1008);
  v7 = v6 + *(v0 + 1056);
  *(v0 + 832) = *(v0 + 1168);
  sub_1C441AFE0();
  *(v0 + 840) = sub_1C4472508(v8, v9);
  *(v0 + 808) = v1;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  v85 = inited;
  sub_1C441D670((v0 + 808), inited + 32);
  sub_1C441A2F4();
  sub_1C443113C(v7, v3);
  v11 = type metadata accessor for GraphDiffPhase();
  sub_1C43FD23C(v11);
  swift_allocObject();
  v12 = sub_1C448ACA8(v3);
  *(v0 + 872) = v11;
  sub_1C44352F4();
  *(v0 + 880) = sub_1C4472508(v13, v14);
  *(v0 + 848) = v12;
  v15 = swift_initStackObject();
  sub_1C446089C(v15, v16, v17, v18, v19, v20, v21, v22, v72, v76, v81, v85, v23);
  sub_1C441D670((v0 + 848), &v15[2]);
  v24 = *(v7 + *(v4 + 24));
  v25 = *(v7 + *(v4 + 36));
  v26 = type metadata accessor for PromoteConstructionPhase();
  swift_allocObject();
  v27 = sub_1C4404C88();
  v28 = sub_1C448AFD0(v27, v25, 1);
  *(v0 + 912) = v26;
  sub_1C4405FFC();
  *(v0 + 920) = sub_1C4472508(v29, v30);
  *(v0 + 888) = v28;
  v31 = swift_initStackObject();
  sub_1C446089C(v31, v32, v33, v34, v35, v36, v37, v38, v73, v77, v82, v86, v39);
  sub_1C441D670((v0 + 888), &v31[2]);
  sub_1C440B110();
  sub_1C443113C(v6 + v40, v5);
  v41 = qword_1EDDFD0A8;

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = *(v0 + 1128);
  v43 = *(v0 + 1096);
  v44 = *(v0 + 1088);
  v78 = *(v0 + 1160);
  v83 = *(v0 + 1048);
  v45 = *(v0 + 1032);
  v46 = *(v0 + 1024);
  sub_1C442B738(*(v0 + 1016), qword_1EDDFD0B0);
  sub_1C4413658();
  sub_1C443113C(v47, v46);
  v48 = type metadata accessor for FastpassViewsGenerationPhase(0);
  sub_1C43FD23C(v48);
  swift_allocObject();
  v49 = sub_1C448B168(v45, v46);
  *(v0 + 952) = v48;
  *(v0 + 960) = sub_1C4472508(&qword_1EC0C2E98, type metadata accessor for FastpassViewsGenerationPhase);
  *(v0 + 928) = v49;
  v50 = swift_initStackObject();
  sub_1C446089C(v50, v51, v52, v53, v54, v55, v56, v57, v74, v78, v83, v87, v58);
  sub_1C441D670((v0 + 928), &v50[2]);
  *(v0 + 992) = &type metadata for GlobalKnowledgePipelinePhase;
  *(v0 + 1000) = sub_1C448B274();
  *(v0 + 968) = 0xD00000000000001CLL;
  *(v0 + 976) = 0x80000001C4FAFF00;
  v59 = swift_initStackObject();
  sub_1C446089C(v59, v60, v61, v62, v63, v64, v65, v66, v75, v79, v84, v88, v67);
  sub_1C441D670((v0 + 968), &v59[2]);
  sub_1C456902C(&qword_1EC0B8B18, &qword_1C4F0DF40);
  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_1C4F3B920;
  *(v68 + 32) = v43;
  *(v68 + 40) = v42;
  *(v68 + 48) = v80;
  *(v68 + 56) = v89;
  *(v68 + 64) = v15;
  *(v68 + 72) = v31;
  *(v68 + 80) = v50;
  *(v68 + 88) = v59;
  v69 = static PhaseBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1C448B4C8();

  sub_1C43FBCF0();

  return v70(v69);
}

uint64_t type metadata accessor for GraphDiffPhase()
{
  result = qword_1EDDE9D30;
  if (!qword_1EDDE9D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C448ACA8(uint64_t a1)
{
  strcpy((v1 + 16), "GraphDiffPhase");
  *(v1 + 31) = -18;
  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore14GraphDiffPhase_pipelineType) = 1;
  sub_1C448AD18(a1, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore14GraphDiffPhase_stores, type metadata accessor for PhaseStores);
  return v1;
}

uint64_t sub_1C448AD18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C448AD78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE40, &qword_1C4F32288);
  result = sub_1C4F021D8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        result = sub_1C4F02B68();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C448AFD0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = 0xD000000000000018;
  *(v3 + 24) = 0x80000001C4F4EFC0;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return v3;
}

uint64_t sub_1C448B01C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Source();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Configuration();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44310D4(a1, v11, type metadata accessor for Configuration);
  sub_1C44310D4(a2, v7, type metadata accessor for Source);
  v12 = sub_1C448B16C(v11, v7);
  sub_1C447EA80(a2, type metadata accessor for Source);
  sub_1C447EA80(a1, type metadata accessor for Configuration);
  return v12;
}

uint64_t sub_1C448B16C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0xD000000000000020;
  *(v2 + 24) = 0x80000001C4F61500;
  sub_1C44098F0(a1, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore32ViewGenerationDeltaPipelinePhase_config);
  v5 = [objc_allocWithZone(MEMORY[0x1E69A9F28]) init];
  sub_1C43FFFC0();
  sub_1C44541BC(a1, v6);
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore32ViewGenerationDeltaPipelinePhase_coordinationXPC) = v5;
  sub_1C448B210(a2, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore32ViewGenerationDeltaPipelinePhase_source);
  return v2;
}

uint64_t sub_1C448B210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Source();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C448B274()
{
  result = qword_1EC0C2EA0;
  if (!qword_1EC0C2EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2EA0);
  }

  return result;
}

void _s24IntelligencePlatformCore12PhaseBuilderO10buildArrayySayAA0D4Base_pGSayAFGFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = (a1 + 32);
  if (v1)
  {
    while (1)
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      v6 = *(v2 + 16);
      if (__OFADD__(v6, v5))
      {
        break;
      }

      v7 = *v3;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v2 + 24) >> 1)
      {
        sub_1C448B40C();
        v2 = v8;
      }

      if (*(v4 + 16))
      {
        if ((*(v2 + 24) >> 1) - *(v2 + 16) < v5)
        {
          goto LABEL_16;
        }

        sub_1C456902C(&qword_1EC0B8AB0, &qword_1C4F0DEE0);
        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v2 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_17;
          }

          *(v2 + 16) = v11;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_15;
        }
      }

      ++v3;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

void sub_1C448B40C()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B8AA8, &unk_1C4F4E0E0);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECD8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B8AB0, &qword_1C4F0DEE0);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C448B4DC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 80);
  *v2 = *v0;
  *(v1 + 88) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C448B5C4()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  *(v0 + 56) = *(v0 + 88);
  v1 = qword_1EDDF7BB0;
  v2 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v1 != -1)
  {
    sub_1C440D748();
    v2 = *(v0 + 88);
  }

  v3 = *(v0 + 64);
  v4 = qword_1EDE2DA48;
  v5 = *&qword_1EDE2DA38;
  *(v0 + 16) = xmmword_1EDE2DA28;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v6 = *(v2 + 16);

  sub_1C446ABD0(0);
  sub_1C440F1BC();
  sub_1C448B734();

  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_1C4AC9BEC;
  v8 = *(v0 + 72);
  sub_1C440F4D4(*(v0 + 64));
  sub_1C4426C44();

  return sub_1C448B910(v9, v10);
}

uint64_t sub_1C448B734()
{
  sub_1C440D848();
  v2 = v1[3];
  if (v2)
  {
    v3 = v1[4];

    sub_1C4433DE4();
    sub_1C442604C();
    v2(v4);
    v5 = sub_1C441E6D0();
    return sub_1C44239FC(v5);
  }

  else
  {
    v8 = *v1;
    v7 = v1[1];
    if (v0)
    {
      sub_1C444B2B4();
      sub_1C441CBA4();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C443F350();
    }

    else
    {
      v9 = v1[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C441C09C();
    sub_1C448B80C();
    sub_1C441E6D0();
  }
}

void sub_1C448B80C()
{
  sub_1C4413F18();
  sub_1C4433528();
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder);
  sub_1C456902C(&qword_1EC0B8838, "nS\t");
  sub_1C4418B14();
  v4 = swift_allocObject();
  sub_1C4414C68(v4, xmmword_1C4F0D130);
  sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
  sub_1C496CBBC();
  sub_1C4425D04();
  sub_1C4410EA4();

  if (!v2)
  {
    sub_1C4409E00(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db));
    MEMORY[0x1EEE9AC00](v5);
    sub_1C43FDA14();
    sub_1C4435934();
    v6 = sub_1C4404044();
    sub_1C4434000(v6, v7);
  }

  sub_1C441C2B4();
  sub_1C44102DC();
}

uint64_t sub_1C448B910(uint64_t a1, uint64_t a2)
{
  v2[130] = a2;
  v2[129] = a1;
  v3 = *(*(type metadata accessor for Configuration() - 8) + 64) + 15;
  v2[131] = swift_task_alloc();
  v4 = type metadata accessor for Pipeline.StatusStore();
  v2[132] = v4;
  v5 = *(v4 - 8);
  v2[133] = v5;
  v2[134] = *(v5 + 64);
  v2[135] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C448BA08, 0, 0);
}

uint64_t sub_1C448BA08()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  if (qword_1EDDF7BB0 != -1)
  {
    sub_1C440D748();
  }

  v1 = *(v0 + 1040);
  v2 = *(v0 + 1032);
  v3 = *&qword_1EDE2DA38;
  *(v0 + 696) = xmmword_1EDE2DA28;
  *(v0 + 712) = v3;
  *(v0 + 728) = qword_1EDE2DA48;
  v4 = *v1;
  v5 = *(*v1 + 16);
  sub_1C446ABD0(0);
  sub_1C440F1BC();
  sub_1C448B734();

  *(v0 + 1088) = 0;
  v15 = v4[2];
  if (v15)
  {
    sub_1C448BD48((v4 + 4), v0 + 856);
    if (!swift_isUniquelyReferenced_nonNull_native() || (v15 - 1) > v4[3] >> 1)
    {
      sub_1C4401E28();
      sub_1C448B40C();
      v4 = v16;
    }

    *(v0 + 1096) = v4;
    v17 = *(v0 + 1040);
    sub_1C440962C(v4 + 4);
    v18 = v4[2];
    memmove(v4 + 4, v4 + 9, 40 * v18 - 40);
    v4[2] = v18 - 1;
    *v17 = v4;
    sub_1C4F01968();
    v21 = *(v0 + 1080);
    v22 = *(v0 + 1072);
    v23 = *(v0 + 1064);
    v24 = *(v0 + 1032);
    sub_1C448BD48(v0 + 856, v0 + 936);
    sub_1C44346A0();
    v25 = sub_1C43FBC98();
    sub_1C443113C(v25, v26);
    v27 = (*(v23 + 80) + 56) & ~*(v23 + 80);
    v28 = swift_allocObject();
    *(v0 + 1104) = v28;
    sub_1C441D670((v0 + 936), v28 + 16);
    sub_1C4469200();
    sub_1C44760B0(v21, v28 + v27);
    sub_1C44239FC(0);
    swift_asyncLet_begin();
    sub_1C4436600();
    sub_1C4426C44();

    return MEMORY[0x1EEE6DEC0](v29, v30, v31, v32, v33, v34, v35, v36);
  }

  else
  {
    v19 = *(v0 + 1080);
    v20 = *(v0 + 1048);
    sub_1C44239FC(0);

    sub_1C43FC1B0();
    sub_1C4426C44();

    return v7(v6, v7, v8, v9, v10, v11, v12, v13);
  }
}

uint64_t sub_1C448BC90()
{
  v1 = type metadata accessor for Pipeline.StatusStore();
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  sub_1C440962C((v0 + 16));
  v6 = sub_1C4EF98F8();
  sub_1C43FD3F8(v6);
  (*(v7 + 8))(v0 + ((v3 + 56) & ~v3));
  v8 = sub_1C445BFD0();

  return MEMORY[0x1EEE6BDD0](v8, v9, v10);
}

uint64_t sub_1C448BD48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  sub_1C440A6B8(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_1C448BDA8()
{
  sub_1C43FCF70();
  sub_1C4403FC0();
  v2 = type metadata accessor for Pipeline.StatusStore();
  sub_1C43FBD18(v2);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  v6 = sub_1C43FC218(v5);
  *v6 = v7;
  v6[1] = sub_1C442E8C4;

  return sub_1C448BE78(v0, v1 + 16, v1 + v4);
}

uint64_t sub_1C448BE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C448BE98, 0, 0);
}

uint64_t sub_1C448BE98()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = v1[4];
  sub_1C4409678(v1, v1[3]);
  v3 = swift_task_alloc();
  v4 = sub_1C4414DF4(v3);
  *v4 = v5;
  v4[1] = sub_1C44BF784;
  v6 = sub_1C4414E5C(*(v0 + 24));

  return sub_1C448BF44(v6, v7, v2);
}

uint64_t sub_1C448BF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C448C710, 0, 0);
}

void *sub_1C448BF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v71 = a1;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v48[-v7];
  v53 = sub_1C4EF9CD8();
  v52 = *(v53 - 8);
  v8 = *(v52 + 64);
  v9 = MEMORY[0x1EEE9AC00](v53);
  v11 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a2 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = &v48[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v48[-v17];
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v19 = sub_1C4F00978();
  sub_1C442B738(v19, qword_1EDE2DE10);
  v20 = v12[2];
  v57 = v3;
  v20(v18, v3, a2);
  v21 = sub_1C4F00968();
  v22 = sub_1C4F01CF8();
  v23 = os_log_type_enabled(v21, v22);
  v54 = v11;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v58 = v50;
    *v24 = 136315138;
    v20(v16, v18, a2);
    v25 = v12[1];
    v25(v18, a2);
    v26 = v56;
    v27 = *(v56 + 8);
    v49 = v22;
    v28 = sub_1C4F02858();
    v30 = v29;
    v31 = v16;
    v32 = a2;
    v25(v31, a2);
    v33 = sub_1C441D828(v28, v30, &v58);

    *(v24 + 4) = v33;
    _os_log_impl(&dword_1C43F8000, v21, v49, "PhaseMetricsStart %s", v24, 0xCu);
    v34 = v50;
    sub_1C440962C(v50);
    MEMORY[0x1C6942830](v34, -1, -1);
    MEMORY[0x1C6942830](v24, -1, -1);
  }

  else
  {
    v32 = a2;
    (v12[1])(v18, a2);

    v26 = v56;
  }

  v35 = v55;
  result = sub_1C446ABD0(0);
  if (!v35)
  {
    v37 = result;
    if (qword_1EDDF7B60 != -1)
    {
      swift_once();
    }

    v68 = xmmword_1EDE2D960;
    v69 = *algn_1EDE2D970;
    v70 = qword_1EDE2D980;
    v38 = *(v26 + 16);
    v39 = v32;
    v40 = v38(v32, v26);
    sub_1C448DA58(v40, v41, v37, 0, 0);

    if (qword_1EDDF7B58 != -1)
    {
      swift_once();
    }

    v65 = xmmword_1EDE2D938;
    v66 = unk_1EDE2D948;
    v67 = qword_1EDE2D958;
    v42 = v38(v32, v26);
    sub_1C448DA58(v42, v43, v37, 0, 0);

    sub_1C4EF9CC8();
    if (qword_1EDDF7AE8 != -1)
    {
      swift_once();
    }

    v62 = xmmword_1EDE2D7D0;
    v63 = unk_1EDE2D7E0;
    v64 = qword_1EDE2D7F0;
    v38(v32, v26);
    sub_1C446ABD0(0);
    sub_1C448E94C();

    v44 = v51;
    v45 = v53;
    v46 = sub_1C44157D4(v51, 1, v53);
    sub_1C4423A0C(v44, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (v46 == 1)
    {
      v38(v39, v26);
      sub_1C448EA0C(v54);

      v45 = v53;
    }

    if (qword_1EDDF7B50 != -1)
    {
      swift_once();
    }

    v59 = xmmword_1EDE2D910;
    v60 = unk_1EDE2D920;
    v61 = qword_1EDE2D930;
    v38(v39, v26);
    v47 = v54;
    sub_1C448EA0C(v54);
    (*(v52 + 8))(v47, v45);
  }

  return result;
}

uint64_t sub_1C448C710()
{
  v1 = v0[5];
  sub_1C448BF68(v0[2], v0[3], v0[4]);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1C44BDFA0;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return sub_1C448F314(v5, v3);
}

uint64_t sub_1C448C7F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ConstructionPhase.description.getter(a1, WitnessTable);
}

uint64_t ConstructionPhase.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Source();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = 60;
  v12 = 0xE100000000000000;
  v10[1] = a1;
  swift_getMetatypeMetadata();
  v8 = sub_1C4F01198();
  MEMORY[0x1C6940010](v8);

  MEMORY[0x1C6940010](3830560, 0xE300000000000000);
  (*(a2 + 16))(a1, a2);
  MEMORY[0x1C6940010](*v7, v7[1]);
  sub_1C448D818(v7);
  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return v11;
}

uint64_t sub_1C448C960@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_source;
  sub_1C440D164();
  sub_1C44078C4();
  return sub_1C448CFCC(v1 + v3, a1, v4);
}

uint64_t sub_1C448C9D8()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C448CA30()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C448CA88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448CAE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(*(a3(0) - 8) + 16);
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C448CB4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448CBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C448CC08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448CC68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448CCC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C448CD24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448CD84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448CDE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448CE44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448CEA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448CF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C448CF6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448CFCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C448D028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448D088()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C448D0E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448D140(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C448D19C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C448D1F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C448D254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C448D2B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C448D30C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C448D364(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FCE50(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C448D3B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C448D410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C448D468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C448D4C0()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FCE50(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C448D514(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FCE50(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C448D568(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FCE50(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C448D5BC()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FCE50(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C448D610(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C448D668(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FCE50(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C448D6BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C448D714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C448D76C()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FCE50(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C448D7C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C448D818(uint64_t a1)
{
  v2 = type metadata accessor for Source();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C448D898()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_source);
  sub_1C440D164();
  v3 = *v2;
  v4 = v2[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v3, v4);

  MEMORY[0x1C6940010](8250, 0xE200000000000000);
  sub_1C448D934(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType));
  return 0;
}

uint64_t sub_1C448D934(char a1)
{
  sub_1C4F02248();

  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      v3 = sub_1C441D16C();
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x61746C6564;
      break;
    case 3:
      v3 = sub_1C440DF74();
      break;
    default:
      break;
  }

  MEMORY[0x1C6940010](v3, v2);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  MEMORY[0x1C6940010](0x6E696C657069503CLL, 0xEF203A6570795465);
}

uint64_t sub_1C448DA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5[3];
  v11 = v5[4];
  v19 = *v5;
  v17 = v5[1];
  v20 = v5[2];
  v12 = sub_1C4402CD0();
  sub_1C446F0D0(v12);
  v13 = sub_1C4402CD0();
  sub_1C446F0D0(v13);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C448DB48(&v19, v18);
  sub_1C448DBA4(&v20, v18);
  sub_1C448DC14(v5, a1, a2, a4, a5);

  v14 = sub_1C4402CD0();
  sub_1C44239FC(v14);

  v15 = sub_1C4402CD0();
  return sub_1C44239FC(v15);
}

uint64_t sub_1C448DBA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C448DC14(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[4];

    v8 = sub_1C4433DE4();
    v6(v8, a1);
    return sub_1C44239FC(v6);
  }

  else
  {
    v11 = *a1;
    v10 = a1[1];
    if (a5)
    {
      sub_1C444B2B4();
      sub_1C441CBA4();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v11, v10);
    }

    else
    {
      v12 = a1[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C441C09C();
    sub_1C448E76C();
  }
}

uint64_t sub_1C448DD20(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *a3;
  v5 = a3[1];
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = v6;
  *(inited + 40) = v5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C448DE08(inited);
  v9 = v8;
  v10 = sub_1C448E2AC();
  if (!v4)
  {
    if (v10)
    {
      sub_1C44999E0(v10, v9);
    }

    sub_1C448E5DC();
  }
}

void sub_1C448DE08(uint64_t a1)
{
  sub_1C43FEAE0(a1);
  if (v2 && (sub_1C456902C(&qword_1EC0BDE40, &qword_1C4F32288), v3 = sub_1C4406320(), v4 = v3, (v5 = *(v1 + 16)) != 0))
  {
    v6 = 0;
    v7 = v3 + 56;
    while (v6 < *(v1 + 16))
    {
      v8 = (v1 + 32 + 16 * v6);
      v10 = *v8;
      v9 = v8[1];
      ++v6;
      v11 = v4[5];
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      sub_1C4F02B68();
      sub_1C442E740();
      v14 = ~v13;
      while (1)
      {
        v15 = v12 & v14;
        v16 = (v12 & v14) >> 6;
        v17 = *(v7 + 8 * v16);
        v18 = 1 << (v12 & v14);
        if ((v18 & v17) == 0)
        {
          break;
        }

        v19 = (v4[6] + 16 * v15);
        v20 = *v19 == v10 && v19[1] == v9;
        if (v20 || (sub_1C4F02938() & 1) != 0)
        {

          goto LABEL_16;
        }

        v12 = v15 + 1;
      }

      *(v7 + 8 * v16) = v18 | v17;
      v21 = (v4[6] + 16 * v15);
      *v21 = v10;
      v21[1] = v9;
      sub_1C4410784();
      if (v23)
      {
        goto LABEL_19;
      }

      v4[2] = v22;
LABEL_16:
      if (v6 == v5)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:
  }
}

uint64_t sub_1C448DF88(uint64_t a1)
{
  v4 = v1 + *(a1 + 20);

  return sub_1C4467FE0(v4, v2);
}

void sub_1C448DFA8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_1C448DFF4()
{

  return sub_1C4F003F8();
}

uint64_t sub_1C448E020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{
  v15 = *(v13 + *(a1 + 24));
  a12 = *(v13 + *(v12 + 28));

  return sub_1C44AF8F4(&a12);
}

void sub_1C448E048(uint64_t a1@<X8>)
{
  *(v3 - 184) = *(v1 + 72);
  v4 = *(v3 - 200);
  *(v3 - 216) = ~a1;
  *(v3 - 208) = v2;
}

__n128 sub_1C448E09C()
{
  result = *(v0 - 112);
  *(v0 - 176) = *(v0 - 128);
  *(v0 - 160) = result;
  v2 = *(v0 - 152);
  return result;
}

void sub_1C448E0C0()
{
  v2 = *(v0 - 544);
}

uint64_t sub_1C448E0D8@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = a1;

  return sub_1C4EFB658();
}

uint64_t sub_1C448E110(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 81);
  v4 = *(v2 + 280);
  return *(v2 + 272);
}

uint64_t sub_1C448E140()
{
  result = *(v0 - 216);
  v2 = *(v0 - 208);
  v3 = *(v0 - 288);
  v4 = *(v0 - 280);
  return result;
}

void sub_1C448E15C()
{
  v2 = *(v0 + 24);
  v3 = *(v1 - 104);
  v4 = *(*(v1 - 112) + 16);
}

uint64_t sub_1C448E194()
{
  *(v0 - 112) = 6;
  v2 = *(v0 - 264);

  return sub_1C4F026C8();
}

void sub_1C448E200(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 96);
  v4 = *(v1 - 400);
}

uint64_t sub_1C448E22C()
{
  sub_1C441B2E0();
  v2 = *(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);
  sub_1C441C090();

  v3 = sub_1C440CAAC();
  v4 = v0(v3);

  return v4;
}

void sub_1C448E2EC()
{
  sub_1C43FE96C();
  sub_1C4411CC4();
  v3 = v2;
  v32 = *v0;
  v33 = sub_1C4EFB1E8();
  v4 = sub_1C43FCDF8(v33);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  sub_1C440D420();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v16 = sub_1C43FEFC4(v8, v9, v10, v11, v12, v13, v14, v15, v31);
  v17 = sub_1C43FCDF8(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4406E1C();
  sub_1C441DCFC(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  v22 = sub_1C43FD2BC();
  sub_1C456902C(v22, v23);
  sub_1C4418A58();
  if (!v1)
  {
    goto LABEL_8;
  }

  v24 = v1;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v25 = *(v19 + 8);
  v26 = sub_1C43FCE84();
  v25(v26);
  if (v3)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4433CB8();
LABEL_8:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v27 = v1;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v28 = sub_1C43FCE84();
  v25(v28);
  sub_1C441842C();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C4409C64())
  {

    goto LABEL_8;
  }

  v29 = sub_1C4403150();
  v30(v29);
  sub_1C44159C8(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  __break(1u);
}

uint64_t sub_1C448E5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C448E55C(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void sub_1C448E5DC()
{
  sub_1C4413F18();
  sub_1C4433528();
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder);
  sub_1C456902C(&qword_1EC0BFE20, &qword_1C4F3DD48);
  sub_1C4418B14();
  v4 = swift_allocObject();
  sub_1C4414C68(v4, xmmword_1C4F0D130);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0B9170, &unk_1C4F0EC70);
  sub_1C448E6E8();
  sub_1C4425D04();
  sub_1C4410EA4();

  if (!v2)
  {
    sub_1C4409E00(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db));
    MEMORY[0x1EEE9AC00](v5);
    sub_1C43FDA14();
    sub_1C4435934();
    v6 = sub_1C4404044();
    sub_1C4434000(v6, v7);
  }

  sub_1C441C2B4();
  sub_1C44102DC();
}

unint64_t sub_1C448E6E8()
{
  result = qword_1EDDF0618;
  if (!qword_1EDDF0618)
  {
    sub_1C4572308(&qword_1EC0B9170, &unk_1C4F0EC70);
    sub_1C496D2EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0618);
  }

  return result;
}

void sub_1C448E76C()
{
  sub_1C4413F18();
  sub_1C4424CEC();
  v4 = v3;
  v6 = v5;
  sub_1C441AE30();
  v7 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  sub_1C4434164();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C4F0D130;
  *(v8 + 32) = v6;
  *(v8 + 40) = v4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C449C8D4();
  sub_1C4425D04();
  sub_1C4410EA4();

  if (!v2)
  {
    sub_1C4409E00(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db));
    MEMORY[0x1EEE9AC00](v9);
    sub_1C43FF2A4();
    sub_1C444FDF0(v10);
    sub_1C4435934();
    v11 = sub_1C4404044();
    sub_1C4434000(v11, v12);
  }

  sub_1C441C2B4();
  sub_1C44102DC();
}

unint64_t sub_1C448E890(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    sub_1C4572308(&qword_1EC0B8EB8, &unk_1C4F0E920);
    sub_1C440D274();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C448E8F4(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    sub_1C4572308(&qword_1EC0B8EB8, &unk_1C4F0E920);
    result = sub_1C44F0D20();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C448E94C()
{
  sub_1C4412004();
  if (!v4)
  {
    sub_1C440AE64();
    result = sub_1C446FB00();
    if (!v1)
    {
      return result;
    }

    goto LABEL_6;
  }

  v15 = v3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C441CBA4();
  v5 = MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C442CDD8(v5, v6, v7, v8, v9, v10, v11, v12, v15);
  sub_1C446FB00();
  if (v1)
  {

LABEL_6:
    v14 = sub_1C4EF9CD8();
    return sub_1C440BAA8(v0, 1, 1, v14);
  }
}

uint64_t sub_1C448EA0C(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0C2AA8, &qword_1C4F4E070);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16[-v6];
  v8 = *(v4 + 52);
  v9 = sub_1C4EF9CD8();
  (*(*(v9 - 8) + 16))(&v7[v8], a1, v9);
  v11 = *(v1 + 3);
  v10 = *(v1 + 4);
  v12 = v1[1];
  v17 = *v1;
  v18 = *(v1 + 2);
  *v7 = v17;
  *(v7 + 1) = v12;
  *(v7 + 4) = v10;
  v13 = &v7[*(v4 + 56)];
  *v13 = v11;
  v13[1] = v10;
  sub_1C446F0D0(v11);
  sub_1C446F0D0(v11);
  sub_1C448DB48(&v17, v16);
  sub_1C448DBA4(&v18, v16);
  sub_1C448EB8C();
  return sub_1C4423A0C(v7, &qword_1EC0C2AA8, &qword_1C4F4E070);
}

uint64_t sub_1C448EB8C()
{
  sub_1C440D848();
  v2 = v1[3];
  if (v2)
  {
    v3 = v1[4];

    sub_1C442604C();
    v2();
    v4 = sub_1C441E6D0();
    return sub_1C44239FC(v4);
  }

  else
  {
    v7 = *v1;
    v6 = v1[1];
    if (v0)
    {
      sub_1C444B2B4();
      sub_1C441CBA4();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C443F350();
    }

    else
    {
      v8 = v1[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C441C09C();
    sub_1C448EE10();
    sub_1C441E6D0();
  }
}

uint64_t sub_1C448EC94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](46, 0xE100000000000000);
    MEMORY[0x1C6940010](*a2, a2[1]);
    sub_1C448EE10();
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDDFECB8);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CD8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C43F8000, v8, v9, "<PipelineStatus> Phase specific status should always have a keyPrefix", v10, 2u);
      MEMORY[0x1C6942830](v10, -1, -1);
    }

    sub_1C4AD3B98();
    swift_allocError();
    *v11 = 0;
    return swift_willThrow();
  }
}

void sub_1C448EE10()
{
  sub_1C440BDEC();
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder);
  sub_1C456902C(&qword_1EC0B8F08, &unk_1C4F0E9B0);
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8(v4);
  v6 = *(v5 + 72);
  v7 = sub_1C4422B0C();
  v8 = sub_1C442A434(v7, xmmword_1C4F0D130);
  v9(v8);
  v10 = sub_1C4404044();
  sub_1C456902C(v10, v11);
  sub_1C448EFBC(&qword_1EDDFA5C8, &qword_1EC0B90E8, &qword_1C4F3DCF0);
  sub_1C4EF96D8();
  sub_1C4410EA4();

  if (!v2)
  {
    sub_1C4409E00(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db));
    MEMORY[0x1EEE9AC00](v12);
    sub_1C43FF2A4();
    sub_1C447CBF0(v13);
    sub_1C4435934();
    v14 = sub_1C4404044();
    sub_1C4434000(v14, v15);
  }

  sub_1C440EE0C();
}

uint64_t sub_1C448EFBC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(a2, a3);
    sub_1C4411EF4();
    sub_1C496CC38(v5, v6);
    sub_1C4410428();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C448F040(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C4BA91B0(a2, MEMORY[0x1E6969530]);
    result = sub_1C44254A0();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C448F114@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

id sub_1C448F148(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1C448F180()
{
  result = v1;
  v3 = *(v0 + 144);
  v4 = *(v0 + 192);
  return result;
}

uint64_t sub_1C448F194()
{
  v2 = *v0;

  return swift_beginAccess();
}

uint64_t sub_1C448F1C0()
{

  return sub_1C441D828(v0, v1, (v2 - 176));
}

uint64_t sub_1C448F1DC()
{
  v2 = *(v0 - 112);

  return sub_1C4EFF808();
}

uint64_t sub_1C448F20C@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 120) = a1;
  *(v2 - 144) = v1;

  return sub_1C4EFB658();
}

uint64_t sub_1C448F234()
{
  *(v1 - 112) = v0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C448F250()
{
  v3 = *(v0 + 8 * v1 + 32);
}

uint64_t sub_1C448F268()
{

  return sub_1C44544DC(v0, _s17ViewUpdateResultsVMa);
}

uint64_t sub_1C448F290@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  result = v2 + a1;
  v6 = *(v3 - 152);
  return result;
}

uint64_t sub_1C448F2B8()
{
  v1 = *(v0 - 248);
  v2 = *(*(v0 - 256) + 8);
  return *(v0 - 344);
}

uint64_t sub_1C448F2CC()
{
  result = v1 + *(v2 + 28);
  v5 = *(v3 - 72) + v0;
  v6 = *(v3 - 72);
  return result;
}

uint64_t sub_1C448F2E8@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v6 = *(v4 - 112);
  *a1 = *(v4 - 120);
  a1[1] = v6;
  *(v2 + *(v3 + 44)) = a2;
  *(v2 + *(v3 + 48)) = *(v4 - 148);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C448F314(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(a1 - 8);
  v3[5] = v4;
  v5 = *(v4 + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C448F3E4, 0, 0);
}

uint64_t sub_1C448F3E4()
{
  v34 = v0;
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = sub_1C4F00978();
  v0[9] = sub_1C442B738(v5, qword_1EDE2DE10);
  v6 = *(v3 + 16);
  v0[10] = v6;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v2, v4);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  if (v9)
  {
    v11 = v0[7];
    v12 = v0[5];
    v13 = v0[2];
    v29 = v0[3];
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = *(v12 + 8);
    v15(v10, v13);
    v16 = *(v29 + 8);
    v17 = sub_1C4F02858();
    v19 = v18;
    v15(v11, v13);
    v20 = sub_1C441D828(v17, v19, &v33);

    *(v14 + 4) = v20;
    sub_1C4404638(&dword_1C43F8000, v21, v22, "PhaseStart %s");
    sub_1C440962C(v31);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
    v15 = *(v0[5] + 8);
    v15(v0[8], v0[2]);
  }

  v0[12] = v15;
  v30 = (v0[3] + 24);
  v32 = (*v30 + **v30);
  v23 = (*v30)[1];
  v24 = swift_task_alloc();
  v0[13] = v24;
  *v24 = v0;
  v24[1] = sub_1C44BDC7C;
  v25 = v0[3];
  v26 = v0[4];
  v27 = v0[2];

  return v32(v27, v25);
}

uint64_t sub_1C448F6CC()
{
  sub_1C43FBCD4();
  *(v1 + 128) = v0;
  v2 = type metadata accessor for Source();
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64) + 15;
  *(v1 + 136) = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C448F750()
{
  sub_1C43FBCD4();
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442E8C4;

  return sub_1C448F6CC();
}

uint64_t sub_1C448F7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C4405098();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = *(v22 + 128);
  v26 = OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType;
  *(v22 + 144) = OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType;
  switch(*(v25 + v26))
  {
    case 1:

      goto LABEL_5;
    case 3:
      sub_1C44133C0();
      break;
    default:
      break;
  }

  v27 = sub_1C441DE10();

  if (v27)
  {
LABEL_5:
    v29 = *(v22 + 128);
    v28 = *(v22 + 136);
    v30 = v29 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_stores;
    v31 = *(v30 + *(type metadata accessor for PhaseStores() + 24));
    v32 = OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_source;
    sub_1C440D164();
    sub_1C44078C4();
    sub_1C448CFCC(v29 + v32, v28, v33);
    v34 = sub_1C44900CC();
    sub_1C442D1D0();
    sub_1C447EAE0(v28, v35);
    if (v34 - 2 < 2)
    {
      if (qword_1EDDFD028 != -1)
      {
        sub_1C4419274();
        swift_once();
      }

      v36 = sub_1C441BC3C();
      sub_1C43FF4EC(v36, qword_1EDE2DE10);
      v37 = sub_1C4F00968();
      v38 = sub_1C4F01CF8();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = *(v22 + 128);
        v40 = swift_slowAlloc();
        a10 = swift_slowAlloc();
        *v40 = 136315394;
        *(v22 + 202) = v34;
        v41 = sub_1C4F01198();
        v43 = sub_1C441D828(v41, v42, &a10);

        *(v40 + 4) = v43;
        *(v40 + 12) = 2080;
        v44 = sub_1C4AD00FC();
        v47 = sub_1C4426D4C(v44, v45, v46);

        *(v40 + 14) = v47;
        _os_log_impl(&dword_1C43F8000, v37, v38, "Phase already ran with status: %s, skipping %s", v40, 0x16u);
        swift_arrayDestroy();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      v70 = *(v22 + 136);

      sub_1C43FC1B0();
      sub_1C43FD0C0();

      return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14);
    }

    if (v34)
    {
      if (qword_1EDDFD028 != -1)
      {
        sub_1C4419274();
        swift_once();
      }

      v51 = sub_1C441BC3C();
      sub_1C43FF4EC(v51, qword_1EDE2DE10);
      v52 = sub_1C4F00968();
      sub_1C4F01CF8();
      sub_1C44253BC();
      if (sub_1C443FF34())
      {
        sub_1C440FAA4();
        sub_1C440E550();
        sub_1C440D1D4();
        *v29 = 136315138;
        v53 = sub_1C4AD00FC();
        sub_1C4426D4C(v53, v54, v55);
        sub_1C44160EC();
        *(v29 + 4) = &unk_1C4F0C000;
        sub_1C4404638(&dword_1C43F8000, v56, v57, "Resuming already started phase for %s");
        sub_1C440AEF4();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }
    }

    else
    {
      v48 = *(v22 + 136);
      sub_1C44078C4();
      sub_1C448CFCC(v29 + v32, v48, v49);
      sub_1C4490D2C();
      sub_1C442D1D0();
      sub_1C447EAE0(v48, v50);
    }
  }

  v58 = *(v22 + 128);
  v59 = OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor;
  sub_1C442E860(v58 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor, v22 + 16);
  v60 = *(v22 + 40);
  v61 = *(v22 + 48);
  sub_1C4409678((v22 + 16), v60);
  (*(*(*(v61 + 8) + 8) + 56))(v60);
  sub_1C440962C((v22 + 16));
  sub_1C442E860(v58 + v59, v22 + 56);
  v62 = *(v22 + 88);
  sub_1C4409678((v22 + 56), *(v22 + 80));
  *(v22 + 201) = *(v25 + v26);
  v63 = swift_task_alloc();
  *(v22 + 152) = v63;
  v64 = *(v62 + 8);
  *v63 = v22;
  v63[1] = sub_1C44A0864;
  sub_1C43FD0C0();

  return ResumableStage.executeIfRequired(_:)(v65, v66, v67);
}

void sub_1C448FE8C()
{
  sub_1C43FE96C();
  sub_1C4400368();
  v23 = sub_1C4EFB1E8();
  v3 = sub_1C43FCDF8(v23);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBFDC();
  sub_1C4433378();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C43FC318();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4406E1C();
  v13 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C4404B44();
  sub_1C4EFAF88();
  if (!v2)
  {
    goto LABEL_8;
  }

  v14 = v2;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v15 = *(v10 + 8);
  v16 = sub_1C43FCE84();
  v15(v16);
  if (v1)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4433CB8();
LABEL_8:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v17 = v2;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v18 = sub_1C43FCE84();
  v15(v18);
  sub_1C441842C();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C441D1F8())
  {

    goto LABEL_8;
  }

  v19 = sub_1C43FD75C();
  v20(v19);
  v21 = sub_1C441C250(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v21, v22);
  __break(1u);
}

uint64_t sub_1C44900CC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);

  sub_1C440CABC();
  sub_1C4490138();
  v3 = v2;

  return v3;
}

uint64_t sub_1C44901D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C449021C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4490264(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44902AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C44902F4(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConstructionStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C4490404);
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

uint64_t sub_1C449042C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  v26 = a1;
  v4 = sub_1C456902C(&qword_1EC0BE548, &qword_1C4F37370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for ConstructionPhaseStatus(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&qword_1EC0BE550, &qword_1C4F37378);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - v15;
  if (qword_1EDDE2610 != -1)
  {
    swift_once();
  }

  v17 = sub_1C4EFBD38();
  v18 = sub_1C442B738(v17, qword_1EDE2CBB8);
  v28[3] = v17;
  v28[4] = MEMORY[0x1E69A0050];
  v19 = sub_1C4422F90(v28);
  (*(*(v17 - 8) + 16))(v19, v18, v17);
  v27[3] = type metadata accessor for Source();
  v27[4] = sub_1C4490890(qword_1EDDF0D80, type metadata accessor for Source);
  v20 = sub_1C4422F90(v27);
  sub_1C4490938(a2, v20, type metadata accessor for Source);
  v29[3] = sub_1C4EFB298();
  v29[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v29);
  sub_1C4EFBB28();
  sub_1C4420C3C(v27, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v28);
  sub_1C4490890(&qword_1EDDE2608, type metadata accessor for ConstructionPhaseStatus);
  sub_1C4EFAE28();
  sub_1C440962C(v29);
  sub_1C4401CBC(&qword_1EDDF0088, &qword_1EC0BE550, &qword_1C4F37378);
  sub_1C4490890(&qword_1EDDE25F8, type metadata accessor for ConstructionPhaseStatus);
  v21 = v29[6];
  sub_1C4EFAFF8();
  result = (*(v13 + 8))(v16, v12);
  if (!v21)
  {
    if (sub_1C44157D4(v7, 1, v8) == 1)
    {
      result = sub_1C4420C3C(v7, &qword_1EC0BE548, &qword_1C4F37370);
      v23 = 0;
    }

    else
    {
      sub_1C44D1B5C(v7, v11, type metadata accessor for ConstructionPhaseStatus);
      v23 = v11[*(v8 + 20)];
      result = sub_1C4491300(v11, type metadata accessor for ConstructionPhaseStatus);
    }

    *v25 = v23;
  }

  return result;
}

uint64_t sub_1C4490890(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44908D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4490938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4490998(uint64_t a1)
{
  v2 = sub_1C4490A14(&qword_1EDDF0D70, type metadata accessor for Source);

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1C4490A14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4490ABC()
{
  sub_1C43FC36C();
  v4 = type metadata accessor for Source();
  result = sub_1C43FCF8C(v4);
  if (*(v6 + 84) == v3)
  {
    sub_1C43FD5B4();
    sub_1C43FE688();

    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 3;
  }

  return result;
}

uint64_t sub_1C4490B5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C4EFD548();
    v8 = v5 + *(a4 + 24);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4490BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4403FC0();
  v6 = type metadata accessor for Source();
  sub_1C43FCF8C(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = sub_1C448F13C();

    return sub_1C44157D4(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20));
    if (v11 >= 4)
    {
      return v11 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C4490CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C4EFD548();
    v9 = a1 + *(a3 + 24);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C4490D2C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);

  v2 = sub_1C440CABC();
  sub_1C446C37C(v2, v3);
}

uint64_t sub_1C4490D94(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for ConstructionPhaseStatus(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4490938(a2, v8, type metadata accessor for Source);
  v8[*(v5 + 20)] = a3;
  sub_1C4490890(&qword_1EDDE25F0, type metadata accessor for ConstructionPhaseStatus);
  sub_1C4EFB6C8();
  return sub_1C4491300(v8, type metadata accessor for ConstructionPhaseStatus);
}

uint64_t sub_1C4490EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDE25E0, type metadata accessor for ConstructionPhaseStatus);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C4490F60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4490FA8(unint64_t *a1, void (*a2)(uint64_t))
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

void ConstructionPhaseStatus.encode(to:)()
{
  sub_1C4413F18();
  sub_1C440EDD4();
  v1 = sub_1C456902C(&qword_1EC0BE0E8, &qword_1C4F32620);
  sub_1C4403200(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4491148();
  sub_1C440F61C();
  sub_1C441D6E4();
  type metadata accessor for Source();
  sub_1C441FBB8();
  sub_1C4490F60(v5, v6);
  sub_1C43FE6CC();
  sub_1C43FC428();
  sub_1C4F027E8();
  if (!v0)
  {
    v7 = type metadata accessor for ConstructionPhaseStatus(0);
    sub_1C4441740(v7);
    sub_1C440D3E4();
    sub_1C4F027E8();
  }

  v8 = sub_1C43FF120();
  v9(v8);
  sub_1C441C2B4();
  sub_1C44102DC();
}

unint64_t sub_1C4491148()
{
  result = qword_1EDDE2628;
  if (!qword_1EDDE2628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2628);
  }

  return result;
}

unint64_t sub_1C44911D0()
{
  result = qword_1EDDE5D18[0];
  if (!qword_1EDDE5D18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE5D18);
  }

  return result;
}

unint64_t sub_1C4491274()
{
  result = qword_1EDDE5D10;
  if (!qword_1EDDE5D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE5D10);
  }

  return result;
}

uint64_t sub_1C44912C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C44912F4(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1C4491300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4491370(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v7 = a1(0);
  v8 = sub_1C43FBD18(v7);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  result = sub_1C4F01948();
  if (result)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v17 = sub_1C4F00978();
    sub_1C442B738(v17, qword_1EDE2DE10);
    v18 = sub_1C4414A08();
    sub_1C448CFCC(v18, v19, a2);
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CF8();
    if (os_log_type_enabled(v20, v21))
    {
      sub_1C43FECF0();
      v22 = swift_slowAlloc();
      v31 = a4;
      v23 = v22;
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315138;
      sub_1C448CFCC(v15, v13, a2);
      v25 = sub_1C447EAE0(v15, a3);
      v26 = v31(v25);
      v28 = v27;
      sub_1C447EAE0(v13, a3);
      v29 = sub_1C441D828(v26, v28, &v32);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_1C43F8000, v20, v21, "%s going to defer", v23, 0xCu);
      sub_1C440962C(v24);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
      sub_1C447EAE0(v15, a3);
    }

    sub_1C4F01828();
    sub_1C4AD0B60(&qword_1EDDFCF00, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_1C4F00EA8();
    return swift_willThrow();
  }

  return result;
}

uint64_t ResumableStage.executeIfRequired(_:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 256) = a3;
  *(v4 + 264) = v3;
  *(v4 + 248) = a2;
  swift_getAssociatedTypeWitness();
  sub_1C43FBEF8();
  swift_getAssociatedConformanceWitness();
  sub_1C43FBEF8();
  swift_getAssociatedConformanceWitness();
  *(v4 + 272) = type metadata accessor for ProgressToken();
  v6 = sub_1C4F01F48();
  *(v4 + 280) = v6;
  sub_1C43FCF7C(v6);
  *(v4 + 288) = v7;
  v9 = *(v8 + 64);
  *(v4 + 296) = sub_1C43FBE7C();
  v10 = type metadata accessor for Configuration();
  *(v4 + 304) = v10;
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  *(v4 + 312) = sub_1C43FBE7C();
  v13 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v4 + 320) = v13;
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  *(v4 + 328) = sub_1C43FBE7C();
  v16 = type metadata accessor for PhaseStores();
  sub_1C43FBD18(v16);
  v18 = *(v17 + 64);
  *(v4 + 336) = sub_1C43FBE7C();
  v19 = type metadata accessor for Pipeline.StatusStore();
  *(v4 + 344) = v19;
  sub_1C43FBD18(v19);
  v21 = *(v20 + 64);
  *(v4 + 352) = sub_1C43FBE7C();
  *(v4 + 377) = *a1;
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1C449184C()
{
  v77 = v0;
  v1 = *(v0 + 377);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 336);
  v5 = *(v0 + 264);
  v6 = *(v0 + 248);
  v7 = *(*(v0 + 256) + 8);
  sub_1C4425424();
  v8();
  sub_1C440E79C();
  sub_1C44921D4();
  sub_1C441A548();
  sub_1C447EBE4(v4, v9);
  v10 = *(v3 + 20);
  *(v2 + v10) = v1;
  switch(v1)
  {
    case 1:

      goto LABEL_5;
    case 3:
      sub_1C44133C0();
      goto LABEL_4;
    default:
LABEL_4:
      v11 = sub_1C4F02938();

      if ((v11 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_5:
      v12 = *(v0 + 256);
      v13 = *(v0 + 264);
      v14 = *(v0 + 248);
      sub_1C449222C();
      sub_1C44DDE2C();
      if (*(v0 + 160))
      {
        v15 = *(v0 + 168);
        sub_1C4409678((v0 + 136), *(v0 + 160));
        v16 = *(v15 + 40);
        v17 = sub_1C43FCFC0();
        v19 = v18(v17, v15);
        sub_1C440962C((v0 + 136));
        if (v19)
        {
          if (qword_1EDDFD028 != -1)
          {
            sub_1C4419274();
            swift_once();
          }

          v20 = sub_1C4F00978();
          sub_1C442B738(v20, qword_1EDE2DE10);
          v21 = sub_1C4F00968();
          v22 = sub_1C4F01CF8();
          v23 = sub_1C4400B94(v22);
          v24 = *(v0 + 352);
          if (v23)
          {
            v25 = *(v0 + 248);
            sub_1C43FECF0();
            v26 = swift_slowAlloc();
            sub_1C43FEC60();
            v27 = swift_slowAlloc();
            v76[0] = v27;
            *v26 = 136315138;
            *(v0 + 240) = v25;
            swift_getMetatypeMetadata();
            v28 = sub_1C4F01198();
            v30 = sub_1C441D828(v28, v29, v76);

            *(v26 + 4) = v30;
            sub_1C4404638(&dword_1C43F8000, v31, v32, "<%s - Skipping> due to presence of token");
            sub_1C440962C(v27);
            sub_1C43FBCFC();
            MEMORY[0x1C6942830](v33);
            sub_1C43FBCFC();
            MEMORY[0x1C6942830](v34);
          }

          sub_1C4420C3C(v0 + 96, &qword_1EC0BA490, &unk_1C4F53630);
          sub_1C4407B64();
          sub_1C447EBE4(v24, v35);
          sub_1C442ED08();

          sub_1C43FBDA0();
          goto LABEL_24;
        }
      }

      else
      {
        sub_1C4420C3C(v0 + 136, &qword_1EC0BA490, &unk_1C4F53630);
      }

      v36 = *(v0 + 352);
      if (!Pipeline.StatusStore.isLongRunningPipelineActivated()())
      {
        sub_1C44DDE2C();
        if (*(v0 + 200))
        {
          v37 = *(v0 + 208);
          sub_1C4409678((v0 + 176), *(v0 + 200));
          v38 = *(v37 + 48);
          v39 = sub_1C43FCFC0();
          v41 = v40(v39, v37);
          sub_1C440962C((v0 + 176));
          if (v41 >= 2)
          {
            if (qword_1EDDFC178 != -1)
            {
              swift_once();
            }

            v42 = *(v0 + 328);
            v43 = *(v0 + 304);
            sub_1C442B738(*(v0 + 320), qword_1EDE2DD88);
            swift_beginAccess();
            sub_1C44DDE2C();
            LODWORD(v43) = sub_1C44157D4(v42, 1, v43);
            sub_1C4420C3C(v42, &unk_1EC0B9610, &unk_1C4F0F2E0);
            v44 = *(v0 + 352);
            if (v43 == 1)
            {
              sub_1C446D0DC();
              swift_allocError();
              *v45 = 0xD000000000000037;
              *(v45 + 8) = 0x80000001C4FB1670;
              *(v45 + 16) = 2;
              swift_willThrow();
            }

            else
            {
              v66 = *(v0 + 312);
              type metadata accessor for OneShotSingletons();
              sub_1C446703C(0xD000000000000013);
              sub_1C4467260();

              sub_1C440E79C();
              sub_1C44921D4();
              v67 = *(v2 + v10);
              v76[0] = 0xD000000000000010;
              v76[1] = 0x80000001C4FAAFC0;
              v68 = *(v0 + 312);
              v69 = sub_1C4404C28();
              MEMORY[0x1C6940010](v69);

              MEMORY[0x1C6940010](0x746E65727275632ELL, 0xE800000000000000);
              v70 = type metadata accessor for KeyValueStore();
              v71 = *(v70 + 48);
              v72 = *(v70 + 52);
              swift_allocObject();
              KeyValueStore.init(config:domain:)(v68, 0xD000000000000010, 0x80000001C4FAAFC0);
              if (qword_1EDDE9560[0] != -1)
              {
                swift_once();
              }

              v73 = qword_1EDE2D100;
              v74 = *algn_1EDE2D0F0;
              *(v0 + 16) = xmmword_1EDE2D0E0;
              *(v0 + 32) = v74;
              *(v0 + 48) = v73;
              sub_1C4B47180((v0 + 16), 1, 0, 0);
              if (qword_1EDDF7BC0 != -1)
              {
                swift_once();
              }

              v75 = *&qword_1EDE2DA88;
              *(v0 + 56) = xmmword_1EDE2DA78;
              *(v0 + 72) = v75;
              *(v0 + 88) = qword_1EDE2DA98;
              sub_1C446BA18();
              v44 = *(v0 + 352);
              sub_1C49AFFF8();
              swift_allocError();
              swift_willThrow();
            }

            sub_1C4420C3C(v0 + 96, &qword_1EC0BA490, &unk_1C4F53630);
            sub_1C4407B64();
            sub_1C447EBE4(v44, v53);
            v54 = *(v0 + 352);
            v56 = *(v0 + 328);
            v55 = *(v0 + 336);
            v57 = *(v0 + 312);
            v58 = *(v0 + 296);

            sub_1C43FBDA0();
LABEL_24:
            sub_1C43FD0C0();

            __asm { BRAA            X1, X16 }
          }
        }

        else
        {
          sub_1C4420C3C(v0 + 176, &qword_1EC0BA490, &unk_1C4F53630);
        }
      }

      v47 = *(v0 + 288);
      v46 = *(v0 + 296);
      v48 = *(v0 + 280);
      v50 = *(v0 + 256);
      v49 = *(v0 + 264);
      v51 = *(v0 + 248);
      sub_1C440BAA8(v46, 1, 1, *(v0 + 272));
      ResumableStage.createProgressToken(_:complete:)();
      (*(v47 + 8))(v46, v48);
      sub_1C4420C3C(v0 + 96, &qword_1EC0BA490, &unk_1C4F53630);
LABEL_23:
      v52 = *(v0 + 264);
      (*(v7 + 56))(*(v0 + 248), v7);
      *(v0 + 376) = *(v0 + 377);
      v61 = swift_task_alloc();
      *(v0 + 360) = v61;
      *v61 = v0;
      v61[1] = sub_1C44A06D0;
      v62 = *(v0 + 264);
      v63 = *(v0 + 248);
      sub_1C43FD0C0();

      return sub_1C449546C();
  }
}

uint64_t sub_1C449217C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C44921D4()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

void sub_1C449222C()
{
  sub_1C43FBD3C();
  v4 = v3;
  v6 = v5;
  v52 = v7;
  v8 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C4413644();
  v51 = type metadata accessor for ConstructionProgressTokens(v12);
  v13 = sub_1C43FBCE0(v51);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  sub_1C43FBE44();
  v16 = type metadata accessor for PhaseStores();
  v17 = sub_1C43FBCE0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  sub_1C43FBD18(v23);
  v25 = *(v24 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FE94C();
  v27 = type metadata accessor for ProgressTokens(0);
  v28 = sub_1C43FBCE0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  v31 = *(*(v4 + 8) + 48);
  v32 = sub_1C43FBEF8();
  v33(v32);
  switch(LOBYTE(v53[0]))
  {
    case 2:

      goto LABEL_5;
    case 3:
      sub_1C44133C0();
      break;
    default:
      break;
  }

  v50 = v1;
  sub_1C4426E50();
  v34 = sub_1C4F02938();

  if ((v34 & 1) == 0)
  {
    sub_1C4425424();
    v44 = sub_1C43FBEF8();
    v45(v44);
    v46 = *(v22 + *(v16 + 24));

    sub_1C441A548();
    sub_1C447EBE4(v22, v47);
    v54 = v6;
    v55 = v4;
    v48 = sub_1C4422F90(v53);
    (*(*(v6 - 8) + 16))(v48, v0, v6);
    sub_1C4403758();
    sub_1C4492704(v53, 0, v49, sub_1C449277C);

    sub_1C440962C(v53);
    if (sub_1C44157D4(v50, 1, v51) == 1)
    {
      v41 = &unk_1EC0BAC20;
      v42 = &unk_1C4F141E0;
      v43 = v50;
      goto LABEL_9;
    }

    sub_1C449F390();
    *(v52 + 24) = v51;
    *(v52 + 32) = &off_1F43EE970;
    sub_1C4422F90(v52);
LABEL_12:
    sub_1C449F390();
    goto LABEL_13;
  }

LABEL_5:
  sub_1C4425424();
  v35 = sub_1C43FBEF8();
  v36(v35);
  v37 = *(v22 + *(v16 + 24));

  sub_1C441A548();
  sub_1C447EBE4(v22, v38);
  v54 = v6;
  v55 = v4;
  v39 = sub_1C4422F90(v53);
  (*(*(v6 - 8) + 16))(v39, v0, v6);
  sub_1C4417828();
  sub_1C4492704(v53, 0, v40, sub_1C44FEF60);

  sub_1C440962C(v53);
  if (sub_1C44157D4(v2, 1, v27) != 1)
  {
    sub_1C449F390();
    *(v52 + 24) = v27;
    *(v52 + 32) = &off_1F43EE918;
    sub_1C4422F90(v52);
    goto LABEL_12;
  }

  v41 = &unk_1EC0BA4B8;
  v42 = &unk_1C4F16F60;
  v43 = v2;
LABEL_9:
  sub_1C4420C3C(v43, v41, v42);
  *(v52 + 32) = 0;
  *v52 = 0u;
  *(v52 + 16) = 0u;
LABEL_13:
  sub_1C43FE9F0();
}

uint64_t sub_1C4492704(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, void *))
{
  v7 = *(*(v4 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v9[2] = a1;
  v10 = a2;

  a4(a3, v9);
}

uint64_t sub_1C4492874()
{
  sub_1C43FC36C();
  v4 = sub_1C4EFD548();
  sub_1C43FCF8C(v4);
  if (*(v5 + 84) == v3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v6 = type metadata accessor for Source();
    result = sub_1C43FCF8C(v6);
    if (*(v8 + 84) != v3)
    {
      *(v1 + *(v2 + 36)) = v0 + 1;
      return result;
    }

    v9 = v1 + *(v2 + 24);
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v10, v11, v12, v13);
}

uint64_t sub_1C4492944@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v48 = a1;
  v46 = a3;
  v47 = a4;
  v5 = type metadata accessor for Source();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1C456902C(&qword_1EC0C39F8, &qword_1C4F54120);
  v49 = *(v59 - 8);
  v9 = *(v49 + 64);
  v10 = MEMORY[0x1EEE9AC00](v59);
  v43 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v44 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v41 - v14;
  type metadata accessor for ConstructionProgressTokens(0);
  v54 = &type metadata for ProgressTokenColumn;
  v15 = sub_1C4492FAC();
  v55 = v15;
  LOBYTE(v53[0]) = 1;
  v16 = a2[3];
  v17 = a2[4];
  sub_1C4409678(a2, v16);
  v18 = *(v17 + 8);
  v19 = *(v18 + 16);
  v51 = sub_1C4EFD548();
  v52 = sub_1C4472550(&qword_1EDDFA240, MEMORY[0x1E69A92C8]);
  sub_1C4422F90(v50);
  v19(v16, v18);
  v57 = sub_1C4EFB298();
  v58 = MEMORY[0x1E699FE60];
  v20 = v57;
  v42 = v57;
  sub_1C4422F90(v56);
  sub_1C4EFBB28();
  sub_1C4420C3C(v50, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v53);
  sub_1C4472550(&qword_1EDDE1100, type metadata accessor for ConstructionProgressTokens);
  v21 = v43;
  sub_1C4EFAE28();
  sub_1C440962C(v56);
  v54 = &type metadata for ProgressTokenColumn;
  v55 = v15;
  v22 = v15;
  LOBYTE(v53[0]) = 0;
  v24 = a2[3];
  v23 = a2[4];
  sub_1C4409678(a2, v24);
  (*(*(v23 + 8) + 24))(v24);
  v25 = *(v8 + 2);
  sub_1C447EBE4(v8, type metadata accessor for Source);
  v51 = MEMORY[0x1E69E6530];
  v52 = MEMORY[0x1E69A0178];
  v50[0] = v25;
  v57 = v20;
  v58 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v56);
  sub_1C4EFBB28();
  sub_1C4420C3C(v50, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v53);
  sub_1C4401CBC(&qword_1EDDF0078, &qword_1EC0C39F8, &qword_1C4F54120);
  v26 = v44;
  v27 = v59;
  sub_1C4EFB438();
  v28 = *(v49 + 8);
  v28(v21, v27);
  sub_1C440962C(v56);
  v54 = &type metadata for ProgressTokenColumn;
  v55 = v22;
  v43 = v22;
  LOBYTE(v53[0]) = 3;
  v29 = a2[3];
  v30 = a2[4];
  sub_1C4409678(a2, v29);
  v31 = *(v30 + 8);
  v32 = *(v31 + 32);
  v51 = &type metadata for StageName;
  v52 = sub_1C4493280();
  v33 = v29;
  v34 = v59;
  v35 = v31;
  v36 = v26;
  v37 = v42;
  v32(v50, v33, v35);
  v38 = MEMORY[0x1E699FE60];
  v39 = v45;
  v57 = v37;
  v58 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v56);
  sub_1C4EFBB28();
  sub_1C4420C3C(v50, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v53);
  sub_1C4EFB438();
  v28(v36, v34);
  sub_1C440962C(v56);
  if (v46)
  {
    v54 = &type metadata for ProgressTokenColumn;
    v55 = v43;
    LOBYTE(v53[0]) = 2;
    v57 = v37;
    v58 = v38;
    sub_1C4422F90(v56);
    sub_1C4EFBB38();
    sub_1C440962C(v53);
    sub_1C4EFB438();
    v28(v39, v34);
    sub_1C440962C(v56);
    (*(v49 + 32))(v39, v36, v34);
  }

  sub_1C4401CBC(&qword_1EDDF0080, &qword_1EC0C39F8, &qword_1C4F54120);
  sub_1C4472550(&qword_1EDDE10F0, type metadata accessor for ConstructionProgressTokens);
  sub_1C4EFAFF8();
  return (v28)(v39, v34);
}

unint64_t sub_1C4492FAC()
{
  result = qword_1EDDF4A28;
  if (!qword_1EDDF4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4A28);
  }

  return result;
}

uint64_t sub_1C449300C(uint64_t a1)
{
  v2 = sub_1C44930A4();

  return MEMORY[0x1EEE09858](a1, v2);
}

uint64_t sub_1C4493058(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C44930F8();

  return MEMORY[0x1EEE09870](a1, a2, v4);
}

unint64_t sub_1C44930A4()
{
  result = qword_1EDDF4A48[0];
  if (!qword_1EDDF4A48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF4A48);
  }

  return result;
}

unint64_t sub_1C44930F8()
{
  result = qword_1EDDF4A20;
  if (!qword_1EDDF4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4A20);
  }

  return result;
}

uint64_t sub_1C449314C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4493178(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C4493178(char a1)
{
  result = 0x656372756F73;
  switch(a1)
  {
    case 1:
      result = sub_1C44553A4();
      break;
    case 2:
      result = 0x6574656C706D6F63;
      break;
    case 3:
      result = sub_1C445FD54();
      break;
    case 4:
      result = 0x6E656B6F74;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C4493280()
{
  result = qword_1EDDF0760;
  if (!qword_1EDDF0760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0760);
  }

  return result;
}

uint64_t sub_1C44932D4(uint64_t a1)
{
  v2 = sub_1C4493320();

  return MEMORY[0x1EEE09B08](a1, v2);
}

unint64_t sub_1C4493320()
{
  result = qword_1EDDF0750;
  if (!qword_1EDDF0750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0750);
  }

  return result;
}

uint64_t StageName.databaseValue.getter()
{
  switch(*v0)
  {
    case 6:
      sub_1C4432A10();
      goto LABEL_7;
    case 7:
      sub_1C44124F8();
      goto LABEL_7;
    case 8:
      sub_1C44137B0();
      goto LABEL_7;
    case 9:
      sub_1C43FDE60();
      sub_1C440D85C();
      goto LABEL_7;
    case 0xA:
      sub_1C440E7B4();
LABEL_7:

      result = sub_1C4F011D8();
      break;
    default:
      v2 = 0xE800000000000000;
      v3 = 0x676E696B636F6C62;
      switch(*v0)
      {
        case 7:
          v2 = 0xEE006E6F69746172;
          v3 = sub_1C43FF604();
          break;
        case 8:
          v4 = 0x69686374616DLL;
          goto LABEL_15;
        case 9:
          v4 = 0x697075646564;
LABEL_15:
          v3 = v4 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
          break;
        case 0xA:
          v2 = 0xEA00000000006E6FLL;
          v3 = sub_1C4409050();
          break;
        case 0xB:
          v2 = 0xE700000000000000;
          v3 = sub_1C4411228();
          break;
        default:
          break;
      }

      MEMORY[0x1C6940010](v3, v2);

      sub_1C4F011D8();

      break;
  }

  return result;
}

uint64_t sub_1C4493550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C43FECE0();
  v6 = sub_1C4EFD548();
  sub_1C43FCF8C(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = sub_1C4404F74();
  }

  else
  {
    v10 = type metadata accessor for Source();
    v11 = sub_1C43FCF8C(v10);
    if (*(v12 + 84) != v3)
    {
      v14 = *(v4 + *(a3 + 36));
      if (v14 >= 2)
      {
        return sub_1C4424974(v14);
      }

      else
      {
        return 0;
      }
    }

    v9 = v11;
    v8 = v4 + *(a3 + 24);
  }

  return sub_1C44157D4(v8, v3, v9);
}

uint64_t sub_1C449364C(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  v6 = *a3;
  sub_1C446ABD0(0);
  sub_1C44078DC();
  LOBYTE(v5) = sub_1C4493790();

  return v5 & 1;
}

uint64_t sub_1C4493710()
{
  sub_1C441B2E0();
  v2 = *(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);
  sub_1C441C090();

  v3 = sub_1C440CAAC();
  v4 = v0(v3);

  return v4;
}

void sub_1C44937D0()
{
  sub_1C43FE96C();
  sub_1C4411CC4();
  v3 = v2;
  v32 = *v0;
  v33 = sub_1C4EFB1E8();
  v4 = sub_1C43FCDF8(v33);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  sub_1C440D420();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v16 = sub_1C43FEFC4(v8, v9, v10, v11, v12, v13, v14, v15, v31);
  v17 = sub_1C43FCDF8(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4406E1C();
  sub_1C441DCFC(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  v22 = sub_1C43FD2BC();
  sub_1C456902C(v22, v23);
  sub_1C4418A58();
  if (!v1)
  {
    goto LABEL_8;
  }

  v24 = v1;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v25 = *(v19 + 8);
  v26 = sub_1C43FCE84();
  v25(v26);
  if (v3)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4433CB8();
LABEL_8:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v27 = v1;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v28 = sub_1C43FCE84();
  v25(v28);
  sub_1C441842C();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C4409C64())
  {

    goto LABEL_8;
  }

  v29 = sub_1C4403150();
  v30(v29);
  sub_1C44159C8(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  __break(1u);
}

uint64_t sub_1C4493A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v33 = a2;
  v32[1] = a1;
  v4 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v32 - v10;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1C4EFBD38();
  v13 = sub_1C442B738(v12, qword_1EDE2E068);
  v39 = v12;
  v40 = MEMORY[0x1E69A0050];
  v14 = sub_1C4422F90(v38);
  v15 = *(*(v12 - 8) + 16);
  v15(v14, v13, v12);
  v32[0] = v3;
  v16 = *(v3 + 16);
  v17 = *(v3 + 24);
  v36 = MEMORY[0x1E69E6158];
  v37 = MEMORY[0x1E69A0130];
  v34 = v16;
  v35 = v17;
  v18 = sub_1C4EFB298();
  v42 = v18;
  v43 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v41);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v34, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v38);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v41);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v19 = sub_1C442B738(v12, qword_1EDE2DF28);
  v39 = v12;
  v40 = MEMORY[0x1E69A0050];
  v20 = sub_1C4422F90(v38);
  v15(v20, v19, v12);
  v36 = MEMORY[0x1E69E6158];
  v37 = MEMORY[0x1E69A0130];
  v34 = v33;
  v35 = v50;
  v42 = v18;
  v43 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v41);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v34, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v38);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C4EFB438();
  v21 = *(v5 + 8);
  v21(v9, v4);
  sub_1C440962C(v41);
  sub_1C4401CBC(&unk_1EDDFE860, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C446B794();
  v22 = v32[2];
  sub_1C4EFAFF8();
  v21(v11, v4);
  if (v22)
  {
    return v21;
  }

  v24 = v45;
  if (!v45)
  {
    return 2;
  }

  v25 = v44;
  v26 = v46;
  v27 = v47;
  v28 = v48;
  v29 = v49;
  v30 = *(v32[0] + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_decoder);
  sub_1C456902C(&qword_1EC0B9208, &qword_1C4F0ED20);
  sub_1C45A2A94();
  sub_1C4EF9698();
  if (*(v44 + 16))
  {
    v31 = v26;
    v21 = *(v44 + 32);
    sub_1C4470E30(v25, v24, v31, v27, v28, v29);

    return v21;
  }

  v44 = 0;
  v45 = 0xE000000000000000;
  sub_1C4F02248();

  v44 = 0xD00000000000002FLL;
  v45 = 0x80000001C4F8A7E0;
  MEMORY[0x1C6940010](v33, v50);
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C4493FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1C4493FAC(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void ResumableStage.createProgressToken(_:complete:)()
{
  sub_1C43FBD3C();
  v136 = v2;
  v137 = v0;
  v4 = v3;
  v6 = v5;
  v135 = v7;
  v8 = type metadata accessor for ConstructionProgressTokens(0);
  v127 = sub_1C43FCDF8(v8);
  v128 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v127);
  sub_1C43FBCC4();
  v129 = v13 - v12;
  sub_1C43FBE44();
  v133 = type metadata accessor for PhaseStores();
  v14 = sub_1C43FBCE0(v133);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v134 = v18 - v17;
  v19 = sub_1C43FBE44();
  v20 = type metadata accessor for ProgressTokens(v19);
  v21 = sub_1C43FCDF8(v20);
  v132 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v27 = v26 - v25;
  sub_1C43FCE64();
  v131 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBD08();
  v126 = (v32 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v130 = &v126 - v35;
  swift_getAssociatedTypeWitness();
  sub_1C446C048();
  sub_1C446C048();
  v36 = type metadata accessor for ProgressToken();
  v37 = sub_1C4F01F48();
  sub_1C43FCDF8(v37);
  v39 = v38;
  v41 = *(v40 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v126 - v43;
  sub_1C43FCE64();
  v46 = v45;
  v48 = *(v47 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FE94C();
  v141 = xmmword_1C4F29230;
  (*(v39 + 16))(v44, v136, v37);
  if (sub_1C44157D4(v44, 1, v36) == 1)
  {
    (*(v39 + 8))(v44, v37);
  }

  else
  {
    (*(v46 + 32))(v1, v44, v36);
    v50 = objc_autoreleasePoolPush();
    sub_1C4B47350(&v141, v1, v6, v4, v138);
    objc_autoreleasePoolPop(v50);
    (*(v46 + 8))(v1, v36);
  }

  sub_1C43FEDF8();
  sub_1C449222C();
  v66 = v135;
  if (v139)
  {
    v67 = v140;
    sub_1C4409678(v138, v139);
    v68 = *(v67 + 48);
    v69 = sub_1C43FCFC0();
    v71 = v70(v69, v67);
    sub_1C440962C(v138);
    if (v66)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1C4420C3C(v138, &qword_1EC0BA490, &unk_1C4F53630);
    v71 = 0;
    if (v66)
    {
      goto LABEL_11;
    }
  }

  if (__OFADD__(v71++, 1))
  {
    __break(1u);
    sub_1C4419274();
    swift_once();
    v51 = sub_1C4F00978();
    sub_1C442B738(v51, qword_1EDE2DE10);
    v52 = v130;
    v53 = v131;
    v54 = *(v131 + 16);
    v54(v130, v137, v6);
    v55 = sub_1C4F00968();
    v56 = sub_1C4F01CD8();
    if (os_log_type_enabled(v55, v56))
    {
      sub_1C43FECF0();
      v57 = swift_slowAlloc();
      sub_1C43FEC60();
      v137 = swift_slowAlloc();
      v138[0] = v137;
      *v57 = 136315138;
      v54(v126, v52, v6);
      v58 = *(v53 + 8);
      v59 = sub_1C4404C28();
      v58(v59);
      v60 = *(*(v4 + 8) + 8);
      v61 = sub_1C4F02858();
      v63 = v62;
      v64 = sub_1C4402120();
      v58(v64);
      v65 = sub_1C441D828(v61, v63, v138);

      *(v57 + 4) = v65;
      _os_log_impl(&dword_1C43F8000, v55, v56, "%s failed to update progress token", v57, 0xCu);
      sub_1C440962C(v137);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
      v123 = *(v53 + 8);
      v124 = sub_1C4404C28();
      v125(v124);
    }

    goto LABEL_20;
  }

LABEL_11:
  v73 = *(v4 + 8);
  v74 = v73[6];
  v75 = sub_1C43FEDF8();
  v76(v75);
  switch(LOBYTE(v138[0]))
  {
    case 2:

      goto LABEL_15;
    case 3:
      sub_1C44133C0();
      break;
    default:
      break;
  }

  sub_1C4426E50();
  v77 = sub_1C4F02938();

  if (v77)
  {
LABEL_15:
    v78 = v73[2];
    v79 = sub_1C43FEDF8();
    v80(v79);
    v81 = v73[4];
    v82 = sub_1C43FEDF8();
    v83(v82);
    v84 = v138[0];
    v85 = v73[3];
    v86 = v27 + v20[6];
    v87 = sub_1C43FEDF8();
    v88(v87);
    v89 = v141;
    *(v27 + v20[5]) = v84;
    *(v27 + v20[7]) = v89;
    *(v27 + v20[8]) = v71;
    *(v27 + v20[9]) = v66 & 1;
    v90 = v73[5];
    v91 = sub_1C43FBEF8();
    sub_1C4431E64(v91, v92);
    v93 = v134;
    v94 = sub_1C43FEDF8();
    v90(v94);
    v95 = *(v93 + *(v133 + 24));

    sub_1C441A548();
    sub_1C447EBE4(v93, v96);
    sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
    *(sub_1C44105D8() + 16) = xmmword_1C4F0D130;
    sub_1C44921D4();
    sub_1C440BF50();
    sub_1C450B420();
    swift_setDeallocating();
    sub_1C450B628();

    v97 = type metadata accessor for ProgressTokens;
    v98 = v27;
  }

  else
  {
    v99 = v73[2];
    v100 = v129;
    v101 = sub_1C43FEDF8();
    v102(v101);
    v103 = v73[4];
    v104 = sub_1C43FEDF8();
    v105(v104);
    v106 = v138[0];
    v107 = v73[3];
    v108 = v127;
    v109 = v100 + *(v127 + 24);
    v110 = sub_1C43FEDF8();
    v111(v110);
    v112 = v141;
    *(v100 + v108[5]) = v106;
    *(v100 + v108[7]) = v112;
    *(v100 + v108[8]) = v71;
    *(v100 + v108[9]) = v66 & 1;
    v113 = v73[5];
    v114 = sub_1C43FBEF8();
    sub_1C4431E64(v114, v115);
    v116 = v134;
    v117 = sub_1C43FEDF8();
    v113(v117);
    v118 = *(v116 + *(v133 + 24));

    sub_1C441A548();
    sub_1C447EBE4(v116, v119);
    sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
    v120 = sub_1C44105D8();
    *(v120 + 16) = xmmword_1C4F0D130;
    sub_1C44921D4();
    sub_1C449498C(v120);
    swift_setDeallocating();
    sub_1C4495394();

    v97 = type metadata accessor for ConstructionProgressTokens;
    v98 = v100;
  }

  sub_1C447EBE4(v98, v97);
  v121 = sub_1C43FBEF8();
  sub_1C441DFEC(v121, v122);
LABEL_20:
  sub_1C43FE9F0();
}

uint64_t sub_1C449498C(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C4400128();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2E088);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    sub_1C43FEC60();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(a1 + 16);

    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1C441D828(0xD00000000000001ALL, 0x80000001C4FB26E0, &v13);
    _os_log_impl(&dword_1C43F8000, v5, v6, "GraphStore: store: %ld %s records.", v7, 0x16u);
    sub_1C440962C(v8);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  v10 = *(*(v2 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  MEMORY[0x1EEE9AC00](v9);
  v12[2] = a1;

  sub_1C446C37C(sub_1C4494C48, v12);
}

void sub_1C4494B4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    if (v10 == v9)
    {
      break;
    }

    v11 = a3(0);
    sub_1C43FCDF8(v11);
    v12 = v9 + 1;
    v15 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v14 + 72) * v9;
    sub_1C4472550(a4, a5);
    sub_1C4EFB6A8();
    v9 = v12;
  }

  while (!v5);
}

uint64_t sub_1C4494D00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4EFBAF8();
  v6 = sub_1C442B738(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1C4494D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDE10D8, type metadata accessor for ConstructionProgressTokens);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

void ConstructionProgressTokens.encode(to:)()
{
  sub_1C4413F18();
  sub_1C440EDD4();
  v3 = sub_1C456902C(&qword_1EC0BE120, &qword_1C4F32650);
  sub_1C4403200(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4495034();
  sub_1C440F61C();
  LOBYTE(v16) = 0;
  sub_1C4EFD548();
  sub_1C44004E0();
  sub_1C4490F60(v7, v8);
  sub_1C44E76EC();
  sub_1C43FC428();
  sub_1C4F027E8();
  if (!v1)
  {
    v9 = type metadata accessor for ConstructionProgressTokens(0);
    sub_1C4416AC4(v9);
    sub_1C442DF84();
    sub_1C4F027E8();
    sub_1C4867FD8();
    sub_1C441FBB8();
    sub_1C4490F60(v10, v11);
    sub_1C43FC428();
    sub_1C4F027E8();
    sub_1C44AE054();
    sub_1C442DF84();
    sub_1C4F02778();
    sub_1C441DFEC(v16, v17);
    v12 = *(v0 + *(v2 + 32));
    sub_1C4471CBC(4);
    sub_1C440D3E4();
    sub_1C4F027D8();
    v13 = *(v0 + *(v2 + 36));
    sub_1C4471CBC(5);
    sub_1C440D3E4();
    sub_1C4F027A8();
  }

  v14 = sub_1C43FF120();
  v15(v14);
  sub_1C441C2B4();
  sub_1C44102DC();
}

unint64_t sub_1C4495034()
{
  result = qword_1EDDE1138;
  if (!qword_1EDDE1138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1138);
  }

  return result;
}

uint64_t sub_1C449508C()
{
  result = sub_1C44553A4();
  switch(v1)
  {
    case 1:
      result = sub_1C445FD54();
      break;
    case 2:
      result = sub_1C4461FC0();
      break;
    case 3:
      result = 0x6E656B6F74;
      break;
    case 4:
      result = sub_1C44493C4();
      break;
    case 5:
      result = 0x6574656C706D6F63;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C4495134()
{
  result = qword_1EDDF0748;
  if (!qword_1EDDF0748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0748);
  }

  return result;
}

uint64_t sub_1C44951A0()
{

  return sub_1C4F02458();
}

uint64_t sub_1C44951D4()
{

  return sub_1C44C8EE8(v1, v0);
}

uint64_t sub_1C44951EC(uint64_t result)
{
  v4 = *(v3 - 216);
  *(v3 - 304) = v2;
  *(v3 - 296) = v1;
  v5 = *(result + 16);
  return result;
}

uint64_t sub_1C449520C@<X0>(uint64_t a1@<X8>)
{
  v3[7] = v2;
  v3[4] = a1;
  v3[5] = v1;

  return sub_1C4F02AC8();
}

uint64_t sub_1C4495254()
{
  v2 = *(v0 - 592);
  v3 = *(v0 - 600);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C449528C()
{
  result = v1;
  *(v2 - 512) = *(v0 + 8);
  return result;
}

uint64_t sub_1C44952C0()
{
  *(v0 - 72) = 0;
  result = *(v0 - 136);
  v2 = *(v0 - 152);
  return result;
}

uint64_t sub_1C44952D4()
{
  v2 = *(v0 + 216);

  return sub_1C4F00978();
}

uint64_t sub_1C44952F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  *(a2 + 16) = v11 + 71;
  *(a2 + 24) = v10;
  *(a2 + 32) = a9;
  *(a2 + 48) = a10;
  *(a2 + 64) = 9;

  return swift_willThrow();
}

void *sub_1C4495330()
{
  v3 = (v1 + *(v0 + 40));
  *v3 = 0;
  v3[1] = 0;
  v4 = v2[4];
  return sub_1C4409678(v2, v2[3]);
}

uint64_t sub_1C4495360()
{
  v3 = v0[27];
  v4 = *(v0[26] + 16);
  result = v1 + *(v2 + 24);
  v6 = v0[22];
  return result;
}

uint64_t sub_1C44953AC(uint64_t (*a1)(void))
{
  v1 = a1(0);
  sub_1C43FCF8C(v1);
  v3 = *(v2 + 80);
  sub_1C4485C48();
  sub_1C4406518();

  return swift_deallocClassInstance();
}

void sub_1C449541C()
{
  *(v3 + 424) = v1;
  *(v3 + 408) = v0;
  *(v3 + 416) = v2;
}

uint64_t sub_1C4495428(float a1)
{
  *v3 = a1;

  return sub_1C441D828(v2, v1, (v4 - 104));
}

uint64_t sub_1C4495448()
{

  return swift_slowAlloc();
}

uint64_t sub_1C449546C()
{
  sub_1C43FBCD4();
  v3 = v2;
  *(v1 + 24) = v4;
  *(v1 + 32) = v0;
  *(v1 + 16) = v5;
  v6 = *(v5 - 8);
  *(v1 + 40) = v6;
  v7 = *(v6 + 64);
  *(v1 + 48) = sub_1C43FE604();
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  v8 = sub_1C4F008B8();
  *(v1 + 72) = v8;
  sub_1C43FCF7C(v8);
  *(v1 + 80) = v9;
  v11 = *(v10 + 64);
  *(v1 + 88) = sub_1C43FE604();
  *(v1 + 96) = swift_task_alloc();
  v12 = sub_1C4F008F8();
  *(v1 + 104) = v12;
  sub_1C43FCF7C(v12);
  *(v1 + 112) = v13;
  v15 = *(v14 + 64);
  *(v1 + 120) = sub_1C43FE604();
  *(v1 + 128) = swift_task_alloc();
  v16 = sub_1C4F00978();
  *(v1 + 136) = v16;
  sub_1C43FCF7C(v16);
  *(v1 + 144) = v17;
  v19 = *(v18 + 64);
  *(v1 + 152) = sub_1C43FE604();
  *(v1 + 160) = swift_task_alloc();
  v20 = sub_1C4EFD618();
  *(v1 + 168) = v20;
  sub_1C43FCF7C(v20);
  *(v1 + 176) = v21;
  v23 = *(v22 + 64);
  *(v1 + 184) = sub_1C43FBE7C();
  *(v1 + 240) = *v3;
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1C449568C()
{
  v60 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[12];
  sub_1C4F00188();
  (*(v4 + 16))(v1, v2, v3);
  sub_1C4F008C8();
  sub_1C4F008D8();
  sub_1C4F00898();
  v7 = sub_1C4F008D8();
  v8 = sub_1C4F01E28();
  if (sub_1C4F01F28())
  {
    v9 = v0[12];
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_1C4F008A8();
    _os_signpost_emit_with_name_impl(&dword_1C43F8000, v7, v8, v11, "graphConstruction", "", v10, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v56 = v0[20];
  v12 = v0[18];
  v52 = v0[23];
  v53 = v0[17];
  v13 = v0[15];
  v51 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[12];
  v19 = v0[9];
  v18 = v0[10];

  (*(v18 + 16))(v16, v17, v19);
  v20 = sub_1C4F00948();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_1C4F00938();
  (*(v15 + 16))(v13, v51, v14);
  sub_1C4EFD5E8();
  (*(v18 + 8))(v17, v19);
  (*(v15 + 8))(v51, v14);
  (*(v12 + 8))(v56, v53);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v23 = v0[8];
  v24 = v0[4];
  v25 = v0[5];
  v26 = v0[2];
  v0[24] = sub_1C442B738(v0[17], qword_1EDE2DE10);
  v27 = *(v25 + 16);
  v0[25] = v27;
  v0[26] = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v28 = sub_1C4402120();
  v27(v28);
  v29 = sub_1C4F00968();
  v30 = sub_1C4F01CF8();
  v31 = sub_1C4400B94(v30);
  v32 = v0[8];
  if (v31)
  {
    v33 = v0[7];
    v34 = v0[5];
    v35 = v0[2];
    v54 = v0[3];
    sub_1C43FECF0();
    v36 = swift_slowAlloc();
    sub_1C43FEC60();
    v57 = swift_slowAlloc();
    v59 = v57;
    *v36 = 136315138;
    (v27)(v33, v32, v35);
    v37 = *(v34 + 8);
    v37(v32, v35);
    v38 = *(v54 + 8);
    v39 = sub_1C4F02858();
    v41 = v40;
    v37(v33, v35);
    v42 = sub_1C441D828(v39, v41, &v59);

    *(v36 + 4) = v42;
    sub_1C4404638(&dword_1C43F8000, v43, v44, "StageStart %s");
    sub_1C440962C(v57);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
    v37 = *(v0[5] + 8);
    v37(v0[8], v0[2]);
  }

  v0[27] = v37;
  v55 = (v0[3] + 64);
  v58 = (*v55 + **v55);
  v45 = (*v55)[1];
  v46 = swift_task_alloc();
  v0[28] = v46;
  *v46 = v0;
  v46[1] = sub_1C449F5F4;
  v47 = v0[3];
  v48 = v0[4];
  v49 = v0[2];

  return v58(v49, v47);
}

void sub_1C4495B14()
{
  sub_1C43FBD3C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1C44A1E40();
  v8 = sub_1C4EFD548();
  v9 = sub_1C43FCDF8(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4433190();
  v12 = type metadata accessor for Source();
  v13 = sub_1C43FBD18(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C4414930();
  sub_1C4440948();
  v16 = v7(0);
  sub_1C4429020(v16);
  sub_1C456902C(v5, v3);
  v17 = sub_1C445BBF0();
  MEMORY[0x1C6940010](v17);

  sub_1C441DC78();
  sub_1C444B050();
  sub_1C44364AC();
  sub_1C441925C();
  sub_1C4430900(v0, v1);
  MEMORY[0x1C6940010](*v1, v1[1]);
  sub_1C4411930();
  sub_1C447E868(v1, v18);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  sub_1C4EFD3D8();
  v19 = sub_1C441B798();
  v20(v19);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C4656CA4();
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

void sub_1C4495CA4()
{

  JUMPOUT(0x1C6940010);
}

void sub_1C4495CC4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x2Au);
}

uint64_t sub_1C4495CDC()
{
  v1 = *(*(v0 - 144) + 8);
  v2 = *(v0 - 128);
  return *(v0 - 120) + *(*(v0 - 136) + 20);
}

uint64_t sub_1C4495D0C()
{
  v2 = v0[141];
  v3 = v0[136];
  v4 = v0[129];

  return swift_setDeallocating();
}

uint64_t sub_1C4495D2C()
{
  v2 = *(v0 - 760);
  v3 = *(v0 - 768);

  return sub_1C44239FC(v2);
}

uint64_t *sub_1C4495D4C(uint64_t a1)
{
  *(v2 - 192) = v1;
  *(v1 + 64) = a1;

  return sub_1C4422F90((v1 + 32));
}

uint64_t sub_1C4495D68(uint64_t a1)
{
  *(v1 - 136) = a1;

  return sub_1C4EFF808();
}

void sub_1C4495D94()
{

  JUMPOUT(0x1C6942830);
}

uint64_t sub_1C4495DB4@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 256) = v1;
}

uint64_t sub_1C4495DCC@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = v1;
  *(v2 - 160) = a1;

  return sub_1C4EFEEF8();
}

uint64_t sub_1C4495DFC()
{
  v3 = *(v2 - 112) + 8;
  result = v0 + v1;
  v5 = *(v2 - 72);
  return result;
}

uint64_t sub_1C4495E1C()
{
  v4 = *(v2 - 168);
  v5 = v1 + ((*(*(v2 - 160) + 80) + 32) & ~*(*(v2 - 160) + 80)) + *(*(v2 - 160) + 72) * v0;

  return swift_arrayInitWithCopy();
}

uint64_t sub_1C4495E50()
{

  return type metadata accessor for ScreenTimeStructs.Person(0);
}

uint64_t sub_1C4495E88()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F52FF0);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4495F28()
{
  sub_1C43FCF70();
  sub_1C44353F0();
  v0 = type metadata accessor for RelationshipFullSourceIngestor();
  v1 = sub_1C440FBE0(v0);
  sub_1C44111F4(v1, v2, v3, v4, v5, v6, v7, v8, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13));
  v9 = swift_task_alloc();
  v10 = sub_1C4409044(v9);
  *v10 = v11;
  sub_1C44246F8(v10);

  return sub_1C4496898();
}

uint64_t sub_1C4495FC0(_BYTE *a1)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v9[16] = *a1;

  v3 = sub_1C443DD50(sub_1C4496404, v9);

  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2E088);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_1C43F8000, v5, v6, "GraphStore: clearEntityTriples: %ld deleted.", v7, 0xCu);
    MEMORY[0x1C6942830](v7, -1, -1);
  }

  return v3;
}

uint64_t sub_1C44960FC@<X0>(unsigned __int8 a1@<W1>, uint64_t *a2@<X8>)
{
  v20 = a2;
  v3 = a1;
  v4 = sub_1C456902C(&qword_1EC0BA588, &unk_1C4F142B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17[-1] - v10;
  type metadata accessor for EntityTriple(0);
  sub_1C4496488(&qword_1EDDF8DB0, type metadata accessor for EntityTriple);
  sub_1C4EFADF8();
  if (v3 != 4)
  {
    v18[3] = &type metadata for SourcedTripleColumn;
    v18[4] = sub_1C44964E4();
    LOBYTE(v18[0]) = 8;
    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
    switch(v3)
    {
      case 1:
        v12 = 0xE400000000000000;
        v13 = 1819047270;
        break;
      case 2:
        v12 = 0xE500000000000000;
        v13 = 0x61746C6564;
        break;
      case 3:
        v12 = 0xEA0000000000676ELL;
        v13 = 0x69686374614D6F74;
        break;
      default:
        break;
    }

    v17[3] = MEMORY[0x1E69E6158];
    v17[4] = MEMORY[0x1E69A0130];
    v17[0] = v13;
    v17[1] = v12;
    v19[3] = sub_1C4EFB298();
    v19[4] = MEMORY[0x1E699FE60];
    sub_1C4422F90(v19);
    sub_1C4EFBB28();
    sub_1C44967E0(v17);
    sub_1C440962C(v18);
    sub_1C4496848(&qword_1EDDFA2C8);
    sub_1C4EFB438();
    (*(v5 + 8))(v11, v4);
    sub_1C440962C(v19);
    (*(v5 + 32))(v11, v9, v4);
  }

  v14 = sub_1C4EFB898();
  result = (*(v5 + 8))(v11, v4);
  if (!v2)
  {
    *v20 = v14;
  }

  return result;
}

uint64_t sub_1C4496440(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4496488(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C44964E4()
{
  result = qword_1EDDF49F0;
  if (!qword_1EDDF49F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF49F0);
  }

  return result;
}

uint64_t sub_1C4496538(uint64_t a1)
{
  v2 = sub_1C4496584();

  return MEMORY[0x1EEE09858](a1, v2);
}

unint64_t sub_1C4496584()
{
  result = qword_1EDDF4A10;
  if (!qword_1EDDF4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4A10);
  }

  return result;
}

uint64_t sub_1C44965D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4496624();

  return MEMORY[0x1EEE09870](a1, a2, v4);
}

unint64_t sub_1C4496624()
{
  result = qword_1EDDF49E8;
  if (!qword_1EDDF49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF49E8);
  }

  return result;
}

unint64_t sub_1C4496678@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C44966A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C44966A4(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x7461636964657270;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x7463656A626FLL;
      break;
    case 5:
      result = 0x656372756F73;
      break;
    case 6:
      result = 0x6449656372756F73;
      break;
    case 7:
      result = 0x6D617473656D6974;
      break;
    case 8:
      result = 0x656E696C65706970;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C44967E0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C5040, &qword_1C4F0F950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4496848(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BA588, &unk_1C4F142B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4496898()
{
  v1[2] = v0;
  v2 = sub_1C4F00978();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1C4EF98F8();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C44969C0, 0, 0);
}

uint64_t sub_1C44969C0()
{
  v36 = v0;
  sub_1C44867F4();
  v1 = sub_1C4F01E88();
  v2 = sub_1C4F01108();
  v3 = sub_1C4496C58(v2, 1852797802, 0xE400000000000000, v1);

  if (v3)
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[6];
    v7 = v0[7];
    v8 = v0[2];
    sub_1C4EF98C8();

    (*(v7 + 32))(v4, v5, v6);
    v9 = type metadata accessor for RelationshipFullSourceIngestor();
    sub_1C4496CCC(v4, v8 + *(v9 + 20));
    v10 = v0[9];
    v27 = v0[6];
    v28 = v0[7];
    v29 = v0[2];
    sub_1C4EF9AE8();
    sub_1C449C950();
    (*(v28 + 8))(v10, v27);
  }

  else
  {
    v11 = v0[5];
    sub_1C4F00158();
    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CD8();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[4];
    v15 = v0[5];
    v17 = v0[3];
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1C441D828(0xD000000000000037, 0x80000001C4FB0E10, &v35);
      sub_1C441238C();
      _os_log_impl(v20, v21, v22, v23, v24, v25);
      sub_1C440962C(v19);
      v26 = sub_1C44068C0();
      MEMORY[0x1C6942830](v26);
      MEMORY[0x1C6942830](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);
  }

  v31 = v0[8];
  v30 = v0[9];
  v32 = v0[5];

  v33 = v0[1];

  return v33();
}

id sub_1C4496C58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1C4F01108();

  v7 = [a4 URLForResource:a1 withExtension:v6];

  return v7;
}

uint64_t sub_1C4496CCC(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  sub_1C43FBE94();
  v79 = sub_1C4F00978();
  v3 = sub_1C43FCDF8(v79);
  v77 = v4;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v72 - v10;
  v12 = sub_1C4EFF548();
  v13 = sub_1C43FCDF8(v12);
  v76 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C456902C(&qword_1EC0BDCD0, &qword_1C4F31980);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v72 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v81 = &v72 - v27;
  sub_1C440BAA8(&v72 - v27, 1, 1, v12);
  v80 = objc_autoreleasePoolPush();
  v28 = sub_1C4EF9938();
  if (v2)
  {
    v30 = v81;
    objc_autoreleasePoolPop(v80);
    return sub_1C4420C3C(v30, &qword_1EC0BDCD0, &qword_1C4F31980);
  }

  v31 = v28;
  v32 = v29;
  v74 = v18;
  v75 = v23;
  v72 = v11;
  v73 = v9;
  v33 = sub_1C4EF9348();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  sub_1C4EF9338();
  sub_1C4497370(&qword_1EDDEFF68, MEMORY[0x1E69A9920]);
  sub_1C4EF9328();
  v37 = v81;
  sub_1C4420C3C(v81, &qword_1EC0BDCD0, &qword_1C4F31980);
  sub_1C4434000(v31, v32);

  sub_1C440BAA8(v26, 0, 1, v12);
  sub_1C44CDA30(v26, v37, &qword_1EC0BDCD0, &qword_1C4F31980);
  objc_autoreleasePoolPop(v80);
  v38 = v75;
  sub_1C4460108(v37, v75, &qword_1EC0BDCD0, &qword_1C4F31980);
  if (sub_1C44157D4(v38, 1, v12) == 1)
  {
    sub_1C4420C3C(v38, &qword_1EC0BDCD0, &qword_1C4F31980);
    v39 = v73;
    sub_1C4F00158();
    v40 = sub_1C4F00968();
    v41 = sub_1C4F01CD8();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v79;
    if (v42)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v82 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_1C441D828(0xD000000000000037, 0x80000001C4FB0E10, &v82);
      sub_1C441238C();
      _os_log_impl(v46, v47, v48, v49, v50, v51);
      sub_1C440962C(v45);
      v52 = sub_1C44068C0();
      MEMORY[0x1C6942830](v52);
      MEMORY[0x1C6942830](v44, -1, -1);
    }

    (*(v77 + 8))(v39, v43);
    return sub_1C4420C3C(v37, &qword_1EC0BDCD0, &qword_1C4F31980);
  }

  v53 = v76;
  v54 = v74;
  (*(v76 + 32))(v74, v38, v12);
  v55 = sub_1C4497414(v54, v78);
  v56 = v55;
  if (v55)
  {
    v57 = sub_1C449AFC8(v55);
    v58 = *(v78 + *(type metadata accessor for PhaseStores() + 40));
    v59 = *(v58 + 24);

    v60 = sub_1C449B880(v57);
    sub_1C449BB90(v60);

    v67 = sub_1C449BE3C(v56);

    v68 = *(v58 + 16);

    v69 = sub_1C449C4C8(v67);
    sub_1C449C6AC(v69);

LABEL_13:
    (*(v53 + 8))(v74, v12);
    return sub_1C4420C3C(v37, &qword_1EC0BDCD0, &qword_1C4F31980);
  }

  sub_1C4F00158();
  v61 = sub_1C4F00968();
  v62 = sub_1C4F01CD8();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_1C43F8000, v61, v62, "Nil relationshipObjects returned during source ingestion. Ending Relationship source ingestion.", v63, 2u);
    v64 = sub_1C44068C0();
    MEMORY[0x1C6942830](v64);

    v65 = sub_1C4400BF4();
    v66(v65);
    goto LABEL_13;
  }

  v70 = sub_1C4400BF4();
  v71(v70);
  (*(v53 + 8))(v54, v12);
  return sub_1C4420C3C(v37, &qword_1EC0BDCD0, &qword_1C4F31980);
}

uint64_t sub_1C4497370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44973B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1C456902C(a3, a4);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C4497414(uint64_t a1, uint64_t a2)
{
  v122 = a2;
  v133 = sub_1C4F00978();
  v2 = *(v133 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v133);
  v6 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v121 = &v120 - v7;
  v8 = type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType(0);
  v126 = *(v8 - 8);
  v9 = *(v126 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v124 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v120 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v161 = &v120 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v149 = &v120 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v120 - v19;
  v21 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v150 = &v120 - v23;
  v24 = sub_1C456902C(&qword_1EC0C30A8, &unk_1C4F4F450);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v129 = &v120 - v26;
  v138 = type metadata accessor for RelationshipStructs.LivingBeingRelationship(0);
  v125 = *(v138 - 8);
  v27 = *(v125 + 64);
  v28 = MEMORY[0x1EEE9AC00](v138);
  v128 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v120 - v30;
  v32 = sub_1C4EFFC28();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v151 = &v120 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C4EFF538();
  if (!result)
  {
    result = MEMORY[0x1E69E7CC0];
  }

  v144 = *(result + 16);
  if (v144)
  {
    v123 = v14;
    v37 = 0;
    v140 = result + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v139 = v33 + 16;
    v142 = v33;
    v143 = (v33 + 8);
    v38 = MEMORY[0x1E69E7CC8];
    v132 = (v2 + 8);
    v131 = v6;
    v130 = v31;
    v152 = v8;
    v39 = v129;
    v40 = v138;
    v136 = v32;
    v141 = result;
    while (1)
    {
      if (v37 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v41 = *(v142 + 72);
      v147 = v37;
      (*(v142 + 16))(v151, v140 + v41 * v37, v32);
      v42 = sub_1C4EFFC08();
      v44 = v43;
      v45 = *(v38 + 16);
      v148 = v38;
      v145 = v42;
      if (v45 && (v46 = sub_1C445FAA8(v42, v43), (v47 & 1) != 0))
      {
        v48 = v44;
        sub_1C449217C(*(v38 + 56) + *(v125 + 72) * v46, v39);
        sub_1C440BAA8(v39, 0, 1, v40);
        sub_1C449A6B4(v39, v31);
      }

      else
      {
        sub_1C440BAA8(v39, 1, 1, v40);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v48 = v44;
        v49 = v146;
        sub_1C44984F8();
        v146 = v49;
        if (v49)
        {
          (*v143)(v151, v32);

          if (sub_1C44157D4(v39, 1, v40) != 1)
          {
            sub_1C4420C3C(v39, &qword_1EC0C30A8, &unk_1C4F4F450);
          }

LABEL_59:

          return v38;
        }

        if (sub_1C44157D4(v39, 1, v40) != 1)
        {
          sub_1C4420C3C(v39, &qword_1EC0C30A8, &unk_1C4F4F450);
        }
      }

      v50 = sub_1C4EFFBE8();
      if (!v51)
      {
        goto LABEL_17;
      }

      v52 = v51;
      v137 = v50;
      v53 = sub_1C4EFFBD8();
      if (!v54)
      {

        v32 = v136;
LABEL_17:

        v59 = v131;
        sub_1C4F00158();
        v60 = sub_1C4F00968();
        v61 = sub_1C4F01CB8();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_1C43F8000, v60, v61, "No relationship predicate for this triple. Skipping", v62, 2u);
          v63 = v62;
          v40 = v138;
          MEMORY[0x1C6942830](v63, -1, -1);
        }

        (*v132)(v59, v133);
        v38 = v148;
        goto LABEL_54;
      }

      v55 = v53;
      v56 = v54;
      v57 = objc_autoreleasePoolPush();
      v155 = v55;
      v156 = v56;
      v159 = 95;
      v160 = 0xE100000000000000;
      sub_1C4415EA8();
      if (*(sub_1C4F01FC8() + 16) >= 2uLL)
      {
        v64 = sub_1C4499330(1);
        v66 = v65;
        v154 = v57;
        v68 = v67;
        v70 = v69;

        v155 = v64;
        v156 = v66;
        v157 = v68;
        v158 = v70;
        v57 = v154;
        v31 = v130;
        sub_1C456902C(&qword_1EC0C0F30, &qword_1C4F41A88);
        sub_1C44993A4();
        v153 = sub_1C4F01048();
        v58 = v71;

        v40 = v138;
        swift_unknownObjectRelease();
      }

      else
      {

        v153 = 0;
        v58 = 0;
      }

      objc_autoreleasePoolPop(v57);
      v32 = v136;
      if (!v58)
      {

        v114 = v121;
        sub_1C4F00158();
        v115 = sub_1C4F00968();
        v116 = sub_1C4F01CD8();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          _os_log_impl(&dword_1C43F8000, v115, v116, "Relationship ID on asset does not conform to ID_LOCALE expectation.", v117, 2u);
          MEMORY[0x1C6942830](v117, -1, -1);
        }

        (*v132)(v114, v133);
        sub_1C465B58C();
        v118 = swift_allocError();
        *v119 = 0;
        LOBYTE(v155) = 1;
        static Transformers.reportError(error:context:config:pipelineType:)(v118, 0x6E6F6974616C6552, 0xEC00000070696873, v122, &v155);
        (*v143)(v151, v32);
        sub_1C44992D8(v31, type metadata accessor for RelationshipStructs.LivingBeingRelationship);

        return 0;
      }

      v154 = v58;
      v135 = v48;
      MEMORY[0x1C693D840](v137, v52);
      v137 = *(v40 + 32);
      v72 = *&v31[v137];
      v73 = MEMORY[0x1E69E7CC0];
      if (v72)
      {
        v74 = v72;
      }

      else
      {
        v74 = MEMORY[0x1E69E7CC0];
      }

      v75 = *(v74 + 16);
      v134 = v72;
      if (v75)
      {
        v76 = v126;
        v77 = (*(v126 + 80) + 32) & ~*(v126 + 80);
        v127 = v74;
        v78 = v74 + v77;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v79 = 0;
        v80 = *(v76 + 72);
        do
        {
          sub_1C449217C(v78, v20);
          v81 = &v20[v152[8]];
          v82 = *(v81 + 1);
          if (v82)
          {
            v83 = *v81 == v153 && v82 == v154;
            if (v83 || (sub_1C4F02938() & 1) != 0)
            {
              v84 = sub_1C4EFFBF8();
              v85 = v149;
              sub_1C4499BAC(v150, v84, v86, v20, v149);

              sub_1C44992D8(v20, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
              sub_1C449A6B4(v85, v20);
              v79 = 1;
            }
          }

          sub_1C449217C(v20, v161);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C449A568(0, *(v73 + 16) + 1, 1, v73);
            v73 = v89;
          }

          v88 = *(v73 + 16);
          v87 = *(v73 + 24);
          if (v88 >= v87 >> 1)
          {
            sub_1C449A568(v87 > 1, v88 + 1, 1, v73);
            v73 = v90;
          }

          *(v73 + 16) = v88 + 1;
          sub_1C449A6B4(v161, v73 + v77 + v88 * v80);
          sub_1C44992D8(v20, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
          v78 += v80;
          --v75;
        }

        while (v75);

        v32 = v136;
      }

      else
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v79 = 0;
      }

      v92 = sub_1C4499408(v91);
      v93 = v148;
      if (v79)
      {
      }

      else
      {
        v94 = sub_1C4499AD0(v153, v154, v92);

        if (v94)
        {
          v95 = sub_1C4EFEEF8();
          v96 = v123;
          sub_1C440BAA8(v123, 1, 1, v95);
          v97 = v152;
          v98 = v96 + v152[5];
          sub_1C4EFD2C8();
          v99 = v97[6];
          if (qword_1EDDFD318 != -1)
          {
            swift_once();
          }

          v100 = type metadata accessor for Source();
          v101 = sub_1C442B738(v100, qword_1EDDFD320);
          sub_1C449217C(v101, v96 + v99);
          v102 = v96 + v97[7];
          sub_1C4EFE7D8();
          v103 = v97[9];
          v104 = (v96 + v97[8]);
          sub_1C4EFE3A8();
          *(v96 + v97[10]) = 0;
          v105 = v154;
          *v104 = v153;
          v104[1] = v105;
          v106 = sub_1C4EFFBF8();
          v107 = v149;
          sub_1C4499BAC(v150, v106, v108, v96, v149);

          sub_1C449A410(v107, v96);
          sub_1C449217C(v96, v124);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C449A568(0, *(v73 + 16) + 1, 1, v73);
            v73 = v112;
          }

          v39 = v129;
          v40 = v138;
          v110 = *(v73 + 16);
          v109 = *(v73 + 24);
          if (v110 >= v109 >> 1)
          {
            sub_1C449A568(v109 > 1, v110 + 1, 1, v73);
            v73 = v113;
          }

          *(v73 + 16) = v110 + 1;
          sub_1C449A6B4(v124, v73 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v110);
          sub_1C44992D8(v123, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);

          goto LABEL_53;
        }
      }

      v39 = v129;
      v40 = v138;
LABEL_53:
      v111 = v130;
      *&v130[v137] = v73;
      v31 = v111;
      sub_1C449A70C();
      sub_1C449217C(v31, v128);
      swift_isUniquelyReferenced_nonNull_native();
      v155 = v93;
      sub_1C449AA98();

      v38 = v155;
      sub_1C4420C3C(v150, &qword_1EC0B9A08, &unk_1C4F107B0);
LABEL_54:
      v37 = v147 + 1;
      (*v143)(v151, v32);
      sub_1C44992D8(v31, type metadata accessor for RelationshipStructs.LivingBeingRelationship);
      result = v141;
      if (v37 == v144)
      {
        goto LABEL_59;
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1C4498390()
{
  sub_1C43FF404();
  v4 = sub_1C4EFF0C8();
  v5 = sub_1C43FCF8C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    v10 = sub_1C43FCF8C(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = sub_1C4EFD548();
      v14 = sub_1C43FCF8C(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v16 = type metadata accessor for Source();
        result = sub_1C43FCF8C(v16);
        if (*(v18 + 84) != v3)
        {
          *(v1 + v2[8]) = v0;
          return result;
        }

        v7 = result;
        v12 = v2[7];
      }
    }

    v8 = v1 + v12;
  }

  return sub_1C440BAA8(v8, v0, v0, v7);
}

void sub_1C44984F8()
{
  sub_1C43FE96C();
  v119 = v0;
  v2 = v1;
  v127 = v3;
  v5 = v4;
  v6 = sub_1C4F00DD8();
  v7 = sub_1C43FCDF8(v6);
  v120 = v8;
  v121 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v116 = v12 - v11;
  sub_1C43FBE44();
  v13 = sub_1C4F00DC8();
  v14 = sub_1C43FCDF8(v13);
  v122 = v15;
  v123 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  v115 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD230();
  v118 = v20;
  sub_1C43FBE44();
  v21 = sub_1C4F01188();
  v22 = sub_1C43FCDF8(v21);
  v125 = v23;
  v126 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v124 = v27 - v26;
  sub_1C43FBE44();
  v28 = sub_1C4EFD548();
  v29 = sub_1C43FCDF8(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  v112 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v104 - v36;
  v38 = sub_1C4EFF0C8();
  v39 = sub_1C43FCDF8(v38);
  v113 = v40;
  v114 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBFDC();
  v110 = v43;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FD230();
  v109 = v45;
  v46 = sub_1C43FBE44();
  v47 = type metadata accessor for RelationshipStructs.LivingBeingRelationship(v46);
  v48 = v47[5];
  v49 = sub_1C4EFEEF8();
  v111 = v48;
  sub_1C440BAA8(v5 + v48, 1, 1, v49);
  v50 = v47[6];
  sub_1C4EFD1E8();
  v133 = v5;
  v130 = (v5 + v47[7]);
  if (qword_1EDDFD318 != -1)
  {
    sub_1C43FE394();
  }

  v51 = type metadata accessor for Source();
  sub_1C442B738(v51, qword_1EDDFD320);
  sub_1C441AD48();
  sub_1C4498D84(v52, v130, v53);
  *(v5 + v47[8]) = 0;
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v54 = sub_1C4F00978();
  v55 = sub_1C442B738(v54, qword_1EDE2DE10);
  v56 = *(v31 + 16);
  v108 = v31 + 16;
  v107 = v56;
  v56(v37, v5 + v50, v28);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v106 = v55;
  v57 = sub_1C4F00968();
  v58 = sub_1C4F01CB8();

  v59 = os_log_type_enabled(v57, v58);
  v60 = v2;
  v128 = v50;
  v129 = v28;
  v117 = v31;
  if (v59)
  {
    v61 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v131 = v105;
    *v61 = 136381187;
    v62 = v127;
    *(v61 + 4) = sub_1C441D828(v127, v60, &v131);
    *(v61 + 12) = 2080;
    sub_1C4412AF4();
    sub_1C4498F00(v63, v64);
    v65 = sub_1C4F02858();
    v66 = v28;
    v68 = v67;
    v69 = *(v31 + 8);
    v69(v37, v66);
    v70 = sub_1C441D828(v65, v68, &v131);

    *(v61 + 14) = v70;
    *(v61 + 22) = 1024;
    *(v61 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v57, v58, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v61, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v69 = *(v31 + 8);
    v69(v37, v28);
    v62 = v127;
  }

  v72 = *v130;
  v71 = v130[1];
  v131 = v62;
  v132 = v60;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v72, v71);

  v73 = v131;
  v74 = v132;
  v75 = v124;
  sub_1C4F01178();
  sub_1C4F01148();
  v77 = v76;
  (*(v125 + 8))(v75, v126);
  if (v77 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v78 = sub_1C4F00968();
    v79 = sub_1C4F01CD8();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v131 = v81;
      *v80 = 136380675;
      v82 = sub_1C441D828(v73, v74, &v131);

      *(v80 + 4) = v82;
      _os_log_impl(&dword_1C43F8000, v78, v79, "Source: failed to encode identifier as UTF8 data: %{private}s", v80, 0xCu);
      sub_1C440962C(v81);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v101 = v129;
    sub_1C45CF650();
    swift_allocError();
    *v102 = 5;
    swift_willThrow();
    sub_1C486D3F8(v133 + v111);
    v69((v133 + v128), v101);
    sub_1C43FFA98();
    sub_1C449AA40(v130, v103);
  }

  else
  {

    sub_1C4498F00(&qword_1EDDFEAD0, MEMORY[0x1E6966620]);
    v83 = v116;
    v84 = v121;
    sub_1C4F00DB8();
    v85 = sub_1C4409D98();
    sub_1C44344B8(v85, v86);
    v87 = sub_1C4409D98();
    v88 = v119;
    sub_1C4498FD8(v87, v89);
    v130 = v88;
    v90 = sub_1C4409D98();
    sub_1C441DFEC(v90, v91);
    v92 = v118;
    sub_1C4F00DA8();
    (*(v120 + 8))(v83, v84);
    v107(v112, v133 + v128, v129);
    v94 = v122;
    v93 = v123;
    (*(v122 + 16))(v115, v92, v123);
    v95 = v110;
    sub_1C4EFF028();
    v96 = sub_1C4409D98();
    sub_1C441DFEC(v96, v97);
    (*(v94 + 8))(v92, v93);
    v98 = v114;
    v99 = *(v113 + 32);
    v100 = v109;
    v99(v109, v95, v114);
    v99(v133, v100, v98);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4498D84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4498DE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C4EF9CD8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4498E28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4498E70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4498EB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4498F00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4498F48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4498F90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4498FD8(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v6;
LABEL_7:
      result = sub_1C4499084(a1, v4);
      if (v2)
      {
LABEL_8:

        __break(1u);
LABEL_9:
        __break(1u);
        JUMPOUT(0x1C4499074);
      }

      return result;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
      goto LABEL_7;
    default:
      result = sub_1C4C8BED0();
      if (!v2)
      {
        return result;
      }

      goto LABEL_8;
  }
}

uint64_t sub_1C4499084(uint64_t a1, uint64_t a2)
{
  result = sub_1C4EF9538();
  if (!result || (result = sub_1C4EF9568(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C4EF9558();
      sub_1C4F00DD8();
      sub_1C441A948();
      sub_1C4C8C218(v5, 255, v6);
      return sub_1C4F00D98();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C449916C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C4EFF0C8();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = sub_1C4EFD548();
      v16 = sub_1C43FCF8C(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = type metadata accessor for Source();
        v19 = sub_1C43FCF8C(v18);
        if (*(v20 + 84) != a2)
        {
          return sub_1C4405628(*(a1 + a3[8]));
        }

        v9 = v19;
        v14 = a3[7];
      }
    }

    v10 = a1 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

uint64_t sub_1C44992D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1C4499338(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1C44993A4()
{
  result = qword_1EDDFCDC8;
  if (!qword_1EDDFCDC8)
  {
    sub_1C4572308(&qword_1EC0C0F30, &qword_1C4F41A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCDC8);
  }

  return result;
}

uint64_t sub_1C4499584()
{

  return type metadata accessor for PhaseStores();
}

double sub_1C449959C()
{
  result = *v1;
  *v0;
  return result;
}

uint64_t sub_1C4499634(uint64_t a1, uint64_t a2)
{
  v6[0] = a1;
  v6[1] = a2;
  sub_1C4415EA8();
  v2 = sub_1C4F01FC8();
  if (v2[2])
  {
    v3 = v2[4];
    v4 = v2[5];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C44869B4(v6, v3, v4);
  }
}

uint64_t sub_1C44996E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE40, &qword_1C4F32288);
  result = sub_1C4F021D8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1C4501018(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_1C4F02AF8();
    sub_1C4F01298();
    result = sub_1C4F02B68();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1C4499940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C43FEAC8();
  a21 = v26;
  a22 = v27;
  v29 = sub_1C445FCE0(v28);
  MEMORY[0x1C69407C0](v29, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  sub_1C442AB00();
  while (1)
  {
    if (v24 == v23)
    {

      sub_1C441E1E0();
      return;
    }

    if (v23 >= *(v22 + 16))
    {
      break;
    }

    ++v23;
    v31 = *(v25 - 1);
    v30 = *v25;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44869B4(&a10, v31, v30);

    v25 += 2;
  }

  __break(1u);
}

void sub_1C44999E0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v18 = a2;
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v6 = *(a1 + 32);
  sub_1C43FD030();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  if ((v8 & v7) != 0)
  {
    do
    {
      v12 = v3;
LABEL_7:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
      v15 = *v14;
      v16 = v14[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44869B4(v17, v15, v16);
    }

    while (v9);
  }

  while (1)
  {
    v12 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return;
    }

    v9 = *(v5 + 8 * v12);
    ++v3;
    if (v9)
    {
      v3 = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
}

BOOL sub_1C4499AD0(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  v6 = a3[5];
  sub_1C4F02AF8();
  sub_1C4F01298();
  sub_1C4F02B68();
  sub_1C440CAC8();
  v9 = ~v8;
  do
  {
    v10 = v7 & v9;
    v11 = (1 << (v7 & v9)) & *(a3 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v12 = v11 != 0;
    if (!v11)
    {
      break;
    }

    v13 = (a3[6] + 16 * v10);
    if (*v13 == a1 && v13[1] == a2)
    {
      break;
    }

    v15 = sub_1C4851C38();
    v7 = v10 + 1;
  }

  while ((v15 & 1) == 0);
  return v12;
}

uint64_t sub_1C4499BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v67 = a4;
  v68 = a1;
  v63 = a2;
  v64 = a3;
  v6 = sub_1C4F00978();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4EFEEF8();
  v66 = *(v9 - 8);
  v10 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&qword_1EC0BD1A8, &unk_1C4F4F460);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v58 - v17;
  v19 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v58 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v65 = &v58 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v58 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v58 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v58 - v31;
  v33 = v67;
  v67 = a5;
  sub_1C449217C(v33, a5);
  sub_1C4460108(v68, v32, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C4EFE3A8();
  sub_1C440BAA8(v30, 0, 1, v9);
  v68 = v12;
  v34 = *(v12 + 48);
  sub_1C4460108(v30, v18, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C4460108(v32, &v18[v34], &qword_1EC0B9A08, &unk_1C4F107B0);
  if (sub_1C44157D4(v18, 1, v9) == 1)
  {
    sub_1C4420C3C(v30, &qword_1EC0B9A08, &unk_1C4F107B0);
    if (sub_1C44157D4(&v18[v34], 1, v9) == 1)
    {
      sub_1C4420C3C(v18, &qword_1EC0B9A08, &unk_1C4F107B0);
LABEL_17:
      sub_1C4420C3C(v32, &qword_1EC0B9A08, &unk_1C4F107B0);
      v47 = v67;
      goto LABEL_18;
    }

    goto LABEL_6;
  }

  sub_1C4460108(v18, v27, &qword_1EC0B9A08, &unk_1C4F107B0);
  if (sub_1C44157D4(&v18[v34], 1, v9) == 1)
  {
    sub_1C4420C3C(v30, &qword_1EC0B9A08, &unk_1C4F107B0);
    (*(v66 + 8))(v27, v9);
LABEL_6:
    sub_1C4420C3C(v18, &qword_1EC0BD1A8, &unk_1C4F4F460);
    v35 = v65;
    goto LABEL_7;
  }

  v43 = v66;
  v44 = v62;
  (*(v66 + 32))(v62, &v18[v34], v9);
  sub_1C4497370(&qword_1EDDFCCB0, MEMORY[0x1E69A9748]);
  v45 = sub_1C4F010B8();
  v46 = *(v43 + 8);
  v46(v44, v9);
  sub_1C4420C3C(v30, &qword_1EC0B9A08, &unk_1C4F107B0);
  v46(v27, v9);
  sub_1C4420C3C(v18, &qword_1EC0B9A08, &unk_1C4F107B0);
  v35 = v65;
  if (v45)
  {
    goto LABEL_17;
  }

LABEL_7:
  sub_1C4EFEBF8();
  sub_1C440BAA8(v35, 0, 1, v9);
  v36 = *(v68 + 48);
  sub_1C4460108(v35, v16, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C44CDA30(v32, &v16[v36], &qword_1EC0B9A08, &unk_1C4F107B0);
  if (sub_1C44157D4(v16, 1, v9) == 1)
  {
    sub_1C4420C3C(v35, &qword_1EC0B9A08, &unk_1C4F107B0);
    if (sub_1C44157D4(&v16[v36], 1, v9) == 1)
    {
      v32 = v16;
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v37 = v58;
  sub_1C4460108(v16, v58, &qword_1EC0B9A08, &unk_1C4F107B0);
  if (sub_1C44157D4(&v16[v36], 1, v9) == 1)
  {
    sub_1C4420C3C(v35, &qword_1EC0B9A08, &unk_1C4F107B0);
    (*(v66 + 8))(v37, v9);
LABEL_12:
    sub_1C4420C3C(v16, &qword_1EC0BD1A8, &unk_1C4F4F460);
    goto LABEL_13;
  }

  v54 = v66;
  v55 = v62;
  (*(v66 + 32))(v62, &v16[v36], v9);
  sub_1C4497370(&qword_1EDDFCCB0, MEMORY[0x1E69A9748]);
  v56 = sub_1C4F010B8();
  v57 = *(v54 + 8);
  v57(v55, v9);
  sub_1C4420C3C(v35, &qword_1EC0B9A08, &unk_1C4F107B0);
  v57(v37, v9);
  sub_1C4420C3C(v16, &qword_1EC0B9A08, &unk_1C4F107B0);
  v47 = v67;
  if (v56)
  {
LABEL_18:
    v48 = *(type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType(0) + 40);
    v49 = *(v47 + v48);
    if (v49)
    {
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      *(inited + 32) = v63;
      *(inited + 40) = v64;
      v69 = v49;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C449ADBC(inited);
      v51 = v69;

      *(v47 + v48) = v51;
    }

    else
    {
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1C4F0D130;
      v53 = v64;
      *(v52 + 32) = v63;
      *(v52 + 40) = v53;
      *(v47 + v48) = v52;
      return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    return result;
  }

LABEL_13:
  v38 = v59;
  sub_1C4F00158();
  v39 = sub_1C4F00968();
  v40 = sub_1C4F01CB8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1C43F8000, v39, v40, "Found triple, but not mapping during source ingestion.", v41, 2u);
    MEMORY[0x1C6942830](v41, -1, -1);
  }

  return (*(v60 + 8))(v38, v61);
}

uint64_t sub_1C449A410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C449A474(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  if (a3)
  {
    sub_1C441172C();
    if (v12 != v13)
    {
      sub_1C442B904();
      if (v12)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    a7(a4 + v17, v14, v15 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

size_t sub_1C449A5A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C43FF2B4(a1, a2, a3, a4);
  v7 = a5(0);
  sub_1C43FCF7C(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v9)
  {
    if (result - v11 != 0x8000000000000000 || v9 != -1)
    {
      sub_1C43FDA58((result - v11) / v9);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C449A6B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C449A70C()
{
  v1 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v36 - v5;
  v7 = type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v36 - v13;
  v15 = *(type metadata accessor for RelationshipStructs.LivingBeingRelationship(0) + 32);
  result = *(v0 + v15);
  if (result)
  {
    v17 = *(result + 16);
    if (v17)
    {
      v37 = v15;
      v38 = v0;
      v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v36[1] = result;
      v19 = result + v18;
      v20 = *(v8 + 72);
      v21 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C4498D84(v19, v14, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
        sub_1C4EFE7A8();
        v22 = sub_1C4EFEEF8();
        sub_1C440BAA8(v6, 0, 1, v22);
        sub_1C449A970(v6, v14);
        sub_1C4498D84(v14, v12, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1C4405674();
          sub_1C449A568(v26, v27, v28, v29);
          v21 = v30;
        }

        v24 = *(v21 + 16);
        v23 = *(v21 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1C43FCFE8(v23);
          sub_1C442BC40();
          sub_1C449A568(v31, v32, v33, v34);
          v21 = v35;
        }

        *(v21 + 16) = v24 + 1;
        sub_1C449A9E0(v12, v21 + v18 + v24 * v20, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
        sub_1C442DC14();
        sub_1C449AA40(v14, v25);
        v19 += v20;
        --v17;
      }

      while (v17);

      v15 = v37;
      v0 = v38;
    }

    else
    {

      v21 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + v15) = v21;
  }

  return result;
}

uint64_t sub_1C449A970(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C449A9E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C449AA40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1C449AA98()
{
  sub_1C442F0C4();
  v2 = v0;
  v6 = sub_1C4416E4C(v3, v4, v5);
  sub_1C442C5D8(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C443DF54();
  sub_1C456902C(&qword_1EC0BA988, &unk_1C4F14850);
  sub_1C43FD314();
  v9 = sub_1C4F02458();
  if (v9)
  {
    v13 = *v0;
    v14 = sub_1C4405814();
    sub_1C445FAA8(v14, v15);
    sub_1C4410A40();
    if (!v16)
    {
      goto LABEL_11;
    }
  }

  if (v1)
  {
    v17 = sub_1C4413ECC(v9, v10, v11, v12, *v2);
    v18 = type metadata accessor for RelationshipStructs.LivingBeingRelationship(v17);
    sub_1C43FBD18(v18);
    v20 = *(v19 + 72);
    sub_1C443E2D8();
    sub_1C4422220();
  }

  else
  {
    sub_1C441C874();
    sub_1C449AB94(v21, v22, v23, v24, v25);
    sub_1C4422220();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C449ABC0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  sub_1C440647C(a1, a2, a3, a4, a5);
  v12 = *(v11 + 56);
  v14 = v13(0);
  sub_1C43FBD18(v14);
  sub_1C449AC40(a4, v12 + *(v15 + 72) * a1, a7);
  sub_1C4416CEC();
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v16;
  }
}

uint64_t sub_1C449AC40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FCE50(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C449AC9C()
{
  v1 = sub_1C43FECE0();
  v3 = v2(v1);
  sub_1C43FBCE0(v3);
  v5 = *(v4 + 40);
  v6 = sub_1C43FBC98();
  v7(v6);
  return v0;
}

uint64_t sub_1C449ACF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1C4422A04();
  if (v8 && (v9 = (a4)(0), result = sub_1C43FBCE0(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      sub_1C43FBE50();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    sub_1C43FBE50();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

void sub_1C449ADBC(uint64_t a1)
{
  v4 = sub_1C4405E94(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C449AE50(v4, 1);
  sub_1C444345C();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C4416278();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C44D3DF4();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C445AC08();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C449AEA0()
{
  *(v1 - 144) = *(v0 + 72);
  v2 = *(v1 - 360);
  v3 = *(v1 - 104);
}

uint64_t sub_1C449AECC()
{
  v2 = *(v0 - 856);
  v3 = *(v0 - 864);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C449AEEC(uint64_t result)
{
  *(result + *(v1 + 28)) = 1056964608;
  v2 = *(v1 + 32);
  return result;
}

uint64_t sub_1C449AF00()
{
  v2 = *(v0 - 560);

  return swift_arrayDestroy();
}

__n128 *sub_1C449AF48(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1701667182;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_1C449AF60()
{
  v4 = v2 + *(v0 + 24);

  return sub_1C448D19C(v1, v4);
}

uint64_t sub_1C449AFC8(uint64_t a1)
{
  v2 = type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType(0);
  v103 = *(v2 - 8);
  v3 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v94 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for RelationshipStructs.LivingBeingRelationship(0);
  v99 = *(v102 - 8);
  v5 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v98 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&qword_1EC0C3098, &qword_1C4F4F438);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v91 - v12);
  v14 = *(a1 + 64);
  v105 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v104 = (v15 + 63) >> 6;
  v101 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v18 = 0;
  v95 = MEMORY[0x1E69E7CC8];
  v106 = v2;
  v107 = v13;
  v100 = v11;
LABEL_4:
  v20 = v104;
  v19 = v105;
  if (!v17)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v21 = v18;
LABEL_10:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = v22 | (v21 << 6);
    v24 = (*(v101 + 48) + 16 * v23);
    v26 = *v24;
    v25 = v24[1];
    v27 = v98;
    sub_1C449217C(*(v101 + 56) + *(v99 + 72) * v23, v98);
    v28 = sub_1C456902C(&qword_1EC0C30A0, &unk_1C4F4F440);
    v29 = *(v28 + 48);
    v30 = v100;
    *v100 = v26;
    *(v30 + 1) = v25;
    v31 = v27;
    v11 = v30;
    sub_1C449A6B4(v31, &v30[v29]);
    sub_1C440BAA8(v11, 0, 1, v28);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v2 = v106;
    v13 = v107;
LABEL_11:
    sub_1C44CDA30(v11, v13, &qword_1EC0C3098, &qword_1C4F4F438);
    v32 = sub_1C456902C(&qword_1EC0C30A0, &unk_1C4F4F440);
    if (sub_1C44157D4(v13, 1, v32) == 1)
    {

      return v95;
    }

    v33 = *v13;
    v34 = v13[1];
    v35 = v13 + *(v32 + 48);
    v36 = *(v35 + *(v102 + 32));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44992D8(v35, type metadata accessor for RelationshipStructs.LivingBeingRelationship);
    v37 = v36 ? v36 : MEMORY[0x1E69E7CC0];
    v38 = *(v37 + 16);
    if (v38)
    {
      break;
    }

    v13 = v107;
    v20 = v104;
    v19 = v105;
    if (!v17)
    {
LABEL_6:
      while (1)
      {
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v21 >= v20)
        {
          v39 = sub_1C456902C(&qword_1EC0C30A0, &unk_1C4F4F440);
          sub_1C440BAA8(v11, 1, 1, v39);
          v17 = 0;
          goto LABEL_11;
        }

        v17 = *(v19 + 8 * v21);
        ++v18;
        if (v17)
        {
          v18 = v21;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_65;
    }
  }

  v96 = v33;
  v97 = v34;
  v40 = 0;
  v41 = v37 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
  v43 = v94;
  v42 = v95;
  v93 = v41;
  while (v40 < *(v37 + 16))
  {
    sub_1C449217C(v41 + *(v103 + 72) * v40, v43);
    v44 = (v43 + *(v2 + 32));
    v45 = v44[1];
    if (v45 && (*v44 == 0x6361746E6F434E43 ? (v46 = v45 == 0xE900000000000074) : (v46 = 0), v46 || (sub_1C4F02938() & 1) != 0) || (v47 = *(v2 + 40), !*(v43 + v47)))
    {
      sub_1C44992D8(v43, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
    }

    else
    {
      v48 = v42[2];
      v95 = *(v43 + v47);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v49 = v96;
      v50 = v97;
      if (v48 && (v51 = sub_1C445FAA8(v96, v97), (v52 & 1) != 0))
      {
        v53 = *(v42[7] + 8 * v51);
        v54 = v95[2];
        v55 = *(v53 + 16);
        if (__OFADD__(v55, v54))
        {
          goto LABEL_68;
        }

        v56 = v53;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v56;
        if (!isUniquelyReferenced_nonNull_native || v55 + v54 > *(v56 + 24) >> 1)
        {
          sub_1C443D664();
          v58 = v59;
        }

        v60 = v95[2];
        v61 = v97;
        v92 = v58;
        if (v60)
        {
          if ((*(v58 + 24) >> 1) - *(v58 + 16) < v54)
          {
            goto LABEL_71;
          }

          swift_arrayInitWithCopy();

          if (v54)
          {
            v62 = *(v92 + 16);
            v63 = __OFADD__(v62, v54);
            v64 = v62 + v54;
            if (v63)
            {
              goto LABEL_73;
            }

            *(v92 + 16) = v64;
          }
        }

        else
        {

          if (v54)
          {
            goto LABEL_69;
          }
        }

        swift_isUniquelyReferenced_nonNull_native();
        v108 = v42;
        v77 = sub_1C445FAA8(v96, v61);
        if (__OFADD__(v42[2], (v78 & 1) == 0))
        {
          goto LABEL_70;
        }

        v79 = v77;
        v80 = v78;
        sub_1C456902C(&qword_1EC0BDDB8, &unk_1C4F32060);
        if (sub_1C4F02458())
        {
          v81 = sub_1C445FAA8(v96, v97);
          v41 = v93;
          v43 = v94;
          if ((v80 & 1) != (v82 & 1))
          {
            goto LABEL_74;
          }

          v79 = v81;
        }

        else
        {
          v41 = v93;
          v43 = v94;
        }

        v83 = v92;
        v42 = v108;
        if (v80)
        {
          v84 = v108[7];
          v85 = *(v84 + 8 * v79);
          *(v84 + 8 * v79) = v92;

          sub_1C44992D8(v43, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
        }

        else
        {
          v108[(v79 >> 6) + 8] |= 1 << v79;
          v86 = (v42[6] + 16 * v79);
          v87 = v97;
          *v86 = v96;
          v86[1] = v87;
          *(v42[7] + 8 * v79) = v83;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44992D8(v43, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
          v88 = v42[2];
          v63 = __OFADD__(v88, 1);
          v89 = v88 + 1;
          if (v63)
          {
            goto LABEL_72;
          }

          v42[2] = v89;
        }

        v2 = v106;
      }

      else
      {
        swift_isUniquelyReferenced_nonNull_native();
        v108 = v42;
        v65 = sub_1C445FAA8(v49, v50);
        if (__OFADD__(v42[2], (v66 & 1) == 0))
        {
          goto LABEL_66;
        }

        v67 = v65;
        v68 = v66;
        sub_1C456902C(&qword_1EC0BDDB8, &unk_1C4F32060);
        if (sub_1C4F02458())
        {
          v69 = sub_1C445FAA8(v96, v97);
          v2 = v106;
          v43 = v94;
          if ((v68 & 1) != (v70 & 1))
          {
            goto LABEL_74;
          }

          v67 = v69;
        }

        else
        {
          v2 = v106;
          v43 = v94;
        }

        v42 = v108;
        if (v68)
        {
          v71 = v108[7];
          v72 = *(v71 + 8 * v67);
          *(v71 + 8 * v67) = v95;

          sub_1C44992D8(v43, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
        }

        else
        {
          v108[(v67 >> 6) + 8] |= 1 << v67;
          v73 = (v42[6] + 16 * v67);
          v74 = v97;
          *v73 = v96;
          v73[1] = v74;
          *(v42[7] + 8 * v67) = v95;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44992D8(v43, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
          v75 = v42[2];
          v63 = __OFADD__(v75, 1);
          v76 = v75 + 1;
          if (v63)
          {
            goto LABEL_67;
          }

          v42[2] = v76;
        }

        v41 = v93;
      }
    }

    if (v38 == ++v40)
    {
      v95 = v42;

      v11 = v100;
      v13 = v107;
      goto LABEL_4;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C449B8C0(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t))
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = a3(v20, v8 + 32, v5, a1);
  v17 = sub_1C44323B4(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20[0]);
  a4(v17);
  if (v9 != v5)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1C449B968()
{
  sub_1C4408C40();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C43FF2B4(v1, v2, v3, v4);
  v5 = sub_1C442E04C();
  sub_1C4411F38(v5);
  sub_1C43FDA58(v6 / 24);
  return v0;
}

void sub_1C449B9D0()
{
  sub_1C44158A0();
  v1 = v0;
  v3 = v0 + 64;
  v2 = *(v0 + 64);
  v4 = *(v0 + 32);
  sub_1C440F35C();
  v9 = v8 & v7;
  if (!v5)
  {
    sub_1C4414154();
LABEL_17:
    sub_1C440EF50(v12);
    sub_1C4410198();
    return;
  }

  v10 = v6;
  if (!v6)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = v5;
    sub_1C443315C();
    v16 = (v14 - v15) >> 6;
    while (v13 < v10)
    {
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v9)
      {
        while (1)
        {
          v18 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v18 >= v16)
          {
            goto LABEL_17;
          }

          v9 = *(v3 + 8 * v18);
          ++v12;
          if (v9)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v18 = v12;
LABEL_12:
      v19 = __clz(__rbit64(v9)) | (v18 << 6);
      v20 = (*(v1 + 48) + 16 * v19);
      v21 = v20[1];
      v22 = *(*(v1 + 56) + 8 * v19);
      v9 &= v9 - 1;
      *v11 = *v20;
      v11[1] = v21;
      v11[2] = v22;
      if (v17 == v10)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v12 = v18;
        goto LABEL_17;
      }

      v11 += 3;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v13 = v17;
      v12 = v18;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C449BB14(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);
  v12[2] = a1;

  sub_1C4418704(a2, v12, v5, v6, v7, v8, v9, v10, v12[0], v12[1]);
}

uint64_t sub_1C449BBBC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v16 = OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder;
  v4 = (a2 + 48);
  for (i = *(a2 + 16) + 1; ; i = v18)
  {
    v6 = i - 1;
    if (!v6)
    {
      break;
    }

    v18 = v6;
    v7 = *(v4 - 2);
    v8 = *(v4 - 1);
    v9 = *v4;
    v10 = *(a3 + v16);
    sub_1C456902C(&qword_1EC0B8BD0, &unk_1C4F0E000);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C4F0D130;
    *(v11 + 32) = v9;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_bridgeObjectRetain_n();
    sub_1C456902C(&qword_1EC0B9478, &qword_1C4F0F010);
    sub_1C449BDB8();
    v12 = sub_1C4EF96D8();
    if (v3)
    {
    }

    v14 = v12;
    v15 = v13;
    v4 += 3;

    v19 = *(a3 + 16);
    v20 = *(a3 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44344B8(v14, v15);
    sub_1C446C4A0();
    sub_1C4EFB6C8();

    sub_1C4434000(v14, v15);
    sub_1C4434000(v14, v15);
  }

  return result;
}

unint64_t sub_1C449BDB8()
{
  result = qword_1EDDDBC10;
  if (!qword_1EDDDBC10)
  {
    sub_1C4572308(&qword_1EC0B9478, &qword_1C4F0F010);
    sub_1C449C8D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBC10);
  }

  return result;
}

uint64_t sub_1C449BE3C(uint64_t a1)
{
  v63 = type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType(0);
  v71 = *(v63 - 8);
  v2 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v70 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RelationshipStructs.LivingBeingRelationship(0);
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0C3098, &qword_1C4F4F438);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v62 - v13);
  v15 = *(a1 + 64);
  v74 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v78 = v17 & v15;
  v73 = (v16 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v18 = 0;
  v19 = MEMORY[0x1E69E7CC8];
  v79 = v12;
  v83 = v14;
  v76 = v4;
LABEL_4:
  v21 = v73;
  v20 = v74;
  while (1)
  {
    v22 = v78;
    if (!v78)
    {
      break;
    }

    v77 = v18;
    v23 = v18;
LABEL_11:
    v78 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v23 << 6);
    v25 = (*(a1 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    sub_1C449217C(*(a1 + 56) + *(v72 + 72) * v24, v7);
    v28 = sub_1C456902C(&qword_1EC0C30A0, &unk_1C4F4F440);
    v29 = *(v28 + 48);
    v12 = v79;
    *v79 = v26;
    *(v12 + 1) = v27;
    sub_1C449A6B4(v7, &v12[v29]);
    sub_1C440BAA8(v12, 0, 1, v28);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = v83;
    v4 = v76;
LABEL_12:
    sub_1C44CDA30(v12, v14, &qword_1EC0C3098, &qword_1C4F4F438);
    v30 = sub_1C456902C(&qword_1EC0C30A0, &unk_1C4F4F440);
    if (sub_1C44157D4(v14, 1, v30) == 1)
    {

      return v19;
    }

    v31 = *v14;
    v32 = v14[1];
    v33 = v14 + *(v30 + 48);
    v34 = *(v33 + *(v4 + 32));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44992D8(v33, type metadata accessor for RelationshipStructs.LivingBeingRelationship);
    if (!v34)
    {
      v34 = MEMORY[0x1E69E7CC0];
    }

    v35 = *(v34 + 16);
    if (v35)
    {
      v37 = 0;
      v38 = *(v63 + 40);
      v68 = v34 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
      v69 = v38;
      v66 = v7;
      v67 = a1;
      v80 = v31;
      v64 = v35;
      v65 = v34;
      while (v37 < *(v34 + 16))
      {
        v39 = a1;
        v40 = v70;
        v41 = *(v71 + 72);
        v75 = v37;
        sub_1C449217C(v68 + v41 * v37, v70);
        v42 = *(v40 + v69);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44992D8(v40, type metadata accessor for RelationshipStructs.LocalizedNameRelationshipType);
        if (v42)
        {
          v82 = *(v42 + 16);
          if (v82)
          {
            v43 = 0;
            v44 = (v42 + 40);
            v81 = v42;
            while (v43 < *(v42 + 16))
            {
              v45 = *(v44 - 1);
              v46 = *v44;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v47 = v32;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              swift_isUniquelyReferenced_nonNull_native();
              v84 = v19;
              v48 = sub_1C445FAA8(v45, v46);
              if (__OFADD__(v19[2], (v49 & 1) == 0))
              {
                goto LABEL_39;
              }

              v50 = v48;
              v51 = v49;
              sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
              if (sub_1C4F02458())
              {
                v52 = sub_1C445FAA8(v45, v46);
                if ((v51 & 1) != (v53 & 1))
                {
                  goto LABEL_43;
                }

                v50 = v52;
              }

              if (v51)
              {

                v19 = v84;
                v54 = (v84[7] + 16 * v50);
                v55 = v54[1];
                *v54 = v80;
                v54[1] = v47;
                v32 = v47;
              }

              else
              {
                v19 = v84;
                v84[(v50 >> 6) + 8] |= 1 << v50;
                v56 = (v19[6] + 16 * v50);
                *v56 = v45;
                v56[1] = v46;
                v57 = (v19[7] + 16 * v50);
                *v57 = v80;
                v57[1] = v47;
                v58 = v19[2];
                v59 = __OFADD__(v58, 1);
                v60 = v58 + 1;
                if (v59)
                {
                  goto LABEL_41;
                }

                v32 = v47;
                v19[2] = v60;
              }

              ++v43;
              v44 += 2;
              v14 = v83;
              v42 = v81;
              if (v82 == v43)
              {
                goto LABEL_33;
              }
            }

            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_33:

          v7 = v66;
          a1 = v67;
          v4 = v76;
          v35 = v64;
          v34 = v65;
        }

        else
        {
          a1 = v39;
          v4 = v76;
        }

        v37 = v75 + 1;
        v12 = v79;
        if (v75 + 1 == v35)
        {

          v18 = v77;
          goto LABEL_4;
        }
      }

      goto LABEL_42;
    }

    v12 = v79;
    v21 = v73;
    v20 = v74;
    v18 = v77;
  }

  while (1)
  {
    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v23 >= v21)
    {
      v77 = v18;
      v36 = sub_1C456902C(&qword_1EC0C30A0, &unk_1C4F4F440);
      sub_1C440BAA8(v12, 1, 1, v36);
      v78 = 0;
      goto LABEL_12;
    }

    v22 = *(v20 + 8 * v23);
    ++v18;
    if (v22)
    {
      v77 = v23;
      goto LABEL_11;
    }
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C449C508()
{
  sub_1C4408C40();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C456902C(&qword_1EC0C0378, &qword_1C4F3E718);
  v1 = sub_1C44182F4();
  sub_1C4411F38(v1);
  sub_1C43FDA58(v2 / 32);
  return v0;
}

void sub_1C449C56C()
{
  sub_1C44158A0();
  v1 = v0;
  v3 = v0 + 64;
  v2 = *(v0 + 64);
  v4 = *(v0 + 32);
  sub_1C440F35C();
  v9 = v8 & v7;
  if (!v5)
  {
    sub_1C4414154();
LABEL_17:
    sub_1C440EF50(v12);
    sub_1C4410198();
    return;
  }

  v10 = v6;
  if (!v6)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = v5;
    sub_1C443315C();
    v16 = (v14 - v15) >> 6;
    while (v13 < v10)
    {
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v9)
      {
        while (1)
        {
          v18 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v18 >= v16)
          {
            goto LABEL_17;
          }

          v9 = *(v3 + 8 * v18);
          ++v12;
          if (v9)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v18 = v12;
LABEL_12:
      v19 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v20 = (v18 << 10) | (16 * v19);
      v21 = (*(v1 + 48) + v20);
      v23 = *v21;
      v22 = v21[1];
      v24 = (*(v1 + 56) + v20);
      v25 = *v24;
      v26 = v24[1];
      *v11 = v23;
      v11[1] = v22;
      v11[2] = v25;
      v11[3] = v26;
      if (v17 == v10)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v12 = v18;
        goto LABEL_17;
      }

      v11 += 4;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v13 = v17;
      v12 = v18;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C449C6D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v17 = OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder;
  v4 = (a2 + 56);
  for (i = *(a2 + 16) + 1; ; i = v19)
  {
    v6 = i - 1;
    if (!v6)
    {
      break;
    }

    v19 = v6;
    v7 = *(v4 - 3);
    v8 = *(v4 - 2);
    v9 = *(v4 - 1);
    v10 = *v4;
    v11 = *(a3 + v17);
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C4F0D130;
    *(v12 + 32) = v9;
    *(v12 + 40) = v10;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_bridgeObjectRetain_n();
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C449C8D4();
    v13 = sub_1C4EF96D8();
    if (v3)
    {
    }

    v15 = v13;
    v16 = v14;
    v4 += 4;

    v20 = *(a3 + 16);
    v21 = *(a3 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44344B8(v15, v16);
    sub_1C446C4A0();
    sub_1C4EFB6C8();

    sub_1C4434000(v15, v16);
    sub_1C4434000(v15, v16);
  }

  return result;
}

unint64_t sub_1C449C8D4()
{
  result = qword_1EDDFA578;
  if (!qword_1EDDFA578)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA578);
  }

  return result;
}

void sub_1C449C950()
{
  sub_1C43FBD3C();
  v7 = v1;
  v63 = v8;
  v9 = sub_1C43FECE0();
  v10 = type metadata accessor for ConstructionProgressTokens(v9);
  v62 = sub_1C43FCDF8(v10);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v13 = sub_1C4433190();
  v14 = type metadata accessor for ProgressTokens(v13);
  v15 = sub_1C43FCDF8(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4416DF8();
  v64 = type metadata accessor for RelationshipFullSourceIngestor();
  v18 = sub_1C43FBCE0(v64);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C441D15C();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v22 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v22);
    v1 = sub_1C4EF93C8();
    v2 = &unk_1EC0BA4A8;
    v23 = sub_1C4404C28();
    v7 = sub_1C456902C(v23, v24);
    sub_1C442C5A4();
    sub_1C4401CBC(v25, v26, &dword_1C4F141D0);
    sub_1C4414180();
    if (&unk_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v61);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v27 = sub_1C4F00978();
        sub_1C43FCEE8(v27, qword_1EDE2DE10);
        v28 = sub_1C44623A0();
        sub_1C4430900(v28, v6);
        v29 = sub_1C4F00968();
        v30 = sub_1C4F01CD8();
        v31 = sub_1C44016D0();
        if (os_log_type_enabled(v31, v32))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v33 = swift_slowAlloc();
          sub_1C44305A4(v33);
          *v14 = 136315138;
          v34 = sub_1C440CAF0();
          sub_1C4430900(v34, v35);
          sub_1C447E868(v6, type metadata accessor for RelationshipFullSourceIngestor);
          sub_1C447CD74();
          sub_1C4495B14();
          v36 = sub_1C440CAFC();
          sub_1C447E868(v36, type metadata accessor for RelationshipFullSourceIngestor);
          v37 = sub_1C447CB90();
          sub_1C441D828(v37, v4, v38);
          sub_1C44D44F0();
          *(v14 + 4) = v1;
          sub_1C4451274(&dword_1C43F8000, v39, v30, "%s failed to update progress token");
          sub_1C440962C(v5);
          v40 = sub_1C4416E14();
          MEMORY[0x1C6942830](v40);
          v41 = sub_1C44068C0();
          MEMORY[0x1C6942830](v41);
        }

        else
        {
          sub_1C447E868(v6, type metadata accessor for RelationshipFullSourceIngestor);
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v61);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C449D0AC(v42);
  v6 = v63;
  if (!v65[3])
  {
    sub_1C4420C3C(v65, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v63)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v43 = sub_1C4402D10();
  v44(v43);
  sub_1C4456268();
  if ((v63 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4482CCC();
  switch(v46)
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C();
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        v47 = *(v14 + 24);
        sub_1C441925C();
        sub_1C44806A4(v48);
        sub_1C4426A30(*(v14 + 20));
        *(v5 + v49) = v63 & 1;
        v50 = sub_1C44246D8();
        sub_1C4460A18(v50);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v51 = sub_1C4424F7C();
        sub_1C4412DCC(v51, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v52 = sub_1C43FFEF0();
      }

      else
      {
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C4428E54();
        sub_1C441925C();
        sub_1C4430900(v7, v3 + v54);
        v55 = sub_1C442AB20();
        sub_1C4460A18(v55);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v56 = sub_1C4405904();
        sub_1C44068A0(v56, xmmword_1C4F0D130);
        sub_1C4430900(v3, v57);
        v58 = sub_1C4415F88();
        sub_1C449498C(v58);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v52 = v3;
      }

      sub_1C447E868(v52, v53);
      v59 = sub_1C43FD2BC();
      sub_1C441DFEC(v59, v60);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

uint64_t ProgressToken.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v15 = a2[2];
  v4 = a2[4];
  type metadata accessor for ProgressToken.CodingKeys();
  sub_1C441A380();
  swift_getWitnessTable();
  v5 = sub_1C4F02808();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4F02BF8();
  sub_1C4F027E8();
  return (*(v8 + 8))(v12, v5);
}

_BYTE *sub_1C449CFC4(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1C449D060);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C449D088(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_1C449D098();
}

uint64_t sub_1C449D0AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RelationshipFullSourceIngestor();
  switch(*(v2 + *(v19 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = v2 + *(v19 + 20);
        v22 = *(v21 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDDEE68, type metadata accessor for RelationshipFullSourceIngestor);
        v23 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v23);
        sub_1C44FEF34(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v24 = &unk_1EC0BA4B8;
          v25 = &unk_1C4F16F60;
          v26 = v14;
LABEL_8:
          result = sub_1C4420C3C(v26, v24, v25);
          v32 = v37;
          *(v37 + 32) = 0;
          *v32 = 0u;
          v32[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v33 = v37;
        *(v37 + 24) = v15;
        v33[4] = &off_1F43EE918;
        v34 = sub_1C4422F90(v33);
        v35 = v18;
      }

      else
      {
        v27 = v10;
        v28 = v2 + *(v19 + 20);
        v29 = *(v28 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDDEE68, type metadata accessor for RelationshipFullSourceIngestor);
        v30 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v30);
        sub_1C449D50C(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v24 = &unk_1EC0BAC20;
          v25 = &unk_1C4F141E0;
          v26 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v27);
        v36 = v37;
        *(v37 + 24) = v7;
        v36[4] = &off_1F43EE970;
        v34 = sub_1C4422F90(v36);
        v35 = v27;
      }

      return sub_1C449F338(v35, v34);
  }
}

uint64_t sub_1C449D538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDE10D0, type metadata accessor for ConstructionProgressTokens);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

void ConstructionProgressTokens.init(from:)()
{
  sub_1C43FE96C();
  sub_1C445C188(v2);
  v3 = type metadata accessor for Source();
  v4 = sub_1C43FBCE0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  sub_1C44017FC();
  v7 = sub_1C4EFD548();
  v8 = sub_1C43FCDF8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v31 = sub_1C456902C(&qword_1EC0BE128, &qword_1C4F32658);
  sub_1C43FCDF8(v31);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD1B4();
  v30 = type metadata accessor for ConstructionProgressTokens(0);
  v16 = sub_1C43FBCE0(v30);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v32 = v19;
  v20 = v0[4];
  v33 = v0;
  sub_1C4417F50(v0, v0[3]);
  sub_1C4495034();
  sub_1C44807A0();
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    LOBYTE(v34) = 0;
    sub_1C44004E0();
    sub_1C4490F60(v21, v22);
    sub_1C443F630();
    sub_1C44414E0();
    sub_1C4F026C8();
    v23 = sub_1C43FE6D8();
    v24(v23);
    sub_1C449DBF8();
    sub_1C4429054();
    sub_1C44414E0();
    sub_1C4F026C8();
    sub_1C443DF60();
    sub_1C441FBB8();
    sub_1C4490F60(v25, v26);
    sub_1C443F630();
    sub_1C44414E0();
    sub_1C4F026C8();
    sub_1C44D3FBC();
    sub_1C444C16C();
    sub_1C4429054();
    sub_1C44414E0();
    sub_1C4F02658();
    *(v32 + v12[7]) = v34;
    sub_1C4433D1C(4);
    *(v32 + v12[8]) = sub_1C4F026B8();
    sub_1C4433D1C(5);
    sub_1C44414E0();
    v27 = sub_1C4F02688();
    v28 = sub_1C4415A30();
    v29(v28);
    *(v32 + v12[9]) = v27 & 1;
    sub_1C449EEE8();
    sub_1C440962C(v33);
    sub_1C43FBC98();
    sub_1C449F22C();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C449DA48()
{
}

uint64_t sub_1C449DA8C@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1C449DA9C()
{
  v2 = *(v0 - 96);

  return sub_1C4F010B8();
}

void sub_1C449DAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
}

uint64_t sub_1C449DAE4()
{
  v2 = *(v0 - 632);
  v3 = *(v0 - 648);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C449DB10()
{

  return sub_1C4A25FEC();
}

uint64_t sub_1C449DB28(uint64_t result)
{
  *(v2 - 264) = v1;
  *(v2 - 256) = result;
  *(v2 - 176) = result;
  return result;
}

uint64_t sub_1C449DB74()
{

  return swift_dynamicCast();
}

uint64_t sub_1C449DBB0@<X0>(uint64_t a1@<X8>)
{
  result = v1 + a1;
  v4 = *(v2 - 168);
  return result;
}

unint64_t sub_1C449DBF8()
{
  result = qword_1EDDF0740;
  if (!qword_1EDDF0740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0740);
  }

  return result;
}

void static StageName.fromDatabaseValue(_:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1C4EFB258();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C4F011F8();
  if (!v13)
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v19 = sub_1C4F00978();
    sub_1C442B738(v19, qword_1EDE2DE10);
    (*(v7 + 16))(v11, a1, v4);
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CD8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v43 = v23;
      *v22 = 136380675;
      sub_1C4B35A40();
      v24 = sub_1C4F02858();
      v26 = v25;
      (*(v7 + 8))(v11, v4);
      v27 = sub_1C441D828(v24, v26, &v43);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1C43F8000, v20, v21, "StageName: failed to initialize from database value: %{private}s", v22, 0xCu);
      sub_1C440962C(v23);
      MEMORY[0x1C6942830](v23, -1, -1);
      MEMORY[0x1C6942830](v22, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v4);
    }

    v18 = 11;
    goto LABEL_20;
  }

  v14 = v12;
  v15 = v13;
  v17 = v12 == sub_1C4432A10() && v16 == 0xE800000000000000;
  if (v17 || (sub_1C4420310() & 1) != 0)
  {

    v18 = 6;
LABEL_20:
    *a2 = v18;
    return;
  }

  sub_1C440D85C();
  v29 = v14 == sub_1C43FDE60() && v15 == v28;
  if (v29 || (sub_1C4420310() & 1) != 0)
  {

    v18 = 9;
    goto LABEL_20;
  }

  v31 = v14 == sub_1C44124F8() && v15 == v30;
  if (v31 || (sub_1C4420310() & 1) != 0)
  {

    v18 = 7;
    goto LABEL_20;
  }

  v32 = v14 == sub_1C44137B0() && v15 == 0xE700000000000000;
  if (v32 || (sub_1C4420310() & 1) != 0)
  {

    v18 = 8;
    goto LABEL_20;
  }

  sub_1C440FC14();
  v34 = v17 && v33 == v15;
  if (v34 || (sub_1C4420310() & 1) != 0)
  {

    v18 = 0;
    goto LABEL_20;
  }

  v35 = v14 == 0xD000000000000016 && 0x80000001C4FB2720 == v15;
  if (v35 || (sub_1C4420310() & 1) != 0)
  {

    v18 = 1;
    goto LABEL_20;
  }

  sub_1C440FC14();
  v37 = v17 && v36 == v15;
  if (v37 || (sub_1C4420310() & 1) != 0)
  {

    v18 = 2;
    goto LABEL_20;
  }

  sub_1C440FC14();
  v39 = v17 && v38 == v15;
  if (v39 || (sub_1C4420310() & 1) != 0)
  {

    v18 = 3;
    goto LABEL_20;
  }

  v40 = v14 == 0xD000000000000012 && 0x80000001C4FB2760 == v15;
  if (v40 || (sub_1C4420310() & 1) != 0)
  {

    v18 = 4;
    goto LABEL_20;
  }

  v41 = v14 == 0x2D676E696B6E696CLL && v15 == 0xEF6C6172656E6567;
  if (v41 || (sub_1C4420310() & 1) != 0)
  {

    v18 = 5;
    goto LABEL_20;
  }

  v42 = v14 == sub_1C440E7B4() && v15 == 0xE600000000000000;
  if (v42 || (sub_1C4420310() & 1) != 0)
  {

    v18 = 10;
    goto LABEL_20;
  }

  v43 = 0;
  v44 = 0xE000000000000000;
  sub_1C4F02248();

  v43 = 0x6D614E6567617453;
  v44 = 0xEB00000000203A65;
  MEMORY[0x1C6940010](v14, v15);
  MEMORY[0x1C6940010](0x74276E73656F6420, 0xEE00747369786520);
  sub_1C4F024A8();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for StageName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6)
  {
    v2 = a2 + 10;
    if (a2 + 10 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 10;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 10;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x1C449E248);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 10;
      default:
        break;
    }
  }

  v7 = *a1;
  if (v7 >= 6)
  {
    v8 = v7 - 5;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 6)
  {
    return v8 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t static Source.fromDatabaseValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C4EFB258();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4F01B88();
  if (v10)
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v11 = sub_1C4F00978();
    sub_1C442B738(v11, qword_1EDE2DE10);
    (*(v5 + 16))(v8, a1, v4);
    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CD8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136380675;
      sub_1C4490A14(&qword_1EC0C35A0, MEMORY[0x1E699FE40]);
      v16 = sub_1C4F02858();
      v18 = v17;
      (*(v5 + 8))(v8, v4);
      v19 = sub_1C441D828(v16, v18, &v23);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1C43F8000, v12, v13, "Source: failed to initialize from database value: %{private}s", v14, 0xCu);
      sub_1C440962C(v15);
      MEMORY[0x1C6942830](v15, -1, -1);
      MEMORY[0x1C6942830](v14, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v21 = type metadata accessor for Source();
    return sub_1C440BAA8(a2, 1, 1, v21);
  }

  else
  {

    return sub_1C449E530(v9, a2);
  }
}

uint64_t sub_1C449E530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Source();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  switch(a1)
  {
    case 1:
      if (qword_1EDDFED28 != -1)
      {
        swift_once();
      }

      v15 = &unk_1EDDFD088;
      goto LABEL_76;
    case 2:
      if (qword_1EDDFD0D0 != -1)
      {
        swift_once();
      }

      v15 = qword_1EDDFD0D8;
      goto LABEL_76;
    case 6:
      if (qword_1EDDFD0A8 != -1)
      {
        swift_once();
      }

      v15 = qword_1EDDFD0B0;
      goto LABEL_76;
    case 9:
      if (qword_1EDDFD150 != -1)
      {
        swift_once();
      }

      v15 = qword_1EDDFD158;
      goto LABEL_76;
    case 11:
      if (qword_1EDDFD068 != -1)
      {
        swift_once();
      }

      v15 = qword_1EDDFD070;
      goto LABEL_76;
    case 12:
      if (qword_1EDDFD110 != -1)
      {
        swift_once();
      }

      v15 = qword_1EDDFD118;
      goto LABEL_76;
    case 14:
      if (qword_1EDDFED38 != -1)
      {
        swift_once();
      }

      v15 = qword_1EDDFD0F0;
      goto LABEL_76;
    case 16:
      if (qword_1EDDFD2F0 != -1)
      {
        swift_once();
      }

      v15 = qword_1EDDFD2F8;
      goto LABEL_76;
    case 17:
      if (qword_1EDDFED08 != -1)
      {
        swift_once();
      }

      v15 = qword_1EDDFED10;
      goto LABEL_76;
    case 18:
      if (qword_1EDDFD040 != -1)
      {
        swift_once();
      }

      v15 = qword_1EDDFD048;
      goto LABEL_76;
    case 19:
      if (qword_1EDDFD268 != -1)
      {
        swift_once();
      }

      v15 = &qword_1EDDFD270;
      goto LABEL_76;
    case 21:
      if (qword_1EDDFD130 != -1)
      {
        swift_once();
      }

      v15 = qword_1EDDFD138;
      goto LABEL_76;
    case 22:
      if (qword_1EDDFD178 != -1)
      {
        swift_once();
      }

      v15 = &qword_1EDDFD180;
      goto LABEL_76;
    case 23:
      if (qword_1EDDFED40 != -1)
      {
        swift_once();
      }

      v15 = qword_1EDDFD2A8;
      goto LABEL_76;
    case 24:
      if (qword_1EDDFD218 != -1)
      {
        swift_once();
      }

      v15 = &qword_1EDDFD220;
      goto LABEL_76;
    case 25:
      if (qword_1EDDFD240 != -1)
      {
        swift_once();
      }

      v15 = &qword_1EDDFD248;
      goto LABEL_76;
    case 27:
      if (qword_1EDDFD318 != -1)
      {
        swift_once();
      }

      v15 = qword_1EDDFD320;
      goto LABEL_76;
    case 28:
      if (qword_1EDDFD340 != -1)
      {
        swift_once();
      }

      v15 = qword_1EDDFD348;
      goto LABEL_76;
    case 29:
      if (qword_1EDDFD2C8 != -1)
      {
        swift_once();
      }

      v15 = qword_1EDDFD2D0;
      goto LABEL_76;
    case 31:
      if (qword_1EDDFD1F0 != -1)
      {
        swift_once();
      }

      v15 = &qword_1EDDFD1F8;
      goto LABEL_76;
    case 32:
      if (qword_1EDDFD288 != -1)
      {
        swift_once();
      }

      v15 = &qword_1EDDFD290;
      goto LABEL_76;
    case 33:
      if (qword_1EDDFD1A0 != -1)
      {
        swift_once();
      }

      v15 = &qword_1EDDFD1A8;
      goto LABEL_76;
    case 34:
      if (qword_1EDDFD1C8 != -1)
      {
        swift_once();
      }

      v15 = &qword_1EDDFD1D0;
LABEL_76:
      v18 = sub_1C442B738(v8, v15);
      sub_1C449ED64(v18, v14);
      goto LABEL_77;
    default:
      if (qword_1EDDFDCF8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (!qword_1EDDFF3C8)
      {
        sub_1C440BAA8(v7, 1, 1, v8);
        goto LABEL_80;
      }

      v16 = (*(off_1EDDFF3D0 + 2))();
      (*(v17 + 16))(a1, v16, v17);
      if (sub_1C44157D4(v7, 1, v8) == 1)
      {
LABEL_80:
        sub_1C46A1238(v7);
        v19 = 1;
        return sub_1C440BAA8(a2, v19, 1, v8);
      }

      sub_1C448B210(v7, v12);
      sub_1C448B210(v12, v14);
LABEL_77:
      sub_1C448B210(v14, a2);
      v19 = 0;
      return sub_1C440BAA8(a2, v19, 1, v8);
  }
}

uint64_t sub_1C449ED64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Source();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C449EDC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C449EE28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C449EE88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C449EEE8()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C449EF40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C449EFA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C449F008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C449F070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C449F0D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C449F128()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C449F17C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C449F1D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C449F22C()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C449F280(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C449F2E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C449F338(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FCE50(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C449F390()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 32);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C449F450()
{

  return _s20KnowledgeGraphSourceCMa();
}

uint64_t sub_1C449F468()
{
  v2 = *(v0 + 128);
  v3 = *(v0 + 200);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);

  return swift_task_alloc();
}

uint64_t sub_1C449F4A0@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_1C4F02618();
}

void sub_1C449F4C0()
{
  v4 = (v2 + *(v0 + 32));
  *v4 = v1;
  v4[1] = v3;
  v5 = v2 + *(v0 + 40);
}

uint64_t sub_1C449F4F0()
{
  *(v2 - 184) = v0;
  v3 = *(*(v2 - 96) + 40);
  return v1 + *(v2 - 104);
}

uint64_t sub_1C449F510()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  sub_1C43FBDA0();

  return v5();
}

uint64_t sub_1C449F5F4()
{
  sub_1C43FBCD4();
  v2 = *(*v1 + 224);
  v3 = *v1;
  sub_1C43FBDAC();
  *v4 = v3;
  *(v5 + 232) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C449F6F8()
{
  v31 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  (*(v0 + 200))(*(v0 + 48), *(v0 + 32), *(v0 + 16));
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  v5 = sub_1C4400B94(v4);
  v6 = *(v0 + 216);
  if (v5)
  {
    v7 = *(v0 + 208);
    v9 = *(v0 + 48);
    v8 = *(v0 + 56);
    v10 = *(v0 + 40);
    v11 = *(v0 + 16);
    v26 = *(v0 + 200);
    v27 = *(v0 + 24);
    sub_1C43FECF0();
    v12 = swift_slowAlloc();
    sub_1C43FEC60();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v12 = 136315138;
    v26(v8, v9, v11);
    (v6)(v9, v11);
    v13 = *(v27 + 8);
    v14 = sub_1C4F02858();
    v16 = v15;
    (v6)(v8, v11);
    v17 = sub_1C441D828(v14, v16, &v30);

    *(v12 + 4) = v17;
    sub_1C4404638(&dword_1C43F8000, v18, v19, "StageFinish %s");
    sub_1C440962C(v28);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
    v20 = *(v0 + 40) + 8;
    (v6)(*(v0 + 48), *(v0 + 16));
  }

  sub_1C440A0CC();
  v29 = *(v0 + 48);
  sub_1C4460410();
  v21 = *(v6 + 8);
  v22 = sub_1C4402120();
  v23(v22);

  sub_1C43FBDA0();

  return v24();
}