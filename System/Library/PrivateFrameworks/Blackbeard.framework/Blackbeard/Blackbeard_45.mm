uint64_t sub_1E63751D4(char *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = a4[3];
  v9[2] = a4[2];
  v9[3] = v4;
  v9[4] = a4[4];
  v5 = a4[1];
  v9[0] = *a4;
  v9[1] = v5;
  v6 = *a1;
  v7 = sub_1E65DBB48();
  sub_1E639C7C4(v9, v6, v7);
}

uint64_t sub_1E6375254(uint64_t a1, unint64_t a2)
{
  sub_1E600A014(a1, a2);

  return MEMORY[0x1EEE05318](a1, a2);
}

uint64_t sub_1E63752A4(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v4 = sub_1E65DBB88();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = sub_1E65E3B68();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v15 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  v2[13] = v13;
  *v13 = v2;
  v13[1] = sub_1E637544C;

  return v15();
}

uint64_t sub_1E637544C()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6375594, 0, 0);
  }

  else
  {
    v4 = v3[12];
    v5 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1E6375594()
{
  v41 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  sub_1E65DB958();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v1;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40 = v12;
    *v11 = 136315394;
    v13 = sub_1E65DBB58();
    v14 = 0xEE00647261774164;
    v15 = 0x656373656C616F43;
    v16 = 0x80000001E6616680;
    v17 = 0xD000000000000013;
    if (v13 != 2)
    {
      v17 = 0x7274537472617453;
      v16 = 0xEB000000006B6165;
    }

    if (v13)
    {
      v15 = 0x7741656C676E6953;
      v14 = 0xEB00000000647261;
    }

    if (v13 <= 1)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }

    if (v13 <= 1)
    {
      v19 = v14;
    }

    else
    {
      v19 = v16;
    }

    v20 = v0[14];
    v21 = v0[11];
    v39 = v0[12];
    v22 = v0[10];
    (*(v0[8] + 8))(v0[9], v0[7]);
    v23 = sub_1E5DFD4B0(v18, v19, &v40);

    *(v11 + 4) = v23;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v24 = v0[2];
    v25 = MEMORY[0x1E694E6C0](v0[3], v0[4]);
    v27 = sub_1E5DFD4B0(v25, v26, &v40);

    *(v11 + 14) = v27;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "Failed to publish page enter event for %s error %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v12, -1, -1);
    MEMORY[0x1E694F1C0](v11, -1, -1);

    (*(v21 + 8))(v39, v22);
  }

  else
  {
    v28 = v0[14];
    v30 = v0[11];
    v29 = v0[12];
    v32 = v0[9];
    v31 = v0[10];
    v33 = v0[7];
    v34 = v0[8];

    (*(v34 + 8))(v32, v33);
    (*(v30 + 8))(v29, v31);
  }

  v35 = v0[12];
  v36 = v0[9];

  v37 = v0[1];

  return v37();
}

uint64_t sub_1E63758A8(char a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E63731D0(a1, v1 + v5);
}

uint64_t sub_1E6375980(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E5DFA78C;

  return sub_1E63735EC(a1, a2, v2 + v7, v9, v10);
}

uint64_t sub_1E6375AA0(uint64_t a1)
{
  v3 = *(sub_1E65DBB88() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1E63741D0(a1, v1 + v4, v7);
}

uint64_t sub_1E6375B84(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E637461C(a1, a2, v6);
}

uint64_t sub_1E6375C04(char *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1E65DBB88() - 8);
  v9 = v2 + ((v7 + *(v8 + 80) + 80) & ~*(v8 + 80));

  return sub_1E63751D4(a1, a2, v2 + v6, (v2 + v7));
}

uint64_t sub_1E6375CF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6375D40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6375DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v71 = a2;
  v74 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078928, &qword_1E65FE218);
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v63 = v53 - v9;
  v10 = sub_1E65E15C8();
  v60 = *(v10 - 8);
  v61 = v10;
  v11 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v58 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65E1568();
  v65 = *(v13 - 8);
  v66 = v13;
  v14 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v73 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1E65E1598();
  v64 = *(v62 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v72 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppComposer();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v53 - v23;
  v70 = sub_1E65E15E8();
  v59 = *(v70 - 8);
  v25 = v59;
  v26 = *(v59 + 64);
  v27 = MEMORY[0x1EEE9AC00](v70);
  v29 = v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v69 = v53 - v30;
  v55 = v24;
  sub_1E5E1DEAC(v5, v24);
  v31 = *(v19 + 80);
  v32 = ((v31 + 16) & ~v31) + v20;
  v33 = (v31 + 16) & ~v31;
  v54 = v32;
  v34 = swift_allocObject();
  v56 = v33;
  sub_1E5E1FA80(v24, v34 + v33);
  sub_1E5E1DEAC(v5, v22);
  v35 = swift_allocObject();
  sub_1E5E1FA80(v22, v35 + v33);
  v36 = v69;
  sub_1E65E15D8();
  v57 = *v5;
  (*(v25 + 16))(v29, v36, v70);
  sub_1E65E1588();
  (*(v60 + 104))(v58, *MEMORY[0x1E699E8D0], v61);

  sub_1E65E1558();
  type metadata accessor for AppFeature();
  sub_1E637734C(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v61 = sub_1E637734C(&qword_1EE2D64E0, MEMORY[0x1E699E8B8]);
  v38 = v62;
  v37 = v63;
  sub_1E65E4DE8();
  v39 = v55;
  sub_1E5E1DEAC(v5, v55);
  v40 = *a4;
  v41 = a4[3];
  v53[1] = a4[5];
  v58 = a4[7];
  v60 = a4[9];
  v42 = (v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  sub_1E5E1FA80(v39, v43 + v56);
  v44 = (v43 + v42);
  v45 = *(a4 + 3);
  v44[2] = *(a4 + 2);
  v44[3] = v45;
  v44[4] = *(a4 + 4);
  v46 = *(a4 + 1);
  *v44 = *a4;
  v44[1] = v46;
  v47 = (v43 + ((v42 + 87) & 0xFFFFFFFFFFFFFFF8));
  v48 = v71;
  *v47 = v74;
  v47[1] = v48;

  swift_unknownObjectRetain();

  v50 = v72;
  v49 = v73;
  v51 = sub_1E65E4F08();

  (*(v67 + 8))(v37, v68);
  (*(v65 + 8))(v49, v66);
  (*(v64 + 8))(v50, v38);
  (*(v59 + 8))(v69, v70);
  return v51;
}

id sub_1E6376498()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_1E65D74E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D74C8();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1E62282E0(v3);
  }

  (*(v5 + 32))(v8, v3, v4);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v10 = result;
    v11 = sub_1E65D7448();
    sub_1E6215168(MEMORY[0x1E69E7CC0]);
    v12 = sub_1E65E5AF8();

    [v10 openSensitiveURL:v11 withOptions:v12];

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63766AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078938, &qword_1E65FE240);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6376750, 0, 0);
}

uint64_t sub_1E6376750()
{
  v1 = v0[3];
  v2 = v0[4];

  v3 = MEMORY[0x1E69431F0](v1, v2);
  if (v3 == 5)
  {
    v4 = v0[7];
    v5 = sub_1E65E1548();
    sub_1E637734C(&qword_1ED078930, MEMORY[0x1E699E898]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x1E699E890], v5);
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v3;
    v10 = v0[5];
    v11 = v10 + *(type metadata accessor for AppComposer() + 20);
    v12 = v11 + *(type metadata accessor for AppEnvironment() + 60);
    v13 = EngagementService.makeCurrentValuePlacementStream.getter();
    v0[8] = v14;
    v18 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v0[9] = v16;
    *v16 = v0;
    v16[1] = sub_1E637698C;
    v17 = v0[7];

    return v18(v17, v9);
  }
}

uint64_t sub_1E637698C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6376AA4, 0, 0);
}

uint64_t sub_1E6376AA4()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078940, &unk_1E65FE250);
  v3[4] = sub_1E5FED46C(&qword_1EE2D4458, &qword_1ED078940, &unk_1E65FE250);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E6377394();
  sub_1E5FED46C(&qword_1EE2D4778, &qword_1ED078938, &qword_1E65FE240);
  sub_1E65E6BB8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6376BE4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(a2 + 8);
  return MEMORY[0x1EEE6DFA0](sub_1E6376C10, 0, 0);
}

uint64_t sub_1E6376C10()
{
  v1 = *(v0 + 32);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 24);
    v3 = v2;
  }

  **(v0 + 16) = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E6376C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6376CB4, 0, 0);
}

uint64_t sub_1E6376CB4()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = MEMORY[0x1E69431F0](v1, v2);
  if (v3 == 5)
  {
    v4 = sub_1E65E1548();
    sub_1E637734C(&qword_1ED078930, MEMORY[0x1E699E898]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E699E890], v4);
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[4];
    v9 = v3;
    v10 = v8 + *(type metadata accessor for AppComposer() + 20);
    v11 = v10 + *(type metadata accessor for AppEnvironment() + 60);
    v12 = EngagementService.resetPlacement.getter();
    v0[5] = v13;
    v16 = (v12 + *v12);
    v14 = v12[1];
    v15 = swift_task_alloc();
    v0[6] = v15;
    *v15 = v0;
    v15[1] = sub_1E6376ED0;

    return v16(v9);
  }
}

uint64_t sub_1E6376ED0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1E6376FE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AF0, &qword_1E65F77B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = *(type metadata accessor for AppState() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0668();
  v5 = sub_1E65E07B8();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  return sub_1E65E15F8();
}

uint64_t sub_1E63770D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFA78C;

  return sub_1E63766AC(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E63771CC(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6376C90(a1, a2, v2 + v7);
}

void sub_1E63772AC(uint64_t a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1E6329DCC((v1 + v4), *(v1 + ((v4 + 87) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v4 + 87) & 0xFFFFFFFFFFFFFFF8) + 8), a1);
}

uint64_t sub_1E637734C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E6377394()
{
  result = qword_1EE2D4678;
  if (!qword_1EE2D4678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2D4678);
  }

  return result;
}

uint64_t ToastActionPriority.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E637746C()
{
  result = qword_1ED078948;
  if (!qword_1ED078948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078948);
  }

  return result;
}

uint64_t BookmarkError.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E637755C()
{
  result = qword_1ED078950;
  if (!qword_1ED078950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078950);
  }

  return result;
}

uint64_t sub_1E63775C0(uint64_t a1)
{
  v2 = v1;
  v35 = sub_1E65D74E8();
  v4 = *(v35 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 104);
  v8 = sub_1E65DAE38();
  result = sub_1E65DAE38();
  if (v8 == result)
  {
    if (qword_1EE2D7790 != -1)
    {
LABEL_28:
      swift_once();
    }

    v10 = sub_1E65E3B68();
    __swift_project_value_buffer(v10, qword_1EE2EA2A0);
    sub_1E65E3B18();
    v30 = v2;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1E65E6788();
      sub_1E6377988();
      sub_1E63779D4();
      sub_1E65E6268();
      a1 = v38;
      v11 = v39;
      v12 = v40;
      v13 = v41;
      v14 = v42;
    }

    else
    {
      v15 = -1 << *(a1 + 32);
      v11 = a1 + 56;
      v12 = ~v15;
      v16 = -v15;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v14 = v17 & *(a1 + 56);

      v13 = 0;
    }

    v31 = v12;
    v2 = (v12 + 64) >> 6;
    v32 = (v4 + 8);
    v33 = a1;
    while (1)
    {
      v19 = v13;
      if (a1 < 0)
      {
        v23 = sub_1E65E67F8();
        if (!v23)
        {
          return sub_1E5E24EE4();
        }

        v36 = v23;
        sub_1E6377988();
        swift_dynamicCast();
        v22 = v37;
        v4 = v14;
        if (!v37)
        {
          return sub_1E5E24EE4();
        }
      }

      else
      {
        v20 = v13;
        v21 = v14;
        if (!v14)
        {
          while (1)
          {
            v13 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v13 >= v2)
            {
              return sub_1E5E24EE4();
            }

            v21 = *(v11 + 8 * v13);
            ++v20;
            if (v21)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
          goto LABEL_28;
        }

LABEL_16:
        v4 = (v21 - 1) & v21;
        v22 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v21)))));
        if (!v22)
        {
          return sub_1E5E24EE4();
        }
      }

      v24 = [v22 URL];
      v25 = v34;
      sub_1E65D7478();

      v26 = sub_1E65D7428();
      v28 = v27;
      (*v32)(v25, v35);
      if (v26 == sub_1E65D9188() && v28 == v29)
      {

LABEL_23:
        sub_1E5E24EE4();
        return sub_1E6377A2C();
      }

      v18 = sub_1E65E6C18();

      a1 = v33;
      v14 = v4;
      if (v18)
      {
        goto LABEL_23;
      }
    }
  }

  return result;
}

unint64_t sub_1E6377988()
{
  result = qword_1ED073C40;
  if (!qword_1ED073C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED073C40);
  }

  return result;
}

unint64_t sub_1E63779D4()
{
  result = qword_1ED073C48;
  if (!qword_1ED073C48)
  {
    sub_1E6377988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073C48);
  }

  return result;
}

uint64_t sub_1E6377A2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078958, qword_1E65FE3C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v12 = sub_1E65E3B68();
  __swift_project_value_buffer(v12, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v13 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
  sub_1E65DD308();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1E6377DB0;
  *(v14 + 24) = 0;
  (*(v2 + 16))(v5, v7, v1);
  v15 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v16 = (v3 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v2 + 32))(v17 + v15, v5, v1);
  v18 = (v17 + v16);
  *v18 = sub_1E6378640;
  v18[1] = v14;
  sub_1E65DACA8();
  (*(v2 + 8))(v7, v1);
  v19 = v24;
  v20 = sub_1E65DACC8();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_1E5E20B10, v21);

  return (*(v23 + 8))(v11, v19);
}

void sub_1E6377DB0(uint64_t *a1)
{
  v2 = v1;
  v46 = *MEMORY[0x1E69E9840];
  v4 = sub_1E65D8838();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  LOBYTE(v7) = *(v9 + 32);
  v10 = v7 & 0x3F;
  v11 = ((1 << v7) + 63) >> 6;
  v12 = 8 * v11;

  if (v10 > 0xD)
  {
    goto LABEL_22;
  }

  while (2)
  {
    v37 = v11;
    v38 = v2;
    v36[1] = v36;
    MEMORY[0x1EEE9AC00](v13);
    v39 = v36 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v39, v12);
    v40 = 0;
    v12 = 0;
    v2 = v9 + 56;
    v14 = 1 << *(v9 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v11 = v15 & *(v9 + 56);
    v16 = (v14 + 63) >> 6;
    v42 = (v5 + 8);
    v43 = v5 + 16;
    v44 = v5;
    v45 = v9;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v21 = v18 | (v12 << 6);
      v22 = *(v9 + 48);
      v23 = *(v5 + 72);
      v41 = v21;
      (*(v5 + 16))(v8, v22 + v23 * v21, v4);
      v24 = sub_1E65D8828();
      v26 = v25;
      if (v24 == sub_1E65D9198() && v26 == v27)
      {

        (*v42)(v8, v4);
        v5 = v44;
        v9 = v45;
        goto LABEL_16;
      }

      v17 = sub_1E65E6C18();

      (*v42)(v8, v4);
      v5 = v44;
      v9 = v45;
      if (v17)
      {
LABEL_16:
        *&v39[(v41 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v41;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
LABEL_19:
          v29 = sub_1E60893A0(v39, v37, v40, v9);
          goto LABEL_20;
        }
      }
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v16)
      {
        goto LABEL_19;
      }

      v20 = *(v2 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v34 = swift_slowAlloc();
  v35 = sub_1E6378280(v34, v11, v9, sub_1E63781F4, 0);
  if (v2)
  {

    MEMORY[0x1E694F1C0](v34, -1, -1);
    __break(1u);
  }

  else
  {
    v29 = v35;

    MEMORY[0x1E694F1C0](v34, -1, -1);
LABEL_20:
    v30 = [objc_opt_self() currentNotificationCenter];
    v31 = *(v29 + 16);

    v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [v30 smu:v32 setBadgeNumber:0 withCompletionHandler:?];

    v33 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_1E63781F4()
{
  v0 = sub_1E65D8828();
  v2 = v1;
  if (v0 == sub_1E65D9198() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E65E6C18();
  }

  return v4 & 1;
}

void *sub_1E6378280(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_1E6065518(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

uint64_t sub_1E6378310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078958, qword_1E65FE3C0);
  v9 = sub_1E65DACC8();
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;

  v9(sub_1E6378704, v10);
}

void sub_1E63783E4(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  v21 = a1;
  if (a2)
  {
    v22 = 1;
    v16 = a1;
    a5(&v21);
    v17 = a1;
    v18 = 1;
  }

  else
  {

    a3(&v21);
    v19 = sub_1E65DACC8();
    v20 = swift_allocObject();
    *(v20 + 16) = a5;
    *(v20 + 24) = a6;

    v19(sub_1E5E20B08, v20);

    (*(v12 + 8))(v15, v11);
    v17 = a1;
    v18 = 0;
  }

  sub_1E637871C(v17, v18);
}

uint64_t sub_1E637859C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_1E65DACA8();
}

uint64_t sub_1E6378648(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078958, qword_1E65FE3C0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1E6378310(a1, a2, v2 + v6, v8, v9);
}

void sub_1E637871C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_1E6378728(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  sub_1E627F0C8(v6, 0);
}

uint64_t sub_1E63787D0()
{
  v0 = sub_1E65E07B8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0668();
  sub_1E65E0708();
  return sub_1E65E31F8();
}

uint64_t sub_1E6378880@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17[-4] - v5;
  v7 = [v1 clickstreamMetricsEvent];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1E65E5B08();

    strcpy(v17, "actionContext");
    v17[7] = -4864;
    sub_1E65E6848();
    if (*(v9 + 16) && (v10 = sub_1E6417048(v18), (v11 & 1) != 0))
    {
      sub_1E5DFA11C(*(v9 + 56) + 32 * v10, v19);
      sub_1E6009FC0(v18);

      if (swift_dynamicCast())
      {
        sub_1E65D9D68();
        v12 = sub_1E65D9D78();
        v13 = *(v12 - 8);
        if ((*(v13 + 48))(v6, 1, v12) != 1)
        {
          (*(v13 + 32))(a1, v6, v12);
          return (*(v13 + 56))(a1, 0, 1, v12);
        }

        sub_1E5DFE50C(v6, &qword_1ED073578, &qword_1E65F0E60);
      }
    }

    else
    {

      sub_1E6009FC0(v18);
    }
  }

  v14 = sub_1E65D9D78();
  return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
}

uint64_t sub_1E6378AF8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076458, &qword_1E65F56A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v16 - v5;
  v7 = [v1 clickstreamMetricsEvent];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1E65E5B08();

    v16[1] = 0x79546E6F69746361;
    v16[2] = 0xEA00000000006570;
    sub_1E65E6848();
    if (*(v9 + 16) && (v10 = sub_1E6417048(v17), (v11 & 1) != 0))
    {
      sub_1E5DFA11C(*(v9 + 56) + 32 * v10, v18);
      sub_1E6009FC0(v17);

      if (swift_dynamicCast())
      {
        sub_1E65D8C48();
        v12 = sub_1E65D8C68();
        v13 = *(v12 - 8);
        if ((*(v13 + 48))(v6, 1, v12) != 1)
        {
          (*(v13 + 32))(a1, v6, v12);
          return (*(v13 + 56))(a1, 0, 1, v12);
        }

        sub_1E5DFE50C(v6, &qword_1ED076458, &qword_1E65F56A8);
      }
    }

    else
    {

      sub_1E6009FC0(v17);
    }
  }

  v14 = sub_1E65D8C68();
  return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
}

uint64_t sub_1E6378D68()
{
  result = [v0 clickstreamMetricsEvent];
  if (result)
  {
    v2 = result;
    v3 = sub_1E65E5B08();

    sub_1E65E6848();
    if (*(v3 + 16) && (v4 = sub_1E6417048(v10), (v5 & 1) != 0))
    {
      sub_1E5DFA11C(*(v3 + 56) + 32 * v4, &v11);
      sub_1E6009FC0(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0730D8, &qword_1E65ECF30);
      if (swift_dynamicCast())
      {
        if (MEMORY[0x6E6974656B72617D] && (v6 = sub_1E6215038(0x6E656D6563616C70, 0xE900000000000074), (v7 & 1) != 0))
        {
          sub_1E5DFA11C(MEMORY[0x6E6974656B7261A5] + 32 * v6, v10);

          if (swift_dynamicCast())
          {

            return v11;
          }
        }

        else
        {
        }
      }
    }

    else
    {
      sub_1E6009FC0(v10);
    }

    sub_1E65E6848();
    if (*(v3 + 16) && (v8 = sub_1E6417048(v10), (v9 & 1) != 0))
    {
      sub_1E5DFA11C(*(v3 + 56) + 32 * v8, &v11);
      sub_1E6009FC0(v10);

      if (swift_dynamicCast())
      {
        return 0x6E656D6563616C70;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      sub_1E6009FC0(v10);
      return 0;
    }
  }

  return result;
}

id sub_1E6378FAC()
{
  result = [v0 clickstreamMetricsEvent];
  if (result)
  {
    v2 = result;
    v3 = sub_1E65E5B08();

    sub_1E65E6848();
    if (*(v3 + 16) && (v4 = sub_1E6417048(v10), (v5 & 1) != 0))
    {
      sub_1E5DFA11C(*(v3 + 56) + 32 * v4, &v11);
      sub_1E6009FC0(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0730D8, &qword_1E65ECF30);
      if (swift_dynamicCast())
      {
        if (MEMORY[0x6E6974656B72617D] && (v6 = sub_1E6215038(0x496567617373656DLL, 0xE900000000000064), (v7 & 1) != 0))
        {
          sub_1E5DFA11C(MEMORY[0x6E6974656B7261A5] + 32 * v6, v10);

          if (swift_dynamicCast())
          {

            return v11;
          }
        }

        else
        {
        }
      }
    }

    else
    {
      sub_1E6009FC0(v10);
    }

    sub_1E65E6848();
    if (*(v3 + 16) && (v8 = sub_1E6417048(v10), (v9 & 1) != 0))
    {
      sub_1E5DFA11C(*(v3 + 56) + 32 * v8, &v11);
      sub_1E6009FC0(v10);

      if (swift_dynamicCast())
      {
        return 0xD000000000000012;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      sub_1E6009FC0(v10);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E63791FC()
{
  result = [v0 clickstreamMetricsEvent];
  if (result)
  {
    v2 = result;
    v3 = sub_1E65E5B08();

    sub_1E65E6848();
    if (*(v3 + 16) && (v4 = sub_1E6417048(v6), (v5 & 1) != 0))
    {
      sub_1E5DFA11C(*(v3 + 56) + 32 * v4, v7);
      sub_1E6009FC0(v6);

      if (swift_dynamicCast())
      {
        return 0x6449746567726174;
      }
    }

    else
    {

      sub_1E6009FC0(v6);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1E6379318@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076450, &qword_1E65F56A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v16 - v5;
  v7 = [v1 clickstreamMetricsEvent];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1E65E5B08();

    v16[1] = 0x7954746567726174;
    v16[2] = 0xEA00000000006570;
    sub_1E65E6848();
    if (*(v9 + 16) && (v10 = sub_1E6417048(v17), (v11 & 1) != 0))
    {
      sub_1E5DFA11C(*(v9 + 56) + 32 * v10, v18);
      sub_1E6009FC0(v17);

      if (swift_dynamicCast())
      {
        sub_1E65D8F08();
        v12 = sub_1E65D8F28();
        v13 = *(v12 - 8);
        if ((*(v13 + 48))(v6, 1, v12) != 1)
        {
          (*(v13 + 32))(a1, v6, v12);
          return (*(v13 + 56))(a1, 0, 1, v12);
        }

        sub_1E5DFE50C(v6, &qword_1ED076450, &qword_1E65F56A0);
      }
    }

    else
    {

      sub_1E6009FC0(v17);
    }
  }

  v14 = sub_1E65D8F28();
  return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
}

uint64_t sub_1E6379588()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6373627553746F6ELL;
    if (v1 != 6)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0xD000000000000025;
    if (v1 != 4)
    {
      v6 = 0xD000000000000017;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x5379646165726C61;
    v3 = 0xD000000000000017;
    if (v1 != 2)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0)
    {
      v2 = 0x64656C6261736964;
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
}

uint64_t getEnumTagSinglePayload for AudioLanguageEngagementSheetDetourError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AudioLanguageEngagementSheetDetourError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E63797FC()
{
  result = qword_1ED078960;
  if (!qword_1ED078960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078960);
  }

  return result;
}

uint64_t sub_1E6379850()
{
  v17 = sub_1E65D7048();
  v0 = *(v17 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1E65DBB48();
  v5 = result;
  v20 = 0;
  v21 = 0xE000000000000000;
  v16 = *(result + 16);
  if (v16)
  {
    v6 = 0;
    v7 = (v0 + 8);
    v8 = (result + 40);
    while (v6 < *(v5 + 16))
    {
      v10 = *v8;
      v18 = *(v8 - 1);
      v19 = v10;

      sub_1E65D7038();
      sub_1E5F9AEA8();
      v11 = sub_1E65E6698();
      (*v7)(v3, v17);
      v18 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
      sub_1E6379A84();
      v12 = sub_1E65E5B68();
      v14 = v13;

      if (!v20 && v21 == 0xE000000000000000 || (sub_1E65E6C18() & 1) != 0)
      {
        v9 = v12;
      }

      else
      {
        v18 = 44;
        v19 = 0xE100000000000000;
        MEMORY[0x1E694D7C0](v12, v14);

        v9 = v18;
        v14 = v19;
      }

      MEMORY[0x1E694D7C0](v9, v14);
      ++v6;

      v8 += 2;
      if (v16 == v6)
      {
        v15 = v20;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = 0;
LABEL_12:

    return v15;
  }

  return result;
}

unint64_t sub_1E6379A84()
{
  result = qword_1EE2D4838;
  if (!qword_1EE2D4838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F18, &qword_1E65F1150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4838);
  }

  return result;
}

uint64_t sub_1E6379AE8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6379B08, 0, 0);
}

uint64_t sub_1E6379B08()
{
  v1 = v0[3];
  v2 = *(sub_1E65DBB48() + 16);

  v3 = v0[3];
  if (v2 < 2)
  {
    v14 = v0[3];
    v15 = sub_1E65DBB48();
    if (v15[2])
    {
      v16 = v0[2];
      v17 = v15[4];
      v18 = v15[5];
      v0[9] = v18;

      v19 = v16 + *(type metadata accessor for AppEnvironment() + 40);
      v20 = AwardsService.fetchSeymourAchievementImage.getter();
      v0[10] = v21;
      v28 = (v20 + *v20);
      v22 = v20[1];
      v23 = swift_task_alloc();
      v0[11] = v23;
      *v23 = v0;
      v23[1] = sub_1E6379FA0;
      v24.n128_u64[0] = 0x4069000000000000;
      v25.n128_u64[0] = 0x4069000000000000;

      return v28(v17, v18, v24, v25);
    }

    else
    {

      v26 = v0[1];

      return v26(0, 0xF000000000000000);
    }
  }

  else
  {
    v4 = v0[2];
    v5 = v4 + *(type metadata accessor for AppEnvironment() + 40);
    v6 = AwardsService.fetchCoalescedSeymourAchievementImage.getter();
    v0[4] = v7;
    v8 = sub_1E65DBB48();
    v0[5] = v8;
    v27 = (v6 + *v6);
    v9 = v6[1];
    v10 = swift_task_alloc();
    v0[6] = v10;
    *v10 = v0;
    v10[1] = sub_1E6379DCC;
    v11.n128_u64[0] = 0x4072C00000000000;
    v12.n128_u64[0] = 0x4069000000000000;

    return v27(v8, v11, v12);
  }
}

uint64_t sub_1E6379DCC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v9 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = sub_1E637A174;
  }

  else
  {
    v6 = v3[4];
    v7 = v3[5];

    v5 = sub_1E6379EF0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6379EF0()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = UIImagePNGRepresentation(*(v0 + 56));
    if (v2)
    {
      v3 = v2;
      v4 = sub_1E65D7518();
      v6 = v5;

      v7 = v6;
      v8 = v4;
      goto LABEL_6;
    }
  }

  v8 = 0;
  v7 = 0xF000000000000000;
LABEL_6:
  v9 = *(v0 + 8);

  return v9(v8, v7);
}

uint64_t sub_1E6379FA0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v9 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = sub_1E637A1E0;
  }

  else
  {
    v7 = v3[9];
    v6 = v3[10];

    v5 = sub_1E637A0C4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E637A0C4()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = UIImagePNGRepresentation(*(v0 + 96));
    if (v2)
    {
      v3 = v2;
      v4 = sub_1E65D7518();
      v6 = v5;

      v7 = v6;
      v8 = v4;
      goto LABEL_6;
    }
  }

  v8 = 0;
  v7 = 0xF000000000000000;
LABEL_6:
  v9 = *(v0 + 8);

  return v9(v8, v7);
}

uint64_t sub_1E637A174()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[8];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1E637A1E0()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[13];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1E637A270@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v21 = a2;
  v22 = a3;
  v23 = a5;
  v7 = sub_1E65E07B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v20 - v15;
  MEMORY[0x1EEE9AC00](v14);
  if (a1 >= 2u)
  {
    if (a1 == 3)
    {

      return sub_1E65E09F8();
    }

    else
    {
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_1E65E68A8();
      MEMORY[0x1E694D7C0](0xD00000000000003FLL, 0x80000001E6616810);
      LOBYTE(v24) = 2;
      sub_1E65E69B8();
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    v20[1] = v18;
    v20[2] = v17;
    if (a4 != -1)
    {
      v26 = v21;
      v27 = v22;
      v28 = a4;
      v24 = xmmword_1E65FE4F0;
      v25 = 1;
      sub_1E5F8710C(v21, v22, a4 & 1);
      sub_1E6018A94();
      sub_1E6018AE8();
      sub_1E65D7FD8();
      sub_1E5FEE4CC(v26, v27, v28);
    }

    sub_1E65E0768();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0668();
    sub_1E65E0798();
    (*(v8 + 8))(v16, v7);
    if (a4 != -1)
    {
      v26 = v21;
      v27 = v22;
      v28 = a4;
      v24 = xmmword_1E65FE4F0;
      v25 = 1;
      sub_1E5F8710C(v21, v22, a4 & 1);
      sub_1E6018A94();
      sub_1E6018AE8();
      sub_1E65D7FD8();
      sub_1E5FEE4CC(v26, v27, v28);
    }

    sub_1E65E0778();
    sub_1E65E0778();
    sub_1E65E0778();
    sub_1E65E0778();
    return sub_1E65E09E8();
  }

  return result;
}

uint64_t sub_1E637A69C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  sub_1E65E0708();
  sub_1E65E0708();
  return sub_1E65DD0E8();
}

uint64_t sub_1E637A744(uint64_t a1, uint64_t a2)
{
  sub_1E65DCC38();
  sub_1E65DCC28();
  sub_1E65DCC48();
  sub_1E65D8378();
  v3 = sub_1E65DCC58();
  v4 = *(*(v3 - 8) + 8);

  return v4(a2, v3);
}

uint64_t SectionMetrics.init(identifier:name:targetType:type:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  v10 = type metadata accessor for SectionMetrics();
  v11 = *(v10 + 24);
  v12 = sub_1E65D8F28();
  result = (*(*(v12 - 8) + 32))(&a7[v11], a5, v12);
  *&a7[*(v10 + 32)] = a6;
  return result;
}

uint64_t SectionMetrics.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SectionMetrics.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SectionMetrics.targetType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionMetrics() + 24);
  v4 = sub_1E65D8F28();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionMetrics.metadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for SectionMetrics() + 32));
}

uint64_t sub_1E637A9B8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x7954746567726174;
  v4 = 1701869940;
  if (v1 != 3)
  {
    v4 = 0x617461646174656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
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

uint64_t sub_1E637AA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E637BC04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E637AA70(uint64_t a1)
{
  v2 = sub_1E637B944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E637AAAC(uint64_t a1)
{
  v2 = sub_1E637B944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SectionMetrics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078968, &qword_1E65FE500);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E637B944();
  sub_1E65E6DA8();
  v11 = *v3;
  v12 = v3[1];
  v23 = 0;
  sub_1E65E6B48();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v22 = 1;
    sub_1E65E6B48();
    v15 = type metadata accessor for SectionMetrics();
    v16 = *(v15 + 24);
    v21 = 2;
    sub_1E65D8F28();
    sub_1E5DFC960(&qword_1EE2D70D0, MEMORY[0x1E69CBD08]);
    sub_1E65E6B78();
    v20 = 3;
    sub_1E60EE2B8();
    sub_1E65E6B78();
    v19 = *(v3 + *(v15 + 32));
    v18[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072380, &qword_1E65EABB0);
    sub_1E637B998(&qword_1EE2D4940);
    sub_1E65E6B78();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SectionMetrics.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  sub_1E65E5D78();
  v6 = v1[2];
  v7 = v1[3];
  sub_1E65E5D78();
  v8 = type metadata accessor for SectionMetrics();
  v9 = *(v8 + 24);
  sub_1E65D8F28();
  sub_1E5DFC960(&qword_1EE2D70C8, MEMORY[0x1E69CBD08]);
  sub_1E65E5B48();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5D78();

  v10 = *(v2 + *(v8 + 32));

  return sub_1E61AFF18(a1, v10);
}

uint64_t SectionMetrics.hashValue.getter()
{
  v1 = v0;
  sub_1E65E6D28();
  v2 = *v0;
  v3 = v0[1];
  sub_1E65E5D78();
  v4 = v0[2];
  v5 = v0[3];
  sub_1E65E5D78();
  v6 = type metadata accessor for SectionMetrics();
  v7 = *(v6 + 24);
  sub_1E65D8F28();
  sub_1E5DFC960(&qword_1EE2D70C8, MEMORY[0x1E69CBD08]);
  sub_1E65E5B48();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5D78();

  sub_1E61AFF18(v9, *(v1 + *(v6 + 32)));
  return sub_1E65E6D78();
}

uint64_t SectionMetrics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_1E65D8F28();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078970, &qword_1E65FE508);
  v26 = *(v29 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v9 = v23 - v8;
  v10 = type metadata accessor for SectionMetrics();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E637B944();
  v28 = v9;
  v15 = v30;
  sub_1E65E6D98();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v26;
  v17 = v27;
  v36 = 0;
  *v13 = sub_1E65E6AA8();
  v13[1] = v18;
  v30 = v18;
  v35 = 1;
  v13[2] = sub_1E65E6AA8();
  v13[3] = v19;
  v34 = 2;
  sub_1E5DFC960(&qword_1ED075340, MEMORY[0x1E69CBD08]);
  v23[1] = 0;
  v24 = v13;
  sub_1E65E6AD8();
  v20 = *(v17 + 32);
  v21 = v24;
  v20(v24 + *(v10 + 24), v6, v3);
  v33 = 3;
  sub_1E60EE30C();
  sub_1E65E6AD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072380, &qword_1E65EABB0);
  v32 = 4;
  sub_1E637B998(&qword_1ED078978);
  sub_1E65E6AD8();
  (*(v16 + 8))(v28, v29);
  *(v21 + *(v10 + 32)) = v31;
  sub_1E637BA04(v21, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E637BA68(v21);
}

uint64_t sub_1E637B44C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1E637B4AC(uint64_t a1)
{
  v3 = v1;
  sub_1E65E6D28();
  v4 = *v1;
  v5 = v1[1];
  sub_1E65E5D78();
  v6 = v1[2];
  v7 = v1[3];
  sub_1E65E5D78();
  v8 = *(a1 + 24);
  sub_1E65D8F28();
  sub_1E5DFC960(&qword_1EE2D70C8, MEMORY[0x1E69CBD08]);
  sub_1E65E5B48();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5D78();

  sub_1E61AFF18(v10, *(v3 + *(a1 + 32)));
  return sub_1E65E6D78();
}

uint64_t sub_1E637B598(__int128 *a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v2;
  v7 = v2[1];
  sub_1E65E5D78();
  v8 = v2[2];
  v9 = v2[3];
  sub_1E65E5D78();
  v10 = *(a2 + 24);
  sub_1E65D8F28();
  sub_1E5DFC960(&qword_1EE2D70C8, MEMORY[0x1E69CBD08]);
  sub_1E65E5B48();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5D78();

  v11 = *(v4 + *(a2 + 32));

  return sub_1E61AFF18(a1, v11);
}

uint64_t sub_1E637B67C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1E65E6D28();
  v5 = *v2;
  v6 = v2[1];
  sub_1E65E5D78();
  v7 = v2[2];
  v8 = v2[3];
  sub_1E65E5D78();
  v9 = *(a2 + 24);
  sub_1E65D8F28();
  sub_1E5DFC960(&qword_1EE2D70C8, MEMORY[0x1E69CBD08]);
  sub_1E65E5B48();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5D78();

  sub_1E61AFF18(v11, *(v4 + *(a2 + 32)));
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard14SectionMetricsV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E65E6C18() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1E65E6C18() & 1) == 0)
  {
    goto LABEL_20;
  }

  v6 = type metadata accessor for SectionMetrics();
  v7 = *(v6 + 24);
  sub_1E65D8F28();
  sub_1E5DFC960(&qword_1EE2D70C0, MEMORY[0x1E69CBD08]);
  sub_1E65E5E98();
  sub_1E65E5E98();
  if (v18 == v16 && v19 == v17)
  {
  }

  else
  {
    v8 = sub_1E65E6C18();

    if ((v8 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v9 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  v11 = v10;
  if (v9 != _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0() || v11 != v12)
  {
    v13 = sub_1E65E6C18();

    if (v13)
    {
      goto LABEL_19;
    }

LABEL_20:
    v14 = 0;
    return v14 & 1;
  }

LABEL_19:
  v14 = sub_1E6287024(*(a1 + *(v6 + 32)), *(a2 + *(v6 + 32)));
  return v14 & 1;
}

unint64_t sub_1E637B944()
{
  result = qword_1EE2DA968;
  if (!qword_1EE2DA968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DA968);
  }

  return result;
}

uint64_t sub_1E637B998(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072380, &qword_1E65EABB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E637BA04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionMetrics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E637BA68(uint64_t a1)
{
  v2 = type metadata accessor for SectionMetrics();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E637BB00()
{
  result = qword_1ED078980;
  if (!qword_1ED078980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078980);
  }

  return result;
}

unint64_t sub_1E637BB58()
{
  result = qword_1EE2DA958;
  if (!qword_1EE2DA958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DA958);
  }

  return result;
}

unint64_t sub_1E637BBB0()
{
  result = qword_1EE2DA960;
  if (!qword_1EE2DA960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DA960);
  }

  return result;
}

uint64_t sub_1E637BC04(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7954746567726174 && a2 == 0xEA00000000006570 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E65E6C18();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E637BDCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E637BE58(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1E637C034(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_1E637C308(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E637C34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v4 = *(a1 + 24);
  sub_1E65E3DE8();
  v5 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_1E65E4BF8();
  swift_getWitnessTable();
  v6 = sub_1E65E4AC8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - v12;
  v16[4] = v5;
  v16[5] = v4;
  v17 = *(a1 + 32);
  v18 = v2;
  sub_1E65E4BA8();
  sub_1E65E4AB8();
  swift_getWitnessTable();
  sub_1E5FEE4C8(v11);
  v14 = *(v7 + 8);
  v14(v11, v6);
  sub_1E5FEE4C8(v13);
  return (v14)(v13, v6);
}

uint64_t sub_1E637C54C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a1;
  v35 = a4;
  v39 = a6;
  v38 = *(a2 - 1);
  v11 = *(v38 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v37 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v33 - v14;
  v15 = sub_1E65E3DE8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v40 = &v33 - v21;
  v43[0] = sub_1E65E4998();
  v44 = a2;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v22 = type metadata accessor for MenuView();
  v23 = MEMORY[0x1E6981580];
  MEMORY[0x1E694C310](a1 + *(v22 + 52), MEMORY[0x1E69815C0], a3, MEMORY[0x1E6981580]);

  v43[2] = v23;
  v43[3] = a5;
  WitnessTable = swift_getWitnessTable();
  v25 = v40;
  sub_1E5FEE4C8(v20);
  v26 = *(v16 + 8);
  v26(v20, v15);
  v28 = v35;
  v27 = v36;
  sub_1E5FEE4C8(v34);
  (*(v16 + 16))(v20, v25, v15);
  v44 = v20;
  v29 = v37;
  v30 = v38;
  (*(v38 + 16))(v37, v27, a2);
  v45 = v29;
  v43[0] = v15;
  v43[1] = a2;
  v41 = WitnessTable;
  v42 = v28;
  sub_1E61C9298(&v44, 2uLL, v43);
  v31 = *(v30 + 8);
  v31(v27, a2);
  v26(v40, v15);
  v31(v29, a2);
  return (v26)(v20, v15);
}

uint64_t sub_1E637C87C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E65DE3E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_1E637E7C0(&qword_1EE2D6AE8, MEMORY[0x1E69CAD50]), v9 = sub_1E65E5B38(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_1E637E7C0(&qword_1EE2D6AE0, MEMORY[0x1E69CAD50]);
      v17 = sub_1E65E5B98();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1E637CA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1E65E6D28();
  sub_1E65E5D78();
  v7 = sub_1E65E6D78();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1E65E6C18() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1E637CB8C(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v3);
  v5 = sub_1E65E6D78();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1E637CC58(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E65D76F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_1E637E7C0(&qword_1EE2D71A8, MEMORY[0x1E69695A8]), v9 = sub_1E65E5B38(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_1E637E7C0(&qword_1EE2D71A0, MEMORY[0x1E69695A8]);
      v17 = sub_1E65E5B98();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1E637CE70(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  v3 = *(a2 + 40);
  sub_1E65E6D28();
  sub_1E65D8308();
  sub_1E65E5D78();

  v4 = sub_1E65E6D78();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      v9 = sub_1E65D8308();
      v11 = v10;
      if (v9 == sub_1E65D8308() && v11 == v12)
      {
        break;
      }

      v14 = sub_1E65E6C18();

      if ((v14 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v14 & 1;
    }

    v14 = 1;
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1E637CFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v5 = *(a4 + 40);
  sub_1E65E6D28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D40, &qword_1E65EED28);
  sub_1E637E76C();
  sub_1E65D7FC8();
  v6 = sub_1E65E6D78();
  v7 = -1 << *(a4 + 32);
  v8 = v6 & ~v7;
  if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1E6217698();
    sub_1E6069558();
    do
    {
      v10 = *(a4 + 48) + 24 * v8;
      v13 = *v10;
      v14 = *(v10 + 16);
      v11 = sub_1E65D7FD8();
      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

BOOL sub_1E637D138(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = *(a2 + 40);
  sub_1E65E6D28();
  v4 = sub_1E65E2C18();
  MEMORY[0x1E694E740](v4);
  v5 = sub_1E65E6D78();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    v10 = sub_1E65E2C18();
    v11 = v10 == sub_1E65E2C18();
    result = v11;
    if (v11)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1E637D220(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = *(a2 + 40);
  sub_1E65E6D28();
  sub_1E65E03B8();
  v4 = sub_1E65E6D78();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    do
    {
      v8 = *(*(a2 + 48) + v6);
      v9 = sub_1E65E03A8();
      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t MetricEnterEventDetour.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t MetricEnterEventDetour.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t MetricEnterEventDetour.resolveDetour(for:composer:display:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_1E65D8A08() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074590, &unk_1E65F0ED0) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074598, &unk_1E65FE820) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_1E65D8C88();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = type metadata accessor for RouteResource();
  v4[15] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v16 = sub_1E65DE3E8();
  v4[17] = v16;
  v17 = *(v16 - 8);
  v4[18] = v17;
  v18 = *(v17 + 64) + 15;
  v4[19] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078988, &qword_1E65FE830) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v20 = sub_1E65D97D8();
  v4[21] = v20;
  v21 = *(v20 - 8);
  v4[22] = v21;
  v22 = *(v21 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E637D684, 0, 0);
}

uint64_t sub_1E637D684()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[3];
  sub_1E637DCF8(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E637E638(v0[20]);
  }

  else
  {
    v5 = v0[19];
    v6 = v0[17];
    v7 = v0[18];
    v8 = v0[5];
    (*(v0[22] + 32))(v0[24], v0[20], v0[21]);
    v9 = *(v8 + 32);
    v10 = sub_1E65DAE18();
    (*(v7 + 104))(v5, *MEMORY[0x1E69CAD28], v6);
    v11 = sub_1E637C87C(v5, v10);

    (*(v7 + 8))(v5, v6);
    if (v11)
    {
      v12 = v0[15];
      sub_1E637E808(v0[3], v0[16], type metadata accessor for RouteResource);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v14 = v0[16];
      if (EnumCaseMultiPayload == 3)
      {
        v15 = *(v14 + 8);

        v16 = *(v14 + 16);
        v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
        v18 = sub_1E65D72D8();
        (*(*(v18 - 8) + 8))(v14 + v17, v18);
        v19 = sub_1E65E03C8();
        v21 = v20;
        if (v19 == sub_1E65E03C8() && v21 == v22)
        {
        }

        else
        {
          sub_1E65E6C18();
        }
      }

      else
      {
        sub_1E637E870(v0[16], type metadata accessor for RouteResource);
      }
    }

    v23 = v0[14];
    v24 = v0[10];
    v25 = v0[11];
    v27 = v0[8];
    v26 = v0[9];
    v29 = v0[6];
    v28 = v0[7];
    (*(v0[22] + 16))(v0[23], v0[24], v0[21]);
    v30 = sub_1E65D7A38();
    (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
    v31 = sub_1E65D9208();
    (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
    v32 = sub_1E65D9218();
    (*(*(v32 - 8) + 56))(v26, 1, 1, v32);
    sub_1E65D8CA8();
    v33 = sub_1E65D8CB8();
    (*(*(v33 - 8) + 56))(v27, 0, 1, v33);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
    (*(*(v34 - 8) + 56))(v28, 1, 1, v34);
    v35 = sub_1E65D9928();
    (*(*(v35 - 8) + 56))(v29, 1, 1, v35);
    sub_1E65D8C78();
    sub_1E65E6158();
    v36 = v0[24];
    v37 = v0[21];
    v38 = v0[22];
    v40 = v0[13];
    v39 = v0[14];
    v41 = v0[12];
    v42 = v0[4];
    v43 = v42 + *(type metadata accessor for AppComposer() + 20);
    v44 = v43 + *(type metadata accessor for AppEnvironment() + 80);
    v45 = MetricService.record.getter();
    v45(v39);

    (*(v40 + 8))(v39, v41);
    (*(v38 + 8))(v36, v37);
  }

  v46 = v0[23];
  v47 = v0[24];
  v49 = v0[19];
  v48 = v0[20];
  v50 = v0[16];
  v51 = v0[14];
  v53 = v0[10];
  v52 = v0[11];
  v54 = v0[9];
  v57 = v0[8];
  v58 = v0[7];
  v59 = v0[6];
  sub_1E637E808(v0[3], v0[2], type metadata accessor for RouteDestination);

  v55 = v0[1];

  return v55();
}

uint64_t sub_1E637DCF8@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v2 = type metadata accessor for RouteResource();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppLaunchScope(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for URLContext(0);
  v10 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RouteSource(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v77 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v77 - v20;
  v22 = type metadata accessor for RouteDestination();
  sub_1E637E808(v1 + *(v22 + 20), v21, type metadata accessor for RouteSource);
  v79 = v21;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      v24 = v79;
      sub_1E637E808(v79, v16, type metadata accessor for RouteSource);
      sub_1E637E8D0(v16, v9, type metadata accessor for AppLaunchScope);
      if (swift_getEnumCaseMultiPayload() <= 1)
      {
        v25 = v77;
        sub_1E637E8D0(v9, v77, type metadata accessor for URLContext);
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077248, &qword_1E65FE890);
        v27 = v52[12];
        v28 = v52[16];
        v29 = v52[20];
        v30 = MEMORY[0x1E69CBAE8];
        goto LABEL_13;
      }

      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077248, &qword_1E65FE890);
      v62 = v66[12];
      v63 = v66[16];
      v55 = v80;
      v64 = (v80 + v66[20]);
      v65 = MEMORY[0x1E69CBAE8];
LABEL_24:
      v67 = *v65;
      v68 = sub_1E65D8C98();
      (*(*(v68 - 8) + 104))(v55, v67, v68);
      v69 = sub_1E65D74E8();
      v70 = *(*(v69 - 8) + 56);
      v70(v55 + v62, 1, 1, v69);
      v70(v55 + v63, 1, 1, v69);
      *v64 = 0;
      v64[1] = 0;
      goto LABEL_25;
    case 8:
      if (sub_1E637CB8C(1u, *(v1 + *(v22 + 24))))
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077248, &qword_1E65FE890);
        v32 = v31[12];
        v33 = v31[16];
        v34 = v80;
        v35 = (v80 + v31[20]);
        v36 = *MEMORY[0x1E69CBAE8];
        v37 = sub_1E65D8C98();
        (*(*(v37 - 8) + 104))(v34, v36, v37);
        v38 = sub_1E65D74E8();
        v39 = *(*(v38 - 8) + 56);
        v39(v34 + v32, 1, 1, v38);
        v39(v34 + v33, 1, 1, v38);
        *v35 = 0;
        v35[1] = 0;
        v40 = *MEMORY[0x1E69CC338];
        v41 = sub_1E65D97D8();
        v42 = *(v41 - 8);
        (*(v42 + 104))(v34, v40, v41);
        (*(v42 + 56))(v34, 0, 1, v41);
        v43 = v79;
        return sub_1E637E870(v43, type metadata accessor for RouteSource);
      }

      break;
    case 2:
      v24 = v79;
      sub_1E637E808(v79, v19, type metadata accessor for RouteSource);
      v25 = v77;
      sub_1E637E8D0(v19, v77, type metadata accessor for URLContext);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077248, &qword_1E65FE890);
      v27 = v26[12];
      v28 = v26[16];
      v29 = v26[20];
      v30 = MEMORY[0x1E69CBAE0];
LABEL_13:
      v53 = *v30;
      v54 = sub_1E65D8C98();
      v55 = v80;
      (*(*(v54 - 8) + 104))(v80, v53, v54);
      v56 = sub_1E65D74E8();
      v57 = *(v56 - 8);
      (*(v57 + 32))(v55 + v27, v25, v56);
      (*(v57 + 56))(v55 + v27, 0, 1, v56);
      v58 = v78;
      sub_1E6009E5C(v25 + *(v78 + 20), v55 + v28);
      *(v55 + v29) = *(v25 + *(v58 + 24));
LABEL_25:
      v71 = *MEMORY[0x1E69CC338];
      v72 = sub_1E65D97D8();
      v73 = *(v72 - 8);
      (*(v73 + 104))(v55, v71, v72);
      (*(v73 + 56))(v55, 0, 1, v72);
      v43 = v24;
      return sub_1E637E870(v43, type metadata accessor for RouteSource);
  }

  sub_1E637E808(v1, v5, type metadata accessor for RouteResource);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v44 = *(v5 + 1);

    v45 = v5[16];
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
    v47 = sub_1E65D72D8();
    (*(*(v47 - 8) + 8))(&v5[v46], v47);
    v48 = sub_1E65E03C8();
    v50 = v49;
    if (v48 == sub_1E65E03C8() && v50 == v51)
    {

      v24 = v79;
LABEL_19:
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077248, &qword_1E65FE890);
      v62 = v61[12];
      v63 = v61[16];
      v55 = v80;
      v64 = (v80 + v61[20]);
      v65 = MEMORY[0x1E69CBAF0];
      goto LABEL_24;
    }

    v60 = sub_1E65E6C18();

    v24 = v79;
    if (v60)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_1E637E870(v5, type metadata accessor for RouteResource);
    v24 = v79;
  }

  v59 = swift_getEnumCaseMultiPayload();
  if (v59 > 4)
  {
    if ((v59 - 5) >= 5)
    {
      goto LABEL_30;
    }

LABEL_29:
    v76 = sub_1E65D97D8();
    return (*(*(v76 - 8) + 56))(v80, 1, 1, v76);
  }

  if (v59 == 1 || v59 == 3)
  {
    sub_1E637E870(v24, type metadata accessor for RouteSource);
    goto LABEL_29;
  }

  if (v59 == 4)
  {
    v75 = sub_1E65D8D48();
    (*(*(v75 - 8) + 8))(v24, v75);
    goto LABEL_29;
  }

LABEL_30:
  result = sub_1E65E6C08();
  __break(1u);
  return result;
}

uint64_t sub_1E637E638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078988, &qword_1E65FE830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E637E6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E5DFA78C;

  return MetricEnterEventDetour.resolveDetour(for:composer:display:)(a1, a2, a3);
}

unint64_t sub_1E637E76C()
{
  result = qword_1ED078990;
  if (!qword_1ED078990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078990);
  }

  return result;
}

uint64_t sub_1E637E7C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E637E808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E637E870(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E637E8D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E637E93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v54 = a3;
  v7 = type metadata accessor for AppComposer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v53 = &v48 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v52 = &v48 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - v16;
  v57 = (&v48 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - v18;
  sub_1E5E1DEAC(v4, &v48 - v18);
  v20 = *(v8 + 80);
  v21 = (v20 + 16) & ~v20;
  v22 = swift_allocObject();
  sub_1E5E1FA80(v19, v22 + v21);
  v23 = (v22 + ((v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = a1;
  v23[1] = a2;
  sub_1E65E5148();

  v49 = sub_1E65E5138();
  v56 = v4;
  sub_1E5E1DEAC(v4, v17);
  v24 = ((v20 + 32) & ~v20) + v9;
  v50 = v24;
  v51 = (v20 + 32) & ~v20;
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_1E65FE8C8;
  *(v25 + 24) = v22;
  v48 = &unk_1E65FE8C8;
  sub_1E5E1FA80(v57, v25 + ((v20 + 32) & ~v20));
  *(v25 + v24) = 0;
  v26 = v25 + (v24 & 0xFFFFFFFFFFFFFFF8);
  v57 = sub_1E6172524;
  *(v26 + 8) = sub_1E6172524;
  *(v26 + 16) = 0;
  v27 = (v25 + (((v24 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v28 = MEMORY[0x1E69AB380];
  v29 = v49;
  *v27 = v49;
  v27[1] = v28;
  v30 = v52;
  sub_1E5E1DEAC(v4, v52);
  v31 = (v20 + 48) & ~v20;
  v32 = v31 + v9;
  v33 = (v31 + v9) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v34[2] = &unk_1E65FE8C8;
  v34[3] = v22;
  v34[4] = v29;
  v35 = v29;
  v34[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v30, v34 + v31);
  *(v34 + v32) = 0;
  v36 = v34 + v33;
  v37 = v56;
  *(v36 + 1) = v57;
  *(v36 + 2) = 0;
  v38 = v53;
  sub_1E5E1DEAC(v37, v53);
  v39 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v48;
  v40[2] = v48;
  v40[3] = v22;
  v40[4] = v35;
  v40[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v38, v40 + v31);
  v42 = v40 + v39;
  v43 = v56;
  *v42 = v57;
  *(v42 + 1) = 0;
  v42[16] = 0;
  v44 = v55;
  sub_1E5E1DEAC(v43, v55);
  v45 = swift_allocObject();
  *(v45 + 16) = v41;
  *(v45 + 24) = v22;
  sub_1E5E1FA80(v44, v45 + v51);
  swift_retain_n();
  result = swift_retain_n();
  v47 = v54;
  *v54 = v35;
  v47[1] = MEMORY[0x1E69AB380];
  v47[2] = &unk_1E65EB918;
  v47[3] = v25;
  v47[4] = &unk_1E65FA770;
  v47[5] = v34;
  v47[6] = &unk_1E65EB920;
  v47[7] = v40;
  v47[8] = &unk_1E65FA780;
  v47[9] = v45;
  return result;
}

uint64_t sub_1E637ED2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v7 = *(*(sub_1E65D72D8() - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = sub_1E65D8518();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v13 = sub_1E65D94D8();
  v4[15] = v13;
  v14 = *(v13 - 8);
  v4[16] = v14;
  v15 = *(v14 + 64) + 15;
  v4[17] = swift_task_alloc();
  v16 = sub_1E65E32E8();
  v4[18] = v16;
  v17 = *(v16 - 8);
  v4[19] = v17;
  v18 = *(v17 + 64) + 15;
  v4[20] = swift_task_alloc();
  v19 = sub_1E65E2F28();
  v4[21] = v19;
  v20 = *(v19 - 8);
  v4[22] = v20;
  v21 = *(v20 + 64) + 15;
  v4[23] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078998, &qword_1E65FE8D0) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E637F054, 0, 0);
}

uint64_t sub_1E637F054()
{
  v1 = **(v0 + 32);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v2 = *(v0 + 16);
  if (*(v2 + 16) && (v3 = sub_1E6215038(*(v0 + 40), *(v0 + 48)), (v4 & 1) != 0))
  {
    v5 = *(v0 + 200);
    v7 = *(v0 + 176);
    v6 = *(v0 + 184);
    v8 = *(v0 + 168);
    (*(v7 + 16))(v6, *(v2 + 56) + *(v7 + 72) * v3, v8);

    sub_1E65E2ED8();
    (*(v7 + 8))(v6, v8);
    v9 = sub_1E65E2F88();
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  }

  else
  {
    v10 = *(v0 + 200);

    v9 = sub_1E65E2F88();
    (*(*(v9 - 8) + 56))(v10, 1, 1, v9);
  }

  v11 = *(v0 + 192);
  sub_1E6381F38(*(v0 + 200), v11);
  sub_1E65E2F88();
  v12 = *(v9 - 8);
  if ((*(v12 + 48))(v11, 1, v9) == 1)
  {
    v13 = *(v0 + 192);
    sub_1E6381FA8(*(v0 + 200));
    sub_1E6381FA8(v13);
LABEL_12:
    v32 = *(v0 + 192);
    v31 = *(v0 + 200);
    v33 = *(v0 + 184);
    v34 = *(v0 + 160);
    v35 = *(v0 + 136);
    v37 = *(v0 + 104);
    v36 = *(v0 + 112);
    v38 = *(v0 + 96);
    v42 = *(v0 + 72);
    v43 = *(v0 + 64);
    v45 = *(v0 + 56);
    v39 = *(v0 + 24);
    v40 = sub_1E65D7A38();
    (*(*(v40 - 8) + 56))(v39, 1, 1, v40);

    v41 = *(v0 + 8);

    return v41();
  }

  if ((*(v12 + 88))(*(v0 + 192), v9) != *MEMORY[0x1E699EAC8])
  {
    v30 = *(v0 + 192);
    sub_1E6381FA8(*(v0 + 200));
    (*(v12 + 8))(v30, v9);
    goto LABEL_12;
  }

  v14 = *(v0 + 192);
  v16 = *(v0 + 152);
  v15 = *(v0 + 160);
  v17 = *(v0 + 144);
  v18 = *(v0 + 32);
  (*(v12 + 96))(v14, v9);
  (*(v16 + 32))(v15, v14, v17);
  v19 = type metadata accessor for AppComposer();
  *(v0 + 208) = v19;
  v20 = v18 + *(v19 + 20);
  v21 = v20 + *(type metadata accessor for AppEnvironment() + 48);
  v22 = CatalogService.fetchRemoteCatalogProgramDetail.getter();
  *(v0 + 216) = v23;
  v44 = (v22 + *v22);
  v24 = v22[1];
  v25 = swift_task_alloc();
  *(v0 + 224) = v25;
  *v25 = v0;
  v25[1] = sub_1E637F4D0;
  v26 = *(v0 + 136);
  v27 = *(v0 + 40);
  v28 = *(v0 + 48);

  return v44(v26, v27, v28);
}

uint64_t sub_1E637F4D0()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = *(v2 + 216);

    v5 = sub_1E637F9B8;
  }

  else
  {
    v5 = sub_1E637F5EC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E637F5EC()
{
  v1 = v0[27];
  v28 = v0[26];
  v44 = v0[25];
  v33 = v0[20];
  v40 = v0[19];
  v42 = v0[18];
  v30 = v0[17];
  v38 = v0[16];
  v39 = v0[15];
  v2 = v0[14];
  v29 = v0[13];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[9];
  v34 = v0[8];
  v31 = v0[10];
  v32 = v0[6];
  v37 = v0[5];
  v6 = v0[4];
  v35 = v0[7];
  v36 = v0[3];

  v7 = *MEMORY[0x1E69CBDC8];
  v8 = sub_1E65D8F38();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2, v7, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = (v6 + *(v28 + 36));
  v12 = *v10;
  v11 = v10[1];

  sub_1E5FA9D34(v12, v11);
  sub_1E65D9498();
  sub_1E65D8498();
  (*(v3 + 8))(v4, v31);
  v13 = sub_1E65D74E8();
  (*(*(v13 - 8) + 56))(v29, 0, 1, v13);
  sub_1E65E32D8();
  sub_1E65E5D58();
  v14 = sub_1E65D9908();
  (*(*(v14 - 8) + 56))(v34, 1, 1, v14);
  v15 = sub_1E65D9F88();
  (*(*(v15 - 8) + 56))(v35, 1, 1, v15);
  sub_1E65D7A28();
  (*(v38 + 8))(v30, v39);
  (*(v40 + 8))(v33, v42);
  sub_1E6381FA8(v44);
  v17 = v0[24];
  v16 = v0[25];
  v18 = v0[23];
  v19 = v0[20];
  v20 = v0[17];
  v22 = v0[13];
  v21 = v0[14];
  v23 = v0[12];
  v41 = v0[9];
  v43 = v0[8];
  v45 = v0[7];
  v24 = v0[3];
  v25 = sub_1E65D7A38();
  (*(*(v25 - 8) + 56))(v24, 0, 1, v25);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1E637F9B8()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = v0[8];
  v12 = v0[7];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_1E6381FA8(v2);

  v9 = v0[1];
  v10 = v0[29];

  return v9();
}

uint64_t sub_1E637FACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = type metadata accessor for PageMetricsClick();
  v8[8] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v11 = sub_1E65E2F28();
  v8[14] = v11;
  v12 = *(v11 - 8);
  v8[15] = v12;
  v13 = *(v12 + 64) + 15;
  v8[16] = swift_task_alloc();
  v14 = sub_1E65E3298();
  v8[17] = v14;
  v15 = *(v14 - 8);
  v8[18] = v15;
  v16 = *(v15 + 64) + 15;
  v8[19] = swift_task_alloc();
  v17 = sub_1E65E2F38();
  v8[20] = v17;
  v18 = *(v17 - 8);
  v8[21] = v18;
  v19 = *(v18 + 64) + 15;
  v8[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E637FCAC, 0, 0);
}

uint64_t sub_1E637FCAC()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  (*(v2 + 16))(v1, *(v0 + 24), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E699EA98])
  {
    goto LABEL_2;
  }

  if (v4 == *MEMORY[0x1E699EA68])
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
LABEL_8:
    v15 = *(v0 + 32);
    v16 = *(v15 + 24);
    v171 = (*(v15 + 16) + **(v15 + 16));
    v17 = *(*(v15 + 16) + 4);
    v18 = swift_task_alloc();
    *(v0 + 184) = v18;
    *v18 = v0;
    v18[1] = sub_1E6380EA4;

    return v171();
  }

  if (v4 == *MEMORY[0x1E699EA58])
  {
    goto LABEL_2;
  }

  if (v4 == *MEMORY[0x1E699EA70])
  {
    v19 = *(v0 + 176);
    (*(*(v0 + 168) + 96))(v19, *(v0 + 160));
    v20 = sub_1E65D74E8();
    (*(*(v20 - 8) + 8))(v19, v20);
    goto LABEL_3;
  }

  if (v4 == *MEMORY[0x1E699EAA0])
  {
    goto LABEL_3;
  }

  if (v4 == *MEMORY[0x1E699EA80])
  {
    goto LABEL_8;
  }

  if (v4 == *MEMORY[0x1E699EA90])
  {
    v21 = **(v0 + 40);
    swift_getKeyPath();
    sub_1E65E4EC8();

    v22 = *(v0 + 16);
    if (!*(v22 + 16) || (v23 = sub_1E6215038(*(v0 + 48), *(v0 + 56)), (v24 & 1) == 0))
    {

      goto LABEL_3;
    }

    v26 = *(v0 + 144);
    v25 = *(v0 + 152);
    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    v29 = *(v0 + 112);
    v30 = *(v0 + 120);
    (*(v30 + 16))(v28, *(v22 + 56) + *(v30 + 72) * v23, v29);

    sub_1E65E2EE8();
    (*(v30 + 8))(v28, v29);
    v31 = (*(v26 + 88))(v25, v27);
    LODWORD(v28) = *MEMORY[0x1E699EBA0];
    (*(v26 + 8))(v25, v27);
    if (v31 != v28)
    {
LABEL_3:
      v5 = *(v0 + 176);
      v6 = *(v0 + 152);
      v7 = *(v0 + 128);
      v9 = *(v0 + 96);
      v8 = *(v0 + 104);
      v11 = *(v0 + 80);
      v10 = *(v0 + 88);
      v12 = *(v0 + 72);

      v13 = *(v0 + 8);

      return v13();
    }

    v32 = *(v0 + 104);
    v33 = *(v0 + 56);
    v34 = *(v0 + 64);
    v35 = *(v0 + 48);
    v36 = *(v0 + 32);
    v37 = sub_1E65D9D78();
    (*(*(v37 - 8) + 56))(v32, 1, 1, v37);
    v38 = v34[5];
    v39 = *MEMORY[0x1E69CBA00];
    v40 = sub_1E65D8C68();
    (*(*(v40 - 8) + 104))(v32 + v38, v39, v40);
    v41 = v34[6];
    v42 = sub_1E65D74E8();
    (*(*(v42 - 8) + 56))(v32 + v41, 1, 1, v42);
    v43 = v34[8];
    v44 = sub_1E65DA208();
    (*(*(v44 - 8) + 56))(v32 + v43, 1, 1, v44);
    v45 = v34[14];
    v46 = *MEMORY[0x1E69CBCC8];
    v47 = sub_1E65D8F28();
    (*(*(v47 - 8) + 104))(v32 + v45, v46, v47);
    v48 = v34[15];
    v49 = sub_1E65D9908();
    (*(*(v49 - 8) + 56))(v32 + v48, 1, 1, v49);
    v50 = MEMORY[0x1E69E7CC0];
    v51 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v32 + v34[7]) = v50;
    v52 = (v32 + v34[9]);
    *v52 = 0;
    v52[1] = 0;
    v53 = (v32 + v34[10]);
    *v53 = 0;
    v53[1] = 0;
    *(v32 + v34[11]) = v51;
    v54 = (v32 + v34[12]);
    *v54 = 0;
    v54[1] = 0;
    v55 = (v32 + v34[13]);
    *v55 = v35;
    v55[1] = v33;
    v56 = *(v36 + 48);
    v57 = *(v36 + 56);

    v172 = (v56 + *v56);
    v58 = v56[1];
    v59 = swift_task_alloc();
    *(v0 + 192) = v59;
    *v59 = v0;
    v59[1] = sub_1E6381098;
    v60 = *(v0 + 104);
    goto LABEL_30;
  }

  if (v4 != *MEMORY[0x1E699EA60])
  {
    if (v4 == *MEMORY[0x1E699EAA8])
    {
      v89 = *(v0 + 88);
      v90 = *(v0 + 56);
      v91 = *(v0 + 64);
      v92 = *(v0 + 48);
      v93 = *(v0 + 32);
      v94 = sub_1E65D9D78();
      (*(*(v94 - 8) + 56))(v89, 1, 1, v94);
      v95 = v91[5];
      v96 = *MEMORY[0x1E69CBA68];
      v97 = sub_1E65D8C68();
      (*(*(v97 - 8) + 104))(v89 + v95, v96, v97);
      v98 = v91[6];
      v99 = sub_1E65D74E8();
      (*(*(v99 - 8) + 56))(v89 + v98, 1, 1, v99);
      v100 = v91[8];
      v101 = sub_1E65DA208();
      (*(*(v101 - 8) + 56))(v89 + v100, 1, 1, v101);
      v102 = v91[14];
      v103 = *MEMORY[0x1E69CBCC8];
      v104 = sub_1E65D8F28();
      (*(*(v104 - 8) + 104))(v89 + v102, v103, v104);
      v105 = v91[15];
      v106 = sub_1E65D9908();
      (*(*(v106 - 8) + 56))(v89 + v105, 1, 1, v106);
      v107 = MEMORY[0x1E69E7CC0];
      v108 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v89 + v91[7]) = v107;
      v109 = (v89 + v91[9]);
      *v109 = 0;
      v109[1] = 0;
      v110 = (v89 + v91[10]);
      *v110 = 0;
      v110[1] = 0;
      *(v89 + v91[11]) = v108;
      v111 = (v89 + v91[12]);
      *v111 = 0;
      v111[1] = 0;
      v112 = (v89 + v91[13]);
      *v112 = v92;
      v112[1] = v90;
      v113 = *(v93 + 48);
      v114 = *(v93 + 56);

      v172 = (v113 + *v113);
      v115 = v113[1];
      v116 = swift_task_alloc();
      *(v0 + 224) = v116;
      *v116 = v0;
      v116[1] = sub_1E6381460;
      v60 = *(v0 + 88);
      goto LABEL_30;
    }

    if (v4 == *MEMORY[0x1E699EA88])
    {
      v118 = *(v0 + 64);
      v117 = *(v0 + 72);
      v120 = *(v0 + 48);
      v119 = *(v0 + 56);
      v121 = *(v0 + 32);
      v122 = sub_1E65D9D78();
      (*(*(v122 - 8) + 56))(v117, 1, 1, v122);
      v123 = v118[5];
      v124 = *MEMORY[0x1E69CBA28];
      v125 = sub_1E65D8C68();
      (*(*(v125 - 8) + 104))(v117 + v123, v124, v125);
      v126 = v118[6];
      v127 = sub_1E65D74E8();
      (*(*(v127 - 8) + 56))(v117 + v126, 1, 1, v127);
      v128 = v118[8];
      v129 = sub_1E65DA208();
      (*(*(v129 - 8) + 56))(v117 + v128, 1, 1, v129);
      v130 = v118[14];
      v131 = *MEMORY[0x1E69CBCC8];
      v132 = sub_1E65D8F28();
      (*(*(v132 - 8) + 104))(v117 + v130, v131, v132);
      v133 = v118[15];
      v134 = *MEMORY[0x1E69CC420];
      v135 = sub_1E65D9908();
      v136 = *(v135 - 8);
      (*(v136 + 104))(v117 + v133, v134, v135);
      (*(v136 + 56))(v117 + v133, 0, 1, v135);
      v137 = MEMORY[0x1E69E7CC0];
      v138 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v117 + v118[7]) = v137;
      v139 = (v117 + v118[9]);
      *v139 = 0;
      v139[1] = 0;
      v140 = (v117 + v118[10]);
      *v140 = 0;
      v140[1] = 0;
      *(v117 + v118[11]) = v138;
      v141 = (v117 + v118[12]);
      *v141 = 0;
      v141[1] = 0;
      v142 = (v117 + v118[13]);
      *v142 = v120;
      v142[1] = v119;
      v143 = *(v121 + 48);
      v144 = *(v121 + 56);

      v172 = (v143 + *v143);
      v145 = v143[1];
      v146 = swift_task_alloc();
      *(v0 + 256) = v146;
      *v146 = v0;
      v146[1] = sub_1E6381828;
      v60 = *(v0 + 72);
      goto LABEL_30;
    }

    if (v4 == *MEMORY[0x1E699EA78])
    {
      v147 = *(v0 + 96);
      v148 = *(v0 + 64);
      v149 = *(v0 + 32);
      v150 = sub_1E65D9D78();
      (*(*(v150 - 8) + 56))(v147, 1, 1, v150);
      v151 = v148[5];
      v152 = *MEMORY[0x1E69CBA18];
      v153 = sub_1E65D8C68();
      (*(*(v153 - 8) + 104))(v147 + v151, v152, v153);
      v154 = v148[6];
      v155 = sub_1E65D74E8();
      (*(*(v155 - 8) + 56))(v147 + v154, 1, 1, v155);
      v156 = v148[8];
      v157 = sub_1E65DA208();
      (*(*(v157 - 8) + 56))(v147 + v156, 1, 1, v157);
      v158 = v148[14];
      v159 = *MEMORY[0x1E69CBCC8];
      v160 = sub_1E65D8F28();
      (*(*(v160 - 8) + 104))(v147 + v158, v159, v160);
      v161 = v148[15];
      v162 = sub_1E65D9908();
      (*(*(v162 - 8) + 56))(v147 + v161, 1, 1, v162);
      v163 = MEMORY[0x1E69E7CC0];
      v164 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v147 + v148[7]) = v163;
      v165 = (v147 + v148[9]);
      *v165 = 0;
      v165[1] = 0;
      v166 = (v147 + v148[10]);
      *v166 = 0;
      v166[1] = 0;
      *(v147 + v148[11]) = v164;
      v167 = (v147 + v148[12]);
      *v167 = 0;
      v167[1] = 0;
      *(v147 + v148[13]) = xmmword_1E65F75A0;
      v168 = *(v149 + 56);
      v172 = (*(v149 + 48) + **(v149 + 48));
      v169 = *(*(v149 + 48) + 4);
      v170 = swift_task_alloc();
      *(v0 + 208) = v170;
      *v170 = v0;
      v170[1] = sub_1E638127C;
      v60 = *(v0 + 96);
      goto LABEL_30;
    }

LABEL_2:
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    goto LABEL_3;
  }

  v61 = *(v0 + 80);
  v62 = *(v0 + 56);
  v63 = *(v0 + 64);
  v64 = *(v0 + 48);
  v65 = *(v0 + 32);
  v66 = sub_1E65D9D78();
  (*(*(v66 - 8) + 56))(v61, 1, 1, v66);
  v67 = v63[5];
  v68 = *MEMORY[0x1E69CBA40];
  v69 = sub_1E65D8C68();
  (*(*(v69 - 8) + 104))(v61 + v67, v68, v69);
  v70 = v63[6];
  v71 = sub_1E65D74E8();
  (*(*(v71 - 8) + 56))(v61 + v70, 1, 1, v71);
  v72 = v63[8];
  v73 = sub_1E65DA208();
  (*(*(v73 - 8) + 56))(v61 + v72, 1, 1, v73);
  v74 = v63[14];
  v75 = *MEMORY[0x1E69CBCC8];
  v76 = sub_1E65D8F28();
  (*(*(v76 - 8) + 104))(v61 + v74, v75, v76);
  v77 = v63[15];
  v78 = sub_1E65D9908();
  (*(*(v78 - 8) + 56))(v61 + v77, 1, 1, v78);
  v79 = MEMORY[0x1E69E7CC0];
  v80 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  *(v61 + v63[7]) = v79;
  v81 = (v61 + v63[9]);
  *v81 = 0;
  v81[1] = 0;
  v82 = (v61 + v63[10]);
  *v82 = 0;
  v82[1] = 0;
  *(v61 + v63[11]) = v80;
  v83 = (v61 + v63[12]);
  *v83 = 0;
  v83[1] = 0;
  v84 = (v61 + v63[13]);
  *v84 = v64;
  v84[1] = v62;
  v85 = *(v65 + 48);
  v86 = *(v65 + 56);

  v172 = (v85 + *v85);
  v87 = v85[1];
  v88 = swift_task_alloc();
  *(v0 + 240) = v88;
  *v88 = v0;
  v88[1] = sub_1E6381644;
  v60 = *(v0 + 80);
LABEL_30:

  return v172(v60);
}

uint64_t sub_1E6380EA4()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v13 = *v0;

  v3 = v1[22];
  v4 = v1[19];
  v5 = v1[16];
  v6 = v1[13];
  v7 = v1[12];
  v8 = v1[11];
  v9 = v1[10];
  v10 = v1[9];

  v11 = *(v13 + 8);

  return v11();
}

uint64_t sub_1E6381098()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1E6381A0C;
  }

  else
  {
    v3 = sub_1E63811AC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E63811AC()
{
  sub_1E5FC0990(v0[13]);
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E638127C()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1E6381ADC;
  }

  else
  {
    v3 = sub_1E6381390;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6381390()
{
  sub_1E5FC0990(v0[12]);
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6381460()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_1E6381BAC;
  }

  else
  {
    v3 = sub_1E6381574;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6381574()
{
  sub_1E5FC0990(v0[11]);
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6381644()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1E6381C7C;
  }

  else
  {
    v3 = sub_1E6381758;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6381758()
{
  sub_1E5FC0990(v0[10]);
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6381828()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1E6381D4C;
  }

  else
  {
    v3 = sub_1E638193C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E638193C()
{
  sub_1E5FC0990(v0[9]);
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6381A0C()
{
  sub_1E5FC0990(v0[13]);
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E6381ADC()
{
  sub_1E5FC0990(v0[12]);
  v1 = v0[27];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E6381BAC()
{
  sub_1E5FC0990(v0[11]);
  v1 = v0[29];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E6381C7C()
{
  sub_1E5FC0990(v0[10]);
  v1 = v0[31];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E6381D4C()
{
  sub_1E5FC0990(v0[9]);
  v1 = v0[33];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E6381E1C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E637ED2C(a1, v1 + v5, v7, v8);
}

uint64_t sub_1E6381F38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078998, &qword_1E65FE8D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6381FA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078998, &qword_1E65FE8D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RouteAnnotation.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E63820A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v71 = a4;
  v72 = a3;
  v67 = a2;
  v7 = type metadata accessor for AppComposer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v70 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v69 = &v60 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v68 = &v60 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v66 = (&v60 - v17);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v60 - v20;
  v22 = sub_1E65E0B48();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1E699DD40];
  sub_1E6386C08(a1, v25, MEMORY[0x1E699DD40]);
  sub_1E6386C08(v5, v21, type metadata accessor for AppComposer);
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = *(v8 + 80);
  v29 = (v24 + v28 + v27) & ~v28;
  v73 = v28 | 7;
  v63 = v19;
  v30 = swift_allocObject();
  v74 = v30;
  sub_1E6386C70(v25, v30 + v27, v26);
  sub_1E6386C70(v21, v30 + v29, type metadata accessor for AppComposer);
  v31 = (v30 + ((v19 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  v32 = v72;
  *v31 = v67;
  v31[1] = v32;
  sub_1E65E5148();

  v72 = sub_1E65E5138();
  v33 = v75;
  v34 = v66;
  sub_1E6386C08(v75, v66, type metadata accessor for AppComposer);
  v35 = (v28 + 32) & ~v28;
  v36 = v35 + v19;
  v67 = v35;
  v65 = v36;
  v37 = swift_allocObject();
  v64 = v37;
  v62 = &unk_1E65FE9D8;
  v38 = v74;
  *(v37 + 16) = &unk_1E65FE9D8;
  *(v37 + 24) = v38;
  sub_1E6386C70(v34, v37 + v35, type metadata accessor for AppComposer);
  *(v37 + v36) = 0;
  v39 = v37 + (v36 & 0xFFFFFFFFFFFFFFF8);
  v66 = sub_1E6172524;
  *(v39 + 8) = sub_1E6172524;
  *(v39 + 16) = 0;
  v40 = (v37 + (((v36 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v41 = MEMORY[0x1E69AB380];
  v42 = v72;
  *v40 = v72;
  v40[1] = v41;
  v43 = v33;
  v44 = v68;
  sub_1E6386C08(v43, v68, type metadata accessor for AppComposer);
  v45 = ((v28 + 48) & ~v28) + v63;
  v46 = (v28 + 48) & ~v28;
  v61 = v46;
  v47 = swift_allocObject();
  v48 = v62;
  v49 = v74;
  v47[2] = v62;
  v47[3] = v49;
  v47[4] = v42;
  v47[5] = MEMORY[0x1E69AB380];
  sub_1E6386C70(v44, v47 + v46, type metadata accessor for AppComposer);
  *(v47 + v45) = 0;
  v50 = v47 + (v45 & 0xFFFFFFFFFFFFFFF8);
  v51 = v66;
  *(v50 + 1) = v66;
  *(v50 + 2) = 0;
  v52 = v69;
  sub_1E6386C08(v75, v69, type metadata accessor for AppComposer);
  v53 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v54[2] = v48;
  v54[3] = v49;
  v54[4] = v42;
  v54[5] = MEMORY[0x1E69AB380];
  sub_1E6386C70(v52, v54 + v61, type metadata accessor for AppComposer);
  v55 = v54 + v53;
  *v55 = v51;
  *(v55 + 1) = 0;
  v55[16] = 0;
  v56 = v70;
  sub_1E6386C08(v75, v70, type metadata accessor for AppComposer);
  v57 = swift_allocObject();
  *(v57 + 16) = v48;
  *(v57 + 24) = v49;
  sub_1E6386C70(v56, v57 + v67, type metadata accessor for AppComposer);
  swift_retain_n();
  result = swift_retain_n();
  v59 = v71;
  *v71 = result;
  v59[1] = MEMORY[0x1E69AB380];
  v59[2] = &unk_1E65EB918;
  v59[3] = v64;
  v59[4] = &unk_1E65FA770;
  v59[5] = v47;
  v59[6] = &unk_1E65EB920;
  v59[7] = v54;
  v59[8] = &unk_1E65FA780;
  v59[9] = v57;
  return result;
}

uint64_t sub_1E63825CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6382718, 0, 0);
}

uint64_t sub_1E6382718()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v20 = v0[2];
  v21 = v0[5];
  sub_1E62008D0();
  v8 = *MEMORY[0x1E69CBD88];
  v9 = sub_1E65D8F38();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v2, v8, v9);
  (*(v10 + 56))(v2, 0, 1, v9);
  v11 = (v7 + *(type metadata accessor for AppComposer() + 36));
  v13 = *v11;
  v12 = v11[1];
  v14 = sub_1E65D74E8();
  (*(*(v14 - 8) + 56))(v1, 1, 1, v14);
  v15 = sub_1E65D9908();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  v16 = sub_1E65D9F88();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  sub_1E5FA9D34(v13, v12);

  sub_1E65D7A28();
  v17 = sub_1E65D7A38();
  (*(*(v17 - 8) + 56))(v20, 0, 1, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1E63829A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1E65E0C68();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v10 = sub_1E65D86A8();
  v6[9] = v10;
  v11 = *(v10 - 8);
  v6[10] = v11;
  v12 = *(v11 + 64) + 15;
  v6[11] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758A0, &qword_1E65F1F90);
  v6[12] = v13;
  v14 = *(v13 - 8);
  v6[13] = v14;
  v15 = *(v14 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v16 = sub_1E65E0E48();
  v6[16] = v16;
  v17 = *(v16 - 8);
  v6[17] = v17;
  v18 = *(v17 + 64) + 15;
  v6[18] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0789A0, &qword_1E65FE9B8) - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v20 = sub_1E65D8F28();
  v6[21] = v20;
  v21 = *(v20 - 8);
  v6[22] = v21;
  v22 = *(v21 + 64) + 15;
  v6[23] = swift_task_alloc();
  v23 = sub_1E65E0D48();
  v6[24] = v23;
  v24 = *(v23 - 8);
  v6[25] = v24;
  v25 = *(v24 + 64) + 15;
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v27 = sub_1E65D8C68();
  v6[32] = v27;
  v28 = *(v27 - 8);
  v6[33] = v28;
  v29 = *(v28 + 64) + 15;
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60) - 8) + 64) + 15;
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v31 = type metadata accessor for PageMetricsClick();
  v6[40] = v31;
  v32 = *(*(v31 - 8) + 64) + 15;
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v33 = *(*(sub_1E65E0B48() - 8) + 64) + 15;
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v34 = sub_1E65E0C78();
  v6[48] = v34;
  v35 = *(v34 - 8);
  v6[49] = v35;
  v36 = *(v35 + 64) + 15;
  v6[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6382EC0, 0, 0);
}

uint64_t sub_1E6382EC0()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 384);
  (*(v2 + 16))(v1, *(v0 + 16), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E699DE58])
  {
    v5 = *(v0 + 400);
    (*(*(v0 + 392) + 96))(v5, *(v0 + 384));
LABEL_3:
    v6 = sub_1E65E0EE8();
LABEL_4:
    (*(*(v6 - 8) + 8))(v5, v6);
LABEL_5:
    v7 = *(v0 + 400);
    v9 = *(v0 + 368);
    v8 = *(v0 + 376);
    v11 = *(v0 + 352);
    v10 = *(v0 + 360);
    v13 = *(v0 + 336);
    v12 = *(v0 + 344);
    v14 = *(v0 + 328);
    v15 = *(v0 + 304);
    v16 = *(v0 + 312);
    v217 = *(v0 + 296);
    v218 = *(v0 + 288);
    v219 = *(v0 + 280);
    v220 = *(v0 + 272);
    v221 = *(v0 + 248);
    v222 = *(v0 + 240);
    v223 = *(v0 + 232);
    v224 = *(v0 + 224);
    v225 = *(v0 + 216);
    v226 = *(v0 + 208);
    v228 = *(v0 + 184);
    v230 = *(v0 + 160);
    v232 = *(v0 + 152);
    v235 = *(v0 + 144);
    v238 = *(v0 + 120);
    v244 = *(v0 + 112);
    v251 = *(v0 + 88);
    v257 = *(v0 + 64);
    v262 = *(v0 + 56);

    v17 = *(v0 + 8);

    return v17();
  }

  if (v4 == *MEMORY[0x1E699DE18])
  {
    v19 = *(v0 + 400);
    v20 = *(v0 + 376);
    v21 = *(v0 + 312);
    v22 = *(v0 + 288);
    v24 = *(v0 + 256);
    v23 = *(v0 + 264);
    v25 = *(v0 + 248);
    v26 = *(v0 + 224);
    v27 = *(v0 + 200);
    v258 = *(v0 + 24);
    v263 = *(v0 + 192);
    (*(*(v0 + 392) + 96))(v19, *(v0 + 384));
    sub_1E6386C70(v19, v20, MEMORY[0x1E699DD40]);
    v28 = sub_1E65D9D78();
    (*(*(v28 - 8) + 56))(v21, 1, 1, v28);
    (*(v23 + 104))(v22, *MEMORY[0x1E69CBA68], v24);
    v29 = sub_1E65D74E8();
    (*(*(v29 - 8) + 56))(v25, 1, 1, v29);
    sub_1E65E0C28();
    v30 = sub_1E6478838();
    (*(v27 + 8))(v26, v263);
    if (v30)
    {
      v264 = sub_1E64961CC(*(v0 + 376), v30);
    }

    else
    {
      v264 = MEMORY[0x1E69E7CC0];
    }

    v61 = *(v0 + 376);
    v62 = *(v0 + 360);
    v64 = *(v0 + 312);
    v63 = *(v0 + 320);
    v65 = *(v0 + 264);
    v239 = *(v0 + 256);
    v245 = *(v0 + 288);
    v259 = *(v0 + 248);
    v66 = *(v0 + 168);
    v67 = *(v0 + 176);
    v68 = *(v0 + 32);
    v69 = v63[8];
    v70 = sub_1E65DA208();
    (*(*(v70 - 8) + 56))(v62 + v69, 1, 1, v70);
    v71 = sub_1E65E0B18();
    v252 = v72;
    (*(v67 + 104))(v62 + v63[14], *MEMORY[0x1E69CBCC8], v66);
    v73 = v63[15];
    sub_1E6200BE0(v62 + v73);
    v74 = sub_1E65D9908();
    (*(*(v74 - 8) + 56))(v62 + v73, 0, 1, v74);
    v75 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    sub_1E5FAB460(v64, v62, &qword_1ED073578, &qword_1E65F0E60);
    (*(v65 + 32))(v62 + v63[5], v245, v239);
    sub_1E5FAB460(v259, v62 + v63[6], &qword_1ED072340, &qword_1E65EA410);
    *(v62 + v63[7]) = v264;
    v76 = (v62 + v63[9]);
    *v76 = 0;
    v76[1] = 0;
    v77 = (v62 + v63[10]);
    *v77 = 0;
    v77[1] = 0;
    *(v62 + v63[11]) = v75;
    v78 = (v62 + v63[12]);
    *v78 = 0;
    v78[1] = 0;
    v79 = (v62 + v63[13]);
    *v79 = v71;
    v79[1] = v252;
    v80 = *(v68 + 56);
    v265 = (*(v68 + 48) + **(v68 + 48));
    v81 = *(*(v68 + 48) + 4);
    v82 = swift_task_alloc();
    *(v0 + 408) = v82;
    *v82 = v0;
    v82[1] = sub_1E6384994;
    v58 = *(v0 + 360);
    goto LABEL_18;
  }

  if (v4 == *MEMORY[0x1E699DE60])
  {
    v31 = *(v0 + 400);
    v32 = *(v0 + 320);
    v33 = *(v0 + 264);
    (*(*(v0 + 392) + 96))(v31, *(v0 + 384));
    v34 = *v31;
    v35 = sub_1E65D9D78();
    v36 = *(*(v35 - 8) + 56);
    v37 = (v33 + 104);
    v38 = *(v0 + 320);
    v39 = *(v0 + 256);
    v40 = *(v0 + 168);
    v41 = *(v0 + 176);
    v42 = *(v0 + 32);
    if (v34 == 1)
    {
      v43 = *(v0 + 352);
      v36(v43, 1, 1, v35);
      (*v37)(v43 + *(v32 + 20), *MEMORY[0x1E69CBA48], v39);
      v44 = *(v32 + 24);
      v45 = sub_1E65D74E8();
      (*(*(v45 - 8) + 56))(v43 + v44, 1, 1, v45);
      v46 = v38[8];
      v47 = sub_1E65DA208();
      (*(*(v47 - 8) + 56))(v43 + v46, 1, 1, v47);
      (*(v41 + 104))(v43 + v38[14], *MEMORY[0x1E69CBCC8], v40);
      v48 = v38[15];
      v49 = sub_1E65D9908();
      (*(*(v49 - 8) + 56))(v43 + v48, 1, 1, v49);
      v50 = MEMORY[0x1E69E7CC0];
      v51 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v43 + v38[7]) = v50;
      v52 = (v43 + v38[9]);
      *v52 = 0;
      v52[1] = 0;
      v53 = (v43 + v38[10]);
      *v53 = 0;
      v53[1] = 0;
      *(v43 + v38[11]) = v51;
      v54 = (v43 + v38[12]);
      *v54 = 0;
      v54[1] = 0;
      *(v43 + v38[13]) = xmmword_1E65FE9A0;
      v55 = *(v42 + 56);
      v265 = (*(v42 + 48) + **(v42 + 48));
      v56 = *(*(v42 + 48) + 4);
      v57 = swift_task_alloc();
      *(v0 + 424) = v57;
      *v57 = v0;
      v57[1] = sub_1E6384CB0;
      v58 = *(v0 + 352);
    }

    else
    {
      v83 = *(v0 + 344);
      v36(v83, 1, 1, v35);
      (*v37)(v83 + *(v32 + 20), *MEMORY[0x1E69CBA80], v39);
      v84 = *(v32 + 24);
      v85 = sub_1E65D74E8();
      (*(*(v85 - 8) + 56))(v83 + v84, 1, 1, v85);
      v86 = v38[8];
      v87 = sub_1E65DA208();
      (*(*(v87 - 8) + 56))(v83 + v86, 1, 1, v87);
      (*(v41 + 104))(v83 + v38[14], *MEMORY[0x1E69CBCC8], v40);
      v88 = v38[15];
      v89 = sub_1E65D9908();
      (*(*(v89 - 8) + 56))(v83 + v88, 1, 1, v89);
      v90 = MEMORY[0x1E69E7CC0];
      v91 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v83 + v38[7]) = v90;
      v92 = (v83 + v38[9]);
      *v92 = 0;
      v92[1] = 0;
      v93 = (v83 + v38[10]);
      *v93 = 0;
      v93[1] = 0;
      *(v83 + v38[11]) = v91;
      v94 = (v83 + v38[12]);
      *v94 = 0;
      v94[1] = 0;
      *(v83 + v38[13]) = xmmword_1E65FE990;
      v95 = *(v42 + 56);
      v265 = (*(v42 + 48) + **(v42 + 48));
      v96 = *(*(v42 + 48) + 4);
      v97 = swift_task_alloc();
      *(v0 + 440) = v97;
      *v97 = v0;
      v97[1] = sub_1E6384FAC;
      v58 = *(v0 + 344);
    }

LABEL_18:

    return v265(v58);
  }

  if (v4 == *MEMORY[0x1E699DE30])
  {
    v5 = *(v0 + 400);
    (*(*(v0 + 392) + 96))(v5, *(v0 + 384));
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0789B8, &qword_1E65FE9C8) + 48);
    v60 = sub_1E65E0CC8();
    (*(*(v60 - 8) + 8))(v5 + v59, v60);
    goto LABEL_3;
  }

  if (v4 == *MEMORY[0x1E699DE48])
  {
    v5 = *(v0 + 400);
    (*(*(v0 + 392) + 96))(v5, *(v0 + 384));
    v6 = sub_1E65E0D08();
    goto LABEL_4;
  }

  if (v4 == *MEMORY[0x1E699DE38])
  {
    v98 = *(v0 + 400);
    v99 = *(v0 + 368);
    v100 = *(v0 + 56);
    v101 = *(v0 + 64);
    v102 = *(v0 + 40);
    v103 = *(v0 + 48);
    (*(*(v0 + 392) + 96))(v98, *(v0 + 384));
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0789A8, &qword_1E65FE9C0);
    v105 = *(v104 + 48);
    v106 = *(v104 + 64);
    *(v0 + 520) = v106;
    sub_1E6386C70(v98, v99, MEMORY[0x1E699DD40]);
    (*(v103 + 32))(v101, v98 + v105, v102);
    v107 = *(v103 + 104);
    v107(v100, *MEMORY[0x1E699DE00], v102);
    sub_1E6386814();
    LOBYTE(v99) = sub_1E65E5B98();
    v108 = *(v103 + 8);
    *(v0 + 472) = v108;
    *(v0 + 480) = (v103 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v108(v100, v102);
    if (v99)
    {
      v109 = *(v0 + 368);
      v108(*(v0 + 64), *(v0 + 40));
      sub_1E6386BA8(v109, MEMORY[0x1E699DD40]);
      v110 = sub_1E65D7968();
      (*(*(v110 - 8) + 8))(v98 + v106, v110);
      goto LABEL_5;
    }

    v234 = *(v0 + 296);
    v129 = *(v0 + 264);
    v237 = *(v0 + 256);
    v241 = *(v0 + 272);
    v130 = *(v0 + 208);
    v260 = *(v0 + 200);
    v267 = *(v0 + 192);
    v131 = *(v0 + 56);
    v132 = *(v0 + 40);
    v247 = *(v0 + 232);
    v254 = *(v0 + 24);
    v107(v131, *MEMORY[0x1E699DE08], v132);
    v133 = sub_1E65E0C58();
    v108(v131, v132);
    v134 = sub_1E65D9D78();
    (*(*(v134 - 8) + 56))(v234, 1, 1, v134);
    v135 = MEMORY[0x1E69CBA68];
    if ((v133 & 1) == 0)
    {
      v135 = MEMORY[0x1E69CBA70];
    }

    (*(v129 + 104))(v241, *v135, v237);
    v136 = sub_1E65D74E8();
    (*(*(v136 - 8) + 56))(v247, 1, 1, v136);
    sub_1E65E0C28();
    v137 = sub_1E6478838();
    (*(v260 + 8))(v130, v267);
    if (v137)
    {
      v268 = sub_1E64961CC(*(v0 + 368), v137);
    }

    else
    {
      v268 = MEMORY[0x1E69E7CC0];
    }

    v142 = *(v0 + 368);
    v144 = *(v0 + 320);
    v143 = *(v0 + 328);
    v145 = *(v0 + 296);
    v146 = *(v0 + 264);
    v242 = *(v0 + 256);
    v248 = *(v0 + 272);
    v261 = *(v0 + 232);
    v147 = *(v0 + 168);
    v148 = *(v0 + 176);
    v149 = *(v0 + 32);
    v150 = v144[8];
    v151 = sub_1E65DA208();
    (*(*(v151 - 8) + 56))(v143 + v150, 1, 1, v151);
    v152 = sub_1E65E0B18();
    v255 = v153;
    (*(v148 + 104))(v143 + v144[14], *MEMORY[0x1E69CBCC8], v147);
    v154 = v144[15];
    sub_1E6200BE0(v143 + v154);
    v155 = sub_1E65D9908();
    (*(*(v155 - 8) + 56))(v143 + v154, 0, 1, v155);
    v156 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    sub_1E5FAB460(v145, v143, &qword_1ED073578, &qword_1E65F0E60);
    (*(v146 + 32))(v143 + v144[5], v248, v242);
    sub_1E5FAB460(v261, v143 + v144[6], &qword_1ED072340, &qword_1E65EA410);
    *(v143 + v144[7]) = v268;
    v157 = (v143 + v144[9]);
    *v157 = 0;
    v157[1] = 0;
    v158 = (v143 + v144[10]);
    *v158 = 0;
    v158[1] = 0;
    *(v143 + v144[11]) = v156;
    v159 = (v143 + v144[12]);
    *v159 = 0;
    v159[1] = 0;
    v160 = (v143 + v144[13]);
    *v160 = v152;
    v160[1] = v255;
    v161 = *(v149 + 56);
    v265 = (*(v149 + 48) + **(v149 + 48));
    v162 = *(*(v149 + 48) + 4);
    v163 = swift_task_alloc();
    *(v0 + 488) = v163;
    *v163 = v0;
    v163[1] = sub_1E63855A4;
    v58 = *(v0 + 328);
    goto LABEL_18;
  }

  if (v4 == *MEMORY[0x1E699DE50])
  {
    goto LABEL_5;
  }

  if (v4 == *MEMORY[0x1E699DE28])
  {
    v111 = *(v0 + 304);
    v112 = *(v0 + 280);
    v113 = *(v0 + 256);
    v114 = *(v0 + 264);
    v115 = *(v0 + 240);
    v116 = *(v0 + 216);
    v246 = *(v0 + 200);
    v253 = *(v0 + 192);
    v117 = *(v0 + 176);
    v231 = *(v0 + 184);
    v233 = *(v0 + 168);
    v118 = *(v0 + 104);
    v119 = *(v0 + 80);
    v236 = *(v0 + 72);
    v240 = *(v0 + 24);
    v120 = sub_1E65D9D78();
    (*(*(v120 - 8) + 56))(v111, 1, 1, v120);
    (*(v114 + 104))(v112, *MEMORY[0x1E69CBA70], v113);
    v121 = sub_1E65D74E8();
    (*(*(v121 - 8) + 56))(v115, 1, 1, v121);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758A8, &qword_1E65F1F98);
    v122 = *(v118 + 72);
    v123 = (*(v118 + 80) + 32) & ~*(v118 + 80);
    v227 = swift_allocObject();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v124 = *MEMORY[0x1E69CBCC8];
    v229 = *(v117 + 104);
    v229(v231, *MEMORY[0x1E69CBCC8], v233);
    v125 = v227 + v123;
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    v126 = *(v119 + 56);
    v126(v227 + v123, 0, 1, v236);
    sub_1E65E0C28();
    v127 = sub_1E6478838();
    (*(v246 + 8))(v116, v253);
    v266 = v122;
    if (v127)
    {
      if (*(v127 + 16))
      {
        (*(*(v0 + 136) + 16))(*(v0 + 160), v127 + ((*(*(v0 + 136) + 80) + 32) & ~*(*(v0 + 136) + 80)), *(v0 + 128));
        v128 = 0;
      }

      else
      {
        v128 = 1;
      }

      v165 = *(v0 + 152);
      v164 = *(v0 + 160);
      v167 = *(v0 + 128);
      v166 = *(v0 + 136);

      (*(v166 + 56))(v164, v128, 1, v167);
      sub_1E5DFD1CC(v164, v165, &qword_1ED0789A0, &qword_1E65FE9B8);
      if ((*(v166 + 48))(v165, 1, v167) == 1)
      {
        v256 = v124;
        v168 = *(v0 + 160);
        v169 = *(v0 + 72);
        v170 = v125 + v266;
        v171 = 1;
      }

      else
      {
        v172 = *(v0 + 144);
        v173 = *(v0 + 128);
        v174 = *(v0 + 136);
        (*(v174 + 32))(v172, *(v0 + 152), v173);
        sub_1E638686C(v125 + v266);
        (*(v174 + 8))(v172, v173);
        v256 = v124;
        v168 = *(v0 + 160);
        v169 = *(v0 + 72);
        v170 = v125 + v266;
        v171 = 0;
      }

      v126(v170, v171, 1, v169);
      sub_1E5DFE50C(v168, &qword_1ED0789A0, &qword_1E65FE9B8);
    }

    else
    {
      v256 = v124;
      v126(v125 + v122, 1, 1, *(v0 + 72));
    }

    v175 = *(v0 + 112);
    v176 = *(v0 + 120);
    v177 = *(v0 + 72);
    v178 = *(v0 + 80);
    sub_1E5DFD1CC(v125, v176, &qword_1ED0758A0, &qword_1E65F1F90);
    sub_1E5FAB460(v176, v175, &qword_1ED0758A0, &qword_1E65F1F90);
    v179 = (v178 + 32);
    v249 = *(v178 + 48);
    v180 = v249(v175, 1, v177);
    v181 = *(v0 + 112);
    if (v180 == 1)
    {
      v182 = (v178 + 32);
      sub_1E5DFE50C(v181, &qword_1ED0758A0, &qword_1E65F1F90);
      v183 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v184 = *v179;
      (*v179)(*(v0 + 88), v181, *(v0 + 72));
      v183 = MEMORY[0x1E69E7CC0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v183 = sub_1E64F6A68(0, *(v183 + 2) + 1, 1, v183);
      }

      v186 = *(v183 + 2);
      v185 = *(v183 + 3);
      if (v186 >= v185 >> 1)
      {
        v183 = sub_1E64F6A68(v185 > 1, v186 + 1, 1, v183);
      }

      v187 = *(v0 + 88);
      v188 = *(v0 + 72);
      *(v183 + 2) = v186 + 1;
      v182 = (v178 + 32);
      v184(&v183[((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v186], v187, v188);
    }

    v190 = *(v0 + 112);
    v189 = *(v0 + 120);
    v191 = *(v0 + 72);
    sub_1E5DFD1CC(v125 + v266, v189, &qword_1ED0758A0, &qword_1E65F1F90);
    sub_1E5FAB460(v189, v190, &qword_1ED0758A0, &qword_1E65F1F90);
    v192 = v249(v190, 1, v191);
    v193 = *(v0 + 112);
    if (v192 == 1)
    {
      sub_1E5DFE50C(*(v0 + 112), &qword_1ED0758A0, &qword_1E65F1F90);
    }

    else
    {
      v194 = *v182;
      (*v182)(*(v0 + 88), *(v0 + 112), *(v0 + 72));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v183 = sub_1E64F6A68(0, *(v183 + 2) + 1, 1, v183);
      }

      v196 = *(v183 + 2);
      v195 = *(v183 + 3);
      if (v196 >= v195 >> 1)
      {
        v183 = sub_1E64F6A68(v195 > 1, v196 + 1, 1, v183);
      }

      v197 = *(v0 + 88);
      v198 = *(v0 + 72);
      *(v183 + 2) = v196 + 1;
      v194(&v183[((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v196], v197, v198);
    }

    v199 = *(v0 + 336);
    v200 = *(v0 + 320);
    v201 = *(v0 + 304);
    v202 = *(v0 + 264);
    v243 = *(v0 + 256);
    v250 = *(v0 + 280);
    v270 = *(v0 + 240);
    v203 = *(v0 + 168);
    v204 = *(v0 + 96);
    v205 = *(v0 + 32);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v206 = v200[8];
    v207 = sub_1E65DA208();
    (*(*(v207 - 8) + 56))(v199 + v206, 1, 1, v207);
    v229(v199 + v200[14], v256, v203);
    v208 = v200[15];
    v209 = sub_1E65D9908();
    (*(*(v209 - 8) + 56))(v199 + v208, 1, 1, v209);
    v210 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    sub_1E5FAB460(v201, v199, &qword_1ED073578, &qword_1E65F0E60);
    (*(v202 + 32))(v199 + v200[5], v250, v243);
    sub_1E5FAB460(v270, v199 + v200[6], &qword_1ED072340, &qword_1E65EA410);
    *(v199 + v200[7]) = v183;
    v211 = (v199 + v200[9]);
    *v211 = 0;
    v211[1] = 0;
    v212 = (v199 + v200[10]);
    *v212 = 0;
    v212[1] = 0;
    *(v199 + v200[11]) = v210;
    v213 = (v199 + v200[12]);
    *v213 = 0;
    v213[1] = 0;
    *(v199 + v200[13]) = xmmword_1E65FE980;
    v214 = *(v205 + 56);
    v265 = (*(v205 + 48) + **(v205 + 48));
    v215 = *(*(v205 + 48) + 4);
    v216 = swift_task_alloc();
    *(v0 + 456) = v216;
    *v216 = v0;
    v216[1] = sub_1E63852A8;
    v58 = *(v0 + 336);
    goto LABEL_18;
  }

  if (v4 == *MEMORY[0x1E699DE20])
  {
    goto LABEL_5;
  }

  if (v4 != *MEMORY[0x1E699DE40])
  {
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
    goto LABEL_5;
  }

  v138 = *(v0 + 32);
  v139 = *(v138 + 24);
  v269 = (*(v138 + 16) + **(v138 + 16));
  v140 = *(*(v138 + 16) + 4);
  v141 = swift_task_alloc();
  *(v0 + 504) = v141;
  *v141 = v0;
  v141[1] = sub_1E6385918;

  return v269();
}

uint64_t sub_1E6384994()
{
  v2 = *(*v1 + 408);
  v5 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = sub_1E6385BF8;
  }

  else
  {
    v3 = sub_1E6384AA8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6384AA8()
{
  v1 = v0[47];
  sub_1E6386BA8(v0[45], type metadata accessor for PageMetricsClick);
  sub_1E6386BA8(v1, MEMORY[0x1E699DD40]);
  v2 = v0[50];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  v8 = v0[42];
  v7 = v0[43];
  v9 = v0[41];
  v10 = v0[38];
  v11 = v0[39];
  v14 = v0[37];
  v15 = v0[36];
  v16 = v0[35];
  v17 = v0[34];
  v18 = v0[31];
  v19 = v0[30];
  v20 = v0[29];
  v21 = v0[28];
  v22 = v0[27];
  v23 = v0[26];
  v24 = v0[23];
  v25 = v0[20];
  v26 = v0[19];
  v27 = v0[18];
  v28 = v0[15];
  v29 = v0[14];
  v30 = v0[11];
  v31 = v0[8];
  v32 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E6384CB0()
{
  v2 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_1E6385E08;
  }

  else
  {
    v3 = sub_1E6384DC4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6384DC4()
{
  sub_1E6386BA8(v0[44], type metadata accessor for PageMetricsClick);
  v1 = v0[50];
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];
  v9 = v0[38];
  v10 = v0[39];
  v13 = v0[37];
  v14 = v0[36];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[31];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[27];
  v22 = v0[26];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[15];
  v28 = v0[14];
  v29 = v0[11];
  v30 = v0[8];
  v31 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E6384FAC()
{
  v2 = *(*v1 + 440);
  v5 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = sub_1E6385FF8;
  }

  else
  {
    v3 = sub_1E63850C0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E63850C0()
{
  sub_1E6386BA8(v0[43], type metadata accessor for PageMetricsClick);
  v1 = v0[50];
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];
  v9 = v0[38];
  v10 = v0[39];
  v13 = v0[37];
  v14 = v0[36];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[31];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[27];
  v22 = v0[26];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[15];
  v28 = v0[14];
  v29 = v0[11];
  v30 = v0[8];
  v31 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E63852A8()
{
  v2 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_1E63861E8;
  }

  else
  {
    v3 = sub_1E63853BC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E63853BC()
{
  sub_1E6386BA8(v0[42], type metadata accessor for PageMetricsClick);
  v1 = v0[50];
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];
  v9 = v0[38];
  v10 = v0[39];
  v13 = v0[37];
  v14 = v0[36];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[31];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[27];
  v22 = v0[26];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[15];
  v28 = v0[14];
  v29 = v0[11];
  v30 = v0[8];
  v31 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E63855A4()
{
  v2 = *(*v1 + 488);
  v5 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = sub_1E63863D8;
  }

  else
  {
    v3 = sub_1E63856B8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E63856B8()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 520);
  v4 = *(v0 + 400);
  v5 = *(v0 + 368);
  v6 = *(v0 + 64);
  v7 = *(v0 + 40);
  sub_1E6386BA8(*(v0 + 328), type metadata accessor for PageMetricsClick);
  v2(v6, v7);
  sub_1E6386BA8(v5, MEMORY[0x1E699DD40]);
  v8 = sub_1E65D7968();
  (*(*(v8 - 8) + 8))(v4 + v3, v8);
  v9 = *(v0 + 400);
  v11 = *(v0 + 368);
  v10 = *(v0 + 376);
  v13 = *(v0 + 352);
  v12 = *(v0 + 360);
  v15 = *(v0 + 336);
  v14 = *(v0 + 344);
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 288);
  v23 = *(v0 + 280);
  v24 = *(v0 + 272);
  v25 = *(v0 + 248);
  v26 = *(v0 + 240);
  v27 = *(v0 + 232);
  v28 = *(v0 + 224);
  v29 = *(v0 + 216);
  v30 = *(v0 + 208);
  v31 = *(v0 + 184);
  v32 = *(v0 + 160);
  v33 = *(v0 + 152);
  v34 = *(v0 + 144);
  v35 = *(v0 + 120);
  v36 = *(v0 + 112);
  v37 = *(v0 + 88);
  v38 = *(v0 + 64);
  v39 = *(v0 + 56);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1E6385918()
{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_1E6386640;
  }

  else
  {
    v3 = sub_1E6385A2C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6385A2C()
{
  v1 = v0[50];
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];
  v9 = v0[38];
  v10 = v0[39];
  v13 = v0[37];
  v14 = v0[36];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[31];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[27];
  v22 = v0[26];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[15];
  v28 = v0[14];
  v29 = v0[11];
  v30 = v0[8];
  v31 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E6385BF8()
{
  v1 = v0[47];
  sub_1E6386BA8(v0[45], type metadata accessor for PageMetricsClick);
  sub_1E6386BA8(v1, MEMORY[0x1E699DD40]);
  v33 = v0[52];
  v2 = v0[50];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  v8 = v0[42];
  v7 = v0[43];
  v9 = v0[41];
  v11 = v0[38];
  v10 = v0[39];
  v14 = v0[37];
  v15 = v0[36];
  v16 = v0[35];
  v17 = v0[34];
  v18 = v0[31];
  v19 = v0[30];
  v20 = v0[29];
  v21 = v0[28];
  v22 = v0[27];
  v23 = v0[26];
  v24 = v0[23];
  v25 = v0[20];
  v26 = v0[19];
  v27 = v0[18];
  v28 = v0[15];
  v29 = v0[14];
  v30 = v0[11];
  v31 = v0[8];
  v32 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E6385E08()
{
  sub_1E6386BA8(v0[44], type metadata accessor for PageMetricsClick);
  v32 = v0[54];
  v1 = v0[50];
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];
  v10 = v0[38];
  v9 = v0[39];
  v13 = v0[37];
  v14 = v0[36];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[31];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[27];
  v22 = v0[26];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[15];
  v28 = v0[14];
  v29 = v0[11];
  v30 = v0[8];
  v31 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E6385FF8()
{
  sub_1E6386BA8(v0[43], type metadata accessor for PageMetricsClick);
  v32 = v0[56];
  v1 = v0[50];
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];
  v10 = v0[38];
  v9 = v0[39];
  v13 = v0[37];
  v14 = v0[36];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[31];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[27];
  v22 = v0[26];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[15];
  v28 = v0[14];
  v29 = v0[11];
  v30 = v0[8];
  v31 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E63861E8()
{
  sub_1E6386BA8(v0[42], type metadata accessor for PageMetricsClick);
  v32 = v0[58];
  v1 = v0[50];
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];
  v10 = v0[38];
  v9 = v0[39];
  v13 = v0[37];
  v14 = v0[36];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[31];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[27];
  v22 = v0[26];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[15];
  v28 = v0[14];
  v29 = v0[11];
  v30 = v0[8];
  v31 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E63863D8()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 520);
  v4 = *(v0 + 400);
  v5 = *(v0 + 368);
  v6 = *(v0 + 64);
  v7 = *(v0 + 40);
  sub_1E6386BA8(*(v0 + 328), type metadata accessor for PageMetricsClick);
  v2(v6, v7);
  sub_1E6386BA8(v5, MEMORY[0x1E699DD40]);
  v8 = sub_1E65D7968();
  (*(*(v8 - 8) + 8))(v4 + v3, v8);
  v40 = *(v0 + 496);
  v9 = *(v0 + 400);
  v11 = *(v0 + 368);
  v10 = *(v0 + 376);
  v13 = *(v0 + 352);
  v12 = *(v0 + 360);
  v15 = *(v0 + 336);
  v14 = *(v0 + 344);
  v16 = *(v0 + 328);
  v18 = *(v0 + 304);
  v17 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 288);
  v23 = *(v0 + 280);
  v24 = *(v0 + 272);
  v25 = *(v0 + 248);
  v26 = *(v0 + 240);
  v27 = *(v0 + 232);
  v28 = *(v0 + 224);
  v29 = *(v0 + 216);
  v30 = *(v0 + 208);
  v31 = *(v0 + 184);
  v32 = *(v0 + 160);
  v33 = *(v0 + 152);
  v34 = *(v0 + 144);
  v35 = *(v0 + 120);
  v36 = *(v0 + 112);
  v37 = *(v0 + 88);
  v38 = *(v0 + 64);
  v39 = *(v0 + 56);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1E6386640()
{
  v32 = v0[64];
  v1 = v0[50];
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];
  v10 = v0[38];
  v9 = v0[39];
  v13 = v0[37];
  v14 = v0[36];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[31];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[27];
  v22 = v0[26];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[15];
  v28 = v0[14];
  v29 = v0[11];
  v30 = v0[8];
  v31 = v0[7];

  v11 = v0[1];

  return v11();
}

unint64_t sub_1E6386814()
{
  result = qword_1ED0789B0;
  if (!qword_1ED0789B0)
  {
    sub_1E65E0C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0789B0);
  }

  return result;
}

uint64_t sub_1E638686C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_1E65D8F28();
  v25 = *(v1 - 8);
  v26 = v1;
  v2 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v27 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65D72D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v24 - v17;
  v19 = sub_1E65E0E18();
  v24[2] = v20;
  v24[3] = v19;
  v21 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  v24[0] = v22;
  v24[1] = v21;
  sub_1E65E0E28();
  sub_1E5DFD1CC(v18, v16, &qword_1ED072D90, &qword_1E66040F0);
  if ((*(v5 + 48))(v16, 1, v4) != 1)
  {
    (*(v5 + 32))(v11, v16, v4);
    (*(v5 + 16))(v9, v11, v4);
    sub_1E65E5D58();
    (*(v5 + 8))(v11, v4);
  }

  sub_1E5DFE50C(v18, &qword_1ED072D90, &qword_1E66040F0);
  (*(v25 + 104))(v27, *MEMORY[0x1E69CBCB0], v26);
  sub_1E6427498(MEMORY[0x1E69E7CC0]);
  return sub_1E65D8678();
}

uint64_t sub_1E6386BA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6386C08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6386C70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6386CD8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E0B48() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFA78C;

  return sub_1E63825CC(a1, v1 + v6, v1 + v9, v11, v12);
}

uint64_t sub_1E6386E54@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v204 = a3;
  v209 = a2;
  v208 = a1;
  v206[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v205 = *(v4 - 8);
  v206[0] = v4;
  v5 = *(v205 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v167 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v173 = &v166 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v166 = &v166 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v171 = &v166 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v168 = &v166 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v182 = &v166 - v16;
  v17 = sub_1E65D76F8();
  v202 = *(v17 - 8);
  v203 = v17;
  v18 = *(v202 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v172 = &v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v170 = &v166 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v181 = &v166 - v23;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D8, &unk_1E6606270);
  v24 = *(*(v200 - 8) + 64);
  MEMORY[0x1EEE9AC00](v200);
  v201 = &v166 - v25;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072808, &qword_1E65EBE00);
  v26 = *(*(v198 - 8) + 64);
  MEMORY[0x1EEE9AC00](v198);
  v199 = &v166 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v186 = &v166 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v185 = &v166 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v177 = &v166 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v176 = &v166 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v197 = &v166 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v196 = &v166 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v194 = &v166 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8);
  v180 = &v166 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v169 = &v166 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v187 = &v166 - v50;
  v193 = sub_1E65D7848();
  v192 = *(v193 - 8);
  v51 = *(v192 + 64);
  v52 = MEMORY[0x1EEE9AC00](v193);
  v184 = &v166 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v175 = &v166 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v195 = &v166 - v56;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  v57 = *(*(v189 - 8) + 64);
  MEMORY[0x1EEE9AC00](v189);
  v59 = &v166 - v58;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB8, &unk_1E65F84D0);
  v60 = *(v210 - 1);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v210);
  v63 = &v166 - v62;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v64 = *(*(v190 - 8) + 64);
  v65 = MEMORY[0x1EEE9AC00](v190);
  v183 = &v166 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x1EEE9AC00](v65);
  v174 = &v166 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v178 = &v166 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v207 = &v166 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v179 = &v166 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v77 = &v166 - v76;
  MEMORY[0x1EEE9AC00](v75);
  v79 = &v166 - v78;
  v191 = type metadata accessor for AppState();
  v80 = *(v191 + 116);
  sub_1E65DE488();
  v82 = v214;
  v81 = v215;
  v83 = v216;
  v212[0] = v214;
  v212[1] = v215;
  v213 = v216;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
  sub_1E65E4D78();
  sub_1E6001C2C(v82, v81, v83);
  v84 = v210;
  sub_1E65E4C98();
  (*(v60 + 8))(v63, v84);
  v211 = v209;
  sub_1E5DF23E0();
  v210 = v79;
  sub_1E65E4DA8();
  sub_1E5DFE50C(v77, &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E5DFD1CC(v188, v59, &qword_1ED073940, &qword_1E65EDCC8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v87 = *v59;
  v86 = *(v59 + 1);
  v88 = v59[16];
  if (EnumCaseMultiPayload == 1)
  {
    v89 = v192;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E00, &unk_1E65F4350);
    sub_1E6388470(&v59[*(v90 + 48)], v207);
    v91 = v178;
    sub_1E5DFD1CC(v210, v178, &unk_1ED077CD0, &unk_1E65F42F0);
    v92 = swift_getEnumCaseMultiPayload();
    v93 = v208;
    v94 = v191;
    v95 = v193;
    v96 = v194;
    v97 = v180;
    v189 = v86;
    if (v92 <= 2)
    {
      if (!v92)
      {
        goto LABEL_6;
      }

      if (v92 == 1)
      {
        v98 = v91;
        v99 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
        v100 = sub_1E65D76A8();
        (*(*(v100 - 8) + 8))(v98 + v99, v100);
LABEL_6:
        v214 = v87;
        v215 = v86;
        v216 = v88;
        v101 = v94[7];
        sub_1E600B01C(v87, v86, v88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
        sub_1E65E4C98();
        v102 = v169;
        sub_1E5E1F544(v169);
        sub_1E5DFE50C(v96, &qword_1ED071F78, &unk_1E65EA3F0);
        v103 = *(v89 + 48);
        v104 = v88;
        if (v103(v102, 1, v95) == 1)
        {
          sub_1E65D77C8();
          if (v103(v102, 1, v95) != 1)
          {
            sub_1E5DFE50C(v102, &qword_1ED071F80, &unk_1E65F4310);
          }
        }

        else
        {
          (*(v89 + 32))(v175, v102, v95);
        }

        v132 = v94[50];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
        v133 = v199;
        sub_1E65E4C98();
        sub_1E65E4DA8();
        sub_1E5DFE50C(v133, &qword_1ED072808, &qword_1E65EBE00);
        v134 = v94[73];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
        v135 = v201;
        sub_1E65E4C98();
        sub_1E65E4DA8();
        sub_1E5DFE50C(v135, &qword_1ED0741D8, &unk_1E6606270);
        sub_1E5DFD1CC(v210, v174, &unk_1ED077CD0, &unk_1E65F42F0);
        (*(v202 + 16))(v170, v204, v203);
        v136 = *(v93 + v94[48] + 64);
        if (*(v136 + 16))
        {
          v137 = v189;
          v138 = sub_1E6416FB4(v87, v189, v104);
          v140 = v139;
          sub_1E6001C2C(v87, v137, v104);
          if (v140)
          {
            v141 = *(v136 + 56);
            v142 = v205;
            v143 = v141 + *(v205 + 72) * v138;
            v144 = v166;
            v145 = v206[0];
            (*(v205 + 16))(v166, v143, v206[0]);
            (*(v142 + 32))(v171, v144, v145);
LABEL_36:
            sub_1E604BABC();
            v163 = v206;
            goto LABEL_37;
          }
        }

        else
        {
          sub_1E6001C2C(v87, v189, v104);
        }

        (*(v205 + 104))(v171, *MEMORY[0x1E699CB70], v206[0]);
        goto LABEL_36;
      }

      sub_1E5DFE50C(v91, &unk_1ED077CD0, &unk_1E65F42F0);
    }

    v214 = v87;
    v215 = v86;
    v216 = v88;
    v146 = v94[7];
    sub_1E600B01C(v87, v86, v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    sub_1E65E4C98();
    sub_1E5E1F544(v97);
    sub_1E5DFE50C(v96, &qword_1ED071F78, &unk_1E65EA3F0);
    v147 = *(v89 + 48);
    v148 = v88;
    if (v147(v97, 1, v95) == 1)
    {
      sub_1E65D77C8();
      if (v147(v97, 1, v95) != 1)
      {
        sub_1E5DFE50C(v97, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v89 + 32))(v184, v97, v95);
    }

    v149 = v94[50];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
    v150 = v199;
    sub_1E65E4C98();
    sub_1E65E4DA8();
    sub_1E5DFE50C(v150, &qword_1ED072808, &qword_1E65EBE00);
    v151 = v94[73];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
    v152 = v201;
    sub_1E65E4C98();
    sub_1E65E4DA8();
    sub_1E5DFE50C(v152, &qword_1ED0741D8, &unk_1E6606270);
    sub_1E5DFD1CC(v207, v183, &unk_1ED077CD0, &unk_1E65F42F0);
    (*(v202 + 16))(v172, v204, v203);
    v153 = *(v93 + v94[48] + 64);
    if (*(v153 + 16))
    {
      v154 = v189;
      v155 = sub_1E6416FB4(v87, v189, v148);
      v157 = v156;
      sub_1E6001C2C(v87, v154, v148);
      if (v157)
      {
        v158 = *(v153 + 56);
        v159 = v205;
        v160 = v158 + *(v205 + 72) * v155;
        v161 = v167;
        v162 = v206[0];
        (*(v205 + 16))(v167, v160, v206[0]);
        (*(v159 + 32))(v173, v161, v162);
LABEL_33:
        sub_1E604BABC();
        v163 = v212;
LABEL_37:
        v164 = *(v163 - 32);
        sub_1E65DE828();
        sub_1E5DFE50C(v207, &unk_1ED077CD0, &unk_1E65F42F0);
        v131 = v210;
        return sub_1E5DFE50C(v131, &unk_1ED077CD0, &unk_1E65F42F0);
      }
    }

    else
    {
      sub_1E6001C2C(v87, v189, v148);
    }

    (*(v205 + 104))(v173, *MEMORY[0x1E699CB70], v206[0]);
    goto LABEL_33;
  }

  v214 = *v59;
  v215 = v86;
  v216 = v88;
  v105 = v191;
  v106 = *(v191 + 28);
  v107 = v86;
  sub_1E600B01C(v87, v86, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v108 = v208;
  v109 = v194;
  sub_1E65E4C98();
  v110 = v187;
  sub_1E5E1F544(v187);
  sub_1E5DFE50C(v109, &qword_1ED071F78, &unk_1E65EA3F0);
  v111 = v192;
  v112 = *(v192 + 48);
  v113 = v193;
  if (v112(v110, 1, v193) == 1)
  {
    v114 = v88;
    sub_1E65D77C8();
    v115 = v112(v110, 1, v113);
    v116 = v179;
    if (v115 != 1)
    {
      sub_1E5DFE50C(v187, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    v117 = v111;
    v114 = v88;
    (*(v117 + 32))(v195, v110, v113);
    v116 = v179;
  }

  v118 = v105[50];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  v119 = v199;
  sub_1E65E4C98();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v119, &qword_1ED072808, &qword_1E65EBE00);
  v120 = v105[73];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  v121 = v201;
  sub_1E65E4C98();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v121, &qword_1ED0741D8, &unk_1E6606270);
  sub_1E5DFD1CC(v210, v116, &unk_1ED077CD0, &unk_1E65F42F0);
  (*(v202 + 16))(v181, v204, v203);
  v122 = *(v108 + v105[48] + 64);
  if (!*(v122 + 16))
  {
    sub_1E6001C2C(v87, v107, v114);
    goto LABEL_17;
  }

  v123 = sub_1E6416FB4(v87, v107, v114);
  v125 = v124;
  sub_1E6001C2C(v87, v107, v114);
  if ((v125 & 1) == 0)
  {
LABEL_17:
    (*(v205 + 104))(v182, *MEMORY[0x1E699CB70], v206[0]);
    goto LABEL_18;
  }

  v126 = *(v122 + 56);
  v127 = v205;
  v128 = v126 + *(v205 + 72) * v123;
  v129 = v168;
  v130 = v206[0];
  (*(v205 + 16))(v168, v128, v206[0]);
  (*(v127 + 32))(v182, v129, v130);
LABEL_18:
  sub_1E604BABC();
  sub_1E65DE828();
  v131 = v210;
  return sub_1E5DFE50C(v131, &unk_1ED077CD0, &unk_1E65F42F0);
}

unsigned int *sub_1E63883AC@<X0>(unsigned int *result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *result | (*(result + 4) << 32);
  if (*(result + 5) == 1)
  {
    if (v3)
    {
      *(a3 + 4) = 256;
      *a3 = 1;
      return result;
    }

    v4 = 256;
  }

  else
  {
    if (a2)
    {
      *(result + 4);
      *a3 = *result;
      *(a3 + 4) = BYTE4(v3) & 1;
      return result;
    }

    v4 = 1;
  }

  *(a3 + 4) = v4;
  *a3 = 0;
  return result;
}

unsigned int *sub_1E638840C@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result | (*(result + 4) << 32);
  if (*(result + 5) == 1)
  {
    if (v3)
    {
      *(a2 + 4) = 256;
      *a2 = 1;
      return result;
    }

    v4 = 256;
  }

  else
  {
    if (*(v2 + 16))
    {
      *(result + 4);
      *a2 = *result;
      *(a2 + 4) = BYTE4(v3) & 1;
      return result;
    }

    v4 = 1;
  }

  *(a2 + 4) = v4;
  *a2 = 0;
  return result;
}

uint64_t sub_1E6388470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1E63884E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0789F0, &qword_1E65FEBA8);
  v12 = objc_allocWithZone(v11);
  *&v12[qword_1ED079D30] = a2;
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a2;
  v25 = sub_1E638F56C;
  v26 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1E638D4E4;
  v24 = &block_descriptor_190;
  v14 = _Block_copy(&aBlock);
  swift_retain_n();

  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a2;
  v25 = sub_1E638F460;
  v26 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1E5E05AB0;
  v24 = &block_descriptor_196;
  v16 = _Block_copy(&aBlock);

  v20.receiver = v12;
  v20.super_class = v11;
  v17 = objc_msgSendSuper2(&v20, sel_initWithSelector_requireEnabled_handler_, a1, v14, v16);

  _Block_release(v16);
  _Block_release(v14);
  return v17;
}

id sub_1E63886EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0789E8, &qword_1E65FEBA0);
  v12 = objc_allocWithZone(v11);
  *&v12[qword_1ED079D30] = a2;
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a2;
  v25 = sub_1E638F56C;
  v26 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1E638D4E4;
  v24 = &block_descriptor_16;
  v14 = _Block_copy(&aBlock);
  swift_retain_n();

  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a2;
  v25 = sub_1E638F404;
  v26 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1E5E05AB0;
  v24 = &block_descriptor_184;
  v16 = _Block_copy(&aBlock);

  v20.receiver = v12;
  v20.super_class = v11;
  v17 = objc_msgSendSuper2(&v20, sel_initWithSelector_requireEnabled_handler_, a1, v14, v16);

  _Block_release(v16);
  _Block_release(v14);
  return v17;
}

id sub_1E63888F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A08, &qword_1E65FEBC0);
  v12 = objc_allocWithZone(v11);
  *&v12[qword_1ED079D30] = a2;
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a2;
  v25 = sub_1E638F56C;
  v26 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1E638D4E4;
  v24 = &block_descriptor_226;
  v14 = _Block_copy(&aBlock);
  swift_retain_n();

  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a2;
  v25 = sub_1E638F508;
  v26 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1E5E05AB0;
  v24 = &block_descriptor_232;
  v16 = _Block_copy(&aBlock);

  v20.receiver = v12;
  v20.super_class = v11;
  v17 = objc_msgSendSuper2(&v20, sel_initWithSelector_requireEnabled_handler_, a1, v14, v16);

  _Block_release(v16);
  _Block_release(v14);
  return v17;
}

id sub_1E6388B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A00, &qword_1E65FEBB8);
  v12 = objc_allocWithZone(v11);
  *&v12[qword_1ED079D30] = a2;
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a2;
  v25 = sub_1E638F4C8;
  v26 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1E638D4E4;
  v24 = &block_descriptor_214;
  v14 = _Block_copy(&aBlock);
  swift_retain_n();

  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a2;
  v25 = sub_1E638F4FC;
  v26 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1E5E05AB0;
  v24 = &block_descriptor_220;
  v16 = _Block_copy(&aBlock);

  v20.receiver = v12;
  v20.super_class = v11;
  v17 = objc_msgSendSuper2(&v20, sel_initWithSelector_requireEnabled_handler_, a1, v14, v16);

  _Block_release(v16);
  _Block_release(v14);
  return v17;
}

id sub_1E6388D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0789F8, &qword_1E65FEBB0);
  v12 = objc_allocWithZone(v11);
  *&v12[qword_1ED079D30] = a2;
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a2;
  v25 = sub_1E638F56C;
  v26 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1E638D4E4;
  v24 = &block_descriptor_202;
  v14 = _Block_copy(&aBlock);
  swift_retain_n();

  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a2;
  v25 = sub_1E638F4BC;
  v26 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1E5E05AB0;
  v24 = &block_descriptor_208;
  v16 = _Block_copy(&aBlock);

  v20.receiver = v12;
  v20.super_class = v11;
  v17 = objc_msgSendSuper2(&v20, sel_initWithSelector_requireEnabled_handler_, a1, v14, v16);

  _Block_release(v16);
  _Block_release(v14);
  return v17;
}

uint64_t sub_1E6388F1C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v62 = a5;
  v64 = a4;
  v71 = a1;
  v72 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v70 = v57 - v9;
  v10 = sub_1E65D7848();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v61 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077DC0, &qword_1E65FAB40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v59 = (v57 - v15);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v60 = *(v58 - 8);
  v16 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v65 = (v57 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v57 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741F0, &unk_1E65EFC10);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v57 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741E8, &qword_1E65EFC08);
  v68 = *(v27 - 8);
  v69 = v27;
  v28 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = v57 - v29;
  v57[1] = *v5;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v31 = v71;
  v73 = v71;
  v74 = a2;
  sub_1E65E4D78();
  (*(v23 + 8))(v26, v22);
  v32 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65F32F0;
  *v21 = v31;
  *(v21 + 1) = a2;
  v34 = v31;
  v21[16] = 2;
  swift_storeEnumTagMultiPayload();

  v35 = v62;
  v36 = sub_1E649226C(v21, v64, v62);
  sub_1E5DFE50C(v21, &qword_1ED073950, &unk_1E65F4360);
  *(inited + 32) = v36;
  v63 = inited + 32;
  *v21 = v34;
  *(v21 + 1) = a2;
  v21[16] = 2;
  v37 = v35;
  swift_storeEnumTagMultiPayload();
  v57[0] = a2;

  v57[2] = v32;
  v38 = sub_1E6492AD8(v21, v72, v35);
  v39 = v30;
  sub_1E5DFE50C(v21, &qword_1ED073950, &unk_1E65F4360);
  *(inited + 40) = v38;
  swift_getKeyPath();
  v40 = v61;
  v41 = v58;
  sub_1E65E4EC8();
  v42 = v59;

  v64 = v39;
  sub_1E62DD2E4(v40, v42);
  (*(v66 + 8))(v40, v67);
  v43 = *(v60 + 48);
  if (v43(v42, 1, v41) == 1)
  {
    v44 = v65;
    v45 = v57[0];
    *v65 = v71;
    v44[1] = v45;
    *(v44 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    v46 = v43(v42, 1, v41);

    if (v46 != 1)
    {
      sub_1E5DFE50C(v42, &qword_1ED077DC0, &qword_1E65FAB40);
    }
  }

  else
  {
    v44 = v65;
    sub_1E5FAB460(v42, v65, &unk_1ED0776E0, &qword_1E65EDC00);
  }

  v47 = sub_1E6200DD8(v44, v72, v37);
  if (qword_1ED071988 != -1)
  {
    swift_once();
  }

  v48 = qword_1ED0962F8;

  v49 = sub_1E63886EC(v48, v47, sub_1E5E278AC, 0, sub_1E5F88C58, 0);
  v50 = sub_1E65E60A8();
  v51 = v70;
  (*(*(v50 - 8) + 56))(v70, 1, 1, v50);
  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = 0;
  v52[4] = v47;

  sub_1E64B80F8(0, 0, v51, &unk_1E65F91E8, v52);

  sub_1E5DFE50C(v44, &unk_1ED0776E0, &qword_1E65EDC00);
  *(inited + 48) = v49;
  sub_1E5F9AF8C(inited);
  v54 = v53;
  swift_setDeallocating();
  v55 = *(inited + 16);
  swift_arrayDestroy();
  (*(v68 + 8))(v64, v69);
  return v54;
}

uint64_t sub_1E63896A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v40 = a1;
  v6 = sub_1E65DEBD8();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  v21 = type metadata accessor for AppState();
  v22 = v21[22];
  v36 = a2;
  v41 = a2;
  v42 = a3;
  v43 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  sub_1E65E4D78();
  sub_1E65E4C98();
  (*(v10 + 8))(v13, v9);
  sub_1E5DFD1CC(v20, v18, &unk_1ED077CC0, &unk_1E65F2610);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v29 = *v18;
LABEL_7:
    v24 = v38;
    v25 = a3;
    goto LABEL_9;
  }

  v24 = v38;
  v25 = a3;
  if (EnumCaseMultiPayload == 1)
  {
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v27 = *v18;
    v28 = sub_1E65D76A8();
    (*(*(v28 - 8) + 8))(&v18[v26], v28);
  }

  else
  {
    sub_1E5DFE50C(v18, &unk_1ED077CC0, &unk_1E65F2610);
  }

LABEL_9:
  v31 = v36;
  v30 = v37;
  v32 = v40;
  sub_1E637CA94(v36, v25, *(v40 + v21[67] + 8));
  sub_1E637CA94(v31, v25, *(v32 + v21[68] + 8));
  (*(v30 + 104))(v35, *MEMORY[0x1E699CD10], v24);
  sub_1E65DEBA8();
  return sub_1E5DFE50C(v20, &unk_1ED077CC0, &unk_1E65F2610);
}

uint64_t sub_1E6389A48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0789D8, &qword_1E65FEAF8);
  v26 = *(v5 - 8);
  v27 = v5;
  v6 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = type metadata accessor for AppComposer();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = sub_1E65E02E8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = sub_1E65E0038();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  sub_1E5E1DEAC(a1, &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_1E5E1FA80(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_1E65E02D8();
  sub_1E65E0028();
  v21 = swift_allocObject();
  *(v21 + 16) = v25;
  *(v21 + 24) = a3;
  type metadata accessor for AppFeature();
  sub_1E638D9B4(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E638D9B4(&qword_1ED0789E0, MEMORY[0x1E699D658]);

  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v22 = sub_1E65E4F08();
  (*(v26 + 8))(v8, v27);
  (*(v15 + 8))(v18, v14);
  return v22;
}

uint64_t sub_1E6389DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6389E1C, 0, 0);
}

uint64_t sub_1E6389E1C()
{
  v1 = v0[4];
  v0[5] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  sub_1E65E6058();
  v0[6] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6389EC8, v3, v2);
}

uint64_t sub_1E6389EC8()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];

  sub_1E608521C(v4, v3, 2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6389F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a3;
  v41 = a4;
  v37 = a2;
  v38 = a1;
  v42 = a6;
  v39 = sub_1E65D76F8();
  v43 = *(v39 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppComposer();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  *v17 = v37;
  *(v17 + 1) = a3;
  v17[16] = 2;
  swift_storeEnumTagMultiPayload();
  sub_1E5E1DEAC(v38, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5DFD1CC(v17, v15, &qword_1ED073950, &unk_1E65F4360);
  v18 = v43;
  v19 = v39;
  (*(v43 + 16))(&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v39);
  v20 = a5[3];
  v35 = *a5;
  v36 = v20;
  v21 = a5[7];
  v37 = a5[5];
  v38 = v21;
  v41 = a5[9];
  v22 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v23 = (v10 + *(v12 + 80) + v22) & ~*(v12 + 80);
  v24 = (v13 + *(v18 + 80) + v23) & ~*(v18 + 80);
  v25 = (v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_1E5E1FA80(v32, v26 + v22);
  sub_1E5FAB460(v15, v26 + v23, &qword_1ED073950, &unk_1E65F4360);
  (*(v43 + 32))(v26 + v24, v33, v19);
  v27 = (v26 + v25);
  v28 = *(a5 + 3);
  v27[2] = *(a5 + 2);
  v27[3] = v28;
  v27[4] = *(a5 + 4);
  v29 = *(a5 + 1);
  *v27 = *a5;
  v27[1] = v29;
  v30 = (v26 + ((v25 + 87) & 0xFFFFFFFFFFFFFFF8));
  *v30 = nullsub_1;
  v30[1] = 0;
  sub_1E604BABC();

  swift_unknownObjectRetain();

  sub_1E65DE518();
  return sub_1E5DFE50C(v17, &qword_1ED073950, &unk_1E65F4360);
}

uint64_t sub_1E638A31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a3;
  v39 = a4;
  v35 = a2;
  v36 = a1;
  v40 = a6;
  v37 = sub_1E65D76F8();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppComposer();
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v29 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v31 = *(v12 - 8);
  v13 = *(v31 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  *v17 = v35;
  *(v17 + 1) = a3;
  v17[16] = 2;
  swift_storeEnumTagMultiPayload();
  sub_1E5E1DEAC(v36, &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5DFD1CC(v17, v15, &unk_1ED0776E0, &qword_1E65EDC00);
  v18 = v37;
  (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v37);
  v19 = a5[3];
  v32 = *a5;
  v33 = v19;
  v20 = a5[7];
  v35 = a5[5];
  v36 = v20;
  v39 = a5[9];
  v21 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v22 = (v11 + *(v31 + 80) + v21) & ~*(v31 + 80);
  v23 = (v13 + *(v8 + 80) + v22) & ~*(v8 + 80);
  v24 = swift_allocObject();
  sub_1E5E1FA80(v29, v24 + v21);
  sub_1E5FAB460(v15, v24 + v22, &unk_1ED0776E0, &qword_1E65EDC00);
  (*(v8 + 32))(v24 + v23, v30, v18);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = *(a5 + 3);
  v25[2] = *(a5 + 2);
  v25[3] = v26;
  v25[4] = *(a5 + 4);
  v27 = *(a5 + 1);
  *v25 = *a5;
  v25[1] = v27;
  sub_1E604C89C();

  swift_unknownObjectRetain();

  sub_1E65DE4E8();
  return sub_1E5DFE50C(v17, &unk_1ED0776E0, &qword_1E65EDC00);
}

uint64_t sub_1E638A6CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v20 = a1;
  v23 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F88, &qword_1E65F90B8);
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CF0, &unk_1E65F7110);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739A8, &qword_1E65F7120);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  sub_1E604BABC();

  sub_1E65DEE28();
  sub_1E604C89C();

  sub_1E65DE568();
  v17 = sub_1E5FED46C(&qword_1EE2D6810, &qword_1ED0739A8, &qword_1E65F7120);
  MEMORY[0x1E69482C0](v16, v12, v17);
  v24 = v12;
  v25 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1E5FED46C(&qword_1EE2D68A8, &unk_1ED077CF0, &unk_1E65F7110);
  v18 = v21;
  sub_1E65E08A8();
  (*(v22 + 8))(v6, v18);
  (*(v8 + 8))(v11, v7);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1E638AA24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_1E65E60A8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;

  sub_1E64B80F8(0, 0, v7, &unk_1E65FEB40, v9);
}

char *sub_1E638AB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v166 = a1;
  v167 = a4;
  v165 = a3;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077C90, &qword_1E65F8F88);
  v152 = *(v153 - 8);
  v7 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v149 = v128 - v8;
  v148 = sub_1E65DED38();
  v150 = *(v148 - 8);
  v9 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v147 = v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077208, &qword_1E65F9848);
  v12 = *(v11 - 8);
  v146 = v11 - 8;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8);
  v151 = v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v171 = v128 - v16;
  v173 = sub_1E65D76F8();
  v170 = *(v173 - 8);
  v169 = *(v170 + 64);
  v17 = MEMORY[0x1EEE9AC00](v173);
  v168 = v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v175 = v128 - v19;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CA0, &unk_1E65F7160);
  v143 = *(v144 - 8);
  v20 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v164 = v128 - v21;
  v22 = type metadata accessor for AppComposer();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22 - 8);
  v145 = v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v142 = v128 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v128 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073860, &unk_1E65FA8F0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v160 = v128 - v32;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CB0, &unk_1E65F7170);
  v141 = *(v162 - 8);
  v33 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v157 = v128 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  v156 = *(v35 - 8);
  v161 = *(v156 + 64);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v130 = v128 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v39 = v128 - v38;
  v155 = v128 - v38;
  *v39 = a1;
  *(v39 + 1) = a2;
  v163 = a2;
  v39[16] = 2;
  swift_storeEnumTagMultiPayload();
  v138 = *v4;
  sub_1E5E1DEAC(v4, v29);
  v40 = *(v23 + 80);
  v41 = ((v40 + 16) & ~v40) + v24;
  v42 = (v40 + 16) & ~v40;
  v43 = v40 | 7;
  v44 = swift_allocObject();
  sub_1E5E1FA80(v29, v44 + v42);
  sub_1E5E1DEAC(v4, v29);
  v45 = swift_allocObject();
  sub_1E5E1FA80(v29, v45 + v42);
  v158 = v4;
  sub_1E5E1DEAC(v4, v29);
  v154 = v41;
  v174 = v43;
  v46 = swift_allocObject();
  v172 = v42;
  v176 = v29;
  sub_1E5E1FA80(v29, v46 + v42);
  v47 = swift_allocObject();
  *(v47 + 16) = &unk_1E65F7190;
  *(v47 + 24) = v46;
  sub_1E5E1DEAC(v4, v29);
  v48 = swift_allocObject();
  sub_1E5E1FA80(v29, v48 + v42);
  sub_1E604BABC();

  sub_1E65DED58();
  sub_1E65DEAC8();
  v49 = v155;
  v50 = v130;
  sub_1E5DFD1CC(v155, v130, &qword_1ED072AA8, &unk_1E65FA900);
  v51 = v170;
  v52 = *(v170 + 16);
  v160 = (v170 + 16);
  v159 = v52;
  v53 = v175;
  v54 = v173;
  v52(v175, v165, v173);
  v129 = *(v156 + 80);
  v55 = (v129 + 16) & ~v129;
  v156 = v55 + v161;
  v135 = *(v51 + 80);
  v56 = (v55 + v161 + v135) & ~v135;
  v57 = v56 + v169;
  v58 = swift_allocObject();
  sub_1E5FAB460(v50, v58 + v55, &qword_1ED072AA8, &unk_1E65FA900);
  v59 = *(v51 + 32);
  v136 = v51 + 32;
  v137 = v59;
  v59(v58 + v56, v53, v54);
  *(v58 + v57) = 0;
  sub_1E5DFD1CC(v49, v50, &qword_1ED072AA8, &unk_1E65FA900);
  v60 = swift_allocObject();
  sub_1E5FAB460(v50, v60 + v55, &qword_1ED072AA8, &unk_1E65FA900);
  v140 = type metadata accessor for AppFeature();
  v139 = sub_1E638D9B4(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v128[1] = sub_1E5FED46C(&qword_1EE2D6848, &unk_1ED077CB0, &unk_1E65F7170);
  sub_1E65E4DE8();
  v61 = v176;
  sub_1E5E1DEAC(v158, v176);
  v62 = v167;
  v131 = *v167;
  v132 = v167[3];
  v133 = v167[5];
  v134 = v167[7];
  v156 = v167[9];
  sub_1E5DFD1CC(v49, v50, &qword_1ED072AA8, &unk_1E65FA900);
  v63 = (v154 + 7) & 0xFFFFFFFFFFFFFFF8;
  v154 = v63;
  v64 = (v63 + v129 + 80) & ~v129;
  v65 = swift_allocObject();
  sub_1E5E1FA80(v61, v65 + v172);
  v66 = (v65 + v63);
  v67 = v62[3];
  v66[2] = v62[2];
  v66[3] = v67;
  v66[4] = v62[4];
  v68 = v62[1];
  *v66 = *v62;
  v66[1] = v68;
  sub_1E5FAB460(v50, v65 + v64, &qword_1ED072AA8, &unk_1E65FA900);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v69 = swift_allocObject();
  *(v69 + 16) = sub_1E62423E8;
  *(v69 + 24) = v65;

  v70 = v157;
  v71 = v164;
  v72 = v162;
  v161 = sub_1E65E4F08();

  (*(v143 + 8))(v71, v144);
  (*(v141 + 8))(v70, v72);
  sub_1E5DFE50C(v155, &qword_1ED072AA8, &unk_1E65FA900);
  v73 = v158;
  sub_1E5E1DEAC(v158, v61);
  v74 = v165;
  v75 = v173;
  v76 = v159;
  v159(v175, v165, v173);
  v77 = v142;
  sub_1E5E1DEAC(v73, v142);
  v78 = v154;
  v79 = v154 + 16;
  v80 = swift_allocObject();
  v164 = v80;
  sub_1E5E1FA80(v77, v80 + v172);
  v81 = (v80 + v78);
  v82 = v166;
  v83 = v163;
  *v81 = v166;
  v81[1] = v83;
  v84 = v73;
  v85 = v145;
  sub_1E5E1DEAC(v84, v145);
  v86 = v168;
  v87 = v75;
  v76(v168, v74, v75);
  v88 = (v79 + v135) & ~v135;
  v89 = (v169 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = swift_allocObject();
  sub_1E5E1FA80(v85, v90 + v172);
  v91 = (v90 + v154);
  *v91 = v82;
  v91[1] = v83;
  v92 = v83;
  v137(v90 + v88, v86, v87);
  v93 = (v90 + v89);
  v94 = v167;
  v95 = *(v167 + 3);
  v93[2] = *(v167 + 2);
  v93[3] = v95;
  v93[4] = v94[4];
  v96 = v94[1];
  *v93 = *v94;
  v93[1] = v96;
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0789C0, &qword_1E65FE9E0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076F50, &qword_1E65F8F98);
  v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076F48, &qword_1E65F8F90);
  v99 = sub_1E65E3F88();
  v100 = sub_1E5FED46C(&qword_1ED076F68, &qword_1ED076F48, &qword_1E65F8F90);
  v101 = sub_1E638D9B4(&unk_1ED07A410, MEMORY[0x1E697C4E8]);
  v179 = v98;
  v180 = v99;
  v181 = v100;
  v182 = v101;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v103 = sub_1E62438F0();
  v179 = v97;
  v180 = &type metadata for NavigationBarButtonStyle;
  v181 = OpaqueTypeConformance2;
  v182 = v103;
  swift_getOpaqueTypeConformance2();
  v104 = v171;
  sub_1E65DFFE8();
  v105 = (v104 + *(v146 + 44));
  v106 = v161;
  *v105 = sub_1E638D810;
  v105[1] = v106;
  v107 = type metadata accessor for DynamicBarButtonItem();
  v105[2] = 0;
  v105[3] = 0;
  v108 = objc_allocWithZone(v107);
  v109 = *v176;
  v110 = v147;
  sub_1E65DED28();
  v111 = swift_allocObject();
  *(v111 + 16) = v166;
  *(v111 + 24) = v92;
  sub_1E638D9B4(&qword_1EE2D6820, MEMORY[0x1E699CD98]);

  v112 = v149;
  v113 = v148;
  sub_1E65E4DF8();
  sub_1E65E4CC8();
  sub_1E65E4F08();
  (*(v152 + 8))(v112, v153);
  (*(v150 + 8))(v110, v113);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F80, &qword_1E65FA950);
  v115 = *(v114 + 48);
  v116 = *(v114 + 52);
  swift_allocObject();
  *&v108[OBJC_IVAR____TtC10Blackbeard20DynamicBarButtonItem_changeObserver] = sub_1E65E4D18();
  v117 = v168;
  v118 = v175;
  v119 = v173;
  v159(v168, v175, v173);
  v120 = v151;
  sub_1E5DFD1CC(v104, v151, &qword_1ED077208, &qword_1E65F9848);
  v121 = sub_1E625BA90(v117, v120);
  v122 = OBJC_IVAR____TtC10Blackbeard20DynamicBarButtonItem_changeObserver;
  v123 = *&v121[OBJC_IVAR____TtC10Blackbeard20DynamicBarButtonItem_changeObserver];
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v124 = v121;

  sub_1E65E4D08();

  v125 = *&v121[v122];
  v177 = swift_getKeyPath();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E638D9B4(&qword_1EE2D6840, MEMORY[0x1E699CD20]);
  sub_1E65E4D08();

  v126 = *&v121[v122];

  sub_1E65E4CF8();

  sub_1E624395C(v176);

  sub_1E5DFE50C(v171, &qword_1ED077208, &qword_1E65F9848);
  (*(v170 + 8))(v118, v119);
  return v124;
}

uint64_t sub_1E638BE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v7 = sub_1E65DEBD8();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  v33 = type metadata accessor for AppState();
  v34 = a2;
  v22 = *(v33 + 88);
  v40 = a2;
  v41 = a3;
  v35 = a3;
  v42 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  v23 = a1;
  sub_1E65E4D78();
  sub_1E65E4C98();
  (*(v11 + 8))(v14, v10);
  sub_1E5DFD1CC(v21, v19, &unk_1ED077CC0, &unk_1E65F2610);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v30 = 0;
LABEL_7:
    v25 = v38;
    v27 = v36;
    v26 = v37;
    v28 = v33;
    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    v30 = *v19;
    goto LABEL_7;
  }

  v25 = v38;
  v27 = v36;
  v26 = v37;
  v28 = v33;
  if (EnumCaseMultiPayload == 1)
  {
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v30 = *v19;
    v31 = sub_1E65D76A8();
    (*(*(v31 - 8) + 8))(&v19[v29], v31);
  }

  else
  {
    sub_1E5DFE50C(v19, &unk_1ED077CC0, &unk_1E65F2610);
    v30 = 0;
  }

LABEL_9:
  if ((sub_1E637CA94(v34, v35, *(v23 + *(v28 + 268) + 8)) & 1) != 0 || v30)
  {
    sub_1E63969B4();
  }

  (*(v26 + 104))(v27, *MEMORY[0x1E699CD10], v25);
  sub_1E65DEBA8();
  return sub_1E5DFE50C(v21, &unk_1ED077CC0, &unk_1E65F2610);
}

uint64_t sub_1E638C1C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0789D8, &qword_1E65FEAF8);
  v26 = *(v5 - 8);
  v27 = v5;
  v6 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = type metadata accessor for AppComposer();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = sub_1E65E02E8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = sub_1E65E0038();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  sub_1E5E1DEAC(a1, &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_1E5E1FA80(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_1E65E02D8();
  sub_1E65E0028();
  v21 = swift_allocObject();
  *(v21 + 16) = v25;
  *(v21 + 24) = a3;
  type metadata accessor for AppFeature();
  sub_1E638D9B4(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E638D9B4(&qword_1ED0789E0, MEMORY[0x1E699D658]);

  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v22 = sub_1E65E4F08();
  (*(v26 + 8))(v8, v27);
  (*(v15 + 8))(v18, v14);
  return v22;
}

uint64_t sub_1E638C578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E638C59C, 0, 0);
}

uint64_t sub_1E638C59C()
{
  v1 = v0[4];
  v0[5] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  sub_1E65E6058();
  v0[6] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E638F53C, v3, v2);
}

uint64_t sub_1E638C648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v23 - v17;
  v19 = type metadata accessor for AppState();
  v20 = v19[22];
  v23[1] = a2;
  v23[2] = a3;
  v24 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  sub_1E65E4D78();
  sub_1E65E4C98();
  (*(v8 + 8))(v11, v7);
  sub_1E5DFD1CC(v18, v16, &unk_1ED077CC0, &unk_1E65F2610);
  v21 = *(a1 + v19[67] + 8);

  sub_1E637CA94(a2, a3, v21);
  sub_1E637CA94(a2, a3, *(a1 + v19[68] + 8));
  sub_1E65DFE48();
  return sub_1E5DFE50C(v18, &unk_1ED077CC0, &unk_1E65F2610);
}

uint64_t sub_1E638C888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v102 = a4;
  v83 = a2;
  v106 = a1;
  v101 = a6;
  v8 = sub_1E65E3F88();
  v9 = *(v8 - 8);
  v99 = v8;
  v100 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v98 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1E65D76F8();
  v103 = *(v84 - 8);
  v86 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AppComposer();
  v81 = *(v14 - 8);
  v15 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v80 = *(v16 - 8);
  v17 = *(v80 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v73 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v72 - v19;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v89 = *(v91 - 8);
  v90 = *(v89 + 64);
  v21 = MEMORY[0x1EEE9AC00](v91);
  v88 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v104 = &v72 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v87 = *(v24 - 8);
  v85 = *(v87 + 64);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v82 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v72 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F48, &qword_1E65F8F90);
  v30 = *(v29 - 8);
  v94 = v29;
  v95 = v30;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v92 = &v72 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F50, &qword_1E65F8F98);
  v34 = *(v33 - 8);
  v96 = v33;
  v97 = v34;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v93 = &v72 - v36;
  *v28 = v83;
  *(v28 + 1) = a3;
  v28[16] = 2;
  v105 = v28;
  swift_storeEnumTagMultiPayload();

  v79 = v20;
  sub_1E6184404(v20);
  v37 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1DEAC(v106, v37);
  sub_1E5DFD1CC(v20, &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ED073950, &unk_1E65F4360);
  v38 = v103;
  v39 = v13;
  v40 = v84;
  (*(v103 + 16))(v13, v102, v84);
  v41 = a5;
  v74 = *a5;
  v75 = a5[3];
  v76 = a5[5];
  v77 = a5[7];
  v78 = a5[9];
  v42 = *(v81 + 80);
  v43 = (v42 + 16) & ~v42;
  v102 = v43 + v15;
  v81 = v43;
  v83 = v42 | 7;
  v44 = (v43 + v15 + *(v80 + 80)) & ~*(v80 + 80);
  v45 = (v17 + *(v38 + 80) + v44) & ~*(v38 + 80);
  v46 = (v86 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  sub_1E5E1FA80(v37, v47 + v43);
  sub_1E5FAB460(v73, v47 + v44, &qword_1ED073950, &unk_1E65F4360);
  (*(v103 + 32))(v47 + v45, v39, v40);
  v48 = (v47 + v46);
  v49 = v41[3];
  v48[2] = v41[2];
  v48[3] = v49;
  v48[4] = v41[4];
  v50 = v41[1];
  *v48 = *v41;
  v48[1] = v50;
  v51 = (v47 + ((v46 + 87) & 0xFFFFFFFFFFFFFFF8));
  *v51 = nullsub_1;
  v51[1] = 0;
  sub_1E604BABC();
  swift_unknownObjectRetain();

  v52 = v104;
  sub_1E65DE518();
  sub_1E5DFE50C(v79, &qword_1ED073950, &unk_1E65F4360);
  sub_1E5E1DEAC(v106, v37);
  v53 = v82;
  sub_1E5DFD1CC(v105, v82, &qword_1ED073958, &qword_1E65EDCD0);
  v54 = (v102 + *(v87 + 80)) & ~*(v87 + 80);
  v55 = swift_allocObject();
  v103 = v55;
  v56 = v81;
  sub_1E5E1FA80(v37, v55 + v81);
  sub_1E5FAB460(v53, v55 + v54, &qword_1ED073958, &qword_1E65EDCD0);
  v57 = v89;
  v58 = v88;
  v59 = v91;
  (*(v89 + 16))(v88, v52, v91);
  v60 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v61 = swift_allocObject();
  (*(v57 + 32))(v61 + v60, v58, v59);
  sub_1E5E1DEAC(v106, v37);
  v62 = swift_allocObject();
  sub_1E5E1FA80(v37, v62 + v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F60, &qword_1E65F8FA8);
  sub_1E604CB00();
  sub_1E5FED46C(&qword_1EE2D68D0, &qword_1ED077CE0, &unk_1E65F72C0);
  swift_getOpaqueTypeConformance2();
  v63 = v92;
  sub_1E65DE8A8();
  (*(v57 + 8))(v104, v59);
  sub_1E5DFE50C(v105, &qword_1ED073958, &qword_1E65EDCD0);
  v64 = v98;
  sub_1E65E3F78();
  v65 = sub_1E5FED46C(&qword_1ED076F68, &qword_1ED076F48, &qword_1E65F8F90);
  v66 = sub_1E638D9B4(&unk_1ED07A410, MEMORY[0x1E697C4E8]);
  v68 = v93;
  v67 = v94;
  v69 = v99;
  sub_1E65E47D8();
  (*(v100 + 8))(v64, v69);
  (*(v95 + 8))(v63, v67);
  v107 = v67;
  v108 = v69;
  v109 = v65;
  v110 = v66;
  swift_getOpaqueTypeConformance2();
  sub_1E62438F0();
  v70 = v96;
  sub_1E65E47F8();
  return (*(v97 + 8))(v68, v70);
}

uint64_t sub_1E638D3D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  v6 = sub_1E65E60A8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_1E64B80F8(0, 0, v5, &unk_1E65FEAF0, v7);
}

uint64_t sub_1E638D4E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  LOBYTE(v1) = v1(v3);

  return v1 & 1;
}

void *sub_1E638D524(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  result = a1(&v4, a3);
  if ((v4 & 0x100000000000000) == 0)
  {
    v6 = WORD2(v4);
    v5 = v4;
    v7 = BYTE6(v4) & 1;
    return sub_1E65E4EE8();
  }

  return result;
}

void *sub_1E638D594(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  result = a1(&v4, a3);
  if (v5 <= 0xFBu)
  {
    v6 = v4;
    v7 = v5;
    return sub_1E65E4EE8();
  }

  return result;
}

void *sub_1E638D5F8(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  result = a1(&v4, a3);
  if (v4 != 2)
  {
    BYTE1(v4) = v4 & 1;
    return sub_1E65E4EE8();
  }

  return result;
}

uint64_t sub_1E638D680@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = sub_1E65E4EC8();
  *a3 = v7;
  return result;
}

uint64_t sub_1E638D6C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E65DEBB8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E638D704(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *a1;
  v7 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  return sub_1E65E5B98() & 1;
}

uint64_t keypath_hashTm(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_1E65E5B58();
}

uint64_t sub_1E638D820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6243658(a1, v4, v5, v6);
}

uint64_t sub_1E638D8D4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E638C578(a1, a2, v2 + v7);
}

uint64_t sub_1E638D9B4(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1E638D9FC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v185 = a4;
  v197 = a3;
  v198 = a1;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077C90, &qword_1E65F8F88);
  v175 = *(v176 - 8);
  v8 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v172 = v149 - v9;
  v171 = sub_1E65DED38();
  v173 = *(v171 - 8);
  v10 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v170 = v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077228, &unk_1E65FA8E0);
  v13 = *(v12 - 8);
  v169 = v12 - 8;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8);
  v174 = v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v189 = v149 - v17;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v18 = *(*(v166 - 8) + 64);
  MEMORY[0x1EEE9AC00](v166);
  v165 = (v149 - v19);
  v199 = sub_1E65D76F8();
  v188 = *(v199 - 8);
  v187 = *(v188 + 64);
  v20 = MEMORY[0x1EEE9AC00](v199);
  v168 = v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v186 = v149 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v196 = v149 - v24;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CA0, &unk_1E65F7160);
  v159 = *(v160 - 8);
  v25 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v184 = v149 - v26;
  v27 = type metadata accessor for AppComposer();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27 - 8);
  v167 = v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v162 = v149 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v161 = v149 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = v149 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073860, &unk_1E65FA8F0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v195 = v149 - v39;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CB0, &unk_1E65F7170);
  v158 = *(v182 - 8);
  v40 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v178 = v149 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  v180 = *(v42 - 8);
  v181 = *(v180 + 64);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v177 = v149 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v46 = v149 - v45;
  v191 = v149 - v45;
  *v46 = a1;
  *(v46 + 1) = a2;
  v201 = a2;
  v46[16] = 2;
  swift_storeEnumTagMultiPayload();
  v157 = *a5;
  sub_1E5E1DEAC(a5, v36);
  v47 = *(v28 + 80);
  v48 = ((v47 + 16) & ~v47) + v29;
  v49 = (v47 + 16) & ~v47;
  v50 = v47 | 7;
  v51 = swift_allocObject();
  sub_1E5E1FA80(v36, v51 + v49);
  sub_1E5E1DEAC(a5, v36);
  v52 = swift_allocObject();
  sub_1E5E1FA80(v36, v52 + v49);
  v192 = a5;
  sub_1E5E1DEAC(a5, v36);
  v190 = v48;
  v183 = v50;
  v53 = swift_allocObject();
  v193 = v49;
  v200 = v36;
  sub_1E5E1FA80(v36, v53 + v49);
  v54 = swift_allocObject();
  *(v54 + 16) = &unk_1E65FEB20;
  *(v54 + 24) = v53;
  sub_1E5E1DEAC(a5, v36);
  v55 = swift_allocObject();
  sub_1E5E1FA80(v36, v55 + v49);
  sub_1E604BABC();

  sub_1E65DED58();
  sub_1E65DEAC8();
  v56 = v177;
  sub_1E5DFD1CC(v191, v177, &qword_1ED072AA8, &unk_1E65FA900);
  v57 = v188;
  v194 = *(v188 + 16);
  v195 = (v188 + 16);
  v58 = v196;
  v59 = v199;
  v194(v196, v197, v199);
  v150 = *(v180 + 80);
  v60 = (v150 + 16) & ~v150;
  v179 = v60 + v181;
  v180 = *(v57 + 80);
  v61 = (v60 + v181 + v180) & ~v180;
  v62 = v61 + v187;
  v63 = swift_allocObject();
  sub_1E5FAB460(v56, v63 + v60, &qword_1ED072AA8, &unk_1E65FA900);
  v64 = *(v57 + 32);
  v155 = v57 + 32;
  v156 = v64;
  v64(v63 + v61, v58, v59);
  *(v63 + v62) = 0;
  v65 = v191;
  sub_1E5DFD1CC(v191, v56, &qword_1ED072AA8, &unk_1E65FA900);
  v66 = swift_allocObject();
  sub_1E5FAB460(v56, v66 + v60, &qword_1ED072AA8, &unk_1E65FA900);
  v164 = type metadata accessor for AppFeature();
  v163 = sub_1E638D9B4(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v149[1] = sub_1E5FED46C(&qword_1EE2D6848, &unk_1ED077CB0, &unk_1E65F7170);
  sub_1E65E4DE8();
  v67 = v200;
  sub_1E5E1DEAC(v192, v200);
  v68 = v185;
  v151 = *v185;
  v152 = *(v185 + 24);
  v153 = *(v185 + 40);
  v154 = *(v185 + 56);
  v179 = *(v185 + 72);
  v69 = v177;
  sub_1E5DFD1CC(v65, v177, &qword_1ED072AA8, &unk_1E65FA900);
  v70 = (v190 + 7) & 0xFFFFFFFFFFFFFFF8;
  v190 = v70;
  v71 = (v70 + v150 + 80) & ~v150;
  v72 = swift_allocObject();
  sub_1E5E1FA80(v67, v72 + v193);
  v73 = (v72 + v70);
  v74 = v68[3];
  v73[2] = v68[2];
  v73[3] = v74;
  v73[4] = v68[4];
  v75 = v68[1];
  *v73 = *v68;
  v73[1] = v75;
  sub_1E5FAB460(v69, v72 + v71, &qword_1ED072AA8, &unk_1E65FA900);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v76 = swift_allocObject();
  *(v76 + 16) = sub_1E638F568;
  *(v76 + 24) = v72;

  v77 = v178;
  v78 = v184;
  v79 = v182;
  v181 = sub_1E65E4F08();

  (*(v159 + 8))(v78, v160);
  (*(v158 + 8))(v77, v79);
  sub_1E5DFE50C(v191, &qword_1ED072AA8, &unk_1E65FA900);
  v80 = v165;
  v81 = v201;
  *v165 = v198;
  *(v80 + 8) = v81;
  *(v80 + 16) = 2;
  swift_storeEnumTagMultiPayload();

  v82 = v197;
  v83 = v68;
  v84 = v192;
  v184 = sub_1E6200DD8(v80, v197, v83);
  sub_1E5DFE50C(v80, &unk_1ED0776E0, &qword_1E65EDC00);
  sub_1E5E1DEAC(v84, v200);
  v85 = v199;
  v86 = v194;
  v194(v196, v82, v199);
  v87 = v161;
  sub_1E5E1DEAC(v84, v161);
  v88 = v190;
  v89 = v190 + 16;
  v90 = swift_allocObject();
  v191 = v90;
  v91 = v193;
  sub_1E5E1FA80(v87, v90 + v193);
  v92 = (v90 + v88);
  v93 = v201;
  *v92 = v198;
  v92[1] = v93;
  v94 = v162;
  sub_1E5E1DEAC(v84, v162);
  v95 = v186;
  v96 = v85;
  v86(v186, v197, v85);
  v97 = (v89 + v180) & ~v180;
  v98 = (v187 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v99 = swift_allocObject();
  v187 = v99;
  sub_1E5E1FA80(v94, v99 + v91);
  v100 = (v99 + v190);
  v101 = v198;
  *v100 = v198;
  v100[1] = v93;
  v102 = v95;
  v103 = v96;
  v104 = v156;
  v156(v99 + v97, v102, v96);
  v105 = (v99 + v98);
  v106 = v185;
  v107 = *(v185 + 48);
  v105[2] = *(v185 + 32);
  v105[3] = v107;
  v105[4] = v106[4];
  v108 = v106[1];
  *v105 = *v106;
  v105[1] = v108;
  v109 = v167;
  sub_1E5E1DEAC(v192, v167);
  v110 = v168;
  v194(v168, v197, v103);
  v111 = swift_allocObject();
  sub_1E5E1FA80(v109, v111 + v193);
  v112 = (v111 + v190);
  *v112 = v101;
  v112[1] = v201;
  v104(v111 + v97, v110, v103);
  v113 = (v111 + v98);
  v114 = v106[3];
  v113[2] = v106[2];
  v113[3] = v114;
  v113[4] = v106[4];
  v115 = v106[1];
  *v113 = *v106;
  v113[1] = v115;
  v116 = swift_allocObject();
  v117 = v184;
  *(v116 + 16) = v181;
  *(v116 + 24) = v117;
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v118 = v117;

  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738F0, &qword_1E65F7280);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE8, &unk_1E65FA940);
  v190 = sub_1E5FED46C(&qword_1EE2D68D0, &qword_1ED077CE0, &unk_1E65F72C0);
  v185 = sub_1E5FED46C(&qword_1EE2D68F0, &qword_1ED0738F0, &qword_1E65F7280);
  v119 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076F88, &qword_1E65F90B8);
  v120 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077CF0, &unk_1E65F7110);
  v121 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0739A8, &qword_1E65F7120);
  v122 = sub_1E5FED46C(&qword_1EE2D6810, &qword_1ED0739A8, &qword_1E65F7120);
  v204 = v121;
  v205 = v122;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v124 = sub_1E5FED46C(&qword_1EE2D68A8, &unk_1ED077CF0, &unk_1E65F7110);
  v204 = v119;
  v205 = v120;
  v206 = OpaqueTypeConformance2;
  v207 = v124;
  swift_getOpaqueTypeConformance2();
  sub_1E6245140();
  sub_1E62438F0();
  v125 = v189;
  sub_1E65DFDD8();
  v126 = swift_allocObject();
  *(v126 + 16) = v181;
  *(v126 + 24) = v118;
  v127 = (v125 + *(v169 + 44));
  *v127 = sub_1E62BBC60;
  v127[1] = v126;
  v128 = type metadata accessor for DynamicBarButtonItem();
  v127[2] = 0;
  v127[3] = 0;
  v129 = objc_allocWithZone(v128);
  v130 = *v200;
  v131 = v170;
  sub_1E65DED28();
  v132 = swift_allocObject();
  v133 = v201;
  *(v132 + 16) = v198;
  *(v132 + 24) = v133;
  sub_1E638D9B4(&qword_1EE2D6820, MEMORY[0x1E699CD98]);

  v134 = v172;
  v135 = v171;
  sub_1E65E4DF8();
  sub_1E65E4CC8();
  sub_1E65E4F08();
  (*(v175 + 8))(v134, v176);
  (*(v173 + 8))(v131, v135);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F80, &qword_1E65FA950);
  v137 = *(v136 + 48);
  v138 = *(v136 + 52);
  swift_allocObject();
  *&v129[OBJC_IVAR____TtC10Blackbeard20DynamicBarButtonItem_changeObserver] = sub_1E65E4D18();
  v139 = v186;
  v140 = v196;
  v194(v186, v196, v199);
  v141 = v174;
  sub_1E5DFD1CC(v125, v174, &qword_1ED077228, &unk_1E65FA8E0);
  v142 = sub_1E625BA68(v139, v141);
  v143 = OBJC_IVAR____TtC10Blackbeard20DynamicBarButtonItem_changeObserver;
  v144 = *&v142[OBJC_IVAR____TtC10Blackbeard20DynamicBarButtonItem_changeObserver];
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v145 = v142;

  sub_1E65E4D08();

  v146 = *&v142[v143];
  v202 = swift_getKeyPath();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E638D9B4(&qword_1EE2D6840, MEMORY[0x1E699CD20]);
  sub_1E65E4D08();

  v147 = *&v142[v143];

  sub_1E65E4CF8();

  sub_1E624395C(v200);

  sub_1E5DFE50C(v189, &qword_1ED077228, &unk_1E65FA8E0);
  (*(v188 + 8))(v140, v199);
  return v145;
}

uint64_t sub_1E638F04C(uint64_t (*a1)(unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return a1(v1 + v3, v5, v6);
}

uint64_t sub_1E638F120(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_1E65D76F8() - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v1 + v4);
  v8 = *(v1 + v4 + 8);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1(v1 + v3, v7, v8, v1 + v6, v9);
}

uint64_t sub_1E638F248(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6243224(a1, v4, v5, v7, v6);
}

uint64_t sub_1E638F308(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6389DF8(a1, a2, v2 + v7);
}

void *sub_1E638F404()
{
  v1 = *(v0 + 24);
  result = (*(v0 + 16))(&v3, *(v0 + 32));
  if (v3 != 3)
  {
    BYTE1(v3) = v3;
    return sub_1E65E4EE8();
  }

  return result;
}

void *sub_1E638F460()
{
  v1 = *(v0 + 24);
  result = (*(v0 + 16))(&v3, *(v0 + 32));
  if (v3 != 5)
  {
    BYTE1(v3) = v3;
    return sub_1E65E4EE8();
  }

  return result;
}

uint64_t sub_1E638F570()
{
  v1 = v0;
  v2 = sub_1E65D76A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D8, &unk_1E6606270);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28[-v9];
  v11 = sub_1E65D92D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E638F89C(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(v12 + 32))(v15, v10, v11);
LABEL_7:
    sub_1E65D7698();
    v19 = sub_1E65D92A8();
    (*(v3 + 8))(v6, v2);
    (*(v12 + 8))(v15, v11);
    if (v19)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  if (EnumCaseMultiPayload == 1)
  {
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077038, &qword_1E65F9300) + 48);
    (*(v12 + 32))(v15, v10, v11);
    (*(v3 + 8))(&v10[v17], v2);
    goto LABEL_7;
  }

  v20 = *v10;
  v21 = *(v10 + 1);
  v22 = *(v10 + 2);
  v23 = *(v10 + 4);

  v24 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v25 = sub_1E65E5C48();

  v26 = [v24 initWithDomain:v25 code:v22 userInfo:0];

  v28[15] = 4;
  sub_1E5FFF464();
  v27 = v26;
  LOBYTE(v25) = sub_1E65D97C8();

  if (v25)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E638F89C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D8, &unk_1E6606270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E638F90C(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A10, &qword_1E65FEBC8);
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v51 - v5;
  v6 = sub_1E65E1E88();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1E65E1E68();
  v65 = *(v63 - 8);
  v9 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v59 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AppComposer();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8);
  v54 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v52 = &v51 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v51 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v51 - v23;
  v25 = sub_1E65E1EA8();
  v57 = *(v25 - 8);
  v58 = v25;
  v26 = *(v57 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v56 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v55 = &v51 - v29;
  sub_1E5E1DA9C(v2, v24, type metadata accessor for AppComposer);
  v30 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v53 = swift_allocObject();
  sub_1E5E1E1E8(v24, v53 + v30, type metadata accessor for AppComposer);
  v31 = v2;
  sub_1E5E1DA9C(v2, v22, type metadata accessor for AppComposer);
  v51 = swift_allocObject();
  sub_1E5E1E1E8(v22, v51 + v30, type metadata accessor for AppComposer);
  sub_1E5E1DA9C(v2, v19, type metadata accessor for AppComposer);
  v32 = swift_allocObject();
  sub_1E5E1E1E8(v19, v32 + v30, type metadata accessor for AppComposer);
  v33 = v2;
  v34 = v52;
  sub_1E5E1DA9C(v33, v52, type metadata accessor for AppComposer);
  v35 = swift_allocObject();
  sub_1E5E1E1E8(v34, v35 + v30, type metadata accessor for AppComposer);
  v36 = v54;
  sub_1E5E1DA9C(v31, v54, type metadata accessor for AppComposer);
  v37 = swift_allocObject();
  sub_1E5E1E1E8(v36, v37 + v30, type metadata accessor for AppComposer);
  v38 = (v37 + ((v30 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v39 = v61;
  *v38 = v60;
  v38[1] = v39;

  v40 = v55;
  sub_1E65E1E98();
  v41 = *v31;
  v42 = v57;
  v43 = v58;
  (*(v57 + 16))(v56, v40, v58);
  v44 = v59;
  sub_1E65E1E58();
  v45 = v62;
  sub_1E65E1E78();
  type metadata accessor for AppFeature();
  sub_1E6394528(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E6394528(&qword_1EE2D62E0, MEMORY[0x1E699F0A0]);
  v46 = v64;
  v47 = v63;
  sub_1E65E4DE8();
  v48 = v47;
  v49 = sub_1E65E4F08();
  (*(v68 + 8))(v46, v69);
  (*(v66 + 8))(v45, v67);
  (*(v65 + 8))(v44, v48);
  (*(v42 + 8))(v40, v43);
  return v49;
}

uint64_t sub_1E6390040()
{
  v1 = sub_1E65DDE68();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63900FC, 0, 0);
}

uint64_t sub_1E63900FC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  (*(v2 + 104))(v1, *MEMORY[0x1E69CAB20], v3);
  v4 = sub_1E65DDC68();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_1E63901E4()
{
  v1 = [objc_opt_self() standardUserDefaults];
  sub_1E65DDEF8();
  v2 = sub_1E65E5C48();

  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1E65E6708();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  *(v0 + 16) = v10;
  *(v0 + 32) = v11;
  v4 = *(v0 + 48);
  if (*(v0 + 40))
  {
    v5 = sub_1E65D76A8();
    v6 = swift_dynamicCast();
    (*(*(v5 - 8) + 56))(v4, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_1E5DFE50C(v0 + 16, &qword_1ED072B28, &unk_1E65F06A0);
    v7 = sub_1E65D76A8();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E6390394(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1E65DE3E8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6390454, 0, 0);
}

uint64_t sub_1E6390454()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v4 + *(type metadata accessor for AppComposer() + 20) + 8);
  v6 = sub_1E65DAE18();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CAD10], v3);
  v7 = sub_1E637C87C(v1, v6);

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8(v7 & 1);
}

uint64_t sub_1E6390548()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FE99E8;

  return sub_1E6390394(v0 + v3);
}

uint64_t sub_1E6390614(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D8, &unk_1E6606270) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6390718, 0, 0);
}

uint64_t sub_1E6390718()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = **(v0 + 16);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v2 + 8))(v1, v3);
  v6 = sub_1E638F570();
  sub_1E5DFE50C(v4, &qword_1ED0741D8, &unk_1E6606270);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1E6390814()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FE99E8;

  return sub_1E6390614(v0 + v3);
}

uint64_t sub_1E63908E0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65DA648();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_1E65D82F8();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63909FC, 0, 0);
}

uint64_t sub_1E63909FC()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 52);
  v4 = ConfigurationService.queryConfiguration.getter();
  v0[10] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1E6390B18;
  v8 = v0[9];

  return v10(v8);
}

uint64_t sub_1E6390B18()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1E6390D68;
  }

  else
  {
    v3 = sub_1E6390C2C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6390C2C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v9 = v0[4];
  v10 = v0[7];
  v6 = v0[2];

  sub_1E65D8278();
  sub_1E65DA638();
  sub_1E65DA5F8();
  sub_1E65DA608();
  sub_1E65DA618();
  sub_1E65DA628();
  sub_1E65E1E28();
  (*(v5 + 8))(v4, v9);
  (*(v3 + 8))(v2, v10);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E6390D68()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t sub_1E6390DE0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E63908E0(a1, v1 + v5);
}

uint64_t sub_1E6390EBC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A20, &qword_1E65FEC60);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6390F5C, 0, 0);
}

uint64_t sub_1E6390F5C()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 88);
  v4 = PlayerService.makeTrainerTipPlayerDismissedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E6391078;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E6391078()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1E5FE45F0;
  }

  else
  {
    v4 = sub_1E63911A8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E63911A8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A28, &qword_1E65FEC70);
  v3[4] = sub_1E5FED46C(&qword_1EE2D4480, &qword_1ED078A28, &qword_1E65FEC70);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E65E1E48();
  sub_1E5FED46C(&qword_1EE2D4758, &qword_1ED078A20, &qword_1E65FEC60);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E63912E8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6390EBC(a1, v1 + v5);
}

uint64_t sub_1E63913C4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65E5528();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6391490, 0, 0);
}

uint64_t sub_1E6391490()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  sub_1E65E5618();
  sub_1E65E5638();
  sub_1E65E5628();
  sub_1E65E5518();
  sub_1E6394528(&qword_1ED078A30, MEMORY[0x1E69CD868]);
  sub_1E65E6718();
  v7 = *(v4 + 8);
  v7(v1, v3);
  v7(v2, v3);
  sub_1E65E1E38();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E63915D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a2;
  v3[26] = a3;
  v3[24] = a1;
  v4 = sub_1E65DB848();
  v3[27] = v4;
  v5 = *(v4 - 8);
  v3[28] = v5;
  v6 = *(v5 + 64) + 15;
  v3[29] = swift_task_alloc();
  v7 = type metadata accessor for RouteSource(0);
  v3[30] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v9 = type metadata accessor for RouteDestination();
  v3[32] = v9;
  v10 = *(v9 - 8);
  v3[33] = v10;
  v11 = *(v10 + 64) + 15;
  v3[34] = swift_task_alloc();
  v12 = sub_1E65E1518();
  v3[35] = v12;
  v13 = *(v12 - 8);
  v3[36] = v13;
  v14 = *(v13 + 64) + 15;
  v3[37] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076010, &qword_1E65F4888) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076018, &qword_1E65F4890) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v17 = sub_1E65DB438();
  v3[40] = v17;
  v18 = *(v17 - 8);
  v3[41] = v18;
  v19 = *(v18 + 64) + 15;
  v3[42] = swift_task_alloc();
  v20 = sub_1E65DB8C8();
  v3[43] = v20;
  v21 = *(v20 - 8);
  v3[44] = v21;
  v22 = *(v21 + 64) + 15;
  v3[45] = swift_task_alloc();
  v23 = sub_1E65DB5C8();
  v3[46] = v23;
  v24 = *(v23 - 8);
  v3[47] = v24;
  v25 = *(v24 + 64) + 15;
  v3[48] = swift_task_alloc();
  v26 = sub_1E65DB3D8();
  v3[49] = v26;
  v27 = *(v26 - 8);
  v3[50] = v27;
  v28 = *(v27 + 64) + 15;
  v3[51] = swift_task_alloc();
  v29 = sub_1E65DA648();
  v3[52] = v29;
  v30 = *(v29 - 8);
  v3[53] = v30;
  v31 = *(v30 + 64) + 15;
  v3[54] = swift_task_alloc();
  v32 = sub_1E65D82F8();
  v3[55] = v32;
  v33 = *(v32 - 8);
  v3[56] = v33;
  v34 = *(v33 + 64) + 15;
  v3[57] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6391A14, 0, 0);
}

uint64_t sub_1E6391A14()
{
  v1 = *(v0 + 192);
  v2 = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 164) = v2;
  v3 = v1 + v2;
  v4 = type metadata accessor for AppEnvironment();
  *(v0 + 464) = v4;
  v5 = v3 + *(v4 + 52);
  v6 = ConfigurationService.queryConfiguration.getter();
  *(v0 + 472) = v7;
  v12 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v0 + 480) = v9;
  *v9 = v0;
  v9[1] = sub_1E6391B38;
  v10 = *(v0 + 456);

  return v12(v10);
}

uint64_t sub_1E6391B38()
{
  v2 = *(*v1 + 480);
  v5 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = sub_1E6393B48;
  }

  else
  {
    v3 = sub_1E6391C4C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6391C4C()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 164);
  v4 = *(v0 + 456);
  v5 = *(v0 + 432);
  v6 = *(v0 + 192);

  sub_1E65D8278();
  v7 = sub_1E65DA608();
  v9 = v8;
  *(v0 + 496) = v7;
  *(v0 + 504) = v8;
  *(v0 + 180) = *(v2 + 76);
  v10 = MarketingService.fetchMarketingItem.getter();
  *(v0 + 512) = v11;
  v15 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v0 + 520) = v13;
  *v13 = v0;
  v13[1] = sub_1E6391DB8;

  return v15(v7, v9, 0x5472656E69617274, 0xEF6F656469567069);
}

uint64_t sub_1E6391DB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 520);
  v6 = *v2;
  v4[66] = a1;
  v4[67] = v1;

  v7 = v3[64];
  if (v1)
  {
    v8 = v4[63];

    v9 = sub_1E6393DA0;
  }

  else
  {

    v9 = sub_1E6391F08;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E6391F08()
{
  v79 = v0;
  v1 = *(v0 + 528);
  v71 = *(v0 + 504);
  v74 = *(v0 + 496);
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);
  v4 = *(v0 + 392);
  v5 = *(v0 + 352);
  v6 = *(v0 + 360);
  v7 = *(v0 + 344);
  v65 = v4;
  v68 = *(v0 + 336);
  v9 = *(v0 + 304);
  v8 = *(v0 + 312);
  (*(*(v0 + 376) + 104))(*(v0 + 384), *MEMORY[0x1E69CD540], *(v0 + 368));
  (*(v5 + 104))(v6, *MEMORY[0x1E69CD680], v7);
  v10 = v1;
  sub_1E65DB3C8();
  v11 = sub_1E65DB4D8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  (*(v2 + 16))(v9, v3, v65);
  (*(v2 + 56))(v9, 0, 1, v65);
  sub_1E65DB408();

  if (MEMORY[0x1E6948C60](v74, v71) == 13)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 504);
    v75 = sub_1E65E3B68();
    __swift_project_value_buffer(v75, qword_1EE2EA2A0);

    v13 = sub_1E65E3B48();
    v14 = sub_1E65E6328();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 504);
    if (v15)
    {
      v17 = *(v0 + 496);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v78[0] = v19;
      *v18 = 136315138;
      v20 = sub_1E5DFD4B0(v17, v16, v78);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_1E5DE9000, v13, v14, "[TrainerTipUpsellMonitorComposer] Invalid placement identifier: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1E694F1C0](v19, -1, -1);
      MEMORY[0x1E694F1C0](v18, -1, -1);
    }

    else
    {
    }

    v34 = *(v0 + 528);
    v35 = *(v0 + 448);
    v69 = *(v0 + 440);
    v72 = *(v0 + 456);
    v36 = *(v0 + 424);
    v63 = *(v0 + 416);
    v66 = *(v0 + 432);
    v37 = *(v0 + 400);
    v61 = *(v0 + 392);
    v62 = *(v0 + 408);
    v39 = *(v0 + 328);
    v38 = *(v0 + 336);
    v40 = *(v0 + 320);
    v41 = sub_1E65E1E18();
    sub_1E6394528(&qword_1ED078A18, MEMORY[0x1E699F078]);
    v42 = swift_allocError();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E699F070], v41);
    swift_willThrow();

    (*(v39 + 8))(v38, v40);
    (*(v37 + 8))(v62, v61);
    (*(v36 + 8))(v66, v63);
    (*(v35 + 8))(v72, v69);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v75, qword_1EE2EA2A0);
    v44 = v42;
    v45 = sub_1E65E3B48();
    v46 = sub_1E65E6328();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v78[0] = v48;
      *v47 = 136315138;
      swift_getErrorValue();
      v49 = *(v0 + 96);
      v50 = MEMORY[0x1E694E6C0](*(v0 + 104), *(v0 + 112));
      v52 = sub_1E5DFD4B0(v50, v51, v78);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1E5DE9000, v45, v46, "[TrainerTipUpsellMonitorComposer] Failed presenting trainer tip upsell: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1E694F1C0](v48, -1, -1);
      MEMORY[0x1E694F1C0](v47, -1, -1);
    }

    v53 = *(v0 + 456);
    v54 = *(v0 + 432);
    v55 = *(v0 + 408);
    v56 = *(v0 + 384);
    v57 = *(v0 + 360);
    v58 = *(v0 + 336);
    v59 = *(v0 + 312);
    v64 = *(v0 + 304);
    v67 = *(v0 + 296);
    v70 = *(v0 + 272);
    v73 = *(v0 + 248);
    v77 = *(v0 + 232);
    swift_willThrow();

    v60 = *(v0 + 8);

    return v60();
  }

  else
  {
    v21 = *(v0 + 504);
    v22 = *(v0 + 464);
    v23 = *(v0 + 164);
    v24 = *(v0 + 296);
    v26 = *(v0 + 240);
    v25 = *(v0 + 248);
    v27 = *(v0 + 192);

    sub_1E65E14F8();
    swift_storeEnumTagMultiPayload();
    v28 = v27 + v23 + *(v22 + 24);
    v29 = AccountService.fetchCurrentAccount.getter();
    *(v0 + 544) = v30;
    v76 = (v29 + *v29);
    v31 = v29[1];
    v32 = swift_task_alloc();
    *(v0 + 552) = v32;
    *v32 = v0;
    v32[1] = sub_1E639262C;

    return v76();
  }
}

uint64_t sub_1E639262C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 552);
  v6 = *v2;
  *(*v2 + 560) = v1;

  if (v1)
  {
    v7 = sub_1E6392880;
  }

  else
  {
    v8 = *(v4 + 544);

    *(v4 + 568) = a1;
    v7 = sub_1E639275C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E639275C()
{
  v1 = *(v0 + 568);
  *(v0 + 576) = v1;
  v2 = *(v0 + 180);
  v3 = *(v0 + 192) + *(v0 + 164);
  v4 = v1;
  v5 = MarketingService.makeMarketingMetricConfiguration.getter();
  *(v0 + 584) = v6;
  v12 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v0 + 592) = v8;
  *v8 = v0;
  v8[1] = sub_1E6392AEC;
  v9 = *(v0 + 336);
  v10 = *(v0 + 232);

  return v12(v10, v9, 3);
}

uint64_t sub_1E6392880()
{
  v1 = *(v0 + 544);

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 560);
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 560);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to fetch current account with error: %{public}@", v9, 0xCu);
    sub_1E5DFE50C(v10, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  else
  {
  }

  *(v0 + 576) = 0;
  v13 = *(v0 + 192) + *(v0 + 164) + *(v0 + 180);
  v14 = MarketingService.makeMarketingMetricConfiguration.getter();
  *(v0 + 584) = v15;
  v21 = (v14 + *v14);
  v16 = v14[1];
  v17 = swift_task_alloc();
  *(v0 + 592) = v17;
  *v17 = v0;
  v17[1] = sub_1E6392AEC;
  v18 = *(v0 + 336);
  v19 = *(v0 + 232);

  return v21(v19, v18, 3);
}

uint64_t sub_1E6392AEC()
{
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 584);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6392C04, 0, 0);
}

uint64_t sub_1E6392C04()
{
  v68 = v0;
  v1 = v0[72];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[32];
  v58 = v0[37];
  v61 = v0[31];
  v6 = v0[28];
  v7 = v0[29];
  v8 = v0[27];
  v64 = v0[24];

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 64);
  *v3 = v1;
  (*(v6 + 32))(&v3[v10], v7, v8);
  (*(v2 + 16))(&v3[v11], v58, v4);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E5E1E1E8(v61, &v3[*(v5 + 20)], type metadata accessor for RouteSource);
  *&v3[*(v5 + 24)] = MEMORY[0x1E69E7CD0];
  v12 = *v64;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v13 = v0[16];
  v0[75] = v13;
  if (v13 == 6)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v65 = sub_1E65E3B68();
    __swift_project_value_buffer(v65, qword_1EE2EA2A0);
    v14 = sub_1E65E3B48();
    v15 = sub_1E65E6328();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1E5DE9000, v14, v15, "[TrainerTipUpsellMonitorComposer] Failed to get the currently selected root item", v16, 2u);
      MEMORY[0x1E694F1C0](v16, -1, -1);
    }

    v17 = v0[56];
    v59 = v0[55];
    v62 = v0[57];
    v56 = v0[54];
    v18 = v0[53];
    v19 = v0[50];
    v53 = v0[51];
    v54 = v0[52];
    v20 = v0[41];
    v51 = v0[42];
    v52 = v0[49];
    v49 = v0[66];
    v50 = v0[40];
    v21 = v0[36];
    v48 = v0[37];
    v23 = v0[34];
    v22 = v0[35];

    v24 = sub_1E65E1E18();
    sub_1E6394528(&qword_1ED078A18, MEMORY[0x1E699F078]);
    v25 = swift_allocError();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E699F060], v24);
    swift_willThrow();

    sub_1E60111F8(v23);
    (*(v21 + 8))(v48, v22);
    (*(v20 + 8))(v51, v50);
    (*(v19 + 8))(v53, v52);
    (*(v18 + 8))(v56, v54);
    (*(v17 + 8))(v62, v59);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v65, qword_1EE2EA2A0);
    v27 = v25;
    v28 = sub_1E65E3B48();
    v29 = sub_1E65E6328();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v67 = v31;
      *v30 = 136315138;
      swift_getErrorValue();
      v32 = v0[12];
      v33 = MEMORY[0x1E694E6C0](v0[13], v0[14]);
      v35 = sub_1E5DFD4B0(v33, v34, &v67);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1E5DE9000, v28, v29, "[TrainerTipUpsellMonitorComposer] Failed presenting trainer tip upsell: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1E694F1C0](v31, -1, -1);
      MEMORY[0x1E694F1C0](v30, -1, -1);
    }

    v36 = v0[57];
    v37 = v0[54];
    v38 = v0[51];
    v39 = v0[48];
    v40 = v0[45];
    v41 = v0[42];
    v42 = v0[39];
    v55 = v0[38];
    v57 = v0[37];
    v60 = v0[34];
    v63 = v0[31];
    v66 = v0[29];
    swift_willThrow();

    v43 = v0[1];

    return v43();
  }

  else
  {
    v45 = v0[15];
    v0[76] = v45;
    v0[17] = v45;
    v0[18] = v13;
    sub_1E65E6058();
    v0[77] = sub_1E65E6048();
    v47 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E63931E4, v47, v46);
  }
}

uint64_t sub_1E63931E4()
{
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[75];
  v5 = v0[25];
  v4 = v0[26];

  v5(v0 + 17);
  sub_1E5E07DA0(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1E639327C, 0, 0);
}