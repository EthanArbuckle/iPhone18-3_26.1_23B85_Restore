uint64_t WFAskLLMModelSession.registerDocuments(_:)()
{
  OUTLINED_FUNCTION_10();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_21E3434D0();
  v1[9] = v3;
  OUTLINED_FUNCTION_62_0(v3);
  v1[10] = v4;
  v1[11] = OUTLINED_FUNCTION_378();
  v5 = sub_21E343160();
  v1[12] = v5;
  OUTLINED_FUNCTION_62_0(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_378();
  v7 = sub_21E3431A0();
  v1[15] = v7;
  OUTLINED_FUNCTION_62_0(v7);
  v1[16] = v8;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v9 = sub_21E343180();
  v1[20] = v9;
  OUTLINED_FUNCTION_62_0(v9);
  v1[21] = v10;
  v1[22] = OUTLINED_FUNCTION_378();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8920);
  OUTLINED_FUNCTION_28_0(v11);
  v1[23] = OUTLINED_FUNCTION_378();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8928);
  v1[24] = v12;
  OUTLINED_FUNCTION_62_0(v12);
  v1[25] = v13;
  v1[26] = OUTLINED_FUNCTION_378();
  v14 = sub_21E342BB0();
  v1[27] = v14;
  OUTLINED_FUNCTION_62_0(v14);
  v1[28] = v15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v16 = sub_21E343150();
  v1[31] = v16;
  OUTLINED_FUNCTION_62_0(v16);
  v1[32] = v17;
  v1[33] = OUTLINED_FUNCTION_378();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB81A0);
  v1[34] = v18;
  OUTLINED_FUNCTION_62_0(v18);
  v1[35] = v19;
  v1[36] = *(v20 + 64);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_21E1E9A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v25 = *(v24 + 56);
  v26 = *(v25 + 16);
  if (!v26)
  {
LABEL_13:
    OUTLINED_FUNCTION_269();

    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_342();

    __asm { BRAA            X1, X16 }
  }

  v27 = *(v24 + 256);
  v28 = *(v24 + 224);
  v69 = MEMORY[0x277D84F90];
  sub_21E1D5A84();
  v29 = v25 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
  v67 = *(v28 + 72);
  v68 = v27;
  v66 = (v28 + 8);
  v65 = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30 = *(v28 + 16);
  do
  {
    v31 = *(v24 + 240);
    v32 = *(v24 + 216);
    v33 = OUTLINED_FUNCTION_390();
    v30(v33);
    v34 = OUTLINED_FUNCTION_137();
    v30(v34);
    sub_21E343140();
    v35 = *v66;
    *(v24 + 336) = *v66;
    *(v24 + 344) = v65;
    v35(v31, v32);
    v36 = *(v69 + 16);
    if (v36 >= *(v69 + 24) >> 1)
    {
      sub_21E1D5A84();
    }

    v37 = *(v24 + 264);
    v38 = *(v24 + 248);
    *(v69 + 16) = v36 + 1;
    (*(v68 + 32))(v69 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v36, v37, v38);
    v29 += v67;
    --v26;
  }

  while (v26);
  v39 = sub_21E342EF0();
  *(v24 + 312) = v39;

  v40 = sub_21E1C7FAC(v39);
  *(v24 + 320) = v40;
  if (!v40)
  {

    goto LABEL_13;
  }

  *(v24 + 376) = *MEMORY[0x277D0E710];
  *(v24 + 328) = *MEMORY[0x277D7A440];
  v41 = *(v24 + 312);
  v42 = sub_21E20DA64(v41);
  sub_21E20DAD4(0, v42 & 1, v41);
  if (v42)
  {
    (*(*(v24 + 280) + 16))(*(v24 + 304), *(v24 + 312) + ((*(*(v24 + 280) + 80) + 32) & ~*(*(v24 + 280) + 80)), *(v24 + 272));
  }

  else
  {
    v59 = *(v24 + 288);
    v49 = sub_21E20DB3C(0, *(v24 + 312));
    if (v59 != 8)
    {
      __break(1u);
      return MEMORY[0x282200310](v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
    }

    v60 = v49;
    v61 = *(v24 + 304);
    v62 = *(v24 + 272);
    v63 = *(v24 + 280);
    *(v24 + 40) = v60;
    (*(v63 + 16))(v61, v24 + 40, v62);
    swift_unknownObjectRelease();
  }

  *(v24 + 352) = 1;
  v43 = OUTLINED_FUNCTION_309();
  v45 = v44(v43);
  v46 = OUTLINED_FUNCTION_237(v45);
  OUTLINED_FUNCTION_409(v46);
  swift_getAssociatedConformanceWitness();
  swift_task_alloc();
  OUTLINED_FUNCTION_146_0();
  *(v24 + 368) = v47;
  *v47 = v48;
  OUTLINED_FUNCTION_175(v47);
  OUTLINED_FUNCTION_342();

  return MEMORY[0x282200310](v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_21E1E9DCC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E1E9EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (*a18)(uint64_t, uint64_t), void (*a19)(size_t, uint64_t, uint64_t), uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_150();
  a31 = v33;
  a32 = v34;
  OUTLINED_FUNCTION_169();
  a30 = v32;
  v35 = *(v32 + 184);
  v36 = *(v32 + 160);
  if (__swift_getEnumTagSinglePayload(v35, 1, v36) != 1)
  {
    v50 = *(v32 + 376);
    (*(*(v32 + 168) + 32))(*(v32 + 176), v35, v36);
    sub_21E343170();
    v51 = OUTLINED_FUNCTION_151();
    if (v52(v51) == v50)
    {
      v53 = *(v32 + 128);
      (*(*(v32 + 104) + 96))(*(v32 + 112), *(v32 + 96));
      v54 = OUTLINED_FUNCTION_235();
      a19 = v56;
      a20 = v55;
      (v56)(v54);
      sub_21E343100();
      v57 = *(v53 + 16);
      v58 = OUTLINED_FUNCTION_3_0();
      v57(v58);
      v59 = sub_21E3434C0();
      v60 = sub_21E343B50();
      if (os_log_type_enabled(v59, v60))
      {
        a12 = *(v32 + 336);
        a13 = *(v32 + 344);
        HIDWORD(a11) = v60;
        a10 = *(v32 + 144);
        v61 = *(v32 + 128);
        v115 = *(v32 + 88);
        v117 = *(v32 + 120);
        a15 = *(v32 + 80);
        a16 = *(v32 + 72);
        OUTLINED_FUNCTION_130();
        v62 = swift_slowAlloc();
        OUTLINED_FUNCTION_135();
        a14 = swift_slowAlloc();
        a21 = a14;
        *v62 = 136315138;
        sub_21E343190();
        sub_21E20EE78(&qword_27CEB80D8, MEMORY[0x277CC9260]);
        v63 = sub_21E343F60();
        v64 = v57;
        v66 = v65;
        v67 = OUTLINED_FUNCTION_232();
        a12(v67);
        v68 = v117;
        a18 = *(v61 + 8);
        a18(a10, v68);
        v69 = sub_21E1C80B4(v63, v66, &a21);
        v57 = v64;

        *(v62 + 4) = v69;
        _os_log_impl(&dword_21E1BD000, v59, BYTE4(a11), "finished uploading document with identifier: %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(a14);
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
        v70 = OUTLINED_FUNCTION_57_0();
        MEMORY[0x223D57360](v70);

        (*(a15 + 8))(v115, a16);
      }

      else
      {
        v90 = *(v32 + 144);
        v91 = *(v32 + 120);
        v92 = *(v32 + 128);

        a18 = *(v92 + 8);
        a18(v90, v91);
        v93 = OUTLINED_FUNCTION_151();
        v94(v93);
      }

      v95 = *(v32 + 64);
      (v57)(*(v32 + 136), *(v32 + 152), *(v32 + 120));
      OUTLINED_FUNCTION_270();
      v96 = *(v95 + 72);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v95 + 72) = v96;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v114 = *(v32 + 64);
        v96 = sub_21E1CDED0(0, *(v96 + 16) + 1, 1, v96);
        *(v114 + 72) = v96;
      }

      v99 = *(v96 + 16);
      v98 = *(v96 + 24);
      if (v99 >= v98 >> 1)
      {
        v96 = sub_21E1CDED0(v98 > 1, v99 + 1, 1, v96);
      }

      v100 = *(v32 + 168);
      a17 = *(v32 + 176);
      v101 = *(v32 + 160);
      v103 = *(v32 + 128);
      v102 = *(v32 + 136);
      v104 = *(v32 + 120);
      v105 = *(v32 + 64);
      *(v96 + 16) = v99 + 1;
      a19(v96 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v99, v102, v104);
      *(v105 + 72) = v96;
      swift_endAccess();
      v106 = OUTLINED_FUNCTION_184();
      (a18)(v106);
      (*(v100 + 8))(a17, v101);
    }

    else
    {
      v88 = *(v32 + 104);
      v87 = *(v32 + 112);
      v89 = *(v32 + 96);
      (*(*(v32 + 168) + 8))(*(v32 + 176), *(v32 + 160));
      (*(v88 + 8))(v87, v89);
    }

    goto LABEL_20;
  }

  v37 = *(v32 + 352);
  v38 = *(v32 + 320);
  (*(*(v32 + 200) + 8))(*(v32 + 208), *(v32 + 192));
  if (v37 != v38)
  {
    v71 = *(v32 + 352);
    v72 = *(v32 + 312);
    v73 = sub_21E20DA64(v72);
    sub_21E20DAD4(v71, v73 & 1, v72);
    v74 = *(v32 + 312);
    if (v73)
    {
      v75 = (*(*(v32 + 280) + 16))(*(v32 + 304), v74 + ((*(*(v32 + 280) + 80) + 32) & ~*(*(v32 + 280) + 80)) + *(*(v32 + 280) + 72) * v71, *(v32 + 272));
    }

    else
    {
      v109 = *(v32 + 288);
      v75 = sub_21E20DB3C(v71, v74);
      if (v109 != 8)
      {
        goto LABEL_26;
      }

      v110 = v75;
      v111 = *(v32 + 304);
      v112 = *(v32 + 272);
      v113 = *(v32 + 280);
      *(v32 + 40) = v110;
      (*(v113 + 16))(v111, v32 + 40, v112);
      v75 = swift_unknownObjectRelease();
    }

    *(v32 + 352) = v71 + 1;
    if (!__OFADD__(v71, 1))
    {
      v83 = OUTLINED_FUNCTION_309();
      v85 = v84(v83);
      v86 = OUTLINED_FUNCTION_237(v85);
      OUTLINED_FUNCTION_409(v86);
LABEL_20:
      swift_getAssociatedConformanceWitness();
      swift_task_alloc();
      OUTLINED_FUNCTION_146_0();
      *(v32 + 368) = v107;
      *v107 = v108;
      OUTLINED_FUNCTION_175();
      OUTLINED_FUNCTION_149();

      return MEMORY[0x282200310](v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
    }

    __break(1u);
LABEL_26:
    __break(1u);
    return MEMORY[0x282200310](v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }

  OUTLINED_FUNCTION_269();
  v116 = v40;
  v118 = v39;
  v119 = *(v32 + 88);

  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_149();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, v116, v118, v119, a21, a22, a23, a24);
}

uint64_t sub_21E1EA508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_407();
  v26 = v16[18];
  v27 = v16[17];
  v28 = v16[14];
  v30 = v16[11];
  (*(v16[25] + 8))(v16[26], v16[24]);
  v29 = v16[6];

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_335();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, v29, v30, a14, a15, a16);
}

uint64_t WFAskLLMModelSession.generateTextResponse(userPrompt:isFinalRequest:)(uint64_t a1, char a2)
{
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E1EA638()
{
  OUTLINED_FUNCTION_10();

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_21E1EA6E4;
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_21E1EFC10(v4, 0, 1, v2, v3, v3);
}

uint64_t sub_21E1EA6E4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  OUTLINED_FUNCTION_294();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_3_0();
  }

  return v5(v4);
}

uint64_t sub_21E1EA7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = sub_21E3434D0();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E1EA8A8, 0, 0);
}

uint64_t sub_21E1EA8A8()
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();
  v1 = v0[22];
  if (sub_21E1E2280(v1 + 32))
  {
    sub_21E343100();
    v2 = sub_21E3434C0();
    v3 = sub_21E343B50();
    if (OUTLINED_FUNCTION_238(v3))
    {
      v4 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_293(v4);
      OUTLINED_FUNCTION_123();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    v10 = OUTLINED_FUNCTION_97();
    v11(v10);
    sub_21E1C4248(v1 + 32, (v0 + 2));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498);
    OUTLINED_FUNCTION_173();
    type metadata accessor for WFAFMInstructServerV1Model();
    if (swift_dynamicCast())
    {

      v12 = swift_task_alloc();
      v0[30] = v12;
      *v12 = v0;
      v12[1] = sub_21E1EAD64;
      OUTLINED_FUNCTION_364();

      return sub_21E1EB18C(v13, v14);
    }

    v27 = swift_task_alloc();
    v0[33] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
    OUTLINED_FUNCTION_2_5();
    sub_21E20EE78(v32, v33);
    OUTLINED_FUNCTION_405();
    *v27 = v34;
    v31 = sub_21E1EAFEC;
  }

  else
  {
    sub_21E343100();
    v17 = sub_21E3434C0();
    v18 = sub_21E343B50();
    if (OUTLINED_FUNCTION_238(v18))
    {
      v19 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_293(v19);
      OUTLINED_FUNCTION_123();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    v25 = OUTLINED_FUNCTION_7();
    v26(v25);
    v27 = swift_task_alloc();
    v0[27] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
    OUTLINED_FUNCTION_2_5();
    sub_21E20EE78(v28, v29);
    OUTLINED_FUNCTION_405();
    *v27 = v30;
    v31 = sub_21E1EABC4;
  }

  v27[1] = v31;
  OUTLINED_FUNCTION_364();

  return MEMORY[0x282165A78](v35, v36);
}

uint64_t sub_21E1EABC4()
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_22();
  v7 = v6;
  OUTLINED_FUNCTION_42_1();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;

  if (v0)
  {

    OUTLINED_FUNCTION_323();
    OUTLINED_FUNCTION_364();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    *(v7 + 224) = v3;
    *(v7 + 232) = v5;
    OUTLINED_FUNCTION_253();
    OUTLINED_FUNCTION_364();

    return MEMORY[0x2822009F8](v20, v21, v22);
  }
}

uint64_t sub_21E1EACF8()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[28];
  v2 = v0[20];
  *v2 = v0[29];
  v2[1] = v1;

  OUTLINED_FUNCTION_46_1();

  return v3();
}

uint64_t sub_21E1EAD64()
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_22();
  v7 = v6;
  OUTLINED_FUNCTION_42_1();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;

  if (v0)
  {

    OUTLINED_FUNCTION_323();
    OUTLINED_FUNCTION_364();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    *(v7 + 248) = v3;
    *(v7 + 256) = v5;
    OUTLINED_FUNCTION_253();
    OUTLINED_FUNCTION_364();

    return MEMORY[0x2822009F8](v20, v21, v22);
  }
}

uint64_t sub_21E1EAE98()
{
  v1 = v0[31];
  v0[7] = v0[32];
  v0[8] = v1;
  OUTLINED_FUNCTION_14_4();
  v0[9] = 0xD000000000000012;
  v0[10] = v2;
  v0[11] = 0;
  v0[12] = 0xE000000000000000;
  sub_21E1CB3C4();
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_68_0();
  v3 = sub_21E343CB0();
  v5 = v4;

  v0[13] = v3;
  v0[14] = v5;
  OUTLINED_FUNCTION_160();
  v0[15] = v6;
  OUTLINED_FUNCTION_159();
  v0[16] = v7;
  v0[17] = 0;
  v0[18] = 0xE000000000000000;
  OUTLINED_FUNCTION_68_0();
  v8 = sub_21E343CB0();
  v10 = v9;

  v11 = v0[20];
  *v11 = v8;
  v11[1] = v10;

  OUTLINED_FUNCTION_46_1();

  return v12();
}

uint64_t sub_21E1EAFEC()
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_22();
  v7 = v6;
  OUTLINED_FUNCTION_42_1();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;

  if (v0)
  {

    OUTLINED_FUNCTION_323();
    OUTLINED_FUNCTION_364();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    *(v7 + 272) = v3;
    *(v7 + 280) = v5;
    OUTLINED_FUNCTION_253();
    OUTLINED_FUNCTION_364();

    return MEMORY[0x2822009F8](v20, v21, v22);
  }
}

uint64_t sub_21E1EB120()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[34];
  v2 = v0[20];
  *v2 = v0[35];
  v2[1] = v1;

  OUTLINED_FUNCTION_46_1();

  return v3();
}

uint64_t sub_21E1EB18C(uint64_t a1, char a2)
{
  *(v3 + 136) = v2;
  *(v3 + 105) = a2;
  v4 = sub_21E343820();
  *(v3 + 144) = v4;
  *(v3 + 152) = *(v4 - 8);
  *(v3 + 160) = swift_task_alloc();
  v5 = sub_21E3434D0();
  *(v3 + 168) = v5;
  *(v3 + 176) = *(v5 - 8);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v6 = swift_task_alloc();
  *(v3 + 224) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
  v8 = sub_21E20EE78(&qword_27CEB89A0, MEMORY[0x277D71A98]);
  *v6 = v3;
  v6[1] = sub_21E1EB374;

  return MEMORY[0x282165A78](v7, v8);
}

uint64_t sub_21E1EB374()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  *v3 = *v1;
  v2[29] = v4;
  v2[30] = v5;
  v2[31] = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_21E1EB478()
{
  *(v0 + 112) = *(v0 + 232);
  *(v0 + 120) = *(v0 + 240);
  sub_21E343100();
  v1 = sub_21E3434C0();
  v2 = sub_21E343B50();
  if (OUTLINED_FUNCTION_32(v2))
  {
    v4 = *(v0 + 232);
    v3 = *(v0 + 240);
    v93 = *(v0 + 216);
    v5 = *(v0 + 176);
    v91 = *(v0 + 168);
    OUTLINED_FUNCTION_130();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_135();
    v95[0] = swift_slowAlloc();
    *v6 = 136315138;

    v7 = sub_21E1C80B4(v4, v3, v95);

    *(v6 + 4) = v7;
    _os_log_impl(&dword_21E1BD000, v1, v2, "Generated v2 response: %s", v6, 0xCu);
    OUTLINED_FUNCTION_348();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();

    v8 = v93;
    v94 = *(v5 + 8);
    v94(v8, v91);
  }

  else
  {
    v2 = *(v0 + 176);

    v9 = OUTLINED_FUNCTION_97();
    v94 = v10;
    (v10)(v9);
  }

  v11 = OUTLINED_FUNCTION_132();

  if ((v11 & 1) == 0)
  {
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_270();
    MEMORY[0x223D55240](32034, 0xE200000000000000);
    swift_endAccess();
    sub_21E343100();

    v12 = sub_21E3434C0();
    v13 = sub_21E343B50();
    v14 = OUTLINED_FUNCTION_32(v13);
    v2 = *(v0 + 176);
    v15 = *(v0 + 184);
    v16 = *(v0 + 168);
    if (v14)
    {
      OUTLINED_FUNCTION_130();
      v17 = swift_slowAlloc();
      OUTLINED_FUNCTION_135();
      v95[0] = swift_slowAlloc();
      *v17 = 136315138;
      v18 = OUTLINED_FUNCTION_187();
      v90 = v15;
      v21 = sub_21E1C80B4(v18, v19, v20);

      *(v17 + 4) = v21;
      OUTLINED_FUNCTION_355(&dword_21E1BD000, v12, v13, "Generated response is malformed, updated v2 response: %s");
      OUTLINED_FUNCTION_186();
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();

      v22 = v90;
      v23 = v16;
    }

    else
    {

      v22 = v15;
      v23 = v16;
    }

    v94(v22, v23);
  }

  v24 = *(v0 + 152);
  v25 = *(v0 + 160);
  v26 = *(v0 + 144);

  sub_21E343810();
  sub_21E3437F0();
  OUTLINED_FUNCTION_252();

  (*(v24 + 8))(v25, v26);
  if (v2 >> 60 == 15)
  {
    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_13_5(v27, v28);
    swift_willThrow();
    goto LABEL_13;
  }

  v29 = *(v0 + 248);
  v30 = OUTLINED_FUNCTION_221();
  __swift_instantiateConcreteTypeFromMangledNameV2(v30);
  sub_21E20F428(&qword_27CEB8B18, &qword_27CEB8B10);
  OUTLINED_FUNCTION_137();
  sub_21E343450();
  if (v29)
  {
    v31 = OUTLINED_FUNCTION_137();
    sub_21E1D8430(v31, v32);
    goto LABEL_13;
  }

  v35 = *(v0 + 88);
  v36 = *(v0 + 96);
  if (*(v0 + 104))
  {
    if (*(v0 + 104) == 1)
    {
      v37 = *(v0 + 105);

      if (v37 & 1) == 0 || (sub_21E204D50())
      {
        sub_21E343100();
        v38 = sub_21E3434C0();
        v39 = sub_21E343B50();
        v40 = OUTLINED_FUNCTION_32(v39);
        v41 = *(v0 + 192);
        v92 = *(v0 + 168);
        if (v40)
        {
          OUTLINED_FUNCTION_130();
          v88 = v41;
          v42 = swift_slowAlloc();
          OUTLINED_FUNCTION_135();
          v95[0] = swift_slowAlloc();
          *v42 = 136315138;
          *(v0 + 128) = MEMORY[0x277D837D0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8B20);
          v43 = sub_21E343830();
          v45 = sub_21E1C80B4(v43, v44, v95);

          *(v42 + 4) = v45;
          _os_log_impl(&dword_21E1BD000, v38, v39, "Model generated handleWithCare responses using v2 adapter, returning content for type: %s", v42, 0xCu);
          OUTLINED_FUNCTION_348();
          OUTLINED_FUNCTION_26_1();
          MEMORY[0x223D57360]();
          OUTLINED_FUNCTION_26_1();
          MEMORY[0x223D57360]();
          v46 = OUTLINED_FUNCTION_137();
          sub_21E1D8430(v46, v47);

          v94(v88, v92);
        }

        else
        {
          v68 = OUTLINED_FUNCTION_137();
          sub_21E1D8430(v68, v69);

          v94(v41, v92);
        }

        OUTLINED_FUNCTION_419();

LABEL_28:
        OUTLINED_FUNCTION_416();

        OUTLINED_FUNCTION_294();
        OUTLINED_FUNCTION_221();
        OUTLINED_FUNCTION_342();

        __asm { BRAA            X3, X16 }
      }

      v89 = v35;
      sub_21E343100();
      v72 = sub_21E3434C0();
      v73 = sub_21E343B50();
      if (OUTLINED_FUNCTION_133(v73))
      {
        v74 = OUTLINED_FUNCTION_31();
        *v74 = 0;
        OUTLINED_FUNCTION_142();
        _os_log_impl(v75, v76, v77, v78, v74, 2u);
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
      }

      v79 = *(v0 + 136);

      v80 = OUTLINED_FUNCTION_404();
      v81(v80);
      sub_21E1E8290();
      OUTLINED_FUNCTION_138();
      swift_allocError();
      __swift_project_boxed_opaque_existential_1(v79 + 4, v79[7]);
      v82 = OUTLINED_FUNCTION_304();
      v83(v82);
      OUTLINED_FUNCTION_13_1();
      swift_beginAccess();
      v84 = v79[2];
      OUTLINED_FUNCTION_274(xmmword_21E354140);
      v85 = v84;
      v86 = OUTLINED_FUNCTION_137();
      sub_21E1D8430(v86, v87);
      sub_21E20F47C(v89, v36, 1u);
    }

    else
    {
      sub_21E343100();
      v52 = sub_21E3434C0();
      v53 = sub_21E343B50();
      if (OUTLINED_FUNCTION_133(v53))
      {
        v54 = OUTLINED_FUNCTION_31();
        *v54 = 0;
        OUTLINED_FUNCTION_142();
        _os_log_impl(v55, v56, v57, v58, v54, 2u);
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
      }

      v59 = *(v0 + 136);

      v60 = OUTLINED_FUNCTION_404();
      v61(v60);
      sub_21E1E8290();
      OUTLINED_FUNCTION_138();
      swift_allocError();
      __swift_project_boxed_opaque_existential_1(v59 + 4, v59[7]);
      v62 = OUTLINED_FUNCTION_304();
      v63(v62);
      OUTLINED_FUNCTION_13_1();
      swift_beginAccess();
      v64 = v59[2];
      OUTLINED_FUNCTION_274(xmmword_21E354130);
      v65 = v64;
      v66 = OUTLINED_FUNCTION_137();
      sub_21E1D8430(v66, v67);
    }

    OUTLINED_FUNCTION_419();
LABEL_13:

    OUTLINED_FUNCTION_416();

    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_342();

    __asm { BRAA            X1, X16 }
  }

  v48 = OUTLINED_FUNCTION_221();
  sub_21E20F494(v48, v49, 0);
  v50 = OUTLINED_FUNCTION_137();
  sub_21E1D8430(v50, v51);
  OUTLINED_FUNCTION_419();

  goto LABEL_28;
}

uint64_t sub_21E1EBC9C()
{
  OUTLINED_FUNCTION_212();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_21E1EBD3C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 73) = a3;
  *(v4 + 88) = a1;
  *(v4 + 96) = v3;
  v5 = sub_21E343820();
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 - 8);
  *(v4 + 120) = swift_task_alloc();
  v6 = sub_21E3434D0();
  *(v4 + 128) = v6;
  *(v4 + 136) = *(v6 - 8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v4 + 176) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
  v9 = sub_21E20EE78(&qword_27CEB89A0, MEMORY[0x277D71A98]);
  *v7 = v4;
  v7[1] = sub_21E1EBF18;

  return MEMORY[0x282165A78](v8, v9);
}

uint64_t sub_21E1EBF18()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_379(v3, v4);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_21E1EC624()
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_364();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_21E1EC6B0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 73) = a3;
  *(v4 + 88) = a1;
  *(v4 + 96) = v3;
  v5 = sub_21E343820();
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 - 8);
  *(v4 + 120) = swift_task_alloc();
  v6 = sub_21E3434D0();
  *(v4 + 128) = v6;
  *(v4 + 136) = *(v6 - 8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v4 + 176) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
  v9 = sub_21E20EE78(&qword_27CEB89A0, MEMORY[0x277D71A98]);
  *v7 = v4;
  v7[1] = sub_21E1EC88C;

  return MEMORY[0x282165A78](v8, v9);
}

uint64_t sub_21E1EC88C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_379(v3, v4);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_21E1ECF98(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 194) = a3;
  *(v4 + 72) = a1;
  *(v4 + 80) = v3;
  v5 = sub_21E343820();
  *(v4 + 88) = v5;
  *(v4 + 96) = *(v5 - 8);
  *(v4 + 104) = swift_task_alloc();
  v6 = sub_21E3434D0();
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v4 + 160) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
  v9 = sub_21E20EE78(&qword_27CEB89A0, MEMORY[0x277D71A98]);
  *v7 = v4;
  v7[1] = sub_21E1ED174;

  return MEMORY[0x282165A78](v8, v9);
}

uint64_t sub_21E1ED174()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  *v3 = *v1;
  v2[21] = v4;
  v2[22] = v5;
  v2[23] = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_21E1ED79C()
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_364();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_21E1ED828(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 194) = a3;
  *(v4 + 72) = a1;
  *(v4 + 80) = v3;
  v5 = sub_21E343820();
  *(v4 + 88) = v5;
  *(v4 + 96) = *(v5 - 8);
  *(v4 + 104) = swift_task_alloc();
  v6 = sub_21E3434D0();
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v4 + 160) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
  v9 = sub_21E20EE78(&qword_27CEB89A0, MEMORY[0x277D71A98]);
  *v7 = v4;
  v7[1] = sub_21E1EDA04;

  return MEMORY[0x282165A78](v8, v9);
}

uint64_t sub_21E1EDA04()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  *v3 = *v1;
  v2[21] = v4;
  v2[22] = v5;
  v2[23] = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_21E1EE028(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 73) = a3;
  *(v4 + 88) = a1;
  *(v4 + 96) = v3;
  v5 = sub_21E343820();
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 - 8);
  *(v4 + 120) = swift_task_alloc();
  v6 = sub_21E3434D0();
  *(v4 + 128) = v6;
  *(v4 + 136) = *(v6 - 8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v4 + 176) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
  v9 = sub_21E20EE78(&qword_27CEB89A0, MEMORY[0x277D71A98]);
  *v7 = v4;
  v7[1] = sub_21E1EE204;

  return MEMORY[0x282165A78](v8, v9);
}

uint64_t sub_21E1EE204()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_379(v3, v4);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_21E1EE84C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 106) = a3;
  *(v4 + 168) = a1;
  *(v4 + 176) = v3;
  v5 = sub_21E343820();
  *(v4 + 184) = v5;
  *(v4 + 192) = *(v5 - 8);
  *(v4 + 200) = swift_task_alloc();
  v6 = sub_21E3434D0();
  *(v4 + 208) = v6;
  *(v4 + 216) = *(v6 - 8);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v4 + 256) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
  v9 = sub_21E20EE78(&qword_27CEB89A0, MEMORY[0x277D71A98]);
  *v7 = v4;
  v7[1] = sub_21E1EEA28;

  return MEMORY[0x282165A78](v8, v9);
}

uint64_t sub_21E1EEA28()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  *v3 = *v1;
  v2[33] = v4;
  v2[34] = v5;
  v2[35] = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_21E1EEB2C()
{
  v79 = v0;
  OUTLINED_FUNCTION_284();
  v1 = sub_21E3434C0();
  v2 = sub_21E343B50();
  if (OUTLINED_FUNCTION_133(v2))
  {
    v3 = *(v0 + 264);
    v4 = *(v0 + 216);
    v73 = *(v0 + 208);
    v75 = *(v0 + 248);
    OUTLINED_FUNCTION_130();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_135();
    __src[0] = swift_slowAlloc();
    OUTLINED_FUNCTION_418(4.8149e-34);
    v6 = OUTLINED_FUNCTION_57();
    sub_21E1C80B4(v6, v7, v8);
    OUTLINED_FUNCTION_276();

    *(v5 + 4) = v3;
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_310(v9, v10, v11, v12);
    OUTLINED_FUNCTION_186();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();

    v13 = *(v4 + 8);
    v13(v75, v73);
  }

  else
  {
    v14 = *(v0 + 216);

    v13 = *(v14 + 8);
    v15 = OUTLINED_FUNCTION_7();
    (v13)(v15);
  }

  OUTLINED_FUNCTION_132();

  sub_21E343810();
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_214();
  v16 = OUTLINED_FUNCTION_187();
  v17(v16);
  OUTLINED_FUNCTION_268();
  if (!v19 & v18)
  {
    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_13_5(v20, v21);
    swift_willThrow();
LABEL_9:

    OUTLINED_FUNCTION_8();
    goto LABEL_10;
  }

  v22 = *(v0 + 280);
  v23 = OUTLINED_FUNCTION_62();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23);
  OUTLINED_FUNCTION_417(&qword_27CEB8A20);
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_366();
  if (v22)
  {
    v24 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v24, v25);
    goto LABEL_9;
  }

  memcpy(__dst, (v0 + 16), 0x59uLL);
  if (*(v0 + 105))
  {
    if (*(v0 + 105) == 1)
    {
      v28 = *(v0 + 106);
      memcpy(__src, (v0 + 16), 0x59uLL);
      if (v28 & 1) == 0 || (sub_21E204D50())
      {
        OUTLINED_FUNCTION_284();
        v29 = sub_21E3434C0();
        v30 = sub_21E343B50();
        v31 = os_log_type_enabled(v29, v30);
        v32 = *(v0 + 224);
        v33 = *(v0 + 208);
        if (v31)
        {
          OUTLINED_FUNCTION_130();
          v34 = swift_slowAlloc();
          OUTLINED_FUNCTION_135();
          v74 = v33;
          v35 = swift_slowAlloc();
          v78[0] = v35;
          *v34 = 136315138;
          *(v0 + 160) = &type metadata for DateOutput;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8A10);
          v36 = sub_21E343830();
          sub_21E1C80B4(v36, v37, v78);
          OUTLINED_FUNCTION_299();
          *(v34 + 4) = v32;
          OUTLINED_FUNCTION_310(&dword_21E1BD000, v29, v30, "Model generated handleWithCare responses using v2 adapter, returning content for type: %s");
          __swift_destroy_boxed_opaque_existential_1Tm(v35);
          v38 = OUTLINED_FUNCTION_57_0();
          MEMORY[0x223D57360](v38);
          OUTLINED_FUNCTION_26_1();
          MEMORY[0x223D57360]();
          v39 = OUTLINED_FUNCTION_134();
          sub_21E1D8430(v39, v40);

          v13(v72, v74);
        }

        else
        {
          v57 = OUTLINED_FUNCTION_134();
          sub_21E1D8430(v57, v58);

          v59 = OUTLINED_FUNCTION_184();
          (v13)(v59);
        }

        v45 = *(v0 + 168);
        v44 = __src;
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_284();
      v60 = sub_21E3434C0();
      v61 = sub_21E343B50();
      if (OUTLINED_FUNCTION_162(v61))
      {
        v62 = OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_147(v62);
        OUTLINED_FUNCTION_107(&dword_21E1BD000, v63, v64, "Model generated handleWithCare responses using v2 adapter, throwing an error...");
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
      }

      v65 = *(v0 + 176);

      v66 = OUTLINED_FUNCTION_88();
      (v13)(v66);
      sub_21E1E8290();
      OUTLINED_FUNCTION_138();
      swift_allocError();
      OUTLINED_FUNCTION_23_3();
      v67 = OUTLINED_FUNCTION_221();
      v68(v67);
      OUTLINED_FUNCTION_13_1();
      swift_beginAccess();
      v55 = *(v65 + 16);
      v56 = xmmword_21E354140;
    }

    else
    {
      OUTLINED_FUNCTION_284();
      v46 = sub_21E3434C0();
      v47 = sub_21E343B50();
      if (OUTLINED_FUNCTION_162(v47))
      {
        v48 = OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_147(v48);
        OUTLINED_FUNCTION_107(&dword_21E1BD000, v49, v50, "Model generated unsafe responses using v2 adapter, throwing an error...");
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
      }

      v51 = *(v0 + 176);

      v52 = OUTLINED_FUNCTION_88();
      (v13)(v52);
      sub_21E1E8290();
      OUTLINED_FUNCTION_138();
      swift_allocError();
      OUTLINED_FUNCTION_23_3();
      v53 = OUTLINED_FUNCTION_221();
      v54(v53);
      OUTLINED_FUNCTION_13_1();
      swift_beginAccess();
      v55 = *(v51 + 16);
      v56 = xmmword_21E354130;
    }

    OUTLINED_FUNCTION_22_4(v56);
    swift_willThrow();
    v69 = v55;
    v70 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v70, v71);
    goto LABEL_9;
  }

  v41 = *(v0 + 168);
  v42 = OUTLINED_FUNCTION_134();
  sub_21E1D8430(v42, v43);

  v44 = __dst;
  v45 = v41;
LABEL_25:
  memcpy(v45, v44, 0x59uLL);

  OUTLINED_FUNCTION_46_1();
LABEL_10:

  return v26();
}

uint64_t sub_21E1EF130()
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_364();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_21E1EF1BC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 49) = a3;
  *(v4 + 112) = a1;
  *(v4 + 120) = v3;
  v5 = sub_21E343820();
  *(v4 + 128) = v5;
  *(v4 + 136) = *(v5 - 8);
  *(v4 + 144) = swift_task_alloc();
  v6 = sub_21E3434D0();
  *(v4 + 152) = v6;
  *(v4 + 160) = *(v6 - 8);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v4 + 200) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
  v9 = sub_21E20EE78(&qword_27CEB89A0, MEMORY[0x277D71A98]);
  *v7 = v4;
  v7[1] = sub_21E1EF398;

  return MEMORY[0x282165A78](v8, v9);
}

uint64_t sub_21E1EF398()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  *v3 = *v1;
  v2[26] = v4;
  v2[27] = v5;
  v2[28] = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_21E1EF49C()
{
  v89 = v0;
  sub_21E343100();
  v1 = sub_21E3434C0();
  v2 = sub_21E343B50();
  if (OUTLINED_FUNCTION_133(v2))
  {
    v84 = *(v0 + 192);
    v3 = *(v0 + 152);
    v4 = *(v0 + 160);
    OUTLINED_FUNCTION_130();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_135();
    v6 = swift_slowAlloc();
    v88 = v6;
    *v5 = 136315138;

    v7 = OUTLINED_FUNCTION_137();
    v10 = sub_21E1C80B4(v7, v8, v9);

    *(v5 + 4) = v10;
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_355(v11, v12, v13, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();

    v15 = *(v4 + 8);
    v15(v84, v3);
  }

  else
  {
    v16 = *(v0 + 160);

    v15 = *(v16 + 8);
    v17 = OUTLINED_FUNCTION_7();
    (v15)(v17);
  }

  v18 = *(v0 + 128);

  OUTLINED_FUNCTION_132();

  sub_21E343810();
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_214();
  v19 = OUTLINED_FUNCTION_219();
  v20(v19, v18);
  OUTLINED_FUNCTION_268();
  if (!v22 & v21)
  {
    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_13_5(v23, v24);
    swift_willThrow();
LABEL_9:

    OUTLINED_FUNCTION_8();
    goto LABEL_10;
  }

  v25 = *(v0 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89A8);
  sub_21E20F428(&qword_27CEB89B0, &qword_27CEB89A8);
  OUTLINED_FUNCTION_134();
  sub_21E343450();
  if (v25)
  {
    v26 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v26, v27);
    goto LABEL_9;
  }

  v31 = *(v0 + 16);
  v30 = *(v0 + 24);
  v33 = *(v0 + 32);
  v32 = *(v0 + 40);
  if (!*(v0 + 48))
  {
    sub_21E20EF0C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), 0);
    v45 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v45, v46);
LABEL_24:
    OUTLINED_FUNCTION_290();
    goto LABEL_25;
  }

  if (*(v0 + 48) != 1)
  {
    sub_21E343100();
    v47 = sub_21E3434C0();
    v48 = sub_21E343B50();
    if (OUTLINED_FUNCTION_162(v48))
    {
      v49 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_147(v49);
      OUTLINED_FUNCTION_107(&dword_21E1BD000, v50, v51, "Model generated unsafe responses using v2 adapter, throwing an error...");
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    v52 = *(v0 + 184);
    v53 = *(v0 + 120);

    v54 = OUTLINED_FUNCTION_88();
    (v15)(v54);
    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_257();
    v55 = v53[7];
    v56 = v53[8];
    __swift_project_boxed_opaque_existential_1(v53 + 4, v55);
    OUTLINED_FUNCTION_389();
    v57(v55, v56);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v58 = v53[2];
    OUTLINED_FUNCTION_39_1(xmmword_21E354130);
    *(v52 + 24) = v58;
    OUTLINED_FUNCTION_78(v59);
    swift_willThrow();
    v60 = v58;
    v61 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v61, v62);
    OUTLINED_FUNCTION_290();
    goto LABEL_9;
  }

  v34 = *(v0 + 49);

  if ((v34 & 1) != 0 && (sub_21E204D50() & 1) == 0)
  {
    v82 = v31;
    v86 = v32;
    sub_21E343100();
    v66 = sub_21E3434C0();
    v67 = sub_21E343B50();
    if (OUTLINED_FUNCTION_162(v67))
    {
      v68 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_147(v68);
      OUTLINED_FUNCTION_107(&dword_21E1BD000, v69, v70, "Model generated handleWithCare responses using v2 adapter, throwing an error...");
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    v71 = *(v0 + 120);

    v72 = OUTLINED_FUNCTION_232();
    (v15)(v72);
    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_257();
    v73 = v71[7];
    v74 = v71[8];
    __swift_project_boxed_opaque_existential_1(v71 + 4, v73);
    OUTLINED_FUNCTION_389();
    v75(v73, v74);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v76 = v71[2];
    OUTLINED_FUNCTION_22_4(xmmword_21E354140);
    swift_willThrow();
    v77 = v76;
    v78 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v78, v79);
    sub_21E20EEC0(v82, v30, v33, v86, 1u);
    OUTLINED_FUNCTION_290();
    goto LABEL_9;
  }

  sub_21E343100();
  v35 = sub_21E3434C0();
  v81 = sub_21E343B50();
  v87 = v35;
  v36 = os_log_type_enabled(v35, v81);
  v37 = *(v0 + 168);
  v85 = *(v0 + 152);
  if (!v36)
  {
    v63 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v63, v64);

    v15(v37, v85);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_130();
  v83 = v30;
  v38 = swift_slowAlloc();
  OUTLINED_FUNCTION_135();
  v88 = swift_slowAlloc();
  *v38 = 136315138;
  *(v0 + 104) = &type metadata for TextOrEntityOutput;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8990);
  v39 = sub_21E343830();
  v80 = v37;
  v41 = v32;
  v42 = sub_21E1C80B4(v39, v40, &v88);

  *(v38 + 4) = v42;
  v32 = v41;
  OUTLINED_FUNCTION_355(&dword_21E1BD000, v87, v81, "Model generated handleWithCare responses using v2 adapter, returning content for type: %s");
  OUTLINED_FUNCTION_86();
  v30 = v83;
  OUTLINED_FUNCTION_26_1();
  MEMORY[0x223D57360]();
  v43 = OUTLINED_FUNCTION_134();
  sub_21E1D8430(v43, v44);

  v15(v80, v85);
  OUTLINED_FUNCTION_290();
LABEL_25:

  v65 = *(v0 + 112);
  *v65 = v31 & 1;
  *(v65 + 8) = v30;
  *(v65 + 16) = v33;
  *(v65 + 24) = v32;

  OUTLINED_FUNCTION_46_1();
LABEL_10:

  return v28();
}

uint64_t sub_21E1EFB84()
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_364();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_21E1EFC10(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 784) = a6;
  *(v6 + 776) = a5;
  *(v6 + 1160) = a4;
  *(v6 + 768) = a3;
  *(v6 + 760) = a2;
  *(v6 + 752) = a1;
  sub_21E343820();
  *(v6 + 792) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
  *(v6 + 800) = v7;
  *(v6 + 808) = *(v7 - 8);
  *(v6 + 816) = swift_task_alloc();
  v8 = sub_21E343530();
  *(v6 + 824) = v8;
  *(v6 + 832) = *(v8 - 8);
  *(v6 + 840) = swift_task_alloc();
  *(v6 + 848) = swift_task_alloc();
  *(v6 + 856) = swift_task_alloc();
  *(v6 + 864) = swift_task_alloc();
  *(v6 + 872) = swift_task_alloc();
  *(v6 + 880) = swift_task_alloc();
  *(v6 + 888) = swift_task_alloc();
  *(v6 + 896) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8948);
  *(v6 + 904) = swift_task_alloc();
  v9 = sub_21E342F80();
  *(v6 + 912) = v9;
  *(v6 + 920) = *(v9 - 8);
  *(v6 + 928) = swift_task_alloc();
  v10 = sub_21E343610();
  *(v6 + 936) = v10;
  *(v6 + 944) = *(v10 - 8);
  *(v6 + 952) = swift_task_alloc();
  v11 = sub_21E3434D0();
  *(v6 + 960) = v11;
  *(v6 + 968) = *(v11 - 8);
  *(v6 + 976) = swift_task_alloc();
  *(v6 + 984) = swift_task_alloc();
  *(v6 + 992) = swift_task_alloc();
  *(v6 + 1000) = swift_task_alloc();
  *(v6 + 1008) = swift_task_alloc();
  v12 = sub_21E342CA0();
  *(v6 + 1016) = v12;
  *(v6 + 1024) = *(v12 - 8);
  *(v6 + 1032) = swift_task_alloc();
  *(v6 + 1040) = type metadata accessor for WFLanguageRecognizer();
  *(v6 + 1048) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260);
  *(v6 + 1056) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E1F000C, 0, 0);
}

uint64_t sub_21E1F000C()
{
  v107 = v0;
  v4 = *(v0 + 752);
  if (v4)
  {
    v5 = *(v0 + 1048);
    v1 = *(v0 + 1032);
    v104 = *(v0 + 1016);
    v6 = *(v0 + 776);
    v103 = *(v0 + 1160);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v7 = *(v6 + 16);
    v8 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
    OUTLINED_FUNCTION_270();
    v4;
    v9 = v7;
    OUTLINED_FUNCTION_312();
    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_30_2();
    *(v10 + 32) = v4;
    *(v10 + 40) = v103;
    *(v10 + 48) = 0;
    *&v7[v8] = v11;
    swift_endAccess();

    sub_21E342C90();
    sub_21E342C80();
    v12 = OUTLINED_FUNCTION_54_0();
    v13(v12, v104);
    OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_239(&unk_282F4DEE8);
    OUTLINED_FUNCTION_95([objc_allocWithZone(MEMORY[0x277CD89C0]) init]);
    OUTLINED_FUNCTION_145(v14, v15);
    OUTLINED_FUNCTION_360();

    sub_21E1DD9F8(v5);
    OUTLINED_FUNCTION_176();
    OUTLINED_FUNCTION_311();
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_328();
    OUTLINED_FUNCTION_167();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8950);
    if (OUTLINED_FUNCTION_380())
    {
      v16 = *(v0 + 704);
      v17 = *(v0 + 712);
      sub_21E343100();
      swift_bridgeObjectRetain_n();
      v18 = sub_21E3434C0();
      v19 = sub_21E343B50();

      if (os_log_type_enabled(v18, v19))
      {
        OUTLINED_FUNCTION_130();
        v20 = swift_slowAlloc();
        OUTLINED_FUNCTION_135();
        v21 = swift_slowAlloc();
        v106[0] = v21;
        *v20 = 136315138;
        *(v0 + 720) = v16;
        *(v0 + 728) = v17;
        v22 = sub_21E343830();
        v24 = sub_21E1C80B4(v22, v23, v106);

        *(v20 + 4) = v24;
        OUTLINED_FUNCTION_310(&dword_21E1BD000, v18, v19, "WFAskLLMModelSession using response from cache: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        v25 = OUTLINED_FUNCTION_56_0();
        MEMORY[0x223D57360](v25);
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();

        v26 = OUTLINED_FUNCTION_184();
        v27(v26);
      }

      else
      {

        v89 = OUTLINED_FUNCTION_184();
        v90(v89);
      }

      OUTLINED_FUNCTION_67_0();
      OUTLINED_FUNCTION_395();
      OUTLINED_FUNCTION_249();
      OUTLINED_FUNCTION_168();
      OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_166();

      OUTLINED_FUNCTION_294();
      OUTLINED_FUNCTION_339();

      __asm { BRAA            X3, X16 }
    }

    OUTLINED_FUNCTION_281();
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    OUTLINED_FUNCTION_363();
  }

  *(v0 + 1064) = *MEMORY[0x277D7A440];
  sub_21E343100();

  v28 = sub_21E3434C0();
  sub_21E343B80();
  OUTLINED_FUNCTION_322();
  if (OUTLINED_FUNCTION_326())
  {
    OUTLINED_FUNCTION_130();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_135();
    v105 = swift_slowAlloc();
    v106[0] = v105;
    OUTLINED_FUNCTION_129(4.8751e-34);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    if (!OUTLINED_FUNCTION_34_2())
    {
      v30 = OUTLINED_FUNCTION_29_3();
      v31(v30);
      sub_21E342C80();
      v32 = OUTLINED_FUNCTION_31_2();
      v33(v32);
    }

    v1 = *(v0 + 960);
    *(v0 + 688) = v2;
    *(v0 + 696) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8780);
    v34 = sub_21E343830();
    OUTLINED_FUNCTION_356(v34, v35);
    OUTLINED_FUNCTION_278();
    *(v29 + 4) = v3;
    OUTLINED_FUNCTION_119(&dword_21E1BD000, v36, v37, "Set request prompt locale to %{public}s");
    v38 = v105;
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();

    v39 = OUTLINED_FUNCTION_105();
    (v28)(v39);
  }

  else
  {
    v29 = *(v0 + 968);
    v38 = *(v0 + 960);

    v40 = OUTLINED_FUNCTION_104();
    (v28)(v40);
  }

  *(v0 + 1072) = v28;
  v41 = OUTLINED_FUNCTION_18_3(*(v0 + 776));
  if ((v42(v41) & 1) != 0 && (OUTLINED_FUNCTION_13_1(), swift_beginAccess(), (v43 = sub_21E1D3A1C()) != 0))
  {
    v44 = v43;
    OUTLINED_FUNCTION_193();
    sub_21E1D1464();
    OUTLINED_FUNCTION_182();

    *(v0 + 1080) = v38;
    OUTLINED_FUNCTION_398();
    v45 = swift_task_alloc();
    v46 = OUTLINED_FUNCTION_353(v45);
    *v46 = v47;
    v46[1] = sub_21E1F0974;
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_339();

    return sub_21E205100(v48, v49, v50);
  }

  else
  {
    v53 = *(v0 + 952);
    v54 = *(v0 + 776);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v55 = *(v54 + 16);
    OUTLINED_FUNCTION_58_0();
    if (v53)
    {
      sub_21E1C377C(*(v0 + 1056), &qword_27CEB8260);

      OUTLINED_FUNCTION_67_0();
      OUTLINED_FUNCTION_395();
      OUTLINED_FUNCTION_249();
      OUTLINED_FUNCTION_168();
      OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_171();

      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_339();

      __asm { BRAA            X1, X16 }
    }

    if (sub_21E206230())
    {
      sub_21E342F50();
      v58 = sub_21E342F60();
      OUTLINED_FUNCTION_0_7(v58);
      OUTLINED_FUNCTION_3_9(MEMORY[0x277D84FA0], v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
      OUTLINED_FUNCTION_271();
      v59 = sub_21E3434C0();
      v60 = sub_21E343B50();
      OUTLINED_FUNCTION_133(v60);
      OUTLINED_FUNCTION_392();
      if (v61)
      {
        v62 = OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_147(v62);
        OUTLINED_FUNCTION_45_0();
        _os_log_impl(v63, v64, v65, v66, v67, 2u);
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
      }

      v68 = OUTLINED_FUNCTION_70();
      v1(v68);
    }

    else
    {
      OUTLINED_FUNCTION_271();
      sub_21E3434C0();
      v69 = sub_21E343B50();
      if (OUTLINED_FUNCTION_156(v69))
      {
        v70 = OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_181(v70);
        OUTLINED_FUNCTION_90(&dword_21E1BD000, v71, v72, "Applying greedy decoding");
        v73 = OUTLINED_FUNCTION_56_0();
        MEMORY[0x223D57360](v73);
      }

      OUTLINED_FUNCTION_332();
      v74 = OUTLINED_FUNCTION_71();
      v1(v74);
      v75 = sub_21E342F60();
      OUTLINED_FUNCTION_52(v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82E8);
      inited = swift_initStackObject();
      v77 = OUTLINED_FUNCTION_89(inited, xmmword_21E3522F0);
      v79 = OUTLINED_FUNCTION_283(v77, v78);
      OUTLINED_FUNCTION_1_8(v79, v80, v81, v82, v83, v84, v85, v86, v93, v94, v95, v96, v97, v98, v99, v100);
    }

    v87 = swift_task_alloc();
    *(v0 + 1104) = v87;
    *v87 = v0;
    OUTLINED_FUNCTION_200(v87);
    OUTLINED_FUNCTION_339();

    return sub_21E2063A8();
  }
}

uint64_t sub_21E1F0974()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 1096) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E1F0DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  sub_21E1C377C(*(v24 + 1056), &qword_27CEB8260);

  v34 = *(v24 + 1096);
  OUTLINED_FUNCTION_28_3();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v34, a22, a23, a24);
}

uint64_t sub_21E1F0EDC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v4 = v3;
  OUTLINED_FUNCTION_42_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 1112) = v0;

  if (!v0)
  {
    *(v4 + 1120) = v1;
  }

  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_21E1F1344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = v24[132];
  (*(v24[115] + 8))(v24[116], v24[114]);
  v26 = OUTLINED_FUNCTION_97();
  v27(v26);
  sub_21E1C377C(v25, &qword_27CEB8260);

  v37 = v24[139];
  OUTLINED_FUNCTION_28_3();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v37, a22, a23, a24);
}

uint64_t sub_21E1F14A8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1152) = v0;

  OUTLINED_FUNCTION_218();
  (*(*(v1 + 808) + 8))(*(v5 + 816), *(v1 + 800));
  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_21E1F1B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_403();
  v26(v25[112], v25[103]);
  v27 = OUTLINED_FUNCTION_151();
  v28(v27);
  v29 = OUTLINED_FUNCTION_7();
  v30(v29);
  sub_21E1C377C(v24, &qword_27CEB8260);

  v40 = v25[144];
  OUTLINED_FUNCTION_28_3();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v40, a22, a23, a24);
}

uint64_t sub_21E1F1D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 768) = a7;
  *(v7 + 760) = a6;
  *(v7 + 1144) = a5;
  *(v7 + 752) = a4;
  *(v7 + 744) = a3;
  *(v7 + 736) = a2;
  *(v7 + 728) = a1;
  sub_21E343820();
  *(v7 + 776) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
  *(v7 + 784) = v8;
  *(v7 + 792) = *(v8 - 8);
  *(v7 + 800) = swift_task_alloc();
  v9 = sub_21E343530();
  *(v7 + 808) = v9;
  *(v7 + 816) = *(v9 - 8);
  *(v7 + 824) = swift_task_alloc();
  *(v7 + 832) = swift_task_alloc();
  *(v7 + 840) = swift_task_alloc();
  *(v7 + 848) = swift_task_alloc();
  *(v7 + 856) = swift_task_alloc();
  *(v7 + 864) = swift_task_alloc();
  *(v7 + 872) = swift_task_alloc();
  *(v7 + 880) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8948);
  *(v7 + 888) = swift_task_alloc();
  v10 = sub_21E342F80();
  *(v7 + 896) = v10;
  *(v7 + 904) = *(v10 - 8);
  *(v7 + 912) = swift_task_alloc();
  v11 = sub_21E343610();
  *(v7 + 920) = v11;
  *(v7 + 928) = *(v11 - 8);
  *(v7 + 936) = swift_task_alloc();
  v12 = sub_21E3434D0();
  *(v7 + 944) = v12;
  *(v7 + 952) = *(v12 - 8);
  *(v7 + 960) = swift_task_alloc();
  *(v7 + 968) = swift_task_alloc();
  *(v7 + 976) = swift_task_alloc();
  *(v7 + 984) = swift_task_alloc();
  *(v7 + 992) = swift_task_alloc();
  v13 = sub_21E342CA0();
  *(v7 + 1000) = v13;
  *(v7 + 1008) = *(v13 - 8);
  *(v7 + 1016) = swift_task_alloc();
  *(v7 + 1024) = type metadata accessor for WFLanguageRecognizer();
  *(v7 + 1032) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260);
  *(v7 + 1040) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E1F2110, 0, 0);
}

uint64_t sub_21E1F2988()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 1080) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E1F2D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = OUTLINED_FUNCTION_349();
  sub_21E1C377C(v25, &qword_27CEB8260);

  v35 = *(v24 + 1080);
  OUTLINED_FUNCTION_15_4();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v35, a22, a23, a24);
}

uint64_t sub_21E1F2E94()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v4 = v3;
  OUTLINED_FUNCTION_42_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 1096) = v0;

  if (!v0)
  {
    *(v4 + 1104) = v1;
  }

  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_21E1F32AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = v24[130];
  (*(v24[113] + 8))(v24[114], v24[112]);
  v26 = OUTLINED_FUNCTION_97();
  v27(v26);
  sub_21E1C377C(v25, &qword_27CEB8260);

  v37 = v24[137];
  OUTLINED_FUNCTION_15_4();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v37, a22, a23, a24);
}

uint64_t sub_21E1F3410()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1136) = v0;

  OUTLINED_FUNCTION_218();
  (*(*(v1 + 792) + 8))(*(v5 + 800), *(v1 + 784));
  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_21E1F39FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = *(v24 + 1040);
  (*(v24 + 1112))(*(v24 + 880), *(v24 + 808));
  v26 = OUTLINED_FUNCTION_151();
  v27(v26);
  v28 = OUTLINED_FUNCTION_7();
  v29(v28);
  sub_21E1C377C(v25, &qword_27CEB8260);

  v39 = *(v24 + 1136);
  OUTLINED_FUNCTION_15_4();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v39, a22, a23, a24);
}

uint64_t sub_21E1F3B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 768) = a7;
  *(v7 + 760) = a6;
  *(v7 + 1144) = a5;
  *(v7 + 752) = a4;
  *(v7 + 744) = a3;
  *(v7 + 736) = a2;
  *(v7 + 728) = a1;
  sub_21E343820();
  *(v7 + 776) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
  *(v7 + 784) = v8;
  *(v7 + 792) = *(v8 - 8);
  *(v7 + 800) = swift_task_alloc();
  v9 = sub_21E343530();
  *(v7 + 808) = v9;
  *(v7 + 816) = *(v9 - 8);
  *(v7 + 824) = swift_task_alloc();
  *(v7 + 832) = swift_task_alloc();
  *(v7 + 840) = swift_task_alloc();
  *(v7 + 848) = swift_task_alloc();
  *(v7 + 856) = swift_task_alloc();
  *(v7 + 864) = swift_task_alloc();
  *(v7 + 872) = swift_task_alloc();
  *(v7 + 880) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8948);
  *(v7 + 888) = swift_task_alloc();
  v10 = sub_21E342F80();
  *(v7 + 896) = v10;
  *(v7 + 904) = *(v10 - 8);
  *(v7 + 912) = swift_task_alloc();
  v11 = sub_21E343610();
  *(v7 + 920) = v11;
  *(v7 + 928) = *(v11 - 8);
  *(v7 + 936) = swift_task_alloc();
  v12 = sub_21E3434D0();
  *(v7 + 944) = v12;
  *(v7 + 952) = *(v12 - 8);
  *(v7 + 960) = swift_task_alloc();
  *(v7 + 968) = swift_task_alloc();
  *(v7 + 976) = swift_task_alloc();
  *(v7 + 984) = swift_task_alloc();
  *(v7 + 992) = swift_task_alloc();
  v13 = sub_21E342CA0();
  *(v7 + 1000) = v13;
  *(v7 + 1008) = *(v13 - 8);
  *(v7 + 1016) = swift_task_alloc();
  *(v7 + 1024) = type metadata accessor for WFLanguageRecognizer();
  *(v7 + 1032) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260);
  *(v7 + 1040) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E1F3F7C, 0, 0);
}

uint64_t sub_21E1F47F4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 1080) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E1F4BDC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v4 = v3;
  OUTLINED_FUNCTION_42_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 1096) = v0;

  if (!v0)
  {
    *(v4 + 1104) = v1;
  }

  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_21E1F4FF4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1136) = v0;

  OUTLINED_FUNCTION_218();
  (*(*(v1 + 792) + 8))(*(v5 + 800), *(v1 + 784));
  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_21E1F55E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 744) = a7;
  *(v7 + 736) = a6;
  *(v7 + 1123) = a5;
  *(v7 + 728) = a4;
  *(v7 + 720) = a3;
  *(v7 + 712) = a2;
  *(v7 + 704) = a1;
  sub_21E343820();
  *(v7 + 752) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
  *(v7 + 760) = v8;
  *(v7 + 768) = *(v8 - 8);
  *(v7 + 776) = swift_task_alloc();
  v9 = sub_21E343530();
  *(v7 + 784) = v9;
  *(v7 + 792) = *(v9 - 8);
  *(v7 + 800) = swift_task_alloc();
  *(v7 + 808) = swift_task_alloc();
  *(v7 + 816) = swift_task_alloc();
  *(v7 + 824) = swift_task_alloc();
  *(v7 + 832) = swift_task_alloc();
  *(v7 + 840) = swift_task_alloc();
  *(v7 + 848) = swift_task_alloc();
  *(v7 + 856) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8948);
  *(v7 + 864) = swift_task_alloc();
  v10 = sub_21E342F80();
  *(v7 + 872) = v10;
  *(v7 + 880) = *(v10 - 8);
  *(v7 + 888) = swift_task_alloc();
  v11 = sub_21E343610();
  *(v7 + 896) = v11;
  *(v7 + 904) = *(v11 - 8);
  *(v7 + 912) = swift_task_alloc();
  v12 = sub_21E3434D0();
  *(v7 + 920) = v12;
  *(v7 + 928) = *(v12 - 8);
  *(v7 + 936) = swift_task_alloc();
  *(v7 + 944) = swift_task_alloc();
  *(v7 + 952) = swift_task_alloc();
  *(v7 + 960) = swift_task_alloc();
  *(v7 + 968) = swift_task_alloc();
  v13 = sub_21E342CA0();
  *(v7 + 976) = v13;
  *(v7 + 984) = *(v13 - 8);
  *(v7 + 992) = swift_task_alloc();
  *(v7 + 1000) = type metadata accessor for WFLanguageRecognizer();
  *(v7 + 1008) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260);
  *(v7 + 1016) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E1F59E0, 0, 0);
}

uint64_t sub_21E1F6248()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 1056) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E1F6630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = OUTLINED_FUNCTION_347();
  sub_21E1C377C(v25, &qword_27CEB8260);

  v35 = *(v24 + 1056);
  OUTLINED_FUNCTION_14_5();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v35, a22, a23, a24);
}

uint64_t sub_21E1F6754()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v4 = v3;
  OUTLINED_FUNCTION_42_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 1072) = v0;

  if (!v0)
  {
    *(v4 + 1080) = v1;
  }

  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_21E1F6B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = v24[127];
  (*(v24[110] + 8))(v24[111], v24[109]);
  v26 = OUTLINED_FUNCTION_97();
  v27(v26);
  sub_21E1C377C(v25, &qword_27CEB8260);

  v37 = v24[134];
  OUTLINED_FUNCTION_14_5();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v37, a22, a23, a24);
}

uint64_t sub_21E1F6CC0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1112) = v0;

  OUTLINED_FUNCTION_218();
  (*(*(v1 + 768) + 8))(*(v5 + 776), *(v1 + 760));
  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_21E1F72BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = *(v24 + 1016);
  (*(v24 + 1088))(*(v24 + 856), *(v24 + 784));
  v26 = OUTLINED_FUNCTION_151();
  v27(v26);
  v28 = OUTLINED_FUNCTION_7();
  v29(v28);
  sub_21E1C377C(v25, &qword_27CEB8260);

  v39 = *(v24 + 1112);
  OUTLINED_FUNCTION_14_5();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v39, a22, a23, a24);
}

uint64_t sub_21E1F743C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 744) = a7;
  *(v7 + 736) = a6;
  *(v7 + 1123) = a5;
  *(v7 + 728) = a4;
  *(v7 + 720) = a3;
  *(v7 + 712) = a2;
  *(v7 + 704) = a1;
  sub_21E343820();
  *(v7 + 752) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
  *(v7 + 760) = v8;
  *(v7 + 768) = *(v8 - 8);
  *(v7 + 776) = swift_task_alloc();
  v9 = sub_21E343530();
  *(v7 + 784) = v9;
  *(v7 + 792) = *(v9 - 8);
  *(v7 + 800) = swift_task_alloc();
  *(v7 + 808) = swift_task_alloc();
  *(v7 + 816) = swift_task_alloc();
  *(v7 + 824) = swift_task_alloc();
  *(v7 + 832) = swift_task_alloc();
  *(v7 + 840) = swift_task_alloc();
  *(v7 + 848) = swift_task_alloc();
  *(v7 + 856) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8948);
  *(v7 + 864) = swift_task_alloc();
  v10 = sub_21E342F80();
  *(v7 + 872) = v10;
  *(v7 + 880) = *(v10 - 8);
  *(v7 + 888) = swift_task_alloc();
  v11 = sub_21E343610();
  *(v7 + 896) = v11;
  *(v7 + 904) = *(v11 - 8);
  *(v7 + 912) = swift_task_alloc();
  v12 = sub_21E3434D0();
  *(v7 + 920) = v12;
  *(v7 + 928) = *(v12 - 8);
  *(v7 + 936) = swift_task_alloc();
  *(v7 + 944) = swift_task_alloc();
  *(v7 + 952) = swift_task_alloc();
  *(v7 + 960) = swift_task_alloc();
  *(v7 + 968) = swift_task_alloc();
  v13 = sub_21E342CA0();
  *(v7 + 976) = v13;
  *(v7 + 984) = *(v13 - 8);
  *(v7 + 992) = swift_task_alloc();
  *(v7 + 1000) = type metadata accessor for WFLanguageRecognizer();
  *(v7 + 1008) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260);
  *(v7 + 1016) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E1F783C, 0, 0);
}

uint64_t sub_21E1F80A0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 1056) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E1F8488()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v4 = v3;
  OUTLINED_FUNCTION_42_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 1072) = v0;

  if (!v0)
  {
    *(v4 + 1080) = v1;
  }

  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_21E1F8890()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1112) = v0;

  OUTLINED_FUNCTION_218();
  (*(*(v1 + 768) + 8))(*(v5 + 776), *(v1 + 760));
  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_21E1F8E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 776) = a7;
  *(v7 + 768) = a6;
  *(v7 + 697) = a5;
  *(v7 + 760) = a4;
  *(v7 + 752) = a3;
  *(v7 + 744) = a2;
  *(v7 + 736) = a1;
  sub_21E343820();
  *(v7 + 784) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
  *(v7 + 792) = v8;
  *(v7 + 800) = *(v8 - 8);
  *(v7 + 808) = swift_task_alloc();
  v9 = sub_21E343530();
  *(v7 + 816) = v9;
  *(v7 + 824) = *(v9 - 8);
  *(v7 + 832) = swift_task_alloc();
  *(v7 + 840) = swift_task_alloc();
  *(v7 + 848) = swift_task_alloc();
  *(v7 + 856) = swift_task_alloc();
  *(v7 + 864) = swift_task_alloc();
  *(v7 + 872) = swift_task_alloc();
  *(v7 + 880) = swift_task_alloc();
  *(v7 + 888) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8948);
  *(v7 + 896) = swift_task_alloc();
  v10 = sub_21E342F80();
  *(v7 + 904) = v10;
  *(v7 + 912) = *(v10 - 8);
  *(v7 + 920) = swift_task_alloc();
  v11 = sub_21E343610();
  *(v7 + 928) = v11;
  *(v7 + 936) = *(v11 - 8);
  *(v7 + 944) = swift_task_alloc();
  v12 = sub_21E3434D0();
  *(v7 + 952) = v12;
  *(v7 + 960) = *(v12 - 8);
  *(v7 + 968) = swift_task_alloc();
  *(v7 + 976) = swift_task_alloc();
  *(v7 + 984) = swift_task_alloc();
  *(v7 + 992) = swift_task_alloc();
  *(v7 + 1000) = swift_task_alloc();
  v13 = sub_21E342CA0();
  *(v7 + 1008) = v13;
  *(v7 + 1016) = *(v13 - 8);
  *(v7 + 1024) = swift_task_alloc();
  *(v7 + 1032) = type metadata accessor for WFLanguageRecognizer();
  *(v7 + 1040) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260);
  *(v7 + 1048) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E1F928C, 0, 0);
}

uint64_t sub_21E1F928C()
{
  v109 = v0;
  v4 = *(v0 + 744);
  if (v4)
  {
    v5 = *(v0 + 1040);
    v105 = *(v0 + 1032);
    v106 = *(v0 + 1048);
    v1 = *(v0 + 1024);
    v103 = *(v0 + 1008);
    v6 = *(v0 + 768);
    v102 = *(v0 + 697);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v7 = *(v6 + 16);
    v8 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
    OUTLINED_FUNCTION_270();
    v104 = v4;
    v9 = v7;
    OUTLINED_FUNCTION_312();
    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_30_2();
    *(v10 + 32) = v4;
    *(v10 + 40) = v102;
    *(v10 + 48) = 0;
    *&v7[v8] = v11;
    swift_endAccess();

    sub_21E342C90();
    sub_21E342C80();
    v12 = OUTLINED_FUNCTION_54_0();
    v13(v12, v103);
    OUTLINED_FUNCTION_79(v105);
    OUTLINED_FUNCTION_239(&unk_282F4DEE8);
    *(v5 + 24) = [objc_allocWithZone(MEMORY[0x277CD89C0]) init];
    LOBYTE(v108[0]) = 0;
    sub_21E1D1464();
    WFLanguageRecognizer.locale(for:)(v14, v15, v106);
    OUTLINED_FUNCTION_360();

    sub_21E1DD9F8(v5);
    OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_311();
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_192();
    OUTLINED_FUNCTION_167();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8950);
    if (OUTLINED_FUNCTION_380())
    {
      v16 = *(v0 + 688);
      sub_21E343100();
      v17 = sub_21E3434C0();
      sub_21E343B50();
      OUTLINED_FUNCTION_277();
      if (os_log_type_enabled(v17, v18))
      {
        OUTLINED_FUNCTION_130();
        v19 = swift_slowAlloc();
        OUTLINED_FUNCTION_135();
        v20 = swift_slowAlloc();
        v108[0] = v20;
        *v19 = 136315138;
        *(v0 + 728) = v16;
        v21 = sub_21E343830();
        v23 = sub_21E1C80B4(v21, v22, v108);

        *(v19 + 4) = v23;
        OUTLINED_FUNCTION_233(&dword_21E1BD000, v24, v25, "WFAskLLMModelSession using response from cache: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
        v26 = OUTLINED_FUNCTION_57_0();
        MEMORY[0x223D57360](v26);

        v27 = OUTLINED_FUNCTION_190();
        v28(v27);
      }

      else
      {

        v88 = OUTLINED_FUNCTION_190();
        v89(v88);
      }

      **(v0 + 736) = v16;
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_183();
      OUTLINED_FUNCTION_180();
      OUTLINED_FUNCTION_153();
      OUTLINED_FUNCTION_220();

      OUTLINED_FUNCTION_46_1();
LABEL_31:
      OUTLINED_FUNCTION_361();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_281();
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    OUTLINED_FUNCTION_363();
  }

  *(v0 + 1056) = *MEMORY[0x277D7A440];
  sub_21E343100();

  v29 = sub_21E3434C0();
  sub_21E343B80();
  OUTLINED_FUNCTION_322();
  if (OUTLINED_FUNCTION_326())
  {
    OUTLINED_FUNCTION_130();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_135();
    v107 = swift_slowAlloc();
    v108[0] = v107;
    OUTLINED_FUNCTION_129(4.8751e-34);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    if (!OUTLINED_FUNCTION_34_2())
    {
      v31 = OUTLINED_FUNCTION_29_3();
      v32(v31);
      sub_21E342C80();
      v33 = OUTLINED_FUNCTION_31_2();
      v34(v33);
    }

    v1 = *(v0 + 952);
    *(v0 + 672) = v2;
    *(v0 + 680) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8780);
    v35 = sub_21E343830();
    sub_21E1C80B4(v35, v36, v108);
    OUTLINED_FUNCTION_278();
    *(v30 + 4) = v3;
    OUTLINED_FUNCTION_119(&dword_21E1BD000, v37, v38, "Set request prompt locale to %{public}s");
    v39 = v107;
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();

    v40 = OUTLINED_FUNCTION_105();
    (v29)(v40);
  }

  else
  {
    v30 = *(v0 + 960);
    v39 = *(v0 + 952);

    v41 = OUTLINED_FUNCTION_104();
    (v29)(v41);
  }

  *(v0 + 1064) = v29;
  v42 = OUTLINED_FUNCTION_18_3(*(v0 + 768));
  if (v43(v42))
  {
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v44 = sub_21E1D3A1C();
    if (v44)
    {
      v45 = v44;
      v46 = *(v0 + 760);
      v47 = *(v0 + 752);
      LOBYTE(v108[0]) = 0;
      sub_21E1D1464();
      OUTLINED_FUNCTION_182();

      *(v0 + 1072) = v39;
      *(v0 + 656) = v47;
      *(v0 + 664) = v46;
      v48 = swift_task_alloc();
      *(v0 + 1080) = v48;
      *v48 = v0;
      v48[1] = sub_21E1F9BE8;
      OUTLINED_FUNCTION_98();
      OUTLINED_FUNCTION_361();

      return sub_21E205100(v49, v50, v51);
    }
  }

  v54 = *(v0 + 944);
  v55 = *(v0 + 768);
  OUTLINED_FUNCTION_13_1();
  swift_beginAccess();
  v56 = *(v55 + 16);
  OUTLINED_FUNCTION_58_0();
  if (v54)
  {
    sub_21E1C377C(*(v0 + 1048), &qword_27CEB8260);

    OUTLINED_FUNCTION_91();
    OUTLINED_FUNCTION_183();
    OUTLINED_FUNCTION_180();
    OUTLINED_FUNCTION_153();
    OUTLINED_FUNCTION_171();

    OUTLINED_FUNCTION_8();
    goto LABEL_31;
  }

  if (sub_21E206230())
  {
    sub_21E342F50();
    v57 = sub_21E342F60();
    OUTLINED_FUNCTION_0_7(v57);
    OUTLINED_FUNCTION_3_9(MEMORY[0x277D84FA0], v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
    OUTLINED_FUNCTION_271();
    v58 = sub_21E3434C0();
    v59 = sub_21E343B50();
    OUTLINED_FUNCTION_133(v59);
    OUTLINED_FUNCTION_383();
    if (v60)
    {
      v61 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_147(v61);
      OUTLINED_FUNCTION_45_0();
      _os_log_impl(v62, v63, v64, v65, v66, 2u);
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    v67 = OUTLINED_FUNCTION_70();
    v1(v67);
  }

  else
  {
    OUTLINED_FUNCTION_271();
    sub_21E3434C0();
    v68 = sub_21E343B50();
    if (OUTLINED_FUNCTION_156(v68))
    {
      v69 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_181(v69);
      OUTLINED_FUNCTION_90(&dword_21E1BD000, v70, v71, "Applying greedy decoding");
      v72 = OUTLINED_FUNCTION_56_0();
      MEMORY[0x223D57360](v72);
    }

    OUTLINED_FUNCTION_329();
    v73 = OUTLINED_FUNCTION_71();
    v1(v73);
    v74 = sub_21E342F60();
    OUTLINED_FUNCTION_52(v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82E8);
    inited = swift_initStackObject();
    v76 = OUTLINED_FUNCTION_89(inited, xmmword_21E3522F0);
    v78 = OUTLINED_FUNCTION_283(v76, v77);
    OUTLINED_FUNCTION_1_8(v78, v79, v80, v81, v82, v83, v84, v85, v92, v93, v94, v95, v96, v97, v98, v99);
  }

  v86 = swift_task_alloc();
  *(v0 + 1096) = v86;
  *v86 = v0;
  OUTLINED_FUNCTION_198(v86);
  OUTLINED_FUNCTION_361();

  return sub_21E207270();
}

uint64_t sub_21E1F9BE8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 1088) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E1FA02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  sub_21E1C377C(*(v24 + 1048), &qword_27CEB8260);

  v34 = *(v24 + 1088);
  OUTLINED_FUNCTION_27_2();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v34, a22, a23, a24);
}

uint64_t sub_21E1FA154()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v4 = v3;
  OUTLINED_FUNCTION_42_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 1104) = v0;

  if (!v0)
  {
    *(v4 + 1112) = v1;
  }

  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_21E1FA5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = v24[131];
  (*(v24[114] + 8))(v24[115], v24[113]);
  v26 = OUTLINED_FUNCTION_97();
  v27(v26);
  sub_21E1C377C(v25, &qword_27CEB8260);

  v37 = v24[138];
  OUTLINED_FUNCTION_27_2();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v37, a22, a23, a24);
}

uint64_t sub_21E1FA720()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1144) = v0;

  OUTLINED_FUNCTION_218();
  (*(*(v1 + 800) + 8))(*(v5 + 808), *(v1 + 792));
  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_21E1FADD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_396();
  v26(v25[111], v25[102]);
  v27 = OUTLINED_FUNCTION_151();
  v28(v27);
  v29 = OUTLINED_FUNCTION_7();
  v30(v29);
  sub_21E1C377C(v24, &qword_27CEB8260);

  v40 = v25[143];
  OUTLINED_FUNCTION_27_2();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v40, a22, a23, a24);
}

uint64_t sub_21E1FAF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 792) = a7;
  *(v7 + 784) = a6;
  *(v7 + 1168) = a5;
  *(v7 + 776) = a4;
  *(v7 + 768) = a3;
  *(v7 + 760) = a2;
  *(v7 + 752) = a1;
  sub_21E343820();
  *(v7 + 800) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
  *(v7 + 808) = v8;
  *(v7 + 816) = *(v8 - 8);
  *(v7 + 824) = swift_task_alloc();
  v9 = sub_21E343530();
  *(v7 + 832) = v9;
  *(v7 + 840) = *(v9 - 8);
  *(v7 + 848) = swift_task_alloc();
  *(v7 + 856) = swift_task_alloc();
  *(v7 + 864) = swift_task_alloc();
  *(v7 + 872) = swift_task_alloc();
  *(v7 + 880) = swift_task_alloc();
  *(v7 + 888) = swift_task_alloc();
  *(v7 + 896) = swift_task_alloc();
  *(v7 + 904) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8948);
  *(v7 + 912) = swift_task_alloc();
  v10 = sub_21E342F80();
  *(v7 + 920) = v10;
  *(v7 + 928) = *(v10 - 8);
  *(v7 + 936) = swift_task_alloc();
  v11 = sub_21E343610();
  *(v7 + 944) = v11;
  *(v7 + 952) = *(v11 - 8);
  *(v7 + 960) = swift_task_alloc();
  v12 = sub_21E3434D0();
  *(v7 + 968) = v12;
  *(v7 + 976) = *(v12 - 8);
  *(v7 + 984) = swift_task_alloc();
  *(v7 + 992) = swift_task_alloc();
  *(v7 + 1000) = swift_task_alloc();
  *(v7 + 1008) = swift_task_alloc();
  *(v7 + 1016) = swift_task_alloc();
  v13 = sub_21E342CA0();
  *(v7 + 1024) = v13;
  *(v7 + 1032) = *(v13 - 8);
  *(v7 + 1040) = swift_task_alloc();
  *(v7 + 1048) = type metadata accessor for WFLanguageRecognizer();
  *(v7 + 1056) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260);
  *(v7 + 1064) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E1FB34C, 0, 0);
}

uint64_t sub_21E1FBCBC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 1104) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E1FC0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  sub_21E1C377C(*(v24 + 1064), &qword_27CEB8260);

  v34 = *(v24 + 1104);
  OUTLINED_FUNCTION_25_3();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v34, a22, a23, a24);
}

uint64_t sub_21E1FC210()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v4 = v3;
  OUTLINED_FUNCTION_42_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 1120) = v0;

  if (!v0)
  {
    *(v4 + 1128) = v1;
  }

  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_21E1FC678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = v24[133];
  (*(v24[116] + 8))(v24[117], v24[115]);
  v26 = OUTLINED_FUNCTION_97();
  v27(v26);
  sub_21E1C377C(v25, &qword_27CEB8260);

  v37 = v24[140];
  OUTLINED_FUNCTION_25_3();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v37, a22, a23, a24);
}

uint64_t sub_21E1FC7DC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1160) = v0;

  OUTLINED_FUNCTION_218();
  (*(*(v1 + 816) + 8))(*(v5 + 824), *(v1 + 808));
  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_21E1FCEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_394();
  v26(v25[113], v25[104]);
  v27 = OUTLINED_FUNCTION_151();
  v28(v27);
  v29 = OUTLINED_FUNCTION_7();
  v30(v29);
  sub_21E1C377C(v24, &qword_27CEB8260);

  v40 = v25[145];
  OUTLINED_FUNCTION_25_3();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v40, a22, a23, a24);
}

uint64_t sub_21E1FD020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 896) = a7;
  *(v7 + 888) = a6;
  *(v7 + 106) = a5;
  *(v7 + 880) = a4;
  *(v7 + 872) = a3;
  *(v7 + 864) = a2;
  *(v7 + 856) = a1;
  sub_21E343820();
  *(v7 + 904) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
  *(v7 + 912) = v8;
  *(v7 + 920) = *(v8 - 8);
  *(v7 + 928) = swift_task_alloc();
  v9 = sub_21E343530();
  *(v7 + 936) = v9;
  *(v7 + 944) = *(v9 - 8);
  *(v7 + 952) = swift_task_alloc();
  *(v7 + 960) = swift_task_alloc();
  *(v7 + 968) = swift_task_alloc();
  *(v7 + 976) = swift_task_alloc();
  *(v7 + 984) = swift_task_alloc();
  *(v7 + 992) = swift_task_alloc();
  *(v7 + 1000) = swift_task_alloc();
  *(v7 + 1008) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8948);
  *(v7 + 1016) = swift_task_alloc();
  v10 = sub_21E342F80();
  *(v7 + 1024) = v10;
  *(v7 + 1032) = *(v10 - 8);
  *(v7 + 1040) = swift_task_alloc();
  v11 = sub_21E343610();
  *(v7 + 1048) = v11;
  *(v7 + 1056) = *(v11 - 8);
  *(v7 + 1064) = swift_task_alloc();
  v12 = sub_21E3434D0();
  *(v7 + 1072) = v12;
  *(v7 + 1080) = *(v12 - 8);
  *(v7 + 1088) = swift_task_alloc();
  *(v7 + 1096) = swift_task_alloc();
  *(v7 + 1104) = swift_task_alloc();
  *(v7 + 1112) = swift_task_alloc();
  *(v7 + 1120) = swift_task_alloc();
  v13 = sub_21E342CA0();
  *(v7 + 1128) = v13;
  *(v7 + 1136) = *(v13 - 8);
  *(v7 + 1144) = swift_task_alloc();
  *(v7 + 1152) = type metadata accessor for WFLanguageRecognizer();
  *(v7 + 1160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260);
  *(v7 + 1168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E1FD420, 0, 0);
}

uint64_t sub_21E1FD420()
{
  v116 = v0;
  v4 = *(v0 + 864);
  if (v4)
  {
    v5 = *(v0 + 1160);
    v112 = *(v0 + 1152);
    v113 = *(v0 + 1168);
    v1 = *(v0 + 1144);
    v6 = *(v0 + 888);
    v110 = *(v0 + 106);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v7 = *(v6 + 16);
    OUTLINED_FUNCTION_270();
    v111 = v4;
    v8 = v7;
    OUTLINED_FUNCTION_312();
    v9 = OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_12_5(v9, v10, v11, v12, v13, v14, v15, v16, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
    swift_endAccess();

    sub_21E342C90();
    sub_21E342C80();
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_282();
    v17();
    OUTLINED_FUNCTION_79(v112);
    OUTLINED_FUNCTION_239(&unk_282F4DEE8);
    *(v5 + 24) = [objc_allocWithZone(MEMORY[0x277CD89C0]) init];
    LOBYTE(__dst[0]) = 0;
    sub_21E1D1464();
    WFLanguageRecognizer.locale(for:)(v18, v19, v113);
    OUTLINED_FUNCTION_360();

    sub_21E1DD9F8(v5);
    OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_311();
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_328();
    OUTLINED_FUNCTION_8_4();
    sub_21E1CB024(v20, v21);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8950);
    if (swift_dynamicCast())
    {
      *(v0 + 105) = 0;
      memcpy(__dst, (v0 + 16), 0x5AuLL);
      sub_21E343100();
      v22 = sub_21E3434C0();
      sub_21E343B50();
      OUTLINED_FUNCTION_277();
      if (os_log_type_enabled(v22, v23))
      {
        OUTLINED_FUNCTION_130();
        v24 = swift_slowAlloc();
        OUTLINED_FUNCTION_135();
        __dst[12] = swift_slowAlloc();
        *v24 = 136315138;
        memcpy((v0 + 112), __dst, 0x59uLL);
        v25 = sub_21E343830();
        v27 = OUTLINED_FUNCTION_381(v25, v26);

        *(v24 + 4) = v27;
        OUTLINED_FUNCTION_233(&dword_21E1BD000, v28, v29, "WFAskLLMModelSession using response from cache: %s");
        OUTLINED_FUNCTION_348();
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
        v30 = OUTLINED_FUNCTION_57_0();
        MEMORY[0x223D57360](v30);
      }

      v31 = OUTLINED_FUNCTION_190();
      v32(v31);

      memcpy(*(v0 + 856), __dst, 0x59uLL);
      OUTLINED_FUNCTION_215();
      OUTLINED_FUNCTION_266();
      OUTLINED_FUNCTION_265();

      OUTLINED_FUNCTION_46_1();
LABEL_30:
      OUTLINED_FUNCTION_408();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_281();
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    OUTLINED_FUNCTION_363();
  }

  *(v0 + 1176) = *MEMORY[0x277D7A440];
  sub_21E343100();

  v33 = sub_21E3434C0();
  sub_21E343B80();
  OUTLINED_FUNCTION_322();
  if (OUTLINED_FUNCTION_326())
  {
    OUTLINED_FUNCTION_130();
    v34 = swift_slowAlloc();
    OUTLINED_FUNCTION_135();
    v114 = swift_slowAlloc();
    __dst[0] = v114;
    OUTLINED_FUNCTION_129(4.8751e-34);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    if (!OUTLINED_FUNCTION_34_2())
    {
      v35 = OUTLINED_FUNCTION_29_3();
      v36(v35);
      sub_21E342C80();
      v37 = OUTLINED_FUNCTION_31_2();
      v38(v37);
    }

    v1 = *(v0 + 1072);
    *(v0 + 824) = v2;
    *(v0 + 832) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8780);
    v39 = sub_21E343830();
    sub_21E1C80B4(v39, v40, __dst);
    OUTLINED_FUNCTION_278();
    *(v34 + 4) = v3;
    OUTLINED_FUNCTION_119(&dword_21E1BD000, v41, v42, "Set request prompt locale to %{public}s");
    v43 = v114;
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();

    v44 = OUTLINED_FUNCTION_105();
    (v33)(v44);
  }

  else
  {
    v34 = *(v0 + 1080);
    v43 = *(v0 + 1072);

    v45 = OUTLINED_FUNCTION_104();
    (v33)(v45);
  }

  *(v0 + 1184) = v33;
  v46 = OUTLINED_FUNCTION_18_3(*(v0 + 888));
  if (v47(v46))
  {
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v48 = sub_21E1D3A1C();
    if (v48)
    {
      v49 = v48;
      v50 = *(v0 + 880);
      v51 = *(v0 + 872);
      LOBYTE(__dst[0]) = 0;
      sub_21E1D1464();
      OUTLINED_FUNCTION_182();

      *(v0 + 1192) = v43;
      *(v0 + 808) = v51;
      *(v0 + 816) = v50;
      v52 = swift_task_alloc();
      *(v0 + 1200) = v52;
      *v52 = v0;
      v52[1] = sub_21E1FDD68;
      OUTLINED_FUNCTION_98();
      OUTLINED_FUNCTION_408();

      return sub_21E205100(v53, v54, v55);
    }
  }

  v58 = *(v0 + 1064);
  v59 = *(v0 + 888);
  OUTLINED_FUNCTION_13_1();
  swift_beginAccess();
  v60 = *(v59 + 16);
  OUTLINED_FUNCTION_58_0();
  if (v58)
  {
    sub_21E1C377C(*(v0 + 1168), &qword_27CEB8260);

    OUTLINED_FUNCTION_247();
    OUTLINED_FUNCTION_266();
    OUTLINED_FUNCTION_265();

    OUTLINED_FUNCTION_8();
    goto LABEL_30;
  }

  if (sub_21E206230())
  {
    sub_21E342F50();
    v61 = sub_21E342F60();
    OUTLINED_FUNCTION_0_7(v61);
    OUTLINED_FUNCTION_3_9(MEMORY[0x277D84FA0], v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
    OUTLINED_FUNCTION_271();
    v62 = sub_21E3434C0();
    v63 = sub_21E343B50();
    OUTLINED_FUNCTION_133(v63);
    OUTLINED_FUNCTION_388();
    if (v64)
    {
      v65 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_147(v65);
      OUTLINED_FUNCTION_45_0();
      _os_log_impl(v66, v67, v68, v69, v70, 2u);
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    v71 = OUTLINED_FUNCTION_70();
    v1(v71);
  }

  else
  {
    OUTLINED_FUNCTION_271();
    sub_21E3434C0();
    v72 = sub_21E343B50();
    if (OUTLINED_FUNCTION_156(v72))
    {
      v73 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_181(v73);
      OUTLINED_FUNCTION_90(&dword_21E1BD000, v74, v75, "Applying greedy decoding");
      v76 = OUTLINED_FUNCTION_56_0();
      MEMORY[0x223D57360](v76);
    }

    OUTLINED_FUNCTION_331();
    v77 = OUTLINED_FUNCTION_71();
    v1(v77);
    v78 = sub_21E342F60();
    OUTLINED_FUNCTION_52(v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82E8);
    OUTLINED_FUNCTION_387();
    v79 = swift_allocObject();
    v80 = OUTLINED_FUNCTION_89(v79, xmmword_21E3522F0);
    v82 = OUTLINED_FUNCTION_283(v80, v81);
    OUTLINED_FUNCTION_1_8(v82, v83, v84, v85, v86, v87, v88, v89, v94, v95, v96, v97, v98, v99, v100, v101);
  }

  v90 = swift_task_alloc();
  *(v0 + 1216) = v90;
  *v90 = v0;
  OUTLINED_FUNCTION_197(v90);
  OUTLINED_FUNCTION_408();

  return sub_21E207868();
}

uint64_t sub_21E1FDD68()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 1208) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E1FE1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  sub_21E1C377C(*(v24 + 1168), &qword_27CEB8260);

  v34 = *(v24 + 1208);
  OUTLINED_FUNCTION_26_2();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v34, a22, a23, a24);
}

uint64_t sub_21E1FE2C8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v4 = v3;
  OUTLINED_FUNCTION_42_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 1224) = v0;

  if (!v0)
  {
    *(v4 + 1232) = v1;
  }

  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_21E1FE7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = v24[146];
  (*(v24[129] + 8))(v24[130], v24[128]);
  v26 = OUTLINED_FUNCTION_97();
  v27(v26);
  sub_21E1C377C(v25, &qword_27CEB8260);

  v37 = v24[153];
  OUTLINED_FUNCTION_26_2();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v37, a22, a23, a24);
}

uint64_t sub_21E1FE90C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1264) = v0;

  OUTLINED_FUNCTION_218();
  (*(*(v1 + 920) + 8))(*(v5 + 928), *(v1 + 912));
  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_21E1FEFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_393();
  v26(v25[126], v25[117]);
  v27 = OUTLINED_FUNCTION_151();
  v28(v27);
  v29 = OUTLINED_FUNCTION_7();
  v30(v29);
  sub_21E1C377C(v24, &qword_27CEB8260);

  v40 = v25[158];
  OUTLINED_FUNCTION_26_2();

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v40, a22, a23, a24);
}

uint64_t sub_21E1FF170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 968) = a7;
  *(v7 + 960) = a6;
  *(v7 + 1344) = a5;
  *(v7 + 952) = a4;
  *(v7 + 944) = a3;
  *(v7 + 936) = a2;
  *(v7 + 928) = a1;
  sub_21E343820();
  *(v7 + 976) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
  *(v7 + 984) = v8;
  *(v7 + 992) = *(v8 - 8);
  *(v7 + 1000) = swift_task_alloc();
  v9 = sub_21E343530();
  *(v7 + 1008) = v9;
  *(v7 + 1016) = *(v9 - 8);
  *(v7 + 1024) = swift_task_alloc();
  *(v7 + 1032) = swift_task_alloc();
  *(v7 + 1040) = swift_task_alloc();
  *(v7 + 1048) = swift_task_alloc();
  *(v7 + 1056) = swift_task_alloc();
  *(v7 + 1064) = swift_task_alloc();
  *(v7 + 1072) = swift_task_alloc();
  *(v7 + 1080) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8948);
  *(v7 + 1088) = swift_task_alloc();
  v10 = sub_21E342F80();
  *(v7 + 1096) = v10;
  *(v7 + 1104) = *(v10 - 8);
  *(v7 + 1112) = swift_task_alloc();
  v11 = sub_21E343610();
  *(v7 + 1120) = v11;
  *(v7 + 1128) = *(v11 - 8);
  *(v7 + 1136) = swift_task_alloc();
  v12 = sub_21E3434D0();
  *(v7 + 1144) = v12;
  *(v7 + 1152) = *(v12 - 8);
  *(v7 + 1160) = swift_task_alloc();
  *(v7 + 1168) = swift_task_alloc();
  *(v7 + 1176) = swift_task_alloc();
  *(v7 + 1184) = swift_task_alloc();
  *(v7 + 1192) = swift_task_alloc();
  v13 = sub_21E342CA0();
  *(v7 + 1200) = v13;
  *(v7 + 1208) = *(v13 - 8);
  *(v7 + 1216) = swift_task_alloc();
  *(v7 + 1224) = type metadata accessor for WFLanguageRecognizer();
  *(v7 + 1232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260);
  *(v7 + 1240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E1FF570, 0, 0);
}

uint64_t sub_21E1FFF28()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 1280) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E200324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  sub_21E1C377C(*(v24 + 1240), &qword_27CEB8260);

  OUTLINED_FUNCTION_64_0(*(v24 + 1280));

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_21E200448()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v4 = v3;
  OUTLINED_FUNCTION_42_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 1296) = v0;

  if (!v0)
  {
    *(v4 + 1304) = v1;
  }

  OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_21E200928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = v24[155];
  (*(v24[138] + 8))(v24[139], v24[137]);
  v26 = OUTLINED_FUNCTION_97();
  v27(v26);
  sub_21E1C377C(v25, &qword_27CEB8260);

  OUTLINED_FUNCTION_64_0(v24[162]);

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_21E200A88()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 1336) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E200B80()
{
  v100 = v0;
  v94 = *(v0 + 1000);
  v97 = *(v0 + 1336);
  v1 = *(v0 + 992);
  v2 = *(v0 + 488);
  v3 = *(v0 + 504);
  v88 = *(v0 + 512);
  v91 = *(v0 + 984);
  *(v0 + 896) = *(v0 + 496);
  *(v0 + 904) = v3;
  OUTLINED_FUNCTION_14_4();
  *(v0 + 784) = v4;
  *(v0 + 792) = v5;
  *(v0 + 800) = 0;
  *(v0 + 808) = 0xE000000000000000;
  sub_21E1CB3C4();
  OUTLINED_FUNCTION_68_0();
  *(v0 + 816) = OUTLINED_FUNCTION_420();
  *(v0 + 824) = v6;
  OUTLINED_FUNCTION_160();
  *(v0 + 832) = v7;
  OUTLINED_FUNCTION_159();
  *(v0 + 840) = v8;
  *(v0 + 848) = 0;
  *(v0 + 856) = 0xE000000000000000;
  OUTLINED_FUNCTION_68_0();
  v9 = OUTLINED_FUNCTION_420();
  v11 = v10;

  *(v0 + 392) = v2;
  *(v0 + 400) = v9;
  *(v0 + 408) = v11;
  *(v0 + 416) = v88;
  (*(v1 + 8))(v94, v91);
  sub_21E342A20();
  OUTLINED_FUNCTION_234();
  swift_allocObject();
  sub_21E342A10();
  sub_21E20ECF0();
  sub_21E342A00();
  if (v97)
  {
    v12 = v97;
  }

  else
  {

    sub_21E343810();
    OUTLINED_FUNCTION_57();
    v40 = sub_21E343800();
    if (v41)
    {
      v42 = v40;
      v43 = v41;
      v96 = *(v0 + 936);
      v98 = (v0 + 392);
      v44 = *(*(v0 + 960) + 16);
      v92 = *(v0 + 1344) | 0x80;
      v45 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
      OUTLINED_FUNCTION_270();
      v46 = v44;
      sub_21E1C41D4();
      v47 = *(*&v44[v45] + 16);
      sub_21E1C4418(v47);
      v48 = *&v44[v45];
      *(v48 + 16) = v47 + 1;
      v49 = v48 + 24 * v47;
      *(v49 + 32) = v42;
      *(v49 + 40) = v43;
      *(v49 + 48) = v92;
      *&v44[v45] = v48;
      swift_endAccess();
      v50 = OUTLINED_FUNCTION_57();
      sub_21E1C99C4(v50, v51);

      v52 = *(v0 + 1312);
      v53 = *(v0 + 1240);
      v54 = *(v0 + 1136);
      v55 = *(v0 + 1128);
      v56 = *(v0 + 1120);
      v57 = *(v0 + 1104);
      v58 = *(v0 + 1080);
      v59 = *(v0 + 1008);
      if (v96)
      {
        v93 = *(v0 + 1112);
        v60 = *(v0 + 952);
        v90 = *(v0 + 1096);
        v61 = *(v0 + 944);
        v99[3] = &type metadata for TextOrEntityOutput;
        v83 = v58;
        v85 = v52;
        v99[4] = sub_21E20ED44();
        OUTLINED_FUNCTION_387();
        v62 = swift_allocObject();
        v99[0] = v62;
        v86 = v53;
        v63 = *(v0 + 400);
        v64 = *(v0 + 408);
        v81 = v56;
        v65 = *(v0 + 416);
        *(v62 + 16) = *v98;
        *(v62 + 24) = v63;
        *(v62 + 32) = v64;
        *(v62 + 40) = v65;
        OUTLINED_FUNCTION_270();
        v66 = OUTLINED_FUNCTION_57();
        sub_21E1DF880(v66, v67);

        sub_21E1E89CC(v99, v61, v60);
        swift_endAccess();
        v85(v83, v59);
        (*(v57 + 8))(v93, v90);
        (*(v55 + 8))(v54, v81);
        sub_21E1C377C(v86, &qword_27CEB8260);
      }

      else
      {
        v52(v58, v59);
        v72 = OUTLINED_FUNCTION_350();
        v73(v72);
        v74 = OUTLINED_FUNCTION_232();
        v75(v74);
        sub_21E1C377C(v53, &qword_27CEB8260);
      }

      v76 = *(v0 + 928);
      v77 = *(v0 + 400);
      v78 = *(v0 + 408);
      *v76 = *v98;
      *(v76 + 8) = v77;
      *(v76 + 16) = v78;
      OUTLINED_FUNCTION_313();

      OUTLINED_FUNCTION_46_1();
      goto LABEL_12;
    }

    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    v12 = swift_allocError();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_20_4(v68, v69);
    swift_willThrow();
    v70 = OUTLINED_FUNCTION_57();
    sub_21E1C99C4(v70, v71);
  }

  sub_21E343100();
  v13 = v12;
  v14 = sub_21E3434C0();
  v15 = sub_21E343B50();

  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_130();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v12;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    OUTLINED_FUNCTION_123();
    _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    sub_21E1C377C(v17, &qword_27CEB80E0);
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360](v25, v26, v27, v28);
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360](v29, v30, v31, v32);
  }

  v84 = *(v0 + 1312);
  v33 = v14;
  v34 = *(v0 + 1256);
  v95 = *(v0 + 1240);
  v35 = *(v0 + 1128);
  v87 = *(v0 + 1120);
  v89 = *(v0 + 1136);
  v36 = *(v0 + 1104);
  v80 = *(v0 + 1096);
  v82 = *(v0 + 1112);

  v37 = OUTLINED_FUNCTION_155();
  v34(v37);
  swift_willThrow();

  v38 = OUTLINED_FUNCTION_134();
  v84(v38);
  (*(v36 + 8))(v82, v80);
  (*(v35 + 8))(v89, v87);
  sub_21E1C377C(v95, &qword_27CEB8260);

  OUTLINED_FUNCTION_313();

  OUTLINED_FUNCTION_8();
LABEL_12:

  return v39();
}

uint64_t sub_21E2013BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_169();
  v25 = v24[164];
  v42 = v24[155];
  v26 = v24[141];
  v27 = v24[140];
  v40 = v24[142];
  v41 = v24[121];
  (*(v24[124] + 8))(v24[125], v24[123]);
  v28 = OUTLINED_FUNCTION_350();
  v25(v28);
  v29 = OUTLINED_FUNCTION_151();
  v30(v29);
  (*(v26 + 8))(v40, v27);
  sub_21E1C377C(v42, &qword_27CEB8260);

  OUTLINED_FUNCTION_64_0(v24[167]);

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_149();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v40, v41, v42, a22, a23, a24);
}

uint64_t WFAskLLMModelSession.writeNewList(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E201580()
{
  OUTLINED_FUNCTION_10();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_112(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_3(v1);

  return sub_21E1F1D10(v3, v4, v5, 4, v6, v7, v7);
}

uint64_t sub_21E201614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v4 = sub_21E3434D0();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E2016E4, 0, 0);
}

uint64_t sub_21E2016E4()
{
  OUTLINED_FUNCTION_20();
  if (sub_21E1E2280(v0[17] + 32))
  {
    sub_21E343100();
    v1 = sub_21E3434C0();
    v2 = sub_21E343B50();
    if (OUTLINED_FUNCTION_238(v2))
    {
      v3 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_293(v3);
      OUTLINED_FUNCTION_123();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    v9 = OUTLINED_FUNCTION_7();
    v10(v9);
    swift_task_alloc();
    OUTLINED_FUNCTION_146_0();
    v0[23] = v11;
    *v11 = v12;
    v11[1] = sub_21E201A54;
    v13 = v0[16];

    return sub_21E1EBD3C((v0 + 14), v13, 1);
  }

  else
  {
    sub_21E343100();
    v15 = sub_21E3434C0();
    v16 = sub_21E343B50();
    if (OUTLINED_FUNCTION_238(v16))
    {
      v17 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_293(v17);
      OUTLINED_FUNCTION_123();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    v23 = OUTLINED_FUNCTION_7();
    v24(v23);
    v25 = swift_task_alloc();
    v0[22] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
    OUTLINED_FUNCTION_2_5();
    sub_21E20EE78(v26, v27);
    sub_21E20F3D4();
    OUTLINED_FUNCTION_128();
    *v25 = v28;
    v25[1] = sub_21E20193C;
    OUTLINED_FUNCTION_40_0();

    return MEMORY[0x282165A90]();
  }
}

uint64_t sub_21E20193C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_218();

  OUTLINED_FUNCTION_325();

  return v3();
}

uint64_t sub_21E201A54()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E201B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_165();
  v19 = *(v18 + 112);
  v20 = *(v19 + 16);
  if (v20)
  {
    v45 = MEMORY[0x277D84F90];
    sub_21E1D5AFC(0, v20, 0);
    v21 = v45;
    OUTLINED_FUNCTION_14_4();
    a14 = v22;
    v23 = sub_21E1CB3C4();
    a13 = v19;
    v24 = (v19 + 40);
    do
    {
      v25 = *v24;
      *(v18 + 16) = *(v24 - 1);
      *(v18 + 24) = v25;
      *(v18 + 32) = 0xD000000000000012;
      *(v18 + 40) = a14;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0xE000000000000000;

      v26 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_68_0();
      *(v18 + 64) = OUTLINED_FUNCTION_420();
      *(v18 + 72) = v27;
      OUTLINED_FUNCTION_160();
      *(v18 + 80) = v28;
      OUTLINED_FUNCTION_159();
      *(v18 + 88) = v29;
      *(v18 + 96) = 0;
      *(v18 + 104) = 0xE000000000000000;
      a11 = v23;
      a12 = v23;
      a9 = v26;
      a10 = v23;
      OUTLINED_FUNCTION_68_0();
      v30 = OUTLINED_FUNCTION_420();
      v32 = v31;

      a15 = v21;
      v34 = *(v21 + 16);
      v33 = *(v21 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_21E1D5AFC((v33 > 1), v34 + 1, 1);
      }

      *(v21 + 16) = v34 + 1;
      v35 = v21 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
      v24 += 2;
      --v20;
    }

    while (v20);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  **(v18 + 120) = v21;

  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_139();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_21E201D1C()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t WFAskLLMModelSession.writeEntityList(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E201D9C()
{
  OUTLINED_FUNCTION_10();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_112(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_3(v1);

  return sub_21E1F3B7C(v3, v4, v5, 0xE000000000000000, v6, v7, v7);
}

uint64_t sub_21E201E30(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_21E3434D0();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E201F00, 0, 0);
}

uint64_t sub_21E2021CC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_21E3434D0();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E20229C, 0, 0);
}

uint64_t sub_21E202568(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_21E3434D0();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E202638, 0, 0);
}

uint64_t sub_21E202904(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_21E3434D0();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E2029D4, 0, 0);
}

uint64_t sub_21E202CA0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_21E3434D0();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E202D70, 0, 0);
}

uint64_t sub_21E20303C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_218();

  OUTLINED_FUNCTION_325();

  return v3();
}

uint64_t sub_21E203154()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_224();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_218();

  OUTLINED_FUNCTION_325();

  return v3();
}

uint64_t sub_21E20326C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_21E3434D0();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E20333C, 0, 0);
}

uint64_t WFAskLLMModelSession.writeAsBoolean(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E203624()
{
  OUTLINED_FUNCTION_10();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_112(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_3(v1);

  return sub_21E1F55E0(v3, v4, v5, 3, v6, v7, v7);
}

uint64_t WFAskLLMModelSession.writeAsAdvanceBoolean(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E2036D4()
{
  OUTLINED_FUNCTION_10();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_112(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_3(v1);

  return sub_21E1F743C(v3, v4, v5, 3, v6, v7, v7);
}

uint64_t WFAskLLMModelSession.writeAsNumber(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E203784()
{
  OUTLINED_FUNCTION_10();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_112(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_3(v1);

  return sub_21E1F8E8C(v3, v4, v5, 2, v6, v7, v7);
}

uint64_t WFAskLLMModelSession.writeAsDictionary(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E203834()
{
  OUTLINED_FUNCTION_10();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_112(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_3(v1);

  return sub_21E1FAF4C(v3, v4, v5, 5, v6, v7, v7);
}

uint64_t sub_21E2038C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a2;
  v3[40] = a3;
  v3[38] = a1;
  v4 = sub_21E343820();
  v3[41] = v4;
  v3[42] = *(v4 - 8);
  v3[43] = swift_task_alloc();
  v5 = sub_21E3434D0();
  v3[44] = v5;
  v3[45] = *(v5 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E203A38, 0, 0);
}

uint64_t sub_21E203A38()
{
  OUTLINED_FUNCTION_212();
  v1 = sub_21E1E2280(v0[40] + 32);
  v0[50] = *MEMORY[0x277D7A440];
  if (v1)
  {
    sub_21E343100();
    v2 = sub_21E3434C0();
    v3 = sub_21E343B50();
    if (OUTLINED_FUNCTION_238(v3))
    {
      v4 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_293(v4);
      OUTLINED_FUNCTION_123();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    v10 = v0[45];

    v0[55] = *(v10 + 8);
    v11 = OUTLINED_FUNCTION_7();
    v12(v11);
    v13 = swift_task_alloc();
    v0[56] = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
    OUTLINED_FUNCTION_2_5();
    sub_21E20EE78(v15, v16);
    OUTLINED_FUNCTION_405();
    *v13 = v18;
    v19 = sub_21E204194;
  }

  else
  {
    sub_21E343100();
    v20 = sub_21E3434C0();
    v21 = sub_21E343B50();
    if (OUTLINED_FUNCTION_238(v21))
    {
      v22 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_293(v22);
      OUTLINED_FUNCTION_123();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    v28 = OUTLINED_FUNCTION_7();
    v29(v28);
    v13 = swift_task_alloc();
    v0[51] = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8940);
    OUTLINED_FUNCTION_2_5();
    sub_21E20EE78(v30, v31);
    OUTLINED_FUNCTION_405();
    *v13 = v32;
    v19 = sub_21E203CD0;
  }

  v13[1] = v19;

  return MEMORY[0x282165A78](v14, v17);
}

uint64_t sub_21E203CD0()
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();
  v2 = *v1;
  OUTLINED_FUNCTION_42_1();
  *v3 = v2;
  *v3 = *v1;
  v2[52] = v4;
  v2[53] = v5;
  v2[54] = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_364();

    return v7(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_364();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }
}

uint64_t sub_21E203E74()
{
  OUTLINED_FUNCTION_279();
  sub_21E343810();
  OUTLINED_FUNCTION_115();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_190();
  v4(v3);
  if (v2 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v5 = objc_opt_self();
  OUTLINED_FUNCTION_8_4();
  v6 = sub_21E342BC0();
  v0[36] = 0;
  v7 = [v5 JSONObjectWithData:v6 options:0 error:v0 + 36];

  v8 = v0[36];
  if (!v7)
  {
    v14 = v8;

    sub_21E342B50();

    swift_willThrow();
    goto LABEL_7;
  }

  v9 = v8;
  sub_21E343CE0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8A38);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = OUTLINED_FUNCTION_8_4();
    sub_21E1D8430(v17, v18);
LABEL_9:
    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    v20 = v19;
    sub_21E343D20();
    MEMORY[0x223D55250](0xD00000000000003DLL, 0x800000021E35B8B0);
    v21 = OUTLINED_FUNCTION_3_0();
    MEMORY[0x223D55250](v21);

    MEMORY[0x223D55250](46, 0xE100000000000000);
    *v20 = 0;
    *(v20 + 8) = 0xE000000000000000;
    *(v20 + 56) = 2;
    swift_willThrow();
    goto LABEL_10;
  }

  v10 = v0[54];

  OUTLINED_FUNCTION_23();
  sub_21E204AD4(v11, v12, v13);
  if (v10)
  {

LABEL_7:
    v15 = OUTLINED_FUNCTION_8_4();
    sub_21E1D8430(v15, v16);
LABEL_10:

    OUTLINED_FUNCTION_8();
    goto LABEL_11;
  }

  v24 = OUTLINED_FUNCTION_8_4();
  sub_21E1D8430(v24, v25);

  v26 = v0[38];
  *v26 = v27;
  v26[1] = v28;

  OUTLINED_FUNCTION_8();
LABEL_11:

  return v22();
}

uint64_t sub_21E204194()
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();
  v2 = *v1;
  OUTLINED_FUNCTION_42_1();
  *v3 = v2;
  *v3 = *v1;
  v2[57] = v4;
  v2[58] = v5;
  v2[59] = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_364();

    return v7(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_364();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }
}

uint64_t sub_21E204338()
{
  v80 = v0;
  v79[2] = *MEMORY[0x277D85DE8];
  sub_21E343100();

  v1 = sub_21E3434C0();
  v2 = sub_21E343B50();

  if (os_log_type_enabled(v1, v2))
  {
    v77 = *(v0 + 440);
    OUTLINED_FUNCTION_130();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_135();
    v4 = swift_slowAlloc();
    v79[0] = v4;
    *v3 = 136315138;
    v5 = OUTLINED_FUNCTION_137();
    *(v3 + 4) = sub_21E1C80B4(v5, v6, v7);
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_355(v8, v9, v10, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();

    v12 = OUTLINED_FUNCTION_7();
    v77(v12);
  }

  else
  {
    v13 = *(v0 + 440);

    v14 = OUTLINED_FUNCTION_7();
    v13(v14);
  }

  v15 = *(v0 + 328);
  sub_21E343810();
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_214();
  v16 = OUTLINED_FUNCTION_219();
  v17(v16, v15);
  OUTLINED_FUNCTION_268();
  if (!v27 & v18)
  {
    goto LABEL_22;
  }

  v19 = objc_opt_self();
  OUTLINED_FUNCTION_134();
  v20 = sub_21E342BC0();
  *(v0 + 272) = 0;
  v21 = [v19 JSONObjectWithData:v20 options:0 error:v0 + 272];

  v22 = *(v0 + 272);
  if (!v21)
  {
    v34 = v22;
    sub_21E342B50();

    goto LABEL_17;
  }

  v23 = v22;
  sub_21E343CE0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8A38);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v37 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v37, v38);
LABEL_22:
    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_20_4(v43, v44);
    swift_willThrow();
    goto LABEL_23;
  }

  v24 = *(v0 + 280);
  OUTLINED_FUNCTION_75();
  sub_21E1CAF20(v24, (v0 + 48));
  if (!*(v0 + 72))
  {
    v39 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v39, v40);

    sub_21E1C377C(v0 + 48, &unk_27CEB9230);
    goto LABEL_22;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v41, v42);

    goto LABEL_22;
  }

  v25 = *(v0 + 160);
  v26 = *(v0 + 168);
  v27 = v25 == 0x656661736E75 && v26 == 0xE600000000000000;
  if (v27 || (OUTLINED_FUNCTION_365() & 1) != 0)
  {

    v28 = *(v0 + 320);

    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_303((v28 + 32));
    v29 = OUTLINED_FUNCTION_184();
    v30(v29);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v31 = *(v28 + 16);
    v32 = xmmword_21E354130;
LABEL_15:
    OUTLINED_FUNCTION_22_4(v32);
    swift_willThrow();
    v33 = v31;
LABEL_18:
    v35 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v35, v36);
LABEL_23:

    OUTLINED_FUNCTION_8();
    goto LABEL_24;
  }

  v47 = v25 == 0xD000000000000010 && 0x800000021E35B7F0 == v26;
  if (!v47 && (OUTLINED_FUNCTION_365() & 1) == 0)
  {
    if (v25 == 1701208435 && v26 == 0xE400000000000000)
    {

      goto LABEL_44;
    }

    v57 = OUTLINED_FUNCTION_365();

    if (v57)
    {
      goto LABEL_44;
    }

    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_20_4(v58, v59);
LABEL_17:
    swift_willThrow();
    goto LABEL_18;
  }

  if ((sub_21E204D50() & 1) == 0)
  {
    v53 = *(v0 + 320);

    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_303((v53 + 32));
    v54 = OUTLINED_FUNCTION_184();
    v55(v54);
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v31 = *(v53 + 16);
    v32 = xmmword_21E354140;
    goto LABEL_15;
  }

  sub_21E343100();
  v48 = sub_21E3434C0();
  v49 = sub_21E343B40();
  v50 = OUTLINED_FUNCTION_32(v49);
  v76 = *(v0 + 368);
  v78 = *(v0 + 440);
  v51 = *(v0 + 352);
  if (v50)
  {
    v52 = OUTLINED_FUNCTION_31();
    *v52 = 0;
    _os_log_impl(&dword_21E1BD000, v48, v49, "Ignoring handle_with_care in safety token v2 response due to feature flag enabled", v52, 2u);
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();
  }

  v78(v76, v51);
LABEL_44:
  v60 = *(v0 + 472);
  sub_21E204AD4(v24, 0xE800000000000000, v79);
  if (v60)
  {
    v61 = OUTLINED_FUNCTION_134();
    sub_21E1D8430(v61, v62);

    goto LABEL_23;
  }

  v63 = v79[1];
  *(v0 + 176) = v79[0];
  *(v0 + 184) = v63;
  OUTLINED_FUNCTION_14_4();
  *(v0 + 192) = 0xD000000000000012;
  *(v0 + 200) = v64;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0xE000000000000000;
  sub_21E1CB3C4();
  OUTLINED_FUNCTION_350();
  OUTLINED_FUNCTION_68_0();
  v65 = sub_21E343CB0();
  v67 = v66;

  *(v0 + 224) = v65;
  *(v0 + 232) = v67;
  OUTLINED_FUNCTION_160();
  *(v0 + 240) = v68;
  OUTLINED_FUNCTION_159();
  *(v0 + 248) = v69;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0xE000000000000000;
  OUTLINED_FUNCTION_68_0();
  v70 = sub_21E343CB0();
  v72 = v71;
  v73 = OUTLINED_FUNCTION_134();
  sub_21E1D8430(v73, v74);

  v75 = *(v0 + 304);
  *v75 = v70;
  v75[1] = v72;

  OUTLINED_FUNCTION_8();
LABEL_24:

  return v45();
}

uint64_t sub_21E204AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v6 = sub_21E343820();
  v7 = OUTLINED_FUNCTION_28_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  if (!a2)
  {

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_137();
  sub_21E1CAF20(a1, v8);
  if (!v26[3])
  {
    sub_21E1C377C(v26, &unk_27CEB9230);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8A38);
  if (!swift_dynamicCast())
  {
LABEL_10:
    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_8_5(v20, "Cannot get valid dictionary response");
    return swift_willThrow();
  }

LABEL_6:
  v9 = objc_opt_self();
  v10 = sub_21E343730();

  v26[0] = 0;
  v11 = [v9 dataWithJSONObject:v10 options:0 error:v26];

  v12 = v26[0];
  if (!v11)
  {
    v21 = v12;
    sub_21E342B50();

    return swift_willThrow();
  }

  sub_21E342BF0();

  sub_21E343810();
  OUTLINED_FUNCTION_390();
  v13 = sub_21E343800();
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    v17 = OUTLINED_FUNCTION_390();
    result = sub_21E1C99C4(v17, v18);
    *a3 = v15;
    a3[1] = v16;
  }

  else
  {
    sub_21E1E8290();
    OUTLINED_FUNCTION_138();
    swift_allocError();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_20_4(v22, v23);
    swift_willThrow();
    v24 = OUTLINED_FUNCTION_390();
    return sub_21E1C99C4(v24, v25);
  }

  return result;
}

id sub_21E204D50()
{
  if (!VCIsInternalBuild())
  {
    return 0;
  }

  v0 = sub_21E3437E0();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_21E232D14(v0, v2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8178);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E3522F0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000021E35B780;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 0;
  sub_21E343760();
  v7 = sub_21E343730();

  [v5 registerDefaults_];

  v8 = sub_21E3437A0();
  v9 = [v5 BOOLForKey_];

  return v9;
}

uint64_t WFAskLLMModelSession.writeAsDate(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E204EDC()
{
  OUTLINED_FUNCTION_10();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_112(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_3(v1);

  return sub_21E1FD020(v3, v4, v5, 7, v6, v7, v7);
}

uint64_t sub_21E204F70()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t WFAskLLMModelSession.writeAsTextOrEntity(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E20506C()
{
  OUTLINED_FUNCTION_10();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_112(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_3(v1);

  return sub_21E1FF170(v3, v4, v5, 6, v6, v7, v7);
}

uint64_t sub_21E205100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[36] = a2;
  v4[37] = v3;
  v4[35] = a1;
  v6 = sub_21E3434D0();
  v4[38] = v6;
  v4[39] = *(v6 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *(a3 + 8);
  v4[47] = v7;
  v4[48] = v8;

  return MEMORY[0x2822009F8](sub_21E205220, 0, 0);
}

uint64_t sub_21E205220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_407();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[37];
  __swift_project_boxed_opaque_existential_1((v27 + 32), *(v27 + 56));
  v28 = OUTLINED_FUNCTION_7();
  v29(v28);
  if (a12)
  {
    v30 = sub_21E343F80();

    if ((v30 & 1) == 0)
    {
      v31 = [objc_allocWithZone(MEMORY[0x277D4D368]) init];
      v24[49] = v31;
      OUTLINED_FUNCTION_236();
      v32 = sub_21E3437A0();
      [v31 setText_];

      [v31 setKeepGoing_];
      [v31 setStyle_];
      sub_21E20EE08();
      __swift_project_boxed_opaque_existential_1((v27 + 32), *(v27 + 56));
      v33 = OUTLINED_FUNCTION_280();
      v34(v33);
      v35 = sub_21E20C5CC();
      v24[50] = v35;
      __swift_project_boxed_opaque_existential_1((v27 + 32), *(v27 + 56));
      v36 = OUTLINED_FUNCTION_280();
      v37(v36);
      v38 = sub_21E3437A0();

      [v35 setModelManagerServicesUseCaseID_];

      [v35 setMode_];
      [v35 setBackends_];
      v24[51] = *MEMORY[0x277D7A440];
      sub_21E343100();

      v39 = sub_21E3434C0();
      v40 = sub_21E343B50();

      v41 = os_log_type_enabled(v39, v40);
      v42 = v24[46];
      v43 = v24[38];
      v44 = v24[39];
      if (v41)
      {
        v77 = v24[36];
        v45 = v31;
        v46 = v24[35];
        OUTLINED_FUNCTION_130();
        v79 = v42;
        v47 = swift_slowAlloc();
        OUTLINED_FUNCTION_135();
        v78 = v43;
        v48 = swift_slowAlloc();
        a12 = v48;
        *v47 = 136315138;
        v49 = v46;
        v31 = v45;
        *(v47 + 4) = sub_21E1C80B4(v49, v77, &a12);
        _os_log_impl(&dword_21E1BD000, v39, v40, "sanitizeInputText: inputText=%s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
        v50 = OUTLINED_FUNCTION_56_0();
        MEMORY[0x223D57360](v50);

        v51 = *(v44 + 8);
        v51(v79, v78);
      }

      else
      {

        v51 = *(v44 + 8);
        v51(v42, v43);
      }

      v24[52] = v51;
      v62 = objc_allocWithZone(MEMORY[0x277D4D358]);
      v63 = sub_21E20D948(v35);
      v24[53] = v63;
      v73 = v63;
      v24[2] = v24;
      v24[7] = v24 + 32;
      v24[3] = sub_21E2058DC;
      v74 = swift_continuation_init();
      v24[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8988);
      v24[10] = MEMORY[0x277D85DD0];
      v24[11] = 1107296256;
      v24[12] = sub_21E20C640;
      v24[13] = &block_descriptor_1;
      v24[14] = v74;
      [v73 sanitizeRequestAsynchronously:v31 completionHandler:v24 + 10];
      OUTLINED_FUNCTION_335();

      return MEMORY[0x282200938](v75);
    }
  }

  else
  {
  }

  sub_21E343100();
  v52 = sub_21E3434C0();
  v53 = sub_21E343B50();
  if (OUTLINED_FUNCTION_133(v53))
  {
    v54 = OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_147(v54);
    OUTLINED_FUNCTION_45_0();
    _os_log_impl(v55, v56, v57, v58, v59, 2u);
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();
  }

  v60 = OUTLINED_FUNCTION_7();
  v61(v60);
  OUTLINED_FUNCTION_414();

  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_335();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_21E2058DC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 432) = *(v3 + 48);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21E2059D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void (*a10)(void *, uint64_t), void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_407();
  v17 = *(v16 + 424);
  v18 = *(v16 + 256);

  LODWORD(v17) = [v18 adapterViolationCategory];
  if (v17 != 20)
  {
    goto LABEL_11;
  }

  if (sub_21E1E20BC())
  {
    v19 = sub_21E343F80();

    if ((v19 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  sub_21E1C4248(*(v16 + 296) + 32, v16 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498);
  OUTLINED_FUNCTION_173();
  type metadata accessor for WFAFMDevice3BModel();
  if (swift_dynamicCast())
  {

    if (sub_21E204D50())
    {
      sub_21E343100();
      v20 = sub_21E3434C0();
      v21 = sub_21E343B40();
      v22 = OUTLINED_FUNCTION_32(v21);
      v24 = *(v16 + 416);
      v23 = *(v16 + 424);
      v25 = *(v16 + 392);
      v26 = *(v16 + 400);
      a11 = *(v16 + 336);
      v27 = *(v16 + 304);
      if (v22)
      {
        v28 = OUTLINED_FUNCTION_31();
        a10 = v24;
        OUTLINED_FUNCTION_400(v28);
        v30 = "v1 adapter: ignoring handleWithCare violation category from SCMLTextSanitizer due to feature flag enabled";
LABEL_10:
        OUTLINED_FUNCTION_367(&dword_21E1BD000, v29, v21, v30);
        v31 = OUTLINED_FUNCTION_57_0();
        MEMORY[0x223D57360](v31);

        a10(a11, v27);
LABEL_13:
        OUTLINED_FUNCTION_414();

        OUTLINED_FUNCTION_46_1();
        goto LABEL_19;
      }
    }

    else
    {
      sub_21E343100();
      v61 = sub_21E3434C0();
      v62 = sub_21E343B60();
      if (OUTLINED_FUNCTION_162(v62))
      {
        *OUTLINED_FUNCTION_31() = 0;
        OUTLINED_FUNCTION_94();
        _os_log_impl(v63, v64, v65, v66, v67, 2u);
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
      }

      v68 = *(v16 + 416);
      v69 = *(v16 + 384);

      v70 = OUTLINED_FUNCTION_190();
      v68(v70);
      if (v69 == 6 || v69 == 1)
      {
        v73 = *(v16 + 424);
        v75 = *(v16 + 392);
        v74 = *(v16 + 400);

        goto LABEL_13;
      }

      if (v69)
      {
        v76 = *(v16 + 424);
        a10 = *(v16 + 400);
        a11 = *(v16 + 392);
        v77 = *(v16 + 296);
        sub_21E1E8290();
        OUTLINED_FUNCTION_138();
        swift_allocError();
        v79 = v78;
        v80 = [v18 adapterViolationCategory];
        OUTLINED_FUNCTION_303((v77 + 32));
        v81 = OUTLINED_FUNCTION_184();
        v82(v81);
        OUTLINED_FUNCTION_13_1();
        swift_beginAccess();
        v83 = *(v77 + 16);
        *v79 = v80;
        *(v79 + 8) = 0;
        *(v79 + 16) = 1;
        *(v79 + 17) = HIBYTE(a12);
        *(v79 + 24) = v83;
        OUTLINED_FUNCTION_78(2);
        swift_willThrow();
        v84 = v83;

        goto LABEL_18;
      }

      sub_21E343100();
      v20 = sub_21E3434C0();
      v21 = sub_21E343B70();
      v71 = OUTLINED_FUNCTION_32(v21);
      v24 = *(v16 + 416);
      v23 = *(v16 + 424);
      v25 = *(v16 + 392);
      v26 = *(v16 + 400);
      a11 = *(v16 + 344);
      v27 = *(v16 + 304);
      if (v71)
      {
        v72 = OUTLINED_FUNCTION_31();
        a10 = v24;
        OUTLINED_FUNCTION_400(v72);
        v30 = "The text input sanitizer should never run with an automatic result type";
        goto LABEL_10;
      }
    }

    v24(a11, v27);
    goto LABEL_13;
  }

LABEL_11:
  if ([v18 safe])
  {
    v33 = *(v16 + 392);
    v32 = *(v16 + 400);

    goto LABEL_13;
  }

  sub_21E343100();
  v18 = v18;
  v34 = sub_21E3434C0();
  v35 = sub_21E343B60();
  if (OUTLINED_FUNCTION_162(v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 67109120;
    v36[1] = [v18 adapterViolationCategory];

    OUTLINED_FUNCTION_94();
    _os_log_impl(v37, v38, v39, v40, v41, 8u);
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();
  }

  else
  {

    v34 = v18;
  }

  v42 = *(v16 + 416);
  a9 = *(v16 + 424);
  a10 = *(v16 + 400);
  a11 = *(v16 + 392);
  v43 = *(v16 + 296);

  v44 = OUTLINED_FUNCTION_190();
  v42(v44);
  sub_21E1E8290();
  OUTLINED_FUNCTION_138();
  swift_allocError();
  v46 = v45;
  v47 = [v18 &selRef__getWebArchiveDataWithCompletionHandler_ + 2];
  OUTLINED_FUNCTION_303((v43 + 32));
  v48 = OUTLINED_FUNCTION_184();
  v49(v48);
  OUTLINED_FUNCTION_13_1();
  swift_beginAccess();
  v50 = *(v43 + 16);
  *v46 = v47;
  *(v46 + 8) = 0;
  *(v46 + 16) = 1;
  *(v46 + 17) = BYTE6(a12);
  *(v46 + 24) = v50;
  OUTLINED_FUNCTION_78(2);
  swift_willThrow();
  v51 = v50;

LABEL_18:

  OUTLINED_FUNCTION_8();
LABEL_19:
  OUTLINED_FUNCTION_335();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_21E205FBC()
{
  v2 = v0[53];
  v1 = v0[54];
  swift_willThrow();

  OUTLINED_FUNCTION_271();
  v3 = v1;
  v4 = sub_21E3434C0();
  v5 = sub_21E343B60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[54];
    OUTLINED_FUNCTION_130();
    swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_205();
    *v1 = 138412290;
    v8 = v6;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_241(v9);
    _os_log_impl(&dword_21E1BD000, v4, v5, "SCMLTextSanitizer.sanitizeRequest failed with error: %@", v1, 0xCu);
    sub_21E1C377C(v7, &qword_27CEB80E0);
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x223D57360]();
  }

  v11 = v0[53];
  v10 = v0[54];
  v12 = v0[52];
  v13 = v0[49];
  v14 = v0[50];
  v15 = v0[38];

  v16 = OUTLINED_FUNCTION_7();
  v12(v16);
  sub_21E1E8290();
  OUTLINED_FUNCTION_138();
  swift_allocError();
  OUTLINED_FUNCTION_182();
  sub_21E343D20();

  OUTLINED_FUNCTION_14_4();
  v21 = v17;
  swift_getErrorValue();
  v18 = sub_21E343FD0();
  MEMORY[0x223D55250](v18);

  *v15 = 0xD00000000000001FLL;
  *(v15 + 8) = v21;
  *(v15 + 56) = 2;
  swift_willThrow();

  OUTLINED_FUNCTION_8();

  return v19();
}

uint64_t sub_21E206230()
{
  if (!VCIsInternalBuild())
  {
    return 0;
  }

  v0 = sub_21E3437E0();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_21E232D14(v0, v2);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8178);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E3522F0;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x800000021E35B810;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 0;
  sub_21E343760();
  v7 = sub_21E343730();

  [v5 registerDefaults_];

  v8 = sub_21E3437A0();
  v9 = [v5 BOOLForKey_];

  return v9;
}

uint64_t sub_21E2063A8()
{
  v1[5] = v0;
  v2 = sub_21E343130();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_21E342E20();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E2064D0, 0, 0);
}

uint64_t sub_21E20669C()
{
  v1[5] = v0;
  v2 = sub_21E343130();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_21E342E20();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E2067C4, 0, 0);
}

uint64_t sub_21E206990()
{
  v1[5] = v0;
  v2 = sub_21E343130();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_21E342E20();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E206AB8, 0, 0);
}

uint64_t sub_21E206C8C()
{
  v1[5] = v0;
  v2 = sub_21E343130();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_21E342E20();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E206DB4, 0, 0);
}

uint64_t sub_21E206F84()
{
  v1[5] = v0;
  v2 = sub_21E343130();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_21E342E20();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E2070AC, 0, 0);
}

uint64_t sub_21E207270()
{
  v1[5] = v0;
  v2 = sub_21E343130();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_21E342E20();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E207398, 0, 0);
}

uint64_t sub_21E207568()
{
  v1[5] = v0;
  v2 = sub_21E343130();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_21E342E20();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E207690, 0, 0);
}

uint64_t sub_21E207868()
{
  v1[5] = v0;
  v2 = sub_21E343130();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_21E342E20();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E207990, 0, 0);
}

uint64_t sub_21E207B5C()
{
  v1[5] = v0;
  v2 = sub_21E343130();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_21E342E20();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E207C84, 0, 0);
}

uint64_t sub_21E207E60(uint64_t a1)
{
  v2 = sub_21E3435D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_21E1D5ADC(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21E1D5ADC((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = MEMORY[0x277D42DE8];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      v9(boxed_opaque_existential_1, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_21E1C2B8C(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_21E20802C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  v5 = sub_21E3430D0();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E342FC0();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_21E3430B0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v17 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(v16 + 56))(&v30, v17, v16);
  if (v31)
  {
    sub_21E1C2B8C(&v30, v32);
    v18 = v33;
    v19 = v34;
    v20 = __swift_project_boxed_opaque_existential_1(v32, v33);
    v26 = v3;
    MEMORY[0x28223BE20](v20);
    v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v22);
    MEMORY[0x223D54900](v22, v18, v19);
    sub_21E3430A0();
    (*(v10 + 16))(v13, v15, v9);
    sub_21E3430C0();
    sub_21E343530();
    sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
    sub_21E343640();
    (*(v27 + 8))(v7, v28);
    (*(v10 + 8))(v15, v9);
    return __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  else
  {
    sub_21E1C377C(&v30, &qword_27CEB89F0);
    v25 = sub_21E343530();
    return (*(*(v25 - 8) + 16))(v29, v3, v25);
  }
}

uint64_t sub_21E2083EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21E343090();
  MEMORY[0x28223BE20](v5 - 8);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E343000();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_21E342FE0();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_21E343030();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_21E343050();
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  if ((*(v14 + 40))(v13, v14))
  {
    v26 = v2;
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    (*(v16 + 64))(&v30, v15, v16);
    if (v31)
    {
      sub_21E1C2B8C(&v30, v32);
      v17 = v33;
      v18 = v34;
      v19 = __swift_project_boxed_opaque_existential_1(v32, v33);
      MEMORY[0x28223BE20](v19);
      v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v21);
      MEMORY[0x223D54920](v21, v17, v18);
      sub_21E343020();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89E8);
      sub_21E343080();
      *(swift_allocObject() + 16) = xmmword_21E3522F0;
      sub_21E343070();
      sub_21E343060();
      sub_21E342FF0();
      sub_21E343040();
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
    }

    else
    {
      sub_21E1C377C(&v30, &qword_27CEB89E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89E8);
      sub_21E343080();
      *(swift_allocObject() + 16) = xmmword_21E3522F0;
      sub_21E343070();
      sub_21E343060();
      sub_21E342FF0();
      sub_21E343010();
    }

    sub_21E343530();
    sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
    sub_21E343660();
    return (*(v27 + 8))(v12, v28);
  }

  else
  {
    v23 = sub_21E343530();
    v24 = *(*(v23 - 8) + 16);

    return v24(a2, v2, v23);
  }
}

uint64_t sub_21E20897C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21E343420();
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89B8);
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = (&v45 - v10);
  v12 = sub_21E3434D0();
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v45 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v45 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v45 - v22;
  if (sub_21E1E1F98())
  {
    v46 = a2;
    v47 = v2;
    sub_21E1C4248(a1, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498);
    type metadata accessor for WFAFMDevice3BModel();
    if (swift_dynamicCast())
    {

      sub_21E343100();
      v24 = sub_21E3434C0();
      v25 = sub_21E343B50();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_21E1BD000, v24, v25, "Not applying any constraint for Text output using 3B model", v26, 2u);
        MEMORY[0x223D57360](v26, -1, -1);
      }

      (*(v51 + 8))(v23, v52);
LABEL_17:
      v39 = sub_21E343530();
      return (*(*(v39 - 8) + 16))(v46, v47, v39);
    }

    v30 = sub_21E1E21F0(a1);
    if (!v30)
    {
      sub_21E343100();
      v36 = sub_21E3434C0();
      v37 = sub_21E343B50();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_21E1BD000, v36, v37, "Not applying any constraint", v38, 2u);
        MEMORY[0x223D57360](v38, -1, -1);
      }

      (*(v51 + 8))(v21, v52);
      goto LABEL_17;
    }

    if (v30 == 1)
    {
      sub_21E343100();
      v31 = sub_21E3434C0();
      v32 = sub_21E343B50();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v53[0] = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_21E1C80B4(0x7074754F74786554, 0xEA00000000007475, v53);
        _os_log_impl(&dword_21E1BD000, v31, v32, "Applying schema identifier to server %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x223D57360](v34, -1, -1);
        MEMORY[0x223D57360](v33, -1, -1);
      }

      (*(v51 + 8))(v18, v52);
      v35 = v48;
      *v11 = 0x7074754F74786554;
      v11[1] = 0xEA00000000007475;
      (*(v35 + 104))(v11, *MEMORY[0x277D0E548], v9);
      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
      sub_21E343650();
      return (*(v35 + 8))(v11, v9);
    }

    else
    {
      sub_21E343100();
      v40 = sub_21E3434C0();
      v41 = sub_21E343B50();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_21E1BD000, v40, v41, "Applying schema directly", v42, 2u);
        MEMORY[0x223D57360](v42, -1, -1);
      }

      (*(v51 + 8))(v15, v52);
      v43 = sub_21E1E2280(a1);
      v44 = (v50 + 8);
      if (v43)
      {
        sub_21E20D014();
      }

      else
      {
        sub_21E343890();
      }

      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
      sub_21E343690();
      return (*v44)(v8, v49);
    }
  }

  else
  {
    v27 = sub_21E343530();
    v28 = *(*(v27 - 8) + 16);

    return v28(a2, v2, v27);
  }
}

uint64_t sub_21E209098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_21E343420();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v32 - v8);
  v37 = sub_21E3434D0();
  v10 = *(v37 - 8);
  v11 = MEMORY[0x28223BE20](v37);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  sub_21E1C4248(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498);
  type metadata accessor for WFAFMDevice3BModel();
  if (swift_dynamicCast())
  {
  }

  v19 = sub_21E1E21F0(a1);
  if (v19)
  {
    if (v19 == 1)
    {
      sub_21E343100();
      v20 = sub_21E3434C0();
      v21 = sub_21E343B50();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_21E1C80B4(0x7074754F7473694CLL, 0xEA00000000007475, v38);
        _os_log_impl(&dword_21E1BD000, v20, v21, "Applying schema identifier to server %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x223D57360](v23, -1, -1);
        MEMORY[0x223D57360](v22, -1, -1);
      }

      (*(v10 + 8))(v16, v37);
      *v9 = 0x7074754F7473694CLL;
      v9[1] = 0xEA00000000007475;
      (*(v7 + 104))(v9, *MEMORY[0x277D0E548], v6);
      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
      sub_21E343650();
      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      sub_21E343100();
      v29 = sub_21E3434C0();
      v30 = sub_21E343B50();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21E1BD000, v29, v30, "Applying schema directly", v31, 2u);
        MEMORY[0x223D57360](v31, -1, -1);
      }

      (*(v10 + 8))(v13, v37);
      if (sub_21E1E2280(a1))
      {
        sub_21E20D4FC(&type metadata for ListOutput, &qword_27CEB8B08, &unk_21E354570, sub_21E20F3D4);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
        sub_21E343690();
        return (*(v33 + 8))(v5, v34);
      }

      else
      {
        if (qword_27CEB7FA8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v34, &unk_27CEB8B28);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
        return sub_21E343690();
      }
    }
  }

  else
  {
    sub_21E343100();
    v25 = sub_21E3434C0();
    v26 = sub_21E343B50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21E1BD000, v25, v26, "Not applying any constraint", v27, 2u);
      MEMORY[0x223D57360](v27, -1, -1);
    }

    (*(v10 + 8))(v18, v37);
    v28 = sub_21E343530();
    return (*(*(v28 - 8) + 16))(v35, v36, v28);
  }
}

uint64_t sub_21E209748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_21E343420();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v37 = sub_21E3434D0();
  v10 = *(v37 - 8);
  v11 = MEMORY[0x28223BE20](v37);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  sub_21E1C4248(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498);
  type metadata accessor for WFAFMDevice3BModel();
  if (swift_dynamicCast())
  {
  }

  v19 = sub_21E1E21F0(a1);
  if (v19)
  {
    if (v19 == 1)
    {
      sub_21E343100();
      v20 = sub_21E3434C0();
      v21 = sub_21E343B50();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_21E1C80B4(0x7365697469746E45, 0xEE0074757074754FLL, v38);
        _os_log_impl(&dword_21E1BD000, v20, v21, "Applying schema identifier to server %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x223D57360](v23, -1, -1);
        MEMORY[0x223D57360](v22, -1, -1);
      }

      (*(v10 + 8))(v16, v37);
      strcpy(v9, "EntitiesOutput");
      v9[15] = -18;
      (*(v7 + 104))(v9, *MEMORY[0x277D0E548], v6);
      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
      sub_21E343650();
      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      sub_21E343100();
      v29 = sub_21E3434C0();
      v30 = sub_21E343B50();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21E1BD000, v29, v30, "Applying schema directly", v31, 2u);
        MEMORY[0x223D57360](v31, -1, -1);
      }

      (*(v10 + 8))(v13, v37);
      if (sub_21E1E2280(a1))
      {
        sub_21E20D4FC(&type metadata for EntitiesOutput, &qword_27CEB8AD0, &unk_21E354540, sub_21E20F32C);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
        sub_21E343690();
        return (*(v33 + 8))(v5, v34);
      }

      else
      {
        if (qword_27CEB7FB0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v34, &unk_27CEB8B40);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
        return sub_21E343690();
      }
    }
  }

  else
  {
    sub_21E343100();
    v25 = sub_21E3434C0();
    v26 = sub_21E343B50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21E1BD000, v25, v26, "Not applying any constraint", v27, 2u);
      MEMORY[0x223D57360](v27, -1, -1);
    }

    (*(v10 + 8))(v18, v37);
    v28 = sub_21E343530();
    return (*(*(v28 - 8) + 16))(v35, v36, v28);
  }
}

uint64_t sub_21E209E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_21E343420();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v37 = sub_21E3434D0();
  v10 = *(v37 - 8);
  v11 = MEMORY[0x28223BE20](v37);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  sub_21E1C4248(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498);
  type metadata accessor for WFAFMDevice3BModel();
  if (swift_dynamicCast())
  {
  }

  v19 = sub_21E1E21F0(a1);
  if (v19)
  {
    if (v19 == 1)
    {
      sub_21E343100();
      v20 = sub_21E3434C0();
      v21 = sub_21E343B50();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_21E1C80B4(0x4F6E61656C6F6F42, 0xED00007475707475, v38);
        _os_log_impl(&dword_21E1BD000, v20, v21, "Applying schema identifier to server %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x223D57360](v23, -1, -1);
        MEMORY[0x223D57360](v22, -1, -1);
      }

      (*(v10 + 8))(v16, v37);
      strcpy(v9, "BooleanOutput");
      *(v9 + 7) = -4864;
      (*(v7 + 104))(v9, *MEMORY[0x277D0E548], v6);
      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
      sub_21E343650();
      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      sub_21E343100();
      v29 = sub_21E3434C0();
      v30 = sub_21E343B50();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21E1BD000, v29, v30, "Applying schema directly", v31, 2u);
        MEMORY[0x223D57360](v31, -1, -1);
      }

      (*(v10 + 8))(v13, v37);
      if (sub_21E1E2280(a1))
      {
        sub_21E20D4FC(&type metadata for BooleanOutput, &qword_27CEB8AA8, &unk_21E354518, sub_21E20F284);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
        sub_21E343690();
        return (*(v33 + 8))(v5, v34);
      }

      else
      {
        if (qword_27CEB7FC0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v34, &unk_27CEB8B70);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
        return sub_21E343690();
      }
    }
  }

  else
  {
    sub_21E343100();
    v25 = sub_21E3434C0();
    v26 = sub_21E343B50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21E1BD000, v25, v26, "Not applying any constraint", v27, 2u);
      MEMORY[0x223D57360](v27, -1, -1);
    }

    (*(v10 + 8))(v18, v37);
    v28 = sub_21E343530();
    return (*(*(v28 - 8) + 16))(v35, v36, v28);
  }
}

uint64_t sub_21E20A4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_21E343420();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v32 - v8);
  v37 = sub_21E3434D0();
  v10 = *(v37 - 8);
  v11 = MEMORY[0x28223BE20](v37);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  sub_21E1C4248(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498);
  type metadata accessor for WFAFMDevice3BModel();
  if (swift_dynamicCast())
  {
  }

  v19 = sub_21E1E21F0(a1);
  if (v19)
  {
    if (v19 == 1)
    {
      sub_21E343100();
      v20 = sub_21E3434C0();
      v21 = sub_21E343B50();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_21E1C80B4(0xD000000000000015, 0x800000021E35B990, v38);
        _os_log_impl(&dword_21E1BD000, v20, v21, "Applying schema identifier to server %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x223D57360](v23, -1, -1);
        MEMORY[0x223D57360](v22, -1, -1);
      }

      (*(v10 + 8))(v16, v37);
      *v9 = 0xD000000000000015;
      v9[1] = 0x800000021E35B990;
      (*(v7 + 104))(v9, *MEMORY[0x277D0E548], v6);
      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
      sub_21E343650();
      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      sub_21E343100();
      v29 = sub_21E3434C0();
      v30 = sub_21E343B50();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21E1BD000, v29, v30, "Applying schema directly", v31, 2u);
        MEMORY[0x223D57360](v31, -1, -1);
      }

      (*(v10 + 8))(v13, v37);
      if (sub_21E1E2280(a1))
      {
        sub_21E20D4FC(&type metadata for AdvancedBooleanOutput, &qword_27CEB8A80, &unk_21E3544F0, sub_21E20F1DC);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
        sub_21E343690();
        return (*(v33 + 8))(v5, v34);
      }

      else
      {
        if (qword_27CEB7FB8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v34, qword_27CEB8B58);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
        return sub_21E343690();
      }
    }
  }

  else
  {
    sub_21E343100();
    v25 = sub_21E3434C0();
    v26 = sub_21E343B50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21E1BD000, v25, v26, "Not applying any constraint", v27, 2u);
      MEMORY[0x223D57360](v27, -1, -1);
    }

    (*(v10 + 8))(v18, v37);
    v28 = sub_21E343530();
    return (*(*(v28 - 8) + 16))(v35, v36, v28);
  }
}

uint64_t sub_21E20AB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_21E343420();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v32 - v8);
  v37 = sub_21E3434D0();
  v10 = *(v37 - 8);
  v11 = MEMORY[0x28223BE20](v37);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  sub_21E1C4248(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498);
  type metadata accessor for WFAFMDevice3BModel();
  if (swift_dynamicCast())
  {
  }

  v19 = sub_21E1E21F0(a1);
  if (v19)
  {
    if (v19 == 1)
    {
      sub_21E343100();
      v20 = sub_21E3434C0();
      v21 = sub_21E343B50();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_21E1C80B4(0xD000000000000012, 0x800000021E35B970, v38);
        _os_log_impl(&dword_21E1BD000, v20, v21, "Applying schema identifier to server %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x223D57360](v23, -1, -1);
        MEMORY[0x223D57360](v22, -1, -1);
      }

      (*(v10 + 8))(v16, v37);
      *v9 = 0xD000000000000012;
      v9[1] = 0x800000021E35B970;
      (*(v7 + 104))(v9, *MEMORY[0x277D0E548], v6);
      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
      sub_21E343650();
      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      sub_21E343100();
      v29 = sub_21E3434C0();
      v30 = sub_21E343B50();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21E1BD000, v29, v30, "Applying schema directly", v31, 2u);
        MEMORY[0x223D57360](v31, -1, -1);
      }

      (*(v10 + 8))(v13, v37);
      if (sub_21E1E2280(a1))
      {
        sub_21E20D4FC(&type metadata for SimpleNumberOutput, &qword_27CEB8A58, &unk_21E3544C8, sub_21E20F134);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
        sub_21E343690();
        return (*(v33 + 8))(v5, v34);
      }

      else
      {
        if (qword_27CEB7FD0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v34, &unk_27CEB8BA0);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
        return sub_21E343690();
      }
    }
  }

  else
  {
    sub_21E343100();
    v25 = sub_21E3434C0();
    v26 = sub_21E343B50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21E1BD000, v25, v26, "Not applying any constraint", v27, 2u);
      MEMORY[0x223D57360](v27, -1, -1);
    }

    (*(v10 + 8))(v18, v37);
    v28 = sub_21E343530();
    return (*(*(v28 - 8) + 16))(v35, v36, v28);
  }
}

uint64_t sub_21E20B248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_21E343420();
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89B8);
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = (&v34 - v7);
  v39 = sub_21E3434D0();
  v9 = *(v39 - 8);
  v10 = MEMORY[0x28223BE20](v39);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  sub_21E1C4248(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498);
  type metadata accessor for WFAFMDevice3BModel();
  if (swift_dynamicCast())
  {
  }

  v18 = sub_21E1E21F0(a1);
  if (v18)
  {
    if (v18 == 1)
    {
      sub_21E343100();
      v19 = sub_21E3434C0();
      v20 = sub_21E343B50();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v40[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_21E1C80B4(0xD000000000000010, 0x800000021E35B950, v40);
        _os_log_impl(&dword_21E1BD000, v19, v20, "Applying schema identifier to server %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x223D57360](v22, -1, -1);
        MEMORY[0x223D57360](v21, -1, -1);
      }

      (*(v9 + 8))(v15, v39);
      v23 = v35;
      *v8 = 0xD000000000000010;
      v8[1] = 0x800000021E35B950;
      (*(v23 + 104))(v8, *MEMORY[0x277D0E548], v6);
      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
      sub_21E343650();
      return (*(v23 + 8))(v8, v6);
    }

    else
    {
      sub_21E343100();
      v29 = sub_21E3434C0();
      v30 = sub_21E343B50();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21E1BD000, v29, v30, "Applying schema directly", v31, 2u);
        MEMORY[0x223D57360](v31, -1, -1);
      }

      (*(v9 + 8))(v12, v39);
      v32 = sub_21E1E2280(a1);
      v33 = (v36 + 8);
      if (v32)
      {
        sub_21E20D4FC(&type metadata for DictionaryOutput, &qword_27CEB8A40, &unk_21E3544A8, sub_21E20F08C);
      }

      else
      {
        static DictionaryOutput.schema.getter(v5);
      }

      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
      sub_21E343690();
      return (*v33)(v5, v3);
    }
  }

  else
  {
    sub_21E343100();
    v25 = sub_21E3434C0();
    v26 = sub_21E343B50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21E1BD000, v25, v26, "Not applying any constraint", v27, 2u);
      MEMORY[0x223D57360](v27, -1, -1);
    }

    (*(v9 + 8))(v17, v39);
    v28 = sub_21E343530();
    return (*(*(v28 - 8) + 16))(v37, v38, v28);
  }
}

uint64_t sub_21E20B86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_21E343420();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v32 - v8);
  v37 = sub_21E3434D0();
  v10 = *(v37 - 8);
  v11 = MEMORY[0x28223BE20](v37);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  sub_21E1C4248(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498);
  type metadata accessor for WFAFMDevice3BModel();
  if (swift_dynamicCast())
  {
  }

  v19 = sub_21E1E21F0(a1);
  if (v19)
  {
    if (v19 == 1)
    {
      sub_21E343100();
      v20 = sub_21E3434C0();
      v21 = sub_21E343B50();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_21E1C80B4(0x7074754F65746144, 0xEA00000000007475, v38);
        _os_log_impl(&dword_21E1BD000, v20, v21, "Applying schema identifier to server %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x223D57360](v23, -1, -1);
        MEMORY[0x223D57360](v22, -1, -1);
      }

      (*(v10 + 8))(v16, v37);
      *v9 = 0x7074754F65746144;
      v9[1] = 0xEA00000000007475;
      (*(v7 + 104))(v9, *MEMORY[0x277D0E548], v6);
      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
      sub_21E343650();
      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      sub_21E343100();
      v29 = sub_21E3434C0();
      v30 = sub_21E343B50();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21E1BD000, v29, v30, "Applying schema directly", v31, 2u);
        MEMORY[0x223D57360](v31, -1, -1);
      }

      (*(v10 + 8))(v13, v37);
      if (sub_21E1E2280(a1))
      {
        sub_21E20D4FC(&type metadata for DateOutput, &qword_27CEB8A10, &unk_21E354478, sub_21E20EFE4);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
        sub_21E343690();
        return (*(v33 + 8))(v5, v34);
      }

      else
      {
        if (qword_27CEB7FE0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v34, qword_27CEB8BD0);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
        return sub_21E343690();
      }
    }
  }

  else
  {
    sub_21E343100();
    v25 = sub_21E3434C0();
    v26 = sub_21E343B50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21E1BD000, v25, v26, "Not applying any constraint", v27, 2u);
      MEMORY[0x223D57360](v27, -1, -1);
    }

    (*(v10 + 8))(v18, v37);
    v28 = sub_21E343530();
    return (*(*(v28 - 8) + 16))(v35, v36, v28);
  }
}

uint64_t sub_21E20BF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_21E343420();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v32 - v8);
  v37 = sub_21E3434D0();
  v10 = *(v37 - 8);
  v11 = MEMORY[0x28223BE20](v37);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  sub_21E1C4248(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498);
  type metadata accessor for WFAFMDevice3BModel();
  if (swift_dynamicCast())
  {
  }

  v19 = sub_21E1E21F0(a1);
  if (v19)
  {
    if (v19 == 1)
    {
      sub_21E343100();
      v20 = sub_21E3434C0();
      v21 = sub_21E343B50();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_21E1C80B4(0xD000000000000012, 0x800000021E35B7D0, v38);
        _os_log_impl(&dword_21E1BD000, v20, v21, "Applying schema identifier to server %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x223D57360](v23, -1, -1);
        MEMORY[0x223D57360](v22, -1, -1);
      }

      (*(v10 + 8))(v16, v37);
      *v9 = 0xD000000000000012;
      v9[1] = 0x800000021E35B7D0;
      (*(v7 + 104))(v9, *MEMORY[0x277D0E548], v6);
      sub_21E343530();
      sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
      sub_21E343650();
      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      sub_21E343100();
      v29 = sub_21E3434C0();
      v30 = sub_21E343B50();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21E1BD000, v29, v30, "Applying schema directly", v31, 2u);
        MEMORY[0x223D57360](v31, -1, -1);
      }

      (*(v10 + 8))(v13, v37);
      if (sub_21E1E2280(a1))
      {
        sub_21E20D4FC(&type metadata for TextOrEntityOutput, &qword_27CEB8990, &unk_21E354400, sub_21E20ED44);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
        sub_21E343690();
        return (*(v33 + 8))(v5, v34);
      }

      else
      {
        if (qword_27CEB7FD8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v34, qword_27CEB8BB8);
        sub_21E343530();
        sub_21E20EE78(&qword_27CEB8968, MEMORY[0x277D42D78]);
        return sub_21E343690();
      }
    }
  }

  else
  {
    sub_21E343100();
    v25 = sub_21E3434C0();
    v26 = sub_21E343B50();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21E1BD000, v25, v26, "Not applying any constraint", v27, 2u);
      MEMORY[0x223D57360](v27, -1, -1);
    }

    (*(v10 + 8))(v18, v37);
    v28 = sub_21E343530();
    return (*(*(v28 - 8) + 16))(v35, v36, v28);
  }
}

id sub_21E20C5CC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_21E3437A0();

  v2 = [v0 initWithModelManagerServicesUseCaseID_];

  return v2;
}

uint64_t *sub_21E20C640(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_21E20C6D0(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_21E20C73C(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21E20C6D0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB80E8);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t WFAskLLMModelSession.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  sub_21E1C377C(v0 + OBJC_IVAR____TtC10ContentKit20WFAskLLMModelSession_locale, &qword_27CEB8260);

  return v0;
}

uint64_t WFAskLLMModelSession.__deallocating_deinit()
{
  WFAskLLMModelSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21E20C840(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21E20C8E8;

  return WFAskLLMModelSession.generateTextResponse(userPrompt:isFinalRequest:)(a1, a2);
}

uint64_t sub_21E20C8E8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  OUTLINED_FUNCTION_294();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_3_0();
  }

  return v5(v4);
}

uint64_t sub_21E20C9DC(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21E1C9060;

  return WFAskLLMModelSession.writeNewList(userPrompt:isFinalRequest:)(a1, a2, a3);
}

uint64_t sub_21E20CA90(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21E1C9060;

  return WFAskLLMModelSession.writeEntityList(userPrompt:isFinalRequest:)(a1, a2, a3);
}

uint64_t sub_21E20CB44(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21E1C9060;

  return WFAskLLMModelSession.writeAsBoolean(userPrompt:isFinalRequest:)(a1, a2, a3);
}

uint64_t sub_21E20CBF8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21E1C9060;

  return WFAskLLMModelSession.writeAsAdvanceBoolean(userPrompt:isFinalRequest:)(a1, a2, a3);
}

uint64_t sub_21E20CCAC(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21E1C9060;

  return WFAskLLMModelSession.writeAsDictionary(userPrompt:isFinalRequest:)(a1, a2, a3);
}

uint64_t sub_21E20CD60(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21E1C9060;

  return WFAskLLMModelSession.writeAsNumber(userPrompt:isFinalRequest:)(a1, a2, a3);
}

uint64_t sub_21E20CE14(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21E1C9060;

  return WFAskLLMModelSession.writeAsTextOrEntity(userPrompt:isFinalRequest:)(a1, a2, a3);
}

uint64_t sub_21E20CEC8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21E1C7A24;

  return WFAskLLMModelSession.writeAsDate(userPrompt:isFinalRequest:)(a1, a2, a3);
}

uint64_t sub_21E20CF7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21E1C9060;

  return WFAskLLMModelSession.registerDocuments(_:)();
}

uint64_t sub_21E20D014()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8B20);
  sub_21E343830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89C0);
  sub_21E343420();
  *(swift_allocObject() + 16) = xmmword_21E354150;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89C8);
  sub_21E343410();
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89D8);
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  sub_21E343340();
  sub_21E343400();
  sub_21E343380();
  *(swift_allocObject() + 16) = xmmword_21E353BB0;
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  sub_21E343340();
  sub_21E343400();
  sub_21E343400();
  sub_21E343380();
  *(swift_allocObject() + 16) = xmmword_21E353BB0;
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  sub_21E343340();
  sub_21E343400();
  sub_21E343400();
  sub_21E343380();
  return sub_21E343390();
}

uint64_t sub_21E20D4FC(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_21E343830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89C0);
  v4 = sub_21E343420();
  OUTLINED_FUNCTION_62_0(v4);
  *(swift_allocObject() + 16) = xmmword_21E354150;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89C8);
  v5 = sub_21E343410();
  OUTLINED_FUNCTION_62_0(v5);
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89D0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89D8);
  OUTLINED_FUNCTION_62_0(v6);
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  sub_21E343340();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_13_1();
  sub_21E343400();
  sub_21E343380();
  *(swift_allocObject() + 16) = xmmword_21E353BB0;
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  sub_21E343340();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_13_1();
  v7 = sub_21E343400();
  a4(v7);
  OUTLINED_FUNCTION_386();
  OUTLINED_FUNCTION_13_1();
  sub_21E343400();
  sub_21E343380();
  *(swift_allocObject() + 16) = xmmword_21E353BB0;
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  sub_21E343340();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_13_1();
  sub_21E343400();
  OUTLINED_FUNCTION_386();
  OUTLINED_FUNCTION_13_1();
  sub_21E343400();
  sub_21E343380();
  OUTLINED_FUNCTION_13_1();
  return sub_21E343390();
}

id sub_21E20D948(void *a1)
{
  v2 = v1;
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v4 = [v2 initWithConfiguration:a1 error:v8];
  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_21E342B50();

    swift_willThrow();
  }

  return v4;
}

unint64_t sub_21E20DA10()
{
  result = qword_27CEB8910;
  if (!qword_27CEB8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8910);
  }

  return result;
}

unint64_t sub_21E20DAB0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21E20DAD4(uint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  v4 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB81A0);
  result = _swift_isClassOrObjCExistentialType();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a3;
  }

  if (*(v5 + 16) <= v4)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_21E20DB3C(unint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB81A0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && a2 >> 62)
  {
    v11 = sub_21E343E00();
    v18 = v11;
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      (*(v5 + 8))(v8, v4);
      return v11;
    }

    goto LABEL_15;
  }

  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_21E343D20();
    v15 = "ce>) -> Array<some>>>.0";
    v16 = 0xD000000000000046;
    goto LABEL_17;
  }

  if (isClassOrObjCExistentialType)
  {
    v13 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v13 = a2;
  }

  if (*(v13 + 16) <= a1)
  {
    goto LABEL_14;
  }

  v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  v18 = v11;
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {
    (*(v5 + 8))(v10, v4);
    return v11;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_21E343D20();
  v15 = "utput";
  v16 = 0xD000000000000043;
LABEL_17:
  MEMORY[0x223D55250](v16, v15 | 0x8000000000000000);
  MEMORY[0x223D55250](0xD000000000000057, 0x800000021E35BA10);
  MEMORY[0x223D55250](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v17 = sub_21E3440B0();
  MEMORY[0x223D55250](v17);

  result = sub_21E343DE0();
  __break(1u);
  return result;
}

uint64_t dispatch thunk of WFGenerativeSessionProviding.generateTextResponse(userPrompt:isFinalRequest:)()
{
  OUTLINED_FUNCTION_240();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v11 = (*(v1 + 16) + **(v1 + 16));
  v9 = swift_task_alloc();
  *(v0 + 16) = v9;
  *v9 = v0;
  v9[1] = sub_21E20DF38;

  return v11(v8, v6, v4, v2);
}

uint64_t sub_21E20DF38()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_80();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_294();
  v3 = OUTLINED_FUNCTION_3_0();

  return v4(v3);
}

uint64_t dispatch thunk of WFGenerativeSessionProviding.writeNewList(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_21_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_96();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_9(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_11_4(v16);
  OUTLINED_FUNCTION_288();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of WFGenerativeSessionProviding.writeEntityList(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_21_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_96();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_9(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_11_4(v16);
  OUTLINED_FUNCTION_288();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of WFGenerativeSessionProviding.writeAsBoolean(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_21_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_96();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_9(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_11_4(v16);
  OUTLINED_FUNCTION_288();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of WFGenerativeSessionProviding.writeAsAdvanceBoolean(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_21_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_96();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_9(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_11_4(v16);
  OUTLINED_FUNCTION_288();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of WFGenerativeSessionProviding.writeAsDictionary(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_21_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_96();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_9(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_11_4(v16);
  OUTLINED_FUNCTION_288();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of WFGenerativeSessionProviding.writeAsNumber(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_21_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_96();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_9(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_11_4(v16);
  OUTLINED_FUNCTION_288();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of WFGenerativeSessionProviding.writeAsTextOrEntity(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_21_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_96();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_9(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_11_4(v16);
  OUTLINED_FUNCTION_288();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of WFGenerativeSessionProviding.writeAsDate(userPrompt:isFinalRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_21_3(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_96();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_9(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_11_4(v16);
  OUTLINED_FUNCTION_288();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of WFGenerativeSessionProviding.registerDocuments(_:)()
{
  OUTLINED_FUNCTION_212();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_96();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 16) = v8;
  *v8 = v0;
  v8[1] = sub_21E1C9060;

  return v10(v6, v4, v2);
}

uint64_t type metadata accessor for WFAskLLMModelSession()
{
  result = qword_27CEB8930;
  if (!qword_27CEB8930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E20E918()
{
  sub_21E1DDBB4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21E20EA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

double sub_21E20EA60@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_21E1E7780();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8860);
    sub_21E343DA0();
    sub_21E1DFA50(*(*(v7 + 48) + 16 * v5), *(*(v7 + 48) + 16 * v5 + 8));
    sub_21E1C2B8C((*(v7 + 56) + 40 * v5), a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8908);
    sub_21E20DA10();
    sub_21E343DC0();
    *v1 = v7;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_21E20EB60(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89F8);
  result = sub_21E343D00();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_21E344020();

    sub_21E3438A0();
    result = sub_21E344040();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_21E343F80() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_21E20ECF0()
{
  result = qword_27CEB8970;
  if (!qword_27CEB8970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8970);
  }

  return result;
}

unint64_t sub_21E20ED44()
{
  result = qword_27CEB8978;
  if (!qword_27CEB8978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8978);
  }

  return result;
}

uint64_t sub_21E20ED98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E20EE08()
{
  result = qword_27CEB8980;
  if (!qword_27CEB8980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEB8980);
  }

  return result;
}

uint64_t sub_21E20EE78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E20EEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  return result;
}

uint64_t sub_21E20EF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_21E20EF90()
{
  result = qword_27CEB8A00;
  if (!qword_27CEB8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8A00);
  }

  return result;
}

unint64_t sub_21E20EFE4()
{
  result = qword_27CEB8A08;
  if (!qword_27CEB8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8A08);
  }

  return result;
}

unint64_t sub_21E20F038()
{
  result = qword_27CEB8A28;
  if (!qword_27CEB8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8A28);
  }

  return result;
}

unint64_t sub_21E20F08C()
{
  result = qword_27CEB8A30;
  if (!qword_27CEB8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8A30);
  }

  return result;
}

unint64_t sub_21E20F0E0()
{
  result = qword_27CEB8A48;
  if (!qword_27CEB8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8A48);
  }

  return result;
}

unint64_t sub_21E20F134()
{
  result = qword_27CEB8A50;
  if (!qword_27CEB8A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8A50);
  }

  return result;
}

unint64_t sub_21E20F188()
{
  result = qword_27CEB8A70;
  if (!qword_27CEB8A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8A70);
  }

  return result;
}

unint64_t sub_21E20F1DC()
{
  result = qword_27CEB8A78;
  if (!qword_27CEB8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8A78);
  }

  return result;
}

unint64_t sub_21E20F230()
{
  result = qword_27CEB8A98;
  if (!qword_27CEB8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8A98);
  }

  return result;
}

unint64_t sub_21E20F284()
{
  result = qword_27CEB8AA0;
  if (!qword_27CEB8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8AA0);
  }

  return result;
}

unint64_t sub_21E20F2D8()
{
  result = qword_27CEB8AC0;
  if (!qword_27CEB8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8AC0);
  }

  return result;
}

unint64_t sub_21E20F32C()
{
  result = qword_27CEB8AC8;
  if (!qword_27CEB8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8AC8);
  }

  return result;
}

unint64_t sub_21E20F380()
{
  result = qword_27CEB8AE8;
  if (!qword_27CEB8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8AE8);
  }

  return result;
}

unint64_t sub_21E20F3D4()
{
  result = qword_27CEB8AF0;
  if (!qword_27CEB8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8AF0);
  }

  return result;
}

uint64_t sub_21E20F428(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21E20F47C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_21E20F494(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  LODWORD(a16) = 16908801;
  LOBYTE(a14) = v17;
  LOBYTE(a12) = v17;
  LOBYTE(a9) = v17;

  return MEMORY[0x2821D9B98](v16, 0, 1, 0, 1, 0, 1, 0, a9, a1, 0, a12, 0, a14, 0, a16, 0, 0);
}

uint64_t OUTLINED_FUNCTION_3_9@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  LOBYTE(a2) = v12;

  return MEMORY[0x2821D9B98](v11, 0x3FE3333333333333, 0, 0, 1, 0, 1, 0, a2, a1, 0, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t OUTLINED_FUNCTION_5_5()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v1 + 32), v2);
  return v2;
}

__n128 *OUTLINED_FUNCTION_6_6(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x746E6F4372657375;
  result[2].n128_u64[1] = 0xEB00000000746E65;
  return result;
}

void OUTLINED_FUNCTION_7_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v26 = *(v25 + v23);
  *(v26 + 16) = v24 + 1;
  v27 = v26 + 24 * v24;
  *(v27 + 32) = v21;
  *(v27 + 40) = v22;
  *(v27 + 48) = a21;
  *(v25 + v23) = v26;
}

void OUTLINED_FUNCTION_8_5(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = (a2 - 32) | 0x8000000000000000;
  *(a1 + 56) = 2;
}

uint64_t OUTLINED_FUNCTION_10_6()
{
  v1 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 32), v1);
  return v1;
}

void OUTLINED_FUNCTION_12_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29 = *(v26 + v28);
  *(v29 + 16) = v27 + 1;
  v30 = v29 + 24 * v27;
  *(v30 + 32) = v25;
  *(v30 + 40) = a25;
  *(v30 + 48) = 0;
  *(v26 + v28) = v29;
}

void OUTLINED_FUNCTION_13_5(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 8) = a2;
  *(a1 + 56) = 2;
}

uint64_t OUTLINED_FUNCTION_14_5()
{
}

uint64_t OUTLINED_FUNCTION_15_4()
{
}

uint64_t OUTLINED_FUNCTION_16_4()
{
  v1 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 32), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_17_4()
{
  v1 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 32), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_18_3@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 56);
  __swift_project_boxed_opaque_existential_1((a1 + 32), v1);
  return v1;
}

void OUTLINED_FUNCTION_20_4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = v2;
  *(a1 + 8) = a2;
  *(a1 + 56) = 2;
}

void OUTLINED_FUNCTION_22_4(__n128 a1)
{
  *v2 = a1;
  v2[1].n128_u8[0] = 2;
  v2[1].n128_u8[1] = v1;
  v2[1].n128_u64[1] = v3;
  v2[2].n128_u8[0] = 2;
  v2[3].n128_u8[8] = 6;
}

uint64_t OUTLINED_FUNCTION_25_3()
{
}

uint64_t OUTLINED_FUNCTION_26_2()
{
}

uint64_t OUTLINED_FUNCTION_27_2()
{
}

uint64_t OUTLINED_FUNCTION_28_3()
{
}

uint64_t OUTLINED_FUNCTION_37_1()
{
  v3 = v0[100];
  *(v1 - 128) = v0[101];
  *(v1 - 120) = v3;
  v4 = v0[94];
  *(v1 - 112) = v0[97];
  *(v1 - 104) = v4;
}

uint64_t OUTLINED_FUNCTION_38_1()
{
  v3 = v0[103];
  *(v1 - 128) = v0[104];
  *(v1 - 120) = v3;
  v4 = v0[97];
  *(v1 - 112) = v0[100];
  *(v1 - 104) = v4;
}

void OUTLINED_FUNCTION_39_1(__n128 a1)
{
  *v2 = a1;
  v2[1].n128_u8[0] = 2;
  v2[1].n128_u8[1] = v1;
}

uint64_t OUTLINED_FUNCTION_43_1()
{
  v3 = v0[100];
  *(v1 - 128) = v0[101];
  *(v1 - 120) = v3;
  v4 = v0[94];
  *(v1 - 112) = v0[97];
  *(v1 - 104) = v4;
}

uint64_t OUTLINED_FUNCTION_44_1()
{
  v3 = v0[103];
  *(v1 - 128) = v0[104];
  *(v1 - 120) = v3;
  v4 = v0[97];
  *(v1 - 112) = v0[100];
  *(v1 - 104) = v4;
}

uint64_t OUTLINED_FUNCTION_52(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_58_0()
{

  sub_21E1D3A90();
}

uint64_t OUTLINED_FUNCTION_59_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_61_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x2821D9FC8](a1, v9, a9);
}

uint64_t OUTLINED_FUNCTION_64_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 80) = a1;
}

uint64_t OUTLINED_FUNCTION_74()
{
  v4 = v0 + *(*(v2 - 120) + 28);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_76()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_79@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + *(a1 + 28);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

void OUTLINED_FUNCTION_81()
{

  JUMPOUT(0x223D55250);
}

uint64_t OUTLINED_FUNCTION_82()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_83()
{

  sub_21E1D3A90();
}

uint64_t OUTLINED_FUNCTION_85(uint64_t a1)
{

  return MEMORY[0x2821A3E28](v2, v1, a1);
}

void OUTLINED_FUNCTION_86()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x223D57360);
}

uint64_t OUTLINED_FUNCTION_89(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return MEMORY[0x2821FBF50](32, 0xE100000000000000, 100);
}

void OUTLINED_FUNCTION_90(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

void OUTLINED_FUNCTION_95(uint64_t a1)
{
  *(v1 + 24) = a1;
  *(v2 - 96) = 0;

  sub_21E1D1464();
}

void OUTLINED_FUNCTION_107(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_115()
{

  return sub_21E3437F0();
}

uint64_t OUTLINED_FUNCTION_116()
{
  v3 = *(*(v0 + v1) + 16);

  return sub_21E1C4418(v3);
}

uint64_t OUTLINED_FUNCTION_117()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_118(uint64_t a1)
{

  return MEMORY[0x2821D9FF0](a1, v1, v2);
}

void OUTLINED_FUNCTION_119(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_124()
{
  sub_21E1C2B8C((v0 + 272), v0 + 232);

  return sub_21E1C4248(v0 + 232, v0 + 352);
}

uint64_t OUTLINED_FUNCTION_126()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 192);

  return sub_21E20802C((v1 + 32), v0);
}

uint64_t OUTLINED_FUNCTION_131()
{
  v3 = *(*(v1 + v0) + 16);

  return sub_21E1C4418(v3);
}

uint64_t OUTLINED_FUNCTION_132()
{

  return MEMORY[0x2821FBF38](32034, 0xE200000000000000, v0, v1);
}

BOOL OUTLINED_FUNCTION_133(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_140()
{
}

void OUTLINED_FUNCTION_141()
{
}

uint64_t OUTLINED_FUNCTION_145(void *a1, unint64_t a2)
{
  v4 = *(v2 - 112);

  return WFLanguageRecognizer.locale(for:)(a1, a2, v4);
}

BOOL OUTLINED_FUNCTION_156(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_162(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

double OUTLINED_FUNCTION_167()
{
  v4 = *(v0 + v2);

  return sub_21E1CB024(v4, v1 + 152);
}

uint64_t OUTLINED_FUNCTION_176()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_177()
{
}

void OUTLINED_FUNCTION_179()
{
}

uint64_t OUTLINED_FUNCTION_192()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_205()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_206()
{
  v3 = v0[128];
  *(v1 - 128) = v0[129];
  *(v1 - 120) = v3;
  v4 = v0[122];
  *(v1 - 112) = v0[125];
  *(v1 - 104) = v4;
}

void OUTLINED_FUNCTION_207(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_208(uint64_t a1)
{

  return MEMORY[0x2821D9FB0](a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_209(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return MEMORY[0x282166D90]();
}

uint64_t OUTLINED_FUNCTION_210()
{

  return MEMORY[0x2821A3C78](v0);
}

uint64_t OUTLINED_FUNCTION_211()
{

  return sub_21E2083EC((v0 + 32), v1);
}

uint64_t OUTLINED_FUNCTION_214()
{
}

uint64_t OUTLINED_FUNCTION_225(uint64_t a1, uint64_t a2)
{

  return sub_21E1E3438(v2 + 352, a2);
}

double OUTLINED_FUNCTION_226()
{

  return sub_21E1C60D4(v0, v1 + 272);
}

uint64_t OUTLINED_FUNCTION_227()
{

  return sub_21E343540();
}

uint64_t OUTLINED_FUNCTION_228()
{

  return sub_21E343540();
}

uint64_t OUTLINED_FUNCTION_230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_21E1E89CC(va, v14, v13);
}

uint64_t OUTLINED_FUNCTION_231(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_21E1E89CC(va, v14, v13);
}

void OUTLINED_FUNCTION_233(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_237(uint64_t a1)
{
  v2 = MEMORY[0x277D71A90];

  return MEMORY[0x2821FEA68](a1, v2, 1);
}

BOOL OUTLINED_FUNCTION_238(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_239(uint64_t a1@<X8>)
{
  *v2 = a1;
  v2[1] = v1;
  v2[2] = v3;
}

uint64_t OUTLINED_FUNCTION_241(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_270()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_271()
{

  return sub_21E343100();
}

BOOL OUTLINED_FUNCTION_273(os_log_type_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return os_log_type_enabled(v13, a1);
}

uint64_t OUTLINED_FUNCTION_274(__n128 a1)
{
  *v3 = a1;
  v3[1].n128_u8[0] = 2;
  v3[1].n128_u8[1] = v2;
  v3[1].n128_u64[1] = v1;
  v3[2].n128_u8[0] = 2;
  v3[3].n128_u8[8] = 6;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_278()
{
}

uint64_t OUTLINED_FUNCTION_283(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return sub_21E20EB60(v2);
}

uint64_t OUTLINED_FUNCTION_284()
{

  return sub_21E343100();
}

id OUTLINED_FUNCTION_285(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_286(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_287(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_21E1C80B4(a1, a2, &a9);
}

uint64_t OUTLINED_FUNCTION_290()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);

  return sub_21E20EEC0(v2, v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_292@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 696) = *(a1 + 24);

  return sub_21E342F00();
}

uint64_t OUTLINED_FUNCTION_299()
{
}

uint64_t OUTLINED_FUNCTION_300()
{
  sub_21E1DF880(v1, v0);
}

void OUTLINED_FUNCTION_310(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_311()
{

  return sub_21E20ED98(v0, v2 + v1);
}

uint64_t OUTLINED_FUNCTION_312()
{

  return sub_21E1C41D4();
}

uint64_t OUTLINED_FUNCTION_314()
{
}

uint64_t OUTLINED_FUNCTION_319()
{
}

uint64_t OUTLINED_FUNCTION_322()
{
}

BOOL OUTLINED_FUNCTION_326()
{

  return os_log_type_enabled(v0, v1);
}

BOOL OUTLINED_FUNCTION_327()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_328()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_329()
{
}

void OUTLINED_FUNCTION_330()
{
}

void OUTLINED_FUNCTION_331()
{
}

void OUTLINED_FUNCTION_332()
{
}

void OUTLINED_FUNCTION_333()
{
}

uint64_t OUTLINED_FUNCTION_334()
{

  return sub_21E1C41D4();
}

uint64_t OUTLINED_FUNCTION_336()
{

  return sub_21E1DF880(v1, v0);
}

uint64_t OUTLINED_FUNCTION_337()
{

  return sub_21E343100();
}

void OUTLINED_FUNCTION_338()
{
}

id OUTLINED_FUNCTION_340(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_341()
{
}

uint64_t OUTLINED_FUNCTION_343()
{
}

void OUTLINED_FUNCTION_355(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_356(uint64_t a1, unint64_t a2)
{

  return sub_21E1C80B4(a1, a2, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_357()
{

  return __swift_destroy_boxed_opaque_existential_1Tm(v0 + 232);
}

uint64_t OUTLINED_FUNCTION_358()
{

  return sub_21E1C4248(v1 + 192, v0 + 48);
}

uint64_t *OUTLINED_FUNCTION_359@<X0>(uint64_t a1@<X8>)
{
  v2[27] = v1;
  v2[28] = a1;

  return __swift_allocate_boxed_opaque_existential_1(v2 + 24);
}

uint64_t OUTLINED_FUNCTION_360()
{
}

uint64_t OUTLINED_FUNCTION_362()
{

  return sub_21E1C4248(v0 + 32, v1 + 312);
}

uint64_t OUTLINED_FUNCTION_363()
{

  return sub_21E1DD8B4(v0 + v2, v1);
}

uint64_t OUTLINED_FUNCTION_365()
{

  return sub_21E343F80();
}

uint64_t OUTLINED_FUNCTION_366()
{

  return sub_21E343450();
}

void OUTLINED_FUNCTION_367(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_368()
{

  return sub_21E343830();
}

uint64_t OUTLINED_FUNCTION_369()
{

  return sub_21E343830();
}

uint64_t OUTLINED_FUNCTION_370()
{
  v2 = *(v0 + 48) + 32;

  return sub_21E1E2280(v2);
}

uint64_t OUTLINED_FUNCTION_371()
{

  return sub_21E343100();
}

void OUTLINED_FUNCTION_372()
{
}

void OUTLINED_FUNCTION_373()
{
}

uint64_t OUTLINED_FUNCTION_374()
{

  return sub_21E343100();
}

uint64_t OUTLINED_FUNCTION_376(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_21E1C80B4(a1, a2, va);
}

void OUTLINED_FUNCTION_377(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_t log)
{

  _os_log_impl(a1, log, v13, a4, v14, 0xCu);
}

uint64_t OUTLINED_FUNCTION_378()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_379(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  v2[25] = v3;
}

uint64_t OUTLINED_FUNCTION_380()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_381(uint64_t a1, unint64_t a2)
{

  return sub_21E1C80B4(a1, a2, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_409(uint64_t a1)
{
  *(v2 + 360) = a1;

  return MEMORY[0x282200510](v1, a1);
}

uint64_t OUTLINED_FUNCTION_410()
{
}

uint64_t OUTLINED_FUNCTION_411()
{

  return sub_21E20EA1C(v2, v1, v0);
}

void OUTLINED_FUNCTION_412()
{
}

uint64_t OUTLINED_FUNCTION_413()
{
}

uint64_t OUTLINED_FUNCTION_414()
{
}

uint64_t OUTLINED_FUNCTION_415()
{
  *(v0 + 712) = 0;
}

uint64_t OUTLINED_FUNCTION_416()
{
}

uint64_t OUTLINED_FUNCTION_417(unint64_t *a1)
{

  return sub_21E20F428(a1, v1);
}

uint64_t OUTLINED_FUNCTION_418(float a1)
{
  *v1 = a1;
}

uint64_t OUTLINED_FUNCTION_419()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  return sub_21E20F47C(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_420()
{

  return sub_21E343CB0();
}

uint64_t sub_21E211FA4(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_142_0();
    OUTLINED_FUNCTION_120();
  }

  sub_21E3438A0();
}

uint64_t sub_21E212014()
{
  sub_21E3438A0();
}

uint64_t sub_21E212090()
{
  sub_21E3438A0();
}

uint64_t sub_21E2120F8()
{
  sub_21E344020();
  sub_21E3438A0();

  return sub_21E344040();
}

uint64_t sub_21E212174()
{
  sub_21E344020();
  sub_21E3438A0();

  return sub_21E344040();
}

uint64_t sub_21E212204(uint64_t a1, char a2)
{
  sub_21E344020();
  if (a2)
  {
    OUTLINED_FUNCTION_142_0();
    OUTLINED_FUNCTION_120();
  }

  sub_21E3438A0();

  return sub_21E344040();
}

ContentKit::TextOrEntityOutput __swiftcall TextOrEntityOutput.init(responseType:text:uuidList:)(ContentKit::TextOrEntityOutput::ResponseType responseType, Swift::String text, Swift::OpaquePointer uuidList)
{
  *v3 = *responseType;
  *(v3 + 8) = text;
  *(v3 + 24) = uuidList;
  result.text = text;
  result.uuidList = uuidList;
  result.responseType = responseType;
  return result;
}

uint64_t static Response.schema.getter()
{
  swift_getMetatypeMetadata();
  sub_21E343830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89C0);
  v0 = sub_21E343420();
  OUTLINED_FUNCTION_62_0(v0);
  *(swift_allocObject() + 16) = xmmword_21E354150;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89C8);
  v1 = sub_21E343410();
  OUTLINED_FUNCTION_62_0(v1);
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89D0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB89D8);
  OUTLINED_FUNCTION_62_0(v2);
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  sub_21E343340();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_13_1();
  sub_21E343400();
  sub_21E343380();
  *(swift_allocObject() + 16) = xmmword_21E353BB0;
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  sub_21E343340();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_13_1();
  sub_21E343400();
  sub_21E223754();
  OUTLINED_FUNCTION_386();
  OUTLINED_FUNCTION_13_1();
  sub_21E343400();
  sub_21E343380();
  *(swift_allocObject() + 16) = xmmword_21E353BB0;
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  sub_21E343340();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_13_1();
  sub_21E343400();
  sub_21E223754();
  OUTLINED_FUNCTION_386();
  OUTLINED_FUNCTION_13_1();
  sub_21E343400();
  sub_21E343380();
  OUTLINED_FUNCTION_13_1();
  return sub_21E343390();
}

uint64_t ListOutput.Streaming.init(objectID:decoder:)()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_93_0(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8BF0);
  OUTLINED_FUNCTION_7_7(v4);
  *(v0 + 48) = v5;
  v6 = OUTLINED_FUNCTION_378();
  v7 = OUTLINED_FUNCTION_121(v6);
  v8 = type metadata accessor for ListOutput.Streaming(v7);
  OUTLINED_FUNCTION_28_0(v8);
  *(v0 + 64) = OUTLINED_FUNCTION_378();
  v9 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21E212854()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_15_5();
  swift_task_alloc();
  OUTLINED_FUNCTION_146_0();
  *(v0 + 72) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_50_1(v1);
  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x282165FA8]();
}

uint64_t sub_21E21290C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E212A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_1_3();
  (*(v12 + 8))(v10);
  v13 = OUTLINED_FUNCTION_24_4();
  v14(v13);
  v15 = OUTLINED_FUNCTION_67_1();
  sub_21E223910(v15, v11);
  OUTLINED_FUNCTION_117_0();

  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_104_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_21E212ABC()
{
  OUTLINED_FUNCTION_20();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  sub_21E342C60();
  OUTLINED_FUNCTION_1_3();
  (*(v3 + 8))(v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v1);

  OUTLINED_FUNCTION_8();

  return v4();
}

uint64_t sub_21E212B64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21E1C9060;

  return ListOutput.Streaming.init(objectID:decoder:)();
}

uint64_t static ListOutput.collect(_:)()
{
  OUTLINED_FUNCTION_87_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8BF8);
  swift_allocBox();
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8C00);
  sub_21E343AD0();
  v0 = OUTLINED_FUNCTION_32_3();

  return MEMORY[0x2822005C0](v0);
}

uint64_t sub_21E212CA0(uint64_t a1)
{
  v1[8] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8DC0);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB9210);
  v1[12] = swift_task_alloc();
  v1[13] = type metadata accessor for ListOutput.Streaming(0);
  v1[14] = swift_task_alloc();
  v1[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8BF8);
  v1[16] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_21E212DFC, 0, 0);
}

uint64_t sub_21E212DFC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_73();
  swift_task_alloc();
  OUTLINED_FUNCTION_146_0();
  *(v0 + 136) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_103_0(v1);

  return MEMORY[0x2822005B0](v3);
}

uint64_t sub_21E212E8C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
    swift_endAccess();
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E212F8C()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_33_3(v2, v3, *(v0 + 104));
  if (v4)
  {
    sub_21E227B54(v1, &unk_27CEB9210);
    OUTLINED_FUNCTION_161();
    **(v0 + 64) = 0;

    OUTLINED_FUNCTION_46_1();

    return v5();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_60_1();
    sub_21E223910(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8BF0);
    sub_21E343AD0();
    *(v0 + 152) = MEMORY[0x277D84F90];
    swift_task_alloc();
    OUTLINED_FUNCTION_146_0();
    *(v0 + 160) = v9;
    *v9 = v10;
    OUTLINED_FUNCTION_54_1(v9);
    OUTLINED_FUNCTION_17_5();

    return MEMORY[0x2822005A8](v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_21E2130EC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E2131E8()
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();
  v1 = *(v0 + 152);
  if (*(v0 + 48))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_123_0();
    }

    OUTLINED_FUNCTION_132_0();
    if (v6)
    {
      OUTLINED_FUNCTION_122();
      v5 = v2;
    }

    OUTLINED_FUNCTION_131_0(v2, v3, v4, v5);
    *(v0 + 152) = v7;
    swift_task_alloc();
    OUTLINED_FUNCTION_146_0();
    *(v0 + 160) = v8;
    *v8 = v9;
    OUTLINED_FUNCTION_54_1(v8);
    OUTLINED_FUNCTION_17_5();
    OUTLINED_FUNCTION_364();

    return MEMORY[0x2822005A8](v10, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_36_1();
    v19(v18);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_160_0();
    **(v0 + 64) = v1;

    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_364();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_21E213330()
{
  OUTLINED_FUNCTION_20();
  swift_endAccess();
  OUTLINED_FUNCTION_79_0();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_21E2133AC()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_36_1();
  v1(v0);
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_79_0();

  OUTLINED_FUNCTION_8();

  return v2();
}

uint64_t sub_21E213434(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7473694C77656ELL && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21E343F80();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21E2134C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E213434(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21E2134F4(uint64_t a1)
{
  v2 = sub_21E223830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E213530(uint64_t a1)
{
  v2 = sub_21E223830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21E213668()
{
  OUTLINED_FUNCTION_87_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB83B0);
  OUTLINED_FUNCTION_10_7();
  sub_21E223884(v3);
  sub_21E343310();
  sub_21E343330();
  OUTLINED_FUNCTION_1_3();
  result = (*(v4 + 8))(v1);
  if (!v2)
  {
    *v0 = v6;
  }

  return result;
}

uint64_t sub_21E213788()
{
  v1 = OUTLINED_FUNCTION_173_0();
  __swift_allocate_value_buffer(v1, v0);
  __swift_project_value_buffer(v1, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB91C8);
  v2 = sub_21E3433E0();
  OUTLINED_FUNCTION_62_0(v2);
  *(swift_allocObject() + 16) = xmmword_21E3522F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB83B0);
  OUTLINED_FUNCTION_10_7();
  sub_21E223884(v3);
  OUTLINED_FUNCTION_60_1();
  sub_21E3433D0();
  return sub_21E3433F0();
}

uint64_t _s10ContentKit10ListOutputV9StreamingV03newC0ScsySSs5Error_pGvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8BF0);
  OUTLINED_FUNCTION_13_0();
  v0 = OUTLINED_FUNCTION_8_4();

  return v1(v0);
}

uint64_t EntitiesOutput.Streaming.init(objectID:decoder:)()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_93_0(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8BF0);
  OUTLINED_FUNCTION_7_7(v4);
  *(v0 + 48) = v5;
  v6 = OUTLINED_FUNCTION_378();
  v7 = OUTLINED_FUNCTION_121(v6);
  v8 = type metadata accessor for EntitiesOutput.Streaming(v7);
  OUTLINED_FUNCTION_28_0(v8);
  *(v0 + 64) = OUTLINED_FUNCTION_378();
  v9 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21E213A00()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_15_5();
  swift_task_alloc();
  OUTLINED_FUNCTION_146_0();
  *(v0 + 72) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_50_1(v1);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x282165FA8]();
}

uint64_t sub_21E213AAC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E213BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_1_3();
  (*(v12 + 8))(v10);
  v13 = OUTLINED_FUNCTION_24_4();
  v14(v13);
  v15 = OUTLINED_FUNCTION_67_1();
  sub_21E223910(v15, v11);
  OUTLINED_FUNCTION_117_0();

  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_104_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_21E213C5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21E1C9060;

  return EntitiesOutput.Streaming.init(objectID:decoder:)();
}

uint64_t static EntitiesOutput.collect(_:)()
{
  OUTLINED_FUNCTION_87_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8C30);
  swift_allocBox();
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8C38);
  sub_21E343AD0();
  v0 = OUTLINED_FUNCTION_32_3();

  return MEMORY[0x2822005C0](v0);
}

uint64_t sub_21E213D98(uint64_t a1)
{
  v1[8] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8DC0);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB9208);
  v1[12] = swift_task_alloc();
  v1[13] = type metadata accessor for EntitiesOutput.Streaming(0);
  v1[14] = swift_task_alloc();
  v1[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8C30);
  v1[16] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_21E213EF4, 0, 0);
}

uint64_t sub_21E213EF4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_73();
  swift_task_alloc();
  OUTLINED_FUNCTION_146_0();
  *(v0 + 136) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_103_0(v1);

  return MEMORY[0x2822005B0](v3);
}

uint64_t sub_21E213F84()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
    swift_endAccess();
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E214084()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_33_3(v2, v3, *(v0 + 104));
  if (v4)
  {
    sub_21E227B54(v1, &unk_27CEB9208);
    OUTLINED_FUNCTION_161();
    **(v0 + 64) = 0;

    OUTLINED_FUNCTION_46_1();

    return v5();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_60_1();
    sub_21E223910(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8BF0);
    sub_21E343AD0();
    *(v0 + 152) = MEMORY[0x277D84F90];
    swift_task_alloc();
    OUTLINED_FUNCTION_146_0();
    *(v0 + 160) = v9;
    *v9 = v10;
    OUTLINED_FUNCTION_54_1(v9);
    OUTLINED_FUNCTION_17_5();

    return MEMORY[0x2822005A8](v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_21E2141E4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_42_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E2142E0()
{
  OUTLINED_FUNCTION_385();
  OUTLINED_FUNCTION_212();
  v1 = *(v0 + 152);
  if (*(v0 + 48))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_123_0();
    }

    OUTLINED_FUNCTION_132_0();
    if (v6)
    {
      OUTLINED_FUNCTION_122();
      v5 = v2;
    }

    OUTLINED_FUNCTION_131_0(v2, v3, v4, v5);
    *(v0 + 152) = v7;
    swift_task_alloc();
    OUTLINED_FUNCTION_146_0();
    *(v0 + 160) = v8;
    *v8 = v9;
    OUTLINED_FUNCTION_54_1(v8);
    OUTLINED_FUNCTION_17_5();
    OUTLINED_FUNCTION_364();

    return MEMORY[0x2822005A8](v10, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_36_1();
    v19(v18);
    OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_160_0();
    **(v0 + 64) = v1;

    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_364();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_21E214428()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_36_1();
  v1(v0);
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_79_0();

  OUTLINED_FUNCTION_8();

  return v2();
}

uint64_t sub_21E2144B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7473694C64697575 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21E343F80();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21E214544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E2144B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21E214570(uint64_t a1)
{
  v2 = sub_21E2239EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E2145AC(uint64_t a1)
{
  v2 = sub_21E2239EC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21E21461C()
{
  OUTLINED_FUNCTION_30_1();
  v12 = v0;
  v2 = v1;
  v4 = OUTLINED_FUNCTION_169_0(v1, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  v11 = OUTLINED_FUNCTION_58(v2, v2[3]);
  v12(v11);

  sub_21E344060();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB83B0);
  OUTLINED_FUNCTION_101_0(&qword_27CEB8C18);
  sub_21E343F40();

  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_31_1();
}

void sub_21E2147B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_1();
  v13 = v12;
  v15 = v14;
  v23 = v16;
  v18 = OUTLINED_FUNCTION_169_0(v14, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v18);
  OUTLINED_FUNCTION_5();
  v24 = v20;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_39_2();
  v22 = OUTLINED_FUNCTION_58(v15, v15[3]);
  v13(v22);
  OUTLINED_FUNCTION_166_0();
  sub_21E344050();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB83B0);
    OUTLINED_FUNCTION_100_0(&qword_27CEB8C28);
    OUTLINED_FUNCTION_139_0();
    sub_21E343EC0();
    (*(v24 + 8))(v11, v19);
    *v23 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_31_1();
}