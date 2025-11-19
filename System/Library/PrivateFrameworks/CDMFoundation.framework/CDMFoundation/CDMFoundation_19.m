uint64_t sub_1DC42C408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_107_1();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_93_0();
  a20 = v22;
  v26 = v22[19];
  v25 = v22[20];
  v27 = v22[17];
  v28 = v22[18];
  v29 = v22[16];
  v30 = sub_1DC5174FC();
  v31 = *(v28 + 8);
  v32 = OUTLINED_FUNCTION_56_0();
  v33(v32);
  sub_1DC4289E0(v30, v29);

  OUTLINED_FUNCTION_11_6(v29);
  if (v34)
  {
    v35 = v22[34];
    v36 = v22[35];
    v37 = v22[33];
    v38 = v22[30];
    v39 = v22[31];
    sub_1DC28EB30(v22[16], &qword_1ECC7DED0, &qword_1DC52E700);
    sub_1DC517BBC();
    v40 = sub_1DC296DBC();
    sub_1DC516F0C();

    v41 = OUTLINED_FUNCTION_63_0();
    v36(v41);
  }

  else
  {
    v42 = v22[34];
    v43 = v22[22];
    v44 = v22[21];
    (*(v44 + 32))(v22[23], v22[16], v22[20]);
    v45 = sub_1DC517BBC();
    v46 = sub_1DC296DBC();
    v47 = *(v44 + 16);
    v48 = OUTLINED_FUNCTION_16();
    v49(v48);
    v50 = os_log_type_enabled(v46, v45);
    v52 = v22[21];
    v51 = v22[22];
    v53 = v22[20];
    if (v50)
    {
      v54 = OUTLINED_FUNCTION_63();
      a11 = OUTLINED_FUNCTION_82();
      *v54 = 136315138;
      v55 = sub_1DC5174AC();
      HIDWORD(a9) = v45;
      v57 = v56;
      v58 = *(v52 + 8);
      v59 = OUTLINED_FUNCTION_151();
      a10 = v60;
      v60(v59);
      sub_1DC291244(v55, v57, &a11);
      OUTLINED_FUNCTION_353_0();

      *(v54 + 4) = v51;
      OUTLINED_FUNCTION_473(&dword_1DC287000, "Cache HIT, cache output: %s", BYTE4(a9));
      OUTLINED_FUNCTION_138_3();
      OUTLINED_FUNCTION_58();
    }

    else
    {

      v61 = *(v52 + 8);
      v62 = OUTLINED_FUNCTION_151();
      a10 = v63;
      v63(v62);
    }

    v64 = v22[35];
    v65 = v22[33];
    v66 = v22[30];
    v67 = v22[31];
    v68 = v22[23];
    v69 = v22[20];
    sub_1DC5174AC();
    OUTLINED_FUNCTION_141_1();
    v70 = OUTLINED_FUNCTION_54_2();
    a10(v70);
    v71 = OUTLINED_FUNCTION_45_2();
    v64(v71);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v22 + 2);
  v73 = v22[32];
  v72 = v22[33];
  v74 = v22[29];
  v75 = v22[26];
  v77 = v22[22];
  v76 = v22[23];
  v78 = v22[19];
  v79 = v22[16];

  OUTLINED_FUNCTION_297_0();
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_74_5();

  return v83(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1DC42C6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_314_0();
  OUTLINED_FUNCTION_374_0();
  v19 = v18[34];
  v20 = sub_1DC517BAC();
  v21 = sub_1DC296DBC();
  if (os_log_type_enabled(v21, v20))
  {
    v22 = v18[37];
    OUTLINED_FUNCTION_63();
    v23 = OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_483(5.7779e-34);
    v24 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_431(v24);
    OUTLINED_FUNCTION_410(&dword_1DC287000, v25, v20, "Failed to search cache, will continue with regular inference %@");
    sub_1DC28EB30(v23, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_58();
  }

  v26 = v18[37];
  v27 = v18[35];
  v29 = v18[32];
  v28 = v18[33];
  v30 = v18[30];
  v31 = v18[31];
  v32 = v18[29];
  v44 = v18[26];
  v45 = v18[23];
  v46 = v18[22];
  v47 = v18[19];
  v48 = v18[16];

  sub_1DC445EB4();
  OUTLINED_FUNCTION_236_1();
  swift_allocError();
  *v33 = 0;
  swift_willThrow();

  v34 = OUTLINED_FUNCTION_117_0();
  v27(v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v18 + 2);

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_290_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, v44, v45, v46, v47, v48, a15, a16, a17, a18);
}

uint64_t sub_1DC42C88C()
{
  OUTLINED_FUNCTION_1_0();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[12] = v5;
  v1[13] = v6;
  v7 = sub_1DC510B6C();
  v1[18] = v7;
  OUTLINED_FUNCTION_52(v7);
  v1[19] = v8;
  v10 = *(v9 + 64);
  v1[20] = OUTLINED_FUNCTION_118();
  v11 = sub_1DC51752C();
  v1[21] = v11;
  OUTLINED_FUNCTION_52(v11);
  v1[22] = v12;
  v14 = *(v13 + 64);
  v1[23] = OUTLINED_FUNCTION_118();
  v15 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1DC42C984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_93_0();
  v15 = **(v14 + 136);
  v16 = MEMORY[0x1E69E7D40];
  v17 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_11_16();
  (*(v18 + 192))();
  if (*(v14 + 80))
  {
    v20 = *(v14 + 152);
    v19 = *(v14 + 160);
    v21 = *(v14 + 136);
    v49 = *(v14 + 144);
    v23 = *(v14 + 120);
    v22 = *(v14 + 128);
    v24 = *(v14 + 104);
    v50 = *(v14 + 112);
    v51 = *(v14 + 184);
    v25 = *(v14 + 96);
    sub_1DC28F9B0((v14 + 56), v14 + 16);
    (*((*v16 & *v21) + 0x1B8))(v25, v24);
    OUTLINED_FUNCTION_141_1();
    (*(v20 + 16))(v19, v22, v49);

    OUTLINED_FUNCTION_31_0();
    sub_1DC51751C();
    v26 = *(v14 + 40);
    v27 = *(v14 + 48);
    OUTLINED_FUNCTION_310_0((v14 + 16));
    v28 = *(MEMORY[0x1E69ABD40] + 4);
    v29 = swift_task_alloc();
    *(v14 + 192) = v29;
    *v29 = v14;
    v29[1] = sub_1DC42CB80;
    OUTLINED_FUNCTION_33_12(*(v14 + 184));
    OUTLINED_FUNCTION_74_5();

    return MEMORY[0x1EEE18720](v30, v31, v32, v33, v34, v35, v36, v37, v49, v50, v51, a12, a13, a14);
  }

  else
  {
    sub_1DC28EB30(v14 + 56, &qword_1ECC7DA28, &unk_1DC52A6D0);
    v38 = *(v14 + 184);
    v39 = *(v14 + 160);

    OUTLINED_FUNCTION_39_5();
    OUTLINED_FUNCTION_74_5();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1DC42CB80()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC42CC78()
{
  OUTLINED_FUNCTION_37_4();
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  sub_1DC517BBC();
  sub_1DC297814();
  v4 = sub_1DC296DBC();
  OUTLINED_FUNCTION_475();

  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_63_0();
  v7(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v8 = v0[23];
  v9 = v0[20];

  OUTLINED_FUNCTION_39_5();

  return v10();
}

uint64_t sub_1DC42CD4C()
{
  OUTLINED_FUNCTION_37_4();
  (*(v1[22] + 8))(v1[23], v1[21]);
  sub_1DC517BAC();
  OUTLINED_FUNCTION_21_2();
  v2 = sub_1DC296DBC();
  if (os_log_type_enabled(v2, v0))
  {
    v3 = v1[25];
    OUTLINED_FUNCTION_63();
    v4 = OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_483(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_431(v5);
    OUTLINED_FUNCTION_410(&dword_1DC287000, v6, v0, "Failed to insert model output to cache %@");
    sub_1DC28EB30(v4, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_58();
  }

  v7 = v1[25];
  v8 = v1[23];
  v9 = v1[20];

  sub_1DC445EB4();
  OUTLINED_FUNCTION_236_1();
  swift_allocError();
  *v10 = 1;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);

  OUTLINED_FUNCTION_2_2();

  return v11();
}

uint64_t sub_1DC42CEA0()
{
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  if (unk_1ECC7BD08 == 1)
  {
    v0 = OUTLINED_FUNCTION_75_6();
    nullsub_1(v0, v1);
  }

  v2 = OUTLINED_FUNCTION_74();
  sub_1DC2A329C(v2, v3);
  OUTLINED_FUNCTION_16();
  sub_1DC2B8808();

  v4 = OUTLINED_FUNCTION_159();
  MEMORY[0x1E1296160](v4);

  MEMORY[0x1E1296160](8285, 0xE200000000000000);
  v5 = OUTLINED_FUNCTION_36();
  MEMORY[0x1E1296160](v5);
  return 91;
}

void sub_1DC42CF74()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1DC51592C();
  v8 = OUTLINED_FUNCTION_3_33(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v59 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_60_12(v18);
  v19 = sub_1DC5157EC();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  if (sub_1DC51577C())
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x108))(v61);
    v25 = v0;
    v26 = v22;
    v27 = v19;
    v28 = v6;
    v30 = v62;
    v29 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v31 = v30;
    v6 = v28;
    v19 = v27;
    v22 = v26;
    v32 = v25;
    v2 = v1;
    v33 = (*(v29 + 8))(v4, v31, v29);
    v34 = MEMORY[0x1E69E7D40];
    LOBYTE(v29) = v33;
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    if ((v29 & 1) == 0)
    {
      (*(v10 + 104))(v59, *MEMORY[0x1E69D0380], v32);
      v35 = *((*v34 & *v2) + 0x1C8);
      v36 = OUTLINED_FUNCTION_74_8();
      v37(v36);
      v38 = *(v10 + 8);
      v39 = OUTLINED_FUNCTION_56();
      v40(v39);
      v41 = OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_39(v41, v42, v19);
      if (!v43)
      {
        v52 = *(v22 + 32);
        v53 = OUTLINED_FUNCTION_29_0();
        v52(v53);
        sub_1DC517B9C();
        OUTLINED_FUNCTION_21_2();
        v54 = sub_1DC296DBC();
        OUTLINED_FUNCTION_40_1();
        sub_1DC516F0C();

        v55 = OUTLINED_FUNCTION_146_1();
        v52(v55);
        goto LABEL_10;
      }

      sub_1DC28EB30(v60, &qword_1ECC7CA40, &unk_1DC5233A0);
    }
  }

  if (!sub_1DC32DB10())
  {
    goto LABEL_9;
  }

  sub_1DC32DBF4();
  if (v44 & 1) != 0 || ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x108))(v61), v45 = v63, OUTLINED_FUNCTION_310_0(v61), v46 = *(v45 + 8), v47 = OUTLINED_FUNCTION_36(), v49 = v48(v47), __swift_destroy_boxed_opaque_existential_1Tm(v61), (v49))
  {
LABEL_9:
    v50 = *(v22 + 16);
    OUTLINED_FUNCTION_32();
    v51();
  }

  else
  {
    sub_1DC517B9C();
    OUTLINED_FUNCTION_21_2();
    v56 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    sub_1DC5157CC();
    OUTLINED_FUNCTION_1_38();
    sub_1DC43F1F8(v57, v58);
    sub_1DC51501C();
    (*(v22 + 104))(v6, *MEMORY[0x1E69D02E8], v19);
  }

LABEL_10:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC42D440(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB90, &unk_1DC524420);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_54_3();
  v7 = *a1;
  swift_getKeyPath();
  v8 = *MEMORY[0x1E69D0380];
  v9 = sub_1DC51592C();
  OUTLINED_FUNCTION_35(v9);
  (*(v10 + 104))(v1, v8, v9);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v9);
  OUTLINED_FUNCTION_55();
  return sub_1DC514FDC();
}

void sub_1DC42D528()
{
  OUTLINED_FUNCTION_33();
  v124 = v2;
  v125 = v3;
  OUTLINED_FUNCTION_384();
  v122 = sub_1DC51587C();
  v4 = OUTLINED_FUNCTION_0(v122);
  v120 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v121 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB20, &unk_1DC529C40);
  v10 = OUTLINED_FUNCTION_10(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v123 = v14;
  OUTLINED_FUNCTION_12();
  v15 = sub_1DC5157CC();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v118 - v22;
  v24 = sub_1DC5157EC();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v30 = *(v27 + 16);
  v31 = OUTLINED_FUNCTION_187();
  v32(v31);
  v33 = *(v27 + 88);
  v34 = OUTLINED_FUNCTION_45_2();
  v36 = v35(v34);
  v37 = v36;
  v38 = *MEMORY[0x1E69D02E8];
  if (v36 != v38)
  {
    if (v36 == *MEMORY[0x1E69D02D0])
    {
      OUTLINED_FUNCTION_433();
      v50 = OUTLINED_FUNCTION_45_2();
      v51(v50);
      v52 = sub_1DC321880(*v0);
      v54 = v53;

      MEMORY[0x1EEE9AC00](v55);
      v118[-4] = v52;
      v118[-3] = v54;
      v118[-2] = v124;
      OUTLINED_FUNCTION_1_38();
      sub_1DC43F1F8(v56, v57);
      OUTLINED_FUNCTION_59_2();
      sub_1DC51501C();

      v58 = *(v18 + 32);
      v59 = v125;
      v60 = OUTLINED_FUNCTION_220_0();
      v61(v60);
      (*(v27 + 104))(v59, v38, v24);
      v62 = v59;
LABEL_5:
      v63 = 0;
LABEL_13:
      v79 = 1;
      v80 = v24;
      goto LABEL_20;
    }

    if (v36 == *MEMORY[0x1E69D02C8])
    {
      v119 = v18;
      v64 = v27;
      OUTLINED_FUNCTION_433();
      v65 = v24;
      v66(v0, v24);
      v67 = v123;
      sub_1DC408B88(*v0, v123);

      sub_1DC4465D4();
      v68 = sub_1DC51588C();
      OUTLINED_FUNCTION_11_6(v1);
      if (v110)
      {
        OUTLINED_FUNCTION_59_2();
        sub_1DC28EB30(v69, v70, v71);
        OUTLINED_FUNCTION_59_2();
        sub_1DC28EB30(v72, v73, v74);
      }

      else
      {
        v81 = *(v68 - 8);
        v82 = v81[11];
        v83 = OUTLINED_FUNCTION_117_0();
        if (v84(v83) == *MEMORY[0x1E69D0330])
        {
          v85 = v81[12];
          v86 = OUTLINED_FUNCTION_117_0();
          v87(v86);
          v88 = v120;
          v89 = v121;
          v90 = (*(v120 + 32))();
          v118[1] = v118;
          MEMORY[0x1EEE9AC00](v90);
          v91 = v124;
          v118[-2] = v89;
          v118[-1] = v91;
          OUTLINED_FUNCTION_1_38();
          sub_1DC43F1F8(v92, v93);
          OUTLINED_FUNCTION_59_2();
          sub_1DC51501C();
          sub_1DC28EB30(v67, &qword_1ECC7CB20, &unk_1DC529C40);
          v94 = *(v119 + 32);
          v95 = v125;
          v96 = OUTLINED_FUNCTION_220_0();
          v97(v96);
          (*(v64 + 104))(v95, v38, v65);
          OUTLINED_FUNCTION_61();
          __swift_storeEnumTagSinglePayload(v98, v99, v100, v65);
          (*(v88 + 8))(v121, v122);
          goto LABEL_21;
        }

        sub_1DC28EB30(v67, &qword_1ECC7CB20, &unk_1DC529C40);
        v107 = v81[1];
        v108 = OUTLINED_FUNCTION_117_0();
        v109(v108);
      }

      OUTLINED_FUNCTION_19();
      v80 = v65;
LABEL_20:
      __swift_storeEnumTagSinglePayload(v62, v63, v79, v80);
      goto LABEL_21;
    }

    if (v36 == *MEMORY[0x1E69D02E0])
    {
      v75 = *(v27 + 8);
      v76 = OUTLINED_FUNCTION_45_2();
      v77(v76);
      v78 = v125;
    }

    else
    {
      v78 = v125;
      if (v36 == *MEMORY[0x1E69D02D8])
      {
        MEMORY[0x1EEE9AC00](v36);
        v118[-2] = v101;
        OUTLINED_FUNCTION_1_38();
        sub_1DC43F1F8(v102, v103);
        OUTLINED_FUNCTION_59_2();
        sub_1DC51501C();
        v104 = *(v18 + 32);
        v105 = OUTLINED_FUNCTION_75();
        v106(v105);
        (*(v27 + 104))(v78, v38, v24);
        v62 = v78;
        goto LABEL_5;
      }

      v110 = v36 == *MEMORY[0x1E69D02F8] || v36 == *MEMORY[0x1E69D02F0];
      if (!v110)
      {
        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v111, v112, v113, v24);
        v114 = *(v27 + 8);
        v115 = OUTLINED_FUNCTION_45_2();
        v117(v115, v116);
        goto LABEL_21;
      }
    }

    v62 = v78;
    v63 = 1;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_433();
  v39 = OUTLINED_FUNCTION_45_2();
  v40(v39);
  v41 = *(v18 + 32);
  OUTLINED_FUNCTION_272_0();
  v42 = v41();
  v123 = v118;
  MEMORY[0x1EEE9AC00](v42);
  v43 = v124;
  v118[-2] = v23;
  v118[-1] = v43;
  OUTLINED_FUNCTION_1_38();
  sub_1DC43F1F8(v44, v45);
  OUTLINED_FUNCTION_272_0();
  sub_1DC51501C();
  v46 = v125;
  OUTLINED_FUNCTION_59_2();
  v41();
  (*(v27 + 104))(v46, v37, v24);
  v47 = OUTLINED_FUNCTION_56_13();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v24);
  (*(v18 + 8))(v23, v15);
LABEL_21:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC42DD54(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB90, &unk_1DC524420);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_28_13();
  v10 = *a1;
  swift_getKeyPath();
  v11 = sub_1DC5157AC();
  OUTLINED_FUNCTION_472(v11, v12);
  swift_getKeyPath();
  v13 = sub_1DC51579C();
  OUTLINED_FUNCTION_472(v13, v14);
  swift_getKeyPath();
  sub_1DC51578C();
  OUTLINED_FUNCTION_54_2();
  sub_1DC514FDC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_2();
  v15 = sub_1DC51592C();
  OUTLINED_FUNCTION_35(v15);
  v17 = *(v16 + 16);
  v18 = OUTLINED_FUNCTION_36();
  v19(v18);
  v20 = OUTLINED_FUNCTION_56_13();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v15);
  OUTLINED_FUNCTION_62_2();
  return sub_1DC514FDC();
}

uint64_t sub_1DC42DED0()
{
  OUTLINED_FUNCTION_42_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB90, &unk_1DC524420);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_3();
  v5 = *v0;
  swift_getKeyPath();
  v6 = sub_1DC51592C();
  OUTLINED_FUNCTION_35(v6);
  v8 = *(v7 + 16);
  v9 = OUTLINED_FUNCTION_36();
  v10(v9);
  v11 = OUTLINED_FUNCTION_56_13();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
  OUTLINED_FUNCTION_65_1();
  return sub_1DC514FDC();
}

uint64_t sub_1DC42DF9C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB90, &unk_1DC524420);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_3();
  v6 = *a1;
  swift_getKeyPath();

  sub_1DC514FDC();
  swift_getKeyPath();

  sub_1DC514FDC();
  swift_getKeyPath();
  v7 = sub_1DC51592C();
  OUTLINED_FUNCTION_35(v7);
  v9 = *(v8 + 16);
  v10 = OUTLINED_FUNCTION_36();
  v11(v10);
  v12 = OUTLINED_FUNCTION_56_13();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  OUTLINED_FUNCTION_65_1();
  return sub_1DC514FDC();
}

void sub_1DC42E0C8()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB90, &unk_1DC524420);
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_24_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_11_1();
  v16 = *v3;
  swift_getKeyPath();
  v17 = sub_1DC51582C();
  OUTLINED_FUNCTION_471(v17, v18);
  swift_getKeyPath();
  v19 = sub_1DC51581C();
  OUTLINED_FUNCTION_471(v19, v20);
  swift_getKeyPath();
  sub_1DC51580C();
  v21 = sub_1DC5157FC();
  LODWORD(v3) = __swift_getEnumTagSinglePayload(v1, 1, v21);
  sub_1DC28EB30(v1, &qword_1ECC7BF08, &unk_1DC522330);
  if (v3 == 1)
  {
    sub_1DC51589C();
    OUTLINED_FUNCTION_19();
  }

  else
  {
    v26 = *MEMORY[0x1E69D0350];
    v27 = sub_1DC51589C();
    OUTLINED_FUNCTION_35(v27);
    (*(v28 + 104))(v0, v26, v27);
    OUTLINED_FUNCTION_61();
    v25 = v27;
  }

  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_1DC514FDC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_2();
  v29 = sub_1DC51592C();
  OUTLINED_FUNCTION_35(v29);
  v31 = *(v30 + 16);
  v32 = OUTLINED_FUNCTION_36();
  v33(v32);
  v34 = OUTLINED_FUNCTION_56_13();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v29);
  OUTLINED_FUNCTION_62_2();
  sub_1DC514FDC();
  OUTLINED_FUNCTION_34();
}

id sub_1DC42E324()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLRouterService(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DC42E35C()
{
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_140_0();
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_11_16();
  v10 = (*(v3 + 360) + **(v3 + 360));
  v4 = *(*(v3 + 360) + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_1(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_453(v6);

  return v10(v8);
}

uint64_t sub_1DC42E480()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_11_16();
  return (*(v3 + 352))() & 1;
}

void static TurnSummary.ExecutionSource.== infix(_:_:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_384();
  v2 = sub_1DC5161CC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v8 = type metadata accessor for TurnSummary.ExecutionSource(0);
  v9 = OUTLINED_FUNCTION_10(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA68, &unk_1DC52A780);
  OUTLINED_FUNCTION_10(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_47_7();
  v17 = *(v16 + 56);
  sub_1DC43F610();
  sub_1DC43F610();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
  switch(__swift_getEnumTagSinglePayload(v0, 4, v18))
  {
    case 1u:
      OUTLINED_FUNCTION_39(v0 + v17, 4, v18);
      if (v22)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 2u:
      if (OUTLINED_FUNCTION_291_0() != 2)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 3u:
      if (OUTLINED_FUNCTION_291_0() != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 4u:
      if (OUTLINED_FUNCTION_291_0() != 4)
      {
        goto LABEL_7;
      }

LABEL_5:
      OUTLINED_FUNCTION_40_15();
      sub_1DC43F4A8();
      break;
    default:
      OUTLINED_FUNCTION_202_2();
      OUTLINED_FUNCTION_46_6();
      sub_1DC43F610();
      if (OUTLINED_FUNCTION_291_0())
      {
        v19 = *(v5 + 8);
        v20 = OUTLINED_FUNCTION_72();
        v21(v20);
LABEL_7:
        sub_1DC28EB30(v0, &qword_1ECC7DA68, &unk_1DC52A780);
      }

      else
      {
        OUTLINED_FUNCTION_42_5();
        v23(v1, v0 + v17, v2);
        OUTLINED_FUNCTION_73();
        sub_1DC5161BC();
        v24 = *(v5 + 8);
        v25 = OUTLINED_FUNCTION_62_2();
        v24(v25);
        v26 = OUTLINED_FUNCTION_72();
        v24(v26);
        OUTLINED_FUNCTION_40_15();
        sub_1DC43F4A8();
      }

      break;
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC42E79C()
{
  OUTLINED_FUNCTION_42_0();
  v3 = v1 == 0x5869726973 && v2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x72656E6E616C70 && v0 == 0xE700000000000000;
    if (v5 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_462();
      v6 = v3 && v0 == 0xE500000000000000;
      if (v6 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v7 = v1 == 0x6372616553617170 && v0 == 0xE900000000000068;
        if (v7 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
        {

          return 3;
        }

        else if (v1 == 0xD000000000000010 && 0x80000001DC548200 == v0)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_53_16();
          OUTLINED_FUNCTION_168();
          if (v1)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1DC42E8E8(char a1)
{
  result = 0x5869726973;
  switch(a1)
  {
    case 1:
      result = 0x72656E6E616C70;
      break;
    case 2:
      result = 0x49416E6567;
      break;
    case 3:
      result = 0x6372616553617170;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DC42E980(uint64_t a1, uint64_t a2)
{
  if (a1 == 1819242356 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_267_0();
    OUTLINED_FUNCTION_168();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DC42EA14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC42E79C();
  *a1 = result;
  return result;
}

uint64_t sub_1DC42EA44()
{
  sub_1DC43F774();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC42EA7C()
{
  sub_1DC43F774();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC42EB08()
{
  sub_1DC43F870();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC42EB40()
{
  sub_1DC43F870();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC42EB78()
{
  sub_1DC43F7C8();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC42EBB0()
{
  sub_1DC43F7C8();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC42EBE8()
{
  sub_1DC43F8C4();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC42EC20()
{
  sub_1DC43F8C4();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC42EC58()
{
  sub_1DC43F81C();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC42EC90()
{
  sub_1DC43F81C();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC42ECC8()
{
  sub_1DC43F918();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC42ED00()
{
  sub_1DC43F918();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void TurnSummary.ExecutionSource.encode(to:)()
{
  OUTLINED_FUNCTION_28_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA70, &qword_1DC52A790);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_60_12(v6);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA78, &qword_1DC52A798);
  OUTLINED_FUNCTION_0(v58);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA80, &qword_1DC52A7A0);
  OUTLINED_FUNCTION_0(v60);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12();
  v59 = sub_1DC5161CC();
  v13 = OUTLINED_FUNCTION_0(v59);
  v57 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_1();
  v56 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA88, &qword_1DC52A7A8);
  OUTLINED_FUNCTION_0(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_95();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA90, &qword_1DC52A7B0);
  OUTLINED_FUNCTION_0(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  v26 = OUTLINED_FUNCTION_31_18();
  v27 = type metadata accessor for TurnSummary.ExecutionSource(v26);
  v28 = OUTLINED_FUNCTION_10(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA98, &qword_1DC52A7B8);
  OUTLINED_FUNCTION_0(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_30_1();
  v39 = *(v1 + 24);
  v38 = *(v1 + 32);
  v40 = OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_121_1(v40, v41);
  sub_1DC43F774();
  sub_1DC51835C();
  OUTLINED_FUNCTION_202_2();
  sub_1DC43F610();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
  v42 = OUTLINED_FUNCTION_262_0();
  switch(__swift_getEnumTagSinglePayload(v42, 4, v43))
  {
    case 1u:
      sub_1DC43F918();
      OUTLINED_FUNCTION_124_1();
      sub_1DC51817C();
      v51 = OUTLINED_FUNCTION_259_0();
      v52 = v22;
      goto LABEL_7;
    case 2u:
      OUTLINED_FUNCTION_342_0();
      sub_1DC43F8C4();
      OUTLINED_FUNCTION_124_1();
      sub_1DC51817C();
      v51 = OUTLINED_FUNCTION_209();
      goto LABEL_7;
    case 3u:
      OUTLINED_FUNCTION_343_0();
      sub_1DC43F81C();
      OUTLINED_FUNCTION_124_1();
      sub_1DC51817C();
      v51 = OUTLINED_FUNCTION_240_0();
      v52 = v58;
      goto LABEL_7;
    case 4u:
      OUTLINED_FUNCTION_352_0();
      sub_1DC43F7C8();
      OUTLINED_FUNCTION_124_1();
      sub_1DC51817C();
      v51 = OUTLINED_FUNCTION_240_0();
LABEL_7:
      v53(v51, v52);
      v54 = OUTLINED_FUNCTION_258_0();
      v55(v54, v34);
      break;
    default:
      OUTLINED_FUNCTION_42_5();
      v44(v56, v33, v59);
      OUTLINED_FUNCTION_187_1();
      sub_1DC43F870();
      OUTLINED_FUNCTION_124_1();
      sub_1DC51817C();
      OUTLINED_FUNCTION_48_10();
      sub_1DC43F1F8(v45, v46);
      sub_1DC51820C();
      v47 = OUTLINED_FUNCTION_259_0();
      v48(v47, v60);
      (*(v57 + 8))(v56, v59);
      v49 = OUTLINED_FUNCTION_258_0();
      v50(v49, v34);
      break;
  }

  OUTLINED_FUNCTION_30_13();
  OUTLINED_FUNCTION_26_0();
}

void TurnSummary.ExecutionSource.init(from:)()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v1;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DAA8, &qword_1DC52A7C0);
  OUTLINED_FUNCTION_0(v98);
  v96 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_60_12(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DAB0, &qword_1DC52A7C8);
  OUTLINED_FUNCTION_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_372_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DAB8, &qword_1DC52A7D0);
  v95 = OUTLINED_FUNCTION_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_49_14(v17, v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DAC0, &qword_1DC52A7D8);
  OUTLINED_FUNCTION_0(v94);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DAC8, &qword_1DC52A7E0);
  OUTLINED_FUNCTION_0(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_95();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DAD0, &unk_1DC52A7E8);
  OUTLINED_FUNCTION_0(v25);
  v97 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  v30 = OUTLINED_FUNCTION_31_18();
  v31 = type metadata accessor for TurnSummary.ExecutionSource(v30);
  v32 = OUTLINED_FUNCTION_35(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_8();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_38_3();
  v40 = v2[3];
  v39 = v2[4];
  v99 = v2;
  v41 = OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_121_1(v41, v42);
  sub_1DC43F774();
  OUTLINED_FUNCTION_283_0();
  sub_1DC51834C();
  if (!v0)
  {
    v43 = sub_1DC51816C();
    OUTLINED_FUNCTION_338_0(v43);
    if (!v44)
    {
      OUTLINED_FUNCTION_106_4();
      OUTLINED_FUNCTION_337_0();
      if (v49 == v50)
      {
        __break(1u);
        return;
      }

      v51 = *(v48 + v46);
      OUTLINED_FUNCTION_336_0(v45, v46, v47, v48);
      v53 = v52;
      v55 = v54;
      swift_unknownObjectRelease();
      if (v53 == v55 >> 1)
      {
        switch(v51)
        {
          case 1:
            OUTLINED_FUNCTION_342_0();
            sub_1DC43F8C4();
            OUTLINED_FUNCTION_65_6();
            sub_1DC5180AC();
            swift_unknownObjectRelease();
            v83 = OUTLINED_FUNCTION_209();
            v84(v83, v94);
            v85 = OUTLINED_FUNCTION_62_13();
            v86(v85);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
            v60 = OUTLINED_FUNCTION_260_0();
            v62 = 2;
            goto LABEL_15;
          case 2:
            OUTLINED_FUNCTION_187_1();
            sub_1DC43F870();
            OUTLINED_FUNCTION_65_6();
            sub_1DC5180AC();
            sub_1DC5161CC();
            OUTLINED_FUNCTION_48_10();
            sub_1DC43F1F8(v77, v78);
            sub_1DC51814C();
            swift_unknownObjectRelease();
            v87 = OUTLINED_FUNCTION_158_2();
            v88(v87, v95);
            v89 = *(v97 + 8);
            v90 = OUTLINED_FUNCTION_30();
            v91(v90);
            v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
            __swift_storeEnumTagSinglePayload(v37, 0, 4, v92);
            OUTLINED_FUNCTION_38_14();
            sub_1DC440004();
            goto LABEL_16;
          case 3:
            OUTLINED_FUNCTION_343_0();
            sub_1DC43F81C();
            OUTLINED_FUNCTION_65_6();
            sub_1DC5180AC();
            swift_unknownObjectRelease();
            v79 = OUTLINED_FUNCTION_209();
            v80(v79);
            v81 = OUTLINED_FUNCTION_62_13();
            v82(v81);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
            v60 = OUTLINED_FUNCTION_260_0();
            v62 = 3;
            goto LABEL_15;
          case 4:
            OUTLINED_FUNCTION_352_0();
            sub_1DC43F7C8();
            OUTLINED_FUNCTION_65_6();
            sub_1DC5180AC();
            swift_unknownObjectRelease();
            v72 = *(v96 + 8);
            v73 = OUTLINED_FUNCTION_220_0();
            v74(v73);
            v75 = OUTLINED_FUNCTION_62_13();
            v76(v75);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
            v60 = OUTLINED_FUNCTION_260_0();
            v62 = 4;
            goto LABEL_15;
          default:
            sub_1DC43F918();
            OUTLINED_FUNCTION_65_6();
            sub_1DC5180AC();
            swift_unknownObjectRelease();
            v56 = OUTLINED_FUNCTION_240_0();
            v57(v56);
            v58 = OUTLINED_FUNCTION_62_13();
            v59(v58);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
            v60 = OUTLINED_FUNCTION_260_0();
            v62 = 1;
LABEL_15:
            __swift_storeEnumTagSinglePayload(v60, v62, 4, v61);
LABEL_16:
            OUTLINED_FUNCTION_38_14();
            sub_1DC440004();
            v71 = v99;
            break;
        }

        goto LABEL_10;
      }
    }

    v63 = sub_1DC517F7C();
    OUTLINED_FUNCTION_236_1();
    swift_allocError();
    v65 = v64;
    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D670, &qword_1DC528AF8) + 48);
    *v65 = v31;
    sub_1DC5180BC();
    OUTLINED_FUNCTION_117_7();
    v67 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_7_1(v63);
    (*(v68 + 104))(v65);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_178_2();
    v69 = OUTLINED_FUNCTION_288();
    v70(v69);
  }

  v71 = v99;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  OUTLINED_FUNCTION_329_0();
  OUTLINED_FUNCTION_26_0();
}

uint64_t TurnSummary.responseText.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_43();
}

uint64_t TurnSummary.turnRoutingDecision.getter()
{
  v0 = OUTLINED_FUNCTION_57_0();
  v1 = *(type metadata accessor for TurnSummary(v0) + 36);
  return sub_1DC4465D4();
}

void static TurnSummary.== infix(_:_:)()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  OUTLINED_FUNCTION_384();
  v5 = sub_1DC5157EC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v65 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_385(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DAE0, &unk_1DC52A7F8);
  OUTLINED_FUNCTION_35(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_31_3();
  v19 = type metadata accessor for TurnSummary.ExecutionSource(0);
  v20 = OUTLINED_FUNCTION_35(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  OUTLINED_FUNCTION_10(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_78_8();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFB8, &unk_1DC52A4C0);
  OUTLINED_FUNCTION_35(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_24_0();
  v31 = v1[1];
  v32 = v4[1];
  if (!v31)
  {
    if (v32)
    {
      goto LABEL_38;
    }

LABEL_10:
    v34 = v1[3];
    v35 = v4[3];
    if (v34)
    {
      if (!v35)
      {
        goto LABEL_38;
      }

      v36 = v1[2] == v4[2] && v34 == v35;
      if (!v36 && (sub_1DC51825C() & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (v35)
    {
      goto LABEL_38;
    }

    v37 = v1[5];
    v38 = v4[5];
    if (v37)
    {
      if (!v38)
      {
        goto LABEL_38;
      }

      v39 = v1[4] == v4[4] && v37 == v38;
      if (!v39 && (sub_1DC51825C() & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (v38)
    {
      goto LABEL_38;
    }

    v62 = v5;
    v63 = type metadata accessor for TurnSummary(0);
    v40 = v63[7];
    v41 = *(v27 + 48);
    sub_1DC4465D4();
    sub_1DC4465D4();
    OUTLINED_FUNCTION_14_2(v2);
    if (v33)
    {
      OUTLINED_FUNCTION_14_2(v2 + v41);
      if (v33)
      {
        sub_1DC28EB30(v2, &qword_1ECC7BFC8, &unk_1DC524050);
LABEL_40:
        v48 = v63[8];
        v49 = *(v1 + v48);
        v50 = *(v4 + v48);
        if (v49 == 2)
        {
          if (v50 != 2)
          {
            goto LABEL_38;
          }
        }

        else if (v50 == 2 || ((v50 ^ v49) & 1) != 0)
        {
          goto LABEL_38;
        }

        v51 = v63[9];
        v52 = *(v15 + 48);
        OUTLINED_FUNCTION_96_4();
        sub_1DC4465D4();
        OUTLINED_FUNCTION_96_4();
        sub_1DC4465D4();
        OUTLINED_FUNCTION_39(v0, 1, v62);
        if (v33)
        {
          OUTLINED_FUNCTION_39(v0 + v52, 1, v62);
          if (v33)
          {
            sub_1DC28EB30(v0, &qword_1ECC7CA40, &unk_1DC5233A0);
            goto LABEL_38;
          }
        }

        else
        {
          sub_1DC4465D4();
          OUTLINED_FUNCTION_39(v0 + v52, 1, v62);
          if (!v53)
          {
            (*(v65 + 32))(v64, v0 + v52, v62);
            OUTLINED_FUNCTION_2_36();
            sub_1DC43F1F8(v57, v58);
            OUTLINED_FUNCTION_413();
            v59 = *(v65 + 8);
            v60 = OUTLINED_FUNCTION_35_0();
            v59(v60);
            v61 = OUTLINED_FUNCTION_149();
            v59(v61);
            sub_1DC28EB30(v0, &qword_1ECC7CA40, &unk_1DC5233A0);
            goto LABEL_38;
          }

          v54 = *(v65 + 8);
          v55 = OUTLINED_FUNCTION_46_6();
          v56(v55);
        }

        v43 = &qword_1ECC7DAE0;
        v44 = &unk_1DC52A7F8;
        v45 = v0;
LABEL_37:
        sub_1DC28EB30(v45, v43, v44);
        goto LABEL_38;
      }
    }

    else
    {
      sub_1DC4465D4();
      OUTLINED_FUNCTION_14_2(v2 + v41);
      if (!v42)
      {
        OUTLINED_FUNCTION_38_14();
        sub_1DC440004();
        static TurnSummary.ExecutionSource.== infix(_:_:)();
        v47 = v46;
        sub_1DC43F4A8();
        sub_1DC43F4A8();
        sub_1DC28EB30(v2, &qword_1ECC7BFC8, &unk_1DC524050);
        if ((v47 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_40;
      }

      OUTLINED_FUNCTION_40_15();
      sub_1DC43F4A8();
    }

    v43 = &qword_1ECC7BFB8;
    v44 = &unk_1DC52A4C0;
    v45 = v2;
    goto LABEL_37;
  }

  if (v32)
  {
    v33 = *v1 == *v4 && v31 == v32;
    if (v33 || (sub_1DC51825C() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_38:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC4301A4()
{
  OUTLINED_FUNCTION_42_0();
  v3 = v1 == OUTLINED_FUNCTION_397() && v0 == v2;
  if (v3 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v1 == OUTLINED_FUNCTION_416() && v0 == v5;
    if (v6 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_151_3();
      v8 = v3 && v7 == v0;
      if (v8 || (OUTLINED_FUNCTION_53_16() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = v1 == OUTLINED_FUNCTION_396() && v0 == v9;
        if (v10 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v12 = v1 == OUTLINED_FUNCTION_395() && v0 == v11;
          if (v12 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
          {

            return 4;
          }

          else if (v1 == 0xD000000000000013 && 0x80000001DC548240 == v0)
          {

            return 5;
          }

          else
          {
            OUTLINED_FUNCTION_32_13();
            OUTLINED_FUNCTION_168();
            if (v1)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

void sub_1DC4302E4()
{
  OUTLINED_FUNCTION_397();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_416();
      break;
    case 2:
      OUTLINED_FUNCTION_31_1();
      break;
    case 3:
      OUTLINED_FUNCTION_396();
      break;
    case 4:
      OUTLINED_FUNCTION_395();
      break;
    default:
      return;
  }
}

uint64_t sub_1DC4303C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC4301A4();
  *a1 = result;
  return result;
}

uint64_t sub_1DC4303F0()
{
  sub_1DC43F96C();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC430428()
{
  sub_1DC43F96C();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void TurnSummary.encode(to:)()
{
  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_143_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DAE8, &qword_1DC52A808);
  OUTLINED_FUNCTION_3_33(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_7_19();
  sub_1DC43F96C();
  OUTLINED_FUNCTION_118_4();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_136_4();
  sub_1DC51818C();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    OUTLINED_FUNCTION_281();
    OUTLINED_FUNCTION_136_4();
    sub_1DC51818C();
    v10 = v1[4];
    v11 = v1[5];
    OUTLINED_FUNCTION_187_1();
    OUTLINED_FUNCTION_136_4();
    sub_1DC51818C();
    v12 = type metadata accessor for TurnSummary(0);
    v13 = v12[7];
    OUTLINED_FUNCTION_449();
    type metadata accessor for TurnSummary.ExecutionSource(0);
    OUTLINED_FUNCTION_196_2();
    sub_1DC43F1F8(v14, v15);
    OUTLINED_FUNCTION_36_19();
    sub_1DC5181AC();
    v16 = *(v1 + v12[8]);
    OUTLINED_FUNCTION_136_4();
    sub_1DC51819C();
    v17 = v12[9];
    sub_1DC5157EC();
    OUTLINED_FUNCTION_2_36();
    sub_1DC43F1F8(v18, v19);
    OUTLINED_FUNCTION_36_19();
    sub_1DC5181AC();
  }

  v20 = OUTLINED_FUNCTION_104_3();
  v21(v20);
  OUTLINED_FUNCTION_381();
  OUTLINED_FUNCTION_37_9();
}

uint64_t sub_1DC430668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W7>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v10 = type metadata accessor for TurnSummary(0);
  v11 = v10[7];
  sub_1DC440B84();
  *(a8 + v10[8]) = a7;
  v12 = v10[9];
  return sub_1DC440B84();
}

void TurnSummary.init(from:)()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_24_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_47_7();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DAF0, &qword_1DC52A810);
  OUTLINED_FUNCTION_0(v35);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78_8();
  v34 = type metadata accessor for TurnSummary(0);
  v14 = OUTLINED_FUNCTION_35(v34);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_1();
  v18 = v17;
  v19 = v2[3];
  v20 = v2[4];
  v21 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_121_1(v21, v22);
  sub_1DC43F96C();
  OUTLINED_FUNCTION_434();
  sub_1DC51834C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_269_0();
    *v18 = sub_1DC5180CC();
    v18[1] = v23;
    OUTLINED_FUNCTION_281();
    OUTLINED_FUNCTION_269_0();
    v18[2] = sub_1DC5180CC();
    v18[3] = v24;
    OUTLINED_FUNCTION_187_1();
    OUTLINED_FUNCTION_269_0();
    v18[4] = sub_1DC5180CC();
    v18[5] = v25;
    type metadata accessor for TurnSummary.ExecutionSource(0);
    OUTLINED_FUNCTION_449();
    OUTLINED_FUNCTION_196_2();
    sub_1DC43F1F8(v26, v27);
    OUTLINED_FUNCTION_269_0();
    sub_1DC5180EC();
    v28 = v34[7];
    sub_1DC440B84();
    OUTLINED_FUNCTION_269_0();
    *(v18 + v34[8]) = sub_1DC5180DC();
    sub_1DC5157EC();
    OUTLINED_FUNCTION_2_36();
    sub_1DC43F1F8(v29, v30);
    OUTLINED_FUNCTION_269_0();
    sub_1DC5180EC();
    v31 = OUTLINED_FUNCTION_250_0();
    v32(v31);
    v33 = v34[9];
    sub_1DC440B84();
    OUTLINED_FUNCTION_44_14();
    sub_1DC43F610();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    OUTLINED_FUNCTION_43_15();
    sub_1DC43F4A8();
  }

  OUTLINED_FUNCTION_382();
  OUTLINED_FUNCTION_26_0();
}

uint64_t RequestSummary.userQuery.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_43();
}

uint64_t sub_1DC430BF8()
{
  OUTLINED_FUNCTION_42_0();
  v3 = v1 == 0x7972657571 && v2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 7364980 && v0 == 0xE300000000000000;
    if (v5 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 1701736302 && v0 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_32_13();
      OUTLINED_FUNCTION_168();
      OUTLINED_FUNCTION_460();
      if (v3)
      {
        return v7 + 1;
      }

      else
      {
        return v7;
      }
    }
  }
}

uint64_t sub_1DC430CD0(char a1)
{
  if (!a1)
  {
    return 0x7972657571;
  }

  if (a1 == 1)
  {
    return 7364980;
  }

  return 1701736302;
}

uint64_t sub_1DC430D1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC430BF8();
  *a1 = result;
  return result;
}

uint64_t sub_1DC430D44()
{
  sub_1DC43F9C0();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC430D7C()
{
  sub_1DC43F9C0();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC430DB4()
{
  sub_1DC43FA14();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC430DEC()
{
  sub_1DC43FA14();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC430E24()
{
  sub_1DC43FABC();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC430E5C()
{
  sub_1DC43FABC();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC430E94()
{
  sub_1DC43FA68();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC430ECC()
{
  sub_1DC43FA68();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void RequestSummary.UserInputType.encode(to:)()
{
  OUTLINED_FUNCTION_28_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DB00, &qword_1DC52A818);
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DB08, &qword_1DC52A820);
  OUTLINED_FUNCTION_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_60_12(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DB10, &qword_1DC52A828);
  OUTLINED_FUNCTION_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_54_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DB18, &qword_1DC52A830);
  OUTLINED_FUNCTION_0(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_30_1();
  v23 = *v0;
  v24 = v3[4];
  OUTLINED_FUNCTION_121_1(v3, v3[3]);
  sub_1DC43F9C0();
  sub_1DC51835C();
  if (v23)
  {
    if (v23 == 1)
    {
      OUTLINED_FUNCTION_281();
      sub_1DC43FA68();
    }

    else
    {
      OUTLINED_FUNCTION_344_0();
      sub_1DC43FA14();
    }

    OUTLINED_FUNCTION_148_2();
    sub_1DC51817C();
  }

  else
  {
    sub_1DC43FABC();
    OUTLINED_FUNCTION_148_2();
    sub_1DC51817C();
  }

  v25 = OUTLINED_FUNCTION_239();
  v26(v25);
  (*(v19 + 8))(v1, v17);
  OUTLINED_FUNCTION_26_0();
}

void RequestSummary.UserInputType.init(from:)()
{
  OUTLINED_FUNCTION_28_1();
  v4 = v3;
  v58 = v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DB20, &qword_1DC52A838);
  OUTLINED_FUNCTION_0(v61);
  v59 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_385(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DB28, &qword_1DC52A840);
  OUTLINED_FUNCTION_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_11_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DB30, &qword_1DC52A848);
  OUTLINED_FUNCTION_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_24_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DB38, &qword_1DC52A850);
  OUTLINED_FUNCTION_3_33(v19);
  v60 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_28_13();
  v24 = v4[4];
  OUTLINED_FUNCTION_121_1(v4, v4[3]);
  sub_1DC43F9C0();
  OUTLINED_FUNCTION_422();
  sub_1DC51834C();
  if (!v1)
  {
    v62 = v4;
    v25 = sub_1DC51816C();
    OUTLINED_FUNCTION_338_0(v25);
    if (!v26)
    {
      OUTLINED_FUNCTION_106_4();
      OUTLINED_FUNCTION_337_0();
      if (v31 == v32)
      {
        __break(1u);
        return;
      }

      v33 = *(v30 + v28);
      OUTLINED_FUNCTION_336_0(v27, v28, v29, v30);
      v35 = v34;
      v37 = v36;
      swift_unknownObjectRelease();
      if (v35 == v37 >> 1)
      {
        if (v33)
        {
          if (v33 == 1)
          {
            OUTLINED_FUNCTION_281();
            sub_1DC43FA68();
            OUTLINED_FUNCTION_182_0();
            sub_1DC5180AC();
            v38 = v58;
            swift_unknownObjectRelease();
            v47 = OUTLINED_FUNCTION_219_1();
            v48(v47);
            (*(v60 + 8))(v2, v0);
          }

          else
          {
            OUTLINED_FUNCTION_344_0();
            sub_1DC43FA14();
            OUTLINED_FUNCTION_182_0();
            sub_1DC5180AC();
            v38 = v58;
            swift_unknownObjectRelease();
            v52 = *(v59 + 8);
            v53 = OUTLINED_FUNCTION_146_1();
            v54(v53);
            v55 = *(v60 + 8);
            v56 = OUTLINED_FUNCTION_87_1();
            v57(v56);
          }
        }

        else
        {
          sub_1DC43FABC();
          OUTLINED_FUNCTION_182_0();
          sub_1DC5180AC();
          swift_unknownObjectRelease();
          v49 = OUTLINED_FUNCTION_239();
          v50(v49, v15);
          OUTLINED_FUNCTION_122_2();
          v51(v2, v0);
          v38 = v58;
        }

        *v38 = v33;
        __swift_destroy_boxed_opaque_existential_1Tm(v62);
        goto LABEL_11;
      }
    }

    v39 = sub_1DC517F7C();
    OUTLINED_FUNCTION_236_1();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D670, &qword_1DC528AF8) + 48);
    *v41 = &type metadata for RequestSummary.UserInputType;
    sub_1DC5180BC();
    OUTLINED_FUNCTION_117_7();
    v43 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_7_1(v39);
    (*(v44 + 104))(v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_122_2();
    v45 = OUTLINED_FUNCTION_107();
    v46(v45);
    v4 = v62;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
LABEL_11:
  OUTLINED_FUNCTION_26_0();
}

uint64_t static RequestSummary.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v10 || (sub_1DC51825C() & 1) != 0)
  {
    if (v4)
    {
      if (v6)
      {
        if (v2 == v7 && v4 == v6)
        {
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_65_1();
        if (sub_1DC51825C())
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v6)
    {
LABEL_13:
      v12 = OUTLINED_FUNCTION_43();
      return sub_1DC431A10(v12, v13) & (v5 == v9);
    }
  }

  return 0;
}

void sub_1DC43185C()
{
  OUTLINED_FUNCTION_33();
  v33 = v2;
  v32 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8(0);
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_4();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_38_3();
  v16 = *(v7 + 16);
  if (v16 == *(v5 + 16) && v16 && v7 != v5)
  {
    v17 = *(v12 + 80);
    OUTLINED_FUNCTION_24();
    v19 = v7 + v18;
    v20 = v5 + v18;
    v22 = *(v12 + 16);
    v21 = v12 + 16;
    v23 = (v21 - 8);
    v30 = *(v21 + 56);
    v31 = v22;
    while (1)
    {
      v24 = OUTLINED_FUNCTION_54_2();
      v31(v24);
      if (!v16)
      {
        break;
      }

      v25 = v21;
      (v31)(v0, v20, v9);
      sub_1DC43F1F8(v32, v33);
      OUTLINED_FUNCTION_16();
      v26 = sub_1DC5176CC();
      v27 = *v23;
      v28 = OUTLINED_FUNCTION_19_6();
      v27(v28);
      (v27)(v1, v9);
      if (v26)
      {
        v20 += v30;
        v19 += v30;
        v29 = v16-- == 1;
        v21 = v25;
        if (!v29)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_34();
  }
}

uint64_t sub_1DC431A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TurnSummary(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = *(a1 + 16);
  if (v8 == *(a2 + 16))
  {
    if (!v8 || a1 == a2)
    {
      v14 = 1;
    }

    else
    {
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = a1 + v9;
      v11 = a2 + v9;
      v12 = *(v7 + 72);
      do
      {
        sub_1DC43F610();
        sub_1DC43F610();
        static TurnSummary.== infix(_:_:)();
        v14 = v13;
        sub_1DC43F4A8();
        sub_1DC43F4A8();
        if ((v14 & 1) == 0)
        {
          break;
        }

        v11 += v12;
        v10 += v12;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1DC431BC8()
{
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_369_0();
  v3 = v3 && v2 == 0xE900000000000064;
  if (v3 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x7265755172657375 && v0 == 0xE900000000000079;
    if (v5 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = v1 == OUTLINED_FUNCTION_402() && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
      {

        return 2;
      }

      else if (v1 == OUTLINED_FUNCTION_401() && v0 == v8)
      {

        return 3;
      }

      else
      {
        OUTLINED_FUNCTION_32_13();
        OUTLINED_FUNCTION_168();
        if (v1)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DC431CB8(char a1)
{
  result = 0x4974736575716572;
  switch(a1)
  {
    case 1:
      result = 0x7265755172657375;
      break;
    case 2:
      result = OUTLINED_FUNCTION_402();
      break;
    case 3:
      result = OUTLINED_FUNCTION_401();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DC431D48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC431BC8();
  *a1 = result;
  return result;
}

uint64_t sub_1DC431D70()
{
  sub_1DC43FB10();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC431DA8()
{
  sub_1DC43FB10();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void RequestSummary.encode(to:)()
{
  OUTLINED_FUNCTION_28_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DB40, &qword_1DC52A858);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_54_3();
  v10 = *v0;
  v11 = v0[1];
  v21 = v0[3];
  v22 = v0[2];
  v20 = v0[4];
  v19 = *(v0 + 40);
  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  v14 = OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_121_1(v14, v15);
  sub_1DC43FB10();
  sub_1DC51835C();
  sub_1DC5181BC();
  if (!v1)
  {
    OUTLINED_FUNCTION_281();
    OUTLINED_FUNCTION_180_0();
    sub_1DC51818C();
    OUTLINED_FUNCTION_187_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DB48, &qword_1DC52A860);
    sub_1DC43FB64();
    OUTLINED_FUNCTION_180_0();
    sub_1DC51820C();
    sub_1DC43FC18();
    OUTLINED_FUNCTION_180_0();
    sub_1DC51820C();
  }

  v16 = *(v6 + 8);
  v17 = OUTLINED_FUNCTION_159();
  v18(v17);
  OUTLINED_FUNCTION_26_0();
}

void RequestSummary.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  OUTLINED_FUNCTION_28_1();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DB50, &unk_1DC52A868);
  OUTLINED_FUNCTION_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_24_0();
  v20 = v13[4];
  OUTLINED_FUNCTION_121_1(v13, v13[3]);
  sub_1DC43FB10();
  OUTLINED_FUNCTION_283_0();
  sub_1DC51834C();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v21 = sub_1DC5180FC();
    v29 = v22;
    OUTLINED_FUNCTION_281();
    v23 = sub_1DC5180CC();
    v28 = v24;
    v27 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DB48, &qword_1DC52A860);
    OUTLINED_FUNCTION_187_1();
    sub_1DC43FC6C();
    sub_1DC51814C();
    sub_1DC43FD20();
    sub_1DC51814C();
    v25 = OUTLINED_FUNCTION_142_3();
    v26(v25);
    *v15 = v21;
    *(v15 + 8) = v29;
    *(v15 + 16) = v27;
    *(v15 + 24) = v28;
    *(v15 + 32) = v30;
    *(v15 + 40) = a11;

    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC432274@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a6;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = v7;
  return result;
}

uint64_t sub_1DC432300()
{
  v0 = OUTLINED_FUNCTION_140_5();
  v2 = *(v1(v0) + 28);
  OUTLINED_FUNCTION_270();
  return sub_1DC4465D4();
}

uint64_t NLRouterTurnContext.salientEntities.getter()
{
  v1 = *(v0 + *(type metadata accessor for NLRouterTurnContext(0) + 36));
}

uint64_t NLRouterTurnContext.appIntentEntities.getter()
{
  v1 = *(v0 + *(type metadata accessor for NLRouterTurnContext(0) + 40));
}

uint64_t NLRouterTurnContext.inputOrigin.getter()
{
  v0 = OUTLINED_FUNCTION_57_0();
  v1 = *(type metadata accessor for NLRouterTurnContext(v0) + 48);
  return sub_1DC4465D4();
}

uint64_t sub_1DC43243C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, char a6@<W7>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  v11 = type metadata accessor for NLRouterTurnContext(0);
  v12 = v11[7];
  sub_1DC440B84();
  v13 = v11[8];
  sub_1DC440B84();
  *(a7 + v11[9]) = a4;
  *(a7 + v11[10]) = a5;
  *(a7 + v11[11]) = a6;
  v14 = v11[12];
  return sub_1DC440B84();
}

uint64_t sub_1DC432518()
{
  OUTLINED_FUNCTION_465();
  sub_1DC51808C();
  OUTLINED_FUNCTION_23_2();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

void sub_1DC432560(char a1)
{
  switch(a1)
  {
    case 2:
      OUTLINED_FUNCTION_31_1();
      break;
    case 7:
      OUTLINED_FUNCTION_264_0();
      break;
    default:
      return;
  }
}

uint64_t sub_1DC4326A0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0x7372615072657375;
  }

  if (v2)
  {
    v4 = 0xEA00000000007365;
  }

  else
  {
    v4 = 0x80000001DC5477F0;
  }

  if (a2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x7372615072657375;
  }

  if (a2)
  {
    v6 = 0x80000001DC5477F0;
  }

  else
  {
    v6 = 0xEA00000000007365;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC432748(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x7372615072657375;
  v4 = a1;
  v5 = 0x7372615072657375;
  v6 = 0xE900000000000065;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000010;
      v6 = 0x80000001DC5477B0;
      break;
    case 2:
      v5 = 0x6C646E7542707061;
      v6 = 0xEB00000000644965;
      break;
    case 3:
      v5 = 0x646E4970756F7267;
      v6 = 0xEA00000000007865;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000010;
      v2 = 0x80000001DC5477B0;
      break;
    case 2:
      v3 = 0x6C646E7542707061;
      v2 = 0xEB00000000644965;
      break;
    case 3:
      v3 = 0x646E4970756F7267;
      v2 = 0xEA00000000007865;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC4328B4(char a1, char a2)
{
  sub_1DC432560(a1);
  v4 = v3;
  v6 = v5;
  sub_1DC432560(a2);
  if (v4 == v8 && v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DC51825C();
  }

  return v10 & 1;
}

uint64_t sub_1DC432940(char a1)
{
  sub_1DC5182FC();
  sub_1DC432560(a1);
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC4329A4()
{
  sub_1DC5182FC();
  sub_1DC432A74();
  return sub_1DC51833C();
}

uint64_t sub_1DC432A00()
{
  sub_1DC51769C();
}

uint64_t sub_1DC432A74()
{
  sub_1DC51769C();
}

uint64_t sub_1DC432B40(uint64_t a1, char a2)
{
  sub_1DC432560(a2);
  sub_1DC51769C();
}

uint64_t sub_1DC432B9C(uint64_t a1, char a2)
{
  sub_1DC5182FC();
  sub_1DC432560(a2);
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC432BFC()
{
  sub_1DC5182FC();
  sub_1DC432A74();
  return sub_1DC51833C();
}

uint64_t sub_1DC432C40()
{
  sub_1DC5182FC();
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC432CC8(void *a1)
{
  OUTLINED_FUNCTION_361(a1);
  result = sub_1DC432518();
  *v1 = result;
  return result;
}

void sub_1DC432CF0(void *a1@<X8>)
{
  sub_1DC432560(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1DC432D38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC43255C();
  *a1 = result;
  return result;
}

uint64_t sub_1DC432D68()
{
  sub_1DC43FD94();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC432DA0()
{
  sub_1DC43FD94();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void NLRouterTurnContext.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_28_1();
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_10(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49_14(v18, v77);
  v19 = sub_1DC5166BC();
  v20 = OUTLINED_FUNCTION_10(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v84 = sub_1DC5118BC();
  v23 = OUTLINED_FUNCTION_0(v84);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_1();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_10(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_47_7();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFE0, &unk_1DC5253A0);
  OUTLINED_FUNCTION_10(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_95();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DB70, &qword_1DC52A878);
  OUTLINED_FUNCTION_0(v34);
  v86 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_28_13();
  v39 = type metadata accessor for NLRouterTurnContext(0);
  v40 = OUTLINED_FUNCTION_35(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_3();
  v43 = v13[3];
  v44 = v13[4];
  v87 = v13;
  v45 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_121_1(v45, v46);
  sub_1DC43FD94();
  OUTLINED_FUNCTION_422();
  sub_1DC51834C();
  if (v10)
  {
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1Tm(v87);
    OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_26_0();
    return;
  }

  v88 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEA8, &qword_1DC52A880);
  sub_1DC43FDE8();
  OUTLINED_FUNCTION_251_1();
  OUTLINED_FUNCTION_362_0();
  v47 = a10;
  OUTLINED_FUNCTION_251_1();
  OUTLINED_FUNCTION_362_0();
  v48 = a10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCF0, &unk_1DC5253B0);
  sub_1DC43FE9C();
  OUTLINED_FUNCTION_72_8();
  OUTLINED_FUNCTION_144_4();
  sub_1DC51814C();
  sub_1DC5167EC();
  OUTLINED_FUNCTION_46_10();
  sub_1DC43F1F8(v49, v50);
  OUTLINED_FUNCTION_346();
  OUTLINED_FUNCTION_73_7();
  sub_1DC5180EC();
  v81 = a10;
  sub_1DC51190C();
  LOBYTE(a10) = 4;
  OUTLINED_FUNCTION_45_12();
  sub_1DC43F1F8(v51, v52);
  OUTLINED_FUNCTION_346();
  OUTLINED_FUNCTION_73_7();
  sub_1DC5180EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
  sub_1DC2BB778();
  OUTLINED_FUNCTION_72_8();
  OUTLINED_FUNCTION_144_4();
  sub_1DC51814C();
  v78 = v48;
  v53 = a10;
  v54 = *(a10 + 16);
  if (!v54)
  {

    v83 = MEMORY[0x1E69E7CC0];
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DBA8, &qword_1DC52A888);
    sub_1DC43FF50();
    OUTLINED_FUNCTION_72_8();
    OUTLINED_FUNCTION_144_4();
    sub_1DC51814C();
    OUTLINED_FUNCTION_439();
    v85 = sub_1DC51810C();
    sub_1DC515DFC();
    OUTLINED_FUNCTION_42_13();
    sub_1DC43F1F8(v69, v70);
    OUTLINED_FUNCTION_346();
    sub_1DC5180EC();
    v71 = *(v86 + 8);
    v72 = OUTLINED_FUNCTION_54_2();
    v73(v72);
    *v88 = v47;
    v88[1] = v78;
    v88[2] = v81;
    v74 = v39[7];
    sub_1DC440B84();
    v75 = v39[8];
    sub_1DC440B84();
    *(v88 + v39[9]) = v83;
    *(v88 + v39[10]) = a10;
    *(v88 + v39[11]) = v85 & 1;
    v76 = v39[12];
    sub_1DC440B84();
    sub_1DC440004();
    goto LABEL_3;
  }

  v89 = MEMORY[0x1E69E7CC0];
  v80 = v54;
  sub_1DC3241D0();
  v55 = 0;
  v83 = v89;
  v79 = v53;
  v56 = (v53 + 40);
  while (1)
  {
    v82 = v55;
    if (v55 >= *(v53 + 16))
    {
      break;
    }

    v57 = *(v56 - 1);
    v58 = *v56;

    sub_1DC5166AC();
    OUTLINED_FUNCTION_213_2();
    sub_1DC43F1F8(&qword_1ECC7BE08, v59);
    OUTLINED_FUNCTION_48_0();
    sub_1DC51674C();
    v60 = v83;
    a10 = v83;
    v62 = *(v83 + 16);
    v61 = *(v83 + 24);
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      OUTLINED_FUNCTION_26(v61);
      v68 = v67;
      sub_1DC3241D0();
      v63 = v68;
      v60 = v83;
    }

    *(v60 + 16) = v63;
    OUTLINED_FUNCTION_22_0();
    v83 = v64;
    (*(v66 + 32))(v64 + v65 + *(v66 + 72) * v62);
    v55 = v82 + 1;
    v56 += 2;
    v53 = v79;
    if (v80 == v82 + 1)
    {

      goto LABEL_12;
    }
  }

  __break(1u);
}

void NLRouterTurnContext.encode(to:)()
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_38_2();
  v3 = sub_1DC5166EC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v69 = v5;
  v71 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v72 = v8;
  OUTLINED_FUNCTION_12();
  v9 = sub_1DC5118BC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v73 = v11;
  v74 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DBC8, &unk_1DC52A890);
  OUTLINED_FUNCTION_3_33(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_11_1();
  v20 = v0[3];
  v21 = v0[4];
  v22 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_121_1(v22, v23);
  sub_1DC43FD94();
  OUTLINED_FUNCTION_375_0();
  OUTLINED_FUNCTION_454();
  sub_1DC51835C();
  v76 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEA8, &qword_1DC52A880);
  sub_1DC440058();
  OUTLINED_FUNCTION_252_0();
  OUTLINED_FUNCTION_454();
  sub_1DC51820C();
  if (v1)
  {
    v24 = *(v16 + 8);
    v25 = OUTLINED_FUNCTION_29_0();
    v26(v25);
LABEL_4:
    OUTLINED_FUNCTION_26_0();
    return;
  }

  v68 = v2;
  v75 = v16;
  v77 = v0[1];
  OUTLINED_FUNCTION_252_0();
  OUTLINED_FUNCTION_454();
  OUTLINED_FUNCTION_423();
  sub_1DC51820C();
  v78 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCF0, &unk_1DC5253B0);
  sub_1DC44010C();
  OUTLINED_FUNCTION_347_0();
  OUTLINED_FUNCTION_96_4();
  OUTLINED_FUNCTION_423();
  sub_1DC51820C();
  v27 = v0;
  v28 = type metadata accessor for NLRouterTurnContext(0);
  v29 = v28[7];
  OUTLINED_FUNCTION_339_0(3);
  sub_1DC5167EC();
  OUTLINED_FUNCTION_46_10();
  sub_1DC43F1F8(v30, v31);
  OUTLINED_FUNCTION_96_4();
  OUTLINED_FUNCTION_423();
  sub_1DC5181AC();
  v32 = v28[8];
  OUTLINED_FUNCTION_339_0(4);
  sub_1DC51190C();
  OUTLINED_FUNCTION_45_12();
  sub_1DC43F1F8(v33, v34);
  OUTLINED_FUNCTION_96_4();
  OUTLINED_FUNCTION_423();
  sub_1DC5181AC();
  v35 = *(v0 + v28[9]);
  v36 = *(v35 + 16);
  if (!v36)
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
    sub_1DC4401C0();
    OUTLINED_FUNCTION_347_0();
    OUTLINED_FUNCTION_96_4();
    sub_1DC51820C();

    v80 = *(v27 + v28[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DBA8, &qword_1DC52A888);
    sub_1DC44023C();
    OUTLINED_FUNCTION_252_0();
    sub_1DC51820C();
    v57 = *(v27 + v28[11]);
    OUTLINED_FUNCTION_439();
    sub_1DC5181CC();
    v58 = v28[12];
    OUTLINED_FUNCTION_339_0(8);
    sub_1DC515DFC();
    OUTLINED_FUNCTION_42_13();
    sub_1DC43F1F8(v59, v60);
    sub_1DC5181AC();
    v61 = *(v75 + 8);
    v62 = OUTLINED_FUNCTION_31_0();
    v63(v62);
    goto LABEL_4;
  }

  v79 = MEMORY[0x1E69E7CC0];
  v64 = *(v35 + 16);
  v67 = *(v0 + v28[9]);
  sub_1DC2DF6FC(0, v36, 0);
  v37 = 0;
  OUTLINED_FUNCTION_22_0();
  v39 = v67;
  v40 = v2;
  v65 = v67 + v41;
  v66 = (v69 + 8);
  v70 = (v38 + 8);
  while (v37 < *(v39 + 16))
  {
    (*(v38 + 16))(v40, v65 + *(v38 + 72) * v37, v74);
    sub_1DC5166DC();
    OUTLINED_FUNCTION_213_2();
    sub_1DC43F1F8(&qword_1ECC7BE08, v42);
    OUTLINED_FUNCTION_55();
    v43 = sub_1DC51673C();
    v45 = v44;
    v46 = v43;
    (*v66)(v72, v71);
    v47 = *v70;
    v48 = OUTLINED_FUNCTION_48_0();
    v49(v48);
    v51 = *(v79 + 16);
    v50 = *(v79 + 24);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      v54 = OUTLINED_FUNCTION_26(v50);
      v56 = v55;
      sub_1DC2DF6FC(v54, v55, 1);
      v52 = v56;
    }

    ++v37;
    *(v79 + 16) = v52;
    v53 = v79 + 16 * v51;
    *(v53 + 32) = v46;
    *(v53 + 40) = v45;
    v38 = v73;
    v39 = v67;
    v40 = v68;
    if (v64 == v37)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void static NLRouterTurnContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  OUTLINED_FUNCTION_155();
  v6 = sub_1DC515DFC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v116 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_372_0(v15);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D0, &qword_1DC522FB0);
  OUTLINED_FUNCTION_35(v109);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_50_13(v19, v105);
  v115 = sub_1DC51190C();
  v20 = OUTLINED_FUNCTION_0(v115);
  v113 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  v111 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_10(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_34_17(v29, v106);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DBD0, &qword_1DC52A8A0);
  OUTLINED_FUNCTION_35(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_25();
  v114 = v34;
  OUTLINED_FUNCTION_12();
  v35 = sub_1DC5167EC();
  v36 = OUTLINED_FUNCTION_0(v35);
  v117 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3_2();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFE0, &unk_1DC5253A0);
  OUTLINED_FUNCTION_10(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_24_0();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DBD8, &qword_1DC52A8A8);
  OUTLINED_FUNCTION_35(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_95();
  v48 = *v0;
  v49 = *v5;
  OUTLINED_FUNCTION_209_1();
  sub_1DC43185C();
  if ((v50 & 1) == 0)
  {
    goto LABEL_25;
  }

  v51 = v0[1];
  v52 = v5[1];
  OUTLINED_FUNCTION_209_1();
  sub_1DC43185C();
  if ((v53 & 1) == 0)
  {
    goto LABEL_25;
  }

  v54 = v0[2];
  v55 = v5[2];
  sub_1DC43185C();
  if ((v56 & 1) == 0)
  {
    goto LABEL_25;
  }

  v107 = v6;
  v108 = type metadata accessor for NLRouterTurnContext(0);
  v57 = *(v108 + 28);
  v58 = *(v44 + 48);
  sub_1DC4465D4();
  sub_1DC4465D4();
  OUTLINED_FUNCTION_14_2(v2);
  if (v59)
  {
    OUTLINED_FUNCTION_14_2(v2 + v58);
    if (v59)
    {
      sub_1DC28EB30(v2, &qword_1ECC7BFE0, &unk_1DC5253A0);
      goto LABEL_14;
    }

LABEL_12:
    v62 = &qword_1ECC7DBD8;
    v63 = &qword_1DC52A8A8;
LABEL_23:
    v78 = v2;
LABEL_24:
    sub_1DC28EB30(v78, v62, v63);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_74_0();
  sub_1DC4465D4();
  OUTLINED_FUNCTION_14_2(v2 + v58);
  if (v59)
  {
    v60 = OUTLINED_FUNCTION_259_0();
    v61(v60, v35);
    goto LABEL_12;
  }

  (*(v117 + 32))(v1, v2 + v58, v35);
  OUTLINED_FUNCTION_46_10();
  sub_1DC43F1F8(v64, v65);
  v66 = sub_1DC5176CC();
  v67 = *(v117 + 8);
  v68 = OUTLINED_FUNCTION_19_6();
  v67(v68);
  v69 = OUTLINED_FUNCTION_340_0();
  v67(v69);
  sub_1DC28EB30(v2, &qword_1ECC7BFE0, &unk_1DC5253A0);
  if ((v66 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  v70 = v108;
  v71 = *(v108 + 32);
  v72 = *(v30 + 48);
  v2 = v114;
  sub_1DC4465D4();
  v73 = v5;
  sub_1DC4465D4();
  OUTLINED_FUNCTION_39(v114, 1, v115);
  if (!v59)
  {
    sub_1DC4465D4();
    OUTLINED_FUNCTION_11_6(v114 + v72);
    v74 = v116;
    if (!v75)
    {
      OUTLINED_FUNCTION_42_5();
      v79(v111, v114 + v72, v115);
      OUTLINED_FUNCTION_45_12();
      sub_1DC43F1F8(v80, v81);
      OUTLINED_FUNCTION_16();
      v82 = sub_1DC5176CC();
      v83 = v73;
      v84 = *(v113 + 8);
      v85 = OUTLINED_FUNCTION_29_0();
      v84(v85);
      v70 = v108;
      (v84)(v112, v115);
      v73 = v83;
      sub_1DC28EB30(v114, &unk_1ECC7D3A0, &unk_1DC522560);
      if ((v82 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    v76 = OUTLINED_FUNCTION_147_4();
    v77(v76, v115);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_11_6(v114 + v72);
  v74 = v116;
  if (!v59)
  {
LABEL_22:
    v62 = &qword_1ECC7DBD0;
    v63 = &qword_1DC52A8A0;
    goto LABEL_23;
  }

  sub_1DC28EB30(v114, &unk_1ECC7D3A0, &unk_1DC522560);
LABEL_27:
  v86 = v70[9];
  v87 = *(v0 + v86);
  v88 = *(v73 + v86);
  sub_1DC43185C();
  if (v89)
  {
    v90 = v70[10];
    v91 = *(v0 + v90);
    v92 = *(v73 + v90);
    sub_1DC43185C();
    if ((v93 & 1) != 0 && *(v0 + v70[11]) == *(v73 + v70[11]))
    {
      v94 = v70[12];
      v95 = *(v109 + 48);
      OUTLINED_FUNCTION_96_4();
      sub_1DC4465D4();
      OUTLINED_FUNCTION_96_4();
      sub_1DC4465D4();
      OUTLINED_FUNCTION_39(v110, 1, v107);
      if (v59)
      {
        OUTLINED_FUNCTION_39(v110 + v95, 1, v107);
        if (v59)
        {
          sub_1DC28EB30(v110, &qword_1ECC7C1D8, &qword_1DC529390);
          goto LABEL_25;
        }
      }

      else
      {
        sub_1DC4465D4();
        OUTLINED_FUNCTION_39(v110 + v95, 1, v107);
        if (!v96)
        {
          (*(v74 + 32))(v3, v110 + v95, v107);
          OUTLINED_FUNCTION_42_13();
          sub_1DC43F1F8(v100, v101);
          OUTLINED_FUNCTION_413();
          v102 = *(v74 + 8);
          v103 = OUTLINED_FUNCTION_35_0();
          v102(v103);
          v104 = OUTLINED_FUNCTION_65_1();
          v102(v104);
          sub_1DC28EB30(v110, &qword_1ECC7C1D8, &qword_1DC529390);
          goto LABEL_25;
        }

        v97 = *(v74 + 8);
        v98 = OUTLINED_FUNCTION_46_6();
        v99(v98);
      }

      v62 = &qword_1ECC7C1D0;
      v63 = &qword_1DC522FB0;
      v78 = v110;
      goto LABEL_24;
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_34();
}

uint64_t NLRouterSiriXUSOParse.appBundleId.getter()
{
  v0 = type metadata accessor for NLRouterSiriXUSOParse(0);
  OUTLINED_FUNCTION_229_0(*(v0 + 24));
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_1DC4347AC()
{
  OUTLINED_FUNCTION_465();
  sub_1DC51808C();
  OUTLINED_FUNCTION_23_2();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DC4347F0(char a1)
{
  result = 0x7372615072657375;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6C646E7542707061;
      break;
    case 3:
      result = 0x646E4970756F7267;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DC4348AC(void *a1)
{
  OUTLINED_FUNCTION_361(a1);
  result = sub_1DC4347AC();
  *v1 = result;
  return result;
}

unint64_t sub_1DC4348D4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DC4347F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DC434908@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC4347AC();
  *a1 = result;
  return result;
}

uint64_t sub_1DC434930()
{
  sub_1DC440310();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC434968()
{
  sub_1DC440310();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void NLRouterSiriXUSOParse.init(from:)()
{
  OUTLINED_FUNCTION_28_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DBF0, &qword_1DC52A8B0);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_34_17(v9, v43);
  v10 = sub_1DC5166BC();
  v11 = OUTLINED_FUNCTION_10(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v14 = sub_1DC51122C();
  v15 = OUTLINED_FUNCTION_0(v14);
  v44 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DBF8, &qword_1DC52A8B8);
  OUTLINED_FUNCTION_3_33(v19);
  v45 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_31_18();
  v25 = type metadata accessor for NLRouterSiriXUSOParse(v24);
  v26 = OUTLINED_FUNCTION_35(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_3_2();
  v30 = v4[3];
  v29 = v4[4];
  OUTLINED_FUNCTION_95_5(v4);
  sub_1DC440310();
  OUTLINED_FUNCTION_283_0();
  sub_1DC51834C();
  if (!v0)
  {
    LOBYTE(v46) = 0;
    OUTLINED_FUNCTION_451();
    sub_1DC5180FC();
    sub_1DC5166AC();
    OUTLINED_FUNCTION_21_19();
    sub_1DC43F1F8(v31, v32);
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_451();
    sub_1DC51674C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DC00, &unk_1DC52A8C0);
    OUTLINED_FUNCTION_388();
    sub_1DC440364();
    OUTLINED_FUNCTION_330_0();
    OUTLINED_FUNCTION_96_4();
    sub_1DC51814C();
    if (v47)
    {
      sub_1DC510F7C();
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    }

    else
    {
      sub_1DC510F5C();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0A0, &unk_1DC524070);
    OUTLINED_FUNCTION_344_0();
    sub_1DC4403E0();
    OUTLINED_FUNCTION_330_0();
    OUTLINED_FUNCTION_96_4();
    sub_1DC51814C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DC18, &qword_1DC52A8D0);
    sub_1DC44045C();
    OUTLINED_FUNCTION_330_0();
    sub_1DC51814C();
    v37 = *(v45 + 8);
    v38 = OUTLINED_FUNCTION_31_0();
    v39(v38);
    (*(v44 + 32))(v1, v2, v14);
    v40 = v25[5];
    sub_1DC440B84();
    v41 = (v1 + v25[6]);
    *v41 = v46;
    v41[1] = v47;
    v42 = v1 + v25[7];
    *v42 = v46;
    *(v42 + 4) = BYTE4(v46);
    OUTLINED_FUNCTION_35_19();
    sub_1DC440004();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  OUTLINED_FUNCTION_329_0();
  OUTLINED_FUNCTION_26_0();
}

void NLRouterSiriXUSOParse.encode(to:)()
{
  OUTLINED_FUNCTION_28_1();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DBF0, &qword_1DC52A8B0);
  OUTLINED_FUNCTION_10(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_76_9(v10, v44);
  v11 = sub_1DC5166EC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v46 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DC28, &qword_1DC52A8D8);
  OUTLINED_FUNCTION_0(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_11_1();
  v23 = *(v5 + 24);
  v22 = *(v5 + 32);
  v24 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_121_1(v24, v25);
  sub_1DC440310();
  OUTLINED_FUNCTION_375_0();
  sub_1DC51835C();
  sub_1DC5166DC();
  sub_1DC51122C();
  OUTLINED_FUNCTION_21_19();
  sub_1DC43F1F8(v26, v27);
  OUTLINED_FUNCTION_117_0();
  sub_1DC51673C();
  v28 = (v46 + 8);
  if (v1)
  {
    v29 = *v28;
    v30 = OUTLINED_FUNCTION_75();
    v31(v30);
    (*(v18 + 8))(v2, v16);
  }

  else
  {
    v32 = *v28;
    v33 = OUTLINED_FUNCTION_75();
    v34(v33);
    OUTLINED_FUNCTION_74();
    sub_1DC5181BC();

    v47 = type metadata accessor for NLRouterSiriXUSOParse(0);
    v35 = v47[5];
    sub_1DC4465D4();
    v36 = sub_1DC510F7C();
    v37 = OUTLINED_FUNCTION_68_8();
    if (__swift_getEnumTagSinglePayload(v37, v38, v36) == 1)
    {
      sub_1DC28EB30(v45, &qword_1ECC7DBF0, &qword_1DC52A8B0);
    }

    else
    {
      sub_1DC510F6C();
      OUTLINED_FUNCTION_7_1(v36);
      v40 = *(v39 + 8);
      v41 = OUTLINED_FUNCTION_255_0();
      v42(v41);
    }

    OUTLINED_FUNCTION_388();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DC00, &unk_1DC52A8C0);
    sub_1DC4404D8();
    OUTLINED_FUNCTION_261_0();
    sub_1DC51820C();
    v48 = *(v3 + v47[6]);
    OUTLINED_FUNCTION_344_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0A0, &unk_1DC524070);
    sub_1DC440554();
    OUTLINED_FUNCTION_261_0();
    sub_1DC51820C();
    v43 = v3 + v47[7];
    LODWORD(v48) = *v43;
    BYTE4(v48) = *(v43 + 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DC18, &qword_1DC52A8D0);
    sub_1DC4405D0();
    OUTLINED_FUNCTION_261_0();
    sub_1DC51820C();
    (*(v18 + 8))(v2, v16);
  }

  OUTLINED_FUNCTION_30_13();
  OUTLINED_FUNCTION_26_0();
}

void static NLRouterSiriXUSOParse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v6 = v5;
  v7 = sub_1DC510F7C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DBF0, &qword_1DC52A8B0);
  OUTLINED_FUNCTION_10(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_30_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DC30, &qword_1DC52A8E0);
  OUTLINED_FUNCTION_35(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_28_13();
  if ((sub_1DC5111EC() & 1) == 0)
  {
    goto LABEL_11;
  }

  v41 = v10;
  v40 = type metadata accessor for NLRouterSiriXUSOParse(0);
  v21 = v40[5];
  v22 = *(v17 + 48);
  sub_1DC4465D4();
  v23 = v4;
  sub_1DC4465D4();
  OUTLINED_FUNCTION_14_2(v1);
  if (v24)
  {
    OUTLINED_FUNCTION_14_2(v1 + v22);
    if (v24)
    {
      sub_1DC28EB30(v1, &qword_1ECC7DBF0, &qword_1DC52A8B0);
      goto LABEL_13;
    }

LABEL_10:
    sub_1DC28EB30(v1, &qword_1ECC7DC30, &qword_1DC52A8E0);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_54_2();
  sub_1DC4465D4();
  OUTLINED_FUNCTION_14_2(v1 + v22);
  if (v24)
  {
    v25 = OUTLINED_FUNCTION_258_0();
    v26(v25, v7);
    goto LABEL_10;
  }

  (*(v41 + 32))(v0, v1 + v22, v7);
  sub_1DC43F1F8(&qword_1ECC7BE30, MEMORY[0x1E69D0990]);
  v27 = sub_1DC5176CC();
  v28 = *(v41 + 8);
  v29 = OUTLINED_FUNCTION_19_6();
  v28(v29);
  (v28)(v2, v7);
  v23 = v4;
  sub_1DC28EB30(v1, &qword_1ECC7DBF0, &qword_1DC52A8B0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  v30 = v40[6];
  v31 = (v6 + v30);
  v32 = *(v6 + v30 + 8);
  v33 = (v23 + v30);
  v34 = v33[1];
  if (!v32)
  {
    if (v34)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  if (v34)
  {
    v35 = *v31 == *v33 && v32 == v34;
    if (v35 || (sub_1DC51825C() & 1) != 0)
    {
LABEL_22:
      v36 = v40[7];
      v37 = (v6 + v36);
      v38 = *(v6 + v36 + 4);
      v39 = (v23 + v36);
      LODWORD(v36) = *(v23 + v36 + 4);
      if ((v38 & 1) == 0)
      {
        *v37;
        *v39;
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_34();
}

uint64_t static NLRouterPommesResponse.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return OUTLINED_FUNCTION_164_0();
  }

  else
  {
    return sub_1DC51825C();
  }
}

uint64_t sub_1DC435628(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001DC548260 == a2)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_267_0();
    OUTLINED_FUNCTION_168();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DC4356F8()
{
  sub_1DC44064C();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC435730()
{
  sub_1DC44064C();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void static NLRouterSiriXParse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_33();
  v1 = type metadata accessor for NLRouterSiriXUSOParse(0);
  v2 = OUTLINED_FUNCTION_10(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v5 = OUTLINED_FUNCTION_429();
  v6 = type metadata accessor for NLRouterSiriXParse(v5);
  v7 = OUTLINED_FUNCTION_35(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DC48, &qword_1DC52A8F8);
  OUTLINED_FUNCTION_10(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_47_7();
  v19 = (v0 + *(v18 + 56));
  sub_1DC43F610();
  sub_1DC43F610();
  OUTLINED_FUNCTION_63_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_6_29();
      OUTLINED_FUNCTION_220_0();
      sub_1DC43F610();
      v22 = *v12;
      v21 = v12[1];
      OUTLINED_FUNCTION_77_1();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (v22 != *v19 || v21 != v19[1])
        {
          OUTLINED_FUNCTION_72();
          sub_1DC51825C();
        }

        goto LABEL_18;
      }
    }

    else
    {
      OUTLINED_FUNCTION_77_1();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
LABEL_18:
        OUTLINED_FUNCTION_5_34();
        sub_1DC43F4A8();
        goto LABEL_19;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_29();
    OUTLINED_FUNCTION_46_6();
    sub_1DC43F610();
    OUTLINED_FUNCTION_77_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_35_19();
      sub_1DC440004();
      OUTLINED_FUNCTION_72();
      static NLRouterSiriXUSOParse.== infix(_:_:)();
      sub_1DC43F4A8();
      OUTLINED_FUNCTION_55();
      sub_1DC43F4A8();
      OUTLINED_FUNCTION_5_34();
      sub_1DC43F4A8();
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_10_27();
    sub_1DC43F4A8();
  }

  sub_1DC28EB30(v0, &qword_1ECC7DC48, &qword_1DC52A8F8);
LABEL_19:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC435AB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7304053 && a2 == 0xE300000000000000;
  if (v3 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73656D6D6F70 && a2 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7974706D65 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_32_13();
      OUTLINED_FUNCTION_168();
      OUTLINED_FUNCTION_460();
      if (v3)
      {
        return v8 + 1;
      }

      else
      {
        return v8;
      }
    }
  }
}

uint64_t sub_1DC435B90(char a1)
{
  if (!a1)
  {
    return 7304053;
  }

  if (a1 == 1)
  {
    return 0x73656D6D6F70;
  }

  return 0x7974706D65;
}

uint64_t sub_1DC435BD8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_267_0();
    OUTLINED_FUNCTION_168();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DC435C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DC435AB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DC435C68()
{
  sub_1DC4406C0();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC435CA0()
{
  sub_1DC4406C0();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC435CD8()
{
  sub_1DC440714();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC435D10()
{
  sub_1DC440714();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC435D4C()
{
  sub_1DC440768();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC435D84()
{
  sub_1DC440768();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC435DE4()
{
  sub_1DC440810();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC435E1C()
{
  sub_1DC440810();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void NLRouterSiriXParse.encode(to:)()
{
  OUTLINED_FUNCTION_28_1();
  v1 = v0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DC50, &qword_1DC52A900);
  OUTLINED_FUNCTION_0(v57);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_50_13(v5, v53);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DC58, &qword_1DC52A908);
  OUTLINED_FUNCTION_0(v56);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_372_0(v9);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DC60, &qword_1DC52A910);
  OUTLINED_FUNCTION_0(v55);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25();
  v13 = OUTLINED_FUNCTION_12();
  v54 = type metadata accessor for NLRouterSiriXUSOParse(v13);
  v14 = OUTLINED_FUNCTION_35(v54);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v17 = OUTLINED_FUNCTION_457();
  v18 = type metadata accessor for NLRouterSiriXParse(v17);
  v19 = OUTLINED_FUNCTION_35(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v24 = (v23 - v22);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DC68, &qword_1DC52A918);
  OUTLINED_FUNCTION_0(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_11_1();
  v31 = v1[3];
  v32 = v1[4];
  OUTLINED_FUNCTION_95_5(v1);
  sub_1DC4406C0();
  OUTLINED_FUNCTION_375_0();
  sub_1DC51835C();
  OUTLINED_FUNCTION_6_29();
  sub_1DC43F610();
  OUTLINED_FUNCTION_74_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v35 = *v24;
      v34 = v24[1];
      sub_1DC440768();
      OUTLINED_FUNCTION_65_6();
      sub_1DC51817C();
      sub_1DC4407BC();
      sub_1DC51820C();
      v36 = OUTLINED_FUNCTION_209();
      v37(v36, v56);
      v38 = *(v27 + 8);
      v39 = OUTLINED_FUNCTION_30();
      v40(v39);
    }

    else
    {
      sub_1DC440714();
      OUTLINED_FUNCTION_65_6();
      sub_1DC51817C();
      v48 = OUTLINED_FUNCTION_240_0();
      v49(v48, v57);
      v50 = *(v27 + 8);
      v51 = OUTLINED_FUNCTION_30();
      v52(v51);
    }
  }

  else
  {
    OUTLINED_FUNCTION_147_0();
    sub_1DC440004();
    sub_1DC440810();
    OUTLINED_FUNCTION_65_6();
    sub_1DC51817C();
    OUTLINED_FUNCTION_204_2();
    sub_1DC43F1F8(v41, v42);
    sub_1DC51820C();
    v43 = OUTLINED_FUNCTION_209();
    v44(v43, v55);
    OUTLINED_FUNCTION_10_27();
    sub_1DC43F4A8();
    v45 = *(v27 + 8);
    v46 = OUTLINED_FUNCTION_30();
    v47(v46);
  }

  OUTLINED_FUNCTION_141_3();
  OUTLINED_FUNCTION_26_0();
}

void NLRouterSiriXParse.init(from:)()
{
  OUTLINED_FUNCTION_28_1();
  v3 = v2;
  v100 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DC70, &qword_1DC52A920);
  v6 = OUTLINED_FUNCTION_0(v5);
  v98 = v7;
  v99 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_50_13(v11, v93[0]);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DC78, &qword_1DC52A928);
  OUTLINED_FUNCTION_0(v95);
  v101 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_60_12(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DC80, &qword_1DC52A930);
  v18 = OUTLINED_FUNCTION_0(v17);
  v96 = v19;
  v97 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_49_14(v23, v93[0]);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DC88, &qword_1DC52A938);
  v25 = OUTLINED_FUNCTION_0(v24);
  v102 = v26;
  v103 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_78_8();
  v30 = type metadata accessor for NLRouterSiriXParse(0);
  v31 = OUTLINED_FUNCTION_35(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_8();
  v36 = v34 - v35;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = v93 - v39;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_56_1();
  v42 = v3[3];
  v41 = v3[4];
  v43 = OUTLINED_FUNCTION_255_0();
  OUTLINED_FUNCTION_121_1(v43, v44);
  sub_1DC4406C0();
  OUTLINED_FUNCTION_434();
  sub_1DC51834C();
  if (!v0)
  {
    v93[0] = v36;
    v93[1] = v40;
    v93[2] = v1;
    v94 = v30;
    v106 = v3;
    OUTLINED_FUNCTION_425();
    v45 = sub_1DC51816C();
    v46 = sub_1DC3EEF88(v45, 0);
    if (v48 != v47 >> 1)
    {
      OUTLINED_FUNCTION_106_4();
      OUTLINED_FUNCTION_337_0();
      if (v53 == v54)
      {
        __break(1u);
        return;
      }

      v55 = *(v52 + v50);
      sub_1DC4410E8(v50 + 1, v49, v46, v52, v50, v51);
      v57 = v56;
      v59 = v58;
      swift_unknownObjectRelease();
      v60 = v101;
      if (v57 == v59 >> 1)
      {
        if (v55)
        {
          if (v55 == 1)
          {
            LOBYTE(v104) = 1;
            sub_1DC440768();
            OUTLINED_FUNCTION_317();
            sub_1DC440864();
            OUTLINED_FUNCTION_124_1();
            sub_1DC51814C();
            swift_unknownObjectRelease();
            v80 = *(v60 + 8);
            v81 = OUTLINED_FUNCTION_35_0();
            v82(v81);
            v83 = OUTLINED_FUNCTION_113_6();
            v84(v83);
            v85 = v105;
            v86 = v93[0];
            *v93[0] = v104;
            *(v86 + 8) = v85;
            OUTLINED_FUNCTION_31_0();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_9_30();
            sub_1DC440004();
          }

          else
          {
            LOBYTE(v104) = 2;
            sub_1DC440714();
            OUTLINED_FUNCTION_317();
            swift_unknownObjectRelease();
            v76 = OUTLINED_FUNCTION_239();
            v77(v76);
            v78 = OUTLINED_FUNCTION_113_6();
            v79(v78);
            OUTLINED_FUNCTION_31_0();
            swift_storeEnumTagMultiPayload();
          }
        }

        else
        {
          LOBYTE(v104) = 0;
          sub_1DC440810();
          OUTLINED_FUNCTION_317();
          type metadata accessor for NLRouterSiriXUSOParse(0);
          OUTLINED_FUNCTION_204_2();
          sub_1DC43F1F8(v73, v74);
          OUTLINED_FUNCTION_36_19();
          sub_1DC51814C();
          v75 = v102;
          swift_unknownObjectRelease();
          v87 = *(v96 + 8);
          v88 = OUTLINED_FUNCTION_30_6();
          v89(v88);
          v90 = *(v75 + 8);
          v91 = OUTLINED_FUNCTION_47_6();
          v92(v91);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_9_30();
          sub_1DC440004();
        }

        OUTLINED_FUNCTION_9_30();
        OUTLINED_FUNCTION_151();
        sub_1DC440004();
        v72 = v3;
        goto LABEL_11;
      }
    }

    v61 = sub_1DC517F7C();
    OUTLINED_FUNCTION_236_1();
    swift_allocError();
    v63 = v62;
    v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D670, &qword_1DC528AF8) + 48);
    *v63 = v94;
    OUTLINED_FUNCTION_425();
    sub_1DC5180BC();
    OUTLINED_FUNCTION_117_7();
    v65 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_7_1(v61);
    v67 = *(v66 + 104);
    v68 = OUTLINED_FUNCTION_440();
    v69(v68);
    swift_willThrow();
    swift_unknownObjectRelease();
    v70 = OUTLINED_FUNCTION_30_18();
    v71(v70);
    v3 = v106;
  }

  v72 = v3;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  OUTLINED_FUNCTION_26_0();
}

uint64_t NLRouterActionCandidate.parse.getter()
{
  v0 = OUTLINED_FUNCTION_57_0();
  v1 = *(type metadata accessor for NLRouterActionCandidate(v0) + 20);
  OUTLINED_FUNCTION_6_29();
  return sub_1DC43F610();
}

void sub_1DC4369C8()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v94 = sub_1DC510FAC();
  v4 = OUTLINED_FUNCTION_0(v94);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v93 = v7;
  OUTLINED_FUNCTION_12();
  v92 = sub_1DC51122C();
  v8 = OUTLINED_FUNCTION_0(v92);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v91 = v13;
  v14 = OUTLINED_FUNCTION_12();
  v97 = type metadata accessor for NLRouterActionCandidate(v14);
  v15 = OUTLINED_FUNCTION_0(v97);
  v95 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_53_4();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v82 - v24;
  v26 = OUTLINED_FUNCTION_74();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_10(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_47_7();
  v32 = MEMORY[0x1E69E7CC0];
  v99 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_59_2();
  sub_1DC4465D4();
  type metadata accessor for NLRouterNLParseResponse(0);
  v33 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v33, v34, v35);
  if (v36)
  {
    sub_1DC28EB30(v0, &qword_1ECC7C160, qword_1DC5233B0);
  }

  else
  {
    v37 = *v0;

    OUTLINED_FUNCTION_41_10();
    sub_1DC43F4A8();
    v38 = *(v37 + 16);
    if (v38)
    {
      v83 = v3;
      v84 = v1;
      v85 = v21;
      v98 = v32;
      sub_1DC43F060();
      v39 = v98;
      v41 = *(v10 + 16);
      v40 = v10 + 16;
      v42 = *(v40 + 64);
      OUTLINED_FUNCTION_24();
      v82 = v37;
      v44 = v37 + v43;
      v88 = *(v40 + 56);
      v89 = v45;
      v90 = v40;
      v86 = (v40 - 8);
      v87 = (v46 + 8);
      do
      {
        v96 = v38;
        v47 = v89;
        (v89)(v91, v44, v92);
        v48 = &v25[*(v97 + 20)];
        v49 = OUTLINED_FUNCTION_46_6();
        v47(v49);
        v50 = type metadata accessor for NLRouterSiriXUSOParse(0);
        v51 = v50[5];
        v52 = v25;
        v53 = v93;
        sub_1DC51120C();
        sub_1DC510F8C();
        v54 = v53;
        v25 = v52;
        (*v87)(v54, v94);
        v55 = *v86;
        v56 = OUTLINED_FUNCTION_73();
        v57(v56);
        sub_1DC510F7C();
        OUTLINED_FUNCTION_61();
        __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
        v62 = &v48[v50[6]];
        *v62 = 0;
        *(v62 + 1) = 0;
        v63 = &v48[v50[7]];
        *v63 = 0;
        v63[4] = 1;
        type metadata accessor for NLRouterSiriXParse(0);
        OUTLINED_FUNCTION_5_27();
        swift_storeEnumTagMultiPayload();
        *v52 = 0;
        *(v52 + 1) = 0xE000000000000000;
        *&v52[*(v97 + 24)] = 0;
        v98 = v39;
        v65 = *(v39 + 16);
        v64 = *(v39 + 24);
        if (v65 >= v64 >> 1)
        {
          OUTLINED_FUNCTION_26(v64);
          OUTLINED_FUNCTION_299_0();
          sub_1DC43F060();
          v39 = v98;
        }

        *(v39 + 16) = v65 + 1;
        OUTLINED_FUNCTION_22_0();
        v67 = *(v66 + 72);
        OUTLINED_FUNCTION_201_1();
        sub_1DC440004();
        v44 += v88;
        v38 = v96 - 1;
      }

      while (v96 != 1);

      v1 = v84;
      v3 = v83;
      v68 = v39;
    }

    else
    {

      v68 = MEMORY[0x1E69E7CC0];
    }

    sub_1DC42B108(v68);
  }

  OUTLINED_FUNCTION_390();
  v70 = (v3 + v69);
  v71 = v70[1];
  if (v71)
  {
    v72 = v97;
    v73 = (v1 + *(v97 + 20));
    *v73 = *v70;
    v73[1] = v71;
    type metadata accessor for NLRouterSiriXParse(0);
    OUTLINED_FUNCTION_56_7();
    swift_storeEnumTagMultiPayload();
    *v1 = 0;
    v1[1] = 0xE000000000000000;
    *(v1 + *(v72 + 24)) = 0;
    OUTLINED_FUNCTION_39_12();
    OUTLINED_FUNCTION_113_0();
    sub_1DC43F610();
    v74 = v99;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v74 = sub_1DC43EB6C(0, *(v74 + 16) + 1, 1, v74);
    }

    v76 = *(v74 + 16);
    v75 = *(v74 + 24);
    if (v76 >= v75 >> 1)
    {
      OUTLINED_FUNCTION_26(v75);
      OUTLINED_FUNCTION_299_0();
      v74 = sub_1DC43EB6C(v79, v80, v81, v74);
    }

    OUTLINED_FUNCTION_0_62();
    sub_1DC43F4A8();
    *(v74 + 16) = v76 + 1;
    OUTLINED_FUNCTION_22_0();
    v78 = *(v77 + 72);
    OUTLINED_FUNCTION_201_1();
    sub_1DC440004();
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC436EF4()
{
  OUTLINED_FUNCTION_42_0();
  v3 = v1 == OUTLINED_FUNCTION_398() && v0 == v2;
  if (v3 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x6573726170 && v0 == 0xE500000000000000;
    if (v5 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x7974696E69666661 && v0 == 0xED000065726F6353)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_32_13();
      OUTLINED_FUNCTION_168();
      OUTLINED_FUNCTION_460();
      if (v3)
      {
        return v7 + 1;
      }

      else
      {
        return v7;
      }
    }
  }
}

uint64_t sub_1DC436FC0(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_398();
  }

  if (a1 == 1)
  {
    return 0x6573726170;
  }

  return 0x7974696E69666661;
}

uint64_t sub_1DC437028@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC436EF4();
  *a1 = result;
  return result;
}

uint64_t sub_1DC437050()
{
  sub_1DC4408D8();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC437088()
{
  sub_1DC4408D8();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void NLRouterActionCandidate.encode(to:)()
{
  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_143_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DCA0, &qword_1DC52A940);
  OUTLINED_FUNCTION_3_33(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_7_19();
  sub_1DC4408D8();
  OUTLINED_FUNCTION_118_4();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_136_4();
  sub_1DC5181BC();
  if (!v0)
  {
    v8 = type metadata accessor for NLRouterActionCandidate(0);
    v9 = *(v8 + 20);
    OUTLINED_FUNCTION_281();
    type metadata accessor for NLRouterSiriXParse(0);
    OUTLINED_FUNCTION_199_0();
    sub_1DC43F1F8(v10, v11);
    OUTLINED_FUNCTION_36_19();
    sub_1DC51820C();
    v12 = *(v1 + *(v8 + 24));
    OUTLINED_FUNCTION_187_1();
    OUTLINED_FUNCTION_136_4();
    sub_1DC5181EC();
  }

  v13 = OUTLINED_FUNCTION_104_3();
  v14(v13);
  OUTLINED_FUNCTION_381();
  OUTLINED_FUNCTION_37_9();
}

void NLRouterActionCandidate.init(from:)()
{
  OUTLINED_FUNCTION_28_1();
  v4 = v3;
  v5 = type metadata accessor for NLRouterSiriXParse(0);
  v6 = OUTLINED_FUNCTION_35(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DCA8, &qword_1DC52A948);
  v10 = OUTLINED_FUNCTION_0(v9);
  v27 = v11;
  v28 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_31_18();
  v16 = type metadata accessor for NLRouterActionCandidate(v15);
  v17 = OUTLINED_FUNCTION_35(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v21 = v4[3];
  v20 = v4[4];
  OUTLINED_FUNCTION_95_5(v4);
  sub_1DC4408D8();
  OUTLINED_FUNCTION_283_0();
  sub_1DC51834C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    *v2 = sub_1DC5180FC();
    v2[1] = v22;
    OUTLINED_FUNCTION_281();
    OUTLINED_FUNCTION_199_0();
    sub_1DC43F1F8(v23, v24);
    sub_1DC51814C();
    v25 = *(v16 + 20);
    OUTLINED_FUNCTION_9_30();
    sub_1DC440004();
    OUTLINED_FUNCTION_187_1();
    v26 = sub_1DC51812C();
    (*(v27 + 8))(v1, v28);
    *(v2 + *(v16 + 24)) = v26;
    OUTLINED_FUNCTION_39_12();
    sub_1DC43F610();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_0_62();
    sub_1DC43F4A8();
  }

  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC437550()
{
  v0 = OUTLINED_FUNCTION_140_5();
  v2 = *(v1(v0) + 20);
  OUTLINED_FUNCTION_270();
  return sub_1DC4465D4();
}

uint64_t sub_1DC437594@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v2 = *(type metadata accessor for NLRouterNLParseResponse(0) + 20);
  return sub_1DC440B84();
}

uint64_t sub_1DC4375E4()
{
  OUTLINED_FUNCTION_465();
  sub_1DC51808C();
  OUTLINED_FUNCTION_23_2();

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

uint64_t sub_1DC437630()
{
  OUTLINED_FUNCTION_146_0();
  if (v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x7372615072657375;
  }
}

uint64_t sub_1DC4376A0(void *a1)
{
  OUTLINED_FUNCTION_361(a1);
  result = sub_1DC4375E4();
  *v1 = result;
  return result;
}

uint64_t sub_1DC4376C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DC437630();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1DC4376FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC4375E4();
  *a1 = result;
  return result;
}

uint64_t sub_1DC437724()
{
  sub_1DC44092C();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC43775C()
{
  sub_1DC44092C();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void NLRouterNLParseResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_28_1();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12();
  v19 = sub_1DC5166BC();
  v20 = OUTLINED_FUNCTION_10(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_12();
  v24 = sub_1DC51122C();
  v77 = OUTLINED_FUNCTION_0(v24);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DCB8, &qword_1DC52A950);
  OUTLINED_FUNCTION_0(v30);
  v74 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_78_8();
  v35 = type metadata accessor for NLRouterNLParseResponse(0);
  v36 = OUTLINED_FUNCTION_35(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3_2();
  v39 = v14[3];
  v40 = v14[4];
  v41 = OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_121_1(v41, v42);
  sub_1DC44092C();
  OUTLINED_FUNCTION_434();
  sub_1DC51834C();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
LABEL_4:
    OUTLINED_FUNCTION_382();
    OUTLINED_FUNCTION_26_0();
    return;
  }

  v78 = v29;
  v73 = v35;
  v76 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
  sub_1DC2BB778();
  OUTLINED_FUNCTION_251_1();
  OUTLINED_FUNCTION_269_0();
  sub_1DC51814C();
  v43 = v30;
  v45 = *(a10 + 16);
  if (!v45)
  {

    v49 = MEMORY[0x1E69E7CC0];
    v58 = v11;
    v62 = v14;
LABEL_13:
    *v58 = v49;
    OUTLINED_FUNCTION_269_0();
    sub_1DC5180CC();
    if (v63)
    {
      sub_1DC511E5C();
      OUTLINED_FUNCTION_23_2();

      sub_1DC5166AC();
      OUTLINED_FUNCTION_198_1();
      sub_1DC43F1F8(v64, v65);
      OUTLINED_FUNCTION_30_6();
      sub_1DC51674C();

      (*(v74 + 8))(v12, v43);
      OUTLINED_FUNCTION_61();
      v69 = v58;
    }

    else
    {
      (*(v74 + 8))(v12, v43);
      sub_1DC511E5C();
      OUTLINED_FUNCTION_19();
    }

    __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
    v70 = *(v73 + 20);
    sub_1DC440B84();
    sub_1DC43F610();
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    OUTLINED_FUNCTION_41_10();
    sub_1DC43F4A8();
    goto LABEL_4;
  }

  v72 = v14;
  v71 = v30;
  v79 = MEMORY[0x1E69E7CC0];
  v75 = a10;
  v46 = v45;
  sub_1DC2EBBE8(0, v45, 0);
  v47 = v75;
  v48 = 0;
  v49 = v79;
  v50 = (v75 + 40);
  while (v48 < *(v47 + 16))
  {
    v51 = *(v50 - 1);
    v52 = *v50;

    sub_1DC5166AC();
    OUTLINED_FUNCTION_21_19();
    sub_1DC43F1F8(&qword_1ECC7BE18, v53);
    OUTLINED_FUNCTION_43();
    sub_1DC51674C();
    v55 = *(v79 + 16);
    v54 = *(v79 + 24);
    if (v55 >= v54 >> 1)
    {
      OUTLINED_FUNCTION_26(v54);
      OUTLINED_FUNCTION_299_0();
      sub_1DC2EBBE8(v59, v60, v61);
    }

    ++v48;
    *(v79 + 16) = v55 + 1;
    OUTLINED_FUNCTION_22_0();
    (*(v57 + 32))(v79 + v56 + *(v57 + 72) * v55, v78, v77);
    v50 += 2;
    v47 = v75;
    v58 = v76;
    if (v46 == v48)
    {

      v43 = v71;
      v62 = v72;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void NLRouterNLParseResponse.encode(to:)()
{
  OUTLINED_FUNCTION_28_1();
  v3 = v1;
  OUTLINED_FUNCTION_38_2();
  v4 = sub_1DC511E5C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v86 = v6;
  v87 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12();
  v95 = sub_1DC5166EC();
  v13 = OUTLINED_FUNCTION_0(v95);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_12();
  v85 = sub_1DC51122C();
  v17 = OUTLINED_FUNCTION_0(v85);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_1();
  v94 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DCC0, &qword_1DC52A958);
  OUTLINED_FUNCTION_0(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_11_1();
  v29 = v0[3];
  v30 = v0[4];
  v31 = OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_121_1(v31, v32);
  sub_1DC44092C();
  v89 = v2;
  OUTLINED_FUNCTION_375_0();
  sub_1DC51835C();
  v33 = *v0;
  v34 = *(*v0 + 16);
  if (v34)
  {
    v88 = v25;
    v84 = v23;
    sub_1DC2DF6FC(0, v34, 0);
    v35 = 0;
    v36 = *(v19 + 80);
    OUTLINED_FUNCTION_24();
    v92 = v33 + v38;
    v91 = v33;
    v93 = (v19 + 8);
    v39 = v85;
    v90 = v19;
    while (v35 < *(v33 + 16))
    {
      v40 = v34;
      v41 = v37;
      (*(v19 + 16))(v94, v92 + *(v19 + 72) * v35, v39);
      sub_1DC5166DC();
      OUTLINED_FUNCTION_21_19();
      sub_1DC43F1F8(&qword_1ECC7BE18, v42);
      OUTLINED_FUNCTION_262_0();
      v1 = v3;
      v43 = sub_1DC51673C();
      if (v3)
      {
        v58 = OUTLINED_FUNCTION_427();
        v59(v58);
        v60 = *v93;
        v61 = OUTLINED_FUNCTION_288();
        v62(v61);
        (*(v88 + 8))(v89, v84);

        goto LABEL_16;
      }

      v45 = v43;
      v46 = v44;
      v47 = OUTLINED_FUNCTION_427();
      v48(v47);
      v49 = *v93;
      v50 = OUTLINED_FUNCTION_288();
      v51(v50);
      v37 = v41;
      v96 = v41;
      v52 = *(v41 + 16);
      v53 = *(v37 + 24);
      if (v52 >= v53 >> 1)
      {
        OUTLINED_FUNCTION_26(v53);
        OUTLINED_FUNCTION_299_0();
        sub_1DC2DF6FC(v55, v56, v57);
        v39 = v85;
        v37 = v96;
      }

      ++v35;
      *(v37 + 16) = v52 + 1;
      v54 = v37 + 16 * v52;
      *(v54 + 32) = v45;
      *(v54 + 40) = v46;
      v34 = v40;
      v3 = 0;
      v19 = v90;
      v33 = v91;
      if (v40 == v35)
      {
        v63 = v86;
        v64 = v87;
        v25 = v88;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v63 = v86;
    v64 = v87;
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
    sub_1DC4401C0();
    OUTLINED_FUNCTION_348_0();
    if (v1)
    {
      v65 = *(v25 + 8);
      v66 = OUTLINED_FUNCTION_288();
      v67(v66);
    }

    else
    {

      v68 = *(type metadata accessor for NLRouterNLParseResponse(0) + 20);
      sub_1DC4465D4();
      v69 = OUTLINED_FUNCTION_53_15();
      if (__swift_getEnumTagSinglePayload(v69, v70, v64) != 1)
      {
        v71 = *(v63 + 32);
        v72 = OUTLINED_FUNCTION_149();
        v73(v72);
        sub_1DC5166DC();
        OUTLINED_FUNCTION_198_1();
        sub_1DC43F1F8(v74, v75);
        OUTLINED_FUNCTION_255_0();
        sub_1DC51673C();
        v76 = OUTLINED_FUNCTION_147_4();
        v77(v76, v95);
        v78 = *(v63 + 8);
        v79 = OUTLINED_FUNCTION_47_6();
        v80(v79);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0A0, &unk_1DC524070);
      sub_1DC440554();
      OUTLINED_FUNCTION_348_0();
      v81 = *(v25 + 8);
      v82 = OUTLINED_FUNCTION_288();
      v83(v82);
    }

LABEL_16:
    OUTLINED_FUNCTION_26_0();
  }
}

uint64_t NLRouterTurnProbingResult.pommesResponse.getter()
{
  v2 = OUTLINED_FUNCTION_57_0();
  v3 = (v1 + *(type metadata accessor for NLRouterTurnProbingResult(v2) + 20));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

void sub_1DC438434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DBF0, &qword_1DC52A8B0);
  OUTLINED_FUNCTION_10(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12();
  v30 = sub_1DC510F7C();
  v31 = OUTLINED_FUNCTION_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_62();
  v132 = v37;
  OUTLINED_FUNCTION_12();
  v135 = sub_1DC510FAC();
  v38 = OUTLINED_FUNCTION_0(v135);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v134 = type metadata accessor for NLRouterSiriXUSOParse(0);
  v43 = OUTLINED_FUNCTION_35(v134);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v143 = sub_1DC51122C();
  v46 = OUTLINED_FUNCTION_0(v143);
  v138 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_15();
  v141 = v50;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_23_1();
  v137 = v52;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_372_0(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DCC8, &qword_1DC52A960);
  OUTLINED_FUNCTION_10(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v58);
  v59 = OUTLINED_FUNCTION_31_18();
  v139 = type metadata accessor for NLRouterSiriXParse(v59);
  v60 = OUTLINED_FUNCTION_35(v139);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_62();
  v128 = v64;
  v65 = OUTLINED_FUNCTION_12();
  v66 = type metadata accessor for NLRouterActionCandidate(v65);
  v67 = *(*(v66 - 8) + 64);
  v68 = MEMORY[0x1EEE9AC00](v66);
  if (v23)
  {
    v127 = v25;
    v70 = *(v23 + 16);
    v126 = v23;
    v125 = v68;
    if (v70)
    {
      v133 = v30;
      v25 = *(v68 + 20);
      v71 = v23 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
      v142 = *(v69 + 72);
      v131 = (v33 + 32);
      v130 = (v33 + 16);
      v129 = (v33 + 8);
      v144 = MEMORY[0x1E69E7CC0];
      v72 = (v138 + 32);
      v136 = v25;
      do
      {
        OUTLINED_FUNCTION_39_12();
        sub_1DC43F610();
        OUTLINED_FUNCTION_6_29();
        sub_1DC43F610();
        if (swift_getEnumCaseMultiPayload())
        {
          OUTLINED_FUNCTION_0_62();
          sub_1DC43F4A8();
          OUTLINED_FUNCTION_5_34();
          sub_1DC43F4A8();
        }

        else
        {
          OUTLINED_FUNCTION_35_19();
          sub_1DC440004();
          v73 = *(v138 + 16);
          v74 = OUTLINED_FUNCTION_288();
          v75(v74);
          sub_1DC51120C();
          v76 = sub_1DC510F4C();
          v77 = *(v40 + 8);
          v78 = OUTLINED_FUNCTION_65_1();
          v79(v78);
          if (v76)
          {
            OUTLINED_FUNCTION_10_27();
            sub_1DC43F4A8();
            OUTLINED_FUNCTION_0_62();
            sub_1DC43F4A8();
          }

          else
          {
            v80 = *(v134 + 20);
            sub_1DC4465D4();
            v81 = OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_39(v81, v82, v133);
            if (v83)
            {
              OUTLINED_FUNCTION_10_27();
              sub_1DC43F4A8();
              OUTLINED_FUNCTION_0_62();
              sub_1DC43F4A8();
              v84 = OUTLINED_FUNCTION_43();
              sub_1DC28EB30(v84, v85, &qword_1DC52A8B0);
            }

            else
            {
              v86 = *v131;
              v87 = OUTLINED_FUNCTION_30_6();
              v88(v87);
              v89 = *v130;
              v90 = OUTLINED_FUNCTION_46_6();
              v91(v90);
              v92 = sub_1DC5111FC();
              sub_1DC510F9C();
              v92(&v145, 0);
              (*v129)(v132, v133);
              OUTLINED_FUNCTION_10_27();
              sub_1DC43F4A8();
              OUTLINED_FUNCTION_0_62();
              sub_1DC43F4A8();
            }
          }

          v93 = *v72;
          (*v72)(v137, v141, v143);
          v93(v140, v137, v143);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v144 = sub_1DC43EC90(0, *(v144 + 16) + 1, 1, v144);
          }

          v95 = *(v144 + 16);
          v94 = *(v144 + 24);
          if (v95 >= v94 >> 1)
          {
            v99 = OUTLINED_FUNCTION_26(v94);
            v144 = sub_1DC43EC90(v99, v95 + 1, 1, v144);
          }

          *(v144 + 16) = v95 + 1;
          OUTLINED_FUNCTION_22_0();
          (v93)(v97 + v96 + *(v98 + 72) * v95);
          v25 = v136;
        }

        v71 += v142;
        --v70;
      }

      while (v70);
    }

    else
    {
      v144 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_20_3(&a10);
    sub_1DC428A88(v126, v106);
    v107 = OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_39(v107, v108, v125);
    if (v83)
    {
      sub_1DC28EB30(v25, &qword_1ECC7DCC8, &qword_1DC52A960);
      v109 = 0;
      v110 = 0;
      v111 = v127;
    }

    else
    {
      v112 = *(v125 + 20);
      OUTLINED_FUNCTION_6_29();
      sub_1DC43F610();
      OUTLINED_FUNCTION_0_62();
      sub_1DC43F4A8();
      OUTLINED_FUNCTION_62_2();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v111 = v127;
      if (EnumCaseMultiPayload == 1)
      {
        v109 = *v128;
        v110 = v128[1];
      }

      else
      {
        OUTLINED_FUNCTION_5_34();
        sub_1DC43F4A8();
        v109 = 0;
        v110 = 0;
      }
    }

    v114 = type metadata accessor for NLRouterNLParseResponse(0);
    v115 = *(v114 + 20);
    sub_1DC511E5C();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v116, v117, v118, v119);
    *v111 = v144;
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v120, v121, v122, v114);
    OUTLINED_FUNCTION_390();
    v124 = (v111 + v123);
    *v124 = v109;
    v124[1] = v110;
  }

  else
  {
    type metadata accessor for NLRouterNLParseResponse(0);
    v100 = OUTLINED_FUNCTION_27();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v103);
    OUTLINED_FUNCTION_390();
    v105 = (v25 + v104);
    *v105 = 0;
    v105[1] = 0;
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC438C18@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1DC440B84();
  result = OUTLINED_FUNCTION_390();
  v7 = (a2 + v6);
  *v7 = v3;
  v7[1] = v4;
  return result;
}

uint64_t sub_1DC438C68()
{
  OUTLINED_FUNCTION_42_0();
  v2 = v1 == 0x5265737261506C6ELL && v0 == 0xEF65736E6F707365;
  if (v2 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x655273656D6D6F70 && v0 == 0xEE0065736E6F7073)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_32_13();
    OUTLINED_FUNCTION_168();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DC438D1C(char a1)
{
  OUTLINED_FUNCTION_479();
  MEMORY[0x1E1296BB0](a1 & 1);
  return sub_1DC51833C();
}

uint64_t sub_1DC438D5C(char a1)
{
  if (a1)
  {
    return 0x655273656D6D6F70;
  }

  else
  {
    return 0x5265737261506C6ELL;
  }
}

uint64_t sub_1DC438DB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC438C68();
  *a1 = result;
  return result;
}

uint64_t sub_1DC438DDC()
{
  sub_1DC440980();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC438E14()
{
  sub_1DC440980();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void NLRouterTurnProbingResult.encode(to:)()
{
  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_143_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DCD0, &qword_1DC52A968);
  OUTLINED_FUNCTION_3_33(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_7_19();
  sub_1DC440980();
  OUTLINED_FUNCTION_118_4();
  type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_193_1();
  sub_1DC43F1F8(v6, v7);
  OUTLINED_FUNCTION_36_19();
  sub_1DC5181AC();
  if (!v1)
  {
    v8 = (v0 + *(type metadata accessor for NLRouterTurnProbingResult(0) + 20));
    v9 = v8[1];
    v12 = *v8;
    sub_1DC4407BC();

    OUTLINED_FUNCTION_136_4();
    sub_1DC5181AC();
  }

  v10 = OUTLINED_FUNCTION_104_3();
  v11(v10);
  OUTLINED_FUNCTION_381();
  OUTLINED_FUNCTION_37_9();
}

void NLRouterTurnProbingResult.init(from:)()
{
  OUTLINED_FUNCTION_28_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78_8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DCD8, &unk_1DC52A970);
  OUTLINED_FUNCTION_0(v8);
  v26 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_95();
  v13 = type metadata accessor for NLRouterTurnProbingResult(0);
  v14 = OUTLINED_FUNCTION_35(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v17 = v3[3];
  v18 = v3[4];
  v19 = OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_121_1(v19, v20);
  sub_1DC440980();
  sub_1DC51834C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    type metadata accessor for NLRouterNLParseResponse(0);
    LOBYTE(v27) = 0;
    OUTLINED_FUNCTION_193_1();
    sub_1DC43F1F8(v21, v22);
    sub_1DC5180EC();
    sub_1DC440B84();
    OUTLINED_FUNCTION_388();
    sub_1DC440864();
    OUTLINED_FUNCTION_330_0();
    sub_1DC5180EC();
    v23 = *(v26 + 8);
    v24 = OUTLINED_FUNCTION_89();
    v25(v24);
    *(v1 + *(v13 + 20)) = v27;
    sub_1DC43F610();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    OUTLINED_FUNCTION_19_20();
    sub_1DC43F4A8();
  }

  OUTLINED_FUNCTION_382();
  OUTLINED_FUNCTION_26_0();
}

uint64_t NLRouterServiceRequest.conversationHistory.getter()
{
  v1 = *(v0 + *(type metadata accessor for NLRouterServiceRequest(0) + 24));
}

uint64_t NLRouterServiceRequest.actionCandidates.getter()
{
  v1 = *(v0 + *(type metadata accessor for NLRouterServiceRequest(0) + 28));
}

uint64_t sub_1DC439374()
{
  v0 = OUTLINED_FUNCTION_140_5();
  v2 = *(v1(v0) + 32);
  OUTLINED_FUNCTION_270();
  return sub_1DC4465D4();
}

id NLRouterServiceRequest.userQueryDecoration.getter()
{
  v2 = OUTLINED_FUNCTION_57_0();
  v3 = *(v1 + *(type metadata accessor for NLRouterServiceRequest(v2) + 36));
  *v0 = v3;

  return v3;
}

uint64_t NLRouterServiceRequest.requestId.getter()
{
  v0 = type metadata accessor for NLRouterServiceRequest(0);
  OUTLINED_FUNCTION_229_0(*(v0 + 40));
  return OUTLINED_FUNCTION_43();
}

uint64_t NLRouterServiceRequest.trpCandidateId.getter()
{
  v0 = type metadata accessor for NLRouterServiceRequest(0);
  OUTLINED_FUNCTION_229_0(*(v0 + 44));
  return OUTLINED_FUNCTION_43();
}

uint64_t NLRouterServiceRequest.locale.getter()
{
  v0 = OUTLINED_FUNCTION_57_0();
  v1 = *(type metadata accessor for NLRouterServiceRequest(v0) + 48);
  v2 = sub_1DC510C8C();
  OUTLINED_FUNCTION_35(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_262_0();

  return v6(v5);
}

void NLRouterServiceRequest.init(currentUserQuery:turnContext:conversationHistory:requestId:trpCandidateId:probingResult:userQueryDecoration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22)
{
  OUTLINED_FUNCTION_33();
  v76 = v24;
  v77 = v25;
  v75 = v26;
  v72 = v27;
  v73 = v28;
  v30 = v29;
  v70 = v31;
  v71 = v32;
  v34 = v33;
  v74 = type metadata accessor for NLRouterTurnProbingResult(0);
  v35 = OUTLINED_FUNCTION_35(v74);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v38 = sub_1DC510C8C();
  v39 = OUTLINED_FUNCTION_0(v38);
  v80 = v40;
  v81 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v44 = OUTLINED_FUNCTION_10(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v47);
  v48 = OUTLINED_FUNCTION_55();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
  OUTLINED_FUNCTION_10(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v53);
  v78 = *a22;
  v79 = v30;
  sub_1DC4465D4();
  OUTLINED_FUNCTION_54_2();
  sub_1DC4465D4();
  sub_1DC510C4C();
  *v34 = v70;
  *(v34 + 1) = v71;
  v54 = type metadata accessor for NLRouterServiceRequest(0);
  v55 = v54[5];
  sub_1DC4465D4();
  *&v34[v54[6]] = v72;
  v56 = &v34[v54[10]];
  *v56 = v73;
  *(v56 + 1) = v75;
  v57 = &v34[v54[11]];
  *v57 = v76;
  *(v57 + 1) = v77;
  OUTLINED_FUNCTION_47_6();
  sub_1DC4465D4();
  OUTLINED_FUNCTION_39(v23, 1, v74);
  if (v58)
  {
    v59 = OUTLINED_FUNCTION_212();
    sub_1DC28EB30(v59, v60, &unk_1DC5234A0);
    sub_1DC28EB30(v79, &qword_1ECC7BFD0, &unk_1DC522550);
    v61 = OUTLINED_FUNCTION_151();
    sub_1DC28EB30(v61, v62, &unk_1DC522550);
    v63 = OUTLINED_FUNCTION_205();
    sub_1DC28EB30(v63, v64, &unk_1DC5234A0);
    v66 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_223_2();
    sub_1DC440004();
    sub_1DC4369C8();
    v66 = v65;
    sub_1DC28EB30(a21, &qword_1ECC7C158, &unk_1DC5234A0);
    sub_1DC28EB30(v79, &qword_1ECC7BFD0, &unk_1DC522550);
    OUTLINED_FUNCTION_19_20();
    sub_1DC43F4A8();
    v67 = OUTLINED_FUNCTION_48_0();
    sub_1DC28EB30(v67, v68, &unk_1DC522550);
  }

  *&v34[v54[7]] = v66;
  v69 = v54[8];
  sub_1DC440B84();
  (*(v80 + 32))(&v34[v54[12]], v22, v81);
  *&v34[v54[9]] = v78;
  OUTLINED_FUNCTION_34();
}

void NLRouterServiceRequest.init(currentUserQuery:turnContext:conversationHistory:requestId:trpCandidateId:probingResult:locale:userQueryDecoration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23)
{
  OUTLINED_FUNCTION_33();
  v62 = v24;
  v63 = v25;
  v60 = v26;
  v61 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_28_13();
  v42 = type metadata accessor for NLRouterTurnProbingResult(0);
  v43 = OUTLINED_FUNCTION_35(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v46 = *a23;
  *v37 = v35;
  *(v37 + 1) = v33;
  v47 = type metadata accessor for NLRouterServiceRequest(0);
  v48 = v47[5];
  sub_1DC4465D4();
  *&v37[v47[6]] = v29;
  v49 = &v37[v47[10]];
  *v49 = v60;
  *(v49 + 1) = v61;
  v50 = &v37[v47[11]];
  *v50 = v62;
  *(v50 + 1) = v63;
  OUTLINED_FUNCTION_187();
  sub_1DC4465D4();
  v51 = OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_39(v51, v52, v42);
  if (v53)
  {
    sub_1DC28EB30(v31, &qword_1ECC7BFD0, &unk_1DC522550);
    sub_1DC28EB30(v23, &qword_1ECC7C158, &unk_1DC5234A0);
    v55 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_223_2();
    OUTLINED_FUNCTION_47_1();
    sub_1DC440004();
    sub_1DC4369C8();
    v55 = v54;
    sub_1DC28EB30(v31, &qword_1ECC7BFD0, &unk_1DC522550);
    OUTLINED_FUNCTION_19_20();
    sub_1DC43F4A8();
  }

  *&v37[v47[7]] = v55;
  v56 = v47[8];
  sub_1DC440B84();
  v57 = v47[12];
  v58 = sub_1DC510C8C();
  OUTLINED_FUNCTION_11_0(v58);
  (*(v59 + 32))(&v37[v57], a22);
  *&v37[v47[9]] = v46;
  OUTLINED_FUNCTION_34();
}

void NLRouterServiceRequest.description.getter()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_35(v32);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_30_1();
  v5 = OUTLINED_FUNCTION_74_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_35(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_146_0();
  v35 = 0xD000000000000018;
  v36 = v11;
  OUTLINED_FUNCTION_286();
  sub_1DC517F4C();

  OUTLINED_FUNCTION_146_0();
  *&v34 = 0xD000000000000016;
  *(&v34 + 1) = v12;
  MEMORY[0x1E1296160](*v0, v0[1]);
  OUTLINED_FUNCTION_360();
  MEMORY[0x1E1296160](0xD000000000000016, *(&v34 + 1));

  OUTLINED_FUNCTION_286();
  sub_1DC517F4C();

  OUTLINED_FUNCTION_146_0();
  *&v34 = 0xD000000000000011;
  *(&v34 + 1) = v13;
  v14 = type metadata accessor for NLRouterServiceRequest(0);
  v15 = v14[5];
  sub_1DC4465D4();
  v16 = sub_1DC51777C();
  MEMORY[0x1E1296160](v16);

  OUTLINED_FUNCTION_360();
  OUTLINED_FUNCTION_231_0();

  OUTLINED_FUNCTION_286();
  sub_1DC517F4C();

  OUTLINED_FUNCTION_146_0();
  *&v34 = 0xD000000000000019;
  *(&v34 + 1) = v17;
  v18 = MEMORY[0x1E12962D0](*(v0 + v14[6]), &type metadata for RequestSummary);
  MEMORY[0x1E1296160](v18);

  OUTLINED_FUNCTION_360();
  OUTLINED_FUNCTION_231_0();

  OUTLINED_FUNCTION_286();
  sub_1DC517F4C();

  OUTLINED_FUNCTION_146_0();
  *&v34 = 0xD000000000000016;
  *(&v34 + 1) = v19;
  v33 = *(v0 + v14[7]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DCE8, &qword_1DC52A980);
  v20 = sub_1DC51777C();
  MEMORY[0x1E1296160](v20);

  OUTLINED_FUNCTION_360();
  OUTLINED_FUNCTION_231_0();

  OUTLINED_FUNCTION_286();
  sub_1DC517F4C();

  OUTLINED_FUNCTION_146_0();
  *&v34 = 0xD000000000000013;
  *(&v34 + 1) = v21;
  v22 = v14[8];
  sub_1DC4465D4();
  v23 = sub_1DC51777C();
  MEMORY[0x1E1296160](v23);

  OUTLINED_FUNCTION_360();
  OUTLINED_FUNCTION_231_0();

  OUTLINED_FUNCTION_286();
  sub_1DC517F4C();

  OUTLINED_FUNCTION_146_0();
  *&v34 = 0xD000000000000019;
  *(&v34 + 1) = v24;
  v25 = *(v0 + v14[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DCF0, &qword_1DC52A988);
  v26 = sub_1DC51777C();
  MEMORY[0x1E1296160](v26);

  OUTLINED_FUNCTION_360();
  OUTLINED_FUNCTION_231_0();

  OUTLINED_FUNCTION_286();
  sub_1DC517F4C();

  *&v34 = 0x7571657220202020;
  *(&v34 + 1) = 0xEF203A6449747365;
  MEMORY[0x1E1296160](*(v1 + v14[10]), *(v1 + v14[10] + 8));
  OUTLINED_FUNCTION_360();
  OUTLINED_FUNCTION_231_0();

  OUTLINED_FUNCTION_286();
  sub_1DC517F4C();

  OUTLINED_FUNCTION_146_0();
  *&v34 = 0xD000000000000014;
  *(&v34 + 1) = v27;
  MEMORY[0x1E1296160](*(v1 + v14[11]), *(v1 + v14[11] + 8));
  OUTLINED_FUNCTION_360();
  OUTLINED_FUNCTION_231_0();

  strcpy(&v34, "    locale: ");
  BYTE13(v34) = 0;
  HIWORD(v34) = -5120;
  v28 = v14[12];
  sub_1DC510C8C();
  OUTLINED_FUNCTION_20_19();
  sub_1DC43F1F8(v29, v30);
  v31 = sub_1DC51823C();
  MEMORY[0x1E1296160](v31);

  OUTLINED_FUNCTION_360();
  MEMORY[0x1E1296160](v34, *(&v34 + 1));

  MEMORY[0x1E1296160](41, 0xE100000000000000);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC43A008(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001DC548280 == a2;
  if (v3 || (OUTLINED_FUNCTION_53_16() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == OUTLINED_FUNCTION_417() && a2 == v6;
    if (v7 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = a1 == 0xD000000000000013 && 0x80000001DC5482A0 == a2;
      if (v8 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = a1 == 0xD000000000000010 && 0x80000001DC5482C0 == a2;
        if (v9 || (OUTLINED_FUNCTION_53_16() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == OUTLINED_FUNCTION_394() && a2 == v10;
          if (v11 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_151_3();
            v13 = v3 && v12 == a2;
            if (v13 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_369_0();
              v15 = v3 && a2 == v14;
              if (v15 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v17 = a1 == OUTLINED_FUNCTION_400() && a2 == v16;
                if (v17 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
                {

                  return 8;
                }

                else
                {
                  OUTLINED_FUNCTION_32_13();
                  OUTLINED_FUNCTION_168();
                  if (a1)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

void sub_1DC43A200()
{
  OUTLINED_FUNCTION_417();
  switch(v0)
  {
    case 1:
    case 6:
    case 8:
      return;
    case 2:
    case 5:
      OUTLINED_FUNCTION_264_0();
      break;
    case 4:
      OUTLINED_FUNCTION_394();
      break;
    case 7:
      OUTLINED_FUNCTION_400();
      break;
    default:
      OUTLINED_FUNCTION_31_1();
      break;
  }
}

uint64_t sub_1DC43A2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DC43A008(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DC43A30C()
{
  sub_1DC4409D4();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC43A344()
{
  sub_1DC4409D4();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void NLRouterServiceRequest.encode(to:)()
{
  OUTLINED_FUNCTION_35_14();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DCF8, &qword_1DC52A990);
  OUTLINED_FUNCTION_3_33(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_7_19();
  sub_1DC4409D4();
  OUTLINED_FUNCTION_118_4();
  v6 = *v0;
  v7 = v0[1];
  OUTLINED_FUNCTION_180_0();
  sub_1DC5181BC();
  if (!v1)
  {
    v8 = type metadata accessor for NLRouterServiceRequest(0);
    v9 = v8[5];
    v10 = OUTLINED_FUNCTION_339_0(1);
    type metadata accessor for NLRouterTurnContext(v10);
    OUTLINED_FUNCTION_218_1();
    sub_1DC43F1F8(v11, v12);
    OUTLINED_FUNCTION_36_19();
    sub_1DC5181AC();
    v30 = *(v0 + v8[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DD00, &qword_1DC52A998);
    sub_1DC440BD0(&qword_1ECC7BA30, sub_1DC440A28);
    OUTLINED_FUNCTION_347_0();
    OUTLINED_FUNCTION_36_19();
    sub_1DC51820C();
    v31 = *(v0 + v8[7]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DD08, &qword_1DC52A9A0);
    sub_1DC440A7C();
    OUTLINED_FUNCTION_347_0();
    OUTLINED_FUNCTION_36_19();
    sub_1DC5181AC();
    v13 = v8[8];
    v14 = OUTLINED_FUNCTION_339_0(4);
    type metadata accessor for NLRouterTurnProbingResult(v14);
    OUTLINED_FUNCTION_217();
    sub_1DC43F1F8(v15, v16);
    OUTLINED_FUNCTION_36_19();
    sub_1DC5181AC();
    v17 = *(v0 + v8[9]);
    sub_1DC440B30();
    v18 = v17;
    OUTLINED_FUNCTION_180_0();
    sub_1DC5181AC();

    v19 = (v0 + v8[10]);
    v20 = *v19;
    v21 = v19[1];
    OUTLINED_FUNCTION_180_0();
    sub_1DC5181BC();
    v22 = (v0 + v8[11]);
    v23 = *v22;
    v24 = v22[1];
    OUTLINED_FUNCTION_439();
    OUTLINED_FUNCTION_180_0();
    sub_1DC5181BC();
    v25 = v8[12];
    OUTLINED_FUNCTION_339_0(8);
    sub_1DC510C8C();
    OUTLINED_FUNCTION_20_19();
    sub_1DC43F1F8(v26, v27);
    OUTLINED_FUNCTION_36_19();
    sub_1DC51820C();
  }

  v28 = OUTLINED_FUNCTION_104_3();
  v29(v28);
  OUTLINED_FUNCTION_37_9();
}

void NLRouterServiceRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_28_1();
  v13 = v12;
  v14 = sub_1DC510C8C();
  v15 = OUTLINED_FUNCTION_0(v14);
  v56 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_11_1();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_47_7();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DD10, &qword_1DC52A9A8);
  OUTLINED_FUNCTION_0(v57);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  v30 = OUTLINED_FUNCTION_31_18();
  v58 = type metadata accessor for NLRouterServiceRequest(v30);
  v31 = OUTLINED_FUNCTION_35(v58);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_1();
  v59 = v34;
  v35 = v13[3];
  v36 = v13[4];
  v37 = OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_121_1(v37, v38);
  sub_1DC4409D4();
  OUTLINED_FUNCTION_283_0();
  sub_1DC51834C();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    *v59 = sub_1DC5180FC();
    v59[1] = v39;
    type metadata accessor for NLRouterTurnContext(0);
    LOBYTE(a10) = 1;
    OUTLINED_FUNCTION_218_1();
    sub_1DC43F1F8(v40, v41);
    OUTLINED_FUNCTION_346();
    sub_1DC5180EC();
    v42 = v58[5];
    sub_1DC440B84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DD00, &qword_1DC52A998);
    sub_1DC440BD0(&qword_1ECC7DD20, sub_1DC440C44);
    OUTLINED_FUNCTION_72_8();
    OUTLINED_FUNCTION_357_0();
    sub_1DC51814C();
    *(v59 + v58[6]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DD08, &qword_1DC52A9A0);
    sub_1DC440C98();
    OUTLINED_FUNCTION_72_8();
    OUTLINED_FUNCTION_357_0();
    sub_1DC5180EC();
    *(v59 + v58[7]) = a10;
    type metadata accessor for NLRouterTurnProbingResult(0);
    LOBYTE(a10) = 4;
    OUTLINED_FUNCTION_217();
    sub_1DC43F1F8(v43, v44);
    OUTLINED_FUNCTION_346();
    OUTLINED_FUNCTION_357_0();
    sub_1DC5180EC();
    v45 = v58[8];
    sub_1DC440B84();
    sub_1DC440D4C();
    OUTLINED_FUNCTION_251_1();
    sub_1DC5180EC();
    *(v59 + v58[9]) = a10;
    v46 = sub_1DC5180FC();
    v47 = (v59 + v58[10]);
    *v47 = v46;
    v47[1] = v48;
    OUTLINED_FUNCTION_439();
    v49 = sub_1DC5180FC();
    v50 = (v59 + v58[11]);
    *v50 = v49;
    v50[1] = v51;
    OUTLINED_FUNCTION_20_19();
    sub_1DC43F1F8(v52, v53);
    OUTLINED_FUNCTION_346();
    sub_1DC51814C();
    v54 = OUTLINED_FUNCTION_273();
    v55(v54);
    (*(v56 + 32))(v59 + v58[12], v11, v14);
    OUTLINED_FUNCTION_221_1();
    sub_1DC43F610();
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    sub_1DC43F4A8();
  }

  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC43AEAC()
{
  OUTLINED_FUNCTION_463();
  if (v2 == 0x74706D6F7270 && v1 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_267_0();
    OUTLINED_FUNCTION_168();
    v4 = v0 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DC43AF48()
{
  sub_1DC440DA0();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC43AF80()
{
  sub_1DC440DA0();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void sub_1DC43B040()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v1;
  v4 = v3;
  v22 = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_0(v8);
  v21 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_28_13();
  v13 = v4[4];
  v14 = OUTLINED_FUNCTION_121_1(v4, v4[3]);
  v2(v14);
  sub_1DC51834C();
  if (!v0)
  {
    v15 = sub_1DC5180FC();
    v17 = v16;
    v18 = *(v21 + 8);
    v19 = OUTLINED_FUNCTION_16();
    v20(v19);
    *v22 = v15;
    v22[1] = v17;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  OUTLINED_FUNCTION_329_0();
  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC43B1B8()
{
  OUTLINED_FUNCTION_463();
  if (v2 == 0x74754F6C65646F6DLL && v0 == 0xEB00000000747570)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_267_0();
    OUTLINED_FUNCTION_168();
    v4 = v1 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DC43B268()
{
  sub_1DC440DF4();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC43B2A0()
{
  sub_1DC440DF4();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void sub_1DC43B31C()
{
  OUTLINED_FUNCTION_28_1();
  v22 = v1;
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_95();
  v12 = v0[1];
  v21 = *v0;
  v14 = *(v3 + 24);
  v13 = *(v3 + 32);
  v15 = OUTLINED_FUNCTION_16();
  v17 = OUTLINED_FUNCTION_121_1(v15, v16);
  v22(v17);
  sub_1DC51835C();
  sub_1DC5181BC();
  v18 = *(v8 + 8);
  v19 = OUTLINED_FUNCTION_89();
  v20(v19);
  OUTLINED_FUNCTION_30_13();
  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC43B4A0()
{
  OUTLINED_FUNCTION_42_0();
  v3 = v1 == 0x6564656563637573 && v2 == 0xE900000000000064;
  if (v3 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0xD000000000000014 && 0x80000001DC548300 == v0;
    if (v5 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = v1 == OUTLINED_FUNCTION_419() && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_151_3();
        v9 = v3 && v8 == v0;
        if (v9 || (OUTLINED_FUNCTION_53_16() & 1) != 0)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_151_3();
          v11 = v3 && v10 == v0;
          if (v11 || (OUTLINED_FUNCTION_53_16() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v13 = v1 == OUTLINED_FUNCTION_418() && v0 == v12;
            if (v13 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
            {

              return 5;
            }

            else if (v1 == 0xD000000000000012 && 0x80000001DC548360 == v0)
            {

              return 6;
            }

            else
            {
              OUTLINED_FUNCTION_32_13();
              OUTLINED_FUNCTION_168();
              if (v1)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

void sub_1DC43B63C(char a1)
{
  switch(a1)
  {
    case 2:
      OUTLINED_FUNCTION_419();
      break;
    case 3:
    case 4:
      OUTLINED_FUNCTION_31_1();
      break;
    case 5:
      OUTLINED_FUNCTION_418();
      break;
    default:
      return;
  }
}

uint64_t sub_1DC43B714()
{
  sub_1DC440E9C();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC43B74C()
{
  sub_1DC440E9C();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC43B784()
{
  sub_1DC440EF0();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC43B7BC()
{
  sub_1DC440EF0();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC43B7F4()
{
  sub_1DC441040();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC43B82C()
{
  sub_1DC441040();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC43B86C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC43B4A0();
  *a1 = result;
  return result;
}

uint64_t sub_1DC43B89C()
{
  sub_1DC440E48();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC43B8D4()
{
  sub_1DC440E48();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC43B90C()
{
  sub_1DC440FEC();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC43B944()
{
  sub_1DC440FEC();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC43B97C()
{
  sub_1DC440F98();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC43B9B4()
{
  sub_1DC440F98();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC43B9EC()
{
  sub_1DC440F44();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC43BA24()
{
  sub_1DC440F44();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC43BA5C()
{
  sub_1DC441094();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC43BA94()
{
  sub_1DC441094();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void NLRouterServiceResponseStatus.encode(to:)()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DD78, &qword_1DC52A9D0);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_34_17(v9, v54);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DD80, &qword_1DC52A9D8);
  OUTLINED_FUNCTION_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_49_14(v14, v55);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DD88, &qword_1DC52A9E0);
  OUTLINED_FUNCTION_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DD90, &qword_1DC52A9E8);
  OUTLINED_FUNCTION_0(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DD98, &qword_1DC52A9F0);
  OUTLINED_FUNCTION_0(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DDA0, &qword_1DC52A9F8);
  OUTLINED_FUNCTION_0(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_54_3();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DDA8, &qword_1DC52AA00);
  OUTLINED_FUNCTION_3_33(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_28_13();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DDB0, &qword_1DC52AA08);
  OUTLINED_FUNCTION_0(v56);
  v36 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_95();
  v40 = *v2;
  v41 = *(v4 + 24);
  v42 = *(v4 + 32);
  v43 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_121_1(v43, v44);
  sub_1DC440E48();
  sub_1DC51835C();
  v45 = (v36 + 8);
  switch(v40)
  {
    case 1:
      sub_1DC441040();
      OUTLINED_FUNCTION_68_9();
      goto LABEL_9;
    case 2:
      sub_1DC440FEC();
      OUTLINED_FUNCTION_68_9();
      goto LABEL_9;
    case 3:
      OUTLINED_FUNCTION_449();
      sub_1DC440F98();
      OUTLINED_FUNCTION_68_9();
      goto LABEL_9;
    case 4:
      sub_1DC440F44();
      OUTLINED_FUNCTION_68_9();
      goto LABEL_9;
    case 5:
      sub_1DC440EF0();
      OUTLINED_FUNCTION_68_9();
      goto LABEL_9;
    case 6:
      sub_1DC440E9C();
      OUTLINED_FUNCTION_68_9();
LABEL_9:
      v51 = OUTLINED_FUNCTION_239();
      v52(v51);
      v53 = *v45;
      v49 = OUTLINED_FUNCTION_147_0();
      break;
    default:
      sub_1DC441094();
      OUTLINED_FUNCTION_124_1();
      sub_1DC51817C();
      v46 = OUTLINED_FUNCTION_147_4();
      v47(v46, v0);
      v48 = *v45;
      v49 = OUTLINED_FUNCTION_212();
      break;
  }

  v50(v49);
  OUTLINED_FUNCTION_26_0();
}

uint64_t _s13CDMFoundation14RequestSummaryV13UserInputTypeO9hashValueSivg_0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_479();
  MEMORY[0x1E1296BB0](v1);
  return sub_1DC51833C();
}

void NLRouterServiceResponseStatus.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_1();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v103 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DDB8, &qword_1DC52AA10);
  OUTLINED_FUNCTION_0(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_25();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DDC0, &qword_1DC52AA18);
  OUTLINED_FUNCTION_0(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_76_9(v35, v97);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DDC8, &qword_1DC52AA20);
  OUTLINED_FUNCTION_0(v102);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_50_13(v39, v98);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DDD0, &qword_1DC52AA28);
  OUTLINED_FUNCTION_0(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_49_14(v44, v99);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DDD8, &qword_1DC52AA30);
  OUTLINED_FUNCTION_0(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_34_17(v49, v100);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DDE0, &qword_1DC52AA38);
  OUTLINED_FUNCTION_0(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_47_7();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DDE8, &qword_1DC52AA40);
  OUTLINED_FUNCTION_0(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_78_8();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DDF0, &qword_1DC52AA48);
  OUTLINED_FUNCTION_0(v58);
  v60 = v59;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_95();
  v64 = v25[3];
  v65 = v25[4];
  v66 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_121_1(v66, v67);
  sub_1DC440E48();
  OUTLINED_FUNCTION_454();
  sub_1DC51834C();
  if (!v20)
  {
    v104 = v58;
    v68 = sub_1DC51816C();
    v69 = sub_1DC3EEF88(v68, 0);
    if (v71 != v70 >> 1)
    {
      OUTLINED_FUNCTION_106_4();
      OUTLINED_FUNCTION_337_0();
      if (v76 == v77)
      {
        __break(1u);
        return;
      }

      v101 = *(v75 + v73);
      sub_1DC4410E8(v73 + 1, v72, v69, v75, v73, v74);
      v79 = v78;
      v81 = v80;
      swift_unknownObjectRelease();
      if (v79 == v81 >> 1)
      {
        switch(v101)
        {
          case 1:
            sub_1DC441040();
            OUTLINED_FUNCTION_20_3(&a18);
            OUTLINED_FUNCTION_54_16();
            swift_unknownObjectRelease();
            goto LABEL_17;
          case 2:
            sub_1DC440FEC();
            OUTLINED_FUNCTION_54_16();
            swift_unknownObjectRelease();
            v82 = OUTLINED_FUNCTION_158_2();
            break;
          case 3:
            OUTLINED_FUNCTION_449();
            sub_1DC440F98();
            OUTLINED_FUNCTION_54_16();
            swift_unknownObjectRelease();
            goto LABEL_17;
          case 4:
            sub_1DC440F44();
            OUTLINED_FUNCTION_54_16();
            swift_unknownObjectRelease();
            v82 = OUTLINED_FUNCTION_240_0();
            v84 = v102;
            break;
          case 5:
            sub_1DC440EF0();
            OUTLINED_FUNCTION_54_16();
            swift_unknownObjectRelease();
            v82 = OUTLINED_FUNCTION_259_0();
            break;
          case 6:
            sub_1DC440E9C();
            OUTLINED_FUNCTION_54_16();
            swift_unknownObjectRelease();
LABEL_17:
            v82 = OUTLINED_FUNCTION_240_0();
            break;
          default:
            sub_1DC441094();
            OUTLINED_FUNCTION_20_3(&a17);
            OUTLINED_FUNCTION_54_16();
            swift_unknownObjectRelease();
            v82 = OUTLINED_FUNCTION_240_0();
            v84 = v54;
            break;
        }

        v83(v82, v84);
        (*(v60 + 8))(v21, v104);
        *v103 = v101;
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        goto LABEL_10;
      }
    }

    v85 = sub_1DC517F7C();
    OUTLINED_FUNCTION_236_1();
    swift_allocError();
    v87 = v86;
    v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D670, &qword_1DC528AF8) + 48);
    *v87 = &type metadata for NLRouterServiceResponseStatus;
    sub_1DC5180BC();
    OUTLINED_FUNCTION_117_7();
    v89 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_7_1(v85);
    v91 = *(v90 + 104);
    v92 = OUTLINED_FUNCTION_440();
    v93(v92);
    swift_willThrow();
    swift_unknownObjectRelease();
    v94 = *(v60 + 8);
    v95 = OUTLINED_FUNCTION_152();
    v96(v95);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v25);
LABEL_10:
  OUTLINED_FUNCTION_329_0();
  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC43C808()
{
  v0 = OUTLINED_FUNCTION_57_0();
  v2 = v1(v0);
  OUTLINED_FUNCTION_35(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_43();

  return v6(v5);
}

uint64_t NLRouterServiceResponse.status.getter()
{
  v2 = OUTLINED_FUNCTION_57_0();
  result = type metadata accessor for NLRouterServiceResponse(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t NLRouterServiceResponse.decisionSource.getter()
{
  v2 = OUTLINED_FUNCTION_57_0();
  v3 = (v1 + *(type metadata accessor for NLRouterServiceResponse(v2) + 24));
  v4 = *v3;
  v5 = v3[1];
  *v0 = *v3;
  v0[1] = v5;

  return sub_1DC3982F8(v4, v5);
}

uint64_t NLRouterServiceResponse.init(routingDecision:status:)@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1DC5157EC();
  OUTLINED_FUNCTION_11_0(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_31_0();
  v8(v7);
  result = OUTLINED_FUNCTION_391();
  *(a2 + v10) = v3;
  v11 = (a2 + *(result + 24));
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_1DC43C94C()
{
  sub_1DC517F4C();
  MEMORY[0x1E1296160](0x3A73757461747328, 0xE900000000000020);
  v1 = type metadata accessor for NLRouterServiceResponse(0);
  v4 = *(v0 + *(v1 + 20));
  OUTLINED_FUNCTION_474();
  MEMORY[0x1E1296160](0xD000000000000013, 0x80000001DC548030);
  sub_1DC32AB9C();
  MEMORY[0x1E1296160](v2);

  MEMORY[0x1E1296160](0xD000000000000012, 0x80000001DC548050);
  v5 = *(v0 + *(v1 + 24));
  OUTLINED_FUNCTION_474();
  MEMORY[0x1E1296160](41, 0xE100000000000000);
  return 0;
}

uint64_t NLRouterServiceResponse.description.getter()
{
  v0 = sub_1DC5106EC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DC5106DC();
  v3 = OUTLINED_FUNCTION_38_2();
  type metadata accessor for NLRouterServiceResponse(v3);
  sub_1DC43F1F8(&qword_1ECC7BBF0, type metadata accessor for NLRouterServiceResponse);
  OUTLINED_FUNCTION_63_0();
  v4 = sub_1DC5106CC();
  v6 = v5;

  v7 = OUTLINED_FUNCTION_30_6();
  sub_1DC2A6784(v7, v8);
  v9 = OUTLINED_FUNCTION_30_6();
  sub_1DC333790(v9, v10);
  if (v11)
  {
    OUTLINED_FUNCTION_137();
    v12 = OUTLINED_FUNCTION_30_6();
    sub_1DC2AD740(v12, v13);
LABEL_9:
    v25 = OUTLINED_FUNCTION_30_6();
    sub_1DC2AD740(v25, v26);
    return OUTLINED_FUNCTION_48_0();
  }

  v30 = v4;
  v31 = v6;
  v14 = OUTLINED_FUNCTION_30_6();
  sub_1DC2A6784(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB10, &unk_1DC52AA50);
  if (!swift_dynamicCast())
  {
    v21 = OUTLINED_FUNCTION_30_6();
    sub_1DC2AD740(v21, v22);
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    sub_1DC28EB30(v28, &qword_1ECC7CB18, &unk_1DC524100);
LABEL_8:
    v23 = OUTLINED_FUNCTION_30_6();
    sub_1DC3333D4(v23, v24);
    OUTLINED_FUNCTION_137();
    goto LABEL_9;
  }

  sub_1DC28F9B0(v28, v32);
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v16 = sub_1DC51806C();
  v17 = OUTLINED_FUNCTION_30_6();
  sub_1DC2AD740(v17, v18);
  if ((v16 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(v32, v33);
  sub_1DC51805C();
  v19 = OUTLINED_FUNCTION_30_6();
  sub_1DC2AD740(v19, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  return OUTLINED_FUNCTION_48_0();
}

uint64_t static NLRouterServiceResponse.NLRoutingDecisionSource.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_11;
      }

      sub_1DC39830C(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_18;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_11;
      }

      v8 = 1;
      sub_1DC39830C(*a1, 1uLL);
      sub_1DC39830C(v4, 1uLL);
      return v8;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_11;
      }

      sub_1DC39830C(*a1, 2uLL);
      v6 = v4;
      v7 = 2;
      goto LABEL_18;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_11;
      }

      sub_1DC39830C(*a1, 3uLL);
      v6 = v4;
      v7 = 3;
      goto LABEL_18;
    default:
      if (v5 >= 4)
      {
        v17 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v19 = sub_1DC51825C();
          v20 = OUTLINED_FUNCTION_46_6();
          sub_1DC3982F8(v20, v21);
          v22 = OUTLINED_FUNCTION_56_0();
          sub_1DC3982F8(v22, v23);
          v24 = OUTLINED_FUNCTION_56_0();
          sub_1DC39830C(v24, v25);
          v26 = OUTLINED_FUNCTION_46_6();
          sub_1DC39830C(v26, v27);
          return v19 & 1;
        }

        sub_1DC3982F8(v17, v3);
        v29 = OUTLINED_FUNCTION_56_0();
        sub_1DC3982F8(v29, v30);
        v31 = OUTLINED_FUNCTION_56_0();
        sub_1DC39830C(v31, v32);
        v6 = OUTLINED_FUNCTION_56_0();
LABEL_18:
        sub_1DC39830C(v6, v7);
        return 1;
      }

      else
      {
LABEL_11:
        v9 = OUTLINED_FUNCTION_46_6();
        sub_1DC3982F8(v9, v10);
        v11 = OUTLINED_FUNCTION_56_0();
        sub_1DC3982F8(v11, v12);
        v13 = OUTLINED_FUNCTION_56_0();
        sub_1DC39830C(v13, v14);
        v15 = OUTLINED_FUNCTION_46_6();
        sub_1DC39830C(v15, v16);
        return 0;
      }
  }
}

uint64_t sub_1DC43CE60(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656469727265766FLL && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
      if (v7 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974736972756568 && a2 == 0xED0000656C755263;
        if (v8 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6974736972756568 && a2 == 0xE900000000000063)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_32_13();
          OUTLINED_FUNCTION_168();
          if (a1)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1DC43CFC8(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 0x656469727265766FLL;
      break;
    case 2:
      result = 0x6C65646F6DLL;
      break;
    case 3:
    case 4:
      result = 0x6974736972756568;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DC43D058()
{
  OUTLINED_FUNCTION_463();
  if (v2 == 0x6572656767697274 && v0 == 0xED0000656C755264)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_267_0();
    OUTLINED_FUNCTION_168();
    v4 = v1 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DC43D0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DC43CE60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DC43D0F4()
{
  sub_1DC441160();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC43D12C()
{
  sub_1DC441160();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC43D1B0()
{
  sub_1DC4411B4();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC43D1E8()
{
  sub_1DC4411B4();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC43D220()
{
  sub_1DC441208();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC43D258()
{
  sub_1DC441208();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC43D290()
{
  sub_1DC44125C();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC43D2C8()
{
  sub_1DC44125C();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC43D300()
{
  sub_1DC441304();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC43D338()
{
  sub_1DC441304();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC43D370()
{
  sub_1DC4412B0();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC43D3A8()
{
  sub_1DC4412B0();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void NLRouterServiceResponse.NLRoutingDecisionSource.encode(to:)()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DDF8, &qword_1DC52AA60);
  v52 = OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34_17(v7, v47);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DE00, &qword_1DC52AA68);
  OUTLINED_FUNCTION_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_49_14(v12, v48);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DE08, &qword_1DC52AA70);
  OUTLINED_FUNCTION_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DE10, &qword_1DC52AA78);
  OUTLINED_FUNCTION_0(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_30_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DE18, &qword_1DC52AA80);
  OUTLINED_FUNCTION_3_33(v21);
  v50 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_24_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DE20, &qword_1DC52AA88);
  v53 = OUTLINED_FUNCTION_0(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_28_13();
  v30 = v0[1];
  v49 = *v0;
  v32 = *(v2 + 24);
  v31 = *(v2 + 32);
  v33 = OUTLINED_FUNCTION_146_1();
  OUTLINED_FUNCTION_121_1(v33, v34);
  sub_1DC441160();
  OUTLINED_FUNCTION_422();
  sub_1DC51835C();
  switch(v30)
  {
    case 0:
      sub_1DC441304();
      OUTLINED_FUNCTION_124_1();
      sub_1DC51817C();
      v35 = *(v50 + 8);
      v36 = OUTLINED_FUNCTION_117_0();
      v37(v36);
      v38 = OUTLINED_FUNCTION_147_4();
      v40 = v53;
      goto LABEL_8;
    case 1:
      OUTLINED_FUNCTION_342_0();
      sub_1DC4412B0();
      v41 = v53;
      OUTLINED_FUNCTION_182_0();
      sub_1DC51817C();
      v42 = OUTLINED_FUNCTION_258_0();
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_187_1();
      sub_1DC44125C();
      v41 = v53;
      OUTLINED_FUNCTION_182_0();
      sub_1DC51817C();
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_343_0();
      sub_1DC441208();
      v41 = v53;
      OUTLINED_FUNCTION_182_0();
      sub_1DC51817C();
LABEL_5:
      v42 = OUTLINED_FUNCTION_239();
LABEL_7:
      v43(v42);
      v38 = OUTLINED_FUNCTION_147_4();
      v40 = v41;
LABEL_8:
      v39(v38, v40);
      break;
    default:
      OUTLINED_FUNCTION_352_0();
      sub_1DC4411B4();
      OUTLINED_FUNCTION_124_1();
      sub_1DC51817C();
      sub_1DC5181BC();
      OUTLINED_FUNCTION_178_2();
      v44(v51, v52);
      v45 = OUTLINED_FUNCTION_147_4();
      v46(v45, v53);
      break;
  }

  OUTLINED_FUNCTION_30_13();
  OUTLINED_FUNCTION_26_0();
}

void NLRouterServiceResponse.NLRoutingDecisionSource.init(from:)()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v1;
  v81 = v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DE28, &qword_1DC52AA90);
  OUTLINED_FUNCTION_0(v80);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  v83 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DE30, &qword_1DC52AA98);
  OUTLINED_FUNCTION_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_385(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DE38, &qword_1DC52AAA0);
  OUTLINED_FUNCTION_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_34_17(v17, v79);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DE40, &qword_1DC52AAA8);
  OUTLINED_FUNCTION_0(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_95();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DE48, &qword_1DC52AAB0);
  OUTLINED_FUNCTION_0(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_47_7();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DE50, &qword_1DC52AAB8);
  OUTLINED_FUNCTION_0(v26);
  v82 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_78_8();
  v31 = v2[4];
  OUTLINED_FUNCTION_121_1(v2, v2[3]);
  sub_1DC441160();
  OUTLINED_FUNCTION_434();
  sub_1DC51834C();
  if (!v0)
  {
    v84 = v2;
    OUTLINED_FUNCTION_425();
    v32 = sub_1DC51816C();
    OUTLINED_FUNCTION_338_0(v32);
    if (!v33)
    {
      OUTLINED_FUNCTION_106_4();
      OUTLINED_FUNCTION_337_0();
      if (v38 == v39)
      {
        __break(1u);
        return;
      }

      v40 = *(v37 + v35);
      OUTLINED_FUNCTION_336_0(v34, v35, v36, v37);
      v42 = v41;
      v44 = v43;
      swift_unknownObjectRelease();
      if (v42 == v44 >> 1)
      {
        switch(v40)
        {
          case 1:
            OUTLINED_FUNCTION_342_0();
            sub_1DC4412B0();
            OUTLINED_FUNCTION_127_4();
            swift_unknownObjectRelease();
            v70 = OUTLINED_FUNCTION_219_1();
            v71(v70);
            v72 = OUTLINED_FUNCTION_30_18();
            v73(v72);
            v49 = 1;
            break;
          case 2:
            OUTLINED_FUNCTION_187_1();
            sub_1DC44125C();
            OUTLINED_FUNCTION_127_4();
            swift_unknownObjectRelease();
            v62 = OUTLINED_FUNCTION_219_1();
            v63(v62);
            v64 = OUTLINED_FUNCTION_30_18();
            v65(v64);
            v49 = 2;
            break;
          case 3:
            OUTLINED_FUNCTION_343_0();
            sub_1DC441208();
            OUTLINED_FUNCTION_127_4();
            swift_unknownObjectRelease();
            v66 = OUTLINED_FUNCTION_219_1();
            v67(v66);
            v68 = OUTLINED_FUNCTION_30_18();
            v69(v68);
            v49 = 3;
            break;
          case 4:
            OUTLINED_FUNCTION_352_0();
            sub_1DC4411B4();
            sub_1DC5180AC();
            v49 = v83;
            sub_1DC5180FC();
            OUTLINED_FUNCTION_192();
            swift_unknownObjectRelease();
            v74 = OUTLINED_FUNCTION_437();
            v75(v74);
            v76 = *(v82 + 8);
            v77 = OUTLINED_FUNCTION_121_0();
            v78(v77);
            break;
          default:
            sub_1DC441304();
            OUTLINED_FUNCTION_127_4();
            swift_unknownObjectRelease();
            v45 = OUTLINED_FUNCTION_219_1();
            v46(v45, v22);
            v47 = OUTLINED_FUNCTION_30_18();
            v48(v47);
            v49 = 0;
            break;
        }

        *v81 = 0;
        v81[1] = v49;
        v61 = v84;
        goto LABEL_10;
      }
    }

    v50 = sub_1DC517F7C();
    OUTLINED_FUNCTION_236_1();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D670, &qword_1DC528AF8) + 48);
    *v52 = &type metadata for NLRouterServiceResponse.NLRoutingDecisionSource;
    OUTLINED_FUNCTION_425();
    sub_1DC5180BC();
    OUTLINED_FUNCTION_117_7();
    v54 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_7_1(v50);
    v56 = *(v55 + 104);
    v57 = OUTLINED_FUNCTION_440();
    v58(v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    v59 = OUTLINED_FUNCTION_30_18();
    v60(v59);
    v2 = v84;
  }

  v61 = v2;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  OUTLINED_FUNCTION_382();
  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC43DF48()
{
  OUTLINED_FUNCTION_42_0();
  v3 = v1 == OUTLINED_FUNCTION_399() && v0 == v2;
  if (v3 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x737574617473 && v0 == 0xE600000000000000;
    if (v5 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x6E6F697369636564 && v0 == 0xEE00656372756F53)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_32_13();
      OUTLINED_FUNCTION_168();
      OUTLINED_FUNCTION_460();
      if (v3)
      {
        return v7 + 1;
      }

      else
      {
        return v7;
      }
    }
  }
}

uint64_t sub_1DC43E014(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_399();
  }

  if (a1 == 1)
  {
    return 0x737574617473;
  }

  return 0x6E6F697369636564;
}

uint64_t sub_1DC43E0B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC43DF48();
  *a1 = result;
  return result;
}

uint64_t sub_1DC43E0D8()
{
  sub_1DC441358();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC43E110()
{
  sub_1DC441358();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void NLRouterServiceResponse.encode(to:)()
{
  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_143_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DE58, &qword_1DC52AAC0);
  OUTLINED_FUNCTION_3_33(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_7_19();
  sub_1DC441358();
  OUTLINED_FUNCTION_118_4();
  sub_1DC5157EC();
  OUTLINED_FUNCTION_2_36();
  sub_1DC43F1F8(v6, v7);
  OUTLINED_FUNCTION_36_19();
  sub_1DC51820C();
  if (!v1)
  {
    v8 = type metadata accessor for NLRouterServiceResponse(0);
    v14 = *(v0 + *(v8 + 20));
    OUTLINED_FUNCTION_388();
    sub_1DC4413AC();
    OUTLINED_FUNCTION_136_4();
    sub_1DC51820C();
    v9 = (v0 + *(v8 + 24));
    v15 = *v9;
    v16 = v9[1];
    OUTLINED_FUNCTION_344_0();
    sub_1DC3982F8(v10, v11);
    sub_1DC441400();
    OUTLINED_FUNCTION_136_4();
    sub_1DC51820C();
    sub_1DC39830C(v15, v16);
  }

  v12 = OUTLINED_FUNCTION_104_3();
  v13(v12);
  OUTLINED_FUNCTION_381();
  OUTLINED_FUNCTION_37_9();
}

void NLRouterServiceResponse.init(from:)()
{
  OUTLINED_FUNCTION_28_1();
  v3 = v2;
  v4 = sub_1DC5157EC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v25 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_385(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DE60, &qword_1DC52AAC8);
  v26 = OUTLINED_FUNCTION_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_31_18();
  v15 = type metadata accessor for NLRouterServiceResponse(v14);
  v16 = OUTLINED_FUNCTION_35(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3();
  v19 = v3[3];
  v20 = v3[4];
  OUTLINED_FUNCTION_95_5(v3);
  sub_1DC441358();
  OUTLINED_FUNCTION_283_0();
  sub_1DC51834C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    LOBYTE(v28) = 0;
    OUTLINED_FUNCTION_2_36();
    sub_1DC43F1F8(v21, v22);
    sub_1DC51814C();
    (*(v25 + 32))(v1, v27, v4);
    OUTLINED_FUNCTION_388();
    sub_1DC441454();
    OUTLINED_FUNCTION_330_0();
    OUTLINED_FUNCTION_124_1();
    sub_1DC51814C();
    *(v1 + *(v15 + 20)) = 0;
    OUTLINED_FUNCTION_344_0();
    sub_1DC4414A8();
    OUTLINED_FUNCTION_330_0();
    OUTLINED_FUNCTION_124_1();
    sub_1DC51814C();
    v23 = OUTLINED_FUNCTION_259_0();
    v24(v23, v26);
    *(v1 + *(v15 + 24)) = v28;
    sub_1DC43F610();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    sub_1DC43F4A8();
  }

  OUTLINED_FUNCTION_382();
  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC43E648()
{
  OUTLINED_FUNCTION_463();
  if (v2 == 0x6365447972657571 && v0 == 0xEF6E6F697461726FLL)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_267_0();
    OUTLINED_FUNCTION_168();
    v4 = v1 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DC43E6B4()
{
  OUTLINED_FUNCTION_479();
  MEMORY[0x1E1296BB0](0);
  return sub_1DC51833C();
}

uint64_t sub_1DC43E73C()
{
  sub_1DC4414FC();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC43E774()
{
  sub_1DC4414FC();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void NLRouterCurrentUserQueryDecoration.encode(to:)()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DE78, &qword_1DC52AAD0);
  OUTLINED_FUNCTION_3_33(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_11_1();
  v9 = *v0;
  v10 = v2[3];
  v11 = v2[4];
  OUTLINED_FUNCTION_95_5(v2);
  sub_1DC4414FC();
  v12 = v9;
  OUTLINED_FUNCTION_375_0();
  OUTLINED_FUNCTION_235_1();
  sub_1DC51835C();
  sub_1DC516D9C();
  OUTLINED_FUNCTION_205_2();
  sub_1DC43F1F8(v13, v14);
  OUTLINED_FUNCTION_347_0();
  OUTLINED_FUNCTION_96_4();
  sub_1DC51820C();

  v15 = *(v5 + 8);
  v16 = OUTLINED_FUNCTION_29_0();
  v17(v16);
  OUTLINED_FUNCTION_141_3();
  OUTLINED_FUNCTION_26_0();
}

void NLRouterCurrentUserQueryDecoration.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_28_1();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DE80, &qword_1DC52AAD8);
  OUTLINED_FUNCTION_0(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_28_13();
  v21 = v12[3];
  v22 = v12[4];
  v23 = OUTLINED_FUNCTION_220_0();
  OUTLINED_FUNCTION_121_1(v23, v24);
  sub_1DC4414FC();
  OUTLINED_FUNCTION_422();
  sub_1DC51834C();
  if (!v10)
  {
    sub_1DC516D9C();
    OUTLINED_FUNCTION_205_2();
    sub_1DC43F1F8(v25, v26);
    sub_1DC51814C();
    v27 = *(v17 + 8);
    v28 = OUTLINED_FUNCTION_16();
    v29(v28);
    *v14 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  OUTLINED_FUNCTION_329_0();
  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC43EAFC(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_479();
  MEMORY[0x1E1296BB0](a1);
  return sub_1DC51833C();
}

void *sub_1DC43EB44@<X0>(void *a1@<X8>)
{
  result = sub_1DC43EA74();
  *a1 = result;
  return result;
}

size_t sub_1DC43EB6C(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC43EEA8(v9, a2, &qword_1ECC7DEE0, &qword_1DC52E710, type metadata accessor for NLRouterActionCandidate);
  v11 = *(type metadata accessor for NLRouterActionCandidate(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC43EF94(a4 + v12, v9, v10 + v12, type metadata accessor for NLRouterActionCandidate);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DC43EC90(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC43EEA8(v9, a2, &unk_1ECC7D370, &unk_1DC5283D0, MEMORY[0x1E69D09E0]);
  v11 = *(sub_1DC51122C() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC43EF94(a4 + v12, v9, v10 + v12, MEMORY[0x1E69D09E0]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DC43EDB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DED8, &qword_1DC52E708);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_1DC43EEA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

  OUTLINED_FUNCTION_480(a1, a2, a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_52(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC43EF94(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_42_0();
  if (v9 < v8 || (v10 = (a4)(0), result = OUTLINED_FUNCTION_35(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_62_2();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_62_2();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1DC43F060()
{
  v1 = *v0;
  sub_1DC2A710C();
  *v0 = v2;
}

uint64_t sub_1DC43F0B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

unint64_t sub_1DC43F150()
{
  result = qword_1ECC8B390;
  if (!qword_1ECC8B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B390);
  }

  return result;
}

unint64_t sub_1DC43F1A4()
{
  result = qword_1ECC7DA00;
  if (!qword_1ECC7DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DA00);
  }

  return result;
}

uint64_t sub_1DC43F1F8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_56_7();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DC43F23C()
{
  result = qword_1ECC7DA18;
  if (!qword_1ECC7DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DA18);
  }

  return result;
}

uint64_t sub_1DC43F290(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DC43F2D0()
{
  OUTLINED_FUNCTION_42_0();
  v5 = OUTLINED_FUNCTION_480(v1, v2, v3, v4);
  OUTLINED_FUNCTION_11_0(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return v0;
}

uint64_t sub_1DC43F31C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_33_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_5(v3);

  return sub_1DC41F9CC();
}

uint64_t sub_1DC43F3E4()
{
  OUTLINED_FUNCTION_488();
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_140_0();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_1(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_453(v6);
  OUTLINED_FUNCTION_487();

  return sub_1DC422C34();
}

uint64_t sub_1DC43F4A8()
{
  v1 = OUTLINED_FUNCTION_155();
  v3 = v2(v1);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1DC43F544()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_65_1();
  sub_1DC32977C();
  sub_1DC51586C();
  OUTLINED_FUNCTION_65_1();
  sub_1DC32977C();
  return sub_1DC51585C();
}

uint64_t sub_1DC43F58C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DC32977C();
  return sub_1DC5158CC();
}

unint64_t sub_1DC43F5BC()
{
  result = qword_1ECC7BC98;
  if (!qword_1ECC7BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BC98);
  }

  return result;
}

uint64_t sub_1DC43F610()
{
  OUTLINED_FUNCTION_42_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_11_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return v0;
}

uint64_t sub_1DC43F6D4()
{
  OUTLINED_FUNCTION_373_0();
  v1 = *(v0 + 32);
  return sub_1DC42DF9C(v2);
}

unint64_t sub_1DC43F774()
{
  result = qword_1ECC84F98[0];
  if (!qword_1ECC84F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC84F98);
  }

  return result;
}

unint64_t sub_1DC43F7C8()
{
  result = qword_1ECC8B3A0;
  if (!qword_1ECC8B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B3A0);
  }

  return result;
}

unint64_t sub_1DC43F81C()
{
  result = qword_1ECC8B3A8;
  if (!qword_1ECC8B3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B3A8);
  }

  return result;
}

unint64_t sub_1DC43F870()
{
  result = qword_1ECC8B3B0;
  if (!qword_1ECC8B3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B3B0);
  }

  return result;
}

unint64_t sub_1DC43F8C4()
{
  result = qword_1ECC8B3B8;
  if (!qword_1ECC8B3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B3B8);
  }

  return result;
}

unint64_t sub_1DC43F918()
{
  result = qword_1ECC84C50;
  if (!qword_1ECC84C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC84C50);
  }

  return result;
}

unint64_t sub_1DC43F96C()
{
  result = qword_1ECC85138;
  if (!qword_1ECC85138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC85138);
  }

  return result;
}

unint64_t sub_1DC43F9C0()
{
  result = qword_1ECC83560[0];
  if (!qword_1ECC83560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC83560);
  }

  return result;
}

unint64_t sub_1DC43FA14()
{
  result = qword_1ECC8B3C8;
  if (!qword_1ECC8B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B3C8);
  }

  return result;
}

unint64_t sub_1DC43FA68()
{
  result = qword_1ECC8B3D0;
  if (!qword_1ECC8B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B3D0);
  }

  return result;
}

unint64_t sub_1DC43FABC()
{
  result = qword_1ECC830A8[0];
  if (!qword_1ECC830A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC830A8);
  }

  return result;
}

unint64_t sub_1DC43FB10()
{
  result = qword_1ECC83700[0];
  if (!qword_1ECC83700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC83700);
  }

  return result;
}

unint64_t sub_1DC43FB64()
{
  result = qword_1ECC7BA40;
  if (!qword_1ECC7BA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7DB48, &qword_1DC52A860);
    sub_1DC43F1F8(&qword_1ECC7BD48, type metadata accessor for TurnSummary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BA40);
  }

  return result;
}

unint64_t sub_1DC43FC18()
{
  result = qword_1ECC7BD18;
  if (!qword_1ECC7BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BD18);
  }

  return result;
}

unint64_t sub_1DC43FC6C()
{
  result = qword_1ECC7DB58;
  if (!qword_1ECC7DB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7DB48, &qword_1DC52A860);
    sub_1DC43F1F8(&qword_1ECC7DB60, type metadata accessor for TurnSummary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DB58);
  }

  return result;
}

unint64_t sub_1DC43FD20()
{
  result = qword_1ECC7DB68;
  if (!qword_1ECC7DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DB68);
  }

  return result;
}

unint64_t sub_1DC43FD94()
{
  result = qword_1ECC822A8[0];
  if (!qword_1ECC822A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC822A8);
  }

  return result;
}

unint64_t sub_1DC43FDE8()
{
  result = qword_1ECC7DB78;
  if (!qword_1ECC7DB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7CEA8, &qword_1DC52A880);
    sub_1DC43F1F8(&qword_1ECC7DB80, MEMORY[0x1E69D0948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DB78);
  }

  return result;
}

unint64_t sub_1DC43FE9C()
{
  result = qword_1ECC7DB88;
  if (!qword_1ECC7DB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7CCF0, &unk_1DC5253B0);
    sub_1DC43F1F8(&qword_1ECC7DB90, MEMORY[0x1E69D0B48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DB88);
  }

  return result;
}

unint64_t sub_1DC43FF50()
{
  result = qword_1ECC7DBB0;
  if (!qword_1ECC7DBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7DBA8, &qword_1DC52A888);
    sub_1DC43F1F8(&qword_1ECC7DBB8, MEMORY[0x1E69D2948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DBB0);
  }

  return result;
}

uint64_t sub_1DC440004()
{
  OUTLINED_FUNCTION_42_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_11_0(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return v0;
}

unint64_t sub_1DC440058()
{
  result = qword_1ECC7BA68;
  if (!qword_1ECC7BA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7CEA8, &qword_1DC52A880);
    sub_1DC43F1F8(&qword_1ECC7BE38, MEMORY[0x1E69D0948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BA68);
  }

  return result;
}

unint64_t sub_1DC44010C()
{
  result = qword_1ECC7BA48;
  if (!qword_1ECC7BA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7CCF0, &unk_1DC5253B0);
    sub_1DC43F1F8(&qword_1ECC7BDF0, MEMORY[0x1E69D0B48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BA48);
  }

  return result;
}

unint64_t sub_1DC4401C0()
{
  result = qword_1ECC7B9F8;
  if (!qword_1ECC7B9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7C130, &unk_1DC5240F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7B9F8);
  }

  return result;
}

unint64_t sub_1DC44023C()
{
  result = qword_1ECC7BA08;
  if (!qword_1ECC7BA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7DBA8, &qword_1DC52A888);
    sub_1DC43F1F8(&qword_1ECC7BAB0, MEMORY[0x1E69D2948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BA08);
  }

  return result;
}

unint64_t sub_1DC440310()
{
  result = qword_1ECC81A00;
  if (!qword_1ECC81A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC81A00);
  }

  return result;
}

unint64_t sub_1DC440364()
{
  result = qword_1ECC7DC08;
  if (!qword_1ECC7DC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7DC00, &unk_1DC52A8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DC08);
  }

  return result;
}

unint64_t sub_1DC4403E0()
{
  result = qword_1ECC7DC10;
  if (!qword_1ECC7DC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7D0A0, &unk_1DC524070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DC10);
  }

  return result;
}

unint64_t sub_1DC44045C()
{
  result = qword_1ECC7DC20;
  if (!qword_1ECC7DC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7DC18, &qword_1DC52A8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DC20);
  }

  return result;
}

unint64_t sub_1DC4404D8()
{
  result = qword_1ECC7B9D8;
  if (!qword_1ECC7B9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7DC00, &unk_1DC52A8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7B9D8);
  }

  return result;
}

unint64_t sub_1DC440554()
{
  result = qword_1ECC7BA78;
  if (!qword_1ECC7BA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7D0A0, &unk_1DC524070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BA78);
  }

  return result;
}

unint64_t sub_1DC4405D0()
{
  result = qword_1ECC7B8F0;
  if (!qword_1ECC7B8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7DC18, &qword_1DC52A8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7B8F0);
  }

  return result;
}

unint64_t sub_1DC44064C()
{
  result = qword_1ECC8B3D8;
  if (!qword_1ECC8B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B3D8);
  }

  return result;
}

unint64_t sub_1DC4406C0()
{
  result = qword_1ECC82CD0;
  if (!qword_1ECC82CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC82CD0);
  }

  return result;
}

unint64_t sub_1DC440714()
{
  result = qword_1ECC8B3E8;
  if (!qword_1ECC8B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B3E8);
  }

  return result;
}

unint64_t sub_1DC440768()
{
  result = qword_1ECC8B3F0;
  if (!qword_1ECC8B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B3F0);
  }

  return result;
}

unint64_t sub_1DC4407BC()
{
  result = qword_1ECC7BC40;
  if (!qword_1ECC7BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BC40);
  }

  return result;
}

unint64_t sub_1DC440810()
{
  result = qword_1ECC82B38[0];
  if (!qword_1ECC82B38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC82B38);
  }

  return result;
}

unint64_t sub_1DC440864()
{
  result = qword_1ECC7DC90;
  if (!qword_1ECC7DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DC90);
  }

  return result;
}

unint64_t sub_1DC4408D8()
{
  result = qword_1ECC811D0;
  if (!qword_1ECC811D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC811D0);
  }

  return result;
}

unint64_t sub_1DC44092C()
{
  result = qword_1ECC80F28[0];
  if (!qword_1ECC80F28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC80F28);
  }

  return result;
}

unint64_t sub_1DC440980()
{
  result = qword_1ECC7FEE0[0];
  if (!qword_1ECC7FEE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC7FEE0);
  }

  return result;
}

unint64_t sub_1DC4409D4()
{
  result = qword_1ECC81528[0];
  if (!qword_1ECC81528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC81528);
  }

  return result;
}

unint64_t sub_1DC440A28()
{
  result = qword_1ECC7BD10;
  if (!qword_1ECC7BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BD10);
  }

  return result;
}

unint64_t sub_1DC440A7C()
{
  result = qword_1ECC7BA20;
  if (!qword_1ECC7BA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7DD08, &qword_1DC52A9A0);
    sub_1DC43F1F8(&qword_1ECC7BC18, type metadata accessor for NLRouterActionCandidate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BA20);
  }

  return result;
}

unint64_t sub_1DC440B30()
{
  result = qword_1ECC7BBB0;
  if (!qword_1ECC7BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BBB0);
  }

  return result;
}

uint64_t sub_1DC440B84()
{
  OUTLINED_FUNCTION_42_0();
  v5 = OUTLINED_FUNCTION_480(v1, v2, v3, v4);
  OUTLINED_FUNCTION_11_0(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return v0;
}

uint64_t sub_1DC440BD0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7DD00, &qword_1DC52A998);
    a2();
    OUTLINED_FUNCTION_74();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DC440C44()
{
  result = qword_1ECC7DD28;
  if (!qword_1ECC7DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DD28);
  }

  return result;
}

unint64_t sub_1DC440C98()
{
  result = qword_1ECC7DD30;
  if (!qword_1ECC7DD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7DD08, &qword_1DC52A9A0);
    sub_1DC43F1F8(&qword_1ECC7DD38, type metadata accessor for NLRouterActionCandidate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DD30);
  }

  return result;
}

unint64_t sub_1DC440D4C()
{
  result = qword_1ECC7DD48;
  if (!qword_1ECC7DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DD48);
  }

  return result;
}

unint64_t sub_1DC440DA0()
{
  result = qword_1ECC84440;
  if (!qword_1ECC84440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC84440);
  }

  return result;
}

unint64_t sub_1DC440DF4()
{
  result = qword_1ECC82548;
  if (!qword_1ECC82548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC82548);
  }

  return result;
}

unint64_t sub_1DC440E48()
{
  result = qword_1ECC7F9E0[0];
  if (!qword_1ECC7F9E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC7F9E0);
  }

  return result;
}

unint64_t sub_1DC440E9C()
{
  result = qword_1ECC8B3F8;
  if (!qword_1ECC8B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B3F8);
  }

  return result;
}

unint64_t sub_1DC440EF0()
{
  result = qword_1ECC8B400;
  if (!qword_1ECC8B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B400);
  }

  return result;
}

unint64_t sub_1DC440F44()
{
  result = qword_1ECC8B408;
  if (!qword_1ECC8B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B408);
  }

  return result;
}

unint64_t sub_1DC440F98()
{
  result = qword_1ECC8B410;
  if (!qword_1ECC8B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B410);
  }

  return result;
}

unint64_t sub_1DC440FEC()
{
  result = qword_1ECC8B418;
  if (!qword_1ECC8B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B418);
  }

  return result;
}

unint64_t sub_1DC441040()
{
  result = qword_1ECC8B420;
  if (!qword_1ECC8B420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B420);
  }

  return result;
}

unint64_t sub_1DC441094()
{
  result = qword_1ECC7F848[0];
  if (!qword_1ECC7F848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC7F848);
  }

  return result;
}

void sub_1DC4410E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1 < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < a1 || (a6 >> 1) < a2)
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
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_26_1();
    return;
  }

LABEL_12:
  __break(1u);
}

unint64_t sub_1DC441160()
{
  result = qword_1ECC80B50[0];
  if (!qword_1ECC80B50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC80B50);
  }

  return result;
}

unint64_t sub_1DC4411B4()
{
  result = qword_1ECC8B428;
  if (!qword_1ECC8B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B428);
  }

  return result;
}

unint64_t sub_1DC441208()
{
  result = qword_1ECC8B430;
  if (!qword_1ECC8B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B430);
  }

  return result;
}

unint64_t sub_1DC44125C()
{
  result = qword_1ECC80828[0];
  if (!qword_1ECC80828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC80828);
  }

  return result;
}

unint64_t sub_1DC4412B0()
{
  result = qword_1ECC8B440;
  if (!qword_1ECC8B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B440);
  }

  return result;
}

unint64_t sub_1DC441304()
{
  result = qword_1ECC8B448[0];
  if (!qword_1ECC8B448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8B448);
  }

  return result;
}

unint64_t sub_1DC441358()
{
  result = qword_1ECC80CF0[0];
  if (!qword_1ECC80CF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC80CF0);
  }

  return result;
}

unint64_t sub_1DC4413AC()
{
  result = qword_1ECC7BBC0;
  if (!qword_1ECC7BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BBC0);
  }

  return result;
}

unint64_t sub_1DC441400()
{
  result = qword_1ECC7BBF8;
  if (!qword_1ECC7BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BBF8);
  }

  return result;
}

unint64_t sub_1DC441454()
{
  result = qword_1ECC7DE68;
  if (!qword_1ECC7DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DE68);
  }

  return result;
}

unint64_t sub_1DC4414A8()
{
  result = qword_1ECC7DE70;
  if (!qword_1ECC7DE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DE70);
  }

  return result;
}

unint64_t sub_1DC4414FC()
{
  result = qword_1ECC7EE28;
  if (!qword_1ECC7EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7EE28);
  }

  return result;
}

unint64_t sub_1DC441554()
{
  result = qword_1ECC7DE90;
  if (!qword_1ECC7DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DE90);
  }

  return result;
}

unint64_t sub_1DC4415AC()
{
  result = qword_1ECC7DE98;
  if (!qword_1ECC7DE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DE98);
  }

  return result;
}

unint64_t sub_1DC441604()
{
  result = qword_1ECC7DEA0;
  if (!qword_1ECC7DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DEA0);
  }

  return result;
}

unint64_t sub_1DC44165C()
{
  result = qword_1ECC7DEA8;
  if (!qword_1ECC7DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DEA8);
  }

  return result;
}

unint64_t sub_1DC4416B4()
{
  result = qword_1ECC7DEB0;
  if (!qword_1ECC7DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DEB0);
  }

  return result;
}

unint64_t sub_1DC44170C()
{
  result = qword_1ECC7DEB8;
  if (!qword_1ECC7DEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7DEC0, qword_1DC52B5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7DEB8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13CDMFoundation20NLRouterServiceErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DC441788(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_130();
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DC4417E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1DC441830(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1DC4418A8()
{
  OUTLINED_FUNCTION_351();
  v0 = sub_1DC5157EC();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_7_25(v0, &qword_1ECC7BBB8, &type metadata for NLRouterInvalidModelOutputError);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_19();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_75_6();
    }
  }
}

void sub_1DC441930()
{
  OUTLINED_FUNCTION_351();
  v0 = sub_1DC510C8C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1DC441BAC(319, &qword_1ECC7BC48, type metadata accessor for HeuristicAgentKeywords, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1DC441A84(uint64_t a1)
{
  OUTLINED_FUNCTION_7_25(a1, &qword_1ECC7BA80, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1DC441BAC(319, &qword_1ECC7BD50, type metadata accessor for TurnSummary.ExecutionSource, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_7_25(v2, &qword_1ECC7B9E0, MEMORY[0x1E69E6370]);
      if (v4 <= 0x3F)
      {
        sub_1DC441BAC(319, &qword_1ECC7BB60, MEMORY[0x1E69D0300], MEMORY[0x1E69E6720]);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_19();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_75_6();
        }
      }
    }
  }
}

void sub_1DC441BAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DC441C38()
{
  OUTLINED_FUNCTION_351();
  sub_1DC441C8C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1DC441C8C()
{
  if (!qword_1ECC7BB28)
  {
    v0 = sub_1DC5161CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC7BB28);
    }
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DC441CE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }

  if (a2 < 0 && *(a1 + 41))
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

  return OUTLINED_FUNCTION_41_0(v2);
}

uint64_t sub_1DC441D24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

      return OUTLINED_FUNCTION_9_13(result, a2);
    }

    *(result + 41) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_9_13(result, a2);
    }
  }

  return result;
}