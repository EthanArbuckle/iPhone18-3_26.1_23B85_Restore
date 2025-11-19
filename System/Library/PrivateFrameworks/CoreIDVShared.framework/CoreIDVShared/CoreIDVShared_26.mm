uint64_t MobileAssetManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_225BF5AF8(char *a1, uint64_t a2, uint64_t a3)
{
  v8 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  v6 = sub_225B2E928(MEMORY[0x277D84F90]);
  sub_225BF1994(&v8, v6, sub_225BF5DB8, v5);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_225BF5C20()
{
  result = qword_28105BFD8;
  if (!qword_28105BFD8)
  {
    sub_225CCDA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105BFD8);
  }

  return result;
}

void sub_225BF5CA0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

BOOL sub_225BF5CAC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2259D8718(255, &qword_27D740380);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return (v5(a1 + *(TupleTypeMetadata2 + 48), a2 + *(TupleTypeMetadata2 + 48)) & 1) == 0;
}

uint64_t objectdestroy_20Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t MobileAssetManagerProtocol.retrieveMostRecentAsset<A>(info:isFirstMoreRecent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 128) = a8;
  *(v9 + 136) = v12;
  *(v9 + 112) = a6;
  *(v9 + 120) = a7;
  *(v9 + 96) = a4;
  *(v9 + 104) = a5;
  *(v9 + 80) = a1;
  *(v9 + 88) = a3;
  *(v9 + 160) = *a2;
  v10 = *(a2 + 8);
  *(v9 + 144) = v8;
  *(v9 + 152) = v10;
  return MEMORY[0x2822009F8](sub_225BF5E00, 0, 0);
}

uint64_t sub_225BF5E00()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v12 = *(v0 + 120);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 80);
  *(v0 + 16) = v0;
  *(v0 + 56) = v9;
  *(v0 + 24) = sub_225BF5EFC;
  v10 = swift_continuation_init();
  sub_225BF6004(v10, v2, v3, v1, v8, v7, v6, v5, v12, *(&v12 + 1), v4);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_225BF5EFC()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
  }

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_225BF6004(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[0] = a3 & 1;
  v19 = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  (*(a9 + 8))(v18, a5, a6, sub_225BF7458, v16, a8, a10, a11, a7, a9);
}

uint64_t MobileAssetManagerProtocol.retrieveMostRecentAsset<A>(info:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *(a1 + 8);
  v19[0] = *a1;
  v20 = v16;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v17[6] = a8;
  v17[7] = a9;
  (*(a6 + 8))(v19, sub_225BF758C, v17, a2, a3, a5, a8, a9, a4, a6);
}

uint64_t MobileAssetManagerProtocol.retrieveMostRecentAsset<A>(info:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 80) = a8;
  *(v9 + 88) = v8;
  *(v9 + 64) = a6;
  *(v9 + 72) = a7;
  *(v9 + 48) = a4;
  *(v9 + 56) = a5;
  *(v9 + 32) = a1;
  *(v9 + 40) = a3;
  *(v9 + 128) = *a2;
  *(v9 + 96) = *(a2 + 8);
  return MEMORY[0x2822009F8](sub_225BF6220, 0, 0);
}

uint64_t sub_225BF6220()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 24) = v1;
  v2 = swift_allocObject();
  *(v0 + 104) = v2;
  v3 = *(v0 + 56);
  v2[1] = *(v0 + 40);
  v2[2] = v3;
  v2[3] = *(v0 + 72);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_225BF6330;
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);

  return MobileAssetManagerProtocol.retrieveMostRecentAsset<A>(info:isFirstMoreRecent:)(v8, v0 + 16, sub_225BF64D0, v2, v9, v6, v7, v5);
}

uint64_t sub_225BF6330()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225BF646C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225BF646C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MobileAssetManagerProtocol.retrieveMostRecentAssetByCreationDate(assetType:filters:completion:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[0] = *a1;
  v16 = a2;
  v10 = type metadata accessor for CreationDateSorter();
  v11 = sub_225BF7398(&qword_27D7403B0, type metadata accessor for CreationDateSorter);
  v12 = sub_225BF7398(&qword_27D7403B8, type metadata accessor for CreationDateSorter);
  v13 = sub_225BF7398(&qword_27D7403C0, type metadata accessor for CreationDateSorter);

  MobileAssetManagerProtocol.retrieveMostRecentAsset<A>(info:completion:)(v15, a3, a4, a5, v10, a6, v11, v12, v13);
}

uint64_t type metadata accessor for CreationDateSorter()
{
  result = qword_27D7403C8;
  if (!qword_27D7403C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileAssetManagerProtocol.retrieveMostRecentAssetByCreationDate(assetType:filters:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 104) = a5;
  *(v6 + 112) = v5;
  *(v6 + 88) = a3;
  *(v6 + 96) = a4;
  *(v6 + 80) = a1;
  *(v6 + 120) = *a2;
  return MEMORY[0x2822009F8](sub_225BF66BC, 0, 0);
}

uint64_t sub_225BF66BC()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);
  *(v0 + 16) = v0;
  *(v0 + 56) = v6;
  *(v0 + 24) = sub_225BF7590;
  v7 = swift_continuation_init();
  sub_225BF6784(v7, v2, v1, v5, v4, v3);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_225BF6784(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a3 & 1;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  MobileAssetManagerProtocol.retrieveMostRecentAssetByCreationDate(assetType:filters:completion:)(&v12, a4, sub_225BF7594, v10, a5, a6);
}

uint64_t sub_225BF6834(uint64_t a1, uint64_t a2)
{
  v4 = sub_225CCCEA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740388);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v17 - v11;
  sub_225BF73E8(a1, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    swift_allocError();
    *v14 = v13;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    v16 = *(v5 + 32);
    v16(v8, v12, v4);
    v16(*(*(a2 + 64) + 40), v8, v4);
    return swift_continuation_throwingResume();
  }
}

uint64_t MobileAssetManagerProtocol.evictAssets(type:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 80) = a2;
  *(v4 + 104) = *a1;
  return MEMORY[0x2822009F8](sub_225BF6A20, 0, 0);
}

uint64_t sub_225BF6A20()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_225BF7590;
  v5 = swift_continuation_init();
  sub_225BF6ADC(v5, v2, v1, v4, v3);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_225BF6ADC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = a3 & 1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  (*(a5 + 16))(&v10, sub_225BF73E0, v8, a4, a5);
}

uint64_t sub_225BF6BE8()
{
  result = sub_225CCD0B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225BF6C54(void *a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    swift_allocError();
    *v2 = a1;
    v3 = a1;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_225BF6CF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_225CCD0B4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v22 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7403E0);
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for CreationDateSorter();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225BF72E0();
  sub_225CCFCA4();
  if (!v2)
  {
    v15 = v19;
    v16 = v21;
    sub_225BF7398(&qword_27D73BE48, MEMORY[0x277CC9578]);
    sub_225CCF6E4();
    (*(v20 + 8))(v10, v7);
    (*(v15 + 32))(v14, v22, v4);
    sub_225BF7334(v14, v16);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_225BF6FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_225CCF934();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_225BF702C(uint64_t a1)
{
  v2 = sub_225BF72E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225BF7068(uint64_t a1)
{
  v2 = sub_225BF72E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225BF70BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7403F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225BF72E0();
  sub_225CCFCE4();
  sub_225CCD0B4();
  sub_225BF7398(&qword_27D73BE18, MEMORY[0x277CC9578]);
  sub_225CCF7E4();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_225BF72E0()
{
  result = qword_27D7403E8;
  if (!qword_27D7403E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7403E8);
  }

  return result;
}

uint64_t sub_225BF7334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CreationDateSorter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_225BF7398(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_225BF73E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740388);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_225BF7488()
{
  result = qword_27D7403F8;
  if (!qword_27D7403F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7403F8);
  }

  return result;
}

unint64_t sub_225BF74E0()
{
  result = qword_27D740400;
  if (!qword_27D740400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740400);
  }

  return result;
}

unint64_t sub_225BF7538()
{
  result = qword_27D740408;
  if (!qword_27D740408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740408);
  }

  return result;
}

unint64_t MobileAssetType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000024;
  }

  else
  {
    return 0xD000000000000023;
  }
}

CoreIDVShared::MobileAssetType_optional __swiftcall MobileAssetType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_225BF7634(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000024;
  }

  else
  {
    v3 = 0xD000000000000023;
  }

  if (v2)
  {
    v4 = "ntity-presentment.handoff";
  }

  else
  {
    v4 = "Asset.CoreIDVAssets";
  }

  if (*a2)
  {
    v5 = 0xD000000000000024;
  }

  else
  {
    v5 = 0xD000000000000023;
  }

  if (*a2)
  {
    v6 = "Asset.CoreIDVAssets";
  }

  else
  {
    v6 = "ntity-presentment.handoff";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

unint64_t sub_225BF76E0()
{
  result = qword_27D740410;
  if (!qword_27D740410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740410);
  }

  return result;
}

uint64_t sub_225BF7734()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225BF77B0()
{
  sub_225CCE5B4();
}

uint64_t sub_225BF7818()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225BF7890@<X0>(char *a1@<X8>)
{
  v2 = sub_225CCF5D4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_225BF78F0(unint64_t *a1@<X8>)
{
  v2 = "Asset.CoreIDVAssets";
  v3 = 0xD000000000000023;
  if (*v1)
  {
    v3 = 0xD000000000000024;
  }

  else
  {
    v2 = "ntity-presentment.handoff";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

CoreIDVShared::BACManager __swiftcall BACManager.init()()
{
  *v0 = xmmword_225CD9620;
  *(v0 + 16) = 16;
  return result;
}

uint64_t sub_225BF7954(uint64_t a1)
{
  v2[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v2[7] = swift_task_alloc();
  v3 = sub_225CCD954();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[11] = v4;
  v2[12] = v5;

  return MEMORY[0x2822009F8](sub_225BF7A5C, 0, 0);
}

uint64_t sub_225BF7A5C()
{
  v79 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = off_28105B918;
  v5 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v6));
  v71 = *(v3 + 16);
  v72 = v5;
  v71(v1, &v4[v5], v2);
  v74 = v6;
  os_unfair_lock_unlock(&v4[v6]);
  v7 = sub_225CCD934();
  v8 = sub_225CCED04();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2259A7000, v7, v8, "Getting chip nonce", v9, 2u);
    MEMORY[0x22AA6F950](v9, -1, -1);
  }

  v10 = v0[11];
  v11 = v0[8];
  v12 = v0[9];

  v70 = *(v12 + 8);
  v70(v10, v11);
  if (qword_27D73A0F8 != -1)
  {
    swift_once();
  }

  v13 = PassportCommandAPDU.asData.getter();
  v15 = v14;

  v16 = sub_225C15D34(v13, v15, 1);
  sub_2259BEF00(v16, v17);

  sub_2259BEF00(v13, v15);
  type metadata accessor for PassportCommandAPDU();
  swift_initStaticObject();

  v18 = PassportCommandAPDU.asData.getter();
  v20 = v19;

  v21 = sub_225C15D34(v18, v20, 1);
  v23 = v22;

  result = sub_2259BEF00(v18, v20);
  v42 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    if (!v42)
    {
      v43 = BYTE6(v23);
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (v42 != 2)
  {
    if (!v0[12])
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  v45 = *(v21 + 16);
  v44 = *(v21 + 24);
  v46 = __OFSUB__(v44, v45);
  v43 = v44 - v45;
  if (v46)
  {
    __break(1u);
LABEL_23:
    LODWORD(v43) = HIDWORD(v21) - v21;
    if (__OFSUB__(HIDWORD(v21), v21))
    {
      __break(1u);
      return result;
    }

    v43 = v43;
  }

LABEL_25:
  if (v43 == v0[12])
  {
LABEL_26:
    v47 = v0[10];
    v48 = v0[8];
    os_unfair_lock_lock(&v4[v74]);
    v71(v47, &v4[v72], v48);
    os_unfair_lock_unlock(&v4[v74]);
    v49 = sub_225CCD934();
    v50 = sub_225CCED04();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2259A7000, v49, v50, "Successfully received chip nonce", v51, 2u);
      MEMORY[0x22AA6F950](v51, -1, -1);
    }

    v52 = v0[10];
    v53 = v0[8];

    v70(v52, v53);

    v54 = v0[1];

    return v54(v21, v23);
  }

LABEL_32:
  v55 = v0[7];
  v56 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v76 = swift_allocError();
  v58 = v57;
  v59 = sub_225CCE954();
  v60 = *(v59 - 8);
  (*(v60 + 56))(v55, 1, 1, v59);
  LODWORD(v59) = (*(v60 + 48))(v55, 1, v59);
  sub_2259DB318(v55);
  if (v59)
  {
    v61 = 858;
  }

  else
  {
    v61 = 23;
  }

  v62 = MEMORY[0x277D84F90];
  v63 = sub_225B2C374(MEMORY[0x277D84F90]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v63;
  sub_225B2C4A0(v56, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v77);

  v65 = v77;
  v66 = sub_225B29AA0(0, 1, 1, v62);
  v68 = *(v66 + 2);
  v67 = *(v66 + 3);
  if (v68 >= v67 >> 1)
  {
    v66 = sub_225B29AA0((v67 > 1), v68 + 1, 1, v66);
  }

  *(v66 + 2) = v68 + 1;
  v69 = &v66[56 * v68];
  *(v69 + 4) = 0xD000000000000012;
  *(v69 + 5) = 0x8000000225D254A0;
  *(v69 + 6) = 0xD00000000000001ELL;
  *(v69 + 7) = 0x8000000225D25030;
  *(v69 + 8) = 0xD00000000000001CLL;
  *(v69 + 9) = 0x8000000225D25480;
  *(v69 + 10) = 55;
  *v58 = v61;
  *(v58 + 8) = v66;
  *(v58 + 16) = 0xD000000000000012;
  *(v58 + 24) = 0x8000000225D254A0;
  *(v58 + 32) = v65;
  *(v58 + 40) = 0;
  swift_willThrow();
  sub_2259BEF00(v21, v23);
  v25 = v0[7];
  v77 = 0;
  v78 = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD00000000000001ALL, 0x8000000225D25460);
  swift_getErrorValue();
  sub_225CCF904();
  v26 = v78;
  v75 = v77;
  v27 = MEMORY[0x277D84F90];
  v28 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v30 = v29;
  v31 = sub_225CCE954();
  v32 = *(v31 - 8);
  (*(v32 + 56))(v25, 1, 1, v31);
  v73 = (*(v32 + 48))(v25, 1, v31);
  sub_2259DB318(v25);

  v33 = sub_225B2C374(v27);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v77 = v33;
  sub_225B2C4A0(v28, sub_225B2AC40, 0, v34, &v77);

  v35 = v77;
  v36 = sub_225B29AA0(0, 1, 1, v27);
  v38 = *(v36 + 2);
  v37 = *(v36 + 3);
  if (v38 >= v37 >> 1)
  {
    v36 = sub_225B29AA0((v37 > 1), v38 + 1, 1, v36);
  }

  if (v73)
  {
    v39 = 858;
  }

  else
  {
    v39 = 23;
  }

  *(v36 + 2) = v38 + 1;
  v40 = &v36[56 * v38];
  *(v40 + 4) = v75;
  *(v40 + 5) = v26;
  *(v40 + 6) = 0xD00000000000001ELL;
  *(v40 + 7) = 0x8000000225D25030;
  *(v40 + 8) = 0xD00000000000001CLL;
  *(v40 + 9) = 0x8000000225D25480;
  *(v40 + 10) = 61;
  *v30 = v39;
  *(v30 + 8) = v36;
  *(v30 + 16) = v75;
  *(v30 + 24) = v26;
  *(v30 + 32) = v35;
  *(v30 + 40) = 0;
  swift_willThrow();

  v41 = v0[1];

  return v41();
}

uint64_t sub_225BF8344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 424) = a8;
  *(v9 + 432) = v14;
  *(v9 + 408) = a6;
  *(v9 + 416) = a7;
  *(v9 + 392) = a4;
  *(v9 + 400) = a5;
  *(v9 + 376) = a2;
  *(v9 + 384) = a3;
  *(v9 + 368) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  *(v9 + 440) = swift_task_alloc();
  v10 = sub_225CCE264();
  *(v9 + 448) = v10;
  *(v9 + 456) = *(v10 - 8);
  *(v9 + 464) = swift_task_alloc();
  v11 = sub_225CCE254();
  *(v9 + 472) = v11;
  *(v9 + 480) = *(v11 - 8);
  *(v9 + 488) = swift_task_alloc();
  *(v9 + 496) = *v8;
  *(v9 + 512) = *(v8 + 16);

  return MEMORY[0x2822009F8](sub_225BF84EC, 0, 0);
}

uint64_t *sub_225BF84EC()
{
  v235 = v0;
  v1 = v0;
  v234 = *MEMORY[0x277D85DE8];
  v228 = v0[63];
  v227 = v0[59];
  v221 = v0[58];
  v223 = v0[61];
  v224 = v0[57];
  v3 = v0[53];
  v2 = v0[54];
  v217 = v0[52];
  v219 = v0[56];
  v213 = v0[50];
  v215 = v0[51];
  v210 = v0[48];
  v211 = v0[49];
  v209 = v0[47];
  v4 = randomData(numBytes:)(v0[62]);
  v6 = v5;
  v7 = randomData(numBytes:)(v228);
  v9 = v8;
  v231 = v4;
  v232 = v6;
  v10 = MEMORY[0x277CC9318];
  v11 = MEMORY[0x277CC9300];
  v0[5] = MEMORY[0x277CC9318];
  v0[6] = v11;
  v0[2] = v3;
  v0[3] = v2;
  v12 = __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
  v13 = *v12;
  v14 = v12[1];
  v207 = v4;
  v208 = v6;
  sub_2259CB710(v4, v6);
  sub_2259CB710(v3, v2);
  sub_225C0EA34(v13, v14);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  v0[7] = v7;
  v16 = v231;
  v15 = v232;
  v229 = v231;
  v230 = v232;
  v17 = MEMORY[0x277CC9318];
  v1[10] = MEMORY[0x277CC9318];
  v1[11] = MEMORY[0x277CC9300];
  v1[8] = v9;
  v18 = __swift_project_boxed_opaque_existential_1(v1 + 7, v17);
  v19 = *v18;
  v20 = v18[1];
  sub_2259CB710(v16, v15);
  v205 = v7;
  v206 = v9;
  sub_2259CB710(v7, v9);
  sub_225C0EA34(v19, v20);
  sub_2259BEF00(v16, v15);
  v226 = v1 + 7;
  __swift_destroy_boxed_opaque_existential_0((v1 + 7));
  v231 = v209;
  v232 = v210;

  MEMORY[0x22AA6CE70](v211, v213);

  MEMORY[0x22AA6CE70](v215, v217);

  v21 = sub_2259D25B0(v209, v210);
  v23 = v22;
  sub_225C0175C(&qword_27D73ABF8, MEMORY[0x277CC5598]);
  sub_225CCDB94();
  sub_2259CB710(v21, v23);
  sub_2259D7024(v21, v23);
  sub_2259BEF00(v21, v23);
  sub_225CCDB84();
  (*(v224 + 8))(v221, v219);
  sub_225C0175C(&qword_27D73AC00, MEMORY[0x277CC5578]);
  v24 = sub_225CCE154();
  v26 = sub_2259D732C(v24, v25);

  v27 = sub_2259D8490(v26);
  v29 = v28;

  if ((v228 & 0x8000000000000000) == 0)
  {
    v225 = v23;
    v31 = v1[63];
    v32 = v1[64];
    v33 = v1[62];
    v34 = sub_225CCCF54();
    v36 = v35;
    sub_2259BEF00(v27, v29);
    v231 = v33;
    v232 = v31;
    v233 = v32;
    v37 = v36;
    sub_2259CB710(v34, v36);
    v38 = sub_225C0F394(v34, v36);
    v39 = 0;
    v40 = sub_225BF9A0C(v38);
    v220 = v37;
    v222 = v41;
    v43 = v42;

    v44 = sub_225C02CA4(v229, v230, v40, 0);
    v45 = v1 + 7;
    v214 = v43;
    v51 = v50;
    v52 = MEMORY[0x277CC9318];
    v1[15] = MEMORY[0x277CC9318];
    v1[16] = MEMORY[0x277CC9300];
    v216 = v44;
    v218 = v51;
    v1[12] = v44;
    v1[13] = v51;
    v53 = __swift_project_boxed_opaque_existential_1(v1 + 12, v52);
    v54 = *v53;
    v55 = v53[1];
    v56 = v55 >> 62;
    v212 = v40;
    if ((v55 >> 62) > 1)
    {
      if (v56 != 2)
      {
        v1[85] = 0;
        *(v1 + 674) = 0;
        sub_2259CB710(v216, v218);
        v57 = v1 + 674;
        v58 = v1 + 674;
        goto LABEL_32;
      }

      v59 = *(v54 + 16);
      v60 = *(v54 + 24);
      sub_2259CB710(v216, v218);
      v61 = sub_225CCCA44();
      if (v61)
      {
        v62 = sub_225CCCA74();
        v54 = v59 - v62;
        if (__OFSUB__(v59, v62))
        {
          goto LABEL_172;
        }

        v61 += v54;
      }

      v63 = __OFSUB__(v60, v59);
      v64 = v60 - v59;
      if (!v63)
      {
        goto LABEL_24;
      }

      __break(1u);
    }

    else if (!v56)
    {
      *(v1 + 660) = v54;
      *(v1 + 334) = v55;
      *(v1 + 670) = BYTE2(v55);
      *(v1 + 671) = BYTE3(v55);
      *(v1 + 672) = BYTE4(v55);
      *(v1 + 673) = BYTE5(v55);
      sub_2259CB710(v216, v218);
      v57 = v1 + 660;
      v58 = v1 + BYTE6(v55) + 660;
LABEL_32:
      sub_225B3D3E8(v57, v58, &v231);
      v71 = v231;
      v72 = v232;
      __swift_destroy_boxed_opaque_existential_0((v1 + 12));
      sub_2259CB710(v71, v72);
      v231 = sub_225C0F394(v71, v72);
      sub_2259BE4EC(&unk_2838FFF08);
      v73 = v231;
      v74 = *(v231 + 16);
      if ((v74 & 7) != 0)
      {
        while (1)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v76 = *(v73 + 3) >> 1, v76 <= v74))
          {
            v73 = sub_2259BE5D8(isUniquelyReferenced_nonNull_native, v74 + 1, 1, v73);
            v76 = *(v73 + 3) >> 1;
          }

          v77 = *(v73 + 2);
          if (v76 <= v77)
          {
            break;
          }

          v73[v77 + 32] = byte_2838FFF50;
          v74 = v77 + 1;
          *(v73 + 2) = v77 + 1;
          if (((v77 + 1) & 7) == 0)
          {
            goto LABEL_38;
          }
        }

        __break(1u);
        goto LABEL_120;
      }

LABEL_38:
      v78 = sub_2259D8490(v73);
      v80 = v79;

      sub_2259BEF00(v71, v72);
      v81 = MEMORY[0x277CC9318];
      v1[20] = MEMORY[0x277CC9318];
      v1[21] = MEMORY[0x277CC9300];
      v1[17] = v78;
      v1[18] = v80;
      v82 = __swift_project_boxed_opaque_existential_1(v1 + 17, v81);
      v83 = *v82;
      v84 = v82[1];
      v85 = v84 >> 62;
      v209 = v78;
      v210 = v80;
      if ((v84 >> 62) > 1)
      {
        if (v85 != 2)
        {
          *(v1 + 652) = 0;
          *(v1 + 646) = 0;
          sub_2259CB710(v78, v80);
          v86 = v1 + 646;
          v87 = v1 + 646;
          goto LABEL_60;
        }

        v88 = v80;
        v89 = v78;
        v90 = *(v83 + 16);
        v91 = *(v83 + 24);
        sub_2259CB710(v89, v88);
        v92 = sub_225CCCA44();
        if (v92)
        {
          v93 = sub_225CCCA74();
          v83 = v90 - v93;
          if (__OFSUB__(v90, v93))
          {
LABEL_175:
            __break(1u);
            goto LABEL_176;
          }

          v92 += v83;
        }

        v63 = __OFSUB__(v91, v90);
        v94 = v91 - v90;
        if (!v63)
        {
          goto LABEL_52;
        }

        __break(1u);
      }

      else if (!v85)
      {
        v1[79] = v83;
        *(v1 + 320) = v84;
        *(v1 + 642) = BYTE2(v84);
        *(v1 + 643) = BYTE3(v84);
        *(v1 + 644) = BYTE4(v84);
        *(v1 + 645) = BYTE5(v84);
        sub_2259CB710(v78, v80);
        v86 = v1 + 79;
        v87 = v1 + BYTE6(v84) + 632;
        goto LABEL_60;
      }

      v95 = v83;
      v96 = v83 >> 32;
      v94 = v96 - v95;
      if (v96 >= v95)
      {
        sub_2259CB710(v209, v210);
        v92 = sub_225CCCA44();
        if (!v92)
        {
LABEL_52:
          v98 = sub_225CCCA64();
          if (v98 >= v94)
          {
            v99 = v94;
          }

          else
          {
            v99 = v98;
          }

          v100 = (v99 + v92);
          if (v92)
          {
            v87 = v100;
          }

          else
          {
            v87 = 0;
          }

          v86 = v92;
LABEL_60:
          sub_225B3D3E8(v86, v87, &v231);
          v101 = v1[64];
          v103 = v231;
          v102 = v232;
          __swift_destroy_boxed_opaque_existential_0((v1 + 17));
          v104 = sub_225C0187C(v103, v102, v222, v214, v101);
          v201 = v105;
          v203 = v104;
          sub_2259BEF00(v103, v102);
          v106 = MEMORY[0x277CC9318];
          v1[25] = MEMORY[0x277CC9318];
          v1[26] = MEMORY[0x277CC9300];
          v1[22] = v207;
          v1[23] = v208;
          result = __swift_project_boxed_opaque_existential_1(v1 + 22, v106);
          v107 = *result;
          v108 = result[1];
          v109 = v108 >> 62;
          if ((v108 >> 62) > 1)
          {
            if (v109 != 2)
            {
              v1[78] = 0;
              *(v1 + 618) = 0;
              sub_2259CB710(v207, v208);
              v110 = v1 + 618;
              v111 = v1 + 618;
              goto LABEL_87;
            }

            v112 = *(v107 + 16);
            v113 = *(v107 + 24);
            sub_2259CB710(v207, v208);
            result = sub_225CCCA44();
            v114 = result;
            if (result)
            {
              result = sub_225CCCA74();
              if (__OFSUB__(v112, result))
              {
LABEL_179:
                __break(1u);
                goto LABEL_180;
              }

              v114 = (v114 + v112 - result);
            }

            v63 = __OFSUB__(v113, v112);
            v115 = v113 - v112;
            if (!v63)
            {
              v116 = sub_225CCCA64();
              if (v116 >= v115)
              {
                v117 = v115;
              }

              else
              {
                v117 = v116;
              }

              v118 = v114 + v117;
              if (v114)
              {
                v111 = v118;
              }

              else
              {
                v111 = 0;
              }

              v110 = v114;
              goto LABEL_87;
            }
          }

          else
          {
            if (!v109)
            {
              *(v1 + 604) = v107;
              *(v1 + 306) = v108;
              *(v1 + 614) = BYTE2(v108);
              *(v1 + 615) = BYTE3(v108);
              *(v1 + 616) = BYTE4(v108);
              *(v1 + 617) = BYTE5(v108);
              sub_2259CB710(v207, v208);
              v110 = v1 + 604;
              v111 = v1 + BYTE6(v108) + 604;
LABEL_87:
              sub_225B3D3E8(v110, v111, &v231);
              v74 = v232;
              v223 = v231;
              __swift_destroy_boxed_opaque_existential_0((v1 + 22));
              v126 = MEMORY[0x277CC9318];
              v1[30] = MEMORY[0x277CC9318];
              v1[31] = MEMORY[0x277CC9300];
              v1[27] = v205;
              v1[28] = v206;
              result = __swift_project_boxed_opaque_existential_1(v1 + 27, v126);
              v127 = *result;
              v128 = result[1];
              v129 = v128 >> 62;
              if ((v128 >> 62) > 1)
              {
                if (v129 != 2)
                {
                  *(v1 + 596) = 0;
                  *(v1 + 590) = 0;
                  sub_2259CB710(v205, v206);
                  v130 = v1 + 590;
                  v131 = v1 + 590;
                  goto LABEL_115;
                }

                v132 = v1;
                v133 = *(v127 + 16);
                v134 = *(v127 + 24);
                sub_2259CB710(v205, v206);
                result = sub_225CCCA44();
                v135 = result;
                if (result)
                {
                  result = sub_225CCCA74();
                  if (__OFSUB__(v133, result))
                  {
LABEL_183:
                    __break(1u);
                    goto LABEL_184;
                  }

                  v135 = (v135 + v133 - result);
                }

                v63 = __OFSUB__(v134, v133);
                v136 = v134 - v133;
                if (!v63)
                {
                  v137 = sub_225CCCA64();
                  if (v137 >= v136)
                  {
                    v138 = v136;
                  }

                  else
                  {
                    v138 = v137;
                  }

                  v139 = v135 + v138;
                  if (v135)
                  {
                    v140 = v139;
                  }

                  else
                  {
                    v140 = 0;
                  }

                  sub_225B3D3E8(v135, v140, &v231);
                  v1 = v132;
                  goto LABEL_113;
                }

LABEL_182:
                __break(1u);
                goto LABEL_183;
              }

              if (!v129)
              {
                v1[72] = v127;
                *(v1 + 292) = v128;
                *(v1 + 586) = BYTE2(v128);
                *(v1 + 587) = BYTE3(v128);
                *(v1 + 588) = BYTE4(v128);
                *(v1 + 589) = BYTE5(v128);
                sub_2259CB710(v205, v206);
                v130 = v1 + 72;
                v131 = v1 + BYTE6(v128) + 576;
LABEL_115:
                sub_225B3D3E8(v130, v131, &v231);
                goto LABEL_116;
              }

              v141 = v1;
              v142 = v127;
              v143 = v127 >> 32;
              v144 = v143 - v142;
              if (v143 >= v142)
              {
                sub_2259CB710(v205, v206);
                v145 = sub_225CCCA44();
                if (!v145)
                {
LABEL_106:
                  v1 = v141;
                  v146 = sub_225CCCA64();
                  if (v146 >= v144)
                  {
                    v147 = v144;
                  }

                  else
                  {
                    v147 = v146;
                  }

                  v148 = &v145[v147];
                  if (v145)
                  {
                    v149 = v148;
                  }

                  else
                  {
                    v149 = 0;
                  }

                  sub_225B3D3E8(v145, v149, &v231);
LABEL_113:
                  v45 = v226;
LABEL_116:
                  v39 = v231;
                  v200 = v232;
                  __swift_destroy_boxed_opaque_existential_0((v45 + 20));
                  v150 = MEMORY[0x277CC9318];
                  v1[35] = MEMORY[0x277CC9318];
                  v1[36] = MEMORY[0x277CC9300];
                  v1[32] = v216;
                  v1[33] = v218;
                  result = __swift_project_boxed_opaque_existential_1(v45 + 25, v150);
                  v76 = *result;
                  v151 = result[1];
                  v77 = v151 >> 62;
                  if ((v151 >> 62) > 1)
                  {
LABEL_120:
                    if (v77 == 2)
                    {
                      v154 = v1;
                      v155 = *(v76 + 16);
                      v156 = *(v76 + 24);
                      sub_2259CB710(v216, v218);
                      result = sub_225CCCA44();
                      v157 = result;
                      if (result)
                      {
                        result = sub_225CCCA74();
                        if (__OFSUB__(v155, result))
                        {
LABEL_187:
                          __break(1u);
                          goto LABEL_188;
                        }

                        v157 = (v157 + v155 - result);
                      }

                      v63 = __OFSUB__(v156, v155);
                      v158 = v156 - v155;
                      if (!v63)
                      {
                        v159 = sub_225CCCA64();
                        if (v159 >= v158)
                        {
                          v160 = v158;
                        }

                        else
                        {
                          v160 = v159;
                        }

                        v161 = v157 + v160;
                        if (v157)
                        {
                          v162 = v161;
                        }

                        else
                        {
                          v162 = 0;
                        }

                        sub_225B3D3E8(v157, v162, &v231);
                        v1 = v154;
                        goto LABEL_144;
                      }

LABEL_186:
                      __break(1u);
                      goto LABEL_187;
                    }

                    v45[64] = 0;
                    *(v45 + 506) = 0;
                    sub_2259CB710(v216, v218);
                    v152 = v45 + 506;
                    v153 = v45 + 506;
LABEL_146:
                    sub_225B3D3E8(v152, v153, &v231);
                    goto LABEL_147;
                  }

                  if (!v77)
                  {
                    *(v1 + 548) = v76;
                    *(v1 + 278) = v151;
                    *(v1 + 558) = BYTE2(v151);
                    *(v1 + 559) = BYTE3(v151);
                    *(v1 + 560) = BYTE4(v151);
                    *(v1 + 561) = BYTE5(v151);
                    sub_2259CB710(v216, v218);
                    v152 = v45 + 492;
                    v153 = v45 + BYTE6(v151) + 492;
                    goto LABEL_146;
                  }

                  v164 = v1;
                  v165 = v76;
                  v166 = v76 >> 32;
                  v167 = v166 - v165;
                  if (v166 >= v165)
                  {
                    sub_2259CB710(v216, v218);
                    v168 = sub_225CCCA44();
                    if (v168)
                    {
                      result = sub_225CCCA74();
                      if (__OFSUB__(v165, result))
                      {
LABEL_188:
                        __break(1u);
                        goto LABEL_189;
                      }

                      v168 += v165 - result;
                    }

                    v1 = v164;
                    v169 = sub_225CCCA64();
                    if (v169 >= v167)
                    {
                      v170 = v167;
                    }

                    else
                    {
                      v170 = v169;
                    }

                    v171 = &v168[v170];
                    if (v168)
                    {
                      v172 = v171;
                    }

                    else
                    {
                      v172 = 0;
                    }

                    sub_225B3D3E8(v168, v172, &v231);
LABEL_144:
                    v45 = v226;
LABEL_147:
                    v174 = v231;
                    v173 = v232;
                    __swift_destroy_boxed_opaque_existential_0((v45 + 25));
                    v175 = MEMORY[0x277CC9318];
                    v1[40] = MEMORY[0x277CC9318];
                    v1[41] = MEMORY[0x277CC9300];
                    v1[37] = v203;
                    v1[38] = v201;
                    result = __swift_project_boxed_opaque_existential_1(v45 + 30, v175);
                    v176 = *result;
                    v177 = result[1];
                    v178 = v177 >> 62;
                    if ((v177 >> 62) > 1)
                    {
                      if (v178 != 2)
                      {
                        v179 = v45 + 478;
                        *(v45 + 484) = 0;
                        *(v45 + 478) = 0;
                        v180 = v45 + 478;
                        goto LABEL_169;
                      }

                      v199 = v173;
                      v202 = v174;
                      v204 = v39;
                      v181 = v1;
                      v182 = *(v176 + 16);
                      v1 = *(v176 + 24);
                      v174 = v177 & 0x3FFFFFFFFFFFFFFFLL;
                      result = sub_225CCCA44();
                      v173 = result;
                      if (result)
                      {
                        v174 = v177 & 0x3FFFFFFFFFFFFFFFLL;
                        result = sub_225CCCA74();
                        v176 = v182 - result;
                        if (__OFSUB__(v182, result))
                        {
LABEL_190:
                          __break(1u);
                          goto LABEL_191;
                        }

                        v173 += v176;
                      }

                      v63 = __OFSUB__(v1, v182);
                      v183 = v1 - v182;
                      if (!v63)
                      {
                        goto LABEL_161;
                      }

                      __break(1u);
                    }

                    else if (!v178)
                    {
                      v179 = v45 + 58;
                      v1[65] = v176;
                      *(v1 + 264) = v177;
                      *(v1 + 530) = BYTE2(v177);
                      *(v1 + 531) = BYTE3(v177);
                      *(v1 + 532) = BYTE4(v177);
                      *(v1 + 533) = BYTE5(v177);
                      v180 = v45 + BYTE6(v177) + 464;
LABEL_169:
                      sub_225B3D3E8(v179, v180, &v231);
                      v199 = v173;
                      v202 = v174;
                      v204 = v39;
LABEL_170:
                      sub_2259BEF00(v229, v230);
                      sub_2259BEF00(v21, v225);
                      sub_2259BEF00(v209, v210);
                      sub_2259BEF00(v216, v218);
                      sub_2259BEF00(v34, v220);
                      v191 = v1[60];
                      v190 = v1[61];
                      v192 = v1[59];
                      v193 = v1[54];
                      v194 = v1[53];
                      v195 = v1;
                      v196 = v1[46];
                      sub_2259BEF00(v205, v206);
                      sub_2259BEF00(v207, v208);
                      (*(v191 + 8))(v190, v192);
                      v197 = v231;
                      v198 = v232;
                      __swift_destroy_boxed_opaque_existential_0((v226 + 30));
                      sub_2259CB710(v194, v193);
                      *v196 = v194;
                      v196[1] = v193;
                      v196[2] = v223;
                      v196[3] = v74;
                      v196[4] = v204;
                      v196[5] = v200;
                      v196[6] = v212;
                      v196[7] = v222;
                      v196[8] = v214;
                      v196[9] = v202;
                      v196[10] = v199;
                      v196[11] = v197;
                      v196[12] = v198;

                      v48 = v195[1];
                      goto LABEL_7;
                    }

                    v199 = v173;
                    v202 = v174;
                    v204 = v39;
                    v181 = v1;
                    v184 = v176;
                    v185 = v176 >> 32;
                    v183 = v185 - v184;
                    if (v185 >= v184)
                    {
                      v173 = sub_225CCCA44();
                      if (!v173)
                      {
LABEL_161:
                        v186 = sub_225CCCA64();
                        if (v186 >= v183)
                        {
                          v187 = v183;
                        }

                        else
                        {
                          v187 = v186;
                        }

                        v188 = &v173[v187];
                        if (v173)
                        {
                          v189 = v188;
                        }

                        else
                        {
                          v189 = 0;
                        }

                        sub_225B3D3E8(v173, v189, &v231);
                        v1 = v181;
                        goto LABEL_170;
                      }

                      result = sub_225CCCA74();
                      if (!__OFSUB__(v184, result))
                      {
                        v173 += v184 - result;
                        goto LABEL_161;
                      }

LABEL_191:
                      __break(1u);
                      return result;
                    }

LABEL_189:
                    __break(1u);
                    goto LABEL_190;
                  }

LABEL_185:
                  __break(1u);
                  goto LABEL_186;
                }

                result = sub_225CCCA74();
                if (!__OFSUB__(v142, result))
                {
                  v145 += v142 - result;
                  goto LABEL_106;
                }

LABEL_184:
                __break(1u);
                goto LABEL_185;
              }

LABEL_181:
              __break(1u);
              goto LABEL_182;
            }

            v119 = v107;
            v120 = v107 >> 32;
            v121 = v120 - v119;
            if (v120 >= v119)
            {
              sub_2259CB710(v207, v208);
              v122 = sub_225CCCA44();
              if (!v122)
              {
LABEL_79:
                v123 = sub_225CCCA64();
                if (v123 >= v121)
                {
                  v124 = v121;
                }

                else
                {
                  v124 = v123;
                }

                v125 = (v124 + v122);
                if (v122)
                {
                  v111 = v125;
                }

                else
                {
                  v111 = 0;
                }

                v110 = v122;
                goto LABEL_87;
              }

              result = sub_225CCCA74();
              if (!__OFSUB__(v119, result))
              {
                v122 += v119 - result;
                goto LABEL_79;
              }

LABEL_180:
              __break(1u);
              goto LABEL_181;
            }

            __break(1u);
          }

          __break(1u);
          goto LABEL_179;
        }

        v97 = sub_225CCCA74();
        if (!__OFSUB__(v95, v97))
        {
          v92 += v95 - v97;
          goto LABEL_52;
        }

LABEL_176:
        __break(1u);
      }

LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    v65 = v54;
    v66 = v54 >> 32;
    v64 = v66 - v65;
    if (v66 >= v65)
    {
      sub_2259CB710(v216, v218);
      v61 = sub_225CCCA44();
      if (!v61)
      {
LABEL_24:
        v68 = sub_225CCCA64();
        if (v68 >= v64)
        {
          v69 = v64;
        }

        else
        {
          v69 = v68;
        }

        v70 = (v69 + v61);
        if (v61)
        {
          v58 = v70;
        }

        else
        {
          v58 = 0;
        }

        v57 = v61;
        goto LABEL_32;
      }

      v67 = sub_225CCCA74();
      if (!__OFSUB__(v65, v67))
      {
        v61 += v65 - v67;
        goto LABEL_24;
      }

LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  __break(1u);
  v163 = sub_225B29AA0((v228 > 1), 0, 1, v30);
  if (v219)
  {
    v46 = 858;
  }

  else
  {
    v46 = 23;
  }

  *(v163 + 2) = 0;
  v47 = &v163[56 * v27];
  *(v47 + 4) = v227;
  *(v47 + 5) = v29;
  *(v47 + 6) = 0xD00000000000001ELL;
  *(v47 + 7) = 0x8000000225D25030;
  *(v47 + 8) = 0xD00000000000002CLL;
  *(v47 + 9) = 0x8000000225D25430;
  *(v47 + 10) = 99;
  *v26 = v46;
  *(v26 + 8) = v163;
  *(v26 + 16) = v227;
  *(v26 + 24) = v29;
  *(v26 + 32) = v1;
  *(v26 + 40) = 0;
  swift_willThrow();

  v48 = *(v229 + 8);
LABEL_7:

  return v48();
}

uint64_t sub_225BF9A0C(uint64_t a1)
{
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v51 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v44 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v54 = a1;

  sub_2259BE4EC(&unk_2838FFE40);
  v15 = v54;
  v54 = v12;
  v55 = v13;
  v56 = v14;
  v16 = sub_2259D8490(v15);
  v18 = v17;

  v19 = sub_225BFF2E4(v16, v18);
  result = sub_2259BEF00(v16, v18);
  v57 = v2;
  if (!v2)
  {
    v21 = v11;
    v47 = v14;
    v48 = v13;
    v22 = v52;
    v49 = v12;
    v50 = v19;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v23 = off_28105B918;
    v24 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v25 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v25));
    v26 = *(v53 + 2);
    v44[1] = v53 + 16;
    v45 = v24;
    v44[0] = v26;
    v26(v21, &v23[v24], v22);
    v46 = v25;
    os_unfair_lock_unlock(&v23[v25]);
    v27 = sub_225CCD934();
    v28 = sub_225CCECF4();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v49;
    if (v29)
    {
      v31 = v49;
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2259A7000, v27, v28, "Generated 3DES key", v32, 2u);
      v33 = v32;
      v30 = v31;
      v22 = v52;
      MEMORY[0x22AA6F950](v33, -1, -1);
    }

    v34 = *(v53 + 1);
    v34(v21, v22);
    v54 = a1;

    sub_2259BE4EC(&unk_2838FFE68);
    v35 = v54;
    v54 = v30;
    v55 = v48;
    v56 = v47;
    v36 = sub_2259D8490(v35);
    v38 = v37;

    v39 = v57;
    sub_225BFF9F4(v36, v38);
    v57 = v39;
    if (v39)
    {

      return sub_2259BEF00(v36, v38);
    }

    else
    {
      v53 = v34;
      sub_2259BEF00(v36, v38);
      v40 = v46;
      os_unfair_lock_lock(&v23[v46]);
      (v44[0])(v51, &v23[v45], v22);
      os_unfair_lock_unlock(&v23[v40]);
      v41 = sub_225CCD934();
      v42 = sub_225CCECF4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_2259A7000, v41, v42, "Generated MAC key", v43, 2u);
        MEMORY[0x22AA6F950](v43, -1, -1);
      }

      v53(v51, v22);
      return v50;
    }
  }

  return result;
}

void sub_225BF9E30(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t *a3@<X8>)
{
  v4 = v3;
  v126 = a3;
  v127 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v130 = &v124 - v8;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v132 = a1;

  v15 = 0;
  while (1)
  {
    if (!v12)
    {
      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v16 >= v13)
        {

          v137 = 0;
          v132 = 0;
          v133 = 0;
          v134 = 0xF000000000000000;
          v129 = 0xF000000000000000;
          v131 = 0xF000000000000000;
          v127 = 0;
          v128 = 0xF000000000000000;
          goto LABEL_21;
        }

        v12 = *(v9 + 8 * v16);
        ++v15;
        if (v12)
        {
          v15 = v16;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_10:
    v17 = (v15 << 10) | (16 * __clz(__rbit64(v12)));
    v18 = (*(v132 + 48) + v17);
    v20 = *v18;
    v19 = v18[1];
    v21 = (*(v132 + 56) + v17);
    v23 = *v21;
    v22 = v21[1];
    swift_bridgeObjectRetain_n();

    v24 = sub_225C11E24(v20, v19);
    if (v4)
    {

      return;
    }

    v131 = v23;
    v133 = v22;
    v134 = 0;
    v137 = v19;
    if (v24)
    {
      v25 = v24[16];
      v26 = v24[17];
      v27 = v24[18];
      v28 = v24[19];

      if (!v25 && v26 == 130 && (v27 | v28) == 0)
      {
        break;
      }
    }

    v12 &= v12 - 1;

    v4 = v134;
  }

  v13 = v137;

  v30 = v134;
  v14 = sub_225C11E24(v20, v13);
  v12 = v30;
  if (v30)
  {
LABEL_19:

    return;
  }

LABEL_31:
  if (!v14 || (v51 = *(v14 + 24), v50 = *(v14 + 32), v52 = v14, sub_2259CB6FC(v51, v50), , v50 >> 60 == 15))
  {
    v53 = 0;
    v54 = 0;
    v13 = 0;
    v55 = 0xF000000000000000;
    v56 = 0xF000000000000000;
    v57 = 0xF000000000000000;
    goto LABEL_34;
  }

  v57 = sub_225CCCF54();
  v61 = v60;
  v62 = sub_225BFABB8(v57, v60, v127);
  if (v12)
  {
    sub_2259BEF00(v57, v61);
    sub_2259B97A8(v51, v50);
    goto LABEL_19;
  }

  v71 = sub_225C0F394(v62, v63);
  v73 = *(v71 + 16);
  if (v73 < 8)
  {
    __break(1u);
    goto LABEL_70;
  }

  v52 = v71;
  v134 = v57;

  sub_2259D2AD0(v74, (v74 + 32), 0, 17);
  v73 = *(v52 + 16);
  if (v73 < 0x10)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v13 = v75;
  v57 = v76;
  v132 = v61;

  sub_2259D2AD0(v77, (v52 + 32), 8, 33);
  v73 = *(v52 + 16);
  if (v73 < 0x20)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    v72 = sub_225B29AA0((v73 > 1), v12, 1, v72);
LABEL_61:
    *(v72 + 2) = v12;
    v111 = &v72[56 * v52];
    *(v111 + 4) = 0xD000000000000023;
    *(v111 + 5) = v51;
    *(v111 + 6) = 0xD00000000000001ELL;
    *(v111 + 7) = v132;
    *(v111 + 8) = 0xD00000000000001BLL;
    *(v111 + 9) = v129;
    *(v111 + 10) = 147;
    *v61 = v9;
    *(v61 + 8) = v72;
    *(v61 + 16) = 0xD000000000000023;
    *(v61 + 24) = v51;
    *(v61 + 32) = v57;
    *(v61 + 40) = 0;
    swift_willThrow();
    sub_2259B97A8(v137, v134);
    sub_2259B97A8(v13, v128);
    v48 = v133;
    v49 = v131;
    goto LABEL_28;
  }

  v54 = v78;
  v56 = v79;
  sub_2259D2AD0(v52, (v52 + 32), 16, 65);
  v53 = v80;
  v55 = v81;
  sub_2259BEF00(v134, v132);
  sub_2259B97A8(v51, v50);
LABEL_34:

  PassportResponseAPDU.init(from:)(&v135);
  v132 = v53;
  v129 = v55;
  if (v12)
  {

    v58 = 0;
    v59 = 0xF000000000000000;
    goto LABEL_47;
  }

  v64 = v136;
  if (v136 >> 60 == 15)
  {
    v58 = 0;
    v59 = 0xF000000000000000;
    goto LABEL_47;
  }

  v65 = v135;
  v66 = sub_225CCCF54();
  v68 = v67;
  v69 = sub_225BFABB8(v66, v67, v127);
  v134 = 0;
  v82 = sub_225C0F394(v69, v70);
  v84 = *(v82 + 16);
  if (v84 < 0x20)
  {
    __break(1u);
    goto LABEL_74;
  }

  sub_2259D2AD0(v82, (v82 + 32), 16, 65);
  v137 = v85;
  v87 = v86;
  sub_2259BEF00(v66, v68);
  sub_2259B97A8(v65, v64);
  v59 = v87;
  v58 = v137;
  v53 = v132;
  v55 = v129;
LABEL_47:
  v128 = v57;
  if (v57 >> 60 == 15)
  {
    v133 = v54;
    v134 = v59;
    v137 = v58;
    v131 = v56;
    v127 = v13;
LABEL_21:
    v125 = 0x8000000225D250A0;
    v126 = 0x8000000225D25030;
    v31 = MEMORY[0x277D84F90];
    v32 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v34 = v33;
    v35 = sub_225CCE954();
    v36 = *(v35 - 8);
    v37 = v130;
    (*(v36 + 56))(v130, 1, 1, v35);
    LODWORD(v35) = (*(v36 + 48))(v37, 1, v35);
    sub_2259DB318(v37);
    if (v35)
    {
      v38 = 900;
    }

    else
    {
      v38 = 23;
    }

    v39 = sub_225B2C374(v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v135 = v39;
    sub_225B2C4A0(v32, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v135);

    v41 = v135;
    v42 = sub_225B29AA0(0, 1, 1, v31);
    v44 = *(v42 + 2);
    v43 = *(v42 + 3);
    if (v44 >= v43 >> 1)
    {
      v42 = sub_225B29AA0((v43 > 1), v44 + 1, 1, v42);
    }

    v45 = v132;
    v46 = v129;
    *(v42 + 2) = v44 + 1;
    v47 = &v42[56 * v44];
    *(v47 + 4) = 0xD000000000000019;
    *(v47 + 5) = 0x8000000225D25080;
    *(v47 + 6) = 0xD00000000000001ELL;
    *(v47 + 7) = v126;
    *(v47 + 8) = 0xD00000000000001BLL;
    *(v47 + 9) = v125;
    *(v47 + 10) = 139;
    *v34 = v38;
    *(v34 + 8) = v42;
    *(v34 + 16) = 0xD000000000000019;
    *(v34 + 24) = 0x8000000225D25080;
    *(v34 + 32) = v41;
    *(v34 + 40) = 0;
    swift_willThrow();
    sub_2259B97A8(v137, v134);
    sub_2259B97A8(v45, v46);
    sub_2259B97A8(v133, v131);
    v48 = v127;
LABEL_27:
    v49 = v128;
LABEL_28:
    sub_2259B97A8(v48, v49);
    return;
  }

  if (v56 >> 60 == 15)
  {
    v137 = v58;
    v133 = 0x8000000225D25030;
    v134 = v59;
    v131 = 0x8000000225D250A0;
    v88 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v90 = v89;
    v91 = sub_225CCE954();
    v92 = *(v91 - 8);
    v93 = v130;
    (*(v92 + 56))(v130, 1, 1, v91);
    LODWORD(v91) = (*(v92 + 48))(v93, 1, v91);
    sub_2259DB318(v93);
    if (v91)
    {
      v94 = 899;
    }

    else
    {
      v94 = 23;
    }

    v95 = MEMORY[0x277D84F90];
    v96 = sub_225B2C374(MEMORY[0x277D84F90]);
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v135 = v96;
    sub_225B2C4A0(v88, sub_225B2AC40, 0, v97, &v135);

    v98 = v135;
    v99 = sub_225B29AA0(0, 1, 1, v95);
    v101 = *(v99 + 2);
    v100 = *(v99 + 3);
    if (v101 >= v100 >> 1)
    {
      v99 = sub_225B29AA0((v100 > 1), v101 + 1, 1, v99);
    }

    *(v99 + 2) = v101 + 1;
    v102 = &v99[56 * v101];
    *(v102 + 4) = 0xD000000000000017;
    *(v102 + 5) = 0x8000000225D250C0;
    *(v102 + 6) = 0xD00000000000001ELL;
    *(v102 + 7) = v133;
    *(v102 + 8) = 0xD00000000000001BLL;
    *(v102 + 9) = v131;
    *(v102 + 10) = 143;
    *v90 = v94;
    *(v90 + 8) = v99;
    *(v90 + 16) = 0xD000000000000017;
    *(v90 + 24) = 0x8000000225D250C0;
    *(v90 + 32) = v98;
    *(v90 + 40) = 0;
    swift_willThrow();
    sub_2259B97A8(v137, v134);
    sub_2259B97A8(v132, v129);
    v48 = v13;
    goto LABEL_27;
  }

  if (v55 >> 60 == 15)
  {
    v133 = v54;
    v134 = v59;
    v137 = v58;
    v131 = v56;
    v51 = 0x8000000225D250E0;
    v132 = 0x8000000225D25030;
    v129 = 0x8000000225D250A0;
    v103 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v61 = v104;
    v105 = sub_225CCE954();
    v106 = *(v105 - 8);
    v107 = v130;
    (*(v106 + 56))(v130, 1, 1, v105);
    LODWORD(v105) = (*(v106 + 48))(v107, 1, v105);
    sub_2259DB318(v107);
    if (v105)
    {
      LOWORD(v9) = 902;
    }

    else
    {
      LOWORD(v9) = 23;
    }

    v108 = MEMORY[0x277D84F90];
    v109 = sub_225B2C374(MEMORY[0x277D84F90]);
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v135 = v109;
    sub_225B2C4A0(v103, sub_225B2AC40, 0, v110, &v135);

    v57 = v135;
    v72 = sub_225B29AA0(0, 1, 1, v108);
    v52 = *(v72 + 2);
    v73 = *(v72 + 3);
    v12 = v52 + 1;
    if (v52 < v73 >> 1)
    {
      goto LABEL_61;
    }

    goto LABEL_72;
  }

  if (v59 >> 60 == 15)
  {
    v131 = v56;
    v133 = v54;
    v127 = v13;
    v54 = 0x8000000225D25110;
    v137 = 0x8000000225D25030;
    v134 = 0x8000000225D250A0;
    v112 = MEMORY[0x277D84F90];
    v113 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v64 = v114;
    v115 = sub_225CCE954();
    v116 = *(v115 - 8);
    v117 = v130;
    (*(v116 + 56))(v130, 1, 1, v115);
    LODWORD(v115) = (*(v116 + 48))(v117, 1, v115);
    sub_2259DB318(v117);
    if (v115)
    {
      LOWORD(v66) = 901;
    }

    else
    {
      LOWORD(v66) = 23;
    }

    v118 = sub_225B2C374(v112);
    v119 = swift_isUniquelyReferenced_nonNull_native();
    v135 = v118;
    sub_225B2C4A0(v113, sub_225B2AC40, 0, v119, &v135);

    v57 = v135;
    v83 = sub_225B29AA0(0, 1, 1, v112);
    v65 = *(v83 + 2);
    v84 = *(v83 + 3);
    v12 = v65 + 1;
    if (v65 < v84 >> 1)
    {
LABEL_67:
      v120 = v127;
      v121 = v131;
      *(v83 + 2) = v12;
      v122 = &v83[56 * v65];
      *(v122 + 4) = 0xD000000000000021;
      *(v122 + 5) = v54;
      *(v122 + 6) = 0xD00000000000001ELL;
      *(v122 + 7) = v137;
      *(v122 + 8) = 0xD00000000000001BLL;
      *(v122 + 9) = v134;
      *(v122 + 10) = 151;
      *v64 = v66;
      *(v64 + 8) = v83;
      *(v64 + 16) = 0xD000000000000021;
      *(v64 + 24) = v54;
      *(v64 + 32) = v57;
      *(v64 + 40) = 0;
      swift_willThrow();
      sub_2259B97A8(v120, v128);
      sub_2259B97A8(v133, v121);
      sub_2259B97A8(v132, v129);
      return;
    }

LABEL_74:
    v83 = sub_225B29AA0((v84 > 1), v12, 1, v83);
    goto LABEL_67;
  }

  v123 = v126;
  *v126 = v13;
  v123[1] = v57;
  v123[2] = v54;
  v123[3] = v56;
  v123[4] = v53;
  v123[5] = v55;
  v123[6] = v58;
  v123[7] = v59;
}

uint64_t sub_225BFABB8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v64[5] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v60 = &v58 - v10;
  v11 = sub_225CCD954();
  v61 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64[3] = MEMORY[0x277CC9318];
  v64[4] = MEMORY[0x277CC9300];
  v64[0] = a1;
  v64[1] = a2;
  v15 = __swift_project_boxed_opaque_existential_1(v64, MEMORY[0x277CC9318]);
  v17 = *v15;
  v18 = v15[1];
  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v19 != 2)
    {
      memset(v62, 0, 14);
      sub_2259CB710(a1, a2);
      v20 = v62;
      v21 = v62;
      goto LABEL_24;
    }

    v23 = *(v17 + 16);
    v22 = *(v17 + 24);
    sub_2259CB710(a1, a2);
    a2 = v18 & 0x3FFFFFFFFFFFFFFFLL;
    v25 = sub_225CCCA44();
    if (v25)
    {
      a2 = v18 & 0x3FFFFFFFFFFFFFFFLL;
      v26 = sub_225CCCA74();
      v24 = v23 - v26;
      if (__OFSUB__(v23, v26))
      {
        __break(1u);
        goto LABEL_40;
      }

      v25 += v24;
    }

    v27 = __OFSUB__(v22, v23);
    v28 = v22 - v23;
    if (!v27)
    {
      v29 = sub_225CCCA64();
      if (v29 >= v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = v29;
      }

LABEL_19:
      v33 = (v30 + v25);
      if (v25)
      {
        v21 = v33;
      }

      else
      {
        v21 = 0;
      }

      v20 = v25;
      goto LABEL_24;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    v16 = sub_225B29AA0((v24 > 1), v28, 1, v16);
LABEL_34:
    *(v16 + 2) = v28;
    v54 = &v16[56 * v14];
    *(v54 + 4) = 0xD000000000000022;
    *(v54 + 5) = v11;
    v55 = v61;
    *(v54 + 6) = 0xD00000000000001ELL;
    *(v54 + 7) = v55;
    v56 = v59;
    *(v54 + 8) = 0xD00000000000002ALL;
    *(v54 + 9) = v56;
    *(v54 + 10) = 202;
    *a2 = v23;
    *(a2 + 8) = v16;
    *(a2 + 16) = 0xD000000000000022;
    *(a2 + 24) = v11;
    *(a2 + 32) = v18;
    *(a2 + 40) = 0;
    swift_willThrow();
    sub_2259BEF00(a3, v4);
    return a3;
  }

  if (v19)
  {
    v28 = v17;
    v24 = v17 >> 32;
    v23 = v24 - v28;
    if (v24 >= v28)
    {
      sub_2259CB710(a1, a2);
      v25 = sub_225CCCA44();
      if (!v25)
      {
        goto LABEL_16;
      }

      v31 = sub_225CCCA74();
      if (!__OFSUB__(v28, v31))
      {
        v25 += v28 - v31;
LABEL_16:
        v32 = sub_225CCCA64();
        if (v32 >= v23)
        {
          v30 = v23;
        }

        else
        {
          v30 = v32;
        }

        goto LABEL_19;
      }

LABEL_40:
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

  v62[0] = *v15;
  LOWORD(v62[1]) = v18;
  BYTE2(v62[1]) = BYTE2(v18);
  BYTE3(v62[1]) = BYTE3(v18);
  BYTE4(v62[1]) = BYTE4(v18);
  BYTE5(v62[1]) = BYTE5(v18);
  sub_2259CB710(a1, a2);
  v20 = v62;
  v21 = v62 + BYTE6(v18);
LABEL_24:
  sub_225B3D3E8(v20, v21, v63);
  v34 = v63[0];
  v35 = v63[1];
  __swift_destroy_boxed_opaque_existential_0(v64);
  a3 = sub_225C02CA4(v34, v35, a3, 1);
  v4 = v36;
  sub_2259BEF00(v34, v35);
  if (!v3)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v37 = off_28105B918;
    v38 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v39 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v39));
    v40 = v61;
    (*(v61 + 16))(v14, &v37[v38], v11);
    os_unfair_lock_unlock(&v37[v39]);
    v41 = sub_225CCD934();
    v42 = sub_225CCED34();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2259A7000, v41, v42, "Successfully decrypted response", v43, 2u);
      v44 = v43;
      v40 = v61;
      MEMORY[0x22AA6F950](v44, -1, -1);
    }

    (*(v40 + 8))(v14, v11);
    sub_2259CB710(a3, v4);
    v45 = *(sub_225C0F394(a3, v4) + 16);

    if (v45 < 0x20)
    {
      v11 = 0x8000000225D25140;
      v61 = 0x8000000225D25030;
      v58 = 0;
      v59 = 0x8000000225D25170;
      v46 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      a2 = v47;
      v48 = sub_225CCE954();
      v49 = *(v48 - 8);
      v50 = v60;
      (*(v49 + 56))(v60, 1, 1, v48);
      LODWORD(v48) = (*(v49 + 48))(v50, 1, v48);
      sub_2259DB318(v50);
      if (v48)
      {
        LOWORD(v23) = 903;
      }

      else
      {
        LOWORD(v23) = 23;
      }

      v51 = MEMORY[0x277D84F90];
      v52 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64[0] = v52;
      sub_225B2C4A0(v46, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v64);

      v18 = v64[0];
      v16 = sub_225B29AA0(0, 1, 1, v51);
      v14 = *(v16 + 2);
      v24 = *(v16 + 3);
      v28 = (v14 + 1);
      if (v14 < v24 >> 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }
  }

  return a3;
}

uint64_t sub_225BFB264(uint64_t a1, uint64_t a2)
{
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = *v2;
  *(v3 + 192) = *(v2 + 16);

  return MEMORY[0x2822009F8](sub_225BFB310, 0, 0);
}

uint64_t sub_225BFB310()
{
  v1 = *(v0 + 152);
  *(v0 + 80) = *(v1 + 72);
  *(v0 + 96) = *(v1 + 88);
  v20 = *(v1 + 72);
  v2 = MEMORY[0x277CC9318];
  v3 = MEMORY[0x277CC9300];
  *(v0 + 40) = MEMORY[0x277CC9318];
  *(v0 + 48) = v3;
  *(v0 + 16) = *(v1 + 88);
  v4 = __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v5 = *v4;
  v6 = v4[1];
  sub_225A0DD9C(v0 + 80, v0 + 112);
  sub_225A0DD9C(v0 + 96, v0 + 128);
  sub_225C0EA34(v5, v6);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  _s13CoreIDVShared19PassportCommandAPDUC20externalAuthenticateyAC10Foundation4DataVFZ_0(v20, *(&v20 + 1));
  v7 = PassportCommandAPDU.asData.getter();
  v9 = v8;

  v10 = sub_225C15D34(v7, v9, 1);
  v12 = v11;

  result = sub_2259BEF00(v7, v9);
  v14 = *(&v20 + 1) >> 62;
  if ((*(&v20 + 1) >> 62) > 1)
  {
    if (v14 != 2)
    {
      v15 = 0;
      goto LABEL_11;
    }

    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    v15 = v16 - v17;
    if (!__OFSUB__(v16, v17))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v14)
  {
    v15 = BYTE14(v20);
    goto LABEL_11;
  }

  if (__OFSUB__(DWORD1(v20), v20))
  {
    __break(1u);
    return result;
  }

  v15 = DWORD1(v20) - v20;
LABEL_11:
  v18 = sub_225BFB7DC(v10, v12, v15, *(v0 + 152));
  sub_2259BEF00(v10, v12);

  sub_2259BEF00(v20, *(&v20 + 1));

  v19 = *(v0 + 8);

  return v19(v18);
}

void *sub_225BFB7DC(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v291 = a4;
  v9 = sub_225CCD954();
  v288 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v287 = &v264 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v286 = &v264 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v264 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v282 = &v264 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v283 = &v264 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v285 = &v264 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v284 = &v264 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v264 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v38 = &v264 - v37;
  v39 = *v4;
  v289 = v4[1];
  v290 = v39;
  v40 = v4[2];
  sub_2259CB710(a1, a2);
  v41 = sub_225C0F394(a1, a2);
  v44 = *(v41 + 16);
  if (v44 != a3)
  {

    v292 = 0;
    v293 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000034, 0x8000000225D252D0);
    v295 = a3;
    v58 = sub_225CCF824();
    v59 = v38;
    MEMORY[0x22AA6CE70](v58);

    MEMORY[0x22AA6CE70](0x766965636572202CLL, 0xEC000000203A6465);
    v295 = v44;
    v60 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v60);

    v44 = v292;
    a3 = v293;
    v289 = 0x8000000225D25310;
    v290 = 0x8000000225D25030;
    v61 = MEMORY[0x277D84F90];
    v62 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v291 = swift_allocError();
    v40 = v63;
    v64 = sub_225CCE954();
    v65 = *(v64 - 8);
    (*(v65 + 56))(v59, 1, 1, v64);
    LODWORD(v64) = (*(v65 + 48))(v59, 1, v64);
    sub_2259DB318(v59);
    if (v64)
    {
      LOWORD(v9) = 859;
    }

    else
    {
      LOWORD(v9) = 23;
    }

    v66 = sub_225B2C374(v61);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v292 = v66;
    sub_225B2C4A0(v62, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v292);

    v38 = v292;
    v42 = sub_225B29AA0(0, 1, 1, v61);
    v34 = *(v42 + 2);
    v43 = *(v42 + 3);
    a2 = v34 + 1;
    if (v34 < v43 >> 1)
    {
      goto LABEL_9;
    }

    goto LABEL_76;
  }

  if (a3 < 0x28)
  {
    __break(1u);
LABEL_76:
    v42 = sub_225B29AA0((v43 > 1), a2, 1, v42);
LABEL_9:
    *(v42 + 2) = a2;
    v68 = &v42[56 * v34];
    *(v68 + 4) = v44;
    *(v68 + 5) = a3;
    v69 = v290;
    *(v68 + 6) = 0xD00000000000001ELL;
    *(v68 + 7) = v69;
    v70 = v289;
    *(v68 + 8) = 0xD000000000000042;
    *(v68 + 9) = v70;
    *(v68 + 10) = 217;
    *v40 = v9;
    *(v40 + 8) = v42;
    *(v40 + 16) = v44;
    *(v40 + 24) = a3;
    *(v40 + 32) = v38;
    *(v40 + 40) = 0;
    return swift_willThrow();
  }

  v278 = v19;
  v281 = v9;
  v280 = v38;
  v292 = v290;
  v293 = v289;
  *&v294 = v40;
  v45 = v41;
  swift_bridgeObjectRetain_n();
  sub_2259D2AD0(v45, (v45 + 32), 0, 65);
  v47 = v46;
  v49 = v48;
  v50 = swift_unknownObjectRetain();
  sub_2259D2AD0(v50, (v45 + 32), 32, 81);
  v52 = v51;
  v54 = v53;
  v55 = v40;
  v56 = sub_225BFD59C(v47, v49, v51, v53, v291);
  if (v5)
  {
    swift_bridgeObjectRelease_n();
    sub_2259BEF00(v52, v54);
    return sub_2259BEF00(v47, v49);
  }

  v71 = v56;
  v277 = 0;
  v276 = v55;
  v279 = v45;
  sub_2259BEF00(v52, v54);
  sub_2259BEF00(v47, v49);
  v72 = MEMORY[0x277D841D0];
  if ((v71 & 1) == 0)
  {

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v94 = off_28105B918;
    v95 = *(*off_28105B918 + *v72 + 16);
    v96 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v96));
    v97 = v287;
    v98 = v281;
    (*(v288 + 16))(v287, &v94[v95], v281);
    os_unfair_lock_unlock(&v94[v96]);
    v99 = sub_225CCD934();
    v100 = sub_225CCED04();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_2259A7000, v99, v100, "Computed MAC does not match response MAC", v101, 2u);
      MEMORY[0x22AA6F950](v101, -1, -1);
    }

    (*(v288 + 8))(v97, v98);
    v291 = 0x8000000225D25030;
    v102 = MEMORY[0x277D84F90];
    v103 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v105 = v104;
    v106 = sub_225CCE954();
    v107 = *(v106 - 8);
    v108 = v280;
    (*(v107 + 56))(v280, 1, 1, v106);
    LODWORD(v106) = (*(v107 + 48))(v108, 1, v106);
    sub_2259DB318(v108);
    if (v106)
    {
      v109 = 860;
    }

    else
    {
      v109 = 23;
    }

    v110 = sub_225B2C374(v102);
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v292 = v110;
    sub_225B2C4A0(v103, sub_225B2AC40, 0, v111, &v292);

    v112 = v292;
    v113 = sub_225B29AA0(0, 1, 1, v102);
    v115 = *(v113 + 2);
    v114 = *(v113 + 3);
    if (v115 >= v114 >> 1)
    {
      v113 = sub_225B29AA0((v114 > 1), v115 + 1, 1, v113);
    }

    *(v113 + 2) = v115 + 1;
    v116 = &v113[56 * v115];
    *(v116 + 4) = 0xD000000000000028;
    *(v116 + 5) = 0x8000000225D25360;
    v117 = v291;
    *(v116 + 6) = 0xD00000000000001ELL;
    *(v116 + 7) = v117;
    *(v116 + 8) = 0xD000000000000042;
    *(v116 + 9) = 0x8000000225D25310;
    *(v116 + 10) = 226;
    *v105 = v109;
    *(v105 + 8) = v113;
    *(v105 + 16) = 0xD000000000000028;
    *(v105 + 24) = 0x8000000225D25360;
    *(v105 + 32) = v112;
    *(v105 + 40) = 0;
    swift_willThrow();
    return swift_bridgeObjectRelease_n();
  }

  v73 = v277;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v74 = off_28105B918;
  v75 = *(*off_28105B918 + *v72 + 16);
  v76 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v76));
  v77 = v288;
  v78 = *(v288 + 16);
  v273 = v75;
  v274 = v288 + 16;
  v272 = v78;
  v78(v34, &v74[v75], v281);
  v287 = v74;
  v275 = v76;
  os_unfair_lock_unlock(&v74[v76]);
  v79 = sub_225CCD934();
  v80 = sub_225CCED34();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&dword_2259A7000, v79, v80, "Validated response MAC", v81, 2u);
    MEMORY[0x22AA6F950](v81, -1, -1);
  }

  v84 = *(v77 + 8);
  v83 = (v77 + 8);
  v82 = v84;
  v84(v34, v281);
  v85 = v279;
  v86 = swift_unknownObjectRetain();
  sub_2259D2AD0(v86, (v85 + 32), 0, 65);
  v88 = v87;
  v90 = v89;
  v91 = sub_225BFABB8(v87, v89, v291[6]);
  LOWORD(v93) = v73;
  if (v73)
  {

    sub_2259BEF00(v88, v90);
    v290 = 0;
    v83 = v73;
LABEL_62:
    v292 = 0;
    v293 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD00000000000002BLL, 0x8000000225D25390);
    v291 = v83;
    swift_getErrorValue();
    sub_225CCF904();
    v233 = v292;
    v232 = v293;
    v288 = 0x8000000225D25310;
    v289 = 0x8000000225D25030;
    v234 = MEMORY[0x277D84F90];
    v235 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v237 = v236;
    v238 = sub_225CCE954();
    v239 = *(v238 - 8);
    v240 = v280;
    (*(v239 + 56))(v280, 1, 1, v238);
    LODWORD(v238) = (*(v239 + 48))(v240, 1, v238);
    sub_2259DB318(v240);
    if (v238)
    {
      v241 = 0;
    }

    else
    {
      v241 = 23;
    }

    v242 = sub_225B2C374(v234);
    v243 = swift_isUniquelyReferenced_nonNull_native();
    v292 = v242;
    sub_225B2C4A0(v235, sub_225B2AC40, 0, v243, &v292);

    v244 = v292;
    v245 = sub_225B29AA0(0, 1, 1, v234);
    v247 = *(v245 + 2);
    v246 = *(v245 + 3);
    if (v247 >= v246 >> 1)
    {
      v245 = sub_225B29AA0((v246 > 1), v247 + 1, 1, v245);
    }

    *(v245 + 2) = v247 + 1;
    v248 = &v245[56 * v247];
    *(v248 + 4) = v233;
    *(v248 + 5) = v232;
    v249 = v289;
    *(v248 + 6) = 0xD00000000000001ELL;
    *(v248 + 7) = v249;
    v250 = v288;
    *(v248 + 8) = 0xD000000000000042;
    *(v248 + 9) = v250;
    *(v248 + 10) = 279;
    *v237 = v241;
    *(v237 + 8) = v245;
    *(v237 + 16) = v233;
    *(v237 + 24) = v232;
    *(v237 + 32) = v244;
    *(v237 + 40) = 0;
    swift_willThrow();

    return swift_bridgeObjectRelease_n();
  }

  v118 = v92;
  v269 = 0;
  v271 = v82;
  v288 = v83;
  v119 = v91;
  sub_2259BEF00(v88, v90);
  sub_2259CB710(v119, v118);
  v268 = v119;
  v120 = sub_225C0F394(v119, v118);
  if (v290 < 0)
  {
    __break(1u);
    goto LABEL_78;
  }

  v123 = 2 * v290;
  v122 = &v296;
  v83 = v281;
  v73 = v291;
  if (__OFADD__(v290, v290))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v123 < v290)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v124 = v120;
  v270 = v118;
  v122 = *(v120 + 16);
  v267 = 2 * v290;
  if (v122 < v123)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    v121 = sub_225B29AA0((v122 > 1), v88, 1, v121);
LABEL_51:
    *(v121 + 2) = v88;
    v209 = &v121[56 * v82];
    v210 = 0xD00000000000001BLL;
    *(v209 + 4) = 0xD00000000000001BLL;
    *(v209 + 5) = v73;
    v211 = v291;
    *(v209 + 6) = 0xD00000000000001ELL;
    *(v209 + 7) = v211;
    *(v209 + 8) = 0xD000000000000042;
    *(v209 + 9) = v118;
    v212 = 247;
LABEL_58:
    *(v209 + 10) = v212;
    LOWORD(v90->isa) = v93;
    v90[1].isa = v121;
    v90[2].isa = v210;
    v90[3].isa = v73;
    v90[4].isa = v119;
    v90[5].isa = 0;
    swift_willThrow();
    sub_2259BEF00(v268, v270);
    swift_bridgeObjectRelease_n();
    v290 = 0;
    goto LABEL_62;
  }

  v125 = (2 * v290) | 1;
  v127 = *v291;
  v126 = v291[1];
  v128 = v290;
  swift_bridgeObjectRetain_n();
  sub_2259CB710(v127, v126);
  v266 = v125;
  sub_2259D2AD0(v124, (v124 + 32), 0, v125);
  v130 = v129;
  v132 = v131;
  v133 = sub_2259D8228(v127, v126, v129, v131);
  sub_2259BEF00(v130, v132);
  v277 = v124;
  if ((v133 & 1) == 0)
  {
    sub_2259BEF00(v127, v126);
    v168 = v287;
    v169 = v275;
    os_unfair_lock_lock(&v287[v275]);
    v170 = v286;
    v171 = v83;
    v272(v286, &v168[v273], v83);
    os_unfair_lock_unlock(&v168[v169]);

    sub_225C017A4(v73, &v292);
    v172 = sub_225CCD934();
    v173 = sub_225CCED04();
    sub_225C00E8C(v73);

    if (os_log_type_enabled(v172, v173))
    {
      v174 = v170;
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v292 = v176;
      *v175 = 136643075;
      v177 = sub_225CCCEE4();
      v179 = sub_2259BE198(v177, v178, &v292);

      *(v175 + 4) = v179;
      *(v175 + 12) = 2085;
      v180 = sub_225CCF0B4();
      v83 = v171;
      v182 = sub_2259BE198(v180, v181, &v292);

      *(v175 + 14) = v182;
      _os_log_impl(&dword_2259A7000, v172, v173, "Unexpected value for RND.IC in response expected: %{sensitive}s, found: %{sensitive}s", v175, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA6F950](v176, -1, -1);
      MEMORY[0x22AA6F950](v175, -1, -1);

      v183 = v174;
    }

    else
    {

      v183 = v170;
    }

    v271(v183, v83);
    v73 = 0x8000000225D253C0;
    v291 = 0x8000000225D25030;
    v118 = 0x8000000225D25310;
    v201 = MEMORY[0x277D84F90];
    v202 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v83 = swift_allocError();
    v90 = v203;
    v204 = sub_225CCE954();
    v205 = *(v204 - 8);
    v206 = v280;
    (*(v205 + 56))(v280, 1, 1, v204);
    LODWORD(v204) = (*(v205 + 48))(v206, 1, v204);
    sub_2259DB318(v206);
    if (v204)
    {
      LOWORD(v93) = 860;
    }

    else
    {
      LOWORD(v93) = 23;
    }

    v207 = sub_225B2C374(v201);
    v208 = swift_isUniquelyReferenced_nonNull_native();
    v292 = v207;
    sub_225B2C4A0(v202, sub_225B2AC40, 0, v208, &v292);

    v119 = v292;
    v121 = sub_225B29AA0(0, 1, 1, v201);
    v82 = *(v121 + 2);
    v122 = *(v121 + 3);
    v88 = v82 + 1;
    if (v82 < v122 >> 1)
    {
      goto LABEL_51;
    }

    goto LABEL_81;
  }

  v265 = v127;
  v266 = v126;
  v93 = (2 * v267) | 1;
  v135 = v73[2];
  v134 = v73[3];

  sub_2259CB710(v135, v134);
  sub_2259D2AD0(v124, (v124 + 32), v128, v93);
  v137 = v136;
  v139 = v138;
  v286 = v134;
  v119 = sub_2259D8228(v135, v134, v136, v138);
  sub_2259BEF00(v137, v139);
  if ((v119 & 1) == 0)
  {
    sub_2259BEF00(v135, v286);
    sub_2259BEF00(v265, v266);
    v184 = v287;
    v185 = v275;
    os_unfair_lock_lock(&v287[v275]);
    v186 = v278;
    v187 = v281;
    v272(v278, &v184[v273], v281);
    os_unfair_lock_unlock(&v184[v185]);

    sub_225C017A4(v73, &v292);
    v188 = sub_225CCD934();
    v189 = sub_225CCED04();
    sub_225C00E8C(v73);

    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      v292 = v191;
      *v190 = 136643075;
      v192 = sub_225CCCEE4();
      v194 = sub_2259BE198(v192, v193, &v292);

      *(v190 + 4) = v194;
      *(v190 + 12) = 2085;
      v195 = sub_225CCF0B4();
      v197 = v186;
      v198 = sub_2259BE198(v195, v196, &v292);

      *(v190 + 14) = v198;
      _os_log_impl(&dword_2259A7000, v188, v189, "Unexpected value for RND.IFD in response expected: %{sensitive}s, found: %{sensitive}s", v190, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA6F950](v191, -1, -1);
      MEMORY[0x22AA6F950](v190, -1, -1);

      v199 = v197;
      v200 = v281;
    }

    else
    {

      v199 = v186;
      v200 = v187;
    }

    v271(v199, v200);
    v73 = 0x8000000225D253E0;
    v291 = 0x8000000225D25030;
    v146 = 0x8000000225D25310;
    v213 = MEMORY[0x277D84F90];
    v214 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v83 = swift_allocError();
    v90 = v215;
    v216 = sub_225CCE954();
    v217 = *(v216 - 8);
    v218 = v280;
    (*(v217 + 56))(v280, 1, 1, v216);
    LODWORD(v216) = (*(v217 + 48))(v218, 1, v216);
    sub_2259DB318(v218);
    if (v216)
    {
      LOWORD(v93) = 860;
    }

    else
    {
      LOWORD(v93) = 23;
    }

    v219 = sub_225B2C374(v213);
    v220 = swift_isUniquelyReferenced_nonNull_native();
    v292 = v219;
    sub_225B2C4A0(v214, sub_225B2AC40, 0, v220, &v292);

    v119 = v292;
    v121 = sub_225B29AA0(0, 1, 1, v213);
    v142 = *(v121 + 2);
    v145 = *(v121 + 3);
    v143 = v142 + 1;
    if (v142 < v145 >> 1)
    {
      goto LABEL_57;
    }

    goto LABEL_83;
  }

  v278 = v135;

  v140 = v287;
  v141 = v275;
  os_unfair_lock_lock(&v287[v275]);
  v142 = v284;
  v272(v284, &v140[v273], v281);
  os_unfair_lock_unlock(&v140[v141]);
  v90 = sub_225CCD934();
  v143 = sub_225CCED34();
  if (os_log_type_enabled(v90, v143))
  {
    v119 = swift_slowAlloc();
    *v119 = 0;
    _os_log_impl(&dword_2259A7000, v90, v143, "Verified RND.IC and RND.IFD", v119, 2u);
    MEMORY[0x22AA6F950](v119, -1, -1);
  }

  v144 = v271;
  result = (v271)(v142, v281);
  v83 = v267;
  v145 = v289 + v267;
  v146 = v285;
  if (__OFADD__(v267, v289))
  {
    __break(1u);
LABEL_83:
    v121 = sub_225B29AA0((v145 > 1), v143, 1, v121);
LABEL_57:
    *(v121 + 2) = v143;
    v209 = &v121[56 * v142];
    v210 = 0xD00000000000001CLL;
    *(v209 + 4) = 0xD00000000000001CLL;
    *(v209 + 5) = v73;
    v221 = v291;
    *(v209 + 6) = 0xD00000000000001ELL;
    *(v209 + 7) = v221;
    *(v209 + 8) = 0xD000000000000042;
    *(v209 + 9) = v146;
    v212 = 253;
    goto LABEL_58;
  }

  v147 = v278;
  if (v145 < v267)
  {
    __break(1u);
    goto LABEL_85;
  }

  if (v277[2] < v145)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v148 = (2 * v145) | 1;
  v149 = v287;
  v150 = v275;
  os_unfair_lock_lock(&v287[v275]);
  v272(v146, &v149[v273], v281);
  os_unfair_lock_unlock(&v149[v150]);
  v151 = sub_225CCD934();
  v152 = sub_225CCED34();
  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    *v153 = 0;
    _os_log_impl(&dword_2259A7000, v151, v152, "Successfully decrypted response and retrieve kIC", v153, 2u);
    v154 = v153;
    v73 = v291;
    MEMORY[0x22AA6F950](v154, -1, -1);
  }

  v155 = v146;
  v156 = v281;
  v144(v155, v281);
  v157 = v73[4];
  v158 = v73[5];
  v159 = v277;
  v160 = swift_unknownObjectRetain();
  sub_2259D2AD0(v160, v159 + 4, v83, v148);
  v162 = v161;
  v164 = v163;
  v165 = v269;
  v166 = Data.xor(with:)(v161, v163, v157, v158);
  v83 = v165;
  if (v165)
  {
    sub_2259BEF00(v147, v286);
    sub_2259BEF00(v265, v266);
    sub_2259BEF00(v268, v270);
    sub_2259BEF00(v162, v164);
    swift_bridgeObjectRelease_n();
    v290 = 0;
    goto LABEL_62;
  }

  v222 = v166;
  v223 = v167;
  sub_2259BEF00(v162, v164);
  v224 = v287;
  v225 = v275;
  os_unfair_lock_lock(&v287[v275]);
  v226 = v283;
  v272(v283, &v224[v273], v156);
  os_unfair_lock_unlock(&v224[v225]);
  v227 = sub_225CCD934();
  v228 = sub_225CCED34();
  if (os_log_type_enabled(v227, v228))
  {
    v229 = swift_slowAlloc();
    *v229 = 0;
    _os_log_impl(&dword_2259A7000, v227, v228, "Generated seed for session keys", v229, 2u);
    MEMORY[0x22AA6F950](v229, -1, -1);
  }

  v271(v226, v281);
  v292 = v290;
  v293 = v289;
  *&v294 = v276;
  sub_2259CB710(v222, v223);
  v230 = sub_225C0F394(v222, v223);
  v231 = sub_225BF9A0C(v230);
  v290 = v251;
  v291 = v252;
  v289 = v231;

  result = sub_225C0F394(v265, v266);
  if (result[2] < 8uLL)
  {
    goto LABEL_86;
  }

  v253 = result;
  result = sub_225C0F394(v278, v286);
  if (result[2] < 8uLL)
  {
LABEL_87:
    __break(1u);
    return result;
  }

  v292 = v253;
  v293 = (v253 + 32);
  v294 = xmmword_225CFA1B0;
  sub_225C01414(result, (result + 4), 4, 0x11uLL);

  sub_2259D2AD0(v292, v293, v294, *(&v294 + 1));
  v255 = v254;
  v257 = v256;
  v258 = v287;
  v259 = v275;
  os_unfair_lock_lock(&v287[v275]);
  v272(v282, &v258[v273], v281);
  os_unfair_lock_unlock(&v258[v259]);
  v260 = sub_225CCD934();
  v261 = sub_225CCED34();
  if (os_log_type_enabled(v260, v261))
  {
    v262 = swift_slowAlloc();
    *v262 = 0;
    _os_log_impl(&dword_2259A7000, v260, v261, "Generated send sequence counter", v262, 2u);
    MEMORY[0x22AA6F950](v262, -1, -1);

    sub_2259BEF00(v222, v223);
    swift_bridgeObjectRelease_n();
    sub_2259BEF00(v268, v270);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    swift_bridgeObjectRelease_n();
    sub_2259BEF00(v268, v270);
    swift_bridgeObjectRelease_n();
    sub_2259BEF00(v222, v223);
  }

  v271(v282, v281);
  type metadata accessor for SecureMessaging();
  result = swift_allocObject();
  v263 = v290;
  result[2] = v289;
  result[3] = v263;
  result[4] = v291;
  result[5] = v255;
  result[6] = v257;
  result[7] = 16;
  return result;
}

unint64_t sub_225BFD59C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v37 = a3;
  v38 = a4;
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 16);
  sub_2259CB710(a1, a2);
  v39 = sub_225C0F394(a1, a2);
  sub_2259BE4EC(&unk_2838FFF80);
  v16 = v39;
  v17 = *(v39 + 16);
  if ((v17 & 7) != 0)
  {
    v18 = &unk_2838FF000;
    while (1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 24) >> 1, v20 <= v17))
      {
        v16 = sub_2259BE5D8(isUniquelyReferenced_nonNull_native, v17 + 1, 1, v16);
        v20 = *(v16 + 24) >> 1;
      }

      v21 = *(v16 + 16);
      if (v20 <= v21)
      {
        break;
      }

      *(v16 + v21 + 32) = byte_2838FFFC8;
      v17 = v21 + 1;
      *(v16 + 16) = v21 + 1;
      if (((v21 + 1) & 7) == 0)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_8:
  v17 = sub_2259D8490(v16);
  v18 = v22;

  v23 = sub_225C0187C(v17, v18, *(a5 + 56), *(a5 + 64), v15);
  if (!v6)
  {
    v35 = v23;
    v36 = v24;
    if (qword_28105B910 == -1)
    {
LABEL_11:
      v25 = off_28105B918;
      v26 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v27 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v27));
      (*(v11 + 16))(v14, &v25[v26], v10);
      os_unfair_lock_unlock(&v25[v27]);
      v34 = v10;
      v28 = v11;
      v29 = v37;
      v16 = v38;
      sub_2259CB710(v37, v38);
      v30 = v35;
      v31 = v36;
      sub_2259CB710(v35, v36);
      sub_225B414C4(v14, v29, v16, v30, v31);
      sub_2259BEF00(v30, v31);
      sub_2259BEF00(v29, v16);
      (*(v28 + 8))(v14, v34);
      LOBYTE(v16) = sub_2259D8228(v29, v16, v30, v31);
      sub_2259BEF00(v30, v31);
      sub_2259BEF00(v17, v18);
      return v16 & 1;
    }

LABEL_14:
    swift_once();
    goto LABEL_11;
  }

  sub_2259BEF00(v17, v18);
  return v16 & 1;
}

uint64_t sub_225BFD8B4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_225CCF204();

  strcpy(v15, "ResponseMAC: ");
  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259CB764();
  v8 = sub_225CCE384();
  v10 = v9;

  MEMORY[0x22AA6CE70](v8, v10);

  MEMORY[0x22AA6CE70](0x657475706D6F430ALL, 0xEE00203A43414D64);
  sub_225B34448(a3, a4);
  v11 = sub_225CCE384();
  v13 = v12;

  MEMORY[0x22AA6CE70](v11, v13);

  return v15[0];
}

uint64_t BACManager.deriveSessionKeys(with:dob:doe:tagOperations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[33] = a6;
  v8[34] = a7;
  v8[31] = a4;
  v8[32] = a5;
  v8[29] = a2;
  v8[30] = a3;
  v8[28] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v10 = swift_task_alloc();
  v11 = *v7;
  v12 = v7[1];
  v8[35] = v10;
  v8[36] = v11;
  v13 = v7[2];
  v8[37] = v12;
  v8[38] = v13;
  v8[15] = v11;
  v8[16] = v12;
  v8[17] = v13;
  v14 = swift_task_alloc();
  v8[39] = v14;
  *v14 = v8;
  v14[1] = sub_225BFDB34;

  return sub_225BF7954(a7);
}

uint64_t sub_225BFDB34(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  *(v5 + 320) = a1;
  *(v5 + 328) = a2;
  *(v5 + 336) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_225BFE028, 0, 0);
  }

  else
  {
    *(v5 + 168) = *(v5 + 288);
    *(v5 + 184) = *(v5 + 304);
    v6 = swift_task_alloc();
    *(v5 + 344) = v6;
    *v6 = v5;
    v6[1] = sub_225BFDCEC;
    v7 = *(v5 + 256);
    v8 = *(v5 + 264);
    v9 = *(v5 + 240);
    v10 = *(v5 + 248);
    v11 = *(v5 + 224);
    v12 = *(v5 + 232);

    return sub_225BF8344(v5 + 16, v11, v12, v9, v10, v7, v8, a1);
  }
}

uint64_t sub_225BFDCEC()
{
  v2 = *v1;
  *(v2 + 352) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225BFE2E4, 0, 0);
  }

  else
  {
    *(v2 + 192) = *(v2 + 288);
    *(v2 + 208) = *(v2 + 304);
    v3 = swift_task_alloc();
    *(v2 + 360) = v3;
    *v3 = v2;
    v3[1] = sub_225BFDE74;
    v4 = *(v2 + 272);

    return sub_225BFB264(v2 + 16, v4);
  }
}

uint64_t sub_225BFDE74(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v5 = sub_225BFE5A8;
  }

  else
  {
    *(v4 + 376) = a1;
    v5 = sub_225BFDF9C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225BFDF9C()
{
  v1 = v0[40];
  v2 = v0[41];
  sub_225C00E8C((v0 + 2));
  sub_2259BEF00(v1, v2);

  v3 = v0[1];
  v4 = v0[47];

  return v3(v4);
}

uint64_t sub_225BFE028()
{
  v22 = v0;
  v1 = v0[42];
  v2 = v0[35];
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD00000000000001FLL, 0x8000000225D25010);
  v20 = v1;
  swift_getErrorValue();
  sub_225CCF904();
  v3 = MEMORY[0x277D84F90];
  v4 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v6 = v5;
  v7 = sub_225CCE954();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v2, 1, 1, v7);
  v9 = (*(v8 + 48))(v2, 1, v7);
  sub_2259DB318(v2);

  v10 = sub_225B2C374(v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21[0] = v10;
  sub_225B2C4A0(v4, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v21);

  v12 = v21[0];
  v13 = sub_225B29AA0(0, 1, 1, v3);
  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_225B29AA0((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[56 * v15];
  *(v16 + 4) = 0;
  *(v16 + 5) = 0xE000000000000000;
  if (v9)
  {
    v17 = 0;
  }

  else
  {
    v17 = 23;
  }

  *(v16 + 6) = 0xD00000000000001ELL;
  *(v16 + 7) = 0x8000000225D25030;
  *(v16 + 8) = 0xD00000000000002ELL;
  *&v13[56 * v15 + 72] = 0x8000000225D25050;
  *(v16 + 10) = 293;
  *v6 = v17;
  *(v6 + 8) = v13;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  *(v6 + 32) = v12;
  *(v6 + 40) = 0;
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_225BFE2E4()
{
  v22 = v0;
  sub_2259BEF00(v0[40], v0[41]);
  v1 = v0[44];
  v2 = v0[35];
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD00000000000001FLL, 0x8000000225D25010);
  v20 = v1;
  swift_getErrorValue();
  sub_225CCF904();
  v3 = MEMORY[0x277D84F90];
  v4 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v6 = v5;
  v7 = sub_225CCE954();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v2, 1, 1, v7);
  v9 = (*(v8 + 48))(v2, 1, v7);
  sub_2259DB318(v2);

  v10 = sub_225B2C374(v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21[0] = v10;
  sub_225B2C4A0(v4, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v21);

  v12 = v21[0];
  v13 = sub_225B29AA0(0, 1, 1, v3);
  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_225B29AA0((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[56 * v15];
  *(v16 + 4) = 0;
  *(v16 + 5) = 0xE000000000000000;
  if (v9)
  {
    v17 = 0;
  }

  else
  {
    v17 = 23;
  }

  *(v16 + 6) = 0xD00000000000001ELL;
  *(v16 + 7) = 0x8000000225D25030;
  *(v16 + 8) = 0xD00000000000002ELL;
  *&v13[56 * v15 + 72] = 0x8000000225D25050;
  *(v16 + 10) = 293;
  *v6 = v17;
  *(v6 + 8) = v13;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  *(v6 + 32) = v12;
  *(v6 + 40) = 0;
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_225BFE5A8()
{
  v24 = v0;
  v1 = v0[40];
  v2 = v0[41];
  sub_225C00E8C((v0 + 2));
  sub_2259BEF00(v1, v2);
  v3 = v0[46];
  v4 = v0[35];
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD00000000000001FLL, 0x8000000225D25010);
  v22 = v3;
  swift_getErrorValue();
  sub_225CCF904();
  v5 = MEMORY[0x277D84F90];
  v6 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v8 = v7;
  v9 = sub_225CCE954();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v4, 1, 1, v9);
  v11 = (*(v10 + 48))(v4, 1, v9);
  sub_2259DB318(v4);

  v12 = sub_225B2C374(v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23[0] = v12;
  sub_225B2C4A0(v6, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v23);

  v14 = v23[0];
  v15 = sub_225B29AA0(0, 1, 1, v5);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_225B29AA0((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[56 * v17];
  *(v18 + 4) = 0;
  *(v18 + 5) = 0xE000000000000000;
  if (v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = 23;
  }

  *(v18 + 6) = 0xD00000000000001ELL;
  *(v18 + 7) = 0x8000000225D25030;
  *(v18 + 8) = 0xD00000000000002ELL;
  *&v15[56 * v17 + 72] = 0x8000000225D25050;
  *(v18 + 10) = 293;
  *v8 = v19;
  *(v8 + 8) = v15;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0xE000000000000000;
  *(v8 + 32) = v14;
  *(v8 + 40) = 0;
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

void *BACManager.deriveSessionKeys(from:kSeed:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v129 = a1;
  v139 = *MEMORY[0x277D85DE8];
  v7 = sub_225CCD954();
  v127 = *(v7 - 8);
  v128 = v7;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v108 - v13;
  v16 = *v3;
  v15 = v3[1];
  v17 = v3[2];
  v132 = *v3;
  v133 = v15;
  *&v134 = v17;
  sub_2259CB710(a2, a3);
  v18 = sub_225C0F394(a2, a3);
  v19 = sub_225BF9A0C(v18);
  if (v4)
  {
  }

  v22 = v20;
  v23 = v21;
  v123 = v14;
  v124 = v17;
  v125 = v15;
  v126 = v16;
  v122 = v11;
  v24 = v19;

  sub_2259BEF00(v22, v23);
  sub_225BF9E30(v129, v24, &v132);
  v27 = v132;
  v26 = v133;
  v28 = v134;
  v117 = *(&v134 + 1);
  v129 = v134;
  v29 = v135;
  v30 = v137;
  v31 = v138;
  v32 = v136;

  sub_2259CB710(v27, v26);
  sub_2259CB710(v28, *(&v28 + 1));
  sub_2259CB710(v29, v32);
  sub_2259CB710(v30, v31);
  v120 = v29;
  sub_2259BEF00(v29, v32);
  sub_2259BEF00(v28, *(&v28 + 1));
  v121 = v27;
  v119 = v26;
  sub_2259BEF00(v27, v26);
  *(&v134 + 1) = MEMORY[0x277CC9318];
  v135 = MEMORY[0x277CC9300];
  v118 = v30;
  v132 = v30;
  v133 = v31;
  v33 = __swift_project_boxed_opaque_existential_1(&v132, MEMORY[0x277CC9318]);
  v34 = *v33;
  v35 = v33[1];
  v36 = v35 >> 62;
  v116 = v31;
  if ((v35 >> 62) <= 1)
  {
    if (!v36)
    {
      v130[0] = v34;
      LOWORD(v130[1]) = v35;
      BYTE2(v130[1]) = BYTE2(v35);
      BYTE3(v130[1]) = BYTE3(v35);
      BYTE4(v130[1]) = BYTE4(v35);
      BYTE5(v130[1]) = BYTE5(v35);
      v37 = v130 + BYTE6(v35);
LABEL_31:
      sub_225B3D3E8(v130, v37, v131);
      v48 = v127;
      v49 = v128;
      goto LABEL_32;
    }

    v115 = v32;
    v50 = v34;
    v51 = v34 >> 32;
    v52 = v51 - v50;
    if (v51 >= v50)
    {
      v53 = sub_225CCCA44();
      if (!v53)
      {
LABEL_23:
        v55 = v128;
        v56 = sub_225CCCA64();
        if (v56 >= v52)
        {
          v57 = v52;
        }

        else
        {
          v57 = v56;
        }

        v58 = &v53[v57];
        if (v53)
        {
          v59 = v58;
        }

        else
        {
          v59 = 0;
        }

        sub_225B3D3E8(v53, v59, v131);
        v48 = v127;
        v32 = v115;
        v49 = v55;
        goto LABEL_32;
      }

      v54 = sub_225CCCA74();
      if (!__OFSUB__(v50, v54))
      {
        v53 += v50 - v54;
        goto LABEL_23;
      }

LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
    }

    __break(1u);
    goto LABEL_43;
  }

  if (v36 != 2)
  {
    memset(v130, 0, 14);
    v37 = v130;
    goto LABEL_31;
  }

  v115 = v32;
  v39 = *(v34 + 16);
  v38 = *(v34 + 24);
  v40 = sub_225CCCA44();
  if (v40)
  {
    v41 = sub_225CCCA74();
    if (__OFSUB__(v39, v41))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v40 += v39 - v41;
  }

  v42 = __OFSUB__(v38, v39);
  v43 = v38 - v39;
  if (v42)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v44 = sub_225CCCA64();
  if (v44 >= v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = v44;
  }

  v46 = &v40[v45];
  if (v40)
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  sub_225B3D3E8(v40, v47, v131);
  v48 = v127;
  v49 = v128;
  v32 = v115;
LABEL_32:
  v60 = v131[0];
  v61 = v131[1];
  __swift_destroy_boxed_opaque_existential_0(&v132);
  v62 = Data.xor(with:)(v60, v61, v120, v32);
  v64 = v63;
  sub_2259BEF00(v60, v61);
  v65 = v119;
  v113 = v62;
  v114 = v64;
  v115 = v32;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v66 = off_28105B918;
  v67 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v68 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v68));
  v69 = v48;
  v70 = *(v48 + 16);
  v111 = v67;
  v71 = v123;
  v110 = v48 + 16;
  v109 = v70;
  v70(v123, &v66[v67], v49);
  v112 = v68;
  os_unfair_lock_unlock(&v66[v68]);
  v72 = sub_225CCD934();
  v73 = sub_225CCED34();
  v74 = os_log_type_enabled(v72, v73);
  v75 = v126;
  if (v74)
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_2259A7000, v72, v73, "Generated seed for session keys", v76, 2u);
    v65 = v119;
    MEMORY[0x22AA6F950](v76, -1, -1);
  }

  v78 = v69 + 8;
  v77 = *(v69 + 8);
  v77(v71, v128);
  v132 = v75;
  v133 = v125;
  *&v134 = v124;
  v79 = v113;
  v80 = v114;
  sub_2259CB710(v113, v114);
  v81 = sub_225C0F394(v79, v80);
  v82 = sub_225BF9A0C(v81);
  v123 = v77;
  v83 = v121;
  v84 = v116;
  v126 = v85;
  v127 = v78;
  v124 = v82;
  v125 = v86;

  sub_2259CB710(v83, v65);
  v87 = v117;
  sub_2259CB710(v129, v117);
  v88 = v120;
  v89 = v115;
  sub_2259CB710(v120, v115);
  v90 = v118;
  sub_2259CB710(v118, v84);
  sub_2259BEF00(v90, v84);
  sub_2259BEF00(v88, v89);
  sub_2259BEF00(v83, v65);
  v91 = v87;
  v108 = sub_225C0F394(v129, v87);
  if (*(v108 + 16) < 8uLL)
  {
    goto LABEL_46;
  }

  v92 = v119;
  sub_2259CB710(v121, v119);
  v93 = v129;
  sub_2259CB710(v129, v91);
  sub_2259CB710(v88, v89);
  sub_2259CB710(v90, v84);
  v94 = v90;
  v95 = v84;
  sub_2259BEF00(v94, v84);
  sub_2259BEF00(v88, v89);
  sub_2259BEF00(v93, v91);
  v96 = sub_225C0F394(v121, v92);
  if (v96[2] < 8uLL)
  {
    goto LABEL_47;
  }

  v97 = v92;
  v132 = v108;
  v133 = (v108 + 32);
  v134 = xmmword_225CFA1B0;
  sub_225C01414(v96, (v96 + 4), 4, 0x11uLL);

  sub_2259D2AD0(v132, v133, v134, *(&v134 + 1));
  v99 = v98;
  v108 = v100;
  v101 = v112;
  os_unfair_lock_lock(&v66[v112]);
  v109(v122, &v66[v111], v128);
  os_unfair_lock_unlock(&v66[v101]);
  v102 = sub_225CCD934();
  v103 = sub_225CCED34();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = v97;
    v105 = swift_slowAlloc();
    *v105 = 0;
    _os_log_impl(&dword_2259A7000, v102, v103, "Generated send sequence counter", v105, 2u);
    v106 = v122;
    MEMORY[0x22AA6F950](v105, -1, -1);

    sub_2259BEF00(v113, v114);
    sub_2259BEF00(v121, v104);
    sub_2259BEF00(v129, v117);
    sub_2259BEF00(v88, v115);
    sub_2259BEF00(v118, v95);
  }

  else
  {
    sub_2259BEF00(v121, v97);
    sub_2259BEF00(v129, v117);
    sub_2259BEF00(v88, v115);
    sub_2259BEF00(v118, v95);
    sub_2259BEF00(v113, v114);

    v106 = v122;
  }

  v123(v106, v128);
  type metadata accessor for SecureMessaging();
  result = swift_allocObject();
  v107 = v125;
  result[2] = v124;
  result[3] = v107;
  result[4] = v126;
  result[5] = v99;
  result[6] = v108;
  result[7] = 16;
  return result;
}

unint64_t sub_225BFF2E4(uint64_t a1, unint64_t a2)
{
  v96 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v85 - v8;
  v10 = *(v2 + 2);
  v92 = *v2;
  v93 = v10;
  v11 = sub_225BFFED4(a1, a2);
  if (!v3)
  {
    v30 = v11;
    v31 = v12;
    v32 = sub_225CCCF54();
    v33 = MEMORY[0x277CC9318];
    v34 = MEMORY[0x277CC9300];
    v94 = MEMORY[0x277CC9318];
    v95 = MEMORY[0x277CC9300];
    *&v92 = v32;
    *(&v92 + 1) = v35;
    v36 = __swift_project_boxed_opaque_existential_1(&v92, MEMORY[0x277CC9318]);
    v37 = *v36;
    v38 = v36[1];
    v39 = v38 >> 62;
    if ((v38 >> 62) > 1)
    {
      if (v39 != 2)
      {
        memset(v89, 0, 14);
        v40 = v89;
        goto LABEL_31;
      }

      v42 = *(v37 + 16);
      v41 = *(v37 + 24);
      v43 = sub_225CCCA44();
      if (v43)
      {
        v44 = sub_225CCCA74();
        if (__OFSUB__(v42, v44))
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v43 += v42 - v44;
      }

      v45 = __OFSUB__(v41, v42);
      v46 = v41 - v42;
      if (!v45)
      {
        v47 = sub_225CCCA64();
        if (v47 >= v46)
        {
          v48 = v46;
        }

        else
        {
          v48 = v47;
        }

LABEL_26:
        v54 = &v43[v48];
        if (v43)
        {
          v55 = v54;
        }

        else
        {
          v55 = 0;
        }

        sub_225B3D3E8(v43, v55, &v90);
        v34 = MEMORY[0x277CC9300];
        goto LABEL_32;
      }
    }

    else
    {
      if (!v39)
      {
        v89[0] = *v36;
        LOWORD(v89[1]) = v38;
        BYTE2(v89[1]) = BYTE2(v38);
        BYTE3(v89[1]) = BYTE3(v38);
        BYTE4(v89[1]) = BYTE4(v38);
        BYTE5(v89[1]) = BYTE5(v38);
        v40 = v89 + BYTE6(v38);
LABEL_31:
        sub_225B3D3E8(v89, v40, &v90);
LABEL_32:
        v56 = v90;
        v57 = v91;
        __swift_destroy_boxed_opaque_existential_0(&v92);
        v58 = sub_225CCCF54();
        v94 = v33;
        v95 = v34;
        *&v92 = v58;
        *(&v92 + 1) = v59;
        v60 = __swift_project_boxed_opaque_existential_1(&v92, v33);
        v61 = *v60;
        v62 = v60[1];
        v63 = v62 >> 62;
        if ((v62 >> 62) > 1)
        {
          if (v63 != 2)
          {
            memset(v89, 0, 14);
            v65 = v89;
            v64 = v89;
            goto LABEL_59;
          }

          v88 = 0;
          v67 = *(v61 + 16);
          v66 = *(v61 + 24);
          v68 = sub_225CCCA44();
          if (v68)
          {
            v69 = sub_225CCCA74();
            if (__OFSUB__(v67, v69))
            {
LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

            v68 += v67 - v69;
          }

          v45 = __OFSUB__(v66, v67);
          v70 = v66 - v67;
          if (!v45)
          {
            v71 = sub_225CCCA64();
            if (v71 >= v70)
            {
              v72 = v70;
            }

            else
            {
              v72 = v71;
            }

            v73 = (v72 + v68);
            if (v68)
            {
              v64 = v73;
            }

            else
            {
              v64 = 0;
            }

            v65 = v68;
            goto LABEL_59;
          }

          goto LABEL_64;
        }

        if (!v63)
        {
          v89[0] = *v60;
          LOWORD(v89[1]) = v62;
          BYTE2(v89[1]) = BYTE2(v62);
          BYTE3(v89[1]) = BYTE3(v62);
          BYTE4(v89[1]) = BYTE4(v62);
          BYTE5(v89[1]) = BYTE5(v62);
          v64 = v89 + BYTE6(v62);
          v65 = v89;
LABEL_59:
          sub_225B3D3E8(v65, v64, &v90);
          v82 = v90;
          v83 = v91;
          __swift_destroy_boxed_opaque_existential_0(&v92);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD38);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_225CD73B0;
          *(v26 + 32) = v56;
          *(v26 + 40) = v57;
          *(v26 + 48) = v82;
          *(v26 + 56) = v83;
          *(v26 + 64) = v56;
          *(v26 + 72) = v57;
          sub_2259CB710(v56, v57);
          sub_2259BEF00(v30, v31);
          return v26;
        }

        v88 = 0;
        v74 = v61;
        v75 = v61 >> 32;
        v76 = v75 - v74;
        if (v75 >= v74)
        {
          v77 = sub_225CCCA44();
          if (!v77)
          {
LABEL_51:
            v79 = sub_225CCCA64();
            if (v79 >= v76)
            {
              v80 = v76;
            }

            else
            {
              v80 = v79;
            }

            v81 = (v80 + v77);
            if (v77)
            {
              v64 = v81;
            }

            else
            {
              v64 = 0;
            }

            v65 = v77;
            goto LABEL_59;
          }

          v78 = sub_225CCCA74();
          if (!__OFSUB__(v74, v78))
          {
            v77 += v74 - v78;
            goto LABEL_51;
          }

LABEL_68:
          __break(1u);
        }

LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v49 = v37;
      v50 = v37 >> 32;
      v51 = v50 - v49;
      if (v50 >= v49)
      {
        v43 = sub_225CCCA44();
        if (v43)
        {
          v52 = sub_225CCCA74();
          if (__OFSUB__(v49, v52))
          {
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          v43 += v49 - v52;
        }

        v53 = sub_225CCCA64();
        if (v53 >= v51)
        {
          v48 = v51;
        }

        else
        {
          v48 = v53;
        }

        goto LABEL_26;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_63;
  }

  *&v92 = 0;
  *(&v92 + 1) = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000022, 0x8000000225D25220);
  v88 = v3;
  swift_getErrorValue();
  sub_225CCF904();
  v13 = v92;
  v86 = 0x8000000225D25250;
  v87 = 0x8000000225D25030;
  v14 = MEMORY[0x277D84F90];
  v15 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v17 = v16;
  v18 = sub_225CCE954();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v9, 1, 1, v18);
  LODWORD(v18) = (*(v19 + 48))(v9, 1, v18);
  sub_2259DB318(v9);
  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = 23;
  }

  v21 = sub_225B2C374(v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v92 = v21;
  sub_225B2C4A0(v15, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v92);

  v23 = v92;
  v24 = sub_225B29AA0(0, 1, 1, v14);
  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_225B29AA0((v25 > 1), v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  v27 = &v24[56 * v26];
  *(v27 + 2) = v13;
  v28 = v87;
  *(v27 + 6) = 0xD00000000000001ELL;
  *(v27 + 7) = v28;
  v29 = v86;
  *(v27 + 8) = 0xD00000000000001BLL;
  *(v27 + 9) = v29;
  *(v27 + 10) = 367;
  *v17 = v20;
  *(v17 + 8) = v24;
  *(v17 + 16) = v13;
  *(v17 + 32) = v23;
  *(v17 + 40) = 0;
  swift_willThrow();

  return v26;
}

uint64_t sub_225BFF9F4(uint64_t a1, unint64_t a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v55 - v8;
  v10 = *(v2 + 2);
  v61 = *v2;
  v62 = v10;
  v11 = sub_225BFFED4(a1, a2);
  if (!v3)
  {
    v32 = v11;
    v33 = v12;
    v34 = sub_225CCCF54();
    v63 = MEMORY[0x277CC9318];
    v64 = MEMORY[0x277CC9300];
    *&v61 = v34;
    *(&v61 + 1) = v35;
    v36 = __swift_project_boxed_opaque_existential_1(&v61, MEMORY[0x277CC9318]);
    v37 = *v36;
    v38 = v36[1];
    v39 = v38 >> 62;
    if ((v38 >> 62) > 1)
    {
      if (v39 != 2)
      {
        memset(v59, 0, 14);
        v41 = v59;
        v40 = v59;
        goto LABEL_30;
      }

      v42 = *(v37 + 16);
      v43 = *(v37 + 24);
      v44 = sub_225CCCA44();
      if (v44)
      {
        v45 = sub_225CCCA74();
        v37 = v42 - v45;
        if (__OFSUB__(v42, v45))
        {
          goto LABEL_33;
        }

        v44 += v37;
      }

      v46 = __OFSUB__(v43, v42);
      v47 = v43 - v42;
      if (!v46)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    else if (!v39)
    {
      v59[0] = *v36;
      LOWORD(v59[1]) = v38;
      BYTE2(v59[1]) = BYTE2(v38);
      BYTE3(v59[1]) = BYTE3(v38);
      BYTE4(v59[1]) = BYTE4(v38);
      BYTE5(v59[1]) = BYTE5(v38);
      v40 = v59 + BYTE6(v38);
      v41 = v59;
LABEL_30:
      sub_225B3D3E8(v41, v40, &v60);
      sub_2259BEF00(v32, v33);
      v20 = v60;
      __swift_destroy_boxed_opaque_existential_0(&v61);
      return v20;
    }

    v48 = v37;
    v49 = v37 >> 32;
    v47 = v49 - v48;
    if (v49 >= v48)
    {
      v44 = sub_225CCCA44();
      if (!v44)
      {
LABEL_22:
        v51 = sub_225CCCA64();
        if (v51 >= v47)
        {
          v52 = v47;
        }

        else
        {
          v52 = v51;
        }

        v53 = (v52 + v44);
        if (v44)
        {
          v40 = v53;
        }

        else
        {
          v40 = 0;
        }

        v41 = v44;
        goto LABEL_30;
      }

      v50 = sub_225CCCA74();
      if (!__OFSUB__(v48, v50))
      {
        v44 += v48 - v50;
        goto LABEL_22;
      }

LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *&v61 = 0;
  *(&v61 + 1) = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD00000000000001BLL, 0x8000000225D251A0);
  v58 = v3;
  swift_getErrorValue();
  sub_225CCF904();
  v13 = v61;
  v56 = 0x8000000225D251C0;
  v57 = 0x8000000225D25030;
  v14 = MEMORY[0x277D84F90];
  v15 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v17 = v16;
  v18 = sub_225CCE954();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v9, 1, 1, v18);
  v21 = *(v19 + 48);
  v20 = v19 + 48;
  LODWORD(v18) = v21(v9, 1, v18);
  sub_2259DB318(v9);
  if (v18)
  {
    v22 = 0;
  }

  else
  {
    v22 = 23;
  }

  v23 = sub_225B2C374(v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v61 = v23;
  sub_225B2C4A0(v15, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v61);

  v25 = v61;
  v26 = sub_225B29AA0(0, 1, 1, v14);
  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_225B29AA0((v27 > 1), v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  v29 = &v26[56 * v28];
  *(v29 + 2) = v13;
  v30 = v57;
  *(v29 + 6) = 0xD00000000000001ELL;
  *(v29 + 7) = v30;
  v31 = v56;
  *(v29 + 8) = 0xD000000000000014;
  *(v29 + 9) = v31;
  *(v29 + 10) = 379;
  *v17 = v22;
  *(v17 + 8) = v26;
  *(v17 + 16) = v13;
  *(v17 + 32) = v25;
  *(v17 + 40) = 0;
  swift_willThrow();

  return v20;
}

uint64_t sub_225BFFED4(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v60 - v7;
  v9 = sub_225CCE264();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_225CCE254();
  result = MEMORY[0x28223BE20](v14, v15);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v2;
  v21 = v2[1];
  v22 = v2[2];
  v23 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v23)
    {
      if (BYTE6(a2) != 20)
      {
        goto LABEL_11;
      }

LABEL_8:
      v60 = result;
      v61 = v20;
      v28 = v17;
      v62 = v21;
      v63 = v22;
      sub_225C0175C(&qword_27D73ABF8, MEMORY[0x277CC5598]);
      sub_225CCDB94();
      sub_2259CB710(a1, a2);
      v29 = v64;
      sub_2259D7024(a1, a2);
      v64 = v29;
      sub_2259BEF00(a1, a2);
      sub_225CCDB84();
      (*(v10 + 8))(v13, v9);
      sub_225C0175C(&qword_27D73AC00, MEMORY[0x277CC5578]);
      v30 = v60;
      v31 = sub_225CCE154();
      v33 = sub_2259D732C(v31, v32);

      v34 = sub_2259D8490(v33);
      v36 = v35;

      (*(v28 + 8))(v19, v30);
      v65 = v61;
      v66 = v62;
      v67 = v63;
      v37 = sub_225C004D0(v34, v36);
      sub_2259BEF00(v34, v36);
      return v37;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 20)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v23 != 2)
  {
    goto LABEL_11;
  }

  v25 = *(a1 + 16);
  v24 = *(a1 + 24);
  v26 = __OFSUB__(v24, v25);
  v27 = v24 - v25;
  if (v26)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v27 == 20)
  {
    goto LABEL_8;
  }

LABEL_11:
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_225CCF204();

  v65 = 0xD000000000000015;
  v66 = 0x8000000225D251E0;
  if (v23 > 1)
  {
    v38 = 0;
    if (v23 != 2 || (v40 = *(a1 + 16), v39 = *(a1 + 24), v26 = __OFSUB__(v39, v40), v38 = v39 - v40, !v26))
    {
LABEL_20:
      v68 = v38;
      v41 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v41);

      v43 = v65;
      v42 = v66;
      v62 = 0x8000000225D25200;
      v63 = 0x8000000225D25030;
      v44 = MEMORY[0x277D84F90];
      v45 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v47 = v46;
      v48 = sub_225CCE954();
      v49 = *(v48 - 8);
      (*(v49 + 56))(v8, 1, 1, v48);
      LODWORD(v48) = (*(v49 + 48))(v8, 1, v48);
      sub_2259DB318(v8);
      if (v48)
      {
        v50 = 861;
      }

      else
      {
        v50 = 23;
      }

      v51 = sub_225B2C374(v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v51;
      sub_225B2C4A0(v45, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v65);

      v53 = v65;
      v54 = sub_225B29AA0(0, 1, 1, v44);
      v56 = *(v54 + 2);
      v55 = *(v54 + 3);
      v37 = v56 + 1;
      if (v56 >= v55 >> 1)
      {
        v54 = sub_225B29AA0((v55 > 1), v56 + 1, 1, v54);
      }

      *(v54 + 2) = v37;
      v57 = &v54[56 * v56];
      *(v57 + 4) = v43;
      *(v57 + 5) = v42;
      v58 = v63;
      *(v57 + 6) = 0xD00000000000001ELL;
      *(v57 + 7) = v58;
      v59 = v62;
      *(v57 + 8) = 0xD000000000000011;
      *(v57 + 9) = v59;
      *(v57 + 10) = 344;
      *v47 = v50;
      *(v47 + 8) = v54;
      *(v47 + 16) = v43;
      *(v47 + 24) = v42;
      *(v47 + 32) = v53;
      *(v47 + 40) = 0;
      swift_willThrow();
      return v37;
    }

    __break(1u);
  }

  else if (!v23)
  {
    v38 = BYTE6(a2);
    goto LABEL_20;
  }

  LODWORD(v38) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v38 = v38;
    goto LABEL_20;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_225C004D0(uint64_t a1, unint64_t a2)
{
  sub_2259CB710(a1, a2);
  result = sub_225C0F394(a1, a2);
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    while (v7 < *(v5 + 16))
    {
      v8 = *(v5 + v7 + 32);
      if (!v8)
      {
        goto LABEL_14;
      }

      v9 = 0;
      v10 = *(v5 + v7 + 32);
      do
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
          goto LABEL_21;
        }

        v10 &= v10 - 1;
        ++v9;
      }

      while (v10);
      if (v11)
      {
        goto LABEL_6;
      }

      if (*(v5 + v7 + 32))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_225C0EC14(v5);
          v5 = result;
        }

        *(v5 + v7 + 32) = v8 & 0xFE;
      }

      else
      {
LABEL_14:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_225C0EC14(v5);
          v5 = result;
        }

        if (v7 >= *(v5 + 16))
        {
          goto LABEL_22;
        }

        v12 = *(v5 + 32 + v7) + 1;
        if ((v12 >> 8))
        {
          goto LABEL_23;
        }

        *(v5 + 32 + v7) = v12;
      }

LABEL_6:
      if (++v7 == v6)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_19:
    v13 = sub_2259D8490(v5);

    return v13;
  }

  return result;
}

void *sub_225C0060C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73AA18);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_225C00680(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_225C00704(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_225CCFA44();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + v4 != v9 + v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_225C0060C(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = memcpy((result + 32), (v1[1] + v14), v4 - v14);
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_225C0087C(uint64_t *a1, size_t a2, uint64_t a3, void (*a4)(size_t, uint64_t))
{
  v6 = v4[2];
  v7 = v4[3] >> 1;
  result = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = *a1;
  v11 = *(*a1 + 16);
  v12 = __OFSUB__(v11, a2);
  v13 = v11 - a2;
  if (v12)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v15 = v13 - a3;
  if (__OFSUB__(v13, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v16 = result - a2;
  if (__OFSUB__(result, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v12 = __OFSUB__(v16, v15);
  v17 = v16 - v15;
  if (v12)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v33 = v17;
  v18 = (v10 + 32);
  v19 = v10 + 32 + a2;
  __dst = (v19 + a3);
  result = sub_225C00D2C(result);
  if (result)
  {
    v20 = result;
    v31 = v10;
    v21 = v4[2];
    v22 = (v4[1] + v21);
    v23 = &v22[a2];
    if (v18 != v22 || v18 >= v23)
    {
      memmove(v18, v22, a2);
    }

    a4(v19, a3);
    if (__dst != &v23[v33] || __dst >= &v23[v33 + v15])
    {
      memmove(__dst, &v23[v33], v15);
    }

    *(v20 + 16) = 0;

    v10 = v31;
  }

  else
  {
    v21 = v4[2];
    v25 = v21 + a2;
    if (__OFADD__(v21, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v25 < v21)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v25, v21))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v26 = v4[1];
    memcpy((v10 + 32), (v26 + v21), a2);
    result = (a4)(&v18[a2], a3);
    v27 = v25 + v33;
    if (__OFADD__(v25, v33))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v28 = v4[3] >> 1;
    if (v28 < v27)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (__OFSUB__(v28, v27))
    {
LABEL_45:
      __break(1u);
      return result;
    }

    memcpy(__dst, (v26 + v27), v28 - v27);
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_36;
  }

  v29 = *(v10 + 16);
  v12 = __OFADD__(v21, v29);
  v30 = v21 + v29;
  if (v12)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v30 < v21)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v30 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v4 = v10;
  v4[1] = &v18[-v21];
  v4[2] = v21;
  v4[3] = (2 * v30) | 1;
}

uint64_t sub_225C00A98(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  sub_225CCFA44();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v8 = *(result + 16);
  v5 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v9;

  v10 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

void *sub_225C00B50(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_225CCFA44();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  v13 = a4 + a5 + v8;
  if (v13 == v11 + v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x277D84F90];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_225C0060C(v6, v25);
}

uint64_t sub_225C00D2C(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v1[1];
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_225CCFA44();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + v6 + v7 != v9 + v10 + 32)
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  sub_225CCFA44();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v15 = v8 + v6 - result - 32;
  v14 = __OFADD__(v7, v15);
  v5 = v7 + v15;
  if (v14)
  {
    goto LABEL_18;
  }

  v4 = *(result + 16);
  if (v5 < v4)
  {
LABEL_19:
    v16 = result;
    sub_225C0107C(v5, v4, 0);
    return v16;
  }

  return result;
}

uint64_t sub_225C00EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ImageQualityMetrics();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_225CCF144();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_225CCF144();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_225C00FBC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_225C0107C(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void *sub_225C01120(void *result)
{
  v2 = *(v1 + 24);
  v33 = *(v1 + 16);
  v3 = ((v2 >> 1) - v33);
  if (__OFSUB__(v2 >> 1, v33))
  {
    goto LABEL_49;
  }

  v4 = result[4];
  v31 = result[3] >> 1;
  if (v4 == v31)
  {
    return result;
  }

  v30 = result[2];
  if (v4 < v30 || v4 >= v31)
  {
    goto LABEL_50;
  }

  v6 = v1;
  v7 = v4 + 1;
  v8 = *(result[1] + v4);
  v29 = result[1];
  while (!__OFADD__(v3, 1))
  {
    v34 = sub_225C00B50(v3, (v3 + 1), *v6, v6[1], v33, v2);
    v9 = sub_225C00D10();
    v10 = v6;
    sub_225C0087C(&v34, v3, 0, v9);

    v11 = v6[3];
    v12 = v11 >> 1;
    v33 = v6[2];
    v13 = (v11 >> 1) - v33;
    if (__OFSUB__(v11 >> 1, v33))
    {
      goto LABEL_44;
    }

    v14 = v6[1];
    v32 = v6[3];
    if ((v11 & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_225CCFA44();
    swift_unknownObjectRetain();
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      swift_unknownObjectRelease();
      v15 = MEMORY[0x277D84F90];
    }

    v16 = *(v15 + 16);
    if (v14 + v33 + v13 != v15 + v16 + 32)
    {

LABEL_19:
      v17 = v13;
      goto LABEL_22;
    }

    v18 = *(v15 + 24);

    v19 = (v18 >> 1) - v16;
    v20 = __OFADD__(v13, v19);
    v17 = (v13 + v19);
    if (v20)
    {
      goto LABEL_48;
    }

    v6 = v10;
LABEL_22:
    if (v3 >= v17)
    {
      v22 = 0;
    }

    else
    {
      v3[v14 + v33] = v8;
      v21 = v3 + 1;
      if (v7 != v31)
      {
        v23 = 0;
        while (1)
        {
          if (v7 < v30)
          {
            goto LABEL_42;
          }

          v24 = v23;
          if (v7 + v23 >= v31)
          {
            goto LABEL_42;
          }

          v8 = *(v29 + v7 + v23);
          if (!(v21 - v17 + v23))
          {
            break;
          }

          v3[v33 + 1 + v14 + v23++] = v8;
          if (!(v7 - v31 + v24 + 1))
          {
            v8 = 0;
            v3 = &v21[v23];
            v7 = v31;
LABEL_33:
            v22 = &v21[v24] < v17;
            goto LABEL_34;
          }
        }

        v7 += v23 + 1;
        v3 = v17;
        goto LABEL_33;
      }

      v8 = 0;
      v22 = 1;
      v7 = v31;
      ++v3;
    }

LABEL_34:
    v2 = v32;
    v25 = &v3[-v13];
    if (__OFSUB__(v3, v13))
    {
      goto LABEL_45;
    }

    if (v25)
    {
      sub_225CCFA44();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = MEMORY[0x277D84F90];
      }

      v26 = result[2];
      v20 = __OFADD__(v26, v25);
      v27 = &v25[v26];
      if (v20)
      {
        goto LABEL_46;
      }

      result[2] = v27;

      v28 = &v25[v12];
      if (__OFADD__(v12, v25))
      {
        goto LABEL_47;
      }

      if ((v28 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      v2 = v32 & 1 | (2 * v28);
      v6[3] = v2;
    }

    if (v22)
    {
      return result;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

void *sub_225C01414(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v30 = result;
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v12 = v4[1];
  sub_225CCFA44();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x277D84F90];
  }

  v14 = *(v13 + 16);
  if (v12 + v8 + v9 != v13 + v14 + 32)
  {

    goto LABEL_8;
  }

  v16 = *(v13 + 24);

  v17 = (v16 >> 1) - v14;
  v18 = __OFADD__(v9, v17);
  v15 = v9 + v17;
  if (v18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  result = (v9 + v6);
  if (__OFADD__(v9, v6))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v15 < result)
  {
    if (v15 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v19 = 2 * v15;
    if (v19 > result)
    {
      result = v19;
    }
  }

  result = sub_225C00704(result);
  v21 = v4[2];
  v20 = v4[3];
  v22 = (v20 >> 1) - v21;
  if (__OFSUB__(v20 >> 1, v21))
  {
    goto LABEL_37;
  }

  v23 = (v4[1] + (v20 >> 1));
  if ((v20 & 1) == 0)
  {
LABEL_21:
    v26 = v22;
    goto LABEL_23;
  }

  sub_225CCFA44();
  swift_unknownObjectRetain();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x277D84F90];
  }

  v25 = *(v24 + 16);
  if (v23 != (v24 + v25 + 32))
  {

    goto LABEL_21;
  }

  v27 = *(v24 + 24);

  v28 = (v27 >> 1) - v25;
  v18 = __OFADD__(v22, v28);
  v26 = v22 + v28;
  if (v18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_23:
  v29 = v26 - v22;
  if (__OFSUB__(v26, v22))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (v29 < v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = memcpy(v23, (a2 + a3), v6);
  if (v6 > 0)
  {
    result = (v22 + v6);
    if (__OFADD__(v22, v6))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    result = sub_225C00A98(result);
  }

LABEL_31:
  if (v6 == v29)
  {
    v32[0] = v30;
    v32[1] = a2;
    v32[2] = a3;
    v32[3] = a4;
    v32[4] = v5;
    return sub_225C01120(v32);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BACManager(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BACManager(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_225C016AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225C016F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_225C0175C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t IDVNFTag.init(internalTag:readerSession:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_225C01804(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      sub_2259CB710(v4, *v2);
      sub_225CCCFC4();
      result = sub_2259BEF00(v4, v3);
      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_225C0187C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v8 = v6;
  v77 = a1;
  v78 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v70 - v14;
  v76 = sub_225CCCFE4();
  v16 = *(v76 - 8);
  result = MEMORY[0x28223BE20](v76, v17);
  v75 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v21 == 2)
    {
      v23 = *(a3 + 16);
      v22 = *(a3 + 24);
      v24 = __OFSUB__(v22, v23);
      v25 = v22 - v23;
      if (v24)
      {
        goto LABEL_78;
      }

      if (v25 != a5)
      {
        goto LABEL_15;
      }
    }

    else if (a5)
    {
LABEL_15:
      a3 = 0x8000000225D25570;
      v78 = 0x8000000225D25590;
      v79 = 0x8000000225D254E0;
      v28 = MEMORY[0x277D84F90];
      v29 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v8 = v30;
      v31 = sub_225CCE954();
      v32 = *(v31 - 8);
      (*(v32 + 56))(v15, 1, 1, v31);
      LODWORD(v31) = (*(v32 + 48))(v15, 1, v31);
      sub_2259DB318(v15);
      if (v31)
      {
        LOWORD(a4) = 861;
      }

      else
      {
        LOWORD(a4) = 23;
      }

      v33 = sub_225B2C374(v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = v33;
      sub_225B2C4A0(v29, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v80);

      v7 = v80;
      v19 = sub_225B29AA0(0, 1, 1, v28);
      a5 = *(v19 + 2);
      v35 = *(v19 + 3);
      v5 = a5 + 1;
      if (a5 >= v35 >> 1)
      {
LABEL_75:
        v19 = sub_225B29AA0((v35 > 1), v5, 1, v19);
      }

      *(v19 + 2) = v5;
      v36 = &v19[56 * a5];
      v37 = 0xD000000000000014;
      *(v36 + 4) = 0xD000000000000014;
      *(v36 + 5) = a3;
      *(v36 + 6) = 0xD000000000000028;
      *(v36 + 7) = v79;
      *(v36 + 8) = 0xD000000000000012;
      *(v36 + 9) = v78;
      v38 = 100;
      goto LABEL_31;
    }
  }

  else if (v21)
  {
    v25 = (HIDWORD(a3) - a3);
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_79;
    }

    if (v25 != a5)
    {
      goto LABEL_15;
    }
  }

  else if (BYTE6(a4) != a5)
  {
    goto LABEL_15;
  }

  v26 = v78 >> 62;
  if ((v78 >> 62) > 1)
  {
    if (v26 != 2)
    {
      v47 = v6;
      v5 = 0;
      goto LABEL_41;
    }

    v39 = *(v77 + 16);
    v27 = *(v77 + 24);
    v24 = __OFSUB__(v27, v39);
    LOBYTE(v27) = v27 - v39;
    if (!v24)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v26)
  {
    v27 = HIWORD(v78);
    goto LABEL_25;
  }

  LOBYTE(v27) = BYTE4(v77) - v77;
  if (__OFSUB__(HIDWORD(v77), v77))
  {
    __break(1u);
    goto LABEL_83;
  }

LABEL_25:
  if ((v27 & 7) != 0)
  {
    a3 = 0x8000000225D255B0;
    v78 = 0x8000000225D25590;
    v79 = 0x8000000225D254E0;
    v40 = MEMORY[0x277D84F90];
    v41 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v8 = v42;
    v43 = sub_225CCE954();
    v44 = *(v43 - 8);
    (*(v44 + 56))(v15, 1, 1, v43);
    LODWORD(v43) = (*(v44 + 48))(v15, 1, v43);
    sub_2259DB318(v15);
    if (v43)
    {
      LOWORD(a4) = 862;
    }

    else
    {
      LOWORD(a4) = 23;
    }

    v45 = sub_225B2C374(v40);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v45;
    sub_225B2C4A0(v41, sub_225B2AC40, 0, v46, &v80);

    v7 = v80;
    v19 = sub_225B29AA0(0, 1, 1, v40);
    a5 = *(v19 + 2);
    v25 = *(v19 + 3);
    v5 = a5 + 1;
    if (a5 >= v25 >> 1)
    {
      goto LABEL_81;
    }

    goto LABEL_30;
  }

  if (v26 == 2)
  {
    v49 = *(v77 + 16);
    v48 = *(v77 + 24);
    v5 = v48 - v49;
    if (!__OFSUB__(v48, v49))
    {
      v47 = v6;
      goto LABEL_41;
    }

LABEL_84:
    __break(1u);
    return result;
  }

  if (v26 != 1)
  {
    v47 = v6;
    v5 = BYTE6(v78);
    goto LABEL_41;
  }

  if (__OFSUB__(HIDWORD(v77), v77))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v47 = v6;
  v5 = HIDWORD(v77) - v77;
LABEL_41:
  v8 = v5 + 7;
  if (v5 >= 0)
  {
    v50 = v5;
  }

  else
  {
    v50 = v5 + 7;
  }

  v51 = sub_225CCCF54();
  v73 = sub_225C0F394(v51, v52);
  v53 = sub_225CCCF54();
  v55 = sub_225C0F394(v53, v54);
  if (v5 < -7)
  {
    goto LABEL_80;
  }

  v71 = v55;
  if (v8 < 0xF)
  {
    a5 = &unk_2838FFEB8;
    v8 = v47;
    v56 = v73;
LABEL_67:
    v68 = sub_225C0330C(a5, v71, &unk_2838FFEE0, 2, 1);

    if (!v8)
    {
      v69 = sub_225C0330C(v68, v56, &unk_2838FFEE0, 2, 0);

      v8 = sub_2259D8490(v69);
    }

    return v8;
  }

  v7 = v50 >> 3;
  v72 = (v16 + 8);
  v35 = &unk_2838FFEB8;
  v5 = 0x7FFFFFFFFFFFFFF8;
  a3 = 8;
  v8 = v47;
  v56 = v73;
  while (1)
  {
    if (!v7)
    {
      __break(1u);
LABEL_73:
      __break(1u);
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (!v5)
    {
      goto LABEL_73;
    }

    v79 = v35;
    v57 = sub_225CCCF54();
    a5 = v57;
    a4 = v58;
    v59 = v58 >> 62;
    if ((v58 >> 62) > 1)
    {
      break;
    }

    if (v59)
    {
      v25 = (HIDWORD(v57) - v57);
      if (__OFSUB__(HIDWORD(v57), v57))
      {
        goto LABEL_77;
      }

      v60 = v25;
      if (!v25)
      {
LABEL_61:
        sub_2259BEF00(v57, v58);
        v62 = MEMORY[0x277D84F90];
        goto LABEL_65;
      }
    }

    else
    {
      v60 = BYTE6(v58);
      if (!BYTE6(v58))
      {
        goto LABEL_61;
      }
    }

LABEL_57:
    v74 = v8;
    if (v60 < 1)
    {
      v62 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73AA18);
      v62 = swift_allocObject();
      v63 = _swift_stdlib_malloc_size(v62);
      v62[2] = v60;
      v62[3] = 2 * v63 - 64;
    }

    v64 = v75;
    v65 = sub_225CCCEF4();
    sub_2259BEF00(a5, a4);
    (*v72)(v64, v76);
    v66 = v65 == v60;
    v56 = v73;
    v8 = v74;
    if (!v66)
    {
      goto LABEL_74;
    }

LABEL_65:
    v67 = sub_225C0330C(v62, v56, v79, 0, 0);
    if (v8)
    {

      return v8;
    }

    a5 = v67;

    v5 -= 8;
    a3 += 8;
    v35 = a5;
    if (!--v7)
    {
      goto LABEL_67;
    }
  }

  if (v59 != 2)
  {
    goto LABEL_61;
  }

  v61 = *(v57 + 16);
  v25 = *(v57 + 24);
  v60 = v25 - v61;
  if (!__OFSUB__(v25, v61))
  {
    if (!v60)
    {
      goto LABEL_61;
    }

    goto LABEL_57;
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  v19 = sub_225B29AA0((v25 > 1), v5, 1, v19);
LABEL_30:
  *(v19 + 2) = v5;
  v36 = &v19[56 * a5];
  v37 = 0xD000000000000027;
  *(v36 + 4) = 0xD000000000000027;
  *(v36 + 5) = a3;
  *(v36 + 6) = 0xD000000000000028;
  *(v36 + 7) = v79;
  *(v36 + 8) = 0xD000000000000012;
  *(v36 + 9) = v78;
  v38 = 104;
LABEL_31:
  *(v36 + 10) = v38;
  *v8 = a4;
  *(v8 + 8) = v19;
  *(v8 + 16) = v37;
  *(v8 + 24) = a3;
  *(v8 + 32) = v7;
  *(v8 + 40) = 0;
  swift_willThrow();
  return v8;
}

unint64_t sub_225C0217C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_225C0219C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_225CCCA94();
      swift_allocObject();
      sub_225CCCA54();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_225CCCF14();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_225C0223C(void *result)
{
  if (result[2] != 3)
  {
    goto LABEL_15;
  }

  v1 = result[4];
  v2 = result[5];
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = result;
      sub_2259BEF00(result[4], v2);
      result = v4;
      if (BYTE6(v2) != 8)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v8 = __OFSUB__(HIDWORD(v1), v1);
    v10 = HIDWORD(v1) - v1;
    if (v8)
    {
      goto LABEL_34;
    }

    if (v10 == 8)
    {
      goto LABEL_12;
    }

LABEL_15:
    v13 = 0;
    return (v13 & 1);
  }

  if (v3 != 2)
  {
    goto LABEL_27;
  }

  v7 = v1 + 16;
  v5 = *(v1 + 16);
  v6 = *(v7 + 8);
  v8 = __OFSUB__(v6, v5);
  v9 = v6 - v5;
  if (v8)
  {
    goto LABEL_35;
  }

  if (v9 != 8)
  {
    goto LABEL_15;
  }

LABEL_12:
  v1 = result[6];
  v2 = result[7];
  v11 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v11 == 3)
    {
      goto LABEL_27;
    }

    v16 = v1 + 16;
    v14 = *(v1 + 16);
    v15 = *(v16 + 8);
    v8 = __OFSUB__(v15, v14);
    v17 = v15 - v14;
    if (v8)
    {
      goto LABEL_35;
    }

    if (v17 != 8)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if (!v11)
  {
    v12 = result;
    sub_2259BEF00(result[6], v2);
    result = v12;
    if (BYTE6(v2) != 8)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v8 = __OFSUB__(HIDWORD(v1), v1);
  v19 = HIDWORD(v1) - v1;
  if (v8)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v19 != 8)
  {
    goto LABEL_15;
  }

LABEL_20:
  v1 = result[8];
  v2 = result[9];
  v18 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v18)
    {
      sub_2259BEF00(result[8], v2);
      v1 = BYTE6(v2);
      goto LABEL_31;
    }

    v8 = __OFSUB__(HIDWORD(v1), v1);
    LODWORD(v1) = HIDWORD(v1) - v1;
    if (!v8)
    {
      v1 = v1;
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  if (v18 == 3)
  {
LABEL_27:
    sub_2259BEF00(v1, v2);
    v13 = 0;
    return (v13 & 1);
  }

  v22 = v1 + 16;
  v20 = *(v1 + 16);
  v21 = *(v22 + 8);
  v8 = __OFSUB__(v21, v20);
  v1 = v21 - v20;
  if (!v8)
  {
LABEL_31:
    if (v1 == 8)
    {
      v13 = -1;
    }

    else
    {
      v13 = 0;
    }

    return (v13 & 1);
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_225C023C0(uint64_t *a1, size_t a2, uint64_t *a3, uint64_t a4, unint64_t a5, size_t a6, size_t *a7)
{
  dataOutAvailable = a6;
  v11 = a2;
  v12 = a1;
  v88 = *MEMORY[0x277D85DE8];
  v14 = *a1;
  v13 = a1[1];
  v15 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v15 != 2)
    {
      *(&dataOut + 7) = 0;
      *&dataOut = 0;
      v34 = *a3;
      v17 = a3[1];
      sub_2259CB710(a4, a5);
      sub_2259CB710(a4, a5);
      sub_2259CB710(v34, v17);
      v18 = sub_225C0F394(v34, v17);
      v35 = *a3;
      v21 = a3[1];
      v36 = v21 >> 62;
      if ((v21 >> 62) <= 1)
      {
        if (v36)
        {
          v42 = __OFSUB__(HIDWORD(v35), v35);
          v44 = HIDWORD(v35) - v35;
          if (v42)
          {
LABEL_105:
            __break(1u);
            goto LABEL_106;
          }

          v22 = v44;
        }

        else
        {
          v22 = BYTE6(v21);
        }

        goto LABEL_36;
      }

      goto LABEL_24;
    }

    sub_2259CB710(a4, a5);
    sub_2259CB710(a4, a5);
    sub_2259CB710(v14, v13);
    sub_2259BEF00(v14, v13);
    *&dataOut = v14;
    *(&dataOut + 1) = v13 & 0x3FFFFFFFFFFFFFFFLL;
    v85 = v12;
    *v12 = xmmword_225CD4150;
    sub_2259BEF00(0, 0xC000000000000000);
    sub_225CCCEB4();
    v18 = *(&dataOut + 1);
    v23 = *(dataOut + 16);
    sub_2259CB710(a4, a5);
    result = sub_225CCCA44();
    if (!result)
    {
      __break(1u);
      goto LABEL_113;
    }

    v25 = result;
    v26 = sub_225CCCA74();
    if (!__OFSUB__(v23, v26))
    {
      v81 = v23 - v26;
      v82 = v25;
      v84 = dataOut;
      LOBYTE(v17) = v11;
      v11 = dataOutAvailable;
      sub_225CCCA64();
      v12 = *a3;
      v27 = a3[1];
      sub_2259CB710(*a3, v27);
      v14 = sub_225C0F394(v12, v27);
      v28 = *a3;
      v29 = a3[1];
      v21 = v29 >> 62;
      if ((v29 >> 62) <= 1)
      {
        dataOutAvailable = v11;
        if (v21)
        {
          v42 = __OFSUB__(HIDWORD(v28), v28);
          v57 = HIDWORD(v28) - v28;
          if (v42)
          {
LABEL_108:
            __break(1u);
            goto LABEL_109;
          }

          v30 = v57;
        }

        else
        {
          v30 = BYTE6(v29);
        }

        goto LABEL_62;
      }

LABEL_28:
      dataOutAvailable = v11;
      if (v21 == 2)
      {
        v41 = v28 + 16;
        v19 = *(v28 + 16);
        v40 = *(v41 + 8);
        v30 = v40 - v19;
        if (__OFSUB__(v40, v19))
        {
          __break(1u);
LABEL_32:
          v42 = __OFSUB__(HIDWORD(v19), v19);
          v43 = HIDWORD(v19) - v19;
          if (!v42)
          {
            v22 = v43;
            goto LABEL_44;
          }

          goto LABEL_104;
        }
      }

      else
      {
        v30 = 0;
      }

LABEL_62:
      sub_2259CB710(a4, a5);
      v58 = sub_225C0F394(a4, a5);
      v59 = a5 >> 62;
      if ((a5 >> 62) > 1)
      {
        if (v59 != 2)
        {
          v60 = 0;
          goto LABEL_72;
        }

        v62 = *(a4 + 16);
        v61 = *(a4 + 24);
        v60 = v61 - v62;
        if (!__OFSUB__(v61, v62))
        {
          goto LABEL_72;
        }

        __break(1u);
      }

      else if (!v59)
      {
        v60 = BYTE6(a5);
        goto LABEL_72;
      }

      if (__OFSUB__(HIDWORD(a4), a4))
      {
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      v60 = HIDWORD(a4) - a4;
LABEL_72:
      v54 = CCCrypt(v17 & 1, 2u, 0, (v14 + 32), v30, 0, (v58 + 32), v60, (v82 + v81), dataOutAvailable, a7);

      sub_2259BEF00(a4, a5);
      sub_2259BEF00(a4, a5);
      sub_2259BEF00(a4, a5);
      *v85 = v84;
      v85[1] = v18 | 0x8000000000000000;
      return v54;
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v84 = a6;
  v85 = a1;
  if (!v15)
  {
    LODWORD(v82) = a2;
    dataOutAvailable = v14 >> 24;
    v81 = HIWORD(v13);
    sub_2259CB710(a4, a5);
    sub_2259CB710(a4, a5);
    sub_2259BEF00(v14, v13);
    *&dataOut = v14;
    WORD4(dataOut) = v13;
    BYTE10(dataOut) = BYTE2(v13);
    BYTE11(dataOut) = BYTE3(v13);
    BYTE12(dataOut) = BYTE4(v13);
    BYTE13(dataOut) = BYTE5(v13);
    BYTE14(dataOut) = BYTE6(v13);
    v16 = *a3;
    v17 = a3[1];
    sub_2259CB710(*a3, v17);
    v18 = sub_225C0F394(v16, v17);
    v19 = *a3;
    v20 = a3[1];
    v21 = v20 >> 62;
    if ((v20 >> 62) <= 1)
    {
      v12 = v84;
      LOBYTE(v11) = v82;
      if (!v21)
      {
        v22 = BYTE6(v20);
LABEL_44:
        sub_2259CB710(a4, a5);
        v45 = sub_225C0F394(a4, a5);
        v50 = a5 >> 62;
        if ((a5 >> 62) <= 1)
        {
          if (!v50)
          {
            v51 = BYTE6(a5);
LABEL_58:
            v54 = CCCrypt(v11 & 1, 2u, 0, (v18 + 32), v22, 0, (v45 + 32), v51, &dataOut, v12, a7);

            v55 = dataOut;
            v56 = DWORD2(dataOut) | ((WORD6(dataOut) | (BYTE14(dataOut) << 16)) << 32);
            sub_2259BEF00(a4, a5);
            sub_2259BEF00(a4, a5);
            *v85 = v55;
            v85[1] = v56;
            return v54;
          }

          if (!__OFSUB__(HIDWORD(a4), a4))
          {
            v51 = HIDWORD(a4) - a4;
            goto LABEL_58;
          }

          goto LABEL_107;
        }

        if (v50 != 2)
        {
          v51 = 0;
          goto LABEL_58;
        }

        v53 = *(a4 + 16);
        v52 = *(a4 + 24);
        v51 = v52 - v53;
        if (!__OFSUB__(v52, v53))
        {
          goto LABEL_58;
        }

        __break(1u);
LABEL_51:
        if (!__OFSUB__(HIDWORD(a4), a4))
        {
          v47 = HIDWORD(a4) - a4;
          goto LABEL_54;
        }

LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      goto LABEL_32;
    }

    v12 = v84;
    v11 = v82;
    if (v21 != 2)
    {
LABEL_43:
      v22 = 0;
      goto LABEL_44;
    }

    v37 = v19 + 16;
    v35 = *(v19 + 16);
    v36 = *(v37 + 8);
    v22 = v36 - v35;
    if (!__OFSUB__(v36, v35))
    {
      goto LABEL_44;
    }

    __break(1u);
LABEL_24:
    v22 = 0;
    if (v36 != 2 || (v39 = v35 + 16, v28 = *(v35 + 16), v38 = *(v39 + 8), v22 = v38 - v28, !__OFSUB__(v38, v28)))
    {
LABEL_36:
      sub_2259CB710(a4, a5);
      v45 = sub_225C0F394(a4, a5);
      v46 = a5 >> 62;
      if ((a5 >> 62) <= 1)
      {
        if (!v46)
        {
          v47 = BYTE6(a5);
LABEL_54:
          v54 = CCCrypt(v11 & 1, 2u, 0, (v18 + 32), v22, 0, (v45 + 32), v47, &dataOut, dataOutAvailable, a7);

          sub_2259BEF00(a4, a5);
          sub_2259BEF00(a4, a5);
          return v54;
        }

        goto LABEL_51;
      }

      if (v46 != 2)
      {
        v47 = 0;
        goto LABEL_54;
      }

      v49 = *(a4 + 16);
      v48 = *(a4 + 24);
      v47 = v48 - v49;
      if (!__OFSUB__(v48, v49))
      {
        goto LABEL_54;
      }

      __break(1u);
      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_28;
  }

  v31 = v13 & 0x3FFFFFFFFFFFFFFFLL;
  sub_2259CB710(a4, a5);
  sub_2259CB710(a4, a5);
  sub_2259CB710(v14, v13);
  sub_2259BEF00(v14, v13);
  *v12 = xmmword_225CD4150;
  sub_2259BEF00(0, 0xC000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v14 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v33 < v14)
    {
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    if (sub_225CCCA44() && __OFSUB__(v14, sub_225CCCA74()))
    {
      goto LABEL_103;
    }

    sub_225CCCA94();
    swift_allocObject();
    v63 = sub_225CCCA24();

    v31 = v63;
    v33 = v14 >> 32;
  }

  if (v33 < v14)
  {
    goto LABEL_100;
  }

  sub_2259CB710(a4, a5);

  result = sub_225CCCA44();
  if (result)
  {
    v64 = result;
    v65 = sub_225CCCA74();
    if (!__OFSUB__(v14, v65))
    {
      v83 = v14 - v65;
      sub_225CCCA64();
      v66 = *a3;
      v67 = a3[1];
      sub_2259CB710(*a3, v67);
      v68 = sub_225C0F394(v66, v67);
      v69 = *a3;
      v70 = a3[1];
      v71 = v70 >> 62;
      if ((v70 >> 62) > 1)
      {
        if (v71 != 2)
        {
          v72 = 0;
          goto LABEL_87;
        }

        v74 = v69 + 16;
        v69 = *(v69 + 16);
        v73 = *(v74 + 8);
        v72 = v73 - v69;
        if (!__OFSUB__(v73, v69))
        {
LABEL_87:
          sub_2259CB710(a4, a5);
          v76 = sub_225C0F394(a4, a5);
          v77 = a5 >> 62;
          if ((a5 >> 62) > 1)
          {
            if (v77 != 2)
            {
              v78 = 0;
              goto LABEL_97;
            }

            v80 = *(a4 + 16);
            v79 = *(a4 + 24);
            v78 = v79 - v80;
            if (!__OFSUB__(v79, v80))
            {
              goto LABEL_97;
            }

            __break(1u);
          }

          else if (!v77)
          {
            v78 = BYTE6(a5);
            goto LABEL_97;
          }

          if (__OFSUB__(HIDWORD(a4), a4))
          {
            goto LABEL_111;
          }

          v78 = HIDWORD(a4) - a4;
LABEL_97:
          v54 = CCCrypt(v11 & 1, 2u, 0, (v68 + 32), v72, 0, (v76 + 32), v78, (v64 + v83), v84, a7);

          sub_2259BEF00(a4, a5);

          sub_2259BEF00(a4, a5);
          sub_2259BEF00(a4, a5);
          *v85 = v14;
          v85[1] = v31 | 0x4000000000000000;
          return v54;
        }

        __break(1u);
      }

      else if (!v71)
      {
        v72 = BYTE6(v70);
        goto LABEL_87;
      }

      v42 = __OFSUB__(HIDWORD(v69), v69);
      v75 = HIDWORD(v69) - v69;
      if (v42)
      {
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
      }

      v72 = v75;
      goto LABEL_87;
    }

    goto LABEL_101;
  }

LABEL_113:
  __break(1u);
  return result;
}

uint64_t sub_225C02CA4(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = v4;
  v65 = *MEMORY[0x277D85DE8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v56 - v14;
  if ((sub_225C0223C(a3) & 1) == 0)
  {
    v56 = 0x8000000225D25510;
    v57 = 0x8000000225D254E0;
    v19 = MEMORY[0x277D84F90];
    v20 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v22 = v21;
    v23 = sub_225CCE954();
    v24 = *(v23 - 8);
    (*(v24 + 56))(v15, 1, 1, v23);
    LODWORD(v23) = (*(v24 + 48))(v15, 1, v23);
    sub_2259DB318(v15);
    if (v23)
    {
      v25 = 861;
    }

    else
    {
      v25 = 23;
    }

    v26 = sub_225B2C374(v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v26;
    sub_225B2C4A0(v20, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v63);

    v28 = v63;
    v29 = sub_225B29AA0(0, 1, 1, v19);
    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_225B29AA0((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[56 * v31];
    *(v32 + 4) = 0xD000000000000018;
    *(v32 + 5) = 0x8000000225D254C0;
    v33 = v57;
    *(v32 + 6) = 0xD000000000000028;
    *(v32 + 7) = v33;
    v34 = v56;
    *(v32 + 8) = 0xD000000000000023;
    *(v32 + 9) = v34;
    *(v32 + 10) = 45;
    *v22 = v25;
    *(v22 + 8) = v29;
    *(v22 + 16) = 0xD000000000000018;
    *(v22 + 24) = 0x8000000225D254C0;
    *(v22 + 32) = v28;
    *(v22 + 40) = 0;
    return swift_willThrow();
  }

  v17 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v17)
    {
      v18 = BYTE6(a2);
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v17 != 2)
  {
    v18 = 0;
    goto LABEL_18;
  }

  v37 = *(a1 + 16);
  v36 = *(a1 + 24);
  v38 = __OFSUB__(v36, v37);
  v18 = v36 - v37;
  if (v38)
  {
    __break(1u);
LABEL_15:
    v18 = (HIDWORD(a1) - a1);
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      v16 = sub_225B29AA0((v18 > 1), v15, 1, v16);
LABEL_26:
      *(v16 + 2) = v15;
      v50 = &v16[56 * a3];
      *(v50 + 4) = v6;
      *(v50 + 5) = a1;
      v51 = v57;
      *(v50 + 6) = 0xD000000000000028;
      *(v50 + 7) = v51;
      v52 = v56;
      *(v50 + 8) = 0xD000000000000023;
      *(v50 + 9) = v52;
      *(v50 + 10) = 75;
      *a4 = v5;
      *(a4 + 8) = v16;
      *(a4 + 16) = v6;
      *(a4 + 24) = a1;
      *(a4 + 32) = v7;
      *(a4 + 40) = 0;
      swift_willThrow();
      sub_2259BEF00(v63, v64);
      return sub_2259BEF00(v62, *(&v62 + 1));
    }

    v18 = v18;
  }

LABEL_18:
  v39 = v18 + 8;
  if (__OFADD__(v18, 8))
  {
    __break(1u);
    goto LABEL_30;
  }

  v63 = sub_225C0219C(v18 + 8);
  v64 = v40;
  v61 = 0;
  v62 = xmmword_225CD4150;
  sub_225C01804(a3);
  sub_2259CB710(a1, a2);
  v41 = sub_225C023C0(&v63, a4 & 1, &v62, a1, a2, v39, &v61);
  sub_2259BEF00(a1, a2);
  if (v4)
  {
    sub_2259BEF00(v63, v64);
    return sub_2259BEF00(v62, *(&v62 + 1));
  }

  if (v41)
  {
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_225CCF204();

    v59 = 0xD000000000000024;
    v60 = 0x8000000225D25540;
    v58 = v41;
    v42 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v42);

    v6 = v59;
    a1 = v60;
    v56 = 0x8000000225D25510;
    v57 = 0x8000000225D254E0;
    v43 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    a4 = v44;
    v45 = sub_225CCE954();
    v46 = *(v45 - 8);
    (*(v46 + 56))(v15, 1, 1, v45);
    LODWORD(v45) = (*(v46 + 48))(v15, 1, v45);
    sub_2259DB318(v15);
    if (v45)
    {
      v5 = 863;
    }

    else
    {
      v5 = 23;
    }

    v47 = MEMORY[0x277D84F90];
    v48 = sub_225B2C374(MEMORY[0x277D84F90]);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v48;
    sub_225B2C4A0(v43, sub_225B2AC40, 0, v49, &v59);

    v7 = v59;
    v16 = sub_225B29AA0(0, 1, 1, v47);
    a3 = *(v16 + 2);
    v18 = *(v16 + 3);
    v15 = (a3 + 1);
    if (a3 < v18 >> 1)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  if ((v61 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v54 = v63;
  v53 = v64;
  v55 = sub_225CCCFD4();
  sub_2259BEF00(v54, v53);
  sub_2259BEF00(v62, *(&v62 + 1));
  return v55;
}

uint64_t sub_225C0330C(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v89 = *MEMORY[0x277D85DE8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v68 - v16;
  v18 = *(a1 + 16);
  if (__OFADD__(v18, 8))
  {
    __break(1u);
LABEL_44:
    v15 = sub_225B29AA0((v16 > 1), a3, 1, v15);
LABEL_12:
    *(v15 + 2) = a3;
    v41 = &v15[56 * v17];
    *(v41 + 4) = v6;
    *(v41 + 5) = a5;
    v42 = v83;
    *(v41 + 6) = 0xD000000000000028;
    *(v41 + 7) = v42;
    v43 = v82;
    *(v41 + 8) = 0xD000000000000023;
    *(v41 + 9) = v43;
    *(v41 + 10) = 160;
    *v7 = a1;
    *(v7 + 8) = v15;
    *(v7 + 16) = v6;
    *(v7 + 24) = a5;
    *(v7 + 32) = a4;
    *(v7 + 40) = 0;
    swift_willThrow();
    sub_2259BEF00(v87, v88);
    return a3;
  }

  LODWORD(v83) = a5;
  v82 = v18 + 8;
  v19 = sub_225C0219C(v18 + 8);
  v21 = v19;
  v87 = v19;
  v88 = v20;
  dataOutMoved = 0;
  v22 = v20 >> 62;
  v80 = v17;
  v81 = v5;
  if ((v20 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v77 = (a3 + 32);
      v78 = a1;
      v79 = v18;
      LODWORD(v76) = a4;
      v44 = v20 & 0x3FFFFFFFFFFFFFFFLL;
      v45 = v20;

      sub_2259BEF00(v21, v45);
      *&dataOut = v21;
      *(&dataOut + 1) = v44;
      sub_2259BEF00(0, 0xC000000000000000);
      sub_225CCCEB4();
      v46 = dataOut;
      v47 = *(dataOut + 16);
      v48 = *(dataOut + 24);
      result = sub_225CCCA44();
      if (!result)
      {
        __break(1u);
        goto LABEL_53;
      }

      v50 = result;
      v51 = sub_225CCCA74();
      v52 = v47 - v51;
      if (__OFSUB__(v47, v51))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (__OFSUB__(v48, v47))
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      sub_225CCCA64();
      if (v83)
      {
        v53 = 0;
      }

      else
      {
        v53 = v77;
      }

      v54 = CCCrypt(v83 & 1, 1u, v76, (a2 + 32), 8uLL, v53, (v78 + 32), v79, (v50 + v52), v82, &dataOutMoved);
      v87 = v46;
      v88 = *(&v46 + 1) | 0x8000000000000000;
      if (v54)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v83)
      {
        v59 = 0;
      }

      else
      {
        v59 = (a3 + 32);
      }

      *(&dataOut + 7) = 0;
      *&dataOut = 0;
      if (CCCrypt(v83 & 1, 1u, a4, (a2 + 32), 8uLL, v59, (a1 + 32), v18, &dataOut, v82, &dataOutMoved))
      {
        goto LABEL_8;
      }
    }

LABEL_31:
    if ((dataOutMoved & 0x8000000000000000) == 0)
    {
      sub_225CCCF34();
      v60 = v87;
      v61 = v88;
      sub_2259CB710(v87, v88);
      a3 = sub_225C0F394(v60, v61);
      sub_2259BEF00(v60, v61);
      return a3;
    }

    __break(1u);
    goto LABEL_46;
  }

  v77 = (a3 + 32);
  v78 = a1;
  v79 = v18;
  if (!v22)
  {
    v23 = v19 >> 8;
    LODWORD(v76) = a4;
    v24 = v19 >> 16;
    v25 = v19 >> 24;
    v26 = HIDWORD(v19);
    v27 = v19 >> 40;
    v28 = HIWORD(v19);
    v75 = a2;
    v29 = HIBYTE(v19);
    v69 = v20 >> 8;
    v70 = v20 >> 16;
    v71 = v20 >> 24;
    v72 = HIDWORD(v20);
    v73 = v20 >> 40;
    v74 = HIWORD(v20);
    v30 = v20;
    sub_2259BEF00(v19, v20);
    LOBYTE(dataOut) = v21;
    BYTE1(dataOut) = v23;
    BYTE2(dataOut) = v24;
    BYTE3(dataOut) = v25;
    BYTE4(dataOut) = v26;
    BYTE5(dataOut) = v27;
    BYTE6(dataOut) = v28;
    BYTE7(dataOut) = v29;
    BYTE8(dataOut) = v30;
    BYTE9(dataOut) = v69;
    BYTE10(dataOut) = v70;
    BYTE11(dataOut) = v71;
    BYTE12(dataOut) = v72;
    BYTE13(dataOut) = v73;
    if (v83)
    {
      v31 = 0;
    }

    else
    {
      v31 = v77;
    }

    BYTE14(dataOut) = v74;
    v32 = CCCrypt(v83 & 1, 1u, v76, (v75 + 32), 8uLL, v31, (v78 + 32), v79, &dataOut, v82, &dataOutMoved);
    v87 = dataOut;
    v88 = DWORD2(dataOut) | ((WORD6(dataOut) | (BYTE14(dataOut) << 16)) << 32);
    if (v32)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

  v55 = v20 & 0x3FFFFFFFFFFFFFFFLL;
  v56 = v20;

  sub_2259BEF00(v21, v56);
  sub_2259BEF00(0, 0xC000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = v21 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v76 = v21 >> 32;
    v75 = v58 - v21;
    if (v58 < v21)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (sub_225CCCA44() && __OFSUB__(v21, sub_225CCCA74()))
    {
LABEL_51:
      __break(1u);
    }

    sub_225CCCA94();
    swift_allocObject();
    v62 = sub_225CCCA24();

    v55 = v62;
    v58 = v76;
  }

  if (v58 < v21)
  {
    goto LABEL_47;
  }

  result = sub_225CCCA44();
  if (result)
  {
    v63 = result;
    v64 = sub_225CCCA74();
    v65 = v21 - v64;
    if (__OFSUB__(v21, v64))
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    sub_225CCCA64();
    if (v83)
    {
      v66 = 0;
    }

    else
    {
      v66 = v77;
    }

    v67 = CCCrypt(v83 & 1, 1u, a4, (a2 + 32), 8uLL, v66, (v78 + 32), v79, (v63 + v65), v82, &dataOutMoved);

    v87 = v21;
    v88 = v55 | 0x4000000000000000;
    if (!v67)
    {
      goto LABEL_31;
    }

LABEL_8:
    *&dataOut = 0;
    *(&dataOut + 1) = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000016, 0x8000000225D255E0);
    v84 = v83 & 1;
    sub_225CCF434();
    a5 = *(&dataOut + 1);
    v6 = dataOut;
    v82 = 0x8000000225D25600;
    v83 = 0x8000000225D254E0;
    v33 = MEMORY[0x277D84F90];
    v34 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v7 = v35;
    v36 = sub_225CCE954();
    v37 = *(v36 - 8);
    v38 = v80;
    (*(v37 + 56))(v80, 1, 1, v36);
    LODWORD(v36) = (*(v37 + 48))(v38, 1, v36);
    sub_2259DB318(v38);
    if (v36)
    {
      LOWORD(a1) = 864;
    }

    else
    {
      LOWORD(a1) = 23;
    }

    v39 = sub_225B2C374(v33);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    *&dataOut = v39;
    sub_225B2C4A0(v34, sub_225B2AC40, 0, v40, &dataOut);

    a4 = dataOut;
    v15 = sub_225B29AA0(0, 1, 1, v33);
    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    a3 = v17 + 1;
    if (v17 < v16 >> 1)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_53:
  __break(1u);
  return result;
}

void sub_225C03A90(uint64_t a1, unint64_t a2)
{
  sub_2259CB710(a1, a2);
  v4 = sub_225C0F394(a1, a2);
  v5 = *(v4 + 16);
  v6 = v5 - 9;
  if (v5 < 9)
  {
    goto LABEL_19;
  }

  v7 = (v4 + 32);
  if (*(v4 + 32 + v6) == 128)
  {
    goto LABEL_17;
  }

  if (v5 == 9)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v6 = v5 - 10;
  if (v7[v5 - 10] == 128)
  {
LABEL_17:
    sub_2259D2AD0(v4, v7, 0, (2 * v6) | 1);
    return;
  }

  v6 = v5 - 11;
  if (v5 < 0xB)
  {
    goto LABEL_19;
  }

  if (v7[v6] == 128)
  {
    goto LABEL_17;
  }

  if (v5 == 11)
  {
    goto LABEL_19;
  }

  v6 = v5 - 12;
  if (v7[v5 - 12] == 128)
  {
    goto LABEL_17;
  }

  v6 = v5 - 13;
  if (v5 < 0xD)
  {
    goto LABEL_19;
  }

  if (v7[v6] == 128)
  {
    goto LABEL_17;
  }

  if (v5 == 13)
  {
    goto LABEL_19;
  }

  v6 = v5 - 14;
  if (v7[v5 - 14] == 128)
  {
    goto LABEL_17;
  }

  v6 = v5 - 15;
  if (v5 < 0xF)
  {
    goto LABEL_19;
  }

  if (v7[v6] == 128)
  {
    goto LABEL_17;
  }

  if (v5 == 15)
  {
    goto LABEL_19;
  }

  v6 = v5 - 16;
  if (v7[v5 - 16] == 128)
  {
    goto LABEL_17;
  }

  sub_2259CB710(a1, a2);
}

unint64_t sub_225C03BD0()
{
  result = qword_27D740418;
  if (!qword_27D740418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740418);
  }

  return result;
}

uint64_t PassportFields.assessorFieldName.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000011;
  v3 = 0x6D616E5F7473616CLL;
  if (v1 != 1)
  {
    v3 = 0;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x616E5F7473726966;
  }
}

CoreIDVShared::PassportFields_optional __swiftcall PassportFields.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PassportFields.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C616E6F6974616ELL;
  v3 = 0x6942664F65746164;
  if (v1 != 4)
  {
    v3 = 0x7265646E6567;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_225C03DD4()
{
  result = qword_27D740420;
  if (!qword_27D740420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740420);
  }

  return result;
}

uint64_t sub_225C03E30()
{
  sub_225CCE5B4();
}

void sub_225C03F44(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000797469;
  v4 = 0x6C616E6F6974616ELL;
  v5 = 0x8000000225D0C990;
  v6 = 0xEB00000000687472;
  v7 = 0x6942664F65746164;
  if (v2 != 4)
  {
    v7 = 0x7265646E6567;
    v6 = 0xE600000000000000;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v5 = v6;
  }

  if (v2 == 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x8000000225D0C970;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x8000000225D0C950;
  }

  if (*v1 <= 2u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t MRZType.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

uint64_t MRZFormat.lineCount.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

CoreIDVShared::MRZFormat_optional __swiftcall MRZFormat.init(basedOnLineCharacterCount:)(Swift::Int basedOnLineCharacterCount)
{
  v2 = byte_2839000A0;
  if (qword_225CFA9B0[byte_2839000A0] == basedOnLineCharacterCount || (v2 = byte_2839000A1, qword_225CFA9B0[byte_2839000A1] == basedOnLineCharacterCount))
  {
    *v1 = v2;
  }

  else
  {
    if (qword_225CFA9B0[byte_2839000A2] == basedOnLineCharacterCount)
    {
      v3 = byte_2839000A2;
    }

    else
    {
      v3 = 3;
    }

    *v1 = v3;
  }

  return basedOnLineCharacterCount;
}

CoreIDVShared::MRZFormat_optional __swiftcall MRZFormat.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_225C041B0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 << 16 == *a2 << 16)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_225CCF934();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_225C04220()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225C0427C()
{
  sub_225CCE5B4();
}

uint64_t sub_225C042BC()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t MRZResult.dobWithCheckDigit.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MRZResult.expiryDateWithCheckDigit.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MRZResult.docNumber.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MRZResult.issuingCountryCode.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_225C0442C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 56);
  return result;
}

uint64_t sub_225C04470(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 56) = v2;
  return result;
}

uint64_t sub_225C04500(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;
}

uint64_t sub_225C04598(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t sub_225C04630(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
}

uint64_t sub_225C046C8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t sub_225C04760(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 80) = v2;
}

uint64_t sub_225C047F8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t sub_225C04890(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 88) = v2;
}

uint64_t sub_225C04928(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

double sub_225C049C0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v121 = a1;
  v122 = sub_225CCD954();
  v124 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v3);
  v125 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  v6 = 0;
  v7 = sub_225C0AD50(v5, v1, sub_225C0AB68, sub_225C0AB68);

  v8 = 1 << v7[32];
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 8);
  if (v10)
  {
    v11 = 0;
    v12 = __clz(__rbit64(v10));
    v13 = (v10 - 1) & v10;
    v14 = (v8 + 63) >> 6;
LABEL_9:
    v17 = *(v7 + 7);
    v18 = (*(v7 + 6) + 16 * v12);
    v19 = v18[1];
    v119 = *v18;
    v20 = *(v17 + 8 * v12);
    v21 = v19;

LABEL_10:
    v22 = v20;
    while (v13)
    {
LABEL_11:
      v23 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v24 = v23 | (v11 << 6);
      v20 = *(*(v7 + 7) + 8 * v24);
      if (v22 < v20)
      {
        v27 = (*(v7 + 6) + 16 * v24);
        v26 = *v27;
        v123 = v27[1];
        v119 = v26;

        v21 = v123;
        goto LABEL_10;
      }
    }

    while (1)
    {
      v25 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v25 >= v14)
      {
        v115 = v22;

        v28 = v21;
        goto LABEL_19;
      }

      v13 = *&v7[8 * v25 + 64];
      ++v11;
      if (v13)
      {
        v11 = v25;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_96;
  }

  v15 = 0;
  v14 = (v8 + 63) >> 6;
  while (v14 - 1 != v10)
  {
    v11 = v10 + 1;
    v16 = *&v7[8 * v10 + 72];
    v15 -= 64;
    ++v10;
    if (v16)
    {
      v13 = (v16 - 1) & v16;
      v12 = __clz(__rbit64(v16)) - v15;
      goto LABEL_9;
    }
  }

  v119 = 0;
  v28 = 0;
  v115 = 0;
LABEL_19:
  swift_beginAccess();
  v20 = v2[9];

  v30 = sub_225C0AD50(v29, v2, sub_225C0AC5C, sub_225C0AC5C);
  v123 = v28;
  v7 = v30;

  v31 = 1 << v7[32];
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v7 + 8);
  if (v33)
  {
    v34 = 0;
    v35 = __clz(__rbit64(v33));
    v36 = (v33 - 1) & v33;
    v37 = (v31 + 63) >> 6;
LABEL_27:
    v40 = *(v7 + 7);
    v41 = (*(v7 + 6) + 16 * v35);
    v42 = v41[1];
    v118 = *v41;
    v43 = *(v40 + 8 * v35);
    v44 = v42;

LABEL_28:
    v45 = v43;
    while (v36)
    {
LABEL_29:
      v46 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v47 = v46 | (v34 << 6);
      v43 = *(*(v7 + 7) + 8 * v47);
      if (v45 < v43)
      {
        v50 = (*(v7 + 6) + 16 * v47);
        v49 = *v50;
        v120 = v50[1];
        v118 = v49;

        v44 = v120;
        goto LABEL_28;
      }
    }

    v13 = v123;
    while (1)
    {
      v48 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v48 >= v37)
      {
        v114 = v45;

        goto LABEL_38;
      }

      v36 = *&v7[8 * v48 + 64];
      ++v34;
      if (v36)
      {
        v34 = v48;
        goto LABEL_29;
      }
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    swift_once();
    goto LABEL_75;
  }

  v38 = 0;
  v37 = (v31 + 63) >> 6;
  while (v37 - 1 != v33)
  {
    v34 = v33 + 1;
    v39 = *&v7[8 * v33 + 72];
    v38 -= 64;
    ++v33;
    if (v39)
    {
      v36 = (v39 - 1) & v39;
      v35 = __clz(__rbit64(v39)) - v38;
      goto LABEL_27;
    }
  }

  v118 = 0;
  v44 = 0;
  v114 = 0;
LABEL_38:
  v120 = v44;
  swift_beginAccess();
  v7 = v2[10];

  v52 = sub_225C0AD50(v51, v2, sub_225C0AF20, sub_225C0AF20);

  v53 = 1 << v52[32];
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(v52 + 8);
  if (v55)
  {
    v56 = 0;
    v57 = __clz(__rbit64(v55));
    v13 = (v55 - 1) & v55;
    v58 = (v53 + 63) >> 6;
LABEL_46:
    v61 = *(v52 + 7);
    v62 = (*(v52 + 6) + 16 * v57);
    v20 = v62[1];
    v117 = *v62;
    v63 = *(v61 + 8 * v57);

LABEL_47:
    v64 = v63;
    while (v13)
    {
LABEL_48:
      v65 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v66 = v65 | (v56 << 6);
      v63 = *(*(v52 + 7) + 8 * v66);
      if (v64 < v63)
      {
        v69 = (*(v52 + 6) + 16 * v66);
        v68 = *v69;
        v116 = v69[1];
        v117 = v68;

        v20 = v116;
        goto LABEL_47;
      }
    }

    while (1)
    {
      v67 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_97;
      }

      if (v67 >= v58)
      {
        v113 = v64;

        goto LABEL_56;
      }

      v13 = *&v52[8 * v67 + 64];
      ++v56;
      if (v13)
      {
        v56 = v67;
        goto LABEL_48;
      }
    }
  }

  v59 = 0;
  v58 = (v53 + 63) >> 6;
  while (v58 - 1 != v55)
  {
    v56 = v55 + 1;
    v60 = *&v52[8 * v55 + 72];
    v59 -= 64;
    ++v55;
    if (v60)
    {
      v13 = (v60 - 1) & v60;
      v57 = __clz(__rbit64(v60)) - v59;
      goto LABEL_46;
    }
  }

  v117 = 0;
  v20 = 0;
  v113 = 0;
LABEL_56:
  swift_beginAccess();
  v7 = v2[11];

  v71 = sub_225C0AD50(v70, v2, sub_225C0B014, sub_225C0B014);

  v72 = 1 << v71[32];
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & *(v71 + 8);
  if (v74)
  {
    v13 = 0;
    v75 = __clz(__rbit64(v74));
    v76 = (v74 - 1) & v74;
    v77 = (v72 + 63) >> 6;
LABEL_64:
    v80 = *(v71 + 7);
    v81 = (*(v71 + 6) + 16 * v75);
    v6 = v81[1];
    v116 = *v81;
    v82 = *(v80 + 8 * v75);

LABEL_65:
    v83 = v82;
    while (v76)
    {
LABEL_66:
      v84 = __clz(__rbit64(v76));
      v76 &= v76 - 1;
      v85 = v84 | (v13 << 6);
      v82 = *(*(v71 + 7) + 8 * v85);
      if (v83 < v82)
      {
        v88 = (*(v71 + 6) + 16 * v85);
        v87 = *v88;
        v112 = v88[1];
        v116 = v87;

        v6 = v112;
        goto LABEL_65;
      }
    }

    while (1)
    {
      v86 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_98;
      }

      if (v86 >= v77)
      {
        v112 = v83;

        goto LABEL_74;
      }

      v76 = *&v71[8 * v86 + 64];
      ++v13;
      if (v76)
      {
        v13 = v86;
        goto LABEL_66;
      }
    }
  }

  v78 = 0;
  v77 = (v72 + 63) >> 6;
  while (v77 - 1 != v74)
  {
    v13 = v74 + 1;
    v79 = *&v71[8 * v74 + 72];
    v78 -= 64;
    ++v74;
    if (v79)
    {
      v76 = (v79 - 1) & v79;
      v75 = __clz(__rbit64(v79)) - v78;
      goto LABEL_64;
    }
  }

  v116 = 0;
  v6 = 0;
  v112 = 0;
LABEL_74:
  v13 = v123;
  v7 = v122;
  if (qword_28105B910 != -1)
  {
    goto LABEL_99;
  }

LABEL_75:
  v89 = off_28105B918;
  v90 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v91 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v91));
  (*(v124 + 16))(v125, &v89[v90], v7);
  os_unfair_lock_unlock(&v89[v91]);
  v92 = objc_opt_self();

  v93 = v120;

  v94 = [v92 standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 == 1)
  {
    v95 = sub_225CCE444();
    v96 = [v94 BOOLForKey_];

    if (v96)
    {
      v97 = sub_225C05744(v119, v13, v115, v2, v118, v93, v114, v117, v20, v113, v116, v6);
      v99 = v98;
      v100 = sub_225CCD934();
      v101 = sub_225CCED04();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v126 = v103;
        *v102 = 136315138;
        v104 = sub_2259BE198(v97, v99, &v126);

        *(v102 + 4) = v104;
        _os_log_impl(&dword_2259A7000, v100, v101, "%s", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v103);
        v105 = v103;
        v13 = v123;
        MEMORY[0x22AA6F950](v105, -1, -1);
        MEMORY[0x22AA6F950](v102, -1, -1);
      }

      else
      {
      }

      v7 = v122;
    }

    else
    {
    }
  }

  else
  {
  }

  (*(v124 + 8))(v125, v7);
  if (v13 && v93 && v20 && v6)
  {
    v107 = v121;
    *v121 = v119;
    v107[1] = v13;
    v107[2] = v118;
    v107[3] = v93;
    v107[4] = v117;
    v107[5] = v20;
    v107[6] = v116;
    v107[7] = v6;
    v108 = v114;
    v107[8] = v115;
    v107[9] = v108;
    v109 = v112;
    v107[10] = v113;
    v107[11] = v109;
  }

  else
  {

    result = 0.0;
    v110 = v121;
    *(v121 + 64) = 0u;
    v110[5] = 0u;
    v110[2] = 0u;
    v110[3] = 0u;
    *v110 = 0u;
    v110[1] = 0u;
  }

  return result;
}

uint64_t sub_225C05744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000032, 0x8000000225D257A0);
  if (a2)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (a2)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x22AA6CE70](v14, v15);

  MEMORY[0x22AA6CE70](10272, 0xE200000000000000);
  swift_beginAccess();

  v16 = sub_225CCE2E4();
  v18 = v17;

  MEMORY[0x22AA6CE70](v16, v18);

  MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D257E0);
  if (a6)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (a6)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x22AA6CE70](v19, v20);

  MEMORY[0x22AA6CE70](10272, 0xE200000000000000);
  swift_beginAccess();

  v21 = sub_225CCE2E4();
  v23 = v22;

  MEMORY[0x22AA6CE70](v21, v23);

  MEMORY[0x22AA6CE70](0xD000000000000015, 0x8000000225D25800);
  if (a9)
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (a9)
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  MEMORY[0x22AA6CE70](v24, v25);

  MEMORY[0x22AA6CE70](10272, 0xE200000000000000);
  swift_beginAccess();

  v26 = sub_225CCE2E4();
  v28 = v27;

  MEMORY[0x22AA6CE70](v26, v28);

  MEMORY[0x22AA6CE70](0xD00000000000001BLL, 0x8000000225D25820);
  if (a12)
  {
    v29 = 1702195828;
  }

  else
  {
    v29 = 0x65736C6166;
  }

  if (a12)
  {
    v30 = 0xE400000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  MEMORY[0x22AA6CE70](v29, v30);

  MEMORY[0x22AA6CE70](10272, 0xE200000000000000);
  swift_beginAccess();

  v31 = sub_225CCE2E4();
  v33 = v32;

  MEMORY[0x22AA6CE70](v31, v33);

  MEMORY[0x22AA6CE70](41, 0xE100000000000000);
  return 0;
}

uint64_t PassportMRZParser.__allocating_init(supportedRegions:dobRepeatCount:doeRepeatCount:docNumberRepeatCount:issuerNumberRepeatCount:minimumAge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 56) = 3;
  v13 = MEMORY[0x277D84F90];
  *(v12 + 64) = sub_225B2DC84(MEMORY[0x277D84F90]);
  *(v12 + 72) = sub_225B2DC84(v13);
  *(v12 + 80) = sub_225B2DC84(v13);
  *(v12 + 88) = sub_225B2DC84(v13);
  *(v12 + 96) = a1;
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  return v12;
}

uint64_t PassportMRZParser.init(supportedRegions:dobRepeatCount:doeRepeatCount:docNumberRepeatCount:issuerNumberRepeatCount:minimumAge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = 3;
  v13 = MEMORY[0x277D84F90];
  *(v6 + 64) = sub_225B2DC84(MEMORY[0x277D84F90]);
  *(v6 + 72) = sub_225B2DC84(v13);
  *(v6 + 80) = sub_225B2DC84(v13);
  *(v6 + 88) = sub_225B2DC84(v13);
  *(v6 + 96) = a1;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  return v6;
}

uint64_t sub_225C05C08()
{
  v1 = v0;
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCED04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "PassportMRZParser resetting...", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v13 = MEMORY[0x277D84F90];
  v14 = sub_225B2DC84(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v1[8] = v14;

  v15 = sub_225B2DC84(v13);
  swift_beginAccess();
  v1[9] = v15;

  v16 = sub_225B2DC84(v13);
  swift_beginAccess();
  v1[10] = v16;

  v17 = sub_225B2DC84(v13);
  swift_beginAccess();
  v1[11] = v17;
}

uint64_t sub_225C05EA8()
{
  if (sub_225CCE5D4() == 3)
  {
    v1 = [objc_opt_self() standardUserDefaults];
    if (qword_28105B9F0 != -1)
    {
      swift_once();
    }

    if (byte_28105B9F8 == 1 && (v2 = sub_225CCE444(), v3 = [v1 stringForKey_], v2, v3))
    {
      v4 = sub_225CCE474();
      v6 = v5;

      swift_beginAccess();
      v7 = *(v0 + 96);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 96) = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_225B29BC8(0, *(v7 + 2) + 1, 1, v7);
        *(v0 + 96) = v7;
      }

      v9 = *(v7 + 2);
      v10 = *(v7 + 3);
      v11 = v9 + 1;
      if (v9 >= v10 >> 1)
      {
        v17 = v7;
        v18 = *(v7 + 2);
        v19 = sub_225B29BC8((v10 > 1), v9 + 1, 1, v17);
        v9 = v18;
        v7 = v19;
      }

      *(v7 + 2) = v11;
      v12 = &v7[16 * v9];
      *(v12 + 4) = v4;
      *(v12 + 5) = v6;
      *(v0 + 96) = v7;
      swift_endAccess();
    }

    else
    {
    }

    swift_beginAccess();
    v14 = *(v0 + 96);
    v21[0] = sub_225CCE534();
    v21[1] = v15;
    MEMORY[0x28223BE20](v21[0], v15);
    v20[2] = v21;

    v13 = sub_225B53C58(sub_225C0B108, v20, v14);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_225C06108(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_225CCD954();
  MEMORY[0x28223BE20](v6, v7);
  v8 = sub_225CCD0B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_225CCE5D4() != 7)
  {
    return 0;
  }

  sub_225C0A19C(a1, a2, a3 & 1);
  (*(v9 + 8))(v12, v8);
  return 1;
}

uint64_t sub_225C063D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v104 = a1;
  v103 = a3;
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v101 = &v100 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E758);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v100 - v9;
  v11 = sub_225CCD954();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v16 = off_28105B918;
  v17 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v18));
  (*(v12 + 16))(v15, &v16[v17], v11);
  os_unfair_lock_unlock(&v16[v18]);
  v19 = sub_225CCD934();
  v20 = sub_225CCED04();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2259A7000, v19, v20, "Attempting to parse type 1 MRZ", v21, 2u);
    MEMORY[0x22AA6F950](v21, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  v23 = v104;
  v22 = v105;
  v108 = v104;
  v109 = v105;
  sub_225CCD814();
  v24 = sub_225B53BA0();
  sub_2259D8B24(&qword_27D73E770, &qword_27D73E758);
  v25 = sub_225CCE364();
  v28 = *(v7 + 8);
  v27 = v7 + 8;
  v26 = v28;
  v28(v10, v6);
  if (v25)
  {
    v29 = sub_225CCE604();
    v31 = sub_225CCE604() >> 14;
    v26 = v102;
    if (v31 < v29 >> 14)
    {
      __break(1u);
    }

    else
    {
      sub_225CCE5E4();
      v32 = sub_225CCE704();
      MEMORY[0x22AA6CD90](v32);
      v24 = v33;

      v34 = sub_225CCE534();
      v23 = v35;

      v29 = sub_225CCE604();
      v31 = sub_225CCE604() >> 14;
      if (v31 >= v29 >> 14)
      {
        sub_225CCE5E4();
        v36 = sub_225CCE704();
        MEMORY[0x22AA6CD90](v36);
        v24 = v37;

        v22 = sub_225CCE534();
        v27 = v38;

        swift_beginAccess();
        v39 = *(v26 + 88);
        v31 = *(v39 + 16);
        if (v31)
        {

          v40 = sub_2259F18D4(v34, v23);
          if (v41)
          {
            v42 = *(*(v39 + 56) + 8 * v40);
          }

          else
          {
            v42 = 0;
          }
        }

        else
        {
          v42 = 0;
        }

        v58 = __OFADD__(v42, 1);
        v29 = v42 + 1;
        if (!v58)
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v106 = *(v26 + 88);
          *(v26 + 88) = 0x8000000000000000;
          sub_225A04D6C(v29, v34, v23, isUniquelyReferenced_nonNull_native);

          *(v26 + 88) = v106;
          swift_endAccess();
          swift_beginAccess();
          v60 = *(v26 + 80);
          v31 = *(v60 + 16);
          if (v31)
          {

            v61 = sub_2259F18D4(v22, v27);
            if (v62)
            {
              v63 = *(*(v60 + 56) + 8 * v61);
            }

            else
            {
              v63 = 0;
            }
          }

          else
          {
            v63 = 0;
          }

          v58 = __OFADD__(v63, 1);
          v29 = v63 + 1;
          if (!v58)
          {
            swift_beginAccess();
            v64 = swift_isUniquelyReferenced_nonNull_native();
            v110 = *(v26 + 80);
            *(v26 + 80) = 0x8000000000000000;
            sub_225A04D6C(v29, v22, v27, v64);

            *(v26 + 80) = v110;
            swift_endAccess();
            v57 = 0;
LABEL_31:
            result = swift_beginAccess();
            *(v26 + 56) = 0;
            goto LABEL_32;
          }

          goto LABEL_62;
        }

LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  v108 = v23;
  v109 = v22;
  sub_225CCD814();
  v43 = sub_225CCE364();
  result = (v26)(v10, v6);
  if ((v43 & 1) == 0)
  {
    v57 = 2;
LABEL_32:
    *v103 = v57;
    return result;
  }

  v29 = sub_225CCE604();
  v31 = sub_225CCE604() >> 14;
  if (v31 < v29 >> 14)
  {
    goto LABEL_63;
  }

  sub_225CCE5E4();
  v45 = sub_225CCE704();
  v46 = MEMORY[0x22AA6CD90](v45);
  v24 = v47;

  v26 = v102;
  v48 = sub_225C06108(v46, v24, 1);

  if ((v48 & 1) == 0)
  {
    v22 = 0x8000000225D25630;
    v65 = MEMORY[0x277D84F90];
    v66 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v24 = v67;
    v68 = sub_225CCE954();
    v69 = *(v68 - 8);
    v70 = v101;
    (*(v69 + 56))(v101, 1, 1, v68);
    LODWORD(v68) = (*(v69 + 48))(v70, 1, v68);
    sub_2259CB640(v70, &unk_27D73B050);
    if (v68)
    {
      LOWORD(v23) = 855;
    }

    else
    {
      LOWORD(v23) = 23;
    }

    v71 = sub_225B2C374(v65);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v108 = v71;
    sub_225B2C4A0(v66, sub_225B2AC40, 0, v72, &v108);

    v27 = v108;
    v30 = sub_225B29AA0(0, 1, 1, v65);
    v26 = *(v30 + 2);
    v31 = *(v30 + 3);
    v29 = v26 + 1;
    if (v26 < v31 >> 1)
    {
      goto LABEL_37;
    }

    goto LABEL_65;
  }

  v29 = sub_225CCE604();
  v31 = sub_225CCE604() >> 14;
  if (v31 < v29 >> 14)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    v30 = sub_225B29AA0((v31 > 1), v29, 1, v30);
LABEL_37:
    v73 = 0xEB00000000424F44;
    *(v30 + 2) = v29;
    v74 = &v30[56 * v26];
    *(v74 + 2) = xmmword_225CFA6E0;
    *(v74 + 6) = 0xD000000000000025;
    *(v74 + 7) = v22;
    strcpy(v74 + 64, "parseTD1(_:)");
    v74[77] = 0;
    *(v74 + 39) = -5120;
    *(v74 + 10) = 200;
    *v24 = v23;
LABEL_53:
    *(v24 + 8) = v30;
    *(v24 + 16) = 0x2064696C61766E69;
    *(v24 + 24) = v73;
    *(v24 + 32) = v27;
    *(v24 + 40) = 0;
    return swift_willThrow();
  }

  sub_225CCE5E4();
  v49 = sub_225CCE704();
  v50 = MEMORY[0x22AA6CD90](v49);
  v24 = v51;

  swift_beginAccess();
  v52 = *(v26 + 64);
  v53 = *(v52 + 16);
  if (v53)
  {

    v54 = sub_2259F18D4(v50, v24);
    if (v55)
    {
      v56 = *(*(v52 + 56) + 8 * v54);
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v56 = 0;
  }

  v58 = __OFADD__(v56, 1);
  v75 = v56 + 1;
  if (v58)
  {
    __break(1u);
    goto LABEL_67;
  }

  swift_beginAccess();
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *(v26 + 64);
  *(v26 + 64) = 0x8000000000000000;
  sub_225A04D6C(v75, v50, v24, v76);

  *(v26 + 64) = v106;
  swift_endAccess();
  v75 = sub_225CCE604();
  v53 = sub_225CCE604() >> 14;
  if (v53 < v75 >> 14)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  sub_225CCE5E4();
  v77 = sub_225CCE704();
  v78 = MEMORY[0x22AA6CD90](v77);
  v24 = v79;

  v80 = sub_225C06108(v78, v24, 0);

  if ((v80 & 1) == 0)
  {
    v22 = 0x8000000225D25630;
    v89 = MEMORY[0x277D84F90];
    v90 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v24 = v91;
    v92 = sub_225CCE954();
    v93 = *(v92 - 8);
    v94 = v101;
    (*(v93 + 56))(v101, 1, 1, v92);
    LODWORD(v92) = (*(v93 + 48))(v94, 1, v92);
    sub_2259CB640(v94, &unk_27D73B050);
    if (v92)
    {
      LOWORD(v23) = 856;
    }

    else
    {
      LOWORD(v23) = 23;
    }

    v95 = sub_225B2C374(v89);
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v107[0] = v95;
    sub_225B2C4A0(v90, sub_225B2AC40, 0, v96, v107);

    v27 = v107[0];
    v30 = sub_225B29AA0(0, 1, 1, v89);
    v26 = *(v30 + 2);
    v53 = *(v30 + 3);
    v75 = v26 + 1;
    if (v26 < v53 >> 1)
    {
      goto LABEL_52;
    }

    goto LABEL_69;
  }

  v75 = sub_225CCE604();
  v53 = sub_225CCE604() >> 14;
  if (v53 < v75 >> 14)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    v30 = sub_225B29AA0((v53 > 1), v75, 1, v30);
LABEL_52:
    *(v30 + 2) = v75;
    v97 = &v30[56 * v26];
    *(v97 + 2) = xmmword_225CFA6F0;
    *(v97 + 6) = 0xD000000000000025;
    *(v97 + 7) = v22;
    strcpy(v97 + 64, "parseTD1(_:)");
    v97[77] = 0;
    *(v97 + 39) = -5120;
    *(v97 + 10) = 207;
    *v24 = v23;
    v73 = 0xEB00000000454F44;
    goto LABEL_53;
  }

  sub_225CCE5E4();
  v81 = sub_225CCE704();
  v82 = MEMORY[0x22AA6CD90](v81);
  v84 = v83;

  result = swift_beginAccess();
  v85 = *(v26 + 72);
  if (*(v85 + 16))
  {

    v86 = sub_2259F18D4(v82, v84);
    if (v87)
    {
      v88 = *(*(v85 + 56) + 8 * v86);
    }

    else
    {
      v88 = 0;
    }
  }

  else
  {
    v88 = 0;
  }

  v58 = __OFADD__(v88, 1);
  v98 = v88 + 1;
  if (!v58)
  {
    swift_beginAccess();
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v110 = *(v26 + 72);
    *(v26 + 72) = 0x8000000000000000;
    sub_225A04D6C(v98, v82, v84, v99);

    *(v26 + 72) = v110;
    swift_endAccess();
    v57 = 1;
    goto LABEL_31;
  }

  __break(1u);
  return result;
}