uint64_t sub_25BB4BC8C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D84C38];
  v3 = sub_25BCB7A8C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_25BB4BD14()
{
  sub_25BCB732C();
  swift_getWitnessTable();
  sub_25BCB785C();
  return 0;
}

uint64_t sub_25BB4BD88(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_25BB4BD14();
}

uint64_t sub_25BB4BFC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    sub_25BB429B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BB4C054()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_25BCB624C();
}

uint64_t sub_25BB4C09C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 130);
  v4 = sub_25BCB52EC();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_279971AA8 + v3);

  return v5(a1, v6, v4);
}

uint64_t sub_25BB4C114()
{
  OUTLINED_FUNCTION_30_6();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_50();
  v101 = v7;
  OUTLINED_FUNCTION_6_1();
  v9 = MEMORY[0x28223BE20](v8);
  v104 = OUTLINED_FUNCTION_20_8(v9, v10, v11, v12, v13, v14, v15, v16, v96[0]);
  v17 = OUTLINED_FUNCTION_2(v104);
  v108 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_33_4();
  v22 = MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8_16(v22, v23, v24, v25, v26, v27, v28, v29, v96[0]);
  v31 = MEMORY[0x28223BE20](v30);
  v39 = OUTLINED_FUNCTION_21_9(v31, v32, v33, v34, v35, v36, v37, v38, v96[0]);
  v40 = OUTLINED_FUNCTION_2(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_50();
  v103 = v45;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v46);
  v47 = OUTLINED_FUNCTION_26_2();
  if (!sub_25BB3EE04(v47, v1))
  {
    sub_25BAD5AC0();
    OUTLINED_FUNCTION_27_7();
    sub_25BB0E2EC();
    v53 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_15_11(v53, v54);
    return OUTLINED_FUNCTION_31_4();
  }

  OUTLINED_FUNCTION_27_7();
  v106 = v42;
  v107 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_25BCBAE50;
  v48 = v3;
  sub_25BB4C09C(v4);
  v102 = v3[7];
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_7_16();
  (v3)();
  if (LOBYTE(v111[0]) > 0xCu || (OUTLINED_FUNCTION_16_0(), v49) || v105 > 0xC || (OUTLINED_FUNCTION_23_9(), v49))
  {
    sub_25BBF5120();
    sub_25BB0E2EC();
    v93 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_13_11(v93, v94);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_29_6();
    v87 = v4;
    goto LABEL_19;
  }

  v50 = OUTLINED_FUNCTION_16_14();
  (v3)(v50);
  LODWORD(v98) = LOBYTE(v111[0]);
  v51 = *(v2 + 16);
  v96[2] = v42;
  v51(v111, v42, v2);
  OUTLINED_FUNCTION_34_5();
  if (v52)
  {
    sub_25BCB617C();
  }

  else
  {
    v48 = &unk_286D436A8;
  }

  v55 = v102;
  sub_25BBF5A38(v48, 0);

  v56 = v102[2];
  v99 = v1;
  v96[1] = v2;
  if (v56)
  {
    sub_25BCB617C();
  }

  else
  {
    v55 = &unk_286D436D0;
  }

  v57 = v109;
  sub_25BBF5A38(v55, 0);

  v97 = sub_25BCB523C();
  v58 = v103;
  (*(v106 + 16))(v103, v4, v107);
  LOBYTE(v112) = v98;
  sub_25BBF4F40();
  v59 = OUTLINED_FUNCTION_11_17();
  v60 = v104;
  (v108)(v59);
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_41_4();
  v61 = OUTLINED_FUNCTION_12_11();
  (v108)(v61);
  OUTLINED_FUNCTION_40_5();
  sub_25BB45648(v111);
  OUTLINED_FUNCTION_38_4();
  sub_25BCB6E0C();
  v62 = OUTLINED_FUNCTION_42_3();
  v103 = OUTLINED_FUNCTION_4_20(v62, v63, v64, v65);
  if (!v103)
  {

    sub_25BBF5120();
    sub_25BB0E2EC();
    v82 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_14_14(v82, v83);
    swift_unknownObjectRelease();
    v84 = OUTLINED_FUNCTION_6_22();
    v58(v84);
    v85 = OUTLINED_FUNCTION_10_12();
    v58(v85);
    OUTLINED_FUNCTION_29_6();
    v87 = v98;
LABEL_19:
    v86(v87, v107);
    goto LABEL_20;
  }

  type metadata accessor for NativeTensorStorage();
  v112 = v102;
  v110 = v2;
  sub_25BCB617C();
  OUTLINED_FUNCTION_19_10();
  v67 = v66;
  v68 = OUTLINED_FUNCTION_18_14();
  (v108)(v68);
  OUTLINED_FUNCTION_17_12(v109);
  v69 = v101;
  (v108)(v101, v109, v104);
  v70 = OUTLINED_FUNCTION_17_12(v101);
  v105 = v96;
  v71 = MEMORY[0x28223BE20](v70);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_35_3();
  *(v72 - 48) = v67;
  *(v72 - 40) = &off_286D4DBE0;
  *(v72 - 32) = v69;
  *(v72 - 24) = sub_25BB4D624;
  *(v72 - 16) = v73;

  OUTLINED_FUNCTION_3_16();
  sub_25BC675C0(v74, v75, v76, v77);
  if (v0)
  {
    swift_unknownObjectRelease();

    sub_25BB0EA20(v57);
    v78 = OUTLINED_FUNCTION_6_22();
    v69(v78);
    v79 = OUTLINED_FUNCTION_10_12();
    v69(v79);
    v80 = OUTLINED_FUNCTION_5_19();
    v81(v80);
    sub_25BB0EA20(v69);
LABEL_20:
    *(v100 + 16) = 0;

    return OUTLINED_FUNCTION_31_4();
  }

  v97 = v67;

  sub_25BB0EA20(v57);
  v88 = *(v108 + 8);
  v88(v109, v60);
  v89 = OUTLINED_FUNCTION_10_12();
  (v88)(v89);
  v90 = OUTLINED_FUNCTION_5_19();
  v91(v90);
  sub_25BB0EA20(v69);
  v92 = v100;
  *(v100 + 32) = v97;
  *(v92 + 40) = &off_286D4DBE0;
  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_31_4();
}

uint64_t sub_25BB4C7A8()
{
  OUTLINED_FUNCTION_30_6();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_50();
  v98 = v7;
  OUTLINED_FUNCTION_6_1();
  v9 = MEMORY[0x28223BE20](v8);
  v97 = OUTLINED_FUNCTION_20_8(v9, v10, v11, v12, v13, v14, v15, v16, v91);
  v17 = OUTLINED_FUNCTION_2(v97);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_33_4();
  v21 = MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8_16(v21, v22, v23, v24, v25, v26, v27, v28, v92);
  v30 = MEMORY[0x28223BE20](v29);
  v38 = OUTLINED_FUNCTION_21_9(v30, v31, v32, v33, v34, v35, v36, v37, v93);
  v39 = OUTLINED_FUNCTION_2(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v44);
  v45 = OUTLINED_FUNCTION_26_2();
  if (!sub_25BB3EE04(v45, v1))
  {
    sub_25BC66518();
    OUTLINED_FUNCTION_27_7();
    sub_25BB0E2EC();
    v51 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_15_11(v51, v52);
    return OUTLINED_FUNCTION_31_4();
  }

  OUTLINED_FUNCTION_27_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_25BCBAE50;
  sub_25BB4CD7C(MEMORY[0x277D82F18], MEMORY[0x277D82F10], v4);
  v96 = *(v3 + 56);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_7_16();
  (v3)();
  if (v100[0] > 0xCu || (OUTLINED_FUNCTION_16_0(), v46) || v99 > 0xC || (OUTLINED_FUNCTION_23_9(), v46))
  {
    sub_25BBF5120();
    sub_25BB0E2EC();
    v88 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_13_11(v88, v89);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_29_6();
    v83 = v4;
    goto LABEL_18;
  }

  v47 = OUTLINED_FUNCTION_16_14();
  (v3)(v47);
  v48 = OUTLINED_FUNCTION_24_6();
  v49(v48);
  OUTLINED_FUNCTION_34_5();
  if (v50)
  {
    sub_25BCB617C();
  }

  OUTLINED_FUNCTION_39_6();

  if (*(v1 + 2))
  {
    sub_25BCB617C();
  }

  else
  {
    v1 = &unk_286D43AB8;
  }

  OUTLINED_FUNCTION_46_3();

  v53 = sub_25BCB523C();
  v54 = OUTLINED_FUNCTION_28_6(v53);
  v55(v54);
  v100[736] = v38;
  sub_25BBF4F40();
  v56 = OUTLINED_FUNCTION_11_17();
  v38(v56);
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_41_4();
  v57 = OUTLINED_FUNCTION_12_11();
  v38(v57);
  OUTLINED_FUNCTION_40_5();
  sub_25BB45648(v100);
  OUTLINED_FUNCTION_38_4();
  sub_25BCB6E0C();
  v58 = OUTLINED_FUNCTION_42_3();
  if (!OUTLINED_FUNCTION_4_20(v58, v59, v60, v61))
  {

    sub_25BBF5120();
    sub_25BB0E2EC();
    v78 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_14_14(v78, v79);
    swift_unknownObjectRelease();
    v80 = OUTLINED_FUNCTION_6_22();
    v1(v80);
    v81 = OUTLINED_FUNCTION_10_12();
    v1(v81);
    OUTLINED_FUNCTION_29_6();
    v83 = v94;
LABEL_18:
    v82(v83, v38);
    goto LABEL_19;
  }

  type metadata accessor for NativeTensorStorage();
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_19_10();
  v63 = v62;
  v64 = OUTLINED_FUNCTION_18_14();
  v38(v64);
  OUTLINED_FUNCTION_17_12(v41);
  v65 = OUTLINED_FUNCTION_44_3();
  v38(v65);
  v66 = OUTLINED_FUNCTION_17_12(v2);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_25_8();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_35_3();
  *(v68 - 48) = v63;
  *(v68 - 40) = &off_286D4DBE0;
  *(v68 - 32) = v2;
  *(v68 - 24) = sub_25BB4D6BC;
  *(v68 - 16) = v69;

  OUTLINED_FUNCTION_3_16();
  sub_25BC675C0(v70, v71, v72, v73);
  if (v0)
  {
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_47_5();
    v74 = OUTLINED_FUNCTION_6_22();
    v1(v74);
    v75 = OUTLINED_FUNCTION_10_12();
    v1(v75);
    v76 = OUTLINED_FUNCTION_5_19();
    v77(v76);
    sub_25BB0EA20(v98);
LABEL_19:
    *(v95 + 16) = 0;

    return OUTLINED_FUNCTION_31_4();
  }

  OUTLINED_FUNCTION_47_5();
  v84 = OUTLINED_FUNCTION_45_5();
  v63(v84);
  v85 = OUTLINED_FUNCTION_10_12();
  v63(v85);
  v86 = OUTLINED_FUNCTION_5_19();
  v87(v86);
  sub_25BB0EA20(v98);
  *(v95 + 32) = v3;
  *(v95 + 40) = &off_286D4DBE0;
  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_31_4();
}

uint64_t sub_25BB4CD7C@<X0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 130);
  v8 = sub_25BCB52EC();
  v9 = *(*(v8 - 8) + 104);
  if (v7)
  {
    v10 = a1;
  }

  else
  {
    v10 = a2;
  }

  v11 = *v10;

  return v9(a3, v11, v8);
}

uint64_t sub_25BB4CE00()
{
  OUTLINED_FUNCTION_30_6();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_50();
  v98 = v7;
  OUTLINED_FUNCTION_6_1();
  v9 = MEMORY[0x28223BE20](v8);
  v97 = OUTLINED_FUNCTION_20_8(v9, v10, v11, v12, v13, v14, v15, v16, v91);
  v17 = OUTLINED_FUNCTION_2(v97);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_33_4();
  v21 = MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8_16(v21, v22, v23, v24, v25, v26, v27, v28, v92);
  v30 = MEMORY[0x28223BE20](v29);
  v38 = OUTLINED_FUNCTION_21_9(v30, v31, v32, v33, v34, v35, v36, v37, v93);
  v39 = OUTLINED_FUNCTION_2(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v44);
  v45 = OUTLINED_FUNCTION_26_2();
  if (!sub_25BB3EE04(v45, v1))
  {
    sub_25BC66544();
    OUTLINED_FUNCTION_27_7();
    sub_25BB0E2EC();
    v51 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_15_11(v51, v52);
    return OUTLINED_FUNCTION_31_4();
  }

  OUTLINED_FUNCTION_27_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_25BCBAE50;
  sub_25BB4CD7C(MEMORY[0x277D82F48], MEMORY[0x277D82EC0], v4);
  v96 = *(v3 + 56);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_7_16();
  (v3)();
  if (v100[0] > 0xCu || (OUTLINED_FUNCTION_16_0(), v46) || v99 > 0xC || (OUTLINED_FUNCTION_23_9(), v46))
  {
    sub_25BBF5120();
    sub_25BB0E2EC();
    v88 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_13_11(v88, v89);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_29_6();
    v83 = v4;
    goto LABEL_18;
  }

  v47 = OUTLINED_FUNCTION_16_14();
  (v3)(v47);
  v48 = OUTLINED_FUNCTION_24_6();
  v49(v48);
  OUTLINED_FUNCTION_34_5();
  if (v50)
  {
    sub_25BCB617C();
  }

  OUTLINED_FUNCTION_39_6();

  if (*(v1 + 2))
  {
    sub_25BCB617C();
  }

  else
  {
    v1 = &unk_286D43A68;
  }

  OUTLINED_FUNCTION_46_3();

  v53 = sub_25BCB523C();
  v54 = OUTLINED_FUNCTION_28_6(v53);
  v55(v54);
  v100[736] = v38;
  sub_25BBF4F40();
  v56 = OUTLINED_FUNCTION_11_17();
  v38(v56);
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_41_4();
  v57 = OUTLINED_FUNCTION_12_11();
  v38(v57);
  OUTLINED_FUNCTION_40_5();
  sub_25BB45648(v100);
  OUTLINED_FUNCTION_38_4();
  sub_25BCB6E0C();
  v58 = OUTLINED_FUNCTION_42_3();
  if (!OUTLINED_FUNCTION_4_20(v58, v59, v60, v61))
  {

    sub_25BBF5120();
    sub_25BB0E2EC();
    v78 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_14_14(v78, v79);
    swift_unknownObjectRelease();
    v80 = OUTLINED_FUNCTION_6_22();
    v1(v80);
    v81 = OUTLINED_FUNCTION_10_12();
    v1(v81);
    OUTLINED_FUNCTION_29_6();
    v83 = v94;
LABEL_18:
    v82(v83, v38);
    goto LABEL_19;
  }

  type metadata accessor for NativeTensorStorage();
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_19_10();
  v63 = v62;
  v64 = OUTLINED_FUNCTION_18_14();
  v38(v64);
  OUTLINED_FUNCTION_17_12(v41);
  v65 = OUTLINED_FUNCTION_44_3();
  v38(v65);
  v66 = OUTLINED_FUNCTION_17_12(v2);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_25_8();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_35_3();
  *(v68 - 48) = v63;
  *(v68 - 40) = &off_286D4DBE0;
  *(v68 - 32) = v2;
  *(v68 - 24) = sub_25BB4D6BC;
  *(v68 - 16) = v69;

  OUTLINED_FUNCTION_3_16();
  sub_25BC675C0(v70, v71, v72, v73);
  if (v0)
  {
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_47_5();
    v74 = OUTLINED_FUNCTION_6_22();
    v1(v74);
    v75 = OUTLINED_FUNCTION_10_12();
    v1(v75);
    v76 = OUTLINED_FUNCTION_5_19();
    v77(v76);
    sub_25BB0EA20(v98);
LABEL_19:
    *(v95 + 16) = 0;

    return OUTLINED_FUNCTION_31_4();
  }

  OUTLINED_FUNCTION_47_5();
  v84 = OUTLINED_FUNCTION_45_5();
  v63(v84);
  v85 = OUTLINED_FUNCTION_10_12();
  v63(v85);
  v86 = OUTLINED_FUNCTION_5_19();
  v87(v86);
  sub_25BB0EA20(v98);
  *(v95 + 32) = v3;
  *(v95 + 40) = &off_286D4DBE0;
  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_31_4();
}

uint64_t sub_25BB4D3D4(uint64_t a1)
{
  result = sub_25BB4D65C(&qword_27FBB49D8, type metadata accessor for LogicalReductionOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB4D42C(uint64_t a1)
{
  result = sub_25BB4D65C(&qword_27FBB49E0, type metadata accessor for ArgumentReductionOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB4D484(uint64_t a1)
{
  result = sub_25BB4D65C(qword_28154E988, type metadata accessor for ReductionOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB4D4DC(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_25BBF5518(a5, 0);
  v11 = sub_25BBF5518(a6, 0);
  v12 = *(a1 + 136);
  if (v12 && (v13 = *(a2 + 136)) != 0)
  {
    v14 = v11;
    v15 = sub_25BCB548C();
    result = BNNSFilterApplyBatch(v15, a4, v12, v10, v13, v14);
    if (!result)
    {
      return result;
    }

    v17 = MEMORY[0x277D83080];
  }

  else
  {
    v17 = MEMORY[0x277D83090];
  }

  v18 = sub_25BCB547C();
  sub_25BB4D65C(&qword_27FBB40C8, MEMORY[0x277D83098]);
  swift_allocError();
  (*(*(v18 - 8) + 104))(v19, *v17, v18);
  return swift_willThrow();
}

uint64_t sub_25BB4D65C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_36_3()
{
  *(v2 - 72) = *(v0 + 80);
  *(v0 + 167) = v1;

  return sub_25BCB617C();
}

uint64_t OptimizerStateDictionary.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v60 = a1;
  v57 = a4;
  OUTLINED_FUNCTION_9();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v56 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25BCB736C();
  OUTLINED_FUNCTION_6_2();
  WitnessTable = swift_getWitnessTable();
  v13 = type metadata accessor for RecursiveStoredPropertiesIterator();
  v14 = OUTLINED_FUNCTION_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v59 = v52 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = v52 - v24;
  v26 = type metadata accessor for AnyLayerVariablePathCache();
  v27 = sub_25BAB5DD8(a2, &type metadata for Parameter, 1, a2);
  v61 = v12;
  if (v27)
  {
    v28 = a2;
    v29 = v60;
  }

  else
  {
    v52[1] = v26;
    v30 = sub_25BCB604C();
    v67 = MEMORY[0x277D84FA0];
    v68 = v30;
    v66 = MEMORY[0x277D84FA0];
    v31 = v56;
    v32 = v60;
    (*(v7 + 16))(v56, v60, a2);
    v33 = swift_allocObject();
    v53 = a3;
    v54 = a2;
    *(v33 + 16) = a2;
    *(v33 + 24) = a3;
    *(v33 + 32) = 1;
    *(v33 + 36) = 4;
    sub_25BAB1090(v31, sub_25BAB60FC, v33, v25);
    (*(v16 + 16))(v21, v25, v13);
    OUTLINED_FUNCTION_4_5();
    v34 = swift_getWitnessTable();
    v35 = v59;
    MEMORY[0x25F876DC0](v13, v34);
    v36 = MEMORY[0x277D84F90];
    v29 = v32;
    v37 = v35;
    for (i = v16; ; v16 = i)
    {
      v38 = v13;
      sub_25BAB173C(v13, &v62);
      v39 = v62;
      if (!v62)
      {
        break;
      }

      v40 = v63;
      v41 = v64;
      v42 = sub_25BCB681C();
      v62 = v39;
      sub_25BCB68CC();

      sub_25BCB687C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = *(v36 + 16);
        OUTLINED_FUNCTION_45();
        sub_25BAB22A0();
        v36 = v46;
      }

      v44 = *(v36 + 16);
      v43 = *(v36 + 24);
      if (v44 >= v43 >> 1)
      {
        OUTLINED_FUNCTION_14_15(v43);
        sub_25BAB22A0();
        v36 = v47;
      }

      *(v36 + 16) = v44 + 1;
      *(v36 + 8 * v44 + 32) = v40;
      if ((v41 & 0x400000000) != 0)
      {
        sub_25BAA2CDC(&v62, v42);
      }

      if (v41)
      {
        sub_25BAA2CDC(&v62, v42);
      }

      v37 = v59;
      v29 = v60;
      v13 = v38;
    }

    v48 = *(v16 + 8);
    i = v16 + 8;
    v56 = v48;
    (v48)(v37, v38);
    v28 = v54;
    v62 = v54;
    v63 = &type metadata for Parameter;
    v64 = v53;
    v65 = &protocol witness table for Parameter;
    type metadata accessor for LayerVariablePaths();
    sub_25BAB2794();
    v50 = v49;
    sub_25BAB61C4();
    OUTLINED_FUNCTION_18_15();
    sub_25BAB61CC(v50);
    (v56)(v25, v38);
  }

  type metadata accessor for OptimizerStateDictionary.ParameterKey();
  swift_getTupleTypeMetadata2();
  sub_25BCB67CC();
  OUTLINED_FUNCTION_0_23();
  swift_getWitnessTable();
  *v57 = sub_25BCB614C();
  sub_25BAB9528();
  sub_25BCB681C();

  sub_25BCB61AC();
  sub_25BCB613C();

  return (*(v7 + 8))(v29, v28);
}

uint64_t sub_25BB4DC6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OptimizerStateDictionary.ParameterKey();
  swift_getTupleTypeMetadata2();
  sub_25BCB67CC();
  swift_getWitnessTable();
  v15 = sub_25BCB614C();
  sub_25BCB736C();
  sub_25BCB618C();
  sub_25BCB61AC();
  result = sub_25BCB613C();
  v5 = 0;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = )
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (v10 << 9) | (8 * v11);
    v13 = *(*(a1 + 48) + v12);
    v14 = *(*(a1 + 56) + v12);
    swift_retain_n();

    sub_25BCB6FEC();

    sub_25BCB61CC();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      *a2 = v15;
      return result;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB4DE84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *(a2 + a3 - 16);
  v5 = *(a2 + a3 - 8);
  v7 = *a2;
  v11 = *a1;
  v8 = type metadata accessor for OptimizerStateDictionary();
  result = OptimizerStateDictionary.subscript.getter(v7, v8);
  *a4 = v10;
  return result;
}

uint64_t sub_25BB4DEF0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a3;
  v9 = *a1;
  v7 = type metadata accessor for OptimizerStateDictionary();

  return OptimizerStateDictionary.subscript.setter(&v9, v6, v7);
}

uint64_t (*OptimizerStateDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  OptimizerStateDictionary.subscript.getter(a2, a3);
  return sub_25BB4DFCC;
}

uint64_t sub_25BB4DFCC(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    v7 = *a1;

    OptimizerStateDictionary.subscript.setter(&v7, v4, v2);
  }

  else
  {
    v7 = *a1;

    return OptimizerStateDictionary.subscript.setter(&v7, v4, v2);
  }
}

uint64_t sub_25BB4E06C(uint64_t a1, uint64_t a2)
{
  sub_25BCB79CC();
  MEMORY[0x25F878200](a2);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB4E0B4()
{
  v0 = sub_25BCB761C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BB4E10C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_25BB4E06C(*v1, v1[1]);
}

uint64_t sub_25BB4E11C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_25BACD94C(a1, *v2, v2[1]);
}

uint64_t sub_25BB4E12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB4E1A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25BB4E20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB4E27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB4E2EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_25BB4E0B4();
  *a3 = result;
  return result;
}

uint64_t sub_25BB4E324@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = sub_25BADF1E4(*v2);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_25BB4E358(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_25BADF1E4(*v1);
}

uint64_t sub_25BB4E368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_25BB4E108(a1, a2, *(a3 + 16), *(a3 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_25BB4E398(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_25BB085B4();
}

uint64_t sub_25BB4E3C0@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_25BB0716C();
  *a2 = result;
  return result;
}

uint64_t sub_25BB4E3F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25BB4E444(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t OptimizerStateDictionary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v176 = a4;
  v7 = sub_25BCB736C();
  OUTLINED_FUNCTION_6_2();
  v184 = v7;
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for RecursiveStoredPropertiesIterator();
  v9 = OUTLINED_FUNCTION_2(v8);
  v182 = v10;
  v183 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_9_13();
  v14 = MEMORY[0x28223BE20](v13);
  v181 = &v160 - v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_19_0(v16);
  OUTLINED_FUNCTION_21_10();
  v169 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_2(v169);
  v168 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19_0(&v160 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48D8, &unk_25BCC0120);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_9_13();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_1();
  v173 = v25;
  v180 = sub_25BCB741C();
  v26 = OUTLINED_FUNCTION_2(v180);
  v178 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_9_13();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_19_0(v31);
  OUTLINED_FUNCTION_9();
  v170 = v32;
  v34 = *(v33 + 64);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v160 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v160 - v39;
  v175 = a2;
  v177 = a3;
  type metadata accessor for OptimizerStateDictionary.CodingKeys();
  OUTLINED_FUNCTION_11_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_10();
  v41 = sub_25BCB76FC();
  OUTLINED_FUNCTION_2(v41);
  v174 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v45);
  v47 = &v160 - v46;
  v48 = a1;
  v50 = a1[3];
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(v48, v50);
  v51 = v179;
  sub_25BCB7B2C();
  v52 = v48;
  if (v51)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v161 = v38;
  v53 = v178;
  v163 = v40;
  v179 = 0;
  v164 = v47;
  v165 = v41;
  v54 = v175;
  v55 = v48[3];
  v56 = v48[4];
  v162 = v48;
  __swift_project_boxed_opaque_existential_1(v48, v55);
  v57 = sub_25BCB7B1C();
  v58 = v173;
  OUTLINED_FUNCTION_33_5();
  result = __swift_getEnumTagSinglePayload(v58, 1, v180);
  if (result == 1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v60 = v53;
  v61 = *(v53 + 32);
  v62 = v171;
  v63 = v58;
  v64 = v180;
  v61(v171, v63, v180);
  sub_25BB3EF70(v62, v57, &v187);

  v65 = v60 + 8;
  v66 = *(v60 + 8);
  v66(v62, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40F8, &qword_25BCBF760);
  v67 = v172;
  v68 = swift_dynamicCast();
  v69 = v177;
  if (v68)
  {
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v54);
    OUTLINED_FUNCTION_29_7(&v194);
    v71 = v163;
    (*(v70 + 32))(v163, v67, v54);
    v72 = type metadata accessor for AnyLayerVariablePathCache();
    v73 = OUTLINED_FUNCTION_20_9();
    v77 = sub_25BAB5DD8(v73, v74, v75, v76);
    if (v77)
    {
      v78 = v77;
    }

    else
    {
      v180 = v72;
      *&v186 = sub_25BCB604C();
      *&v185 = MEMORY[0x277D84FA0];
      v190 = MEMORY[0x277D84FA0];
      v96 = v161;
      (*(v38 + 2))(v161, v71, v54);
      v97 = swift_allocObject();
      *(v97 + 16) = v54;
      *(v97 + 24) = v69;
      *(v97 + 32) = 1;
      *(v97 + 36) = 4;
      OUTLINED_FUNCTION_29_7(&v191);
      sub_25BAB1090(v96, v98, v99, v100);
      v102 = v182;
      v101 = v183;
      v103 = *(v182 + 16);
      v104 = OUTLINED_FUNCTION_102_1();
      v105(v104);
      OUTLINED_FUNCTION_4_5();
      v106 = swift_getWitnessTable();
      v107 = v181;
      MEMORY[0x25F876DC0](v101, v106);
      v108 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_25BAB173C(v101, &v187);
        v109 = v187;
        if (!v187)
        {
          break;
        }

        v110 = *(&v187 + 1);
        v111 = v188;
        v112 = sub_25BCB681C();
        *&v187 = v109;
        sub_25BCB68CC();

        sub_25BCB687C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = *(v108 + 16);
          OUTLINED_FUNCTION_45();
          sub_25BAB22A0();
          v108 = v116;
        }

        v114 = *(v108 + 16);
        v113 = *(v108 + 24);
        if (v114 >= v113 >> 1)
        {
          OUTLINED_FUNCTION_14_15(v113);
          sub_25BAB22A0();
          v108 = v117;
        }

        *(v108 + 16) = v114 + 1;
        *(v108 + 8 * v114 + 32) = v110;
        if ((v111 & 0x400000000) != 0)
        {
          sub_25BAA2CDC(&v187, v112);
        }

        v107 = v181;
        if (v111)
        {
          sub_25BAA2CDC(&v187, v112);
        }

        v102 = v182;
        v101 = v183;
      }

      v118 = *(v102 + 8);
      v118(v107, v101);
      *&v187 = v54;
      *(&v187 + 1) = &type metadata for Parameter;
      v188 = v177;
      v189 = &protocol witness table for Parameter;
      OUTLINED_FUNCTION_23_10();
      type metadata accessor for LayerVariablePaths();
      OUTLINED_FUNCTION_32_5();
      sub_25BAB2794();
      v120 = v119;
      OUTLINED_FUNCTION_20_9();
      sub_25BAB61C4();
      OUTLINED_FUNCTION_18_15();
      sub_25BAB61CC(v120);
      v121 = v101;
      v78 = v120;
      v118(v167, v121);
    }

    v122 = sub_25BC41DA0();

    *&v187 = v122;
    *&v185 = sub_25BAB9528();
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
    v124 = sub_25BCB68CC();
    v125 = sub_25BB5048C(&qword_27FBB4098, &qword_27FBB3F98, &unk_25BCC3720);
    OUTLINED_FUNCTION_7_2();
    v126 = swift_getWitnessTable();
    OUTLINED_FUNCTION_17_13();
    sub_25BCB793C();

    v185 = v186;
    *&v187 = v123;
    *(&v187 + 1) = v124;
    v188 = v125;
    v189 = v126;
    OUTLINED_FUNCTION_23_10();
    sub_25BCB715C();
    OUTLINED_FUNCTION_5_5();
    swift_getWitnessTable();
    sub_25BCB615C();
    v190 = sub_25BCB604C();
    LOBYTE(v186) = 0;
    sub_25BB504D0(&qword_27FBB49E8);
    v127 = v179;
    sub_25BCB76AC();
    if (v127)
    {

      v128 = OUTLINED_FUNCTION_8_17();
      v129(v128, v54);
      v130 = *(v174 + 8);
      v94 = OUTLINED_FUNCTION_27_8();
LABEL_22:
      v95(v94);
LABEL_23:
      v52 = v162;
      return __swift_destroy_boxed_opaque_existential_1(v52);
    }

    v181 = v126;
    v182 = v78;
    v131 = v187;
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB49F0, &unk_25BCC0140);
    LOBYTE(v186) = 1;
    sub_25BB5053C(&qword_27FBB49F8, sub_25BB1B9B0);
    result = sub_25BCB76AC();
    v179 = 0;
    v183 = v124;
    v133 = 0;
    v180 = v187;
    v134 = *(v131 + 16);
    for (i = (v131 + 40); ; i += 2)
    {
      v136 = v176;
      if (v134 == v133)
      {

        *&v187 = v190;
        *&v185 = v180;
        v141 = sub_25BB5048C(&qword_27FBB4A00, &qword_27FBB49F0, &unk_25BCC0140);
        OUTLINED_FUNCTION_17_13();
        v142 = v183;
        v143 = v181;
        sub_25BCB793C();

        v185 = v186;
        *&v187 = v142;
        *(&v187 + 1) = v132;
        v188 = v143;
        v189 = v141;
        OUTLINED_FUNCTION_23_10();
        sub_25BCB715C();
        OUTLINED_FUNCTION_5_5();
        swift_getWitnessTable();
        v144 = sub_25BCB615C();
        v145 = v175;
        sub_25BB4DC6C(v144, &v187);

        v146 = OUTLINED_FUNCTION_8_17();
        v147(v146, v145);
        v148 = OUTLINED_FUNCTION_16_15();
        v149(v148);
        *v136 = v187;
        return __swift_destroy_boxed_opaque_existential_1(v162);
      }

      if (v133 >= *(v131 + 16))
      {
        break;
      }

      v137 = v131;
      v139 = *(i - 1);
      v138 = *i;
      *&v187 = v139;
      *(&v187 + 1) = v138;
      swift_bridgeObjectRetain_n();
      sub_25BCB61BC();

      v140 = v186;
      if (!v186)
      {

        v150 = sub_25BCB71BC();
        OUTLINED_FUNCTION_14_0();
        v152 = v151;
        v153 = v164;
        sub_25BCB763C();
        OUTLINED_FUNCTION_15_12();
        sub_25BCB70FC();
        OUTLINED_FUNCTION_26_9();
        OUTLINED_FUNCTION_13_12();
        MEMORY[0x25F876C90](v154 + 51, v155 | 0x8000000000000000);
        MEMORY[0x25F876C90](v139, v138);

        MEMORY[0x25F876C90](11872, 0xE200000000000000);
        sub_25BCB71AC();
        v156 = *MEMORY[0x277D84168];
        OUTLINED_FUNCTION_11_1(v150);
        (*(v157 + 104))(v152);
        swift_willThrow();

        v158 = OUTLINED_FUNCTION_8_17();
        v159(v158, v175);
        (*(v174 + 8))(v153);
        goto LABEL_23;
      }

      ++v133;
      *&v187 = v140;
      result = sub_25BCB687C();
      v131 = v137;
    }

    __break(1u);
    goto LABEL_33;
  }

  v178 = v65;
  __swift_storeEnumTagSinglePayload(v67, 1, 1, v54);
  OUTLINED_FUNCTION_12_12(&v192);
  v79(v67, v169);
  v80 = v54;
  v81 = sub_25BCB71BC();
  v179 = OUTLINED_FUNCTION_14_0();
  v83 = v82;
  *v82 = type metadata accessor for OptimizerSerializationContext();
  v184 = sub_25BCB763C();
  OUTLINED_FUNCTION_15_12();
  sub_25BCB70FC();
  OUTLINED_FUNCTION_26_9();
  OUTLINED_FUNCTION_13_12();
  MEMORY[0x25F876C90](v84 + 150, v85 | 0x8000000000000000);
  OUTLINED_FUNCTION_29_7(&v193);
  OUTLINED_FUNCTION_33_5();
  result = __swift_getEnumTagSinglePayload(v80, 1, v180);
  if (result != 1)
  {
    v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48B8, &unk_25BCC0130) + 48);
    v87 = OUTLINED_FUNCTION_102_1();
    (v61)(v87);
    v88 = sub_25BCB740C();
    v90 = v89;
    v91 = OUTLINED_FUNCTION_102_1();
    (v66)(v91);
    MEMORY[0x25F876C90](v88, v90);

    MEMORY[0x25F876C90](46, 0xE100000000000000);
    sub_25BCB71AC();
    v92 = *MEMORY[0x277D84170];
    OUTLINED_FUNCTION_11_1(v81);
    (*(v93 + 104))(v83);
    swift_willThrow();
    v94 = OUTLINED_FUNCTION_16_15();
    goto LABEL_22;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t OptimizerStateDictionary.encode(to:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = sub_25BCB736C();
  OUTLINED_FUNCTION_6_2();
  v186 = v6;
  v167[2] = swift_getWitnessTable();
  v185 = type metadata accessor for RecursiveStoredPropertiesIterator();
  v7 = OUTLINED_FUNCTION_2(v185);
  v168 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_9_13();
  v12 = MEMORY[0x28223BE20](v11);
  v184 = v167 - v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_19_0(v14);
  *&v172 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_2(v172);
  v171 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v18);
  v176 = v167 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48D8, &unk_25BCC0120);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_9_13();
  MEMORY[0x28223BE20](v22);
  v24 = v167 - v23;
  v177 = sub_25BCB741C();
  v25 = OUTLINED_FUNCTION_2(v177);
  v182 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_9_13();
  MEMORY[0x28223BE20](v29);
  v31 = v167 - v30;
  OUTLINED_FUNCTION_9();
  v175 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_9_13();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_19_0(v37);
  v38 = *(a2 + 24);
  v180 = v5;
  v181 = v38;
  type metadata accessor for OptimizerStateDictionary.CodingKeys();
  OUTLINED_FUNCTION_11_18();
  swift_getWitnessTable();
  v179 = sub_25BCB77CC();
  OUTLINED_FUNCTION_2(v179);
  v173 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v42);
  v44 = v167 - v43;
  v183 = *v2;
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v178 = v44;
  sub_25BCB7B6C();
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v47 = sub_25BCB7B5C();
  OUTLINED_FUNCTION_33_5();
  v48 = v177;
  result = __swift_getEnumTagSinglePayload(v24, 1, v177);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v50 = v182;
    v51 = *(v182 + 32);
    v51(v31, v24, v48);
    sub_25BB3EF70(v31, v47, &v189);

    v54 = *(v50 + 8);
    v53 = v50 + 8;
    v52 = v54;
    v54(v31, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40F8, &qword_25BCBF760);
    v55 = v176;
    v56 = v180;
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_31_5();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
      v61 = v175;
      v62 = v174;
      (*(v175 + 32))(v174, v55, v56);
      v63 = type metadata accessor for AnyLayerVariablePathCache();
      OUTLINED_FUNCTION_31_5();
      v64 = v181;
      v69 = sub_25BAB5DD8(v65, v66, v67, v68);
      if (v69)
      {
        v70 = v69;
      }

      else
      {
        v182 = v63;
        *&v188 = sub_25BCB604C();
        *&v187 = MEMORY[0x277D84FA0];
        v192 = MEMORY[0x277D84FA0];
        v92 = *(v61 + 16);
        v93 = v167[0];
        v92(v167[0], v62, v56);
        v94 = swift_allocObject();
        *(v94 + 16) = v56;
        *(v94 + 24) = v64;
        *(v94 + 32) = 1;
        *(v94 + 36) = 4;
        OUTLINED_FUNCTION_29_7(&v192);
        sub_25BAB1090(v93, v95, v96, v97);
        v98 = *(v168 + 16);
        v99 = OUTLINED_FUNCTION_102_1();
        v100 = v185;
        v101(v99);
        OUTLINED_FUNCTION_4_5();
        WitnessTable = swift_getWitnessTable();
        MEMORY[0x25F876DC0](v100, WitnessTable);
        v103 = MEMORY[0x277D84F90];
        while (1)
        {
          sub_25BAB173C(v185, &v189);
          v104 = v189;
          if (!v189)
          {
            break;
          }

          v106 = *(&v189 + 1);
          v105 = v190;
          v107 = sub_25BCB681C();
          *&v189 = v104;
          OUTLINED_FUNCTION_21_10();
          sub_25BCB68CC();

          sub_25BCB687C();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = *(v103 + 16);
            OUTLINED_FUNCTION_45();
            sub_25BAB22A0();
            v103 = v111;
          }

          v109 = *(v103 + 16);
          v108 = *(v103 + 24);
          if (v109 >= v108 >> 1)
          {
            OUTLINED_FUNCTION_14_15(v108);
            sub_25BAB22A0();
            v103 = v112;
          }

          *(v103 + 16) = v109 + 1;
          *(v103 + 8 * v109 + 32) = v106;
          if ((v105 & 0x400000000) != 0)
          {
            sub_25BAA2CDC(&v189, v107);
          }

          if (v105)
          {
            sub_25BAA2CDC(&v189, v107);
          }
        }

        v177 = *(v168 + 8);
        v113 = v185;
        v177(v184, v185);
        *&v189 = v180;
        *(&v189 + 1) = &type metadata for Parameter;
        v190 = v181;
        v191 = &protocol witness table for Parameter;
        OUTLINED_FUNCTION_23_10();
        type metadata accessor for LayerVariablePaths();
        OUTLINED_FUNCTION_32_5();
        sub_25BAB2794();
        v70 = v114;
        OUTLINED_FUNCTION_31_5();
        sub_25BAB61C4();
        OUTLINED_FUNCTION_18_15();
        sub_25BAB61CC(v70);
        v177(v167[3], v113);
      }

      *&v189 = sub_25BAB9528();

      v115 = sub_25BC41DA0();
      v177 = v70;

      *&v187 = v115;
      v116 = sub_25BCB68CC();
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
      OUTLINED_FUNCTION_7_2();
      v118 = swift_getWitnessTable();
      v119 = sub_25BB5048C(&qword_27FBB4098, &qword_27FBB3F98, &unk_25BCC3720);
      OUTLINED_FUNCTION_17_13();
      sub_25BCB793C();

      v187 = v188;
      *&v189 = v116;
      *(&v189 + 1) = v117;
      v176 = v117;
      v190 = v118;
      v191 = v119;
      OUTLINED_FUNCTION_23_10();
      sub_25BCB715C();
      OUTLINED_FUNCTION_5_5();
      swift_getWitnessTable();
      v182 = sub_25BCB615C();
      type metadata accessor for OptimizerStateDictionary.ParameterKey();
      OUTLINED_FUNCTION_0_23();
      swift_getWitnessTable();
      v120 = sub_25BCB617C();
      v121 = v120;
      v122 = 0;
      v123 = v120 + 64;
      v124 = 1 << *(v120 + 32);
      v125 = -1;
      if (v124 < 64)
      {
        v125 = ~(-1 << v124);
      }

      v126 = v125 & *(v120 + 64);
      v127 = (v124 + 63) >> 6;
      v184 = MEMORY[0x277D84F90];
      v185 = MEMORY[0x277D84F90];
      while (v126)
      {
        v128 = v122;
LABEL_27:
        v129 = (*(v121 + 48) + ((v128 << 10) | (16 * __clz(__rbit64(v126)))));
        v118 = *v129;
        v130 = v129[1];
        v126 &= v126 - 1;
        *&v189 = v118;
        *(&v189 + 1) = v130;
        swift_retain_n();
        sub_25BCB61BC();

        v131 = v188;
        if (v188)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v140 = *(v185 + 16);
            OUTLINED_FUNCTION_45();
            sub_25BAA1B64();
            v185 = v141;
          }

          v132 = *(v185 + 16);
          v133 = v132 + 1;
          if (v132 >= *(v185 + 24) >> 1)
          {
            *(&v172 + 1) = v132 + 1;
            *&v172 = v132;
            sub_25BAA1B64();
            v133 = *(&v172 + 1);
            v132 = v172;
            v185 = v142;
          }

          v134 = v185;
          *(v185 + 16) = v133;
          *(v134 + 8 * v132 + 32) = v131;
          *&v188 = v118;

          sub_25BCB61BC();

          if (!*(&v189 + 1))
          {
LABEL_45:

            v156 = sub_25BCB71EC();
            v185 = OUTLINED_FUNCTION_14_0();
            v158 = v157;
            v184 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40E0, &qword_25BCBCC58) + 48);
            v159 = type metadata accessor for OptimizerSerializationContext();
            v158[3] = swift_getMetatypeMetadata();
            *v158 = v159;
            v160 = v178;
            v147 = v179;
            sub_25BCB771C();
            OUTLINED_FUNCTION_15_12();
            sub_25BCB70FC();
            OUTLINED_FUNCTION_26_9();
            OUTLINED_FUNCTION_13_12();
            MEMORY[0x25F876C90](v161 + 14, v162 | 0x8000000000000000);
            *&v188 = v118;
            sub_25BCB784C();
            MEMORY[0x25F876C90](11872, 0xE200000000000000);
            sub_25BCB71AC();
            v163 = *MEMORY[0x277D841A8];
            OUTLINED_FUNCTION_11_1(v156);
            (*(v164 + 104))(v158);
            swift_willThrow();

            v165 = OUTLINED_FUNCTION_22_8();
            v166(v165);
            OUTLINED_FUNCTION_12_12(&v194);
            v90 = v160;
            goto LABEL_42;
          }

          v172 = v189;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v143 = *(v184 + 16);
            OUTLINED_FUNCTION_45();
            sub_25BAB1E30();
            v184 = v144;
          }

          v135 = *(v184 + 16);
          v136 = v135 >= *(v184 + 24) >> 1;
          v171 = v135;
          v170 = v135 + 1;
          if (v136)
          {
            sub_25BAB1E30();
            v184 = v145;
          }

          v137 = v184;
          *(v184 + 16) = v170;
          v138 = v137 + 16 * v171;
          v139 = *(&v172 + 1);
          *(v138 + 32) = v172;
          *(v138 + 40) = v139;
          v122 = v128;
        }

        else
        {

          v122 = v128;
        }
      }

      while (1)
      {
        v128 = v122 + 1;
        if (__OFADD__(v122, 1))
        {
          __break(1u);
          goto LABEL_45;
        }

        if (v128 >= v127)
        {
          break;
        }

        v126 = *(v123 + 8 * v128);
        ++v122;
        if (v126)
        {
          goto LABEL_27;
        }
      }

      *&v189 = v184;
      LOBYTE(v188) = 0;
      sub_25BB504D0(&qword_27FBB4A08);
      v146 = v178;
      v147 = v179;
      v148 = v169;
      sub_25BCB779C();
      if (v148)
      {

        v149 = OUTLINED_FUNCTION_22_8();
        v150(v149);
        OUTLINED_FUNCTION_12_12(&v194);
        v151 = OUTLINED_FUNCTION_27_8();
        v152(v151);
      }

      *&v189 = v185;
      LOBYTE(v188) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB49F0, &unk_25BCC0140);
      sub_25BB5053C(qword_27FBB4A10, sub_25BB1B95C);
      sub_25BCB779C();
      v153 = v180;
      v154 = v175;
      v155 = v174;

      (*(v154 + 8))(v155, v153);
      OUTLINED_FUNCTION_12_12(&v194);
      v90 = v146;
LABEL_42:
      v91 = v147;
      return v89(v90, v91);
    }

    v182 = v53;
    OUTLINED_FUNCTION_31_5();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
    OUTLINED_FUNCTION_12_12(&v193);
    v75(v55, v172);
    v186 = sub_25BCB71EC();
    v185 = OUTLINED_FUNCTION_14_0();
    v77 = v76;
    v78 = type metadata accessor for OptimizerSerializationContext();
    v77[3] = swift_getMetatypeMetadata();
    *v77 = v78;
    v184 = sub_25BCB771C();
    OUTLINED_FUNCTION_15_12();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_26_9();
    OUTLINED_FUNCTION_13_12();
    MEMORY[0x25F876C90](v79 + 150, v80 | 0x8000000000000000);
    v81 = *(&v172 + 1);
    OUTLINED_FUNCTION_33_5();
    result = __swift_getEnumTagSinglePayload(v81, 1, v48);
    if (result != 1)
    {
      v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40E0, &qword_25BCBCC58) + 48);
      v83 = v170;
      v51(v170, v81, v48);
      v84 = sub_25BCB740C();
      v86 = v85;
      v52(v83, v48);
      MEMORY[0x25F876C90](v84, v86);

      MEMORY[0x25F876C90](46, 0xE100000000000000);
      sub_25BCB71AC();
      v87 = *MEMORY[0x277D841A8];
      OUTLINED_FUNCTION_11_1(v186);
      (*(v88 + 104))(v77);
      swift_willThrow();
      OUTLINED_FUNCTION_12_12(&v194);
      v90 = v178;
      v91 = v179;
      return v89(v90, v91);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB5048C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_7_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BB504D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB3F98, &unk_25BCC3720);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BB5053C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB49F0, &unk_25BCC0140);
    a2();
    OUTLINED_FUNCTION_27_8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BB505B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_25BB505EC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25BB506B8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BB507C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_25BB50ACC();
  result = sub_25BCB6E2C();
  *a3 = result;
  return result;
}

id sub_25BB50844(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

uint64_t sub_25BB50890()
{
  v0 = sub_25BCB5F6C();
  __swift_allocate_value_buffer(v0, qword_27FBDB4C0);
  __swift_project_value_buffer(v0, qword_27FBDB4C0);
  return sub_25BCB5F5C();
}

uint64_t sub_25BB50984(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_25BCB5EEC();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_25BCB5ECC();
}

uint64_t sub_25BB50A34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_25BCB5EEC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t sub_25BB50ACC()
{
  result = qword_28154BD58;
  if (!qword_28154BD58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28154BD58);
  }

  return result;
}

uint64_t sub_25BB50B10(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BCBB6D0;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v8 = *(a2 + 32);
  }

  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25BCBAE40;
  v11 = v2[6];
  *(v10 + 32) = sub_25BCB6A6C();
  v12 = v2[7];
  *(v10 + 40) = sub_25BCB6A6C();
  sub_25BB50DF0();
  v13 = sub_25BCB672C();

  OUTLINED_FUNCTION_0_24();
  v15 = 4 * v14;
  v17 = v2[3];
  v16 = v2[4];
  sub_25BCB617C();
  v18 = sub_25BB50E34(v9, v13, v3, 1, v4 & 1, v15, v17, v16, a1, &selRef_resizeTensor_size_mode_centerResult_alignCorners_layout_name_);

  *(v7 + 32) = v18;
  return v7;
}

uint64_t sub_25BB50C94(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BCBB6D0;
  v8 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v9 = *(a2 + 32);
  }

  v10 = v9;
  sub_25BAB4D78(1, v8 == 0, a2);
  if (v8)
  {
    v11 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v11 = *(a2 + 40);
  }

  v12 = v11;
  OUTLINED_FUNCTION_0_24();
  v14 = 4 * v13;
  v16 = *(v2 + 24);
  v15 = *(v2 + 32);
  sub_25BCB617C();
  v17 = sub_25BB50E34(v10, v12, v3, 1, v4 & 1, v14, v16, v15, a1, &selRef_resizeWithGradientTensor_input_mode_centerResult_alignCorners_layout_name_);

  *(v7 + 32) = v17;
  return v7;
}

unint64_t sub_25BB50DF0()
{
  result = qword_28154BD90;
  if (!qword_28154BD90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28154BD90);
  }

  return result;
}

id sub_25BB50E34(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, SEL *a10)
{
  v16 = sub_25BCB633C();

  v17 = [a9 *a10];

  return v17;
}

uint64_t sub_25BB50EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 < 1)
  {
    goto LABEL_10;
  }

  v13 = sub_25BCB6ABC();
  v14 = v13 + a1;
  if (__OFADD__(v13, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  if (v16 / a1 > 1)
  {
    v20[0] = a4;
    v20[1] = a5;
    v21 = a6;
    v22 = MEMORY[0x28223BE20](v13);
    v23 = v19;
    v24 = v6;
    v25 = a2;
    v26 = a3;
    return sub_25BB6AD58();
  }

  else
  {
    MEMORY[0x28223BE20](v13);
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = a2;
    v25 = a3;
    return sub_25BAB2B20(sub_25BB517A4, v20, a4, a5, MEMORY[0x277D84A98], a6, MEMORY[0x277D84AC0], v17);
  }
}

uint64_t sub_25BB51084(uint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = a3;
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BCB6EAC();
  if (result)
  {
    v6 = sub_25BAADFB0();
    MEMORY[0x28223BE20](v6);
    return sub_25BCB6CEC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BB5116C(uint64_t *a1, void *a2)
{
  v3 = v2[2];
  v4 = v2[6];
  v5 = v2[7];
  v6 = v2[8];
  v7 = v2[9];
  v9 = v2[3];
  v10 = v2[4];
  return sub_25BB51084(a1, a2, v2[5]);
}

uint64_t sub_25BB511A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v73 = a6;
  v74 = a7;
  v77 = a4;
  v15 = *(a10 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v71 = &v59 - v19;
  v75 = a9;
  v20 = *(a9 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v70 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a10;
  v78 = a8;
  v23 = swift_getAssociatedTypeWitness();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v25);
  v79 = &v59 - v30;
  v31 = a1 * a2;
  if ((a1 * a2) >> 64 != (a1 * a2) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!a3)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v31 == 0x8000000000000000 && a3 == -1)
  {
    goto LABEL_25;
  }

  v33 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    goto LABEL_22;
  }

  v34 = v33 * a2;
  if ((v33 * a2) >> 64 == (v33 * a2) >> 63)
  {
    if (v34 == 0x8000000000000000 && a3 == -1)
    {
      goto LABEL_26;
    }

    v64 = v16;
    v36 = v31 / a3;
    v37 = v34 / a3;
    v38 = v20;
    v39 = v29;
    sub_25BCB6AAC();
    sub_25BCB6ACC();
    v40 = *(v39 + 8);
    v62 = v39 + 8;
    v61 = v40;
    v40(v27, v23);
    v41 = *(v38 + 72);
    v42 = a5 + v41 * v36;
    v80 = v42;
    v69 = v41;
    v43 = a5 + v41 * v37;
    v88 = v43;
    v44 = sub_25BCB6E7C();
    WitnessTable = swift_getWitnessTable();
    result = sub_25BCB62CC();
    if ((result & 1) == 0)
    {
      goto LABEL_24;
    }

    v60 = v23;
    v80 = v42;
    v81 = v43;
    v88 = v42;
    v89 = v43;
    v46 = sub_25BCB6BDC();
    v47 = swift_getWitnessTable();
    v48 = sub_25BB429B4();
    sub_25BCB6BEC();
    v65 = (v64 + 2);
    ++v64;
    v63 = (v38 + 32);
    v68 = v44;
    v67 = v46;
    v66 = v47;
    v49 = AssociatedTypeWitness;
    while (1)
    {
      sub_25BCB6BFC();
      v50 = v87;
      if (v87 == v80)
      {
        return v61(v79, v60);
      }

      v86 = v87;
      sub_25BCB6BEC();
      sub_25BCB6BFC();
      result = sub_25BCB62CC();
      if ((result & 1) == 0)
      {
        break;
      }

      v80 = v85;
      v81 = v84;
      v82 = v47;
      v83 = v48;
      v51 = swift_getWitnessTable();
      MEMORY[0x25F877340](&v86, &v80, v46, v51);
      v87 = v50 + v69;
      v52 = sub_25BCB6B8C();
      v53 = v71;
      (*v65)(v71);
      v52(&v80, 0);
      v54 = v48;
      v55 = WitnessTable;
      v56 = v70;
      v73(v53);
      v57 = v53;
      v47 = v66;
      (*v64)(v57, v49);
      v58 = v56;
      WitnessTable = v55;
      v48 = v54;
      (*v63)(v50, v58, v75);
      v46 = v67;
      sub_25BCB6AEC();
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_25BB517A4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

void sub_25BB5180C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v24;
  a20 = v25;
  v134 = v21;
  v26 = v20;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v30 = OUTLINED_FUNCTION_6_0(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_11();
  v135 = v34;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_69_2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  OUTLINED_FUNCTION_6_0(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v39);
  v41 = &v124 - v40;
  v42 = sub_25BCB54EC();
  v43 = OUTLINED_FUNCTION_2(v42);
  v136 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_50();
  v138 = v47;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_9_11();
  v139 = v49;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v50);
  v52 = &v124 - v51;
  v53 = *(v20 + 40);
  v54 = sub_25BAC4018();
  v55 = sub_25BB3EE04(v54, v28);
  v137 = v56;
  if (!v55)
  {
    goto LABEL_6;
  }

  v57 = v55;
  v58 = *(v26 + 48);
  v59 = sub_25BAC4018();
  v130 = sub_25BB3EE04(v59, v28);
  if (!v130)
  {
    swift_unknownObjectRelease();
LABEL_6:
    sub_25BB0E2EC();
    v64 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_11_2(xmmword_25BCC0480, v64, v65);
    goto LABEL_14;
  }

  v129 = v60;
  v133 = v57;
  if (*(v26 + 56))
  {
    v61 = sub_25BAC4018();
    v62 = sub_25BB3EE04(v61, v28);
    v128 = v63;
  }

  else
  {
    v62 = 0;
    v128 = 0;
  }

  type metadata accessor for NativeTensorStorage();
  v140 = *(v26 + 64);
  v141 = *(v26 + 72);
  sub_25BCB617C();
  OUTLINED_FUNCTION_17_10();
  v66 = v134;
  sub_25BBC0130(v67, v68, v69);
  v71 = v70;
  v127 = v66;
  v72 = OUTLINED_FUNCTION_43(*(v26 + 40));
  if (!v73)
  {
    goto LABEL_16;
  }

  v125 = *(v72 + 32);
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_8_18(ObjectType, v137);
  v126 = v75;
  v76();
  OUTLINED_FUNCTION_48();
  v134 = v71;
  v131 = v62;
  if (!v77)
  {
  }

  v78 = OUTLINED_FUNCTION_20_10();
  sub_25BBF5F44(v78, v79);

  v80 = *(*(v26 + 48) + 152);
  v81 = sub_25BCB617C();
  sub_25BBA8A7C(v81);
  v132 = v52;
  v82 = *MEMORY[0x277D82DE0];
  v83 = sub_25BCB50AC();
  OUTLINED_FUNCTION_9_3(v83);
  (*(v84 + 104))(v41, v82, v83);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v83);
  sub_25BCB54FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v88 = OUTLINED_FUNCTION_5();
  v124 = xmmword_25BCBAE50;
  *(v88 + 16) = xmmword_25BCBAE50;
  v89 = OUTLINED_FUNCTION_43(*(v26 + 48));
  if (!v90)
  {
LABEL_16:
    OUTLINED_FUNCTION_0_25();
    sub_25BCB617C();
    OUTLINED_FUNCTION_5_2();
  }

  v91 = v26;
  *(v88 + 32) = *(v89 + 32);
  __swift_storeEnumTagSinglePayload(v41, 1, 1, v83);
  v92 = v138;
  sub_25BCB54FC();
  v93 = v136;
  v94 = *(v136 + 16);
  v94(v22, v132, v42);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v42);
  v98 = v135;
  v94(v135, v139, v42);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v42);
  v94(v23, v92, v42);
  OUTLINED_FUNCTION_5_1();
  v105 = __swift_storeEnumTagSinglePayload(v102, v103, v104, v42);
  v106 = MEMORY[0x28223BE20](v105);
  *(&v124 - 4) = v134;
  *(&v124 - 3) = v91;
  *(&v124 - 2) = v125;
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_14_1();
  v107 = v129;
  *(v108 - 64) = v130;
  *(v108 - 56) = v107;
  v109 = v131;
  *(v108 - 48) = v98;
  *(v108 - 40) = v109;
  *(v108 - 32) = v128;
  *(v108 - 24) = v23;
  *(v108 - 16) = sub_25BB57D98;
  *(v108 - 8) = v110;
  OUTLINED_FUNCTION_39_0();
  v111 = v127;
  sub_25BC675C0(v112, v113, v114, &a13);
  if (v111)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_12_2();
    swift_unknownObjectRelease();
    sub_25BB0EA20(v22);
    v115 = *(v93 + 8);
    v116 = OUTLINED_FUNCTION_93_3();
    v115(v116);
    v117 = OUTLINED_FUNCTION_91_2();
    v115(v117);
    v118 = OUTLINED_FUNCTION_80_2();
    (v115)(v118, v42);
    sub_25BB0EA20(v23);
    sub_25BB0EA20(v98);
  }

  else
  {
    sub_25BB0EA20(v22);
    sub_25BB0EA20(v23);
    sub_25BB0EA20(v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v119 = OUTLINED_FUNCTION_31();
    *(v119 + 16) = v124;
    *(v119 + 32) = v134;
    *(v119 + 40) = &off_286D4DBE0;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_12_2();
    swift_unknownObjectRelease();
    v120 = *(v93 + 8);
    v121 = OUTLINED_FUNCTION_93_3();
    v120(v121);
    v122 = OUTLINED_FUNCTION_91_2();
    v120(v122);
    v123 = OUTLINED_FUNCTION_80_2();
    (v120)(v123, v42);
  }

LABEL_14:
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BB51E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[0] = a6;
  v27 = a5;
  v25[3] = a3;
  v25[2] = a2;
  v25[4] = a1;
  v7 = sub_25BCB530C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v25 - v14;
  v16 = sub_25BCB54EC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a4 + 16);
  if (v21[2])
  {
    v22 = *(a4 + 16);
    sub_25BCB617C();
  }

  else
  {
    v21 = &unk_286D44228;
  }

  sub_25BBF5F44(v21, 0);

  (*(v17 + 16))(v15, v20, v16);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);

  sub_25BC6728C(v15);
  sub_25BB1A740(v26);
  sub_25BCB536C();
  (*(v8 + 104))(v11, *MEMORY[0x277D82F78], v7);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB535C())
  {
    sub_25BCB50CC();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v23 = xmmword_25BCC0480;
    *(v23 + 16) = 0x8000;
    swift_willThrow();
  }

  sub_25BB1A750();

  sub_25BB0EA20(v15);
  return (*(v17 + 8))(v20, v16);
}

void sub_25BB52220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  v25 = v20;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v29 = OUTLINED_FUNCTION_6_0(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_50();
  v195 = v32;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_11();
  v200 = v34;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_11();
  v194 = v36;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4_1();
  v199 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  OUTLINED_FUNCTION_6_0(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v42);
  v44 = &v179 - v43;
  v197 = sub_25BCB54EC();
  v45 = OUTLINED_FUNCTION_2(v197);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_50();
  v202 = v50;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_9_11();
  v201 = v52;
  OUTLINED_FUNCTION_6_1();
  v54 = MEMORY[0x28223BE20](v53);
  v56 = &v179 - v55;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_4_1();
  v204 = v57;
  v58 = OUTLINED_FUNCTION_89_2();
  v59 = sub_25BB3EE04(v58, v27);
  if (!v59)
  {
    goto LABEL_11;
  }

  v61 = v60;
  v203 = v59;
  v62 = *(v20 + 48);
  v63 = sub_25BAC4018();
  v64 = sub_25BB3EE04(v63, v27);
  OUTLINED_FUNCTION_78_2(v64, v65);
  if (!v66)
  {
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    sub_25BB0E2EC();
    v80 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_11_2(xmmword_25BCC0490, v80, v81);
    goto LABEL_12;
  }

  v193 = v61;
  v198 = v66;
  v192 = v25;
  v67 = *(v25 + 56);
  v68 = sub_25BAC4018();
  v69 = sub_25BB3EE04(v68, v27);
  v191 = v70;
  if (!v69)
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_80_2();
    goto LABEL_10;
  }

  v190 = v69;
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_19_11(ObjectType, v193);
  v189 = v72;
  v73();
  OUTLINED_FUNCTION_64_3();
  if (!v75 & v74 || (OUTLINED_FUNCTION_16_0(), v75))
  {
    sub_25BB0E2EC();
    v177 = OUTLINED_FUNCTION_14_0();
    *v178 = 0xD000000000000014;
    v178[1] = 0x800000025BCDC010;
    OUTLINED_FUNCTION_41_5(v177, v178);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_80_2();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v76 = *(v192 + 64);
    v188 = v47;
    v187 = v56;
    if (v76)
    {
      v77 = sub_25BAC4018();
      v78 = sub_25BB3EE04(v77, v27);
      v184 = v79;
    }

    else
    {
      v78 = 0;
      v184 = 0;
    }

    type metadata accessor for NativeTensorStorage();
    v82 = swift_getObjectType();
    v83 = v196;
    v182 = *(v196 + 16);
    (v182)((v205 + 1), v82, v196);
    v84 = *(v83 + 8);
    v183 = v82;
    v84(&a10, v82, v83);
    v85 = OUTLINED_FUNCTION_2_22();
    sub_25BBC0130(v85, v86, v87);
    v186 = v88;
    v89 = swift_getObjectType();
    v90 = v191;
    (*(v191 + 16))(v205 + 1, v89, v191);
    (*(v90 + 8))(&a10, v89, v90);
    v91 = OUTLINED_FUNCTION_2_22();
    sub_25BBC0130(v91, v92, v93);
    a10 = 0;
    v185 = v94;
    if (v78)
    {
      v95 = swift_getObjectType();
      v96 = v184;
      v97 = *(v184 + 16);
      swift_unknownObjectRetain();
      v97((v205 + 1), v95, v96);
      (*(v96 + 8))(v205, v95, v96);
      OUTLINED_FUNCTION_17_10();
      sub_25BBC0130(v98, v99, v100);
      v102 = v101;
      v24 = v21;
      swift_unknownObjectRelease();
      a10 = v102;
    }

    v103 = v199;
    v104 = v192;
    v105 = OUTLINED_FUNCTION_43(*(v192 + 48));
    if (!v106)
    {
      goto LABEL_29;
    }

    v107 = *(v105 + 32);
    OUTLINED_FUNCTION_8_18(v105, v193);
    v108(v189);
    OUTLINED_FUNCTION_48();
    if (!v109)
    {
    }

    v110 = OUTLINED_FUNCTION_20_10();
    sub_25BBF5F44(v110, v111);

    (v182)((v205 + 1), v183, v196);
    OUTLINED_FUNCTION_48();
    v180 = v107;
    if (!v112)
    {
    }

    v181 = v24;
    v183 = v78;
    v113 = v187;
    v114 = OUTLINED_FUNCTION_20_10();
    sub_25BBF5F44(v114, v115);

    v116 = *(*(v104 + 56) + 152);
    v117 = sub_25BCB617C();
    sub_25BBA8A7C(v117);
    v118 = *MEMORY[0x277D82DE0];
    v119 = sub_25BCB50AC();
    OUTLINED_FUNCTION_9_3(v119);
    (*(v120 + 104))(v44, v118, v119);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v121, v122, v123, v119);
    v124 = v201;
    sub_25BCB54FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v125 = OUTLINED_FUNCTION_5();
    *(v125 + 16) = xmmword_25BCBAE50;
    v126 = OUTLINED_FUNCTION_43(*(v104 + 56));
    if (!v127)
    {
LABEL_29:
      OUTLINED_FUNCTION_0_25();
      sub_25BCB617C();
      OUTLINED_FUNCTION_5_2();
    }

    *(v125 + 32) = *(v126 + 32);
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v119);
    sub_25BCB54FC();
    v128 = *(v188 + 16);
    v129 = v197;
    v128(v103, v204, v197);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v130, v131, v132, v129);
    v133 = v194;
    v128(v194, v113, v129);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v134, v135, v136, v129);
    v137 = v113;
    v138 = v200;
    v128(v200, v124, v129);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v139, v140, v141, v129);
    v142 = v195;
    v143 = v202;
    v128(v195, v202, v129);
    OUTLINED_FUNCTION_5_1();
    v147 = __swift_storeEnumTagSinglePayload(v144, v145, v146, v129);
    v182 = &v179;
    MEMORY[0x28223BE20](v147);
    OUTLINED_FUNCTION_49_5();
    *(v148 - 96) = v149;
    *(v148 - 88) = v137;
    *(v148 - 80) = v185;
    *(v148 - 72) = v124;
    *(v148 - 64) = &a10;
    *(v148 - 56) = v143;
    v150 = v199;
    v151 = v193;
    *(v148 - 48) = v203;
    *(v148 - 40) = v151;
    v152 = v192;
    *(v148 - 32) = v204;
    *(v148 - 24) = v152;
    *(v148 - 16) = v180;
    MEMORY[0x28223BE20](v150);
    v153 = v196;
    *(&v179 - 12) = v198;
    *(&v179 - 11) = v153;
    *(&v179 - 10) = v133;
    v154 = v191;
    *(&v179 - 9) = v190;
    *(&v179 - 8) = v154;
    *(&v179 - 7) = v138;
    v155 = v184;
    *(&v179 - 6) = v183;
    *(&v179 - 5) = v155;
    *(&v179 - 4) = v142;
    *(&v179 - 3) = sub_25BB57E00;
    *(&v179 - 2) = v156;
    OUTLINED_FUNCTION_39_0();
    v158 = v157;
    v159 = v181;
    sub_25BC675C0(v160, v161, v162, &v206);
    if (v159)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_22_9(&v207);
      swift_unknownObjectRelease();
      sub_25BB0EA20(v158);
      sub_25BB0EA20(v142);
      sub_25BB0EA20(v200);
      sub_25BB0EA20(v133);
      v163 = *(v188 + 8);
      v163(v202, v129);
      v163(v201, v129);
      v163(v187, v129);
      v163(v204, v129);
    }

    else
    {
      v164 = v185;
      v165 = v204;
      v166 = v187;
      v167 = v188;
      sub_25BB0EA20(v158);
      sub_25BB0EA20(v142);
      sub_25BB0EA20(v200);
      sub_25BB0EA20(v133);
      v168 = a10;
      if (a10)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
        *(swift_allocObject() + 16) = xmmword_25BCBAE90;
        OUTLINED_FUNCTION_49_5();
        v169[4] = v171;
        v169[5] = v170;
        v169[6] = v164;
        v169[7] = v170;
        v169[8] = v168;
        v169[9] = v170;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
        *(swift_allocObject() + 16) = xmmword_25BCBAE70;
        OUTLINED_FUNCTION_49_5();
        v172[4] = v174;
        v172[5] = v173;
        v172[6] = v164;
        v172[7] = v173;
      }

      v175 = v197;
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_80_2();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v176 = *(v167 + 8);
      v176(v202, v175);
      v176(v201, v175);
      v176(v166, v175);
      v176(v165, v175);
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BB52D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14)
{
  v40 = a7;
  v42 = a5;
  v39 = a4;
  v38 = a3;
  v37 = a2;
  v36 = a1;
  v41 = a9;
  v35 = a14;
  v34 = a13;
  v33 = a12;
  v32 = a11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v31 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v31 - v24;
  v26 = sub_25BCB54EC();
  v27 = *(*(v26 - 8) + 16);
  v27(v25, a6, v26);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  v27(v23, a8, v26);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v26);
  v28 = *a10;
  if (*a10)
  {
    v29 = &off_286D4DBE0;
  }

  else
  {
    v29 = 0;
  }

  v27(v20, v32, v26);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v26);
  v53 = v33;
  v54 = v34;
  v55 = v35;
  v56 = v36;
  v57 = v37;
  v58 = v38;
  v59 = v39;
  v44 = v40;
  v45 = &off_286D4DBE0;
  v46 = v23;
  v47 = v28;
  v48 = v29;
  v49 = v20;
  v50 = sub_25BB57E58;
  v51 = &v52;

  sub_25BB0E340(v25, sub_25BB5807C, v43, v41);
  sub_25BB0EA20(v25);

  sub_25BB0EA20(v20);
  return sub_25BB0EA20(v23);
}

uint64_t sub_25BB53054(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v26[2] = a3;
  v26[0] = a1;
  v26[1] = a8;
  v27 = a6;
  v26[4] = a10;
  v32 = a11;
  v28 = a12;
  memcpy(v31, a2, sizeof(v31));
  v13 = sub_25BCB530C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25BCB54EC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a5 + 8))(v29, ObjectType, a5);
  sub_25BBF4F40();
  (*(v19 + 16))(v22, v27, v18);
  sub_25BCB6D8C();
  sub_25BCB536C();
  (*(v14 + 104))(v17, *MEMORY[0x277D82F78], v13);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB535C())
  {
    memcpy(v29, v31, 0xB0uLL);
    sub_25BB45694(v29);
    memcpy(v30, v29, sizeof(v30));
    sub_25BCB529C();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v25 = xmmword_25BCC0490;
    *(v25 + 16) = 0x8000;
    return swift_willThrow();
  }
}

void sub_25BB53974()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_61_2();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v7 = OUTLINED_FUNCTION_6_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  OUTLINED_FUNCTION_6_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_34_6();
  v20 = OUTLINED_FUNCTION_2(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_6_1();
  v25 = MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_14(v25, v26, v27, v28, v29, v30, v31, v32, v140);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4_1();
  v34 = *(v0 + 192);
  v35 = sub_25BAC4018();
  v36 = sub_25BB3EE04(v35, v5);
  if (!v36)
  {
    goto LABEL_8;
  }

  v38 = OUTLINED_FUNCTION_72_2(v36, v37);
  v39 = sub_25BB3EE04(v38, v5);
  v143 = v40;
  if (!v39)
  {
LABEL_7:
    swift_unknownObjectRelease();
LABEL_8:
    sub_25BB0E2EC();
    v45 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_11_2(xmmword_25BCC04C0, v45, v46);
    goto LABEL_9;
  }

  v41 = OUTLINED_FUNCTION_109_2();
  v42 = sub_25BB3EE04(v41, v5);
  if (!v42)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_78_2(v42, v43);
  if (*(v3 + 56))
  {
    v44 = sub_25BAC4018();
    sub_25BB3EE04(v44, v5);
  }

  v47 = OUTLINED_FUNCTION_23_11();
  if (!*(v47 + 16))
  {
    __break(1u);
    goto LABEL_31;
  }

  v48 = v47;
  v49 = *(v47 + 32);
  sub_25BCB617C();

  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_19_11(ObjectType, v143);
  v52 = OUTLINED_FUNCTION_50_2(v51);
  v53(v52);
  OUTLINED_FUNCTION_64_3();
  if (!v55 & v54 || (OUTLINED_FUNCTION_16_0(), v55))
  {
    sub_25BB0E2EC();
    v138 = OUTLINED_FUNCTION_14_0();
    *v139 = 0xD000000000000014;
    v139[1] = 0x800000025BCDC010;
    OUTLINED_FUNCTION_41_5(v138, v139);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_24;
  }

  if (*(v49 + 16) >= 2uLL)
  {
    v57 = *(v49 + 32);
  }

  OUTLINED_FUNCTION_8_18(v56, v143);
  v58 = OUTLINED_FUNCTION_51_5();
  v59(v58);
  v60 = v144;
  if (!*(v144 + 2))
  {

    v60 = &unk_286D43D10;
  }

  OUTLINED_FUNCTION_87_2();

  v61 = swift_getObjectType();
  OUTLINED_FUNCTION_8_18(v61, v142);
  v62();
  OUTLINED_FUNCTION_40_6();
  if (!v63)
  {

    v60 = &unk_286D43D38;
  }

  sub_25BBF5F44(v60, 0);

  swift_getObjectType();
  OUTLINED_FUNCTION_45_6();
  v12();
  OUTLINED_FUNCTION_83_2();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v64 = OUTLINED_FUNCTION_5();
  v65 = OUTLINED_FUNCTION_27_9(v64, xmmword_25BCBAE50);
  (v12)(v65);
  v66 = OUTLINED_FUNCTION_81_2();
  if (!v67)
  {
LABEL_31:
    OUTLINED_FUNCTION_0_25();
    OUTLINED_FUNCTION_5_2();
  }

  v64[2].n128_u64[0] = *(v66 + 32);

  v68 = *MEMORY[0x277D82DF0];
  v69 = sub_25BCB50AC();
  OUTLINED_FUNCTION_9_3(v69);
  (*(v70 + 104))(v2, v68, v69);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v69);
  OUTLINED_FUNCTION_107_3();
  type metadata accessor for NativeTensorStorage();
  v74 = OUTLINED_FUNCTION_29_8();
  v75(v74);
  v76 = OUTLINED_FUNCTION_54_3();
  (v64)(v76);
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_62_2();
  sub_25BBC0130(v77, v78, v79);
  v81 = OUTLINED_FUNCTION_25_9(v80);
  v82(v81);
  v83 = OUTLINED_FUNCTION_38_5();
  (v64)(v83);
  v84 = OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_108_2(v84, v85, v86);
  OUTLINED_FUNCTION_42_4(v87);
  if (v19)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_74_2();
    v88 = OUTLINED_FUNCTION_65_0();
    v69(v88);
    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_49_5();
    v89();
    OUTLINED_FUNCTION_17_10();
    OUTLINED_FUNCTION_62_2();
    sub_25BBC0130(v90, v91, v92);
    v94 = v93;
    OUTLINED_FUNCTION_61_2();
    swift_unknownObjectRelease();
    v144 = v94;
  }

  v95 = OUTLINED_FUNCTION_28_7();
  v1(v95);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v19);
  v99 = OUTLINED_FUNCTION_79_2();
  v1(v99);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v19);
  v103 = OUTLINED_FUNCTION_58_3();
  v1(v103);
  OUTLINED_FUNCTION_5_1();
  v107 = __swift_storeEnumTagSinglePayload(v104, v105, v106, v19);
  OUTLINED_FUNCTION_103_2(v107, v108, v109, v110, v111, v112, v113, v114, v141);
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_43_4();
  *(v116 - 136) = 0;
  OUTLINED_FUNCTION_12_13(v116);
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_31_6(v118);
  *(v119 - 16) = sub_25BB57EAC;
  *(v119 - 8) = v120;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_62_2();
  sub_25BC675C0(v121, v122, v123, v124);
  if (v48)
  {
    sub_25BB0EA20(v60);

    v125 = OUTLINED_FUNCTION_22_9(v145);
    sub_25BB0EA20(v125);
    sub_25BB0EA20(v2);

    v126 = OUTLINED_FUNCTION_36_4();
    v60(v126);
    v127 = OUTLINED_FUNCTION_105_1();
    v60(v127);
    v128 = OUTLINED_FUNCTION_102_2();
    v60(v128);
    v129 = OUTLINED_FUNCTION_94_2();
    v60(v129);
    OUTLINED_FUNCTION_75_2();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_110_2();
LABEL_24:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  sub_25BB0EA20(v60);
  v130 = OUTLINED_FUNCTION_22_9(v145);
  sub_25BB0EA20(v130);
  sub_25BB0EA20(v2);
  v131 = OUTLINED_FUNCTION_36_4();
  v60(v131);
  v132 = OUTLINED_FUNCTION_105_1();
  v60(v132);
  v133 = OUTLINED_FUNCTION_102_2();
  v60(v133);
  v134 = OUTLINED_FUNCTION_94_2();
  v60(v134);
  OUTLINED_FUNCTION_110_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
  v135 = swift_allocObject();
  if (v144)
  {
    *(v135 + 16) = xmmword_25BCBAE90;
    v136 = OUTLINED_FUNCTION_6_23(v135, &off_286D4DBE0);
    v136[8] = v144;
    v136[9] = v137;
    OUTLINED_FUNCTION_98_2();
    swift_retain_n();

    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_98_2();
  }

  else
  {
    *(v135 + 16) = xmmword_25BCBAE70;
    OUTLINED_FUNCTION_6_23(v135, &off_286D4DBE0);

    OUTLINED_FUNCTION_75_2();
  }

  OUTLINED_FUNCTION_60_2();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_9:
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

void sub_25BB547D0()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_61_2();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v7 = OUTLINED_FUNCTION_6_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  OUTLINED_FUNCTION_6_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_34_6();
  v20 = OUTLINED_FUNCTION_2(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_6_1();
  v25 = MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_14(v25, v26, v27, v28, v29, v30, v31, v32, v139);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4_1();
  v34 = *(v0 + 192);
  v35 = sub_25BAC4018();
  v36 = sub_25BB3EE04(v35, v5);
  if (!v36)
  {
    goto LABEL_8;
  }

  v38 = OUTLINED_FUNCTION_72_2(v36, v37);
  v39 = sub_25BB3EE04(v38, v5);
  v142 = v40;
  if (!v39)
  {
LABEL_7:
    swift_unknownObjectRelease();
LABEL_8:
    sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0();
    *v45 = 0xD000000000000013;
    *(v45 + 8) = 0x800000025BCDC030;
    *(v45 + 16) = 0x4000;
    swift_willThrow();
    goto LABEL_9;
  }

  v41 = OUTLINED_FUNCTION_109_2();
  v42 = sub_25BB3EE04(v41, v5);
  if (!v42)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_78_2(v42, v43);
  if (*(v3 + 56))
  {
    v44 = sub_25BAC4018();
    sub_25BB3EE04(v44, v5);
  }

  v46 = OUTLINED_FUNCTION_23_11();
  if (!*(v46 + 16))
  {
    __break(1u);
    goto LABEL_31;
  }

  v47 = v46;
  v48 = *(v46 + 32);
  sub_25BCB617C();

  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_19_11(ObjectType, v142);
  v51 = OUTLINED_FUNCTION_50_2(v50);
  v52(v51);
  OUTLINED_FUNCTION_64_3();
  if (!v54 & v53 || (OUTLINED_FUNCTION_16_0(), v54))
  {
    sub_25BB0E2EC();
    v137 = OUTLINED_FUNCTION_14_0();
    *v138 = 0xD000000000000014;
    v138[1] = 0x800000025BCDC010;
    OUTLINED_FUNCTION_41_5(v137, v138);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_24;
  }

  if (*(v48 + 16) >= 2uLL)
  {
    v56 = *(v48 + 32);
  }

  OUTLINED_FUNCTION_8_18(v55, v142);
  v57 = OUTLINED_FUNCTION_51_5();
  v58(v57);
  v59 = v143;
  if (!*(v143 + 2))
  {

    v59 = &unk_286D43D10;
  }

  OUTLINED_FUNCTION_87_2();

  v60 = swift_getObjectType();
  OUTLINED_FUNCTION_8_18(v60, v141);
  v61();
  OUTLINED_FUNCTION_40_6();
  if (!v62)
  {

    v59 = &unk_286D43D38;
  }

  sub_25BBF5F44(v59, 0);

  swift_getObjectType();
  OUTLINED_FUNCTION_45_6();
  v12();
  OUTLINED_FUNCTION_83_2();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v63 = OUTLINED_FUNCTION_5();
  v64 = OUTLINED_FUNCTION_27_9(v63, xmmword_25BCBAE50);
  (v12)(v64);
  v65 = OUTLINED_FUNCTION_81_2();
  if (!v66)
  {
LABEL_31:
    OUTLINED_FUNCTION_0_25();
    OUTLINED_FUNCTION_5_2();
  }

  v63[2].n128_u64[0] = *(v65 + 32);

  v67 = *MEMORY[0x277D82DF0];
  v68 = sub_25BCB50AC();
  OUTLINED_FUNCTION_9_3(v68);
  (*(v69 + 104))(v2, v67, v68);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v68);
  OUTLINED_FUNCTION_107_3();
  type metadata accessor for NativeTensorStorage();
  v73 = OUTLINED_FUNCTION_29_8();
  v74(v73);
  v75 = OUTLINED_FUNCTION_54_3();
  (v63)(v75);
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_62_2();
  sub_25BBC0130(v76, v77, v78);
  v80 = OUTLINED_FUNCTION_25_9(v79);
  v81(v80);
  v82 = OUTLINED_FUNCTION_38_5();
  (v63)(v82);
  v83 = OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_108_2(v83, v84, v85);
  OUTLINED_FUNCTION_42_4(v86);
  if (v19)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_74_2();
    v87 = OUTLINED_FUNCTION_65_0();
    v68(v87);
    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_49_5();
    v88();
    OUTLINED_FUNCTION_17_10();
    OUTLINED_FUNCTION_62_2();
    sub_25BBC0130(v89, v90, v91);
    v93 = v92;
    OUTLINED_FUNCTION_61_2();
    swift_unknownObjectRelease();
    v143 = v93;
  }

  v94 = OUTLINED_FUNCTION_28_7();
  v1(v94);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v19);
  v98 = OUTLINED_FUNCTION_79_2();
  v1(v98);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v19);
  v102 = OUTLINED_FUNCTION_58_3();
  v1(v102);
  OUTLINED_FUNCTION_5_1();
  v106 = __swift_storeEnumTagSinglePayload(v103, v104, v105, v19);
  OUTLINED_FUNCTION_103_2(v106, v107, v108, v109, v110, v111, v112, v113, v140);
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_43_4();
  *(v115 - 136) = 1;
  OUTLINED_FUNCTION_12_13(v115);
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_31_6(v117);
  *(v118 - 16) = sub_25BB580DC;
  *(v118 - 8) = v119;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_62_2();
  sub_25BC675C0(v120, v121, v122, v123);
  if (v47)
  {
    sub_25BB0EA20(v59);

    v124 = OUTLINED_FUNCTION_22_9(v144);
    sub_25BB0EA20(v124);
    sub_25BB0EA20(v2);

    v125 = OUTLINED_FUNCTION_36_4();
    v59(v125);
    v126 = OUTLINED_FUNCTION_105_1();
    v59(v126);
    v127 = OUTLINED_FUNCTION_102_2();
    v59(v127);
    v128 = OUTLINED_FUNCTION_94_2();
    v59(v128);
    OUTLINED_FUNCTION_75_2();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_110_2();
LABEL_24:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  sub_25BB0EA20(v59);
  v129 = OUTLINED_FUNCTION_22_9(v144);
  sub_25BB0EA20(v129);
  sub_25BB0EA20(v2);
  v130 = OUTLINED_FUNCTION_36_4();
  v59(v130);
  v131 = OUTLINED_FUNCTION_105_1();
  v59(v131);
  v132 = OUTLINED_FUNCTION_102_2();
  v59(v132);
  v133 = OUTLINED_FUNCTION_94_2();
  v59(v133);
  OUTLINED_FUNCTION_110_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
  v134 = swift_allocObject();
  if (v143)
  {
    *(v134 + 16) = xmmword_25BCBAE90;
    v135 = OUTLINED_FUNCTION_6_23(v134, &off_286D4DBE0);
    v135[8] = v143;
    v135[9] = v136;
    OUTLINED_FUNCTION_98_2();
    swift_retain_n();

    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_98_2();
  }

  else
  {
    *(v134 + 16) = xmmword_25BCBAE70;
    OUTLINED_FUNCTION_6_23(v134, &off_286D4DBE0);

    OUTLINED_FUNCTION_75_2();
  }

  OUTLINED_FUNCTION_60_2();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_9:
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

void sub_25BB55024()
{
  OUTLINED_FUNCTION_17_1();
  v88 = v1;
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v6 = OUTLINED_FUNCTION_6_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_50();
  v10 = v9;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_11();
  v13 = v12;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v14);
  v16 = v82 - v15;
  v17 = sub_25BCB54EC();
  v18 = OUTLINED_FUNCTION_2(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_50();
  v91 = v23;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_11();
  v93 = v25;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4_1();
  v92 = v27;
  v28 = OUTLINED_FUNCTION_89_2();
  v29 = sub_25BB3EE04(v28, v4);
  v90 = v30;
  if (!v29)
  {
    goto LABEL_6;
  }

  v31 = *(v0 + 48);
  v32 = sub_25BAC4018();
  v33 = sub_25BB3EE04(v32, v4);
  v89 = v34;
  if (!v33)
  {
    swift_unknownObjectRelease();
LABEL_6:
    sub_25BB0E2EC();
    v41 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_11_2(xmmword_25BCC04E0, v41, v42);
    goto LABEL_13;
  }

  v87 = v33;
  type metadata accessor for NativeTensorStorage();
  v95 = *(v2 + 64);
  v94 = *(v2 + 72);
  sub_25BCB617C();
  OUTLINED_FUNCTION_17_10();
  v35 = v88;
  sub_25BBC0130(v36, v37, v38);
  v85 = v35;
  v88 = v39;
  if (*(*(v39 + 16) + 16))
  {
    v40 = *(v39 + 16);
    sub_25BCB617C();
  }

  v86 = v10;
  v43 = OUTLINED_FUNCTION_20_10();
  sub_25BBF5CD8(v43, v44);

  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_67_2(ObjectType, v90);
  v84 = v46;
  v47();
  if (!*(v95 + 16))
  {
  }

  v48 = v13;
  v49 = OUTLINED_FUNCTION_20_10();
  sub_25BBF5CD8(v49, v50);

  v51 = swift_getObjectType();
  OUTLINED_FUNCTION_67_2(v51, v89);
  v52();
  if (!*(v95 + 16))
  {
  }

  v53 = v91;
  v54 = OUTLINED_FUNCTION_20_10();
  sub_25BBF5CD8(v54, v55);

  v83 = v20;
  v56 = *(v20 + 16);
  v57 = v16;
  v56(v16, v93, v17);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v17);
  v56(v48, v53, v17);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v17);
  v64 = v86;
  v65 = v92;
  v56(v86, v92, v17);
  OUTLINED_FUNCTION_5_1();
  v69 = __swift_storeEnumTagSinglePayload(v66, v67, v68, v17);
  v82[1] = v82;
  MEMORY[0x28223BE20](v69);
  v70 = v88;
  v71 = v89;
  v82[-8] = v87;
  v82[-7] = v71;
  v82[-6] = v48;
  v82[-5] = v70;
  v82[-4] = &off_286D4DBE0;
  v82[-3] = v64;
  v82[-2] = sub_25BB57FC0;
  v82[-1] = v2;
  v72 = v70;

  OUTLINED_FUNCTION_39_0();
  v73 = v85;
  sub_25BC675C0(v74, &v82[-10], v75, v76);
  if (v73)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_25BB0EA20(v57);
    v77 = *(v83 + 8);
    v77(v91, v17);
    v78 = OUTLINED_FUNCTION_8_8();
    (v77)(v78);
    v77(v65, v17);
    sub_25BB0EA20(v64);
    sub_25BB0EA20(v48);
  }

  else
  {

    sub_25BB0EA20(v57);
    sub_25BB0EA20(v64);
    sub_25BB0EA20(v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v79 = OUTLINED_FUNCTION_31();
    *(v79 + 16) = xmmword_25BCBAE50;
    *(v79 + 32) = v72;
    *(v79 + 40) = &off_286D4DBE0;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v80 = *(v83 + 8);
    v80(v91, v17);
    v81 = OUTLINED_FUNCTION_8_8();
    (v80)(v81);
    v80(v65, v17);
  }

LABEL_13:
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BB55564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BCB544C();
  v5 = *(a4 + 56);
  v6 = *(a4 + 57);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB543C())
  {
    sub_25BCB542C();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v8 = xmmword_25BCC04E0;
    *(v8 + 16) = 0x8000;
    return swift_willThrow();
  }
}

uint64_t sub_25BB556A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = *(a1 + 16);
  sub_25BCB617C();
  if (v6 == 3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = a1;
    if (!isUniquelyReferenced_nonNull_native || *(a1 + 24) <= 7uLL)
    {
      sub_25BA96630();
      a1 = v8;
      v13 = v8;
    }

    sub_25BCA5CE0(2, 2, 1, 1);
  }

  sub_25BBA8A7C(a1);
  v9 = *MEMORY[0x277D82DE8];
  v10 = sub_25BCB50AC();
  (*(*(v10 - 8) + 104))(v5, v9, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  return sub_25BCB54FC();
}

uint64_t sub_25BB55808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v40 = a8;
  v41 = a7;
  v38 = a6;
  v35 = a5;
  v50 = a3;
  v47 = a2;
  v46 = a1;
  v48 = a9;
  v45 = a10;
  v43 = a13;
  v44 = a11;
  v42 = a12;
  v39 = sub_25BCB530C();
  v13 = *(v39 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v39);
  v37 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_25BCB531C();
  v16 = *(v36 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v36);
  v19 = (&v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_25BCB527C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v34 - v27;
  v29 = sub_25BCB54EC();
  (*(*(v29 - 8) + 16))(v28, v35, v29);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v29);

  sub_25BC6728C(v28);
  sub_25BB1A740(v49);
  v30 = MEMORY[0x277D82EA8];
  if ((v38 & 1) == 0)
  {
    v30 = MEMORY[0x277D82EB0];
  }

  (*(v21 + 104))(v24, *v30, v20);
  sub_25BCB52BC();
  v31 = v41;
  *v19 = v40;
  v19[1] = v31;
  (*(v16 + 104))(v19, *MEMORY[0x277D82F80], v36);
  (*(v13 + 104))(v37, *MEMORY[0x277D82F78], v39);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB52AC())
  {
    sub_25BCB50CC();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v32 = xmmword_25BCC04A0;
    *(v32 + 16) = 0x8000;
    swift_willThrow();
  }

  sub_25BB1A750();

  return sub_25BB0EA20(v28);
}

uint64_t sub_25BB55CC8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6, int a7, _UNKNOWN **a8, uint64_t a9, char *a10, uint64_t a11, _UNKNOWN **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, char *a19, uint64_t a20, uint64_t *a21, uint64_t a22, _UNKNOWN **a23)
{
  v85 = a8;
  v97 = a7;
  v93 = a6;
  v82 = a5;
  v92 = a3;
  v91 = a2;
  v94 = a1;
  v89 = a12;
  v88 = a11;
  v87 = a14;
  v86 = a13;
  v90 = a10;
  v84 = a9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v78 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v77 = &v75 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v76 = &v75 - v30;
  MEMORY[0x28223BE20](v29);
  v75 = &v75 - v31;
  v83 = sub_25BCB530C();
  v81 = *(v83 - 8);
  v32 = *(v81 + 64);
  MEMORY[0x28223BE20](v83);
  v80 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_25BCB531C();
  v34 = *(v79 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v79);
  v37 = (&v75 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_25BCB527C();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v75 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_25BCB54EC();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v47 = &v75 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(v82 + 8))(&v98, ObjectType);
  sub_25BBF4F40();
  v82 = *(v44 + 16);
  (v82)(v47, v93, v43);
  sub_25BCB6D8C();
  v49 = MEMORY[0x277D82EA8];
  if ((v97 & 1) == 0)
  {
    v49 = MEMORY[0x277D82EB0];
  }

  (*(v39 + 104))(v42, *v49, v38);
  sub_25BCB52BC();
  v50 = v85;
  *v37 = v84;
  v37[1] = v50;
  (*(v34 + 104))(v37, *MEMORY[0x277D82F80], v79);
  (*(v81 + 104))(v80, *MEMORY[0x277D82F78], v83);
  sub_25BCB6E0C();
  v51 = sub_25BCB6D6C();
  v73 = v52;
  v74 = v53;
  v71 = v51;
  v72 = v54;
  v70 = v86;
  v69 = v87;
  v68 = v88;
  v67 = v89;
  v55 = sub_25BCB52AC();
  if (v55)
  {
    v89 = a23;
    v87 = a22;
    v91 = a19;
    v90 = a17;
    v92 = a16;
    v88 = a15;
    v56 = v75;
    v86 = v55;
    v57 = v82;
    (v82)(v75, v93, v43);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v43);
    v58 = v76;
    v57(v76, a18, v43);
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v43);
    v59 = v77;
    v57(v77, a20, v43);
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v43);
    v60 = *a21;
    v61 = &off_286D4DBE0;
    if (!*a21)
    {
      v61 = 0;
    }

    v85 = v61;
    v62 = v78;
    v57(v78, v87, v43);
    v63 = __swift_storeEnumTagSinglePayload(v62, 0, 1, v43);
    v93 = &v75;
    MEMORY[0x28223BE20](v63);
    v74 = &v95;
    v64 = swift_getObjectType();
    MEMORY[0x28223BE20](v64);
    *(&v75 - 12) = v90;
    *(&v75 - 11) = &off_286D4DBE0;
    *(&v75 - 10) = v58;
    *(&v75 - 9) = v91;
    v67 = &off_286D4DBE0;
    v68 = v59;
    v69 = v60;
    v70 = v85;
    v71 = v62;
    v72 = sub_25BB57EC4;
    v73 = &v69;

    sub_25BC675C0(sub_25BB58094, (&v75 - 14), MEMORY[0x277D84F78] + 8, v96);
    sub_25BB0EA20(v56);

    sub_25BB0EA20(v62);
    sub_25BB0EA20(v59);
    return sub_25BB0EA20(v58);
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v66 = 0xD000000000000014;
    *(v66 + 8) = 0x800000025BCDC010;
    *(v66 + 16) = 0x8000;
    return swift_willThrow();
  }
}

uint64_t sub_25BB56504(int a1, int a2, void *__src)
{
  memcpy(__dst, __src, 0xB0uLL);
  sub_25BB45694(__dst);
  memcpy(v4, __dst, sizeof(v4));
  return sub_25BCB529C();
}

uint64_t sub_25BB565B8@<X0>(_DWORD *a1@<X8>)
{
  sub_25BB2B624(v1, &v19);
  if (v20)
  {
    if (v20 == 1)
    {
      v3 = MEMORY[0x277D82E10];
    }

    else
    {
      if (v20 == 2)
      {
        DynamicType = 0xD00000000000004BLL;
        v10 = 0x800000025BCDC050;
        v15 = 0;
        OUTLINED_FUNCTION_76_1();
        sub_25BA97890();
      }

      sub_25BA97060(&v19, v18);
      sub_25BAC27B0(v18, &DynamicType);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
      if (!swift_dynamicCast())
      {
        __swift_project_boxed_opaque_existential_1(v18, v18[3]);
        DynamicType = swift_getDynamicType();
        v10 = v18[4];
        v11 = xmmword_25BCC04F0;
        v12 = 0;
        v13 = 10;
        v14 = 0;
        v16 = 3;
        OUTLINED_FUNCTION_76_1();
        sub_25BADDD28();
      }

      v4 = v17;
      __swift_destroy_boxed_opaque_existential_1(v18);
      *a1 = v4;
      v3 = MEMORY[0x277D82E00];
    }
  }

  else
  {
    v3 = MEMORY[0x277D82E08];
  }

  v5 = *v3;
  v6 = sub_25BCB50DC();
  OUTLINED_FUNCTION_9_3(v6);
  return (*(v7 + 104))(a1, v5);
}

void sub_25BB56770()
{
  OUTLINED_FUNCTION_17_1();
  v73 = v1;
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v7 = OUTLINED_FUNCTION_6_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_68_2();
  MEMORY[0x28223BE20](v10);
  v12 = &v69 - v11;
  v13 = sub_25BCB54EC();
  v14 = OUTLINED_FUNCTION_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_50();
  v20 = v19;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_1();
  v75 = v22;
  v23 = OUTLINED_FUNCTION_89_2();
  v24 = sub_25BB3EE04(v23, v5);
  v74 = v25;
  if (v24)
  {
    v26 = *(v0 + 96);
    v27 = *(v3 + 104);
    v28 = *(v26 + 16);
    v72 = v16;
    if (v28 < 2)
    {
      v29 = 1;
    }

    else
    {
      v29 = *(v26 + 32);
    }

    v71 = v29;
    type metadata accessor for NativeTensorStorage();
    v76 = v27;
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_10();
    v32 = v73;
    sub_25BBC0130(v33, v34, v35);
    v37 = v36;
    v73 = v32;
    if (*(*(v36 + 16) + 16))
    {
      v38 = *(v36 + 16);
      sub_25BCB617C();
    }

    v39 = v20;
    v40 = OUTLINED_FUNCTION_20_10();
    sub_25BBF5F44(v40, v41);

    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_67_2(ObjectType, v74);
    v69 = v43;
    v44(v43);
    if (!*(v26 + 16))
    {
    }

    v45 = OUTLINED_FUNCTION_20_10();
    sub_25BBF5F44(v45, v46);

    v47 = v72;
    v48 = v39;
    v49 = *(v72 + 16);
    v70 = v48;
    v49(v12);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v13);
    (v49)(v2, v75, v13);
    OUTLINED_FUNCTION_5_1();
    v56 = __swift_storeEnumTagSinglePayload(v53, v54, v55, v13);
    v57 = MEMORY[0x28223BE20](v56);
    v58 = v71;
    *(&v69 - 2) = v3;
    *(&v69 - 1) = v58;
    MEMORY[0x28223BE20](v57);
    *(&v69 - 6) = v37;
    *(&v69 - 5) = &off_286D4DBE0;
    *(&v69 - 4) = v2;
    *(&v69 - 3) = sub_25BB58008;
    *(&v69 - 2) = v59;

    OUTLINED_FUNCTION_39_0();
    v60 = v73;
    sub_25BC675C0(v61, (&v69 - 8), v62, v63);
    if (v60)
    {
      swift_unknownObjectRelease();

      sub_25BB0EA20(v12);
      v64 = *(v47 + 8);
      v64(v70, v13);
      v65 = OUTLINED_FUNCTION_8_8();
      (v64)(v65);
      sub_25BB0EA20(v2);
    }

    else
    {

      sub_25BB0EA20(v12);
      sub_25BB0EA20(v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v66 = OUTLINED_FUNCTION_31();
      *(v66 + 16) = xmmword_25BCBAE50;
      *(v66 + 32) = v37;
      *(v66 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      v67 = *(v47 + 8);
      v67(v70, v13);
      v68 = OUTLINED_FUNCTION_8_8();
      (v67)(v68);
    }
  }

  else
  {
    sub_25BB0E2EC();
    v30 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_11_2(xmmword_25BCC0500, v30, v31);
  }

  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

void sub_25BB56B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v5 = sub_25BCB50DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_25BB565B8((&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0)));
  v8 = *(a3 + 88);
  v11 = *(v8 + 16);
  v10 = (v8 + 16);
  v9 = v11;
  if (v11)
  {
    v20 = MEMORY[0x277D84F90];
    sub_25BB00B14();
    v12 = *v10;
    v13 = v20;
    while (v12)
    {
      v14 = v12 - 1;
      if (v12 - 1 >= *v10)
      {
        goto LABEL_12;
      }

      v15 = *&v10[2 * v12];
      v20 = v13;
      v16 = *(v13 + 16);
      if (v16 >= *(v13 + 24) >> 1)
      {
        v18 = v15;
        sub_25BB00B14();
        v15 = v18;
        v13 = v20;
      }

      *(v13 + 16) = v16 + 1;
      *(v13 + 16 * v16 + 32) = v15;
      v12 = v14;
      if (!--v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_8:
    sub_25BCB514C();
    sub_25BCB6E0C();
    sub_25BCB6D6C();
    if (sub_25BCB513C())
    {
      sub_25BCB50CC();
    }

    else
    {
      sub_25BB0E2EC();
      swift_allocError();
      *v17 = xmmword_25BCC0500;
      *(v17 + 16) = 0x8000;
      swift_willThrow();
    }
  }
}

void sub_25BB56DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v22;
  a20 = v23;
  v136 = v21;
  v24 = v20;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v28 = OUTLINED_FUNCTION_6_0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_0();
  v33 = v31 - v32;
  v35 = MEMORY[0x28223BE20](v34);
  v37 = v127 - v36;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_4_1();
  v137 = v38;
  v39 = sub_25BCB54EC();
  v40 = OUTLINED_FUNCTION_2(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_4_0();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_9_11();
  v142 = v49;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_9_11();
  v141 = v51;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v52);
  v54 = v127 - v53;
  v55 = *(v20 + 176);
  v56 = sub_25BAC4018();
  v57 = sub_25BB3EE04(v56, v26);
  if (!v57)
  {
    goto LABEL_9;
  }

  v134 = v58;
  v139 = v57;
  v140 = v54;
  v135 = v24;
  v59 = *(v24 + 40);
  v60 = sub_25BAC4018();
  v61 = sub_25BB3EE04(v60, v26);
  if (!v61)
  {
    swift_unknownObjectRelease();
LABEL_9:
    sub_25BB0E2EC();
    v73 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_11_2(xmmword_25BCC0510, v73, v74);
    goto LABEL_20;
  }

  v63 = v61;
  v64 = v62;
  v133 = v42;
  ObjectType = swift_getObjectType();
  v66 = *(v64 + 8);
  v138 = ObjectType;
  v66(v143, ObjectType, v64);
  OUTLINED_FUNCTION_64_3();
  if (!v68 & v67 || (OUTLINED_FUNCTION_16_0(), v68))
  {
    sub_25BB0E2EC();
    v125 = OUTLINED_FUNCTION_14_0();
    *v126 = xmmword_25BCC0510;
    OUTLINED_FUNCTION_41_5(v125, v126);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v130 = v66;
    v69 = v138;
    v70 = sub_25BC5D23C(v138, v64);
    v132 = v47;
    v131 = v64 + 8;
    if (v70 < 2)
    {
      v129 = 1;
    }

    else
    {
      (*(v64 + 16))(&a10, v69, v64);
      v71 = OUTLINED_FUNCTION_81_2();
      if (!v72)
      {
        OUTLINED_FUNCTION_0_25();
        OUTLINED_FUNCTION_5_2();
      }

      v129 = *(v71 + 32);
    }

    v75 = v133;
    v76 = *(v135 + 96);
    v77 = *(v135 + 104);
    type metadata accessor for NativeTensorStorage();
    v143[0] = v76;
    LOBYTE(a10) = v77;
    sub_25BCB617C();
    v78 = OUTLINED_FUNCTION_2_22();
    v79 = v136;
    sub_25BBC0130(v78, v80, v81);
    v83 = v82;
    v128 = v79;
    if (*(*(v82 + 16) + 16))
    {
      v84 = *(v82 + 16);
      sub_25BCB617C();
    }

    v85 = v141;
    v86 = OUTLINED_FUNCTION_20_10();
    sub_25BBF5F44(v86, v87);

    v88 = swift_getObjectType();
    OUTLINED_FUNCTION_8_18(v88, v134);
    v127[1] = v89;
    v90();
    OUTLINED_FUNCTION_48();
    if (!v91)
    {
    }

    v92 = OUTLINED_FUNCTION_20_10();
    sub_25BBF5F44(v92, v93);

    v94 = *(v75 + 16);
    v94(v142, v85, v39);
    (*(v64 + 16))(v143, v138, v64);
    OUTLINED_FUNCTION_48();
    v136 = v83;
    v127[0] = v63;
    if (!v95)
    {
    }

    v96 = v132;
    v97 = OUTLINED_FUNCTION_20_10();
    sub_25BBF5F44(v97, v98);

    v99 = v137;
    v94(v137, v141, v39);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v39);
    v94(v37, v96, v39);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v39);
    v94(v33, v140, v39);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v39);
    v109 = v136;

    v110 = v127[0];
    v130(v143, v138, v64);
    v111 = sub_25BBF4F40();
    v112 = MEMORY[0x28223BE20](v111);
    LODWORD(v127[-4]) = v112;
    v113 = v135;
    v127[-3] = v142;
    v127[-2] = v113;
    v127[-1] = v129;
    MEMORY[0x28223BE20](v112);
    OUTLINED_FUNCTION_14_1();
    *(v114 - 64) = v110;
    *(v114 - 56) = v64;
    *(v114 - 48) = v37;
    *(v114 - 40) = v109;
    *(v114 - 32) = &off_286D4DBE0;
    *(v114 - 24) = v33;
    *(v114 - 16) = sub_25BB58024;
    *(v114 - 8) = v115;
    OUTLINED_FUNCTION_39_0();
    v116 = v128;
    sub_25BC675C0(v117, v118, v119, &a11);
    if (v116)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_25BB0EA20(v99);
      v120 = *(v133 + 8);
      v120(v132, v39);
      v121 = OUTLINED_FUNCTION_93_3();
      (v120)(v121);
      v120(v140, v39);
      sub_25BB0EA20(v33);
      sub_25BB0EA20(v37);
    }

    else
    {

      sub_25BB0EA20(v99);
      sub_25BB0EA20(v33);
      sub_25BB0EA20(v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v123 = OUTLINED_FUNCTION_31();
      *(v123 + 16) = xmmword_25BCBAE50;
      *(v123 + 32) = v109;
      *(v123 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v120 = *(v133 + 8);
      v120(v132, v39);
      v124 = OUTLINED_FUNCTION_93_3();
      (v120)(v124);
      v120(v140, v39);
    }

    v122 = OUTLINED_FUNCTION_91_2();
    (v120)(v122);
  }

LABEL_20:
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

void sub_25BB57514(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a7;
  v36 = a1;
  v37 = a3;
  v40 = a2;
  v10 = sub_25BCB50DC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_25BCB54EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v15 + 16);
  v33 = v20;
  v34 = a5;
  v32 = v19;
  (v19)(v18, a5);
  v35 = a4;
  sub_25BCB6D8C();
  v39 = v13;
  sub_25BB565B8(v13);
  v21 = *(a6 + 88);
  v24 = *(v21 + 16);
  v23 = (v21 + 16);
  v22 = v24;
  if (v24)
  {
    v41 = MEMORY[0x277D84F90];
    sub_25BB00B14();
    v25 = *v23;
    v26 = v41;
    while (v25)
    {
      v27 = v25 - 1;
      if (v25 - 1 >= *v23)
      {
        goto LABEL_12;
      }

      v28 = *&v23[2 * v25];
      v41 = v26;
      v29 = *(v26 + 16);
      if (v29 >= *(v26 + 24) >> 1)
      {
        v31 = v28;
        sub_25BB00B14();
        v28 = v31;
        v26 = v41;
      }

      *(v26 + 16) = v29 + 1;
      *(v26 + 16 * v29 + 32) = v28;
      v25 = v27;
      if (!--v22)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_8:
    sub_25BCB514C();
    sub_25BCB6E0C();
    sub_25BCB6D6C();
    if (sub_25BCB513C())
    {
      v32(v18, v34, v33);
      sub_25BCB6D8C();
      sub_25BCB50BC();
    }

    else
    {
      sub_25BB0E2EC();
      swift_allocError();
      *v30 = xmmword_25BCC0510;
      *(v30 + 16) = 0x8000;
      swift_willThrow();
    }
  }
}

uint64_t sub_25BB57818(uint64_t a1)
{
  result = sub_25BB57B30(&qword_27FBB4510, type metadata accessor for PadGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB57870(uint64_t a1)
{
  result = sub_25BB57B30(&qword_27FBB4518, type metadata accessor for PadOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB578C8(uint64_t a1)
{
  result = sub_25BB57B30(&qword_27FBB4520, type metadata accessor for MatrixMultiplicationOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB57920(uint64_t a1)
{
  result = sub_25BB57B30(&qword_27FBB44E0, type metadata accessor for ConvolutionTranspose2DGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB57978(uint64_t a1)
{
  result = sub_25BB57B30(&qword_27FBB44E8, type metadata accessor for ConvolutionTranspose2DOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB579D0(uint64_t a1)
{
  result = sub_25BB57B30(qword_28154C7D0, type metadata accessor for Convolution2DGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB57A28(uint64_t a1)
{
  result = sub_25BB57B30(qword_28154DC68, type metadata accessor for Convolution2DOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB57A80(uint64_t a1)
{
  result = sub_25BB57B30(&qword_28154D770, type metadata accessor for LinearGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB57AD8(uint64_t a1)
{
  result = sub_25BB57B30(&qword_28154F570, type metadata accessor for LinearOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB57B30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BB57B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  swift_getObjectType();
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a1;
  return sub_25BC675C0(sub_25BB57DE4, v14, MEMORY[0x277D84F78] + 8, a6);
}

uint64_t sub_25BB57C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, _BYTE *)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v12[2] = sub_25BB0ED60;
    v12[3] = v13;
    swift_unknownObjectRetain();
    sub_25BC675C0(sub_25BB45678, v12, MEMORY[0x277D84F78] + 8, a6);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_25BB45648(v14);
    memcpy(v15, v14, 0xB1uLL);
    return a3(a5, a1, v15);
  }
}

uint64_t sub_25BB57EC4(int a1, int a2, void *a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_25BB56504(a1, a2, a3);
}

uint64_t sub_25BB58048()
{
  OUTLINED_FUNCTION_71_1();
  v1 = *(v0 + 64);
  v5 = *(v0 + 72);
  return v3(v2);
}

uint64_t OUTLINED_FUNCTION_51_5()
{
  result = *(v2 - 288);
  *(v2 - 368) = v0;
  *(v2 - 376) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_99_2(uint64_t result, uint64_t a2)
{
  *(v2 - 296) = result;
  *(v2 - 304) = a2;
  return result;
}

void sub_25BB581C4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  OUTLINED_FUNCTION_31_7(a1, a2, a3, a4);
  if (v8 == 2)
  {
    if (v7)
    {
      v9 = (v6 - v7) / 4;
      goto LABEL_8;
    }
  }

  else
  {
    if (*(v5 + 16) >> 61)
    {
      __break(1u);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_42_5();
    sub_25BAC5FB4(v10, v11, v12, v13, v14, v15, 3);
    if (!v4)
    {
      return;
    }

    __break(1u);
  }

  v9 = 0;
LABEL_8:
  v16 = *(v5 + 16);
  if (!v16)
  {
    return;
  }

  if (v9 < v16)
  {
LABEL_15:
    __break(1u);
    return;
  }

  memcpy(v7, (v5 + 32), 4 * v16);
}

short float sub_25BB58280@<H0>(unsigned __int8 *a1@<X0>, short float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float sub_25BB58290@<S0>(unsigned __int8 *a1@<X0>, _WORD *a2@<X8>)
{
  result = *a1;
  *a2 = HIWORD(result);
  return result;
}

float sub_25BB582A8@<S0>(unsigned __int8 *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

double sub_25BB582B8@<D0>(unsigned __int8 *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

short float sub_25BB582C8@<H0>(char *a1@<X0>, short float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float sub_25BB582D8@<S0>(char *a1@<X0>, _WORD *a2@<X8>)
{
  result = *a1;
  *a2 = HIWORD(result);
  return result;
}

float sub_25BB582F0@<S0>(char *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

double sub_25BB58300@<D0>(char *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

short float sub_25BB58310@<H0>(__int16 *a1@<X0>, short float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float sub_25BB58320@<S0>(__int16 *a1@<X0>, _WORD *a2@<X8>)
{
  result = *a1;
  *a2 = HIWORD(result);
  return result;
}

float sub_25BB58338@<S0>(__int16 *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

double sub_25BB58348@<D0>(__int16 *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

short float sub_25BB58358@<H0>(int *a1@<X0>, short float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float sub_25BB58368@<S0>(int *a1@<X0>, _WORD *a2@<X8>)
{
  result = *a1;
  *a2 = HIWORD(result);
  return result;
}

float sub_25BB58380@<S0>(int *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

double sub_25BB58390@<D0>(int *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

short float sub_25BB583A0@<H0>(uint64_t *a1@<X0>, short float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float sub_25BB583B0@<S0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  result = *a1;
  *a2 = HIWORD(result);
  return result;
}

double sub_25BB583C8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

short float sub_25BB583D8@<H0>(unsigned __int8 *a1@<X0>, short float *a2@<X8>, __n128 a3@<Q0>)
{
  a3.n128_u8[0] = *a1;
  result = a3.n128_u16[0];
  *a2 = result;
  return result;
}

float sub_25BB583E8@<S0>(_BYTE *a1@<X0>, _WORD *a2@<X8>, unsigned int a3@<S0>)
{
  LOBYTE(a3) = *a1;
  result = a3;
  *a2 = HIWORD(result);
  return result;
}

float sub_25BB58400@<S0>(_BYTE *a1@<X0>, float *a2@<X8>, unsigned int a3@<S0>)
{
  LOBYTE(a3) = *a1;
  result = a3;
  *a2 = result;
  return result;
}

double sub_25BB58410@<D0>(_BYTE *a1@<X0>, double *a2@<X8>, unint64_t a3@<D0>)
{
  LOBYTE(a3) = *a1;
  result = a3;
  *a2 = result;
  return result;
}

short float sub_25BB58420@<H0>(unsigned __int16 *a1@<X0>, short float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float sub_25BB58430@<S0>(_WORD *a1@<X0>, _WORD *a2@<X8>, unsigned int a3@<S0>)
{
  LOWORD(a3) = *a1;
  result = a3;
  *a2 = HIWORD(result);
  return result;
}

float sub_25BB58448@<S0>(_WORD *a1@<X0>, float *a2@<X8>, unsigned int a3@<S0>)
{
  LOWORD(a3) = *a1;
  result = a3;
  *a2 = result;
  return result;
}

double sub_25BB58458@<D0>(_WORD *a1@<X0>, double *a2@<X8>, unint64_t a3@<D0>)
{
  LOWORD(a3) = *a1;
  result = a3;
  *a2 = result;
  return result;
}

short float sub_25BB58468@<H0>(unsigned int *a1@<X0>, short float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float sub_25BB58478@<S0>(unsigned int *a1@<X0>, _WORD *a2@<X8>)
{
  result = *a1;
  *a2 = HIWORD(result);
  return result;
}

float sub_25BB58490@<S0>(unsigned int *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

double sub_25BB584A0@<D0>(_DWORD *a1@<X0>, double *a2@<X8>, unint64_t a3@<D0>)
{
  LODWORD(a3) = *a1;
  result = a3;
  *a2 = result;
  return result;
}

short float sub_25BB584B0@<H0>(unint64_t *a1@<X0>, short float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float sub_25BB584C0@<S0>(unint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  result = *a1;
  *a2 = HIWORD(result);
  return result;
}

float sub_25BB584D8@<S0>(unint64_t *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

double sub_25BB584E8@<D0>(unint64_t *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

uint64_t sub_25BB5850C@<X0>(short float *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v15 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84670])
  {
    v13 = rintl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84680])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277D84688])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277D84660])
  {
    v13 = truncl(v11);
  }

  else
  {
    if (result == *MEMORY[0x277D84668])
    {
      result = sub_25BCB7BAC();
      if ((result & 1) == 0)
      {
LABEL_6:
        v13 = ceill(v11);
        goto LABEL_15;
      }

LABEL_8:
      v13 = floorl(v11);
      goto LABEL_15;
    }

    sub_25BCB7B7C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v15;
  }

LABEL_15:
  if ((LOWORD(v13) & 0x7FFFu) > 0x7BFF)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v13 <= COERCE_SHORT_FLOAT(-10232))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v13 < COERCE_SHORT_FLOAT(22528))
  {
    *a3 = v13;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_25BB58730@<X0>(short float *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v15 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84670])
  {
    v13 = rintl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84680])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277D84688])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277D84660])
  {
    v13 = truncl(v11);
  }

  else
  {
    if (result == *MEMORY[0x277D84668])
    {
      result = sub_25BCB7BAC();
      if ((result & 1) == 0)
      {
LABEL_6:
        v13 = ceill(v11);
        goto LABEL_15;
      }

LABEL_8:
      v13 = floorl(v11);
      goto LABEL_15;
    }

    sub_25BCB7B7C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v15;
  }

LABEL_15:
  if ((LOWORD(v13) & 0x7FFFu) > 0x7BFF)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v13 <= COERCE_SHORT_FLOAT(-2047))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v13 < COERCE_SHORT_FLOAT(30720))
  {
    *a3 = v13;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_25BB58954@<X0>(short float *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v15 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84670])
  {
    v13 = rintl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84680])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277D84688])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277D84660])
  {
    v13 = truncl(v11);
  }

  else
  {
    if (result == *MEMORY[0x277D84668])
    {
      result = sub_25BCB7BAC();
      if ((result & 1) == 0)
      {
LABEL_6:
        v13 = ceill(v11);
        goto LABEL_15;
      }

LABEL_8:
      v13 = floorl(v11);
      goto LABEL_15;
    }

    sub_25BCB7B7C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v15;
  }

LABEL_15:
  if ((LOWORD(v13) & 0x7FFFu) > 0x7BFF)
  {
    __break(1u);
  }

  else
  {
    *a3 = v13;
  }

  return result;
}

uint64_t sub_25BB58B50@<X0>(short float *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v15 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84670])
  {
    v13 = rintl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84680])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277D84688])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277D84660])
  {
    v13 = truncl(v11);
  }

  else
  {
    if (result == *MEMORY[0x277D84668])
    {
      result = sub_25BCB7BAC();
      if ((result & 1) == 0)
      {
LABEL_6:
        v13 = ceill(v11);
        goto LABEL_15;
      }

LABEL_8:
      v13 = floorl(v11);
      goto LABEL_15;
    }

    sub_25BCB7B7C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v15;
  }

LABEL_15:
  if ((LOWORD(v13) & 0x7FFFu) > 0x7BFF)
  {
    __break(1u);
  }

  else
  {
    *a3 = v13;
  }

  return result;
}

uint64_t sub_25BB58D4C@<X0>(short float *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v15 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84670])
  {
    v13 = rintl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84680])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277D84688])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277D84660])
  {
    v13 = truncl(v11);
  }

  else
  {
    if (result == *MEMORY[0x277D84668])
    {
      result = sub_25BCB7BAC();
      if ((result & 1) == 0)
      {
LABEL_6:
        v13 = ceill(v11);
        goto LABEL_15;
      }

LABEL_8:
      v13 = floorl(v11);
      goto LABEL_15;
    }

    sub_25BCB7B7C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v15;
  }

LABEL_15:
  if ((LOWORD(v13) & 0x7FFFu) > 0x7BFF)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v13 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v13 < COERCE_SHORT_FLOAT(23552))
  {
    *a3 = v13;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_25BB58F6C@<X0>(short float *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v15 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84670])
  {
    v13 = rintl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84680])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277D84688])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277D84660])
  {
    v13 = truncl(v11);
  }

  else
  {
    if (result == *MEMORY[0x277D84668])
    {
      result = sub_25BCB7BAC();
      if ((result & 1) == 0)
      {
LABEL_6:
        v13 = ceill(v11);
        goto LABEL_15;
      }

LABEL_8:
      v13 = floorl(v11);
      goto LABEL_15;
    }

    sub_25BCB7B7C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v15;
  }

LABEL_15:
  if ((LOWORD(v13) & 0x7FFFu) > 0x7BFF)
  {
    __break(1u);
  }

  else if (v13 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    *a3 = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB59178@<X0>(short float *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v15 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84670])
  {
    v13 = rintl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84680])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277D84688])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277D84660])
  {
    v13 = truncl(v11);
  }

  else
  {
    if (result == *MEMORY[0x277D84668])
    {
      result = sub_25BCB7BAC();
      if ((result & 1) == 0)
      {
LABEL_6:
        v13 = ceill(v11);
        goto LABEL_15;
      }

LABEL_8:
      v13 = floorl(v11);
      goto LABEL_15;
    }

    sub_25BCB7B7C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v15;
  }

LABEL_15:
  if ((LOWORD(v13) & 0x7FFFu) > 0x7BFF)
  {
    __break(1u);
  }

  else if (v13 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    *a3 = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB59384@<X0>(short float *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v15 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84670])
  {
    v13 = rintl(v11);
    goto LABEL_15;
  }

  if (result == *MEMORY[0x277D84680])
  {
    goto LABEL_6;
  }

  if (result == *MEMORY[0x277D84688])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277D84660])
  {
    v13 = truncl(v11);
  }

  else
  {
    if (result == *MEMORY[0x277D84668])
    {
      result = sub_25BCB7BAC();
      if ((result & 1) == 0)
      {
LABEL_6:
        v13 = ceill(v11);
        goto LABEL_15;
      }

LABEL_8:
      v13 = floorl(v11);
      goto LABEL_15;
    }

    sub_25BCB7B7C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v15;
  }

LABEL_15:
  if ((LOWORD(v13) & 0x7FFFu) > 0x7BFF)
  {
    __break(1u);
  }

  else if (v13 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    *a3 = v13;
    return result;
  }

  __break(1u);
  return result;
}

float sub_25BB59590@<S0>(__int16 *a1@<X0>, float *a2@<X8>)
{
  _H0 = *a1;
  __asm { FCVT            S0, H0 }

  *a2 = result;
  return result;
}

double sub_25BB595A0@<D0>(__int16 *a1@<X0>, double *a2@<X8>)
{
  _H0 = *a1;
  __asm { FCVT            D0, H0 }

  *a2 = result;
  return result;
}

uint64_t sub_25BB595C4@<X0>(float *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundf(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rintf(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceilf(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floorf(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = truncf(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB69BC();
    v13 = floorf(v11);
    v14 = ceilf(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB698C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -129.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 128.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB597F0@<X0>(float *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundf(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rintf(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceilf(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floorf(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = truncf(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB69BC();
    v13 = floorf(v11);
    v14 = ceilf(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB698C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -32769.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 32768.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB59A1C@<X0>(float *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundf(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rintf(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceilf(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floorf(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = truncf(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB69BC();
    v13 = floorf(v11);
    v14 = ceilf(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB698C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -2147500000.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 2147500000.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB59C48@<X0>(float *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundf(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rintf(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceilf(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floorf(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = truncf(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB69BC();
    v13 = floorf(v11);
    v14 = ceilf(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB698C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 256.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB59E74@<X0>(float *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundf(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rintf(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceilf(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floorf(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = truncf(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB69BC();
    v13 = floorf(v11);
    v14 = ceilf(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB698C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 65536.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB5A0A0@<X0>(float *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundf(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rintf(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceilf(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floorf(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = truncf(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB69BC();
    v13 = floorf(v11);
    v14 = ceilf(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB698C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 4295000000.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB5A2CC@<X0>(float *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundf(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rintf(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceilf(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floorf(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = truncf(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB69BC();
    v13 = floorf(v11);
    v14 = ceilf(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB698C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 1.8447e19)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

__int16 sub_25BB5A4F8@<H0>(int *a1@<X0>, _WORD *a2@<X8>)
{
  _S0 = *a1;
  __asm { FCVT            H0, S0 }

  *a2 = result;
  return result;
}

double sub_25BB5A514@<D0>(float *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

uint64_t sub_25BB5A538@<X0>(double *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB694C();
    v13 = floor(v11);
    v14 = ceil(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB691C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -129.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 128.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB5A768@<X0>(double *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB694C();
    v13 = floor(v11);
    v14 = ceil(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB691C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -32769.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 32768.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB5A998@<X0>(double *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB694C();
    v13 = floor(v11);
    v14 = ceil(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB691C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -2147483650.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 2147483650.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB5ABC8@<X0>(double *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB694C();
    v13 = floor(v11);
    v14 = ceil(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB691C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 9.22337204e18)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB5ADF8@<X0>(double *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB694C();
    v13 = floor(v11);
    v14 = ceil(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB691C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 256.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB5B024@<X0>(double *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB694C();
    v13 = floor(v11);
    v14 = ceil(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB691C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 65536.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB5B250@<X0>(double *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB694C();
    v13 = floor(v11);
    v14 = ceil(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB691C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 4294967300.0)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25BB5B47C@<X0>(double *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB694C();
    v13 = floor(v11);
    v14 = ceil(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB691C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 1.84467441e19)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

__int16 sub_25BB5B6A8@<H0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  _D0 = *a1;
  __asm { FCVT            H0, D0 }

  *a2 = result;
  return result;
}

float sub_25BB5B6B8@<S0>(double *a1@<X0>, _WORD *a2@<X8>)
{
  result = *a1;
  *a2 = HIWORD(result);
  return result;
}

float sub_25BB5B6D0@<S0>(double *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float sub_25BB5B6E0(uint64_t a1)
{
  OUTLINED_FUNCTION_7_17(a1);
  v9 = OUTLINED_FUNCTION_21_11(v1, v2, v3, v4, v5, v6, v7, v8, v20);
  v11 = v10(v9);
  return OUTLINED_FUNCTION_39_7(v11, v12, v13, v14, v15, v16, v17, v18, v21, *&v22, *(&v22 + 1));
}

void sub_25BB5B724(uint64_t a1)
{
  OUTLINED_FUNCTION_7_17(a1);
  v9 = OUTLINED_FUNCTION_14_16(v1, v2, v3, v4, v5, v6, v7, v8, v19);
  v11 = v10(v9);
  OUTLINED_FUNCTION_23_12(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, SWORD2(v21), SHIWORD(v21));
}

double sub_25BB5B764(uint64_t a1)
{
  OUTLINED_FUNCTION_7_17(a1);
  v9 = OUTLINED_FUNCTION_14_16(v1, v2, v3, v4, v5, v6, v7, v8, v20);
  v11 = v10(v9);
  *&result = OUTLINED_FUNCTION_37_5(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22, SWORD2(v22), SHIWORD(v22));
  return result;
}

void sub_25BB5B7D0(uint64_t a1)
{
  OUTLINED_FUNCTION_7_17(a1);
  v9 = OUTLINED_FUNCTION_21_11(v1, v2, v3, v4, v5, v6, v7, v8, v19);
  v11 = v10(v9);
  OUTLINED_FUNCTION_35_5(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
}

void sub_25BB5B820(uint64_t a1)
{
  OUTLINED_FUNCTION_7_17(a1);
  v9 = OUTLINED_FUNCTION_21_11(v1, v2, v3, v4, v5, v6, v7, v8, v19);
  v11 = v10(v9);
  OUTLINED_FUNCTION_34_7(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, SHIDWORD(v21));
}

void sub_25BB5B87C(uint64_t a1)
{
  OUTLINED_FUNCTION_7_17(a1);
  v9 = OUTLINED_FUNCTION_21_11(v1, v2, v3, v4, v5, v6, v7, v8, v19);
  v11 = v10(v9);
  OUTLINED_FUNCTION_24_7(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, SWORD2(v21), SBYTE6(v21), SHIBYTE(v21));
}

double sub_25BB5B8C0()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_29_9(v1, v2, v3, v4, v5, v6, v7, v8, v20, *(v0 + 4 * v1));
  v11 = v10(v9);
  return OUTLINED_FUNCTION_40_7(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22);
}

void sub_25BB5B908()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_41_6(v0, v1);
  v10 = OUTLINED_FUNCTION_15_13(v2, v3, v4, v5, v6, v7, v8, v9, v20, v22);
  v12 = v11(v10);
  OUTLINED_FUNCTION_23_12(v12, v13, v14, v15, v16, v17, v18, v19, v21, v23, v24, v25);
}

double sub_25BB5B94C()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_41_6(v0, v1);
  v10 = OUTLINED_FUNCTION_15_13(v2, v3, v4, v5, v6, v7, v8, v9, v21, v23);
  v12 = v11(v10);
  *&result = OUTLINED_FUNCTION_37_5(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24, v25, v26);
  return result;
}

void sub_25BB5B9BC()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_41_6(v0, v1);
  v10 = OUTLINED_FUNCTION_25_10(v2, v3, v4, v5, v6, v7, v8, v9, v20, v22);
  v12 = v11(v10);
  OUTLINED_FUNCTION_34_7(v12, v13, v14, v15, v16, v17, v18, v19, v21, v23, v24);
}

void sub_25BB5BA1C()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_41_6(v0, v1);
  v10 = OUTLINED_FUNCTION_25_10(v2, v3, v4, v5, v6, v7, v8, v9, v20, v22);
  v12 = v11(v10);
  OUTLINED_FUNCTION_24_7(v12, v13, v14, v15, v16, v17, v18, v19, v21, v23, v24, v25, v26);
}

double sub_25BB5BA64()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_28_8(v1, v2, v3, v4, v5, v6, v7, v8, *v20, *&v20[4], *(v0 + 2 * v1));
  v11 = v10(v9);
  return OUTLINED_FUNCTION_40_7(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22);
}

float sub_25BB5BAAC()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_30_8(v1, v2, v3, v4, v5, v6, v7, v8, v20, v22, *(v0 + 2 * v1));
  v11 = v10(v9);
  return OUTLINED_FUNCTION_39_7(v11, v12, v13, v14, v15, v16, v17, v18, v21, v23, v24);
}

void sub_25BB5BB20()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_28_8(v1, v2, v3, v4, v5, v6, v7, v8, *v19, *&v19[4], *(v0 + 2 * v1));
  v11 = v10(v9);
  OUTLINED_FUNCTION_35_5(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
}

void sub_25BB5BB74()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_30_8(v1, v2, v3, v4, v5, v6, v7, v8, v19, v21, *(v0 + 2 * v1));
  v11 = v10(v9);
  OUTLINED_FUNCTION_34_7(v11, v12, v13, v14, v15, v16, v17, v18, v20, v22, v23);
}

void sub_25BB5BBC8()
{
  OUTLINED_FUNCTION_8_19();
  v13 = *(v1 + 2 * v0);
  v3 = v2(&v14, &v13);
  OUTLINED_FUNCTION_23_12(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

void sub_25BB5BC24()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_33_7(v1, v2, v3, v4, v5, v6, v7, v8, v19, v21, *(v0 + 2 * v1));
  v11 = v10(v9);
  OUTLINED_FUNCTION_24_7(v11, v12, v13, v14, v15, v16, v17, v18, v20, v22, v23, v24, v25);
}

double sub_25BB5BC70(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_17(a1);
  v9 = OUTLINED_FUNCTION_21_11(v1, v2, v3, v4, v5, v6, v7, v8, v20);
  v11 = v10(v9);
  return OUTLINED_FUNCTION_40_7(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22);
}

void sub_25BB5BCB8(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_17(a1);
  v9 = OUTLINED_FUNCTION_14_16(v1, v2, v3, v4, v5, v6, v7, v8, v19);
  v11 = v10(v9);
  OUTLINED_FUNCTION_23_12(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, SWORD2(v21), SHIWORD(v21));
}

double sub_25BB5BCFC(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_17(a1);
  v9 = OUTLINED_FUNCTION_14_16(v1, v2, v3, v4, v5, v6, v7, v8, v20);
  v11 = v10(v9);
  *&result = OUTLINED_FUNCTION_37_5(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22, SWORD2(v22), SHIWORD(v22));
  return result;
}

void sub_25BB5BD40(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_17(a1);
  v9 = OUTLINED_FUNCTION_21_11(v1, v2, v3, v4, v5, v6, v7, v8, v19);
  v11 = v10(v9);
  OUTLINED_FUNCTION_35_5(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
}

void sub_25BB5BD88(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_17(a1);
  v9 = OUTLINED_FUNCTION_21_11(v1, v2, v3, v4, v5, v6, v7, v8, v19);
  v11 = v10(v9);
  OUTLINED_FUNCTION_24_7(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, SWORD2(v21), SBYTE6(v21), SHIBYTE(v21));
}

double sub_25BB5BDD0()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_29_9(v1, v2, v3, v4, v5, v6, v7, v8, v20, *(v0 + 4 * v1));
  v11 = v10(v9);
  return OUTLINED_FUNCTION_40_7(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22);
}

float sub_25BB5BE1C()
{
  OUTLINED_FUNCTION_8_19();
  v2 = OUTLINED_FUNCTION_38_6(v0, v1);
  v10 = OUTLINED_FUNCTION_25_10(v2, v3, v4, v5, v6, v7, v8, v9, v21, v23);
  v12 = v11(v10);
  return OUTLINED_FUNCTION_39_7(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24, v25);
}

void sub_25BB5BE68()
{
  OUTLINED_FUNCTION_8_19();
  v2 = OUTLINED_FUNCTION_38_6(v0, v1);
  v10 = OUTLINED_FUNCTION_15_13(v2, v3, v4, v5, v6, v7, v8, v9, v20, v22);
  v12 = v11(v10);
  OUTLINED_FUNCTION_23_12(v12, v13, v14, v15, v16, v17, v18, v19, v21, v23, v24, v25);
}

double sub_25BB5BEB0()
{
  OUTLINED_FUNCTION_8_19();
  v2 = OUTLINED_FUNCTION_38_6(v0, v1);
  v10 = OUTLINED_FUNCTION_15_13(v2, v3, v4, v5, v6, v7, v8, v9, v21, v23);
  v12 = v11(v10);
  *&result = OUTLINED_FUNCTION_37_5(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24, v25, v26);
  return result;
}

void sub_25BB5BEF8()
{
  OUTLINED_FUNCTION_8_19();
  v2 = OUTLINED_FUNCTION_38_6(v0, v1);
  v10 = OUTLINED_FUNCTION_25_10(v2, v3, v4, v5, v6, v7, v8, v9, v20, v22);
  v12 = v11(v10);
  OUTLINED_FUNCTION_34_7(v12, v13, v14, v15, v16, v17, v18, v19, v21, v23, v24);
}

void sub_25BB5BF44()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_29_9(v1, v2, v3, v4, v5, v6, v7, v8, v19, *(v0 + 4 * v1));
  v11 = v10(v9);
  OUTLINED_FUNCTION_35_5(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
}

void sub_25BB5BF90()
{
  OUTLINED_FUNCTION_8_19();
  v2 = OUTLINED_FUNCTION_38_6(v0, v1);
  v10 = OUTLINED_FUNCTION_25_10(v2, v3, v4, v5, v6, v7, v8, v9, v20, v22);
  v12 = v11(v10);
  OUTLINED_FUNCTION_24_7(v12, v13, v14, v15, v16, v17, v18, v19, v21, v23, v24, v25, v26);
}

double sub_25BB5BFDC()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_28_8(v1, v2, v3, v4, v5, v6, v7, v8, *v20, *&v20[4], *(v0 + 2 * v1));
  v11 = v10(v9);
  return OUTLINED_FUNCTION_40_7(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22);
}

float sub_25BB5C028()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_30_8(v1, v2, v3, v4, v5, v6, v7, v8, v20, v22, *(v0 + 2 * v1));
  v11 = v10(v9);
  return OUTLINED_FUNCTION_39_7(v11, v12, v13, v14, v15, v16, v17, v18, v21, v23, v24);
}

void sub_25BB5C074()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_22_10(v0, v1);
  v3 = v2();
  OUTLINED_FUNCTION_23_12(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, SWORD2(v12), SHIWORD(v12));
}

double sub_25BB5C0B8()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_22_10(v0, v1);
  v3 = v2();
  *&result = OUTLINED_FUNCTION_37_5(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, SWORD2(v13), SHIWORD(v13));
  return result;
}

void sub_25BB5C0FC()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_28_8(v1, v2, v3, v4, v5, v6, v7, v8, *v19, *&v19[4], *(v0 + 2 * v1));
  v11 = v10(v9);
  OUTLINED_FUNCTION_35_5(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
}

void sub_25BB5C148()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_30_8(v1, v2, v3, v4, v5, v6, v7, v8, v19, v21, *(v0 + 2 * v1));
  v11 = v10(v9);
  OUTLINED_FUNCTION_34_7(v11, v12, v13, v14, v15, v16, v17, v18, v20, v22, v23);
}

void sub_25BB5C194()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_33_7(v1, v2, v3, v4, v5, v6, v7, v8, v19, v21, *(v0 + 2 * v1));
  v11 = v10(v9);
  OUTLINED_FUNCTION_24_7(v11, v12, v13, v14, v15, v16, v17, v18, v20, v22, v23, v24, v25);
}

double sub_25BB5C1E0(uint64_t a1)
{
  OUTLINED_FUNCTION_2_23(a1);
  OUTLINED_FUNCTION_17_15();
  v2 = v1();
  return OUTLINED_FUNCTION_40_7(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

float sub_25BB5C224(uint64_t a1)
{
  OUTLINED_FUNCTION_2_23(a1);
  OUTLINED_FUNCTION_16_17();
  v2 = v1();
  return OUTLINED_FUNCTION_39_7(v2, v3, v4, v5, v6, v7, v8, v9, v11, *&v12, *(&v12 + 1));
}

void sub_25BB5C268(uint64_t a1)
{
  OUTLINED_FUNCTION_1_21(a1);
  v2 = v1();
  OUTLINED_FUNCTION_23_12(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, SWORD2(v11), SHIWORD(v11));
}

double sub_25BB5C2A8(uint64_t a1)
{
  OUTLINED_FUNCTION_1_21(a1);
  v2 = v1();
  *&result = OUTLINED_FUNCTION_37_5(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SHIWORD(v12));
  return result;
}

void sub_25BB5C2E8(uint64_t a1)
{
  OUTLINED_FUNCTION_2_23(a1);
  OUTLINED_FUNCTION_43_5();
  v2 = v1();
  OUTLINED_FUNCTION_24_7(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, SWORD2(v11), SBYTE6(v11), SHIBYTE(v11));
}

void sub_25BB5C32C(uint64_t a1)
{
  OUTLINED_FUNCTION_2_23(a1);
  OUTLINED_FUNCTION_17_15();
  v2 = v1();
  OUTLINED_FUNCTION_35_5(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

void sub_25BB5C370(uint64_t a1)
{
  OUTLINED_FUNCTION_2_23(a1);
  OUTLINED_FUNCTION_16_17();
  v2 = v1();
  OUTLINED_FUNCTION_34_7(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, SHIDWORD(v11));
}

unint64_t sub_25BB5C3B0()
{
  result = qword_28154BE70[0];
  if (!qword_28154BE70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28154BE70);
  }

  return result;
}

NeuralNetworks::ZeroPad1D __swiftcall ZeroPad1D.init(size:)(Swift::tuple_left_Int_right_Int size)
{
  v1 = sub_25BB5DA80(size.left, size.right);
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

NeuralNetworks::ZeroPad1D __swiftcall ZeroPad1D.init(size:)(Swift::Int size)
{
  v1 = sub_25BB5DB3C(size);
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

uint64_t ZeroPad1D.forward(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_11_20(a1);
  if (!sub_25BAA80BC(v4, &unk_286D42270))
  {
    OUTLINED_FUNCTION_51_6();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v11[0] = v1;
    v11[1] = v2;
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_4_22();
    sub_25BADDD28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F88, &qword_25BCBBEB0);
  v5 = OUTLINED_FUNCTION_53_5();
  v6 = OUTLINED_FUNCTION_17_16(v5, xmmword_25BCBAE90);
  v7 = MEMORY[0x277D83A90];
  *(v6 + 64) = v3;
  *(v6 + 72) = v2;
  v11[3] = v7;
  v11[4] = &protocol witness table for Float;
  LODWORD(v11[0]) = 0;
  OUTLINED_FUNCTION_25_11();
  Tensor.padded(forSizes:with:)(v8, v9);

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_25BB5C644(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  return ZeroPad1D.forward(_:)(a1);
}

BOOL sub_25BB5C65C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BADF360();
  *a2 = result;
  return result;
}

uint64_t sub_25BB5C690@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_5_21();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_25BB5C6B8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BADF360();
  *a1 = result;
  return result;
}

uint64_t sub_25BB5C700@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_53_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25BB5C72C(uint64_t a1)
{
  v2 = sub_25BB5F818();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB5C768(uint64_t a1)
{
  v2 = sub_25BB5F818();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ZeroPad1D.init(from:)()
{
  OUTLINED_FUNCTION_32_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B30, &qword_25BCC06B8);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_14();
  sub_25BB5F818();
  OUTLINED_FUNCTION_12_15();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    return OUTLINED_FUNCTION_28_9();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_0_27(&qword_28154BE48);
  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_13_14();
  result = v13;
  v7 = v13[2];
  if (v7)
  {
    if (v7 != 1)
    {
      v8 = v13[4];
      v9 = v13[5];

      v10.left = OUTLINED_FUNCTION_31_8();
      ZeroPad1D.init(size:)(v10);
      OUTLINED_FUNCTION_47_0();
      v11 = OUTLINED_FUNCTION_7_18();
      v12(v11);
      __swift_destroy_boxed_opaque_existential_1(v0);
      return OUTLINED_FUNCTION_28_9();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25BB5C984()
{
  v1 = *v0;
  v2 = v0[1];
  ZeroPad1D.encode(to:)();
}

NeuralNetworks::ZeroPad2D __swiftcall ZeroPad2D.init(size:)(Swift::tuple_left_Int_right_Int_top_Int_bottom_Int size)
{
  v1 = sub_25BB5DFDC(size.left, size.right, size.top, size.bottom);
  result.size.bottom = v4;
  result.size.top = v3;
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

NeuralNetworks::ZeroPad2D __swiftcall ZeroPad2D.init(size:)(Swift::tuple_height_Int_width_Int size)
{
  v1 = sub_25BB5E0AC(size.height, size.width);
  result.size.bottom = v4;
  result.size.top = v3;
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

NeuralNetworks::ZeroPad2D __swiftcall ZeroPad2D.init(size:)(Swift::Int size)
{
  v1 = sub_25BB5E178(size);
  result.size.bottom = v4;
  result.size.top = v3;
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

uint64_t ZeroPad2D.forward(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_15_14(a1);
  if (!sub_25BAA80BC(v2, &unk_286D42270))
  {
    v8 = v2;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v9[0] = v1;
    v9[1] = &v8;
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_4_22();
    sub_25BADDD28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39D0, &qword_25BCBB950);
  inited = swift_initStackObject();
  v4 = OUTLINED_FUNCTION_17_16(inited, xmmword_25BCBDF80);
  v5 = OUTLINED_FUNCTION_40_8(v4);
  swift_setDeallocating();
  v9[3] = MEMORY[0x277D83A90];
  v9[4] = &protocol witness table for Float;
  LODWORD(v9[0]) = 0;
  OUTLINED_FUNCTION_29_10();
  Tensor.padded(forSizes:with:)(v5, v6);

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_25BB5CAD4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return ZeroPad2D.forward(_:)(a1);
}

BOOL sub_25BB5CAE0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BADF398();
  *a2 = result;
  return result;
}

BOOL sub_25BB5CB14@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BADF398();
  *a1 = result;
  return result;
}

uint64_t sub_25BB5CB40(uint64_t a1)
{
  v2 = sub_25BB5F8D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB5CB7C(uint64_t a1)
{
  v2 = sub_25BB5F8D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void ZeroPad2D.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_32_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B50, &qword_25BCC06D0);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_14();
  sub_25BB5F8D8();
  OUTLINED_FUNCTION_12_15();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
LABEL_4:
    OUTLINED_FUNCTION_19_13();
    OUTLINED_FUNCTION_16();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_0_27(&qword_28154BE48);
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_13_14();
  v6 = v14[2];
  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v6 == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v6 == 3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v14[4];
  v8 = v14[5];
  v9 = v14[6];
  v10 = v14[7];

  if ((v7 & 0x8000000000000000) == 0 && (v8 & 0x8000000000000000) == 0 && (v9 & 0x8000000000000000) == 0 && (v10 & 0x8000000000000000) == 0)
  {
    v11 = OUTLINED_FUNCTION_7_18();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_1(v0);
    goto LABEL_4;
  }

LABEL_18:
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_22_11();
  MEMORY[0x25F876C90]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B48, &qword_25BCC06C8);
  OUTLINED_FUNCTION_54_4();
  v13 = OUTLINED_FUNCTION_16_18();
  MEMORY[0x25F876C90](v13);
  OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_1_22();
  sub_25BCB74CC();
  __break(1u);
}

void sub_25BB5CE44()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  ZeroPad2D.encode(to:)();
}

NeuralNetworks::ReflectionPad1D __swiftcall ReflectionPad1D.init(size:)(Swift::tuple_left_Int_right_Int size)
{
  v1 = sub_25BB5DA80(size.left, size.right);
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

NeuralNetworks::ReflectionPad1D __swiftcall ReflectionPad1D.init(size:)(Swift::Int size)
{
  v1 = sub_25BB5DB3C(size);
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

uint64_t ReflectionPad1D.forward(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_11_20(a1);
  if (!sub_25BAA80BC(v4, &unk_286D42270))
  {
    OUTLINED_FUNCTION_51_6();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    *&v9[0] = v1;
    *(&v9[0] + 1) = v2;
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_4_22();
    sub_25BADDD28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F88, &qword_25BCBBEB0);
  v5 = OUTLINED_FUNCTION_53_5();
  v6 = OUTLINED_FUNCTION_17_16(v5, xmmword_25BCBAE90);
  *(v6 + 64) = v3;
  *(v6 + 72) = v2;
  v10 = 0;
  v9[0] = v7;
  v9[1] = v7;
  OUTLINED_FUNCTION_25_11();
  Tensor.padded(forSizes:mode:)();

  return sub_25BB2B680(v9);
}

uint64_t sub_25BB5CF60(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  return ReflectionPad1D.forward(_:)(a1);
}

BOOL sub_25BB5CF68@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BADF3D0();
  *a2 = result;
  return result;
}

BOOL sub_25BB5CF9C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BADF3D0();
  *a1 = result;
  return result;
}

uint64_t sub_25BB5CFC8(uint64_t a1)
{
  v2 = sub_25BB5F92C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB5D004(uint64_t a1)
{
  v2 = sub_25BB5F92C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReflectionPad1D.init(from:)()
{
  OUTLINED_FUNCTION_32_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B68, &qword_25BCC06E0);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_14();
  sub_25BB5F92C();
  OUTLINED_FUNCTION_12_15();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    return OUTLINED_FUNCTION_28_9();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_0_27(&qword_28154BE48);
  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_13_14();
  result = v13;
  v7 = v13[2];
  if (v7)
  {
    if (v7 != 1)
    {
      v8 = v13[4];
      v9 = v13[5];

      v10.left = OUTLINED_FUNCTION_31_8();
      ReflectionPad1D.init(size:)(v10);
      OUTLINED_FUNCTION_47_0();
      v11 = OUTLINED_FUNCTION_7_18();
      v12(v11);
      __swift_destroy_boxed_opaque_existential_1(v0);
      return OUTLINED_FUNCTION_28_9();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25BB5D1F4()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v18 = v3;
  v5 = v4;
  v7 = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_2(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_36();
  v16 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v2();
  sub_25BCB7B6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25BCBAE70;
  *(v17 + 32) = v5;
  *(v17 + 40) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_6_25(&qword_28154BE50);
  OUTLINED_FUNCTION_38_7();
  sub_25BCB779C();

  (*(v12 + 8))(v0, v10);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BB5D3A8@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_25BB5D3D8()
{
  v1 = *v0;
  v2 = v0[1];
  ReflectionPad1D.encode(to:)();
}

NeuralNetworks::ReflectionPad2D __swiftcall ReflectionPad2D.init(size:)(Swift::tuple_left_Int_right_Int_top_Int_bottom_Int size)
{
  v1 = sub_25BB5DFDC(size.left, size.right, size.top, size.bottom);
  result.size.bottom = v4;
  result.size.top = v3;
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

NeuralNetworks::ReflectionPad2D __swiftcall ReflectionPad2D.init(size:)(Swift::tuple_height_Int_width_Int size)
{
  v1 = sub_25BB5E0AC(size.height, size.width);
  result.size.bottom = v4;
  result.size.top = v3;
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

NeuralNetworks::ReflectionPad2D __swiftcall ReflectionPad2D.init(size:)(Swift::Int size)
{
  v1 = sub_25BB5E178(size);
  result.size.bottom = v4;
  result.size.top = v3;
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

uint64_t ReflectionPad2D.forward(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_15_14(a1);
  if (!sub_25BAA80BC(v2, &unk_286D42270))
  {
    v6 = v2;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    *&v7[0] = v1;
    *(&v7[0] + 1) = &v6;
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_4_22();
    sub_25BADDD28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39D0, &qword_25BCBB950);
  inited = swift_initStackObject();
  v4 = OUTLINED_FUNCTION_17_16(inited, xmmword_25BCBDF80);
  OUTLINED_FUNCTION_40_8(v4);
  swift_setDeallocating();
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  OUTLINED_FUNCTION_29_10();
  Tensor.padded(forSizes:mode:)();

  return sub_25BB2B680(v7);
}

uint64_t sub_25BB5D51C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return ReflectionPad2D.forward(_:)(a1);
}

BOOL sub_25BB5D528@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BADF408();
  *a2 = result;
  return result;
}

BOOL sub_25BB5D55C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BADF408();
  *a1 = result;
  return result;
}

uint64_t sub_25BB5D588(uint64_t a1)
{
  v2 = sub_25BB5F980();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB5D5C4(uint64_t a1)
{
  v2 = sub_25BB5F980();

  return MEMORY[0x2821FE720](a1, v2);
}

void ReflectionPad2D.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_32_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B80, &qword_25BCC06F0);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_14();
  sub_25BB5F980();
  OUTLINED_FUNCTION_12_15();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
LABEL_4:
    OUTLINED_FUNCTION_19_13();
    OUTLINED_FUNCTION_16();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_0_27(&qword_28154BE48);
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_13_14();
  v6 = v14[2];
  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v6 == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v6 == 3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v14[4];
  v8 = v14[5];
  v9 = v14[6];
  v10 = v14[7];

  if ((v7 & 0x8000000000000000) == 0 && (v8 & 0x8000000000000000) == 0 && (v9 & 0x8000000000000000) == 0 && (v10 & 0x8000000000000000) == 0)
  {
    v11 = OUTLINED_FUNCTION_7_18();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_1(v0);
    goto LABEL_4;
  }

LABEL_18:
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_22_11();
  MEMORY[0x25F876C90]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B48, &qword_25BCC06C8);
  OUTLINED_FUNCTION_54_4();
  v13 = OUTLINED_FUNCTION_16_18();
  MEMORY[0x25F876C90](v13);
  OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_1_22();
  sub_25BCB74CC();
  __break(1u);
}

void sub_25BB5D860()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v22 = v3;
  v20 = v4;
  v21 = v5;
  v7 = v6;
  v9 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_2(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  v18 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v2();
  sub_25BCB7B6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25BCBDF80;
  *(v19 + 32) = v7;
  *(v19 + 40) = v20;
  *(v19 + 48) = v21;
  *(v19 + 56) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_6_25(&qword_28154BE50);
  OUTLINED_FUNCTION_38_7();
  sub_25BCB779C();

  (*(v14 + 8))(v0, v12);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BB5DA20@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void sub_25BB5DA54()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  ReflectionPad2D.encode(to:)();
}

NeuralNetworks::SymmetricPad1D __swiftcall SymmetricPad1D.init(size:)(Swift::tuple_left_Int_right_Int size)
{
  v1 = sub_25BB5DA80(size.left, size.right);
  result.size._1 = v2;
  result.size._0 = v1;
  return result;
}

uint64_t sub_25BB5DA80(uint64_t result, uint64_t a2)
{
  if (result < 0 || a2 < 0)
  {
    OUTLINED_FUNCTION_35_6();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_22_11();
    MEMORY[0x25F876C90]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B28, &qword_25BCC06B0);
    OUTLINED_FUNCTION_52_4();
    OUTLINED_FUNCTION_21_12();
    OUTLINED_FUNCTION_48_4();
    OUTLINED_FUNCTION_1_22();
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

NeuralNetworks::SymmetricPad1D __swiftcall SymmetricPad1D.init(size:)(Swift::Int size)
{
  v1 = sub_25BB5DB3C(size);
  result.size._1 = v2;
  result.size._0 = v1;
  return result;
}

uint64_t sub_25BB5DB3C(uint64_t result)
{
  if (result < 0)
  {
    sub_25BCB70FC();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_22_11();
    MEMORY[0x25F876C90]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B28, &qword_25BCC06B0);
    OUTLINED_FUNCTION_52_4();
    OUTLINED_FUNCTION_21_12();
    OUTLINED_FUNCTION_48_4();
    OUTLINED_FUNCTION_1_22();
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

uint64_t SymmetricPad1D.forward(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_11_20(a1);
  if (!sub_25BAA80BC(v4, &unk_286D42270))
  {
    OUTLINED_FUNCTION_51_6();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v8 = v1;
    v9 = v2;
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_4_22();
    sub_25BADDD28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F88, &qword_25BCBBEB0);
  v5 = OUTLINED_FUNCTION_53_5();
  v6 = OUTLINED_FUNCTION_17_16(v5, xmmword_25BCBAE90);
  *(v6 + 64) = v3;
  *(v6 + 72) = v2;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = xmmword_25BCC06A0;
  OUTLINED_FUNCTION_25_11();
  Tensor.padded(forSizes:mode:)();

  return sub_25BB2B680(&v8);
}

uint64_t sub_25BB5DCF4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  return SymmetricPad1D.forward(_:)(a1);
}

BOOL sub_25BB5DCFC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BADF440();
  *a2 = result;
  return result;
}

BOOL sub_25BB5DD30@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BADF440();
  *a1 = result;
  return result;
}

uint64_t sub_25BB5DD5C(uint64_t a1)
{
  v2 = sub_25BB5F9D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB5DD98(uint64_t a1)
{
  v2 = sub_25BB5F9D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymmetricPad1D.init(from:)()
{
  OUTLINED_FUNCTION_32_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B98, &qword_25BCC0700);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_14();
  sub_25BB5F9D4();
  OUTLINED_FUNCTION_12_15();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    return OUTLINED_FUNCTION_28_9();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_0_27(&qword_28154BE48);
  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_13_14();
  result = v13;
  v7 = v13[2];
  if (v7)
  {
    if (v7 != 1)
    {
      v8 = v13[4];
      v9 = v13[5];

      v10.left = OUTLINED_FUNCTION_31_8();
      SymmetricPad1D.init(size:)(v10);
      OUTLINED_FUNCTION_47_0();
      v11 = OUTLINED_FUNCTION_7_18();
      v12(v11);
      __swift_destroy_boxed_opaque_existential_1(v0);
      return OUTLINED_FUNCTION_28_9();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25BB5DFB4()
{
  v1 = *v0;
  v2 = v0[1];
  SymmetricPad1D.encode(to:)();
}

NeuralNetworks::SymmetricPad2D __swiftcall SymmetricPad2D.init(size:)(Swift::tuple_left_Int_right_Int_top_Int_bottom_Int size)
{
  v1 = sub_25BB5DFDC(size.left, size.right, size.top, size.bottom);
  result.size.bottom = v4;
  result.size.top = v3;
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

uint64_t sub_25BB5DFDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || a2 < 0 || a3 < 0 || a4 < 0)
  {
    OUTLINED_FUNCTION_14_17();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_22_11();
    MEMORY[0x25F876C90]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B48, &qword_25BCC06C8);
    OUTLINED_FUNCTION_45_7();
    OUTLINED_FUNCTION_18_17();
    OUTLINED_FUNCTION_1_22();
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

NeuralNetworks::SymmetricPad2D __swiftcall SymmetricPad2D.init(size:)(Swift::tuple_height_Int_width_Int size)
{
  v1 = sub_25BB5E0AC(size.height, size.width);
  result.size.bottom = v4;
  result.size.top = v3;
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

uint64_t sub_25BB5E0AC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0 && (a1 & 0x8000000000000000) == 0)
  {
    return a2;
  }

  OUTLINED_FUNCTION_46_5();
  sub_25BCB70FC();
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_22_11();
  MEMORY[0x25F876C90]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B48, &qword_25BCC06C8);
  OUTLINED_FUNCTION_45_7();
  OUTLINED_FUNCTION_18_17();
  OUTLINED_FUNCTION_1_22();
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

NeuralNetworks::SymmetricPad2D __swiftcall SymmetricPad2D.init(size:)(Swift::Int size)
{
  v1 = sub_25BB5E178(size);
  result.size.bottom = v4;
  result.size.top = v3;
  result.size.right = v2;
  result.size.left = v1;
  return result;
}

uint64_t sub_25BB5E178(uint64_t result)
{
  if (result < 0)
  {
    OUTLINED_FUNCTION_46_5();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_22_11();
    MEMORY[0x25F876C90]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B48, &qword_25BCC06C8);
    OUTLINED_FUNCTION_45_7();
    OUTLINED_FUNCTION_18_17();
    OUTLINED_FUNCTION_1_22();
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

uint64_t SymmetricPad2D.forward(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_15_14(a1);
  if (!sub_25BAA80BC(v2, &unk_286D42270))
  {
    v6 = v2;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v7 = v1;
    v8 = &v6;
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_4_22();
    sub_25BADDD28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39D0, &qword_25BCBB950);
  inited = swift_initStackObject();
  v4 = OUTLINED_FUNCTION_17_16(inited, xmmword_25BCBDF80);
  OUTLINED_FUNCTION_40_8(v4);
  swift_setDeallocating();
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = xmmword_25BCC06A0;
  OUTLINED_FUNCTION_29_10();
  Tensor.padded(forSizes:mode:)();

  return sub_25BB2B680(&v7);
}

uint64_t sub_25BB5E350(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return SymmetricPad2D.forward(_:)(a1);
}

BOOL sub_25BB5E35C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BADF478();
  *a2 = result;
  return result;
}

BOOL sub_25BB5E390@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BADF478();
  *a1 = result;
  return result;
}

uint64_t sub_25BB5E3BC(uint64_t a1)
{
  v2 = sub_25BB5FA28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB5E3F8(uint64_t a1)
{
  v2 = sub_25BB5FA28();

  return MEMORY[0x2821FE720](a1, v2);
}

void SymmetricPad2D.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_32_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4BB0, &qword_25BCC0710);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_14();
  sub_25BB5FA28();
  OUTLINED_FUNCTION_12_15();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
LABEL_4:
    OUTLINED_FUNCTION_19_13();
    OUTLINED_FUNCTION_16();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_0_27(&qword_28154BE48);
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_13_14();
  v6 = v14[2];
  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v6 == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v6 == 3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v14[4];
  v8 = v14[5];
  v9 = v14[6];
  v10 = v14[7];

  if ((v7 & 0x8000000000000000) == 0 && (v8 & 0x8000000000000000) == 0 && (v9 & 0x8000000000000000) == 0 && (v10 & 0x8000000000000000) == 0)
  {
    v11 = OUTLINED_FUNCTION_7_18();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_1(v0);
    goto LABEL_4;
  }

LABEL_18:
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_22_11();
  MEMORY[0x25F876C90]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B48, &qword_25BCC06C8);
  OUTLINED_FUNCTION_54_4();
  v13 = OUTLINED_FUNCTION_16_18();
  MEMORY[0x25F876C90](v13);
  OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_1_22();
  sub_25BCB74CC();
  __break(1u);
}

void sub_25BB5E6C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  SymmetricPad2D.encode(to:)();
}

NeuralNetworks::ConstantPad1D __swiftcall ConstantPad1D.init(size:value:)(Swift::tuple_left_Int_right_Int size, Swift::Float value)
{
  if (size.left < 0 || size.right < 0)
  {
    OUTLINED_FUNCTION_35_6();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_22_11();
    MEMORY[0x25F876C90]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B28, &qword_25BCC06B0);
    OUTLINED_FUNCTION_52_4();
    OUTLINED_FUNCTION_21_12();
    OUTLINED_FUNCTION_48_4();
    OUTLINED_FUNCTION_1_22();
    size.left = sub_25BCB74CC();
    __break(1u);
  }

  result.size = size;
  result.value = value;
  return result;
}

NeuralNetworks::ConstantPad1D __swiftcall ConstantPad1D.init(size:value:)(Swift::Int size, Swift::Float value)
{
  v2 = size;
  if (size < 0)
  {
    OUTLINED_FUNCTION_35_6();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_22_11();
    MEMORY[0x25F876C90]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B28, &qword_25BCC06B0);
    OUTLINED_FUNCTION_52_4();
    OUTLINED_FUNCTION_21_12();
    OUTLINED_FUNCTION_48_4();
    OUTLINED_FUNCTION_1_22();
    size = sub_25BCB74CC();
    __break(1u);
  }

  result.size.right = v2;
  result.size.left = size;
  result.value = value;
  return result;
}

uint64_t ConstantPad1D.forward(_:)(uint64_t a1, float a2)
{
  OUTLINED_FUNCTION_11_20(a1);
  if (!sub_25BAA80BC(v5, &unk_286D42270))
  {
    OUTLINED_FUNCTION_51_6();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v13[0] = v2;
    v13[1] = v3;
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_4_22();
    sub_25BADDD28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F88, &qword_25BCBBEB0);
  v7 = OUTLINED_FUNCTION_53_5();
  v8 = OUTLINED_FUNCTION_17_16(v7, xmmword_25BCBAE90);
  v9 = MEMORY[0x277D83A90];
  *(v8 + 64) = v4;
  *(v8 + 72) = v3;
  v13[3] = v9;
  v13[4] = &protocol witness table for Float;
  *v13 = a2;
  OUTLINED_FUNCTION_25_11();
  Tensor.padded(forSizes:with:)(v10, v11);

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_25BB5E954(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  return ConstantPad1D.forward(_:)(a1, v1[4]);
}

uint64_t sub_25BB5E984@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BB5F1FC();
  *a2 = result;
  return result;
}

uint64_t sub_25BB5E9BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB5F1FC();
  *a1 = result;
  return result;
}

uint64_t sub_25BB5E9EC(uint64_t a1)
{
  v2 = sub_25BB5FA7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB5EA28(uint64_t a1)
{
  v2 = sub_25BB5FA7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConstantPad1D.init(from:)()
{
  OUTLINED_FUNCTION_32_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4BC8, &qword_25BCC0720);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_14();
  sub_25BB5FA7C();
  OUTLINED_FUNCTION_12_15();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    return OUTLINED_FUNCTION_31_8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_0_27(&qword_28154BE48);
  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_13_14();
  result = sub_25BCB768C();
  v8 = v15[2];
  if (v8)
  {
    if (v8 != 1)
    {
      v9 = v7;
      v10 = v15[4];
      v11 = v15[5];

      v12.left = v10;
      v12.right = v11;
      ConstantPad1D.init(size:value:)(v12, v9);
      OUTLINED_FUNCTION_47_0();
      v13 = OUTLINED_FUNCTION_7_18();
      v14(v13);
      __swift_destroy_boxed_opaque_existential_1(v0);
      return OUTLINED_FUNCTION_31_8();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ConstantPad1D.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4BD8, &qword_25BCC0728);
  OUTLINED_FUNCTION_2(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  v14 = &v18[-v13];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB5FA7C();
  sub_25BCB7B6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25BCBAE70;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  v19 = v16;
  v18[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_6_25(&qword_28154BE50);
  sub_25BCB779C();

  if (!v3)
  {
    v18[6] = 1;
    sub_25BCB777C();
  }

  return (*(v9 + 8))(v14, v7);
}

uint64_t sub_25BB5EE24@<X0>(uint64_t a1@<X8>)
{
  result = ConstantPad1D.init(from:)();
  if (!v1)
  {
    *a1 = result;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }

  return result;
}

uint64_t ConstantPad2D.size.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return result;
}

void __swiftcall ConstantPad2D.init(size:value:)(NeuralNetworks::ConstantPad2D *__return_ptr retstr, Swift::tuple_left_Int_right_Int_top_Int_bottom_Int size, Swift::Float value)
{
  if (size.left < 0 || size.right < 0 || size.top < 0 || size.bottom < 0)
  {
    OUTLINED_FUNCTION_14_17();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_22_11();
    MEMORY[0x25F876C90]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B48, &qword_25BCC06C8);
    OUTLINED_FUNCTION_45_7();
    OUTLINED_FUNCTION_18_17();
    OUTLINED_FUNCTION_26_12();
    OUTLINED_FUNCTION_1_22();
    sub_25BCB74CC();
    __break(1u);
  }

  else
  {
    retstr->size = size;
    retstr->value = value;
  }
}

void __swiftcall ConstantPad2D.init(size:value:)(NeuralNetworks::ConstantPad2D *__return_ptr retstr, Swift::tuple_height_Int_width_Int size, Swift::Float value)
{
  if (size.width < 0 || size.height < 0)
  {
    OUTLINED_FUNCTION_14_17();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_22_11();
    MEMORY[0x25F876C90]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B48, &qword_25BCC06C8);
    OUTLINED_FUNCTION_45_7();
    OUTLINED_FUNCTION_18_17();
    OUTLINED_FUNCTION_26_12();
    OUTLINED_FUNCTION_1_22();
    sub_25BCB74CC();
    __break(1u);
  }

  else
  {
    retstr->size.left = size.width;
    retstr->size.right = size.width;
    retstr->size.top = size.height;
    retstr->size.bottom = size.height;
    retstr->value = value;
  }
}

void __swiftcall ConstantPad2D.init(size:value:)(NeuralNetworks::ConstantPad2D *__return_ptr retstr, Swift::Int size, Swift::Float value)
{
  if (size < 0)
  {
    OUTLINED_FUNCTION_14_17();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_22_11();
    MEMORY[0x25F876C90]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B48, &qword_25BCC06C8);
    sub_25BCB73CC();
    v3 = OUTLINED_FUNCTION_16_18();
    MEMORY[0x25F876C90](v3);
    OUTLINED_FUNCTION_26_12();
    OUTLINED_FUNCTION_1_22();
    sub_25BCB74CC();
    __break(1u);
  }

  else
  {
    retstr->size.left = size;
    retstr->size.right = size;
    retstr->size.top = size;
    retstr->size.bottom = size;
    retstr->value = value;
  }
}

uint64_t ConstantPad2D.forward(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*(*a1 + 16) + 160);
  if (!sub_25BAA80BC(v5, &unk_286D42270))
  {
    LOBYTE(v13) = v5;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v14[0] = a2;
    v14[1] = &v13;
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_4_22();
    sub_25BADDD28();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39D0, &qword_25BCBB950);
  inited = swift_initStackObject();
  inited[1] = xmmword_25BCBDF80;
  inited[2] = 0u;
  v8 = *v2;
  v7 = v2[1];
  inited[3] = 0u;
  inited[4] = v7;
  inited[5] = v8;
  v13 = v4;
  v9 = sub_25BAF9FC0(inited);
  swift_setDeallocating();
  v10 = *(v2 + 8);
  v14[3] = MEMORY[0x277D83A90];
  v14[4] = &protocol witness table for Float;
  LODWORD(v14[0]) = v10;
  OUTLINED_FUNCTION_29_10();
  Tensor.padded(forSizes:with:)(v9, v11);

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_25BB5F1FC()
{
  OUTLINED_FUNCTION_33_8();
  sub_25BCB761C();
  OUTLINED_FUNCTION_39_1();
  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BB5F244@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BB5F1FC();
  *a2 = result;
  return result;
}

uint64_t sub_25BB5F27C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB5F1FC();
  *a1 = result;
  return result;
}

uint64_t sub_25BB5F2AC(uint64_t a1)
{
  v2 = sub_25BB5FAD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB5F2E8(uint64_t a1)
{
  v2 = sub_25BB5FAD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConstantPad2D.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4BE0, &qword_25BCC0730);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB5FAD0();
  sub_25BCB7B2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_0_27(&qword_28154BE48);
  OUTLINED_FUNCTION_50_3();
  sub_25BCB76AC();
  sub_25BCB768C();
  v12 = v21[2];
  if (!v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v12 == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12 == 3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v10;
  v14 = v21[4];
  v20 = v21[5];
  v15 = v21[7];
  v16 = v21[6];

  if ((v14 & 0x8000000000000000) == 0 && (v20 & 0x8000000000000000) == 0 && (v16 & 0x8000000000000000) == 0 && (v15 & 0x8000000000000000) == 0)
  {
    v17 = OUTLINED_FUNCTION_7_1();
    v18(v17);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = v14;
    *(a2 + 8) = v20;
    *(a2 + 16) = v16;
    *(a2 + 24) = v15;
    *(a2 + 32) = v13;
    return result;
  }

LABEL_17:
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_22_11();
  MEMORY[0x25F876C90]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4B48, &qword_25BCC06C8);
  OUTLINED_FUNCTION_54_4();
  v19 = OUTLINED_FUNCTION_16_18();
  MEMORY[0x25F876C90](v19);
  OUTLINED_FUNCTION_26_12();
  OUTLINED_FUNCTION_1_22();
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t ConstantPad2D.encode(to:)(uint64_t a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4BF0, &qword_25BCC0738);
  OUTLINED_FUNCTION_2(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = OUTLINED_FUNCTION_31_8();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_25BB5FAD0();
  sub_25BCB7B6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v16 = swift_allocObject();
  v17 = *v4;
  v18 = v4[1];
  v16[1] = xmmword_25BCBDF80;
  v16[2] = v17;
  v16[3] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_6_25(&qword_28154BE50);
  OUTLINED_FUNCTION_38_7();
  sub_25BCB779C();

  if (!v2)
  {
    v19 = *(v4 + 8);
    sub_25BCB777C();
  }

  return (*(v8 + 8))(v3, v6);
}

double sub_25BB5F7B8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  ConstantPad2D.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_25BB5F818()
{
  result = qword_27FBB4B38;
  if (!qword_27FBB4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4B38);
  }

  return result;
}

uint64_t sub_25BB5F86C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25BB5F8D8()
{
  result = qword_27FBB4B58;
  if (!qword_27FBB4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4B58);
  }

  return result;
}

unint64_t sub_25BB5F92C()
{
  result = qword_27FBB4B70;
  if (!qword_27FBB4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4B70);
  }

  return result;
}

unint64_t sub_25BB5F980()
{
  result = qword_27FBB4B88;
  if (!qword_27FBB4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4B88);
  }

  return result;
}

unint64_t sub_25BB5F9D4()
{
  result = qword_27FBB4BA0;
  if (!qword_27FBB4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4BA0);
  }

  return result;
}

unint64_t sub_25BB5FA28()
{
  result = qword_27FBB4BB8;
  if (!qword_27FBB4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4BB8);
  }

  return result;
}

unint64_t sub_25BB5FA7C()
{
  result = qword_27FBB4BD0;
  if (!qword_27FBB4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4BD0);
  }

  return result;
}

unint64_t sub_25BB5FAD0()
{
  result = qword_27FBB4BE8;
  if (!qword_27FBB4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4BE8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ConstantPad1D(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ConstantPad1D(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25BB5FBF8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 36))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BB5FC18(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 36) = v3;
  return result;
}

uint64_t sub_25BB5FC64(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_42_6(-1);
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
      return OUTLINED_FUNCTION_42_6((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_42_6((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_42_6((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_42_6(v8);
}

_BYTE *sub_25BB5FCE8(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25BB5FE18(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_6_8();
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

_BYTE *sub_25BB5FE64(_BYTE *result, int a2, int a3)
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

unint64_t sub_25BB5FF14()
{
  result = qword_27FBB4BF8;
  if (!qword_27FBB4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4BF8);
  }

  return result;
}

unint64_t sub_25BB5FF6C()
{
  result = qword_27FBB4C00;
  if (!qword_27FBB4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C00);
  }

  return result;
}

unint64_t sub_25BB5FFC4()
{
  result = qword_27FBB4C08;
  if (!qword_27FBB4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C08);
  }

  return result;
}

unint64_t sub_25BB6001C()
{
  result = qword_27FBB4C10;
  if (!qword_27FBB4C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C10);
  }

  return result;
}

unint64_t sub_25BB60074()
{
  result = qword_27FBB4C18;
  if (!qword_27FBB4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C18);
  }

  return result;
}

unint64_t sub_25BB600CC()
{
  result = qword_27FBB4C20;
  if (!qword_27FBB4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C20);
  }

  return result;
}

unint64_t sub_25BB60124()
{
  result = qword_27FBB4C28;
  if (!qword_27FBB4C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C28);
  }

  return result;
}

unint64_t sub_25BB6017C()
{
  result = qword_27FBB4C30;
  if (!qword_27FBB4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C30);
  }

  return result;
}

unint64_t sub_25BB601D4()
{
  result = qword_27FBB4C38;
  if (!qword_27FBB4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C38);
  }

  return result;
}

unint64_t sub_25BB6022C()
{
  result = qword_27FBB4C40;
  if (!qword_27FBB4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C40);
  }

  return result;
}

unint64_t sub_25BB60284()
{
  result = qword_27FBB4C48;
  if (!qword_27FBB4C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C48);
  }

  return result;
}

unint64_t sub_25BB602DC()
{
  result = qword_27FBB4C50;
  if (!qword_27FBB4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4C50);
  }

  return result;
}