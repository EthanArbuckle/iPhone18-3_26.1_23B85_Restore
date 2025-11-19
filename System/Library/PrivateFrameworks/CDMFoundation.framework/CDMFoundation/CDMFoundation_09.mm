uint64_t sub_1DC3526D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DC2AEB04(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

void sub_1DC352728()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v36 = v5;
  v37 = v6;
  v8 = v7;
  v39 = sub_1DC51110C();
  v9 = OUTLINED_FUNCTION_0(v39);
  v38 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE30, &unk_1DC524E20);
  v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CE38, &unk_1DC528570) - 8);
  v14 = *(*v13 + 72);
  v15 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DC524AE0;
  v17 = v16 + v15;
  v18 = (v16 + v15 + v13[14]);
  sub_1DC51680C();
  v19 = sub_1DC2A0C74();
  v21 = *v19;
  v20 = *(v19 + 1);
  *v18 = v21;
  v18[1] = v20;
  v22 = (v17 + v14 + v13[14]);

  sub_1DC51687C();
  *v22 = sub_1DC2A0C80(v2);
  v22[1] = v23;
  v24 = (v17 + 2 * v14 + v13[14]);
  sub_1DC5168BC();
  sub_1DC510B6C();
  OUTLINED_FUNCTION_2_11();
  sub_1DC293BE4(v25, v26);
  *v24 = sub_1DC51823C();
  v24[1] = v27;
  v28 = (v17 + 3 * v14 + v13[14]);
  sub_1DC5168AC();
  *v28 = v36;
  v28[1] = v8;

  sub_1DC51686C();
  if (v4)
  {
    v29 = v37;
  }

  else
  {
    v29 = 0;
  }

  if (v4)
  {
    v30 = v4;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v31 = (v17 + 4 * v14 + v13[14]);

  MEMORY[0x1E1296160](v29, v30);

  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v32 = (v17 + 5 * v14 + v13[14]);
  sub_1DC5167FC();
  sub_1DC51370C();
  v33 = sub_1DC5110DC();
  v35 = v34;
  (*(v38 + 8))(v0, v39);
  *v32 = v33;
  v32[1] = v35;
  OUTLINED_FUNCTION_34();
}

void sub_1DC3529D4()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DC516F7C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_36_7();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(v4 + 24);
    v14 = *(v4 + 32);
    v15 = OUTLINED_FUNCTION_147_0();
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v17 = *(v14 + 48);
    v18 = OUTLINED_FUNCTION_23_2();
    v20 = v19(v18, v14);
    (*(*v12 + 976))(v20);
  }

  else
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_126_0();
    v21(v0);
    v22 = sub_1DC516F6C();
    sub_1DC517B9C();
    OUTLINED_FUNCTION_116();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_52_1(v24);
      OUTLINED_FUNCTION_56_4(&dword_1DC287000, v22, v2, "NluRequest timed out, but the proxy instance was removed");
      OUTLINED_FUNCTION_58();
    }

    (*(v8 + 8))(v0, v5);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC352BB0()
{
  OUTLINED_FUNCTION_33();
  v37 = v2;
  v4 = v3;
  v40 = sub_1DC51737C();
  v5 = OUTLINED_FUNCTION_0(v40);
  v42 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3();
  v41 = sub_1DC5173CC();
  v9 = OUTLINED_FUNCTION_0(v41);
  v39 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v13 = sub_1DC51110C();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v0 + 32);
  OUTLINED_FUNCTION_44_8();
  v20(v19, v4, v13);
  v21 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v22 = (v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v16 + 32))(v23 + v21, v19, v13);
  v24 = v37;
  *(v23 + v22) = v37;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v0;
  v44[4] = sub_1DC357CF4;
  v44[5] = v23;
  OUTLINED_FUNCTION_5_4();
  v44[1] = 1107296256;
  OUTLINED_FUNCTION_3_14();
  v44[2] = v25;
  v44[3] = &block_descriptor_100;
  v26 = _Block_copy(v44);
  v27 = v24;

  sub_1DC51739C();
  v43 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_1_14();
  sub_1DC293BE4(v28, v29);
  v30 = OUTLINED_FUNCTION_12_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  sub_1DC2C4B5C(&qword_1EDAC7FC0, &unk_1ECC7CD40, &unk_1DC523860);
  sub_1DC517E9C();
  v32 = OUTLINED_FUNCTION_168_1();
  MEMORY[0x1E12964B0](v32);
  _Block_release(v26);
  v33 = *(v42 + 8);
  v34 = OUTLINED_FUNCTION_30_6();
  v35(v34);
  (*(v39 + 8))(v1, v41);

  OUTLINED_FUNCTION_34();
}

void sub_1DC352ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_1DC510AFC();
  v30 = OUTLINED_FUNCTION_10(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v33);
  v34 = sub_1DC51110C();
  v35 = OUTLINED_FUNCTION_0(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v40);
  v41 = sub_1DC516F7C();
  v42 = OUTLINED_FUNCTION_0(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_56_1();
  v129[0] = 0;
  v127 = 0u;
  v128 = 0u;
  v121 = v44;
  sub_1DC28D414();
  (*(v44 + 16))(v20);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_236(v48);
  v49();
  v50 = v26;
  v51 = sub_1DC516F6C();
  v52 = sub_1DC517B9C();

  v120 = v26;
  v119 = v34;
  if (os_log_type_enabled(v51, v52))
  {
    v53 = OUTLINED_FUNCTION_140();
    v54 = OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_218(v54, v129);
    *v53 = 136315394;
    v116 = v52;
    sub_1DC5110DC();
    v55 = v37;
    v56 = v28;
    v57 = v41;
    v59 = v58;
    v60 = *(v55 + 8);
    v61 = OUTLINED_FUNCTION_147_0();
    v117 = v62;
    (v62)(v61);
    v63 = OUTLINED_FUNCTION_80_4();
    v65 = sub_1DC291244(v63, v59, v64);
    v41 = v57;
    v28 = v56;

    *(v53 + 4) = v65;
    *(v53 + 12) = 2080;
    swift_getErrorValue();
    v66 = sub_1DC5182AC();
    v68 = sub_1DC291244(v66, v67, &v124);

    *(v53 + 14) = v68;
    _os_log_impl(&dword_1DC287000, v51, v116, "Handling Error from CDM - removing entry from nluRequestIdToStartRequestId for nlRequestId: %s error: %s", v53, 0x16u);
    OUTLINED_FUNCTION_83(v129);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_67();
  }

  else
  {

    v69 = *(v37 + 8);
    v70 = OUTLINED_FUNCTION_147_0();
    v117 = v71;
    (v71)(v70);
  }

  v72 = *(v121 + 8);
  v72(v20, v41);
  sub_1DC5110DC();
  v74 = v73;
  (*(*v24 + 632))();
  v75 = OUTLINED_FUNCTION_23_2();
  sub_1DC3526D0(v75, v74, v24);
  v77 = v76;

  if (v77)
  {
    (*(*v24 + 608))(v78);
    OUTLINED_FUNCTION_59_2();
    sub_1DC352664(v79, v80, v81, v82);

    sub_1DC28EB30(&v127, &qword_1ECC7CE28, &unk_1DC524E10);
    v127 = v124;
    v128 = v125;
    v129[0] = v126;
  }

  sub_1DC5110DC();
  v83 = (*(*v24 + 648))(&v124);
  v84 = OUTLINED_FUNCTION_46_6();
  sub_1DC358108(v84, v85);
  v87 = v86;

  v88 = OUTLINED_FUNCTION_223();
  v83(v88);
  OUTLINED_FUNCTION_20_3(&a18);
  sub_1DC510AEC();
  (*(*v24 + 544))(v87);
  sub_1DC28F308(&v127, &v122, &qword_1ECC7CE28, &unk_1DC524E10);
  if (v123)
  {
    sub_1DC28F9B0(&v122, &v124);
    v89 = v126;
    OUTLINED_FUNCTION_250();
    v90 = *(v89 + 40);
    v91 = OUTLINED_FUNCTION_23_2();
    v92(v91, v89);
    sub_1DC5110DC();
    OUTLINED_FUNCTION_147();
    (*(v93 + 136))();

    v94 = *(&v125 + 1);
    v95 = v126;
    OUTLINED_FUNCTION_250();
    sub_1DC5110DC();
    v97 = v96;
    OUTLINED_FUNCTION_82_2();
    v99(v120, v98, v97, v94, v95);

    sub_1DC28EB30(&v127, &qword_1ECC7CE28, &unk_1DC524E10);
    __swift_destroy_boxed_opaque_existential_1Tm(&v124);
  }

  else
  {
    sub_1DC28EB30(&v122, &qword_1ECC7CE28, &unk_1DC524E10);
    OUTLINED_FUNCTION_191(&a17);
    OUTLINED_FUNCTION_203();
    OUTLINED_FUNCTION_216();
    v100();
    OUTLINED_FUNCTION_210();
    v101();
    v102 = sub_1DC516F6C();
    sub_1DC517BAC();
    OUTLINED_FUNCTION_116();
    if (os_log_type_enabled(v102, v103))
    {
      OUTLINED_FUNCTION_63();
      v104 = OUTLINED_FUNCTION_111();
      *&v124 = v104;
      *v28 = 136315138;
      sub_1DC5110DC();
      v105 = OUTLINED_FUNCTION_155_0();
      v107 = v106;
      v117(v105, v119);
      v108 = OUTLINED_FUNCTION_80_4();
      sub_1DC291244(v108, v107, v109);
      OUTLINED_FUNCTION_155_0();

      *(v28 + 4) = v118;
      OUTLINED_FUNCTION_42_1();
      _os_log_impl(v110, v111, v112, v113, v114, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v104);
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_31();
    }

    else
    {

      v117(v118, v119);
    }

    v115 = OUTLINED_FUNCTION_176();
    (v72)(v115);
    sub_1DC28EB30(&v127, &qword_1ECC7CE28, &unk_1DC524E10);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC353688()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v2 = sub_1DC51737C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3();
  v24 = sub_1DC5173CC();
  v8 = OUTLINED_FUNCTION_0(v24);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v23 = v0[4];
  OUTLINED_FUNCTION_27_5();
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = v0;
  v25[4] = sub_1DC357D78;
  v25[5] = v13;
  OUTLINED_FUNCTION_5_4();
  v25[1] = 1107296256;
  OUTLINED_FUNCTION_3_14();
  v25[2] = v14;
  v25[3] = &block_descriptor_106;
  v15 = _Block_copy(v25);

  v16 = v0;
  sub_1DC51739C();
  OUTLINED_FUNCTION_1_14();
  sub_1DC293BE4(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD40, &unk_1DC523860);
  sub_1DC2C4B5C(&qword_1EDAC7FC0, &unk_1ECC7CD40, &unk_1DC523860);
  OUTLINED_FUNCTION_149_1();
  sub_1DC517E9C();
  v19 = OUTLINED_FUNCTION_168_1();
  MEMORY[0x1E12964B0](v19);
  _Block_release(v15);
  v20 = *(v5 + 8);
  v21 = OUTLINED_FUNCTION_30_6();
  v22(v21);
  (*(v10 + 8))(v1, v24);

  OUTLINED_FUNCTION_34();
}

void sub_1DC3538AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v29 = sub_1DC510AFC();
  v30 = OUTLINED_FUNCTION_10(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v33);
  v34 = sub_1DC516F7C();
  v162 = OUTLINED_FUNCTION_0(v34);
  v163 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v162);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_101_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v40);
  v41 = sub_1DC51110C();
  v42 = OUTLINED_FUNCTION_0(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_94_1();
  v48 = sub_1DC5137CC();
  v49 = OUTLINED_FUNCTION_0(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_56_1();
  v156 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x78);
  v156();
  sub_1DC51379C();
  v160 = v48;
  v161 = *(v51 + 8);
  v55 = v48;
  v56 = v44;
  v161(v22, v55);
  v57 = sub_1DC5110DC();
  v59 = v58;
  (*(v56 + 8))(v21, v41);
  OUTLINED_FUNCTION_127_0();
  v61 = (*(v60 + 632))();
  sub_1DC3526D0(v57, v59, v61);
  v63 = v62;

  if (v63)
  {
    v153 = v20;
    v65 = (*(*v28 + 608))(v64);
    v66 = OUTLINED_FUNCTION_30();
    sub_1DC352664(v66, v67, v65, v68);

    v151 = sub_1DC28D414();
    v150 = *(v163 + 16);
    v150();
    v69 = v26;
    v70 = sub_1DC516F6C();
    v71 = sub_1DC517B9C();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = OUTLINED_FUNCTION_63();
      v73 = OUTLINED_FUNCTION_82();
      v74 = OUTLINED_FUNCTION_218(v73, v170);
      *v72 = 136315138;
      v75 = v154;
      v152 = v69;
      v149 = v71;
      v76 = v156;
      (v156)(v74);
      sub_1DC51379C();
      v77 = v160;
      v161(v154, v160);
      sub_1DC5110DC();
      v79 = v78;
      OUTLINED_FUNCTION_22_8();
      v80();
      v81 = OUTLINED_FUNCTION_80_4();
      v83 = sub_1DC291244(v81, v79, v82);

      *(v72 + 4) = v83;
      v69 = v152;
      _os_log_impl(&dword_1DC287000, v70, v149, "removing entry from nluRequestIdToStartRequestId for nlRequestId: %s", v72, 0xCu);
      v84 = OUTLINED_FUNCTION_191(v170);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_40_0();

      v85 = v161;
      v86 = v158;
      v159 = *(v163 + 8);
      v87 = v159(v86, v162);
    }

    else
    {

      v102 = v158;
      v159 = *(v163 + 8);
      v87 = v159(v102, v162);
      v76 = v156;
      v77 = v160;
      v85 = v161;
      v75 = v154;
    }

    (v76)(v87);
    sub_1DC51379C();
    v85(v75, v77);
    sub_1DC5110DC();
    v103 = v76;
    OUTLINED_FUNCTION_22_8();
    v104();
    OUTLINED_FUNCTION_127_0();
    v106 = (*(v105 + 648))(v166);
    v107 = OUTLINED_FUNCTION_63_0();
    sub_1DC358108(v107, v108);

    v109 = OUTLINED_FUNCTION_223();
    v106(v109);
    OUTLINED_FUNCTION_20_3(&a11);
    sub_1DC510AEC();
    OUTLINED_FUNCTION_127_0();
    v111 = *(v110 + 544);
    v112 = OUTLINED_FUNCTION_231();
    v113(v112);
    sub_1DC28F308(v169, &v164, &qword_1ECC7CE28, &unk_1DC524E10);
    if (v165)
    {
      sub_1DC28F9B0(&v164, v166);
      v114 = v168;
      OUTLINED_FUNCTION_250();
      v115 = *(v114 + 40);
      v116 = OUTLINED_FUNCTION_63_0();
      v117(v116);
      v103();
      sub_1DC51379C();
      v161(v75, v160);
      sub_1DC5110DC();
      OUTLINED_FUNCTION_22_8();
      v118();
      OUTLINED_FUNCTION_147();
      v120 = *(v119 + 136);
      v121 = OUTLINED_FUNCTION_56_0();
      v122(v121);

      v123 = v167;
      v124 = v168;
      OUTLINED_FUNCTION_250();
      (*(v124 + 8))(v69, v123, v124);
      sub_1DC28EB30(v169, &qword_1ECC7CE28, &unk_1DC524E10);
      __swift_destroy_boxed_opaque_existential_1Tm(v166);
    }

    else
    {
      sub_1DC28EB30(&v164, &qword_1ECC7CE28, &unk_1DC524E10);
      v125 = OUTLINED_FUNCTION_184(&a10);
      (v150)(v125, v151, v162);
      v126 = v69;
      v127 = sub_1DC516F6C();
      v128 = sub_1DC517BAC();

      if (os_log_type_enabled(v127, v128))
      {
        OUTLINED_FUNCTION_140();
        *&v164 = OUTLINED_FUNCTION_60_6();
        *v162 = 136315394;
        v156();
        sub_1DC51379C();
        v161(v154, v160);
        sub_1DC5110DC();
        OUTLINED_FUNCTION_193();
        OUTLINED_FUNCTION_22_8();
        v129();
        v130 = OUTLINED_FUNCTION_74();
        sub_1DC291244(v130, v131, v132);
        OUTLINED_FUNCTION_121();

        *(v162 + 4) = v155;
        *(v162 + 12) = 2080;
        v133 = sub_1DC5138DC();
        v167 = v160;
        OUTLINED_FUNCTION_20_11();
        v168 = sub_1DC293BE4(v134, v135);
        __swift_allocate_boxed_opaque_existential_1(v166);
        v156();
        sub_1DC5138CC();
        OUTLINED_FUNCTION_193();
        __swift_destroy_boxed_opaque_existential_1Tm(v166);
        v136 = OUTLINED_FUNCTION_74();
        sub_1DC291244(v136, v137, v138);
        OUTLINED_FUNCTION_121();

        *(v162 + 14) = v133;
        OUTLINED_FUNCTION_42_1();
        _os_log_impl(v139, v140, v141, v142, v143, 0x16u);
        OUTLINED_FUNCTION_184(&a11);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_31();

        v144 = v162;
        v145 = v153;
      }

      else
      {

        v145 = OUTLINED_FUNCTION_56_0();
      }

      v159(v145, v144);
      sub_1DC28EB30(v169, &qword_1ECC7CE28, &unk_1DC524E10);
    }
  }

  else
  {
    v88 = sub_1DC28D414();
    (*(v163 + 16))(v157, v88, v162);
    v89 = v26;
    v90 = sub_1DC516F6C();
    v91 = sub_1DC517BAC();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = OUTLINED_FUNCTION_63();
      v93 = OUTLINED_FUNCTION_82();
      v166[0] = v93;
      *v92 = 136315138;
      v94 = sub_1DC5138DC();
      v170[1] = v160;
      OUTLINED_FUNCTION_20_11();
      v170[2] = sub_1DC293BE4(v95, v96);
      __swift_allocate_boxed_opaque_existential_1(v169);
      v156();
      sub_1DC5138CC();
      OUTLINED_FUNCTION_193();
      __swift_destroy_boxed_opaque_existential_1Tm(v169);
      v97 = OUTLINED_FUNCTION_80_4();
      sub_1DC291244(v97, v89, v98);
      OUTLINED_FUNCTION_121();

      *(v92 + 4) = v94;
      _os_log_impl(&dword_1DC287000, v90, v91, "startRequestId not available for response: %s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_58();

      v99 = *(v163 + 8);
      v100 = OUTLINED_FUNCTION_176();
      v101(v100);
    }

    else
    {

      v146 = *(v163 + 8);
      v147 = OUTLINED_FUNCTION_176();
      v148(v147);
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC35444C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = sub_1DC51737C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3();
  v25 = sub_1DC5173CC();
  v10 = OUTLINED_FUNCTION_0(v25);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v24 = *(v0 + 32);
  OUTLINED_FUNCTION_27_5();
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  *(v15 + 24) = v0;
  v26[4] = sub_1DC357D80;
  v26[5] = v15;
  OUTLINED_FUNCTION_5_4();
  v26[1] = 1107296256;
  OUTLINED_FUNCTION_3_14();
  v26[2] = v16;
  v26[3] = &block_descriptor_112;
  v17 = _Block_copy(v26);

  sub_1DC51739C();
  OUTLINED_FUNCTION_1_14();
  sub_1DC293BE4(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD40, &unk_1DC523860);
  sub_1DC2C4B5C(&qword_1EDAC7FC0, &unk_1ECC7CD40, &unk_1DC523860);
  OUTLINED_FUNCTION_149_1();
  sub_1DC517E9C();
  v20 = OUTLINED_FUNCTION_168_1();
  MEMORY[0x1E12964B0](v20);
  _Block_release(v17);
  v21 = *(v7 + 8);
  v22 = OUTLINED_FUNCTION_30_6();
  v23(v22);
  (*(v12 + 8))(v1, v25);

  OUTLINED_FUNCTION_34();
}

void sub_1DC354670()
{
  OUTLINED_FUNCTION_33();
  v57 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25();
  v56 = v6;
  OUTLINED_FUNCTION_12();
  v7 = sub_1DC516F7C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_23_1();
  v55 = v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_1();
  v58 = v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  sub_1DC28D414();
  v23 = *(v10 + 16);
  OUTLINED_FUNCTION_207();
  v23();
  v24 = sub_1DC516F6C();
  sub_1DC517B9C();
  OUTLINED_FUNCTION_116();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_249();
    v54 = v15;
    *v26 = 67109120;
    *(v26 + 4) = v57 & 1;
    _os_log_impl(&dword_1DC287000, v24, v0, "assets changed, available: %{BOOL}d", v26, 8u);
    v15 = v54;
    OUTLINED_FUNCTION_66();
  }

  v27 = *(v10 + 8);
  v27(v22, v7);
  OUTLINED_FUNCTION_64_2();
  (*(v28 + 368))();
  OUTLINED_FUNCTION_79_4();
  if (v30 || (v29 & 1) == 0)
  {
    OUTLINED_FUNCTION_207();
    v23();
    v48 = sub_1DC516F6C();
    v49 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v49))
    {
      v50 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v50);
      OUTLINED_FUNCTION_33_10(&dword_1DC287000, v51, v52, "setup did not finish before the assets notification so ignore the change");
      OUTLINED_FUNCTION_40_0();
    }

    v27(v15, v7);
  }

  else
  {
    OUTLINED_FUNCTION_207();
    v23();
    v31 = sub_1DC516F6C();
    sub_1DC517B9C();
    OUTLINED_FUNCTION_116();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_52_1(v33);
      OUTLINED_FUNCTION_51_8(&dword_1DC287000, v34, v35, "setup finished before the assets notification so mark it as changed");
      OUTLINED_FUNCTION_66();
    }

    v27(v58, v7);
    OUTLINED_FUNCTION_64_2();
    (*(v36 + 568))(1);
    OUTLINED_FUNCTION_64_2();
    v38 = v56;
    (*(v37 + 464))();
    v39 = sub_1DC510B6C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v39);
    sub_1DC28EB30(v38, &unk_1ECC7CA30, &qword_1DC522A00);
    if (EnumTagSinglePayload == 1)
    {
      v41 = v55;
      OUTLINED_FUNCTION_207();
      v23();
      v42 = sub_1DC516F6C();
      sub_1DC517B8C();
      OUTLINED_FUNCTION_116();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_52_1(v44);
        OUTLINED_FUNCTION_51_8(&dword_1DC287000, v45, v46, "assets changed and there is not active session check if we need to release cdmClient");
        OUTLINED_FUNCTION_58();
      }

      v27(v41, v7);
      OUTLINED_FUNCTION_64_2();
      (*(v47 + 848))();
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC354B00()
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_178();
  v7 = sub_1DC51737C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v86 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v85 = sub_1DC5173CC();
  v12 = OUTLINED_FUNCTION_0(v85);
  v84 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  v83 = v16;
  OUTLINED_FUNCTION_12();
  v17 = sub_1DC5173EC();
  v18 = OUTLINED_FUNCTION_0(v17);
  v81 = v19;
  v82 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v80 = v23;
  OUTLINED_FUNCTION_12();
  v87 = sub_1DC516F7C();
  v24 = OUTLINED_FUNCTION_0(v87);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_56_2();
  v35 = sub_1DC510AFC();
  v36 = OUTLINED_FUNCTION_0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_54_8();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_36_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_56_1();
  sub_1DC510AEC();
  OUTLINED_FUNCTION_38_1();
  (*(v43 + 536))();
  v44 = *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmProxyExpirationInSeconds);
  sub_1DC510A6C();
  v89 = *(v38 + 8);
  v89(v3, v35);
  OUTLINED_FUNCTION_183();
  (*(v45 + 464))();
  v46 = sub_1DC510B6C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v46);
  sub_1DC28EB30(v2, &unk_1ECC7CA30, &qword_1DC522A00);
  if (EnumTagSinglePayload == 1 && (OUTLINED_FUNCTION_174(), (sub_1DC510A9C() & 1) != 0))
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_126_0();
    v48();
    v49 = sub_1DC516F6C();
    v50 = sub_1DC517B8C();
    if (OUTLINED_FUNCTION_15_4(v50))
    {
      v51 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v51);
      OUTLINED_FUNCTION_33_10(&dword_1DC287000, v52, v53, "cdmClient expired, releasing");
      OUTLINED_FUNCTION_40_0();
    }

    v54 = *(v26 + 8);
    v55 = OUTLINED_FUNCTION_41();
    v56(v55);
    OUTLINED_FUNCTION_183();
    (*(v57 + 848))();
    v89(v6, v35);
    v89(v4, v35);
  }

  else
  {
    v78 = v4;
    sub_1DC510ADC();
    if (v44 <= 0.0 || v58 > 0.0)
    {
      v44 = v58;
    }

    sub_1DC28D414();
    v60 = OUTLINED_FUNCTION_89_0(v26);
    v61(v60);
    v62 = sub_1DC516F6C();
    v63 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_25_0(v63))
    {
      v64 = OUTLINED_FUNCTION_63();
      *v64 = 134217984;
      *(v64 + 4) = v44;
      _os_log_impl(&dword_1DC287000, v62, v63, "Schedule another check in %f...", v64, 0xCu);
      OUTLINED_FUNCTION_40_0();
    }

    (*(v26 + 8))(v5, v87);
    v77 = *(v0 + 32);
    sub_1DC5173DC();
    sub_1DC51741C();
    v88 = *(v81 + 8);
    v88(v79, v82);
    v90[4] = sub_1DC358C10;
    v90[5] = v0;
    OUTLINED_FUNCTION_66_6();
    v90[1] = 1107296256;
    OUTLINED_FUNCTION_3_14();
    v90[2] = v65;
    v90[3] = &block_descriptor_115;
    v66 = _Block_copy(v90);

    sub_1DC51739C();
    OUTLINED_FUNCTION_1_14();
    sub_1DC293BE4(v67, v68);
    v69 = OUTLINED_FUNCTION_74();
    __swift_instantiateConcreteTypeFromMangledNameV2(v69, v70);
    OUTLINED_FUNCTION_62_3();
    sub_1DC2C4B5C(v71, v72, v73);
    sub_1DC517E9C();
    OUTLINED_FUNCTION_76_3();
    MEMORY[0x1E1296480]();
    _Block_release(v66);
    v74 = *(v86 + 8);
    v75 = OUTLINED_FUNCTION_205();
    v76(v75);
    (*(v84 + 8))(v83, v85);
    v88(v80, v82);
    v89(v6, v35);
    v89(v78, v35);
  }

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1DC355238()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_27_5();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1DC357DB8;
  *(v2 + 24) = v0;
  v6[4] = sub_1DC292A1C;
  v6[5] = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  OUTLINED_FUNCTION_5_0();
  v6[2] = v3;
  v6[3] = &block_descriptor_122;
  v4 = _Block_copy(v6);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  OUTLINED_FUNCTION_230();
  LOBYTE(v1) = OUTLINED_FUNCTION_173();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_1DC355350()
{
  OUTLINED_FUNCTION_102_0();
  v154 = v3;
  v155 = v4;
  v5 = sub_1DC516F7C();
  v161 = OUTLINED_FUNCTION_0(v5);
  v162 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v161);
  OUTLINED_FUNCTION_15();
  v160 = v9;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_23_1();
  v156 = v11;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_1();
  v152 = v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v158 = v15;
  OUTLINED_FUNCTION_12();
  v16 = sub_1DC510AFC();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x1EEE9AC00](v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  v24 = OUTLINED_FUNCTION_10(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  v159 = v27;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_23_1();
  v153 = v29;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_23_9();
  v31 = sub_1DC510B6C();
  v32 = OUTLINED_FUNCTION_0(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_15();
  v151 = v37;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_23_1();
  v150 = v39;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_23_1();
  v157 = v41;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v148 - v43;
  OUTLINED_FUNCTION_38_1();
  (*(v45 + 488))();
  OUTLINED_FUNCTION_30_8(v1);
  if (v46)
  {
    sub_1DC28EB30(v1, &unk_1ECC7CA30, &qword_1DC522A00);
    sub_1DC28D414();
    v47 = v162;
    OUTLINED_FUNCTION_82_2();
    v48 = OUTLINED_FUNCTION_213_0();
    v49(v48);
    v50 = sub_1DC516F6C();
    v51 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_14_7(v51))
    {
      v52 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v52);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v53, v54, v55, v56, v57, 2u);
      OUTLINED_FUNCTION_31();
    }

    v58 = *(v47 + 8);
    v59 = OUTLINED_FUNCTION_16();
    v60(v59);
  }

  else
  {
    v149 = v34;
    v61 = *(v34 + 32);
    v160 = v44;
    v62 = v1;
    v63 = v61;
    (v61)(v44, v62, v31);
    v64 = sub_1DC510ACC();
    (*(*v0 + 512))(v64);
    sub_1DC510A5C();
    v66 = v65;
    v67 = *(v19 + 8);
    v67(v2, v16);
    v68 = OUTLINED_FUNCTION_229();
    (v67)(v68);
    v69 = v0;
    if (v66 >= 180.0)
    {
      v89 = OUTLINED_FUNCTION_27();
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v31);
      OUTLINED_FUNCTION_127_0();
      v93 = *(v92 + 496);
      v94 = OUTLINED_FUNCTION_231();
      v95(v94);
      sub_1DC28D414();
      v96 = v162;
      OUTLINED_FUNCTION_115_1();
      v97 = OUTLINED_FUNCTION_213_0();
      v98(v97);
      v99 = sub_1DC516F6C();
      v100 = sub_1DC517B9C();
      if (OUTLINED_FUNCTION_14_7(v100))
      {
        v101 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_18_12(v101);
        OUTLINED_FUNCTION_38_0();
        OUTLINED_FUNCTION_145_1(v102, v103, v104, v105);
        OUTLINED_FUNCTION_40_0();
      }

      v106 = *(v96 + 8);
      v107 = OUTLINED_FUNCTION_16();
      v108(v107);
      (*(v149 + 8))(v160, v31);
    }

    else
    {
      v70 = v153;
      sub_1DC510B0C();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v70, 1, v31);
      v72 = v161;
      v73 = (v162 + 16);
      if (EnumTagSinglePayload == 1)
      {
        sub_1DC28EB30(v70, &unk_1ECC7CA30, &qword_1DC522A00);
        sub_1DC28D414();
        v74 = *v73;
        v75 = OUTLINED_FUNCTION_235();
        v76(v75);
        v77 = sub_1DC516F6C();
        v78 = sub_1DC517B9C();
        v79 = OUTLINED_FUNCTION_14_7(v78);
        v80 = v149;
        if (v79)
        {
          v81 = OUTLINED_FUNCTION_35_8();
          OUTLINED_FUNCTION_18_12(v81);
          OUTLINED_FUNCTION_38_0();
          OUTLINED_FUNCTION_145_1(v82, v83, v84, v85);
          OUTLINED_FUNCTION_40_0();
        }

        v86 = *(v162 + 8);
        v87 = OUTLINED_FUNCTION_42_2();
        v88(v87);
        (*(v80 + 8))(v160, v31);
      }

      else
      {
        v109 = v157;
        v110 = OUTLINED_FUNCTION_62_2();
        v63(v110);
        v111 = sub_1DC28D414();
        v112 = v158;
        (*v73)(v158, v111, v72);
        v113 = v31;
        v115 = v149;
        v114 = v150;
        v116 = *(v149 + 16);
        v116(v150, v160, v113);
        v117 = v151;
        v116(v151, v109, v113);
        v118 = sub_1DC516F6C();
        v119 = sub_1DC517B9C();
        if (OUTLINED_FUNCTION_14_7(v119))
        {
          v120 = OUTLINED_FUNCTION_140();
          v121 = OUTLINED_FUNCTION_143();
          v156 = v69;
          v163 = v121;
          *v120 = 136315394;
          LODWORD(v155) = v112;
          v122 = sub_1DC510B1C();
          v123 = v113;
          v125 = v124;
          v126 = *(v115 + 8);
          v126(v114, v123);
          v127 = sub_1DC291244(v122, v125, &v163);
          v113 = v123;

          *(v120 + 4) = v127;
          *(v120 + 12) = 2080;
          sub_1DC510B1C();
          OUTLINED_FUNCTION_193();
          v128 = OUTLINED_FUNCTION_47_6();
          (v126)(v128);
          v129 = OUTLINED_FUNCTION_74();
          sub_1DC291244(v129, v130, v131);
          OUTLINED_FUNCTION_121();

          *(v120 + 14) = v117;
          _os_log_impl(&dword_1DC287000, v118, v155, "Linking nlSetupID: %s startRequestId UUID: %s", v120, 0x16u);
          swift_arrayDestroy();
          v69 = v156;
          OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_67();

          (*(v162 + 8))(v158, v161);
        }

        else
        {

          v126 = *(v115 + 8);
          v132 = OUTLINED_FUNCTION_47_6();
          (v126)(v132);
          v133 = OUTLINED_FUNCTION_85_0();
          (v126)(v133);
          (*(v162 + 8))(v158, v72);
        }

        v134 = *(v69 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_instrumentationUtil);
        OUTLINED_FUNCTION_12_0();
        v136 = *(v135 + 160);
        v137 = v157;
        v138 = OUTLINED_FUNCTION_35_0();
        v139(v138);
        v140 = OUTLINED_FUNCTION_27();
        __swift_storeEnumTagSinglePayload(v140, v141, v142, v113);
        OUTLINED_FUNCTION_127_0();
        v144 = *(v143 + 496);
        v145 = OUTLINED_FUNCTION_231();
        v146(v145);
        v126(v137, v113);
        v147 = OUTLINED_FUNCTION_153_0();
        (v126)(v147);
      }
    }
  }

  OUTLINED_FUNCTION_101();
}

void sub_1DC355BE4()
{
  OUTLINED_FUNCTION_33();
  v56 = v0;
  v3 = v2;
  v5 = v4;
  v57 = v7;
  v58 = v6;
  v9 = v8;
  v10 = sub_1DC51110C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v53 = v12;
  v54 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_1();
  v52 = v15;
  OUTLINED_FUNCTION_12();
  v16 = sub_1DC51373C();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v20 = sub_1DC516F7C();
  v21 = OUTLINED_FUNCTION_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  sub_1DC28D414();
  OUTLINED_FUNCTION_55_10();
  v55 = v20;
  v29(v28);
  OUTLINED_FUNCTION_44_8();
  v30(v1, v3, v16);

  v31 = sub_1DC516F6C();
  v32 = sub_1DC517BAC();

  v51 = v32;
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_82();
    v59 = swift_slowAlloc();
    *v33 = 136315650;
    *(v33 + 4) = sub_1DC291244(v58, v9, &v59);
    *(v33 + 12) = 2080;
    v50 = v31;
    sub_1DC51370C();
    sub_1DC5110DC();
    v34 = v5;
    v36 = v35;
    (*(v53 + 8))(v52, v54);
    v37 = OUTLINED_FUNCTION_150_0();
    v38(v37, v16);
    v39 = OUTLINED_FUNCTION_128_2();
    v41 = sub_1DC291244(v39, v36, v40);

    *(v33 + 14) = v41;
    *(v33 + 22) = 2080;
    if (v34)
    {
      v42 = v57;
    }

    else
    {
      v42 = 0;
    }

    v43 = OUTLINED_FUNCTION_56_0();
    sub_1DC291244(v43, v44, v45);
    OUTLINED_FUNCTION_162();

    *(v33 + 24) = v42;
    _os_log_impl(&dword_1DC287000, v50, v51, "NLURequest timed out for startRequestId: %s nluRequestId: %s resultCandidateId: %s", v33, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_40_0();
  }

  else
  {

    v46 = OUTLINED_FUNCTION_150_0();
    v47(v46, v16);
  }

  (*(v23 + 8))(v28, v55);
  v48 = *(v56 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_instrumentationUtil);
  OUTLINED_FUNCTION_12_0();
  (*(v49 + 136))();
  OUTLINED_FUNCTION_34();
}

id *sub_1DC355FA0()
{
  sub_1DC28EB30(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_locale, &qword_1ECC7CD00, &unk_1DC5259F0);
  v1 = *(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmActiveServiceGraph + 8);

  sub_1DC28EB30(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_setupTimeSignpostId, &unk_1ECC7CD08, &unk_1DC524D00);
  sub_1DC28EB30(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_activeSessionId, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28EB30(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_currentNLSetupId, &unk_1ECC7CA30, &qword_1DC522A00);
  v2 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_lastSetupTime;
  v3 = sub_1DC510AFC();
  OUTLINED_FUNCTION_35(v3);
  v5 = *(v4 + 8);
  v5(v0 + v2, v3);
  v5(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_lastAccessTime, v3);
  v6 = *(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_startRequestIdToProcessor);

  v7 = *(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_nluRequestIdToStartRequestId);

  v8 = *(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_instrumentationUtil);

  v9 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupTimeoutMillis;
  v10 = sub_1DC51735C();
  OUTLINED_FUNCTION_35(v10);
  (*(v11 + 8))(v0 + v9);
  return v0;
}

uint64_t sub_1DC356180()
{
  sub_1DC355FA0();
  OUTLINED_FUNCTION_38_1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

void sub_1DC356380()
{
  OUTLINED_FUNCTION_33();
  v57 = v3;
  v5 = v4;
  v6 = sub_1DC516F7C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_9();
  v58 = sub_1DC51110C();
  v13 = OUTLINED_FUNCTION_0(v58);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_56_1();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0x78))();
    sub_1DC28D414();
    OUTLINED_FUNCTION_106_2();
    v21(v2);
    OUTLINED_FUNCTION_82_2();
    v22 = OUTLINED_FUNCTION_16();
    v23(v22);
    v24 = v57;
    v25 = sub_1DC516F6C();
    sub_1DC517BAC();

    if (os_log_type_enabled(v25, v2))
    {
      v55 = v6;
      v26 = OUTLINED_FUNCTION_140();
      v59 = OUTLINED_FUNCTION_143();
      *v26 = 136315394;
      v53 = v2;
      v27 = sub_1DC5110DC();
      v56 = v9;
      v54 = v2;
      v28 = *(v15 + 8);
      v29 = OUTLINED_FUNCTION_219();
      v28(v29);
      v30 = OUTLINED_FUNCTION_56_0();
      sub_1DC291244(v30, v31, v32);
      OUTLINED_FUNCTION_162();

      *(v26 + 4) = v27;
      *(v26 + 12) = 2080;
      swift_getErrorValue();
      v33 = sub_1DC5182AC();
      v35 = sub_1DC291244(v33, v34, &v59);

      *(v26 + 14) = v35;
      _os_log_impl(&dword_1DC287000, v25, v53, "Received error from CDM: requestId: %s %s", v26, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_66();

      v36 = v28;
      (*(v56 + 8))(v54, v55);
    }

    else
    {

      v36 = *(v15 + 8);
      v52 = OUTLINED_FUNCTION_219();
      v36(v52);
      (*(v9 + 8))(v2, v6);
    }

    (*(*v20 + 904))(v0, v57);

    (v36)(v0, v58);
  }

  else
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_115_1();
    v37(v1);
    v38 = v57;
    v39 = v5;
    v40 = sub_1DC516F6C();
    v41 = sub_1DC517BAC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_140();
      v43 = OUTLINED_FUNCTION_249();
      v44 = OUTLINED_FUNCTION_82();
      v59 = v44;
      *v42 = 138412546;
      *(v42 + 4) = v39;
      *v43 = v39;
      *(v42 + 12) = 2080;
      swift_getErrorValue();
      v45 = v39;
      v46 = sub_1DC5182AC();
      v48 = sub_1DC291244(v46, v47, &v59);

      *(v42 + 14) = v48;
      _os_log_impl(&dword_1DC287000, v40, v41, "Received error from CDM for expired cdmProxy dropping on the floor, requestId: %@ %s", v42, 0x16u);
      sub_1DC28EB30(v43, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_67();
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_66();

      v49 = OUTLINED_FUNCTION_209();
    }

    else
    {

      v49 = OUTLINED_FUNCTION_209();
      v50 = v6;
    }

    v51(v49, v50);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3568E0()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = sub_1DC516F7C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_94_1();
  Strong = swift_weakLoadStrong();
  sub_1DC28D414();
  OUTLINED_FUNCTION_57_9();
  if (Strong)
  {
    v12(v0);
    v13 = v3;
    v14 = sub_1DC516F6C();
    v15 = sub_1DC517B9C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_63();
      v35 = OUTLINED_FUNCTION_82();
      v36[5] = v35;
      *v16 = 136315138;
      sub_1DC5138DC();
      v34 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x78);
      v36[3] = sub_1DC5137CC();
      OUTLINED_FUNCTION_20_11();
      v36[4] = sub_1DC293BE4(v17, v18);
      __swift_allocate_boxed_opaque_existential_1(v36);
      v34();
      sub_1DC5138CC();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      v21 = OUTLINED_FUNCTION_128_2();
      v23 = sub_1DC291244(v21, v20, v22);

      *(v16 + 4) = v23;
      _os_log_impl(&dword_1DC287000, v14, v15, "Received Swift NluResponse: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_102();
    }

    v24 = *(v7 + 8);
    v25 = OUTLINED_FUNCTION_30_6();
    v26(v25);
    OUTLINED_FUNCTION_117_2();
    (*(v27 + 912))(v13);
  }

  else
  {
    v12(v1);
    v28 = v3;
    v29 = sub_1DC516F6C();
    v30 = sub_1DC517BAC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_63();
      v32 = OUTLINED_FUNCTION_249();
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&dword_1DC287000, v29, v30, "Received CDMNluResponse for expired session, dropping on the the floor, CDMNluResponse's nluResponse: %@", v31, 0xCu);
      sub_1DC28EB30(v32, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_42();
    }

    (*(v7 + 8))(v1, v4);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC356CEC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v1 = sub_1DC510C8C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v7 = sub_1DC516F7C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3();
  sub_1DC28D414();
  OUTLINED_FUNCTION_106_2();
  v11(v0);
  OUTLINED_FUNCTION_89_0(v4);
  OUTLINED_FUNCTION_70_4();
  v12();
  v13 = sub_1DC516F6C();
  v14 = sub_1DC517B9C();
  if (os_log_type_enabled(v13, v14))
  {
    v36 = v7;
    v15 = OUTLINED_FUNCTION_63();
    v37 = OUTLINED_FUNCTION_82();
    *v15 = 136315138;
    OUTLINED_FUNCTION_8_9();
    sub_1DC293BE4(v16, v17);
    v18 = sub_1DC51823C();
    v20 = v19;
    v21 = *(v4 + 8);
    v22 = OUTLINED_FUNCTION_16();
    v23(v22);
    v24 = OUTLINED_FUNCTION_128_2();
    sub_1DC291244(v24, v20, v25);
    OUTLINED_FUNCTION_23_2();

    *(v15 + 4) = v18;
    OUTLINED_FUNCTION_247(&dword_1DC287000, v26, v27, "assetsAvailable for locale: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_102();

    v28 = OUTLINED_FUNCTION_200();
    v30 = v36;
  }

  else
  {

    v31 = *(v4 + 8);
    v32 = OUTLINED_FUNCTION_16();
    v33(v32);
    v28 = OUTLINED_FUNCTION_200();
    v30 = v7;
  }

  v29(v28, v30);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_110(Strong);
    (*(v35 + 920))(1);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC357050()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DC516F7C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  sub_1DC28D414();
  OUTLINED_FUNCTION_57_9();
  v11(v0);
  v12 = sub_1DC516F6C();
  v13 = sub_1DC517B9C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_35_8();
    *v14 = 0;
    _os_log_impl(&dword_1DC287000, v12, v13, v4, v14, 2u);
    OUTLINED_FUNCTION_102();
  }

  v15 = *(v8 + 8);
  v16 = OUTLINED_FUNCTION_74();
  v17(v16);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_110(Strong);
    (*(v19 + 920))(v2 & 1);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3571FC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v1 = sub_1DC510C8C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v7 = sub_1DC516F7C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3();
  sub_1DC28D414();
  OUTLINED_FUNCTION_106_2();
  v11(v0);
  OUTLINED_FUNCTION_89_0(v4);
  OUTLINED_FUNCTION_70_4();
  v12();
  v13 = sub_1DC516F6C();
  v14 = sub_1DC517B9C();
  if (os_log_type_enabled(v13, v14))
  {
    v36 = v7;
    v15 = OUTLINED_FUNCTION_63();
    v37 = OUTLINED_FUNCTION_82();
    *v15 = 136315138;
    OUTLINED_FUNCTION_8_9();
    sub_1DC293BE4(v16, v17);
    v18 = sub_1DC51823C();
    v20 = v19;
    v21 = *(v4 + 8);
    v22 = OUTLINED_FUNCTION_16();
    v23(v22);
    v24 = OUTLINED_FUNCTION_128_2();
    sub_1DC291244(v24, v20, v25);
    OUTLINED_FUNCTION_23_2();

    *(v15 + 4) = v18;
    OUTLINED_FUNCTION_247(&dword_1DC287000, v26, v27, "assetsAvailable for locale %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_102();

    v28 = OUTLINED_FUNCTION_200();
    v30 = v36;
  }

  else
  {

    v31 = *(v4 + 8);
    v32 = OUTLINED_FUNCTION_16();
    v33(v32);
    v28 = OUTLINED_FUNCTION_200();
    v30 = v7;
  }

  v29(v28, v30);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_110(Strong);
    (*(v35 + 920))(1);
  }

  OUTLINED_FUNCTION_34();
}

uint64_t *sub_1DC357550()
{
  OUTLINED_FUNCTION_178();
  v1 = sub_1DC516F7C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  sub_1DC28D414();
  OUTLINED_FUNCTION_19_1();
  v7(v0);
  v8 = sub_1DC516F6C();
  sub_1DC517B9C();
  OUTLINED_FUNCTION_182();
  if (os_log_type_enabled(v8, v9))
  {
    *OUTLINED_FUNCTION_35_8() = 0;
    OUTLINED_FUNCTION_162_1();
    _os_log_impl(v10, v11, v12, v13, v14, 2u);
    OUTLINED_FUNCTION_67();
  }

  v15 = *(v4 + 8);
  v16 = OUTLINED_FUNCTION_56_0();
  v17(v16);
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_110(result);
    (*(v19 + 920))(0);
  }

  return result;
}

id sub_1DC3576F4()
{
  swift_weakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMClientNotification();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1DC357760()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMClientNotification();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1DC3577A4(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DC358C0C;
  v10[3] = &block_descriptor_149;
  v7 = _Block_copy(v10);
  v8 = [v4 initWithTimeoutInterval:a1 onQueue:v7 timeoutHandler:a4];

  _Block_release(v7);

  return v8;
}

uint64_t sub_1DC357890()
{
  v1 = sub_1DC510C8C();
  OUTLINED_FUNCTION_52(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_1DC51623C();
  OUTLINED_FUNCTION_52(v6);
  v8 = v7;
  v10 = v9;
  v11 = (v3 + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v12 = *(v10 + 64);
  v13 = OUTLINED_FUNCTION_52_8();
  v16 = *v15;
  v17 = v15[1];

  return sub_1DC34CC60(v13, v0 + v3, v0 + v14, v16, v17);
}

uint64_t sub_1DC357970()
{
  OUTLINED_FUNCTION_178();
  v1 = sub_1DC51623C();
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);
  sub_1DC2936F0();
  v6 = v5;
  OUTLINED_FUNCTION_38_1();
  v8 = (*(v7 + 344))();
  if (v9)
  {
    if (v8 == 0xD000000000000012 && v9 == v6)
    {
    }

    else
    {
      v11 = sub_1DC51825C();

      if ((v11 & 1) == 0)
      {
        return result;
      }
    }

    OUTLINED_FUNCTION_12_0();
    return (*(v13 + 848))();
  }
}

void sub_1DC357AC0()
{
  v1 = sub_1DC510B6C();
  OUTLINED_FUNCTION_52(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_21_10();
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  v11 = (v0 + v8);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v0 + v9);
  v15 = *(v0 + v9 + 8);

  sub_1DC34E9D8();
}

void sub_1DC357B64()
{
  v1 = sub_1DC510B6C();
  OUTLINED_FUNCTION_52(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_21_10();
  v9 = *(v0 + v8);
  v10 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);

  sub_1DC3502C4();
}

uint64_t sub_1DC357BEC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1DC357CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = sub_1DC51110C();
  OUTLINED_FUNCTION_52(v21);
  v23 = v22;
  v25 = v24;
  v26 = *(v23 + 80);
  v27 = *(v25 + 64);
  OUTLINED_FUNCTION_21_10();
  v35 = *(v20 + v34);
  v36 = *(v20 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1DC352ECC(v20 + v33, v35, v36, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void sub_1DC357D80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DC354670();
}

uint64_t sub_1DC357DB8()
{
  sub_1DC292F48();
  sub_1DC29B898();
  sub_1DC29B97C();
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 304);

  return v1(0);
}

uint64_t type metadata accessor for CDMProxy()
{
  result = qword_1ECC7EBE0;
  if (!qword_1ECC7EBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DC357E64()
{
  sub_1DC3580B4(319, &qword_1ECC7BE50, MEMORY[0x1E6969770]);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1DC3580B4(319, &qword_1ECC7BAB8, MEMORY[0x1E69E93B8]);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_1DC3580B4(319, &unk_1ECC7BE80, MEMORY[0x1E69695A8]);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        v6 = sub_1DC510AFC();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = sub_1DC51735C();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1DC3580B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DC517D8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DC358108(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1DC2AEB04(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  v9 = *(*v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D520, &qword_1DC522A60);
  sub_1DC517FFC();
  v10 = *(*(v15 + 48) + 16 * v7 + 8);

  v11 = (*(v15 + 56) + 16 * v7);
  v12 = *v11;
  v13 = v11[1];
  sub_1DC51800C();
  *v3 = v15;
  return v12;
}

uint64_t sub_1DC3581E8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DC2AEB04(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE48, qword_1DC524E30);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1DC2AEB04(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = (v16[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);

    return sub_1DC28F9B0(a1, v17);
  }

  else
  {
    sub_1DC358714(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_1DC358334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DC2AEB04(a3, a4);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D520, &qword_1DC522A60);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v5;
  v16 = sub_1DC2AEB04(a3, a4);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v5;
  if (v14)
  {
    v19 = (v18[7] + 16 * v13);
    v20 = v19[1];
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_1DC33A364(v13, a3, a4, a1, a2, v18);
  }
}

uint64_t objectdestroy_63Tm()
{
  OUTLINED_FUNCTION_241();
  v2 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_160_0();
  v7 = (v1 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_1DC51373C();
  OUTLINED_FUNCTION_0(v8);
  v10 = v9;
  v11 = (v7 + *(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = *(v12 + 64);
  v13 = OUTLINED_FUNCTION_95_0();
  v14(v13);
  OUTLINED_FUNCTION_248();
  v15 = *(v0 + v7 + 8);

  (*(v10 + 8))(v0 + v11, v8);
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_240();

  return MEMORY[0x1EEE6BDD0](v16, v17, v18);
}

void sub_1DC3585C0()
{
  v1 = sub_1DC510B6C();
  OUTLINED_FUNCTION_52(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1DC51373C();
  OUTLINED_FUNCTION_10(v6);
  v8 = (v5 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);
  v11 = *(v0 + v5);
  v12 = *(v0 + v5 + 8);
  sub_1DC352728();
}

void sub_1DC3586A8()
{
  v1 = sub_1DC51373C();
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 80);
  v4 = v0[2];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[11];

  sub_1DC3529D4();
}

uint64_t sub_1DC358714(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DC28F9B0(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1DC3587E8()
{
  OUTLINED_FUNCTION_178();
  v1 = sub_1DC510C8C();
  OUTLINED_FUNCTION_52(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 24) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = OUTLINED_FUNCTION_56_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_10(v7);
  v9 = (v4 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v0 + 16);
  v11 = v0 + v4;
  v12 = *(v0 + v4);
  v13 = *(v11 + 8);
  v14 = OUTLINED_FUNCTION_56_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  sub_1DC51089C();
  OUTLINED_FUNCTION_233();
  v17 = *(v16 + 864);
  OUTLINED_FUNCTION_179();
  return v18();
}

uint64_t sub_1DC358928()
{
  v1 = sub_1DC510C8C();
  OUTLINED_FUNCTION_52(v1);
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = (v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(**(v0 + 16) + 856))(v0 + v4, *v5, v5[1], 0);
}

uint64_t objectdestroy_176Tm()
{
  OUTLINED_FUNCTION_33();
  v2 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_160_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE60, &qword_1DC524EF0);
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v10 = (v1 + *(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = *(v0 + 16);

  v14 = OUTLINED_FUNCTION_95_0();
  v15(v14);
  OUTLINED_FUNCTION_248();
  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_34();

  return MEMORY[0x1EEE6BDD0](v16, v17, v18);
}

uint64_t sub_1DC358B14()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DC29F120;

  return sub_1DC34CE38();
}

char *OUTLINED_FUNCTION_74_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v9 + 32);
  v13 = *(v11 + 16);
  return &a9 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
}

uint64_t OUTLINED_FUNCTION_123_1()
{
  v2 = *(v0 - 192);
  v3 = *(v0 - 176);

  return sub_1DC517E9C();
}

uint64_t OUTLINED_FUNCTION_130_1()
{
  v5 = (v0 + v2);
  v6 = *(v4 - 216);
  *v5 = *(v4 - 224);
  v5[1] = v6;
  v7 = *(v1 + 32);
  return v0 + v3;
}

uint64_t OUTLINED_FUNCTION_138_0()
{
  v3 = *(v1 - 264);

  return sub_1DC291244(v3, v0, (v1 - 128));
}

void OUTLINED_FUNCTION_145_1(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_170()
{

  return sub_1DC517E9C();
}

void OUTLINED_FUNCTION_171()
{
  v2 = *(v0 - 288);

  JUMPOUT(0x1E12964B0);
}

BOOL OUTLINED_FUNCTION_172()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_173()
{

  return swift_isEscapingClosureAtFileLocation();
}

_WORD *OUTLINED_FUNCTION_181(_WORD *result)
{
  *(v2 - 288) = v1;
  *result = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_196()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_199()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_214()
{
  result = *(v0 - 256);
  v3 = *(v1 - 272);
  return result;
}

uint64_t OUTLINED_FUNCTION_218@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  *(v2 - 168) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_219()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_242(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 240);

  return sub_1DC291244(v5, v2, (v3 - 168));
}

uint64_t OUTLINED_FUNCTION_244()
{
  v3 = v0 + *(v1 - 264);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_245(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 224) = a4;
  *(v5 - 216) = a5;
  *(v5 - 240) = a3;
  *(v5 - 232) = a1;

  return sub_1DC51737C();
}

void OUTLINED_FUNCTION_246(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_247(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_248()
{
  v3 = *(v0 + v1 + 8);
}

void *OUTLINED_FUNCTION_250()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 168), v0);
}

uint64_t OUTLINED_FUNCTION_251(uint64_t a1, uint64_t a2)
{

  return sub_1DC28F308(a1, a2, v3, v2);
}

uint64_t sub_1DC359100(uint64_t a1, uint64_t a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - v9;
  v11 = sub_1DC517AAC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = v3;
  *(v12 + 56) = a3;

  sub_1DC315A04(0, 0, v10, &unk_1DC524F28, v12);
}

uint64_t sub_1DC359210()
{
  OUTLINED_FUNCTION_1_0();
  v0[5] = v1;
  v0[3] = v2;
  v0[4] = v3;
  v0[2] = v4;
  v5 = sub_1DC516F7C();
  v0[6] = v5;
  OUTLINED_FUNCTION_52(v5);
  v0[7] = v6;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC3592C8()
{
  v25 = v0;
  v3 = *(v0 + 7);
  v2 = *(v0 + 8);
  v4 = *(v0 + 6);
  v5 = *(v0 + 3);
  v6 = sub_1DC29120C();
  (*(v3 + 16))(v2, v6, v4);

  v7 = sub_1DC516F6C();
  v8 = sub_1DC517B9C();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 7);
  v10 = *(v0 + 8);
  v12 = *(v0 + 6);
  if (v9)
  {
    v14 = *(v0 + 2);
    v13 = *(v0 + 3);
    OUTLINED_FUNCTION_63();
    v24 = OUTLINED_FUNCTION_14_8();
    *v1 = 136446210;
    *(v1 + 4) = sub_1DC291244(v14, v13, &v24);
    _os_log_impl(&dword_1DC287000, v7, v8, "Registering task %{public}s", v1, 0xCu);
    OUTLINED_FUNCTION_5_20();
    OUTLINED_FUNCTION_102();
  }

  v15 = *(v11 + 8);
  v16 = OUTLINED_FUNCTION_63_0();
  v17(v16);
  v18 = *(v0 + 8);
  v19 = v0[5];
  v21 = *(v0 + 2);
  v20 = *(v0 + 3);
  sub_1DC3595E8(v21, v20);
  sub_1DC35AE70(v21, v20, v19);

  OUTLINED_FUNCTION_2_2();

  return v22();
}

uint64_t sub_1DC359450()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_33_0(v5);
  *v6 = v7;
  v6[1] = sub_1DC359504;

  return sub_1DC359210();
}

uint64_t sub_1DC359504()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v3 = v2;

  OUTLINED_FUNCTION_2_2();

  return v4();
}

void sub_1DC3595E8(uint64_t a1, uint64_t a2)
{
  v22 = sub_1DC517BEC();
  v4 = OUTLINED_FUNCTION_0(v22);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = sub_1DC517BCC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v14 = sub_1DC5173CC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_1();
  v21 = [objc_opt_self() sharedScheduler];
  v19 = a1;
  v20 = sub_1DC5176FC();
  sub_1DC298C74(0, &qword_1EDAC7FA0, 0x1E69E9610);
  v24 = a2;

  MEMORY[0x1E1296160](0x65756575712ELL, 0xE600000000000000);
  sub_1DC51738C();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1DC2BC840();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD20, &qword_1DC525300);
  sub_1DC2BC7DC();
  sub_1DC517E9C();
  (*(v6 + 104))(v11, *MEMORY[0x1E69E8090], v22);
  v16 = sub_1DC517C1C();
  OUTLINED_FUNCTION_27_5();
  v17 = swift_allocObject();
  *(v17 + 16) = v19;
  *(v17 + 24) = a2;
  v27 = sub_1DC35B704;
  v28 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1DC35AE08;
  v26 = &block_descriptor_4;
  v18 = _Block_copy(&aBlock);

  [v21 registerForTaskWithIdentifier:v20 usingQueue:v16 launchHandler:v18];
  _Block_release(v18);
}

uint64_t sub_1DC3598F8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = aBlock - v8;
  OUTLINED_FUNCTION_27_5();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  aBlock[4] = sub_1DC35B70C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DC358C0C;
  aBlock[3] = &block_descriptor_11;
  v11 = _Block_copy(aBlock);

  [a1 setExpirationHandler_];
  _Block_release(v11);
  v12 = sub_1DC517AAC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v14 = a1;
  sub_1DC315A04(0, 0, v9, &unk_1DC524F88, v13);
}

uint64_t sub_1DC359A98(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DC516F7C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = sub_1DC29120C();
  (*(v7 + 16))(v12, v13, v4);

  v14 = sub_1DC516F6C();
  v15 = sub_1DC517B9C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_63();
    v17 = OUTLINED_FUNCTION_82();
    v19 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1DC291244(a1, a2, &v19);
    _os_log_impl(&dword_1DC287000, v14, v15, "Received expiration signal for task %{public}s. We will auto schedule next instance.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    OUTLINED_FUNCTION_102();
    OUTLINED_FUNCTION_66();
  }

  return (*(v7 + 8))(v12, v4);
}

uint64_t sub_1DC359C24()
{
  OUTLINED_FUNCTION_1_0();
  v23 = *MEMORY[0x1E69E9840];
  v0[13] = v1;
  v2 = sub_1DC51753C();
  v0[14] = v2;
  OUTLINED_FUNCTION_52(v2);
  v0[15] = v3;
  v5 = *(v4 + 64) + 15;
  v0[16] = swift_task_alloc();
  v6 = sub_1DC5108BC();
  v0[17] = v6;
  OUTLINED_FUNCTION_52(v6);
  v0[18] = v7;
  v9 = *(v8 + 64) + 15;
  v0[19] = swift_task_alloc();
  v10 = sub_1DC5109BC();
  v0[20] = v10;
  OUTLINED_FUNCTION_52(v10);
  v0[21] = v11;
  v13 = *(v12 + 64) + 15;
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v14 = sub_1DC516F7C();
  v0[27] = v14;
  OUTLINED_FUNCTION_52(v14);
  v0[28] = v15;
  v17 = *(v16 + 64) + 15;
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v18 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1DC359E50()
{
  v70 = v0;
  v69[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 256);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = sub_1DC29120C();
  *(v0 + 264) = v4;
  v5 = *(v3 + 16);
  *(v0 + 272) = v5;
  *(v0 + 280) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_1DC516F6C();
  v7 = sub_1DC517B9C();
  if (os_log_type_enabled(v6, v7))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_43_7(&dword_1DC287000, v8, v9, "Begin initializing llm cache manager");
    OUTLINED_FUNCTION_66();
  }

  v10 = *(v0 + 256);
  v11 = *(v0 + 216);
  v12 = *(v0 + 224);

  *(v0 + 288) = *(v12 + 8);
  v13 = OUTLINED_FUNCTION_63_0();
  v14(v13);
  v15 = [objc_opt_self() defaultManager];
  *(v0 + 88) = 0;
  v16 = [v15 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:v0 + 88];

  v17 = *(v0 + 88);
  if (v16)
  {
    v18 = *(v0 + 184);
    v57 = *(v0 + 192);
    v66 = *(v0 + 200);
    v68 = *(v0 + 168);
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v63 = *(v0 + 128);
    v64 = *(v0 + 176);
    v60 = *(v0 + 208);
    v61 = *(v0 + 120);
    v62 = *(v0 + 112);
    sub_1DC51093C();
    v23 = v17;

    *(v0 + 40) = 0x6E61747369737341;
    *(v0 + 48) = 0xE900000000000074;
    v59 = *MEMORY[0x1E6968F58];
    v58 = *(v21 + 104);
    v58(v20);
    sub_1DC2A32B0();
    sub_1DC51099C();
    v65 = *(v21 + 8);
    v24 = OUTLINED_FUNCTION_54_4();
    v25(v24);
    v56 = *(v68 + 8);
    *(v0 + 296) = v56;
    *(v0 + 304) = (v68 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v56(v18, v19);
    *(v0 + 56) = 0x65686361434D4C4CLL;
    *(v0 + 64) = 0xE800000000000000;
    (v58)(v20, v59, v22);
    sub_1DC51099C();
    v26 = OUTLINED_FUNCTION_54_4();
    v65(v26);
    v56(v57, v19);
    *(v0 + 72) = 0x726574756F524C4ELL;
    *(v0 + 80) = 0xE800000000000000;
    (v58)(v20, v59, v22);
    sub_1DC51099C();
    v27 = OUTLINED_FUNCTION_54_4();
    v65(v27);
    v56(v66, v19);
    sub_1DC51746C();
    (*(v61 + 104))(v63, *MEMORY[0x1E69ABD50], v62);
    (*(v68 + 16))(v64, v60, v19);
    v28 = *(MEMORY[0x1E69ABD28] + 4);
    v29 = swift_task_alloc();
    *(v0 + 312) = v29;
    *v29 = v0;
    v29[1] = sub_1DC35A484;
    v30 = *(v0 + 176);
    v31 = *(v0 + 128);
    v32 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE18708](v31, v30);
  }

  else
  {
    v33 = v17;
    v34 = sub_1DC51085C();

    swift_willThrow();
    v35 = OUTLINED_FUNCTION_1_15();
    v36(v35);
    v37 = v34;
    v38 = sub_1DC516F6C();
    v39 = sub_1DC517BAC();

    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 288);
    v42 = *(v0 + 224);
    v43 = *(v0 + 232);
    v44 = *(v0 + 216);
    if (v40)
    {
      OUTLINED_FUNCTION_63();
      v69[0] = OUTLINED_FUNCTION_14_8();
      OUTLINED_FUNCTION_13_11(4.8751e-34);
      v67 = v41;
      v46 = *(v0 + 16);
      v45 = *(v0 + 24);
      v47 = *(v0 + 32);
      v48 = sub_1DC5182AC();
      v50 = sub_1DC291244(v48, v49, v69);

      *(v43 + 4) = v50;
      OUTLINED_FUNCTION_12_12(&dword_1DC287000, v51, v52, "LLMCache cleanup failed in the background, error: %{public}s");
      OUTLINED_FUNCTION_5_20();
      OUTLINED_FUNCTION_102();

      v67(v43, v44);
    }

    else
    {

      v41(v43, v44);
    }

    OUTLINED_FUNCTION_0_22();
    [*(v0 + 104) setTaskCompleted];

    OUTLINED_FUNCTION_2_2();
    v54 = *MEMORY[0x1E69E9840];

    return v53();
  }
}

uint64_t sub_1DC35A484()
{
  OUTLINED_FUNCTION_1_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 312);
  v11 = *v1;
  *(v2 + 320) = v4;
  *(v2 + 328) = v0;

  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DC35A5BC()
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 280);
  (*(v0 + 272))(*(v0 + 248), *(v0 + 264), *(v0 + 216));
  v2 = sub_1DC516F6C();
  v3 = sub_1DC517B9C();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_43_7(&dword_1DC287000, v4, v5, "Begin pruning of llm cache");
    OUTLINED_FUNCTION_66();
  }

  v6 = *(v0 + 288);
  v7 = *(v0 + 248);
  v8 = *(v0 + 216);
  v9 = *(v0 + 224);

  v10 = OUTLINED_FUNCTION_63_0();
  v6(v10);
  v11 = MEMORY[0x1E69ABD20];
  v12 = *(MEMORY[0x1E69ABD20] + 4);
  v13 = *MEMORY[0x1E69ABD20];
  v14 = swift_task_alloc();
  *(v0 + 336) = v14;
  *v14 = v0;
  v14[1] = sub_1DC35A720;
  v15 = *(v0 + 320);
  v16 = *MEMORY[0x1E69E9840];

  return ((v13 + v11))();
}

uint64_t sub_1DC35A720()
{
  OUTLINED_FUNCTION_1_0();
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 336);
  v3 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  *(v5 + 344) = v0;

  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC35A850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_23_12();
  v46 = *MEMORY[0x1E69E9840];
  v17 = *(v16 + 280);
  (*(v16 + 272))(*(v16 + 240), *(v16 + 264), *(v16 + 216));
  v18 = sub_1DC516F6C();
  v19 = sub_1DC517B9C();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v16 + 320);
  v22 = *(v16 + 304);
  v23 = *(v16 + 288);
  v42 = v23;
  v44 = *(v16 + 296);
  v24 = *(v16 + 240);
  v25 = *(v16 + 216);
  v26 = *(v16 + 224);
  v27 = *(v16 + 208);
  v28 = *(v16 + 160);
  if (v20)
  {
    v29 = swift_slowAlloc();
    a10 = v22;
    *v29 = 0;
    _os_log_impl(&dword_1DC287000, v18, v19, "Done pruning of llm cache", v29, 2u);
    OUTLINED_FUNCTION_66();
  }

  v42(v24, v25);
  v44(v27, v28);
  OUTLINED_FUNCTION_0_22();
  v43 = v31;
  v45 = v30;
  [*(v16 + 104) setTaskCompleted];

  OUTLINED_FUNCTION_2_2();
  v32 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_24_6();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, v43, v45, v46, a14, a15, a16);
}

uint64_t sub_1DC35AA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, void), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_23_12();
  a23 = v29;
  a24 = v30;
  a22 = v25;
  a13 = *MEMORY[0x1E69E9840];
  v31 = *(v25 + 304);
  (*(v25 + 296))(*(v25 + 208), *(v25 + 160));
  v32 = *(v25 + 328);
  v33 = OUTLINED_FUNCTION_1_15();
  v34(v33);
  v35 = v32;
  v36 = sub_1DC516F6C();
  v37 = sub_1DC517BAC();

  if (os_log_type_enabled(v36, v37))
  {
    OUTLINED_FUNCTION_15_6();
    a12 = OUTLINED_FUNCTION_14_8();
    OUTLINED_FUNCTION_13_11(4.8751e-34);
    v39 = *(v25 + 16);
    v38 = *(v25 + 24);
    v40 = *(v25 + 32);
    v41 = sub_1DC5182AC();
    v43 = sub_1DC291244(v41, v42, &a12);

    *(v28 + 4) = v43;
    OUTLINED_FUNCTION_12_12(&dword_1DC287000, v44, v45, "LLMCache cleanup failed in the background, error: %{public}s");
    OUTLINED_FUNCTION_5_20();
    OUTLINED_FUNCTION_102();

    a11(a10, v27);
  }

  else
  {
    OUTLINED_FUNCTION_26_8();

    v27(v24, v26);
  }

  OUTLINED_FUNCTION_0_22();
  v58 = v47;
  v59 = v46;
  [*(v25 + 104) setTaskCompleted];

  OUTLINED_FUNCTION_2_2();
  v48 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_24_6();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, v58, v59, a12, a13, a14, a15, a16);
}

uint64_t sub_1DC35AC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, void), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_23_12();
  a23 = v27;
  a24 = v28;
  a22 = v24;
  a13 = *MEMORY[0x1E69E9840];
  v29 = *(v24 + 320);
  v31 = *(v24 + 296);
  v30 = *(v24 + 304);
  v32 = *(v24 + 208);
  v33 = *(v24 + 160);

  v31(v32, v33);
  v34 = *(v24 + 344);
  v35 = OUTLINED_FUNCTION_1_15();
  v36(v35);
  v37 = v34;
  v38 = sub_1DC516F6C();
  v39 = sub_1DC517BAC();

  if (os_log_type_enabled(v38, v39))
  {
    OUTLINED_FUNCTION_15_6();
    a12 = OUTLINED_FUNCTION_14_8();
    OUTLINED_FUNCTION_13_11(4.8751e-34);
    v41 = *(v24 + 16);
    v40 = *(v24 + 24);
    v42 = *(v24 + 32);
    v43 = sub_1DC5182AC();
    v45 = sub_1DC291244(v43, v44, &a12);

    *(v26 + 4) = v45;
    OUTLINED_FUNCTION_12_12(&dword_1DC287000, v46, v47, "LLMCache cleanup failed in the background, error: %{public}s");
    OUTLINED_FUNCTION_5_20();
    OUTLINED_FUNCTION_102();

    a11(a10, v25);
  }

  else
  {
    OUTLINED_FUNCTION_26_8();

    v25(v32, v31);
  }

  OUTLINED_FUNCTION_0_22();
  v60 = v49;
  v61 = v48;
  [*(v24 + 104) setTaskCompleted];

  OUTLINED_FUNCTION_2_2();
  v50 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_24_6();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, v60, v61, a12, a13, a14, a15, a16);
}

void sub_1DC35AE08(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1DC35AE70(uint64_t a1, unint64_t a2, double a3)
{
  v87[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1DC516F7C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v86 = v8;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v84 = (&v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v78 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v85 = &v78 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v78 - v18;
  v20 = objc_opt_self();
  v21 = [v20 sharedScheduler];
  OUTLINED_FUNCTION_63_0();
  v22 = sub_1DC5176FC();
  v23 = [v21 taskRequestForIdentifier_];

  if (v23)
  {
    v82 = a1;
    v24 = sub_1DC29120C();
    v25 = v86;
    v84 = *(v86 + 16);
    v84(v19, v24, v6);

    v26 = sub_1DC516F6C();
    v27 = sub_1DC517B9C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_63();
      v81 = v24;
      v29 = v28;
      v30 = OUTLINED_FUNCTION_82();
      v83 = v6;
      v31 = v30;
      v87[0] = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_1DC291244(v82, a2, v87);
      _os_log_impl(&dword_1DC287000, v26, v27, "Task request %{public}s already exists", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      v6 = v83;
      OUTLINED_FUNCTION_66();
      v24 = v81;
      OUTLINED_FUNCTION_66();
    }

    v32 = *(v25 + 8);
    v32(v19, v6);
    v84(v85, v24, v6);
    v33 = v23;
    v34 = sub_1DC516F6C();
    v35 = sub_1DC517B9C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = v6;
      v37 = OUTLINED_FUNCTION_63();
      v38 = OUTLINED_FUNCTION_82();
      v87[0] = v38;
      *v37 = 136446210;
      v39 = [v33 description];
      sub_1DC51772C();

      v40 = OUTLINED_FUNCTION_54_4();
      v43 = sub_1DC291244(v40, v41, v42);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_1DC287000, v34, v35, "Existing BGST.taskRequest: %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      v44 = v85;
      v45 = v36;
    }

    else
    {

      v44 = v85;
      v45 = v6;
    }

    v32(v44, v45);
  }

  else
  {
    sub_1DC298C74(0, &qword_1ECC7B940, 0x1E698E490);

    OUTLINED_FUNCTION_63_0();
    v46 = sub_1DC35B628();
    [v46 setPriority_];
    [v46 setRequiresNetworkConnectivity_];
    [v46 setRequiresExternalPower_];
    [v46 setInterval_];
    v47 = sub_1DC29120C();
    v81 = *(v86 + 16);
    v82 = v47;
    v85 = (v86 + 16);
    v81(v15);

    v48 = v46;
    v49 = sub_1DC516F6C();
    v50 = sub_1DC517B9C();

    v51 = os_log_type_enabled(v49, v50);
    v80 = a2;
    if (v51)
    {
      v52 = swift_slowAlloc();
      v79 = v48;
      v53 = a2;
      v54 = v52;
      v55 = swift_slowAlloc();
      v56 = OUTLINED_FUNCTION_82();
      v83 = v6;
      v57 = v56;
      v87[0] = v56;
      *v54 = 136315394;
      v58 = v53;
      v59 = v86;
      v48 = v79;
      *(v54 + 4) = sub_1DC291244(a1, v58, v87);
      *(v54 + 12) = 2112;
      *(v54 + 14) = v48;
      *v55 = v48;
      v60 = v48;
      _os_log_impl(&dword_1DC287000, v49, v50, "Task %s has no request, submitting request: %@", v54, 0x16u);
      sub_1DC2BE530(v55, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_66();
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      v6 = v83;
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      v61 = v59;
    }

    else
    {

      v61 = v86;
    }

    v62 = *(v61 + 8);
    v62(v15, v6);
    v63 = [v20 sharedScheduler];
    v87[0] = 0;
    v64 = [v63 submitTaskRequest:v48 error:v87];

    if (v64)
    {
      v65 = v87[0];
    }

    else
    {
      v66 = v87[0];
      v67 = sub_1DC51085C();

      swift_willThrow();
      (v81)(v84, v82, v6);
      v68 = v80;

      v69 = v67;
      v70 = sub_1DC516F6C();
      v71 = sub_1DC517BAC();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = v68;
        v73 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v87[0] = v85;
        *v73 = 136315394;
        *(v73 + 4) = sub_1DC291244(a1, v72, v87);
        *(v73 + 12) = 2080;
        swift_getErrorValue();
        v74 = sub_1DC5182AC();
        v76 = sub_1DC291244(v74, v75, v87);

        *(v73 + 14) = v76;
        _os_log_impl(&dword_1DC287000, v70, v71, "Task %s schedule request failed: %s", v73, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_66();
      }

      else
      {
      }

      v62(v84, v6);
    }
  }

  v77 = *MEMORY[0x1E69E9840];
}

id sub_1DC35B628()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1DC5176FC();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t sub_1DC35B714()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_33_0(v2);
  *v3 = v4;
  v3[1] = sub_1DC35B814;

  return sub_1DC359C24();
}

uint64_t sub_1DC35B7A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC35B81C()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F810);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8F810);
  v2 = swift_allocObject();
  *(v2 + 16) = 0xD00000000000001BLL;
  *(v2 + 24) = 0x80000001DC541250;
  strcpy((v2 + 32), "ContactEntity");
  *(v2 + 46) = -4864;
  *v1 = v2;
  v3 = *MEMORY[0x1E69DB098];
  OUTLINED_FUNCTION_7_1(v0);
  v5 = *(v4 + 104);

  return v5(v1);
}

uint64_t sub_1DC35B900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v26 - v4;
  v6 = sub_1DC5172FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC86E28 != -1)
  {
    OUTLINED_FUNCTION_0_23();
  }

  __swift_project_value_buffer(v6, qword_1ECC8F810);
  v11 = sub_1DC5172DC();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v12 = sub_1DC5171EC();
    sub_1DC30F668(0x6E6F73726570, 0xE600000000000000, v12, v5);

    v13 = sub_1DC5172AC();
    if (__swift_getEnumTagSinglePayload(v5, 1, v13) == 1)
    {
      sub_1DC30F72C(v5);
LABEL_9:
      v23 = sub_1DC51721C();
      OUTLINED_FUNCTION_0_2(v23);
      (*(v24 + 8))(a1);

      return 0;
    }

    sub_1DC382AC0();
    v16 = v17;
    v19 = v18;
    OUTLINED_FUNCTION_7_1(v13);
    (*(v20 + 8))(v5, v13);
    if (!v19)
    {
      goto LABEL_9;
    }

    v21 = sub_1DC51721C();
    OUTLINED_FUNCTION_0_2(v21);
    (*(v22 + 8))(a1);
  }

  else
  {
    v14 = sub_1DC51721C();
    OUTLINED_FUNCTION_0_2(v14);
    (*(v15 + 8))(a1);
    return 0;
  }

  return v16;
}

unint64_t sub_1DC35BBAC(uint64_t a1, uint64_t a2)
{
  sub_1DC517F4C();

  MEMORY[0x1E1296160](a1, a2);
  return 0xD000000000000019;
}

uint64_t sub_1DC35BC2C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC86E28 != -1)
  {
    OUTLINED_FUNCTION_0_23();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F810);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC35BCC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DC35B900(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC35BCF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DC35BD30(uint64_t result, int a2, int a3)
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

uint64_t sub_1DC35C554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE78, &qword_1DC524FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DC35C5BC()
{
  result = qword_1ECC7BAC0;
  if (!qword_1ECC7BAC0)
  {
    sub_1DC516E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BAC0);
  }

  return result;
}

uint64_t sub_1DC35C628()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F828);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = 0xD000000000000013;
  *(v4 + 24) = 0x80000001DC53F0B0;
  strcpy((v4 + 32), "MessageEntity");
  *(v4 + 46) = -4864;
  *v3 = v4;
  v5 = *MEMORY[0x1E69DB098];
  OUTLINED_FUNCTION_7_1(v0);
  v7 = *(v6 + 104);

  return v7(v3);
}

uint64_t sub_1DC35C708@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_8();
  v8 = v6 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v62 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v62 - v16;
  v18 = sub_1DC5172FC();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  sub_1DC5171CC();
  if (qword_1ECC86E30 != -1)
  {
    OUTLINED_FUNCTION_2_13();
  }

  __swift_project_value_buffer(v18, qword_1ECC8F828);
  v27 = sub_1DC5172DC();
  (*(v21 + 8))(v26, v18);
  if (v27)
  {
    v28 = sub_1DC5171EC();
    sub_1DC30F668(0x61737265766E6F63, 0xEC0000006E6F6974, v28, v17);

    v29 = sub_1DC35CBCC(v17);
    if (v30)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0;
    }

    v32 = 0xE000000000000000;
    if (v30)
    {
      v32 = v30;
    }

    v62 = v32;
    v63 = v31;
    v33 = sub_1DC5171EC();
    sub_1DC30F668(0x7265646E6573, 0xE600000000000000, v33, v15);

    v34 = sub_1DC5172AC();
    OUTLINED_FUNCTION_3_3(v15);
    if (v35)
    {
      sub_1DC30F72C(v15);
    }

    else
    {
      sub_1DC382AC0();
      v46 = v45;
      v48 = v47;
      OUTLINED_FUNCTION_7_1(v34);
      (*(v49 + 8))(v15, v34);
      if (v48)
      {
LABEL_15:
        v50 = sub_1DC5171EC();
        sub_1DC30F668(1702125924, 0xE400000000000000, v50, v12);

        OUTLINED_FUNCTION_3_3(v12);
        if (v35)
        {
          sub_1DC30F72C(v12);
        }

        else
        {
          sub_1DC382AC0();
          v41 = v51;
          v42 = v52;
          OUTLINED_FUNCTION_7_1(v34);
          (*(v53 + 8))(v12, v34);
          if (v42)
          {
LABEL_20:
            v54 = sub_1DC5171EC();
            sub_1DC30F668(0x746E65746E6F63, 0xE700000000000000, v54, v8);

            OUTLINED_FUNCTION_3_3(v8);
            if (v35)
            {
              sub_1DC30F72C(v8);
            }

            else
            {
              sub_1DC382AC0();
              v43 = v55;
              v44 = v56;
              OUTLINED_FUNCTION_7_1(v34);
              (*(v57 + 8))(v8, v34);
              if (v44)
              {
                v58 = sub_1DC51721C();
                OUTLINED_FUNCTION_7_1(v58);
                result = (*(v59 + 8))(a1);
LABEL_26:
                v40 = v62;
                v39 = v63;
                goto LABEL_27;
              }
            }

            v60 = sub_1DC51721C();
            OUTLINED_FUNCTION_7_1(v60);
            (*(v61 + 8))(a1);

            v43 = 0;
            v44 = 0xE000000000000000;
            goto LABEL_26;
          }
        }

        v41 = 0;
        v42 = 0xE000000000000000;
        goto LABEL_20;
      }
    }

    v46 = 0;
    v48 = 0xE000000000000000;
    goto LABEL_15;
  }

  v36 = sub_1DC51721C();
  OUTLINED_FUNCTION_7_1(v36);
  result = (*(v37 + 8))(a1);
  v39 = 0;
  v40 = 0;
  v46 = 0;
  v48 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
LABEL_27:
  *a2 = v39;
  a2[1] = v40;
  a2[2] = v46;
  a2[3] = v48;
  a2[4] = v41;
  a2[5] = v42;
  a2[6] = v43;
  a2[7] = v44;
  return result;
}

uint64_t sub_1DC35CBCC(uint64_t a1)
{
  v2 = sub_1DC5172FC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v65 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = sub_1DC51721C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v66 = v12;
  v67 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  OUTLINED_FUNCTION_8();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64 - v24;
  v26 = sub_1DC5172AC();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_8();
  v34 = (v32 - v33);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v64 - v36;
  sub_1DC35D0B4(a1, v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    sub_1DC30F72C(a1);
    sub_1DC30F72C(v25);
  }

  else
  {
    (*(v29 + 32))(v37, v25, v26);
    (*(v29 + 16))(v34, v37, v26);
    if ((*(v29 + 88))(v34, v26) == *MEMORY[0x1E69DAE58])
    {
      (*(v29 + 96))(v34, v26);
      v38 = *v34;
      v39 = swift_projectBox();
      (*(v66 + 16))(v17, v39, v67);
      sub_1DC5171CC();
      if (qword_1ECC86E38 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v2, qword_1ECC8F840);
      v40 = sub_1DC5172DC();
      (*(v65 + 8))(v9, v2);
      if (v40)
      {
        v41 = sub_1DC5171EC();
        sub_1DC30F668(0x7069636974726170, 0xEC00000073746E61, v41, v22);

        if (__swift_getEnumTagSinglePayload(v22, 1, v26) == 1)
        {
          sub_1DC30F72C(v22);
        }

        else
        {
          sub_1DC382748();
          v49 = v51;
          v53 = v52;
          v54 = v22;
          v55 = *(v29 + 8);
          v55(v54, v26);
          if (v53)
          {
            sub_1DC30F72C(a1);
            v56 = OUTLINED_FUNCTION_4_1();
            v57(v56);
            v58 = OUTLINED_FUNCTION_35_0();
            (v55)(v58);

            return v49;
          }
        }

        sub_1DC30F72C(a1);
        v59 = OUTLINED_FUNCTION_4_1();
        v60(v59);
        v61 = *(v29 + 8);
        v62 = OUTLINED_FUNCTION_35_0();
        v63(v62);

        return 0;
      }

      sub_1DC30F72C(a1);
      v44 = OUTLINED_FUNCTION_4_1();
      v45(v44);
      v46 = *(v29 + 8);
      v47 = OUTLINED_FUNCTION_35_0();
      v48(v47);
    }

    else
    {
      sub_1DC30F72C(a1);
      v42 = *(v29 + 8);
      v43 = OUTLINED_FUNCTION_35_0();
      v42(v43);
      (v42)(v34, v26);
    }
  }

  return 0;
}

uint64_t sub_1DC35D0B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC35D124()
{
  v1 = v0;
  sub_1DC517F4C();
  MEMORY[0x1E1296160](0xD00000000000001BLL, 0x80000001DC5413C0);
  MEMORY[0x1E1296160](*v1, v1[1]);
  MEMORY[0x1E1296160](0xD000000000000010, 0x80000001DC5413E0);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  MEMORY[0x1E1296160](0x3A65746144207C20, 0xE900000000000020);
  MEMORY[0x1E1296160](v1[4], v1[5]);
  MEMORY[0x1E1296160](0x65746E6F43207C20, 0xEC000000203A746ELL);
  MEMORY[0x1E1296160](v1[6], v1[7]);
  return 0;
}

uint64_t sub_1DC35D228()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F840);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000013;
  v4[3] = 0x80000001DC53F0B0;
  v4[4] = 0xD000000000000012;
  v4[5] = 0x80000001DC5250B0;
  *v3 = v4;
  v5 = *MEMORY[0x1E69DB098];
  OUTLINED_FUNCTION_7_1(v0);
  v7 = *(v6 + 104);

  return v7(v3);
}

uint64_t sub_1DC35D2FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC86E30 != -1)
  {
    OUTLINED_FUNCTION_2_13();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F828);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

double sub_1DC35D390@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DC35C708(a1, v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_1DC35D3D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_9_13(result, a2);
    }
  }

  return result;
}

uint64_t sub_1DC35D42C(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_9_13(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_9_13(result, a2);
    }
  }

  return result;
}

uint64_t sub_1DC35D470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  if (!*(v3[5] + 16) || (sub_1DC2AEB04(*v3, v3[1]), (v8 & 1) == 0) || (v9 = sub_1DC35D764(a1), !v10))
  {
    v23 = sub_1DC517B9C();
    sub_1DC297814();
    v24 = sub_1DC2BE518();
    if (os_log_type_enabled(v24, v23))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1DC291244(v4, v5, &v30);
      _os_log_impl(&dword_1DC287000, v24, v23, "[MDMRRewriteRule] entity value is nil or incompatible domain %s. Return without rewrite", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1E1298840](v26, -1, -1);
      MEMORY[0x1E1298840](v25, -1, -1);
    }

    return 0;
  }

  v11 = v10;
  if (!*(a3 + 16))
  {

    sub_1DC517B9C();
    OUTLINED_FUNCTION_21_2();
    v28 = sub_1DC2BE518();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    return 0;
  }

  v12 = v9;
  v13 = *(a3 + 32);
  v29 = *(a3 + 36);
  OUTLINED_FUNCTION_45();
  v30 = sub_1DC3294A0();
  v31 = v14;
  MEMORY[0x1E1296160](v12, v11);

  OUTLINED_FUNCTION_45();
  v16 = sub_1DC329368(v15);
  MEMORY[0x1E1296160](v16);

  sub_1DC2A32B0();
  v17 = OUTLINED_FUNCTION_5_21();

  v19 = v3[3];
  v18 = v3[4];
  OUTLINED_FUNCTION_45();
  v30 = sub_1DC3294A0();
  v31 = v20;
  MEMORY[0x1E1296160](v19, v18);
  OUTLINED_FUNCTION_45();
  v22 = sub_1DC329368(v21);
  MEMORY[0x1E1296160](v22);

  OUTLINED_FUNCTION_5_21();

  return v17;
}

uint64_t sub_1DC35D764(uint64_t a1)
{
  sub_1DC35DCE0(a1, &v19);
  if (!v20)
  {
    sub_1DC31405C(&v19);
    return 0;
  }

  sub_1DC2BAD90(&v19, v21);
  v2 = v1[5];
  if (!*(v2 + 16))
  {
    goto LABEL_16;
  }

  v3 = *v1;
  v4 = v1[1];
  v5 = v1[5];
  v6 = sub_1DC2AEB04(v3, v4);
  if ((v7 & 1) == 0 || (v8 = *(*(v2 + 56) + 8 * v6), MEMORY[0x1EEE9AC00](v6), v18[2] = v21, , v9 = sub_1DC2E24F4(sub_1DC2E56F0, v18, v8), , !v9))
  {
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    return 0;
  }

  sub_1DC291F78(v21, &v19);
  sub_1DC514B0C();
  if (!OUTLINED_FUNCTION_1_16())
  {
    sub_1DC51473C();
    if (OUTLINED_FUNCTION_1_16())
    {
      sub_1DC517B9C();
      OUTLINED_FUNCTION_21_2();
      v12 = sub_1DC2BE518();
      OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C();

      v11 = sub_1DC51472C();
      goto LABEL_14;
    }

    sub_1DC5149DC();
    if (OUTLINED_FUNCTION_1_16())
    {
      sub_1DC517B9C();
      OUTLINED_FUNCTION_21_2();
      v13 = sub_1DC2BE518();
      OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C();

      v11 = sub_1DC5149CC();
      goto LABEL_14;
    }

    sub_1DC514A3C();
    if (OUTLINED_FUNCTION_1_16())
    {
      sub_1DC517B9C();
      OUTLINED_FUNCTION_21_2();
      v14 = sub_1DC2BE518();
      OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C();

      v11 = sub_1DC514A2C();
      goto LABEL_14;
    }

    sub_1DC517B9C();
    OUTLINED_FUNCTION_21_2();
    v16 = sub_1DC2BE518();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    __swift_destroy_boxed_opaque_existential_1Tm(&v19);
    goto LABEL_16;
  }

  sub_1DC517B9C();
  OUTLINED_FUNCTION_21_2();
  v10 = sub_1DC2BE518();
  OUTLINED_FUNCTION_40_1();
  sub_1DC516F0C();

  v11 = sub_1DC514AFC();
LABEL_14:
  v15 = v11;

  __swift_destroy_boxed_opaque_existential_1Tm(&v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return v15;
}

uint64_t sub_1DC35DA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE80, &qword_1DC5250F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC522F10;
  OUTLINED_FUNCTION_2_14();
  v11 = OUTLINED_FUNCTION_4_16(v9, v10);
  v12 = OUTLINED_FUNCTION_0_24(v11);
  *(v12 + 16) = xmmword_1DC523DA0;
  v13 = sub_1DC514B0C();
  *(v12 + 32) = v13;
  v14 = sub_1DC51473C();
  *(v12 + 40) = v14;
  v15 = sub_1DC5149DC();
  *(v12 + 48) = v15;
  v16 = sub_1DC514A3C();
  *(v12 + 56) = v16;
  OUTLINED_FUNCTION_2_14();
  *(inited + 48) = v12;
  *(inited + 56) = v17 & 0xFFFFFFFFFFFFLL | 0x4E5F000000000000;
  *(inited + 64) = 0xEB0000000065746FLL;
  v18 = sub_1DC35DBDC();
  v19 = OUTLINED_FUNCTION_0_24(v18);
  *(v19 + 16) = xmmword_1DC523DA0;
  *(v19 + 32) = v13;
  *(v19 + 40) = v14;
  *(v19 + 48) = v15;
  *(v19 + 56) = v16;
  *(inited + 72) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE88, &qword_1DC5250F8);
  result = sub_1DC51764C();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  strcpy((a4 + 24), "[[Redacted]]");
  *(a4 + 37) = 0;
  *(a4 + 38) = -5120;
  *(a4 + 40) = result;
  return result;
}

uint64_t sub_1DC35DBDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE90, &qword_1DC5251B0);
  if (dynamic_cast_existential_0_class_conditional(v0))
  {
    v1 = &qword_1ECC7C1C8;
    v2 = &qword_1DC524550;
  }

  else
  {
    v1 = &unk_1ECC7CE98;
    v2 = &unk_1DC5251B8;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

uint64_t sub_1DC35DC44(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_9_13(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_9_13(result, a2);
    }
  }

  return result;
}

uint64_t sub_1DC35DC8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_9_13(result, a2);
    }
  }

  return result;
}

uint64_t sub_1DC35DCE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D3F0, &qword_1DC5238B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC35DD50@<X0>(uint64_t (***a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v119 = a1;
  v109 = a2;
  v116 = sub_1DC510FDC();
  v2 = OUTLINED_FUNCTION_0(v116);
  v118 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v115 = v7 - v6;
  v121 = sub_1DC51179C();
  v8 = OUTLINED_FUNCTION_0(v121);
  v114 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v120 = v13 - v12;
  v117 = sub_1DC51164C();
  v14 = OUTLINED_FUNCTION_0(v117);
  v108 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v107 = sub_1DC51122C();
  v21 = OUTLINED_FUNCTION_0(v107);
  v110 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v112 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v96 - v33;
  v35 = type metadata accessor for NLRouterNLParseResponse(0);
  v36 = OUTLINED_FUNCTION_35(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1();
  v100 = v40 - v39;
  v41 = sub_1DC516F5C();
  v42 = OUTLINED_FUNCTION_0(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_1();
  v49 = v48 - v47;
  v50 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v51 = sub_1DC2BE518();
  v52 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.CrisisRule", 25, 2, v51, v52 & 1, v49);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC3436D4() & 1) == 0)
  {
    sub_1DC517B9C();
    v56 = sub_1DC2BE518();
    sub_1DC516F0C();

    v57 = sub_1DC5157EC();
    v58 = v109;
    goto LABEL_7;
  }

  v53 = v109;
  v54 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v119 + *(v54 + 32), v30, &qword_1ECC7C158, &unk_1DC5234A0);
  v55 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v30, 1, v55) == 1)
  {
    sub_1DC28EB30(v30, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v35);
LABEL_6:
    sub_1DC28EB30(v34, &qword_1ECC7C160, qword_1DC5233B0);
    v57 = sub_1DC5157EC();
    v58 = v53;
LABEL_7:
    __swift_storeEnumTagSinglePayload(v58, 1, 1, v57);
LABEL_8:
    v59 = sub_1DC2BE518();
    sub_1DC2B8848();

    return v44[1](v49, v41);
  }

  sub_1DC28F358(v30, v34, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v30, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
  {
    goto LABEL_6;
  }

  v97 = v41;
  v61 = v100;
  result = sub_1DC2E53A4(v34, v100);
  v62 = 0;
  v63 = *v61;
  v105 = *(*v61 + 16);
  v102 = v110 + 16;
  v64 = v108 + 16;
  v119 = (v114 + 1);
  v114 = (v118 + 8);
  v103 = (v110 + 8);
  v65 = v117;
  v66 = v107;
  v99 = v44;
  v98 = v49;
  v104 = v50;
  v101 = v63;
  v113 = v108 + 8;
  while (1)
  {
    if (v62 == v105)
    {
      OUTLINED_FUNCTION_3_16();
      v95 = sub_1DC5157EC();
      __swift_storeEnumTagSinglePayload(v109, 1, 1, v95);
      v41 = v97;
      goto LABEL_8;
    }

    if (v62 >= *(v63 + 16))
    {
      break;
    }

    v67 = v63 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
    v68 = *(v110 + 72);
    v111 = v62;
    (*(v110 + 16))(v112, v67 + v68 * v62, v66);
    v69 = sub_1DC5111AC();
    v70 = *(v69 + 16);
    if (v70)
    {
      v71 = (*(v108 + 80) + 32) & ~*(v108 + 80);
      v106 = v69;
      v72 = v69 + v71;
      v49 = *(v108 + 72);
      v73 = *(v108 + 16);
      v118 = v73;
      do
      {
        (v73)(v20, v72, v65);
        if (sub_1DC5114CC())
        {
          v74 = v120;
          sub_1DC51154C();
          v75 = sub_1DC51177C();
          v44 = *v119;
          (*v119)(v74, v121);
          if ((v75 & 1) == 0)
          {
            goto LABEL_21;
          }

          type metadata accessor for NLRouterBypassUtils();
          v76 = v120;
          sub_1DC51154C();
          v77 = v20;
          v78 = v49;
          v79 = v64;
          v80 = v115;
          sub_1DC51178C();
          v81 = v76;
          v65 = v117;
          (v44)(v81, v121);
          v82 = sub_1DC307E5C();
          v83 = v80;
          v64 = v79;
          v49 = v78;
          v20 = v77;
          (*v114)(v83, v116);
          if (v82)
          {

            sub_1DC51478C();

            v84 = OUTLINED_FUNCTION_4_17();
            v85(v84);
            v73 = v118;
            if (v123)
            {
              sub_1DC514D4C();
              if (swift_dynamicCast())
              {

                (*v103)(v112, v107);
                OUTLINED_FUNCTION_3_16();
                v91 = *MEMORY[0x1E69D02D8];
                v92 = sub_1DC5157EC();
                OUTLINED_FUNCTION_35(v92);
                v94 = v109;
                (*(v93 + 104))(v109, v91, v92);
                __swift_storeEnumTagSinglePayload(v94, 0, 1, v92);
                v41 = v97;
                OUTLINED_FUNCTION_5_22();
                goto LABEL_8;
              }
            }

            else
            {
              sub_1DC28EB30(v122, &qword_1ECC7D3F0, &qword_1DC5238B0);
            }
          }

          else
          {
LABEL_21:
            v88 = OUTLINED_FUNCTION_4_17();
            v89(v88);
            v73 = v118;
          }
        }

        else
        {
          v86 = OUTLINED_FUNCTION_4_17();
          v87(v86);
        }

        v72 += v49;
        --v70;
      }

      while (v70);

      OUTLINED_FUNCTION_5_22();
      v66 = v107;
    }

    else
    {
    }

    v90 = v111 + 1;
    result = (*v103)(v112, v66);
    v62 = v90;
    v63 = v101;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC35E6B4()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F858);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8F858);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000028;
  v2[3] = 0x80000001DC540200;
  v2[4] = 0xD000000000000015;
  v2[5] = 0x80000001DC525200;
  *v1 = v2;
  v3 = *MEMORY[0x1E69DB098];
  OUTLINED_FUNCTION_7_1(v0);
  v5 = *(v4 + 104);

  return v5(v1);
}

uint64_t sub_1DC35E78C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - v7;
  v9 = sub_1DC5172FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC86E40 != -1)
  {
    OUTLINED_FUNCTION_0_25();
  }

  __swift_project_value_buffer(v9, qword_1ECC8F858);
  v14 = sub_1DC5172DC();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    v17 = sub_1DC51721C();
    OUTLINED_FUNCTION_0_2(v17);
    (*(v18 + 8))(a1);
    return 0;
  }

  v15 = sub_1DC5171EC();
  sub_1DC30F668(0x656C746974, 0xE500000000000000, v15, v8);

  v16 = sub_1DC5172AC();
  if (__swift_getEnumTagSinglePayload(v8, 1, v16) == 1)
  {
    sub_1DC30F72C(v8);
LABEL_8:

    goto LABEL_9;
  }

  sub_1DC382AC0();
  v21 = v20;
  OUTLINED_FUNCTION_7_1(v16);
  (*(v22 + 8))(v8, v16);
  if (!v21)
  {
    goto LABEL_8;
  }

LABEL_9:
  v23 = sub_1DC5171EC();
  sub_1DC30F668(0x746E656D75636F64, 0xEE00656372756F53, v23, v6);

  if (__swift_getEnumTagSinglePayload(v6, 1, v16) == 1)
  {
    sub_1DC30F72C(v6);
LABEL_13:
    v30 = sub_1DC51721C();
    OUTLINED_FUNCTION_0_2(v30);
    (*(v31 + 8))(a1);

    return 0;
  }

  sub_1DC382AC0();
  v19 = v24;
  v26 = v25;
  OUTLINED_FUNCTION_7_1(v16);
  (*(v27 + 8))(v6, v16);
  if (!v26)
  {
    goto LABEL_13;
  }

  v28 = sub_1DC51721C();
  OUTLINED_FUNCTION_0_2(v28);
  (*(v29 + 8))(a1);
  return v19;
}

uint64_t sub_1DC35EB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DC517F4C();

  MEMORY[0x1E1296160](a3, a4);
  MEMORY[0x1E1296160](0xD000000000000013, 0x80000001DC541580);
  MEMORY[0x1E1296160](a1, a2);
  return 0x203A656C746954;
}

uint64_t sub_1DC35EBE4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC86E40 != -1)
  {
    OUTLINED_FUNCTION_0_25();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F858);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC35EC78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DC35E78C(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

void sub_1DC35ECC0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v229 = a2;
  v232 = sub_1DC51471C();
  v3 = OUTLINED_FUNCTION_0(v232);
  v221 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v231 = v7;
  v235 = sub_1DC51133C();
  v8 = OUTLINED_FUNCTION_0(v235);
  v239 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v12);
  v209 = sub_1DC51166C();
  v13 = OUTLINED_FUNCTION_0(v209);
  v234 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v18);
  v19 = sub_1DC5116FC();
  v20 = OUTLINED_FUNCTION_0(v19);
  v225 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  v217 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C228, &qword_1DC523028);
  OUTLINED_FUNCTION_10(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_14(v176 - v29);
  v224 = sub_1DC510FDC();
  v30 = OUTLINED_FUNCTION_0(v224);
  v233 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v35);
  v240 = sub_1DC51179C();
  v36 = OUTLINED_FUNCTION_0(v240);
  v220 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v41);
  v241 = sub_1DC51164C();
  v42 = OUTLINED_FUNCTION_0(v241);
  v237 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_1();
  v238 = v46;
  v203 = sub_1DC51122C();
  v47 = OUTLINED_FUNCTION_0(v203);
  v196 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_1();
  v202 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v55);
  v236 = (v176 - v56);
  v230 = sub_1DC5157EC();
  v57 = OUTLINED_FUNCTION_0(v230);
  v205 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_62();
  v212 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v64);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v67);
  v69 = v176 - v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v73);
  v75 = v176 - v74;
  v76 = type metadata accessor for NLRouterNLParseResponse(0);
  v77 = OUTLINED_FUNCTION_35(v76);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v80);
  v81 = sub_1DC516F5C();
  v82 = OUTLINED_FUNCTION_0(v81);
  v227 = v83;
  v228 = v82;
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v87 = v176 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v89 = sub_1DC2BE518();
  v90 = OUTLINED_FUNCTION_130();
  v226 = v87;
  sub_1DC2A2ED0("HeuristicRules.AppLaunchRule", 28, 2, v89, v90 & 1, v87);

  v91 = *(type metadata accessor for NLRouterServiceRequest(0) + 32);
  v211 = a1;
  sub_1DC28F358(a1 + v91, v69, &qword_1ECC7C158, &unk_1DC5234A0);
  v92 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v69, 1, v92) == 1)
  {
    sub_1DC28EB30(v69, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v75, 1, 1, v76);
LABEL_4:
    sub_1DC28EB30(v75, &qword_1ECC7C160, qword_1DC5233B0);
    __swift_storeEnumTagSinglePayload(v229, 1, 1, v230);
    v94 = v227;
    v93 = v228;
    v95 = v226;
LABEL_19:
    v112 = sub_1DC2BE518();
    sub_1DC2B8848();

    (*(v94 + 8))(v95, v93);
    return;
  }

  sub_1DC28F358(v69, v75, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v69, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v75, 1, v76) == 1)
  {
    goto LABEL_4;
  }

  sub_1DC2E53A4(v75, v213);
  v96 = type metadata accessor for HeuristicRoutingRequest(0);
  v97 = v205;
  v98 = *(v205 + 16);
  v185 = *(v96 + 20);
  v99 = v230;
  v98(v212, v211 + v185, v230);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v100 = sub_1DC343364();
  v102 = v101;
  if (v100 == sub_1DC312FB4(0) && v102 == v103)
  {

    goto LABEL_15;
  }

  v105 = sub_1DC51825C();

  if (v105)
  {
LABEL_15:
    v108 = v212;
    v109 = sub_1DC5157DC();
    sub_1DC2E5408(v213, type metadata accessor for NLRouterNLParseResponse);
    if (v109)
    {
      (*(v97 + 8))(v108, v99);
      v110 = 1;
      v94 = v227;
      v93 = v228;
      v95 = v226;
      v111 = v229;
    }

    else
    {
      v111 = v229;
      (*(v97 + 32))(v229, v108, v99);
      v110 = 0;
      v94 = v227;
      v93 = v228;
      v95 = v226;
    }

    __swift_storeEnumTagSinglePayload(v111, v110, 1, v99);
    goto LABEL_19;
  }

  sub_1DC343364();
  v106 = sub_1DC312F68();
  if (v106 == 4)
  {
    v107 = v236;
    __swift_storeEnumTagSinglePayload(v236, 1, 1, v99);
LABEL_14:
    sub_1DC28EB30(v107, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_15;
  }

  v107 = v236;
  sub_1DC312E7C(v106, v236);
  if (__swift_getEnumTagSinglePayload(v107, 1, v99) == 1)
  {
    goto LABEL_14;
  }

  v113 = *(v97 + 32);
  v176[1] = v97 + 32;
  v176[0] = v113;
  v113(v194, v107, v99);
  v180 = *v213;
  v114 = v217;
  v115 = v216;
  v116 = v222;
  v117 = v238;
  v177 = *(v180 + 16);
  if (!v177)
  {
LABEL_64:
    v97 = v205;
    v99 = v230;
    (*(v205 + 8))(v194, v230);
    goto LABEL_15;
  }

  v118 = 0;
  v179 = v180 + ((*(v196 + 80) + 32) & ~*(v196 + 80));
  v178 = v196 + 16;
  v215 = v237 + 16;
  v236 = (v220 + 8);
  v190 = v233 + 1;
  v214 = v237 + 8;
  v189 = v225 + 16;
  v188 = v225 + 8;
  v184 = *MEMORY[0x1E69D0A70];
  v183 = v234 + 104;
  v182 = (v234 + 8);
  v234 = v239 + 16;
  v233 = (v239 + 8);
  v199 = *MEMORY[0x1E69D1B38];
  v198 = v221 + 104;
  v197 = v221 + 8;
  v176[3] = v225 + 32;
  v176[4] = v196 + 8;
  v186 = v19;
  v176[2] = v88;
  while (1)
  {
    if (v118 >= *(v180 + 16))
    {
      goto LABEL_69;
    }

    v119 = *(v196 + 72);
    v181 = v118;
    (*(v196 + 16))(v202, v179 + v119 * v118, v203);
    v120 = sub_1DC5111AC();
    v220 = *(v120 + 16);
    if (v220)
    {
      break;
    }

LABEL_63:

    v167 = v181 + 1;
    OUTLINED_FUNCTION_37(&v208);
    v168 = OUTLINED_FUNCTION_11_13();
    v169(v168);
    v118 = v167;
    if (v167 == v177)
    {
      goto LABEL_64;
    }
  }

  v121 = 0;
  OUTLINED_FUNCTION_8_10(v237);
  v219 = v120 + v122;
  v218 = v120;
  while (1)
  {
    if (v121 >= *(v120 + 16))
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    (*(v237 + 16))(v117, v219 + *(v237 + 72) * v121, v241);
    sub_1DC51154C();
    v123 = sub_1DC51177C();
    v124 = *v236;
    (*v236)(v116, v240);
    if ((v123 & 1) == 0)
    {
      goto LABEL_51;
    }

    type metadata accessor for NLRouterBypassUtils();
    sub_1DC51154C();
    v125 = v223;
    sub_1DC51178C();
    v124(v116, v240);
    v126 = sub_1DC307E5C();
    v127 = *v190;
    v128 = v125;
    v117 = v238;
    (*v190)(v128, v224);
    if (!v126)
    {
LABEL_51:
      v156 = OUTLINED_FUNCTION_2_15();
      v157(v156);
LABEL_52:
      v120 = v218;
      goto LABEL_53;
    }

    sub_1DC51478C();

    if (!v244)
    {
      v158 = OUTLINED_FUNCTION_2_15();
      v159(v158);

      sub_1DC28EB30(&v243, &qword_1ECC7D3F0, &qword_1DC5238B0);
      goto LABEL_52;
    }

    sub_1DC51474C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v160 = OUTLINED_FUNCTION_2_15();
      v161(v160);

      goto LABEL_52;
    }

    v195 = v126;

    v116 = v200;
    sub_1DC51154C();
    v129 = v201;
    sub_1DC51178C();
    v124(v116, v240);
    v130 = sub_1DC510FCC();
    v127(v129, v224);
    v131 = v130;
    v191 = *(v130 + 16);
    if (v191)
    {
      break;
    }

    OUTLINED_FUNCTION_9_14();
    v117 = v238;
LABEL_58:
    v162 = OUTLINED_FUNCTION_2_15();
    v163(v162);
    v164 = 1;
LABEL_61:
    v120 = v218;
    __swift_storeEnumTagSinglePayload(v115, v164, 1, v19);
    if (__swift_getEnumTagSinglePayload(v115, 1, v19) != 1)
    {
      OUTLINED_FUNCTION_37(&v208);
      v170 = OUTLINED_FUNCTION_11_13();
      v171(v170);

      sub_1DC28EB30(v115, &qword_1ECC7C228, &qword_1DC523028);
      v172 = v193;
      v173 = v194;
      v174 = v212;
      sub_1DC32DE40();
      v97 = v205;
      v175 = *(v205 + 8);
      v99 = v230;
      v175(v173, v230);
      v175(v174, v99);
      (v176[0])(v174, v172, v99);
      goto LABEL_15;
    }

    sub_1DC28EB30(v115, &qword_1ECC7C228, &qword_1DC523028);
LABEL_53:
    if (++v121 == v220)
    {
      goto LABEL_63;
    }
  }

  v132 = 0;
  OUTLINED_FUNCTION_8_10(v225);
  v192 = v131 + v133;
  OUTLINED_FUNCTION_9_14();
  v187 = v131;
  v204 = v121;
  while (v132 < *(v131 + 16))
  {
    v134 = *(v225 + 72);
    v221 = v132;
    (*(v225 + 16))(v114, v192 + v134 * v132, v19);
    if (sub_1DC5116CC())
    {
      sub_1DC5116BC();
      OUTLINED_FUNCTION_37(&v215);
      v135 = v208;
      v116 = v209;
      v136(v208, v184, v209);
      sub_1DC360110();
      sub_1DC5179EC();
      v137 = v210;
      sub_1DC5179EC();
      v138 = *v182;
      (*v182)(v135, v116);
      v19 = v186;
      OUTLINED_FUNCTION_9_14();
      v115 = v216;
      v114 = v217;
      v138();
      v131 = v187;
      if (v243 == v242)
      {
        v139 = *(sub_1DC51167C() + 16);
        if (v139)
        {
          v140 = 0;
          OUTLINED_FUNCTION_8_10(v239);
          v143 = v141 + v142;
          v144 = v235;
          v145 = v141;
          v206 = v141;
          while (v140 < *(v145 + 16))
          {
            (*(v239 + 16))(v137, v143 + *(v239 + 72) * v140, v144);
            if (sub_1DC51132C())
            {
              v116 = sub_1DC51131C();
              v145 = v146;
              OUTLINED_FUNCTION_37(&v230);
              v147 = v137;
              v149 = v231;
              v148 = v232;
              v150(v231, v199, v232);
              v121 = sub_1DC51470C();
              v152 = v151;
              OUTLINED_FUNCTION_37(&v229);
              v153(v149, v148);
              if (v116 == v121 && v145 == v152)
              {

                (*v233)(v147, v235);
                OUTLINED_FUNCTION_12_13();
LABEL_60:

                OUTLINED_FUNCTION_37(&v244);
                v117 = v238;
                v165(v238, v241);
                OUTLINED_FUNCTION_37(v207);
                v115 = v216;
                v114 = v217;
                v19 = v186;
                v166(v216, v217, v186);
                OUTLINED_FUNCTION_9_14();
                goto LABEL_61;
              }

              v116 = sub_1DC51825C();

              v144 = v235;
              (*v233)(v147, v235);
              v137 = v147;
              OUTLINED_FUNCTION_12_13();
              if (v116)
              {
                goto LABEL_60;
              }
            }

            else
            {
              (*v233)(v137, v144);
            }

            if (v139 == ++v140)
            {

              v19 = v186;
              v114 = v217;
              v115 = v216;
              OUTLINED_FUNCTION_9_14();
              v131 = v187;
              goto LABEL_49;
            }
          }

          __break(1u);
          goto LABEL_67;
        }
      }
    }

LABEL_49:
    v132 = v221 + 1;
    OUTLINED_FUNCTION_37(&v220);
    v155(v114, v19);
    v117 = v238;
    if (v132 == v191)
    {

      goto LABEL_58;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

unint64_t sub_1DC360110()
{
  result = qword_1ECC7C230;
  if (!qword_1ECC7C230)
  {
    sub_1DC51166C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7C230);
  }

  return result;
}

uint64_t sub_1DC3601A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_8();
  v81 = v5 - v6;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v74 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v74 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v74 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v74 - v17;
  v19 = sub_1DC5172FC();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v27 = v26 - v25;
  sub_1DC5171CC();
  if (qword_1ECC86E48 != -1)
  {
    OUTLINED_FUNCTION_1_17();
  }

  __swift_project_value_buffer(v19, qword_1ECC8F870);
  v28 = sub_1DC5172DC();
  (*(v22 + 8))(v27, v19);
  if ((v28 & 1) == 0)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v81 = 0;
    v40 = 0;
    goto LABEL_36;
  }

  v29 = sub_1DC5171EC();
  sub_1DC30F668(0x656C746974, 0xE500000000000000, v29, v18);

  v30 = sub_1DC5172AC();
  OUTLINED_FUNCTION_2_0(v18);
  if (v31)
  {
    sub_1DC30F72C(v18);
  }

  else
  {
    sub_1DC382AC0();
    v83 = v41;
    v43 = v42;
    OUTLINED_FUNCTION_2_16();
    (*(v44 + 8))(v18, v30);
    if (v43)
    {
      v80 = v43;
      goto LABEL_11;
    }
  }

  v83 = 0;
  v80 = 0xE000000000000000;
LABEL_11:
  v45 = sub_1DC5171EC();
  sub_1DC30F668(0x6E6F697461657263, 0xEC00000065746144, v45, v16);

  OUTLINED_FUNCTION_2_0(v16);
  if (v31)
  {
    sub_1DC30F72C(v16);
  }

  else
  {
    sub_1DC382AC0();
    v47 = v46;
    v49 = v48;
    OUTLINED_FUNCTION_2_16();
    (*(v50 + 8))(v16, v30);
    if (v49)
    {
      v79 = v47;
      goto LABEL_17;
    }
  }

  v79 = 0;
  v49 = 0xE000000000000000;
LABEL_17:
  v78 = v49;
  v51 = sub_1DC5171EC();
  sub_1DC30F668(0xD000000000000011, 0x80000001DC5415C0, v51, v13);

  OUTLINED_FUNCTION_2_0(v13);
  if (v31)
  {
    sub_1DC30F72C(v13);
  }

  else
  {
    sub_1DC382AC0();
    v53 = v52;
    v55 = v54;
    OUTLINED_FUNCTION_2_16();
    (*(v56 + 8))(v13, v30);
    if (v55)
    {
      v77 = v53;
      goto LABEL_23;
    }
  }

  v77 = 0;
  v55 = 0xE000000000000000;
LABEL_23:
  v57 = sub_1DC5171EC();
  sub_1DC30F668(0x656C706D6F437369, 0xEB00000000646574, v57, v10);

  OUTLINED_FUNCTION_2_0(v10);
  v76 = v55;
  if (v31)
  {
    sub_1DC30F72C(v10);
    v58 = v83;
LABEL_28:
    v83 = v58;

    v74 = 0xE000000000000000;
    v75 = 0;
    goto LABEL_29;
  }

  sub_1DC382AC0();
  v60 = v59;
  v62 = v61;
  OUTLINED_FUNCTION_2_16();
  (*(v63 + 8))(v10, v30);
  v58 = v83;
  if (!v62)
  {
    goto LABEL_28;
  }

  v74 = v62;
  v75 = v60;
LABEL_29:
  v64 = sub_1DC5171EC();
  v65 = v81;
  sub_1DC30F668(1953720684, 0xE400000000000000, v64, v81);

  v66 = sub_1DC36071C(v65);
  if (v67)
  {
    v68 = v66;
  }

  else
  {
    v68 = 0;
  }

  v81 = v68;
  if (v67)
  {
    v40 = v67;
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  v34 = v79;
  v33 = v80;
  v36 = v77;
  v35 = v78;
  v38 = v75;
  v37 = v76;
  v39 = v74;
  v32 = v83;
LABEL_36:
  v69 = sub_1DC51721C();
  OUTLINED_FUNCTION_7_1(v69);
  result = (*(v70 + 8))(a1);
  v73 = v81;
  v72 = v82;
  *v82 = v32;
  v72[1] = v33;
  v72[2] = v34;
  v72[3] = v35;
  v72[4] = v36;
  v72[5] = v37;
  v72[6] = v38;
  v72[7] = v39;
  v72[8] = v73;
  v72[9] = v40;
  return result;
}

uint64_t sub_1DC36071C(uint64_t a1)
{
  v2 = sub_1DC5172FC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v65 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = sub_1DC51721C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v66 = v12;
  v67 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  OUTLINED_FUNCTION_8();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64 - v24;
  v26 = sub_1DC5172AC();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_8();
  v34 = (v32 - v33);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v64 - v36;
  sub_1DC35D0B4(a1, v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    sub_1DC30F72C(a1);
    sub_1DC30F72C(v25);
  }

  else
  {
    (*(v29 + 32))(v37, v25, v26);
    (*(v29 + 16))(v34, v37, v26);
    if ((*(v29 + 88))(v34, v26) == *MEMORY[0x1E69DAE58])
    {
      (*(v29 + 96))(v34, v26);
      v38 = *v34;
      v39 = swift_projectBox();
      (*(v66 + 16))(v17, v39, v67);
      sub_1DC5171CC();
      if (qword_1ECC86E50 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v2, qword_1ECC8F888);
      v40 = sub_1DC5172DC();
      (*(v65 + 8))(v9, v2);
      if (v40)
      {
        v41 = sub_1DC5171EC();
        sub_1DC30F668(1701667182, 0xE400000000000000, v41, v22);

        if (__swift_getEnumTagSinglePayload(v22, 1, v26) == 1)
        {
          sub_1DC30F72C(v22);
        }

        else
        {
          sub_1DC382AC0();
          v49 = v51;
          v53 = v52;
          v54 = v22;
          v55 = *(v29 + 8);
          v55(v54, v26);
          if (v53)
          {
            sub_1DC30F72C(a1);
            v56 = OUTLINED_FUNCTION_4_1();
            v57(v56);
            v58 = OUTLINED_FUNCTION_35_0();
            (v55)(v58);

            return v49;
          }
        }

        sub_1DC30F72C(a1);
        v59 = OUTLINED_FUNCTION_4_1();
        v60(v59);
        v61 = *(v29 + 8);
        v62 = OUTLINED_FUNCTION_35_0();
        v63(v62);

        return 0;
      }

      sub_1DC30F72C(a1);
      v44 = OUTLINED_FUNCTION_4_1();
      v45(v44);
      v46 = *(v29 + 8);
      v47 = OUTLINED_FUNCTION_35_0();
      v48(v47);
    }

    else
    {
      sub_1DC30F72C(a1);
      v42 = *(v29 + 8);
      v43 = OUTLINED_FUNCTION_35_0();
      v42(v43);
      (v42)(v34, v26);
    }
  }

  return 0;
}

uint64_t sub_1DC360BF4()
{
  v1 = v0;
  sub_1DC517F4C();
  MEMORY[0x1E1296160](0x203A656C746954, 0xE700000000000000);
  MEMORY[0x1E1296160](*v1, v1[1]);
  MEMORY[0x1E1296160](0xD000000000000011, 0x80000001DC5415E0);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  MEMORY[0x1E1296160](0xD000000000000016, 0x80000001DC541600);
  MEMORY[0x1E1296160](v1[4], v1[5]);
  MEMORY[0x1E1296160](0xD000000000000010, 0x80000001DC541620);
  MEMORY[0x1E1296160](v1[6], v1[7]);
  MEMORY[0x1E1296160](0x2E7473694C207C20, 0xEE00203A656D614ELL);
  MEMORY[0x1E1296160](v1[8], v1[9]);
  return 0;
}

uint64_t sub_1DC360D48(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  v9 = swift_allocObject();
  v9[2] = 0xD000000000000013;
  v9[3] = 0x80000001DC541640;
  v9[4] = a3;
  v9[5] = a4;
  *v8 = v9;
  v10 = *MEMORY[0x1E69DB098];
  OUTLINED_FUNCTION_7_1(v7);
  v12 = *(v11 + 104);

  return v12(v8);
}

uint64_t sub_1DC360E18@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC86E48 != -1)
  {
    OUTLINED_FUNCTION_1_17();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F870);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC360EF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_9_13(result, a2);
    }
  }

  return result;
}

uint64_t sub_1DC360FAC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  OUTLINED_FUNCTION_27_5();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1DC361434;
  *(v10 + 24) = v9;
  v15[4] = sub_1DC2929F4;
  v15[5] = v10;
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_0_26();
  v15[2] = v11;
  v15[3] = &block_descriptor_5;
  v12 = _Block_copy(v15);

  v13 = a1;

  dispatch_sync(v8, v12);
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC3610F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = OUTLINED_FUNCTION_9_15();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v47 - v16;
  OUTLINED_FUNCTION_12_0();
  v19 = (*(v18 + 96))();
  v20 = OUTLINED_FUNCTION_73();
  v22 = sub_1DC361440(v20, v21, v19);

  if (v22)
  {

    sub_1DC28D414();
    OUTLINED_FUNCTION_4_2();
    v23(v17);

    v24 = sub_1DC516F6C();
    v25 = sub_1DC517BAC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_63();
      v27 = OUTLINED_FUNCTION_82();
      v49[0] = v27;
      *v26 = 136315138;
      v28 = OUTLINED_FUNCTION_73();
      *(v26 + 4) = sub_1DC291244(v28, v29, v30);
      _os_log_impl(&dword_1DC287000, v24, v25, "NLURequestTimeoutManager: sendNluRequestTimeoutTimer already exists for nluRequestId: %s. Not registering and not starting.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      OUTLINED_FUNCTION_102();
      OUTLINED_FUNCTION_66();
    }

    return (*(v10 + 8))(v17, v7);
  }

  else
  {
    [a4 start];
    OUTLINED_FUNCTION_12_0();
    v33 = *(v32 + 112);
    v34 = a4;
    v35 = v33(v49);
    v37 = v36;
    v38 = *v36;
    swift_isUniquelyReferenced_nonNull_native();
    v48 = *v37;
    sub_1DC3619D0(v34, v5, v4);
    *v37 = v48;
    v35(v49, 0);
    sub_1DC28D414();
    OUTLINED_FUNCTION_4_2();
    v39(v15);

    v40 = sub_1DC516F6C();
    v41 = sub_1DC517B9C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_63();
      v43 = OUTLINED_FUNCTION_82();
      v49[0] = v43;
      *v42 = 136315138;
      v44 = OUTLINED_FUNCTION_73();
      *(v42 + 4) = sub_1DC291244(v44, v45, v46);
      _os_log_impl(&dword_1DC287000, v40, v41, "NLURequestTimeoutManager: registered and started sendNluRequestTimeoutTimer for nlRequestId: %s.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      OUTLINED_FUNCTION_102();
      OUTLINED_FUNCTION_66();
    }

    return (*(v10 + 8))(v15, v7);
  }
}

void *sub_1DC361440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DC2AEB04(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_1DC361488(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  OUTLINED_FUNCTION_27_5();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1DC3618D8;
  *(v8 + 24) = v7;
  v12[4] = sub_1DC292A1C;
  v12[5] = v8;
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_0_26();
  v12[2] = v9;
  v12[3] = &block_descriptor_13_0;
  v10 = _Block_copy(v12);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC3615CC()
{
  v0 = OUTLINED_FUNCTION_9_15();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v1);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v37 - v9;
  OUTLINED_FUNCTION_12_0();
  v12 = (*(v11 + 96))();
  v13 = OUTLINED_FUNCTION_73();
  v15 = sub_1DC361440(v13, v14, v12);

  if (v15)
  {
    [v15 cancelIfNotAlreadyCanceled];
    OUTLINED_FUNCTION_12_0();
    v17 = (*(v16 + 112))(v37);
    v18 = OUTLINED_FUNCTION_73();

    v17(v37, 0);
    sub_1DC28D414();
    OUTLINED_FUNCTION_4_2();
    v20(v10);

    v21 = sub_1DC516F6C();
    v22 = sub_1DC517B9C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_63();
      v24 = OUTLINED_FUNCTION_82();
      v37[0] = v24;
      *v23 = 136315138;
      v25 = OUTLINED_FUNCTION_73();
      *(v23 + 4) = sub_1DC291244(v25, v26, v27);
      _os_log_impl(&dword_1DC287000, v21, v22, "NLURequestTimeoutManager: canceled and removed sendNluRequestTimeoutTimer for nluRequestId: %s.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_102();
    }

    return (*(v3 + 8))(v10, v0);
  }

  else
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_4_2();
    v29(v8);

    v30 = sub_1DC516F6C();
    v31 = sub_1DC517BAC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_63();
      v33 = OUTLINED_FUNCTION_82();
      v37[0] = v33;
      *v32 = 136315138;
      v34 = OUTLINED_FUNCTION_73();
      *(v32 + 4) = sub_1DC291244(v34, v35, v36);
      _os_log_impl(&dword_1DC287000, v30, v31, "NLURequestTimeoutManager: no sendNluRequestTimeoutTimer exists to cancel and remove for nluRequestId: %s.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      OUTLINED_FUNCTION_102();
      OUTLINED_FUNCTION_66();
    }

    return (*(v3 + 8))(v8, v0);
  }
}

uint64_t sub_1DC3618D8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1DC3615CC();
}

uint64_t sub_1DC3618E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1DC2AEB04(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  v9 = *(*v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEA0, &qword_1DC525340);
  sub_1DC517FFC();
  v10 = *(*(v13 + 48) + 16 * v7 + 8);

  v11 = *(*(v13 + 56) + 8 * v7);
  sub_1DC298C74(0, &qword_1ECC7B9A0, 0x1E698D278);
  sub_1DC51800C();
  *v3 = v13;
  return v11;
}

void sub_1DC3619D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DC2AEB04(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEA0, &qword_1DC525340);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1DC2AEB04(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1DC51829C();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_1DC361B0C(v11, a2, a3, a1, v16);
  }
}

unint64_t sub_1DC361B0C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void sub_1DC361B5C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1DC515F3C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v104 = v5;
  v105 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v103 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF98, &qword_1DC5224C0);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  v106 = v14;
  OUTLINED_FUNCTION_12();
  v15 = sub_1DC5161CC();
  v16 = OUTLINED_FUNCTION_0(v15);
  v108 = v17;
  v109 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v107 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB20, &unk_1DC529C40);
  OUTLINED_FUNCTION_10(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25();
  v115 = v26;
  OUTLINED_FUNCTION_12();
  v27 = sub_1DC51588C();
  v28 = OUTLINED_FUNCTION_0(v27);
  v113 = v29;
  v114 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15();
  v116 = v32;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_62();
  v111 = v34;
  OUTLINED_FUNCTION_12();
  v35 = sub_1DC516F7C();
  v36 = OUTLINED_FUNCTION_0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_15();
  v110 = v41;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v97 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v97 - v49;
  v51 = sub_1DC5157EC();
  v52 = OUTLINED_FUNCTION_0(v51);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v57 = OUTLINED_FUNCTION_220_0();
  v59 = v58;
  sub_1DC363920(v57, v60, v61, v62, v63, v64, v65, v66, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
  OUTLINED_FUNCTION_39(v50, 1, v59);
  if (!v89)
  {
    v90 = *(v54 + 32);
    v90(v0, v50, v59);
    v91 = OUTLINED_FUNCTION_77_1();
    (v90)(v91);
    v92 = v2;
    v93 = 0;
LABEL_16:
    v95 = 1;
    v96 = v59;
    goto LABEL_17;
  }

  v102 = v54;
  v112 = v2;
  sub_1DC2AAF50(v50, &qword_1ECC7CA40, &unk_1DC5233A0);
  objc_allocWithZone(MEMORY[0x1E695E000]);
  v67 = sub_1DC346A1C(0xD000000000000013, 0x80000001DC540DC0);
  if (!v67)
  {
LABEL_15:
    v92 = v112;
    v93 = 1;
    goto LABEL_16;
  }

  v68 = v67;
  v69 = sub_1DC5176FC();
  v70 = OUTLINED_FUNCTION_208();
  v72 = [v70 v71];

  if (!v72)
  {

    goto LABEL_15;
  }

  v101 = v59;
  sub_1DC51772C();

  v73 = sub_1DC29120C();
  v74 = *(v38 + 16);
  v99 = v73;
  v100 = v38 + 16;
  v98 = v74;
  v74(v44);

  v75 = sub_1DC516F6C();
  sub_1DC517B9C();

  if (OUTLINED_FUNCTION_172())
  {
    OUTLINED_FUNCTION_63();
    v76 = OUTLINED_FUNCTION_111();
    v117 = v76;
    MEMORY[0xD000000000000018] = 136446210;
    v77 = OUTLINED_FUNCTION_75();
    MEMORY[0xD00000000000001C] = sub_1DC291244(v77, v78, v79);
    OUTLINED_FUNCTION_16_0();
    _os_log_impl(v80, v81, v82, v83, v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_31();
  }

  v85 = *(v38 + 8);
  v86 = OUTLINED_FUNCTION_113_0();
  v85(v86);
  v87 = v102;
  OUTLINED_FUNCTION_75();
  v89 = sub_1DC51778C() == 0x7869726973 && v88 == 0xE500000000000000;
  if (v89)
  {
  }

  else
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC51825C();
    OUTLINED_FUNCTION_168();
  }

  v94 = v101;
  (*(v87 + 104))(v112, *MEMORY[0x1E69D02D8], v101);
  v92 = OUTLINED_FUNCTION_37_1();
  v96 = v94;
LABEL_17:
  __swift_storeEnumTagSinglePayload(v92, v93, v95, v96);
  OUTLINED_FUNCTION_34();
}

void sub_1DC362A18()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v132 = v4;
  v5 = sub_1DC516F7C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v130 = v7;
  v131 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v122 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF18, &qword_1DC522340);
  OUTLINED_FUNCTION_10(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25();
  v126 = v19;
  OUTLINED_FUNCTION_12();
  v20 = sub_1DC5158DC();
  v21 = OUTLINED_FUNCTION_0(v20);
  v124 = v22;
  v125 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v123 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF10, &unk_1DC522A50);
  OUTLINED_FUNCTION_10(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_47_7();
  v31 = sub_1DC51591C();
  v32 = OUTLINED_FUNCTION_0(v31);
  v127 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF00, &unk_1DC529C30);
  OUTLINED_FUNCTION_10(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v114 - v40;
  v42 = sub_1DC51587C();
  v43 = OUTLINED_FUNCTION_0(v42);
  v128 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_1();
  v49 = v48 - v47;
  v50 = v3[1];
  v129 = *v3;
  v133[0] = v129;
  v133[1] = v50;
  sub_1DC2A32B0();
  v51 = sub_1DC517E6C();
  if (v51[2] == 2)
  {
    v116 = v31;
    v117 = v50;
    v114 = v1;
    v115 = v0;
    v52 = v51[4];
    v1 = v51[5];
    v54 = v51[6];
    v53 = v51[7];
    v118 = sub_1DC363388(v51);
    v119 = v55;
    v120 = v56;
    v58 = v57;

    v121 = v58;
    if (v58)
    {
      OUTLINED_FUNCTION_115();
      v60 = sub_1DC517D9C() == 0x7869726973 && v59 == 0xE500000000000000;
      if (v60)
      {

LABEL_18:

        MEMORY[0x1EEE9AC00](v76);
        OUTLINED_FUNCTION_46_8();
        v77 = v121;
        *(v78 - 16) = v120;
        *(v78 - 8) = v77;
        sub_1DC51583C();

        OUTLINED_FUNCTION_39(v41, 1, v42);
        if (!v60)
        {
          v82 = *(v128 + 32);
          v82(v49, v41, v42);
          v83 = v132;
          v82(v132, v49, v42);
          v84 = *MEMORY[0x1E69D0330];
          v85 = sub_1DC51588C();
          OUTLINED_FUNCTION_35(v85);
          (*(v86 + 104))(v83, v84, v85);
LABEL_33:
          OUTLINED_FUNCTION_61();
          v75 = v85;
          goto LABEL_16;
        }

        v79 = &qword_1ECC7BF00;
        v80 = &unk_1DC529C30;
        v81 = v41;
        goto LABEL_21;
      }

      v61 = sub_1DC51825C();

      if (v61)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_115();
      if (sub_1DC517D9C() == 0x72656E6E616C70 && v87 == 0xE700000000000000)
      {

        v89 = v116;
        goto LABEL_29;
      }

      v41 = sub_1DC51825C();

      v89 = v116;
      if (v41)
      {

LABEL_29:
        MEMORY[0x1EEE9AC00](v90);
        OUTLINED_FUNCTION_46_8();
        v91 = v121;
        *(v92 - 16) = v120;
        *(v92 - 8) = v91;
        v93 = v115;
        sub_1DC5158FC();

        OUTLINED_FUNCTION_39(v93, 1, v89);
        if (!v60)
        {
          v94 = *(v127 + 32);
          v95 = OUTLINED_FUNCTION_29_0();
          v94(v95);
          v96 = v132;
          v97 = OUTLINED_FUNCTION_45_2();
          v94(v97);
          v98 = MEMORY[0x1E69D0340];
LABEL_32:
          v99 = *v98;
          v85 = sub_1DC51588C();
          OUTLINED_FUNCTION_35(v85);
          (*(v100 + 104))(v96, v99, v85);
          goto LABEL_33;
        }

        v79 = &qword_1ECC7BF10;
        v80 = &unk_1DC522A50;
        v81 = v93;
        goto LABEL_21;
      }

      v1 = 0xE900000000000068;
      v42 = 0x6372616573617170;
      v101 = sub_1DC517D9C();
      v103 = v102;

      if (v101 == 0x6372616573617170 && v103 == 0xE900000000000068)
      {
      }

      else
      {
        OUTLINED_FUNCTION_112_1();
        sub_1DC51825C();
        v105 = OUTLINED_FUNCTION_168();
        if ((v53 & 1) == 0)
        {

          sub_1DC29120C();
          OUTLINED_FUNCTION_207_0();
          v12 = v122;
          v106(v122);
          v107 = v117;

          v63 = sub_1DC516F6C();
          sub_1DC517BAC();

          if (!OUTLINED_FUNCTION_172())
          {
            goto LABEL_14;
          }

          OUTLINED_FUNCTION_63();
          v64 = OUTLINED_FUNCTION_111();
          v133[0] = v64;
          MEMORY[0x6372616573617170] = 136315138;
          v65 = v129;
          v66 = v107;
          goto LABEL_13;
        }
      }

      MEMORY[0x1EEE9AC00](v105);
      OUTLINED_FUNCTION_46_8();
      v108 = v121;
      *(v109 - 16) = v120;
      *(v109 - 8) = v108;
      v110 = v126;
      sub_1DC5158BC();

      v111 = v125;
      OUTLINED_FUNCTION_39(v110, 1, v125);
      if (!v60)
      {
        v112 = *(v124 + 32);
        v112(v123, v110, v111);
        v96 = v132;
        v113 = OUTLINED_FUNCTION_187();
        (v112)(v113);
        v98 = MEMORY[0x1E69D0338];
        goto LABEL_32;
      }

      v79 = &qword_1ECC7BF18;
      v80 = &qword_1DC522340;
      v81 = v110;
LABEL_21:
      sub_1DC2AAF50(v81, v79, v80);
      goto LABEL_15;
    }

    v50 = v117;
  }

  else
  {
  }

  sub_1DC29120C();
  OUTLINED_FUNCTION_207_0();
  v62(v12);

  v63 = sub_1DC516F6C();
  sub_1DC517BAC();

  if (OUTLINED_FUNCTION_172())
  {
    OUTLINED_FUNCTION_63();
    v64 = OUTLINED_FUNCTION_111();
    v133[0] = v64;
    *v42 = 136315138;
    v65 = v129;
    v66 = v50;
LABEL_13:
    *(v42 + 4) = sub_1DC291244(v65, v66, v133);
    OUTLINED_FUNCTION_16_0();
    _os_log_impl(v67, v68, v69, v70, v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_31();
  }

LABEL_14:

  (*(v41 + 8))(v12, v1);
LABEL_15:
  sub_1DC51588C();
  OUTLINED_FUNCTION_19();
LABEL_16:
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  OUTLINED_FUNCTION_34();
}

double sub_1DC3632DC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1DC2DB2AC();
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_1DC363324(uint64_t a1)
{
  result = sub_1DC3743F8(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1DC374438(result, v3, 0, a1);
  }
}

uint64_t sub_1DC363388(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32 * v1);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];

  return v3;
}

uint64_t sub_1DC3633EC()
{
  OUTLINED_FUNCTION_164_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB28, &unk_1DC524110);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_47_7();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF98, &qword_1DC5224C0);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_95();
  v11 = *v1;
  swift_getKeyPath();
  v12 = sub_1DC5161CC();
  OUTLINED_FUNCTION_35(v12);
  (*(v13 + 16))(v2, v0, v12);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
  OUTLINED_FUNCTION_74_0();
  sub_1DC514FFC();
  swift_getKeyPath();
  sub_1DC515E7C();
  sub_1DC374BAC(&qword_1ECC7CB30, MEMORY[0x1E69D05B8]);
  OUTLINED_FUNCTION_166_1();
  v17 = *MEMORY[0x1E69D0600];
  v18 = sub_1DC515EDC();
  OUTLINED_FUNCTION_35(v18);
  v20 = *(v19 + 104);
  v21 = OUTLINED_FUNCTION_43();
  v22(v21);
  v23 = OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v18);
  OUTLINED_FUNCTION_220_0();
  return sub_1DC514FFC();
}

uint64_t sub_1DC3635E0()
{
  OUTLINED_FUNCTION_164_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB28, &unk_1DC524110);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_47_7();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF98, &qword_1DC5224C0);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_95();
  v11 = *v1;
  swift_getKeyPath();
  v12 = sub_1DC5161CC();
  OUTLINED_FUNCTION_35(v12);
  (*(v13 + 16))(v2, v0, v12);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
  OUTLINED_FUNCTION_74_0();
  sub_1DC514FFC();
  swift_getKeyPath();
  sub_1DC515EBC();
  sub_1DC374BAC(&qword_1ECC7C1F0, MEMORY[0x1E69D05E0]);
  OUTLINED_FUNCTION_166_1();
  v17 = *MEMORY[0x1E69D0608];
  v18 = sub_1DC515EDC();
  OUTLINED_FUNCTION_35(v18);
  v20 = *(v19 + 104);
  v21 = OUTLINED_FUNCTION_43();
  v22(v21);
  v23 = OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v18);
  OUTLINED_FUNCTION_220_0();
  return sub_1DC514FFC();
}

uint64_t sub_1DC3637D4(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0xD000000000000017 && 0x80000001DC541D70 == a2;
  if (v2 || (sub_1DC51825C() & 1) != 0)
  {
    v5 = MEMORY[0x1E69D0720];
LABEL_7:
    v6 = *v5;
    v7 = sub_1DC5161CC();
    OUTLINED_FUNCTION_35(v7);
    v9 = *(v8 + 104);
    v10 = OUTLINED_FUNCTION_43();
    v11(v10);
    v12 = OUTLINED_FUNCTION_37_1();
    v15 = v7;
    goto LABEL_8;
  }

  v17 = a1 == 0xD000000000000026 && 0x80000001DC541D90 == a2;
  if (v17 || (OUTLINED_FUNCTION_62_2(), (sub_1DC51825C() & 1) != 0))
  {
    v5 = MEMORY[0x1E69D0730];
    goto LABEL_7;
  }

  v18 = a1 == 0xD000000000000017 && 0x80000001DC541DC0 == a2;
  if (v18 || (OUTLINED_FUNCTION_62_2(), (sub_1DC51825C() & 1) != 0))
  {
    v5 = MEMORY[0x1E69D0718];
    goto LABEL_7;
  }

  sub_1DC5161CC();
  v12 = OUTLINED_FUNCTION_60_0();
LABEL_8:

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void sub_1DC363920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v158 = v26;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25();
  v155 = v33;
  OUTLINED_FUNCTION_12();
  v34 = sub_1DC5157EC();
  v35 = OUTLINED_FUNCTION_0(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = &v139[-v42];
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v139[-v44];
  v46 = sub_1DC516F7C();
  v47 = OUTLINED_FUNCTION_0(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_8();
  v53 = MEMORY[0x1EEE9AC00](v52);
  v55 = &v139[-v54];
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_62();
  v159 = v25;
  if (v25 && (v154 = v56, v150 = v57, [objc_opt_self() isInternalInstall]))
  {
    v141 = v43;
    v142 = v37;
    v143 = v55;
    v144 = v45;
    v151 = v49;
    v149 = v34;
    v145 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DC522F10;
    *(inited + 32) = 0x206F647573;
    v157 = (inited + 32);
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 0x206F6475657370;
    v146 = inited;
    *(inited + 56) = 0xE700000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF08, &qword_1DC525928);
    v59 = swift_initStackObject();
    *(v59 + 16) = xmmword_1DC522F00;
    OUTLINED_FUNCTION_27_5();
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1DC374BF4;
    *(v60 + 24) = v23;
    OUTLINED_FUNCTION_27_5();
    v61 = swift_allocObject();
    *(v61 + 16) = sub_1DC374C0C;
    *(v61 + 24) = v60;
    *(v59 + 32) = 0x2069726973;
    *(v59 + 40) = 0xE500000000000000;
    *(v59 + 48) = sub_1DC374C14;
    *(v59 + 56) = v61;
    OUTLINED_FUNCTION_27_5();
    v62 = swift_allocObject();
    *(v62 + 16) = sub_1DC374C44;
    *(v62 + 24) = v23;
    *(v59 + 64) = 0x2072656E6E616C70;
    *(v59 + 72) = 0xE800000000000000;
    *(v59 + 80) = sub_1DC374C70;
    *(v59 + 88) = v62;
    OUTLINED_FUNCTION_27_5();
    v63 = swift_allocObject();
    *(v63 + 16) = sub_1DC374C6C;
    *(v63 + 24) = v23;
    *(v59 + 96) = 0;
    *(v59 + 104) = 0xE000000000000000;
    *(v59 + 112) = sub_1DC374C70;
    *(v59 + 120) = v63;
    v64 = sub_1DC51778C();
    v66 = v65;
    swift_retain_n();
    v67 = 0;
    v68 = 0;
    v156 = v66;
    v153 = v64;
    v148 = v46;
    while (1)
    {
      v69 = v67;
      v70 = &v157[16 * v68];
      v71 = *v70;
      v72 = v70[1];

      OUTLINED_FUNCTION_151();
      if (sub_1DC51794C())
      {
        break;
      }

LABEL_11:

      v67 = 1;
      v68 = 1;
      if (v69)
      {

        OUTLINED_FUNCTION_184(v163);
        swift_setDeallocating();
        sub_1DC2A180C();
        swift_setDeallocating();
        sub_1DC372C2C(&qword_1ECC7CF10, &unk_1DC525930);
        OUTLINED_FUNCTION_19();
        v82 = v149;
LABEL_30:
        __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
        OUTLINED_FUNCTION_34();
        return;
      }
    }

    v147 = v71;
    OUTLINED_FUNCTION_151();
    v73 = sub_1DC329364();
    sub_1DC329368(v73);
    for (i = 0; ; i += 32)
    {
      if (i == 96)
      {

        goto LABEL_11;
      }

      v76 = *(v59 + i + 32);
      v75 = *(v59 + i + 40);
      v77 = *(v59 + i + 48);
      v78 = *(v59 + i + 56);

      OUTLINED_FUNCTION_146_1();
      if (sub_1DC51794C())
      {
        break;
      }
    }

    OUTLINED_FUNCTION_184(v163);
    swift_setDeallocating();
    sub_1DC2A180C();

    swift_setDeallocating();
    sub_1DC372C2C(&qword_1ECC7CF10, &unk_1DC525930);
    v88 = sub_1DC29120C();
    v89 = v151;
    v90 = *(v151 + 16);
    v146 = v88;
    v91 = v148;
    v156 = v151 + 16;
    v153 = v90;
    v90(v154);

    v92 = sub_1DC516F6C();
    v93 = sub_1DC517B9C();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = OUTLINED_FUNCTION_140();
      v157 = OUTLINED_FUNCTION_143();
      v160 = v157;
      *v94 = 136446466;
      v161 = v147;
      v162 = v72;

      v140 = v93;
      v95 = OUTLINED_FUNCTION_146_1();
      MEMORY[0x1E1296160](v95);
      v96 = sub_1DC291244(v161, v162, &v160);

      *(v94 + 4) = v96;
      v97 = v159;
      *(v94 + 12) = 2080;
      *(v94 + 14) = sub_1DC291244(v158, v97, &v160);
      _os_log_impl(&dword_1DC287000, v92, v140, "SUDO: Routing decision override found magic word %{public}s in utterance: %s", v94, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_40_0();

      v98 = v148;
      v157 = *(v151 + 8);
      (v157)(v154, v148);
      v99 = v149;
    }

    else
    {

      v157 = *(v89 + 8);
      (v157)(v154, v91);
      v99 = v149;
      v98 = v91;
    }

    OUTLINED_FUNCTION_151();
    v100 = sub_1DC51783C();

    OUTLINED_FUNCTION_146_1();
    v101 = sub_1DC51783C();

    if (!__OFADD__(v100, v101))
    {
      v161 = sub_1DC329368(v100 + v101);
      v162 = v102;
      v103 = v155;
      v77(&v161);

      OUTLINED_FUNCTION_39(v103, 1, v99);
      if (v104)
      {
        sub_1DC2AAF50(v103, &qword_1ECC7CA40, &unk_1DC5233A0);
        OUTLINED_FUNCTION_184(&v164);
        OUTLINED_FUNCTION_110_2();
        v105();
        v106 = sub_1DC516F6C();
        v107 = sub_1DC517B9C();
        if (OUTLINED_FUNCTION_14_7(v107))
        {
          v108 = OUTLINED_FUNCTION_35_8();
          OUTLINED_FUNCTION_81_2(v108);
          OUTLINED_FUNCTION_16_0();
          _os_log_impl(v109, v110, v111, v112, v113, 2u);
          v98 = v148;
          OUTLINED_FUNCTION_66();
        }

        OUTLINED_FUNCTION_151_1();
        (v157)(v150, v98);
        v79 = v145;
        v80 = 1;
      }

      else
      {
        v114 = v142;
        v115 = *(v142 + 32);
        v116 = v144;
        v117 = OUTLINED_FUNCTION_115();
        v159 = v118;
        v118(v117);
        v119 = v143;
        OUTLINED_FUNCTION_110_2();
        v120();
        v121 = *(v114 + 16);
        v122 = v141;
        v121(v141, v116, v99);
        v123 = sub_1DC516F6C();
        v124 = sub_1DC517B9C();
        if (OUTLINED_FUNCTION_14_7(v124))
        {
          OUTLINED_FUNCTION_63();
          v158 = OUTLINED_FUNCTION_111();
          v161 = v158;
          *v98 = 136315138;
          v121(v152, v122, v149);
          sub_1DC51777C();
          (*(v114 + 8))(v122, v149);
          v126 = OUTLINED_FUNCTION_42_2();
          v129 = sub_1DC291244(v126, v127, v128);

          *(v98 + 4) = v129;
          OUTLINED_FUNCTION_16_0();
          _os_log_impl(v130, v131, v132, v133, v134, 0xCu);
          v135 = OUTLINED_FUNCTION_184(&a11);
          __swift_destroy_boxed_opaque_existential_1Tm(v135);
          v99 = v149;
          OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_31();

          OUTLINED_FUNCTION_151_1();
          v136 = v119;
          v137 = v148;
        }

        else
        {

          (*(v114 + 8))(v122, v99);
          OUTLINED_FUNCTION_151_1();
          v136 = v119;
          v137 = v98;
        }

        (v157)(v136, v137);
        v138 = v145;
        v159(v145, v144, v99);
        v79 = v138;
        v80 = 0;
      }

      v81 = 1;
      v82 = v99;
      goto LABEL_30;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_34();

    __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
  }
}

uint64_t sub_1DC364458@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  a1();
  v3 = sub_1DC5157EC();

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
}

void sub_1DC3644AC()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_57_0();
  v6 = sub_1DC51591C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v12 = OUTLINED_FUNCTION_74_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  v15 = OUTLINED_FUNCTION_10(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v48 - v22;
  v48[2] = v5;
  v48[3] = v3;
  sub_1DC5158FC();
  OUTLINED_FUNCTION_136_0();
  sub_1DC2DB2AC();
  OUTLINED_FUNCTION_39(v20, 1, v6);
  if (v24)
  {
    sub_1DC2AAF50(v23, &qword_1ECC7BF10, &unk_1DC522A50);
    sub_1DC2AAF50(v20, &qword_1ECC7BF10, &unk_1DC522A50);
    sub_1DC5157EC();
    v44 = OUTLINED_FUNCTION_60_0();
  }

  else
  {
    v25 = *(v9 + 32);
    v26 = OUTLINED_FUNCTION_45_2();
    v27(v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFA8, &unk_1DC5224D0);
    v28 = sub_1DC51588C();
    OUTLINED_FUNCTION_0(v28);
    v30 = v29;
    v32 = *(v31 + 72);
    v33 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1DC522F20;
    (*(v9 + 16))(v34 + v33, v1, v6);
    (*(v30 + 104))(v34 + v33, *MEMORY[0x1E69D0340], v28);
    v35 = *(v9 + 8);
    v36 = OUTLINED_FUNCTION_62_2();
    v37(v36);
    sub_1DC2AAF50(v23, &qword_1ECC7BF10, &unk_1DC522A50);
    *v0 = v34;
    v38 = *MEMORY[0x1E69D02C8];
    v39 = sub_1DC5157EC();
    OUTLINED_FUNCTION_35(v39);
    v41 = *(v40 + 104);
    v42 = OUTLINED_FUNCTION_43();
    v43(v42);
    v44 = OUTLINED_FUNCTION_37_1();
    v47 = v39;
  }

  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC36479C()
{
  OUTLINED_FUNCTION_42_0();
  v1 = v0;
  sub_1DC5157CC();
  sub_1DC374BAC(&qword_1ECC7CB38, MEMORY[0x1E69D02C0]);
  sub_1DC51501C();
  v2 = *MEMORY[0x1E69D02E8];
  v3 = sub_1DC5157EC();
  OUTLINED_FUNCTION_35(v3);
  return (*(v4 + 104))(v1, v2);
}

uint64_t sub_1DC364884()
{
  v1 = *v0;
  OUTLINED_FUNCTION_12_0();
  return (*(v2 + 80))();
}

void *sub_1DC3648C4()
{
  v1 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_nlResponse;
  OUTLINED_FUNCTION_9_10();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1DC364900(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_nlResponse;
  OUTLINED_FUNCTION_35_1();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1DC364A0C()
{
  v1 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_hasScheduledUtteranceProcessingTimer;
  OUTLINED_FUNCTION_9_10();
  return *(v0 + v1);
}

uint64_t sub_1DC364A40(char a1)
{
  v3 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_hasScheduledUtteranceProcessingTimer;
  result = OUTLINED_FUNCTION_35_1();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DC364ACC()
{
  v1 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_utteranceProcessingTimedOut;
  OUTLINED_FUNCTION_9_10();
  return *(v0 + v1);
}

uint64_t sub_1DC364B00(char a1)
{
  v3 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_utteranceProcessingTimedOut;
  result = OUTLINED_FUNCTION_35_1();
  *(v1 + v3) = a1;
  return result;
}

unint64_t sub_1DC364B8C()
{
  v1 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_queryDecorationResult;
  OUTLINED_FUNCTION_9_10();
  v2 = *(v0 + v1);
  sub_1DC372E38(v2);
  return v2;
}

void sub_1DC364BCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_queryDecorationResult;
  OUTLINED_FUNCTION_35_1();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1DC372E5C(v4);
}

uint64_t sub_1DC364D48(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_1_18();
  return sub_1DC374080();
}

uint64_t sub_1DC364DA4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1DC372EA0(a1, v2 + v4);
  return swift_endAccess();
}

void *sub_1DC364E4C()
{
  v1 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_nlRouterServiceError;
  OUTLINED_FUNCTION_9_10();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1DC364EAC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_142();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_1DC364F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, unint64_t a10, uint64_t a11, void *a12)
{
  v18 = *(v12 + 48);
  v19 = *(v12 + 52);
  v20 = swift_allocObject();
  v21 = OUTLINED_FUNCTION_75();
  sub_1DC365008(v21, v22, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  return v20;
}

char *sub_1DC365008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, unint64_t a10, uint64_t a11, void *a12)
{
  *&v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_nlResponse] = 0;
  *&v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_routingTask] = 0;
  *&v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_queryDecorationResult] = 0xF000000000000007;
  *&v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_queryDecorationTask] = 0;
  v18 = &v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_nlxSubComponentLogger];
  *v18 = 1;
  v18[4] = 0;
  v19 = type metadata accessor for NLRouterBridgeSubComponentLogger(0);
  v20 = &v18[*(v19 + 24)];
  sub_1DC510B5C();
  v21 = &v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_qdSubComponentLogger];
  *v21 = 3;
  v21[4] = 0;
  v22 = *(v19 + 24);
  sub_1DC510B5C();
  *&v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_nlRouterServiceError] = 0;
  *(v12 + 2) = a1;
  *(v12 + 3) = a2;
  *(v12 + 4) = a3;
  *(v12 + 5) = a4;
  v23 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_userId;
  v24 = sub_1DC5162DC();
  OUTLINED_FUNCTION_35(v24);
  (*(v25 + 32))(&v12[v23], a5);
  v26 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_nlResponse;
  OUTLINED_FUNCTION_142();
  v27 = *&v12[v26];
  *&v12[v26] = a6;

  v28 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_routingTask;
  OUTLINED_FUNCTION_142();
  v29 = *&v12[v28];
  *&v12[v28] = a7;

  v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_hasScheduledUtteranceProcessingTimer] = a8;
  v12[OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_utteranceProcessingTimedOut] = a9;
  v30 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_queryDecorationResult;
  OUTLINED_FUNCTION_142();
  v31 = *&v12[v30];
  *&v12[v30] = a10;
  sub_1DC372E38(a10);
  sub_1DC372E5C(v31);
  sub_1DC372E5C(a10);
  v32 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_queryDecorationTask;
  OUTLINED_FUNCTION_142();
  v33 = *&v12[v32];
  *&v12[v32] = a11;

  v34 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_nlRouterServiceError;
  OUTLINED_FUNCTION_142();
  v35 = *&v12[v34];
  *&v12[v34] = a12;
  v36 = a12;

  return v12;
}

uint64_t sub_1DC36524C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_userId;
  v4 = sub_1DC5162DC();
  OUTLINED_FUNCTION_0_2(v4);
  (*(v5 + 8))(v0 + v3);

  v6 = *(v0 + OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_routingTask);

  sub_1DC372E5C(*(v0 + OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_queryDecorationResult));
  v7 = *(v0 + OBJC_IVAR____TtCC13CDMFoundation24NLRouterRequestProcessor10TRPContext_queryDecorationTask);

  sub_1DC3740D4();
  sub_1DC3740D4();

  return v0;
}

uint64_t sub_1DC36533C()
{
  sub_1DC36524C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DC365394()
{
  v0 = sub_1DC51735C();
  __swift_allocate_value_buffer(v0, qword_1EDAC9470);
  v1 = OUTLINED_FUNCTION_43();
  *__swift_project_value_buffer(v1, v2) = 700;
  v3 = *MEMORY[0x1E69E7F38];
  OUTLINED_FUNCTION_7_1(v0);
  v5 = *(v4 + 104);

  return v5();
}

uint64_t sub_1DC36541C()
{
  v1 = qword_1ECC7BBE0;
  OUTLINED_FUNCTION_9_10();
  v2 = *(v0 + v1);
}

uint64_t sub_1DC365454(uint64_t a1)
{
  v3 = qword_1ECC7BBE0;
  OUTLINED_FUNCTION_35_1();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1DC36549C()
{
  OUTLINED_FUNCTION_57_0();
  v1 = type metadata accessor for SiriReferenceResolutionProxy();
  result = (*(v1 + 240))();
  v0[3] = v1;
  v0[4] = &off_1F57F6960;
  *v0 = result;
  return result;
}

uint64_t sub_1DC3654E8()
{
  v0 = *sub_1DC3193C4();
}

__n128 sub_1DC365514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t *a20, __int16 a21, uint64_t a22, unsigned __int8 a23, int a24, char a25, uint64_t a26, uint64_t *a27, __int16 a28, uint64_t *a29)
{
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  LOWORD(v36) = a28;
  LOBYTE(v35) = a25 & 1;
  LOWORD(v34) = a21;
  LOBYTE(v33) = a11;
  sub_1DC365650(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v33, a12, a13, a14, a15, a16, a17, a18, a19, a20, v34, a22, a23, v35, a26, a27, v36, a29, v37, a20, a18, a19, a16, BYTE1(a16), a17, a14, a15, a12, a13, v38, HIBYTE(v38), a10);
  return result;
}

void sub_1DC365650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned __int8 a23, uint64_t a24, uint64_t a25, uint64_t *a26, uint64_t *a27, uint64_t *a28, uint64_t *a29, uint64_t *a30, uint64_t *a31, uint64_t a32, unsigned __int8 a33, unsigned __int8 a34, uint64_t a35, uint64_t a36, unsigned __int8 a37, uint64_t *a38, uint64_t a39, unsigned __int8 a40, unsigned __int8 a41, uint64_t a42)
{
  OUTLINED_FUNCTION_33();
  v44 = v42;
  v152 = v45;
  v146 = v46;
  v149 = v47;
  v151 = v48;
  v150 = v49;
  v159 = v50;
  v148 = v51;
  v147 = v52;
  v161 = a42;
  v164 = a39;
  v165 = a38;
  v140 = a37;
  v166 = a35;
  v167 = a31;
  v168 = a30;
  v169 = a29;
  v158 = a24;
  v162 = a32;
  v163 = a22;
  v145 = a21;
  v139 = a41;
  v138 = a40;
  v137 = a34;
  v136 = a33;
  LODWORD(v156) = a23;
  v157 = sub_1DC510B6C();
  v53 = OUTLINED_FUNCTION_0(v157);
  v154 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_1();
  v144 = v58 - v57;
  OUTLINED_FUNCTION_12();
  v143 = sub_1DC516F7C();
  v59 = OUTLINED_FUNCTION_0(v143);
  v160 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_62();
  v135 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C918, &qword_1DC523AB0);
  OUTLINED_FUNCTION_10(v67);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v135 - v71;
  v73 = sub_1DC51735C();
  v74 = OUTLINED_FUNCTION_0(v73);
  v76 = v75;
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  *(v44 + qword_1ECC7BBE0) = MEMORY[0x1E69E7CC8];
  v79 = (v44 + qword_1EDAC93C0);
  *v79 = 0;
  v79[1] = 0;
  sub_1DC515DFC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  v84 = (v44 + qword_1EDAC93D0);
  *v84 = 0;
  v84[1] = 0;
  sub_1DC515E1C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  v89 = qword_1EDAC93E0;
  v90 = sub_1DC510C8C();
  v141 = *(v90 - 8);
  v91 = *(v141 + 16);
  v92 = v44 + v89;
  v93 = v162;
  v142 = v90;
  v91(v92, v163);
  *(v44 + qword_1EDAC93E8) = v156;
  v156 = a26;
  v94 = v161;
  sub_1DC2C5FC4(a26, v44 + qword_1EDAC93F0);
  v155 = a27;
  sub_1DC2C5FC4(a27, v44 + qword_1EDAC93F8);
  v153 = a28;
  v95 = v164;
  sub_1DC2C5FC4(a28, v44 + qword_1EDAC9400);
  sub_1DC2C5FC4(v169, v44 + qword_1EDAC9408);
  sub_1DC2C5FC4(v168, v44 + qword_1EDAC9410);
  OUTLINED_FUNCTION_196_0(qword_1EDAC9418);
  OUTLINED_FUNCTION_196_0(qword_1EDAC9420);
  sub_1DC2C5FC4(v165, v44 + qword_1EDAC9428);
  sub_1DC2C5FC4(v167, v44 + qword_1EDAC9430);
  *(v44 + qword_1EDAC9438) = v93;
  *(v44 + qword_1EDAC9440) = v95;
  OUTLINED_FUNCTION_196_0(qword_1EDAC9448);
  OUTLINED_FUNCTION_196_0(qword_1EDAC9450);
  *(v44 + qword_1EDAC9458) = v94;
  sub_1DC2DB2AC();
  if (__swift_getEnumTagSinglePayload(v72, 1, v73) != 1)
  {
    v110 = *(v76 + 32);
    v110(v43, v72, v73);
    v110(v44 + qword_1EDAC9460, v43, v73);

LABEL_11:
    v103 = v160;
    goto LABEL_12;
  }

  sub_1DC2AAF50(v72, &qword_1ECC7C918, &qword_1DC523AB0);
  v96 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v97 = sub_1DC346A1C(0xD000000000000013, 0x80000001DC540DC0);
  if (!v97 || (v98 = v97, v99 = sub_1DC5176FC(), v100 = [v98 integerForKey_], v98, v99, v100 <= 0))
  {
    if (_MergedGlobals_10 != -1)
    {
      swift_once();
    }

    v111 = __swift_project_value_buffer(v73, qword_1EDAC9470);
    (*(v76 + 16))(v44 + qword_1EDAC9460, v111, v73);
    goto LABEL_11;
  }

  v101 = qword_1EDAC9460;
  *(v44 + qword_1EDAC9460) = v100;
  (*(v76 + 104))(v44 + v101, *MEMORY[0x1E69E7F38], v73);
  v102 = sub_1DC29120C();
  v103 = v160;
  (*(v160 + 16))(v135, v102, v143);
  v104 = sub_1DC516F6C();
  v105 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_25_0(v105))
  {
    v106 = OUTLINED_FUNCTION_63();
    *v106 = 134217984;
    *(v106 + 4) = v100;
    _os_log_impl(&dword_1DC287000, v104, v105, "Setting utteranceProcessingTimeout from UserDefault: %ld", v106, 0xCu);
    v103 = v160;
    OUTLINED_FUNCTION_66();
  }

  v107 = *(v103 + 8);
  v108 = OUTLINED_FUNCTION_63_0();
  v109(v108);
LABEL_12:
  if (v140)
  {
    v112 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v113 = sub_1DC346A1C(0xD000000000000013, 0x80000001DC540DC0);
    if (v113 && (v114 = v113, v115 = sub_1DC5176FC(), v116 = [v114 integerForKey_], v114, v115, v116 > 0))
    {
      *(v44 + qword_1EDAC9468) = v116 / 1000.0;
      sub_1DC29120C();
      OUTLINED_FUNCTION_57_9();
      v117 = OUTLINED_FUNCTION_144_1();
      v118(v117);

      v119 = sub_1DC516F6C();
      v120 = sub_1DC517B9C();

      if (OUTLINED_FUNCTION_169())
      {
        v121 = OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_145_2(v121, 3.852e-34);
        v122 = "Using routingTimeoutSeconds: %f (source: UserDefault)";
LABEL_21:
        _os_log_impl(&dword_1DC287000, v119, v120, v122, v121, 0xCu);
        OUTLINED_FUNCTION_40_0();
      }
    }

    else
    {
      *(v44 + qword_1EDAC9468) = 0x4000000000000000;
      sub_1DC29120C();
      OUTLINED_FUNCTION_57_9();
      v125 = OUTLINED_FUNCTION_144_1();
      v126(v125);

      v119 = sub_1DC516F6C();
      v120 = sub_1DC517B9C();

      if (OUTLINED_FUNCTION_169())
      {
        v121 = OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_145_2(v121, 3.852e-34);
        v122 = "Using routingTimeoutSeconds: %f (source: default)";
        goto LABEL_21;
      }
    }
  }

  else
  {
    *(v44 + qword_1EDAC9468) = a36;
    sub_1DC29120C();
    OUTLINED_FUNCTION_57_9();
    v123 = OUTLINED_FUNCTION_144_1();
    v124(v123);

    v119 = sub_1DC516F6C();
    v120 = sub_1DC517B9C();

    if (OUTLINED_FUNCTION_169())
    {
      v121 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_145_2(v121, 3.852e-34);
      v122 = "Using routingTimeoutSeconds: %f (source: param)";
      goto LABEL_21;
    }
  }

  v127 = *(v103 + 8);
  v128 = OUTLINED_FUNCTION_77_1();
  v129(v128);
  v130 = v154;
  (*(v154 + 16))(v144, v159, v157);
  v131 = v158;
  sub_1DC2C5FC4(v158, &v170);
  sub_1DC51698C();

  __swift_destroy_boxed_opaque_existential_1Tm(v165);
  sub_1DC2AAF50(v166, &qword_1ECC7C918, &qword_1DC523AB0);
  __swift_destroy_boxed_opaque_existential_1Tm(v167);
  __swift_destroy_boxed_opaque_existential_1Tm(v168);
  __swift_destroy_boxed_opaque_existential_1Tm(v169);
  __swift_destroy_boxed_opaque_existential_1Tm(v153);
  __swift_destroy_boxed_opaque_existential_1Tm(v155);
  __swift_destroy_boxed_opaque_existential_1Tm(v156);
  __swift_destroy_boxed_opaque_existential_1Tm(v131);
  (*(v141 + 8))(v163, v142);
  v132 = *(v130 + 8);
  v133 = OUTLINED_FUNCTION_45_2();
  v134(v133);
  OUTLINED_FUNCTION_34();
}

void sub_1DC366100()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_189();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17_0();
  v5 = OUTLINED_FUNCTION_54_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_95();
  sub_1DC515B6C();
  sub_1DC515DFC();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_221();
  sub_1DC372F04();
  swift_endAccess();
  v15 = *MEMORY[0x1E69D0548];
  v16 = sub_1DC515E1C();
  OUTLINED_FUNCTION_35(v16);
  (*(v17 + 104))(v0, v15, v16);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v16);
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_222_0();
  swift_endAccess();
  sub_1DC36B824();
  OUTLINED_FUNCTION_34();
}

void sub_1DC366280()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_189();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17_0();
  v5 = OUTLINED_FUNCTION_54_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_95();
  v11 = *MEMORY[0x1E69D0530];
  v12 = sub_1DC515E1C();
  OUTLINED_FUNCTION_35(v12);
  (*(v13 + 104))(v0, v11, v12);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_221();
  sub_1DC372F04();
  swift_endAccess();
  sub_1DC515AAC();
  sub_1DC515DFC();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_222_0();
  swift_endAccess();
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3663FC()
{
  OUTLINED_FUNCTION_189();
  v0 = sub_1DC515D6C();
  sub_1DC366448(v0, v1);
}

uint64_t sub_1DC366448(uint64_t result, uint64_t a2)
{
  v3 = (v2 + qword_1EDAC93C0);
  if (!*(v2 + qword_1EDAC93C0 + 8))
  {
    *v3 = result;
    v3[1] = a2;
  }

  return result;
}

uint64_t sub_1DC366474()
{
  OUTLINED_FUNCTION_164();
  v5 = (*(*v0 + qword_1ECC8F4E0 + 184))();
  result = OUTLINED_FUNCTION_52_9(v5);
  if (v4)
  {
    while (1)
    {
      v7 = v2;
LABEL_7:
      OUTLINED_FUNCTION_105_0(v7);
      sub_1DC371EA0();
    }
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v7 >= v3)
    {
      break;
    }

    ++v2;
    if (*(v1 + 8 * v7))
    {
      v2 = v7;
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_154();
}

uint64_t sub_1DC366540()
{
  OUTLINED_FUNCTION_164();
  *(v0 + qword_1EDAC93E8) = 0;
  v5 = (*(*v0 + qword_1ECC8F4E0 + 184))();
  result = OUTLINED_FUNCTION_52_9(v5);
  if (v4)
  {
    while (1)
    {
      v7 = v2;
LABEL_7:
      OUTLINED_FUNCTION_105_0(v7);
      sub_1DC367120();
    }
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v7 >= v3)
    {
      break;
    }

    ++v2;
    if (*(v1 + 8 * v7))
    {
      v2 = v7;
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_154();
}

void sub_1DC366618()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_185_0();
  v1 = sub_1DC5162DC();
  v2 = OUTLINED_FUNCTION_10(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  sub_1DC515A5C();
  sub_1DC366744();
  sub_1DC515A6C();
  v5 = type metadata accessor for NLRouterRequestProcessor.TRPContext(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_170_0(v8, v9, v10, v11, v12, v13, v14, v15, 0, 0xF000000000000007, 0, 0);
  sub_1DC515A5C();
  v16 = qword_1ECC7BBE0;
  OUTLINED_FUNCTION_84_2();

  v17 = *(v0 + v16);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_127_1();
  *(v0 + v16) = v18;

  swift_endAccess();
  OUTLINED_FUNCTION_204_0();
  sub_1DC366D60();

  OUTLINED_FUNCTION_34();
}

void sub_1DC366744()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_185_0();
  v2 = sub_1DC516F7C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v66 - v9;
  v11 = sub_1DC51141C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v74 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = sub_1DC515B8C();
  sub_1DC3632DC(v19, v75);

  v20 = *&v75[0];
  if (!*&v75[0])
  {
    sub_1DC2AAF50(v75, &qword_1ECC7CF00, &qword_1DC525848);
    goto LABEL_13;
  }

  v21 = [*&v75[0] speechPackage];

  if (v21)
  {
    v22 = [v21 recognition];

    __swift_destroy_boxed_opaque_existential_1Tm(v75 + 1);
    if (v22)
    {
      v70 = v22;
      v71 = v0;
      v69 = v5;
      AFSpeechRecognition.toNLXAsrHypotheses()();
      v24 = *(v23 + 16);
      if (v24)
      {
        v67 = v10;
        v68 = v2;
        v25 = *(v74 + 16);
        v26 = *(v74 + 80);
        OUTLINED_FUNCTION_24();
        v66[1] = v27;
        v29 = v27 + v28;
        v72 = *(v30 + 56);
        v73 = v31;
        v74 = v30;
        v32 = (v30 - 8);
        v33 = MEMORY[0x1E69E7CC0];
        do
        {
          v73(v18, v29, v11);
          v34 = sub_1DC5113EC();
          v36 = v35;
          (*v32)(v18, v11);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = *(v33 + 2);
            v41 = OUTLINED_FUNCTION_13_0();
            v33 = sub_1DC2ACCD4(v41, v42, v43, v33);
          }

          v38 = *(v33 + 2);
          v37 = *(v33 + 3);
          if (v38 >= v37 >> 1)
          {
            v44 = OUTLINED_FUNCTION_26(v37);
            v33 = sub_1DC2ACCD4(v44, v38 + 1, 1, v33);
          }

          *(v33 + 2) = v38 + 1;
          v39 = &v33[16 * v38];
          *(v39 + 4) = v34;
          *(v39 + 5) = v36;
          v29 += v72;
          --v24;
        }

        while (v24);

        v10 = v67;
        v2 = v68;
      }

      else
      {

        v33 = MEMORY[0x1E69E7CC0];
      }

      v54 = v71;
      if (*(v33 + 2))
      {
        v55 = *(v33 + 4);
        v56 = *(v33 + 5);
      }

      else
      {

        v57 = sub_1DC29120C();
        v58 = v69;
        (*(v69 + 16))(v10, v57, v2);
        v59 = v54;
        v60 = sub_1DC516F6C();
        v61 = sub_1DC517BAC();

        if (os_log_type_enabled(v60, v61))
        {
          OUTLINED_FUNCTION_63();
          v62 = OUTLINED_FUNCTION_111();
          *&v75[0] = v62;
          *v10 = 136446210;
          v63 = sub_1DC515A5C();
          v65 = sub_1DC291244(v63, v64, v75);

          *(v10 + 4) = v65;
          _os_log_impl(&dword_1DC287000, v60, v61, "Could not extract recognition candidates from TRP ID: %{public}s", v10, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v62);
          OUTLINED_FUNCTION_14_5();
          OUTLINED_FUNCTION_31();
        }

        (*(v58 + 8))(v10, v2);
      }

LABEL_19:
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_34();
      return;
    }

LABEL_13:
    sub_1DC29120C();
    OUTLINED_FUNCTION_57_9();
    v45(v1);
    v46 = v0;
    v47 = sub_1DC516F6C();
    v48 = sub_1DC517BAC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = OUTLINED_FUNCTION_63();
      v50 = OUTLINED_FUNCTION_82();
      *&v75[0] = v50;
      *v49 = 136446210;
      v51 = sub_1DC515A5C();
      v53 = sub_1DC291244(v51, v52, v75);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_1DC287000, v47, v48, "Could not extract recognition from TRP ID: %{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_58();
    }

    (*(v5 + 8))(v1, v2);
    goto LABEL_19;
  }

  __break(1u);
}

void sub_1DC366C38()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_185_0();
  v1 = sub_1DC5162DC();
  v2 = OUTLINED_FUNCTION_10(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  sub_1DC515A5C();
  sub_1DC515CEC();
  sub_1DC515A6C();
  v5 = type metadata accessor for NLRouterRequestProcessor.TRPContext(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_170_0(v8, v9, v10, v11, v12, v13, v14, v15, 0, 0xF000000000000007, 0, 0);
  sub_1DC515A5C();
  v16 = qword_1ECC7BBE0;
  OUTLINED_FUNCTION_84_2();

  v17 = *(v0 + v16);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_127_1();
  *(v0 + v16) = v18;

  swift_endAccess();
  OUTLINED_FUNCTION_204_0();
  sub_1DC366D60();

  OUTLINED_FUNCTION_34();
}

void sub_1DC366D60()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v4 = v3;
  v5 = sub_1DC516F7C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v33 = v11;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DC371CE8();
  sub_1DC29120C();
  v13 = *(v8 + 16);
  v14 = OUTLINED_FUNCTION_147_0();
  v32 = v15;
  v15(v14);

  v16 = sub_1DC516F6C();
  v17 = sub_1DC517B9C();

  if (os_log_type_enabled(v16, v17))
  {
    v31 = v2;
    v18 = OUTLINED_FUNCTION_140();
    v34 = OUTLINED_FUNCTION_143();
    *v18 = 136315394;
    if (v4[5])
    {
      v19 = v4[4];
      v20 = v4[5];
    }

    else
    {
      v19 = 0;
      v20 = 0xE000000000000000;
    }

    v1 = sub_1DC291244(v19, v20, &v34);

    *(v18 + 4) = v1;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_1DC291244(v4[2], v4[3], &v34);
    _os_log_impl(&dword_1DC287000, v16, v17, "Handling utterance: <%s> with trpId: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_66();

    v22 = OUTLINED_FUNCTION_191_0();
    v1(v22);
    v2 = v31;
  }

  else
  {

    v21 = OUTLINED_FUNCTION_191_0();
    v1(v21);
  }

  OUTLINED_FUNCTION_117_2();
  v24 = (*(v23 + 176))();
  if (v24)
  {

LABEL_10:
    v26 = OUTLINED_FUNCTION_147_0();
    v32(v26);
    v27 = sub_1DC516F6C();
    v28 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_14_7(v28))
    {
      v29 = OUTLINED_FUNCTION_35_8();
      *v29 = 0;
      _os_log_impl(&dword_1DC287000, v27, v33, "NL response arrived before TRPCandidate. This is very unusual.", v29, 2u);
      OUTLINED_FUNCTION_66();
    }

    (v1)(v33, v5);
    sub_1DC36C2A4(v4);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_117_2();
  if ((*(v25 + 224))())
  {
    goto LABEL_10;
  }

  if (*(v2 + qword_1EDAC9420) == 1)
  {
    v30 = (*(*v2 + qword_1ECC8F4E0 + 504))(v4);
    (*(*v4 + 304))(v30);
  }

  sub_1DC367120();
LABEL_13:
  OUTLINED_FUNCTION_34();
}

void sub_1DC367120()
{
  OUTLINED_FUNCTION_33();
  v3 = v0;
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  v98 = v6;
  v7 = sub_1DC51737C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v104 = v9;
  v105 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v101 = v13 - v12;
  OUTLINED_FUNCTION_12();
  v14 = sub_1DC5173CC();
  v15 = OUTLINED_FUNCTION_0(v14);
  v102 = v16;
  v103 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v100 = v20 - v19;
  OUTLINED_FUNCTION_12();
  v21 = sub_1DC5173EC();
  v106 = OUTLINED_FUNCTION_0(v21);
  v107 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_8();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_62();
  v99 = v29;
  OUTLINED_FUNCTION_12();
  v30 = sub_1DC51735C();
  v31 = OUTLINED_FUNCTION_0(v30);
  v97 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  v35 = sub_1DC516F7C();
  v36 = OUTLINED_FUNCTION_0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_8();
  v43 = v41 - v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v94 - v46;
  if (*(v3 + qword_1EDAC93E8))
  {
    sub_1DC29120C();
    OUTLINED_FUNCTION_19_1();
    v48(v43);
    v49 = sub_1DC516F6C();
    v50 = sub_1DC517B9C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_35_8();
      *v51 = 0;
      _os_log_impl(&dword_1DC287000, v49, v50, "Request is still in candidate mode. Not going to schedule utterance processing timer yet.", v51, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    (*(v38 + 8))(v43, v35);
  }

  else
  {
    OUTLINED_FUNCTION_64_3();
    v53 = (*(v52 + 224))();
    sub_1DC29120C();
    OUTLINED_FUNCTION_19_1();
    if (v53)
    {
      v54(v2);

      v55 = sub_1DC516F6C();
      sub_1DC517B9C();

      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_63();
        v56 = OUTLINED_FUNCTION_111();
        v109[0] = v56;
        *v27 = 136446210;
        *(v27 + 4) = sub_1DC291244(*(v5 + 16), *(v5 + 24), v109);
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v57, v58, v59, v60, v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_31();
      }

      (*(v38 + 8))(v2, v35);
    }

    else
    {
      v54(v47);

      v62 = sub_1DC516F6C();
      v63 = sub_1DC517B9C();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = OUTLINED_FUNCTION_140();
        v95 = v63;
        v65 = v64;
        v96 = OUTLINED_FUNCTION_143();
        v109[0] = v96;
        *v65 = 136446466;
        v97[2](v1, v3 + qword_1EDAC9460, v30);
        v66 = sub_1DC51777C();
        v68 = sub_1DC291244(v66, v67, v109);

        *(v65 + 4) = v68;
        *(v65 + 12) = 2082;
        *(v65 + 14) = sub_1DC291244(*(v5 + 16), *(v5 + 24), v109);
        _os_log_impl(&dword_1DC287000, v62, v95, "Scheduling Utterance Processing Timer with duration: %{public}s for trpId: %{public}s", v65, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_14_5();
        OUTLINED_FUNCTION_67();
      }

      (*(v38 + 8))(v47, v35);
      v69 = v107;
      OUTLINED_FUNCTION_64_3();
      (*(v70 + 232))(1);
      v71 = *(v3 + qword_1EDAC9420);
      v72 = sub_1DC5169AC();
      sub_1DC5173DC();
      v73 = v99;
      MEMORY[0x1E1295CB0](v27, v3 + qword_1EDAC9460);
      v74 = *(v69 + 8);
      v107 = v69 + 8;
      v75 = OUTLINED_FUNCTION_45_2();
      v97 = v76;
      (v76)(v75);
      OUTLINED_FUNCTION_195();
      v77 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_37_3();
      v78 = swift_allocObject();
      v78[2] = v77;
      v78[3] = v5;
      v78[4] = v98;
      OUTLINED_FUNCTION_57_10(v78);
      OUTLINED_FUNCTION_63_5(COERCE_DOUBLE(1107296256));
      if (v71 == 1)
      {
        v80 = &block_descriptor_87;
      }

      else
      {
        v80 = &block_descriptor_80;
      }

      v109[2] = v79;
      v109[3] = v80;
      v81 = _Block_copy(v109);

      v82 = v100;
      sub_1DC51739C();
      v108 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_5_23();
      sub_1DC374BAC(v83, v84);
      v85 = OUTLINED_FUNCTION_48_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v85, v86);
      OUTLINED_FUNCTION_4_18();
      OUTLINED_FUNCTION_70_4();
      sub_1DC327B3C(v87, v88, v89);
      v90 = v101;
      v91 = v105;
      sub_1DC517E9C();
      MEMORY[0x1E1296480](v73, v82, v90, v81);
      _Block_release(v81);

      v92 = OUTLINED_FUNCTION_209();
      v93(v92, v91);
      (*(v102 + 8))(v82, v103);
      (v97)(v73, v106);
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3678F8()
{
  OUTLINED_FUNCTION_33();
  v2 = OUTLINED_FUNCTION_5_1();
  v3 = type metadata accessor for NLRouterBridgeSubComponentLogger(v2);
  v4 = OUTLINED_FUNCTION_35(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  v7 = sub_1DC516F7C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_36_7();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CAD8, &qword_1DC525850);
    inited = swift_initStackObject();
    inited[1] = xmmword_1DC522F10;
    OUTLINED_FUNCTION_147();
    v20 = (*(v19 + 176))();
    if (v20)
    {

      v21 = 0uLL;
    }

    else
    {
      v21 = xmmword_1DC525360;
    }

    inited[2] = v21;
    OUTLINED_FUNCTION_147();
    v22 += 34;
    v77 = *v22;
    (*v22)();
    OUTLINED_FUNCTION_186();
    v76 = v1;
    v75 = v3;
    v78 = v10;
    if (v24)
    {
      v25 = xmmword_1DC525370;
    }

    else
    {
      sub_1DC372E5C(v23);
      v25 = 0uLL;
    }

    v26 = 0;
    inited[3] = v25;
    v27 = MEMORY[0x1E69E7CC0];
LABEL_9:
    v28 = &inited[v26 + 2] + 1;
    while (++v26 != 3)
    {
      v29 = v28 + 2;
      v30 = *v28;
      v28 += 2;
      if (v30)
      {
        v80 = v0;
        v31 = v15;
        v32 = v7;
        v33 = *(v29 - 3);

        v34 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = *(v27 + 2);
          v40 = OUTLINED_FUNCTION_13_0();
          v27 = sub_1DC2ACCD4(v40, v41, v42, v27);
        }

        v36 = *(v27 + 2);
        v35 = *(v27 + 3);
        v37 = v27;
        if (v36 >= v35 >> 1)
        {
          v43 = OUTLINED_FUNCTION_26(v35);
          v37 = sub_1DC2ACCD4(v43, v36 + 1, 1, v44);
        }

        *(v37 + 2) = v36 + 1;
        v27 = v37;
        v38 = &v37[16 * v36];
        *(v38 + 4) = v33;
        *(v38 + 5) = v30;
        v17 = v34;
        v7 = v32;
        v15 = v31;
        v0 = v80;
        goto LABEL_9;
      }
    }

    swift_setDeallocating();
    sub_1DC372C2C(&qword_1ECC7D0A0, &unk_1DC524070);
    if (*(v27 + 2))
    {
      v81 = v27;
      v82[0] = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
      OUTLINED_FUNCTION_62_9();
      sub_1DC327B3C(v45, v46, &unk_1DC5240F0);
      v47 = sub_1DC5176AC();
      v49 = v48;
      sub_1DC29120C();
      OUTLINED_FUNCTION_19_1();
      v50(v15);

      v51 = sub_1DC516F6C();
      v52 = sub_1DC517BAC();

      if (OUTLINED_FUNCTION_169())
      {
        v53 = OUTLINED_FUNCTION_140();
        v82[0] = OUTLINED_FUNCTION_143();
        *v53 = 136446466;
        v54 = sub_1DC291244(v47, v49, v82);

        *(v53 + 4) = v54;
        *(v53 + 12) = 2082;
        *(v53 + 14) = sub_1DC291244(*(v0 + 16), *(v0 + 24), v82);
        _os_log_impl(&dword_1DC287000, v51, v52, "%{public}s didn't arrive early enough for trpCandidateId: %{public}s. Proceeding with request without it.", v53, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_40_0();

        (*(v78 + 8))(v15, v7);
      }

      else
      {

        (*(v78 + 8))(v15, v7);
      }

      OUTLINED_FUNCTION_147();
      v56 = (*(v55 + 256))(1);
      (v77)(v56);
      OUTLINED_FUNCTION_186();
      if (v24)
      {

        v58 = sub_1DC5169DC();
        v60 = v59;

        v61 = *(v0 + 16);
        v62 = *(v0 + 24);
        v63 = *(v17 + qword_1EDAC9440);
        v65 = (*(*v0 + 360))(v82);
        if (*(v64 + 4) == 1)
        {
        }

        else
        {
          v66 = v64;
          OUTLINED_FUNCTION_1_18();
          sub_1DC374080();
          v79 = v17;
          v67 = *(v75 + 24);
          OUTLINED_FUNCTION_64_3();
          (*(v68 + 144))(v58, v60, v61, v62, v76 + v67, 0);

          v69 = sub_1DC510B6C();
          OUTLINED_FUNCTION_0_2(v69);
          v71 = v76 + v67;
          v17 = v79;
          (*(v70 + 8))(v71);
          *(v66 + 4) = 1;
        }

        v65(v82, 0);
      }

      else
      {
        sub_1DC372E5C(v57);
      }

      v72 = sub_1DC3895E0();
      OUTLINED_FUNCTION_36_7();
      sub_1DC2C5FC4(v72, v82);
      v73 = v83;
      v74 = v84;
      __swift_project_boxed_opaque_existential_1(v82, v83);
      sub_1DC38962C(v81, v17 + qword_1EDAC9460, v73, v74);

      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      sub_1DC36C2A4(v0);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC367F8C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_5_1();
  v2 = sub_1DC516F7C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_36_7();
  if (swift_weakLoadStrong())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CAD8, &qword_1DC525850);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DC522F20;
    OUTLINED_FUNCTION_147();
    v10 = (*(v9 + 176))();
    if (v10)
    {

      v11 = 0uLL;
    }

    else
    {
      v11 = xmmword_1DC525360;
    }

    *(inited + 32) = v11;
    v12 = MEMORY[0x1E69E7CC0];
    v13 = *(inited + 40);
    if (v13)
    {
      v14 = *(inited + 32);
      v15 = *(inited + 40);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = *(v12 + 2);
        v20 = OUTLINED_FUNCTION_13_0();
        v12 = sub_1DC2ACCD4(v20, v21, v22, v12);
      }

      v17 = *(v12 + 2);
      v16 = *(v12 + 3);
      if (v17 >= v16 >> 1)
      {
        v23 = OUTLINED_FUNCTION_26(v16);
        v12 = sub_1DC2ACCD4(v23, v17 + 1, 1, v12);
      }

      *(v12 + 2) = v17 + 1;
      v18 = &v12[16 * v17];
      *(v18 + 4) = v14;
      *(v18 + 5) = v13;
    }

    swift_setDeallocating();
    sub_1DC372C2C(&qword_1ECC7D0A0, &unk_1DC524070);
    if (*(v12 + 2))
    {
      v43[0] = v12;
      v24 = OUTLINED_FUNCTION_12_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      OUTLINED_FUNCTION_62_9();
      sub_1DC327B3C(v26, v27, &unk_1DC5240F0);
      v28 = sub_1DC5176AC();
      v30 = v29;
      v31 = sub_1DC29120C();
      (*(v5 + 16))(v1, v31, v2);

      v32 = sub_1DC516F6C();
      v33 = sub_1DC517BAC();

      if (os_log_type_enabled(v32, v33))
      {
        v42 = v2;
        v34 = OUTLINED_FUNCTION_140();
        v43[0] = OUTLINED_FUNCTION_143();
        *v34 = 136446466;
        v35 = sub_1DC291244(v28, v30, v43);

        *(v34 + 4) = v35;
        *(v34 + 12) = 2082;
        *(v34 + 14) = sub_1DC291244(*(v0 + 16), *(v0 + 24), v43);
        _os_log_impl(&dword_1DC287000, v32, v33, "%{public}s didn't arrive early enough for trpCandidateId: %{public}s. Proceeding with request without it.", v34, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_66();

        (*(v5 + 8))(v1, v42);
      }

      else
      {

        (*(v5 + 8))(v1, v2);
      }

      OUTLINED_FUNCTION_147();
      (*(v36 + 256))(1);
      v37 = sub_1DC3895E0();
      OUTLINED_FUNCTION_36_7();
      sub_1DC2C5FC4(v37, v43);
      v38 = v43[4];
      __swift_project_boxed_opaque_existential_1(v43, v43[3]);
      v39 = OUTLINED_FUNCTION_208();
      sub_1DC38962C(v39, v40, v41, v38);

      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      sub_1DC36C2A4(v0);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3683B0()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v63 = type metadata accessor for NLRouterBridgeSubComponentLogger(0);
  v3 = OUTLINED_FUNCTION_35(v63);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v64 = v7 - v6;
  OUTLINED_FUNCTION_12();
  v8 = sub_1DC516F7C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v67 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_153();
  v68 = sub_1DC515A5C();
  v17 = v16;
  v18 = sub_1DC29120C();
  v65 = *(v11 + 16);
  v66 = v18;
  v65(v1);

  v19 = sub_1DC516F6C();
  v20 = sub_1DC517B9C();

  if (os_log_type_enabled(v19, v20))
  {
    v62 = v11;
    v21 = v2;
    v22 = OUTLINED_FUNCTION_63();
    v23 = OUTLINED_FUNCTION_82();
    v69[0] = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_1DC291244(v68, v17, v69);
    _os_log_impl(&dword_1DC287000, v19, v20, "Received NLTRPCandidateMessage for trpId: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    OUTLINED_FUNCTION_54_12();
    v2 = v21;
    v11 = v62;
    OUTLINED_FUNCTION_66();
  }

  v24 = *(v11 + 8);
  v25 = v24(v1, v8);
  v26 = v8;
  v27 = (*(*v2 + qword_1ECC8F4E0 + 184))(v25);
  v28 = sub_1DC368934(v68, v17, v27);

  if (v28)
  {

    v29 = sub_1DC371E44(v28);
    sub_1DC5169DC();
    v30 = v28[2];
    v31 = v28[3];
    v32 = *(v2 + qword_1EDAC9440);
    v33 = *(*v28 + 336);
    v34 = v28;
    if (v29)
    {
      v35 = v33(v69);
      OUTLINED_FUNCTION_98_2(v35, v36);
      if (!v38)
      {
        v39 = v37;
        OUTLINED_FUNCTION_1_18();
        v40 = v64;
        sub_1DC374080();
        v41 = *(v63 + 24);
        OUTLINED_FUNCTION_64_3();
        v43 = *(v42 + 144);
        OUTLINED_FUNCTION_60();
        OUTLINED_FUNCTION_221();
        v44 = v28;
        v45();
LABEL_14:
        v34 = v44;

        v57 = sub_1DC510B6C();
        OUTLINED_FUNCTION_0_2(v57);
        (*(v58 + 8))(v40 + v41);
        *(v39 + 4) = 1;
        goto LABEL_15;
      }
    }

    else
    {
      v51 = v33(v69);
      OUTLINED_FUNCTION_98_2(v51, v52);
      if (!v38)
      {
        v39 = v53;
        OUTLINED_FUNCTION_1_18();
        v40 = v64;
        sub_1DC374080();
        v41 = *(v63 + 24);
        OUTLINED_FUNCTION_64_3();
        v55 = *(v54 + 136);
        OUTLINED_FUNCTION_60();
        OUTLINED_FUNCTION_221();
        v44 = v28;
        v56();
        goto LABEL_14;
      }
    }

LABEL_15:
    v34(v69, 0);
    v59 = sub_1DC5152FC();
    v60 = sub_1DC368984(v59);

    v61 = sub_1DC363324(v60);

    (*(*v28 + 184))(v61);
    sub_1DC36C2A4(v28);

    goto LABEL_16;
  }

  (v65)(v67, v66, v8);

  v46 = sub_1DC516F6C();
  v47 = sub_1DC517B9C();

  if (OUTLINED_FUNCTION_172())
  {
    v48 = OUTLINED_FUNCTION_63();
    v49 = OUTLINED_FUNCTION_82();
    v69[0] = v49;
    *v48 = 136446210;
    v50 = sub_1DC291244(v68, v17, v69);

    *(v48 + 4) = v50;
    _os_log_impl(&dword_1DC287000, v46, v47, "Receiving NLTRPCandidateMessage for unknown trpId: %{public}s. Discarding.", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_40_0();
  }

  else
  {
  }

  v24(v67, v26);
LABEL_16:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC368934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DC2AEB04(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_1DC368984(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v32 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(*(a1 + 56) + 8 * v12);
    if (v13)
    {
      v14 = (*(a1 + 48) + 16 * v12);
      v30 = *v14;
      v31 = v14[1];
      v15 = *(v2 + 16);
      if (*(v2 + 24) <= v15)
      {
        v17 = v13;

        sub_1DC372F7C(v15 + 1, 1);
        v2 = v32;
      }

      else
      {
        v16 = v13;
      }

      v18 = *(v2 + 40);
      sub_1DC5182FC();
      sub_1DC51769C();
      result = sub_1DC51833C();
      v19 = v2 + 64;
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v20) >> 6;
        v24 = v31;
        while (++v22 != v26 || (v25 & 1) == 0)
        {
          v27 = v22 == v26;
          if (v22 == v26)
          {
            v22 = 0;
          }

          v25 |= v27;
          v28 = *(v19 + 8 * v22);
          if (v28 != -1)
          {
            v23 = __clz(__rbit64(~v28)) + (v22 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      v24 = v31;
LABEL_23:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v29 = (*(v2 + 48) + 16 * v23);
      *v29 = v30;
      v29[1] = v24;
      *(*(v2 + 56) + 8 * v23) = v13;
      ++*(v2 + 16);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1DC368BF0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_189();
  v5 = v4();
  v6 = (v2 + qword_1EDAC93D0);
  v7 = *(v2 + qword_1EDAC93D0 + 8);
  *v6 = v5;
  v6[1] = v8;

  v10 = a2(v9);
  v12 = v11;
  v13 = (*(*v2 + qword_1ECC8F4E0 + 184))();
  v14 = sub_1DC368934(v10, v12, v13);

  if (v14)
  {
    OUTLINED_FUNCTION_204_0();
    sub_1DC37207C();
  }

  return result;
}

void sub_1DC368CEC()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  v43 = v7;
  v8 = OUTLINED_FUNCTION_12();
  v9 = type metadata accessor for NLRouterBridgeSubComponentLogger(v8);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v14 = (v13 - v12);
  v15 = sub_1DC516F5C();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v22 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v42 - v23);
  v25 = sub_1DC378264();
  static SignpostLogger.begin(_:enableTelemetry:)(*v25, v25[1], *(v25 + 16), 1, &unk_1F57F96B8, &off_1F57F9618, v24);
  (*(*v2 + 344))();
  v42 = v0;
  v26 = sub_1DC5169DC();
  v27 = v2[2];
  v28 = v2[3];
  v29 = *v14;
  v30 = *(v10 + 32);
  (*(**(v0 + qword_1EDAC9440) + 128))(v26);

  OUTLINED_FUNCTION_71_5();
  sub_1DC3740D4();
  sub_1DC517AAC();
  v31 = v43;
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  OUTLINED_FUNCTION_195();
  v36 = swift_allocObject();
  swift_weakInit();
  (*(v18 + 16))(v22, v24, v15);
  v37 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v38 = swift_allocObject();
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 4) = v36;
  *(v38 + 5) = v2;
  (*(v18 + 32))(&v38[v37], v22, v15);

  v39 = OUTLINED_FUNCTION_27_7();
  sub_1DC315A04(v39, v40, v31, v41, v38);
  (*(v18 + 8))(v24, v15);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC368FFC()
{
  OUTLINED_FUNCTION_1_0();
  v0[23] = v1;
  v0[24] = v2;
  v0[22] = v3;
  v4 = sub_1DC51737C();
  v0[25] = v4;
  OUTLINED_FUNCTION_52(v4);
  v0[26] = v5;
  v7 = *(v6 + 64);
  v0[27] = OUTLINED_FUNCTION_118();
  v8 = sub_1DC5173CC();
  v0[28] = v8;
  OUTLINED_FUNCTION_52(v8);
  v0[29] = v9;
  v11 = *(v10 + 64);
  v0[30] = OUTLINED_FUNCTION_118();
  v12 = sub_1DC5151BC();
  v0[31] = v12;
  OUTLINED_FUNCTION_52(v12);
  v0[32] = v13;
  v15 = *(v14 + 64);
  v0[33] = OUTLINED_FUNCTION_118();
  v16 = sub_1DC516F5C();
  v0[34] = v16;
  OUTLINED_FUNCTION_52(v16);
  v0[35] = v17;
  v0[36] = *(v18 + 64);
  v0[37] = OUTLINED_FUNCTION_124();
  v0[38] = swift_task_alloc();
  v19 = sub_1DC516D3C();
  OUTLINED_FUNCTION_10(v19);
  v21 = *(v20 + 64);
  v0[39] = OUTLINED_FUNCTION_118();
  v22 = sub_1DC515E1C();
  v0[40] = v22;
  OUTLINED_FUNCTION_52(v22);
  v0[41] = v23;
  v25 = *(v24 + 64);
  v0[42] = OUTLINED_FUNCTION_118();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CED8, &qword_1DC525810);
  v0[43] = v26;
  OUTLINED_FUNCTION_10(v26);
  v28 = *(v27 + 64);
  v0[44] = OUTLINED_FUNCTION_118();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_10(v29);
  v31 = *(v30 + 64);
  v0[45] = OUTLINED_FUNCTION_124();
  v0[46] = swift_task_alloc();
  v0[47] = swift_task_alloc();
  v32 = sub_1DC510B6C();
  v0[48] = v32;
  OUTLINED_FUNCTION_52(v32);
  v0[49] = v33;
  v35 = *(v34 + 64);
  v0[50] = OUTLINED_FUNCTION_124();
  v0[51] = swift_task_alloc();
  v0[52] = swift_task_alloc();
  v36 = sub_1DC516F7C();
  v0[53] = v36;
  OUTLINED_FUNCTION_52(v36);
  v0[54] = v37;
  v39 = *(v38 + 64);
  v0[55] = OUTLINED_FUNCTION_124();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v0[59] = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v40, v41, v42);
}

uint64_t sub_1DC36935C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_155_2();
  a29 = v31;
  a30 = v32;
  OUTLINED_FUNCTION_188_0();
  a28 = v30;
  v33 = v30[22];
  OUTLINED_FUNCTION_36_7();
  Strong = swift_weakLoadStrong();
  v30[60] = Strong;
  if (Strong)
  {
    v35 = v30[23];
    v30[61] = *(v35 + 32);
    v36 = *(v35 + 40);
    v30[62] = v36;
    if (v36)
    {
      v30[63] = *(Strong + qword_1EDAC9440);

      sub_1DC5169DC();
      OUTLINED_FUNCTION_141_1();
      v30[64] = v37;
      OUTLINED_FUNCTION_117_2();
      v39 = *(v38 + 152);
      v130 = v38 + 152;
      v133 = v39 + *v39;
      v40 = v39[1];
      swift_task_alloc();
      OUTLINED_FUNCTION_79_0();
      v30[65] = v41;
      *v41 = v42;
      v41[1] = sub_1DC369978;
      v43 = v30[52];
      OUTLINED_FUNCTION_122_1();

      return v47(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, aBlock, a16, v130, v133, a19, a20, a21, a22);
    }

    v72 = v30[59];
    v73 = v30[53];
    v74 = v30[54];
    sub_1DC29120C();
    v75 = OUTLINED_FUNCTION_45_8();
    v76(v75);
    v77 = sub_1DC516F6C();
    v78 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_25_0(v78))
    {
      *OUTLINED_FUNCTION_35_8() = 0;
      OUTLINED_FUNCTION_96_1();
      _os_log_impl(v79, v80, v81, v82, v83, 2u);
      OUTLINED_FUNCTION_58();
    }

    v84 = v30[59];
    v85 = v30[53];
    v86 = v30[54];
    v87 = v30[37];
    v89 = v30[34];
    v88 = v30[35];
    v117 = v30[36];
    v119 = v30[30];
    v131 = v30[29];
    v134 = v30[28];
    v128 = v30[26];
    v123 = v30[27];
    v125 = v30[25];
    v90 = v30[24];
    a9 = v30[23];

    (*(v86 + 8))(v84, v85);

    v121 = sub_1DC5169AC();

    OUTLINED_FUNCTION_195();
    v91 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_19_1();
    v92(v87, v90, v89);
    v93 = *(v88 + 80);
    OUTLINED_FUNCTION_190();
    v94 = swift_allocObject();
    *(v94 + 16) = v91;
    *(v94 + 24) = a9;
    (*(v88 + 32))(v94 + v85, v87, v89);
    v30[6] = sub_1DC37480C;
    v30[7] = v94;
    v30[2] = MEMORY[0x1E69E9820];
    v30[3] = 1107296256;
    v30[4] = sub_1DC2AECB0;
    v30[5] = &block_descriptor_6;
    v95 = _Block_copy(v30 + 2);

    sub_1DC51739C();
    v30[20] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_5_23();
    sub_1DC374BAC(v96, v97);
    v98 = OUTLINED_FUNCTION_48_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v98, v99);
    OUTLINED_FUNCTION_4_18();
    OUTLINED_FUNCTION_70_4();
    sub_1DC327B3C(v100, v101, v102);
    sub_1DC517E9C();
    MEMORY[0x1E12964B0](0, v119, v123, v95);
    _Block_release(v95);

    v103 = *(v128 + 8);
    v104 = OUTLINED_FUNCTION_42_2();
    v105(v104);
    (*(v131 + 8))(v119, v134);
    v106 = v30[7];
  }

  else
  {
    v53 = v30[56];
    v54 = v30[53];
    v55 = v30[54];
    v56 = v30[23];
    sub_1DC29120C();
    v57 = OUTLINED_FUNCTION_45_8();
    v58(v57);

    v59 = sub_1DC516F6C();
    v60 = sub_1DC517BAC();

    v61 = OUTLINED_FUNCTION_169();
    v62 = v30[56];
    v63 = v30[53];
    v64 = v30[54];
    if (v61)
    {
      v65 = v30[23];
      v66 = OUTLINED_FUNCTION_63();
      v67 = OUTLINED_FUNCTION_82();
      a19 = v67;
      *v66 = 136446210;
      *(v66 + 4) = sub_1DC291244(*(v65 + 16), *(v65 + 24), &a19);
      OUTLINED_FUNCTION_128_0(&dword_1DC287000, v68, v60, "RequestProcessor deallocated before query decoration task for trpId: %{public}s started.");
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_67();
    }

    v69 = *(v64 + 8);
    v70 = OUTLINED_FUNCTION_63_0();
    v71(v70);
  }

  OUTLINED_FUNCTION_12_14();
  v118 = v108;
  v120 = v107;
  v122 = v30[42];
  v124 = v30[39];
  v126 = v30[38];
  aBlocka = v30[37];
  v129 = v30[33];
  v132 = v30[30];
  v135 = v30[27];

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_122_1();

  return v110(v109, v110, v111, v112, v113, v114, v115, v116, a9, v118, v120, v122, v124, v126, aBlocka, v129, v132, v135, a19, a20, a21, a22);
}

uint64_t sub_1DC369978()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_38();
  *v3 = v2;
  v5 = v4[65];
  v6 = v4[64];
  v7 = v4[63];
  v8 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v9 = v8;
  *(v10 + 528) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DC369AB4()
{
  v112 = v0;
  v1 = v0[60];
  v2 = v0[47];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[40];
  v6 = v0[41];
  OUTLINED_FUNCTION_36_7();
  (*(v6 + 104))(v2, *MEMORY[0x1E69D0530], v5);
  v7 = OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v5);
  v10 = *(v4 + 48);
  OUTLINED_FUNCTION_70_4();
  sub_1DC2DB2AC();
  sub_1DC2DB2AC();
  v11 = &unk_1EDAC9000;
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    v12 = v0[40];
    sub_1DC2AAF50(v0[47], &unk_1ECC7D340, &qword_1DC525380);
    OUTLINED_FUNCTION_39(v3 + v10, 1, v12);
    if (!v13)
    {
      goto LABEL_7;
    }

    sub_1DC2AAF50(v0[44], &unk_1ECC7D340, &qword_1DC525380);
  }

  else
  {
    v14 = v0[46];
    v15 = v0[44];
    v16 = v0[40];
    sub_1DC2DB2AC();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3 + v10, 1, v16);
    v18 = v0[46];
    if (EnumTagSinglePayload == 1)
    {
      v19 = v0[40];
      v20 = v0[41];
      sub_1DC2AAF50(v0[47], &unk_1ECC7D340, &qword_1DC525380);
      v21 = *(v20 + 8);
      v22 = OUTLINED_FUNCTION_43();
      v23(v22);
LABEL_7:
      sub_1DC2AAF50(v0[44], &qword_1ECC7CED8, &qword_1DC525810);
LABEL_8:
      v24 = 1;
      goto LABEL_11;
    }

    v25 = v0[44];
    v26 = v0[41];
    v27 = v0[40];
    (*(v26 + 32))(v0[42], v3 + v10, v27);
    sub_1DC374BAC(&qword_1ECC7BB40, MEMORY[0x1E69D0568]);
    v28 = sub_1DC5176CC();
    v29 = *(v26 + 8);
    v30 = OUTLINED_FUNCTION_54_2();
    v29(v30);
    v31 = OUTLINED_FUNCTION_187();
    sub_1DC2AAF50(v31, v32, &qword_1DC525380);
    (v29)(v18, v27);
    v11 = &unk_1EDAC9000;
    v33 = OUTLINED_FUNCTION_42_2();
    sub_1DC2AAF50(v33, v34, &qword_1DC525380);
    if ((v28 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v35 = *(v0[60] + v11[135]);
  OUTLINED_FUNCTION_12_0();
  v37 = *(v36 + 112);

  LOBYTE(v37) = v37(v38);

  v24 = v37 ^ 1;
LABEL_11:
  v109 = v24;
  v39 = v0[62];
  v102 = v0[61];
  v103 = v0[58];
  v101 = v0[54];
  v104 = v0[53];
  v40 = v0[51];
  v108 = v0[52];
  v42 = v0[49];
  v41 = v0[50];
  v43 = v0[48];
  v100 = v0[39];
  v106 = v0[23];
  v44 = *(v0[60] + v11[135]);
  OUTLINED_FUNCTION_12_0();
  v46 = *(v45 + 104);

  v46(0);

  sub_1DC5169DC();
  sub_1DC36B608();
  (*(v42 + 16))(v40, v108, v43);
  sub_1DC5169EC();
  sub_1DC510B1C();
  v47 = *(v42 + 8);
  v0[67] = v47;
  v0[68] = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47(v41, v43);
  sub_1DC516D1C();
  v48 = objc_allocWithZone(sub_1DC516D0C());
  v49 = sub_1DC516CFC();
  v0[69] = v49;
  v50 = sub_1DC29120C();
  v0[70] = v50;
  v51 = *(v101 + 16);
  v0[71] = v51;
  v0[72] = (v101 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v51(v103, v50, v104);

  v52 = v49;
  v53 = sub_1DC516F6C();
  v54 = sub_1DC517B9C();

  if (os_log_type_enabled(v53, v54))
  {
    v107 = v47;
    v55 = v0[45];
    v56 = v0[40];
    v57 = v0[23];
    v58 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *v58 = 136446978;
    *(v58 + 4) = sub_1DC291244(*(v57 + 16), *(v57 + 24), &v111);
    *(v58 + 12) = 2080;
    v105 = v52;
    v59 = sub_1DC516CDC();
    v61 = sub_1DC291244(v59, v60, &v111);

    *(v58 + 14) = v61;
    *(v58 + 22) = 2080;
    sub_1DC2DB2AC();
    v62 = __swift_getEnumTagSinglePayload(v55, 1, v56);
    v63 = v0[45];
    if (v62)
    {
      sub_1DC2AAF50(v0[45], &unk_1ECC7D340, &qword_1DC525380);
      v64 = 0;
      v65 = 0xE000000000000000;
    }

    else
    {
      v71 = v0[41];
      v72 = v0[42];
      v73 = v0[40];
      OUTLINED_FUNCTION_19_1();
      v74(v72, v63, v73);
      sub_1DC2AAF50(v63, &unk_1ECC7D340, &qword_1DC525380);
      v64 = sub_1DC515E0C();
      v65 = v75;
      v76 = *(v71 + 8);
      v77 = OUTLINED_FUNCTION_147_0();
      v78(v77);
    }

    v79 = v0[58];
    v81 = v0[53];
    v80 = v0[54];
    v82 = sub_1DC291244(v64, v65, &v111);

    *(v58 + 24) = v82;
    *(v58 + 32) = 1024;
    *(v58 + 34) = v109 & 1;
    _os_log_impl(&dword_1DC287000, v53, v54, "Calling QueryDecoration.queryDecorationCollection for trpId: %{public}s with: %s forRequestType: %s refreshServices: %{BOOL}d", v58, 0x26u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_67();

    v69 = *(v80 + 8);
    v69(v79, v81);
    v52 = v105;
    v47 = v107;
  }

  else
  {
    v66 = v0[58];
    v67 = v0[53];
    v68 = v0[54];

    v69 = *(v68 + 8);
    v70 = OUTLINED_FUNCTION_31_0();
    (v69)(v70);
  }

  v0[73] = v69;
  v83 = v0[60];
  v84 = v0[51];
  v85 = v0[48];
  v86 = v0[38];
  v87 = v0[33];
  v88 = sub_1DC378270();
  v0[74] = v88;
  static SignpostLogger.begin(_:enableTelemetry:)(*v88, v88[1], *(v88 + 16), 1, &unk_1F57F96B8, &off_1F57F9618, v86);
  sub_1DC5169EC();
  sub_1DC510B1C();
  v89 = OUTLINED_FUNCTION_45_2();
  (v47)(v89);
  OUTLINED_FUNCTION_12_3();
  sub_1DC5151CC();
  v90 = (v83 + qword_1EDAC9430);
  v91 = *(v83 + qword_1EDAC9430 + 24);
  v92 = v90[4];
  OUTLINED_FUNCTION_121_1(v90, v91);
  v93 = *(v92 + 8);
  OUTLINED_FUNCTION_6();
  v110 = (v94 + *v94);
  v96 = *(v95 + 4);
  v97 = swift_task_alloc();
  v0[75] = v97;
  *v97 = v0;
  v97[1] = sub_1DC36A328;
  v98 = v0[33];

  return (v110)(v52, v98, v91, v92);
}

uint64_t sub_1DC36A328()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_38();
  *v3 = v2;
  v5 = *(v4 + 600);
  *v3 = *v1;
  *(v2 + 608) = v6;
  *(v2 + 616) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC36A430()
{
  v111 = v0;
  v1 = v0[76];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[57];
  v6 = v0[53];
  v7 = v0[23];
  static SignpostLogger.end(_:_:)(v0[38], *v0[74], *(v0[74] + 8), *(v0[74] + 16), &unk_1F57F96B8, &off_1F57F9618);
  v3(v5, v4, v6);
  v8 = v1;

  v108 = v8;
  v9 = sub_1DC516F6C();
  v10 = sub_1DC517B9C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[76];
  v13 = v0[67];
  v96 = v0[57];
  v99 = v0[73];
  v94 = v0[53];
  v14 = v0[52];
  v15 = v0[48];
  v16 = v0[35];
  v102 = v0[34];
  v105 = v0[38];
  v17 = v0[32];
  v87 = v0[69];
  v89 = v0[33];
  v82 = v0[54];
  v83 = v0[31];
  if (v11)
  {
    v81 = v0[68];
    v18 = v0[23];
    v78 = v0[67];
    v19 = OUTLINED_FUNCTION_140();
    v110 = OUTLINED_FUNCTION_143();
    *v19 = 136446466;
    *(v19 + 4) = sub_1DC291244(*(v18 + 16), *(v18 + 24), &v110);
    *(v19 + 12) = 2080;
    v73 = v15;
    v15 = sub_1DC516D5C();
    v21 = v20;

    sub_1DC291244(v15, v21, &v110);
    OUTLINED_FUNCTION_168();
    *(v19 + 14) = v12;
    _os_log_impl(&dword_1DC287000, v9, v10, "QueryDecoration.queryDecorationCollection returned for trpId: %{public}s: %s", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_67();

    v30 = OUTLINED_FUNCTION_198(v22, v23, v24, v25, v26, v27, v28, v29, v73, v14, v78, v81, v82, v83, v87, v89, v94, v96);
    v31(v30);
    (*(v17 + 8))(v90, v84);
    (*(v16 + 8))(v105, v102);
    v79(v76, v74);
  }

  else
  {

    v40 = OUTLINED_FUNCTION_198(v32, v33, v34, v35, v36, v37, v38, v39, v72, v75, v77, v80, v82, v83, v87, v89, v94, v96);
    v41(v40);
    (*(v17 + 8))(v91, v85);
    (*(v16 + 8))(v105, v102);
    v13(v14, v15);
  }

  v42 = v0[60];
  v43 = v0[36];
  v44 = v0[37];
  v45 = v0[34];
  v46 = v0[35];
  v103 = v0[29];
  v106 = v0[28];
  v86 = v0[30];
  v88 = v0[27];
  v100 = v0[26];
  v92 = v0[25];
  v47 = v0[23];
  v48 = v0[24];
  v97 = sub_1DC5169AC();

  OUTLINED_FUNCTION_195();
  swift_allocObject();
  OUTLINED_FUNCTION_176_0();
  v49 = OUTLINED_FUNCTION_85_4();
  v50(v49);
  OUTLINED_FUNCTION_146_2();
  v51 = swift_allocObject();
  *(v51 + 16) = v15;
  *(v51 + 24) = v47;
  v52 = OUTLINED_FUNCTION_88_0(v51);
  v53(v52);
  OUTLINED_FUNCTION_14_9();
  v0[8] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_13_12(COERCE_DOUBLE(1107296256));
  v0[10] = v54;
  v0[11] = &block_descriptor_63;
  v55 = _Block_copy(v0 + 8);

  sub_1DC51739C();
  v0[21] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5_23();
  sub_1DC374BAC(v56, v57);
  v58 = OUTLINED_FUNCTION_113_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v58, v59);
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_77_3();
  sub_1DC327B3C(v60, v61, v62);
  sub_1DC517E9C();
  v63 = OUTLINED_FUNCTION_154_0();
  MEMORY[0x1E12964B0](v63);
  _Block_release(v55);

  sub_1DC372E70(v108);

  v64 = *(v100 + 8);
  v65 = OUTLINED_FUNCTION_113_0();
  v66(v65);
  v67 = OUTLINED_FUNCTION_209();
  v68(v67);
  v69 = v0[13];

  OUTLINED_FUNCTION_12_14();
  v93 = v0[42];
  v95 = v0[39];
  v98 = v0[38];
  v101 = v0[37];
  v104 = v0[33];
  v107 = v0[30];
  v109 = v0[27];

  OUTLINED_FUNCTION_2_2();

  return v70();
}

void sub_1DC36B0C0()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_155();
  v6 = type metadata accessor for NLRouterBridgeSubComponentLogger(v5);
  v7 = OUTLINED_FUNCTION_35(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_36_7();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1DC37402C();
    v12 = OUTLINED_FUNCTION_33_1();
    *v13 = 0;
    (*(*v4 + 280))(v12 | 0x8000000000000000);
    v14 = sub_1DC378264();
    static SignpostLogger.end(_:_:)(v2, *v14, v14[1], *(v14 + 16), &unk_1F57F96B8, &off_1F57F9618);

    v27 = sub_1DC5169DC();
    v16 = v15;

    v17 = v4[2];
    v18 = v4[3];
    v19 = *(v11 + qword_1EDAC9440);
    v21 = (*(*v4 + 360))(v28);
    if (*(v20 + 4) == 1)
    {
    }

    else
    {
      v22 = v20;
      OUTLINED_FUNCTION_1_18();
      sub_1DC374080();
      v23 = *(v6 + 24);
      OUTLINED_FUNCTION_64_3();
      (*(v24 + 144))(v27, v16, v17, v18, v0 + v23, 2);

      v25 = sub_1DC510B6C();
      OUTLINED_FUNCTION_0_2(v25);
      (*(v26 + 8))(v0 + v23);
      *(v22 + 4) = 1;
    }

    v21(v28, 0);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC36B30C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_5_1();
  v7 = type metadata accessor for NLRouterBridgeSubComponentLogger(v6);
  v8 = OUTLINED_FUNCTION_35(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_36_7();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    OUTLINED_FUNCTION_147();
    v14 = *(v13 + 280);
    sub_1DC372E4C(v5);
    v14(v5);
    v15 = sub_1DC378264();
    static SignpostLogger.end(_:_:)(v3, *v15, v15[1], *(v15 + 16), &unk_1F57F96B8, &off_1F57F9618);

    v16 = sub_1DC5169DC();
    v18 = v17;

    v19 = v0[2];
    v42 = v0[3];
    v20 = *(v12 + qword_1EDAC9440);
    v21 = *(*v0 + 360);
    if ((v5 & 0x8000000000000000) != 0)
    {
      v24 = v0;
      v34 = v21(v43);
      OUTLINED_FUNCTION_98_2(v34, v35);
      if (!v28)
      {
        v37 = v36;
        OUTLINED_FUNCTION_1_18();
        sub_1DC374080();
        v38 = *(v7 + 24);
        OUTLINED_FUNCTION_64_3();
        (*(v39 + 144))(v16, v18, v19, v42, v1 + v38, 2);
        v24 = v0;

        v40 = sub_1DC510B6C();
        OUTLINED_FUNCTION_0_2(v40);
        (*(v41 + 8))(v1 + v38);
        *(v37 + 4) = 1;
        goto LABEL_8;
      }
    }

    else
    {
      v22 = v0[2];
      v23 = v16;
      v24 = v0;
      v25 = v21(v43);
      OUTLINED_FUNCTION_98_2(v25, v26);
      if (!v28)
      {
        v29 = v27;
        OUTLINED_FUNCTION_1_18();
        sub_1DC374080();
        v30 = *(v7 + 24);
        OUTLINED_FUNCTION_64_3();
        (*(v31 + 136))(v23, v18, v22, v42, v1 + v30);
        v24 = v0;

        v32 = sub_1DC510B6C();
        OUTLINED_FUNCTION_0_2(v32);
        (*(v33 + 8))(v1 + v30);
        *(v29 + 4) = 1;
LABEL_8:
        v24(v43, 0);
        sub_1DC36C2A4(v0);

        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

LABEL_9:
  OUTLINED_FUNCTION_34();
}

size_t sub_1DC36B608()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEC0, &qword_1DC5257C0);
  OUTLINED_FUNCTION_155();
  v1 = sub_1DC516DAC();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v5 = *(v4 + 72);
  v6 = *(v2 + 80);
  OUTLINED_FUNCTION_190();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DC522F00;
  v8 = v7 + v0;
  v9 = *(v3 + 104);
  v9(v8, *MEMORY[0x1E69A9150], v1);
  v9(v8 + v5, *MEMORY[0x1E69A9148], v1);
  v9(v8 + 2 * v5, *MEMORY[0x1E69A9140], v1);
  v10 = sub_1DC37342C(v7);

  return sub_1DC36B738(v10);
}