void sub_1DC3C31F0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_202_1(v4, v5, v6, v7, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_11_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_24_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_78_8();
  v22 = *MEMORY[0x1E69D0450];
  v23 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35(v23);
  (*(v24 + 104))(v3, v22, v23);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v23);
  sub_1DC51557C();
  v28 = *(v1 + 56);
  v29 = *(v1 + 64);

  OUTLINED_FUNCTION_65_1();
  sub_1DC51553C();
  v30 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  v31 = sub_1DC510B6C();
  OUTLINED_FUNCTION_35(v31);
  (*(v32 + 16))(v2, v1 + v30, v31);
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_372(v33, v34, v35);
  sub_1DC5155AC();
  v36 = *(v1 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
  v37 = *(v1 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8);

  OUTLINED_FUNCTION_65_1();
  sub_1DC51559C();

  OUTLINED_FUNCTION_41();
  sub_1DC51554C();
  v38 = sub_1DC5162DC();
  OUTLINED_FUNCTION_35(v38);
  (*(v39 + 16))(v0, v45, v38);
  v40 = OUTLINED_FUNCTION_23_20();
  OUTLINED_FUNCTION_293(v40, v41, v42, v38);
  sub_1DC51558C();
  v43 = *v46;

  sub_1DC3C3448(v44);

  sub_1DC51555C();

  sub_1DC51556C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C3448(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4F0, &qword_1DC5285C0);
    v2 = sub_1DC51804C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);
    sub_1DC51616C();

    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4F8, &qword_1DC5285C8);
    swift_dynamicCast();
    v16 = sub_1DC2AEB04(v13, v12);
    v17 = v16;
    if (v18)
    {
      v19 = (v2[6] + 16 * v16);
      v20 = v19[1];
      *v19 = v13;
      v19[1] = v12;

      v21 = v2[7];
      v22 = *(v21 + 8 * v17);
      *(v21 + 8 * v17) = v27;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v23 = (v2[6] + 16 * v16);
      *v23 = v13;
      v23[1] = v12;
      *(v2[7] + 8 * v16) = v27;
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_20;
      }

      v2[2] = v26;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1DC3C3668()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_202_1(v4, v5, v6, v7, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_11_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_24_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_78_8();
  v22 = *MEMORY[0x1E69D0450];
  v23 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35(v23);
  (*(v24 + 104))(v3, v22, v23);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v23);
  sub_1DC51535C();
  v28 = *(v1 + 56);
  v29 = *(v1 + 64);

  OUTLINED_FUNCTION_65_1();
  sub_1DC51531C();
  v30 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  v31 = sub_1DC510B6C();
  OUTLINED_FUNCTION_35(v31);
  (*(v32 + 16))(v2, v1 + v30, v31);
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_372(v33, v34, v35);
  sub_1DC51538C();
  v36 = *(v1 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
  v37 = *(v1 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8);

  OUTLINED_FUNCTION_65_1();
  sub_1DC51537C();

  OUTLINED_FUNCTION_41();
  sub_1DC51532C();
  v38 = sub_1DC5162DC();
  OUTLINED_FUNCTION_35(v38);
  (*(v39 + 16))(v0, v45, v38);
  v40 = OUTLINED_FUNCTION_23_20();
  OUTLINED_FUNCTION_293(v40, v41, v42, v38);
  sub_1DC51536C();
  v43 = *v46;

  sub_1DC3C3448(v44);

  sub_1DC51533C();

  sub_1DC51534C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C38C0()
{
  OUTLINED_FUNCTION_33();
  v6 = v1;
  v7 = sub_1DC516F7C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_142_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23_1();
  v140 = v15;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_23_1();
  v135 = v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_1();
  v133 = v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v134 = v21;
  OUTLINED_FUNCTION_12();
  v141 = sub_1DC5162DC();
  v22 = OUTLINED_FUNCTION_0(v141);
  v139 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15();
  v132 = v26;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_62();
  v137 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8);
  OUTLINED_FUNCTION_10(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_31_3();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  v34 = OUTLINED_FUNCTION_35(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_313(v39);
  OUTLINED_FUNCTION_38_1();
  if ((*(v40 + 464))())
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_56_3();
    v41(v4);
    v42 = sub_1DC516F6C();
    v43 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_14_7(v43))
    {
      v44 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v44);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v45, v46, v47, v48, v49, 2u);
      OUTLINED_FUNCTION_31();
    }

    v50 = *(v10 + 8);
    v51 = v4;
    goto LABEL_5;
  }

  v138 = v7;
  OUTLINED_FUNCTION_43_11();
  (*(v53 + 440))();
  if (!v54)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_56_3();
    v73(v3);
    v74 = sub_1DC516F6C();
    v75 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_14_7(v75))
    {
      v76 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v76);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v77, v78, v79, v80, v81, 2u);
      OUTLINED_FUNCTION_31();
    }

    v82 = *(v10 + 8);
    v51 = OUTLINED_FUNCTION_42_2();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_43_11();
  v56 = v55 + 368;
  v130 = *(v55 + 368);
  v57 = v130();
  v58 = OUTLINED_FUNCTION_34_0();
  sub_1DC3BF988(v58, v59, v57, v60);

  v61 = OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_39(v61, v62, v33);
  if (!v63)
  {
    sub_1DC3D80AC(v2, v142);
    v83 = OUTLINED_FUNCTION_31_0();
    sub_1DC28F414(v83, v84, v85, v86);
    v87 = *(v0 + *(v33 + 48));
    v88 = *(v33 + 64);
    if (v87 == 2)
    {
      (*(v139 + 8))(v0 + v88, v141);
      v89 = sub_1DC51119C();
      OUTLINED_FUNCTION_35(v89);
      (*(v90 + 8))(v0);
      sub_1DC28D414();
      v91 = v10;
      OUTLINED_FUNCTION_70_7();
      v92(v135);

      v93 = sub_1DC516F6C();
      sub_1DC517B9C();
      OUTLINED_FUNCTION_306();
      if (OUTLINED_FUNCTION_172())
      {
LABEL_22:
        OUTLINED_FUNCTION_63();
        v100 = OUTLINED_FUNCTION_111();
        *v2 = 136315138;
        OUTLINED_FUNCTION_116_3();
        OUTLINED_FUNCTION_283();

        *(v2 + 4) = v56;
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v101, v102, v103, v104, v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v100);
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_31();
LABEL_24:

        v106 = *(v91 + 8);
        v107 = OUTLINED_FUNCTION_75();
        v108(v107);
        v109 = v142;
LABEL_29:
        sub_1DC28EB30(v109, &qword_1ECC7D320, &qword_1DC5283A0);
        goto LABEL_15;
      }
    }

    else
    {
      v2 = v139;
      v136 = *(v139 + 8);
      v136(v0 + v88, v141);
      v94 = sub_1DC51119C();
      OUTLINED_FUNCTION_2(v94);
      v96 = *(v95 + 8);
      v56 = v95 + 8;
      v97 = OUTLINED_FUNCTION_43();
      v131 = v98;
      v98(v97);
      if ((v87 & 1) == 0)
      {
        sub_1DC28F414(v142, v5, &qword_1ECC7D320, &qword_1DC5283A0);
        (*(v139 + 32))(v137, v5 + *(v33 + 64), v141);
        v131(v5);
        sub_1DC28D414();
        OUTLINED_FUNCTION_70_7();
        v110(v134);
        (*(v139 + 16))(v132, v137, v141);

        v111 = sub_1DC516F6C();
        v112 = sub_1DC517B9C();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = v112;
          v112 = OUTLINED_FUNCTION_140();
          OUTLINED_FUNCTION_143();
          *v112 = 136315394;
          OUTLINED_FUNCTION_116_3();
          OUTLINED_FUNCTION_155_0();

          *(v112 + 4) = v134;
          *(v112 + 12) = 2080;
          OUTLINED_FUNCTION_0_49();
          sub_1DC3D8E40(v114, v115);
          sub_1DC51823C();
          OUTLINED_FUNCTION_163();
          v116 = OUTLINED_FUNCTION_47_0();
          v117 = v136;
          (v136)(v116);
          v118 = OUTLINED_FUNCTION_151();
          sub_1DC291244(v118, v119, v120);
          OUTLINED_FUNCTION_155_0();

          *(v112 + 14) = v132;
          _os_log_impl(&dword_1DC287000, v111, v113, "Updating TurnContainer with turnInput for rcId: %s and userId: %s", v112, 0x16u);
          OUTLINED_FUNCTION_218_0();
          OUTLINED_FUNCTION_102();
          OUTLINED_FUNCTION_14_5();
        }

        else
        {

          v121 = OUTLINED_FUNCTION_47_0();
          v117 = v136;
          (v136)(v121);
        }

        (*(v10 + 8))(v134, v138);
        v122 = *(v6 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_turnInputManager);
        OUTLINED_FUNCTION_12_0();
        v124 = (*(v123 + 104))(v137);
        OUTLINED_FUNCTION_327(v124, OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
        v126 = *(v125 + 128);
        v127 = OUTLINED_FUNCTION_208_0();
        v128(v127);

        OUTLINED_FUNCTION_233();
        (*(v129 + 472))(1);
        v117(v137, v141);
        v109 = v112;
        goto LABEL_29;
      }

      sub_1DC28D414();
      v91 = v10;
      OUTLINED_FUNCTION_70_7();
      v99(v133);

      v93 = sub_1DC516F6C();
      sub_1DC517B9C();
      OUTLINED_FUNCTION_306();
      if (OUTLINED_FUNCTION_172())
      {
        goto LABEL_22;
      }
    }

    goto LABEL_24;
  }

  sub_1DC28EB30(v2, &qword_1ECC7D388, &unk_1DC5283E8);
  sub_1DC28D414();
  OUTLINED_FUNCTION_56_3();
  v64(v140);

  v65 = sub_1DC516F6C();
  v66 = sub_1DC517BAC();

  if (!OUTLINED_FUNCTION_301())
  {

    v50 = *(v10 + 8);
    v51 = v140;
LABEL_5:
    v52 = v7;
LABEL_14:
    v50(v51, v52);
    goto LABEL_15;
  }

  v67 = OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_143();
  *v67 = 136315394;
  OUTLINED_FUNCTION_116_3();
  OUTLINED_FUNCTION_155_0();

  *(v67 + 4) = v140;
  *(v67 + 12) = 2080;
  v69 = (v130)(v68);
  sub_1DC51763C();

  v70 = OUTLINED_FUNCTION_159();
  sub_1DC291244(v70, v71, v72);
  OUTLINED_FUNCTION_155_0();

  *(v67 + 14) = v69;
  _os_log_impl(&dword_1DC287000, v65, v66, "Not updating TurnContainer as turnInput was not found for rcId: %s turnInputsByRcId: %s", v67, 0x16u);
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_146_3();

  (*(v10 + 8))(v140, v7);
LABEL_15:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C4380()
{
  OUTLINED_FUNCTION_33();
  v4 = v0;
  v138 = v5;
  v142 = v6;
  v8 = v7;
  v9 = sub_1DC5162DC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v139 = v11;
  v141 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_1();
  v134 = v14;
  OUTLINED_FUNCTION_12();
  v15 = sub_1DC516F7C();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_53_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_23_1();
  v136 = v26;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_23_1();
  v133 = v28;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_271(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8);
  OUTLINED_FUNCTION_10(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_78_8();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  v36 = OUTLINED_FUNCTION_35(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_313(v40);
  OUTLINED_FUNCTION_38_1();
  if (((*(v41 + 464))() & 1) == 0)
  {
    OUTLINED_FUNCTION_43_11();
    v54 += 49;
    v55 = *v54;
    v56 = (*v54)();
    sub_1DC3BF988(v8, v142, v56, v3);

    OUTLINED_FUNCTION_39(v3, 1, v35);
    if (v57)
    {
      sub_1DC28EB30(v3, &qword_1ECC7D388, &unk_1DC5283E8);
      sub_1DC28D414();
      v58 = OUTLINED_FUNCTION_162_3(v18);
      v59 = v15;
      v60(v58);

      v61 = sub_1DC516F6C();
      v62 = sub_1DC517BAC();

      if (os_log_type_enabled(v61, v62))
      {
        v140 = v59;
        v63 = OUTLINED_FUNCTION_140();
        v144 = OUTLINED_FUNCTION_143();
        *v63 = 136315394;
        v64 = OUTLINED_FUNCTION_116_3();
        *(v63 + 4) = v64;
        *(v63 + 12) = 2080;
        (v55)(v64);
        sub_1DC51763C();
        OUTLINED_FUNCTION_349();

        v65 = OUTLINED_FUNCTION_46_6();
        v68 = sub_1DC291244(v65, v66, v67);

        *(v63 + 14) = v68;
        _os_log_impl(&dword_1DC287000, v61, v62, "Not updating TurnContainer as turnInput was not found for tcuId: %s turnInputsByTcuId: %s", v63, 0x16u);
        OUTLINED_FUNCTION_208_0();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_14_5();
        OUTLINED_FUNCTION_146_3();

        (*(v18 + 8))(v1, v140);
      }

      else
      {

        (*(v18 + 8))(v1, v59);
      }

      goto LABEL_25;
    }

    sub_1DC3D80AC(v3, v143);
    v69 = OUTLINED_FUNCTION_234();
    sub_1DC28F414(v69, v70, v71, v72);
    v73 = *(v2 + *(v35 + 48));
    v74 = *(v35 + 64);
    if (v73 == 2)
    {
      (*(v139 + 8))(v2 + v74, v141);
      v75 = sub_1DC51119C();
      OUTLINED_FUNCTION_35(v75);
      (*(v76 + 8))(v2);
      sub_1DC28D414();
      OUTLINED_FUNCTION_32_5();
      v77(v136);

      v78 = sub_1DC516F6C();
      sub_1DC517B9C();
      OUTLINED_FUNCTION_306();
      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_63();
        v79 = OUTLINED_FUNCTION_111();
        v144 = v79;
        *v15 = 136315138;
        *(v15 + 4) = OUTLINED_FUNCTION_116_3();
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v80, v81, v82, v83, v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v79);
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_31();
      }

      v85 = *(v18 + 8);
      v86 = OUTLINED_FUNCTION_89();
      v87(v86);
    }

    else
    {
      v137 = *(v139 + 8);
      v137(v2 + v74, v141);
      v88 = sub_1DC51119C();
      OUTLINED_FUNCTION_35(v88);
      (*(v89 + 8))(v2);
      sub_1DC28D414();
      OUTLINED_FUNCTION_70_7();
      v91 = v15;
      if ((v73 & 1) == 0)
      {
        v90();
        v103 = *(v139 + 16);
        v104 = OUTLINED_FUNCTION_357();
        v105(v104);

        v106 = sub_1DC516F6C();
        v107 = sub_1DC517B9C();

        if (os_log_type_enabled(v106, v107))
        {
          v108 = OUTLINED_FUNCTION_140();
          v144 = OUTLINED_FUNCTION_143();
          *v108 = 136315394;
          *(v108 + 4) = sub_1DC291244(v8, v142, &v144);
          *(v108 + 12) = 2080;
          OUTLINED_FUNCTION_0_49();
          sub_1DC3D8E40(v109, v110);
          sub_1DC51823C();
          v111 = OUTLINED_FUNCTION_151();
          (v137)(v111);
          v112 = OUTLINED_FUNCTION_45_0();
          sub_1DC291244(v112, v113, v114);
          OUTLINED_FUNCTION_251_0();
          *(v108 + 14) = v134;
          OUTLINED_FUNCTION_42_1();
          _os_log_impl(v115, v116, v117, v118, v119, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_114_1();
          OUTLINED_FUNCTION_31();

          (*(v18 + 8))(v135, v91);
        }

        else
        {

          v120 = OUTLINED_FUNCTION_187();
          (v137)(v120);
          v121 = *(v18 + 8);
          v122 = OUTLINED_FUNCTION_12_3();
          v124(v122, v123);
        }

        v125 = *(v4 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_turnInputManager);
        OUTLINED_FUNCTION_12_0();
        v127 = (*(v126 + 104))(v138);
        OUTLINED_FUNCTION_327(v127, OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
        v129 = *(v128 + 128);
        v130 = OUTLINED_FUNCTION_208_0();
        v131(v130);

        OUTLINED_FUNCTION_233();
        (*(v132 + 472))(1);
        v102 = v106;
        goto LABEL_24;
      }

      (v90)(v133);

      v92 = sub_1DC516F6C();
      sub_1DC517B9C();
      OUTLINED_FUNCTION_306();
      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_63();
        v93 = OUTLINED_FUNCTION_73_5();
        v144 = v93;
        *v4 = 136315138;
        *(v4 + 4) = OUTLINED_FUNCTION_116_3();
        OUTLINED_FUNCTION_27_16();
        _os_log_impl(v94, v95, v96, v97, v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v93);
        OUTLINED_FUNCTION_58();
        OUTLINED_FUNCTION_40_0();
      }

      v99 = *(v18 + 8);
      v100 = OUTLINED_FUNCTION_45_0();
      v101(v100);
    }

    v102 = v143;
LABEL_24:
    sub_1DC28EB30(v102, &qword_1ECC7D320, &qword_1DC5283A0);
    goto LABEL_25;
  }

  sub_1DC28D414();
  OUTLINED_FUNCTION_56_3();
  v42(v23);
  v43 = sub_1DC516F6C();
  v44 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_14_7(v44))
  {
    v45 = OUTLINED_FUNCTION_35_8();
    OUTLINED_FUNCTION_81_2(v45);
    OUTLINED_FUNCTION_16_0();
    _os_log_impl(v46, v47, v48, v49, v50, 2u);
    OUTLINED_FUNCTION_31();
  }

  v51 = *(v18 + 8);
  v52 = OUTLINED_FUNCTION_30();
  v53(v52);
LABEL_25:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C4CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v28 = v27;
  v30 = v29;
  v154 = v31;
  v157 = sub_1DC516F7C();
  v32 = OUTLINED_FUNCTION_0(v157);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v35 = sub_1DC51110C();
  v36 = OUTLINED_FUNCTION_2_29(v35, &a18);
  v150 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v41);
  v42 = sub_1DC51373C();
  v43 = OUTLINED_FUNCTION_0(v42);
  v152 = v44;
  v153 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8);
  OUTLINED_FUNCTION_10(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_95();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_24_0();
  v158 = sub_1DC51119C();
  v56 = OUTLINED_FUNCTION_0(v158);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_56_1();
  v62 = sub_1DC5162DC();
  v63 = OUTLINED_FUNCTION_0(v62);
  v155 = v64;
  v156 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_7_21();
  sub_1DC3D5B38(v28);
  v161 = sub_1DC51629C();
  OUTLINED_FUNCTION_109_3();
  v69 = sub_1DC3D8E40(v67, v68);
  v70 = OUTLINED_FUNCTION_295(v69);
  sub_1DC2C5FC4(v20 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionState, v70);
  v71 = *MEMORY[0x1E69D08B0];
  OUTLINED_FUNCTION_7_1(v161);
  (*(v72 + 104))(v70);
  sub_1DC51589C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  OUTLINED_FUNCTION_183();
  (*(v77 + 872))(v30, v21, v160, v23);
  sub_1DC28EB30(v23, &unk_1ECC7D3D0, &qword_1DC529550);
  __swift_destroy_boxed_opaque_existential_1Tm(v160);
  v78 = v28;
  v146 = sub_1DC515B5C();
  v80 = v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  v82 = *(v81 + 48);
  v83 = *(v81 + 64);
  v147 = *(v58 + 16);
  v84 = OUTLINED_FUNCTION_50_0();
  v85(v84);
  *(v22 + v82) = 2;
  (*(v155 + 16))(v22 + v83, v21, v156);
  v86 = OUTLINED_FUNCTION_21_12();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v81);
  OUTLINED_FUNCTION_183();
  v90 = (*(v89 + 384))(v160);
  sub_1DC3BE3B4(v22, v146, v80);
  v91 = OUTLINED_FUNCTION_242_0();
  v90(v91);
  sub_1DC51372C();
  v148 = v78;
  sub_1DC515D6C();
  OUTLINED_FUNCTION_279();
  sub_1DC515B5C();
  OUTLINED_FUNCTION_183();
  v93 = *(v92 + 864);
  OUTLINED_FUNCTION_57_5(&a14);
  v94 = OUTLINED_FUNCTION_65_1();
  v95(v94);

  sub_1DC51371C();
  OUTLINED_FUNCTION_178_1();
  v96();
  sub_1DC5136EC();
  v97 = *(v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_turnInputManager);
  OUTLINED_FUNCTION_12_0();
  v151 = v21;
  v99 = (*(v98 + 104))(v21);
  v100 = OUTLINED_FUNCTION_110(v99);
  (*(v101 + 136))(v100);
  OUTLINED_FUNCTION_149_0();

  sub_1DC5136FC();
  sub_1DC51370C();
  v102 = sub_1DC5110DC();
  OUTLINED_FUNCTION_307(v102);
  v104 = v103;
  v105 = *(v150 + 8);
  v105(v83);
  v106 = type metadata accessor for ResultCandidateNlSpeechInput();
  OUTLINED_FUNCTION_57_5(&a17);
  sub_1DC51370C();
  sub_1DC5110DC();
  OUTLINED_FUNCTION_238();
  v105(v83);
  v107 = v148;
  v108 = OUTLINED_FUNCTION_12_3();
  v110 = sub_1DC3E3608(v108, v109, v107);
  v161 = v106;
  v162 = &off_1F57FB6B0;
  v160[0] = v110;
  (*(*v26 + 432))(&v159);
  OUTLINED_FUNCTION_192();
  sub_1DC3BE548(v160, v147, v104);
  v111 = OUTLINED_FUNCTION_345();
  v26(v111);
  sub_1DC28D414();
  v112 = OUTLINED_FUNCTION_257(&a15);
  v113(v112);
  v114 = v107;
  v115 = sub_1DC516F6C();
  LOBYTE(v106) = sub_1DC517B9C();

  if (os_log_type_enabled(v115, v106))
  {
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_297();
    *v107 = 136315650;
    v116 = sub_1DC515D6C();
    OUTLINED_FUNCTION_255(v116, v117);
    OUTLINED_FUNCTION_373();
    *(v107 + 1) = v104;
    *(v107 + 6) = 2080;
    v118 = sub_1DC515B5C();
    OUTLINED_FUNCTION_255(v118, v119);
    OUTLINED_FUNCTION_91_2();
    *(v107 + 14) = v114;
    *(v107 + 11) = 2080;
    sub_1DC5138DC();
    OUTLINED_FUNCTION_362();
    OUTLINED_FUNCTION_72_6();
    swift_beginAccess();
    v120 = v153;
    v161 = v153;
    OUTLINED_FUNCTION_17_14();
    v123 = sub_1DC3D8E40(v121, v122);
    OUTLINED_FUNCTION_295(v123);
    v124 = v152;
    OUTLINED_FUNCTION_90();
    v125();
    sub_1DC5138CC();
    OUTLINED_FUNCTION_238();
    __swift_destroy_boxed_opaque_existential_1Tm(v160);
    v126 = OUTLINED_FUNCTION_12_3();
    sub_1DC291244(v126, v127, v128);
    OUTLINED_FUNCTION_251_0();
    *(v107 + 3) = v114;
    OUTLINED_FUNCTION_42_1();
    _os_log_impl(v129, v130, v131, v132, v133, 0x20u);
    OUTLINED_FUNCTION_342();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_31();

    v134 = OUTLINED_FUNCTION_352();
    v135(v134);
    v136 = OUTLINED_FUNCTION_227_0();
    v137(v136, v158);
    (*(v155 + 8))(v151, v156);
  }

  else
  {

    v138 = OUTLINED_FUNCTION_352();
    v139(v138);
    v140 = OUTLINED_FUNCTION_227_0();
    v141(v140, v158);
    (*(v155 + 8))(v151, v156);
    v124 = v152;
    v120 = v153;
  }

  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_90();
  v142(v154, v149, v120);
  v143 = *(v124 + 8);
  v144 = OUTLINED_FUNCTION_78_6();
  v145(v144);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C564C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v28 = v27;
  v158 = v29;
  v163 = sub_1DC516F7C();
  v30 = OUTLINED_FUNCTION_0(v163);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v33 = sub_1DC51110C();
  v34 = OUTLINED_FUNCTION_2_29(v33, &a17);
  v155 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v39);
  v40 = sub_1DC51373C();
  v41 = OUTLINED_FUNCTION_0(v40);
  v156 = v42;
  v157 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2_1();
  v162 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8);
  OUTLINED_FUNCTION_10(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_54_3();
  v50 = sub_1DC515F6C();
  v51 = OUTLINED_FUNCTION_0(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_1();
  v164 = sub_1DC51119C();
  v56 = OUTLINED_FUNCTION_0(v164);
  v161 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_107_0();
  v61 = sub_1DC5162DC();
  v62 = OUTLINED_FUNCTION_0(v61);
  v159 = v63;
  v160 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v66 = v28;
  sub_1DC515C5C();
  sub_1DC515C8C();
  v172 = sub_1DC51629C();
  OUTLINED_FUNCTION_109_3();
  v69 = sub_1DC3D8E40(v67, v68);
  v70 = OUTLINED_FUNCTION_295(v69);
  sub_1DC2C5FC4(v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionState, v70);
  v71 = *MEMORY[0x1E69D08B0];
  OUTLINED_FUNCTION_7_1(v172);
  (*(v72 + 104))(v70);
  OUTLINED_FUNCTION_183();
  v74 = *(v73 + 880);
  v75 = OUTLINED_FUNCTION_50_0();
  v76(v75);
  v77 = *(v53 + 8);
  v78 = OUTLINED_FUNCTION_74_0();
  v79(v78);
  __swift_destroy_boxed_opaque_existential_1Tm(v171);
  sub_1DC515B5C();
  v153 = v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  v82 = *(v81 + 48);
  v83 = *(v81 + 64);
  v154 = *(v161 + 16);
  v84 = OUTLINED_FUNCTION_73();
  v85(v84);
  *(v22 + v82) = 2;
  (*(v159 + 16))(v22 + v83, v23, v160);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v81);
  OUTLINED_FUNCTION_183();
  v90 = (*(v89 + 384))(v171);
  v91 = OUTLINED_FUNCTION_153_0();
  sub_1DC3BE3B4(v91, v92, v153);
  v93 = OUTLINED_FUNCTION_242_0();
  v90(v93);
  sub_1DC51372C();
  v94 = sub_1DC515D6C();
  v96 = v95;
  sub_1DC515B5C();
  OUTLINED_FUNCTION_183();
  v98 = *(v97 + 864);
  OUTLINED_FUNCTION_58_4(&a13);
  v99(v94, v96);

  sub_1DC51371C();
  OUTLINED_FUNCTION_178_1();
  v100();
  sub_1DC5136EC();
  v101 = *(v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_turnInputManager);
  OUTLINED_FUNCTION_12_0();
  v103 = (*(v102 + 104))(v23);
  v104 = OUTLINED_FUNCTION_110(v103);
  (*(v105 + 136))(v104);
  OUTLINED_FUNCTION_10_19();

  sub_1DC5136FC();
  sub_1DC51370C();
  v106 = sub_1DC5110DC();
  v108 = v107;
  v109 = *(v155 + 8);
  v109(v21);
  v110 = type metadata accessor for ResultCandidateNlSpeechInput();
  OUTLINED_FUNCTION_291(&a16);
  sub_1DC51370C();
  sub_1DC5110DC();
  v109(v96);
  v111 = OUTLINED_FUNCTION_234();
  v113 = sub_1DC3E3608(v111, v112, v66);
  v172 = v110;
  v173 = &off_1F57FB6B0;
  v171[0] = v113;
  (*(*v26 + 432))(&v165);
  OUTLINED_FUNCTION_192();
  sub_1DC3BE548(v171, v106, v108);
  v114 = OUTLINED_FUNCTION_345();
  v26(v114);
  sub_1DC28D414();
  v115 = OUTLINED_FUNCTION_257(&a14);
  v116(v115);
  v117 = v66;
  v118 = sub_1DC516F6C();
  LOBYTE(v106) = sub_1DC517B9C();

  if (os_log_type_enabled(v118, v106))
  {
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_297();
    v165 = 136315650;
    v119 = sub_1DC515D6C();
    OUTLINED_FUNCTION_255(v119, v120);
    OUTLINED_FUNCTION_373();
    v166 = v96;
    v167 = 2080;
    v121 = sub_1DC515B5C();
    OUTLINED_FUNCTION_255(v121, v122);
    OUTLINED_FUNCTION_91_2();
    v168 = v117;
    v169 = 2080;
    sub_1DC5138DC();
    OUTLINED_FUNCTION_362();
    v123 = v162;
    OUTLINED_FUNCTION_72_6();
    swift_beginAccess();
    v124 = v157;
    v172 = v157;
    OUTLINED_FUNCTION_17_14();
    v127 = sub_1DC3D8E40(v125, v126);
    OUTLINED_FUNCTION_295(v127);
    OUTLINED_FUNCTION_70_7();
    v128();
    sub_1DC5138CC();
    OUTLINED_FUNCTION_238();
    __swift_destroy_boxed_opaque_existential_1Tm(v171);
    v129 = OUTLINED_FUNCTION_12_3();
    sub_1DC291244(v129, v130, v131);
    OUTLINED_FUNCTION_251_0();
    v170 = v117;
    OUTLINED_FUNCTION_42_1();
    _os_log_impl(v132, v133, v134, v135, v136, 0x20u);
    OUTLINED_FUNCTION_342();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_31();

    v137 = OUTLINED_FUNCTION_352();
    v138(v137);
    v139 = OUTLINED_FUNCTION_339();
    v140(v139);
    v141 = OUTLINED_FUNCTION_338();
    v142(v141);
    v143 = v156;
  }

  else
  {

    v144 = OUTLINED_FUNCTION_352();
    v145(v144);
    v146 = OUTLINED_FUNCTION_339();
    v147(v146);
    v148 = OUTLINED_FUNCTION_338();
    v149(v148);
    v143 = v156;
    v124 = v157;
    v123 = v162;
  }

  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  (*(v143 + 16))(v158, v123, v124);
  v150 = *(v143 + 8);
  v151 = OUTLINED_FUNCTION_174();
  v152(v151);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C5FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v25;
  a20 = v26;
  v27 = v21;
  v29 = v28;
  v154 = v30;
  v144 = v31;
  v143 = v32;
  v34 = v33;
  OUTLINED_FUNCTION_57_0();
  v35 = sub_1DC516F7C();
  v36 = OUTLINED_FUNCTION_0(v35);
  v150 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_1();
  v149 = v40;
  OUTLINED_FUNCTION_12();
  v41 = sub_1DC51110C();
  v42 = OUTLINED_FUNCTION_0(v41);
  v147 = v43;
  v148 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_15();
  v146 = v46;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_23_1();
  v145 = v48;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v50);
  v51 = sub_1DC51373C();
  v52 = OUTLINED_FUNCTION_2_29(v51, &a14);
  v142 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_2_1();
  v57 = v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8);
  OUTLINED_FUNCTION_10(v58);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_95();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v62);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_31_3();
  v156 = sub_1DC51119C();
  v66 = OUTLINED_FUNCTION_0(v156);
  v152 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_42_3();
  v71 = [v34 speechPackage];
  if (!v71)
  {
    __break(1u);
    goto LABEL_10;
  }

  v72 = v71;
  v141 = v35;
  v140 = v20;
  v73 = sub_1DC3C68E4(v71);

  sub_1DC51589C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  OUTLINED_FUNCTION_144_2();
  (*(v78 + 872))(v73, v154, v29, v22);
  sub_1DC28EB30(v22, &unk_1ECC7D3D0, &qword_1DC529550);
  v151 = v34;
  sub_1DC3D7F20(v34);
  v153 = v23;
  if (!v79)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_279();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  v81 = *(v80 + 48);
  v82 = *(v80 + 64);
  v83 = *(v152 + 16);
  v83(v24, v153, v156);
  *(v24 + v81) = 2;
  v84 = sub_1DC5162DC();
  OUTLINED_FUNCTION_35(v84);
  (*(v85 + 16))(v24 + v82, v154);
  v86 = OUTLINED_FUNCTION_21_12();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v80);
  OUTLINED_FUNCTION_144_2();
  v90 = (*(v89 + 408))(v159);
  v92 = v91;
  sub_1DC3BE3B4(v24, v22, v72);
  v90(v159, 0);
  sub_1DC51372C();
  v93 = *(v27 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
  v94 = *(v27 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8);
  sub_1DC3D7F20(v151);
  if (!v95)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_308();

  v96 = *(*v27 + 864);
  OUTLINED_FUNCTION_76_1(&a16);
  v139 = v94;
  v97(v93, v94, v92, v22, v154, v143, v144);

  sub_1DC51371C();
  v98 = OUTLINED_FUNCTION_184(&a15);
  v83(v98, v153, v156);
  sub_1DC5136EC();
  v99 = *(v27 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_turnInputManager);
  OUTLINED_FUNCTION_12_0();
  v101 = (*(v100 + 104))(v154);
  v102 = OUTLINED_FUNCTION_110(v101);
  (*(v103 + 136))(v102);

  sub_1DC5136FC();
  sub_1DC51370C();
  v155 = sub_1DC5110DC();
  v105 = v104;
  v107 = v147 + 8;
  v106 = *(v147 + 8);
  v106(v145, v148);
  v108 = type metadata accessor for TurnConstructionCandidateNlSpeechInput();
  sub_1DC51370C();
  sub_1DC5110DC();
  OUTLINED_FUNCTION_238();
  v106(v146, v148);
  v109 = v151;
  v110 = OUTLINED_FUNCTION_12_3();
  v112 = sub_1DC3E3870(v110, v111, v109);
  v160 = v108;
  v161 = &off_1F57FB698;
  v159[0] = v112;
  v113 = (*(*v27 + 432))(&v158);
  sub_1DC3BE548(v159, v155, v105);
  v114 = OUTLINED_FUNCTION_345();
  v113(v114);
  v115 = sub_1DC28D414();
  (*(v150 + 16))(v149, v115, v141);
  v116 = v109;

  v117 = sub_1DC516F6C();
  LOBYTE(v109) = sub_1DC517B9C();

  if (!os_log_type_enabled(v117, v109))
  {

    v135 = *(v150 + 8);
    v136 = OUTLINED_FUNCTION_288();
    v137(v136);
    (*(v152 + 8))(v153, v156);
    OUTLINED_FUNCTION_269();
    v125 = v142;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_82();
  v157 = OUTLINED_FUNCTION_297();
  *v150 = 136315650;
  v118 = OUTLINED_FUNCTION_308();
  *(v150 + 4) = sub_1DC291244(v118, v139, v119);
  *(v150 + 12) = 2080;
  v107 = sub_1DC3D7F20(v116);
  v121 = v120;

  if (v121)
  {
    sub_1DC291244(v107, v121, &v157);
    OUTLINED_FUNCTION_91_2();
    *(v150 + 14) = v116;
    *(v150 + 22) = 2080;
    sub_1DC5138DC();
    OUTLINED_FUNCTION_362();
    OUTLINED_FUNCTION_72_6();
    swift_beginAccess();
    OUTLINED_FUNCTION_269();
    v160 = v107;
    OUTLINED_FUNCTION_17_14();
    v124 = sub_1DC3D8E40(v122, v123);
    OUTLINED_FUNCTION_295(v124);
    v125 = v142;
    OUTLINED_FUNCTION_90();
    v126();
    sub_1DC5138CC();
    OUTLINED_FUNCTION_238();
    __swift_destroy_boxed_opaque_existential_1Tm(v159);
    v127 = OUTLINED_FUNCTION_12_3();
    sub_1DC291244(v127, v128, v129);
    OUTLINED_FUNCTION_251_0();
    *(v150 + 24) = v121;
    OUTLINED_FUNCTION_42_1();
    _os_log_impl(v130, v131, v132, v133, v134, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_31();

    (*(v150 + 8))(v149, v141);
    (*(v152 + 8))(v153, v156);
LABEL_8:
    OUTLINED_FUNCTION_72_6();
    swift_beginAccess();
    OUTLINED_FUNCTION_90();
    v138(v140, v57, v107);
    (*(v125 + 8))(v57, v107);
    OUTLINED_FUNCTION_34();
    return;
  }

LABEL_12:
  __break(1u);
}

id sub_1DC3C68E4(void *a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  result = [a1 recognition];
  if (result)
  {
    v2 = result;
    AFSpeechRecognition.toNLXAsrHypotheses()();
    v4 = v3;

    sub_1DC3C9A08(v4);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DC3C6950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  v160 = v20;
  v161 = v24;
  v26 = v25;
  OUTLINED_FUNCTION_43_5(v27);
  v169 = sub_1DC516F7C();
  v28 = OUTLINED_FUNCTION_0(v169);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_1();
  v167 = v31;
  OUTLINED_FUNCTION_12();
  v32 = sub_1DC51110C();
  v33 = OUTLINED_FUNCTION_2_29(v32, &a14);
  v163 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v38);
  v168 = sub_1DC51373C();
  v39 = OUTLINED_FUNCTION_0(v168);
  v165 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_1();
  v175 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8);
  OUTLINED_FUNCTION_10(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v48);
  v177 = sub_1DC51119C();
  v49 = OUTLINED_FUNCTION_0(v177);
  v170 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_62();
  v55 = v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  OUTLINED_FUNCTION_10(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_28_13();
  v60 = sub_1DC5157FC();
  v61 = OUTLINED_FUNCTION_0(v60);
  v63 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_8();
  v68 = v66 - v67;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_56_1();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_25();
  v173 = v74;
  OUTLINED_FUNCTION_12();
  v75 = sub_1DC5162DC();
  v76 = OUTLINED_FUNCTION_0(v75);
  v78 = v77;
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_2_1();
  v172 = v81;
  sub_1DC515A6C();
  v166 = sub_1DC515B2C();
  v171 = v82;
  sub_1DC515A5C();
  sub_1DC515B3C();
  sub_1DC3BD06C();
  v158 = v83;

  v176 = v26;
  sub_1DC515B1C();
  OUTLINED_FUNCTION_39(v21, 1, v60);
  v174 = v78;
  if (v84)
  {
    sub_1DC28EB30(v21, &qword_1ECC7BF08, &unk_1DC522330);
  }

  else
  {
    v85 = *(v63 + 32);
    v86 = OUTLINED_FUNCTION_42_2();
    v85(v86);
    v87 = OUTLINED_FUNCTION_55();
    v85(v87);
    v88 = (*(v63 + 88))(v68, v60);
    v89 = *MEMORY[0x1E69D0320];
    v90 = OUTLINED_FUNCTION_328();
    v91(v90, v60);
    if (v88 == v89)
    {
      v92 = *MEMORY[0x1E69D0350];
      v93 = sub_1DC51589C();
      OUTLINED_FUNCTION_2(v93);
      v95 = v173;
      (*(v94 + 104))(v173, v92, v88);
      OUTLINED_FUNCTION_61();
      __swift_storeEnumTagSinglePayload(v96, v97, v98, v88);
      goto LABEL_7;
    }
  }

  v95 = v173;
  sub_1DC515B0C();
LABEL_7:
  OUTLINED_FUNCTION_12_0();
  (*(v99 + 872))(v158, v172, v161, v95);

  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  v101 = v75;
  v102 = *(v100 + 48);
  v103 = *(v100 + 64);
  v162 = *(v170 + 16);
  v104 = OUTLINED_FUNCTION_51();
  v105(v104);
  *(v159 + v102) = 2;
  (*(v174 + 16))(v159 + v103, v172, v101);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v100);
  OUTLINED_FUNCTION_38_1();
  v110 = (v109 + 408);
  v111 = *(v109 + 408);

  v112 = v55;
  v111(v180);
  OUTLINED_FUNCTION_192();
  sub_1DC3BE3B4(v159, v166, v171);
  v113 = OUTLINED_FUNCTION_242_0();
  v110(v113);
  sub_1DC51372C();
  sub_1DC515D6C();
  OUTLINED_FUNCTION_144_2();
  v115 = *(v114 + 864);
  OUTLINED_FUNCTION_106(&a11);
  v116();

  sub_1DC51371C();
  v117 = OUTLINED_FUNCTION_46_6();
  v162(v117);
  sub_1DC5136EC();
  v118 = *(v160 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_turnInputManager);
  OUTLINED_FUNCTION_12_0();
  v120 = (*(v119 + 104))(v172);
  v121 = OUTLINED_FUNCTION_110(v120);
  v123 = (*(v122 + 136))(v121);

  sub_1DC5136FC();
  sub_1DC51370C();
  sub_1DC5110DC();
  OUTLINED_FUNCTION_349();
  v124 = *(v163 + 8);
  v124(v111);
  v125 = type metadata accessor for TextBasedTRPCandidateNLInput();
  OUTLINED_FUNCTION_291(&a12);
  sub_1DC51370C();
  sub_1DC5110DC();
  OUTLINED_FUNCTION_163();
  v126 = OUTLINED_FUNCTION_89();
  v124(v126);
  v127 = v176;
  v128 = OUTLINED_FUNCTION_151();
  v131 = sub_1DC3E3870(v128, v129, v130);
  v181 = v125;
  v182 = &off_1F57FB6C8;
  v180[0] = v131;
  v132 = (*(*v160 + 432))(&v179);
  sub_1DC3BE548(v180, v123, v55);
  v133 = OUTLINED_FUNCTION_345();
  v132(v133);
  sub_1DC28D414();
  OUTLINED_FUNCTION_213(&a15);
  (*(v134 + 16))(v167);

  v135 = sub_1DC516F6C();
  v136 = sub_1DC517B9C();

  if (OUTLINED_FUNCTION_301())
  {
    v137 = OUTLINED_FUNCTION_82();
    v178 = swift_slowAlloc();
    *v137 = 136315650;
    *(v137 + 4) = sub_1DC291244(*(v160 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId), *(v160 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8), &v178);
    v138 = v55;
    *(v137 + 12) = 2080;
    sub_1DC291244(v166, v171, &v178);
    OUTLINED_FUNCTION_251_0();
    *(v137 + 14) = v167;
    *(v137 + 22) = 2080;
    sub_1DC5138DC();
    OUTLINED_FUNCTION_362();
    v139 = v175;
    OUTLINED_FUNCTION_72_6();
    swift_beginAccess();
    v181 = v168;
    OUTLINED_FUNCTION_17_14();
    v142 = sub_1DC3D8E40(v140, v141);
    OUTLINED_FUNCTION_295(v142);
    v143 = v165;
    OUTLINED_FUNCTION_19_1();
    v144();
    sub_1DC5138CC();
    OUTLINED_FUNCTION_137();
    __swift_destroy_boxed_opaque_existential_1Tm(v180);
    v145 = OUTLINED_FUNCTION_48_0();
    v148 = sub_1DC291244(v145, v146, v147);

    *(v137 + 24) = v148;
    _os_log_impl(&dword_1DC287000, v135, v136, "Created nluRequest for requestId=%s tcuId=%s nluRequest = %s", v137, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_67();

    (*(v112 + 8))(v167, v169);
    (*(v170 + 8))(v138, v177);
    sub_1DC28EB30(v173, &unk_1ECC7D3D0, &qword_1DC529550);
    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_319();
    v149();
  }

  else
  {

    v150 = *(v55 + 8);
    v151 = OUTLINED_FUNCTION_288();
    v152(v151);
    (*(v170 + 8))(v55, v177);
    sub_1DC28EB30(v173, &unk_1ECC7D3D0, &qword_1DC529550);
    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_319();
    v153();
    v143 = v165;
    v139 = v175;
  }

  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_19_1();
  v154(v164, v139, v168);
  v155 = *(v143 + 8);
  v156 = OUTLINED_FUNCTION_147_0();
  v157(v156);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C7504()
{
  OUTLINED_FUNCTION_33();
  v90 = v0;
  v3 = v2;
  v82 = v4;
  v6 = v5;
  v7 = sub_1DC510B6C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v85 = v9;
  v86 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v83 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D350, &unk_1DC52EF90);
  OUTLINED_FUNCTION_10(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25();
  v87 = v17;
  OUTLINED_FUNCTION_12();
  v84 = sub_1DC510F3C();
  v18 = OUTLINED_FUNCTION_0(v84);
  v81 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v22 = sub_1DC5162DC();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_9_24();
  v28 = sub_1DC516F7C();
  v88 = OUTLINED_FUNCTION_0(v28);
  v89 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_15();
  v80 = v32;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_55_2();
  sub_1DC5110FC();

  MEMORY[0x1E1296160](58, 0xE100000000000000);

  v34 = OUTLINED_FUNCTION_42_2();
  MEMORY[0x1E1296160](v34);

  sub_1DC5110EC();
  OUTLINED_FUNCTION_299();
  sub_1DC51108C();
  if (v3)
  {

    sub_1DC5110BC();
  }

  v35 = v89;
  v36 = v88;
  if (*(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_isMUXEnabled) == 1)
  {
    sub_1DC5162BC();
    sub_1DC5110CC();
    sub_1DC28D414();
    OUTLINED_FUNCTION_56_3();
    v78 = v38;
    v79 = v37;
    (v38)(v1);
    v39 = *(v25 + 16);
    v40 = OUTLINED_FUNCTION_55();
    v41(v40);
    v42 = sub_1DC516F6C();
    v43 = sub_1DC517B9C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_63();
      v91 = OUTLINED_FUNCTION_82();
      *v44 = 136315138;
      OUTLINED_FUNCTION_0_49();
      sub_1DC3D8E40(v45, v46);
      v47 = sub_1DC51823C();
      v48 = v6;
      v50 = v49;
      v51 = *(v25 + 8);
      v52 = OUTLINED_FUNCTION_153_0();
      v53(v52);
      v54 = OUTLINED_FUNCTION_98_5();
      sub_1DC291244(v54, v50, v55);
      OUTLINED_FUNCTION_162();
      v6 = v48;
      v35 = v89;

      *(v44 + 4) = v47;
      _os_log_impl(&dword_1DC287000, v42, v43, "Sending userId: %s to NLX", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v91);
      OUTLINED_FUNCTION_14_5();
      v36 = v88;
      OUTLINED_FUNCTION_66();
    }

    else
    {

      v56 = *(v25 + 8);
      v57 = OUTLINED_FUNCTION_153_0();
      v58(v57);
    }

    v59 = *(v35 + 8);
    v60 = OUTLINED_FUNCTION_121_0();
    v59(v60);
    v61 = *(v90 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_userIdDict);
    if (v61)
    {
      v62 = sub_1DC3BF940(v82, v61);
      if (v62)
      {
        v63 = sub_1DC3D7F84(v62, &selRef_loggableMultiUserSharedUserId);
        if (v64)
        {
          v65 = v63;

          OUTLINED_FUNCTION_30();
          sub_1DC51109C();
          v78(v80, v79, v36);

          v66 = sub_1DC516F6C();
          v67 = sub_1DC517B9C();

          if (OUTLINED_FUNCTION_302())
          {
            OUTLINED_FUNCTION_63();
            v92 = OUTLINED_FUNCTION_111();
            *v6 = 136315138;
            v68 = OUTLINED_FUNCTION_30();
            sub_1DC291244(v68, v69, v70);
            OUTLINED_FUNCTION_1_31();

            *(v6 + 4) = v65;
            _os_log_impl(&dword_1DC287000, v66, v67, "Sending loggableSharedUserId: %s to NLX", v6, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v92);
            OUTLINED_FUNCTION_54_12();
            OUTLINED_FUNCTION_66();

            v71 = OUTLINED_FUNCTION_54_4();
          }

          else
          {

            v71 = OUTLINED_FUNCTION_45_0();
          }

          v59(v71);
        }
      }
    }
  }

  sub_1DC510B5C();
  sub_1DC5138EC();
  (*(v85 + 8))(v83, v86);
  v72 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v72, v73, v84);
  if (v74)
  {
    sub_1DC510F2C();
    OUTLINED_FUNCTION_30_8(v87);
    if (!v74)
    {
      sub_1DC28EB30(v87, &unk_1ECC7D350, &unk_1DC52EF90);
    }
  }

  else
  {
    v75 = *(v81 + 32);
    v76 = OUTLINED_FUNCTION_31_0();
    v77(v76);
  }

  sub_1DC5110AC();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C7B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3E0, &qword_1DC528418);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25();
  v81 = v9;
  OUTLINED_FUNCTION_12();
  v80 = sub_1DC511AAC();
  v10 = OUTLINED_FUNCTION_0(v80);
  v78 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v77 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v76 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25();
  v83 = v21;
  OUTLINED_FUNCTION_12();
  v85 = sub_1DC51589C();
  v22 = OUTLINED_FUNCTION_0(v85);
  v79 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_1();
  v82 = v26;
  OUTLINED_FUNCTION_12();
  v86 = sub_1DC510AFC();
  v27 = OUTLINED_FUNCTION_0(v86);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v32 = sub_1DC51107C();
  v33 = OUTLINED_FUNCTION_0(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_7_21();
  v38 = sub_1DC5112EC();
  v39 = OUTLINED_FUNCTION_0(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_38_1();
  (*(v43 + 888))(a2, a3);
  sub_1DC51118C();

  sub_1DC51111C();
  sub_1DC51129C();
  sub_1DC51102C();
  (*(v35 + 8))(v4, v32);
  sub_1DC51115C();
  OUTLINED_FUNCTION_70_7();
  v44 = OUTLINED_FUNCTION_16();
  v45(v44);
  sub_1DC51113C();
  sub_1DC510AEC();
  sub_1DC510AAC();
  v46 = *(v29 + 8);
  v47 = OUTLINED_FUNCTION_357();
  v48(v47);
  v49 = OUTLINED_FUNCTION_268(1000.0);
  if (!(v50 ^ v51 | v63))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v49 <= -1.0)
  {
    goto LABEL_12;
  }

  if (v49 >= 1.84467441e19)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1DC51114C();
  v52 = v83;
  sub_1DC28F414(a4, v83, &unk_1ECC7D3D0, &qword_1DC529550);
  v53 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v53, v54, v85);
  if (v63)
  {
    v55 = OUTLINED_FUNCTION_210_1();
    v56(v55, v38);
    v57 = &unk_1ECC7D3D0;
    v58 = &qword_1DC529550;
  }

  else
  {
    OUTLINED_FUNCTION_278();
    v59 = OUTLINED_FUNCTION_31_0();
    v60(v59);
    v52 = v81;
    sub_1DC3F495C();
    v61 = OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_39(v61, v62, v80);
    if (!v63)
    {
      OUTLINED_FUNCTION_278();
      OUTLINED_FUNCTION_112_1();
      v69();
      OUTLINED_FUNCTION_44_8();
      v70(v77, v76, v80);
      sub_1DC51116C();
      v71 = *(v78 + 8);
      v72 = OUTLINED_FUNCTION_314();
      v73(v72);
      (*(v79 + 8))(v82, v85);
      v74 = OUTLINED_FUNCTION_210_1();
      v75(v74, v38);
      return;
    }

    v64 = *(v79 + 8);
    v65 = OUTLINED_FUNCTION_234();
    v66(v65);
    v67 = OUTLINED_FUNCTION_210_1();
    v68(v67, v38);
    v57 = &unk_1ECC7D3E0;
    v58 = &qword_1DC528418;
  }

  sub_1DC28EB30(v52, v57, v58);
}

void sub_1DC3C80A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_57_0();
  v5 = sub_1DC510AFC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v38 = v7;
  v39 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v10 = sub_1DC51107C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v16 = sub_1DC5112EC();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_38_1();
  (*(v23 + 888))(a2, a3);
  sub_1DC51118C();
  sub_1DC51129C();
  sub_1DC51102C();
  v24 = *(v13 + 8);
  v25 = OUTLINED_FUNCTION_176();
  v26(v25);
  OUTLINED_FUNCTION_235_0();
  sub_1DC51115C();
  v27 = OUTLINED_FUNCTION_162_3(v19);
  v28(v27, v4, v16);
  sub_1DC51113C();
  sub_1DC510AEC();
  sub_1DC510AAC();
  (*(v38 + 8))(v3, v39);
  v29 = OUTLINED_FUNCTION_268(1000.0);
  if (!(v31 ^ v32 | v30))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v29 <= -1.0)
  {
    goto LABEL_6;
  }

  if (v29 < 1.84467441e19)
  {
    sub_1DC51114C();
    v33 = *(v19 + 8);
    v34 = OUTLINED_FUNCTION_35_0();
    v35(v34);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1DC3C8348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v24;
  a20 = v25;
  v288 = v26;
  v28 = v27;
  OUTLINED_FUNCTION_43_5(v29);
  v277 = *v20;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFE0, &unk_1DC5253A0);
  OUTLINED_FUNCTION_10(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v34);
  v35 = sub_1DC5167EC();
  v36 = OUTLINED_FUNCTION_2_29(v35, &v289);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  v42 = OUTLINED_FUNCTION_10(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v46);
  v47 = sub_1DC51190C();
  v48 = OUTLINED_FUNCTION_2_29(v47, &a18);
  v266 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v56);
  v281 = sub_1DC51620C();
  v57 = OUTLINED_FUNCTION_0(v281);
  v287 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_2_1();
  v280 = v61;
  OUTLINED_FUNCTION_12();
  v62 = sub_1DC51107C();
  v63 = OUTLINED_FUNCTION_2_29(v62, &a15);
  v273 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_94_1();
  v68 = sub_1DC5162DC();
  v69 = OUTLINED_FUNCTION_0(v68);
  v71 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_38_3();
  v75 = sub_1DC516F7C();
  v76 = OUTLINED_FUNCTION_0(v75);
  v78 = v77;
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_56_1();
  sub_1DC28D414();
  OUTLINED_FUNCTION_4_2();
  v282 = v75;
  v283 = v88;
  v284 = v90;
  v285 = v89;
  v90(v22);
  OUTLINED_FUNCTION_19_1();
  v279 = v28;
  v268 = v91;
  (v91)(v23, v28, v68);
  v92 = sub_1DC516F6C();
  v93 = sub_1DC517B9C();
  v278 = v21;
  v274 = v78;
  if (os_log_type_enabled(v92, v93))
  {
    v94 = OUTLINED_FUNCTION_63();
    v95 = OUTLINED_FUNCTION_82();
    v290[0] = v95;
    *v94 = 136315138;
    OUTLINED_FUNCTION_0_49();
    sub_1DC3D8E40(v96, v97);
    sub_1DC51823C();
    OUTLINED_FUNCTION_193();
    v98 = *(v71 + 8);
    v99 = OUTLINED_FUNCTION_77_1();
    v269 = v100;
    v100(v99);
    v101 = OUTLINED_FUNCTION_74();
    v104 = sub_1DC291244(v101, v102, v103);
    OUTLINED_FUNCTION_232();

    *(v94 + 4) = v104;
    _os_log_impl(&dword_1DC287000, v92, v93, "Creating NLXTurnContext for userId:%s", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v95);
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_114_1();
  }

  else
  {

    v105 = *(v71 + 8);
    v106 = OUTLINED_FUNCTION_77_1();
    v269 = v107;
    v107(v106);
  }

  v108 = v282;
  v286 = *(v274 + 8);
  (v286)(v22, v282);
  sub_1DC51106C();
  v109 = v279;
  sub_1DC34A028();
  v111 = v110;
  OUTLINED_FUNCTION_132_1();
  v112();

  v113 = sub_1DC516F6C();
  v114 = sub_1DC517B9C();

  if (os_log_type_enabled(v113, v114))
  {
    OUTLINED_FUNCTION_63();
    v115 = OUTLINED_FUNCTION_115_4();
    v290[0] = v115;
    *v282 = 136315138;
    v116 = sub_1DC5119DC();
    v117 = MEMORY[0x1E12962D0](v111, v116);
    v119 = sub_1DC291244(v117, v118, v290);
    v109 = v279;

    *(v108 + 1) = v119;
    OUTLINED_FUNCTION_128_0(&dword_1DC287000, v120, v114, "From SessionState systemDialogActs: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v115);
    OUTLINED_FUNCTION_232();
    OUTLINED_FUNCTION_66();
    v108 = v282;
    OUTLINED_FUNCTION_66();
  }

  v121 = OUTLINED_FUNCTION_187();
  v286(v121);
  sub_1DC51105C();
  OUTLINED_FUNCTION_20_14(v288);
  v122 = *MEMORY[0x1E69D07B8];
  v276 = v287[13];
  v277 = v287 + 13;
  v276(v280, v122, v281);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_201_0();
  sub_1DC5162AC();
  v123 = v287[1];
  v124 = OUTLINED_FUNCTION_146_1();
  ++v287;
  v275 = v125;
  v125(v124);
  if (v291)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEA8, &qword_1DC52A880);
    OUTLINED_FUNCTION_252();
    if (swift_dynamicCast())
    {
      v126 = v289;
    }

    else
    {
      v126 = 0;
    }
  }

  else
  {
    sub_1DC28EB30(v290, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v126 = 0;
  }

  OUTLINED_FUNCTION_132_1();
  v127();

  v128 = sub_1DC516F6C();
  v129 = sub_1DC517B9C();

  if (os_log_type_enabled(v128, v129))
  {
    OUTLINED_FUNCTION_63();
    v130 = OUTLINED_FUNCTION_115_4();
    v289 = v126;
    v290[0] = v130;
    *v108 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D400, &unk_1DC528420);
    v131 = sub_1DC51777C();
    v133 = sub_1DC291244(v131, v132, v290);
    OUTLINED_FUNCTION_232();

    *(v108 + 1) = v133;
    v109 = v279;
    OUTLINED_FUNCTION_128_0(&dword_1DC287000, v134, v129, "From SessionState activeTasks: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v130);
    OUTLINED_FUNCTION_14_5();
    v108 = v282;
    OUTLINED_FUNCTION_66();
  }

  v135 = OUTLINED_FUNCTION_34_0();
  v286(v135);
  sub_1DC51100C();
  OUTLINED_FUNCTION_20_14(v288);
  v136 = v281;
  v276(v280, *MEMORY[0x1E69D07C8], v281);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_201_0();
  sub_1DC5162AC();
  v137 = OUTLINED_FUNCTION_146_1();
  v275(v137);
  if (v291)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEA8, &qword_1DC52A880);
    OUTLINED_FUNCTION_252();
    if (swift_dynamicCast())
    {
      v138 = v289;
    }

    else
    {
      v138 = 0;
    }
  }

  else
  {
    sub_1DC28EB30(v290, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v138 = 0;
  }

  OUTLINED_FUNCTION_132_1();
  v139();

  v140 = sub_1DC516F6C();
  v141 = sub_1DC517B9C();

  if (os_log_type_enabled(v140, v141))
  {
    OUTLINED_FUNCTION_63();
    v142 = OUTLINED_FUNCTION_117();
    v289 = v138;
    v290[0] = v142;
    *v281 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D400, &unk_1DC528420);
    v143 = sub_1DC51777C();
    v145 = sub_1DC291244(v143, v144, v290);
    OUTLINED_FUNCTION_232();

    *(v136 + 1) = v145;
    v109 = v279;
    OUTLINED_FUNCTION_28_8();
    _os_log_impl(v146, v147, v148, v149, v136, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v142);
    v108 = v282;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_58();
  }

  v150 = OUTLINED_FUNCTION_46_0();
  v286(v150);
  sub_1DC51101C();
  OUTLINED_FUNCTION_184(&a17);
  OUTLINED_FUNCTION_132_1();
  v151();
  v152 = OUTLINED_FUNCTION_51();
  v268(v152);
  v153 = sub_1DC516F6C();
  v154 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_197_0(v154))
  {
    OUTLINED_FUNCTION_63();
    v290[0] = OUTLINED_FUNCTION_111();
    *v141 = 136315138;
    OUTLINED_FUNCTION_0_49();
    sub_1DC3D8E40(v155, v156);
    sub_1DC51823C();
    OUTLINED_FUNCTION_62_7(&a10);
    v157 = OUTLINED_FUNCTION_234();
    v269(v157);
    v158 = OUTLINED_FUNCTION_212();
    v161 = sub_1DC291244(v158, v159, v160);
    OUTLINED_FUNCTION_232();

    *(v141 + 4) = v161;
    OUTLINED_FUNCTION_42_1();
    _os_log_impl(v162, v163, v164, v165, v166, 0xCu);
    OUTLINED_FUNCTION_53_12();
    OUTLINED_FUNCTION_31();

    v167 = v272;
    v168 = v108;
    v109 = v279;
  }

  else
  {

    OUTLINED_FUNCTION_62_7(&a10);
    v169 = OUTLINED_FUNCTION_176();
    v269(v169);
    v167 = OUTLINED_FUNCTION_151();
  }

  (v286)(v167, v168);
  OUTLINED_FUNCTION_325();
  OUTLINED_FUNCTION_205_1();
  OUTLINED_FUNCTION_12_0();
  (*(v170 + 896))(v109);
  sub_1DC51103C();
  sub_1DC5112DC();
  v171 = *(v273 + 16);
  v172 = OUTLINED_FUNCTION_46_6();
  v173(v172);
  sub_1DC5112AC();
  OUTLINED_FUNCTION_20_14(v288);
  v276(v280, *MEMORY[0x1E69D07E8], v281);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_201_0();
  sub_1DC5162AC();
  v174 = OUTLINED_FUNCTION_121_0();
  v275(v174);
  if (v291)
  {
    OUTLINED_FUNCTION_184(&a14);
    v175 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v271, v175 ^ 1u, 1, v154);
    v176 = OUTLINED_FUNCTION_34_11();
    OUTLINED_FUNCTION_39(v176, v177, v154);
    if (!v178)
    {
      v179 = v266[4];
      v180 = OUTLINED_FUNCTION_43();
      v181(v180);
      v182 = OUTLINED_FUNCTION_184(&v286);
      v284(v182, v283, v282);
      v183 = v266[2];
      v184 = OUTLINED_FUNCTION_147_0();
      (v183)(v184);
      v185 = sub_1DC516F6C();
      v186 = sub_1DC517B9C();
      if (OUTLINED_FUNCTION_197_0(v186))
      {
        v187 = OUTLINED_FUNCTION_63();
        v288 = OUTLINED_FUNCTION_82();
        v290[0] = v288;
        *v187 = 136315138;
        v188 = OUTLINED_FUNCTION_212();
        (v183)(v188);
        OUTLINED_FUNCTION_50_0();
        sub_1DC51777C();
        OUTLINED_FUNCTION_194();
        v287 = v183;
        v189 = v266[1];
        v189();
        v190 = OUTLINED_FUNCTION_42_2();
        sub_1DC291244(v190, v191, v192);
        OUTLINED_FUNCTION_283();
        OUTLINED_FUNCTION_205_1();

        *(v187 + 4) = v154;
        OUTLINED_FUNCTION_325();
        v193 = v186;
        v194 = v287;
        _os_log_impl(&dword_1DC287000, v185, v193, "From SessionState legacyNLContext: %s", v187, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v288);
        OUTLINED_FUNCTION_232();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_42();

        OUTLINED_FUNCTION_204_1();
        v195 = OUTLINED_FUNCTION_246_0();
        v196(v195);
      }

      else
      {

        v194 = v183;
        v189 = v266[1];
        v232 = OUTLINED_FUNCTION_50_0();
        (v189)(v232);
        v233 = OUTLINED_FUNCTION_184_1();
        (v286)(v233, v282);
      }

      OUTLINED_FUNCTION_159_0(&v287);
      v194();
      sub_1DC5112CC();
      (v189)(v185, v154);
      goto LABEL_47;
    }
  }

  else
  {
    sub_1DC28EB30(v290, &qword_1ECC7D3F0, &qword_1DC5238B0);
    OUTLINED_FUNCTION_184(&a14);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v197, v198, v199, v154);
  }

  sub_1DC28EB30(v271, &unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_20_14(v288);
  v200 = v280;
  v276(v280, *MEMORY[0x1E69D07D0], v281);
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_201_0();
  sub_1DC5162AC();
  v201 = OUTLINED_FUNCTION_45_0();
  v275(v201);
  if (!v291)
  {
    v207 = OUTLINED_FUNCTION_62_10();
    v208(v207);
    sub_1DC28EB30(v290, &qword_1ECC7D3F0, &qword_1DC5238B0);
    OUTLINED_FUNCTION_83(&v288);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v209, v210, v211, v267);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_83(&v288);
  v202 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v270, v202 ^ 1u, 1, v267);
  v203 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v203, v204, v267);
  if (v178)
  {
    v205 = OUTLINED_FUNCTION_62_10();
    v206(v205);
LABEL_33:
    v212 = &qword_1ECC7BFE0;
    v213 = &unk_1DC5253A0;
    v214 = v270;
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_196_1(&v283);
  (*(v215 + 32))();
  v216 = OUTLINED_FUNCTION_184(&v281);
  v284(v216, v283, v282);
  OUTLINED_FUNCTION_90();
  v217 = OUTLINED_FUNCTION_238_0();
  v218(v217);
  v219 = sub_1DC516F6C();
  sub_1DC517B9C();
  OUTLINED_FUNCTION_116();
  if (os_log_type_enabled(v219, v220))
  {
    OUTLINED_FUNCTION_63();
    v154 = OUTLINED_FUNCTION_111();
    v290[0] = v154;
    *v263 = 136315138;
    sub_1DC3D8E40(&qword_1ECC7D3F8, MEMORY[0x1E69CE670]);
    sub_1DC51823C();
    OUTLINED_FUNCTION_163();
    v222 = *(v200 + 8);
    v222();
    v223 = OUTLINED_FUNCTION_151();
    sub_1DC291244(v223, v224, v225);
    OUTLINED_FUNCTION_155_0();
    OUTLINED_FUNCTION_205_1();

    *(v263 + 4) = v263;
    OUTLINED_FUNCTION_42_1();
    _os_log_impl(v226, v227, v228, v229, v230, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v154);
    OUTLINED_FUNCTION_325();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_31();

    OUTLINED_FUNCTION_204_1();
    v231 = v265;
  }

  else
  {

    v222 = *(v280 + 8);
    v234 = OUTLINED_FUNCTION_358();
    (v222)(v234);
    v231 = OUTLINED_FUNCTION_184_1();
  }

  (v286)(v231, v282);
  OUTLINED_FUNCTION_58_4(&v278);
  sub_1DC5167CC();
  v235 = OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_39(v235, v236, v154);
  if (!v178)
  {
    v288 = v222;
    OUTLINED_FUNCTION_76_1(&v284);
    v241 = *(v240 + 32);
    v242 = OUTLINED_FUNCTION_63_0();
    v243(v242);
    v244 = OUTLINED_FUNCTION_184(&v277);
    v284(v244, v283, v282);
    v245 = *(v267 + 16);
    (v245)(v262, v264, v154);
    v246 = sub_1DC516F6C();
    v247 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_197_0(v247))
    {
      v249 = OUTLINED_FUNCTION_63();
      v287 = OUTLINED_FUNCTION_82();
      v290[0] = v287;
      *v249 = 136315138;
      OUTLINED_FUNCTION_181_0();
      (v245)(v262, v262, v154);
      OUTLINED_FUNCTION_174();
      sub_1DC51777C();
      OUTLINED_FUNCTION_194();
      v285 = v245;
      v250 = *(v267 + 8);
      v250();
      v251 = OUTLINED_FUNCTION_42_2();
      sub_1DC291244(v251, v252, v253);
      OUTLINED_FUNCTION_283();
      OUTLINED_FUNCTION_205_1();

      *(v249 + 4) = v154;
      OUTLINED_FUNCTION_325();
      _os_log_impl(&dword_1DC287000, v246, v247, "From PommesContext legacyNLContext: %s", v249, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v287);
      OUTLINED_FUNCTION_66();
      v254 = v285;
      OUTLINED_FUNCTION_66();

      OUTLINED_FUNCTION_204_1();
      v255 = OUTLINED_FUNCTION_246_0();
      v256(v255);
    }

    else
    {

      v254 = v245;
      v250 = *(v267 + 8);
      v257 = OUTLINED_FUNCTION_174();
      (v250)(v257);
      OUTLINED_FUNCTION_204_1();
      v258 = OUTLINED_FUNCTION_246_0();
      v259(v258);
      OUTLINED_FUNCTION_181_0();
    }

    OUTLINED_FUNCTION_159_0(&v279);
    v254();
    sub_1DC5112CC();
    (v250)(v246, v154);
    OUTLINED_FUNCTION_62_7(&v283);
    (v288)();
LABEL_47:
    v260 = OUTLINED_FUNCTION_62_10();
    v261(v260);
    goto LABEL_48;
  }

  v237 = OUTLINED_FUNCTION_121_0();
  (v222)(v237);
  v238 = OUTLINED_FUNCTION_62_10();
  v239(v238);
  v212 = &unk_1ECC7D3A0;
  v213 = &unk_1DC522560;
  v214 = v263;
LABEL_34:
  sub_1DC28EB30(v214, v212, v213);
LABEL_48:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3C98D8()
{
  OUTLINED_FUNCTION_12_0();
  (*(v0 + 344))(v7);
  v1 = v7[4];
  OUTLINED_FUNCTION_121_1(v7, v7[3]);
  v2 = *(v1 + 24);
  v3 = OUTLINED_FUNCTION_63_0();
  v5 = v4(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v5;
}

uint64_t sub_1DC3C9970()
{
  v0 = OUTLINED_FUNCTION_63_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_54_3();
  sub_1DC51713C();
  OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  sub_1DC2C8CC4();
  OUTLINED_FUNCTION_112_1();
  return sub_1DC28EB30(v10, v11, v12);
}

int64_t sub_1DC3C9A08(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DC3D75CC(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1DC51141C();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1DC3C9B08()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1DC516F7C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v74 = v9;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v73 = v11;
  OUTLINED_FUNCTION_12();
  v12 = sub_1DC51110C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_24();
  v16 = sub_1DC5137CC();
  v17 = OUTLINED_FUNCTION_0(v16);
  v75 = v18;
  v76 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x78))();
  sub_1DC51379C();
  sub_1DC5110DC();
  v24 = OUTLINED_FUNCTION_328();
  v25(v24, v12);
  OUTLINED_FUNCTION_343();
  v27 = (*(v26 + 416))();
  v28 = OUTLINED_FUNCTION_176();
  sub_1DC3BFA68(v28, v29, v27, v30);

  if (v79)
  {

    sub_1DC28F9B0(&v78, v80);
    v31 = v80[4];
    __swift_project_boxed_opaque_existential_1(v80, v80[3]);
    v32 = *(v31 + 8);
    v33 = OUTLINED_FUNCTION_23_2();
    if (v34(v33, v31))
    {
      sub_1DC2C5FC4(v80, &v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D328, &qword_1DC5283A8);
      OUTLINED_FUNCTION_155();
      type metadata accessor for TurnConstructionCandidateNlSpeechInput();
      if (OUTLINED_FUNCTION_156_0())
      {
        OUTLINED_FUNCTION_223_1();
        v36 = *(v35 + 920);
        v37 = OUTLINED_FUNCTION_229();
        v38(v37);
      }

      else
      {
        sub_1DC2C5FC4(v80, &v78);
        type metadata accessor for TextBasedTRPCandidateNLInput();
        if ((OUTLINED_FUNCTION_156_0() & 1) == 0)
        {
          sub_1DC28D414();
          OUTLINED_FUNCTION_56_3();
          v61(v73);
          v62 = sub_1DC516F6C();
          v63 = sub_1DC517BAC();
          if (OUTLINED_FUNCTION_14_7(v63))
          {
            v64 = OUTLINED_FUNCTION_35_8();
            OUTLINED_FUNCTION_18_12(v64);
            OUTLINED_FUNCTION_27_16();
            _os_log_impl(v65, v66, v67, v68, v69, 2u);
            OUTLINED_FUNCTION_40_0();
          }

          v70 = *(v6 + 8);
          v71 = OUTLINED_FUNCTION_77_1();
          v72(v71);
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_223_1();
        v54 = *(v53 + 928);
        v55 = OUTLINED_FUNCTION_229();
        v56(v55);
      }
    }

    else
    {
      sub_1DC2C5FC4(v80, &v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D328, &qword_1DC5283A8);
      OUTLINED_FUNCTION_155();
      type metadata accessor for ResultCandidateNlSpeechInput();
      if (OUTLINED_FUNCTION_156_0())
      {
        v47 = *(*v77 + 120);

        v49 = v47(v48);
      }

      else
      {
        v49 = 0;
      }

      OUTLINED_FUNCTION_223_1();
      v58 = *(v57 + 936);
      v59 = OUTLINED_FUNCTION_159();
      v60(v59);
    }

LABEL_16:
    (*(v75 + 8))(v23, v76);
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    goto LABEL_17;
  }

  sub_1DC28EB30(&v78, &qword_1ECC7D410, &qword_1DC528430);
  sub_1DC28D414();
  OUTLINED_FUNCTION_56_3();
  v39(v74);

  v40 = sub_1DC516F6C();
  v41 = sub_1DC517BAC();

  if (os_log_type_enabled(v40, v41))
  {
    OUTLINED_FUNCTION_63();
    v42 = OUTLINED_FUNCTION_73_5();
    v80[0] = v42;
    *v0 = 136315138;
    v43 = OUTLINED_FUNCTION_176();
    v46 = sub_1DC291244(v43, v44, v45);

    *(v0 + 4) = v46;
    OUTLINED_FUNCTION_236_0(&dword_1DC287000, v40, v41, "NLU Response received for unknown requestId: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_40_0();
  }

  else
  {
  }

  v50 = *(v6 + 8);
  v51 = OUTLINED_FUNCTION_314();
  v52(v51);
  (*(v75 + 8))(v23, v76);
LABEL_17:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3CA270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v25;
  a20 = v26;
  v604 = v21;
  v28 = v27;
  v600 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D390, &qword_1DC527790);
  OUTLINED_FUNCTION_10(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v39);
  v40 = sub_1DC511E5C();
  v41 = OUTLINED_FUNCTION_2_29(v40, &v602);
  v572 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_10(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFB0, qword_1DC526050);
  OUTLINED_FUNCTION_10(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v55);
  v56 = sub_1DC51107C();
  v57 = OUTLINED_FUNCTION_2_29(v56, &v593);
  v566 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v61);
  v62 = sub_1DC5112EC();
  v63 = OUTLINED_FUNCTION_2_29(v62, &v595);
  v568 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_62();
  v69 = OUTLINED_FUNCTION_14(v68);
  v570 = type metadata accessor for DialogState(v69);
  v70 = OUTLINED_FUNCTION_35(v570);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v73);
  v74 = sub_1DC5168FC();
  v75 = OUTLINED_FUNCTION_2_29(v74, &v607);
  v578 = v76;
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v79);
  v80 = sub_1DC5162DC();
  v81 = OUTLINED_FUNCTION_2_29(v80, &a9);
  v579 = v82;
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8);
  v87 = OUTLINED_FUNCTION_10(v86);
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v91);
  v591 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  v92 = OUTLINED_FUNCTION_35(v591);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v97);
  v593 = sub_1DC51172C();
  v98 = OUTLINED_FUNCTION_0(v593);
  v587 = v99;
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_2_1();
  v592 = v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D420, &unk_1DC528440);
  OUTLINED_FUNCTION_10(v103);
  v105 = *(v104 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v107);
  v597 = sub_1DC51170C();
  v108 = OUTLINED_FUNCTION_0(v597);
  v595 = v109;
  v111 = *(v110 + 64);
  v112 = MEMORY[0x1EEE9AC00](v108);
  v596 = &v554 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v576 = v113;
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_62();
  v594 = v114;
  OUTLINED_FUNCTION_12();
  v115 = sub_1DC516F7C();
  v116 = OUTLINED_FUNCTION_0(v115);
  v118 = v117;
  v120 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_23_1();
  v590 = v123;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_56_1();
  v129 = sub_1DC5137CC();
  v130 = OUTLINED_FUNCTION_0(v129);
  v132 = v131;
  v134 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v138);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_55_2();
  v141 = (*((*MEMORY[0x1E69E7D40] & *v28) + 0x78))();
  v601 = v24;
  v602 = v132;
  if (v600)
  {
    v598 = v118;
    v599 = v129;
    v603 = v115;
    MEMORY[0x1EEE9AC00](v141);
    v143 = v142;
    v144 = v604;
    *(&v554 - 4) = v142;
    *(&v554 - 3) = v144;
    *(&v554 - 2) = v24;
    objc_allocWithZone(sub_1DC51528C());
    v145 = v143;
    v146 = sub_1DC51521C();
    if (v146)
    {
      v147 = v146;
      sub_1DC28D414();
      v148 = v598;
      OUTLINED_FUNCTION_90();
      v555 = v149;
      v557 = v150;
      v556 = v151;
      v151(v22);
      v152 = v145;
      v153 = v147;
      v154 = sub_1DC516F6C();
      v155 = v144;
      v156 = sub_1DC517B9C();

      v157 = os_log_type_enabled(v154, v156);
      v600 = v152;
      if (v157)
      {
        OUTLINED_FUNCTION_140();
        v158 = OUTLINED_FUNCTION_207_1();
        v159 = OUTLINED_FUNCTION_82();
        v605[0] = v159;
        *v145 = 138412546;
        *(v145 + 1) = v153;
        *v158 = v147;
        OUTLINED_FUNCTION_221_0();
        v160 = v153;
        v161 = sub_1DC515B5C();
        sub_1DC291244(v161, v162, v605);
        OUTLINED_FUNCTION_334();

        *(v145 + 14) = v147;
        OUTLINED_FUNCTION_85_6();
        _os_log_impl(v163, v164, v165, v166, v167, 0x16u);
        sub_1DC28EB30(v158, &qword_1ECC7DFE0, &qword_1DC5227F0);
        v24 = v601;
        v168 = v604;
        OUTLINED_FUNCTION_66();
        __swift_destroy_boxed_opaque_existential_1Tm(v159);
        v148 = v598;
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_40_0();

        v169 = OUTLINED_FUNCTION_224_1();
        v170(v169);
        v171 = v597;
      }

      else
      {

        v214 = OUTLINED_FUNCTION_224_1();
        v215(v214);
        v171 = v597;
        v168 = v155;
      }

      v216 = *(v168 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher + 32);
      OUTLINED_FUNCTION_121_1((v168 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher), *(v168 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher + 24));
      v584 = v153;
      OUTLINED_FUNCTION_147_0();
      sub_1DC515D8C();
      v217 = v592;
      sub_1DC51374C();
      v218 = v596;
      sub_1DC51171C();
      OUTLINED_FUNCTION_62_0(&a16);
      v219(v217, v593);
      OUTLINED_FUNCTION_291(&a18);
      Siri_Nlu_External_ResponseStatus.StatusCode.toOrchestrationStatusCode()(v220);
      v221 = v595;
      v223 = v595 + 8;
      v222 = *(v595 + 1);
      v224 = OUTLINED_FUNCTION_60();
      v222(v224);
      OUTLINED_FUNCTION_39(v153, 1, v171);
      if (!v270)
      {
        OUTLINED_FUNCTION_278();
        v590 = v256;
        v589 = v257;
        v257(v594, v153, v171);
        v258 = *(v221 + 13);
        v258(v218, *MEMORY[0x1E69D0A98], v171);
        OUTLINED_FUNCTION_108_1();
        sub_1DC3D8E40(v259, v260);
        OUTLINED_FUNCTION_238_0();
        sub_1DC5179EC();
        OUTLINED_FUNCTION_238_0();
        sub_1DC5179EC();
        v261 = OUTLINED_FUNCTION_60();
        v592 = v222;
        v593 = v223;
        v222(v261);
        v588 = v605[0];
        OUTLINED_FUNCTION_43_5(v607);
        v262 = v600;
        sub_1DC515B5C();
        OUTLINED_FUNCTION_279();
        v263 = (*(*v168 + 368))();
        v264 = v582;
        v265 = OUTLINED_FUNCTION_65_1();
        sub_1DC3BF988(v265, v266, v263, v267);

        v268 = OUTLINED_FUNCTION_34_11();
        OUTLINED_FUNCTION_39(v268, v269, v591);
        if (v270)
        {
          sub_1DC28EB30(v264, &qword_1ECC7D388, &unk_1DC5283E8);
          OUTLINED_FUNCTION_277();
          OUTLINED_FUNCTION_34_14();
          v271();
          v272 = v262;
          v273 = sub_1DC516F6C();
          v274 = sub_1DC517BAC();

          if (os_log_type_enabled(v273, v274))
          {
            OUTLINED_FUNCTION_63();
            v605[0] = OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_350(4.8149e-34);
            v275 = sub_1DC515B5C();
            sub_1DC291244(v275, v276, v605);
            OUTLINED_FUNCTION_91_2();
            *(v263 + 4) = v168;
            OUTLINED_FUNCTION_84_5();
            _os_log_impl(v277, v278, v279, v280, v281, 0xCu);
            OUTLINED_FUNCTION_53_12();
            OUTLINED_FUNCTION_58();
          }

          OUTLINED_FUNCTION_365();
          OUTLINED_FUNCTION_74_0();
          OUTLINED_FUNCTION_222_1();
          v282();
          v283 = v595;
          sub_1DC2A0AE0();
          v284 = v578;
          OUTLINED_FUNCTION_90();
          v285(v577);
          v287 = v596;
          v286 = v597;
          (*(v283 + 2))(v596, v594, v597);
          v288 = (*(v283 + 80) + 32) & ~*(v283 + 80);
          v289 = OUTLINED_FUNCTION_371();
          v290 = OUTLINED_FUNCTION_347(v289);
          v589(v290, v287, v286);
          v291 = v272;

          OUTLINED_FUNCTION_348();
          sub_1DC5168DC();
          OUTLINED_FUNCTION_300();

          v292 = *(v284 + 8);
          v293 = OUTLINED_FUNCTION_121_0();
          v294(v293);
          v295 = OUTLINED_FUNCTION_16();
          goto LABEL_50;
        }

        sub_1DC3D80AC(v264, v585);
        OUTLINED_FUNCTION_262();
        sub_1DC3D5B38(v262);
        v315 = v601;
        v316 = OUTLINED_FUNCTION_36();
        sub_1DC3D0CAC(v316, v317, v318, v319, v320, v321, v322, v323, v554, v555, v556, v557, v558, v559, v560, v561, v562, v563, v564, v565);
        if (v324)
        {
          OUTLINED_FUNCTION_277();
          OUTLINED_FUNCTION_34_14();
          v325();
          v326 = v262;
          v327 = sub_1DC516F6C();
          v328 = sub_1DC517B9C();

          if (os_log_type_enabled(v327, v328))
          {
            OUTLINED_FUNCTION_63();
            v605[0] = OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_350(4.8149e-34);
            v329 = sub_1DC515B5C();
            sub_1DC291244(v329, v330, v605);
            OUTLINED_FUNCTION_91_2();
            *(v263 + 4) = v168;
            OUTLINED_FUNCTION_84_5();
            _os_log_impl(v331, v332, v333, v334, v335, 0xCu);
            OUTLINED_FUNCTION_53_12();
            v336 = v588;
            OUTLINED_FUNCTION_66();

            OUTLINED_FUNCTION_51();
            OUTLINED_FUNCTION_222_1();
            v337();
            v338 = v595;
          }

          else
          {

            OUTLINED_FUNCTION_51();
            OUTLINED_FUNCTION_222_1();
            v340();
            v338 = v595;
            v336 = v588;
          }

          v341 = v336 == v587;
          sub_1DC2A0AE0();
          v342 = v578;
          OUTLINED_FUNCTION_19_1();
          v343 = v577;
          OUTLINED_FUNCTION_355();
          v344();
          v346 = v596;
          v345 = v597;
          (*(v338 + 2))(v596, v594, v597);
          v347 = (*(v338 + 80) + 32) & ~*(v338 + 80);
          v348 = OUTLINED_FUNCTION_371();
          v349 = OUTLINED_FUNCTION_347(v348);
          v589(v349, v346, v345);
          v603 = v326;

          OUTLINED_FUNCTION_348();
          sub_1DC5168CC();

          v350 = *(v342 + 8);
          v351 = OUTLINED_FUNCTION_174();
          v352(v351);
          v600 = sub_1DC515B5C();
          v598 = v353;
          v354 = v591;
          v355 = *(v591 + 48);
          v356 = *(v591 + 64);
          v357 = OUTLINED_FUNCTION_61_6();
          v359 = *(v358 - 256);
          sub_1DC28F414(v357, v359, v360, v361);
          v596 = *(v354 + 64);
          v362 = sub_1DC51119C();
          OUTLINED_FUNCTION_35(v362);
          v364 = *(v363 + 32);
          v365 = v575;
          v366 = OUTLINED_FUNCTION_78_6();
          v367(v366);
          *(v365 + v355) = v341;
          v368 = v579;
          OUTLINED_FUNCTION_44_8();
          v369 = v580;
          v370(v365 + v356, v586, v580);
          v371 = OUTLINED_FUNCTION_23_20();
          __swift_storeEnumTagSinglePayload(v371, v372, v373, v354);
          OUTLINED_FUNCTION_233();
          v375 = (*(v374 + 384))(v605);
          sub_1DC3BE3B4(v365, v600, v598);
          v375(v605, 0);
          v376 = *(v368 + 8);
          v376(&v596[v359], v369);
          OUTLINED_FUNCTION_233();
          (*(v377 + 816))();
          OUTLINED_FUNCTION_300();

          sub_1DC28EB30(v343, &qword_1ECC7D320, &qword_1DC5283A0);
          v378 = OUTLINED_FUNCTION_63_0();
          (v376)(v378);
LABEL_49:
          v295 = v594;
          v296 = v597;
LABEL_50:
          (v592)(v295, v296);
          v132 = v602;
          goto LABEL_51;
        }

        v339 = *(sub_1DC51377C() + 16);

        if (v339)
        {
          LODWORD(v582) = 0;
        }

        else
        {
          v262 = v596;
          v315 = v597;
          v258(v596, *MEMORY[0x1E69D0AA0], v597);
          OUTLINED_FUNCTION_238_0();
          sub_1DC5179EC();
          OUTLINED_FUNCTION_238_0();
          sub_1DC5179EC();
          v379 = OUTLINED_FUNCTION_63_0();
          v592(v379);
          LODWORD(v582) = v605[0] == v607;
        }

        OUTLINED_FUNCTION_61_6();
        OUTLINED_FUNCTION_159_0(v380);
        sub_1DC28F414(v381, v382, v383, v384);
        v596 = *(v591 + 64);
        OUTLINED_FUNCTION_106(&v589);
        sub_1DC51112C();
        v385 = sub_1DC51119C();
        OUTLINED_FUNCTION_248_0(v385);
        v589 = v386;
        v387 = *(v386 + 1);
        v388 = OUTLINED_FUNCTION_63_0();
        v387(v388);
        OUTLINED_FUNCTION_57_5(&v590);
        sub_1DC51129C();
        v389 = *(v568 + 8);
        v389(v263, v569);
        v390 = sub_1DC51104C();
        OUTLINED_FUNCTION_62_0(&v591);
        v391(v258, v567);
        OUTLINED_FUNCTION_22_13();
        OUTLINED_FUNCTION_57_5(&v596);
        sub_1DC3C18F8(v390, v392, v393);

        OUTLINED_FUNCTION_159_0(&v588);
        sub_1DC28F414(v394, v395, &qword_1ECC7D320, &qword_1DC5283A0);
        v595 = *(v591 + 64);
        OUTLINED_FUNCTION_196_1(&v592);
        sub_1DC51112C();
        v590 = v315;
        (v387)(v262, v315);
        OUTLINED_FUNCTION_58_4(&v598);
        sub_1DC5112BC();
        v396 = OUTLINED_FUNCTION_174();
        (v389)(v396);
        sub_1DC51190C();
        OUTLINED_FUNCTION_61();
        __swift_storeEnumTagSinglePayload(v397, v398, v399, v400);
        OUTLINED_FUNCTION_106(&v604);
        v401 = OUTLINED_FUNCTION_77_1();
        sub_1DC3B3BC0(v401, v402, v403);
        v404 = (v579 + 8);
        v405 = *(v579 + 8);
        OUTLINED_FUNCTION_193_0(&a9);
        v405();
        v406 = &v596[v583];
        v595 = v405;
        v596 = v404;
        (v405)(v406, v148);
        v407 = v571;
        v408 = v601;
        sub_1DC51376C();
        OUTLINED_FUNCTION_61();
        v409 = v573;
        __swift_storeEnumTagSinglePayload(v410, v411, v412, v573);
        v413 = v604;
        OUTLINED_FUNCTION_189_0();
        v415 = *(v414 + 1000);
        OUTLINED_FUNCTION_291(v605);
        v416(v407);
        sub_1DC28EB30(v407, &qword_1ECC7D398, &qword_1DC5283F8);
        OUTLINED_FUNCTION_16_11();
        OUTLINED_FUNCTION_159_0(&v600);
        sub_1DC3D8B40(v417, v418);
        OUTLINED_FUNCTION_61();
        __swift_storeEnumTagSinglePayload(v419, v420, v421, v570);
        OUTLINED_FUNCTION_189_0();
        v423 = (*(v422 + 1008))(v407);
        v425 = v424;
        v426 = sub_1DC28EB30(v407, &qword_1ECC7D390, &qword_1DC527790);
        v427 = *(v413 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_isMUXEnabled);
        MEMORY[0x1EEE9AC00](v426);
        *(&v554 - 10) = v600;
        *(&v554 - 9) = v413;
        *(&v554 - 8) = v408;
        v428 = v582;
        *(&v554 - 56) = v582;
        v429 = v586;
        *(&v554 - 6) = v594;
        *(&v554 - 5) = v429;
        *(&v554 - 4) = v387;
        *(&v554 - 3) = v423;
        *(&v554 - 2) = v425;
        if (v430 == 1)
        {
          v431 = objc_allocWithZone(sub_1DC515A8C());
          OUTLINED_FUNCTION_43_12();
          sub_1DC515A7C();
          OUTLINED_FUNCTION_1_31();

          v432 = v598;
          if (!v423)
          {
            OUTLINED_FUNCTION_184(&v585);
            OUTLINED_FUNCTION_277();
            OUTLINED_FUNCTION_34_14();
            v433();
            v434 = v602;
            v435 = v602 + 16;
            v436 = *(v602 + 16);
            v437 = OUTLINED_FUNCTION_326(&v583);
            v436(v437);
            v438 = sub_1DC516F6C();
            sub_1DC517BAC();
            OUTLINED_FUNCTION_116();
            if (os_log_type_enabled(v438, v439))
            {
              OUTLINED_FUNCTION_63();
              v432 = 0;
              v440 = OUTLINED_FUNCTION_117();
              v607 = OUTLINED_FUNCTION_307(v440);
              MEMORY[0] = 136315138;
              v441 = sub_1DC5138DC();
              v606 = v413;
              OUTLINED_FUNCTION_8_17();
              v444 = sub_1DC3D8E40(v442, v443);
              v445 = OUTLINED_FUNCTION_304(v444);
              (v436)(v445, 0, v413);
              sub_1DC5138CC();
              OUTLINED_FUNCTION_238();
              v446 = *(v434 + 8);
              v447 = OUTLINED_FUNCTION_54_4();
              v448(v447);
              __swift_destroy_boxed_opaque_existential_1Tm(v605);
              v449 = OUTLINED_FUNCTION_98_5();
              sub_1DC291244(v449, v435, v450);
              OUTLINED_FUNCTION_251_0();
              MEMORY[4] = v441;
              OUTLINED_FUNCTION_84_5();
              _os_log_impl(v451, v452, v453, v454, v455, 0xCu);
              v456 = OUTLINED_FUNCTION_184(&a11);
              __swift_destroy_boxed_opaque_existential_1Tm(v456);
              OUTLINED_FUNCTION_42();
              OUTLINED_FUNCTION_58();

              OUTLINED_FUNCTION_365();
              v457 = &v585;
LABEL_43:
              v518 = *(v457 - 32);
LABEL_45:
              OUTLINED_FUNCTION_222_1();
              v522();
              OUTLINED_FUNCTION_1_32();
              sub_1DC3D8824();
              OUTLINED_FUNCTION_267();
              if (v270)
              {
                v523 = 1;
              }

              else
              {
                v523 = 0;
              }

              OUTLINED_FUNCTION_62_0(&v601);
              v524(v574, v573);
              v603 = sub_1DC515B5C();
              v598 = v525;
              v526 = v591;
              v527 = *(v591 + 48);
              v528 = *(v591 + 64);
              v529 = OUTLINED_FUNCTION_61_6();
              v531 = *(v530 - 256);
              sub_1DC28F414(v529, v531, v532, v533);
              v534 = *(v526 + 64);
              v535 = *(v589 + 4);
              v536 = v575;
              v537 = OUTLINED_FUNCTION_16();
              v538(v537);
              *(v536 + v527) = v523;
              v539 = OUTLINED_FUNCTION_290();
              v541 = v580;
              v542(v539, *(v540 - 256), v580);
              v543 = OUTLINED_FUNCTION_32_9();
              __swift_storeEnumTagSinglePayload(v543, v544, v545, v526);
              v546 = v604;
              (*(*v604 + 384))(v605);
              OUTLINED_FUNCTION_192();
              sub_1DC3BE3B4(v536, v603, v598);
              (v526)(v605, 0);
              v547 = v531 + v534;
              v548 = v595;
              v549 = (v595)(v547, v541);
              (*(*v546 + 816))(v549);
              OUTLINED_FUNCTION_300();

              sub_1DC28EB30(v432, &qword_1ECC7D320, &qword_1DC5283A0);
              v550 = OUTLINED_FUNCTION_73();
              v548(v550);
              goto LABEL_49;
            }

            goto LABEL_44;
          }
        }

        else
        {
          v458 = objc_allocWithZone(sub_1DC5156AC());
          OUTLINED_FUNCTION_43_12();
          sub_1DC5155EC();
          OUTLINED_FUNCTION_1_31();

          v432 = v598;
          if (!v423)
          {
            OUTLINED_FUNCTION_184(&v586);
            OUTLINED_FUNCTION_277();
            OUTLINED_FUNCTION_34_14();
            v496();
            v434 = v602;
            v497 = v602 + 16;
            v498 = *(v602 + 16);
            v499 = OUTLINED_FUNCTION_326(&v584);
            v498(v499);
            v438 = sub_1DC516F6C();
            sub_1DC517BAC();
            OUTLINED_FUNCTION_116();
            if (os_log_type_enabled(v438, v500))
            {
              OUTLINED_FUNCTION_63();
              v432 = 0;
              v501 = OUTLINED_FUNCTION_117();
              v607 = OUTLINED_FUNCTION_307(v501);
              MEMORY[0] = 136315138;
              v502 = sub_1DC5138DC();
              v606 = v413;
              OUTLINED_FUNCTION_8_17();
              v505 = sub_1DC3D8E40(v503, v504);
              v506 = OUTLINED_FUNCTION_304(v505);
              (v498)(v506, 0, v413);
              sub_1DC5138CC();
              OUTLINED_FUNCTION_238();
              v507 = *(v434 + 8);
              v508 = OUTLINED_FUNCTION_54_4();
              v509(v508);
              __swift_destroy_boxed_opaque_existential_1Tm(v605);
              v510 = OUTLINED_FUNCTION_98_5();
              sub_1DC291244(v510, v497, v511);
              OUTLINED_FUNCTION_251_0();
              MEMORY[4] = v502;
              OUTLINED_FUNCTION_84_5();
              _os_log_impl(v512, v513, v514, v515, v516, 0xCu);
              v517 = OUTLINED_FUNCTION_184(&a11);
              __swift_destroy_boxed_opaque_existential_1Tm(v517);
              OUTLINED_FUNCTION_42();
              OUTLINED_FUNCTION_58();

              OUTLINED_FUNCTION_365();
              v457 = &v586;
              goto LABEL_43;
            }

LABEL_44:

            v519 = *(v434 + 8);
            v520 = OUTLINED_FUNCTION_258();
            v521(v520);
            goto LABEL_45;
          }
        }

        v459 = v428;
        OUTLINED_FUNCTION_267();
        if (v270)
        {
          v460 = 1;
        }

        else
        {
          v460 = 0;
        }

        LODWORD(v603) = v460;
        OUTLINED_FUNCTION_119_3();
        (*(v461 + 944))(v423);
        v462 = v423;
        sub_1DC515D6C();
        OUTLINED_FUNCTION_194();

        v463 = v462;
        v464 = sub_1DC515B5C();
        v466 = v465;

        OUTLINED_FUNCTION_189_0();
        (*(v467 + 1056))(v459, v460, v423, &v554, v464, v466);

        OUTLINED_FUNCTION_1_32();
        sub_1DC3D8824();
        OUTLINED_FUNCTION_62_0(&v601);
        v468(v574, v409);
        v598 = sub_1DC515B5C();
        v470 = v469;
        v471 = v591;
        v472 = *(v591 + 48);
        v473 = *(v591 + 64);
        v474 = OUTLINED_FUNCTION_61_6();
        v476 = *(v475 - 256);
        sub_1DC28F414(v474, v476, v477, v478);
        v479 = *(v471 + 64);
        v480 = *(v589 + 4);
        v481 = v575;
        v482 = OUTLINED_FUNCTION_35_0();
        v483(v482);
        *(v481 + v472) = v603;
        v484 = OUTLINED_FUNCTION_290();
        v486 = v580;
        v487(v484, *(v485 - 256), v580);
        v488 = OUTLINED_FUNCTION_32_9();
        __swift_storeEnumTagSinglePayload(v488, v489, v490, v471);
        OUTLINED_FUNCTION_189_0();
        (*(v491 + 384))(v605);
        OUTLINED_FUNCTION_192();
        sub_1DC3BE3B4(v481, v598, v470);
        (v471)(v605, 0);
        v492 = v476 + v479;
        v493 = v595;
        (v595)(v492, v486);
        OUTLINED_FUNCTION_189_0();
        (*(v494 + 816))();
        OUTLINED_FUNCTION_300();

        sub_1DC28EB30(v460, &qword_1ECC7D320, &qword_1DC5283A0);
        v495 = OUTLINED_FUNCTION_78_6();
        v493(v495);
        goto LABEL_49;
      }

      sub_1DC28EB30(v153, &qword_1ECC7D420, &unk_1DC528440);
      v225 = v590;
      OUTLINED_FUNCTION_277();
      v226 = v603;
      OUTLINED_FUNCTION_34_14();
      v227();
      v228 = v602;
      v229 = *(v602 + 16);
      v230 = v581;
      v231 = OUTLINED_FUNCTION_258();
      v232 = v599;
      v229(v231);
      v233 = OUTLINED_FUNCTION_34_3();
      (v229)(v233, v24, v232);
      v234 = sub_1DC516F6C();
      v235 = sub_1DC517BAC();
      if (OUTLINED_FUNCTION_14_7(v235))
      {
        v236 = v228;
        v228 = OUTLINED_FUNCTION_140();
        v597 = OUTLINED_FUNCTION_143();
        v607 = v597;
        *v228 = 136315394;
        LODWORD(v596) = v225;
        sub_1DC51374C();
        sub_1DC51777C();
        OUTLINED_FUNCTION_123_0();
        v237 = *(v236 + 8);
        v238 = OUTLINED_FUNCTION_42_2();
        v237(v238);
        v239 = OUTLINED_FUNCTION_98_5();
        sub_1DC291244(v239, v226, v240);
        OUTLINED_FUNCTION_162();

        *(v228 + 4) = v230;
        OUTLINED_FUNCTION_221_0();
        v241 = sub_1DC5138DC();
        v606 = v232;
        OUTLINED_FUNCTION_8_17();
        v244 = sub_1DC3D8E40(v242, v243);
        v245 = OUTLINED_FUNCTION_304(v244);
        (v229)(v245, v588, v232);
        sub_1DC5138CC();
        OUTLINED_FUNCTION_123_0();
        v246 = OUTLINED_FUNCTION_42_2();
        v237(v246);
        v247 = v604;
        __swift_destroy_boxed_opaque_existential_1Tm(v605);
        v248 = OUTLINED_FUNCTION_98_5();
        sub_1DC291244(v248, v226, v249);
        OUTLINED_FUNCTION_162();

        *(v228 + 14) = v241;
        OUTLINED_FUNCTION_85_6();
        _os_log_impl(v250, v251, v252, v253, v254, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_40_0();

        OUTLINED_FUNCTION_365();
        OUTLINED_FUNCTION_222_1();
        v255();
      }

      else
      {

        v308 = *(v228 + 8);
        v309 = OUTLINED_FUNCTION_34_3();
        v308(v309, v232);
        v310 = OUTLINED_FUNCTION_42_2();
        (v308)(v310);
        OUTLINED_FUNCTION_222_1();
        v311();
        v247 = v604;
      }

      v312 = v600;
      sub_1DC515D6C();
      OUTLINED_FUNCTION_279();

      v313 = sub_1DC515B5C();
      (*(*v247 + 1056))(0, 0, v226, v228, v313, v314);

      OUTLINED_FUNCTION_300();

      v132 = v602;
    }

    else
    {
      sub_1DC28D414();
      v192 = v598;
      OUTLINED_FUNCTION_32_5();
      v193 = v584;
      v194(v584);
      v195 = v602;
      v196 = v24;
      v197 = *(v602 + 16);
      v198 = v599;
      v197(v20, v196, v599);
      v199 = sub_1DC516F6C();
      v200 = sub_1DC517BAC();
      if (os_log_type_enabled(v199, v200))
      {
        OUTLINED_FUNCTION_63();
        v201 = OUTLINED_FUNCTION_115_4();
        v607 = v201;
        *v195 = 136315138;
        sub_1DC5138DC();
        LODWORD(v604) = v200;
        v606 = v599;
        OUTLINED_FUNCTION_8_17();
        v204 = sub_1DC3D8E40(v202, v203);
        v205 = OUTLINED_FUNCTION_304(v204);
        v197(v205, v20, v599);
        sub_1DC5138CC();
        v207 = v206;
        v208 = v602;
        v209 = OUTLINED_FUNCTION_318(v602);
        v210(v209, v599);
        __swift_destroy_boxed_opaque_existential_1Tm(v605);
        v211 = OUTLINED_FUNCTION_98_5();
        v213 = sub_1DC291244(v211, v207, v212);

        *(v195 + 4) = v213;
        _os_log_impl(&dword_1DC287000, v199, v604, "nlRepetitionMessage could not be created for nluResponse: %s", v195, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v201);
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_67();

        (*(v192 + 8))(v193, v603);
        v132 = v208;
      }

      else
      {

        v306 = OUTLINED_FUNCTION_318(v195);
        v307(v306, v198);
        (*(v192 + 8))(v193, v603);
        v132 = v195;
      }
    }
  }

  else
  {
    sub_1DC28D414();
    v172 = *(v118 + 16);
    v173 = OUTLINED_FUNCTION_261();
    v174(v173);
    v175 = *(v132 + 16);
    v176 = OUTLINED_FUNCTION_54_4();
    v175(v176);
    v177 = sub_1DC516F6C();
    v178 = sub_1DC517BAC();
    if (os_log_type_enabled(v177, v178))
    {
      v179 = OUTLINED_FUNCTION_63();
      v597 = v179;
      v600 = OUTLINED_FUNCTION_82();
      v607 = v600;
      *v179 = 136315138;
      v180 = sub_1DC5138DC();
      LODWORD(v599) = v178;
      v181 = v180;
      v606 = v129;
      OUTLINED_FUNCTION_8_17();
      v184 = sub_1DC3D8E40(v182, v183);
      v185 = OUTLINED_FUNCTION_304(v184);
      (v175)(v185, v23, v129);
      sub_1DC5138CC();
      OUTLINED_FUNCTION_238();
      v186 = *(v602 + 8);
      v187 = OUTLINED_FUNCTION_75();
      v188(v187);
      __swift_destroy_boxed_opaque_existential_1Tm(v605);
      v189 = OUTLINED_FUNCTION_98_5();
      sub_1DC291244(v189, v179, v190);
      OUTLINED_FUNCTION_251_0();
      v191 = v597;
      *(v597 + 4) = v181;
      _os_log_impl(&dword_1DC287000, v177, v599, "asrResult could not be found for nlResponse: %s", v191, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v600);
      OUTLINED_FUNCTION_42();
      v132 = v602;
      OUTLINED_FUNCTION_66();
    }

    else
    {

      v297 = *(v132 + 8);
      v298 = OUTLINED_FUNCTION_75();
      v299(v298);
    }

    v300 = *(v118 + 8);
    v301 = OUTLINED_FUNCTION_35_0();
    v302(v301);
    v303 = *(v604 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
    v304 = *(v604 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8);
    OUTLINED_FUNCTION_12_0();
    (*(v305 + 1056))(0, 0);
  }

LABEL_51:
  v551 = *(v132 + 8);
  v552 = OUTLINED_FUNCTION_51();
  v553(v552);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3CC6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_28_13();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_42_11();
  v15 = *MEMORY[0x1E69D0450];
  v16 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35(v16);
  (*(v17 + 104))(v3, v15, v16);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v16);
  OUTLINED_FUNCTION_235_0();
  sub_1DC51525C();
  sub_1DC515D9C();
  sub_1DC51522C();
  v21 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  v22 = sub_1DC510B6C();
  OUTLINED_FUNCTION_2(v22);
  (*(v23 + 16))(v4, a3 + v21, a1);
  v24 = OUTLINED_FUNCTION_32_9();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, a1);
  OUTLINED_FUNCTION_312();
  sub_1DC51527C();
  sub_1DC515D6C();
  sub_1DC51526C();
  sub_1DC515B5C();
  sub_1DC51524C();
  sub_1DC51375C();
  return sub_1DC51523C();
}

void sub_1DC3CC84C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_166_2(v6, v7, v8, v9, v10, v11, v12, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_28_13();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  OUTLINED_FUNCTION_10(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_24_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D420, &unk_1DC528440);
  OUTLINED_FUNCTION_10(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_11_1();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D4B0, &unk_1DC528580);
  OUTLINED_FUNCTION_10(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_54_3();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_31_3();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_42_11();
  v38 = *MEMORY[0x1E69D0450];
  v39 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35(v39);
  (*(v40 + 104))(v1, v38, v39);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v39);
  OUTLINED_FUNCTION_235_0();
  sub_1DC51573C();
  sub_1DC515D9C();
  sub_1DC5156EC();
  v44 = sub_1DC510B6C();
  OUTLINED_FUNCTION_2(v44);
  v46 = *(v45 + 16);
  v47 = OUTLINED_FUNCTION_330();
  v48(v47);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v0);
  sub_1DC51576C();
  sub_1DC515D6C();
  sub_1DC51575C();
  sub_1DC515B5C();
  sub_1DC5156CC();
  sub_1DC51377C();
  v52 = v0;
  sub_1DC5156DC();
  if (v73)
  {
    v52 = v72;
    sub_1DC33D8D0(v2);
  }

  else
  {
    sub_1DC511EEC();
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  }

  OUTLINED_FUNCTION_353();
  sub_1DC5156FC();
  v57 = sub_1DC51170C();
  OUTLINED_FUNCTION_2(v57);
  (*(v58 + 16))(v3, v74, v52);
  v59 = OUTLINED_FUNCTION_23_20();
  OUTLINED_FUNCTION_293(v59, v60, v61, v52);
  sub_1DC51570C();
  v62 = sub_1DC5162DC();
  OUTLINED_FUNCTION_2(v62);
  (*(v63 + 16))(v5, v75, v0);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v0);
  OUTLINED_FUNCTION_336();
  sub_1DC51574C();
  v67 = sub_1DC511E5C();
  OUTLINED_FUNCTION_2(v67);
  (*(v68 + 16))(v4, v76, v0);
  v69 = OUTLINED_FUNCTION_32_9();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v0);
  OUTLINED_FUNCTION_312();
  sub_1DC51571C();

  sub_1DC51572C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3CCC08()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_166_2(v6, v7, v8, v9, v10, v11, v12, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_28_13();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  OUTLINED_FUNCTION_10(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_24_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D420, &unk_1DC528440);
  OUTLINED_FUNCTION_10(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_11_1();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D4B0, &unk_1DC528580);
  OUTLINED_FUNCTION_10(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_54_3();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_31_3();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_42_11();
  v38 = *MEMORY[0x1E69D0450];
  v39 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35(v39);
  (*(v40 + 104))(v1, v38, v39);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v39);
  OUTLINED_FUNCTION_235_0();
  sub_1DC51566C();
  sub_1DC515D9C();
  sub_1DC51561C();
  v44 = sub_1DC510B6C();
  OUTLINED_FUNCTION_2(v44);
  v46 = *(v45 + 16);
  v47 = OUTLINED_FUNCTION_330();
  v48(v47);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v0);
  sub_1DC51569C();
  sub_1DC515D6C();
  sub_1DC51568C();
  sub_1DC515B5C();
  sub_1DC5155FC();
  sub_1DC51377C();
  v52 = v0;
  sub_1DC51560C();
  if (v73)
  {
    v52 = v72;
    sub_1DC33D8D0(v2);
  }

  else
  {
    sub_1DC511EEC();
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  }

  OUTLINED_FUNCTION_353();
  sub_1DC51562C();
  v57 = sub_1DC51170C();
  OUTLINED_FUNCTION_2(v57);
  (*(v58 + 16))(v3, v74, v52);
  v59 = OUTLINED_FUNCTION_23_20();
  OUTLINED_FUNCTION_293(v59, v60, v61, v52);
  sub_1DC51563C();
  v62 = sub_1DC5162DC();
  OUTLINED_FUNCTION_2(v62);
  (*(v63 + 16))(v5, v75, v0);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v0);
  OUTLINED_FUNCTION_336();
  sub_1DC51567C();
  v67 = sub_1DC511E5C();
  OUTLINED_FUNCTION_2(v67);
  (*(v68 + 16))(v4, v76, v0);
  v69 = OUTLINED_FUNCTION_32_9();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v0);
  OUTLINED_FUNCTION_312();
  sub_1DC51564C();

  sub_1DC51565C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3CCFC4()
{
  OUTLINED_FUNCTION_33();
  v53 = v0;
  OUTLINED_FUNCTION_38_2();
  v3 = sub_1DC5168FC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v54 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v52 = v8;
  OUTLINED_FUNCTION_12();
  v9 = sub_1DC516F7C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v51 = v15;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_107_0();
  v57 = sub_1DC28D414();
  v56 = *(v12 + 16);
  v56(v1);
  v18 = v0;
  v19 = sub_1DC516F6C();
  v20 = sub_1DC517B9C();

  v21 = &off_1DC522000;
  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_140();
    OUTLINED_FUNCTION_207_1();
    v58 = OUTLINED_FUNCTION_115_4();
    *v12 = 138412546;
    *(v12 + 4) = v18;
    *v9 = v18;
    OUTLINED_FUNCTION_221_0();
    v22 = v18;
    v23 = sub_1DC515B5C();
    v21 = OUTLINED_FUNCTION_305(v23, v24);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_1DC287000, v19, v20, "Posting nluResultMessage: %@ for rcId: %s", v12, 0x16u);
    sub_1DC28EB30(v9, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_40_0();

    v25 = *(v12 + 8);
  }

  else
  {

    v28 = *(v12 + 8);
  }

  v26 = OUTLINED_FUNCTION_187();
  v55 = v27;
  v27(v26);
  OUTLINED_FUNCTION_20_14(&v0[OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher]);
  OUTLINED_FUNCTION_112_1();
  v29 = sub_1DC515D8C();
  (v56)(v2, v57, v9);
  v30 = v18;
  v31 = sub_1DC516F6C();
  v32 = sub_1DC517B9C();

  if (os_log_type_enabled(v31, v32))
  {
    swift_slowAlloc();
    v33 = OUTLINED_FUNCTION_175();
    *v21 = 67109378;
    v21[1] = (v29 & 1);
    *(v21 + 4) = 2112;
    *(v21 + 10) = v30;
    *v33 = v30;
    v34 = v30;
    _os_log_impl(&dword_1DC287000, v31, v32, "postSucceeded: %{BOOL}d for nlResultMessage: %@", v21, 0x12u);
    sub_1DC28EB30(v33, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_14_5();
  }

  v35 = OUTLINED_FUNCTION_46_0();
  v36(v35);
  sub_1DC2A0AE0();
  OUTLINED_FUNCTION_32_5();
  v37(v52);
  v38 = swift_allocObject();
  *(v38 + 16) = v30;
  *(v38 + 24) = v53;
  *(v38 + 32) = v29 & 1;
  v39 = v30;

  OUTLINED_FUNCTION_170_1();
  sub_1DC5168CC();

  (*(v54 + 8))(v52, v3);
  if ((v29 & 1) == 0)
  {
    (v56)(v51, v57, v9);
    v40 = v39;
    v41 = sub_1DC516F6C();
    v42 = sub_1DC517BAC();

    if (os_log_type_enabled(v41, v42))
    {
      OUTLINED_FUNCTION_140();
      v43 = OUTLINED_FUNCTION_207_1();
      OUTLINED_FUNCTION_82();
      *v39 = 138412546;
      *(v39 + 4) = v40;
      *v43 = v40;
      OUTLINED_FUNCTION_221_0();
      v44 = v40;
      v45 = sub_1DC515B5C();
      OUTLINED_FUNCTION_249_0(v45, v46);
      OUTLINED_FUNCTION_23_2();

      *(v39 + 14) = v44;
      OUTLINED_FUNCTION_198_0(&dword_1DC287000, v47, v48, "Posting of nlResultMessage: %@ failed for rcId: %s");
      sub_1DC28EB30(v43, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_53_12();
      OUTLINED_FUNCTION_40_0();

      v49 = v51;
      v50 = v9;
    }

    else
    {

      v49 = OUTLINED_FUNCTION_34_0();
    }

    v55(v49, v50);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3CD4E8()
{
  OUTLINED_FUNCTION_33();
  v32 = v3;
  OUTLINED_FUNCTION_228_0();
  v31 = sub_1DC51170C();
  v4 = OUTLINED_FUNCTION_0(v31);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE30, &unk_1DC524E20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CE38, &unk_1DC528570);
  OUTLINED_FUNCTION_136_1(v9);
  v11 = *(v10 + 72);
  OUTLINED_FUNCTION_185_1();
  v14 = v13 & ~v12;
  v15 = OUTLINED_FUNCTION_296();
  *(v15 + 16) = xmmword_1DC528380;
  v16 = v15 + v14;
  v17 = v16 + *(v1 + 56);
  sub_1DC51680C();
  v18 = sub_1DC2A0C74();
  OUTLINED_FUNCTION_209_0(v18);
  v19 = (v16 + v11 + *(v1 + 56));

  sub_1DC51687C();
  *v19 = sub_1DC2A0C80(6);
  v19[1] = v20;
  v21 = (v16 + 2 * v11 + *(v1 + 56));
  sub_1DC51682C();
  *v21 = sub_1DC515D9C();
  v21[1] = v22;
  OUTLINED_FUNCTION_323(v16 + 3 * v11);
  sub_1DC5168BC();
  sub_1DC510B6C();
  OUTLINED_FUNCTION_4_27();
  sub_1DC3D8E40(v23, v24);
  *v0 = sub_1DC51823C();
  v0[1] = v25;
  OUTLINED_FUNCTION_323(v16 + 4 * v11);
  sub_1DC5168AC();
  *v0 = sub_1DC515D6C();
  v0[1] = v26;
  OUTLINED_FUNCTION_323(v16 + 5 * v11);
  sub_1DC51686C();
  *v0 = sub_1DC515B5C();
  v0[1] = v27;
  OUTLINED_FUNCTION_323(v16 + 6 * v11);
  sub_1DC51681C();
  sub_1DC5156BC();
  sub_1DC517FEC();
  (*(v6 + 8))(v2, v31);
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  sub_1DC51684C();
  if (v32)
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (v32)
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  v30 = (v16 + 7 * v11 + *(v1 + 56));
  MEMORY[0x1E1296160](v28, v29);

  *v30 = 0;
  v30[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_34();
}

void sub_1DC3CD7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v26;
  a20 = v27;
  v630 = v28;
  v633 = v29;
  v648 = v30;
  v644 = v31;
  v645 = v32;
  v33 = sub_1DC5168FC();
  v34 = OUTLINED_FUNCTION_2_29(v33, &v632);
  v605 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v38);
  v39 = sub_1DC5162DC();
  v40 = OUTLINED_FUNCTION_2_29(v39, &v633);
  v637 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_10(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v51);
  v52 = sub_1DC51107C();
  v53 = OUTLINED_FUNCTION_2_29(v52, &v649);
  v613 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFB0, qword_1DC526050);
  OUTLINED_FUNCTION_10(v58);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_25();
  v642 = v62;
  v63 = OUTLINED_FUNCTION_12();
  v64 = type metadata accessor for DialogState(v63);
  v65 = OUTLINED_FUNCTION_10(v64);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_2_1();
  v641 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8);
  v70 = OUTLINED_FUNCTION_10(v69);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D3B8, &qword_1DC528408);
  v76 = OUTLINED_FUNCTION_10(v75);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_62();
  v647 = v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C370, &qword_1DC5230E0);
  v83 = OUTLINED_FUNCTION_10(v82);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_62();
  v650 = v87;
  v88 = OUTLINED_FUNCTION_12();
  v643 = type metadata accessor for AssistantNLRequestHandler.NluResponseType(v88);
  v89 = OUTLINED_FUNCTION_0(v643);
  v625 = v90;
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v94);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D418, &qword_1DC528438);
  OUTLINED_FUNCTION_10(v95);
  v97 = *(v96 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v99);
  v100 = sub_1DC5161DC();
  v101 = OUTLINED_FUNCTION_2_29(v100, &v645);
  v617 = v102;
  v104 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v105);
  v106 = sub_1DC516F7C();
  v107 = OUTLINED_FUNCTION_2_29(v106, &a14);
  v634 = v108;
  v110 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_53();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v119);
  v120 = sub_1DC51172C();
  v121 = OUTLINED_FUNCTION_0(v120);
  v639 = v122;
  v124 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_7_21();
  v125 = sub_1DC5137CC();
  v126 = OUTLINED_FUNCTION_0(v125);
  v628 = v127;
  v129 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_38_3();
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D420, &unk_1DC528440);
  v132 = OUTLINED_FUNCTION_10(v131);
  v134 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v137);
  v138 = sub_1DC51170C();
  v139 = OUTLINED_FUNCTION_0(v138);
  v627 = v140;
  v142 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101_0();
  MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v144);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4D0, &qword_1DC5285A0);
  OUTLINED_FUNCTION_10(v145);
  v147 = *(v146 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_95();
  v660 = 0;
  v658 = MEMORY[0x1E69E7CC8];
  v659 = MEMORY[0x1E69E7CC8];
  v649 = v20;
  v149 = v643;
  v632 = v120;
  v623 = v23;
  v646 = v125;
  v622 = v22;
  v638 = v138;
  if (v648)
  {
    v150 = v648;
    *v24 = v648;
    v151 = v149;
    swift_storeEnumTagMultiPayload();
    v152 = OUTLINED_FUNCTION_21_12();
    __swift_storeEnumTagSinglePayload(v152, v153, v154, v151);
    swift_beginAccess();
    v155 = v150;
    v156 = v645;

    sub_1DC3BE61C(v24, v644, v156);
    v157 = swift_endAccess();
    v158 = (*MEMORY[0x1E69E7D40] & *v155) + 120;
    v619 = *((*MEMORY[0x1E69E7D40] & *v155) + 0x78);
    v618 = v158;
    (v619)(v157);
    sub_1DC51374C();
    v24 = v628 + 1;
    v648 = v628[1];
    v648(v22, v646);
    sub_1DC51171C();
    v159 = *(v639 + 8);
    OUTLINED_FUNCTION_319();
    v160();
    OUTLINED_FUNCTION_213(&v653);
    Siri_Nlu_External_ResponseStatus.StatusCode.toOrchestrationStatusCode()(v161);
    v162 = v627[1];
    v162(v21, v138);
    OUTLINED_FUNCTION_39(v150, 1, v138);
    if (v163)
    {
      sub_1DC28EB30(v150, &qword_1ECC7D420, &unk_1DC528440);
      sub_1DC28D414();
      OUTLINED_FUNCTION_81_4();
      v164(v621);
      v165 = v155;
      v166 = v645;

      v167 = sub_1DC516F6C();
      v168 = sub_1DC517BAC();

      if (os_log_type_enabled(v167, v168))
      {
        v169 = OUTLINED_FUNCTION_140();
        v655 = OUTLINED_FUNCTION_143();
        *v169 = 136315394;
        OUTLINED_FUNCTION_196_1(&v651);
        OUTLINED_FUNCTION_289();
        v170();
        OUTLINED_FUNCTION_106(&v652);
        sub_1DC51374C();
        v648(v138, v646);
        v171 = sub_1DC51777C();
        sub_1DC291244(v171, v172, &v655);
        OUTLINED_FUNCTION_373();
        *(v169 + 4) = v24;
        *(v169 + 12) = 2080;
        *(v169 + 14) = sub_1DC291244(v644, v166, &v655);
        _os_log_impl(&dword_1DC287000, v167, v168, "Failed to map response status = %s for tcuId:%s", v169, 0x16u);
        OUTLINED_FUNCTION_219_0();
        OUTLINED_FUNCTION_54_12();
        OUTLINED_FUNCTION_67();

        OUTLINED_FUNCTION_62_0(&a12);
        v173(v621, v636);
      }

      else
      {

        v221 = *(v23 + 8);
        v222 = OUTLINED_FUNCTION_229();
        v223(v222);
      }

      v224 = v649;
      OUTLINED_FUNCTION_266();
      if (v225)
      {
        v226 = *(v224 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
        v227 = *(v224 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8);
        OUTLINED_FUNCTION_12_0();
        (*(v228 + 1056))(0, 1);
      }

      goto LABEL_125;
    }

    v617 = v155;
    v192 = v627[4];
    v193 = v614;
    v194 = OUTLINED_FUNCTION_35_0();
    v195(v194);
    v196 = *MEMORY[0x1E69D0A98];
    v197 = v627[13];
    v616 = v627 + 13;
    v598 = v197;
    v197(v21, v196, v138);
    OUTLINED_FUNCTION_108_1();
    v200 = sub_1DC3D8E40(v198, v199);
    sub_1DC5179EC();
    v597 = v200;
    sub_1DC5179EC();
    v621 = v21;
    v162(v21, v138);
    v201 = v655;
    v202 = v651;
    v603 = v655 == v651;
    v624 = (*(*v649 + 408))(&v655);
    v204 = v203;
    sub_1DC3D02A0(&v651, v644, v645);
    OUTLINED_FUNCTION_137();
    v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
    if (!__swift_getEnumTagSinglePayload(v155, 1, v205))
    {
      *(v155 + *(v205 + 48)) = v201 == v202;
    }

    v204(&v651, 0);
    v624(&v655, 0);
    OUTLINED_FUNCTION_58_4(&v641);
    OUTLINED_FUNCTION_289();
    v207();
    sub_1DC51377C();
    v208 = OUTLINED_FUNCTION_162();
    v648(v208, v646);
    v209 = *(v201 + 16);

    v179 = v634;
    if (v209)
    {
      v162(v193, v638);

      v220 = 0;
    }

    else
    {
      v598(v621, *MEMORY[0x1E69D0AA0], v638);
      v24 = v597;
      sub_1DC5179EC();
      sub_1DC5179EC();

      v229 = OUTLINED_FUNCTION_73();
      (v162)(v229);
      v230 = OUTLINED_FUNCTION_77_1();
      (v162)(v230);
      v220 = v655 == v651;
    }

    v660 = v220;
    v216 = v649;
    OUTLINED_FUNCTION_269();
    v219 = v645;
    goto LABEL_20;
  }

  v621 = v21;
  v193 = v645;
  OUTLINED_FUNCTION_308();
  OUTLINED_FUNCTION_159_0(&v644);
  sub_1DC28F414(v174, v175, v176, v177);
  v178 = OUTLINED_FUNCTION_44();
  v179 = v619;
  OUTLINED_FUNCTION_39(v178, v180, v619);
  if (v163)
  {
    sub_1DC28EB30(v125, &qword_1ECC7D418, &qword_1DC528438);
    sub_1DC28D414();
    OUTLINED_FUNCTION_81_4();
    v24 = v636;
    v181(v25);
    v182 = sub_1DC516F6C();
    v183 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_25_0(v183))
    {
      v184 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v184);
      OUTLINED_FUNCTION_28_8();
      _os_log_impl(v185, v186, v187, v188, v120, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    v189 = *(v619 + 8);
    v190 = OUTLINED_FUNCTION_51();
    v191(v190);
    v220 = 0;
    v603 = 1;
    v216 = v649;
    v219 = v193;
LABEL_20:
    v218 = v644;
    goto LABEL_21;
  }

  (*(v617 + 4))(v616, v125, v619);
  OUTLINED_FUNCTION_32_5();
  v210 = OUTLINED_FUNCTION_74_0();
  v211(v210);
  v603 = 1;
  v212 = v643;
  swift_storeEnumTagMultiPayload();
  v213 = OUTLINED_FUNCTION_21_12();
  __swift_storeEnumTagSinglePayload(v213, v214, v215, v212);
  v216 = v649;
  swift_beginAccess();

  v217 = v644;
  sub_1DC3BE61C(v24, v644, v193);
  swift_endAccess();
  v218 = v217;
  v219 = v193;
  (*(v617 + 1))(v616, v619);
  v220 = 0;
  v179 = v634;
  OUTLINED_FUNCTION_269();
LABEL_21:
  OUTLINED_FUNCTION_205_1();
  OUTLINED_FUNCTION_119_3();
  v232 = (*(v231 + 536))();
  v624 = sub_1DC3526D0(v218, v219, v232);
  v234 = v233;

  if (v234)
  {
    OUTLINED_FUNCTION_119_3();
    v235 += 70;
    v236 = *v235;
    v237 = v235;

    v239 = v236(v238);
    v240 = *(v239 + 16);
    LODWORD(v648) = v220;
    if (v240 && (v241 = sub_1DC2AEB04(v624, v234), (v242 & 1) != 0))
    {
      v243 = *(*(v239 + 56) + 8 * v241);
    }

    else
    {
      v243 = MEMORY[0x1E69E7CD0];
    }

    if (!*(v243 + 16))
    {

      sub_1DC28D414();
      OUTLINED_FUNCTION_19_1();
      v457 = OUTLINED_FUNCTION_211_0();
      v458(v457);

      v459 = sub_1DC516F6C();
      sub_1DC517BAC();

      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_63();
        v460 = OUTLINED_FUNCTION_111();
        v655 = v460;
        *v237 = 136315138;
        OUTLINED_FUNCTION_181_0();
        v461 = OUTLINED_FUNCTION_174();
        v464 = sub_1DC291244(v461, v462, v463);

        *(v237 + 4) = v464;
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v465, v466, v467, v468, v469, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v460);
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_31();

        (*(v179 + 8))(v611, v24);
      }

      else
      {

        v481 = OUTLINED_FUNCTION_328();
        v482(v481, v24);
        OUTLINED_FUNCTION_181_0();
      }

      OUTLINED_FUNCTION_266();
      if ((v483 & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_100;
    }

    v615 = v234;
    v244 = (v243 + 56);
    v245 = 1 << *(v243 + 32);
    v246 = -1;
    if (v245 < 64)
    {
      v246 = ~(-1 << v245);
    }

    v247 = v246 & *(v243 + 56);
    v248 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_turnConstructionCandidateIdToNLUResponse;

    v619 = v248;
    OUTLINED_FUNCTION_72_6();
    swift_beginAccess();
    v249 = 0;
    OUTLINED_FUNCTION_62_7(&v659);
    v614 = v250;
    OUTLINED_FUNCTION_62_7(&a17);
    v612 = v251;
    OUTLINED_FUNCTION_62_7(&v658);
    v611 = v252;
    OUTLINED_FUNCTION_62_7(&v639);
    v613 = v254;
    v255 = MEMORY[0x1E69E7CC8];
    v628 = MEMORY[0x1E69E7CC8];
    v256 = v631;
    v257 = v629;
    v627 = (v243 + 56);
    v617 = v253;
    v618 = v243;
    if (v247)
    {
      while (1)
      {
        v616 = v255;
        v258 = v216;
LABEL_35:
        v260 = (*(v243 + 48) + ((v249 << 10) | (16 * __clz(__rbit64(v247)))));
        v262 = *v260;
        v261 = v260[1];
        v263 = *(v258 + v619);
        v264 = *(v263 + 16);

        v265 = MEMORY[0x1E69E7D40];
        v648 = v261;
        v639 = v262;
        if (!v264 || (v266 = OUTLINED_FUNCTION_51(), v268 = sub_1DC2AEB04(v266, v267), (v269 & 1) == 0))
        {

          OUTLINED_FUNCTION_216_0();

          sub_1DC28D414();
          OUTLINED_FUNCTION_191_1();
          v488 = *(v487 - 256);
          OUTLINED_FUNCTION_70_7();
          v489 = v610;
          v490 = v636;
          v491(v610);
          v492 = v648;

          v493 = sub_1DC516F6C();
          sub_1DC517B9C();
          OUTLINED_FUNCTION_354();

          if (OUTLINED_FUNCTION_172())
          {
            OUTLINED_FUNCTION_63();
            v651 = OUTLINED_FUNCTION_73_5();
            *v243 = 136315138;
            v494 = OUTLINED_FUNCTION_34_3();
            v496 = sub_1DC291244(v494, v492, v495);

            *(v243 + 4) = v496;
            OUTLINED_FUNCTION_27_16();
            _os_log_impl(v497, v498, v499, v500, v501, 0xCu);
            OUTLINED_FUNCTION_53_12();
            OUTLINED_FUNCTION_40_0();

            (*(v488 + 8))(v610, v490);
          }

          else
          {

            (*(v488 + 8))(v489, v490);
          }

          OUTLINED_FUNCTION_266();
          if (v526)
          {
            v527 = *(v258 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
            v528 = *(v258 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8);
            v529 = *(*v258 + 1056);
            OUTLINED_FUNCTION_225_1();
            goto LABEL_121;
          }

          goto LABEL_124;
        }

        sub_1DC3D8B40(*(v263 + 56) + *(v625 + 72) * v268, v640);

        OUTLINED_FUNCTION_19();
        v270 = v257;
        v271 = v646;
        __swift_storeEnumTagSinglePayload(v272, v273, v274, v646);
        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v275, v276, v277, v638);
        OUTLINED_FUNCTION_193_0(&v654);
        sub_1DC3D8B40(v278, v279);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          OUTLINED_FUNCTION_112_4();
          sub_1DC3D8824();
        }

        else
        {
          v280 = *v263;
          v281 = *((*v265 & **v263) + 0x78);
          OUTLINED_FUNCTION_76_1(&v647);
          v281();
          OUTLINED_FUNCTION_61();
          __swift_storeEnumTagSinglePayload(v282, v283, v284, v271);
          v285 = OUTLINED_FUNCTION_264();
          sub_1DC384434(v285, v286, &qword_1ECC7C370, &qword_1DC5230E0);
          OUTLINED_FUNCTION_76_1(&v651);
          v281();
          OUTLINED_FUNCTION_213(&v652);
          sub_1DC51374C();
          OUTLINED_FUNCTION_37(&v640);
          v287 = OUTLINED_FUNCTION_47_0();
          v288(v287);
          OUTLINED_FUNCTION_106(&v650);
          sub_1DC51171C();
          OUTLINED_FUNCTION_37(&v638);
          OUTLINED_FUNCTION_319();
          v289();
          OUTLINED_FUNCTION_213(&v646);
          Siri_Nlu_External_ResponseStatus.StatusCode.toOrchestrationStatusCode()(v290);

          OUTLINED_FUNCTION_37(&v637);
          v291(v271, v638);
          sub_1DC384434(v281, v270, &qword_1ECC7D420, &unk_1DC528440);
        }

        v292 = v626;
        v293 = v635;
        v257 = v270;
        v294 = v649;
        OUTLINED_FUNCTION_119_3();
        v296 = (*(v295 + 392))();
        if (*(v296 + 16))
        {
          v297 = sub_1DC2AEB04(v644, v645);
          if (v298)
          {
            v293 = v297;
            v299 = *(v296 + 56);
            v300 = OUTLINED_FUNCTION_212();
            v302 = __swift_instantiateConcreteTypeFromMangledNameV2(v300, v301);
            OUTLINED_FUNCTION_35(v302);
            v304 = v299 + *(v303 + 72) * v293;
            OUTLINED_FUNCTION_159_0(&a13);
            sub_1DC28F414(v305, v306, &qword_1ECC7D320, &qword_1DC5283A0);

            OUTLINED_FUNCTION_61();
            v310 = v302;
            goto LABEL_46;
          }

          v313 = OUTLINED_FUNCTION_74();
          __swift_instantiateConcreteTypeFromMangledNameV2(v313, v314);
          v293 = v635;
        }

        else
        {

          v311 = OUTLINED_FUNCTION_74();
          __swift_instantiateConcreteTypeFromMangledNameV2(v311, v312);
        }

        OUTLINED_FUNCTION_19();
LABEL_46:
        __swift_storeEnumTagSinglePayload(v307, v308, v309, v310);
        v315 = OUTLINED_FUNCTION_74();
        __swift_instantiateConcreteTypeFromMangledNameV2(v315, v316);
        v317 = OUTLINED_FUNCTION_44();
        if (!__swift_getEnumTagSinglePayload(v317, v318, v319))
        {
          sub_1DC51112C();
        }

        sub_1DC28EB30(v293, &qword_1ECC7D388, &unk_1DC5283E8);
        v320 = sub_1DC5112EC();
        OUTLINED_FUNCTION_214_0();
        __swift_storeEnumTagSinglePayload(v321, v322, v323, v320);
        OUTLINED_FUNCTION_193_0(&v656);
        OUTLINED_FUNCTION_263();
        sub_1DC28F414(v324, v325, v326, v327);
        v328 = OUTLINED_FUNCTION_34_11();
        OUTLINED_FUNCTION_39(v328, v329, v320);
        if (v163)
        {
          v330 = OUTLINED_FUNCTION_74();
          sub_1DC28EB30(v330, v331, &qword_1DC528408);
          sub_1DC5119DC();
          OUTLINED_FUNCTION_19();
          __swift_storeEnumTagSinglePayload(v332, v333, v334, v335);
        }

        else
        {
          OUTLINED_FUNCTION_213(&v648);
          sub_1DC51129C();
          OUTLINED_FUNCTION_7_1(v320);
          v337 = *(v336 + 8);
          v338 = OUTLINED_FUNCTION_31_0();
          v339(v338);
          v340 = sub_1DC51104C();
          OUTLINED_FUNCTION_37(&v639);
          v341(&qword_1ECC7D3B8, v620);
          if (*(v340 + 16))
          {
            v342 = sub_1DC5119DC();
            OUTLINED_FUNCTION_35(v342);
            v344 = *(v343 + 16);
            v345 = *(v343 + 80);
            v346 = OUTLINED_FUNCTION_261();
            v347(v346);

            OUTLINED_FUNCTION_61();
            v351 = v342;
          }

          else
          {

            sub_1DC5119DC();
            OUTLINED_FUNCTION_19();
          }

          __swift_storeEnumTagSinglePayload(v348, v349, v350, v351);
        }

        OUTLINED_FUNCTION_193_0(&v657);
        OUTLINED_FUNCTION_263();
        sub_1DC28F414(v352, v353, v354, v355);
        v356 = OUTLINED_FUNCTION_34_11();
        OUTLINED_FUNCTION_39(v356, v357, v320);
        if (v163)
        {
          v358 = OUTLINED_FUNCTION_74();
          sub_1DC28EB30(v358, v359, &qword_1DC528408);
          v364 = 1;
        }

        else
        {
          sub_1DC5112BC();
          OUTLINED_FUNCTION_7_1(v320);
          v361 = *(v360 + 8);
          v362 = OUTLINED_FUNCTION_31_0();
          v363(v362);
          v364 = 0;
        }

        v365 = sub_1DC51190C();
        __swift_storeEnumTagSinglePayload(v292, v364, 1, v365);
        v366 = v641;
        v367 = sub_1DC3B3BC0(v642, v292, v641);
        MEMORY[0x1EEE9AC00](v367);
        v368 = v650;
        *(&v596 - 6) = v650;
        *(&v596 - 5) = v257;
        *(&v596 - 4) = &v660;
        *(&v596 - 3) = v633;
        *(&v596 - 2) = v294;
        *(&v596 - 1) = v366;
        v369 = objc_allocWithZone(sub_1DC51616C());
        OUTLINED_FUNCTION_43_12();
        v370 = sub_1DC5160FC();
        v193 = v370;
        if (v370)
        {
          v371 = v370;
          v372 = v659;
          swift_isUniquelyReferenced_nonNull_native();
          v651 = v372;
          v373 = v639;
          v374 = OUTLINED_FUNCTION_51();
          v376 = sub_1DC2AEB04(v374, v375);
          if (__OFADD__(*(v372 + 16), (v377 & 1) == 0))
          {
            goto LABEL_137;
          }

          v378 = v376;
          v379 = v377;
          v628 = v193;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3C0, &qword_1DC528410);
          if (sub_1DC517FFC())
          {
            v380 = v648;
            v381 = sub_1DC2AEB04(v373, v648);
            v383 = v650;
            v257 = v629;
            if ((v379 & 1) != (v382 & 1))
            {
              goto LABEL_140;
            }

            v378 = v381;
          }

          else
          {
            v383 = v650;
            v257 = v629;
            v380 = v648;
          }

          v385 = v651;
          if (v379)
          {
            v393 = v651[7];
            v394 = *(v393 + 8 * v378);
            *(v393 + 8 * v378) = v371;
          }

          else
          {
            OUTLINED_FUNCTION_280(&v651[v378 >> 6]);
            v395 = (v385[6] + 16 * v378);
            *v395 = v373;
            v395[1] = v380;
            *(v385[7] + 8 * v378) = v371;
            v396 = v385[2];
            v397 = __OFADD__(v396, 1);
            v398 = v396 + 1;
            if (v397)
            {
              goto LABEL_139;
            }

            v385[2] = v398;
          }

          v659 = v385;
          v368 = v383;
          v193 = v628;
        }

        else
        {
          v384 = OUTLINED_FUNCTION_51();
          v385 = v628;
          v387 = sub_1DC2AEB04(v384, v386);
          if (v388)
          {
            v389 = v387;
            v390 = v659;
            swift_isUniquelyReferenced_nonNull_native();
            v651 = v390;
            v391 = *(v390 + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3C0, &qword_1DC528410);
            v257 = v629;
            v368 = v650;
            sub_1DC517FFC();
            v385 = v651;
            v392 = *(v651[6] + 16 * v389 + 8);

            sub_1DC51800C();
            v659 = v385;
          }
        }

        v628 = v385;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v368, 1, v646);
        v400 = MEMORY[0x1E69E7CC0];
        if (!EnumTagSinglePayload)
        {
          v400 = sub_1DC51375C();
        }

        v401 = v658;
        swift_isUniquelyReferenced_nonNull_native();
        v651 = v401;
        v402 = OUTLINED_FUNCTION_51();
        v404 = sub_1DC2AEB04(v402, v403);
        if (__OFADD__(*(v401 + 16), (v405 & 1) == 0))
        {
          goto LABEL_136;
        }

        v406 = v404;
        v407 = v405;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4D8, &qword_1DC5285A8);
        if (sub_1DC517FFC())
        {
          v408 = OUTLINED_FUNCTION_34_3();
          v409 = sub_1DC2AEB04(v408, v648);
          v216 = v649;
          if ((v407 & 1) != (v410 & 1))
          {
            goto LABEL_140;
          }

          v406 = v409;
        }

        else
        {
          v216 = v649;
        }

        v255 = v651;
        if (v407)
        {
          v411 = v651[7];
          v412 = *(v411 + 8 * v406);
          *(v411 + 8 * v406) = v400;
        }

        else
        {
          OUTLINED_FUNCTION_280(&v651[v406 >> 6]);
          v413 = (v255[6] + 16 * v406);
          v414 = v648;
          *v413 = v639;
          v413[1] = v414;
          *(v255[7] + 8 * v406) = v400;
          v415 = v255[2];
          v397 = __OFADD__(v415, 1);
          v416 = v415 + 1;
          if (v397)
          {
            goto LABEL_138;
          }

          v255[2] = v416;
        }

        v247 &= v247 - 1;

        sub_1DC28EB30(v647, &qword_1ECC7D3B8, &qword_1DC528408);
        OUTLINED_FUNCTION_112_4();
        sub_1DC3D8824();
        v658 = v255;
        OUTLINED_FUNCTION_1_32();
        sub_1DC3D8824();
        sub_1DC28EB30(v257, &qword_1ECC7D420, &unk_1DC528440);
        sub_1DC28EB30(v650, &qword_1ECC7C370, &qword_1DC5230E0);
        OUTLINED_FUNCTION_205_1();
        v256 = v631;
        v243 = v618;
        v244 = v627;
        v253 = v617;
        if (!v247)
        {
          goto LABEL_31;
        }
      }
    }

    while (1)
    {
LABEL_31:
      v259 = v249 + 1;
      if (__OFADD__(v249, 1))
      {
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        sub_1DC51829C();
        __break(1u);
        return;
      }

      if (v259 >= v253)
      {
        break;
      }

      v247 = v244[v259];
      ++v249;
      if (v247)
      {
        v616 = v255;
        v258 = v216;
        v249 = v259;
        goto LABEL_35;
      }
    }

    v429 = *(v243 + 16);

    if (v429 == v628[2])
    {
      v431 = v624;
      if (*(v216 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_isMUXEnabled) != 1)
      {
        MEMORY[0x1EEE9AC00](v430);
        *(&v596 - 6) = v216;
        *(&v596 - 5) = v431;
        v502 = v615;
        *(&v596 - 4) = v615;
        *(&v596 - 3) = &v659;
        *(&v596 - 2) = &v658;
        v503 = objc_allocWithZone(sub_1DC51539C());
        OUTLINED_FUNCTION_170_1();
        sub_1DC51530C();
        OUTLINED_FUNCTION_269();
        v505 = v644;
        if (v504)
        {
          v506 = v504;
          sub_1DC2A0AE0();
          v507 = v605;
          OUTLINED_FUNCTION_44_8();
          v508 = v604;
          v509 = v606;
          v510(v604);
          v511 = swift_allocObject();
          v511[2] = v216;
          v511[3] = v431;
          v511[4] = v502;
          v511[5] = v505;
          v511[6] = v645;

          OUTLINED_FUNCTION_348();
          sub_1DC5168CC();

          v512 = *(v507 + 8);
          v513 = OUTLINED_FUNCTION_149();
          v514(v513);
          sub_1DC28D414();
          OUTLINED_FUNCTION_81_4();
          v515 = OUTLINED_FUNCTION_211_0();
          v516(v515);

          v517 = sub_1DC516F6C();
          v518 = sub_1DC517B9C();

          if (os_log_type_enabled(v517, v518))
          {
            OUTLINED_FUNCTION_63();
            v519 = v502;
            v520 = OUTLINED_FUNCTION_73_5();
            v651 = v520;
            *v509 = 136315138;
            v521 = sub_1DC291244(v624, v519, &v651);
            OUTLINED_FUNCTION_181_0();

            *(v509 + 4) = v521;
            OUTLINED_FUNCTION_28_8();
            OUTLINED_FUNCTION_236_0(v522, v523, v524, v525);
            __swift_destroy_boxed_opaque_existential_1Tm(v520);
            OUTLINED_FUNCTION_58();
            OUTLINED_FUNCTION_40_0();

            (*(v508 + 8))(v608, v256);
          }

          else
          {

            v558 = OUTLINED_FUNCTION_328();
            v559(v558, v256);
          }

          v480 = v630;
          v560 = *(v216 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher + 32);
          OUTLINED_FUNCTION_121_1((v216 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher), *(v216 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher + 24));
          OUTLINED_FUNCTION_63_0();
          sub_1DC515D8C();

          goto LABEL_119;
        }

        sub_1DC28D414();
        OUTLINED_FUNCTION_191_1();
        v544 = *(v543 - 256);
        OUTLINED_FUNCTION_44_8();
        v545(v601);

        v546 = sub_1DC516F6C();
        sub_1DC517BAC();
        OUTLINED_FUNCTION_354();

        if (OUTLINED_FUNCTION_172())
        {
          v547 = OUTLINED_FUNCTION_140();
          v651 = OUTLINED_FUNCTION_143();
          *v547 = 136315394;
          v548 = OUTLINED_FUNCTION_174();
          v551 = sub_1DC291244(v548, v549, v550);
          OUTLINED_FUNCTION_216_0();

          *(v547 + 4) = v551;
          *(v547 + 12) = 2080;
          *(v547 + 14) = sub_1DC291244(*(v216 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId), *(v216 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8), &v651);
          OUTLINED_FUNCTION_16_0();
          _os_log_impl(v552, v553, v554, v555, v556, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_40_0();
          OUTLINED_FUNCTION_31();
        }

        else
        {
        }

        v563 = *(v544 + 8);
        v564 = OUTLINED_FUNCTION_264();
        v565(v564);
        v566 = v630;

        if ((v566 & 1) == 0)
        {
          goto LABEL_124;
        }

LABEL_100:
        OUTLINED_FUNCTION_35_15(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
        v485 = *(v484 + 1056);
        OUTLINED_FUNCTION_225_1();
        v486();
        goto LABEL_124;
      }

      OUTLINED_FUNCTION_119_3();
      v433 = (*(v432 + 392))();
      v434 = v609;
      v435 = v645;
      v436 = OUTLINED_FUNCTION_73();
      sub_1DC3BF988(v436, v437, v433, v438);

      v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
      v440 = OUTLINED_FUNCTION_34_11();
      v442 = __swift_getEnumTagSinglePayload(v440, v441, v439);
      v443 = v636;
      if (v442)
      {
        OUTLINED_FUNCTION_216_0();

        sub_1DC28EB30(v434, &qword_1ECC7D388, &unk_1DC5283E8);
        sub_1DC28D414();
        OUTLINED_FUNCTION_191_1();
        v445 = *(v444 - 256);
        OUTLINED_FUNCTION_44_8();
        v446(v256);

        v447 = sub_1DC516F6C();
        sub_1DC517BAC();

        if (OUTLINED_FUNCTION_172())
        {
          OUTLINED_FUNCTION_63();
          v448 = OUTLINED_FUNCTION_111();
          v651 = v448;
          *v435 = 136315138;
          OUTLINED_FUNCTION_74_0();
          OUTLINED_FUNCTION_181_0();
          *(v435 + 4) = sub_1DC291244(v449, v450, v451);
          OUTLINED_FUNCTION_16_0();
          _os_log_impl(v452, v453, v454, v455, v456, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v448);
          OUTLINED_FUNCTION_40_0();
          OUTLINED_FUNCTION_31();

          (*(v445 + 8))(v631, v443);
        }

        else
        {

          (*(v445 + 8))(v256, v443);
        }

        OUTLINED_FUNCTION_266();
        if ((v557 & 1) == 0)
        {
          goto LABEL_124;
        }

LABEL_120:
        OUTLINED_FUNCTION_35_15(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
        v562 = *(v561 + 1056);
        OUTLINED_FUNCTION_225_1();
LABEL_121:
        v530();
LABEL_124:

        goto LABEL_125;
      }

      v531 = v193[2];
      v532 = v434 + *(v439 + 64);
      v533 = OUTLINED_FUNCTION_83(&v627);
      v531(v533);
      sub_1DC28EB30(v434, &qword_1ECC7D388, &unk_1DC5283E8);
      OUTLINED_FUNCTION_278();
      v534 = v602;
      v535 = OUTLINED_FUNCTION_147_0();
      v537 = v536(v535);
      MEMORY[0x1EEE9AC00](v537);
      *(&v596 - 6) = v534;
      *(&v596 - 5) = v216;
      v538 = v193;
      v539 = v615;
      *(&v596 - 4) = v431;
      *(&v596 - 3) = v539;
      *(&v596 - 2) = &v659;
      *(&v596 - 1) = &v658;
      objc_allocWithZone(sub_1DC5155BC());
      OUTLINED_FUNCTION_170_1();
      v540 = sub_1DC51552C();
      if (!v540)
      {
        sub_1DC28D414();
        OUTLINED_FUNCTION_191_1();
        v568 = *(v567 - 256);
        OUTLINED_FUNCTION_90();
        v569 = v600;
        v570(v600);
        v571 = v599;
        v572 = OUTLINED_FUNCTION_264();
        v573 = v607;
        v531(v572);

        v574 = sub_1DC516F6C();
        v575 = sub_1DC517BAC();

        if (OUTLINED_FUNCTION_301())
        {
          v576 = OUTLINED_FUNCTION_82();
          v651 = swift_slowAlloc();
          *v576 = 136315650;
          OUTLINED_FUNCTION_0_49();
          sub_1DC3D8E40(v577, v578);
          v579 = v571;
          sub_1DC51823C();
          OUTLINED_FUNCTION_163();
          v580 = v573;
          OUTLINED_FUNCTION_262();
          LODWORD(v650) = v575;
          OUTLINED_FUNCTION_344(v581);
          v575();
          v582 = OUTLINED_FUNCTION_151();
          sub_1DC291244(v582, v583, v584);
          OUTLINED_FUNCTION_155_0();

          *(v576 + 4) = v579;
          *(v576 + 12) = 2080;
          v585 = sub_1DC291244(v624, v615, &v651);
          OUTLINED_FUNCTION_216_0();

          *(v576 + 14) = v585;
          *(v576 + 22) = 2080;
          *(v576 + 24) = sub_1DC291244(*(v216 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId), *(v216 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8), &v651);
          OUTLINED_FUNCTION_85_6();
          _os_log_impl(v586, v587, v588, v589, v590, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_40_0();

          (*(v568 + 8))(v600, v636);
        }

        else
        {

          v580 = v573;
          OUTLINED_FUNCTION_262();
          OUTLINED_FUNCTION_344(v591);
          v575();
          (*(v568 + 8))(v569, v636);
        }

        v592 = v630;
        (v575)(v602, v580);

        if (v592)
        {
          OUTLINED_FUNCTION_35_15(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
          v594 = *(v593 + 1056);
          OUTLINED_FUNCTION_225_1();
          v595();
        }

        goto LABEL_124;
      }

      v541 = v540;

      v542 = *(v216 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher + 32);
      OUTLINED_FUNCTION_121_1((v216 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher), *(v216 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher + 24));
      OUTLINED_FUNCTION_63_0();
      sub_1DC515D8C();

      (v538[1])(v534, v607);
      v480 = v630;
    }

    else
    {
      OUTLINED_FUNCTION_216_0();

      v480 = v630;
      OUTLINED_FUNCTION_181_0();
    }

LABEL_119:

    if ((v480 & 1) == 0)
    {
      OUTLINED_FUNCTION_216_0();
      goto LABEL_124;
    }

    goto LABEL_120;
  }

  sub_1DC28D414();
  OUTLINED_FUNCTION_19_1();
  v417 = v612;
  v418(v612);

  v419 = sub_1DC516F6C();
  sub_1DC517BAC();

  if (OUTLINED_FUNCTION_172())
  {
    OUTLINED_FUNCTION_63();
    v420 = OUTLINED_FUNCTION_111();
    v655 = v420;
    *v219 = 136315138;
    v421 = OUTLINED_FUNCTION_46_0();
    *(v219 + 4) = sub_1DC291244(v421, v422, v423);
    OUTLINED_FUNCTION_16_0();
    _os_log_impl(v424, v425, v426, v427, v428, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v420);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_31();

    (*(v179 + 8))(v417, v636);
  }

  else
  {

    v470 = *(v179 + 8);
    v471 = OUTLINED_FUNCTION_78_6();
    v473(v471, v472);
  }

  OUTLINED_FUNCTION_266();
  if (v474)
  {
    OUTLINED_FUNCTION_35_15(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
    v476 = *(v475 + 1056);
    OUTLINED_FUNCTION_225_1();
    v479(v477, v478);
  }

LABEL_125:
  OUTLINED_FUNCTION_34();
}

void (*sub_1DC3D02A0(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1DC3D765C(v6, a2, a3);
  return sub_1DC337000;
}

void sub_1DC3D0314()
{
  OUTLINED_FUNCTION_33();
  v89 = v5;
  v7 = v6;
  v86 = v8;
  v87 = v9;
  v85 = v10;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D390, &qword_1DC527790);
  OUTLINED_FUNCTION_10(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25();
  v88 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  v21 = OUTLINED_FUNCTION_10(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_313(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D418, &qword_1DC528438);
  OUTLINED_FUNCTION_10(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_78_8();
  v30 = sub_1DC5137CC();
  v31 = OUTLINED_FUNCTION_0(v30);
  v84 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_271(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D4B0, &unk_1DC528580);
  OUTLINED_FUNCTION_10(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_24_0();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D420, &unk_1DC528440);
  v41 = OUTLINED_FUNCTION_10(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_42_3();
  v45 = OUTLINED_FUNCTION_34_11();
  if (!__swift_getEnumTagSinglePayload(v45, v46, v30))
  {
    sub_1DC51377C();
  }

  sub_1DC51610C();
  sub_1DC28F414(v85, v0, &qword_1ECC7D420, &unk_1DC528440);
  sub_1DC51170C();
  v47 = OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_39(v47, 1, v14);
  if (v48)
  {
    v49 = *MEMORY[0x1E69D0AA0];
    OUTLINED_FUNCTION_7_1(v14);
    (*(v50 + 104))(v1);
    OUTLINED_FUNCTION_39(v0, 1, v14);
    if (!v48)
    {
      sub_1DC28EB30(v0, &qword_1ECC7D420, &unk_1DC528440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_1(v14);
    v52 = *(v51 + 32);
    v53 = OUTLINED_FUNCTION_41();
    v54(v53);
  }

  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v14);
  sub_1DC51612C();
  if (*v86)
  {
    v58 = v12;
    if (__swift_getEnumTagSinglePayload(v12, 1, v30))
    {
      sub_1DC511EEC();
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
    }

    else
    {
      v67 = *(v84 + 16);
      v68 = OUTLINED_FUNCTION_151();
      v69(v68);
      sub_1DC33D8D0(v3);
      v70 = *(v84 + 8);
      v71 = OUTLINED_FUNCTION_48_0();
      v72(v71);
    }
  }

  else
  {
    sub_1DC511EEC();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
    v58 = v12;
  }

  OUTLINED_FUNCTION_336();
  sub_1DC51611C();
  sub_1DC28F414(v87, v4, &qword_1ECC7D418, &qword_1DC528438);
  sub_1DC51613C();
  if (!__swift_getEnumTagSinglePayload(v58, 1, v30))
  {
    sub_1DC51376C();
  }

  v73 = sub_1DC511E5C();
  OUTLINED_FUNCTION_214_0();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v73);
  (*(*v7 + 1000))(v2);
  sub_1DC28EB30(v2, &qword_1ECC7D398, &qword_1DC5283F8);
  v77 = OUTLINED_FUNCTION_32_9();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v73);
  OUTLINED_FUNCTION_312();
  sub_1DC51614C();
  OUTLINED_FUNCTION_16_11();
  sub_1DC3D8B40(v89, v88);
  type metadata accessor for DialogState(0);
  OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  (*(*v7 + 1008))(v88);
  OUTLINED_FUNCTION_123_0();
  sub_1DC28EB30(v88, &qword_1ECC7D390, &qword_1DC527790);
  sub_1DC51615C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D0854()
{
  OUTLINED_FUNCTION_33();
  v46 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_95();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  OUTLINED_FUNCTION_10(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_78_8();
  v19 = sub_1DC5162DC();
  OUTLINED_FUNCTION_35(v19);
  v21 = *(v20 + 16);
  v22 = OUTLINED_FUNCTION_176();
  v23(v22);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v19);
  sub_1DC51558C();
  v27 = *MEMORY[0x1E69D0450];
  v28 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35(v28);
  (*(v29 + 104))(v1, v27, v28);
  v30 = OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_378(v30, v31, v32, v28);
  sub_1DC51557C();
  v33 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  v34 = sub_1DC510B6C();
  OUTLINED_FUNCTION_35(v34);
  (*(v35 + 16))(v0, v6 + v33, v34);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v34);
  sub_1DC5155AC();
  v39 = *(v6 + 56);
  v40 = *(v6 + 64);

  sub_1DC51553C();
  v41 = *(v6 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
  v42 = *(v6 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8);

  OUTLINED_FUNCTION_229();
  sub_1DC51559C();

  OUTLINED_FUNCTION_30();
  sub_1DC51554C();
  v43 = *v4;

  sub_1DC3C3448(v44);

  sub_1DC51555C();
  v45 = *v46;

  sub_1DC51556C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D0AD0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_341();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_40_3();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_95();
  v14 = *MEMORY[0x1E69D0450];
  v15 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35(v15);
  (*(v16 + 104))(v3, v14, v15);
  v17 = OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_378(v17, v18, v19, v15);
  sub_1DC51535C();
  v20 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  v21 = sub_1DC510B6C();
  OUTLINED_FUNCTION_35(v21);
  (*(v22 + 16))(v2, v5 + v20, v21);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v21);
  sub_1DC51538C();
  v26 = *(v5 + 56);
  v27 = *(v5 + 64);

  OUTLINED_FUNCTION_264();
  sub_1DC51531C();
  v28 = v5 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId;
  v29 = *(v5 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
  v30 = *(v28 + 8);

  sub_1DC51537C();

  OUTLINED_FUNCTION_30();
  sub_1DC51532C();
  v31 = *v1;

  sub_1DC3C3448(v32);

  sub_1DC51533C();
  v33 = *v0;

  sub_1DC51534C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D0CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v23;
  a20 = v24;
  v207 = v21;
  v218 = v25;
  OUTLINED_FUNCTION_38_2();
  v26 = sub_1DC5161DC();
  v27 = OUTLINED_FUNCTION_2_29(v26, &a9);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v30);
  v31 = sub_1DC516F7C();
  v32 = OUTLINED_FUNCTION_0(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_62();
  v222 = v42;
  OUTLINED_FUNCTION_12();
  v227 = sub_1DC511EEC();
  v43 = OUTLINED_FUNCTION_0(v227);
  v213 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_15();
  v221 = v47;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_62();
  v230 = v49;
  OUTLINED_FUNCTION_12();
  v50 = sub_1DC51164C();
  v51 = OUTLINED_FUNCTION_0(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_2_1();
  v217 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C170, &qword_1DC522F38);
  OUTLINED_FUNCTION_10(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_11_1();
  v61 = sub_1DC51122C();
  v62 = OUTLINED_FUNCTION_0(v61);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_1();
  v69 = v68 - v67;
  v70 = sub_1DC51377C();
  sub_1DC3C18F8(v70, MEMORY[0x1E69D09E0], v22);

  OUTLINED_FUNCTION_30_8(v22);
  if (v115)
  {
    sub_1DC28EB30(v22, &qword_1ECC7C170, &qword_1DC522F38);
    v71 = sub_1DC28D414();
    (*(v34 + 16))(v20, v71, v31);
    v72 = sub_1DC516F6C();
    v73 = v34;
    v74 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_25_0(v74))
    {
      v75 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v75);
      OUTLINED_FUNCTION_28_8();
      _os_log_impl(v76, v77, v78, v79, v61, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    v80 = *(v73 + 8);
    v81 = OUTLINED_FUNCTION_229();
    v82(v81);
  }

  else
  {
    v209 = v34;
    v83 = *(v64 + 32);
    v84 = OUTLINED_FUNCTION_50_0();
    v205 = v61;
    v85(v84);
    v86 = *(sub_1DC5111AC() + 16);
    v224 = v31;
    if (v86)
    {
      v89 = *(v53 + 16);
      v88 = v53 + 16;
      v87 = v89;
      v90 = *(v88 + 64);
      OUTLINED_FUNCTION_24();
      v93 = v91 + v92;
      v94 = *(v88 + 56);
      v228 = (v88 - 8);
      v229 = v94;
      OUTLINED_FUNCTION_178_1();
      v225 = (v95 + 8);
      v226 = (v95 + 16);
      v96 = MEMORY[0x1E69E7CC0];
      v211 = *(v97 + 2112);
      v215 = v50;
      v216 = v69;
      v214 = v89;
      while (1)
      {
        v98 = OUTLINED_FUNCTION_31_0();
        v87(v98);
        if (sub_1DC51151C())
        {
          break;
        }

        v111 = *v228;
        v112 = OUTLINED_FUNCTION_288();
        v113(v112);
LABEL_29:
        v93 += v229;
        if (!--v86)
        {
          v135 = v96;

          goto LABEL_32;
        }
      }

      sub_1DC51161C();
      v99 = sub_1DC28D414();
      v100 = *v226;
      v101 = OUTLINED_FUNCTION_288();
      v223 = v102;
      (v102)(v101);
      v103 = v218;
      v104 = sub_1DC516F6C();
      v105 = sub_1DC517B9C();

      if (os_log_type_enabled(v104, v105))
      {
        v219 = v96;
        v106 = OUTLINED_FUNCTION_63();
        v107 = OUTLINED_FUNCTION_82();
        v231 = v107;
        *v106 = v211;
        v108 = sub_1DC515B5C();
        OUTLINED_FUNCTION_375(v108, v109);
        OUTLINED_FUNCTION_334();

        *(v106 + 4) = v31;
        v31 = v224;
        _os_log_impl(&dword_1DC287000, v104, v105, "Found a DelegatedUserDialogAct for rcId: %s", v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v107);
        OUTLINED_FUNCTION_102();
        v96 = v219;
        OUTLINED_FUNCTION_66();

        v110 = *v225;
        (*v225)(v222, v224);
      }

      else
      {

        v110 = *v225;
        (*v225)(v222, v31);
      }

      v115 = sub_1DC511EBC() == 0xD000000000000013 && 0x80000001DC544D00 == v114;
      if (v115)
      {
      }

      else
      {
        v116 = sub_1DC51825C();

        if ((v116 & 1) == 0)
        {
          (*(v213 + 8))(v230, v227);
          (*v228)(v217, v215);
          v69 = v216;
LABEL_28:
          v87 = v214;
          goto LABEL_29;
        }
      }

      v220 = v110;
      v223(v212, v99, v31);
      v117 = v103;
      v118 = sub_1DC516F6C();
      v119 = sub_1DC517B9C();

      if (os_log_type_enabled(v118, v119))
      {
        OUTLINED_FUNCTION_63();
        v120 = v96;
        v121 = OUTLINED_FUNCTION_115_4();
        v231 = v121;
        *v31 = v211;
        v122 = sub_1DC515B5C();
        OUTLINED_FUNCTION_375(v122, v123);
        OUTLINED_FUNCTION_10_19();

        *(v31 + 4) = v117;
        _os_log_impl(&dword_1DC287000, v118, v119, "Found a DelegatedUserDialogAct with externalParserId set to the right value, for rcId: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v121);
        v96 = v120;
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_67();

        v124 = v212;
        v125 = v224;
      }

      else
      {

        v124 = v212;
        v125 = v31;
      }

      v220(v124, v125);
      OUTLINED_FUNCTION_37(&a14);
      v126(v221, v230, v227);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = sub_1DC3D6338(0, *(v96 + 16) + 1, 1, v96, &unk_1ECC7D4C0, &unk_1DC528590, MEMORY[0x1E69D0BE8], MEMORY[0x1E69D0BE8]);
      }

      v128 = *(v96 + 16);
      v127 = *(v96 + 24);
      if (v128 >= v127 >> 1)
      {
        v96 = sub_1DC3D6338(v127 > 1, v128 + 1, 1, v96, &unk_1ECC7D4C0, &unk_1DC528590, MEMORY[0x1E69D0BE8], MEMORY[0x1E69D0BE8]);
      }

      v129 = v227;
      (*(v213 + 8))(v230, v227);
      v130 = *v228;
      v131 = OUTLINED_FUNCTION_288();
      v132(v131);
      *(v96 + 16) = v128 + 1;
      v133 = *(v213 + 80);
      OUTLINED_FUNCTION_24();
      (*(v213 + 32))(v96 + v134 + *(v213 + 72) * v128, v221, v129);
      v69 = v216;
      v31 = v224;
      goto LABEL_28;
    }

    v135 = MEMORY[0x1E69E7CC0];
LABEL_32:
    v136 = sub_1DC28D414();
    v137 = *(v209 + 16);
    v228 = v136;
    v229 = v137;
    v230 = v209 + 16;
    v137();
    v138 = v218;
    v139 = sub_1DC516F6C();
    v140 = sub_1DC517B9C();

    if (os_log_type_enabled(v139, v140))
    {
      v141 = OUTLINED_FUNCTION_140();
      v231 = OUTLINED_FUNCTION_143();
      *v141 = 136315394;
      v142 = sub_1DC515B5C();
      OUTLINED_FUNCTION_375(v142, v143);
      v144 = v69;
      OUTLINED_FUNCTION_373();
      *(v141 + 4) = v69;
      *(v141 + 12) = 2080;

      MEMORY[0x1E12962D0](v145, v227);
      v147 = v146;

      v148 = OUTLINED_FUNCTION_98_5();
      v150 = sub_1DC291244(v148, v147, v149);
      v69 = v144;

      *(v141 + 14) = v150;
      _os_log_impl(&dword_1DC287000, v139, v140, "delegatedUserDialogActs for rcId: %s delegatedUserDialogActs: %s", v141, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_58();
      v31 = v224;
      OUTLINED_FUNCTION_66();

      v152 = v209 + 8;
      v151 = *(v209 + 8);
      (v151)(v210, v224);
    }

    else
    {

      v152 = v209 + 8;
      v151 = *(v209 + 8);
      (v151)(v210, v31);
    }

    if (!*(v135 + 16))
    {
      (v229)(v208, v228, v31);
      v178 = v138;
      v179 = sub_1DC516F6C();
      sub_1DC517B9C();

      if (OUTLINED_FUNCTION_301())
      {
        OUTLINED_FUNCTION_63();
        v231 = OUTLINED_FUNCTION_73_5();
        *v139 = 136315138;
        v180 = sub_1DC515B5C();
        v182 = OUTLINED_FUNCTION_375(v180, v181);

        *(v139 + 4) = v182;
        OUTLINED_FUNCTION_85_6();
        _os_log_impl(v183, v184, v185, v186, v187, 0xCu);
        OUTLINED_FUNCTION_53_12();
        OUTLINED_FUNCTION_40_0();

        OUTLINED_FUNCTION_62_7(&a11);
        v188 = OUTLINED_FUNCTION_51();
        (v151)(v188);
        OUTLINED_FUNCTION_62_0(&v227);
        v190 = v69;
LABEL_45:
        v189(v190, v205);

        goto LABEL_46;
      }

      OUTLINED_FUNCTION_62_7(&a11);
      v177 = OUTLINED_FUNCTION_151();
LABEL_44:
      (v151)(v177);
      OUTLINED_FUNCTION_62_0(&v227);
      v190 = v69;
      goto LABEL_45;
    }

    v153 = *(v207 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils + 32);
    OUTLINED_FUNCTION_121_1((v207 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils), *(v207 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils + 24));
    v154 = *(v207 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
    v155 = *(v207 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8);
    v156 = *(v207 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_siriInputLocale);
    v157 = *(v207 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_siriInputLocale + 8);
    if (sub_1DC516A5C())
    {
      v158 = *(v207 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_instrumentationUtil);
      (*v207)[82]();
      OUTLINED_FUNCTION_194();
      sub_1DC515B5C();
      OUTLINED_FUNCTION_123_0();
      v159 = *MEMORY[0x1E69D0758];
      OUTLINED_FUNCTION_196_1(&v232);
      v161 = OUTLINED_FUNCTION_259(v160);
      v163 = *(v162 - 256);
      v164(v161);
      OUTLINED_FUNCTION_43_11();
      v166 = *(v165 + 144);
      v167 = OUTLINED_FUNCTION_42_2();
      v168(v167);

      (v207[1])(v152, v163);
      (v229)(v206, v228, v224);
      v169 = sub_1DC516F6C();
      v170 = sub_1DC517B9C();
      if (OUTLINED_FUNCTION_14_7(v170))
      {
        v171 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_81_2(v171);
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v172, v173, v174, v175, v176, 2u);
        OUTLINED_FUNCTION_31();
      }

      OUTLINED_FUNCTION_62_7(&a11);
      v177 = OUTLINED_FUNCTION_30();
      goto LABEL_44;
    }

    v191 = *MEMORY[0x1E69D0758];
    OUTLINED_FUNCTION_76_1(&v232);
    OUTLINED_FUNCTION_259(v192);
    OUTLINED_FUNCTION_355();
    v193();
    OUTLINED_FUNCTION_144_2();
    v195 = *(v194 + 1024);

    v196 = OUTLINED_FUNCTION_187();
    v195(v196);

    v197 = *(v151 + 8);
    v198 = OUTLINED_FUNCTION_146_1();
    v199(v198);
    v200 = sub_1DC515D6C();
    v202 = v201;
    sub_1DC515B5C();
    OUTLINED_FUNCTION_144_2();
    (*(v203 + 1056))(1, 0, v200, v202);

    OUTLINED_FUNCTION_62_0(&v227);
    v204(v69, v205);
  }

LABEL_46:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D1B58()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_155();
  v2 = sub_1DC5161DC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v35 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_24();
  v7 = sub_1DC516F7C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_21();
  sub_1DC28D414();
  OUTLINED_FUNCTION_32_5();
  v13(v1);
  v14 = v0;
  v15 = sub_1DC516F6C();
  v16 = sub_1DC517B9C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_140();
    OUTLINED_FUNCTION_143();
    *v17 = 136315394;
    v18 = sub_1DC515D6C();
    OUTLINED_FUNCTION_305(v18, v19);
    OUTLINED_FUNCTION_149_0();

    OUTLINED_FUNCTION_333();
    v20 = sub_1DC515B5C();
    OUTLINED_FUNCTION_305(v20, v21);
    OUTLINED_FUNCTION_149_0();

    *(v17 + 14) = v2;
    OUTLINED_FUNCTION_369(&dword_1DC287000, v22, v23, "Server-fallback for machine utterance. requestId: %s, rcId: %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_66();
  }

  (*(v10 + 8))(v1, v7);
  v24 = *MEMORY[0x1E69D0778];
  v25 = *(v35 + 104);
  v26 = OUTLINED_FUNCTION_233_0();
  v27(v26);
  OUTLINED_FUNCTION_144_2();
  v29 = *(v28 + 1024);
  v30 = OUTLINED_FUNCTION_261();
  v31(v30);
  v32 = *(v35 + 8);
  v33 = OUTLINED_FUNCTION_73();
  v34(v33);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D1DC8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_155();
  v2 = sub_1DC5161DC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v35 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_24();
  v7 = sub_1DC516F7C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_21();
  sub_1DC28D414();
  OUTLINED_FUNCTION_32_5();
  v13(v1);
  v14 = v0;
  v15 = sub_1DC516F6C();
  v16 = sub_1DC517B9C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_140();
    OUTLINED_FUNCTION_143();
    *v17 = 136315394;
    v18 = sub_1DC515D6C();
    OUTLINED_FUNCTION_305(v18, v19);
    OUTLINED_FUNCTION_149_0();

    OUTLINED_FUNCTION_333();
    v20 = sub_1DC515A5C();
    OUTLINED_FUNCTION_305(v20, v21);
    OUTLINED_FUNCTION_149_0();

    *(v17 + 14) = v2;
    OUTLINED_FUNCTION_369(&dword_1DC287000, v22, v23, "Server-fallback for machine utterance. requestId: %s, trpCandidateId: %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_66();
  }

  (*(v10 + 8))(v1, v7);
  v24 = *MEMORY[0x1E69D0778];
  v25 = *(v35 + 104);
  v26 = OUTLINED_FUNCTION_233_0();
  v27(v26);
  OUTLINED_FUNCTION_144_2();
  v29 = *(v28 + 1032);
  v30 = OUTLINED_FUNCTION_261();
  v31(v30);
  v32 = *(v35 + 8);
  v33 = OUTLINED_FUNCTION_73();
  v34(v33);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D2038()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v3 = sub_1DC516F7C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_38_1();
  v10 = (*(v9 + 416))();
  v11 = OUTLINED_FUNCTION_16();
  sub_1DC3BFA68(v11, v12, v10, v13);

  if (v31[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D328, &qword_1DC5283A8);
    OUTLINED_FUNCTION_38_2();
    type metadata accessor for ResultCandidateNlSpeechInput();
    OUTLINED_FUNCTION_252();
    if (swift_dynamicCast())
    {
      v14 = (*(*v30 + 120))();
      v15 = *(v2 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_instrumentationUtil);
      (*(*v2 + 656))();
      v16 = v14;
      sub_1DC515D6C();

      sub_1DC515B5C();
      OUTLINED_FUNCTION_223_1();
      v18 = *(v17 + 136);
      v19 = OUTLINED_FUNCTION_159();
      v20(v19);

      goto LABEL_8;
    }
  }

  else
  {
    sub_1DC28EB30(v31, &qword_1ECC7D410, &qword_1DC528430);
  }

  sub_1DC28D414();
  OUTLINED_FUNCTION_19_1();
  v21(v1);
  v22 = sub_1DC516F6C();
  sub_1DC517BAC();
  OUTLINED_FUNCTION_116();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_35_8();
    OUTLINED_FUNCTION_52_1(v24);
    OUTLINED_FUNCTION_51_8(&dword_1DC287000, v25, v26, "Missing ResultCandidate while logging error");
    OUTLINED_FUNCTION_58();
  }

  v27 = *(v6 + 8);
  v28 = OUTLINED_FUNCTION_36();
  v29(v28);
LABEL_8:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D22FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v188 = v20;
  LODWORD(v186) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D418, &qword_1DC528438);
  OUTLINED_FUNCTION_10(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v28);
  v187 = sub_1DC5161DC();
  v29 = OUTLINED_FUNCTION_0(v187);
  v190 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_1();
  v191 = v33;
  OUTLINED_FUNCTION_12();
  v34 = sub_1DC516F7C();
  v35 = OUTLINED_FUNCTION_0(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15();
  v182 = v40;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v44);
  v46 = v181 - v45;
  v47 = sub_1DC51110C();
  v48 = OUTLINED_FUNCTION_0(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  sub_1DC51370C();
  sub_1DC5110DC();
  v53 = *(v50 + 8);
  v54 = OUTLINED_FUNCTION_34_0();
  v55(v54);
  v56 = sub_1DC28D414();
  v57 = *(v37 + 16);
  v184 = v56;
  v185 = v57;
  (v57)(v46);

  v58 = sub_1DC516F6C();
  v59 = sub_1DC517B9C();

  v60 = OUTLINED_FUNCTION_302();
  v61 = &off_1DC522000;
  v189 = v37;
  if (v60)
  {
    OUTLINED_FUNCTION_63();
    v62 = OUTLINED_FUNCTION_73_5();
    v196[0] = v62;
    off_1DC522000 = 136315138;
    v63 = OUTLINED_FUNCTION_358();
    *&off_1DC522004 = sub_1DC291244(v63, v64, v65);
    OUTLINED_FUNCTION_236_0(&dword_1DC287000, v58, v59, "Received CDMSetup failure callback for nluRequestId: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_40_0();

    v66 = v189;
  }

  else
  {

    v66 = v37;
  }

  v67 = OUTLINED_FUNCTION_318(v66);
  v68 = v34;
  v183 = v69;
  v69(v67, v34);
  v70 = v188;
  OUTLINED_FUNCTION_223_1();
  v72 = (*(v71 + 416))();
  v73 = OUTLINED_FUNCTION_358();
  sub_1DC3BFA68(v73, v74, v72, v75);

  v76 = *(v190 + 104);
  v77 = v187;
  v76(v191, *MEMORY[0x1E69D0768], v187);
  if (v186 != 2 && (v186 & 1) != 0)
  {
    v61 = v191;
    v78 = *(v190 + 8);
    v79 = OUTLINED_FUNCTION_159();
    v80(v79);
    v76(v61, *MEMORY[0x1E69D0770], v77);
  }

  sub_1DC28F414(v196, v193, &qword_1ECC7D410, &qword_1DC528430);
  if (!v194)
  {
    sub_1DC28EB30(v193, &qword_1ECC7D410, &qword_1DC528430);
    goto LABEL_14;
  }

  v61 = v195;
  __swift_project_boxed_opaque_existential_1(v193, v194);
  v81 = *(v61 + 1);
  v82 = OUTLINED_FUNCTION_23_2();
  v84 = v83(v82, v61);
  __swift_destroy_boxed_opaque_existential_1Tm(v193);
  if ((v84 & 1) == 0)
  {
LABEL_14:
    sub_1DC28F414(v196, v193, &qword_1ECC7D410, &qword_1DC528430);
    if (v194)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D328, &qword_1DC5283A8);
      OUTLINED_FUNCTION_155();
      type metadata accessor for ResultCandidateNlSpeechInput();
      if (OUTLINED_FUNCTION_298())
      {

        v100 = v192;
        OUTLINED_FUNCTION_12_0();
        v102 = *(v101 + 120);
        v186 = v100;
        v103 = v102();
        v104 = *(v70 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils + 32);
        v105 = v70;
        v106 = __swift_project_boxed_opaque_existential_1((v70 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils), *(v70 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils + 24));
        v107 = v103;
        sub_1DC515D6C();
        v108 = *(v105 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_siriInputLocale);
        v109 = *(v105 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_siriInputLocale + 8);
        sub_1DC516A5C();
        v110 = OUTLINED_FUNCTION_306();
        if (v106)
        {
          v111 = *(v105 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_instrumentationUtil);
          v112 = (*(*v105 + 656))(v110);
          v114 = v113;
          sub_1DC515B5C();
          v115 = *(*v111 + 144);
          v116 = OUTLINED_FUNCTION_55();
          v117(v116);

          v118 = OUTLINED_FUNCTION_145_3(&a17);
          v119(v118);
          v120 = v107;
          v121 = sub_1DC516F6C();
          v122 = sub_1DC517B9C();

          if (os_log_type_enabled(v121, v122))
          {
            OUTLINED_FUNCTION_140();
            v193[0] = OUTLINED_FUNCTION_54_13();
            OUTLINED_FUNCTION_350(4.8151e-34);
            v123 = sub_1DC515D6C();
            OUTLINED_FUNCTION_255(v123, v124);
            OUTLINED_FUNCTION_10_19();

            *(v114 + 4) = v112;
            OUTLINED_FUNCTION_220_1();
            v125 = sub_1DC515B5C();
            OUTLINED_FUNCTION_255(v125, v126);
            OUTLINED_FUNCTION_10_19();

            *(v114 + 14) = v112;
            OUTLINED_FUNCTION_130_3();
            _os_log_impl(v127, v128, v129, v130, v131, 0x16u);
            OUTLINED_FUNCTION_218_0();
            OUTLINED_FUNCTION_102();
            OUTLINED_FUNCTION_58();

            OUTLINED_FUNCTION_187_0();
            v132 = OUTLINED_FUNCTION_46_0();
          }

          else
          {

            OUTLINED_FUNCTION_187_0();
            v132 = v112;
            v133 = v68;
          }

          v183(v132, v133);
          v177 = v187;
          type metadata accessor for AssistantNLRequestHandler(0);
          v178 = *(v188 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serviceHelper);
          sub_1DC515D6C();
          OUTLINED_FUNCTION_193();

          OUTLINED_FUNCTION_62_2();
          sub_1DC3D2E74();

          (*(v190 + 8))(v191, v177);
          goto LABEL_32;
        }

        v148 = OUTLINED_FUNCTION_145_3(&a16);
        v149(v148);
        v150 = v107;
        v151 = sub_1DC516F6C();
        v152 = sub_1DC517B9C();

        v153 = os_log_type_enabled(v151, v152);
        v77 = v187;
        if (v153)
        {
          OUTLINED_FUNCTION_140();
          v193[0] = OUTLINED_FUNCTION_54_13();
          OUTLINED_FUNCTION_350(4.8151e-34);
          v154 = sub_1DC515D6C();
          OUTLINED_FUNCTION_255(v154, v155);
          OUTLINED_FUNCTION_10_19();

          *(v106 + 4) = v104;
          OUTLINED_FUNCTION_220_1();
          v156 = sub_1DC515B5C();
          OUTLINED_FUNCTION_255(v156, v157);
          OUTLINED_FUNCTION_10_19();

          *(v106 + 14) = v104;
          OUTLINED_FUNCTION_130_3();
          _os_log_impl(v158, v159, v160, v161, v162, 0x16u);
          OUTLINED_FUNCTION_218_0();
          OUTLINED_FUNCTION_102();
          OUTLINED_FUNCTION_58();

          OUTLINED_FUNCTION_187_0();
          v163 = OUTLINED_FUNCTION_54_4();
        }

        else
        {

          OUTLINED_FUNCTION_187_0();
          v163 = v104;
          v164 = v68;
        }

        v183(v163, v164);
        OUTLINED_FUNCTION_12_0();
        v180 = v191;
        (*(v179 + 1024))(v150, MEMORY[0x1E69E7CC0], v191);

        v176 = *(v190 + 8);
        v175 = v180;
        goto LABEL_31;
      }
    }

    else
    {
      sub_1DC28EB30(v193, &qword_1ECC7D410, &qword_1DC528430);
    }

    v134 = v182;
    v185(v182, v184, v68);

    v135 = sub_1DC516F6C();
    sub_1DC517BAC();

    if (OUTLINED_FUNCTION_172())
    {
      OUTLINED_FUNCTION_63();
      v136 = v134;
      v137 = OUTLINED_FUNCTION_73_5();
      v193[0] = v137;
      *v61 = 136315138;
      v138 = OUTLINED_FUNCTION_121_0();
      v141 = sub_1DC291244(v138, v139, v140);

      *(v61 + 1) = v141;
      OUTLINED_FUNCTION_27_16();
      _os_log_impl(v142, v143, v144, v145, v146, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v137);
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_40_0();

      OUTLINED_FUNCTION_187_0();
      v147 = v136;
    }

    else
    {

      OUTLINED_FUNCTION_187_0();
      v147 = v134;
    }

LABEL_30:
    v183(v147, v68);
    v175 = v191;
    v176 = *(v190 + 8);
LABEL_31:
    v176(v175, v77);
    goto LABEL_32;
  }

  sub_1DC28F414(v196, v193, &qword_1ECC7D410, &qword_1DC528430);
  if (!v194)
  {

    sub_1DC28EB30(v193, &qword_1ECC7D410, &qword_1DC528430);
LABEL_27:
    v165 = OUTLINED_FUNCTION_145_3(&a18);
    v166(v165);
    v167 = sub_1DC516F6C();
    v168 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_14_7(v168))
    {
      v169 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v169);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v170, v171, v172, v173, v174, 2u);
      OUTLINED_FUNCTION_31();
    }

    OUTLINED_FUNCTION_187_0();
    v147 = v61;
    goto LABEL_30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D328, &qword_1DC5283A8);
  OUTLINED_FUNCTION_155();
  type metadata accessor for TurnConstructionCandidateNlSpeechInput();
  if ((OUTLINED_FUNCTION_298() & 1) == 0)
  {

    goto LABEL_27;
  }

  if ([*(v192 + 32) tcuId])
  {
    OUTLINED_FUNCTION_251_0();
    sub_1DC51772C();
    OUTLINED_FUNCTION_279();

    v85 = v190;
    OUTLINED_FUNCTION_32_5();
    v86 = v181[0];
    v87 = OUTLINED_FUNCTION_89();
    v88(v87);
    v89 = OUTLINED_FUNCTION_21_12();
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v77);
    v92 = OUTLINED_FUNCTION_65_1();
    sub_1DC3CD7C8(v92, v93, 0, v86, 0, v94, v95, v96, v181[0], v181[1], v181[2], v181[3], v182, v183, v184, v185, v186, v187, v188, v189);

    sub_1DC28EB30(v86, &qword_1ECC7D418, &qword_1DC528438);
    v97 = *(v85 + 8);
    v98 = OUTLINED_FUNCTION_41();
    v99(v98);
LABEL_32:
    sub_1DC28EB30(v196, &qword_1ECC7D410, &qword_1DC528430);
    OUTLINED_FUNCTION_34();
    return;
  }

  __break(1u);
}

void sub_1DC3D2E74()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v36 = v5;
  v37 = v4;
  v38 = v7;
  v39 = v6;
  v8 = sub_1DC510B6C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v14 = sub_1DC516F7C();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  sub_1DC28D414();
  OUTLINED_FUNCTION_18_13();
  v20(v0);
  v21 = sub_1DC516F6C();
  v22 = sub_1DC517B9C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_35_8();
    OUTLINED_FUNCTION_18_12(v23);
    _os_log_impl(&dword_1DC287000, v21, v22, "Sending CommandFailed to fail this request.", v1, 2u);
    OUTLINED_FUNCTION_40_0();
  }

  v24 = *(v17 + 8);
  v25 = OUTLINED_FUNCTION_234();
  v26(v25);
  v27 = [objc_allocWithZone(MEMORY[0x1E69C7778]) init];
  sub_1DC510B5C();
  sub_1DC510B1C();
  OUTLINED_FUNCTION_193();
  v28 = *(v11 + 8);
  v29 = OUTLINED_FUNCTION_89();
  v30(v29);
  v31 = OUTLINED_FUNCTION_74();
  sub_1DC3D87C0(v31, v32, v27);

  v33 = v27;
  sub_1DC37C694(v37, v38, v33);
  if (v3)
  {
    v34 = sub_1DC5176FC();
  }

  else
  {
    v34 = 0;
  }

  [v33 setReason_];

  v40[4] = sub_1DC3D5D00;
  v40[5] = 0;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 1107296256;
  v40[2] = sub_1DC37278C;
  v40[3] = &block_descriptor_11;
  v35 = _Block_copy(v40);
  [v39 handleCommand:v33 completion:v35];
  _Block_release(v35);

  OUTLINED_FUNCTION_34();
}

void sub_1DC3D312C()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v4 = v3;
  v75 = v5;
  v6 = sub_1DC511D5C();
  v78 = OUTLINED_FUNCTION_0(v6);
  v79 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_23_0();
  v10 = sub_1DC516F7C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v73 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_1();
  v74 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_42_11();
  v20 = sub_1DC511E5C();
  v21 = OUTLINED_FUNCTION_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  sub_1DC28F414(v4, v0, &qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_30_8(v0);
  if (v29)
  {
    sub_1DC511E4C();
    OUTLINED_FUNCTION_30_8(v0);
    if (!v29)
    {
      sub_1DC28EB30(v0, &qword_1ECC7D398, &qword_1DC5283F8);
    }
  }

  else
  {
    v30 = *(v23 + 32);
    v31 = OUTLINED_FUNCTION_43();
    v32(v31);
  }

  v33 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_siriInputLocale + 8);
  if (v33 && ((*(*v0 + 1016))(*(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_siriInputLocale), v33, 0) & 1) != 0)
  {
    v71 = v23;
    v34 = sub_1DC511E3C();
    v35 = *(v34 + 16);
    v72 = v10;
    if (v35)
    {
      v80[0] = MEMORY[0x1E69E7CC0];
      sub_1DC2DF6FC(0, v35, 0);
      v36 = v80[0];
      v37 = *(v79 + 16);
      v38 = *(v79 + 80);
      OUTLINED_FUNCTION_24();
      v40 = v34 + v39;
      v76 = *(v41 + 56);
      v77 = v42;
      v43 = (v41 - 8);
      do
      {
        v44 = OUTLINED_FUNCTION_45_0();
        v77(v44);
        v45 = sub_1DC511D3C();
        v47 = v46;
        (*v43)(v1, v78);
        v80[0] = v36;
        v49 = *(v36 + 16);
        v48 = *(v36 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1DC2DF6FC((v48 > 1), v49 + 1, 1);
          v36 = v80[0];
        }

        *(v36 + 16) = v49 + 1;
        v50 = v36 + 16 * v49;
        *(v50 + 32) = v45;
        *(v50 + 40) = v47;
        v40 += v76;
        --v35;
      }

      while (v35);

      v2 = v0;
      v10 = v72;
    }

    else
    {

      v36 = MEMORY[0x1E69E7CC0];
    }

    v52 = nullsub_1(v36, v51);
    v53 = sub_1DC28D414();
    (*(v73 + 16))(v74, v53, v10);

    v54 = sub_1DC516F6C();
    v55 = v10;
    v56 = sub_1DC517B9C();

    v57 = &unk_1ECC8F000;
    if (os_log_type_enabled(v54, v56))
    {
      v35 = OUTLINED_FUNCTION_140();
      v80[0] = OUTLINED_FUNCTION_143();
      *v35 = 136315394;
      v58 = MEMORY[0x1E12962D0](v52, MEMORY[0x1E69E6158]);
      sub_1DC291244(v58, v59, v80);
      OUTLINED_FUNCTION_149_0();

      *(v35 + 4) = v55;
      *(v35 + 12) = 2080;
      v60 = *(v2 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_lvcHistory);
      OUTLINED_FUNCTION_12_0();
      (*(v61 + 88))();
      v62 = MEMORY[0x1E12962D0]();
      v64 = v63;

      v65 = sub_1DC291244(v62, v64, v80);
      v57 = &unk_1ECC8F000;

      *(v35 + 14) = v65;
      _os_log_impl(&dword_1DC287000, v54, v56, "LVC appending %s to existing LVCHistory.LVCTurns: %s", v35, 0x16u);
      OUTLINED_FUNCTION_342();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_14_5();

      (*(v73 + 8))(v74, v72);
    }

    else
    {

      (*(v73 + 8))(v74, v55);
    }

    v66 = *(v2 + v57[153]);
    OUTLINED_FUNCTION_12_0();
    (*(v67 + 104))(v80);
    OUTLINED_FUNCTION_192();
    sub_1DC3D7B44(0, 0, v52);
    (v35)(v80, 0);
    v68 = *(v71 + 32);
    v69 = OUTLINED_FUNCTION_35_0();
    v70(v69);
  }

  else
  {
    (*(v23 + 32))(v75, v28, v20);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3D36F8()
{
  OUTLINED_FUNCTION_33();
  v3 = v0;
  OUTLINED_FUNCTION_38_2();
  v4 = sub_1DC516F7C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_107_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D390, &qword_1DC527790);
  OUTLINED_FUNCTION_10(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_28_13();
  v16 = type metadata accessor for RVSRequest(0);
  v17 = OUTLINED_FUNCTION_10(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  v23 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_siriInputLocale);
  if (*(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_siriInputLocale + 8))
  {
    v73 = v2;
    v24 = v4;
    v25 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_lvcHistory);
    v26 = OUTLINED_FUNCTION_151();
    sub_1DC28F414(v26, v27, v28, v29);
    v30 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_rvsHistory);

    OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_263();
    v72 = v30;
    sub_1DC3B2B18(v31, v32, v30, 0, v33);
    type metadata accessor for ResponseVariantSelector();
    v34 = sub_1DC37DAA0();
    OUTLINED_FUNCTION_343();
    v36 = *(v35 + 1016);
    v37 = OUTLINED_FUNCTION_121_0();
    if (v38(v37))
    {
      sub_1DC28D414();
      OUTLINED_FUNCTION_90();
      v70 = v39;
      v71 = v40;
      (v40)(v1);

      v41 = sub_1DC516F6C();
      v42 = sub_1DC517B9C();

      if (os_log_type_enabled(v41, v42))
      {
        OUTLINED_FUNCTION_63();
        v69 = v22;
        v43 = OUTLINED_FUNCTION_115_4();
        v74[0] = v43;
        *v34 = 136315138;
        v44 = OUTLINED_FUNCTION_121_0();
        *(v34 + 4) = sub_1DC291244(v44, v45, v46);
        OUTLINED_FUNCTION_128_0(&dword_1DC287000, v47, v42, "Making a response variant selector request for %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        v22 = v69;
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_66();
      }

      v48 = *(v7 + 8);
      v48(v1, v24);
      v49 = (*(*v34 + 104))(v22);
      v51 = v50;
      v71(v73, v70, v24);

      v52 = sub_1DC516F6C();
      v53 = sub_1DC517B9C();

      if (os_log_type_enabled(v52, v53))
      {
        OUTLINED_FUNCTION_140();
        v74[0] = v49;
        v75 = OUTLINED_FUNCTION_54_13();
        *v3 = 136315394;
        v74[1] = v51;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0A0, &unk_1DC524070);
        v55 = sub_1DC51777C();
        sub_1DC291244(v55, v56, &v75);
        OUTLINED_FUNCTION_23_2();

        *(v3 + 4) = v73;
        OUTLINED_FUNCTION_220_1();
        v57 = v72;
        (*(*v72 + 88))();
        MEMORY[0x1E12962D0]();

        v58 = OUTLINED_FUNCTION_212();
        v61 = sub_1DC291244(v58, v59, v60);

        *(v3 + 14) = v61;
        OUTLINED_FUNCTION_130_3();
        _os_log_impl(v62, v63, v64, v65, v66, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_14_5();
        OUTLINED_FUNCTION_58();

        v48(v73, v24);
      }

      else
      {

        v67 = OUTLINED_FUNCTION_74();
        (v48)(v67);
        v57 = v72;
      }

      v68 = *(*v57 + 104);

      v68(v74);
      OUTLINED_FUNCTION_192();
      sub_1DC3D7BF4(0, 0, v49, v51);
      (v68)(v74, 0);

      OUTLINED_FUNCTION_15_13();
      sub_1DC3D8824();
    }

    else
    {
      OUTLINED_FUNCTION_15_13();
      sub_1DC3D8824();
    }
  }

  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3D3DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_0();
  if (((*(v4 + 632))() & 1) == 0)
  {
    goto LABEL_4;
  }

  sub_1DC2A32B0();
  OUTLINED_FUNCTION_72_6();
  v5 = sub_1DC517E1C();
  if (!a3)
  {
    if (v5 != 0x4E495F6E65 || v6 != 0xE500000000000000)
    {
      OUTLINED_FUNCTION_62_2();
      v11 = sub_1DC51825C();

      return v11 & 1;
    }

LABEL_10:

    v11 = 1;
    return v11 & 1;
  }

  v7 = *(a3 + 16);

  v8 = OUTLINED_FUNCTION_62_2();
  v10 = sub_1DC2E4CBC(v8, v9, v7);

  if (v10)
  {
    goto LABEL_10;
  }

LABEL_4:
  v11 = 0;
  return v11 & 1;
}

void sub_1DC3D3F3C()
{
  OUTLINED_FUNCTION_33();
  v4 = v0;
  v96 = v5;
  v97 = v6;
  OUTLINED_FUNCTION_228_0();
  v7 = sub_1DC516F7C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_53_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23_1();
  v94 = v18;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_101_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_138_1();
  sub_1DC5159DC();
  v21 = swift_dynamicCastClass();
  v22 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_isMUXEnabled);
  if (v21)
  {
    v23 = v2;
    if ((v22 & 1) == 0)
    {
      v95 = v0;
      v100 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D428, &qword_1DC528450);
      v24 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D430, &qword_1DC528458) - 8);
      v25 = *(*v24 + 72);
      v26 = *(*v24 + 80);
      OUTLINED_FUNCTION_33_17();
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DC522F20;
      v27 = v24[14];
      v98 = v21;
      v28 = v21;
      sub_1DC515C5C();
      *(v22 + v1 + v27) = sub_1DC5159CC();
      sub_1DC5162DC();
      sub_1DC3D8878();
      OUTLINED_FUNCTION_0_49();
      sub_1DC3D8E40(v29, v30);
      OUTLINED_FUNCTION_63_0();
      v31 = sub_1DC51764C();

      goto LABEL_11;
    }
  }

  else if (!*(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_isMUXEnabled))
  {
    v95 = v0;
    v98 = 0;
    v100 = v10;
    sub_1DC5162DC();
    OUTLINED_FUNCTION_155();
    sub_1DC3D8878();
    OUTLINED_FUNCTION_0_49();
    sub_1DC3D8E40(v51, v52);
    v32 = sub_1DC51764C();
    v31 = v32;
LABEL_11:
    MEMORY[0x1EEE9AC00](v32);
    OUTLINED_FUNCTION_140_3();
    *(v53 - 32) = v2;
    *(v53 - 24) = v96;
    *(v53 - 16) = v97;
    *(v53 - 8) = v31;
    v54 = objc_allocWithZone(sub_1DC5154AC());
    OUTLINED_FUNCTION_170_1();
    v55 = sub_1DC51541C();

    if (v55)
    {
      OUTLINED_FUNCTION_20_14((v95 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher));
      OUTLINED_FUNCTION_147_0();
      sub_1DC515D8C();
      sub_1DC28D414();
      v56 = OUTLINED_FUNCTION_162_3(v100);
      v57(v56);
      v58 = v55;
      v59 = sub_1DC516F6C();
      v60 = sub_1DC517B9C();

      if (os_log_type_enabled(v59, v60))
      {
        OUTLINED_FUNCTION_63();
        v61 = OUTLINED_FUNCTION_175();
        *v22 = 138412290;
        *(v22 + 4) = v58;
        *v61 = v55;
        v62 = v58;
        _os_log_impl(&dword_1DC287000, v59, v60, "Posted ExecuteNLOnServerMessage: %@", v22, 0xCu);
        sub_1DC28EB30(v61, &qword_1ECC7DFE0, &qword_1DC5227F0);
        OUTLINED_FUNCTION_67();
        OUTLINED_FUNCTION_14_5();
        v63 = v98;
      }

      else
      {
        v63 = v59;
        v59 = v98;
      }

      (*(v100 + 8))(v3, v7);
    }

    else
    {
      v75 = sub_1DC28D414();
      (*(v100 + 16))(v15, v75, v7);
      v76 = v2;
      v77 = sub_1DC516F6C();
      v78 = sub_1DC517B9C();

      if (os_log_type_enabled(v77, v78))
      {
        OUTLINED_FUNCTION_140();
        v79 = OUTLINED_FUNCTION_54_13();
        OUTLINED_FUNCTION_332(v79);
        *v2 = 136315394;
        v80 = sub_1DC515D6C();
        OUTLINED_FUNCTION_249_0(v80, v81);
        OUTLINED_FUNCTION_23_2();

        *(v2 + 1) = v76;
        OUTLINED_FUNCTION_220_1();
        v82 = sub_1DC515B5C();
        OUTLINED_FUNCTION_249_0(v82, v83);
        OUTLINED_FUNCTION_23_2();

        *(v2 + 14) = v76;
        OUTLINED_FUNCTION_130_3();
        _os_log_impl(v84, v85, v86, v87, v88, 0x16u);
        OUTLINED_FUNCTION_219_0();
        OUTLINED_FUNCTION_54_12();
        OUTLINED_FUNCTION_58();
      }

      else
      {
      }

      v89 = *(v100 + 8);
      v90 = OUTLINED_FUNCTION_153_0();
      v91(v90);
    }

    goto LABEL_26;
  }

  v92 = sub_1DC28D414();
  v93 = *(v10 + 16);
  v99 = v7;
  v93(v0);
  v33 = sub_1DC516F6C();
  v34 = sub_1DC517B9C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_35_8();
    *v35 = 0;
    _os_log_impl(&dword_1DC287000, v33, v34, "Posting MUXServerFallbackMessage since MUX is enabled", v35, 2u);
    v4 = v0;
    OUTLINED_FUNCTION_66();
  }

  v36 = *(v10 + 8);
  v37 = v36(v0, v7);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_140_3();
  *(v38 - 32) = v2;
  *(v38 - 24) = v96;
  *(v38 - 16) = v97;
  v39 = objc_allocWithZone(sub_1DC5155DC());
  OUTLINED_FUNCTION_170_1();
  v40 = sub_1DC5155CC();
  if (v40)
  {
    v41 = v40;
    v42 = *(v4 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher + 24);
    OUTLINED_FUNCTION_121_1((v4 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher), v42);
    OUTLINED_FUNCTION_147_0();
    sub_1DC515D8C();
    (v93)(v1, v92, v7);
    v43 = v41;
    v44 = sub_1DC516F6C();
    sub_1DC517B9C();

    if (OUTLINED_FUNCTION_302())
    {
      OUTLINED_FUNCTION_63();
      v45 = v36;
      v46 = OUTLINED_FUNCTION_175();
      *v42 = 138412290;
      *(v42 + 4) = v43;
      *v46 = v41;
      v47 = v43;
      OUTLINED_FUNCTION_200_1(&dword_1DC287000, v48, v49, "Posted MUXServerFallbackMessage: %@");
      sub_1DC28EB30(v46, &qword_1ECC7DFE0, &qword_1DC5227F0);
      v36 = v45;
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_14_5();
      v50 = v21;
    }

    else
    {
      v50 = v44;
      v44 = v21;
    }

    v36(v1, v99);
  }

  else
  {
    v64 = v36;
    (v93)(v94, v92, v7);
    v65 = v2;
    v66 = sub_1DC516F6C();
    v67 = sub_1DC517B9C();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = OUTLINED_FUNCTION_140();
      OUTLINED_FUNCTION_143();
      *v68 = 136315394;
      v69 = sub_1DC515D6C();
      OUTLINED_FUNCTION_249_0(v69, v70);
      OUTLINED_FUNCTION_23_2();

      *(v68 + 4) = v65;
      OUTLINED_FUNCTION_221_0();
      v71 = sub_1DC515B5C();
      OUTLINED_FUNCTION_249_0(v71, v72);
      OUTLINED_FUNCTION_23_2();

      *(v68 + 14) = v65;
      OUTLINED_FUNCTION_198_0(&dword_1DC287000, v73, v74, "MUXServerFallbackMessage could not be created for requestId: %s rcId: %s");
      OUTLINED_FUNCTION_342();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_40_0();
    }

    else
    {
    }

    v64(v94, v7);
  }

LABEL_26:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D4790()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D418, &qword_1DC528438);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_95();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_42_11();
  v15 = *MEMORY[0x1E69D0450];
  v16 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35(v16);
  (*(v17 + 104))(v0, v15, v16);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v16);
  sub_1DC51547C();
  sub_1DC515D9C();
  sub_1DC51542C();
  sub_1DC515D7C();
  sub_1DC510B6C();
  v21 = OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_378(v21, v22, v23, v24);
  sub_1DC51549C();
  sub_1DC515D6C();
  sub_1DC51548C();
  sub_1DC515B5C();
  sub_1DC51544C();

  sub_1DC51545C();
  v25 = sub_1DC5161DC();
  OUTLINED_FUNCTION_2(v25);
  v27 = *(v26 + 16);
  v28 = OUTLINED_FUNCTION_30();
  v29(v28);
  v30 = OUTLINED_FUNCTION_23_20();
  OUTLINED_FUNCTION_293(v30, v31, v32, v2);
  sub_1DC51543C();

  sub_1DC51546C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D499C()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1DC516F7C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_37_5();
  v18 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_1();
  v89 = v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_138_1();
  v90 = v21;
  if (*(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_isMUXEnabled) == 1)
  {
    v87 = v9;
    v84 = v22;
    v23 = sub_1DC28D414();
    v24 = v13;
    v26 = *(v13 + 16);
    v25 = v13 + 16;
    v85 = v23;
    v86 = v26;
    (v26)(v0);
    v27 = sub_1DC516F6C();
    v28 = sub_1DC517B9C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v29);
      _os_log_impl(&dword_1DC287000, v27, v28, "Posting MUXServerFallbackMessage since MUX is enabled", v1, 2u);
      OUTLINED_FUNCTION_31();
    }

    v30 = *(v24 + 8);
    v31 = v90;
    v88 = v30;
    v32 = (v30)(v0, v90);
    MEMORY[0x1EEE9AC00](v32);
    OUTLINED_FUNCTION_140_3();
    *(v33 - 32) = v87;
    *(v33 - 24) = v7;
    *(v33 - 16) = v5;
    v34 = objc_allocWithZone(sub_1DC5155DC());
    OUTLINED_FUNCTION_170_1();
    v35 = sub_1DC5155CC();
    if (v35)
    {
      v36 = v35;
      OUTLINED_FUNCTION_20_14((v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher));
      OUTLINED_FUNCTION_147_0();
      sub_1DC515D8C();
      v86(v89, v85, v90);
      v37 = v36;
      v38 = sub_1DC516F6C();
      sub_1DC517B9C();

      if (OUTLINED_FUNCTION_302())
      {
        OUTLINED_FUNCTION_63();
        v39 = OUTLINED_FUNCTION_175();
        *v28 = 138412290;
        *(v28 + 4) = v37;
        *v39 = v36;
        v40 = v37;
        OUTLINED_FUNCTION_200_1(&dword_1DC287000, v41, v42, "Posted MUXServerFallbackMessage: %@");
        sub_1DC28EB30(v39, &qword_1ECC7DFE0, &qword_1DC5227F0);
        OUTLINED_FUNCTION_146_3();
        v31 = v90;
        OUTLINED_FUNCTION_66();
      }

      else
      {
        v40 = v38;
        v38 = v37;
      }

      v88(v89, v31);
    }

    else
    {
      v86(v84, v85, v90);
      v55 = v87;
      v56 = sub_1DC516F6C();
      v57 = sub_1DC517B9C();

      if (os_log_type_enabled(v56, v57))
      {
        OUTLINED_FUNCTION_140();
        v58 = OUTLINED_FUNCTION_54_13();
        OUTLINED_FUNCTION_332(v58);
        *v25 = 136315394;
        v59 = sub_1DC515D6C();
        OUTLINED_FUNCTION_249_0(v59, v60);
        OUTLINED_FUNCTION_23_2();

        *(v25 + 4) = v55;
        OUTLINED_FUNCTION_220_1();
        v61 = sub_1DC515A5C();
        OUTLINED_FUNCTION_249_0(v61, v62);
        OUTLINED_FUNCTION_23_2();

        *(v25 + 14) = v55;
        OUTLINED_FUNCTION_130_3();
        _os_log_impl(v63, v64, v65, v66, v67, 0x16u);
        OUTLINED_FUNCTION_219_0();
        OUTLINED_FUNCTION_54_12();
        OUTLINED_FUNCTION_58();
      }

      v88(v84, v90);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v21);
    OUTLINED_FUNCTION_140_3();
    *(v43 - 32) = v9;
    *(v43 - 24) = v7;
    *(v43 - 16) = v5;
    v44 = objc_allocWithZone(sub_1DC5154AC());
    OUTLINED_FUNCTION_170_1();
    v45 = sub_1DC51541C();
    if (v45)
    {
      v46 = v45;
      OUTLINED_FUNCTION_20_14((v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher));
      OUTLINED_FUNCTION_112_1();
      sub_1DC515D8C();
      v47 = sub_1DC28D414();
      v48 = v13;
      (*(v13 + 16))(v3, v47, v90);
      v49 = v46;
      v50 = sub_1DC516F6C();
      sub_1DC517B9C();

      if (OUTLINED_FUNCTION_302())
      {
        OUTLINED_FUNCTION_63();
        v51 = OUTLINED_FUNCTION_175();
        *v90 = 138412290;
        *(v90 + 4) = v49;
        *v51 = v46;
        v52 = v49;
        OUTLINED_FUNCTION_200_1(&dword_1DC287000, v53, v54, "Posted ExecuteNLOnServerMessage: %@");
        sub_1DC28EB30(v51, &qword_1ECC7DFE0, &qword_1DC5227F0);
        OUTLINED_FUNCTION_54_12();
        OUTLINED_FUNCTION_66();
      }

      else
      {
        v52 = v50;
        v50 = v49;
      }

      v81 = *(v48 + 8);
      v82 = OUTLINED_FUNCTION_147_0();
      v83(v82);
    }

    else
    {
      sub_1DC28D414();
      OUTLINED_FUNCTION_32_5();
      v68(v2);
      v69 = v9;
      v70 = sub_1DC516F6C();
      v71 = v13;
      v72 = sub_1DC517B9C();

      if (os_log_type_enabled(v70, v72))
      {
        v73 = OUTLINED_FUNCTION_140();
        v74 = OUTLINED_FUNCTION_143();
        OUTLINED_FUNCTION_332(v74);
        *v73 = 136315394;
        v75 = sub_1DC515D6C();
        OUTLINED_FUNCTION_249_0(v75, v76);
        OUTLINED_FUNCTION_23_2();

        *(v73 + 4) = v69;
        OUTLINED_FUNCTION_221_0();
        v77 = sub_1DC515A5C();
        OUTLINED_FUNCTION_249_0(v77, v78);
        OUTLINED_FUNCTION_23_2();

        *(v73 + 14) = v69;
        OUTLINED_FUNCTION_198_0(&dword_1DC287000, v79, v80, "ExecuteNLOnServerMessage could not be created for requestId: %s trpCandidateId: %s");
        OUTLINED_FUNCTION_219_0();
        OUTLINED_FUNCTION_54_12();
        OUTLINED_FUNCTION_40_0();
      }

      (*(v71 + 8))(v2, v90);
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3D4FF8()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D418, &qword_1DC528438);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_54_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_95();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_42_11();
  v17 = *MEMORY[0x1E69D0450];
  v18 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35(v18);
  (*(v19 + 104))(v0, v17, v18);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v18);
  OUTLINED_FUNCTION_235_0();
  sub_1DC5154FC();
  sub_1DC515D9C();
  sub_1DC5154BC();
  sub_1DC515D7C();
  sub_1DC510B6C();
  v23 = OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_378(v23, v24, v25, v26);
  sub_1DC51551C();
  sub_1DC515D6C();
  v27 = sub_1DC51550C();
  v2(v27);
  sub_1DC5154DC();

  sub_1DC5154EC();
  v28 = sub_1DC5161DC();
  OUTLINED_FUNCTION_2(v28);
  v30 = *(v29 + 16);
  v31 = OUTLINED_FUNCTION_73();
  v32(v31);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v4);
  OUTLINED_FUNCTION_353();
  sub_1DC5154CC();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D51FC()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D418, &qword_1DC528438);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_54_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_42_11();
  v15 = *MEMORY[0x1E69D0450];
  v16 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35(v16);
  (*(v17 + 104))(v0, v15, v16);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v16);
  OUTLINED_FUNCTION_235_0();
  sub_1DC51547C();
  sub_1DC515D9C();
  sub_1DC51542C();
  sub_1DC515D7C();
  sub_1DC510B6C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  sub_1DC51549C();
  sub_1DC515D6C();
  sub_1DC51548C();
  sub_1DC515A5C();
  sub_1DC51544C();

  sub_1DC51545C();
  v25 = sub_1DC5161DC();
  OUTLINED_FUNCTION_2(v25);
  v27 = *(v26 + 16);
  v28 = OUTLINED_FUNCTION_73();
  v29(v28);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v2);
  OUTLINED_FUNCTION_353();
  sub_1DC51543C();
  sub_1DC5162DC();
  OUTLINED_FUNCTION_38_2();
  sub_1DC3D8878();
  OUTLINED_FUNCTION_0_49();
  sub_1DC3D8E40(v33, v34);
  sub_1DC51764C();
  sub_1DC51546C();
  OUTLINED_FUNCTION_34();
}

BOOL sub_1DC3D545C()
{
  v0 = MEMORY[0x1E12961D0]();
  if (_MergedGlobals_15 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDAC9538;
  OUTLINED_FUNCTION_62_2();
  v2 = sub_1DC5176FC();
  v3 = [v1 firstMatchInString:v2 options:0 range:{0, v0}];

  if (v3)
  {
  }

  return v3 != 0;
}

void sub_1DC3D5514()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_228_0();
  v75 = sub_1DC516F7C();
  v3 = OUTLINED_FUNCTION_0(v75);
  v73 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_271(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFE0, &unk_1DC5253A0);
  v9 = OUTLINED_FUNCTION_10(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v72 = v12;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v74 = v14;
  OUTLINED_FUNCTION_12();
  v15 = sub_1DC51620C();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  v22 = OUTLINED_FUNCTION_10(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15();
  v71 = v25;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_42_3();
  v27 = v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionState;
  v28 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionState + 24);
  v29 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionState + 32);
  v30 = OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_121_1(v30, v31);
  v70 = *(v18 + 104);
  v70(v2, *MEMORY[0x1E69D07E8], v15);
  OUTLINED_FUNCTION_263();
  sub_1DC51627C();
  v32 = *(v18 + 8);
  v33 = OUTLINED_FUNCTION_176();
  v32(v33);
  if (v77)
  {
    v34 = sub_1DC51190C();
    v35 = swift_dynamicCast() ^ 1;
    v36 = v1;
    v37 = 1;
    v38 = v34;
  }

  else
  {
    sub_1DC28EB30(v76, &qword_1ECC7D3F0, &qword_1DC5238B0);
    sub_1DC51190C();
    OUTLINED_FUNCTION_19();
  }

  __swift_storeEnumTagSinglePayload(v36, v35, v37, v38);
  v39 = *(v27 + 24);
  v40 = *(v27 + 32);
  v41 = OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_121_1(v41, v42);
  v70(v2, *MEMORY[0x1E69D07D0], v15);
  OUTLINED_FUNCTION_263();
  sub_1DC51627C();
  v43 = OUTLINED_FUNCTION_176();
  v32(v43);
  if (v77)
  {
    v44 = sub_1DC5167EC();
    v45 = v74;
    v46 = swift_dynamicCast() ^ 1;
    v47 = v74;
    v48 = 1;
    v49 = v44;
  }

  else
  {
    sub_1DC28EB30(v76, &qword_1ECC7D3F0, &qword_1DC5238B0);
    sub_1DC5167EC();
    v45 = v74;
    OUTLINED_FUNCTION_19();
  }

  __swift_storeEnumTagSinglePayload(v47, v46, v48, v49);
  sub_1DC28D414();
  OUTLINED_FUNCTION_18_13();
  v50();
  sub_1DC28F414(v1, v71, &unk_1ECC7D3A0, &unk_1DC522560);
  v51 = OUTLINED_FUNCTION_258();
  sub_1DC28F414(v51, v52, v53, v54);
  v55 = sub_1DC516F6C();
  v56 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_25_0(v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 67109376;
    sub_1DC51190C();
    v58 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_39(v58, v59, v60);
    if (v61)
    {
      v62 = 0;
    }

    else
    {
      v62 = 1;
    }

    sub_1DC28EB30(v71, &unk_1ECC7D3A0, &unk_1DC522560);
    *(v57 + 4) = v62;
    *(v57 + 8) = 1024;
    v63 = sub_1DC5167EC();
    OUTLINED_FUNCTION_39(v72, 1, v63);
    if (v61)
    {
      v64 = 0;
    }

    else
    {
      v64 = 1;
    }

    sub_1DC28EB30(v72, &qword_1ECC7BFE0, &unk_1DC5253A0);
    *(v57 + 10) = v64;
    _os_log_impl(&dword_1DC287000, v55, v56, "Machine utterance fallback:  has legacy context=%{BOOL}d, has pommes context=%{BOOL}d", v57, 0xEu);
    OUTLINED_FUNCTION_102();
  }

  else
  {
    sub_1DC28EB30(v72, &qword_1ECC7BFE0, &unk_1DC5253A0);
    sub_1DC28EB30(v71, &unk_1ECC7D3A0, &unk_1DC522560);
  }

  v65 = *(v73 + 8);
  v66 = OUTLINED_FUNCTION_149();
  v67(v66);
  v68 = sub_1DC51190C();
  OUTLINED_FUNCTION_39(v1, 1, v68);
  if (v61)
  {
    v69 = sub_1DC5167EC();
    OUTLINED_FUNCTION_39(v45, 1, v69);
  }

  sub_1DC28EB30(v45, &qword_1ECC7BFE0, &unk_1DC5253A0);
  sub_1DC28EB30(v1, &unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3D5A6C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_341();
  v6 = v5;
  v8 = v7;
  v9 = *(v1 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_instrumentationUtil);
  OUTLINED_FUNCTION_12_0();
  v11 = (*(v10 + 656))();
  (*(*v9 + 128))(v8, v6, v11, v12, v4, v3, v2, v0);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D5B38(void *a1)
{
  v3 = v2;
  OUTLINED_FUNCTION_57_0();
  v5 = sub_1DC516F7C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  sub_1DC515C6C();
  if (swift_dynamicCastClass())
  {
    v21 = a1;
    sub_1DC515C5C();
  }

  else
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_56_3();
    v11(v2);
    v12 = sub_1DC516F6C();
    v13 = sub_1DC517BAC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_35_8();
      *v14 = 0;
      _os_log_impl(&dword_1DC287000, v12, v13, "NLBridge received an RC which is not UserID aware", v14, 2u);
      OUTLINED_FUNCTION_54_12();
    }

    v15 = *(v8 + 8);
    v16 = OUTLINED_FUNCTION_74();
    v17(v16);
    v18 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionUserId;
    v19 = sub_1DC5162DC();
    OUTLINED_FUNCTION_35(v19);
    (*(v20 + 16))(v1, v3 + v18);
  }
}

uint64_t sub_1DC3D5D00()
{
  v1 = sub_1DC516F7C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  sub_1DC28D414();
  OUTLINED_FUNCTION_18_13();
  v7(v0);
  v8 = sub_1DC516F6C();
  sub_1DC517B9C();
  OUTLINED_FUNCTION_116();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_35_8();
    OUTLINED_FUNCTION_52_1(v10);
    OUTLINED_FUNCTION_84_5();
    _os_log_impl(v11, v12, v13, v14, v15, 2u);
    OUTLINED_FUNCTION_58();
  }

  v16 = *(v4 + 8);
  v17 = OUTLINED_FUNCTION_31_0();
  return v18(v17);
}

uint64_t sub_1DC3D5E08()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 64);

  v2 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  v3 = sub_1DC510B6C();
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(v0 + v2);
  OUTLINED_FUNCTION_284(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_rootRequestId);

  OUTLINED_FUNCTION_284(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionState));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_referenceResolutionProxy));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils));
  v5 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serviceHelper);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_turnInputManager);

  v7 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_turnInputsByRcId);

  v8 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_turnInputsByTcuId);

  v9 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_nluRequestIdToResultCandidate);

  OUTLINED_FUNCTION_284(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_selectedRcId);

  v10 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_instrumentationUtil);

  v11 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionUserId;
  v12 = sub_1DC5162DC();
  OUTLINED_FUNCTION_35(v12);
  (*(v13 + 8))(v0 + v11);
  v14 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_userIdDict);

  v15 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_turnConstructionCandidateIdToTrpId);

  v16 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_trpIdToTcuIdMapping);

  OUTLINED_FUNCTION_284(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_siriInputLocale);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_cmdPersonaManager));
  v17 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_turnConstructionCandidateIdToNLUResponse);

  v18 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_lvcHistory);

  v19 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_rvsHistory);

  return v0;
}

uint64_t sub_1DC3D5FFC()
{
  sub_1DC3D5E08();
  OUTLINED_FUNCTION_38_1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

uint64_t sub_1DC3D6050()
{
  v1 = *v0;
  OUTLINED_FUNCTION_12_0();
  return (*(v2 + 992))();
}

uint64_t sub_1DC3D6098()
{
  v1 = *v0;
  OUTLINED_FUNCTION_12_0();
  return (*(v2 + 984))();
}

uint64_t sub_1DC3D60E0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_12_0();
  return (*(v2 + 912))();
}

char *sub_1DC3D6128(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4A8, &unk_1DC528560);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DC3D6230(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4A0, &qword_1DC528558);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DC3D6338(uint64_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(uint64_t))
{
  v12 = result;
  if (a3)
  {
    v13 = *(a4 + 24);
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = *(a4 + 16);
  sub_1DC3D6440(v15, v14, a5, a6, a7);
  v16 = OUTLINED_FUNCTION_228_0();
  v17 = *(*(a8(v16) - 8) + 80);
  OUTLINED_FUNCTION_24();
  if (v12)
  {
    sub_1DC3D6538(a4 + v18, v15, v8 + v18, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v8;
}

size_t sub_1DC3D6440(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  v8 = *(*(a5(0) - 8) + 72);
  OUTLINED_FUNCTION_185_1();
  v11 = v10 & ~v9;
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v8)
  {
    if (result - v11 != 0x8000000000000000 || v8 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v8);
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

uint64_t sub_1DC3D6538(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_35(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_62_2();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_62_2();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1DC3D6618()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE30, &unk_1DC524E20);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CE38, &unk_1DC528570) - 8);
  v7 = *(*v6 + 72);
  OUTLINED_FUNCTION_185_1();
  v10 = v9 & ~v8;
  v11 = OUTLINED_FUNCTION_296();
  *(v11 + 16) = xmmword_1DC5221A0;
  v12 = v11 + v10;
  v13 = v12 + v6[14];
  sub_1DC51680C();
  v14 = sub_1DC2A0C74();
  OUTLINED_FUNCTION_209_0(v14);
  v15 = (v12 + v7 + v6[14]);

  sub_1DC51687C();
  *v15 = sub_1DC2A0C80(v2);
  v15[1] = v16;
  v17 = (v12 + 2 * v7 + v6[14]);
  sub_1DC51682C();
  v18 = *(v4 + 64);
  *v17 = *(v4 + 56);
  v17[1] = v18;
  v19 = (v12 + 3 * v7 + v6[14]);

  sub_1DC5168BC();
  sub_1DC510B6C();
  OUTLINED_FUNCTION_4_27();
  sub_1DC3D8E40(v20, v21);
  *v19 = sub_1DC51823C();
  v19[1] = v22;
  v23 = (v12 + 4 * v7 + v6[14]);
  sub_1DC5168AC();
  *v23 = v3;
  v23[1] = v5;

  OUTLINED_FUNCTION_34();
}

unint64_t sub_1DC3D67C4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1DC5162DC();
  sub_1DC3D8E40(&qword_1ECC7BB10, MEMORY[0x1E69D08C8]);
  v5 = sub_1DC51767C();

  return sub_1DC3D685C(a1, v5);
}

unint64_t sub_1DC3D685C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_1DC5162DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1DC3D8E40(&qword_1ECC7D500, MEMORY[0x1E69D08C8]);
    v10 = sub_1DC5176CC();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

double sub_1DC3D6A18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1DC2AEB04(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D508, &unk_1DC5285D0);
    sub_1DC517FFC();
    v12 = *(*(v14 + 48) + 16 * v9 + 8);

    sub_1DC28F9B0((*(v14 + 56) + 40 * v9), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D328, &qword_1DC5283A8);
    sub_1DC51800C();
    *v4 = v14;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DC3D6B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1DC2AEB04(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4E0, &qword_1DC5285B0);
    sub_1DC517FFC();
    v12 = *(*(v19 + 48) + 16 * v9 + 8);

    v13 = *(v19 + 56);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
    sub_1DC3D80AC(v13 + *(*(v14 - 8) + 72) * v9, a3);
    sub_1DC51800C();
    *v4 = v19;
    v15 = a3;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
    v15 = a3;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

uint64_t sub_1DC3D6C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1DC2AEB04(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4E8, &qword_1DC5285B8);
    sub_1DC517FFC();
    v12 = *(*(v19 + 48) + 16 * v9 + 8);

    v13 = *(v19 + 56);
    v14 = type metadata accessor for AssistantNLRequestHandler.NluResponseType(0);
    sub_1DC3D8D78(v13 + *(*(v14 - 8) + 72) * v9, a3);
    sub_1DC51800C();
    *v4 = v19;
    v15 = a3;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = type metadata accessor for AssistantNLRequestHandler.NluResponseType(0);
    v15 = a3;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

uint64_t sub_1DC3D6D94(__int128 *a1, uint64_t a2, uint64_t a3)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D508, &unk_1DC5285D0);
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

uint64_t sub_1DC3D6EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DC2AEB04(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4E0, &qword_1DC5285B0);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1DC2AEB04(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
    return sub_1DC384434(a1, v17 + *(*(v18 - 8) + 72) * v11, &qword_1ECC7D320, &qword_1DC5283A0);
  }

  else
  {
    sub_1DC3D7418(v11, a2, a3, a1, v16);
  }
}

void sub_1DC3D7048(uint64_t a1, uint64_t a2, uint64_t a3)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3C0, &qword_1DC528410);
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

uint64_t sub_1DC3D7184(uint64_t a1, uint64_t a2, uint64_t a3)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D518, &qword_1DC5285E0);
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
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_1DC361B0C(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_1DC3D72C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4E8, &qword_1DC5285B8);
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
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for AssistantNLRequestHandler.NluResponseType(0) - 8) + 72) * v11;

    return sub_1DC3D8DDC(a1, v18);
  }

  else
  {
    sub_1DC3D74BC(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_1DC3D7418(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  result = sub_1DC3D80AC(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1DC3D74BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for AssistantNLRequestHandler.NluResponseType(0);
  result = sub_1DC3D8D78(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1DC3D7554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_1DC3D75CC(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1DC3D6338(result, v7, a2 & 1, v5, &qword_1ECC7CC48, &unk_1DC5283C0, MEMORY[0x1E69D0A28], MEMORY[0x1E69D0A28]);
    *v2 = result;
  }

  return result;
}

void (*sub_1DC3D765C(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1DC39E2D0(v7);
  v7[9] = sub_1DC3D76F4(v7 + 4, a2, a3);
  return sub_1DC39E054;
}

void (*sub_1DC3D76F4(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  v8[3] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v8[4] = v10;
  v12 = *(v10 + 64);
  v8[5] = __swift_coroFrameAllocStub(v12);
  v8[6] = __swift_coroFrameAllocStub(v12);
  v8[7] = __swift_coroFrameAllocStub(v12);
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8) - 8) + 64);
  v8[8] = __swift_coroFrameAllocStub(v13);
  v8[9] = __swift_coroFrameAllocStub(v13);
  v14 = __swift_coroFrameAllocStub(v13);
  v8[10] = v14;
  v15 = *v3;
  v16 = sub_1DC2AEB04(a2, a3);
  *(v8 + 96) = v17 & 1;
  if (__OFADD__(*(v15 + 16), (v17 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = v16;
  v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4E0, &qword_1DC5285B0);
  if (sub_1DC517FFC())
  {
    v20 = *v4;
    v21 = sub_1DC2AEB04(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v18 = v21;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[11] = v18;
  if (v19)
  {
    sub_1DC3D80AC(*(*v4 + 56) + *(v11 + 72) * v18, v14);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v23, 1, v9);
  return sub_1DC3D7954;
}

void sub_1DC3D7954(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = v2[3];
  if (a2)
  {
    sub_1DC28F414(v3, v2[8], &qword_1ECC7D388, &unk_1DC5283E8);
    v5 = OUTLINED_FUNCTION_100();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, v6, v4);
    v8 = *(v2 + 96);
    v9 = v2[8];
    if (EnumTagSinglePayload != 1)
    {
      v10 = v2[2];
      sub_1DC3D80AC(v9, v2[6]);
      v11 = *v10;
      v12 = v2[11];
      v13 = v2[6];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[5];
        v16 = *v2;
        v15 = v2[1];
        sub_1DC3D80AC(v13, v14);
        v17 = OUTLINED_FUNCTION_187();
        sub_1DC3D7418(v17, v18, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_1DC28F414(v3, v2[9], &qword_1ECC7D388, &unk_1DC5283E8);
    v19 = OUTLINED_FUNCTION_100();
    v21 = __swift_getEnumTagSinglePayload(v19, v20, v4);
    v8 = *(v2 + 96);
    v9 = v2[9];
    if (v21 != 1)
    {
      v23 = v2[2];
      sub_1DC3D80AC(v9, v2[7]);
      v11 = *v23;
      v12 = v2[11];
      v13 = v2[7];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1DC3D80AC(v13, v11[7] + *(v2[4] + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_1DC28EB30(v9, &qword_1ECC7D388, &unk_1DC5283E8);
  if (v8)
  {
    v22 = v2[3];
    sub_1DC39ED5C(*(*v2[2] + 48) + 16 * v2[11]);
    OUTLINED_FUNCTION_74();
    sub_1DC51800C();
  }

LABEL_10:
  v24 = v2[9];
  v25 = v2[10];
  v27 = v2[7];
  v26 = v2[8];
  v29 = v2[5];
  v28 = v2[6];
  sub_1DC28EB30(v25, &qword_1ECC7D388, &unk_1DC5283E8);
  free(v25);
  free(v24);
  free(v26);
  free(v27);
  free(v28);
  free(v29);

  free(v2);
}

uint64_t sub_1DC3D7B44(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(*v3 + 16);
  if (v5 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __OFSUB__(1, v7);
  v9 = 1 - v7;
  if (v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v5 + v9;
  if (__OFADD__(v5, v9))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1DC3D7554(result, 1, sub_1DC3D6128);

  return sub_1DC3D7CB4(v6, a2, 1, a3);
}

uint64_t sub_1DC3D7BF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(*v4 + 16);
  if (v6 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1DC3D7554(result, 1, sub_1DC3D6230);

  return sub_1DC3D7DF0(v7, a2, 1, a3, a4);
}

uint64_t sub_1DC3D7CB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = result;
  v10 = *v4;
  v11 = *v4 + 32;
  v12 = v11 + 8 * result;
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v5);
  v14 = a3 - v5;
  if (v13)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v15 = v12 + 8 * a3;
  if (!v14)
  {
    goto LABEL_12;
  }

  v16 = *(v10 + 16);
  v17 = v16 - a2;
  if (__OFSUB__(v16, a2))
  {
    goto LABEL_21;
  }

  v18 = (v11 + 8 * a2);
  if (v15 != v18 || v18 + 8 * v17 <= v15)
  {
    result = memmove((v12 + 8 * a3), v18, 8 * v17);
    v16 = *(v10 + 16);
  }

  v13 = __OFADD__(v16, v14);
  v20 = v16 + v14;
  if (v13)
  {
    goto LABEL_22;
  }

  *(v10 + 16) = v20;
LABEL_12:
  if (a3 < 1)
  {
  }

  else
  {
    v21 = v10 + 8 * v9;
    *(v21 + 32) = a4;
    if (v21 + 40 < v15)
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DC3D7DF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v14 = &v12[2 * a3];
  if (!v13)
  {
    goto LABEL_12;
  }

  v15 = *(v11 + 16);
  v16 = v15 - a2;
  if (__OFSUB__(v15, a2))
  {
    goto LABEL_21;
  }

  v17 = (v11 + 32 + 16 * a2);
  if (v14 != v17 || v17 + 16 * v16 <= v14)
  {
    result = memmove(&v12[2 * a3], v17, 16 * v16);
    v15 = *(v11 + 16);
  }

  v19 = __OFADD__(v15, v13);
  v20 = v15 + v13;
  if (v19)
  {
    goto LABEL_22;
  }

  *(v11 + 16) = v20;
LABEL_12:
  if (a3 < 1)
  {
  }

  else
  {
    *v12 = a4;
    v12[1] = a5;
    if ((v12 + 2) < v14)
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DC3D7F20(void *a1)
{
  v1 = [a1 tcuId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DC51772C();

  return v3;
}

void *sub_1DC3D7F84(void *a1, SEL *a2)
{
  v2 = a1;
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  sub_1DC51772C();
  OUTLINED_FUNCTION_123_0();

  return v2;
}

void sub_1DC3D8058()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1DC3C2F2C();
}

uint64_t sub_1DC3D80AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC3D8128()
{
  v1 = sub_1DC51170C();
  OUTLINED_FUNCTION_248_0(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_24();
  v4 = *(v0 + 16);
  v30 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE30, &unk_1DC524E20);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CE38, &unk_1DC528570) - 8);
  v6 = *(*v5 + 72);
  OUTLINED_FUNCTION_185_1();
  v9 = v8 & ~v7;
  v10 = OUTLINED_FUNCTION_296();
  *(v10 + 16) = xmmword_1DC528380;
  v11 = v10 + v9;
  v12 = v11 + v5[14];
  sub_1DC51680C();
  v13 = sub_1DC2A0C74();
  OUTLINED_FUNCTION_209_0(v13);
  v14 = (v11 + v6 + v5[14]);

  sub_1DC51683C();
  sub_1DC517F4C();
  MEMORY[0x1E1296160](0xD000000000000024, 0x80000001DC545070);
  v15 = sub_1DC515B5C();
  MEMORY[0x1E1296160](v15);

  MEMORY[0x1E1296160](0xD00000000000001DLL, 0x80000001DC5450A0);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v16 = (v11 + 2 * v6 + v5[14]);
  sub_1DC51687C();
  *v16 = sub_1DC2A0C80(7);
  v16[1] = v17;
  v18 = (v11 + 3 * v6 + v5[14]);
  sub_1DC51682C();
  *v18 = sub_1DC515D9C();
  v18[1] = v19;
  v20 = (v11 + 4 * v6 + v5[14]);
  sub_1DC5168BC();
  sub_1DC510B6C();
  OUTLINED_FUNCTION_4_27();
  sub_1DC3D8E40(v21, v22);
  *v20 = sub_1DC51823C();
  v20[1] = v23;
  v24 = (v11 + 5 * v6 + v5[14]);
  sub_1DC5168AC();
  *v24 = sub_1DC515D6C();
  v24[1] = v25;
  v26 = (v11 + 6 * v6 + v5[14]);
  sub_1DC51686C();
  *v26 = sub_1DC515B5C();
  v26[1] = v27;
  v28 = (v11 + 7 * v6 + v5[14]);
  sub_1DC51681C();
  sub_1DC517FEC();
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  return v10;
}

uint64_t objectdestroy_9Tm()
{
  v1 = sub_1DC51170C();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  v8 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}