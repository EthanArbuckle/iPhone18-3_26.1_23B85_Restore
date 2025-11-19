uint64_t sub_24E8BFB30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E8BFB98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for OptionSelectionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24E8BB448(a1, v6, a2);
}

unint64_t sub_24E8BFC18()
{
  result = qword_27F2208C8;
  if (!qword_27F2208C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2208C8);
  }

  return result;
}

uint64_t sub_24E8BFC6C()
{
  v1 = type metadata accessor for OptionSelectionView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F1A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923978();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = v0 + v2 + *(v1 + 32);
  __swift_destroy_boxed_opaque_existential_1(v4);

  if (*(v4 + 104))
  {
    __swift_destroy_boxed_opaque_existential_1(v4 + 80);
  }

  v5 = type metadata accessor for OptionSetting(0);
  v6 = *(v5 + 48);
  v7 = sub_24F92A6D8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v9 = *(v5 + 52);
  v10 = sub_24F929608();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_24E8BFF2C()
{
  v1 = *(type metadata accessor for OptionSelectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];

  return sub_24E8BB6D4(v0 + v2, v4, v5, v6, v7);
}

uint64_t sub_24E8BFFD0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E8C0054()
{
  result = qword_27F2208E0;
  if (!qword_27F2208E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2208E8);
    sub_24E602068(&qword_27F2208F0, &qword_27F2208F8);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2208E0);
  }

  return result;
}

unint64_t sub_24E8C011C()
{
  result = qword_27F220950;
  if (!qword_27F220950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220928);
    sub_24E62A864();
    sub_24E602068(&qword_27F21A958, &qword_27F2365A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220950);
  }

  return result;
}

uint64_t sub_24E8C01D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220880);
  sub_24E602068(&qword_27F2208B8, &qword_27F220880);
  sub_24E600AEC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t AchievementsCountDataIntent.gameBundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AchievementsCountDataIntent.playerID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24E8C0300()
{
  if (*v0)
  {
    return 0x4449726579616C70;
  }

  else
  {
    return 0x646E7542656D6167;
  }
}

uint64_t sub_24E8C0344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646E7542656D6167 && a2 == 0xEC0000004449656CLL;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000)
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

uint64_t sub_24E8C0424(uint64_t a1)
{
  v2 = sub_24E8C0630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E8C0460(uint64_t a1)
{
  v2 = sub_24E8C0630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AchievementsCountDataIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220958);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E8C0630();
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

unint64_t sub_24E8C0630()
{
  result = qword_27F220960;
  if (!qword_27F220960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220960);
  }

  return result;
}

uint64_t AchievementsCountDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220968);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E8C0630();
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

unint64_t sub_24E8C08F8()
{
  result = qword_27F220970;
  if (!qword_27F220970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220970);
  }

  return result;
}

unint64_t sub_24E8C0950()
{
  result = qword_27F220978;
  if (!qword_27F220978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220978);
  }

  return result;
}

unint64_t sub_24E8C09A8()
{
  result = qword_27F220980;
  if (!qword_27F220980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220980);
  }

  return result;
}

uint64_t sub_24E8C0A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsEvent();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E8C0A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsEvent();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for GSKDebugMetricsEventDetailView()
{
  result = qword_27F220988;
  if (!qword_27F220988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E8C0B4C()
{
  result = type metadata accessor for GSKDebugMetricsEvent();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E8C0BD4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E8617C8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_24E8C46E8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_24E8C0C40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220998);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = v51 - v4;
  v58 = sub_24F9253B8();
  v62 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v61 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F923C68();
  v54 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2209A0);
  v52 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v51 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2209A8);
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v13 = v51 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2209B0);
  v59 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v53 = v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2209B8);
  v63 = *(v15 - 8);
  v64 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = v51 - v16;
  v51[1] = v2;
  v67 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2209C0);
  sub_24E602068(&qword_27F2209C8, &qword_27F2209C0);
  sub_24F925A98();
  sub_24F923C58();
  v18 = sub_24E602068(&qword_27F2209D0, &qword_27F2209A0);
  v19 = MEMORY[0x277CDD980];
  v20 = v13;
  sub_24F926B98();
  (*(v54 + 8))(v8, v6);
  (*(v52 + 8))(v11, v9);
  v66 = v2;
  v21 = v17;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2209D8);
  v68 = v9;
  v69 = v6;
  v70 = v18;
  v71 = v19;
  v23 = v58;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2209E0);
  v26 = sub_24E602068(&qword_27F2209E8, &qword_27F2209E0);
  v68 = v25;
  v69 = v26;
  v27 = v60;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = v53;
  v30 = v55;
  sub_24F926A58();
  v31 = v30;
  (*(v56 + 8))(v20, v30);
  v32 = v61;
  sub_24F9253A8();
  v68 = v31;
  v69 = v22;
  v70 = OpaqueTypeConformance2;
  v71 = v28;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = MEMORY[0x277CE06D0];
  v35 = v57;
  sub_24F926348();
  (*(v62 + 8))(v32, v23);
  (*(v59 + 8))(v29, v35);
  v36 = aEventtype_6[0];
  v37 = aEventtype_6[1];
  v38 = off_281C9F358;

  sub_24F5C567C(v36, v37, v38, v27);

  v39 = sub_24F929458();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v27, 1, v39) == 1)
  {
    sub_24E601704(v27, &qword_27F220998);
    v41 = 0xE700000000000000;
    v42 = 0x6E776F6E6B6E55;
  }

  else
  {
    v42 = sub_24F929448();
    v41 = v43;
    (*(v40 + 8))(v27, v39);
  }

  v68 = v42;
  v69 = v41;
  sub_24E600AEC();
  v44 = sub_24F925E18();
  v46 = v45;
  v48 = v47;
  v68 = v35;
  v69 = v23;
  v70 = v33;
  v71 = v34;
  swift_getOpaqueTypeConformance2();
  v49 = v64;
  sub_24F926448();
  sub_24E600B40(v44, v46, v48 & 1);

  return (*(v63 + 8))(v21, v49);
}

uint64_t sub_24E8C1488@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v74 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A00);
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v82 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v76 = &v67 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A08);
  v6 = *(v72 - 1);
  MEMORY[0x28223BE20](v72);
  v69 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A10);
  MEMORY[0x28223BE20](v8 - 8);
  v71 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v67 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A18);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v68 = &v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A20);
  MEMORY[0x28223BE20](v16 - 8);
  v81 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v83 = &v67 - v19;
  v20 = type metadata accessor for GSKDebugMetricsExpandedSummaryView();
  MEMORY[0x28223BE20](v20);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A28);
  v79 = *(v23 - 8);
  v80 = v23;
  MEMORY[0x28223BE20](v23);
  v78 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v67 - v26;
  sub_24E8C50B4(a1, v22, type metadata accessor for GSKDebugMetricsEvent);
  v28 = sub_24F927628();
  v29 = &v22[*(v20 + 20)];
  *v29 = v28;
  v29[1] = v30;
  sub_24F923838();
  sub_24E8C44BC();
  v77 = v27;
  sub_24F9264B8();
  sub_24E8C4514(v22);
  v31 = *(a1 + *(type metadata accessor for GSKDebugMetricsEvent() + 20));
  v32 = MEMORY[0x277D84F90];
  if (!*(v31 + 16) || (v33 = sub_24E76D644(0x6973736572706D69, 0xEB00000000736E6FLL), (v34 & 1) == 0))
  {
    v38 = 1;
    v35 = v6;
    goto LABEL_9;
  }

  sub_24E643A9C(*(v31 + 56) + 32 * v33, &v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98);
  v35 = v6;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v38 = 1;
    goto LABEL_9;
  }

  if (!*(v84 + 16))
  {

    goto LABEL_8;
  }

  *&v85 = 0xD000000000000010;
  *(&v85 + 1) = 0x800000024FA48B10;
  v86 = 0;
  v87 = v32;
  MEMORY[0x28223BE20](v84);
  *(&v67 - 2) = v36;
  sub_24E8C4694();
  v37 = v68;
  sub_24F927298();
  v32 = MEMORY[0x277D84F90];

  (*(v14 + 32))(v83, v37, v13);
  v38 = 0;
LABEL_9:
  (*(v14 + 56))(v83, v38, 1, v13);
  if (!*(v31 + 16))
  {
    goto LABEL_15;
  }

  v39 = sub_24E76D644(0x6E6F697461636F6CLL, 0xE800000000000000);
  if ((v40 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_24E643A9C(*(v31 + 56) + 32 * v39, &v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98);
  v41 = swift_dynamicCast();
  if ((v41 & 1) == 0)
  {
    goto LABEL_15;
  }

  v42 = v84;
  if (!*(v84 + 16))
  {

LABEL_15:
    v46 = 1;
    v45 = v72;
    goto LABEL_16;
  }

  v85 = xmmword_24F9648B0;
  v86 = 0;
  v87 = v32;
  MEMORY[0x28223BE20](v41);
  *(&v67 - 2) = v42;
  sub_24E8C4614();
  v43 = v69;
  sub_24F927298();

  v44 = v72;
  (*(v35 + 32))(v12, v43, v72);
  v45 = v44;
  v46 = 0;
LABEL_16:
  v47 = (*(v35 + 56))(v12, v46, 1, v45);
  v85 = xmmword_24F9648C0;
  v86 = 0;
  v87 = v32;
  MEMORY[0x28223BE20](v47);
  *(&v67 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A38);
  sub_24E8C584C(&qword_27F220A40, &qword_27F220A38);
  v48 = v76;
  sub_24F927298();
  v49 = v78;
  v50 = v12;
  v70 = v12;
  v51 = *(v79 + 16);
  v52 = v80;
  v51(v78, v77, v80);
  v53 = v81;
  sub_24E60169C(v83, v81, &qword_27F220A20);
  v54 = v71;
  sub_24E60169C(v50, v71, &qword_27F220A10);
  v55 = v73;
  v56 = v48;
  v57 = v54;
  v72 = *(v73 + 16);
  v58 = v75;
  (v72)(v82, v56, v75);
  v59 = v74;
  v51(v74, v49, v52);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A50);
  sub_24E60169C(v53, &v59[v60[12]], &qword_27F220A20);
  sub_24E60169C(v57, &v59[v60[16]], &qword_27F220A10);
  v61 = &v59[v60[20]];
  v62 = v82;
  (v72)(v61, v82, v58);
  v63 = *(v55 + 8);
  v63(v76, v58);
  sub_24E601704(v70, &qword_27F220A10);
  sub_24E601704(v83, &qword_27F220A20);
  v64 = v80;
  v65 = *(v79 + 8);
  v65(v77, v80);
  v63(v62, v58);
  sub_24E601704(v57, &qword_27F220A10);
  sub_24E601704(v81, &qword_27F220A20);
  return (v65)(v78, v64);
}

uint64_t sub_24E8C1E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GSKDebugMetricsEventDetailView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(type metadata accessor for GSKDebugMetricsEvent() + 20));
  v9 = *(v8 + 16);
  if (!v9)
  {

    v10 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v15 = v5;
  v16 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = a2;
  v10 = sub_24EAE678C(v9, 0);
  v11 = sub_24EAEAC9C(&v19, v10 + 32, v9, v8);
  swift_bridgeObjectRetain_n();
  sub_24E6586B4();
  if (v11 == v9)
  {
    a1 = v17;
    v5 = v15;
    v7 = v16;
LABEL_5:
    v19 = v10;
    sub_24E8C0BD4(&v19);

    swift_getKeyPath();
    sub_24E8C50B4(a1, v7, type metadata accessor for GSKDebugMetricsEventDetailView);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    sub_24E8C5228(v7, v13 + v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    sub_24E602068(&qword_27F2181D8, &unk_27F2285F0);
    sub_24E8C4578();
    return sub_24F927228();
  }

  __break(1u);

  __break(1u);
  return result;
}

double sub_24E8C20F8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + *(type metadata accessor for GSKDebugMetricsEvent() + 20));
  if (*(v6 + 16))
  {

    v7 = sub_24E76D644(v4, v5);
    if (v8)
    {
      sub_24E643A9C(*(v6 + 56) + 32 * v7, &v11);
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  result = *&v11;
  v10 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v10;
  return result;
}

uint64_t sub_24E8C219C(uint64_t a1)
{
  v2 = sub_24F925018();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2209E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24F924F78();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2209F0);
  sub_24E602068(&qword_27F2209F8, &qword_27F2209F0);
  sub_24F923668();
  v7 = sub_24E602068(&qword_27F2209E8, &qword_27F2209E0);
  MEMORY[0x25304AA30](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E8C2408@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F926DF8();
  *a1 = result;
  return result;
}

uint64_t sub_24E8C2448@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A68);
  v2 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = v29 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A70);
  MEMORY[0x28223BE20](v35);
  v37 = v29 - v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A78);
  MEMORY[0x28223BE20](v31);
  v32 = v29 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A80);
  MEMORY[0x28223BE20](v36);
  v33 = v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A88);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A90);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v29 - v13;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A98);
  MEMORY[0x28223BE20](v30);
  v16 = v29 - v15;
  sub_24E60169C((v1 + 2), &v40, &qword_27F2129B0);
  if (v43)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AC8);
    if (swift_dynamicCast())
    {
      if (*(v39 + 16))
      {
        v17 = sub_24F406868(v39);

        v18 = swift_allocObject();
        v29[1] = v29;
        *(v18 + 16) = v17;
        MEMORY[0x28223BE20](v18);
        v29[-2] = v1;
        v29[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AD0);
        sub_24E8C5718();
        sub_24E8C584C(&qword_27F220AD8, &qword_27F220AD0);
        sub_24F923E38();
        (*(v12 + 16))(v10, v14, v11);
        swift_storeEnumTagMultiPayload();
        sub_24E602068(&qword_27F220AB0, &qword_27F220A90);
        sub_24F924E28();
        (*(v12 + 8))(v14, v11);
      }

      else
      {

        v27 = *v1;
        v26 = v1[1];
        sub_24E60169C((v1 + 2), &v42, &qword_27F2129B0);
        v40 = v27;
        v41 = v26;
        sub_24E8C5570(&v40, v10);
        swift_storeEnumTagMultiPayload();
        sub_24E602068(&qword_27F220AB0, &qword_27F220A90);
        sub_24E8C5718();

        sub_24F924E28();
        sub_24E8C576C(&v40);
      }

      sub_24E60169C(v16, v32, &qword_27F220A98);
      swift_storeEnumTagMultiPayload();
      sub_24E8C5660();
      sub_24E602068(&qword_27F220AC0, &qword_27F220A68);
      v28 = v33;
      sub_24F924E28();
      sub_24E60169C(v28, v37, &qword_27F220A80);
      swift_storeEnumTagMultiPayload();
      sub_24E8C55A8();
      sub_24E8C5718();
      sub_24F924E28();
      sub_24E601704(v28, &qword_27F220A80);
      return sub_24E601704(v16, &qword_27F220A98);
    }
  }

  else
  {
    sub_24E601704(&v40, &qword_27F2129B0);
  }

  sub_24E60169C((v1 + 2), &v40, &qword_27F2129B0);
  if (v43)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    if (swift_dynamicCast())
    {
      v19 = v39;
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      MEMORY[0x28223BE20](v20);
      v29[-2] = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A38);
      sub_24E8C5718();
      sub_24E8C584C(&qword_27F220A40, &qword_27F220A38);
      sub_24F923E38();
      v21 = v34;
      (*(v2 + 16))(v32, v4, v34);
      swift_storeEnumTagMultiPayload();
      sub_24E8C5660();
      sub_24E602068(&qword_27F220AC0, &qword_27F220A68);
      v22 = v33;
      sub_24F924E28();
      sub_24E60169C(v22, v37, &qword_27F220A80);
      swift_storeEnumTagMultiPayload();
      sub_24E8C55A8();
      sub_24F924E28();
      sub_24E601704(v22, &qword_27F220A80);
      return (*(v2 + 8))(v4, v21);
    }
  }

  else
  {
    sub_24E601704(&v40, &qword_27F2129B0);
  }

  v25 = *v1;
  v24 = v1[1];
  sub_24E60169C((v1 + 2), &v42, &qword_27F2129B0);
  v40 = v25;
  v41 = v24;
  sub_24E8C5570(&v40, v37);
  swift_storeEnumTagMultiPayload();
  sub_24E8C55A8();
  sub_24E8C5718();

  sub_24F924E28();
  return sub_24E8C576C(&v40);
}

uint64_t sub_24E8C2DF4()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AE0);
  sub_24E602068(&qword_27F220AE8, &qword_27F220AE0);
  sub_24E8C4578();
  return sub_24F927228();
}

uint64_t sub_24E8C2EE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + 8;
  v4 = sub_24F92CD88();
  MEMORY[0x253050C20](v4);

  MEMORY[0x253050C20](93, 0xE100000000000000);
  result = sub_24E643A9C(v3, (a2 + 2));
  *a2 = 91;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_24E8C2F78(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_24EAE678C(*(a1 + 16), 0);
  v4 = sub_24EAEAC9C(&v6, v3 + 32, v2, a1);

  sub_24E6586B4();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v6 = v3;
  sub_24E8C0BD4(&v6);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  sub_24E602068(&qword_27F2181D8, &unk_27F2285F0);
  sub_24E8C4578();
  return sub_24F927228();
}

double sub_24E8C312C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*(a2 + 16))
  {

    v7 = sub_24E76D644(v4, v5);
    if (v8)
    {
      sub_24E643A9C(*(a2 + 56) + 32 * v7, &v11);
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  result = *&v11;
  v10 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v10;
  return result;
}

uint64_t sub_24E8C31C0()
{
  sub_24E60169C(v0 + 16, v6, &qword_27F2129B0);
  if (v7)
  {
    if (swift_dynamicCast())
    {

      return 0x676E69727453;
    }
  }

  else
  {
    sub_24E601704(v6, &qword_27F2129B0);
  }

  sub_24E60169C(v0 + 16, v6, &qword_27F2129B0);
  if (!v7)
  {
    sub_24E601704(v6, &qword_27F2129B0);
LABEL_10:
    sub_24E60169C(v0 + 16, v6, &qword_27F2129B0);
    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AC8);
      if (swift_dynamicCast())
      {

        return 0x7961727241;
      }
    }

    else
    {
      sub_24E601704(v6, &qword_27F2129B0);
    }

    sub_24E60169C(v0 + 16, v6, &qword_27F2129B0);
    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
      if (swift_dynamicCast())
      {

        return 0x7463656A624FLL;
      }
    }

    else
    {
      sub_24E601704(v6, &qword_27F2129B0);
    }

    sub_24E60169C(v0 + 16, v6, &qword_27F2129B0);
    v3 = v7;
    sub_24E601704(v6, &qword_27F2129B0);
    if (!v3)
    {
      return 0x6E776F6E6B6E753CLL;
    }

    sub_24E60169C(v0 + 16, v6, &qword_27F2129B0);
    if (v7)
    {
      sub_24E69A5C4(0, &qword_27F220B60);
      if (swift_dynamicCast())
      {

        return 0x6E776F6E6B6E753CLL;
      }
    }

    else
    {
      sub_24E601704(v6, &qword_27F2129B0);
    }

    v6[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B58);
    return sub_24F92B188();
  }

  sub_24E69A5C4(0, &qword_27F22BD50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v2 = CFGetTypeID(cf);
  if (CFBooleanGetTypeID() == v2)
  {

    return 0x6E61656C6F6F42;
  }

  else if (CFNumberGetTypeID() == v2)
  {
    IsFloatType = CFNumberIsFloatType(cf);

    if (IsFloatType)
    {
      return 0x656C62756F44;
    }

    else
    {
      return 7630409;
    }
  }

  else
  {

    return 0x7265626D754ELL;
  }
}

uint64_t sub_24E8C3598@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - v8;
  *v9 = sub_24F924C98();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B10);
  sub_24E8C4180(a1, &v9[*(v10 + 44)]);
  sub_24E60169C((a1 + 2), &v70, &qword_27F2129B0);
  if (*(&v71 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AC8);
    if (swift_dynamicCast())
    {
      v11 = *(v65 + 16);

      *&v65 = v11;
      *&v70 = sub_24F92CD88();
      *(&v70 + 1) = v12;
      MEMORY[0x253050C20](0x736D65746920, 0xE600000000000000);
      v65 = v70;
      *&v66 = 0;
      *(&v66 + 1) = MEMORY[0x277D84F90];
      LOBYTE(v67) = 0;
LABEL_8:

      sub_24F924E28();
      v65 = v70;
      v66 = v71;
      v67 = v72;
      v68 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B30);
      sub_24E8C5A10();
      sub_24E8C5A8C();
      sub_24F924E28();
      if (HIBYTE(v73))
      {
        v15 = 0x1000000;
      }

      else
      {
        v15 = 0;
      }

      v65 = v70;
      v66 = v71;
      v67 = v72;
      v68 = v15 | v73 | (BYTE2(v73) << 16);
      v69 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B18);
      sub_24E8C5984();
      sub_24F924E28();

LABEL_30:
      v63 = v70;
      v64 = v71;
      v29 = v72;
      v30 = v73;
      v31 = v74;
      goto LABEL_31;
    }
  }

  else
  {
    sub_24E601704(&v70, &qword_27F2129B0);
  }

  sub_24E60169C((a1 + 2), &v70, &qword_27F2129B0);
  if (*(&v71 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    if (swift_dynamicCast())
    {
      v13 = *(v65 + 16);

      *&v65 = v13;
      *&v70 = sub_24F92CD88();
      *(&v70 + 1) = v14;
      MEMORY[0x253050C20](0x7379656B20, 0xE500000000000000);
      v65 = v70;
      *&v66 = 0;
      *(&v66 + 1) = MEMORY[0x277D84F90];
      LOBYTE(v67) = 1;
      goto LABEL_8;
    }
  }

  else
  {
    sub_24E601704(&v70, &qword_27F2129B0);
  }

  sub_24E60169C((a1 + 2), &v70, &qword_27F2129B0);
  if (!*(&v71 + 1))
  {
    sub_24E601704(&v70, &qword_27F2129B0);
LABEL_24:
    sub_24E60169C((a1 + 2), &v70, &qword_27F2129B0);
    if (*(&v71 + 1))
    {
      sub_24E612B0C(&v70, v75);
      sub_24E643A9C(v75, &v70);
      v24 = sub_24F92B188();
      v26 = v25;
      KeyPath = swift_getKeyPath();
      *&v65 = v24;
      *(&v65 + 1) = v26;
      *&v66 = 0;
      *(&v66 + 1) = MEMORY[0x277D84F90];
      v67 = KeyPath;
      LOWORD(v68) = 2;
      BYTE2(v68) = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8);
      sub_24E8C5B18();
      sub_24E62FBF4();
      sub_24F924E28();
      v65 = v70;
      v66 = v71;
      v67 = v72;
      BYTE2(v68) = BYTE2(v73) != 0;
      LOWORD(v68) = v73;
      HIBYTE(v68) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B30);
      sub_24E8C5A10();
      sub_24E8C5A8C();
      sub_24F924E28();
      if (HIBYTE(v73))
      {
        v28 = 0x1000000;
      }

      else
      {
        v28 = 0;
      }

      v65 = v70;
      v66 = v71;
      v67 = v72;
      v68 = v28 | v73 | (BYTE2(v73) << 16);
      v69 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B18);
      sub_24E8C5984();
      sub_24F924E28();

      __swift_destroy_boxed_opaque_existential_1(v75);
    }

    else
    {
      sub_24E601704(&v70, &qword_27F2129B0);
      v65 = xmmword_24F9648D0;
      *&v66 = 0;
      *(&v66 + 1) = MEMORY[0x277D84F90];
      v67 = 0;
      v68 = 0;
      v69 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B18);
      sub_24E8C5984();
      sub_24F924E28();
    }

    goto LABEL_30;
  }

  sub_24E69A5C4(0, &qword_27F22BD50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v16 = v65;
  v17 = CFGetTypeID(v65);
  TypeID = CFBooleanGetTypeID();
  v62 = a2;
  *&v64 = v16;
  v61 = v6;
  if (TypeID == v17)
  {
    v19 = [v16 BOOLValue];
    if (v19)
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    if (v19)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    v22 = swift_getKeyPath();
    *&v65 = v20;
    *(&v65 + 1) = v21;
    *&v66 = 0;
    *(&v66 + 1) = MEMORY[0x277D84F90];
    v67 = v22;
    v23 = 2;
  }

  else
  {
    v40 = [v16 stringValue];
    v41 = sub_24F92B0D8();
    v43 = v42;

    v44 = swift_getKeyPath();
    *&v65 = v41;
    *(&v65 + 1) = v43;
    *&v66 = 0;
    *(&v66 + 1) = MEMORY[0x277D84F90];
    v67 = v44;
    v23 = 258;
  }

  LOWORD(v68) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8);
  sub_24E62FBF4();
  sub_24F924E28();
  if (BYTE1(v73))
  {
    v45 = 256;
  }

  else
  {
    v45 = 0;
  }

  v65 = v70;
  v66 = v71;
  v67 = v72;
  LOWORD(v68) = v45 | v73;
  BYTE2(v68) = 0;
  v46 = v70;
  v47 = v71;
  *&v63 = *(&v70 + 1);
  v60 = *(&v71 + 1);
  v59 = v72;
  v58 = v73;
  sub_24E8C5D30(v70, *(&v70 + 1), v71);
  v53 = v46;
  sub_24E8C5D30(v46, *(&v46 + 1), v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8);
  sub_24E8C5B18();
  sub_24E62FBF4();
  sub_24F924E28();
  v65 = v70;
  v66 = v71;
  v67 = v72;
  BYTE2(v68) = BYTE2(v73) != 0;
  LOWORD(v68) = v73;
  HIBYTE(v68) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B30);
  sub_24E8C5A10();
  sub_24E8C5A8C();
  sub_24F924E28();
  v48 = v72;
  v49 = v73 | (BYTE2(v73) << 16);
  v50 = HIBYTE(v73);
  if (HIBYTE(v73))
  {
    v51 = 0x1000000;
  }

  else
  {
    v51 = 0;
  }

  v57 = v70;
  v65 = v70;
  v56 = *(&v70 + 1);
  v55 = v71;
  v66 = v71;
  v54 = *(&v71 + 1);
  v67 = v72;
  v68 = v51 | v49;
  v69 = 0;
  sub_24E8C5E68(v70, *(&v70 + 1), v71, *(&v71 + 1), v72, v49, SHIBYTE(v73), sub_24E8C5C94, sub_24E8C5CD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B18);
  sub_24E8C5984();
  sub_24F924E28();
  v52 = v63;
  sub_24E8C5F24(v46, v63, v47);
  sub_24E8C5E68(v57, v56, v55, v54, v48, v49, v50, sub_24E8C5E88, sub_24E8C5EC4);

  sub_24E8C5F24(v53, v52, v47);
  v63 = v70;
  v64 = v71;
  v29 = v72;
  v30 = v73;
  v31 = v74;
  a2 = v62;
  v6 = v61;
LABEL_31:
  sub_24E8C5B9C(v9, v6);
  sub_24E8C5B9C(v6, a2);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B48);
  v33 = a2 + *(v32 + 48);
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = a2 + *(v32 + 64);
  v36 = v63;
  v35 = v64;
  *v34 = v63;
  *(v34 + 16) = v35;
  *(v34 + 32) = v29;
  *(v34 + 40) = v30;
  *(v34 + 44) = v31;
  v37 = v36;
  v38 = v35;
  sub_24E8C5C0C(v36, *(&v36 + 1), v35, *(&v35 + 1), v29, v30, v31);
  sub_24E8C5D78(v9);
  sub_24E8C5DE0(v37, *(&v37 + 1), v38, *(&v38 + 1), v29, v30, v31);
  return sub_24E8C5D78(v6);
}

uint64_t sub_24E8C4180@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v8 = a1[1];
  v39 = *a1;
  v40 = v8;
  sub_24E600AEC();

  v9 = sub_24F925E18();
  v11 = v10;
  v39 = v9;
  v40 = v10;
  v13 = v12 & 1;
  v41 = v12 & 1;
  v42 = v14;
  v35 = v7;
  sub_24F9268B8();
  sub_24E600B40(v9, v11, v13);

  v39 = sub_24E8C31C0();
  v40 = v15;
  v16 = sub_24F925E18();
  v18 = v17;
  LOBYTE(v9) = v19;
  LODWORD(v39) = sub_24F9251C8();
  v20 = sub_24F925C58();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24E600B40(v16, v18, v9 & 1);

  v27 = *(v3 + 16);
  v29 = v36;
  v28 = v37;
  v27(v36, v7, v37);
  v30 = v38;
  v27(v38, v29, v28);
  v31 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B50) + 48)];
  *v31 = v20;
  *(v31 + 1) = v22;
  v24 &= 1u;
  v31[16] = v24;
  *(v31 + 3) = v26;
  sub_24E5FD138(v20, v22, v24);
  v32 = *(v3 + 8);

  v32(v35, v28);
  sub_24E600B40(v20, v22, v24);

  return (v32)(v29, v28);
}

uint64_t sub_24E8C4448@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F9249A8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B00);
  return sub_24E8C3598(v1, a1 + *(v3 + 44));
}

unint64_t sub_24E8C44BC()
{
  result = qword_27F220A30;
  if (!qword_27F220A30)
  {
    type metadata accessor for GSKDebugMetricsExpandedSummaryView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220A30);
  }

  return result;
}

uint64_t sub_24E8C4514(uint64_t a1)
{
  v2 = type metadata accessor for GSKDebugMetricsExpandedSummaryView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E8C4578()
{
  result = qword_27F220A48;
  if (!qword_27F220A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220A48);
  }

  return result;
}

uint64_t sub_24E8C45CC@<X0>(uint64_t *a1@<X8>)
{

  v3 = sub_24E6772DC(v2);

  *a1 = v3;
  return result;
}

unint64_t sub_24E8C4614()
{
  result = qword_27F220A58;
  if (!qword_27F220A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220A58);
  }

  return result;
}

uint64_t sub_24E8C4668@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E676838(*(v1 + 16));
  *a1 = result;
  return result;
}

unint64_t sub_24E8C4694()
{
  result = qword_27F220A60;
  if (!qword_27F220A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220A60);
  }

  return result;
}

uint64_t sub_24E8C46E8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24F92CD78();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_24F92B618();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24E8C48B0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_24E8C47E0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24E8C47E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_24F92CE08(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24E8C48B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_24E86164C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_24E8C4E8C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_24F92CE08();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_24F92CE08();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_24E615ED8((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_24E8C4E8C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24E86164C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_24E8615C0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_24F92CE08(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_24E8C4E8C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_24F92CE08() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_24F92CE08() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_24E8C50B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E8C511C()
{
  v1 = *(type metadata accessor for GSKDebugMetricsEventDetailView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F91F6B8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  type metadata accessor for GSKDebugMetricsEvent();

  return swift_deallocObject();
}

uint64_t sub_24E8C5228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsEventDetailView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24E8C528C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GSKDebugMetricsEventDetailView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24E8C20F8(a1, v6, a2);
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24E8C5334()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2209B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2209B0);
  sub_24F9253B8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2209A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2209D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2209A0);
  sub_24F923C68();
  sub_24E602068(&qword_27F2209D0, &qword_27F2209A0);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2209E0);
  sub_24E602068(&qword_27F2209E8, &qword_27F2209E0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24E8C55A8()
{
  result = qword_27F220AA0;
  if (!qword_27F220AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220A80);
    sub_24E8C5660();
    sub_24E602068(&qword_27F220AC0, &qword_27F220A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220AA0);
  }

  return result;
}

unint64_t sub_24E8C5660()
{
  result = qword_27F220AA8;
  if (!qword_27F220AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220A98);
    sub_24E602068(&qword_27F220AB0, &qword_27F220A90);
    sub_24E8C5718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220AA8);
  }

  return result;
}

unint64_t sub_24E8C5718()
{
  result = qword_27F220AB8;
  if (!qword_27F220AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220AB8);
  }

  return result;
}

uint64_t sub_24E8C579C()
{

  return swift_deallocObject();
}

uint64_t sub_24E8C57E8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = *v3;
  v4 = v3[1];
  sub_24E60169C((v3 + 2), (a1 + 2), &qword_27F2129B0);
  *a1 = v5;
  a1[1] = v4;
}

uint64_t sub_24E8C584C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_24E8C4578();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E8C58DC()
{
  result = qword_27F220AF0;
  if (!qword_27F220AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220AF8);
    sub_24E8C55A8();
    sub_24E8C5718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220AF0);
  }

  return result;
}

unint64_t sub_24E8C5984()
{
  result = qword_27F220B20;
  if (!qword_27F220B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220B18);
    sub_24E8C5A10();
    sub_24E8C5A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220B20);
  }

  return result;
}

unint64_t sub_24E8C5A10()
{
  result = qword_27F223400;
  if (!qword_27F223400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2233E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223400);
  }

  return result;
}

unint64_t sub_24E8C5A8C()
{
  result = qword_27F220B28;
  if (!qword_27F220B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220B30);
    sub_24E8C5B18();
    sub_24E62FBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220B28);
  }

  return result;
}

unint64_t sub_24E8C5B18()
{
  result = qword_27F220B38;
  if (!qword_27F220B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220B40);
    sub_24E62FBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220B38);
  }

  return result;
}

uint64_t sub_24E8C5B9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E8C5C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    return sub_24E8C5E68(a1, a2, a3, a4, a5, a6, BYTE3(a6) & 1, sub_24E8C5C94, sub_24E8C5CD0);
  }

  sub_24E5FD138(a1, a2, a3 & 1);
}

uint64_t sub_24E8C5C94(uint64_t a1, uint64_t a2, char a3)
{
  sub_24E5FD138(a1, a2, a3 & 1);
}

uint64_t sub_24E8C5CD0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_24E5FD138(a1, a2, a3 & 1);
  }

  else
  {

    return sub_24E8C5D30(a1, a2, a3);
  }
}

uint64_t sub_24E8C5D30(uint64_t a1, uint64_t a2, char a3)
{
  sub_24E5FD138(a1, a2, a3 & 1);
}

uint64_t sub_24E8C5D78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E8C5DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    return sub_24E8C5E68(a1, a2, a3, a4, a5, a6, BYTE3(a6) & 1, sub_24E8C5E88, sub_24E8C5EC4);
  }

  sub_24E600B40(a1, a2, a3 & 1);
}

uint64_t sub_24E8C5E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  if (a7)
  {
    return a9(a1, a2, a3, a4, a5, a6, WORD1(a6) & 1);
  }

  else
  {
    return a8(a1, a2, a3, a4, a5 & 1);
  }
}

uint64_t sub_24E8C5E88(uint64_t a1, uint64_t a2, char a3)
{
  sub_24E600B40(a1, a2, a3 & 1);
}

uint64_t sub_24E8C5EC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_24E600B40(a1, a2, a3 & 1);
  }

  else
  {

    return sub_24E8C5F24(a1, a2, a3);
  }
}

uint64_t sub_24E8C5F24(uint64_t a1, uint64_t a2, char a3)
{
  sub_24E600B40(a1, a2, a3 & 1);
}

uint64_t ChallengeScoreboardShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 120) = a1;
  *(v3 + 128) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110);
  *(v3 + 136) = v5;
  *(v3 + 144) = *(v5 - 8);
  *(v3 + 152) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760);
  *(v3 + 160) = v6;
  *(v3 + 168) = *(v6 - 8);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  type metadata accessor for FriendsDataIntent();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = *(type metadata accessor for Player(0) - 8);
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v7 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v7;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  updated = type metadata accessor for ChallengesUpdateNotifier();
  v9 = swift_task_alloc();
  *(v3 + 224) = v9;
  *v9 = v3;
  v9[1] = sub_24E8C6210;

  return MEMORY[0x28217F228](v3 + 96, updated, updated);
}

uint64_t sub_24E8C6210()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_24E8C6AFC;
  }

  else
  {
    v2 = sub_24E8C6324;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E8C6324()
{
  v0[30] = v0[12];
  v0[31] = sub_24F92B7F8();
  v0[32] = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E8C63C4, v2, v1);
}

uint64_t sub_24E8C63C4()
{

  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  *(v0 + 264) = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_24E8C644C, 0, 0);
}

uint64_t sub_24E8C644C()
{
  *(v0 + 272) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E8C64D8, v2, v1);
}

uint64_t sub_24E8C64D8()
{
  v1 = v0[33];
  v2 = v0[27];
  v3 = v0[24];

  swift_getKeyPath();
  v0[14] = v1;
  sub_24E8C93CC(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24E8C9414(v1 + v4, v2, type metadata accessor for Player);

  sub_24E8C9414(v2, v3, type metadata accessor for Player);
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_24E8C6670;
  v6 = v0[24];
  v7 = v0[16];

  return (sub_24E6480C8)(v6, v7);
}

uint64_t sub_24E8C6670(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {
    v4 = sub_24E8C6BA4;
  }

  else
  {
    v4 = sub_24E8C6784;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24E8C6784()
{
  v1 = v0;
  v2 = v0[36];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[25];
    v31 = v0[26];
    v32 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v3, 0);
    v5 = v32;
    v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    do
    {
      v8 = v1;
      v9 = v1[26];
      sub_24E8C9414(v6, v9, type metadata accessor for Player);
      v10 = *v9;
      v11 = *(v31 + 8);

      sub_24E8C947C(v9, type metadata accessor for Player);
      v13 = *(v32 + 16);
      v12 = *(v32 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_24F4578E0((v12 > 1), v13 + 1, 1);
      }

      *(v32 + 16) = v13 + 1;
      v14 = v32 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v6 += v7;
      --v3;
      v1 = v8;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v15 = v1[30];
  v16 = v1[27];
  v30 = v1[24];
  v17 = v1[21];
  v28 = v1[22];
  v18 = v1[19];
  v26 = v1[23];
  v27 = v1[20];
  v19 = v1[18];
  v25 = v1[17];
  v20 = v1[16];
  v29 = v1[15];
  v21 = swift_task_alloc();
  v21[2] = v1 + 2;
  v21[3] = v15;
  v21[4] = v16;
  v21[5] = v5;
  v21[6] = v20;
  type metadata accessor for GSKShelf();
  (*(v19 + 104))(v18, *MEMORY[0x277D85778], v25);
  sub_24F92B928();

  (*(v17 + 16))(v28, v26, v27);
  sub_24E613678();
  sub_24F9280F8();

  (*(v17 + 8))(v26, v27);
  sub_24E8C947C(v30, type metadata accessor for FriendsDataIntent);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v22 - 8) + 56))(v29, 0, 1, v22);
  sub_24E8C947C(v16, type metadata accessor for Player);

  v23 = v1[1];

  return v23();
}

uint64_t sub_24E8C6AFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E8C6BA4()
{
  v1 = v0[27];
  v2 = v0[24];

  sub_24E8C947C(v2, type metadata accessor for FriendsDataIntent);
  sub_24E8C947C(v1, type metadata accessor for Player);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24E8C6C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a5;
  v49 = a6;
  v44 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v46 = *(v9 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v50 = &v39 - v10;
  v11 = type metadata accessor for Player(0);
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v39 - v14;
  v41 = &v39 - v14;
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_24F92C888();
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);

  v51 = v16;
  v52 = v17;
  MEMORY[0x253050C20](0xD000000000000011, 0x800000024FA48B30);
  v18 = v51;
  v19 = v52;
  v43 = v51;
  v20 = swift_allocObject();
  v42 = a3;
  *(v20 + 16) = a3;
  v21 = *(a2 + 16);
  *(v20 + 24) = *a2;
  *(v20 + 40) = v21;
  *(v20 + 56) = *(a2 + 32);
  *(v20 + 72) = *(a2 + 48);
  *(v20 + 80) = v18;
  v40 = v19;
  *(v20 + 88) = v19;

  sub_24E8C89BC(a2, &v51);

  v39 = v9;
  v22 = v44;
  sub_24F92B898();
  v23 = sub_24F92B858();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = a4;
  v25 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E8C9414(v24, v25, type metadata accessor for Player);
  v26 = v46;
  (*(v46 + 16))(v50, v22, v9);
  v27 = (*(v45 + 80) + 88) & ~*(v45 + 80);
  v28 = (v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = (*(v26 + 80) + v29 + 8) & ~*(v26 + 80);
  v31 = (v47 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  v33 = *(a2 + 16);
  *(v32 + 32) = *a2;
  *(v32 + 48) = v33;
  *(v32 + 64) = *(a2 + 32);
  *(v32 + 80) = *(a2 + 48);
  sub_24E61C0A8(v25, v32 + v27);
  *(v32 + v28) = v48;
  v34 = v50;
  *(v32 + v29) = v49;
  (*(v26 + 32))(v32 + v30, v34, v39);
  v35 = v43;
  *(v32 + v31) = v42;
  v36 = (v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8));
  v37 = v40;
  *v36 = v35;
  v36[1] = v37;

  sub_24E8C89BC(a2, &v51);

  sub_24F1D3DA4(0, 0, v41, &unk_24F964CF8, v32);
}

uint64_t sub_24E8C70B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17[-v10 - 8];
  v12 = sub_24F92B858();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a2;
  v14 = *(a3 + 16);
  *(v13 + 40) = *a3;
  *(v13 + 56) = v14;
  *(v13 + 72) = *(a3 + 32);
  *(v13 + 88) = *(a3 + 48);
  *(v13 + 96) = a4;
  *(v13 + 104) = a5;

  sub_24E8C89BC(a3, v17);

  sub_24EA998B8(0, 0, v11, &unk_24F964D28, v13);
}

uint64_t sub_24E8C720C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a4;
  v7[3] = a6;
  v8 = *(a5 + 16);
  v9 = *(a5 + 24);
  v7[4] = a7;
  v7[5] = v8;
  v7[6] = v9;
  return MEMORY[0x2822009F8](sub_24E8C7238, a4, 0);
}

uint64_t sub_24E8C7238()
{
  sub_24F5E89C8(v0[5], v0[6], v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24E8C72A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 216) = v18;
  *(v8 + 200) = v17;
  *(v8 + 184) = a7;
  *(v8 + 192) = a8;
  *(v8 + 168) = a5;
  *(v8 + 176) = a6;
  *(v8 + 160) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B78);
  *(v8 + 224) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B80);
  *(v8 + 232) = v10;
  *(v8 + 240) = *(v10 - 8);
  *(v8 + 248) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B88);
  *(v8 + 256) = v11;
  *(v8 + 264) = *(v11 - 8);
  *(v8 + 272) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140);
  *(v8 + 280) = v12;
  *(v8 + 288) = *(v12 - 8);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = type metadata accessor for ChallengeScoreboardShelfConstructionIntent();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  type metadata accessor for GSKShelf();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v8 + 96) = *a4;
  v14 = *(a4 + 48);
  *(v8 + 344) = v13;
  *(v8 + 352) = v14;
  *(v8 + 144) = v14;

  return MEMORY[0x2822009F8](sub_24E8C7524, 0, 0);
}

uint64_t sub_24E8C7524()
{
  v1 = v0[44];
  v2 = v0[40];
  v3 = v0[38];
  v4 = v0[22];
  v5 = v0[20];
  sub_24E8C9414(v0[21], v2 + v3[5], type metadata accessor for Player);
  *v2 = *v5;
  v6 = v2 + v3[6];
  v7 = *(v5 + 32);
  v6[8] = *(v5 + 40);
  *v6 = v7;
  *(v2 + v3[7]) = v1;
  *(v2 + v3[8]) = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v0[45] = v8;
  sub_24E614DB0((v0 + 12), (v0 + 14));
  sub_24E8C935C((v0 + 18), (v0 + 19));

  v9 = swift_task_alloc();
  v0[46] = v9;
  *v9 = v0;
  v9[1] = sub_24E8C767C;

  return MEMORY[0x28217F228](v0 + 2, v8, v8);
}

uint64_t sub_24E8C767C()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_24E8C79A8;
  }

  else
  {
    v2 = sub_24E8C7790;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E8C7790()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[48] = v3;
  v4 = sub_24E8C93CC(&qword_27F21D548, type metadata accessor for ChallengeScoreboardShelfConstructionIntent);
  v0[49] = v4;
  *v3 = v0;
  v3[1] = sub_24E8C7894;
  v5 = v0[43];
  v6 = v0[40];
  v7 = v0[38];
  v8 = v0[23];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24E8C7894()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_24E8C7D28;
  }

  else
  {
    v2 = sub_24E8C7AA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E8C79A8()
{
  sub_24E8C947C(*(v0 + 320), type metadata accessor for ChallengeScoreboardShelfConstructionIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E8C7AA0()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[40];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];
  v7 = v0[25];
  v8 = v0[20];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_24E8C947C(v3, type metadata accessor for ChallengeScoreboardShelfConstructionIntent);
  sub_24E8C9414(v2, v1, type metadata accessor for GSKShelf);
  v0[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  sub_24F92B8C8();
  v9 = *(v5 + 8);
  v0[52] = v9;
  v0[53] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v6);
  v0[54] = *(v8 + 16);
  v0[55] = *(v8 + 24);

  return MEMORY[0x2822009F8](sub_24E8C7BD8, v7, 0);
}

uint64_t sub_24E8C7BD8()
{
  sub_24F5E8450(v0[54], v0[55], v0[26], v0[27]);

  return MEMORY[0x2822009F8](sub_24E8C7C4C, 0, 0);
}

uint64_t sub_24E8C7C4C()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[56] = v4;
  *v4 = v0;
  v4[1] = sub_24E8C7E28;
  v5 = v0[32];
  v6 = v0[28];

  return MEMORY[0x2822003E8](v6, 0, 0, v5);
}

uint64_t sub_24E8C7D28()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_24E8C947C(*(v0 + 320), type metadata accessor for ChallengeScoreboardShelfConstructionIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E8C7E28()
{

  return MEMORY[0x2822009F8](sub_24E8C7F24, 0, 0);
}

uint64_t sub_24E8C7F24()
{
  v1 = *(v0 + 224);
  v2 = type metadata accessor for ChallengeDetail(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 344);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    sub_24E8C947C(v3, type metadata accessor for GSKShelf);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v7 = *(v0 + 304);
    v6 = *(v0 + 312);
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v10 = v1 + *(v2 + 32);
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v1 + *(v2 + 60));

    sub_24E8C947C(v1, type metadata accessor for ChallengeDetail);
    sub_24E8C9414(v9, v6 + v7[5], type metadata accessor for Player);
    *v6 = *(v0 + 96);
    v14 = v6 + v7[6];
    *v14 = v11;
    v14[8] = v12;
    *(v6 + v7[7]) = v13;
    *(v6 + v7[8]) = v8;
    sub_24E614DB0(v0 + 96, v0 + 128);

    v15 = swift_task_alloc();
    *(v0 + 456) = v15;
    *v15 = v0;
    v15[1] = sub_24E8C81B0;
    v16 = *(v0 + 360);

    return MEMORY[0x28217F228](v0 + 56, v16, v16);
  }
}

uint64_t sub_24E8C81B0()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_24E8C84A0;
  }

  else
  {
    v2 = sub_24E8C82C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E8C82C4()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = swift_task_alloc();
  v0[59] = v3;
  *v3 = v0;
  v3[1] = sub_24E8C838C;
  v4 = v0[49];
  v5 = v0[41];
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[23];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24E8C838C()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_24E8C8738;
  }

  else
  {
    v2 = sub_24E8C85D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E8C84A0()
{
  v1 = v0[43];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  sub_24E8C947C(v0[39], type metadata accessor for ChallengeScoreboardShelfConstructionIntent);
  (*(v3 + 8))(v2, v4);
  sub_24E8C947C(v1, type metadata accessor for GSKShelf);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24E8C85D8()
{
  v1 = v0[52];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[39];
  v5 = v0[37];
  v6 = v0[35];
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  sub_24E8C947C(v4, type metadata accessor for ChallengeScoreboardShelfConstructionIntent);
  sub_24E8C9414(v3, v2, type metadata accessor for GSKShelf);
  sub_24F92B8C8();
  v1(v5, v6);
  sub_24E8C947C(v3, type metadata accessor for GSKShelf);
  v7 = swift_task_alloc();
  v0[56] = v7;
  *v7 = v0;
  v7[1] = sub_24E8C7E28;
  v8 = v0[32];
  v9 = v0[28];

  return MEMORY[0x2822003E8](v9, 0, 0, v8);
}

uint64_t sub_24E8C8738()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v1 = v0[43];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  sub_24E8C947C(v0[39], type metadata accessor for ChallengeScoreboardShelfConstructionIntent);
  (*(v3 + 8))(v2, v4);
  sub_24E8C947C(v1, type metadata accessor for GSKShelf);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24E8C8878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return ChallengeScoreboardShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_24E8C8954()
{

  return swift_deallocObject();
}

uint64_t sub_24E8C8A18()
{
  v1 = type metadata accessor for Player(0);
  v2 = *(*(v1 - 1) + 80);
  v36 = *(*(v1 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v4 = *(v3 - 8);
  v35 = *(v4 + 80);
  swift_unknownObjectRelease();

  v37 = (v2 + 88) & ~v2;
  v5 = v0 + v37;

  v6 = v1[6];
  v7 = sub_24F9289E8();
  v38 = *(v7 - 8);
  v39 = v7;
  v34 = *(v38 + 8);
  v34(v0 + v37 + v6);

  if (*(v0 + v37 + v1[9] + 8) != 1)
  {
  }

  v8 = v5 + v1[13];
  v9 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v32 = v4;
    v31 = v3;
    v10 = type metadata accessor for CallProviderConversationHandle();
    v11 = *(*(v10 - 8) + 48);
    if (!v11(v8, 1, v10))
    {

      v12 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v38 + 48))(v8 + v12, 1, v39))
      {
        (v34)(v8 + v12, v39);
      }
    }

    v13 = v8 + *(v9 + 20);
    v14 = v11(v13, 1, v10);
    v3 = v31;
    if (!v14)
    {

      v15 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v38 + 48))(v13 + v15, 1, v39))
      {
        (v34)(v13 + v15, v39);
      }
    }

    v4 = v32;
  }

  if (*(v5 + v1[15] + 8))
  {
  }

  v16 = v5 + v1[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v16, 1, PlayedTogetherInfo))
  {
    v33 = v4;

    v18 = type metadata accessor for Game();
    (v34)(v16 + v18[18], v39);
    v19 = v18[19];
    if (!(*(v38 + 48))(v16 + v19, 1, v39))
    {
      (v34)(v16 + v19, v39);
    }

    v20 = v18[21];
    v21 = sub_24F920818();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v16 + v20, 1, v21))
    {
      (*(v22 + 8))(v16 + v20, v21);
    }

    v4 = v33;
  }

  v23 = v5 + v1[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v23, 1, ChallengeInfo))
  {

    v25 = type metadata accessor for Game();
    (v34)(v23 + v25[18], v39);
    v26 = v25[19];
    if (!(*(v38 + 48))(v23 + v26, 1, v39))
    {
      (v34)(v23 + v26, v39);
    }

    v27 = v25[21];
    v28 = sub_24F920818();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v23 + v27, 1, v28))
    {
      (*(v29 + 8))(v23 + v27, v28);
    }
  }

  (*(v4 + 8))(v0 + ((((((v36 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v35 + 8) & ~v35), v3);

  return swift_deallocObject();
}

uint64_t sub_24E8C917C(uint64_t a1)
{
  v3 = *(type metadata accessor for Player(0) - 8);
  v4 = (*(v3 + 80) + 88) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v14 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_24E614970;

  return sub_24E8C72A0(a1, v10, v11, v1 + 32, v1 + v4, v14, v9, v1 + v8);
}

uint64_t sub_24E8C935C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E8C93CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E8C9414(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E8C947C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E8C94DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E8C953C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[12];
  v8 = v1[13];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24E8C720C(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t sub_24E8C9624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24F91F648();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24E8C9728(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Player(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24F91F648();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for PlayActivity()
{
  result = qword_27F220B98;
  if (!qword_27F220B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E8C9870()
{
  result = type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    result = sub_24F91F648();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24E8C98F4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220BB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E8CA26C();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Player(0);
  sub_24E8CA320(&qword_27F213E28, type metadata accessor for Player);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for PlayActivity();
    v8[14] = 1;
    sub_24F91F648();
    sub_24E8CA320(&qword_27F21BB08, MEMORY[0x277CC9578]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E8C9AF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_24F91F648();
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v25);
  v26 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220BA8);
  v23 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v20 - v7;
  v9 = type metadata accessor for PlayActivity();
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E8CA26C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = a1;
  v12 = v11;
  v13 = v23;
  v14 = v24;
  v29 = 0;
  sub_24E8CA320(&qword_27F213E38, type metadata accessor for Player);
  v15 = v26;
  sub_24F92CC68();
  sub_24E61C0A8(v15, v12);
  v28 = 1;
  sub_24E8CA320(&qword_27F21B778, MEMORY[0x277CC9578]);
  v16 = v5;
  v17 = v14;
  v18 = v27;
  sub_24F92CC68();
  (*(v13 + 8))(v8, v18);
  (*(v21 + 32))(v12 + *(v9 + 20), v16, v17);
  sub_24E8CA368(v12, v22, type metadata accessor for PlayActivity);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_24E8CA2C0(v12, type metadata accessor for PlayActivity);
}

uint64_t sub_24E8C9ED4()
{
  if (*v0)
  {
    return 0x79616C507473616CLL;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_24E8C9F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79616C507473616CLL && a2 == 0xEC00000074416465)
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

uint64_t sub_24E8C9FF0(uint64_t a1)
{
  v2 = sub_24E8CA26C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E8CA02C(uint64_t a1)
{
  v2 = sub_24E8CA26C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E8CA098@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E8CA320(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E8CA368(v4, boxed_opaque_existential_1, type metadata accessor for Player);
  strcpy((inited + 88), "lastPlayedAt");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  v8 = *(a1 + 20);
  v9 = sub_24F91F648();
  v10 = MEMORY[0x277D21908];
  *(inited + 128) = v9;
  *(inited + 136) = v10;
  v11 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  (*(*(v9 - 8) + 16))(v11, v4 + v8, v9);
  v12 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v12;
  return result;
}

unint64_t sub_24E8CA26C()
{
  result = qword_27F220BB0;
  if (!qword_27F220BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220BB0);
  }

  return result;
}

uint64_t sub_24E8CA2C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E8CA320(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E8CA368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E8CA3E4()
{
  result = qword_27F220BC0;
  if (!qword_27F220BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220BC0);
  }

  return result;
}

unint64_t sub_24E8CA43C()
{
  result = qword_27F220BC8;
  if (!qword_27F220BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220BC8);
  }

  return result;
}

unint64_t sub_24E8CA494()
{
  result = qword_27F220BD0;
  if (!qword_27F220BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220BD0);
  }

  return result;
}

uint64_t sub_24E8CA4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v10 = type metadata accessor for CardLargeView();
  (*(*(a4 - 8) + 32))(a6 + *(v10 + 44), a2, a4);
  v11 = *(v10 + 48);
  v12 = sub_24F923E98();
  (*(*(v12 - 8) + 32))(a6 + v11, a3, v12);
  return sub_24E8CA62C(sub_24E8CA6B0, 0);
}

uint64_t sub_24E8CA62C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for CardSafeArea(0);

  return sub_24F9233C8();
}

uint64_t sub_24E8CA6B0()
{
  type metadata accessor for CardSafeArea(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  sub_24F91FDB8();
  return v0;
}

void sub_24E8CA700(void *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v3 = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  MEMORY[0x28223BE20](v3 - 8);
  v122 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = a1;
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  type metadata accessor for CardLargeView.TopAccessory();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720);
  sub_24F924038();
  v125 = v6;
  type metadata accessor for CardLargeView.Footer();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2195B8);
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  v120 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_24F927108();
  v121 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v118 = &v74 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40);
  v116 = v7;
  v124 = v5;
  swift_getAssociatedTypeWitness();
  sub_24F927598();
  type metadata accessor for CardLargeView.GradientBlurView();
  sub_24F924038();
  sub_24F92C4A8();
  v156 = swift_getWitnessTable();
  v157 = MEMORY[0x277CE0770];
  v155 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F9242F8();
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  v113 = sub_24F927808();
  v114 = swift_getWitnessTable();
  sub_24F924E08();
  v108 = v8;
  v10 = sub_24F924038();
  v117 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v111 = &v74 - v11;
  type metadata accessor for CardHeightViewModifier(255);
  v110 = v10;
  v12 = sub_24F924038();
  v115 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v112 = &v74 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E040);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170A0);
  v14 = sub_24F924038();
  v15 = swift_getWitnessTable();
  v107 = v15;
  v16 = swift_getWitnessTable();
  v153 = v15;
  v154 = v16;
  v17 = swift_getWitnessTable();
  v109 = v17;
  v18 = sub_24E8D40DC(&qword_27F217CC0, type metadata accessor for CardHeightViewModifier);
  v151 = v17;
  v152 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_24E6A4C1C();
  v21 = sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
  v149 = v19;
  v150 = v21;
  v22 = v19;
  v23 = swift_getWitnessTable();
  v24 = sub_24E602068(&qword_27F217098, &qword_27F2170A0);
  v147 = v23;
  v148 = v24;
  v25 = swift_getWitnessTable();
  v99 = v22;
  v100 = v12;
  v141 = v12;
  v142 = &type metadata for GameOverlayViewPredicate;
  v143 = v14;
  v144 = v22;
  v145 = v20;
  v146 = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v27 = *(OpaqueTypeMetadata2 - 8);
  v104 = OpaqueTypeMetadata2;
  v105 = v27;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v102 = &v74 - v28;
  v29 = sub_24F924038();
  v106 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v101 = &v74 - v30;
  v141 = v12;
  v142 = &type metadata for GameOverlayViewPredicate;
  v143 = v14;
  v144 = v22;
  v145 = v20;
  v146 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v98 = OpaqueTypeConformance2;
  v32 = sub_24E6BC1C8();
  v139 = OpaqueTypeConformance2;
  v140 = v32;
  v33 = swift_getWitnessTable();
  v141 = v29;
  v142 = v33;
  v34 = v29;
  v95 = v29;
  v96 = v33;
  v35 = v33;
  v36 = swift_getOpaqueTypeMetadata2();
  v103 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v97 = &v74 - v37;
  type metadata accessor for ZoomableViewModifier(255);
  v38 = sub_24F924038();
  v141 = v34;
  v142 = v35;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_24E8D40DC(&qword_27F217130, type metadata accessor for ZoomableViewModifier);
  v137 = v39;
  v138 = v40;
  v41 = swift_getWitnessTable();
  v141 = v36;
  v142 = &type metadata for GameOverlayViewPredicate;
  v143 = v38;
  v144 = v39;
  v145 = v20;
  v146 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v141 = v36;
  v142 = &type metadata for GameOverlayViewPredicate;
  v143 = v38;
  v144 = v39;
  v145 = v20;
  v146 = v41;
  v43 = swift_getOpaqueTypeConformance2();
  v83 = v36;
  v84 = v20;
  v141 = v36;
  v142 = &type metadata for GameOverlayViewPredicate;
  v143 = v42;
  v144 = v39;
  v44 = v42;
  v80 = v42;
  v81 = v43;
  v85 = v39;
  v145 = v20;
  v146 = v43;
  v45 = v43;
  v46 = swift_getOpaqueTypeMetadata2();
  v90 = v46;
  v94 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v86 = &v74 - v47;
  v48 = type metadata accessor for CardSafeArea(255);
  v89 = v48;
  v141 = v36;
  v142 = &type metadata for GameOverlayViewPredicate;
  v143 = v44;
  v144 = v39;
  v145 = v20;
  v146 = v45;
  v49 = swift_getOpaqueTypeConformance2();
  v88 = v49;
  v87 = sub_24E8D40DC(&qword_27F214D10, type metadata accessor for CardSafeArea);
  v141 = v46;
  v142 = v48;
  v143 = v49;
  v144 = v87;
  v91 = MEMORY[0x277CE0C50];
  v50 = swift_getOpaqueTypeMetadata2();
  v51 = *(v50 - 8);
  v92 = v50;
  v93 = v51;
  MEMORY[0x28223BE20](v50);
  v79 = &v74 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v82 = &v74 - v54;
  v55 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v55 - 8);
  v57 = &v74 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v58);
  v60 = v127;
  v61 = *(v126 + 12);
  v75 = *(v126 + 11);
  v76 = v61;
  v62 = v116;
  v77 = *(v116 + 56);
  v78 = &v74 - v63;
  v64 = &v74 - v63;
  v65 = v124;
  v77(v127 + v75, 3, v127 + v61, v124, v116, v59);
  v66 = v125;
  v133 = v125;
  v134 = v65;
  v135 = v62;
  v136 = v60;
  sub_24F924C88();
  v67 = v118;
  sub_24F9270F8();
  v128 = v66;
  v129 = v65;
  v130 = v62;
  v131 = v60;
  v132 = v64;
  sub_24F927618();
  v68 = v111;
  v69 = v108;
  sub_24F926088();
  (*(v121 + 1))(v67, v69);
  (v77)(v60 + v75, 3, v60 + v76, v65, v62);
  v70 = v122;
  sub_24E8D2DD8(v57, v122);
  v121 = type metadata accessor for CardLayoutMetrics;
  sub_24E8D413C(v57, type metadata accessor for CardLayoutMetrics);
  v71 = v112;
  v72 = v110;
  sub_24F4E8DBC(v70, v110, v109, v112);
  sub_24E8D413C(v70, type metadata accessor for CardLayoutMetrics.CardHeight);
  (*(v117 + 8))(v68, v72);
  v73 = v100;
  sub_24E739274();
  (*(v115 + 8))(v71, v73);
  sub_24E739404();
}

uint64_t sub_24E8CB42C()
{
  (*(*(v0 + 248) + 8))(v2, v1);
  v8 = *(v0 + 400);
  v7 = *(v0 + 408);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(v0 + 424);
  v11 = *(v0 + 184);
  v12 = *(v0 + 168);
  sub_24E739418(v10 + v4, v12, v7, *(v0 + 176), AssociatedConformanceWitness);
  (*(*(v0 + 256) + 8))(v5, v12);
  *(v0 + 448) = v7;
  *(v0 + 456) = v8;
  *(v0 + 464) = v3;
  *(v0 + 472) = v10;
  swift_checkMetadataState();
  v13 = *(v0 + 96);
  v14 = *(v0 + 72);
  sub_24F926B08();
  (*(*(v0 + 232) + 8))(v11, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68);
  sub_24F9233D8();
  v15 = *(v0 + 40);
  v17 = *(v0 + 120);
  v16 = *(v0 + 128);
  v19 = *(v0 + 104);
  v18 = *(v0 + 112);
  sub_24F9261A8();

  (*(*(v0 + 160) + 8))(v13, v16);
  *(v6 - 224) = v16;
  *(v6 - 216) = v17;
  *(v6 - 208) = v18;
  *(v6 - 200) = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = *(v0 + 64);
  v22 = *(v0 + 144);
  sub_24E7896B8(v15, v22, OpaqueTypeConformance2);
  v23 = *(*(v0 + 152) + 8);
  v23(v15, v22);
  sub_24E7896B8(v21, v22, OpaqueTypeConformance2);
  v23(v21, v22);
  return sub_24E8D413C(*(v0 + 32), *(v0 + 376));
}

uint64_t sub_24E8CB650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v116 = a1;
  v108 = a5;
  v101 = type metadata accessor for CardLargeView.Footer();
  v107 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = &v78 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720);
  v102 = sub_24F924038();
  v105 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v99 = &v78 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2195B8);
  v104 = sub_24F924038();
  v106 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v100 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v103 = &v78 - v12;
  v109 = a4;
  v13 = type metadata accessor for CardLargeView();
  v121 = *(v13 - 8);
  v115 = *(v121 + 64);
  MEMORY[0x28223BE20](v13);
  v94 = &v78 - v14;
  v114 = sub_24F923E98();
  v119 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v111 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = *(a3 - 8);
  MEMORY[0x28223BE20](v16);
  v110 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2;
  v19 = *(a2 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CardLargeView.TopAccessory();
  v97 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v78 - v24;
  v96 = &v78 - v24;
  v113 = sub_24F924038();
  v118 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v117 = &v78 - v29;
  v92 = *(v13 + 44);
  v30 = *(v19 + 16);
  v91 = v19 + 16;
  v93 = v30;
  v31 = v116;
  v81 = v22;
  (v30)(v22, v116 + v92, v18, v28);
  v32 = *(v120 + 16);
  v120 += 16;
  v90 = v32;
  v33 = v110;
  v34 = a3;
  v32(v110, v31, a3);
  v88 = *(v13 + 48);
  v35 = *(v119 + 16);
  v119 += 16;
  v89 = v35;
  v36 = v111;
  v35(v111, v31 + v88, v114);
  v79 = v34;
  v37 = v109;
  sub_24E8CC48C(v22, v33, v36, v18, v34, v109, type metadata accessor for CardLargeView.TopAccessory, v25);
  v38 = v121;
  v39 = *(v121 + 16);
  v86 = v121 + 16;
  v87 = v39;
  v40 = v94;
  v39(v94, v31, v13);
  v85 = *(v38 + 80);
  v41 = (v85 + 40) & ~v85;
  v82 = v41;
  v42 = swift_allocObject();
  *(v42 + 2) = v18;
  *(v42 + 3) = v34;
  *(v42 + 4) = v37;
  v43 = *(v38 + 32);
  v121 = v38 + 32;
  v84 = v43;
  v44 = v40;
  v43(&v42[v41], v40, v13);
  WitnessTable = swift_getWitnessTable();
  v83 = sub_24E7DDA4C();
  v46 = v112;
  v47 = v96;
  sub_24F9264C8();

  v97[1](v47, v23);
  v80 = sub_24E602068(&qword_27F21A718, &qword_27F21A720);
  v128[7] = WitnessTable;
  v128[8] = v80;
  v48 = v113;
  v96 = swift_getWitnessTable();
  sub_24E7896B8(v46, v48, v96);
  v49 = *(v118 + 8);
  v95 = v118 + 8;
  v97 = v49;
  (v49)(v46, v48);
  v50 = v116;
  v51 = v81;
  v52 = v18;
  v93(v81, v116 + v92, v18);
  v53 = v110;
  v54 = v79;
  v90(v110, v50, v79);
  v55 = v111;
  v89(v111, v50 + v88, v114);
  v56 = v98;
  v57 = v55;
  v58 = v109;
  sub_24E8CC48C(v51, v53, v57, v52, v54, v109, type metadata accessor for CardLargeView.Footer, v98);
  v87(v44, v50, v13);
  v59 = v82;
  v60 = swift_allocObject();
  *(v60 + 2) = v52;
  *(v60 + 3) = v54;
  *(v60 + 4) = v58;
  v84(&v60[v59], v44, v13);
  v61 = v101;
  v62 = swift_getWitnessTable();
  v63 = v99;
  sub_24F9264C8();

  (*(v107 + 8))(v56, v61);
  v128[5] = v62;
  v128[6] = v80;
  v64 = v102;
  v65 = swift_getWitnessTable();
  v66 = v100;
  sub_24F9269A8();
  (*(v105 + 8))(v63, v64);
  v67 = sub_24E602068(&qword_27F2195B0, &qword_27F2195B8);
  v128[3] = v65;
  v128[4] = v67;
  v68 = v104;
  v69 = swift_getWitnessTable();
  v70 = v103;
  sub_24E7896B8(v66, v68, v69);
  v71 = v106;
  v72 = *(v106 + 8);
  v72(v66, v68);
  v73 = v112;
  v74 = v117;
  v75 = v113;
  (*(v118 + 16))(v112, v117, v113);
  v126 = 0;
  v127 = 1;
  v128[0] = v73;
  v128[1] = &v126;
  (*(v71 + 16))(v66, v70, v68);
  v128[2] = v66;
  v125[0] = v75;
  v125[1] = MEMORY[0x277CE1180];
  v125[2] = v68;
  v122 = v96;
  v123 = MEMORY[0x277CE1170];
  v124 = v69;
  sub_24F57BA64(v128, 3uLL, v125);
  v72(v70, v68);
  v76 = v97;
  (v97)(v74, v75);
  v72(v66, v68);
  return (v76)(v73, v75);
}

uint64_t sub_24E8CC334(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for CardLargeView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68);
  sub_24F9233D8();
  swift_getKeyPath();
  sub_24E8D40DC(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  swift_getKeyPath();
  sub_24F91FDA8();

  *(v3 + 16) = v1;
  swift_getKeyPath();
  sub_24F91FD98();
}

uint64_t sub_24E8CC48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v15 = a7(0, a4, a5, a6);
  (*(*(a5 - 8) + 32))(a8 + *(v15 + 44), a2, a5);
  v16 = *(v15 + 48);
  v17 = sub_24F923E98();
  v18 = *(*(v17 - 8) + 32);

  return v18(a8 + v16, a3, v17);
}

uint64_t sub_24E8CC5B0(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for CardLargeView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68);
  sub_24F9233D8();
  swift_getKeyPath();
  sub_24E8D40DC(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  swift_getKeyPath();
  sub_24F91FDA8();

  *(v3 + 32) = v1;
  swift_getKeyPath();
  sub_24F91FD98();
}

uint64_t sub_24E8CC708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a3;
  v57 = a2;
  v62 = a1;
  v59 = a6;
  v60 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v55 = &v41 - v8;
  type metadata accessor for CardLargeView.GradientBlurView();
  sub_24F924038();
  v9 = sub_24F92C4A8();
  WitnessTable = swift_getWitnessTable();
  v78 = MEMORY[0x277CE0770];
  v56 = MEMORY[0x277CDFAD8];
  v76 = swift_getWitnessTable();
  v50 = v9;
  v51 = swift_getWitnessTable();
  v52 = sub_24F9242F8();
  v41 = AssociatedTypeWitness;
  v53 = sub_24F924038();
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v48 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40);
  MEMORY[0x28223BE20](v13);
  v14 = sub_24F927598();
  v61 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = (&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v42 = &v41 - v18;
  v19 = sub_24E6A4C1C();
  sub_24F924B68();
  v20 = v47;
  v67 = v47;
  v68 = a4;
  v69 = v60;
  v70 = v62;
  v74 = &type metadata for GameOverlayViewPredicate;
  v75 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = a4;
  v23 = v41;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = v23;
  sub_24F927578();
  v73[4] = OpaqueTypeConformance2;
  v73[5] = AssociatedConformanceWitness;
  v73[6] = MEMORY[0x277CE1410];
  v43 = v14;
  v44 = swift_getWitnessTable();
  sub_24E7896B8(v16, v14, v44);
  v45 = *(v61 + 8);
  v46 = v61 + 8;
  v45(v16, v14);
  v26 = v20;
  v27 = v60;
  v28 = type metadata accessor for CardLargeView();
  v29 = v55;
  (*(v27 + 72))(2, v62 + *(v28 + 44), 3, v62 + *(v28 + 48), v22, v27);
  v63 = v26;
  v64 = v22;
  v65 = v27;
  v66 = v57;
  sub_24F927618();
  v30 = v48;
  sub_24F926A08();
  (*(v58 + 8))(v29, v25);
  v31 = swift_getWitnessTable();
  v73[2] = AssociatedConformanceWitness;
  v73[3] = v31;
  v32 = v53;
  v33 = swift_getWitnessTable();
  v34 = v49;
  sub_24E7896B8(v30, v32, v33);
  v35 = v54;
  v36 = *(v54 + 8);
  v36(v30, v32);
  v37 = v42;
  v38 = v43;
  (*(v61 + 16))(v16, v42, v43);
  v74 = v16;
  (*(v35 + 16))(v30, v34, v32);
  v75 = v30;
  v73[0] = v38;
  v73[1] = v32;
  v71 = v44;
  v72 = v33;
  sub_24F57BA64(&v74, 2uLL, v73);
  v36(v34, v32);
  v39 = v45;
  v45(v37, v38);
  v36(v30, v32);
  return v39(v16, v38);
}

uint64_t sub_24E8CCE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v14 = type metadata accessor for CardLargeView();
  (*(a4 + 72))(12, a1 + *(v14 + 44), 3, a1 + *(v14 + 48), a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24E7896B8(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  sub_24E7896B8(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v16)(v13, AssociatedTypeWitness);
}

uint64_t sub_24E8CD030(uint64_t a1)
{
  v2 = type metadata accessor for CardLayoutMetrics(0);
  v3 = MEMORY[0x277CE0770];
  if (*(a1 + *(v2 + 52)) == 1)
  {
    if (qword_27F210D28 != -1)
    {
      swift_once();
    }

    sub_24E8CD438(byte_27F39D1B1, v28);
    v4 = type metadata accessor for CardLargeView.GradientBlurView();
    WitnessTable = swift_getWitnessTable();
    sub_24F926478();
    (*(*(v4 - 8) + 8))(v28, v4);
    v6 = sub_24F924038();
    v21 = WitnessTable;
    v22 = v3;
    v7 = swift_getWitnessTable();
    sub_24E7896B8(v30, v6, v7);
    v8 = *(*(v6 - 8) + 8);
    v8(v30, v6);
    sub_24E7896B8(v28, v6, v7);
    v8(v28, v6);
    v14[2] = v18;
    v14[3] = v19;
    v15 = v20;
    v14[0] = v16;
    v14[1] = v17;
    sub_24E8D5004(v14, v30);
    v9 = sub_24F92C4A8();
    (*(*(v9 - 8) + 8))(v14, v9);
  }

  else
  {
    type metadata accessor for CardLargeView.GradientBlurView();
    sub_24F924038();
    memset(v28, 0, sizeof(v28));
    v29 = 0;
    v26 = swift_getWitnessTable();
    v27 = v3;
    swift_getWitnessTable();
    sub_24E8D5004(v28, v30);
    v10 = sub_24F92C4A8();
    (*(*(v10 - 8) + 8))(v28, v10);
  }

  type metadata accessor for CardLargeView.GradientBlurView();
  sub_24F924038();
  v11 = sub_24F92C4A8();
  v24 = swift_getWitnessTable();
  v25 = v3;
  v23 = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  sub_24E7896B8(v30, v11, v12);
  return (*(*(v11 - 8) + 8))(v30, v11);
}

uint64_t sub_24E8CD438@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v11 = 0;
  sub_24F926F28();
  v4 = *(&v8 + 1);
  *a2 = v8;
  *(a2 + 8) = v4;
  v5 = 8.0;
  if (a1)
  {
    v5 = 0.0;
  }

  *(a2 + 16) = v5;
  if (a1)
  {
    v6 = sub_24F926C88();
    v9 = MEMORY[0x277CE0F78];
    v10 = MEMORY[0x277CE0F60];
    *&v8 = v6;
  }

  else
  {
    v9 = sub_24F927538();
    v10 = MEMORY[0x277CE1320];
    __swift_allocate_boxed_opaque_existential_1(&v8);
    sub_24F927468();
  }

  result = sub_24E612C80(&v8, a2 + 24);
  *(a2 + 64) = a1 & 1;
  return result;
}

uint64_t sub_24E8CD4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a2;
  v60 = a1;
  v61 = a6;
  v59 = sub_24F924B38();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CardLargeView.TopAccessory();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720);
  sub_24F924038();
  type metadata accessor for CardLargeView.Footer();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2195B8);
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40);
  v55 = a5;
  v54 = a4;
  swift_getAssociatedTypeWitness();
  sub_24F927598();
  type metadata accessor for CardLargeView.GradientBlurView();
  sub_24F924038();
  sub_24F92C4A8();
  WitnessTable = swift_getWitnessTable();
  v85 = MEMORY[0x277CE0770];
  v83 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F9242F8();
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  type metadata accessor for CardHeightViewModifier(255);
  v10 = sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E040);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170A0);
  v11 = sub_24F924038();
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v81 = v12;
  v82 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_24E8D40DC(&qword_27F217CC0, type metadata accessor for CardHeightViewModifier);
  v79 = v14;
  v80 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_24E6A4C1C();
  v18 = sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
  v77 = v16;
  v78 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_24E602068(&qword_27F217098, &qword_27F2170A0);
  v75 = v19;
  v76 = v20;
  v21 = swift_getWitnessTable();
  v69 = v10;
  v70 = &type metadata for GameOverlayViewPredicate;
  v71 = v11;
  v72 = v16;
  v73 = v17;
  v74 = v21;
  v22 = MEMORY[0x277CE0E68];
  swift_getOpaqueTypeMetadata2();
  v23 = sub_24F924038();
  v69 = v10;
  v70 = &type metadata for GameOverlayViewPredicate;
  v71 = v11;
  v72 = v16;
  v73 = v17;
  v74 = v21;
  v53 = v17;
  v50[1] = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_24E6BC1C8();
  v67 = OpaqueTypeConformance2;
  v68 = v25;
  v26 = swift_getWitnessTable();
  v69 = v23;
  v70 = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for ZoomableViewModifier(255);
  v28 = OpaqueTypeMetadata2;
  v50[0] = OpaqueTypeMetadata2;
  v29 = sub_24F924038();
  v69 = v23;
  v70 = v26;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = sub_24E8D40DC(&qword_27F217130, type metadata accessor for ZoomableViewModifier);
  v65 = v30;
  v66 = v31;
  v52 = v29;
  v51 = swift_getWitnessTable();
  v69 = v28;
  v70 = &type metadata for GameOverlayViewPredicate;
  v71 = v29;
  v72 = v30;
  v73 = v17;
  v74 = v51;
  v32 = swift_getOpaqueTypeMetadata2();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = v50 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = v50 - v37;
  v39 = *(type metadata accessor for CardLargeView() + 44);
  v72 = a3;
  v73 = *(swift_getAssociatedConformanceWitness() + 8);
  v40 = __swift_allocate_boxed_opaque_existential_1(&v69);
  (*(*(a3 - 8) + 16))(v40, v58 + v39, a3);
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  v41 = v57;
  v42 = v56;
  v43 = v59;
  (*(v57 + 104))(v56, *MEMORY[0x277CE0118], v59);
  v44 = sub_24F924258();
  v62[3] = v44;
  v62[4] = sub_24E8D40DC(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
  (*(v41 + 16))(&boxed_opaque_existential_1->i8[*(v44 + 20)], v42, v43);
  *boxed_opaque_existential_1 = vdupq_n_s64(0x4040000000000000uLL);
  (*(v41 + 8))(v42, v43);
  v46 = swift_checkMetadataState();
  sub_24EDD6F40();
  sub_24E601704(v63, qword_27F21B590);
  sub_24E601704(v62, &qword_27F2171C8);
  sub_24E601704(&v69, &qword_27F2171D0);
  v69 = v46;
  v70 = &type metadata for GameOverlayViewPredicate;
  v71 = v52;
  v72 = v30;
  v73 = v53;
  v74 = v51;
  v47 = swift_getOpaqueTypeConformance2();
  sub_24E7896B8(v35, v32, v47);
  v48 = *(v33 + 8);
  v48(v35, v32);
  sub_24E7896B8(v38, v32, v47);
  return (v48)(v38, v32);
}

double sub_24E8CDEE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550);
  sub_24F926F38();
  return v1;
}

double sub_24E8CDF98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  v6 = MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v9 = sub_24F9238D8();
  sub_24F927618();
  sub_24F9242E8();
  *&v32[35] = *&v32[91];
  *&v32[43] = *&v32[99];
  *&v32[51] = *&v32[107];
  *&v32[3] = *&v32[59];
  *&v32[11] = *&v32[67];
  *&v32[19] = *&v32[75];
  *&v32[27] = *&v32[83];
  (*(*(a1 - 8) + 16))(v30, v2, a1);
  v10 = swift_allocObject();
  *(v10 + 16) = *(a1 + 16);
  v11 = v30[0];
  *(v10 + 56) = v30[1];
  v12 = v30[3];
  *(v10 + 72) = v30[2];
  *(v10 + 88) = v12;
  *(v10 + 32) = *(a1 + 32);
  *(v10 + 104) = v31;
  *(v10 + 40) = v11;
  sub_24E8CE2E8(v30);
  v13 = *&v30[0];
  v14 = *(v2 + 16);
  v15 = v14 * 0.0174532925;
  v16 = v14 * 3.14159265 / 180.0;
  v28 = *(&v30[1] + 8);
  v29 = *(v30 + 8);
  sub_24F9278A8();
  v18 = v17;
  v20 = v19;
  sub_24E8CDEE8();
  sub_24E8CDEE8();
  tan(v16);
  sub_24F927618();
  sub_24F9238C8();
  v21 = *&v32[40];
  *(a2 + 74) = *&v32[32];
  *(a2 + 90) = v21;
  *(a2 + 106) = *&v32[48];
  v22 = *&v32[8];
  *(a2 + 10) = *v32;
  *(a2 + 26) = v22;
  v23 = *&v32[24];
  *(a2 + 42) = *&v32[16];
  *a2 = v9;
  *(a2 + 8) = 256;
  v24 = *&v32[55];
  *(a2 + 58) = v23;
  *(a2 + 120) = v24;
  *(a2 + 128) = sub_24E72DE30;
  *(a2 + 136) = 0;
  *(a2 + 144) = sub_24E8D4080;
  *(a2 + 152) = v10;
  *(a2 + 160) = v13;
  v25 = v29;
  *(a2 + 184) = v28;
  *(a2 + 168) = v25;
  *(a2 + 200) = v15;
  *(a2 + 208) = v18;
  *(a2 + 216) = v20;
  v26 = v30[1];
  *(a2 + 224) = v30[0];
  *(a2 + 240) = v26;
  result = *&v30[2];
  *(a2 + 256) = v30[2];
  return result;
}

double sub_24E8CE2E8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
  if (v3 == 1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_24F93A400;
    sub_24F926C98();
    *(v4 + 32) = sub_24F9273C8();
    *(v4 + 40) = v5;
    sub_24F926C88();
    sub_24F926D08();

    *(v4 + 48) = sub_24F9273C8();
    *(v4 + 56) = v6;
    sub_24F9273D8();
    sub_24F927878();
    sub_24F927898();
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24F93FC20;
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    sub_24F926D08();

    *(v7 + 32) = sub_24F9273C8();
    *(v7 + 40) = v8;
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    sub_24F926D08();

    *(v7 + 48) = sub_24F9273C8();
    *(v7 + 56) = v9;
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    sub_24F926D08();

    *(v7 + 64) = sub_24F9273C8();
    *(v7 + 72) = v10;
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    sub_24F926D08();

    *(v7 + 80) = sub_24F9273C8();
    *(v7 + 88) = v11;
    sub_24F9273D8();
    sub_24F927898();
    sub_24F927878();
  }

  sub_24F923BD8();
  *a1 = v13;
  *(a1 + 8) = v14;
  result = *&v15;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_24E8CE51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  v24[1] = sub_24F927808();
  v24[0] = swift_getWitnessTable();
  v6 = sub_24F927018();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  v12 = type metadata accessor for CardLayoutMetrics(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4;
  v17 = *(v4 + 56);
  v18 = v5;
  v19 = v5;
  v20 = v16;
  v17(v2, 3, v2 + *(a1 + 48), v19, v13);
  v27 = *(a1 + 16);
  v28 = v18;
  v29 = v20;
  v30 = v2;
  v31 = v15;
  sub_24F927008();
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v8, v6, WitnessTable);
  v22 = *(v25 + 8);
  v22(v8, v6);
  sub_24E7896B8(v11, v6, WitnessTable);
  v22(v11, v6);
  return sub_24E8D413C(v15, type metadata accessor for CardLayoutMetrics);
}

uint64_t sub_24E8CE7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v44 = a2;
  v43 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v33 - v9;
  v11 = sub_24F924038();
  v47 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v42 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45 = &v33 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v18);
  v46 = &v33 - v19;
  v20 = type metadata accessor for CardLargeView.TopAccessory();
  v40 = *(v20 + 44);
  v39 = *(v20 + 48);
  v41 = *(a4 + 72);
  v35 = a3;
  v37 = a4;
  v41(0, a1, 3, a1 + v39, a3, a4);
  v38 = type metadata accessor for CardLayoutMetrics(0);
  v21 = AssociatedTypeWitness;
  v34 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24F926A38();
  v23 = *(v48 + 8);
  v48 += 8;
  v36 = v23;
  v23(v10, v21);
  v55[3] = AssociatedConformanceWitness;
  v55[4] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v25 = v17;
  sub_24E7896B8(v17, v11, WitnessTable);
  v26 = *(v47 + 8);
  v26(v25, v11);
  v41(1, a1, 3, a1 + v39, v35, v37);
  v27 = v45;
  v28 = v34;
  sub_24F926A38();
  v36(v10, v28);
  sub_24E7896B8(v27, v11, WitnessTable);
  v26(v27, v11);
  v29 = v46;
  v30 = *(v47 + 16);
  v30(v27, v46, v11);
  v53 = 0;
  v54 = 1;
  v55[0] = v27;
  v55[1] = &v53;
  v31 = v42;
  v30(v42, v25, v11);
  v55[2] = v31;
  v52[0] = v11;
  v52[1] = MEMORY[0x277CE1180];
  v52[2] = v11;
  v49 = WitnessTable;
  v50 = MEMORY[0x277CE1170];
  v51 = WitnessTable;
  sub_24F57BA64(v55, 3uLL, v52);
  v26(v25, v11);
  v26(v29, v11);
  v26(v31, v11);
  return (v26)(v45, v11);
}

uint64_t sub_24E8CED28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = *(a1 + 32);
  v26 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8);
  sub_24F924038();
  sub_24F924038();
  sub_24F92C4A8();
  sub_24F924038();
  v38 = sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F924038();
  v39 = sub_24F924E38();
  v40 = MEMORY[0x277CE1180];
  v41 = AssociatedTypeWitness;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();
  sub_24F924038();
  sub_24F924038();
  type metadata accessor for CardContentBackgroundStyle(255);
  sub_24F927598();
  v35 = sub_24E6A4C1C();
  v36 = sub_24E8D40DC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  sub_24F92C4A8();
  swift_getTupleTypeMetadata2();
  v27 = sub_24F927808();
  v25[1] = swift_getWitnessTable();
  v5 = sub_24F927108();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = type metadata accessor for CardLayoutMetrics(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = *(a1 + 48);
  v18 = v3;
  v19 = *(v3 + 56);
  v20 = v28;
  v21 = v26;
  v19(v28, 3, v28 + v17, v26, v18, v13);
  v30 = *(v16 + 16);
  v31 = v21;
  v32 = v18;
  v33 = v20;
  v34 = v15;
  sub_24F924C88();
  sub_24F9270F8();
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v8, v5, WitnessTable);
  v23 = *(v6 + 8);
  v23(v8, v5);
  sub_24E7896B8(v11, v5, WitnessTable);
  v23(v11, v5);
  return sub_24E8D413C(v15, type metadata accessor for CardLayoutMetrics);
}

uint64_t sub_24E8CF28C@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v138 = a3;
  v139 = a1;
  v136 = a2;
  v122 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_24F924038();
  v170 = sub_24F924038();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8);
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F924038();
  v171 = sub_24F924E38();
  v172 = MEMORY[0x277CE1180];
  v173 = AssociatedTypeWitness;
  swift_getTupleTypeMetadata();
  v9 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v104 = v9;
  v10 = sub_24F927018();
  v109 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v107 = &v101 - v11;
  v135 = v12;
  v13 = sub_24F924038();
  v112 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v110 = &v101 - v14;
  v134 = v15;
  v16 = sub_24F924038();
  v114 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v113 = &v101 - v17;
  type metadata accessor for CardContentBackgroundStyle(255);
  v18 = sub_24F927598();
  v19 = sub_24E6A4C1C();
  v20 = sub_24E8D40DC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
  v137 = a5;
  v123 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v169[14] = v19;
  v169[15] = v20;
  v169[16] = AssociatedConformanceWitness;
  v22 = swift_getWitnessTable();
  v111 = v18;
  v105 = v22;
  v132 = sub_24F924E08();
  v23 = sub_24F924038();
  v117 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v108 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v106 = &v101 - v26;
  v102 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v102);
  v101 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_24F92C4A8();
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v131 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v130 = &v101 - v30;
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  v125 = sub_24F927108();
  v31 = sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8);
  v127 = v31;
  v32 = sub_24F924038();
  v119 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v101 - v33;
  v128 = v35;
  v36 = sub_24F924038();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v101 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v101 - v41;
  v126 = v43;
  v44 = sub_24F92C4A8();
  v124 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v129 = &v101 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v140 = &v101 - v47;
  if (qword_27F210D28 != -1)
  {
    swift_once();
  }

  v133 = v16;
  v48 = MEMORY[0x277CDFC60];
  v49 = MEMORY[0x277CDF918];
  v121 = v23;
  if (byte_27F39D1B1 & 1) != 0 || (*(v136 + *(type metadata accessor for CardLayoutMetrics(0) + 68)))
  {
    v50 = v129;
    (*(v37 + 56))(v129, 1, 1, v126);
    v145 = swift_getWitnessTable();
    v146 = v48;
    v51 = swift_getWitnessTable();
    v52 = sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
    v143 = v51;
    v144 = v52;
    v141 = swift_getWitnessTable();
    v142 = v49;
    swift_getWitnessTable();
  }

  else
  {
    v53 = type metadata accessor for CardLargeView.Footer();
    sub_24E8D0594(v53, v34);
    v169[12] = swift_getWitnessTable();
    v169[13] = v48;
    v54 = swift_getWitnessTable();
    v55 = sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
    v169[10] = v54;
    v169[11] = v55;
    v56 = v128;
    v57 = swift_getWitnessTable();
    sub_24F926A38();
    (*(v119 + 8))(v34, v56);
    v169[8] = v57;
    v169[9] = MEMORY[0x277CDF918];
    v58 = v126;
    v59 = swift_getWitnessTable();
    sub_24E7896B8(v39, v58, v59);
    v60 = *(v37 + 8);
    v60(v39, v58);
    sub_24E7896B8(v42, v58, v59);
    v60(v42, v58);
    v50 = v129;
    (*(v37 + 32))(v129, v39, v58);
    (*(v37 + 56))(v50, 0, 1, v58);
  }

  sub_24E8D5004(v50, v140);
  v61 = *(v124 + 8);
  v119 = v44;
  v115 = v61;
  v116 = v124 + 8;
  v62 = v61(v50, v44);
  if ((byte_27F39D1B1 & 1) == 0)
  {
    v62 = type metadata accessor for CardLayoutMetrics(0);
    if ((*(v136 + *(v62 + 68)) & 1) == 0)
    {
      v63 = v138;
      v64 = swift_getAssociatedConformanceWitness();
      v65 = v101;
      (*(v64 + 24))(v63, v64);
      v66 = *(v65 + *(v102 + 52) + 8);

      sub_24E8D413C(v65, type metadata accessor for CommonCardAttributes);
      if (!v66)
      {
        v84 = v131;
        (*(v117 + 56))(v131, 1, 1, v121);
        v169[6] = swift_getWitnessTable();
        v169[7] = MEMORY[0x277CDFC60];
        v169[4] = swift_getWitnessTable();
        v169[5] = MEMORY[0x277CDF918];
        v99 = swift_getWitnessTable();
        v100 = swift_getWitnessTable();
        v169[2] = v99;
        v169[3] = v100;
        swift_getWitnessTable();
        goto LABEL_12;
      }
    }
  }

  MEMORY[0x28223BE20](v62);
  sub_24F9249A8();
  v67 = v107;
  sub_24F927008();
  type metadata accessor for CardLayoutMetrics(0);
  sub_24F927618();
  v68 = v135;
  v69 = swift_getWitnessTable();
  v70 = v110;
  sub_24F926948();
  (*(v109 + 8))(v67, v68);
  v151 = v69;
  v152 = MEMORY[0x277CDFC60];
  v71 = v134;
  v72 = swift_getWitnessTable();
  v73 = v113;
  sub_24F926A38();
  v74 = (*(v112 + 8))(v70, v71);
  MEMORY[0x28223BE20](v74);
  sub_24F927618();
  v149 = v72;
  v150 = MEMORY[0x277CDF918];
  v75 = v133;
  v76 = swift_getWitnessTable();
  v77 = v108;
  sub_24F926088();
  (*(v114 + 8))(v73, v75);
  v78 = swift_getWitnessTable();
  v147 = v76;
  v148 = v78;
  v79 = v121;
  v80 = swift_getWitnessTable();
  v81 = v106;
  sub_24E7896B8(v77, v79, v80);
  v82 = v117;
  v83 = *(v117 + 8);
  v83(v77, v79);
  sub_24E7896B8(v81, v79, v80);
  v83(v81, v79);
  v84 = v131;
  (*(v82 + 32))(v131, v77, v79);
  (*(v82 + 56))(v84, 0, 1, v79);
LABEL_12:
  v85 = v130;
  sub_24E8D5004(v84, v130);
  v86 = v118;
  v139 = *(v118 + 8);
  v87 = v120;
  v139(v84, v120);
  v88 = v129;
  v89 = v119;
  (*(v124 + 16))(v129, v140, v119);
  v170 = v88;
  (*(v86 + 16))(v84, v85, v87);
  v171 = v84;
  v169[0] = v89;
  v169[1] = v87;
  v165 = swift_getWitnessTable();
  v90 = MEMORY[0x277CDFC60];
  v166 = MEMORY[0x277CDFC60];
  v91 = swift_getWitnessTable();
  v92 = sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
  v163 = v91;
  v164 = v92;
  v161 = swift_getWitnessTable();
  v93 = MEMORY[0x277CDF918];
  v162 = MEMORY[0x277CDF918];
  v160 = swift_getWitnessTable();
  v167 = swift_getWitnessTable();
  v158 = swift_getWitnessTable();
  v159 = v90;
  v156 = swift_getWitnessTable();
  v157 = v93;
  v94 = swift_getWitnessTable();
  v95 = swift_getWitnessTable();
  v154 = v94;
  v155 = v95;
  v153 = swift_getWitnessTable();
  v168 = swift_getWitnessTable();
  sub_24F57BA64(&v170, 2uLL, v169);
  v96 = v139;
  v139(v130, v87);
  v97 = v115;
  v115(v140, v89);
  v96(v131, v87);
  return v97(v88, v89);
}

uint64_t sub_24E8D0594@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = a1[3];
  v3 = a1[4];
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  v5 = sub_24F927108();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  v9 = sub_24F924038();
  v15 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  sub_24F924C98();
  v17 = a1[2];
  v18 = v4;
  v19 = v3;
  v20 = v14[1];
  sub_24F9270F8();
  sub_24F927628();
  WitnessTable = swift_getWitnessTable();
  sub_24F926948();
  (*(v6 + 8))(v8, v5);
  v21 = WitnessTable;
  v22 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  sub_24F926728();
  return (*(v15 + 8))(v11, v9);
}

uint64_t sub_24E8D0888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v118 = a3;
  v121 = a2;
  v116 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v10 = sub_24F927808();
  v93[1] = swift_getWitnessTable();
  v93[2] = v10;
  v11 = sub_24F927108();
  v96 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v94 = v93 - v12;
  v137 = v13;
  v14 = sub_24F924038();
  v97 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v95 = v93 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8);
  v136 = v14;
  v16 = sub_24F924038();
  v100 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v99 = v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v98 = v93 - v19;
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  v128 = sub_24F927108();
  v129 = sub_24F924038();
  v20 = sub_24F924038();
  v105 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v104 = v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v103 = v93 - v23;
  v114 = v24;
  v135 = v16;
  v115 = sub_24F924E38();
  v133 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v132 = v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v131 = v93 - v27;
  v125 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v28);
  v130 = v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = v93 - v31;
  v33 = sub_24F924038();
  v34 = *(v33 - 8);
  v111 = v33;
  v112 = v34;
  MEMORY[0x28223BE20](v33);
  v106 = v93 - v35;
  v138 = sub_24F924038();
  v122 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v37 = v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v139 = v93 - v39;
  v40 = type metadata accessor for CardLargeView.Footer();
  v41 = *(v40 + 44);
  v42 = *(v40 + 48);
  v102 = v40;
  v43 = *(a5 + 72);
  v134 = a1;
  v107 = a1 + v42;
  v108 = v43;
  v109 = a1 + v41;
  v110 = a5 + 72;
  (v43)(3, a1, 3);
  sub_24F925858();
  v44 = type metadata accessor for CardLayoutMetrics(0);
  v119 = a4;
  v120 = a5;
  v45 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v47 = v106;
  sub_24F926A48();
  v48 = *(v125 + 8);
  v113 = v32;
  v117 = v45;
  v126 = v48;
  v127 = v125 + 8;
  v48(v32, v45);
  sub_24F925868();
  v101 = v44;
  v49 = MEMORY[0x277CDF918];
  v124 = AssociatedConformanceWitness;
  v165[14] = AssociatedConformanceWitness;
  v165[15] = MEMORY[0x277CDF918];
  v50 = v111;
  WitnessTable = swift_getWitnessTable();
  sub_24F926A48();
  (*(v112 + 8))(v47, v50);
  v165[12] = WitnessTable;
  v165[13] = v49;
  v52 = v138;
  v106 = swift_getWitnessTable();
  sub_24E7896B8(v37, v52, v106);
  v53 = *(v122 + 8);
  v123 = v37;
  v111 = v53;
  v112 = v122 + 8;
  v53(v37, v52);
  if (qword_27F210D28 != -1)
  {
    swift_once();
  }

  v54 = MEMORY[0x277CDFC60];
  if ((byte_27F39D1B1 & 1) != 0 || *(v121 + *(v101 + 68)) == 1)
  {
    v55 = v104;
    sub_24E8D0594(v102, v104);
    v121 = MEMORY[0x277CE1198];
    v146 = swift_getWitnessTable();
    v147 = v54;
    v56 = swift_getWitnessTable();
    v57 = sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
    v144 = v56;
    v145 = v57;
    v58 = v114;
    v59 = swift_getWitnessTable();
    v60 = v103;
    sub_24E7896B8(v55, v58, v59);
    v61 = *(v105 + 8);
    v61(v55, v58);
    sub_24E7896B8(v60, v58, v59);
    v142 = swift_getWitnessTable();
    v143 = v54;
    v140 = swift_getWitnessTable();
    v141 = v57;
    swift_getWitnessTable();
    sub_24ECCCBA0(v55, v58);
    v61(v55, v58);
    v61(v60, v58);
    v62 = MEMORY[0x277CDFC60];
  }

  else
  {
    v63 = sub_24F924C98();
    MEMORY[0x28223BE20](v63);
    v64 = v94;
    sub_24F9270F8();
    sub_24F927628();
    v121 = MEMORY[0x277CE1198];
    v91 = v137;
    v92 = swift_getWitnessTable();
    v65 = v95;
    sub_24F926948();
    (*(v96 + 8))(v64, v91);
    v165[10] = v92;
    v165[11] = v54;
    v66 = v136;
    v67 = swift_getWitnessTable();
    v62 = v54;
    v68 = v99;
    sub_24F926728();
    (*(v97 + 8))(v65, v66);
    v69 = sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
    v165[8] = v67;
    v165[9] = v69;
    v70 = v135;
    v71 = swift_getWitnessTable();
    v72 = v98;
    sub_24E7896B8(v68, v70, v71);
    v73 = *(v100 + 8);
    v73(v68, v70);
    sub_24E7896B8(v72, v70, v71);
    v165[6] = swift_getWitnessTable();
    v165[7] = v62;
    v165[4] = swift_getWitnessTable();
    v165[5] = v69;
    v74 = v114;
    swift_getWitnessTable();
    sub_24ECCCC98(v68, v74, v70);
    v73(v68, v70);
    v73(v72, v70);
  }

  v75 = v130;
  v108(13, v134, 3, v107, v119, v120);
  v76 = v113;
  v77 = v117;
  sub_24E7896B8(v75, v117, v124);
  v126(v75, v77);
  v78 = v123;
  v79 = v138;
  (*(v122 + 16))(v123, v139);
  v165[0] = v78;
  v80 = v132;
  v81 = v115;
  (*(v133 + 16))();
  v163 = 0x4024000000000000;
  v164 = 0;
  v165[1] = v80;
  v165[2] = &v163;
  (*(v125 + 16))(v75, v76, v77);
  v165[3] = v75;
  v162[0] = v79;
  v162[1] = v81;
  v162[2] = MEMORY[0x277CE1180];
  v162[3] = v77;
  v158 = v106;
  v156 = swift_getWitnessTable();
  v157 = v62;
  v82 = swift_getWitnessTable();
  v83 = sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
  v154 = v82;
  v155 = v83;
  v84 = swift_getWitnessTable();
  v152 = swift_getWitnessTable();
  v153 = v62;
  v150 = swift_getWitnessTable();
  v151 = v83;
  v85 = swift_getWitnessTable();
  v148 = v84;
  v149 = v85;
  v159 = swift_getWitnessTable();
  v160 = MEMORY[0x277CE1170];
  v161 = v124;
  sub_24F57BA64(v165, 4uLL, v162);
  v86 = v126;
  v126(v76, v77);
  v87 = *(v133 + 8);
  v87(v131, v81);
  v88 = v138;
  v89 = v111;
  v111(v139, v138);
  v86(v130, v77);
  v87(v132, v81);
  return v89(v123, v88);
}

uint64_t sub_24E8D17A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v31 = a4;
  v25 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v30 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  MEMORY[0x28223BE20](v15);
  v29 = &v25 - v16;
  v17 = type metadata accessor for CardLargeView.Footer();
  v18 = *(v17 + 44);
  v26 = *(v17 + 48);
  v27 = v18;
  v28 = *(a3 + 72);
  v28(5, a1, 3, a1 + v26, a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24E7896B8(v14, AssociatedTypeWitness, AssociatedConformanceWitness);
  v20 = *(v32 + 8);
  v20(v14, AssociatedTypeWitness);
  v28(6, a1, 3, a1 + v26, v25, a3);
  sub_24E7896B8(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  v20(v11, AssociatedTypeWitness);
  v21 = *(v32 + 16);
  v22 = v29;
  v21(v11, v29, AssociatedTypeWitness);
  v36[0] = v11;
  v23 = v30;
  v21(v30, v14, AssociatedTypeWitness);
  v36[1] = v23;
  v35[0] = AssociatedTypeWitness;
  v35[1] = AssociatedTypeWitness;
  v33 = AssociatedConformanceWitness;
  v34 = AssociatedConformanceWitness;
  sub_24F57BA64(v36, 2uLL, v35);
  v20(v14, AssociatedTypeWitness);
  v20(v22, AssociatedTypeWitness);
  v20(v23, AssociatedTypeWitness);
  return (v20)(v11, AssociatedTypeWitness);
}

uint64_t sub_24E8D1AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22[1] = a5;
  type metadata accessor for CardContentBackgroundStyle(255);
  swift_getAssociatedTypeWitness();
  v9 = sub_24F927598();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v22 - v14;
  v22[4] = a2;
  v22[5] = a3;
  v22[6] = a4;
  v22[7] = a1;
  v16 = sub_24E6A4C1C();
  v20 = sub_24E8D40DC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24F927568();
  v22[9] = v16;
  v22[10] = v20;
  v22[11] = AssociatedConformanceWitness;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v12, v9, WitnessTable);
  v18 = *(v10 + 8);
  v18(v12, v9);
  sub_24E7896B8(v15, v9, WitnessTable);
  return (v18)(v15, v9);
}

uint64_t sub_24E8D1D28@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 5, v2);
}

uint64_t sub_24E8D1DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v14 = type metadata accessor for CardLargeView.Footer();
  (*(a4 + 72))(11, a1, 3, a1 + *(v14 + 48), a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24E7896B8(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  sub_24E7896B8(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v16)(v13, AssociatedTypeWitness);
}

uint64_t sub_24E8D1F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v45 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v44 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v37 - v10;
  MEMORY[0x28223BE20](v11);
  v42 = &v37 - v12;
  MEMORY[0x28223BE20](v13);
  v41 = &v37 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v18);
  v49 = &v37 - v19;
  v20 = type metadata accessor for CardLargeView.Footer();
  v21 = *(v20 + 44);
  v22 = *(v20 + 48);
  v39 = a1;
  v40 = v21;
  v48 = *(a3 + 72);
  v23 = v22;
  v38 = v22;
  v47 = a3;
  v48(4, a1, 3, a1 + v22, a2, a3);
  v37 = a3 + 72;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v46 = v17;
  sub_24E7896B8(v17, AssociatedTypeWitness, AssociatedConformanceWitness);
  v25 = *(v50 + 8);
  v25(v17, AssociatedTypeWitness);
  v26 = v39;
  v27 = v41;
  v48(7, v39, 3, v39 + v23, a2, v47);
  v28 = v27;
  sub_24E7896B8(v27, AssociatedTypeWitness, AssociatedConformanceWitness);
  v25(v27, AssociatedTypeWitness);
  v29 = v42;
  v48(8, v26, 3, v26 + v38, a2, v47);
  v30 = v28;
  sub_24E7896B8(v29, AssociatedTypeWitness, AssociatedConformanceWitness);
  v25(v29, AssociatedTypeWitness);
  v31 = *(v50 + 16);
  v31(v29, v49, AssociatedTypeWitness);
  v55[0] = v29;
  v32 = v43;
  v33 = v46;
  (v31)(v43);
  v55[1] = v32;
  v34 = v32;
  v35 = v44;
  v31(v44, v30, AssociatedTypeWitness);
  v55[2] = v35;
  v54[0] = AssociatedTypeWitness;
  v54[1] = AssociatedTypeWitness;
  v54[2] = AssociatedTypeWitness;
  v51 = AssociatedConformanceWitness;
  v52 = AssociatedConformanceWitness;
  v53 = AssociatedConformanceWitness;
  sub_24F57BA64(v55, 3uLL, v54);
  v25(v30, AssociatedTypeWitness);
  v25(v33, AssociatedTypeWitness);
  v25(v49, AssociatedTypeWitness);
  v25(v35, AssociatedTypeWitness);
  v25(v34, AssociatedTypeWitness);
  return (v25)(v29, AssociatedTypeWitness);
}

uint64_t sub_24E8D23A8()
{

  return swift_deallocObject();
}

void sub_24E8D23E8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_24F923E98();
      if (v2 <= 0x3F)
      {
        sub_24E8D2CFC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24E8D24A4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v38 = *(a3 + 24);
  v4 = *(v38 - 8);
  v37 = *(a3 + 16);
  v5 = *(v4 + 84);
  v6 = *(v37 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v4 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v35 = sub_24F923E98();
  v9 = *(v35 - 8);
  v36 = *(v9 + 84);
  if (v36 > v8)
  {
    v8 = *(v9 + 84);
  }

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220BD8) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  if (v11 <= v8)
  {
    v16 = v8;
  }

  else
  {
    v16 = *(v10 + 84);
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v4 + 64) + v12;
  v18 = *(v10 + 80) & 0xF8 | 7;
  v19 = *(v10 + 64) + 7;
  v20 = a1;
  if (v16 >= a2)
  {
    goto LABEL_33;
  }

  v21 = (v19 & 0xFFFFFFFFFFFFFFF8) + ((v15 + v18 + ((v13 + v14 + (v17 & ~v12)) & ~v14)) & ~v18) + 8;
  v22 = v21 & 0xFFFFFFF8;
  if ((v21 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = a2 - v16 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 < 2)
  {
    v24 = 0;
  }

  if (v24 <= 1)
  {
    if (!v24)
    {
      goto LABEL_33;
    }

    v25 = *(a1 + v21);
    if (!v25)
    {
      goto LABEL_33;
    }

LABEL_30:
    v27 = v25 - 1;
    if (v22)
    {
      v27 = 0;
      v28 = *a1;
    }

    else
    {
      v28 = 0;
    }

    return v16 + (v28 | v27) + 1;
  }

  if (v24 == 2)
  {
    v25 = *(a1 + v21);
    if (v25)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v25 = *(a1 + v21);
    if (v25)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  if (v5 == v16)
  {
    v29 = v38;
    v30 = *(v4 + 48);
    v31 = v5;
    goto LABEL_35;
  }

  v20 = ((a1 + v17) & ~v12);
  if (v7 == v16)
  {
    v30 = *(v6 + 48);
    v31 = v7;
    v29 = v37;

    return v30(v20, v31, v29);
  }

  v20 = ((v20 + v13 + v14) & ~v14);
  if (v36 == v16)
  {
    v30 = *(v9 + 48);
    v31 = v36;
    v29 = v35;
LABEL_35:

    return v30(v20, v31, v29);
  }

  v32 = (v20 + v15 + v18) & ~v18;
  if (v11 < 0x7FFFFFFE)
  {
    v34 = *((v19 + v32) & 0xFFFFFFFFFFFFFFF8);
    if (v34 >= 0xFFFFFFFF)
    {
      LODWORD(v34) = -1;
    }

    if ((v34 + 1) >= 2)
    {
      return v34;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v33 = *(v10 + 48);

    return v33(v32);
  }
}

void sub_24E8D2890(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v46 = *(a4 + 24);
  v6 = *(v46 - 8);
  v45 = v6;
  v7 = *(v6 + 84);
  v43 = *(a4 + 16);
  v8 = *(v43 - 8);
  v44 = *(v8 + 84);
  if (v44 <= v7)
  {
    v9 = *(v6 + 84);
  }

  else
  {
    v9 = *(v8 + 84);
  }

  v41 = sub_24F923E98();
  v10 = *(v41 - 8);
  v42 = *(v10 + 84);
  if (v42 > v9)
  {
    v9 = *(v10 + 84);
  }

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220BD8) - 8);
  v12 = *(v11 + 84);
  v13 = *(v6 + 64);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  if (v12 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  else
  {
    v18 = *(v11 + 84);
  }

  if (v18 <= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = v18;
  }

  v20 = v13 + v14;
  v21 = (v15 + v16 + ((v13 + v14) & ~v14)) & ~v16;
  v22 = *(v11 + 80) & 0xF8 | 7;
  v23 = *(v11 + 64) + 7;
  v24 = (v23 & 0xFFFFFFFFFFFFFFF8) + 8;
  v25 = ((v17 + v22 + v21) & ~v22) + v24;
  if (v25)
  {
    v26 = 2;
  }

  else
  {
    v26 = a3 - v19 + 1;
  }

  if (v26 >= 0x10000)
  {
    v27 = 4;
  }

  else
  {
    v27 = 2;
  }

  if (v26 < 0x100)
  {
    v27 = 1;
  }

  if (v26 >= 2)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (v19 < a3)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (a2 > v19)
  {
    if (v25)
    {
      v30 = 1;
    }

    else
    {
      v30 = a2 - v19;
    }

    if (v25)
    {
      v31 = ~v19 + a2;
      bzero(a1, v25);
      *a1 = v31;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        *(a1 + v25) = v30;
      }

      else
      {
        *(a1 + v25) = v30;
      }
    }

    else if (v29)
    {
      *(a1 + v25) = v30;
    }

    return;
  }

  if (v29 <= 1)
  {
    v32 = a1;
    if (v29)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

LABEL_43:
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  v32 = a1;
  if (v29 == 2)
  {
    *(a1 + v25) = 0;
    goto LABEL_43;
  }

  *(a1 + v25) = 0;
  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v7 == v19)
  {
    v33 = v46;
    v34 = *(v45 + 56);
    v35 = a2;
    v36 = v7;
    goto LABEL_46;
  }

  v32 = ((v32 + v20) & ~v14);
  if (v44 == v19)
  {
    v34 = *(v8 + 56);
    v35 = a2;
    v36 = v44;
    v33 = v43;

    goto LABEL_48;
  }

  v32 = ((v32 + v15 + v16) & ~v16);
  if (v42 == v19)
  {
    v34 = *(v10 + 56);
    v35 = a2;
    v36 = v42;
    v33 = v41;
LABEL_46:

LABEL_48:
    v34(v32, v35, v36, v33);
    return;
  }

  v37 = ((v32 + v17 + v22) & ~v22);
  if (v18 >= a2)
  {
    if (v12 < 0x7FFFFFFE)
    {
      v40 = ((v37 + v23) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v40 = 0;
        *v40 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v40 = a2;
      }
    }

    else
    {
      v39 = *(v11 + 56);

      v39(v37, a2);
    }
  }

  else if ((v23 & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v38 = ~v18 + a2;
    bzero(((v32 + v17 + v22) & ~v22), v24);
    *v37 = v38;
  }
}

void sub_24E8D2CFC()
{
  if (!qword_27F220C60)
  {
    type metadata accessor for CardSafeArea(255);
    v0 = sub_24F9233E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F220C60);
    }
  }
}

uint64_t sub_24E8D2DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (type metadata accessor for CardLargeView() - 8);
  v4 = v0 + ((*(*v3 + 80) + 40) & ~*(*v3 + 80));
  (*(*(v2 - 8) + 8))(v4, v2);
  (*(*(v1 - 8) + 8))(v4 + v3[13], v1);
  v5 = v3[14];
  v6 = sub_24F923E98();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v4 + v3[15];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220BD8);
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220C70);

  return swift_deallocObject();
}

uint64_t sub_24E8D305C(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(type metadata accessor for CardLargeView() - 8);
  v8 = v2 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  return a2(a1, v8, v4, v5, v6);
}

uint64_t sub_24E8D3118()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_24E8D3178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_24E8D31C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E8D3218()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_24F923E98();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24E8D32C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v32 = *(a3 + 24);
  v7 = *(v6 + 84);
  v8 = *(v32 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = sub_24F923E98();
  v12 = *(v11 - 8);
  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  if (*(v12 + 84) <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 64) + v13;
  if (a2 > v16)
  {
    v18 = ((v14 + v15 + (v17 & ~v13)) & ~v15) + *(*(v11 - 8) + 64);
    v19 = 8 * v18;
    if (v18 <= 3)
    {
      v21 = ((a2 - v16 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v21))
      {
        v20 = *(a1 + v18);
        if (!v20)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v21 > 0xFF)
      {
        v20 = *(a1 + v18);
        if (!*(a1 + v18))
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v21 < 2)
      {
LABEL_30:
        if (v16)
        {
          goto LABEL_31;
        }

        return 0;
      }
    }

    v20 = *(a1 + v18);
    if (!*(a1 + v18))
    {
      goto LABEL_30;
    }

LABEL_17:
    v22 = (v20 - 1) << v19;
    if (v18 > 3)
    {
      v22 = 0;
    }

    if (v18)
    {
      if (v18 <= 3)
      {
        v23 = v18;
      }

      else
      {
        v23 = 4;
      }

      if (v23 > 2)
      {
        if (v23 == 3)
        {
          v24 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v24 = *a1;
        }
      }

      else if (v23 == 1)
      {
        v24 = *a1;
      }

      else
      {
        v24 = *a1;
      }
    }

    else
    {
      v24 = 0;
    }

    return v16 + (v24 | v22) + 1;
  }

LABEL_31:
  if (v7 == v16)
  {
    v25 = *(v6 + 48);
    v26 = a1;
    v27 = v7;
    v28 = v5;
LABEL_36:

    return v25(v26, v27, v28);
  }

  v26 = ((a1 + v17) & ~v13);
  if (v9 == v16)
  {
    v25 = *(v8 + 48);
    v27 = v9;
    v28 = v32;
    goto LABEL_36;
  }

  v30 = *(v12 + 48);
  v31 = (v26 + v14 + v15) & ~v15;

  return v30(v31);
}

void sub_24E8D35D0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v38 = *(a4 + 16);
  v7 = *(v38 - 8);
  v36 = *(a4 + 24);
  v37 = v7;
  v8 = *(v7 + 84);
  v9 = *(v36 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(sub_24F923E98() - 8);
  v13 = v12;
  v14 = *(v7 + 64);
  if (*(v12 + 84) <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v9 + 80);
  v17 = v14 + v16;
  v18 = (v14 + v16) & ~v16;
  v19 = *(v9 + 64);
  v20 = *(v12 + 80);
  v21 = ((v19 + v20 + v18) & ~v20) + *(v12 + 64);
  if (a3 <= v15)
  {
    v23 = 0;
    v22 = a1;
  }

  else
  {
    v22 = a1;
    if (v21 <= 3)
    {
      v26 = ((a3 - v15 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
      if (HIWORD(v26))
      {
        v23 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v23 = v27;
        }

        else
        {
          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }
  }

  if (v15 < a2)
  {
    v24 = ~v15 + a2;
    if (v21 < 4)
    {
      v25 = (v24 >> (8 * v21)) + 1;
      if (v21)
      {
        v28 = v24 & ~(-1 << (8 * v21));
        bzero(v22, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *v22 = v28;
            if (v23 > 1)
            {
LABEL_52:
              if (v23 == 2)
              {
                *&v22[v21] = v25;
              }

              else
              {
                *&v22[v21] = v25;
              }

              return;
            }
          }

          else
          {
            *v22 = v24;
            if (v23 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *v22 = v28;
        v22[2] = BYTE2(v28);
      }

      if (v23 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(v22, v21);
      *v22 = v24;
      v25 = 1;
      if (v23 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v23)
    {
      v22[v21] = v25;
    }

    return;
  }

  if (v23 <= 1)
  {
    if (v23)
    {
      v22[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v23 == 2)
  {
    *&v22[v21] = 0;
    goto LABEL_33;
  }

  *&v22[v21] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v8 == v15)
  {
    v29 = v38;
    v30 = *(v37 + 56);
    v31 = v22;
    v32 = a2;
    v33 = v8;
LABEL_38:

    v30(v31, v32, v33, v29);
    return;
  }

  v31 = (&v22[v17] & ~v16);
  if (v10 == v15)
  {
    v30 = *(v9 + 56);
    v32 = a2;
    v33 = v10;
    v29 = v36;
    goto LABEL_38;
  }

  v34 = *(v13 + 56);
  v35 = &v31[v19 + v20] & ~v20;

  v34(v35, a2);
}

uint64_t sub_24E8D3960()
{
  type metadata accessor for CardLargeView.TopAccessory();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720);
  sub_24F924038();
  type metadata accessor for CardLargeView.Footer();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2195B8);
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40);
  swift_getAssociatedTypeWitness();
  sub_24F927598();
  type metadata accessor for CardLargeView.GradientBlurView();
  sub_24F924038();
  sub_24F92C4A8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F9242F8();
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  type metadata accessor for CardHeightViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E040);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170A0);
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E8D40DC(&qword_27F217CC0, type metadata accessor for CardHeightViewModifier);
  swift_getWitnessTable();
  sub_24E6A4C1C();
  sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F217098, &qword_27F2170A0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24E6BC1C8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ZoomableViewModifier(255);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24E8D40DC(&qword_27F217130, type metadata accessor for ZoomableViewModifier);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CardSafeArea(255);
  swift_getOpaqueTypeConformance2();
  sub_24E8D40DC(&qword_27F214D10, type metadata accessor for CardSafeArea);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24E8D4040()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_24E8D40DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E8D413C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E8D4200()
{
  result = qword_27F220DF8;
  if (!qword_27F220DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220E00);
    sub_24E8D42B8();
    sub_24E602068(&qword_27F216598, &qword_27F2165A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220DF8);
  }

  return result;
}

unint64_t sub_24E8D42B8()
{
  result = qword_27F220E08;
  if (!qword_27F220E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220E10);
    sub_24E8D4370();
    sub_24E602068(&qword_27F21A718, &qword_27F21A720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220E08);
  }

  return result;
}

unint64_t sub_24E8D4370()
{
  result = qword_27F220E18;
  if (!qword_27F220E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220E20);
    sub_24E602068(&qword_27F220E28, &qword_27F220E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220E18);
  }

  return result;
}

uint64_t sub_24E8D4428()
{
  swift_getAssociatedTypeWitness();
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();

  return swift_getWitnessTable();
}

uint64_t sub_24E8D44F8()
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8);
  sub_24F924038();
  sub_24F924038();
  sub_24F92C4A8();
  sub_24F924038();
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F924038();
  sub_24F924E38();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();
  sub_24F924038();
  sub_24F924038();
  type metadata accessor for CardContentBackgroundStyle(255);
  sub_24F927598();
  sub_24E6A4C1C();
  sub_24E8D40DC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  sub_24F92C4A8();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  return swift_getWitnessTable();
}

void sub_24E8D4898()
{
  sub_24E8D4F04(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24E8D4F04(319, &qword_27F220EC0, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24E6CAEE4(319, &qword_27F218180, &unk_27F22C070, &unk_24F947CB0, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        v3 = MEMORY[0x277D839B0];
        sub_24F928FD8();
        if (v4 <= 0x3F)
        {
          sub_24E6C5550();
          if (v5 <= 0x3F)
          {
            sub_24E8D4F54(319, &qword_27F220EC8, type metadata accessor for HeaderPresentation, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_24E8D4F04(319, &qword_27F220ED0, &type metadata for Margins, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_24E8D4F04(319, &qword_27F254E10, v3, MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
                {
                  sub_24E8D4F04(319, &qword_27F236310, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
                  if (v9 <= 0x3F)
                  {
                    sub_24E6CAEE4(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
                    if (v10 <= 0x3F)
                    {
                      sub_24E8D4F54(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
                      if (v11 <= 0x3F)
                      {
                        sub_24E65E73C();
                        if (v12 <= 0x3F)
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
        }
      }
    }
  }
}

uint64_t sub_24E8D4BB8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 136);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[34];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[40];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[42];

  return v15(v16, a2, v14);
}

uint64_t sub_24E8D4D5C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 136) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[34];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[40];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[42];

  return v15(v16, a2, a2, v14);
}

void sub_24E8D4F04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24E8D4F54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24E8D5004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F92C4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_24E8D5070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  v15[0] = sub_24F925378();
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  v13 = sub_24F925388();
  MEMORY[0x25304C420](v15, a6, v13, a8);
}

__n128 sub_24E8D5164@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v4 = sub_24F925218();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v7);
  v62 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v12 - 8);
  v52 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v60 = &v49 - v15;
  MEMORY[0x28223BE20](v16);
  v61 = &v49 - v17;
  MEMORY[0x28223BE20](v18);
  v65 = &v49 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v49 - v24;
  v58 = a1;
  v59 = v2;
  sub_24F769764(&v49 - v24);
  v26 = *MEMORY[0x277CE0560];
  v27 = *MEMORY[0x277CE0560];
  v56 = v5[13];
  v54 = v5 + 13;
  v56(v22, v27, v4);
  v55 = v5[7];
  v55(v22, 0, 1, v4);
  v57 = v7;
  v28 = *(v7 + 48);
  sub_24E60169C(v25, v11, &qword_27F215598);
  sub_24E60169C(v22, &v11[v28], &qword_27F215598);
  v63 = v5;
  v29 = v5[6];
  if (v29(v11, 1, v4) != 1)
  {
    sub_24E60169C(v11, v65, &qword_27F215598);
    if (v29(&v11[v28], 1, v4) != 1)
    {
      v51 = v26;
      v31 = &v11[v28];
      v32 = v53;
      (v63[4])(v53, v31, v4);
      sub_24E8E01C8(&qword_27F215650, MEMORY[0x277CE0570]);
      v50 = sub_24F92AFF8();
      v33 = v63[1];
      v33(v32, v4);
      sub_24E601704(v22, &qword_27F215598);
      sub_24E601704(v25, &qword_27F215598);
      v33(v65, v4);
      sub_24E601704(v11, &qword_27F215598);
      if ((v50 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_24E601704(v22, &qword_27F215598);
    sub_24E601704(v25, &qword_27F215598);
    (v63[1])(v65, v4);
LABEL_6:
    v30 = v11;
LABEL_14:
    sub_24E601704(v30, &unk_27F254F20);
    goto LABEL_15;
  }

  v51 = v26;
  v65 = (v5 + 7);
  sub_24E601704(v22, &qword_27F215598);
  sub_24E601704(v25, &qword_27F215598);
  if (v29(&v11[v28], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v11, &qword_27F215598);
LABEL_8:
  v34 = v61;
  sub_24F769764(v61);
  v35 = v60;
  v56(v60, v51, v4);
  v55(v35, 0, 1, v4);
  v36 = *(v57 + 48);
  v37 = v62;
  sub_24E60169C(v34, v62, &qword_27F215598);
  sub_24E60169C(v35, v37 + v36, &qword_27F215598);
  if (v29(v37, 1, v4) == 1)
  {
    sub_24E601704(v35, &qword_27F215598);
    sub_24E601704(v34, &qword_27F215598);
    if (v29((v37 + v36), 1, v4) == 1)
    {
      sub_24E601704(v37, &qword_27F215598);
LABEL_20:
      if (qword_27F20FE20 != -1)
      {
        swift_once();
      }

      v39 = &xmmword_27F21A3F8;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v38 = v52;
  sub_24E60169C(v37, v52, &qword_27F215598);
  if (v29((v37 + v36), 1, v4) == 1)
  {
    sub_24E601704(v35, &qword_27F215598);
    sub_24E601704(v34, &qword_27F215598);
    (v63[1])(v38, v4);
LABEL_13:
    v30 = v37;
    goto LABEL_14;
  }

  v44 = v63;
  v45 = v37 + v36;
  v46 = v53;
  (v63[4])(v53, v45, v4);
  sub_24E8E01C8(&qword_27F215650, MEMORY[0x277CE0570]);
  v47 = sub_24F92AFF8();
  v48 = v44[1];
  v48(v46, v4);
  sub_24E601704(v35, &qword_27F215598);
  sub_24E601704(v34, &qword_27F215598);
  v48(v38, v4);
  sub_24E601704(v37, &qword_27F215598);
  if (v47)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (qword_27F20FE18 != -1)
  {
    swift_once();
  }

  v39 = &xmmword_27F21A3B0;
LABEL_18:
  v40 = v39[3];
  v68 = v39[2];
  v69 = v40;
  v70 = *(v39 + 8);
  v41 = v39[1];
  v66 = *v39;
  v67 = v41;
  v42 = v64;
  *(v64 + 32) = v68;
  *(v42 + 48) = v40;
  *(v42 + 64) = v70;
  result = v67;
  *v42 = v66;
  *(v42 + 16) = result;
  return result;
}

uint64_t sub_24E8D5A14@<X0>(char *a1@<X8>)
{
  v2 = sub_24F923E98();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24F769764(&v9 - v6);
  sub_24F769788(v4);
  return sub_24F52EC5C(v7, v4, a1);
}

uint64_t sub_24E8D5B10(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  (*(v1 + 208))(v7);
  (*(v3 + 32))(v5, v9, v2);
  return swift_dynamicCast();
}

uint64_t sub_24E8D5C14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v181);
  v168 = &v133 - v3;
  v179 = sub_24F923E98();
  v167 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v166 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = a1;
  v190 = *(a1 - 1);
  MEMORY[0x28223BE20](v5);
  v183 = v6;
  v189 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_24F92C0E8();
  v165 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v177 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F929888();
  v171 = *(v8 - 8);
  v172 = v8;
  MEMORY[0x28223BE20](v8);
  v170 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = a1[3];
  sub_24F924038();
  *&v186 = a1[5];
  sub_24F924E38();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  *(&v157 + 1) = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  v10 = sub_24F927108();
  *&v184 = a1 - 1;
  v163 = a1[4];
  *&v188 = a1[8];
  *(&v188 + 1) = v10;
  v11 = sub_24F923428();
  v161 = MEMORY[0x277CDD6E0];
  WitnessTable = swift_getWitnessTable();
  *&v219 = v11;
  *(&v219 + 1) = WitnessTable;
  v160 = MEMORY[0x277CDEC48];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220EE8);
  *&v219 = v11;
  *(&v219 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220EF0);
  v17 = sub_24E8DCE18();
  *&v219 = v16;
  *(&v219 + 1) = v17;
  v182 = MEMORY[0x277CDEA38];
  v18 = swift_getOpaqueTypeConformance2();
  *&v219 = OpaqueTypeMetadata2;
  *(&v219 + 1) = v14;
  *&v220 = OpaqueTypeConformance2;
  *(&v220 + 1) = v18;
  *&v185 = MEMORY[0x277CDE708];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F20);
  sub_24F924038();
  sub_24F924E38();
  v19 = sub_24F926DC8();
  *&v219 = OpaqueTypeMetadata2;
  *(&v219 + 1) = v14;
  *&v220 = OpaqueTypeConformance2;
  *(&v220 + 1) = v18;
  v20 = swift_getOpaqueTypeConformance2();
  v176 = MEMORY[0x277CE01C8];
  v21 = sub_24E602068(&qword_27F220F28, &qword_27F220F20);
  v217 = OpaqueTypeConformance2;
  v218 = v21;
  v158 = MEMORY[0x277CDFAD8];
  v22 = swift_getWitnessTable();
  v215 = v20;
  v216 = v22;
  v175 = MEMORY[0x277CE0340];
  v214 = swift_getWitnessTable();
  v174 = MEMORY[0x277CE0FB0];
  v23 = swift_getWitnessTable();
  *&v219 = v19;
  *(&v219 + 1) = v23;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v173 = sub_24F927018();
  v159 = sub_24F924038();
  *&v219 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F30);
  *(&v219 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F188);
  v24 = v184;
  v162 = *(v184 + 24);
  *&v220 = sub_24F924038();
  *(&v188 + 1) = *(v24 + 80);
  type metadata accessor for OnboardingButtonPlatter();
  v25 = sub_24F92C4A8();
  *(&v220 + 1) = v25;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  swift_getWitnessTable();
  v26 = sub_24F923428();
  v27 = swift_getWitnessTable();
  *&v219 = v26;
  *(&v219 + 1) = v27;
  swift_getOpaqueTypeMetadata2();
  *&v219 = v26;
  *(&v219 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  sub_24F924278();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720);
  v28 = sub_24F924038();
  v213 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  *&v219 = v25;
  *(&v219 + 1) = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  v160 = v30;
  v31 = swift_getWitnessTable();
  v32 = sub_24E602068(&qword_27F21A718, &qword_27F21A720);
  v211 = v31;
  v212 = v32;
  v33 = swift_getWitnessTable();
  *&v157 = v33;
  *&v219 = v25;
  *(&v219 + 1) = v29;
  *(&v157 + 1) = swift_getOpaqueTypeConformance2();
  *&v219 = v28;
  *(&v219 + 1) = v30;
  *&v220 = v33;
  *(&v220 + 1) = *(&v157 + 1);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216520);
  sub_24F924038();
  v34 = sub_24E602068(&qword_27F216518, &qword_27F216520);
  v209 = v29;
  v210 = v34;
  swift_getWitnessTable();
  sub_24F924B98();
  sub_24F924038();
  sub_24F924E38();
  sub_24F926DC8();
  v182 = sub_24F924E38();
  v35 = sub_24F926DC8();
  v161 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v139 = &v133 - v36;
  v207 = swift_getWitnessTable();
  v208 = MEMORY[0x277CDF918];
  v37 = swift_getWitnessTable();
  *&v219 = v28;
  *(&v219 + 1) = v160;
  v38 = v157;
  v220 = v157;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = swift_getWitnessTable();
  v205 = v38;
  v206 = v40;
  v41 = swift_getWitnessTable();
  v203 = v39;
  v204 = v41;
  v202 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  v200 = v37;
  v201 = v42;
  v133 = swift_getWitnessTable();
  v199 = v133;
  v43 = swift_getWitnessTable();
  *&v219 = v35;
  *(&v219 + 1) = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v145 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v142 = &v133 - v45;
  v147 = v46;
  v47 = sub_24F924038();
  v141 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v138 = &v133 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220ED8);
  *&v219 = v35;
  *(&v219 + 1) = v43;
  v137 = v43;
  v134 = swift_getOpaqueTypeConformance2();
  v197 = v134;
  v198 = MEMORY[0x277CDFC60];
  v50 = swift_getWitnessTable();
  v51 = sub_24E602068(&qword_27F220EE0, &qword_27F220ED8);
  *&v219 = v47;
  *(&v219 + 1) = v49;
  *&v220 = v50;
  *(&v220 + 1) = v51;
  v52 = swift_getOpaqueTypeMetadata2();
  v146 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v143 = &v133 - v53;
  v54 = sub_24E8E01C8(&qword_27F21F480, MEMORY[0x277CC9DB0]);
  *&v219 = v47;
  *(&v219 + 1) = v49;
  v135 = v50;
  *&v220 = v50;
  *(&v220 + 1) = v51;
  v55 = v187;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v178;
  *&v219 = v178;
  *(&v219 + 1) = v52;
  v149 = v52;
  *&v220 = v54;
  *(&v220 + 1) = v56;
  v136 = v56;
  v58 = sub_24F924288();
  v151 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v173 = &v133 - v59;
  v60 = swift_getWitnessTable();
  *&v219 = v57;
  *(&v219 + 1) = v58;
  v154 = v58;
  v175 = v54;
  *&v220 = v54;
  *(&v220 + 1) = v60;
  v140 = v60;
  v61 = sub_24F924288();
  *&v157 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v174 = &v133 - v62;
  v63 = swift_getWitnessTable();
  v64 = sub_24E8E01C8(&qword_27F22DF90, MEMORY[0x277CDFA28]);
  v65 = v179;
  *&v219 = v61;
  *(&v219 + 1) = v179;
  *&v220 = v63;
  *(&v220 + 1) = v64;
  v66 = swift_getOpaqueTypeMetadata2();
  v159 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v176 = &v133 - v67;
  v158 = v61;
  *&v219 = v61;
  *(&v219 + 1) = v65;
  v148 = v63;
  *&v220 = v63;
  *(&v220 + 1) = v64;
  v144 = v64;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = sub_24E8DD010();
  v160 = v66;
  *&v219 = v66;
  *(&v219 + 1) = v181;
  v155 = v68;
  *&v220 = v68;
  *(&v220 + 1) = v69;
  v153 = v69;
  *(&v157 + 1) = swift_getOpaqueTypeMetadata2();
  v156 = *(*(&v157 + 1) - 8);
  MEMORY[0x28223BE20](*(&v157 + 1));
  v150 = &v133 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v152 = &v133 - v72;
  *&v73 = v162;
  *&v74 = v163;
  *(&v73 + 1) = v164;
  *(&v74 + 1) = v186;
  v185 = v74;
  v186 = v73;
  v191 = v73;
  v192 = v74;
  v184 = *(v184 + 56);
  v193 = v184;
  v194 = v188;
  v195 = v55;
  v75 = v139;
  sub_24F926DB8();
  *&v219 = 0;
  *(&v219 + 1) = 0xE000000000000000;
  if (*(v55 + 152))
  {
    v76 = *(v55 + 144);
    v77 = *(v55 + 152);
  }

  else
  {
    v77 = 0xE400000000000000;
    v76 = 2003134838;
  }

  MEMORY[0x253050C20](v76, v77);

  v219 = 0u;
  v220 = 0u;
  memset(v196, 0, sizeof(v196));
  v78 = v170;
  sub_24F9297A8();

  sub_24E601704(v196, &qword_27F2129B0);
  sub_24E601704(&v219, &qword_27F2129B0);
  v79 = v142;
  sub_24F925EE8();
  (*(v171 + 8))(v78, v172);
  (*(v161 + 8))(v75, v35);
  sub_24F927618();
  v80 = v147;
  v81 = v138;
  sub_24F926948();
  (*(v145 + 8))(v79, v80);
  v82 = v143;
  sub_24E8D92C8(v47, v135);
  (*(v141 + 8))(v81, v47);
  v164 = objc_opt_self();
  v83 = [v164 defaultCenter];
  v84 = v177;
  sub_24F92C0F8();

  v86 = v189;
  v85 = v190;
  v87 = *(v190 + 16);
  v171 = v190 + 16;
  v172 = v87;
  v88 = v180;
  v87(v189, v55, v180);
  v170 = *(v85 + 80);
  v89 = (v170 + 80) & ~v170;
  v90 = swift_allocObject();
  v91 = v185;
  v90[1] = v186;
  v90[2] = v91;
  v90[4] = v188;
  v90[3] = v184;
  v92 = *(v85 + 32);
  v190 = v85 + 32;
  v182 = v92;
  v92(v90 + v89, v86, v88);
  v93 = v149;
  v94 = v178;
  sub_24F926BC8();

  v165 = *(v165 + 8);
  (v165)(v84, v94);
  (*(v146 + 8))(v82, v93);
  v95 = [v164 defaultCenter];
  sub_24F92C0F8();

  v96 = v189;
  v97 = v88;
  v98 = v88;
  v99 = v172;
  v172(v189, v187, v98);
  v163 = v89;
  v100 = swift_allocObject();
  v101 = v185;
  *(v100 + 16) = v186;
  *(v100 + 32) = v101;
  *(v100 + 48) = v184;
  v102 = *(&v188 + 1);
  *(v100 + 64) = v188;
  *(v100 + 72) = v102;
  v182(v100 + v89, v96, v97);
  v103 = v177;
  v104 = v154;
  v105 = v173;
  sub_24F926BC8();

  (v165)(v103, v94);
  (*(v151 + 8))(v105, v104);
  v106 = v180;
  v107 = v187;
  v108 = v166;
  sub_24F769788(v166);
  v109 = v189;
  v99(v189, v107, v106);
  v110 = v163;
  v111 = swift_allocObject();
  v112 = v185;
  v111[1] = v186;
  v111[2] = v112;
  v111[3] = v184;
  v113 = v188;
  v111[4] = v188;
  v182(v111 + v110, v109, v106);
  v114 = v158;
  v115 = v179;
  v116 = v174;
  sub_24F926AC8();

  (*(v167 + 8))(v108, v115);
  (*(v157 + 8))(v116, v114);
  v117 = v187;
  v118 = v168;
  sub_24F769764(v168);
  v119 = v189;
  v172(v189, v117, v106);
  v120 = swift_allocObject();
  v121 = v185;
  v120[1] = v186;
  v120[2] = v121;
  v120[3] = v184;
  v120[4] = v113;
  v182(v120 + v110, v119, v106);
  v122 = v150;
  v123 = v160;
  v124 = v181;
  v125 = v155;
  v126 = v153;
  v127 = v176;
  sub_24F926AC8();

  sub_24E601704(v118, &qword_27F215598);
  (*(v159 + 8))(v127, v123);
  *&v219 = v123;
  *(&v219 + 1) = v124;
  *&v220 = v125;
  *(&v220 + 1) = v126;
  v128 = swift_getOpaqueTypeConformance2();
  v129 = v152;
  v130 = *(&v157 + 1);
  sub_24E7896B8(v122, *(&v157 + 1), v128);
  v131 = *(v156 + 8);
  v131(v122, v130);
  sub_24E7896B8(v129, v130, v128);
  return (v131)(v129, v130);
}

uint64_t sub_24E8D73D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v84 = a4;
  v85 = a8;
  v75 = a6;
  v76 = a7;
  v82 = a5;
  v83 = a3;
  v74 = a2;
  v72 = a1;
  v78 = a9;
  v73 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F188);
  sub_24F924038();
  type metadata accessor for OnboardingButtonPlatter();
  sub_24F92C4A8();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  v81 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_24F927108();
  swift_getWitnessTable();
  sub_24F923428();
  v80 = MEMORY[0x277CDD6E0];
  swift_getWitnessTable();
  v71 = MEMORY[0x277CDEC48];
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24F924278();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720);
  v10 = sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v69 = MEMORY[0x277CDEA38];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v130 = swift_getWitnessTable();
  v131 = sub_24E602068(&qword_27F21A718, &qword_27F21A720);
  v70 = MEMORY[0x277CDFAD8];
  v115 = v10;
  v116 = OpaqueTypeMetadata2;
  v89 = swift_getWitnessTable();
  v90 = OpaqueTypeMetadata2;
  v117 = v89;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v88 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216520);
  sub_24F924038();
  v128 = v11;
  v129 = sub_24E602068(&qword_27F216518, &qword_27F216520);
  swift_getWitnessTable();
  v91 = v10;
  v86 = sub_24F924B98();
  v79 = sub_24F924038();
  v77 = sub_24F924E38();
  v87 = sub_24F926DC8();
  v67 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v66 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v65 = &v64 - v15;
  sub_24F924038();
  sub_24F924E38();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v68 = sub_24F927108();
  v16 = sub_24F923428();
  v17 = swift_getWitnessTable();
  v115 = v16;
  v116 = v17;
  v18 = swift_getOpaqueTypeMetadata2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220EE8);
  v115 = v16;
  v116 = v17;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220EF0);
  v22 = sub_24E8DCE18();
  v115 = v21;
  v116 = v22;
  v23 = swift_getOpaqueTypeConformance2();
  v115 = v18;
  v116 = v19;
  v117 = v20;
  OpaqueTypeConformance2 = v23;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F20);
  sub_24F924038();
  sub_24F924E38();
  v24 = sub_24F926DC8();
  v115 = v18;
  v116 = v19;
  v117 = v20;
  OpaqueTypeConformance2 = v23;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = sub_24E602068(&qword_27F220F28, &qword_27F220F20);
  v126 = v20;
  v127 = v26;
  v27 = swift_getWitnessTable();
  v124 = v25;
  v125 = v27;
  v123 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v115 = v24;
  v116 = v28;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v80 = sub_24F927018();
  v29 = sub_24F924038();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v64 - v34;
  v36 = sub_24F924E38();
  v70 = *(v36 - 8);
  v71 = v36;
  MEMORY[0x28223BE20](v36);
  v81 = &v64 - v37;
  v115 = v74;
  v116 = v83;
  v117 = v84;
  OpaqueTypeConformance2 = v82;
  v119 = v75;
  v120 = v76;
  v121 = v85;
  v122 = v73;
  v38 = type metadata accessor for GSKOnboardingView();
  sub_24E8D5A14(&v115);
  if (v115 == 2)
  {
    sub_24E8D8128(v38, v32);
    v97 = swift_getWitnessTable();
    v98 = MEMORY[0x277CDF918];
    v39 = swift_getWitnessTable();
    sub_24E7896B8(v32, v29, v39);
    v40 = *(v30 + 8);
    v40(v32, v29);
    sub_24E7896B8(v35, v29, v39);
    v115 = v91;
    v116 = v90;
    v41 = v89;
    v117 = v89;
    OpaqueTypeConformance2 = v88;
    v42 = swift_getOpaqueTypeConformance2();
    v43 = swift_getWitnessTable();
    v95 = v41;
    v96 = v43;
    v44 = swift_getWitnessTable();
    v93 = v42;
    v94 = v44;
    v92 = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_24ECCCBA0(v32, v29);
    v40(v32, v29);
    v40(v35, v29);
  }

  else
  {
    v45 = v66;
    sub_24E8D877C(v38, v66);
    v115 = v91;
    v116 = v90;
    v46 = v89;
    v117 = v89;
    OpaqueTypeConformance2 = v88;
    v47 = swift_getOpaqueTypeConformance2();
    v48 = swift_getWitnessTable();
    v113 = v46;
    v114 = v48;
    v49 = swift_getWitnessTable();
    v111 = v47;
    v112 = v49;
    v110 = swift_getWitnessTable();
    v50 = v87;
    v51 = swift_getWitnessTable();
    v52 = v65;
    sub_24E7896B8(v45, v50, v51);
    v53 = *(v67 + 8);
    v53(v45, v50);
    sub_24E7896B8(v52, v50, v51);
    v108 = swift_getWitnessTable();
    v109 = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    sub_24ECCCC98(v45, v29, v50);
    v53(v45, v50);
    v53(v52, v50);
  }

  v106 = swift_getWitnessTable();
  v107 = MEMORY[0x277CDF918];
  v54 = swift_getWitnessTable();
  v115 = v91;
  v116 = v90;
  v55 = v89;
  v117 = v89;
  OpaqueTypeConformance2 = v88;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = swift_getWitnessTable();
  v104 = v55;
  v105 = v57;
  v58 = swift_getWitnessTable();
  v102 = v56;
  v103 = v58;
  v101 = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v99 = v54;
  v100 = v59;
  v60 = v71;
  v61 = swift_getWitnessTable();
  v62 = v81;
  sub_24E7896B8(v81, v60, v61);
  return (*(v70 + 8))(v62, v60);
}

uint64_t sub_24E8D8128@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v33 = a1[3];
  sub_24F924038();
  v32 = a1[5];
  sub_24F924E38();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  v29 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  WitnessTable = sub_24F927108();
  v26 = a1;
  v30 = a1[4];
  v31 = a1[8];
  sub_24F923428();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220EE8);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220EF0);
  sub_24E8DCE18();
  v4 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F20);
  sub_24F924038();
  sub_24F924E38();
  v5 = sub_24F926DC8();
  v44[2] = OpaqueTypeConformance2;
  v44[3] = v4;
  v6 = swift_getOpaqueTypeConformance2();
  v44[12] = OpaqueTypeConformance2;
  v44[13] = sub_24E602068(&qword_27F220F28, &qword_27F220F20);
  v28 = MEMORY[0x277CDFAD8];
  v44[10] = v6;
  v44[11] = swift_getWitnessTable();
  v44[9] = swift_getWitnessTable();
  v44[0] = v5;
  v44[1] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_24F927018();
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_24F924038();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  v17 = v26;
  v18 = v34;
  sub_24E8D5164(v26, v44);
  *&v19 = *(v17 + 16);
  *(&v19 + 1) = v33;
  *&v20 = v30;
  *(&v20 + 1) = v32;
  v37 = v20;
  v36 = v19;
  v38 = *(v17 + 48);
  v21 = *(v17 + 72);
  v39 = v31;
  v40 = v21;
  v41 = v18;
  sub_24F9249A8();
  sub_24F927008();
  sub_24F9257F8();
  sub_24E8D5164(v17, v44);
  v22 = swift_getWitnessTable();
  sub_24F926A48();
  (*(v29 + 8))(v9, v7);
  v42 = v22;
  v43 = MEMORY[0x277CDF918];
  v23 = swift_getWitnessTable();
  sub_24E7896B8(v13, v10, v23);
  v24 = *(v11 + 8);
  v24(v13, v10);
  sub_24E7896B8(v16, v10, v23);
  return (v24)(v16, v10);
}

uint64_t sub_24E8D877C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v80 = *(a1 - 8);
  v78 = *(v80 + 64);
  MEMORY[0x28223BE20](a1);
  v74 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F30);
  *&v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F188);
  v77 = *(a1 + 16);
  *(&v92 + 1) = sub_24F924038();
  v75 = *(a1 + 40);
  v76 = *(a1 + 72);
  type metadata accessor for OnboardingButtonPlatter();
  v4 = sub_24F92C4A8();
  *&v93 = v4;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  swift_getWitnessTable();
  v5 = sub_24F923428();
  WitnessTable = swift_getWitnessTable();
  v91 = v5;
  *&v92 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v91 = v5;
  *&v92 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v7 = sub_24F924278();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720);
  *&v57 = v7;
  v8 = sub_24F924038();
  v99 = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  v91 = v4;
  *&v92 = v9;
  v10 = swift_getOpaqueTypeMetadata2();
  v11 = swift_getWitnessTable();
  *&v54 = v11;
  v12 = sub_24E602068(&qword_27F21A718, &qword_27F21A720);
  v97 = v11;
  v98 = v12;
  v13 = swift_getWitnessTable();
  v91 = v4;
  *&v92 = v9;
  v14 = swift_getOpaqueTypeConformance2();
  v91 = v8;
  *&v92 = v10;
  v68 = v10;
  v66 = v13;
  *(&v92 + 1) = v13;
  *&v93 = v14;
  v64 = v14;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216520);
  v70 = v4;
  sub_24F924038();
  v15 = sub_24E602068(&qword_27F216518, &qword_27F216520);
  v67 = v9;
  v95 = v9;
  v96 = v15;
  swift_getWitnessTable();
  v16 = sub_24F924B98();
  v69 = v8;
  v58 = v16;
  v59 = sub_24F924038();
  v60 = sub_24F924E38();
  v65 = sub_24F926DC8();
  MEMORY[0x28223BE20](v65);
  v62 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v63 = v53 - v20;
  v21 = v80;
  v22 = v80 + 16;
  v23 = *(v80 + 16);
  v61 = v24;
  v25 = v74;
  v23(v74, v79, a1, v19);
  v26 = (*(v21 + 80) + 80) & ~*(v21 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v77;
  v72 = *(a1 + 24);
  *(v27 + 24) = v72;
  *(v27 + 40) = v75;
  v73 = *(a1 + 48);
  *(v27 + 48) = v73;
  v28 = *(a1 + 64);
  v29 = v76;
  *(v27 + 64) = v28;
  *(v27 + 72) = v29;
  v30 = *(v21 + 32);
  v30(v27 + v26, v25, a1);
  v31 = sub_24F924268();
  v53[1] = v32;
  v87 = v31;
  *&v88 = v32;
  OpaqueTypeMetadata2 = v22;
  OpaqueTypeConformance2 = v23;
  (v23)(v25, v79, a1);
  v33 = swift_allocObject();
  *(v33 + 16) = v77;
  *(v33 + 24) = v72;
  *(v33 + 40) = v75;
  *(v33 + 48) = v73;
  v34 = v76;
  *(v33 + 64) = v28;
  *(v33 + 72) = v34;
  v80 = v21 + 32;
  v30(v33 + v26, v25, a1);
  sub_24E7DDA4C();
  sub_24E8D5070(MEMORY[0x277D85048], sub_24E72DE30, 0, sub_24E8DE858, v33, v57, MEMORY[0x277D85048], v54);

  v87 = v91;
  v57 = v92;
  v88 = v92;
  v54 = v93;
  v89 = v93;
  v90 = v94;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v35 = qword_27F24E488;
  swift_getKeyPath();
  v86 = v35;
  sub_24E8E01C8(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  v36 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  v37 = v79;
  if (*(v35 + v36))
  {
    sub_24E8D5B10(a1);
  }

  v38 = v74;
  OpaqueTypeConformance2(v74, v37, a1);
  v39 = swift_allocObject();
  v40.i64[0] = v77;
  *&v41 = vdupq_laneq_s64(v72, 1).u64[0];
  *(&v41 + 1) = v75;
  *(v39 + 16) = vzip1q_s64(v40, v72);
  *(v39 + 32) = v41;
  v40.i64[0] = v28;
  v40.i64[1] = v76;
  *(v39 + 64) = v40;
  *(v39 + 48) = v73;
  v30(v39 + v26, v38, a1);
  v42 = v62;
  v43 = v69;
  v44 = v66;
  sub_24E8DB14C();

  v91 = v43;
  *&v92 = v68;
  *(&v92 + 1) = v44;
  *&v93 = v64;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = swift_getWitnessTable();
  v84 = v44;
  v85 = v46;
  v47 = swift_getWitnessTable();
  v82 = v45;
  v83 = v47;
  v81 = swift_getWitnessTable();
  v48 = v65;
  v49 = swift_getWitnessTable();
  v50 = v63;
  sub_24E7896B8(v42, v48, v49);
  v51 = *(v61 + 8);
  v51(v42, v48);
  sub_24E7896B8(v50, v48, v49);
  return (v51)(v50, v48);
}

uint64_t sub_24E8D92C8(uint64_t a1, uint64_t a2)
{
  v11 = a2;
  v2 = sub_24F923488();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220ED8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  sub_24F923478();
  sub_24F927268();
  (*(v3 + 8))(v5, v2);
  sub_24F9235A8();
  sub_24E602068(&qword_27F220EE0, &qword_27F220ED8);
  sub_24F926658();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24E8D94D0()
{
  type metadata accessor for GSKOnboardingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  return sub_24F926F48();
}

uint64_t sub_24E8D955C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = a7;
  v27 = a8;
  v15 = sub_24F923E98();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = v26;
  v34 = v27;
  v35 = a9;
  v36 = a10;
  v19 = type metadata accessor for GSKOnboardingView();
  sub_24F769788(v18);
  v20 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v16 + 8))(v18, v15);
  v21 = (a2 + *(v19 + 148));
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v29) = v22;
  v30 = v23;
  v28 = v20 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  return sub_24F926F48();
}

uint64_t sub_24E8D96D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a7;
  v27 = a8;
  v15 = sub_24F923E98();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = v26;
  v35 = v27;
  v36 = a9;
  v19 = type metadata accessor for GSKOnboardingView();
  sub_24F769788(v18);
  v20 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v16 + 8))(v18, v15);
  v21 = (a1 + *(v19 + 148));
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v29) = v22;
  v30 = v23;
  v28 = v20 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  return sub_24F926F48();
}

uint64_t sub_24E8D9848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v97 = a7;
  v117 = a6;
  v118 = a1;
  v113 = a5;
  v119 = a3;
  v115 = a2;
  v109 = a9;
  v116 = a10;
  v141 = a2;
  v142 = a3;
  v143 = a4;
  v144 = a5;
  v114 = a4;
  v145 = a6;
  v146 = a7;
  v147 = a8;
  v148 = a10;
  v91 = a8;
  v108 = type metadata accessor for GSKOnboardingView();
  v106 = *(v108 - 8);
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v108);
  v105 = &v76 - v10;
  v104 = sub_24F925558();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v100 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F923428();
  v101 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v96 = &v76 - v13;
  WitnessTable = swift_getWitnessTable();
  v141 = v12;
  v142 = WitnessTable;
  v92 = v12;
  v93 = WitnessTable;
  v15 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v103 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v95 = &v76 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220EE8);
  v141 = v12;
  v142 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220EF0);
  v98 = v20;
  v99 = sub_24E8DCE18();
  v141 = v20;
  v142 = v99;
  v21 = swift_getOpaqueTypeConformance2();
  v141 = OpaqueTypeMetadata2;
  v142 = v18;
  v143 = OpaqueTypeConformance2;
  v144 = v21;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F20);
  v90 = OpaqueTypeMetadata2;
  sub_24F924038();
  sub_24F924E38();
  v22 = sub_24F926DC8();
  v94 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v88 = OpaqueTypeConformance2;
  v89 = &v76 - v23;
  v141 = OpaqueTypeMetadata2;
  v142 = v18;
  v143 = OpaqueTypeConformance2;
  v144 = v21;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = sub_24E602068(&qword_27F220F28, &qword_27F220F20);
  v140[5] = OpaqueTypeConformance2;
  v140[6] = v25;
  v26 = swift_getWitnessTable();
  v140[3] = v24;
  v140[4] = v26;
  v140[2] = swift_getWitnessTable();
  v84 = v22;
  v83 = swift_getWitnessTable();
  v141 = v22;
  v142 = v83;
  v85 = MEMORY[0x277CDEC98];
  v27 = swift_getOpaqueTypeMetadata2();
  v86 = *(v27 - 8);
  v87 = v27;
  MEMORY[0x28223BE20](v27);
  v81 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v82 = &v76 - v30;
  v31 = v119;
  sub_24F924038();
  v32 = v113;
  sub_24F924E38();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  v80 = swift_getWitnessTable();
  v110 = sub_24F927108();
  v112 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v34 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v34;
  MEMORY[0x28223BE20](v35);
  v111 = &v76 - v36;
  v37 = v115;
  v129 = v115;
  v130 = v31;
  v131 = v114;
  v132 = v32;
  v38 = v32;
  v39 = v116;
  v40 = v117;
  v41 = v97;
  v133 = v117;
  v134 = v97;
  v42 = v91;
  v135 = v91;
  v136 = v116;
  v137 = v118;
  sub_24F924C88();
  sub_24F9270F8();
  v43 = v110;
  v78 = swift_getWitnessTable();
  sub_24E7896B8(v34, v43, v78);
  v44 = *(v112 + 8);
  v79 = v112 + 8;
  v80 = v44;
  v44(v34, v43);
  v45 = v118;
  v120 = v37;
  v121 = v119;
  v46 = v114;
  v122 = v114;
  v123 = v38;
  v124 = v40;
  v125 = v41;
  v126 = v42;
  v127 = v39;
  v128 = v118;
  sub_24F9257D8();
  v47 = v96;
  v48 = v46;
  sub_24F923438();
  v49 = v100;
  sub_24F925548();
  v50 = v95;
  v51 = v92;
  sub_24F926788();
  (*(v102 + 8))(v49, v104);
  (*(v101 + 8))(v47, v51);
  v53 = v105;
  v52 = v106;
  v54 = v108;
  (*(v106 + 16))(v105, v45, v108);
  v55 = v52;
  v56 = (*(v52 + 80) + 80) & ~*(v52 + 80);
  v57 = swift_allocObject();
  v58 = v119;
  *(v57 + 2) = v115;
  *(v57 + 3) = v58;
  v59 = v113;
  *(v57 + 4) = v48;
  *(v57 + 5) = v59;
  v60 = v116;
  *(v57 + 6) = v117;
  *(v57 + 7) = v41;
  *(v57 + 8) = v42;
  *(v57 + 9) = v60;
  (*(v55 + 32))(&v57[v56], v53, v54);
  v62 = v89;
  v61 = v90;
  sub_24E8DB14C();

  (*(v103 + 8))(v50, v61);
  v63 = sub_24F925818();
  v64 = v81;
  v66 = v83;
  v65 = v84;
  MEMORY[0x25304C150](1, v63, v84, v83);
  (*(v94 + 8))(v62, v65);
  v141 = v65;
  v142 = v66;
  v67 = swift_getOpaqueTypeConformance2();
  v68 = v82;
  v69 = v87;
  sub_24E7896B8(v64, v87, v67);
  v70 = v86;
  v71 = *(v86 + 8);
  v71(v64, v69);
  v72 = v77;
  v73 = v110;
  (*(v112 + 16))(v77, v111, v110);
  v141 = v72;
  (*(v70 + 16))(v64, v68, v69);
  v142 = v64;
  v140[0] = v73;
  v140[1] = v69;
  v138 = v78;
  v139 = v67;
  sub_24F57BA64(&v141, 2uLL, v140);
  v71(v68, v69);
  v74 = v80;
  v80(v111, v73);
  v71(v64, v69);
  return v74(v72, v73);
}

uint64_t sub_24E8DA2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>, uint64_t a6)
{
  v60 = a5;
  v58 = a6;
  v51 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v49 - v11;
  v55 = v12;
  v56 = sub_24F924E38();
  v59 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v57 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v61 = &v49 - v15;
  v16 = *(a2 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F924038();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v49 - v26;
  (*(a1 + 176))(v25);
  sub_24F927618();
  sub_24F926948();
  (*(v16 + 8))(v19, a2);
  v71[2] = a4;
  v71[3] = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v54 = v27;
  v52 = WitnessTable;
  sub_24E7896B8(v23, v20, WitnessTable);
  v53 = *(v21 + 8);
  v29 = v53(v23, v20);
  v30 = *(a1 + 72);
  if (v30)
  {
    v31 = *(a1 + 64);
    sub_24E60169C(a1 + 88, v62, qword_27F21B590);
    v32 = *(a1 + 128);
    v33 = *(a1 + 80);
    v34 = *(a1 + 129);
    v62[5] = v31;
    v62[6] = v30;
    v63 = v32;
    v64 = v33;
    v65 = 0;
    v66 = v34;
    sub_24E8DCFBC();

    v35 = v58;
    sub_24ECCCBA0(v62, &type metadata for OnboardingButton);
    sub_24E8DE730(v62);
  }

  else
  {
    v36 = v50;
    (*(a1 + 208))(v29);
    v37 = v49;
    v38 = v55;
    v35 = v58;
    sub_24E7896B8(v36, v55, v58);
    v39 = *(v51 + 8);
    v39(v36, v38);
    sub_24E7896B8(v37, v38, v35);
    sub_24E8DCFBC();
    sub_24ECCCC98(v36, &type metadata for OnboardingButton, v38);
    v39(v36, v38);
    v39(v37, v38);
  }

  v40 = v54;
  (*(v21 + 16))(v23, v54, v20);
  v62[0] = v23;
  v41 = v59;
  v42 = v57;
  v43 = v61;
  v44 = v56;
  (*(v59 + 16))(v57, v61, v56);
  v62[1] = v42;
  v71[0] = v20;
  v71[1] = v44;
  v69 = v52;
  v67 = sub_24E8DCFBC();
  v68 = v35;
  v70 = swift_getWitnessTable();
  sub_24F57BA64(v62, 2uLL, v71);
  v45 = *(v41 + 8);
  v45(v43, v44);
  v46 = v40;
  v47 = v53;
  v53(v46, v20);
  v45(v42, v44);
  return v47(v23, v20);
}

uint64_t sub_24E8DA90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a4 - 8);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v19 - v15;
  (*(v14 + 192))();
  sub_24E7896B8(v13, a4, a8);
  v17 = *(v10 + 8);
  v17(v13, a4);
  sub_24E7896B8(v16, a4, a8);
  return (v17)(v16, a4);
}

uint64_t sub_24E8DAA40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v61 = a2;
  v74[0] = a2;
  v74[1] = a3;
  v62 = a3;
  v64 = a4;
  v74[2] = a4;
  v74[3] = a5;
  v65 = a5;
  v66 = a6;
  v74[4] = a6;
  v75 = a7;
  v67 = a7;
  v76 = a8;
  v77 = a10;
  v63 = a10;
  v13 = type metadata accessor for GSKOnboardingView();
  v14 = *(v13 - 8);
  v59 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v60 = &v53 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F00);
  v68 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v69 = &v53 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F40);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v53 - v21;
  v23 = a1[1];
  v24 = 1;
  if (v23)
  {
    v53 = v14;
    v54 = v22;
    v55 = a8;
    v56 = v18;
    v57 = v16;
    v58 = a9;
    v25 = *a1;
    sub_24E60169C((a1 + 3), v74, qword_27F21B590);
    v26 = *(a1 + 128);
    v27 = a1[2];
    v28 = *(a1 + 129);
    v75 = v25;
    v76 = v23;
    LOBYTE(v77) = v26;
    v78 = v27;
    v79 = 1;
    v80 = v28;
    v81 = v28;

    v29 = sub_24F925818();
    sub_24E8D5164(v13, &v71);
    sub_24F923318();
    v82 = v29;
    v83 = v30;
    v84 = v31;
    v85 = v32;
    v86 = v33;
    v87 = 0;
    v34 = a1 + *(v13 + 172);
    v35 = *v34;
    v36 = *(v34 + 1);
    LOBYTE(v34) = v34[16];
    LOBYTE(v71) = v35;
    v72 = v36;
    v73 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670);
    sub_24F923348();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F08);
    v38 = sub_24E8DCF30();
    sub_24F9269C8();

    sub_24E601704(v74, &qword_27F220F08);
    if (qword_27F211808 != -1)
    {
      swift_once();
    }

    v39 = qword_27F24E488;
    swift_getKeyPath();
    v74[0] = v39;
    sub_24E8E01C8(&qword_27F220F48, type metadata accessor for GameControllerObserver);
    sub_24F91FD88();

    v40 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
    swift_beginAccess();
    v70 = *(v39 + v40) != 0;
    v41 = v53;
    v42 = v60;
    (*(v53 + 16))(v60, a1, v13);
    v43 = (*(v41 + 80) + 80) & ~*(v41 + 80);
    v44 = swift_allocObject();
    v45 = v62;
    *(v44 + 2) = v61;
    *(v44 + 3) = v45;
    v46 = v65;
    *(v44 + 4) = v64;
    *(v44 + 5) = v46;
    v47 = v67;
    *(v44 + 6) = v66;
    *(v44 + 7) = v47;
    v48 = v63;
    *(v44 + 8) = v55;
    *(v44 + 9) = v48;
    (*(v41 + 32))(&v44[v43], v42, v13);
    v71 = v37;
    v72 = v38;
    swift_getOpaqueTypeConformance2();
    v49 = v54;
    v50 = v57;
    v51 = v69;
    sub_24F926AB8();

    (*(v68 + 8))(v51, v50);
    a9 = v58;
    v18 = v56;
    (*(v19 + 32))(v58, v49, v56);
    v24 = 0;
  }

  return (*(v19 + 56))(a9, v24, 1, v18, v20);
}

void sub_24E8DB0A4(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    type metadata accessor for GSKOnboardingView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670);
    sub_24F923338();
  }
}

uint64_t sub_24E8DB14C()
{
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216520);
  sub_24F924038();
  sub_24E602068(&qword_27F216518, &qword_27F216520);
  swift_getWitnessTable();
  sub_24F924B98();
  sub_24F924038();
  sub_24F924E38();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_24F926DB8();
}

uint64_t sub_24E8DB388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v40 = a8;
  v39 = a7;
  v30 = a6;
  v35 = a5;
  v34 = a4;
  v32 = a3;
  v37 = a2;
  v38 = a1;
  v43 = a9;
  v33 = a10;
  v31 = a11;
  v11 = sub_24F925558();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x28223BE20](v11);
  v36 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F30);
  v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F188);
  v56 = sub_24F924038();
  type metadata accessor for OnboardingButtonPlatter();
  v57 = sub_24F92C4A8();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  v29[1] = swift_getWitnessTable();
  v13 = sub_24F923428();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v29 - v15;
  WitnessTable = swift_getWitnessTable();
  v54 = v13;
  v55 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v19 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v29 - v23;
  v44 = v32;
  v45 = v34;
  v46 = v35;
  v47 = v30;
  v48 = v39;
  v49 = v40;
  v50 = v33;
  v51 = v31;
  v52 = v37;
  v53 = v38;
  sub_24F9257D8();
  sub_24F923438();
  v25 = v36;
  sub_24F925548();
  sub_24F926788();
  (*(v41 + 8))(v25, v42);
  (*(v14 + 8))(v16, v13);
  v54 = v13;
  v55 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24E7896B8(v21, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v27 = *(v19 + 8);
  v27(v21, OpaqueTypeMetadata2);
  sub_24E7896B8(v24, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v27)(v24, OpaqueTypeMetadata2);
}

uint64_t sub_24E8DB838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v30 = a8;
  v28 = a7;
  v26 = a5;
  v29 = a2;
  v27 = a1;
  v31 = a9;
  v25 = a10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F30);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F188);
  v44 = sub_24F924038();
  type metadata accessor for OnboardingButtonPlatter();
  v45 = sub_24F92C4A8();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  v14 = sub_24F927108();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - v19;
  v32 = a3;
  v33 = a4;
  v34 = v26;
  v35 = a6;
  v36 = v28;
  v37 = v30;
  v38 = v25;
  v39 = a11;
  v40 = v27;
  v41 = v29;
  sub_24F924C88();
  sub_24F9270F8();
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v17, v14, WitnessTable);
  v22 = *(v15 + 8);
  v22(v17, v14);
  sub_24E7896B8(v20, v14, WitnessTable);
  return (v22)(v20, v14);
}

uint64_t sub_24E8DBAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v100 = a5;
  v101 = a8;
  v115 = a6;
  v116 = a7;
  v99 = a4;
  WitnessTable = a2;
  v113 = a9;
  v114 = a11;
  v98 = a10;
  v13 = type metadata accessor for OnboardingButtonPlatter();
  v108 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v96 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v95 = &v94 - v16;
  v121 = v17;
  v18 = sub_24F92C4A8();
  v111 = *(v18 - 8);
  v112 = v18;
  MEMORY[0x28223BE20](v18);
  v122 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v110 = &v94 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v94 - v23;
  v104 = *(a3 - 1);
  MEMORY[0x28223BE20](v25);
  v103 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_24F924038();
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v109 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v102 = &v94 - v29;
  MEMORY[0x28223BE20](v30);
  v119 = &v94 - v31;
  v97 = type metadata accessor for DefaultPageHeaderView();
  v32 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v34 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v94 - v36;
  v38 = type metadata accessor for HeaderPresentation(0);
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v94 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F30);
  MEMORY[0x28223BE20](v107);
  v117 = &v94 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v123 = &v94 - v44;
  v106 = a3;
  v139 = a3;
  v140 = v99;
  v141 = v100;
  v142 = v115;
  v143 = v116;
  v144 = v101;
  v145 = v98;
  v146 = v114;
  v45 = type metadata accessor for GSKOnboardingView();
  sub_24E60169C(a1 + v45[34], v37, qword_27F220E38);
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    sub_24E601704(v37, qword_27F220E38);
  }

  else
  {
    sub_24E8E026C(v37, v41, type metadata accessor for HeaderPresentation);
    v46 = *(a1 + v45[35]);
    if (v46 != 7)
    {
      sub_24E8E026C(v41, v34, type metadata accessor for HeaderPresentation);
      (*(v39 + 56))(v34, 0, 1, v38);
      v49 = *(a1 + v45[36]);
      v50 = v97;
      v34[*(v97 + 20)] = v46;
      v34[*(v50 + 24)] = v49;
      sub_24E8E026C(v34, v123, type metadata accessor for DefaultPageHeaderView);
      v48 = v50;
      v47 = 0;
      goto LABEL_7;
    }

    sub_24E8E0210(v41);
  }

  v47 = 1;
  v48 = v97;
LABEL_7:
  (*(v32 + 56))(v123, v47, 1, v48);
  sub_24E8D5164(v45, &v139);
  sub_24F927618();
  sub_24F9238C8();
  v98 = v153;
  v99 = v155;
  v100 = v158;
  v101 = v157;
  v152 = 0;
  v150 = v154;
  v148 = v156;
  v51 = *(a1 + 160);
  v52 = sub_24F924098();
  v53 = *(v52 - 8);
  (*(v53 + 16))(v24, WitnessTable, v52);
  (*(v53 + 56))(v24, 0, 1, v52);
  v54 = v103;
  v51(v24);
  sub_24E601704(v24, &qword_27F220F50);
  sub_24F9257F8();
  sub_24E8D5164(v45, &v139);
  v55 = (a1 + v45[39]);
  v56 = *v55;
  v57 = v55[1];
  v124 = *v55;
  v125 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  sub_24F926F38();
  v58 = v102;
  v59 = v106;
  v60 = v116;
  sub_24F926A48();
  (*(v104 + 8))(v54, v59);
  v137 = v60;
  v138 = MEMORY[0x277CDF918];
  v61 = v120;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v58, v61, WitnessTable);
  v62 = *(v118 + 8);
  v116 = v118 + 8;
  v106 = v62;
  v62(v58, v61);
  v63 = (a1 + v45[37]);
  v64 = *v63;
  v65 = *(v63 + 1);
  LOBYTE(v139) = v64;
  v140 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  if (v124 == 1 && (v66 = *(a1 + 8)) != 0)
  {
    v104 = *a1;
    v67 = *(a1 + 16);
    sub_24E60169C(a1 + 24, &v139, qword_27F21B590);
    v68 = *(a1 + 72);
    v103 = *(a1 + 64);
    v69 = *(a1 + 80);
    sub_24E60169C(a1 + 88, &v124, qword_27F21B590);
    v70 = *(a1 + 128);
    v133 = v56;
    v134 = v57;

    sub_24F926F38();
    v71 = *&v129;
    v72 = *(a1 + 129);
    v73 = *(a1 + 208);

    v75 = v96;
    sub_24F881134(v104, v66, v67, &v139, v103, v68, v69, &v124, v96, v71, v70, v72, v73, v74);
    v76 = v121;
    v77 = swift_getWitnessTable();
    v78 = v95;
    sub_24E7896B8(v75, v76, v77);
    v79 = v108;
    v80 = *(v108 + 8);
    v80(v75, v76);
    sub_24E7896B8(v78, v76, v77);
    v80(v78, v76);
    v81 = v122;
    (*(v79 + 32))(v122, v75, v76);
    (*(v79 + 56))(v81, 0, 1, v76);
  }

  else
  {
    v81 = v122;
    (*(v108 + 56))(v122, 1, 1, v121);
    swift_getWitnessTable();
  }

  v82 = v110;
  v83 = v111;
  v84 = *(v111 + 16);
  v85 = v112;
  v84(v110, v81, v112);
  v115 = *(v83 + 8);
  v115(v81, v85);
  v86 = v81;
  v87 = v117;
  sub_24E60169C(v123, v117, &qword_27F220F30);
  v139 = 0;
  LOBYTE(v140) = v152;
  *(&v140 + 1) = *v151;
  HIDWORD(v140) = *&v151[3];
  v141 = v98;
  LOBYTE(v142) = v150;
  *(&v142 + 1) = *v149;
  HIDWORD(v142) = *&v149[3];
  v143 = v99;
  LOBYTE(v144) = v148;
  *(&v144 + 1) = *v147;
  HIDWORD(v144) = *&v147[3];
  v145 = v101;
  v146 = v100;
  v124 = v87;
  v125 = &v139;
  v88 = v119;
  v89 = v109;
  v90 = v120;
  (*(v118 + 16))(v109, v119, v120);
  v126 = v89;
  v84(v86, v82, v85);
  v127 = v86;
  v133 = v107;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F188);
  v135 = v90;
  v136 = v85;
  v129 = sub_24E8E0114();
  v130 = sub_24E8533A4();
  v131 = WitnessTable;
  v128 = swift_getWitnessTable();
  v132 = swift_getWitnessTable();
  sub_24F57BA64(&v124, 4uLL, &v133);
  v91 = v115;
  v115(v82, v85);
  v92 = v106;
  v106(v88, v90);
  sub_24E601704(v123, &qword_27F220F30);
  v91(v122, v85);
  v92(v89, v90);
  return sub_24E601704(v117, &qword_27F220F30);
}

uint64_t sub_24E8DC830()
{
  type metadata accessor for GSKOnboardingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  return sub_24F926F48();
}

uint64_t sub_24E8DC8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v56 = a8;
  v55 = a7;
  v60 = a9;
  v16 = type metadata accessor for OnboardingButtonPlatter();
  v58 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v54 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v53 = &v49 - v19;
  v20 = sub_24F92C4A8();
  v57 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v59 = &v49 - v24;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  v70 = a6;
  v71 = v55;
  v72 = v56;
  v73 = a10;
  v56 = a10;
  v25 = type metadata accessor for GSKOnboardingView();
  v26 = (a1 + *(v25 + 148));
  v27 = *v26;
  v28 = *(v26 + 1);
  LOBYTE(v66) = v27;
  v67 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  if ((v64[0] & 1) != 0 || (v29 = *(a1 + 8)) == 0)
  {
    (*(v58 + 56))(v22, 1, 1, v16);
    swift_getWitnessTable();
  }

  else
  {
    v55 = *a1;
    v30 = *(a1 + 16);
    sub_24E60169C(a1 + 24, &v66, qword_27F21B590);
    v31 = *(a1 + 72);
    v52 = *(a1 + 64);
    v50 = *(a1 + 80);
    sub_24E60169C(a1 + 88, v64, qword_27F21B590);
    v51 = *(a1 + 128);
    v32 = (a1 + *(v25 + 156));
    v33 = *v32;
    v34 = v32[1];
    v62 = v33;
    v63 = v34;

    v35 = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
    sub_24F926F38();
    v36 = v61;
    LOBYTE(v30) = *(a1 + 129);
    v37 = *(a1 + 208);

    v39 = v54;
    sub_24F881134(v55, v29, v35, &v66, v52, v31, v50, v64, v54, v36, v51, v30, v37, v38);
    WitnessTable = swift_getWitnessTable();
    v41 = v53;
    sub_24E7896B8(v39, v16, WitnessTable);
    v42 = v58;
    v43 = *(v58 + 8);
    v43(v39, v16);
    sub_24E7896B8(v41, v16, WitnessTable);
    v43(v41, v16);
    (*(v42 + 32))(v22, v39, v16);
    (*(v42 + 56))(v22, 0, 1, v16);
  }

  v44 = v57;
  v45 = v59;
  (*(v57 + 16))(v59, v22, v20);
  v46 = *(v44 + 8);
  v46(v22, v20);
  v65 = swift_getWitnessTable();
  v47 = swift_getWitnessTable();
  sub_24E7896B8(v45, v20, v47);
  return (v46)(v45, v20);
}

unint64_t sub_24E8DCE18()
{
  result = qword_27F220EF8;
  if (!qword_27F220EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220EF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F08);
    sub_24E8DCF30();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220EF8);
  }

  return result;
}

unint64_t sub_24E8DCF30()
{
  result = qword_27F220F10;
  if (!qword_27F220F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F08);
    sub_24E8DCFBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220F10);
  }

  return result;
}

unint64_t sub_24E8DCFBC()
{
  result = qword_27F220F18;
  if (!qword_27F220F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220F18);
  }

  return result;
}

unint64_t sub_24E8DD010()
{
  result = qword_27F220F38;
  if (!qword_27F220F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215598);
    sub_24E8E01C8(&qword_27F215650, MEMORY[0x277CE0570]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220F38);
  }

  return result;
}

uint64_t sub_24E8DD110(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 5);
  v8 = *(v2 + 6);
  v9 = *(v2 + 7);
  v11 = *(v2 + 8);
  v10 = *(v2 + 9);
  v12 = *(type metadata accessor for GSKOnboardingView() - 8);
  return a2(a1, &v2[(*(v12 + 80) + 80) & ~*(v12 + 80)], v4, v5, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_24E8DD1EC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = *(type metadata accessor for GSKOnboardingView() - 8);
  return sub_24E8D96D0(v0 + ((*(v9 + 80) + 80) & ~*(v9 + 80)), v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_24E8DD354@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v56 = a4;
  v55 = a3;
  v58 = a2;
  LODWORD(v57) = a1;
  v61 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216520);
  v13 = sub_24F924038();
  v83 = a8;
  v84 = sub_24E602068(&qword_27F216518, &qword_27F216520);
  v51 = v13;
  WitnessTable = swift_getWitnessTable();
  v64 = sub_24F924B98();
  v14 = sub_24F924038();
  v53 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v52 = &v47 - v18;
  v79 = a6;
  v80 = a8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = a6;
  v80 = a8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v79 = a5;
  v80 = OpaqueTypeMetadata2;
  v63 = OpaqueTypeMetadata2;
  v81 = a7;
  v82 = OpaqueTypeConformance2;
  v62 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeMetadata2();
  v50 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v48 = &v47 - v25;
  v60 = sub_24F924E38();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v27 = &v47 - v26;
  v54 = &v47;
  v28 = a5;
  v65 = a5;
  v66 = a6;
  v29 = a7;
  v67 = a7;
  v68 = a8;
  v69 = v55;
  v70 = v56;
  sub_24F924C88();
  if (v57)
  {
    v30 = swift_checkMetadataState();
    v57 = v27;
    v31 = v62;
    v32 = v28;
    sub_24F926218();
    v79 = v28;
    v80 = v30;
    v81 = a7;
    v82 = v31;
    v27 = v57;
    v33 = swift_getOpaqueTypeConformance2();
    v34 = v48;
    sub_24E7896B8(v23, v21, v33);
    v35 = *(v50 + 8);
    v35(v23, v21);
    sub_24E7896B8(v34, v21, v33);
    v36 = swift_getWitnessTable();
    v71 = v29;
    v72 = v36;
    swift_getWitnessTable();
    sub_24ECCCBA0(v23, v21);
    v35(v23, v21);
    v35(v34, v21);
  }

  else
  {
    v32 = v28;
    sub_24F926308();
    v37 = swift_getWitnessTable();
    v77 = a7;
    v78 = v37;
    v38 = swift_getWitnessTable();
    v39 = v52;
    sub_24E7896B8(v16, v14, v38);
    v40 = *(v53 + 8);
    v40(v16, v14);
    sub_24E7896B8(v39, v14, v38);
    v79 = v32;
    v80 = v63;
    v81 = v29;
    v82 = v62;
    swift_getOpaqueTypeConformance2();
    sub_24ECCCC98(v16, v21, v14);
    v40(v16, v14);
    v40(v39, v14);
  }

  v79 = v32;
  v80 = v63;
  v81 = v29;
  v82 = v62;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = swift_getWitnessTable();
  v75 = v29;
  v76 = v42;
  v43 = swift_getWitnessTable();
  v73 = v41;
  v74 = v43;
  v44 = v60;
  v45 = swift_getWitnessTable();
  sub_24E7896B8(v27, v44, v45);
  return (*(v59 + 8))(v27, v44);
}

uint64_t sub_24E8DDB04@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v25 = a1;
  v27 = a4;
  v26 = sub_24F924C18();
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2;
  v29 = a3;
  v23[1] = MEMORY[0x277CDEA38];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v23 - v18;
  v25(v17);
  sub_24F924C08();
  sub_24F9265B8();
  (*(v24 + 8))(v7, v26);
  (*(v8 + 8))(v11, a2);
  v28 = a2;
  v29 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24E7896B8(v15, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v21 = *(v13 + 8);
  v21(v15, OpaqueTypeMetadata2);
  sub_24E7896B8(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v21)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_24E8DDDCC@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v25 = a3;
  v26 = a4;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216520);
  v9 = sub_24F924038();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  a1(v14);
  v17 = [objc_opt_self() systemBackgroundColor];
  v29 = sub_24F926BF8();
  v18 = sub_24F925828();
  sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v18)
  {
    sub_24F925848();
  }

  v19 = v25;
  sub_24F926098();

  (*(v6 + 8))(v8, a2);
  v20 = sub_24E602068(&qword_27F216518, &qword_27F216520);
  v27 = v19;
  v28 = v20;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v12, v9, WitnessTable);
  v22 = *(v10 + 8);
  v22(v12, v9);
  sub_24E7896B8(v16, v9, WitnessTable);
  return (v22)(v16, v9);
}

uint64_t sub_24E8DE0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xD000000000000012;
  v11[1] = a1;
  v11[2] = a2;
  v11[3] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F78);
  MEMORY[0x25304CAF0](v11, v4);
  if (!v11[0])
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v10 != 2 || v9)
  {
    sub_24E8E0E18(v9, v10);
LABEL_7:
    v5 = "SignIn.Error.Offline.Message";
    goto LABEL_8;
  }

  v5 = "SignIn.Error.Title";
  v3 = 0xD00000000000001ALL;
LABEL_8:
  v6._object = (v5 | 0x8000000000000000);
  v6._countAndFlagsBits = v3;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  return localizedString(_:comment:)(v6, v7)._countAndFlagsBits;
}

uint64_t sub_24E8DE1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xD00000000000001ALL;
  v11[1] = a1;
  v11[2] = a2;
  v11[3] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F78);
  MEMORY[0x25304CAF0](v11, v4);
  if (!v11[0])
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v10 != 2 || v9)
  {
    sub_24E8E0E18(v9, v10);
LABEL_7:
    v5 = "-scoreboard_shelf";
    goto LABEL_8;
  }

  v5 = "Alert.GenericError.Message";
  v3 = 0xD00000000000001CLL;
LABEL_8:
  v6._object = (v5 | 0x8000000000000000);
  v6._countAndFlagsBits = v3;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  return localizedString(_:comment:)(v6, v7)._countAndFlagsBits;
}

uint64_t sub_24E8DE2DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_24E8DE0F4(a2, a3, a4);
  sub_24F92B7F8();

  v7 = a4;
  v8 = sub_24F92B7E8();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;

  v11 = a4;
  v12 = sub_24F92B7E8();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v10;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;
  sub_24F9271A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F68);
  sub_24E602068(&qword_27F220F70, &qword_27F220F68);
  sub_24E600AEC();
  sub_24F926908();
}

void sub_24E8DE520(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, char *a4@<X8>)
{
  v9[1] = a1;
  v9[2] = a2;
  v9[3] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F78);
  MEMORY[0x25304CAF0](v9, v5);
  if (v9[0] && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F80), swift_dynamicCast()) && (v8 != 2 || v7 != 2))
  {
    sub_24E8E0E18(v7, v8);
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *a4 = v6;
}

uint64_t sub_24E8DE5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24E8DE1E8(a1, a2, a3);
  sub_24E600AEC();
  result = sub_24F925E18();
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v8;
  return result;
}

uint64_t sub_24E8DE784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v12 = *(type metadata accessor for GSKOnboardingView() - 8);
  return sub_24E8DB388(a1, v2 + ((*(v12 + 80) + 80) & ~*(v12 + 80)), v4, v5, v6, v7, v8, v9, a2, v11, v10);
}

uint64_t objectdestroyTm_16()
{
  v1 = type metadata accessor for GSKOnboardingView();
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 80) & ~v2);

  if (*(v3 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 24);
  }

  if (*(v3 + 112))
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 88);
  }

  v4 = v3 + v1[34];
  v5 = type metadata accessor for HeaderPresentation(0);
  if (!(*(*(v5 - 1) + 48))(v4, 1, v5))
  {
    v6 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
    v7 = (*(v6 - 1) + 48);
    v88 = *v7;
    if ((*v7)(v4, 1, v6))
    {
      goto LABEL_19;
    }

    v8 = v4 + v6[5];
    v9 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v9 - 8) + 48))(v8, 1, v9))
    {
      goto LABEL_8;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v64 = sub_24F9289E8();
          (*(*(v64 - 8) + 8))(v8, v64);
          goto LABEL_8;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_8:
          v10 = v4 + v6[7];
          v11 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v13 = sub_24F928388();
              (*(*(v13 - 8) + 8))(v10, v13);
            }
          }

          v14 = v4 + v6[10];
          if (*(v14 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v14);
          }

LABEL_19:
          v15 = v4 + v5[5];
          if (v88(v15, 1, v6))
          {
            goto LABEL_36;
          }

          v16 = v15 + v6[5];
          v17 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
          if ((*(*(v17 - 8) + 48))(v16, 1, v17))
          {
            goto LABEL_21;
          }

          v20 = swift_getEnumCaseMultiPayload();
          if (v20 > 2)
          {
            if (v20 != 3)
            {
              if (v20 == 4)
              {
                v66 = sub_24F9289E8();
                (*(*(v66 - 8) + 8))(v16, v66);
                goto LABEL_21;
              }

              if (v20 != 5)
              {
LABEL_21:
                v18 = v15 + v6[7];
                v19 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
                if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
                {
                  if (swift_getEnumCaseMultiPayload() == 1)
                  {
                  }

                  else
                  {
                    v21 = sub_24F928388();
                    (*(*(v21 - 8) + 8))(v18, v21);
                  }
                }

                v22 = v15 + v6[10];
                if (*(v22 + 24))
                {
                  __swift_destroy_boxed_opaque_existential_1(v22);
                }

LABEL_36:
                v23 = v4 + v5[6];
                if (v88(v23, 1, v6))
                {
                  goto LABEL_53;
                }

                v24 = v23 + v6[5];
                v25 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
                if ((*(*(v25 - 8) + 48))(v24, 1, v25))
                {
                  goto LABEL_38;
                }

                v28 = swift_getEnumCaseMultiPayload();
                if (v28 > 2)
                {
                  if (v28 != 3)
                  {
                    if (v28 == 4)
                    {
                      v67 = sub_24F9289E8();
                      (*(*(v67 - 8) + 8))(v24, v67);
                      goto LABEL_38;
                    }

                    if (v28 != 5)
                    {
LABEL_38:
                      v26 = v23 + v6[7];
                      v27 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
                      if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
                      {
                        if (swift_getEnumCaseMultiPayload() == 1)
                        {
                        }

                        else
                        {
                          v29 = sub_24F928388();
                          (*(*(v29 - 8) + 8))(v26, v29);
                        }
                      }

                      v30 = v23 + v6[10];
                      if (*(v30 + 24))
                      {
                        __swift_destroy_boxed_opaque_existential_1(v30);
                      }

LABEL_53:
                      v31 = v4 + v5[7];
                      if (*(v31 + 56) == 1)
                      {
                      }

                      else if (!*(v31 + 56))
                      {

                        if (*(v31 + 40))
                        {
                          __swift_destroy_boxed_opaque_existential_1(v31 + 16);
                        }
                      }

                      v32 = v4 + v5[8];
                      v33 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
                      if ((*(*(v33 - 8) + 48))(v32, 1, v33))
                      {
                        goto LABEL_59;
                      }

                      v43 = swift_getEnumCaseMultiPayload();
                      if (v43 == 2)
                      {
LABEL_131:

                        goto LABEL_59;
                      }

                      if (v43 != 1)
                      {
                        if (v43)
                        {
                          goto LABEL_59;
                        }

                        v44 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
                        if ((*(*(v44 - 8) + 48))(v32, 1, v44))
                        {
                          goto LABEL_59;
                        }

                        v45 = swift_getEnumCaseMultiPayload();
                        if (v45 > 2)
                        {
                          if (v45 != 3)
                          {
                            if (v45 == 4)
                            {
                              v86 = sub_24F9289E8();
                              (*(*(v86 - 8) + 8))(v32, v86);
                              goto LABEL_59;
                            }

                            if (v45 != 5)
                            {
                              goto LABEL_59;
                            }
                          }

                          goto LABEL_131;
                        }

                        if (v45)
                        {
                          if (v45 == 1)
                          {
                            v84 = sub_24F9289E8();
                            v85 = *(v84 - 8);
                            if (!(*(v85 + 48))(v32, 1, v84))
                            {
                              (*(v85 + 8))(v32, v84);
                            }

                            if (!*(v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
                            {
                              goto LABEL_59;
                            }
                          }

                          else if (v45 != 2)
                          {
                            goto LABEL_59;
                          }

                          goto LABEL_131;
                        }

                        v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
LABEL_150:
                        v80 = v32 + v74;
                        v81 = type metadata accessor for JSColor();
                        if (!(*(*(v81 - 8) + 48))(v80, 1, v81))
                        {
                          v82 = sub_24F928388();
                          (*(*(v82 - 8) + 8))(v80, v82);
                        }

                        goto LABEL_59;
                      }

                      v46 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
                      v47 = *(*(v46 - 8) + 48);
                      if (v47(v32, 1, v46))
                      {
LABEL_81:
                        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
                        v49 = v32 + *(v48 + 48);
                        if (!v47(v49, 1, v46))
                        {
                          v50 = swift_getEnumCaseMultiPayload();
                          if (v50 <= 2)
                          {
                            switch(v50)
                            {
                              case 0:

                                v68 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
                                v69 = type metadata accessor for JSColor();
                                if (!(*(*(v69 - 8) + 48))(v68, 1, v69))
                                {
                                  v70 = sub_24F928388();
                                  (*(*(v70 - 8) + 8))(v68, v70);
                                }

                                goto LABEL_149;
                              case 1:
                                v75 = sub_24F9289E8();
                                v76 = *(v75 - 8);
                                if (!(*(v76 + 48))(v49, 1, v75))
                                {
                                  (*(v76 + 8))(v49, v75);
                                }

                                if (!*(v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
                                {
                                  goto LABEL_149;
                                }

                                break;
                              case 2:
                                break;
                              default:
                                goto LABEL_149;
                            }

LABEL_143:

                            goto LABEL_149;
                          }

                          switch(v50)
                          {
                            case 3:
                              goto LABEL_143;
                            case 4:
                              v79 = sub_24F9289E8();
                              (*(*(v79 - 8) + 8))(v49, v79);
                              break;
                            case 5:
                              goto LABEL_143;
                          }
                        }

LABEL_149:
                        v74 = *(v48 + 80);
                        goto LABEL_150;
                      }

                      v51 = swift_getEnumCaseMultiPayload();
                      if (v51 > 2)
                      {
                        if (v51 != 3)
                        {
                          if (v51 == 4)
                          {
                            v83 = sub_24F9289E8();
                            (*(*(v83 - 8) + 8))(v32, v83);
                            goto LABEL_81;
                          }

                          if (v51 != 5)
                          {
                            goto LABEL_81;
                          }
                        }
                      }

                      else
                      {
                        if (!v51)
                        {

                          v71 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
                          v72 = type metadata accessor for JSColor();
                          if (!(*(*(v72 - 8) + 48))(v71, 1, v72))
                          {
                            v73 = sub_24F928388();
                            (*(*(v73 - 8) + 8))(v71, v73);
                          }

                          goto LABEL_81;
                        }

                        if (v51 == 1)
                        {
                          v77 = sub_24F9289E8();
                          v78 = *(v77 - 8);
                          if (!(*(v78 + 48))(v32, 1, v77))
                          {
                            (*(v78 + 8))(v32, v77);
                          }

                          if (*(v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
                          {
                          }

                          goto LABEL_81;
                        }

                        if (v51 != 2)
                        {
                          goto LABEL_81;
                        }
                      }

                      goto LABEL_81;
                    }
                  }
                }

                else
                {
                  if (!v28)
                  {

                    v58 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
                    v59 = type metadata accessor for JSColor();
                    if (!(*(*(v59 - 8) + 48))(v58, 1, v59))
                    {
                      v60 = sub_24F928388();
                      (*(*(v60 - 8) + 8))(v58, v60);
                    }

                    goto LABEL_38;
                  }

                  if (v28 == 1)
                  {
                    v65 = sub_24F9289E8();
                    v89 = *(v65 - 8);
                    if (!(*(v89 + 48))(v24, 1, v65))
                    {
                      (*(v89 + 8))(v24, v65);
                    }

                    if (*(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
                    {
                    }

                    goto LABEL_38;
                  }

                  if (v28 != 2)
                  {
                    goto LABEL_38;
                  }
                }

                goto LABEL_38;
              }
            }
          }

          else
          {
            if (!v20)
            {

              v55 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
              v56 = type metadata accessor for JSColor();
              if (!(*(*(v56 - 8) + 48))(v55, 1, v56))
              {
                v57 = sub_24F928388();
                (*(*(v57 - 8) + 8))(v55, v57);
              }

              goto LABEL_21;
            }

            if (v20 == 1)
            {
              v63 = sub_24F9289E8();
              v87 = *(v63 - 8);
              if (!(*(v87 + 48))(v16, 1, v63))
              {
                (*(v87 + 8))(v16, v63);
              }

              if (*(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
              {
              }

              goto LABEL_21;
            }

            if (v20 != 2)
            {
              goto LABEL_21;
            }
          }

          goto LABEL_21;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v52 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v53 = type metadata accessor for JSColor();
        if (!(*(*(v53 - 8) + 48))(v52, 1, v53))
        {
          v54 = sub_24F928388();
          (*(*(v54 - 8) + 8))(v52, v54);
        }

        goto LABEL_8;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v61 = sub_24F9289E8();
        v62 = *(v61 - 8);
        if (!(*(v62 + 48))(v8, 1, v61))
        {
          (*(v62 + 8))(v8, v61);
        }

        if (*(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_8;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_8;
  }

LABEL_59:

  v34 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = sub_24F925218();
    v36 = *(v35 - 8);
    if (!(*(v36 + 48))(v3 + v34, 1, v35))
    {
      (*(v36 + 8))(v3 + v34, v35);
    }
  }

  else
  {
  }

  v37 = v1[41];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = sub_24F925218();
    v39 = *(v38 - 8);
    if (!(*(v39 + 48))(v3 + v37, 1, v38))
    {
      (*(v39 + 8))(v3 + v37, v38);
    }
  }

  else
  {
  }

  v40 = v1[42];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = sub_24F923E98();
    (*(*(v41 - 8) + 8))(v3 + v40, v41);
  }

  else
  {
  }

  return swift_deallocObject();
}