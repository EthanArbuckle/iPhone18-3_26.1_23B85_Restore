void sub_227BEF32C()
{
  OUTLINED_FUNCTION_616();
  v1 = OUTLINED_FUNCTION_142_3();
  OUTLINED_FUNCTION_312(v1);
  *(v0 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8800, &qword_227D5B738);
  OUTLINED_FUNCTION_0_39();
  sub_227C164D0(&unk_280E7BC20);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_502();
  OUTLINED_FUNCTION_501(v2);
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_430();
  *(v0 + 16) = 0x101010101010101;
  OUTLINED_FUNCTION_500();
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_141_2();
  v3 = OUTLINED_FUNCTION_118_1();
  sub_227B132F0(v3, v4);
  swift_endAccess();
  OUTLINED_FUNCTION_615();
}

uint64_t sub_227BEF418()
{
  OUTLINED_FUNCTION_558();
  result = sub_227BEC488();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_227BEF448()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v145 = v4;
  v146 = v5;
  v6 = sub_227D49328();
  v7 = OUTLINED_FUNCTION_9(v6);
  v142 = v8;
  v143 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = sub_227D4CAB8();
  v15 = OUTLINED_FUNCTION_9(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_3();
  v138 = v20;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_438();
  v22 = sub_227D4CCB8();
  v23 = OUTLINED_FUNCTION_5(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_3();
  v133 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_104();
  v31 = sub_227D49188();
  v32 = OUTLINED_FUNCTION_9(v31);
  v137 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_3();
  v136 = v36;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_314();
  v132 = v38;
  OUTLINED_FUNCTION_191_2();
  v39 = sub_227D4CCF8();
  v40 = OUTLINED_FUNCTION_9(v39);
  v140 = v41;
  v141 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_3();
  v134 = v44;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v45);
  v47 = &v129 - v46;
  v144 = v14;
  v139 = &v129 - v46;
  if (v3)
  {
    v133 = v31;
    sub_227D4CCC8();
  }

  else
  {
    v129 = v13;
    v130 = v0;
    v135 = v17;
    v48 = v146[4];
    v131 = __swift_project_boxed_opaque_existential_1(v146, v146[3]);
    v49 = sub_227B281AC();
    v50 = *v49;
    v51 = v49[1];
    v52 = objc_opt_self();
    sub_227D4CE58();
    v53 = [v52 defaultManager];
    v54 = *(v48 + 32);
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_120();
    v55 = v145;
    v58(v56, v57);

    if (__swift_getEnumTagSinglePayload(v1, 1, v31) == 1)
    {
      sub_227C1CB1C(v1, &qword_27D7E6CD8);
      sub_227B1AF8C();
      v59 = v135;
      OUTLINED_FUNCTION_588();
      v60(v130);
      v61 = v142;
      v62 = v143;
      v63 = *(v142 + 16);
      v64 = OUTLINED_FUNCTION_173();
      v65(v64);
      v66 = sub_227D4CA98();
      v67 = sub_227D4D438();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = OUTLINED_FUNCTION_12_1();
        v141 = OUTLINED_FUNCTION_420();
        v147 = v141;
        *v68 = 136315394;
        OUTLINED_FUNCTION_298();
        *(v68 + 4) = sub_227B1B1A4(0xD00000000000001ALL, v69, v70);
        *(v68 + 12) = 2080;
        OUTLINED_FUNCTION_86_3();
        sub_227C1CC14(v71);
        v72 = sub_227D4DA38();
        v73 = *(v61 + 8);
        v74 = OUTLINED_FUNCTION_267();
        v73(v74);
        v75 = OUTLINED_FUNCTION_58();
        sub_227B1B1A4(v75, v76, v77);
        OUTLINED_FUNCTION_595();

        *(v68 + 14) = v72;
        _os_log_impl(&dword_227B0D000, v66, v67, "%s failed to create db url for locale: %s", v68, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_135_3();
        MEMORY[0x22AAA7130]();
        OUTLINED_FUNCTION_135_3();
        MEMORY[0x22AAA7130]();

        (v73)(v145, v62);
        (*(v59 + 8))(v130, v144);
        goto LABEL_14;
      }

      v126 = *(v61 + 8);
      v126(v55, v62);
      v127 = OUTLINED_FUNCTION_267();
      (v126)(v127);
      v128 = *(v59 + 8);
      v120 = OUTLINED_FUNCTION_116_0();
LABEL_13:
      v122(v120, v121);
      goto LABEL_14;
    }

    v78 = v137;
    v79 = *(v137 + 32);
    v80 = v132;
    v81 = OUTLINED_FUNCTION_82();
    v82(v81);
    v14 = "itionStore.store";
    v83 = *(v78 + 16);
    v84 = OUTLINED_FUNCTION_340();
    v85(v84);
    sub_227D4CCA8();
    v47 = v139;
    OUTLINED_FUNCTION_603(0xD00000000000001ALL, 0x8000000227D77420);
    v86 = *(v78 + 8);
    v133 = v31;
    v86(v80, v31);
    v17 = v135;
  }

  sub_227D4CBB8();
  OUTLINED_FUNCTION_419();
  sub_227D4CDE8();
  sub_227C1CC54();
  sub_227D4CD38();
  sub_227C1CCA8();
  v87 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_520();
  OUTLINED_FUNCTION_482();

  v89 = v140;
  v88 = v141;
  if (!v47)
  {
    v117 = OUTLINED_FUNCTION_423();
    v118(v117);
    v119 = *(v89 + 8);
    v120 = OUTLINED_FUNCTION_82();
    goto LABEL_13;
  }

  type metadata accessor for ChallengeDefinitionStoreActor();
  OUTLINED_FUNCTION_198_2();
  swift_allocObject();
  OUTLINED_FUNCTION_419();
  v90 = sub_227D4CB88();
  OUTLINED_FUNCTION_166_2(v90);
  swift_allocObject();
  OUTLINED_FUNCTION_280();
  swift_retain_n();
  sub_227D4CB98();
  OUTLINED_FUNCTION_342();
  v91 = sub_227D4CD28();
  OUTLINED_FUNCTION_166_2(v91);
  swift_allocObject();
  OUTLINED_FUNCTION_78_0();
  v92 = sub_227D4CD18();
  OUTLINED_FUNCTION_261();
  v94 = sub_227C1CC14(v93);
  *(v14 + 2) = v92;
  *(v14 + 3) = v94;
  *(v14 + 4) = v47;
  v95 = sub_227B1AF8C();
  v96 = v138;
  (*(v17 + 16))(v138, v95, v144);
  OUTLINED_FUNCTION_588();
  v97 = v134;
  v98(v134, v47, v88);
  v99 = sub_227D4CA98();
  v100 = sub_227D4D428();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = OUTLINED_FUNCTION_12_1();
    v102 = OUTLINED_FUNCTION_420();
    v135 = v17;
    v132 = v102;
    v147 = v102;
    *v101 = 136315394;
    OUTLINED_FUNCTION_298();
    *(v101 + 4) = sub_227B1B1A4(0xD00000000000001ALL, v103, v104);
    *(v101 + 12) = 2080;
    MEMORY[0x22AAA5A20]();
    sub_227D490C8();
    OUTLINED_FUNCTION_492();
    v105 = OUTLINED_FUNCTION_225();
    v106(v105, v133);
    v107 = *(v89 + 8);
    v108 = v97;
    v109 = v141;
    v107(v108, v141);
    v110 = OUTLINED_FUNCTION_116_0();
    v113 = sub_227B1B1A4(v110, v111, v112);

    *(v101 + 14) = v113;
    _os_log_impl(&dword_227B0D000, v99, v100, "%s initialized at: %s", v101, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_135_3();
    MEMORY[0x22AAA7130]();
    v114 = OUTLINED_FUNCTION_101_2();
    MEMORY[0x22AAA7130](v114);

    v115 = OUTLINED_FUNCTION_423();
    v116(v115);
    (*(v135 + 8))(v138, v144);
    v107(v139, v109);
  }

  else
  {

    v123 = OUTLINED_FUNCTION_423();
    v124(v123);
    v125 = *(v89 + 8);
    v125(v97, v88);
    (*(v17 + 8))(v96, v144);
    v125(v139, v88);
  }

LABEL_14:
  __swift_destroy_boxed_opaque_existential_1Tm(v146);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227BEFD8C()
{
  OUTLINED_FUNCTION_6();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[3] = v7;
  v8 = sub_227D4CAB8();
  v1[10] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[11] = v9;
  v11 = *(v10 + 64);
  v1[12] = OUTLINED_FUNCTION_379();
  v1[13] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CF8, &qword_227D5BA48);
  OUTLINED_FUNCTION_5(v12);
  v14 = *(v13 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D00, &qword_227D5BA50);
  v1[15] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[16] = v16;
  v18 = *(v17 + 64);
  v1[17] = OUTLINED_FUNCTION_30();
  v19 = sub_227D49F28();
  v1[18] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v1[19] = v20;
  v22 = *(v21 + 64);
  v1[20] = OUTLINED_FUNCTION_379();
  v1[21] = swift_task_alloc();
  v1[22] = type metadata accessor for ChallengeDefinitionStoreActor();
  OUTLINED_FUNCTION_7_16();
  sub_227C164D0(v23);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v24 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_227BEFF60()
{
  v132 = v0;
  v3 = v0[8];
  if (!*(v3 + 16))
  {
    v66 = sub_227D49E08();
    OUTLINED_FUNCTION_20_7();
    sub_227C1CC14(v67);
    OUTLINED_FUNCTION_78_0();
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_207_0(v68, "releaseStates can't be empty");
    v69 = *MEMORY[0x277D0CE68];
    OUTLINED_FUNCTION_14_0(v66);
    (*(v70 + 104))();
    swift_willThrow();
    goto LABEL_22;
  }

  v4 = v0[19];
  v5 = v3 + 56;
  v130 = MEMORY[0x277D84FA0];
  v6 = -1;
  v7 = -1 << *(v3 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v3 + 56);
  v9 = (63 - v7) >> 6;
  v127 = v4 + 16;
  v124 = v4 + 88;
  LODWORD(v123) = *MEMORY[0x277D0CEF0];
  HIDWORD(v123) = *MEMORY[0x277D0CEE8];
  HIDWORD(v122) = *MEMORY[0x277D0CEE0];
  v126 = v0[19];
  v128 = (v4 + 8);
  sub_227D4CE58();
  v10 = 0;
  v125 = v3;
  if (v8)
  {
    while (1)
    {
LABEL_9:
      v12 = v129[20];
      v2 = v126;
      v0 = v127;
      v13 = *(v3 + 48) + v126[9] * (__clz(__rbit64(v8)) | (v10 << 6));
      v14 = v126[2];
      (v14)(v129[21], v13, v129[18]);
      v15 = OUTLINED_FUNCTION_87_1();
      v14(v15);
      v16 = v126[11];
      v17 = OUTLINED_FUNCTION_91_0();
      v19 = v18(v17);
      if (v19 == HIDWORD(v123))
      {
        v20 = 0xE400000000000000;
        v21 = 1702259052;
        v3 = v125;
      }

      else
      {
        v3 = v125;
        if (v19 == v123)
        {
          v20 = 0xE600000000000000;
          v21 = 0x646567617473;
        }

        else
        {
          if (v19 != HIDWORD(v122))
          {
            v0 = v129;
            v113 = v129[20];
            v114 = v129[21];
            v115 = v129[18];
            v116 = v129[8];

            sub_227D49E08();
            OUTLINED_FUNCTION_20_7();
            sub_227C1CC14(v117);
            OUTLINED_FUNCTION_317();
            OUTLINED_FUNCTION_208();
            swift_allocError();
            sub_227D49DC8();
            swift_willThrow();
            v118 = *v128;
            v119 = OUTLINED_FUNCTION_174();
            v118(v119);
            v120 = OUTLINED_FUNCTION_177();
            v118(v120);
            goto LABEL_22;
          }

          v21 = 0x6D706F6C65766564;
          v20 = 0xEB00000000746E65;
        }
      }

      v8 &= v8 - 1;
      v22 = v129[21];
      v1 = v129[18];
      sub_227B274CC(v131, v21, v20);

      v23 = *v128;
      v24 = OUTLINED_FUNCTION_91_0();
      v25(v24);
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  v0 = v129;
  v128 = v129[22];
  v26 = v129[17];
  v27 = v129[14];
  v28 = v129[8];
  v29 = v129[9];
  v31 = v129[6];
  v30 = v129[7];
  v32 = v129[4];
  v33 = v129[5];

  v34 = swift_task_alloc();
  v34[2] = v32;
  v34[3] = v33;
  v34[4] = v130;
  v34[5] = v31;
  v34[6] = v30;
  v129[2] = OUTLINED_FUNCTION_495();
  OUTLINED_FUNCTION_552();
  sub_227D49378();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D08, &qword_227D5BA58);
  v35 = OUTLINED_FUNCTION_107_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9108, &qword_227D5BD18);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9110, &qword_227D5BD20);
  OUTLINED_FUNCTION_10_0(v39);
  v41 = *(v40 + 72);
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  *(swift_allocObject() + 16) = xmmword_227D4E520;
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_10();
  sub_227C1CC14(v44);
  sub_227D48ED8();
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_525();
  OUTLINED_FUNCTION_173();
  sub_227D4CBF8();
  OUTLINED_FUNCTION_7_16();
  sub_227C164D0(&unk_280E7BC78);
  sub_227D4CAF8();
  OUTLINED_FUNCTION_280();
  v1 = 0;
  v2 = sub_227D4CB38();
  v79 = v129[13];
  v80 = v129[10];
  v81 = v129[11];

  v82 = sub_227B1AF8C();
  (*(v81 + 16))(v79, v82, v80);
  sub_227D4CE58();
  v83 = sub_227D4CA98();
  v84 = sub_227D4D428();
  if (OUTLINED_FUNCTION_33_4(v84))
  {
    OUTLINED_FUNCTION_415();
    v86 = swift_slowAlloc();
    *v86 = 134217984;
    *(v86 + 4) = sub_227B4BF3C(v2);

    OUTLINED_FUNCTION_486();
    _os_log_impl(v87, v88, v89, v90, v91, 0xCu);
    OUTLINED_FUNCTION_135_3();
    MEMORY[0x22AAA7130]();
  }

  else
  {
  }

  (*(v129[11] + 8))(v129[13], v129[10]);
  result = sub_227B4BF3C(v2);
  if (!result)
  {
    (*(v129[16] + 8))(v129[17], v129[15]);

    v104 = 1;
    goto LABEL_37;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_40:
    MEMORY[0x22AAA63D0](0, v2);
LABEL_33:
    v94 = v0[6];
    v93 = v0[7];
    v95 = v0[3];

    v96 = OUTLINED_FUNCTION_371();
    sub_227BF1248(v96, v97, v98, v99, v100, v101, v102, v103, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131[0], v131[1]);
    if (v1)
    {
      v46 = v0[11];
      v45 = v0[12];
      v47 = v0[10];

      v48 = sub_227B1AF8C();
      (*(v46 + 16))(v45, v48, v47);
      v49 = v1;
      v50 = sub_227D4CA98();
      v51 = sub_227D4D438();

      if (os_log_type_enabled(v50, v51))
      {
        OUTLINED_FUNCTION_415();
        v52 = swift_slowAlloc();
        v53 = OUTLINED_FUNCTION_13_3();
        *v52 = 138412290;
        v54 = v1;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v52 + 4) = v55;
        *v53 = v55;
        _os_log_impl(&dword_227B0D000, v50, v51, "Failed to fetch challenge definitions from store: %@", v52, 0xCu);
        sub_227C1CB1C(v53, &qword_27D7E68C8);
        OUTLINED_FUNCTION_135_3();
        MEMORY[0x22AAA7130]();
        v56 = OUTLINED_FUNCTION_101_2();
        MEMORY[0x22AAA7130](v56);
      }

      v58 = v0[16];
      v57 = v0[17];
      v59 = v0[15];
      v61 = v0[11];
      v60 = v0[12];
      v62 = v0[10];

      (*(v61 + 8))(v60, v62);
      swift_willThrow();
      v63 = *(v58 + 8);
      v64 = OUTLINED_FUNCTION_141();
      v65(v64);

LABEL_22:
      v72 = v0[20];
      v71 = v0[21];
      v73 = v0[17];
      v75 = v0[13];
      v74 = v0[14];
      v76 = v0[12];

      OUTLINED_FUNCTION_18();
LABEL_23:

      return v77();
    }

    (*(v0[16] + 8))(v0[17], v0[15]);

    v104 = 0;
LABEL_37:
    v106 = v0[20];
    v105 = v0[21];
    v107 = v0[17];
    v109 = v0[13];
    v108 = v0[14];
    v110 = v0[12];
    v111 = v0[3];
    v112 = sub_227D4A3B8();
    __swift_storeEnumTagSinglePayload(v111, v104, 1, v112);

    OUTLINED_FUNCTION_15_0();
    goto LABEL_23;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v92 = *(v2 + 32);

    goto LABEL_33;
  }

  __break(1u);
  return result;
}

void sub_227BF0860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11();
  a19 = v22;
  a20 = v23;
  v110 = v24;
  v111 = v25;
  v27 = v26;
  v113 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D28, &qword_227D5BA78);
  OUTLINED_FUNCTION_9(v29);
  v112 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_96_3(v34, v108);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D30, &qword_227D5BA80);
  OUTLINED_FUNCTION_9(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_26_0();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8978, &qword_227D5B890);
  OUTLINED_FUNCTION_26_5(v39, &a15);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_4_17(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D18, &qword_227D5BA68);
  OUTLINED_FUNCTION_26_5(v44, &a17);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_4_17(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8778, &qword_227D5B708);
  OUTLINED_FUNCTION_26_5(v49, v118);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_105_1();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D20, &qword_227D5BA70);
  OUTLINED_FUNCTION_9(v53);
  v55 = v54;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_104();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D10, &qword_227D5BA60);
  OUTLINED_FUNCTION_26_5(v59, &v117);
  v115 = v60;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_61_4();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8E50, &qword_227D5BB80);
  OUTLINED_FUNCTION_26_5(v64, &a10);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_90_0();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9118, &qword_227D5BD28);
  v109 = OUTLINED_FUNCTION_9(v68);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_4_17(v72);
  v73 = *v27;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v74);
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_335();
  OUTLINED_FUNCTION_533();
  sub_227D48F28();

  v114 = *(v55 + 8);
  v75 = OUTLINED_FUNCTION_334();
  v76(v75);
  OUTLINED_FUNCTION_390();
  v118[0] = v78;
  v118[1] = v77;
  sub_227D48FE8();
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v79);
  sub_227B1A6E4(&unk_280E7B750);
  OUTLINED_FUNCTION_299();
  sub_227D48F08();
  OUTLINED_FUNCTION_163_1(v116);
  v80(v20);
  v81 = *(v115 + 8);
  v82 = OUTLINED_FUNCTION_451();
  v81(v82);
  OUTLINED_FUNCTION_458();
  v118[0] = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68F0, &qword_227D5B840);
  OUTLINED_FUNCTION_392(&v119);
  sub_227D48FE8();
  OUTLINED_FUNCTION_267();
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_533();
  sub_227D48F28();

  v84 = OUTLINED_FUNCTION_334();
  v114(v84);
  sub_227B1A6E4(&unk_27D7E8988);
  OUTLINED_FUNCTION_15_8();
  sub_227B1A6E4(v85);
  sub_227D48F68();
  v81(v21);
  OUTLINED_FUNCTION_163_1(&a16);
  v86 = OUTLINED_FUNCTION_278();
  v87(v86);
  sub_227B1A6E4(&unk_27D7E8E60);
  OUTLINED_FUNCTION_11_15();
  sub_227B1A6E4(v88);
  OUTLINED_FUNCTION_403();
  sub_227D48FA8();
  OUTLINED_FUNCTION_163_1(&a18);
  v89 = OUTLINED_FUNCTION_253();
  v90(v89);
  OUTLINED_FUNCTION_163_1(&a11);
  v91 = OUTLINED_FUNCTION_478();
  v92(v91);
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_335();
  OUTLINED_FUNCTION_533();
  sub_227D48F28();

  v93 = OUTLINED_FUNCTION_334();
  v114(v93);
  v116[1] = v110;
  v116[2] = v111;
  v94 = OUTLINED_FUNCTION_147();
  __swift_instantiateConcreteTypeFromMangledNameV2(v94, v95);
  sub_227B1A6E4(&unk_27D7E8D48);
  OUTLINED_FUNCTION_224();
  sub_227B1A6E4(v96);
  OUTLINED_FUNCTION_17_11();
  sub_227B1A6E4(v97);
  OUTLINED_FUNCTION_387();
  OUTLINED_FUNCTION_283();
  sub_227D48F58();
  v98 = *(v112 + 8);
  v99 = OUTLINED_FUNCTION_336();
  v100(v99);
  *(v113 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9120, &qword_227D5BD30);
  v101 = sub_227C1C508();
  OUTLINED_FUNCTION_421(v101);
  OUTLINED_FUNCTION_91_5();
  sub_227B1A6E4(v102);
  OUTLINED_FUNCTION_23_4();
  sub_227B1A6E4(v103);
  OUTLINED_FUNCTION_322();
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_248();
  sub_227D48FA8();
  OUTLINED_FUNCTION_259();
  v104 = OUTLINED_FUNCTION_150();
  v105(v104);
  v106 = OUTLINED_FUNCTION_225();
  v107(v106, v109);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227BF11E0(uint64_t a1)
{
  result = sub_227B3E1D8(a1);
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
    return sub_227C11AD0(result, v3, 0, a1);
  }
}

void sub_227BF1248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_351();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  v188 = v25;
  v187 = v26;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6940, &qword_227D4E768);
  OUTLINED_FUNCTION_5(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_4_17(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67F0, &unk_227D5BBE0);
  OUTLINED_FUNCTION_5(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_4_17(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  OUTLINED_FUNCTION_26_5(v39, &v204[48]);
  v191 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_4_17(v44);
  v45 = sub_227D4A2D8();
  v46 = OUTLINED_FUNCTION_9(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_54_0();
  v53 = (v51 - v52);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v55);
  v200 = sub_227D4A3A8();
  v56 = OUTLINED_FUNCTION_10_0(v200);
  v198 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_2_3();
  v193 = v60;
  OUTLINED_FUNCTION_6_0();
  v62 = MEMORY[0x28223BE20](v61);
  v64 = v180 - v63;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9(v66);
  v68 = v67;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_4_17(v72);
  v202 = v20;
  sub_227BE75EC();
  OUTLINED_FUNCTION_494();
  v196 = v66;
  v195 = v68;
  v189 = v28;
  if (v95)
  {
    OUTLINED_FUNCTION_473();
    if (!v73)
    {
      __break(1u);
      goto LABEL_48;
    }

    v74 = *(v20 + 32);

    goto LABEL_5;
  }

  while (1)
  {
    v173 = OUTLINED_FUNCTION_496();
    MEMORY[0x22AAA63D0](v173);
LABEL_5:

    sub_227BE4EAC(v75);

    OUTLINED_FUNCTION_392(&a10);
    OUTLINED_FUNCTION_587();
    v76 = sub_227D4A698();
    if (sub_227BE82B0(v76))
    {
      sub_227BE5D5C();
      sub_227D4A608();
      if (v24)
      {
        OUTLINED_FUNCTION_163_1(&v204[80]);
        v77(v66, v196);

LABEL_8:

        goto LABEL_25;
      }

      v88 = *MEMORY[0x277D0D1B0];
      OUTLINED_FUNCTION_392(&v204[104]);
      (*(v89 + 104))(v64);
      v90 = v66[4];
      v91 = OUTLINED_FUNCTION_433();
      v93 = v92(v91);
      v95 = sub_227BE5EFC(v93) == 0x63697373616C63 && v94 == 0xE700000000000000;
      v199 = 0;
      if (v95)
      {
      }

      else
      {
        v96 = sub_227D4DA78();

        if ((v96 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v98 = *(sub_227BE805C(v97) + 16);

      if (v98)
      {
LABEL_19:

        v66 = MEMORY[0x277D84F90];
        goto LABEL_23;
      }

      (*(v48 + 104))(v190, *MEMORY[0x277D0D120], v45);
      v99 = OUTLINED_FUNCTION_100_3();
      v103 = sub_227C10BE4(v99, v100, v101, v102);
      v105 = *(v103 + 16);
      v104 = *(v103 + 24);
      v106 = v103;
      if (v105 >= v104 >> 1)
      {
        v177 = OUTLINED_FUNCTION_55(v104);
        v106 = sub_227C10BE4(v177, v178, v179, v106);
      }

      *(v106 + 16) = v105 + 1;
      OUTLINED_FUNCTION_581();
      v87 = v108(v106 + v107 + *(v48 + 40) * v105, v190, v45);
      v66 = v106;
    }

    else
    {
      v78 = *MEMORY[0x277D0D1B8];
      OUTLINED_FUNCTION_457();
      (*(v79 + 104))(v197);
      (*(v48 + 104))(v53, *MEMORY[0x277D0D118], v45);
      v80 = OUTLINED_FUNCTION_100_3();
      v66 = sub_227C10BE4(v80, v81, v82, v83);
      v84 = v66[2];
      v73 = v66[3];
      v20 = v84 + 1;
      if (v84 >= v73 >> 1)
      {
LABEL_48:
        v174 = OUTLINED_FUNCTION_55(v73);
        v66 = sub_227C10BE4(v174, v175, v176, v66);
      }

      v199 = v24;
      v66[2] = v20;
      OUTLINED_FUNCTION_581();
      v85 = *(v48 + 40);
      OUTLINED_FUNCTION_355();
      v87 = v86();
    }

LABEL_23:
    v48 = v202;
    v109 = sub_227BE7458(v87);
    v111 = v110;
    v112 = sub_227BE790C();
    v114 = v113;
    sub_227BE7458(v112);
    v115 = v201;
    v116 = v199;
    sub_227D4A658();
    v199 = v116;
    if (v116)
    {

      OUTLINED_FUNCTION_163_1(&v204[104]);
      v117(v197, v200);
      OUTLINED_FUNCTION_163_1(&v204[80]);
      v118(v115, v196);

      goto LABEL_25;
    }

    v182 = v112;
    v183 = v109;
    v184 = v111;
    v185 = v114;
    v190 = v66;

    v45 = sub_227BE7AA4(v119);
    v121 = v120;
    v122 = sub_227BE7C38();
    v124 = v123;
    sub_227BE7DD0(v203);
    OUTLINED_FUNCTION_390();
    if (v125)
    {
      memcpy(v204, v203, 0x70uLL);
      OUTLINED_FUNCTION_392(&v204[64]);
      v126 = v199;
      sub_227C07E0C();
      v127 = v126;
      v128 = v200;
      if (v126)
      {

        sub_227C1CB1C(v203, &qword_27D7E8660);
        OUTLINED_FUNCTION_163_1(&v204[40]);
        v129 = OUTLINED_FUNCTION_573();
        v130(v129);
        OUTLINED_FUNCTION_163_1(&v204[104]);
        v131 = OUTLINED_FUNCTION_433();
        v132(v131);
        v133 = OUTLINED_FUNCTION_131_0();
        v134(v133);
        goto LABEL_8;
      }

      v181 = v121;
      sub_227C1CB1C(v203, &qword_27D7E8660);
    }

    else
    {
      v181 = v121;
      v128 = v200;
      v127 = v199;
    }

    v180[1] = v122;
    v199 = v45;
    sub_227D4AA38();
    v135 = OUTLINED_FUNCTION_169_2();
    __swift_storeEnumTagSinglePayload(v135, v136, v137, v138);
    OUTLINED_FUNCTION_457();
    v140 = (*(v139 + 16))(v193, v197, v128);
    v141 = sub_227BE805C(v140);
    v66 = *(v141 + 16);
    if (!v66)
    {
      break;
    }

    v180[0] = v124;
    v53 = v127;
    v142 = OUTLINED_FUNCTION_426(MEMORY[0x277D84F90]);
    sub_227BE14B0(v142, v66, 0);
    v143 = 0;
    v64 = a10;
    v24 = (v141 + 40);
    while (v143 < *(v141 + 16))
    {
      v145 = *(v24 - 1);
      v144 = *v24;
      sub_227D4CE58();
      OUTLINED_FUNCTION_87_1();
      static Array<A>.fromISO8601Duration(iso8601Duration:)();
      if (v53)
      {

        v154 = *(v198 + 8);
        v155 = v200;
        v154(v193, v200);
        sub_227C1CB1C(v194, &qword_27D7E67F0);
        OUTLINED_FUNCTION_163_1(&v204[40]);
        v156 = OUTLINED_FUNCTION_573();
        v157(v156);
        v154(v197, v155);
        v158 = OUTLINED_FUNCTION_131_0();
        v159(v158);

        goto LABEL_25;
      }

      v45 = v146;
      v48 = v141;
      v147 = v66;

      a10 = v64;
      v149 = *(v64 + 2);
      v148 = *(v64 + 3);
      v150 = v64;
      if (v149 >= v148 >> 1)
      {
        OUTLINED_FUNCTION_12(v148);
        OUTLINED_FUNCTION_367();
        sub_227BE14B0(v151, v152, v153);
        v150 = a10;
      }

      v143 = (v143 + 1);
      *(v150 + 2) = v149 + 1;
      *&v150[8 * v149 + 32] = v45;
      v24 += 2;
      v66 = v147;
      v95 = v147 == v143;
      v141 = v48;
      v64 = v150;
      if (v95)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
  }

LABEL_39:

  v192 = sub_227BE8230();
  sub_227BE8484();
  sub_227BE75EC();
  sub_227C07F6C();
  OUTLINED_FUNCTION_13_2();

  sub_227BE8658(v160);
  v161 = sub_227D4D868();

  if (v161 >= 3)
  {
    sub_227D49F28();
    OUTLINED_FUNCTION_71_0();
  }

  else
  {
    v162 = **(&unk_2785ED7C8 + v161);
    v163 = sub_227D49F28();
    OUTLINED_FUNCTION_62_0(v163);
    (*(v164 + 104))(v186, v162, v163);
    OUTLINED_FUNCTION_99();
    v168 = v163;
  }

  __swift_storeEnumTagSinglePayload(v165, v166, v167, v168);
  sub_227D4A338();
  OUTLINED_FUNCTION_163_1(&v204[104]);
  v169 = OUTLINED_FUNCTION_433();
  v170(v169);
  v171 = OUTLINED_FUNCTION_131_0();
  v172(v171);
LABEL_25:
  OUTLINED_FUNCTION_352();
}

uint64_t sub_227BF1EA8()
{
  OUTLINED_FUNCTION_6();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CF8, &qword_227D5BA48);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D00, &qword_227D5BA50);
  v1[11] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_30();
  v1[14] = type metadata accessor for ChallengeDefinitionStoreActor();
  OUTLINED_FUNCTION_7_16();
  sub_227C164D0(v11);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v12 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_227BF1FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_98_1();
  v29 = v28[13];
  v110 = v28[14];
  v31 = v28[10];
  v30 = v28[11];
  v32 = v28[8];
  v33 = v28[9];
  v34 = sub_227D4CE58();
  v35 = sub_227B30834(v34);
  v36 = swift_task_alloc();
  *(v36 + 16) = v35;
  v28[6] = OUTLINED_FUNCTION_495();
  sub_227D49378();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D08, &qword_227D5BA58);
  OUTLINED_FUNCTION_454();
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_525();
  OUTLINED_FUNCTION_384();
  sub_227D4CBF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8648, &qword_227D5C840);
  OUTLINED_FUNCTION_198_2();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_227D59C50;
  *(v41 + 32) = swift_getKeyPath();
  OUTLINED_FUNCTION_167_1();
  sub_227D4CBD8();
  OUTLINED_FUNCTION_7_16();
  sub_227C164D0(&unk_280E7BC78);
  sub_227D4CAF8();
  OUTLINED_FUNCTION_110_3();
  v42 = sub_227D4CB38();
  v103 = v36;
  v104 = v28;
  v43 = v28 + 2;

  v44 = sub_227B4BF3C(v42);
  v45 = 0;
  v108 = v42 & 0xFFFFFFFFFFFFFF8;
  v109 = v42 & 0xC000000000000001;
  v105 = v42;
  v107 = v42 + 32;
  v46 = MEMORY[0x277D84F90];
  v106 = v44;
  while (v45 != v44)
  {
    if (v109)
    {
      v47 = MEMORY[0x22AAA63D0](v45, v105);
    }

    else
    {
      if (v45 >= *(v108 + 16))
      {
        goto LABEL_52;
      }

      v47 = *(v107 + 8 * v45);
    }

    v48 = __OFADD__(v45++, 1);
    if (v48)
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      return;
    }

    sub_227BE75EC(v49);
    OUTLINED_FUNCTION_294();

    OUTLINED_FUNCTION_401();
    if (v47)
    {
      v51 = sub_227D4D808();
    }

    else
    {
      v51 = *(v50 + 16);
    }

    v52 = v46 >> 62;
    if (v46 >> 62)
    {
      v53 = sub_227D4D808();
    }

    else
    {
      v53 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFADD__(v53, v51))
    {
      goto LABEL_53;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v52)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_217_2();
      if (v56 == v48)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v52)
      {
LABEL_20:
        sub_227D4D808();
        OUTLINED_FUNCTION_406();
        goto LABEL_21;
      }

      v55 = v46 & 0xFFFFFFFFFFFFFF8;
    }

    v57 = *(v55 + 16);
LABEL_21:
    v46 = sub_227D4D698();
    OUTLINED_FUNCTION_158_1(v46);
LABEL_22:
    a20 = v55;
    v110 = v45;
    v58 = *(v55 + 16);
    v59 = v54 - v58;
    v60 = v55 + 8 * v58;
    if (v47)
    {
      v62 = OUTLINED_FUNCTION_178_2();
      if (!v62)
      {
        goto LABEL_36;
      }

      v63 = v62;
      v64 = sub_227D4D808();
      if (v59 < v64)
      {
        goto LABEL_58;
      }

      if (v63 < 1)
      {
        goto LABEL_59;
      }

      v61 = v64;
      a15 = v51;
      a16 = v46;
      v65 = v60 + 32;
      OUTLINED_FUNCTION_24_5();
      sub_227B1A6E4(&unk_27D7E8E28);
      for (i = 0; i != v63; ++i)
      {
        v67 = OUTLINED_FUNCTION_91_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
        v69 = OUTLINED_FUNCTION_237();
        v71 = sub_227C1931C(v69, v70, v47);
        v73 = *v72;

        (v71)(v43, 0);
        *(v65 + 8 * i) = v73;
      }

      v46 = a16;
      v44 = v106;
LABEL_32:

      v45 = v110;
      if (v61 < v51)
      {
        goto LABEL_54;
      }

      if (v61 > 0)
      {
        v74 = *(a20 + 16);
        v48 = __OFADD__(v74, v61);
        v75 = v74 + v61;
        if (v48)
        {
          goto LABEL_56;
        }

        *(a20 + 16) = v75;
      }
    }

    else
    {
      v61 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v61)
      {
        if (v59 < v61)
        {
          goto LABEL_57;
        }

        type metadata accessor for ChallengeDefinitionStoreSchemaV1.Definition.PlatformMetadata(0);
        swift_arrayInitWithCopy();
        goto LABEL_32;
      }

LABEL_36:

      if (v51 > 0)
      {
        goto LABEL_54;
      }
    }
  }

  v76 = v104[7];

  v77 = OUTLINED_FUNCTION_147();
  *(v76 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v77, v78);
  OUTLINED_FUNCTION_89_3();
  *(v76 + 32) = sub_227B1A6E4(v79);
  v111 = MEMORY[0x277D84FA0];
  v80 = sub_227B4BF3C(v46);
  v81 = 0;
  v82 = v46 & 0xC000000000000001;
  while (v80 != v81)
  {
    sub_227C109CC(v81, v82 == 0, v46);
    if (v82)
    {
      v83 = MEMORY[0x22AAA63D0](v81, v46);
    }

    else
    {
      v83 = OUTLINED_FUNCTION_522(v46 + 8 * v81);
    }

    if (__OFADD__(v81, 1))
    {
      goto LABEL_55;
    }

    sub_227BE4EAC(v83);
    OUTLINED_FUNCTION_185();
    OUTLINED_FUNCTION_183_0();
    sub_227B274CC(v84, v85, v86);

    ++v81;
  }

  v88 = v104[12];
  v87 = v104[13];
  v89 = v104[10];
  v90 = v104[11];
  v91 = v104[7];

  *v91 = v111;
  v92 = *(v88 + 8);
  v93 = OUTLINED_FUNCTION_174();
  v94(v93);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_52();

  v96(v95, v96, v97, v98, v99, v100, v101, v102, a9, 0, v103, v104, v105, v106, a15, a16, v107, v108, v109, a20, v110, v111, a23, a24, a25, a26, a27, a28);
}

void sub_227BF25B4()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_201();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_9(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_61_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D28, &qword_227D5BA78);
  OUTLINED_FUNCTION_9(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_106_1();
  v19 = *v2;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v20);
  OUTLINED_FUNCTION_288();
  sub_227D48FF8();
  swift_getKeyPath();
  sub_227D48F28();

  v21 = *(v9 + 8);
  v22 = OUTLINED_FUNCTION_200();
  v23(v22);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E90E0, &qword_227D5BD08);
  v4[4] = sub_227C1C3C4();
  __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E90F8, &qword_227D5BD10);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v24);
  OUTLINED_FUNCTION_11_15();
  sub_227B1A6E4(v25);
  OUTLINED_FUNCTION_17_11();
  sub_227B1A6E4(v26);
  sub_227D48F58();
  (*(v15 + 8))(v0, v13);
  OUTLINED_FUNCTION_8_1();
}

void sub_227BF2840()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_152_1(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8DB0, &qword_227D5BAA0);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_68_3();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8DA0, &qword_227D5BA98);
  OUTLINED_FUNCTION_9(v25);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_72_3();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8978, &qword_227D5B890);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_61_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68F0, &qword_227D5B840);
  OUTLINED_FUNCTION_318_0();
  sub_227D48FE8();
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v14);
  OUTLINED_FUNCTION_122_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_85_4();

  v15 = OUTLINED_FUNCTION_157_2();
  v16(v15);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v17);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v18);
  OUTLINED_FUNCTION_15_8();
  sub_227B1A6E4(v19);
  OUTLINED_FUNCTION_71_3();
  v20 = *(v6 + 8);
  v21 = OUTLINED_FUNCTION_87_1();
  v22(v21);
  v23 = OUTLINED_FUNCTION_156_3();
  v24(v23);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227BF2ABC()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CF8, &qword_227D5BA48);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D00, &qword_227D5BA50);
  v1[6] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[7] = v8;
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_30();
  v1[9] = type metadata accessor for ChallengeDefinitionStoreActor();
  OUTLINED_FUNCTION_7_16();
  sub_227C164D0(v11);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v12 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_227BF2EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11();
  a19 = v23;
  a20 = v24;
  v25 = sub_227D49F28();
  v26 = OUTLINED_FUNCTION_9(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_3();
  v86 = v31;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_462(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D08, &qword_227D5BA58);
  v35 = OUTLINED_FUNCTION_26_5(v34, &a17);
  v76 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_3();
  v75 = v39;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_172_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_438();
  type metadata accessor for ChallengeDefinitionStoreSchemaV1.Definition(0);
  v73 = v22;
  sub_227D49378();
  v74 = v21;
  sub_227D49378();
  v77 = v20;
  v42 = *(v20 + 40);
  v43 = v42 + 56;
  v44 = 1 << *(v42 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v42 + 56);
  v47 = (v44 + 63) >> 6;
  v83 = *MEMORY[0x277D0CEE8];
  v81 = *MEMORY[0x277D0CEF0];
  v80 = *MEMORY[0x277D0CEE0];
  v84 = v28;
  v82 = (v28 + 8);
  v85 = v42;
  sub_227D4CE58();
  v48 = 0;
  v49 = 0;
  v78 = MEMORY[0x277D84F90];
  while (1)
  {
    v50 = v48;
    if (!v46)
    {
      break;
    }

    v79 = v49;
LABEL_10:
    v51 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v52 = v84[2];
    v52(v87, *(v85 + 48) + v84[9] * (v51 | (v48 << 6)), v25);
    v53 = OUTLINED_FUNCTION_488();
    (v52)(v53);
    v54 = v84[11];
    v55 = OUTLINED_FUNCTION_276();
    v57 = v56(v55);
    if (v57 == v83)
    {
      v60 = 0xE400000000000000;
      v61 = 1702259052;
      goto LABEL_17;
    }

    if (v57 == v81)
    {
      v60 = 0xE600000000000000;
      v61 = 0x646567617473;
      goto LABEL_17;
    }

    if (v57 == v80)
    {
      v61 = 0x6D706F6C65766564;
      v60 = 0xEB00000000746E65;
LABEL_17:
      (*v82)(v87, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_227B25F88(0, *(v78 + 2) + 1, 1, v78);
      }

      v63 = *(v78 + 2);
      v62 = *(v78 + 3);
      if (v63 >= v62 >> 1)
      {
        v65 = OUTLINED_FUNCTION_12(v62);
        v78 = sub_227B25F88(v65, v63 + 1, 1, v78);
      }

      v49 = v79;
      *(v78 + 2) = v63 + 1;
      v64 = &v78[16 * v63];
      *(v64 + 4) = v61;
      *(v64 + 5) = v60;
    }

    else
    {
      sub_227D49E08();
      OUTLINED_FUNCTION_20_7();
      sub_227C1CC14(&qword_27D7E67C8);
      OUTLINED_FUNCTION_317();
      OUTLINED_FUNCTION_208();
      v58 = swift_allocError();
      sub_227D49DC8();
      swift_willThrow();
      v59 = *v82;
      (*v82)(v87, v25);
      v59(v86, v25);

      v49 = 0;
    }
  }

  while (1)
  {
    v48 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v48 >= v47)
    {

      MEMORY[0x28223BE20](v66);
      OUTLINED_FUNCTION_109();
      *(v67 - 16) = v78;
      sub_227D49378();

      MEMORY[0x28223BE20](v68);
      OUTLINED_FUNCTION_436();
      *(v69 - 32) = v77;
      *(v69 - 24) = v75;
      *(v69 - 16) = v73;
      *(v69 - 8) = v74;
      sub_227D49378();
      v70 = *(v76 + 8);
      v70(v75);
      v71 = OUTLINED_FUNCTION_174_0();
      v70(v71);
      v72 = OUTLINED_FUNCTION_470();
      v70(v72);
      OUTLINED_FUNCTION_8_1();
      return;
    }

    v46 = *(v43 + 8 * v48);
    ++v50;
    if (v46)
    {
      v79 = v49;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_227BF3440()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v0;
  v2 = sub_227D4CAB8();
  v1[3] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6900, &qword_227D4E680);
  OUTLINED_FUNCTION_5(v6);
  v8 = *(v7 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v9 = sub_227D4A3B8();
  v1[7] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[8] = v10;
  v12 = *(v11 + 64);
  v1[9] = OUTLINED_FUNCTION_379();
  v1[10] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CF8, &qword_227D5BA48);
  OUTLINED_FUNCTION_5(v13);
  v15 = *(v14 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D00, &qword_227D5BA50);
  v1[12] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[13] = v17;
  v19 = *(v18 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v1[15] = type metadata accessor for ChallengeDefinitionStoreActor();
  OUTLINED_FUNCTION_7_16();
  sub_227C164D0(v20);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v21 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_227BF3628()
{
  v61 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D08, &qword_227D5BA58);
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_495();
  OUTLINED_FUNCTION_1_20();
  sub_227C164D0(&unk_280E7BC60);
  sub_227D4CBF8();
  OUTLINED_FUNCTION_7_16();
  sub_227C164D0(&unk_280E7BC78);
  OUTLINED_FUNCTION_317();
  sub_227D4CAF8();
  OUTLINED_FUNCTION_110_3();
  sub_227D4CB38();
  OUTLINED_FUNCTION_489();

  v9 = v0[8];
  result = sub_227B4BF3C(v3);
  v11 = result;
  v12 = 0;
  v57 = v9;
  v58 = (v9 + 32);
  v59 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v11 == v12)
    {

      v60[0] = v59;
      sub_227D4CE58();
      sub_227C11B4C(v60);
      v49 = v0[13];
      v50 = v0[14];
      v51 = v0[12];

      v52 = *(v49 + 8);
      v53 = OUTLINED_FUNCTION_147();
      v54(v53);
      v41 = v0[14];
      v43 = v0[10];
      v42 = v0[11];
      v44 = v0[9];
      v46 = v0[5];
      v45 = v0[6];

      OUTLINED_FUNCTION_115();
      OUTLINED_FUNCTION_90();

      __asm { BRAA            X2, X16 }
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x22AAA63D0](v12, v3);
    }

    else
    {
      if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      result = OUTLINED_FUNCTION_383(v3 + 8 * v12);
    }

    v19 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    v20 = v0[6];
    sub_227BF1248(0, 0, v13, v14, v15, v16, v17, v18, v55, v56, v57, v58, v59, v60[0], v60[1], v60[2], v60[3], v60[4], v60[5], v60[6]);
    v22 = v0[6];
    v21 = v0[7];
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v21);

    if (__swift_getEnumTagSinglePayload(v22, 1, v21) == 1)
    {
      result = sub_227C1CB1C(v0[6], &qword_27D7E6900);
      ++v12;
    }

    else
    {
      v26 = v0[10];
      v56 = v0[9];
      v27 = v0[7];
      v28 = *v58;
      (*v58)(v26, v0[6], v27);
      v28(v56, v26, v27);
      v29 = v28;
      v30 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_227C10D08(0, *(v59 + 16) + 1, 1, v59);
      }

      v32 = *(v30 + 16);
      v31 = *(v30 + 24);
      if (v32 >= v31 >> 1)
      {
        v38 = OUTLINED_FUNCTION_55(v31);
        v30 = sub_227C10D08(v38, v39, v40, v30);
      }

      v33 = v0[9];
      v34 = v0[7];
      *(v30 + 16) = v32 + 1;
      v35 = *(v57 + 80);
      OUTLINED_FUNCTION_19();
      v59 = v30;
      result = v29(v30 + v36 + *(v37 + 72) * v32);
      v12 = v19;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_227BF3B10()
{
  OUTLINED_FUNCTION_6();
  v1[274] = v0;
  v1[273] = v2;
  v1[272] = v3;
  v4 = sub_227D4CAB8();
  v1[275] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[276] = v5;
  v7 = *(v6 + 64);
  v1[277] = OUTLINED_FUNCTION_30();
  v8 = sub_227D492A8();
  v1[278] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[279] = v9;
  v11 = *(v10 + 64);
  v1[280] = OUTLINED_FUNCTION_379();
  v1[281] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CF8, &qword_227D5BA48);
  OUTLINED_FUNCTION_5(v12);
  v14 = *(v13 + 64);
  v1[282] = OUTLINED_FUNCTION_379();
  v1[283] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D00, &qword_227D5BA50);
  v1[284] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[285] = v16;
  v18 = *(v17 + 64);
  v1[286] = OUTLINED_FUNCTION_30();
  v1[287] = type metadata accessor for ChallengeDefinitionStoreActor();
  OUTLINED_FUNCTION_7_16();
  sub_227C164D0(v19);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v20 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_227BF3CE0()
{
  v248 = v0;
  v1 = v0[286];
  v2 = v0[283];
  v238 = v0[274];
  v242 = v0[287];
  v3 = v0[272];
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_200();
  v8 = v7(v6);
  v10 = v9;
  v11 = swift_task_alloc();
  v223 = v8;
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  v0[271] = type metadata accessor for ChallengeDefinitionStoreSchemaV1.Definition(0);
  sub_227D49378();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D08, &qword_227D5BA58);
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  OUTLINED_FUNCTION_1_20();
  sub_227C164D0(&unk_280E7BC60);
  sub_227D4CBF8();
  OUTLINED_FUNCTION_7_16();
  v16 = sub_227C164D0(&unk_280E7BC78);
  sub_227D4CAF8();
  OUTLINED_FUNCTION_280();
  v224 = v3;
  v213 = v16;
  v206 = v12;
  v222 = v10;
  v17 = sub_227D4CB38();
  v219 = (v0 + 209);
  v226 = v0;
  v18 = v0 + 261;

  result = sub_227B4BF3C(v17);
  v20 = result;
  v21 = 0;
  v232 = v17 & 0xFFFFFFFFFFFFFF8;
  v234 = v17 & 0xC000000000000001;
  v22 = MEMORY[0x277D84F90];
  v220 = v17;
  v230 = v17 + 32;
  v227 = result;
  while (v21 != v20)
  {
    if (v234)
    {
      result = MEMORY[0x22AAA63D0](v21, v220);
      v23 = result;
    }

    else
    {
      if (v21 >= *(v232 + 16))
      {
        goto LABEL_82;
      }

      v23 = *(v230 + 8 * v21);
    }

    v24 = __OFADD__(v21, 1);
    v25 = v21 + 1;
    if (v24)
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      return result;
    }

    sub_227BE75EC(v26);
    OUTLINED_FUNCTION_294();

    OUTLINED_FUNCTION_401();
    if (v23)
    {
      v28 = OUTLINED_FUNCTION_523();
    }

    else
    {
      v28 = *(v27 + 16);
    }

    v29 = v22 >> 62;
    if (v22 >> 62)
    {
      result = OUTLINED_FUNCTION_508();
    }

    else
    {
      result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = result + v28;
    if (__OFADD__(result, v28))
    {
      goto LABEL_83;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v243 = v25;
    if (!result)
    {
      if (v29)
      {
LABEL_19:
        OUTLINED_FUNCTION_508();
        OUTLINED_FUNCTION_406();
      }

      else
      {
        v31 = v22 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
        v33 = *(v31 + 16);
      }

      v22 = sub_227D4D698();
      result = OUTLINED_FUNCTION_158_1(v22);
      goto LABEL_21;
    }

    if (v29)
    {
      goto LABEL_19;
    }

    v31 = v22 & 0xFFFFFFFFFFFFFF8;
    v32 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v32 < v30)
    {
      goto LABEL_18;
    }

LABEL_21:
    v34 = *(v31 + 16);
    v35 = v32 - v34;
    v36 = v31 + 8 * v34;
    v239 = v31;
    if (v23)
    {
      if (!OUTLINED_FUNCTION_178_2())
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_482();
      result = sub_227D4D808();
      if (v35 < result)
      {
        goto LABEL_89;
      }

      if (v30 < 1)
      {
        goto LABEL_90;
      }

      v37 = result;
      v236 = v22;
      v38 = v36 + 32;
      OUTLINED_FUNCTION_24_5();
      sub_227B1A6E4(&unk_27D7E8E28);
      for (i = 0; i != v30; ++i)
      {
        v40 = OUTLINED_FUNCTION_478();
        __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
        v42 = OUTLINED_FUNCTION_149_0();
        v44 = sub_227C1931C(v42, v43, v23);
        v46 = *v45;

        (v44)(v18, 0);
        *(v38 + 8 * i) = v46;
      }

      v22 = v236;
      v20 = v227;
LABEL_31:

      v21 = v243;
      if (v37 < v28)
      {
        goto LABEL_84;
      }

      if (v37 > 0)
      {
        v47 = *(v239 + 16);
        v24 = __OFADD__(v47, v37);
        v48 = v47 + v37;
        if (v24)
        {
          goto LABEL_85;
        }

        *(v239 + 16) = v48;
      }
    }

    else
    {
      v37 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        if (v35 < v37)
        {
          goto LABEL_88;
        }

        type metadata accessor for ChallengeDefinitionStoreSchemaV1.Definition.PlatformMetadata(0);
        swift_arrayInitWithCopy();
        goto LABEL_31;
      }

LABEL_35:

      v21 = v243;
      if (v28 > 0)
      {
        goto LABEL_84;
      }
    }
  }

  v49 = sub_227B4BF3C(v22);
  if (v49)
  {
    v50 = v49;
    v247 = MEMORY[0x277D84F90];
    result = sub_227D4D728();
    if (v50 < 0)
    {
      goto LABEL_91;
    }

    v51 = 0;
    v244 = v22 & 0xC000000000000001;
    v237 = v22;
    do
    {
      if (v244)
      {
        MEMORY[0x22AAA63D0](v51, v22);
      }

      else
      {
        v52 = *(v22 + 8 * v51 + 32);
      }

      ++v51;

      v54 = sub_227BE4EAC(v53);
      v55 = sub_227BE504C(v54);
      sub_227BE51EC(v55);
      v56 = type metadata accessor for ChallengeDefinitionStoreSchemaV1.Definition.PlatformMetadata(0);
      OUTLINED_FUNCTION_166_2(v56);
      swift_allocObject();
      OUTLINED_FUNCTION_141();
      sub_227BE5344();

      sub_227D4D6F8();
      v57 = *(v247 + 16);
      sub_227D4D738();
      OUTLINED_FUNCTION_193();
      sub_227D4D748();
      sub_227D4D708();
      v22 = v237;
    }

    while (v50 != v51);

    v58 = v247;
  }

  else
  {

    v58 = MEMORY[0x277D84F90];
  }

  v59 = v226[281];
  v60 = v226[272];
  v246 = v58;
  v61 = v224[3];
  v62 = v224[4];
  v63 = OUTLINED_FUNCTION_253();
  __swift_project_boxed_opaque_existential_1(v63, v64);
  v65 = *(v62 + 24);
  v66 = OUTLINED_FUNCTION_91_0();
  v68 = v67(v66);
  sub_227BF5390(v68, &v246);

  sub_227D49288();
  v69 = v224[3];
  v70 = v224[4];
  v71 = OUTLINED_FUNCTION_193();
  __swift_project_boxed_opaque_existential_1(v71, v72);
  v73 = *(v70 + 48);
  v74 = OUTLINED_FUNCTION_9_2();
  v76 = v75(v74);
  v233 = v77;
  v235 = v76;
  v78 = v224[3];
  v79 = v224[4];
  v80 = OUTLINED_FUNCTION_193();
  __swift_project_boxed_opaque_existential_1(v80, v81);
  v82 = *(v79 + 16);
  v83 = OUTLINED_FUNCTION_9_2();
  v84(v83);
  sub_227B3DC34((v226 + 186));
  v85 = 0;
  v86 = 0;
  if (v226[188])
  {
    v87 = v224[4];
    __swift_project_boxed_opaque_existential_1(v226[272], v224[3]);
    v88 = *(v87 + 16);
    v89 = OUTLINED_FUNCTION_193();
    v90(v89);
    v85 = v226[163];
    v86 = v226[164];
    sub_227D4CE58();
    sub_227B3DC34((v226 + 163));
  }

  v229 = v86;
  v231 = v85;
  v91 = v226[281];
  v92 = v226[280];
  v93 = v226[279];
  v94 = v226[278];
  v95 = v226[272];
  v96 = v224[3];
  v97 = v224[4];
  v98 = OUTLINED_FUNCTION_132_0();
  __swift_project_boxed_opaque_existential_1(v98, v99);
  v100 = *(v97 + 16);
  v101 = OUTLINED_FUNCTION_340();
  v102(v101);
  sub_227B3DC34((v226 + 140));
  v240 = (*(v226 + 1138) != 2) ^ *(v226 + 1138);
  v103 = v246;
  v104 = *(v93 + 16);
  v105 = OUTLINED_FUNCTION_323();
  v106(v105);
  v108 = v224[3];
  v107 = v224[4];
  v109 = OUTLINED_FUNCTION_279();
  __swift_project_boxed_opaque_existential_1(v109, v110);
  v111 = *(v107 + 16);
  v245 = v103;
  sub_227D4CE58();
  v112 = OUTLINED_FUNCTION_253();
  v111(v112);
  v113 = v226;
  v228 = v226[120];
  v225 = v226[121];
  sub_227D4CE58();
  sub_227B3DC34((v226 + 117));
  v115 = v224[3];
  v114 = v224[4];
  v116 = OUTLINED_FUNCTION_279();
  __swift_project_boxed_opaque_existential_1(v116, v117);
  v118 = *(v114 + 16);
  v119 = OUTLINED_FUNCTION_253();
  v120(v119);
  v221 = v226[115];
  v218 = v226[116];
  sub_227D4CE58();
  sub_227B3DC34((v226 + 94));
  v121 = v224[3];
  v122 = v224[4];
  v123 = OUTLINED_FUNCTION_279();
  __swift_project_boxed_opaque_existential_1(v123, v124);
  OUTLINED_FUNCTION_532();
  v125 = OUTLINED_FUNCTION_294();
  v126(v125, v122);
  memcpy(v113 + 223, v113 + 78, 0x70uLL);
  sub_227B17738();
  sub_227B3DC34((v226 + 71));
  v127 = v226[224];
  if (v127)
  {
    v128 = v226[236];
    v209 = *(v226 + 117);
    v210 = *(v226 + 116);
    v211 = *(v226 + 115);
    v129 = v226[228];
    v214 = v226[227];
    v216 = v226[229];
    v130 = v226[226];
    v131 = v226[225];
    v132 = v226[223];
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227C1CB1C((v226 + 223), &unk_27D7E8E30);
    v133 = v209;
    v134 = v210;
    v135 = v211;
    v137 = v214;
    v136 = v216;
  }

  else
  {
    v132 = 0;
    v131 = 0;
    v130 = 0;
    v136 = 0;
    v128 = 0;
    v137 = 0;
    v129 = 0;
    v135 = 0uLL;
    v134 = 0uLL;
    v133 = 0uLL;
  }

  v241 = v240 & 1;
  v138 = v226[272];
  v226[209] = v132;
  v226[210] = v127;
  v226[211] = v131;
  v226[212] = v130;
  v226[213] = v136;
  *(v226 + 107) = v135;
  *(v226 + 108) = v134;
  *(v226 + 109) = v133;
  v226[220] = v128;
  v226[221] = v137;
  v226[222] = v129;
  v139 = v224[3];
  v140 = v224[4];
  v141 = OUTLINED_FUNCTION_193();
  __swift_project_boxed_opaque_existential_1(v141, v142);
  OUTLINED_FUNCTION_532();
  v143 = OUTLINED_FUNCTION_110_3();
  v144(v143);
  v145 = v226[54];
  sub_227D4CE58();
  sub_227B3DC34((v226 + 48));
  v146 = v224[3];
  v147 = v224[4];
  v148 = OUTLINED_FUNCTION_193();
  __swift_project_boxed_opaque_existential_1(v148, v149);
  OUTLINED_FUNCTION_532();
  v150 = OUTLINED_FUNCTION_110_3();
  v151(v150);
  v217 = v145;
  if (*(v226 + 219) == 2)
  {
    if (v226[30])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_227D4E520;
      *(inited + 32) = 6647407;
      *(inited + 40) = 0xE300000000000000;
      v153 = OUTLINED_FUNCTION_269();
      v155 = sub_227C10940(v153, v154);
      swift_setDeallocating();
      sub_227C109F0();
      v215 = v155 ^ 1;
    }

    else
    {
      v215 = 0;
    }
  }

  else
  {
    v215 = *(v226 + 219);
  }

  v156 = v226[273];
  sub_227B3DC34((v226 + 25));
  v157 = *(v156 + 8);
  if (v157)
  {
    v158 = v226[273];
    *&v210 = v158[5];
    *&v211 = v158[4];
    v159 = v158[3];
    v208 = v158[2];
    *&v209 = *v158;
    v160 = type metadata accessor for ChallengeDefinitionStoreSchemaV1.Definition.LeaderboardMetadata(0);
    OUTLINED_FUNCTION_166_2(v160);
    v161 = swift_allocObject();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    *(v161 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8E38, &qword_227D5BAF0);
    OUTLINED_FUNCTION_9_8();
    v162 = sub_227C164D0(&unk_280E7BC50);
    v226[257] = v160;
    v226[258] = v160;
    v226[259] = v162;
    v226[260] = v162;
    OUTLINED_FUNCTION_13_1();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v164 = OUTLINED_FUNCTION_480(OpaqueTypeConformance2);
    __swift_allocate_boxed_opaque_existential_1(v164);
    OUTLINED_FUNCTION_77_2();
    OUTLINED_FUNCTION_430();
    *(v161 + 16) = 1;
    v113 = v226;
    sub_227D494B8();
    v165 = *(v161 + 56);
    __swift_project_boxed_opaque_existential_1((v161 + 24), *(v161 + 48));
    swift_getKeyPath();
    sub_227D4CAE8();

    *(v161 + 16) = 0;
    v166 = *(v161 + 48);
    v167 = *(v161 + 56);
    OUTLINED_FUNCTION_84_2();
    swift_getKeyPath();
    v226[269] = v208;
    v226[270] = v159;
    sub_227D4CAD8();

    v168 = *(v161 + 48);
    v169 = *(v161 + 56);
    OUTLINED_FUNCTION_84_2();
    swift_getKeyPath();
    v226[267] = v209;
    v226[268] = v157;
    sub_227D4CAD8();

    v170 = *(v161 + 48);
    v171 = *(v161 + 56);
    OUTLINED_FUNCTION_84_2();
    swift_getKeyPath();
    v226[265] = v211;
    v226[266] = v210;
    sub_227D4CAD8();
  }

  else
  {
    v161 = 0;
  }

  v172 = v113[280];
  v173 = v224[4];
  __swift_project_boxed_opaque_existential_1(v113[272], v224[3]);
  OUTLINED_FUNCTION_532();
  v174 = OUTLINED_FUNCTION_280();
  v175(v174, v173);
  sub_227B3DC34((v113 + 2));
  v176 = *(v113 + 33);
  OUTLINED_FUNCTION_513();
  sub_227D4CE58();
  BYTE1(v204) = v241;
  LOBYTE(v204) = v176 & 1;
  LOBYTE(v203) = v215 & 1;
  v177 = OUTLINED_FUNCTION_82();
  sub_227BE87EC(v177, v178, v235, v233, v245, v172, v231, v229, v228, v225, v221, v218, v219, v217, v203, v161, v204, v205, v206, v208, v209, *(&v209 + 1), v210, *(&v210 + 1), v211, *(&v211 + 1), v212, v213, v215, SHIBYTE(v215));
  result = sub_227B4BF3C(v245);
  v179 = result;
  for (j = 0; v179 != j; ++j)
  {
    if ((v245 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x22AAA63D0](j, v245);
    }

    else
    {
      if (j >= *((v245 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_87;
      }

      result = OUTLINED_FUNCTION_383(v245 + 8 * j);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_86;
    }

    sub_227BE4DC8();
  }

  v181 = v226[287];
  v182 = v226[274];
  sub_227D4CAF8();
  sub_227D4CB68();

  sub_227D4CAF8();
  sub_227D4CB28();
  v183 = v226[287];
  v184 = v226[282];
  v185 = v226[281];
  v186 = v226[274];

  if (v241)
  {
    v187 = 0x646567617473;
  }

  else
  {
    v187 = 1702259052;
  }

  if (v241)
  {
    v188 = 0xE600000000000000;
  }

  else
  {
    v188 = 0xE400000000000000;
  }

  sub_227D4CAF8();
  v189 = swift_task_alloc();
  v189[2] = v223;
  v189[3] = v222;
  v189[4] = v187;
  v189[5] = v188;
  v189[6] = v185;
  sub_227D49378();

  v190 = OUTLINED_FUNCTION_107_2();
  __swift_storeEnumTagSinglePayload(v190, v191, v192, v207);
  OUTLINED_FUNCTION_288();
  sub_227D4CB48();
  v193 = v226[287];
  v194 = v226[274];
  sub_227C1CB1C(v226[282], &qword_27D7E8CF8);

  sub_227D4CAF8();
  sub_227D4CB28();
  v201 = OUTLINED_FUNCTION_542();
  v202(v201);

  v195 = v226[286];
  v196 = v226[283];
  v197 = v226[282];
  v198 = v226[280];
  v199 = v226[277];
  (*(v226[279] + 8))(v226[281], v226[278]);

  OUTLINED_FUNCTION_15_0();

  return v200();
}

void sub_227BF50BC()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8778, &qword_227D5B708);
  OUTLINED_FUNCTION_9(v5);
  v32 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_103();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D20, &qword_227D5BA70);
  OUTLINED_FUNCTION_9(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_75_2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D10, &qword_227D5BA60);
  OUTLINED_FUNCTION_9(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_68_3();
  v22 = *v2;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v23);
  OUTLINED_FUNCTION_147();
  sub_227D48FF8();
  swift_getKeyPath();
  sub_227D48F28();

  v24 = *(v12 + 8);
  v25 = OUTLINED_FUNCTION_551();
  v26(v25);
  sub_227D48FE8();
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8E50, &qword_227D5BB80);
  v4[4] = sub_227C1B514();
  __swift_allocate_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v27);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v28);
  OUTLINED_FUNCTION_476();
  sub_227D48F08();
  v29 = *(v32 + 8);
  v30 = OUTLINED_FUNCTION_168_1();
  v31(v30);
  (*(v18 + 8))(v0, v16);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227BF5390(uint64_t a1, unint64_t *a2)
{
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v48 = (v5 + 63) >> 6;
  result = sub_227D4CE58();
  v9 = 0;
  v44 = a2;
  v45 = result;
  v43 = v4;
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = (*(v3 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(v3 + 56) + 32 * v11);
    v16 = *v15;
    v17 = v15[1];
    v49 = v15[2];
    v18 = *v12 == 0x6F7674656C707061 && v14 == 0xE900000000000073;
    v51 = v15[3];
    if (!v18)
    {
      if (sub_227D4DA78())
      {
        v19 = 2;
        goto LABEL_15;
      }

      v34 = v13 == 7565161 && v14 == 0xE300000000000000;
      if (v34 || (sub_227D4DA78() & 1) != 0)
      {
        v50 = 0;
      }

      else
      {
        v38 = v13 == 7893871 && v14 == 0xE300000000000000;
        if (v38 || (sub_227D4DA78() & 1) != 0)
        {
          v19 = 1;
        }

        else
        {
          v39 = v13 == 0x6F7974696C616572 && v14 == 0xE900000000000073;
          if (v39 || (sub_227D4DA78() & 1) != 0 || (v13 == 1936683640 ? (v40 = v14 == 0xE400000000000000) : (v40 = 0), v40 || (sub_227D4DA78() & 1) != 0))
          {
            v19 = 3;
          }

          else
          {
            if (v13 != 0x736F6863746177 || v14 != 0xE700000000000000)
            {
              if ((sub_227D4DA78() & 1) == 0)
              {
                sub_227D4CE58();
                goto LABEL_55;
              }

              v50 = 4;
              goto LABEL_47;
            }

            v19 = 4;
          }
        }

LABEL_15:
        v50 = v19;
      }

LABEL_47:
      if (!v17)
      {
LABEL_48:
        sub_227D4CE58();

        goto LABEL_55;
      }

      goto LABEL_17;
    }

    v50 = 2;
    if (!v17)
    {
      goto LABEL_48;
    }

LABEL_17:
    sub_227D4CE58();
    swift_bridgeObjectRetain_n();
    sub_227D4CE58();
    result = sub_227C132AC(a2, v16, v17, v50);
    v20 = result;
    v21 = *a2;
    if (*a2 >> 62)
    {
      if (v21 < 0)
      {
        v42 = *a2;
      }

      result = sub_227D4D808();
      v22 = result;
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v22 - v20;
    if (v22 < v20)
    {
      goto LABEL_88;
    }

    if (v20 < 0)
    {
      goto LABEL_89;
    }

    v24 = *a2;
    v25 = *a2 >> 62;
    v46 = v22;
    if (v25)
    {
      result = sub_227D4D808();
      v22 = v46;
    }

    else
    {
      result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result < v22)
    {
      goto LABEL_90;
    }

    v26 = -v23;
    if (__OFSUB__(0, v23))
    {
      goto LABEL_91;
    }

    if (v25)
    {
      v27 = sub_227D4D808();
    }

    else
    {
      v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = __OFADD__(v27, v26);
    result = v27 - v23;
    if (v28)
    {
      goto LABEL_92;
    }

    sub_227C1134C(result);
    v29 = *a2;
    v30 = *a2 & 0xFFFFFFFFFFFFFF8;
    v47 = type metadata accessor for ChallengeDefinitionStoreSchemaV1.Definition.PlatformMetadata(0);
    swift_arrayDestroy();
    if (v23)
    {
      if (v29 >> 62)
      {
        result = sub_227D4D808();
      }

      else
      {
        result = *(v30 + 16);
      }

      v31 = result - v46;
      if (__OFSUB__(result, v46))
      {
        goto LABEL_93;
      }

      v32 = (v30 + 32 + 8 * v46);
      if (v46 != v20 || v30 + 32 + 8 * v20 >= v32 + 8 * v31)
      {
        memmove((v30 + 32 + 8 * v20), v32, 8 * v31);
      }

      if (v29 >> 62)
      {
        result = sub_227D4D808();
      }

      else
      {
        result = *(v30 + 16);
      }

      if (__OFADD__(result, v26))
      {
        goto LABEL_94;
      }

      *(v30 + 16) = result - v23;
    }

    a2 = v44;
    v3 = v45;
    v35 = *(v47 + 48);
    v36 = *(v47 + 52);
    swift_allocObject();
    sub_227D4CE58();
    v37 = sub_227BE5344();
    MEMORY[0x22AAA5EF0](v37);
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_227D4D1E8();
    }

    sub_227D4D228();

    v4 = v43;
LABEL_55:
    v7 &= v7 - 1;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v48)
    {
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
  return result;
}

uint64_t sub_227BF5978(unint64_t a1)
{
  result = sub_227B4BF3C(a1);
  v4 = result;
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x22AAA63D0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_227C08E00();
    if (v1)
    {
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_227BF5A68(unint64_t a1, uint64_t a2, size_t *a3)
{
  v56 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v45 - v7;
  v52 = sub_227D4A408();
  v8 = *(v52 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for InternalChallengeInvite(0);
  v50 = *(v11 - 8);
  v12 = *(v50 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_227B4BF3C(a1);
  v15 = result;
  v16 = 0;
  v17 = a1 & 0xC000000000000001;
  v60 = a1 & 0xFFFFFFFFFFFFFF8;
  v47 = *MEMORY[0x277D0D1F8];
  v46 = (v8 + 104);
  v54 = a1;
  v55 = a2;
  v48 = a1 & 0xC000000000000001;
  v49 = result;
  while (1)
  {
    if (v15 == v16)
    {
    }

    if (v17)
    {
      result = MEMORY[0x22AAA63D0](v16, a1);
    }

    else
    {
      if (v16 >= *(v60 + 16))
      {
        goto LABEL_23;
      }

      v18 = *(a1 + 8 * v16 + 32);
    }

    if (__OFADD__(v16, 1))
    {
      break;
    }

    v19 = sub_227BEABC0(result);
    v21 = v20;
    if (v19 == sub_227BEC808(v19) && v21 == v22)
    {
    }

    else
    {
      v24 = sub_227D4DA78();

      if (v24)
      {
      }

      else
      {
        v26 = sub_227BEC488(v25);
        v57 = v27;
        v58 = v26;
        sub_227C08AC4();
        v29 = v28;
        v30 = sub_227BEC808(v28);
        v32 = v31;
        v33 = sub_227BEABC0(v30);
        v35 = v34;
        v36 = v51;
        (*v46)(v51, v47, v52);
        v37 = sub_227D492A8();
        __swift_storeEnumTagSinglePayload(v53, 1, 1, v37);
        sub_227CEDC0C(v58, v57, v29, v30, v32, v33, v35, v36, v59);
        v38 = v56;
        v39 = *v56;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v38 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v39 = sub_227C10E2C(0, *(v39 + 16) + 1, 1, v39);
          *v56 = v39;
        }

        v42 = *(v39 + 16);
        v41 = *(v39 + 24);
        v17 = v48;
        v15 = v49;
        if (v42 >= v41 >> 1)
        {
          v39 = sub_227C10E2C(v41 > 1, v42 + 1, 1, v39);
          *v56 = v39;
        }

        *(v39 + 16) = v42 + 1;
        v43 = v39 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
        v44 = *(v50 + 72);
        sub_227C1CAC4();

        a1 = v54;
      }
    }

    ++v16;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_227BF5E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v110 = v25;
  v26 = sub_227D48FD8();
  v27 = OUTLINED_FUNCTION_9(v26);
  v108 = v28;
  v109 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_3();
  v106 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8760, &qword_227D5B6F0);
  OUTLINED_FUNCTION_9(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_97_2(v36, v104);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8E40, &qword_227D5BB70);
  OUTLINED_FUNCTION_9(v107);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_4_17(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8E48, &qword_227D5BB78);
  OUTLINED_FUNCTION_9(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_4_17(v45);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8778, &qword_227D5B708);
  OUTLINED_FUNCTION_9(v112);
  v114 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_68_3();
  v50 = OUTLINED_FUNCTION_278();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(v50, v51);
  OUTLINED_FUNCTION_9(v52);
  v54 = v53;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_72_3();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D10, &qword_227D5BA60);
  OUTLINED_FUNCTION_9(v58);
  v113 = v59;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_104();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8E50, &qword_227D5BB80);
  v64 = OUTLINED_FUNCTION_26_5(v63, &a10);
  v105 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_437();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8E58, &qword_227D5BB88);
  OUTLINED_FUNCTION_26_5(v69, &a14);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_26_0();
  v73 = *v24;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v74);
  OUTLINED_FUNCTION_388();
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_91_0();
  sub_227D48F28();

  v111 = *(v54 + 8);
  v75 = OUTLINED_FUNCTION_87_1();
  v76(v75);
  OUTLINED_FUNCTION_458();
  sub_227D48FE8();
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v77);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v78);
  OUTLINED_FUNCTION_574();
  OUTLINED_FUNCTION_283();
  sub_227D48F08();
  v79 = *(v114 + 8);
  v79(v20, v112);
  v80 = *(v113 + 8);
  v81 = OUTLINED_FUNCTION_334();
  v80(v81);
  OUTLINED_FUNCTION_336();
  sub_227D48FF8();
  swift_getKeyPath();
  sub_227D48F28();

  v82 = OUTLINED_FUNCTION_87_1();
  v111(v82);
  sub_227D48FE8();
  OUTLINED_FUNCTION_392(&v115);
  OUTLINED_FUNCTION_141();
  sub_227D48F08();
  v79(v20, v112);
  v83 = OUTLINED_FUNCTION_334();
  v80(v83);
  OUTLINED_FUNCTION_30_6();
  sub_227B1A6E4(v84);
  OUTLINED_FUNCTION_451();
  sub_227D48FA8();
  v85 = *(v105 + 8);
  v86 = OUTLINED_FUNCTION_132_0();
  v85(v86);
  v87 = OUTLINED_FUNCTION_299();
  v85(v87);
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_323();
  sub_227D48F28();

  v88 = OUTLINED_FUNCTION_87_1();
  v111(v88);
  sub_227D492A8();
  sub_227D48FE8();
  (*(v108 + 104))(v106, *MEMORY[0x277CC8FD8], v109);
  sub_227B1A6E4(&unk_27D7E8E68);
  sub_227B1A6E4(&unk_280E7B760);
  OUTLINED_FUNCTION_8_10();
  sub_227C1CC14(v89);
  sub_227D48F88();
  v90 = *(v108 + 8);
  v91 = OUTLINED_FUNCTION_174_0();
  v92(v91);
  v93 = OUTLINED_FUNCTION_205_1();
  v94(v93);
  v95 = OUTLINED_FUNCTION_182_0();
  v96(v95, v107);
  *(v110 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8E70, &qword_227D5BB90);
  v97 = sub_227C1B3E8();
  OUTLINED_FUNCTION_421(v97);
  OUTLINED_FUNCTION_91_5();
  sub_227B1A6E4(v98);
  OUTLINED_FUNCTION_265();
  sub_227B1A6E4(v99);
  OUTLINED_FUNCTION_322();
  OUTLINED_FUNCTION_340();
  OUTLINED_FUNCTION_583();
  OUTLINED_FUNCTION_248();
  sub_227D48FA8();
  OUTLINED_FUNCTION_259();
  v100 = OUTLINED_FUNCTION_237();
  v101(v100);
  v102 = OUTLINED_FUNCTION_130_0();
  v103(v102);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227BF67E8()
{
  OUTLINED_FUNCTION_6();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CF8, &qword_227D5BA48);
  OUTLINED_FUNCTION_5(v5);
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D00, &qword_227D5BA50);
  v1[8] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v1[11] = type metadata accessor for ChallengeDefinitionStoreActor();
  OUTLINED_FUNCTION_7_16();
  sub_227C164D0(v12);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v13 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227BF6904()
{
  OUTLINED_FUNCTION_111();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  v8 = swift_task_alloc();
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;
  v0[2] = type metadata accessor for ChallengeDefinitionStoreSchemaV1.Definition(0);
  OUTLINED_FUNCTION_552();
  sub_227D49378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D08, &qword_227D5BA58);
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_448();
  sub_227D4CBF8();
  OUTLINED_FUNCTION_7_16();
  sub_227C164D0(&unk_280E7BC78);
  OUTLINED_FUNCTION_148();
  sub_227D4CAF8();
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_337();
  sub_227D4CB38();
  if (v1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    v22 = v0[10];
    v23 = v0[7];

    OUTLINED_FUNCTION_19_0();

    return v24();
  }

  else
  {
    OUTLINED_FUNCTION_489();

    result = sub_227B4BF3C(v2);
    v14 = result;
    for (i = 0; v14 != i; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v16 = OUTLINED_FUNCTION_478();
        result = MEMORY[0x22AAA63D0](v16);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        result = OUTLINED_FUNCTION_383(v2 + 8 * i);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      sub_227BE85B8();
    }

    v17 = v0[11];
    v18 = v0[6];
    sub_227D4CAF8();
    sub_227D4CB28();
    v20 = v0[9];
    v19 = v0[10];
    v21 = v0[8];
    v25 = v0[7];

    v26 = sub_227B4BF3C(v2);

    v27 = *(v20 + 8);
    v28 = OUTLINED_FUNCTION_141();
    v29(v28);

    OUTLINED_FUNCTION_115();

    return v30(v26);
  }
}

void sub_227BF6C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v94 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D28, &qword_227D5BA78);
  v93 = OUTLINED_FUNCTION_9(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_353(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D30, &qword_227D5BA80);
  v95 = OUTLINED_FUNCTION_9(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_26_0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D20, &qword_227D5BA70);
  OUTLINED_FUNCTION_9(v34);
  v36 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_75_2();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D10, &qword_227D5BA60);
  v90 = OUTLINED_FUNCTION_9(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_90_0();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8878, &qword_227D5B7E0);
  OUTLINED_FUNCTION_9(v44);
  v89 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_105_1();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8DE8, &qword_227D5BAD0);
  OUTLINED_FUNCTION_26_5(v49, &a18);
  v88 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_103();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8DF0, &qword_227D5BAD8);
  OUTLINED_FUNCTION_9(v91);
  v92 = v54;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_26_0();
  v87 = *v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
  sub_227D48FE8();
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v58);
  OUTLINED_FUNCTION_574();
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_551();
  sub_227D48F28();

  v86 = *(v36 + 8);
  v59 = OUTLINED_FUNCTION_234();
  v60(v59);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v61);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v62);
  OUTLINED_FUNCTION_17_11();
  sub_227B1A6E4(v63);
  OUTLINED_FUNCTION_173_0();
  sub_227D48F68();
  v64 = OUTLINED_FUNCTION_241();
  v65(v64, v90);
  v66 = *(v89 + 8);
  v67 = OUTLINED_FUNCTION_174_0();
  v68(v67);
  OUTLINED_FUNCTION_11_15();
  sub_227B1A6E4(v69);
  sub_227D48F48();
  v70 = *(v88 + 8);
  v71 = OUTLINED_FUNCTION_193();
  v72(v71);
  sub_227D48FF8();
  swift_getKeyPath();
  sub_227D48F28();

  v73 = OUTLINED_FUNCTION_234();
  v86(v73);
  v74 = OUTLINED_FUNCTION_58();
  __swift_instantiateConcreteTypeFromMangledNameV2(v74, v75);
  sub_227B1A6E4(&unk_27D7E8D48);
  OUTLINED_FUNCTION_30_6();
  sub_227B1A6E4(v76);
  OUTLINED_FUNCTION_512(&unk_27D7E8D58);
  OUTLINED_FUNCTION_368();
  sub_227D48F58();
  v77 = OUTLINED_FUNCTION_17_1();
  v78(v77, v93);
  *(v94 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8E00, &unk_227D5BAE0);
  v79 = sub_227C1B234();
  OUTLINED_FUNCTION_421(v79);
  sub_227B1A6E4(&unk_27D7E8E20);
  OUTLINED_FUNCTION_23_4();
  sub_227B1A6E4(v80);
  OUTLINED_FUNCTION_322();
  OUTLINED_FUNCTION_341();
  OUTLINED_FUNCTION_248();
  sub_227D48FA8();
  v81 = OUTLINED_FUNCTION_196_2();
  v82(v81, v95);
  v83 = *(v92 + 8);
  v84 = OUTLINED_FUNCTION_253();
  v85(v84);
  OUTLINED_FUNCTION_8_1();
}

void sub_227BF733C()
{
  OUTLINED_FUNCTION_11();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8778, &qword_227D5B708);
  OUTLINED_FUNCTION_9(v31);
  v1 = v0;
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_105_1();
  v5 = OUTLINED_FUNCTION_336();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_9(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_104();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8DA0, &qword_227D5BA98);
  OUTLINED_FUNCTION_9(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v19);
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_141();
  sub_227D48F28();

  v20 = *(v9 + 8);
  v21 = OUTLINED_FUNCTION_470();
  v22(v21);
  sub_227D48FE8();
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v23);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v24);
  OUTLINED_FUNCTION_416();
  OUTLINED_FUNCTION_248();
  sub_227D48F08();
  v25 = *(v1 + 8);
  v26 = OUTLINED_FUNCTION_173_0();
  v27(v26);
  v28 = *(v15 + 8);
  v29 = OUTLINED_FUNCTION_114();
  v30(v29);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227BF75D0()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v0;
  v1[5] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v5);
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_379();
  v1[8] = swift_task_alloc();
  v8 = sub_227D492A8();
  v1[9] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_379();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CF8, &qword_227D5BA48);
  OUTLINED_FUNCTION_5(v12);
  v14 = *(v13 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D00, &qword_227D5BA50);
  v1[17] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[18] = v16;
  v18 = *(v17 + 64);
  v1[19] = OUTLINED_FUNCTION_30();
  v1[20] = type metadata accessor for ChallengeDefinitionStoreActor();
  OUTLINED_FUNCTION_7_16();
  sub_227C164D0(v19);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v20 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_227BF77A4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  v4 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v0 + 16) = OUTLINED_FUNCTION_495();
  sub_227D49378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D08, &qword_227D5BA58);
  v8 = OUTLINED_FUNCTION_107_2();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_448();
  OUTLINED_FUNCTION_387();
  sub_227D4CBF8();
  OUTLINED_FUNCTION_7_16();
  sub_227C164D0(&unk_280E7BC78);
  sub_227D4CAF8();
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_337();
  sub_227D4CB38();
  if (v1)
  {
    v12 = *(v0 + 152);
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v16 = *(v0 + 112);
    v15 = *(v0 + 120);
    v18 = *(v0 + 96);
    v17 = *(v0 + 104);
    v86 = *(v0 + 88);
    v88 = *(v0 + 64);
    v90 = *(v0 + 56);
    v19 = OUTLINED_FUNCTION_537(*(v0 + 144));
    v20(v19);

    OUTLINED_FUNCTION_115();
    v22 = 0;
LABEL_25:

    return v21(v22);
  }

  OUTLINED_FUNCTION_595();

  if (!sub_227B4BF3C(v5))
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

    goto LABEL_22;
  }

  v23 = *(v0 + 72);
  v24 = *(v0 + 56);
  swift_getKeyPath();
  swift_retain_n();
  sub_227D4CE58();
  sub_227C1B0B8(v24);
  OUTLINED_FUNCTION_556();
  if (__swift_getEnumTagSinglePayload(v25, v26, v27) == 1)
  {
    v29 = *(v0 + 64);
    v28 = *(v0 + 72);
    v30 = *(v0 + 56);

    sub_227C1CB1C(v30, &qword_27D7E6D08);
    OUTLINED_FUNCTION_71_0();
    v34 = v28;
LABEL_20:
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    v57 = *(v0 + 64);
    v56 = *(v0 + 72);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, 1, v56);
    v60 = *(v0 + 144);
    v59 = *(v0 + 152);
    v61 = *(v0 + 136);
    if (EnumTagSinglePayload != 1)
    {
      v66 = *(v0 + 80);
      v67 = *(v0 + 40);
      (*(v66 + 32))(*(v0 + 120), *(v0 + 64), *(v0 + 72));
      sub_227D49298();
      sub_227D491D8();
      v69 = v68;
      v70 = *(v66 + 8);
      v71 = OUTLINED_FUNCTION_174();
      v70(v71);
      v72 = OUTLINED_FUNCTION_177();
      v70(v72);
      v73 = *(v60 + 8);
      v74 = OUTLINED_FUNCTION_91_0();
      v75(v74);
      v92 = v69 < v67;
      goto LABEL_24;
    }

    v62 = *(v0 + 64);
    v63 = *(v60 + 8);
    v64 = OUTLINED_FUNCTION_91_0();
    v65(v64);
    sub_227C1CB1C(v62, &qword_27D7E6D08);
LABEL_22:
    v92 = 0;
LABEL_24:
    v76 = *(v0 + 152);
    v78 = *(v0 + 120);
    v77 = *(v0 + 128);
    v80 = *(v0 + 104);
    v79 = *(v0 + 112);
    v82 = *(v0 + 88);
    v81 = *(v0 + 96);
    v83 = *(v0 + 56);
    v84 = *(v0 + 64);

    OUTLINED_FUNCTION_115();
    v22 = v92;
    goto LABEL_25;
  }

  v35 = *(v0 + 80);
  v36 = *(v35 + 32);
  (v36)(*(v0 + 112), *(v0 + 56), *(v0 + 72));
  result = sub_227B4BF3C(v5);
  v89 = v5 & 0xC000000000000001;
  v91 = result;
  v85 = v5;
  v87 = v5 & 0xFFFFFFFFFFFFFF8;
  for (i = 0; ; ++i)
  {
    if (v91 == i)
    {
      v52 = *(v0 + 112);
      v54 = *(v0 + 64);
      v53 = *(v0 + 72);

      v55 = OUTLINED_FUNCTION_336();
      v36(v55);
      v31 = OUTLINED_FUNCTION_107_2();
      v34 = v53;
      goto LABEL_20;
    }

    if (v89)
    {
      v51 = OUTLINED_FUNCTION_237();
      result = MEMORY[0x22AAA63D0](v51);
      goto LABEL_13;
    }

    if ((i & 0x8000000000000000) != 0)
    {
      break;
    }

    if (i >= *(v87 + 16))
    {
      goto LABEL_30;
    }

    result = OUTLINED_FUNCTION_383(v5 + 8 * i);
LABEL_13:
    if (__OFADD__(i, 1))
    {
      goto LABEL_29;
    }

    v40 = *(v0 + 104);
    v39 = *(v0 + 112);
    v41 = v36;
    v42 = *(v0 + 96);
    v43 = *(v0 + 72);

    sub_227BE7728(v44);

    v45 = OUTLINED_FUNCTION_551();
    v36 = v41;
    v41(v45);
    OUTLINED_FUNCTION_8_10();
    sub_227C1CC14(&unk_280E7B6F0);
    OUTLINED_FUNCTION_234();
    if (sub_227D4CEE8())
    {
      v46 = *(v0 + 104);
      v47 = *(v0 + 112);
      v48 = *(v0 + 72);
      v49 = OUTLINED_FUNCTION_147();
      v50(v49);
      OUTLINED_FUNCTION_85_1();
      v36 = v41;
      result = (v41)();
    }

    else
    {
      result = (*(v35 + 8))(*(v0 + 104), *(v0 + 72));
    }

    v5 = v85;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_227BF7D90()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CF8, &qword_227D5BA48);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D00, &qword_227D5BA50);
  v1[7] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v1[10] = type metadata accessor for ChallengeDefinitionStoreActor();
  OUTLINED_FUNCTION_7_16();
  sub_227C164D0(v11);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v12 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227BF7EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[9];
  v16 = v14[10];
  v17 = v14[5];
  v18 = v14[6];
  v20 = v14[3];
  v19 = v14[4];
  v21 = swift_task_alloc();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  v14[2] = type metadata accessor for ChallengeDefinitionStoreSchemaV1.Definition(0);
  OUTLINED_FUNCTION_552();
  sub_227D49378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D08, &qword_227D5BA58);
  OUTLINED_FUNCTION_454();
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_525();
  OUTLINED_FUNCTION_545();
  sub_227D4CBF8();
  OUTLINED_FUNCTION_7_16();
  sub_227C164D0(&unk_280E7BC78);
  sub_227D4CAF8();
  sub_227D4CB18();
  v26 = v14[6];
  (*(v14[8] + 8))(v14[9], v14[7]);

  v27 = v14[1];
  OUTLINED_FUNCTION_16_0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v14 + 1, a11, a12, a13, a14);
}

void sub_227BF808C()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v4 = OUTLINED_FUNCTION_148();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_9(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_75_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D28, &qword_227D5BA78);
  OUTLINED_FUNCTION_9(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_72_3();
  v18 = *v1;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v19);
  sub_227D48FF8();
  swift_getKeyPath();
  sub_227D48F28();

  v20 = *(v8 + 8);
  v21 = OUTLINED_FUNCTION_234();
  v22(v21);
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D30, &qword_227D5BA80);
  v3[4] = sub_227C1AC70();
  __swift_allocate_boxed_opaque_existential_1(v3);
  v23 = OUTLINED_FUNCTION_341();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v25);
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_321();
  sub_227B1A6E4(v26);
  OUTLINED_FUNCTION_17_11();
  sub_227B1A6E4(v27);
  OUTLINED_FUNCTION_358();
  sub_227D48F58();
  v28 = *(v14 + 8);
  v29 = OUTLINED_FUNCTION_87_1();
  v30(v29);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227BF8300()
{
  OUTLINED_FUNCTION_6();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CF8, &qword_227D5BA48);
  OUTLINED_FUNCTION_5(v5);
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D00, &qword_227D5BA50);
  v1[8] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v1[11] = type metadata accessor for ChallengeDefinitionStoreActor();
  OUTLINED_FUNCTION_7_16();
  sub_227C164D0(v12);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v13 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227BF841C()
{
  OUTLINED_FUNCTION_28_1();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = *(v0 + 32);
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  *(v0 + 16) = OUTLINED_FUNCTION_495();
  OUTLINED_FUNCTION_552();
  sub_227D49378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D08, &qword_227D5BA58);
  v8 = OUTLINED_FUNCTION_107_2();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_448();
  OUTLINED_FUNCTION_387();
  sub_227D4CBF8();
  OUTLINED_FUNCTION_7_16();
  sub_227C164D0(&unk_280E7BC78);
  sub_227D4CAF8();
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_337();
  sub_227D4CB38();
  if (v1)
  {
    v12 = *(v0 + 56);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    OUTLINED_FUNCTION_115();
    v14 = 0;
LABEL_11:

    return v13(v14);
  }

  else
  {
    OUTLINED_FUNCTION_489();

    v15 = sub_227B4BF3C(v2);
    v16 = 0;
    v17 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v15 == v16)
      {
        v25 = *(v0 + 72);
        v24 = *(v0 + 80);
        v27 = *(v0 + 56);
        v26 = *(v0 + 64);
        v28 = *(v0 + 40);

        v29 = OUTLINED_FUNCTION_340();
        LOBYTE(v28) = sub_227BF8D14(v29, v30);

        v31 = *(v25 + 8);
        v32 = OUTLINED_FUNCTION_147();
        v33(v32);

        OUTLINED_FUNCTION_115();
        v14 = v28 & 1;
        goto LABEL_11;
      }

      sub_227C109CC(v16, v17 == 0, v2);
      if (v17)
      {
        v23 = OUTLINED_FUNCTION_236();
        result = MEMORY[0x22AAA63D0](v23);
      }

      else
      {
        v18 = *(v2 + 8 * v16 + 32);
      }

      if (__OFADD__(v16, 1))
      {
        break;
      }

      sub_227BE7458(result);
      OUTLINED_FUNCTION_185();
      OUTLINED_FUNCTION_183_0();
      sub_227B274CC(v20, v21, v22);

      ++v16;
    }

    __break(1u);
  }

  return result;
}

void sub_227BF86D0()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v64 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D10, &qword_227D5BA60);
  OUTLINED_FUNCTION_9(v3);
  v63 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_76_2(v8, v57);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8978, &qword_227D5B890);
  v62 = OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26_0();
  v61 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D18, &qword_227D5BA68);
  OUTLINED_FUNCTION_9(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26_0();
  v18 = OUTLINED_FUNCTION_236();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_9(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_90_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D28, &qword_227D5BA78);
  v60 = OUTLINED_FUNCTION_9(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_61_4();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D30, &qword_227D5BA80);
  OUTLINED_FUNCTION_9(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_106_1();
  v59 = *v1;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v34);
  OUTLINED_FUNCTION_355();
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_177();
  sub_227D48F28();

  v58 = *(v22 + 8);
  v35 = OUTLINED_FUNCTION_417();
  v36(v35);
  v37 = OUTLINED_FUNCTION_371();
  __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
  sub_227B1A6E4(&unk_27D7E8D48);
  OUTLINED_FUNCTION_30_6();
  sub_227B1A6E4(v39);
  OUTLINED_FUNCTION_17_11();
  sub_227B1A6E4(v40);
  sub_227D48F58();
  v41 = OUTLINED_FUNCTION_225();
  v42(v41, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68F0, &qword_227D5B840);
  sub_227D48FE8();
  OUTLINED_FUNCTION_355();
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_2();
  sub_227D48F28();

  OUTLINED_FUNCTION_417();
  OUTLINED_FUNCTION_548();
  v43();
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v44);
  sub_227B1A6E4(&unk_27D7E8D60);
  OUTLINED_FUNCTION_15_8();
  sub_227B1A6E4(v45);
  OUTLINED_FUNCTION_288();
  sub_227D48F68();
  v46 = *(v63 + 8);
  v47 = OUTLINED_FUNCTION_336();
  v48(v47);
  OUTLINED_FUNCTION_259();
  v49(v61, v62);
  *(v64 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D68, &qword_227D5BA90);
  v50 = sub_227C1ABE4();
  OUTLINED_FUNCTION_421(v50);
  OUTLINED_FUNCTION_23_4();
  sub_227B1A6E4(v51);
  OUTLINED_FUNCTION_11_15();
  sub_227B1A6E4(v52);
  OUTLINED_FUNCTION_322();
  OUTLINED_FUNCTION_248();
  sub_227D48FA8();
  OUTLINED_FUNCTION_228();
  v53 = OUTLINED_FUNCTION_150();
  v54(v53);
  v55 = OUTLINED_FUNCTION_130_0();
  v56(v55);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227BF8D14(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;
  result = sub_227D4CE58();
  v11 = 0;
  v24 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        v17 = *(a1 + 40);
        sub_227D4DB58();
        sub_227D4CE58();
        sub_227D4D048();
        v18 = sub_227D4DB98();
        v19 = ~(-1 << *(a1 + 32));
        do
        {
          v20 = v18 & v19;
          if (((*(v9 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
          {

            return 0;
          }

          v21 = (*(a1 + 48) + 16 * v20);
          if (*v21 == v16 && v21[1] == v15)
          {
            break;
          }

          v23 = sub_227D4DA78();
          v18 = v20 + 1;
        }

        while ((v23 & 1) == 0);

        v2 = v24;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227BF8ED4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_198_2();

  return MEMORY[0x2821FE8D8](v3, v4, v5);
}

uint64_t sub_227BF8F58()
{
  OUTLINED_FUNCTION_119();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v3[1] = sub_227B3E2E8;

  return sub_227BEFD8C();
}

uint64_t sub_227BF9028()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_0(v1);

  return sub_227BF1EA8();
}

uint64_t sub_227BF90B4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_0(v1);

  return sub_227BF2ABC();
}

uint64_t sub_227BF9140()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);

  return sub_227BF3440();
}

uint64_t sub_227BF91C4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return sub_227BF3B10();
}

uint64_t sub_227BF9250()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_242();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_57_2(v3);

  return sub_227BF67E8();
}

uint64_t sub_227BF92E4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return sub_227BF75D0();
}

uint64_t sub_227BF9378()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return sub_227BF7D90();
}

uint64_t sub_227BF9404()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_242();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_57_2(v3);

  return sub_227BF8300();
}

void sub_227BF9498()
{
  OUTLINED_FUNCTION_11();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v134 = v11;
  v135 = v10;
  v123 = v12;
  v13 = sub_227D49328();
  v14 = OUTLINED_FUNCTION_9(v13);
  v130 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_191_2();
  v133 = sub_227D4CAB8();
  v18 = OUTLINED_FUNCTION_9(v133);
  v125 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_3();
  v129 = v22;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_314();
  v120 = v24;
  OUTLINED_FUNCTION_191_2();
  v25 = sub_227D4CCB8();
  v26 = OUTLINED_FUNCTION_5(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5_3();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_104();
  v33 = sub_227D49188();
  v34 = OUTLINED_FUNCTION_9(v33);
  v122 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_314();
  v119 = v39;
  OUTLINED_FUNCTION_191_2();
  v128 = sub_227D4CCF8();
  v40 = OUTLINED_FUNCTION_9(v128);
  v131 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_3();
  v121 = v44;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_438();
  v126 = v5;
  v127 = v13;
  v124 = v1;
  if (v7)
  {

    sub_227D4CCC8();
    v46 = v1;
    v47 = v5;
  }

  else
  {
    v118 = v3;
    v48 = v9[3];
    v49 = v9[4];
    v50 = OUTLINED_FUNCTION_168_1();
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v52 = sub_227B281AC();
    v54 = *v52;
    v53 = v52[1];
    v55 = objc_opt_self();
    sub_227D4CE58();
    sub_227D4CE58();
    v56 = [v55 defaultManager];
    (*(v49 + 32))(v54, v53, v123, v135, v134, 0xD00000000000001ELL, 0x8000000227D773D0, v56, v48, v49);

    if (__swift_getEnumTagSinglePayload(v2, 1, v33) == 1)
    {
      sub_227C1CB1C(v2, &qword_27D7E6CD8);
      v57 = sub_227B1AF8C();
      (*(v125 + 16))(v120, v57, v133);
      v58 = *(v130 + 16);
      v59 = OUTLINED_FUNCTION_478();
      v60(v59);
      sub_227D4CE58();
      v61 = sub_227D4CA98();
      v62 = sub_227D4D438();

      if (os_log_type_enabled(v61, v62))
      {
        OUTLINED_FUNCTION_229();
        v63 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        *v63 = 136315650;
        OUTLINED_FUNCTION_298();
        v64 = OUTLINED_FUNCTION_360();
        *(v63 + 4) = sub_227B1B1A4(v64, v65, v66);
        *(v63 + 12) = 2080;
        sub_227B1B1A4(v123, v135, &v136);
        v132 = v62;
        OUTLINED_FUNCTION_418();

        *(v63 + 14) = v62;
        *(v63 + 22) = 2080;
        OUTLINED_FUNCTION_86_3();
        sub_227C1CC14(v67);
        v68 = sub_227D4DA38();
        v69 = *(v130 + 8);
        v70 = OUTLINED_FUNCTION_173();
        v69(v70);
        v71 = OUTLINED_FUNCTION_147();
        sub_227B1B1A4(v71, v72, v73);
        OUTLINED_FUNCTION_280();

        *(v63 + 24) = v68;
        _os_log_impl(&dword_227B0D000, v61, v132, "%s failed to create db url for playerID: %s, locale: %s", v63, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_135_3();
        MEMORY[0x22AAA7130]();
        OUTLINED_FUNCTION_135_3();
        MEMORY[0x22AAA7130]();

        __swift_destroy_boxed_opaque_existential_1Tm(v126);
        (v69)(v134, v13);
        v74 = OUTLINED_FUNCTION_17_1();
        v75(v74, v133);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v126);
        v115 = *(v130 + 8);
        v116 = OUTLINED_FUNCTION_276();
        v115(v116);
        v117 = OUTLINED_FUNCTION_173();
        v115(v117);
        (*(v125 + 8))(v120, v133);
      }

      v111 = v9;
      goto LABEL_15;
    }

    v76 = v33;

    OUTLINED_FUNCTION_554();
    v77 = OUTLINED_FUNCTION_82();
    v78(v77);
    v79 = *(v122 + 16);
    v80 = OUTLINED_FUNCTION_340();
    v81(v80);
    sub_227D4CCA8();
    v46 = v124;
    v82 = OUTLINED_FUNCTION_360();
    OUTLINED_FUNCTION_603(v82, v83);
    (*(v122 + 8))(v119, v76);
    v3 = v118;
    v47 = v126;
  }

  sub_227D4CBB8();
  OUTLINED_FUNCTION_419();
  sub_227D4CDE8();
  sub_227C1CB6C();
  sub_227D4CD38();
  sub_227C1CBC0();
  v84 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_520();
  OUTLINED_FUNCTION_482();

  if (!v46)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    OUTLINED_FUNCTION_228();
    v108(v134, v13);
    v109 = OUTLINED_FUNCTION_241();
    v110(v109, v128);
    v111 = v9;
LABEL_15:
    type metadata accessor for ChallengeInstanceStoreActor();
    swift_deallocPartialClassInstance();
    goto LABEL_16;
  }

  v3[4] = v46;
  sub_227C19454(v47, (v3 + 5));
  v85 = sub_227D4CB88();
  OUTLINED_FUNCTION_166_2(v85);
  swift_allocObject();
  OUTLINED_FUNCTION_280();
  swift_retain_n();
  sub_227D4CB98();
  OUTLINED_FUNCTION_419();
  v86 = sub_227D4CD28();
  OUTLINED_FUNCTION_166_2(v86);
  swift_allocObject();
  OUTLINED_FUNCTION_223();
  v87 = sub_227D4CD18();
  OUTLINED_FUNCTION_261();
  v89 = sub_227C1CC14(v88);
  v3[2] = v87;
  v3[3] = v89;
  v90 = sub_227B1AF8C();
  (*(v125 + 16))(v129, v90, v133);
  v91 = *(v131 + 16);
  v92 = OUTLINED_FUNCTION_201();
  v93(v92);
  v94 = sub_227D4CA98();
  v95 = sub_227D4D428();
  if (OUTLINED_FUNCTION_33_4(v95))
  {
    v96 = OUTLINED_FUNCTION_12_1();
    v136 = OUTLINED_FUNCTION_420();
    *v96 = 136315394;
    OUTLINED_FUNCTION_298();
    v97 = OUTLINED_FUNCTION_360();
    *(v96 + 4) = sub_227B1B1A4(v97, v98, v99);
    *(v96 + 12) = 2080;
    MEMORY[0x22AAA5A20]();
    sub_227D490C8();
    v100 = OUTLINED_FUNCTION_182_0();
    v101(v100);
    v102 = *(v131 + 8);
    v102(v121, v128);
    v103 = OUTLINED_FUNCTION_168_1();
    sub_227B1B1A4(v103, v104, v105);
    OUTLINED_FUNCTION_595();

    *(v96 + 14) = v131 + 8;
    _os_log_impl(&dword_227B0D000, v94, v95, "%s initialized at: %s", v96, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_135_3();
    MEMORY[0x22AAA7130]();
    v106 = OUTLINED_FUNCTION_101_2();
    MEMORY[0x22AAA7130](v106);

    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    OUTLINED_FUNCTION_228();
    v107(v134, v127);
    (*(v125 + 8))(v129, v133);
    v102(v124, v128);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    OUTLINED_FUNCTION_228();
    v112(v134, v127);
    v113 = *(v131 + 8);
    v114 = OUTLINED_FUNCTION_488();
    v113(v114);
    (*(v125 + 8))(v129, v133);
    (v113)(v124, v128);
  }

  v111 = v9;
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1Tm(v111);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227BF9F10()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 120) = v1;
  *(v0 + 128) = v2;
  *(v0 + 168) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = v5;
  *(v0 + 96) = v6;
  v7 = sub_227D49328();
  *(v0 + 136) = v7;
  OUTLINED_FUNCTION_10_0(v7);
  *(v0 + 144) = v8;
  v10 = *(v9 + 64);
  *(v0 + 152) = OUTLINED_FUNCTION_30();

  return MEMORY[0x2822009F8](sub_227BF9FC8, 0, 0);
}

uint64_t sub_227BF9FC8()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 128);
  v2 = *(v0 + 168);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  (*(*(v0 + 144) + 16))(*(v0 + 152), *(v0 + 112), *(v0 + 136));
  sub_227C19454(v3, v0 + 16);
  sub_227C19454(v1, v0 + 56);
  type metadata accessor for ChallengeInstanceStoreActor();
  swift_allocObject();
  sub_227D4CE58();
  OUTLINED_FUNCTION_82();
  sub_227BF9498();
  *(v0 + 160) = v6;
  if (v6)
  {
    OUTLINED_FUNCTION_4_18();
    sub_227C164D0(v7);

    OUTLINED_FUNCTION_9_2();
    sub_227D4D278();
    OUTLINED_FUNCTION_185();
    v8 = OUTLINED_FUNCTION_157();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {
    v11 = *(v0 + 152);

    OUTLINED_FUNCTION_115();
    v13 = *(v0 + 160);

    return v12(v13);
  }
}

uint64_t sub_227BFA130()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 160);
  sub_227C03EF8();

  v2 = *(v0 + 152);

  OUTLINED_FUNCTION_115();
  v4 = *(v0 + 160);

  return v3(v4);
}

uint64_t sub_227BFA19C()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_227D4CAB8();
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8750, &qword_227D5B6D8);
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_30();
  v1[9] = type metadata accessor for ChallengeInstanceStoreActor();
  OUTLINED_FUNCTION_4_18();
  sub_227C164D0(v10);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v11 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227BFA2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_138();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v28 = v24[8];
  v27 = v24[9];
  v30 = v24[3];
  v29 = v24[4];
  OUTLINED_FUNCTION_4_18();
  sub_227C164D0(&unk_280E7BC80);
  OUTLINED_FUNCTION_132_0();
  sub_227D4CAF8();
  v31 = OUTLINED_FUNCTION_407();
  v32 = type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance(v31);
  v33 = swift_task_alloc();
  *(v33 + 16) = v30;
  v24[2] = v32;
  sub_227D49378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8758, &unk_227D5B6E0);
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  OUTLINED_FUNCTION_0_39();
  v38 = OUTLINED_FUNCTION_247();
  sub_227C164D0(v38);
  OUTLINED_FUNCTION_371();
  OUTLINED_FUNCTION_609();
  if (v28)
  {
    sub_227C1CB1C(v24[8], &unk_27D7E8750);
    v41 = v24[6];
    v42 = v24[7];
    v43 = v24[5];
    v44 = v24[3];

    sub_227B1AF8C();
    v45 = OUTLINED_FUNCTION_439();
    v46(v45);
    sub_227D4CE58();
    v47 = v28;
    v48 = sub_227D4CA98();
    v49 = sub_227D4D438();

    v50 = os_log_type_enabled(v48, v49);
    v51 = v24[6];
    v52 = v24[7];
    v53 = v24[5];
    if (v50)
    {
      a10 = v24[7];
      v54 = v24[3];
      v55 = OUTLINED_FUNCTION_12_1();
      a11 = v33;
      v56 = OUTLINED_FUNCTION_13_3();
      OUTLINED_FUNCTION_229();
      v57 = swift_slowAlloc();
      a12 = v57;
      *v55 = 136315394;
      v58 = MEMORY[0x22AAA5F20](v54, MEMORY[0x277D837D0]);
      a9 = v53;
      v60 = sub_227B1B1A4(v58, v59, &a12);

      *(v55 + 4) = v60;
      *(v55 + 12) = 2112;
      v61 = v28;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 14) = v62;
      *v56 = v62;
      _os_log_impl(&dword_227B0D000, v48, v49, "Failed to delete challenge IDs: %s, error: %@", v55, 0x16u);
      sub_227C1CB1C(v56, &qword_27D7E68C8);
      OUTLINED_FUNCTION_135_3();
      MEMORY[0x22AAA7130]();
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      OUTLINED_FUNCTION_135_3();
      MEMORY[0x22AAA7130]();
      OUTLINED_FUNCTION_135_3();
      MEMORY[0x22AAA7130]();

      (*(v51 + 8))(a10, a9);
    }

    else
    {

      v63 = *(v51 + 8);
      v64 = OUTLINED_FUNCTION_148();
      v66(v64, v65);
    }
  }

  else
  {
    v39 = v24[9];
    v40 = v24[4];
    sub_227C1CB1C(v24[8], &unk_27D7E8750);

    OUTLINED_FUNCTION_236();
    sub_227D4CAF8();
    sub_227D4CB28();
  }

  v68 = v24[7];
  v67 = v24[8];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227BFA5FC()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return sub_227BFEF5C();
}

void sub_227BFA684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_351();
  v161 = v11;
  v162 = v10;
  v159 = v15;
  v149 = v16;
  v17 = sub_227D4A318();
  v18 = OUTLINED_FUNCTION_9(v17);
  v146 = v19;
  v147 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_3();
  v148 = v22;
  OUTLINED_FUNCTION_191_2();
  v23 = sub_227D4A2B8();
  v24 = OUTLINED_FUNCTION_5(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_3();
  v155 = v27;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v28 = OUTLINED_FUNCTION_9(v163);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_3();
  v143[0] = v33;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_266();
  v144 = v35;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_316();
  v37 = sub_227D492A8();
  v38 = OUTLINED_FUNCTION_9(v37);
  v150 = v39;
  v151 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_3();
  v143[1] = v42;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_414(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v46 = OUTLINED_FUNCTION_9(v45);
  v152 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_2_3();
  v154 = v50;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_314();
  v160 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  v54 = OUTLINED_FUNCTION_9(v53);
  v157 = v55;
  v158 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_2_3();
  v156 = v58;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v59);
  v61 = v143 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8830, &unk_227D5B790);
  OUTLINED_FUNCTION_5(v62);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_75_2();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v67 = OUTLINED_FUNCTION_9(v66);
  v69 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_2_3();
  v145 = v72;
  OUTLINED_FUNCTION_6_0();
  v74 = MEMORY[0x28223BE20](v73);
  v76 = v143 - v75;
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_219_1();
  v78 = v77;
  sub_227B17738();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v78);
  v153 = v45;
  if (EnumTagSinglePayload == 1)
  {
    sub_227C1CB1C(v14, &qword_27D7E8830);
    sub_227BEDDD4();
    if (v81)
    {
      v160 = 0;
    }

    else
    {
      v100 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E85E0, &qword_227D59C20);
      v101 = sub_227D4A328();
      OUTLINED_FUNCTION_10_0(v101);
      v103 = *(v102 + 72);
      OUTLINED_FUNCTION_491();
      v104 = swift_allocObject();
      *(v104 + 16) = xmmword_227D4E520;
      (*(v146 + 104))(v148, *MEMORY[0x277D0D160], v147);
      a10 = v100;
      v105 = sub_227C1897C();
      sub_227B2819C(MEMORY[0x277D84A28], v105);
      sub_227D4DC18();
      v160 = v104;
      v80 = sub_227D4A2E8();
    }

    v106 = v161;
    v159 = sub_227BEC488(v80);
    v161 = v107;
    sub_227BEC488(v159);
    sub_227D4A8E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CE8, &unk_227D5BA30);
    OUTLINED_FUNCTION_342();
    sub_227B27EC4();
    v109 = *(*(v108 - 8) + 72);
    OUTLINED_FUNCTION_491();
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_227D4E520;
    v111 = (v110 + v78);
    *v111 = sub_227BEC808(v110);
    v111[1] = v112;
    OUTLINED_FUNCTION_373();
    swift_storeEnumTagMultiPayload();
    sub_227D4A8B8();
    if (v106)
    {
      v113 = OUTLINED_FUNCTION_17_1();
      v114(v113);
    }

    else
    {
      v126 = v144;
      sub_227C08BDC();
      sub_227BEDC00();
      sub_227D4A658();
      (*(v30 + 8))(v126, v163);

      sub_227C08AC4();
      v130 = v129;
      v131 = *(v129 + 16);
      if (v131)
      {
        v158 = 0;
        OUTLINED_FUNCTION_426(MEMORY[0x277D84F90]);
        sub_227C11484();
        v157 = v130;
        v132 = (v130 + 40);
        v133 = v143[0];
        do
        {
          v135 = *(v132 - 1);
          v134 = *v132;
          sub_227D4CE58();
          OUTLINED_FUNCTION_87_1();
          sub_227D4A698();
          v137 = *(a10 + 16);
          v136 = *(a10 + 24);
          if (v137 >= v136 >> 1)
          {
            OUTLINED_FUNCTION_12(v136);
            sub_227C11484();
          }

          *(a10 + 16) = v137 + 1;
          v138 = *(v30 + 80);
          OUTLINED_FUNCTION_19();
          (*(v30 + 32))(a10 + v139 + *(v30 + 72) * v137, v133, v163);
          v132 += 2;
          --v131;
        }

        while (v131);
      }

      sub_227BECB80(v140);
      sub_227BED9FC();
      sub_227CEEFA0(v142, v141 & 1, v155);
      sub_227D4A3D8();
    }
  }

  else
  {
    OUTLINED_FUNCTION_554();
    v82 = OUTLINED_FUNCTION_334();
    v84 = v83(v82);
    v145 = sub_227BEC488(v84);
    v146 = v85;
    sub_227BEC488(v145);
    v159 = v61;
    v86 = sub_227D4A8E8();
    sub_227BEC808(v86);
    sub_227D4A888();
    v154 = v69;
    v87 = *(v69 + 16);
    v147 = v76;
    v148 = v12;
    v88 = OUTLINED_FUNCTION_148();
    v156 = v78;
    v89(v88);
    sub_227C08AC4();
    v91 = v90;
    v92 = *(v90 + 16);
    if (v92)
    {
      OUTLINED_FUNCTION_426(MEMORY[0x277D84F90]);
      sub_227C11484();
      v144 = v91;
      v93 = (v91 + 40);
      do
      {
        v95 = *(v93 - 1);
        v94 = *v93;
        sub_227D4CE58();
        OUTLINED_FUNCTION_87_1();
        sub_227D4A698();
        v97 = *(a10 + 16);
        v96 = *(a10 + 24);
        if (v97 >= v96 >> 1)
        {
          OUTLINED_FUNCTION_12(v96);
          OUTLINED_FUNCTION_373();
          sub_227C11484();
        }

        *(a10 + 16) = v97 + 1;
        v98 = *(v30 + 80);
        OUTLINED_FUNCTION_19();
        (*(v30 + 32))(a10 + v99 + *(v30 + 72) * v97, v13, v163);
        v93 += 2;
        --v92;
      }

      while (v92);
    }

    v116 = v155;
    v117 = sub_227BECB80(v115);
    sub_227BED85C(v117);
    v118 = v161;
    static Array<A>.fromISO8601Duration(iso8601Duration:)();
    v119 = v160;

    if (v118)
    {

      v120 = OUTLINED_FUNCTION_196_2();
      v121(v120);
      v122 = *(v154 + 8);
      v123 = v156;
      v122(v147, v156);
      (*(v152 + 8))(v119, v153);
      v124 = OUTLINED_FUNCTION_225();
      v125(v124);
      v122(v148, v123);
    }

    else
    {
      sub_227BED9FC();
      sub_227CEEFA0(v128, v127 & 1, v116);
      sub_227D4A3D8();
      (*(v154 + 8))(v148, v156);
    }
  }

  OUTLINED_FUNCTION_352();
}

uint64_t sub_227BFB134()
{
  OUTLINED_FUNCTION_6();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8838, &qword_227D5B7B0);
  v1[13] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[14] = v5;
  v7 = *(v6 + 64);
  v1[15] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8750, &qword_227D5B6D8);
  OUTLINED_FUNCTION_5(v8);
  v10 = *(v9 + 64);
  v1[16] = OUTLINED_FUNCTION_379();
  v1[17] = swift_task_alloc();
  v1[18] = type metadata accessor for ChallengeInstanceStoreActor();
  OUTLINED_FUNCTION_4_18();
  sub_227C164D0(v11);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v12 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227BFB25C()
{
  OUTLINED_FUNCTION_28_1();
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8758, &unk_227D5B6E0);
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = *v2;
  if (*v2)
  {
    v9 = *(v0 + 128);
    v8 = *(v0 + 136);
    v10 = *(v0 + 88);
    *(v0 + 16) = v7;
    v11 = *(v10 + 8);
    v12 = *(v10 + 24);
    v13 = *(v10 + 40);
    *(v0 + 72) = *(v10 + 56);
    *(v0 + 56) = v13;
    *(v0 + 40) = v12;
    *(v0 + 24) = v11;
    sub_227BFB5FC();
    v14 = OUTLINED_FUNCTION_58();
    sub_227C1CB1C(v14, v15);
    OUTLINED_FUNCTION_150();
    sub_227C1AB80();
  }

  v16 = *(v0 + 136);
  v17 = *(v0 + 144);
  v18 = *(v0 + 120);
  v19 = *(v0 + 128);
  v21 = *(v0 + 96);
  v20 = *(v0 + 104);
  sub_227B17738();
  type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance(0);
  OUTLINED_FUNCTION_0_39();
  OUTLINED_FUNCTION_448();
  sub_227D4CBF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8648, &qword_227D5C840);
  OUTLINED_FUNCTION_198_2();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_227D59C50;
  *(v22 + 32) = swift_getKeyPath();
  OUTLINED_FUNCTION_167_1();
  sub_227D4CBC8();
  OUTLINED_FUNCTION_4_18();
  sub_227C164D0(&unk_280E7BC80);
  OUTLINED_FUNCTION_317();
  sub_227D4CAF8();
  OUTLINED_FUNCTION_110_3();
  sub_227D4CB38();
  OUTLINED_FUNCTION_595();

  v23 = *(v0 + 80);
  v24 = sub_227B4BF3C(v18);
  v25 = MEMORY[0x22AAA60B0](v24, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v26 = OUTLINED_FUNCTION_91_0();
  *(v23 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_149();
  *(v23 + 32) = sub_227B1A6E4(v28);
  v46 = v25;
  v29 = sub_227B4BF3C(v18);
  for (i = 0; v29 != i; ++i)
  {
    OUTLINED_FUNCTION_605();
    if ((v18 & 0xC000000000000001) != 0)
    {
      v35 = OUTLINED_FUNCTION_173_0();
      result = MEMORY[0x22AAA63D0](v35);
    }

    else
    {
      result = OUTLINED_FUNCTION_522(v18 + 8 * i);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
      return result;
    }

    sub_227BEC488(result);
    OUTLINED_FUNCTION_185();
    OUTLINED_FUNCTION_183_0();
    sub_227B274CC(v32, v33, v34);
  }

  v37 = *(v0 + 128);
  v36 = *(v0 + 136);
  v39 = *(v0 + 112);
  v38 = *(v0 + 120);
  v40 = *(v0 + 104);
  v41 = *(v0 + 80);

  *v41 = v46;
  v42 = *(v39 + 8);
  v43 = OUTLINED_FUNCTION_148();
  v44(v43);
  sub_227C1CB1C(v36, &qword_27D7E8750);

  OUTLINED_FUNCTION_15_0();

  return v45();
}

void sub_227BFB5FC()
{
  OUTLINED_FUNCTION_11();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8758, &unk_227D5B6E0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_3();
  v102 = v11;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_266();
  v101 = v13;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_266();
  v100 = v15;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_266();
  v99 = v17;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_266();
  v98 = v19;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_266();
  v97 = v21;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_266();
  v96 = v23;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_266();
  v106 = v25;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_173_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_437();
  v108 = v0;
  v109 = type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance(0);
  sub_227D49378();
  v107 = v0;
  sub_227D49378();
  v95 = v0;
  v28 = *(v0 + 56);
  v29 = *(v28 + 16);
  v30 = MEMORY[0x277D84F90];
  v103 = v4;
  v104 = v2;
  v105 = v1;
  if (v29)
  {
    OUTLINED_FUNCTION_546();
    v110 = v30;
    sub_227C114C4(0, v29, 0);
    v31 = v30;
    v32 = (v28 + 32);
    v33 = *(v30 + 16);
    do
    {
      v35 = *v32++;
      v34 = v35;
      v110 = v31;
      v36 = *(v31 + 24);
      v37 = v33 + 1;
      if (v33 >= v36 >> 1)
      {
        OUTLINED_FUNCTION_12(v36);
        OUTLINED_FUNCTION_367();
        sub_227C114C4(v38, v39, v40);
        v31 = v110;
      }

      *(v31 + 16) = v37;
      *(v31 + v33++ + 32) = v34;
      --v29;
    }

    while (v29);
  }

  else
  {
    v37 = *(MEMORY[0x277D84F90] + 16);
    if (!v37)
    {
      v42 = MEMORY[0x277D84F90];

      goto LABEL_26;
    }

    OUTLINED_FUNCTION_546();
    v31 = v30;
  }

  v110 = v30;
  sub_227B3CA88(0, v37, 0);
  v41 = 32;
  v42 = v110;
  OUTLINED_FUNCTION_534();
  do
  {
    v47 = *(v31 + v41);
    if (v47 == 1)
    {
      v48 = v46;
    }

    else
    {
      v48 = 7237495;
    }

    if (v47 == 1)
    {
      v49 = v45;
    }

    else
    {
      v49 = 0xE300000000000000;
    }

    if (*(v31 + v41))
    {
      v50 = v48;
    }

    else
    {
      v50 = v44;
    }

    if (*(v31 + v41))
    {
      v51 = v49;
    }

    else
    {
      v51 = v43;
    }

    v110 = v42;
    v53 = *(v42 + 16);
    v52 = *(v42 + 24);
    if (v53 >= v52 >> 1)
    {
      v55 = OUTLINED_FUNCTION_12(v52);
      sub_227B3CA88(v55, v53 + 1, 1);
      OUTLINED_FUNCTION_534();
      v45 = 0xE900000000000064;
      v44 = 0x657669746361;
      v43 = 0xE600000000000000;
      v42 = v110;
    }

    *(v42 + 16) = v53 + 1;
    v54 = v42 + 16 * v53;
    *(v54 + 32) = v50;
    *(v54 + 40) = v51;
    ++v41;
    --v37;
  }

  while (v37);

  v5 = v94[1];
  v8 = v94[0];
LABEL_26:
  v56 = v102;
  OUTLINED_FUNCTION_455(v94);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_109();
  *(v58 - 16) = v42;
  OUTLINED_FUNCTION_328();
  v59 = v106;
  sub_227D49378();

  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_109();
  v61 = v95;
  v62 = v96;
  *(v63 - 16) = v95;
  OUTLINED_FUNCTION_328();
  v64 = sub_227D49378();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_436();
  v65 = v105;
  *(v66 - 32) = v104;
  *(v66 - 24) = v65;
  *(v66 - 16) = v59;
  *(v66 - 8) = v62;
  OUTLINED_FUNCTION_328();
  v67 = v97;
  v68 = sub_227D49378();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_109();
  *(v69 - 16) = v61;
  OUTLINED_FUNCTION_328();
  v70 = v98;
  v71 = sub_227D49378();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_109();
  *(v72 - 16) = v61;
  OUTLINED_FUNCTION_328();
  v73 = v99;
  v74 = sub_227D49378();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_109();
  *(v75 - 16) = v61;
  OUTLINED_FUNCTION_328();
  v76 = v100;
  v77 = sub_227D49378();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_109();
  *(v78 - 16) = v61;
  OUTLINED_FUNCTION_328();
  v79 = v101;
  v80 = sub_227D49378();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_436();
  *(v81 - 32) = v70;
  *(v81 - 24) = v73;
  *(v81 - 16) = v76;
  *(v81 - 8) = v79;
  OUTLINED_FUNCTION_328();
  v82 = sub_227D49378();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_109();
  *(v83 - 16) = v67;
  *(v83 - 8) = v56;
  OUTLINED_FUNCTION_328();
  sub_227D49378();
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v5);
  v87 = *(v8 + 8);
  v88 = OUTLINED_FUNCTION_262();
  v87(v88);
  v89 = OUTLINED_FUNCTION_269();
  v87(v89);
  v90 = OUTLINED_FUNCTION_323();
  v87(v90);
  v91 = OUTLINED_FUNCTION_233();
  v87(v91);
  v92 = OUTLINED_FUNCTION_476();
  v87(v92);
  v93 = OUTLINED_FUNCTION_403();
  v87(v93);
  (v87)(v62, v5);
  (v87)(v106, v5);
  (v87)(v105, v5);
  (v87)(v104, v5);
  OUTLINED_FUNCTION_539();
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227BFBCB8()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return sub_227C00294();
}

void sub_227BFBD40()
{
  OUTLINED_FUNCTION_351();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26_0();
  v81 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8830, &unk_227D5B790);
  OUTLINED_FUNCTION_5(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_90_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CC8, &qword_227D5B810);
  OUTLINED_FUNCTION_5(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_0();
  v82 = v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9(v80);
  v77 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_26_0();
  v84 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  v24 = OUTLINED_FUNCTION_9(v23);
  v78 = v25;
  v79 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_26_0();
  v85 = v29;
  OUTLINED_FUNCTION_191_2();
  v30 = sub_227D492A8();
  v31 = OUTLINED_FUNCTION_9(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_3();
  v83 = v36;
  OUTLINED_FUNCTION_6_0();
  v38 = MEMORY[0x28223BE20](v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_172_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_437();
  sub_227BEDDD4();
  if (v41)
  {
    (sub_227BECD5C)();
  }

  else
  {
    sub_227BECB80(v40);
    sub_227C1897C();
    sub_227B27F84(MEMORY[0x277D84A28]);
    sub_227D49228();
    v42 = *(v33 + 8);
    v43 = OUTLINED_FUNCTION_114();
    v44(v43);
  }

  v45 = *(v33 + 32);
  v46 = OUTLINED_FUNCTION_262();
  v48 = v47(v46);
  sub_227BEC488(v48);
  sub_227D4A8E8();
  sub_227B17738();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v49 = OUTLINED_FUNCTION_13_2();
  if (__swift_getEnumTagSinglePayload(v49, 1, v2) == 1)
  {
    sub_227C1CB1C(v0, &qword_27D7E8830);
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v80);
    sub_227C08BDC();
    if (__swift_getEnumTagSinglePayload(v82, 1, v80) != 1)
    {
      sub_227C1CB1C(v82, &qword_27D7E6CC8);
    }

LABEL_10:
    v67 = (*(v33 + 16))(v83, v3, v30);
    sub_227BED1C8(v67);
    if (sub_227BECFF0() == 0x657669746361 && v68 == 0xE600000000000000)
    {
    }

    else
    {
      v70 = sub_227D4DA78();

      if ((v70 & 1) == 0)
      {
        v72 = v81;
        sub_227BECD5C(v71);
        v73 = 0;
LABEL_18:
        __swift_storeEnumTagSinglePayload(v72, v73, 1, v30);
        OUTLINED_FUNCTION_283();
        sub_227D49F38();
        v74 = *(v33 + 8);
        v75 = OUTLINED_FUNCTION_197_2();
        v76(v75);
        goto LABEL_19;
      }
    }

    v73 = 1;
    v72 = v81;
    goto LABEL_18;
  }

  sub_227D4A838();
  if (!v1)
  {
    OUTLINED_FUNCTION_14_0(v2);
    v61 = *(v60 + 8);
    v62 = OUTLINED_FUNCTION_279();
    v63(v62);
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v80);
    (*(v77 + 32))(v84, v82, v80);
    goto LABEL_10;
  }

  (*(v78 + 8))(v85, v79);
  v53 = *(v33 + 8);
  v54 = OUTLINED_FUNCTION_197_2();
  v55(v54);
  OUTLINED_FUNCTION_14_0(v2);
  v57 = *(v56 + 8);
  v58 = OUTLINED_FUNCTION_279();
  v59(v58);
LABEL_19:
  OUTLINED_FUNCTION_352();
}

uint64_t sub_227BFC2C4()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return sub_227C014F4();
}

void sub_227BFC34C()
{
  OUTLINED_FUNCTION_351();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8830, &unk_227D5B790);
  OUTLINED_FUNCTION_5(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_68_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CC8, &qword_227D5B810);
  OUTLINED_FUNCTION_5(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_61_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_104();
  v19 = sub_227BED490();
  if (v19)
  {
    v20 = v19;
    OUTLINED_FUNCTION_234();
    sub_227B17738();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
    if (__swift_getEnumTagSinglePayload(v4, 1, v21) == 1)
    {
      sub_227C1CB1C(v4, &qword_27D7E8830);
      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v13);
      sub_227C08BDC();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v13);
      if (EnumTagSinglePayload != 1)
      {
        EnumTagSinglePayload = sub_227C1CB1C(v3, &qword_27D7E6CC8);
      }

      goto LABEL_9;
    }

    sub_227D4A838();
    if (!v1)
    {
      OUTLINED_FUNCTION_14_0(v21);
      v31 = *(v30 + 8);
      v32 = OUTLINED_FUNCTION_113();
      v33(v32);
      OUTLINED_FUNCTION_99();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v13);
      OUTLINED_FUNCTION_554();
      v37 = OUTLINED_FUNCTION_149_0();
      EnumTagSinglePayload = v38(v37);
LABEL_9:
      MEMORY[0x28223BE20](EnumTagSinglePayload);
      OUTLINED_FUNCTION_109();
      *(v39 - 16) = v0;
      *(v39 - 8) = v2;
      sub_227BEE908(sub_227C195CC, v40, v20);

      v41 = *(v15 + 8);
      v42 = OUTLINED_FUNCTION_236();
      v43(v42);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_14_0(v21);
    v27 = *(v26 + 8);
    v28 = OUTLINED_FUNCTION_113();
    v29(v28);
  }

LABEL_10:
  OUTLINED_FUNCTION_352();
}

uint64_t sub_227BFC640()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return sub_227C02660();
}

uint64_t sub_227BFC6C8()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D4CAB8();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v7 = type metadata accessor for BulkChallengeData(0);
  OUTLINED_FUNCTION_10_0(v7);
  v1[7] = v8;
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_30();
  v1[9] = type metadata accessor for ChallengeInstanceStoreActor();
  OUTLINED_FUNCTION_4_18();
  sub_227C164D0(v11);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_479();
  v1[10] = v12;
  v1[11] = v13;
  v14 = OUTLINED_FUNCTION_497();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

void sub_227BFCB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_351();
  a19 = v23;
  a20 = v24;
  v185 = v21;
  v25 = v20;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8830, &unk_227D5B790);
  OUTLINED_FUNCTION_5(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_26_0();
  v177 = v30;
  v31 = OUTLINED_FUNCTION_191_2();
  v32 = type metadata accessor for BulkChallengeData.Participant(v31);
  v33 = OUTLINED_FUNCTION_9(v32);
  v183 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_5_3();
  v186 = v37;
  v38 = OUTLINED_FUNCTION_191_2();
  v184 = type metadata accessor for BulkChallengeData.Invitee(v38);
  v39 = OUTLINED_FUNCTION_9(v184);
  v181 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_5_3();
  v180 = v43;
  OUTLINED_FUNCTION_191_2();
  v44 = sub_227D492A8();
  v45 = OUTLINED_FUNCTION_9(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_3();
  v179 = v50;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_173_2();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_266();
  v178 = v53;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v54);
  v56 = v160 - v55;
  v57 = type metadata accessor for BulkChallengeData(0);
  v58 = &v25[v57[9]];
  v59 = *v58;
  v60 = v58[1];
  sub_227D4CE58();
  OUTLINED_FUNCTION_488();
  v61 = sub_227BEC364();
  if (v61 == 3)
  {
    v62 = sub_227D49E08();
    OUTLINED_FUNCTION_20_7();
    sub_227C1CC14(v63);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    v65 = v64;
    v187 = 0;
    v188 = 0xE000000000000000;
    sub_227D4D668();

    OUTLINED_FUNCTION_3_7();
    v187 = 0xD00000000000001ALL;
    v188 = v66;
    v67 = OUTLINED_FUNCTION_488();
    MEMORY[0x22AAA5DA0](v67);
    v68 = v188;
    *v65 = v187;
    v65[1] = v68;
    v69 = *MEMORY[0x277D0CE68];
    OUTLINED_FUNCTION_14_0(v62);
    (*(v70 + 104))(v65);
    swift_willThrow();
LABEL_35:
    OUTLINED_FUNCTION_352();
    return;
  }

  v175 = v32;
  v176 = v47;
  v174 = v61;
  v182 = v44;
  v72 = *v25;
  v71 = *(v25 + 1);
  sub_227D4CE58();
  sub_227D49288();
  v73 = &v25[v57[5]];
  v74 = v185;
  v75 = sub_227D4A898();
  v77 = v74;
  if (v74)
  {
    v78 = OUTLINED_FUNCTION_594();
    v79(v78);

    goto LABEL_35;
  }

  v80 = v25;
  v164 = v75;
  v165 = v72;
  v173 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227D4E520;
  v82 = &v80[v57[6]];
  *(inited + 32) = sub_227D4A6A8();
  *(inited + 40) = v83;
  v162 = inited;
  v84 = v176 + 16;
  v85 = *(v176 + 16);
  v86 = v182;
  v85(v178, &v80[v57[7]], v182);
  v87 = &v80[v57[8]];
  v170 = v84;
  v169 = v85;
  v85(v22, v87, v86);
  v88 = &v80[v57[10]];
  v89 = *(v88 + 1);
  v160[0] = *v88;
  v90 = *&v80[v57[14]];
  OUTLINED_FUNCTION_540();
  v172 = v71;
  v171 = v80;
  v91 = v56;
  v161 = v56;
  v160[1] = v92;
  v163 = v57;
  if (v90)
  {
    v93 = *(v90 + 16);
    if (v93)
    {
      v189 = MEMORY[0x277D84F90];
      sub_227D4CE58();
      v168 = v90;
      sub_227D4D728();
      v94 = 0;
      v95 = *(v181 + 80);
      OUTLINED_FUNCTION_19();
      v167 = v96 + v97;
      v166 = v93;
      while (v94 < *(v96 + 16))
      {
        v98 = v180;
        v99 = *(v181 + 72);
        sub_227C18A64();
        v100 = (v98 + *(v184 + 28));
        v101 = v100[1];
        if (v101)
        {
          v102 = *v100;
          v103 = v100[1];
          sub_227D4CE58();
          OUTLINED_FUNCTION_355();
          v104 = sub_227D4D868();

          v105 = v179;
          if (v104 >= 8)
          {
            v148 = sub_227D49E08();
            OUTLINED_FUNCTION_20_7();
            sub_227C1CC14(v149);
            OUTLINED_FUNCTION_208();
            swift_allocError();
            v151 = v150;
            v187 = 0;
            v188 = 0xE000000000000000;
            sub_227D4D668();

            OUTLINED_FUNCTION_3_7();
            v187 = 0xD000000000000018;
            v188 = v152;
            MEMORY[0x22AAA5DA0](v102, v101);
            v153 = v188;
            *v151 = v187;
            v151[1] = v153;
            v154 = *MEMORY[0x277D0CE68];
            OUTLINED_FUNCTION_14_0(v148);
            (*(v155 + 104))(v151);
            swift_willThrow();
LABEL_33:
            v156 = v182;
            v157 = v176;
            OUTLINED_FUNCTION_550();

            swift_setDeallocating();
            sub_227C109F0();
            OUTLINED_FUNCTION_297();
            v158 = *(v157 + 8);
            v159 = OUTLINED_FUNCTION_334();
            v158(v159);
            (v158)(v178, v156);
            (v158)(v161, v156);
LABEL_34:

            goto LABEL_35;
          }
        }

        else
        {
          v105 = v179;
        }

        sub_227D4A898();
        if (v77)
        {
          goto LABEL_33;
        }

        v106 = v184;
        v169(v105, v98 + *(v184 + 20), v182);
        v107 = v98 + *(v106 + 24);
        sub_227D4A898();
        v185 = 0;
        ++v94;
        v108 = type metadata accessor for ChallengeInstanceStoreSchemaV1.Invitee(0);
        OUTLINED_FUNCTION_166_2(v108);
        swift_allocObject();
        sub_227BEA370();
        OUTLINED_FUNCTION_297();
        sub_227D4D6F8();
        v109 = *(v189 + 16);
        sub_227D4D738();
        OUTLINED_FUNCTION_148();
        sub_227D4D748();
        sub_227D4D708();
        v77 = v185;
        v80 = v171;
        v96 = v168;
        if (v166 == v94)
        {
          v91 = v161;
          goto LABEL_18;
        }
      }

      goto LABEL_37;
    }

    sub_227D4CE58();
LABEL_18:
    v111 = v177;
    v110 = v162;
  }

  else
  {
    sub_227D4CE58();
    v110 = v162;
    v111 = v177;
  }

  OUTLINED_FUNCTION_457();
  v113 = *&v80[*(v112 + 60)];
  if (!v113 || !*(v113 + 16))
  {
LABEL_26:
    OUTLINED_FUNCTION_457();
    v131 = *(v130 + 44);
    sub_227B17738();
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
    OUTLINED_FUNCTION_556();
    if (__swift_getEnumTagSinglePayload(v133, v134, v135) == 1)
    {
      v185 = v77;
      sub_227C1CB1C(v111, &qword_27D7E8830);
    }

    else
    {
      sub_227D4A848();
      if (v77)
      {
        OUTLINED_FUNCTION_547();

        OUTLINED_FUNCTION_550();

        swift_setDeallocating();
        sub_227C109F0();

        v136 = OUTLINED_FUNCTION_408();
        v110(v136);
        (v110)(v178, v110);
        (v110)(v91, v110);
        OUTLINED_FUNCTION_14_0(v132);
        (*(v137 + 8))(v177, v132);
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_492();
      v185 = 0;
      OUTLINED_FUNCTION_14_0(v132);
      (*(v140 + 8))(v177, v132);
    }

    v141 = v163[13];
    v142 = &v171[v163[12]];
    v144 = *v142;
    v143 = v142[1];
    v145 = *&v171[v141];
    v146 = v171[v141 + 8];
    v147 = type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance(0);
    OUTLINED_FUNCTION_166_2(v147);
    swift_allocObject();
    sub_227D4CE58();
    sub_227BEDE78();
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_432(&a13);
  v170 = v114;
  sub_227D4D728();
  v115 = 0;
  v116 = *(v183 + 80);
  OUTLINED_FUNCTION_19();
  v179 = v113 + v117;
  v180 = v113;
  v118 = v186;
  while (1)
  {
    OUTLINED_FUNCTION_484(v180);
    if (v119)
    {
      break;
    }

    v120 = *(v183 + 72);
    sub_227C18A64();
    sub_227D4A898();
    if (v77)
    {
      OUTLINED_FUNCTION_547();

      OUTLINED_FUNCTION_550();

      v138 = v162;
      swift_setDeallocating();
      sub_227C109F0();

      OUTLINED_FUNCTION_296();
      v139 = OUTLINED_FUNCTION_408();
      v110(v139);
      (v110)(v178, v138);
      (v110)(v161, v138);
      goto LABEL_34;
    }

    v121 = v175[6];
    v184 = *(v118 + v175[5]);
    v185 = 0;
    ++v115;
    v122 = *(v118 + v121 + 8);
    v181 = *(v118 + v121);
    v123 = (v186 + v175[7]);
    v124 = *v123;
    v125 = *(v123 + 8);
    v126 = (v186 + v175[8]);
    v127 = *v126;
    v128 = *(v126 + 8);
    v129 = type metadata accessor for ChallengeInstanceStoreSchemaV1.Participant(0);
    OUTLINED_FUNCTION_166_2(v129);
    v110 = swift_allocObject();
    sub_227D4CE58();
    OUTLINED_FUNCTION_269();
    v118 = v186;
    v77 = v185;
    sub_227BEB540();
    OUTLINED_FUNCTION_296();
    sub_227D4D6F8();
    OUTLINED_FUNCTION_515();
    OUTLINED_FUNCTION_193();
    sub_227D4D748();
    sub_227D4D708();
    if (v170 == v115)
    {
      v91 = v161;
      v110 = v162;
      v111 = v177;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_227BFD7FC()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_227D4CAB8();
  v1[6] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v1[8] = OUTLINED_FUNCTION_379();
  v1[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8750, &qword_227D5B6D8);
  OUTLINED_FUNCTION_5(v8);
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v1[11] = type metadata accessor for ChallengeInstanceStoreActor();
  OUTLINED_FUNCTION_4_18();
  sub_227C164D0(v11);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v12 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227BFD918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  v18 = v16[10];
  v17 = v16[11];
  v20 = v16[4];
  v19 = v16[5];
  v21 = v16[3];
  OUTLINED_FUNCTION_4_18();
  sub_227C164D0(&unk_280E7BC80);
  OUTLINED_FUNCTION_132_0();
  sub_227D4CAF8();
  v22 = OUTLINED_FUNCTION_407();
  v23 = type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance(v22);
  v24 = swift_task_alloc();
  *(v24 + 16) = v21;
  *(v24 + 24) = v20;
  v16[2] = v23;
  v105 = v24;
  sub_227D49378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8758, &unk_227D5B6E0);
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  OUTLINED_FUNCTION_0_39();
  v29 = OUTLINED_FUNCTION_247();
  sub_227C164D0(v29);
  OUTLINED_FUNCTION_371();
  OUTLINED_FUNCTION_609();
  if (v18)
  {
    sub_227C1CB1C(v16[10], &qword_27D7E8750);
    v32 = v16[7];
    v33 = v16[8];
    v34 = v16[6];
    v35 = v16[4];

    sub_227B1AF8C();
    v36 = OUTLINED_FUNCTION_439();
    v37(v36);
    sub_227D4CE58();
    v38 = v18;
    v39 = sub_227D4CA98();
    v40 = sub_227D4D438();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v16[7];
    if (v41)
    {
      a9 = v16[6];
      a10 = v16[8];
      v44 = v16[3];
      v43 = v16[4];
      OUTLINED_FUNCTION_229();
      swift_slowAlloc();
      v45 = OUTLINED_FUNCTION_400();
      a12 = OUTLINED_FUNCTION_420();
      *v23 = 136315650;
      OUTLINED_FUNCTION_21_2();
      v46 = OUTLINED_FUNCTION_360();
      v49 = sub_227B1B1A4(v46, v47, v48);
      OUTLINED_FUNCTION_84(v49);
      v50 = OUTLINED_FUNCTION_173_0();
      *(v23 + 14) = sub_227B1B1A4(v50, v51, v52);
      OUTLINED_FUNCTION_404();
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 24) = v53;
      *v45 = v53;
      OUTLINED_FUNCTION_486();
      _os_log_impl(v54, v55, v56, v57, v58, 0x20u);
      sub_227C1CB1C(v45, &qword_27D7E68C8);
      OUTLINED_FUNCTION_135_3();
      MEMORY[0x22AAA7130]();
      OUTLINED_FUNCTION_509();
      OUTLINED_FUNCTION_135_3();
      MEMORY[0x22AAA7130]();
      OUTLINED_FUNCTION_135_3();
      MEMORY[0x22AAA7130]();

      (*(v42 + 8))(a10, a9);
    }

    else
    {

      v59 = *(v42 + 8);
      v60 = OUTLINED_FUNCTION_132_0();
      v62(v60, v61);
    }
  }

  else
  {
    v30 = v16[11];
    v31 = v16[5];
    sub_227C1CB1C(v16[10], &qword_27D7E8750);

    OUTLINED_FUNCTION_236();
    sub_227D4CAF8();
    sub_227D4CB28();
    v75 = v16[9];
    v77 = v16[6];
    v76 = v16[7];
    v78 = v16[4];

    sub_227B1AF8C();
    v79 = OUTLINED_FUNCTION_439();
    v80(v79);
    sub_227D4CE58();
    v81 = sub_227D4CA98();
    v82 = sub_227D4D418();

    v83 = os_log_type_enabled(v81, v82);
    v84 = v16[9];
    v86 = v16[6];
    v85 = v16[7];
    if (v83)
    {
      v88 = v16[3];
      v87 = v16[4];
      v89 = OUTLINED_FUNCTION_12_1();
      a12 = OUTLINED_FUNCTION_420();
      *v89 = 136315394;
      OUTLINED_FUNCTION_21_2();
      v90 = OUTLINED_FUNCTION_360();
      v93 = sub_227B1B1A4(v90, v91, v92);
      OUTLINED_FUNCTION_84(v93);
      v94 = OUTLINED_FUNCTION_114();
      *(v89 + 14) = sub_227B1B1A4(v94, v95, v96);
      OUTLINED_FUNCTION_486();
      _os_log_impl(v97, v98, v99, v100, v101, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_135_3();
      MEMORY[0x22AAA7130]();
      OUTLINED_FUNCTION_135_3();
      MEMORY[0x22AAA7130]();
    }

    v102 = *(v85 + 8);
    v103 = OUTLINED_FUNCTION_91_0();
    v104(v103);
  }

  v64 = v16[9];
  v63 = v16[10];
  v65 = v16[8];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, v105, a12, a13, a14, a15, a16);
}

void sub_227BFDD74()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8778, &qword_227D5B708);
  OUTLINED_FUNCTION_9(v4);
  v34 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_106_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8780, &qword_227D5B710);
  OUTLINED_FUNCTION_9(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_75_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8788, &qword_227D5B718);
  OUTLINED_FUNCTION_9(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_61_4();
  v21 = *v1;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v22);
  OUTLINED_FUNCTION_323();
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_551();
  sub_227D48F28();

  v23 = *(v11 + 8);
  v24 = OUTLINED_FUNCTION_262();
  v25(v24);
  sub_227D48FE8();
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8820, &qword_227D5B788);
  v3[4] = sub_227C189D8();
  __swift_allocate_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v26);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v27);
  OUTLINED_FUNCTION_545();
  sub_227D48F18();
  v28 = *(v34 + 8);
  v29 = OUTLINED_FUNCTION_147();
  v30(v29);
  v31 = *(v17 + 8);
  v32 = OUTLINED_FUNCTION_226_0();
  v33(v32);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227BFE054()
{
  OUTLINED_FUNCTION_6();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  type metadata accessor for ChallengeInstanceStoreActor();
  OUTLINED_FUNCTION_4_18();
  sub_227C164D0(v3);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v4 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_227BFE16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_351();
  a19 = v20;
  a20 = v21;
  v22 = sub_227D4B988();
  v23 = OUTLINED_FUNCTION_9(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_191_2();
  v28 = sub_227D4B7B8();
  v29 = OUTLINED_FUNCTION_9(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_191_2();
  v32 = sub_227D492A8();
  v33 = OUTLINED_FUNCTION_5(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_172_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_173_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_315();
  sub_227D4B678();
  sub_227D49288();
  v39 = sub_227D4B708();
  v41 = OUTLINED_FUNCTION_538(v39, v40);
  if (!MEMORY[0x22AAA4490](v41))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
    OUTLINED_FUNCTION_378();
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_227D4E520;
    *(v42 + 32) = sub_227D4B728();
    *(v42 + 40) = v43;
  }

  MEMORY[0x22AAA4440]();
  v44 = sub_227C1897C();
  v45 = OUTLINED_FUNCTION_177();
  v46 = sub_227B27F4C(v45);
  MEMORY[0x22AAA4400](v46);
  v47 = OUTLINED_FUNCTION_177();
  sub_227B27F4C(v47);
  sub_227CEE0D0();
  v48 = sub_227D4B738();
  v50 = OUTLINED_FUNCTION_543(v48, v49);
  v51 = *(MEMORY[0x22AAA4430](v50) + 16);
  v52 = MEMORY[0x277D84F90];
  if (v51)
  {
    OUTLINED_FUNCTION_432(&a12);
    OUTLINED_FUNCTION_13_2();
    sub_227D4D728();
    OUTLINED_FUNCTION_199_0();
    do
    {
      OUTLINED_FUNCTION_321();
      v68();
      sub_227D4B7A8();
      v25 = v53;
      v54 = sub_227D4B788();
      OUTLINED_FUNCTION_571(v54);
      sub_227B27F4C(MEMORY[0x277D84A28]);
      sub_227D4B768();
      sub_227D4B798();
      v55 = type metadata accessor for ChallengeInstanceStoreSchemaV1.Invitee(0);
      OUTLINED_FUNCTION_166_2(v55);
      swift_allocObject();
      OUTLINED_FUNCTION_311();
      v56 = OUTLINED_FUNCTION_386();
      v57(v56);
      sub_227D4D6F8();
      v58 = *(v70 + 16);
      sub_227D4D738();
      v44 = v69;
      sub_227D4D748();
      sub_227D4D708();
      v52 += v67;
      --v51;
    }

    while (v51);

    OUTLINED_FUNCTION_409();
  }

  else
  {
  }

  v59 = *(MEMORY[0x22AAA4410]() + 16);
  if (v59)
  {
    sub_227D4D728();
    v60 = *(v25 + 16);
    v61 = *(v25 + 80);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_369();
    do
    {
      OUTLINED_FUNCTION_82_3();
      v69();
      sub_227D4B978();
      sub_227D4B948();
      sub_227D4B958();
      MEMORY[0x22AAA4680]();
      sub_227D4B968();
      v62 = type metadata accessor for ChallengeInstanceStoreSchemaV1.Participant(0);
      OUTLINED_FUNCTION_166_2(v62);
      swift_allocObject();
      OUTLINED_FUNCTION_281();
      v63 = *v67;
      v64 = OUTLINED_FUNCTION_114();
      v65(v64);
      sub_227D4D6F8();
      OUTLINED_FUNCTION_515();
      sub_227D4D748();
      sub_227D4D708();
      v44 += v68;
      --v59;
    }

    while (v59);
  }

  sub_227D4B688();
  sub_227D4B6A8();
  sub_227D4B698();
  sub_227D4B6D8();
  MEMORY[0x22AAA4460]();
  v66 = type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance(0);
  OUTLINED_FUNCTION_166_2(v66);
  swift_allocObject();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_352();
}

uint64_t sub_227BFE658()
{
  OUTLINED_FUNCTION_6();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  type metadata accessor for ChallengeInstanceStoreActor();
  OUTLINED_FUNCTION_4_18();
  sub_227C164D0(v3);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v4 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_227BFE770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_351();
  a19 = v20;
  a20 = v21;
  v22 = sub_227D4B988();
  v23 = OUTLINED_FUNCTION_9(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_191_2();
  v28 = sub_227D4B7B8();
  v29 = OUTLINED_FUNCTION_9(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_191_2();
  v32 = sub_227D492A8();
  v33 = OUTLINED_FUNCTION_5(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_172_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_173_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_315();
  sub_227D4AF68();
  sub_227D49288();
  v39 = sub_227D4B008();
  v41 = OUTLINED_FUNCTION_538(v39, v40);
  if (!MEMORY[0x22AAA3DB0](v41))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
    OUTLINED_FUNCTION_378();
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_227D4E520;
    *(v42 + 32) = sub_227D4B048();
    *(v42 + 40) = v43;
  }

  MEMORY[0x22AAA3D40]();
  v44 = sub_227C1897C();
  v45 = OUTLINED_FUNCTION_177();
  v46 = sub_227B27F4C(v45);
  MEMORY[0x22AAA3D00](v46);
  v47 = OUTLINED_FUNCTION_177();
  sub_227B27F4C(v47);
  sub_227CE9690();
  v48 = sub_227D4B058();
  v50 = OUTLINED_FUNCTION_543(v48, v49);
  v51 = *(MEMORY[0x22AAA3D30](v50) + 16);
  v52 = MEMORY[0x277D84F90];
  if (v51)
  {
    OUTLINED_FUNCTION_432(&a12);
    OUTLINED_FUNCTION_13_2();
    sub_227D4D728();
    OUTLINED_FUNCTION_199_0();
    do
    {
      OUTLINED_FUNCTION_321();
      v68();
      sub_227D4B7A8();
      v25 = v53;
      v54 = sub_227D4B788();
      OUTLINED_FUNCTION_571(v54);
      sub_227B27F4C(MEMORY[0x277D84A28]);
      sub_227D4B768();
      sub_227D4B798();
      v55 = type metadata accessor for ChallengeInstanceStoreSchemaV1.Invitee(0);
      OUTLINED_FUNCTION_166_2(v55);
      swift_allocObject();
      OUTLINED_FUNCTION_311();
      v56 = OUTLINED_FUNCTION_386();
      v57(v56);
      sub_227D4D6F8();
      v58 = *(v70 + 16);
      sub_227D4D738();
      v44 = v69;
      sub_227D4D748();
      sub_227D4D708();
      v52 += v67;
      --v51;
    }

    while (v51);

    OUTLINED_FUNCTION_409();
  }

  else
  {
  }

  v59 = *(MEMORY[0x22AAA3D10]() + 16);
  if (v59)
  {
    sub_227D4D728();
    v60 = *(v25 + 16);
    v61 = *(v25 + 80);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_369();
    do
    {
      OUTLINED_FUNCTION_82_3();
      v69();
      sub_227D4B978();
      sub_227D4B948();
      sub_227D4B958();
      MEMORY[0x22AAA4680]();
      sub_227D4B968();
      v62 = type metadata accessor for ChallengeInstanceStoreSchemaV1.Participant(0);
      OUTLINED_FUNCTION_166_2(v62);
      swift_allocObject();
      OUTLINED_FUNCTION_281();
      v63 = *v67;
      v64 = OUTLINED_FUNCTION_114();
      v65(v64);
      sub_227D4D6F8();
      OUTLINED_FUNCTION_515();
      sub_227D4D748();
      sub_227D4D708();
      v44 += v68;
      --v59;
    }

    while (v59);
  }

  sub_227D4AF78();
  sub_227D4AFA8();
  sub_227D4AF98();
  sub_227D4AFD8();
  MEMORY[0x22AAA3D70]();
  v66 = type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance(0);
  OUTLINED_FUNCTION_166_2(v66);
  swift_allocObject();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_352();
}

void sub_227BFEC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_351();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_407();
  v23 = sub_227D492A8();
  v24 = OUTLINED_FUNCTION_9(v23);
  v49 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v28 = sub_227D4CAB8();
  v29 = OUTLINED_FUNCTION_9(v28);
  v51 = v30;
  v52 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_3();
  v50 = v33;
  type metadata accessor for ChallengeInstanceStoreActor();
  OUTLINED_FUNCTION_4_18();
  sub_227C164D0(&unk_280E7BC80);
  OUTLINED_FUNCTION_417();
  sub_227D4CAF8();
  v34 = OUTLINED_FUNCTION_342();
  type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance(v34);
  OUTLINED_FUNCTION_0_39();
  v35 = OUTLINED_FUNCTION_247();
  sub_227C164D0(v35);
  OUTLINED_FUNCTION_200();
  sub_227D4CB68();

  OUTLINED_FUNCTION_417();
  sub_227D4CAF8();
  sub_227D4CB28();

  if (!v20)
  {
    v36 = sub_227B1AF8C();
    (*(v51 + 16))(v50, v36, v52);

    v37 = sub_227D4CA98();
    v38 = sub_227D4D428();

    if (os_log_type_enabled(v37, v38))
    {
      OUTLINED_FUNCTION_415();
      v39 = swift_slowAlloc();
      OUTLINED_FUNCTION_229();
      v40 = swift_slowAlloc();
      a10 = v40;
      *v39 = 136315138;
      v41 = sub_227BEC488(v40);
      v43 = sub_227B1B1A4(v41, v42, &a10);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_227B0D000, v37, v38, "Stored challenge ID: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      OUTLINED_FUNCTION_135_3();
      MEMORY[0x22AAA7130]();
      v44 = OUTLINED_FUNCTION_101_2();
      MEMORY[0x22AAA7130](v44);
    }

    v45 = (*(v51 + 8))(v50, v52);
    sub_227BEC488(v45);
    sub_227BEC62C();
    OUTLINED_FUNCTION_177();
    sub_227C046D4();

    v46 = *(v49 + 8);
    v47 = OUTLINED_FUNCTION_233();
    v48(v47);
  }

  OUTLINED_FUNCTION_352();
}

uint64_t sub_227BFEF5C()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_402(v1, v2);
  v0[19] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[20] = v4;
  v6 = *(v5 + 64);
  v0[21] = OUTLINED_FUNCTION_30();
  v7 = sub_227D4A3F8();
  v0[22] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[23] = v8;
  v10 = *(v9 + 64);
  v0[24] = OUTLINED_FUNCTION_379();
  v0[25] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[26] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[27] = v12;
  v14 = *(v13 + 64);
  v0[28] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8830, &unk_227D5B790);
  OUTLINED_FUNCTION_5(v15);
  v17 = *(v16 + 64);
  v0[29] = OUTLINED_FUNCTION_379();
  v0[30] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6970, &qword_227D4EA60);
  OUTLINED_FUNCTION_10_0(v18);
  v0[31] = v19;
  v21 = *(v20 + 64);
  v0[32] = OUTLINED_FUNCTION_379();
  v0[33] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8750, &qword_227D5B6D8);
  OUTLINED_FUNCTION_5(v22);
  v24 = *(v23 + 64);
  v0[34] = OUTLINED_FUNCTION_30();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8838, &qword_227D5B7B0);
  v0[35] = v25;
  OUTLINED_FUNCTION_10_0(v25);
  v0[36] = v26;
  v28 = *(v27 + 64);
  v0[37] = OUTLINED_FUNCTION_30();
  v0[38] = type metadata accessor for ChallengeInstanceStoreActor();
  OUTLINED_FUNCTION_4_18();
  sub_227C164D0(v29);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_479();
  v0[39] = v30;
  v0[40] = v31;
  v32 = OUTLINED_FUNCTION_497();

  return MEMORY[0x2822009F8](v32, v33, v34);
}

uint64_t sub_227BFF7FC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = v2[45];
  *v3 = *v1;
  v2[46] = v0;

  OUTLINED_FUNCTION_209();
  v6 = *(v5 + 352);
  if (v0)
  {
    v7 = v2[42];

    v8 = v2[39];
    v9 = v2[40];
    v10 = sub_227C001A4;
  }

  else
  {

    v8 = v2[39];
    v9 = v2[40];
    v10 = sub_227BFF92C;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

void sub_227BFF92C()
{
  v166 = v1;
  v4 = v1[43];
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 7);
  v154 = v1;
  if (!v4)
  {
    v7 = MEMORY[0x277D84F98];
LABEL_45:
    v111 = v1[42];
    v112 = v1[17];

    v113 = *(v112 + 16);
    v114 = MEMORY[0x277D84F90];
    v115 = v7;
    if (v113)
    {
      v116 = v1[31];
      v117 = v1[23];
      v118 = v154[17];
      OUTLINED_FUNCTION_119_2();
      sub_227C11444();
      OUTLINED_FUNCTION_567();
      v1 = v154;
      do
      {
        if (*(v115 + 16))
        {
          v119 = *(v2 - 1);
          v0 = *v2;
          sub_227D4CE58();
          v120 = OUTLINED_FUNCTION_451();
          v122 = sub_227B2664C(v120, v121);
          v123 = v154[33];
          v124 = v154[22];
          if (v125)
          {
            v126 = OUTLINED_FUNCTION_357(v122, v115);
            v127(v126);
            v128 = v123;
            v129 = 0;
          }

          else
          {
            v128 = v154[33];
            v129 = 1;
          }

          __swift_storeEnumTagSinglePayload(v128, v129, 1, v124);
        }

        else
        {
          v130 = v154[33];
          v131 = v154[22];
          OUTLINED_FUNCTION_71_0();
          __swift_storeEnumTagSinglePayload(v132, v133, v134, v135);
        }

        OUTLINED_FUNCTION_569();
        if (v12)
        {
          OUTLINED_FUNCTION_83_3(v136);
          sub_227C11444();
          v114 = v165;
        }

        v137 = v154[33];
        *(v114 + 16) = v0;
        v138 = *(v116 + 80);
        OUTLINED_FUNCTION_19();
        v139 = *(v116 + 72);
        sub_227C1AB80();
        v2 += 2;
        --v113;
      }

      while (v113);
    }

    OUTLINED_FUNCTION_456();
    v158 = v1[28];
    v160 = v1[25];
    v162 = v1[24];
    v164 = v1[21];
    v141 = OUTLINED_FUNCTION_537(v140);
    v142(v141);

    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);

    OUTLINED_FUNCTION_115();
    v143 = OUTLINED_FUNCTION_590();

    v144(v143);
    return;
  }

  v6 = 0;
  v152 = (v1[27] + 8);
  v153 = (v1[20] + 8);
  v151 = "articipantState>";
  v7 = MEMORY[0x277D84F98];
  v147 = (v1[23] + 32);
  v8 = v1[46];
  *&v5 = 136315650;
  v149 = v5;
  while (1)
  {
    v9 = v1[42];
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x22AAA63D0](v6);
      v2 = v10;
    }

    else
    {
      OUTLINED_FUNCTION_484(v9 & 0xFFFFFFFFFFFFFF8);
      if (v12)
      {
        goto LABEL_61;
      }

      v10 = OUTLINED_FUNCTION_522(v11 + 8 * v6);
    }

    if (__OFADD__(v6++, 1))
    {
      break;
    }

    v14 = sub_227BEC488(v10);
    if (!*(v7 + 16))
    {

LABEL_12:
      v155 = v8;
      v156 = v6;
      v24 = v1[32];
      v25 = v1[22];
      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
      sub_227C1CB1C(v24, &qword_27D7E6970);
      v157 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      v163 = v2;
      v30 = (sub_227BEC9AC)();
      v31 = sub_227B4BF3C(v30);
      v161 = v7;
      if (v31)
      {
        v32 = v31;
        OUTLINED_FUNCTION_94_3(v31, MEMORY[0x277D84F90]);
        if (v32 < 0)
        {
          goto LABEL_60;
        }

        v33 = v165;
        do
        {
          if ((v30 & 0xC000000000000001) != 0)
          {
            v34 = OUTLINED_FUNCTION_233();
            MEMORY[0x22AAA63D0](v34);
          }

          else
          {
            OUTLINED_FUNCTION_383(v30);
          }

          sub_227BEBDF0(v35);
          OUTLINED_FUNCTION_382();
          OUTLINED_FUNCTION_561();
          if (v12)
          {
            v38 = OUTLINED_FUNCTION_83_3(v36);
            sub_227B3CA88(v38, v3, 1);
            v33 = v165;
          }

          OUTLINED_FUNCTION_461();
        }

        while (!v37);
      }

      else
      {

        v33 = MEMORY[0x277D84F90];
      }

      sub_227B30834(v33);
      v39 = *(v157 + 8);
      v40 = sub_227D4D358();
      sub_227BF11E0(v40);
      OUTLINED_FUNCTION_372();

      v1 = v154;
      if (!v33)
      {
        sub_227BEC9AC(v41);
        OUTLINED_FUNCTION_494();
        if (v37)
        {
          OUTLINED_FUNCTION_473();
          if (!v42)
          {
            goto LABEL_62;
          }

          v43 = v2[4];
        }

        else
        {
          v110 = OUTLINED_FUNCTION_496();
          MEMORY[0x22AAA63D0](v110);
        }

        sub_227BEBDF0(v44);
        OUTLINED_FUNCTION_372();
      }

      sub_227BED6BC(v41);
      if (v45)
      {
        OUTLINED_FUNCTION_492();
        v46 = v154[28];
        v2 = v154[29];
        OUTLINED_FUNCTION_150();
        sub_227D4A698();
        OUTLINED_FUNCTION_116_0();
        v47 = v155;
        sub_227D4A658();
        (*v152)(v154[28], v154[26]);

        v3 = &unk_227D5B790;
        if (!v155)
        {
          v46 = 0;
          v2 = v163;
          goto LABEL_34;
        }

LABEL_36:
        v76 = v154[21];
        v77 = v154[19];
        sub_227B1AF8C();
        v78 = OUTLINED_FUNCTION_375();
        v79(v78);
        v3 = v163;

        v80 = v47;
        v81 = sub_227D4CA98();
        v0 = sub_227D4D438();

        v82 = os_log_type_enabled(v81, v0);
        v83 = v154[21];
        v84 = v154[19];
        if (v82)
        {
          OUTLINED_FUNCTION_229();
          swift_slowAlloc();
          v85 = OUTLINED_FUNCTION_400();
          v86 = OUTLINED_FUNCTION_420();
          OUTLINED_FUNCTION_576(v86, v87, v88, v89, v90, v91, v92, v93, v145, v147, v94);
          v95 = sub_227B1B1A4(0xD000000000000014, v151 | 0x8000000000000000, &v165);
          v96 = OUTLINED_FUNCTION_84(v95);
          v97 = sub_227BEC488(v96);
          OUTLINED_FUNCTION_621(v97, v98);
          OUTLINED_FUNCTION_489();

          *(v46 + 14) = v84;
          OUTLINED_FUNCTION_404();
          v99 = _swift_stdlib_bridgeErrorToNSError();
          v46[3] = v99;
          *v85 = v99;
          _os_log_impl(&dword_227B0D000, v81, v0, "Failed to convert stored challenge instance into: %s id: %s, error: %@", v46, 0x20u);
          sub_227C1CB1C(v85, &qword_27D7E68C8);
          OUTLINED_FUNCTION_135_3();
          MEMORY[0x22AAA7130]();
          swift_arrayDestroy();
          v100 = OUTLINED_FUNCTION_101_2();
          MEMORY[0x22AAA7130](v100);
          OUTLINED_FUNCTION_135_3();
          MEMORY[0x22AAA7130]();

          (*v153)(v83, v84);
        }

        else
        {

          v101 = *v153;
          v102 = OUTLINED_FUNCTION_116_0();
          v104(v102, v103);
        }

        v8 = 0;
        v7 = v161;
      }

      else
      {

        v3 = &unk_227D5B790;
        v46 = v155;
LABEL_34:
        v48 = v154[29];
        v49 = v154[30];
        v50 = v154[25];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
        v51 = OUTLINED_FUNCTION_169_2();
        __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_533();
        v55 = sub_227C1AB80();
        v159 = sub_227BEC488(v55);
        v0 = v56;
        v57 = OUTLINED_FUNCTION_471();
        v47 = v46;
        sub_227BFA684(v57, v58, v59, v60, v61, v62, v63, v64, v145, v147);
        v73 = v154[30];
        if (v46)
        {
          v74 = OUTLINED_FUNCTION_324();
          sub_227C1CB1C(v74, v75);

          goto LABEL_36;
        }

        v105 = OUTLINED_FUNCTION_459(v65, v66, v67, v68, v69, v70, v71, v72, v145, v147);
        v106(v105);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v165 = v7;
        sub_227C13B6C(0, v159, v0, isUniquelyReferenced_nonNull_native, &unk_27D7E8CD8, &unk_227D5BA20, MEMORY[0x277D0D1D8], MEMORY[0x277D0D1D8], v146, v148, v149, *(&v149 + 1), v150, v151);

        v7 = v165;
        v108 = OUTLINED_FUNCTION_324();
        sub_227C1CB1C(v108, v109);
        v8 = 0;
      }

      v6 = v156;
      goto LABEL_42;
    }

    sub_227B2664C(v14, v15);
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }

    v0 = v1[32];
    v18 = v1[22];
    v19 = OUTLINED_FUNCTION_453(*(v7 + 56));
    v20(v19);
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v18);

    sub_227C1CB1C(v0, &qword_27D7E6970);
LABEL_42:
    if (v6 == v1[43])
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

uint64_t sub_227C001A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = OUTLINED_FUNCTION_427();
  v16(v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 7);
  v17 = v14[41];
  v18 = v14[37];
  v20 = v14[33];
  v19 = v14[34];
  v21 = v14[32];
  v23 = v14[29];
  v22 = v14[30];
  v24 = v14[28];
  v25 = v14[24];
  v26 = v14[25];
  v36 = v14[21];
  v37 = v14[46];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_16_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, a12, a13, a14);
}

uint64_t sub_227C00294()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_402(v1, v2);
  v0[19] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[20] = v4;
  v6 = *(v5 + 64);
  v0[21] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49F48();
  v0[22] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[23] = v8;
  v10 = *(v9 + 64);
  v0[24] = OUTLINED_FUNCTION_379();
  v0[25] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[26] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[27] = v12;
  v14 = *(v13 + 64);
  v0[28] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8830, &unk_227D5B790);
  OUTLINED_FUNCTION_5(v15);
  v17 = *(v16 + 64);
  v0[29] = OUTLINED_FUNCTION_379();
  v0[30] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7308, &unk_227D5FCA0);
  OUTLINED_FUNCTION_10_0(v18);
  v0[31] = v19;
  v21 = *(v20 + 64);
  v0[32] = OUTLINED_FUNCTION_379();
  v0[33] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8750, &qword_227D5B6D8);
  OUTLINED_FUNCTION_5(v22);
  v24 = *(v23 + 64);
  v0[34] = OUTLINED_FUNCTION_30();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8838, &qword_227D5B7B0);
  v0[35] = v25;
  OUTLINED_FUNCTION_10_0(v25);
  v0[36] = v26;
  v28 = *(v27 + 64);
  v0[37] = OUTLINED_FUNCTION_30();
  v0[38] = type metadata accessor for ChallengeInstanceStoreActor();
  OUTLINED_FUNCTION_4_18();
  sub_227C164D0(v29);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_479();
  v0[39] = v30;
  v0[40] = v31;
  v32 = OUTLINED_FUNCTION_497();

  return MEMORY[0x2822009F8](v32, v33, v34);
}

uint64_t sub_227C00B34()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = v2[45];
  *v3 = *v1;
  v2[46] = v0;

  OUTLINED_FUNCTION_209();
  v6 = *(v5 + 352);
  if (v0)
  {
    v7 = v2[42];

    v8 = v2[39];
    v9 = v2[40];
    v10 = sub_227C1D238;
  }

  else
  {

    v8 = v2[39];
    v9 = v2[40];
    v10 = sub_227C00C64;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_227C014F4()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_402(v1, v2);
  v0[19] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[20] = v4;
  v6 = *(v5 + 64);
  v0[21] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[22] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[23] = v8;
  v10 = *(v9 + 64);
  v0[24] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8830, &unk_227D5B790);
  OUTLINED_FUNCTION_5(v11);
  v13 = *(v12 + 64);
  v0[25] = OUTLINED_FUNCTION_379();
  v0[26] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8750, &qword_227D5B6D8);
  OUTLINED_FUNCTION_5(v14);
  v16 = *(v15 + 64);
  v0[27] = OUTLINED_FUNCTION_30();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8838, &qword_227D5B7B0);
  v0[28] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v0[29] = v18;
  v20 = *(v19 + 64);
  v0[30] = OUTLINED_FUNCTION_30();
  v0[31] = type metadata accessor for ChallengeInstanceStoreActor();
  OUTLINED_FUNCTION_4_18();
  sub_227C164D0(v21);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_479();
  v0[32] = v22;
  v0[33] = v23;
  v24 = OUTLINED_FUNCTION_497();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_227C01CF0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = v2[38];
  *v3 = *v1;
  v2[39] = v0;

  OUTLINED_FUNCTION_209();
  v6 = *(v5 + 296);
  if (v0)
  {
    v7 = v2[35];

    v8 = v2[32];
    v9 = v2[33];
    v10 = sub_227C0258C;
  }

  else
  {

    v8 = v2[32];
    v9 = v2[33];
    v10 = sub_227C01E20;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_227C0258C()
{
  OUTLINED_FUNCTION_119();
  (*(v0[29] + 8))(v0[30], v0[28]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[39];
  v2 = v0[34];
  v3 = v0[30];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[21];

  OUTLINED_FUNCTION_18();

  return v9();
}

uint64_t sub_227C02660()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_402(v1, v2);
  v0[19] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[20] = v4;
  v6 = *(v5 + 64);
  v0[21] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[22] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[23] = v8;
  v10 = *(v9 + 64);
  v0[24] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8830, &unk_227D5B790);
  OUTLINED_FUNCTION_5(v11);
  v13 = *(v12 + 64);
  v0[25] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8750, &qword_227D5B6D8);
  OUTLINED_FUNCTION_5(v14);
  v16 = *(v15 + 64);
  v0[26] = OUTLINED_FUNCTION_30();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8838, &qword_227D5B7B0);
  v0[27] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v0[28] = v18;
  v20 = *(v19 + 64);
  v0[29] = OUTLINED_FUNCTION_30();
  v0[30] = type metadata accessor for ChallengeInstanceStoreActor();
  OUTLINED_FUNCTION_4_18();
  sub_227C164D0(v21);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_479();
  v0[31] = v22;
  v0[32] = v23;
  v24 = OUTLINED_FUNCTION_497();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_227C02E48()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = v2[37];
  *v3 = *v1;
  v2[38] = v0;

  OUTLINED_FUNCTION_209();
  v6 = *(v5 + 288);
  if (v0)
  {
    v7 = v2[34];

    v8 = v2[31];
    v9 = v2[32];
    v10 = sub_227C0371C;
  }

  else
  {

    v8 = v2[31];
    v9 = v2[32];
    v10 = sub_227C02F78;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_227C0371C()
{
  OUTLINED_FUNCTION_51_0();
  (*(v0[28] + 8))(v0[29], v0[27]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[38];
  v2 = v0[33];
  v3 = v0[29];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];
  v7 = v0[21];

  OUTLINED_FUNCTION_18();

  return v8();
}

void sub_227C037E0()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8780, &qword_227D5B710);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_68_3();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8788, &qword_227D5B718);
  OUTLINED_FUNCTION_9(v10);
  v35 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_106_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8878, &qword_227D5B7E0);
  OUTLINED_FUNCTION_9(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v20);
  v21 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
  OUTLINED_FUNCTION_318_0();
  sub_227D48FE8();
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v22);
  OUTLINED_FUNCTION_276();
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_416();
  sub_227D48F28();

  v23 = *(v6 + 8);
  v24 = OUTLINED_FUNCTION_114();
  v25(v24);
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8880, &qword_227D5B7E8);
  v3[4] = sub_227C194B4();
  __swift_allocate_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v26);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v27);
  OUTLINED_FUNCTION_17_11();
  sub_227B1A6E4(v28);
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_434();
  sub_227D48F68();
  v29 = *(v35 + 8);
  v30 = OUTLINED_FUNCTION_269();
  v31(v30);
  v32 = *(v17 + 8);
  v33 = OUTLINED_FUNCTION_371();
  v34(v33);
  OUTLINED_FUNCTION_8_1();
}

double sub_227C03ADC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_227C1386C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_227B1B268(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_227C03B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_227B2664C(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_227D495F8();
    (*(*(v10 - 8) + 16))(a4, v9 + *(*(v10 - 8) + 72) * v8, v10);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = sub_227D495F8();
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t sub_227C03C04(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_227B4DB5C(a1, v7);
    v4 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_227C13DD0(v7, a2);
    *v2 = v6;
    return sub_227B179AC();
  }

  else
  {
    sub_227C1CB1C(a1, &qword_27D7E6C80);
    sub_227C138D8(a2, v7);
    sub_227B179AC();
    return sub_227C1CB1C(v7, &qword_27D7E6C80);
  }
}

uint64_t sub_227C03CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8ED0, &qword_227D5BC00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - v10;
  v12 = sub_227D495F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) == 1)
  {
    sub_227C1CB1C(a1, &qword_27D7E8ED0);
    sub_227C13A24(a2, a3, v11);

    return sub_227C1CB1C(v11, &qword_27D7E8ED0);
  }

  else
  {
    (*(v13 + 32))(v16, a1, v12);
    v18 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_227C13B6C(v16, a2, a3, isUniquelyReferenced_nonNull_native, &qword_27D7E8ED8, &qword_227D5BC08, MEMORY[0x277D0C9F8], MEMORY[0x277D0C9F8], v20[0], *v4, v20[2], v20[3], v20[4], v20[5]);

    *v4 = v20[1];
  }

  return result;
}

void sub_227C03EF8()
{
  OUTLINED_FUNCTION_11();
  v1 = sub_227D4CAB8();
  v2 = OUTLINED_FUNCTION_9(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8750, &qword_227D5B6D8);
  OUTLINED_FUNCTION_5(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_61_4();
  v9 = sub_227D492A8();
  v10 = OUTLINED_FUNCTION_9(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_316();
  sub_227D49288();
  sub_227D4DC38();
  sub_227D491E8();
  v16 = *(v12 + 8);
  v17 = OUTLINED_FUNCTION_174();
  v16(v17);
  type metadata accessor for ChallengeInstanceStoreActor();
  OUTLINED_FUNCTION_4_18();
  sub_227C164D0(&unk_280E7BC80);
  OUTLINED_FUNCTION_113();
  sub_227D4CAF8();
  v18 = OUTLINED_FUNCTION_342();
  type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance(v18);
  sub_227D49378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8758, &unk_227D5B6E0);
  OUTLINED_FUNCTION_454();
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  OUTLINED_FUNCTION_0_39();
  v23 = OUTLINED_FUNCTION_138_0();
  sub_227C164D0(v23);
  OUTLINED_FUNCTION_367();
  sub_227D4CB48();
  sub_227C1CB1C(v0, &qword_27D7E8750);

  OUTLINED_FUNCTION_113();
  sub_227D4CAF8();
  sub_227D4CB28();

  v24 = OUTLINED_FUNCTION_82();
  v16(v24);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C04338()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v47 = v2;
  v46 = sub_227D48FD8();
  v3 = OUTLINED_FUNCTION_9(v46);
  v45 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8760, &qword_227D5B6F0);
  OUTLINED_FUNCTION_9(v10);
  v48 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_103();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8780, &qword_227D5B710);
  OUTLINED_FUNCTION_9(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_68_3();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8768, &qword_227D5B6F8);
  OUTLINED_FUNCTION_9(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_75_2();
  v27 = *v1;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v28);
  OUTLINED_FUNCTION_572();
  sub_227D48FF8();
  swift_getKeyPath();
  sub_227D48F28();

  v29 = *(v17 + 8);
  v30 = OUTLINED_FUNCTION_288();
  v31(v30);
  sub_227D492A8();
  sub_227D48FE8();
  (*(v45 + 104))(v9, *MEMORY[0x277CC8FD8], v46);
  *(v47 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8770, &qword_227D5B700);
  v32 = sub_227C18750();
  OUTLINED_FUNCTION_421(v32);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v33);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v34);
  OUTLINED_FUNCTION_8_10();
  sub_227C1CC14(v35);
  OUTLINED_FUNCTION_262();
  sub_227D48F88();
  v36 = *(v45 + 8);
  v37 = OUTLINED_FUNCTION_405();
  v38(v37);
  v39 = *(v48 + 8);
  v40 = OUTLINED_FUNCTION_193();
  v41(v40);
  v42 = *(v23 + 8);
  v43 = OUTLINED_FUNCTION_197_2();
  v44(v43);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C046D4()
{
  OUTLINED_FUNCTION_11();
  v1 = sub_227D4CAB8();
  v2 = OUTLINED_FUNCTION_9(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_462(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8750, &qword_227D5B6D8);
  OUTLINED_FUNCTION_5(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_61_4();
  type metadata accessor for ChallengeInstanceStoreActor();
  OUTLINED_FUNCTION_4_18();
  sub_227C164D0(&unk_280E7BC80);
  OUTLINED_FUNCTION_113();
  sub_227D4CAF8();
  v10 = OUTLINED_FUNCTION_342();
  type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance(v10);
  sub_227D49378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8758, &unk_227D5B6E0);
  OUTLINED_FUNCTION_454();
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_0_39();
  v15 = OUTLINED_FUNCTION_247();
  sub_227C164D0(v15);
  OUTLINED_FUNCTION_367();
  sub_227D4CB48();
  sub_227C1CB1C(v0, &qword_27D7E8750);

  OUTLINED_FUNCTION_113();
  sub_227D4CAF8();
  sub_227D4CB28();

  OUTLINED_FUNCTION_8_1();
}

void sub_227C04A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v96 = v25;
  v26 = sub_227D48FD8();
  v27 = OUTLINED_FUNCTION_9(v26);
  v93 = v28;
  v94 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_3();
  v91 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8760, &qword_227D5B6F0);
  OUTLINED_FUNCTION_9(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_26_0();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8768, &qword_227D5B6F8);
  OUTLINED_FUNCTION_9(v92);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_26_0();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8770, &qword_227D5B700);
  OUTLINED_FUNCTION_9(v39);
  v95 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_353(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8778, &qword_227D5B708);
  OUTLINED_FUNCTION_26_5(v45, &a17);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_75_2();
  v49 = OUTLINED_FUNCTION_9_2();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
  OUTLINED_FUNCTION_9(v51);
  v53 = v52;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8788, &qword_227D5B718);
  OUTLINED_FUNCTION_26_5(v57, &a15);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_105_1();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8790, &qword_227D5B720);
  OUTLINED_FUNCTION_9(v90);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_104();
  v89 = *v24;
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_85_1();
  sub_227B1A6E4(v64);
  OUTLINED_FUNCTION_309();
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_237();
  sub_227D48F28();

  v65 = *(v53 + 8);
  v66 = OUTLINED_FUNCTION_336();
  v65(v66);
  sub_227D48FE8();
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v67);
  sub_227B1A6E4(&unk_280E7B750);
  OUTLINED_FUNCTION_324();
  sub_227D48F08();
  OUTLINED_FUNCTION_163_1(&a18);
  v68(v20);
  OUTLINED_FUNCTION_163_1(&a16);
  v69 = OUTLINED_FUNCTION_488();
  v70(v69);
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_371();
  sub_227D48F28();

  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_390();
  (v65)(v71, v72);
  sub_227D492A8();
  sub_227D48FE8();
  (*(v93 + 104))(v91, *MEMORY[0x277CC8FD8], v94);
  sub_227B1A6E4(&unk_27D7E87A8);
  sub_227B1A6E4(&unk_280E7B760);
  OUTLINED_FUNCTION_8_10();
  sub_227C1CC14(v73);
  OUTLINED_FUNCTION_197_2();
  sub_227D48F88();
  v74 = *(v93 + 8);
  v75 = OUTLINED_FUNCTION_174_0();
  v76(v75);
  v77 = OUTLINED_FUNCTION_205_1();
  v78(v77);
  v79 = OUTLINED_FUNCTION_182_0();
  v80(v79, v92);
  *(v96 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E87B0, &unk_227D5B728);
  v81 = sub_227C18504();
  OUTLINED_FUNCTION_421(v81);
  OUTLINED_FUNCTION_30_6();
  sub_227B1A6E4(v82);
  OUTLINED_FUNCTION_265();
  sub_227B1A6E4(v83);
  OUTLINED_FUNCTION_322();
  OUTLINED_FUNCTION_340();
  OUTLINED_FUNCTION_248();
  sub_227D48FA8();
  v84 = *(v95 + 8);
  v85 = OUTLINED_FUNCTION_237();
  v86(v85);
  v87 = OUTLINED_FUNCTION_130_0();
  v88(v87);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C05194()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_227C05224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  OUTLINED_FUNCTION_224();
  sub_227C164D0(v4);

  return MEMORY[0x28212C8C8](v3);
}

uint64_t sub_227C05294()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return sub_227BFA19C();
}

uint64_t sub_227C05318()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return sub_227BFA5FC();
}

uint64_t sub_227C0539C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_0(v1);

  return sub_227BFB134();
}

uint64_t sub_227C05428()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return sub_227BFBCB8();
}

uint64_t sub_227C054AC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return sub_227BFC640();
}

uint64_t sub_227C05530()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return sub_227BFC2C4();
}

uint64_t sub_227C055B4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return sub_227BFC6C8();
}

uint64_t sub_227C05638()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return sub_227BFD7FC();
}

uint64_t sub_227C056C4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return sub_227BFE054();
}

uint64_t sub_227C05748()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return sub_227BFE658();
}

uint64_t sub_227C057E0()
{
  OUTLINED_FUNCTION_20();
  sub_227D49E08();
  OUTLINED_FUNCTION_20_7();
  sub_227C1CC14(v0);
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_208();
  swift_allocError();
  OUTLINED_FUNCTION_325();
  swift_willThrow();
  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227C058E8()
{
  OUTLINED_FUNCTION_20();
  sub_227D49E08();
  OUTLINED_FUNCTION_20_7();
  sub_227C1CC14(v0);
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_208();
  swift_allocError();
  OUTLINED_FUNCTION_325();
  swift_willThrow();
  OUTLINED_FUNCTION_115();

  return v1(0);
}

uint64_t sub_227C05998()
{
  sub_227D4D868();
  OUTLINED_FUNCTION_223();

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

uint64_t sub_227C059E8(char a1)
{
  if (a1)
  {
    return 0x65636E6174736E69;
  }

  else
  {
    return 0x6974696E69666564;
  }
}

uint64_t sub_227C05A24()
{
  OUTLINED_FUNCTION_37();
  v4 = *v2;
  v5 = *v3 == 0;
  if (*v3)
  {
    v6 = 0x65636E6174736E69;
  }

  else
  {
    v6 = 0x6974696E69666564;
  }

  if (v5)
  {
    v7 = 0xEA00000000006E6FLL;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (*v2)
  {
    v8 = 0x65636E6174736E69;
  }

  else
  {
    v8 = 0x6974696E69666564;
  }

  if (*v2)
  {
    v9 = 0xE800000000000000;
  }

  else
  {
    v9 = 0xEA00000000006E6FLL;
  }

  if (v6 == v8 && v7 == v9)
  {
  }

  else
  {
    v11 = sub_227D4DA78();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(v1 + 16);
  v13 = *(v0 + 16);
  if (v12)
  {
    if (v13)
    {
      v14 = *(v1 + 8) == *(v0 + 8) && v12 == v13;
      if (v14 || (sub_227D4DA78() & 1) != 0)
      {
        goto LABEL_27;
      }
    }
  }

  else if (!v13)
  {
LABEL_27:
    v15 = *(type metadata accessor for DefaultChallengeStoreRegistry.ChallengeStoreKey(0) + 24);

    JUMPOUT(0x22AAA2030);
  }

  return 0;
}

uint64_t sub_227C05B58()
{
  *v0;
  *v0;
  sub_227D4D048();

  if (*(v0 + 16))
  {
    v1 = *(v0 + 8);
    sub_227D4DB78();
    OUTLINED_FUNCTION_132_0();
    sub_227D4D048();
  }

  else
  {
    sub_227D4DB78();
  }

  v2 = *(type metadata accessor for DefaultChallengeStoreRegistry.ChallengeStoreKey(0) + 24);
  sub_227D49328();
  OUTLINED_FUNCTION_86_3();
  sub_227C1CC14(v3);
  OUTLINED_FUNCTION_279();
  return sub_227D4CEA8();
}

uint64_t sub_227C05C58()
{
  sub_227D4DB58();
  sub_227C05B58();
  return sub_227D4DB98();
}

uint64_t sub_227C05C98()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C057CC();
}

uint64_t sub_227C05D18()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C0588C();
}

uint64_t sub_227C05D98()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C0588C();
}

uint64_t sub_227C05E18()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C057CC();
}

uint64_t sub_227C05E98()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C0588C();
}

uint64_t sub_227C05F18()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C0588C();
}

uint64_t sub_227C05F98()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C058C0();
}

uint64_t sub_227C06018()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C058D4();
}

uint64_t sub_227C06098()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;

  OUTLINED_FUNCTION_115();
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

uint64_t sub_227C0618C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C058C0();
}

uint64_t sub_227C0620C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C058A0();
}

uint64_t sub_227C0628C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C0588C();
}

uint64_t sub_227C0630C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C0588C();
}

uint64_t sub_227C0638C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C0588C();
}

uint64_t sub_227C0640C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C0588C();
}

uint64_t sub_227C0648C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C0588C();
}

uint64_t sub_227C0650C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C0588C();
}

uint64_t sub_227C0658C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C058A0();
}

uint64_t sub_227C0660C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C0588C();
}

uint64_t sub_227C0668C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C0588C();
}

uint64_t sub_227C06730@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_227C05998();
  *a2 = result;
  return result;
}

uint64_t sub_227C06760@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227C059E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227C06794()
{
  sub_227D4DB58();
  sub_227C05B58();
  return sub_227D4DB98();
}

uint64_t sub_227C067D4()
{
  type metadata accessor for DefaultChallengeStoreRegistry();
  v0 = swift_allocObject();
  result = sub_227C06860(0);
  qword_280E7D370 = v0;
  return result;
}

uint64_t sub_227C06814()
{
  if (qword_280E7BE20 != -1)
  {
    OUTLINED_FUNCTION_310();
  }
}

uint64_t sub_227C06860(char a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = a1;
  type metadata accessor for DefaultChallengeStoreRegistry.ChallengeStoreKey(0);
  OUTLINED_FUNCTION_271();
  sub_227C164D0(v3);
  *(v1 + 120) = sub_227D4CE28();
  return v1;
}

uint64_t sub_227C068E8()
{
  OUTLINED_FUNCTION_6();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = sub_227D49328();
  v1[30] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[31] = v5;
  v7 = *(v6 + 64);
  v1[32] = OUTLINED_FUNCTION_30();
  v8 = type metadata accessor for GameServicesEnvironment(0);
  v1[33] = v8;
  OUTLINED_FUNCTION_5(v8);
  v10 = *(v9 + 64);
  v1[34] = OUTLINED_FUNCTION_30();
  v11 = type metadata accessor for DefaultChallengeStoreRegistry.ChallengeStoreKey(0);
  v1[35] = v11;
  OUTLINED_FUNCTION_5(v11);
  v13 = *(v12 + 64);
  v1[36] = OUTLINED_FUNCTION_379();
  v1[37] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_3_13();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

void sub_227C069E4()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  v5 = *(v0 + 248);
  v32 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v9 = *(v8 + 8);
  v10 = OUTLINED_FUNCTION_141();
  v11(v10);
  v12 = *(v3 + 24);
  v13 = *(v5 + 16);
  v13(v1 + v12, v2 + *(v4 + 28), v32);
  OUTLINED_FUNCTION_268();
  sub_227B179AC();
  *v1 = 1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_120();
  swift_beginAccess();
  v14 = *(v7 + 120);
  sub_227D4CE58();
  v15 = OUTLINED_FUNCTION_58();
  sub_227C03ADC(v15, v16, v17);

  if (*(v0 + 160))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8618, &unk_227D59CD8);
    if (OUTLINED_FUNCTION_606())
    {
      if (*(v0 + 80))
      {
        OUTLINED_FUNCTION_282();
        sub_227B132F0((v0 + 56), v0 + 16);
        sub_227B132F0((v0 + 16), v14);
        goto LABEL_11;
      }
    }

    else
    {
      OUTLINED_FUNCTION_585();
    }
  }

  else
  {
    sub_227C1CB1C(v0 + 136, &qword_27D7E6C80);
    OUTLINED_FUNCTION_580();
  }

  v18 = *(v0 + 256);
  v20 = *(v0 + 232);
  v19 = *(v0 + 240);
  v21 = *(v0 + 224);
  sub_227C1CB1C(v0 + 56, &unk_27D7E8610);
  v22 = type metadata accessor for ChallengeDefinitionStoreActor();
  v13(v18, v1 + v12, v19);
  sub_227C19454(v21, v0 + 96);
  v23 = *(v20 + 112);
  sub_227BEF448();
  v25 = *(v0 + 296);
  if (v24)
  {
    v26 = v24;
    v27 = *(v0 + 288);
    v28 = *(v0 + 216);
    OUTLINED_FUNCTION_177();
    sub_227C18A64();
    v33[3] = v22;
    v33[0] = v26;
    OUTLINED_FUNCTION_397_0();

    sub_227C03C04(v33, v27);
    swift_endAccess();
    v28[3] = v22;
    v28[4] = &off_283B3C6C8;
    *v28 = v26;
  }

  else
  {
    v29 = *(v0 + 216);
    *(v29 + 24) = &type metadata for UnavailableChallengeStore;
    *(v29 + 32) = &off_283B3C718;
  }

  sub_227B179AC();
LABEL_11:
  OUTLINED_FUNCTION_514();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_90();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_227C06CF4()
{
  OUTLINED_FUNCTION_6();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = sub_227D4CAB8();
  v1[30] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[31] = v5;
  v7 = *(v6 + 64);
  v1[32] = OUTLINED_FUNCTION_30();
  v8 = type metadata accessor for GameServicesEnvironment(0);
  v1[33] = v8;
  OUTLINED_FUNCTION_5(v8);
  v10 = *(v9 + 64);
  v1[34] = OUTLINED_FUNCTION_30();
  v11 = type metadata accessor for DefaultChallengeStoreRegistry.ChallengeStoreKey(0);
  v1[35] = v11;
  OUTLINED_FUNCTION_5(v11);
  v13 = *(v12 + 64);
  v1[36] = OUTLINED_FUNCTION_379();
  v1[37] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_3_13();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227C06DF0()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 224);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(OUTLINED_FUNCTION_280() + 24);
  OUTLINED_FUNCTION_32();
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v0 + 304) = v7;
  *v7 = v0;
  v8 = OUTLINED_FUNCTION_26(v7);

  return v10(v8, v2);
}

uint64_t sub_227C06EFC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 304);
  v3 = *(v1 + 232);
  v4 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v8 + 312) = v6;
  *(v8 + 320) = v7;

  v9 = OUTLINED_FUNCTION_3_13();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C06FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = *(v14 + 320);
  if (!v15)
  {
    v32 = *(v14 + 248);
    v31 = *(v14 + 256);
    v33 = *(v14 + 240);
    v34 = sub_227B1AF8C();
    (*(v32 + 16))(v31, v34, v33);
    v35 = sub_227D4CA98();
    v36 = sub_227D4D438();
    if (OUTLINED_FUNCTION_33_4(v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_227B0D000, v35, v36, "No authenticated player, returning unavailable ChallengeInstanceStore", v37, 2u);
      OUTLINED_FUNCTION_135_3();
      MEMORY[0x22AAA7130]();
    }

    v39 = *(v14 + 248);
    v38 = *(v14 + 256);
    v40 = *(v14 + 240);
    v41 = *(v14 + 216);

    v42 = *(v39 + 8);
    v43 = OUTLINED_FUNCTION_9_2();
    v44(v43);
    *(v41 + 24) = &type metadata for UnavailableChallengeStore;
    *(v41 + 32) = &off_283B3C670;
    goto LABEL_9;
  }

  v16 = *(v14 + 296);
  v17 = *(v14 + 272);
  a9 = *(v14 + 280);
  v18 = *(v14 + 264);
  v19 = *(v14 + 224);
  a10 = *(v14 + 232);
  a11 = *(v14 + 312);
  v20 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v21 = *(v20 + 8);
  sub_227D4CE58();
  v22 = OUTLINED_FUNCTION_149_0();
  v21(v22);
  v23 = *(v18 + 28);
  v24 = *(a9 + 24);
  *(v14 + 360) = v24;
  v25 = sub_227D49328();
  OUTLINED_FUNCTION_62_0(v25);
  (*(v26 + 16))(v16 + v24, v17 + v23);
  OUTLINED_FUNCTION_268();
  sub_227B179AC();
  *v16 = 1;
  *(v16 + 8) = a11;
  *(v16 + 16) = v15;
  OUTLINED_FUNCTION_120();
  swift_beginAccess();
  v27 = *(a10 + 120);
  sub_227D4CE58();
  v28 = OUTLINED_FUNCTION_87_1();
  sub_227C03ADC(v28, v29, v30);

  if (*(v14 + 160))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8628, qword_227D59CF8);
    if (OUTLINED_FUNCTION_606())
    {
      if (*(v14 + 80))
      {
        OUTLINED_FUNCTION_282();

        sub_227B132F0((v14 + 56), v14 + 16);
        sub_227B132F0((v14 + 16), v27);
LABEL_9:
        OUTLINED_FUNCTION_514();

        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_16_0();

        return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
      }
    }

    else
    {
      OUTLINED_FUNCTION_585();
    }
  }

  else
  {
    sub_227C1CB1C(v14 + 136, &qword_27D7E6C80);
    OUTLINED_FUNCTION_580();
  }

  v54 = *(v14 + 232);
  sub_227C1CB1C(v14 + 56, &unk_27D7E8620);
  *(v14 + 328) = type metadata accessor for ChallengeInstanceStoreActor();
  *(v14 + 364) = *(v54 + 112);
  OUTLINED_FUNCTION_45();
  v56 = *(v55 + 136);
  v69 = v55 + 136;
  v70 = v56 + *v56;
  v57 = v56[1];
  v58 = swift_task_alloc();
  *(v14 + 336) = v58;
  *v58 = v14;
  v58[1] = sub_227C073B8;
  v59 = *(v14 + 224);
  v60 = *(v14 + 232);
  OUTLINED_FUNCTION_16_0();

  return v63(v61, v62, v63, v64, v65, v66, v67, v68, a9, v69, v70, a12, a13, a14);
}

uint64_t sub_227C073B8()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = v1[42];
  v5 = *(v2 + 90);
  v6 = v1[40];
  v7 = v1[37];
  v8 = *v0;
  *v3 = *v0;

  v9 = swift_task_alloc();
  v2[43] = v9;
  *v9 = v8;
  v9[1] = sub_227C07548;
  v10 = *(v2 + 364);
  v11 = v1[39];
  v12 = v1[28];

  return sub_227BF9F10();
}

uint64_t sub_227C07548()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = v1[43];
  v4 = v1[40];
  v5 = v1[29];
  v6 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  v2[44] = v8;

  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 12);
  v9 = OUTLINED_FUNCTION_343();

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_227C07678()
{
  OUTLINED_FUNCTION_111();
  v12 = v0;
  v1 = v0[44];
  if (v1)
  {
    v2 = v0[41];
    v4 = v0[36];
    v3 = v0[37];
    v5 = v0[29];
    v6 = v0[27];
    OUTLINED_FUNCTION_132_0();
    sub_227C18A64();
    v11[3] = v2;
    v11[0] = v1;
    OUTLINED_FUNCTION_397_0();

    sub_227C03C04(v11, v4);
    swift_endAccess();
    v6[3] = v2;
    v6[4] = &off_283B3C618;
    *v6 = v1;
  }

  else
  {
    v7 = v0[37];
    v8 = v0[27];
    *(v8 + 24) = &type metadata for UnavailableChallengeStore;
    *(v8 + 32) = &off_283B3C670;
  }

  sub_227B179AC();
  OUTLINED_FUNCTION_514();

  OUTLINED_FUNCTION_18();

  return v9();
}

uint64_t sub_227C077B0()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_227D4CAB8();
  v1[8] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[9] = v5;
  v7 = *(v6 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v8 = OUTLINED_FUNCTION_3_13();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227C07858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v16 = v14[9];
  v15 = v14[10];
  v17 = v14[8];
  v18 = v14[6];
  sub_227B1AF8C();
  v19 = OUTLINED_FUNCTION_320();
  v20(v19);
  sub_227D4CE58();
  v21 = sub_227D4CA98();
  v22 = sub_227D4D428();

  v23 = os_log_type_enabled(v21, v22);
  v25 = v14[9];
  v24 = v14[10];
  v26 = v14[8];
  if (v23)
  {
    v28 = v14[5];
    v27 = v14[6];
    OUTLINED_FUNCTION_415();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_229();
    a10 = swift_slowAlloc();
    *v29 = 136315138;
    v30 = OUTLINED_FUNCTION_82();
    *(v29 + 4) = sub_227B1B1A4(v30, v31, v32);
    _os_log_impl(&dword_227B0D000, v21, v22, "Removing stores for player %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(a10);
    OUTLINED_FUNCTION_135_3();
    MEMORY[0x22AAA7130]();
    OUTLINED_FUNCTION_135_3();
    MEMORY[0x22AAA7130]();
  }

  v33 = *(v25 + 8);
  v34 = OUTLINED_FUNCTION_9_2();
  v35(v34);
  v36 = v14[10];
  v37 = v14[6];
  v38 = v14[7];
  v39 = v14[5];
  swift_beginAccess();
  v40 = *(v38 + 120);
  sub_227D4CE58();
  v41 = sub_227D4CE58();
  v42 = sub_227C14430(v41, v39, v37);

  v43 = *(v38 + 120);
  *(v38 + 120) = v42;

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_16_0();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227C07A08@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DefaultChallengeStoreRegistry();
  v3 = swift_allocObject();
  result = sub_227C06860(1);
  a1[3] = v2;
  a1[4] = &off_283B3C428;
  *a1 = v3;
  return result;
}

uint64_t sub_227C07A60()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_227C07A88()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227C07AE8()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 136);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_28_0(v4);

  return v8(v6);
}

uint64_t sub_227C07BF4()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 144);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_28_0(v4);

  return v8(v6);
}

uint64_t sub_227C07D00()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 152);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v8(v6);
}

void sub_227C07E0C()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  v3 = sub_227D4AA28();
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105_1();
  v11 = *v0;
  v12 = v0[1];
  sub_227D4CE58();
  OUTLINED_FUNCTION_471();
  sub_227D4A768();
  if (!v2)
  {
    v13 = v0[2];
    v14 = v0[3];
    sub_227D4A9F8();
    v15 = v0[13];
    v24 = v0[12];
    v16 = v0[5];
    v22 = v0[6];
    v23 = v0[4];
    v17 = v0[7];
    v18 = v0[8];
    v19 = v0[9];
    v20 = v0[10];
    v21 = v0[11];
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    OUTLINED_FUNCTION_201();
    sub_227D4A9C8();
  }

  OUTLINED_FUNCTION_352();
}

void sub_227C07F6C()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8EC0, &qword_227D5BBF0);
  v4 = OUTLINED_FUNCTION_62_0(v68);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_3();
  v67 = v7;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_266();
  v66 = v9;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_266();
  v65 = v11;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_314();
  v64 = v13;
  OUTLINED_FUNCTION_191_2();
  v63 = sub_227D4A388();
  v14 = OUTLINED_FUNCTION_9(v63);
  v69 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_353(v18);
  v75 = MEMORY[0x277D84F98];
  sub_227B4BF3C(v3);
  OUTLINED_FUNCTION_487();
  while (v0 != v1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v20 = OUTLINED_FUNCTION_309();
      MEMORY[0x22AAA63D0](v20);
    }

    else
    {
      if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v19 = *(v3 + 8 * v1 + 32);
    }

    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    sub_227C084B0();

    ++v1;
  }

  v21 = v75;
  v22 = *(v75 + 16);
  if (!v22)
  {
LABEL_28:

    OUTLINED_FUNCTION_8_1();
    return;
  }

  v76 = MEMORY[0x277D84F90];
  sub_227C113EC();
  v23 = v76;
  v26 = sub_227BB78B0(v21);
  v27 = 0;
  v28 = v21 + 64;
  v58 = v24;
  v57 = v21 + 72;
  v59 = v22;
  v60 = v21 + 64;
  v61 = v21;
  while ((v26 & 0x8000000000000000) == 0 && v26 < 1 << *(v21 + 32))
  {
    if ((*(v28 + 8 * (v26 >> 6)) & (1 << v26)) == 0)
    {
      goto LABEL_32;
    }

    if (*(v21 + 36) != v24)
    {
      goto LABEL_33;
    }

    v73 = v26 >> 6;
    v71 = v27;
    v72 = v24;
    v70 = v25;
    v29 = *(v68 + 48);
    v30 = *(v21 + 56);
    v31 = (*(v21 + 48) + 16 * v26);
    v74 = v23;
    v33 = *v31;
    v32 = v31[1];
    v34 = sub_227D495F8();
    OUTLINED_FUNCTION_9(v34);
    v36 = v35;
    (*(v35 + 16))(v64 + v29, v30 + *(v37 + 72) * v26, v34);
    *v65 = v33;
    *(v65 + 1) = v32;
    (*(v36 + 32))(&v65[*(v68 + 48)], v64 + v29, v34);
    sub_227B17738();
    v38 = *(v66 + 8);
    sub_227D4CE58();

    v39 = *(v68 + 48);
    sub_227B17738();
    v40 = *v67;
    v41 = v67[1];
    v42 = *(v68 + 48);
    sub_227D4A378();
    sub_227C1CB1C(v65, &qword_27D7E8EC0);
    v43 = v67 + v42;
    v23 = v74;
    (*(v36 + 8))(v43, v34);
    v45 = *(v74 + 16);
    v44 = *(v74 + 24);
    if (v45 >= v44 >> 1)
    {
      OUTLINED_FUNCTION_12(v44);
      OUTLINED_FUNCTION_373();
      sub_227C113EC();
      v23 = v74;
    }

    *(v23 + 16) = v45 + 1;
    v46 = *(v69 + 80);
    OUTLINED_FUNCTION_19();
    (*(v48 + 32))(v23 + v47 + *(v48 + 72) * v45, v62, v63);
    v21 = v61;
    v49 = 1 << *(v61 + 32);
    if (v26 >= v49)
    {
      goto LABEL_34;
    }

    v28 = v60;
    v50 = *(v60 + 8 * v73);
    if ((v50 & (1 << v26)) == 0)
    {
      goto LABEL_35;
    }

    if (*(v61 + 36) != v72)
    {
      goto LABEL_36;
    }

    v51 = v50 & (-2 << (v26 & 0x3F));
    if (v51)
    {
      v49 = __clz(__rbit64(v51)) | v26 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v52 = v73 << 6;
      v53 = v73 + 1;
      v54 = (v57 + 8 * v73);
      while (v53 < (v49 + 63) >> 6)
      {
        v56 = *v54++;
        v55 = v56;
        v52 += 64;
        ++v53;
        if (v56)
        {
          sub_227B3E218(v26, v72, v70 & 1);
          v49 = __clz(__rbit64(v55)) + v52;
          goto LABEL_27;
        }
      }

      sub_227B3E218(v26, v72, v70 & 1);
    }

LABEL_27:
    v25 = 0;
    v27 = v71 + 1;
    v26 = v49;
    v24 = v58;
    if (v71 + 1 == v59)
    {
      goto LABEL_28;
    }
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_227C084B0()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v70 = v7;
  v8 = sub_227D4CAB8();
  v9 = OUTLINED_FUNCTION_9(v8);
  v71 = v10;
  v72 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8ED0, &qword_227D5BC00);
  v14 = OUTLINED_FUNCTION_5(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_54_0();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v67 - v21;
  v23 = sub_227D495F8();
  v24 = OUTLINED_FUNCTION_9(v23);
  v69 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_54_0();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_316();
  v33 = *v6;
  if (v2)
  {
    if (sub_227BE4EAC() == v4 && v34 == v2)
    {
    }

    else
    {
      v36 = sub_227D4DA78();

      if ((v36 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  v37 = sub_227BE51EC(v32);
  if (v38)
  {
    v39 = v38;
    v68 = v37;
    sub_227BE504C(v37);
    sub_227D4D868();
    OUTLINED_FUNCTION_294();

    v40 = v70;
    sub_227C03B40(v68, v39, *v70, v22);
    OUTLINED_FUNCTION_556();
    if (__swift_getEnumTagSinglePayload(v41, v42, v43) == 1)
    {
      sub_227D495D8();
      OUTLINED_FUNCTION_556();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, v45, v46);
      v48 = v69;
      if (EnumTagSinglePayload != 1)
      {
        sub_227C1CB1C(v22, &qword_27D7E8ED0);
      }
    }

    else
    {
      v48 = v69;
      OUTLINED_FUNCTION_554();
      v60(v0, v22, v23);
    }

    switch(v33)
    {
      case 0:
        sub_227D49598();
        goto LABEL_23;
      case 1:
        sub_227D495B8();
        goto LABEL_23;
      case 2:
        sub_227D49558();
        goto LABEL_23;
      case 3:
        sub_227D49578();
        goto LABEL_23;
      case 4:
        sub_227D495C8();
LABEL_23:
        sub_227C08930(v30);
        v61 = *(v48 + 8);
        v62 = OUTLINED_FUNCTION_226_0();
        v61(v62);
        OUTLINED_FUNCTION_99();
        __swift_storeEnumTagSinglePayload(v63, v64, v65, v23);
        sub_227C03CF4(v19, v68, v39);
        v66 = OUTLINED_FUNCTION_82();
        v61(v66);
        break;
      default:

        sub_227B1AF8C();
        v50 = v71;
        v49 = v72;
        OUTLINED_FUNCTION_588();
        v51(v40);

        v52 = sub_227D4CA98();
        v53 = sub_227D4D438();

        if (os_log_type_enabled(v52, v53))
        {
          OUTLINED_FUNCTION_415();
          v54 = swift_slowAlloc();
          OUTLINED_FUNCTION_229();
          v55 = swift_slowAlloc();
          v73 = v33;
          v74 = v55;
          *v54 = 136315138;
          type metadata accessor for ChallengeDefinitionStoreSchemaV1.Definition.PlatformMetadata(0);

          v56 = sub_227D4CFF8();
          v58 = sub_227B1B1A4(v56, v57, &v74);

          *(v54 + 4) = v58;
          _os_log_impl(&dword_227B0D000, v52, v53, "Ignoring invalid stored platform type in: %s", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v55);
          v59 = OUTLINED_FUNCTION_101_2();
          MEMORY[0x22AAA7130](v59);
          OUTLINED_FUNCTION_135_3();
          MEMORY[0x22AAA7130]();
        }

        (*(v50 + 8))(v40, v49);
        break;
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C08930(uint64_t a1)
{
  v2 = sub_227D495F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227C1CC14(&unk_27D7E8EE0);
  sub_227D4D148();
  sub_227C1CC14(&unk_27D7E8EE8);
  sub_227D4DC88();
  (*(v3 + 16))(v6, a1, v2);
  sub_227C1CC14(&unk_27D7E8EF0);
  return sub_227D4D598();
}

void sub_227C08AC4()
{
  OUTLINED_FUNCTION_602();
  v0 = sub_227BEC9AC();
  v1 = sub_227B4BF3C(v0);
  if (!v1)
  {
LABEL_10:

    OUTLINED_FUNCTION_449();
    return;
  }

  v2 = v1;
  v15 = MEMORY[0x277D84F90];
  sub_227B3CA88(0, v1 & ~(v1 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v4 = OUTLINED_FUNCTION_193();
        MEMORY[0x22AAA63D0](v4);
      }

      else
      {
        OUTLINED_FUNCTION_383(v0 + 8 * v3);
      }

      v6 = sub_227BEBDF0(v5);
      v8 = v7;

      v10 = *(v15 + 16);
      v9 = *(v15 + 24);
      if (v10 >= v9 >> 1)
      {
        OUTLINED_FUNCTION_12(v9);
        OUTLINED_FUNCTION_367();
        sub_227B3CA88(v12, v13, v14);
      }

      ++v3;
      *(v15 + 16) = v10 + 1;
      v11 = v15 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
    }

    while (v2 != v3);
    goto LABEL_10;
  }

  __break(1u);
}