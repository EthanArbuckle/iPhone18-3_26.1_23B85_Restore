uint64_t sub_1DC2E8568(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = result;
  v6 = 0;
  v17 = *(a3 + 16);
  v7 = (a3 + 40);
  v8 = MEMORY[0x1E69E7CC0];
  v15 = result;
  while (1)
  {
    if (v17 == v6)
    {
      goto LABEL_15;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    v9 = *(v7 - 1);
    v10 = *v7;
    v18[0] = v9;
    v18[1] = v10;

    v11 = v5(v18);
    if (v3)
    {

LABEL_15:

      return v8;
    }

    if (v11)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v19 = v8;
      if ((result & 1) == 0)
      {
        result = sub_1DC2DF6FC(0, *(v8 + 16) + 1, 1);
        v8 = v19;
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1DC2DF6FC((v12 > 1), v13 + 1, 1);
        v8 = v19;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v10;
      v4 = a3;
      v5 = v15;
    }

    else
    {
    }

    v7 += 2;
    ++v6;
  }

  __break(1u);
  return result;
}

void sub_1DC2E86D4()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_58_0();
  v18 = type metadata accessor for NLRouterNLParseResponse(v17);
  v19 = OUTLINED_FUNCTION_35(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  v22 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v6 + *(v22 + 32), v12, &qword_1ECC7C158, &unk_1DC5234A0);
  v23 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v12, 1, v23);
  if (v27)
  {
    sub_1DC28EB30(v12, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v18);
LABEL_6:
    sub_1DC28EB30(v2, &qword_1ECC7C160, qword_1DC5233B0);
    goto LABEL_7;
  }

  sub_1DC28F358(v12, v2, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2EADFC(v12, type metadata accessor for NLRouterTurnProbingResult);
  OUTLINED_FUNCTION_39(v2, 1, v18);
  if (v27)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_29_2();
  v28 = OUTLINED_FUNCTION_30();
  v30 = sub_1DC2E89AC(v28, v29);
  v31 = *v1;
  MEMORY[0x1EEE9AC00](v30);
  *&v34[-32] = v0;
  v34[-24] = v4 & 1;
  *&v34[-16] = v6;

  v32 = *(sub_1DC2E82A4(sub_1DC2EADC4, &v34[-48], v31) + 16);

  OUTLINED_FUNCTION_33_4();
  sub_1DC2EADFC(v1, v33);
LABEL_7:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2E89AC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_38_2();
  v6 = v5(v4);
  OUTLINED_FUNCTION_35(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1DC2E8A08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1F8, &qword_1DC523018);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DC522FA0;
  OUTLINED_FUNCTION_49_5(v1);
  OUTLINED_FUNCTION_28_4();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_0_5(v2, v3, v4, v5, v6, v7, v8, v9, v105, v10, v115, v126);
  OUTLINED_FUNCTION_27_5();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1DC2EAE8C;
  *(v11 + 24) = v0;
  *(v1 + 32) = sub_1DC2EAF40;
  *(v1 + 40) = v11;
  OUTLINED_FUNCTION_49_5(v11);
  OUTLINED_FUNCTION_28_4();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_0_5(v12, v13, v14, v15, v16, v17, v18, v19, v106, v20, v116, v126);
  OUTLINED_FUNCTION_27_5();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1DC2EAF44;
  *(v21 + 24) = v0;
  *(v1 + 48) = sub_1DC2EBDBC;
  *(v1 + 56) = v21;
  OUTLINED_FUNCTION_49_5(v21);
  OUTLINED_FUNCTION_28_4();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_0_5(v22, v23, v24, v25, v26, v27, v28, v29, v107, v30, v117, v126);
  OUTLINED_FUNCTION_27_5();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1DC2EAF64;
  *(v31 + 24) = v0;
  *(v1 + 64) = sub_1DC2EBDBC;
  *(v1 + 72) = v31;
  OUTLINED_FUNCTION_49_5(v31);
  OUTLINED_FUNCTION_28_4();
  v32 = swift_allocObject();
  OUTLINED_FUNCTION_0_5(v32, v33, v34, v35, v36, v37, v38, v39, v108, v40, v118, v126);
  OUTLINED_FUNCTION_27_5();
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1DC2EAF80;
  *(v41 + 24) = v0;
  *(v1 + 80) = sub_1DC2EBDBC;
  *(v1 + 88) = v41;
  OUTLINED_FUNCTION_49_5(v41);
  OUTLINED_FUNCTION_28_4();
  v42 = swift_allocObject();
  OUTLINED_FUNCTION_0_5(v42, v43, v44, v45, v46, v47, v48, v49, v109, v50, v119, v126);
  OUTLINED_FUNCTION_27_5();
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1DC2EAF9C;
  *(v51 + 24) = v0;
  *(v1 + 96) = sub_1DC2EBDBC;
  *(v1 + 104) = v51;
  OUTLINED_FUNCTION_49_5(v51);
  OUTLINED_FUNCTION_28_4();
  v52 = swift_allocObject();
  OUTLINED_FUNCTION_0_5(v52, v53, v54, v55, v56, v57, v58, v59, v110, v60, v120, v126);
  OUTLINED_FUNCTION_27_5();
  v61 = swift_allocObject();
  *(v61 + 16) = sub_1DC2EAFB8;
  *(v61 + 24) = v0;
  *(v1 + 112) = sub_1DC2EBDBC;
  *(v1 + 120) = v61;
  OUTLINED_FUNCTION_49_5(v61);
  OUTLINED_FUNCTION_28_4();
  v62 = swift_allocObject();
  OUTLINED_FUNCTION_0_5(v62, v63, v64, v65, v66, v67, v68, v69, v111, v70, v121, v126);
  OUTLINED_FUNCTION_27_5();
  v71 = swift_allocObject();
  *(v71 + 16) = sub_1DC2EB02C;
  *(v71 + 24) = v0;
  *(v1 + 128) = sub_1DC2EBDBC;
  *(v1 + 136) = v71;
  OUTLINED_FUNCTION_49_5(v71);
  OUTLINED_FUNCTION_28_4();
  v72 = swift_allocObject();
  OUTLINED_FUNCTION_0_5(v72, v73, v74, v75, v76, v77, v78, v79, v112, v80, v122, v126);
  OUTLINED_FUNCTION_27_5();
  v81 = swift_allocObject();
  *(v81 + 16) = sub_1DC2EB04C;
  *(v81 + 24) = v0;
  *(v1 + 144) = sub_1DC2EBDBC;
  *(v1 + 152) = v81;
  OUTLINED_FUNCTION_49_5(v81);
  OUTLINED_FUNCTION_28_4();
  v82 = swift_allocObject();
  OUTLINED_FUNCTION_0_5(v82, v83, v84, v85, v86, v87, v88, v89, v113, v90, v123, v126);
  OUTLINED_FUNCTION_27_5();
  v91 = swift_allocObject();
  *(v91 + 16) = sub_1DC2EB12C;
  *(v91 + 24) = v0;
  *(v1 + 160) = sub_1DC2EBDBC;
  *(v1 + 168) = v91;
  OUTLINED_FUNCTION_49_5(v91);
  OUTLINED_FUNCTION_28_4();
  v92 = swift_allocObject();
  OUTLINED_FUNCTION_0_5(v92, v93, v94, v95, v96, v97, v98, v99, v114, v100, v124, v126);
  OUTLINED_FUNCTION_27_5();
  v101 = swift_allocObject();
  *(v101 + 16) = sub_1DC2EB148;
  *(v101 + 24) = v0;
  *(v1 + 176) = sub_1DC2EBDBC;
  *(v1 + 184) = v101;
  OUTLINED_FUNCTION_49_5(v101);
  OUTLINED_FUNCTION_28_4();
  v102 = swift_allocObject();
  *(v102 + 16) = v125;
  *(v102 + 32) = v126;
  *(v102 + 48) = v127;
  OUTLINED_FUNCTION_27_5();
  v103 = swift_allocObject();
  *(v103 + 16) = sub_1DC2EB168;
  *(v103 + 24) = v102;
  *(v1 + 192) = sub_1DC2EBDBC;
  *(v1 + 200) = v103;
  return v1;
}

uint64_t sub_1DC2E8DEC(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v6 = OUTLINED_FUNCTION_10(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_38_3();
  v13 = sub_1DC5149BC();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_4();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_72_1();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v52 - v21;
  sub_1DC28F358(a1, v53, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v54)
  {
    goto LABEL_21;
  }

  sub_1DC28F358(v53, v52, &qword_1ECC7D3F0, &qword_1DC5238B0);
  sub_1DC51480C();
  if (!OUTLINED_FUNCTION_45_6())
  {
    sub_1DC51497C();
    if (OUTLINED_FUNCTION_45_6())
    {

      sub_1DC51475C();

      if (v51)
      {
        sub_1DC51477C();
        OUTLINED_FUNCTION_78_0();
        sub_1DC5149AC();

        OUTLINED_FUNCTION_11_6(v3);
        if (!v24)
        {
          (*(v16 + 32))(v22, v3, v13);
          v34 = *MEMORY[0x1E69D1D40];
          v35 = OUTLINED_FUNCTION_69_2();
          v36(v35);
          OUTLINED_FUNCTION_30_3();
          v23 = sub_1DC2EB290(v22, v1, v37, v38, MEMORY[0x1E69D1D48]);

          v39 = *(v16 + 8);
          v40 = OUTLINED_FUNCTION_36();
          v39(v40);
          v41 = v22;
LABEL_23:
          (v39)(v41, v13);
          __swift_destroy_boxed_opaque_existential_1Tm(v52);
          goto LABEL_22;
        }
      }

      else
      {

        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v26, v27, v28, v13);
      }

      v29 = v3;
    }

    else
    {
      sub_1DC514A1C();
      if (!OUTLINED_FUNCTION_45_6())
      {
LABEL_20:
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
LABEL_21:
        v23 = 0;
        goto LABEL_22;
      }

      sub_1DC51475C();

      if (v51 && (v25 = sub_1DC51477C(), , v25))
      {
        sub_1DC5149AC();

        OUTLINED_FUNCTION_11_6(v11);
        if (!v24)
        {
          v42 = *(v16 + 32);
          v43 = OUTLINED_FUNCTION_30();
          v44(v43);
          v45 = *MEMORY[0x1E69D1D40];
          v46 = OUTLINED_FUNCTION_69_2();
          v47(v46);
          OUTLINED_FUNCTION_30_3();
          v23 = sub_1DC2EB290(v2, v1, v48, v49, MEMORY[0x1E69D1D48]);

          v39 = *(v16 + 8);
          v50 = OUTLINED_FUNCTION_36();
          v39(v50);
          v41 = v2;
          goto LABEL_23;
        }
      }

      else
      {

        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v30, v31, v32, v13);
      }

      v29 = v11;
    }

    sub_1DC28EB30(v29, &qword_1ECC7C200, &qword_1DC523020);
    goto LABEL_20;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  v23 = 1;
LABEL_22:
  sub_1DC28EB30(v53, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return v23 & 1;
}

void sub_1DC2E9278()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v68 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v8 = OUTLINED_FUNCTION_10(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v67 = v11;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_38_3();
  v69 = sub_1DC5149BC();
  v13 = OUTLINED_FUNCTION_0(v69);
  v66 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v64 = v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_1();
  v65 = v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF98, &qword_1DC5224C0);
  OUTLINED_FUNCTION_10(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_58_0();
  v27 = sub_1DC5161CC();
  v28 = OUTLINED_FUNCTION_0(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_8();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v64 - v37;
  type metadata accessor for NLRouterBypassUtils();
  v39 = OUTLINED_FUNCTION_38_2();
  v40 = *(v3 + *(type metadata accessor for NLRouterServiceRequest(v39) + 24));
  sub_1DC3086B0();
  OUTLINED_FUNCTION_39(v0, 1, v27);
  if (v41)
  {
    sub_1DC28EB30(v0, &qword_1ECC7BF98, &qword_1DC5224C0);
    goto LABEL_10;
  }

  (*(v30 + 32))(v38, v0, v27);
  (*(v30 + 104))(v35, *MEMORY[0x1E69D0720], v27);
  sub_1DC2EBBA0(&qword_1ECC7C210, MEMORY[0x1E69D0738]);
  v42 = sub_1DC5176CC();
  v43 = *(v30 + 8);
  v43(v35, v27);
  if ((v42 & 1) != 0 || (v68 & 1) == 0)
  {
    v43(v38, v27);
LABEL_10:
    sub_1DC28F358(v6, v72, &qword_1ECC7D3F0, &qword_1DC5238B0);
    if (v72[3])
    {
      sub_1DC28F358(v72, v71, &qword_1ECC7D3F0, &qword_1DC5238B0);
      sub_1DC51497C();
      OUTLINED_FUNCTION_74_2();
      if (swift_dynamicCast())
      {

        sub_1DC51475C();

        if (v70 && (v49 = sub_1DC51477C(), , v49))
        {
          sub_1DC5149AC();

          v50 = v69;
          OUTLINED_FUNCTION_39(v1, 1, v69);
          if (!v41)
          {
            v59 = v66;
            (*(v66 + 32))(v22, v1, v50);
LABEL_30:
            (*(v59 + 104))(v65, *MEMORY[0x1E69D1D40], v50);
            OUTLINED_FUNCTION_31_7();
            sub_1DC2EBBA0(v60, v61);
            sub_1DC5176CC();

            v62 = *(v59 + 8);
            v63 = OUTLINED_FUNCTION_35_0();
            v62(v63);
            (v62)(v22, v50);
            __swift_destroy_boxed_opaque_existential_1Tm(v71);
            sub_1DC28EB30(v72, &qword_1ECC7D3F0, &qword_1DC5238B0);
            goto LABEL_29;
          }
        }

        else
        {

          OUTLINED_FUNCTION_19();
          __swift_storeEnumTagSinglePayload(v52, v53, v54, v69);
        }

        v55 = v1;
        goto LABEL_28;
      }

      sub_1DC514A1C();
      OUTLINED_FUNCTION_74_2();
      if (swift_dynamicCast())
      {

        sub_1DC51475C();

        if (v70)
        {
          sub_1DC51477C();
          OUTLINED_FUNCTION_78_0();
          v51 = v67;
          sub_1DC5149AC();

          v50 = v69;
          OUTLINED_FUNCTION_39(v51, 1, v69);
          if (!v41)
          {
            v59 = v66;
            v22 = v64;
            (*(v66 + 32))(v64, v51, v50);
            goto LABEL_30;
          }
        }

        else
        {

          v51 = v67;
          OUTLINED_FUNCTION_19();
          __swift_storeEnumTagSinglePayload(v56, v57, v58, v69);
        }

        v55 = v51;
LABEL_28:
        sub_1DC28EB30(v55, &qword_1ECC7C200, &qword_1DC523020);
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        sub_1DC28EB30(v72, &qword_1ECC7D3F0, &qword_1DC5238B0);
        goto LABEL_29;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v71);
    }

    sub_1DC28EB30(v72, &qword_1ECC7D3F0, &qword_1DC5238B0);
    goto LABEL_29;
  }

  v44 = sub_1DC517B9C();
  v45 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v46 = sub_1DC2BE518();
  if (os_log_type_enabled(v46, v44))
  {
    OUTLINED_FUNCTION_63();
    v47 = OUTLINED_FUNCTION_41_3();
    v72[0] = v47;
    *v45 = 136315138;
    OUTLINED_FUNCTION_31_1();
    *(v45 + 4) = sub_1DC291244(0xD00000000000004ELL, v48, v72);
    _os_log_impl(&dword_1DC287000, v46, v44, "[GenAIRule] boomerang enabled don't breakout for %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x1E1298840](v47, -1, -1);
    OUTLINED_FUNCTION_42();
  }

  v43(v38, v27);
LABEL_29:
  OUTLINED_FUNCTION_34();
}

void *sub_1DC2E9980(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC28F358(a1, v32, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v33)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_50_4(v4, v5, &qword_1ECC7D3F0, &qword_1DC5238B0, v6, v7);
  v8 = sub_1DC51485C();
  OUTLINED_FUNCTION_15_1(v8, v9, v10, v8, v11, v12, v13, v14, v29, v30);
  if (OUTLINED_FUNCTION_45_6())
  {

    if (a3)
    {
      sub_1DC517B9C();
      v15 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v16 = sub_1DC2BE518();
      if (OUTLINED_FUNCTION_80_1(v16))
      {
        OUTLINED_FUNCTION_63();
        v29 = OUTLINED_FUNCTION_41_3();
        *v15 = 136315138;
        OUTLINED_FUNCTION_31_1();
        *(v15 + 4) = sub_1DC291244(0xD000000000000056, v17, &v29);
        OUTLINED_FUNCTION_36_4(&dword_1DC287000, v18, v19, "[GenAIRule] boomerang enabled don't breakout for %s");
        OUTLINED_FUNCTION_39_3();
        OUTLINED_FUNCTION_42();
      }

      goto LABEL_10;
    }
  }

  else
  {
    v20 = sub_1DC5148AC();
    OUTLINED_FUNCTION_7_5(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30);
    if (!OUTLINED_FUNCTION_45_6())
    {
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
LABEL_11:
      a3 = 0;
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_51_4(v31);
LABEL_12:
  sub_1DC28EB30(v32, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return a3;
}

uint64_t sub_1DC2E9AF0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1DC517B9C();
    v4 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v5 = sub_1DC2BE518();
    if (OUTLINED_FUNCTION_80_1(v5))
    {
      OUTLINED_FUNCTION_63();
      v24[0] = OUTLINED_FUNCTION_41_3();
      *v4 = 136315138;
      OUTLINED_FUNCTION_31_1();
      *(v4 + 4) = sub_1DC291244(0xD000000000000053, v6, v24);
      OUTLINED_FUNCTION_36_4(&dword_1DC287000, v7, v8, "[GenAIRule] boomerang enabled don't breakout for %s");
      OUTLINED_FUNCTION_39_3();
      OUTLINED_FUNCTION_42();
    }
  }

  else
  {
    v9 = sub_1DC28F358(a1, v24, &qword_1ECC7D3F0, &qword_1DC5238B0);
    if (v24[3])
    {
      OUTLINED_FUNCTION_50_4(v9, v10, &qword_1ECC7D3F0, &qword_1DC5238B0, v11, v12);
      v13 = sub_1DC514A6C();
      OUTLINED_FUNCTION_15_1(v13, v14, v15, v13, v16, v17, v18, v19, v21, v22);
      if (OUTLINED_FUNCTION_62_6())
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        sub_1DC28EB30(v24, &qword_1ECC7D3F0, &qword_1DC5238B0);
        return 1;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v23);
    }

    sub_1DC28EB30(v24, &qword_1ECC7D3F0, &qword_1DC5238B0);
  }

  return 0;
}

uint64_t sub_1DC2E9C58(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C220, &qword_1DC52F230);
  v4 = OUTLINED_FUNCTION_10(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_72_1();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  sub_1DC28F358(a1, v39, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v40)
  {
    goto LABEL_15;
  }

  sub_1DC28F358(v39, v38, &qword_1ECC7D3F0, &qword_1DC5238B0);
  sub_1DC514AAC();
  if (!OUTLINED_FUNCTION_35_5())
  {
    sub_1DC514BBC();
    if (OUTLINED_FUNCTION_35_5())
    {

      goto LABEL_10;
    }

    sub_1DC514B8C();
    if (OUTLINED_FUNCTION_35_5())
    {
      v9 = v37;

      sub_1DC514CFC();

      if (v36 && (v24 = sub_1DC51484C(), , v24))
      {
        sub_1DC514ADC();

        v25 = sub_1DC514AEC();
        OUTLINED_FUNCTION_39(v1, 1, v25);
        if (!v16)
        {
          v17 = v1;
          goto LABEL_7;
        }
      }

      else
      {

        sub_1DC514AEC();
        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
      }

      v22 = v1;
    }

    else
    {
      sub_1DC514C1C();
      if (!OUTLINED_FUNCTION_35_5())
      {
        goto LABEL_14;
      }

      sub_1DC514CFC();

      if (v36 && (v26 = sub_1DC51484C(), , v26))
      {
        sub_1DC514ADC();

        v27 = sub_1DC514AEC();
        OUTLINED_FUNCTION_39(v9, 1, v27);
        if (!v16)
        {
          v17 = v9;
          goto LABEL_7;
        }
      }

      else
      {

        sub_1DC514AEC();
        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
      }

      v22 = v9;
    }

LABEL_13:
    sub_1DC28EB30(v22, &qword_1ECC7C220, &qword_1DC52F230);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v9 = v37;

  sub_1DC514CFC();

  if (!v36 || (v14 = sub_1DC51484C(), , !v14))
  {

    sub_1DC514AEC();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_12;
  }

  sub_1DC514ADC();

  v15 = sub_1DC514AEC();
  OUTLINED_FUNCTION_39(v13, 1, v15);
  if (v16)
  {
LABEL_12:
    v22 = v13;
    goto LABEL_13;
  }

  v17 = v13;
LABEL_7:
  sub_1DC28EB30(v17, &qword_1ECC7C220, &qword_1DC52F230);
LABEL_10:
  OUTLINED_FUNCTION_51_4(v38);
LABEL_16:
  sub_1DC28EB30(v39, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return v9;
}

void *sub_1DC2EA024(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC28F358(a1, v48, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v49)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_50_4(v4, v5, &qword_1ECC7D3F0, &qword_1DC5238B0, v6, v7);
  v8 = sub_1DC514B3C();
  OUTLINED_FUNCTION_15_1(v8, v9, v10, v8, v11, v12, v13, v14, v45, v46);
  if (OUTLINED_FUNCTION_45_6())
  {

    if (a3)
    {
      sub_1DC517B9C();
      v15 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v16 = sub_1DC2BE518();
      if (OUTLINED_FUNCTION_80_1(v16))
      {
        OUTLINED_FUNCTION_63();
        v45 = OUTLINED_FUNCTION_41_3();
        *v15 = 136315138;
        OUTLINED_FUNCTION_31_1();
        *(v15 + 4) = sub_1DC291244(0xD000000000000059, v17, &v45);
        OUTLINED_FUNCTION_36_4(&dword_1DC287000, v18, v19, "[GenAIRule] boomerang enabled don't breakout for %s");
        OUTLINED_FUNCTION_39_3();
        OUTLINED_FUNCTION_42();
      }

      goto LABEL_7;
    }

LABEL_13:
    OUTLINED_FUNCTION_51_4(v47);
    goto LABEL_14;
  }

  v20 = sub_1DC514B4C();
  OUTLINED_FUNCTION_7_5(v20, v21, v22, v23, v24, v25, v26, v27, v45, v46);
  if (OUTLINED_FUNCTION_45_6() || (v28 = sub_1DC514BAC(), OUTLINED_FUNCTION_7_5(v28, v29, v30, v31, v32, v33, v34, v35, v45, v46), OUTLINED_FUNCTION_45_6()) || (v36 = sub_1DC514B7C(), OUTLINED_FUNCTION_7_5(v36, v37, v38, v39, v40, v41, v42, v43, v45, v46), OUTLINED_FUNCTION_45_6()))
  {

    goto LABEL_13;
  }

LABEL_7:
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
LABEL_8:
  a3 = 0;
LABEL_14:
  sub_1DC28EB30(v48, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return a3;
}

void sub_1DC2EA1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v101 = sub_1DC51471C();
  v24 = OUTLINED_FUNCTION_0(v101);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_1();
  v100 = v29;
  OUTLINED_FUNCTION_12();
  v30 = sub_1DC51133C();
  v31 = OUTLINED_FUNCTION_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_1();
  v37 = v36;
  OUTLINED_FUNCTION_12();
  v38 = sub_1DC51166C();
  v39 = OUTLINED_FUNCTION_0(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v43);
  v44 = sub_1DC5116FC();
  v45 = OUTLINED_FUNCTION_0(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C228, &qword_1DC523028);
  OUTLINED_FUNCTION_10(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v55);
  sub_1DC28F358(v23, v108, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v109)
  {
    goto LABEL_29;
  }

  sub_1DC28F358(v108, v107, &qword_1ECC7D3F0, &qword_1DC5238B0);
  sub_1DC51474C();
  if (!OUTLINED_FUNCTION_62_6())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v107);
LABEL_29:
    sub_1DC28EB30(v108, &qword_1ECC7D3F0, &qword_1DC5238B0);
    OUTLINED_FUNCTION_34();
    return;
  }

  v93 = *(sub_1DC510FCC() + 16);
  if (!v93)
  {
LABEL_23:

    v82 = 1;
    v83 = v89;
LABEL_28:
    __swift_storeEnumTagSinglePayload(v83, v82, 1, v44);
    sub_1DC28EB30(v83, &qword_1ECC7C228, &qword_1DC523028);
    __swift_destroy_boxed_opaque_existential_1Tm(v107);
    goto LABEL_29;
  }

  v56 = 0;
  v57 = *(v47 + 80);
  OUTLINED_FUNCTION_24();
  v94 = v58 + v59;
  v88 = *MEMORY[0x1E69D0A70];
  v87 = (v60 + 8);
  v103 = (v33 + 8);
  v97 = *MEMORY[0x1E69D1B38];
  v96 = (v26 + 104);
  v61 = v37;
  v62 = v95;
  v63 = v58;
  v86 = v44;
  v84 = v38;
  v85 = v47;
  v90 = v58;
  while (v56 < *(v63 + 16))
  {
    (*(v47 + 16))(v62, v94 + *(v47 + 72) * v56, v44);
    if (sub_1DC5116CC())
    {
      v102 = v56;
      sub_1DC5116BC();
      OUTLINED_FUNCTION_37(&v109);
      v64(v92, v88, v38);
      sub_1DC2EBBA0(&qword_1ECC7C230, MEMORY[0x1E69D0A80]);
      OUTLINED_FUNCTION_79_2();
      OUTLINED_FUNCTION_79_2();
      v65 = *v87;
      (*v87)(v92, v38);
      v65(v91, v38);
      v63 = v90;
      v62 = v95;
      if (v106 == v105)
      {
        v66 = sub_1DC51167C();
        v104 = *(v66 + 16);
        if (v104)
        {
          v67 = 0;
          v68 = *(v33 + 80);
          OUTLINED_FUNCTION_24();
          v70 = v66 + v69;
          v98 = v66 + v69;
          v99 = v66;
          while (v67 < *(v66 + 16))
          {
            (*(v33 + 16))(v61, v70 + *(v33 + 72) * v67, v30);
            if (sub_1DC51132C())
            {
              v71 = v30;
              v72 = sub_1DC51131C();
              v74 = v73;
              (*v96)(v100, v97, v101);
              v75 = sub_1DC51470C();
              v77 = v76;
              OUTLINED_FUNCTION_37(&a18);
              v78(v100, v101);
              if (v72 == v75 && v74 == v77)
              {

                (*v103)(v61, v71);
LABEL_27:

                v83 = v89;
                v44 = v86;
                (*(v85 + 32))(v89, v95, v86);
                v82 = 0;
                goto LABEL_28;
              }

              v80 = sub_1DC51825C();

              v30 = v71;
              (*v103)(v61, v71);
              v56 = v102;
              v70 = v98;
              v66 = v99;
              if (v80)
              {
                goto LABEL_27;
              }
            }

            else
            {
              (*v103)(v61, v30);
            }

            if (v104 == ++v67)
            {

              v44 = v86;
              v38 = v84;
              v47 = v85;
              v62 = v95;
              v63 = v90;
              goto LABEL_22;
            }
          }

          __break(1u);
          break;
        }
      }
    }

LABEL_22:
    ++v56;
    OUTLINED_FUNCTION_37(&a11);
    v81(v62, v44);
    if (v56 == v93)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
}

void sub_1DC2EA924()
{
  OUTLINED_FUNCTION_33();
  v49 = v1;
  OUTLINED_FUNCTION_38_2();
  v53 = sub_1DC510FDC();
  v2 = OUTLINED_FUNCTION_0(v53);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  v55 = sub_1DC51179C();
  v7 = OUTLINED_FUNCTION_0(v55);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = sub_1DC51164C();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  v43 = *(sub_1DC5111AC() + 16);
  if (v43)
  {
    v24 = 0;
    v25 = *(v18 + 80);
    OUTLINED_FUNCTION_24();
    v46 = v26 + v27;
    v45 = (v18 + 8);
    v54 = (v9 + 8);
    v52 = (v4 + 8);
    v47 = v28 & 1;
    v29 = v26;
    v30 = v43;
    v42 = v15;
    v51 = v23;
    v44 = v18;
    v41 = v26;
    while (v24 < *(v29 + 16))
    {
      (*(v18 + 16))(v23, v46 + *(v18 + 72) * v24, v15);
      if (sub_1DC5114CC())
      {
        sub_1DC51154C();
        v31 = sub_1DC51177C();
        v32 = *v54;
        (*v54)(v14, v55);
        if (v31)
        {
          type metadata accessor for NLRouterBypassUtils();
          sub_1DC51154C();
          sub_1DC51178C();
          v32(v14, v55);
          v33 = sub_1DC307E5C();
          v50 = *v52;
          (*v52)(v0, v53);
          if (v33)
          {
            v48 = v32;

            sub_1DC51478C();

            v34 = sub_1DC2E8A08();
            v35 = (v34 + 40);
            v36 = -*(v34 + 16);
            v37 = -1;
            while (1)
            {
              if (v36 + v37 == -1)
              {

                sub_1DC28EB30(v56 + 2, &qword_1ECC7D3F0, &qword_1DC5238B0);
                v23 = v51;
                v15 = v42;
                (*v45)(v51, v42);
                v30 = v43;
                v18 = v44;
                v29 = v41;
                goto LABEL_13;
              }

              if (++v37 >= *(v34 + 16))
              {
                break;
              }

              v38 = v35 + 2;
              v40 = *(v35 - 1);
              v39 = *v35;

              sub_1DC51154C();
              sub_1DC51178C();
              v48(v14, v55);
              BYTE1(v56[0]) = v47;
              v40(v56, v56 + 2, v0, v56 + 1, v49);

              v50(v0, v53);
              v35 = v38;
              if (LOBYTE(v56[0]) == 1)
              {

                sub_1DC28EB30(v56 + 2, &qword_1ECC7D3F0, &qword_1DC5238B0);
                (*v45)(v51, v42);
                goto LABEL_17;
              }
            }

            __break(1u);
            break;
          }
        }
      }

      (*v45)(v23, v15);
      v18 = v44;
LABEL_13:
      if (++v24 == v30)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

LABEL_17:
    OUTLINED_FUNCTION_34();
  }
}

uint64_t sub_1DC2EADC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1DC2EA924();
  return v4 & 1;
}

uint64_t sub_1DC2EADFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DC2EAE8C(uint64_t a1)
{
  v2 = sub_1DC28F358(a1, v17, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v18)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_50_4(v2, v3, &qword_1ECC7D3F0, &qword_1DC5238B0, v4, v5);
  v6 = sub_1DC514D4C();
  OUTLINED_FUNCTION_15_1(v6, v7, v8, v6, v9, v10, v11, v12, v14, v15);
  if (!OUTLINED_FUNCTION_62_6())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
LABEL_5:
    v1 = 0;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_51_4(v16);
LABEL_6:
  sub_1DC28EB30(v17, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return v1;
}

uint64_t sub_1DC2EAFB8(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C218, &qword_1DC528A90);
  *(swift_initStackObject() + 16) = xmmword_1DC522F10;
  v5 = sub_1DC2EB358(a1);
  v7 = OUTLINED_FUNCTION_77(v5, v6);
  OUTLINED_FUNCTION_66_3(v7);
  return a3 & 1;
}

uint64_t sub_1DC2EB04C(uint64_t a1)
{
  v1 = sub_1DC28F358(a1, v8, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v9)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_50_4(v1, v2, &qword_1ECC7D3F0, &qword_1DC5238B0, v3, v4);
  sub_1DC51481C();
  v5 = MEMORY[0x1E69E7CA0];
  if (!OUTLINED_FUNCTION_21())
  {
    sub_1DC51488C();
    if (!OUTLINED_FUNCTION_6_5())
    {
      sub_1DC51489C();
      if (!OUTLINED_FUNCTION_6_5())
      {
        sub_1DC5148EC();
        if (!OUTLINED_FUNCTION_6_5())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v7);
LABEL_8:
          v5 = 0;
          goto LABEL_9;
        }
      }
    }
  }

  OUTLINED_FUNCTION_51_4(v7);
LABEL_9:
  sub_1DC28EB30(v8, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return v5;
}

uint64_t sub_1DC2EB168(uint64_t a1)
{
  v1 = sub_1DC28F358(a1, v8, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v9)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_50_4(v1, v2, &qword_1ECC7D3F0, &qword_1DC5238B0, v3, v4);
  sub_1DC5148DC();
  v5 = MEMORY[0x1E69E7CA0];
  if (!OUTLINED_FUNCTION_21())
  {
    sub_1DC51492C();
    if (!OUTLINED_FUNCTION_6_5())
    {
      sub_1DC5148FC();
      if (!OUTLINED_FUNCTION_6_5())
      {
        sub_1DC5149EC();
        if (!OUTLINED_FUNCTION_6_5())
        {
          sub_1DC51498C();
          if (!OUTLINED_FUNCTION_6_5())
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v7);
LABEL_9:
            v5 = 0;
            goto LABEL_10;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_51_4(v7);
LABEL_10:
  sub_1DC28EB30(v8, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return v5;
}

uint64_t sub_1DC2EB258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  result = v6(a1, a2, *a3);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1DC2EB290(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1DC2EBBA0(a4, a5);
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_79_2();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC2EB358(uint64_t a1)
{
  v2 = sub_1DC28F358(a1, v17, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v18)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_50_4(v2, v3, &qword_1ECC7D3F0, &qword_1DC5238B0, v4, v5);
  v6 = sub_1DC51493C();
  OUTLINED_FUNCTION_15_1(v6, v7, v8, v6, v9, v10, v11, v12, v14, v15);
  if (!OUTLINED_FUNCTION_62_6())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
LABEL_5:
    v1 = 0;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_51_4(v16);
LABEL_6:
  sub_1DC28EB30(v17, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return v1;
}

uint64_t sub_1DC2EB40C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1DC517B9C();
    v4 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v5 = sub_1DC2BE518();
    if (OUTLINED_FUNCTION_80_1(v5))
    {
      OUTLINED_FUNCTION_63();
      v25[0] = OUTLINED_FUNCTION_41_3();
      *v4 = 136315138;
      OUTLINED_FUNCTION_31_1();
      *(v4 + 4) = sub_1DC291244(0xD000000000000055, v6, v25);
      OUTLINED_FUNCTION_36_4(&dword_1DC287000, v7, v8, "[GenAIRule] boomerang enabled don't breakout for %s");
      OUTLINED_FUNCTION_39_3();
      OUTLINED_FUNCTION_42();
    }

    return 0;
  }

  sub_1DC28F358(a1, v25, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v25[3])
  {
    sub_1DC28EB30(v25, &qword_1ECC7D3F0, &qword_1DC5238B0);
    return 0;
  }

  v9 = sub_1DC51497C();
  OUTLINED_FUNCTION_15_1(v9, v10, v11, v9, v12, v13, v14, v15, v23, v24);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_1DC51475C();

  if (!v25[0] || (v16 = sub_1DC51476C(), , !v16))
  {

    return 0;
  }

  result = sub_1DC2C20B8(v16);
  v18 = result;
  for (i = 0; ; ++i)
  {
    if (v18 == i)
    {

      return 0;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E1296800](i, v16);
      v20 = result;
    }

    else
    {
      if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v20 = *(v16 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v25[0] = v20;
    sub_1DC2EB670();
    v22 = v21;

    if (v22)
    {

      return 1;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

BOOL sub_1DC2EB640(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

void sub_1DC2EB670()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v5 = sub_1DC514BFC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C258, &qword_1DC523078);
  OUTLINED_FUNCTION_35(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_56_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C260, &unk_1DC523080);
  v16 = OUTLINED_FUNCTION_10(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_4();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_70_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_38_3();
  v21 = *v0;
  sub_1DC5146BC();
  if (v38 && (v22 = sub_1DC5148CC(), , v22))
  {
    sub_1DC514BEC();
  }

  else
  {
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v5);
  }

  (*(v8 + 104))(v4, *MEMORY[0x1E69D20A8], v5);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v5);
  v29 = *(v11 + 48);
  OUTLINED_FUNCTION_76_0();
  sub_1DC28F358(v4, v1 + v29, &qword_1ECC7C260, &unk_1DC523080);
  OUTLINED_FUNCTION_11_6(v1);
  if (!v30)
  {
    sub_1DC28F358(v1, v3, &qword_1ECC7C260, &unk_1DC523080);
    OUTLINED_FUNCTION_11_6(v1 + v29);
    if (!v30)
    {
      (*(v8 + 32))(v2, v1 + v29, v5);
      sub_1DC2EBBA0(&qword_1ECC7C268, MEMORY[0x1E69D2110]);
      OUTLINED_FUNCTION_30();
      sub_1DC5176CC();
      v34 = *(v8 + 8);
      v34(v2, v5);
      sub_1DC28EB30(v4, &qword_1ECC7C260, &unk_1DC523080);
      v35 = OUTLINED_FUNCTION_35_0();
      sub_1DC28EB30(v35, v36, &unk_1DC523080);
      v37 = OUTLINED_FUNCTION_29_0();
      (v34)(v37);
      sub_1DC28EB30(v1, &qword_1ECC7C260, &unk_1DC523080);
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_47_5();
    OUTLINED_FUNCTION_46_4();
    v31 = *(v8 + 8);
    v32 = OUTLINED_FUNCTION_29_0();
    v33(v32);
LABEL_13:
    sub_1DC28EB30(v1, &qword_1ECC7C258, &qword_1DC523078);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_11_6(v1 + v29);
  if (!v30)
  {
    goto LABEL_13;
  }

  sub_1DC28EB30(v1, &qword_1ECC7C260, &unk_1DC523080);
LABEL_14:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2EB9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = nullsub_1(a1, a2);
  *(a3 + 24) = &type metadata for GenerativeAssistantHelper;
  *(a3 + 32) = &off_1F57F8A40;
  return result;
}

uint64_t sub_1DC2EBA20(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1DC51122C(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1DC51122C();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DC2EBB08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1DC2EBB48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DC2EBBA0(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_1DC2EBBE8(size_t a1, int64_t a2, char a3)
{
  result = sub_1DC2EBC08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DC2EBC08(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D370, &unk_1DC5283D0);
  v10 = *(sub_1DC51122C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1DC51122C() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DC2EBA20(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1DC2EBDCC()
{
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  result = sub_1DC517D7C();
  off_1ECC8F578 = result;
  return result;
}

void static CDMProtobufConverter.nluRequestJsonToSIRINLU(protoJson:)()
{
  OUTLINED_FUNCTION_164();
  v1 = sub_1DC51657C();
  v2 = OUTLINED_FUNCTION_10(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C280, &unk_1DC523090);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DC513CAC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();

  sub_1DC51656C();
  sub_1DC302048(&qword_1ECC7C288, MEMORY[0x1E69D1580]);
  OUTLINED_FUNCTION_73();
  sub_1DC5165CC();
  v15 = OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
  OUTLINED_FUNCTION_97_0();
  v18 = OUTLINED_FUNCTION_107();
  v19(v18);
  sub_1DC2EC084(v0);
  v20 = *(v12 + 8);
  v21 = OUTLINED_FUNCTION_58_3();
  v22(v21);
  OUTLINED_FUNCTION_154();
}

void sub_1DC2EC748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1DC51420C();
  v28 = OUTLINED_FUNCTION_10(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v31);
  v32 = sub_1DC513E3C();
  v33 = OUTLINED_FUNCTION_10(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v36);
  v37 = sub_1DC513A7C();
  v38 = OUTLINED_FUNCTION_10(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v41);
  v42 = sub_1DC5140BC();
  v43 = OUTLINED_FUNCTION_10(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v46);
  v47 = sub_1DC51435C();
  v48 = OUTLINED_FUNCTION_10(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v51);
  v52 = sub_1DC5144CC();
  v53 = OUTLINED_FUNCTION_10(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v56);
  v57 = sub_1DC513F0C();
  v58 = OUTLINED_FUNCTION_10(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v61);
  v62 = sub_1DC513E2C();
  v63 = OUTLINED_FUNCTION_10(v62);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_2_1();
  v538 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C2A8, &qword_1DC5230A0);
  v68 = OUTLINED_FUNCTION_10(v67);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v78);
  v562 = sub_1DC513A8C();
  v79 = OUTLINED_FUNCTION_0(v562);
  v541 = v80;
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_23_1();
  v561 = v85;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v100);
  v101 = sub_1DC513DCC();
  v102 = OUTLINED_FUNCTION_10(v101);
  v104 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_2_1();
  v553 = v105;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C2B0, &unk_1DC5230A8);
  OUTLINED_FUNCTION_10(v106);
  v108 = *(v107 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v109);
  v556 = v502 - v110;
  OUTLINED_FUNCTION_12();
  v111 = sub_1DC51403C();
  v112 = OUTLINED_FUNCTION_0(v111);
  v547 = v113;
  v115 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_15();
  v558 = v116;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_23_1();
  v564 = v126;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_62();
  v557 = v128;
  OUTLINED_FUNCTION_12();
  v551 = sub_1DC510B6C();
  v129 = OUTLINED_FUNCTION_0(v551);
  v542 = v130;
  v132 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v138);
  v139 = sub_1DC513A3C();
  v140 = OUTLINED_FUNCTION_10(v139);
  v142 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v143);
  v534 = sub_1DC513C4C();
  v144 = OUTLINED_FUNCTION_0(v534);
  v524 = v145;
  v147 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v149);
  v535[0] = sub_1DC51421C();
  v150 = OUTLINED_FUNCTION_0(v535[0]);
  v540 = v151;
  v153 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v154);
  OUTLINED_FUNCTION_62();
  v566 = v155;
  OUTLINED_FUNCTION_12();
  v563 = sub_1DC51425C();
  v156 = OUTLINED_FUNCTION_0(v563);
  v158 = v157;
  v160 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v156);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v161);
  v163 = v502 - v162;
  sub_1DC513CEC();
  v164 = [v24 requestId];
  v165 = [v164 idAsString];

  sub_1DC51772C();
  OUTLINED_FUNCTION_150();
  sub_1DC513CDC();
  OUTLINED_FUNCTION_152_0();
  sub_1DC513B1C();
  v166 = OUTLINED_FUNCTION_57_4();
  v20(v166);
  v167 = [v24 requestId];
  v168 = [v167 connectionID];

  sub_1DC51772C();
  v525 = v26;
  sub_1DC513CDC();
  OUTLINED_FUNCTION_152_0();
  sub_1DC513AFC();
  v169 = OUTLINED_FUNCTION_57_4();
  v20(v169);
  v544 = v24;
  v170 = [v24 repetitionResults];
  sub_1DC298C74(0, &qword_1ECC7C2B8, 0x1E69D2500);
  v171 = sub_1DC517A1C();

  v172 = sub_1DC2C20B8(v171);
  v173 = MEMORY[0x1E69D16C0];
  v174 = MEMORY[0x1E69D16C8];
  v175 = MEMORY[0x1E69D16B8];
  if (v172)
  {
    v176 = v172;
    v565 = v171;
    v570 = MEMORY[0x1E69E7CC0];
    sub_1DC301D30(0, v172 & ~(v172 >> 63), 0);
    if (v176 < 0)
    {
      goto LABEL_239;
    }

    v177 = 0;
    v178 = v570;
    v179 = v565;
    v560 = v565 & 0xC000000000000001;
    LODWORD(v550) = *v173;
    v180 = v540 + 104;
    LODWORD(v549) = *v174;
    LODWORD(v546) = *v175;
    LODWORD(v555) = *MEMORY[0x1E69D16B0];
    v559 = v158 + 32;
    LODWORD(v545) = *MEMORY[0x1E69D16A8];
    while (2)
    {
      if (v560)
      {
        v181 = MEMORY[0x1E1296800](v177);
      }

      else
      {
        v181 = *(v179 + 8 * v177 + 32);
      }

      v182 = v181;
      sub_1DC51424C();
      [v182 asrHypothesisIndex];
      sub_1DC51423C();
      v183 = [v182 repetitionType];
      v184 = v555;
      switch(v183)
      {
        case 0u:
          goto LABEL_15;
        case 1u:
          v185 = &v572;
          goto LABEL_14;
        case 2u:
          v185 = &a11;
          goto LABEL_14;
        case 3u:
          v185 = &a12;
          goto LABEL_14;
        default:
          if (qword_1ECC81EE0 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          sub_1DC517BAC();
          sub_1DC516EFC();
          v186 = [v182 repetitionType];
          *v566 = v186;
          v185 = &v571;
LABEL_14:
          v184 = *(v185 - 64);
LABEL_15:
          (*v180)(v566, v184, v535[0]);
          sub_1DC51422C();

          v570 = v178;
          v188 = *(v178 + 16);
          v187 = *(v178 + 24);
          if (v188 >= v187 >> 1)
          {
            v191 = OUTLINED_FUNCTION_26(v187);
            sub_1DC301D30(v191, v188 + 1, 1);
            v178 = v570;
          }

          ++v177;
          *(v178 + 16) = v188 + 1;
          v189 = *(v158 + 80);
          OUTLINED_FUNCTION_24();
          (*(v158 + 32))(v178 + v190 + *(v158 + 72) * v188, v163, v563);
          v179 = v565;
          if (v176 != v177)
          {
            continue;
          }

          v192 = v561;
          v173 = MEMORY[0x1E69D16C0];
          break;
      }

      break;
    }
  }

  else
  {

    v192 = v561;
  }

  sub_1DC513CBC();
  v193 = [v544 parses];
  sub_1DC298C74(0, &qword_1ECC7C2C0, 0x1E69D2598);
  v194 = sub_1DC517A1C();

  v516 = v194;
  v195 = sub_1DC2C20B8(v194);
  v196 = v556;
  v522 = v195;
  if (!v195)
  {
LABEL_235:

    OUTLINED_FUNCTION_34();
    return;
  }

  v197 = 0;
  v198 = 0;
  v521 = v516 & 0xC000000000000001;
  v514 = v516 & 0xFFFFFFFFFFFFFF8;
  v513 = v516 + 32;
  v550 = v542 + 16;
  v549 = v542 + 8;
  v544 = (v541 + 32);
  v542 = v541 + 16;
  v541 += 8;
  v566 = (v547 + 32);
  v546 = v547 + 16;
  v545 = v547 + 8;
  v512 = *v173;
  v520 = v540 + 104;
  v511 = *MEMORY[0x1E69D16C8];
  v510 = *MEMORY[0x1E69D16B8];
  v517[1] = *MEMORY[0x1E69D16B0];
  v509 = *MEMORY[0x1E69D16A8];
  v519 = v524 + 16;
  v518[1] = v524 + 32;
  v518[0] = v524 + 8;
  while (2)
  {
    if (v521)
    {
      v199 = MEMORY[0x1E1296800](v197, v516);
      goto LABEL_26;
    }

    if (v197 < *(v514 + 16))
    {
      v199 = *(v513 + 8 * v197);
LABEL_26:
      v540 = v199;
      v200 = __OFADD__(v197, 1);
      v201 = v197 + 1;
      if (v200)
      {
        __break(1u);
LABEL_237:
        __break(1u);
        break;
      }

      v532 = v201;
      sub_1DC513C3C();
      v202 = v540;
      [v540 probability];
      sub_1DC513BDC();
      v203 = [v202 parserId];
      v204 = sub_1DC51772C();

      OUTLINED_FUNCTION_30();
      sub_1DC513C2C();
      v205 = [v202 nsUUID];
      v206 = v554[2];
      sub_1DC510B4C();

      OUTLINED_FUNCTION_20_3(&a17);
      sub_1DC513A2C();
      sub_1DC513C0C();
      v207 = [v202 userDialogActs];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C328, &qword_1DC5230B8);
      v208 = sub_1DC517A1C();

      if (v208 >> 62)
      {
        v209 = sub_1DC51802C();
        if (v209)
        {
LABEL_29:
          v560 = v209;
          if (v209 >= 1)
          {
            v210 = 0;
            v559 = v208 & 0xC000000000000001;
            v555 = v208;
            v211 = v560;
            while (1)
            {
              v565 = v210;
              if (v559)
              {
                v212 = MEMORY[0x1E1296800]();
              }

              else
              {
                v212 = *(v208 + 8 * v210 + 32);
                swift_unknownObjectRetain();
              }

              objc_opt_self();
              OUTLINED_FUNCTION_56_7();
              if (!swift_dynamicCastObjCClass())
              {
                objc_opt_self();
                OUTLINED_FUNCTION_56_7();
                v220 = swift_dynamicCastObjCClass();
                if (v220)
                {
                  v206 = v220;
                  v221 = v192;
                  OUTLINED_FUNCTION_141();
                  OUTLINED_FUNCTION_88(&a10);
                  sub_1DC51402C();
                  OUTLINED_FUNCTION_20_3(&v567);
                  sub_1DC513E1C();
                  sub_1DC513FEC();
                  v222 = [v206 offerId];
                  if (v222)
                  {
                    v207 = v222;
                    v192 = v535[1];
                    sub_1DC510B4C();

                    OUTLINED_FUNCTION_15_2();
                    OUTLINED_FUNCTION_93();
                    v223();
                    OUTLINED_FUNCTION_43_4();
                    sub_1DC513A2C();
                    sub_1DC513FDC();
                    OUTLINED_FUNCTION_119_0();
                    sub_1DC513DEC();
                    v224 = OUTLINED_FUNCTION_21_0();
                    (v207)(v224);
                    OUTLINED_FUNCTION_37(&a11);
                    v225(v192, v204);
                  }

                  v226 = [v206 reference];
                  v204 = v537;
                  if (v226)
                  {
                    v227 = v226;
                    if (OUTLINED_FUNCTION_126())
                    {
                      OUTLINED_FUNCTION_20_3(&v558);
                      sub_1DC514EDC();
                      v208 = v555;
                      if (v198)
                      {
                        v196 = v556;
                        if (qword_1ECC81EE0 != -1)
                        {
                          OUTLINED_FUNCTION_0_6();
                          swift_once();
                        }

                        v207 = off_1ECC8F578;
                        sub_1DC517BAC();
                        OUTLINED_FUNCTION_77_0();
                        sub_1DC516EFC();

                        v198 = 0;
                        v229 = 1;
LABEL_90:
                        OUTLINED_FUNCTION_116_0(v228, v229);
                        v275 = OUTLINED_FUNCTION_82_0();
                        OUTLINED_FUNCTION_39(v275, v276, v192);
                        if (!v250)
                        {
                          OUTLINED_FUNCTION_22_2();
                          v277 = OUTLINED_FUNCTION_148_0();
                          v278(v277);
                          OUTLINED_FUNCTION_20_7();
                          v204 = *(v279 - 256);
                          v280 = OUTLINED_FUNCTION_30();
                          v281(v280);
                          v207 = sub_1DC513FDC();
                          sub_1DC513E0C();
                          v282 = OUTLINED_FUNCTION_21_0();
                          (v207)(v282);
                          OUTLINED_FUNCTION_167();
                          v283 = OUTLINED_FUNCTION_23_6();
                          v284(v283, v192);
                          v192 = v561;
LABEL_94:
                          v285 = OUTLINED_FUNCTION_40_6();
                          v286 = v548;
                          goto LABEL_95;
                        }

                        v192 = v561;
LABEL_93:
                        OUTLINED_FUNCTION_167();
                        sub_1DC28EB30(v204, &qword_1ECC7C2A8, &qword_1DC5230A0);
                        goto LABEL_94;
                      }

                      OUTLINED_FUNCTION_22_2();
                      v273 = OUTLINED_FUNCTION_115_0();
                      v228 = v274(v273);
                      v229 = 0;
                    }

                    else
                    {
                      v208 = v555;
                      if (qword_1ECC81EE0 != -1)
                      {
                        OUTLINED_FUNCTION_0_6();
                        swift_once();
                      }

                      v207 = off_1ECC8F578;
                      sub_1DC517BAC();
                      OUTLINED_FUNCTION_92();
                      sub_1DC516EFC();

                      v229 = 1;
                    }

                    v196 = v556;
                    goto LABEL_90;
                  }

                  if (qword_1ECC81EE0 != -1)
                  {
                    OUTLINED_FUNCTION_0_6();
                    swift_once();
                  }

                  v207 = off_1ECC8F578;
                  sub_1DC517B8C();
                  OUTLINED_FUNCTION_78_1();
                  sub_1DC516EFC();
                  v263 = OUTLINED_FUNCTION_41_4();
                  __swift_storeEnumTagSinglePayload(v263, v264, v265, v562);
                  v192 = v221;
                  v208 = v555;
                  v196 = v556;
                  goto LABEL_93;
                }

                objc_opt_self();
                OUTLINED_FUNCTION_56_7();
                v234 = swift_dynamicCastObjCClass();
                if (v234)
                {
                  v206 = v234;
                  v235 = v192;
                  v563 = v212;
                  swift_unknownObjectRetain();
                  OUTLINED_FUNCTION_88(&v565);
                  sub_1DC51402C();
                  OUTLINED_FUNCTION_20_3(&v557);
                  sub_1DC513EFC();
                  sub_1DC51400C();
                  v236 = [v206 taskId];
                  if (v236)
                  {
                    v237 = v236;
                    OUTLINED_FUNCTION_76_1(v554);
                    sub_1DC510B4C();

                    v238 = OUTLINED_FUNCTION_15_2();
                    v192 = v551;
                    v239(v238, v111, v551);
                    sub_1DC513A2C();
                    v207 = sub_1DC513FFC();
                    v212 = v240;
                    sub_1DC513ECC();
                    v241 = OUTLINED_FUNCTION_21_0();
                    (v207)(v241);
                    OUTLINED_FUNCTION_37(&a11);
                    v242(v111, v192);
                  }

                  v243 = [v206 reference];
                  if (v243)
                  {
                    v244 = v243;
                    v245 = OUTLINED_FUNCTION_126();
                    if (v245)
                    {
                      v212 = v245;
                      OUTLINED_FUNCTION_20_3(&v542);
                      sub_1DC514EDC();
                      v208 = v555;
                      v211 = v560;
                      v204 = v530[0];
                      if (v198)
                      {
                        if (qword_1ECC81EE0 != -1)
                        {
                          OUTLINED_FUNCTION_0_6();
                          swift_once();
                        }

                        v207 = off_1ECC8F578;
                        sub_1DC517BAC();
                        OUTLINED_FUNCTION_77_0();
                        sub_1DC516EFC();

                        v198 = 0;
                      }

                      else
                      {

                        OUTLINED_FUNCTION_22_2();
                        v312 = OUTLINED_FUNCTION_115_0();
                        v313(v312);
                      }
                    }

                    else
                    {
                      v208 = v555;
                      v211 = v560;
                      v204 = v530[0];
                      if (qword_1ECC81EE0 != -1)
                      {
                        OUTLINED_FUNCTION_0_6();
                        swift_once();
                      }

                      v207 = off_1ECC8F578;
                      sub_1DC517BAC();
                      OUTLINED_FUNCTION_92();
                      sub_1DC516EFC();
                    }

                    OUTLINED_FUNCTION_129_0();
                    OUTLINED_FUNCTION_116_0(v314, v315);
                    v316 = OUTLINED_FUNCTION_82_0();
                    OUTLINED_FUNCTION_39(v316, v317, v192);
                    if (!v250)
                    {
                      OUTLINED_FUNCTION_22_2();
                      v319 = OUTLINED_FUNCTION_148_0();
                      v320(v319);
                      OUTLINED_FUNCTION_20_7();
                      v204 = *(v321 - 256);
                      v322 = OUTLINED_FUNCTION_30();
                      v323(v322);
                      OUTLINED_FUNCTION_129_0();
                      v207 = sub_1DC513FFC();
                      v212 = v324;
                      sub_1DC513EEC();
                      OUTLINED_FUNCTION_129_0();
                      v325 = OUTLINED_FUNCTION_21_0();
                      (v207)(v325);
                      OUTLINED_FUNCTION_138();
                      v326 = OUTLINED_FUNCTION_23_6();
                      v327(v326, v192);
                      v192 = v561;
LABEL_127:
                      v258 = OUTLINED_FUNCTION_40_6();
                      v259 = v212;
                      goto LABEL_74;
                    }

                    v192 = v561;
                  }

                  else
                  {
                    if (qword_1ECC81EE0 != -1)
                    {
                      OUTLINED_FUNCTION_0_6();
                      swift_once();
                    }

                    v207 = off_1ECC8F578;
                    sub_1DC517B8C();
                    OUTLINED_FUNCTION_78_1();
                    sub_1DC516EFC();
                    v204 = v530[0];
                    v302 = OUTLINED_FUNCTION_41_4();
                    __swift_storeEnumTagSinglePayload(v302, v303, v304, v562);
                    OUTLINED_FUNCTION_129_0();
                    v192 = v235;
                    v208 = v555;
                    v211 = v560;
                  }

                  OUTLINED_FUNCTION_138();
                  v318 = v204;
                }

                else
                {
                  objc_opt_self();
                  OUTLINED_FUNCTION_56_7();
                  v266 = swift_dynamicCastObjCClass();
                  if (v266)
                  {
                    v206 = v266;
                    OUTLINED_FUNCTION_133();
                    OUTLINED_FUNCTION_141();
                    OUTLINED_FUNCTION_88(&v555);
                    sub_1DC51402C();
                    v267 = [v206 systemDialogActId];
                    OUTLINED_FUNCTION_106(&a18);
                    sub_1DC510B4C();

                    OUTLINED_FUNCTION_43_4();
                    sub_1DC513A2C();
                    sub_1DC513F8C();
                    OUTLINED_FUNCTION_119_0();
                    sub_1DC51437C();
                    v268 = OUTLINED_FUNCTION_21_0();
                    (v267)(v268);
                    v269 = [v206 reference];
                    if (v269)
                    {
                      v270 = v269;
                      v271 = OUTLINED_FUNCTION_126();
                      v204 = v562;
                      v272 = v515;
                      if (v271)
                      {
                        OUTLINED_FUNCTION_140_1();
                        v111 = v196;
                        if (v198)
                        {
                          v196 = v208;
                          if (qword_1ECC81EE0 != -1)
                          {
                            OUTLINED_FUNCTION_0_6();
                            swift_once();
                          }

                          v272 = off_1ECC8F578;
                          sub_1DC517BAC();
                          OUTLINED_FUNCTION_77_0();
                          sub_1DC516EFC();

                          v198 = 0;
LABEL_145:
                          v208 = v555;
                          OUTLINED_FUNCTION_83(&v543);
                          OUTLINED_FUNCTION_18_3();
                          __swift_storeEnumTagSinglePayload(v347, v348, v349, v350);

                          v351 = OUTLINED_FUNCTION_44();
                          OUTLINED_FUNCTION_49_0(v351, v352);
                          if (!v250)
                          {
                            OUTLINED_FUNCTION_22_2();
                            v353 = OUTLINED_FUNCTION_34_4();
                            v354(v353);
                            v355 = OUTLINED_FUNCTION_11_7();
                            v356(v355);
                            sub_1DC513F8C();
                            OUTLINED_FUNCTION_35_6();
                            sub_1DC51439C();
                            v357 = OUTLINED_FUNCTION_21_0();
                            v272(v357);
                            v358 = OUTLINED_FUNCTION_23_6();
                            v359(v358, v204);
LABEL_148:
                            v207 = v211;
                            v360 = OUTLINED_FUNCTION_40_6();
                            v361 = &v555;
                            goto LABEL_170;
                          }

LABEL_147:
                          sub_1DC28EB30(v272, &qword_1ECC7C2A8, &qword_1DC5230A0);
                          goto LABEL_148;
                        }

                        OUTLINED_FUNCTION_22_2();
                        v345 = OUTLINED_FUNCTION_112();
                        v346(v345);
                      }

                      else
                      {
                        v111 = v196;
                        if (qword_1ECC81EE0 != -1)
                        {
                          OUTLINED_FUNCTION_0_6();
                          swift_once();
                        }

                        v272 = off_1ECC8F578;
                        sub_1DC517BAC();
                        OUTLINED_FUNCTION_92();
                        sub_1DC516EFC();
                      }

                      v196 = v208;
                      goto LABEL_145;
                    }

                    v328 = v562;
                    if (qword_1ECC81EE0 != -1)
                    {
                      OUTLINED_FUNCTION_0_6();
                      swift_once();
                    }

                    v272 = off_1ECC8F578;
                    sub_1DC517B8C();
                    OUTLINED_FUNCTION_78_1();
                    sub_1DC516EFC();
                    v329 = OUTLINED_FUNCTION_31_8(&v543);
                    __swift_storeEnumTagSinglePayload(v329, v330, v331, v328);
                    v111 = v196;
                    v196 = v208;
                    v208 = v555;
                    goto LABEL_147;
                  }

                  objc_opt_self();
                  OUTLINED_FUNCTION_56_7();
                  v305 = swift_dynamicCastObjCClass();
                  if (v305)
                  {
                    v206 = v305;
                    OUTLINED_FUNCTION_133();
                    OUTLINED_FUNCTION_141();
                    OUTLINED_FUNCTION_88(&v538);
                    sub_1DC51402C();
                    v306 = [v206 systemDialogActId];
                    OUTLINED_FUNCTION_106(&a18);
                    sub_1DC510B4C();

                    OUTLINED_FUNCTION_43_4();
                    sub_1DC513A2C();
                    sub_1DC513F3C();
                    OUTLINED_FUNCTION_119_0();
                    sub_1DC51427C();
                    v307 = OUTLINED_FUNCTION_21_0();
                    (v306)(v307);
                    v308 = [v206 reference];
                    if (!v308)
                    {
                      v362 = v562;
                      v111 = v196;
                      if (qword_1ECC81EE0 != -1)
                      {
                        OUTLINED_FUNCTION_0_6();
                        swift_once();
                      }

                      v311 = off_1ECC8F578;
                      sub_1DC517B8C();
                      OUTLINED_FUNCTION_78_1();
                      sub_1DC516EFC();
                      v363 = OUTLINED_FUNCTION_31_8(v535);
                      __swift_storeEnumTagSinglePayload(v363, v364, v365, v362);
                      v196 = v208;
                      v208 = v555;
                      goto LABEL_168;
                    }

                    v309 = v308;
                    v310 = OUTLINED_FUNCTION_126();
                    v204 = v562;
                    v311 = v508;
                    if (v310)
                    {
                      OUTLINED_FUNCTION_140_1();
                      v111 = v196;
                      if (v198)
                      {
                        v196 = v208;
                        if (qword_1ECC81EE0 != -1)
                        {
                          OUTLINED_FUNCTION_0_6();
                          swift_once();
                        }

                        v311 = off_1ECC8F578;
                        sub_1DC517BAC();
                        OUTLINED_FUNCTION_77_0();
                        sub_1DC516EFC();

                        v198 = 0;
LABEL_166:
                        v208 = v555;
                        OUTLINED_FUNCTION_83(v535);
                        OUTLINED_FUNCTION_18_3();
                        __swift_storeEnumTagSinglePayload(v375, v376, v377, v378);

                        v379 = OUTLINED_FUNCTION_44();
                        OUTLINED_FUNCTION_49_0(v379, v380);
                        if (!v250)
                        {
                          OUTLINED_FUNCTION_22_2();
                          v381 = OUTLINED_FUNCTION_34_4();
                          v382(v381);
                          v383 = OUTLINED_FUNCTION_11_7();
                          v384(v383);
                          sub_1DC513F3C();
                          OUTLINED_FUNCTION_35_6();
                          sub_1DC51429C();
                          v385 = OUTLINED_FUNCTION_21_0();
                          v311(v385);
                          v386 = OUTLINED_FUNCTION_23_6();
                          v387(v386, v204);
                          goto LABEL_169;
                        }

LABEL_168:
                        sub_1DC28EB30(v311, &qword_1ECC7C2A8, &qword_1DC5230A0);
LABEL_169:
                        v207 = v211;
                        v360 = OUTLINED_FUNCTION_40_6();
                        v361 = &v538;
LABEL_170:
                        (v204)(v360, *(v361 - 32), v111);
                        OUTLINED_FUNCTION_61();
                        __swift_storeEnumTagSinglePayload(v388, v389, v390, v111);
                        swift_unknownObjectRelease();
                        goto LABEL_96;
                      }

                      OUTLINED_FUNCTION_22_2();
                      v373 = OUTLINED_FUNCTION_112();
                      v374(v373);
                    }

                    else
                    {
                      v111 = v196;
                      if (qword_1ECC81EE0 != -1)
                      {
                        OUTLINED_FUNCTION_0_6();
                        swift_once();
                      }

                      v311 = off_1ECC8F578;
                      sub_1DC517BAC();
                      OUTLINED_FUNCTION_92();
                      sub_1DC516EFC();
                    }

                    v196 = v208;
                    goto LABEL_166;
                  }

                  objc_opt_self();
                  OUTLINED_FUNCTION_56_7();
                  v332 = swift_dynamicCastObjCClass();
                  if (!v332)
                  {
                    objc_opt_self();
                    OUTLINED_FUNCTION_56_7();
                    if (!swift_dynamicCastObjCClass())
                    {
                      objc_opt_self();
                      OUTLINED_FUNCTION_56_7();
                      v394 = swift_dynamicCastObjCClass();
                      if (v394)
                      {
                        v395 = v394;
                        OUTLINED_FUNCTION_141();
                        OUTLINED_FUNCTION_106(&v519);
                        sub_1DC51402C();
                        if (([v395 asrHypothesisIndex] & 0x80000000) != 0)
                        {
                          goto LABEL_240;
                        }

                        OUTLINED_FUNCTION_150();
                        v396 = sub_1DC51401C();
                        sub_1DC51423C();
                        v397 = OUTLINED_FUNCTION_57_4();
                        v396(v397);
                        sub_1DC301F7C(v395);
                        if (v398)
                        {
                          OUTLINED_FUNCTION_150();
                          v563 = sub_1DC51401C();
                          v502[0] = sub_1DC51459C();
                          OUTLINED_FUNCTION_85_0();
                          sub_1DC51654C();
                          (v502[0])(&v567, 0);
                          v399 = OUTLINED_FUNCTION_57_4();
                          v563(v399);
                        }

                        v400 = [v395 externalParserId];
                        v206 = sub_1DC51772C();

                        OUTLINED_FUNCTION_150();
                        v207 = sub_1DC51401C();
                        sub_1DC51456C();
                        v401 = OUTLINED_FUNCTION_57_4();
                        (v207)(v401);
                        OUTLINED_FUNCTION_167();
                        v402 = v204;
                        v204 = *v566;
                        v196 = v556;
                        (*v566)(v556, v402, v111);
                        OUTLINED_FUNCTION_61();
                        __swift_storeEnumTagSinglePayload(v403, v404, v405, v111);
                        v208 = v555;
                        goto LABEL_96;
                      }

                      objc_opt_self();
                      OUTLINED_FUNCTION_56_7();
                      v424 = swift_dynamicCastObjCClass();
                      if (!v424)
                      {
                        if (qword_1ECC81EE0 != -1)
                        {
                          OUTLINED_FUNCTION_0_6();
                          swift_once();
                        }

                        v207 = off_1ECC8F578;
                        sub_1DC517BAC();
                        OUTLINED_FUNCTION_78_1();
                        sub_1DC516EFC();
                        swift_unknownObjectRelease();
                        __swift_storeEnumTagSinglePayload(v196, 1, 1, v111);
                        goto LABEL_100;
                      }

                      v206 = v424;
                      OUTLINED_FUNCTION_141();
                      OUTLINED_FUNCTION_88(&v520);
                      sub_1DC51402C();
                      OUTLINED_FUNCTION_20_3(v518);
                      sub_1DC5140AC();
                      sub_1DC513F7C();
                      v425 = [v206 task];
                      if (v425)
                      {
                        v426 = v425;
                        v427 = OUTLINED_FUNCTION_126();
                        v204 = v562;
                        v428 = v502[2];
                        if (v427)
                        {
                          OUTLINED_FUNCTION_140_1();
                          if (v198)
                          {
                            if (qword_1ECC81EE0 != -1)
                            {
                              OUTLINED_FUNCTION_0_6();
                              swift_once();
                            }

                            v207 = off_1ECC8F578;
                            sub_1DC517BAC();
                            OUTLINED_FUNCTION_77_0();
                            sub_1DC516EFC();

                            v429 = OUTLINED_FUNCTION_31_8(v517);
                            __swift_storeEnumTagSinglePayload(v429, v430, v431, v204);

                            v198 = 0;
                            goto LABEL_215;
                          }

                          OUTLINED_FUNCTION_22_2();
                          v456 = v428;
                          v207 = v503;
                          v457(v503, v456, v204);
                        }

                        else
                        {
                          if (qword_1ECC81EE0 != -1)
                          {
                            OUTLINED_FUNCTION_0_6();
                            swift_once();
                          }

                          sub_1DC517BAC();
                          OUTLINED_FUNCTION_92();
                          sub_1DC516EFC();

                          v207 = v503;
                          OUTLINED_FUNCTION_44();
                        }

                        OUTLINED_FUNCTION_18_3();
                        __swift_storeEnumTagSinglePayload(v458, v459, v460, v461);

                        goto LABEL_215;
                      }

                      v204 = v562;
                      if (qword_1ECC81EE0 != -1)
                      {
                        OUTLINED_FUNCTION_0_6();
                        swift_once();
                      }

                      v207 = off_1ECC8F578;
                      sub_1DC517B8C();
                      OUTLINED_FUNCTION_78_1();
                      sub_1DC516EFC();
                      v453 = OUTLINED_FUNCTION_31_8(v517);
                      __swift_storeEnumTagSinglePayload(v453, v454, v455, v204);
LABEL_215:
                      v462 = v504;
                      v463 = OUTLINED_FUNCTION_44();
                      OUTLINED_FUNCTION_49_0(v463, v464);
                      if (v250)
                      {
                        swift_unknownObjectRelease();
                        v465 = v207;
                        v207 = v211;
                        sub_1DC28EB30(v465, &qword_1ECC7C2A8, &qword_1DC5230A0);
                      }

                      else
                      {
                        OUTLINED_FUNCTION_22_2();
                        v466 = OUTLINED_FUNCTION_34_4();
                        v467(v466);
                        v468 = OUTLINED_FUNCTION_11_7();
                        v469(v468);
                        sub_1DC513F6C();
                        OUTLINED_FUNCTION_35_6();
                        sub_1DC51409C();
                        v462 = v504;
                        v470 = OUTLINED_FUNCTION_21_0();
                        (v207)(v470);
                        OUTLINED_FUNCTION_167();
                        v471 = OUTLINED_FUNCTION_23_6();
                        v472(v471, v204);
                      }

                      v285 = OUTLINED_FUNCTION_40_6();
                      v286 = v462;
LABEL_95:
                      (v204)(v285, v286, v111);
                      OUTLINED_FUNCTION_61();
                      __swift_storeEnumTagSinglePayload(v287, v288, v289, v111);
LABEL_96:
                      v211 = v560;
                      goto LABEL_97;
                    }

                    OUTLINED_FUNCTION_165_0();
                    OUTLINED_FUNCTION_88(&v528);
                    sub_1DC51402C();
                    OUTLINED_FUNCTION_20_3(&v523);
                    sub_1DC51434C();
                    sub_1DC513F5C();
                    v366 = [v206 taskId];
                    if (v366)
                    {
                      v207 = v366;
                      v367 = v505;
                      sub_1DC510B4C();

                      OUTLINED_FUNCTION_15_2();
                      OUTLINED_FUNCTION_93();
                      v368();
                      OUTLINED_FUNCTION_133();
                      OUTLINED_FUNCTION_43_4();
                      sub_1DC513A2C();
                      sub_1DC513F4C();
                      OUTLINED_FUNCTION_53_5();
                      sub_1DC51431C();
                      v369 = OUTLINED_FUNCTION_21_0();
                      (v207)(v369);
                      OUTLINED_FUNCTION_37(&a11);
                      v370(v367, v204);
                    }

                    v371 = [v206 reference];
                    v204 = v562;
                    if (v371)
                    {
                      v372 = v371;
                      v192 = v211;
                      if (OUTLINED_FUNCTION_126())
                      {
                        sub_1DC514EDC();
                        v211 = v560;
                        if (v198)
                        {
                          if (qword_1ECC81EE0 != -1)
                          {
                            OUTLINED_FUNCTION_0_6();
                            swift_once();
                          }

                          v207 = off_1ECC8F578;
                          sub_1DC517BAC();
                          OUTLINED_FUNCTION_77_0();
                          sub_1DC516EFC();

                          v198 = 0;
                        }

                        else
                        {

                          OUTLINED_FUNCTION_22_2();
                          v432(v506, v192, v204);
                        }
                      }

                      else
                      {
                        v211 = v560;
                        if (qword_1ECC81EE0 != -1)
                        {
                          OUTLINED_FUNCTION_0_6();
                          swift_once();
                        }

                        v207 = off_1ECC8F578;
                        sub_1DC517BAC();
                        OUTLINED_FUNCTION_92();
                        sub_1DC516EFC();
                      }

                      OUTLINED_FUNCTION_83(&v525);
                      OUTLINED_FUNCTION_18_3();
                      __swift_storeEnumTagSinglePayload(v433, v434, v435, v436);

                      v437 = OUTLINED_FUNCTION_44();
                      OUTLINED_FUNCTION_49_0(v437, v438);
                      if (!v250)
                      {
                        OUTLINED_FUNCTION_22_2();
                        v441 = OUTLINED_FUNCTION_34_4();
                        v442(v441);
                        v443 = OUTLINED_FUNCTION_11_7();
                        v444(v443);
                        sub_1DC513F4C();
                        OUTLINED_FUNCTION_35_6();
                        sub_1DC51433C();
                        v445 = OUTLINED_FUNCTION_21_0();
                        (v207)(v445);
                        OUTLINED_FUNCTION_138();
                        v446 = OUTLINED_FUNCTION_23_6();
                        v447(v446, v204);
LABEL_203:
                        v258 = OUTLINED_FUNCTION_40_6();
                        v259 = v507;
                        goto LABEL_74;
                      }
                    }

                    else
                    {
                      v192 = v211;
                      if (qword_1ECC81EE0 != -1)
                      {
                        OUTLINED_FUNCTION_0_6();
                        swift_once();
                      }

                      v207 = off_1ECC8F578;
                      sub_1DC517B8C();
                      OUTLINED_FUNCTION_78_1();
                      sub_1DC516EFC();
                      v421 = OUTLINED_FUNCTION_31_8(&v525);
                      __swift_storeEnumTagSinglePayload(v421, v422, v423, v204);
                      v211 = v560;
                    }

                    v439 = v563;
                    swift_unknownObjectRelease();
                    v440 = v207;
                    v207 = v439;
                    sub_1DC28EB30(v440, &qword_1ECC7C2A8, &qword_1DC5230A0);
                    goto LABEL_203;
                  }

                  v206 = v332;
                  v563 = v212;
                  swift_unknownObjectRetain();
                  OUTLINED_FUNCTION_88(&v534);
                  sub_1DC51402C();
                  OUTLINED_FUNCTION_20_3(&v529);
                  sub_1DC5144BC();
                  sub_1DC513FAC();
                  v333 = [v206 taskId];
                  v204 = v562;
                  if (v333)
                  {
                    v207 = v333;
                    OUTLINED_FUNCTION_106(&v526);
                    sub_1DC510B4C();

                    v334 = OUTLINED_FUNCTION_15_2();
                    v335 = v192;
                    v336 = v551;
                    v337(v334, v204, v551);
                    OUTLINED_FUNCTION_133();
                    OUTLINED_FUNCTION_43_4();
                    sub_1DC513A2C();
                    sub_1DC513F9C();
                    OUTLINED_FUNCTION_53_5();
                    sub_1DC51448C();
                    v338 = OUTLINED_FUNCTION_21_0();
                    (v207)(v338);
                    OUTLINED_FUNCTION_37(&a11);
                    v339 = v204;
                    v204 = v562;
                    v340 = v336;
                    v192 = v335;
                    v211 = v560;
                    v341(v339, v340);
                  }

                  v342 = [v206 reference];
                  if (v342)
                  {
                    v343 = v342;
                    v344 = OUTLINED_FUNCTION_126();
                    if (v344)
                    {
                      v212 = v344;
                      OUTLINED_FUNCTION_20_3(&v524);
                      sub_1DC514EDC();
                      if (v198)
                      {
                        if (qword_1ECC81EE0 != -1)
                        {
                          OUTLINED_FUNCTION_0_6();
                          swift_once();
                        }

                        v207 = off_1ECC8F578;
                        sub_1DC517BAC();
                        OUTLINED_FUNCTION_77_0();
                        sub_1DC516EFC();

                        v198 = 0;
                      }

                      else
                      {

                        OUTLINED_FUNCTION_22_2();
                        v406 = OUTLINED_FUNCTION_112();
                        v407(v406);
                      }
                    }

                    else
                    {
                      if (qword_1ECC81EE0 != -1)
                      {
                        OUTLINED_FUNCTION_0_6();
                        swift_once();
                      }

                      v207 = off_1ECC8F578;
                      sub_1DC517BAC();
                      OUTLINED_FUNCTION_92();
                      sub_1DC516EFC();
                    }

                    OUTLINED_FUNCTION_127();
                    OUTLINED_FUNCTION_83(v530);
                    OUTLINED_FUNCTION_18_3();
                    __swift_storeEnumTagSinglePayload(v408, v409, v410, v411);

                    v412 = OUTLINED_FUNCTION_44();
                    OUTLINED_FUNCTION_49_0(v412, v413);
                    if (!v250)
                    {
                      OUTLINED_FUNCTION_22_2();
                      v414 = OUTLINED_FUNCTION_34_4();
                      v415(v414);
                      v416 = OUTLINED_FUNCTION_11_7();
                      v417(v416);
                      OUTLINED_FUNCTION_127();
                      sub_1DC513F9C();
                      OUTLINED_FUNCTION_35_6();
                      sub_1DC5144AC();
                      OUTLINED_FUNCTION_127();
                      v418 = OUTLINED_FUNCTION_21_0();
                      (v207)(v418);
                      OUTLINED_FUNCTION_138();
                      v419 = OUTLINED_FUNCTION_23_6();
                      v420(v419, v204);
                      goto LABEL_127;
                    }
                  }

                  else
                  {
                    if (qword_1ECC81EE0 != -1)
                    {
                      OUTLINED_FUNCTION_0_6();
                      swift_once();
                    }

                    v207 = off_1ECC8F578;
                    sub_1DC517B8C();
                    OUTLINED_FUNCTION_78_1();
                    sub_1DC516EFC();
                    v391 = OUTLINED_FUNCTION_31_8(v530);
                    __swift_storeEnumTagSinglePayload(v391, v392, v393, v204);
                    OUTLINED_FUNCTION_127();
                  }

                  v206 = v563;
                  swift_unknownObjectRelease();
                  v318 = v207;
                  v207 = v206;
                }

                sub_1DC28EB30(v318, &qword_1ECC7C2A8, &qword_1DC5230A0);
                goto LABEL_127;
              }

              OUTLINED_FUNCTION_165_0();
              sub_1DC51402C();
              OUTLINED_FUNCTION_20_3(&a15);
              sub_1DC513DBC();
              sub_1DC513FCC();
              v213 = [v206 offerId];
              if (v213)
              {
                v207 = v213;
                v192 = v543;
                sub_1DC510B4C();

                OUTLINED_FUNCTION_15_2();
                OUTLINED_FUNCTION_93();
                v214();
                OUTLINED_FUNCTION_133();
                OUTLINED_FUNCTION_43_4();
                sub_1DC513A2C();
                sub_1DC513FBC();
                OUTLINED_FUNCTION_53_5();
                sub_1DC513D8C();
                v215 = OUTLINED_FUNCTION_21_0();
                (v207)(v215);
                OUTLINED_FUNCTION_37(&a11);
                v216(v192, v204);
              }

              v217 = [v206 reference];
              v204 = v554[0];
              if (!v217)
              {
                if (qword_1ECC81EE0 != -1)
                {
                  OUTLINED_FUNCTION_0_6();
                  swift_once();
                }

                v207 = off_1ECC8F578;
                sub_1DC517B8C();
                OUTLINED_FUNCTION_78_1();
                sub_1DC516EFC();
                v230 = OUTLINED_FUNCTION_41_4();
                __swift_storeEnumTagSinglePayload(v230, v231, v232, v562);
                v192 = v211;
                v211 = v560;
                goto LABEL_72;
              }

              v218 = v217;
              if (!OUTLINED_FUNCTION_126())
              {
                break;
              }

              OUTLINED_FUNCTION_20_3(&v568);
              sub_1DC514EDC();
              v211 = v560;
              if (v198)
              {
                if (qword_1ECC81EE0 != -1)
                {
                  OUTLINED_FUNCTION_0_6();
                  swift_once();
                }

                v207 = off_1ECC8F578;
                sub_1DC517BAC();
                OUTLINED_FUNCTION_77_0();
                sub_1DC516EFC();

                v198 = 0;
LABEL_58:
                v233 = 1;
                goto LABEL_69;
              }

              OUTLINED_FUNCTION_22_2();
              v246 = OUTLINED_FUNCTION_115_0();
              v219 = v247(v246);
              v233 = 0;
LABEL_69:
              OUTLINED_FUNCTION_116_0(v219, v233);
              v248 = OUTLINED_FUNCTION_82_0();
              OUTLINED_FUNCTION_39(v248, v249, v192);
              if (v250)
              {
                v192 = v561;
LABEL_72:
                OUTLINED_FUNCTION_138();
                sub_1DC28EB30(v204, &qword_1ECC7C2A8, &qword_1DC5230A0);
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_22_2();
              v251 = v536;
              v252(v536, v204, v192);
              OUTLINED_FUNCTION_20_7();
              v206 = *(v253 - 256);
              v254(v206, v251, v192);
              v207 = sub_1DC513FBC();
              sub_1DC513DAC();
              v255 = OUTLINED_FUNCTION_21_0();
              (v207)(v255);
              OUTLINED_FUNCTION_138();
              OUTLINED_FUNCTION_37(&v569);
              v256 = v251;
              v196 = v556;
              v257(v256, v192);
              v192 = v561;
LABEL_73:
              v258 = OUTLINED_FUNCTION_40_6();
              v259 = v564;
LABEL_74:
              (v204)(v258, v259, v111);
              OUTLINED_FUNCTION_61();
              __swift_storeEnumTagSinglePayload(v260, v261, v262, v111);
LABEL_97:
              OUTLINED_FUNCTION_39(v196, 1, v111);
              if (!v250)
              {
                v563 = v198;
                v290 = v557;
                v291 = OUTLINED_FUNCTION_85_0();
                v204(v291);
                OUTLINED_FUNCTION_37(&v572);
                v292(v558, v290, v111);
                v293 = sub_1DC513BEC();
                v295 = v294;
                v206 = *v294;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *v295 = v206;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v448 = OUTLINED_FUNCTION_136();
                  v206 = sub_1DC301A54(v448, v449, v450, v451);
                  *v295 = v206;
                }

                v298 = v206[2];
                v297 = v206[3];
                if (v298 >= v297 >> 1)
                {
                  v452 = OUTLINED_FUNCTION_26(v297);
                  v206 = sub_1DC301A54(v452, v298 + 1, 1, v206);
                  *v295 = v206;
                }

                v196 = v556;
                v206[2] = v298 + 1;
                v207 = v547;
                v299 = *(v547 + 80);
                OUTLINED_FUNCTION_24();
                (v204)(v206 + v300 + *(v207 + 9) * v298, v558, v111);
                v301 = OUTLINED_FUNCTION_21_0();
                v293(v301);
                swift_unknownObjectRelease();
                (*(v207 + 1))(v557, v111);
                v192 = v561;
                v198 = v563;
                goto LABEL_106;
              }

              swift_unknownObjectRelease();
LABEL_100:
              sub_1DC28EB30(v196, &qword_1ECC7C2B0, &unk_1DC5230A8);
LABEL_106:
              v210 = v565 + 1;
              if (v211 == (v565 + 1))
              {
                goto LABEL_220;
              }
            }

            v211 = v560;
            if (qword_1ECC81EE0 != -1)
            {
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v207 = off_1ECC8F578;
            sub_1DC517BAC();
            OUTLINED_FUNCTION_92();
            sub_1DC516EFC();

            goto LABEL_58;
          }

          goto LABEL_237;
        }
      }

      else
      {
        v209 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v209)
        {
          goto LABEL_29;
        }
      }

LABEL_220:

      v473 = [v540 repetitionResult];
      OUTLINED_FUNCTION_88(&v551);
      sub_1DC51424C();
      [v473 asrHypothesisIndex];
      sub_1DC51423C();
      v474 = [v473 repetitionType];
      v475 = v552;
      switch(v474)
      {
        case 0u:
          goto LABEL_228;
        case 1u:
          v476 = &v531 + 4;
          goto LABEL_227;
        case 2u:
          v476 = &v532;
          goto LABEL_227;
        case 3u:
          v476 = &v532 + 4;
          goto LABEL_227;
        default:
          v475 = v552;
          if (qword_1ECC81EE0 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          sub_1DC517BAC();
          sub_1DC516EFC();
          v477 = [v473 repetitionType];
          *v527 = v477;
          v476 = &v531;
LABEL_227:
          v478 = *(v476 - 64);
LABEL_228:
          OUTLINED_FUNCTION_37(&v548);
          v479(v527);
          sub_1DC51422C();

          sub_1DC513BFC();
          v480 = [v540 parser];
          if (v480)
          {
            v481 = v480;
            OUTLINED_FUNCTION_88(&v539);
            sub_1DC513A6C();
            OUTLINED_FUNCTION_20_3(&v540);
            sub_1DC300BB0(v481, v482);
            sub_1DC513A5C();
            OUTLINED_FUNCTION_20_3(&v541);
            sub_1DC300CDC(v481, v483);
            sub_1DC513A4C();
            sub_1DC513C1C();
          }

          OUTLINED_FUNCTION_37(&v547);
          v484(v533, v475, v534);
          v485 = v525;
          sub_1DC513CCC();
          OUTLINED_FUNCTION_163();
          v487 = *v486;
          v488 = swift_isUniquelyReferenced_nonNull_native();
          *v208 = v487;
          if ((v488 & 1) == 0)
          {
            v497 = OUTLINED_FUNCTION_136();
            v487 = sub_1DC301930(v497, v498, v499, v500);
            *v208 = v487;
          }

          v490 = *(v487 + 16);
          v489 = *(v487 + 24);
          if (v490 >= v489 >> 1)
          {
            v501 = OUTLINED_FUNCTION_26(v489);
            v487 = sub_1DC301930(v501, v490 + 1, 1, v487);
            *v208 = v487;
          }

          *(v487 + 16) = v490 + 1;
          v491 = v524;
          v492 = *(v524 + 80);
          OUTLINED_FUNCTION_24();
          v494 = v487 + v493 + *(v491 + 72) * v490;
          v495 = v534;
          (*(v491 + 32))(v494, v533, v534);
          v496 = OUTLINED_FUNCTION_21_0();
          v485(v496);

          (*(v491 + 8))(v552, v495);
          v197 = v532;
          if (v532 == v522)
          {
            goto LABEL_235;
          }

          continue;
      }
    }

    break;
  }

  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
}

id _s13CDMFoundation20CDMProtobufConverterC26serializeTokenizerResponse8response10formatTypeSSSgSo033SIRINLUINTERNALTOKENIZERTokenizerF0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC51670C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C750, &qword_1DC523370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1DC5137DC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v20 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DC522F20;
    *&v49 = sub_1DC298C74(0, &qword_1ECC7C758, 0x1E69D13C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C760, &qword_1DC523378);
    v26 = sub_1DC51777C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DC2C0FA4();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DC516EFC();

    return 0;
  }

  v21 = v20;
  v42 = v5;
  v43 = v19;
  v44 = v16;
  v22 = sub_1DC510A0C();
  v24 = v23;

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1DC2A6784(v22, v24);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1EDAC8018, MEMORY[0x1E69D1040]);
  v45 = v22;
  v46 = v24;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v32 = v43;
  v31 = v44;
  (*(v44 + 32))(v43, v14, v15);
  v33 = v47;
  v34 = v48;
  v35 = v48 == 1852797802 && v47 == 0xE400000000000000;
  if (v35 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v29 = sub_1DC51673C();
    sub_1DC2AD740(v45, v46);
    (*(v42 + 8))(v8, v4);
LABEL_22:
    (*(v31 + 8))(v32, v15);
    return v29;
  }

  v36 = v34 == 0x343665736162 && v33 == 0xE600000000000000;
  if (!v36 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DC522F20;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DC2C0FA4();
    *(v41 + 32) = v48;
    *(v41 + 40) = v33;

    sub_1DC516EFC();

    sub_1DC2AD740(v45, v46);
    (*(v31 + 8))(v32, v15);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v37 = result;
    v38 = sub_1DC510A0C();
    v40 = v39;

    v29 = sub_1DC5109FC();
    sub_1DC2AD740(v38, v40);
    sub_1DC2AD740(v45, v46);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC26serializeSpanMatchResponse8response10formatTypeSSSgSo028SIRINLUINTERNALSPANMATCHSpanfG0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC51670C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C728, &qword_1DC523358);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1DC51224C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v20 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DC522F20;
    *&v49 = sub_1DC298C74(0, &qword_1ECC7C730, 0x1E69D13A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C738, &qword_1DC523360);
    v26 = sub_1DC51777C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DC2C0FA4();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DC516EFC();

    return 0;
  }

  v21 = v20;
  v42 = v5;
  v43 = v19;
  v44 = v16;
  v22 = sub_1DC510A0C();
  v24 = v23;

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1DC2A6784(v22, v24);
  sub_1DC5166FC();
  sub_1DC302048(&unk_1EDAC8040, MEMORY[0x1E69D0CE8]);
  v45 = v22;
  v46 = v24;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v32 = v43;
  v31 = v44;
  (*(v44 + 32))(v43, v14, v15);
  v33 = v47;
  v34 = v48;
  v35 = v48 == 1852797802 && v47 == 0xE400000000000000;
  if (v35 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v29 = sub_1DC51673C();
    sub_1DC2AD740(v45, v46);
    (*(v42 + 8))(v8, v4);
LABEL_22:
    (*(v31 + 8))(v32, v15);
    return v29;
  }

  v36 = v34 == 0x343665736162 && v33 == 0xE600000000000000;
  if (!v36 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DC522F20;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DC2C0FA4();
    *(v41 + 32) = v48;
    *(v41 + 40) = v33;

    sub_1DC516EFC();

    sub_1DC2AD740(v45, v46);
    (*(v31 + 8))(v32, v15);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v37 = result;
    v38 = sub_1DC510A0C();
    v40 = v39;

    v29 = sub_1DC5109FC();
    sub_1DC2AD740(v38, v40);
    sub_1DC2AD740(v45, v46);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC26serializeNlv4ParserRequest7request10formatTypeSSSgSo030SIRINLUINTERNALNLV4_PARSERNLv4fG0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC51670C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C700, &qword_1DC523340);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1DC51383C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v20 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DC522F20;
    *&v49 = sub_1DC298C74(0, &qword_1ECC7C708, 0x1E69D1310);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C710, &qword_1DC523348);
    v26 = sub_1DC51777C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DC2C0FA4();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DC516EFC();

    return 0;
  }

  v21 = v20;
  v42 = v5;
  v43 = v19;
  v44 = v16;
  v22 = sub_1DC510A0C();
  v24 = v23;

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1DC2A6784(v22, v24);
  sub_1DC5166FC();
  sub_1DC302048(&unk_1EDAC8008, MEMORY[0x1E69D1090]);
  v45 = v22;
  v46 = v24;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v32 = v43;
  v31 = v44;
  (*(v44 + 32))(v43, v14, v15);
  v33 = v47;
  v34 = v48;
  v35 = v48 == 1852797802 && v47 == 0xE400000000000000;
  if (v35 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v29 = sub_1DC51673C();
    sub_1DC2AD740(v45, v46);
    (*(v42 + 8))(v8, v4);
LABEL_22:
    (*(v31 + 8))(v32, v15);
    return v29;
  }

  v36 = v34 == 0x343665736162 && v33 == 0xE600000000000000;
  if (!v36 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DC522F20;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DC2C0FA4();
    *(v41 + 32) = v48;
    *(v41 + 40) = v33;

    sub_1DC516EFC();

    sub_1DC2AD740(v45, v46);
    (*(v31 + 8))(v32, v15);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v37 = result;
    v38 = sub_1DC510A0C();
    v40 = v39;

    v29 = sub_1DC5109FC();
    sub_1DC2AD740(v38, v40);
    sub_1DC2AD740(v45, v46);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC27serializeNlv4ParserResponse8response10formatTypeSSSgSo030SIRINLUINTERNALNLV4_PARSERNLv4fG0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC51670C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C6D8, &qword_1DC523328);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1DC51384C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v20 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DC522F20;
    *&v49 = sub_1DC298C74(0, &qword_1ECC7C6E0, 0x1E69D1318);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C6E8, &qword_1DC523330);
    v26 = sub_1DC51777C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DC2C0FA4();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DC516EFC();

    return 0;
  }

  v21 = v20;
  v42 = v5;
  v43 = v19;
  v44 = v16;
  v22 = sub_1DC510A0C();
  v24 = v23;

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1DC2A6784(v22, v24);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1EDAC8000, MEMORY[0x1E69D10A0]);
  v45 = v22;
  v46 = v24;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v32 = v43;
  v31 = v44;
  (*(v44 + 32))(v43, v14, v15);
  v33 = v47;
  v34 = v48;
  v35 = v48 == 1852797802 && v47 == 0xE400000000000000;
  if (v35 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v29 = sub_1DC51673C();
    sub_1DC2AD740(v45, v46);
    (*(v42 + 8))(v8, v4);
LABEL_22:
    (*(v31 + 8))(v32, v15);
    return v29;
  }

  v36 = v34 == 0x343665736162 && v33 == 0xE600000000000000;
  if (!v36 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DC522F20;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DC2C0FA4();
    *(v41 + 32) = v48;
    *(v41 + 40) = v33;

    sub_1DC516EFC();

    sub_1DC2AD740(v45, v46);
    (*(v31 + 8))(v32, v15);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v37 = result;
    v38 = sub_1DC510A0C();
    v40 = v39;

    v29 = sub_1DC5109FC();
    sub_1DC2AD740(v38, v40);
    sub_1DC2AD740(v45, v46);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC18serializeMDRequest7request10formatTypeSSSgSo53SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequestCSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC51670C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C6B0, &qword_1DC523310);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1DC51385C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v20 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DC522F20;
    *&v49 = sub_1DC298C74(0, &qword_1ECC7C6B8, 0x1E69D12E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C6C0, &qword_1DC523318);
    v26 = sub_1DC51777C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DC2C0FA4();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DC516EFC();

    return 0;
  }

  v21 = v20;
  v42 = v5;
  v43 = v19;
  v44 = v16;
  v22 = sub_1DC510A0C();
  v24 = v23;

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1DC2A6784(v22, v24);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1EDAC7FF8, MEMORY[0x1E69D10B0]);
  v45 = v22;
  v46 = v24;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v32 = v43;
  v31 = v44;
  (*(v44 + 32))(v43, v14, v15);
  v33 = v47;
  v34 = v48;
  v35 = v48 == 1852797802 && v47 == 0xE400000000000000;
  if (v35 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v29 = sub_1DC51673C();
    sub_1DC2AD740(v45, v46);
    (*(v42 + 8))(v8, v4);
LABEL_22:
    (*(v31 + 8))(v32, v15);
    return v29;
  }

  v36 = v34 == 0x343665736162 && v33 == 0xE600000000000000;
  if (!v36 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DC522F20;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DC2C0FA4();
    *(v41 + 32) = v48;
    *(v41 + 40) = v33;

    sub_1DC516EFC();

    sub_1DC2AD740(v45, v46);
    (*(v31 + 8))(v32, v15);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v37 = result;
    v38 = sub_1DC510A0C();
    v40 = v39;

    v29 = sub_1DC5109FC();
    sub_1DC2AD740(v38, v40);
    sub_1DC2AD740(v45, v46);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC19serializeMDResponse8response10formatTypeSSSgSo54SIRINLUINTERNALMENTION_DETECTORMentionDetectorResponseCSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC51670C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C688, &qword_1DC5232F8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1DC51386C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v20 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DC522F20;
    *&v49 = sub_1DC298C74(0, &qword_1ECC7C690, 0x1E69D12F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C698, &qword_1DC523300);
    v26 = sub_1DC51777C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DC2C0FA4();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DC516EFC();

    return 0;
  }

  v21 = v20;
  v42 = v5;
  v43 = v19;
  v44 = v16;
  v22 = sub_1DC510A0C();
  v24 = v23;

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1DC2A6784(v22, v24);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1EDAC7FF0, MEMORY[0x1E69D10C0]);
  v45 = v22;
  v46 = v24;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v32 = v43;
  v31 = v44;
  (*(v44 + 32))(v43, v14, v15);
  v33 = v47;
  v34 = v48;
  v35 = v48 == 1852797802 && v47 == 0xE400000000000000;
  if (v35 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v29 = sub_1DC51673C();
    sub_1DC2AD740(v45, v46);
    (*(v42 + 8))(v8, v4);
LABEL_22:
    (*(v31 + 8))(v32, v15);
    return v29;
  }

  v36 = v34 == 0x343665736162 && v33 == 0xE600000000000000;
  if (!v36 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DC522F20;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DC2C0FA4();
    *(v41 + 32) = v48;
    *(v41 + 40) = v33;

    sub_1DC516EFC();

    sub_1DC2AD740(v45, v46);
    (*(v31 + 8))(v32, v15);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v37 = result;
    v38 = sub_1DC510A0C();
    v40 = v39;

    v29 = sub_1DC5109FC();
    sub_1DC2AD740(v38, v40);
    sub_1DC2AD740(v45, v46);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC18serializeMRRequest7request10formatTypeSSSgSo53SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequestCSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC51670C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C660, &qword_1DC5232E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1DC51387C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v20 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DC522F20;
    *&v49 = sub_1DC298C74(0, &qword_1ECC7C668, 0x1E69D12F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C670, &qword_1DC5232E8);
    v26 = sub_1DC51777C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DC2C0FA4();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DC516EFC();

    return 0;
  }

  v21 = v20;
  v42 = v5;
  v43 = v19;
  v44 = v16;
  v22 = sub_1DC510A0C();
  v24 = v23;

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1DC2A6784(v22, v24);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1EDAC7FE8, MEMORY[0x1E69D10D0]);
  v45 = v22;
  v46 = v24;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v32 = v43;
  v31 = v44;
  (*(v44 + 32))(v43, v14, v15);
  v33 = v47;
  v34 = v48;
  v35 = v48 == 1852797802 && v47 == 0xE400000000000000;
  if (v35 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v29 = sub_1DC51673C();
    sub_1DC2AD740(v45, v46);
    (*(v42 + 8))(v8, v4);
LABEL_22:
    (*(v31 + 8))(v32, v15);
    return v29;
  }

  v36 = v34 == 0x343665736162 && v33 == 0xE600000000000000;
  if (!v36 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DC522F20;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DC2C0FA4();
    *(v41 + 32) = v48;
    *(v41 + 40) = v33;

    sub_1DC516EFC();

    sub_1DC2AD740(v45, v46);
    (*(v31 + 8))(v32, v15);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v37 = result;
    v38 = sub_1DC510A0C();
    v40 = v39;

    v29 = sub_1DC5109FC();
    sub_1DC2AD740(v38, v40);
    sub_1DC2AD740(v45, v46);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC19serializeMRResponse8response10formatTypeSSSgSo54SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponseCSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC51670C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C638, &qword_1DC5232C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1DC51388C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v20 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DC522F20;
    *&v49 = sub_1DC298C74(0, &qword_1ECC7B930, 0x1E69D1300);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C648, &qword_1DC5232D0);
    v26 = sub_1DC51777C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DC2C0FA4();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DC516EFC();

    return 0;
  }

  v21 = v20;
  v42 = v5;
  v43 = v19;
  v44 = v16;
  v22 = sub_1DC510A0C();
  v24 = v23;

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1DC2A6784(v22, v24);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1ECC7BDA0, MEMORY[0x1E69D10E0]);
  v45 = v22;
  v46 = v24;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v32 = v43;
  v31 = v44;
  (*(v44 + 32))(v43, v14, v15);
  v33 = v47;
  v34 = v48;
  v35 = v48 == 1852797802 && v47 == 0xE400000000000000;
  if (v35 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v29 = sub_1DC51673C();
    sub_1DC2AD740(v45, v46);
    (*(v42 + 8))(v8, v4);
LABEL_22:
    (*(v31 + 8))(v32, v15);
    return v29;
  }

  v36 = v34 == 0x343665736162 && v33 == 0xE600000000000000;
  if (!v36 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DC522F20;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DC2C0FA4();
    *(v41 + 32) = v48;
    *(v41 + 40) = v33;

    sub_1DC516EFC();

    sub_1DC2AD740(v45, v46);
    (*(v31 + 8))(v32, v15);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v37 = result;
    v38 = sub_1DC510A0C();
    v40 = v39;

    v29 = sub_1DC5109FC();
    sub_1DC2AD740(v38, v40);
    sub_1DC2AD740(v45, v46);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC26serializeSNLCParserRequest7request10formatTypeSSSgSo029SIRINLUINTERNALSNLCSNLCParserF0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC51670C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C610, &qword_1DC5232B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1DC511F0C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v20 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DC522F20;
    *&v49 = sub_1DC298C74(0, &qword_1ECC7C618, 0x1E69D1388);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C620, &qword_1DC5232B8);
    v26 = sub_1DC51777C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DC2C0FA4();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DC516EFC();

    return 0;
  }

  v21 = v20;
  v42 = v5;
  v43 = v19;
  v44 = v16;
  v22 = sub_1DC510A0C();
  v24 = v23;

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1DC2A6784(v22, v24);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1ECC7BDC8, MEMORY[0x1E69D0C08]);
  v45 = v22;
  v46 = v24;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v32 = v43;
  v31 = v44;
  (*(v44 + 32))(v43, v14, v15);
  v33 = v47;
  v34 = v48;
  v35 = v48 == 1852797802 && v47 == 0xE400000000000000;
  if (v35 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v29 = sub_1DC51673C();
    sub_1DC2AD740(v45, v46);
    (*(v42 + 8))(v8, v4);
LABEL_22:
    (*(v31 + 8))(v32, v15);
    return v29;
  }

  v36 = v34 == 0x343665736162 && v33 == 0xE600000000000000;
  if (!v36 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DC522F20;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DC2C0FA4();
    *(v41 + 32) = v48;
    *(v41 + 40) = v33;

    sub_1DC516EFC();

    sub_1DC2AD740(v45, v46);
    (*(v31 + 8))(v32, v15);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v37 = result;
    v38 = sub_1DC510A0C();
    v40 = v39;

    v29 = sub_1DC5109FC();
    sub_1DC2AD740(v38, v40);
    sub_1DC2AD740(v45, v46);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC27serializeSNLCParserResponse8response10formatTypeSSSgSo029SIRINLUINTERNALSNLCSNLCParserF0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC51670C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C5E8, &qword_1DC523298);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1DC511F2C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v20 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DC522F20;
    *&v49 = sub_1DC298C74(0, &qword_1ECC7C5F0, 0x1E69D1390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C5F8, &qword_1DC5232A0);
    v26 = sub_1DC51777C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DC2C0FA4();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DC516EFC();

    return 0;
  }

  v21 = v20;
  v42 = v5;
  v43 = v19;
  v44 = v16;
  v22 = sub_1DC510A0C();
  v24 = v23;

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1DC2A6784(v22, v24);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1ECC7BDC0, MEMORY[0x1E69D0C28]);
  v45 = v22;
  v46 = v24;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v32 = v43;
  v31 = v44;
  (*(v44 + 32))(v43, v14, v15);
  v33 = v47;
  v34 = v48;
  v35 = v48 == 1852797802 && v47 == 0xE400000000000000;
  if (v35 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v29 = sub_1DC51673C();
    sub_1DC2AD740(v45, v46);
    (*(v42 + 8))(v8, v4);
LABEL_22:
    (*(v31 + 8))(v32, v15);
    return v29;
  }

  v36 = v34 == 0x343665736162 && v33 == 0xE600000000000000;
  if (!v36 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DC522F20;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DC2C0FA4();
    *(v41 + 32) = v48;
    *(v41 + 40) = v33;

    sub_1DC516EFC();

    sub_1DC2AD740(v45, v46);
    (*(v31 + 8))(v32, v15);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v37 = result;
    v38 = sub_1DC510A0C();
    v40 = v39;

    v29 = sub_1DC5109FC();
    sub_1DC2AD740(v38, v40);
    sub_1DC2AD740(v45, v46);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC25serializePSCParserRequest7request10formatTypeSSSgSo029SIRINLUINTERNALITFMITFMParserF0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC51670C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C5C0, &qword_1DC523280);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1DC511EFC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v20 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DC522F20;
    *&v49 = sub_1DC298C74(0, &qword_1ECC7C5C8, 0x1E69D12D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C5D0, &qword_1DC523288);
    v26 = sub_1DC51777C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DC2C0FA4();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DC516EFC();

    return 0;
  }

  v21 = v20;
  v42 = v5;
  v43 = v19;
  v44 = v16;
  v22 = sub_1DC510A0C();
  v24 = v23;

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1DC2A6784(v22, v24);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1EDAC8058, MEMORY[0x1E69D0BF8]);
  v45 = v22;
  v46 = v24;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v32 = v43;
  v31 = v44;
  (*(v44 + 32))(v43, v14, v15);
  v33 = v47;
  v34 = v48;
  v35 = v48 == 1852797802 && v47 == 0xE400000000000000;
  if (v35 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v29 = sub_1DC51673C();
    sub_1DC2AD740(v45, v46);
    (*(v42 + 8))(v8, v4);
LABEL_22:
    (*(v31 + 8))(v32, v15);
    return v29;
  }

  v36 = v34 == 0x343665736162 && v33 == 0xE600000000000000;
  if (!v36 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DC522F20;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DC2C0FA4();
    *(v41 + 32) = v48;
    *(v41 + 40) = v33;

    sub_1DC516EFC();

    sub_1DC2AD740(v45, v46);
    (*(v31 + 8))(v32, v15);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v37 = result;
    v38 = sub_1DC510A0C();
    v40 = v39;

    v29 = sub_1DC5109FC();
    sub_1DC2AD740(v38, v40);
    sub_1DC2AD740(v45, v46);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC26serializePSCParserResponse8response10formatTypeSSSgSo029SIRINLUINTERNALITFMITFMParserF0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC51670C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C598, &qword_1DC523268);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1DC511F1C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v20 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DC522F20;
    *&v49 = sub_1DC298C74(0, &qword_1ECC7C5A0, 0x1E69D12D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C5A8, &qword_1DC523270);
    v26 = sub_1DC51777C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DC2C0FA4();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DC516EFC();

    return 0;
  }

  v21 = v20;
  v42 = v5;
  v43 = v19;
  v44 = v16;
  v22 = sub_1DC510A0C();
  v24 = v23;

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1DC2A6784(v22, v24);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1EDAC8050, MEMORY[0x1E69D0C18]);
  v45 = v22;
  v46 = v24;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v32 = v43;
  v31 = v44;
  (*(v44 + 32))(v43, v14, v15);
  v33 = v47;
  v34 = v48;
  v35 = v48 == 1852797802 && v47 == 0xE400000000000000;
  if (v35 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v29 = sub_1DC51673C();
    sub_1DC2AD740(v45, v46);
    (*(v42 + 8))(v8, v4);
LABEL_22:
    (*(v31 + 8))(v32, v15);
    return v29;
  }

  v36 = v34 == 0x343665736162 && v33 == 0xE600000000000000;
  if (!v36 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DC522F20;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DC2C0FA4();
    *(v41 + 32) = v48;
    *(v41 + 40) = v33;

    sub_1DC516EFC();

    sub_1DC2AD740(v45, v46);
    (*(v31 + 8))(v32, v15);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v37 = result;
    v38 = sub_1DC510A0C();
    v40 = v39;

    v29 = sub_1DC5109FC();
    sub_1DC2AD740(v38, v40);
    sub_1DC2AD740(v45, v46);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC19serializeSSURequest7request10formatTypeSSSgSo28SIRINLUINTERNALSSUSSURequestCSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC51670C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C570, &qword_1DC523250);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1DC5117AC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v20 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DC522F20;
    *&v49 = sub_1DC298C74(0, &qword_1ECC7C578, 0x1E69D13A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C580, &qword_1DC523258);
    v26 = sub_1DC51777C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DC2C0FA4();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DC516EFC();

    return 0;
  }

  v21 = v20;
  v42 = v5;
  v43 = v19;
  v44 = v16;
  v22 = sub_1DC510A0C();
  v24 = v23;

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1DC2A6784(v22, v24);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1ECC7C588, MEMORY[0x1E69D0AF8]);
  v45 = v22;
  v46 = v24;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v32 = v43;
  v31 = v44;
  (*(v44 + 32))(v43, v14, v15);
  v33 = v47;
  v34 = v48;
  v35 = v48 == 1852797802 && v47 == 0xE400000000000000;
  if (v35 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v29 = sub_1DC51673C();
    sub_1DC2AD740(v45, v46);
    (*(v42 + 8))(v8, v4);
LABEL_22:
    (*(v31 + 8))(v32, v15);
    return v29;
  }

  v36 = v34 == 0x343665736162 && v33 == 0xE600000000000000;
  if (!v36 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DC522F20;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DC2C0FA4();
    *(v41 + 32) = v48;
    *(v41 + 40) = v33;

    sub_1DC516EFC();

    sub_1DC2AD740(v45, v46);
    (*(v31 + 8))(v32, v15);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v37 = result;
    v38 = sub_1DC510A0C();
    v40 = v39;

    v29 = sub_1DC5109FC();
    sub_1DC2AD740(v38, v40);
    sub_1DC2AD740(v45, v46);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC20serializeSSUResponse8response10formatTypeSSSgSo29SIRINLUINTERNALSSUSSUResponseCSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC51670C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C548, &qword_1DC523238);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1DC5119EC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v20 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DC522F20;
    *&v49 = sub_1DC298C74(0, &qword_1ECC7C550, 0x1E69D13B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C558, &qword_1DC523240);
    v26 = sub_1DC51777C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DC2C0FA4();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DC516EFC();

    return 0;
  }

  v21 = v20;
  v42 = v5;
  v43 = v19;
  v44 = v16;
  v22 = sub_1DC510A0C();
  v24 = v23;

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1DC2A6784(v22, v24);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1ECC7C560, MEMORY[0x1E69D0B60]);
  v45 = v22;
  v46 = v24;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v32 = v43;
  v31 = v44;
  (*(v44 + 32))(v43, v14, v15);
  v33 = v47;
  v34 = v48;
  v35 = v48 == 1852797802 && v47 == 0xE400000000000000;
  if (v35 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v29 = sub_1DC51673C();
    sub_1DC2AD740(v45, v46);
    (*(v42 + 8))(v8, v4);
LABEL_22:
    (*(v31 + 8))(v32, v15);
    return v29;
  }

  v36 = v34 == 0x343665736162 && v33 == 0xE600000000000000;
  if (!v36 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DC522F20;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DC2C0FA4();
    *(v41 + 32) = v48;
    *(v41 + 40) = v33;

    sub_1DC516EFC();

    sub_1DC2AD740(v45, v46);
    (*(v31 + 8))(v32, v15);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v37 = result;
    v38 = sub_1DC510A0C();
    v40 = v39;

    v29 = sub_1DC5109FC();
    sub_1DC2AD740(v38, v40);
    sub_1DC2AD740(v45, v46);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC26serializeUaaPParserRequest7request10formatTypeSSSgSo029SIRINLUINTERNALUAAP_PARSERUaafG0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC51670C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C520, &qword_1DC523220);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1DC51225C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v20 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DC522F20;
    *&v49 = sub_1DC298C74(0, &qword_1ECC7C528, 0x1E69D13E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C530, &qword_1DC523228);
    v26 = sub_1DC51777C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DC2C0FA4();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DC516EFC();

    return 0;
  }

  v21 = v20;
  v42 = v5;
  v43 = v19;
  v44 = v16;
  v22 = sub_1DC510A0C();
  v24 = v23;

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1DC2A6784(v22, v24);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1ECC7C538, MEMORY[0x1E69D0CF8]);
  v45 = v22;
  v46 = v24;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v32 = v43;
  v31 = v44;
  (*(v44 + 32))(v43, v14, v15);
  v33 = v47;
  v34 = v48;
  v35 = v48 == 1852797802 && v47 == 0xE400000000000000;
  if (v35 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v29 = sub_1DC51673C();
    sub_1DC2AD740(v45, v46);
    (*(v42 + 8))(v8, v4);
LABEL_22:
    (*(v31 + 8))(v32, v15);
    return v29;
  }

  v36 = v34 == 0x343665736162 && v33 == 0xE600000000000000;
  if (!v36 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DC522F20;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DC2C0FA4();
    *(v41 + 32) = v48;
    *(v41 + 40) = v33;

    sub_1DC516EFC();

    sub_1DC2AD740(v45, v46);
    (*(v31 + 8))(v32, v15);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v37 = result;
    v38 = sub_1DC510A0C();
    v40 = v39;

    v29 = sub_1DC5109FC();
    sub_1DC2AD740(v38, v40);
    sub_1DC2AD740(v45, v46);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC27serializeUaaPParserResponse8response10formatTypeSSSgSo029SIRINLUINTERNALUAAP_PARSERUaafG0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC51670C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C4F8, &qword_1DC523208);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1DC51226C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v20 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DC522F20;
    *&v49 = sub_1DC298C74(0, &qword_1ECC7C500, 0x1E69D13E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C508, &qword_1DC523210);
    v26 = sub_1DC51777C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DC2C0FA4();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DC516EFC();

    return 0;
  }

  v21 = v20;
  v42 = v5;
  v43 = v19;
  v44 = v16;
  v22 = sub_1DC510A0C();
  v24 = v23;

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1DC2A6784(v22, v24);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1ECC7C510, MEMORY[0x1E69D0D08]);
  v45 = v22;
  v46 = v24;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v32 = v43;
  v31 = v44;
  (*(v44 + 32))(v43, v14, v15);
  v33 = v47;
  v34 = v48;
  v35 = v48 == 1852797802 && v47 == 0xE400000000000000;
  if (v35 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v29 = sub_1DC51673C();
    sub_1DC2AD740(v45, v46);
    (*(v42 + 8))(v8, v4);
LABEL_22:
    (*(v31 + 8))(v32, v15);
    return v29;
  }

  v36 = v34 == 0x343665736162 && v33 == 0xE600000000000000;
  if (!v36 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DC522F20;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DC2C0FA4();
    *(v41 + 32) = v48;
    *(v41 + 40) = v33;

    sub_1DC516EFC();

    sub_1DC2AD740(v45, v46);
    (*(v31 + 8))(v32, v15);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v37 = result;
    v38 = sub_1DC510A0C();
    v40 = v39;

    v29 = sub_1DC5109FC();
    sub_1DC2AD740(v38, v40);
    sub_1DC2AD740(v45, v46);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC27serializeExternalNluRequest7request10formatTypeSSSgSo021SIRINLUEXTERNALCDMNluG0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC51670C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C340, &qword_1DC5230C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1DC51373C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v20 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DC522F20;
    *&v49 = sub_1DC298C74(0, &qword_1ECC7C4E0, 0x1E69D1150);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C4E8, &qword_1DC5231F8);
    v26 = sub_1DC51777C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DC2C0FA4();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DC516EFC();

    return 0;
  }

  v21 = v20;
  v42 = v5;
  v43 = v19;
  v44 = v16;
  v22 = sub_1DC510A0C();
  v24 = v23;

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1DC2A6784(v22, v24);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1EDAC8030, MEMORY[0x1E69D1020]);
  v45 = v22;
  v46 = v24;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v32 = v43;
  v31 = v44;
  (*(v44 + 32))(v43, v14, v15);
  v33 = v47;
  v34 = v48;
  v35 = v48 == 1852797802 && v47 == 0xE400000000000000;
  if (v35 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v29 = sub_1DC51673C();
    sub_1DC2AD740(v45, v46);
    (*(v42 + 8))(v8, v4);
LABEL_22:
    (*(v31 + 8))(v32, v15);
    return v29;
  }

  v36 = v34 == 0x343665736162 && v33 == 0xE600000000000000;
  if (!v36 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DC522F20;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DC2C0FA4();
    *(v41 + 32) = v48;
    *(v41 + 40) = v33;

    sub_1DC516EFC();

    sub_1DC2AD740(v45, v46);
    (*(v31 + 8))(v32, v15);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v37 = result;
    v38 = sub_1DC510A0C();
    v40 = v39;

    v29 = sub_1DC5109FC();
    sub_1DC2AD740(v38, v40);
    sub_1DC2AD740(v45, v46);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC28serializeExternalNluResponse8response10formatTypeSSSgSo021SIRINLUEXTERNALCDMNluG0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC51670C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C370, &qword_1DC5230E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1DC5137CC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v20 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DC522F20;
    *&v49 = sub_1DC298C74(0, &qword_1ECC7CFE0, 0x1E69D1158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C4D0, &qword_1DC5231E8);
    v26 = sub_1DC51777C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DC2C0FA4();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DC516EFC();

    return 0;
  }

  v21 = v20;
  v42 = v5;
  v43 = v19;
  v44 = v16;
  v22 = sub_1DC510A0C();
  v24 = v23;

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1DC2A6784(v22, v24);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1EDAC8020, MEMORY[0x1E69D1030]);
  v45 = v22;
  v46 = v24;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v32 = v43;
  v31 = v44;
  (*(v44 + 32))(v43, v14, v15);
  v33 = v47;
  v34 = v48;
  v35 = v48 == 1852797802 && v47 == 0xE400000000000000;
  if (v35 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v29 = sub_1DC51673C();
    sub_1DC2AD740(v45, v46);
    (*(v42 + 8))(v8, v4);
LABEL_22:
    (*(v31 + 8))(v32, v15);
    return v29;
  }

  v36 = v34 == 0x343665736162 && v33 == 0xE600000000000000;
  if (!v36 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DC522F20;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DC2C0FA4();
    *(v41 + 32) = v48;
    *(v41 + 40) = v33;

    sub_1DC516EFC();

    sub_1DC2AD740(v45, v46);
    (*(v31 + 8))(v32, v15);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v37 = result;
    v38 = sub_1DC510A0C();
    v40 = v39;

    v29 = sub_1DC5109FC();
    sub_1DC2AD740(v38, v40);
    sub_1DC2AD740(v45, v46);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC41serializeExternalSubwordEmbeddingResponse8response10formatTypeSSSgSo039SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordgH0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC51670C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C4A0, &qword_1DC5231D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1DC5138BC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v20 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DC522F20;
    *&v49 = sub_1DC298C74(0, &qword_1ECC7C4A8, 0x1E69D11F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C4B0, &qword_1DC5231D8);
    v26 = sub_1DC51777C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DC2C0FA4();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DC516EFC();

    return 0;
  }

  v21 = v20;
  v42 = v5;
  v43 = v19;
  v44 = v16;
  v22 = sub_1DC510A0C();
  v24 = v23;

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1DC2A6784(v22, v24);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1ECC7C4B8, MEMORY[0x1E69D1100]);
  v45 = v22;
  v46 = v24;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v32 = v43;
  v31 = v44;
  (*(v44 + 32))(v43, v14, v15);
  v33 = v47;
  v34 = v48;
  v35 = v48 == 1852797802 && v47 == 0xE400000000000000;
  if (v35 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v29 = sub_1DC51673C();
    sub_1DC2AD740(v45, v46);
    (*(v42 + 8))(v8, v4);
LABEL_22:
    (*(v31 + 8))(v32, v15);
    return v29;
  }

  v36 = v34 == 0x343665736162 && v33 == 0xE600000000000000;
  if (!v36 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DC522F20;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DC2C0FA4();
    *(v41 + 32) = v48;
    *(v41 + 40) = v33;

    sub_1DC516EFC();

    sub_1DC2AD740(v45, v46);
    (*(v31 + 8))(v32, v15);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v37 = result;
    v38 = sub_1DC510A0C();
    v40 = v39;

    v29 = sub_1DC5109FC();
    sub_1DC2AD740(v38, v40);
    sub_1DC2AD740(v45, v46);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id _s13CDMFoundation20CDMProtobufConverterC35serializeExternalCdmPlannerResponse8response10formatTypeSSSgSo029SIRINLUEXTERNALCDM_PLANNERCdmgH0CSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_1DC5166EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DC51670C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C478, &qword_1DC5231B8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_1DC5137FC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v20 = [a1 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DC522F20;
    *&v49 = sub_1DC298C74(0, &qword_1ECC7C480, 0x1E69D1168);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C488, &qword_1DC5231C0);
    v26 = sub_1DC51777C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DC2C0FA4();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DC516EFC();

    return 0;
  }

  v21 = v20;
  v42 = v5;
  v43 = v19;
  v44 = v16;
  v22 = sub_1DC510A0C();
  v24 = v23;

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1DC2A6784(v22, v24);
  sub_1DC5166FC();
  sub_1DC302048(&qword_1ECC7C490, MEMORY[0x1E69D1060]);
  v45 = v22;
  v46 = v24;
  sub_1DC51677C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v32 = v43;
  v31 = v44;
  (*(v44 + 32))(v43, v14, v15);
  v33 = v47;
  v34 = v48;
  v35 = v48 == 1852797802 && v47 == 0xE400000000000000;
  if (v35 || (sub_1DC51825C() & 1) != 0)
  {
    sub_1DC5166DC();
    sub_1DC5166CC();
    v29 = sub_1DC51673C();
    sub_1DC2AD740(v45, v46);
    (*(v42 + 8))(v8, v4);
LABEL_22:
    (*(v31 + 8))(v32, v15);
    return v29;
  }

  v36 = v34 == 0x343665736162 && v33 == 0xE600000000000000;
  if (!v36 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DC522F20;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DC2C0FA4();
    *(v41 + 32) = v48;
    *(v41 + 40) = v33;

    sub_1DC516EFC();

    sub_1DC2AD740(v45, v46);
    (*(v31 + 8))(v32, v15);
    return 0;
  }

  result = [a1 data];
  if (result)
  {
    v37 = result;
    v38 = sub_1DC510A0C();
    v40 = v39;

    v29 = sub_1DC5109FC();
    sub_1DC2AD740(v38, v40);
    sub_1DC2AD740(v45, v46);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void static CDMProtobufConverter.serializeObjCProto<A, B>(objcProto:formatType:swiftType:)()
{
  OUTLINED_FUNCTION_33();
  v72 = v0;
  v73 = v1;
  v3 = v2;
  v5 = v4;
  v71 = v6;
  v8 = v7;
  v9 = sub_1DC5166EC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v69 = v11;
  v70 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_1();
  v68 = v14;
  OUTLINED_FUNCTION_12();
  v15 = sub_1DC51670C();
  v16 = OUTLINED_FUNCTION_10(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_8();
  v19 = sub_1DC517D8C();
  OUTLINED_FUNCTION_0(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_14_0();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v63 - v24;
  v26 = *(v3 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  if (!v8 || (v31 = [v8 data]) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v36 = OUTLINED_FUNCTION_124_0();
    *(v36 + 16) = xmmword_1DC522F20;
    v74 = v5;
    swift_getMetatypeMetadata();
    v37 = OUTLINED_FUNCTION_168_0();
    v39 = v38;
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = sub_1DC2C0FA4();
    *(v36 + 32) = v37;
    *(v36 + 40) = v39;
    OUTLINED_FUNCTION_61_2();
    sub_1DC516EFC();

    goto LABEL_7;
  }

  v32 = v31;
  v64 = v30;
  v65 = v26;
  v33 = sub_1DC510A0C();
  v35 = v34;

  OUTLINED_FUNCTION_120();
  sub_1DC2A6784(v33, v35);
  sub_1DC5166FC();
  v66 = v33;
  v67 = v35;
  OUTLINED_FUNCTION_118_0();
  sub_1DC51677C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v3);
  v44 = v64;
  v43 = v65;
  OUTLINED_FUNCTION_97_0();
  v45(v44, v25, v3);
  v47 = v71;
  v46 = v72;
  v48 = v71 == 1852797802 && v72 == 0xE400000000000000;
  if (v48 || (OUTLINED_FUNCTION_87(), (sub_1DC51825C() & 1) != 0))
  {
    v49 = v68;
    sub_1DC5166DC();
    sub_1DC5166CC();
    sub_1DC51673C();
    sub_1DC2AD740(v66, v67);
    (*(v69 + 8))(v49, v70);
LABEL_21:
    v59 = *(v43 + 8);
    v60 = OUTLINED_FUNCTION_147_0();
    v61(v60);
LABEL_7:
    OUTLINED_FUNCTION_34();
    return;
  }

  v53 = v47 == 0x343665736162 && v46 == 0xE600000000000000;
  if (!v53 && (sub_1DC51825C() & 1) == 0)
  {
    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v62 = OUTLINED_FUNCTION_124_0();
    *(v62 + 16) = xmmword_1DC522F20;
    *(v62 + 56) = MEMORY[0x1E69E6158];
    *(v62 + 64) = sub_1DC2C0FA4();
    *(v62 + 32) = v47;
    *(v62 + 40) = v46;

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_169_0();

    sub_1DC2AD740(v66, v67);
    v50 = *(v43 + 8);
    v51 = OUTLINED_FUNCTION_147_0();
    v52(v51);
    goto LABEL_7;
  }

  v54 = [v8 data];
  if (v54)
  {
    v55 = v54;
    v56 = sub_1DC510A0C();
    v58 = v57;

    sub_1DC5109FC();
    sub_1DC2AD740(v56, v58);
    sub_1DC2AD740(v66, v67);
    goto LABEL_21;
  }

  __break(1u);
}

void static CDMProtobufConverter.serializePreprocessingWrapper(wrapper:formatType:)()
{
  OUTLINED_FUNCTION_33();
  v43 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_98();
  v6 = sub_1DC5166EC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v42 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v11 = sub_1DC51670C();
  v12 = OUTLINED_FUNCTION_10(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_6();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C330, &qword_1DC5230C0);
  OUTLINED_FUNCTION_10(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_122_0();
  v19 = sub_1DC511E2C();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  if (!v0 || (sub_1DC2C22C4(v0), OUTLINED_FUNCTION_146(), !v31 & v25))
  {
    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    OUTLINED_FUNCTION_61_2();
    sub_1DC516EFC();
  }

  else
  {
    OUTLINED_FUNCTION_120();
    sub_1DC2A6784(v26, v27);
    sub_1DC5166FC();
    sub_1DC302048(&qword_1ECC7C338, MEMORY[0x1E69D0BC8]);
    OUTLINED_FUNCTION_118_0();
    sub_1DC51677C();
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v19);
    (*(v22 + 32))(v1, v2, v19);
    v31 = v5 == 1852797802 && v43 == 0xE400000000000000;
    if (v31 || (OUTLINED_FUNCTION_87(), (sub_1DC51825C() & 1) != 0))
    {
      sub_1DC5166DC();
      sub_1DC5166CC();
      OUTLINED_FUNCTION_147_0();
      sub_1DC51673C();
      OUTLINED_FUNCTION_166_0();
      v32 = *(v42 + 8);
      v33 = OUTLINED_FUNCTION_89();
      v34(v33);
      v35 = *(v22 + 8);
      v36 = OUTLINED_FUNCTION_107();
      v37(v36);
    }

    else
    {
      if (qword_1ECC81EE0 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      sub_1DC517BAC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
      v38 = OUTLINED_FUNCTION_124_0();
      *(v38 + 16) = xmmword_1DC522F20;
      *(v38 + 56) = MEMORY[0x1E69E6158];
      *(v38 + 64) = sub_1DC2C0FA4();
      *(v38 + 32) = v5;
      *(v38 + 40) = v43;

      OUTLINED_FUNCTION_71_0();
      sub_1DC516EFC();

      OUTLINED_FUNCTION_166_0();
      v39 = *(v22 + 8);
      v40 = OUTLINED_FUNCTION_107();
      v41(v40);
    }
  }

  OUTLINED_FUNCTION_34();
}

id sub_1DC2FB340(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t))
{
  v7 = sub_1DC51772C();
  v9 = v8;
  v10 = a3;
  a5(a3, v7, v9);
  v12 = v11;

  if (v12)
  {
    v13 = sub_1DC5176FC();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void static CDMProtobufConverter.siriExternalNluRequestJsonToObj(proto2Json:)()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_98();
  v2 = sub_1DC5166BC();
  v3 = OUTLINED_FUNCTION_10(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C340, &qword_1DC5230C8);
  OUTLINED_FUNCTION_10(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_55_5();
  v10 = sub_1DC51373C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3();

  sub_1DC5166AC();
  sub_1DC302048(&qword_1EDAC8030, MEMORY[0x1E69D1020]);
  OUTLINED_FUNCTION_26_2();
  if (v0)
  {

    OUTLINED_FUNCTION_36_5();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    sub_1DC28EB30(v1, &unk_1ECC7C340, &qword_1DC5230C8);
    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    OUTLINED_FUNCTION_61_2();
    sub_1DC516EFC();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_27_6();
    v19(v18);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_137();
    v20 = objc_allocWithZone(MEMORY[0x1E69D1150]);
    OUTLINED_FUNCTION_86_0();
    v21 = OUTLINED_FUNCTION_28_5();
    v22(v21);
  }

  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_154();
}

id sub_1DC2FB68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_1DC51772C();
  v6 = a4(v5);

  return v6;
}

void static CDMProtobufConverter.siriExternalSubwordEmbeddingRequestJsonToObj(proto2Json:)()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_98();
  v2 = sub_1DC5166BC();
  v3 = OUTLINED_FUNCTION_10(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C350, &qword_1DC5230D0);
  OUTLINED_FUNCTION_10(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_55_5();
  v10 = sub_1DC51389C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3();

  sub_1DC5166AC();
  sub_1DC302048(&qword_1ECC7C358, MEMORY[0x1E69D10F0]);
  OUTLINED_FUNCTION_26_2();
  if (v0)
  {

    OUTLINED_FUNCTION_36_5();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    sub_1DC28EB30(v1, &qword_1ECC7C350, &qword_1DC5230D0);
    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    OUTLINED_FUNCTION_61_2();
    sub_1DC516EFC();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_27_6();
    v19(v18);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_137();
    v20 = objc_allocWithZone(MEMORY[0x1E69D11E8]);
    OUTLINED_FUNCTION_86_0();
    v21 = OUTLINED_FUNCTION_28_5();
    v22(v21);
  }

  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_154();
}

void static CDMProtobufConverter.siriExternalCdmPlannerRequestJsonToObj(proto2Json:)()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_98();
  v2 = sub_1DC5166BC();
  v3 = OUTLINED_FUNCTION_10(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C360, &qword_1DC5230D8);
  OUTLINED_FUNCTION_10(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_55_5();
  v10 = sub_1DC5137EC();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3();

  sub_1DC5166AC();
  sub_1DC302048(&qword_1ECC7C368, MEMORY[0x1E69D1050]);
  OUTLINED_FUNCTION_26_2();
  if (v0)
  {

    OUTLINED_FUNCTION_36_5();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    sub_1DC28EB30(v1, &qword_1ECC7C360, &qword_1DC5230D8);
    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    OUTLINED_FUNCTION_61_2();
    sub_1DC516EFC();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_27_6();
    v19(v18);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_137();
    v20 = objc_allocWithZone(MEMORY[0x1E69D1160]);
    OUTLINED_FUNCTION_86_0();
    v21 = OUTLINED_FUNCTION_28_5();
    v22(v21);
  }

  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_154();
}

void static CDMProtobufConverter.nluResponseFromSIRINLUEXTERNALCDMNluResponse(response:formatType:)()
{
  OUTLINED_FUNCTION_33();
  v40 = v4;
  v41 = v3;
  v6 = v5;
  v7 = sub_1DC5166EC();
  v8 = OUTLINED_FUNCTION_0(v7);
  v38 = v9;
  v39 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v12 = sub_1DC51670C();
  v13 = OUTLINED_FUNCTION_10(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_6();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C370, &qword_1DC5230E0);
  OUTLINED_FUNCTION_10(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_122_0();
  v20 = sub_1DC5137CC();
  v21 = OUTLINED_FUNCTION_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_3();
  sub_1DC2C22C4(v6);
  OUTLINED_FUNCTION_146();
  if (!v31 & v26)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_120();
    sub_1DC5166FC();
    sub_1DC302048(&qword_1EDAC8020, MEMORY[0x1E69D1030]);
    OUTLINED_FUNCTION_118_0();
    sub_1DC51677C();
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v20);
    v30 = v23;
    (*(v23 + 32))(v0, v2, v20);
    v31 = v41 == 1852797802 && v40 == 0xE400000000000000;
    if (v31 || (OUTLINED_FUNCTION_87(), (sub_1DC51825C() & 1) != 0))
    {
      sub_1DC5166DC();
      sub_1DC5166CC();
      OUTLINED_FUNCTION_147_0();
      sub_1DC51673C();
      OUTLINED_FUNCTION_163();
      (*(v38 + 8))(v1, v39);
LABEL_16:
      (*(v30 + 8))(v0, v20);
LABEL_8:
      OUTLINED_FUNCTION_34();
      return;
    }

    v32 = v41 == 0x343665736162 && v40 == 0xE600000000000000;
    if (!v32 && (sub_1DC51825C() & 1) == 0)
    {
      if (qword_1ECC81EE0 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      sub_1DC517BAC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
      v37 = OUTLINED_FUNCTION_124_0();
      *(v37 + 16) = xmmword_1DC522F20;
      *(v37 + 56) = MEMORY[0x1E69E6158];
      *(v37 + 64) = sub_1DC2C0FA4();
      *(v37 + 32) = v41;
      *(v37 + 40) = v40;

      OUTLINED_FUNCTION_71_0();
      sub_1DC516EFC();

      (*(v30 + 8))(v0, v20);
      goto LABEL_8;
    }

    sub_1DC2C22C4(v6);
    OUTLINED_FUNCTION_146();
    if (!(!v31 & v26))
    {
      v35 = v33;
      v36 = v34;
      sub_1DC5109FC();
      OUTLINED_FUNCTION_163();
      sub_1DC301FE0(v35, v36);
      goto LABEL_16;
    }
  }

  __break(1u);
}

id sub_1DC2FC130(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  sub_1DC51772C();
  v7 = a3;
  a5();
  v9 = v8;

  if (v9)
  {
    v10 = sub_1DC5176FC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void static CDMProtobufConverter.siriInternalMatchingSpanJsonToObj(proto2Json:)()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_98();
  v2 = sub_1DC5166BC();
  v3 = OUTLINED_FUNCTION_10(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C378, &unk_1DC5230E8);
  OUTLINED_FUNCTION_10(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_55_5();
  v10 = sub_1DC5113AC();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3();

  sub_1DC5166AC();
  sub_1DC302048(&qword_1ECC7C380, MEMORY[0x1E69D0A20]);
  OUTLINED_FUNCTION_26_2();
  if (v0)
  {

    OUTLINED_FUNCTION_36_5();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    sub_1DC28EB30(v1, &qword_1ECC7C378, &unk_1DC5230E8);
    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    OUTLINED_FUNCTION_61_2();
    sub_1DC516EFC();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_27_6();
    v19(v18);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_137();
    v20 = objc_allocWithZone(MEMORY[0x1E69D1308]);
    OUTLINED_FUNCTION_86_0();
    v21 = OUTLINED_FUNCTION_28_5();
    v22(v21);
  }

  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_154();
}

id CDMProtobufConverter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CDMProtobufConverter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMProtobufConverter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CDMProtobufConverter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMProtobufConverter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1DC2FC53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_102_0();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_38_2();
  v199 = sub_1DC513D3C();
  v26 = OUTLINED_FUNCTION_0(v199);
  v198 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v30);
  v224 = sub_1DC51652C();
  v31 = OUTLINED_FUNCTION_0(v224);
  v201 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_1();
  v223 = v35;
  OUTLINED_FUNCTION_12();
  v222 = sub_1DC513A8C();
  v36 = OUTLINED_FUNCTION_0(v222);
  v200 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v40);
  v202 = sub_1DC513A0C();
  v41 = OUTLINED_FUNCTION_0(v202);
  v219 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v46);
  v218 = sub_1DC51413C();
  v47 = OUTLINED_FUNCTION_0(v218);
  v193 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v51);
  v206 = sub_1DC5141FC();
  v52 = OUTLINED_FUNCTION_0(v206);
  v207 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v56);
  v204 = sub_1DC5144EC();
  v57 = OUTLINED_FUNCTION_0(v204);
  v196 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v61);
  v62 = sub_1DC510B6C();
  v63 = OUTLINED_FUNCTION_10(v62);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v66);
  v215 = sub_1DC513A3C();
  v67 = OUTLINED_FUNCTION_0(v215);
  v69 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v72);
  v226 = sub_1DC51446C();
  v73 = OUTLINED_FUNCTION_0(v226);
  v75 = v74;
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_9_1();
  v78 = sub_1DC513E8C();
  v79 = OUTLINED_FUNCTION_0(v78);
  v81 = v80;
  v83 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_1();
  v86 = v85 - v84;
  v87 = MEMORY[0x1E69E7CC0];
  v240 = MEMORY[0x1E69E7CC0];
  v214 = *(sub_1DC513B3C() + 16);
  if (v214)
  {
    v88 = 0;
    v89 = *(v81 + 80);
    OUTLINED_FUNCTION_24();
    v209 = v90 + v91;
    v225 = (v75 + 8);
    v213 = v75;
    v208 = v78;
    v212 = v81;
    v211 = v86;
    v210 = v90;
    while (v88 < *(v90 + 16))
    {
      v220 = v88;
      (*(v81 + 16))(v86, v209 + *(v81 + 72) * v88, v78);
      v239 = v87;
      v92 = *(sub_1DC513ACC() + 16);
      if (v92)
      {
        v93 = *(v75 + 80);
        OUTLINED_FUNCTION_24();
        v96 = v94 + v95;
        v227 = *(v75 + 16);
        v228 = *(v75 + 72);
        do
        {
          v227(v22, v96, v226);
          v97 = sub_1DC5139AC();
          v234 = v98;
          v235 = v97;
          v99 = sub_1DC51399C();
          v232 = v100;
          v233 = v99;
          v101 = sub_1DC51441C();
          v230 = v102;
          v231 = v101;
          LODWORD(v229) = sub_1DC5143DC();
          v103 = sub_1DC51442C();
          v104 = sub_1DC51443C();
          sub_1DC5143FC();
          v106 = v105;
          v107 = sub_1DC5143BC();
          v108 = sub_1DC51445C();
          v23 = sub_1DC51444C();
          v109 = sub_1DC51440C();
          v110 = *v225;
          v111 = OUTLINED_FUNCTION_85_0();
          v112(v111);
          v113 = objc_allocWithZone(MEMORY[0x1E69D24B8]);
          HIDWORD(v192) = v107;
          LOBYTE(v192) = v104 & 1;
          sub_1DC301570(v106, v235, v234, v233, v232, v231, v230, v229 & 1, v103 & 1, v192, __SPAIR64__(v23, v108), v109);
          MEMORY[0x1E12962A0]();
          v114 = *((v239 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v114 >> 1)
          {
            OUTLINED_FUNCTION_26(v114);
            sub_1DC517A3C();
          }

          OUTLINED_FUNCTION_73();
          sub_1DC517A5C();
          v96 += v228;
          --v92;
        }

        while (v92);
        v115 = v239;

        v87 = MEMORY[0x1E69E7CC0];
        v78 = v208;
      }

      else
      {

        v115 = v87;
      }

      v86 = v211;
      v116 = sub_1DC5139AC();
      v118 = v117;
      sub_1DC513E4C();
      v120 = v119;
      OUTLINED_FUNCTION_76_1(&a11);
      sub_1DC513E5C();
      v69 = v216;
      OUTLINED_FUNCTION_128_1();
      sub_1DC513A1C();
      OUTLINED_FUNCTION_37(&v236);
      v121(v23, v215);
      v122 = objc_allocWithZone(MEMORY[0x1E69D24B0]);
      sub_1DC301670(v120, v116, v118, v115, v216);
      MEMORY[0x1E12962A0]();
      v123 = *((v240 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v240 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v123 >> 1)
      {
        OUTLINED_FUNCTION_26(v123);
        sub_1DC517A3C();
      }

      v88 = v220 + 1;
      OUTLINED_FUNCTION_73();
      sub_1DC517A5C();
      v124 = v240;
      OUTLINED_FUNCTION_37(&v235);
      v125(v211, v78);
      v75 = v213;
      v81 = v212;
      v90 = v210;
      if (v220 + 1 == v214)
      {
        v231 = v124;

        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v231 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v239 = v87;
  OUTLINED_FUNCTION_20_3(&v228);
  sub_1DC513B9C();
  OUTLINED_FUNCTION_144();
  sub_1DC5144DC();
  v126 = (v196 + 8);
  v69 = *(v196 + 8);
  v69(v22, v204);
  sub_1DC2FEE38(v205, &v239, v127, v128, v129, v130, v131, v132, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204);
  v134 = v133;
  v23 = *(v207 + 8);
  (v23)(v205, v206);
  if ((v134 & 1) == 0)
  {
    if (qword_1ECC81EE0 == -1)
    {
LABEL_18:
      sub_1DC517BAC();
      OUTLINED_FUNCTION_61_2();
      sub_1DC516EFC();
      LODWORD(v235) = sub_1DC517B9C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
      v135 = OUTLINED_FUNCTION_124_0();
      *(v135 + 16) = xmmword_1DC522F20;
      sub_1DC513B9C();
      sub_1DC5144DC();
      v69(v203, v204);
      OUTLINED_FUNCTION_81_0();
      sub_1DC302048(v136, v137);
      v126 = v206;
      sub_1DC5165DC();
      OUTLINED_FUNCTION_163();
      (v23)(v205, v206);
      *(v135 + 56) = MEMORY[0x1E69E6158];
      *(v135 + 64) = sub_1DC2C0FA4();
      *(v135 + 32) = v205;
      *(v135 + 40) = v69;
      sub_1DC516EFC();

      goto LABEL_19;
    }

LABEL_40:
    OUTLINED_FUNCTION_0_6();
    swift_once();
    goto LABEL_18;
  }

LABEL_19:
  v238 = v87;
  v138 = sub_1DC513B8C();
  v139 = *(v138 + 16);
  if (v139)
  {
    v23 = *(v193 + 16);
    OUTLINED_FUNCTION_50_5();
    v141 = v138 + v140;
    v143 = *(v142 + 56);
    v126 = v142;
    do
    {
      (v23)(v217, v141, v218);
      sub_1DC2FE82C();
      v144 = OUTLINED_FUNCTION_160();
      v146 = v145(v144);
      MEMORY[0x1E12962A0](v146);
      OUTLINED_FUNCTION_145();
      if (v148)
      {
        OUTLINED_FUNCTION_26(v147);
        sub_1DC517A3C();
      }

      OUTLINED_FUNCTION_30();
      sub_1DC517A5C();
      v141 += v143;
      --v139;
    }

    while (v139);
    v230 = v238;

    v87 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v230 = MEMORY[0x1E69E7CC0];
  }

  v237 = v87;
  v149 = sub_1DC513B4C();
  v150 = *(v149 + 16);
  if (v150)
  {
    v235 = sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    v151 = *(v219 + 16);
    OUTLINED_FUNCTION_50_5();
    v229 = v149;
    v153 = v149 + v152;
    v232 = *(v154 + 56);
    v233 = v155;
    OUTLINED_FUNCTION_130_0();
    v157 = (v156 + 8);
    v234 = v158;
    v159 = v158 - 8;
    do
    {
      (v233)(v194, v153, v202);
      sub_1DC5139EC();
      v160 = MEMORY[0x1E1296570]();
      (*v126)(v221, v222);
      sub_1DC5139FC();
      sub_1DC51651C();
      v162 = v161;
      (*v157)(v223, v224);
      v139 = [objc_allocWithZone(MEMORY[0x1E69D2568]) initWithTask:v160 score:v162];

      MEMORY[0x1E12962A0]();
      v23 = *((v237 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v163 = *((v237 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (v23 >= v163 >> 1)
      {
        OUTLINED_FUNCTION_26(v163);
        sub_1DC517A3C();
      }

      OUTLINED_FUNCTION_41();
      sub_1DC517A5C();
      v164 = *v159;
      v165 = OUTLINED_FUNCTION_85_0();
      v166(v165);
      v153 += v232;
      --v150;
    }

    while (v150);
    v167 = v237;

    v87 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v167 = MEMORY[0x1E69E7CC0];
  }

  v236 = v87;
  v168 = sub_1DC513B6C();
  v169 = *(v168 + 16);
  if (v169)
  {
    v232 = v167;
    v235 = sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    v170 = *(v219 + 16);
    OUTLINED_FUNCTION_50_5();
    v229 = v168;
    v139 = v168 + v171;
    v233 = *(v172 + 56);
    v234 = v173;
    OUTLINED_FUNCTION_130_0();
    v175 = (v174 + 8);
    v177 = (v176 - 8);
    do
    {
      v234(v195, v139, v202);
      OUTLINED_FUNCTION_43_4();
      sub_1DC5139EC();
      v178 = MEMORY[0x1E1296570](v23);
      (*v167)(v23, v222);
      sub_1DC5139FC();
      sub_1DC51651C();
      v180 = v179;
      (*v175)(v223, v224);
      v23 = [objc_allocWithZone(MEMORY[0x1E69D2568]) initWithTask:v178 score:v180];

      MEMORY[0x1E12962A0]();
      v181 = *((v236 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v236 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v181 >> 1)
      {
        OUTLINED_FUNCTION_26(v181);
        sub_1DC517A3C();
      }

      OUTLINED_FUNCTION_89();
      sub_1DC517A5C();
      (*v177)(v195, v202);
      v139 += v233;
      --v169;
    }

    while (v169);
  }

  sub_1DC513B5C();
  sub_1DC300A30();
  v183 = v182;
  (*(v198 + 8))(v197, v199);
  v184 = v183;
  sub_1DC513BAC();
  OUTLINED_FUNCTION_151_0();
  v185 = sub_1DC513BBC();
  v186 = sub_1DC513B7C();
  v187 = objc_allocWithZone(MEMORY[0x1E69D2578]);
  v188 = sub_1DC30176C(v231, v230, v184, v139, v23, v185 & 1, v186);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C3F8, &qword_1DC5230F8);
  OUTLINED_FUNCTION_56_7();
  v189 = sub_1DC517A0C();

  [v188 setSystemDialogActs_];

  sub_1DC298C74(0, &qword_1ECC7C400, 0x1E69D2568);
  v190 = sub_1DC517A0C();

  [v188 setActiveTasks_];

  v191 = sub_1DC517A0C();

  [v188 setExecutedTasks_];

  OUTLINED_FUNCTION_101();
}

void sub_1DC2FD51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_102_0();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_38_2();
  v269 = sub_1DC5140BC();
  v25 = OUTLINED_FUNCTION_0(v269);
  v268 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v29);
  v30 = sub_1DC51395C();
  v287 = OUTLINED_FUNCTION_0(v30);
  v288 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v287);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v34);
  v290 = sub_1DC5139DC();
  v35 = OUTLINED_FUNCTION_0(v290);
  v294 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_1();
  v289 = v39;
  OUTLINED_FUNCTION_12();
  v272 = sub_1DC51655C();
  v40 = OUTLINED_FUNCTION_0(v272);
  v271 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v44);
  v275 = sub_1DC5145CC();
  v45 = OUTLINED_FUNCTION_0(v275);
  v274 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v49);
  v278 = sub_1DC51435C();
  v50 = OUTLINED_FUNCTION_0(v278);
  v277 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v54);
  v281 = sub_1DC5144CC();
  v55 = OUTLINED_FUNCTION_0(v281);
  v280 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v59);
  v284 = sub_1DC5142AC();
  v60 = OUTLINED_FUNCTION_0(v284);
  v283 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v64);
  v65 = sub_1DC5143AC();
  v66 = OUTLINED_FUNCTION_0(v65);
  v292 = v67;
  v293 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_2_1();
  v291 = v70;
  OUTLINED_FUNCTION_12();
  v71 = sub_1DC513F0C();
  v72 = OUTLINED_FUNCTION_0(v71);
  v295 = v73;
  v296 = v72;
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v76 = sub_1DC513E2C();
  v77 = OUTLINED_FUNCTION_0(v76);
  v297 = v78;
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_1();
  v83 = (v82 - v81);
  v303 = sub_1DC513A8C();
  v84 = OUTLINED_FUNCTION_0(v303);
  v301 = v85;
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_2_1();
  v302 = v88;
  OUTLINED_FUNCTION_12();
  v89 = sub_1DC510B6C();
  v90 = OUTLINED_FUNCTION_10(v89);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_2_1();
  v300 = v93;
  OUTLINED_FUNCTION_12();
  v94 = sub_1DC513A3C();
  v298 = OUTLINED_FUNCTION_0(v94);
  v299 = v95;
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v298);
  OUTLINED_FUNCTION_1();
  v98 = sub_1DC513DCC();
  v99 = OUTLINED_FUNCTION_0(v98);
  v101 = v100;
  v103 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_1();
  v106 = (v105 - v104);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C408, &qword_1DC523100);
  v108 = OUTLINED_FUNCTION_10(v107);
  v110 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v267 - v112;
  sub_1DC513F1C();
  v114 = sub_1DC513F2C();
  OUTLINED_FUNCTION_39(v113, 1, v114);
  if (v115)
  {
    goto LABEL_3;
  }

  v285 = v113;
  v116 = OUTLINED_FUNCTION_159();
  sub_1DC28F358(v116, v117, v118, v119);
  v113 = *(v114 - 8);
  v120 = *(v113 + 11);
  v121 = OUTLINED_FUNCTION_58_3();
  v123 = v122(v121);
  if (v123 == *MEMORY[0x1E69D15E0])
  {
    v124 = OUTLINED_FUNCTION_33_5();
    v125(v124);
    (*(v101 + 32))(v106, v22, v98);
    sub_1DC513D7C();
    sub_1DC513A1C();
    v126 = OUTLINED_FUNCTION_42_6();
    v127(v126);
    sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    v113 = v302;
    OUTLINED_FUNCTION_144();
    sub_1DC513D9C();
    MEMORY[0x1E1296570](v113);
    v128 = OUTLINED_FUNCTION_158();
    v129(v128);
    v130 = objc_allocWithZone(MEMORY[0x1E69D2580]);
    v131 = OUTLINED_FUNCTION_58_3();
    sub_1DC301238(v131, v132, v133);
    v134 = *(v101 + 8);
    v135 = OUTLINED_FUNCTION_85_0();
    v136(v135);
LABEL_19:
    OUTLINED_FUNCTION_109_0();
LABEL_20:
    sub_1DC28EB30(v113, &qword_1ECC7C408, &qword_1DC523100);
    OUTLINED_FUNCTION_101();
    return;
  }

  if (v123 == *MEMORY[0x1E69D15E8])
  {
    v137 = OUTLINED_FUNCTION_33_5();
    v138(v137);
    v139 = v297;
    v140 = *(v297 + 32);
    v141 = OUTLINED_FUNCTION_41();
    v142(v141);
    sub_1DC513DDC();
    sub_1DC513A1C();
    v143 = OUTLINED_FUNCTION_42_6();
    v144(v143);
    sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    v113 = v302;
    sub_1DC513DFC();
    MEMORY[0x1E1296570](v113);
    v145 = OUTLINED_FUNCTION_158();
    v146(v145);
    v147 = objc_allocWithZone(MEMORY[0x1E69D25A0]);
    v148 = OUTLINED_FUNCTION_107();
    sub_1DC301238(v148, v149, v150);
    (*(v139 + 8))(v83, v76);
    goto LABEL_19;
  }

  if (v123 == *MEMORY[0x1E69D15F0])
  {
    v151 = OUTLINED_FUNCTION_33_5();
    v152(v151);
    v83 = v295;
    OUTLINED_FUNCTION_97_0();
    v153 = OUTLINED_FUNCTION_56();
    v154(v153);
    OUTLINED_FUNCTION_134();
    sub_1DC513EBC();
    OUTLINED_FUNCTION_104();
    v155 = OUTLINED_FUNCTION_42_6();
    v156(v155);
    sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    OUTLINED_FUNCTION_30_4();
    sub_1DC513EDC();
    OUTLINED_FUNCTION_139();
    v157 = OUTLINED_FUNCTION_19_7();
    v158(v157);
    v159 = MEMORY[0x1E69D2590];
LABEL_12:
    v160 = objc_allocWithZone(v159);
    v161 = &selRef_initWithTaskId_reference_;
LABEL_18:
    sub_1DC301238(v113, v106, v161);
    v182 = v83[1];
    v183 = OUTLINED_FUNCTION_56();
    v184(v183);
    goto LABEL_19;
  }

  if (v123 == *MEMORY[0x1E69D15D0])
  {
    v162 = OUTLINED_FUNCTION_33_5();
    v163(v162);
    v83 = v292;
    OUTLINED_FUNCTION_97_0();
    v164 = OUTLINED_FUNCTION_56();
    v165(v164);
    OUTLINED_FUNCTION_134();
    sub_1DC51436C();
    OUTLINED_FUNCTION_104();
    v166 = OUTLINED_FUNCTION_42_6();
    v167(v166);
    sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    OUTLINED_FUNCTION_30_4();
    sub_1DC51438C();
    OUTLINED_FUNCTION_139();
    v168 = OUTLINED_FUNCTION_19_7();
    v169(v168);
    v170 = MEMORY[0x1E69D25C0];
LABEL_17:
    v181 = objc_allocWithZone(v170);
    v161 = &selRef_initWithSystemDialogActId_reference_;
    goto LABEL_18;
  }

  if (v123 == *MEMORY[0x1E69D15B8])
  {
    v171 = OUTLINED_FUNCTION_33_5();
    v172(v171);
    OUTLINED_FUNCTION_76_1(&a17);
    v174 = *(v173 + 32);
    v175 = OUTLINED_FUNCTION_56();
    v176(v175);
    OUTLINED_FUNCTION_134();
    sub_1DC51426C();
    OUTLINED_FUNCTION_104();
    v177 = OUTLINED_FUNCTION_42_6();
    v178(v177);
    sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    OUTLINED_FUNCTION_30_4();
    sub_1DC51428C();
    OUTLINED_FUNCTION_139();
    v179 = OUTLINED_FUNCTION_19_7();
    v180(v179);
    v170 = MEMORY[0x1E69D2588];
    goto LABEL_17;
  }

  if (v123 == *MEMORY[0x1E69D15D8])
  {
    v185 = OUTLINED_FUNCTION_33_5();
    v186(v185);
    OUTLINED_FUNCTION_76_1(&a14);
    v188 = *(v187 + 32);
    v189 = OUTLINED_FUNCTION_56();
    v190(v189);
    OUTLINED_FUNCTION_134();
    sub_1DC51447C();
    OUTLINED_FUNCTION_104();
    v191 = OUTLINED_FUNCTION_42_6();
    v192(v191);
    sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    OUTLINED_FUNCTION_30_4();
    sub_1DC51449C();
    OUTLINED_FUNCTION_139();
    v193 = OUTLINED_FUNCTION_19_7();
    v194(v193);
    v159 = MEMORY[0x1E69D25B8];
    goto LABEL_12;
  }

  if (v123 == *MEMORY[0x1E69D15C0])
  {
    v195 = OUTLINED_FUNCTION_33_5();
    v196(v195);
    OUTLINED_FUNCTION_76_1(&a11);
    v198 = *(v197 + 32);
    v199 = OUTLINED_FUNCTION_56();
    v200(v199);
    OUTLINED_FUNCTION_134();
    sub_1DC51430C();
    OUTLINED_FUNCTION_104();
    v201 = OUTLINED_FUNCTION_42_6();
    v202(v201);
    sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    OUTLINED_FUNCTION_30_4();
    sub_1DC51432C();
    OUTLINED_FUNCTION_139();
    v203 = OUTLINED_FUNCTION_19_7();
    v204(v203);
    v159 = MEMORY[0x1E69D25B0];
    goto LABEL_12;
  }

  if (v123 != *MEMORY[0x1E69D15F8])
  {
    if (v123 == *MEMORY[0x1E69D15C8])
    {
      v251 = OUTLINED_FUNCTION_33_5();
      v252(v251);
      OUTLINED_FUNCTION_76_1(&v300);
      v254 = *(v253 + 32);
      v255 = v267;
      v256 = OUTLINED_FUNCTION_56();
      v257 = v269;
      v258(v256);
      sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
      OUTLINED_FUNCTION_30_4();
      sub_1DC51408C();
      OUTLINED_FUNCTION_139();
      v259 = OUTLINED_FUNCTION_19_7();
      v260(v259);
      if (sub_1DC517CBC())
      {
        v261 = sub_1DC51469C();
        sub_1DC301F18(v261, v262, v106);
      }

      else
      {
        sub_1DC301F18(0xD00000000000001CLL, 0x80000001DC53DF90, v106);
      }

      OUTLINED_FUNCTION_109_0();
      [objc_allocWithZone(MEMORY[0x1E69D25A8]) initWithTask_];

      (v83[1])(v255, v257);
      goto LABEL_20;
    }

    v263 = *(v113 + 1);
    v113 += 8;
    v264 = OUTLINED_FUNCTION_58_3();
    v265(v264);
    OUTLINED_FUNCTION_109_0();
LABEL_3:
    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    OUTLINED_FUNCTION_61_2();
    sub_1DC516EFC();
    goto LABEL_20;
  }

  v205 = OUTLINED_FUNCTION_33_5();
  v206(v205);
  v207 = v273;
  (*(v274 + 32))(v273, v22, v275);
  v208 = sub_1DC51457C();
  if ((v208 & 0x80000000) == 0)
  {
    v209 = v208;
    OUTLINED_FUNCTION_20_3(&v302);
    sub_1DC5145AC();
    v210 = sub_1DC51653C();
    v212 = v211;
    v213 = OUTLINED_FUNCTION_125(&v303);
    v214(v213, v272);
    v272 = sub_1DC51418C();
    v271 = v215;
    v216 = sub_1DC513ACC();
    v217 = *(v216 + 16);
    OUTLINED_FUNCTION_109_0();
    v219 = v289;
    v218 = v290;
    if (!v217)
    {

LABEL_42:
      v266 = objc_allocWithZone(MEMORY[0x1E69D24C0]);
      sub_1DC300F44(v209, v210, v212);
      (*(v274 + 8))(v207, v275);
      goto LABEL_20;
    }

    v268 = v212;
    v269 = v210;
    v270 = v209;
    v305 = MEMORY[0x1E69E7CC0];
    sub_1DC517FBC();
    v283 = sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    v220 = 0;
    v221 = *(v294 + 80);
    OUTLINED_FUNCTION_24();
    v282 = v216 + v222;
    v281 = v223 + 16;
    v280 = v301 + 8;
    v224 = (v288 + 8);
    v279 = v223 + 8;
    v225 = v217;
    v278 = v216;
    v277 = v217;
    v276 = v288 + 16;
    while (v220 < *(v216 + 16))
    {
      v226 = *(v294 + 72);
      v299 = v220;
      (*(v294 + 16))(v219, v282 + v226 * v220, v218);
      v227 = sub_1DC5139AC();
      v298 = v228;
      v229 = sub_1DC51399C();
      v296 = v230;
      v297 = v229;
      LODWORD(v295) = sub_1DC51398C();
      LODWORD(v293) = sub_1DC51397C();
      v231 = v302;
      sub_1DC5139CC();
      v292 = MEMORY[0x1E1296570](v231);
      OUTLINED_FUNCTION_37(&a14);
      v232(v231, v303);
      sub_1DC5139BC();
      v234 = v233;
      v235 = sub_1DC51396C();
      v236 = *(v235 + 16);
      if (v236)
      {
        v291 = v227;
        v304 = MEMORY[0x1E69E7CC0];
        sub_1DC517FBC();
        v237 = *(v288 + 80);
        OUTLINED_FUNCTION_24();
        v284 = v235;
        v239 = v235 + v238;
        v241 = *(v240 + 16);
        v300 = *(v240 + 72);
        v301 = v241;
        v242 = v287;
        v243 = v286;
        do
        {
          (v301)(v243, v239, v242);
          [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          v244 = *v224;
          v245 = OUTLINED_FUNCTION_16();
          v246(v245);
          sub_1DC517F9C();
          v113 = *(v304 + 16);
          sub_1DC517FCC();
          sub_1DC517FDC();
          sub_1DC517FAC();
          v239 += v300;
          --v236;
        }

        while (v236);

        OUTLINED_FUNCTION_109_0();
        v219 = v289;
        v218 = v290;
        v216 = v278;
        v225 = v277;
        v227 = v291;
      }

      else
      {
      }

      v220 = v299 + 1;
      v247 = objc_allocWithZone(MEMORY[0x1E69D2530]);
      sub_1DC301138(v234, v227, v298, v297, v296, v295, v293, v292);
      OUTLINED_FUNCTION_37(&a13);
      v248 = OUTLINED_FUNCTION_16();
      v249(v248);
      sub_1DC517F9C();
      v250 = *(v305 + 16);
      sub_1DC517FCC();
      OUTLINED_FUNCTION_36();
      sub_1DC517FDC();
      sub_1DC517FAC();
      if (v220 == v225)
      {

        v207 = v273;
        v209 = v270;
        v210 = v269;
        v212 = v268;
        goto LABEL_42;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id sub_1DC2FE7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1DC5176FC();

  v6 = [v4 initWithGroupId:v5 seq:a3];

  return v6;
}

void sub_1DC2FE82C()
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_98();
  v84 = sub_1DC513D6C();
  v3 = OUTLINED_FUNCTION_0(v84);
  v87 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v83 = v7;
  OUTLINED_FUNCTION_12();
  v8 = sub_1DC5142DC();
  v9 = OUTLINED_FUNCTION_0(v8);
  v79 = v10;
  v81 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v77 = v13;
  OUTLINED_FUNCTION_12();
  v14 = sub_1DC51655C();
  v15 = OUTLINED_FUNCTION_0(v14);
  v88 = v16;
  v89 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_23_1();
  v86 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_153_1();
  v90 = sub_1DC51652C();
  v23 = OUTLINED_FUNCTION_0(v90);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v28 = sub_1DC513A8C();
  v29 = OUTLINED_FUNCTION_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1();
  v36 = v35 - v34;
  sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
  sub_1DC51410C();
  MEMORY[0x1E1296570](v36);
  (*(v31 + 8))(v36, v28);
  sub_1DC5140FC();
  sub_1DC51651C();
  v38 = v37;
  (*(v25 + 8))(v2, v90);
  sub_1DC51412C();
  v39 = v0;
  v40 = sub_1DC51653C();
  v42 = v41;
  v43 = *(v88 + 8);
  v43(v39, v89);
  sub_1DC5140EC();
  v44 = v1;
  v45 = sub_1DC51653C();
  v47 = v46;
  v85 = v43;
  v43(v44, v89);
  v48 = 0;
  if (sub_1DC5140CC())
  {
    sub_1DC51411C();
    sub_1DC298C74(0, &qword_1ECC7C410, 0x1E69D24F0);
    sub_1DC5142CC();
    v49 = sub_1DC51653C();
    v50 = v47;
    v51 = v45;
    v53 = v52;
    v43(v86, v89);
    v54 = sub_1DC5142BC();
    v55 = v53;
    v45 = v51;
    v47 = v50;
    v48 = sub_1DC2FE7B0(v49, v55, v54);
    (*(v79 + 8))(v77, v81);
  }

  v56 = *(sub_1DC513A9C() + 16);

  if (v56)
  {
    v57 = sub_1DC513A9C();
    v58 = *(v57 + 16);
    if (v58)
    {
      v74 = v48;
      v75 = v45;
      v76 = v42;
      v92 = MEMORY[0x1E69E7CC0];
      sub_1DC517FBC();
      v82 = *(v87 + 16);
      OUTLINED_FUNCTION_50_5();
      v60 = v57 + v59;
      v78 = (v61 - 8);
      v80 = *(v61 + 56);
      v62 = v84;
      do
      {
        v82(v83, v60, v62);
        sub_1DC513D4C();
        v91 = sub_1DC51653C();
        v64 = v63;
        v85(v86, v89);
        OUTLINED_FUNCTION_128_1();
        sub_1DC513D5C();
        v65 = sub_1DC51653C();
        v67 = v66;
        v68 = OUTLINED_FUNCTION_16();
        (v85)(v68);
        v69 = objc_allocWithZone(MEMORY[0x1E69D24E8]);
        v70 = v64;
        v62 = v84;
        sub_1DC301880(v91, v70, v65, v67, &selRef_initWithKey_value_);
        (*v78)(v83, v84);
        sub_1DC517F9C();
        v71 = *(v92 + 16);
        sub_1DC517FCC();
        sub_1DC517FDC();
        sub_1DC517FAC();
        v60 += v80;
        --v58;
      }

      while (v58);

      v56 = v92;
      v45 = v75;
      v42 = v76;
      v48 = v74;
    }

    else
    {

      v56 = MEMORY[0x1E69E7CC0];
    }
  }

  v72 = objc_allocWithZone(MEMORY[0x1E69D24C8]);
  v73 = OUTLINED_FUNCTION_162();
  sub_1DC30102C(v73, v38, v40, v42, v45, v47, v48, v56);
  OUTLINED_FUNCTION_101();
}

void sub_1DC2FEE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v24;
  a20 = v25;
  v226 = v26;
  OUTLINED_FUNCTION_38_2();
  v27 = sub_1DC51655C();
  v28 = OUTLINED_FUNCTION_0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v207 = sub_1DC51451C();
  v31 = OUTLINED_FUNCTION_0(v207);
  v206 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v35);
  v36 = sub_1DC510B6C();
  v37 = OUTLINED_FUNCTION_10(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_1();
  v214 = v40;
  OUTLINED_FUNCTION_12();
  v213 = sub_1DC513A3C();
  v41 = OUTLINED_FUNCTION_0(v213);
  v212 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v45);
  v210 = sub_1DC51454C();
  v46 = OUTLINED_FUNCTION_0(v210);
  v209 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v50);
  v51 = sub_1DC51405C();
  v52 = OUTLINED_FUNCTION_0(v51);
  v216 = v53;
  v217 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_2_1();
  v215 = v56;
  OUTLINED_FUNCTION_12();
  v57 = sub_1DC5142FC();
  v58 = OUTLINED_FUNCTION_0(v57);
  v219 = v59;
  v220 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_2_1();
  v218 = v62;
  OUTLINED_FUNCTION_12();
  v228 = sub_1DC51403C();
  v63 = OUTLINED_FUNCTION_0(v228);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_8_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_153_1();
  v69 = sub_1DC513EAC();
  v70 = OUTLINED_FUNCTION_0(v69);
  v222 = v71;
  v223 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_2_1();
  v221 = v74;
  OUTLINED_FUNCTION_12();
  v227 = sub_1DC513A8C();
  v75 = OUTLINED_FUNCTION_0(v227);
  v225 = v76;
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_8();
  v81 = v79 - v80;
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_62();
  v224 = v83;
  OUTLINED_FUNCTION_12();
  v84 = sub_1DC51407C();
  v85 = OUTLINED_FUNCTION_0(v84);
  v87 = v86;
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_3();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C418, &qword_1DC523108);
  v91 = OUTLINED_FUNCTION_10(v90);
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_56_1();
  sub_1DC5141DC();
  v95 = sub_1DC5141CC();
  v96 = OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_39(v96, v97, v95);
  if (v98)
  {
    goto LABEL_3;
  }

  v204 = v21;
  sub_1DC28F358(v21, v22, &qword_1ECC7C418, &qword_1DC523108);
  v100 = *(v95 - 8);
  v101 = *(v100 + 88);
  v102 = OUTLINED_FUNCTION_58_3();
  v104 = v103(v102);
  if (v104 == *MEMORY[0x1E69D1658])
  {
    v105 = OUTLINED_FUNCTION_54_6();
    v106(v105);
    v107 = *(v87 + 32);
    v108 = OUTLINED_FUNCTION_159();
    v109(v108);
    sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
    sub_1DC51406C();
    v110 = MEMORY[0x1E1296570](v224);
    (*(v225 + 8))(v224, v227);
    v111 = [objc_allocWithZone(MEMORY[0x1E69D2550]) initWithReference_];

    v112 = *(v87 + 8);
    v113 = OUTLINED_FUNCTION_73();
    v114(v113);
LABEL_39:
    sub_1DC28EB30(v204, &qword_1ECC7C418, &qword_1DC523108);
    swift_unknownObjectRetain();
    sub_1DC5141EC();
    v196 = sub_1DC51653C();
    v197 = OUTLINED_FUNCTION_51_5();
    v198(v197);
    sub_1DC5176FC();
    OUTLINED_FUNCTION_162();

    [v111 setRenderedText_];

    MEMORY[0x1E12962A0]();
    sub_1DC301904(*((*v226 & 0xFFFFFFFFFFFFFF8) + 0x10));
    OUTLINED_FUNCTION_36();
    sub_1DC517A5C();
    v199 = *v226;
    swift_unknownObjectRelease();
    *v226 = v199;
    goto LABEL_40;
  }

  if (v104 != *MEMORY[0x1E69D1648])
  {
    if (v104 == *MEMORY[0x1E69D1630])
    {
      v129 = OUTLINED_FUNCTION_54_6();
      v130(v129);
      (*(v219 + 32))(v218, v22, v220);
      v229 = MEMORY[0x1E69E7CC0];
      v131 = sub_1DC513A9C();
      v21 = 0;
      v132 = *(v131 + 16);
      v133 = (v65 + 8);
      while (1)
      {
        if (v132 == v21)
        {

          sub_1DC298C74(0, &unk_1ECC7C430, 0x1E69D2538);
          OUTLINED_FUNCTION_162();
          v111 = sub_1DC2FFD04();
          (*(v219 + 8))(v218, v220);
          goto LABEL_39;
        }

        if (v21 >= *(v131 + 16))
        {
          __break(1u);
          goto LABEL_43;
        }

        v134 = *(v65 + 80);
        OUTLINED_FUNCTION_24();
        (*(v65 + 16))(v23, v131 + v135 + *(v65 + 72) * v21, v228);
        sub_1DC2FD51C(v23, v136, v137, v138, v139, v140, v141, v142, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216);
        if (!v143)
        {
          break;
        }

        v144 = swift_unknownObjectRetain();
        MEMORY[0x1E12962A0](v144);
        v145 = *((v229 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v229 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v145 >> 1)
        {
          OUTLINED_FUNCTION_26(v145);
          sub_1DC517A3C();
        }

        sub_1DC517A5C();
        swift_unknownObjectRelease();
        (*v133)(v23, v228);
        ++v21;
      }

      if (qword_1ECC81EE0 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      sub_1DC517BAC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
      v182 = OUTLINED_FUNCTION_124_0();
      *(v182 + 16) = xmmword_1DC522F20;
      sub_1DC302048(&qword_1ECC7C428, MEMORY[0x1E69D1608]);
      sub_1DC5165DC();
      OUTLINED_FUNCTION_137();
      *(v182 + 56) = MEMORY[0x1E69E6158];
      *(v182 + 64) = sub_1DC2C0FA4();
      *(v182 + 32) = v23;
      *(v182 + 40) = v21;
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_169_0();

      (*v133)(v23, v228);
      (*(v219 + 8))(v218, v220);
      v99 = v204;
      goto LABEL_5;
    }

    if (v104 == *MEMORY[0x1E69D1650])
    {
      v146 = OUTLINED_FUNCTION_54_6();
      v147(v146);
      (*(v216 + 32))(v215, v22, v217);
      v230 = MEMORY[0x1E69E7CC0];
      v148 = sub_1DC513A9C();
      v149 = *(v148 + 16);
      if (v149)
      {
        sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
        v150 = *(v225 + 16);
        OUTLINED_FUNCTION_50_5();
        v152 = v148 + v151;
        v154 = *(v153 + 56);
        v155 = (v153 - 8);
        do
        {
          v150(v81, v152, v227);
          MEMORY[0x1E1296570](v81);
          v156 = *v155;
          v157 = OUTLINED_FUNCTION_56();
          v159 = v158(v157);
          MEMORY[0x1E12962A0](v159);
          OUTLINED_FUNCTION_114(v230);
          if (v161)
          {
            OUTLINED_FUNCTION_26(v160);
            sub_1DC517A3C();
          }

          OUTLINED_FUNCTION_16();
          sub_1DC517A5C();
          v152 += v154;
          --v149;
        }

        while (v149);
      }

      sub_1DC298C74(0, &qword_1ECC7C420, 0x1E69D2540);
      OUTLINED_FUNCTION_56_7();
      v111 = sub_1DC2FFD88();
      (*(v216 + 8))(v215, v217);
      goto LABEL_39;
    }

    if (v104 == *MEMORY[0x1E69D1640])
    {
      v165 = OUTLINED_FUNCTION_54_6();
      v166(v165);
      OUTLINED_FUNCTION_106(&a15);
      v168 = *(v167 + 32);
      v169 = v208;
      v170 = OUTLINED_FUNCTION_41();
      v171 = v210;
      v172(v170);
      OUTLINED_FUNCTION_20_3(&a17);
      sub_1DC51453C();
      sub_1DC513A1C();
      v173 = OUTLINED_FUNCTION_125(&a18);
      v174(v173, v213);
      sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
      OUTLINED_FUNCTION_128_1();
      sub_1DC51452C();
      MEMORY[0x1E1296570](v224);
      v175 = OUTLINED_FUNCTION_132();
      v176(v175);
      v177 = objc_allocWithZone(MEMORY[0x1E69D2560]);
      v178 = OUTLINED_FUNCTION_36();
      v181 = sub_1DC301238(v178, v179, v180);
LABEL_37:
      v111 = v181;
      (*(v100 + 8))(v169, v171);
      goto LABEL_39;
    }

    if (v104 == *MEMORY[0x1E69D1638])
    {
      v183 = OUTLINED_FUNCTION_54_6();
      v184(v183);
      OUTLINED_FUNCTION_106(&a12);
      v186 = *(v185 + 32);
      v169 = v205;
      v187 = OUTLINED_FUNCTION_41();
      v171 = v207;
      v188(v187);
      OUTLINED_FUNCTION_20_3(&a17);
      sub_1DC51450C();
      sub_1DC513A1C();
      v189 = OUTLINED_FUNCTION_125(&a18);
      v190(v189, v213);
      v191 = sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
      OUTLINED_FUNCTION_128_1();
      sub_1DC5144FC();
      MEMORY[0x1E1296570](v224);
      v192 = OUTLINED_FUNCTION_132();
      v193(v192);
      v194 = objc_allocWithZone(MEMORY[0x1E69D2558]);
      v195 = OUTLINED_FUNCTION_162();
      v181 = sub_1DC3012D0(v195, 0, v191);
      goto LABEL_37;
    }

    v200 = *(v100 + 8);
    v201 = OUTLINED_FUNCTION_58_3();
    v202(v201);
    v21 = v204;
LABEL_3:
    if (qword_1ECC81EE0 != -1)
    {
LABEL_43:
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    OUTLINED_FUNCTION_61_2();
    sub_1DC516EFC();
    v99 = v21;
    goto LABEL_5;
  }

  v115 = OUTLINED_FUNCTION_54_6();
  v116(v115);
  (*(v222 + 32))(v221, v22, v223);
  sub_1DC513E9C();
  sub_1DC2FD51C(v20, v117, v118, v119, v120, v121, v122, v123, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216);
  v125 = v124;
  (*(v65 + 8))(v20, v228);
  if (v125)
  {
    v111 = [objc_allocWithZone(MEMORY[0x1E69D2548]) initWithOfferedAct_];
    swift_unknownObjectRelease();
    v126 = *(v222 + 8);
    v127 = OUTLINED_FUNCTION_60();
    v128(v127);
    goto LABEL_39;
  }

  if (qword_1ECC81EE0 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  sub_1DC517BAC();
  OUTLINED_FUNCTION_61_2();
  sub_1DC516EFC();
  v162 = *(v222 + 8);
  v163 = OUTLINED_FUNCTION_60();
  v164(v163);
  v99 = v204;
LABEL_5:
  sub_1DC28EB30(v99, &qword_1ECC7C418, &qword_1DC523108);
LABEL_40:
  OUTLINED_FUNCTION_34();
}

id sub_1DC2FFD04()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C328, &qword_1DC5230B8);
  v1 = sub_1DC517A0C();

  v2 = [v0 initWithChoices_];

  return v2;
}

id sub_1DC2FFD88()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1DC298C74(0, &qword_1ECC7C390, 0x1E69D25D8);
  v1 = sub_1DC517A0C();

  v2 = [v0 initWithEntities_];

  return v2;
}

void sub_1DC2FFE10()
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_38_2();
  v111 = sub_1DC5141FC();
  v3 = OUTLINED_FUNCTION_0(v111);
  v108 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_122_0();
  v122 = sub_1DC51413C();
  v7 = OUTLINED_FUNCTION_0(v122);
  v106 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v125 = sub_1DC51652C();
  v11 = OUTLINED_FUNCTION_0(v125);
  v109 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v123 = sub_1DC513A8C();
  v18 = OUTLINED_FUNCTION_0(v123);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v26 = sub_1DC513A0C();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_56_1();
  v33 = MEMORY[0x1E69E7CC0];
  v130 = MEMORY[0x1E69E7CC0];
  v34 = *(sub_1DC513A9C() + 16);
  v112 = v2;
  v110 = v0;
  if (v34)
  {
    v35 = OUTLINED_FUNCTION_155();
    sub_1DC298C74(v35, v36, v37);
    v104 = v29;
    v39 = *(v29 + 16);
    v38 = v29 + 16;
    v117 = v39;
    v40 = *(v38 + 64);
    OUTLINED_FUNCTION_24();
    v41 = v20;
    v102 = v33;
    v43 = v33 + v42;
    v115 = *(v38 + 56);
    v103 = v41;
    v114 = (v41 + 8);
    v113 = (v109 + 8);
    v44 = (v38 - 8);
    do
    {
      v117(v1, v43, v26);
      sub_1DC5139EC();
      v45 = v26;
      v46 = MEMORY[0x1E1296570](v25);
      (*v114)(v25, v123);
      sub_1DC5139FC();
      sub_1DC51651C();
      v48 = v47;
      (*v113)(v17, v125);
      [objc_allocWithZone(MEMORY[0x1E69D2568]) initWithTask:v46 score:v48];

      MEMORY[0x1E12962A0]();
      OUTLINED_FUNCTION_114(v130);
      if (v50)
      {
        OUTLINED_FUNCTION_26(v49);
        sub_1DC517A3C();
      }

      sub_1DC517A5C();
      (*v44)(v1, v45);
      v43 += v115;
      --v34;
      v26 = v45;
    }

    while (v34);
    v107 = v130;

    v33 = MEMORY[0x1E69E7CC0];
    v29 = v104;
    v20 = v103;
  }

  else
  {

    v107 = MEMORY[0x1E69E7CC0];
  }

  v129 = v33;
  v51 = *(sub_1DC513AAC() + 16);
  if (v51)
  {
    v52 = OUTLINED_FUNCTION_155();
    sub_1DC298C74(v52, v53, v54);
    v55 = *(v29 + 16);
    v29 += 16;
    v119 = v55;
    v56 = *(v29 + 64);
    OUTLINED_FUNCTION_24();
    v57 = v20;
    v104 = v33;
    v59 = v33 + v58;
    v116 = (v57 + 8);
    v118 = *(v29 + 56);
    v113 = (v29 - 8);
    do
    {
      v60 = v29;
      v119(v105, v59, v26);
      sub_1DC5139EC();
      v61 = v26;
      v62 = MEMORY[0x1E1296570](v25);
      (*v116)(v25, v123);
      sub_1DC5139FC();
      sub_1DC51651C();
      v64 = v63;
      (*(v109 + 8))(v17, v125);
      [objc_allocWithZone(MEMORY[0x1E69D2568]) initWithTask:v62 score:v64];

      MEMORY[0x1E12962A0]();
      OUTLINED_FUNCTION_114(v129);
      if (v50)
      {
        OUTLINED_FUNCTION_26(v65);
        sub_1DC517A3C();
      }

      sub_1DC517A5C();
      (*v113)(v105, v61);
      v59 += v118;
      --v51;
      v26 = v61;
      v29 = v60;
    }

    while (v51);
    v120 = v129;

    v33 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v120 = MEMORY[0x1E69E7CC0];
  }

  v128 = v33;
  v66 = *(sub_1DC513ABC() + 16);
  if (v66)
  {
    v67 = *(v106 + 16);
    OUTLINED_FUNCTION_50_5();
    v70 = v68 + v69;
    v72 = *(v71 + 56);
    do
    {
      v73 = OUTLINED_FUNCTION_60();
      v67(v73);
      sub_1DC2FE82C();
      v74 = OUTLINED_FUNCTION_160();
      v76 = v75(v74);
      MEMORY[0x1E12962A0](v76);
      OUTLINED_FUNCTION_145();
      if (v50)
      {
        OUTLINED_FUNCTION_26(v77);
        sub_1DC517A3C();
      }

      OUTLINED_FUNCTION_30();
      sub_1DC517A5C();
      v70 += v72;
      --v66;
    }

    while (v66);
    v78 = v128;

    v33 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v78 = MEMORY[0x1E69E7CC0];
  }

  v127 = v33;
  v79 = *(sub_1DC513ACC() + 16);
  OUTLINED_FUNCTION_109_0();
  if (v79)
  {
    v121 = v78;
    v82 = *(v29 + 16);
    v81 = v29 + 16;
    v80 = v82;
    v83 = *(v81 + 64);
    OUTLINED_FUNCTION_24();
    v86 = v84 + v85;
    v87 = *(v81 + 56);
    v88 = v111;
    v124 = v82;
    v126 = v87;
    do
    {
      v80(v2, v86, v88);
      sub_1DC2FEE38(v2, &v127, v89, v90, v91, v92, v93, v94, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
      if ((v95 & 1) == 0)
      {
        if (qword_1ECC81EE0 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        sub_1DC517BAC();
        sub_1DC516EFC();
        sub_1DC517B9C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
        v96 = OUTLINED_FUNCTION_124_0();
        *(v96 + 16) = xmmword_1DC522F20;
        OUTLINED_FUNCTION_81_0();
        sub_1DC302048(&qword_1ECC7C388, v97);
        OUTLINED_FUNCTION_56_7();
        v98 = sub_1DC5165DC();
        v100 = v99;
        *(v96 + 56) = MEMORY[0x1E69E6158];
        *(v96 + 64) = sub_1DC2C0FA4();
        *(v96 + 32) = v98;
        *(v96 + 40) = v100;
        v88 = v111;
        v2 = v112;
        sub_1DC516EFC();

        v80 = v124;
        v87 = v126;
      }

      (*(v81 - 8))(v2, v88);
      v86 += v87;
      --v79;
    }

    while (v79);

    v101 = v127;
    v78 = v121;
  }

  else
  {

    v101 = MEMORY[0x1E69E7CC0];
  }

  objc_allocWithZone(MEMORY[0x1E69D24D8]);
  sub_1DC30137C(v101, v107, v120, v78);
  OUTLINED_FUNCTION_101();
}

void sub_1DC3006CC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v1 = sub_1DC51414C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v53 = sub_1DC51655C();
  v7 = OUTLINED_FUNCTION_0(v53);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = *(sub_1DC51416C() + 16);
  if (v15)
  {
    v49 = v0;
    v50 = v4;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v18 = *(v16 + 64);
    OUTLINED_FUNCTION_24();
    v21 = v19 + v20;
    v51 = *(v16 + 56);
    v52 = v22;
    v23 = (v16 - 8);
    v24 = MEMORY[0x1E69E7CC0];
    do
    {
      v25 = v16;
      v52(v14, v21, v53);
      v26 = sub_1DC51653C();
      v28 = v27;
      (*v23)(v14, v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = *(v24 + 2);
        OUTLINED_FUNCTION_18_3();
        v24 = sub_1DC2ACCD4(v33, v34, v35, v36);
      }

      v30 = *(v24 + 2);
      v29 = *(v24 + 3);
      if (v30 >= v29 >> 1)
      {
        OUTLINED_FUNCTION_26(v29);
        OUTLINED_FUNCTION_18_3();
        v24 = sub_1DC2ACCD4(v37, v38, v39, v40);
      }

      *(v24 + 2) = v30 + 1;
      v31 = &v24[16 * v30];
      *(v31 + 4) = v26;
      *(v31 + 5) = v28;
      v21 += v51;
      --v15;
      v16 = v25;
    }

    while (v15);

    v0 = v49;
    v4 = v50;
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
  }

  sub_1DC51419C();
  v41 = (*(v4 + 88))(v0, v1);
  if (v41 != *MEMORY[0x1E69D1620])
  {
    if (v41 == *MEMORY[0x1E69D1628])
    {
      v42 = 1;
      goto LABEL_18;
    }

    if (v41 == *MEMORY[0x1E69D1618])
    {
      v42 = 2;
      goto LABEL_18;
    }

    if (v41 == *MEMORY[0x1E69D1610])
    {
      v42 = 3;
      goto LABEL_18;
    }

    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    OUTLINED_FUNCTION_61_2();
    sub_1DC516EFC();
    (*(v4 + 8))(v0, v1);
  }

  v42 = 0;
LABEL_18:
  v43 = sub_1DC51417C();
  v44 = sub_1DC51415C();
  v45 = sub_1DC51418C();
  v47 = v46;
  v48 = sub_1DC5141AC();
  objc_allocWithZone(MEMORY[0x1E69D24D0]);
  sub_1DC3014AC(v43 & 1, v44 & 1, v45, v47, v48 & 1, v24, v42);
  OUTLINED_FUNCTION_34();
}

void sub_1DC300A30()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_38_2();
  v0 = sub_1DC5141BC();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_113();
  v6 = sub_1DC513ADC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  sub_1DC513D0C();
  sub_1DC2FFE10();
  v13 = v12;
  v14 = *(v9 + 8);
  v15 = OUTLINED_FUNCTION_16();
  v16(v15);
  v17 = 0;
  if (sub_1DC513D2C())
  {
    sub_1DC513D1C();
    sub_1DC3006CC();
    v17 = v18;
    v19 = *(v3 + 8);
    v20 = OUTLINED_FUNCTION_36();
    v21(v20);
  }

  [objc_msgSend(objc_allocWithZone(MEMORY[0x1E69D2570]) initWithNLContext_];

  OUTLINED_FUNCTION_154();
}

uint64_t sub_1DC300BB0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 algorithmType];
  if (v4 == 2)
  {
    v5 = MEMORY[0x1E69D15A8];
  }

  else if (v4 == 1)
  {
    v5 = MEMORY[0x1E69D15A0];
  }

  else if (v4)
  {
    if (qword_1ECC81EE0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    sub_1DC517BAC();
    sub_1DC516EFC();
    *a2 = [a1 algorithmType];
    v5 = MEMORY[0x1E69D1598];
  }

  else
  {
    v5 = MEMORY[0x1E69D15B0];
  }

  v6 = *v5;
  v7 = sub_1DC513E3C();
  v8 = OUTLINED_FUNCTION_35(v7);
  v10 = *(v9 + 104);

  return v10(a2, v6, v8);
}

uint64_t sub_1DC300CDC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  switch([a1 parserIdentifier])
  {
    case 0u:
      v4 = MEMORY[0x1E69D1698];
      break;
    case 1u:
      v4 = MEMORY[0x1E69D16A0];
      break;
    case 2u:
      v4 = MEMORY[0x1E69D1690];
      break;
    case 3u:
      v4 = MEMORY[0x1E69D1688];
      break;
    case 4u:
      v4 = MEMORY[0x1E69D1680];
      break;
    case 5u:
      v4 = MEMORY[0x1E69D1678];
      break;
    default:
      if (qword_1ECC81EE0 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      sub_1DC517BAC();
      OUTLINED_FUNCTION_78_1();
      sub_1DC516EFC();
      *a2 = [a1 parserIdentifier];
      v4 = MEMORY[0x1E69D1670];
      break;
  }

  v5 = *v4;
  v6 = sub_1DC51420C();
  v7 = OUTLINED_FUNCTION_35(v6);
  v9 = *(v8 + 104);

  return v9(a2, v5, v7);
}

id sub_1DC300E40()
{
  OUTLINED_FUNCTION_146();
  if (!v2 & v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1DC5109EC();
    v4 = OUTLINED_FUNCTION_73();
    sub_1DC301FE0(v4, v5);
  }

  v6 = [v0 initWithData_];

  return v6;
}

id sub_1DC300EAC(void *a1, void *a2)
{
  sub_1DC298C74(0, &unk_1ECC7C790, 0x1E69D2578);
  v5 = sub_1DC517A0C();

  v6 = [v2 initWithRequestId:a1 currentTurnInput:a2 previousTurnInputs:v5];

  return v6;
}

id sub_1DC300F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_1DC5176FC();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1DC5176FC();

  sub_1DC298C74(0, &unk_1ECC7C458, 0x1E69D2530);
  v7 = sub_1DC517A0C();

  v8 = [v3 initWithAsrHypothesisIndex:a1 rewrittenUtterace:v5 externalParserId:v6 spans:v7];

  return v8;
}

id sub_1DC30102C(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v9 = v8;
  v14 = sub_1DC5176FC();

  v15 = sub_1DC5176FC();

  if (a8)
  {
    sub_1DC298C74(0, &qword_1ECC7C450, 0x1E69D24E8);
    v16 = sub_1DC517A0C();
  }

  else
  {
    v16 = 0;
  }

  v17 = [v9 initWithEntity:a1 score:v14 entityId:v15 appBundleId:a7 groupId:v16 annotations:a2];

  return v17;
}

id sub_1DC301138(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_1DC5176FC();

  v14 = sub_1DC5176FC();

  sub_1DC298C74(0, &qword_1ECC7B920, 0x1E696AD98);
  v15 = sub_1DC517A0C();

  v16 = [v8 initWithLabel:v13 input:v14 startTokenIndex:a6 endTokenIndex:a7 usoGraph:a8 score:v15 matcherNames:a1];

  return v16;
}

id sub_1DC301238(uint64_t a1, void *a2, SEL *a3)
{
  v5 = v3;
  v8 = sub_1DC510B2C();
  v9 = [v5 *a3];

  v10 = sub_1DC510B6C();
  OUTLINED_FUNCTION_35(v10);
  (*(v11 + 8))(a1);
  return v9;
}

id sub_1DC3012D0(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1DC510B2C();
  v9 = [v4 initWithTaskId:v8 reason:a2 task:a3];

  v10 = sub_1DC510B6C();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

id sub_1DC30137C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C3F8, &qword_1DC5230F8);
  v6 = sub_1DC517A0C();

  sub_1DC298C74(0, &qword_1ECC7C400, 0x1E69D2568);
  v7 = sub_1DC517A0C();

  v8 = sub_1DC517A0C();

  if (a4)
  {
    sub_1DC298C74(0, &qword_1ECC7C448, 0x1E69D24C8);
    v9 = sub_1DC517A0C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v4 initWithSystemDialogActs:v6 activeTasks:v7 executedTasks:v8 salientEntities:v9];

  return v10;
}

id sub_1DC3014AC(char a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1DC5176FC();

  if (a6)
  {
    v14 = sub_1DC517A0C();
  }

  else
  {
    v14 = 0;
  }

  v15 = [v7 initWithDictationPrompt:a1 & 1 strictPrompt:a2 & 1 previousDomainName:v13 listenAfterSpeaking:a5 & 1 renderedTexts:v14 legacyContextSource:a7];

  return v15;
}

id sub_1DC301570(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, uint64_t a10, uint64_t a11, int a12)
{
  *&v21[16] = a12;
  *&v21[8] = a11;
  *v21 = a10;
  v16 = sub_1DC5176FC();

  v17 = sub_1DC5176FC();

  v18 = sub_1DC5176FC();

  v19 = [v12 initWithPostITNText:v16 phoneSequence:v17 ipaPhoneSequence:v18 addSpaceAfter:a8 & 1 removeSpaceAfter:a9 & 1 removeSpaceBefore:v21[0] & 1 confidenceScore:a1 beginIndex:*&v21[4] endIndex:? startMilliSeconds:? endMilliSeconds:?];

  return v19;
}

id sub_1DC301670(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_1DC5176FC();

  sub_1DC298C74(0, &qword_1ECC7C470, 0x1E69D24B8);
  v10 = sub_1DC517A0C();

  v11 = sub_1DC510B2C();
  v12 = [v6 initWithUtterance:v9 probability:v10 asrTokens:v11 uuid:a1];

  v13 = sub_1DC510B6C();
  (*(*(v13 - 8) + 8))(a5, v13);
  return v12;
}

id sub_1DC30176C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = v7;
  sub_1DC298C74(0, &qword_1ECC7C468, 0x1E69D24B0);
  v12 = sub_1DC517A0C();

  sub_1DC298C74(0, &qword_1ECC7C448, 0x1E69D24C8);
  v13 = sub_1DC517A0C();

  v14 = sub_1DC5176FC();

  v15 = [v8 initWithAsrOutputs:v12 salientEntities:v13 turnContext:a3 locale:v14 tapToEdit:a6 & 1 startTimestamp:a7];

  return v15;
}

id sub_1DC301880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = sub_1DC5176FC();

  OUTLINED_FUNCTION_73();
  v8 = sub_1DC5176FC();

  v9 = [v5 *a5];

  return v9;
}

uint64_t sub_1DC301904(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1DC517A3C();
  }

  return result;
}

size_t sub_1DC301930(size_t result, uint64_t a2, char a3, uint64_t a4)
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
  v10 = sub_1DC301B78(v9, a2, &qword_1ECC7C780, &qword_1DC523390, MEMORY[0x1E69D1570]);
  v11 = *(sub_1DC513C4C() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC301C70(a4 + v12, v9, v10 + v12, MEMORY[0x1E69D1570]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DC301A54(size_t result, uint64_t a2, char a3, uint64_t a4)
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
  v10 = sub_1DC301B78(v9, a2, &qword_1ECC7C778, &qword_1DC523388, MEMORY[0x1E69D1608]);
  v11 = *(sub_1DC51403C() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC301C70(a4 + v12, v9, v10 + v12, MEMORY[0x1E69D1608]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DC301B78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_98();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if (result - v11 != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC301C70(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_35(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_52_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_52_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_1DC301D30(size_t a1, int64_t a2, char a3)
{
  result = sub_1DC301D50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DC301D50(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C788, &qword_1DC523398);
  v10 = *(sub_1DC51425C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1DC51425C() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DC301C70(a4 + v16, v8, v13 + v16, MEMORY[0x1E69D16D0]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1DC301F18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();

  [a3 setPrintedForm_];
}

uint64_t sub_1DC301F7C(void *a1)
{
  v1 = [a1 rewrittenUtterance];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DC51772C();

  return v3;
}

uint64_t sub_1DC301FE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DC2AD740(a1, a2);
  }

  return a1;
}

uint64_t sub_1DC302048(unint64_t *a1, void (*a2)(uint64_t))
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

id OUTLINED_FUNCTION_86_0()
{

  return sub_1DC300E40();
}

uint64_t OUTLINED_FUNCTION_104()
{
  v2 = *(v0 - 152);

  return sub_1DC513A1C();
}

void OUTLINED_FUNCTION_116_0(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(v3, a2, 1, *(v4 - 200));
}

double OUTLINED_FUNCTION_120()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_132()
{
  v2 = *(*(v1 - 160) + 8);
  result = v0;
  v4 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_138()
{
  v2 = *(v0 - 192);

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_140_1()
{

  return sub_1DC514EDC();
}

uint64_t OUTLINED_FUNCTION_141()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_167()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1DC3022A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v170 = a2;
  v158 = sub_1DC510FDC();
  v3 = OUTLINED_FUNCTION_0(v158);
  v151 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v7);
  v163 = sub_1DC51179C();
  v8 = OUTLINED_FUNCTION_0(v163);
  v150 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v162 = v12;
  v164 = sub_1DC51164C();
  v13 = OUTLINED_FUNCTION_0(v164);
  v161 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v17);
  v154 = sub_1DC51122C();
  v18 = OUTLINED_FUNCTION_0(v154);
  v152 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_1();
  v153 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14(&v137 - v27);
  v171 = sub_1DC5157EC();
  v28 = OUTLINED_FUNCTION_0(v171);
  v166 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15();
  v155 = v32;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v33);
  v156 = &v137 - v34;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v35);
  v165 = &v137 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v137 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v137 - v47;
  v49 = type metadata accessor for NLRouterNLParseResponse(0);
  v50 = OUTLINED_FUNCTION_35(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_2_1();
  v167 = v53;
  v54 = sub_1DC516F5C();
  v55 = OUTLINED_FUNCTION_0(v54);
  v168 = v56;
  v169 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v60 = &v137 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v61 = sub_1DC2BE518();
  v62 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.HomeAutomationRule", 33, 2, v61, v62 & 1, v60);

  v63 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(a1 + *(v63 + 32), v42, &qword_1ECC7C158, &unk_1DC5234A0);
  v64 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v42, 1, v64) == 1)
  {
    sub_1DC28EB30(v42, &qword_1ECC7C158, &unk_1DC5234A0);
    v65 = OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v65, v66, 1, v49);
LABEL_4:
    sub_1DC28EB30(v48, &qword_1ECC7C160, qword_1DC5233B0);
LABEL_5:
    v69 = v170;
    v70 = v171;
    v71 = 1;
LABEL_6:
    __swift_storeEnumTagSinglePayload(v69, v71, 1, v70);
    v72 = sub_1DC2BE518();
    sub_1DC2B8848();

    return (*(v168 + 8))(v60, v169);
  }

  sub_1DC28F358(v42, v48, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v42, type metadata accessor for NLRouterTurnProbingResult);
  v67 = OUTLINED_FUNCTION_44();
  if (__swift_getEnumTagSinglePayload(v67, v68, v49) == 1)
  {
    goto LABEL_4;
  }

  v74 = v48;
  v75 = v167;
  sub_1DC2E53A4(v74, v167);
  v76 = *(type metadata accessor for HeuristicRoutingRequest(0) + 20);
  sub_1DC32DBF4();
  if (v77)
  {
    OUTLINED_FUNCTION_4();
    sub_1DC2E5408(v75, v78);
    goto LABEL_5;
  }

  v79 = *(v166 + 16);
  v149 = a1;
  v80 = a1 + v76;
  v81 = v165;
  v82 = v171;
  v79(v165, v80, v171);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v83 = sub_1DC344464();
  v85 = v84;
  if (v83 == sub_1DC312FB4(0) && v85 == v86)
  {

    goto LABEL_19;
  }

  v88 = sub_1DC51825C();

  if (v88)
  {
LABEL_19:
    v95 = sub_1DC5157DC();
    OUTLINED_FUNCTION_4();
    sub_1DC2E5408(v167, v96);
    if (v95)
    {
      (*(v166 + 8))(v81, v82);
      v71 = 1;
      v97 = v170;
    }

    else
    {
      v97 = v170;
      (*(v166 + 32))(v170, v81, v82);
      v71 = 0;
    }

    v69 = v97;
    v70 = v82;
    goto LABEL_6;
  }

  sub_1DC344464();
  v89 = sub_1DC312F68();
  if (v89 == 4)
  {
    v90 = v160;
    v91 = OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v91, v92, 1, v82);
LABEL_18:
    sub_1DC28EB30(v90, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_19;
  }

  v90 = v160;
  sub_1DC312E7C(v89, v160);
  v93 = OUTLINED_FUNCTION_44();
  if (__swift_getEnumTagSinglePayload(v93, v94, v82) == 1)
  {
    goto LABEL_18;
  }

  v98 = v166;
  v99 = v166 + 32;
  v100 = v156;
  v146 = *(v166 + 32);
  v146(v156, v90, v82);
  v101 = v155;
  (*(v98 + 104))(v155, *MEMORY[0x1E69D02F0], v82);
  v102 = sub_1DC5157DC();
  v104 = *(v98 + 8);
  v103 = v98 + 8;
  v105 = v101;
  v106 = v104;
  result = (v104)(v105, v82);
  if ((v102 & 1) == 0)
  {
    v106(v100, v82);
    goto LABEL_19;
  }

  v144 = v106;
  v145 = v103;
  v107 = *v167;
  v108 = v159;
  v141 = *(*v167 + 16);
  if (!v141)
  {
LABEL_43:
    v144(v156, v82);
    goto LABEL_19;
  }

  v109 = 0;
  v110 = v107 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
  v148 = v161 + 16;
  v160 = (v150 + 8);
  v147 = v151 + 8;
  v150 = v161 + 8;
  v143 = v152 + 8;
  v140 = v99;
  v139 = v107;
  v138 = v110;
  v137 = v152 + 16;
  while (2)
  {
    if (v109 < *(v107 + 16))
    {
      v111 = v109;
      (*(v152 + 16))(v153, v110 + *(v152 + 72) * v109, v154);
      v142 = v111 + 1;
      result = sub_1DC5111AC();
      v112 = result;
      v113 = 0;
      v151 = *(result + 16);
      while (v151 != v113)
      {
        if (v113 >= *(v112 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        (*(v161 + 16))(v108, v112 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v113, v164);
        if (sub_1DC302F98())
        {

          v127 = OUTLINED_FUNCTION_3_6();
          v128(v127);
          v81 = v165;
          goto LABEL_47;
        }

        v114 = v162;
        sub_1DC51154C();
        v115 = sub_1DC51177C();
        v116 = *v160;
        (*v160)(v114, v163);
        if (v115)
        {
          type metadata accessor for NLRouterBypassUtils();
          v117 = v162;
          sub_1DC51154C();
          v118 = v157;
          sub_1DC51178C();
          v116(v117, v163);
          v119 = sub_1DC307E5C();
          OUTLINED_FUNCTION_37(&v174 + 8);
          v120 = v118;
          v108 = v159;
          v121(v120, v158);
          if (v119)
          {

            sub_1DC51478C();

            sub_1DC28F358(&v174, &v172, &qword_1ECC7D3F0, &qword_1DC5238B0);
            if (*(&v173 + 1))
            {
              sub_1DC514A8C();
              v122 = swift_dynamicCast();
              v81 = v165;
              if (v122)
              {

                sub_1DC28EB30(&v174, &qword_1ECC7D3F0, &qword_1DC5238B0);
                goto LABEL_46;
              }
            }

            else
            {
              OUTLINED_FUNCTION_14_4(&v172);
              v81 = v165;
            }

            v172 = v174;
            v173 = v175;
            if (*(&v175 + 1))
            {
              sub_1DC514B5C();
              if (swift_dynamicCast())
              {

LABEL_46:
                v129 = OUTLINED_FUNCTION_3_6();
                v130(v129);

LABEL_47:
                OUTLINED_FUNCTION_37(&v173);
                v131 = OUTLINED_FUNCTION_13_5();
                v132(v131);
                v133 = v155;
                v134 = v156;
                sub_1DC32DE40();
                v135 = v134;
                v82 = v171;
                v136 = v144;
                v144(v135, v171);
                v136(v81, v82);
                v146(v81, v133, v82);
                goto LABEL_19;
              }
            }

            else
            {
              OUTLINED_FUNCTION_14_4(&v172);
            }
          }
        }

        v123 = OUTLINED_FUNCTION_3_6();
        result = v124(v123);
        ++v113;
        v81 = v165;
      }

      OUTLINED_FUNCTION_37(&v173);
      v125 = OUTLINED_FUNCTION_13_5();
      v126(v125);

      v109 = v142;
      v82 = v171;
      v107 = v139;
      v110 = v138;
      if (v142 != v141)
      {
        continue;
      }

      goto LABEL_43;
    }

    break;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1DC302F98()
{
  v85 = sub_1DC51665C();
  v0 = OUTLINED_FUNCTION_0(v85);
  v82 = v1;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v4);
  v92 = sub_1DC511D8C();
  v5 = OUTLINED_FUNCTION_0(v92);
  v87 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v94 = v9;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v10);
  v93 = v79 - v11;
  v95 = sub_1DC511E1C();
  v12 = OUTLINED_FUNCTION_0(v95);
  v86 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  v83 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C860, &qword_1DC5233E8);
  OUTLINED_FUNCTION_10(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v79 - v21;
  v23 = sub_1DC510FDC();
  v24 = OUTLINED_FUNCTION_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  v96 = v29;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v79 - v31;
  v33 = sub_1DC51179C();
  v34 = OUTLINED_FUNCTION_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_15();
  v91 = v39;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v79 - v41;
  sub_1DC51154C();
  v43 = sub_1DC51177C();
  v44 = *(v36 + 8);
  v44(v42, v33);
  if ((v43 & 1) == 0)
  {
    return 0;
  }

  v80 = v22;
  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  sub_1DC51178C();
  v44(v42, v33);
  v45 = sub_1DC307E5C();
  v48 = *(v26 + 8);
  v47 = v26 + 8;
  v46 = v48;
  v48(v32, v23);
  if (!v45)
  {
    return 0;
  }

  v89 = v46;
  v90 = v47;

  sub_1DC51478C();

  sub_1DC28F358(v100, v98, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v99)
  {
    sub_1DC28EB30(v98, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v50 = v95;
LABEL_7:
    sub_1DC28F358(v100, v98, &qword_1ECC7D3F0, &qword_1DC5238B0);
    if (v99)
    {
      sub_1DC514DBC();
      if (OUTLINED_FUNCTION_9_2())
      {
        goto LABEL_9;
      }

      sub_1DC28EB30(v100, &qword_1ECC7D3F0, &qword_1DC5238B0);
    }

    else
    {
      OUTLINED_FUNCTION_14_4(v100);

      OUTLINED_FUNCTION_14_4(v98);
    }

    return 0;
  }

  sub_1DC514C5C();
  v49 = OUTLINED_FUNCTION_9_2();
  v50 = v95;
  if (!v49)
  {
    goto LABEL_7;
  }

LABEL_9:
  v79[1] = v45;

  v51 = v91;
  sub_1DC51154C();
  v52 = v96;
  sub_1DC51178C();
  v44(v51, v33);
  v53 = sub_1DC510FBC();
  result = v89(v52, v23);
  v55 = *(v53 + 16);
  v56 = v86;
  v57 = v83;
  if (!v55)
  {
LABEL_20:

    sub_1DC28EB30(v100, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v76 = 1;
    v77 = v80;
LABEL_21:
    __swift_storeEnumTagSinglePayload(v77, v76, 1, v50);
    v78 = __swift_getEnumTagSinglePayload(v77, 1, v50) != 1;
    sub_1DC28EB30(v77, &qword_1ECC7C860, &qword_1DC5233E8);
    return v78;
  }

  v58 = 0;
  v81 = 0;
  v59 = v53 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
  v96 = v86 + 16;
  LODWORD(v89) = *MEMORY[0x1E69D0BA8];
  v60 = v87++;
  v88 = (v60 + 13);
  v82 += 8;
  v61 = (v86 + 8);
  v90 = v59;
  v91 = v55;
  while (v58 < *(v53 + 16))
  {
    (*(v56 + 16))(v57, v59 + *(v56 + 72) * v58, v50);
    if (sub_1DC511DCC())
    {
      v62 = v61;
      v63 = v53;
      v64 = v93;
      sub_1DC511DAC();
      v65 = v94;
      v66 = v57;
      v67 = v92;
      (*v88)(v94, v89, v92);
      sub_1DC3037FC();
      sub_1DC5179EC();
      sub_1DC5179EC();
      v68 = *v87;
      (*v87)(v65, v67);
      v68(v64, v67);
      if (v98[0] == v97)
      {
        v53 = v63;
        v57 = v66;
        v61 = v62;
        if (sub_1DC511D9C())
        {
          v69 = v84;
          sub_1DC511E0C();
          v70 = sub_1DC51664C();
          v72 = v71;
          OUTLINED_FUNCTION_37(&v101);
          v74 = v73(v69, v85);
          v98[0] = v70;
          v98[1] = v72;
          MEMORY[0x1EEE9AC00](v74);
          v79[-2] = v98;
          v75 = v81;
          LOBYTE(v70) = sub_1DC2CF098(sub_1DC2CF174, &v79[-4], &unk_1F57F64A0);

          v59 = v90;
          v55 = v91;
          if (v70)
          {
            sub_1DC28EB30(v100, &qword_1ECC7D3F0, &qword_1DC5238B0);

            v77 = v80;
            v50 = v95;
            (*(v86 + 32))(v80, v57, v95);
            v76 = 0;
            goto LABEL_21;
          }

          v81 = v75;
          v50 = v95;
          v56 = v86;
        }

        else
        {
          v50 = v95;
          v59 = v90;
          v55 = v91;
        }
      }

      else
      {
        v50 = v95;
        v53 = v63;
        v57 = v66;
        v59 = v90;
        v55 = v91;
        v61 = v62;
      }
    }

    ++v58;
    result = (*v61)(v57, v50);
    if (v55 == v58)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}