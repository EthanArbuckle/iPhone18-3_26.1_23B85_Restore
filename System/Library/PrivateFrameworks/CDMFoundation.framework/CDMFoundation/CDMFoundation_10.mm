size_t sub_1DC36B738(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1DC372C78(*(a1 + 16), 0, &qword_1ECC7CEC0, &qword_1DC5257C0, MEMORY[0x1E69A9158]);
  v4 = *(sub_1DC516DAC() - 8);
  v5 = sub_1DC374488(&v7, (v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v2, a1);
  sub_1DC30D8A4();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1DC36B824()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_47_7();
  sub_1DC517AAC();
  v6 = OUTLINED_FUNCTION_60_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_37_3();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;

  v11 = OUTLINED_FUNCTION_27_7();
  sub_1DC36C014(v11, v12, v0, v13, v10);
}

uint64_t sub_1DC36B8E0()
{
  OUTLINED_FUNCTION_1_0();
  v0[2] = v1;
  v2 = sub_1DC5151BC();
  v0[3] = v2;
  OUTLINED_FUNCTION_52(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_118();
  v6 = sub_1DC516F7C();
  v0[6] = v6;
  OUTLINED_FUNCTION_52(v6);
  v0[7] = v7;
  v9 = *(v8 + 64);
  v0[8] = OUTLINED_FUNCTION_118();
  v10 = sub_1DC516D3C();
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  v0[9] = OUTLINED_FUNCTION_118();
  v13 = sub_1DC510B6C();
  v0[10] = v13;
  OUTLINED_FUNCTION_52(v13);
  v0[11] = v14;
  v16 = *(v15 + 64);
  v0[12] = OUTLINED_FUNCTION_124();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1DC36BA54()
{
  v1 = v0[2];
  v0[15] = *sub_1DC3193C4();

  v2 = sub_1DC5169DC();
  v4 = v3;
  v0[16] = v3;
  OUTLINED_FUNCTION_147();
  v6 = *(v5 + 152);
  v12 = (v6 + *v6);
  v7 = v6[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_79_0();
  v0[17] = v8;
  *v8 = v9;
  v8[1] = sub_1DC36BBA0;
  v10 = v0[14];

  return v12(v10, v2, v4);
}

uint64_t sub_1DC36BBA0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_38();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  v3[18] = v0;

  if (!v0)
  {
    v10 = v3[15];
    v9 = v3[16];
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DC36BCAC()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_38();
  *v5 = v4;
  v7 = *(v6 + 176);
  v8 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v9 = v8;
  *(v10 + 184) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DC36BDB0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);
  v16 = *(v0 + 72);
  v17 = *(v0 + 64);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 24);

  v10 = *(v7 + 8);
  v11 = OUTLINED_FUNCTION_74_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_48_0();
  v2(v13);

  OUTLINED_FUNCTION_2_2();

  return v14();
}

uint64_t sub_1DC36BE9C()
{
  v2 = v0[15];
  v1 = v0[16];

  v3 = v0[18];
  OUTLINED_FUNCTION_227();

  OUTLINED_FUNCTION_2_2();

  return v4();
}

uint64_t sub_1DC36BF40()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  v3 = *(v0 + 112);
  v4 = *(v0 + 80);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 24);

  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_45_2();
  v10(v9);
  v11 = OUTLINED_FUNCTION_31_0();
  v2(v11);
  v12 = *(v0 + 184);
  OUTLINED_FUNCTION_227();

  OUTLINED_FUNCTION_2_2();

  return v13();
}

uint64_t sub_1DC36C014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  sub_1DC2DB2AC();
  v12 = sub_1DC517AAC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1DC2AAF50(v11, &unk_1ECC7D050, &qword_1DC523AC0);
  }

  else
  {
    sub_1DC517A9C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DC517A7C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DC51779C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1DC2AAF50(a3, &unk_1ECC7D050, &qword_1DC523AC0);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DC2AAF50(a3, &unk_1ECC7D050, &qword_1DC523AC0);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void sub_1DC36C2A4(uint64_t a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_47_7();
  if (!sub_1DC371E44(a1))
  {
    v9 = *(v3 + qword_1EDAC9420);
    OUTLINED_FUNCTION_12_0();
    v11 = (*(v10 + 176))();
    if (v9 == 1)
    {
      if (v11)
      {

        OUTLINED_FUNCTION_12_0();
        (*(v12 + 272))();
        OUTLINED_FUNCTION_186();
        if (!v14)
        {
          sub_1DC372E5C(v13);
LABEL_9:
          OUTLINED_FUNCTION_12_0();
          v17 = (*(v16 + 176))();
          OUTLINED_FUNCTION_12_0();
          (*(v18 + 272))();
          OUTLINED_FUNCTION_185_0();
          sub_1DC517AAC();
          v19 = OUTLINED_FUNCTION_60_0();
          __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
          OUTLINED_FUNCTION_195();
          v23 = swift_allocObject();
          swift_weakInit();
          v24 = swift_allocObject();
          v24[2] = 0;
          v24[3] = 0;
          v24[4] = v23;
          v24[5] = a1;
          v24[6] = v17;
          v24[7] = v9;
          v25 = v17;

          sub_1DC372E38(v9);
          v26 = OUTLINED_FUNCTION_27_7();
          sub_1DC315A04(v26, v27, v1, v28, v24);
          OUTLINED_FUNCTION_12_0();
          (*(v29 + 208))();
          sub_1DC372E5C(v9);

          return;
        }
      }
    }

    else if (v11)
    {

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_12_0();
    if (((*(v15 + 248))() & 1) == 0)
    {
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1DC36C4CC()
{
  OUTLINED_FUNCTION_1_0();
  v0[47] = v1;
  v0[48] = v2;
  v0[45] = v3;
  v0[46] = v4;
  v5 = sub_1DC514FBC();
  v0[49] = v5;
  OUTLINED_FUNCTION_52(v5);
  v0[50] = v6;
  v8 = *(v7 + 64);
  v0[51] = OUTLINED_FUNCTION_118();
  v9 = sub_1DC516F7C();
  v0[52] = v9;
  OUTLINED_FUNCTION_52(v9);
  v0[53] = v10;
  v12 = *(v11 + 64);
  v0[54] = OUTLINED_FUNCTION_124();
  v0[55] = swift_task_alloc();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v0[59] = swift_task_alloc();
  v13 = sub_1DC5157EC();
  v0[60] = v13;
  OUTLINED_FUNCTION_52(v13);
  v0[61] = v14;
  v16 = *(v15 + 64);
  v0[62] = OUTLINED_FUNCTION_124();
  v0[63] = swift_task_alloc();
  v0[64] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1DC36C660()
{
  v33 = v0;
  v1 = v0[45];
  OUTLINED_FUNCTION_36_7();
  Strong = swift_weakLoadStrong();
  v0[65] = Strong;
  if (Strong)
  {
    v3 = v0[46];
    v4 = v3[4];
    v5 = v3[5];
    v0[66] = v3[2];
    v0[67] = v3[3];
    swift_task_alloc();
    OUTLINED_FUNCTION_79_0();
    v0[68] = v6;
    *v6 = v7;
    v6[1] = sub_1DC36C8B8;
    v8 = v0[63];
    v9 = v0[47];
    v10 = v0[48];
    OUTLINED_FUNCTION_112_1();

    return sub_1DC36DCBC();
  }

  else
  {
    v12 = v0[57];
    v13 = v0[52];
    v14 = v0[53];
    v15 = v0[46];
    sub_1DC29120C();
    v16 = OUTLINED_FUNCTION_45_8();
    v17(v16);

    v18 = sub_1DC516F6C();
    v19 = sub_1DC517BAC();

    v20 = OUTLINED_FUNCTION_169();
    v21 = v0[57];
    v22 = v0[52];
    v23 = v0[53];
    if (v20)
    {
      v24 = v0[46];
      v25 = OUTLINED_FUNCTION_63();
      v26 = OUTLINED_FUNCTION_82();
      v32 = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_1DC291244(*(v24 + 16), *(v24 + 24), &v32);
      OUTLINED_FUNCTION_128_0(&dword_1DC287000, v27, v19, "RequestProcessor deallocated before routing task for trpId: %{public}s started.");
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_67();
    }

    v28 = *(v23 + 8);
    v29 = OUTLINED_FUNCTION_63_0();
    v30(v29);
    OUTLINED_FUNCTION_58_7();

    OUTLINED_FUNCTION_2_2();

    return v31();
  }
}

uint64_t sub_1DC36C8B8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_38();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 552) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC36C9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_155_2();
  a29 = v32;
  a30 = v33;
  OUTLINED_FUNCTION_188_0();
  a28 = v30;
  (*(v30[61] + 32))(v30[64], v30[63], v30[60]);
  v34 = v30[65];
  v35 = v30[64];
  v36 = v30[46];
  v37 = swift_task_alloc();
  v37[2] = v35;
  v37[3] = v36;
  v37[4] = v34;
  v38 = objc_allocWithZone(sub_1DC5159AC());
  OUTLINED_FUNCTION_66_7();
  v39 = sub_1DC51593C();

  if (v39)
  {
    v40 = v30[65];
    OUTLINED_FUNCTION_213_1();
    v41 = v30[58];
    v42 = v30[53];
    a14 = v30[52];
    a15 = v43;
    v44 = v30[46];

    sub_1DC5169CC();
    v45 = v30[26];
    OUTLINED_FUNCTION_121_1(v30 + 22, v30[25]);
    v117 = v39;
    sub_1DC515D8C();
    __swift_destroy_boxed_opaque_existential_1Tm(v30 + 22);
    v46 = sub_1DC29120C();
    (*(v42 + 16))(v41, v46, a14);
    (*(v31 + 16))(a16, a17, a15);

    v47 = sub_1DC516F6C();
    v48 = sub_1DC517B9C();

    if (os_log_type_enabled(v47, v48))
    {
      OUTLINED_FUNCTION_210_0();
      v50 = v30[61];
      v49 = v30[62];
      v51 = OUTLINED_FUNCTION_119_2();
      v52 = swift_slowAlloc();
      a19 = v52;
      *v51 = 136315650;
      j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v52);
      v54 = v53;
      v55 = *(v50 + 8);
      v56 = OUTLINED_FUNCTION_215_0();
      v55(v56);
      v57 = OUTLINED_FUNCTION_115();
      v60 = sub_1DC291244(v57, v58, v59);

      *(v51 + 4) = v60;
      *(v51 + 12) = 2082;
      *(v51 + 14) = sub_1DC291244(a11, a12, &a19);
      *(v51 + 22) = 2082;
      v61 = sub_1DC5169DC();
      v63 = sub_1DC291244(v61, v62, &a19);

      *(v51 + 24) = v63;
      _os_log_impl(&dword_1DC287000, v47, v48, "Posted routing decision: %s for trpId: %{public}s, requestId: %{public}s", v51, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      (*(a14 + 8))(a16, a15);
    }

    else
    {
      v94 = v30[61];
      v93 = v30[62];
      v95 = v30[60];
      v54 = v30[58];
      v96 = v30[52];
      v97 = v30[53];

      v55 = *(v94 + 8);
      a17 = (v94 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v98 = OUTLINED_FUNCTION_31_0();
      v55(v98);
      v99 = *(v97 + 8);
      v100 = OUTLINED_FUNCTION_42_2();
      v101(v100);
    }

    OUTLINED_FUNCTION_161_2();
    v102 = *(v54 + qword_1EDAC9440);

    sub_1DC5169DC();
    OUTLINED_FUNCTION_140_2();
    OUTLINED_FUNCTION_64_3();
    v104 = *(v103 + 112);
    v105 = OUTLINED_FUNCTION_195_0();
    v106(v105);

    v107 = OUTLINED_FUNCTION_54_2();
    v55(v107);
  }

  else
  {
    v64 = v30[59];
    v65 = v30[52];
    v66 = v30[53];
    sub_1DC29120C();
    v67 = OUTLINED_FUNCTION_8_4();
    v68(v67);
    v69 = sub_1DC516F6C();
    v70 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_82_3(v70))
    {
      v71 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v71);
      OUTLINED_FUNCTION_27_11();
      _os_log_impl(v72, v73, v74, v75, v76, 2u);
      OUTLINED_FUNCTION_31();
    }

    OUTLINED_FUNCTION_200_0();
    v77 = v30[65];
    v117 = v30[64];
    v79 = v30[60];
    v78 = v30[61];
    v80 = v30[59];
    v81 = v30[52];
    v82 = v30[53];

    v83 = *(v82 + 8);
    v84 = OUTLINED_FUNCTION_74_0();
    v85(v84);
    v86 = *(v77 + qword_1EDAC9440);

    sub_1DC5169DC();
    OUTLINED_FUNCTION_140_2();
    sub_1DC37402C();
    v87 = OUTLINED_FUNCTION_33_1();
    *v88 = 1;
    OUTLINED_FUNCTION_64_3();
    v90 = *(v89 + 120);
    v91 = OUTLINED_FUNCTION_130_2();
    v92(v91);

    (*(v78 + 8))(v117, v79);
  }

  OUTLINED_FUNCTION_58_7();

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_122_1();

  return v109(v108, v109, v110, v111, v112, v113, v114, v115, a9, a10, a11, a12, a13, a14, a15, a16, a17, v117, a19, a20, a21, a22);
}

uint64_t sub_1DC36CEA4()
{
  v196 = v0;
  v1 = *(v0 + 552);
  *(v0 + 336) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
  if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 560) & 1) == 0)
  {
    v88 = *(v0 + 448);
    v89 = *(v0 + 416);
    v90 = *(v0 + 424);

    sub_1DC29120C();
    v91 = OUTLINED_FUNCTION_8_4();
    v92(v91);
    v93 = sub_1DC516F6C();
    v94 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_25_0(v94))
    {
      v95 = OUTLINED_FUNCTION_63();
      v96 = OUTLINED_FUNCTION_249();
      *v95 = 138543362;
      sub_1DC37402C();
      OUTLINED_FUNCTION_33_1();
      *v97 = 0;
      v98 = _swift_stdlib_bridgeErrorToNSError();
      *(v95 + 4) = v98;
      *v96 = v98;
      _os_log_impl(&dword_1DC287000, v93, v94, "NLRouterRequestProcessor: Non-fatal error from NLRouterBridge %{public}@, falling back to SiriX", v95, 0xCu);
      sub_1DC2AAF50(v96, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_14_5();
    }

    v99 = *(v0 + 512);
    v100 = *(v0 + 480);
    v101 = *(v0 + 488);
    v102 = *(v0 + 448);
    v103 = *(v0 + 416);
    v104 = *(v0 + 424);

    v105 = *(v104 + 8);
    v36 = (v104 + 8);
    v106 = OUTLINED_FUNCTION_42_2();
    v107(v106);
    (*(v101 + 104))(v99, *MEMORY[0x1E69D02D8], v100);
  }

  else
  {
    v3 = *(v0 + 552);
    v4 = *(v0 + 408);
    v5 = *(v0 + 392);

    *(v0 + 344) = v3;
    v6 = v3;
    v7 = swift_dynamicCast();
    v8 = *(v0 + 552);
    if (v7)
    {
      v9 = *(v0 + 520);
      v10 = *(v0 + 512);
      v11 = *(v0 + 480);
      v12 = *(v0 + 488);
      v13 = *(v0 + 440);
      v14 = *(v0 + 416);
      v15 = *(v0 + 424);

      v16 = *MEMORY[0x1E69D02D8];
      v17 = *(v12 + 104);
      v18 = OUTLINED_FUNCTION_60_7();
      v19(v18);
      v20 = sub_1DC29120C();
      (*(v15 + 16))(v13, v20, v14);

      v21 = sub_1DC516F6C();
      LOBYTE(v11) = sub_1DC517BAC();

      if (os_log_type_enabled(v21, v11))
      {
        v22 = *(v0 + 520);
        v23 = OUTLINED_FUNCTION_63();
        *v23 = 134349056;
        *(v23 + 4) = *(v22 + qword_1EDAC9468);
        OUTLINED_FUNCTION_27_11();
        _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
        OUTLINED_FUNCTION_31();
      }

      v29 = *(v0 + 520);
      v30 = *(v0 + 440);
      v31 = *(v0 + 416);
      v32 = *(v0 + 424);
      v33 = *(v0 + 400);
      v191 = *(v0 + 408);
      v34 = *(v0 + 392);
      v35 = *(v0 + 368);

      (*(v32 + 8))(v30, v31);
      v36 = "mmand8@NSError16";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE0, &qword_1DC525830);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DC522F20;
      v38 = *MEMORY[0x1E696A578];
      v39 = sub_1DC51772C();
      OUTLINED_FUNCTION_201(v39, v40);
      sub_1DC517F4C();
      v41 = v195;
      *(v0 + 320) = v194;
      *(v0 + 328) = v41;
      MEMORY[0x1E1296160](0xD000000000000024, 0x80000001DC541D40);
      v42 = qword_1EDAC9468;
      v43 = *(v29 + qword_1EDAC9468);
      sub_1DC517B3C();
      MEMORY[0x1E1296160](0x73646E6F63657320, 0xE90000000000002ELL);
      v44 = *(v0 + 320);
      v45 = *(v0 + 328);
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v44;
      *(inited + 56) = v45;
      v46 = sub_1DC51764C();
      v47 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v48 = OUTLINED_FUNCTION_203_0();
      v50 = sub_1DC312744(v48, v49, 100, v46);
      (*(*v35 + 376))(v50);
      v51 = sub_1DC3895E0();
      OUTLINED_FUNCTION_36_7();
      sub_1DC2C5FC4(v51, v0 + 216);
      v52 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
      v53 = *(v29 + v42);
      v54 = OUTLINED_FUNCTION_12_3();
      sub_1DC3898E0(v54, v55);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
      sub_1DC37207C();
      (*(v33 + 8))(v191, v34);
    }

    else
    {
      v57 = *(v0 + 424);
      v56 = *(v0 + 432);
      v58 = *(v0 + 416);

      v59 = sub_1DC29120C();
      (*(v57 + 16))(v56, v59, v58);
      v60 = v8;
      v61 = sub_1DC516F6C();
      v62 = sub_1DC517B9C();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = *(v0 + 552);
        v64 = OUTLINED_FUNCTION_63();
        v65 = OUTLINED_FUNCTION_249();
        *v64 = 138543362;
        v66 = v63;
        v67 = _swift_stdlib_bridgeErrorToNSError();
        *(v64 + 4) = v67;
        *v65 = v67;
        OUTLINED_FUNCTION_128_0(&dword_1DC287000, v68, v62, "NLRouterRequestProcessor: Non-fatal error from NLRouterClient %{public}@, falling back to SiriX");
        sub_1DC2AAF50(v65, &qword_1ECC7DFE0, &qword_1DC5227F0);
        OUTLINED_FUNCTION_54_12();
        OUTLINED_FUNCTION_67();
      }

      v189 = *(v0 + 552);
      v192 = *(v0 + 520);
      v69 = *(v0 + 512);
      v71 = *(v0 + 480);
      v70 = *(v0 + 488);
      v72 = *(v0 + 424);
      v73 = *(v0 + 432);
      v74 = *(v0 + 416);
      v75 = *(v0 + 368);

      (*(v72 + 8))(v73, v74);
      (*(v70 + 104))(v69, *MEMORY[0x1E69D02D8], v71);
      v36 = "mmand8@NSError16";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE0, &qword_1DC525830);
      v76 = swift_initStackObject();
      *(v76 + 16) = xmmword_1DC522F20;
      v77 = *MEMORY[0x1E696A578];
      v78 = sub_1DC51772C();
      OUTLINED_FUNCTION_201(v78, v79);
      sub_1DC517F4C();
      v80 = v195;
      *(v0 + 304) = v194;
      *(v0 + 312) = v80;
      MEMORY[0x1E1296160](0xD000000000000021, 0x80000001DC541D10);
      *(v0 + 352) = v189;
      sub_1DC517FEC();
      v81 = *(v0 + 304);
      v82 = *(v0 + 312);
      *(v76 + 72) = MEMORY[0x1E69E6158];
      *(v76 + 48) = v81;
      *(v76 + 56) = v82;
      v83 = sub_1DC51764C();
      v84 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v85 = OUTLINED_FUNCTION_203_0();
      v87 = sub_1DC312744(v85, v86, 101, v83);
      (*(*v75 + 376))(v87);
      sub_1DC37207C();
    }
  }

  v108 = *(v0 + 520);
  v109 = *(v0 + 512);
  v110 = *(v0 + 368);
  v111 = swift_task_alloc();
  v111[2] = v109;
  v111[3] = v110;
  v111[4] = v108;
  v112 = objc_allocWithZone(sub_1DC5159AC());
  OUTLINED_FUNCTION_66_7();
  v113 = sub_1DC51593C();

  if (v113)
  {
    v114 = *(v0 + 520);
    OUTLINED_FUNCTION_213_1();
    v115 = *(v0 + 464);
    v116 = *(v0 + 424);
    v185 = *(v0 + 416);
    v186 = v117;
    v118 = *(v0 + 368);

    sub_1DC5169CC();
    v119 = *(v0 + 208);
    OUTLINED_FUNCTION_121_1((v0 + 176), *(v0 + 200));
    v190 = v113;
    sub_1DC515D8C();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    v120 = sub_1DC29120C();
    (*(v116 + 16))(v115, v120, v185);
    (*(v36 + 2))(v187, v188, v186);

    v121 = sub_1DC516F6C();
    v122 = sub_1DC517B9C();

    if (os_log_type_enabled(v121, v122))
    {
      OUTLINED_FUNCTION_210_0();
      v123 = *(v0 + 488);
      v124 = *(v0 + 496);
      v125 = OUTLINED_FUNCTION_119_2();
      v126 = swift_slowAlloc();
      v194 = v126;
      *v125 = 136315650;
      j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v126);
      v127 = *(v123 + 8);
      v128 = OUTLINED_FUNCTION_215_0();
      v127(v128);
      v129 = OUTLINED_FUNCTION_54_2();
      v132 = sub_1DC291244(v129, v130, v131);

      *(v125 + 4) = v132;
      *(v125 + 12) = 2082;
      *(v125 + 14) = sub_1DC291244(v183, v184, &v194);
      *(v125 + 22) = 2082;
      v133 = sub_1DC5169DC();
      v135 = sub_1DC291244(v133, v134, &v194);

      *(v125 + 24) = v135;
      _os_log_impl(&dword_1DC287000, v121, v122, "Posted routing decision: %s for trpId: %{public}s, requestId: %{public}s", v125, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_66();

      (*(v185 + 8))(v187, v186);
    }

    else
    {
      v166 = *(v0 + 488);
      v165 = *(v0 + 496);
      v167 = *(v0 + 480);
      v168 = *(v0 + 464);
      v169 = *(v0 + 416);
      v170 = *(v0 + 424);

      v127 = *(v166 + 8);
      v171 = OUTLINED_FUNCTION_31_0();
      v127(v171);
      v172 = *(v170 + 8);
      v173 = OUTLINED_FUNCTION_187();
      v174(v173);
    }

    OUTLINED_FUNCTION_161_2();
    v175 = *(&v121->isa + qword_1EDAC9440);

    sub_1DC5169DC();
    OUTLINED_FUNCTION_140_2();
    OUTLINED_FUNCTION_64_3();
    v177 = *(v176 + 112);
    v178 = OUTLINED_FUNCTION_195_0();
    v179(v178);

    v180 = OUTLINED_FUNCTION_54_2();
    v127(v180);
  }

  else
  {
    v136 = *(v0 + 472);
    v137 = *(v0 + 416);
    v138 = *(v0 + 424);
    sub_1DC29120C();
    v139 = OUTLINED_FUNCTION_8_4();
    v140(v139);
    v141 = sub_1DC516F6C();
    v142 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_82_3(v142))
    {
      v143 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v143);
      OUTLINED_FUNCTION_27_11();
      _os_log_impl(v144, v145, v146, v147, v148, 2u);
      OUTLINED_FUNCTION_31();
    }

    OUTLINED_FUNCTION_200_0();
    v149 = *(v0 + 520);
    v193 = *(v0 + 512);
    v151 = *(v0 + 480);
    v150 = *(v0 + 488);
    v152 = *(v0 + 472);
    v153 = *(v0 + 416);
    v154 = *(v0 + 424);

    v155 = *(v154 + 8);
    v156 = OUTLINED_FUNCTION_74_0();
    v157(v156);
    v158 = *(v149 + qword_1EDAC9440);

    sub_1DC5169DC();
    OUTLINED_FUNCTION_140_2();
    sub_1DC37402C();
    v159 = OUTLINED_FUNCTION_33_1();
    *v160 = 1;
    OUTLINED_FUNCTION_64_3();
    v162 = *(v161 + 120);
    v163 = OUTLINED_FUNCTION_130_2();
    v164(v163);

    (*(v150 + 8))(v193, v151);
  }

  OUTLINED_FUNCTION_58_7();

  OUTLINED_FUNCTION_2_2();

  return v181();
}

void sub_1DC36DAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_164();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_56_2();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_17_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &a9 - v37;
  v39 = sub_1DC5157EC();
  OUTLINED_FUNCTION_35(v39);
  (*(v40 + 16))(v38, v24, v39);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v39);
  sub_1DC51594C();
  v44 = *(v22 + 16);
  v45 = *(v22 + 24);

  OUTLINED_FUNCTION_151();
  sub_1DC51596C();
  sub_1DC51699C();
  sub_1DC51595C();
  sub_1DC5169DC();
  sub_1DC51598C();
  sub_1DC5169EC();
  sub_1DC510B6C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  sub_1DC51599C();
  v50 = *MEMORY[0x1E69D0458];
  v51 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35(v51);
  (*(v52 + 104))(v18, v50, v51);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v51);
  OUTLINED_FUNCTION_204_0();
  sub_1DC51597C();
  OUTLINED_FUNCTION_154();
}

uint64_t sub_1DC36DCBC()
{
  OUTLINED_FUNCTION_1_0();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v1[6] = v7;
  v1[7] = v8;
  v1[5] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB20, &unk_1DC529C40);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  v1[14] = OUTLINED_FUNCTION_118();
  v13 = sub_1DC51588C();
  v1[15] = v13;
  OUTLINED_FUNCTION_52(v13);
  v1[16] = v14;
  v16 = *(v15 + 64);
  v1[17] = OUTLINED_FUNCTION_124();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v17 = sub_1DC510C8C();
  v1[21] = v17;
  OUTLINED_FUNCTION_52(v17);
  v1[22] = v18;
  v20 = *(v19 + 64);
  v1[23] = OUTLINED_FUNCTION_118();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v21);
  v23 = *(v22 + 64);
  v1[24] = OUTLINED_FUNCTION_118();
  v24 = type metadata accessor for NLRouterServiceRequest(0);
  v1[25] = v24;
  OUTLINED_FUNCTION_52(v24);
  v1[26] = v25;
  v1[27] = *(v26 + 64);
  v1[28] = OUTLINED_FUNCTION_124();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v27);
  v29 = *(v28 + 64);
  v1[31] = OUTLINED_FUNCTION_124();
  v1[32] = swift_task_alloc();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v30);
  v32 = *(v31 + 64);
  v1[33] = OUTLINED_FUNCTION_118();
  v33 = type metadata accessor for NLRouterTurnProbingResult(0);
  v1[34] = v33;
  OUTLINED_FUNCTION_10(v33);
  v35 = *(v34 + 64);
  v1[35] = OUTLINED_FUNCTION_118();
  v36 = sub_1DC516F7C();
  v1[36] = v36;
  OUTLINED_FUNCTION_52(v36);
  v1[37] = v37;
  v39 = *(v38 + 64);
  v1[38] = OUTLINED_FUNCTION_124();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_10(v40);
  v42 = *(v41 + 64);
  v1[45] = OUTLINED_FUNCTION_118();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v43);
  v45 = *(v44 + 64);
  v1[46] = OUTLINED_FUNCTION_124();
  v1[47] = swift_task_alloc();
  v46 = sub_1DC5157EC();
  v1[48] = v46;
  OUTLINED_FUNCTION_52(v46);
  v1[49] = v47;
  v49 = *(v48 + 64);
  v1[50] = OUTLINED_FUNCTION_124();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v50 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v50, v51, v52);
}

uint64_t sub_1DC36E154()
{
  v232 = v0;
  v1 = v0[47];
  v227 = v0[48];
  v2 = v0[45];
  v3 = v0[13];
  v5 = v0[6];
  v4 = v0[7];
  v6 = *(v3 + qword_1EDAC9400 + 32);
  __swift_project_boxed_opaque_existential_1((v3 + qword_1EDAC9400), *(v3 + qword_1EDAC9400 + 24));
  OUTLINED_FUNCTION_36_7();
  sub_1DC2DB2AC();
  v7 = *(v6 + 8);
  OUTLINED_FUNCTION_70_4();
  v8();
  v9 = OUTLINED_FUNCTION_29_0();
  sub_1DC2AAF50(v9, v10, &qword_1DC529390);
  v11 = OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_39(v11, v12, v227);
  if (!v13)
  {
    v23 = v0[44];
    v24 = v0[36];
    v25 = v0[37];
    v26 = *(v0[49] + 32);
    (v26)(v0[69], v0[47], v0[48]);
    sub_1DC29120C();
    v27 = OUTLINED_FUNCTION_8_4();
    v28(v27);
    v29 = sub_1DC516F6C();
    v30 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_82_3(v30))
    {
      v32 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v32);
      OUTLINED_FUNCTION_27_11();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_31();
    }

    v38 = v0[69];
    v39 = v0[48];
    v40 = v0[44];
    v41 = v0[36];
    v42 = v0[37];
    v43 = v0[5];

    v44 = *(v42 + 8);
    v45 = OUTLINED_FUNCTION_42_2();
    v46(v45);
    OUTLINED_FUNCTION_112_1();
    v26();
    v47 = v0[69];
    v48 = v0[68];
    OUTLINED_FUNCTION_200_0();
    v49 = v0[65];
    v50 = v0[63];
    v51 = v0[64];
    v53 = v0[61];
    v52 = v0[62];
    v54 = v0[60];
    v137 = v0[59];
    v140 = v0[58];
    v143 = v0[57];
    v146 = v0[56];
    v149 = v0[55];
    v152 = v0[54];
    v155 = v0[53];
    v158 = v0[52];
    v161 = v0[51];
    v164 = v0[50];
    v167 = v0[47];
    v169 = v0[46];
    v171 = v0[45];
    v173 = v0[44];
    v175 = v0[43];
    v177 = v0[42];
    v179 = v0[41];
    v181 = v0[40];
    v183 = v0[39];
    v185 = v0[38];
    v188 = v0[35];
    v191 = v0[33];
    v194 = v0[32];
    v197 = v0[31];
    v200 = v0[30];
    v203 = v0[29];
    v206 = v0[28];
    v209 = v0[24];
    v212 = v0[23];
    v215 = v0[20];
    v218 = v0[19];
    v221 = v0[18];
    v224 = v0[17];
    v228 = v0[14];

    OUTLINED_FUNCTION_2_2();
LABEL_12:

    return v55();
  }

  v14 = v0[7];
  sub_1DC2AAF50(v0[47], &qword_1ECC7CA40, &unk_1DC5233A0);
  if (!v14)
  {
    v57 = v0[37];
    v56 = v0[38];
    v58 = v0[36];
    sub_1DC29120C();
    v59 = OUTLINED_FUNCTION_8_4();
    v60(v59);
    v61 = sub_1DC516F6C();
    v62 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_82_3(v62))
    {
      v63 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v63);
      OUTLINED_FUNCTION_27_11();
      _os_log_impl(v64, v65, v66, v67, v68, 2u);
      OUTLINED_FUNCTION_31();
    }

    v70 = v0[37];
    v69 = v0[38];
    v71 = v0[36];

    v72 = *(v70 + 8);
    v73 = OUTLINED_FUNCTION_63_0();
    v74(v73);
    sub_1DC37402C();
    OUTLINED_FUNCTION_33_1();
    *v75 = 0;
    swift_willThrow();
    v76 = v0[69];
    v77 = v0[68];
    v78 = v0[67];
    v79 = v0[66];
    v80 = v0[65];
    v81 = v0[63];
    v82 = v0[64];
    v84 = v0[61];
    v83 = v0[62];
    v85 = v0[60];
    v135 = v0[59];
    v138 = v0[58];
    v141 = v0[57];
    v144 = v0[56];
    v147 = v0[55];
    v150 = v0[54];
    v153 = v0[53];
    v156 = v0[52];
    v159 = v0[51];
    v162 = v0[50];
    v165 = v0[47];
    v168 = v0[46];
    v170 = v0[45];
    v172 = v0[44];
    v174 = v0[43];
    v176 = v0[42];
    v178 = v0[41];
    v180 = v0[40];
    v182 = v0[39];
    v184 = v0[38];
    v186 = v0[35];
    v189 = v0[33];
    v192 = v0[32];
    v195 = v0[31];
    v198 = v0[30];
    v201 = v0[29];
    v204 = v0[28];
    v207 = v0[24];
    v210 = v0[23];
    v213 = v0[20];
    v216 = v0[19];
    v219 = v0[18];
    v222 = v0[17];
    v225 = v0[14];

    OUTLINED_FUNCTION_2_2();
    goto LABEL_12;
  }

  v15 = v0[35];
  v16 = v0[33];
  v17 = v0[12];
  v19 = v0[7];
  v18 = v0[8];
  v20 = v18;
  sub_1DC370784(v18);
  v231[0] = 0;
  v231[1] = 0;
  sub_1DC438C18(v231, v15);
  if (v17 < 0)
  {
    v22 = 0;
  }

  else
  {
    v21 = v0[12];
    sub_1DC372E4C(v21);
    sub_1DC43EA3C(v21, v231);
    v22 = v231[0];
  }

  v211 = v22;
  v0[70] = v22;
  v220 = v0[37];
  v223 = v0[43];
  v226 = v0[36];
  v196 = v0[34];
  v87 = v0[32];
  v190 = v0[35];
  v193 = v0[31];
  v217 = v0[30];
  v229 = v0[29];
  v187 = v0[24];
  v88 = v0[22];
  v199 = v0[21];
  v202 = v0[23];
  v89 = v0[13];
  v214 = v0[10];
  v90 = v0[9];
  v205 = v0[11];
  v208 = v0[6];
  OUTLINED_FUNCTION_117_2();
  (*(v91 + qword_1ECC8F4E0 + 544))(v90);
  OUTLINED_FUNCTION_29_0();
  sub_1DC2DB2AC();
  v92 = *(v89 + qword_1EDAC93F8 + 32);
  OUTLINED_FUNCTION_121_1((v89 + qword_1EDAC93F8), *(v89 + qword_1EDAC93F8 + 24));
  v93 = *(v92 + 8);

  v94 = OUTLINED_FUNCTION_146_1();
  v95 = v93(v94);
  v96 = sub_1DC5169DC();
  v98 = v97;
  sub_1DC374080();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v196);
  (*(v88 + 16))(v202, v89 + qword_1EDAC93E0, v199);
  v231[0] = v211;
  v102 = v211;

  NLRouterServiceRequest.init(currentUserQuery:turnContext:conversationHistory:requestId:trpCandidateId:probingResult:locale:userQueryDecoration:)(v208, v19, v193, v95, v96, v98, v214, v205, v187, v202, v231, v134, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166);
  v103 = sub_1DC29120C();
  v0[71] = v103;
  v104 = *(v220 + 16);
  v0[72] = v104;
  v0[73] = (v220 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v104(v223, v103, v226);
  OUTLINED_FUNCTION_73_3();
  sub_1DC374080();
  v105 = sub_1DC516F6C();
  v106 = sub_1DC517B9C();
  v107 = os_log_type_enabled(v105, v106);
  v108 = v0[43];
  v110 = v0[36];
  v109 = v0[37];
  v111 = v0[29];
  if (v107)
  {
    v112 = v0[25];
    v230 = v0[43];
    v113 = OUTLINED_FUNCTION_63();
    v114 = OUTLINED_FUNCTION_82();
    v231[0] = v114;
    *v113 = 136315138;
    sub_1DC374BAC(&qword_1ECC7BC20, type metadata accessor for NLRouterServiceRequest);
    v115 = sub_1DC51823C();
    v117 = v116;
    OUTLINED_FUNCTION_0_27();
    sub_1DC3740D4();
    v118 = sub_1DC291244(v115, v117, v231);

    *(v113 + 4) = v118;
    _os_log_impl(&dword_1DC287000, v105, v106, "Making NLRouter request with %s", v113, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_54_12();

    v119 = *(v109 + 8);
    v119(v230, v110);
  }

  else
  {

    OUTLINED_FUNCTION_0_27();
    sub_1DC3740D4();
    v119 = *(v109 + 8);
    v119(v108, v110);
  }

  v0[74] = v119;
  v120 = v0[30];
  v122 = v0[27];
  v121 = v0[28];
  v123 = v0[26];
  v124 = v0[13];
  v125 = *(v124 + qword_1EDAC9468);
  OUTLINED_FUNCTION_73_3();
  sub_1DC374080();
  v126 = (*(v123 + 80) + 24) & ~*(v123 + 80);
  v127 = swift_allocObject();
  v0[75] = v127;
  *(v127 + 16) = v124;
  sub_1DC374124();
  v128 = *(MEMORY[0x1E69D3548] + 4);

  swift_task_alloc();
  OUTLINED_FUNCTION_79_0();
  v0[76] = v129;
  *v129 = v130;
  v129[1] = sub_1DC36ECC8;
  v131 = v0[68];
  v132 = v0[48];
  v133.n128_u64[0] = v125;

  return MEMORY[0x1EEE40F70](v131, &unk_1DC5257B0, v127, v132, v133);
}

uint64_t sub_1DC36ECC8()
{
  OUTLINED_FUNCTION_41_5();
  v2 = *v1;
  OUTLINED_FUNCTION_38();
  *v4 = v3;
  v5 = *(v2 + 608);
  *v4 = *v1;
  *(v3 + 616) = v0;

  v6 = *(v2 + 600);

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC36EDF0()
{
  v1 = (v0[13] + qword_1EDAC9410);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = sub_1DC5169DC();
  v6 = v5;
  v0[78] = v5;
  v7 = *(v3 + 32);
  OUTLINED_FUNCTION_6();
  v16 = (v8 + *v8);
  v10 = *(v9 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_79_0();
  v0[79] = v11;
  *v11 = v12;
  v11[1] = sub_1DC36EF48;
  v13 = v0[68];
  v14 = v0[46];

  return v16(v14, v13, v4, v6, v2, v3);
}

uint64_t sub_1DC36EF48()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v2 = *(v1 + 632);
  v3 = *(v1 + 624);
  v4 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DC36F048()
{
  v333 = v0;
  v1 = v0[48];
  v2 = v0[46];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v1);
  v320 = v0[72];
  v326 = v0[73];
  v4 = v0[71];
  v5 = v0[68];
  v6 = v0[67];
  if (EnumTagSinglePayload == 1)
  {
    v7 = v0[62];
    v8 = v0[49];
    v9 = v0[41];
    v10 = v0[36];
    sub_1DC2AAF50(v2, &qword_1ECC7CA40, &unk_1DC5233A0);
    v11 = *(v8 + 16);
    v12 = OUTLINED_FUNCTION_29_0();
    (v11)(v12);
    OUTLINED_FUNCTION_202_0();
    v13();
    OUTLINED_FUNCTION_59_2();
    v11();
    v14 = sub_1DC516F6C();
    v15 = sub_1DC517B9C();
    v16 = OUTLINED_FUNCTION_82_3(v15);
    v327 = v0[74];
    if (v16)
    {
      v17 = v0[62];
      v18 = v0[63];
      v303 = v10;
      v19 = v0[48];
      v20 = v0[49];
      v313 = v0[37];
      v316 = v0[36];
      v321 = v0[41];
      v21 = OUTLINED_FUNCTION_63();
      v22 = OUTLINED_FUNCTION_82();
      v332[0] = v22;
      *v21 = 136315138;
      (v303)(v18, v17, v19);
      sub_1DC51777C();
      v23 = *(v20 + 8);
      v24 = OUTLINED_FUNCTION_60();
      v23(v24);
      v10 = v303;
      v25 = OUTLINED_FUNCTION_147_0();
      v28 = sub_1DC291244(v25, v26, v27);

      *(v21 + 4) = v28;
      OUTLINED_FUNCTION_128_0(&dword_1DC287000, v29, v5, "Received NLRouter response: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_67();

      v30 = v316;
      v31 = v321;
    }

    else
    {
      v55 = v0[62];
      v56 = v0[48];
      v57 = v0[49];
      v58 = v0[41];
      v21 = v0[36];
      v59 = v0[37];

      v23 = *(v57 + 8);
      v60 = OUTLINED_FUNCTION_63_0();
      v23(v60);
      v31 = OUTLINED_FUNCTION_42_2();
    }

    v327(v31, v30);
  }

  else
  {
    v314 = v0[65];
    v317 = v0[64];
    v32 = v0[49];
    v33 = v0[42];
    v10 = v0[36];
    (*(v32 + 32))(v0[66], v2, v1);
    v34 = *(v32 + 16);
    v35 = OUTLINED_FUNCTION_113_0();
    v34(v35);
    OUTLINED_FUNCTION_202_0();
    v36();
    (v34)(v314, v6, v1);
    OUTLINED_FUNCTION_59_2();
    (v34)();
    v37 = sub_1DC516F6C();
    v38 = sub_1DC517B9C();
    v39 = os_log_type_enabled(v37, v38);
    v21 = v0[66];
    v40 = v0[65];
    v322 = v0[64];
    v328 = v0[74];
    if (v39)
    {
      v41 = v0[63];
      v42 = v0[48];
      v294 = v0[49];
      v311 = v0[37];
      v315 = v0[36];
      v318 = v0[42];
      v43 = OUTLINED_FUNCTION_140();
      v332[0] = OUTLINED_FUNCTION_143();
      *v43 = 136315394;
      v44 = OUTLINED_FUNCTION_29_0();
      (v10)(v44);
      OUTLINED_FUNCTION_60();
      v306 = v38;
      v45 = sub_1DC51777C();
      v310 = v21;
      v299 = v37;
      v304 = v10;
      v47 = v46;
      v21 = v294 + 8;
      v23 = *(v294 + 8);
      v48 = OUTLINED_FUNCTION_63_0();
      v23(v48);
      v49 = sub_1DC291244(v45, v47, v332);
      v10 = v304;

      *(v43 + 4) = v49;
      *(v43 + 12) = 2080;
      OUTLINED_FUNCTION_112_1();
      v304();
      OUTLINED_FUNCTION_60();
      sub_1DC51777C();
      v50 = OUTLINED_FUNCTION_63_0();
      v23(v50);
      v51 = OUTLINED_FUNCTION_48_0();
      v54 = sub_1DC291244(v51, v52, v53);

      *(v43 + 14) = v54;
      _os_log_impl(&dword_1DC287000, v299, v306, "Received NLRouter response: %s (modified by A/B; original: %s)", v43, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_54_12();

      v328(v318, v315);
      (v23)(v310, v42);
    }

    else
    {
      v61 = v0[48];
      v62 = v0[49];
      v63 = v0[42];
      v64 = v0[36];
      v65 = v0[37];

      v23 = *(v62 + 8);
      (v23)(v322, v61);
      v66 = OUTLINED_FUNCTION_43();
      v23(v66);
      v67 = OUTLINED_FUNCTION_45_2();
      (v328)(v67);
      (v23)(v21, v61);
    }
  }

  v69 = v0[48];
  v68 = v0[49];
  v70 = v68 + 16;
  v71 = (v68 + 88);
  v72 = v0[67];
  v73 = MEMORY[0x1E69D02E8];
  if (*(v0[13] + qword_1EDAC9418) == 1)
  {
    (v10)(v0[60], v72, v0[48]);
    v74 = *v71;
    v75 = OUTLINED_FUNCTION_43();
    v77 = v76(v75);
    v78 = v77 == *v73 || v77 == *MEMORY[0x1E69D02D0];
    if (v78)
    {
      goto LABEL_15;
    }

    if (v77 == *MEMORY[0x1E69D02C8])
    {
      v305 = v10;
      v106 = v0[60];
      v108 = v0[14];
      v107 = v0[15];
      (*(v0[49] + 96))(v106, v0[48]);
      sub_1DC32B76C(*v106, v108);

      v109 = OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_39(v109, v110, v107);
      if (v78)
      {
        sub_1DC2AAF50(v0[14], &qword_1ECC7CB20, &unk_1DC529C40);
      }

      else
      {
        v189 = v0[63];
        v190 = v0[58];
        v191 = v0[48];
        v192 = v0[49];
        (*(v0[16] + 32))(v0[20], v0[14], v0[15]);
        sub_1DC32D380();
        v193 = *(v192 + 104);
        v325 = *MEMORY[0x1E69D02F8];
        v193(v190);
        OUTLINED_FUNCTION_45_2();
        v194 = sub_1DC5157DC();
        v195 = OUTLINED_FUNCTION_42_2();
        v23(v195);
        v196 = OUTLINED_FUNCTION_187();
        v23(v196);
        v331 = v193;
        if (v194)
        {
          (*(v0[16] + 8))(v0[20], v0[15]);
          goto LABEL_65;
        }

        v246 = v0[63];
        v247 = v0[58];
        v248 = v0[48];
        v249 = v0[20];
        v298 = v70;
        v250 = v23;
        v251 = v0[16];
        v319 = v0[15];
        sub_1DC32D380();
        (v193)(v247, *MEMORY[0x1E69D02F0], v248);
        OUTLINED_FUNCTION_45_2();
        v252 = sub_1DC5157DC();
        v253 = OUTLINED_FUNCTION_42_2();
        v250(v253);
        v254 = OUTLINED_FUNCTION_187();
        v250(v254);
        (*(v251 + 8))(v249, v319);
        v23 = v250;
        v70 = v298;
        if (v252)
        {
LABEL_65:
          v255 = v0[13];
          v256 = v325;
          if (*(v255 + qword_1EDAC9448) != 1 || (*(v255 + qword_1EDAC9450) & 1) == 0)
          {
            v256 = *MEMORY[0x1E69D02D8];
          }

          v257 = v0[61];
          v258 = v0[49];
          (v331)(v0[57], v256, v0[48]);
          v259 = *(v258 + 32);
          v260 = OUTLINED_FUNCTION_56_0();
          v261(v260);
          v10 = v305;
          goto LABEL_17;
        }
      }

      v10 = v305;
      (v305)(v0[61], v0[67], v0[48]);
LABEL_17:
      v80 = v0[67];
      v81 = v0[61];
      v82 = v0[48];
      OUTLINED_FUNCTION_70_5();
      sub_1DC374BAC(v83, v84);
      OUTLINED_FUNCTION_31_0();
      v85 = sub_1DC5176CC();
      v86 = v0[67];
      v87 = v0[61];
      if (v85)
      {
        v88 = v0[68];
        v89 = v0[48];
        v90 = v0[49];
        v91 = v0[32];
        v92 = v0[30];
        v323 = v0[35];
        v329 = v0[5];

        v93 = OUTLINED_FUNCTION_115();
        v23(v93);
        v94 = OUTLINED_FUNCTION_45_2();
        v23(v94);
        OUTLINED_FUNCTION_0_27();
        sub_1DC3740D4();
        sub_1DC2AAF50(v91, &qword_1ECC7BFD0, &unk_1DC522550);
        OUTLINED_FUNCTION_2_17();
        sub_1DC3740D4();
        v95 = *(v90 + 32);
        OUTLINED_FUNCTION_70_4();
        v96();
LABEL_75:
        v275 = v0[69];
        v276 = v0[68];
        OUTLINED_FUNCTION_200_0();
        v277 = v0[65];
        v278 = v0[63];
        v279 = v0[64];
        v281 = v0[61];
        v280 = v0[62];
        v282 = v0[59];
        v283 = v0[60];
        OUTLINED_FUNCTION_26_9();

        OUTLINED_FUNCTION_2_2();

        return v284();
      }

      v111 = v0[73];
      v113 = v0[55];
      v112 = v0[56];
      v114 = v0[48];
      (v0[72])(v0[40], v0[71], v0[36]);
      v115 = OUTLINED_FUNCTION_62_2();
      (v10)(v115);
      v116 = OUTLINED_FUNCTION_29_0();
      (v10)(v116);
      v117 = sub_1DC516F6C();
      v307 = sub_1DC517B8C();
      os_log_type_enabled(v117, v307);
      OUTLINED_FUNCTION_162_2();
      v119 = v0[55];
      v118 = v0[56];
      v121 = v0[48];
      v120 = v0[49];
      v122 = v0[40];
      OUTLINED_FUNCTION_111_0();
      if (v123)
      {
        v124 = OUTLINED_FUNCTION_140();
        v332[0] = OUTLINED_FUNCTION_143();
        *v124 = 136315394;
        v295 = v87;
        v300 = v70;
        v125 = v23;
        v126 = sub_1DC32B2D8();
        v128 = v127;
        v129 = OUTLINED_FUNCTION_12_3();
        v125(v129);
        sub_1DC291244(v126, v128, v332);
        OUTLINED_FUNCTION_168();
        OUTLINED_FUNCTION_225_0();
        OUTLINED_FUNCTION_141_1();
        v130 = OUTLINED_FUNCTION_54_2();
        v125(v130);
        v131 = OUTLINED_FUNCTION_31_0();
        sub_1DC291244(v131, v132, v133);
        OUTLINED_FUNCTION_168();
        *(v124 + 14) = v118;
        OUTLINED_FUNCTION_177_0(&dword_1DC287000, v134, v135, "FullPlanner is not enabled. Post experiment decision: %s, updated to: %s");
        OUTLINED_FUNCTION_224_0();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_58();

        v136 = OUTLINED_FUNCTION_30_9();
        v137(v136);
        v138 = OUTLINED_FUNCTION_192_0();
        v125(v138);
        v139 = OUTLINED_FUNCTION_205_0();
        v125(v139);
        OUTLINED_FUNCTION_0_27();
        sub_1DC3740D4();
        sub_1DC2AAF50(v300, &qword_1ECC7BFD0, &unk_1DC522550);
      }

      else
      {

        v183 = OUTLINED_FUNCTION_54_2();
        v23(v183);
        v184 = OUTLINED_FUNCTION_12_3();
        v23(v184);
        v185 = OUTLINED_FUNCTION_30_9();
        v186(v185);
        v187 = OUTLINED_FUNCTION_192_0();
        v23(v187);
        v188 = OUTLINED_FUNCTION_205_0();
        v23(v188);
        OUTLINED_FUNCTION_0_27();
        sub_1DC3740D4();
        sub_1DC2AAF50(v70, &qword_1ECC7BFD0, &unk_1DC522550);
      }

      OUTLINED_FUNCTION_2_17();
      sub_1DC3740D4();
      v105 = v0[61];
LABEL_74:
      (*(v0[49] + 32))(v0[5], v105, v0[48]);
      goto LABEL_75;
    }

    if (v77 == *MEMORY[0x1E69D02E0])
    {
LABEL_15:
      v79 = v0[49] + 8;
      (v23)(v0[60], v0[48]);
    }

    else if (v77 != *MEMORY[0x1E69D02D8])
    {
      v175 = *MEMORY[0x1E69D02F8];
      if (v77 == v175 || v77 == *MEMORY[0x1E69D02F0])
      {
        v177 = v0[13];
        if (*(v177 + qword_1EDAC9448) != 1 || (*(v177 + qword_1EDAC9450) & 1) == 0)
        {
          v175 = *MEMORY[0x1E69D02D8];
        }

        v178 = v0[61];
        v179 = v0[49];
        (*(v179 + 104))(v0[59], v175, v0[48]);
        v180 = *(v179 + 32);
        v181 = OUTLINED_FUNCTION_31_0();
        v182(v181);
      }

      else
      {
        v285 = v0[60];
        v286 = v0[49];
        (v10)(v0[61], v0[67], v0[48]);
        v287 = OUTLINED_FUNCTION_31_0();
        v23(v287);
      }

      goto LABEL_17;
    }

    (v10)(v0[61], v0[67], v0[48]);
    goto LABEL_17;
  }

  (v10)(v0[53], v72, v0[48]);
  v97 = *v71;
  v98 = OUTLINED_FUNCTION_43();
  v100 = v99(v98);
  if (v100 == *v73 || v100 == *MEMORY[0x1E69D02D0])
  {
    v101 = v0[68];
    v102 = v0[53];
    OUTLINED_FUNCTION_226(v0[70]);
    v103 = OUTLINED_FUNCTION_56_0();
    v23(v103);
    OUTLINED_FUNCTION_0_27();
    sub_1DC3740D4();
    sub_1DC2AAF50(v21, &qword_1ECC7BFD0, &unk_1DC522550);
    OUTLINED_FUNCTION_2_17();
    sub_1DC3740D4();
    v104 = OUTLINED_FUNCTION_63_0();
    v23(v104);
LABEL_22:
    v105 = v0[67];
    goto LABEL_74;
  }

  if (v100 != *MEMORY[0x1E69D02C8])
  {
    if (v100 == *MEMORY[0x1E69D02E0])
    {
      v197 = v0[49] + 8;
      (v23)(v0[53], v0[48]);
      v198 = *MEMORY[0x1E69D02D8];
    }

    else
    {
      v198 = *MEMORY[0x1E69D02D8];
      if (v100 == v198)
      {
        v262 = v0[68];
        v263 = v0[48];
        v264 = v0[49];
        v265 = v0[35];
        v266 = v0[32];
        v267 = v0[30];

        v268 = OUTLINED_FUNCTION_31_0();
        v23(v268);
        OUTLINED_FUNCTION_0_27();
        sub_1DC3740D4();
        sub_1DC2AAF50(v266, &qword_1ECC7BFD0, &unk_1DC522550);
        OUTLINED_FUNCTION_2_17();
        sub_1DC3740D4();
        goto LABEL_22;
      }

      if (v100 != *MEMORY[0x1E69D02F8] && v100 != *MEMORY[0x1E69D02F0])
      {
        v289 = v0[53];
        v290 = v0[48];
        (*(v0[49] + 104))(v0[54]);
        v291 = OUTLINED_FUNCTION_31_0();
        v23(v291);
LABEL_60:
        v205 = v0[67];
        v206 = v0[54];
        v207 = v0[48];
        OUTLINED_FUNCTION_70_5();
        sub_1DC374BAC(v208, v209);
        OUTLINED_FUNCTION_31_0();
        v210 = sub_1DC5176CC();
        v211 = v0[67];
        if (v210)
        {
          v212 = v0[68];
          OUTLINED_FUNCTION_226(v0[70]);
          v213 = OUTLINED_FUNCTION_56_0();
          v23(v213);
          v214 = OUTLINED_FUNCTION_63_0();
          v23(v214);
          OUTLINED_FUNCTION_0_27();
          sub_1DC3740D4();
          v215 = v21;
        }

        else
        {
          v216 = v0[73];
          v217 = v0[54];
          v219 = v0[50];
          v218 = v0[51];
          v220 = v0[48];
          (v0[72])(v0[39], v0[71], v0[36]);
          v221 = OUTLINED_FUNCTION_62_2();
          (v10)(v221);
          v222 = OUTLINED_FUNCTION_29_0();
          (v10)(v222);
          v223 = sub_1DC516F6C();
          v308 = sub_1DC517B8C();
          os_log_type_enabled(v223, v308);
          OUTLINED_FUNCTION_162_2();
          v225 = v0[50];
          v224 = v0[51];
          v227 = v0[48];
          v226 = v0[49];
          v228 = v0[39];
          OUTLINED_FUNCTION_111_0();
          if (v229)
          {
            v230 = OUTLINED_FUNCTION_140();
            v332[0] = OUTLINED_FUNCTION_143();
            *v230 = 136315394;
            v297 = v217;
            v302 = v70;
            v231 = v23;
            v232 = sub_1DC32B2D8();
            v234 = v233;
            v235 = OUTLINED_FUNCTION_12_3();
            v231(v235);
            sub_1DC291244(v232, v234, v332);
            OUTLINED_FUNCTION_168();
            OUTLINED_FUNCTION_225_0();
            OUTLINED_FUNCTION_141_1();
            v236 = OUTLINED_FUNCTION_54_2();
            v231(v236);
            v237 = OUTLINED_FUNCTION_31_0();
            sub_1DC291244(v237, v238, v239);
            OUTLINED_FUNCTION_168();
            *(v230 + 14) = v224;
            OUTLINED_FUNCTION_177_0(&dword_1DC287000, v240, v241, "Intelligence Flow is not enabled. Post experiment decision: %s, updated to: %s");
            OUTLINED_FUNCTION_224_0();
            OUTLINED_FUNCTION_66();
            OUTLINED_FUNCTION_58();

            v242 = OUTLINED_FUNCTION_30_9();
            v243(v242);
            v244 = OUTLINED_FUNCTION_192_0();
            v231(v244);
            v245 = OUTLINED_FUNCTION_205_0();
            v231(v245);
            OUTLINED_FUNCTION_0_27();
            sub_1DC3740D4();
            sub_1DC2AAF50(v302, &qword_1ECC7BFD0, &unk_1DC522550);
            OUTLINED_FUNCTION_2_17();
LABEL_73:
            sub_1DC3740D4();
            v105 = v0[54];
            goto LABEL_74;
          }

          v269 = OUTLINED_FUNCTION_54_2();
          v23(v269);
          v270 = OUTLINED_FUNCTION_12_3();
          v23(v270);
          v271 = OUTLINED_FUNCTION_30_9();
          v272(v271);
          v273 = OUTLINED_FUNCTION_192_0();
          v23(v273);
          v274 = OUTLINED_FUNCTION_205_0();
          v23(v274);
          OUTLINED_FUNCTION_0_27();
          sub_1DC3740D4();
          v215 = v70;
        }

        sub_1DC2AAF50(v215, &qword_1ECC7BFD0, &unk_1DC522550);
        OUTLINED_FUNCTION_2_17();
        goto LABEL_73;
      }
    }

    (*(v0[49] + 104))(v0[54], v198, v0[48]);
    goto LABEL_60;
  }

  v292 = v100;
  v296 = v70;
  v293 = v23;
  v140 = v0[53];
  v141 = v0[48];
  v142 = v0[49];
  v330 = v0;
  v143 = v0[16];
  (*(v142 + 96))(v140, v141);
  v144 = 0;
  result = *v140;
  v324 = *(*v140 + 16);
  v309 = *MEMORY[0x1E69D0330];
  v301 = MEMORY[0x1E69E7CC0];
  v312 = *v140;
  while (1)
  {
    if (v324 == v144)
    {
      v0 = v330;
      v199 = v330[54];
      v21 = v330[52];
      v201 = v330[48];
      v200 = v330[49];

      *v21 = v301;
      (*(v200 + 104))(v21, v292, v201);
      v202 = *(v200 + 32);
      v203 = OUTLINED_FUNCTION_42_2();
      v204(v203);
      v23 = v293;
      v70 = v296;
      goto LABEL_60;
    }

    if (v144 >= *(result + 16))
    {
      break;
    }

    v147 = v330[18];
    v146 = v330[19];
    v148 = v330[15];
    v149 = *(v143 + 80);
    OUTLINED_FUNCTION_190();
    v151 = *(v143 + 72);
    v152 = *(v143 + 16);
    (v152)(v146, v73 + v150 + v151 * v144, v148);
    OUTLINED_FUNCTION_77_3();
    v152();
    v153 = *(v143 + 88);
    v154 = OUTLINED_FUNCTION_54_2();
    v156 = v155(v154);
    v157 = *(v143 + 8);
    v159 = v330[18];
    v158 = v330[19];
    if (v156 == v309)
    {
      v163 = v144;
      v164 = v330[17];
      v165 = v330[15];
      v166 = OUTLINED_FUNCTION_54_2();
      v157(v166);
      v167 = *(v143 + 32);
      OUTLINED_FUNCTION_77_3();
      v167();
      v168 = v301;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v332[0] = v301;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DC2AA348(0, *(v301 + 16) + 1, 1);
        v168 = v332[0];
      }

      v171 = *(v168 + 16);
      v170 = *(v168 + 24);
      if (v171 >= v170 >> 1)
      {
        v174 = OUTLINED_FUNCTION_26(v170);
        sub_1DC2AA348(v174, v171 + 1, 1);
        v168 = v332[0];
      }

      v144 = v163 + 1;
      v172 = v330[17];
      v173 = v330[15];
      *(v168 + 16) = v171 + 1;
      v301 = v168;
      (v167)(v73 + v168 + v171 * v151, v172, v173);
      result = v312;
    }

    else
    {
      v160 = v330[15];
      v161 = OUTLINED_FUNCTION_113_0();
      v157(v161);
      v162 = OUTLINED_FUNCTION_54_2();
      v157(v162);
      ++v144;
      result = v312;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC370544()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);

  OUTLINED_FUNCTION_0_27();
  sub_1DC3740D4();
  sub_1DC2AAF50(v2, &qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_2_17();
  sub_1DC3740D4();
  v17 = *(v0 + 616);
  v4 = *(v0 + 552);
  v5 = *(v0 + 544);
  v6 = *(v0 + 536);
  v7 = *(v0 + 528);
  v8 = *(v0 + 520);
  v9 = *(v0 + 504);
  v10 = *(v0 + 512);
  v11 = *(v0 + 488);
  v12 = *(v0 + 496);
  v13 = *(v0 + 472);
  v14 = *(v0 + 480);
  OUTLINED_FUNCTION_26_9();

  OUTLINED_FUNCTION_2_2();

  return v15();
}

uint64_t sub_1DC370784(void *a1)
{
  v3 = type metadata accessor for NLRouterNLParseResponse(0);
  v4 = OUTLINED_FUNCTION_35(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  if (a1)
  {
    v7 = v1 + *(v3 + 20);
    sub_1DC5160EC();
    v8 = sub_1DC5160DC();

    *v1 = v8;
    sub_1DC374124();
    OUTLINED_FUNCTION_61();
    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v3);
  }

  else
  {
    OUTLINED_FUNCTION_19();

    return __swift_storeEnumTagSinglePayload(v13, v14, v15, v3);
  }
}

uint64_t sub_1DC370878()
{
  OUTLINED_FUNCTION_1_0();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = type metadata accessor for NLRouterServiceResponse(0);
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  v0[5] = OUTLINED_FUNCTION_118();
  v7 = sub_1DC516F7C();
  v0[6] = v7;
  OUTLINED_FUNCTION_52(v7);
  v0[7] = v8;
  v10 = *(v9 + 64);
  v0[8] = OUTLINED_FUNCTION_118();
  v11 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DC370940()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1DC29120C();
  v4 = OUTLINED_FUNCTION_8_4();
  v5(v4);
  v6 = sub_1DC516F6C();
  v7 = sub_1DC517B8C();
  if (OUTLINED_FUNCTION_82_3(v7))
  {
    v8 = OUTLINED_FUNCTION_35_8();
    OUTLINED_FUNCTION_81_2(v8);
    OUTLINED_FUNCTION_27_11();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_31();
  }

  v15 = v0[7];
  v14 = v0[8];
  v16 = v0[6];
  v17 = v0[3];

  v18 = *(v15 + 8);
  v19 = OUTLINED_FUNCTION_63_0();
  v20(v19);
  if (*(v17 + qword_1EDAC9458))
  {
    v21 = *(MEMORY[0x1E69E86C0] + 4);
    v22 = swift_task_alloc();
    v0[9] = v22;
    *v22 = v0;
    v22[1] = sub_1DC370B54;

    return MEMORY[0x1EEE6DA40]();
  }

  else
  {
    v23 = (v0[3] + qword_1EDAC9408);
    v24 = v23[4];
    OUTLINED_FUNCTION_121_1(v23, v23[3]);
    v25 = *(v24 + 16);
    OUTLINED_FUNCTION_6();
    v34 = v26 + *v26;
    v28 = *(v27 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_79_0();
    v0[10] = v29;
    *v29 = v30;
    v31 = OUTLINED_FUNCTION_35_11(v29);

    return v32(v31);
  }
}

uint64_t sub_1DC370B54()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DC370C38()
{
  v1 = (*(v0 + 24) + qword_1EDAC9408);
  v2 = v1[4];
  OUTLINED_FUNCTION_121_1(v1, v1[3]);
  v3 = *(v2 + 16);
  OUTLINED_FUNCTION_6();
  v12 = v4 + *v4;
  v6 = *(v5 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_79_0();
  *(v0 + 80) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_35_11(v7);

  return v10(v9);
}

uint64_t sub_1DC370D38()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_38();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC370E34()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[2];
  v4 = sub_1DC5157EC();
  OUTLINED_FUNCTION_35(v4);
  (*(v5 + 16))(v3, v2);
  sub_1DC3740D4();

  OUTLINED_FUNCTION_2_2();

  return v6();
}

uint64_t sub_1DC370EFC()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[8];
  v2 = v0[5];

  OUTLINED_FUNCTION_2_2();
  v4 = v0[11];

  return v3();
}

void sub_1DC370F64()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v150 = v4;
  v149 = sub_1DC515DFC();
  v5 = OUTLINED_FUNCTION_0(v149);
  v147 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v139 = v10 - v9;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D0, &qword_1DC522FB0);
  OUTLINED_FUNCTION_35(v146);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  v148 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  v16 = OUTLINED_FUNCTION_10(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v151 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  OUTLINED_FUNCTION_10(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25();
  v158 = v26;
  OUTLINED_FUNCTION_12();
  v162 = sub_1DC51711C();
  v27 = OUTLINED_FUNCTION_0(v162);
  v155 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_62();
  v157 = v32;
  OUTLINED_FUNCTION_12();
  v156 = sub_1DC516FCC();
  v33 = OUTLINED_FUNCTION_0(v156);
  v161 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_23_1();
  v153 = v38;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_153();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_10(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_25();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFE0, &unk_1DC5253A0);
  OUTLINED_FUNCTION_10(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12();
  v48 = sub_1DC51620C();
  v49 = OUTLINED_FUNCTION_0(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_1();
  v56 = v55 - v54;
  v57 = *(v0 + qword_1EDAC9428 + 24);
  v58 = *(v0 + qword_1EDAC9428 + 32);
  OUTLINED_FUNCTION_121_1((v0 + qword_1EDAC9428), v57);
  v59 = (*(v58 + 32))(v3, v57, v58);
  v60 = v56;
  v61 = *(v0 + qword_1EDAC93F0 + 32);
  OUTLINED_FUNCTION_121_1((v0 + qword_1EDAC93F0), *(v0 + qword_1EDAC93F0 + 24));
  (*(v51 + 104))(v60, *MEMORY[0x1E69D07B8], v48);
  OUTLINED_FUNCTION_23_13();
  (*(v51 + 8))(v60, v48);
  if (v165)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEA8, &qword_1DC52A880);
    if (OUTLINED_FUNCTION_83_2())
    {
      v62 = v163;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DC2AAF50(v164, &qword_1ECC7D3F0, &qword_1DC5238B0);
  }

  v62 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v145 = v62;
  OUTLINED_FUNCTION_78_5();
  v63 = *MEMORY[0x1E69D07C8];
  v64 = OUTLINED_FUNCTION_31_11();
  v65(v64);
  OUTLINED_FUNCTION_23_13();
  v66 = OUTLINED_FUNCTION_97_3();
  v67(v66);
  if (v165)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEA8, &qword_1DC52A880);
    if (OUTLINED_FUNCTION_83_2())
    {
      v68 = v163;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1DC2AAF50(v164, &qword_1ECC7D3F0, &qword_1DC5238B0);
  }

  v68 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v144 = v68;
  OUTLINED_FUNCTION_78_5();
  v69 = *MEMORY[0x1E69D07F0];
  v70 = OUTLINED_FUNCTION_31_11();
  v71(v70);
  OUTLINED_FUNCTION_23_13();
  v72 = OUTLINED_FUNCTION_97_3();
  v73(v72);
  if (!v165)
  {
    sub_1DC2AAF50(v164, &qword_1ECC7D3F0, &qword_1DC5238B0);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCF0, &unk_1DC5253B0);
  if ((OUTLINED_FUNCTION_83_2() & 1) == 0)
  {
LABEL_15:
    v74 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v74 = v163;
LABEL_16:
  v143 = v74;
  OUTLINED_FUNCTION_78_5();
  v75 = *MEMORY[0x1E69D07D0];
  v76 = OUTLINED_FUNCTION_31_11();
  v77(v76);
  OUTLINED_FUNCTION_23_13();
  v78 = OUTLINED_FUNCTION_97_3();
  v79(v78);
  if (v165)
  {
    sub_1DC5167EC();
    swift_dynamicCast();
    v80 = OUTLINED_FUNCTION_184_0();
  }

  else
  {
    sub_1DC2AAF50(v164, &qword_1ECC7D3F0, &qword_1DC5238B0);
    sub_1DC5167EC();
    OUTLINED_FUNCTION_19();
  }

  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  OUTLINED_FUNCTION_78_5();
  v84 = *MEMORY[0x1E69D07E8];
  v85 = OUTLINED_FUNCTION_31_11();
  v86(v85);
  OUTLINED_FUNCTION_23_13();
  v87 = OUTLINED_FUNCTION_97_3();
  v88(v87);
  if (v165)
  {
    sub_1DC51190C();
    swift_dynamicCast();
    v89 = OUTLINED_FUNCTION_184_0();
  }

  else
  {
    sub_1DC2AAF50(v164, &qword_1ECC7D3F0, &qword_1DC5238B0);
    sub_1DC51190C();
    OUTLINED_FUNCTION_19();
  }

  __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
  type metadata accessor for SiriReferenceResolutionProxy();
  sub_1DC3107D4();
  v142 = v93;
  v94 = 0;
  v159 = *(v59 + 16);
  v95 = v156;
  v152 = (v161 + 32);
  v96 = (v161 + 8);
  v154 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v159 == v94)
    {

      v108 = *(v154 + 16);
      if (v108)
      {
        v164[0] = MEMORY[0x1E69E7CC0];
        sub_1DC324248();
        v109 = v164[0];
        v110 = *(v161 + 80);
        OUTLINED_FUNCTION_24();
        v112 = v154 + v111;
        v160 = *(v113 + 72);
        v114 = *(v113 + 16);
        do
        {
          v115 = OUTLINED_FUNCTION_115();
          v114(v115);
          sub_1DC516FBC();
          v116 = *v96;
          v117 = OUTLINED_FUNCTION_43();
          v118(v117);
          v164[0] = v109;
          v120 = *(v109 + 16);
          v119 = *(v109 + 24);
          if (v120 >= v119 >> 1)
          {
            OUTLINED_FUNCTION_26(v119);
            sub_1DC324248();
            v109 = v164[0];
          }

          *(v109 + 16) = v120 + 1;
          v121 = *(v155 + 80);
          OUTLINED_FUNCTION_24();
          (*(v123 + 32))(v109 + v122 + *(v123 + 72) * v120, v141, v162);
          v112 += v160;
          --v108;
        }

        while (v108);
      }

      else
      {

        v109 = MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_36_7();
      (*(v147 + 104))(v151, *MEMORY[0x1E69D04C8], v149);
      OUTLINED_FUNCTION_61();
      __swift_storeEnumTagSinglePayload(v124, v125, v126, v149);
      v127 = *(v146 + 48);
      sub_1DC2DB2AC();
      sub_1DC2DB2AC();
      OUTLINED_FUNCTION_39(v148, 1, v149);
      if (v130)
      {
        sub_1DC2AAF50(v151, &qword_1ECC7C1D8, &qword_1DC529390);
        OUTLINED_FUNCTION_39(v148 + v127, 1, v149);
        v128 = v150;
        if (v130)
        {
          sub_1DC2AAF50(v148, &qword_1ECC7C1D8, &qword_1DC529390);
          v129 = 1;
LABEL_49:
          sub_1DC2DB2AC();
          sub_1DC43243C(v145, v144, v143, v142, v109, v129 & 1, v128);
          type metadata accessor for NLRouterTurnContext(0);
          OUTLINED_FUNCTION_61();
          __swift_storeEnumTagSinglePayload(v135, v136, v137, v138);
          OUTLINED_FUNCTION_34();
          return;
        }
      }

      else
      {
        sub_1DC2DB2AC();
        OUTLINED_FUNCTION_39(v148 + v127, 1, v149);
        if (!v130)
        {
          (*(v147 + 32))(v139, v148 + v127, v149);
          sub_1DC374BAC(&qword_1ECC7BB50, MEMORY[0x1E69D04D0]);
          v129 = sub_1DC5176CC();
          v134 = *(v147 + 8);
          v134(v139, v149);
          sub_1DC2AAF50(v151, &qword_1ECC7C1D8, &qword_1DC529390);
          v134(v140, v149);
          sub_1DC2AAF50(v148, &qword_1ECC7C1D8, &qword_1DC529390);
          v128 = v150;
          goto LABEL_49;
        }

        sub_1DC2AAF50(v151, &qword_1ECC7C1D8, &qword_1DC529390);
        v131 = *(v147 + 8);
        v132 = OUTLINED_FUNCTION_220_0();
        v133(v132);
        v128 = v150;
      }

      sub_1DC2AAF50(v148, &qword_1ECC7C1D0, &qword_1DC522FB0);
      v129 = 0;
      goto LABEL_49;
    }

    if (v94 >= *(v59 + 16))
    {
      break;
    }

    v97 = (*(v161 + 80) + 32) & ~*(v161 + 80);
    v98 = *(v161 + 72);
    (*(v161 + 16))(v1, v59 + v97 + v98 * v94, v95);
    v99 = v95;
    sub_1DC516FBC();
    sub_1DC5170BC();
    (*(v155 + 8))(v157, v162);
    v100 = sub_1DC5172AC();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v158, 1, v100);
    sub_1DC2AAF50(v158, &qword_1ECC7BFF8, &qword_1DC522580);
    if (EnumTagSinglePayload == 1)
    {
      (*v96)(v1, v99);
      ++v94;
      v95 = v99;
    }

    else
    {
      v102 = *v152;
      (*v152)(v153, v1, v99);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v104 = v154;
      v164[0] = v154;
      if (isUniquelyReferenced_nonNull_native)
      {
        v95 = v99;
      }

      else
      {
        v105 = *(v154 + 16);
        sub_1DC373770();
        v95 = v156;
        v104 = v164[0];
      }

      v107 = *(v104 + 16);
      v106 = *(v104 + 24);
      if (v107 >= v106 >> 1)
      {
        OUTLINED_FUNCTION_26(v106);
        sub_1DC373770();
        v95 = v156;
        v104 = v164[0];
      }

      ++v94;
      *(v104 + 16) = v107 + 1;
      v154 = v104;
      v102(v104 + v97 + v107 * v98, v153, v95);
    }
  }

  __break(1u);
}

void sub_1DC371CE8()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = type metadata accessor for NLRouterBridgeSubComponentLogger(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v8 = (v7 - v6);
  v9 = *(v0 + qword_1EDAC9440);
  sub_1DC5169DC();
  v10 = v2[2];
  v11 = v2[3];
  v12 = *(*v9 + 104);
  OUTLINED_FUNCTION_136_0();
  v13();

  (*(*v2 + 320))(v14);
  sub_1DC5169DC();
  v15 = *v8;
  v16 = *(v4 + 32);
  v17 = *(*v9 + 128);
  OUTLINED_FUNCTION_136_0();
  v18();

  OUTLINED_FUNCTION_71_5();
  sub_1DC3740D4();
  OUTLINED_FUNCTION_34();
}

BOOL sub_1DC371E44(uint64_t a1)
{
  v1 = (*(*a1 + 200))();
  if (v1)
  {
  }

  return v1 != 0;
}

void sub_1DC371EA0()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = type metadata accessor for NLRouterBridgeSubComponentLogger(0);
  v4 = OUTLINED_FUNCTION_35(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_117_2();
  if ((*(v10 + 176))())
  {
    OUTLINED_FUNCTION_34();
  }

  else
  {
    sub_1DC5169DC();
    v13 = *(v2 + 16);
    v14 = *(v2 + 24);
    v15 = *(v0 + qword_1EDAC9440);
    OUTLINED_FUNCTION_117_2();
    v18 = (*(v16 + 336))(v25);
    if (*(v17 + 4) == 1)
    {
    }

    else
    {
      v19 = v17;
      OUTLINED_FUNCTION_1_18();
      sub_1DC374080();
      v20 = *(v3 + 24);
      v21 = *(*v15 + 144);
      OUTLINED_FUNCTION_136_0();
      v22();

      v23 = sub_1DC510B6C();
      OUTLINED_FUNCTION_0_2(v23);
      (*(v24 + 8))(v9 + v20);
      *(v19 + 4) = 1;
    }

    v18(v25, 0);
    OUTLINED_FUNCTION_34();
  }
}

void sub_1DC37207C()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v5 = sub_1DC516F7C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_153();
  if (![objc_opt_self() isInternalInstall])
  {
    goto LABEL_32;
  }

  v16 = (*(*v4 + 368))();
  if (!v16)
  {
    goto LABEL_32;
  }

  v17 = *(v0 + qword_1EDAC93D0 + 8);
  if (v17)
  {
    v59 = v16;
    v60 = v8;
    v58 = *(v0 + qword_1EDAC93D0);
    v18 = objc_allocWithZone(MEMORY[0x1E695E000]);

    v19 = sub_1DC346A1C(0xD000000000000013, 0x80000001DC540DC0);
    if (!v19)
    {
LABEL_12:

      v28 = sub_1DC29120C();
      (*(v60 + 16))(v13, v28, v5);
      v29 = sub_1DC516F6C();
      v30 = sub_1DC517B9C();
      if (OUTLINED_FUNCTION_25_0(v30))
      {
        *OUTLINED_FUNCTION_35_8() = 0;
        OUTLINED_FUNCTION_13_7(&dword_1DC287000, v31, v30, "NLRouter addview disabled.");
        OUTLINED_FUNCTION_14_5();
      }

      else
      {
      }

      (*(v60 + 8))(v13, v5);
      goto LABEL_32;
    }

    v20 = v19;
    v21 = sub_1DC5176FC();
    v57 = v20;
    v22 = [v20 stringForKey_];

    if (!v22)
    {
LABEL_11:

      goto LABEL_12;
    }

    sub_1DC51772C();

    OUTLINED_FUNCTION_29_0();
    v23 = sub_1DC51778C();
    v25 = v24;

    if (v23 == 0x656C62616E65 && v25 == 0xE600000000000000)
    {
    }

    else
    {
      v27 = sub_1DC51825C();

      if ((v27 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v34 = sub_1DC29120C();
    v55 = *(v60 + 16);
    v56 = v34;
    v55(v2);
    v35 = sub_1DC516F6C();
    v36 = sub_1DC517B8C();
    if (OUTLINED_FUNCTION_25_0(v36))
    {
      *OUTLINED_FUNCTION_35_8() = 0;
      OUTLINED_FUNCTION_13_7(&dword_1DC287000, v37, v36, "NLRouter addview error enabled with user defaults");
      OUTLINED_FUNCTION_14_5();
    }

    v38 = *(v60 + 8);
    v38(v2, v5);
    if (v58 == v4[2] && v17 == v4[3])
    {
    }

    else
    {
      v40 = sub_1DC51825C();

      if ((v40 & 1) == 0)
      {

LABEL_32:
        OUTLINED_FUNCTION_34();
        return;
      }
    }

    (v55)(v1, v56, v5);
    v41 = sub_1DC516F6C();
    v42 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_25_0(v42))
    {
      *OUTLINED_FUNCTION_35_8() = 0;
      OUTLINED_FUNCTION_13_7(&dword_1DC287000, v43, v42, "Error occured on internal build. Proceed to show error to user");
      OUTLINED_FUNCTION_14_5();
    }

    v44 = OUTLINED_FUNCTION_77_1();
    (v38)(v44);
    swift_getErrorValue();
    sub_1DC5182AC();
    sub_1DC5169DC();
    v46 = v45;
    v47 = OUTLINED_FUNCTION_63_0();
    v50 = sub_1DC37C070(v47, v48, v49, v46);

    sub_1DC5169BC();
    v61[4] = sub_1DC3725F0;
    v61[5] = 0;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 1107296256;
    v61[2] = sub_1DC37278C;
    v61[3] = &block_descriptor_67;
    v51 = _Block_copy(v61);
    v52 = v50;
    v53 = OUTLINED_FUNCTION_60_7();
    [v53 v54];

    _Block_release(v51);
    swift_unknownObjectRelease();

    goto LABEL_32;
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3725F0()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v2 = sub_1DC516F7C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  if (v1)
  {
    v8 = v1;
    sub_1DC29120C();
    v9 = *(v5 + 16);
    v10 = OUTLINED_FUNCTION_60_7();
    v11(v10);
    v12 = v1;
    v13 = sub_1DC516F6C();
    v14 = sub_1DC517BAC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_63();
      v16 = OUTLINED_FUNCTION_249();
      *v15 = 138543362;
      v17 = v1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1DC287000, v13, v14, "Error sending generic mini error addview %{public}@", v15, 0xCu);
      sub_1DC2AAF50(v16, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_67();
    }

    else
    {
    }

    v19 = *(v5 + 8);
    v20 = OUTLINED_FUNCTION_31_0();
    v21(v20);
  }

  OUTLINED_FUNCTION_154();
}

void sub_1DC37278C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1DC3728A8()
{
  v1 = *(v0 + qword_1ECC7BBE0);

  v2 = qword_1EDAC93E0;
  v3 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(v0 + qword_1EDAC93C0 + 8);

  sub_1DC2AAF50(v0 + qword_1EDAC93C8, &qword_1ECC7C1D8, &qword_1DC529390);
  v6 = *(v0 + qword_1EDAC93D0 + 8);

  sub_1DC2AAF50(v0 + qword_1EDAC93D8, &unk_1ECC7D340, &qword_1DC525380);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC9400));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC9408));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC9410));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC93F8));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC93F0));
  v7 = qword_1EDAC9460;
  v8 = sub_1DC51735C();
  OUTLINED_FUNCTION_0_2(v8);
  (*(v9 + 8))(v0 + v7);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC9428));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC9430));
  v10 = *(v0 + qword_1EDAC9438);

  v11 = *(v0 + qword_1EDAC9440);

  v12 = *(v0 + qword_1EDAC9458);
}

uint64_t sub_1DC372A20()
{
  v0 = sub_1DC5169FC();
  v1 = *(v0 + qword_1ECC7BBE0);

  v2 = qword_1EDAC93E0;
  v3 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(v0 + qword_1EDAC93C0 + 8);

  sub_1DC2AAF50(v0 + qword_1EDAC93C8, &qword_1ECC7C1D8, &qword_1DC529390);
  v6 = *(v0 + qword_1EDAC93D0 + 8);

  sub_1DC2AAF50(v0 + qword_1EDAC93D8, &unk_1ECC7D340, &qword_1DC525380);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC9400));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC9408));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC9410));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC93F8));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC93F0));
  v7 = qword_1EDAC9460;
  v8 = sub_1DC51735C();
  OUTLINED_FUNCTION_0_2(v8);
  (*(v9 + 8))(v0 + v7);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC9428));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC9430));
  v10 = *(v0 + qword_1EDAC9438);

  v11 = *(v0 + qword_1EDAC9440);

  v12 = *(v0 + qword_1EDAC9458);

  return v0;
}

uint64_t sub_1DC372B98()
{
  v0 = sub_1DC372A20();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DC372BEC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1DC3635E0();
}

uint64_t sub_1DC372C0C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1DC3633EC();
}

uint64_t sub_1DC372C2C(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_27_5();

  return MEMORY[0x1EEE6BDC0](v4, v5, v6);
}

size_t sub_1DC372C78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

uint64_t sub_1DC372D6C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
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

unint64_t sub_1DC372E38(unint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    return sub_1DC372E4C(a1);
  }

  return a1;
}

id sub_1DC372E4C(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    a1 &= ~0x8000000000000000;
  }

  return a1;
}

void sub_1DC372E5C(unint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    sub_1DC372E70(a1);
  }
}

void sub_1DC372E70(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    a1 &= ~0x8000000000000000;
  }
}

uint64_t sub_1DC372EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLRouterBridgeSubComponentLogger(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC372F04()
{
  OUTLINED_FUNCTION_42_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_35(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_43();
  v7(v6);
  return v0;
}

uint64_t sub_1DC372F7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEF0, &qword_1DC525838);
  v39 = a2;
  result = sub_1DC51803C();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_1DC2A3304(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v39 & 1) == 0)
    {
      v24 = v20[1];

      v25 = v23;
    }

    v26 = *(v8 + 40);
    sub_1DC5182FC();
    sub_1DC51769C();
    result = sub_1DC51833C();
    v27 = -1 << *(v8 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v8 + 48) + 16 * v30);
    *v35 = v21;
    v35[1] = v22;
    *(*(v8 + 56) + 8 * v30) = v23;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v15 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1DC37321C(uint64_t a1, uint64_t a2, uint64_t a3)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEF8, &qword_1DC525840);
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

uint64_t sub_1DC373358()
{
  OUTLINED_FUNCTION_41_5();
  v2 = sub_1DC516F5C();
  OUTLINED_FUNCTION_10(v2);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1DC29F120;

  return sub_1DC368FFC();
}

uint64_t sub_1DC37342C(uint64_t a1)
{
  v2 = sub_1DC516DAC();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEC8, &qword_1DC5257C8);
  result = sub_1DC517F0C();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = *(v9 + 40);
    sub_1DC374BAC(&qword_1ECC7BAD0, MEMORY[0x1E69A9158]);
    v16 = sub_1DC51767C();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, *(v9 + 48) + v18 * v13, v2);
      sub_1DC374BAC(&qword_1ECC7BAC8, MEMORY[0x1E69A9158]);
      v23 = sub_1DC5176CC();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v9 + 48) + v18 * v13, v25, v2);
    v26 = *(v9 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_1DC373770()
{
  v1 = *v0;
  sub_1DC37424C();
  *v0 = v2;
}

unint64_t sub_1DC3737CC()
{
  result = qword_1ECC7CEB0;
  if (!qword_1ECC7CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CEB0);
  }

  return result;
}

unint64_t sub_1DC373824()
{
  result = qword_1ECC7CEB8;
  if (!qword_1ECC7CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CEB8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NLRouterBridgeError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_7_6(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NLRouterBridgeSubComponentError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_41_0(v8);
}

_BYTE *storeEnumTagSinglePayload for NLRouterBridgeSubComponentError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          result = OUTLINED_FUNCTION_7_6(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

void sub_1DC373AF0()
{
  v0 = sub_1DC510C8C();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1DC373CE0(319, &qword_1ECC7BB48, MEMORY[0x1E69D04D0]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1DC373CE0(319, &qword_1ECC7BB38, MEMORY[0x1E69D0568]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_1DC51735C();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_initClassMetadata2();
        }
      }
    }
  }
}

void sub_1DC373CE0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1DC373D54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_41_0(*a1 + 126);
    }

    v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
    if (v3 >= 0x7E)
    {
      return OUTLINED_FUNCTION_41_0(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_41_0(v3);
}

void *sub_1DC373DA4(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      return OUTLINED_FUNCTION_179_0(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

uint64_t sub_1DC373E24()
{
  result = sub_1DC5162DC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for NLRouterBridgeSubComponentLogger(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1DC373F50()
{
  type metadata accessor for ORCHSchemaORCHNLRouterBridgeSubComponent();
  if (v0 <= 0x3F)
  {
    sub_1DC510B6C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ORCHSchemaORCHNLRouterBridgeSubComponent()
{
  if (!qword_1ECC7B938)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECC7B938);
    }
  }
}

unint64_t sub_1DC37402C()
{
  result = qword_1ECC7BCE0;
  if (!qword_1ECC7BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BCE0);
  }

  return result;
}

uint64_t sub_1DC374080()
{
  v1 = OUTLINED_FUNCTION_5_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_35(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_43();
  v7(v6);
  return v0;
}

uint64_t sub_1DC3740D4()
{
  v1 = OUTLINED_FUNCTION_155();
  v3 = v2(v1);
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1DC374124()
{
  v1 = OUTLINED_FUNCTION_5_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_35(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_43();
  v7(v6);
  return v0;
}

uint64_t sub_1DC374178()
{
  OUTLINED_FUNCTION_41_5();
  v2 = OUTLINED_FUNCTION_155();
  v3 = type metadata accessor for NLRouterServiceRequest(v2);
  OUTLINED_FUNCTION_10(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_79_0();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1DC29F120;

  return sub_1DC370878();
}

void sub_1DC37424C()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = v7(0);
  OUTLINED_FUNCTION_52(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_19:
  v24 = *(*(v7(0) - 8) + 80);
  OUTLINED_FUNCTION_24();
  if (v10)
  {
    sub_1DC372D6C(v8 + v25, v14, v21 + v25, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3743F8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1DC517EAC();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1DC374438(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1DC374488(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1DC516DAC();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v33 - v13;
  v15 = a4 + 56;
  v14 = *(a4 + 56);
  v39 = -1 << *(a4 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!a2)
  {
    v20 = 0;
    result = 0;
LABEL_22:
    v32 = ~v39;
    *a1 = a4;
    a1[1] = v15;
    a1[2] = v32;
    a1[3] = v20;
    a1[4] = v17;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a4 + 56;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = result;
    while (v19 < result)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            result = v19;
            a1 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = a4;
      v25 = *(a4 + 48);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42);
      v30 = *(v26 + 32);
      v31 = v40;
      v30(v40, v29, v27);
      v30(a2, v31, v27);
      result = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        a1 = v34;
        v15 = v35;
        a4 = v24;
        goto LABEL_22;
      }

      a2 += v28;
      v20 = v22;
      a4 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC374720(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  swift_getKeyPath();

  sub_1DC51799C();
  return sub_1DC514FDC();
}

uint64_t sub_1DC3747B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  sub_1DC51799C();
  return sub_1DC51590C();
}

void sub_1DC37480C()
{
  v1 = sub_1DC516F5C();
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_24();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  sub_1DC36B0C0();
}

void sub_1DC374868()
{
  v1 = sub_1DC516F5C();
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];

  sub_1DC36B30C();
}

uint64_t sub_1DC3748CC()
{
  OUTLINED_FUNCTION_41_5();
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1DC29F200;

  return sub_1DC36C4CC();
}

void sub_1DC374980()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DC367F8C();
}

uint64_t objectdestroy_76Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_37_3();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

void sub_1DC3749C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DC3678F8();
}

uint64_t sub_1DC3749CC()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DC29F200;

  return sub_1DC36B8E0();
}

uint64_t sub_1DC374AD0()
{
  MEMORY[0x1E1296060](v0[2], v0[3], v0[4], v0[5]);
  sub_1DC51586C();
  sub_1DC329208();
  return sub_1DC51585C();
}

uint64_t sub_1DC374B4C(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  swift_getKeyPath();

  return sub_1DC514FDC();
}

uint64_t sub_1DC374BAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DC374C14(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t OUTLINED_FUNCTION_86_3()
{
  v4 = v0[42];
  v5 = v0[39];
  v6 = v0[38];
  v7 = v0[37];
  v2 = v0[33];
  v8 = v0[30];
  v9 = v0[27];
}

uint64_t OUTLINED_FUNCTION_105_0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(*(v1 + 56) + ((a1 << 9) | (8 * __clz(__rbit64(v2)))));
}

void OUTLINED_FUNCTION_110_2()
{
  v1 = *(v0 - 416);
  v2 = *(v0 - 336);
  v3 = *(v0 - 360);
}

void OUTLINED_FUNCTION_111_0()
{
  v4 = v2[36];
  *(v3 - 144) = v2[37];
  *(v3 - 136) = v4;
  *(v3 - 128) = v0;
  v5 = v2[35];
  v6 = v2[32];
  *(v3 - 104) = v2[30];
  *(v3 - 96) = v1;
}

uint64_t OUTLINED_FUNCTION_123_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_127_1()
{
  *(v5 - 112) = *(v0 + v4);

  return sub_1DC37321C(v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_140_2()
{
}

double OUTLINED_FUNCTION_145_2(uint64_t a1, float a2)
{
  *a1 = a2;
  result = *(v3 + v2);
  *(a1 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_161_2()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[64];
  v5 = v0[60];
}

void OUTLINED_FUNCTION_162_2()
{
  v2 = v0[74];
  v3 = v0[70];
  v4 = v0[68];
  *(v1 - 120) = v0[67];
  *(v1 - 112) = v2;
}

char *OUTLINED_FUNCTION_170_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, unint64_t a10, uint64_t a11, void *a12)
{

  return sub_1DC365008(a1, a2, a3, a4, v12, 0, 0, 0, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_201(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

void OUTLINED_FUNCTION_210_0()
{
  v1 = v0[66];
  v3 = v0[67];
  v2 = v0[65];
}

void OUTLINED_FUNCTION_213_1()
{
  v1 = v0[62];
  v3 = v0[64];
  v2 = v0[60];
}

void OUTLINED_FUNCTION_223_0()
{
  v4 = v1[54];
  v3 = v1[55];
  v5 = v1[53];
}

uint64_t OUTLINED_FUNCTION_227()
{
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[5];
}

uint64_t sub_1DC37509C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a1;
  v85 = a2;
  v2 = sub_1DC5157EC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v80 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v79 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v78 = v76 - v9;
  v10 = sub_1DC51836C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v87 = v17 - v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF18, &qword_1DC525940);
  v18 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v20 = v76 - v19;
  v21 = sub_1DC51839C();
  v93 = OUTLINED_FUNCTION_0(v21);
  v94 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_1();
  v92 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF20, &qword_1DC525948);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  OUTLINED_FUNCTION_15();
  v95 = v29;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = v76 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = v76 - v34;
  v36 = sub_1DC516F5C();
  v37 = OUTLINED_FUNCTION_0(v36);
  v83 = v38;
  v84 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1();
  v43 = v42 - v41;
  v44 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v45 = sub_1DC2BE518();
  v46 = OUTLINED_FUNCTION_130();
  v82 = v43;
  sub_1DC2A2ED0("HeuristicRules.SuperSubscriptInUtteranceRule", 44, 2, v45, v46 & 1, v43);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC346758() & 1) == 0)
  {
    sub_1DC517B9C();
    v59 = sub_1DC2BE518();
    sub_1DC516F0C();

    __swift_storeEnumTagSinglePayload(v85, 1, 1, v2);
    v61 = v83;
    v60 = v84;
    v62 = v82;
    goto LABEL_26;
  }

  v76[1] = v44;
  v77 = v2;
  v47 = v81[1];
  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = *v81 & 0xFFFFFFFFFFFFLL;
  }

  v96 = *v81;
  v97 = v47;
  v98 = 0;
  v99 = v48;
  v91 = (v94 + 8);
  LODWORD(v94) = *MEMORY[0x1E69E77D0];
  v49 = (v13 + 104);
  v86 = (v13 + 32);
  v90 = (v13 + 8);

  v50 = v88;
  while (1)
  {
    while (1)
    {
      v51 = sub_1DC5178DC();
      if (!v52)
      {

        __swift_storeEnumTagSinglePayload(v85, 1, 1, v77);
        v61 = v83;
        v60 = v84;
        v62 = v82;
        goto LABEL_26;
      }

      if ((sub_1DC3758D4(v51, v52) & 0x100000000) != 0)
      {
        __swift_storeEnumTagSinglePayload(v35, 1, 1, v10);
      }

      else
      {
        v53 = v92;
        sub_1DC5183AC();
        sub_1DC51837C();
        (*v91)(v53, v93);
      }

      v54 = v95;
      (*v49)(v33, v94, v10);
      __swift_storeEnumTagSinglePayload(v33, 0, 1, v10);
      v55 = *(v50 + 48);
      sub_1DC375A68(v35, v20);
      sub_1DC375A68(v33, &v20[v55]);
      OUTLINED_FUNCTION_3_0(v20);
      if (v56)
      {
        break;
      }

      sub_1DC375A68(v20, v54);
      OUTLINED_FUNCTION_3_0(&v20[v55]);
      if (v56)
      {
        sub_1DC2BE530(v33, &qword_1ECC7CF20, &qword_1DC525948);
        sub_1DC2BE530(v35, &qword_1ECC7CF20, &qword_1DC525948);
        (*v90)(v54, v10);
        goto LABEL_17;
      }

      v57 = v87;
      (*v86)(v87, &v20[v55], v10);
      v89 = sub_1DC5176CC();
      v58 = *v90;
      (*v90)(v57, v10);
      sub_1DC2BE530(v33, &qword_1ECC7CF20, &qword_1DC525948);
      sub_1DC2BE530(v35, &qword_1ECC7CF20, &qword_1DC525948);
      v58(v95, v10);
      v50 = v88;
      sub_1DC2BE530(v20, &qword_1ECC7CF20, &qword_1DC525948);

      if (v89)
      {
        goto LABEL_22;
      }
    }

    sub_1DC2BE530(v33, &qword_1ECC7CF20, &qword_1DC525948);
    sub_1DC2BE530(v35, &qword_1ECC7CF20, &qword_1DC525948);
    OUTLINED_FUNCTION_3_0(&v20[v55]);
    if (v56)
    {
      break;
    }

LABEL_17:
    sub_1DC2BE530(v20, &qword_1ECC7CF18, &qword_1DC525940);
  }

  sub_1DC2BE530(v20, &qword_1ECC7CF20, &qword_1DC525948);

LABEL_22:

  v63 = type metadata accessor for HeuristicRoutingRequest(0);
  v64 = v80;
  v65 = *(v80 + 16);
  v66 = v78;
  v67 = v77;
  v65(v78, v81 + *(v63 + 20), v77);
  v68 = v79;
  v65(v79, v66, v67);
  v69 = (*(v64 + 88))(v68, v67);
  v70 = *(v64 + 8);
  v61 = v83;
  v60 = v84;
  v62 = v82;
  if (v69 == *MEMORY[0x1E69D02C8])
  {
    v70(v68, v67);
    v71 = v85;
    sub_1DC32CDF4();
    v70(v66, v67);
    v72 = v71;
    v73 = 0;
  }

  else
  {
    v70(v66, v67);
    v70(v68, v67);
    v72 = v85;
    v73 = 1;
  }

  __swift_storeEnumTagSinglePayload(v72, v73, 1, v67);
LABEL_26:
  v74 = sub_1DC2BE518();
  sub_1DC2B8848();

  return (*(v61 + 8))(v62, v60);
}

unint64_t sub_1DC3758D4(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1DC375AEC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = sub_1DC517F3C();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
        v10 = *(v17 + v6);
        if (*(v17 + v6) < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
LABEL_14:
              v10 = v8[1] & 0x3F | ((v10 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_15:
              v11 = v8[1];
              v12 = v8[2];
              v13 = ((v10 & 0xF) << 12) | ((v11 & 0x3F) << 6);
              goto LABEL_17;
            case 0x1Cu:
LABEL_16:
              v14 = v8[1];
              v15 = v8[2];
              v12 = v8[3];
              v13 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
LABEL_17:
              v10 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1DC517F8C();
        }

        v8 = (v7 + v6);
        v9 = *(v7 + v6);
        v10 = *(v7 + v6);
        if (v9 < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_14;
            case 0x1Bu:
              goto LABEL_15;
            case 0x1Cu:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v10 | ((v2 == 0) << 32);
}

uint64_t sub_1DC375A68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF20, &qword_1DC525948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DC375AEC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1DC375B8C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1DC375BFC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1DC375B8C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1DC375D08(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DC375BFC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v10 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 != v10)
      {

        return MEMORY[0x1EEE6A340]();
      }
    }

    else
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v9 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
        }

        else
        {
          v9 = result >> 16;
        }

        v5 = v9;
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_1DC517F8C();
          v5 = v12;
        }

        if (v5 != v7)
        {
          do
          {
            v8 = *(v6 + v5--) & 0xC0;
          }

          while (v8 == 128);
          ++v5;
        }
      }

      return v5 << 16;
    }
  }

  return result;
}

uint64_t sub_1DC375D08(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1DC51793C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1E12961B0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1DC375D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1DC5157EC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v32 = sub_1DC516F5C();
  v14 = OUTLINED_FUNCTION_0(v32);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v21 = sub_1DC2BE518();
  v22 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.EmoticonInUtteranceRule", 38, 2, v21, v22 & 1, v20);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC3465A8() & 1) == 0)
  {
    sub_1DC517B9C();
    v29 = sub_1DC2BE518();
    sub_1DC516F0C();

    goto LABEL_6;
  }

  if (!sub_1DC3760D8(*a1, *(a1 + 8)))
  {
LABEL_6:
    v28 = 1;
    v27 = v33;
    goto LABEL_7;
  }

  v23 = type metadata accessor for HeuristicRoutingRequest(0);
  v24 = *(v6 + 16);
  v24(v13, a1 + *(v23 + 20), v3);
  v24(v11, v13, v3);
  v25 = (*(v6 + 88))(v11, v3);
  v26 = *(v6 + 8);
  if (v25 != *MEMORY[0x1E69D02C8])
  {
    v26(v13, v3);
    v26(v11, v3);
    goto LABEL_6;
  }

  v26(v11, v3);
  v27 = v33;
  sub_1DC32CDF4();
  v26(v13, v3);
  v28 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v27, v28, 1, v3);
  v30 = sub_1DC2BE518();
  sub_1DC2B8848();

  return (*(v16 + 8))(v20, v32);
}

BOOL sub_1DC3760D8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DC51839C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v13 = v27 - v12;
  v14 = HIBYTE(a2) & 0xF;
  v27[0] = a1;
  v27[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v27[2] = 0;
  v27[3] = v14;
  v15 = (v11 + 8);

  while (1)
  {
    v16 = sub_1DC5178DC();
    v18 = v17;
    if (!v17)
    {
      break;
    }

    v19 = v16;
    v20 = sub_1DC3758D4(v16, v17);
    if ((v20 & 0x100000000) == 0)
    {
      v21 = v20;
      sub_1DC5183AC();
      v22 = sub_1DC51838C();
      (*v15)(v13, v4);
      if ((v22 & 1) != 0 && v21 >= 0x238D)
      {

        break;
      }
    }

    v23 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v23 = v19;
    }

    if (((v18 >> 60) & ((v19 & 0x800000000000000) == 0)) != 0)
    {
      v24 = 11;
    }

    else
    {
      v24 = 7;
    }

    if (sub_1DC376300(0xFuLL, v24 | (v23 << 16), v19, v18) < 2 || (sub_1DC3758D4(v19, v18) & 0x100000000) != 0)
    {
    }

    else
    {
      sub_1DC5183AC();
      v25 = sub_1DC51838C();

      (*v15)(v10, v4);
      if (v25)
      {
        break;
      }
    }
  }

  return v18 != 0;
}

unint64_t sub_1DC376300(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_1DC37650C(a1, a3, a4);
  result = sub_1DC37650C(a2, a3, a4);
  v9 = result >> 14;
  if (v7 >> 14 < result >> 14)
  {
    for (i = 0; ; ++i)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1DC5177DC();
        v7 = result;
      }

      else
      {
        v12 = v7 >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v22 + v12);
        }

        else
        {
          result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            result = sub_1DC517F8C();
          }

          v13 = *(result + v12);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        v7 = ((v12 + v15) << 16) | 5;
      }

      if (v9 <= v7 >> 14)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  if (v9 < v7 >> 14)
  {
    v11 = 0;
    while (!__OFSUB__(v11--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1DC5177EC();
        v7 = result;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v22 + (v7 >> 16) - 1) & 0xC0) == 0x80)
          {
            v20 = &v22 + (v7 >> 16) - 2;
            v19 = 1;
            do
            {
              ++v19;
              v21 = *v20--;
            }

            while ((v21 & 0xC0) == 0x80);
          }

          else
          {
            v19 = 1;
          }
        }

        else
        {
          result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            result = sub_1DC517F8C();
          }

          v17 = 0;
          do
          {
            v18 = *(result + (v7 >> 16) - 1 + v17--) & 0xC0;
          }

          while (v18 == 128);
          v19 = -v17;
        }

        v7 = (v7 - (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v9 >= v7 >> 14)
      {
        return v11;
      }
    }

    goto LABEL_38;
  }

  return 0;
}

unint64_t sub_1DC37650C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1DC3765AC(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1DC375BFC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1DC3765AC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1DC375D08(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC37661C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF28, &unk_1DC5259E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DC5259D0;
  v2 = nullsub_1(v0, v1);
  *(v0 + 56) = &type metadata for NLXOverridesExceptionsRule;
  *(v0 + 64) = &off_1F57FA970;
  nullsub_1(v2, v3);
  *(v0 + 96) = &type metadata for OverridesShortcutRule;
  *(v0 + 104) = &off_1F57FF8B0;
  *(v0 + 136) = &type metadata for GenAIRule;
  *(v0 + 144) = &off_1F57F63B0;
  v4 = swift_allocObject();
  *(v0 + 112) = v4;
  v6 = sub_1DC2EB9E4(v4, v5, v4 + 16);
  v8 = nullsub_1(v6, v7);
  *(v0 + 176) = &type metadata for DismissalRule;
  *(v0 + 184) = &off_1F57FBF20;
  v10 = nullsub_1(v8, v9);
  *(v0 + 216) = &type metadata for CrisisRule;
  *(v0 + 224) = &off_1F57F8CC8;
  v12 = nullsub_1(v10, v11);
  *(v0 + 256) = &type metadata for TwoStepCorrectionsRule;
  *(v0 + 264) = &off_1F57FC710;
  v14 = nullsub_1(v12, v13);
  *(v0 + 296) = &type metadata for UndoRule;
  *(v0 + 304) = &off_1F57FB210;
  v16 = nullsub_1(v14, v15);
  *(v0 + 336) = &type metadata for MultiTurnHeuristicRule;
  *(v0 + 344) = &off_1F57FA888;
  v18 = nullsub_1(v16, v17);
  *(v0 + 376) = &type metadata for SettingRule;
  *(v0 + 384) = &off_1F57F7618;
  v20 = nullsub_1(v18, v19);
  *(v0 + 416) = &type metadata for EmailRule;
  *(v0 + 424) = &off_1F57FA580;
  v22 = nullsub_1(v20, v21);
  *(v0 + 456) = &type metadata for CalendarRule;
  *(v0 + 464) = &off_1F57F9EE0;
  v24 = nullsub_1(v22, v23);
  *(v0 + 496) = &type metadata for PlannerDeleteRule;
  *(v0 + 504) = &off_1F57F9F10;
  v26 = nullsub_1(v24, v25);
  *(v0 + 536) = &type metadata for PlannerUpdateRule;
  *(v0 + 544) = &off_1F57FC058;
  nullsub_1(v26, v27);
  *(v0 + 576) = &type metadata for PlannerWritingToolsRule;
  *(v0 + 584) = &off_1F57F5828;
  v28 = sub_1DC375D84();
  *(v0 + 616) = &type metadata for SuperSubscriptInUtteranceRule;
  *(v0 + 624) = &off_1F57F9538;
  *(v0 + 592) = v28;
  v30 = nullsub_1(v28, v29);
  *(v0 + 656) = &type metadata for AppLaunchRule;
  *(v0 + 664) = &off_1F57F8DC0;
  v32 = nullsub_1(v30, v31);
  *(v0 + 696) = &type metadata for PhoneCallRule;
  *(v0 + 704) = &off_1F57FBF50;
  v34 = nullsub_1(v32, v33);
  *(v0 + 736) = &type metadata for AlarmRule;
  *(v0 + 744) = &off_1F57FB1E0;
  v36 = nullsub_1(v34, v35);
  *(v0 + 776) = &type metadata for TimerRule;
  *(v0 + 784) = &off_1F57F9798;
  v38 = nullsub_1(v36, v37);
  *(v0 + 816) = &type metadata for ReminderRule;
  *(v0 + 824) = &off_1F57F7CC8;
  v40 = nullsub_1(v38, v39);
  *(v0 + 856) = &type metadata for FindMyRule;
  *(v0 + 864) = &off_1F57FCA50;
  v42 = nullsub_1(v40, v41);
  *(v0 + 896) = &type metadata for PlannerPhotoRule;
  *(v0 + 904) = &off_1F57F7B28;
  v44 = nullsub_1(v42, v43);
  *(v0 + 936) = &type metadata for MessageRule;
  *(v0 + 944) = &off_1F57FB658;
  v46 = nullsub_1(v44, v45);
  *(v0 + 976) = &type metadata for AnnouncementRule;
  *(v0 + 984) = &off_1F57FB5F8;
  v48 = nullsub_1(v46, v47);
  *(v0 + 1016) = &type metadata for NoteRule;
  *(v0 + 1024) = &off_1F57F5FE8;
  v50 = nullsub_1(v48, v49);
  *(v0 + 1056) = &type metadata for TranslationRule;
  *(v0 + 1064) = &off_1F57FCEB0;
  v52 = nullsub_1(v50, v51);
  *(v0 + 1096) = &type metadata for MathRule;
  *(v0 + 1104) = &off_1F57FEA78;
  v54 = nullsub_1(v52, v53);
  *(v0 + 1136) = &type metadata for StopRecordingRule;
  *(v0 + 1144) = &off_1F57F7F38;
  v56 = nullsub_1(v54, v55);
  *(v0 + 1176) = &type metadata for HallucinationRule;
  *(v0 + 1184) = &off_1F57FC740;
  nullsub_1(v56, v57);
  *(v0 + 1216) = &type metadata for MDMRRewriteRule;
  *(v0 + 1224) = &off_1F57FA940;
  v58 = sub_1DC517B9C();
  sub_1DC297814();
  v59 = sub_1DC2BE518();
  if (os_log_type_enabled(v59, v58))
  {
    v60 = swift_slowAlloc();
    *v60 = 134217984;
    *(v60 + 4) = 30;
    _os_log_impl(&dword_1DC287000, v59, v58, "%ld routing heuristics rules selected for evaluation", v60, 0xCu);
    OUTLINED_FUNCTION_66();
  }

  return v0;
}

uint64_t sub_1DC376A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v81 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  v85 = v81 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1E0, qword_1DC52A6E0);
  OUTLINED_FUNCTION_10(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v81 - v18;
  v20 = type metadata accessor for NLRouterServiceRequest(0);
  v21 = OUTLINED_FUNCTION_10(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v27 = type metadata accessor for HeuristicRoutingRequest(0);
  v28 = (v27 - 8);
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1();
  v32 = v31 - v30;
  v33 = sub_1DC5157EC();
  v34 = OUTLINED_FUNCTION_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_8();
  v86 = v39 - v40;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = v81 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v46 = v81 - v45;
  sub_1DC3771F0(a1 + v28[7], a1, v81 - v45);
  sub_1DC2BB9D8(a1, v26, type metadata accessor for NLRouterServiceRequest);
  v87 = v36;
  v47 = *(v36 + 16);
  v83 = v46;
  v81[2] = v36 + 16;
  v81[1] = v47;
  v47(v44, v46, v33);
  v48 = (a1 + v28[8]);
  v49 = *v48;
  v50 = v48[1];
  sub_1DC28F358(a1 + v28[9], v93, &qword_1ECC7CF30, &unk_1DC525A00);
  sub_1DC28F358(a1 + v28[10], v19, &qword_1ECC7C1E0, qword_1DC52A6E0);
  v51 = a1 + v28[11];
  v52 = v85;
  sub_1DC28F358(v51, v85, &qword_1ECC7CD00, &unk_1DC5259F0);

  v53 = sub_1DC40C2CC();
  v82 = v44;
  sub_1DC40C2D4(v26, v44, v49, v50, v93, v19, v52, v53 & 1, v32);
  result = sub_1DC37661C();
  v55 = result;
  v56 = 0;
  v57 = *(result + 16);
  for (i = result + 32; ; i += 40)
  {
    if (v57 == v56)
    {

      sub_1DC517B9C();
      sub_1DC297814();
      v61 = sub_1DC2BE518();
      sub_1DC516F0C();

      OUTLINED_FUNCTION_2_18();
      (*(v87 + 8))(v83, v33);
      v62 = type metadata accessor for HeuristicRoutingResponse(0);
      return __swift_storeEnumTagSinglePayload(v84, 1, 1, v62);
    }

    if (v56 >= *(v55 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1DC28FB9C(i, v93);
    v59 = v94;
    v60 = v95;
    __swift_project_boxed_opaque_existential_1(v93, v94);
    (*(v60 + 8))(v32, v59, v60);
    if (__swift_getEnumTagSinglePayload(v8, 1, v33) != 1)
    {
      break;
    }

    v56 = (v56 + 1);
    sub_1DC28EB30(v8, &qword_1ECC7CA40, &unk_1DC5233A0);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v93);
  }

  v63 = v86;
  (*(v87 + 32))(v86, v8, v33);
  v64 = sub_1DC517B9C();
  sub_1DC297814();
  v65 = sub_1DC2BE518();
  sub_1DC28FB9C(v93, v92);
  if (os_log_type_enabled(v65, v64))
  {
    v66 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v91[0] = v85;
    *v66 = 136315394;
    sub_1DC28FB9C(v92, v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF38, &qword_1DC529D90);
    v67 = sub_1DC51777C();
    v69 = v68;
    __swift_destroy_boxed_opaque_existential_1Tm(v92);
    v70 = sub_1DC291244(v67, v69, v91);

    *(v66 + 4) = v70;
    *(v66 + 12) = 2080;
    swift_beginAccess();
    v71 = v82;
    OUTLINED_FUNCTION_11_14();
    v57();
    v72 = sub_1DC51777C();
    v60 = v73;
    v74 = sub_1DC291244(v72, v73, v91);

    *(v66 + 14) = v74;
    v63 = v86;
    _os_log_impl(&dword_1DC287000, v65, v64, "Rule-based Decision: %s is matched, returning: %s", v66, 0x16u);
    v64 = v85;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();

    OUTLINED_FUNCTION_9_16();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v92);
    OUTLINED_FUNCTION_9_16();
    v71 = v82;
    OUTLINED_FUNCTION_11_14();
  }

  swift_beginAccess();
  (v57)(v71, v63, v33);
  sub_1DC28FB9C(v93, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF38, &qword_1DC529D90);
  v92[0] = sub_1DC51777C();
  v92[1] = v75;
  v91[0] = 10536;
  v91[1] = 0xE200000000000000;
  v89 = 0;
  v90 = 0xE000000000000000;
  sub_1DC2A32B0();
  v76 = OUTLINED_FUNCTION_7_10();
  v78 = v77;

  sub_1DC40C468(v71, v76, v78, v64);
  OUTLINED_FUNCTION_2_18();
  v79 = *(v87 + 8);
  v79(v60, v33);
  v80 = type metadata accessor for HeuristicRoutingResponse(0);
  __swift_storeEnumTagSinglePayload(v64, 0, 1, v80);
  v79(v63, v33);
  return __swift_destroy_boxed_opaque_existential_1Tm(v93);
}

uint64_t sub_1DC3771F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a1;
  v78 = a3;
  v77 = sub_1DC5157EC();
  v4 = OUTLINED_FUNCTION_0(v77);
  v79 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v74 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v73 - v11;
  v12 = type metadata accessor for NLRouterTurnContext(0);
  v13 = OUTLINED_FUNCTION_35(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC0, &unk_1DC522540);
  OUTLINED_FUNCTION_10(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v73 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  OUTLINED_FUNCTION_10(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v73 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  v32 = OUTLINED_FUNCTION_10(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_8();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v73 - v39;
  v41 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(a2 + *(v41 + 20), v40, &qword_1ECC7BFD0, &unk_1DC522550);
  v42 = *(a2 + *(v41 + 24));
  v43 = *(v42 + 16);
  if (!v43)
  {
    goto LABEL_4;
  }

  sub_1DC2D8C78(*(v42 + 48 * v43 + 16), v24);
  v44 = type metadata accessor for TurnSummary(0);
  if (__swift_getEnumTagSinglePayload(v24, 1, v44) == 1)
  {
    sub_1DC28EB30(v24, &qword_1ECC7BFC0, &unk_1DC522540);
LABEL_4:
    v45 = type metadata accessor for TurnSummary.ExecutionSource(0);
    __swift_storeEnumTagSinglePayload(v30, 1, 1, v45);
    goto LABEL_6;
  }

  sub_1DC28F358(&v24[*(v44 + 28)], v30, &qword_1ECC7BFC8, &unk_1DC524050);
  sub_1DC37786C(v24, type metadata accessor for TurnSummary);
LABEL_6:
  sub_1DC28F358(v40, v37, &qword_1ECC7BFD0, &unk_1DC522550);
  if (__swift_getEnumTagSinglePayload(v37, 1, v12) == 1)
  {
    sub_1DC28EB30(v40, &qword_1ECC7BFD0, &unk_1DC522550);
    sub_1DC28EB30(v30, &qword_1ECC7BFC8, &unk_1DC524050);
    v46 = v37;
    v47 = &qword_1ECC7BFD0;
    v48 = &unk_1DC522550;
LABEL_10:
    sub_1DC28EB30(v46, v47, v48);
    v49 = v77;
    return (*(v79 + 16))(v78, v76, v49);
  }

  sub_1DC3343A8(v37, v18);
  if (*(*(v18 + 8) + 16))
  {
    sub_1DC28EB30(v40, &qword_1ECC7BFD0, &unk_1DC522550);
    OUTLINED_FUNCTION_0_28();
    v47 = &qword_1ECC7BFC8;
    v48 = &unk_1DC524050;
    v46 = v30;
    goto LABEL_10;
  }

  v51 = type metadata accessor for TurnSummary.ExecutionSource(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v51);
  v49 = v77;
  if (EnumTagSinglePayload != 1)
  {
    sub_1DC28EB30(v40, &qword_1ECC7BFD0, &unk_1DC522550);
    OUTLINED_FUNCTION_0_28();
    sub_1DC28EB30(v30, &qword_1ECC7BFC8, &unk_1DC524050);
    return (*(v79 + 16))(v78, v76, v49);
  }

  v60 = v75;
  sub_1DC32C49C(EnumTagSinglePayload, v53, v54, v55, v56, v57, v58, v59, v73, v74, v75, v76, v77, v78, v79, v80[0], v80[1], v80[2], v80[3], v80[4]);
  v61 = sub_1DC517B9C();
  sub_1DC297814();
  v62 = sub_1DC2BE518();
  v63 = v79;
  v64 = v74;
  (*(v79 + 16))(v74, v60, v49);
  if (os_log_type_enabled(v62, v61))
  {
    v65 = v64;
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v80[0] = v67;
    *v66 = 136315138;
    v68 = sub_1DC32B2D8();
    LODWORD(v76) = v61;
    v69 = v68;
    v71 = v70;
    (*(v79 + 8))(v65, v49);
    v72 = sub_1DC291244(v69, v71, v80);

    *(v66 + 4) = v72;
    v63 = v79;
    _os_log_impl(&dword_1DC287000, v62, v76, "Discard undo in original Model Decision, validated Model Decision: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  else
  {

    (*(v63 + 8))(v64, v49);
  }

  sub_1DC28EB30(v40, &qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_0_28();
  sub_1DC28EB30(v30, &qword_1ECC7BFC8, &unk_1DC524050);
  return (*(v63 + 32))(v78, v75, v49);
}

uint64_t sub_1DC3777C0(uint64_t a1)
{
  sub_1DC28FB9C(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF38, &qword_1DC529D90);
  v4[0] = sub_1DC51777C();
  v4[1] = v1;
  sub_1DC2A32B0();
  v2 = OUTLINED_FUNCTION_7_10();

  return v2;
}

uint64_t sub_1DC37786C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1DC377920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, id *a6)
{
  OUTLINED_FUNCTION_18_14();
  v8 = *v7;
  if (v9)
  {
    if (*v7 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_9_17();
    v10 = *a6;
    sub_1DC516F3C();
    sub_1DC517CEC();
    v11 = *a6;
    OUTLINED_FUNCTION_10_14();
    OUTLINED_FUNCTION_1_19();
    sub_1DC516F1C();
  }

  else
  {
    if (*v7 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_9_17();
    v12 = *a6;
    sub_1DC516F3C();
    sub_1DC517CEC();
    v11 = *a6;
    OUTLINED_FUNCTION_1_19();
    sub_1DC516F2C();
  }
}

void static SignpostLogger.begin(name:parameterOverrideOptions:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a10 + 8);
  v12(a9, a10);
  sub_1DC516F3C();
  if ((a6 & 0x100) != 0 || !a8)
  {
    sub_1DC517CEC();
    v12(a9, a10);
    OUTLINED_FUNCTION_17_9();
    sub_1DC516F2C();
    OUTLINED_FUNCTION_19_14();
  }

  else
  {

    sub_1DC517CEC();
    v13 = (v12)(a9, a10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DC522F20;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1DC2C0FA4();
    *(v14 + 32) = a7;
    *(v14 + 40) = a8;
    OUTLINED_FUNCTION_17_9();
    sub_1DC516F1C();

    OUTLINED_FUNCTION_19_14();
  }
}

void sub_1DC377C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, id *a6)
{
  sub_1DC517CDC();
  if (*a5 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_9_17();
  v8 = *a6;
  OUTLINED_FUNCTION_1_19();
  sub_1DC516F2C();
}

uint64_t sub_1DC377CDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, id *a5)
{
  v7 = sub_1DC516F5C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC517CFC();
  if (*a4 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_9_17();
  v15 = *a5;
  sub_1DC516F4C();
  sub_1DC516F2C();

  return (*(v10 + 8))(v14, v7);
}

uint64_t static SignpostLogger.event(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1DC516F5C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC517CFC();
  v14 = *(a5 + 8);
  v15 = OUTLINED_FUNCTION_31_0();
  v17 = v16(v15);
  sub_1DC516F4C();
  OUTLINED_FUNCTION_17_9();
  sub_1DC516F2C();

  return (*(v9 + 8))(v13, v6);
}

uint64_t sub_1DC377F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1DC297814();
  result = sub_1DC517D7C();
  *a4 = result;
  return result;
}

uint64_t sub_1DC378144(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_1DC516F7C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_8_11();
  v8 = *a4;
  return sub_1DC516F8C();
}

uint64_t sub_1DC3781DC()
{
  v0 = sub_1DC5168FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F3D0);
  __swift_project_value_buffer(v0, qword_1ECC8F3D0);
  return sub_1DC5168EC();
}

uint64_t CDMClient.setupNLU(with:)()
{
  OUTLINED_FUNCTION_1_0();
  v1[18] = v2;
  v1[19] = v0;
  v3 = sub_1DC510C8C();
  v1[20] = v3;
  v4 = *(v3 - 8);
  OUTLINED_FUNCTION_6();
  v1[21] = v5;
  v7 = *(v6 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DC378470, 0, 0);
}

uint64_t sub_1DC378470()
{
  v1 = v0[22];
  v2 = v0[19];
  (*(v0[21] + 16))(v1, v0[18], v0[20]);
  v3 = [objc_opt_self() graphNameForNLU];
  v4 = sub_1DC51772C();
  v6 = v5;

  v7 = objc_allocWithZone(CDMClientSetup);
  v8 = sub_1DC378EF4(v1, 0, 0, v4, v6);
  v0[23] = v8;
  v0[2] = v0;
  v0[3] = sub_1DC37861C;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE70, &qword_1DC523630);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DC30DF70;
  v0[13] = &block_descriptor_7;
  v0[14] = v9;
  [v2 setup:v8 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DC37861C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 192) = v4;
  if (v4)
  {
    v5 = sub_1DC378788;
  }

  else
  {
    v5 = sub_1DC378724;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DC378724()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 176);

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC378788()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();

  OUTLINED_FUNCTION_2_2();
  v5 = v0[24];

  return v4();
}

uint64_t CDMClient.processText(with:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_33_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_5(v5);

  return CDMClient.processText(with:requestConnectionId:)(a1, a2, 0, 0);
}

uint64_t CDMClient.processText(with:requestConnectionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DC3788CC, 0, 0);
}

uint64_t sub_1DC3788CC()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = sub_1DC5176FC();
  v0[24] = v4;
  if (v1)
  {
    v5 = v0[21];
    v6 = v0[22];
    v1 = sub_1DC5176FC();
  }

  v0[25] = v1;
  v7 = v0[23];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DC378A1C;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF40, &qword_1DC525B20);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DC30E680;
  v0[13] = &block_descriptor_6;
  v0[14] = v8;
  [v7 processText:v4 requestConnectionId:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DC378A1C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 208) = v4;
  if (v4)
  {
    v5 = sub_1DC378B90;
  }

  else
  {
    v5 = sub_1DC378B24;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DC378B24()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1DC378B90()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  swift_willThrow();

  OUTLINED_FUNCTION_2_2();
  v5 = v0[26];

  return v4();
}

uint64_t sub_1DC378C04()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DC29F120;

  return CDMClient.setupNLU(with:)();
}

uint64_t sub_1DC378C9C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DC379464;

  return CDMClient.processText(with:)(a1, a2);
}

uint64_t sub_1DC378D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DC378E04;

  return CDMClient.processText(with:requestConnectionId:)(a1, a2, a3, a4);
}

uint64_t sub_1DC378E04()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

id sub_1DC378EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_1DC510BFC();
  if (!a3)
  {
    v11 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = sub_1DC5176FC();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_1DC5176FC();

LABEL_6:
  v13 = [v6 initWithLocaleIdentifier:v10 sandboxId:v11 activeServiceGraph:v12];

  v14 = sub_1DC510C8C();
  (*(*(v14 - 8) + 8))(a1, v14);
  return v13;
}

uint64_t dispatch thunk of CDMNLUClient.setupNLU(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  OUTLINED_FUNCTION_6();
  v14 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_33_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_5(v11);

  return v14(a1, a2, a3);
}

uint64_t dispatch thunk of CDMNLUClient.processText(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  OUTLINED_FUNCTION_6();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_33_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_5(v13);

  return v16(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CDMNLUClient.processText(with:requestConnectionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 24);
  OUTLINED_FUNCTION_6();
  v20 = (v13 + *v13);
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_33_0(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_5(v17);

  return v20(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DC379374()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_1DC379468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_1DC51122C();
  v84 = OUTLINED_FUNCTION_0(v3);
  v85 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_1();
  v83 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v82 = v78 - v11;
  v92 = sub_1DC5157EC();
  v12 = OUTLINED_FUNCTION_0(v92);
  v87 = v13;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v80 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v81 = v78 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v86 = v78 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = v78 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = v78 - v27;
  v29 = type metadata accessor for NLRouterNLParseResponse(0);
  v30 = OUTLINED_FUNCTION_35(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v88 = (v34 - v33);
  v35 = sub_1DC516F5C();
  v36 = OUTLINED_FUNCTION_0(v35);
  v89 = v37;
  v90 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1();
  v42 = v41 - v40;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v43 = sub_1DC2BE518();
  v44 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.TimerRule", 24, 2, v43, v44 & 1, v42);

  v45 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(a1 + *(v45 + 32), v24, &qword_1ECC7C158, &unk_1DC5234A0);
  v46 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v24, 1, v46) == 1)
  {
    sub_1DC28EB30(v24, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v29);
LABEL_4:
    sub_1DC28EB30(v28, &qword_1ECC7C160, qword_1DC5233B0);
    v47 = v91;
    v48 = v92;
    v49 = 1;
LABEL_19:
    __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
    v65 = sub_1DC2BE518();
    sub_1DC2B8848();

    return (*(v89 + 8))(v42, v90);
  }

  sub_1DC28F358(v24, v28, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v24, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    goto LABEL_4;
  }

  sub_1DC2E53A4(v28, v88);
  v50 = type metadata accessor for HeuristicRoutingRequest(0);
  v52 = v86;
  v51 = v87;
  v53 = *(v87 + 16);
  v79 = *(v50 + 20);
  v54 = v92;
  v53(v86, a1 + v79, v92);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v55 = sub_1DC345B24();
  v57 = v56;
  if (v55 == sub_1DC312FB4(0) && v57 == v58)
  {

    goto LABEL_15;
  }

  v60 = sub_1DC51825C();

  if (v60)
  {
LABEL_15:
    v63 = sub_1DC5157DC();
    sub_1DC2E5408(v88, type metadata accessor for NLRouterNLParseResponse);
    if (v63)
    {
      (*(v51 + 8))(v52, v54);
      v49 = 1;
      v64 = v91;
    }

    else
    {
      v64 = v91;
      (*(v51 + 32))(v91, v52, v54);
      v49 = 0;
    }

    v47 = v64;
    v48 = v54;
    goto LABEL_19;
  }

  sub_1DC345B24();
  v61 = sub_1DC312F68();
  if (v61 == 4)
  {
    v62 = v82;
    __swift_storeEnumTagSinglePayload(v82, 1, 1, v54);
LABEL_14:
    sub_1DC28EB30(v62, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_15;
  }

  v62 = v82;
  sub_1DC312E7C(v61, v82);
  if (__swift_getEnumTagSinglePayload(v62, 1, v54) == 1)
  {
    goto LABEL_14;
  }

  v67 = *(v51 + 32);
  v78[1] = v51 + 32;
  v78[2] = a1;
  v78[0] = v67;
  result = v67(v81, v62, v54);
  v68 = 0;
  v69 = *v88;
  v82 = *(*v88 + 16);
  v78[3] = v85 + 16;
  while (1)
  {
    if (v82 == v68)
    {
      v51 = v87;
      v54 = v92;
      (*(v87 + 8))(v81, v92);
      v52 = v86;
      goto LABEL_15;
    }

    if (v68 >= *(v69 + 16))
    {
      break;
    }

    v71 = v84;
    v70 = v85;
    v72 = v83;
    (*(v85 + 16))(v83, v69 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v68++, v84);
    v73 = sub_1DC5111AC();
    v74 = sub_1DC379C20(v73);

    result = (*(v70 + 8))(v72, v71);
    if (v74)
    {
      v75 = v80;
      v76 = v81;
      v52 = v86;
      sub_1DC32DE40();
      v51 = v87;
      v77 = *(v87 + 8);
      v54 = v92;
      v77(v76, v92);
      v77(v52, v54);
      (v78[0])(v52, v75, v54);
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC379C20(uint64_t a1)
{
  v51 = sub_1DC510FDC();
  v2 = OUTLINED_FUNCTION_0(v51);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v50 = v8 - v7;
  v55 = sub_1DC51179C();
  v9 = OUTLINED_FUNCTION_0(v55);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = sub_1DC51164C();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v26 = *(a1 + 16);
  if (v26)
  {
    v29 = *(v20 + 16);
    v27 = v20 + 16;
    v28 = v29;
    v30 = a1 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
    v53 = v29;
    v54 = (v11 + 8);
    v49 = v24 - v23;
    v31 = *(v27 + 56);
    v52 = v31;
    do
    {
      v28(v25, v30, v17);
      if (sub_1DC5114CC())
      {
        sub_1DC51154C();
        v32 = sub_1DC51177C();
        v33 = *v54;
        (*v54)(v16, v55);
        if ((v32 & 1) != 0 && (type metadata accessor for NLRouterBypassUtils(), sub_1DC51154C(), sub_1DC51178C(), v33(v16, v55), v34 = sub_1DC307E5C(), v25 = v49, (*(v4 + 8))(v50, v51), v34))
        {

          sub_1DC51478C();

          sub_1DC28F358(v59, v57, &qword_1ECC7D3F0, &qword_1DC5238B0);
          if (v58)
          {
            sub_1DC28F358(v57, v56, &qword_1ECC7D3F0, &qword_1DC5238B0);
            sub_1DC51489C();
            v28 = v53;
            if (swift_dynamicCast() || (sub_1DC51481C(), OUTLINED_FUNCTION_1_20()))
            {

              sub_1DC28EB30(v59, &qword_1ECC7D3F0, &qword_1DC5238B0);
              v45 = OUTLINED_FUNCTION_2_19();
              v46(v45);

              __swift_destroy_boxed_opaque_existential_1Tm(v56);
              goto LABEL_24;
            }

            sub_1DC5148EC();
            if (OUTLINED_FUNCTION_1_20())
            {

              sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
              v43 = sub_1DC345C40();

              sub_1DC28EB30(v59, &qword_1ECC7D3F0, &qword_1DC5238B0);
              v47 = OUTLINED_FUNCTION_2_19();
              v48(v47);
              __swift_destroy_boxed_opaque_existential_1Tm(v56);
              sub_1DC28EB30(v57, &qword_1ECC7D3F0, &qword_1DC5238B0);
              return v43 & 1;
            }

            sub_1DC28EB30(v59, &qword_1ECC7D3F0, &qword_1DC5238B0);
            v35 = OUTLINED_FUNCTION_2_19();
            v36(v35);
            sub_1DC51490C();
            if (OUTLINED_FUNCTION_1_20() || (sub_1DC51488C(), OUTLINED_FUNCTION_1_20()) || (sub_1DC51495C(), OUTLINED_FUNCTION_1_20()))
            {

              __swift_destroy_boxed_opaque_existential_1Tm(v56);
LABEL_24:
              sub_1DC28EB30(v57, &qword_1ECC7D3F0, &qword_1DC5238B0);
              v43 = 1;
              return v43 & 1;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v56);
          }

          else
          {

            sub_1DC28EB30(v59, &qword_1ECC7D3F0, &qword_1DC5238B0);
            v41 = OUTLINED_FUNCTION_2_19();
            v42(v41);
            v28 = v53;
          }

          sub_1DC28EB30(v57, &qword_1ECC7D3F0, &qword_1DC5238B0);
        }

        else
        {
          v39 = OUTLINED_FUNCTION_2_19();
          v40(v39);
          v28 = v53;
        }

        v31 = v52;
      }

      else
      {
        v37 = OUTLINED_FUNCTION_2_19();
        v38(v37);
      }

      v30 += v31;
      --v26;
    }

    while (v26);
  }

  v43 = 0;
  return v43 & 1;
}

uint64_t sub_1DC37A174()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F8A0);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000028;
  v4[3] = 0x80000001DC540200;
  v4[4] = 0xD000000000000012;
  v4[5] = 0x80000001DC525BD0;
  *v3 = v4;
  v5 = *MEMORY[0x1E69DB098];
  OUTLINED_FUNCTION_7_1(v0);
  v7 = *(v6 + 104);

  return v7(v3);
}

uint64_t sub_1DC37A248@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v59 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v59 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v59 - v15;
  v17 = sub_1DC5172FC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC87108 != -1)
  {
    OUTLINED_FUNCTION_0_30();
  }

  __swift_project_value_buffer(v17, qword_1ECC8F8A0);
  v22 = sub_1DC5172DC();
  (*(v18 + 8))(v21, v17);
  if (v22)
  {
    v23 = sub_1DC5171EC();
    v24 = OUTLINED_FUNCTION_3_18(0x7563u);
    sub_1DC30F668(v24, v25 | 0xED00007300000000, v23, v16);

    v26 = sub_1DC5172AC();
    OUTLINED_FUNCTION_3_3(v16);
    if (v27)
    {
      sub_1DC30F72C(v16);
    }

    else
    {
      sub_1DC382748();
      v60 = v39;
      v41 = v40;
      OUTLINED_FUNCTION_7_1(v26);
      (*(v42 + 8))(v16, v26);
      v59 = v41;
      if (v41)
      {
LABEL_10:
        v43 = sub_1DC5171EC();
        sub_1DC30F668(0x72656469766F7270, 0xE800000000000000, v43, v14);

        OUTLINED_FUNCTION_3_3(v14);
        if (v27)
        {
          sub_1DC30F72C(v14);
        }

        else
        {
          sub_1DC382AC0();
          v33 = v44;
          v34 = v45;
          OUTLINED_FUNCTION_7_1(v26);
          (*(v46 + 8))(v14, v26);
          if (v34)
          {
LABEL_15:
            v47 = sub_1DC5171EC();
            sub_1DC30F668(0x6E6F697461636F6CLL, 0xEC000000656D614ELL, v47, v11);

            OUTLINED_FUNCTION_3_3(v11);
            if (v27)
            {
              sub_1DC30F72C(v11);
            }

            else
            {
              sub_1DC382AC0();
              v35 = v48;
              v36 = v49;
              OUTLINED_FUNCTION_7_1(v26);
              (*(v50 + 8))(v11, v26);
              if (v36)
              {
LABEL_20:
                v51 = sub_1DC5171EC();
                sub_1DC30F668(0x627553746E657665, 0xEC00000065707974, v51, v8);

                OUTLINED_FUNCTION_3_3(v8);
                if (v27)
                {
                  sub_1DC30F72C(v8);
                }

                else
                {
                  sub_1DC382AC0();
                  v37 = v52;
                  v38 = v53;
                  OUTLINED_FUNCTION_7_1(v26);
                  (*(v54 + 8))(v8, v26);
                  if (v38)
                  {
                    v55 = sub_1DC51721C();
                    OUTLINED_FUNCTION_7_1(v55);
                    result = (*(v56 + 8))(a1);
LABEL_26:
                    v32 = v59;
                    v31 = v60;
                    goto LABEL_27;
                  }
                }

                v57 = sub_1DC51721C();
                OUTLINED_FUNCTION_7_1(v57);
                (*(v58 + 8))(a1);

                v37 = 0;
                v38 = 0xE000000000000000;
                goto LABEL_26;
              }
            }

            v35 = 0;
            v36 = 0xE000000000000000;
            goto LABEL_20;
          }
        }

        v33 = 0;
        v34 = 0xE000000000000000;
        goto LABEL_15;
      }
    }

    v59 = 0xE000000000000000;
    v60 = 0;
    goto LABEL_10;
  }

  v28 = sub_1DC51721C();
  OUTLINED_FUNCTION_7_1(v28);
  result = (*(v29 + 8))(a1);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
LABEL_27:
  *a2 = v31;
  a2[1] = v32;
  a2[2] = v33;
  a2[3] = v34;
  a2[4] = v35;
  a2[5] = v36;
  a2[6] = v37;
  a2[7] = v38;
  return result;
}

uint64_t sub_1DC37A788()
{
  v1 = v0;
  sub_1DC517F4C();
  v2 = OUTLINED_FUNCTION_3_18(0x7543u);
  MEMORY[0x1E1296160](v2, v3 | 0xEF203A7300000000);
  MEMORY[0x1E1296160](*v1, v1[1]);
  MEMORY[0x1E1296160](0x69766F7250207C20, 0xED0000203A726564);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  OUTLINED_FUNCTION_5_24();
  MEMORY[0x1E1296160](v1[4], v1[5]);
  OUTLINED_FUNCTION_5_24();
  MEMORY[0x1E1296160](v1[6], v1[7]);
  return 0;
}

uint64_t sub_1DC37A858@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC87108 != -1)
  {
    OUTLINED_FUNCTION_0_30();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F8A0);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

double sub_1DC37A8EC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DC37A248(a1, v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t type metadata accessor for OverrideDecision()
{
  result = qword_1ECC82D88;
  if (!qword_1ECC82D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DC37A9A8()
{
  OUTLINED_FUNCTION_17_10();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1DC37AA04(v1, v2);
  return v1;
}

uint64_t sub_1DC37AA04(uint64_t result, void *a2)
{
  if (result)
  {

    v3 = a2;
  }

  return result;
}

uint64_t sub_1DC37AA98()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation23NLRouterOverrideService_cachedRegex;
  OUTLINED_FUNCTION_9_10();
  v2 = *(v0 + v1);
}

uint64_t sub_1DC37AAD0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation23NLRouterOverrideService_cachedRegex;
  OUTLINED_FUNCTION_35_1();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1DC37AB64()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation23NLRouterOverrideService_cacheLock;
  OUTLINED_FUNCTION_9_10();
  return *(v0 + v1);
}

uint64_t sub_1DC37AB98(int a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation23NLRouterOverrideService_cacheLock;
  result = OUTLINED_FUNCTION_35_1();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DC37AC24()
{
  OUTLINED_FUNCTION_17_10();
  v1 = *v0;
  sub_1DC2A329C(*v0, v0[1]);
  return v1;
}

BOOL sub_1DC37ACB8()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_11_16();
  v4 = (*(v3 + 112))();
  v6 = v4;
  if (v4)
  {
    sub_1DC2B834C(v4, v5);
  }

  return v6 != 0;
}

uint64_t sub_1DC37AD24()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_11_16();
  result = (*(v3 + 184))();
  if (v5 == 1)
  {
    sub_1DC517BAC();
    OUTLINED_FUNCTION_155();
    sub_1DC297814();
    v6 = sub_1DC2A5914();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    return nullsub_1(0, 0);
  }

  return result;
}

uint64_t sub_1DC37ADC8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DC511FFC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v31 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v30 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = sub_1DC5166BC();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  sub_1DC5166AC();
  sub_1DC51669C();
  (*(v17 + 16))(v22, v25, v14);
  sub_1DC2A6784(a1, a2);
  sub_1DC2A67DC();
  v26 = v32;
  sub_1DC51675C();
  if (!v26)
  {
    v27 = v30;
    v28 = v31;
    (*(v31 + 16))(v30, v13, v4);
    v22 = sub_1DC2A72B0(v27);
    (*(v28 + 8))(v13, v4);
  }

  (*(v17 + 8))(v25, v14);
  return v22;
}

uint64_t sub_1DC37B018()
{
  v1 = sub_1DC511FFC();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  v13 = sub_1DC51776C();
  v14 = OUTLINED_FUNCTION_10(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  sub_1DC51775C();
  sub_1DC51773C();
  if (v17)
  {
    sub_1DC2A67DC();
    memset(v23, 0, sizeof(v23));
    v24 = 0;
    sub_1DC5167AC();
    if (!v0)
    {
      v18 = *(v4 + 16);
      v19 = OUTLINED_FUNCTION_30();
      v20(v19);
      v9 = sub_1DC2A72B0(v9);
      (*(v4 + 8))(v12, v1);
    }
  }

  else
  {
    sub_1DC2D2774();
    swift_allocError();
    *v21 = 0xD000000000000019;
    *(v21 + 8) = 0x80000001DC542250;
    *(v21 + 16) = 0;
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_1DC37B20C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[3] = type metadata accessor for NLRouterOverrideService();
  v16[4] = &off_1F57F98B0;
  v16[0] = v2;
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_11_16();
  v8 = *(v7 + 112);
  v9 = v2;
  v10 = v8();
  if (v10)
  {
    v13 = v11;
    sub_1DC2DBAFC(a1, v16, v10, v11, v12, a2);
  }

  else
  {
    v14 = type metadata accessor for OverrideMatch(0);
    __swift_storeEnumTagSinglePayload(a2, 1, 1, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

uint64_t sub_1DC37B2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v76 - v7;
  v9 = sub_1DC5157EC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v85 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C080, &qword_1DC522970);
  OUTLINED_FUNCTION_10(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v76 - v21;
  v23 = type metadata accessor for OverrideMatch(0);
  v24 = OUTLINED_FUNCTION_35(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  v30 = sub_1DC516F5C();
  v31 = OUTLINED_FUNCTION_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1();
  v38 = v37 - v36;
  if (sub_1DC2A051C())
  {
    v77 = v12;
    v78 = v9;
    v79 = v8;
    v80 = v29;
    v82 = v33;
    v83 = v30;
    v84 = a2;
    sub_1DC297814();
    v39 = sub_1DC3990BC();
    v41 = *v39;
    v40 = v39[1];
    v42 = *(v39 + 16);
    v43 = sub_1DC2A5914();
    v44 = OUTLINED_FUNCTION_130();
    v81 = v38;
    sub_1DC2A2ED0(v41, v40, v42, v43, v44 & 1, v38);

    sub_1DC517B9C();
    v45 = sub_1DC2A5914();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    (*((*MEMORY[0x1E69E7D40] & *v87) + 0x110))(v86);
    if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
    {
      sub_1DC37BD24(v22, &qword_1ECC7C080);
    }

    else
    {
      v52 = v80;
      v53 = sub_1DC37BCC0(v22, v80);
      v54 = v79;
      sub_1DC2DEF64(v53);
      v55 = v78;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, 1, v78);
      v57 = v84;
      if (EnumTagSinglePayload != 1)
      {
        v64 = *(v77 + 32);
        v65 = v85;
        v64(v85, v54, v55);
        v64(v57, v65, v55);
        v66 = *(v23 + 20);
        v67 = type metadata accessor for OverrideDecision();
        v68 = *(v67 + 20);
        v69 = sub_1DC510B6C();
        OUTLINED_FUNCTION_35(v69);
        (*(v70 + 16))(v57 + v68, v52 + v66);
        sub_1DC37BD78(v52);
        v60 = v57;
        v61 = 0;
        v62 = 1;
        v63 = v67;
        goto LABEL_11;
      }

      sub_1DC37BD24(v54, &qword_1ECC7CA40);
      sub_1DC517B8C();
      v58 = sub_1DC2A5914();
      OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C();

      sub_1DC37BD78(v52);
    }

    sub_1DC517B8C();
    v59 = sub_1DC2A5914();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    type metadata accessor for OverrideDecision();
    v60 = OUTLINED_FUNCTION_24_7();
LABEL_11:
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
    v71 = *v39;
    v72 = v39[1];
    v73 = *(v39 + 16);
    v74 = sub_1DC2A5914();
    v75 = v81;
    sub_1DC2B8848();

    return (*(v82 + 8))(v75, v83);
  }

  sub_1DC517B8C();
  OUTLINED_FUNCTION_155();
  sub_1DC297814();
  v46 = sub_1DC2A5914();
  OUTLINED_FUNCTION_40_1();
  sub_1DC516F0C();

  type metadata accessor for OverrideDecision();
  v47 = OUTLINED_FUNCTION_24_7();

  return __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
}

void *sub_1DC37B85C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_11_16();
  v9 = *(v8 + 176);
  v10 = v9(v92);
  os_unfair_lock_lock(v11);
  v20 = OUTLINED_FUNCTION_13_14(v12, v13, v14, v15, v16, v17, v18, v19, v76, v80, v84, v88, v92[0]);
  v10(v20);
  OUTLINED_FUNCTION_19_15();
  v22 = (*(v21 + 136))();
  v23 = OUTLINED_FUNCTION_30();
  v25 = sub_1DC361440(v23, v24, v22);

  if (!v25)
  {
    v47 = objc_allocWithZone(MEMORY[0x1E696AE70]);

    v48 = OUTLINED_FUNCTION_30();
    v25 = sub_1DC333108(v48, v49, 1);
    OUTLINED_FUNCTION_19_15();
    v51 = *(v50 + 152);
    v52 = v25;
    v60 = OUTLINED_FUNCTION_20_12(v52, v53, v54, v55, v56, v57, v58, v59, v77, v81, v85, v89, v92[0]);
    v61 = v51(v60);
    v63 = v62;
    v64 = v52;
    v65 = *v63;
    swift_isUniquelyReferenced_nonNull_native();
    v87 = *v63;
    sub_1DC37BDD4(v64, a1, a2);
    *v63 = v87;
    v74 = OUTLINED_FUNCTION_13_14(v66, v67, v68, v69, v70, v71, v72, v73, v79, v83, v87, v91, v92[0]);
    v61(v74);
  }

  v34 = OUTLINED_FUNCTION_20_12(v26, v27, v28, v29, v30, v31, v32, v33, v77, v81, v85, v89, v92[0]);
  v35 = v9(v34);
  v37 = OUTLINED_FUNCTION_18_15(v35, v36);
  os_unfair_lock_unlock(v37);
  v46 = OUTLINED_FUNCTION_13_14(v38, v39, v40, v41, v42, v43, v44, v45, v78, v82, v86, v90, v92[0]);
  v3(v46);
  return v25;
}

id sub_1DC37BB7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLRouterOverrideService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DC37BBEC()
{
  v1 = **v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_11_16();
  return (*(v3 + 288))();
}

uint64_t sub_1DC37BC44()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_11_16();
  return (*(v3 + 216))() & 1;
}

uint64_t sub_1DC37BCC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverrideMatch(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC37BD24(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_18_15(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_35(v5);
  (*(v6 + 8))(v2);
  return v2;
}

uint64_t sub_1DC37BD78(uint64_t a1)
{
  v2 = type metadata accessor for OverrideMatch(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DC37BDD4(uint64_t a1, uint64_t a2, uint64_t a3)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF70, &qword_1DC525CF8);
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

uint64_t sub_1DC37BF38()
{
  result = sub_1DC5157EC();
  if (v1 <= 0x3F)
  {
    result = sub_1DC510B6C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DC37BFC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DC37BFE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_1ECC7B998)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECC7B998);
    }
  }
}

id sub_1DC37C070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DC510B6C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DC37C268(a1, a2, a3, a4);
  v17 = [objc_allocWithZone(MEMORY[0x1E69C7AF8]) init];
  sub_1DC510B5C();
  v18 = sub_1DC510B1C();
  v20 = v19;
  (*(v11 + 8))(v15, v8);
  sub_1DC37C594(v18, v20, v17, &selRef_setAceId_);
  v21 = v17;
  sub_1DC2CB67C(a3, a4, v21);

  v22 = *MEMORY[0x1E69C8320];
  v23 = sub_1DC51772C();
  sub_1DC37C594(v23, v24, v21, &selRef_setDialogPhase_);
  v25 = *MEMORY[0x1E69C8340];
  v26 = sub_1DC51772C();
  sub_1DC37C594(v26, v27, v21, &selRef_setDisplayTarget_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1C8, &qword_1DC524550);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1DC524520;
  *(v28 + 32) = v16;
  v29 = v16;
  sub_1DC37C600(v28, v21);
  [v21 setSupplemental_];

  return v21;
}

id sub_1DC37C268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DC510B6C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(MEMORY[0x1E69C7B08]) init];
  sub_1DC510B5C();
  v17 = sub_1DC510B1C();
  v19 = v18;
  (*(v11 + 8))(v15, v8);
  sub_1DC37C594(v17, v19, v16, &selRef_setAceId_);

  v20 = v16;
  sub_1DC2CB67C(a3, a4, v20);

  sub_1DC37C434(a1, a2, v20);
  v21 = v20;
  v22 = OUTLINED_FUNCTION_0_31();
  sub_1DC37C48C(v22, v23, v24);
  v25 = OUTLINED_FUNCTION_0_31();
  sub_1DC37C4E4(v25, v26, v27);
  v28 = OUTLINED_FUNCTION_0_31();
  sub_1DC37C53C(v28, v29, v30);
  sub_1DC298C74(0, &qword_1ECC7B920, 0x1E696AD98);
  v31 = sub_1DC517D4C();
  [v21 setListenAfterSpeaking_];

  [v21 setDialogIdentifier_];
  return v21;
}

void sub_1DC37C434(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();
  [a3 setText_];
}

void sub_1DC37C48C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();
  [a3 setSpeakableText_];
}

void sub_1DC37C4E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();
  [a3 setRedactedText_];
}

void sub_1DC37C53C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();
  [a3 setRedactedSpeakableText_];
}

void sub_1DC37C594(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1DC5176FC();

  [a3 *a4];
}

void sub_1DC37C600(uint64_t a1, void *a2)
{
  sub_1DC298C74(0, &qword_1ECC7B918, 0x1E69C7708);
  v3 = sub_1DC517A0C();

  [a2 setViews_];
}

uint64_t sub_1DC37C698(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1DC37C6CC(uint64_t a1)
{
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0](a1);
  return sub_1DC51833C();
}

uint64_t sub_1DC37C74C(uint64_t a1, uint64_t a2)
{
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0](a2);
  return sub_1DC51833C();
}

uint64_t sub_1DC37C790@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DC37C698(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1DC37C7D4()
{
  result = qword_1ECC7CF78;
  if (!qword_1ECC7CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CF78);
  }

  return result;
}

uint64_t sub_1DC37C838()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F8B8);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8F8B8);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000028;
  v2[3] = 0x80000001DC540200;
  v2[4] = 0xD000000000000017;
  v2[5] = 0x80000001DC525E00;
  *v1 = v2;
  v3 = *MEMORY[0x1E69DB098];
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1DC37C914(uint64_t a1)
{
  v2 = sub_1DC5172FC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DC51721C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, a1, v10);
  if (qword_1ECC87290 != -1)
  {
    OUTLINED_FUNCTION_0_32();
  }

  v18 = __swift_project_value_buffer(v2, qword_1ECC8F8B8);
  (*(v5 + 16))(v9, v18, v2);
  v19 = sub_1DC303854(v17, v9, &unk_1F57F99D0);
  (*(v13 + 8))(a1, v10);
  return v19;
}

uint64_t sub_1DC37CAC8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC87290 != -1)
  {
    OUTLINED_FUNCTION_0_32();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F8B8);
  OUTLINED_FUNCTION_2_5();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC37CB54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DC37C914(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DC37CB8C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

id sub_1DC37CC8C(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  v69 = a2;
  v67 = a1;
  v7 = sub_1DC516F7C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v8);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v68 = &v56 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - v18;
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v21 = result;
    v22 = [result currentPersona];

    if (v22)
    {
      v59 = a4;
      v60 = a3;
      v61 = v4;
      v23 = sub_1DC37D62C(v22);
      v25 = v24;
      v26 = sub_1DC28D414();
      v27 = *(v10 + 16);
      v63 = v26;
      v64 = v10 + 16;
      v62 = v27;
      (v27)(v19);

      v28 = v69;

      v29 = v10;
      v30 = sub_1DC516F6C();
      v31 = sub_1DC517B9C();

      v32 = os_log_type_enabled(v30, v31);
      v65 = v23;
      v66 = v25;
      if (v32)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v58 = v7;
        v56 = v34;
        v70 = v34;
        *v33 = 136315394;
        v57 = v29;
        v35 = v67;
        *(v33 + 4) = sub_1DC291244(v67, v69, &v70);
        *(v33 + 12) = 2080;
        if (v25)
        {
          v36 = v23;
        }

        else
        {
          v36 = 7104878;
        }

        if (v25)
        {
          v37 = v25;
        }

        else
        {
          v37 = 0xE300000000000000;
        }

        v38 = sub_1DC291244(v36, v37, &v70);

        *(v33 + 14) = v38;
        _os_log_impl(&dword_1DC287000, v30, v31, "#assume-persona: executing with assumedPersonaId=%s, originalPersonaId=%s ", v33, 0x16u);
        swift_arrayDestroy();
        v7 = v58;
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
        v28 = v69;
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();

        v39 = *(v57 + 8);
        v39(v19, v7);
      }

      else
      {

        v39 = *(v29 + 8);
        v39(v19, v7);
        v35 = v67;
      }

      v45 = sub_1DC37D690(v35, v28, v22);
      if (v45)
      {
        v46 = v45;
        v62(v68, v63, v7);
        v47 = v46;
        v48 = sub_1DC516F6C();
        v49 = sub_1DC517BAC();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = v7;
          v52 = swift_slowAlloc();
          *v50 = 138412290;
          v53 = v47;
          v54 = _swift_stdlib_bridgeErrorToNSError();
          *(v50 + 4) = v54;
          *v52 = v54;
          _os_log_impl(&dword_1DC287000, v48, v49, "#assume-persona: failed to assume persona. Error=%@", v50, 0xCu);
          sub_1DC3040B4(v52);
          v7 = v51;
          OUTLINED_FUNCTION_8_0();
          MEMORY[0x1E1298840]();
          OUTLINED_FUNCTION_8_0();
          MEMORY[0x1E1298840]();
        }

        v39(v68, v7);
        sub_1DC37D5D8();
        swift_allocError();
        *v55 = 1;
        swift_willThrow();

        sub_1DC37D220(v65, v66, v22);
      }

      else
      {
        v60();
        sub_1DC37D220(v65, v66, v22);
      }
    }

    else
    {
      v40 = sub_1DC28D414();
      (*(v10 + 16))(v15, v40, v7);
      v41 = sub_1DC516F6C();
      v42 = sub_1DC517BAC();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1DC287000, v41, v42, "#assume-persona: couldn't fetch current persona", v43, 2u);
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
      }

      (*(v10 + 8))(v15, v7);
      sub_1DC37D5D8();
      swift_allocError();
      *v44 = 0;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DC37D220(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1DC516F7C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v17 = sub_1DC28D414();
  v18 = *(v9 + 16);
  v45 = v17;
  v46 = v6;
  v44 = v18;
  (v18)(v16);

  v19 = sub_1DC516F6C();
  v20 = sub_1DC517B9C();

  v21 = os_log_type_enabled(v19, v20);
  v43 = a1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v41 = a3;
    v23 = v22;
    v24 = swift_slowAlloc();
    v47 = v24;
    *v23 = 136315138;
    v42 = v9;
    if (a2)
    {
      v25 = a1;
    }

    else
    {
      v25 = 7104878;
    }

    v26 = v14;
    if (a2)
    {
      v27 = a2;
    }

    else
    {
      v27 = 0xE300000000000000;
    }

    v28 = sub_1DC291244(v25, v27, &v47);
    v14 = v26;

    *(v23 + 4) = v28;
    v9 = v42;
    _os_log_impl(&dword_1DC287000, v19, v20, "#assume-persona: reverting to oldPersonaId=%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    a3 = v41;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  v29 = *(v9 + 8);
  v29(v16, v46);
  if (a2)
  {
    v30 = sub_1DC5176FC();
  }

  else
  {
    v30 = 0;
  }

  v31 = [a3 generateAndRestorePersonaContextWithPersonaUniqueString_];

  if (v31)
  {
    v44(v14, v45, v46);
    v32 = v31;
    v33 = sub_1DC516F6C();
    v34 = sub_1DC517BAC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = v14;
      v37 = swift_slowAlloc();
      *v35 = 138412290;
      v38 = v32;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_1DC287000, v33, v34, "#assume-persona: failed to assume persona. Error=%@", v35, 0xCu);
      sub_1DC3040B4(v37);
      v14 = v36;
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    else
    {
      v38 = v33;
      v33 = v32;
    }

    v29(v14, v46);
  }
}

unint64_t sub_1DC37D5D8()
{
  result = qword_1ECC7CF80;
  if (!qword_1ECC7CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CF80);
  }

  return result;
}

uint64_t sub_1DC37D62C(void *a1)
{
  v1 = [a1 userPersonaUniqueString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DC51772C();

  return v3;
}

id sub_1DC37D690(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();
  v5 = [a3 generateAndRestorePersonaContextWithPersonaUniqueString_];

  return v5;
}

unint64_t sub_1DC37D6E4()
{
  result = qword_1ECC7CF88;
  if (!qword_1ECC7CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CF88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CDMPersonaError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DC37D814()
{
  swift_beginAccess();
  v0 = byte_1ECC7CF90;
  if (byte_1ECC7CF90 == 2)
  {
    v2[3] = &type metadata for CDMFeatureFlags;
    v2[4] = sub_1DC37D88C();
    v0 = sub_1DC510D0C();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  return v0 & 1;
}

unint64_t sub_1DC37D88C()
{
  result = qword_1ECC7CF98;
  if (!qword_1ECC7CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CF98);
  }

  return result;
}

unint64_t sub_1DC37D8E4()
{
  result = qword_1ECC7CFA0;
  if (!qword_1ECC7CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CFA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CDMFeatureFlags(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DC37D9F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFC0, &qword_1DC52EA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC522F20;
  *(inited + 32) = 0x4E495F6E65;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_1DC33347C(&unk_1F57F9C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFC8, &qword_1DC526220);
  result = sub_1DC51764C();
  qword_1ECC8F400 = result;
  return result;
}

uint64_t sub_1DC37DAA0()
{
  OUTLINED_FUNCTION_10_0();
  v0 = swift_allocObject();
  if (qword_1ECC7EE50 != -1)
  {
    OUTLINED_FUNCTION_1_21();
  }

  *(v0 + 16) = qword_1ECC8F400;

  return v0;
}

uint64_t sub_1DC37DAFC(uint64_t a1)
{
  OUTLINED_FUNCTION_10_0();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1DC37DB28(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v5 = *a1;
  v4 = a1[1];
  v6 = OUTLINED_FUNCTION_30();
  v9 = sub_1DC2E4CBC(v6, v7, v8);
  if (!v9)
  {
    sub_1DC37DD98();
    swift_allocError();
    *v32 = v5;
    *(v32 + 8) = v4;
    *(v32 + 16) = 0;

LABEL_13:
    swift_willThrow();
    return OUTLINED_FUNCTION_30();
  }

  v10 = v9;
  OUTLINED_FUNCTION_12_0();
  v12 = *(v11 + 136);
  v13 = OUTLINED_FUNCTION_30();
  if ((v14(v13) & 1) == 0)
  {

    v33 = OUTLINED_FUNCTION_30();
    nullsub_1(v33, v34);
    return OUTLINED_FUNCTION_30();
  }

  v15 = type metadata accessor for RVSRequest(0);
  v16 = *(v15 + 32);
  v38 = v15;
  v17 = *(a1 + *(v15 + 28));
  v18 = *(a1 + v16);
  OUTLINED_FUNCTION_12_0();
  v20 = (*(v19 + 128))();
  v22 = v21;
  if (v21)
  {

    v23 = sub_1DC332FF4(v20, v22, v10);

    if (!v23)
    {

      sub_1DC37DD98();
      swift_allocError();
      *v35 = v20;
      *(v35 + 8) = v22;
      *(v35 + 16) = 1;
      goto LABEL_13;
    }
  }

  v24 = a1[2];
  OUTLINED_FUNCTION_12_0();
  v37 = (*(v25 + 120))();
  v27 = v26;

  if (!v22)
  {

    v20 = v5;
    v22 = v4;
  }

  nullsub_1(v20, v22);
  v28 = v37;
  if (!v27)
  {

    v28 = v5;
    v27 = v4;
  }

  nullsub_1(v28, v27);
  v29 = *(v38 + 24);
  OUTLINED_FUNCTION_12_0();
  (*(v30 + 112))(a1 + v31);

  return OUTLINED_FUNCTION_30();
}

unint64_t sub_1DC37DD98()
{
  result = qword_1ECC7CFA8;
  if (!qword_1ECC7CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CFA8);
  }

  return result;
}

uint64_t sub_1DC37DDEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  v3 = OUTLINED_FUNCTION_10(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v140 = (&v123 - v6);
  OUTLINED_FUNCTION_12();
  v142 = sub_1DC51190C();
  v7 = OUTLINED_FUNCTION_0(v142);
  v132 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v124 = (v11 - v12);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  v141 = &v123 - v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  v135 = &v123 - v16;
  OUTLINED_FUNCTION_12();
  v130 = sub_1DC51149C();
  v17 = OUTLINED_FUNCTION_35(v130);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v129 = v21 - v20;
  OUTLINED_FUNCTION_12();
  v128 = sub_1DC511B7C();
  v22 = OUTLINED_FUNCTION_35(v128);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1();
  v127 = v26 - v25;
  OUTLINED_FUNCTION_12();
  v126 = sub_1DC51176C();
  v27 = OUTLINED_FUNCTION_35(v126);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1();
  v125 = v31 - v30;
  OUTLINED_FUNCTION_12();
  v139 = sub_1DC516F7C();
  v32 = OUTLINED_FUNCTION_0(v139);
  v137 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_8();
  v131 = v36 - v37;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v38);
  v136 = &v123 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D390, &qword_1DC527790);
  v41 = OUTLINED_FUNCTION_10(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_8();
  v46 = v44 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v123 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFB0, qword_1DC526050);
  v51 = OUTLINED_FUNCTION_10(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v123 - v54;
  v56 = sub_1DC5119DC();
  v57 = OUTLINED_FUNCTION_0(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_8();
  v138 = (v62 - v63);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v64);
  v134 = &v123 - v65;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v66);
  v133 = &v123 - v67;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v123 - v69;
  sub_1DC28F3B8(a1, v49, &qword_1ECC7D390, &qword_1DC527790);
  v71 = type metadata accessor for DialogState(0);
  if (__swift_getEnumTagSinglePayload(v49, 1, v71) == 1)
  {
    sub_1DC28EB30(v49, &qword_1ECC7D390, &qword_1DC527790);
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v56);
LABEL_4:
    sub_1DC28EB30(v55, &qword_1ECC7CFB0, qword_1DC526050);
    goto LABEL_5;
  }

  sub_1DC28F3B8(v49, v55, &qword_1ECC7CFB0, qword_1DC526050);
  OUTLINED_FUNCTION_6_14();
  sub_1DC37EDD0(v49, v72);
  if (__swift_getEnumTagSinglePayload(v55, 1, v56) == 1)
  {
    goto LABEL_4;
  }

  v79 = v59;
  (*(v59 + 32))(v70, v55, v56);
  if (sub_1DC51194C() & 1) != 0 || (sub_1DC51195C() & 1) != 0 || (sub_1DC51191C())
  {
    v80 = sub_1DC28D414();
    v81 = v136;
    v82 = v137;
    v83 = v139;
    (*(v137 + 16))(v136, v80, v139);
    v84 = *(v79 + 16);
    v85 = v133;
    v84(v133, v70, v56);
    v86 = v134;
    v84(v134, v70, v56);
    v84(v138, v70, v56);
    v87 = v81;
    v88 = sub_1DC516F6C();
    v89 = sub_1DC517B9C();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = OUTLINED_FUNCTION_82();
      v142 = swift_slowAlloc();
      v143[0] = v142;
      *v90 = 136315650;
      v91 = v86;
      LODWORD(v141) = v89;
      sub_1DC5119CC();
      v92 = sub_1DC51777C();
      v94 = v93;
      v95 = *(v79 + 8);
      v95(v85, v56);
      v96 = sub_1DC291244(v92, v94, v143);

      *(v90 + 4) = v96;
      *(v90 + 12) = 2080;
      sub_1DC51192C();
      sub_1DC51777C();
      v95(v91, v56);
      v97 = OUTLINED_FUNCTION_43();
      v100 = sub_1DC291244(v97, v98, v99);

      *(v90 + 14) = v100;
      *(v90 + 22) = 2080;
      v101 = v138;
      sub_1DC5119AC();
      sub_1DC51777C();
      v95(v101, v56);
      v102 = OUTLINED_FUNCTION_43();
      v105 = sub_1DC291244(v102, v103, v104);

      *(v90 + 24) = v105;
      _os_log_impl(&dword_1DC287000, v88, v141, "Responding with lastSiriResponse. Siri prompted:%s, Siri Gave Options: %s, Siri Offered: %s", v90, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      (*(v137 + 8))(v136, v139);
      v95(v70, v56);
    }

    else
    {

      v121 = *(v79 + 8);
      v121(v138, v56);
      v121(v86, v56);
      v121(v85, v56);
      (*(v82 + 8))(v87, v83);
      v121(v70, v56);
    }

    return 0;
  }

  (*(v59 + 8))(v70, v56);
LABEL_5:
  sub_1DC28F3B8(a1, v46, &qword_1ECC7D390, &qword_1DC527790);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v71);
  v74 = v141;
  v75 = v142;
  v76 = v140;
  if (EnumTagSinglePayload == 1)
  {
    sub_1DC28EB30(v46, &qword_1ECC7D390, &qword_1DC527790);
    __swift_storeEnumTagSinglePayload(v76, 1, 1, v75);
LABEL_8:
    sub_1DC28EB30(v76, &unk_1ECC7D3A0, &unk_1DC522560);
    return 1;
  }

  sub_1DC28F3B8(v46 + *(v71 + 20), v140, &unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_6_14();
  sub_1DC37EDD0(v46, v77);
  if (__swift_getEnumTagSinglePayload(v76, 1, v75) == 1)
  {
    goto LABEL_8;
  }

  v106 = v132;
  v107 = v135;
  (*(v132 + 32))(v135, v76, v75);
  if ((sub_1DC5118CC() & 1) == 0)
  {
    (*(v106 + 8))(v107, v75);
    return 1;
  }

  v108 = sub_1DC28D414();
  v109 = v137;
  v110 = v131;
  (*(v137 + 16))(v131, v108, v139);
  v111 = v107;
  v112 = *(v106 + 16);
  v112(v74, v107, v75);
  v113 = sub_1DC516F6C();
  v114 = sub_1DC517B9C();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v140 = OUTLINED_FUNCTION_82();
    v143[0] = v140;
    *v115 = 136315138;
    v112(v124, v74, v75);
    v116 = sub_1DC51777C();
    v118 = v117;
    v119 = *(v106 + 8);
    v119(v74, v75);
    v120 = sub_1DC291244(v116, v118, v143);

    *(v115 + 4) = v120;
    _os_log_impl(&dword_1DC287000, v113, v114, "Responding with lastSiriResponse. LegacyNLContext: %s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v140);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();

    (*(v109 + 8))(v131, v139);
    v119(v135, v75);
  }

  else
  {

    v122 = *(v106 + 8);
    v122(v74, v75);
    (*(v109 + 8))(v110, v139);
    v122(v111, v75);
  }

  return 0;
}

uint64_t sub_1DC37E8CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 0;
  }

  v9 = (*(*a1 + 88))();
  if (!*(v9 + 16))
  {

    return 0;
  }

  v10 = *(v9 + 32);

  v37 = v10[2];
  if (v37)
  {
    v12 = v10[4];
    v13 = v10[5];

    if (sub_1DC332FF4(v12, v13, a2))
    {

      return v12;
    }
  }

  v35 = a4;
  v36 = a5;
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
LABEL_9:
    if (v14 == v37)
    {

      v30 = v15[2];
      if (v30)
      {
        v12 = v15[4];
        if (v30 != 1 && a3)
        {
          if (a3 != 1)
          {

            return v35;
          }

          v31 = v12 == v35 && v15[5] == v36;
          if (v31 || (v32 = v15[4], v33 = v15[5], (sub_1DC51825C() & 1) != 0))
          {
            v12 = v15[6];
            v34 = v15[7];
          }
        }

        return v12;
      }

      return 0;
    }

    v16 = v14;
    if (v14 >= v10[2])
    {
      break;
    }

    ++v14;
    if (*(a2 + 16))
    {
      v17 = &v10[2 * v16 + 4];
      v19 = *v17;
      v18 = v17[1];
      v20 = *(a2 + 40);
      sub_1DC5182FC();

      sub_1DC51769C();
      v21 = sub_1DC51833C();
      v22 = ~(-1 << *(a2 + 32));
      do
      {
        v23 = v21 & v22;
        if (((*(a2 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
        {

          goto LABEL_9;
        }

        v24 = (*(a2 + 48) + 16 * v23);
        if (*v24 == v19 && v24[1] == v18)
        {
          break;
        }

        v26 = sub_1DC51825C();
        v21 = v23 + 1;
      }

      while ((v26 & 1) == 0);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DC2DF6FC(0, v15[2] + 1, 1);
      }

      v28 = v15[2];
      v27 = v15[3];
      if (v28 >= v27 >> 1)
      {
        result = sub_1DC2DF6FC((v27 > 1), v28 + 1, 1);
      }

      v15[2] = v28 + 1;
      v29 = &v15[2 * v28];
      v29[4] = v19;
      v29[5] = v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC37EBB4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    if (!a1)
    {
      return 0;
    }

    v2 = (*(*a1 + 88))();
  }

  if (v2[2])
  {
    v3 = v2[4];
    v4 = v2[5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1DC37EC5C(uint64_t a1, uint64_t a2)
{
  v7 = sub_1DC2A32B0();
  v6 = MEMORY[0x1E69E6158];
  sub_1DC517E1C();
  v2 = [objc_opt_self() sharedPreferences];
  OUTLINED_FUNCTION_43();
  v3 = sub_1DC5176FC();

  v4 = [v2 multilingualResponseEnabledForLanguage_];

  return v4;
}

uint64_t sub_1DC37ED3C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_12_0();
  return (*(v2 + 104))();
}

uint64_t sub_1DC37ED7C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

LABEL_3:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1DC51825C();
  }
}

uint64_t sub_1DC37EDD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1DC37EE2C()
{
  result = qword_1ECC7CFB8;
  if (!qword_1ECC7CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CFB8);
  }

  return result;
}

uint64_t sub_1DC37EEB0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DC37EEF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReponseVariantMultipleUserVariants(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ReponseVariantMultipleUserVariants(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void *sub_1DC37F0F8()
{
  v1 = OBJC_IVAR___CDMNluResponse_objcProto;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1DC37F1A0(uint64_t a1)
{
  v3 = OBJC_IVAR___CDMNluResponse_objcProto;
  OUTLINED_FUNCTION_142();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1DC37F1F0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC37F24C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1DC37F360(uint64_t a1, void **a2)
{
  v4 = sub_1DC5137CC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x80))(v7);
}

uint64_t sub_1DC37F45C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CDMNluResponse_swiftProto;
  swift_beginAccess();
  v4 = sub_1DC5137CC();
  OUTLINED_FUNCTION_35(v4);
  return (*(v5 + 16))(a1, v1 + v3);
}

uint64_t sub_1DC37F4DC(uint64_t a1)
{
  v3 = OBJC_IVAR___CDMNluResponse_swiftProto;
  OUTLINED_FUNCTION_1_22();
  v4 = sub_1DC5137CC();
  OUTLINED_FUNCTION_35(v4);
  (*(v5 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

id CDMNluResponse.init(objcProto:)(void *a1)
{
  v2 = v1;
  v4 = sub_1DC51670C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C370, &qword_1DC5230E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28[-v8];
  v10 = sub_1DC5137CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR___CDMNluResponse_objcProto;
  *&v2[v15] = [objc_allocWithZone(MEMORY[0x1E69D1158]) init];
  v16 = OBJC_IVAR___CDMNluResponse_swiftProto;
  sub_1DC5137BC();
  OUTLINED_FUNCTION_142();
  v17 = *&v2[v15];
  *&v2[v15] = a1;
  v18 = a1;

  v19 = v18;
  v20 = sub_1DC30EB38(v19);
  if (v21 >> 60 == 15)
  {
    sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v22 = sub_1DC2C0F8C();
    sub_1DC516F0C();
  }

  else
  {
    v23 = v20;
    v24 = v21;
    v29 = 0;
    memset(&v28[16], 0, 32);
    sub_1DC2A6784(v20, v21);
    sub_1DC5166FC();
    sub_1DC37FFA4();
    sub_1DC51677C();
    sub_1DC301FE0(v23, v24);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    (*(v11 + 32))(v14, v9, v10);
    OUTLINED_FUNCTION_1_22();
    (*(v11 + 40))(&v2[v16], v14, v10);
    swift_endAccess();
  }

  v25 = type metadata accessor for CDMNluResponse();
  v30.receiver = v2;
  v30.super_class = v25;
  v26 = objc_msgSendSuper2(&v30, sel_init);

  return v26;
}

id CDMNluResponse.init(swiftProto:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CDMNluResponse_objcProto;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69D1158]) init];
  v5 = OBJC_IVAR___CDMNluResponse_swiftProto;
  sub_1DC5137BC();
  OUTLINED_FUNCTION_1_22();
  v6 = sub_1DC5137CC();
  v7 = *(v6 - 8);
  (*(v7 + 24))(&v2[v5], a1, v6);
  swift_endAccess();
  sub_1DC37FFA4();
  v9 = sub_1DC51678C();
  v11 = v10;
  v12 = objc_allocWithZone(MEMORY[0x1E69D1158]);
  v13 = sub_1DC339190(v9, v11);
  if (v13)
  {
    v14 = v13;
    OUTLINED_FUNCTION_142();
    v8 = *&v2[v4];
    *&v2[v4] = v14;
  }

  else
  {
    sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v8 = sub_1DC2C0F8C();
    sub_1DC516F0C();
  }

  v17.receiver = v2;
  v17.super_class = type metadata accessor for CDMNluResponse();
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v7 + 8))(a1, v6);
  return v15;
}

char *CDMNluResponse.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR___CDMNluResponse_objcProto;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69D1158]) init];
  sub_1DC5137BC();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CDMNluResponse();
  v4 = objc_msgSendSuper2(&v10, sel_init);
  sub_1DC298C74(0, &qword_1ECC7CFE0, 0x1E69D1158);
  v5 = v4;
  v6 = sub_1DC517D3C();

  v7 = OBJC_IVAR___CDMNluResponse_objcProto;
  OUTLINED_FUNCTION_142();
  v8 = *&v5[v7];
  *&v5[v7] = v6;

  return v5;
}

void sub_1DC37FD20(void *a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x60))();
  v4 = sub_1DC5176FC();
  [a1 encodeObject:v3 forKey:v4];
}

id CDMNluResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CDMNluResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMNluResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CDMNluResponse()
{
  result = qword_1EDAC9698;
  if (!qword_1EDAC9698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DC37FFA4()
{
  result = qword_1EDAC8020;
  if (!qword_1EDAC8020)
  {
    sub_1DC5137CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAC8020);
  }

  return result;
}

uint64_t sub_1DC37FFFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C370, &qword_1DC5230E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC38006C()
{
  result = sub_1DC5137CC();
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

uint64_t sub_1DC3802C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v149 = sub_1DC51122C();
  v3 = OUTLINED_FUNCTION_0(v149);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v140 = v8;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v127 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_15();
  v135 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  v136 = &v127 - v16;
  v148 = sub_1DC5157EC();
  v17 = OUTLINED_FUNCTION_0(v148);
  v138 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v133 = v21;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  v137 = &v127 - v23;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v24);
  v134 = &v127 - v25;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v26);
  v139 = &v127 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v127 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v127 - v34;
  v36 = type metadata accessor for NLRouterNLParseResponse(0);
  v37 = OUTLINED_FUNCTION_35(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1();
  v141 = (v41 - v40);
  v42 = sub_1DC516F5C();
  v43 = OUTLINED_FUNCTION_0(v42);
  v145 = v44;
  v146 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_1();
  v49 = v48 - v47;
  v50 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v51 = sub_1DC2BE518();
  v52 = OUTLINED_FUNCTION_130();
  v143 = v50;
  v144 = v49;
  sub_1DC2A2ED0("HeuristicRules.CalendarRule", 27, 2, v51, v52 & 1, v49);

  v53 = *(type metadata accessor for NLRouterServiceRequest(0) + 32);
  v142 = a1;
  sub_1DC28F358(a1 + v53, v31, &qword_1ECC7C158, &unk_1DC5234A0);
  v54 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v31, 1, v54) != 1)
  {
    sub_1DC28F358(v31, v35, &qword_1ECC7C160, qword_1DC5233B0);
    sub_1DC2E5408(v31, type metadata accessor for NLRouterTurnProbingResult);
    if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
    {
      goto LABEL_4;
    }

    sub_1DC2E53A4(v35, v141);
    v65 = type metadata accessor for HeuristicRoutingRequest(0);
    v66 = *(v65 + 20);
    v67 = v138;
    v68 = v139;
    v69 = v148;
    (*(v138 + 16))(v139, v142 + v66, v148);
    v70 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
    v71 = sub_1DC34351C();
    v73 = v72;
    if (v71 == sub_1DC312FB4(0) && v73 == v74)
    {

LABEL_20:
      v78 = v136;
    }

    else
    {
      v131 = v71;
      v132 = v66;
      v76 = sub_1DC51825C();

      if ((v76 & 1) == 0)
      {
        v129 = v73;
        v128 = v65;
        v130 = v70;
        v79 = 0;
        v80 = *v141;
        v81 = *(*v141 + 16);
        do
        {
          if (v81 == v79)
          {
            v69 = v148;
            v67 = v138;
            v68 = v139;
            v66 = v132;
            goto LABEL_20;
          }

          if (v79 >= *(v80 + 16))
          {
            __break(1u);
LABEL_49:
            __break(1u);
            return result;
          }

          OUTLINED_FUNCTION_7_12();
          v84 = v149;
          (*(v5 + 16))(v11, v82 + v83 * v79++, v149);
          v85 = sub_1DC5111AC();
          v86 = sub_1DC380D54(v85, 1);

          result = (*(v5 + 8))(v11, v84);
        }

        while ((v86 & 1) == 0);
        v87 = sub_1DC312F68();
        v69 = v148;
        v67 = v138;
        v68 = v139;
        v66 = v132;
        v78 = v136;
        if (v87 == 4)
        {
          goto LABEL_22;
        }

        sub_1DC312E7C(v87, v136);
        if (__swift_getEnumTagSinglePayload(v78, 1, v69) != 1)
        {
          v88 = *(v67 + 32);
          v89 = v134;
          v88(v134, v78, v69);
          v90 = v142 + *(v128 + 36);
          v91 = v137;
          sub_1DC32F9DC();
          v92 = *(v138 + 8);
          v92(v89, v69);
          v92(v68, v69);
          v88(v68, v91, v69);
          v67 = v138;
          goto LABEL_30;
        }

LABEL_23:
        sub_1DC28EB30(v78, &qword_1ECC7CA40, &unk_1DC5233A0);
        v96 = v137;
        (*(v67 + 104))(v137, *MEMORY[0x1E69D02F8], v69);
        v97 = sub_1DC5157DC();
        v98 = v96;
        v92 = *(v67 + 8);
        v136 = v67 + 8;
        v92(v98, v69);
        if ((v97 & 1) == 0)
        {
LABEL_30:
          v105 = v147;
LABEL_43:
          v124 = sub_1DC5157DC();
          sub_1DC2E5408(v141, type metadata accessor for NLRouterNLParseResponse);
          if (v124)
          {
            v92(v68, v69);
            v125 = 1;
          }

          else
          {
            (*(v67 + 32))(v105, v68, v69);
            v125 = 0;
          }

          v63 = v145;
          v62 = v146;
          v64 = v144;
          __swift_storeEnumTagSinglePayload(v105, v125, 1, v69);
          goto LABEL_47;
        }

        v99 = sub_1DC3435F8();
        v101 = v100;
        if (v99 == sub_1DC312FB4(0) && v101 == v102)
        {

          v105 = v147;
        }

        else
        {
          v134 = v99;
          v104 = sub_1DC51825C();

          if ((v104 & 1) == 0)
          {
            v130 = v101;
            v131 = v92;
            v132 = v66;
            v106 = 0;
            v107 = v140;
            v108 = *v141;
            v109 = *(*v141 + 16);
            do
            {
              if (v109 == v106)
              {
                v92 = v131;
                v105 = v147;
                v69 = v148;
                v67 = v138;
                v68 = v139;
                goto LABEL_40;
              }

              if (v106 >= *(v108 + 16))
              {
                goto LABEL_49;
              }

              OUTLINED_FUNCTION_7_12();
              v112 = v149;
              (*(v5 + 16))(v107, v110 + v111 * v106++, v149);
              v113 = sub_1DC5111AC();
              v114 = sub_1DC380D54(v113, 0);

              result = (*(v5 + 8))(v107, v112);
            }

            while ((v114 & 1) == 0);
            v115 = sub_1DC312F68();
            v105 = v147;
            v69 = v148;
            v67 = v138;
            v68 = v139;
            v92 = v131;
            v116 = v135;
            if (v115 == 4)
            {
              goto LABEL_41;
            }

            sub_1DC312E7C(v115, v135);
            if (__swift_getEnumTagSinglePayload(v116, 1, v69) != 1)
            {
              v117 = *(v67 + 32);
              v118 = v133;
              v117(v133, v116, v69);
              v119 = v137;
              sub_1DC32DE40();
              v131(v118, v69);
              v131(v68, v69);
              v120 = v119;
              v92 = v131;
              v117(v68, v120, v69);
              v67 = v138;
              goto LABEL_43;
            }

            goto LABEL_42;
          }

          v105 = v147;
          v68 = v139;
        }

LABEL_40:
        v116 = v135;

LABEL_41:
        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v121, v122, v123, v69);
LABEL_42:
        sub_1DC28EB30(v116, &qword_1ECC7CA40, &unk_1DC5233A0);
        goto LABEL_43;
      }

      v66 = v132;
      v78 = v136;
      v68 = v139;
    }

LABEL_22:
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v69);
    goto LABEL_23;
  }

  sub_1DC28EB30(v31, &qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v36);
LABEL_4:
  sub_1DC28EB30(v35, &qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  v63 = v145;
  v62 = v146;
  v64 = v144;
LABEL_47:
  v126 = sub_1DC2BE518();
  sub_1DC2B8848();

  return (*(v63 + 8))(v64, v62);
}

uint64_t sub_1DC380D54(uint64_t a1, char a2)
{
  v63 = sub_1DC510FDC();
  v4 = OUTLINED_FUNCTION_0(v63);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v62 = v10 - v9;
  v66 = sub_1DC51179C();
  v11 = OUTLINED_FUNCTION_0(v66);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = sub_1DC51164C();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v27 = v26 - v25;
  v28 = *(a1 + 16);
  if (!v28)
  {
LABEL_19:
    v43 = 0;
    return v43 & 1;
  }

  v59 = a2;
  v31 = *(v22 + 16);
  v30 = v22 + 16;
  v29 = v31;
  v32 = a1 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
  v65 = (v13 + 8);
  v61 = (v6 + 8);
  v33 = *(v30 + 56);
  v64 = v19;
  v60 = v26 - v25;
  while (1)
  {
    v29(v27, v32, v19);
    if (sub_1DC5114CC())
    {
      break;
    }

    v39 = OUTLINED_FUNCTION_1_23();
LABEL_14:
    v40(v39, v19);
LABEL_15:
    v32 += v33;
    if (!--v28)
    {
      goto LABEL_19;
    }
  }

  sub_1DC51154C();
  v34 = sub_1DC51177C();
  v35 = *v65;
  (*v65)(v18, v66);
  if ((v34 & 1) == 0 || (type metadata accessor for NLRouterBypassUtils(), sub_1DC51154C(), sub_1DC51178C(), v35(v18, v66), v36 = sub_1DC307E5C(), v27 = v60, (*v61)(v62, v63), !v36))
  {
    v39 = OUTLINED_FUNCTION_1_23();
    v19 = v64;
    goto LABEL_14;
  }

  sub_1DC51478C();

  sub_1DC28F358(v70, v68, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v69)
  {

    sub_1DC28EB30(v70, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v41 = OUTLINED_FUNCTION_1_23();
    v19 = v64;
    v42(v41, v64);
LABEL_18:
    sub_1DC28EB30(v68, &qword_1ECC7D3F0, &qword_1DC5238B0);
    goto LABEL_15;
  }

  sub_1DC28F358(v68, v67, &qword_1ECC7D3F0, &qword_1DC5238B0);
  sub_1DC514D8C();
  v19 = v64;
  if (!swift_dynamicCast())
  {
    sub_1DC514DEC();
    if (OUTLINED_FUNCTION_3_19())
    {
      OUTLINED_FUNCTION_6_15();
      sub_1DC5148BC();
      if (v71)
      {

        sub_1DC5145FC();
        sub_1DC514F8C();
        OUTLINED_FUNCTION_10_15();
        v50 = sub_1DC2E5024(v28);
        v51 = &unk_1F57F9DF0;
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    sub_1DC514DFC();
    if (OUTLINED_FUNCTION_3_19())
    {
      OUTLINED_FUNCTION_6_15();
      sub_1DC5148BC();
      if (v71)
      {

        sub_1DC5145FC();
        sub_1DC514F8C();
        OUTLINED_FUNCTION_10_15();
        v50 = sub_1DC2E5024(v28);
        v51 = &unk_1F57F9E40;
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    sub_1DC514D7C();
    if (OUTLINED_FUNCTION_3_19())
    {
      OUTLINED_FUNCTION_6_15();
      sub_1DC51392C();
      if (v71)
      {

        sub_1DC5145FC();
        sub_1DC514F8C();
        OUTLINED_FUNCTION_10_15();
        v50 = sub_1DC2E5024(v28);
        v51 = &unk_1F57F9E90;
LABEL_30:
        v52 = sub_1DC38155C(v51, v50);

LABEL_32:

        sub_1DC28EB30(v70, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v53 = OUTLINED_FUNCTION_1_23();
        v54(v53, v64);
        v43 = v52 ^ v59;
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        goto LABEL_38;
      }

LABEL_31:
      v52 = 1;
      goto LABEL_32;
    }

    sub_1DC28EB30(v70, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v37 = OUTLINED_FUNCTION_1_23();
    v38(v37, v64);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    goto LABEL_18;
  }

  sub_1DC514C8C();
  v45 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC523DA0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  strcpy((inited + 48), "participants");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  *(inited + 64) = 0x49664F746E696F70;
  *(inited + 72) = 0xEF7473657265746ELL;
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x80000001DC542770;
  if (!v45)
  {
    swift_setDeallocating();
    sub_1DC2A180C();
LABEL_34:
    sub_1DC514C7C();
    if (v72)
    {

      sub_1DC5145FC();
      sub_1DC514F8C();
      OUTLINED_FUNCTION_10_15();
      v55 = sub_1DC2E5024(v45);
      v56 = sub_1DC38155C(&unk_1F57F9DB0, v55);

      v49 = v56 ^ 1;
    }

    else
    {
      v49 = 0;
    }

    goto LABEL_37;
  }

  sub_1DC5145FC();
  v47 = sub_1DC514F8C();

  v48 = sub_1DC2E5024(v47);
  LOBYTE(v47) = sub_1DC38155C(inited, v48);

  swift_setDeallocating();
  sub_1DC2A180C();
  if (v47)
  {
    goto LABEL_34;
  }

  v49 = 1;
LABEL_37:

  sub_1DC28EB30(v70, &qword_1ECC7D3F0, &qword_1DC5238B0);
  v57 = OUTLINED_FUNCTION_1_23();
  v58(v57, v64);
  v43 = v49 ^ v59 ^ 1;
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
LABEL_38:
  sub_1DC28EB30(v68, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return v43 & 1;
}