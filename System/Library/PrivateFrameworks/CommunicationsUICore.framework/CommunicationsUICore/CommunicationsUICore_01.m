uint64_t sub_1C2F0CACC(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1C2F0CB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v104 = *v3;
  v8 = sub_1C2F761FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v100 = v11;
  v101 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v99 = &v96 - v14;
  v15 = sub_1C2F75D6C();
  v110 = *(v15 - 8);
  v111 = v15;
  v16 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v115 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076310, &qword_1C2F791C8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v106 = &v96 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076318, &qword_1C2F791D0);
  v108 = *(v21 - 8);
  v109 = v21;
  v22 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v114 = &v96 - v23;
  v24 = type metadata accessor for IntelligenceActivityAttributes(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
  v28 = *(*(v105 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v105);
  v31 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v96 - v32;
  v34 = &v4[OBJC_IVAR____TtC20CommunicationsUICore15ActivityWrapper_activityObserver];
  *v34 = 0;
  *(v34 + 1) = 0;
  v103 = v34 + 8;
  v112 = v9;
  v35 = *(v9 + 16);
  v102 = OBJC_IVAR____TtC20CommunicationsUICore15ActivityWrapper_logger;
  v117 = v8;
  v98 = v9 + 16;
  v97 = v35;
  v35(&v4[OBJC_IVAR____TtC20CommunicationsUICore15ActivityWrapper_logger], a3, v8);
  v116 = a2;
  sub_1C2F0E650(a2, v33, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  v113 = a1;
  sub_1C2F0E650(a1, v27, type metadata accessor for IntelligenceActivityAttributes);
  v118 = a3;
  v36 = sub_1C2F761DC();
  v37 = sub_1C2F769EC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v96 = v4;
    v39 = v38;
    v40 = swift_slowAlloc();
    v119 = v40;
    *v39 = 136315394;
    v41 = IntelligenceActivityAttributes.ContentState.description.getter();
    v43 = v42;
    sub_1C2F101E4(v33, type metadata accessor for IntelligenceActivityAttributes.ContentState);
    v44 = sub_1C2EFAB28(v41, v43, &v119);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2080;
    v45 = IntelligenceActivityAttributes.description.getter();
    v47 = v46;
    sub_1C2F101E4(v27, type metadata accessor for IntelligenceActivityAttributes);
    v48 = sub_1C2EFAB28(v45, v47, &v119);

    *(v39 + 14) = v48;
    _os_log_impl(&dword_1C2EF2000, v36, v37, "Requesting Activity with contentState: %s and with attrbutes: %s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6929E80](v40, -1, -1);
    v49 = v39;
    v4 = v96;
    MEMORY[0x1C6929E80](v49, -1, -1);
  }

  else
  {

    sub_1C2F101E4(v27, type metadata accessor for IntelligenceActivityAttributes);
    sub_1C2F101E4(v33, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  }

  v50 = v116;
  sub_1C2F0E650(v116, v31, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  v51 = sub_1C2F75A8C();
  (*(*(v51 - 8) + 56))(v106, 1, 1, v51);
  sub_1C2F0FE6C(&qword_1EC076320, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  sub_1C2F0FE6C(&qword_1EC076328, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  sub_1C2F0FE6C(&qword_1EC076330, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  v52 = v114;
  sub_1C2F75D8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076360, &qword_1C2F79318);
  v53 = sub_1C2F75D2C();
  v54 = *(v53 - 8);
  v55 = *(v54 + 72);
  v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1C2F78B90;
  (*(v54 + 104))(v57 + v56, *MEMORY[0x1E6959C00], v53);
  v58 = v115;
  sub_1C2F75D3C();
  sub_1C2F75D5C();
  sub_1C2F75D4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076368, &qword_1C2F79320);
  v59 = v113;
  v60 = v107;
  v61 = sub_1C2F75CFC();
  v107 = v60;
  if (v60)
  {
    v62 = *(v112 + 8);
    v63 = v117;
    v62(v118, v117);
    sub_1C2F101E4(v50, type metadata accessor for IntelligenceActivityAttributes.ContentState);
    sub_1C2F101E4(v59, type metadata accessor for IntelligenceActivityAttributes);
    (*(v110 + 8))(v58, v111);
    (*(v108 + 8))(v52, v109);
    v62(&v4[v102], v63);
    sub_1C2F0A8D8(v103, &qword_1EC076340, qword_1C2F791E8);
    v64 = *(*v4 + 48);
    v65 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + 2) = v61;

    v67 = sub_1C2F75CDC();
    v105 = v68;
    v106 = v67;

    v69 = sub_1C2F761DC();
    v70 = sub_1C2F769EC();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = v4;
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v119 = v73;
      *v72 = 136315138;

      v74 = ActivityWrapper.description.getter();
      v76 = v75;

      v77 = sub_1C2EFAB28(v74, v76, &v119);

      *(v72 + 4) = v77;
      _os_log_impl(&dword_1C2EF2000, v69, v70, "Recieved Activity: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      MEMORY[0x1C6929E80](v73, -1, -1);
      v78 = v72;
      v4 = v71;
      v59 = v113;
      MEMORY[0x1C6929E80](v78, -1, -1);
    }

    v79 = sub_1C2F768AC();
    v80 = v99;
    (*(*(v79 - 8) + 56))(v99, 1, 1, v79);
    v81 = v101;
    v97(v101, v118, v117);
    sub_1C2F7688C();

    v82 = sub_1C2F7687C();
    v83 = v112;
    v84 = (*(v112 + 80) + 56) & ~*(v112 + 80);
    v85 = swift_allocObject();
    v86 = MEMORY[0x1E69E85E0];
    *(v85 + 2) = v82;
    *(v85 + 3) = v86;
    v87 = v105;
    *(v85 + 4) = v106;
    *(v85 + 5) = v87;
    *(v85 + 6) = v66;
    v88 = v81;
    v89 = v117;
    (*(v83 + 32))(&v85[v84], v88, v117);
    sub_1C2F06978(0, 0, v80, &unk_1C2F79330, v85);
    v90 = &v4[OBJC_IVAR____TtC20CommunicationsUICore15ActivityWrapper_activityObserver];
    os_unfair_lock_lock(&v4[OBJC_IVAR____TtC20CommunicationsUICore15ActivityWrapper_activityObserver]);
    v91 = *(v90 + 1);

    v92 = sub_1C2F7623C();
    v93 = *(v92 + 48);
    v94 = *(v92 + 52);
    swift_allocObject();

    *(v90 + 1) = sub_1C2F7624C();
    os_unfair_lock_unlock(v90);

    (*(v83 + 8))(v118, v89);
    sub_1C2F101E4(v116, type metadata accessor for IntelligenceActivityAttributes.ContentState);
    sub_1C2F101E4(v59, type metadata accessor for IntelligenceActivityAttributes);
    (*(v110 + 8))(v115, v111);
    (*(v108 + 8))(v114, v109);
  }

  return v4;
}

uint64_t sub_1C2F0D730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_1C2F7688C();
  v7[3] = sub_1C2F7687C();
  v12 = swift_task_alloc();
  v7[4] = v12;
  *v12 = v7;
  v12[1] = sub_1C2F0D804;

  return sub_1C2F0D9A0(a4, a5, a6, a7);
}

uint64_t sub_1C2F0D804()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_1C2F7684C();

  return MEMORY[0x1EEE6DFA0](sub_1C2F0D940, v5, v4);
}

uint64_t sub_1C2F0D940()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C2F0D9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_1C2F7700C();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v8 = sub_1C2F75D7C();
  v4[18] = v8;
  v9 = *(v8 - 8);
  v4[19] = v9;
  v10 = *(v9 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076370, &qword_1C2F79340) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076378, &qword_1C2F79348);
  v4[23] = v12;
  v13 = *(v12 - 8);
  v4[24] = v13;
  v14 = *(v13 + 64) + 15;
  v4[25] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076380, &unk_1C2F79350);
  v4[26] = v15;
  v16 = *(v15 - 8);
  v4[27] = v16;
  v17 = *(v16 + 64) + 15;
  v4[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C2F0DBD4, 0, 0);
}

uint64_t sub_1C2F0DBD4()
{
  v1 = v0[28];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[13];
  sub_1C2F75CCC();
  sub_1C2F75C9C();
  (*(v3 + 8))(v2, v4);
  v6 = sub_1C2EF7414(qword_1EC076388, &qword_1EC076380, &unk_1C2F79350);
  v7 = *(MEMORY[0x1E69E85A8] + 4);
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = sub_1C2F0DCFC;
  v9 = v0[28];
  v10 = v0[26];
  v11 = v0[22];

  return MEMORY[0x1EEE6D8C8](v11, v10, v6);
}

uint64_t sub_1C2F0DCFC()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_1C2F0E368;
  }

  else
  {
    v3 = sub_1C2F0DE10;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C2F0DE2C()
{
  v64 = v0;
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[13];
    v5 = v0[14];
    (*(v0[27] + 8))(v0[28], v0[26]);

    v6 = sub_1C2F761DC();
    v7 = sub_1C2F769EC();
    if (os_log_type_enabled(v6, v7))
    {
      v9 = v0[17];
      v8 = v0[18];
      v10 = v0[15];
      v11 = v0[16];
      v12 = v0[13];
      v13 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v63 = v61;
      *v13 = 136315138;
      v0[5] = v8;
      __swift_allocate_boxed_opaque_existential_0(v0 + 2);
      sub_1C2F75CBC();
      sub_1C2F76FFC();
      v14 = sub_1C2F76EEC();
      v16 = v15;

      (*(v11 + 8))(v9, v10);
      v17 = sub_1C2EFAB28(v14, v16, &v63);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1C2EF2000, v6, v7, "Recieved Activity observation ending with state update: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x1C6929E80](v61, -1, -1);
      MEMORY[0x1C6929E80](v13, -1, -1);
    }

    else
    {
      v40 = v0[13];
    }

    v41 = v0[28];
    v42 = v0[25];
    v44 = v0[21];
    v43 = v0[22];
    v45 = v0[20];
    v46 = v0[17];

    v47 = v0[1];

    return v47();
  }

  else
  {
    v19 = v0[20];
    v18 = v0[21];
    v20 = v0[14];
    v21 = v0[12];
    (*(v3 + 32))(v18, v1, v2);
    v22 = *(v3 + 16);
    v22(v19, v18, v2);

    v23 = sub_1C2F761DC();
    v24 = sub_1C2F769EC();

    v25 = os_log_type_enabled(v23, v24);
    v27 = v0[20];
    v26 = v0[21];
    v28 = v0[18];
    v29 = v0[19];
    if (v25)
    {
      log = v23;
      v62 = v0[21];
      v59 = v24;
      v31 = v0[16];
      v30 = v0[17];
      v32 = v0[11];
      v56 = v0[12];
      v57 = v0[15];
      v33 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v63 = v58;
      *v33 = 136315394;
      *(v33 + 4) = sub_1C2EFAB28(v32, v56, &v63);
      *(v33 + 12) = 2080;
      v0[9] = v28;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 6);
      v22(boxed_opaque_existential_0, v27, v28);
      sub_1C2F76FFC();
      v35 = sub_1C2F76EEC();
      v37 = v36;
      (*(v31 + 8))(v30, v57);
      v38 = *(v29 + 8);
      v38(v27, v28);
      v39 = sub_1C2EFAB28(v35, v37, &v63);

      *(v33 + 14) = v39;
      _os_log_impl(&dword_1C2EF2000, log, v59, "Recieved Activity state update: %s: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v58, -1, -1);
      MEMORY[0x1C6929E80](v33, -1, -1);

      v38(v62, v28);
    }

    else
    {

      v49 = *(v29 + 8);
      v49(v27, v28);
      v49(v26, v28);
    }

    v50 = sub_1C2EF7414(qword_1EC076388, &qword_1EC076380, &unk_1C2F79350);
    v51 = *(MEMORY[0x1E69E85A8] + 4);
    v52 = swift_task_alloc();
    v0[29] = v52;
    *v52 = v0;
    v52[1] = sub_1C2F0DCFC;
    v53 = v0[28];
    v54 = v0[26];
    v55 = v0[22];

    return MEMORY[0x1EEE6D8C8](v55, v54, v50);
  }
}

uint64_t sub_1C2F0E368()
{
  *(v0 + 80) = *(v0 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076DF0, &unk_1C2F7A4C0);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t static ActivityWrapper.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = sub_1C2F75CDC();
  v6 = v5;
  v7 = *(a2 + 16);
  if (v4 == sub_1C2F75CDC() && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C2F76EFC();
  }

  return v10 & 1;
}

char *static ActivityWrapper.request(attributes:contentState:logger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C2F761FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for IntelligenceActivityAttributes(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2F0E650(a1, v19, type metadata accessor for IntelligenceActivityAttributes);
  sub_1C2F0E650(a2, v15, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  (*(v8 + 16))(v11, a3, v7);
  v20 = *(v3 + 48);
  v21 = *(v3 + 52);
  swift_allocObject();
  return sub_1C2F0CB3C(v19, v15, v11);
}

uint64_t sub_1C2F0E650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ActivityWrapper.update(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076310, &qword_1C2F791C8) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076318, &qword_1C2F791D0);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
  v2[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  sub_1C2F7688C();
  v2[11] = sub_1C2F7687C();
  v10 = sub_1C2F7684C();
  v2[12] = v10;
  v2[13] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C2F0E82C, v10, v9);
}

uint64_t sub_1C2F0E82C()
{
  v28 = v0;
  v1 = v0[3];
  sub_1C2F0E650(v0[2], v0[10], type metadata accessor for IntelligenceActivityAttributes.ContentState);

  v2 = sub_1C2F761DC();
  v3 = sub_1C2F769EC();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  if (v4)
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315394;
    v9 = ActivityWrapper.description.getter();
    v11 = sub_1C2EFAB28(v9, v10, &v27);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = IntelligenceActivityAttributes.ContentState.description.getter();
    v14 = v13;
    sub_1C2F101E4(v5, type metadata accessor for IntelligenceActivityAttributes.ContentState);
    v15 = sub_1C2EFAB28(v12, v14, &v27);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_1C2EF2000, v2, v3, "Updating Activity(%s) with contentState: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6929E80](v8, -1, -1);
    MEMORY[0x1C6929E80](v7, -1, -1);
  }

  else
  {

    sub_1C2F101E4(v5, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  }

  v16 = v0[8];
  v17 = v0[7];
  v19 = v0[3];
  v18 = v0[4];
  sub_1C2F0E650(v0[2], v0[9], type metadata accessor for IntelligenceActivityAttributes.ContentState);
  v20 = sub_1C2F75A8C();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  sub_1C2F0FE6C(&qword_1EC076320, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  sub_1C2F0FE6C(&qword_1EC076328, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  sub_1C2F0FE6C(&qword_1EC076330, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  sub_1C2F75D8C();
  v21 = *(v19 + 16);
  v22 = *(MEMORY[0x1E6959B70] + 4);
  v26 = (*MEMORY[0x1E6959B70] + MEMORY[0x1E6959B70]);
  v23 = swift_task_alloc();
  v0[14] = v23;
  *v23 = v0;
  v23[1] = sub_1C2F0EB9C;
  v24 = v0[7];

  return v26(v24);
}

uint64_t sub_1C2F0EB9C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v6 = *v0;

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1C2F0ECBC, v4, v3);
}

uint64_t sub_1C2F0ECBC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v7 = v0[4];
  v6 = v0[5];

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t ActivityWrapper.end()()
{
  v1[2] = v0;
  v2 = sub_1C2F75D1C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076338, &qword_1C2F791E0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  sub_1C2F7688C();
  v1[7] = sub_1C2F7687C();
  v7 = sub_1C2F7684C();
  v1[8] = v7;
  v1[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C2F0EE9C, v7, v6);
}

uint64_t sub_1C2F0EE9C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = *(v0[2] + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076318, &qword_1C2F791D0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_1C2F75D0C();
  v5 = *(MEMORY[0x1E6959B68] + 4);
  v10 = (*MEMORY[0x1E6959B68] + MEMORY[0x1E6959B68]);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1C2F0EFAC;
  v7 = v0[5];
  v8 = v0[6];

  return v10(v8, v7);
}

uint64_t sub_1C2F0EFAC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);
  v6 = *(*v0 + 24);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  sub_1C2F0A8D8(v3, &qword_1EC076338, &qword_1C2F791E0);
  v7 = *(v1 + 72);
  v8 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1C2F0F15C, v8, v7);
}

uint64_t sub_1C2F0F15C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t ActivityWrapper.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC20CommunicationsUICore15ActivityWrapper_logger;
  v3 = sub_1C2F761FC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_1C2F0A8D8(v0 + OBJC_IVAR____TtC20CommunicationsUICore15ActivityWrapper_activityObserver + 8, &qword_1EC076340, qword_1C2F791E8);
  return v0;
}

uint64_t ActivityWrapper.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC20CommunicationsUICore15ActivityWrapper_logger;
  v3 = sub_1C2F761FC();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  sub_1C2F0A8D8(&v0[OBJC_IVAR____TtC20CommunicationsUICore15ActivityWrapper_activityObserver + 8], &qword_1EC076340, qword_1C2F791E8);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_1C2F0F324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v26 = a4;
  v8 = sub_1C2F761FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for IntelligenceActivityAttributes(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2F0E650(a1, v20, type metadata accessor for IntelligenceActivityAttributes);
  sub_1C2F0E650(a2, v16, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  (*(v9 + 16))(v12, a3, v8);
  v21 = *(v4 + 48);
  v22 = *(v4 + 52);
  swift_allocObject();
  v23 = v27;
  result = sub_1C2F0CB3C(v20, v16, v12);
  if (!v23)
  {
    *v26 = result;
  }

  return result;
}

uint64_t sub_1C2F0F50C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C2F06348;

  return ActivityWrapper.update(_:)(a1);
}

uint64_t sub_1C2F0F5A4()
{
  v2 = sub_1C2F75D1C();
  v1[2] = v2;
  v3 = *(v2 - 8);
  v1[3] = v3;
  v4 = *(v3 + 64) + 15;
  v1[4] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076338, &qword_1C2F791E0) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *v0;
  v1[5] = v6;
  v1[6] = v7;
  sub_1C2F7688C();
  v1[7] = sub_1C2F7687C();
  v9 = sub_1C2F7684C();
  v1[8] = v9;
  v1[9] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C2F0F6D0, v9, v8);
}

uint64_t sub_1C2F0F6D0()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = *(v0[6] + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076318, &qword_1C2F791D0);
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_1C2F75D0C();
  v5 = *(MEMORY[0x1E6959B68] + 4);
  v10 = (*MEMORY[0x1E6959B68] + MEMORY[0x1E6959B68]);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1C2F0F7E0;
  v7 = v0[4];
  v8 = v0[5];

  return v10(v8, v7);
}

uint64_t sub_1C2F0F7E0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 16);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  sub_1C2F0A8D8(v3, &qword_1EC076338, &qword_1C2F791E0);
  v7 = *(v1 + 72);
  v8 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1C2F0F990, v8, v7);
}

uint64_t sub_1C2F0F990()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C2F0FA04(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 16);
  v4 = sub_1C2F75CDC();
  v6 = v5;
  v7 = *(v2 + 16);
  if (v4 == sub_1C2F75CDC() && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C2F76EFC();
  }

  return v10 & 1;
}

uint64_t ActivityWrapper.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076318, &qword_1C2F791D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v15 - v4;
  v6 = sub_1C2F75D7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_1C2F76C6C();
  MEMORY[0x1C6928D30](0x7974697669746341, 0xE900000000000028);
  v11 = *(v0 + 16);
  v12 = sub_1C2F75CDC();
  MEMORY[0x1C6928D30](v12);

  MEMORY[0x1C6928D30](0x3A65746174732029, 0xE900000000000020);
  sub_1C2F75CBC();
  sub_1C2F76D3C();
  (*(v7 + 8))(v10, v6);
  MEMORY[0x1C6928D30](0x746E65746E6F6320, 0xEF203A6574617453);
  sub_1C2F75CEC();
  sub_1C2EF7414(&qword_1EC076348, &qword_1EC076318, &qword_1C2F791D0);
  v13 = sub_1C2F76EEC();
  MEMORY[0x1C6928D30](v13);

  (*(v2 + 8))(v5, v1);
  return v15[0];
}

uint64_t sub_1C2F0FD9C(uint64_t a1)
{
  *(a1 + 8) = sub_1C2F0FE6C(&qword_1EDEBD060, type metadata accessor for ActivityWrapper);
  result = sub_1C2F0FE6C(qword_1EDEBD068, type metadata accessor for ActivityWrapper);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for ActivityWrapper()
{
  result = qword_1EDEBD050;
  if (!qword_1EDEBD050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2F0FE6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of ActivityWrapperProtocol.update(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C2F0AC48;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ActivityWrapperProtocol.end()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2F0AC48;

  return v9(a1, a2);
}

uint64_t sub_1C2F10124()
{
  result = sub_1C2F761FC();
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

uint64_t sub_1C2F101E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C2F10244(uint64_t a1)
{
  v4 = *(sub_1C2F761FC() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C2F06348;

  return sub_1C2F0D730(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1C2F103EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = sub_1C2F76ADC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1);
  v12 = *a2;
  return sub_1C2F10568(v10);
}

uint64_t sub_1C2F104BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_1C2F76ADC();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_1C2F10568(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_1C2F76ADC();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t CallScreeningActivityController.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  CallScreeningActivityController.init(logger:)(a1);
  return v5;
}

uint64_t CallScreeningActivityController.init(logger:)(uint64_t a1)
{
  v2 = v1;
  (*(*(*(*v1 + 80) - 8) + 56))(v1 + *(*v1 + 104), 1, 1);
  v4 = *(*v1 + 112);
  sub_1C2F75E1C();
  *(v1 + v4) = sub_1C2F75E0C();
  v5 = qword_1EDEBDA90;
  v6 = sub_1C2F761FC();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  return v2;
}

uint64_t sub_1C2F10758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = *(type metadata accessor for IntelligenceActivityAttributes.ContentState(0) - 8);
  v4[7] = v5;
  v4[8] = *(v5 + 64);
  v4[9] = swift_task_alloc();
  v6 = *(type metadata accessor for IntelligenceActivityAttributes(0) - 8);
  v4[10] = v6;
  v4[11] = *(v6 + 64);
  v4[12] = swift_task_alloc();
  sub_1C2F7688C();
  v4[13] = sub_1C2F7687C();
  v8 = sub_1C2F7684C();
  v4[14] = v8;
  v4[15] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C2F108DC, v8, v7);
}

uint64_t sub_1C2F108DC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v16 = v0[11];
  v17 = v2;
  v4 = v0[7];
  v18 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
  v20 = *(v5 + *(*v5 + 112));
  sub_1C2F0E650(v0[3], v1, type metadata accessor for IntelligenceActivityAttributes);
  sub_1C2F0E650(v7, v2, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  v8 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v9 = (v16 + *(v4 + 80) + v8) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v0[16] = v10;
  v11 = *(v6 + 80);
  v10[2] = v11;
  v10[3] = *(v6 + 88);
  v10[4] = v5;
  sub_1C2F114F8(v1, v10 + v8, type metadata accessor for IntelligenceActivityAttributes);
  sub_1C2F114F8(v17, v10 + v9, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  v12 = *(MEMORY[0x1E69D8978] + 4);
  v19 = (*MEMORY[0x1E69D8978] + MEMORY[0x1E69D8978]);

  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_1C2F10ABC;
  v14 = v0[2];

  return v19(v14, &unk_1C2F79380, v10, v11);
}

uint64_t sub_1C2F10ABC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 144) = v0;

  v6 = *(v2 + 120);
  v7 = *(v2 + 112);
  if (v0)
  {
    v8 = sub_1C2F10C8C;
  }

  else
  {
    v8 = sub_1C2F10C14;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C2F10C14()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C2F10C8C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

uint64_t sub_1C2F10D04(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *a2;
  v4[6] = *a2;
  v4[7] = *(v5 + 80);
  v6 = sub_1C2F76ADC();
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = sub_1C2F7688C();
  v4[13] = sub_1C2F7687C();
  v9 = swift_task_alloc();
  v4[14] = v9;
  *v9 = v4;
  v9[1] = sub_1C2F10E64;

  return sub_1C2F128B8();
}

uint64_t sub_1C2F10E64()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v7 = *v0;

  v5 = sub_1C2F7684C();

  return MEMORY[0x1EEE6DFA0](sub_1C2F10FA0, v5, v4);
}

uint64_t sub_1C2F10FA0()
{
  v34 = v0;
  v1 = v0[13];
  v2 = v0[3];

  v3 = qword_1EDEBDA90;
  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v33[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1C2EFAB28(0xD00000000000003ALL, 0x80000001C2F7E810, v33);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1C2EFAB28(0xD000000000000021, 0x80000001C2F7E8B0, v33);
    _os_log_impl(&dword_1C2EF2000, v4, v5, "[%s] %s: Requesting Call Screening Live Activity.", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6929E80](v7, -1, -1);
    MEMORY[0x1C6929E80](v6, -1, -1);
  }

  v8 = v0[11];
  v9 = v0[7];
  (*(*(v0[6] + 88) + 40))(v0[4], v0[5], v2 + v3);
  v10 = v0[10];
  v11 = v0[11];
  v12 = v0[7];
  v13 = v0[3];
  v14 = *(v12 - 8);
  (*(v14 + 56))(v11, 0, 1, v12);
  sub_1C2F10568(v11);
  sub_1C2F104BC(v10);
  v15 = (*(v14 + 48))(v10, 1, v12);
  v16 = v0[10];
  if (v15 == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    v17 = sub_1C2F761DC();
    v18 = sub_1C2F769DC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33[0] = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_1C2EFAB28(0xD00000000000003ALL, 0x80000001C2F7E810, v33);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1C2EFAB28(0xD000000000000021, 0x80000001C2F7E8B0, v33);
      _os_log_impl(&dword_1C2EF2000, v17, v18, "[%s] %s: Failed to start the Call Screening Live Activity", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v20, -1, -1);
      MEMORY[0x1C6929E80](v19, -1, -1);
    }

    v21 = v0[7];
    type metadata accessor for CallScreeningActivityController.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v22 = 0xD00000000000001CLL;
    v22[1] = 0x80000001C2F7E890;
    swift_willThrow();
    v24 = v0[10];
    v23 = v0[11];

    v25 = v0[1];
  }

  else
  {
    (*(v14 + 32))(v0[2], v0[10], v0[7]);
    v27 = sub_1C2F761DC();
    v28 = sub_1C2F769EC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33[0] = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_1C2EFAB28(0xD00000000000003ALL, 0x80000001C2F7E810, v33);
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_1C2EFAB28(0xD000000000000021, 0x80000001C2F7E8B0, v33);
      _os_log_impl(&dword_1C2EF2000, v27, v28, "[%s] %s: Started Call Screening Live Activity", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v30, -1, -1);
      MEMORY[0x1C6929E80](v29, -1, -1);
    }

    v32 = v0[10];
    v31 = v0[11];

    v25 = v0[1];
  }

  return v25();
}

uint64_t sub_1C2F114F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2F11560(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for IntelligenceActivityAttributes(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for IntelligenceActivityAttributes.ContentState(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 32);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1C2F0AC48;

  return sub_1C2F10D04(a1, v10, v1 + v6, v1 + v9);
}

uint64_t sub_1C2F116AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v3[5] = *v2;
  v5 = *(type metadata accessor for IntelligenceActivityAttributes.ContentState(0) - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v6 = *(v4 + 80);
  v3[9] = v6;
  v7 = *(v6 - 8);
  v3[10] = v7;
  v3[11] = *(v7 + 64);
  v3[12] = swift_task_alloc();
  sub_1C2F7688C();
  v3[13] = sub_1C2F7687C();
  v9 = sub_1C2F7684C();
  v3[14] = v9;
  v3[15] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C2F11844, v9, v8);
}

uint64_t sub_1C2F11844()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v14 = v0[11];
  v15 = v0[7];
  v5 = v0[6];
  v16 = v0[5];
  v7 = v0[3];
  v6 = v0[4];
  v18 = *(v6 + *(*v6 + 112));
  (*(v3 + 16))(v1, v0[2], v2);
  sub_1C2F0E650(v7, v4, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  v8 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v9 = (v14 + *(v5 + 80) + v8) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v0[16] = v10;
  *(v10 + 2) = v2;
  *(v10 + 3) = *(v16 + 88);
  *(v10 + 4) = v6;
  (*(v3 + 32))(&v10[v8], v1, v2);
  sub_1C2F114F8(v4, &v10[v9], type metadata accessor for IntelligenceActivityAttributes.ContentState);
  v11 = *(MEMORY[0x1E69D8978] + 4);
  v17 = (*MEMORY[0x1E69D8978] + MEMORY[0x1E69D8978]);

  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_1C2F11A30;

  return v17();
}

uint64_t sub_1C2F11A30()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v9 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_1C2F11BC4;
  }

  else
  {
    v7 = v2[16];

    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_1C2F11B4C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1C2F11B4C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C2F11BC4()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[8];

  v5 = v0[1];
  v6 = v0[18];

  return v5();
}

uint64_t sub_1C2F11C50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = *a2;
  v4[5] = *a2;
  v6 = *(v5 + 80);
  v4[6] = v6;
  v7 = sub_1C2F76ADC();
  v4[7] = v7;
  v8 = *(v7 - 8);
  v4[8] = v8;
  v9 = *(v8 + 64) + 15;
  v4[9] = swift_task_alloc();
  v10 = *(v6 - 8);
  v4[10] = v10;
  v11 = *(v10 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  sub_1C2F7688C();
  v4[14] = sub_1C2F7687C();
  v13 = sub_1C2F7684C();
  v4[15] = v13;
  v4[16] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1C2F11DF8, v13, v12);
}

uint64_t sub_1C2F11DF8()
{
  v45 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  v4 = v0[2];
  sub_1C2F104BC(v1);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v5 = v0[14];
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    v9 = v0[2];

    (*(v7 + 8))(v6, v8);
    v10 = sub_1C2F761DC();
    v11 = sub_1C2F769DC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v44[0] = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_1C2EFAB28(0xD00000000000003ALL, 0x80000001C2F7E810, v44);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_1C2EFAB28(0x5F28657461647075, 0xEF293A687469773ALL, v44);
      _os_log_impl(&dword_1C2EF2000, v10, v11, "[%s] %s: Cannot update activity that is not started", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v13, -1, -1);
      MEMORY[0x1C6929E80](v12, -1, -1);
    }

    v14 = v0[6];
    v15 = *(v0[5] + 88);
    type metadata accessor for CallScreeningActivityController.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v16 = 0xD00000000000002ALL;
    v16[1] = 0x80000001C2F7E7E0;
    swift_willThrow();
LABEL_12:
    v39 = v0[12];
    v38 = v0[13];
    v40 = v0[11];
    v41 = v0[9];

    v42 = v0[1];

    return v42();
  }

  v17 = v0[5];
  v18 = v0[3];
  (*(v0[10] + 32))(v0[13], v0[9], v0[6]);
  v19 = *(v17 + 88);
  v0[17] = v19;
  v20 = *(v19 + 16);
  if ((sub_1C2F7662C() & 1) == 0)
  {
    v28 = v0[14];
    v29 = v0[2];

    v30 = sub_1C2F761DC();
    v31 = sub_1C2F769DC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44[0] = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_1C2EFAB28(0xD00000000000003ALL, 0x80000001C2F7E810, v44);
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_1C2EFAB28(0x5F28657461647075, 0xEF293A687469773ALL, v44);
      _os_log_impl(&dword_1C2EF2000, v30, v31, "[%s] %s: currentActivity does not equal the activity we want to update.", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v33, -1, -1);
      MEMORY[0x1C6929E80](v32, -1, -1);
    }

    v34 = v0[13];
    v35 = v0[10];
    v36 = v0[6];
    type metadata accessor for CallScreeningActivityController.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v37 = 0xD000000000000031;
    v37[1] = 0x80000001C2F7E850;
    swift_willThrow();
    (*(v35 + 8))(v34, v36);
    goto LABEL_12;
  }

  v21 = *(v19 + 48);
  v43 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  v0[18] = v23;
  *v23 = v0;
  v23[1] = sub_1C2F12374;
  v24 = v0[13];
  v25 = v0[6];
  v26 = v0[4];

  return v43(v26, v25, v19);
}

uint64_t sub_1C2F12374()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1C2F12494, v4, v3);
}

uint64_t sub_1C2F12494()
{
  v34 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v5 = v0[6];
  v6 = v0[2];

  v7 = *(v4 + 16);
  v7(v3, v2, v5);
  v8 = sub_1C2F761DC();
  v9 = sub_1C2F769EC();
  if (os_log_type_enabled(v8, v9))
  {
    v32 = v0[13];
    v29 = v0[12];
    v30 = v0[17];
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[6];
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v13 = 136315650;
    *(v13 + 4) = sub_1C2EFAB28(0xD00000000000003ALL, 0x80000001C2F7E810, &v33);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1C2EFAB28(0x5F28657461647075, 0xEF293A687469773ALL, &v33);
    *(v13 + 22) = 2080;
    v7(v10, v29, v12);
    v14 = *(v11 + 8);
    v14(v29, v12);
    v15 = *(v30 + 8);
    v16 = sub_1C2F76EEC();
    v18 = v17;
    v14(v10, v12);
    v19 = sub_1C2EFAB28(v16, v18, &v33);

    *(v13 + 24) = v19;
    _os_log_impl(&dword_1C2EF2000, v8, v9, "[%s] %s:Updated Call Screening Live Activity %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6929E80](v31, -1, -1);
    MEMORY[0x1C6929E80](v13, -1, -1);

    v14(v32, v12);
  }

  else
  {
    v20 = v0[13];
    v21 = v0[6];
    v22 = *(v0[10] + 8);
    v22(v0[12], v21);

    v22(v20, v21);
  }

  v24 = v0[12];
  v23 = v0[13];
  v25 = v0[11];
  v26 = v0[9];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1C2F12770(uint64_t a1)
{
  v3 = v2;
  v5 = (*(*(*(v1 + 16) - 8) + 80) + 40) & ~*(*(*(v1 + 16) - 8) + 80);
  v6 = *(*(*(v1 + 16) - 8) + 64);
  v7 = *(type metadata accessor for IntelligenceActivityAttributes.ContentState(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v1 + 32);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1C2F0AC48;

  return sub_1C2F11C50(a1, v9, v1 + v5, v1 + v8);
}

uint64_t sub_1C2F128B8()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v3 = *(v2 + 80);
  v1[4] = v3;
  v4 = sub_1C2F76ADC();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v7 = *(v3 - 8);
  v1[10] = v7;
  v8 = *(v7 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_1C2F7688C();
  v1[14] = sub_1C2F7687C();
  v10 = sub_1C2F7684C();
  v1[15] = v10;
  v1[16] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C2F12A74, v10, v9);
}

uint64_t sub_1C2F12A74()
{
  v68 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0 + 9;
  v5 = v0 + 4;
  v4 = v0[4];
  v6 = v0[2];
  sub_1C2F104BC(v1);
  v7 = *(v2 + 48);
  if (v7(v1, 1, v4) == 1)
  {
    v8 = v0[14];
    v9 = v0[6];

    v5 = v0 + 5;
    v10 = (v9 + 8);
LABEL_8:
    v43 = *v5;
    v44 = *v10;
    v45 = v0[12];
    v46 = v0[13];
    v47 = v0[11];
    v49 = v0[8];
    v48 = v0[9];
    v50 = v0[7];
    v44(*v3, v43);

    v51 = v0[1];

    return v51();
  }

  v65 = v7;
  v3 = v0 + 13;
  v11 = v0[13];
  v12 = v0[12];
  v13 = v0[10];
  v14 = v0[4];
  v15 = v0[2];
  (*(v13 + 32))(v11, v0[9], v14);
  v16 = v14;
  v17 = *(v13 + 16);
  v17(v12, v11, v16);
  v18 = sub_1C2F761DC();
  v19 = sub_1C2F769CC();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[12];
  v64 = v17;
  if (v20)
  {
    log = v18;
    v23 = v0[10];
    v22 = v0[11];
    v62 = v19;
    v24 = v0[4];
    v59 = v0[3];
    buf = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v67 = v61;
    *buf = 136315138;
    v64(v22, v21, v24);
    v25 = *(v23 + 8);
    v25(v21, v24);
    v26 = *(*(v59 + 88) + 8);
    v27 = v22;
    v28 = sub_1C2F76EEC();
    v30 = v29;
    v25(v27, v24);
    v31 = sub_1C2EFAB28(v28, v30, &v67);

    *(buf + 4) = v31;
    _os_log_impl(&dword_1C2EF2000, log, v62, "CallScreeningActivityController - Ending activity %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x1C6929E80](v61, -1, -1);
    MEMORY[0x1C6929E80](buf, -1, -1);
  }

  else
  {
    v25 = *(v0[10] + 8);
    v25(v21, v0[4]);
  }

  v0[17] = v25;
  v10 = (v0 + 17);
  v32 = v0[8];
  v33 = v0[6];
  v34 = v0[4];
  v35 = v0[2];
  sub_1C2F104BC(v32);
  v36 = v65(v32, 1, v34);
  v37 = (v33 + 8);
  v38 = v0[8];
  v39 = v0[5];
  if (v36)
  {
    v40 = v0[14];

    (*v37)(v38, v39);
    v41 = v0[7];
    v42 = v0[2];
    (*(v0[10] + 56))(v41, 1, 1, v0[4]);
    sub_1C2F10568(v41);
    goto LABEL_8;
  }

  v53 = v0[3];
  v64(v0[11], v0[8], v0[4]);
  (*v37)(v38, v39);
  v54 = *(v53 + 88);
  v66 = (*(v54 + 56) + **(v54 + 56));
  v55 = *(*(v54 + 56) + 4);
  v56 = swift_task_alloc();
  v0[18] = v56;
  *v56 = v0;
  v56[1] = sub_1C2F12F58;
  v57 = v0[11];
  v58 = v0[4];

  return v66(v58, v54);
}

uint64_t sub_1C2F12F58()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  v6 = *(*v0 + 32);
  v10 = *v0;

  v3(v4, v6);
  v7 = *(v1 + 128);
  v8 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1C2F130F0, v8, v7);
}

uint64_t sub_1C2F130F0()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  (*(*(v0 + 80) + 56))(v2, 1, 1, *(v0 + 32));
  sub_1C2F10568(v2);
  v4 = *(v0 + 96);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);
  (*(v0 + 136))(*(v0 + 104), *(v0 + 32));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1C2F131F0()
{
  v1[2] = v0;
  sub_1C2F7688C();
  v1[3] = sub_1C2F7687C();
  v3 = sub_1C2F7684C();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C2F13288, v3, v2);
}

uint64_t sub_1C2F13288()
{
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 112));
  v2 = *(MEMORY[0x1E69D8980] + 4);
  v6 = (*MEMORY[0x1E69D8980] + MEMORY[0x1E69D8980]);

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1C2F13374;
  v4 = *(v0 + 16);

  return v6();
}

uint64_t sub_1C2F13374()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1C2F0D940, v5, v4);
}

uint64_t sub_1C2F134B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C2F0AC48;

  return sub_1C2F128B8();
}

uint64_t sub_1C2F13548()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C2F0AC48;

  return sub_1C2F134B8();
}

uint64_t sub_1C2F135E4()
{
  v1 = *(v0 + *(*v0 + 112));

  sub_1C2F75DFC();
}

uint64_t sub_1C2F13658()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C2F06348;

  return sub_1C2F128B8();
}

uint64_t sub_1C2F136E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C2F06348;

  return sub_1C2F13658();
}

uint64_t static CallScreeningActivityController.stopAllActivities()()
{
  v1 = sub_1C2F75D1C();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076338, &qword_1C2F791E0) - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  sub_1C2F7688C();
  v0[6] = sub_1C2F7687C();
  v6 = sub_1C2F7684C();
  v0[7] = v6;
  v0[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C2F138A0, v6, v5);
}

uint64_t sub_1C2F138A0()
{
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1C2F761FC();
  __swift_project_value_buffer(v1, qword_1EDEBDA78);
  v2 = sub_1C2F761DC();
  v3 = sub_1C2F769CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C2EF2000, v2, v3, "CallScreeningActivityController - Stopping all activities with IntelligenceActivityAttributes", v4, 2u);
    MEMORY[0x1C6929E80](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076368, &qword_1C2F79320);
  v5 = sub_1C2F75CAC();
  v0[9] = v5;
  if (v5 >> 62)
  {
    result = sub_1C2F76BBC();
    v0[10] = result;
    if (result)
    {
LABEL_7:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v0[11] = 0;
        v7 = v0[9];
        if ((v7 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1C6929250](0);
        }

        else
        {
          v8 = *(v7 + 32);
        }

        v0[12] = v8;
        v10 = v0[4];
        v9 = v0[5];
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076318, &qword_1C2F791D0);
        (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
        sub_1C2F75D0C();
        v12 = *(MEMORY[0x1E6959B68] + 4);
        v21 = (*MEMORY[0x1E6959B68] + MEMORY[0x1E6959B68]);
        v13 = swift_task_alloc();
        v0[13] = v13;
        *v13 = v0;
        v13[1] = sub_1C2F13B44;
        v14 = v0[4];
        v15 = v0[5];

        return v21(v15, v14);
      }

      return result;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[10] = result;
    if (result)
    {
      goto LABEL_7;
    }
  }

  v16 = v0[9];
  v17 = v0[5];
  v18 = v0[6];
  v19 = v0[4];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1C2F13B44()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 16);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  sub_1C2F13FD8(v3);
  v7 = *(v1 + 64);
  v8 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1C2F13CE4, v8, v7);
}

uint64_t sub_1C2F13CE4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  if (v2 + 1 == v3)
  {
    v4 = v0[9];
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[4];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[11] + 1;
    v0[11] = v10;
    v11 = v0[9];
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1C6929250]();
    }

    else
    {
      v12 = *(v11 + 8 * v10 + 32);
    }

    v0[12] = v12;
    v14 = v0[4];
    v13 = v0[5];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076318, &qword_1C2F791D0);
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    sub_1C2F75D0C();
    v16 = *(MEMORY[0x1E6959B68] + 4);
    v20 = (*MEMORY[0x1E6959B68] + MEMORY[0x1E6959B68]);
    v17 = swift_task_alloc();
    v0[13] = v17;
    *v17 = v0;
    v17[1] = sub_1C2F13B44;
    v18 = v0[4];
    v19 = v0[5];

    return v20(v19, v18);
  }
}

uint64_t *CallScreeningActivityController.deinit()
{
  v1 = *v0;
  v2 = qword_1EDEBDA90;
  v3 = sub_1C2F761FC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 104);
  v5 = *(v1 + 80);
  v6 = sub_1C2F76ADC();
  (*(*(v6 - 8) + 8))(v0 + v4, v6);
  v7 = *(v0 + *(*v0 + 112));

  return v0;
}

uint64_t CallScreeningActivityController.__deallocating_deinit()
{
  CallScreeningActivityController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F13FD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076338, &qword_1C2F791E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2F14044(uint64_t a1)
{
  result = sub_1C2F761FC();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = sub_1C2F76ADC();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of CallScreeningActivityController.startActivity(with:contentState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 152);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1C2F06348;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of CallScreeningActivityController.update(_:with:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1C2F0AC48;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CallScreeningActivityController.stopActivity()()
{
  v2 = *(*v0 + 176);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C2F0AC48;

  return v6();
}

{
  return (*(*v0 + 184))();
}

uint64_t sub_1C2F14568()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C2F145B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C2F145F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t IntelligenceActivityAttributes.ContentState.titleSymbol.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IntelligenceActivityAttributes.ContentState(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t IntelligenceActivityAttributes.ContentState.subtitleSymbol.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IntelligenceActivityAttributes.ContentState(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t IntelligenceActivityAttributes.ContentState.init(message:title:titleSymbol:subTitleSymbol:shouldCenterAlignMessage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = *(a3 + 8);
  v12 = *a4;
  v11 = a4[1];
  v17 = *(a4 + 8);
  sub_1C2F09460(a1, a6, &qword_1EC076410, &qword_1C2F794E0);
  v13 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
  result = sub_1C2F09460(a2, a6 + v13[5], &qword_1EC076410, &qword_1C2F794E0);
  v15 = a6 + v13[6];
  *v15 = v8;
  *(v15 + 8) = v9;
  *(v15 + 16) = v10;
  v16 = a6 + v13[7];
  *v16 = v12;
  *(v16 + 8) = v11;
  *(v16 + 16) = v17;
  *(a6 + v13[8]) = a5;
  return result;
}

uint64_t sub_1C2F14864()
{
  v1 = *v0;
  v2 = 0x6567617373656DLL;
  v3 = 0x6D7953656C746974;
  v4 = 0x656C746974627573;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C2F14914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C2F17EEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C2F14954(uint64_t a1)
{
  v2 = sub_1C2F17318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F14990(uint64_t a1)
{
  v2 = sub_1C2F17318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceActivityAttributes.ContentState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076418, &qword_1C2F794E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F17318();
  sub_1C2F7702C();
  LOBYTE(v22) = 0;
  sub_1C2F759EC();
  sub_1C2F173C0(&qword_1EC076428, MEMORY[0x1E6968848]);
  sub_1C2F76E5C();
  if (!v2)
  {
    v11 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
    v12 = v11[5];
    LOBYTE(v22) = 1;
    sub_1C2F76E5C();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    LOWORD(v13) = *(v13 + 8);
    v22 = v14;
    v23 = v15;
    v24 = v13;
    v25 = 2;
    sub_1C2F1736C();

    sub_1C2F76E5C();

    v16 = (v3 + v11[7]);
    v18 = *v16;
    v17 = v16[1];
    LOWORD(v16) = *(v16 + 8);
    v22 = v18;
    v23 = v17;
    v24 = v16;
    v25 = 3;

    sub_1C2F76E5C();

    v19 = *(v3 + v11[8]);
    LOBYTE(v22) = 4;
    sub_1C2F76E7C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t IntelligenceActivityAttributes.ContentState.hash(into:)()
{
  v1 = v0;
  v2 = sub_1C2F759EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076410, &qword_1C2F794E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  sub_1C2EF6A3C(v1, &v24 - v12, &qword_1EC076410, &qword_1C2F794E0);
  v14 = *(v3 + 48);
  if (v14(v13, 1, v2) == 1)
  {
    sub_1C2F76FBC();
  }

  else
  {
    (*(v3 + 32))(v6, v13, v2);
    sub_1C2F76FBC();
    sub_1C2F173C0(&qword_1EC076438, MEMORY[0x1E6968848]);
    sub_1C2F7661C();
    (*(v3 + 8))(v6, v2);
  }

  v15 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
  sub_1C2EF6A3C(v1 + v15[5], v11, &qword_1EC076410, &qword_1C2F794E0);
  if (v14(v11, 1, v2) == 1)
  {
    sub_1C2F76FBC();
  }

  else
  {
    (*(v3 + 32))(v6, v11, v2);
    sub_1C2F76FBC();
    sub_1C2F173C0(&qword_1EC076438, MEMORY[0x1E6968848]);
    sub_1C2F7661C();
    (*(v3 + 8))(v6, v2);
  }

  v16 = v1 + v15[6];
  if (*(v16 + 8))
  {
    v17 = *(v16 + 16);
    v18 = *v16;
    sub_1C2F76FBC();
    sub_1C2F7673C();
    MEMORY[0x1C6929580](v17 & 1);
    MEMORY[0x1C6929580](v17 >> 8);
  }

  else
  {
    sub_1C2F76FBC();
  }

  v19 = v1 + v15[7];
  if (*(v19 + 8))
  {
    v20 = *(v19 + 16);
    v21 = *v19;
    sub_1C2F76FBC();
    sub_1C2F7673C();
    MEMORY[0x1C6929580](v20 & 1);
    MEMORY[0x1C6929580](v20 >> 8);
  }

  else
  {
    sub_1C2F76FBC();
  }

  v22 = *(v1 + v15[8]);
  return sub_1C2F76FBC();
}

uint64_t IntelligenceActivityAttributes.ContentState.hashValue.getter()
{
  sub_1C2F76F9C();
  IntelligenceActivityAttributes.ContentState.hash(into:)();
  return sub_1C2F76FDC();
}

uint64_t IntelligenceActivityAttributes.ContentState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076410, &qword_1C2F794E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076440, &unk_1C2F794F0);
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v12;
  v14 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F17318();
  v35 = v13;
  sub_1C2F7701C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = v8;
  v30 = v17;
  sub_1C2F759EC();
  LOBYTE(v36) = 0;
  sub_1C2F173C0(&qword_1EC076448, MEMORY[0x1E6968848]);
  v20 = v32;
  v21 = v34;
  sub_1C2F76DCC();
  v22 = v20;
  v23 = v30;
  sub_1C2F09460(v22, v30, &qword_1EC076410, &qword_1C2F794E0);
  LOBYTE(v36) = 1;
  sub_1C2F76DCC();
  sub_1C2F09460(v19, v23 + v14[5], &qword_1EC076410, &qword_1C2F794E0);
  v38 = 2;
  sub_1C2F17408();
  sub_1C2F76DCC();
  v24 = v37;
  v25 = v23 + v14[6];
  *v25 = v36;
  *(v25 + 16) = v24;
  v38 = 3;
  sub_1C2F76DCC();
  v26 = v37;
  v27 = v23 + v14[7];
  *v27 = v36;
  *(v27 + 16) = v26;
  LOBYTE(v36) = 4;
  v28 = sub_1C2F76DEC();
  (*(v33 + 8))(v35, v21);
  *(v23 + v14[8]) = v28 & 1;
  sub_1C2F17578(v23, v31, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1C2F101E4(v23, type metadata accessor for IntelligenceActivityAttributes.ContentState);
}

uint64_t sub_1C2F155F0()
{
  sub_1C2F76F9C();
  IntelligenceActivityAttributes.ContentState.hash(into:)();
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F15634()
{
  sub_1C2F76F9C();
  IntelligenceActivityAttributes.ContentState.hash(into:)();
  return sub_1C2F76FDC();
}

uint64_t IntelligenceActivityAttributes.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2F759EC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t IntelligenceActivityAttributes.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceActivityAttributes(0) + 20);
  v4 = sub_1C2F759EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntelligenceActivityAttributes.contactIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for IntelligenceActivityAttributes(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t IntelligenceActivityAttributes.titleStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IntelligenceActivityAttributes(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t IntelligenceActivityAttributes.subtitleStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IntelligenceActivityAttributes(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t IntelligenceActivityAttributes.init(title:subtitle:shouldHideCallerIDWhenLocked:showsViewButton:displaysAvatar:callImageURL:contactIdentifier:titleStyle:subtitleStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, char *a9, char *a10)
{
  v16 = *a9;
  v22 = *a10;
  v17 = sub_1C2F759EC();
  v18 = *(*(v17 - 8) + 32);
  v18(a8, a1, v17);
  v19 = type metadata accessor for IntelligenceActivityAttributes(0);
  v18(a8 + v19[5], a2, v17);
  *(a8 + v19[6]) = a3;
  *(a8 + v19[7]) = a4;
  result = sub_1C2F09460(a5, a8 + v19[8], &qword_1EC076458, &unk_1C2F7B430);
  v21 = (a8 + v19[9]);
  *v21 = a6;
  v21[1] = a7;
  *(a8 + v19[10]) = v16;
  *(a8 + v19[11]) = v22;
  return result;
}

uint64_t sub_1C2F159BC()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F15A04()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F15A48()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x797453656C746974;
  if (v1 != 6)
  {
    v3 = 0x656C746974627573;
  }

  v4 = 0x67616D496C6C6163;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x65695673776F6873;
  if (v1 != 2)
  {
    v5 = 0x7379616C70736964;
  }

  if (*v0)
  {
    v2 = 0x656C746974627573;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C2F15B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C2F180AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C2F15BA8(uint64_t a1)
{
  v2 = sub_1C2F1747C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F15BE4(uint64_t a1)
{
  v2 = sub_1C2F1747C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceActivityAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076460, &qword_1C2F79500);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F1747C();
  sub_1C2F7702C();
  v20[31] = 0;
  sub_1C2F759EC();
  sub_1C2F173C0(&qword_1EC076428, MEMORY[0x1E6968848]);
  sub_1C2F76E9C();
  if (!v2)
  {
    v11 = type metadata accessor for IntelligenceActivityAttributes(0);
    v12 = v11[5];
    v20[30] = 1;
    sub_1C2F76E9C();
    v13 = *(v3 + v11[6]);
    v20[29] = 2;
    sub_1C2F76E7C();
    v14 = *(v3 + v11[7]);
    v20[28] = 3;
    sub_1C2F76E7C();
    v15 = v11[8];
    v20[27] = 4;
    sub_1C2F75A5C();
    sub_1C2F173C0(&qword_1EC076470, MEMORY[0x1E6968FB0]);
    sub_1C2F76E5C();
    v16 = (v3 + v11[9]);
    v17 = *v16;
    v18 = v16[1];
    v20[26] = 5;
    sub_1C2F76E4C();
    v20[25] = *(v3 + v11[10]);
    v20[24] = 6;
    sub_1C2F174D0();
    sub_1C2F76E5C();
    v20[15] = *(v3 + v11[11]);
    v20[14] = 7;
    sub_1C2F76E5C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t IntelligenceActivityAttributes.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076458, &unk_1C2F7B430);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v41 - v5;
  v49 = sub_1C2F759EC();
  v45 = *(v49 - 8);
  v7 = *(v45 + 64);
  v8 = MEMORY[0x1EEE9AC00](v49);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076480, &qword_1C2F79508);
  v13 = *(v12 - 8);
  v47 = v12;
  v48 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - v15;
  v17 = type metadata accessor for IntelligenceActivityAttributes(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F1747C();
  v50 = v16;
  v22 = v51;
  sub_1C2F7701C();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v23 = v10;
  v42 = v6;
  v43 = v17;
  v51 = v20;
  v61 = 0;
  sub_1C2F173C0(&qword_1EC076448, MEMORY[0x1E6968848]);
  v24 = v46;
  v25 = v47;
  sub_1C2F76E0C();
  v26 = v51;
  v27 = v24;
  v28 = v49;
  v46 = *(v45 + 32);
  (v46)(v51, v27, v49);
  v60 = 1;
  v29 = v25;
  v30 = v23;
  v31 = v29;
  sub_1C2F76E0C();
  v32 = v30;
  v33 = v43;
  (v46)(v26 + v43[5], v32, v28);
  v59 = 2;
  v46 = 0;
  v34 = v26;
  *(v26 + v33[6]) = sub_1C2F76DEC() & 1;
  v58 = 3;
  v35 = sub_1C2F76DEC();
  v36 = v48;
  *(v34 + v33[7]) = v35 & 1;
  sub_1C2F75A5C();
  v57 = 4;
  sub_1C2F173C0(&qword_1EC076488, MEMORY[0x1E6968FB0]);
  sub_1C2F76DCC();
  sub_1C2F09460(v42, v34 + v33[8], &qword_1EC076458, &unk_1C2F7B430);
  v56 = 5;
  v37 = sub_1C2F76DBC();
  v38 = (v34 + v33[9]);
  *v38 = v37;
  v38[1] = v39;
  v54 = 6;
  sub_1C2F17524();
  sub_1C2F76DCC();
  *(v34 + v33[10]) = v55;
  v52 = 7;
  sub_1C2F76DCC();
  (*(v36 + 8))(v50, v31);
  *(v34 + v33[11]) = v53;
  sub_1C2F17578(v34, v44, type metadata accessor for IntelligenceActivityAttributes);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1C2F101E4(v34, type metadata accessor for IntelligenceActivityAttributes);
}

uint64_t IntelligenceActivityAttributes.ContentState.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076410, &qword_1C2F794E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_1C2F76C6C();
  MEMORY[0x1C6928D30](0xD000000000000035, 0x80000001C2F7E8E0);
  sub_1C2EF6A3C(v0, v4, &qword_1EC076410, &qword_1C2F794E0);
  v5 = sub_1C2F766FC();
  MEMORY[0x1C6928D30](v5);

  MEMORY[0x1C6928D30](41, 0xE100000000000000);
  return v7[0];
}

uint64_t IntelligenceActivityAttributes.ContentState.description.getter()
{
  v1 = sub_1C2F759DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076410, &qword_1C2F794E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1C2F76C6C();
  MEMORY[0x1C6928D30](0xD000000000000045, 0x80000001C2F7E920);
  sub_1C2EF6A3C(v0, v9, &qword_1EC076410, &qword_1C2F794E0);
  v10 = sub_1C2F759EC();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);
  if (v12 == 1)
  {
    sub_1C2F0A8D8(v9, &qword_1EC076410, &qword_1C2F794E0);
    v13 = 0;
  }

  else
  {
    sub_1C2F759BC();
    (*(v11 + 8))(v9, v10);
    v13 = sub_1C2F759CC();
    (*(v2 + 8))(v5, v1);
  }

  v16 = v13;
  v17 = v12 == 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076498, &qword_1C2F79510);
  v14 = sub_1C2F766FC();
  MEMORY[0x1C6928D30](v14);

  MEMORY[0x1C6928D30](41, 0xE100000000000000);
  return v18;
}

uint64_t sub_1C2F16A00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076410, &qword_1C2F794E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_1C2F76C6C();
  MEMORY[0x1C6928D30](0xD000000000000035, 0x80000001C2F7E8E0);
  sub_1C2EF6A3C(v0, v4, &qword_1EC076410, &qword_1C2F794E0);
  v5 = sub_1C2F766FC();
  MEMORY[0x1C6928D30](v5);

  MEMORY[0x1C6928D30](41, 0xE100000000000000);
  return v7[0];
}

uint64_t IntelligenceActivityAttributes.description.getter()
{
  sub_1C2F76C6C();
  MEMORY[0x1C6928D30](0xD000000000000026, 0x80000001C2F7E970);
  sub_1C2F759EC();
  sub_1C2F173C0(&qword_1EC0764A0, MEMORY[0x1E6968848]);
  v1 = sub_1C2F76EEC();
  MEMORY[0x1C6928D30](v1);

  MEMORY[0x1C6928D30](0x746974627573202CLL, 0xEC000000203A656CLL);
  v2 = v0 + *(type metadata accessor for IntelligenceActivityAttributes(0) + 20);
  v3 = sub_1C2F76EEC();
  MEMORY[0x1C6928D30](v3);

  MEMORY[0x1C6928D30](41, 0xE100000000000000);
  return 0;
}

uint64_t _s20CommunicationsUICore30IntelligenceActivityAttributesV12ContentStateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2F759EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v60[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076410, &qword_1C2F794E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = &v60[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v60[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0764D8, &qword_1C2F799C8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v64 = &v60[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v60[-v19];
  v21 = *(v18 + 48);
  v66 = a1;
  v22 = a1;
  v23 = v5;
  sub_1C2EF6A3C(v22, &v60[-v19], &qword_1EC076410, &qword_1C2F794E0);
  v65 = a2;
  sub_1C2EF6A3C(a2, &v20[v21], &qword_1EC076410, &qword_1C2F794E0);
  v24 = *(v5 + 48);
  if (v24(v20, 1, v4) != 1)
  {
    sub_1C2EF6A3C(v20, v13, &qword_1EC076410, &qword_1C2F794E0);
    if (v24(&v20[v21], 1, v4) != 1)
    {
      v25 = *(v5 + 32);
      v26 = v63;
      v25(v63, &v20[v21], v4);
      sub_1C2F173C0(&qword_1EC0764E0, MEMORY[0x1E6968848]);
      v61 = sub_1C2F7662C();
      v27 = *(v23 + 8);
      v27(v26, v4);
      v27(v13, v4);
      sub_1C2F0A8D8(v20, &qword_1EC076410, &qword_1C2F794E0);
      if ((v61 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_8;
    }

    (*(v5 + 8))(v13, v4);
LABEL_6:
    sub_1C2F0A8D8(v20, &qword_1EC0764D8, &qword_1C2F799C8);
    goto LABEL_36;
  }

  if (v24(&v20[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C2F0A8D8(v20, &qword_1EC076410, &qword_1C2F794E0);
LABEL_8:
  v28 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
  v29 = v28[5];
  v30 = *(v14 + 48);
  v31 = v64;
  sub_1C2EF6A3C(v66 + v29, v64, &qword_1EC076410, &qword_1C2F794E0);
  v32 = v65 + v29;
  v33 = v65;
  sub_1C2EF6A3C(v32, &v31[v30], &qword_1EC076410, &qword_1C2F794E0);
  if (v24(v31, 1, v4) == 1)
  {
    if (v24(&v31[v30], 1, v4) == 1)
    {
      sub_1C2F0A8D8(v31, &qword_1EC076410, &qword_1C2F794E0);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v34 = v62;
  sub_1C2EF6A3C(v31, v62, &qword_1EC076410, &qword_1C2F794E0);
  if (v24(&v31[v30], 1, v4) == 1)
  {
    (*(v23 + 8))(v34, v4);
LABEL_13:
    sub_1C2F0A8D8(v31, &qword_1EC0764D8, &qword_1C2F799C8);
    goto LABEL_36;
  }

  v35 = &v31[v30];
  v36 = v31;
  v37 = v63;
  (*(v23 + 32))(v63, v35, v4);
  sub_1C2F173C0(&qword_1EC0764E0, MEMORY[0x1E6968848]);
  v38 = sub_1C2F7662C();
  v39 = *(v23 + 8);
  v39(v37, v4);
  v39(v34, v4);
  sub_1C2F0A8D8(v36, &qword_1EC076410, &qword_1C2F794E0);
  if (v38)
  {
LABEL_15:
    v40 = v28[6];
    v41 = v66 + v40;
    v42 = *(v66 + v40 + 8);
    v43 = v33 + v40;
    v44 = *(v43 + 8);
    if (v42)
    {
      if (!v44)
      {
        goto LABEL_35;
      }

      v45 = *(v43 + 16);
      v46 = *(v41 + 16);
      if (*v41 != *v43 || v42 != v44)
      {
        v47 = *(v41 + 8);
        v48 = *(v43 + 8);
        if ((sub_1C2F76EFC() & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      if ((v46 ^ v45))
      {
        goto LABEL_21;
      }

      if ((v46 ^ v45) >= 0x100)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v44)
      {
        goto LABEL_35;
      }
    }

    v49 = v28[7];
    v50 = v66 + v49;
    v51 = *(v66 + v49 + 8);
    v52 = v33 + v49;
    v53 = *(v52 + 8);
    if (v51)
    {
      if (v53)
      {
        v54 = *(v52 + 16);
        v55 = *(v50 + 16);
        if (*v50 != *v52 || v51 != v53) && (v56 = *(v50 + 8), v57 = *(v52 + 8), (sub_1C2F76EFC() & 1) == 0) || ((v55 ^ v54))
        {
LABEL_21:
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRelease_n();
          goto LABEL_36;
        }

        if ((v55 ^ v54) >= 0x100)
        {
          goto LABEL_36;
        }

LABEL_40:
        v58 = *(v66 + v28[8]) ^ *(v33 + v28[8]) ^ 1;
        return v58 & 1;
      }
    }

    else if (!v53)
    {

      goto LABEL_40;
    }

LABEL_35:
  }

LABEL_36:
  v58 = 0;
  return v58 & 1;
}

unint64_t sub_1C2F17318()
{
  result = qword_1EC076420;
  if (!qword_1EC076420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076420);
  }

  return result;
}

unint64_t sub_1C2F1736C()
{
  result = qword_1EC076430;
  if (!qword_1EC076430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076430);
  }

  return result;
}

uint64_t sub_1C2F173C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C2F17408()
{
  result = qword_1EC076450;
  if (!qword_1EC076450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076450);
  }

  return result;
}

unint64_t sub_1C2F1747C()
{
  result = qword_1EC076468;
  if (!qword_1EC076468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076468);
  }

  return result;
}

unint64_t sub_1C2F174D0()
{
  result = qword_1EC076478;
  if (!qword_1EC076478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076478);
  }

  return result;
}

unint64_t sub_1C2F17524()
{
  result = qword_1EC076490;
  if (!qword_1EC076490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076490);
  }

  return result;
}

uint64_t sub_1C2F17578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1C2F177B8()
{
  sub_1C2F759EC();
  if (v0 <= 0x3F)
  {
    sub_1C2F1799C(319, &qword_1EDEBDA68, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      sub_1C2F179F0(319, &unk_1EDEBD798);
      if (v2 <= 0x3F)
      {
        sub_1C2F179F0(319, &qword_1EDEBD938);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C2F178DC()
{
  sub_1C2F1799C(319, &qword_1EDEBDA70, MEMORY[0x1E6968848]);
  if (v0 <= 0x3F)
  {
    sub_1C2F179F0(319, &qword_1EDEBDA60);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C2F1799C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C2F76ADC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C2F179F0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C2F76ADC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for IntelligenceActivityAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IntelligenceActivityAttributes.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceActivityAttributes.ContentState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IntelligenceActivityAttributes.ContentState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C2F17CE0()
{
  result = qword_1EC0764A8;
  if (!qword_1EC0764A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0764A8);
  }

  return result;
}

unint64_t sub_1C2F17D38()
{
  result = qword_1EC0764B0;
  if (!qword_1EC0764B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0764B0);
  }

  return result;
}

unint64_t sub_1C2F17D90()
{
  result = qword_1EC0764B8;
  if (!qword_1EC0764B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0764B8);
  }

  return result;
}

unint64_t sub_1C2F17DE8()
{
  result = qword_1EC0764C0;
  if (!qword_1EC0764C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0764C0);
  }

  return result;
}

unint64_t sub_1C2F17E40()
{
  result = qword_1EC0764C8;
  if (!qword_1EC0764C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0764C8);
  }

  return result;
}

unint64_t sub_1C2F17E98()
{
  result = qword_1EC0764D0;
  if (!qword_1EC0764D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0764D0);
  }

  return result;
}

uint64_t sub_1C2F17EEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D7953656C746974 && a2 == 0xEB000000006C6F62 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xEE006C6F626D7953 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001C2F7E9A0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1C2F76EFC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1C2F180AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65695673776F6873 && a2 == 0xEF6E6F7474754277 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7379616C70736964 && a2 == 0xEE00726174617641 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x67616D496C6C6163 && a2 == 0xEC0000004C525565 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C2F7E9C0 == a2 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x797453656C746974 && a2 == 0xEA0000000000656CLL || (sub_1C2F76EFC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xED0000656C797453)
  {

    return 7;
  }

  else
  {
    v6 = sub_1C2F76EFC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t BlocklistViewModel.knownEntries.getter()
{
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v1 = *(v0 + 56);
  swift_getKeyPath();
  sub_1C2F1BF24(&qword_1EC0764F0, type metadata accessor for SettingsPersonListViewModel);

  sub_1C2F75DAC();

  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_1C2F184D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);

  sub_1C2F75DAC();

  swift_beginAccess();
  v4 = *(v3 + 56);

  sub_1C2F2958C(v2);
}

uint64_t BlocklistViewModel.knownEntries.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v3 = *(v1 + 56);

  sub_1C2F2958C(a1);
}

uint64_t BlocklistViewModel.knownPersonListViewModel.getter()
{
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v1 = *(v0 + 56);
}

void (*BlocklistViewModel.knownEntries.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  swift_getKeyPath();
  v4[9] = OBJC_IVAR____TtC20CommunicationsUICore18BlocklistViewModel___observationRegistrar;
  *v4 = v1;
  v4[10] = sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v5 = *(v1 + 56);
  swift_getKeyPath();
  v4[3] = v5;
  sub_1C2F1BF24(&qword_1EC0764F0, type metadata accessor for SettingsPersonListViewModel);

  sub_1C2F75DAC();

  swift_beginAccess();
  v6 = *(v5 + 16);

  v4[6] = v6;
  return sub_1C2F188FC;
}

void sub_1C2F188FC(void **a1, char a2)
{
  v3 = *a1;
  v5 = *a1 + 6;
  v4 = *v5;
  swift_getKeyPath();
  v6 = v3[8];
  v7 = v3[9];
  v3[7] = v6;
  v8 = v3[10];
  if (a2)
  {

    sub_1C2F75DAC();

    v9 = *(v6 + 56);

    sub_1C2F2958C(v4);

    v10 = *v5;
  }

  else
  {
    v11 = v3[10];
    sub_1C2F75DAC();

    v12 = *(v6 + 56);

    sub_1C2F2958C(v4);
  }

  free(v3);
}

uint64_t BlocklistViewModel.unknownEntries.getter()
{
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v1 = *(v0 + 64);
  swift_getKeyPath();
  sub_1C2F1BF24(&qword_1EC0764F0, type metadata accessor for SettingsPersonListViewModel);

  sub_1C2F75DAC();

  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t BlocklistViewModel.unknownEntries.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C2F75C8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1C2F7669C();
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v29);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  v14 = sub_1C2F7667C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  swift_getKeyPath();
  v34 = v1;
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v16 = *(v1 + 64);

  sub_1C2F2958C(a1);

  swift_getKeyPath();
  v33 = v2;
  sub_1C2F75DAC();

  swift_beginAccess();
  v17 = *(v2 + 56);

  sub_1C2F7666C();
  sub_1C2F7665C();
  swift_getKeyPath();
  v32 = v2;
  sub_1C2F75DAC();

  v18 = *(v2 + 64);
  swift_getKeyPath();
  v32 = v18;
  sub_1C2F1BF24(&qword_1EC0764F0, type metadata accessor for SettingsPersonListViewModel);

  sub_1C2F75DAC();

  swift_beginAccess();
  v19 = *(v18 + 16);

  v20 = *(v19 + 16);

  v31 = v20;
  sub_1C2F7664C();
  sub_1C2F7665C();
  sub_1C2F7668C();
  v21 = v29;
  (*(v7 + 16))(v11, v13, v29);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  sub_1C2F75BFC();
  v24 = sub_1C2F766EC();
  v26 = v25;
  (*(v7 + 8))(v13, v21);
  sub_1C2F299FC(v24, v26);
}

uint64_t BlocklistViewModel.unknownPersonListViewModel.getter()
{
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v1 = *(v0 + 64);
}

void (*BlocklistViewModel.unknownEntries.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  swift_getKeyPath();
  *v4 = v1;
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v5 = *(v1 + 64);
  swift_getKeyPath();
  v4[3] = v5;
  sub_1C2F1BF24(&qword_1EC0764F0, type metadata accessor for SettingsPersonListViewModel);

  sub_1C2F75DAC();

  swift_beginAccess();
  v6 = *(v5 + 16);

  v4[6] = v6;
  return sub_1C2F19238;
}

void sub_1C2F19238(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {

    BlocklistViewModel.unknownEntries.setter(v5);
    v6 = *v3;
  }

  else
  {
    BlocklistViewModel.unknownEntries.setter(*v3);
  }

  free(v2);
}

uint64_t BlocklistViewModel.presentContactPicker.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_1C2F19360@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1C2F1D00C;
  a2[1] = v6;
}

uint64_t sub_1C2F194A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

void (*BlocklistViewModel.presentContactPicker.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20CommunicationsUICore18BlocklistViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  swift_beginAccess();
  return sub_1C2F19654;
}

uint64_t BlocklistViewModel.deleteEntryAction.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v2 = *(v0 + 32);
  v1 = *(v4 + 40);

  return v2;
}

uint64_t sub_1C2F19724@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1C2F1CFDC;
  a2[1] = v6;
}

uint64_t sub_1C2F1984C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);

  sub_1C2F75D9C();
}

uint64_t sub_1C2F19974()
{
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75D9C();
}

uint64_t sub_1C2F19A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 40);
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

void (*BlocklistViewModel.deleteEntryAction.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20CommunicationsUICore18BlocklistViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  swift_beginAccess();
  return sub_1C2F19BF0;
}

uint64_t sub_1C2F19BFC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v2 = *(v0 + 56);
  swift_getKeyPath();

  sub_1C2F75DAC();

  swift_beginAccess();
  v3 = *(v0 + 48);
  swift_beginAccess();
  if (v3 == *(v2 + 137))
  {
    *(v2 + 137) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F1BF24(&qword_1EC0764F0, type metadata accessor for SettingsPersonListViewModel);
    sub_1C2F75D9C();
  }

  swift_getKeyPath();
  sub_1C2F75DAC();

  swift_beginAccess();
  v5 = *(v1 + 64);
  swift_getKeyPath();

  sub_1C2F75DAC();

  v6 = *(v1 + 48);
  swift_beginAccess();
  if (v6 == *(v5 + 137))
  {
    *(v5 + 137) = v6;
  }

  else
  {
    v7 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v7);
    sub_1C2F1BF24(&qword_1EC0764F0, type metadata accessor for SettingsPersonListViewModel);
    sub_1C2F75D9C();
  }
}

uint64_t BlocklistViewModel.customEditMode.getter()
{
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  return *(v0 + 48);
}

uint64_t (*sub_1C2F1A048(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C2F1A09C;
}

uint64_t sub_1C2F1A09C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1C2F19BFC();
  }

  return result;
}

uint64_t sub_1C2F1A0D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t BlocklistViewModel.customEditMode.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 48) == v2)
  {
    *(v1 + 48) = v2;
    return sub_1C2F19BFC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
    sub_1C2F75D9C();
  }
}

void (*BlocklistViewModel.customEditMode.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore18BlocklistViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F1A048(v4);
  return sub_1C2F1A414;
}

void sub_1C2F1A414(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1C2F75DBC();

  free(v1);
}

uint64_t sub_1C2F1A4A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1C2F1A568(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return BlocklistViewModel.knownPersonListViewModel.setter(v4);
}

uint64_t type metadata accessor for BlocklistViewModel()
{
  result = qword_1EC076520;
  if (!qword_1EC076520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BlocklistViewModel.knownPersonListViewModel.setter(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 56) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F1A708(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 56);
  *(a1 + 56) = a2;
}

void (*BlocklistViewModel.knownPersonListViewModel.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20CommunicationsUICore18BlocklistViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  swift_beginAccess();
  return sub_1C2F1A8B0;
}

uint64_t sub_1C2F1A8BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_1C2F1A97C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return BlocklistViewModel.unknownPersonListViewModel.setter(v4);
}

uint64_t BlocklistViewModel.unknownPersonListViewModel.setter(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 64) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F1AAD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 64);
  *(a1 + 64) = a2;
}

void (*BlocklistViewModel.unknownPersonListViewModel.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20CommunicationsUICore18BlocklistViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  swift_beginAccess();
  return sub_1C2F1AC78;
}

void sub_1C2F1AC84(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1C2F75DBC();

  free(v1);
}

uint64_t sub_1C2F1AD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v110 = a6;
  v105 = a5;
  v106 = a3;
  v108 = a2;
  v100 = a1;
  v10 = sub_1C2F7667C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1C2F75C8C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C2F7669C();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v87 - v22;
  *(v6 + 48) = 0;
  sub_1C2F75DDC();
  v107 = v6;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  v104 = a4;
  *(v6 + 32) = a5;
  *(v6 + 40) = v110;
  swift_retain_n();

  sub_1C2F7663C();
  v24 = v17[2];
  v24(v21, v23, v16);
  v25 = v24;
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v111 = ObjCClassFromMetadata;
  v27 = objc_opt_self();
  v28 = [v27 bundleForClass_];
  sub_1C2F75BFC();
  v29 = sub_1C2F766EC();
  v98 = v30;
  v99 = v29;
  v112 = v17[1];
  v112(v23, v16);
  sub_1C2F7666C();
  sub_1C2F7665C();
  v113 = *(v108 + 16);
  sub_1C2F7664C();
  sub_1C2F7665C();
  sub_1C2F7668C();
  v25(v21, v23, v16);
  v31 = v111;
  v32 = [v27 bundleForClass_];
  v109 = v15;
  sub_1C2F75BFC();
  v94 = sub_1C2F766EC();
  v93 = v33;
  v34 = v16;
  v35 = v16;
  v36 = v112;
  v112(v23, v34);
  sub_1C2F7663C();
  v25(v21, v23, v35);
  v37 = [v27 bundleForClass_];
  sub_1C2F75BFC();
  v92 = sub_1C2F766EC();
  v91 = v38;
  v36(v23, v35);
  v97 = "ADD_BLOCKED_CONTACT";
  sub_1C2F7663C();
  v102 = v25;
  v25(v21, v23, v35);
  v39 = v27;
  v101 = v27;
  v40 = v111;
  v41 = [v27 bundleForClass_];
  sub_1C2F75BFC();
  v90 = sub_1C2F766EC();
  v89 = v42;
  v43 = v112;
  v112(v23, v35);
  v103 = v17 + 1;
  v96 = "UNBLOCK_SWIPE_ACTION";
  sub_1C2F7663C();
  v25(v21, v23, v35);
  v44 = [v39 bundleForClass_];
  sub_1C2F75BFC();
  v45 = sub_1C2F766EC();
  v47 = v46;
  v43(v23, v35);
  v95 = type metadata accessor for SettingsPersonListViewModel();
  v48 = *(v95 + 48);
  v49 = *(v95 + 52);
  v50 = swift_allocObject();
  *(v50 + 137) = 0;
  sub_1C2F75DDC();
  v51 = v106;
  *(v50 + 16) = v100;
  *(v50 + 24) = v51;
  v52 = v105;
  *(v50 + 32) = v104;
  *(v50 + 40) = v52;
  v54 = v98;
  v53 = v99;
  *(v50 + 48) = v110;
  *(v50 + 56) = v53;
  v55 = v94;
  *(v50 + 64) = v54;
  *(v50 + 72) = v55;
  v56 = v92;
  *(v50 + 80) = v93;
  *(v50 + 88) = v56;
  v57 = v90;
  *(v50 + 96) = v91;
  *(v50 + 104) = v57;
  *(v50 + 112) = v89;
  *(v50 + 120) = v45;
  *(v50 + 128) = v47;
  *(v50 + 136) = 0;
  *(v107 + 56) = v50;

  sub_1C2F7663C();
  v58 = v102;
  v102(v21, v23, v35);
  v59 = v101;
  v60 = v111;
  v61 = [v101 bundleForClass_];
  sub_1C2F75BFC();
  v62 = sub_1C2F766EC();
  v99 = v63;
  v100 = v62;
  v112(v23, v35);
  sub_1C2F7663C();
  v58(v21, v23, v35);
  v64 = [v59 bundleForClass_];
  sub_1C2F75BFC();
  v98 = sub_1C2F766EC();
  v94 = v65;
  v88 = v35;
  v66 = v112;
  v112(v23, v35);
  sub_1C2F7663C();
  v67 = v102;
  v102(v21, v23, v35);
  v68 = v59;
  v69 = v111;
  v70 = [v68 bundleForClass_];
  sub_1C2F75BFC();
  v97 = sub_1C2F766EC();
  v93 = v71;
  v72 = v88;
  v66(v23, v88);
  sub_1C2F7663C();
  v67(v21, v23, v72);
  v73 = [v101 bundleForClass_];
  sub_1C2F75BFC();
  v74 = sub_1C2F766EC();
  v76 = v75;
  v112(v23, v72);
  v77 = *(v95 + 48);
  v78 = *(v95 + 52);
  v79 = swift_allocObject();
  *(v79 + 137) = 0;
  sub_1C2F75DDC();

  v80 = v106;
  *(v79 + 16) = v108;
  *(v79 + 24) = v80;
  v81 = v105;
  *(v79 + 32) = v104;
  *(v79 + 40) = v81;
  v82 = v99;
  v83 = v100;
  *(v79 + 48) = v110;
  *(v79 + 56) = v83;
  *(v79 + 64) = v82;
  *(v79 + 72) = 0;
  v84 = v98;
  *(v79 + 80) = 0xE000000000000000;
  *(v79 + 88) = v84;
  v85 = v97;
  *(v79 + 96) = v94;
  *(v79 + 104) = v85;
  *(v79 + 112) = v93;
  *(v79 + 120) = v74;
  *(v79 + 128) = v76;
  *(v79 + 136) = 0;
  result = v107;
  *(v107 + 64) = v79;
  return result;
}

uint64_t BlocklistViewModel.__allocating_init(entries:presentContactPicker:deleteEntryAction:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 16);
  v58 = result;
  v60 = v5;
  if (!v5)
  {
    v59 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v6 = result;
  v7 = 0;
  v8 = result + 64;
  v61 = v5 - 1;
  v59 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = (v8 + 40 * v7);
    v10 = v7;
    while (1)
    {
      if (v10 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      v11 = *(v9 - 2);
      if (v11)
      {
        break;
      }

LABEL_4:
      ++v10;
      v9 += 5;
      if (v5 == v10)
      {
        goto LABEL_16;
      }
    }

    v13 = *(v9 - 1);
    v12 = *v9;
    v15 = *(v9 - 4);
    v14 = *(v9 - 3);
    v16 = v13;

    if (sub_1C2F7674C() <= 0)
    {

      v5 = v60;
      goto LABEL_4;
    }

    v17 = v59;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C2F08774(0, *(v59 + 16) + 1, 1);
      v17 = v59;
    }

    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_1C2F08774((v18 > 1), v19 + 1, 1);
      v17 = v59;
    }

    v7 = v10 + 1;
    *(v17 + 16) = v19 + 1;
    v59 = v17;
    v20 = (v17 + 40 * v19);
    v20[4] = v15;
    v20[5] = v14;
    v20[6] = v11;
    v20[7] = v13;
    v20[8] = v12;
    v6 = v58;
    v5 = v60;
  }

  while (v61 != v10);
LABEL_16:
  v21 = v59;
  v22 = *(v59 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v59 + 64;
    v25 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v23 >= *(v21 + 16))
      {
        goto LABEL_52;
      }

      v26 = *v24;
      v27 = *(*v24 + 16);
      v28 = *(v25 + 16);
      v29 = v28 + v27;
      if (__OFADD__(v28, v27))
      {
        goto LABEL_53;
      }

      v30 = *v24;

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v29 <= *(v25 + 24) >> 1)
      {
        if (!*(v26 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v28 <= v29)
        {
          v31 = v28 + v27;
        }

        else
        {
          v31 = v28;
        }

        result = sub_1C2F1C554(result, v31, 1, v25);
        v25 = result;
        if (!*(v26 + 16))
        {
LABEL_18:

          v21 = v59;
          if (v27)
          {
            goto LABEL_54;
          }

          goto LABEL_19;
        }
      }

      if ((*(v25 + 24) >> 1) - *(v25 + 16) < v27)
      {
        goto LABEL_55;
      }

      swift_arrayInitWithCopy();

      v21 = v59;
      if (v27)
      {
        v32 = *(v25 + 16);
        v33 = __OFADD__(v32, v27);
        v34 = v32 + v27;
        if (v33)
        {
          goto LABEL_56;
        }

        *(v25 + 16) = v34;
      }

LABEL_19:
      ++v23;
      v24 += 40;
      if (v22 == v23)
      {
        goto LABEL_35;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_35:
  sub_1C2F1CCD8(v25);

  if (!v60)
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_49:

    v48 = *(v51 + 48);
    v49 = *(v51 + 52);
    v50 = swift_allocObject();
    sub_1C2F1AD08(v59, v37, a2, a3, a4, a5);
    return v50;
  }

  v35 = 0;
  result = v58;
  v36 = v58 + 64;
  v37 = MEMORY[0x1E69E7CC0];
LABEL_37:
  v38 = (v36 + 40 * v35);
  v39 = v35;
  while (v39 < *(result + 16))
  {
    v56 = *(v38 - 1);
    v57 = *(v38 - 2);
    v40 = *v38;
    v41 = v39 + 1;
    v42 = *(v38 - 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0764F8, &qword_1C2F79AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076500, &qword_1C2F79AC8);
    sub_1C2EF7414(&qword_1EC076508, &qword_1EC0764F8, &qword_1C2F79AC0);
    sub_1C2EF7414(&qword_1EC076510, &qword_1EC076500, &qword_1C2F79AC8);
    sub_1C2F1CD80();
    if ((sub_1C2F769BC() & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C2F08774(0, *(v37 + 16) + 1, 1);
      }

      v36 = v58 + 64;
      v35 = v39 + 1;
      v44 = v56;
      v43 = v57;
      v46 = *(v37 + 16);
      v45 = *(v37 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1C2F08774((v45 > 1), v46 + 1, 1);
        v44 = v56;
        v43 = v57;
      }

      *(v37 + 16) = v46 + 1;
      v47 = v37 + 40 * v46;
      *(v47 + 32) = v43;
      *(v47 + 48) = v44;
      *(v47 + 64) = v40;
      result = v58;
      if (v60 - 1 != v39)
      {
        goto LABEL_37;
      }

      goto LABEL_49;
    }

    v38 += 5;
    ++v39;
    result = v58;
    if (v60 == v41)
    {
      goto LABEL_49;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

Swift::Void __swiftcall BlocklistViewModel.update(with:unknownEntries:)(Swift::OpaquePointer with, Swift::OpaquePointer unknownEntries)
{
  swift_getKeyPath();
  sub_1C2F1BF24(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v3 = *(v2 + 56);

  sub_1C2F2958C(v4);

  BlocklistViewModel.unknownEntries.setter(v5);
}

char *BlocklistViewModel.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = *(v0 + 8);

  v5 = OBJC_IVAR____TtC20CommunicationsUICore18BlocklistViewModel___observationRegistrar;
  v6 = sub_1C2F75DEC();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  return v0;
}

uint64_t BlocklistViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = *(v0 + 8);

  v5 = OBJC_IVAR____TtC20CommunicationsUICore18BlocklistViewModel___observationRegistrar;
  v6 = sub_1C2F75DEC();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F1BE38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F1BF24(&qword_1EC0764F0, type metadata accessor for SettingsPersonListViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1C2F1BEF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C2F2958C(v4);
}

uint64_t sub_1C2F1BF24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1C2F1BFE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 48) = v2;
  return sub_1C2F19BFC();
}

size_t sub_1C2F1C0E0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1C2F1C2F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E20, &qword_1C2F79BB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C2F1C420(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1C2F1C554(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076580, &qword_1C2F79BE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C2F1C670(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076570, &qword_1C2F79BD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C2F1C78C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076560, &qword_1C2F79BB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1C2F1C890(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E00, &qword_1C2F79BC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1C2F1C9D8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1C2F1CBB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076550, &qword_1C2F79BA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C2F1CCD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C2F1CEE4();
  result = MEMORY[0x1C6928F70](v2, &type metadata for SettingsPersonHandle, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v9[0] = *v5;
      v9[1] = v6;
      v10 = *(v5 + 32);
      sub_1C2F1CF38(v9, &v7);
      sub_1C2F57C18(&v7, v9);

      v5 += 40;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1C2F1CD80()
{
  result = qword_1EC076518;
  if (!qword_1EC076518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076518);
  }

  return result;
}

uint64_t keypath_set_3Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1C2F1CE10()
{
  result = sub_1C2F75DEC();
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

unint64_t sub_1C2F1CEE4()
{
  result = qword_1EC076578;
  if (!qword_1EC076578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076578);
  }

  return result;
}

uint64_t sub_1C2F1CFB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C2F1CFDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t FTMenuContextMenuView.ContextMenuItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2F75AEC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FTMenuContextMenuView.ContextMenuItem.init(primary:nested:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C2F75ADC();
  result = type metadata accessor for FTMenuContextMenuView.ContextMenuItem(0);
  *(a3 + *(result + 20)) = a1;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t sub_1C2F1D130@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2F75AEC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FTMenuContextMenuView.body.getter()
{
  v1 = *v0;
  *(swift_allocObject() + 16) = v1;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076590, &qword_1C2F79C30);
  sub_1C2F75AEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076598, &qword_1C2F79C38);
  sub_1C2EF7414(&qword_1EC0765A0, &qword_1EC076590, &qword_1C2F79C30);
  sub_1C2F1D820();
  sub_1C2F1E1CC(&qword_1EC0765D0, type metadata accessor for FTMenuContextMenuView.ContextMenuItem);
  return sub_1C2F764BC();
}

uint64_t sub_1C2F1D2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0765C8, &qword_1C2F79C48);
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v25 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076618, &qword_1C2F79E58);
  v9 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0765B8, &qword_1C2F79C40);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  v17 = type metadata accessor for FTMenuContextMenuView.ContextMenuItem(0);
  v18 = *(a1 + *(v17 + 24));
  if (v18 >> 62)
  {
    v21 = v17;
    v22 = sub_1C2F76BBC();
    v17 = v21;
    if (v22)
    {
      goto LABEL_3;
    }
  }

  else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v25 = &v25;
    v19 = MEMORY[0x1EEE9AC00](v17);
    *(&v25 - 2) = a1;
    *(&v25 - 1) = a2;
    MEMORY[0x1EEE9AC00](v19);
    *(&v25 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076620, &qword_1C2F79E60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076628, &qword_1C2F79E68);
    sub_1C2EF7414(&qword_1EC076630, &qword_1EC076620, &qword_1C2F79E60);
    sub_1C2F209C8();
    sub_1C2F7638C();
    (*(v13 + 16))(v11, v16, v12);
    swift_storeEnumTagMultiPayload();
    sub_1C2EF7414(&qword_1EC0765B0, &qword_1EC0765B8, &qword_1C2F79C40);
    sub_1C2EF7414(&qword_1EC0765C0, &qword_1EC0765C8, &qword_1C2F79C48);
    sub_1C2F7633C();
    return (*(v13 + 8))(v16, v12);
  }

  v23 = *(a1 + *(v17 + 20));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076620, &qword_1C2F79E60);
  sub_1C2EF7414(&qword_1EC076630, &qword_1EC076620, &qword_1C2F79E60);
  sub_1C2F7649C();
  v24 = v28;
  (*(v5 + 16))(v11, v8, v28);
  swift_storeEnumTagMultiPayload();
  sub_1C2EF7414(&qword_1EC0765B0, &qword_1EC0765B8, &qword_1C2F79C40);
  sub_1C2EF7414(&qword_1EC0765C0, &qword_1EC0765C8, &qword_1C2F79C48);
  sub_1C2F7633C();
  return (*(v5 + 8))(v8, v24);
}

unint64_t sub_1C2F1D820()
{
  result = qword_1EC0765A8;
  if (!qword_1EC0765A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC076598, &qword_1C2F79C38);
    sub_1C2EF7414(&qword_1EC0765B0, &qword_1EC0765B8, &qword_1C2F79C40);
    sub_1C2EF7414(&qword_1EC0765C0, &qword_1EC0765C8, &qword_1C2F79C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0765A8);
  }

  return result;
}

uint64_t sub_1C2F1D904(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + *(type metadata accessor for FTMenuContextMenuView.ContextMenuItem(0) + 24));
  *(swift_allocObject() + 16) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076650, &unk_1C2F79EA0);
  sub_1C2F75AEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0765C8, &qword_1C2F79C48);
  sub_1C2EF7414(&qword_1EC076658, &qword_1EC076650, &unk_1C2F79EA0);
  sub_1C2EF7414(&qword_1EC0765C0, &qword_1EC0765C8, &qword_1C2F79C48);
  sub_1C2F1E1CC(&qword_1EC076660, type metadata accessor for FTMenuItem);
  return sub_1C2F764BC();
}

uint64_t sub_1C2F1DAA8(uint64_t *a1)
{
  v1 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076620, &qword_1C2F79E60);
  sub_1C2EF7414(&qword_1EC076630, &qword_1EC076620, &qword_1C2F79E60);

  return sub_1C2F7649C();
}

uint64_t sub_1C2F1DB78(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for FTMenuContextMenuView.ContextMenuItem(0) + 20));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076640, &qword_1C2F79E70);
  v3 = sub_1C2F20A98();
  v4 = MEMORY[0x1E6981148];
  v5 = MEMORY[0x1E6981138];

  return MEMORY[0x1EEDDC7A0](sub_1C2F20B48, v1, sub_1C2F20B4C, v1, v4, v2, v5, v3);
}

uint64_t sub_1C2F1DC2C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C2F1E1CC(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v2 = a1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction;
  swift_beginAccess();
  v4 = *v2;
  v3 = *(v2 + 8);

  v4(v5);
}

uint64_t sub_1C2F1DD04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076640, &qword_1C2F79E70);
  v3 = sub_1C2F20A98();
  v4 = MEMORY[0x1E6981148];
  v5 = MEMORY[0x1E6981138];

  return MEMORY[0x1EEDDC7A0](sub_1C2F20A88, a1, sub_1C2F20A90, a1, v4, v2, v5, v3);
}

uint64_t sub_1C2F1DDCC()
{
  v1 = *v0;
  *(swift_allocObject() + 16) = v1;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076590, &qword_1C2F79C30);
  sub_1C2F75AEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076598, &qword_1C2F79C38);
  sub_1C2EF7414(&qword_1EC0765A0, &qword_1EC076590, &qword_1C2F79C30);
  sub_1C2F1D820();
  sub_1C2F1E1CC(&qword_1EC0765D0, type metadata accessor for FTMenuContextMenuView.ContextMenuItem);
  return sub_1C2F764BC();
}

id sub_1C2F1DF24()
{
  type metadata accessor for FTMenuViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDEBCF90 = result;
  return result;
}

id static FTMenuViewModel.bundle.getter()
{
  if (qword_1EDEBCF88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDEBCF90;

  return v1;
}

uint64_t sub_1C2F1E028@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F1E1CC(&qword_1EC0765D8, type metadata accessor for FTMenuViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1C2F1E0E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C2F1E234(v4);
}

uint64_t sub_1C2F1E114()
{
  swift_getKeyPath();
  sub_1C2F1E1CC(&qword_1EC0765D8, type metadata accessor for FTMenuViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_1C2F1E1CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2F1E234(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v5 = sub_1C2F1FAC8(v4, a1, &OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, MEMORY[0x1E6969588]);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F1E1CC(&qword_1EC0765D8, type metadata accessor for FTMenuViewModel);
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F1E398(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

void (*sub_1C2F1E400(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore15FTMenuViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2F1E1CC(&qword_1EC0765D8, type metadata accessor for FTMenuViewModel);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F1DFD8();
  return sub_1C2F1E538;
}

void sub_1C2F1E538(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1C2F75DBC();

  free(v1);
}

uint64_t sub_1C2F1E5CC()
{
  swift_getKeyPath();
  sub_1C2F1E1CC(&qword_1EC0765D8, type metadata accessor for FTMenuViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v14 = *(v0 + 16);
  if (v14 >> 62)
  {
LABEL_23:
    v12 = sub_1C2F76BBC();
  }

  else
  {
    v12 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12)
  {
    v1 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x1C6929250](v1, v14);
        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {
        if (v1 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v2 = *(v14 + 8 * v1 + 32);

        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_16;
        }
      }

      swift_getKeyPath();
      sub_1C2F1E1CC(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
      sub_1C2F75DAC();

      v4 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView;
      swift_beginAccess();
      if (*(v2 + v4) == 1)
      {
        swift_getKeyPath();
        sub_1C2F75DAC();

        v5 = (v2 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
        swift_beginAccess();
        v13 = v5;
        if (v5[1])
        {
          swift_getKeyPath();
          sub_1C2F75DAC();

          if (!v5[1])
          {
            __break(1u);
            return result;
          }

          if (!*v5)
          {
            break;
          }
        }
      }

      ++v1;
      if (v3 == v12)
      {
        goto LABEL_17;
      }
    }

    swift_getKeyPath();

    sub_1C2F75DAC();

    v7 = *v5;
    v8 = v5[1];
    v9 = v5[2];
    sub_1C2EFCA04(*v13, v13[1]);

    if (v8)
    {

      v10 = sub_1C2F2039C(v7, v8);
      v11 = v8(v10);

      return v11;
    }

    sub_1C2F2039C(v7, 0);
  }

  else
  {
LABEL_17:
  }

  return 0;
}

BOOL sub_1C2F1E994()
{
  v0 = sub_1C2F1E5CC();
  v2 = v1;
  if (v1)
  {
    sub_1C2F203AC(v0, v1);
  }

  return v2 != 0;
}

uint64_t sub_1C2F1E9CC()
{
  swift_getKeyPath();
  sub_1C2F1E1CC(&qword_1EC0765D8, type metadata accessor for FTMenuViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_1C2F76BBC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    v11 = v1 & 0xC000000000000001;
    v10 = v1 & 0xFFFFFFFFFFFFFF8;
    v9 = v1;
    do
    {
      if (v11)
      {
        v4 = MEMORY[0x1C6929250](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_14:
          __break(1u);
        }
      }

      else
      {
        if (v3 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_17;
        }

        v4 = *(v1 + 8 * v3 + 32);

        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_14;
        }
      }

      swift_getKeyPath();
      sub_1C2F1E1CC(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
      sub_1C2F75DAC();

      v6 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView;
      swift_beginAccess();
      if (*(v4 + v6) == 1)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1C2F75D9C();

        v1 = v9;
      }

      else
      {
      }

      ++v3;
    }

    while (v5 != v2);
  }
}

uint64_t sub_1C2F1EC94()
{
  swift_getKeyPath();
  sub_1C2F1E1CC(&qword_1EC0765D8, type metadata accessor for FTMenuViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_1C2F76BBC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1C6929250](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v4 = *(v1 + 8 * v3 + 32);

        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_13;
        }
      }

      swift_getKeyPath();
      sub_1C2F1E1CC(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
      sub_1C2F75DAC();

      v6 = *(v4 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss);

      if ((v6 & 1) == 0)
      {
        ++v3;
        if (v5 != v2)
        {
          continue;
        }
      }

      goto LABEL_15;
    }
  }

  v6 = 0;
LABEL_15:

  return v6;
}

uint64_t sub_1C2F1EE90(char a1)
{
  swift_getKeyPath();
  sub_1C2F1E1CC(&qword_1EC0765D8, type metadata accessor for FTMenuViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
LABEL_22:
    v3 = sub_1C2F76BBC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    v11 = v3;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C6929250](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_19:
          __break(1u);
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_22;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_19;
        }
      }

      if (*(v5 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) == 1)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1C2F1E1CC(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
        sub_1C2F75D9C();

        v3 = v11;
        if (a1)
        {
          goto LABEL_6;
        }
      }

      else
      {
        *(v5 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
        if (a1)
        {
          goto LABEL_6;
        }
      }

      v8 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView;
      swift_beginAccess();
      if (*(v5 + v8))
      {
        v9 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v9);
        sub_1C2F1E1CC(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
        sub_1C2F75D9C();

        v3 = v11;
        goto LABEL_7;
      }

      *(v5 + v8) = 0;
LABEL_6:

LABEL_7:
      ++v4;
    }

    while (v6 != v3);
  }
}

uint64_t FTMenuViewModel.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  sub_1C2F75DDC();
  return v3;
}

uint64_t FTMenuViewModel.init()()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  sub_1C2F75DDC();
  return v0;
}

uint64_t FTMenuViewModel.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC20CommunicationsUICore15FTMenuViewModel___observationRegistrar;
  v3 = sub_1C2F75DEC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t FTMenuViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC20CommunicationsUICore15FTMenuViewModel___observationRegistrar;
  v3 = sub_1C2F75DEC();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F1F38C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 40)
    {
      v6 = *(a1 + i + 48);
      v7 = *(a1 + i + 56);
      v8 = *(a1 + i + 64);
      v9 = *(a2 + i + 48);
      v10 = *(a2 + i + 56);
      v11 = *(a2 + i + 64);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_1C2F76EFC() & 1) == 0)
      {
        break;
      }

      if (v6 == v9 && v7 == v10)
      {
        if (v8 != v11)
        {
          return 0;
        }
      }

      else
      {
        v14 = sub_1C2F76EFC();
        result = 0;
        if (v14 & 1) == 0 || ((v8 ^ v11))
        {
          return result;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_1C2F1F490(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = 0;
  v31 = a2 + 32;
  v32 = a1 + 32;
  v30 = *(a1 + 16);
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_51;
    }

    v4 = (v32 + 40 * v3);
    v6 = v4[1];
    v5 = v4[2];
    v7 = v4[3];
    v8 = v4[4];
    v9 = (v31 + 40 * v3);
    v10 = v9[3];
    v11 = v9[4];
    v38 = v9[2];
    v39 = v5;
    v34 = v6;
    v35 = v3;
    v33 = v9[1];
    if (v7)
    {
      if (!v10)
      {
        return;
      }

      sub_1C2F208DC();

      v12 = v10;

      v13 = v12;
      v14 = v7;

      v15 = v14;

      v16 = sub_1C2F76AAC();

      if ((v16 & 1) == 0)
      {

        return;
      }
    }

    else
    {
      if (v10)
      {
        return;
      }
    }

    v37 = v10;
    v17 = *(v8 + 16);
    if (v17 != *(v11 + 16))
    {

      return;
    }

    v36 = v7;
    if (v17 && v8 != v11)
    {
      break;
    }

LABEL_18:
    if (v39)
    {
      v19 = v36;
      if (!v38)
      {

LABEL_49:

        return;
      }

      if (v34 != v33 || v39 != v38)
      {
        v29 = sub_1C2F76EFC();

        if ((v29 & 1) == 0)
        {
          return;
        }

        goto LABEL_41;
      }
    }

    else
    {

      v19 = v36;
      if (v38)
      {

        goto LABEL_49;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_41:
    v3 = v35 + 1;
    v2 = v30;
    if (v35 + 1 == v30)
    {
      return;
    }
  }

  v20 = 0;
  while (v17)
  {
    v21 = *(v8 + v20 + 48);
    v22 = *(v8 + v20 + 56);
    v23 = *(v8 + v20 + 64);
    v24 = *(v11 + v20 + 48);
    v25 = *(v11 + v20 + 56);
    v26 = *(v11 + v20 + 64);
    v27 = *(v8 + v20 + 32) == *(v11 + v20 + 32) && *(v8 + v20 + 40) == *(v11 + v20 + 40);
    if (!v27 && (sub_1C2F76EFC() & 1) == 0 || (v21 == v24 ? (v28 = v22 == v25) : (v28 = 0), !v28 && (sub_1C2F76EFC() & 1) == 0 || v23 != v26))
    {

      return;
    }

    v20 += 40;
    if (!--v17)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t sub_1C2F1F868(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1C2F208DC();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1C6929250](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1C6929250](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1C2F76AAC();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1C2F76AAC();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1C2F76BBC();
  }

  result = sub_1C2F76BBC();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1C2F1FAC8(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v6 = 4;
      while (1)
      {
        v14 = v6 - 4;
        v15 = v6 - 3;
        if (__OFADD__(v6 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1C6929250](v6 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v5 + 8 * v6);

          if (!v13)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v6);

            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x1C6929250](v6 - 4, a2);
LABEL_26:
        v18 = a4(v16 + *a3, v17 + *a3);

        if (v18)
        {
          ++v6;
          if (v15 != v7)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v6 = v5 + 32;
    v19 = (a2 + 32);
    v20 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v7 - 1;
    while (1)
    {
      if (!v20)
      {
        goto LABEL_40;
      }

      if (!v21)
      {
        break;
      }

      v23 = *v6;
      v6 += 8;
      a2 = v23;
      v24 = *v19++;
      v5 = v24;
      v25 = *a3;

      v18 = a4(a2 + v25, v24 + v25);

      v27 = v22-- != 0;
      if (v18)
      {
        --v21;
        --v20;
        if (v27)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v7 = sub_1C2F76BBC();
  }

  result = sub_1C2F76BBC();
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1C2F1FD2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2F75C8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_1C2F1E1CC(&qword_1EC076610, MEMORY[0x1E6969770]);
    v22 = sub_1C2F7662C();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2F1FF40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F1E1CC(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  *a2 = *(v3 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss);
  return result;
}

uint64_t sub_1C2F20018@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F1E1CC(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C2F20104@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F1E1CC(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = (v3 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  if (v6)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = v5;
    v10 = sub_1C2F20984;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
  }

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v8;
  return sub_1C2EFCA04(v5, v6);
}

uint64_t sub_1C2F20224(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = v3;
    v8 = sub_1C2F20948;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C2EFCA04(v3, v4);
  sub_1C2F1E1CC(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75D9C();
  sub_1C2F2039C(v7, v8);
}

uint64_t sub_1C2F2039C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C2F203AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C2F204B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1C2F204FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C2F20570()
{
  sub_1C2F75AEC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FTMenuItem(319);
    if (v1 <= 0x3F)
    {
      sub_1C2F2060C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C2F2060C()
{
  if (!qword_1EC0765F8)
  {
    type metadata accessor for FTMenuItem(255);
    v0 = sub_1C2F7683C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0765F8);
    }
  }
}

uint64_t sub_1C2F2066C()
{
  result = sub_1C2F75DEC();
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

unint64_t sub_1C2F20858()
{
  result = qword_1EC076600;
  if (!qword_1EC076600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC076608, &qword_1C2F79E50);
    sub_1C2F1D820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076600);
  }

  return result;
}

unint64_t sub_1C2F208DC()
{
  result = qword_1EDEBC4D0;
  if (!qword_1EDEBC4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEBC4D0);
  }

  return result;
}

uint64_t sub_1C2F20948()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_1C2F20984@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  a1[1] = v6;
  a1[2] = v7;
  return result;
}

unint64_t sub_1C2F209C8()
{
  result = qword_1EC076638;
  if (!qword_1EC076638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC076628, &qword_1C2F79E68);
    sub_1C2EF7414(&qword_1EC0765C0, &qword_1EC0765C8, &qword_1C2F79C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076638);
  }

  return result;
}

unint64_t sub_1C2F20A98()
{
  result = qword_1EC076648;
  if (!qword_1EC076648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC076640, &qword_1C2F79E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076648);
  }

  return result;
}

uint64_t AudioRoute.uniqueIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t AudioRoute.label.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t AudioRoute.systemImageName.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

void __swiftcall AudioRoute.init(isReceiver:isAuxiliary:isSpeaker:isCurrentlyPicked:uniqueIdentifier:bluetoothID:label:systemImageName:supportsSharePlay:)(CommunicationsUICore::AudioRoute *__return_ptr retstr, Swift::Bool isReceiver, Swift::Bool isAuxiliary, Swift::Bool isSpeaker, Swift::Bool isCurrentlyPicked, Swift::String uniqueIdentifier, Swift::String_optional bluetoothID, Swift::String label, Swift::String_optional systemImageName, Swift::Bool supportsSharePlay)
{
  retstr->isReceiver = isReceiver;
  retstr->isAuxiliary = isAuxiliary;
  retstr->isSpeaker = isSpeaker;
  retstr->isCurrentlyPicked = isCurrentlyPicked;
  retstr->bluetoothID = bluetoothID;
  retstr->uniqueIdentifier = uniqueIdentifier;
  retstr->label = label;
  retstr->systemImageName = systemImageName;
  retstr->supportsSharePlay = supportsSharePlay;
}

void sub_1C2F20C40(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = [a1 isReceiver];
  v6 = [a1 isAuxiliary];
  v7 = [a1 isSpeaker];
  v8 = [a1 isCurrentlyPicked];
  v9 = [a1 uniqueIdentifier];
  v10 = sub_1C2F766CC();
  v12 = v11;

  v13 = [a1 name];
  v14 = sub_1C2F766CC();
  v16 = v15;

  LOBYTE(v13) = [a1 supportsSharePlay];
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = v17;
  *(a4 + 17) = v6;
  *(a4 + 18) = v7;
  *(a4 + 24) = v10;
  *(a4 + 32) = v12;
  *(a4 + 40) = v14;
  *(a4 + 48) = v16;
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  *(a4 + 72) = v8;
  *(a4 + 73) = v13;
}

uint64_t AudioRoute.hash(into:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1C2F7673C();
}

uint64_t AudioRoute.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1C2F76F9C();
  sub_1C2F7673C();
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F20DD4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1C2F76F9C();
  sub_1C2F7673C();
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F20E20()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1C2F7673C();
}

uint64_t sub_1C2F20E28()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1C2F76F9C();
  sub_1C2F7673C();
  return sub_1C2F76FDC();
}

uint64_t _s20CommunicationsUICore10AudioRouteV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 18);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v59 = *(a1 + 73);
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 17);
  v17 = *(a2 + 18);
  v18 = *(a2 + 24);
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  v21 = *(a2 + 48);
  v23 = *(a2 + 56);
  v22 = *(a2 + 64);
  v24 = *(a2 + 72);
  v58 = *(a2 + 73);
  if (v3)
  {
    if (!v14)
    {
      return 0;
    }

    if (*a1 == *a2 && v3 == v14)
    {
      result = 0;
      if (v4 != v15)
      {
        return result;
      }

LABEL_9:
      if ((v5 ^ v16) & 1) != 0 || ((v6 ^ v17))
      {
        return result;
      }

      goto LABEL_16;
    }

    v48 = *(a2 + 48);
    v49 = *(a2 + 40);
    v50 = *(a1 + 48);
    v51 = *(a1 + 40);
    v52 = *(a2 + 56);
    v53 = *(a2 + 64);
    v54 = *(a1 + 64);
    v55 = *(a1 + 56);
    v56 = *(a2 + 72);
    v57 = *(a1 + 72);
    v26 = sub_1C2F76EFC();
    result = 0;
    if ((v26 & 1) != 0 && ((v4 ^ v15) & 1) == 0 && ((v5 ^ v16) & 1) == 0)
    {
      v24 = v56;
      v13 = v57;
      v12 = v54;
      v11 = v55;
      v23 = v52;
      v22 = v53;
      v10 = v50;
      v9 = v51;
      v21 = v48;
      v20 = v49;
      if (((v6 ^ v17) & 1) == 0)
      {
LABEL_16:
        if (v7 != v18 || v8 != v19)
        {
          v27 = v20;
          v28 = v13;
          v29 = v24;
          v30 = v11;
          v31 = v12;
          v32 = v22;
          v33 = v23;
          v34 = v9;
          v35 = v10;
          v36 = v21;
          v37 = sub_1C2F76EFC();
          v21 = v36;
          v20 = v27;
          v10 = v35;
          v9 = v34;
          v23 = v33;
          v22 = v32;
          v12 = v31;
          v11 = v30;
          v24 = v29;
          v13 = v28;
          if ((v37 & 1) == 0)
          {
            return 0;
          }
        }

        if (v9 != v20 || v10 != v21)
        {
          v38 = v13;
          v39 = v24;
          v40 = v11;
          v41 = v12;
          v42 = v22;
          v43 = v23;
          v44 = sub_1C2F76EFC();
          v23 = v43;
          v22 = v42;
          v12 = v41;
          v11 = v40;
          v24 = v39;
          v13 = v38;
          if ((v44 & 1) == 0)
          {
            return 0;
          }
        }

        if (!v12)
        {
          result = 0;
          if (v22 || ((v13 ^ v24) & 1) != 0)
          {
            return result;
          }

          return v59 ^ v58 ^ 1u;
        }

        if (v22)
        {
          if (v11 == v23 && v12 == v22)
          {
            if (v13 != v24)
            {
              return 0;
            }
          }

          else
          {
            v45 = v24;
            v46 = v13;
            v47 = sub_1C2F76EFC();
            result = 0;
            if (v47 & 1) == 0 || ((v46 ^ v45))
            {
              return result;
            }
          }

          return v59 ^ v58 ^ 1u;
        }

        return 0;
      }
    }
  }

  else
  {
    result = 0;
    if (!v14 && ((v4 ^ v15) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  return result;
}

unint64_t sub_1C2F21108()
{
  result = qword_1EC076668;
  if (!qword_1EC076668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076668);
  }

  return result;
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C2F21180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2F211C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20CommunicationsUICore16CallProviderTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C2F21248(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2F212A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_1C2F212F0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Participant(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Participant(_WORD *result, int a2, int a3)
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

char *sub_1C2F21504()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService____lazy_storage___routeDelegate;
  v2 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService____lazy_storage___routeDelegate);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService____lazy_storage___routeDelegate);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for RouteControllerDelegate(0)) init];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = &v4[OBJC_IVAR____TtC20CommunicationsUICoreP33_958756A54F68EF1F0D6D0FD8C6158AC223RouteControllerDelegate_handler];
    v7 = *&v4[OBJC_IVAR____TtC20CommunicationsUICoreP33_958756A54F68EF1F0D6D0FD8C6158AC223RouteControllerDelegate_handler];
    v8 = *&v4[OBJC_IVAR____TtC20CommunicationsUICoreP33_958756A54F68EF1F0D6D0FD8C6158AC223RouteControllerDelegate_handler + 8];
    *v6 = sub_1C2F248E0;
    v6[1] = v5;

    sub_1C2EFDE10(v7);

    v9 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_1C2F215E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1C2F240B4();
  }
}

char *AudioRouteService.__allocating_init(callCenter:)(uint64_t a1)
{
  v2 = sub_1C2F23950([*(a1 + 16) routeController], objc_allocWithZone(v1));

  return v2;
}

uint64_t AudioRouteService.areAuxiliaryRoutesAvailable.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 24);
  v2 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController), v1);
  return (*(v2 + 24))(v1, v2) & 1;
}

Swift::Void __swiftcall AudioRouteService.pick(route:)(CommunicationsUICore::AudioRoute *route)
{
  countAndFlagsBits = route->uniqueIdentifier._countAndFlagsBits;
  object = route->uniqueIdentifier._object;
  v4 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 24);
  v5 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController), v4);
  (*(v5 + 32))(countAndFlagsBits, object, v4, v5);
}

__n128 sub_1C2F217BC@<Q0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v4 = *a1;

  v5 = objc_opt_self();
  v6 = [v5 systemImageNameForDeviceType_];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1C2F766CC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = [v4 modelIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1C2F766CC();
    v15 = v14;
    if ([v4 deviceType])
    {
    }

    else
    {
      v16 = OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_modelIconCache;
      swift_beginAccess();
      v17 = *(v30 + v16);
      if (*(v17 + 16) && (v18 = sub_1C2EFAEC0(v13, v15), (v19 & 1) != 0))
      {
        v20 = (*(v17 + 56) + 16 * v18);
        v8 = *v20;
        v10 = v20[1];

        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v22 = swift_allocObject();
        v22[2] = v21;
        v22[3] = v13;
        v22[4] = v15;
        *&v28 = sub_1C2F24604;
        *(&v28 + 1) = v22;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v27.n128_u64[0] = sub_1C2F21E84;
        v27.n128_u64[1] = &block_descriptor_1;
        v23 = _Block_copy(&aBlock);

        [v5 systemImageNameForModelId:v12 completion:v23];
        _Block_release(v23);
      }
    }
  }

  sub_1C2F20C40(v4, v8, v10, &aBlock);
  v24 = v29[0];
  *(a3 + 32) = v28;
  *(a3 + 48) = v24;
  *(a3 + 58) = *(v29 + 10);
  result = v27;
  *a3 = aBlock;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_1C2F21A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C2F764EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C2F7651C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v32 = v10;
    v33 = result;
    v34 = v11;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_modelIconCache;
      v31 = v16;
      v23 = a4;
      v24 = Strong;
      swift_beginAccess();
      swift_bridgeObjectRetain_n();

      v25 = *&v24[v22];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *&v24[v22];
      *&v24[v22] = 0x8000000000000000;
      sub_1C2F69FF8(a1, a2, v23, a5, isUniquelyReferenced_nonNull_native);

      *&v24[v22] = v36;
      swift_endAccess();

      a4 = v23;
      v16 = v31;
    }

    else
    {
    }

    sub_1C2EF5A14(0, &qword_1EDEBC510, 0x1E69E9610);
    v27 = sub_1C2F76A2C();
    v28 = swift_allocObject();
    v28[2] = a3;
    v28[3] = a4;
    v28[4] = a5;
    v28[5] = a1;
    v28[6] = a2;
    aBlock[4] = sub_1C2F24628;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C2F40688;
    aBlock[3] = &block_descriptor_17;
    v29 = _Block_copy(aBlock);

    sub_1C2F764FC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C2F24638();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076060, &unk_1C2F79000);
    sub_1C2EF7414(&qword_1EC076710, &unk_1EC076060, &unk_1C2F79000);
    v30 = v32;
    sub_1C2F76B3C();
    MEMORY[0x1C6929010](0, v20, v14, v29);
    _Block_release(v29);

    (*(v34 + 8))(v14, v30);
    return (*(v16 + 8))(v20, v33);
  }

  return result;
}

void sub_1C2F21E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1C2F24690(a2, a3);
  }
}

uint64_t sub_1C2F21E84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_1C2F766CC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3(v4, v6);
}

id AudioRouteService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C2F22064()
{
  v1 = (*v0 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 24))(v2, v3) & 1;
}

uint64_t sub_1C2F22110(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 24);
  v6 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController), v5);
  return (*(v6 + 32))(v3, v4, v5, v6);
}

void sub_1C2F22180(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769EC();

  v6 = &selRef_objectForKey_;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v7 = 136315394;
    v10 = [v3 routes];
    v11 = sub_1C2EF5A14(0, &unk_1EDEBD778, 0x1E69D8CA8);
    v12 = sub_1C2F767EC();

    v13 = MEMORY[0x1C6928DD0](v12, v11);
    v15 = v14;

    v16 = sub_1C2EFAB28(v13, v15, &v24);

    *(v7 + 4) = v16;
    v6 = &selRef_objectForKey_;
    *(v7 + 12) = 2112;
    v17 = [v3 pickedRoute];
    *(v7 + 14) = v17;
    *v8 = v17;
    _os_log_impl(&dword_1C2EF2000, v4, v5, "routes have changed, %s, %@", v7, 0x16u);
    sub_1C2F0A8D8(v8, &unk_1EC076070, &qword_1C2F7A190);
    MEMORY[0x1C6929E80](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1C6929E80](v9, -1, -1);
    MEMORY[0x1C6929E80](v7, -1, -1);
  }

  v18 = v2 + OBJC_IVAR____TtC20CommunicationsUICoreP33_958756A54F68EF1F0D6D0FD8C6158AC223RouteControllerDelegate_handler;
  v19 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICoreP33_958756A54F68EF1F0D6D0FD8C6158AC223RouteControllerDelegate_handler);
  if (v19)
  {
    v20 = *(v18 + 8);

    v21 = [v3 routes];
    sub_1C2EF5A14(0, &unk_1EDEBD778, 0x1E69D8CA8);
    v22 = sub_1C2F767EC();

    v23 = [v3 v6[47]];
    v19(v22, v23);
    sub_1C2EFDE10(v19);
  }
}

uint64_t sub_1C2F225C0()
{
  v1 = [*v0 routes];
  sub_1C2EF5A14(0, &unk_1EDEBD778, 0x1E69D8CA8);
  v2 = sub_1C2F767EC();

  return v2;
}

id sub_1C2F22628()
{
  v1 = [*v0 pickedRoute];

  return v1;
}

void sub_1C2F22684()
{
  v1 = *v0;
  v2 = sub_1C2F766AC();
  [v1 pickRouteWithUniqueIdentifier_];
}

uint64_t sub_1C2F226F0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C2F5C3F0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C2F2276C(v6);
  return sub_1C2F76CFC();
}

void sub_1C2F2276C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C2F76ECC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C2EF5A14(0, &unk_1EDEBD778, 0x1E69D8CA8);
        v6 = sub_1C2F7681C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1C2F22BC0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C2F22880(0, v2, 1, a1);
  }
}

void sub_1C2F22880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
    v7 = &selRef_objectForKey_;
    v8 = &selRef_objectForKey_;
    v29 = *a4;
LABEL_6:
    v32 = a3;
    v9 = *(v4 + 8 * a3);
    v30 = v6;
    v31 = v5;
    while (1)
    {
      v10 = *v5;
      v11 = v9;
      v12 = v10;
      if (([v11 v7[40]] & 1) != 0 || objc_msgSend(v11, sel_isReceiver))
      {
        v13 = 1;
      }

      else
      {
        v13 = [v11 isDefaultRoute];
      }

      if (([v12 v7[40]] & 1) != 0 || objc_msgSend(v12, sel_isReceiver))
      {
        if ((v13 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v13 != [v12 isDefaultRoute])
      {
        goto LABEL_29;
      }

      if (([v11 v8[56]] & 1) != 0 || objc_msgSend(v11, sel_isWiredHeadphones))
      {
        v13 = 1;
      }

      else
      {
        v13 = [v11 isWirelessHeadset];
      }

      if (([v12 v8[56]] & 1) != 0 || objc_msgSend(v12, sel_isWiredHeadphones))
      {
        if ((v13 & 1) == 0)
        {
LABEL_4:

          goto LABEL_5;
        }
      }

      else if (v13 != [v12 isWirelessHeadset])
      {
        goto LABEL_29;
      }

      v14 = [v11 isRecommended];
      if (v14 != [v12 isRecommended])
      {
        LOBYTE(v13) = [v11 isRecommended];
LABEL_29:

        if ((v13 & 1) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_34;
      }

      v15 = [v11 isGuest];
      if (v15 == [v12 isGuest])
      {
        v17 = [v11 name];
        v18 = sub_1C2F766CC();
        v20 = v19;

        v21 = [v12 name];
        v22 = sub_1C2F766CC();
        v24 = v23;

        if (v18 == v22 && v20 == v24)
        {

          v4 = v29;
          v7 = &selRef_objectForKey_;
          v8 = &selRef_objectForKey_;
LABEL_5:
          a3 = v32 + 1;
          v5 = v31 + 8;
          v6 = v30 - 1;
          if (v32 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v25 = sub_1C2F76EFC();

        v4 = v29;
        v7 = &selRef_objectForKey_;
        v8 = &selRef_objectForKey_;
        if ((v25 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v16 = [v11 isGuest];

        if ((v16 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

LABEL_34:
      if (!v4)
      {
        __break(1u);
        return;
      }

      v26 = *v5;
      v9 = *(v5 + 8);
      *v5 = v9;
      *(v5 + 8) = v26;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_1C2F22BC0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_151:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_189;
    }

    v4 = v125;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_153:
      v110 = *(v7 + 2);
      if (v110 >= 2)
      {
        while (*a3)
        {
          v111 = *&v7[16 * v110];
          v112 = *&v7[16 * v110 + 24];
          sub_1C2F236C8((*a3 + 8 * v111), (*a3 + 8 * *&v7[16 * v110 + 16]), (*a3 + 8 * v112), v6);
          if (v4)
          {
            goto LABEL_161;
          }

          if (v112 < v111)
          {
            goto LABEL_176;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1C2F59928(v7);
          }

          if (v110 - 2 >= *(v7 + 2))
          {
            goto LABEL_177;
          }

          v113 = &v7[16 * v110];
          *v113 = v111;
          *(v113 + 1) = v112;
          sub_1C2F5989C(v110 - 1);
          v110 = *(v7 + 2);
          if (v110 <= 1)
          {
            goto LABEL_161;
          }
        }

        goto LABEL_187;
      }

LABEL_161:

      return;
    }

LABEL_183:
    v7 = sub_1C2F59928(v7);
    goto LABEL_153;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = &selRef_objectForKey_;
LABEL_4:
  v9 = v6++;
  v123 = v7;
  if (v6 >= v5)
  {
    goto LABEL_51;
  }

  v10 = *a3;
  v11 = *(*a3 + 8 * v9);
  v12 = *(*a3 + 8 * v6);
  v13 = v11;
  v126 = sub_1C2F23E60(v12, v13);

  v4 = (v9 + 2);
  if (v9 + 2 >= v5)
  {
    v6 = v9 + 2;
    if (v126)
    {
      goto LABEL_44;
    }

    goto LABEL_51;
  }

  v114 = v9;
  v14 = (v10 + 8 * v9 + 16);
  v15 = &selRef_objectForKey_;
  v16 = v126;
  do
  {
    v17 = *(v14 - 1);
    v18 = *v14;
    v19 = v17;
    if (([v18 isSpeaker] & 1) != 0 || objc_msgSend(v18, sel_isReceiver))
    {
      v20 = 1;
    }

    else
    {
      v20 = [v18 isDefaultRoute];
    }

    if (([v19 isSpeaker] & 1) != 0 || objc_msgSend(v19, sel_isReceiver))
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else if (v20 != [v19 isDefaultRoute])
    {
      goto LABEL_38;
    }

    if (([v18 isWiredHeadset] & 1) != 0 || objc_msgSend(v18, sel_isWiredHeadphones))
    {
      v20 = 1;
    }

    else
    {
      v20 = [v18 isWirelessHeadset];
    }

    if (([v19 isWiredHeadset] & 1) != 0 || objc_msgSend(v19, sel_isWiredHeadphones))
    {
      if ((v20 & 1) == 0)
      {
LABEL_7:

        v7 = v123;
        if (v16)
        {
          v8 = &selRef_objectForKey_;
          v6 = v4;
          v9 = v114;
          if (v4 < v114)
          {
            goto LABEL_180;
          }

          goto LABEL_45;
        }

        goto LABEL_8;
      }
    }

    else if (v20 != [v19 isWirelessHeadset])
    {
      goto LABEL_38;
    }

    v21 = [v18 v15[59]];
    if (v21 != [v19 v15[59]])
    {
      v22 = [v18 v15[59]];
      goto LABEL_31;
    }

    v23 = [v18 isGuest];
    if (v23 != [v19 isGuest])
    {
      v22 = [v18 isGuest];
LABEL_31:
      v24 = v22;

      v25 = v126 ^ v24;
      v16 = v126;
      v7 = v123;
      if (v25)
      {
        goto LABEL_39;
      }

      goto LABEL_8;
    }

    v26 = [v18 name];
    v121 = sub_1C2F766CC();
    v28 = v27;

    v29 = v28;
    v30 = [v19 name];
    v31 = sub_1C2F766CC();
    v33 = v32;

    if (v121 == v31 && v29 == v33)
    {
      LOBYTE(v20) = 0;
    }

    else
    {
      LOBYTE(v20) = sub_1C2F76EFC();
    }

    v15 = &selRef_objectForKey_;

    v16 = v126;
LABEL_38:

    v34 = v16 ^ v20;
    v7 = v123;
    if (v34)
    {
LABEL_39:
      v8 = &selRef_objectForKey_;
      v6 = v4;
      goto LABEL_43;
    }

LABEL_8:
    ++v14;
    v4 = (v4 + 1);
  }

  while (v5 != v4);
  v6 = v5;
  v8 = &selRef_objectForKey_;
LABEL_43:
  v9 = v114;
  if ((v126 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_44:
  if (v6 < v9)
  {
    goto LABEL_180;
  }

LABEL_45:
  if (v9 < v6)
  {
    v35 = 8 * v6 - 8;
    v36 = 8 * v9;
    v37 = v6;
    v38 = v9;
    do
    {
      if (v38 != --v37)
      {
        v39 = *a3;
        if (!*a3)
        {
          goto LABEL_186;
        }

        v40 = *(v39 + v36);
        *(v39 + v36) = *(v39 + v35);
        *(v39 + v35) = v40;
      }

      ++v38;
      v35 -= 8;
      v36 += 8;
    }

    while (v38 < v37);
  }

LABEL_51:
  v41 = a3[1];
  if (v6 >= v41)
  {
    goto LABEL_97;
  }

  if (__OFSUB__(v6, v9))
  {
    goto LABEL_179;
  }

  if (v6 - v9 >= a4)
  {
    goto LABEL_97;
  }

  v42 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_181;
  }

  if (v42 >= v41)
  {
    v42 = a3[1];
  }

  if (v42 < v9)
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  if (v6 == v42)
  {
    goto LABEL_97;
  }

  v127 = *a3;
  v43 = *a3 + 8 * v6 - 8;
  v115 = v9;
  v44 = v9 - v6;
  v118 = v42;
  while (2)
  {
    v120 = v43;
    v122 = v6;
    v45 = *(v127 + 8 * v6);
    v119 = v44;
LABEL_63:
    v46 = *v43;
    v47 = v45;
    v4 = v46;
    if (([v47 v8[40]] & 1) != 0 || objc_msgSend(v47, sel_isReceiver))
    {
      v48 = 1;
    }

    else
    {
      v48 = [v47 isDefaultRoute];
    }

    if (([v4 v8[40]] & 1) == 0 && !objc_msgSend(v4, sel_isReceiver))
    {
      if (v48 == [v4 isDefaultRoute])
      {
        goto LABEL_70;
      }

LABEL_86:

      if ((v48 & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_91;
    }

    if ((v48 & 1) == 0)
    {
      goto LABEL_60;
    }

LABEL_70:
    if (([v47 isWiredHeadset] & 1) != 0 || objc_msgSend(v47, sel_isWiredHeadphones))
    {
      v48 = 1;
    }

    else
    {
      v48 = [v47 isWirelessHeadset];
    }

    if (([v4 isWiredHeadset] & 1) == 0 && !objc_msgSend(v4, sel_isWiredHeadphones))
    {
      if (v48 == [v4 isWirelessHeadset])
      {
        goto LABEL_79;
      }

      goto LABEL_86;
    }

    if ((v48 & 1) == 0)
    {
LABEL_60:

      goto LABEL_61;
    }

LABEL_79:
    v49 = [v47 isRecommended];
    if (v49 != [v4 isRecommended])
    {
      v50 = [v47 isRecommended];

      if ((v50 & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_91;
    }

    v51 = [v47 isGuest];
    if (v51 != [v4 isGuest])
    {
      v52 = [v47 isGuest];

      if ((v52 & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_91;
    }

    v53 = [v47 name];
    v54 = sub_1C2F766CC();
    v56 = v55;

    v57 = [v4 name];
    v58 = sub_1C2F766CC();
    v60 = v59;

    if (v54 == v58 && v56 == v60)
    {

      v7 = v123;
      v8 = &selRef_objectForKey_;
LABEL_61:
      v6 = v122 + 1;
      v43 = v120 + 8;
      v44 = v119 - 1;
      if ((v122 + 1) != v118)
      {
        continue;
      }

      v6 = v118;
      v9 = v115;
LABEL_97:
      if (v6 < v9)
      {
        goto LABEL_178;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1C2F1C78C(0, *(v7 + 2) + 1, 1, v7);
      }

      v65 = *(v7 + 2);
      v64 = *(v7 + 3);
      v66 = v65 + 1;
      if (v65 >= v64 >> 1)
      {
        v7 = sub_1C2F1C78C((v64 > 1), v65 + 1, 1, v7);
      }

      *(v7 + 2) = v66;
      v67 = &v7[16 * v65];
      *(v67 + 4) = v9;
      *(v67 + 5) = v6;
      v4 = *a1;
      if (!*a1)
      {
        goto LABEL_188;
      }

      if (!v65)
      {
LABEL_3:
        v5 = a3[1];
        v8 = &selRef_objectForKey_;
        if (v6 >= v5)
        {
          goto LABEL_151;
        }

        goto LABEL_4;
      }

      while (1)
      {
        v68 = v66 - 1;
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v69 = *(v7 + 4);
          v70 = *(v7 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_117:
          if (v72)
          {
            goto LABEL_167;
          }

          v85 = &v7[16 * v66];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_170;
          }

          v91 = &v7[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_173;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_174;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v66 - 2;
            }

            goto LABEL_138;
          }

          goto LABEL_131;
        }

        v95 = &v7[16 * v66];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_131:
        if (v90)
        {
          goto LABEL_169;
        }

        v98 = &v7[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_172;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_138:
        v106 = v68 - 1;
        if (v68 - 1 >= v66)
        {
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

        if (!*a3)
        {
          goto LABEL_185;
        }

        v107 = *&v7[16 * v106 + 32];
        v108 = *&v7[16 * v68 + 40];
        sub_1C2F236C8((*a3 + 8 * v107), (*a3 + 8 * *&v7[16 * v68 + 32]), (*a3 + 8 * v108), v4);
        if (v125)
        {
          goto LABEL_161;
        }

        if (v108 < v107)
        {
          goto LABEL_163;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1C2F59928(v7);
        }

        if (v106 >= *(v7 + 2))
        {
          goto LABEL_164;
        }

        v109 = &v7[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        sub_1C2F5989C(v68);
        v66 = *(v7 + 2);
        if (v66 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v7[16 * v66 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_165;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_166;
      }

      v80 = &v7[16 * v66];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_168;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_171;
      }

      if (v84 >= v76)
      {
        v102 = &v7[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_175;
        }

        if (v71 < v105)
        {
          v68 = v66 - 2;
        }

        goto LABEL_138;
      }

      goto LABEL_117;
    }

    break;
  }

  v61 = sub_1C2F76EFC();

  v7 = v123;
  v8 = &selRef_objectForKey_;
  if ((v61 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_91:
  if (v127)
  {
    v62 = *v43;
    v45 = *(v43 + 8);
    *v43 = v45;
    *(v43 + 8) = v62;
    v43 -= 8;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_61;
    }

    goto LABEL_63;
  }

  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
}

uint64_t sub_1C2F236C8(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4;
      v18 = *v6;
      v19 = v17;
      v20 = v6;
      v21 = sub_1C2F23E60(v18, v19);

      if (v21)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4++;
      v6 = v20;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v20;
    v6 = v20 + 1;
    if (v7 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v34 = v4;
LABEL_24:
    v33 = v6;
    v22 = v6 - 1;
    --v5;
    v23 = v14;
    do
    {
      v24 = v5 + 1;
      v25 = *--v23;
      v26 = v22;
      v27 = *v22;
      v28 = v25;
      v29 = v27;
      v30 = sub_1C2F23E60(v28, v29);

      if (v30)
      {
        v31 = v26;
        if (v24 != v33)
        {
          *v5 = *v26;
        }

        v4 = v34;
        if (v14 <= v34 || (v6 = v31, v31 <= v7))
        {
          v6 = v31;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v24 != v14)
      {
        *v5 = *v23;
      }

      --v5;
      v14 = v23;
      v22 = v26;
    }

    while (v23 > v34);
    v14 = v23;
    v6 = v33;
    v4 = v34;
  }

LABEL_35:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

char *sub_1C2F23950(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v32[3] = sub_1C2EF5A14(0, &qword_1EDEBD788, 0x1E69D8CB0);
  v32[4] = &off_1F42B3A90;
  v32[0] = a1;
  sub_1C2F761EC();
  v5 = OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_pickedRouteSubject;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v28 = 0u;
  v29 = 0u;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076678, &qword_1C2F7A058);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *&a2[v5] = sub_1C2F7629C();
  v9 = OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routesSubject;
  v10 = MEMORY[0x1E69E7CC0];
  *&v28 = MEMORY[0x1E69E7CC0];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076670, &qword_1C2F7A050);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&a2[v9] = sub_1C2F7629C();
  *&a2[OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_cancellables] = MEMORY[0x1E69E7CD0];
  v14 = OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_modelIconCache;
  *&a2[v14] = sub_1C2F266BC(v10);
  *&a2[OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService____lazy_storage___routeDelegate] = 0;
  sub_1C2F09348(v32, &a2[OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController]);
  v27.receiver = a2;
  v27.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v27, sel_init);
  v16 = &v15[OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController];
  v17 = *&v15[OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 24];
  v18 = *&v15[OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 32];
  __swift_project_boxed_opaque_existential_1(&v15[OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController], v17);
  v19 = v15;
  v20 = sub_1C2F21504();
  (*(v18 + 40))(v20, v17, v18);

  v21 = *(v16 + 3);
  v22 = *(v16 + 4);
  __swift_project_boxed_opaque_existential_1(v16, v21);
  (*(v22 + 8))(v21, v22);
  v23 = *(v16 + 3);
  v24 = *(v16 + 4);
  __swift_project_boxed_opaque_existential_1(v16, v23);
  v25 = (*(v24 + 16))(v23, v24);
  sub_1C2F240B4();

  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  return v19;
}

uint64_t sub_1C2F23C4C()
{
  result = sub_1C2F761FC();
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

uint64_t sub_1C2F23D50()
{
  result = sub_1C2F761FC();
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