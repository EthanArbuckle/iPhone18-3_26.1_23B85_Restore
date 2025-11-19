uint64_t sub_1976CDD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  if (a4)
  {

    sub_19774F5B0();

    v30[0] = 40;
    v30[1] = 0xE100000000000000;
    v13 = (*(a6 + 24))(a5, a6);
    MEMORY[0x19A8E4C40](v13);

    MEMORY[0x19A8E4C40](0xD000000000000011, 0x8000000197762220);
    v14 = 40;
    (*(a6 + 32))(a5, a6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
    inited = swift_initStackObject();
    v16 = MEMORY[0x1E69E6158];
    *(inited + 16) = xmmword_19775A850;
    *(inited + 56) = v16;
    *(inited + 64) = &off_1F0BBA858;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 96) = v16;
    *(inited + 104) = &off_1F0BBA858;
    *(inited + 72) = a3;
    *(inited + 80) = a4;

    sub_1976B5D3C(inited);
  }

  else
  {
    v18 = *(a6 + 8);
    v30[3] = a5;
    v30[4] = v18;
    __swift_allocate_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_46(a5);
    (*(v19 + 16))();
    v29[3] = MEMORY[0x1E69E6158];
    v29[4] = &off_1F0BBA860;
    v29[0] = a1;
    v29[1] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_19775A850;
    sub_19764E1F4(v30, v20 + 32);
    sub_19764E1F4(v29, v20 + 72);
    OUTLINED_FUNCTION_35_4();
    v26[0] = v21;
    v26[1] = v22;

    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_71_2();
    sub_197649FEC(v20, v26);

    v23 = v27;
    v24 = v28;
    __swift_project_boxed_opaque_existential_0Tm(v26, v27);
    (*(v24 + 8))(v23, v24);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_33();
    v14 = a7();

    swift_setDeallocating();
    sub_19764F1B0();
    __swift_destroy_boxed_opaque_existential_0(v29);
    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  return v14;
}

uint64_t sub_1976CE060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  if (a5)
  {
    v14 = *(a7 + 8);
    v74 = a6;
    v75 = v14;
    __swift_allocate_boxed_opaque_existential_1(v73);
    OUTLINED_FUNCTION_46(a6);
    (*(v15 + 16))();
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
    v72 = &off_1F0BBB748;
    v68 = a1;
    v69 = a2;
    v70 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A850;
    sub_19764E1F4(v73, inited + 32);
    sub_19764E1F4(&v68, inited + 72);

    OUTLINED_FUNCTION_40_4();
    sub_197649FEC(inited, v17);
    swift_setDeallocating();
    sub_19764F1B0();
    __swift_project_boxed_opaque_existential_0Tm(v65, v66);
    v18 = OUTLINED_FUNCTION_2_21();
    v19(v18);
    OUTLINED_FUNCTION_38_6();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_0(v65);
    __swift_destroy_boxed_opaque_existential_0(&v68);
    __swift_destroy_boxed_opaque_existential_0(v73);
    v73[0] = 40;
    v73[1] = 0xE100000000000000;
    v22 = OUTLINED_FUNCTION_110();
    MEMORY[0x19A8E4C40](v22);

    OUTLINED_FUNCTION_27_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
    v23 = swift_initStackObject();
    v24 = MEMORY[0x1E69E6158];
    *(v23 + 16) = xmmword_19775A780;
    *(v23 + 56) = v24;
    *(v23 + 64) = &off_1F0BBA858;
    *(v23 + 32) = a4;
    *(v23 + 40) = a5;
    v73[0] = v21;
    sub_1976B5D3C(v23);
  }

  else
  {
    v26 = *(a7 + 8);
    v74 = a6;
    v75 = v26;
    __swift_allocate_boxed_opaque_existential_1(v73);
    OUTLINED_FUNCTION_46(a6);
    (*(v27 + 16))();
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
    v72 = &off_1F0BBB748;
    v68 = a1;
    v69 = a2;
    v70 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_19775A850;
    sub_19764E1F4(v73, v28 + 32);
    sub_19764E1F4(&v68, v28 + 72);
    OUTLINED_FUNCTION_35_4();
    v65[0] = v29;
    v65[1] = v30;

    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_71_2();
    OUTLINED_FUNCTION_48_4(v31, v32, v33, v34, v35, v36, v37, v38, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65[0]);

    v39 = v66;
    v40 = v67;
    __swift_project_boxed_opaque_existential_0Tm(v65, v66);
    (*(v40 + 8))(v39, v40);
    OUTLINED_FUNCTION_19_7();
    __swift_destroy_boxed_opaque_existential_0(v65);
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_33();
    a8();
    OUTLINED_FUNCTION_38_6();

    swift_setDeallocating();
    sub_19764F1B0();
    __swift_destroy_boxed_opaque_existential_0(&v68);
    __swift_destroy_boxed_opaque_existential_0(v73);
  }

  return OUTLINED_FUNCTION_110();
}

void sub_1976CE400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v13 = *(a4 + 8);
  v24[3] = a3;
  v24[4] = v13;
  __swift_allocate_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_46(a3);
  (*(v14 + 16))();
  v23[3] = MEMORY[0x1E69E6158];
  v23[4] = &off_1F0BBA860;
  v23[0] = a1;
  v23[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v16 = OUTLINED_FUNCTION_93(inited, xmmword_19775A850);
  sub_19764E1F4(v16, &inited[2]);
  sub_19764E1F4(v23, &inited[4].n128_i64[1]);
  OUTLINED_FUNCTION_35_4();
  v22[0] = v17;
  v22[1] = v18;

  MEMORY[0x19A8E4C40](a5, a6);
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_50_5(v19);

  __swift_project_boxed_opaque_existential_0Tm(v22, v22[3]);
  v20 = OUTLINED_FUNCTION_2_21();
  v21(v20);
  __swift_destroy_boxed_opaque_existential_0(v22);
  OUTLINED_FUNCTION_33();
  a7();
  OUTLINED_FUNCTION_19_7();

  swift_setDeallocating();
  sub_19764F1B0();
  OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_20_6();
}

void sub_1976CE5B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v9 = *(a4 + 8);
  v20[3] = a3;
  v20[4] = v9;
  __swift_allocate_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_46(a3);
  (*(v10 + 16))();
  v19[3] = &type metadata for Collation;
  v19[4] = &off_1F0BBBBC0;
  v19[0] = a1;
  v19[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v12 = OUTLINED_FUNCTION_93(inited, xmmword_19775A850);
  sub_19764E1F4(v12, &inited[2]);
  sub_19764E1F4(v19, &inited[4].n128_i64[1]);
  OUTLINED_FUNCTION_35_4();
  v18[0] = v13;
  v18[1] = v14;
  sub_1976B35AC(a1, a2);
  MEMORY[0x19A8E4C40](0x4554414C4C4F43, 0xE700000000000000);
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_50_5(v15);

  __swift_project_boxed_opaque_existential_0Tm(v18, v18[3]);
  v16 = OUTLINED_FUNCTION_2_21();
  v17(v16);
  __swift_destroy_boxed_opaque_existential_0(v18);
  OUTLINED_FUNCTION_33();
  a5();
  OUTLINED_FUNCTION_19_7();

  swift_setDeallocating();
  sub_19764F1B0();
  OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_20_6();
}

uint64_t sub_1976CE784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t, unint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_12_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A7E0;
  *(inited + 56) = a5;
  OUTLINED_FUNCTION_26_7(inited, *(a6 + 8));
  OUTLINED_FUNCTION_46(a5);
  (*(v15 + 16))();
  v16 = MEMORY[0x1E69E6158];
  *(inited + 96) = MEMORY[0x1E69E6158];
  *(inited + 104) = &off_1F0BBA860;
  *(inited + 72) = v9;
  *(inited + 80) = v8;
  *(inited + 136) = v16;
  *(inited + 144) = &off_1F0BBA860;
  *(inited + 112) = v7;
  *(inited + 120) = a4;

  OUTLINED_FUNCTION_51(inited, v21);
  swift_setDeallocating();
  sub_19764F1B0();
  v17 = v22;
  v18 = v23;
  v19 = __swift_project_boxed_opaque_existential_0Tm(v21, v22);
  a7(v19, 0x6563616C706572, 0xE700000000000000, v17, v18);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v21);
  return OUTLINED_FUNCTION_1_21();
}

void sub_1976CE8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  OUTLINED_FUNCTION_163();
  a57 = v59;
  a58 = v60;
  v62 = v61;
  v63 = v58;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  if (v69)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A850;
    *(inited + 56) = v67;
    v75 = OUTLINED_FUNCTION_26_7(inited, *(v65 + 8));
    (*(*(v67 - 8) + 16))(v75, v63, v67);
    *(inited + 96) = MEMORY[0x1E69E6530];
    *(inited + 104) = &off_1F0BBA8B8;
    *(inited + 72) = v73;
    OUTLINED_FUNCTION_51(inited, &a28);
  }

  else
  {
    v76 = swift_initStackObject();
    *(v76 + 16) = xmmword_19775A7E0;
    *(v76 + 56) = v67;
    v77 = OUTLINED_FUNCTION_26_7(v76, *(v65 + 8));
    (*(*(v67 - 8) + 16))(v77, v63, v67);
    v78 = MEMORY[0x1E69E6530];
    *(v76 + 96) = MEMORY[0x1E69E6530];
    *(v76 + 104) = &off_1F0BBA8B8;
    *(v76 + 72) = v73;
    *(v76 + 136) = v78;
    *(v76 + 144) = &off_1F0BBA8B8;
    *(v76 + 112) = v71;
    OUTLINED_FUNCTION_51(v76, &a28);
  }

  swift_setDeallocating();
  sub_19764F1B0();
  v79 = a31;
  v80 = a32;
  v81 = __swift_project_boxed_opaque_existential_0Tm(&a28, a31);
  v62(v81, 0x727473627573, 0xE600000000000000, v79, v80);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(&a28);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_162();
}

uint64_t sub_1976CEA8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v5 = __OFSUB__(a2, result);
  v6 = a2 - result;
  if (!v5)
  {
    return a5(result, v6, 0, a3, a4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1976CEF5C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 56);
  v6 = *(a1 + 8);
  swift_getAssociatedTypeWitness();
  a3[3] = swift_getAssociatedTypeWitness();
  a3[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a3);
  v7 = swift_checkMetadataState();
  return v5(v7, a2);
}

uint64_t sub_1976CF048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a5)
  {
    v12 = MEMORY[0x1E69E6158];
    v74 = MEMORY[0x1E69E6158];
    v75 = &off_1F0BBA860;
    v72 = a6;
    v73 = a7;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
    v71 = &off_1F0BBB748;
    v67 = a1;
    v68 = a2;
    v69 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    inited = swift_initStackObject();
    v14 = OUTLINED_FUNCTION_93(inited, xmmword_19775A850);
    sub_19764E1F4(v14, &inited[2]);
    sub_19764E1F4(&v67, &inited[4].n128_i64[1]);

    OUTLINED_FUNCTION_40_4();
    sub_197649FEC(inited, v15);
    swift_setDeallocating();
    sub_19764F1B0();
    __swift_project_boxed_opaque_existential_0Tm(v65, v66);
    v16 = OUTLINED_FUNCTION_2_21();
    v17(v16);
    OUTLINED_FUNCTION_38_6();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_0(v65);
    OUTLINED_FUNCTION_44_5();
    v72 = 40;
    v73 = 0xE100000000000000;
    v20 = OUTLINED_FUNCTION_110();
    MEMORY[0x19A8E4C40](v20);

    OUTLINED_FUNCTION_27_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_19775A780;
    *(v21 + 56) = v12;
    *(v21 + 64) = &off_1F0BBA858;
    *(v21 + 32) = a4;
    *(v21 + 40) = a5;
    v72 = v19;
    sub_1976B5D3C(v21);
  }

  else
  {
    v74 = MEMORY[0x1E69E6158];
    v75 = &off_1F0BBA860;
    v72 = a6;
    v73 = a7;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
    v71 = &off_1F0BBB748;
    v67 = a1;
    v68 = a2;
    v69 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    v22 = swift_initStackObject();
    v23 = OUTLINED_FUNCTION_93(v22, xmmword_19775A850);
    sub_19764E1F4(v23, &v22[2]);
    sub_19764E1F4(&v67, &v22[4].n128_i64[1]);
    OUTLINED_FUNCTION_35_4();
    v65[0] = v24;
    v65[1] = v25;

    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_71_2();
    OUTLINED_FUNCTION_48_4(v26, v27, v28, v29, v30, v31, v32, v33, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65[0]);

    __swift_project_boxed_opaque_existential_0Tm(v65, v66);
    v34 = OUTLINED_FUNCTION_5_14();
    v35(v34);
    OUTLINED_FUNCTION_19_7();
    __swift_destroy_boxed_opaque_existential_0(v65);
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_33();
    sub_1976BA5E0(v36, v37, v38, v39, v40);
    OUTLINED_FUNCTION_38_6();

    swift_setDeallocating();
    sub_19764F1B0();
    OUTLINED_FUNCTION_44_5();
  }

  return OUTLINED_FUNCTION_110();
}

uint64_t sub_1976CF334(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_36_4(inited, xmmword_19775A850);
  inited[3].n128_u64[1] = OUTLINED_FUNCTION_92_0();
  inited[4].n128_u64[0] = &off_1F0BBB748;
  inited[2].n128_u64[0] = a1;
  inited[2].n128_u64[1] = a2;
  inited[3].n128_u64[0] = a3;
  inited[6].n128_u64[0] = a5;
  inited[6].n128_u64[1] = *(a6 + 8);
  __swift_allocate_boxed_opaque_existential_1(&inited[4].n128_i64[1]);
  OUTLINED_FUNCTION_46(a5);
  (*(v12 + 16))();

  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_18_8();
  sub_19764F1B0();
  return OUTLINED_FUNCTION_16();
}

uint64_t sub_1976CF430(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_36_4(inited, xmmword_19775A850);
  inited[3].n128_u64[1] = OUTLINED_FUNCTION_92_0();
  inited[4].n128_u64[0] = &off_1F0BBB748;
  inited[2].n128_u64[0] = a1;
  inited[2].n128_u64[1] = a2;
  inited[3].n128_u64[0] = a3;
  inited[6].n128_u64[0] = type metadata accessor for Expression();
  inited[6].n128_u64[1] = &off_1F0BBB748;
  inited[4].n128_u64[1] = a4;
  inited[5].n128_u64[0] = a5;
  inited[5].n128_u64[1] = a6;

  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_18_8();
  sub_19764F1B0();
  return OUTLINED_FUNCTION_16();
}

uint64_t sub_1976CF520(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  OUTLINED_FUNCTION_12_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_36_4(inited, xmmword_19775A850);
  v13 = OUTLINED_FUNCTION_92_0();
  inited[2].n128_u64[0] = v8;
  inited[2].n128_u64[1] = v7;
  inited[3].n128_u64[0] = v6;
  inited[3].n128_u64[1] = v13;
  inited[6].n128_u64[0] = v13;
  inited[6].n128_u64[1] = &off_1F0BBB748;
  inited[4].n128_u64[0] = &off_1F0BBB748;
  inited[4].n128_u64[1] = a4;
  inited[5].n128_u64[0] = a5;
  inited[5].n128_u64[1] = a6;

  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_18_8();
  sub_19764F1B0();
  return OUTLINED_FUNCTION_16();
}

uint64_t OUTLINED_FUNCTION_28_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1976CCA6C(v10, va, v12, a4, a5, v11, a7, a8);
}

void OUTLINED_FUNCTION_32_6()
{

  JUMPOUT(0x19A8E4C40);
}

void OUTLINED_FUNCTION_50_5(uint64_t a1, ...)
{
  va_start(va, a1);

  sub_197649FEC(v1, va);
}

const char *sub_1976CF6C4(unsigned int a1)
{
  if (qword_1ED697128 != -1)
  {
    swift_once();
  }

  if (sub_197646C0C(a1, qword_1ED6971E8))
  {

    return 0;
  }

  v3 = sub_197646D50();
  result = sqlite3_errmsg(v3);
  if (result)
  {
    v2 = sub_19774F020();

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1976CF798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {

    sub_19774F5B0();

    v9 = a1;
    MEMORY[0x19A8E4C40](10272, 0xE200000000000000);
    v5 = sub_1976C8F64();
    MEMORY[0x19A8E4C40](v5);

    MEMORY[0x19A8E4C40](0x3A65646F63282029, 0xE900000000000020);
    v6 = sub_19774F7C0();
    MEMORY[0x19A8E4C40](v6);

    MEMORY[0x19A8E4C40](41, 0xE100000000000000);
  }

  else
  {
    v9 = a1;

    MEMORY[0x19A8E4C40](0x203A65646F632820, 0xE800000000000000);
    v7 = sub_19774F7C0();
    MEMORY[0x19A8E4C40](v7);

    MEMORY[0x19A8E4C40](41, 0xE100000000000000);
  }

  return v9;
}

uint64_t sub_1976CF928(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1976CF968(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1976CF9B8(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      return 0x5952414E4942;
    case 1:
      return 0x455341434F4ELL;
    case 2:
      return 0x4D49525452;
  }

  return sub_1976497AC(34, 0xE100000000000000);
}

uint64_t sub_1976CFA3C(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      return 0x5952414E4942;
    case 1:
      return 0x455341434F4ELL;
    case 2:
      return 0x4D49525452;
  }

  return sub_1976497AC(34, 0xE100000000000000);
}

uint64_t get_enum_tag_for_layout_string_17AppIntents_SQLite9CollationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1976CFAFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1976CFB58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1976CFBB8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19775A780;
  if (a2)
  {
    v5 = &off_1F0BBA858;
    v6 = MEMORY[0x1E69E6158];
  }

  else
  {
    a1 = 0;
    v6 = 0;
    v5 = 0;
    *(v4 + 48) = 0;
  }

  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 56) = v6;
  *(v4 + 64) = v5;
  return 63;
}

uint64_t sub_1976CFC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v11 = sub_1976D010C(a1, a2, a3, a4, a5);
  if (v5 || (LOBYTE(a4) = v11, v11 != 2))
  {
  }

  else
  {
    sub_1976C1B74();
    swift_allocError();
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = 0;
    *(v12 + 24) = 3;
    swift_willThrow();
  }

  return a4 & 1;
}

uint64_t sub_1976CFD14(uint64_t a1, uint64_t a2)
{

  sub_1976D03C8();
  v7 = v6;
  if (v2 || (v5 & 1) == 0)
  {
  }

  else
  {
    sub_1976C1B74();
    swift_allocError();
    *v8 = a1;
    *(v8 + 8) = a2;
    *(v8 + 16) = 0;
    *(v8 + 24) = 3;
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_1976CFDD8(uint64_t a1, uint64_t a2)
{

  sub_1976D03C8();
  if (v2 || (v5 & 1) == 0)
  {
  }

  sub_1976C1B74();
  swift_allocError();
  *v6 = a1;
  *(v6 + 8) = a2;
  *(v6 + 16) = 0;
  *(v6 + 24) = 3;
  return swift_willThrow();
}

uint64_t sub_1976CFEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v11 = sub_1976D0674(a1, a2, a3, a4, a5);
  if (v5)
  {
  }

  else if (v12)
  {
    a4 = v11;
  }

  else
  {
    sub_1976C1B74();
    swift_allocError();
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = 0;
    *(v14 + 24) = 3;
    swift_willThrow();
  }

  return a4;
}

uint64_t sub_1976CFF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v18 - v13;

  sub_1976D0930(a1, a2, a3, a4, v14);
  if (v5)
  {
  }

  v16 = sub_19774EB80();
  if (__swift_getEnumTagSinglePayload(v14, 1, v16) == 1)
  {
    sub_19764CAE4(v14, &qword_1EAF3F8F0, &qword_19775DA60);
    sub_1976C1B74();
    swift_allocError();
    *v17 = a1;
    *(v17 + 8) = a2;
    *(v17 + 16) = 0;
    *(v17 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    return (*(*(v16 - 8) + 32))(a5, v14, v16);
  }
}

unint64_t sub_1976D010C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();
  v42 = a1;
  v9 = sub_19764ECD4(a1, a2, a4);
  if ((v10 & 1) == 0)
  {
    v25 = v9;
    swift_bridgeObjectRelease_n();
    v26 = v25;
    v27 = a4;
    v28 = a5;
    return sub_1976D0ED0(v26, v27, v28);
  }

  v38 = a5;

  v40 = a4;
  result = sub_19764ED9C(v11);
  v13 = result;
  v14 = 0;
  v15 = *(result + 16);
  v16 = result + 40;
  v41 = MEMORY[0x1E69E7CC0];
  v39 = result + 40;
LABEL_3:
  v17 = (v16 + 16 * v14);
  while (v15 != v14)
  {
    if (v14 >= *(v13 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v18 = *(v17 - 1);
    v19 = *v17;

    MEMORY[0x19A8E4C40](v42, a2);
    v20 = sub_19774F060();

    if (v20)
    {
      v21 = v41;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_19764AD60(0, *(v41 + 2) + 1, 1);
        v21 = v41;
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        result = sub_19764AD60((v22 > 1), v23 + 1, 1);
        v21 = v41;
      }

      ++v14;
      *(v21 + 2) = v23 + 1;
      v41 = v21;
      v24 = &v21[16 * v23];
      *(v24 + 4) = v18;
      *(v24 + 5) = v19;
      v16 = v39;
      goto LABEL_3;
    }

    v17 += 2;
    ++v14;
  }

  v29 = v41;
  v30 = *(v41 + 2);

  if (!v30)
  {

    v29 = sub_1976C0CB0(v40);
    v36 = 1;
LABEL_22:
    sub_1976C1B74();
    swift_allocError();
    *v37 = v42;
    *(v37 + 8) = a2;
    *(v37 + 16) = v29;
    *(v37 + 24) = v36;
    return swift_willThrow();
  }

  if (v30 != 1)
  {
    v36 = 2;
    goto LABEL_22;
  }

  if (!*(v41 + 2))
  {
    goto LABEL_24;
  }

  v32 = *(v41 + 4);
  v31 = *(v41 + 5);

  v33 = sub_19764ECD4(v32, v31, v40);
  v35 = v34;

  if ((v35 & 1) == 0)
  {

    v26 = v33;
    v27 = v40;
    v28 = v38;
    return sub_1976D0ED0(v26, v27, v28);
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1976D03C8()
{
  OUTLINED_FUNCTION_40();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  swift_bridgeObjectRetain_n();
  v36 = v7;
  v8 = sub_19764ECD4(v7, v5, v3);
  if ((v9 & 1) == 0)
  {
    v24 = v8;
    swift_bridgeObjectRelease_n();
LABEL_19:
    sub_1976D0F60(v24, v3, v1);
LABEL_23:
    OUTLINED_FUNCTION_39();
    return;
  }

  v33 = v1;

  v34 = v3;
  v11 = sub_19764ED9C(v10);
  v12 = 0;
  v13 = *(v11 + 16);
  v14 = v11 + 40;
  v35 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v15 = (v14 + 16 * v12);
  while (v13 != v12)
  {
    if (v12 >= *(v11 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v17 = *(v15 - 1);
    v16 = *v15;

    MEMORY[0x19A8E4C40](v36, v5);
    v18 = sub_19774F060();

    if (v18)
    {
      v19 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_19764AD60(0, *(v35 + 2) + 1, 1);
        v19 = v35;
      }

      v20 = v19;
      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      if (v22 >= v21 >> 1)
      {
        sub_19764AD60((v21 > 1), v22 + 1, 1);
        v20 = v35;
      }

      ++v12;
      *(v20 + 2) = v22 + 1;
      v35 = v20;
      v23 = &v20[16 * v22];
      *(v23 + 4) = v17;
      *(v23 + 5) = v16;
      v14 = v11 + 40;
      goto LABEL_3;
    }

    v15 += 2;
    ++v12;
  }

  v25 = v35;
  v26 = *(v35 + 2);

  if (!v26)
  {

    v25 = sub_1976C0CB0(v34);
    v31 = 1;
LABEL_22:
    sub_1976C1B74();
    swift_allocError();
    *v32 = v36;
    *(v32 + 8) = v5;
    *(v32 + 16) = v25;
    *(v32 + 24) = v31;
    swift_willThrow();
    goto LABEL_23;
  }

  v3 = v34;
  if (v26 != 1)
  {
    v31 = 2;
    goto LABEL_22;
  }

  if (!*(v35 + 2))
  {
    goto LABEL_25;
  }

  v28 = *(v35 + 4);
  v27 = *(v35 + 5);

  v24 = sub_19764ECD4(v28, v27, v34);
  v30 = v29;

  v1 = v33;
  if ((v30 & 1) == 0)
  {

    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
}

unint64_t sub_1976D0674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();
  v42 = a1;
  v9 = sub_19764ECD4(a1, a2, a4);
  if ((v10 & 1) == 0)
  {
    v25 = v9;
    swift_bridgeObjectRelease_n();
    v26 = v25;
    v27 = a4;
    v28 = a5;
    return sub_1976D0FF4(v26, v27, v28);
  }

  v38 = a5;

  v40 = a4;
  result = sub_19764ED9C(v11);
  v13 = result;
  v14 = 0;
  v15 = *(result + 16);
  v16 = result + 40;
  v41 = MEMORY[0x1E69E7CC0];
  v39 = result + 40;
LABEL_3:
  v17 = (v16 + 16 * v14);
  while (v15 != v14)
  {
    if (v14 >= *(v13 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v18 = *(v17 - 1);
    v19 = *v17;

    MEMORY[0x19A8E4C40](v42, a2);
    v20 = sub_19774F060();

    if (v20)
    {
      v21 = v41;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_19764AD60(0, *(v41 + 2) + 1, 1);
        v21 = v41;
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        result = sub_19764AD60((v22 > 1), v23 + 1, 1);
        v21 = v41;
      }

      ++v14;
      *(v21 + 2) = v23 + 1;
      v41 = v21;
      v24 = &v21[16 * v23];
      *(v24 + 4) = v18;
      *(v24 + 5) = v19;
      v16 = v39;
      goto LABEL_3;
    }

    v17 += 2;
    ++v14;
  }

  v29 = v41;
  v30 = *(v41 + 2);

  if (!v30)
  {

    v29 = sub_1976C0CB0(v40);
    v36 = 1;
LABEL_22:
    sub_1976C1B74();
    swift_allocError();
    *v37 = v42;
    *(v37 + 8) = a2;
    *(v37 + 16) = v29;
    *(v37 + 24) = v36;
    return swift_willThrow();
  }

  if (v30 != 1)
  {
    v36 = 2;
    goto LABEL_22;
  }

  if (!*(v41 + 2))
  {
    goto LABEL_24;
  }

  v32 = *(v41 + 4);
  v31 = *(v41 + 5);

  v33 = sub_19764ECD4(v32, v31, v40);
  v35 = v34;

  if ((v35 & 1) == 0)
  {

    v26 = v33;
    v27 = v40;
    v28 = v38;
    return sub_1976D0FF4(v26, v27, v28);
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1976D0930(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  swift_bridgeObjectRetain_n();
  v42 = a1;
  v10 = sub_19764ECD4(a1, a2, a3);
  if ((v11 & 1) == 0)
  {
    v25 = v10;
    swift_bridgeObjectRelease_n();
    v26 = a5;
    v27 = v25;
    v28 = a4;
LABEL_19:
    sub_1976D107C(v27, v28, v26);
    return;
  }

  v38 = a5;
  v39 = a4;

  v40 = a3;
  v13 = sub_19764ED9C(v12);
  v14 = 0;
  v15 = *(v13 + 16);
  v16 = v13 + 40;
  v41 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v17 = (v16 + 16 * v14);
  while (v15 != v14)
  {
    if (v14 >= *(v13 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v19 = *(v17 - 1);
    v18 = *v17;

    MEMORY[0x19A8E4C40](v42, a2);
    v20 = sub_19774F060();

    if (v20)
    {
      v21 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_19764AD60(0, *(v41 + 2) + 1, 1);
        v21 = v41;
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        sub_19764AD60((v22 > 1), v23 + 1, 1);
        v21 = v41;
      }

      ++v14;
      *(v21 + 2) = v23 + 1;
      v41 = v21;
      v24 = &v21[16 * v23];
      *(v24 + 4) = v19;
      *(v24 + 5) = v18;
      v16 = v13 + 40;
      goto LABEL_3;
    }

    v17 += 2;
    ++v14;
  }

  v29 = v41;
  v30 = *(v41 + 2);

  if (!v30)
  {

    v29 = sub_1976C0CB0(v40);
    v36 = 1;
LABEL_22:
    sub_1976C1B74();
    swift_allocError();
    *v37 = v42;
    *(v37 + 8) = a2;
    *(v37 + 16) = v29;
    *(v37 + 24) = v36;
    swift_willThrow();
    return;
  }

  if (v30 != 1)
  {
    v36 = 2;
    goto LABEL_22;
  }

  if (!*(v41 + 2))
  {
    goto LABEL_24;
  }

  v32 = *(v41 + 4);
  v31 = *(v41 + 5);

  v33 = sub_19764ECD4(v32, v31, v40);
  v35 = v34;

  if ((v35 & 1) == 0)
  {

    v26 = v38;
    v27 = v33;
    v28 = v39;
    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
}

unint64_t sub_1976D0C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t *a5@<X8>)
{
  swift_bridgeObjectRetain_n();
  v44 = a1;
  v10 = sub_19764ECD4(a1, a2, a3);
  if ((v11 & 1) == 0)
  {
    v26 = v10;
    swift_bridgeObjectRelease_n();
    v27 = a5;
    v28 = v26;
    v29 = a4;
    return sub_1976D11F0(v28, v29, v27);
  }

  v39 = a5;
  v40 = a4;

  v42 = a3;
  result = sub_19764ED9C(v12);
  v14 = result;
  v15 = 0;
  v16 = *(result + 16);
  v17 = result + 40;
  v43 = MEMORY[0x1E69E7CC0];
  v41 = result + 40;
LABEL_3:
  v18 = (v17 + 16 * v15);
  while (v16 != v15)
  {
    if (v15 >= *(v14 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v20 = *(v18 - 1);
    v19 = *v18;

    MEMORY[0x19A8E4C40](v44, a2);
    v21 = sub_19774F060();

    if (v21)
    {
      v22 = v43;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_19764AD60(0, *(v43 + 2) + 1, 1);
        v22 = v43;
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        result = sub_19764AD60((v23 > 1), v24 + 1, 1);
        v22 = v43;
      }

      ++v15;
      *(v22 + 2) = v24 + 1;
      v43 = v22;
      v25 = &v22[16 * v24];
      *(v25 + 4) = v20;
      *(v25 + 5) = v19;
      v17 = v41;
      goto LABEL_3;
    }

    v18 += 2;
    ++v15;
  }

  v30 = v43;
  v31 = *(v43 + 2);

  if (!v31)
  {

    v30 = sub_1976C0CB0(v42);
    v37 = 1;
LABEL_22:
    sub_1976C1B74();
    swift_allocError();
    *v38 = v44;
    *(v38 + 8) = a2;
    *(v38 + 16) = v30;
    *(v38 + 24) = v37;
    return swift_willThrow();
  }

  if (v31 != 1)
  {
    v37 = 2;
    goto LABEL_22;
  }

  if (!*(v43 + 2))
  {
    goto LABEL_24;
  }

  v33 = *(v43 + 4);
  v32 = *(v43 + 5);

  v34 = sub_19764ECD4(v33, v32, v42);
  v36 = v35;

  if ((v36 & 1) == 0)
  {

    v27 = v39;
    v28 = v34;
    v29 = v40;
    return sub_1976D11F0(v28, v29, v27);
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1976D0ED0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = v3;
  v8 = v4;
  sub_19765079C(a3 + 40 * result + 32, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
  if (swift_dynamicCast())
  {
    return v5 != 0;
  }

  else
  {
    return 2;
  }
}

unint64_t sub_1976D0F60(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(a3 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v9 = v3;
  v10 = v4;
  sub_19765079C(a3 + 40 * result + 32, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
  v5 = swift_dynamicCast();
  v6 = v7;
  if (!v5)
  {
    return 0;
  }

  return v6;
}

unint64_t sub_1976D0FF4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = v3;
  v8 = v4;
  sub_19765079C(a3 + 40 * result + 32, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void sub_1976D107C(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = a3;
  if (*(a2 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  sub_19765079C(a2 + 40 * a1 + 32, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
  if (!swift_dynamicCast())
  {
    v7 = 1;
    goto LABEL_8;
  }

  if (qword_1EAF3FFB8 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  swift_beginAccess();
  v4 = qword_1EAF44038;
  v5 = sub_19774EF20();
  v6 = [v4 dateFromString_];

  if (v6)
  {
    sub_19774EB50();

    v7 = 0;
LABEL_8:
    v8 = sub_19774EB80();
    __swift_storeEnumTagSinglePayload(v3, v7, 1, v8);
    return;
  }

  __break(1u);
}

unint64_t sub_1976D11F0@<X0>(unint64_t result@<X0>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_19765079C(a2 + 40 * result + 32, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
  if (swift_dynamicCast())
  {
    result = sub_197652D20(v5);
  }

  else
  {
    result = 0;
    v4 = 0xF000000000000000;
  }

  *a3 = result;
  a3[1] = v4;
  return result;
}

void sub_1976D12E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_40();
  a29 = v31;
  a30 = v32;
  v42 = v33;
  v41 = v34;
  v40 = v35;
  type metadata accessor for SQLiteEncoder();
  v36 = OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_2_22(v36, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_29();
  sub_1976D6334(v37, v38);
  OUTLINED_FUNCTION_13_7();

  OUTLINED_FUNCTION_5_15();
  if (v30)
  {

    __swift_destroy_boxed_opaque_existential_0(&a14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&a14);
    OUTLINED_FUNCTION_7_13();
    a20 = v36[2];

    sub_1976B5E98(v39);
    sub_1976BCFF8(v40, a20, v41, v42);
    OUTLINED_FUNCTION_8_11();
  }

  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_39();
}

void sub_1976D13E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v25 = a4;
    v26 = a5;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1976B4CE0(0, v6, 0);
    v10 = v32;
    v11 = a1 + 32;
    while (1)
    {
      v29 = v6;
      v28 = v11;
      sub_19764E1F4(v11, v31);
      v12 = type metadata accessor for SQLiteEncoder();
      v13 = swift_allocObject();
      v13[2] = v7;
      v13[3] = v7;
      v13[4] = a2;
      __swift_project_boxed_opaque_existential_0Tm(v31, v31[3]);
      v30[3] = v12;
      OUTLINED_FUNCTION_1_29();
      v30[4] = sub_1976D6334(&qword_1EAF40268, v14);
      v30[0] = v13;

      sub_19774EE70();
      if (v5)
      {

        __swift_destroy_boxed_opaque_existential_0(v30);
        __swift_destroy_boxed_opaque_existential_0(v31);

        return;
      }

      __swift_destroy_boxed_opaque_existential_0(v30);
      swift_beginAccess();
      v15 = v13[2];
      v16 = *(a3 + 16);
      v17 = *(v15 + 16);
      if (__OFADD__(v17, v16))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v15 + 24) >> 1, v18 < v17 + v16))
      {
        sub_1976B33B0();
        v15 = v19;
        v18 = *(v19 + 24) >> 1;
      }

      if (v16)
      {
        if (v18 - *(v15 + 16) < v16)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        v20 = *(v15 + 16);
        v21 = __OFADD__(v20, v16);
        v22 = v20 + v16;
        if (v21)
        {
          goto LABEL_22;
        }

        *(v15 + 16) = v22;
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0(v31);
      v32 = v10;
      v24 = *(v10 + 16);
      v23 = *(v10 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1976B4CE0(v23 > 1, v24 + 1, 1);
        v10 = v32;
      }

      *(v10 + 16) = v24 + 1;
      *(v10 + 8 * v24 + 32) = v15;
      v11 = v28 + 40;
      v6 = v29 - 1;
      v7 = MEMORY[0x1E69E7CC0];
      if (v29 == 1)
      {
        a5 = v26;
        a4 = v25;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_19:
    sub_1976BCFFC(v10, a4, a5);
  }
}

void sub_1976D16D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_40();
  a29 = v31;
  a30 = v32;
  OUTLINED_FUNCTION_15_10();
  v33 = OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_2_22(v33, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_29();
  sub_1976D6334(v34, v35);
  OUTLINED_FUNCTION_13_7();

  OUTLINED_FUNCTION_5_15();
  if (v30)
  {

    __swift_destroy_boxed_opaque_existential_0(&a14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&a14);
    OUTLINED_FUNCTION_7_13();
    a20 = v33[2];

    sub_1976B5E98(v36);
    sub_1976BDB38();
    OUTLINED_FUNCTION_8_11();
  }

  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_39();
}

void sub_1976D17EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_40();
  a29 = v31;
  a30 = v32;
  v38 = v33;
  OUTLINED_FUNCTION_15_10();
  v34 = OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_2_22(v34, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_29();
  sub_1976D6334(v35, v36);
  OUTLINED_FUNCTION_13_7();

  OUTLINED_FUNCTION_5_15();
  if (v30)
  {

    __swift_destroy_boxed_opaque_existential_0(&a14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&a14);
    OUTLINED_FUNCTION_7_13();
    a20 = v34[2];

    sub_1976B5E98(v37);
    v38(a20, a10, a11);
    OUTLINED_FUNCTION_8_11();
  }

  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_39();
}

uint64_t sub_1976D18D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SQLiteDecoder();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v7;
  v6[5] = a1;
  OUTLINED_FUNCTION_3_15();
  sub_1976D6334(v8, v9);

  return sub_19774F1D0();
}

uint64_t sub_1976D19C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for SQLiteDecoder();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC0];
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v10;
  v9[5] = a1;
  a4[3] = v8;
  OUTLINED_FUNCTION_3_15();
  a4[4] = sub_1976D6334(v11, v12);
  *a4 = v9;
}

uint64_t sub_1976D1A80(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(result + 16) = a1;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_1976D1B74()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  sub_19774F960();
  v4 = sub_1976497AC(34, 0xE100000000000000);
  v6 = v5;

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F780, &unk_19775A8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_19775A780;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0;
  swift_beginAccess();
  sub_1976B32C8();
  v9 = *(*(v1 + 16) + 16);
  sub_1976B3374(v9);
  v10 = *(v1 + 16);
  *(v10 + 16) = v9 + 1;
  v11 = (v10 + 80 * v9);
  v11[4] = v4;
  v11[5] = v6;
  v11[6] = MEMORY[0x1E69E7CC0];
  v11[7] = v7;
  v11[8] = &off_1F0BBB748;
  v11[9] = 63;
  v11[10] = 0xE100000000000000;
  v11[11] = v8;
  v11[12] = v7;
  v11[13] = &off_1F0BBB748;
  *(v1 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_1976D1D2C(char a1)
{
  v3 = v1[2];
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  sub_19774F960();
  v6 = sub_1976497AC(34, 0xE100000000000000);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFF8, &qword_19775E448);
  swift_beginAccess();
  sub_1976B32C8();
  v10 = *(*(v3 + 16) + 16);
  sub_1976B3374(v10);
  v11 = *(v3 + 16);
  *(v11 + 16) = v10 + 1;
  v12 = v11 + 80 * v10;
  *(v12 + 32) = v6;
  *(v12 + 40) = v8;
  *(v12 + 48) = MEMORY[0x1E69E7CC0];
  *(v12 + 56) = v9;
  *(v12 + 64) = &off_1F0BBB748;
  v13 = MEMORY[0x1E69E6370];
  *(v12 + 72) = a1;
  *(v12 + 96) = v13;
  *(v12 + 104) = &off_1F0BBA890;
  *(v3 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_1976D1E74(float a1)
{
  v3 = v1[2];
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  sub_19774F960();
  v6 = sub_1976497AC(34, 0xE100000000000000);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF403A0, &qword_19775FC10);
  swift_beginAccess();
  sub_1976B32C8();
  v10 = *(*(v3 + 16) + 16);
  sub_1976B3374(v10);
  v11 = *(v3 + 16);
  *(v11 + 16) = v10 + 1;
  v12 = v11 + 80 * v10;
  *(v12 + 32) = v6;
  *(v12 + 40) = v8;
  *(v12 + 48) = MEMORY[0x1E69E7CC0];
  *(v12 + 56) = v9;
  *(v12 + 64) = &off_1F0BBB748;
  v13 = MEMORY[0x1E69E63B0];
  *(v12 + 72) = a1;
  *(v12 + 96) = v13;
  *(v12 + 104) = &off_1F0BBA820;
  *(v3 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_1976D1FC8(double a1)
{
  v3 = v1[2];
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  sub_19774F960();
  v6 = sub_1976497AC(34, 0xE100000000000000);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF403A0, &qword_19775FC10);
  swift_beginAccess();
  sub_1976B32C8();
  v10 = *(*(v3 + 16) + 16);
  sub_1976B3374(v10);
  v11 = *(v3 + 16);
  *(v11 + 16) = v10 + 1;
  v12 = v11 + 80 * v10;
  *(v12 + 32) = v6;
  *(v12 + 40) = v8;
  *(v12 + 48) = MEMORY[0x1E69E7CC0];
  *(v12 + 56) = v9;
  *(v12 + 64) = &off_1F0BBB748;
  v13 = MEMORY[0x1E69E63B0];
  *(v12 + 72) = a1;
  *(v12 + 96) = v13;
  *(v12 + 104) = &off_1F0BBA820;
  *(v3 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_1976D2118(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = *(*v2 + 80);
  v7 = *(*v2 + 88);
  sub_19774F960();
  v8 = sub_1976497AC(34, 0xE100000000000000);
  v10 = v9;

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  swift_beginAccess();

  sub_1976B32C8();
  v12 = *(*(v5 + 16) + 16);
  sub_1976B3374(v12);
  v13 = *(v5 + 16);
  *(v13 + 16) = v12 + 1;
  v14 = (v13 + 80 * v12);
  v14[4] = v8;
  v14[5] = v10;
  v14[6] = MEMORY[0x1E69E7CC0];
  v14[7] = v11;
  v14[8] = &off_1F0BBB748;
  v14[9] = a1;
  v15 = MEMORY[0x1E69E6158];
  v14[10] = a2;
  v14[12] = v15;
  v14[13] = &off_1F0BBA860;
  *(v5 + 16) = v13;
  return swift_endAccess();
}

uint64_t sub_1976D2270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v115 = a2;
  v108 = a4;
  v119 = a1;
  v114 = *v4;
  v6 = sub_19774EF90();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v106[1] = v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F8, &qword_19775AA70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v110 = v106 - v11;
  v113 = sub_19774EBF0();
  v109 = *(v113 - 8);
  v12 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v107 = v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F8F0, &qword_19775DA60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v106 - v16;
  v18 = sub_19774EB80();
  v112 = *(v18 - 8);
  v19 = *(v112 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v111 = v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a3 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v20);
  v26 = v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = v106 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = *(v22 + 16);
  v30(v106 - v31, v119, a3);
  if (swift_dynamicCast())
  {
    v32 = v117;
    v33 = v118;
    v34 = v4[2];
    v35 = *(v114 + 80);
    v36 = *(v114 + 88);
    sub_19774F960();
    v37 = sub_1976497AC(34, 0xE100000000000000);
    v39 = v38;

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F960, &unk_19775FC00);
    swift_beginAccess();
    sub_1976B32C8();
    v41 = *(*(v34 + 16) + 16);
    sub_1976B3374(v41);
    v42 = *(v34 + 16);
    *(v42 + 16) = v41 + 1;
    v43 = (v42 + 80 * v41);
    v43[4] = v37;
    v43[5] = v39;
    v43[6] = MEMORY[0x1E69E7CC0];
    v43[7] = v40;
    v43[8] = &off_1F0BBB748;
    v43[9] = v32;
    v43[10] = v33;
    v43[12] = MEMORY[0x1E6969080];
    v43[13] = &off_1F0BBBA70;
    *(v34 + 16) = v42;
    return swift_endAccess();
  }

  else
  {
    v45 = v4;
    v30(v29, v119, a3);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
      v47 = v111;
      v46 = v112;
      (*(v112 + 32))(v111, v17, v18);
      v48 = v4[2];
      v49 = *(v114 + 80);
      v50 = *(v114 + 88);
      v119 = v18;
      sub_19774F960();
      v51 = sub_1976497AC(34, 0xE100000000000000);
      v115 = v52;

      if (qword_1EAF3FFB8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v53 = qword_1EAF44038;
      v54 = sub_19774EB30();
      v55 = [v53 stringFromDate_];

      v56 = sub_19774EF50();
      v58 = v57;

      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
      swift_beginAccess();
      sub_1976B32C8();
      v60 = *(*(v48 + 16) + 16);
      sub_1976B3374(v60);
      v61 = *(v48 + 16);
      *(v61 + 16) = v60 + 1;
      v62 = (v61 + 80 * v60);
      v63 = v115;
      v62[4] = v51;
      v62[5] = v63;
      v62[6] = MEMORY[0x1E69E7CC0];
      v62[7] = v59;
      v62[8] = &off_1F0BBB748;
      v62[9] = v56;
      v64 = MEMORY[0x1E69E6158];
      v62[10] = v58;
      v62[12] = v64;
      v62[13] = &off_1F0BBA860;
      *(v48 + 16) = v61;
      swift_endAccess();
      return (*(v46 + 8))(v47, v119);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
      sub_19764CAE4(v17, &qword_1EAF3F8F0, &qword_19775DA60);
      v30(v26, v119, a3);
      v65 = v110;
      v66 = v113;
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v65, 0, 1, v66);
        v67 = v109;
        v68 = v107;
        (*(v109 + 32))(v107, v65, v66);
        v69 = v45[2];
        v70 = *(v114 + 80);
        v71 = *(v114 + 88);
        sub_19774F960();
        v119 = sub_1976497AC(34, 0xE100000000000000);
        v73 = v72;

        v74 = sub_19774EBA0();
        v76 = v75;
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
        swift_beginAccess();
        sub_1976B32C8();
        v78 = *(*(v69 + 16) + 16);
        sub_1976B3374(v78);
        v79 = *(v69 + 16);
        *(v79 + 16) = v78 + 1;
        v80 = (v79 + 80 * v78);
        v80[4] = v119;
        v80[5] = v73;
        v80[6] = MEMORY[0x1E69E7CC0];
        v80[7] = v77;
        v80[8] = &off_1F0BBB748;
        v80[9] = v74;
        v81 = MEMORY[0x1E69E6158];
        v80[10] = v76;
        v80[12] = v81;
        v80[13] = &off_1F0BBA860;
        *(v69 + 16) = v79;
        swift_endAccess();
        return (*(v67 + 8))(v68, v113);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v65, 1, 1, v66);
        sub_19764CAE4(v65, &qword_1EAF3F8F8, &qword_19775AA70);
        v82 = sub_19774E8C0();
        v83 = *(v82 + 48);
        v84 = *(v82 + 52);
        swift_allocObject();
        sub_19774E8B0();
        v85 = v116;
        v86 = sub_19774E8A0();
        v88 = v87;

        if (!v85)
        {
          sub_19774EF80();
          v89 = sub_19774EF70();
          v91 = v90;
          v92 = v45[2];
          v93 = *(v114 + 80);
          v94 = *(v114 + 88);
          sub_19774F960();
          v119 = sub_1976497AC(34, 0xE100000000000000);
          v116 = v95;

          v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F780, &unk_19775A8E0);
          v115 = sub_1976CFBB8(v89, v91);
          v98 = v97;
          v100 = v99;
          swift_beginAccess();
          sub_1976B32C8();
          v101 = *(*(v92 + 16) + 16);
          sub_1976B3374(v101);
          v102 = *(v92 + 16);
          *(v102 + 16) = v101 + 1;
          v103 = (v102 + 80 * v101);
          v104 = MEMORY[0x1E69E7CC0];
          v103[4] = v119;
          v103[5] = v116;
          v103[6] = v104;
          v103[7] = v96;
          v105 = v115;
          v103[8] = &off_1F0BBB748;
          v103[9] = v105;
          v103[10] = v98;
          v103[11] = v100;
          v103[12] = v96;
          v103[13] = &off_1F0BBB748;
          *(v92 + 16) = v102;
          swift_endAccess();
          return sub_197652DCC(v86, v88);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1976D2BE0(char a1)
{
  v3 = sub_19774F630();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40390, &qword_19775FBE8) + 48);
  *(v5 + 24) = MEMORY[0x1E69E7230];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_19774F600();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B30], v3);
  return swift_willThrow();
}

uint64_t sub_1976D2CCC(__int16 a1)
{
  v3 = sub_19774F630();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40390, &qword_19775FBE8) + 48);
  *(v5 + 24) = MEMORY[0x1E69E7290];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_19774F600();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B30], v3);
  return swift_willThrow();
}

uint64_t sub_1976D2DB8(int a1)
{
  v3 = sub_19774F630();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40390, &qword_19775FBE8) + 48);
  *(v5 + 24) = MEMORY[0x1E69E72F0];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_19774F600();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B30], v3);
  return swift_willThrow();
}

uint64_t sub_1976D2EDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = v6[2];
  v13 = *(*v6 + 80);
  v14 = *(*v6 + 88);
  sub_19774F960();
  v15 = OUTLINED_FUNCTION_12_11();
  v17 = v16;

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_beginAccess();
  sub_1976B32C8();
  v19 = *(*(v12 + 16) + 16);
  sub_1976B3374(v19);
  v20 = *(v12 + 16);
  *(v20 + 16) = v19 + 1;
  v21 = (v20 + 80 * v19);
  v21[4] = v15;
  v21[5] = v17;
  v21[6] = MEMORY[0x1E69E7CC0];
  v21[7] = v18;
  v21[8] = &off_1F0BBB748;
  v21[9] = a1;
  v21[12] = a5;
  v21[13] = a6;
  *(v12 + 16) = v20;
  return swift_endAccess();
}

uint64_t sub_1976D3004(uint64_t a1)
{
  v3 = sub_19774F630();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40390, &qword_19775FBE8) + 48);
  v5[3] = MEMORY[0x1E69E6810];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_19774F600();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B30], v3);
  return swift_willThrow();
}

uint64_t sub_1976D30F0(char a1)
{
  v3 = sub_19774F630();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40390, &qword_19775FBE8) + 48);
  *(v5 + 24) = MEMORY[0x1E69E7508];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_19774F600();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B30], v3);
  return swift_willThrow();
}

uint64_t sub_1976D31DC(__int16 a1)
{
  v3 = sub_19774F630();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40390, &qword_19775FBE8) + 48);
  *(v5 + 24) = MEMORY[0x1E69E75F8];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_19774F600();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B30], v3);
  return swift_willThrow();
}

uint64_t sub_1976D32C8(int a1)
{
  v3 = sub_19774F630();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40390, &qword_19775FBE8) + 48);
  *(v5 + 24) = MEMORY[0x1E69E7668];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_19774F600();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B30], v3);
  return swift_willThrow();
}

uint64_t sub_1976D33B4(uint64_t a1)
{
  v3 = sub_19774F630();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40390, &qword_19775FBE8) + 48);
  v5[3] = MEMORY[0x1E69E76D8];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_19774F600();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B30], v3);
  return swift_willThrow();
}

uint64_t sub_1976D3558()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1976D3580()
{
  v0 = sub_1976D3558();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1976D3824()
{
  OUTLINED_FUNCTION_16_8();
  v4 = v3;
  v6 = v5;
  v8 = *(v7 + 80);
  v9 = *(v7 + 88);
  v10 = type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return v0(v6, v4, v2, v10, v1);
}

uint64_t sub_1976D38AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 80);
  v6 = *(a5 + 88);
  type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return sub_19774F860();
}

uint64_t sub_1976D391C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  v4 = *(a3 + 88);
  type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return sub_19774F840();
}

uint64_t sub_1976D3974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  v5 = *(a4 + 88);
  type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return sub_19774F830();
}

uint64_t sub_1976D3B94()
{
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_17_11(v1, v2, v3);
  OUTLINED_FUNCTION_9_11();
  return v0();
}

uint64_t sub_1976D3C08()
{
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_17_11(v1, v2, v3);
  OUTLINED_FUNCTION_9_11();
  return v0();
}

uint64_t sub_1976D3C7C()
{
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_17_11(v1, v2, v3);
  OUTLINED_FUNCTION_9_11();
  return v0();
}

uint64_t sub_1976D3CF8()
{
  OUTLINED_FUNCTION_16_8();
  v4 = v3;
  v6 = v5;
  v8 = *(v7 + 80);
  v9 = *(v7 + 88);
  v10 = type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return v0(v6, v4 & 1, v2, v10, v1);
}

uint64_t sub_1976D3D88(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v13 = *(a5 + 80);
  v14 = *(a5 + 88);
  v15 = type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return a7(a1, a2, a3 & 1, a4, v15, a6);
}

uint64_t sub_1976D3E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 80);
  v6 = *(a5 + 88);
  type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return sub_19774F850();
}

uint64_t sub_1976D3FD0()
{
  type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();

  sub_1976D1A80(v0);
  swift_getWitnessTable();
  return sub_19774F7A0();
}

void *sub_1976D4058()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_1976D4088()
{
  v0 = sub_1976D4058();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void *sub_1976D4124(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = MEMORY[0x1E69E7CC0];
  result[3] = a1;
  result[4] = a2;
  return result;
}

uint64_t sub_1976D4170()
{
  v4 = v0[3];
  v3 = *(*v0 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40380, &qword_19775FBE0);
  sub_1976D6438();
  v1 = sub_19774F0D0();

  return v1;
}

uint64_t sub_1976D423C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_19774F970();
}

uint64_t sub_1976D42A0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  v5 = sub_19774F960();
  LOBYTE(v1) = sub_1976C0BE4(v5, v6, v1, v2);

  return v1 & 1;
}

uint64_t sub_1976D4350()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  sub_19774F960();
  v5 = sub_1976497AC(34, 0xE100000000000000);
  v7 = v6;

  v8 = sub_1976CFC44(v5, v7, MEMORY[0x1E69E7CC0], v1, v2);

  return v8 & 1;
}

uint64_t sub_1976D441C()
{
  v1 = sub_19774F610();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40378, &qword_19775FBD8) + 48);
  *v3 = MEMORY[0x1E69E7230];
  v5 = *(v0 + 16);

  sub_19774F600();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6AF8], v1);
  return swift_willThrow();
}

uint64_t sub_1976D4500()
{
  v1 = sub_19774F610();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40378, &qword_19775FBD8) + 48);
  *v3 = MEMORY[0x1E69E7290];
  v5 = *(v0 + 16);

  sub_19774F600();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6AF8], v1);
  return swift_willThrow();
}

uint64_t sub_1976D45E4()
{
  v1 = sub_19774F610();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40378, &qword_19775FBD8) + 48);
  *v3 = MEMORY[0x1E69E72F0];
  v5 = *(v0 + 16);

  sub_19774F600();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6AF8], v1);
  return swift_willThrow();
}

uint64_t sub_1976D46C8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  sub_19774F960();
  v5 = OUTLINED_FUNCTION_12_11();
  v7 = v6;

  v8 = sub_1976CFD14(v5, v7);

  return v8;
}

uint64_t sub_1976D4780()
{
  v1 = sub_19774F610();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40378, &qword_19775FBD8) + 48);
  *v3 = MEMORY[0x1E69E6810];
  v5 = *(v0 + 16);

  sub_19774F600();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6AF8], v1);
  return swift_willThrow();
}

uint64_t sub_1976D4864()
{
  v1 = sub_19774F610();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40378, &qword_19775FBD8) + 48);
  *v3 = MEMORY[0x1E69E7508];
  v5 = *(v0 + 16);

  sub_19774F600();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6AF8], v1);
  return swift_willThrow();
}

uint64_t sub_1976D4948()
{
  v1 = sub_19774F610();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40378, &qword_19775FBD8) + 48);
  *v3 = MEMORY[0x1E69E75F8];
  v5 = *(v0 + 16);

  sub_19774F600();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6AF8], v1);
  return swift_willThrow();
}

uint64_t sub_1976D4A2C()
{
  v1 = sub_19774F610();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40378, &qword_19775FBD8) + 48);
  *v3 = MEMORY[0x1E69E7668];
  v5 = *(v0 + 16);

  sub_19774F600();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6AF8], v1);
  return swift_willThrow();
}

uint64_t sub_1976D4B10()
{
  v1 = sub_19774F610();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40378, &qword_19775FBD8) + 48);
  *v3 = MEMORY[0x1E69E76D8];
  v5 = *(v0 + 16);

  sub_19774F600();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6AF8], v1);
  return swift_willThrow();
}

uint64_t sub_1976D4BF4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  sub_19774F960();
  v5 = sub_1976497AC(34, 0xE100000000000000);
  v7 = v6;

  sub_1976CFDD8(v5, v7);
}

double sub_1976D4CD8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  sub_19774F960();
  v5 = sub_1976497AC(34, 0xE100000000000000);
  v7 = v6;

  sub_1976CFDD8(v5, v7);
  v9 = v8;

  return v9;
}

uint64_t sub_1976D4DAC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  sub_19774F960();
  v5 = sub_1976497AC(34, 0xE100000000000000);
  v7 = v6;

  v8 = sub_1976CFEA8(v5, v7, MEMORY[0x1E69E7CC0], v1, v2);

  return v8;
}

uint64_t sub_1976D4E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v57[3] = a3;
  v9 = *v4;
  v10 = sub_19774EF90();
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v58 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_19774EB80();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v20 = v57 - v19;
  if (a1 == MEMORY[0x1E6969080])
  {
    v39 = v4[3];
    v40 = v4[4];
    v41 = *(v9 + 80);
    v42 = *(v9 + 88);
    sub_19774F960();
    v43 = sub_1976497AC(34, 0xE100000000000000);
    v45 = v44;

    v46 = v64;
    sub_1976D0C00(v43, v45, v39, v40, &v62);
    if (v46)
    {
      return swift_bridgeObjectRelease_n();
    }

    v49 = v63;
    if (v63 >> 60 == 15)
    {
      sub_19764EEB4(v62, v63);
      sub_1976C1B74();
      swift_allocError();
      *v50 = v43;
      *(v50 + 8) = v45;
      *(v50 + 16) = 0;
      *(v50 + 24) = 3;
      return swift_willThrow();
    }

    v63 = v49;
    return swift_dynamicCast();
  }

  v57[0] = v18;
  v57[1] = a4;
  v57[2] = a2;
  v21 = v4[4];
  v61 = v4[3];
  v22 = *(v9 + 80);
  v23 = *(v9 + 88);
  sub_19774F960();
  v24 = sub_1976497AC(34, 0xE100000000000000);
  v26 = v25;

  if (v13 == a1)
  {
    v48 = v64;
    sub_1976CFF78(v24, v26, v61, v21, v20);
    if (v48)
    {
    }

    (*(v57[0] + 32))(v17, v20, v13);
    return swift_dynamicCast();
  }

  v27 = v64;
  sub_1976D0674(v24, v26, MEMORY[0x1E69E7CC0], v61, v21);
  if (v27)
  {
  }

  v29 = v28;

  if (!v29)
  {
    v34 = sub_19774F610();
    swift_allocError();
    v36 = v51;
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40378, &qword_19775FBD8) + 48);
    *v36 = a1;
    v53 = v5[2];

    sub_19774F600();
    v38 = MEMORY[0x1E69E6AF8];
    goto LABEL_17;
  }

  v30 = v58;
  sub_19774EF80();
  v31 = sub_19774EF60();
  v33 = v32;

  (*(v59 + 8))(v30, v60);
  if (v33 >> 60 == 15)
  {
    v34 = sub_19774F610();
    swift_allocError();
    v36 = v35;
    v37 = v5[2];

    sub_19774F600();
    v38 = MEMORY[0x1E69E6B00];
LABEL_17:
    (*(*(v34 - 8) + 104))(v36, *v38, v34);
    return swift_willThrow();
  }

  v54 = sub_19774E890();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  sub_19774E880();
  sub_19774E870();

  return sub_19764EEB4(v31, v33);
}

uint64_t sub_1976D53E4()
{
  v1 = sub_19774F610();
  swift_allocError();
  v3 = v2;
  v4 = *(v0 + 16);

  sub_19774F600();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6B00], v1);
  return swift_willThrow();
}

uint64_t sub_1976D54A4()
{
  v1 = sub_19774F610();
  swift_allocError();
  v3 = v2;
  v4 = *(v0 + 16);

  sub_19774F600();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6B00], v1);
  return swift_willThrow();
}

uint64_t sub_1976D5564()
{
  v1 = sub_19774F610();
  swift_allocError();
  v3 = v2;
  v4 = *(v0 + 16);

  sub_19774F600();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6B00], v1);
  return swift_willThrow();
}

uint64_t sub_1976D5624()
{
  v1 = sub_19774F610();
  swift_allocError();
  v3 = v2;
  v4 = *(v0 + 16);

  sub_19774F600();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6B00], v1);
  return swift_willThrow();
}

void *sub_1976D56E4()
{
  v1 = v0[2];

  v3 = v0[3];
  v2 = v0[4];

  return v0;
}

uint64_t sub_1976D571C()
{
  v0 = sub_1976D56E4();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1976D5A2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  return sub_19774F810();
}

uint64_t sub_1976D5A80(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  return sub_19774F800();
}

uint64_t sub_1976D5D6C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_0_31(a1, a2);
  v4 = v2(v3);
  return v4 | ((HIDWORD(v4) & 1) << 32);
}

uint64_t sub_1976D5DE4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_0_31(a1, a2);
  result = v2(v4);
  if (v3)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1976D5E4C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_0_31(a1, a2);
  result = v2(v4);
  if (v3)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1976D5E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 80);
  v6 = *(a5 + 88);
  type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  return sub_19774F820();
}

uint64_t sub_1976D5F9C()
{
  type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  sub_1976D4124(*(v0 + 16), *(v0 + 24));

  swift_getWitnessTable();
  return sub_19774F790();
}

uint64_t sub_1976D6048()
{
  v1 = sub_19774F610();
  swift_allocError();
  v3 = v2;
  v4 = *(v0 + 32);

  sub_19774F600();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6B00], v1);
  return swift_willThrow();
}

uint64_t sub_1976D6108()
{
  v1 = sub_19774F610();
  swift_allocError();
  v3 = v2;
  v4 = *(v0 + 32);

  sub_19774F600();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69E6B00], v1);
  return swift_willThrow();
}

void *sub_1976D61C8()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t sub_1976D6208()
{
  v0 = sub_1976D61C8();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1976D6334(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1976D641C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1976D423C(a1);
}

unint64_t sub_1976D6438()
{
  result = qword_1EAF40388;
  if (!qword_1EAF40388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF40380, &qword_19775FBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF40388);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_11()
{
}

void sub_1976D8B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCATClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!DialogEngineLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __DialogEngineLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E74B0808;
    v9 = 0;
    DialogEngineLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!DialogEngineLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DialogEngineLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"LNBasicDialog+CATSupport.m" lineNumber:17 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CAT");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCATClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"LNBasicDialog+CATSupport.m" lineNumber:18 description:{@"Unable to find class %s", "CAT"}];

LABEL_10:
    __break(1u);
  }

  getCATClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __DialogEngineLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DialogEngineLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t LNCopyBundleIdentifierAndTeamFromSecTaskRef(__SecTask *a1, uint64_t *a2)
{
  v4 = SecTaskCopyValueForEntitlement(a1, @"application-identifier", 0);
  if (v4)
  {
    v5 = v4;
    v6 = CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();
    CFRelease(v5);
    return v6;
  }

  else
  {
    result = SecTaskCopySigningIdentifier(a1, 0);
    if (result)
    {
      *a2 = result;
      return 1;
    }
  }

  return result;
}

__CFString *LNTranscriptActionSourceAsString(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return @"app";
  }

  else
  {
    return off_1E74B0848[a1];
  }
}

__CFString *LNTranscriptActionKindAsString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"userShortcut";
  }

  if (a1 == 2)
  {
    return @"appShortcut";
  }

  else
  {
    return v1;
  }
}

id LNConnectionHostXPCListenerEndpointVendingInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BEF1C8];
  LNXPCInterfaceByUpdatingWithXPCListenerEndpointVendingInterface(v0);

  return v0;
}

void sub_1976DD880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCATClass_block_invoke_691(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!DialogEngineLibraryCore_frameworkLibrary_692)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __DialogEngineLibraryCore_block_invoke_693;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E74B08C8;
    v9 = 0;
    DialogEngineLibraryCore_frameworkLibrary_692 = _sl_dlopen();
  }

  if (!DialogEngineLibraryCore_frameworkLibrary_692)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DialogEngineLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"LNSpeakableStringDialog+CATSupport.m" lineNumber:16 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CAT");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCATClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"LNSpeakableStringDialog+CATSupport.m" lineNumber:17 description:{@"Unable to find class %s", "CAT"}];

LABEL_10:
    __break(1u);
  }

  getCATClass_softClass_690 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __DialogEngineLibraryCore_block_invoke_693(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DialogEngineLibraryCore_frameworkLibrary_692 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id LNViewLocationAsString(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 2);
  v4 = *(a1 + 5);
  if (v3 == 0.0 && v4 == 0.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.f, %.f:%.f, %.f", v1, v2, a1[3], a1[4], v7, v8];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.f, %.f, %.f:%.f, %.f, %.f", v1, v2, *&v3, a1[3], a1[4], *&v4];
  }
  v5 = ;

  return v5;
}

void sub_1976E1D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __LNTranscriptXPCPrivilegedInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BEF648];
  v1 = LNTranscriptXPCPrivilegedInterface_interface;
  LNTranscriptXPCPrivilegedInterface_interface = v0;

  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_donateWithActionRecord_reply_ argumentIndex:0 ofReply:0];
  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_donateWithActionRecord_reply_ argumentIndex:0 ofReply:1];
  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_donateActionRecordData_writeImmediately_reply_ argumentIndex:0 ofReply:1];
  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_donateActionRecordData_bundleIdentifier_timestamp_writeImmediately_reply_ argumentIndex:0 ofReply:1];
  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_requestReadAccessWithReply_ argumentIndex:0 ofReply:1];
  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_requestReadAccessWithReply_ argumentIndex:1 ofReply:1];
  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_deleteRecordsWithMatchingPredicate_reply_ argumentIndex:0 ofReply:0];
  v2 = LNTranscriptXPCPrivilegedInterface_interface;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_deleteRecordsWithMatchingPredicate_reply_ argumentIndex:0 ofReply:1];

  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_deleteRecordsWithMatchingPredicate_reply_ argumentIndex:1 ofReply:1];
  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_deleteAllRecordsWithReply_ argumentIndex:0 ofReply:1];
  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_requestReadAccessForStream_reply_ argumentIndex:0 ofReply:0];
  [LNTranscriptXPCPrivilegedInterface_interface setClass:objc_opt_class() forSelector:sel_requestReadAccessForStream_reply_ argumentIndex:0 ofReply:1];
  v6 = LNTranscriptXPCPrivilegedInterface_interface;
  v7 = objc_opt_class();

  return [v6 setClass:v7 forSelector:sel_requestReadAccessForStream_reply_ argumentIndex:1 ofReply:1];
}

id LNDaemonConstraintValidationXPCInterface()
{
  if (LNDaemonConstraintValidationXPCInterface_once != -1)
  {
    dispatch_once(&LNDaemonConstraintValidationXPCInterface_once, &__block_literal_global_1716);
  }

  v1 = LNDaemonConstraintValidationXPCInterface_interface;

  return v1;
}

uint64_t __LNDaemonConstraintValidationXPCInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BF4F88];
  v1 = LNDaemonConstraintValidationXPCInterface_interface;
  LNDaemonConstraintValidationXPCInterface_interface = v0;

  [LNDaemonConstraintValidationXPCInterface_interface setClass:objc_opt_class() forSelector:sel_validateAction_reply_ argumentIndex:0 ofReply:0];
  v2 = LNDaemonConstraintValidationXPCInterface_interface;
  v3 = objc_opt_class();

  return [v2 setClass:v3 forSelector:sel_validateAction_reply_ argumentIndex:1 ofReply:1];
}

__CFString *LNValueExtractionTypeAsString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"Data";
  }

  else
  {
    return @"File";
  }
}

uint64_t __Block_byref_object_copy__2033(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1976E9AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2676(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1976E9CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976E9F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

id NSErrorFromMetadataProviderError(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = off_1E74B0B68[a1 - 9000];
  v9 = *MEMORY[0x1E696A578];
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 localizedStringForKey:v2 value:&stru_1F0BBC770 table:0];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LNMetadataProviderErrorDomain" code:a1 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void sub_1976EA388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EA5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EA81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EAAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EAD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EAFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1976EB268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1976EB4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EB764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EB9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EBC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EBEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EC188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1976EC434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EC6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1976EC984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1976ECC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976ECEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976ED15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1976ED3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1976ED6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1976ED92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EDBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1976EDE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1976EE104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EE38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EE614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EE89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976EED14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1976EEF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976EF464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976EF6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976EF940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976EFB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976EFE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1976F0108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976F0364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F05E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F0868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F10CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1976F1710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F196C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F1BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F1FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976F23E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1976F274C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1976F29DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F2CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1976F2F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F3200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1976F34B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1976F3734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F39B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F3C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1976F3EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t LNIsLinkEnabled(__CFBundle *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = CFBundleCopyResourceURL(a1, @"Metadata", @"appintents", 0);
  if (v3 || (objc_autoreleasePoolPop(v2), v2 = objc_autoreleasePoolPush(), (v3 = CFBundleCopyResourceURL(a1, @"Link", @"data", 0)) != 0))
  {
    CFRelease(v3);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}

void sub_1976F7AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1976FAADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCSSpeechUaapXPCClientClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!CoreSpeechLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __CoreSpeechLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E74B0CD8;
    v9 = 0;
    CoreSpeechLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreSpeechLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreSpeechLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"LNSpeechUaapXPCClient.m" lineNumber:13 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CSSpeechUaapXPCClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCSSpeechUaapXPCClientClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"LNSpeechUaapXPCClient.m" lineNumber:14 description:{@"Unable to find class %s", "CSSpeechUaapXPCClient"}];

LABEL_10:
    __break(1u);
  }

  getCSSpeechUaapXPCClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreSpeechLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpeechLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *LNActionExecutorErrorCodeAsString(uint64_t a1)
{
  if ((a1 - 3001) > 2)
  {
    return @"LNActionExecutorErrorCodeUnknown";
  }

  else
  {
    return off_1E74B0D08[a1 - 3001];
  }
}

__CFString *LNPerformActionErrorCodeAsString(uint64_t a1)
{
  if ((a1 - 2001) > 0x17)
  {
    return @"LNPerformActionErrorCodeActionUnknown";
  }

  else
  {
    return off_1E74B0D20[a1 - 2001];
  }
}

__CFString *LNPerformActionPrebuiltErrorCodeAsString(uint64_t a1)
{
  if ((a1 - 4001) > 0x19)
  {
    return @"LNPerformActionPrebuiltErrorCodeAppLaunch";
  }

  else
  {
    return off_1E74B0DE0[a1 - 4001];
  }
}

id LNTranscriptXPCObservingInterface()
{
  if (LNTranscriptXPCObservingInterface_onceToken != -1)
  {
    dispatch_once(&LNTranscriptXPCObservingInterface_onceToken, &__block_literal_global_4114);
  }

  v1 = LNTranscriptXPCObservingInterface_interface;

  return v1;
}

void __LNTranscriptXPCObservingInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BEF6A8];
  v1 = LNTranscriptXPCObservingInterface_interface;
  LNTranscriptXPCObservingInterface_interface = v0;

  v2 = LNTranscriptXPCObservingInterface_interface;

  LNConfigureStartObservingNextActionXPCMethod(v2);
}

void LNConfigureStartObservingNextActionXPCMethod(void *a1)
{
  v1 = a1;
  [v1 setClass:objc_opt_class() forSelector:sel_startObservingNextActionStreamWithCompletion_ argumentIndex:0 ofReply:1];
  [v1 setClass:objc_opt_class() forSelector:sel_startObservingNextActionStreamWithCompletion_ argumentIndex:1 ofReply:1];
  [v1 setClass:objc_opt_class() forSelector:sel_stopObservingNextActionStreamWithConnectionUUID_completion_ argumentIndex:0 ofReply:1];
}

id LNTranscriptXPCPrivilegedObservingInterface()
{
  if (LNTranscriptXPCPrivilegedObservingInterface_onceToken != -1)
  {
    dispatch_once(&LNTranscriptXPCPrivilegedObservingInterface_onceToken, &__block_literal_global_60);
  }

  v1 = LNTranscriptXPCPrivilegedObservingInterface_interface;

  return v1;
}

void __LNTranscriptXPCPrivilegedObservingInterface_block_invoke()
{
  v0 = LNTranscriptXPCPrivilegedInterface();
  v1 = LNTranscriptXPCPrivilegedObservingInterface_interface;
  LNTranscriptXPCPrivilegedObservingInterface_interface = v0;

  [LNTranscriptXPCPrivilegedObservingInterface_interface setProtocol:&unk_1F0BF4FE8];
  v2 = LNTranscriptXPCPrivilegedObservingInterface_interface;

  LNConfigureStartObservingNextActionXPCMethod(v2);
}

id LNNextActionObserverXPCInterface()
{
  if (LNNextActionObserverXPCInterface_onceToken != -1)
  {
    dispatch_once(&LNNextActionObserverXPCInterface_onceToken, &__block_literal_global_69);
  }

  v1 = LNNextActionObserverXPCInterface_interface;

  return v1;
}

uint64_t __LNNextActionObserverXPCInterface_block_invoke()
{
  LNNextActionObserverXPCInterface_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BF5048];

  return MEMORY[0x1EEE66BB8]();
}

Class __getUILinkConnectionActionClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __UIKitLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E74B0FF0;
    v9 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"LNEmbeddedApplicationConnection.m" lineNumber:41 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("UILinkConnectionAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUILinkConnectionActionClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"LNEmbeddedApplicationConnection.m" lineNumber:42 description:{@"Unable to find class %s", "UILinkConnectionAction"}];

LABEL_10:
    __break(1u);
  }

  getUILinkConnectionActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1976FF9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1977000F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPDCPreflightManagerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!PrivacyDisclosureCoreLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __PrivacyDisclosureCoreLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E74B0FD8;
    v9 = 0;
    PrivacyDisclosureCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PrivacyDisclosureCoreLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PrivacyDisclosureCoreLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"LNEmbeddedApplicationConnection.m" lineNumber:55 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("PDCPreflightManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPDCPreflightManagerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"LNEmbeddedApplicationConnection.m" lineNumber:56 description:{@"Unable to find class %s", "PDCPreflightManager"}];

LABEL_10:
    __break(1u);
  }

  getPDCPreflightManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PrivacyDisclosureCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PrivacyDisclosureCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *LNActionExecutionPriorityAsString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"background";
  }

  if (a1 == 2)
  {
    return @"userInteractive";
  }

  else
  {
    return v1;
  }
}

__CFString *LNAssistantDismissalPolicyAsString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"retainAssistant";
  }

  if (a1 == 2)
  {
    return @"dismissAssistant";
  }

  else
  {
    return v1;
  }
}

void sub_197705A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCATClass_block_invoke_5387(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!DialogEngineLibraryCore_frameworkLibrary_5389)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __DialogEngineLibraryCore_block_invoke_5390;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E74B10D8;
    v9 = 0;
    DialogEngineLibraryCore_frameworkLibrary_5389 = _sl_dlopen();
  }

  if (!DialogEngineLibraryCore_frameworkLibrary_5389)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DialogEngineLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"LNCATDialog+CATSupport.m" lineNumber:17 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CAT");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCATClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"LNCATDialog+CATSupport.m" lineNumber:18 description:{@"Unable to find class %s", "CAT"}];

LABEL_10:
    __break(1u);
  }

  getCATClass_softClass_5386 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __DialogEngineLibraryCore_block_invoke_5390(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DialogEngineLibraryCore_frameworkLibrary_5389 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19770615C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5528(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_197708358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1977085E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

__CFString *LNConnectionAuthenticationPolicyAsString(uint64_t a1)
{
  if (a1)
  {
    return @"Force Unlock";
  }

  else
  {
    return @"Default";
  }
}

id LNStructuredDataRepresentationsAsString(__int16 a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"ShareableEntity"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"ApplicationRepresentable"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 addObject:@"CalendarEventRepresentable"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 addObject:@"EnvironmentRepresentable"];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 addObject:@"MediaItemRepresentable"];
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v3 addObject:@"MediaSearchRepresentable"];
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v3 addObject:@"MessageConversationRepresentable"];
  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 addObject:@"NoteRepresentable"];
  if ((a1 & 0x100) == 0)
  {
LABEL_10:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v3 addObject:@"NotificationRepresentable"];
  if ((a1 & 0x200) == 0)
  {
LABEL_11:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v3 addObject:@"PersonRepresentable"];
  if ((a1 & 0x400) == 0)
  {
LABEL_12:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v3 addObject:@"TaskRepresentable"];
  if ((a1 & 0x800) == 0)
  {
LABEL_13:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  [v3 addObject:@"TaskListRepresentable"];
  if ((a1 & 0x1000) != 0)
  {
LABEL_14:
    [v3 addObject:@"TimerRepresentable"];
  }

LABEL_15:

  return v3;
}

void sub_19770AA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCATClass_block_invoke_5954(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!DialogEngineLibraryCore_frameworkLibrary_5955)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __DialogEngineLibraryCore_block_invoke_5956;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E74B1270;
    v9 = 0;
    DialogEngineLibraryCore_frameworkLibrary_5955 = _sl_dlopen();
  }

  if (!DialogEngineLibraryCore_frameworkLibrary_5955)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DialogEngineLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"LNNLGDialog+CATSupport.m" lineNumber:20 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CAT");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCATClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"LNNLGDialog+CATSupport.m" lineNumber:21 description:{@"Unable to find class %s", "CAT"}];

LABEL_10:
    __break(1u);
  }

  getCATClass_softClass_5953 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __DialogEngineLibraryCore_block_invoke_5956(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DialogEngineLibraryCore_frameworkLibrary_5955 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19770BAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getLNAppContextClass_block_invoke(uint64_t a1)
{
  AppIntentsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LNAppContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNAppContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNAppContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNInProcessConnection.m" lineNumber:16 description:{@"Unable to find class %s", "LNAppContext"}];

    __break(1u);
  }
}

void __getLNClientConnectionClass_block_invoke(uint64_t a1)
{
  AppIntentsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LNClientConnection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNClientConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNClientConnectionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNInProcessConnection.m" lineNumber:17 description:{@"Unable to find class %s", "LNClientConnection"}];

    __break(1u);
  }
}

void AppIntentsLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AppIntentsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AppIntentsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E74B12E8;
    v6 = 0;
    AppIntentsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppIntentsLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppIntentsLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"LNInProcessConnection.m" lineNumber:15 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __AppIntentsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppIntentsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id LNAppNotificationEventListenerXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BF50A8];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_sendAppNotificationEvents_reply_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v4 forSelector:sel_sendAppNotificationEvents_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

id LNDaemonMediatorXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BF5108];
  [v0 setClass:objc_opt_class() forSelector:sel_fetchResponseForConnectionAction_auditToken_bundleIdentifier_reply_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_fetchResponseForConnectionAction_auditToken_bundleIdentifier_reply_ argumentIndex:1 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_sendConnectionActionResponse_forConnectionActionWithIdentifier_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_19770F460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6810(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *_donationTypeName(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"Full";
  }

  else if (a1 == 2)
  {
    v2 = @"Incremental";
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%u)", a1];
  }

  return v2;
}

__CFString *LNChoiceOptionStyleAsString(uint64_t a1)
{
  v1 = @"Default";
  if (a1 == 1)
  {
    v1 = @"Cancel";
  }

  if (a1 == 2)
  {
    return @"Destructive";
  }

  else
  {
    return v1;
  }
}

void sub_197711F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCATClass_block_invoke_7285(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!DialogEngineLibraryCore_frameworkLibrary_7286)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __DialogEngineLibraryCore_block_invoke_7287;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E74B13D0;
    v9 = 0;
    DialogEngineLibraryCore_frameworkLibrary_7286 = _sl_dlopen();
  }

  if (!DialogEngineLibraryCore_frameworkLibrary_7286)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DialogEngineLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"LNLocalizedStringResourceDialog+CATSupport.m" lineNumber:17 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CAT");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCATClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"LNLocalizedStringResourceDialog+CATSupport.m" lineNumber:18 description:{@"Unable to find class %s", "CAT"}];

LABEL_10:
    __break(1u);
  }

  getCATClass_softClass_7284 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __DialogEngineLibraryCore_block_invoke_7287(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DialogEngineLibraryCore_frameworkLibrary_7286 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_197712BAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 152));
  os_activity_scope_leave((v3 - 128));
  _Unwind_Resume(a1);
}

id LNDaemonSuggestionsXPCInterface()
{
  if (LNDaemonSuggestionsXPCInterface_onceToken != -1)
  {
    dispatch_once(&LNDaemonSuggestionsXPCInterface_onceToken, &__block_literal_global_7472);
  }

  v1 = LNDaemonSuggestionsXPCInterface_interface;

  return v1;
}

void __LNDaemonSuggestionsXPCInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BF5168];
  v1 = LNDaemonSuggestionsXPCInterface_interface;
  LNDaemonSuggestionsXPCInterface_interface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v9 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v5, v6, v7, objc_opt_class(), 0}];
  [LNDaemonSuggestionsXPCInterface_interface setClasses:v9 forSelector:sel_suggestedActionsForSuggestionsRequests_reply_ argumentIndex:0 ofReply:0];
  [LNDaemonSuggestionsXPCInterface_interface setClasses:v8 forSelector:sel_suggestedActionsForSuggestionsRequests_reply_ argumentIndex:0 ofReply:1];
  [LNDaemonSuggestionsXPCInterface_interface setClass:objc_opt_class() forSelector:sel_suggestedActionsForSuggestionsRequests_reply_ argumentIndex:1 ofReply:1];
}

id getAVSystemControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVSystemControllerClass_softClass;
  v7 = getAVSystemControllerClass_softClass;
  if (!getAVSystemControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVSystemControllerClass_block_invoke;
    v3[3] = &unk_1E74B26D0;
    v3[4] = &v4;
    __getAVSystemControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_197713240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *MediaExperienceLibrary()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaExperienceLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E74B1418;
    v7 = 0;
    MediaExperienceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaExperienceLibraryCore_frameworkLibrary;
  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaExperienceLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"LNRuntimeAssertionsTakingConnectionOperation.m" lineNumber:16 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __MediaExperienceLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaExperienceLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getAVSystemControllerClass_block_invoke(uint64_t a1)
{
  MediaExperienceLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVSystemController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVSystemControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVSystemControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNRuntimeAssertionsTakingConnectionOperation.m" lineNumber:21 description:{@"Unable to find class %s", "AVSystemController"}];

    __break(1u);
  }
}

void sub_197714744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getKVItemBuilderClass_block_invoke(uint64_t a1)
{
  KoaLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("KVItemBuilder");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getKVItemBuilderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getKVItemBuilderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNKoaClient.m" lineNumber:21 description:{@"Unable to find class %s", "KVItemBuilder"}];

    __break(1u);
  }
}

void KoaLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!KoaLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __KoaLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E74B1480;
    v6 = 0;
    KoaLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!KoaLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *KoaLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"LNKoaClient.m" lineNumber:18 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __KoaLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  KoaLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_197715304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getKVDonatorClass_block_invoke(uint64_t a1)
{
  KoaLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("KVDonator");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getKVDonatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getKVDonatorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNKoaClient.m" lineNumber:19 description:{@"Unable to find class %s", "KVDonator"}];

    __break(1u);
  }
}

void __getKVFullDatasetStreamClass_block_invoke(uint64_t a1)
{
  KoaLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("KVFullDatasetStream");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getKVFullDatasetStreamClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getKVFullDatasetStreamClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNKoaClient.m" lineNumber:20 description:{@"Unable to find class %s", "KVFullDatasetStream"}];

    __break(1u);
  }
}

void sub_1977163DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7818(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19771679C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19771729C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

__CFString *LNAppNotificationEventTypeAsString(uint64_t a1)
{
  v1 = @"Created";
  if (a1 == 1)
  {
    v1 = @"Deleted";
  }

  if (a1 == 2)
  {
    return @"Updated";
  }

  else
  {
    return v1;
  }
}

void sub_19771C254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCCAppEntityDisplayRepresentationClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCAppEntityDisplayRepresentation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCAppEntityDisplayRepresentationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCAppEntityDisplayRepresentationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNSpotlightCascadeTranslator.m" lineNumber:24 description:{@"Unable to find class %s", "CCAppEntityDisplayRepresentation"}];

    __break(1u);
  }
}

void __getCCAppEntityTypeDisplayRepresentationClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCAppEntityTypeDisplayRepresentation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCAppEntityTypeDisplayRepresentationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCAppEntityTypeDisplayRepresentationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNSpotlightCascadeTranslator.m" lineNumber:25 description:{@"Unable to find class %s", "CCAppEntityTypeDisplayRepresentation"}];

    __break(1u);
  }
}

void __getCCAppIntentsIndexedEntityContentClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCAppIntentsIndexedEntityContent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCAppIntentsIndexedEntityContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCAppIntentsIndexedEntityContentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNSpotlightCascadeTranslator.m" lineNumber:21 description:{@"Unable to find class %s", "CCAppIntentsIndexedEntityContent"}];

    __break(1u);
  }
}

void __getCCAppIntentsIndexedEntityMetaContentClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCAppIntentsIndexedEntityMetaContent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCAppIntentsIndexedEntityMetaContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCAppIntentsIndexedEntityMetaContentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNSpotlightCascadeTranslator.m" lineNumber:26 description:{@"Unable to find class %s", "CCAppIntentsIndexedEntityMetaContent"}];

    __break(1u);
  }
}

id getCCItemInstanceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCCItemInstanceClass_softClass;
  v7 = getCCItemInstanceClass_softClass;
  if (!getCCItemInstanceClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCCItemInstanceClass_block_invoke;
    v3[3] = &unk_1E74B26D0;
    v3[4] = &v4;
    __getCCItemInstanceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19771C668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCCItemInstanceClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCItemInstance");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCItemInstanceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCItemInstanceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNSpotlightCascadeTranslator.m" lineNumber:27 description:{@"Unable to find class %s", "CCItemInstance"}];

    __break(1u);
  }
}

void IntelligencePlatformLibraryLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IntelligencePlatformLibraryLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IntelligencePlatformLibraryLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E74B1658;
    v6 = 0;
    IntelligencePlatformLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IntelligencePlatformLibraryLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntelligencePlatformLibraryLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"LNSpotlightCascadeTranslator.m" lineNumber:20 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __IntelligencePlatformLibraryLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IntelligencePlatformLibraryLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getCCAssistantSchemaClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCAssistantSchema");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCAssistantSchemaClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCAssistantSchemaClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNSpotlightCascadeTranslator.m" lineNumber:22 description:{@"Unable to find class %s", "CCAssistantSchema"}];

    __break(1u);
  }
}

void __getCCAssistantSchemaVersionClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCAssistantSchemaVersion");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCAssistantSchemaVersionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCAssistantSchemaVersionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNSpotlightCascadeTranslator.m" lineNumber:23 description:{@"Unable to find class %s", "CCAssistantSchemaVersion"}];

    __break(1u);
  }
}

void sub_19771D9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  os_unfair_lock_unlock(v7 + 2);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8763(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19771E584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getQLPreviewControllerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __QuickLookLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E74B16D8;
    v9 = 0;
    QuickLookLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *QuickLookLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"LNQuickLook.m" lineNumber:15 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("QLPreviewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getQLPreviewControllerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"LNQuickLook.m" lineNumber:16 description:{@"Unable to find class %s", "QLPreviewController"}];

LABEL_10:
    __break(1u);
  }

  getQLPreviewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __QuickLookLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  QuickLookLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id LNViewEntityStateAsString(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"Selected"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"Highlighted"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 addObject:@"Focused"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 addObject:@"Disabled"];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  [v3 addObject:@"Editing"];
  if ((a1 & 0x20) != 0)
  {
LABEL_7:
    [v3 addObject:@"Primary"];
  }

LABEL_8:
  v4 = [v3 componentsJoinedByString:{@", "}];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", v4];

  return v5;
}

void sub_197721228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCHSAppIntentsXPCListenerEndpointProviderClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!ChronoServicesLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __ChronoServicesLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E74B1858;
    v9 = 0;
    ChronoServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ChronoServicesLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ChronoServicesLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"LNExtensionMediator.m" lineNumber:23 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CHSAppIntentsXPCListenerEndpointProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCHSAppIntentsXPCListenerEndpointProviderClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"LNExtensionMediator.m" lineNumber:24 description:{@"Unable to find class %s", "CHSAppIntentsXPCListenerEndpointProvider"}];

LABEL_10:
    __break(1u);
  }

  getCHSAppIntentsXPCListenerEndpointProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ChronoServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ChronoServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id kvcValueForValue(void *a1)
{
  v1 = [a1 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [[LNEntityKVCAdapter alloc] initWithEntity:v1];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v2 = [v1 if_map:&__block_literal_global_128];
  }

  v3 = v2;

  v1 = v3;
LABEL_6:

  return v1;
}

id __kvcValueForValue_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = kvcValueForValue(v2);
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

void sub_197723CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1977241BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 buf)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(exception_object);
    v17 = getLNLogCategoryPolicy();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_19763D000, v17, OS_LOG_TYPE_FAULT, "%@", &buf, 0xCu);
    }

    if (v15)
    {
      v18 = MEMORY[0x1E696ABC0];
      a9 = *MEMORY[0x1E696A278];
      v19 = [v16 reason];
      a10 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a10 forKeys:&a9 count:1];
      *v15 = [v18 errorWithDomain:@"AppIntentConstraints" code:-1 userInfo:v20];
    }

    objc_end_catch();
    JUMPOUT(0x197724164);
  }

  _Unwind_Resume(exception_object);
}

void sub_197725050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *LNConfirmationActionNameEnumAsString(uint64_t a1)
{
  if ((a1 - 1) > 0x20)
  {
    return @"Continue";
  }

  else
  {
    return off_1E74B19A0[a1 - 1];
  }
}

void sub_197728AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19772BD9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_19772C2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, os_activity_scope_state_s state)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10568(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *LNActionExecutorStateAsString(uint64_t a1)
{
  v1 = @"Idle";
  if (a1 > 40)
  {
    v2 = @"WaitingForActionConfirmation";
    v6 = @"Performing";
    v7 = @"Completed";
    if (a1 != 100)
    {
      v7 = @"Idle";
    }

    if (a1 != 90)
    {
      v6 = v7;
    }

    if (a1 != 80)
    {
      v2 = v6;
    }

    if (a1 == 43)
    {
      v1 = @"WaitingForChoice";
    }

    if (a1 == 42)
    {
      v1 = @"WaitingForConfirmation";
    }

    if (a1 == 41)
    {
      v1 = @"WaitingForDisambiguation";
    }

    v5 = a1 <= 79;
  }

  else
  {
    v2 = @"Resolved";
    v3 = @"WaitingForAppProtectionUnlock";
    v4 = @"WaitingForValue";
    if (a1 != 40)
    {
      v4 = @"Idle";
    }

    if (a1 != 30)
    {
      v3 = v4;
    }

    if (a1 != 29)
    {
      v2 = v3;
    }

    if (a1 == 20)
    {
      v1 = @"Resolving";
    }

    if (a1 == 11)
    {
      v1 = @"Connecting";
    }

    if (a1 == 10)
    {
      v1 = @"ValidatingConstraints";
    }

    v5 = a1 <= 28;
  }

  if (v5)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

id LNConnectionErrorWithCode(uint64_t a1)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = v2;
  v4 = @"Unknown";
  if (a1 > 1399)
  {
    if (a1 <= 1899)
    {
      v5 = @"LNConnectionErrorCodeAppManagerAppShortcutsNotFound";
      v16 = @"LNConnectionErrorCodePreflightRequiredToLaunchApp";
      v17 = @"LNConnectionErrorCodeUnsupportedInCarPlay";
      if (a1 != 1800)
      {
        v17 = @"Unknown";
      }

      if (a1 != 1700)
      {
        v16 = v17;
      }

      if (a1 != 1603)
      {
        v5 = v16;
      }

      v18 = @"LNConnectionErrorCodeAppManagerUnableToExtractStaticMetadata";
      v19 = @"LNConnectionErrorCodeAppManagerTypeMetadataNotFound";
      if (a1 != 1602)
      {
        v19 = @"Unknown";
      }

      if (a1 != 1601)
      {
        v18 = v19;
      }

      if (a1 <= 1602)
      {
        v5 = v18;
      }

      v10 = @"LNConnectionErrorCodeLinkManagerUnableToExtractStaticMetadata";
      v20 = @"LNConnectionErrorCodeAppManagerUnableToObtainBundleIdentifier";
      if (a1 != 1600)
      {
        v20 = @"Unknown";
      }

      if (a1 != 1501)
      {
        v10 = v20;
      }

      v21 = @"LNConnectionErrorCodeLinkManagerDidNotRegisterActionss";
      v22 = @"LNConnectionErrorCodeLinkManagerUnableToObtainBundleIdentifier";
      if (a1 != 1500)
      {
        v22 = @"Unknown";
      }

      if (a1 != 1400)
      {
        v21 = v22;
      }

      if (a1 <= 1500)
      {
        v10 = v21;
      }

      v15 = a1 <= 1600;
    }

    else
    {
      v5 = @"LNConnectionErrorCodeAsyncSequenceNotFound";
      v6 = @"LNConnectionErrorCodeUserIdentityMismatchFailure";
      v7 = @"LNConnectionErrorCodeBundleIdentifierMismatchFailure";
      if (a1 != 2601)
      {
        v7 = @"Unknown";
      }

      if (a1 != 2600)
      {
        v6 = v7;
      }

      if (a1 != 2501)
      {
        v5 = v6;
      }

      v8 = @"LNConnectionErrorCodeAppProtectionChallengeRequired";
      v9 = @"LNConnectionErrorCodeAsyncSequenceInvalidRequest";
      if (a1 != 2500)
      {
        v9 = @"Unknown";
      }

      if (a1 != 2400)
      {
        v8 = v9;
      }

      if (a1 <= 2500)
      {
        v5 = v8;
      }

      v10 = @"LNConnectionErrorCodeInvalidMediator";
      v11 = @"LNConnectionErrorCodeConnectionListenerIsUnset";
      v12 = @"LNConnectionErrorCodeProcessInstanceIdentifierIsUnset";
      if (a1 != 2302)
      {
        v12 = @"Unknown";
      }

      if (a1 != 2301)
      {
        v11 = v12;
      }

      if (a1 != 2300)
      {
        v10 = v11;
      }

      v13 = @"LNConnectionErrorCodeUnableToUnlockDevice";
      v14 = @"LNConnectionErrorCodeFrontBoardFailure";
      if (a1 != 2200)
      {
        v14 = @"Unknown";
      }

      if (a1 != 1900)
      {
        v13 = v14;
      }

      if (a1 <= 2299)
      {
        v10 = v13;
      }

      v15 = a1 <= 2399;
    }

    if (v15)
    {
      v4 = v10;
    }

    else
    {
      v4 = v5;
    }
  }

  else if (a1 > 1099)
  {
    v28 = @"LNConnectionErrorCodeAppleEventsFailed";
    v29 = @"LNConnectionErrorCodeLinkManagerDidNotRegisterEntities";
    if (a1 != 1300)
    {
      v29 = @"Unknown";
    }

    if (a1 != 1200)
    {
      v28 = v29;
    }

    if (a1 == 1100)
    {
      v4 = @"LNConnectionErrorCodeExtensionNotFound";
    }

    else
    {
      v4 = v28;
    }
  }

  else
  {
    switch(a1)
    {
      case 1001:
        v4 = @"LNConnectionErrorCodeUnimplemented";
        break;
      case 1002:
        v4 = @"LNConnectionErrorCodeRequestTimeout";
        break;
      case 1003:
        v4 = @"LNConnectionErrorCodeApplicationExitedUnexpectedly";
        break;
      case 1004:
        v4 = @"LNConnectionErrorCodeXPCConnectionInterrupted";
        break;
      case 1005:
        v4 = @"LNConnectionErrorCodeXPCConnectionInvalidated";
        break;
      case 1006:
        v4 = @"LNConnectionErrorCodeNotSupportedOnPlatform";
        break;
      case 1007:
        v4 = @"LNConnectionErrorCodeFetchEntitiesFailure";
        break;
      case 1008:
        v4 = @"LNConnectionErrorCodeFetchOptionsFailure";
        break;
      case 1009:
        v4 = @"LNConnectionErrorCodeFetchOptionsUnsupportedParameter";
        break;
      case 1010:
        v4 = @"LNConnectionErrorCodeFetchOptionsUnknownAction";
        break;
      case 1011:
        v4 = @"LNConnectionErrorCodeFetchOptionsNoOptionsProvider";
        break;
      case 1012:
        v4 = @"LNConnectionErrorCodeFetchOptionsParameterNotFound";
        break;
      case 1013:
        v4 = @"LNConnectionErrorCodeFetchMetadataFailure";
        break;
      case 1014:
        v4 = @"LNConnectionErrorCodeOperationFailure";
        break;
      case 1015:
        v4 = @"LNConnectionErrorCodeInvalidXPCHost";
        break;
      case 1016:
        v4 = @"LNConnectionErrorCodeMismatchingAuditTokens";
        break;
      default:
        break;
    }
  }

  v23 = [v2 localizedStringForKey:v4 value:&stru_1F0BBC770 table:0];

  if ([v23 length])
  {
    v30 = *MEMORY[0x1E696A578];
    v31[0] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  }

  else
  {
    v24 = 0;
  }

  v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LNConnectionErrorDomain" code:a1 userInfo:v24];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

id LNDaemonObservationStatusRegistryXPCInterface()
{
  if (LNDaemonObservationStatusRegistryXPCInterface_onceToken != -1)
  {
    dispatch_once(&LNDaemonObservationStatusRegistryXPCInterface_onceToken, &__block_literal_global_12115);
  }

  v1 = LNDaemonObservationStatusRegistryXPCInterface_interface;

  return v1;
}

uint64_t __LNDaemonObservationStatusRegistryXPCInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0BF53F0];
  v1 = LNDaemonObservationStatusRegistryXPCInterface_interface;
  LNDaemonObservationStatusRegistryXPCInterface_interface = v0;

  v2 = LNDaemonObservationStatusRegistryXPCInterface_interface;
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_registerForAppNotificationEventsOfBundleIdentifier_entityType_completionHandler_ argumentIndex:0 ofReply:0];

  v4 = LNDaemonObservationStatusRegistryXPCInterface_interface;
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v4 setClasses:v5 forSelector:sel_registerForAppNotificationEventsOfBundleIdentifier_entityType_completionHandler_ argumentIndex:1 ofReply:0];

  [LNDaemonObservationStatusRegistryXPCInterface_interface setClass:objc_opt_class() forSelector:sel_registerForAppNotificationEventsOfBundleIdentifier_entityType_completionHandler_ argumentIndex:0 ofReply:1];
  v6 = LNDaemonObservationStatusRegistryXPCInterface_interface;
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v7 forSelector:sel_unregisterForAppNotificationEventsOfBundleIdentifier_entityType_completionHandler_ argumentIndex:0 ofReply:0];

  v8 = LNDaemonObservationStatusRegistryXPCInterface_interface;
  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v8 setClasses:v9 forSelector:sel_unregisterForAppNotificationEventsOfBundleIdentifier_entityType_completionHandler_ argumentIndex:1 ofReply:0];

  v10 = LNDaemonObservationStatusRegistryXPCInterface_interface;
  v11 = objc_opt_class();

  return [v10 setClass:v11 forSelector:sel_unregisterForAppNotificationEventsOfBundleIdentifier_entityType_completionHandler_ argumentIndex:0 ofReply:1];
}

uint64_t LNSetUserDirSuffix(void *a1)
{
  v1 = [a1 UTF8String];

  return MEMORY[0x1EEE71CF8](v1);
}

__CFString *LNContinueInAppRequestTypeAsString(uint64_t a1)
{
  v1 = @"UserInitiated";
  if (a1 == 1)
  {
    v1 = @"ForegroundLaunch";
  }

  if (a1 == 2)
  {
    return @"ForegroundLaunchWithRunningUI";
  }

  else
  {
    return v1;
  }
}

void sub_197738938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCATDisableLoggingSymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!DialogEngineLibraryCore_frameworkLibrary_12709)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __DialogEngineLibraryCore_block_invoke_12710;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74B2018;
    v8 = 0;
    DialogEngineLibraryCore_frameworkLibrary_12709 = _sl_dlopen();
  }

  v2 = DialogEngineLibraryCore_frameworkLibrary_12709;
  if (!DialogEngineLibraryCore_frameworkLibrary_12709)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DialogEngineLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"LNDialog+CATSupport.m" lineNumber:13 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "CATDisableLogging");
  *(*(a1[4] + 8) + 24) = result;
  getCATDisableLoggingSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __DialogEngineLibraryCore_block_invoke_12710(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DialogEngineLibraryCore_frameworkLibrary_12709 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19773A660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12786(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19773D9A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  (*(v10 + 16))(v10);
  _Unwind_Resume(a1);
}

void sub_19773EA74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t LNPIDForAuditToken(_OWORD *a1)
{
  v2 = a1[1];
  *v5.val = *a1;
  *&v5.val[4] = v2;
  if (!LNAuditTokenIsValid(&v5))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a1[1];
  *v5.val = *a1;
  *&v5.val[4] = v3;
  return audit_token_to_pid(&v5);
}

void sub_1977407FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state)
{
  (*(v15 + 16))(v15);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1977413B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  os_activity_scope_leave((v3 - 80));
  _Unwind_Resume(a1);
}

uint64_t LNPIDVersionForAuditToken(_OWORD *a1)
{
  v2 = a1[1];
  *v5.val = *a1;
  *&v5.val[4] = v2;
  if (!LNAuditTokenIsValid(&v5))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a1[1];
  *v5.val = *a1;
  *&v5.val[4] = v3;
  return audit_token_to_pidversion(&v5);
}

uint64_t LNEUIDForAuditToken(_OWORD *a1)
{
  v2 = a1[1];
  *v5.val = *a1;
  *&v5.val[4] = v2;
  if (!LNAuditTokenIsValid(&v5))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a1[1];
  *v5.val = *a1;
  *&v5.val[4] = v3;
  return audit_token_to_euid(&v5);
}

__CFString *LNTranscriptMatchingPredicateTypeAsString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Donation Record";
  }

  else
  {
    return off_1E74B2610[a1 - 1];
  }
}

void sub_19774740C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14194(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_197749C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactInstantMessageAddressesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactInstantMessageAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactInstantMessageAddressesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ContactsLibrary()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __ContactsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E74B26F0;
    v7 = 0;
    ContactsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ContactsLibraryCore_frameworkLibrary;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"LNContactsKeys.m" lineNumber:13 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __ContactsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_197749F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactPhoneNumbersKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactPhoneNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneNumbersKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19774A144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactEmailAddressesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactEmailAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactEmailAddressesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19774BFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14892(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19774D67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}