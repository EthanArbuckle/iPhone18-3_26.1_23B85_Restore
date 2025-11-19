void sub_232C72A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  v6 = sub_232B2D120(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = sub_232C79D04();
  v10 = dispatch_semaphore_create(v9);
  v11 = sub_232CEA090();
  sub_232C79D94(v11);
  sub_232BC1ECC();
  v12 = swift_allocObject();
  sub_232B13F74();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_232C79B6C();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  v14[5] = v10;
  v15 = v10;
  v16 = sub_232C79C54();
  sub_232B23FB4(v16, v17, v3, a3, v14);

  sub_232CEA280();
}

uint64_t sub_232C72B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_232CE9A30();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C72C5C, 0, 0);
}

uint64_t sub_232C72C5C()
{
  sub_232B26C7C();
  sub_232C79A88();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_232C6F598();

    v4 = &v3[OBJC_IVAR____TtC21DocumentUnderstanding13DUBulkUpdater_poemOnBoardHandler];
    v5 = *&v3[OBJC_IVAR____TtC21DocumentUnderstanding13DUBulkUpdater_poemOnBoardHandler];
    v0[10] = v5;
    v0[11] = *(v4 + 1);

    v6 = v5;

    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    sub_232C6EF9C(v7);

    return sub_232C3DCC0();
  }

  else
  {
    sub_232C79CD4();

    sub_232B26CF4();

    return v9();
  }
}

uint64_t sub_232C72D80()
{
  sub_232B26C44();
  sub_232B26C70();
  v3 = v2;
  sub_232B51338();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_232B26B3C();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (!v0)
  {
    v9 = *(v3 + 88);
  }

  sub_232B48304();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_232C72E88()
{
  sub_232B26C44();
  sub_232C79CD4();

  sub_232B26CF4();

  return v0();
}

uint64_t sub_232C72EE4()
{
  sub_232C79DE0();
  sub_232B482F8();
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);

  sub_232CE9A20();
  v5 = v2;
  v6 = sub_232CE9A00();
  LOBYTE(v4) = sub_232CEA1C0();

  v7 = os_log_type_enabled(v6, v4);
  v8 = *(v0 + 104);
  if (v7)
  {
    sub_232BC1F80();
    v9 = sub_232C79C7C();
    *v1 = 138412290;
    v10 = v8;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v11;
    *v9 = v11;
    sub_232C79B20();
    _os_log_impl(v12, v13, v14, v15, v1, 0xCu);
    sub_232B267AC(v9, &qword_27DDC6FD0, &unk_232CFA240);
    v16 = sub_232C79A24();
    MEMORY[0x238393870](v16);
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  else
  {
  }

  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  sub_232C79CD4();

  sub_232B26CF4();
  sub_232C79DCC();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

void sub_232C73098()
{
  v1 = v0;
  v2 = sub_232CE9A30();
  v3 = sub_232B48F0C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232C799AC();
  v8 = sub_232CE9A00();
  v9 = sub_232CEA1A0();
  if (os_log_type_enabled(v8, v9))
  {
    sub_232BAE0AC();
    v10 = swift_slowAlloc();
    sub_232C31D84(v10);
    sub_232C79C48();
    _os_log_impl(v11, v12, v13, v14, v15, v16);
    v17 = sub_232C79A24();
    MEMORY[0x238393870](v17);
  }

  v18 = *(v5 + 8);
  v19 = sub_232BC1E48();
  v20(v19);
  v21 = *&v0[OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_queue];
  sub_232BC1ECC();
  v22 = swift_allocObject();
  *(v22 + 16) = v1;
  v30 = sub_232C78A50;
  v31 = v22;
  sub_232C79AE4();
  v27 = 1107296256;
  sub_232C79980();
  v28 = v23;
  v29 = &unk_284814118;
  v24 = _Block_copy(aBlock);
  v25 = v1;

  [v21 addOperationWithBlock_];
  _Block_release(v24);
}

void sub_232C7322C()
{
  v0 = sub_232C6F598();
  sub_232C6B70C();
}

uint64_t sub_232C732C0(uint64_t a1)
{
  if (!*(a1 + 16) || (v1 = *(a1 + 32), v2 = *MEMORY[0x277D06510], , v3 = sub_232BA5FEC(), sub_232B2053C(v3, v4), sub_232BECA40(), , !v2))
  {
  }

  v5 = sub_232BE0738();
  if (v5 == 14)
  {
    return 0;
  }

  return sub_232BE0724(v5);
}

uint64_t static TextUnderstandingManager._extractPersonalID(withLines:pid:)()
{
  sub_232B26C44();
  v1[26] = v2;
  v1[27] = v0;
  v1[25] = v3;
  v4 = sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  sub_232B2D120(v4);
  v6 = *(v5 + 64);
  v1[28] = sub_232B27FCC();
  v7 = sub_232CE9A30();
  v1[29] = v7;
  sub_232B27FBC(v7);
  v1[30] = v8;
  v10 = *(v9 + 64);
  v1[31] = sub_232C79E3C();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  sub_232B48304();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_232C734EC()
{
  sub_232C79B8C();
  v116 = v0;
  type metadata accessor for DUModelRunner();
  static DUModelRunner.isLLMAvailable(for:)();
  if ((v1 & 1) == 0)
  {
    v33 = v0[32];
    sub_232CE9A20();
    v34 = sub_232CE9A00();
    v35 = sub_232CEA1C0();
    if (sub_232C6F000(v35))
    {
      sub_232BAE0AC();
      v36 = swift_slowAlloc();
      sub_232BD4280(v36);
      sub_232C79A04();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v42 = v0[32];
    v43 = v0[29];
    v44 = v0[30];

    v45 = sub_232C79A54();
    v46(v45);
    v47 = *MEMORY[0x277D06948];
    sub_232CE9D50();
    sub_232BECA40();
    sub_232B124A8(&qword_27DDC6FC0, &unk_232CF7CC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_232CF6460;
    v49 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_232CE9D50();
    *(inited + 40) = v50;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x8000000232D0BCB0;
    v51 = sub_232CE9C60();
    v52 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v53 = sub_232C79A64();
    v55 = 1;
    goto LABEL_14;
  }

  static DUModelRunner.isModelEnabled(modelType:preferredLanguages:)();
  if ((v2 & 1) == 0)
  {
    v56 = v0[33];
    sub_232CE9A20();
    v57 = sub_232CE9A00();
    v58 = sub_232CEA1C0();
    if (sub_232C6F000(v58))
    {
      sub_232BAE0AC();
      v59 = swift_slowAlloc();
      sub_232BD4280(v59);
      sub_232C79A04();
      _os_log_impl(v60, v61, v62, v63, v64, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v65 = v0[33];
    v66 = v0[29];
    v67 = v0[30];

    v68 = sub_232C79A54();
    v69(v68);
    v70 = *MEMORY[0x277D06948];
    sub_232CE9D50();
    sub_232BECA40();
    sub_232B124A8(&qword_27DDC6FC0, &unk_232CF7CC0);
    v71 = swift_initStackObject();
    *(v71 + 16) = xmmword_232CF6460;
    v72 = *MEMORY[0x277CCA450];
    *(v71 + 32) = sub_232CE9D50();
    *(v71 + 40) = v73;
    *(v71 + 72) = MEMORY[0x277D837D0];
    *(v71 + 48) = 0xD000000000000027;
    *(v71 + 56) = 0x8000000232D0BCE0;
    v51 = sub_232CE9C60();
    v74 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v53 = sub_232C79A64();
    v55 = 0;
LABEL_14:
    sub_232BC8980(v53, v54, v55, v51);
LABEL_19:
    v90 = v0[36];
    v89 = v0[37];
    sub_232C79D74();

    v91 = v0[1];
    v92 = sub_232C79C54();

    return v93(v92);
  }

  v3 = v0[25];
  type metadata accessor for DUIDClassificationImplementation();
  v0[22] = v3;
  sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
  sub_232B27E88();
  v4 = sub_232C79B98();
  LOBYTE(v3) = static DUIDClassificationImplementation.textLengthGate(for:minLength:maxLength:)(v4, v5, 50, 1500);
  v7 = v6;

  if ((v3 & 1) == 0)
  {
    v75 = v0[37];
    sub_232CE9A20();
    v76 = sub_232CE9A00();
    v77 = sub_232CEA1E0();
    if (sub_232C6F000(v77))
    {
      v78 = sub_232BC1F80();
      *v78 = 134217984;
      *(v78 + 4) = v7;
      sub_232C79A04();
      _os_log_impl(v79, v80, v81, v82, v83, 0xCu);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v84 = v0[37];
    goto LABEL_18;
  }

  v0[23] = v0[25];
  v8 = sub_232C79B98();
  v10 = static DUIDClassificationImplementation.isIDDocument(for:labelKey:labelThreshold:)(v8, v9, 0x6576697469736F70, 0xE800000000000000, 0.5);
  v12 = v11;
  v14 = v13;

  if (v10 == 2)
  {
    v15 = v0[35];
    sub_232CE9A20();
    v16 = sub_232CE9A00();
    v17 = sub_232CEA1C0();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[35];
    v20 = v0[29];
    v21 = v0[30];
    if (v18)
    {
      sub_232BAE0AC();
      v22 = swift_slowAlloc();
      sub_232C31D84(v22);
      sub_232C79C48();
      _os_log_impl(v23, v24, v25, v26, v27, v28);
      v29 = sub_232C79A24();
      MEMORY[0x238393870](v29);
    }

    v30 = *(v21 + 8);
    v31 = sub_232BA5FEC();
    v32(v31);
    goto LABEL_19;
  }

  if ((v10 & 1) == 0)
  {
    v105 = v0[36];
    sub_232CE9A20();
    v76 = sub_232CE9A00();
    v106 = sub_232CEA1E0();
    if (sub_232C6F000(v106))
    {
      v107 = sub_232BC1F80();
      *v107 = 134217984;
      v108 = v12;
      if (v14)
      {
        v108 = -1.0;
      }

      *(v107 + 4) = v108;
      sub_232C79A04();
      _os_log_impl(v109, v110, v111, v112, v113, 0xCu);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v114 = v0[36];
LABEL_18:
    v85 = v0[29];
    v86 = v0[30];

    v87 = sub_232C79A54();
    v88(v87);
    goto LABEL_19;
  }

  v95 = v0[28];
  v97 = v0[25];
  v96 = v0[26];
  v115 = 2;
  v0[38] = DUModelRunner.__allocating_init(extractionCategory:pid:)(&v115, v96, 0);
  v0[24] = v97;
  sub_232C79B98();
  v0[39] = v98;
  v99 = sub_232CE8E10();
  sub_232B12504(v95, 1, 1, v99);
  v100 = swift_task_alloc();
  v0[40] = v100;
  *v100 = v0;
  v100[1] = sub_232C73B54;
  v101 = v0[28];
  v102 = sub_232BC1E48();

  return sub_232BDE050(v102, v103, v104);
}

uint64_t sub_232C73B54()
{
  sub_232B26C7C();
  sub_232B26C70();
  sub_232BC1BAC();
  *v3 = v2;
  v5 = v4[40];
  v6 = v4[39];
  v7 = v4[38];
  v8 = v4[28];
  v9 = *v1;
  sub_232B26B3C();
  *v10 = v9;
  *(v12 + 328) = v11;
  *(v12 + 336) = v0;

  sub_232B267AC(v8, &qword_27DDC7398, &unk_232CF9070);

  sub_232B48304();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

void sub_232C73CBC()
{
  sub_232C79B8C();
  v1 = v0[41];
  v2 = v1;
  if (*(v1 + 16) >= 2uLL)
  {
    v3 = v0[34];
    sub_232CE9A20();
    v4 = sub_232CE9A00();
    v5 = sub_232CEA1C0();
    if (sub_232C6F000(v5))
    {
      sub_232BAE0AC();
      v6 = swift_slowAlloc();
      sub_232BD4280(v6);
      sub_232C79A04();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v12 = v0[34];
    v13 = v0[29];
    v14 = v0[30];

    v15 = *(v14 + 8);
    v16 = sub_232BA5FEC();
    v17(v16);
    v2 = v0[41];
  }

  sub_232C732C0(v2);
  if (*(v1 + 16))
  {
    v18 = *(v0[41] + 32);
  }

  v20 = v0[36];
  v19 = v0[37];
  v22 = v0[34];
  v21 = v0[35];
  v24 = v0[32];
  v23 = v0[33];
  v25 = v0[31];
  v26 = v0[28];

  v27 = v0[1];
  sub_232C6EFE4();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_232C73E3C()
{
  sub_232BAE1F8();
  v2 = v0[42];
  v3 = v0[31];
  sub_232CE9A20();
  v4 = v2;
  v5 = sub_232CE9A00();
  v6 = sub_232CEA1C0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[42];
    sub_232BC1F80();
    v8 = sub_232C79C7C();
    *v1 = 138412290;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_232B02000, v5, v6, "(TextUnderstandingManager) extractPersonalID failed: %@", v1, 0xCu);
    sub_232B267AC(v8, &qword_27DDC6FD0, &unk_232CFA240);
    v11 = sub_232C79A24();
    MEMORY[0x238393870](v11);
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  v12 = v0[42];
  v14 = v0[30];
  v13 = v0[31];
  v15 = v0[29];

  v16 = sub_232C79BF0();
  v17(v16);
  v19 = v0[36];
  v18 = v0[37];
  sub_232C79D74();

  v20 = v0[1];
  v21 = sub_232C79C54();

  return v22(v21);
}

uint64_t sub_232C74064(int a1, int a2, void *aBlock)
{
  v3[2] = _Block_copy(aBlock);
  v3[3] = sub_232CE9FE0();
  swift_getObjCClassMetadata();
  v4 = swift_task_alloc();
  v3[4] = v4;
  *v4 = v3;
  v4[1] = sub_232C7413C;

  return static TextUnderstandingManager._extractPersonalID(withLines:pid:)();
}

uint64_t sub_232C7413C()
{
  sub_232B482F8();
  v2 = v1;
  v4 = v3;
  sub_232B26C70();
  v6 = v5;
  sub_232B51338();
  *v7 = v6;
  v9 = *(v8 + 32);
  v10 = *(v8 + 24);
  v11 = *v0;
  sub_232B26B3C();
  *v12 = v11;

  if (v4)
  {
    type metadata accessor for DUExtractionAttributeKey();
    sub_232C78F14();
    v13 = sub_232CE9C20();
    if (v2)
    {
LABEL_3:
      v14 = sub_232CE8B20();
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v15 = *(v6 + 16);
  v16 = v15[2];
  v17 = sub_232B37B20();
  v18(v17);

  _Block_release(v15);

  sub_232B26CF4();

  return v19();
}

void sub_232C742D8()
{
  sub_232B35110();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  ObjectType = swift_getObjectType();
  v9 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  v10 = sub_232B2D120(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = sub_232CE9A30();
  v16 = sub_232B48F0C(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_232C799AC();
  v21 = sub_232CE9A00();
  v22 = sub_232CEA1A0();
  if (os_log_type_enabled(v21, v22))
  {
    sub_232BAE0AC();
    v23 = swift_slowAlloc();
    v29 = v8;
    *v23 = 0;
    _os_log_impl(&dword_232B02000, v21, v22, "(TextUnderstandingManager) extractPersonalID called", v23, 2u);
    v8 = v29;
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  (*(v18 + 8))(v0, v15);
  v24 = sub_232CEA090();
  sub_232B12504(v14, 1, 1, v24);
  sub_232C79CEC();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v8;
  v25[5] = v6;
  v25[6] = v4;
  v25[7] = v2;
  v25[8] = ObjectType;

  v26 = sub_232C79C54();
  sub_232B23FB4(v26, v27, v14, v28, v25);

  sub_232B20A00();
}

uint64_t sub_232C744E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v8 = swift_task_alloc();
  v7[8] = v8;
  *v8 = v7;
  v8[1] = sub_232C74590;

  return static TextUnderstandingManager._extractPersonalID(withLines:pid:)();
}

uint64_t sub_232C74590()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232BC1BAC();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v7 = *(v6 + 64);
  *v2 = *v0;
  v1[9] = v3;

  sub_232B48304();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_232C747E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (a1)
  {
    type metadata accessor for DUExtractionAttributeKey();
    sub_232C78F14();
    v7 = sub_232CE9C20();
  }

  if (a3)
  {
    v8 = sub_232CE8B20();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, a2);
}

uint64_t static TextUnderstandingManager._extractEvents(document:documentType:onBehalfOfPID:)()
{
  sub_232B26C44();
  v1[34] = v2;
  v1[35] = v0;
  v1[32] = v3;
  v1[33] = v4;
  v5 = sub_232CE9A30();
  v1[36] = v5;
  sub_232B27FBC(v5);
  v1[37] = v6;
  v8 = *(v7 + 64);
  v1[38] = sub_232C79E3C();
  v1[39] = swift_task_alloc();
  v9 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v9);
  v11 = *(v10 + 64);
  v1[40] = sub_232B27FCC();
  v12 = type metadata accessor for DULLMInput();
  v1[41] = v12;
  sub_232B2D120(v12);
  v14 = *(v13 + 64);
  v1[42] = sub_232B27FCC();
  sub_232B48304();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_232C749B4()
{
  v1 = v0[32];
  v2 = sub_232B591FC();
  v0[43] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text);
    sub_232B13F74();
    v5 = v4[1];
    if (v5)
    {
      v6 = *v4;
      v7 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v7 = *v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        v8 = &v3[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline];
        sub_232B13F74();
        v69 = *v8;
        v70 = *(v8 + 1);
        v9 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
        sub_232B13F74();
        v10 = *&v3[v9];
        if (v10)
        {
          v11 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
          sub_232B13F74();
          v12 = *(v10 + v11);
          if (v12)
          {
            v13 = (v12 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName);
            sub_232B13F74();
            v67 = v13[1];
            v68 = *v13;
          }

          else
          {
            v67 = 0;
            v68 = 0;
          }

          v53 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
          sub_232B13F74();
          v54 = *(v10 + v53);
          if (v54)
          {
            v55 = (v54 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail);
            sub_232B13F74();
            v51 = *v55;
            v52 = v55[1];
          }

          else
          {
            v51 = 0;
            v52 = 0;
          }
        }

        else
        {
          v51 = 0;
          v52 = 0;
          v67 = 0;
          v68 = 0;
        }

        v56 = v0[40];
        v57 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated;
        sub_232B13F74();
        sub_232B26744(&v3[v57], v56, &qword_27DDC6A80, &qword_232CF6D30);
        if (v10)
        {
          v58 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
          sub_232B13F74();
          v59 = *(v10 + v58);
          if (v59)
          {
            v60 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
            sub_232B13F74();
            v59 = *(v59 + v60);
          }
        }

        else
        {
          v59 = 0;
        }

        v62 = v0[41];
        v61 = v0[42];
        v63 = v0[40];
        *v61 = v0[33];
        v61[1] = v6;
        v61[2] = v5;
        v61[3] = v69;
        v61[4] = v70;
        v61[5] = v68;
        v61[6] = v67;
        v61[7] = v51;
        v61[8] = v52;
        sub_232BA4BBC(v63, v61 + *(v62 + 36));
        *(v61 + *(v62 + 40)) = v59;

        v64 = swift_task_alloc();
        v0[44] = v64;
        *v64 = v0;
        v64[1] = sub_232C74E14;
        v65 = v0[34];
        v66 = v0[35];
        sub_232BC1EF8(v0[42]);

        return static TextUnderstandingManager._extractEvents(input:onBehalfOfPID:)();
      }
    }

    v14 = v0[39];
    sub_232CE9A20();
    v15 = sub_232CE9A00();
    v16 = sub_232CEA1C0();
    if (sub_232C79B04(v16))
    {
      sub_232BAE0AC();
      v17 = swift_slowAlloc();
      *v17 = 0;
      sub_232C79B20();
      _os_log_impl(v18, v19, v20, v21, v17, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v22 = v0[39];
    v23 = v0[36];
    v24 = v0[37];

    v25 = sub_232C79BF0();
    v26(v25);
    sub_232C78B18();
    sub_232B4ACD4();
    v27 = swift_allocError();
    sub_232C79B2C(v27, v28);
  }

  else
  {
    v29 = v0[38];
    sub_232CE9A20();
    v30 = sub_232CE9A00();
    v31 = sub_232CEA1C0();
    if (sub_232C6F000(v31))
    {
      sub_232BAE0AC();
      v32 = swift_slowAlloc();
      sub_232BD4280(v32);
      sub_232C79A04();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v39 = v0[37];
    v38 = v0[38];
    v40 = v0[36];

    v41 = sub_232C79A54();
    v42(v41);
    sub_232C78B18();
    sub_232B4ACD4();
    v43 = swift_allocError();
    sub_232C79B2C(v43, v44);
  }

  v45 = v0[42];
  v47 = v0[39];
  v46 = v0[40];
  v48 = v0[38];

  sub_232B26CF4();

  return v49();
}

uint64_t sub_232C74E14()
{
  sub_232C79DE0();
  sub_232B482F8();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_232B26B3C();
  *v6 = v5;
  v7 = *(v4 + 352);
  *v6 = *v1;
  *(v5 + 360) = v0;

  v8 = *(v4 + 336);
  if (!v0)
  {
    *(v5 + 368) = v3;
  }

  sub_232C78B6C(v8);
  sub_232B48304();
  sub_232C79DCC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232C74F44()
{
  sub_232B26C7C();
  v1 = *(v0 + 336);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v4 = *(v0 + 304);

  sub_232B51374();
  v6 = *(v0 + 368);

  return v5(v6);
}

uint64_t sub_232C74FD4()
{
  sub_232B26C7C();

  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 304);

  sub_232B26CF4();

  return v6();
}

uint64_t static TextUnderstandingManager._extractEvents(input:onBehalfOfPID:)()
{
  sub_232B26C7C();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_232C7510C;

  return static TextUnderstandingManager._extractEventsAndOrders(input:onBehalfOfPID:)();
}

uint64_t sub_232C7510C()
{
  sub_232B26C7C();
  v3 = v2;
  sub_232B26C70();
  v5 = v4;
  sub_232B51338();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_232B26B3C();
  *v10 = v9;
  *(v5 + 32) = v0;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 40) = v3;
    sub_232B48304();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_232C75240()
{
  sub_232B26C7C();
  v1 = *(v0 + 32);
  v2 = static TextUnderstandingManager.filterOrderExtractions(extractions:)(*(v0 + 40));

  sub_232B51374();
  if (!v1)
  {
    v3 = v2;
  }

  return v4(v3);
}

uint64_t sub_232C752E4(void *a1, int a2, int a3, void *aBlock)
{
  v4[2] = a1;
  v4[3] = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v6 = a1;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_232C753C4;

  return static TextUnderstandingManager._extractEvents(document:documentType:onBehalfOfPID:)();
}

uint64_t sub_232C753C4()
{
  sub_232B26C7C();
  v2 = v0;
  sub_232B26C70();
  v4 = v3;
  sub_232B51338();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *(v6 + 16);
  v9 = *v1;
  sub_232B26B3C();
  *v10 = v9;

  if (v2)
  {
    v11 = sub_232CE8B20();

    v12 = v11;
  }

  else
  {
    sub_232B124A8(&qword_27DDC6C58, &qword_232CF89A0);
    v13 = sub_232CE9FD0();

    v12 = v13;
  }

  v14 = *(v4 + 24);
  v15 = v14[2];
  v16 = sub_232BC1E48();
  v17(v16);

  _Block_release(v14);
  sub_232B26CF4();

  return v18();
}

uint64_t sub_232C75540(uint64_t a1)
{
  v2 = sub_232CE9A30();
  v3 = sub_232B48F0C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_232B2053C(*MEMORY[0x277D06608], a1);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v14 = *MEMORY[0x277D06838];
    if (v12 != sub_232CE9D50() || v13 != v15)
    {
      v17 = sub_232CEA750();

      if (v17)
      {
LABEL_16:

        LOBYTE(v2) = 1;
        return v2 & 1;
      }

      v18 = *MEMORY[0x277D06850];
      if (v12 != sub_232CE9D50() || v13 != v19)
      {
        LOBYTE(v2) = sub_232CEA750();

        return v2 & 1;
      }
    }

    goto LABEL_16;
  }

  sub_232CE9A20();
  v21 = sub_232CE9A00();
  v22 = sub_232CEA1C0();
  if (os_log_type_enabled(v21, v22))
  {
    sub_232BAE0AC();
    v23 = swift_slowAlloc();
    sub_232C31D84(v23);
    sub_232C79C48();
    _os_log_impl(v24, v25, v26, v27, v28, v29);
    v30 = sub_232C79A24();
    MEMORY[0x238393870](v30);
  }

  (*(v5 + 8))(v9, v2);
  sub_232C78B18();
  sub_232B4ACD4();
  swift_allocError();
  *v31 = 2;
  swift_willThrow();
  return v2 & 1;
}

uint64_t static TextUnderstandingManager.filterOrderExtractions(extractions:)(uint64_t result)
{
  v2 = 0;
  v3 = *(result + 16);
  v4 = result + 32;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == v2)
    {
      return v5;
    }

    if (v2 >= v3)
    {
      break;
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_16;
    }

    v6 = *(v4 + 8 * v2);

    v8 = sub_232C75540(v7);
    if (v1)
    {

      return v5;
    }

    if (v8)
    {

      ++v2;
    }

    else
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_232B64CA8(0, *(v5 + 16) + 1, 1);
      }

      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        result = sub_232B64CA8((v9 > 1), v10 + 1, 1);
      }

      *(v5 + 16) = v10 + 1;
      *(v5 + 8 * v10 + 32) = v6;
      ++v2;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t static TextUnderstandingManager._extractEventsAndOrders(input:onBehalfOfPID:)()
{
  sub_232B26C44();
  *(v0 + 264) = v1;
  *(v0 + 136) = v2;
  *(v0 + 144) = v3;
  v4 = sub_232CE9A30();
  *(v0 + 152) = v4;
  sub_232B27FBC(v4);
  *(v0 + 160) = v5;
  v7 = *(v6 + 64);
  *(v0 + 168) = sub_232C79E3C();
  *(v0 + 176) = swift_task_alloc();
  *(v0 + 184) = swift_task_alloc();
  *(v0 + 192) = swift_task_alloc();
  *(v0 + 200) = swift_task_alloc();
  *(v0 + 208) = swift_task_alloc();
  *(v0 + 216) = swift_task_alloc();
  sub_232B48304();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232C75A78()
{
  sub_232C79B8C();
  type metadata accessor for DUModelRunner();
  static DUModelRunner.isLLMAvailable(for:)();
  if (v1)
  {
    static DUModelRunner.isModelEnabled(modelType:preferredLanguages:)();
    if (v2)
    {
      v3 = *(v0 + 136);
      v4 = type metadata accessor for DUFoundInEventClassificationImplementation();
      v5 = *(v4 + 48);
      v6 = *(v4 + 52);
      swift_allocObject();
      *(v0 + 224) = DUFoundInEventClassificationImplementation.init()();
      v7 = v3[1];
      v8 = v3[2];
      v9 = v3[3];
      v10 = v3[4];
      v11 = *(v3 + *(type metadata accessor for DULLMInput() + 40));
      v12 = v3[7];
      v13 = v3[8];
      sub_232C79A14();
      v18 = sub_232BABB6C(v14, v15, v16, v17);
      *(v0 + 232) = v18;
      v35 = v18;
      v36 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate;
      sub_232B13F74();
      v37 = *&v35[v36];
      if (v37 && [v37 BOOLValue])
      {
        v38 = *(v0 + 216);
        sub_232CE9A20();
        v39 = sub_232CE9A00();
        v40 = sub_232CEA1E0();
        if (sub_232C6F000(v40))
        {
          sub_232BAE0AC();
          v41 = swift_slowAlloc();
          sub_232BD4280(v41);
          sub_232C79A04();
          _os_log_impl(v42, v43, v44, v45, v46, 2u);
          sub_232B4ACF0();
          MEMORY[0x238393870]();
        }

        v47 = *(v0 + 216);
        v48 = *(v0 + 152);
        v49 = *(v0 + 160);
        v50 = *(v0 + 264);

        v51 = sub_232C79A54();
        v52(v51);
        type metadata accessor for DUFoundInEventLLMImplementation();
        v53 = swift_task_alloc();
        *(v0 + 240) = v53;
        *v53 = v0;
        v53[1] = sub_232C76204;
        v54 = *(v0 + 144);
        v55 = sub_232BC1EF8(*(v0 + 136));

        return sub_232BB6A2C(v55, v56, v57);
      }

      v59 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_textLengthPass;
      sub_232B13F74();
      v60 = *&v35[v59];
      if (v60)
      {
        sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
        v61 = v60;
        sub_232C79E24();
        v62 = sub_232C79BB8();

        if (v62)
        {
          v63 = *(v0 + 208);
          sub_232CE9A20();
          v64 = sub_232CE9A00();
          v65 = sub_232CEA1E0();
          if (sub_232C79B04(v65))
          {
            sub_232BAE0AC();
            v66 = swift_slowAlloc();
            sub_232BD7228(v66);
            sub_232C79B20();
            sub_232C79C30(v67, v68, v69, v70);
            sub_232B4ACF0();
            MEMORY[0x238393870]();
          }

          v71 = *(v0 + 208);
          v72 = *(v0 + 152);
          v73 = *(v0 + 160);

          v74 = sub_232C79B4C();
          v75(v74);
          sub_232BB7B64();
          sub_232B4ACD4();
          v76 = swift_allocError();
          v78 = xmmword_232CFF6B0;
LABEL_39:
          *v77 = v78;
          sub_232C79C60(v76, v77);

LABEL_44:

          goto LABEL_45;
        }
      }

      v79 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isSupportedLocale;
      sub_232B13F74();
      v80 = *&v35[v79];
      if (v80)
      {
        sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
        v81 = v80;
        sub_232C79E24();
        v82 = sub_232C79BB8();

        if (v82)
        {
          v83 = *(v0 + 200);
          sub_232CE9A20();
          v84 = sub_232CE9A00();
          v85 = sub_232CEA1E0();
          if (sub_232C79B04(v85))
          {
            sub_232BAE0AC();
            v86 = swift_slowAlloc();
            sub_232BD7228(v86);
            sub_232C79B20();
            sub_232C79C30(v87, v88, v89, v90);
            sub_232B4ACF0();
            MEMORY[0x238393870]();
          }

          v91 = *(v0 + 200);
          v92 = *(v0 + 152);
          v93 = *(v0 + 160);

          v94 = sub_232C79B4C();
          v95(v94);
          sub_232BB7B64();
          sub_232B4ACD4();
          v76 = swift_allocError();
          v78 = xmmword_232CFF6C0;
          goto LABEL_39;
        }
      }

      v96 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isClassifiedAsEvent;
      sub_232B13F74();
      v97 = *&v35[v96];
      if (v97)
      {
        sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
        v98 = v97;
        sub_232C79E24();
        v99 = sub_232C79BB8();

        if (v99)
        {
          v100 = *(v0 + 192);
          sub_232CE9A20();
          v101 = sub_232CE9A00();
          v102 = sub_232CEA1E0();
          if (sub_232C79B04(v102))
          {
            sub_232BAE0AC();
            v103 = swift_slowAlloc();
            sub_232BD7228(v103);
            sub_232C79B20();
            sub_232C79C30(v104, v105, v106, v107);
            sub_232B4ACF0();
            MEMORY[0x238393870]();
          }

          v108 = *(v0 + 192);
          v109 = *(v0 + 152);
          v110 = *(v0 + 160);

          v111 = sub_232C79B4C();
          v112(v111);
          sub_232BB7B64();
          sub_232B4ACD4();
          v76 = swift_allocError();
          v78 = xmmword_232CFF6D0;
          goto LABEL_39;
        }
      }

      v113 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_containsDataDetectors;
      sub_232B13F74();
      v114 = *&v35[v113];
      if (v114)
      {
        sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
        v115 = v114;
        sub_232C79E24();
        v116 = sub_232C79BB8();

        if (v116)
        {
          v117 = *(v0 + 184);
          sub_232CE9A20();
          v118 = sub_232CE9A00();
          v119 = sub_232CEA1E0();
          if (sub_232C79B04(v119))
          {
            sub_232BAE0AC();
            v120 = swift_slowAlloc();
            sub_232BD7228(v120);
            sub_232C79B20();
            sub_232C79C30(v121, v122, v123, v124);
            sub_232B4ACF0();
            MEMORY[0x238393870]();
          }

          v125 = *(v0 + 184);
          v126 = *(v0 + 152);
          v127 = *(v0 + 160);

          v128 = sub_232C79B4C();
          v129(v128);
          sub_232BB7B64();
          sub_232B4ACD4();
          v76 = swift_allocError();
          v78 = xmmword_232CFF6E0;
          goto LABEL_39;
        }
      }

      v130 = *(v0 + 176);
      sub_232CE9A20();
      v131 = sub_232CE9A00();
      v132 = sub_232CEA1E0();
      if (sub_232C79B04(v132))
      {
        sub_232BAE0AC();
        v133 = swift_slowAlloc();
        sub_232C31D84(v133);
        sub_232C79B20();
        sub_232C79C48();
        _os_log_impl(v134, v135, v136, v137, v138, v139);
        v140 = sub_232C79A24();
        MEMORY[0x238393870](v140);
      }

      v141 = *(v0 + 176);
      v142 = *(v0 + 152);
      v143 = *(v0 + 160);

      (*(v143 + 8))(v141, v142);
      sub_232BB7B64();
      sub_232B4ACD4();
      v144 = swift_allocError();
      *v145 = xmmword_232CFF6F0;
      sub_232C79C60(v144, v145);
      goto LABEL_44;
    }

    sub_232BB7B64();
    sub_232B4ACD4();
    v33 = swift_allocError();
    *v34 = 0;
    v34[1] = 0;
  }

  else
  {
    v19 = *(v0 + 168);
    sub_232CE9A20();
    v20 = sub_232CE9A00();
    v21 = sub_232CEA1C0();
    if (sub_232C6F000(v21))
    {
      sub_232BAE0AC();
      v22 = swift_slowAlloc();
      sub_232BD4280(v22);
      sub_232C79A04();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v29 = *(v0 + 160);
    v28 = *(v0 + 168);
    v30 = *(v0 + 152);

    v31 = sub_232C79A54();
    v32(v31);
    sub_232BB7B64();
    sub_232B4ACD4();
    v33 = swift_allocError();
    *v34 = xmmword_232CFF6A0;
  }

  sub_232C79C60(v33, v34);
LABEL_45:
  sub_232C79D34();

  sub_232B26CF4();

  return v146();
}

uint64_t sub_232C76204()
{
  sub_232B26C7C();
  v3 = v2;
  sub_232B26C70();
  v5 = v4;
  sub_232B51338();
  *v6 = v5;
  v8 = *(v7 + 240);
  v9 = *v1;
  sub_232B26B3C();
  *v10 = v9;
  *(v5 + 248) = v0;

  if (!v0)
  {
    *(v5 + 256) = v3;
  }

  sub_232B48304();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_232C76310()
{
  sub_232BAE1F8();
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v7 = *(v0 + 176);
  v6 = *(v0 + 184);
  v8 = *(v0 + 168);

  sub_232B51374();
  v10 = *(v0 + 256);

  return v9(v10);
}

uint64_t sub_232C763D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_232C79DB4();
  sub_232BAE1F8();
  v11 = *(v10 + 224);

  v12 = *(v10 + 248);
  sub_232C79D34();

  sub_232B26CF4();
  sub_232C79CBC();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t static TextUnderstandingManager._extractEventsAndOrders(document:documentType:onBehalfOfPID:)()
{
  sub_232B26C44();
  v1[28] = v2;
  v1[29] = v0;
  v1[26] = v3;
  v1[27] = v4;
  v5 = sub_232CE9A30();
  v1[30] = v5;
  sub_232B27FBC(v5);
  v1[31] = v6;
  v8 = *(v7 + 64);
  v1[32] = sub_232C79E3C();
  v1[33] = swift_task_alloc();
  v9 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v9);
  v11 = *(v10 + 64);
  v1[34] = sub_232B27FCC();
  v12 = type metadata accessor for DULLMInput();
  v1[35] = v12;
  sub_232B2D120(v12);
  v14 = *(v13 + 64);
  v1[36] = sub_232B27FCC();
  sub_232B48304();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_232C76580()
{
  v1 = v0[26];
  v2 = sub_232B591FC();
  v0[37] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text);
    sub_232B13F74();
    v5 = v4[1];
    if (v5)
    {
      v6 = *v4;
      v7 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v7 = *v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        v8 = &v3[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline];
        sub_232B13F74();
        v63 = *(v8 + 1);
        v64 = *v8;
        v9 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
        sub_232B13F74();
        v10 = *&v3[v9];
        if (v10 && (v11 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData, sub_232B13F74(), (v12 = *(v10 + v11)) != 0))
        {
          v13 = (v12 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail);
          sub_232B13F74();
          v15 = *v13;
          v14 = v13[1];
        }

        else
        {
          v15 = 0;
          v14 = 0;
        }

        v53 = v0[34];
        v54 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated;
        sub_232B13F74();
        sub_232B26744(&v3[v54], v53, &qword_27DDC6A80, &qword_232CF6D30);
        if (v10)
        {
          v55 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
          sub_232B13F74();
          v56 = *(v10 + v55);
          if (v56)
          {
            v57 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
            sub_232B13F74();
            v56 = *(v56 + v57);
          }
        }

        else
        {
          v56 = 0;
        }

        v59 = v0[35];
        v58 = v0[36];
        v60 = v0[34];
        *v58 = v0[27];
        v58[1] = v6;
        v58[2] = v5;
        v58[3] = v64;
        v58[4] = v63;
        v58[5] = 0;
        v58[6] = 0;
        v58[7] = v15;
        v58[8] = v14;
        sub_232BA4BBC(v60, v58 + *(v59 + 36));
        *(v58 + *(v59 + 40)) = v56;

        v61 = swift_task_alloc();
        v0[38] = v61;
        *v61 = v0;
        v61[1] = sub_232C76980;
        v62 = v0[28];
        sub_232BC1EF8(v0[36]);

        return static TextUnderstandingManager._extractEventsAndOrders(input:onBehalfOfPID:)();
      }
    }

    v16 = v0[33];
    sub_232CE9A20();
    v17 = sub_232CE9A00();
    v18 = sub_232CEA1C0();
    if (sub_232C79B04(v18))
    {
      sub_232BAE0AC();
      v19 = swift_slowAlloc();
      *v19 = 0;
      sub_232C79B20();
      _os_log_impl(v20, v21, v22, v23, v19, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v24 = v0[33];
    v25 = v0[30];
    v26 = v0[31];

    v27 = sub_232C79BF0();
    v28(v27);
    sub_232C78B18();
    sub_232B4ACD4();
    v29 = swift_allocError();
    sub_232C79B2C(v29, v30);
  }

  else
  {
    v31 = v0[32];
    sub_232CE9A20();
    v32 = sub_232CE9A00();
    v33 = sub_232CEA1C0();
    if (sub_232C6F000(v33))
    {
      sub_232BAE0AC();
      v34 = swift_slowAlloc();
      sub_232BD4280(v34);
      sub_232C79A04();
      _os_log_impl(v35, v36, v37, v38, v39, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v41 = v0[31];
    v40 = v0[32];
    v42 = v0[30];

    v43 = sub_232C79A54();
    v44(v43);
    sub_232C78B18();
    sub_232B4ACD4();
    v45 = swift_allocError();
    sub_232C79B2C(v45, v46);
  }

  v47 = v0[36];
  v49 = v0[33];
  v48 = v0[34];
  v50 = v0[32];

  sub_232B26CF4();

  return v51();
}

uint64_t sub_232C76980()
{
  sub_232C79DE0();
  sub_232B482F8();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_232B26B3C();
  *v6 = v5;
  v7 = *(v4 + 304);
  *v6 = *v1;
  *(v5 + 312) = v0;

  v8 = *(v4 + 288);
  if (!v0)
  {
    *(v5 + 320) = v3;
  }

  sub_232C78B6C(v8);
  sub_232B48304();
  sub_232C79DCC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232C76AB0()
{
  sub_232B26C7C();
  v1 = *(v0 + 288);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 256);

  sub_232B51374();
  v6 = *(v0 + 320);

  return v5(v6);
}

uint64_t sub_232C76B40()
{
  sub_232B26C7C();

  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 256);

  sub_232B26CF4();

  return v6();
}

uint64_t sub_232C76BEC(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, void *aBlock, uint64_t a7, uint64_t a8)
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = v13;
  v14[6] = a1;
  v15 = a3;

  return sub_232C6F124(a8, v14);
}

uint64_t sub_232C76C80(void *a1, int a2, int a3, void *aBlock)
{
  v4[2] = a1;
  v4[3] = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v6 = a1;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_232C79950;

  return static TextUnderstandingManager._extractEventsAndOrders(document:documentType:onBehalfOfPID:)();
}

void sub_232C76D60()
{
  sub_232B35110();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v27 = v8;
  v10 = v9;
  v12 = v11;
  ObjectType = swift_getObjectType();
  v13 = sub_232CE9A30();
  v14 = sub_232B48F0C(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_232C799AC();
  v19 = sub_232CE9A00();
  sub_232CEA1A0();
  sub_232C79CF8();
  if (os_log_type_enabled(v19, v20))
  {
    sub_232BAE0AC();
    v21 = swift_slowAlloc();
    sub_232BD7228(v21);
    sub_232C79C30(&dword_232B02000, v19, v1, "(TextUnderstandingManager) extractEventWithSerializedDocument called");
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  (*(v16 + 8))(v0, v13);
  v22 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_foundInEventsQueue);
  sub_232C79CEC();
  v23 = swift_allocObject();
  v23[2] = v12;
  v23[3] = v10;
  v23[4] = v27;
  v23[5] = v7;
  v23[6] = v5;
  v23[7] = v3;
  v23[8] = ObjectType;
  v28[4] = sub_232C78BC8;
  v28[5] = v23;
  sub_232C52900();
  v28[1] = 1107296256;
  sub_232C79980();
  v28[2] = v24;
  v28[3] = &unk_284814190;
  v25 = _Block_copy(v28);
  sub_232B41B94(v12, v10);

  [v22 addOperationWithBlock_];
  _Block_release(v25);
  sub_232B20A00();
}

uint64_t sub_232C76F5C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v21 - v16;
  v18 = sub_232CEA090();
  sub_232B12504(v17, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = a3;
  v19[7] = a4;
  v19[8] = a5;
  v19[9] = a6;
  v19[10] = a7;
  sub_232B41B94(a1, a2);

  sub_232B23FB4(0, 0, v17, &unk_232CFF8E0, v19);
}

uint64_t sub_232C7708C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[56] = v14;
  v8[57] = v15;
  v8[54] = a7;
  v8[55] = a8;
  v8[52] = a5;
  v8[53] = a6;
  v8[51] = a4;
  v9 = sub_232CE9A30();
  v8[58] = v9;
  v10 = *(v9 - 8);
  v8[59] = v10;
  v11 = *(v10 + 64) + 15;
  v8[60] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C77160, 0, 0);
}

uint64_t sub_232C77160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_232C79DB4();
  sub_232BAE1F8();
  v11 = *(v10 + 416);
  v12 = *(v10 + 424);
  v13 = *(v10 + 408);
  type metadata accessor for HarvestingDocumentNormalization();
  v14 = static HarvestingDocumentNormalization.normalizeDocument(documentData:documentType:)(v13, v11, v12);
  *(v10 + 488) = v14;
  v26 = v14;

  v28 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document;
  sub_232B13F74();
  v29 = *&v26[v28];
  *(v10 + 496) = v29;
  if (v29)
  {
    v29;
    v30 = swift_task_alloc();
    *(v10 + 504) = v30;
    *v30 = v10;
    v30[1] = sub_232C77644;
    v31 = *(v10 + 456);
    v32 = *(v10 + 424);
    v33 = *(v10 + 432);
    sub_232C79CBC();

    return static TextUnderstandingManager._extractEvents(document:documentType:onBehalfOfPID:)();
  }

  v48 = *(v10 + 480);
  sub_232CE9A20();
  v49 = sub_232CE9A00();
  v50 = sub_232CEA1C0();
  if (sub_232C6F000(v50))
  {
    sub_232BAE0AC();
    v51 = swift_slowAlloc();
    sub_232BD4280(v51);
    sub_232C79A04();
    _os_log_impl(v52, v53, v54, v55, v56, 2u);
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  v58 = *(v10 + 472);
  v57 = *(v10 + 480);
  v59 = *(v10 + 464);

  v60 = *(v58 + 8);
  v61 = sub_232BA5FEC();
  v62(v61);
  sub_232C78B18();
  sub_232B4ACD4();
  v63 = swift_allocError();
  *v64 = 1;
  swift_willThrow();

  *(v10 + 400) = v63;
  v15 = v63;
  sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
  if (swift_dynamicCast())
  {
    v16 = *(v10 + 352);
    v17 = *(v10 + 360);
    v18 = *(v10 + 368);
    sub_232B124A8(&qword_27DDC8600, &qword_232CFF8F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_232CF7250;
    *(inited + 32) = xmmword_232CFF6D0;
    *(inited + 48) = 3;
    *(inited + 56) = xmmword_232CFF6F0;
    *(inited + 72) = 3;
    *(inited + 80) = xmmword_232CFF6C0;
    *(inited + 96) = 3;
    *(inited + 104) = xmmword_232CFF6B0;
    *(inited + 120) = 3;
    v20 = sub_232C79C98(inited, 3u, xmmword_232CFF6E0);
    v21 = sub_232C79AAC(v20);
    swift_setDeallocating();
    sub_232C788C0();

    if (v21)
    {
      v23 = *(v10 + 440);
      v22 = *(v10 + 448);

      v24 = sub_232B37B20();
      sub_232BB6A10(v24, v25, v18);
      v23(MEMORY[0x277D84F90], 0);
LABEL_20:
      v70 = *(v10 + 400);
      goto LABEL_21;
    }

    if (v18 == 3)
    {
      if (!(v16 | v17))
      {
        sub_232C79DF4();
        v71 = *MEMORY[0x277D06948];
        sub_232CE9D50();
        sub_232BECA40();
        sub_232B124A8(&qword_27DDC6FC0, &unk_232CF7CC0);
        v72 = swift_initStackObject();
        *(v72 + 16) = xmmword_232CF6460;
        v73 = *MEMORY[0x277CCA450];
        v74 = sub_232CE9D50();
        *(v72 + 32) = v74;
        *(v72 + 40) = v75;
        sub_232C79B5C(v74, MEMORY[0x277D837D0]);
        *(v72 + 48) = v77;
        *(v72 + 56) = v76;
        v43 = sub_232C79E0C();
        v78 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v45 = sub_232C79A64();
        v47 = 0;
        goto LABEL_19;
      }

      if (!(v16 ^ 1 | v17))
      {
        sub_232C79DF4();
        v36 = *MEMORY[0x277D06948];
        sub_232CE9D50();
        sub_232BECA40();
        sub_232B124A8(&qword_27DDC6FC0, &unk_232CF7CC0);
        v37 = swift_initStackObject();
        *(v37 + 16) = xmmword_232CF6460;
        v38 = *MEMORY[0x277CCA450];
        v39 = sub_232CE9D50();
        *(v37 + 32) = v39;
        *(v37 + 40) = v40;
        sub_232C79B5C(v39, MEMORY[0x277D837D0]);
        *(v37 + 48) = v41 + 13;
        *(v37 + 56) = v42;
        v43 = sub_232C79E0C();
        v44 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v45 = sub_232C79A64();
        v47 = 1;
LABEL_19:
        v79 = sub_232BC8980(v45, v46, v47, v43);
        (v17)(MEMORY[0x277D84F90], v79);

        goto LABEL_20;
      }
    }

    v65 = sub_232B37B20();
    sub_232BB6A10(v65, v66, v18);
  }

  v68 = *(v10 + 440);
  v67 = *(v10 + 448);

  v69 = v63;
  v68(MEMORY[0x277D84F90], v63);

  v70 = v63;
LABEL_21:

  v80 = *(v10 + 480);

  sub_232B26CF4();
  sub_232C79CBC();

  return v82(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10);
}

uint64_t sub_232C77644()
{
  sub_232B26C7C();
  v3 = v2;
  sub_232B26C70();
  v5 = v4;
  sub_232B51338();
  *v6 = v5;
  v8 = *(v7 + 504);
  v9 = *v1;
  sub_232B26B3C();
  *v10 = v9;
  *(v5 + 512) = v0;

  if (!v0)
  {
    *(v5 + 520) = v3;
  }

  sub_232B48304();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_232C77750()
{
  sub_232B482F8();
  v2 = v0[61];
  v1 = v0[62];
  v4 = v0[55];
  v3 = v0[56];
  v5 = sub_232BB818C(v0[65]);

  v4(v5, 0);

  v6 = v0[60];

  sub_232B26CF4();

  return v7();
}

uint64_t sub_232C777F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_232C79DB4();
  sub_232BAE1F8();
  v11 = *(v10 + 496);

  v12 = *(v10 + 512);
  *(v10 + 400) = v12;
  v13 = v12;
  sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v14 = *(v10 + 352);
  v15 = *(v10 + 360);
  v16 = *(v10 + 368);
  sub_232B124A8(&qword_27DDC8600, &qword_232CFF8F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232CF7250;
  *(inited + 32) = xmmword_232CFF6D0;
  *(inited + 48) = 3;
  *(inited + 56) = xmmword_232CFF6F0;
  *(inited + 72) = 3;
  *(inited + 80) = xmmword_232CFF6C0;
  *(inited + 96) = 3;
  *(inited + 104) = xmmword_232CFF6B0;
  *(inited + 120) = 3;
  v18 = sub_232C79C98(inited, 3u, xmmword_232CFF6E0);
  v19 = sub_232C79AAC(v18);
  swift_setDeallocating();
  sub_232C788C0();

  if (!v19)
  {
    if (v16 == 3)
    {
      if (!(v14 | v15))
      {
        sub_232C79DF4();
        v42 = *MEMORY[0x277D06948];
        sub_232CE9D50();
        sub_232BECA40();
        sub_232B124A8(&qword_27DDC6FC0, &unk_232CF7CC0);
        v43 = swift_initStackObject();
        *(v43 + 16) = xmmword_232CF6460;
        v44 = *MEMORY[0x277CCA450];
        v45 = sub_232CE9D50();
        *(v43 + 32) = v45;
        *(v43 + 40) = v46;
        sub_232C79B5C(v45, MEMORY[0x277D837D0]);
        *(v43 + 48) = v48;
        *(v43 + 56) = v47;
        v31 = sub_232C79E0C();
        v49 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v33 = sub_232C79A64();
        v35 = 0;
        goto LABEL_11;
      }

      if (!(v14 ^ 1 | v15))
      {
        sub_232C79DF4();
        v24 = *MEMORY[0x277D06948];
        sub_232CE9D50();
        sub_232BECA40();
        sub_232B124A8(&qword_27DDC6FC0, &unk_232CF7CC0);
        v25 = swift_initStackObject();
        *(v25 + 16) = xmmword_232CF6460;
        v26 = *MEMORY[0x277CCA450];
        v27 = sub_232CE9D50();
        *(v25 + 32) = v27;
        *(v25 + 40) = v28;
        sub_232C79B5C(v27, MEMORY[0x277D837D0]);
        *(v25 + 48) = v29 + 13;
        *(v25 + 56) = v30;
        v31 = sub_232C79E0C();
        v32 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v33 = sub_232C79A64();
        v35 = 1;
LABEL_11:
        v50 = sub_232BC8980(v33, v34, v35, v31);
        (v15)(MEMORY[0x277D84F90], v50);

        goto LABEL_12;
      }
    }

    v36 = sub_232B37B20();
    sub_232BB6A10(v36, v37, v16);
LABEL_9:
    v39 = *(v10 + 440);
    v38 = *(v10 + 448);

    v40 = v12;
    v39(MEMORY[0x277D84F90], v12);

    v41 = v12;
    goto LABEL_13;
  }

  v21 = *(v10 + 440);
  v20 = *(v10 + 448);

  v22 = sub_232B37B20();
  sub_232BB6A10(v22, v23, v16);
  v21(MEMORY[0x277D84F90], 0);
LABEL_12:
  v41 = *(v10 + 400);
LABEL_13:

  v51 = *(v10 + 480);

  sub_232B26CF4();
  sub_232C79CBC();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10);
}

void sub_232C77C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B124A8(&qword_27DDC72C8, &qword_232CFF860);
  v5 = sub_232CE9FD0();
  if (a2)
  {
    v6 = sub_232CE8B20();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

id TextUnderstandingManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextUnderstandingManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_232C77D9C(char a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36)
{
  if (a2)
  {
    v61 = sub_232CE8B20();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v61 = 0;
    if (a4)
    {
LABEL_3:
      v60 = sub_232CE9D20();

      if (a5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v59 = 0;
      if (a7)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v60 = 0;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v59 = sub_232CE8B20();

  if (a7)
  {
LABEL_5:
    v58 = sub_232CE9D20();

    goto LABEL_10;
  }

LABEL_9:
  v58 = 0;
LABEL_10:
  if (a8)
  {
    v57 = sub_232CE8B20();
  }

  else
  {
    v57 = 0;
  }

  if (a10)
  {
    v52 = sub_232CE9D20();
  }

  else
  {
    v52 = 0;
  }

  if (a11)
  {
    v51 = sub_232CE9C20();
  }

  else
  {
    v51 = 0;
  }

  if (a12)
  {
    v55 = sub_232CE8B20();
  }

  else
  {
    v55 = 0;
  }

  if (a14)
  {
    v54 = sub_232CE9D20();
  }

  else
  {
    v54 = 0;
  }

  if (a15)
  {
    v53 = sub_232CE9C20();
  }

  else
  {
    v53 = 0;
  }

  if (a16)
  {
    v68 = sub_232CE8B20();
  }

  else
  {
    v68 = 0;
  }

  if (a18)
  {
    v67 = sub_232CE9D20();
  }

  else
  {
    v67 = 0;
  }

  if (a19)
  {
    v66 = sub_232CE8B20();
  }

  else
  {
    v66 = 0;
  }

  if (a21)
  {
    v65 = sub_232CE9D20();
  }

  else
  {
    v65 = 0;
  }

  if (a22)
  {
    v64 = sub_232CE8B20();
  }

  else
  {
    v64 = 0;
  }

  if (a24)
  {
    v41 = sub_232CE9D20();
  }

  else
  {
    v41 = 0;
  }

  if (a25)
  {
    v42 = sub_232CE8B20();
  }

  else
  {
    v42 = 0;
  }

  if (a27)
  {
    v43 = sub_232CE9D20();
  }

  else
  {
    v43 = 0;
  }

  if (a28)
  {
    v44 = sub_232CE8B20();
  }

  else
  {
    v44 = 0;
  }

  if (a30)
  {
    v45 = sub_232CE9D20();
  }

  else
  {
    v45 = 0;
  }

  if (a31)
  {
    v46 = sub_232CE8B20();
  }

  else
  {
    v46 = 0;
  }

  if (a33)
  {
    v47 = sub_232CE9D20();
  }

  else
  {
    v47 = 0;
  }

  if (!a34)
  {
    v48 = 0;
    if (a36)
    {
      goto LABEL_66;
    }

LABEL_68:
    v49 = 0;
    goto LABEL_69;
  }

  v48 = sub_232CE8B20();

  if (!a36)
  {
    goto LABEL_68;
  }

LABEL_66:
  v49 = sub_232CE9D20();

LABEL_69:
  v63 = [v62 initWithFields:a1 & 1 reservationIdError:v61 reservationId:v60 reservationNameError:v59 reservationName:v58 startAddressError:v57 startAddress:v52 startAddressComponents:v51 endAddressError:v55 endAddress:v54 endAddressComponents:v53 startPlaceError:v68 startPlace:v67 endPlaceError:v66 endPlace:v65 startDateError:v64 startDate:v41 endDateError:v42 endDate:v43 hotelNameError:v44 hotelName:v45 guestNameError:v46 guestName:v47 movieNameError:v48 movieName:v49];

  return v63;
}

uint64_t sub_232C78304(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_232B26B14;

  return v7();
}

uint64_t sub_232C783EC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_232B26664;

  return v8();
}

uint64_t sub_232C784D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_232B26744(a3, v25 - v11, &qword_27DDC68A8, &qword_232CFA960);
  v13 = sub_232CEA090();
  if (sub_232B12480(v12, 1, v13) == 1)
  {
    sub_232B267AC(v12, &qword_27DDC68A8, &qword_232CFA960);
  }

  else
  {
    sub_232CEA080();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_232CEA050();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_232CE9DE0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_232B267AC(a3, &qword_27DDC68A8, &qword_232CFA960);

      return v23;
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

  sub_232B267AC(a3, &qword_27DDC68A8, &qword_232CFA960);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_232C787B0()
{
  v1 = *(v0 + 16);
  sub_232B124A8(&qword_27DDC8608, &qword_232CFF948);
  swift_arrayDestroy();
  v2 = sub_232C79B7C();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_232C78808()
{
  v1 = *(*(sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30) - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();
  v3 = sub_232C79B7C();

  return MEMORY[0x2821FE8D8](v3, v4, v5);
}

uint64_t sub_232C78884()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = sub_232C79B7C();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_232C788C0()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_232C78904(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_232CE9D20();

  [a3 setName_];
}

uint64_t sub_232C789C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232C78A58()
{
  sub_232BAE1F8();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = swift_task_alloc();
  v9 = sub_232B26CA4(v8);
  *v9 = v10;
  v9[1] = sub_232B26B14;
  v11 = sub_232C79994();

  return sub_232C744E4(v11, v12, v13, v14, v4, v5, v6);
}

unint64_t sub_232C78B18()
{
  result = qword_2814E2330;
  if (!qword_2814E2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E2330);
  }

  return result;
}

uint64_t sub_232C78B6C(uint64_t a1)
{
  v2 = type metadata accessor for DULLMInput();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_232C78BE0()
{
  result = qword_27DDC85F8;
  if (!qword_27DDC85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC85F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextUnderstandingManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_232C78F14()
{
  result = qword_27DDC65A8;
  if (!qword_27DDC65A8)
  {
    type metadata accessor for DUExtractionAttributeKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC65A8);
  }

  return result;
}

uint64_t sub_232C78F74()
{
  v1 = v0[2];

  sub_232B41BEC(v0[3], v0[4]);
  v2 = v0[7];

  v3 = sub_232C79C10();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_232C78FCC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_232C7900C()
{
  sub_232B482F8();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_232B482EC(v6);
  *v7 = v8;
  v7[1] = sub_232B26B14;
  sub_232C79A14();

  return v9();
}

uint64_t sub_232C790C4()
{
  sub_232C79DE0();
  sub_232B482F8();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_232B482EC(v5);
  *v6 = v7;
  v6[1] = sub_232B26B14;
  sub_232C79A74();
  sub_232C79DCC();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_232C79168()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = sub_232C79B6C();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_232C791A0()
{
  sub_232B482F8();
  sub_232C79C00();
  v0 = swift_task_alloc();
  v1 = sub_232B26CA4(v0);
  *v1 = v2;
  v1[1] = sub_232B26B14;
  v3 = sub_232C79994();

  return v4(v3);
}

uint64_t sub_232C79248()
{
  sub_232B26C7C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_232B26CA4(v3);
  *v4 = v5;
  v6 = sub_232B26C24(v4);

  return v7(v6);
}

uint64_t sub_232C792DC()
{
  sub_232B26C7C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_232B26CA4(v3);
  *v4 = v5;
  v6 = sub_232B26C24(v4);

  return v7(v6);
}

uint64_t sub_232C79370()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_232C793B0()
{
  sub_232B482F8();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_232B482EC(v6);
  *v7 = v8;
  v7[1] = sub_232B26B14;
  sub_232C79A14();

  return v9();
}

uint64_t sub_232C79468()
{
  sub_232C79DE0();
  sub_232B482F8();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_232B482EC(v5);
  *v6 = v7;
  v6[1] = sub_232B26B14;
  sub_232C79A74();
  sub_232C79DCC();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_232C7950C()
{
  sub_232C79D18();
  sub_232C79B8C();
  sub_232C79A34();
  v0 = swift_task_alloc();
  v1 = sub_232B26CA4(v0);
  *v1 = v2;
  sub_232C799D4(v1);
  sub_232C6EFE4();

  return sub_232C7708C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_232C795F0()
{
  sub_232C79DE0();
  sub_232B482F8();
  sub_232C79C00();
  v0 = swift_task_alloc();
  v1 = sub_232B26CA4(v0);
  *v1 = v2;
  v1[1] = sub_232B26B14;
  sub_232C79994();
  sub_232C79DCC();

  return sub_232C72B9C(v3, v4, v5, v6, v7);
}

uint64_t sub_232C79684()
{
  sub_232C79D18();
  sub_232C79B8C();
  sub_232C79A34();
  v0 = swift_task_alloc();
  v1 = sub_232B26CA4(v0);
  *v1 = v2;
  sub_232C799D4(v1);
  sub_232C6EFE4();

  return sub_232C71D4C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_232C79714()
{
  sub_232C79D18();
  sub_232C79B8C();
  sub_232C79A34();
  v0 = swift_task_alloc();
  v1 = sub_232B26CA4(v0);
  *v1 = v2;
  sub_232C799D4(v1);
  sub_232C6EFE4();

  return sub_232C715EC(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_232C797A4()
{
  sub_232C79DB4();
  sub_232BAE1F8();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = sub_232B26CA4(v7);
  *v8 = v9;
  v8[1] = sub_232B26B14;
  sub_232C79994();
  sub_232C79CBC();

  return sub_232C709BC(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_232C7984C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = sub_232C79B6C();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_232C7988C()
{
  sub_232C79DE0();
  sub_232B482F8();
  sub_232C79C00();
  v0 = swift_task_alloc();
  v1 = sub_232B26CA4(v0);
  *v1 = v2;
  v1[1] = sub_232B26B14;
  sub_232C79994();
  sub_232C79DCC();

  return sub_232C6FE10(v3, v4, v5, v6, v7);
}

uint64_t sub_232C799AC()
{

  return sub_232CE9A20();
}

uint64_t sub_232C799D4(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  return v2;
}

void sub_232C79A34()
{
  v1 = v0[3];
  v9 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[10];
}

uint64_t sub_232C79A88()
{
  v2 = *(v0 + 40);

  return swift_beginAccess();
}

BOOL sub_232C79AAC(uint64_t a1)
{
  *(a1 + 16) = v2;

  return sub_232C0A69C(sub_232C795D0, a1, v1);
}

BOOL sub_232C79B04(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_232C79B2C(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_232C79B98()
{

  return sub_232CE9CD0();
}

uint64_t sub_232C79BB8()
{

  return sub_232CEA310();
}

void sub_232C79C00()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

void sub_232C79C30(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_232C79C60(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 3;

  return swift_willThrow();
}

uint64_t sub_232C79C7C()
{

  return swift_slowAlloc();
}

uint64_t sub_232C79C98@<X0>(__n128 *a1@<X0>, unsigned __int8 a2@<W8>, __n128 a3@<Q0>)
{
  a1[8] = a3;
  a1[9].n128_u8[0] = a2;
  *(v3 + 376) = v4;
  *(v3 + 384) = v5;
  *(v3 + 392) = v6;

  return swift_task_alloc();
}

uint64_t sub_232C79CD4()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);

  return sub_232CEA290();
}

uint64_t sub_232C79D34()
{
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
}

void sub_232C79D54(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_232C79D74()
{
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[31];
  v7 = v0[28];
}

uint64_t sub_232C79D94(uint64_t a1)
{

  return sub_232B12504(v1, 1, 1, a1);
}

void sub_232C79DF4()
{
  v4 = *(v1 + 440);
  v3 = *(v1 + 448);
}

uint64_t sub_232C79E0C()
{

  return sub_232CE9C60();
}

uint64_t sub_232C79E24()
{

  return sub_232CEA2F0();
}

uint64_t sub_232C79E3C()
{

  return swift_task_alloc();
}

uint64_t type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse()
{
  result = qword_27DDC8610;
  if (!qword_27DDC8610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C79EC8()
{
  sub_232C79FC4(319, &qword_27DDC8620, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_232CE9340();
    if (v1 <= 0x3F)
    {
      sub_232C79FC4(319, &qword_27DDC67E8, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232C79FC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_232C7A028@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse();
  v4 = a1 + *(v3 + 24);
  sub_232CE9330();
  v5 = *(v3 + 28);
  v6 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();

  return sub_232B12504(a1 + v5, 1, 1, v6);
}

uint64_t sub_232C7A098()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5218);
  sub_232B135C4(v0, qword_27DDD5218);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF8180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "globalTopics";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "personalTopics";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "responseDebugInfo";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C7A2A0()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_232B13EE0();
        sub_232C7A46C();
        break;
      case 2:
        sub_232B13EE0();
        sub_232C7A3CC();
        break;
      case 1:
        sub_232B13EE0();
        sub_232C7A32C();
        break;
    }
  }

  return result;
}

uint64_t sub_232C7A32C()
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  sub_232C7B028(&qword_27DDC7C60, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult);
  return sub_232CE94B0();
}

uint64_t sub_232C7A3CC()
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  sub_232C7B028(&qword_27DDC7C60, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult);
  return sub_232CE94B0();
}

uint64_t sub_232C7A46C()
{
  v0 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse() + 28);
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  sub_232C7B028(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  return sub_232CE94C0();
}

uint64_t sub_232C7A520()
{
  v2 = v1;
  if (!*(*v0 + 16) || (type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(), sub_232C7B070(), sub_232C7B028(v3, v4), result = sub_232C7B0A0(), (v2 = v1) == 0))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(), sub_232C7B070(), sub_232C7B028(v6, v7), result = sub_232C7B0A0(), (v2 = v1) == 0))
    {
      result = sub_232C7A65C(v0);
      if (!v2)
      {
        v8 = v0 + *(type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse() + 24);
        return sub_232CE9320();
      }
    }
  }

  return result;
}

uint64_t sub_232C7A65C(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse();
  sub_232B21B7C(a1 + *(v10 + 28), v5);
  if (sub_232B12480(v5, 1, v6) == 1)
  {
    return sub_232B13790(v5, &qword_27DDC67C8, &unk_232CF5E70);
  }

  sub_232B21BEC(v5, v9);
  sub_232C7B028(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232CE95E0();
  return sub_232B21C50(v9);
}

uint64_t sub_232C7A7FC(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v5 = sub_232B13F24(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v46 - v12;
  v14 = sub_232B124A8(&qword_27DDC6828, &unk_232CF6030);
  v15 = sub_232B13F24(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  v20 = *a1;
  v21 = *a2;
  sub_232B33D10();
  if ((v22 & 1) == 0)
  {
    goto LABEL_25;
  }

  v23 = a1[1];
  v24 = a2[1];
  sub_232B33D10();
  if ((v25 & 1) == 0)
  {
    goto LABEL_25;
  }

  v26 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse();
  v27 = *(v26 + 28);
  v28 = *(v14 + 48);
  sub_232B21B7C(a1 + v27, v19);
  sub_232B21B7C(a2 + v27, &v19[v28]);
  sub_232B13FF0(v19);
  if (v33)
  {
    sub_232B13FF0(&v19[v28]);
    if (v33)
    {
      sub_232B13790(v19, &qword_27DDC67C8, &unk_232CF5E70);
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  sub_232B21B7C(v19, v13);
  sub_232B13FF0(&v19[v28]);
  if (v33)
  {
    sub_232B21C50(v13);
LABEL_12:
    v34 = &qword_27DDC6828;
    v35 = &unk_232CF6030;
LABEL_24:
    sub_232B13790(v19, v34, v35);
LABEL_25:
    v32 = 0;
    return v32 & 1;
  }

  sub_232B21BEC(&v19[v28], v9);
  v36 = *(v4 + 20);
  v37 = &v13[v36];
  v38 = *&v13[v36 + 8];
  v39 = &v9[v36];
  v40 = *(v39 + 1);
  if (!v38)
  {
    if (!v40)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (!v40 || (*v37 == *v39 ? (v41 = v38 == v40) : (v41 = 0), !v41 && (sub_232CEA750() & 1) == 0))
  {
LABEL_23:
    sub_232B21C50(v9);
    sub_232B21C50(v13);
    v34 = &qword_27DDC67C8;
    v35 = &unk_232CF5E70;
    goto LABEL_24;
  }

LABEL_20:
  sub_232CE9340();
  sub_232C7B088();
  sub_232C7B028(v42, v43);
  v44 = sub_232CE9CF0();
  sub_232B21C50(v9);
  sub_232B21C50(v13);
  sub_232B13790(v19, &qword_27DDC67C8, &unk_232CF5E70);
  if ((v44 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  v29 = *(v26 + 24);
  sub_232CE9340();
  sub_232C7B088();
  sub_232C7B028(v30, v31);
  v32 = sub_232CE9CF0();
  return v32 & 1;
}

uint64_t sub_232C7AB10()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse();
  sub_232C7B028(&qword_27DDC8630, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C7ABB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_232C7AC2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_232C7ACA0(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_232C7ACF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C7B028(&qword_27DDC8640, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C7AD70@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6450 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD5218);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232C7AE18(uint64_t a1)
{
  v2 = sub_232C7B028(&qword_27DDC7BF0, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C7AE88()
{
  sub_232C7B028(&qword_27DDC7BF0, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);

  return sub_232CE9500();
}

uint64_t sub_232C7B028(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232C7B0A0()
{

  return sub_232CE95D0();
}

uint64_t type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult()
{
  result = qword_27DDC8648;
  if (!qword_27DDC8648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C7B138()
{
  sub_232C7B2C8(319, &qword_2814DF980, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_232CE9340();
    if (v1 <= 0x3F)
    {
      sub_232C7B270();
      if (v2 <= 0x3F)
      {
        sub_232C7B2C8(319, &qword_2814DFA10, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_232C7B2C8(319, &qword_27DDC6840, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_232C7B270()
{
  if (!qword_27DDC8658)
  {
    type metadata accessor for DocumentUnderstanding_TopicSetIdentifier();
    v0 = sub_232CEA350();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDC8658);
    }
  }
}

void sub_232C7B2C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_232C7B318@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  v3 = a1 + v2[5];
  sub_232CE9330();
  v4 = v2[6];
  v5 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier();
  result = sub_232B12504(a1 + v4, 1, 1, v5);
  v7 = (a1 + v2[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1 + v2[8];
  *v8 = 0;
  v8[8] = 1;
  return result;
}

uint64_t sub_232C7B3A4()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5230);
  sub_232B135C4(v0, qword_27DDD5230);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF4C30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "topicSet";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "topicIdentifier";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "topicConfidence";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "topicNames";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C7B5E4()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232B13EE0();
        sub_232C7B69C();
        break;
      case 2:
        sub_232B13EE0();
        sub_232C7B750();
        break;
      case 3:
        sub_232B13EE0();
        sub_232C7B7B4();
        break;
      case 4:
        sub_232CE9460();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232C7B69C()
{
  v0 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult() + 24);
  type metadata accessor for DocumentUnderstanding_TopicSetIdentifier();
  sub_232C7C3F8(&qword_27DDC7C58, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
  return sub_232CE94C0();
}

uint64_t sub_232C7B818()
{
  sub_232C2A594();
  result = sub_232C7B8F8(v2);
  if (!v1)
  {
    sub_232C2A594();
    sub_232C7BA98(v4);
    sub_232C2A594();
    sub_232C7BB10(v5);
    if (*(*v0 + 16))
    {
      sub_232C2A594();
      sub_232CE95A0();
    }

    v6 = v0 + *(type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult() + 20);
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232C7B8F8(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  sub_232C12540(a1 + *(v10 + 24), v5);
  if (sub_232B12480(v5, 1, v6) == 1)
  {
    return sub_232B267AC(v5, &qword_27DDC6AC0, &unk_232CFBF50);
  }

  sub_232C7C338(v5, v9);
  sub_232C7C3F8(&qword_27DDC7C58, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
  sub_232CE95E0();
  return sub_232C7C39C(v9);
}

uint64_t sub_232C7BA98(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C7BB10(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232C7BB88(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v45 - v10;
  v12 = sub_232B124A8(&qword_27DDC6AC8, qword_232CF6E00);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  v17 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  v18 = v17[6];
  v19 = *(v13 + 56);
  sub_232C12540(a1 + v18, v16);
  sub_232C12540(a2 + v18, &v16[v19]);
  sub_232B13FF0(v16);
  if (v26)
  {
    sub_232B13FF0(&v16[v19]);
    if (v26)
    {
      sub_232B267AC(v16, &qword_27DDC6AC0, &unk_232CFBF50);
      goto LABEL_6;
    }

LABEL_17:
    v27 = &qword_27DDC6AC8;
    v28 = qword_232CF6E00;
LABEL_40:
    sub_232B267AC(v16, v27, v28);
    goto LABEL_41;
  }

  sub_232C12540(v16, v11);
  sub_232B13FF0(&v16[v19]);
  if (v26)
  {
    sub_232C7C39C(v11);
    goto LABEL_17;
  }

  sub_232C7C338(&v16[v19], v7);
  v29 = *v11;
  v30 = *v7;
  if (v11[8])
  {
    v29 = *v11 != 0;
  }

  if (v7[8] == 1)
  {
    if (v30)
    {
      if (v29 != 1)
      {
        goto LABEL_39;
      }
    }

    else if (v29)
    {
LABEL_39:
      sub_232C7C39C(v7);
      sub_232C7C39C(v11);
      v27 = &qword_27DDC6AC0;
      v28 = &unk_232CFBF50;
      goto LABEL_40;
    }
  }

  else if (v29 != v30)
  {
    goto LABEL_39;
  }

  if (*(v11 + 2) != *(v7 + 2))
  {
    goto LABEL_39;
  }

  v40 = *(v4 + 24);
  sub_232CE9340();
  sub_232C7C440();
  sub_232C7C3F8(v41, v42);
  v43 = sub_232CE9CF0();
  sub_232C7C39C(v7);
  sub_232C7C39C(v11);
  sub_232B267AC(v16, &qword_27DDC6AC0, &unk_232CFBF50);
  if ((v43 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_6:
  v20 = v17[7];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_41;
    }

    v25 = *v21 == *v23 && v22 == v24;
    if (!v25 && (sub_232CEA750() & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (v24)
  {
    goto LABEL_41;
  }

  v31 = v17[8];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 8);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_41;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      goto LABEL_41;
    }
  }

  if ((sub_232B32DC4(*a1, *a2) & 1) == 0)
  {
LABEL_41:
    v39 = 0;
    return v39 & 1;
  }

  v36 = v17[5];
  sub_232CE9340();
  sub_232C7C440();
  sub_232C7C3F8(v37, v38);
  v39 = sub_232CE9CF0();
  return v39 & 1;
}

uint64_t sub_232C7BF2C()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  sub_232C7C3F8(&qword_27DDC8668, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C7C004(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C7C3F8(&qword_27DDC8678, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C7C080@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6458 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD5230);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232C7C128(uint64_t a1)
{
  v2 = sub_232C7C3F8(&qword_27DDC7C60, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C7C198()
{
  sub_232C7C3F8(&qword_27DDC7C60, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult);

  return sub_232CE9500();
}

uint64_t sub_232C7C338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232C7C39C(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232C7C3F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for DocumentUnderstanding_TopicSetIdentifier()
{
  result = qword_27DDC8688;
  if (!qword_27DDC8688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232C7C4CC()
{
  result = sub_232CE9340();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DocumentUnderstanding_TopicSetIdentifier.TopicSetName(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232C7C570(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

BOOL sub_232C7C59C(_BOOL8 result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_232C7C5B0@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  v1 = a1 + *(type metadata accessor for DocumentUnderstanding_TopicSetIdentifier() + 24);
  return sub_232CE9330();
}

void sub_232C7C608(uint64_t a1@<X8>)
{
  sub_232C7C5F4();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_232C7C648(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_232C7C5F4();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

BOOL sub_232C7C680@<W0>(_BOOL8 *a1@<X8>)
{
  result = sub_232C7C59C(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_232C7C6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C7D260();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_232C7C734()
{
  result = qword_27DDC8698;
  if (!qword_27DDC8698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8698);
  }

  return result;
}

unint64_t sub_232C7C790()
{
  result = qword_27DDC86A0;
  if (!qword_27DDC86A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC86A0);
  }

  return result;
}

uint64_t sub_232C7C7F4()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5248);
  sub_232B135C4(v0, qword_27DDD5248);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF5E60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topicSetName";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "topicSetVersion";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C7C9BC()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_232CE9440();
    }

    else if (result == 1)
    {
      sub_232C7CA44();
    }
  }

  return result;
}

uint64_t sub_232C7CAAC()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_232C7D260(), result = sub_232CE9570(), !v1))
  {
    if (!v0[2] || (result = sub_232CE9590(), !v1))
    {
      v3 = v0 + *(type metadata accessor for DocumentUnderstanding_TopicSetIdentifier() + 24);
      return sub_232CE9320();
    }
  }

  return result;
}

uint64_t sub_232C7CB90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    v4 = *(type metadata accessor for DocumentUnderstanding_TopicSetIdentifier() + 24);
    sub_232CE9340();
    sub_232C7D2B4(&qword_27DDC6590, MEMORY[0x277D216C8]);
    return sub_232CE9CF0() & 1;
  }

  return 0;
}

uint64_t sub_232C7CC84()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_TopicSetIdentifier();
  sub_232C7D2B4(&qword_27DDC86B0, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C7CD5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C7D2B4(&qword_27DDC86D0, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C7CDFC(uint64_t a1)
{
  v2 = sub_232C7D2B4(&qword_27DDC7C58, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C7CE6C()
{
  sub_232C7D2B4(&qword_27DDC7C58, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);

  return sub_232CE9500();
}

uint64_t sub_232C7CEEC()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5260);
  sub_232B135C4(v0, qword_27DDD5260);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF5E60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "WIKIDATA";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NEWS";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_232CE9600();
}

unint64_t sub_232C7D1B4()
{
  result = qword_27DDC86B8;
  if (!qword_27DDC86B8)
  {
    sub_232B27EEC(&qword_27DDC86C0, qword_232CFFED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC86B8);
  }

  return result;
}

unint64_t sub_232C7D260()
{
  result = qword_27DDC86D8;
  if (!qword_27DDC86D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC86D8);
  }

  return result;
}

uint64_t sub_232C7D2B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232C7D2FC@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Dutool_TopicVectorEntry();
  v3 = a1 + v2[5];
  result = sub_232CE9330();
  v5 = (a1 + v2[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[7]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_232C7D358()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5278);
  sub_232B135C4(v0, qword_27DDD5278);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF8180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "qid";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "vector";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C7D55C()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_232CE93F0();
        break;
      case 2:
        sub_232C2A594();
        sub_232C7D664();
        break;
      case 1:
        sub_232C2A594();
        sub_232C7D600();
        break;
    }
  }

  return result;
}

uint64_t sub_232C7D6C8()
{
  sub_232C2A594();
  result = sub_232C7D78C(v2);
  if (!v1)
  {
    sub_232C2A594();
    sub_232C7D804(v4);
    if (*(*v0 + 16))
    {
      sub_232C2A594();
      sub_232CE9530();
    }

    v5 = v0 + *(type metadata accessor for Dutool_TopicVectorEntry() + 20);
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232C7D78C(uint64_t a1)
{
  result = type metadata accessor for Dutool_TopicVectorEntry();
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C7D804(uint64_t a1)
{
  result = type metadata accessor for Dutool_TopicVectorEntry();
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C7D87C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Dutool_TopicVectorEntry();
  v5 = v4[6];
  sub_232B2DF3C();
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v10 = *v8 == *v9 && v6 == v7;
    if (!v10 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v11 = v4[7];
  sub_232B2DF3C();
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v16 = *v14 == *v15 && v12 == v13;
    if (!v16 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (sub_232B32944(*a1, *a2))
  {
    v17 = v4[5];
    sub_232CE9340();
    sub_232C7DDF4(&qword_27DDC6590, MEMORY[0x277D216C8]);
    return sub_232CE9CF0() & 1;
  }

  return 0;
}

uint64_t sub_232C7D99C()
{
  sub_232CEA820();
  type metadata accessor for Dutool_TopicVectorEntry();
  sub_232C7DDF4(&qword_27DDC86F0, type metadata accessor for Dutool_TopicVectorEntry);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C7DA74(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C7DDF4(&qword_27DDC8700, type metadata accessor for Dutool_TopicVectorEntry);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C7DAF0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6470 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD5278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232C7DB98(uint64_t a1)
{
  v2 = sub_232C7DDF4(&qword_27DDC86E8, type metadata accessor for Dutool_TopicVectorEntry);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C7DC08()
{
  sub_232C7DDF4(&qword_27DDC86E8, type metadata accessor for Dutool_TopicVectorEntry);

  return sub_232CE9500();
}

uint64_t type metadata accessor for Dutool_TopicVectorEntry()
{
  result = qword_27DDC8708;
  if (!qword_27DDC8708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232C7DDF4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_232C7DE64()
{
  sub_232C7DF48(319, &qword_27DDC71C8, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_232CE9340();
    if (v1 <= 0x3F)
    {
      sub_232C7DF48(319, &qword_2814DFA10, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232C7DF48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse()
{
  result = qword_27DDC8718;
  if (!qword_27DDC8718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C7E00C()
{
  sub_232C7E108(319, &qword_27DDC8728, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_232CE9340();
    if (v1 <= 0x3F)
    {
      sub_232C7E108(319, &qword_27DDC67E8, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232C7E108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_232C7E16C@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse();
  v3 = a1 + *(v2 + 20);
  sub_232CE9330();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();

  return sub_232B12504(a1 + v4, 1, 1, v5);
}

uint64_t sub_232C7E1DC()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5290);
  sub_232B135C4(v0, qword_27DDD5290);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF5E60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "foundEntities";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "responseDebugInfo";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C7E3A4()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_232B13EE0();
      sub_232C7E4B8();
    }

    else if (result == 1)
    {
      sub_232B13EE0();
      sub_232C7E418();
    }
  }

  return result;
}

uint64_t sub_232C7E418()
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult();
  sub_232C7EF28(&qword_27DDC8750, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult);
  return sub_232CE94B0();
}

uint64_t sub_232C7E4B8()
{
  v0 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse() + 24);
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  sub_232C7EF28(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  return sub_232CE94C0();
}

uint64_t sub_232C7E56C()
{
  if (!*(*v0 + 16) || (type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult(), sub_232C7EF28(&qword_27DDC8750, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult), result = sub_232CE95D0(), !v1))
  {
    result = sub_232C7E678(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse() + 20);
      return sub_232CE9320();
    }
  }

  return result;
}

uint64_t sub_232C7E678(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse();
  sub_232B21B7C(a1 + *(v10 + 24), v5);
  if (sub_232B12480(v5, 1, v6) == 1)
  {
    return sub_232B13790(v5, &qword_27DDC67C8, &unk_232CF5E70);
  }

  sub_232B21BEC(v5, v9);
  sub_232C7EF28(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232CE95E0();
  return sub_232B21C50(v9);
}

uint64_t sub_232C7E818(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v5 = sub_232B13F24(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v43 - v12;
  v14 = sub_232B124A8(&qword_27DDC6828, &unk_232CF6030);
  v15 = sub_232B13F24(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  v20 = *a1;
  v21 = *a2;
  sub_232B32998();
  if ((v22 & 1) == 0)
  {
    goto LABEL_24;
  }

  v23 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse();
  v24 = *(v23 + 24);
  v25 = *(v14 + 48);
  sub_232B21B7C(a1 + v24, v19);
  sub_232B21B7C(a2 + v24, &v19[v25]);
  sub_232B13FF0(v19);
  if (v30)
  {
    sub_232B13FF0(&v19[v25]);
    if (v30)
    {
      sub_232B13790(v19, &qword_27DDC67C8, &unk_232CF5E70);
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  sub_232B21B7C(v19, v13);
  sub_232B13FF0(&v19[v25]);
  if (v30)
  {
    sub_232B21C50(v13);
LABEL_11:
    v31 = &qword_27DDC6828;
    v32 = &unk_232CF6030;
LABEL_23:
    sub_232B13790(v19, v31, v32);
LABEL_24:
    v29 = 0;
    return v29 & 1;
  }

  sub_232B21BEC(&v19[v25], v9);
  v33 = *(v4 + 20);
  v34 = &v13[v33];
  v35 = *&v13[v33 + 8];
  v36 = &v9[v33];
  v37 = *(v36 + 1);
  if (!v35)
  {
    if (!v37)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (!v37 || (*v34 == *v36 ? (v38 = v35 == v37) : (v38 = 0), !v38 && (sub_232CEA750() & 1) == 0))
  {
LABEL_22:
    sub_232B21C50(v9);
    sub_232B21C50(v13);
    v31 = &qword_27DDC67C8;
    v32 = &unk_232CF5E70;
    goto LABEL_23;
  }

LABEL_19:
  sub_232CE9340();
  sub_232C7EF70();
  sub_232C7EF28(v39, v40);
  v41 = sub_232CE9CF0();
  sub_232B21C50(v9);
  sub_232B21C50(v13);
  sub_232B13790(v19, &qword_27DDC67C8, &unk_232CF5E70);
  if ((v41 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_7:
  v26 = *(v23 + 20);
  sub_232CE9340();
  sub_232C7EF70();
  sub_232C7EF28(v27, v28);
  v29 = sub_232CE9CF0();
  return v29 & 1;
}

uint64_t sub_232C7EB1C()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse();
  sub_232C7EF28(&qword_27DDC8738, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C7EBF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C7EF28(&qword_27DDC8748, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C7EC70@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6478 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD5290);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232C7ED18(uint64_t a1)
{
  v2 = sub_232C7EF28(&qword_27DDC7CB0, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C7ED88()
{
  sub_232C7EF28(&qword_27DDC7CB0, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);

  return sub_232CE9500();
}

uint64_t sub_232C7EF28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult()
{
  result = qword_27DDC8758;
  if (!qword_27DDC8758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C7EFFC()
{
  sub_232CE9340();
  if (v0 <= 0x3F)
  {
    sub_232C7F090();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_232C7F090()
{
  if (!qword_27DDC6840)
  {
    v0 = sub_232CEA350();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDC6840);
    }
  }
}

uint64_t sub_232C7F0E0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult();
  v3 = a1 + *(v2 + 20);
  result = sub_232CE9330();
  v5 = a1 + *(v2 + 24);
  *v5 = 0;
  v5[8] = 1;
  return result;
}

uint64_t sub_232C7F134()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD52A8);
  sub_232B135C4(v0, qword_27DDD52A8);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF5E60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topicIdentifier";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "topicConfidence";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C7F2FC()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_232C7F384();
    }

    else if (result == 1)
    {
      sub_232CE94A0();
    }
  }

  return result;
}

uint64_t sub_232C7F3E8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_232CE95C0(), !v1))
  {
    result = sub_232C7F4AC(v0);
    if (!v1)
    {
      v6 = v0 + *(type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult() + 20);
      return sub_232CE9320();
    }
  }

  return result;
}

uint64_t sub_232C7F4AC(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult();
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232C7F524(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult();
  v6 = *(v5 + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v12 = *(v5 + 20);
  sub_232CE9340();
  sub_232C7FA20(&qword_27DDC6590, MEMORY[0x277D216C8]);
  return sub_232CE9CF0() & 1;
}

uint64_t sub_232C7F614()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult();
  sub_232C7FA20(&qword_27DDC8770, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C7F6EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C7FA20(&qword_27DDC8780, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C7F768@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6480 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD52A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232C7F810(uint64_t a1)
{
  v2 = sub_232C7FA20(&qword_27DDC8750, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C7F880()
{
  sub_232C7FA20(&qword_27DDC8750, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult);

  return sub_232CE9500();
}

uint64_t sub_232C7FA20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t VectorRecord.recordID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_232B2080C();
}

uint64_t VectorRecord.associatedData.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_232B2080C();
  sub_232C05E58(v3, v4);
  return sub_232B2080C();
}

uint64_t VectorRecord.init(recordID:vector:associatedData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t NeighborRetrievalResult.recordID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_232B2080C();
}

uint64_t NeighborRetrievalResult.associatedData.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_232B2080C();
  sub_232C05E58(v3, v4);
  return sub_232B2080C();
}

uint64_t sub_232C7FB40(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_232C7FB5C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232C7FB84(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_232C7FBC4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_232C7FC1C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_232C7FC30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_232C7FC70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_232C7FCDC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2848148B0;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x238392BE0](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  return a1;
}

uint64_t sub_232C7FD40(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  *a1 = &unk_284814790;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_2848148B0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = &unk_2848148B0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_232CB32B4((a1 + 96));
  sub_232C7FE74(a1, a3, a4, &v8);
  sub_232CB34D4((a1 + 96), &v8);
  sub_232CB32BC(&v8);
  return a1;
}

void sub_232C7FE24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_232CB32BC(va);
  sub_232CB32BC((v4 + 96));
  sub_232C7FCDC(v5);
  sub_232C7FCDC(v3);
  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    sub_232C85D30(v2, v7);
  }

  _Unwind_Resume(a1);
}

void *sub_232C7FE74@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a2;
  v9 = a3;
  result = sub_232C8051C(a2, a3, (a1 + 88), a4);
  if (!*a4)
  {
    sub_232CB32BC(a4);
    result = sub_232CB1748(&v8, 4uLL, a4);
    if (!*a4)
    {
      sub_232CB32BC(a4);
      result = sub_232C8051C(v8, v9, (a1 + 92), a4);
      if (!*a4)
      {
        sub_232CB32BC(a4);
        result = sub_232CB1748(&v8, 4uLL, a4);
        if (!*a4)
        {
          sub_232CB32BC(a4);
          v7 = 0;
          result = sub_232C80728(v8, v9, &v7, a4);
          if (!*a4)
          {
            sub_232CB32BC(a4);
            result = sub_232CB1748(&v8, 4uLL, a4);
            if (!*a4)
            {
              sub_232CB32BC(a4);
              sub_232C80934();
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_232C804DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232C80A34(va);
  _Unwind_Resume(a1);
}

void *sub_232C8051C@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = sub_232C83BBC(&v8);
    sub_232C85DAC(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    sub_232C85DAC(&v8, "(", 1);
    MEMORY[0x238392A80](&v8, 448);
    sub_232C85DAC(&v8, ") [", 3);
    sub_232C85DAC(&v8, "string.size() >= sizeof(T)", 26);
    sub_232C85DAC(&v8, "] ", 2);
    sub_232C809A4(&v7, a4);
    v8 = *MEMORY[0x277D82828];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
    v9 = MEMORY[0x277D82878] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x238392BA0](&v12);
  }

  else
  {
    *a3 = *a1;

    return sub_232CB32B4(a4);
  }
}

void *sub_232C80728@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = sub_232C83BBC(&v8);
    sub_232C85DAC(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    sub_232C85DAC(&v8, "(", 1);
    MEMORY[0x238392A80](&v8, 448);
    sub_232C85DAC(&v8, ") [", 3);
    sub_232C85DAC(&v8, "string.size() >= sizeof(T)", 26);
    sub_232C85DAC(&v8, "] ", 2);
    sub_232C809A4(&v7, a4);
    v8 = *MEMORY[0x277D82828];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
    v9 = MEMORY[0x277D82878] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x238392BA0](&v12);
  }

  else
  {
    *a3 = *a1;

    return sub_232CB32B4(a4);
  }
}

void sub_232C809A4(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  std::stringbuf::str();
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  sub_232CB3420(a2, v3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_232C80A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_232C80A34(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 8) = *MEMORY[0x277D82828];
  *(a1 + 8 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));
  std::ostream::~ostream();
  MEMORY[0x238392BA0](a1 + 120);
  return a1;
}

void *sub_232C80B58(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1 || (v2 = **v1, (result = __dynamic_cast(v1, &unk_284814880, &unk_284815860, 16)) == 0))
  {
    v9 = 1;
    v4 = sub_232C85DAC(MEMORY[0x277D82670], "model_interface.cc", 18);
    v5 = sub_232C85DAC(v4, "(", 1);
    v6 = MEMORY[0x238392A80](v5, 103);
    v7 = sub_232C85DAC(v6, ") [", 3);
    v8 = sub_232C85DAC(v7, "(model_proto = dynamic_cast<const ModelProto *>(model_proto_))", 62);
    sub_232C85DAC(v8, "] ", 2);
    result = sub_232C83EEC(&v9);
    __break(1u);
  }

  return result;
}

void *sub_232C80C50(void *a1)
{
  *a1 = &unk_284814790;
  sub_232CB32BC(a1 + 12);
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = &unk_2848148B0;
  v2 = a1[10];
  if (v2)
  {
    MEMORY[0x238392BE0](v2, 0x1000C8052888210);
    a1[10] = 0;
  }

  a1[4] = 0;
  a1[5] = 0;
  a1[3] = &unk_2848148B0;
  v3 = a1[6];
  if (v3)
  {
    MEMORY[0x238392BE0](v3, 0x1000C8052888210);
    a1[6] = 0;
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    sub_232C85D30((a1 + 2), v4);
  }

  return a1;
}

const char *sub_232C80D30(uint64_t a1)
{
  (*(**(a1 + 8) + 32))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 32))(*(a1 + 8));
  }

  else
  {
    return "<unk>";
  }
}

const char *sub_232C80DB4(uint64_t a1)
{
  (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 40))(*(a1 + 8));
  }

  else
  {
    return "<s>";
  }
}

const char *sub_232C80E38(uint64_t a1)
{
  (*(**(a1 + 8) + 48))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 48))(*(a1 + 8));
  }

  else
  {
    return "</s>";
  }
}

const char *sub_232C80EBC(uint64_t a1)
{
  (*(**(a1 + 8) + 56))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 56))(*(a1 + 8));
  }

  else
  {
    return "<pad>";
  }
}

uint64_t sub_232C80F40(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a1 + 72);
  v4 = *v3;
  if (a3)
  {
    v5 = 0;
    v6 = a2;
    v7 = a3;
    while (1)
    {
      v8 = *v6++;
      v5 ^= (v4 >> 10 << ((v4 >> 6) & 8)) ^ v8;
      v4 = v3[v5];
      if ((v4 & 0x800000FF) != v8)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = *a2;
    if (*a2)
    {
      v5 = 0;
      v10 = a2 + 1;
      while (1)
      {
        v5 ^= (v4 >> 10 << ((v4 >> 6) & 8)) ^ v9;
        v4 = v3[v5];
        if ((v4 & 0x800000FF) != v9)
        {
          break;
        }

        v11 = *v10++;
        v9 = v11;
        if (!v11)
        {
LABEL_10:
          if ((v4 & 0x100) != 0)
          {
            goto LABEL_23;
          }

          break;
        }
      }
    }

    else
    {
      v5 = 0;
      if ((v4 & 0x100) != 0)
      {
LABEL_23:
        v19 = v5 ^ (v4 >> 10 << ((v4 >> 6) & 8));
        return v3[v19] & 0x7FFFFFFF;
      }
    }
  }

  v3 = *(a1 + 40);
  v12 = *v3;
  if (a3)
  {
    v13 = 0;
    while (1)
    {
      v14 = *a2++;
      v13 ^= (v12 >> 10 << ((v12 >> 6) & 8)) ^ v14;
      v12 = v3[v13];
      if ((v12 & 0x800000FF) != v14)
      {
        return *(a1 + 88);
      }

      if (!--a3)
      {
        goto LABEL_20;
      }
    }
  }

  v15 = *a2;
  if (*a2)
  {
    v13 = 0;
    v16 = a2 + 1;
    while (1)
    {
      v13 ^= (v12 >> 10 << ((v12 >> 6) & 8)) ^ v15;
      v12 = v3[v13];
      if ((v12 & 0x800000FF) != v15)
      {
        return *(a1 + 88);
      }

      v17 = *v16++;
      v15 = v17;
      if (!v17)
      {
LABEL_20:
        if ((v12 & 0x100) != 0)
        {
          goto LABEL_25;
        }

        return *(a1 + 88);
      }
    }
  }

  v13 = 0;
  if ((v12 & 0x100) == 0)
  {
    return *(a1 + 88);
  }

LABEL_25:
  v19 = v13 ^ (v12 >> 10 << ((v12 >> 6) & 8));
  return v3[v19] & 0x7FFFFFFF;
}

void sub_232C810B0(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  (*(*a1 + 16))(&__p);
  v12 = __p;
  sub_232CB32BC(&__p);
  if (v12)
  {
    sub_232CB34D0(a6, a1 + 96);
  }

  else
  {
    v13 = (*(*a1 + 128))(a1);
    sub_232C812AC(a1 + 24, a2, a3, a4, v13, &__p);
    v14 = __p;
    v15 = v22;
    while (v14 != v15)
    {
      v16 = *v14;
      if (((*(*a1 + 144))(a1, v16) & 1) == 0 && ((*(*a1 + 152))(a1, v16) & 1) == 0)
      {
        v20[0] = (*(*a1 + 120))(a1, v16);
        v20[1] = v17;
        v18 = a5[1];
        if (v18 >= a5[2])
        {
          v19 = sub_232C862B4(a5, v20);
        }

        else
        {
          sub_232C861F0(a5, v20);
          v19 = (v18 + 24);
        }

        a5[1] = v19;
      }

      v14 += 4;
    }

    sub_232CB34D0(a6, a1 + 96);
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }
}

void sub_232C81288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C812AC(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  if (a4 != -1)
  {
    a5 = a4;
  }

  sub_232C8613C(a6, a5);
  v12 = sub_232C83FCC(a1, a2, *a6, (a6[1] - *a6) >> 4, a3, a4);
  sub_232C842D4(a6, v12);
}

void sub_232C8132C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C81348(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, const void **a5@<X4>, uint64_t a6@<X8>)
{
  (*(*a1 + 16))(&__p);
  v12 = __p;
  sub_232CB32BC(&__p);
  if (v12)
  {
    sub_232CB34D0(a6, a1 + 96);
  }

  else
  {
    v13 = (*(*a1 + 128))(a1);
    sub_232C812AC(a1 + 24, a2, a3, a4, v13, &__p);
    v14 = __p;
    v15 = v28;
    if (__p != v28)
    {
      do
      {
        v16 = *v14;
        if (((*(*a1 + 144))(a1, v16) & 1) == 0 && ((*(*a1 + 152))(a1, v16) & 1) == 0)
        {
          v18 = a5[1];
          v17 = a5[2];
          if (v18 >= v17)
          {
            v20 = *a5;
            v21 = v18 - *a5;
            v22 = v21 >> 2;
            v23 = (v21 >> 2) + 1;
            if (v23 >> 62)
            {
              sub_232C84C3C();
            }

            v24 = v17 - v20;
            if (v24 >> 1 > v23)
            {
              v23 = v24 >> 1;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v25 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              sub_232C86538(a5, v25);
            }

            *(4 * v22) = v16;
            v19 = 4 * v22 + 4;
            memcpy(0, v20, v21);
            v26 = *a5;
            *a5 = 0;
            a5[1] = v19;
            a5[2] = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v18 = v16;
            v19 = (v18 + 4);
          }

          a5[1] = v19;
        }

        v14 += 4;
      }

      while (v14 != v15);
    }

    sub_232CB34D0(a6, a1 + 96);
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }
  }
}

void sub_232C8157C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C815A0(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  (*(*a1 + 16))(&v23);
  v10 = v23;
  sub_232CB32BC(&v23);
  if (v10)
  {
    sub_232CB34D0(a5, a1 + 96);
  }

  else
  {
    sub_232C8185C(a1 + 24, a2, a3, &v23);
    v11 = v23;
    v12 = v24;
    while (v11 != v12)
    {
      v13 = *v11;
      if (((*(*a1 + 144))(a1, v13) & 1) == 0 && ((*(*a1 + 152))(a1, v13) & 1) == 0)
      {
        __p[0] = (*(*a1 + 120))(a1, v13);
        __p[1] = v14;
        v15 = a4[1];
        if (v15 >= a4[2])
        {
          v16 = sub_232C862B4(a4, __p);
        }

        else
        {
          sub_232C861F0(a4, __p);
          v16 = (v15 + 24);
        }

        a4[1] = v16;
      }

      v11 += 4;
    }

    if (a3 && (*(*a1 + 184))(a1))
    {
      if (a3 < 3 || (*a2 == 38626 ? (v17 = a2[2] == 129) : (v17 = 0), !v17))
      {
        v25 = *a2;
        sub_232C83330("<0x%02X>", &v25, __p);
        v18 = a4[1];
        if (v18 >= a4[2])
        {
          v20 = sub_232C86580(a4, __p);
        }

        else
        {
          if (SHIBYTE(v22) < 0)
          {
            sub_232C866C0(a4[1], __p[0], __p[1]);
          }

          else
          {
            v19 = *__p;
            *(v18 + 16) = v22;
            *v18 = v19;
          }

          v20 = v18 + 24;
          a4[1] = v18 + 24;
        }

        a4[1] = v20;
        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    sub_232CB34D0(a5, a1 + 96);
    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }
  }
}

void sub_232C81810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  *(v17 + 8) = v18;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C8185C(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_232C8613C(a4, a3 + 1);
  v8 = *a4;
  v9 = (a4[1] - *a4) >> 4;
  v10 = *(a1 + 16);
  v11 = (*v10 >> 10 << ((*v10 >> 6) & 8));
  if (a3)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = a2[v12];
      v15 = v11 ^ v14;
      v16 = v10[v15];
      if ((v16 & 0x800000FF) != v14)
      {
        break;
      }

      v11 = v15 ^ (v16 >> 10 << ((v16 >> 6) & 8));
      if ((v16 & 0x100) != 0)
      {
        if (v13 < v9)
        {
          v17 = v8 + 16 * v13;
          *v17 = v10[v11] & 0x7FFFFFFF;
          *(v17 + 8) = v12 + 1;
        }

        ++v13;
      }

      ++v12;
    }

    while (a3 != v12);
  }

  else
  {
    v18 = *a2;
    if (*a2)
    {
      v13 = 0;
      v19 = 1;
      do
      {
        v20 = v11 ^ v18;
        v21 = v10[v20];
        if ((v21 & 0x800000FF) != v18)
        {
          break;
        }

        v11 = v20 ^ (v21 >> 10 << ((v21 >> 6) & 8));
        if ((v21 & 0x100) != 0)
        {
          if (v13 < v9)
          {
            v22 = v8 + 16 * v13;
            *v22 = v10[v11] & 0x7FFFFFFF;
            *(v22 + 8) = v19;
          }

          ++v13;
        }

        v18 = a2[v19++];
      }

      while (v18);
    }

    else
    {
      v13 = 0;
    }
  }

  sub_232C842D4(a4, v13);
}

void sub_232C819AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C819F8(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, const void **a4@<X3>, uint64_t a5@<X8>)
{
  (*(*a1 + 16))(&v41);
  v10 = v41;
  sub_232CB32BC(&v41);
  if (v10)
  {
    sub_232CB34D0(a5, a1 + 96);
  }

  else
  {
    sub_232C8185C(a1 + 24, a2, a3, &v41);
    v11 = v41;
    v12 = v42;
    while (v11 != v12)
    {
      v13 = *v11;
      if (((*(*a1 + 144))(a1, v13) & 1) == 0 && ((*(*a1 + 152))(a1, v13) & 1) == 0)
      {
        v15 = a4[1];
        v14 = a4[2];
        if (v15 >= v14)
        {
          v17 = *a4;
          v18 = v15 - *a4;
          v19 = v18 >> 2;
          v20 = (v18 >> 2) + 1;
          if (v20 >> 62)
          {
            sub_232C84C3C();
          }

          v21 = v14 - v17;
          if (v21 >> 1 > v20)
          {
            v20 = v21 >> 1;
          }

          v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
          v23 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v23 = v20;
          }

          if (v23)
          {
            sub_232C86538(a4, v23);
          }

          *(4 * v19) = v13;
          v16 = 4 * v19 + 4;
          memcpy(0, v17, v18);
          v24 = *a4;
          *a4 = 0;
          a4[1] = v16;
          a4[2] = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v15 = v13;
          v16 = (v15 + 4);
        }

        a4[1] = v16;
      }

      v11 += 4;
    }

    if (a3 && (*(*a1 + 184))(a1))
    {
      if (a3 < 3 || (*a2 == 38626 ? (v25 = a2[2] == 129) : (v25 = 0), !v25))
      {
        v43 = *a2;
        sub_232C83330("<0x%02X>", &v43, __p);
        if ((v40 & 0x80u) == 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = __p[0];
        }

        if ((v40 & 0x80u) == 0)
        {
          v27 = v40;
        }

        else
        {
          v27 = __p[1];
        }

        v28 = (*(*a1 + 112))(a1, v26, v27);
        v30 = a4[1];
        v29 = a4[2];
        if (v30 >= v29)
        {
          v32 = *a4;
          v33 = v30 - *a4;
          v34 = v33 >> 2;
          v35 = (v33 >> 2) + 1;
          if (v35 >> 62)
          {
            sub_232C84C3C();
          }

          v36 = v29 - v32;
          if (v36 >> 1 > v35)
          {
            v35 = v36 >> 1;
          }

          v22 = v36 >= 0x7FFFFFFFFFFFFFFCLL;
          v37 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v37 = v35;
          }

          if (v37)
          {
            sub_232C86538(a4, v37);
          }

          *(4 * v34) = v28;
          v31 = 4 * v34 + 4;
          memcpy(0, v32, v33);
          v38 = *a4;
          *a4 = 0;
          a4[1] = v31;
          a4[2] = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v30 = v28;
          v31 = (v30 + 4);
        }

        a4[1] = v31;
        if (v40 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    sub_232CB34D0(a5, a1 + 96);
    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }
  }
}

void sub_232C81D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C81DB0(uint64_t a1)
{
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = &v52;
  v48 = &v49;
  v49 = 0;
  *(a1 + 88) = -1;
  v47[0] = 0;
  v47[1] = 0;
  v46 = v47;
  LOBYTE(v54) = 0;
  sub_232C867B8(&__p, 256);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2 - 16;
  }

  else
  {
    v3 = 0;
  }

  if (*(v3 + 64) < 1)
  {
LABEL_35:
    if (*(a1 + 88) == -1)
    {
      sub_232CB3420(&v54, 13, "unk is not defined.", 19);
      sub_232CB34D4((a1 + 96), &v54);
    }

    else
    {
      v24 = *(v3 + 80);
      if (!v24)
      {
        v24 = &unk_27DDD5398;
      }

      if (v24[248] != 1 || (*&v54 = __p, DWORD2(v54) = 0, sub_232C86F14(&v54, v45, &v42), v42.__r_.__value_.__l.__data_ == __p + 8 * (v45 >> 6)) && LODWORD(v42.__r_.__value_.__r.__words[1]) == (v45 & 0x3F))
      {
        if (!v53 || (sub_232C82660(a1 + 24, &v51, &v54), sub_232CB34D4((a1 + 96), &v54), sub_232CB32BC(&v54), (*(*a1 + 16))(&v54, a1), v25 = v54, sub_232CB32BC(&v54), !v25))
        {
          if (!v50 || (sub_232C82660(a1 + 56, &v48, &v54), sub_232CB34D4((a1 + 96), &v54), sub_232CB32BC(&v54), (*(*a1 + 16))(&v54, a1), v26 = v54, sub_232CB32BC(&v54), !v26))
          {
            sub_232C82B28();
          }
        }

        goto LABEL_69;
      }

      sub_232CB34D4((a1 + 96), &v54);
    }

LABEL_68:
    sub_232CB32BC(&v54);
    goto LABEL_69;
  }

  v4 = 0;
  while (1)
  {
    v5 = sub_232C84D2C(v3 + 56, v4);
    v6 = v5;
    v7 = *(v5 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    if (v8 < 0)
    {
      if (!*(v7 + 8))
      {
LABEL_47:
        sub_232CB3420(&v54, 13, "piece must not be empty.", 24);
        sub_232CB34D4((a1 + 96), &v54);
        goto LABEL_68;
      }
    }

    else if (!*(v7 + 23))
    {
      goto LABEL_47;
    }

    v9 = *(v5 + 60);
    v10 = v9 > 5;
    v11 = (1 << v9) & 0x32;
    if (v10 || v11 == 0)
    {
      v13 = &v48;
    }

    else
    {
      v13 = &v51;
    }

    if ((v8 & 0x80000000) != 0)
    {
      v14 = v7;
      v7 = *v7;
      v8 = *(v14 + 8);
    }

    *&v54 = v7;
    *(&v54 + 1) = v8;
    LODWORD(v55) = v4;
    sub_232C86A7C(v13, &v54);
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = *(v6 + 60);
    if (v16 == 4)
    {
      v17 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v17 + 23);
      if (v18 < 0)
      {
        v17 = *v17;
        v18 = *((*(v6 + 48) & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      *&v54 = v17;
      *(&v54 + 1) = v18;
      sub_232C86E80(&v46, &v54);
      v16 = *(v6 + 60);
    }

    if (v16 == 6)
    {
      v19 = *(v3 + 80);
      if (!v19)
      {
        v19 = &unk_27DDD5398;
      }

      if ((v19[248] & 1) == 0)
      {
        v34 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
        std::operator+<char>();
        v36 = *&v35->__r_.__value_.__l.__data_;
        v55 = v35->__r_.__value_.__r.__words[2];
        v54 = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        if (v55 >= 0)
        {
          v37 = &v54;
        }

        else
        {
          v37 = v54;
        }

LABEL_75:
        v41 = strlen(v37);
        sub_232CB3420(&v43, 13, v37, v41);
        sub_232CB34D4((a1 + 96), &v43);
        sub_232CB32BC(&v43);
        if (SHIBYTE(v55) < 0)
        {
          operator delete(v54);
        }

        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          v33 = v42.__r_.__value_.__r.__words[0];
          goto LABEL_79;
        }

        goto LABEL_69;
      }

      v20 = *(v6 + 48);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFELL);
      v22 = *((v20 & 0xFFFFFFFFFFFFFFFELL) + 23);
      if ((v22 & 0x8000000000000000) != 0)
      {
        v21 = *v21;
        v22 = *((v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      v23 = sub_232C8250C(v21, v22);
      if ((v23 & 0x80000000) != 0)
      {
        v38 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
        std::operator+<char>();
        v39 = std::string::append(&v42, " is invalid.");
        v40 = *&v39->__r_.__value_.__l.__data_;
        v55 = v39->__r_.__value_.__r.__words[2];
        v54 = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        if (v55 >= 0)
        {
          v37 = &v54;
        }

        else
        {
          v37 = v54;
        }

        goto LABEL_75;
      }

      *(__p + ((v23 >> 3) & 0x1FFFFFF8)) |= 1 << v23;
    }

    else if (v16 == 2)
    {
      if ((*(a1 + 88) & 0x80000000) == 0)
      {
        sub_232CB3420(&v54, 13, "unk is already defined.", 23);
        sub_232CB34D4((a1 + 96), &v54);
        goto LABEL_68;
      }

      *(a1 + 88) = v4;
    }

    if (++v4 >= *(v3 + 64))
    {
      goto LABEL_35;
    }
  }

  v27 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v27 + 23) >= 0)
  {
    v28 = *(v27 + 23);
  }

  else
  {
    v28 = *(v27 + 8);
  }

  v29 = &v54;
  sub_232C86DF4(&v54, v28 + 20);
  if (v55 < 0)
  {
    v29 = v54;
  }

  if (v28)
  {
    if (*(v27 + 23) >= 0)
    {
      v30 = v27;
    }

    else
    {
      v30 = *v27;
    }

    memmove(v29, v30, v28);
  }

  strcpy(v29 + v28, " is already defined.");
  if (v55 >= 0)
  {
    v31 = &v54;
  }

  else
  {
    v31 = v54;
  }

  v32 = strlen(v31);
  sub_232CB3420(&v42, 13, v31, v32);
  sub_232CB34D4((a1 + 96), &v42);
  sub_232CB32BC(&v42);
  if (SHIBYTE(v55) < 0)
  {
    v33 = v54;
LABEL_79:
    operator delete(v33);
  }

LABEL_69:
  if (__p)
  {
    operator delete(__p);
  }

  sub_232C86764(&v46, v47[0]);
  sub_232C86764(&v48, v49);
  sub_232C86764(&v51, v52);
}

void sub_232C823F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *a23, uint64_t a24, char a25, void *a26)
{
  sub_232CB32BC(&a15);
  if (*(v26 - 89) < 0)
  {
    operator delete(*(v26 - 112));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  sub_232C86764(&a19, a20);
  sub_232C86764(&a22, a23);
  sub_232C86764(&a25, a26);
  _Unwind_Resume(a1);
}

uint64_t sub_232C8250C(void *__src, size_t __len)
{
  if ((atomic_load_explicit(&qword_27DDD4D58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DDD4D58))
  {
    sub_232C833E0();
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_232C85C94();
  }

  v4 = qword_27DDD4D50;
  if (__len >= 0x17)
  {
    operator new();
  }

  v9 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  v5 = sub_232C8703C(v4, &__dst);
  v6 = v5;
  if (v9 < 0)
  {
    operator delete(__dst);
    if (v6)
    {
      return *(v6 + 40);
    }
  }

  else if (v5)
  {
    return *(v6 + 40);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_232C82660@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[2])
  {
    __p = 0;
    v32 = 0;
    v33 = 0;
    __src = 0;
    v29 = 0;
    v30 = 0;
    v4 = a2 + 1;
    v3 = *a2;
    while (1)
    {
      v5 = v3[4];
      v6 = v32;
      if (v32 >= v33)
      {
        v8 = (v32 - __p) >> 3;
        if ((v8 + 1) >> 61)
        {
          sub_232C84C3C();
        }

        v9 = (v33 - __p) >> 2;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (v33 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          sub_232C87138(&__p, v10);
        }

        v11 = (8 * v8);
        *v11 = v5;
        v7 = 8 * v8 + 8;
        v12 = v11 - (v32 - __p);
        memcpy(v12, __p, v32 - __p);
        v13 = __p;
        __p = v12;
        v32 = v7;
        v33 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v32 = v5;
        v7 = (v6 + 8);
      }

      v32 = v7;
      v14 = v29;
      if (v29 >= v30)
      {
        v16 = __src;
        v17 = v29 - __src;
        v18 = (v29 - __src) >> 2;
        v19 = v18 + 1;
        if ((v18 + 1) >> 62)
        {
          sub_232C84C3C();
        }

        v20 = v30 - __src;
        if ((v30 - __src) >> 1 > v19)
        {
          v19 = v20 >> 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v21 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          sub_232C86538(&__src, v21);
        }

        *(4 * v18) = *(v3 + 12);
        v15 = 4 * v18 + 4;
        memcpy(0, v16, v17);
        v22 = __src;
        __src = 0;
        v29 = v15;
        v30 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v29 = *(v3 + 12);
        v15 = (v14 + 4);
      }

      v29 = v15;
      v23 = v3[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v3[2];
          v25 = *v24 == v3;
          v3 = v24;
        }

        while (!v25);
      }

      v3 = v24;
      if (v24 == v4)
      {
        sub_232C834C8(a1, (v32 - __p) >> 3, __p, 0, __src, 0);
      }
    }
  }

  return sub_232CB3420(a3, 13, "no pieces are loaded.", 21);
}

void sub_232C82AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C82B98(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  memset(&v32, 0, sizeof(v32));
  std::string::resize(&v32, 4uLL, 0);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v32;
  }

  else
  {
    v4 = v32.__r_.__value_.__r.__words[0];
  }

  LODWORD(v4->__r_.__value_.__l.__data_) = *(a1 + 88);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v32;
  }

  else
  {
    v5 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v5, size);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  memset(&v32, 0, sizeof(v32));
  std::string::resize(&v32, 4uLL, 0);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v32;
  }

  else
  {
    v7 = v32.__r_.__value_.__r.__words[0];
  }

  LODWORD(v7->__r_.__value_.__l.__data_) = *(a1 + 92);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v32;
  }

  else
  {
    v8 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v8, v9);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  sub_232C8B7AC(*(a1 + 16), &v32);
  v10 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  v11 = v32.__r_.__value_.__r.__words[1];
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  if ((v10 & 0x80u) == 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(p_p->__r_.__value_.__l.__data_) = v12;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v32;
  }

  else
  {
    v16 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v16, v17);
  sub_232CB16E0(a2);
  v19 = *(a1 + 32);
  v18 = *(a1 + 40);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  v20 = 4 * v19;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v21->__r_.__value_.__l.__data_) = v20;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &__p;
  }

  else
  {
    v22 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v22, v23);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, v18, v20);
  sub_232CB16E0(a2);
  v26 = a1 + 64;
  v24 = *(a1 + 64);
  v25 = *(v26 + 8);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  v27 = 4 * v24;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &__p;
  }

  else
  {
    v28 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v28->__r_.__value_.__l.__data_) = v27;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v29, v30);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, v25, v27);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_232C82E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C82ED8(unsigned __int8 *__s1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, const void **a5@<X8>)
{
  v8 = &__s1[a2];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if ((a3 & 1) == 0)
  {
    if (a2 < 1)
    {
      return;
    }

    v9 = 0;
    v10 = 0;
    v11 = __s1;
    while (1)
    {
      v12 = asc_232D0C525[*v11 >> 4];
      if (v8 - v11 < v12)
      {
        v12 = v8 - v11;
      }

      v13 = v12;
      if (v12 == 3)
      {
        v14 = memcmp(v11, "▁", 3uLL);
        v15 = v14 == 0;
        if (v11 == __s1)
        {
          goto LABEL_16;
        }

        if ((v10 & a4 & 1) == 0 && !v14)
        {
          v15 = 1;
LABEL_16:
          v16 = a5[2];
          if (v9 >= v16)
          {
            v17 = *a5;
            v18 = v9 - *a5;
            v19 = v18 >> 4;
            v20 = (v18 >> 4) + 1;
            if (v20 >> 60)
            {
              sub_232C84C3C();
            }

            v21 = v16 - v17;
            if (v21 >> 3 > v20)
            {
              v20 = v21 >> 3;
            }

            v22 = v21 >= 0x7FFFFFFFFFFFFFF0;
            v23 = 0xFFFFFFFFFFFFFFFLL;
            if (!v22)
            {
              v23 = v20;
            }

            if (v23)
            {
              sub_232C86FF4(a5, v23);
            }

            v24 = (16 * v19);
            *v24 = v11;
            v24[1] = 0;
            v9 = (16 * v19 + 16);
            memcpy(0, v17, v18);
            v25 = *a5;
            *a5 = 0;
            a5[1] = v9;
            a5[2] = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v9 = v11;
            *(v9 + 1) = 0;
            v9 += 16;
          }

          a5[1] = v9;
          goto LABEL_30;
        }

        if (v10)
        {
          v15 = v10 & (v14 == 0);
          goto LABEL_30;
        }
      }

      else if (v11 == __s1)
      {
        v15 = 0;
        goto LABEL_16;
      }

      v15 = 0;
LABEL_30:
      *(v9 - 1) += v13;
      v11 += v13;
      v10 = v15;
      if (v11 >= v8)
      {
        return;
      }
    }
  }

  if (a2 >= 1)
  {
    sub_232C86FF4(a5, 1uLL);
  }
}

void sub_232C832FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_232C83330@<X0>(char *__format@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = snprintf(0, 0, __format, *a2);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  std::string::resize(a3, v6, 0);
  v7 = *(a3 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  return snprintf(v8, v7 + 1, __format, *a2);
}

void sub_232C833C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C834AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C834C8(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(unint64_t, uint64_t))
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v6 = a6;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  sub_232C87180(&v6, v12);
}

uint64_t sub_232C83608@<X0>(void *a1@<X8>)
{
  result = sub_232CB1330();
  if (result <= 2)
  {
    v10 = 0;
    v3 = sub_232C85DAC(MEMORY[0x277D82670], "model_interface.h", 17);
    v4 = sub_232C85DAC(v3, "(", 1);
    v5 = MEMORY[0x238392A80](v4, 96);
    v6 = sub_232C85DAC(v5, ") ", 2);
    v7 = sub_232C85DAC(v6, "LOG(", 4);
    v8 = sub_232C85DAC(v7, "ERROR", 5);
    v9 = sub_232C85DAC(v8, ") ", 2);
    sub_232C85DAC(v9, "Not implemented.", 16);
    result = sub_232C83EEC(&v10);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_232C836E4@<X0>(void *a1@<X8>)
{
  result = sub_232CB1330();
  if (result <= 2)
  {
    v10 = 0;
    v3 = sub_232C85DAC(MEMORY[0x277D82670], "model_interface.h", 17);
    v4 = sub_232C85DAC(v3, "(", 1);
    v5 = MEMORY[0x238392A80](v4, 102);
    v6 = sub_232C85DAC(v5, ") ", 2);
    v7 = sub_232C85DAC(v6, "LOG(", 4);
    v8 = sub_232C85DAC(v7, "ERROR", 5);
    v9 = sub_232C85DAC(v8, ") ", 2);
    sub_232C85DAC(v9, "Not implemented.", 16);
    result = sub_232C83EEC(&v10);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void sub_232C837C0(void *a1@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  if (sub_232CB1330() <= 2)
  {
    LOBYTE(__p) = 0;
    v2 = sub_232C85DAC(MEMORY[0x277D82670], "model_interface.h", 17);
    v3 = sub_232C85DAC(v2, "(", 1);
    v4 = MEMORY[0x238392A80](v3, 117);
    v5 = sub_232C85DAC(v4, ") ", 2);
    v6 = sub_232C85DAC(v5, "LOG(", 4);
    v7 = sub_232C85DAC(v6, "ERROR", 5);
    v8 = sub_232C85DAC(v7, ") ", 2);
    sub_232C85DAC(v8, "Not implemented.", 16);
    sub_232C83EEC(&__p);
  }

  __p = 0;
  v11 = 0;
  v13 = 0;
  v12 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  sub_232C85868(a1, &__p, &v14, 1uLL);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_232C838E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_232C83914()
{
  if (sub_232CB1330() <= 2)
  {
    v8 = 0;
    v0 = sub_232C85DAC(MEMORY[0x277D82670], "model_interface.h", 17);
    v1 = sub_232C85DAC(v0, "(", 1);
    v2 = MEMORY[0x238392A80](v1, 125);
    v3 = sub_232C85DAC(v2, ") ", 2);
    v4 = sub_232C85DAC(v3, "LOG(", 4);
    v5 = sub_232C85DAC(v4, "ERROR", 5);
    v6 = sub_232C85DAC(v5, ") ", 2);
    sub_232C85DAC(v6, "Not implemented.", 16);
    sub_232C83EEC(&v8);
  }

  return 0.0;
}

uint64_t sub_232C83A30(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t sub_232C83B50(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t *sub_232C83BBC(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_232C83D28((a1 + 1), 16);
  return a1;
}

void sub_232C83D00(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x238392BA0](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_232C83D28(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x238392B50](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_232C83DE4(a1);
  return a1;
}

void sub_232C83DBC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_232C83DE4(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

_BYTE *sub_232C83EEC(_BYTE *a1)
{
  std::ios_base::getloc((MEMORY[0x277D82670] + *(*MEMORY[0x277D82670] - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  if (*a1 == 1)
  {
    sub_232CB3168();
  }

  return a1;
}

unint64_t sub_232C83FCC(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v9 = *(a1 + 16);
  v10 = *v9;
  if (a5)
  {
    v11 = *a2;
    v12 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v11;
    v10 = v9[v12];
    if ((v10 & 0x800000FF) == v11)
    {
      v13 = a5 - 1;
      v14 = a2 + 1;
      while (1)
      {
        v15 = v12;
        if (!v13)
        {
          goto LABEL_16;
        }

        v16 = *v14++;
        v12 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v12 ^ v16;
        v10 = v9[v12];
        --v13;
        if ((v10 & 0x800000FF) != v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    v17 = *a2;
    if (!*a2)
    {
      v15 = 0;
      LODWORD(v12) = 0;
LABEL_16:
      if ((v10 & 0x100) != 0)
      {
        v22 = v9[(v10 >> 10 << ((v10 >> 6) & 8)) ^ v12] & 0x7FFFFFFF;
      }

      else
      {
        v22 = -1;
      }

      goto LABEL_19;
    }

    v18 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v17;
    v10 = v9[v18];
    if ((v10 & 0x800000FF) == v17)
    {
      v19 = a2 + 1;
      LODWORD(v12) = v18;
      while (1)
      {
        v15 = v18;
        v21 = *v19++;
        v20 = v21;
        if (!v21)
        {
          goto LABEL_16;
        }

        v18 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v12 ^ v20;
        v10 = v9[v18];
        LODWORD(v12) = v18;
        if ((v10 & 0x800000FF) != v20)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v15 = 0;
LABEL_14:
  v22 = -2;
LABEL_19:
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v41.n128_u32[0] = 0;
  v41.n128_u64[1] = v15;
  v42 = v22;
  sub_232C84304(v43, &v41);
  v23 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v24 = 0;
    do
    {
      v25 = (*(*(&v43[0] + 1) + 8 * (v44 / 0xAA)) + 24 * (v44 % 0xAA));
      v26 = *v25;
      v27 = v25[2];
      v28 = v25[4];
      *&v44 = v44 + 1;
      *(&v44 + 1) = v23 - 1;
      if (v44 >= 0x154)
      {
        operator delete(**(&v43[0] + 1));
        *(&v43[0] + 1) += 8;
        *&v44 = v44 - 170;
      }

      if ((v28 & 0x80000000) == 0)
      {
        v29 = a3 + 16 * v24;
        *v29 = v28;
        *(v29 + 8) = a5;
        ++v24;
      }

      v31 = a6 >= 0 && v26 > a6;
      if (v24 >= a4 || v31)
      {
        break;
      }

      if (v28 != -2)
      {
        v32 = v26 + 1;
        for (i = 1; i != 256; ++i)
        {
          v34 = *(a1 + 16);
          v35 = (*(v34 + 4 * v27) >> 10 << ((*(v34 + 4 * v27) >> 6) & 8)) ^ v27 ^ i;
          v36 = *(v34 + 4 * v35);
          if (i == (v36 & 0x800000FF))
          {
            if ((v36 & 0x100) != 0)
            {
              v37 = *(v34 + 4 * ((v36 >> 10 << ((v36 >> 6) & 8)) ^ v35)) & 0x7FFFFFFF;
            }

            else
            {
              v37 = -1;
            }

            v41.n128_u32[0] = v32;
            v41.n128_u64[1] = v35;
            v42 = v37;
            sub_232C84304(v43, &v41);
          }
        }
      }

      v23 = *(&v44 + 1);
    }

    while (*(&v44 + 1));
  }

  else
  {
    v24 = 0;
  }

  sub_232C84A2C(v43);
  return v24;
}

void sub_232C842BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_232C84A2C(va);
  _Unwind_Resume(a1);
}

void sub_232C842D4(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_232C84B28(a1, a2 - v2);
  }
}

__n128 sub_232C84304(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 170 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_232C843B4(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = (*(v6 + 8 * (v8 / 0xAA)) + 24 * (v8 % 0xAA));
  result = *a2;
  v9[1].n128_u64[0] = a2[1].n128_u64[0];
  *v9 = result;
  ++*(a1 + 40);
  return result;
}

void *sub_232C843B4(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_232C849E4(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_232C84588(a1, &v10);
}

void sub_232C8453C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_232C84588(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_232C849E4(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_232C84690(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_232C849E4(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_232C8479C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_232C849E4(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_232C848A4(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_232C849E4(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_232C849B0()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_232C849E4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_232C849B0();
}

uint64_t sub_232C84A2C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 170;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_232C84AD8(a1);
}

uint64_t sub_232C84AD8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_232C84B28(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_232C84C3C();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_232C84CE4(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_232C84C54(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_232C84CB0(exception, a1);
  __cxa_throw(exception, off_2789A6DF8, MEMORY[0x277D825F0]);
}

std::logic_error *sub_232C84CB0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_232C84CE4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_232C849B0();
}

uint64_t sub_232C84D2C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_232C84DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

const void **sub_232C84E0C(void *a1, const void **a2)
{
  v4 = sub_232C8508C(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_232C85538(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

unint64_t sub_232C8508C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_232C850CC(&v5, a2, v3);
}

unint64_t sub_232C850CC(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_232C85478(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_232C853CC(a2, a3);
  }

  else
  {
    return sub_232C852D4(a2, a3);
  }
}

unint64_t sub_232C852D4(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_232C853CC(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_232C85478(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL sub_232C85538(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void sub_232C855B0(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_232C856A0(a1, prime);
    }
  }
}

void sub_232C856A0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_232C849B0();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_232C85804(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_232C85868(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_232C858F0(result, a4);
  }

  return result;
}

void sub_232C858D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_232C85BE8(&a9);
  _Unwind_Resume(a1);
}

void sub_232C858F0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_232C8592C(a1, a2);
  }

  sub_232C84C3C();
}

void sub_232C8592C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_232C849B0();
}

uint64_t sub_232C85974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      sub_232C85A3C(v4, *v6, *(v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - *v6) >> 3));
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_232C85B60(v8);
  return v4;
}

uint64_t sub_232C85A3C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_232C85ABC(result, a4);
  }

  return result;
}

void sub_232C85AA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C85ABC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_232C85B08(a1, a2);
  }

  sub_232C84C3C();
}

void sub_232C85B08(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_232C849B0();
}

uint64_t sub_232C85B60(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_232C85B98(a1);
  }

  return a1;
}

void sub_232C85B98(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 32);
      v3 -= 32;
      v4 = v5;
      if (v5)
      {
        *(v1 - 24) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void sub_232C85BE8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_232C85C3C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_232C85C3C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 32);
      v4 -= 32;
      v5 = v6;
      if (v6)
      {
        *(v2 - 24) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_232C85CAC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2848148B0;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x238392BE0](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  JUMPOUT(0x238392C10);
}

void sub_232C85D30(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    JUMPOUT(0x238392C10);
  }
}

void *sub_232C85DAC(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x238392A20](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_232C85F54(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x238392A30](v13);
  return a1;
}

void sub_232C85EEC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x238392A30](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x232C85ECCLL);
}

uint64_t sub_232C85F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_232C85C94();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_232C86120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_232C8613C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_232C861B4(result, a2);
  }

  return result;
}

void sub_232C86198(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C861B4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_232C84CE4(a1, a2);
  }

  sub_232C84C3C();
}

void *sub_232C861F0(void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = *(a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_232C85C94();
  }

  v5 = *a2;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v3[23] = v4;
  if (v4)
  {
    result = memmove(v3, v5, v4);
  }

  v3[v4] = 0;
  v2[1] = v3 + 24;
  return result;
}

char *sub_232C862B4(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_232C84C3C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_232C8644C(a1, v6);
  }

  v7 = 24 * v2;
  v16 = 0;
  v17 = v7;
  v18 = v7;
  v19 = 0;
  v8 = *(a2 + 8);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_232C85C94();
  }

  v9 = *a2;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(v7 + 23) = v8;
  if (v8)
  {
    memmove(v7, v9, v8);
  }

  *(v7 + v8) = 0;
  v10 = v18 + 24;
  v11 = *(a1 + 8) - *a1;
  v12 = &v17[-v11];
  memcpy(&v17[-v11], *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = v19;
  v18 = v13;
  v19 = v14;
  v16 = v13;
  v17 = v13;
  sub_232C864A4(&v16);
  return v10;
}

void sub_232C86438(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_232C864A4(va);
  _Unwind_Resume(a1);
}

void sub_232C8644C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_232C849B0();
}

uint64_t sub_232C864A4(uint64_t a1)
{
  sub_232C864DC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_232C864DC(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_232C86538(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_232C849B0();
}

uint64_t sub_232C86580(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_232C84C3C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_232C8644C(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_232C866C0(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_232C864A4(&v17);
  return v11;
}

void sub_232C866AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_232C864A4(va);
  _Unwind_Resume(a1);
}

void *sub_232C866C0(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_232C85C94();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_232C86764(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_232C86764(a1, *a2);
    sub_232C86764(a1, a2[1]);

    operator delete(a2);
  }
}

void *sub_232C867B8(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_232C8688C(result, a2);
  }

  return result;
}

void sub_232C8688C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_232C868D0(a1, v2);
  }

  sub_232C84C3C();
}

void sub_232C868D0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_232C849B0();
}

void *sub_232C86918(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void sub_232C869CC(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t sub_232C86A7C(uint64_t a1, uint64_t a2)
{
  v2 = *sub_232C86B18(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_232C86B18(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_232C86C0C(a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_232C86C0C(a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *sub_232C86BB4(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_232C86C58(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_232C86C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a3 + 8);
  }

  v8 = memcmp(v3, v5, v7);
  if (v4 < v6)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (v4 == v6)
  {
    v9 = 0;
  }

  if (v8)
  {
    v9 = v8;
  }

  return v9 >> 31;
}