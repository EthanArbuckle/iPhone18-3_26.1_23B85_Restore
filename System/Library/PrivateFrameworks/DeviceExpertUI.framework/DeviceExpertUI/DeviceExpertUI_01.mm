uint64_t sub_21E3DB1AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for ItemListView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2758, &qword_21E3E3ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21E3E2C80();
    OUTLINED_FUNCTION_1(v6);
    (*(v7 + 8))(v0 + v3);
  }

  else
  {
    v8 = *v5;
  }

  sub_21E3C7B10(*(v5 + v1[5]), *(v5 + v1[5] + 8));
  v9 = *(v5 + v1[6] + 8);

  v10 = *(v5 + v1[7]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E3DB338(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v12 = *(type metadata accessor for ItemListView() - 8);
  v13 = v6 + ((*(v12 + 80) + 16) & ~*(v12 + 80));

  return a6(a1, a2, a3, a4 & 1, a5, v13);
}

unint64_t sub_21E3DB3EC()
{
  result = qword_281223100;
  if (!qword_281223100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2DA8, &qword_21E3E4E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281223100);
  }

  return result;
}

unint64_t sub_21E3DB470()
{
  result = qword_27CEC2DB8;
  if (!qword_27CEC2DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2DB0, &qword_21E3E4ED0);
    sub_21E3DB528();
    sub_21E3C4DA0(&qword_27CEC2DF8, &qword_27CEC2E00, &qword_21E3E4EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2DB8);
  }

  return result;
}

unint64_t sub_21E3DB528()
{
  result = qword_27CEC2DC0;
  if (!qword_27CEC2DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2DC8, &qword_21E3E4ED8);
    sub_21E3DB5E0();
    sub_21E3C4DA0(&qword_27CEC2DE8, &qword_27CEC2DF0, &qword_21E3E4EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2DC0);
  }

  return result;
}

unint64_t sub_21E3DB5E0()
{
  result = qword_27CEC2DD0;
  if (!qword_27CEC2DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2DD8, &qword_21E3E4EE0);
    sub_21E3DB664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2DD0);
  }

  return result;
}

unint64_t sub_21E3DB664()
{
  result = qword_2812230E8;
  if (!qword_2812230E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2DE0, &qword_21E3E4EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812230E8);
  }

  return result;
}

uint64_t sub_21E3DB6E0(uint64_t a1, uint64_t a2, char a3)
{
  sub_21E3C7F24(a1, a2, a3 & 1);
}

unint64_t sub_21E3DB71C()
{
  result = qword_281223070;
  if (!qword_281223070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281223070);
  }

  return result;
}

uint64_t sub_21E3DB770(uint64_t a1, uint64_t a2, char a3)
{
  sub_21E3DB7AC(a1, a2, a3 & 1);

  return sub_21E3E2430();
}

uint64_t sub_21E3DB7AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_21E3E2430();
  }
}

uint64_t sub_21E3DB7BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2758, &qword_21E3E3ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3DB82C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2B80, &unk_21E3E4720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3DB89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_21E3E2520();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_21E3DB944@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E3E2160();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E50, &qword_21E3E4F50);
  sub_21E3DC554();
  sub_21E3E3570();
  sub_21E3E3590();
  sub_21E3DC5B8(&qword_281223730, MEMORY[0x277CC8C20]);
  v10 = sub_21E3E34B0();
  v11 = *(v3 + 8);
  v11(v7, v2);
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v13 = sub_21E3E35A0();
    sub_21E3DC600(v14, a1);
    v13(v17, 0);
    v12 = 0;
  }

  v11(v9, v2);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E58, &qword_21E3E4FC8);
  return __swift_storeEnumTagSinglePayload(a1, v12, 1, v15);
}

uint64_t sub_21E3DBB5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E38, &qword_21E3E4F38);
  OUTLINED_FUNCTION_7(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v3);
  v80 = (&v75 - v4);
  v81 = sub_21E3E3310();
  v5 = OUTLINED_FUNCTION_0(v81);
  v77 = v6;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v76 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v75 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E40, &qword_21E3E4F40);
  OUTLINED_FUNCTION_7(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v15);
  v82 = &v75 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E48, &qword_21E3E4F48);
  OUTLINED_FUNCTION_7(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v20);
  v84 = &v75 - v21;
  v83 = sub_21E3E2630();
  v22 = OUTLINED_FUNCTION_0(v83);
  v79 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v78 = v27 - v26;
  v28 = sub_21E3E2130();
  v29 = OUTLINED_FUNCTION_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_0();
  v36 = v35 - v34;
  v37 = sub_21E3E2170();
  v38 = OUTLINED_FUNCTION_0(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_0();
  v45 = v44 - v43;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E50, &qword_21E3E4F50);
  OUTLINED_FUNCTION_0(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v49);
  sub_21E3E2650();
  sub_21E3E2150();
  (*(v40 + 8))(v45, v37);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_3();
  sub_21E3DC5B8(v50, v51);
  sub_21E3E2140();

  (*(v31 + 8))(v36, v28);
  if (sub_21E3DC32C() != 1)
  {
    v55 = OUTLINED_FUNCTION_3_3();
    v56(v55);
    return 0;
  }

  v52 = v82;
  sub_21E3DB944(v82);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E58, &qword_21E3E4FC8);
  if (__swift_getEnumTagSinglePayload(v52, 1, v53) == 1)
  {
    sub_21E3DC4F4(v52, &qword_27CEC2E40, &qword_21E3E4F40);
    v54 = v84;
    __swift_storeEnumTagSinglePayload(v84, 1, 1, v83);
LABEL_6:
    v59 = OUTLINED_FUNCTION_3_3();
    v60(v59);
    v61 = &qword_27CEC2E48;
    v62 = &qword_21E3E4F48;
    v63 = v54;
LABEL_7:
    sub_21E3DC4F4(v63, v61, v62);
    return 0;
  }

  v57 = *(v53 + 48);
  v54 = v84;
  sub_21E3DC484(v52, v84);
  sub_21E3DC4F4(v52 + v57, &qword_27CEC2E60, &qword_21E3E4FD0);
  v58 = v83;
  if (__swift_getEnumTagSinglePayload(v54, 1, v83) == 1)
  {
    goto LABEL_6;
  }

  v66 = v78;
  v65 = v79;
  (*(v79 + 32))(v78, v54, v58);
  v67 = v80;
  sub_21E3C3448(v80);
  (*(v65 + 8))(v66, v58);
  v68 = OUTLINED_FUNCTION_3_3();
  v69(v68);
  v70 = v81;
  if (__swift_getEnumTagSinglePayload(v67, 1, v81) == 1)
  {
    v61 = &qword_27CEC2E38;
    v62 = &qword_21E3E4F38;
    v63 = v67;
    goto LABEL_7;
  }

  v71 = v77;
  v72 = *(v77 + 32);
  v73 = v75;
  v72(v75, v67, v70);
  v74 = v76;
  v72(v76, v73, v70);
  if ((*(v71 + 88))(v74, v70) != *MEMORY[0x277D63AD0])
  {
    (*(v71 + 8))(v74, v70);
    return 0;
  }

  (*(v71 + 96))(v74, v70);
  return *v74;
}

uint64_t sub_21E3DC19C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E68, &qword_21E3E4FD8);
  return sub_21E3E34B0() & 1;
}

uint64_t sub_21E3DC200(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E68, &qword_21E3E4FD8);
  return sub_21E3E34A0();
}

void sub_21E3DC250(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21E3E2120();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = *a2;
  OUTLINED_FUNCTION_0_3();
  sub_21E3DC5B8(v8, v9);
  sub_21E3E21C0();
  __break(1u);
}

void sub_21E3DC2D8()
{
  v0 = sub_21E3E2120();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  sub_21E3E2110();
  __break(1u);
}

uint64_t sub_21E3DC32C()
{
  v0 = sub_21E3E2160();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E50, &qword_21E3E4F50);
  sub_21E3DC554();
  sub_21E3E3570();
  sub_21E3E3590();
  v8 = sub_21E3E3580();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8;
}

uint64_t sub_21E3DC484(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E48, &qword_21E3E4F48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3DC4F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_21E3DC554()
{
  result = qword_281223738;
  if (!qword_281223738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2E50, &qword_21E3E4F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281223738);
  }

  return result;
}

uint64_t sub_21E3DC5B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E3DC600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E58, &qword_21E3E4FC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21E3DC6A4()
{
  OUTLINED_FUNCTION_22();
  v44 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2740, &unk_21E3E3E80);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v4);
  v45 = OUTLINED_FUNCTION_19();
  v5 = OUTLINED_FUNCTION_0(v45);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v42 = OUTLINED_FUNCTION_17(v10);
  v11 = OUTLINED_FUNCTION_0(v42);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  v19 = sub_21E3E2240();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v27 = v26 - v25;
  v28 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_21E3E2230();
  v29 = sub_21E3E2220();
  v31 = v30;
  (*(v22 + 8))(v27, v19);
  sub_21E3DF33C(v29, v31, v28);

  v32 = sub_21E3E21E0();
  [v28 setPunchOutUri_];

  v33 = v28;
  sub_21E3E3470();

  sub_21E3E2600();
  sub_21E3E25F0();
  v34 = *(v44 + OBJC_IVAR____TtC14DeviceExpertUI13ActionHandler_flowContext);
  sub_21E3D079C(v33);

  v35 = sub_21E3E21D0();
  OUTLINED_FUNCTION_18(v35, v36);
  (*(v13 + 104))(v18, *MEMORY[0x277D63730], v42);
  (*(v7 + 104))(v43, *MEMORY[0x277D63BF8], v45);
  sub_21E3E3360();
  v37 = sub_21E3E3370();
  v40 = objc_allocWithZone(OUTLINED_FUNCTION_7_2(v37, v38, v39, v37));
  OUTLINED_FUNCTION_13_1();
  v41 = OUTLINED_FUNCTION_5_2();
  sub_21E3E3460();

  OUTLINED_FUNCTION_21();
}

void sub_21E3DC9B4()
{
  OUTLINED_FUNCTION_22();
  v45 = v1;
  v46 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2740, &unk_21E3E3E80);
  OUTLINED_FUNCTION_7(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_19();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = sub_21E3E22C0();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2658, &qword_21E3E3CC8);
  OUTLINED_FUNCTION_7(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v29);
  v31 = &v45 - v30;
  v32 = [v3 punchOutUri];
  if (v32)
  {
    v33 = v32;
    sub_21E3E21F0();

    v34 = sub_21E3E2210();
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v34);
    sub_21E3C9BF4(v31, &qword_27CEC2658, &qword_21E3E3CC8);
    sub_21E3E3470();
    sub_21E3E2600();
    sub_21E3E25F0();
    v35 = *(v46 + OBJC_IVAR____TtC14DeviceExpertUI13ActionHandler_flowContext);
    sub_21E3D079C(v3);

    *v25 = v3;
    *(v25 + 8) = 1;
    (*(v20 + 104))(v25, *MEMORY[0x277D63720], v17);
    (*(v11 + 104))(v16, *MEMORY[0x277D63BF8], v8);
    v36 = v3;
    sub_21E3E3360();
    v37 = sub_21E3E3370();
    v40 = objc_allocWithZone(OUTLINED_FUNCTION_7_2(v37, v38, v39, v37));
    v41 = OUTLINED_FUNCTION_5_2();
    sub_21E3E3460();
  }

  else
  {
    v42 = sub_21E3E2210();
    __swift_storeEnumTagSinglePayload(v31, 1, 1, v42);
    sub_21E3C9BF4(v31, &qword_27CEC2658, &qword_21E3E3CC8);
    v41 = sub_21E3E2AF0();
    v43 = sub_21E3E35B0();
    if (os_log_type_enabled(v41, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_21E3BF000, v41, v43, "Invalid or no punch out uri available", v44, 2u);
      OUTLINED_FUNCTION_10_0();
    }
  }

  OUTLINED_FUNCTION_21();
}

void sub_21E3DCD20()
{
  OUTLINED_FUNCTION_22();
  v36 = v1;
  v37 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2740, &unk_21E3E3E80);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v5);
  v41 = &v36 - v6;
  v40 = sub_21E3E33A0();
  v7 = OUTLINED_FUNCTION_0(v40);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v38 = OUTLINED_FUNCTION_17(v12);
  v13 = OUTLINED_FUNCTION_0(v38);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = MEMORY[0x223D57D60]();
  v23 = v22;
  v24 = MEMORY[0x223D57D50]();
  v26 = v25;
  v27 = MEMORY[0x223D57D40]();
  v28 = v21;
  v29 = v37;
  sub_21E3DCF90(v28, v23, v24, v26, v27, v36);

  sub_21E3E2600();
  sub_21E3E25F0();
  v30 = *(v29 + OBJC_IVAR____TtC14DeviceExpertUI13ActionHandler_flowContext);
  sub_21E3D0B2C();

  OUTLINED_FUNCTION_18(0, 0xE000000000000000);
  (*(v15 + 104))(v20, *MEMORY[0x277D63730], v38);
  (*(v9 + 104))(v39, *MEMORY[0x277D63BF8], v40);
  sub_21E3E3360();
  v31 = sub_21E3E3370();
  v34 = objc_allocWithZone(OUTLINED_FUNCTION_7_2(v31, v32, v33, v31));
  OUTLINED_FUNCTION_13_1();
  v35 = OUTLINED_FUNCTION_5_2();
  sub_21E3E3460();

  OUTLINED_FUNCTION_21();
}

uint64_t sub_21E3DCF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v82 = a6;
  v76 = a5;
  v90 = a4;
  v86 = a3;
  v87 = a1;
  v88 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E98, &qword_21E3E5090);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v89 = &v67 - v8;
  v9 = sub_21E3E2370();
  v79 = *(v9 - 8);
  v80 = v9;
  v10 = *(v79 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v77 = v12;
  v78 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = &v67 - v13;
  v70 = sub_21E3E2410();
  v69 = *(v70 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v68 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2EA0, &qword_21E3E5098);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v72 = &v67 - v18;
  v19 = sub_21E3E2330();
  v83 = *(v19 - 8);
  v84 = v19;
  v20 = *(v83 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v75 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v67 - v23;
  v25 = sub_21E3E23C0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2EA8, &qword_21E3E50A0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = sub_21E3E23F0();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v67 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = [objc_opt_self() defaultEnvironment];
  v91[3] = sub_21E3DECC0();
  v91[4] = MEMORY[0x277CEB188];
  v91[0] = v37;
  sub_21E3E23B0();
  (*(v26 + 104))(v29, *MEMORY[0x277CEB068], v25);
  sub_21E3E23E0();
  v74 = sub_21E3E23D0();
  v73 = v38;
  (*(v33 + 8))(v36, v32);
  __swift_destroy_boxed_opaque_existential_0(v91);
  v39 = sub_21E3E2340();
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v39);
  sub_21E3E2430();
  v40 = v24;
  sub_21E3E2320();
  if (v76 && v76[2])
  {
    v41 = v76[5];
    v42 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v42 = v76[4] & 0xFFFFFFFFFFFFLL;
    }

    if (v42)
    {
      v91[0] = v76[4];
      v91[1] = v41;
      sub_21E3E2430();
      v43 = v68;
      sub_21E3E2400();
      v44 = sub_21E3C4194(0, 1, 1, MEMORY[0x277D84F90]);
      v46 = *(v44 + 16);
      v45 = *(v44 + 24);
      if (v46 >= v45 >> 1)
      {
        v44 = sub_21E3C4194(v45 > 1, v46 + 1, 1, v44);
      }

      *(v44 + 16) = v46 + 1;
      (*(v69 + 32))(v44 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v46, v43, v70);
    }
  }

  v47 = *(v83 + 16);
  v71 = v40;
  v47(v75, v40, v84);
  sub_21E3E2430();
  v48 = v85;
  sub_21E3E2360();
  v49 = sub_21E3E3560();
  __swift_storeEnumTagSinglePayload(v89, 1, 1, v49);
  v50 = v78;
  v51 = v79;
  v52 = v80;
  (*(v79 + 16))(v78, v48, v80);
  v53 = (*(v51 + 80) + 48) & ~*(v51 + 80);
  v54 = (v77 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  *(v57 + 2) = 0;
  *(v57 + 3) = 0;
  v58 = v73;
  *(v57 + 4) = v74;
  *(v57 + 5) = v58;
  (*(v51 + 32))(&v57[v53], v50, v52);
  v59 = v82;
  *&v57[v54] = v81;
  *&v57[v55] = v59;
  v60 = &v57[v56];
  v61 = v87;
  v62 = v90;
  *v60 = v86;
  *(v60 + 1) = v62;
  v63 = &v57[(v56 + 23) & 0xFFFFFFFFFFFFFFF8];
  v64 = v88;
  *v63 = v61;
  *(v63 + 1) = v64;
  sub_21E3E2430();
  sub_21E3E2430();
  swift_unknownObjectRetain();

  v65 = v59;
  sub_21E3DE478(0, 0, v89, &unk_21E3E50B0, v57);
  swift_unknownObjectRelease();

  (*(v51 + 8))(v85, v52);
  return (*(v83 + 8))(v71, v84);
}

uint64_t sub_21E3DD768()
{
  v1 = OBJC_IVAR____TtC14DeviceExpertUI13ActionHandler_logger;
  v2 = sub_21E3E2B00();
  OUTLINED_FUNCTION_0_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC14DeviceExpertUI13ActionHandler_flowContext);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for ActionHandler()
{
  result = qword_27CEC2E80;
  if (!qword_27CEC2E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E3DD85C()
{
  result = sub_21E3E2B00();
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

uint64_t sub_21E3DD920()
{
  sub_21E3E3710();
  MEMORY[0x223D58B30](0);
  return sub_21E3E3730();
}

uint64_t sub_21E3DD974()
{
  sub_21E3E3710();
  MEMORY[0x223D58B30](0);
  return sub_21E3E3730();
}

uint64_t sub_21E3DD9D8()
{
  OUTLINED_FUNCTION_16();
  sub_21E3DEC6C();
  swift_allocError();
  swift_willThrow();
  OUTLINED_FUNCTION_15();

  return v0(0);
}

uint64_t sub_21E3DDA74()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 16) + OBJC_IVAR____TtC14DeviceExpertUI13ActionHandler_logger;
  v2 = sub_21E3E2AF0();
  v3 = sub_21E3E35C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21E3BF000, v2, v3, "Unexpected disambiguation encountered due to missing target parameter. Executing the root deep link.", v4, 2u);
    OUTLINED_FUNCTION_10_0();
  }

  OUTLINED_FUNCTION_15();

  return v5(0);
}

uint64_t sub_21E3DDB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v23;
  *(v8 + 112) = v24;
  *(v8 + 88) = v22;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 48) = a4;
  v9 = sub_21E3E2240();
  *(v8 + 120) = v9;
  v10 = *(v9 - 8);
  *(v8 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2EB8, &qword_21E3E50D0) - 8) + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2EC0, &qword_21E3E50D8) - 8) + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v14 = sub_21E3E23A0();
  *(v8 + 160) = v14;
  v15 = *(v14 - 8);
  *(v8 + 168) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2EC8, &qword_21E3E50E0);
  *(v8 + 184) = v17;
  v18 = *(v17 - 8);
  *(v8 + 192) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E3DDD64, 0, 0);
}

uint64_t sub_21E3DDD64()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[6];
  ObjectType = swift_getObjectType();
  v6 = sub_21E3E2AC0();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v6);
  v7 = sub_21E3E2420();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  sub_21E3E2390();
  sub_21E3E2380();
  v8 = sub_21E3DF2E4();
  v9 = *(MEMORY[0x277CEAFE8] + 4);
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = sub_21E3DDEAC;
  v11 = v0[25];
  v12 = v0[22];
  v13 = v0[8];
  v14 = v0[9];
  v16 = v0[6];
  v15 = v0[7];

  return MEMORY[0x28213DA80](v11, v13, v12, v14, v8, ObjectType, v15);
}

uint64_t sub_21E3DDEAC()
{
  OUTLINED_FUNCTION_6_2();
  v3 = v2;
  v4 = v2[26];
  v5 = v2[22];
  v6 = v2[21];
  v7 = v2[20];
  v8 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v9 = v8;
  v3[27] = v0;

  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v10 = sub_21E3DE260;
  }

  else
  {
    (*(v3[24] + 8))(v3[25], v3[23]);
    v10 = sub_21E3DE030;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_21E3DE030()
{
  v23 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[10];
  v21 = v0[9];
  v7 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  sub_21E3E2230();
  v8 = sub_21E3E2220();
  v10 = v9;
  (*(v2 + 8))(v1, v3);
  sub_21E3DF33C(v8, v10, v7);

  v11 = v7;
  sub_21E3E3470();

  sub_21E3E2430();
  sub_21E3E2430();
  v12 = sub_21E3E2AF0();
  v13 = sub_21E3E35B0();

  if (os_log_type_enabled(v12, v13))
  {
    v15 = v0[13];
    v14 = v0[14];
    v17 = v0[11];
    v16 = v0[12];
    v18 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_21E3C9300(v17, v16, &v22);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_21E3C9300(v15, v14, &v22);
    _os_log_impl(&dword_21E3BF000, v12, v13, "Executed app intent named %s in bundleID: %s.", v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  OUTLINED_FUNCTION_20();

  OUTLINED_FUNCTION_9_2();

  return v19();
}

uint64_t sub_21E3DE260()
{
  v24 = v0;
  v1 = v0[27];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  sub_21E3E2430();
  sub_21E3E2430();
  v5 = v1;
  v6 = sub_21E3E2AF0();
  v7 = sub_21E3E35C0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[27];
    v10 = v0[13];
    v9 = v0[14];
    v12 = v0[11];
    v11 = v0[12];
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_21E3C9300(v12, v11, &v23);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_21E3C9300(v10, v9, &v23);
    *(v13 + 22) = 2080;
    swift_getErrorValue();
    v15 = v0[2];
    v14 = v0[3];
    v16 = v0[4];
    v17 = sub_21E3E36C0();
    v19 = sub_21E3C9300(v17, v18, &v23);

    *(v13 + 24) = v19;
    _os_log_impl(&dword_21E3BF000, v6, v7, "Unable to execute app intent named: %s in bundleID: %s. Error: %s", v13, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  else
  {
    v20 = v0[27];
  }

  OUTLINED_FUNCTION_20();

  OUTLINED_FUNCTION_9_2();

  return v21();
}

uint64_t sub_21E3DE478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E98, &qword_21E3E5090);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_21E3DF13C(a3, v26 - v11);
  v13 = sub_21E3E3560();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_21E3C9BF4(v12, &qword_27CEC2E98, &qword_21E3E5090);
  }

  else
  {
    sub_21E3E3550();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_21E3E3540();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_21E3E34F0() + 32;
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

      sub_21E3C9BF4(a3, &qword_27CEC2E98, &qword_21E3E5090);

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

  sub_21E3C9BF4(a3, &qword_27CEC2E98, &qword_21E3E5090);
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

uint64_t sub_21E3DE74C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21E3DF504;

  return sub_21E3DD9C4();
}

uint64_t sub_21E3DE7D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21E3DF508;

  return sub_21E3DDA5C();
}

uint64_t sub_21E3DE87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CEAFD0] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21E3DF504;

  return MEMORY[0x28213DA08](a1, a2, a3);
}

uint64_t sub_21E3DE92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CEAFC8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21E3DE9DC;

  return MEMORY[0x28213DA10](a1, a2, a3);
}

uint64_t sub_21E3DE9DC()
{
  OUTLINED_FUNCTION_8_2();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v7 = v6;

  OUTLINED_FUNCTION_15();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_21E3DEAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CEAFC0] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21E3DEB78;

  return MEMORY[0x28213DA08](a1, a2, a3);
}

uint64_t sub_21E3DEB78()
{
  OUTLINED_FUNCTION_8_2();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v7 = v6;

  OUTLINED_FUNCTION_15();
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

unint64_t sub_21E3DEC6C()
{
  result = qword_27CEC2E90;
  if (!qword_27CEC2E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2E90);
  }

  return result;
}

unint64_t sub_21E3DECC0()
{
  result = qword_27CEC2EB0;
  if (!qword_27CEC2EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEC2EB0);
  }

  return result;
}

uint64_t sub_21E3DED04(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_21E3E2370() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = v1[3];
  v21 = v1[2];
  v10 = v1[5];
  v19 = v1[4];
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v14 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v15 = *(v1 + v9);
  v16 = *(v1 + v9 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_21E3DEE80;

  return sub_21E3DDB54(a1, v21, v20, v19, v10, v1 + v5, v11, v12);
}

uint64_t sub_21E3DEE80()
{
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_6_2();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;

  OUTLINED_FUNCTION_9_2();

  return v5();
}

uint64_t sub_21E3DEF60(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21E3DF058;

  return v7(a1);
}

uint64_t sub_21E3DF058()
{
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_6_2();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;

  OUTLINED_FUNCTION_9_2();

  return v5();
}

uint64_t sub_21E3DF13C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E98, &qword_21E3E5090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3DF1AC()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_4_0(v4);

  return v6(v5);
}

uint64_t sub_21E3DF248()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_4_0(v4);

  return v6(v5);
}

unint64_t sub_21E3DF2E4()
{
  result = qword_27CEC2ED0;
  if (!qword_27CEC2ED0)
  {
    type metadata accessor for ActionHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2ED0);
  }

  return result;
}

void sub_21E3DF33C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21E3E34C0();

  [a3 setAceId_];
}

uint64_t getEnumTagSinglePayload for ActionHandler.Errors(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for ActionHandler.Errors(_BYTE *result, int a2, int a3)
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

unint64_t sub_21E3DF4AC()
{
  result = qword_27CEC2ED8;
  if (!qword_27CEC2ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2ED8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return sub_21E3E3410();
}

uint64_t OUTLINED_FUNCTION_7_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(v4, 0, 1, a4);

  return sub_21E3E3420();
}

uint64_t OUTLINED_FUNCTION_9_2()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_10_0()
{

  JUMPOUT(0x223D58FC0);
}

uint64_t OUTLINED_FUNCTION_17@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 104) = v1 - a1;

  return sub_21E3E22C0();
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821C9588](a1, a2, 0, 0xE000000000000000, 0, 0xE000000000000000);
}

uint64_t OUTLINED_FUNCTION_19()
{

  return sub_21E3E33A0();
}

uint64_t OUTLINED_FUNCTION_20()
{
  v2 = v0[25];
  v3 = v0[22];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
}

uint64_t type metadata accessor for AttributionView()
{
  result = qword_281223548;
  if (!qword_281223548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E3DF728()
{
  sub_21E3E2170();
  if (v0 <= 0x3F)
  {
    sub_21E3DF7C4();
    if (v1 <= 0x3F)
    {
      sub_21E3DF814();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21E3DF7C4()
{
  if (!qword_2812230B8)
  {
    v0 = sub_21E3E35F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2812230B8);
    }
  }
}

void sub_21E3DF814()
{
  if (!qword_281223050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2EE0, &qword_21E3E51B0);
    v0 = sub_21E3E35F0();
    if (!v1)
    {
      atomic_store(v0, &qword_281223050);
    }
  }
}

uint64_t sub_21E3DF894(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t *, char *), uint64_t a6)
{
  v8 = v6;
  v27 = a5;
  v28 = a6;
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E58, &qword_21E3E4FC8);
  v9 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E40, &qword_21E3E4F40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E50, &qword_21E3E4F50);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2EF0, &unk_21E3E5280);
  v26 = *(v21 - 8);
  v22 = *(v26 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v26 - v23;
  (*(v17 + 16))(v20, v8, v16);
  sub_21E3C4DA0(&qword_281223740, &qword_27CEC2E50, &qword_21E3E4F50);
  sub_21E3E3520();
  sub_21E3C4DA0(&qword_281223748, &qword_27CEC2EF0, &unk_21E3E5280);
  while (1)
  {
    sub_21E3E3600();
    if (__swift_getEnumTagSinglePayload(v15, 1, v29) == 1)
    {
      break;
    }

    sub_21E3E0B30(v15, v11, &qword_27CEC2E58, &qword_21E3E4FC8);
    v27(&v30, v11);
    sub_21E3C413C(v11, &qword_27CEC2E58, &qword_21E3E4FC8);
    if (v7)
    {
      (*(v26 + 8))(v24, v21);
      sub_21E3C7F24(v30, v31, v32);
    }
  }

  (*(v26 + 8))(v24, v21);
  return v30;
}

uint64_t sub_21E3DFC04()
{
  v1 = sub_21E3E2130();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E50, &qword_21E3E4F50);
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - v8;
  sub_21E3E2150();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_21E3E0BD0(&unk_281223750, MEMORY[0x277D047A8]);
  sub_21E3E2140();

  (*(v2 + 8))(v5, v1);
  v19 = v0;
  v10 = sub_21E3DF894(0, 0xE000000000000000, 0, MEMORY[0x277D84F90], sub_21E3E0B14, v18);
  v12 = v11;
  LOBYTE(v1) = v13;
  sub_21E3E2F90();
  v14 = sub_21E3E3000();
  sub_21E3C7F24(v10, v12, v1 & 1);

  (*(v6 + 8))(v9, v17);
  return v14;
}

uint64_t sub_21E3DFE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v91 = a3;
  v99 = a2;
  v96 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E38, &qword_21E3E4F38);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v92 = (&v83 - v5);
  v97 = sub_21E3E3310();
  v94 = *(v97 - 1);
  v6 = *(v94 + 64);
  MEMORY[0x28223BE20](v97);
  v93 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E3E21B0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v90 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E3E2170();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v89 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21E3E2630();
  v98 = *(v14 - 8);
  v15 = *(v98 + 64);
  MEMORY[0x28223BE20](v14);
  v95 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E58, &qword_21E3E4FC8);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v83 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E60, &qword_21E3E4FD0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v83 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E48, &qword_21E3E4F48);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v83 - v31;
  sub_21E3E0B80(v99, v21, &qword_27CEC2E58, &qword_21E3E4FC8);
  v33 = *(v18 + 56);
  sub_21E3E0B30(v21, v32, &qword_27CEC2E48, &qword_21E3E4F48);
  sub_21E3E0B30(&v21[v33], v25, &qword_27CEC2E60, &qword_21E3E4FD0);
  sub_21E3E0B80(v32, v30, &qword_27CEC2E48, &qword_21E3E4F48);
  v99 = v14;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v14);
  v100 = v25;
  if (EnumTagSinglePayload == 1)
  {
    sub_21E3C413C(v30, &qword_27CEC2E48, &qword_21E3E4F48);
    v35 = v96;
    v36 = *(v96 + 8);
    v92 = *v96;
    v99 = v36;
    LODWORD(v98) = *(v96 + 16);
    v37 = *(v96 + 24);
    sub_21E3C4DA0(&qword_27CEC2EF8, &qword_27CEC2E60, &qword_21E3E4FD0);
    sub_21E3E2180();
    sub_21E3E2190();
    v38 = sub_21E3E30B0();
    v40 = v39;
    v42 = v41;
    v43 = v99;
    v44 = v98;
    v45 = sub_21E3E3080();
    v94 = v46;
    v95 = v45;
    LODWORD(v93) = v47;
    v97 = v48;
    sub_21E3C7F24(v38, v40, v42 & 1);

    sub_21E3C7F24(v92, v43, v44);

    sub_21E3C413C(v100, &qword_27CEC2E60, &qword_21E3E4FD0);
    result = sub_21E3C413C(v32, &qword_27CEC2E48, &qword_21E3E4F48);
    v50 = v94;
    *v35 = v95;
    *(v35 + 8) = v50;
    *(v35 + 16) = v93 & 1;
    *(v35 + 24) = v97;
  }

  else
  {
    v91 = v32;
    v51 = v96;
    (*(v98 + 32))(v95, v30, v99);
    v101 = sub_21E3E2620();
    v102 = v52;
    sub_21E3CEDE0();
    v53 = sub_21E3E30C0();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = v92;
    sub_21E3C3448(v92);
    if (__swift_getEnumTagSinglePayload(v60, 1, v97) == 1)
    {
      sub_21E3C413C(v60, &qword_27CEC2E38, &qword_21E3E4F38);
      v61 = *v51;
      v62 = *(v51 + 8);
      v63 = *(v51 + 16);
      v64 = *(v51 + 24);
      v65 = sub_21E3E3080();
      v93 = v66;
      v94 = v65;
      LODWORD(v92) = v67;
      v97 = v68;
      sub_21E3C7F24(v61, v62, v63);

      sub_21E3C7F24(v53, v55, v57 & 1);

      (*(v98 + 8))(v95, v99);
      sub_21E3C413C(v100, &qword_27CEC2E60, &qword_21E3E4FD0);
      result = sub_21E3C413C(v91, &qword_27CEC2E48, &qword_21E3E4F48);
      v69 = v93;
      *v51 = v94;
      *(v51 + 8) = v69;
      *(v51 + 16) = v92 & 1;
      v70 = v97;
    }

    else
    {
      (*(v94 + 32))(v93, v60, v97);
      v87 = *v51;
      v84 = *(v51 + 8);
      v71 = *(v51 + 16);
      v85 = v55;
      v88 = *(v51 + 24);
      v72 = sub_21E3E2FF0();
      v86 = v59;
      v74 = v73;
      v76 = v75;
      v77 = v84;
      v78 = sub_21E3E3080();
      v89 = v79;
      v90 = v78;
      v103 = v80;
      v92 = v81;
      sub_21E3C7F24(v53, v85, v57 & 1);

      sub_21E3C7F24(v72, v74, v76 & 1);

      sub_21E3C7F24(v87, v77, v71);

      (*(v94 + 8))(v93, v97);
      (*(v98 + 8))(v95, v99);
      sub_21E3C413C(v100, &qword_27CEC2E60, &qword_21E3E4FD0);
      result = sub_21E3C413C(v91, &qword_27CEC2E48, &qword_21E3E4F48);
      v82 = v89;
      *v51 = v90;
      *(v51 + 8) = v82;
      *(v51 + 16) = v103 & 1;
      v70 = v92;
    }

    *(v51 + 24) = v70;
  }

  return result;
}

uint64_t sub_21E3E06B4@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v2 = type metadata accessor for AttributionView();
  v20[0] = *(v2 - 8);
  v3 = *(v20[0] + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2EE8, &qword_21E3E5208);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  v9 = sub_21E3DFC04();
  v11 = v10;
  v30 = v9;
  v31 = v10;
  v13 = v12 & 1;
  v32 = v12 & 1;
  v33 = v14;
  sub_21E3E09CC(v1, v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v20[0] + 80) + 16) & ~*(v20[0] + 80);
  v16 = swift_allocObject();
  sub_21E3E0A30(v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = MEMORY[0x277CE0BD8];
  sub_21E3E30F0();

  sub_21E3C7F24(v9, v11, v13);

  v30 = v17;
  v31 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v18 = sub_21E3E30E0();
  (*(v5 + 8))(v8, v4);
  v34 = MEMORY[0x277D63A60];
  v33 = MEMORY[0x277CE11C8];
  v30 = v18;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v23 = 0;
  v22 = 0u;
  v21 = 0u;
  return sub_21E3E33F0();
}

uint64_t sub_21E3E096C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for AttributionView();
  v7 = a3 + *(result + 24);
  if (*v7)
  {
    v8 = *(v7 + 8);
    return (*v7)(a1, a2);
  }

  return result;
}

uint64_t sub_21E3E09CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3E0A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3E0A94(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AttributionView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21E3E096C(a1, a2, v6);
}

uint64_t sub_21E3E0B30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_1_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_21E3E0B80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_1_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_21E3E0BD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t type metadata accessor for TipCollectionBannerView()
{
  result = qword_27CEC2F00;
  if (!qword_27CEC2F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E3E0CAC()
{
  result = sub_21E3E26D0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21E3E0D34@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = sub_21E3E2AB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v57[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2F10, &qword_21E3E52F8);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v57[-v10];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2F18, &qword_21E3E5300);
  v12 = OUTLINED_FUNCTION_1(v60);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v61 = &v57[-v15];
  v59 = sub_21E3E2E30();
  LOBYTE(v67[0]) = 0;
  sub_21E3E1280(v1, v79);
  memcpy(v82, v79, sizeof(v82));
  memcpy(v83, v79, 0xA8uLL);
  sub_21E3E0B80(v82, &v68, &qword_27CEC2F20, &qword_21E3E5308);
  sub_21E3C413C(v83, &qword_27CEC2F20, &qword_21E3E5308);
  memcpy(&v80[7], v82, 0xA8uLL);
  v16 = v67[0];
  v58 = sub_21E3E2F00();
  v80[176] = 1;
  sub_21E3E3300();
  sub_21E3E2CA0();
  memcpy(&v81[7], v79, 0x70uLL);
  v17 = &v11[*(v8 + 44)];
  v18 = *(sub_21E3E2C90() + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_21E3E2E40();
  OUTLINED_FUNCTION_1(v20);
  (*(v21 + 104))(&v17[v18], v19);
  __asm { FMOV            V0.2D, #16.0 }

  *v17 = _Q0;
  if (qword_27CEC2650 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v2, qword_27CEC3720);
  (*(v3 + 16))(v6, v27, v2);
  v28 = sub_21E3E3270();
  KeyPath = swift_getKeyPath();
  v30 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2F28, &qword_21E3E5340) + 36)];
  *v30 = KeyPath;
  v30[1] = v28;
  v31 = sub_21E3E3300();
  v33 = v32;
  v34 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2F30, &qword_21E3E5348) + 36)];
  *v34 = v31;
  v34[1] = v33;
  *v11 = v59;
  *(v11 + 1) = 0x4024000000000000;
  v11[16] = v16;
  memcpy(v11 + 17, v80, 0xAFuLL);
  v11[192] = v58;
  *(v11 + 193) = *v66;
  *(v11 + 49) = *&v66[3];
  *(v11 + 200) = 0u;
  *(v11 + 216) = 0u;
  v11[232] = 1;
  memcpy(v11 + 233, v81, 0x77uLL);
  type metadata accessor for CGSize(0);
  v59 = v35;
  v67[0] = 0;
  v67[1] = 0;
  sub_21E3E32A0();
  v36 = v68;
  v37 = v69;
  v38 = v70;
  v39 = sub_21E3E3240();
  v40 = swift_getKeyPath();
  v41 = sub_21E3E2FC0();
  v42 = swift_getKeyPath();
  v43 = sub_21E3E32F0();
  v45 = v44;
  v67[0] = v36;
  v67[1] = v37;
  OUTLINED_FUNCTION_6();
  v67[2] = v38;
  v67[3] = v46;
  v67[4] = 0xE90000000000006CLL;
  v67[5] = v40;
  v67[6] = v39;
  v67[7] = v42;
  v67[8] = v41;
  v67[9] = v47;
  v67[10] = v48;
  v49 = v61;
  sub_21E3E0B30(v11, v61, &qword_27CEC2F10, &qword_21E3E52F8);
  memcpy(&v49[*(v60 + 36)], v67, 0x58uLL);
  v68 = v36;
  v69 = v37;
  OUTLINED_FUNCTION_6();
  v70 = v38;
  v71 = v50;
  v72 = 0xE90000000000006CLL;
  v73 = v40;
  v74 = v39;
  v75 = v42;
  v76 = v41;
  v77 = v43;
  v78 = v45;
  sub_21E3E0B80(v67, v65, &qword_27CEC2870, &qword_21E3E5380);
  sub_21E3C413C(&v68, &qword_27CEC2870, &qword_21E3E5380);
  v63 = 0;
  v64 = 0;
  sub_21E3E32A0();
  v51 = v65[0];
  v52 = v65[1];
  v53 = v65[2];
  v54 = v62;
  sub_21E3E0B30(v49, v62, &qword_27CEC2F18, &qword_21E3E5300);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2F38, &qword_21E3E5388);
  v56 = (v54 + *(result + 36));
  *v56 = v51;
  v56[1] = v52;
  v56[2] = v53;
  return result;
}

uint64_t sub_21E3E1280@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21E3E2690();
  v6 = v5;
  v7 = sub_21E3E2E80();
  LOBYTE(v23[0]) = 1;
  sub_21E3E1428(a1, v22);
  *&__src[7] = v22[0];
  *&__src[23] = v22[1];
  *&__src[39] = v22[2];
  *&__src[55] = v22[3];
  v8 = v23[0];
  LOBYTE(a1) = sub_21E3E2F20();
  sub_21E3E2B70();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  LOBYTE(v24[0]) = 0;
  v17 = sub_21E3E3240();
  KeyPath = swift_getKeyPath();
  v23[0] = v7;
  v23[1] = 0;
  LOBYTE(v23[2]) = v8;
  memcpy(&v23[2] + 1, __src, 0x47uLL);
  LOBYTE(v23[11]) = a1;
  v23[12] = v10;
  v23[13] = v12;
  v23[14] = v14;
  v23[15] = v16;
  LOBYTE(v23[16]) = 0;
  v23[17] = KeyPath;
  v23[18] = v17;
  *a2 = v4;
  a2[1] = v6;
  memcpy(a2 + 2, v23, 0x98uLL);
  v24[0] = v7;
  v24[1] = 0;
  v25 = v8;
  memcpy(v26, __src, 0x47uLL);
  v26[71] = a1;
  v27 = v10;
  v28 = v12;
  v29 = v14;
  v30 = v16;
  v31 = 0;
  v32 = KeyPath;
  v33 = v17;
  sub_21E3E2430();
  sub_21E3E0B80(v23, &v20, &qword_27CEC2F40, &qword_21E3E5390);
  sub_21E3C413C(v24, &qword_27CEC2F40, &qword_21E3E5390);
}

uint64_t sub_21E3E1428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v3 = sub_21E3E2FD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E3E26B0();
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (v9)
  {
    v11 = v9;
  }

  v50 = v10;
  v51 = v11;
  v46 = sub_21E3CEDE0();
  v12 = sub_21E3E30C0();
  v14 = v13;
  v16 = v15;
  sub_21E3E2F40();
  (*(v4 + 104))(v7, *MEMORY[0x277CE0A10], v3);
  sub_21E3E2FE0();

  (*(v4 + 8))(v7, v3);
  sub_21E3E2F50();

  v17 = sub_21E3E3090();
  v43 = v18;
  v44 = v17;
  HIDWORD(v42) = v19;
  v45 = v20;

  sub_21E3C7F24(v12, v14, v16 & 1);

  v21 = sub_21E3E26C0();
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  v24 = 0xE000000000000000;
  if (v22)
  {
    v24 = v22;
  }

  v50 = v23;
  v51 = v24;
  v25 = sub_21E3E30C0();
  v27 = v26;
  v29 = v28;
  sub_21E3E2F30();
  v30 = sub_21E3E3090();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_21E3C7F24(v25, v27, v29 & 1);

  v37 = BYTE4(v42) & 1;
  v48 = BYTE4(v42) & 1;
  LOBYTE(v50) = BYTE4(v42) & 1;
  LOBYTE(v25) = v34 & 1;
  v49 = v34 & 1;
  v39 = v43;
  v38 = v44;
  *a2 = v44;
  *(a2 + 8) = v39;
  *(a2 + 16) = v37;
  *(a2 + 24) = v45;
  *(a2 + 32) = v30;
  *(a2 + 40) = v32;
  *(a2 + 48) = v25;
  *(a2 + 56) = v36;
  v40 = v38;
  sub_21E3DB7AC(v38, v39, v37);
  sub_21E3E2430();
  sub_21E3DB7AC(v30, v32, v25);
  sub_21E3E2430();
  sub_21E3C7F24(v30, v32, v25);

  sub_21E3C7F24(v40, v39, v48);
}

void *sub_21E3E1710@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = sub_21E3E3300();
    v5 = v4;
    sub_21E3E1818(__src);
    memcpy(v7, __src, sizeof(v7));
    memcpy(__dst, __src, sizeof(__dst));
    sub_21E3E0B80(v7, v9, &qword_27CEC2F98, &qword_21E3E5440);
    sub_21E3C413C(__dst, &qword_27CEC2F98, &qword_21E3E5440);
    memcpy(&v9[2], v7, 0x70uLL);
    v9[0] = v3;
    v9[1] = v5;
    nullsub_1(v9);
    memcpy(__src, v9, sizeof(__src));
  }

  else
  {
    sub_21E3E1EAC(__src);
  }

  return memcpy(a2, __src, 0x80uLL);
}

uint64_t sub_21E3E1818@<X0>(void *a1@<X8>)
{
  sub_21E3E3300();
  sub_21E3E2C20();
  v2 = sub_21E3E3240();
  KeyPath = swift_getKeyPath();
  LOBYTE(v17) = v11;
  sub_21E3E2430();
  v9 = sub_21E3E3290();
  v8 = sub_21E3E2F60();
  v7 = swift_getKeyPath();
  v6 = sub_21E3E3240();
  v4 = swift_getKeyPath();
  __src[0] = v10;
  LOBYTE(__src[1]) = v11;
  __src[2] = v12;
  LOBYTE(__src[3]) = v13;
  __src[4] = v14;
  __src[5] = v15;
  __src[6] = KeyPath;
  __src[7] = v2;
  __src[8] = 0x3FD3333333333333;
  memcpy(a1, __src, 0x48uLL);
  a1[9] = v9;
  a1[10] = v7;
  a1[11] = v8;
  a1[12] = v4;
  a1[13] = v6;
  sub_21E3E0B80(__src, &v17, &qword_27CEC2FA0, &qword_21E3E5448);
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = KeyPath;
  v24 = v2;
  v25 = 0x3FD3333333333333;
  return sub_21E3C413C(&v17, &qword_27CEC2FA0, &qword_21E3E5448);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21E3E19F4()
{
  OUTLINED_FUNCTION_2_5();
  result = sub_21E3E2D60();
  *v0 = result;
  return result;
}

uint64_t sub_21E3E1A1C(uint64_t *a1)
{
  v1 = *a1;

  return sub_21E3E2D70();
}

uint64_t sub_21E3E1A48()
{
  OUTLINED_FUNCTION_2_5();
  result = sub_21E3E2D80();
  *v0 = result;
  return result;
}

uint64_t sub_21E3E1A70(uint64_t *a1)
{
  v1 = *a1;

  return sub_21E3E2D90();
}

uint64_t sub_21E3E1A9C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21E3E1AF0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21E3E1B50()
{
  result = qword_27CEC2F48;
  if (!qword_27CEC2F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2F38, &qword_21E3E5388);
    sub_21E3E1BDC();
    sub_21E3CE728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2F48);
  }

  return result;
}

unint64_t sub_21E3E1BDC()
{
  result = qword_27CEC2F50;
  if (!qword_27CEC2F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2F18, &qword_21E3E5300);
    sub_21E3E1C94();
    sub_21E3C4DA0(&qword_27CEC29A8, &qword_27CEC2870, &qword_21E3E5380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2F50);
  }

  return result;
}

unint64_t sub_21E3E1C94()
{
  result = qword_27CEC2F58;
  if (!qword_27CEC2F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2F10, &qword_21E3E52F8);
    sub_21E3E1D4C();
    sub_21E3C4DA0(&qword_27CEC2F90, &qword_27CEC2F30, &qword_21E3E5348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2F58);
  }

  return result;
}

unint64_t sub_21E3E1D4C()
{
  result = qword_27CEC2F60;
  if (!qword_27CEC2F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2F68, "L.");
    sub_21E3E1DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2F60);
  }

  return result;
}

unint64_t sub_21E3E1DD8()
{
  result = qword_27CEC2F70;
  if (!qword_27CEC2F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2F78, &qword_21E3E53E0);
    sub_21E3C4DA0(&qword_27CEC2F80, &qword_27CEC2F88, qword_21E3E53E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2F70);
  }

  return result;
}

double sub_21E3E1EAC(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_21E3E1EC4()
{
  result = qword_27CEC2FA8;
  if (!qword_27CEC2FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2FB0, &qword_21E3E5450);
    sub_21E3C4DA0(&qword_27CEC2FB8, &qword_27CEC2FC0, &qword_21E3E5458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2FA8);
  }

  return result;
}

id sub_21E3E1FA4()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CEC2FC8 = result;
  return result;
}

uint64_t sub_21E3E1FFC()
{
  v0 = sub_21E3E2AB0();
  __swift_allocate_value_buffer(v0, qword_27CEC3720);
  __swift_project_value_buffer(v0, qword_27CEC3720);
  if (qword_27CEC2648 != -1)
  {
    swift_once();
  }

  v1 = qword_27CEC2FC8;
  return sub_21E3E2AA0();
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