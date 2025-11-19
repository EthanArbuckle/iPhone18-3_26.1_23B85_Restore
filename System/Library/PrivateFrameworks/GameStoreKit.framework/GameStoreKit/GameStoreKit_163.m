uint64_t sub_24F7191FC()
{
  if (qword_27F2115E0 != -1)
  {
    swift_once();
  }

  sub_24E600AEC();

  return sub_24F926EB8();
}

uint64_t sub_24F7192B4()
{
  if (qword_27F2115E8 != -1)
  {
    swift_once();
  }

  sub_24E600AEC();

  return sub_24F926EB8();
}

uint64_t sub_24F719360()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217A98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E018);
  sub_24E602068(&qword_27F24E020, &qword_27F217A98);
  sub_24F719F40();
  swift_getOpaqueTypeConformance2();
  sub_24F71A058();
  return sub_24F927238();
}

uint64_t sub_24F719494@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (*a1)
    {
      if (qword_27F211600 == -1)
      {
        goto LABEL_11;
      }
    }

    else if (qword_27F2115F8 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (v3 == 2)
  {
    if (qword_27F211608 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (qword_27F211610 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_11:

  sub_24E600AEC();
  result = sub_24F925E18();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

uint64_t sub_24F719608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v44 = a4;
  v40 = a2;
  v41 = a3 >> 8;
  v39 = HIDWORD(a3);
  v6 = sub_24F9248C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DF38);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DF28);
  MEMORY[0x28223BE20](v42);
  v15 = &v39 - v14;
  v16 = sub_24F926DF8();
  sub_24F9248B8();
  v45 = v16;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  v17 = v6;
  v18 = v39;
  (*(v7 + 8))(v9, v17);

  sub_24F925898();
  v19 = sub_24F9258E8();

  KeyPath = swift_getKeyPath();
  v21 = *(v11 + 44);
  v22 = v40;
  v23 = &v13[v21];
  *v23 = KeyPath;
  v23[1] = v19;
  v43 = a1;
  v45 = a1;
  v46 = v22;
  v24 = v4 & 1;
  v47 = v4 & 1;
  v25 = v41;
  v48 = v41;
  v26 = HIWORD(v4) & 1;
  v49 = BYTE2(v4) & 1;
  v27 = HIBYTE(v4) & 1;
  v50 = v27;
  v51 = v18;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DF48);
  MEMORY[0x25304CAF0](&v52);
  LODWORD(v45) = v52;
  BYTE4(v45) = BYTE4(v52);
  if (sub_24E6B318C())
  {
    v29 = sub_24F926C88();
  }

  else
  {
    v29 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  v30 = v29;
  sub_24E6009C8(v13, v15, &qword_27F24DF38);
  *&v15[*(v42 + 36)] = v30;
  v45 = v43;
  v46 = v22;
  v47 = v24;
  v48 = v25;
  v49 = v26;
  v50 = v27;
  v51 = v18;
  MEMORY[0x25304CAF0](&v52, v28);
  LODWORD(v45) = v52;
  BYTE4(v45) = BYTE4(v52);
  if (sub_24E6B318C())
  {
    v31 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  else
  {
    v31 = sub_24F926C98();
  }

  v32 = v31;
  v33 = swift_getKeyPath();
  v45 = v32;
  v34 = sub_24F9238D8();
  v35 = v15;
  v36 = v44;
  sub_24E6009C8(v35, v44, &qword_27F24DF28);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DF08);
  v38 = (v36 + *(result + 36));
  *v38 = v33;
  v38[1] = v34;
  return result;
}

unint64_t sub_24F7199F8()
{
  result = qword_27F24DF18;
  if (!qword_27F24DF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24DF08);
    sub_24F719AB0();
    sub_24E602068(&unk_27F236270, &qword_27F219DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DF18);
  }

  return result;
}

unint64_t sub_24F719AB0()
{
  result = qword_27F24DF20;
  if (!qword_27F24DF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24DF28);
    sub_24F719B68();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DF20);
  }

  return result;
}

unint64_t sub_24F719B68()
{
  result = qword_27F24DF30;
  if (!qword_27F24DF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24DF38);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DF30);
  }

  return result;
}

unint64_t sub_24F719C58()
{
  result = qword_27F24DF68;
  if (!qword_27F24DF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24DF00);
    sub_24F719CE4();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DF68);
  }

  return result;
}

unint64_t sub_24F719CE4()
{
  result = qword_27F24DF70;
  if (!qword_27F24DF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24DF60);
    sub_24E602068(&qword_27F24DF78, &qword_27F24DF58);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DF70);
  }

  return result;
}

unint64_t sub_24F719DC4()
{
  result = qword_27F24DFB0;
  if (!qword_27F24DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DFB0);
  }

  return result;
}

unint64_t sub_24F719E18()
{
  result = qword_27F24DFB8;
  if (!qword_27F24DFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24DFA8);
    sub_24F719DC4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DFB8);
  }

  return result;
}

uint64_t sub_24F719EF4(uint64_t (*a1)(void, void, unint64_t))
{
  v2 = 0x10000;
  if (!*(v1 + 34))
  {
    v2 = 0;
  }

  v3 = *(v1 + 32) | (*(v1 + 33) << 8) | v2;
  v4 = 0x1000000;
  if (!*(v1 + 35))
  {
    v4 = 0;
  }

  return a1(*(v1 + 16), *(v1 + 24), v3 | v4 | (*(v1 + 36) << 32));
}

unint64_t sub_24F719F40()
{
  result = qword_27F24DFF8;
  if (!qword_27F24DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DFF8);
  }

  return result;
}

unint64_t sub_24F719F94()
{
  result = qword_27F24E000;
  if (!qword_27F24E000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24DFF0);
    sub_24F719F40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E000);
  }

  return result;
}

unint64_t sub_24F71A058()
{
  result = qword_27F24E028;
  if (!qword_27F24E028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E028);
  }

  return result;
}

unint64_t sub_24F71A0AC()
{
  result = qword_27F24E040[0];
  if (!qword_27F24E040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F24E040);
  }

  return result;
}

uint64_t sub_24F71A100()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24DF00);
  sub_24F719C58();
  return swift_getOpaqueTypeConformance2();
}

void sub_24F71A164()
{
  sub_24E6C5550();
  if (v0 <= 0x3F)
  {
    sub_24EB5FE28();
    if (v1 <= 0x3F)
    {
      sub_24E6CAF48();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24F71A22C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_24F71A2FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F71A408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231950);
  v4 = *(a1 + 16);
  sub_24F71A7B4(&qword_27F24E0C8);
  v5 = sub_24F923AE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  v19[3] = sub_24F71A61C();
  v12 = *v2;
  v13 = v2[1];
  v14 = sub_24F71A760();
  v15 = *(a1 + 24);
  sub_24EEBD1C0(v12, v13, MEMORY[0x277CE13A0], v4, v14, v15, v8);

  v19[1] = sub_24F71A7B4(&qword_27F231948);
  v19[2] = v15;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v8, v5, WitnessTable);
  v17 = *(v6 + 8);
  v17(v8, v5);
  sub_24E7896B8(v11, v5, WitnessTable);
  return (v17)(v11, v5);
}

uint64_t sub_24F71A61C()
{
  v1 = v0;
  v2 = sub_24F923E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F769788(v5);
  v6 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = *(v1 + 48);
    v8 = *(v1 + 56);
    v13 = *(v1 + 16);
    v14 = v7;
    v15 = v8;
    sub_24F71A804();
  }

  else
  {
    v9 = *(v1 + 24);
    v10 = *(v1 + 32);
    v13 = *(v1 + 40);
    v14 = v9;
    v15 = v10;
    sub_24E68FDD8();
  }

  return sub_24F927738();
}

unint64_t sub_24F71A760()
{
  result = qword_27F24E0D0;
  if (!qword_27F24E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E0D0);
  }

  return result;
}

uint64_t sub_24F71A7B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231950);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F71A804()
{
  result = qword_27F24E0D8;
  if (!qword_27F24E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E0D8);
  }

  return result;
}

uint64_t sub_24F71A858()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231950);
  sub_24F71A7B4(&qword_27F24E0C8);
  sub_24F923AE8();
  sub_24F71A7B4(&qword_27F231948);
  return swift_getWitnessTable();
}

uint64_t LeaderboardsCountDataIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = a3;
  v4 = *(a2 + 8);
  *(v3 + 96) = *a2;
  *(v3 + 104) = v4;
  *(v3 + 112) = *(a2 + 16);
  v5 = *(a2 + 40);
  *(v3 + 128) = *(a2 + 32);
  *(v3 + 136) = v5;
  return MEMORY[0x2822009F8](sub_24F71A954, 0, 0);
}

uint64_t sub_24F71A954()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = swift_task_alloc();
  v0[18] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[19] = v4;
  v5 = sub_24F71AF88();
  *v4 = v0;
  v4[1] = sub_24F71AA58;

  return MEMORY[0x2822008A0](v0 + 9, 0, 0, 0x6E7562286D6F7266, 0xEF293A4449656C64, sub_24E7980E0, v3, v5);
}

uint64_t sub_24F71AA58()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_24F71ADFC;
  }

  else
  {

    v2 = sub_24F71AB74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F71AB74()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v0[21] = v0[9];
  v0[2] = v4;
  v0[3] = v3;
  v0[4] = v1;
  v5 = v0[16];
  v6 = v0[17];
  v0[5] = v2;
  v0[6] = 0;
  v0[7] = v5;
  v0[8] = v6;

  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_24F71AC68;
  v8 = v0[11];

  return sub_24E64C3E0((v0 + 2), v8);
}

uint64_t sub_24F71AC68(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_24F71AF24;
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = sub_24F71AE60;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F71ADFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F71AE60()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[10];
  v4 = [v2 internal];
  v5 = [v4 numberOfLeaderboardSets];

  v6 = *(v1 + 16);

  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = 0;
  v7 = v0[1];

  return v7();
}

uint64_t sub_24F71AF24()
{
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_24F71AF88()
{
  result = qword_27F21C808;
  if (!qword_27F21C808)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F21C808);
  }

  return result;
}

uint64_t sub_24F71AFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return LeaderboardsCountDataIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t ChallengeScoreboardShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ChallengeScoreboardShelfIntent.challengeID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24F71B128()
{
  v1 = 0x444965676170;
  v2 = 0x4C74706D65747461;
  if (*v0 != 2)
  {
    v2 = 0x7069636974726170;
  }

  if (*v0)
  {
    v1 = 0x676E656C6C616863;
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

uint64_t sub_24F71B1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F71BA80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F71B1E0(uint64_t a1)
{
  v2 = sub_24F71B4D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F71B21C(uint64_t a1)
{
  v2 = sub_24F71B4D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengeScoreboardShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E0E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = *(v1 + 16);
  v12[2] = *(v1 + 24);
  v12[3] = v7;
  v8 = *(v1 + 32);
  v13 = *(v1 + 40);
  v12[0] = *(v1 + 48);
  v12[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F71B4D4();
  sub_24F92D128();
  v17 = 0;
  v9 = v12[4];
  sub_24F92CD08();
  if (!v9)
  {
    v10 = v12[0];
    v16 = 1;
    sub_24F92CD08();
    v15 = 2;
    sub_24F92CCE8();
    v12[5] = v10;
    v14 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B90);
    sub_24F71B83C(&qword_27F249128, &qword_27F249130);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F71B4D4()
{
  result = qword_27F24E0E8;
  if (!qword_27F24E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E0E8);
  }

  return result;
}

uint64_t ChallengeScoreboardShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E0F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F71B4D4();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v9 = sub_24F92CC28();
  v22 = v10;
  v27 = 1;
  v20 = sub_24F92CC28();
  v21 = v11;
  v26 = 2;
  v12 = sub_24F92CC08();
  v24 = v13;
  v19 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B90);
  v25 = 3;
  sub_24F71B83C(&qword_27F249140, &qword_27F249148);
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v16 = v22;
  v15 = v23;
  *a2 = v9;
  *(a2 + 8) = v16;
  v17 = v21;
  *(a2 + 16) = v20;
  *(a2 + 24) = v17;
  *(a2 + 32) = v19;
  *(a2 + 40) = v24 & 1;
  *(a2 + 48) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F71B83C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220B90);
    sub_24F71B8C4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F71B8C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChallengeDetail.Participant(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F71B97C()
{
  result = qword_27F24E0F8;
  if (!qword_27F24E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E0F8);
  }

  return result;
}

unint64_t sub_24F71B9D4()
{
  result = qword_27F24E100;
  if (!qword_27F24E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E100);
  }

  return result;
}

unint64_t sub_24F71BA2C()
{
  result = qword_27F24E108;
  if (!qword_27F24E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E108);
  }

  return result;
}

uint64_t sub_24F71BA80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E656C6C616863 && a2 == 0xEB00000000444965 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C74706D65747461 && a2 == 0xEC00000074696D69 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F71BBEC()
{
  type metadata accessor for GSKDebugMetricsViewModel();
  swift_allocObject();
  return sub_24F71E164();
}

uint64_t sub_24F71BC24@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E148);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v59 - v3;
  v5 = sub_24F924F58();
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x28223BE20](v5);
  v69 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E150);
  v73 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v70 = &v59 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E158);
  v76 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v74 = &v59 - v8;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E160);
  v9 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v75 = &v59 - v10;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E168);
  v11 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v13 = &v59 - v12;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E170);
  MEMORY[0x28223BE20](v78);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E178);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - v18;
  v20 = *(v1 + 8);
  sub_24F71C694(&v59 - v18);
  v77 = v15;
  if (v20)
  {
    (*(v17 + 16))(v15, v19, v16);
    swift_storeEnumTagMultiPayload();
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E180);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E188);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E190);
    v24 = sub_24F71E2D4();
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218C78);
    v26 = sub_24E602068(&qword_27F24E1B0, &qword_27F218C78);
    v84 = v25;
    v85 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v84 = v22;
    v85 = v23;
    v86 = v24;
    v87 = OpaqueTypeConformance2;
    v28 = swift_getOpaqueTypeConformance2();
    v84 = v21;
    v85 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v84 = v16;
    v85 = v29;
    v30 = swift_getOpaqueTypeConformance2();
    v84 = v79;
    v85 = v30;
    v31 = swift_getOpaqueTypeConformance2();
    v84 = v81;
    v85 = v31;
    v32 = swift_getOpaqueTypeConformance2();
    v84 = v82;
    v85 = v32;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return (*(v17 + 8))(v19, v16);
  }

  else
  {
    sub_24F9232A8();
    v63 = v84;
    v62 = v85;
    v64 = v86;
    v60 = v16;
    v61 = v87;
    v34 = v69;
    sub_24F924F48();
    v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E180);
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E188);
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E190);
    v37 = sub_24F71E2D4();
    v66 = v13;
    v38 = v37;
    v67 = v9;
    v65 = v4;
    v68 = v11;
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218C78);
    v40 = sub_24E602068(&qword_27F24E1B0, &qword_27F218C78);
    v84 = v39;
    v85 = v40;
    v41 = swift_getOpaqueTypeConformance2();
    v84 = v35;
    v85 = v36;
    v86 = v38;
    v87 = v41;
    v42 = swift_getOpaqueTypeConformance2();
    v84 = v59;
    v85 = v42;
    v58 = swift_getOpaqueTypeConformance2();
    v43 = v60;
    v44 = v70;
    sub_24F926138();

    (*(v71 + 8))(v34, v72);
    (*(v17 + 8))(v19, v43);
    v84 = v43;
    v85 = v58;
    v45 = swift_getOpaqueTypeConformance2();
    v46 = v74;
    v47 = v79;
    sub_24F926288();
    (*(v73 + 8))(v44, v47);
    v48 = v65;
    sub_24F925568();
    v49 = sub_24F925578();
    (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
    v84 = v47;
    v85 = v45;
    v50 = swift_getOpaqueTypeConformance2();
    v51 = v75;
    v52 = v81;
    sub_24F926828();
    sub_24E601704(v48, &qword_27F24E148);
    (*(v76 + 8))(v46, v52);
    v84 = v52;
    v85 = v50;
    v53 = swift_getOpaqueTypeConformance2();
    v54 = v66;
    v55 = v82;
    MEMORY[0x25304C040](1, v82, v53);
    (*(v67 + 8))(v51, v55);
    v56 = v68;
    v57 = v83;
    (*(v68 + 16))(v77, v54, v83);
    swift_storeEnumTagMultiPayload();
    v84 = v55;
    v85 = v53;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return (*(v56 + 8))(v54, v57);
  }
}

uint64_t sub_24F71C694@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E188);
  MEMORY[0x28223BE20](v23);
  v3 = &v22 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E180);
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  MEMORY[0x28223BE20](v4);
  v24 = &v22 - v6;
  type metadata accessor for GSKDebugMetricsViewModel();
  sub_24F71E974(&qword_27F24E1B8, type metadata accessor for GSKDebugMetricsViewModel);
  sub_24F923628();
  sub_24F923288();
  v7 = sub_24F71CAD8(v32, v33);

  v8 = swift_allocObject();
  v9 = v1[1];
  v8[1] = *v1;
  v8[2] = v9;
  v8[3] = v1[2];
  v32 = v7;
  v29 = &v32;
  v30 = sub_24F71E390;
  v31 = v8;

  sub_24E683970();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E1C0);
  sub_24F71E564();
  sub_24F925A98();

  v10 = swift_allocObject();
  v11 = v1[1];
  *(v10 + 1) = *v1;
  *(v10 + 2) = v11;
  *(v10 + 3) = v1[2];
  v12 = v23;
  v13 = &v3[*(v23 + 36)];
  *v13 = sub_24F71E614;
  v13[1] = v10;
  v13[2] = 0;
  v13[3] = 0;
  v28 = v1;

  sub_24E683970();

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E190);
  v15 = sub_24F71E2D4();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218C78);
  v17 = sub_24E602068(&qword_27F24E1B0, &qword_27F218C78);
  v32 = v16;
  v33 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v24;
  sub_24F926A58();
  sub_24E601704(v3, &qword_27F24E188);
  v32 = v12;
  v33 = v14;
  v34 = v15;
  v35 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v20 = v25;
  sub_24F926448();
  return (*(v26 + 8))(v19, v20);
}

uint64_t sub_24F71CAD8(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for GSKDebugMetricsEvent();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  if (!a2)
  {
    goto LABEL_16;
  }

  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
LABEL_16:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    return v37;
  }

  v13 = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  result = v37;
  v31 = *(v37 + 16);
  if (!v31)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_18:

    return v16;
  }

  v30 = a1;
  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v17 = v13;
  v28 = v13;
  v29 = v37;
  while (v15 < *(result + 16))
  {
    v18 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v19 = *(v33 + 72);
    sub_24F71E9BC(result + v18 + v19 * v15, v11, type metadata accessor for GSKDebugMetricsEvent);
    v37 = sub_24F92AE48();
    v38 = v20;
    v35 = v30;
    v36 = v17;
    v21 = v17;
    v22 = sub_24F91F7C8();
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    sub_24E600AEC();
    sub_24F92C5B8();
    v24 = v23;
    sub_24E601704(v6, &qword_27F21FAD8);

    if (v24)
    {
      sub_24F71EA24(v11, type metadata accessor for GSKDebugMetricsEvent);
      v17 = v21;
    }

    else
    {
      sub_24F40FA20(v11, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24F458F30(0, *(v16 + 16) + 1, 1);
        v16 = v39;
      }

      v27 = *(v16 + 16);
      v26 = *(v16 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_24F458F30(v26 > 1, v27 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v27 + 1;
      sub_24F40FA20(v32, v16 + v18 + v27 * v19);
      v17 = v28;
    }

    ++v15;
    result = v29;
    if (v31 == v15)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F71CED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E220);
  MEMORY[0x28223BE20](v4);
  v6 = &v10[-v5];
  v11 = a2;
  v12 = a1;
  sub_24F71E9BC(a1, &v10[-v5], type metadata accessor for GSKDebugMetricsEvent);
  v7 = sub_24F925808();
  v8 = &v6[*(v4 + 36)];
  *v8 = 1;
  v8[8] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E228);
  sub_24F71E7A0();
  sub_24F71E88C();
  return sub_24F923C08();
}

uint64_t sub_24F71CFF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsExpandedSummaryView();
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E250);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for GSKDebugMetricsCompactSummaryView();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
  {
    sub_24F71E9BC(a2, v12, type metadata accessor for GSKDebugMetricsEvent);
    sub_24F71E9BC(v12, v9, type metadata accessor for GSKDebugMetricsCompactSummaryView);
    swift_storeEnumTagMultiPayload();
    sub_24F71E974(&qword_27F24E238, type metadata accessor for GSKDebugMetricsCompactSummaryView);
    sub_24F71E974(&qword_27F220A30, type metadata accessor for GSKDebugMetricsExpandedSummaryView);
    sub_24F924E28();
    v13 = type metadata accessor for GSKDebugMetricsCompactSummaryView;
    v14 = v12;
  }

  else
  {
    sub_24F71E9BC(a2, v6, type metadata accessor for GSKDebugMetricsEvent);
    v15 = sub_24F927618();
    v16 = &v6[*(v4 + 20)];
    *v16 = v15;
    v16[1] = v17;
    sub_24F71E9BC(v6, v9, type metadata accessor for GSKDebugMetricsExpandedSummaryView);
    swift_storeEnumTagMultiPayload();
    sub_24F71E974(&qword_27F24E238, type metadata accessor for GSKDebugMetricsCompactSummaryView);
    sub_24F71E974(&qword_27F220A30, type metadata accessor for GSKDebugMetricsExpandedSummaryView);
    sub_24F924E28();
    v13 = type metadata accessor for GSKDebugMetricsExpandedSummaryView;
    v14 = v6;
  }

  return sub_24F71EA24(v14, v13);
}

uint64_t sub_24F71D330(void *a1)
{
  type metadata accessor for GSKDebugMetricsViewModel();
  sub_24F71E974(&qword_27F24E1B8, type metadata accessor for GSKDebugMetricsViewModel);
  *(sub_24F923628() + OBJC_IVAR____TtC12GameStoreKitP33_9C9779645A20418DC2ED597E8CE649E824GSKDebugMetricsViewModel_recorder) = *a1;
  swift_retain_n();

  sub_24F71DA4C();
}

uint64_t sub_24F71D40C(uint64_t a1)
{
  v2 = sub_24F925018();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C78);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24F924FF8();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C80);
  sub_24E602068(&qword_27F218C88, &qword_27F218C80);
  sub_24F923668();
  v7 = sub_24E602068(&qword_27F24E1B0, &qword_27F218C78);
  MEMORY[0x25304AA30](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F71D5F8(uint64_t a1)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v6 = *(a1 + 40);
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = *(a1 + 32);

  sub_24E60169C(&v7, v5, &qword_27F24E1E0);
  sub_24E60169C(&v6, v5, &qword_27F24E1E8);
  return sub_24F926F88();
}

uint64_t sub_24F71D6F8()
{
  type metadata accessor for GSKDebugMetricsViewModel();
  sub_24F71E974(&qword_27F24E1B8, type metadata accessor for GSKDebugMetricsViewModel);
  v0 = *(sub_24F923628() + OBJC_IVAR____TtC12GameStoreKitP33_9C9779645A20418DC2ED597E8CE649E824GSKDebugMetricsViewModel_recorder);
  if (v0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit28GSKDebugMetricsEventRecorder_stateLock);

    [v1 lock];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24F9230A8();
    [v1 unlock];
  }

  else
  {
  }
}

uint64_t sub_24F71D854@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F926DF8();
  *a1 = result;
  return result;
}

uint64_t makeDebugMetricsView()()
{
  sub_24E6EB850();

  return sub_24F924048();
}

uint64_t sub_24F71D924@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F211250 != -1)
  {
    swift_once();
  }

  v2 = qword_27F39E538;

  result = sub_24F923268();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = sub_24F71BBEC;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_24F71D9D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24F71DA4C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F468);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E1F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E1F8);
  v24 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  if (MEMORY[0x277D84F90] >> 62 && sub_24F92C738())
  {
    v12 = sub_24E804ACC(MEMORY[0x277D84F90]);
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  v13 = OBJC_IVAR____TtC12GameStoreKitP33_9C9779645A20418DC2ED597E8CE649E824GSKDebugMetricsViewModel_cancellables;
  swift_beginAccess();
  *(v1 + v13) = v12;

  v15 = *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_9C9779645A20418DC2ED597E8CE649E824GSKDebugMetricsViewModel_recorder);
  if (v15)
  {
    swift_beginAccess();
    v23 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242C08);
    sub_24F923068();
    swift_endAccess();
    sub_24E74EC40();
    v16 = sub_24F92BEF8();
    v22 = v9;
    v17 = v16;
    v25 = v16;
    v18 = sub_24F92BEB8();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    sub_24E602068(&qword_27F24E200, &qword_27F24E1F0);
    v21 = v1;
    v19 = v24;
    sub_24F71E974(&qword_27F21F498, sub_24E74EC40);
    sub_24F923118();
    sub_24E601704(v4, &qword_27F21F468);

    (*(v6 + 8))(v8, v5);
    swift_allocObject();
    swift_weakInit();
    sub_24E602068(&qword_27F24E208, &qword_27F24E1F8);
    v20 = v22;
    sub_24F923148();

    (*(v19 + 8))(v11, v20);
    swift_beginAccess();
    sub_24F922F58();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_24F71DEA4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_24EF1C7FC(v1);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_24F9230A8();
  }

  return result;
}

uint64_t sub_24F71DF40()
{
  v1 = OBJC_IVAR____TtC12GameStoreKitP33_9C9779645A20418DC2ED597E8CE649E824GSKDebugMetricsViewModel__eventsSnapshot;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242C08);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GSKDebugMetricsViewModel()
{
  result = qword_27F24E128;
  if (!qword_27F24E128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F71E05C()
{
  sub_24F40F884();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F71E164()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242C08);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  v5 = OBJC_IVAR____TtC12GameStoreKitP33_9C9779645A20418DC2ED597E8CE649E824GSKDebugMetricsViewModel__eventsSnapshot;
  v6 = MEMORY[0x277D84F90];
  v9[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242C00);
  sub_24F923058();
  (*(v2 + 32))(v0 + v5, v4, v1);
  if (v6 >> 62 && sub_24F92C738())
  {
    v7 = sub_24E804ACC(MEMORY[0x277D84F90]);
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC12GameStoreKitP33_9C9779645A20418DC2ED597E8CE649E824GSKDebugMetricsViewModel_cancellables) = v7;
  *(v0 + OBJC_IVAR____TtC12GameStoreKitP33_9C9779645A20418DC2ED597E8CE649E824GSKDebugMetricsViewModel_recorder) = 0;
  return v0;
}

unint64_t sub_24F71E2D4()
{
  result = qword_27F24E198;
  if (!qword_27F24E198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E188);
    sub_24E602068(&qword_27F24E1A0, &qword_27F24E1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E198);
  }

  return result;
}

uint64_t sub_24F71E3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242C00);
  sub_24F91F6B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E1D8);
  sub_24E602068(&qword_27F24E210, &qword_27F242C00);
  sub_24E602068(&qword_27F24E1D0, &qword_27F24E1D8);
  sub_24F71E974(&qword_27F24E218, type metadata accessor for GSKDebugMetricsEvent);
  return sub_24F927238();
}

unint64_t sub_24F71E564()
{
  result = qword_27F24E1C8;
  if (!qword_27F24E1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E1C0);
    sub_24E602068(&qword_27F24E1D0, &qword_27F24E1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E1C8);
  }

  return result;
}

uint64_t objectdestroyTm_84()
{

  sub_24E683950();

  return swift_deallocObject();
}

uint64_t sub_24F71E6D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F71E760()
{

  return swift_deallocObject();
}

unint64_t sub_24F71E7A0()
{
  result = qword_27F24E230;
  if (!qword_27F24E230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E228);
    sub_24F71E974(&qword_27F24E238, type metadata accessor for GSKDebugMetricsCompactSummaryView);
    sub_24F71E974(&qword_27F220A30, type metadata accessor for GSKDebugMetricsExpandedSummaryView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E230);
  }

  return result;
}

unint64_t sub_24F71E88C()
{
  result = qword_27F24E240;
  if (!qword_27F24E240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E220);
    sub_24F71E974(&qword_27F24E248, type metadata accessor for GSKDebugMetricsEventDetailView);
    sub_24E602068(&qword_27F218BC8, &qword_27F218BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E240);
  }

  return result;
}

uint64_t sub_24F71E974(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F71E9BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F71EA24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F71EA88()
{
  result = qword_27F24E258;
  if (!qword_27F24E258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F24E260);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E188);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E190);
    sub_24F71E2D4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218C78);
    sub_24E602068(&qword_27F24E1B0, &qword_27F218C78);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E158);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E150);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E178);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E258);
  }

  return result;
}

uint64_t sub_24F71ED20()
{
  v0 = sub_24F9289E8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v4 = sub_24F928AD8();
  MEMORY[0x28223BE20](v4 - 8);
  sub_24F928A98();
  v5 = sub_24F92A628();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6._countAndFlagsBits = 0xD000000000000031;
  v6._object = 0x800000024FA777B0;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  localizedString(_:comment:)(v6, v7);
  v8._countAndFlagsBits = 0xD000000000000033;
  v8._object = 0x800000024FA777F0;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  localizedString(_:comment:)(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB8);
  sub_24F92A618();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v10._object = 0x800000024FA580D0;
  v10._countAndFlagsBits = 0xD00000000000001FLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  localizedString(_:comment:)(v10, v11);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_24F92A608();
  sub_24F9289D8();
  return sub_24F92A5E8();
}

id AddFriendActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v5 = sub_24F928AE8();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v13 = sub_24F9220D8();
  __swift_project_value_buffer(v13, qword_27F39E808);
  v14 = sub_24F9220B8();
  v15 = sub_24F92BD98();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24E5DD000, v14, v15, "Performing AddFriendActionImplementation", v16, 2u);
    MEMORY[0x2530542D0](v16, -1, -1);
  }

  result = [objc_opt_self() shared];
  if (result)
  {
    v18 = result;
    v19 = [result isAddingFriendsRestricted];

    if (v19)
    {
      v20 = sub_24F9220B8();
      v21 = sub_24F92BD98();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_24E5DD000, v20, v21, "Sending friend requests is restricted via ScreenTime.", v22, 2u);
        MEMORY[0x2530542D0](v22, -1, -1);
      }

      v23 = sub_24F92B858();
      (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
      (*(v7 + 16))(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v34, a3);
      v24 = (*(v7 + 80) + 40) & ~*(v7 + 80);
      v25 = swift_allocObject();
      *(v25 + 2) = 0;
      *(v25 + 3) = 0;
      *(v25 + 4) = *(a3 + 16);
      (*(v7 + 32))(&v25[v24], &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
      *&v25[(v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8] = v35;

      sub_24F1D4600(0, 0, v12, &unk_24FA22540, v25);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
      (*(v32 + 104))(v31, *MEMORY[0x277D21CA8], v33);
      return sub_24F92A988();
    }

    else
    {
      v26 = *a1;
      v27 = *(a1 + 8);
      if (*(a1 + 48))
      {
        if (*(a1 + 48) == 1)
        {
          return sub_24F71FA74(v26, v27, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), a1, v35, a3);
        }

        else
        {
          v29 = v35;

          return sub_24F71FE00(v26, a1, v29, a3);
        }
      }

      else
      {
        v28 = v35;

        return sub_24F71F72C(v26, v27, a1, v28, a3);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24F71F49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  return MEMORY[0x2822009F8](sub_24F71F4C0, 0, 0);
}

uint64_t sub_24F71F4C0()
{
  v1 = v0[8];
  v2 = sub_24F92A638();
  v3 = MEMORY[0x277D223B8];
  v0[5] = v2;
  v0[6] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v1, v2);
  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = type metadata accessor for AddFriendActionImplementation();
  WitnessTable = swift_getWitnessTable();
  *v5 = v0;
  v5[1] = sub_24F71F5F0;
  v8 = v0[9];
  v9 = v0[7];

  return sub_24F1487B0(v9, (v0 + 2), v8, v6, WitnessTable);
}

uint64_t sub_24F71F5F0()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F726904, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24F71F72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v32 = a2;
  v33 = a4;
  v31 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v9 - 8);
  v34 = &v31 - v10;
  v11 = type metadata accessor for AddFriendAction();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a5 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, v6, a5, v18);
  sub_24F7259FC(a3, v14, type metadata accessor for AddFriendAction);
  v20 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v12 + 80) + v21 + 8) & ~*(v12 + 80);
  v23 = swift_allocObject();
  v24 = v31;
  v25 = v32;
  *(v23 + 2) = *(a5 + 16);
  *(v23 + 3) = v24;
  *(v23 + 4) = v25;
  (*(v15 + 32))(&v23[v20], v19, a5);
  *&v23[v21] = v33;
  sub_24F725BE4(v14, &v23[v22], type metadata accessor for AddFriendAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v26 = sub_24F92A9E8();
  v27 = sub_24F92B858();
  v28 = v34;
  (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = &unk_24FA225C8;
  v29[5] = v23;
  v29[6] = v26;

  sub_24E6959D8(0, 0, v28, &unk_24F94D7B0, v29);

  return v26;
}

uint64_t sub_24F71FA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a2;
  v45 = a8;
  v41 = a5;
  v42 = a6;
  v39 = a3;
  v40 = a4;
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v11 - 8);
  v46 = &v37 - v12;
  v13 = type metadata accessor for AddFriendAction();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v38 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a9 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v18);
  v20 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, v9, a9, v19);
  sub_24F7259FC(a7, &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AddFriendAction);
  v21 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v14 + 80) + v22 + 16) & ~*(v14 + 80);
  v24 = (v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v39;
  v27 = v40;
  *(v25 + 2) = *(a9 + 16);
  *(v25 + 3) = v26;
  *(v25 + 4) = v27;
  (*(v16 + 32))(&v25[v21], v20, a9);
  v28 = &v25[v22];
  v29 = v42;
  *v28 = v41;
  *(v28 + 1) = v29;
  sub_24F725BE4(v38, &v25[v23], type metadata accessor for AddFriendAction);
  v30 = v44;
  *&v25[v24] = v45;
  v31 = &v25[(v24 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v31 = v43;
  *(v31 + 1) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v32 = sub_24F92A9E8();
  v33 = sub_24F92B858();
  v34 = v46;
  (*(*(v33 - 8) + 56))(v46, 1, 1, v33);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = &unk_24FA22608;
  v35[5] = v25;
  v35[6] = v32;

  sub_24E6959D8(0, 0, v34, &unk_24FA22610, v35);

  return v32;
}

uint64_t sub_24F71FE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a1;
  v31 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v8 - 8);
  v32 = &v29 - v9;
  v10 = type metadata accessor for AddFriendAction();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v29 = a4;
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, v5, v16);
  sub_24F7259FC(a2, &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AddFriendAction);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v11 + 80) + v20 + 8) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = *(v29 + 16);
  (*(v13 + 32))(v22 + v18, v17);
  v23 = v30;
  *(v22 + v19) = v31;
  *(v22 + v20) = v23;
  sub_24F725BE4(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for AddFriendAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v24 = sub_24F92A9E8();
  v25 = sub_24F92B858();
  v26 = v32;
  (*(*(v25 - 8) + 56))(v32, 1, 1, v25);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = &unk_24FA22628;
  v27[5] = v22;
  v27[6] = v24;

  sub_24E6959D8(0, 0, v26, &unk_24FA22630, v27);

  return v24;
}

uint64_t sub_24F720168(uint64_t a1)
{
  v4 = v1[4];
  v5 = *(type metadata accessor for AddFriendActionImplementation() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E6541E4;

  return sub_24F71F49C(a1, v7, v8, v1 + v6, v9, v4);
}

uint64_t sub_24F72029C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[254] = a7;
  v7[253] = a6;
  v7[247] = a5;
  v7[241] = a4;
  v7[235] = a3;
  v7[229] = a2;
  v7[223] = a1;
  v8 = *(type metadata accessor for ReportFriendRequestDidSendAction() - 8);
  v7[255] = v8;
  v7[256] = *(v8 + 64);
  v7[257] = swift_task_alloc();
  v7[258] = swift_task_alloc();
  v9 = type metadata accessor for AddFriendActionImplementation();
  v7[259] = v9;
  v10 = *(v9 - 8);
  v7[260] = v10;
  v7[261] = *(v10 + 64);
  v7[262] = swift_task_alloc();
  v7[263] = swift_task_alloc();
  v11 = sub_24F928AE8();
  v7[264] = v11;
  v7[265] = *(v11 - 8);
  v7[266] = swift_task_alloc();
  v7[267] = swift_task_alloc();
  v7[268] = swift_task_alloc();
  v12 = type metadata accessor for RemoveFriendSuggestionAction();
  v7[269] = v12;
  v13 = *(v12 - 8);
  v7[270] = v13;
  v7[271] = *(v13 + 64);
  v7[272] = swift_task_alloc();
  v7[273] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F7204E0, 0, 0);
}

uint64_t sub_24F7204E0()
{
  v1 = [objc_opt_self() proxyForLocalPlayer];
  v2 = [v1 friendServicePrivate];
  v0[274] = v2;

  v3 = sub_24F92B098();
  v0[275] = v3;
  v0[162] = v0;
  v0[163] = sub_24F720664;
  v4 = swift_continuation_init();
  v0[182] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B618);
  v0[179] = v4;
  v0[175] = MEMORY[0x277D85DD0];
  v0[176] = 1107296256;
  v0[177] = sub_24F722498;
  v0[178] = &block_descriptor_172;
  [v2 sendFriendInvitationWithPlayerID:v3 contactAssociationID:0 completion:v0 + 175];

  return MEMORY[0x282200938](v0 + 162);
}

uint64_t sub_24F720664()
{
  v1 = *(*v0 + 1328);
  *(*v0 + 2208) = v1;
  if (v1)
  {
    v2 = sub_24F72124C;
  }

  else
  {
    v2 = sub_24F720774;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F720774()
{
  v1 = *(v0 + 2200);
  v2 = *(v0 + 2184);
  v25 = *(v0 + 2168);
  v22 = *(v0 + 2176);
  v23 = *(v0 + 2160);
  v3 = *(v0 + 2104);
  v26 = *(v0 + 2088);
  v4 = *(v0 + 2080);
  v5 = *(v0 + 2072);
  v21 = v5;
  v29 = *(v0 + 2064);
  v30 = *(v0 + 2096);
  v31 = *(v0 + 2056);
  v33 = *(v0 + 2048);
  v32 = *(v0 + 2040);
  v35 = *(v0 + 2032);
  v34 = *(v0 + 2024);
  v6 = *(v0 + 1928);
  v28 = *(v0 + 1976);
  v7 = *(v0 + 1880);
  v8 = *(v0 + 1832);
  swift_unknownObjectRelease();

  sub_24F928A98();
  *v2 = v8;
  *(v2 + 8) = v7;
  *(v2 + 16) = 1;
  v27 = *(v4 + 16);
  v27(v3, v6, v5);
  sub_24F7259FC(v2, v22, type metadata accessor for RemoveFriendSuggestionAction);
  v24 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = (v24 + v26 + *(v23 + 80)) & ~*(v23 + 80);
  v10 = swift_allocObject();
  *(v0 + 2216) = v10;
  *(v10 + 16) = v35;
  v11 = *(v4 + 32);
  v11(v10 + v24, v3, v21);
  sub_24F725BE4(v22, v10 + v9, type metadata accessor for RemoveFriendSuggestionAction);
  *(v10 + ((v25 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;

  swift_asyncLet_begin();
  sub_24F928A98();
  v27(v30, v6, v21);
  sub_24F7259FC(v29, v31, type metadata accessor for ReportFriendRequestDidSendAction);
  v12 = (v24 + v26 + *(v32 + 80)) & ~*(v32 + 80);
  v13 = swift_allocObject();
  *(v0 + 2224) = v13;
  *(v13 + 16) = v35;
  v11(v13 + v24, v30, v21);
  sub_24F725BE4(v31, v13 + v12, type metadata accessor for ReportFriendRequestDidSendAction);
  *(v13 + ((v33 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;

  swift_asyncLet_begin();
  sub_24E60169C(v34 + 56, v0 + 1704, qword_27F24EC90);
  if (*(v0 + 1728))
  {
    sub_24E612C80((v0 + 1704), v0 + 1624);
    v14 = swift_task_alloc();
    *(v0 + 2232) = v14;
    WitnessTable = swift_getWitnessTable();
    *v14 = v0;
    v14[1] = sub_24F720BE0;
    v16 = *(v0 + 2128);
    v17 = *(v0 + 2072);
    v18 = *(v0 + 1976);

    return sub_24F1487B0(v16, v0 + 1624, v18, v17, WitnessTable);
  }

  else
  {
    sub_24E601704(v0 + 1704, qword_27F21B590);
    v20 = *(v0 + 2144);

    return MEMORY[0x282200930](v0 + 16, v20, sub_24F720D7C, v0 + 1360);
  }
}

uint64_t sub_24F720BE0()
{
  v2 = *v1;
  *(*v1 + 2240) = v0;

  if (v0)
  {
    v3 = sub_24F7215C0;
  }

  else
  {
    (*(v2[265] + 8))(v2[266], v2[264]);
    v3 = sub_24F720D10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F720D10()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 1624);
  v1 = *(v0 + 2144);

  return MEMORY[0x282200930](v0 + 16, v1, sub_24F720D7C, v0 + 1360);
}

uint64_t sub_24F720D7C()
{
  *(v1 + 2248) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 656, *(v1 + 2136), sub_24F721A98, v1 + 1504);
  }

  else
  {
    return MEMORY[0x282200930](v1 + 656, *(v1 + 2136), sub_24F720DC4, v1 + 1664);
  }
}

uint64_t sub_24F720DC4()
{
  *(v1 + 2256) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 656, *(v1 + 2136), sub_24F721F04, v1 + 1744);
  }

  else
  {
    return MEMORY[0x282200920](v1 + 656, *(v1 + 2136), sub_24F720E0C, v1 + 1840);
  }
}

uint64_t sub_24F720E28()
{
  sub_24F725DCC(*(v0 + 2064), type metadata accessor for ReportFriendRequestDidSendAction);
  v1 = *(v0 + 2144);

  return MEMORY[0x282200920](v0 + 16, v1, sub_24F720EA8, v0 + 1888);
}

uint64_t sub_24F720EC4()
{
  sub_24F725DCC(v0[273], type metadata accessor for RemoveFriendSuggestionAction);
  (*(v0[265] + 104))(v0[223], *MEMORY[0x277D21CA8], v0[264]);
  sub_24E824448(&unk_24FA225E0);
  sub_24E824448(&unk_24FA225F0);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F721024()
{
  *(*v1 + 2312) = v0;

  if (v0)
  {
    v2 = sub_24F722370;
  }

  else
  {
    v2 = sub_24F721138;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F721138()
{
  v1 = *(v0 + 2288);
  v2 = *(v0 + 2272);

  __swift_destroy_boxed_opaque_existential_1(v0 + 1464);
  sub_24E824448(v2);
  sub_24E824448(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24F72124C()
{
  v1 = *(v0 + 2200);
  swift_willThrow();
  swift_unknownObjectRelease();

  v2 = *(v0 + 2208);
  *(v0 + 2272) = 0u;
  *(v0 + 2288) = 0u;
  *(v0 + 2264) = v2;
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E808);
  v4 = v2;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v5, v6, "AddFriendActionImplementation addByPlayerID Couldn't send friend invitation: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v11 = *(v0 + 2024);

  sub_24E60169C(v11 + 96, v0 + 1544, qword_27F24EC90);
  if (*(v0 + 1568))
  {
    sub_24E612C80((v0 + 1544), v0 + 1464);
    v12 = swift_task_alloc();
    *(v0 + 2304) = v12;
    WitnessTable = swift_getWitnessTable();
    *v12 = v0;
    v12[1] = sub_24F721024;
    v14 = *(v0 + 2072);
    v15 = *(v0 + 1976);
    v16 = *(v0 + 1784);

    return sub_24F1487B0(v16, v0 + 1464, v15, v14, WitnessTable);
  }

  else
  {

    sub_24E601704(v0 + 1544, qword_27F21B590);
    (*(*(v0 + 2120) + 104))(*(v0 + 1784), *MEMORY[0x277D21CA8], *(v0 + 2112));
    sub_24E824448(0);
    sub_24E824448(0);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_24F7215C0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 1624);
  v1 = *(v0 + 2136);

  return MEMORY[0x282200920](v0 + 656, v1, sub_24F72162C, v0 + 1936);
}

uint64_t sub_24F721648()
{
  sub_24F725DCC(*(v0 + 2064), type metadata accessor for ReportFriendRequestDidSendAction);
  v1 = *(v0 + 2144);

  return MEMORY[0x282200920](v0 + 16, v1, sub_24F7216C8, v0 + 1984);
}

uint64_t sub_24F7216E4()
{
  sub_24F725DCC(*(v0 + 2184), type metadata accessor for RemoveFriendSuggestionAction);
  v1 = *(v0 + 2240);
  v2 = *(v0 + 2216);
  *(v0 + 2296) = *(v0 + 2224);
  *(v0 + 2288) = &unk_24FA225F0;
  *(v0 + 2280) = v2;
  *(v0 + 2272) = &unk_24FA225E0;
  *(v0 + 2264) = v1;
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E808);
  v4 = v1;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v5, v6, "AddFriendActionImplementation addByPlayerID Couldn't send friend invitation: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v11 = *(v0 + 2024);

  sub_24E60169C(v11 + 96, v0 + 1544, qword_27F24EC90);
  if (*(v0 + 1568))
  {
    sub_24E612C80((v0 + 1544), v0 + 1464);
    v12 = swift_task_alloc();
    *(v0 + 2304) = v12;
    WitnessTable = swift_getWitnessTable();
    *v12 = v0;
    v12[1] = sub_24F721024;
    v14 = *(v0 + 2072);
    v15 = *(v0 + 1976);
    v16 = *(v0 + 1784);

    return sub_24F1487B0(v16, v0 + 1464, v15, v14, WitnessTable);
  }

  else
  {

    sub_24E601704(v0 + 1544, qword_27F21B590);
    (*(*(v0 + 2120) + 104))(*(v0 + 1784), *MEMORY[0x277D21CA8], *(v0 + 2112));
    sub_24E824448(&unk_24FA225E0);
    sub_24E824448(&unk_24FA225F0);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_24F721AB4()
{
  sub_24F725DCC(*(v0 + 2064), type metadata accessor for ReportFriendRequestDidSendAction);
  v1 = *(v0 + 2144);

  return MEMORY[0x282200920](v0 + 16, v1, sub_24F721B34, v0 + 1584);
}

uint64_t sub_24F721B50()
{
  sub_24F725DCC(*(v0 + 2184), type metadata accessor for RemoveFriendSuggestionAction);
  v1 = *(v0 + 2248);
  v2 = *(v0 + 2216);
  *(v0 + 2296) = *(v0 + 2224);
  *(v0 + 2288) = &unk_24FA225F0;
  *(v0 + 2280) = v2;
  *(v0 + 2272) = &unk_24FA225E0;
  *(v0 + 2264) = v1;
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E808);
  v4 = v1;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v5, v6, "AddFriendActionImplementation addByPlayerID Couldn't send friend invitation: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v11 = *(v0 + 2024);

  sub_24E60169C(v11 + 96, v0 + 1544, qword_27F24EC90);
  if (*(v0 + 1568))
  {
    sub_24E612C80((v0 + 1544), v0 + 1464);
    v12 = swift_task_alloc();
    *(v0 + 2304) = v12;
    WitnessTable = swift_getWitnessTable();
    *v12 = v0;
    v12[1] = sub_24F721024;
    v14 = *(v0 + 2072);
    v15 = *(v0 + 1976);
    v16 = *(v0 + 1784);

    return sub_24F1487B0(v16, v0 + 1464, v15, v14, WitnessTable);
  }

  else
  {

    sub_24E601704(v0 + 1544, qword_27F21B590);
    (*(*(v0 + 2120) + 104))(*(v0 + 1784), *MEMORY[0x277D21CA8], *(v0 + 2112));
    sub_24E824448(&unk_24FA225E0);
    sub_24E824448(&unk_24FA225F0);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_24F721F20()
{
  sub_24F725DCC(*(v0 + 2064), type metadata accessor for ReportFriendRequestDidSendAction);
  v1 = *(v0 + 2144);

  return MEMORY[0x282200920](v0 + 16, v1, sub_24F721FA0, v0 + 1792);
}

uint64_t sub_24F721FBC()
{
  sub_24F725DCC(*(v0 + 2184), type metadata accessor for RemoveFriendSuggestionAction);
  v1 = *(v0 + 2256);
  v2 = *(v0 + 2216);
  *(v0 + 2296) = *(v0 + 2224);
  *(v0 + 2288) = &unk_24FA225F0;
  *(v0 + 2280) = v2;
  *(v0 + 2272) = &unk_24FA225E0;
  *(v0 + 2264) = v1;
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E808);
  v4 = v1;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v5, v6, "AddFriendActionImplementation addByPlayerID Couldn't send friend invitation: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v11 = *(v0 + 2024);

  sub_24E60169C(v11 + 96, v0 + 1544, qword_27F24EC90);
  if (*(v0 + 1568))
  {
    sub_24E612C80((v0 + 1544), v0 + 1464);
    v12 = swift_task_alloc();
    *(v0 + 2304) = v12;
    WitnessTable = swift_getWitnessTable();
    *v12 = v0;
    v12[1] = sub_24F721024;
    v14 = *(v0 + 2072);
    v15 = *(v0 + 1976);
    v16 = *(v0 + 1784);

    return sub_24F1487B0(v16, v0 + 1464, v15, v14, WitnessTable);
  }

  else
  {

    sub_24E601704(v0 + 1544, qword_27F21B590);
    (*(*(v0 + 2120) + 104))(*(v0 + 1784), *MEMORY[0x277D21CA8], *(v0 + 2112));
    sub_24E824448(&unk_24FA225E0);
    sub_24E824448(&unk_24FA225F0);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_24F722370()
{
  v1 = *(v0 + 2288);
  v2 = *(v0 + 2272);

  __swift_destroy_boxed_opaque_existential_1(v0 + 1464);
  sub_24E824448(v2);
  sub_24E824448(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24F722498(uint64_t a1, void *a2)
{
  sub_24F928FD8();
  v4 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v5 = *v4;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
    v6 = swift_allocError();
    *v7 = a2;
    v8 = a2;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = *v4;

    return MEMORY[0x282200950](v9);
  }
}

uint64_t sub_24F722550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_24F722578, 0, 0);
}

uint64_t sub_24F722578()
{
  v1 = v0[9];
  v0[5] = type metadata accessor for RemoveFriendSuggestionAction();
  v0[6] = sub_24F7268B4(&qword_27F216348, type metadata accessor for RemoveFriendSuggestionAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24F7259FC(v1, boxed_opaque_existential_1, type metadata accessor for RemoveFriendSuggestionAction);
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = type metadata accessor for AddFriendActionImplementation();
  WitnessTable = swift_getWitnessTable();
  *v3 = v0;
  v3[1] = sub_24F7226C4;
  v6 = v0[10];
  v7 = v0[7];

  return sub_24F1487B0(v7, (v0 + 2), v6, v4, WitnessTable);
}

uint64_t sub_24F7226C4()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F726900, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24F722800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_24F722828, 0, 0);
}

uint64_t sub_24F722828()
{
  v1 = v0[9];
  v0[5] = type metadata accessor for ReportFriendRequestDidSendAction();
  v0[6] = sub_24F7268B4(&qword_27F216350, type metadata accessor for ReportFriendRequestDidSendAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24F7259FC(v1, boxed_opaque_existential_1, type metadata accessor for ReportFriendRequestDidSendAction);
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = type metadata accessor for AddFriendActionImplementation();
  WitnessTable = swift_getWitnessTable();
  *v3 = v0;
  v3[1] = sub_24F722974;
  v6 = v0[10];
  v7 = v0[7];

  return sub_24F1487B0(v7, (v0 + 2), v6, v4, WitnessTable);
}

uint64_t sub_24F722974()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F722AB0, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24F722AB0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F722B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 384) = v13;
  *(v8 + 368) = v12;
  *(v8 + 352) = a7;
  *(v8 + 360) = a8;
  *(v8 + 336) = a5;
  *(v8 + 344) = a6;
  *(v8 + 320) = a3;
  *(v8 + 328) = a4;
  *(v8 + 304) = a1;
  *(v8 + 312) = a2;
  *(v8 + 392) = type metadata accessor for ReportFriendRequestDidSendAction();
  *(v8 + 400) = swift_task_alloc();
  v9 = sub_24F928AE8();
  *(v8 + 408) = v9;
  *(v8 + 416) = *(v9 - 8);
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = type metadata accessor for RemoveFriendSuggestionAction();
  *(v8 + 448) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F722C60, 0, 0);
}

uint64_t sub_24F722C60()
{
  v1 = [objc_opt_self() proxyForLocalPlayer];
  v2 = [v1 friendServicePrivate];
  v0[57] = v2;

  v3 = sub_24F92B098();
  v0[58] = v3;
  v0[2] = v0;
  v0[3] = sub_24F722DDC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B618);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24F722498;
  v0[13] = &block_descriptor_48_0;
  v0[14] = v4;
  [v2 sendFriendInvitationWithPlayerID:0 contactAssociationID:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24F722DDC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 472) = v1;
  if (v1)
  {
    v2 = sub_24F7237A0;
  }

  else
  {
    v2 = sub_24F722EEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F722EEC()
{
  v1 = v0[58];
  v3 = v0[55];
  v2 = v0[56];
  v4 = v0[47];
  v5 = v0[46];
  swift_unknownObjectRelease();

  sub_24F928A98();
  *v2 = v5;
  *(v2 + 8) = v4;
  *(v2 + 16) = 0;
  v0[21] = v3;
  v0[22] = sub_24F7268B4(&qword_27F216348, type metadata accessor for RemoveFriendSuggestionAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 18);
  sub_24F7259FC(v2, boxed_opaque_existential_1, type metadata accessor for RemoveFriendSuggestionAction);
  v7 = swift_task_alloc();
  v0[60] = v7;
  v8 = type metadata accessor for AddFriendActionImplementation();
  v0[61] = v8;
  WitnessTable = swift_getWitnessTable();
  v0[62] = WitnessTable;
  *v7 = v0;
  v7[1] = sub_24F723070;
  v10 = v0[54];
  v11 = v0[45];

  return sub_24F1487B0(v10, (v0 + 18), v11, v8, WitnessTable);
}

uint64_t sub_24F723070()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_24F723C5C;
  }

  else
  {
    v4 = v2[54];
    v5 = v2[51];
    v6 = v2[52];
    v7 = *(v6 + 8);
    v2[64] = v7;
    v2[65] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);
    __swift_destroy_boxed_opaque_existential_1((v2 + 18));
    v3 = sub_24F7231B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F7231B4()
{
  v1 = v0[49];
  v2 = v0[50];
  sub_24F928A98();
  v0[26] = v1;
  v0[27] = sub_24F7268B4(&qword_27F216350, type metadata accessor for ReportFriendRequestDidSendAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 23);
  sub_24F7259FC(v2, boxed_opaque_existential_1, type metadata accessor for ReportFriendRequestDidSendAction);
  v4 = swift_task_alloc();
  v0[66] = v4;
  *v4 = v0;
  v4[1] = sub_24F7232C8;
  v5 = v0[61];
  v6 = v0[62];
  v7 = v0[53];
  v8 = v0[45];

  return sub_24F1487B0(v7, (v0 + 23), v8, v5, v6);
}

uint64_t sub_24F7232C8()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = sub_24F723D0C;
  }

  else
  {
    (*(v2 + 512))(*(v2 + 424), *(v2 + 408));
    __swift_destroy_boxed_opaque_existential_1(v2 + 184);
    v3 = sub_24F7233F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F7233F8()
{
  sub_24E60169C(*(v0 + 352) + 56, v0 + 264, qword_27F24EC90);
  if (*(v0 + 288))
  {
    sub_24E612C80((v0 + 264), v0 + 224);
    v1 = swift_task_alloc();
    *(v0 + 544) = v1;
    *v1 = v0;
    v1[1] = sub_24F7235B8;
    v2 = *(v0 + 488);
    v3 = *(v0 + 496);
    v4 = *(v0 + 360);
    v5 = *(v0 + 304);

    return sub_24F1487B0(v5, v0 + 224, v4, v2, v3);
  }

  else
  {
    v7 = *(v0 + 448);
    v8 = *(v0 + 408);
    v9 = *(v0 + 416);
    v10 = *(v0 + 304);
    sub_24F725DCC(*(v0 + 400), type metadata accessor for ReportFriendRequestDidSendAction);
    sub_24F725DCC(v7, type metadata accessor for RemoveFriendSuggestionAction);
    sub_24E601704(v0 + 264, qword_27F21B590);
    (*(v9 + 104))(v10, *MEMORY[0x277D21CA8], v8);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_24F7235B8()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_24F723DDC;
  }

  else
  {
    v2 = sub_24F7236CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7236CC()
{
  v1 = v0[56];
  v2 = v0[50];
  __swift_destroy_boxed_opaque_existential_1((v0 + 28));
  sub_24F725DCC(v2, type metadata accessor for ReportFriendRequestDidSendAction);
  sub_24F725DCC(v1, type metadata accessor for RemoveFriendSuggestionAction);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24F7237A0()
{
  v1 = v0[58];
  swift_willThrow();
  swift_unknownObjectRelease();

  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v2 = v0[59];
  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E808);
  v4 = v2;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[59];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v5, v6, "AddFriendActionImplementation addByContact Couldn't send friend invitation, falling back to 1.0: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  v13 = v0[44];
  v12 = v0[45];
  v15 = v0[42];
  v14 = v0[43];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24F93DE60;
  *(v16 + 32) = v15;
  *(v16 + 40) = v14;
  v17 = type metadata accessor for AddFriendActionImplementation();

  v0[70] = sub_24F71FE00(v16, v13, v12, v17);

  v18 = swift_task_alloc();
  v0[71] = v18;
  *v18 = v0;
  v18[1] = sub_24F723A0C;
  v19 = v0[38];

  return MEMORY[0x282180668](v19);
}

uint64_t sub_24F723A0C()
{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = sub_24F723BBC;
  }

  else
  {

    v2 = sub_24F723B28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F723B28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F723BBC()
{
  v1 = *(v0 + 472);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F723C5C()
{
  sub_24F725DCC(*(v0 + 448), type metadata accessor for RemoveFriendSuggestionAction);
  __swift_destroy_boxed_opaque_existential_1(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F723D0C()
{
  v1 = v0[56];
  sub_24F725DCC(v0[50], type metadata accessor for ReportFriendRequestDidSendAction);
  sub_24F725DCC(v1, type metadata accessor for RemoveFriendSuggestionAction);
  __swift_destroy_boxed_opaque_existential_1((v0 + 23));

  v2 = v0[1];

  return v2();
}

uint64_t sub_24F723DDC()
{
  v1 = v0[56];
  v2 = v0[50];
  __swift_destroy_boxed_opaque_existential_1((v0 + 28));
  sub_24F725DCC(v2, type metadata accessor for ReportFriendRequestDidSendAction);
  sub_24F725DCC(v1, type metadata accessor for RemoveFriendSuggestionAction);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24F723EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[57] = a5;
  v6[58] = a6;
  v6[55] = a3;
  v6[56] = a4;
  v6[53] = a1;
  v6[54] = a2;
  v7 = type metadata accessor for AddFriendActionImplementation();
  v6[59] = v7;
  v8 = *(v7 - 8);
  v6[60] = v8;
  v6[61] = *(v8 + 64);
  v6[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v6[63] = swift_task_alloc();
  v9 = sub_24F91F6B8();
  v6[64] = v9;
  v6[65] = *(v9 - 8);
  v6[66] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v6[67] = swift_task_alloc();
  v10 = sub_24F928AD8();
  v6[68] = v10;
  v6[69] = *(v10 - 8);
  v6[70] = swift_task_alloc();
  v6[71] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F7240B8, 0, 0);
}

uint64_t sub_24F7240B8()
{
  type metadata accessor for FriendRequestComposeViewController();
  *(v0 + 576) = swift_getObjCClassFromMetadata();
  sub_24F92B7F8();
  *(v0 + 584) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F72415C, v2, v1);
}

uint64_t sub_24F72415C()
{
  v1 = *(v0 + 576);

  *(v0 + 640) = [v1 canSendText];

  return MEMORY[0x2822009F8](sub_24F7241DC, 0, 0);
}

uint64_t sub_24F7241DC()
{
  if (*(v0 + 640) == 1)
  {
    if (qword_27F211190 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 568);
    v2 = *(v0 + 552);
    v59 = *(v0 + 544);
    v60 = *(v0 + 560);
    v3 = *(v0 + 536);
    v4 = *(v0 + 448);
    v5 = *(v0 + 456);
    sub_24E65864C(&unk_27F39E460, v0 + 16);
    sub_24F928A98();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    sub_24E60169C(v5 + 56, v0 + 56, qword_27F24EC90);
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0;
    *(v6 + 24) = 0u;

    sub_24E7D5870(v0 + 56, v6 + 24);
    sub_24E60169C(v5 + 96, v0 + 96, qword_27F24EC90);
    *(v6 + 80) = 0u;
    *(v6 + 96) = 0;
    *(v6 + 64) = 0u;
    sub_24E7D5870(v0 + 96, v6 + 64);
    v7 = sub_24F929D08();
    v9 = v8;
    sub_24E60169C(v0 + 16, v0 + 136, &qword_27F235830);
    v10 = sub_24F91F4A8();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    *(v0 + 400) = &type metadata for FlowDestination;
    *(v0 + 376) = v6 | 0x2000000000000000;
    v11 = *(v2 + 16);
    v11(v60, v1, v59);
    v61 = type metadata accessor for FlowAction();
    v12 = swift_allocObject();
    *(v0 + 592) = v12;
    *(v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
    v13 = v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0;
    v14 = (v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
    *v14 = 0;
    v14[1] = 0;
    *(v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 54;
    sub_24E60169C(v3, v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
    v15 = (v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
    *v15 = 0;
    v15[1] = 0;
    v16 = v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
    *v16 = xmmword_24F9406F0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 16) = 0;
    *(v16 + 40) = 0;
    *(v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
    *(v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
    *(v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
    v17 = (v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
    *v17 = v7;
    v17[1] = v9;
    sub_24E60169C(v0 + 136, v0 + 176, &qword_27F235830);
    v11(v12 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v60, v59);
    v18 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
    v19 = sub_24F929608();
    (*(*(v19 - 8) + 56))(v12 + v18, 1, 1, v19);
    v20 = (v12 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v20 = 0u;
    v20[1] = 0u;
    v21 = v12 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    sub_24E60169C(v0 + 176, v0 + 216, &qword_27F235830);
    if (*(v0 + 240))
    {
      v22 = *(v0 + 232);
      *v21 = *(v0 + 216);
      *(v21 + 16) = v22;
      *(v21 + 32) = *(v0 + 248);
    }

    else
    {
      v42 = *(v0 + 528);
      v43 = *(v0 + 520);
      v44 = *(v0 + 512);
      sub_24F91F6A8();
      v45 = sub_24F91F668();
      v47 = v46;
      (*(v43 + 8))(v42, v44);
      *(v0 + 408) = v45;
      *(v0 + 416) = v47;
      sub_24F92C7F8();
      sub_24E601704(v0 + 216, &qword_27F235830);
    }

    v48 = *(v0 + 568);
    v49 = *(v0 + 560);
    v50 = *(v0 + 552);
    v51 = *(v0 + 544);
    v52 = *(v0 + 536);
    sub_24E601704(v0 + 176, &qword_27F235830);
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;

    FlowAction.setPageData(_:)(v0 + 376);

    v53 = *(v50 + 8);
    v53(v48, v51);
    sub_24E601704(v0 + 16, &qword_27F235830);
    v53(v49, v51);
    sub_24E601704(v52, &qword_27F228530);
    sub_24E601704(v0 + 136, &qword_27F235830);
    sub_24E601704(v0 + 376, &qword_27F2129B0);
    *(v0 + 280) = v61;
    *(v0 + 288) = sub_24F7268B4(&qword_27F216400, type metadata accessor for FlowAction);
    *(v0 + 256) = v12;

    v54 = swift_task_alloc();
    *(v0 + 600) = v54;
    WitnessTable = swift_getWitnessTable();
    *(v0 + 608) = WitnessTable;
    *v54 = v0;
    v54[1] = sub_24F724A88;
    v56 = *(v0 + 472);
    v57 = *(v0 + 440);
    v58 = *(v0 + 424);

    return sub_24F1487B0(v58, v0 + 256, v57, v56, WitnessTable);
  }

  else
  {
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v23 = sub_24F9220D8();
    __swift_project_value_buffer(v23, qword_27F39E808);
    v24 = sub_24F9220B8();
    v25 = sub_24F92BD98();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_24E5DD000, v24, v25, "Sending messages is restricted.", v26, 2u);
      MEMORY[0x2530542D0](v26, -1, -1);
    }

    v28 = *(v0 + 496);
    v27 = *(v0 + 504);
    v29 = *(v0 + 480);
    v30 = *(v0 + 488);
    v31 = *(v0 + 464);
    v32 = *(v0 + 472);
    v34 = *(v0 + 432);
    v33 = *(v0 + 440);
    v62 = *(v0 + 424);

    v35 = sub_24F92B858();
    (*(*(v35 - 8) + 56))(v27, 1, 1, v35);
    (*(v29 + 16))(v28, v34, v32);
    v36 = (*(v29 + 80) + 40) & ~*(v29 + 80);
    v37 = swift_allocObject();
    *(v37 + 2) = 0;
    *(v37 + 3) = 0;
    *(v37 + 4) = v31;
    (*(v29 + 32))(&v37[v36], v28, v32);
    *&v37[(v30 + v36 + 7) & 0xFFFFFFFFFFFFFFF8] = v33;

    sub_24F1D4600(0, 0, v27, &unk_24FA22648, v37);

    v38 = *MEMORY[0x277D21CA8];
    v39 = sub_24F928AE8();
    (*(*(v39 - 8) + 104))(v62, v38, v39);

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_24F724A88()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v3 = sub_24F724E28;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 256);
    v3 = sub_24F724BA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F724BA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F724C58()
{
  *(*v1 + 632) = v0;

  if (v0)
  {
    v2 = sub_24F725008;
  }

  else
  {
    v2 = sub_24F724D6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F724D6C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 296);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F724E28()
{
  v1 = *(v0 + 456);

  __swift_destroy_boxed_opaque_existential_1(v0 + 256);
  sub_24E60169C(v1 + 96, v0 + 336, qword_27F24EC90);
  if (*(v0 + 360))
  {
    sub_24E612C80((v0 + 336), v0 + 296);
    v2 = swift_task_alloc();
    *(v0 + 624) = v2;
    *v2 = v0;
    v2[1] = sub_24F724C58;
    v3 = *(v0 + 608);
    v4 = *(v0 + 472);
    v5 = *(v0 + 440);
    v6 = *(v0 + 424);

    return sub_24F1487B0(v6, v0 + 296, v5, v4, v3);
  }

  else
  {
    v8 = *(v0 + 424);

    sub_24E601704(v0 + 336, qword_27F21B590);
    v9 = *MEMORY[0x277D21CA8];
    v10 = sub_24F928AE8();
    (*(*(v10 - 8) + 104))(v8, v9, v10);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_24F725008()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 296);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7250C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  return MEMORY[0x2822009F8](sub_24F7250EC, 0, 0);
}

uint64_t sub_24F7250EC()
{
  v1 = v0[8];
  v2 = sub_24F92A638();
  v3 = MEMORY[0x277D223B8];
  v0[5] = v2;
  v0[6] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v1, v2);
  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = type metadata accessor for AddFriendActionImplementation();
  WitnessTable = swift_getWitnessTable();
  *v5 = v0;
  v5[1] = sub_24F63E150;
  v8 = v0[9];
  v9 = v0[7];

  return sub_24F1487B0(v9, (v0 + 2), v8, v6, WitnessTable);
}

uint64_t sub_24F72527C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A638();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F7252FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A638();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F72536C()
{
  v1 = *(type metadata accessor for AddFriendActionImplementation() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for AddFriendAction();
  v5 = (v3 + *(*(v4 - 8) + 80) + 8) & ~*(*(v4 - 8) + 80);

  v6 = sub_24F92A638();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  v7 = v0 + v5;
  sub_24F4821EC(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24), *(v0 + v5 + 32), *(v0 + v5 + 40), *(v0 + v5 + 48));
  if (*(v0 + v5 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1(v7 + 56);
  }

  if (*(v7 + 120))
  {
    __swift_destroy_boxed_opaque_existential_1(v7 + 96);
  }

  v8 = *(v4 + 28);
  v9 = sub_24F928AD8();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_24F725540(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = *(type metadata accessor for AddFriendActionImplementation() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for AddFriendAction() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24E6541E4;

  return sub_24F72029C(a1, v11, v12, v1 + v7, v13, v1 + v10, v5);
}

uint64_t sub_24F7256E4()
{
  v1 = *(type metadata accessor for AddFriendActionImplementation() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (type metadata accessor for RemoveFriendSuggestionAction() - 8);
  v5 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = sub_24F92A638();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);
  sub_24E63FFA4();
  v7 = v4[7];
  v8 = sub_24F928AD8();
  (*(*(v8 - 8) + 8))(v0 + v5 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_24F72587C(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = *(type metadata accessor for AddFriendActionImplementation() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for RemoveFriendSuggestionAction() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24E6541E4;

  return sub_24F722550(a1, v1 + v7, v1 + v10, v11, v5);
}

uint64_t sub_24F7259FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F725A64()
{
  v1 = *(type metadata accessor for AddFriendActionImplementation() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(*(type metadata accessor for ReportFriendRequestDidSendAction() - 8) + 80);
  v5 = (v2 + v3 + v4) & ~v4;
  v6 = sub_24F92A638();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);
  v7 = sub_24F928AD8();
  (*(*(v7 - 8) + 8))(v0 + v5, v7);

  return swift_deallocObject();
}

uint64_t sub_24F725BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F725C4C(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = *(type metadata accessor for AddFriendActionImplementation() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for ReportFriendRequestDidSendAction() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24E614970;

  return sub_24F722800(a1, v1 + v7, v1 + v10, v11, v5);
}

uint64_t sub_24F725DCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F725E2C()
{
  v1 = *(type metadata accessor for AddFriendActionImplementation() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for AddFriendAction();
  v5 = (v3 + *(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80);

  v6 = sub_24F92A638();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  v7 = v0 + v5;
  sub_24F4821EC(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24), *(v0 + v5 + 32), *(v0 + v5 + 40), *(v0 + v5 + 48));
  if (*(v0 + v5 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1(v7 + 56);
  }

  if (*(v7 + 120))
  {
    __swift_destroy_boxed_opaque_existential_1(v7 + 96);
  }

  v8 = *(v4 + 28);
  v9 = sub_24F928AD8();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_24F72602C(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for AddFriendActionImplementation() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for AddFriendAction() - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = *(v1 + 32);
  v16 = *(v1 + 24);
  v9 = (v1 + v6);
  v10 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v9;
  v12 = v9[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24E6541E4;

  return sub_24F722B14(a1, v16, v15, v1 + v5, v11, v12, v1 + v8, v10);
}

uint64_t sub_24F726200()
{
  v1 = *(type metadata accessor for AddFriendActionImplementation() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for AddFriendAction();
  v5 = (v3 + *(*(v4 - 8) + 80) + 8) & ~*(*(v4 - 8) + 80);
  v6 = sub_24F92A638();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  v7 = v0 + v5;
  sub_24F4821EC(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24), *(v0 + v5 + 32), *(v0 + v5 + 40), *(v0 + v5 + 48));
  if (*(v0 + v5 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1(v7 + 56);
  }

  if (*(v7 + 120))
  {
    __swift_destroy_boxed_opaque_existential_1(v7 + 96);
  }

  v8 = *(v4 + 28);
  v9 = sub_24F928AD8();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_24F7263E4(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = *(type metadata accessor for AddFriendActionImplementation() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for AddFriendAction() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = *(v1 + v8);
  v13 = *(v1 + v9);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24E6541E4;

  return sub_24F723EB0(a1, v1 + v7, v12, v13, v1 + v11, v5);
}

uint64_t sub_24F726560(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E6541E4;

  return sub_24E694534(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm_85()
{
  v1 = *(type metadata accessor for AddFriendActionImplementation() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = sub_24F92A638();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_24F726728(uint64_t a1)
{
  v4 = v1[4];
  v5 = *(type metadata accessor for AddFriendActionImplementation() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E6541E4;

  return sub_24F7250C8(a1, v7, v8, v1 + v6, v9, v4);
}

uint64_t sub_24F72685C()
{

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  }

  return swift_deallocObject();
}

uint64_t sub_24F7268B4(unint64_t *a1, void (*a2)(uint64_t))
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

void __swiftcall ActivityFeedSection.init(title:items:metricsKey:)(GameStoreKit::ActivityFeedSection *__return_ptr retstr, Swift::String_optional title, Swift::OpaquePointer items, Swift::String_optional metricsKey)
{
  retstr->title = title;
  retstr->items = items;
  retstr->metricsKey = metricsKey;
}

uint64_t ActivityFeedSection.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActivityFeedSection.metricsKey.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

unint64_t ActivityFeedSection.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v12 = v1[3];
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 72) = v7;
  v8 = sub_24E605DB4();
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  *(inited + 80) = v8;
  *(inited + 88) = 0x736D657469;
  *(inited + 96) = 0xE500000000000000;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E2E8);
  v9 = sub_24F7271EC(&qword_27F24E2F0, &qword_27F24E2F8);
  *(inited + 104) = v4;
  *(inited + 136) = v9;
  *(inited + 144) = 0x4B7363697274656DLL;
  *(inited + 184) = v7;
  *(inited + 192) = v8;
  *(inited + 152) = 0xEA00000000007965;
  *(inited + 160) = v12;
  *(inited + 168) = v5;

  v10 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v10;
  return result;
}

uint64_t sub_24F726B70()
{
  v1 = 0x736D657469;
  if (*v0 != 1)
  {
    v1 = 0x4B7363697274656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_24F726BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F7273E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F726BF0(uint64_t a1)
{
  v2 = sub_24F727198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F726C2C(uint64_t a1)
{
  v2 = sub_24F727198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityFeedSection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E300);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = v1[2];
  v10[2] = v1[3];
  v11 = v7;
  v10[1] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F727198();
  sub_24F92D128();
  v16 = 0;
  v8 = v12;
  sub_24F92CCA8();
  if (!v8)
  {
    v13 = v11;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E2E8);
    sub_24F7271EC(&qword_27F24E310, &qword_27F24E318);
    sub_24F92CD48();
    v14 = 2;
    sub_24F92CCA8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ActivityFeedSection.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E320);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F727198();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_24F92CBC8();
  v11 = v10;
  v20 = a2;
  v21 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E2E8);
  v24 = 1;
  sub_24F7271EC(&qword_27F24E328, &qword_27F24E330);
  sub_24F92CC68();
  v12 = v22;
  v23 = 2;
  v13 = sub_24F92CBC8();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v20;
  *v20 = v21;
  v17[1] = v11;
  v17[2] = v12;
  v17[3] = v16;
  v17[4] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F727198()
{
  result = qword_27F24E308;
  if (!qword_27F24E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E308);
  }

  return result;
}

uint64_t sub_24F7271EC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E2E8);
    sub_24F727274(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F727274(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ActivityFeedItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F7272DC()
{
  result = qword_27F24E338;
  if (!qword_27F24E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E338);
  }

  return result;
}

unint64_t sub_24F727334()
{
  result = qword_27F24E340;
  if (!qword_27F24E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E340);
  }

  return result;
}

unint64_t sub_24F72738C()
{
  result = qword_27F24E348;
  if (!qword_27F24E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E348);
  }

  return result;
}

uint64_t sub_24F7273E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4B7363697274656DLL && a2 == 0xEA00000000007965)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F72750C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218CB0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24F7275E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218CB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s9ViewModelVMa()
{
  result = qword_27F24E350;
  if (!qword_27F24E350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7276E4()
{
  sub_24F7277FC(319, &qword_27F24E360, type metadata accessor for LockupViewModel);
  if (v0 <= 0x3F)
  {
    sub_24F7277FC(319, &qword_27F24E368, type metadata accessor for IconRowViewModel);
    if (v1 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v2 <= 0x3F)
      {
        sub_24F7277FC(319, &qword_27F230A10, type metadata accessor for Action);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F7277FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24F727864()
{
  result = qword_27F24E370;
  if (!qword_27F24E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E370);
  }

  return result;
}

uint64_t sub_24F7278B8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v34 = a2;
  v36 = a4;
  v6 = type metadata accessor for IconRowViewModel();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218CB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33[-v11];
  v13 = *(a1 + 72);
  type metadata accessor for LockupViewModel();
  swift_allocObject();

  v35 = sub_24F41AF18(v13, 2, 0, 0, 1, 5, a3);
  v14 = *(a1 + 80);
  v37 = 0x4044000000000000;
  sub_24E66ED98();

  sub_24F9237C8();
  v15 = v6[5];
  v37 = 0x4051800000000000;
  sub_24F9237C8();
  if (!v14)
  {
    goto LABEL_11;
  }

  if (v14 >> 62)
  {
    if (sub_24F92C738())
    {
      v9[v6[6]] = 1;
      *&v9[v6[7]] = v14;
      v16 = sub_24F92C738();
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

LABEL_11:

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    v19 = *(*(v18 - 8) + 8);
    v19(v9, v18);
    v19(&v9[v15], v18);
    (*(v7 + 56))(v12, 1, 1, v6);
    goto LABEL_12;
  }

  v9[v6[6]] = 1;
  *&v9[v6[7]] = v14;
  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  v17 = 4;
  if (v16 < 4)
  {
    v17 = v16;
  }

  *&v9[v6[8]] = v17;
  sub_24E6EC964(v9, v12);
  (*(v7 + 56))(v12, 0, 1, v6);
  sub_24F728184(v9);
LABEL_12:
  v20 = *(*(a1 + 32) + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_callToActionButtonAction);
  if (v20)
  {
    v21 = *(v20 + 16);
    v22 = *(v20 + 24);

    v23 = v20;
  }

  else
  {
    swift_beginAccess();
    v23 = *(a1 + 128);

    v22 = 0;
    v21 = 0;
  }

  v24 = *(a1 + 89);

  v25 = (*(v7 + 48))(v12, 1, v6);
  if (v22)
  {
    v26 = v23 != 0;
    v27 = v35;
    if (v24)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v27 = v35;
    if (v24)
    {
      goto LABEL_20;
    }

    v26 = 0;
  }

  if (v27)
  {
    v28 = 0;
    goto LABEL_27;
  }

  if (v25 != 1 && (v34 & 1) == 0)
  {
    v28 = 1;
    goto LABEL_27;
  }

LABEL_17:
  if (!v26)
  {
LABEL_20:
    v28 = 4;
    goto LABEL_27;
  }

  v28 = 3;
LABEL_27:
  v29 = v36;
  *v36 = v28;
  *(v29 + 1) = v27;
  v30 = _s9ViewModelVMa();
  result = sub_24E6EC890(v12, &v29[v30[6]]);
  v32 = &v29[v30[7]];
  *v32 = v21;
  *(v32 + 1) = v22;
  *&v29[v30[8]] = v23;
  return result;
}

uint64_t sub_24F727CE4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for IconRowViewModel();
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218CB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36[-v13];
  v15 = *(a1 + 40);
  if (v15)
  {
    v39 = a1;
    v40 = v14;
    v37 = a2;
    v16 = *(v15 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_lockup);
    type metadata accessor for LockupViewModel();
    swift_allocObject();

    v38 = sub_24F41AF18(v16, 2, 0, 0, 1, 5, a3);
    v17 = *(v15 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_collectionIcons);
    v41 = 0x4044000000000000;
    sub_24E66ED98();

    sub_24F9237C8();
    v18 = v8[5];
    v41 = 0x4051800000000000;
    sub_24F9237C8();
    if (v17)
    {
      if (v17 >> 62)
      {
        if (sub_24F92C738())
        {
          v11[v8[6]] = 1;
          *&v11[v8[7]] = v17;
          v19 = sub_24F92C738();
          goto LABEL_6;
        }
      }

      else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v11[v8[6]] = 1;
        *&v11[v8[7]] = v17;
        v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

        v20 = 4;
        if (v19 < 4)
        {
          v20 = v19;
        }

        *&v11[v8[8]] = v20;
        v21 = v40;
        sub_24E6EC964(v11, v40);
        (*(v9 + 56))(v21, 0, 1, v8);
        sub_24F728184(v11);
LABEL_14:
        v28 = *(v15 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_callToActionText);
        v29 = *(v15 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_callToActionText + 8);
        v24 = *(v15 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_clickAction);

        v30 = *(v39 + 98);

        v31 = (*(v9 + 48))(v21, 1, v8);
        if (v29)
        {
          v32 = v24 != 0;
          v33 = v38;
          if (v30)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v33 = v38;
          if (v30)
          {
            goto LABEL_19;
          }

          v32 = 0;
        }

        if (v33)
        {
          v34 = 0;
          goto LABEL_26;
        }

        if (v31 != 1 && (v37 & 1) == 0)
        {
          v34 = 1;
          goto LABEL_26;
        }

LABEL_16:
        if (v32)
        {
          v34 = 2;
LABEL_26:
          *a4 = v34;
          *(a4 + 8) = v33;
          v22 = _s9ViewModelVMa();
          result = sub_24E6EC890(v21, a4 + v22[6]);
          v35 = (a4 + v22[7]);
          *v35 = v28;
          v35[1] = v29;
          goto LABEL_27;
        }

LABEL_19:
        v34 = 4;
        goto LABEL_26;
      }
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    v27 = *(*(v26 - 8) + 8);
    v27(v11, v26);
    v27(&v11[v18], v26);
    v21 = v40;
    (*(v9 + 56))(v40, 1, 1, v8);
    goto LABEL_14;
  }

  v22 = _s9ViewModelVMa();
  result = (*(v9 + 56))(a4 + v22[6], 1, 1, v8);
  v24 = 0;
  *a4 = 4;
  *(a4 + 8) = 0;
  v25 = (a4 + v22[7]);
  *v25 = 0;
  v25[1] = 0;
LABEL_27:
  *(a4 + v22[8]) = v24;
  return result;
}

uint64_t sub_24F728184(uint64_t a1)
{
  v2 = type metadata accessor for IconRowViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F7281E0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_24F926E08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_24F921C08())
  {
    (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
    v10 = 0;
    v11 = sub_24F926E88();
    (*(v7 + 8))(v9, v6);
    sub_24F028328(v1, v5);
    v12 = sub_24F922348();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v5, 1, v12);
    if (v14 == 1)
    {
      sub_24F0F8BDC(v5);
    }

    else
    {
      sub_24F9222E8();
      v10 = v17;
      (*(v13 + 8))(v5, v12);
    }

    if (*(v1 + *(type metadata accessor for AspectRatioMediaArtworkStyle() + 20)))
    {
      v18 = 256;
    }

    else
    {
      v18 = 0;
    }

    *&v26 = v11;
    if (v14 == 1)
    {
      ++v18;
    }

    *(&v26 + 1) = v10;
    LOWORD(v27) = v18;
    BYTE2(v27) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B988);
    sub_24E6E97A8();
    sub_24E760378();
    sub_24F924E28();
    v19 = v28;
    v20 = v30;
    v21 = v29;
    v26 = v28;
    HIWORD(v27) = v30 != 0;
    LOWORD(v27) = v29;
    sub_24E760544(v28, *(&v28 + 1), v29, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B968);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B970);
    sub_24E7602EC();
    sub_24E760484();
    sub_24F924E28();

    sub_24E760584(v19, *(&v19 + 1), v21, v20);
  }

  else
  {
    v15 = sub_24F921BF8();
    if (!v15)
    {
      v26 = sub_24F9251B8();
      v27 = 0x1000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B968);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B970);
      sub_24E7602EC();
      sub_24E760484();
      result = sub_24F924E28();
      goto LABEL_14;
    }

    v16 = v15;
    *&v26 = swift_getKeyPath();
    *(&v26 + 1) = v16;
    LOWORD(v27) = 0;
    BYTE2(v27) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B988);
    sub_24E6E97A8();
    sub_24E760378();
    sub_24F924E28();
    v26 = v28;
    HIWORD(v27) = v30 != 0;
    LOWORD(v27) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B968);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B970);
    sub_24E7602EC();
    sub_24E760484();
    sub_24F924E28();
  }

LABEL_14:
  v23 = *(&v28 + 1);
  v24 = v29 | (v30 << 16);
  v25 = v31;
  *a1 = v28;
  *(a1 + 8) = v23;
  *(a1 + 16) = v24;
  *(a1 + 18) = BYTE2(v24);
  *(a1 + 19) = v25;
  return result;
}

uint64_t sub_24F728728@<X0>(uint64_t a1@<X3>, char a2@<W4>, uint64_t a3@<X8>)
{
  v13[1] = a3;
  v5 = type metadata accessor for AspectRatioMediaArtworkStyle();
  MEMORY[0x28223BE20](v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F9289E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F923998();
  sub_24F9289C8();
  sub_24F028328(a1, v7);
  v7[*(v5 + 20)] = a2 & 1;
  sub_24F72896C(&qword_27F214C28, MEMORY[0x277D21C48]);
  sub_24F72896C(&qword_27F2175C8, type metadata accessor for AspectRatioMediaArtworkStyle);
  sub_24F925ED8();
  sub_24F7289B4(v7);
  return (*(v9 + 8))(v11, v8);
}

uint64_t type metadata accessor for AspectRatioMediaArtworkStyle()
{
  result = qword_27F24E378;
  if (!qword_27F24E378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F72896C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F7289B4(uint64_t a1)
{
  v2 = type metadata accessor for AspectRatioMediaArtworkStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F728A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F728AFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_24F728BC0()
{
  sub_24F028EF0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24F728C6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7974706D65;
  }

  else
  {
    v3 = 0x676E6964616F6CLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7974706D65;
  }

  else
  {
    v5 = 0x676E6964616F6CLL;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F728D10()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F728D90()
{
  sub_24F92B218();
}

uint64_t sub_24F728DFC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F728E84(uint64_t *a1@<X8>)
{
  v2 = 0x676E6964616F6CLL;
  if (*v1)
  {
    v2 = 0x7974706D65;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24F728F70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7974706D65;
  }

  else
  {
    v3 = 0x6C62617972746572;
  }

  if (v2)
  {
    v4 = 0xEE00726F72724565;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7974706D65;
  }

  else
  {
    v5 = 0x6C62617972746572;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xEE00726F72724565;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F729020()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F7290AC()
{
  sub_24F92B218();
}

uint64_t sub_24F729124()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F7291B8(uint64_t *a1@<X8>)
{
  v2 = 0x6C62617972746572;
  if (*v1)
  {
    v2 = 0x7974706D65;
  }

  v3 = 0xEE00726F72724565;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_24F7292B0@<X0>(__int16 a1@<W1>, unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x53676E6964616F6CLL;
  v5 = 0x676E6964616F6CLL;
  if (a1)
  {
    v5 = 0x7974706D65;
  }

  v6 = 0xE700000000000000;
  if (a1)
  {
    v6 = 0xE500000000000000;
  }

  *(inited + 40) = 0xEC000000656C7974;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  *(inited + 64) = 0x797453726F727265;
  v7 = 0x6C62617972746572;
  if ((a1 & 0x100) != 0)
  {
    v7 = 0x7974706D65;
  }

  v8 = 0xEE00726F72724565;
  if ((a1 & 0x100) != 0)
  {
    v8 = 0xE500000000000000;
  }

  *(inited + 72) = 0xEA0000000000656CLL;
  *(inited + 80) = v7;
  *(inited + 88) = v8;
  v9 = sub_24E6086DC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
  result = sub_24E776F6C();
  a2[4] = result;
  *a2 = v9;
  return result;
}

uint64_t sub_24F729420(void *a1, __int16 a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E3A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7299D4();
  sub_24F92D128();
  v10[15] = a2 & 1;
  v10[14] = 0;
  sub_24F729AD0();
  sub_24F92CD48();
  if (!v2)
  {
    v10[13] = HIBYTE(a2) & 1;
    v10[12] = 1;
    sub_24F729B24();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F7295B4()
{
  if (*v0)
  {
    return 0x797453726F727265;
  }

  else
  {
    return 0x53676E6964616F6CLL;
  }
}

uint64_t sub_24F7295FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x53676E6964616F6CLL && a2 == 0xEC000000656C7974;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797453726F727265 && a2 == 0xEA0000000000656CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F7296E4(uint64_t a1)
{
  v2 = sub_24F7299D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F729720(uint64_t a1)
{
  v2 = sub_24F7299D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F72975C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F7297F4(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_24F729794(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_24F729420(a1, v2 | *v1);
}

unint64_t sub_24F7297C4@<X0>(unint64_t *a1@<X8>)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_24F7292B0(v2 | *v1, a1);
}

uint64_t sub_24F7297F4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E388);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7299D4();
  sub_24F92D108();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11[14] = 0;
  sub_24F729A28();
  sub_24F92CC68();
  v7 = v11[15];
  v11[12] = 1;
  sub_24F729A7C();
  sub_24F92CC68();
  (*(v4 + 8))(v6, v3);
  v9 = v11[13];
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v9)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 | v7;
}

unint64_t sub_24F7299D4()
{
  result = qword_27F24E390;
  if (!qword_27F24E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E390);
  }

  return result;
}

unint64_t sub_24F729A28()
{
  result = qword_27F24E398;
  if (!qword_27F24E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E398);
  }

  return result;
}

unint64_t sub_24F729A7C()
{
  result = qword_27F24E3A0;
  if (!qword_27F24E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E3A0);
  }

  return result;
}

unint64_t sub_24F729AD0()
{
  result = qword_27F24E3B0;
  if (!qword_27F24E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E3B0);
  }

  return result;
}

unint64_t sub_24F729B24()
{
  result = qword_27F24E3B8;
  if (!qword_27F24E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E3B8);
  }

  return result;
}

unint64_t sub_24F729BAC()
{
  result = qword_27F24E3C0;
  if (!qword_27F24E3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E3C0);
  }

  return result;
}

unint64_t sub_24F729C04()
{
  result = qword_27F24E3C8;
  if (!qword_27F24E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E3C8);
  }

  return result;
}

unint64_t sub_24F729C5C()
{
  result = qword_27F24E3D0;
  if (!qword_27F24E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E3D0);
  }

  return result;
}

unint64_t sub_24F729CB4()
{
  result = qword_27F24E3D8;
  if (!qword_27F24E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E3D8);
  }

  return result;
}

unint64_t sub_24F729D0C()
{
  result = qword_27F24E3E0;
  if (!qword_27F24E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E3E0);
  }

  return result;
}

unint64_t sub_24F729D60()
{
  result = qword_27F24E3E8;
  if (!qword_27F24E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E3E8);
  }

  return result;
}

unint64_t sub_24F729DB4()
{
  result = qword_27F24E3F0[0];
  if (!qword_27F24E3F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F24E3F0);
  }

  return result;
}

uint64_t sub_24F729E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v3[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC20);
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for AvatarData(0);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v3[10] = *(v5 + 64);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F729FB0, 0, 0);
}

uint64_t sub_24F729FB0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_24F72B55C(v0[4], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24E601704(v0[7], &qword_27F22CC20);
    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v4 = sub_24F9220D8();
    __swift_project_value_buffer(v4, qword_27F39E8F8);
    v5 = sub_24F9220B8();
    v6 = sub_24F92BD98();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24E5DD000, v5, v6, "There is no avatar to save.", v7, 2u);
      MEMORY[0x2530542D0](v7, -1, -1);
    }

    v8 = v0[3];

    v9 = *MEMORY[0x277D21CA8];
    v10 = sub_24F928AE8();
    (*(*(v10 - 8) + 104))(v8, v9, v10);

    v11 = v0[1];

    return v11();
  }

  else
  {
    sub_24F72B5CC(v0[7], v0[12], type metadata accessor for AvatarData);
    v13 = type metadata accessor for LocalPlayerProvider();
    v14 = swift_task_alloc();
    v0[13] = v14;
    *v14 = v0;
    v14[1] = sub_24F72A234;

    return MEMORY[0x28217F228](v0 + 2, v13, v13);
  }
}

uint64_t sub_24F72A234()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24F72A7D8;
  }

  else
  {
    v2 = sub_24F72A348;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F72A348()
{
  v1 = v0[12];
  v0[15] = v0[2];
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_24F72A3F4;

  return sub_24F557274(v2, v3);
}

uint64_t sub_24F72A3F4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24F72AA08;
  }

  else
  {
    v2 = sub_24F72A508;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F72A508()
{
  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E8F8);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Avatar has been saved.", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = v0[15];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v9 = v0[6];

  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_24F72B8EC(v6, v7, type metadata accessor for AvatarData);
  sub_24F92B7F8();

  v11 = sub_24F92B7E8();
  v12 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v11;
  v13[3] = v14;
  v13[4] = v5;
  sub_24F72B5CC(v7, v13 + v12, type metadata accessor for AvatarData);
  sub_24EA998B8(0, 0, v9, &unk_24FA22E10, v13);

  sub_24F72B9A4(v6, type metadata accessor for AvatarData);
  v15 = v0[3];
  v16 = *MEMORY[0x277D21CA8];
  v17 = sub_24F928AE8();
  (*(*(v17 - 8) + 104))(v15, v16, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_24F72A7D8()
{
  v1 = v0[14];
  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8F8);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed saving the avatar, reason: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  sub_24F72B9A4(v0[12], type metadata accessor for AvatarData);
  v10 = v0[3];
  v11 = *MEMORY[0x277D21CA8];
  v12 = sub_24F928AE8();
  (*(*(v12 - 8) + 104))(v10, v11, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24F72AA08()
{

  v1 = v0[17];
  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8F8);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed saving the avatar, reason: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  sub_24F72B9A4(v0[12], type metadata accessor for AvatarData);
  v10 = v0[3];
  v11 = *MEMORY[0x277D21CA8];
  v12 = sub_24F928AE8();
  (*(*(v12 - 8) + 104))(v10, v11, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24F72AC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_24F9289E8();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  type metadata accessor for PlayerAvatar(0);
  v5[8] = swift_task_alloc();
  sub_24F92B7F8();
  v5[9] = sub_24F92B7E8();
  v8 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F72AD60, v8, v7);
}

uint64_t sub_24F72AD60()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];
  v11 = v0[5];
  v12 = v0[7];
  v4 = v0[3];

  v5 = type metadata accessor for AvatarData(0);
  sub_24F72B8EC(v3 + *(v5 + 28), v1, type metadata accessor for PlayerAvatar);
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;
  v0[2] = v4;
  sub_24F72B95C(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD78();

  sub_24F72B9A4(v1, type metadata accessor for PlayerAvatar);
  (*(v2 + 16))(v12, v3 + *(v5 + 24), v11);
  LocalPlayerProvider.avatarMediaArtwork.setter(v12);
  v7 = *v3;
  v8 = *v3;
  sub_24F556BB0(v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24F72AF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for SaveAvatarAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24F72B8EC(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SaveAvatarAction);
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  sub_24F72B5CC(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for SaveAvatarAction);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24FA22E00;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24F72B1B0()
{
  v1 = type metadata accessor for SaveAvatarAction(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)));
  v3 = type metadata accessor for AvatarData(0);
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {

    v4 = *(v3 + 24);
    v5 = sub_24F9289E8();
    v14 = *(*(v5 - 8) + 8);
    v15 = v5;
    v14(v2 + v4);
    v6 = v2 + *(v3 + 28);

    v7 = type metadata accessor for PlayerAvatar(0);
    v8 = *(v7 + 20);
    v9 = type metadata accessor for PlayerAvatar.Overlay(0);
    if (!(*(*(v9 - 8) + 48))(&v6[v8], 1, v9) && !swift_getEnumCaseMultiPayload())
    {
      (v14)(&v6[v8], v15);
    }

    v10 = &v6[*(v7 + 24)];
    if (*(v10 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  v11 = *(v1 + 20);
  v12 = sub_24F928AD8();
  (*(*(v12 - 8) + 8))(v2 + v11, v12);

  return swift_deallocObject();
}

uint64_t sub_24F72B3F8(uint64_t a1)
{
  v4 = *(type metadata accessor for SaveAvatarAction(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F729E68(a1, v1 + v5, v6);
}

uint64_t sub_24F72B514()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F72B55C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F72B5CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F72B634()
{
  v1 = (type metadata accessor for AvatarData(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[8];
  v4 = sub_24F9289E8();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v6 = v0 + v2 + v1[9];

  v7 = type metadata accessor for PlayerAvatar(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for PlayerAvatar.Overlay(0);
  if (!(*(*(v9 - 8) + 48))(v6 + v8, 1, v9) && !swift_getEnumCaseMultiPayload())
  {
    v5(v6 + v8, v4);
  }

  v10 = v6 + *(v7 + 24);
  if (*(v10 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return swift_deallocObject();
}

uint64_t sub_24F72B7F4(uint64_t a1)
{
  v4 = *(type metadata accessor for AvatarData(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24F72AC40(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24F72B8EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F72B95C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F72B9A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F72BA18(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F91F648();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F72BAD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F91F648();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ChallengeCardTextSubtitle()
{
  result = qword_27F24E478;
  if (!qword_27F24E478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F72BBC8()
{
  sub_24F91F648();
  if (v0 <= 0x3F)
  {
    sub_24E7C6468();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_24F72BC78@<D0>(char *a1@<X1>, _OWORD *a2@<X8>)
{
  v78 = a2;
  v3 = sub_24F91F7C8();
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x28223BE20](v3);
  v73 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F91F7A8();
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x28223BE20](v5);
  v72 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_24F925D38();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_24F925D58();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F925D78();
  MEMORY[0x28223BE20](v9 - 8);
  v65 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F924A78();
  MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v63 - v13;
  v15 = sub_24F91F648();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v64 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v63 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0);
  sub_24F923808();
  v21 = *(type metadata accessor for ChallengeCardTextSubtitle() + 20);
  sub_24E7C79D8();
  v22 = sub_24F92AF78();
  v23 = *(v16 + 8);
  v23(v20, v15);
  if (v22)
  {
    v24 = *(a1 + 1);
    *&v84 = *a1;
    *(&v84 + 1) = v24;
    sub_24E600AEC();

    v79 = sub_24F925E18();
    v80 = v26;
    v81 = v25 & 1;
    v82 = v27;
    v83 = 1;
  }

  else
  {
    sub_24F924A68();
    sub_24F924A58();
    sub_24F924A48();
    sub_24F924A58();
    sub_24F924A68();
    sub_24F924A58();
    v28 = *(v16 + 16);
    v63[1] = v14;
    v28(v64, &a1[v21], v15);
    sub_24F91F638();
    sub_24F91F558();
    v23(v20, v15);
    (*(v70 + 104))(v68, *MEMORY[0x277CE0BB0], v71);
    v29 = v66;
    sub_24F925D48();
    sub_24F925D68();
    (*(v67 + 8))(v29, v69);
    v30 = sub_24F925DD8();
    v32 = v31;
    v34 = v33;
    sub_24F924A28();
    sub_24E600B40(v30, v32, v34 & 1);

    sub_24F924A58();
    sub_24F924A98();
    if (qword_27F211820 != -1)
    {
      swift_once();
    }

    v35 = qword_27F24F280;
    v36 = sub_24F925DE8();
    v38 = v37;
    v40 = v39;
    sub_24F924A28();
    sub_24E600B40(v36, v38, v40 & 1);

    sub_24F924A58();
    sub_24F924A98();
    v41 = v35;
    v42 = sub_24F925DE8();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = v73;
    sub_24F91F778();
    sub_24F91F708();
    (*(v76 + 8))(v49, v77);
    v50 = v72;
    sub_24F91F788();
    v51 = sub_24F91F798();
    (*(v74 + 8))(v50, v75);
    if (v51 == 2)
    {
      v52 = sub_24F925C78();
      v54 = v53;
      v56 = v55;
      v58 = v57;
    }

    else
    {
      sub_24E5FD138(v42, v44, v46 & 1);

      v52 = v42;
      v54 = v44;
      v56 = v46;
      v58 = v48;
    }

    sub_24E600B40(v42, v44, v46 & 1);

    v79 = v52;
    v80 = v54;
    v81 = v56 & 1;
    v82 = v58;
    v83 = 0;
  }

  sub_24F924E28();
  result = *&v84;
  v60 = v85;
  v61 = v86;
  v62 = v78;
  *v78 = v84;
  v62[1] = v60;
  *(v62 + 32) = v61;
  return result;
}

uint64_t sub_24F72C50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v19 = a2;
  v4 = a1 - 8;
  v18 = *(a1 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D620);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v20 = *(v3 + *(v4 + 32));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D628);
  sub_24E602068(&qword_27F21D630, &qword_27F21D628);
  sub_24F9253C8();
  sub_24F72C7FC(v3, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v14 = swift_allocObject();
  sub_24F72C95C(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  (*(v7 + 16))(v9, v12, v6);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24F72C9C0;
  *(v15 + 24) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233E0);
  sub_24E602068(&qword_27F21D640, &qword_27F21D620);
  sub_24E8C5A10();
  sub_24F923828();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_24F72C7FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeCardTextSubtitle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F72C860()
{
  v1 = (type metadata accessor for ChallengeCardTextSubtitle() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_24F91F648();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F72C95C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeCardTextSubtitle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24F72C9C0@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(type metadata accessor for ChallengeCardTextSubtitle() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F72BC78(v4, a1);
}

uint64_t sub_24F72CA40()
{

  return swift_deallocObject();
}

BOOL GameControllerObserver.controllerConnected.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  v1 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  return *(v3 + v1) != 0;
}

uint64_t GameControllerObserver.batteryState.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  v1 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryState;
  swift_beginAccess();
  return *(v3 + v1);
}

void *GameControllerObserver.controller.getter()
{
  swift_getKeyPath();
  v5 = v0;
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  v1 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

float sub_24F72CCE8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  v4 = v2 + *a2;
  swift_beginAccess();
  return *v4;
}

id sub_24F72CE18()
{
  result = [objc_allocWithZone(type metadata accessor for GameControllerObserver()) init];
  qword_27F24E488 = result;
  return result;
}

id static GameControllerObserver.shared.getter()
{
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v1 = qword_27F24E488;

  return v1;
}

id sub_24F72CEA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_24F72CF80(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  GameControllerObserver.controller.setter(v1);
}

void sub_24F72CFB0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  GameControllerObserver.controller.setter(v1);
}

uint64_t type metadata accessor for GameControllerObserver()
{
  result = qword_27F24E520;
  if (!qword_27F24E520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void GameControllerObserver.controller.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
    sub_24F91FD78();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_24E69A5C4(0, &qword_27F235C38);
  v6 = v5;
  v7 = a1;
  v8 = sub_24F92C408();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_24F72D1B8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

void (*GameControllerObserver.controller.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72D370;
}

void (*GameControllerObserver.aButton.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72D53C;
}

float sub_24F72D570@<S0>(uint64_t *a1@<X0>, void *a2@<X4>, _DWORD *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  v6 = (v5 + *a2);
  swift_beginAccess();
  result = *v6;
  *a3 = *v6;
  return result;
}

uint64_t sub_24F72D68C(void *a1, float a2)
{
  v4 = (v2 + *a1);
  result = swift_beginAccess();
  if (*v4 == a2)
  {
    *v4 = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
    sub_24F91FD78();
  }

  return result;
}

void (*GameControllerObserver.bButton.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72D8FC;
}

void (*GameControllerObserver.xButton.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72DAC8;
}

void (*GameControllerObserver.yButton.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72DC94;
}

uint64_t sub_24F72DCB4(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

void (*GameControllerObserver.aButtonPressed.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72DF14;
}

uint64_t sub_24F72DF48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t sub_24F72E060(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
    sub_24F91FD78();
  }

  return result;
}

void (*GameControllerObserver.bButtonPressed.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72E2C4;
}

void (*GameControllerObserver.xButtonPressed.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72E47C;
}

void (*GameControllerObserver.yButtonPressed.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72E648;
}

void (*GameControllerObserver.dpadXAxis.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72E800;
}

void (*GameControllerObserver.dpadYAxis.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72E9B8;
}

void (*GameControllerObserver.leftThumbstickXAxis.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72EB70;
}

void (*GameControllerObserver.leftThumbstickYAxis.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72ED28;
}

void (*GameControllerObserver.rightThumbstickXAxis.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72EEE0;
}

void (*GameControllerObserver.rightThumbstickYAxis.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72F098;
}

void (*GameControllerObserver.batteryLevel.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72F250;
}

uint64_t sub_24F72F25C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t GameControllerObserver.batteryState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryState;
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
    sub_24F91FD78();
  }

  return result;
}

void (*GameControllerObserver.batteryState.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72FA6C;
}

uint64_t sub_24F72FA78()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__aButton] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__bButton] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__xButton] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__yButton] = 0;
  v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__aButtonPressed] = 0;
  v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__bButtonPressed] = 0;
  v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__xButtonPressed] = 0;
  v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__yButtonPressed] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__dpadXAxis] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__dpadYAxis] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__leftThumbstickXAxis] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__leftThumbstickYAxis] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__rightThumbstickXAxis] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__rightThumbstickYAxis] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryLevel] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryState] = -1;
  sub_24F91FDB8();
  v13.receiver = v0;
  v13.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v13, sel_init);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 controllers];
  sub_24E69A5C4(0, &qword_27F235C38);
  v6 = sub_24F92B5A8();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v9 = 0;
    goto LABEL_9;
  }

  result = sub_24F92C738();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x253052270](0, v6);
    goto LABEL_6;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);
LABEL_6:
    v9 = v8;

LABEL_9:
    GameControllerObserver.controller.setter(v9);
    v10 = objc_opt_self();
    v11 = [v10 defaultCenter];
    [v11 addObserver:v4 selector:sel_handleControllerDidConnect_ name:*MEMORY[0x277CCAF48] object:0];

    v12 = [v10 defaultCenter];
    [v12 addObserver:v4 selector:sel_handleControllerDidDisconnect_ name:*MEMORY[0x277CCAF50] object:0];

    sub_24F72FD2C();
    return v4;
  }

  __break(1u);
  return result;
}

void sub_24F72FD2C()
{
  v1 = v0;
  swift_getKeyPath();
  aBlock = v0;
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  v2 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  v3 = *(aBlock + v2);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 extendedGamepad];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 dpad];
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F733098;
      v49 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F732068;
      v47 = &block_descriptor_173;
      v9 = _Block_copy(&aBlock);

      [v7 setValueChangedHandler_];
      _Block_release(v9);

      v10 = [v6 leftThumbstick];
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F7330B8;
      v49 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F732068;
      v47 = &block_descriptor_84;
      v12 = _Block_copy(&aBlock);

      [v10 setValueChangedHandler_];
      _Block_release(v12);

      v13 = [v6 rightThumbstick];
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F7330C0;
      v49 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F732068;
      v47 = &block_descriptor_88_2;
      v15 = _Block_copy(&aBlock);

      [v13 setValueChangedHandler_];
      _Block_release(v15);

      v16 = [v6 buttonA];
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F7330C8;
      v49 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F859E6C;
      v47 = &block_descriptor_92_0;
      v18 = _Block_copy(&aBlock);

      [v16 setValueChangedHandler_];
      _Block_release(v18);

      v19 = [v6 buttonB];
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F733108;
      v49 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F859E6C;
      v47 = &block_descriptor_96_0;
      v21 = _Block_copy(&aBlock);

      [v19 setValueChangedHandler_];
      _Block_release(v21);

      v22 = [v6 buttonX];
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F733148;
      v49 = v23;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F859E6C;
      v47 = &block_descriptor_100;
      v24 = _Block_copy(&aBlock);

      [v22 setValueChangedHandler_];
      _Block_release(v24);

      v25 = [v6 buttonY];
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F733188;
      v49 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F859E6C;
      v47 = &block_descriptor_104;
      v27 = _Block_copy(&aBlock);

      [v25 setValueChangedHandler_];
      _Block_release(v27);

      v28 = [v6 buttonA];
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F7331C8;
      v49 = v29;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F859E6C;
      v47 = &block_descriptor_108_0;
      v30 = _Block_copy(&aBlock);

      [v28 setPressedChangedHandler_];
      _Block_release(v30);

      v31 = [v6 buttonB];
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F733208;
      v49 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F859E6C;
      v47 = &block_descriptor_112;
      v33 = _Block_copy(&aBlock);

      [v31 setPressedChangedHandler_];
      _Block_release(v33);

      v34 = [v6 buttonX];
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F733248;
      v49 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F859E6C;
      v47 = &block_descriptor_116_0;
      v36 = _Block_copy(&aBlock);

      [v34 setPressedChangedHandler_];
      _Block_release(v36);

      v37 = [v6 buttonY];
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F733288;
      v49 = v38;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F859E6C;
      v47 = &block_descriptor_120;
      v39 = _Block_copy(&aBlock);

      [v37 setPressedChangedHandler_];
      _Block_release(v39);

      v40 = [v4 battery];
      if (v40)
      {
        v41 = v40;
        v42 = sub_24F92B098();
        [v41 addObserver:v1 forKeyPath:v42 options:7 context:0];

        v43 = sub_24F92B098();
        [v41 addObserver:v1 forKeyPath:v43 options:7 context:0];

        v4 = v6;
        v6 = v43;
      }

      v4 = v6;
    }
  }
}

id GameControllerObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (qword_27F2113F0 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E820);
  v3 = v0;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Destroying %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  sub_24F730858();
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

void sub_24F730858()
{
  v1 = v0;
  swift_getKeyPath();
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  v2 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 extendedGamepad];
    if (v5)
    {
      v6 = v5;
      v50 = v4;
      v7 = [v5 dpad];
      [v7 setValueChangedHandler_];

      v8 = [v6 leftThumbstick];
      [v8 setValueChangedHandler_];

      v9 = [v6 rightThumbstick];
      [v9 setValueChangedHandler_];

      v10 = [v6 buttonA];
      [v10 setValueChangedHandler_];

      v11 = [v6 buttonB];
      [v11 setValueChangedHandler_];

      v12 = [v6 buttonX];
      [v12 setValueChangedHandler_];

      v13 = [v6 buttonY];
      [v13 setValueChangedHandler_];

      v14 = [v6 buttonA];
      [v14 setPressedChangedHandler_];

      v15 = [v6 buttonB];
      [v15 setPressedChangedHandler_];

      v16 = [v6 buttonX];
      [v16 setPressedChangedHandler_];

      v17 = [v6 buttonY];
      [v17 setPressedChangedHandler_];

      v18 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__aButton);
      swift_beginAccess();
      if (*v18 == 0.0)
      {
        *v18 = 0.0;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_24F91FD78();
      }

      v20 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__bButton);
      swift_beginAccess();
      if (*v20 == 0.0)
      {
        *v20 = 0.0;
      }

      else
      {
        v21 = swift_getKeyPath();
        MEMORY[0x28223BE20](v21);
        sub_24F91FD78();
      }

      v22 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__xButton);
      swift_beginAccess();
      if (*v22 == 0.0)
      {
        *v22 = 0.0;
      }

      else
      {
        v23 = swift_getKeyPath();
        MEMORY[0x28223BE20](v23);
        sub_24F91FD78();
      }

      v24 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__yButton);
      swift_beginAccess();
      if (*v24 == 0.0)
      {
        *v24 = 0.0;
      }

      else
      {
        v25 = swift_getKeyPath();
        MEMORY[0x28223BE20](v25);
        sub_24F91FD78();
      }

      v26 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__aButtonPressed;
      swift_beginAccess();
      if (*(v1 + v26))
      {
        v27 = swift_getKeyPath();
        MEMORY[0x28223BE20](v27);
        sub_24F91FD78();
      }

      else
      {
        *(v1 + v26) = 0;
      }

      v28 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__bButtonPressed;
      swift_beginAccess();
      if (*(v1 + v28))
      {
        v29 = swift_getKeyPath();
        MEMORY[0x28223BE20](v29);
        sub_24F91FD78();
      }

      else
      {
        *(v1 + v28) = 0;
      }

      v30 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__xButtonPressed;
      swift_beginAccess();
      if (*(v1 + v30))
      {
        v31 = swift_getKeyPath();
        MEMORY[0x28223BE20](v31);
        sub_24F91FD78();
      }

      else
      {
        *(v1 + v30) = 0;
      }

      v32 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__yButtonPressed;
      swift_beginAccess();
      if (*(v1 + v32))
      {
        v33 = swift_getKeyPath();
        MEMORY[0x28223BE20](v33);
        sub_24F91FD78();
      }

      else
      {
        *(v1 + v32) = 0;
      }

      v34 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__dpadXAxis);
      swift_beginAccess();
      if (*v34 == 0.0)
      {
        *v34 = 0.0;
      }

      else
      {
        v35 = swift_getKeyPath();
        MEMORY[0x28223BE20](v35);
        sub_24F91FD78();
      }

      v36 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__dpadYAxis);
      swift_beginAccess();
      if (*v36 == 0.0)
      {
        *v36 = 0.0;
      }

      else
      {
        v37 = swift_getKeyPath();
        MEMORY[0x28223BE20](v37);
        sub_24F91FD78();
      }

      v38 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__leftThumbstickXAxis);
      swift_beginAccess();
      if (*v38 == 0.0)
      {
        *v38 = 0.0;
      }

      else
      {
        v39 = swift_getKeyPath();
        MEMORY[0x28223BE20](v39);
        sub_24F91FD78();
      }

      v40 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__leftThumbstickYAxis);
      swift_beginAccess();
      if (*v40 == 0.0)
      {
        *v40 = 0.0;
      }

      else
      {
        v41 = swift_getKeyPath();
        MEMORY[0x28223BE20](v41);
        sub_24F91FD78();
      }

      v42 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__rightThumbstickXAxis);
      swift_beginAccess();
      if (*v42 == 0.0)
      {
        *v42 = 0.0;
      }

      else
      {
        v43 = swift_getKeyPath();
        MEMORY[0x28223BE20](v43);
        sub_24F91FD78();
      }

      v44 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__rightThumbstickYAxis);
      swift_beginAccess();
      if (*v44 == 0.0)
      {
        *v44 = 0.0;
      }

      else
      {
        v45 = swift_getKeyPath();
        MEMORY[0x28223BE20](v45);
        sub_24F91FD78();
      }

      v46 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryLevel);
      swift_beginAccess();
      if (*v46 == 0.0)
      {
        *v46 = 0.0;
      }

      else
      {
        v47 = swift_getKeyPath();
        MEMORY[0x28223BE20](v47);
        sub_24F91FD78();
      }

      v48 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryState;
      swift_beginAccess();
      if (*(v1 + v48) == -1)
      {

        *(v1 + v48) = -1;
      }

      else
      {
        v49 = swift_getKeyPath();
        MEMORY[0x28223BE20](v49);
        sub_24F91FD78();
      }
    }

    else
    {
    }
  }
}

void sub_24F7316B4()
{
  sub_24F91EB38();
  if (v17[3])
  {
    sub_24E69A5C4(0, &qword_27F235C38);
    if (swift_dynamicCast())
    {
      if (qword_27F2113F0 != -1)
      {
        swift_once();
      }

      v1 = sub_24F9220D8();
      __swift_project_value_buffer(v1, qword_27F39E820);
      v2 = v0;
      v3 = v16;
      v4 = sub_24F9220B8();
      v5 = sub_24F92BD98();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v17[0] = v8;
        *v6 = 138412546;
        *(v6 + 4) = v2;
        *v7 = v2;
        *(v6 + 12) = 2080;
        v9 = v2;
        v10 = [v3 description];
        v11 = sub_24F92B0D8();
        v13 = v12;

        v14 = sub_24E7620D4(v11, v13, v17);

        *(v6 + 14) = v14;
        _os_log_impl(&dword_24E5DD000, v4, v5, "%@ New controller connected: %s", v6, 0x16u);
        sub_24E601704(v7, &qword_27F227B20);
        MEMORY[0x2530542D0](v7, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v8);
        MEMORY[0x2530542D0](v8, -1, -1);
        MEMORY[0x2530542D0](v6, -1, -1);
      }

      sub_24F730858();
      v15 = v3;
      GameControllerObserver.controller.setter(v3);
      sub_24F72FD2C();
    }
  }

  else
  {
    sub_24E601704(v17, &qword_27F2129B0);
  }
}

void sub_24F73193C()
{
  sub_24F91EB38();
  if (v22[3])
  {
    sub_24E69A5C4(0, &qword_27F235C38);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    if (qword_27F2113F0 != -1)
    {
      swift_once();
    }

    v1 = sub_24F9220D8();
    __swift_project_value_buffer(v1, qword_27F39E820);
    v2 = v0;
    v3 = v21;
    v4 = sub_24F9220B8();
    v5 = sub_24F92BD98();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22[0] = v8;
      *v6 = 138412546;
      *(v6 + 4) = v2;
      *v7 = v2;
      *(v6 + 12) = 2080;
      v9 = v2;
      v10 = [v3 description];
      v11 = sub_24F92B0D8();
      v13 = v12;

      v14 = sub_24E7620D4(v11, v13, v22);

      *(v6 + 14) = v14;
      _os_log_impl(&dword_24E5DD000, v4, v5, "%@ Controller disconnected: %s", v6, 0x16u);
      sub_24E601704(v7, &qword_27F227B20);
      MEMORY[0x2530542D0](v7, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x2530542D0](v8, -1, -1);
      MEMORY[0x2530542D0](v6, -1, -1);
    }

    swift_getKeyPath();
    v22[0] = v2;
    sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
    v15 = v3;
    sub_24F91FD88();

    v16 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
    swift_beginAccess();
    v17 = *&v2[v16];
    if (v17)
    {
      v18 = v17;
      v19 = sub_24F92C408();

      if (v19)
      {
        sub_24F730858();
        if (*&v2[v16])
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          sub_24F91FD78();

          return;
        }
      }
    }

    else
    {
    }
  }

  else
  {
    sub_24E601704(v22, &qword_27F2129B0);
  }
}

uint64_t sub_24F731D14(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_24F91EB58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_24F731E04(float a1, float a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (Strong + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__dpadXAxis);
    swift_beginAccess();
    if (*v6 == a1)
    {
      *v6 = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
      sub_24F91FD78();
    }

    v8 = &v5[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__dpadYAxis];
    swift_beginAccess();
    if (*v8 == a2)
    {
      *v8 = a2;
    }

    else
    {
      v9 = swift_getKeyPath();
      MEMORY[0x28223BE20](v9);
      sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
      sub_24F91FD78();
    }
  }
}

void sub_24F732068(uint64_t a1, void *a2, float a3, float a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v7(a3, a4);
}

void sub_24F7320E8(float a1, float a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (Strong + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__leftThumbstickXAxis);
    swift_beginAccess();
    if (*v6 == a1)
    {
      *v6 = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
      sub_24F91FD78();
    }

    v8 = &v5[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__leftThumbstickYAxis];
    swift_beginAccess();
    if (*v8 == a2)
    {
      *v8 = a2;
    }

    else
    {
      v9 = swift_getKeyPath();
      MEMORY[0x28223BE20](v9);
      sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
      sub_24F91FD78();
    }
  }
}

void sub_24F73234C(float a1, float a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (Strong + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__rightThumbstickXAxis);
    swift_beginAccess();
    if (*v6 == a1)
    {
      *v6 = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
      sub_24F91FD78();
    }

    v8 = &v5[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__rightThumbstickYAxis];
    swift_beginAccess();
    if (*v8 == a2)
    {
      *v8 = a2;
    }

    else
    {
      v9 = swift_getKeyPath();
      MEMORY[0x28223BE20](v9);
      sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
      sub_24F91FD78();
    }
  }
}

void sub_24F7325B0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = (Strong + *a5);
    swift_beginAccess();
    if (*v9 == a1)
    {
      *v9 = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
      sub_24F91FD78();
    }
  }
}

void sub_24F73270C(uint64_t a1, char a2, uint64_t a3, uint64_t *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *a4;
    swift_beginAccess();
    if (v7[v8] == (a2 & 1))
    {
      v7[v8] = a2 & 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
      sub_24F91FD78();
    }
  }
}

uint64_t GameControllerObserver.description.getter()
{
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000018, 0x800000024FA7C9A0);
  sub_24F92CA38();
  MEMORY[0x253050C20](0x6C6F72746E6F6320, 0xEC0000003D72656CLL);
  swift_getKeyPath();
  v8 = v0;
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  v1 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  v2 = *(v8 + v1);
  if (v2)
  {
    v3 = [v2 description];
    v4 = sub_24F92B0D8();
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x253050C20](v4, v6);

  MEMORY[0x253050C20](62, 0xE100000000000000);
  return 0;
}

void _s12GameStoreKit0A18ControllerObserverC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeyg6ChangeI0aypGSgSvSgtF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && (a1 == 0x4C79726574746162 && a2 == 0xEC0000006C657665 || (sub_24F92CE08() & 1) != 0 || a1 == 0x5379726574746162 && a2 == 0xEC00000065746174 || (sub_24F92CE08() & 1) != 0))
  {
    sub_24E94E17C(a3, v16);
    if (v17)
    {
      sub_24E69A5C4(0, &qword_27F24E530);
      if (swift_dynamicCast())
      {
        [v15 batteryLevel];
        v8 = v7;
        v9 = (v3 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryLevel);
        swift_beginAccess();
        LODWORD(v10) = *v9;
        if (*v9 == v8)
        {
          *v9 = v8;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
          sub_24F91FD78();
        }

        v12 = [v15 batteryState];
        v13 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryState;
        swift_beginAccess();
        if (*(v3 + v13) == v12)
        {

          *(v3 + v13) = v12;
        }

        else
        {
          v14 = swift_getKeyPath();
          MEMORY[0x28223BE20](v14);
          sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver);
          sub_24F91FD78();
        }
      }
    }

    else
    {
      sub_24E601704(v16, &qword_27F2129B0);
    }
  }
}

uint64_t sub_24F732F40()
{
  result = sub_24F91FDC8();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_24F733018(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F733060()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t block_copy_helper_173(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F7332C8(void *a1)
{
  v2 = *(v1 + 24);
  v3 = (*(v1 + 16) + *a1);
  result = swift_beginAccess();
  *v3 = v2;
  return result;
}

uint64_t sub_24F733324()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryState;
  result = swift_beginAccess();
  *(v2 + v3) = v1;
  return result;
}

uint64_t sub_24F73337C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t GameAchievementsListDataIntent.playerID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GameAchievementsListDataIntent.gameBundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24F733638(uint64_t a1)
{
  v2 = sub_24F733844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F733674(uint64_t a1)
{
  v2 = sub_24F733844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameAchievementsListDataIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E538);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F733844();
  sub_24F92D128();
  v12 = 0;
  v8 = v10[3];
  sub_24F92CD08();
  if (!v8)
  {
    v11 = 1;
    sub_24F92CD08();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F733844()
{
  result = qword_27F24E540;
  if (!qword_27F24E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E540);
  }

  return result;
}

uint64_t GameAchievementsListDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E548);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F733844();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_24F92CC28();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F733B0C()
{
  result = qword_27F24E550;
  if (!qword_27F24E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E550);
  }

  return result;
}

unint64_t sub_24F733B64()
{
  result = qword_27F24E558;
  if (!qword_27F24E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E558);
  }

  return result;
}

unint64_t sub_24F733BBC()
{
  result = qword_27F24E560;
  if (!qword_27F24E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E560);
  }

  return result;
}

unint64_t AchievementsCountData.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 40) = 0x800000024FA75860;
  v6 = MEMORY[0x277D83B88];
  *(inited + 72) = MEMORY[0x277D83B88];
  v7 = sub_24E65901C();
  *(inited + 48) = v3;
  *(inited + 80) = v7;
  *(inited + 88) = 0xD000000000000019;
  *(inited + 128) = v6;
  *(inited + 136) = v7;
  *(inited + 96) = 0x800000024FA75880;
  *(inited + 104) = v4;
  v8 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

unint64_t sub_24F733D3C()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_24F733D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD00000000000001DLL && 0x800000024FA75860 == a2;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA75880 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F733E5C(uint64_t a1)
{
  v2 = sub_24F73435C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F733E98(uint64_t a1)
{
  v2 = sub_24F73435C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AchievementsCountData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E568);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F73435C();
  sub_24F92D128();
  v11 = 0;
  sub_24F92CD38();
  if (!v2)
  {
    v10 = 1;
    sub_24F92CD38();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t AchievementsCountData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E578);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F73435C();
  sub_24F92D108();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_24F92CC58();
    v13 = 1;
    v10 = sub_24F92CC58();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F734230@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 40) = 0x800000024FA75860;
  v6 = MEMORY[0x277D83B88];
  *(inited + 72) = MEMORY[0x277D83B88];
  v7 = sub_24E65901C();
  *(inited + 48) = v3;
  *(inited + 80) = v7;
  *(inited + 88) = 0xD000000000000019;
  *(inited + 128) = v6;
  *(inited + 136) = v7;
  *(inited + 96) = 0x800000024FA75880;
  *(inited + 104) = v4;
  v8 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

unint64_t sub_24F73435C()
{
  result = qword_27F24E570;
  if (!qword_27F24E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E570);
  }

  return result;
}

unint64_t sub_24F7343D4()
{
  result = qword_27F24E580;
  if (!qword_27F24E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E580);
  }

  return result;
}

unint64_t sub_24F73442C()
{
  result = qword_27F24E588;
  if (!qword_27F24E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E588);
  }

  return result;
}

unint64_t sub_24F734484()
{
  result = qword_27F24E590;
  if (!qword_27F24E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E590);
  }

  return result;
}

uint64_t sub_24F7344EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Game();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Player(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F734624(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Game();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Player(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for FriendsPlayingShelfConstructionIntent()
{
  result = qword_27F24E598;
  if (!qword_27F24E598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F734794()
{
  type metadata accessor for Game();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v1 <= 0x3F)
    {
      sub_24F734848();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F734848()
{
  if (!qword_27F24E5A8)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F24E5A8);
    }
  }
}

unint64_t sub_24F734898@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v7 = type metadata accessor for FriendsPlayingShelfConstructionIntent();
  v8 = v7[6];
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E751390(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F7355EC(v1 + v8, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 1701667175;
  *(inited + 152) = 0xE400000000000000;
  v10 = v7[5];
  *(inited + 184) = type metadata accessor for Game();
  *(inited + 192) = sub_24E751390(&qword_27F217960, type metadata accessor for Game);
  v11 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24F7355EC(v1 + v10, v11, type metadata accessor for Game);
  *(inited + 200) = 1953656691;
  *(inited + 208) = 0xE400000000000000;
  LOBYTE(v8) = *(v1 + v7[8]);
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E5D8);
  v12 = sub_24F735654();
  *(inited + 216) = v8;
  *(inited + 248) = v12;
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x800000024FA46670;
  v13 = *(v1 + v7[7]);
  v14 = MEMORY[0x277D22598];
  *(inited + 296) = MEMORY[0x277D839B0];
  *(inited + 304) = v14;
  *(inited + 272) = v13;

  v15 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v16 = sub_24E80FFAC(v15);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v16;
  return result;
}

uint64_t sub_24F734B44(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E5C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F735490();
  sub_24F92D128();
  v11[15] = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v9 = type metadata accessor for FriendsPlayingShelfConstructionIntent();
    v11[14] = 1;
    type metadata accessor for Game();
    sub_24E751390(&qword_27F214950, type metadata accessor for Game);
    sub_24F92CD48();
    v11[13] = 2;
    type metadata accessor for Player(0);
    sub_24E751390(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
    v11[12] = 3;
    sub_24F92CD18();
    v11[11] = *(v3 + *(v9 + 32));
    v11[10] = 4;
    sub_24F735598();
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F734DE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v20);
  v19 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v22);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E5B0);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v17 - v6;
  v8 = type metadata accessor for FriendsPlayingShelfConstructionIntent();
  MEMORY[0x28223BE20](v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F735490();
  v11 = v24;
  sub_24F92D108();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v21;
  v30 = 0;
  v13 = v10;
  *v10 = sub_24F92CC28();
  v10[1] = v14;
  v24 = v14;
  v29 = 1;
  sub_24E751390(&qword_27F214968, type metadata accessor for Game);
  sub_24F92CC68();
  sub_24E691974(v5, v10 + v8[5], type metadata accessor for Game);
  v28 = 2;
  sub_24E751390(&qword_27F213E38, type metadata accessor for Player);
  v15 = v19;
  sub_24F92CC68();
  sub_24E691974(v15, v13 + v8[6], type metadata accessor for Player);
  v27 = 3;
  *(v13 + v8[7]) = sub_24F92CC38() & 1;
  v25 = 4;
  sub_24F7354E4();
  sub_24F92CC18();
  (*(v12 + 8))(v7, v23);
  *(v13 + v8[8]) = v26;
  sub_24F7355EC(v13, v18, type metadata accessor for FriendsPlayingShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F735538(v13, type metadata accessor for FriendsPlayingShelfConstructionIntent);
}

uint64_t sub_24F735300()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 0x726579616C70;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 1953656691;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667175;
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

uint64_t sub_24F735388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F735844(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F7353B0(uint64_t a1)
{
  v2 = sub_24F735490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7353EC(uint64_t a1)
{
  v2 = sub_24F735490();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F735490()
{
  result = qword_27F24E5B8;
  if (!qword_27F24E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E5B8);
  }

  return result;
}

unint64_t sub_24F7354E4()
{
  result = qword_27F24E5C0;
  if (!qword_27F24E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E5C0);
  }

  return result;
}

uint64_t sub_24F735538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F735598()
{
  result = qword_27F24E5D0;
  if (!qword_27F24E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E5D0);
  }

  return result;
}

uint64_t sub_24F7355EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F735654()
{
  result = qword_27F24E5E0;
  if (!qword_27F24E5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E5D8);
    sub_24F7356D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E5E0);
  }

  return result;
}

unint64_t sub_24F7356D8()
{
  result = qword_27F24E5E8;
  if (!qword_27F24E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E5E8);
  }

  return result;
}

unint64_t sub_24F735740()
{
  result = qword_27F24E5F0;
  if (!qword_27F24E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E5F0);
  }

  return result;
}

unint64_t sub_24F735798()
{
  result = qword_27F24E5F8;
  if (!qword_27F24E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E5F8);
  }

  return result;
}

unint64_t sub_24F7357F0()
{
  result = qword_27F24E600;
  if (!qword_27F24E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E600);
  }

  return result;
}

uint64_t sub_24F735844(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1953656691 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F735A08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Game();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
  }

  else
  {
    v10 = type metadata accessor for Leaderboard(0);
    if (*(*(v10 - 8) + 84) == a2)
    {
      v7 = v10;
      v8 = *(v10 - 8);
      v9 = a3[6];
    }

    else
    {
      v11 = type metadata accessor for Player(0);
      if (*(*(v11 - 8) + 84) != a2)
      {
        v14 = *(a1 + a3[8]);
        if (v14 >= 2)
        {
          return v14 - 1;
        }

        else
        {
          return 0;
        }
      }

      v7 = v11;
      v8 = *(v11 - 8);
      v9 = a3[7];
    }
  }

  v12 = *(v8 + 48);

  return v12(a1 + v9, a2, v7);
}

uint64_t sub_24F735B68(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Game();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = type metadata accessor for Leaderboard(0);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = type metadata accessor for Player(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = a2 + 1;
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[7];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

void sub_24F735CD4()
{
  type metadata accessor for Game();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Leaderboard(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Player(319);
      if (v2 <= 0x3F)
      {
        sub_24E659BE8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F735DE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C820);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24F735EB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C820);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F735F84()
{
  sub_24F736048(319, &qword_27F22B398, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24F736048(319, &qword_27F234AD8, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F736048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for LeaderboardEntry();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_24F7360A8@<X0>(_BYTE *a1@<X8>)
{
  sub_24EDE0BC4();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t InternalSettingsViewModifier.init(objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = swift_getKeyPath();
  *(a2 + 16) = 0;
  *a2 = a1;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24F73617C@<X0>(_BYTE *a1@<X8>)
{
  sub_24EDE0BC4();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t InternalSettingsViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = sub_24F927618();
  v10 = v9;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E628) + 36);
  sub_24F73630C(v5, v6, v7, v11);
  v12 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E630) + 36));
  *v12 = v8;
  v12[1] = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E638);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

uint64_t sub_24F73630C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E678);
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v40 = (&v34 - v9);
  v39 = sub_24F923A08();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E680);
  MEMORY[0x28223BE20](v36);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E688);
  v38 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  if (sub_24F737A14())
  {
    v34 = v8;
    v35 = a4;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;
    *(v20 + 32) = a3 & 1;
    v42 = 0;
    v43 = 0xE000000000000000;
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    *(v21 + 24) = a2;
    *(v21 + 32) = a3 & 1;

    sub_24E62AB1C(a2, a3 & 1);

    sub_24E62AB1C(a2, a3 & 1);
    sub_24E600AEC();
    sub_24F926FB8();
    sub_24F9239F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    v23 = sub_24F923B58();
    *(inited + 32) = v23;
    v24 = sub_24F923B48();
    *(inited + 40) = v24;
    sub_24F923B68();
    sub_24F923B68();
    if (sub_24F923B68() != v23)
    {
      sub_24F923B68();
    }

    sub_24F923B68();
    if (sub_24F923B68() != v24)
    {
      sub_24F923B68();
    }

    v25 = v34;
    sub_24F737DA0();
    sub_24F926498();
    (*(v37 + 8))(v11, v39);
    sub_24E601704(v13, &qword_27F24E680);
    v26 = v38;
    v27 = *(v38 + 16);
    v27(v16, v19, v14);
    v28 = v40;
    *v40 = sub_24F737F04;
    *(v28 + 8) = v20;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E6A0);
    v27((v28 + *(v29 + 48)), v16, v14);
    v30 = *(v26 + 8);

    v30(v19, v14);
    v30(v16, v14);

    v31 = v35;
    sub_24F737E58(v28, v35);
    return (*(v41 + 56))(v31, 0, 1, v25);
  }

  else
  {
    v33 = *(v41 + 56);

    return v33(a4, 1, 1, v8);
  }
}

uint64_t sub_24F736834()
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v54 - v1;
  v56 = sub_24F91F6B8();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v54 - v4;
  v5 = sub_24F924848();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928AD8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v65 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  v60 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v16 = *v0;
  v17 = v0[1];
  v18 = *(v0 + 16);
  v59 = &v54 - v19;
  v57 = v20;
  v58 = v16;
  sub_24F928F28();
  if (qword_27F2111A8 != -1)
  {
    swift_once();
  }

  sub_24E65864C(&unk_27F39E4D8, v75);
  sub_24F928A98();
  v21 = swift_allocObject();
  *(v21 + 40) = &type metadata for InternalSettingsPageIntent;
  *(v21 + 48) = sub_24E7C5830();
  v64 = v14;
  if (v18)
  {
    if ((v17 & 1) == 0)
    {
LABEL_5:
      v22 = sub_24F929D08();
      goto LABEL_8;
    }
  }

  else
  {

    sub_24F92BDC8();
    v24 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v17, 0);
    (*(v6 + 8))(v8, v5);
    if (v74[0] != 1)
    {
      goto LABEL_5;
    }
  }

  v22 = sub_24F929D18();
LABEL_8:
  v25 = v22;
  v26 = v23;
  sub_24E60169C(v75, v74, &qword_27F235830);
  v27 = sub_24F91F4A8();
  v28 = v66;
  (*(*(v27 - 8) + 56))(v66, 1, 1, v27);
  v73[3] = &type metadata for FlowDestination;
  v73[0] = v21 | 4;
  v29 = *(v10 + 16);
  v30 = v65;
  v29(v65, v64, v9);
  v31 = type metadata accessor for FlowAction();
  v32 = swift_allocObject();
  *(v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v33 = v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v33 = 0u;
  *(v33 + 16) = 0u;
  *(v33 + 32) = 0;
  v34 = (v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v34 = 0;
  v34[1] = 0;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 54;
  sub_24E60169C(v28, v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
  v35 = (v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v35 = 0;
  v35[1] = 0;
  v36 = v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v36 = xmmword_24F9406F0;
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = 0;
  *(v36 + 40) = 0;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v37 = (v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v37 = v25;
  v37[1] = v26;
  sub_24E60169C(v74, v72, &qword_27F235830);
  v29((v32 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics), v30, v9);
  v38 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v39 = sub_24F929608();
  (*(*(v39 - 8) + 56))(v32 + v38, 1, 1, v39);
  v40 = (v32 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v40 = 0u;
  v40[1] = 0u;
  v41 = v32 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v72, &v69, &qword_27F235830);
  if (*(&v70 + 1))
  {
    v42 = v70;
    *v41 = v69;
    *(v41 + 16) = v42;
    *(v41 + 32) = v71;
  }

  else
  {
    v43 = v54;
    sub_24F91F6A8();
    v44 = sub_24F91F668();
    v46 = v45;
    (*(v55 + 8))(v43, v56);
    v67 = v44;
    v68 = v46;
    sub_24F92C7F8();
    sub_24E601704(&v69, &qword_27F235830);
  }

  sub_24E601704(v72, &qword_27F235830);
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0u;

  FlowAction.setPageData(_:)(v73);

  v47 = *(v10 + 8);
  v47(v64, v9);
  sub_24E601704(v75, &qword_27F235830);
  v47(v65, v9);
  sub_24E601704(v66, &qword_27F228530);
  sub_24E601704(v74, &qword_27F235830);
  sub_24E601704(v73, &qword_27F2129B0);
  v75[3] = v31;
  v75[4] = sub_24F49AEC0();
  v75[0] = v32;
  v48 = v62;
  v49 = v61;
  v50 = v63;
  (*(v62 + 104))(v61, *MEMORY[0x277D21E18], v63);
  v51 = v57;
  v52 = v59;
  sub_24F929288();

  (*(v48 + 8))(v49, v50);
  (*(v60 + 8))(v52, v51);
  return __swift_destroy_boxed_opaque_existential_1(v75);
}

uint64_t sub_24F737190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = sub_24F927618();
  v10 = v9;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E628) + 36);
  sub_24F73630C(v5, v6, v7, v11);
  v12 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E630) + 36));
  *v12 = v8;
  v12[1] = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E638);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

uint64_t View.withInternalSettingsGesture(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  KeyPath = swift_getKeyPath();
  v10 = 0;

  MEMORY[0x25304C420](&v8, a2, &type metadata for InternalSettingsViewModifier, a3);
  v5 = KeyPath;
  v6 = v10;

  return sub_24E62A5EC(v5, v6);
}

id sub_24F737344()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = type metadata accessor for InternalSettingsView();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC12GameStoreKitP33_000593A25936563060AC4864E1E5232D20InternalSettingsView_perform];
  *v5 = v2;
  *(v5 + 1) = v1;
  v7.receiver = v4;
  v7.super_class = v3;

  return objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

uint64_t sub_24F7373C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F737C6C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24F737428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F737C6C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24F73748C()
{
  sub_24F737C6C();
  sub_24F924DC8();
  __break(1u);
}

void sub_24F7374B4(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for InternalSettingsView();
  objc_msgSendSuper2(&v9, sel_willMoveToWindow_, a1);
  if (a1)
  {
    v3 = [a1 windowScene];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 statusBarManager];

      if (v5)
      {
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8[4] = sub_24F737CF8;
        v8[5] = v6;
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 1107296256;
        v8[2] = sub_24EAF8248;
        v8[3] = &block_descriptor_174;
        v7 = _Block_copy(v8);

        [v5 setDebugMenuHandler_];
        _Block_release(v7);
      }
    }
  }
}

uint64_t sub_24F7375F8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC12GameStoreKitP33_000593A25936563060AC4864E1E5232D20InternalSettingsView_perform);
    v2 = result;

    v1();
  }

  return result;
}

id sub_24F73779C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalSettingsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24F737810()
{
  result = qword_27F24E648;
  if (!qword_27F24E648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E628);
    sub_24E602068(&qword_27F24E650, &qword_27F24E638);
    sub_24E602068(&qword_27F24E658, &qword_27F24E630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E648);
  }

  return result;
}

uint64_t sub_24F7378F4()
{
  sub_24F924038();
  sub_24F737958();
  return swift_getWitnessTable();
}

unint64_t sub_24F737958()
{
  result = qword_27F24E660;
  if (!qword_27F24E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E660);
  }

  return result;
}

unint64_t sub_24F7379C0()
{
  result = qword_27F24E668;
  if (!qword_27F24E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E668);
  }

  return result;
}

uint64_t sub_24F737A14()
{
  v0 = 0xEA00000000006E6FLL;
  v1 = 0x6C616E7265746E69;
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    v3 = 0x6C616E7265746E69;
  }

  else
  {
    v3 = 0x69746375646F7270;
  }

  if (has_internal_content)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006E6FLL;
  }

  if (byte_2861BFC68 > 1u)
  {
    if (byte_2861BFC68 == 2)
    {
      v8 = 0x6C616E7265746E69;
    }

    else
    {
      v8 = 0x69746375646F7270;
    }

    if (byte_2861BFC68 == 2)
    {
      v0 = 0xE800000000000000;
    }

    if (v8 == v3 && v0 == v4)
    {
      goto LABEL_33;
    }
  }

  v5 = sub_24F92CE08();

  if ((v5 & 1) == 0)
  {
    if (byte_2861BFC69 <= 1u)
    {
      goto LABEL_10;
    }

    if (byte_2861BFC69 == 2)
    {
      v9 = 0xE800000000000000;
      if (v3 != 0x6C616E7265746E69)
      {
LABEL_10:
        v6 = sub_24F92CE08();

        if (v6)
        {
          goto LABEL_11;
        }

        if (byte_2861BFC6A <= 1u || (byte_2861BFC6A != 2 ? (v1 = 0x69746375646F7270, v10 = 0xEA00000000006E6FLL) : (v10 = 0xE800000000000000), v1 != v3 || v10 != v4))
        {
          v7 = sub_24F92CE08();
LABEL_34:

          return v7 & 1;
        }

LABEL_33:
        v7 = 1;
        goto LABEL_34;
      }
    }

    else
    {
      v9 = 0xEA00000000006E6FLL;
      if (v3 != 0x69746375646F7270)
      {
        goto LABEL_10;
      }
    }

    if (v9 == v4)
    {
      goto LABEL_33;
    }

    goto LABEL_10;
  }

LABEL_11:
  v7 = 1;
  return v7 & 1;
}

unint64_t sub_24F737C6C()
{
  result = qword_27F24E670;
  if (!qword_27F24E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E670);
  }

  return result;
}

uint64_t sub_24F737CC0()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t block_copy_helper_174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_9Tm_3()
{

  sub_24E62A5EC(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

unint64_t sub_24F737DA0()
{
  result = qword_27F24E698;
  if (!qword_27F24E698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E680);
    sub_24E602068(&qword_27F222D00, &qword_27F222D08);
    sub_24F02EAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E698);
  }

  return result;
}

uint64_t sub_24F737E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E678);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F737EC8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F737F1C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for FriendSuggestion(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[14];

  return v16(v17, a2, v15);
}

uint64_t sub_24F7380FC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for FriendSuggestion(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[14];

  return v16(v17, a2, a2, v15);
}

void sub_24F7382E8()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FriendSuggestion(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PlayerAvatar(319);
      if (v2 <= 0x3F)
      {
        sub_24F73886C(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24F7388D0(319, &qword_27F21BF30, sub_24E678D94, &type metadata for ActionKinds, MEMORY[0x277D21FC8]);
          if (v4 <= 0x3F)
          {
            sub_24F73886C(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_24E61C8D4();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24F738494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F7384F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24F738628(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24F738768()
{
  sub_24F73886C(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24F7388D0(319, &qword_27F215E10, sub_24E66ED98, MEMORY[0x277D85048], MEMORY[0x277CDF5B0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F73886C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_24F7388D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_24F7389B8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x6974634165646968;
    v6 = 0xD000000000000011;
    if (a1 != 10)
    {
      v6 = 0x6575676573;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000011;
    v8 = 0x6341657469766E69;
    if (a1 != 7)
    {
      v8 = 0x6974617469766E69;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x726174617661;
    if (a1 != 3)
    {
      v2 = 0x656C746974627573;
    }

    v3 = 0x6974736567677573;
    if (a1 != 1)
    {
      v3 = 1701667182;
    }

    if (a1)
    {
      v1 = v3;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}