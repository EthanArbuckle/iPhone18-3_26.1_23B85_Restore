uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_19794296C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Session.__allocating_init(assetBundleURIs:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPid:loggingIdentifier:sessionSetID:inferenceInterfaceVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a6;
  v36 = a7;
  v34 = a5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_28(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_29_1();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B8, &unk_197A97320);
  OUTLINED_FUNCTION_28(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v33 - v24;
  v26 = *a9;
  v27 = *(a9 + 8);
  sub_19794364C(a1, &v33 - v24);
  v28 = sub_197A87118();
  result = __swift_getEnumTagSinglePayload(v25, 1, v28);
  if (result != 1)
  {

    if (a4 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a4 <= 0x7FFFFFFF)
    {
      sub_1979444C8(a8, v10, &qword_1EAF499A8, &qword_197A92B00);
      LODWORD(v38) = v27;
      Session.__allocating_init(assetBundleURI:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPid:loggingIdentifier:sessionSetID:inferenceInterfaceVersion:)(v25, a2, a3, a4, v34, v35, v36, v10, &v37, v32, v33, v34, v35, v36, v26, v38, v39, v40, v41, v42, v43);
      v30 = OUTLINED_FUNCTION_103_0();
      sub_197947A40(v30, v31, &qword_197A92B00);
      return v9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_50()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return sub_197A88008();
}

double OUTLINED_FUNCTION_1_14@<D0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = *a1;
  *v1 = *a1;
  *(v1 + 8) = v2;
  *(v1 + 12) = v3;
  *(v1 + 16) = v5;
  *(v1 + 24) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_15(uint64_t a1)
{
  *(a1 + 8) = sub_19795C0C4;
  result = v1[27];
  v3 = v1[22];
  v4 = v1[13];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_39()
{
  v2 = *(v0 - 256);

  return sub_197A87FD8();
}

uint64_t OUTLINED_FUNCTION_36_1()
{

  return sub_197A880E8();
}

uint64_t OUTLINED_FUNCTION_36_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v2 - 368) + 32);
  *(v2 - 400) = a1;
  result = v1 + a1;
  *(v2 - 432) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_15()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_36_3()
{

  JUMPOUT(0x19A8EBE00);
}

uint64_t OUTLINED_FUNCTION_88()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_36_4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_6()
{
  v1 = v0[11];
  v2 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0[7] + 32);
  return v0[8];
}

uint64_t OUTLINED_FUNCTION_46()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_70_1()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
}

uint64_t OUTLINED_FUNCTION_70_2()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_70_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 152);
  v4 = *(v2 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_70_8()
{
  v1 = v0[13];
  v2 = v0[8];
  return v0[11];
}

uint64_t OUTLINED_FUNCTION_13()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_29()
{

  JUMPOUT(0x19A8EBE00);
}

void OUTLINED_FUNCTION_25()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x19A8EBE00);
}

uint64_t OUTLINED_FUNCTION_113()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_43_5@<X0>(char a1@<W8>)
{
  *(v1 - 144) = a1;
  v3 = *(v1 - 96);
  v4 = *(v1 - 104);

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 128, v4);
}

uint64_t OUTLINED_FUNCTION_43_6(uint64_t a1)
{
  *(a1 + 8) = sub_197A1D56C;
  v2 = *(v1 + 128);
  return *(v1 + 120);
}

uint64_t OUTLINED_FUNCTION_79()
{

  return sub_197A88218();
}

void OUTLINED_FUNCTION_44()
{

  JUMPOUT(0x19A8EBE00);
}

BOOL OUTLINED_FUNCTION_48(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_56()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_48_3@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);

  return sub_197947A40(v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_48_4()
{
  v2 = v0[22];
  v3 = v0[12];
  v4 = v0[10];

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_48_6()
{

  return sub_197A87F28();
}

uint64_t OUTLINED_FUNCTION_48_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_59_0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_19799747C(a1, v4, a2);
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return sub_197A883D8();
}

uint64_t OUTLINED_FUNCTION_59_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 360) = a3;
  *(v3 - 376) = a2;
  *(v3 - 440) = a1;

  return type metadata accessor for ModelManagerError();
}

void OUTLINED_FUNCTION_59_5()
{
  v1 = v0[22];
  v2 = v0[12];
  v3 = v0[10];
}

BOOL OUTLINED_FUNCTION_65(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_65_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_203()
{
}

uint64_t OUTLINED_FUNCTION_65_6()
{
  result = *(v0 - 240);
  v2 = *(*(v0 - 232) + 8);
  v3 = *(v0 - 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_65_7(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t sub_19794364C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_197A87118();
  v6 = v5;
  if (v4)
  {
    OUTLINED_FUNCTION_36_0(v5);
    (*(v7 + 16))(a2, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
  }

  OUTLINED_FUNCTION_52_1();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t type metadata accessor for ModelManagerError()
{
  result = qword_1ED8816C8;
  if (!qword_1ED8816C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_6()
{
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v5 = v0[17];
  v6 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[8];
}

unint64_t OUTLINED_FUNCTION_23_7(uint64_t a1)
{

  return sub_19796AB4C(a1);
}

uint64_t OUTLINED_FUNCTION_23_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return MEMORY[0x1EEDC6A10](va, a2, a2, v10, v10);
}

uint64_t OUTLINED_FUNCTION_23_10()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_51(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_197948834(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_51_2()
{
  v3 = *(v1 + 8);
  result = v2;
  v5 = *(v0 + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_51_3()
{

  return sub_197967254(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_51_4(float a1)
{
  *v1 = a1;

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_51_5()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 104);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 128, v3);
}

uint64_t OUTLINED_FUNCTION_38()
{

  return swift_once();
}

void OUTLINED_FUNCTION_38_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

void OUTLINED_FUNCTION_37()
{

  JUMPOUT(0x19A8EBE00);
}

uint64_t OUTLINED_FUNCTION_38_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a1 + 8) = v9;
  v12 = *(v10 + 24);
  v11 = *(v10 + 32);
  return a9;
}

uint64_t OUTLINED_FUNCTION_38_4()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_38_5(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_38_8()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_38_10()
{

  return sub_197A883A8();
}

uint64_t OUTLINED_FUNCTION_14_0()
{
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_14_3()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

uint64_t OUTLINED_FUNCTION_14_5()
{
  *(v3 - 72) = v0;
  v4 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_14_8()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = *(v0[8] + 32);
  return v0[9];
}

uint64_t OUTLINED_FUNCTION_74(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_197948834(v2, v3, va);
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_2()
{
  v2 = v0[17];
  v3 = v0[12];
  v4 = v0[10];
  v5 = v0[8];

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_5()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = *(v0[8] + 32);
  return v0[9];
}

void *OUTLINED_FUNCTION_9_7(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_197A5CF0C(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_16()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_66_3(uint64_t result)
{
  *(v2 - 72) = *(v1 + *(result + 20));
  *(v2 - 73) = 1;
  return result;
}

void OUTLINED_FUNCTION_66_4()
{
  v1 = *(v0 - 432);
  v2 = *(v0 - 440);
  v3 = *(v0 - 448);
}

uint64_t OUTLINED_FUNCTION_66_6()
{

  return sub_1979636E8(v0, type metadata accessor for RequestMetadata);
}

uint64_t OUTLINED_FUNCTION_66_8()
{
  v2 = v0[25];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[10];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_33_0()
{
  *(v1 - 896) = v0;

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_33_2(unint64_t *a1)
{

  return sub_197978B60(a1);
}

uint64_t OUTLINED_FUNCTION_33_3()
{

  return sub_197A880E8();
}

uint64_t OUTLINED_FUNCTION_17@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

void OUTLINED_FUNCTION_33_5()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x19A8EBE00);
}

uint64_t OUTLINED_FUNCTION_33_8()
{

  return sub_197A880B8();
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_4()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 96);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 120, v3);
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_8()
{
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[10];
  v13 = v0[8];
  v14 = v0[6];
}

void OUTLINED_FUNCTION_3_10()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 120);
  v3 = *(*(v1 + 112) + 16);
}

uint64_t OUTLINED_FUNCTION_3_12()
{

  return sub_197A880E8();
}

uint64_t OUTLINED_FUNCTION_3_15(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return v1;
}

unint64_t OUTLINED_FUNCTION_3_16(uint64_t a1)
{

  return sub_197954334(a1);
}

uint64_t OUTLINED_FUNCTION_3_19()
{

  return sub_197A87FD8();
}

void OUTLINED_FUNCTION_3_22()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x19A8EBE00);
}

uint64_t OUTLINED_FUNCTION_125()
{

  return sub_197A883D8();
}

uint64_t OUTLINED_FUNCTION_71_2()
{
  v2 = *(v0 + 8);
  result = *(v1 - 144);
  v4 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_71_5()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_71_7@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[6];
  v4 = v1[2];
  v5 = *(v1[10] + 8);
  return a1;
}

unint64_t OUTLINED_FUNCTION_71_8()
{
  v3 = *(v0 + 40);
  *(v1 - 96) = *(v0 + 32);
  *(v1 - 88) = v3;
  *(v1 - 97) = 1;

  return sub_1979552D0();
}

uint64_t sub_1979444C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_197944528()
{
  OUTLINED_FUNCTION_71();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_22();
  v7(v6);
  return v0;
}

uint64_t sub_197944580(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_182(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return v4;
}

void Session.__allocating_init(assetBundleURI:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPid:loggingIdentifier:sessionSetID:inferenceInterfaceVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int *a21)
{
  OUTLINED_FUNCTION_67();
  v132 = v21;
  v23 = v22;
  v145 = v24;
  v26 = v25;
  v141 = v27;
  v150 = v28;
  v147 = v29;
  v139 = v30;
  v32 = v31;
  v33 = type metadata accessor for ModelManagerError();
  v34 = OUTLINED_FUNCTION_28(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15_5(v42);
  v135 = sub_197A87118();
  v43 = OUTLINED_FUNCTION_2(v135);
  v134 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_15_5(v47);
  v146 = sub_197A87298();
  v48 = OUTLINED_FUNCTION_2(v146);
  v148 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A0, &qword_197A920D8);
  v55 = OUTLINED_FUNCTION_10_7(v54, &v153);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v59);
  v61 = v122 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v63 = OUTLINED_FUNCTION_28(v62);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  v67 = MEMORY[0x1EEE9AC00](v66);
  v69 = v122 - v68;
  MEMORY[0x1EEE9AC00](v67);
  v71 = v122 - v70;
  v72 = a21[1];
  v144 = *a21;
  v143 = v72;
  v142 = a21[2];
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B08, &qword_197A895D8);
  v73 = OUTLINED_FUNCTION_74_4();
  v123 = xmmword_197A88E50;
  *(v73 + 16) = xmmword_197A88E50;
  v137 = v32;
  *(v73 + 32) = sub_197A870F8();
  *(v73 + 40) = v74;
  v136 = v23;
  sub_1979444C8(v23, v71, &qword_1EAF499A8, &qword_197A92B00);
  if (qword_1ED8803B0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v75 = qword_1ED880258;
  v159[9] = &type metadata for VoucherProvider;
  v159[10] = &off_1F0C11F50;

  v76 = v26;
  v122[1] = v26;
  v77 = v145;
  sub_197945194();

  v78 = v140;
  sub_1979444C8(v61, v140, &qword_1EAF499A0, &qword_197A920D8);
  v133 = v71;
  sub_1979444C8(v71, v69, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_85_1();
  v158[1] = &type metadata for VoucherProvider;
  v159[0] = &off_1F0C11F50;
  v79 = OUTLINED_FUNCTION_37_2(&v155);
  __swift_mutable_project_boxed_opaque_existential_1(&v157, &type metadata for VoucherProvider);
  v155 = type metadata accessor for ModelServiceClient();
  v156 = &protocol witness table for ModelServiceClient;
  v153 = &off_1F0C11F50;
  v154[0] = v75;
  v152[1] = &type metadata for VoucherProvider;
  sub_197947C44(v154, v79 + 16);
  v80 = (v79 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID);
  v81 = v139;
  v82 = v147;
  *v80 = v139;
  v80[1] = v82;
  *(v79 + OBJC_IVAR____TtC20ModelManagerServices7Session_parentOfOnBehalfOfPID) = v141;
  v83 = (v79 + OBJC_IVAR____TtC20ModelManagerServices7Session_loggingIdentifier);
  *v83 = v76;
  v83[1] = v77;
  sub_197A878A8();
  sub_197A878A8();
  OUTLINED_FUNCTION_110_0(v152);
  v84 = *(v148 + 32);
  v128 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v85 = v146;
  v127 = v148 + 32;
  v122[0] = v84;
  v84(v79 + OBJC_IVAR____TtC20ModelManagerServices7Session_uuid, v75, v146);
  OUTLINED_FUNCTION_52_4((v79 + OBJC_IVAR____TtC20ModelManagerServices7Session_inferenceInterfaceVersion));
  *(v79 + OBJC_IVAR____TtC20ModelManagerServices7Session_customAssetConfigurations) = 0;
  v86 = v150;
  v132 = v61;
  v87 = v81;
  v88 = v138;
  if (v150 == -1)
  {
    v89 = OUTLINED_FUNCTION_24_5();
    if (v77)
    {
      v150 = getpid();
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v90 = sub_197A87608();
      v91 = OUTLINED_FUNCTION_80_2(v90, qword_1ED87D2E8);
      v87 = sub_197A87D78();
      if (OUTLINED_FUNCTION_68_3(v87))
      {
        v88 = v78;
        v92 = OUTLINED_FUNCTION_65_2();
        OUTLINED_FUNCTION_96_0(v92, 1.5047e-36);
        _os_log_impl(&dword_197941000, v91, v87, "No onBehalfOfPID specified, querying originator pid failed, falling back to current process PID: %d", v92, 8u);
        v78 = v88;
        OUTLINED_FUNCTION_56_2(v159);
      }

      OUTLINED_FUNCTION_83_2();
    }

    else
    {
      v150 = v89;
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v93 = sub_197A87608();
      v91 = OUTLINED_FUNCTION_80_2(v93, qword_1ED87D2E8);
      v94 = sub_197A87D78();
      if (OUTLINED_FUNCTION_55_0(v94))
      {
        v88 = v81;
        v95 = OUTLINED_FUNCTION_65_2();
        OUTLINED_FUNCTION_96_0(v95, 1.5047e-36);
        _os_log_impl(&dword_197941000, v91, OS_LOG_TYPE_DEFAULT, "No onBehalfOfPID specified, using originator PID: %d", v95, 8u);
        v87 = v81;
        OUTLINED_FUNCTION_56_2(v159);
      }
    }

    v86 = v150;
  }

  *(v79 + OBJC_IVAR____TtC20ModelManagerServices7Session_onBehalfOfPID) = v86;
  sub_1979444C8(v69, v88, &qword_1EAF499A8, &qword_197A92B00);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v88, 1, v85);
  v130 = v69;
  if (EnumTagSinglePayload == 1)
  {
    sub_197947A40(v88, &qword_1EAF499A8, &qword_197A92B00);
    (*(v148 + 16))(v149, v79 + v128, v85);
  }

  else
  {
    v97 = OUTLINED_FUNCTION_71_3();
    (v122[0])(v97, v88, v85);
  }

  v98 = v129;
  sub_1979444C8(v78, v129, &qword_1EAF499A0, &qword_197A920D8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v100 = v78;
  v101 = v135;
  v102 = v134;
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_104_0();

    OUTLINED_FUNCTION_5_5();
    v103 = v125;
    sub_19794B170(v98, v125, v104);
    sub_197947A40(v130, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v100, &qword_1EAF499A0, &qword_197A920D8);
    (*(v148 + 8))(v149, v146);
    __swift_destroy_boxed_opaque_existential_1Tm(v154);
    *(v79 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = MEMORY[0x1E69E7CC0];
    sub_19794B170(v103, v79 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata, v86);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v105 = v131;
    (*(v134 + 32))(v131, v98, v135);
    v106 = OUTLINED_FUNCTION_74_4();
    *(v106 + 16) = v123;
    v150 = v86;
    v107 = sub_197A870F8();
    *(v79 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = v106;
    *(v106 + 32) = v107;
    *(v106 + 40) = v108;
    v109 = v79 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata;
    (*(v102 + 16))(v79 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata, v105, v101);
    v110 = type metadata accessor for Session.Metadata(0);
    v111 = v148;
    v112 = v87;
    v113 = *(v148 + 16);
    v114 = v146;
    v113(v109 + v110[9], v79 + v128, v146);
    v113(v109 + v110[10], v149, v114);
    OUTLINED_FUNCTION_100_1();
    v115 = v147;
    *v116 = v112;
    v116[1] = v115;
    *(v109 + v110[6]) = v150;
    *(v109 + v110[7]) = v141;
    OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_34_2(v117);
    OUTLINED_FUNCTION_52_4((v109 + v110[11]));
    *(v109 + v110[12]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    OUTLINED_FUNCTION_70_2();
    v118 = sub_197A87C08();
    OUTLINED_FUNCTION_21_3(v126, v119, v120, v118);
    OUTLINED_FUNCTION_53_3();
    v121 = swift_allocObject();
    OUTLINED_FUNCTION_42_4(v121);
    *(v109 + 72) = v79;

    OUTLINED_FUNCTION_16_4();
    sub_19795CB2C();

    sub_197947A40(v130, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v140, &qword_1EAF499A0, &qword_197A920D8);
    (*(v102 + 8))(v131, v101);
    (*(v111 + 8))(v149, v114);
    __swift_destroy_boxed_opaque_existential_1Tm(v154);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v151);
  OUTLINED_FUNCTION_48_3(v158);
  (*(v102 + 8))(v137, v101);
  sub_197947A40(v132, &qword_1EAF499A0, &qword_197A920D8);
  OUTLINED_FUNCTION_48_3(&v156);
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_66();
}

uint64_t sub_197945164()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A438, &qword_197A98088);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

void sub_197945194()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B8, &unk_197A97320);
  OUTLINED_FUNCTION_28(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_50_0();
  (MEMORY[0x1EEE9AC00])();
  v12 = &v38 - v11;
  v13 = sub_197A87118();
  v14 = OUTLINED_FUNCTION_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_0();
  v21 = (v20 - v19);
  if (v5[2])
  {
    v22 = v5[4];
    v23 = v5[5];
    sub_197A878A8();
    sub_197A87108();

    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      sub_197947A40(v12, &qword_1EAF499B8, &unk_197A97320);
      if (qword_1ED880370 != -1)
      {
        OUTLINED_FUNCTION_50();
      }

      v24 = sub_197A87608();
      __swift_project_value_buffer(v24, qword_1ED880520);
      OUTLINED_FUNCTION_27_9();
      sub_197A878A8();
      sub_197A878A8();
      v25 = sub_197A875E8();
      v26 = sub_197A87D68();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v27 = 136315394;
        *(v27 + 4) = sub_197948834(v3, v1, &v39);
        *(v27 + 12) = 2080;
        v28 = MEMORY[0x19A8EADB0](v5, MEMORY[0x1E69E6158]);
        v30 = sub_197948834(v28, v29, &v39);

        *(v27 + 14) = v30;
        _os_log_impl(&dword_197941000, v25, v26, "ModelManager Session %s couldn't get URL from %s", v27, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_44();
      }

      type metadata accessor for ModelManagerError();
      OUTLINED_FUNCTION_46_5();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A0, &qword_197A920D8);
      OUTLINED_FUNCTION_46_5();
    }

    else
    {
      v37 = *(v16 + 32);
      v37(v21, v12, v13);
      v37(v7, v21, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A0, &qword_197A920D8);
      OUTLINED_FUNCTION_46_5();
    }

    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_66();
  }

  else
  {
    if (qword_1ED880370 != -1)
    {
      OUTLINED_FUNCTION_50();
    }

    v31 = sub_197A87608();
    __swift_project_value_buffer(v31, qword_1ED880520);
    OUTLINED_FUNCTION_27_9();
    sub_197A878A8();
    v32 = sub_197A875E8();
    v33 = sub_197A87D68();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_197948834(v3, v1, &v39);
      _os_log_impl(&dword_197941000, v32, v33, "ModelManager Session %s doesn't have any asset bundle identifiers", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_44();
    }

    type metadata accessor for ModelManagerError();
    OUTLINED_FUNCTION_46_5();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A0, &qword_197A920D8);
    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_66();

    swift_storeEnumTagMultiPayload();
  }
}

void OUTLINED_FUNCTION_52_4(_DWORD *a1@<X8>)
{
  v2 = *(v1 - 392);
  *a1 = *(v1 - 388);
  a1[1] = v2;
  a1[2] = *(v1 - 396);
}

uint64_t OUTLINED_FUNCTION_52_6()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_7()
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 24);

  return sub_197A2FB58(v0);
}

double OUTLINED_FUNCTION_52_8@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 32);
  *a1 = result;
  *(a1 + 8) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_91_0()
{
  result = type metadata accessor for StateDump.InferenceProviderState.ActiveRequest(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_91_1()
{

  return sub_197A87298();
}

uint64_t OUTLINED_FUNCTION_78(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

void OUTLINED_FUNCTION_91_2()
{

  JUMPOUT(0x19A8EAC80);
}

void OUTLINED_FUNCTION_91_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_91_6()
{
  result = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  return result;
}

uint64_t OUTLINED_FUNCTION_91_9(uint64_t result)
{
  *(result + 8) = sub_197A72324;
  v2 = *(v1 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_53_1()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[1];
  v5 = HIDWORD(*v0);
  *(v1 - 96) = *v0;
  *(v1 - 92) = v5;
  *(v1 - 88) = v4;
  *(v1 - 80) = v3;
  *(v1 - 72) = v2;
  return v1 - 96;
}

uint64_t OUTLINED_FUNCTION_53_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_53_8()
{
  *(v0 + 4) = v2;
  *v3 = v2;
  *(v0 + 12) = 2080;
  *(v1 + 56) = v4;

  return swift_getMetatypeMetadata();
}

uint64_t OUTLINED_FUNCTION_40_4(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_10_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 128);
  v4 = *(v1 - 120);

  return sub_197A88058();
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return type metadata accessor for _OSActivity();
}

uint64_t OUTLINED_FUNCTION_10_5@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 136);

  return sub_197A87F28();
}

uint64_t OUTLINED_FUNCTION_10_7@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_10(unint64_t *a1)
{

  return sub_197955F04(a1, v1);
}

uint64_t OUTLINED_FUNCTION_10_12()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = *(v0[14] + 32);
  return v0[15];
}

uint64_t OUTLINED_FUNCTION_7_4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 136);

  return sub_197A87F28();
}

unint64_t OUTLINED_FUNCTION_7_5(uint64_t a1)
{

  return sub_197978AF8(a1);
}

uint64_t OUTLINED_FUNCTION_7_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_192()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_95()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_9()
{
  v2 = v0[32];
  v3 = v0[25];
  v4 = v0[16];

  return swift_allocError();
}

void OUTLINED_FUNCTION_31(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_78_0()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_94_0()
{

  JUMPOUT(0x19A8EAC80);
}

uint64_t OUTLINED_FUNCTION_94_1()
{

  return swift_allocError();
}

unint64_t OUTLINED_FUNCTION_94_5()
{
  *(v2 - 160) = v1;
  *(v2 - 152) = v0;
  v5 = *(v2 - 144);
  v4 = *(v2 - 136);
  *(v2 - 65) = 0;

  return sub_1979C43D0();
}

uint64_t sub_197945EF8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_16_0()
{
  v3 = *(v0 - 128);
  v2 = *(v0 - 120);

  return sub_197A88058();
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return sub_19796A2C8((v2 + 16), v0, v1);
}

uint64_t OUTLINED_FUNCTION_16_3@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 152);
  v4 = *(v1 - 144);

  return sub_197A88058();
}

uint64_t OUTLINED_FUNCTION_18_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_16_6()
{
  *(v0 + 4) = v2;
  *v1 = v2;
  *(v0 + 12) = 2080;
  return 0;
}

uint64_t OUTLINED_FUNCTION_44_2()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_2()
{
  v3 = *(v0 - 152);
  v2 = *(v0 - 144);

  return sub_197A88058();
}

uint64_t OUTLINED_FUNCTION_30_5(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_30_6(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_7(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 160);
  v4 = *(v2 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_11()
{
  v2 = v0[47];
  v3 = v0[45];
  v5 = v0[42];
  v4 = v0[43];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[39];
  v9 = v0[37];
  v10 = v0[34];
  v11 = v0[32];
}

uint64_t OUTLINED_FUNCTION_30_13()
{

  return sub_197A63780();
}

void *OUTLINED_FUNCTION_78_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *v3 = v1;
  v3[1] = v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_78_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_145()
{

  return sub_197A882F8();
}

void OUTLINED_FUNCTION_78_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_78_8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 120);

  return sub_197A880E8();
}

uint64_t OUTLINED_FUNCTION_78_9()
{
  v2 = *(v0 - 72);
}

void OUTLINED_FUNCTION_69_2()
{
  v1 = *(v0 - 432);
  v2 = *(v0 - 440);
  v3 = *(v0 - 448);
}

void OUTLINED_FUNCTION_69_4()
{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[6];
  v7 = v0[7];
}

uint64_t OUTLINED_FUNCTION_69_7@<X0>(uint64_t a1@<X8>)
{

  return sub_197962AC8(v1 + a1 * v2, type metadata accessor for RequestKey);
}

void OUTLINED_FUNCTION_69_9(int *a1@<X8>)
{
  *(v2 + 56) = v1[1];
  *v1 = 0;
  v1[1] = 0;
  v3 = a1 + *a1;
}

uint64_t OUTLINED_FUNCTION_39_4()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_39_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_39_7()
{

  return swift_storeEnumTagMultiPayload();
}

void *OUTLINED_FUNCTION_39_8@<X0>(void *a1@<X8>)
{
  v2 = a1[18];
  v3 = a1[17];

  return __swift_project_boxed_opaque_existential_1(a1 + 14, v3);
}

uint64_t OUTLINED_FUNCTION_45()
{
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
}

uint64_t OUTLINED_FUNCTION_45_1()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void OUTLINED_FUNCTION_45_4()
{
  v0[2] = v0[26];
  v2 = v0[13];
  v3 = v0[10];

  JUMPOUT(0x19A8EBBD0);
}

uint64_t OUTLINED_FUNCTION_45_5()
{

  return sub_197A883A8();
}

uint64_t OUTLINED_FUNCTION_45_7(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_19796AB98(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_64()
{
  v2 = *(v0 + 128);

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_64_5()
{
  v0[2] = v1;
  v3 = v0[12];
  v4 = v0[9];

  JUMPOUT(0x19A8EBBD0);
}

BOOL OUTLINED_FUNCTION_202()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_64_6@<X0>(uint64_t a1@<X8>)
{
  *(v3 + a1) = v1;
  *(v3 + v2[11]) = 0;
  *(v3 + v2[12]) = 0;
  *(v3 + v2[13]) = 0;
  return v3 + v2[14];
}

uint64_t OUTLINED_FUNCTION_64_7()
{
  result = v0[17];
  v2 = v0[15];
  v3 = *(v0[16] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_64_8()
{

  return sub_197A87EB8();
}

uint64_t OUTLINED_FUNCTION_29_4()
{
  v1 = v0[26];
  v2 = v0[18];
  result = v0[14];
  v4 = v0[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_29_7()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_29_8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 12) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return 0;
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

void *OUTLINED_FUNCTION_8_6()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[9];
  v4 = v0[6];
  return __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
}

uint64_t OUTLINED_FUNCTION_8_9(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void OUTLINED_FUNCTION_8_10()
{
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = v0[17];
  v8 = v0[18];
  v9 = v0[15];
  v10 = v0[16];
  v11 = v0[14];
  v12 = v0[11];

  sub_19795C1F8(v12);
}

unint64_t OUTLINED_FUNCTION_6_5(uint64_t a1)
{

  return sub_197978AF8(a1);
}

void *OUTLINED_FUNCTION_6_7()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
  v3 = v2[4];
  return __swift_project_boxed_opaque_existential_1(v2, v2[3]);
}

uint64_t OUTLINED_FUNCTION_6_10@<X0>(void *a1@<X8>)
{
  v1 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_6_13(uint64_t result)
{
  *(result + 8) = sub_197A5AAF8;
  v2 = *(v1 + 48);
  v3 = *(v1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_14()
{

  return swift_getAssociatedTypeWitness();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t result)
{
  *(result + 8) = sub_19798B1B0;
  v2 = *(v1 + 128);
  return result;
}

void OUTLINED_FUNCTION_19_5()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[9];
}

void OUTLINED_FUNCTION_19_7(uint64_t a1@<X8>)
{
  v3 = (a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v1 + v3);
  v5 = *(v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
}

void OUTLINED_FUNCTION_19_8()
{
  *(v0 + 4) = v2;
  *v1 = v2;
  *(v0 + 12) = 2080;
}

uint64_t OUTLINED_FUNCTION_19_10@<X0>(uint64_t a1@<X8>)
{
  *(v3 + a1) = v1;
  *(v3 + v2[11]) = 0;
  *(v3 + v2[12]) = 0;
  *(v3 + v2[13]) = 0;
  return v3 + v2[14];
}

uint64_t OUTLINED_FUNCTION_19_11()
{
  v2 = v0[32];
  v3 = v0[25];
  v4 = v0[18];
  v5 = v0[16];

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_19_14()
{
  v2 = *(v0 - 152);

  return sub_197A87F28();
}

uint64_t OUTLINED_FUNCTION_19_15@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 232);
  v5 = *(v1 - 248);

  return sub_197A88058();
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return sub_197A88148();
}

uint64_t OUTLINED_FUNCTION_0_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_21()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_0_25()
{
  result = *v0;
  v2 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_26()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_28(int *a1@<X8>)
{
  v4[5] = v2;
  v4[6] = v3;
  v4[2] = 0xD000000000000024;
  v4[3] = v1;
  v5 = a1 + *a1;
}

BOOL OUTLINED_FUNCTION_68_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_68_5()
{
  v1 = v0[25];
  v2 = v0[17];
  result = v0[13];
  v4 = v0[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_68_6()
{
  result = *(v0 - 208);
  v2 = *(v0 - 336);
  return result;
}

uint64_t OUTLINED_FUNCTION_68_7()
{

  return sub_197962AC8(v0, type metadata accessor for RequestMetadata);
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_5_1(uint64_t result)
{
  *(result + 8) = v1;
  v4 = *(v2 + 104);
  v3 = *(v2 + 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_9()
{
  v2 = *(v0 + 88);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_10@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 32) + v1;
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v4 = 0;
  }

  v5 = *(a1 + 8 * (v3 - v4) + 40);
}

uint64_t OUTLINED_FUNCTION_5_13()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1979474F8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19798E5C8;

  return v7(a1);
}

uint64_t OUTLINED_FUNCTION_15_0@<X0>(void *a1@<X8>)
{
  v1 = a1[20];
  __swift_project_boxed_opaque_existential_1(a1 + 16, a1[19]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_15_3()
{
  v2 = *(v0 - 136);

  return sub_197A87F28();
}

uint64_t OUTLINED_FUNCTION_15_6()
{
  result = __swift_getEnumTagSinglePayload(v0, 1, v2);
  v4 = *(v1 + 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_7()
{
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v5 = v0[28];
  v6 = v0[23];
  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[15];
}

uint64_t OUTLINED_FUNCTION_15_9()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 72);

  return sub_197A87F28();
}

uint64_t sub_197947748()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelServiceClient.establishment(of:)();
}

uint64_t ModelServiceClient.establishment(of:)()
{
  OUTLINED_FUNCTION_9();
  v1[11] = v2;
  v1[12] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  v1[13] = OUTLINED_FUNCTION_78_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_10(v6);
  v1[14] = v7;
  v1[15] = *(v8 + 64);
  v1[16] = OUTLINED_FUNCTION_90_4();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_197947900(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_75_0(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 8))(v2);
  return v2;
}

uint64_t sub_197947964()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_71_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_0(v1);

  return v4(v3);
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

uint64_t sub_197947A40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_17_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x19A8EBE00);
}

uint64_t OUTLINED_FUNCTION_17_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 136);
  v5 = *(v1 - 104);

  return sub_197A880E8();
}

void OUTLINED_FUNCTION_20_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_17_5(void *a1@<X8>)
{
  v6 = *(v1 - 256);
  v7 = *(v5 - 360);
  *a1 = v6;
  a1[1] = v7;
  *(v3 + *(v4 + 24)) = v2;
  v8 = *(v4 + 28);
}

uint64_t OUTLINED_FUNCTION_17_7()
{
  v2 = *(v0 - 72);

  return sub_197A87FD8();
}

uint64_t sub_197947C44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_67_2()
{
  result = v0;
  v3 = *(v1 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_67_4(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  return result;
}

void OUTLINED_FUNCTION_67_6()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[9];
}

void OUTLINED_FUNCTION_67_8()
{
  v0[6] = v1;
  v3 = v0[19];
  v4 = v0[16];

  JUMPOUT(0x19A8EBBD0);
}

uint64_t OUTLINED_FUNCTION_67_10(uint64_t a1)
{
  v3 = *(v1 + 216);

  return sub_197962AC8(a1, type metadata accessor for Session.Metadata);
}

uint64_t OUTLINED_FUNCTION_31_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 128);
  v4 = *(v1 - 120);

  return sub_197A88058();
}

uint64_t OUTLINED_FUNCTION_31_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 136);

  return sub_197A880B8();
}

uint64_t OUTLINED_FUNCTION_31_4()
{
  v2 = *(v0 + 88);

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_31_6(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

void OUTLINED_FUNCTION_31_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_31_10(void *a1)
{
  a1[2] = v1;
  a1[3] = v2;
  a1[4] = v1;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_87_1(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_197A870F8();
}

uint64_t OUTLINED_FUNCTION_87_2(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_87_5(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_87_7()
{
  v2 = *(v0 + 40);

  return sub_197A882F8();
}

void OUTLINED_FUNCTION_81_2()
{
  v4 = v1[11];
  v3 = v1[12];
  v1[7] = v0;

  JUMPOUT(0x19A8EBBD0);
}

uint64_t OUTLINED_FUNCTION_81_3(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_197948834(v2, v3, va);
}

uint64_t OUTLINED_FUNCTION_204()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_81_5()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_34_1(unint64_t *a1)
{

  return sub_197978B60(a1);
}

void OUTLINED_FUNCTION_34_2(void *a1@<X8>)
{
  v3 = *(v1 - 256);
  *a1 = v2;
  a1[1] = v3;
}

uint64_t OUTLINED_FUNCTION_34_3()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[17];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
}

uint64_t OUTLINED_FUNCTION_34_5()
{
  v4 = *(v3 + 16);
  v5 = v1 + *(v2 + 20);
  return v0;
}

uint64_t OUTLINED_FUNCTION_159()
{

  return sub_197A883D8();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_80_2(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_197A875E8();
}

void OUTLINED_FUNCTION_146(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_80_4()
{
  *(v2 + 16) = v0;
  v3 = v2 + *v1;
  result = type metadata accessor for RequestMetadata(0);
  v5 = *(result + 28);
  return result;
}

void OUTLINED_FUNCTION_80_7()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

uint64_t OUTLINED_FUNCTION_92_0()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_92_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v11 + 4) = v13;
  *(v11 + 12) = 1024;
  v15 = *(v12 + *(a10 + 20));

  return sub_19796F6D0(v12, v10);
}

void OUTLINED_FUNCTION_92_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_92_4()
{
  v1 = *(v0 + 464);
  *(v1 + 168) = 0;
  *(v1 + 152) = 0u;
  *(v1 + 136) = 0u;
  return v0 + 384;
}

uint64_t OUTLINED_FUNCTION_92_5()
{
  v2 = v0[8];
  result = v0[9];
  v3 = v0[7];
  return result;
}

uint64_t OUTLINED_FUNCTION_46_2()
{
  v2 = *(v0 - 160);
  v3 = *(v0 - 144);

  return sub_197A87FD8();
}

uint64_t OUTLINED_FUNCTION_46_4()
{
  v2 = *(v0 + 176);
  v3 = *(v0 + 80);

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_46_6()
{

  return sub_197A883D8();
}

uint64_t OUTLINED_FUNCTION_46_7()
{

  return swift_beginAccess();
}

uint64_t sub_197948484(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_88_1()
{

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 208, v0);
}

double OUTLINED_FUNCTION_88_5()
{
  v1 = *(v0 - 104);
  v2 = *(v0 - 100);
  v3 = *(v0 - 96);
  v4 = *(v0 - 88);
  return *(v0 - 112);
}

uint64_t OUTLINED_FUNCTION_143_0()
{

  return sub_197A88218();
}

uint64_t OUTLINED_FUNCTION_143_1()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_143_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_197963674(a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_143_4()
{
  v2 = *(v0 + 32);
  v4 = *(v0 + 40);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_85_1()
{
  v2 = *(v0 - 144);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 168, v2);
}

uint64_t OUTLINED_FUNCTION_85_3()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_85_5()
{

  return sub_197A87EB8();
}

uint64_t OUTLINED_FUNCTION_25_2()
{
  v3 = *(v0 - 128);
  v2 = *(v0 - 120);

  return sub_197A88058();
}

uint64_t OUTLINED_FUNCTION_25_5()
{
  result = __swift_getEnumTagSinglePayload(v0, 1, v2);
  v4 = *(v1 + 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return swift_allocError();
}

uint64_t sub_1979487E0()
{
  OUTLINED_FUNCTION_71();
  v4 = OUTLINED_FUNCTION_114(v1, v2, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_6(v6);
  v8 = *(v7 + 16);
  v9 = OUTLINED_FUNCTION_22();
  v10(v9);
  return v0;
}

uint64_t sub_197948834(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_197A878A8();
  v6 = sub_197949504(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_197949604(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t OUTLINED_FUNCTION_73_0()
{

  return sub_197947A40(v2, v0, v1);
}

void OUTLINED_FUNCTION_73_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_73_6(uint64_t result)
{
  *(v2 + *(result + 20)) = 0;
  v3 = *(v1 + 60);
  return result;
}

uint64_t OUTLINED_FUNCTION_73_8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 16);
}

uint64_t *sub_1979489D4(unint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v3[4] = 0;
  v3[3] = 0;
  v3[2] = sub_197949738(a1, a2, a3, &dword_197941000);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v3 + 3));
  swift_endAccess();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t OUTLINED_FUNCTION_125_0()
{
}

uint64_t OUTLINED_FUNCTION_125_2()
{
  result = type metadata accessor for Request(0);
  v1 = *(result + 36);
  return result;
}

BOOL OUTLINED_FUNCTION_55_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_141_2@<X0>(uint64_t a1@<X1>, char a2@<W8>)
{
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  v5 = *(a1 + 40);
  *(a1 + 40) = a2;

  return sub_197A878A8();
}

void *OUTLINED_FUNCTION_11_1@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);
  *v4 = v1;
  v4[1] = v2;
  result = v4;
  v6 = *(v3 - 168);
  return result;
}

void OUTLINED_FUNCTION_11_4()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[18];
  v5 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[9];
}

uint64_t OUTLINED_FUNCTION_11_7()
{
  result = v0;
  v3 = *(v1 - 344);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 144);
  v4 = *(v1 - 136);

  return sub_197A88058();
}

void OUTLINED_FUNCTION_47_4()
{
  v0[2] = v0[24];
  v2 = v0[13];
  v3 = v0[10];

  JUMPOUT(0x19A8EBBD0);
}

uint64_t OUTLINED_FUNCTION_47_6(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEDC6A10](a1, a2, a2, v2, v2);
}

uint64_t OUTLINED_FUNCTION_47_9(uint64_t a1)
{
  v2 = *(a1 + 20);
  *(v1 - 96) = 1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_77_0()
{
}

uint64_t OUTLINED_FUNCTION_79_1()
{

  return sub_197A878A8();
}

uint64_t OUTLINED_FUNCTION_77_4()
{
  result = *v0;
  v4 = *(v2 + 64);
  v5 = *(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_77_5()
{
  v2 = *(v0 + 168);
  v3 = *(v0 + 72);

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_77_7()
{
  v3 = *(v1 + 56);
  result = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_77_10(uint64_t a1)
{
  *(v2 + 168) = *(*(v1 + 56) + 8 * a1);
}

uint64_t OUTLINED_FUNCTION_119_0()
{

  return sub_19796F6D0(v1, v0);
}

uint64_t OUTLINED_FUNCTION_119_2(uint64_t a1)
{

  return sub_1979699A8(a1, type metadata accessor for InferenceProviderXPCRequest.PrewarmBundle);
}

uint64_t OUTLINED_FUNCTION_119_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_197948F1C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t result)
{
  *(result + 8) = sub_197989CA8;
  v2 = *(v1 + 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_3@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 152);
  v4 = *(v1 - 144);

  return sub_197A88058();
}

uint64_t OUTLINED_FUNCTION_24_5()
{
  __swift_project_boxed_opaque_existential_1((v0 - 288), *(v0 - 264));

  return sub_197A1101C();
}

uint64_t OUTLINED_FUNCTION_93_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_24_6()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
}

uint64_t OUTLINED_FUNCTION_24_7()
{

  return sub_197A880E8();
}

uint64_t OUTLINED_FUNCTION_24_9()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_11()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_14()
{

  return sub_197969A00(v0, type metadata accessor for InferenceProviderRequestConfiguration);
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return sub_197A87F28();
}

uint64_t OUTLINED_FUNCTION_20_4()
{
  v2 = *(v0 - 136);

  return sub_197A87F28();
}

uint64_t OUTLINED_FUNCTION_20_5()
{

  return sub_197A880E8();
}

uint64_t OUTLINED_FUNCTION_20_6()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 - 128));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 - 208));

  return __swift_destroy_boxed_opaque_existential_1Tm((v0 - 168));
}

uint64_t OUTLINED_FUNCTION_20_7()
{
  result = __swift_getEnumTagSinglePayload(v0, 1, v2);
  v4 = *(v1 + 160);
  return result;
}

void OUTLINED_FUNCTION_20_9()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[1];
  v4 = HIDWORD(*v0);
}

uint64_t OUTLINED_FUNCTION_20_11@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 136);
  v5 = *(v1 - 72);

  return sub_197A87F28();
}

uint64_t OUTLINED_FUNCTION_20_12()
{
  v3 = v0[15];
  v2 = v0[16];
  v9 = v0[13];
  v10 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v8 = v0[9];

  return sub_197A87C08();
}

uint64_t OUTLINED_FUNCTION_41_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_82_0()
{
  v2 = *(*(v1 - 152) + 8);
  result = v0;
  v4 = *(v1 - 120);
  return result;
}

void OUTLINED_FUNCTION_82_1()
{
  v6 = (v4 + v5[7]);
  *v6 = v3;
  v6[1] = v2;
  *(v4 + v5[8]) = v1;
  *(v4 + v5[9]) = v0;
  v7 = v5[10];
}

uint64_t OUTLINED_FUNCTION_82_3()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_82_4()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_49_4()
{
  v2 = *(v0 - 368);

  JUMPOUT(0x19A8EBE00);
}

uint64_t OUTLINED_FUNCTION_49_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_49_6()
{
  v2 = *(v0 + 176);
  v3 = *(v0 + 80);

  return swift_allocError();
}

void OUTLINED_FUNCTION_49_8()
{

  JUMPOUT(0x19A8EAC80);
}

uint64_t OUTLINED_FUNCTION_49_9()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_49_11()
{
  v3 = *(v1 - 104);
  *(v0 + 32) = *(v1 - 112);
  *(v0 + 40) = v3;
  *(v1 - 112) = 2;

  return sub_197A87FA8();
}

uint64_t OUTLINED_FUNCTION_49_12()
{
  v0 = type metadata accessor for RequestKey(0);
  v2 = *(v0 - 8);
  return v0 - 8;
}

unint64_t sub_197949504(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_19798C868(a5, a6);
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
    result = sub_197A87E98();
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

uint64_t sub_197949604(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_13_3()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = *(v0[11] + 16);
}

uint64_t OUTLINED_FUNCTION_13_4()
{
  v2 = *(v0 - 136);

  return sub_197A87F28();
}

void OUTLINED_FUNCTION_13_5(void *a1@<X8>)
{
  v5 = *(v1 - 256);
  v6 = *(v4 - 352);
  *a1 = v5;
  a1[1] = v6;
  v7 = v2 + *(v3 + 44);
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v2 + *(v3 + 48)) = 0;
}

uint64_t sub_197949738(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    if (!HIDWORD(a1))
    {
      v8 = a1 & 0xFFFFF800;
      v9 = 55296;
      if (v8 != 55296)
      {
        v8 = a1 >> 16;
        if (a1 >> 16 > 0x10)
        {
          __break(1u);
        }

        else if (a1 <= 0x7F)
        {
          v10 = a1 + 1;
          goto LABEL_12;
        }

        v9 = (a1 & 0x3F) << 8;
        if (a1 >= 0x800)
        {
          goto LABEL_33;
        }

        v10 = (a1 >> 6) + v9 + 33217;
        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (!a1)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_5;
  }

  if (!a4)
  {
LABEL_36:
    result = sub_197A87ED8();
    __break(1u);
    return result;
  }

  if (qword_1ED880398 != -1)
  {
    goto LABEL_26;
  }

LABEL_5:
  v6 = off_1ED8803A0;
  os_unfair_lock_lock(off_1ED8803A0 + 6);
  if (*(v6 + 2))
  {
    v7 = *(v6 + 2);
    goto LABEL_19;
  }

  v13 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  *(v6 + 2) = v13;
  if (!v13)
  {
LABEL_31:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_33:
      v17 = (v9 | (a1 >> 6) & 0x3F) << 8;
      v18 = (a1 >> 18) + ((v17 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
      v19 = (a1 >> 12) + v17 + 8487393;
      if (v8)
      {
        v10 = v18;
      }

      else
      {
        v10 = v19;
      }

LABEL_12:
      *description = (v10 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v10) & 0x18)));
      if (!a4)
      {
        goto LABEL_36;
      }

      if (qword_1ED880398 != -1)
      {
        swift_once();
      }

      v11 = off_1ED8803A0;
      os_unfair_lock_lock(off_1ED8803A0 + 6);
      if (*(v11 + 2))
      {
        break;
      }

      v15 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
      *(v11 + 2) = v15;
      if (v15)
      {
        v12 = v15;
        swift_unknownObjectRetain_n();
        goto LABEL_22;
      }
    }

    v12 = *(v11 + 2);
LABEL_22:
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v11 + 6);
    v14 = _os_activity_create(a4, description, v12, OS_ACTIVITY_FLAG_DEFAULT);
    goto LABEL_23;
  }

  v7 = v13;
  swift_unknownObjectRetain_n();
LABEL_19:
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v6 + 6);
  v14 = _os_activity_create(a4, a1, v7, OS_ACTIVITY_FLAG_DEFAULT);
LABEL_23:
  swift_unknownObjectRelease();
  return v14;
}

unint64_t sub_1979499EC(uint64_t a1, uint64_t a2)
{
  v15[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v15 - v7;
  v9 = ~(-1 << *(v2 + 32));
  for (i = a2 & v9; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    v11 = *(v2 + 48);
    v12 = *(v5 + 72);
    sub_197A44A54();
    v13 = _s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0();
    sub_197947A40(v8, &qword_1EAF49130, &qword_197A969C0);
    if (v13)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_197949B70(unsigned __int8 a1, char a2)
{
  v2 = 0x646564616F6C6E75;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x4D63696D616E7964;
    }

    else
    {
      v4 = 0x646564616F6CLL;
    }

    if (v3 == 1)
    {
      v5 = 0xEB0000000065646FLL;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x646564616F6C6E75;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x4D63696D616E7964;
    }

    else
    {
      v2 = 0x646564616F6CLL;
    }

    if (a2 == 1)
    {
      v6 = 0xEB0000000065646FLL;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_86();
  }

  return v8 & 1;
}

uint64_t InferenceProviderAssetDescriptor.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_197A878A8();
  return OUTLINED_FUNCTION_22();
}

uint64_t InferenceProviderDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_197A879B8();
  if (v4)
  {
    MEMORY[0x19A8EB5D0](1);
    OUTLINED_FUNCTION_59_1();
    sub_197A879B8();
  }

  else
  {
    MEMORY[0x19A8EB5D0](0);
  }

  return sub_197A88328();
}

uint64_t sub_197949D1C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelXPCSender.createSession(metadata:alreadyLockedInferenceProvider:)();
}

uint64_t sub_197949DD0()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_10(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = *(v0 + v9);
  v15 = *(v0 + v10);
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_197960E38;

  return sub_197949F18(v4, v12, v13, v0 + v7, v14, v15, v0 + v11);
}

uint64_t sub_197949F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *MEMORY[0x1E69E9840];
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  v9 = *(*(type metadata accessor for Session.Metadata(0) - 8) + 64) + 15;
  v7[30] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0) - 8) + 64) + 15;
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_19794A034, a5, 0);
}

uint64_t sub_19794A034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_57();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_72();
  a22 = v24;
  a13 = *MEMORY[0x1E69E9840];
  type metadata accessor for _OSActivity();
  *(v24 + 272) = swift_initStackObject();
  *(v24 + 280) = sub_1979489D4("Client creating session", 23, 2);
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v27 = *(v24 + 264);
  v28 = *(v24 + 208);
  v29 = sub_197A87608();
  __swift_project_value_buffer(v29, qword_1ED880220);
  sub_197A44A54();
  v30 = sub_197A875E8();
  v31 = sub_197A87D78();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v24 + 264);
  if (v32)
  {
    v34 = *(v24 + 256);
    v35 = OUTLINED_FUNCTION_56();
    v36 = OUTLINED_FUNCTION_93_0();
    a12 = v36;
    *v35 = 136315138;
    OUTLINED_FUNCTION_140();
    sub_197A44A54();
    v37 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v39 = v38;
    sub_197947A40(v34, &qword_1EAF49130, &qword_197A969C0);
    v40 = OUTLINED_FUNCTION_140();
    sub_197947A40(v40, v41, &qword_197A969C0);
    v42 = sub_197948834(v37, v39, &a12);

    *(v35 + 4) = v42;
    OUTLINED_FUNCTION_142_2(&dword_197941000, v43, v44, "Sending create session for %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_37();
  }

  else
  {

    sub_197947A40(v33, &qword_1EAF49130, &qword_197A969C0);
  }

  v45 = *(v24 + 240);
  v46 = *(v24 + 224);
  sub_197947C44(*(v24 + 216) + 112, v24 + 56);
  v47 = *(v24 + 88);
  __swift_project_boxed_opaque_existential_1((v24 + 56), *(v24 + 80));
  Session.metadata.getter();
  v48 = *(v24 + 232);
  v49 = *(v48 + 32);
  v50 = *(v48 + 16);
  *(v24 + 96) = *v48;
  *(v24 + 112) = v50;
  *(v24 + 128) = v49;
  v51 = *(v47 + 32);
  OUTLINED_FUNCTION_23();
  v70 = v53 + *v53;
  v71 = v52;
  v55 = *(v54 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v24 + 288) = v56;
  *v56 = v57;
  v56[1] = sub_197962918;
  v59 = *(v24 + 240);
  v58 = *(v24 + 248);
  v60 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_30_0();

  return v67(v61, v62, v63, v64, v65, v66, v67, v68, v70, v71, a11, a12, a13, a14, a15, a16);
}

uint64_t OUTLINED_FUNCTION_96_0(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = *(v2 - 344);
  return result;
}

BOOL OUTLINED_FUNCTION_96_1()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_96_4()
{

  return swift_storeEnumTagMultiPayload();
}

unint64_t OUTLINED_FUNCTION_96_6()
{
  v3 = *(v1 - 96);
  *v0 = *(v1 - 112);
  v0[1] = v3;
  *(v1 - 65) = 1;

  return sub_19795F5C4();
}

uint64_t ModelXPCSender.createSession(metadata:alreadyLockedInferenceProvider:)()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v5 = OUTLINED_FUNCTION_250(v3, v4);
  SessionRequest = type metadata accessor for ModelXPCRequest.CreateSessionRequest(v5);
  *(v0 + 40) = SessionRequest;
  OUTLINED_FUNCTION_28(SessionRequest);
  v8 = *(v7 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_78_0();
  Session = type metadata accessor for ModelXPCRequest.CreateSessionRequest.Response(0);
  OUTLINED_FUNCTION_28(Session);
  v11 = *(v10 + 64);
  *(v0 + 56) = OUTLINED_FUNCTION_78_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v12);
  v14 = *(v13 + 64);
  *(v0 + 64) = OUTLINED_FUNCTION_78_0();
  v15 = type metadata accessor for Session.Metadata(0);
  *(v0 + 72) = v15;
  OUTLINED_FUNCTION_28(v15);
  v17 = *(v16 + 64);
  *(v0 + 80) = OUTLINED_FUNCTION_78_0();
  v18 = *(v2 + 16);
  *(v0 + 88) = *v2;
  *(v0 + 104) = v18;
  *(v0 + 136) = *(v2 + 32);
  v19 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_19794A620(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_197A878A8();

    return sub_197A878A8();
  }

  return result;
}

uint64_t sub_19794A664(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_133_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19794A6A8()
{
  v1 = v0[6].i64[0];
  if (*(v1 + 192))
  {
    v2 = v0[9].i64[0];
    v3 = v0[5].i64[1];
    v4 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
    v5 = sub_197A87298();
    OUTLINED_FUNCTION_3_14(v5);
    (*(v6 + 16))(v2, v3 + v4);
    os_unfair_lock_lock((v1 + 200));
    v7 = *(v1 + 208);
    if (*(v7 + 16) && (v8 = v0[9].i64[0], v9 = sub_19794B040(), (v10 & 1) != 0))
    {
      v11 = *(v7 + 56) + 48 * v9;
      v12 = *v11;
      v0[10].i64[1] = *v11;
      v13 = *(v11 + 8);
      v0[11].i64[0] = v13;
      v14 = *(v11 + 16);
      v0[11].i64[1] = v14;
      v15 = *(v11 + 24);
      v0[12].i64[0] = v15;
      v16 = *(v11 + 32);
      v0[12].i64[1] = v16;
      v17 = *(v11 + 40);
      v0[3].i8[9] = v17;

      OUTLINED_FUNCTION_98_4();
      sub_19794A620(v18, v19);
      os_unfair_lock_unlock((v1 + 200));
      v20.i64[0] = v13;
      v20.i64[1] = v14;
      v21.i64[0] = v15;
      v21.i64[1] = v16;
      if (v12)
      {
        if (v12 != 1)
        {
          v49 = qword_1ED880218;

          if (v49 != -1)
          {
            OUTLINED_FUNCTION_0_21();
          }

          v50 = v0[8].i64[1];
          v51 = v0[9].i64[0];
          v52 = sub_197A87608();
          __swift_project_value_buffer(v52, qword_1ED880220);
          sub_197A44A54();
          v53 = sub_197A875E8();
          v54 = sub_197A87D38();
          v55 = os_log_type_enabled(v53, v54);
          v56 = v0[8].i64[1];
          if (v55)
          {
            v57 = v0[8].i64[0];
            v58 = OUTLINED_FUNCTION_56();
            v79 = OUTLINED_FUNCTION_93_0();
            *v58 = 136315138;
            OUTLINED_FUNCTION_140();
            sub_197A44A54();
            _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
            sub_197947A40(v57, &qword_1EAF49130, &qword_197A969C0);
            v59 = OUTLINED_FUNCTION_140();
            sub_197947A40(v59, v60, &qword_197A969C0);
            v61 = OUTLINED_FUNCTION_108_3();
            v64 = sub_197948834(v61, v62, v63);

            *(v58 + 4) = v64;
            _os_log_impl(&dword_197941000, v53, v54, "Waiting for creation of %s", v58, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_37();
          }

          else
          {

            sub_197947A40(v56, &qword_1EAF49130, &qword_197A969C0);
          }

          v65 = *(MEMORY[0x1E69E86A8] + 4);
          v66 = swift_task_alloc();
          v0[13].i64[0] = v66;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
          OUTLINED_FUNCTION_134_3();
          *v66 = v67;
          OUTLINED_FUNCTION_49_10();
          OUTLINED_FUNCTION_133_3();
          goto LABEL_12;
        }

        v76 = 0;
        v77 = 0;
        v74 = 0;
        v75 = 0;
        v73 = 0;
      }

      else
      {
        v76 = v14;
        v77 = v13;
        v74 = v16;
        v75 = v15;
        v70 = v21;
        v72 = v20;
        sub_19794A620(v13, v14);
        v21 = v70;
        v20 = v72;
        v73 = v17;
      }
    }

    else
    {
      os_unfair_lock_unlock((v1 + 200));
      v17 = 0;
      v76 = 0;
      v77 = 0;
      v74 = 0;
      v75 = 0;
      v73 = 0;
      v20 = 0uLL;
      v21 = 0uLL;
      v12 = 1;
    }

    v0[16].i64[0] = v12;
    v0[14] = vextq_s8(v21, v21, 8uLL);
    v0[15] = vextq_s8(v20, v20, 8uLL);
    v0[3].i8[10] = v17;
    v71 = v0[9].i64[0];
    v27 = v0[7].i64[1];
    v28 = v0[8].i64[0];
    v30 = v0[6].i64[1];
    v29 = v0[7].i64[0];
    v31 = v0[6].i64[0];
    v69 = v0[5].i64[1];
    v32 = sub_197A87C08();
    __swift_storeEnumTagSinglePayload(v30, 1, 1, v32);
    sub_197A44A54();
    OUTLINED_FUNCTION_58_9();
    v36 = sub_19794A664(v33, v34, v35);
    v37 = (v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    *(v39 + 16) = v31;
    *(v39 + 24) = v36;
    sub_19794BE44();
    *(v39 + v37) = v31;
    *(v39 + v38) = v69;
    v40 = v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v40 = v77;
    *(v40 + 8) = v76;
    *(v40 + 16) = v75;
    *(v40 + 24) = v74;
    *(v40 + 32) = v73;
    swift_retain_n();

    OUTLINED_FUNCTION_124_4();
    sub_19794A620(v41, v42);
    OUTLINED_FUNCTION_47_8();
    v43 = sub_1979CC804();
    v0[16].i64[1] = v43;
    os_unfair_lock_lock((v1 + 200));
    v0[1].i64[0] = v43;
    v0[1].i64[1] = v77;
    v0[2].i64[0] = v76;
    v0[2].i64[1] = v75;
    v0[3].i64[0] = v74;
    v0[3].i8[8] = v73;

    v44 = *(v1 + 208);
    swift_isUniquelyReferenced_nonNull_native();
    v78 = *(v1 + 208);
    sub_19794BBD0();
    *(v1 + 208) = v78;
    os_unfair_lock_unlock((v1 + 200));
    v45 = *(MEMORY[0x1E69E86A8] + 4);
    v46 = swift_task_alloc();
    v0[17].i64[0] = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
    OUTLINED_FUNCTION_134_3();
    *v46 = v47;
    OUTLINED_FUNCTION_50_9();
    OUTLINED_FUNCTION_133_3();
LABEL_12:
    OUTLINED_FUNCTION_138_1();

    return MEMORY[0x1EEE6DA10]();
  }

  *(v1 + 192) = 1;
  v22 = *(v1 + 144);
  __swift_project_boxed_opaque_existential_1((v1 + 112), *(v1 + 136));
  OUTLINED_FUNCTION_116();
  v0[9].i64[1] = sub_1979DA678();
  OUTLINED_FUNCTION_121_3();
  v0[10].i64[0] = swift_allocObject();
  swift_weakInit();

  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_138_1();

  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

uint64_t sub_19794ACC0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_121_3();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_19794ACF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 80);
  v5 = (v3 + 32) & ~v3;
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = sub_197A87298();
  OUTLINED_FUNCTION_6(v10);
  (*(v11 + 8))(v0 + v5);
  v12 = *(v0 + v6);

  v13 = *(v0 + v7);

  if (*(v0 + v8 + 8))
  {

    v14 = *(v0 + v8 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, v8 + 33, v3 | 7);
}

uint64_t OUTLINED_FUNCTION_104_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;
  *v2 = v3;
}

uint64_t OUTLINED_FUNCTION_104_5()
{
  result = type metadata accessor for RequestKey(0);
  v1 = *(result + 20);
  return result;
}

void OUTLINED_FUNCTION_113_2()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[18];
  v9 = v0[19];
}

void OUTLINED_FUNCTION_113_4()
{
}

uint64_t OUTLINED_FUNCTION_129_0()
{
  v2 = *(v0 + 168);
  v3 = *(v0 + 48);

  return __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
}

uint64_t OUTLINED_FUNCTION_99@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_197A878A8();
}

void OUTLINED_FUNCTION_130_0()
{
  v3 = v0[12];
  v4 = v0[9];
  v0[2] = v1;

  JUMPOUT(0x19A8EBBD0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_133_2()
{

  return sub_197A877A8();
}

__n128 OUTLINED_FUNCTION_133_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v13 = (v9 + *(a1 + 20));
  result = a9;
  *v13 = a9;
  v13[1].n128_u64[0] = v10;
  v13[1].n128_u64[1] = v11;
  v13[2].n128_u8[0] = v12;
  return result;
}

unint64_t sub_19794B040()
{
  OUTLINED_FUNCTION_87_7();
  sub_197A87298();
  OUTLINED_FUNCTION_14_11();
  sub_19794A664(v0, 255, v1);
  OUTLINED_FUNCTION_145_2();
  sub_197A88358();
  v2 = OUTLINED_FUNCTION_105();

  return sub_1979499EC(v2, v3);
}

uint64_t sub_19794B0C4()
{
  OUTLINED_FUNCTION_71();
  v4 = OUTLINED_FUNCTION_114(v1, v2, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_6(v6);
  v8 = *(v7 + 32);
  v9 = OUTLINED_FUNCTION_22();
  v10(v9);
  return v0;
}

uint64_t sub_19794B118()
{
  OUTLINED_FUNCTION_71();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_22();
  v7(v6);
  return v0;
}

uint64_t sub_19794B170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_19794B1D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_22();
  v8(v7);
  return a2;
}

uint64_t sub_19794B22C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_54_4();
  v5 = v4(v3);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return a2;
}

uint64_t sub_19794B284()
{
  OUTLINED_FUNCTION_71();
  v2 = v1(0);
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v0;
}

uint64_t sub_19794B2DC()
{
  OUTLINED_FUNCTION_71();
  v2 = v1(0);
  OUTLINED_FUNCTION_3_14(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v0;
}

void OUTLINED_FUNCTION_140_1()
{
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
}

uint64_t OUTLINED_FUNCTION_140_3(uint64_t result)
{
  *(v1 + *(result + 20)) = 0;
  v4 = v3 + *(v2 + 60);
  return result;
}

void Session.metadata.getter()
{
  OUTLINED_FUNCTION_92();
  v0 = type metadata accessor for ModelManagerError();
  v1 = OUTLINED_FUNCTION_6(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  sub_197944528();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_19794B284();
    sub_1979548FC(&qword_1ED8816D8, type metadata accessor for ModelManagerError);
    swift_willThrowTypedImpl();
    swift_allocError();
  }

  sub_19794B284();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_19794B554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_121();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_122();
  a20 = v22;
  if (sub_197A87C68())
  {
    v25 = *(v22 + 80);
    v26 = *(v22 + 24);
    v27 = *(v22 + 32);
    OUTLINED_FUNCTION_183();
    sub_1979557E8();
    v28 = sub_197A875E8();
    sub_197A87D78();
    OUTLINED_FUNCTION_148_0();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v22 + 80);
    if (v30)
    {
      v32 = *(v22 + 64);
      v33 = *(v22 + 72);
      v34 = OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_93_0();
      OUTLINED_FUNCTION_124_2();
      *v34 = 136315138;
      v35 = *(v33 + 36);
      sub_197944528();
      v36 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
      v38 = v37;
      sub_197947900(v32, &qword_1EAF49130);
      OUTLINED_FUNCTION_188();
      v39 = sub_197948834(v36, v38, &a10);

      *(v34 + 4) = v39;
      OUTLINED_FUNCTION_31(&dword_197941000, v40, v41, "Task for create session %s cancelled before sending");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_29();
    }

    else
    {

      OUTLINED_FUNCTION_188();
    }

    type metadata accessor for ModelManagerError();
    OUTLINED_FUNCTION_0_14();
    sub_197955F04(v60, v61);
    OUTLINED_FUNCTION_133_0();
    v62 = OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_75_0(v62, v63);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v64 = *(v22 + 80);
    v66 = *(v22 + 56);
    v65 = *(v22 + 64);
    v67 = *(v22 + 48);

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_142();

    return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v42 = *(v22 + 104);
    v43 = *(v22 + 112);
    v45 = *(v22 + 88);
    v44 = *(v22 + 96);
    v47 = *(v22 + 40);
    v46 = *(v22 + 48);
    v48 = *(v22 + 24);
    v49 = *(v22 + 136);
    OUTLINED_FUNCTION_183();
    sub_1979557E8();
    v50 = v46 + *(v47 + 20);
    *v50 = v45;
    *(v50 + 8) = v44;
    *(v50 + 16) = v42;
    *(v50 + 24) = v43;
    *(v50 + 32) = v49;
    sub_19794A620(v45, v44);
    swift_task_alloc();
    OUTLINED_FUNCTION_14();
    *(v22 + 120) = v51;
    *v51 = v52;
    v51[1] = sub_197962758;
    v54 = *(v22 + 48);
    v53 = *(v22 + 56);
    v55 = *(v22 + 32);
    OUTLINED_FUNCTION_142();

    return sub_19795644C(v56, v57);
  }
}

void OUTLINED_FUNCTION_118_0()
{
  *(v1 + 14) = v0;
  *(v1 + 18) = 2112;

  JUMPOUT(0x19A8EBBD0);
}

BOOL OUTLINED_FUNCTION_118_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_55_1(uint64_t a1)
{

  return sub_197947A40(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_55_2()
{
}

void OUTLINED_FUNCTION_55_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_55_4(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_storeEnumTagMultiPayload();
}

unint64_t OUTLINED_FUNCTION_55_6()
{
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v1 - 96) = *v0;
  *(v1 - 88) = v3;
  *(v1 - 84) = v4;
  *(v1 - 80) = v5;
  *(v1 - 72) = v6;
  *(v1 - 97) = 0;

  return sub_1979C437C();
}

void OUTLINED_FUNCTION_56_2(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  JUMPOUT(0x19A8EBE00);
}

uint64_t OUTLINED_FUNCTION_56_4()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_61_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_112_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 32);
}

uint64_t OUTLINED_FUNCTION_112_3()
{
  v1 = *(*(v0 - 120) + 8);
  result = *(v0 - 152);
  v3 = *(v0 - 144);
  return result;
}

uint64_t sub_19794BA28()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_19_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_7(v1);
  OUTLINED_FUNCTION_112();

  return sub_19794BAB4(v3, v4, v5, v6, v7);
}

uint64_t sub_19794BAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return OUTLINED_FUNCTION_2_2();
}

uint64_t sub_19794BAC8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(OUTLINED_FUNCTION_27_9() + 8);
  OUTLINED_FUNCTION_26();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_75(v7);
  *v8 = v9;
  v8[1] = sub_197963824;
  v10 = OUTLINED_FUNCTION_5(*(v0 + 24));

  return v11(v10);
}

void sub_19794BBD0()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_24_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v2 = OUTLINED_FUNCTION_6(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_28_7();
  v5 = sub_19794B040();
  OUTLINED_FUNCTION_5_8(v5, v6);
  if (v8)
  {
    __break(1u);
LABEL_11:
    sub_197A88288();
    __break(1u);
    return;
  }

  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1F8, &qword_197A969C8);
  OUTLINED_FUNCTION_29_6();
  if (sub_197A87EB8())
  {
    OUTLINED_FUNCTION_78_6();
    sub_19794B040();
    OUTLINED_FUNCTION_47_5();
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  if (v9)
  {
    v11 = *(*v0 + 56);
    OUTLINED_FUNCTION_66();

    sub_197A25E60(v12, v13);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_58_6();
    sub_197944580(v15, v16, v17, v18);
    OUTLINED_FUNCTION_51_7();
    sub_19794BD0C(v19, v20, v21, v22);
    OUTLINED_FUNCTION_66();
  }
}

void sub_19794BD0C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v9);
  sub_19794BDF8(a2, v8 + *(v10 + 72) * a1, &qword_1EAF49130, &qword_197A969C0);
  v11 = (a4[7] + 48 * a1);
  *(v11 + 25) = *(a3 + 25);
  v12 = a3[1];
  *v11 = *a3;
  v11[1] = v12;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
    OUTLINED_FUNCTION_165();
  }
}

uint64_t sub_19794BDF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_182(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return v4;
}

uint64_t sub_19794BE44()
{
  OUTLINED_FUNCTION_71();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3_14(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_22();
  v7(v6);
  return v0;
}

unint64_t OUTLINED_FUNCTION_26_0()
{

  return sub_19798B42C(sub_19798E47C, v1, v0);
}

uint64_t OUTLINED_FUNCTION_26_1()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 104);

  return sub_197A880E8();
}

uint64_t OUTLINED_FUNCTION_26_2()
{
  result = *(v0 - 120);
  v2 = *(v0 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_8(unint64_t *a1)
{

  return sub_197A7E858(a1);
}

uint64_t sub_19794BF9C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_197A87118();
  result = OUTLINED_FUNCTION_70(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 8) = (a2 - 1);
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
    v14 = OUTLINED_FUNCTION_70(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[9];
    }

    else
    {
      v11 = sub_197A87298();
      v16 = a4[10];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_19794C0C8()
{
  OUTLINED_FUNCTION_121_4();
  v1 = type metadata accessor for Session.Metadata(0);
  OUTLINED_FUNCTION_70(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_114_1();

    return __swift_getEnumTagSinglePayload(v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_64_9();
    return OUTLINED_FUNCTION_172_0(v7);
  }
}

uint64_t sub_19794C164()
{
  OUTLINED_FUNCTION_17_4();
  v4 = type metadata accessor for Session.Metadata(0);
  result = OUTLINED_FUNCTION_70(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_53_2();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_99_2()
{
  v2 = *(v0 + 176);
  v3 = *(v0 + 56);

  return __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
}

uint64_t sub_19794C2CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_197A87118();
  v7 = OUTLINED_FUNCTION_70(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_18_0(*(a1 + a3[5] + 8));
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
    v13 = OUTLINED_FUNCTION_70(v12);
    if (*(v14 + 84) == a2)
    {
      v9 = v13;
      v15 = a3[9];
    }

    else
    {
      v9 = sub_197A87298();
      v15 = a3[10];
    }

    v10 = a1 + v15;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

void ModelXPCRequest.CreateSessionRequest.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  v4 = type metadata accessor for Session.Metadata(0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A6D8, &qword_197A98520);
  OUTLINED_FUNCTION_2(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_88_0();
  SessionRequest = type metadata accessor for ModelXPCRequest.CreateSessionRequest(v12);
  v14 = OUTLINED_FUNCTION_6(SessionRequest);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_83_1();
  v17 = v3[4];
  OUTLINED_FUNCTION_113_0(v3, v3[3]);
  sub_197954810();
  OUTLINED_FUNCTION_144_4();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    LOBYTE(v22) = 0;
    OUTLINED_FUNCTION_89_6();
    sub_197954374(v18);
    OUTLINED_FUNCTION_137_3();
    sub_197A87FD8();
    sub_197A49444();
    sub_19795F8C8();
    OUTLINED_FUNCTION_137_3();
    sub_197A87F88();
    v19 = OUTLINED_FUNCTION_67_0();
    v20(v19);
    v21 = v1 + *(SessionRequest + 20);
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    sub_197953C7C();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    sub_19795130C(v1, type metadata accessor for ModelXPCRequest.CreateSessionRequest);
  }

  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_93();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Session.requestPrewarm(metadata:)(Swift::OpaquePointer metadata)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  sub_197A87C08();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = swift_allocObject();
  v11[2]._rawValue = 0;
  v11[3]._rawValue = 0;
  v11[4]._rawValue = v1;
  v11[5]._rawValue = metadata._rawValue;

  sub_197A878A8();
  OUTLINED_FUNCTION_16_4();
  sub_1979CC804();
}

uint64_t sub_19794C77C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19794C7C4()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_8_0(v5);
  *v6 = v7;
  v6[1] = sub_197960E38;
  v8 = OUTLINED_FUNCTION_81();

  return sub_19794C86C(v8, v9, v10, v4, v3);
}

uint64_t sub_19794C86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_19794C88C, 0, 0);
}

uint64_t sub_19794C88C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = *(v4 + 32);
  v12 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_75(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_11_6(v8);

  return v12(v10, v2, v3, v4);
}

uint64_t sub_19794C9B8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelServiceClient.prewarmSession(session:metadata:)();
}

uint64_t sub_19794CA60()
{
  OUTLINED_FUNCTION_9();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10_2();
  v0[21] = swift_initStackObject();
  v0[22] = sub_1979489D4("Client prewarming session", 25, 2);
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_197964CDC;
  v3 = v0[18];
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_32_1(v0[16]);

  return ModelServiceClient.establishment(of:)();
}

uint64_t ModelServiceClient.prewarmSession(session:metadata:)()
{
  OUTLINED_FUNCTION_18();
  v12 = *MEMORY[0x1E69E9840];
  v1[17] = v2;
  v1[18] = v0;
  v1[16] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v4);
  v6 = *(v5 + 64);
  v1[19] = OUTLINED_FUNCTION_90_4();
  v1[20] = swift_task_alloc();
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void OUTLINED_FUNCTION_42_0()
{

  JUMPOUT(0x19A8EBE00);
}

uint64_t OUTLINED_FUNCTION_44_5@<X0>(void *a1@<X8>)
{
  result = *(v2 - 360);
  *a1 = *(v1 - 256);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_44_6()
{
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[10];
}

uint64_t OUTLINED_FUNCTION_44_10(unint64_t *a1)
{

  return sub_197A7E858(a1);
}

void ModelXPCRequest.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_92();
  a19 = v22;
  a20 = v23;
  v380 = v21;
  a10 = v20;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A458, &qword_197A98370);
  v27 = OUTLINED_FUNCTION_2(v26);
  v375 = v28;
  v376 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_30();
  v374 = v32;
  started = type metadata accessor for ModelXPCRequest.StartMonitoringInferences(0);
  v33 = OUTLINED_FUNCTION_6(started);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_6_0();
  v373 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A460, &qword_197A98378);
  v38 = OUTLINED_FUNCTION_2(v37);
  v370 = v39;
  v371 = v38;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_30();
  v369 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A468, &qword_197A98380);
  v45 = OUTLINED_FUNCTION_2(v44);
  v367 = v46;
  v368 = v45;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_30();
  v365 = v50;
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A470, &qword_197A98388);
  OUTLINED_FUNCTION_2(v366);
  v364[2] = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_30();
  v364[1] = v55;
  ModelInstance = type metadata accessor for ModelXPCRequest.FetchModelInstance(0);
  v56 = OUTLINED_FUNCTION_6(ModelInstance);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A478, &qword_197A98390);
  OUTLINED_FUNCTION_2_1(v60, &a16);
  v361 = v61;
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A480, &qword_197A98398);
  OUTLINED_FUNCTION_2_1(v66, &a13);
  v358 = v67;
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A488, &qword_197A983A0);
  OUTLINED_FUNCTION_2_1(v72, &a10);
  v355 = v73;
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A490, &qword_197A983A8);
  OUTLINED_FUNCTION_2_1(v78, v383);
  v352 = v79;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A498, &qword_197A983B0);
  OUTLINED_FUNCTION_2_1(v84, &v380);
  v349 = v85;
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4A0, &qword_197A983B8);
  OUTLINED_FUNCTION_2_1(v90, &v377);
  v346 = v91;
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v95);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4A8, &qword_197A983C0);
  OUTLINED_FUNCTION_2_1(v96, &v374);
  v343 = v97;
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v101);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4B0, &qword_197A983C8);
  OUTLINED_FUNCTION_2_1(v102, &v371);
  v340 = v103;
  v105 = *(v104 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v107);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4B8, &qword_197A983D0);
  OUTLINED_FUNCTION_2_1(v108, &v368);
  v337 = v109;
  v111 = *(v110 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v113);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4C0, &qword_197A983D8);
  OUTLINED_FUNCTION_2_1(v114, &v365);
  v334 = v115;
  v117 = *(v116 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v119);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4C8, &qword_197A983E0);
  OUTLINED_FUNCTION_2_1(v120, v364);
  v331 = v121;
  v123 = *(v122 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v125);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4D0, &qword_197A983E8);
  OUTLINED_FUNCTION_2_1(v126, &v362);
  v329 = v127;
  v129 = *(v128 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_30();
  v132 = OUTLINED_FUNCTION_15_5(v131);
  v325 = type metadata accessor for ModelXPCRequest.ReleaseRequest(v132);
  v133 = OUTLINED_FUNCTION_6(v325);
  v135 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v136);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4D8, &qword_197A983F0);
  OUTLINED_FUNCTION_2_1(v137, &v356);
  v323 = v138;
  v140 = *(v139 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v141);
  OUTLINED_FUNCTION_30();
  v143 = OUTLINED_FUNCTION_15_5(v142);
  v320 = type metadata accessor for ModelXPCRequest.AcquireRequest(v143);
  v144 = OUTLINED_FUNCTION_6(v320);
  v146 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v147);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4E0, &qword_197A983F8);
  OUTLINED_FUNCTION_2_1(v148, &v351);
  v319 = v149;
  v151 = *(v150 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v152);
  OUTLINED_FUNCTION_30();
  v154 = OUTLINED_FUNCTION_15_5(v153);
  v318 = type metadata accessor for ModelXPCRequest.CancelSessionRequest(v154);
  v155 = OUTLINED_FUNCTION_6(v318);
  v157 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v158);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4E8, &qword_197A98400);
  OUTLINED_FUNCTION_2_1(v159, &v346);
  v317 = v160;
  v162 = *(v161 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v163);
  OUTLINED_FUNCTION_30();
  v165 = OUTLINED_FUNCTION_15_5(v164);
  v316 = type metadata accessor for ModelXPCRequest.PrewarmSession(v165);
  v166 = OUTLINED_FUNCTION_6(v316);
  v168 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v166);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v169);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4F0, &qword_197A98408);
  OUTLINED_FUNCTION_2_1(v170, &v341);
  v315 = v171;
  v173 = *(v172 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v174);
  OUTLINED_FUNCTION_30();
  v176 = OUTLINED_FUNCTION_15_5(v175);
  v314 = type metadata accessor for ModelXPCRequest.DeleteSessionRequest(v176);
  v177 = OUTLINED_FUNCTION_6(v314);
  v179 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v177);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v180);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4F8, &qword_197A98410);
  OUTLINED_FUNCTION_2_1(v181, &v336);
  v313 = v182;
  v184 = *(v183 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v185);
  OUTLINED_FUNCTION_30();
  v187 = OUTLINED_FUNCTION_15_5(v186);
  SessionRequest = type metadata accessor for ModelXPCRequest.CreateSessionRequest(v187);
  v188 = OUTLINED_FUNCTION_6(SessionRequest);
  v190 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v188);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v191);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A500, &qword_197A98418);
  OUTLINED_FUNCTION_2_1(v192, &v331);
  v311 = v193;
  v195 = *(v194 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v196);
  OUTLINED_FUNCTION_30();
  v198 = OUTLINED_FUNCTION_15_5(v197);
  v310 = type metadata accessor for ModelXPCRequest.CancelRequest(v198);
  v199 = OUTLINED_FUNCTION_6(v310);
  v201 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v199);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v202);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A508, &qword_197A98420);
  OUTLINED_FUNCTION_2_1(v203, &v326);
  v309 = v204;
  v206 = *(v205 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v207);
  OUTLINED_FUNCTION_30();
  v209 = OUTLINED_FUNCTION_15_5(v208);
  v308 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest(v209);
  v210 = OUTLINED_FUNCTION_6(v308);
  v212 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v210);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v213);
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A510, &qword_197A98428);
  OUTLINED_FUNCTION_2_1(v214, &v321);
  v307[1] = v215;
  v217 = *(v216 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v218);
  v220 = v307 - v219;
  v221 = type metadata accessor for ModelXPCRequest.ExecuteRequest(0);
  v222 = OUTLINED_FUNCTION_6(v221);
  v224 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v222);
  OUTLINED_FUNCTION_1_0();
  v227 = v226 - v225;
  v228 = type metadata accessor for ModelXPCRequest(0);
  v229 = OUTLINED_FUNCTION_6(v228);
  v231 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v229);
  OUTLINED_FUNCTION_1_0();
  v234 = (v233 - v232);
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A518, &qword_197A98430);
  v378 = OUTLINED_FUNCTION_2(v235);
  v379 = v236;
  v238 = *(v237 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v239);
  OUTLINED_FUNCTION_64_1();
  v240 = *(v25 + 24);
  v241 = *(v25 + 32);
  v242 = OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_113_0(v242, v243);
  sub_197951CA4();
  OUTLINED_FUNCTION_48_8();
  sub_197A883D8();
  sub_197953C7C();
  OUTLINED_FUNCTION_91();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_145_3(&v323);
      LOBYTE(v381) = 1;
      sub_197A49EC8();
      OUTLINED_FUNCTION_11_8(&v324);
      OUTLINED_FUNCTION_93_6();
      sub_197954374(v271);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_74_9(&v326);
      OUTLINED_FUNCTION_78_8(&v322);
      v272 = OUTLINED_FUNCTION_24_12(&v325);
      v273(v272);
      v261 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest;
      goto LABEL_30;
    case 2u:
      OUTLINED_FUNCTION_145_3(&v328);
      LOBYTE(v381) = 2;
      sub_197A49E74();
      OUTLINED_FUNCTION_11_8(&v329);
      OUTLINED_FUNCTION_96_5();
      sub_197954374(v262);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_74_9(&v331);
      OUTLINED_FUNCTION_78_8(&v327);
      v263 = OUTLINED_FUNCTION_24_12(&v330);
      v264(v263);
      v261 = type metadata accessor for ModelXPCRequest.CancelRequest;
      goto LABEL_30;
    case 3u:
      OUTLINED_FUNCTION_145_3(&v333);
      LOBYTE(v381) = 3;
      sub_1979512B8();
      OUTLINED_FUNCTION_11_8(&v334);
      OUTLINED_FUNCTION_95_6();
      sub_197954374(v265);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_74_9(&v336);
      OUTLINED_FUNCTION_78_8(&v332);
      v266 = OUTLINED_FUNCTION_24_12(&v335);
      v267(v266);
      v261 = type metadata accessor for ModelXPCRequest.CreateSessionRequest;
      goto LABEL_30;
    case 4u:
      OUTLINED_FUNCTION_145_3(&v338);
      LOBYTE(v381) = 4;
      sub_197966494();
      OUTLINED_FUNCTION_11_8(&v339);
      OUTLINED_FUNCTION_99_5();
      sub_197954374(v258);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_74_9(&v341);
      OUTLINED_FUNCTION_78_8(&v337);
      v259 = OUTLINED_FUNCTION_24_12(&v340);
      v260(v259);
      v261 = type metadata accessor for ModelXPCRequest.DeleteSessionRequest;
      goto LABEL_30;
    case 5u:
      OUTLINED_FUNCTION_145_3(&v343);
      LOBYTE(v381) = 5;
      sub_197964AD8();
      OUTLINED_FUNCTION_11_8(&v344);
      OUTLINED_FUNCTION_91_7();
      sub_197954374(v281);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_74_9(&v346);
      OUTLINED_FUNCTION_78_8(&v342);
      v282 = OUTLINED_FUNCTION_24_12(&v345);
      v283(v282);
      v261 = type metadata accessor for ModelXPCRequest.PrewarmSession;
      goto LABEL_30;
    case 6u:
      OUTLINED_FUNCTION_145_3(&v348);
      LOBYTE(v381) = 6;
      sub_197966C38();
      OUTLINED_FUNCTION_11_8(&v349);
      OUTLINED_FUNCTION_88_4();
      sub_197954374(v288);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_74_9(&v351);
      OUTLINED_FUNCTION_78_8(&v347);
      v289 = OUTLINED_FUNCTION_24_12(&v350);
      v290(v289);
      v261 = type metadata accessor for ModelXPCRequest.CancelSessionRequest;
      goto LABEL_30;
    case 7u:
      OUTLINED_FUNCTION_145_3(&v353);
      LOBYTE(v381) = 7;
      sub_197A49E20();
      OUTLINED_FUNCTION_11_8(&v354);
      OUTLINED_FUNCTION_94_4();
      sub_197954374(v268);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_74_9(&v356);
      OUTLINED_FUNCTION_78_8(&v352);
      v269 = OUTLINED_FUNCTION_24_12(&v355);
      v270(v269);
      v261 = type metadata accessor for ModelXPCRequest.AcquireRequest;
      goto LABEL_30;
    case 8u:
      OUTLINED_FUNCTION_145_3(&v358);
      LOBYTE(v381) = 8;
      sub_197A49DCC();
      OUTLINED_FUNCTION_11_8(&v359);
      OUTLINED_FUNCTION_87_8();
      sub_197954374(v295);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_74_9(&v362);
      OUTLINED_FUNCTION_78_8(&v357);
      v296 = OUTLINED_FUNCTION_24_12(&v361);
      v297(v296);
      v261 = type metadata accessor for ModelXPCRequest.ReleaseRequest;
      goto LABEL_30;
    case 9u:
      LOBYTE(v381) = 9;
      sub_197A49D24();
      OUTLINED_FUNCTION_11_8(&v360);
      sub_197A49D78();
      OUTLINED_FUNCTION_41_8(v364);
      p_ModelInstance = &ModelInstance;
      goto LABEL_28;
    case 0xAu:
      v291 = *v234;
      LOBYTE(v381) = 10;
      sub_197A49C7C();
      OUTLINED_FUNCTION_131_3();
      v381 = v291;
      sub_197A49CD0();
      sub_197A880E8();
      v285 = v334;
      goto LABEL_23;
    case 0xBu:
      LOBYTE(v381) = 11;
      sub_197A49BD4();
      OUTLINED_FUNCTION_11_8(&v366);
      sub_197A49C28();
      OUTLINED_FUNCTION_41_8(&v368);
      p_ModelInstance = &v367;
      goto LABEL_28;
    case 0xCu:
      LOBYTE(v381) = 12;
      sub_197A49B2C();
      OUTLINED_FUNCTION_11_8(&v369);
      sub_197A49B80();
      OUTLINED_FUNCTION_41_8(&v371);
      p_ModelInstance = &v370;
      goto LABEL_28;
    case 0xDu:
      v275 = *v234;
      v286 = v234[1];
      LOBYTE(v381) = 13;
      sub_197A49A84();
      v276 = v342;
      OUTLINED_FUNCTION_41_2();
      sub_197A88058();
      v381 = v275;
      v382 = v286;
      sub_197A49AD8();
      OUTLINED_FUNCTION_177_1(&v374);
      v277 = &v373;
      goto LABEL_19;
    case 0xEu:
      LOBYTE(v381) = 14;
      sub_197A499DC();
      OUTLINED_FUNCTION_11_8(&v375);
      sub_197A49A30();
      OUTLINED_FUNCTION_41_8(&v377);
      p_ModelInstance = &v376;
      goto LABEL_28;
    case 0xFu:
      LOBYTE(v381) = 15;
      sub_197A49934();
      OUTLINED_FUNCTION_11_8(&v378);
      sub_197A49988();
      OUTLINED_FUNCTION_41_8(&v380);
      p_ModelInstance = &v379;
      goto LABEL_28;
    case 0x10u:
      v250 = *v234;
      v249 = v234[1];
      v251 = *(v234 + 16);
      LOBYTE(v381) = 16;
      sub_197A4988C();
      v252 = v351;
      sub_197A88058();
      v381 = v250;
      v382 = v249;
      v383[0] = v251;
      sub_197A498E0();
      v253 = v353;
      sub_197A880E8();
      OUTLINED_FUNCTION_32(&v382);
      v254(v252, v253);
      OUTLINED_FUNCTION_138_2();
      v255 = OUTLINED_FUNCTION_61_3();
      goto LABEL_24;
    case 0x11u:
      v275 = *v234;
      v274 = v234[1];
      LOBYTE(v381) = 17;
      sub_197A497E4();
      v276 = v354;
      OUTLINED_FUNCTION_41_2();
      sub_197A88058();
      v381 = v275;
      v382 = v274;
      sub_197A49838();
      OUTLINED_FUNCTION_177_1(&a10);
      v277 = &a9;
LABEL_19:
      OUTLINED_FUNCTION_32(v277);
      v287(v276, v275);
      v255 = OUTLINED_FUNCTION_32_8();
      goto LABEL_24;
    case 0x12u:
      LOBYTE(v381) = 18;
      sub_197A4973C();
      OUTLINED_FUNCTION_11_8(&a11);
      sub_197A49790();
      OUTLINED_FUNCTION_41_8(&a13);
      p_ModelInstance = &a12;
      goto LABEL_28;
    case 0x13u:
      LOBYTE(v381) = 19;
      sub_197A49694();
      OUTLINED_FUNCTION_11_8(&a14);
      sub_197A496E8();
      OUTLINED_FUNCTION_41_8(&a16);
      p_ModelInstance = &a15;
LABEL_28:
      v302 = OUTLINED_FUNCTION_24_12(p_ModelInstance);
      v303(v302);
      goto LABEL_31;
    case 0x14u:
      OUTLINED_FUNCTION_145_3(&a18);
      LOBYTE(v381) = 20;
      sub_197A49640();
      OUTLINED_FUNCTION_23_11();
      sub_197A88058();
      OUTLINED_FUNCTION_92_6();
      sub_197954374(v278);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_78_8(&a17);
      v279 = OUTLINED_FUNCTION_32_8();
      v280(v279);
      v261 = type metadata accessor for ModelXPCRequest.FetchModelInstance;
      goto LABEL_30;
    case 0x15u:
      v284 = *v234;
      LOBYTE(v381) = 21;
      sub_197A49598();
      OUTLINED_FUNCTION_131_3();
      v381 = v284;
      sub_197A495EC();
      sub_197A880E8();
      v285 = v367;
LABEL_23:
      v292 = *(v285 + 8);
      v293 = OUTLINED_FUNCTION_61_3();
      v294(v293);
      OUTLINED_FUNCTION_138_2();
      v255 = OUTLINED_FUNCTION_102_3();
LABEL_24:
      v256(v255);

      goto LABEL_33;
    case 0x16u:
      v298 = *v234;
      LOBYTE(v381) = 22;
      sub_197A494F0();
      OUTLINED_FUNCTION_131_3();
      LOBYTE(v381) = v298;
      sub_197A49544();
      sub_197A880E8();
      v299 = *(v370 + 8);
      v300 = OUTLINED_FUNCTION_170_0();
      v301(v300);
      OUTLINED_FUNCTION_138_2();
      v247 = OUTLINED_FUNCTION_102_3();
      break;
    case 0x17u:
      v240 = v373;
      sub_197A49444();
      LOBYTE(v381) = 23;
      sub_197A4949C();
      OUTLINED_FUNCTION_23_11();
      sub_197A88058();
      OUTLINED_FUNCTION_84_6();
      sub_197954374(v304);
      OUTLINED_FUNCTION_40_0();
      sub_197A880E8();
      v305 = OUTLINED_FUNCTION_32_8();
      v306(v305);
      v261 = type metadata accessor for ModelXPCRequest.StartMonitoringInferences;
LABEL_30:
      sub_19795130C(v240, v261);
LABEL_31:
      OUTLINED_FUNCTION_138_2();
      v247 = OUTLINED_FUNCTION_61();
      break;
    default:
      OUTLINED_FUNCTION_102_3();
      sub_197A49444();
      LOBYTE(v381) = 0;
      sub_197A49F1C();
      OUTLINED_FUNCTION_41_2();
      sub_197A88058();
      OUTLINED_FUNCTION_101_3();
      sub_197954374(v244);
      v245 = v307[2];
      sub_197A880E8();
      OUTLINED_FUNCTION_32(&v320);
      v246(v220, v245);
      sub_19795130C(v227, type metadata accessor for ModelXPCRequest.ExecuteRequest);
      v247 = OUTLINED_FUNCTION_32_8();
      break;
  }

  v248(v247);
LABEL_33:
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_93();
}

uint64_t OUTLINED_FUNCTION_61_5(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  return sub_197945EF8((v1 - 328), a1 + 32);
}

void OUTLINED_FUNCTION_61_6()
{
  *(v0 + 216) = 0;
  *(v0 + 224) = &unk_197A967A8;
  *(v0 + 232) = 0;
}

uint64_t TaskCancellableMessage.encode(to:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  OUTLINED_FUNCTION_34_0();
  v29 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_34_0();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = (v19 - v18);
  v22 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_197A883B8();
  (*(v14 + 16))(v20, v2, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v24 = *v20;
  if (EnumCaseMultiPayload == 1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    OUTLINED_FUNCTION_2_7();
    sub_197A881F8();
  }

  else
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v26 = v20[*(TupleTypeMetadata3 + 64)];
    (*(v29 + 32))(v12, &v20[*(TupleTypeMetadata3 + 48)], v5);
    __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    OUTLINED_FUNCTION_2_7();
    sub_197A881F8();
    if (!v3)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      v27 = *(a2 + 32);
      sub_197A881E8();
      if (v26)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
        sub_197A881D8();
      }
    }

    (*(v29 + 8))(v12, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v30);
}

uint64_t OUTLINED_FUNCTION_152_1()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_152_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_152_3()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_167()
{

  return sub_197A883A8();
}

uint64_t sub_19794ECC8()
{
  OUTLINED_FUNCTION_9();
  v1[6] = v2;
  v1[7] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A200, &qword_197A969D0);
  v1[8] = v3;
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  v1[9] = OUTLINED_FUNCTION_78_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F0, &qword_197A92358);
  v1[10] = v6;
  OUTLINED_FUNCTION_28(v6);
  v8 = *(v7 + 64);
  v1[11] = OUTLINED_FUNCTION_78_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v9);
  v11 = *(v10 + 64);
  v1[12] = OUTLINED_FUNCTION_78_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1D0, &qword_197A96818);
  OUTLINED_FUNCTION_28(v12);
  v14 = *(v13 + 64);
  v1[13] = OUTLINED_FUNCTION_78_0();
  v15 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

void OUTLINED_FUNCTION_106_2()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[10];
}

uint64_t OUTLINED_FUNCTION_83()
{

  return sub_197A87258();
}

uint64_t OUTLINED_FUNCTION_83_3()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return sub_197A87F28();
}

uint64_t OUTLINED_FUNCTION_12_6()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = *(v0[7] + 32);
  return v0[8];
}

uint64_t OUTLINED_FUNCTION_12_9@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;
  result = v1 - 96;
  v3 = *(v1 - 128);
  return result;
}

void ModelXPCRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_92();
  a19 = v21;
  a20 = v22;
  v431 = v20;
  v24 = v23;
  v424 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A5B0, &qword_197A98438);
  OUTLINED_FUNCTION_2_1(v26, &v431);
  v428 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_30();
  v423 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A5B8, &qword_197A98440);
  OUTLINED_FUNCTION_2_1(v32, &v430);
  v427 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_30();
  v422 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A5C0, &qword_197A98448);
  OUTLINED_FUNCTION_2_1(v38, &v429);
  v396 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_30();
  v421 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A5C8, &qword_197A98450);
  OUTLINED_FUNCTION_2_1(v44, &v427);
  v394 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_30();
  v420 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A5D0, &qword_197A98458);
  OUTLINED_FUNCTION_2_1(v50, &v425);
  v392 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_30();
  v419 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A5D8, &qword_197A98460);
  OUTLINED_FUNCTION_2_1(v56, &v423);
  v390 = v57;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_30();
  v418 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A5E0, &qword_197A98468);
  OUTLINED_FUNCTION_2_1(v62, &v421);
  v388 = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_30();
  v417 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A5E8, &qword_197A98470);
  OUTLINED_FUNCTION_2_1(v68, &v419);
  v386 = v69;
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_30();
  v416 = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A5F0, &qword_197A98478);
  OUTLINED_FUNCTION_2_1(v74, &v417);
  v385 = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_30();
  v415 = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A5F8, &qword_197A98480);
  OUTLINED_FUNCTION_2_1(v80, &v415);
  v383 = v81;
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_30();
  v414 = v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A600, &qword_197A98488);
  OUTLINED_FUNCTION_2_1(v86, &v413);
  v381 = v87;
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A608, &qword_197A98490);
  OUTLINED_FUNCTION_2_1(v92, &v411);
  v380[1] = v93;
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v97);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A610, &qword_197A98498);
  OUTLINED_FUNCTION_2_1(v98, &v409);
  v379 = v99;
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v103);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A618, &qword_197A984A0);
  OUTLINED_FUNCTION_2_1(v104, &v407);
  v378[1] = v105;
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A620, &qword_197A984A8);
  OUTLINED_FUNCTION_2_1(v110, &v405);
  v377 = v111;
  v113 = *(v112 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v115);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A628, &qword_197A984B0);
  OUTLINED_FUNCTION_2_1(v116, &v403);
  v376 = v117;
  v119 = *(v118 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v121);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A630, &qword_197A984B8);
  OUTLINED_FUNCTION_2_1(v122, &v401);
  v374[1] = v123;
  v125 = *(v124 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v127);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A638, &qword_197A984C0);
  OUTLINED_FUNCTION_2_1(v128, &v399);
  v373 = v129;
  v131 = *(v130 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v133);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A640, &qword_197A984C8);
  OUTLINED_FUNCTION_2_1(v134, &v397);
  v372 = v135;
  v137 = *(v136 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v138);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v139);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A648, &qword_197A984D0);
  OUTLINED_FUNCTION_2_1(v140, &v395);
  v370 = v141;
  v143 = *(v142 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v145);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A650, &qword_197A984D8);
  OUTLINED_FUNCTION_2_1(v146, &v393);
  v369 = v147;
  v149 = *(v148 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v151);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A658, &qword_197A984E0);
  OUTLINED_FUNCTION_2_1(v152, &v391);
  v368 = v153;
  v155 = *(v154 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v156);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v157);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A660, &qword_197A984E8);
  OUTLINED_FUNCTION_2_1(v158, &v389);
  v367 = v159;
  v161 = *(v160 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v162);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v163);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A668, &qword_197A984F0);
  OUTLINED_FUNCTION_2_1(v164, &v387);
  v366 = v165;
  v167 = *(v166 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v168);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v169);
  v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A670, &unk_197A984F8);
  OUTLINED_FUNCTION_2(v429);
  v426 = v170;
  v172 = *(v171 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v173);
  OUTLINED_FUNCTION_39_9(v174, v353);
  v425 = type metadata accessor for ModelXPCRequest(0);
  v175 = OUTLINED_FUNCTION_6(v425);
  v177 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v175);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v178);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v179);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v180);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v181);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v182);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v183);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v184);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v185);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v186);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v187);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v188);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v189);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v190);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v191);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v192);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v193);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v194);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v195);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  v197 = MEMORY[0x1EEE9AC00](v196);
  v199 = &v353 - v198;
  v200 = MEMORY[0x1EEE9AC00](v197);
  v202 = &v353 - v201;
  v203 = MEMORY[0x1EEE9AC00](v200);
  v205 = &v353 - v204;
  v206 = MEMORY[0x1EEE9AC00](v203);
  v208 = &v353 - v207;
  v209 = MEMORY[0x1EEE9AC00](v206);
  v211 = &v353 - v210;
  MEMORY[0x1EEE9AC00](v209);
  v213 = &v353 - v212;
  v215 = v24[3];
  v214 = v24[4];
  v430 = v24;
  OUTLINED_FUNCTION_113_0(v24, v215);
  sub_197951CA4();
  v216 = v431;
  sub_197A883A8();
  if (v216)
  {
    goto LABEL_10;
  }

  v355 = v211;
  v356 = v208;
  v357 = v205;
  v358 = v202;
  v359 = v199;
  v217 = v428;
  v431 = v213;
  v218 = v429;
  v219 = a10;
  v220 = sub_197A88028();
  sub_197953BF0(v220, 0);
  if (v222 == v223 >> 1)
  {
    v224 = v426;
LABEL_9:
    v234 = v425;
    v235 = sub_197A87E88();
    swift_allocError();
    v237 = v236;
    v238 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DD0, &qword_197A89820) + 48);
    *v237 = v234;
    sub_197A87F38();
    sub_197A87E78();
    (*(*(v235 - 8) + 104))(v237, *MEMORY[0x1E69E6AF8], v235);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v224 + 8))(v219, v218);
LABEL_10:
    v239 = v430;
    goto LABEL_11;
  }

  v354 = 0;
  if (v222 >= (v223 >> 1))
  {
    __break(1u);
    JUMPOUT(0x197951258);
  }

  v225 = *(v221 + v222);
  sub_197953BF8(v222 + 1);
  v227 = v226;
  v229 = v228;
  swift_unknownObjectRelease();
  if (v227 != v229 >> 1)
  {
    v224 = v426;
    v218 = v429;
    v219 = a10;
    goto LABEL_9;
  }

  v230 = v217;
  v231 = v423;
  v232 = v354;
  switch(v225)
  {
    case 1:
      LOBYTE(v432) = 1;
      sub_197A49EC8();
      OUTLINED_FUNCTION_20_11(&v432 + 8);
      type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest(0);
      OUTLINED_FUNCTION_93_6();
      sub_197954374(v245);
      OUTLINED_FUNCTION_52(&v371);
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v300 = OUTLINED_FUNCTION_8_4(&v388);
      v301(v300);
      v302 = OUTLINED_FUNCTION_4_11();
      v303(v302);
      OUTLINED_FUNCTION_67_2();
      goto LABEL_37;
    case 2:
      LOBYTE(v432) = 2;
      sub_197A49E74();
      OUTLINED_FUNCTION_20_11(&v433);
      type metadata accessor for ModelXPCRequest.CancelRequest(0);
      OUTLINED_FUNCTION_96_5();
      sub_197954374(v241);
      OUTLINED_FUNCTION_52(&v372);
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v280 = OUTLINED_FUNCTION_8_4(&v390);
      v281(v280);
      v282 = OUTLINED_FUNCTION_4_11();
      v283(v282);
      OUTLINED_FUNCTION_67_2();
      goto LABEL_37;
    case 3:
      LOBYTE(v432) = 3;
      sub_1979512B8();
      v242 = v429;
      v243 = a10;
      sub_197A87F28();
      if (v232)
      {
        (*(v426 + 8))(v243, v242);
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      type metadata accessor for ModelXPCRequest.CreateSessionRequest(0);
      OUTLINED_FUNCTION_95_6();
      sub_197954374(v250);
      OUTLINED_FUNCTION_80_5();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_32(&v392);
      v288 = OUTLINED_FUNCTION_170_0();
      v289(v288);
      v290 = OUTLINED_FUNCTION_4_11();
      v291(v290);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_12();
LABEL_38:
      sub_197A49444();
      v350 = v430;
      OUTLINED_FUNCTION_5_12();
      sub_197A49444();
      v239 = v350;
      break;
    case 4:
      LOBYTE(v432) = 4;
      sub_197966494();
      OUTLINED_FUNCTION_20_11(&a9);
      type metadata accessor for ModelXPCRequest.DeleteSessionRequest(0);
      OUTLINED_FUNCTION_99_5();
      sub_197954374(v240);
      OUTLINED_FUNCTION_52(&v373);
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v268 = OUTLINED_FUNCTION_8_4(&v394);
      v269(v268);
      v270 = OUTLINED_FUNCTION_4_11();
      v271(v270);
      OUTLINED_FUNCTION_67_2();
      goto LABEL_37;
    case 5:
      LOBYTE(v432) = 5;
      sub_197964AD8();
      OUTLINED_FUNCTION_20_11(&a10);
      type metadata accessor for ModelXPCRequest.PrewarmSession(0);
      OUTLINED_FUNCTION_91_7();
      sub_197954374(v247);
      OUTLINED_FUNCTION_52(&v381);
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v314 = OUTLINED_FUNCTION_8_4(&v396);
      v315(v314);
      v316 = OUTLINED_FUNCTION_4_11();
      v317(v316);
      OUTLINED_FUNCTION_67_2();
      goto LABEL_37;
    case 6:
      LOBYTE(v432) = 6;
      sub_197966C38();
      OUTLINED_FUNCTION_20_11(&a11);
      type metadata accessor for ModelXPCRequest.CancelSessionRequest(0);
      OUTLINED_FUNCTION_88_4();
      sub_197954374(v248);
      OUTLINED_FUNCTION_52(&v382);
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v326 = OUTLINED_FUNCTION_8_4(&v398);
      v327(v326);
      v328 = OUTLINED_FUNCTION_4_11();
      v329(v328);
      OUTLINED_FUNCTION_67_2();
      goto LABEL_37;
    case 7:
      LOBYTE(v432) = 7;
      sub_197A49E20();
      OUTLINED_FUNCTION_20_11(&a12);
      type metadata accessor for ModelXPCRequest.AcquireRequest(0);
      OUTLINED_FUNCTION_94_4();
      sub_197954374(v244);
      OUTLINED_FUNCTION_52(&v383);
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v292 = OUTLINED_FUNCTION_8_4(&v400);
      v293(v292);
      v294 = OUTLINED_FUNCTION_4_11();
      v295(v294);
      OUTLINED_FUNCTION_67_2();
      goto LABEL_37;
    case 8:
      LOBYTE(v432) = 8;
      sub_197A49DCC();
      OUTLINED_FUNCTION_20_11(&a13);
      type metadata accessor for ModelXPCRequest.ReleaseRequest(0);
      OUTLINED_FUNCTION_87_8();
      sub_197954374(v249);
      OUTLINED_FUNCTION_52(&v384);
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v338 = OUTLINED_FUNCTION_8_4(&v402);
      v339(v338);
      v340 = OUTLINED_FUNCTION_4_11();
      v341(v340);
      OUTLINED_FUNCTION_67_2();
      goto LABEL_37;
    case 9:
      LOBYTE(v432) = 9;
      sub_197A49D24();
      OUTLINED_FUNCTION_15_9();
      sub_197A51C14();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v276 = OUTLINED_FUNCTION_12_10(&v404);
      v277(v276);
      v278 = OUTLINED_FUNCTION_4_11();
      v279(v278);
      OUTLINED_FUNCTION_50_10(v374);
      goto LABEL_37;
    case 10:
      LOBYTE(v432) = 10;
      sub_197A49C7C();
      OUTLINED_FUNCTION_15_9();
      sub_197A51BC0();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v334 = OUTLINED_FUNCTION_12_10(&v406);
      v335(v334);
      v336 = OUTLINED_FUNCTION_4_11();
      v337(v336);
      *v360 = v432;
      OUTLINED_FUNCTION_79_9();
      goto LABEL_37;
    case 11:
      LOBYTE(v432) = 11;
      sub_197A49BD4();
      OUTLINED_FUNCTION_15_9();
      sub_197A51B6C();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v264 = OUTLINED_FUNCTION_12_10(&v408);
      v265(v264);
      v266 = OUTLINED_FUNCTION_4_11();
      v267(v266);
      OUTLINED_FUNCTION_50_10(&v375);
      goto LABEL_37;
    case 12:
      LOBYTE(v432) = 12;
      sub_197A49B2C();
      OUTLINED_FUNCTION_15_9();
      sub_197A51B18();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v272 = OUTLINED_FUNCTION_12_10(&v410);
      v273(v272);
      v274 = OUTLINED_FUNCTION_4_11();
      v275(v274);
      OUTLINED_FUNCTION_50_10(&v376);
      goto LABEL_37;
    case 13:
      LOBYTE(v432) = 13;
      sub_197A49A84();
      OUTLINED_FUNCTION_15_9();
      sub_197A51AC4();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v322 = OUTLINED_FUNCTION_12_10(&v412);
      v323(v322);
      v324 = OUTLINED_FUNCTION_4_11();
      v325(v324);
      *v361 = v432;
      OUTLINED_FUNCTION_79_9();
      goto LABEL_37;
    case 14:
      LOBYTE(v432) = 14;
      sub_197A499DC();
      OUTLINED_FUNCTION_15_9();
      sub_197A51A70();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v260 = OUTLINED_FUNCTION_12_10(&v414);
      v261(v260);
      v262 = OUTLINED_FUNCTION_4_11();
      v263(v262);
      OUTLINED_FUNCTION_50_10(&v377);
      goto LABEL_37;
    case 15:
      LOBYTE(v432) = 15;
      sub_197A49934();
      OUTLINED_FUNCTION_15_9();
      sub_197A51A1C();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v284 = OUTLINED_FUNCTION_12_10(&v416);
      v285(v284);
      v286 = OUTLINED_FUNCTION_4_11();
      v287(v286);
      OUTLINED_FUNCTION_50_10(v378);
      goto LABEL_37;
    case 16:
      LOBYTE(v432) = 16;
      sub_197A4988C();
      OUTLINED_FUNCTION_15_9();
      sub_197A519C8();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v253 = OUTLINED_FUNCTION_12_10(&v418);
      v254(v253);
      v255 = OUTLINED_FUNCTION_4_11();
      v256(v255);
      v257 = *(&v432 + 1);
      v258 = v433;
      v259 = v362;
      *v362 = v432;
      v259[1] = v257;
      *(v259 + 16) = v258;
      OUTLINED_FUNCTION_79_9();
      goto LABEL_37;
    case 17:
      LOBYTE(v432) = 17;
      sub_197A497E4();
      OUTLINED_FUNCTION_15_9();
      sub_197A51974();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v304 = OUTLINED_FUNCTION_12_10(&v420);
      v305(v304);
      v306 = OUTLINED_FUNCTION_4_11();
      v307(v306);
      v308 = *(&v432 + 1);
      v309 = v363;
      *v363 = v432;
      v309[1] = v308;
      OUTLINED_FUNCTION_79_9();
      goto LABEL_37;
    case 18:
      LOBYTE(v432) = 18;
      sub_197A4973C();
      OUTLINED_FUNCTION_15_9();
      sub_197A51920();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v330 = OUTLINED_FUNCTION_12_10(&v422);
      v331(v330);
      v332 = OUTLINED_FUNCTION_4_11();
      v333(v332);
      OUTLINED_FUNCTION_50_10(&v379);
      goto LABEL_37;
    case 19:
      LOBYTE(v432) = 19;
      sub_197A49694();
      OUTLINED_FUNCTION_15_9();
      sub_197A518CC();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v346 = OUTLINED_FUNCTION_12_10(&v424);
      v347(v346);
      v348 = OUTLINED_FUNCTION_4_11();
      v349(v348);
      OUTLINED_FUNCTION_50_10(v380);
      goto LABEL_37;
    case 20:
      LOBYTE(v432) = 20;
      sub_197A49640();
      OUTLINED_FUNCTION_22_6();
      type metadata accessor for ModelXPCRequest.FetchModelInstance(0);
      OUTLINED_FUNCTION_92_6();
      sub_197954374(v246);
      OUTLINED_FUNCTION_52(&v385);
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v310 = OUTLINED_FUNCTION_8_4(&v426);
      v311(v310);
      v312 = OUTLINED_FUNCTION_4_11();
      v313(v312);
      OUTLINED_FUNCTION_67_2();
      goto LABEL_37;
    case 21:
      LOBYTE(v432) = 21;
      sub_197A49598();
      OUTLINED_FUNCTION_15_9();
      sub_197A51878();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v318 = OUTLINED_FUNCTION_12_10(&v428);
      v319(v318);
      v320 = OUTLINED_FUNCTION_4_11();
      v321(v320);
      *v364 = v432;
      OUTLINED_FUNCTION_79_9();
      goto LABEL_37;
    case 22:
      LOBYTE(v432) = 22;
      sub_197A494F0();
      OUTLINED_FUNCTION_15_9();
      sub_197A51824();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v342 = OUTLINED_FUNCTION_79_4();
      v343(v342);
      v344 = OUTLINED_FUNCTION_4_11();
      v345(v344);
      *v365 = v432;
      OUTLINED_FUNCTION_79_9();
      goto LABEL_37;
    case 23:
      LOBYTE(v432) = 23;
      sub_197A4949C();
      OUTLINED_FUNCTION_22_6();
      type metadata accessor for ModelXPCRequest.StartMonitoringInferences(0);
      OUTLINED_FUNCTION_84_6();
      sub_197954374(v251);
      v252 = v399;
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      (*(v230 + 8))(v231, v252);
      v351 = OUTLINED_FUNCTION_4_11();
      v352(v351);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_12();
      goto LABEL_38;
    default:
      LOBYTE(v432) = 0;
      sub_197A49F1C();
      OUTLINED_FUNCTION_20_11(&v432);
      type metadata accessor for ModelXPCRequest.ExecuteRequest(0);
      OUTLINED_FUNCTION_101_3();
      sub_197954374(v233);
      OUTLINED_FUNCTION_52(&v370);
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v296 = OUTLINED_FUNCTION_8_4(&v386);
      v297(v296);
      v298 = OUTLINED_FUNCTION_4_11();
      v299(v298);
      OUTLINED_FUNCTION_67_2();
LABEL_37:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_12();
      goto LABEL_38;
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_1Tm(v239);
  OUTLINED_FUNCTION_93();
}

unint64_t sub_1979512B8()
{
  result = qword_1ED87FCA0;
  if (!qword_1ED87FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FCA0);
  }

  return result;
}

uint64_t sub_19795130C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_197951364()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v22 = *(v0 + 48);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v1 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_197960E38;
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_142();

  return sub_1979568DC(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_197951430()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92C90);
  v3 = OUTLINED_FUNCTION_89_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_31_6(v3);

  return v6(v5);
}

uint64_t sub_1979514C0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_197A87298();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for ModelManagerError();
  v3[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v9 = type metadata accessor for ModelXPCRequest(0);
  v3[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C08, &qword_197A92C98);
  v3[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = type metadata accessor for IPCSessionWrapper(0);
  v3[19] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979516B8, v2, 0);
}

uint64_t sub_1979516B8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_99_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_30_7(v1);

  return sub_19794ECC8();
}

void ModelXPCRequest.CreateSessionRequest.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_72_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A6D0, &qword_197A98518);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_13_1();
  sub_197954810();
  OUTLINED_FUNCTION_125();
  type metadata accessor for Session.Metadata(0);
  OUTLINED_FUNCTION_89_6();
  sub_197954374(v6);
  OUTLINED_FUNCTION_53_11();
  sub_197A880E8();
  if (!v0)
  {
    v7 = v1 + *(type metadata accessor for ModelXPCRequest.CreateSessionRequest(0) + 20);
    v10 = *v7;
    v11 = *(v7 + 8);
    v12 = *(v7 + 16);
    v13 = *(v7 + 24);
    v14 = *(v7 + 32);
    sub_19794A620(*v7, v11);
    sub_1979518CC();
    OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_58();
    sub_197A88098();
    sub_197955620(v10, v11);
  }

  v8 = OUTLINED_FUNCTION_79_4();
  v9(v8);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_168();
}

unint64_t sub_1979518CC()
{
  result = qword_1ED87FC78;
  if (!qword_1ED87FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FC78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ModelXPCRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
        JUMPOUT(0x1979519ECLL);
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelXPCRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_197951A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979928B8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)()
{
  OUTLINED_FUNCTION_9();
  v1[13] = v18;
  v1[14] = v0;
  v1[11] = v2;
  v1[12] = v3;
  v1[9] = v4;
  v1[10] = v5;
  v1[7] = v6;
  v1[8] = v7;
  v1[5] = v8;
  v1[6] = v9;
  v10 = type metadata accessor for TaskCancellableMessage();
  v1[15] = v10;
  v11 = *(v10 - 8);
  v1[16] = v11;
  v12 = *(v11 + 64) + 15;
  v1[17] = swift_task_alloc();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t OUTLINED_FUNCTION_32_6()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_32_9()
{
  v2 = *(v0 + 176);

  sub_197A25908();
}

unint64_t sub_197951CA4()
{
  result = qword_1ED880DC0[0];
  if (!qword_1ED880DC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED880DC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_37_2@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_37_3()
{

  return sub_197A87C08();
}

uint64_t OUTLINED_FUNCTION_37_7()
{
  result = __swift_getEnumTagSinglePayload(v0, 1, v2);
  v4 = *(v1 + 248);
  return result;
}

void OUTLINED_FUNCTION_37_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t TaskCancellingXPCPeerHandler.handleIncomingRequest(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v9[3] = type metadata accessor for XPCReceivedMessageWrapper();
  v9[4] = &protocol witness table for XPCReceivedMessageWrapper;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  v7 = sub_197A87818();
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a1, v7);
  sub_19795255C(v9, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t TaskCancellableMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  sub_197A87DB8();
  OUTLINED_FUNCTION_34_0();
  v53 = v8;
  v54 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v49 - v11;
  OUTLINED_FUNCTION_34_0();
  v57 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_0();
  v18 = v17 - v16;
  v58 = a3;
  v19 = type metadata accessor for TaskCancellableMessage();
  OUTLINED_FUNCTION_34_0();
  v55 = v20;
  v22 = *(v21 + 64);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v49 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = v62;
  sub_197A88388();
  if (!v30)
  {
    v51 = v28;
    v52 = v26;
    v62 = v18;
    OUTLINED_FUNCTION_3_4();
    v31 = sub_197A881C8();
    if (v28)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
    }

    else
    {
      v50 = v31;
      OUTLINED_FUNCTION_3_4();
      v32 = v59;
      sub_197A88188();
      if (__swift_getEnumTagSinglePayload(v32, 1, a2) == 1)
      {
        (*(v53 + 8))(v32, v54);
        v34 = v51;
        *v51 = v50;
        v35 = v19;
        swift_storeEnumTagMultiPayload();
        v37 = v55;
        v36 = v56;
      }

      else
      {
        v38 = v57;
        v39 = v62;
        (*(v57 + 32))(v62, v32, a2);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v41 = *(TupleTypeMetadata3 + 48);
        v42 = v52;
        *v52 = v50;
        (*(v38 + 16))(v42 + v41, v39, a2);
        __swift_project_boxed_opaque_existential_1(v60, v61);
        v43 = sub_197A88198();
        v44 = 0;
        if ((v45 & 1) == 0 && v43 == 3)
        {
          __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
          v44 = sub_197A881A8();
        }

        v46 = *(TupleTypeMetadata3 + 64);
        (*(v57 + 8))(v62, a2);
        v47 = v44 & 1;
        v48 = v52;
        *(v52 + v46) = v47;
        v35 = v19;
        swift_storeEnumTagMultiPayload();
        v37 = v55;
        v34 = v51;
        (*(v55 + 32))(v51, v48, v35);
        v36 = v56;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      (*(v37 + 32))(v36, v34, v35);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void sub_197952474(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
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

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_54_0();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t type metadata accessor for XPCReceivedMessageWrapper()
{
  result = qword_1ED87E3C0;
  if (!qword_1ED87E3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

double sub_19795255C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  OUTLINED_FUNCTION_14_7();
  v5 = *(v4 + 88);
  v137 = v2;
  v7 = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  v139 = v7;
  *&v140 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = OUTLINED_FUNCTION_2(AssociatedTypeWitness);
  v132 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32_4();
  v125 = v14;
  v124 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v131 = &v122 - v17;
  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_39_4();
  v133 = AssociatedTypeWitness;
  v18 = type metadata accessor for TaskCancellableMessage();
  v19 = OUTLINED_FUNCTION_2(v18);
  v134 = v20;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v19);
  v126 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v138 = &v122 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v29);
  v127 = &v122 - v30;
  v31 = swift_checkMetadataState();
  v32 = OUTLINED_FUNCTION_2(v31);
  v129 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_32_4();
  v123 = v36;
  v122 = v37;
  MEMORY[0x1EEE9AC00](v38);
  v128 = &v122 - v39;
  v40 = *(AssociatedConformanceWitness + 8);
  v41 = *(AssociatedConformanceWitness + 16);
  v130 = v42;
  v43 = type metadata accessor for TaskCancellableMessage();
  v44 = OUTLINED_FUNCTION_2(v43);
  v136 = v45;
  v47 = *(v46 + 64);
  v48 = MEMORY[0x1EEE9AC00](v44);
  v50 = (&v122 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v122 - v51;
  v53 = a1[3];
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v53);
  LOBYTE(v54) = (*(v54 + 24))(v53, v54);
  v56 = a1[3];
  v55 = a1[4];
  v135 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v56);
  v57 = *(v55 + 8);
  if (v54)
  {
    OUTLINED_FUNCTION_11_3();
    WitnessTable = swift_getWitnessTable();
    v57(v43, v43, WitnessTable, v56, v55);
    v59 = v136;
    (*(v136 + 16))(v50, v52, v43);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v61 = *v50;
    if (EnumCaseMultiPayload == 1)
    {
      v62 = sub_197A87C08();
      OUTLINED_FUNCTION_31_5(v62, v63, v64, v62);
      OUTLINED_FUNCTION_33_6();
      v65 = swift_allocObject();
      v65[2] = 0;
      v65[3] = 0;
      v65[4] = v137;
      v65[5] = v61;

      OUTLINED_FUNCTION_16_4();
      sub_19795CB2C();

      (*(v59 + 8))(v52, v43);
    }

    else
    {
      v138 = v52;
      v75 = v130;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v77 = *(TupleTypeMetadata3 + 48);
      LODWORD(v134) = *(v50 + *(TupleTypeMetadata3 + 64));
      v132 = *(v129 + 32);
      v133 = v129 + 32;
      v132(v128, v50 + v77, v75);
      if (qword_1ED87E900 != -1)
      {
        OUTLINED_FUNCTION_0_13();
        swift_once();
      }

      v78 = sub_197A87608();
      __swift_project_value_buffer(v78, qword_1ED87DF90);
      v79 = sub_197A875E8();
      sub_197A87D48();
      v80 = OUTLINED_FUNCTION_18_5();
      if (os_log_type_enabled(v80, v81))
      {
        OUTLINED_FUNCTION_10_9();
        v82 = swift_slowAlloc();
        *v82 = 134217984;
        *(v82 + 4) = v61;
        OUTLINED_FUNCTION_16_5();
        _os_log_impl(v83, v84, v85, v86, v87, v88);
        OUTLINED_FUNCTION_8();
        MEMORY[0x19A8EBE00]();
      }

      v89 = v135;
      v90 = v135[3];
      v91 = v135[4];
      __swift_project_boxed_opaque_existential_1(v135, v90);
      (*(v91 + 40))(v90, v91);
      sub_197961900(v89, &v142);
      v92 = v128;
      v93 = v129;
      v94 = v123;
      v95 = v130;
      (*(v129 + 16))(v123, v128, v130);
      v96 = (*(v93 + 80) + 72) & ~*(v93 + 80);
      v97 = (v122 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
      v98 = swift_allocObject();
      v99 = v140;
      *(v98 + 16) = v139;
      *(v98 + 24) = v99;
      sub_197945EF8(&v142, v98 + 32);
      v132((v98 + v96), v94, v95);
      *(v98 + v97) = v137;
      *(v98 + ((v97 + 15) & 0xFFFFFFFFFFFFFFF8)) = v61;

      sub_197961964(v61, v134, &unk_197A92628, v98);

      (*(v93 + 8))(v92, v95);
      (*(v136 + 8))(v138, v43);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_3();
    v66 = swift_getWitnessTable();
    v67 = v138;
    v57(v18, v18, v66, v56, v55);
    v68 = v18;
    v69 = v134;
    v70 = v126;
    (*(v134 + 16))(v126, v67, v68);
    v71 = swift_getEnumCaseMultiPayload();
    v136 = *v70;
    if (v71 == 1)
    {
      v72 = sub_197A87C08();
      __swift_storeEnumTagSinglePayload(v127, 1, 1, v72);
      OUTLINED_FUNCTION_33_6();
      v73 = swift_allocObject();
      v73[2] = 0;
      v73[3] = 0;
      v74 = v136;
      v73[4] = v137;
      v73[5] = v74;

      OUTLINED_FUNCTION_16_4();
      sub_19795CB2C();

      (*(v69 + 8))(v67, v68);
    }

    else
    {
      v100 = v133;
      v101 = swift_getTupleTypeMetadata3();
      v102 = *(v101 + 48);
      LODWORD(v130) = *(v70 + *(v101 + 64));
      v128 = *(v132 + 4);
      v129 = v132 + 32;
      (v128)(v131, v70 + v102, v100);
      if (qword_1ED87E900 != -1)
      {
        OUTLINED_FUNCTION_0_13();
        swift_once();
      }

      v103 = sub_197A87608();
      __swift_project_value_buffer(v103, qword_1ED87DF90);
      v104 = sub_197A875E8();
      v105 = sub_197A87D48();
      if (os_log_type_enabled(v104, v105))
      {
        OUTLINED_FUNCTION_10_9();
        v106 = swift_slowAlloc();
        *v106 = 134217984;
        *(v106 + 4) = v136;
        _os_log_impl(&dword_197941000, v104, v105, "Received message %llu.", v106, 0xCu);
        OUTLINED_FUNCTION_8();
        MEMORY[0x19A8EBE00]();
      }

      v107 = v135;
      v108 = v135[3];
      v109 = v135[4];
      __swift_project_boxed_opaque_existential_1(v135, v108);
      (*(v109 + 40))(v108, v109);
      sub_197961900(v107, &v142);
      v110 = v131;
      v111 = v132;
      v112 = v125;
      v113 = v133;
      (*(v132 + 2))(v125, v131, v133);
      v114 = (*(v111 + 80) + 72) & ~*(v111 + 80);
      v115 = (v124 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
      v116 = (v115 + 15) & 0xFFFFFFFFFFFFFFF8;
      v117 = swift_allocObject();
      v118 = v140;
      *(v117 + 16) = v139;
      *(v117 + 24) = v118;
      sub_197945EF8(&v142, v117 + 32);
      (v128)(v117 + v114, v112, v113);
      *(v117 + v115) = v137;
      v119 = v136;
      *(v117 + v116) = v136;

      sub_197961964(v119, v130, &unk_197A92608, v117);

      (*(v111 + 1))(v110, v113);
      (*(v69 + 8))(v138, v68);
    }
  }

  v120 = v141;
  *(v141 + 32) = 0;
  result = 0.0;
  *v120 = 0u;
  v120[1] = 0u;
  return result;
}

uint64_t sub_1979531B4()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(AssociatedTypeWitness);
  v7 = *(v6 + 80);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_28_4();
  v11(v10);
  v12 = *(v0 + v1);

  return MEMORY[0x1EEE6BDD0](v0, v2 + 8, v7 | 7);
}

uint64_t sub_1979532CC()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(AssociatedTypeWitness);
  v7 = *(v6 + 80);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_28_4();
  v11(v10);
  v12 = *(v0 + v1);

  return MEMORY[0x1EEE6BDD0](v0, v2 + 8, v7 | 7);
}

uint64_t sub_19795339C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979533C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979533C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5265747563657865 && a2 == 0xEE00747365757165;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000019 && 0x8000000197AA44B0 == a2;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65526C65636E6163 && a2 == 0xED00007473657571;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6553657461657263 && a2 == 0xED00006E6F697373;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65536574656C6564 && a2 == 0xED00006E6F697373;
          if (v9 || (sub_197A88218() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x536D726177657270 && a2 == 0xEE006E6F69737365;
            if (v10 || (sub_197A88218() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x65536C65636E6163 && a2 == 0xED00006E6F697373;
              if (v11 || (sub_197A88218() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x8000000197AA44D0 == a2;
                if (v12 || (sub_197A88218() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x8000000197AA44F0 == a2;
                  if (v13 || (sub_197A88218() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7373416863746566 && a2 == 0xEF736E6F69747265;
                    if (v14 || (sub_197A88218() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x8000000197AA4510 == a2;
                      if (v15 || (sub_197A88218() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7373416863746566 && a2 == 0xEB00000000737465;
                        if (v16 || (sub_197A88218() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000012 && 0x8000000197AA4530 == a2;
                          if (v17 || (sub_197A88218() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6C6F506863746566 && a2 == 0xEB00000000796369;
                            if (v18 || (sub_197A88218() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000015 && 0x8000000197AA4550 == a2;
                              if (v19 || (sub_197A88218() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000011 && 0x8000000197AA4570 == a2;
                                if (v20 || (sub_197A88218() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6573734164616F6CLL && a2 == 0xEF656C646E754274;
                                  if (v21 || (sub_197A88218() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x65737341646C6F68 && a2 == 0xEF656C646E754274;
                                    if (v22 || (sub_197A88218() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000017 && 0x8000000197AA4590 == a2;
                                      if (v23 || (sub_197A88218() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x74617453706D7564 && a2 == 0xE900000000000065;
                                        if (v24 || (sub_197A88218() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000012 && 0x8000000197AA45B0 == a2;
                                          if (v25 || (sub_197A88218() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000014 && 0x8000000197AA45D0 == a2;
                                            if (v26 || (sub_197A88218() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000012 && 0x8000000197AA45F0 == a2;
                                              if (v27 || (sub_197A88218() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else if (a1 == 0xD000000000000019 && 0x8000000197AA4610 == a2)
                                              {

                                                return 23;
                                              }

                                              else
                                              {
                                                v29 = sub_197A88218();

                                                if (v29)
                                                {
                                                  return 23;
                                                }

                                                else
                                                {
                                                  return 24;
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

uint64_t OUTLINED_FUNCTION_50_6()
{

  return sub_197A883D8();
}

uint64_t OUTLINED_FUNCTION_50_10@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_11()
{
  v2 = *(v0 - 152);
  v3 = *(v0 - 128);

  return sub_197A87FD8();
}

uint64_t sub_197953C00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t sub_197953C7C()
{
  OUTLINED_FUNCTION_71();
  v2 = v1(0);
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v0;
}

_BYTE *sub_197953CD4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x197953DA0);
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

uint64_t getEnumTagSinglePayload for InferenceProviderDescriptor.Instance.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_197953E70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_197953EB8(char a1)
{
  result = 0x5265747563657865;
  switch(a1)
  {
    case 1:
    case 23:
      return 0xD000000000000019;
    case 2:
      return 0x65526C65636E6163;
    case 3:
      v4 = 1634038371;
      goto LABEL_9;
    case 4:
      v4 = 1701602660;
LABEL_9:
      v5 = v4 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6553000000000000;
    case 5:
      return 0x536D726177657270;
    case 6:
      v5 = 0x6C65636E6163;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6553000000000000;
    case 7:
    case 8:
      return 0xD000000000000010;
    case 9:
    case 11:
      return 0x7373416863746566;
    case 10:
    case 15:
      return 0xD000000000000011;
    case 12:
      return 0xD000000000000012;
    case 13:
      return 0x6C6F506863746566;
    case 14:
      return 0xD000000000000015;
    case 16:
      v3 = 1684107116;
      goto LABEL_11;
    case 17:
      v3 = 1684828008;
LABEL_11:
      result = v3 | 0x6573734100000000;
      break;
    case 18:
      result = 0xD000000000000017;
      break;
    case 19:
      result = 0x74617453706D7564;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    case 21:
      result = 0xD000000000000014;
      break;
    case 22:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_131_1()
{
  v2 = *(v0 + 80);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_131_2()
{
  v4 = *v1;
  *(v2 - 112) = v0;

  return type metadata accessor for ModelServiceClient();
}

uint64_t OUTLINED_FUNCTION_131_3()
{
  v3 = *(v0 - 144);
  v2 = *(v0 - 136);

  return sub_197A88058();
}

void OUTLINED_FUNCTION_131_4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
}

unint64_t sub_197954254(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_197954298(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49130, &qword_197A969C0);
    OUTLINED_FUNCTION_133_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1979542E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49130, &qword_197A969C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_197954334(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_165_1(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_197954374(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Assertion.LiveDaemonInterface(unsigned int *a1, int a2)
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

uint64_t OUTLINED_FUNCTION_2_4()
{

  return sub_197A88118();
}

uint64_t OUTLINED_FUNCTION_2_7()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_9(uint64_t a1)
{
  *(v3 + 8) = v1;
  v5 = v2[16];
  v6 = v2[17];
  v8 = v2[14];
  v7 = v2[15];
  *(v4 + 16) = a1;
  return v6;
}

uint64_t OUTLINED_FUNCTION_2_13()
{

  return sub_197A87FD8();
}

unint64_t OUTLINED_FUNCTION_2_15(uint64_t a1)
{

  return sub_197954334(a1);
}

uint64_t OUTLINED_FUNCTION_2_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_19(unint64_t *a1)
{

  return sub_197954654(a1);
}

uint64_t OUTLINED_FUNCTION_2_21(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 72);
  return v2;
}

uint64_t OUTLINED_FUNCTION_2_22@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_197948834(0xD00000000000001BLL, (a1 - 32) | 0x8000000000000000, va);
}

uint64_t sub_197954654(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_197A87298();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_197954698()
{
  result = qword_1ED87FF00;
  if (!qword_1ED87FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FF00);
  }

  return result;
}

unint64_t sub_1979546EC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49030, &qword_197A96B90);
    OUTLINED_FUNCTION_15_1();
    sub_19796AA70(v4);
    OUTLINED_FUNCTION_119();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_197954774(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49030, &qword_197A96B90);
    sub_1979548FC(a2, type metadata accessor for CustomAssetConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_197954810()
{
  result = qword_1ED87FD78;
  if (!qword_1ED87FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FD78);
  }

  return result;
}

uint64_t sub_19795486C(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

unint64_t sub_1979548A8()
{
  result = qword_1ED87FC58;
  if (!qword_1ED87FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FC58);
  }

  return result;
}

uint64_t sub_1979548FC(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for Session.Metadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x197954A10);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Session.Metadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_197954AC8(char a1)
{
  result = 0x6E75427465737361;
  switch(a1)
  {
    case 1:
      result = 0x4965736143657375;
      break;
    case 2:
      result = 0x666C616865426E6FLL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 25705;
      break;
    case 6:
      result = 0x536E6F6973736573;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_150()
{
  v2 = *(v0 + 40);
  v4 = *(v0 + 48);

  return swift_slowAlloc();
}

__n128 OUTLINED_FUNCTION_150_1(uint64_t a1, __n128 *a2)
{
  result = *a2;
  v3 = a2[1].n128_u64[0];
  v4 = a2[1].n128_u64[1];
  v5 = a2[2].n128_u8[0];
  return result;
}

uint64_t sub_197954C9C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 184);
  *v4 = *v2;
  *(v3 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 48);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197954DB0()
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_6();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_21_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_181(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197956470();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_197962E18;
  v9 = v1[17];
  v11 = v1[15];
  v10 = v1[16];
  OUTLINED_FUNCTION_8_7(v12, v1[18]);
  OUTLINED_FUNCTION_169_0();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t OUTLINED_FUNCTION_117_0(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t Session.Metadata.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A250, &qword_197A96B88);
  OUTLINED_FUNCTION_2(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_66_0();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1979548A8();
  OUTLINED_FUNCTION_39_0();
  sub_197A87118();
  OUTLINED_FUNCTION_18_9();
  sub_1979548FC(v13, v14);
  OUTLINED_FUNCTION_48_0();
  sub_197A880E8();
  if (!v2)
  {
    v15 = type metadata accessor for Session.Metadata(0);
    v16 = (v4 + v15[5]);
    v17 = *v16;
    v18 = v16[1];
    OUTLINED_FUNCTION_55();
    sub_197A880B8();
    v19 = *(v4 + v15[6]);
    OUTLINED_FUNCTION_55();
    sub_197A880F8();
    v20 = *(v4 + v15[7]);
    OUTLINED_FUNCTION_55();
    sub_197A880D8();
    v21 = (v4 + v15[8]);
    v22 = *v21;
    v23 = v21[1];
    OUTLINED_FUNCTION_55();
    sub_197A880B8();
    v24 = v15[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
    sub_1979542E4(&qword_1ED87FC88);
    OUTLINED_FUNCTION_48_0();
    sub_197A880E8();
    v25 = v15[10];
    sub_197A87298();
    OUTLINED_FUNCTION_3_11();
    sub_1979548FC(v26, v27);
    OUTLINED_FUNCTION_48_0();
    sub_197A880E8();
    v28 = (v4 + v15[11]);
    v30 = *v28;
    v32 = *(v28 + 2);
    sub_1979552D0();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();
    v31 = *(v4 + v15[12]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49030, &qword_197A96B90);
    sub_197954774(&qword_1ED87FB40, &qword_1ED87FB60);
    OUTLINED_FUNCTION_48_0();
    sub_197A88098();
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t sub_1979552D0()
{
  result = qword_1ED87FC10;
  if (!qword_1ED87FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FC10);
  }

  return result;
}

uint64_t Version.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49140, &qword_197A8CEB0);
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v15 - v10;
  v12 = *v1;
  v15[6] = v1[1];
  v15[3] = v1[2];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197954698();
  sub_197A883D8();
  v18 = 0;
  OUTLINED_FUNCTION_2_4();
  if (!v2)
  {
    v17 = 1;
    OUTLINED_FUNCTION_2_4();
    v16 = 2;
    OUTLINED_FUNCTION_2_4();
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t OUTLINED_FUNCTION_128_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_54()
{
}

void OUTLINED_FUNCTION_54_2(_DWORD *a1@<X8>)
{
  v2 = *(v1 - 408);
  *a1 = *(v1 - 404);
  a1[1] = v2;
  a1[2] = *(v1 - 412);
}

uint64_t OUTLINED_FUNCTION_54_3(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_54_5(uint64_t a1)
{
  *(a1 + 8) = sub_197A1342C;
  result = *(v1 + 456);
  v3 = *(v1 + 464);
  return result;
}

uint64_t sub_197955620(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_86()
{

  return sub_197A88218();
}

uint64_t OUTLINED_FUNCTION_86_1()
{

  return sub_197947C44(v0 - 128, v0 - 168);
}

uint64_t OUTLINED_FUNCTION_86_2()
{
  *(v2 + 8) = v0;
  v4 = *(v1 + 96);
  return *(v1 + 104);
}

void OUTLINED_FUNCTION_98_2()
{
  v3 = v0[13];
  v4 = v0[10];
  v0[2] = v1;

  JUMPOUT(0x19A8EBBD0);
}

uint64_t sub_1979557E8()
{
  OUTLINED_FUNCTION_71();
  v2 = v1(0);
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v0;
}

uint64_t sub_197955840()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[13];
  v2 = v0[7];
  v3 = OBJC_IVAR____TtC20ModelManagerServices16IPCCachedSession_cachedSessionResult;
  OUTLINED_FUNCTION_95();
  sub_197944580(v2 + v3, v1, &qword_1EAF4A1D0, &qword_197A96818);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1C8, qword_197A967F8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v4);
  v6 = v0[13];
  if (EnumTagSinglePayload == 1)
  {
    v7 = &qword_1EAF4A1D0;
    v8 = &qword_197A96818;
  }

  else
  {
    OUTLINED_FUNCTION_63();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = v0[11];
      v26 = v0[12];
      v28 = v0[9];
      v29 = v0[6];
      OUTLINED_FUNCTION_8_8();
      sub_19794B22C(v6, v30);

      OUTLINED_FUNCTION_15();
      goto LABEL_16;
    }

    v7 = &qword_1EAF4A1C8;
    v8 = qword_197A967F8;
  }

  sub_197947A40(v6, v7, v8);
  v9 = v0[7];
  v10 = *(v9 + 136);
  if (v10)
  {
    goto LABEL_7;
  }

  v11 = v0[12];
  sub_197A87C08();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = sub_197A25358(&qword_1ED880378, 255, type metadata accessor for IPCCachedSession);
  v17 = swift_allocObject();
  v17[2] = v9;
  v17[3] = v16;
  v17[4] = v9;
  swift_retain_n();
  v18 = sub_1979CC048(0, 0, v11, &dword_197A969E8, v17);
  v19 = *(v9 + 136);
  *(v9 + 136) = v18;

  v10 = *(v9 + 136);
  if (v10)
  {
LABEL_7:
    v0[14] = v10;
    v20 = *(MEMORY[0x1E69E86B0] + 4);

    v21 = swift_task_alloc();
    v0[15] = v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
    v0[16] = v22;
    *v21 = v0;
    v21[1] = sub_197A2237C;
    v23 = v0[9];
    v24 = v0[10];
    v25 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA20](v23, v10, v24, v22, v25);
  }

  v32 = v0[11];
  type metadata accessor for IPCSessionWrapper(0);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  sub_197947A40(v0[11], &qword_1EAF499F0, &qword_197A92358);
  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v37 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v37, qword_1ED87FB48);
  v38 = sub_197A875E8();
  v39 = sub_197A87D68();
  if (OUTLINED_FUNCTION_65(v39))
  {
    v40 = OUTLINED_FUNCTION_204();
    OUTLINED_FUNCTION_137(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  type metadata accessor for ModelManagerError();
  OUTLINED_FUNCTION_4_8();
  sub_197A25358(v46, 255, v47);
  OUTLINED_FUNCTION_88();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v49 = v0[12];
  v48 = v0[13];
  v50 = v0[11];
  v51 = v0[9];

  OUTLINED_FUNCTION_13();
LABEL_16:

  return v31();
}

uint64_t sub_197955C38()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_22_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_2()
{
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[9];
}

uint64_t OUTLINED_FUNCTION_115_0()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_22_3(uint64_t a1)
{

  return sub_19796AB4C(a1);
}

uint64_t OUTLINED_FUNCTION_22_6()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 72);

  return sub_197A87F28();
}

uint64_t OUTLINED_FUNCTION_22_8(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_197948834(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_84@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_197A87FA8();
}

void OUTLINED_FUNCTION_84_1(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  *(a4 - 256) = a3;
  *(v4 - 384) = a2;
  *(v4 - 392) = a1;
}

uint64_t OUTLINED_FUNCTION_84_3()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_182(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_84_5()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  return 255;
}

uint64_t OUTLINED_FUNCTION_84_7()
{

  return sub_197A87F28();
}

uint64_t sub_197955EBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_197955F04(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_133_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_176_0()
{
  v2 = *(v0 - 192);

  return sub_197A881B8();
}

uint64_t OUTLINED_FUNCTION_176_1(uint64_t a1, uint64_t a2)
{

  return __swift_getEnumTagSinglePayload(a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_42_2@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_42_3()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_42_4(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  return sub_197945EF8((v1 - 328), a1 + 32);
}

unint64_t OUTLINED_FUNCTION_42_5(uint64_t a1)
{

  return sub_19796A788(a1);
}

uint64_t OUTLINED_FUNCTION_42_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v11 + 4) = v13;
  *(v11 + 12) = 1024;
  v15 = *(v12 + *(a10 + 20));

  return sub_197969A00(v12, v10);
}

uint64_t OUTLINED_FUNCTION_4_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  v5 = *(v3 + a3);
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  return sub_197956214(v5);
}

unint64_t OUTLINED_FUNCTION_4_4(uint64_t a1)
{

  return sub_197954254(a1);
}

uint64_t OUTLINED_FUNCTION_4_5(unint64_t *a1)
{

  return sub_197955EBC(a1, v1);
}

uint64_t OUTLINED_FUNCTION_4_7()
{
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[10];
  v13 = v0[8];
  v14 = v0[6];
}

uint64_t OUTLINED_FUNCTION_4_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_11()
{
  v1 = *(*(v0 - 160) + 8);
  result = *(v0 - 72);
  v3 = *(v0 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_12@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  return sub_197A878A8();
}

uint64_t sub_197956214(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_197956244()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v20 = v0[12];
  v21 = v0[17];
  v4 = v0[9];
  v5 = v0[10];
  v19 = v5;
  v6 = v0[7];
  v7 = v0[8];
  static TaskCancellableMessage.wrapMessage(_:)(v0[6], v7, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF4A2C8, &unk_197A974C0);
  inited = swift_initStackObject();
  v0[18] = inited;
  *(inited + 20) = 0;
  *(inited + 16) = 0;
  v9 = swift_task_alloc();
  v0[19] = v9;
  v9[2] = v6;
  v9[3] = v7;
  v9[4] = v4;
  v9[5] = v5;
  v9[6] = v3;
  v9[7] = v20;
  v9[8] = v2;
  v9[9] = inited;
  v10 = v2;
  v9[10] = v21;
  v9[11] = v1;
  v11 = v1;
  v12 = swift_task_alloc();
  v0[20] = v12;
  v12[2] = v6;
  v12[3] = v7;
  v12[4] = v4;
  v12[5] = v19;
  v12[6] = v3;
  v12[7] = v20;
  v12[8] = v10;
  v12[9] = inited;
  v12[10] = v11;
  v12[11] = v21;
  v13 = *(MEMORY[0x1E69E88F0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[21] = v14;
  *v14 = v15;
  v14[1] = sub_19795E9A8;
  v16 = v0[9];
  v17 = v0[5];

  return MEMORY[0x1EEE6DE18](v17, &unk_197A981D8, v9, sub_197A454E4, v12, 0, 0, v16);
}

uint64_t OUTLINED_FUNCTION_178()
{
  v2 = *(v0 + 88);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_178_1()
{

  return sub_197A878A8();
}

uint64_t OUTLINED_FUNCTION_178_2()
{

  return sub_19796DD70(v0 + 16);
}

uint64_t sub_19795644C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_197951430, 0, 0);
}

unint64_t sub_197956470()
{
  result = qword_1ED87F960;
  if (!qword_1ED87F960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49C08, &qword_197A92C98);
    sub_197955F04(&qword_1ED87FD40, type metadata accessor for ModelXPCRequest.CreateSessionRequest.Response);
    sub_197955F04(&qword_1ED87FD48, type metadata accessor for ModelXPCRequest.CreateSessionRequest.Response);
    sub_197955F04(&qword_1ED8813C8, type metadata accessor for ModelManagerError);
    sub_197955F04(&qword_1ED8813D0, type metadata accessor for ModelManagerError);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F960);
  }

  return result;
}

uint64_t UUIDIdentifier.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197A883C8();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_197A87298();
  sub_197954654(&qword_1ED881010);
  sub_197A88258();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t OUTLINED_FUNCTION_89_1()
{

  return sub_19794B170(v2, v3 + v0, v1);
}

uint64_t OUTLINED_FUNCTION_89_5()
{
  v2 = *(v0 - 104);

  return sub_197A88058();
}

uint64_t static TaskCancellableMessage.wrapMessage(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v7 = *(TupleTypeMetadata3 + 48);
  v8 = *(TupleTypeMetadata3 + 64);
  if (qword_1ED880280 != -1)
  {
    swift_once();
  }

  v9 = off_1ED880288;
  os_unfair_lock_lock(off_1ED880288 + 6);
  v10 = *(v9 + 2);
  *(v9 + 2) = v10 + 1;
  os_unfair_lock_unlock(v9 + 6);
  *a3 = v10;
  (*(*(a2 - 8) + 16))(&a3[v7], a1, a2);
  a3[v8] = sub_197A87C68() & 1;
  type metadata accessor for TaskCancellableMessage();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1979568DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v11;
  *(v8 + 80) = v10;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_19795691C, 0, 0);
}

uint64_t sub_19795691C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  v4 = *(v0 + 64);
  v5 = *(v0 + 80);
  v6 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
  *(v3 + 64) = v1;
  *(v3 + 72) = v6;
  *(v3 + 88) = v2;
  v7 = *(MEMORY[0x1E69E8920] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 112) = v8;
  *v8 = v9;
  v8[1] = sub_19795E88C;
  v10 = *(v0 + 64);
  v11 = *(v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DE38]();
}

void sub_197956A28(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v9 = *(v1 + 64);
  v8 = *(v1 + 48);
  sub_197956A64(a1, *(v1 + 72));
}

void sub_197956A64(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 20));
  sub_197957074((a2 + 16));
  os_unfair_lock_unlock((a2 + 20));
}

uint64_t sub_197956B2C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v68 = a8;
  v64 = a5;
  v65 = a3;
  v55 = a1;
  v56 = type metadata accessor for ModelManagerError();
  v15 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v63 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  v61 = a7;
  v60 = sub_197A87B98();
  v17 = *(v60 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v54 - v19;
  v70 = a6;
  v67 = a9;
  v69 = a10;
  v20 = type metadata accessor for TaskCancellableMessage();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v54 - v23;
  if (qword_1ED880278 != -1)
  {
    swift_once();
  }

  v58 = a11;
  v25 = sub_197A87608();
  __swift_project_value_buffer(v25, qword_1ED880470);
  v26 = *(v21 + 16);
  v66 = a2;
  v26(v24, a2, v20);
  v27 = sub_197A875E8();
  v28 = sub_197A87D48();
  v29 = os_log_type_enabled(v27, v28);
  v57 = v20;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v54 = a4;
    v31 = v30;
    *v30 = 134217984;
    v32 = sub_1979BA440(v20);
    (*(v21 + 8))(v24, v20);
    *(v31 + 1) = v32;
    _os_log_impl(&dword_197941000, v27, v28, "Sending message %llu.", v31, 0xCu);
    v33 = v31;
    a4 = v54;
    MEMORY[0x19A8EBE00](v33, -1, -1);
  }

  else
  {
    (*(v21 + 8))(v24, v20);
  }

  v35 = v59;
  v34 = v60;
  (*(v17 + 16))(v59, a4, v60);
  v36 = (*(v17 + 80) + 72) & ~*(v17 + 80);
  v37 = swift_allocObject();
  v38 = v64;
  v39 = v70;
  *(v37 + 2) = v64;
  *(v37 + 3) = v39;
  v40 = v61;
  v41 = v67;
  v42 = v68;
  *(v37 + 4) = v61;
  *(v37 + 5) = v42;
  v43 = v69;
  *(v37 + 6) = v41;
  *(v37 + 7) = v43;
  v44 = v58;
  *(v37 + 8) = v58;
  (*(v17 + 32))(&v37[v36], v35, v34);
  v45 = *(v42 + 40);
  v46 = v57;
  WitnessTable = swift_getWitnessTable();
  v48 = v44;
  v49 = v62;
  v50 = v63;
  v45(v66, sub_19795E3E0, v37, v46, v40, WitnessTable, v48, v63, v38, v42);
  if (v49)
  {

    sub_19795E388();
    swift_allocError();
    return sub_197A45AC0(v50, v51);
  }

  else
  {
    v53 = v70;

    *v55 = 1;
    result = sub_197A87C68();
    if (result)
    {
      return sub_197A45150(v66, v38, v53, v68);
    }
  }

  return result;
}

uint64_t sub_197956FC4()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  v2 = sub_197A87B98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 72) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

void sub_1979570B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a8;
  v16 = type metadata accessor for ModelManagerError();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *v8;
  v21 = v24;
  _s3XPC10XPCSessionC20ModelManagerServicesE4send_12replyHandleryx_ys6ResultOyq_AD0cD5ErrorOGYbctAJYKSERzSeR_r0_lF(a1, a2, a3, a4, a5, a6, a7, v19);
  if (v21)
  {
    sub_197A45AC0(v19, v23);
  }
}

void _s3XPC10XPCSessionC20ModelManagerServicesE4send_12replyHandleryx_ys6ResultOyq_AD0cD5ErrorOGYbctAJYKSERzSeR_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v36 = a8;
  v14 = sub_197A87768();
  v34 = *(v14 - 8);
  v35 = v14;
  v15 = *(v34 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v32 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v33 = &v31 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v31 - v20;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v22[6] = a2;
  v22[7] = a3;

  v23 = v37;
  sub_197A87678();
  if (v23)
  {
    v38 = v23;
    MEMORY[0x19A8EBBD0](v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
    v24 = v35;
    if (swift_dynamicCast())
    {

      v26 = v33;
      v25 = v34;
      (*(v34 + 32))(v33, v21, v24);
      (*(v25 + 16))(v32, v26, v24);
      v27 = sub_197A87988();
      v28 = v36;
      *v36 = v27;
      v28[1] = v29;
      type metadata accessor for ModelManagerError();
      swift_storeEnumTagMultiPayload();
      sub_19795E388();
      swift_willThrowTypedImpl();

      (*(v25 + 8))(v26, v24);
      v30 = v38;
    }

    else
    {

      MEMORY[0x19A8EBBD0](v23);
      ModelManagerError.init(wrapping:)(v23, v36);
      type metadata accessor for ModelManagerError();
      sub_19795E388();
      swift_willThrowTypedImpl();

      v30 = v23;
    }
  }

  else
  {
  }
}

uint64_t sub_197957488()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1979575B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t InferenceProviderAssetDescriptor.version.getter()
{
  v0 = type metadata accessor for InferenceProviderAssetDescriptor(0);
  OUTLINED_FUNCTION_99(*(v0 + 28));
  return OUTLINED_FUNCTION_22();
}

uint64_t LoadState.description.getter()
{
  v1 = 0x4D63696D616E7964;
  if (*v0 != 1)
  {
    v1 = 0x646564616F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646564616F6C6E75;
  }
}

_BYTE *storeEnumTagSinglePayload for RequestPriority(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1979577A0);
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

uint64_t sub_1979577EC(unsigned __int8 a1, char a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701736302;
  switch(v4)
  {
    case 1:
      v6 = 1801675106;
      goto LABEL_5;
    case 2:
      OUTLINED_FUNCTION_132();
      OUTLINED_FUNCTION_131();
      break;
    case 3:
      v6 = 1701998438;
LABEL_5:
      v5 = v6 | 0x756F726700000000;
      v3 = 0xEA0000000000646ELL;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v8 = 1801675106;
      goto LABEL_10;
    case 2:
      OUTLINED_FUNCTION_130();
      OUTLINED_FUNCTION_66_1();
      break;
    case 3:
      v8 = 1701998438;
LABEL_10:
      v2 = v8 | 0x756F726700000000;
      v7 = 0xEA0000000000646ELL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_86();
  }

  return v10 & 1;
}

void static AssetCost.+ infix(_:_:)(void *a1@<X8>, void *a2@<X0>, void *a3@<X1>)
{
  if (__CFADD__(*a2, *a3))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_14(a1);
  }
}

Swift::Void __swiftcall Session.cancel()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_57_5();
  sub_197A87C08();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_58_7(v8);
  OUTLINED_FUNCTION_16_4();
  sub_1979CC804();
}

uint64_t sub_197957A08()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  *v5 = v6;
  v5[1] = sub_197960FB0;
  v7 = OUTLINED_FUNCTION_81();

  return sub_197957BA8(v7, v8, v9, v3);
}

uint64_t sub_197957AA8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_6_10(*(v0 + 16)) + 24);
  OUTLINED_FUNCTION_26();
  v9 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_19796E2B4;
  v6 = OUTLINED_FUNCTION_5(*(v0 + 16));

  return v7(v6);
}

uint64_t sub_197957BC8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelServiceClient.cancelSessionRequest(session:)();
}

uint64_t ModelServiceClient.cancelSessionRequest(session:)()
{
  OUTLINED_FUNCTION_18();
  v11 = *MEMORY[0x1E69E9840];
  v1[13] = v2;
  v1[14] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  v1[15] = OUTLINED_FUNCTION_90_4();
  v1[16] = swift_task_alloc();
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_197957D28()
{
  OUTLINED_FUNCTION_80();
  v20 = *MEMORY[0x1E69E9840];
  type metadata accessor for _OSActivity();
  v0[17] = swift_initStackObject();
  v0[18] = sub_1979489D4("Client cancelling session", 25, 2);
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v1 = v0[13];
  v2 = sub_197A87608();
  v0[19] = OUTLINED_FUNCTION_66_5(v2, qword_1ED880220);

  v3 = sub_197A875E8();
  v4 = sub_197A87D78();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = v0[13];
    OUTLINED_FUNCTION_56();
    v19 = OUTLINED_FUNCTION_41_0();
    *v1 = 136315138;
    v7 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
    v8 = sub_197A87298();
    OUTLINED_FUNCTION_3_14(v8);
    (*(v9 + 16))(v5, v6 + v7);
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    sub_197947A40(v5, &qword_1EAF49130, &qword_197A969C0);
    v10 = OUTLINED_FUNCTION_90();
    sub_197948834(v10, v11, v12);
    OUTLINED_FUNCTION_77_0();
    *(v1 + 4) = v5;
    OUTLINED_FUNCTION_31(&dword_197941000, v13, v14, "Sending cancel session for %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_19795814C;
  v16 = v0[14];
  v17 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_32_1(v0[13]);

  return ModelServiceClient.establishment(of:)();
}

uint64_t sub_197957F54(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_197A87298();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for ModelManagerError();
  v3[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v9 = type metadata accessor for ModelXPCRequest(0);
  v3[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BE8, &qword_197A92C68);
  v3[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = type metadata accessor for IPCSessionWrapper(0);
  v3[19] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979666C0, v2, 0);
}

uint64_t sub_19795814C()
{
  OUTLINED_FUNCTION_18();
  v11 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v2 + 160);
  *v4 = *v1;
  *(v3 + 168) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 112);
  if (v0)
  {
    v8 = sub_197A3F588;
  }

  else
  {
    v8 = sub_197958294;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_197958294()
{
  OUTLINED_FUNCTION_80();
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 120);
  v3 = *(v1 + 104);
  OUTLINED_FUNCTION_6_11(*(v1 + 112));
  v4 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v5 = sub_197A87298();
  OUTLINED_FUNCTION_3_14(v5);
  (*(v6 + 16))(v2, v3 + v4);
  v7 = *(v0 + 48);
  OUTLINED_FUNCTION_23();
  v16 = v8 + *v8;
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  *(v1 + 176) = v11;
  *v11 = v1;
  v11[1] = sub_19796C728;
  v12 = *MEMORY[0x1E69E9840];
  v13 = OUTLINED_FUNCTION_5(*(v1 + 120));

  return v14(v13);
}

uint64_t ModelXPCSender.cancelSession(id:)()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  v3 = type metadata accessor for ModelXPCRequest.CancelSessionRequest(v2);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_78_0();
  v6 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_197958488()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelXPCSender.cancelSession(id:)();
}

uint64_t sub_197958520()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_98_1();
  sub_197944528();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_139(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_177_0(v1);

  return sub_1979588D4(v3, v4);
}

uint64_t OUTLINED_FUNCTION_172_0@<X0>(int a1@<W8>)
{
  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_172_1()
{
  v2 = *(v0 + 72);

  return sub_197A878A8();
}

void sub_1979585F0()
{
  OUTLINED_FUNCTION_67();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v12 = sub_197A87298();
  OUTLINED_FUNCTION_6(v12);
  (*(v13 + 16))(v10, v0 + v11);
  sub_197A87C08();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_197947C44(v0 + 16, v21);
  sub_197944528();
  v18 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_197945EF8(v21, v19 + 32);
  sub_19795EE70(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  OUTLINED_FUNCTION_16_4();
  sub_19795CB2C();

  sub_197947A40(v10, &qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_66();
}