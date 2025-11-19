uint64_t sub_1C4BD9040()
{
  sub_1C43FBCD4();
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[13];

  return v2(0);
}

uint64_t sub_1C4BD90A4()
{
  sub_1C43FBCD4();
  v1[32] = v2;
  v1[33] = v0;
  v3 = sub_1C4EF9CD8();
  v1[34] = v3;
  sub_1C43FCF7C(v3);
  v1[35] = v4;
  v6 = *(v5 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v7 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4BD9168()
{
  sub_1C44600A0(*(v0 + 264) + 64, v0 + 184, &qword_1EC0C4828, &qword_1C4F5BE40);
  if (*(v0 + 208))
  {
    v1 = *(v0 + 264);
    sub_1C443FA18((v0 + 184), v0 + 144);
    sub_1C44600A0(v1 + 104, v0 + 80, &qword_1EC0C4820, &qword_1C4F5BE30);
    if (*(v0 + 80))
    {
      v2 = *(v0 + 304);
      v3 = *(v0 + 264);
      v4 = *(v0 + 96);
      *(v0 + 16) = *(v0 + 80);
      *(v0 + 32) = v4;
      v5 = *(v0 + 128);
      *(v0 + 48) = *(v0 + 112);
      *(v0 + 64) = v5;
      sub_1C4EF9CC8();
      v6 = swift_task_alloc();
      *(v0 + 312) = v6;
      *(v6 + 16) = v3;
      *(v6 + 24) = v0 + 144;
      v7 = swift_task_alloc();
      *(v0 + 320) = v7;
      *v7 = v0;
      v7[1] = sub_1C4BD93C0;
      v8 = *(v0 + 304);
      v9 = *(v0 + 256);

      return sub_1C46D8448();
    }

    sub_1C4423A0C(v0 + 80, &qword_1EC0C4820, &qword_1C4F5BE30);
    sub_1C440962C((v0 + 144));
  }

  else
  {
    sub_1C4423A0C(v0 + 184, &qword_1EC0C4828, &qword_1C4F5BE40);
  }

  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728();
  }

  v11 = sub_1C4F00978();
  sub_1C442B738(v11, qword_1EDE2DDE0);
  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CF8();
  if (sub_1C4402B64(v13))
  {
    *swift_slowAlloc() = 0;
    sub_1C43FFFD8(&dword_1C43F8000, v14, v15, "batchedDigester is nil");
    sub_1C43FBE2C();
  }

  v17 = *(v0 + 296);
  v16 = *(v0 + 304);
  v18 = *(v0 + 288);

  sub_1C43FBDA0();

  return v19();
}

uint64_t sub_1C4BD93C0()
{
  v2 = *v1;
  v3 = *v1;
  sub_1C43FBDAC();
  *v4 = v3;
  v5 = v2[40];
  *v4 = *v1;
  v3[41] = v0;

  v6 = v2[39];
  v7 = v2[38];
  v8 = v2[35];
  v9 = v2[34];
  v12 = *(v8 + 8);
  v10 = v8 + 8;
  v11 = v12;
  if (v0)
  {
    v11(v7, v9);

    v13 = sub_1C4BD9808;
  }

  else
  {
    v3[42] = v11;
    v3[43] = v10 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v9);

    v13 = sub_1C4BD9564;
  }

  return MEMORY[0x1EEE6DFA0](v13, 0, 0);
}

uint64_t sub_1C4BD9564()
{
  v35 = v0;
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[34];
  v7 = sub_1C4409678((v0[33] + 24), *(v0[33] + 48));
  sub_1C4EF9C88();
  sub_1C4EF9BE8();
  v2(v5, v6);
  v8 = *v7;
  sub_1C45E025C();
  v9 = v0[43];
  (v0[42])(v0[37], v0[34]);
  if (v3)
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDE2DDE0);
    v11 = v3;
    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CE8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v34 = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v17 = v0[28];
      v16 = v0[29];
      v18 = v0[30];
      v19 = sub_1C4F02A38();
      v21 = sub_1C441D828(v19, v20, &v34);

      *(v14 + 4) = v21;
      sub_1C43FD580(&dword_1C43F8000, v22, v23, "ContextualEventsViewGenerator: Error pruning eventTracker - %s");
      sub_1C440962C(v15);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }
  }

  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728();
  }

  v24 = sub_1C4F00978();
  sub_1C442B738(v24, qword_1EDE2DDE0);
  v25 = sub_1C4F00968();
  v26 = sub_1C4F01CF8();
  if (sub_1C4402B64(v26))
  {
    *swift_slowAlloc() = 0;
    sub_1C43FFFD8(&dword_1C43F8000, v27, v28, "ContextualEventsViewGenerator: Completed pruning");
    sub_1C43FBE2C();
  }

  sub_1C46E07D0((v0 + 2));
  sub_1C440962C(v0 + 18);
  v30 = v0[37];
  v29 = v0[38];
  v31 = v0[36];

  sub_1C43FBDA0();

  return v32();
}

uint64_t sub_1C4BD9808()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  sub_1C46E07D0((v0 + 2));
  sub_1C440962C(v0 + 18);

  sub_1C43FBDA0();
  v5 = v0[41];

  return v4();
}

uint64_t sub_1C4BD9898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_1C4EFDAB8();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = sub_1C4EF9CD8();
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4BD99C8, 0, 0);
}

uint64_t sub_1C4BD99C8()
{
  v42 = v0;
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728();
  }

  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[6];
  v5 = v0[7];
  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DDE0);
  v8 = *(v3 + 16);
  v8(v1, v6, v4);
  v8(v2, v5, v4);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CC8();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[16];
  v12 = v0[17];
  v15 = v0[14];
  v14 = v0[15];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v41[0] = swift_slowAlloc();
    *v16 = 136315394;
    sub_1C4403DDC(&qword_1EDDFCD50, MEMORY[0x1E6969530]);
    log = v9;
    v17 = sub_1C4F02858();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_1C441D828(v17, v19, v41);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = sub_1C4F02858();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_1C441D828(v22, v24, v41);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_1C43F8000, log, v10, "ContextualEventsViewGenerator: Starting events table batched digest from %s to %s", v16, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v27 = v0[13];
  v29 = v0[9];
  v28 = v0[10];
  v31 = v0[7];
  v30 = v0[8];
  v32 = v0[6];
  v33 = sub_1C4409678((v29 + 24), *(v29 + 48));
  sub_1C469B6F8(*(v29 + 16), v27);
  v34 = *v33;
  sub_1C45DCC18(v32, v31, v28, v30, v27, 0);
  (*(v0[12] + 8))(v0[13], v0[11]);
  v36 = v0[16];
  v35 = v0[17];
  v37 = v0[13];

  sub_1C43FBDA0();

  return v38();
}

uint64_t sub_1C4BD9DF4()
{
  sub_1C440962C((v0 + 24));
  sub_1C4423A0C(v0 + 64, &qword_1EC0C4828, &qword_1C4F5BE40);
  sub_1C4423A0C(v0 + 104, &qword_1EC0C4820, &qword_1C4F5BE30);
  return v0;
}

uint64_t sub_1C4BD9E44()
{
  sub_1C4BD9DF4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BD9E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1C4707B70;

  return sub_1C4BD9898(a1, a2, a3, v9, v8);
}

uint64_t sub_1C4BD9F6C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[3] = type metadata accessor for BehaviorDatabaseEventTracker();
  v16[4] = &off_1F43E2390;
  v16[0] = a2;
  *(a5 + 16) = a1;
  sub_1C442E860(v16, a5 + 24);
  sub_1C44600A0(a3, a5 + 64, &qword_1EC0C4828, &qword_1C4F5BE40);
  sub_1C44600A0(a3, &v13, &qword_1EC0C4828, &qword_1C4F5BE40);
  if (*(&v14[0] + 1))
  {
    sub_1C443FA18(&v13, v15);
    sub_1C4423A0C(a3, &qword_1EC0C4828, &qword_1C4F5BE40);
    sub_1C440962C(v16);
    sub_1C443FA18(v15, v14 + 8);
    *&v13 = a4;
    *(&v13 + 1) = 0xD000000000000022;
    *&v14[0] = 0x80000001C4FB8870;
    v10 = v14[2];
    *(a5 + 136) = v14[1];
    *(a5 + 152) = v10;
    v11 = v14[0];
    *(a5 + 104) = v13;
    *(a5 + 120) = v11;
  }

  else
  {
    sub_1C4423A0C(a3, &qword_1EC0C4828, &qword_1C4F5BE40);

    sub_1C440962C(v16);
    sub_1C4423A0C(&v13, &qword_1EC0C4828, &qword_1C4F5BE40);
    *(a5 + 152) = 0u;
    *(a5 + 136) = 0u;
    *(a5 + 120) = 0u;
    *(a5 + 104) = 0u;
  }

  return a5;
}

uint64_t sub_1C4BDA0DC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for BehaviorDatabaseEventTracker();
  v19[3] = v8;
  v19[4] = &off_1F43E2390;
  v19[0] = a2;
  _s29ContextualEventsViewGeneratorCMa();
  v9 = swift_allocObject();
  v10 = sub_1C4418280(v19, v8);
  v11 = *(*(v8 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = sub_1C4BD9F6C(a1, *v14, a3, a4, v9);
  sub_1C440962C(v19);
  return v16;
}

uint64_t sub_1C4BDA21C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &unk_1F43E6C38;
  a1[4] = &off_1F43E6CB0;
  v3 = swift_allocObject();
  *a1 = v3;

  return sub_1C4AF9BE8(v1, v3 + 16);
}

void sub_1C4BDA284(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1C4EFBE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = a3 + *(_s6ConfigVMa() + 68);
  v12 = *(v11 + 8);
  if (v12)
  {
    v35 = *v11;
    v34 = *(v11 + 16);
    sub_1C44E9220();
    if (!v4)
    {
      v33 = v13;
      sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
      v14 = (type metadata accessor for ViewDatabaseArtifact.Property() - 8);
      v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
      v16 = *(*v14 + 72);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C4F0D480;
      v17 = v32 + v15;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFBE08();
      strcpy((v32 + v15), "behaviorType");
      *(v17 + 13) = 0;
      *(v17 + 14) = -5120;
      v18 = v14[7];
      v19 = *(v9 + 32);
      sub_1C4407E3C();
      v19();
      v20 = v16;
      v21 = (v17 + v16);
      v31 = v19;
      sub_1C4EFBDD8();
      *v21 = 0xD000000000000012;
      v21[1] = 0x80000001C4F855A0;
      v22 = v14[7];
      sub_1C4407E3C();
      v19();
      v23 = (v17 + 2 * v20);
      sub_1C4EFBDC8();
      *v23 = 0x6D617473656D6974;
      v23[1] = 0xE900000000000070;
      v24 = v14[7];
      sub_1C4407E3C();
      v31();
      v25 = (v17 + 3 * v20);
      sub_1C4EFBDC8();
      *v25 = 0xD000000000000016;
      v25[1] = 0x80000001C4F855C0;
      v26 = v14[7];
      sub_1C4407E3C();
      v31();
      *(a4 + 24) = v33;
      *(a4 + 32) = v32;
      *a4 = v35;
      *(a4 + 8) = v12;
      *(a4 + 16) = v34;
      v27 = *(*(v33 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
      v28 = type metadata accessor for BehaviorDatabaseEventTracker();
      swift_allocObject();
      v29 = sub_1C45DC594(v35, v12, v27, 0, 0, 0);
      *(a4 + 64) = v28;
      *(a4 + 72) = &off_1F43E2390;
      *(a4 + 40) = v29;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  else
  {
    sub_1C450B034();
    swift_allocError();
    *v30 = a1;
    *(v30 + 8) = a2;
    *(v30 + 16) = 0xD000000000000019;
    *(v30 + 24) = 0x80000001C4FB88A0;
    *(v30 + 32) = 0;
    *(v30 + 40) = 0xE000000000000000;
    *(v30 + 48) = v36;
    *(v30 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4BDA684(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = &unk_1F43E6C38;
  a4[4] = &off_1F43E6CB0;
  v9 = swift_allocObject();
  *a4 = v9;
  sub_1C4BDA284(a1, a2, a3, v9 + 16);
  if (v4)
  {
    sub_1C47C41F8(a4);
  }
}

void sub_1C4BDA73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C4BDA284(a1, a2, a3, v13);
  if (!v8)
  {
    v11 = *(v14 + 16);
    MEMORY[0x1EEE9AC00](v10);
    v12[2] = v13;

    sub_1C446C37C(a8, v12);

    sub_1C4AF9C44(v13);
  }
}

uint64_t sub_1C4BDA89C()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore21CoreMLTransformerView____lazy_storage___featureNames;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CoreMLTransformerView____lazy_storage___featureNames))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CoreMLTransformerView____lazy_storage___featureNames);
  }

  else
  {
    v3 = [*(v0 + 56) modelDescription];
    v4 = [v3 outputDescriptionsByName];

    sub_1C4461BB8(0, &qword_1EDDDB8D8, 0x1E695FE50);
    v5 = sub_1C4F00ED8();

    v2 = sub_1C45A322C(v5);
    v6 = *(v0 + v1);
    *(v0 + v1) = v2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

void sub_1C4BDA978()
{
  v221 = *MEMORY[0x1E69E9840];
  v2 = sub_1C456902C(&qword_1EC0C4848, &qword_1C4F5C068);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  *&v206 = &v199 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v199 - v6);
  MEMORY[0x1EEE9AC00](v8);
  *&v210 = &v199 - v9;
  *&v207 = v0;
  v10 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CoreMLTransformerView_dependencyViewConfigs);
  v11 = sub_1C4F00F28();
  v13 = v10 + 64;
  v12 = *(v10 + 64);
  v14 = *(v10 + 32);
  sub_1C43FD030();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  *(&v206 + 1) = v10;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v20 = 0;
  *(&v203 + 1) = v10 + 64;
  *&v203 = v19;
  v204 = v7;
  v205 = v2;
  while (1)
  {
    *(&v210 + 1) = v11;
    if (v17)
    {
      goto LABEL_7;
    }

    do
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      if (v21 >= v19)
      {

        v51 = v207;
        v200 = *(v207 + 56);
        v52 = [v200 modelDescription];
        v53 = [v52 inputDescriptionsByName];

        v199 = sub_1C4461BB8(0, &qword_1EDDDB8D8, 0x1E695FE50);
        v54 = sub_1C4F00ED8();

        v215 = MEMORY[0x1E69E7CC8];
        v55 = *(v54 + 64);
        v56 = *(v54 + 32);
        sub_1C43FD030();
        v59 = v58 & v57;
        v61 = (v60 + 63) >> 6;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v62 = 0;
        v20 = v202;
        if (!v59)
        {
          goto LABEL_18;
        }

        do
        {
          v1 = v62;
LABEL_21:
          v63 = *(v54 + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v59))));
          v64 = *(v63 + 8);
          v216 = *v63;
          v217 = v64;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4BDBA48(&v215, &v216, v51);
          if (v20)
          {
            goto LABEL_89;
          }

          v59 &= v59 - 1;

          v62 = v1;
        }

        while (v59);
        while (1)
        {
LABEL_18:
          v1 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_80;
          }

          if (v1 >= v61)
          {
            break;
          }

          v59 = *(v54 + 64 + 8 * v1);
          ++v62;
          if (v59)
          {
            goto LABEL_21;
          }
        }

        v202 = v20;

        v65 = 0;
        v67 = v215 + 64;
        v66 = *(v215 + 64);
        v209 = v215;
        v68 = 1 << *(v215 + 32);
        v69 = -1;
        if (v68 < 64)
        {
          v69 = ~(-1 << v68);
        }

        v70 = v69 & v66;
        v71 = (v68 + 63) >> 6;
        v1 = MEMORY[0x1E69E7CC8];
        *(&v207 + 1) = v215 + 64;
        v208 = v71;
        while (1)
        {
          while (1)
          {
            if (v70)
            {
              *&v210 = v1;
              v72 = v65;
            }

            else
            {
              do
              {
                v72 = v65 + 1;
                if (__OFADD__(v65, 1))
                {
                  goto LABEL_81;
                }

                if (v72 >= v71)
                {

                  if (qword_1EDDFECD0 == -1)
                  {
                    goto LABEL_51;
                  }

                  goto LABEL_85;
                }

                v70 = *(v67 + 8 * v72);
                ++v65;
              }

              while (!v70);
              *&v210 = v1;
            }

            v73 = __clz(__rbit64(v70));
            v70 &= v70 - 1;
            v74 = v73 | (v72 << 6);
            v75 = (*(v209 + 48) + 16 * v74);
            v76 = *v75;
            v77 = *(*(v209 + 56) + 8 * v74);
            v78 = v75[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v79 = v77;
            v80 = [v79 viewName];
            v81 = sub_1C4F01138();
            v83 = v82;

            if (*(*(&v210 + 1) + 16))
            {
              break;
            }

            v1 = v210;
LABEL_38:
            v106 = sub_1C445FAA8(v76, v78);
            v108 = v107;

            if (v108)
            {
              swift_isUniquelyReferenced_nonNull_native();
              v216 = v1;
              v109 = *(v1 + 24);
              sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
              sub_1C4F02458();
              v1 = v216;
              v110 = *(v216[6] + 16 * v106 + 8);

              sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
              sub_1C4F02478();
            }

            v65 = v72;
            v67 = *(&v207 + 1);
            v71 = v208;
          }

          v84 = sub_1C445FAA8(v81, v83);
          v86 = v85;

          v1 = v210;
          if ((v86 & 1) == 0)
          {
            goto LABEL_38;
          }

          v87 = (*(*(&v210 + 1) + 56) + 40 * v84);
          v88 = v87[1];
          v89 = v87[2];
          *&v206 = v76;
          *(&v206 + 1) = v88;
          v90 = v87[4];
          v204 = v87[3];
          v205 = v89;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          swift_bridgeObjectRetain_n();
          swift_retain_n();
          v91 = [v79 viewName];
          *&v203 = sub_1C4F01138();
          v93 = v92;

          v94 = [v79 featureName];
          v95 = sub_1C4F01138();
          v96 = v79;
          v98 = v97;

          v201 = v96;
          v99 = sub_1C47DC860(v96);
          v101 = v100;
          *(&v203 + 1) = &v199;
          v102 = *(v90 + 16);
          MEMORY[0x1EEE9AC00](v99);
          *(&v199 - 10) = v103;
          *(&v199 - 9) = v101;
          *(&v199 - 8) = v203;
          *(&v199 - 7) = v93;
          *(&v199 - 6) = v95;
          *(&v199 - 5) = v98;
          v104 = v204;
          *(&v199 - 4) = v205;
          *(&v199 - 3) = v104;
          *(&v199 - 2) = v90;
          v105 = sub_1C49A52E4(sub_1C46A76E4, (&v199 - 12));

          swift_bridgeObjectRelease_n();

          if (!*(v105 + 16))
          {

            v1 = v210;
            v76 = v206;
            v79 = v201;
            goto LABEL_38;
          }

          *(&v206 + 1) = *(v105 + 40);

          v111 = v210;
          swift_isUniquelyReferenced_nonNull_native();
          v216 = v111;
          v20 = v206;
          v112 = sub_1C445FAA8(v206, v78);
          if (__OFADD__(v111[2], (v113 & 1) == 0))
          {
            __break(1u);
LABEL_87:
            __break(1u);
          }

          v114 = v112;
          v115 = v113;
          sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
          v116 = sub_1C4F02458();
          v117 = v201;
          if (v116)
          {
            v118 = sub_1C445FAA8(v20, v78);
            if ((v115 & 1) != (v119 & 1))
            {
              goto LABEL_88;
            }

            v114 = v118;
          }

          if (v115)
          {

            v1 = v216;
            v120 = v216[7];
            v121 = v117;
            v122 = *(v120 + 8 * v114);
            *(v120 + 8 * v114) = *(&v206 + 1);
          }

          else
          {
            v1 = v216;
            v216[(v114 >> 6) + 8] |= 1 << v114;
            v123 = (*(v1 + 48) + 16 * v114);
            *v123 = v20;
            v123[1] = v78;
            *(*(v1 + 56) + 8 * v114) = *(&v206 + 1);

            v124 = *(v1 + 16);
            v49 = __OFADD__(v124, 1);
            v125 = v124 + 1;
            if (v49)
            {
              goto LABEL_87;
            }

            *(v1 + 16) = v125;
          }

          v67 = *(&v207 + 1);
          v71 = v208;
          v65 = v72;
        }
      }

      v17 = *(v13 + 8 * v21);
      ++v20;
    }

    while (!v17);
    v20 = v21;
LABEL_7:
    v22 = __clz(__rbit64(v17)) | (v20 << 6);
    v23 = *(*(&v206 + 1) + 56);
    v24 = (*(*(&v206 + 1) + 48) + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = v23 + *(*(_s10ViewConfigVMa(0) - 8) + 72) * v22;
    v28 = *(v2 + 48);
    v29 = v2;
    v30 = v210;
    sub_1C463F29C(v27, v210 + v28);
    *v30 = v26;
    v30[1] = v25;
    sub_1C4BDC068(v30, v7);
    v1 = *v7;
    v31 = v7[1];
    v32 = *(v207 + 48);
    v33 = v206;
    sub_1C4BDC068(v30, v206);
    v34 = v33[1];
    v208 = *v33;
    v209 = v34;
    v35 = *(v29 + 48);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    *(&v207 + 1) = v32;

    sub_1C445F57C(v33 + v35);
    v36 = *(&v210 + 1);
    swift_isUniquelyReferenced_nonNull_native();
    v216 = v36;
    v37 = v1;
    v38 = sub_1C445FAA8(v1, v31);
    if (__OFADD__(v36[2], (v39 & 1) == 0))
    {
      goto LABEL_83;
    }

    v40 = v38;
    v1 = v39;
    sub_1C456902C(&qword_1EC0C4850, &unk_1C4F5C070);
    if (sub_1C4F02458())
    {
      break;
    }

LABEL_11:
    if (v1)
    {

      v11 = v216;
      v43 = (v216[7] + 40 * v40);
      v44 = v43[1];
      v46 = v43[3];
      v45 = v43[4];
      sub_1C4407E48(v43);

      sub_1C4BDC0D8(v210);
    }

    else
    {
      v11 = v216;
      v216[(v40 >> 6) + 8] |= 1 << v40;
      v47 = (v11[6] + 16 * v40);
      *v47 = v37;
      v47[1] = v31;
      sub_1C4407E48((v11[7] + 40 * v40));
      sub_1C4BDC0D8(v210);
      v48 = v11[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        while (1)
        {
          __break(1u);
LABEL_85:
          swift_once();
LABEL_51:
          v126 = sub_1C4F00978();
          v127 = sub_1C442B738(v126, qword_1EDE2DF70);
          v128 = sub_1C4F00968();
          v129 = sub_1C4F01CB8();
          v130 = os_log_type_enabled(v128, v129);
          v131 = v202;
          if (v130)
          {
            v132 = swift_slowAlloc();
            v133 = swift_slowAlloc();
            v216 = v133;
            *v132 = 136380675;
            sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v134 = sub_1C4F00EE8();
            v136 = v135;

            v137 = sub_1C441D828(v134, v136, &v216);

            *(v132 + 4) = v137;
            _os_log_impl(&dword_1C43F8000, v128, v129, "CoreMLTransformerView: Features %{private}s", v132, 0xCu);
            sub_1C440962C(v133);
            sub_1C43FBE2C();
            sub_1C43FBE2C();
          }

          v138 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C465D378(v138, v139, v140, v141, v142, v143, v144, v145, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224);

          v146 = objc_allocWithZone(MEMORY[0x1E695FE48]);
          v147 = sub_1C4701E88();
          v148 = v131;
          if (v131)
          {
            break;
          }

          v157 = v147;
          v216 = 0;
          v158 = v200;
          *(&v210 + 1) = [v200 predictionFromFeatures:v147 error:&v216];
          if (!*(&v210 + 1))
          {
            v194 = v216;
            v148 = sub_1C4EF97A8();

            swift_willThrow();
            break;
          }

          *&v210 = v1;
          v159 = v216;

          v160 = [v158 modelDescription];
          v161 = [v160 outputDescriptionsByName];

          v162 = sub_1C4F00ED8();
          v163 = 0;
          v165 = v162 + 64;
          v164 = *(v162 + 64);
          v209 = v162;
          v166 = *(v162 + 32);
          sub_1C43FD030();
          v169 = v168 & v167;
          v1 = (v170 + 63) >> 6;
          *(&v207 + 1) = MEMORY[0x1E69E7CC0];
          v208 = v127;
          while (v169)
          {
LABEL_64:
            v172 = __clz(__rbit64(v169));
            v169 &= v169 - 1;
            v173 = (*(v209 + 48) + ((v163 << 10) | (16 * v172)));
            v175 = *v173;
            v174 = v173[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v176 = sub_1C4F01108();
            v177 = [*(&v210 + 1) featureValueForName_];

            if (v177)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v185 = *(*(&v207 + 1) + 16);
                sub_1C458B504();
                *(&v207 + 1) = v186;
              }

              v181 = *(*(&v207 + 1) + 16);
              v182 = v181 + 1;
              if (v181 >= *(*(&v207 + 1) + 24) >> 1)
              {
                *(&v206 + 1) = v181 + 1;
                sub_1C458B504();
                v182 = *(&v206 + 1);
                *(&v207 + 1) = v187;
              }

              v183 = *(&v207 + 1);
              *(*(&v207 + 1) + 16) = v182;
              v184 = (v183 + 40 * v181);
              v184[4] = v175;
              v184[5] = v174;
              v184[6] = 0;
              v184[7] = 0;
              v184[8] = v177;
            }

            else
            {

              v178 = sub_1C4F00968();
              v179 = sub_1C4F01CD8();
              if (os_log_type_enabled(v178, v179))
              {
                v180 = swift_slowAlloc();
                *v180 = 0;
                _os_log_impl(&dword_1C43F8000, v178, v179, "CoreMLTransformerView: could not find featureName", v180, 2u);
                sub_1C43FBE2C();
              }
            }
          }

          while (1)
          {
            v171 = v163 + 1;
            if (__OFADD__(v163, 1))
            {
              break;
            }

            if (v171 >= v1)
            {

              v188 = v207;
              v189 = *(v207 + 24);
              v190 = *(v207 + 32);
              v191 = *(v207 + 40);
              v192 = *(v207 + 48);
              v216 = *(v207 + 16);
              v217 = v189;
              v218 = v190;
              v219 = v191;
              v220 = v192;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

              sub_1C47D32C8();

              v195 = sub_1C4F00968();
              v196 = sub_1C4F01CB8();

              if (os_log_type_enabled(v195, v196))
              {
                v197 = swift_slowAlloc();
                v198 = swift_slowAlloc();
                v216 = v198;
                *v197 = 136315138;
                *(v197 + 4) = sub_1C441D828(*(v188 + OBJC_IVAR____TtC24IntelligencePlatformCore21CoreMLTransformerView_config), *(v188 + OBJC_IVAR____TtC24IntelligencePlatformCore21CoreMLTransformerView_config + 8), &v216);
                _os_log_impl(&dword_1C43F8000, v195, v196, "CoreMLTransformerView %s: Wrote features", v197, 0xCu);
                sub_1C440962C(v198);
                sub_1C43FBE2C();
                sub_1C43FBE2C();
              }

              swift_unknownObjectRelease();
              goto LABEL_74;
            }

            v169 = *(v165 + 8 * v171);
            ++v163;
            if (v169)
            {
              v163 = v171;
              goto LABEL_64;
            }
          }

LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
        }

        v149 = v148;
        v150 = sub_1C4F00968();
        v151 = sub_1C4F01CB8();

        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          v216 = v153;
          *v152 = 136315138;
          swift_getErrorValue();
          v154 = sub_1C4F02A38();
          v156 = sub_1C441D828(v154, v155, &v216);

          *(v152 + 4) = v156;
          _os_log_impl(&dword_1C43F8000, v150, v151, "CoreMLTransformerView: error during prediction %s", v152, 0xCu);
          sub_1C440962C(v153);
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        else
        {
        }

LABEL_74:
        v193 = *MEMORY[0x1E69E9840];
        return;
      }

      v11[2] = v50;
    }

    v17 &= v17 - 1;
    v7 = v204;
    v2 = v205;
    sub_1C445F57C(v204 + *(v205 + 48));
    v13 = *(&v203 + 1);
    v19 = v203;
  }

  v41 = sub_1C445FAA8(v37, v31);
  if ((v1 & 1) == (v42 & 1))
  {
    v40 = v41;
    goto LABEL_11;
  }

LABEL_88:
  sub_1C4F029F8();
  __break(1u);
LABEL_89:

  __break(1u);
}

void sub_1C4BDBA48(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = sub_1C44735D4(*a2, v5, *(a3 + 64));
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    sub_1C4461BB8(0, &qword_1EDDDBB00, 0x1E69A9EA8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = sub_1C4F01C68();
    if (v10)
    {
      v11 = v10;

      v12 = v11;
      v13 = *a1;
      swift_isUniquelyReferenced_nonNull_native();
      v25 = *a1;
      sub_1C466299C();

      *a1 = v25;
      return;
    }

    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = sub_1C4F00968();
    v21 = sub_1C4F01CE8();

    if (!os_log_type_enabled(v15, v21))
    {

      goto LABEL_14;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v22 = 136315138;
    v24 = sub_1C441D828(v8, v9, &v25);

    *(v22 + 4) = v24;
    _os_log_impl(&dword_1C43F8000, v15, v21, "CoreMLTransformerView: Mapped input feature name %s could not be parsed into a Feature Key", v22, 0xCu);
    sub_1C440962C(v23);
    MEMORY[0x1C6942830](v23, -1, -1);
    v19 = v22;
  }

  else
  {
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CE8();

    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_14;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1C441D828(v4, v5, &v25);
    _os_log_impl(&dword_1C43F8000, v15, v16, "CoreMLTransformerView: Input feature name %s has no mapping in the config", v17, 0xCu);
    sub_1C440962C(v18);
    MEMORY[0x1C6942830](v18, -1, -1);
    v19 = v17;
  }

  MEMORY[0x1C6942830](v19, -1, -1);
LABEL_14:
}

uint64_t sub_1C4BDBD4C()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  v4 = *(v0 + 64);

  sub_1C445F57C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CoreMLTransformerView_config);
  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CoreMLTransformerView_dependencyViewConfigs);

  v6 = OBJC_IVAR____TtC24IntelligencePlatformCore21CoreMLTransformerView_artifactsURL;
  v7 = sub_1C4EF98F8();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CoreMLTransformerView____lazy_storage___featureNames);

  return v0;
}

uint64_t sub_1C4BDBE10()
{
  sub_1C4BDBD4C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CoreMLTransformerView()
{
  result = qword_1EC0C4838;
  if (!qword_1EC0C4838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4BDBEBC()
{
  result = _s10ViewConfigVMa(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1C4EF98F8();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1C4BDBFF0()
{
  sub_1C4BDA978();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4BDC068(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4848, &qword_1C4F5C068);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4BDC0D8(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C4848, &qword_1C4F5C068);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C4BDC140(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1C459D8F0();
    v3 = v44;
    v6 = sub_1C4702074(v2);
    v7 = 0;
    v8 = v2 + 64;
    v32 = v2 + 72;
    v33 = v1;
    v34 = v2 + 64;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v2 + 32))
      {
        v9 = v6 >> 6;
        if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v4)
        {
          goto LABEL_25;
        }

        v35 = v5;
        v36 = v7;
        v37 = v4;
        sub_1C4609884(*(v2 + 56) + 48 * v6, v40);
        v10 = v41;
        v11 = v2;
        v12 = v43;
        sub_1C4409678(v40, v41);
        v13 = (*(v12 + 8))(v10, v12);
        v38 = v14;
        v39 = v13;
        v15 = v41;
        v16 = v42;
        sub_1C4409678(v40, v41);
        v17 = (*(v16 + 8))(v15, v16);
        v19 = v18;
        sub_1C440962C(v40);
        v44 = v3;
        v20 = *(v3 + 16);
        if (v20 >= *(v3 + 24) >> 1)
        {
          sub_1C459D8F0();
          v3 = v44;
        }

        *(v3 + 16) = v20 + 1;
        v21 = (v3 + 32 * v20);
        v21[4] = v39;
        v21[5] = v38;
        v21[6] = v17;
        v21[7] = v19;
        v22 = 1 << *(v11 + 32);
        if (v6 >= v22)
        {
          goto LABEL_26;
        }

        v8 = v34;
        v23 = *(v34 + 8 * v9);
        if ((v23 & (1 << v6)) == 0)
        {
          goto LABEL_27;
        }

        v2 = v11;
        if (*(v11 + 36) != v37)
        {
          goto LABEL_28;
        }

        v24 = v23 & (-2 << (v6 & 0x3F));
        if (v24)
        {
          v22 = __clz(__rbit64(v24)) | v6 & 0x7FFFFFFFFFFFFFC0;
          v25 = v33;
        }

        else
        {
          v26 = v3;
          v27 = v9 << 6;
          v28 = v9 + 1;
          v25 = v33;
          v29 = (v32 + 8 * v9);
          while (v28 < (v22 + 63) >> 6)
          {
            v31 = *v29++;
            v30 = v31;
            v27 += 64;
            ++v28;
            if (v31)
            {
              sub_1C440951C(v6, v37, v35 & 1);
              v22 = __clz(__rbit64(v30)) + v27;
              goto LABEL_18;
            }
          }

          sub_1C440951C(v6, v37, v35 & 1);
LABEL_18:
          v3 = v26;
        }

        v7 = v36 + 1;
        if (v36 + 1 == v25)
        {
          return;
        }

        v5 = 0;
        v4 = *(v2 + 36);
        v6 = v22;
        if (v22 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }
}

unint64_t sub_1C4BDC410(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
    sub_1C43FBD18(v5);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1C4BDC4C0()
{
  sub_1C441131C();
  switch(v0)
  {
    case 1:
    case 2:
    case 6:
    case 7:
    case 12:
      return;
    case 3:
    case 4:
    case 8:
    case 13:
    case 14:
    case 16:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 27:
    case 28:
      sub_1C442D5D8();
      break;
    case 5:
      sub_1C43FF748();
      break;
    case 11:
      sub_1C4430254();
      break;
    default:
      sub_1C43FE984();
      break;
  }
}

uint64_t sub_1C4BDC858(uint64_t a1, uint64_t a2)
{
  sub_1C43FE984();
  v5 = v3 == 0xD000000000000014 && v4 == a2;
  if (v5 || (v6 = v3, (sub_1C44205B0() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v9 = v6 == sub_1C441131C() && a2 == v8;
    if (v9 || (sub_1C43FEC00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      sub_1C43FE984();
      v11 = v6 == 0xD000000000000017 && v10 == a2;
      if (v11 || (sub_1C43FEC00() & 1) != 0)
      {

        return 4;
      }

      else
      {
        v12 = v6 == 0x614D656C646E6148 && a2 == 0xED00007765695670;
        if (v12 || (sub_1C43FEC00() & 1) != 0)
        {

          return 2;
        }

        else
        {
          sub_1C43FE984();
          v14 = v6 == 0xD00000000000001BLL && v13 == a2;
          if (v14 || (sub_1C43FEC00() & 1) != 0)
          {

            return 3;
          }

          else
          {
            v16 = v6 == sub_1C43FF748() && a2 == v15;
            if (v16 || (sub_1C43FEC00() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v17 = v6 == 0x656D67655353544BLL && a2 == 0xEE0077656956746ELL;
              if (v17 || (sub_1C43FEC00() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v18 = v6 == 0x6E6564614353544BLL && a2 == 0xEE00776569566563;
                if (v18 || (sub_1C43FEC00() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  sub_1C442D5D8();
                  v21 = v20 + 2;
                  v22 = v6 == v20 + 2 && v19 == a2;
                  if (v22 || (sub_1C43FEC00() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v24 = v6 == sub_1C4430254() && a2 == v23;
                    if (v24 || (sub_1C43FEC00() & 1) != 0)
                    {

                      return 11;
                    }

                    else
                    {
                      v25 = v6 == 0x6E6576456566694CLL && a2 == 0xED00007765695674;
                      if (v25 || (sub_1C43FEC00() & 1) != 0)
                      {

                        return 12;
                      }

                      else
                      {
                        sub_1C442D5D8();
                        v28 = v6 == v27 - 4 && v26 == a2;
                        if (v28 || (sub_1C43FEC00() & 1) != 0)
                        {

                          return 13;
                        }

                        else
                        {
                          sub_1C43FE984();
                          v30 = v6 == 0xD00000000000001BLL && v29 == a2;
                          if (v30 || (sub_1C44061F8(), (sub_1C43FEC00() & 1) != 0))
                          {

                            return 14;
                          }

                          else
                          {
                            sub_1C4407E68();
                            v32 = v5 && v31 == a2;
                            if (v32 || (sub_1C44205B0() & 1) != 0)
                            {

                              return 15;
                            }

                            else
                            {
                              sub_1C442D5D8();
                              v35 = v6 == v34 + 12 && v33 == a2;
                              if (v35 || (sub_1C43FEC00() & 1) != 0)
                              {

                                return 16;
                              }

                              else
                              {
                                sub_1C442D5D8();
                                v38 = v37 + 10;
                                v39 = v6 == v37 + 10 && v36 == a2;
                                if (v39 || (sub_1C43FEC00() & 1) != 0)
                                {

                                  return 17;
                                }

                                else
                                {
                                  sub_1C442D5D8();
                                  v42 = v41 + 11;
                                  v43 = v6 == v41 + 11 && v40 == a2;
                                  if (v43 || (sub_1C43FEC00() & 1) != 0)
                                  {

                                    return 18;
                                  }

                                  else
                                  {
                                    sub_1C43FE984();
                                    v45 = v6 == v38 && v44 == a2;
                                    if (v45 || (sub_1C44061F8(), (sub_1C43FEC00() & 1) != 0))
                                    {

                                      return 10;
                                    }

                                    else
                                    {
                                      sub_1C4407E68();
                                      v47 = v5 && v46 == a2;
                                      if (v47 || (sub_1C44205B0() & 1) != 0)
                                      {

                                        return 9;
                                      }

                                      else
                                      {
                                        sub_1C442D5D8();
                                        v50 = v6 == v49 + 1 && v48 == a2;
                                        if (v50 || (sub_1C43FEC00() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          sub_1C43FE984();
                                          v52 = v6 == 0xD00000000000001BLL && v51 == a2;
                                          if (v52 || (sub_1C44061F8(), (sub_1C43FEC00() & 1) != 0))
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            sub_1C442D5D8();
                                            v55 = v6 == v54 + 5 && v53 == a2;
                                            if (v55 || (sub_1C43FEC00() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              sub_1C442D5D8();
                                              v58 = v6 == v57 + 8 && v56 == a2;
                                              if (v58 || (sub_1C43FEC00() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                sub_1C442D5D8();
                                                v61 = v6 == v60 + 16 && v59 == a2;
                                                if (v61 || (sub_1C43FEC00() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  sub_1C442D5D8();
                                                  v64 = v6 == v63 + 6 && v62 == a2;
                                                  if (v64 || (sub_1C43FEC00() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    sub_1C4407E68();
                                                    v66 = v5 && v65 == a2;
                                                    if (v66 || (sub_1C44205B0() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      sub_1C4407E68();
                                                      v68 = v5 && v67 == a2;
                                                      if (v68 || (sub_1C44205B0() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        sub_1C43FE984();
                                                        v70 = v6 == v21 && v69 == a2;
                                                        if (v70 || (sub_1C44061F8(), (sub_1C43FEC00() & 1) != 0))
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          sub_1C442D5D8();
                                                          v73 = v6 == v72 - 3 && v71 == a2;
                                                          if (v73 || (sub_1C43FEC00() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            sub_1C43FE984();
                                                            if (v6 == v42 && v74 == a2)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              sub_1C44061F8();
                                                              v76 = sub_1C43FEC00();

                                                              if (v76)
                                                              {
                                                                return 29;
                                                              }

                                                              else
                                                              {
                                                                return 30;
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
  }
}

void sub_1C4BDCECC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v117 = a3;
  v118 = a2;
  v4 = type metadata accessor for Configuration();
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v116 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  v115 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v113 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  v114 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  v112 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF38();
  v111 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  v109 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  v110 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  v108 = v24;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v107 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v107 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v107 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v107 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v107 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v107 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v107 - v44;
  if (qword_1EDDFF2A0 != -1)
  {
    swift_once();
  }

  v46 = v119;
  v47 = sub_1C44E7FAC();
  if (!v46)
  {
    switch(v118)
    {
      case 1:
        v76 = &_s27SiriRemembersViewGenerationVN;
        goto LABEL_37;
      case 2:
        v76 = &_s20HandleViewGenerationVN;
        goto LABEL_37;
      case 3:
        v76 = &_s41DefaultResolverInteractionsViewGenerationVN;
        goto LABEL_37;
      case 4:
        v63 = sub_1C43FDFE4();
        sub_1C44098F0(v63, v45);
        v64 = type metadata accessor for GraphStore();
        sub_1C44099C4(v64);
        sub_1C440B51C();
        v53 = GraphStore.init(config:)(v45);
        v54 = &_s37EntityImportanceSignalsViewGenerationVN;
        v55 = &off_1F4402320;
        goto LABEL_38;
      case 5:
        v76 = &_s29SportsSchedulesViewGenerationVN;
        goto LABEL_37;
      case 6:
        v48 = &_s32KTSSegmentViewGenerationProviderVN;
        v49 = &off_1F44046A0;
        goto LABEL_27;
      case 7:
        v48 = &_s32KTSCadenceViewGenerationProviderVN;
        v49 = &off_1F4403D28;
        goto LABEL_27;
      case 8:
        v89 = sub_1C43FDFE4();
        sub_1C44098F0(v89, v42);
        v90 = type metadata accessor for GraphStore();
        sub_1C44099C4(v90);
        sub_1C440B51C();
        v53 = GraphStore.init(config:)(v42);
        v54 = &_s32AppleMusicEventMapViewGenerationVN;
        v55 = &off_1F44014C8;
        goto LABEL_38;
      case 9:
        v67 = *(v47 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
        v68 = v47;
        v69 = v110;
        sub_1C44098F0(a1, v110);
        v70 = type metadata accessor for GraphStore();
        sub_1C44099C4(v70);
        v71 = v67;
        v99 = GraphStore.init(config:)(v69);
        v100 = v117;
        v117[3] = &_s37ContextualEventsViewGeneratorProviderVN;
        v100[4] = &off_1F4401A30;
        swift_unownedRetain();

        *v100 = v68;
        v100[1] = v71;
        v100[2] = v99;
        return;
      case 10:
        v84 = *(v47 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
        v85 = v47;
        v86 = v108;
        sub_1C44098F0(a1, v108);
        v87 = type metadata accessor for GraphStore();
        sub_1C44099C4(v87);
        v88 = v84;
        v103 = GraphStore.init(config:)(v86);
        v104 = v117;
        v117[3] = &_s47EntityInteractionHistogramViewGeneratorProviderVN;
        v104[4] = &off_1F44023D8;
        v105 = swift_allocObject();
        *v104 = v105;
        swift_unownedRetain();

        v105[2] = v85;
        v105[3] = v88;
        v105[4] = v103;
        v105[5] = &unk_1F43DA960;
        return;
      case 11:
        v60 = v47;
        sub_1C44098F0(a1, v39);
        v61 = type metadata accessor for GraphStore();
        sub_1C44099C4(v61);
        sub_1C440B51C();
        v62 = GraphStore.init(config:)(v39);
        v98 = v117;
        v117[3] = &_s22LanguageViewGenerationVN;
        v98[4] = &off_1F4404770;
        *v98 = v60;
        v98[1] = v62;
        return;
      case 12:
        v65 = sub_1C43FDFE4();
        sub_1C44098F0(v65, v36);
        v66 = type metadata accessor for GraphStore();
        sub_1C44099C4(v66);
        sub_1C440B51C();
        v53 = GraphStore.init(config:)(v36);
        v54 = &_s23LifeEventViewGenerationVN;
        v55 = &off_1F4404840;
        goto LABEL_38;
      case 13:
        v81 = v47;
        sub_1C44098F0(a1, v33);
        v82 = type metadata accessor for GraphStore();
        sub_1C44099C4(v82);
        sub_1C440B51C();
        v101 = GraphStore.init(config:)(v33);
        v102 = v117;
        v117[3] = &_s29K2TLifeEventMapViewGenerationVN;
        v102[4] = &off_1F4403BA0;
        swift_unownedRetain();

        *v102 = v81;
        v102[1] = v101;
        return;
      case 14:
        v58 = sub_1C43FDFE4();
        sub_1C44098F0(v58, v30);
        v59 = type metadata accessor for GraphStore();
        sub_1C44099C4(v59);
        sub_1C440B51C();
        v53 = GraphStore.init(config:)(v30);
        v54 = &_s37K2TSemanticEntitySearchViewGenerationVN;
        v55 = &off_1F4403C88;
        goto LABEL_38;
      case 15:
        v76 = &_s30PhotosAutonamingViewGenerationVN;
        goto LABEL_37;
      case 16:
        v56 = sub_1C43FDFE4();
        sub_1C44098F0(v56, v27);
        v57 = type metadata accessor for GraphStore();
        sub_1C44099C4(v57);
        sub_1C440B51C();
        v53 = GraphStore.init(config:)(v27);
        v54 = &_s42RepresentationLearningSubsetViewGenerationVN;
        v55 = &off_1F44052A8;
        goto LABEL_38;
      case 17:
        sub_1C44338E8(&_s25ScoredTopicViewGenerationVN);

        *v39 = v30;
        v39[8] = 0;
        return;
      case 18:
        sub_1C44338E8(&_s25ScoredTopicViewGenerationVN);

        *v39 = v30;
        v39[8] = 1;
        return;
      case 19:
        v94 = sub_1C43FDFE4();
        v95 = v109;
        sub_1C44098F0(v94, v109);
        v96 = type metadata accessor for GraphStore();
        sub_1C44099C4(v96);
        sub_1C440B51C();
        v53 = GraphStore.init(config:)(v95);
        v54 = &_s38MUIDIdentifierMapViewGeneratorProviderVN;
        v55 = &off_1F44049D0;
        goto LABEL_38;
      case 20:
        v33 = v47;
        type metadata accessor for GlobalKnowledgeStore(0);
        v77 = v113;
        sub_1C44098F0(a1, v113);
        v53 = sub_1C48300AC(v77);
        v54 = &_s48PeopleRelationshipAliasViewViewGeneratorProviderVN;
        v55 = &off_1F4404CF8;
        goto LABEL_38;
      case 21:
        v78 = sub_1C43FDFE4();
        v79 = v111;
        sub_1C44098F0(v78, v111);
        v80 = type metadata accessor for GraphStore();
        sub_1C44099C4(v80);
        sub_1C440B51C();
        v53 = GraphStore.init(config:)(v79);
        v54 = &_s42PHPersonIdentifierMapViewGeneratorProviderVN;
        v55 = &off_1F4405128;
        goto LABEL_38;
      case 22:
        v91 = sub_1C43FDFE4();
        v92 = v112;
        sub_1C44098F0(v91, v112);
        v93 = type metadata accessor for GraphStore();
        sub_1C44099C4(v93);
        sub_1C440B51C();
        v53 = GraphStore.init(config:)(v92);
        v54 = &_s38EntityRelevanceInferenceViewGenerationVN;
        v55 = &off_1F4402B58;
        goto LABEL_38;
      case 23:
        v76 = &_s46EntityRelevanceHistoricalFeatureViewGenerationVN;
        goto LABEL_37;
      case 24:
        v73 = sub_1C43FDFE4();
        v74 = v114;
        sub_1C44098F0(v73, v114);
        v75 = type metadata accessor for GraphStore();
        sub_1C44099C4(v75);
        sub_1C440B51C();
        v53 = GraphStore.init(config:)(v74);
        v54 = &_s36EntityTaggingInferenceViewGenerationVN;
        v55 = &off_1F4402E40;
        goto LABEL_38;
      case 25:
        v33 = v47;
        type metadata accessor for GlobalKnowledgeStore(0);
        v72 = v115;
        sub_1C44098F0(a1, v115);
        v53 = sub_1C48300AC(v72);
        v54 = &_s41SourceConfidenceViewViewGeneratorProviderVN;
        v55 = &off_1F4405850;
        goto LABEL_38;
      case 26:
        v76 = &_s38SyncedStreamTestViewGenerationProviderVN;
        goto LABEL_37;
      case 27:
        v50 = sub_1C43FDFE4();
        v51 = v116;
        sub_1C44098F0(v50, v116);
        v52 = type metadata accessor for GraphStore();
        sub_1C44099C4(v52);
        sub_1C440B51C();
        v53 = GraphStore.init(config:)(v51);
        v54 = &_s43AddressContactResolverViewGeneratorProviderVN;
        v55 = &off_1F44013F8;
LABEL_38:
        v106 = v117;
        v117[3] = v54;
        v106[4] = v55;
        swift_unownedRetain();

        *v106 = v33;
        v106[1] = v53;
        break;
      case 28:
        v76 = &_s31PreprocessObjectsViewGenerationVN;
LABEL_37:
        sub_1C44338E8(v76);

        *v39 = v30;
        break;
      case 29:
        v97 = v117;
        v117[3] = &_s39InitializeGlobalKnowledgeAssetsProviderVN;
        v97[4] = &off_1F4403AB8;

        break;
      default:
        v48 = &_s34WalletOrderExtractedViewGenerationVN;
        v49 = &off_1F44069E8;
LABEL_27:
        v83 = v117;
        v117[3] = v48;
        v83[4] = v49;
        *v83 = v47;
        break;
    }
  }
}

uint64_t sub_1C4BDD960@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4BDC858(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C4BDD990(void *a1@<X8>)
{
  v3 = *v1;
  sub_1C4BDC4C0();
  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_1C4BDD9CC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 128) = a3;
  *(v4 + 56) = a1;
  v5 = type metadata accessor for Configuration();
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v8 = _s10ViewConfigVMa(0);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4BDDA88, 0, 0);
}

uint64_t sub_1C4BDDA88()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 56);
  v4 = *(*(v0 + 72) + 16);
  swift_unownedRetainStrong();
  v5 = *(v4 + 16);

  sub_1C443A738(v3, v2, v6, v7, v8, v9, v10, v11);
  v12 = *(v0 + 88);

  v13 = *(v12 + 136);
  if (v13 == 30)
  {
    v14 = *(v0 + 88);
    v15 = *(v0 + 56);
    v16 = *(v0 + 64);
    sub_1C450B034();
    swift_allocError();
    *v17 = v15;
    *(v17 + 8) = v16;
    *(v17 + 16) = 0xD000000000000017;
    *(v17 + 24) = 0x80000001C4FB8D70;
    *(v17 + 32) = v35;
    *(v17 + 48) = v36;
    *(v17 + 64) = 3;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C443C0C8(v14, _s10ViewConfigVMa);
    v20 = *(v0 + 80);
    v19 = *(v0 + 88);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v18 = *(v0 + 80);
    swift_unownedRetainStrong();
    sub_1C44098F0(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_config, v18);

    sub_1C4BDCECC(v18, v13, (v0 + 16));
    v23 = *(v0 + 80);
    sub_1C4413970();
    sub_1C443C0C8(v24, v25);
    v26 = *(v0 + 40);
    v27 = *(v0 + 48);
    sub_1C4409678((v0 + 16), v26);
    v28 = *(v27 + 8);
    v34 = (v28 + *v28);
    v29 = v28[1];
    v30 = swift_task_alloc();
    *(v0 + 96) = v30;
    *v30 = v0;
    v30[1] = sub_1C4BDDD60;
    v31 = *(v0 + 128);
    v33 = *(v0 + 56);
    v32 = *(v0 + 64);

    return v34(v33, v32, v31, v26, v27);
  }
}

uint64_t sub_1C4BDDD60(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v9 = sub_1C4BDDF1C;
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v9 = sub_1C4BDDE94;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C4BDDE94()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_1C4407E80();
  sub_1C443C0C8(v2, v3);
  sub_1C440962C(v0 + 2);

  v4 = v0[1];
  v6 = v0[14];
  v5 = v0[15];

  return v4(v5, v6);
}

uint64_t sub_1C4BDDF1C()
{
  v1 = v0[11];
  sub_1C4407E80();
  sub_1C443C0C8(v2, v3);
  sub_1C440962C(v0 + 2);
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1C4BDDF9C()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return swift_deallocClassInstance();
}

uint64_t _s14CustomViewTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE3)
  {
    if (a2 + 29 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 29) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 30;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v5 = v6 - 30;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1C4BDE0D8()
{
  result = qword_1EDDF6D48[0];
  if (!qword_1EDDF6D48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF6D48);
  }

  return result;
}

uint64_t sub_1C4BDE12C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C44502B8;

  return sub_1C4BDD9CC(a1, a2, a3);
}

uint64_t sub_1C4BDE1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  sub_1C48684D8(a1, &v128);
  if (!*(&v129[0] + 1))
  {
    sub_1C4420C3C(&v128, &qword_1EC0C4868, &qword_1C4F5E220);
    if (qword_1EDDFECD0 == -1)
    {
LABEL_23:
      v42 = sub_1C4F00978();
      sub_1C442B738(v42, qword_1EDE2DF70);
      v43 = sub_1C4F00968();
      v44 = sub_1C4F01CD8();
      if (sub_1C43FCEA4(v44))
      {
        *swift_slowAlloc() = 0;
        sub_1C440BAE8(&dword_1C43F8000, v45, v46, "Error: No dependency tables specified");
        sub_1C43FE9D4();
      }

      return MEMORY[0x1E69E7CC0];
    }

LABEL_67:
    sub_1C44066DC();
    goto LABEL_23;
  }

  v101 = a3;
  v102 = a4;
  sub_1C460986C(&v128, &v131);
  v7 = v133;
  sub_1C4409678(&v131, v132);
  v8 = *(v7 + 8);
  v9 = sub_1C4402B58();
  v99 = v10(v9);
  v100 = v11;
  v12 = *(v6 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v130 = MEMORY[0x1E69E7CC0];
    sub_1C459DBF8();
    v14 = v130;
    v17 = sub_1C4703354(v6);
    v18 = 0;
    v19 = v6 + 64;
    v105 = v15;
    v106 = v12;
    v104 = v6 + 72;
    v107 = v6 + 64;
    v108 = v6;
    while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(v6 + 32))
    {
      v20 = v17 >> 6;
      if ((*(v19 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_56;
      }

      if (*(v6 + 36) != v15)
      {
        goto LABEL_57;
      }

      v112 = v18;
      v114 = v15;
      v110 = v16;
      v21 = (*(v6 + 48) + 16 * v17);
      v23 = *v21;
      v22 = v21[1];
      sub_1C4609884(*(v6 + 56) + 48 * v17, v129);
      v124[0] = v23;
      v124[1] = v22;
      sub_1C460986C(v129, &v125);
      sub_1C4BDF610(v124, &v121);
      v116 = v122;
      v118 = v121;
      v24 = v126;
      v25 = v127;
      sub_1C4409678(&v125, v126);
      v26 = v14;
      v27 = *(v25 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v28 = v27(v24, v25);
      v14 = v26;
      v29 = v28;
      v31 = v30;
      sub_1C440962C(v123);
      sub_1C4420C3C(v124, &qword_1EC0C4870, &unk_1C4F5C210);
      v130 = v26;
      v32 = *(v26 + 16);
      if (v32 >= *(v26 + 24) >> 1)
      {
        sub_1C459DBF8();
        v14 = v130;
      }

      *(v14 + 16) = v32 + 1;
      v33 = (v14 + 32 * v32);
      v33[4] = v118;
      v33[5] = v116;
      v33[6] = v29;
      v33[7] = v31;
      v6 = v108;
      v34 = 1 << *(v108 + 32);
      if (v17 >= v34)
      {
        goto LABEL_58;
      }

      v19 = v107;
      v35 = *(v107 + 8 * v20);
      if ((v35 & (1 << v17)) == 0)
      {
        goto LABEL_59;
      }

      if (*(v108 + 36) != v114)
      {
        goto LABEL_60;
      }

      v36 = v35 & (-2 << (v17 & 0x3F));
      if (v36)
      {
        v34 = __clz(__rbit64(v36)) | v17 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v37 = v20 << 6;
        v38 = v20 + 1;
        v39 = (v104 + 8 * v20);
        while (v38 < (v34 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            sub_1C440951C(v17, v114, v110 & 1);
            v34 = __clz(__rbit64(v40)) + v37;
            goto LABEL_20;
          }
        }

        sub_1C440951C(v17, v114, v110 & 1);
      }

LABEL_20:
      v16 = 0;
      v18 = v112 + 1;
      v17 = v34;
      v15 = v105;
      if (v112 + 1 == v106)
      {
        v13 = MEMORY[0x1E69E7CC0];
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_26:
  v48 = sub_1C4BA0370();
  *&v128 = 0;
  *(&v128 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FB8A00);
  v49 = *(v48 + 16);
  if (v49)
  {
    v121 = v13;
    sub_1C44CD9C0();
    v50 = v121;
    v53 = sub_1C4703354(v48);
    v54 = 0;
    v55 = v48 + 64;
    v111 = v51;
    v113 = v49;
    v109 = v48 + 72;
    v115 = v48 + 64;
    while ((v53 & 0x8000000000000000) == 0 && v53 < 1 << *(v48 + 32))
    {
      v56 = v53 >> 6;
      if ((*(v55 + 8 * (v53 >> 6)) & (1 << v53)) == 0)
      {
        goto LABEL_62;
      }

      if (*(v48 + 36) != v51)
      {
        goto LABEL_63;
      }

      v119 = v51;
      v117 = v52;
      v57 = *(*(v48 + 48) + 16 * v53 + 8);
      v58 = (*(v48 + 56) + 16 * v53);
      v59 = v48;
      v60 = *v58;
      v61 = v58[1];
      v124[0] = 0;
      v124[1] = 0xE000000000000000;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      sub_1C43FCA20();
      v124[0] = v62;
      v124[1] = 0xEE00204D4F524620;
      MEMORY[0x1C6940010](v60, v61);

      v63 = v124[0];
      v64 = v124[1];
      v65 = v50;
      v121 = v50;
      v66 = *(v50 + 16);
      if (v66 >= *(v65 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v65 = v121;
      }

      *(v65 + 16) = v66 + 1;
      v67 = v65 + 16 * v66;
      *(v67 + 32) = v63;
      *(v67 + 40) = v64;
      v68 = 1 << *(v59 + 32);
      if (v53 >= v68)
      {
        goto LABEL_64;
      }

      v55 = v115;
      v69 = *(v115 + 8 * v56);
      if ((v69 & (1 << v53)) == 0)
      {
        goto LABEL_65;
      }

      v48 = v59;
      v50 = v65;
      if (*(v59 + 36) != v119)
      {
        goto LABEL_66;
      }

      v70 = v69 & (-2 << (v53 & 0x3F));
      if (v70)
      {
        v68 = __clz(__rbit64(v70)) | v53 & 0x7FFFFFFFFFFFFFC0;
        v71 = v113;
      }

      else
      {
        v72 = v56 << 6;
        v73 = v56 + 1;
        v74 = (v109 + 8 * v56);
        v71 = v113;
        while (v73 < (v68 + 63) >> 6)
        {
          v76 = *v74++;
          v75 = v76;
          v72 += 64;
          ++v73;
          if (v76)
          {
            sub_1C440951C(v53, v119, v117 & 1);
            v68 = __clz(__rbit64(v75)) + v72;
            goto LABEL_44;
          }
        }

        sub_1C440951C(v53, v119, v117 & 1);
      }

LABEL_44:
      v52 = 0;
      ++v54;
      v53 = v68;
      v51 = v111;
      if (v54 == v71)
      {

        v77 = v50;
        goto LABEL_47;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v77 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v124[0] = v77;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4432C38(&qword_1EDDFCED0);
  v78 = sub_1C4F01048();
  v80 = v79;

  MEMORY[0x1C6940010](v78, v80);

  MEMORY[0x1C6940010](0xD00000000000002ELL, 0x80000001C4FB8A20);
  MEMORY[0x1C6940010](v99, v100);

  sub_1C43FE984();
  MEMORY[0x1C6940010](0xD000000000000013);
  v81 = *(&v128 + 1);
  v82 = v128;
  v83 = *(a2 + 16);
  v84 = MEMORY[0x1E69E7CC0];
  if (v83)
  {
    v120 = v128;
    *&v128 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v84 = v128;
    v85 = *(v128 + 16);
    v86 = 16 * v85;
    do
    {
      *&v128 = v84;
      v87 = v85 + 1;
      if (v85 >= *(v84 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v84 = v128;
      }

      *(v84 + 16) = v87;
      v88 = v84 + v86;
      *(v88 + 32) = 63;
      *(v88 + 40) = 0xE100000000000000;
      v86 += 16;
      v85 = v87;
      --v83;
    }

    while (v83);
    v82 = v120;
  }

  *&v128 = v84;
  v89 = sub_1C4F01048();
  v91 = v90;

  *&v128 = v82;
  *(&v128 + 1) = v81;
  strcpy(v124, "$SUBJECT_IDS");
  BYTE5(v124[1]) = 0;
  HIWORD(v124[1]) = -5120;
  v121 = v89;
  v122 = v91;
  sub_1C4415EA8();
  v92 = sub_1C4F02008();
  v94 = v93;

  v95 = v132;
  v96 = v134;
  sub_1C4409678(&v131, v132);
  v97 = (*(v96 + 24))(v95, v96);
  v47 = (*(v102 + 16))(v92, v94, v97, a2, v101);

  sub_1C440962C(&v131);
  return v47;
}

uint64_t sub_1C4BDEB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v12 = a1;
  sub_1C4BDC140(a1);
  v14 = v13[2];
  if (v14)
  {
    v89 = a5;
    v94 = v13[4];
    v15 = v13[7];
    v92 = v13;
    v93 = v13[6];
    v87 = a7;
    v88 = v13[2];
    v95 = v15;
    v96 = v13[5];
    v86 = a6;
    v85 = a2;
    if (v14 == 1)
    {
      v16 = qword_1EDDFECD0;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v16 != -1)
      {
        sub_1C44066DC();
      }

      v17 = sub_1C4F00978();
      sub_1C442B738(v17, qword_1EDE2DF70);
      a5 = sub_1C4F00968();
      v18 = sub_1C4F01CD8();
      if (sub_1C43FCEA4(v18))
      {
        *swift_slowAlloc() = 0;
        sub_1C440BAE8(&dword_1C43F8000, v19, v20, "RowJoinTransformView: Join View given single dependency table, please consider using CustomSQLRowView or ObjectSQLRowView");
        sub_1C43FE9D4();
      }
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v27 = 1 << *(v12 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v12 + 64);
    v30 = (v27 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v31 = 0;
    v32 = MEMORY[0x1E69E7CC0];
    if (v29)
    {
LABEL_21:
      while (1)
      {
        sub_1C4609884(*(v12 + 56) + 48 * (__clz(__rbit64(v29)) | (v31 << 6)), &v99);
        v34 = v102;
        sub_1C4409678(&v99, v101);
        v35 = *(v34 + 24);
        v36 = sub_1C4402B58();
        v38 = v37(v36);
        v39 = *(v38 + 16);
        v40 = v32;
        a5 = *(v32 + 16);
        v41 = &a5[v39];
        if (__OFADD__(a5, v39))
        {
          break;
        }

        v42 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v42;
        if (!isUniquelyReferenced_nonNull_native || v41 > *(v42 + 24) >> 1)
        {
          if (a5 <= v41)
          {
            v45 = &a5[v39];
          }

          else
          {
            v45 = a5;
          }

          sub_1C458BA48(isUniquelyReferenced_nonNull_native, v45, 1, v42);
          v44 = v46;
        }

        if (*(v38 + 16))
        {
          a5 = *(v44 + 16);
          v7 = (*(v44 + 24) >> 1) - a5;
          v47 = v44;
          v48 = *(type metadata accessor for ViewDatabaseArtifact.Property() - 8);
          if (v7 < v39)
          {
            goto LABEL_63;
          }

          v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
          v7 = v47;
          v50 = *(v48 + 72);
          swift_arrayInitWithCopy();

          if (v39)
          {
            v51 = *(v47 + 16);
            v52 = __OFADD__(v51, v39);
            v53 = v51 + v39;
            if (v52)
            {
              goto LABEL_64;
            }

            *(v47 + 16) = v53;
          }
        }

        else
        {
          v7 = v44;

          if (v39)
          {
            goto LABEL_62;
          }
        }

        v29 &= v29 - 1;
        sub_1C440962C(&v99);
        v32 = v7;
        if (!v29)
        {
          goto LABEL_17;
        }
      }

LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      sub_1C44066DC();
    }

    else
    {
      while (1)
      {
LABEL_17:
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        if (v33 >= v30)
        {
          break;
        }

        v29 = *(v12 + 64 + 8 * v33);
        ++v31;
        if (v29)
        {
          v31 = v33;
          goto LABEL_21;
        }
      }

      v84 = v32;

      v99 = 0;
      v100 = 0xE000000000000000;
      sub_1C4F02248();
      sub_1C43FE984();
      MEMORY[0x1C6940010](0xD000000000000022);
      sub_1C4499338(1uLL, v88, v92);
      a5 = v54;
      v12 = v55;
      v57 = v56;
      sub_1C4F02248();

      sub_1C43FCA20();
      v97 = v58;
      MEMORY[0x1C6940010](v94, v96);
      v31 = v57 >> 1;
      if (v89)
      {
        v59 = 1413891404;
      }

      else
      {
        v59 = 0x52454E4E49;
      }

      if (v89)
      {
        v7 = 0xE400000000000000;
      }

      else
      {
        v7 = 0xE500000000000000;
      }

      v60 = &a5[32 * v12 + 16];
      v61 = v95;
      while (v31 != v12)
      {
        if (v12 >= v31)
        {
          goto LABEL_60;
        }

        ++v12;
        v63 = *v60;
        v62 = *(v60 + 1);
        v64 = *(v60 - 2);
        v65 = *(v60 - 1);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F02248();

        MEMORY[0x1C6940010](v59, v7);

        MEMORY[0x1C6940010](0x204E494F4A20, 0xE600000000000000);
        v66 = sub_1C4402B58();
        MEMORY[0x1C6940010](v66);
        MEMORY[0x1C6940010](542002976, 0xE400000000000000);
        v67 = sub_1C4402B58();
        MEMORY[0x1C6940010](v67);
        MEMORY[0x1C6940010](46, 0xE100000000000000);
        v68 = v63;
        v61 = v95;
        MEMORY[0x1C6940010](v68, v62);
        MEMORY[0x1C6940010](540884256, 0xE400000000000000);
        MEMORY[0x1C6940010](v94, v96);
        MEMORY[0x1C6940010](46, 0xE100000000000000);
        MEMORY[0x1C6940010](v93, v95);
        a5 = 0xE100000000000000;
        MEMORY[0x1C6940010](32, 0xE100000000000000);

        v60 += 32;
      }

      swift_unknownObjectRelease();

      MEMORY[0x1C6940010](v97, 0xEE00204D4F524620);

      MEMORY[0x1C6940010](0xD000000000000036, 0x80000001C4FB89C0);
      if (a4)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v61 = a4;
        v31 = v85;
        v12 = v86;
        v69 = a3;
      }

      else
      {
        v69 = v93;
        v31 = v85;
        v12 = v86;
      }

      MEMORY[0x1C6940010](v69, v61);

      MEMORY[0x1C6940010](0x28204E4920, 0xE500000000000000);
      v70 = *(v31 + 16);
      if (v70)
      {
        v98 = MEMORY[0x1E69E7CC0];
        sub_1C44CD9C0();
        v71 = *(v98 + 16);
        v72 = 16 * v71;
        do
        {
          v73 = v71 + 1;
          if (v71 >= *(v98 + 24) >> 1)
          {
            sub_1C44CD9C0();
          }

          *(v98 + 16) = v73;
          v74 = v98 + v72;
          *(v74 + 32) = 63;
          *(v74 + 40) = 0xE100000000000000;
          v72 += 16;
          v71 = v73;
          --v70;
        }

        while (v70);
      }

      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C4432C38(&qword_1EDDFCED0);
      v75 = sub_1C4F01048();
      v77 = v76;

      MEMORY[0x1C6940010](v75, v77);

      MEMORY[0x1C6940010](41, 0xE100000000000000);
      v7 = v99;
      a5 = v100;
      if (qword_1EDDFECD0 != -1)
      {
        goto LABEL_65;
      }
    }

    v78 = sub_1C4F00978();
    sub_1C442B738(v78, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v79 = sub_1C4F00968();
    v80 = sub_1C4F01CC8();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v99 = v82;
      *v81 = 136315138;
      *(v81 + 4) = sub_1C441D828(v7, a5, &v99);
      _os_log_impl(&dword_1C43F8000, v79, v80, "Query: %s", v81, 0xCu);
      sub_1C440962C(v82);
      MEMORY[0x1C6942830](v82, -1, -1);
      MEMORY[0x1C6942830](v81, -1, -1);
    }

    v26 = (*(v87 + 16))(v7, a5, v84, v31, v12);
  }

  else
  {

    if (qword_1EDDFECD0 != -1)
    {
      sub_1C44066DC();
    }

    v21 = sub_1C4F00978();
    sub_1C442B738(v21, qword_1EDE2DF70);
    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CD8();
    if (sub_1C43FCEA4(v23))
    {
      *swift_slowAlloc() = 0;
      sub_1C440BAE8(&dword_1C43F8000, v24, v25, "Error: No dependency tables specified");
      sub_1C43FE9D4();
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v26;
}

uint64_t sub_1C4BDF3EC@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_1C4609884(*(a3 + 56) + 48 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1C4BDF444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0 || (sub_1C442DF94(a1, a2, v4, a4), v9 ^ v10 | v8))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(v7 + 8 * (v5 >> 6) + 64) >> v5) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(v7 + 36) == v6)
  {
    v11 = (*(v7 + 56) + 16 * v5);
    v12 = *v11;
    v13 = v11[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return;
  }

LABEL_8:
  __break(1u);
}

void sub_1C4BDF4BC(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0 || (sub_1C442DF94(a1, a2, a3, a4), v10 ^ v11 | v9))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v8 + 8 * (a1 >> 6) + 64) >> a1) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v8 + 36) != v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v12 = *(v8 + 56);
  v13 = sub_1C4EF9DD8();
  v14 = sub_1C43FBCE0(v13);
  v16 = *(v15 + 16);
  v17 = v12 + *(v15 + 72) * a1;

  v16(a5, v17, v14);
}

void sub_1C4BDF568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0 || (sub_1C442DF94(a1, a2, v4, a4), v9 ^ v10 | v8))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(v7 + 8 * (v5 >> 6) + 64) >> v5) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(v7 + 36) == v6)
  {
    v11 = *(*(v7 + 56) + 8 * v5);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return;
  }

LABEL_8:
  __break(1u);
}

void sub_1C4BDF5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0 || (sub_1C442DF94(a1, a2, v4, a4), v9 ^ v10 | v8))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(v7 + 8 * (v5 >> 6) + 64) >> v5) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(v7 + 36) == v6)
  {
    v11 = *(*(v7 + 56) + 8 * v5);
    return;
  }

LABEL_8:
  __break(1u);
}

uint64_t sub_1C4BDF610(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4870, &unk_1C4F5C210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4BDF680()
{
  result = qword_1EDDFF3A0;
  if (!qword_1EDDFF3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF3A0);
  }

  return result;
}

uint64_t sub_1C4BDF6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v36 = a1;
  v5 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v33 - v7;
  v9 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v10 = *(v9 - 8);
  v34 = v9;
  v35 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  v14 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - v17;
  v19 = v3[1];
  v20 = v3[2];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  v40[6] = a3;
  v21 = v3[4];
  v22 = v3[5];
  v33 = v3;
  v39[3] = sub_1C4EFBD38();
  v39[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v39);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD48();
  v40[3] = sub_1C4EFB298();
  v40[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v40);
  sub_1C456902C(&qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4401CBC(&qword_1EDDFA5B0, &qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4BE2F48();
  sub_1C4F01458();
  sub_1C440962C(v39);
  v23 = v34;
  sub_1C4EFBCD8();
  (*(v35 + 8))(v13, v23);
  sub_1C440962C(v40);
  v24 = v37;
  sub_1C4EFB898();
  result = (*(v15 + 8))(v18, v14);
  if (!v24)
  {
    sub_1C4BC76D8(result);
    sub_1C4EFBE98();

    v26 = v38;
    result = sub_1C4428DA0();
    v27 = result;
    v28 = 0;
    v36 = v26 & 0xFFFFFFFFFFFFFF8;
    v37 = v26 & 0xC000000000000001;
    while (1)
    {
      if (v27 == v28)
      {
      }

      if (v37)
      {
        result = MEMORY[0x1C6940F90](v28, v26);
      }

      else
      {
        if (v28 >= *(v36 + 16))
        {
          goto LABEL_13;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      if (__OFADD__(v28, 1))
      {
        break;
      }

      v40[0] = sub_1C4EFBBD8();
      v40[1] = v30;
      v40[2] = v31;
      sub_1C456902C(&qword_1EC0C4878, &qword_1C4F5C358);
      sub_1C4401CBC(&qword_1EDDDB828, &qword_1EC0C4878, &qword_1C4F5C358);
      sub_1C4EFB798();
      v32 = sub_1C4EFB768();
      sub_1C440BAA8(v8, 0, 1, v32);
      sub_1C4EFC0A8();
      sub_1C4AE5118(v8);

      ++v28;
      v26 = v38;
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

void sub_1C4BDFB60()
{
  sub_1C43FE96C();
  v40 = v1;
  v41 = v2;
  v39 = v3;
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v36 - v6;
  v8 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v37 = sub_1C43FCDF8(v8);
  v38 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v13 = &v36 - v12;
  v14 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v15 = sub_1C43FCDF8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v36 - v20;
  v22 = *v0;
  v23 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  v24 = v0[4];
  v25 = v0[5];
  v36 = v0;
  v42[3] = sub_1C4EFBD38();
  v42[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v42);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD48();
  v43[3] = sub_1C4EFB298();
  v43[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v43);
  sub_1C456902C(&qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4401CBC(&qword_1EDDFA5B0, &qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4BE2F48();
  sub_1C4F01458();
  sub_1C440962C(v42);
  v26 = v37;
  sub_1C4EFBCD8();
  (*(v38 + 8))(v13, v26);
  sub_1C440962C(v43);
  v27 = v40;
  sub_1C4EFB898();
  v28 = (*(v17 + 8))(v21, v14);
  if (v27)
  {
LABEL_11:
    sub_1C43FBC80();
  }

  else
  {
    sub_1C4BC77A4(v28);
    sub_1C4EFBE98();

    v29 = v41;
    v30 = sub_1C4428DA0();
    v31 = 0;
    v39 = v29 & 0xFFFFFFFFFFFFFF8;
    v40 = v29 & 0xC000000000000001;
    while (1)
    {
      if (v30 == v31)
      {

        goto LABEL_11;
      }

      if (v40)
      {
        MEMORY[0x1C6940F90](v31, v29);
      }

      else
      {
        if (v31 >= *(v39 + 16))
        {
          goto LABEL_13;
        }

        v32 = *(v29 + 8 * v31 + 32);
      }

      if (__OFADD__(v31, 1))
      {
        break;
      }

      v43[0] = sub_1C4EFBBD8();
      v43[1] = v33;
      v43[2] = v34;
      sub_1C456902C(&qword_1EC0C4878, &qword_1C4F5C358);
      sub_1C4401CBC(&qword_1EDDDB828, &qword_1EC0C4878, &qword_1C4F5C358);
      sub_1C4EFB798();
      v35 = sub_1C4EFB768();
      sub_1C440BAA8(v7, 0, 1, v35);
      sub_1C4EFC0A8();
      sub_1C4AE5118(v7);

      ++v31;
      v29 = v41;
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_1C4BDFFC4@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  a1[3] = &type metadata for CustomRowDatabaseTable;
  a1[4] = &off_1F43E71A0;
  v3 = swift_allocObject();
  *a1 = v3;
  memcpy((v3 + 16), v1, 0x48uLL);
  return sub_1C46A9810(__dst, &v5);
}

uint64_t sub_1C4BE0044()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t sub_1C4BE0084()
{
  v1 = *(*(v0 + 96) + 16);

  sub_1C446C37C(sub_1C4BE2FA0, v0);
}

void sub_1C4BE00E4(uint64_t a1, void *a2)
{
  memcpy(__dst, a2 + 12, sizeof(__dst));
  sub_1C4D03CE4();
  if (!v2)
  {
    v4 = a2[22];
    if (v4)
    {
      v5 = a2[21];
      v6 = a2[22];
      v7 = a2[23];
      v8 = a2[24];
      v9 = a2[25];
      v10 = a2[26];
      v11 = a2[27];
      _s23UpdatedObjectDiffWriterCMa();
      v13 = swift_allocObject();
      sub_1C4BC3C1C(v5, v4);

      sub_1C4B8B458();
      sub_1C4B8B8EC();
    }
  }
}

uint64_t sub_1C4BE0210(void *a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v104 = a4;
  v105 = a5;
  v102 = a2;
  v103 = a3;
  v107 = a1;
  v5 = sub_1C4F00908();
  v6 = sub_1C43FCDF8(v5);
  v96 = v7;
  v97 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  v95 = v10;
  v11 = sub_1C4F008B8();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v110 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v106 = &v95 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v95 - v21;
  v111 = sub_1C4F008F8();
  v23 = sub_1C43FCDF8(v111);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBFDC();
  v109 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v95 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v95 - v33;
  v35 = sub_1C4F00978();
  v36 = sub_1C43FCDF8(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v42 = &v95 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v95 - v44;
  v46 = sub_1C4EFD618();
  v47 = sub_1C43FCDF8(v46);
  v99 = v48;
  v100 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FD2D8();
  v108 = v51;
  sub_1C4C674A0();
  v101 = v52;
  v102 = v53;
  v103 = v54;
  sub_1C4F00188();
  v104 = v38;
  v105 = v35;
  (*(v38 + 16))(v42, v45, v35);
  sub_1C4F008C8();
  sub_1C4F008D8();
  sub_1C4F00898();
  v55 = sub_1C4F008D8();
  v56 = sub_1C4F01E28();
  if (sub_1C4F01F28())
  {
    v57 = swift_slowAlloc();
    v98 = v25;
    v58 = v14;
    v59 = v11;
    v60 = v57;
    *v57 = 0;
    v61 = sub_1C4F008A8();
    _os_signpost_emit_with_name_impl(&dword_1C43F8000, v55, v56, v61, "CustomSQLRowView.performUpdate.loadRows", "", v60, 2u);
    v11 = v59;
    v14 = v58;
    v25 = v98;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830](v62);
  }

  (*(v14 + 16))(v106, v22, v11);
  v63 = sub_1C4F00948();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  sub_1C4F00938();
  v66 = v111;
  (*(v25 + 2))(v31, v34, v111);
  v67 = v22;
  v68 = v108;
  sub_1C4EFD5E8();
  v69 = *(v14 + 8);
  v106 = (v14 + 8);
  v98 = v69;
  v69(v67, v11);
  v70 = *(v25 + 1);
  v70(v34, v66);
  (*(v104 + 8))(v45, v105);
  v71 = *(v107 + 24);
  v72 = *(v107 + 32);
  sub_1C4409678(v107, v71);
  v73 = (*(v72 + 24))(v101, v103, v102, v71, v72);

  sub_1C4EFD5C8();
  v107 = sub_1C4EFD5F8();
  v74 = v11;
  v76 = v75;
  v77 = sub_1C4EFD608();
  v78 = sub_1C4F008D8();
  sub_1C4F00928();
  LODWORD(v105) = sub_1C4F01E18();
  result = sub_1C4F01F28();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  v80 = v78;
  v103 = v70;
  v104 = v74;
  if ((v76 & 1) == 0)
  {
    v81 = v107;
    if (v107)
    {
      v82 = v77;
      v83 = v96;
LABEL_11:

      sub_1C4F00958();
      v107 = v82;

      v84 = *(v83 + 88);
      v85 = sub_1C43FBC98();
      if (v86(v85) == *MEMORY[0x1E69E93E8])
      {
        v87 = "[Error] Interval already ended";
      }

      else
      {
        v88 = *(v83 + 8);
        v89 = sub_1C43FBC98();
        v90(v89);
        v87 = "";
      }

      v78 = v80;
      v91 = swift_slowAlloc();
      *v91 = 0;
      v92 = sub_1C4F008A8();
      _os_signpost_emit_with_name_impl(&dword_1C43F8000, v80, v105, v92, v81, v87, v91, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830](v93);
      v70 = v103;
      v74 = v104;
      v68 = v108;
LABEL_15:

      v98(v110, v74);
      v94 = sub_1C43FBC98();
      (v70)(v94);
      (*(v99 + 8))(v68, v100);
      return v73;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(v107))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v107 & 0xFFFFF800) != 0xD800)
  {
    v82 = v77;
    v83 = v96;
    if (v107 >> 16 <= 0x10)
    {
      v81 = &v112;
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1C4BE0910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v133 = v21;
  v24 = v20;
  v144 = v25;
  v143 = v26;
  v142 = v27;
  v29 = v28;
  v130 = sub_1C4F00908();
  v30 = sub_1C43FCDF8(v130);
  v129 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v34);
  v148 = sub_1C4F008B8();
  v35 = sub_1C43FCDF8(v148);
  v147 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD2C8(&v127 - v41);
  v146 = sub_1C4F008F8();
  v42 = sub_1C43FCDF8(v146);
  v153 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FD2C8(&v127 - v48);
  v150 = sub_1C4F00978();
  v49 = sub_1C43FCDF8(v150);
  v149 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v127 - v54;
  v132 = sub_1C4EFD618();
  v56 = sub_1C43FCDF8(v132);
  v131 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FD2D8();
  v152 = v60;
  v61 = swift_allocObject();
  *(v61 + 16) = v29;

  v140 = v29;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F00188();
  v62 = sub_1C440F54C();
  *(v62 + 16) = 34;
  v63 = sub_1C440F54C();
  *(v63 + 16) = 8;
  sub_1C44042C4();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_1C4BE1C28;
  *(v64 + 24) = v24;
  v141 = v24;
  sub_1C44042C4();
  v65 = swift_allocObject();
  *(v65 + 16) = sub_1C4AD71F0;
  *(v65 + 24) = v64;
  v66 = sub_1C440F54C();
  *(v66 + 16) = 2;
  v67 = sub_1C440F54C();
  *(v67 + 16) = 8;
  sub_1C44042C4();
  v68 = swift_allocObject();
  *(v68 + 16) = sub_1C4A9493C;
  *(v68 + 24) = v61;
  sub_1C44042C4();
  v69 = swift_allocObject();
  *(v69 + 16) = sub_1C4A94948;
  *(v69 + 24) = v68;
  v136 = sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0F820;
  *(inited + 32) = sub_1C44549EC;
  *(inited + 40) = v62;
  *(inited + 48) = sub_1C44549F4;
  *(inited + 56) = v63;
  *(inited + 64) = sub_1C4454B88;
  *(inited + 72) = v65;
  *(inited + 80) = sub_1C44549F4;
  *(inited + 88) = v66;
  *(inited + 96) = sub_1C44549F4;
  *(inited + 104) = v67;
  *(inited + 112) = sub_1C4716C58;
  *(inited + 120) = v69;
  v71 = *(v149 + 16);
  v137 = v55;
  v71(v134, v55, v150);
  sub_1C4F008C8();
  sub_1C4F008D8();
  v72 = v135;
  sub_1C4F00898();
  v73 = sub_1C4F008D8();
  v74 = sub_1C4F01E28();
  if (sub_1C4F01F28())
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v77 = 0;
    v155 = 0;
    v154 = v76;
    *v75 = 514;
    v156[0] = v75 + 2;
    v78 = v147;
    while (v77 != 96)
    {
      v80 = *(inited + v77 + 32);
      v79 = *(inited + v77 + 40);

      v80(v156, &v155, &v154);

      v77 += 16;
    }

    v82 = v72;
    v83 = sub_1C4F008A8();
    _os_signpost_emit_with_name_impl(&dword_1C43F8000, v73, v74, v83, "CustomSQLRowView.performUpdate", "viewName=%{public}s, subjectIds=%{public}ld", v75, 0x16u);
    sub_1C440962C(v76);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    v81 = v146;
  }

  else
  {

    v78 = v147;
    v81 = v146;
    v82 = v72;
  }

  v84 = v148;
  (*(v78 + 16))(v139, v82, v148);
  v85 = sub_1C4F00948();
  v86 = *(v85 + 48);
  v87 = *(v85 + 52);
  swift_allocObject();
  sub_1C4F00938();
  v88 = v153;
  v89 = v151;
  (*(v153 + 16))(v138, v151, v81);
  sub_1C4EFD5E8();
  v138 = *(v78 + 8);
  v138(v82, v84);
  v139 = *(v88 + 8);
  v153 = v88 + 8;
  v139(v89, v81);
  (*(v149 + 8))(v137, v150);
  v90 = v141;
  v91 = v140;
  v92 = sub_1C4BE0210((v141 + 56), *(v141 + 40), *(v141 + 48), *(v141 + 32), v140);
  v93 = *(*(v90 + 96) + 16);
  MEMORY[0x1EEE9AC00](v92);
  *(&v127 - 6) = v90;
  *(&v127 - 5) = v94;
  v95 = v142;
  *(&v127 - 4) = v91;
  *(&v127 - 3) = v95;
  *(&v127 - 2) = v143;
  *(&v127 - 8) = v144 & 1;

  sub_1C49A56B8();
  v150 = v96;
  v149 = v97;
  v144 = v98;

  v99 = swift_allocObject();
  *(v99 + 16) = v92;
  v100 = sub_1C440F54C();
  *(v100 + 16) = 2;
  v101 = sub_1C440F54C();
  *(v101 + 16) = 8;
  sub_1C44042C4();
  v102 = swift_allocObject();
  *(v102 + 16) = sub_1C4BE2F40;
  *(v102 + 24) = v99;
  sub_1C44042C4();
  v103 = swift_allocObject();
  *(v103 + 16) = sub_1C4A95948;
  *(v103 + 24) = v102;
  v104 = swift_initStackObject();
  *(v104 + 16) = xmmword_1C4F0C890;
  *(v104 + 32) = sub_1C44549F4;
  *(v104 + 40) = v100;
  *(v104 + 48) = sub_1C44549F4;
  *(v104 + 56) = v101;
  *(v104 + 64) = sub_1C4A95928;
  *(v104 + 72) = v103;
  sub_1C4EFD5C8();
  v151 = sub_1C4EFD5F8();
  v106 = v105;
  v107 = v78 + 8;
  sub_1C4EFD608();
  v108 = sub_1C4F008D8();
  v109 = v145;
  sub_1C4F00928();
  v110 = sub_1C4F01E18();
  if ((sub_1C4F01F28() & 1) == 0)
  {

    v138(v109, v148);
    v115 = sub_1C4412758();
    v116(v115);
    (*(v131 + 8))(v152, v132);
LABEL_23:
    sub_1C43FBC80();
    return;
  }

  LODWORD(v143) = v110;
  v147 = v107;
  if ((v106 & 1) == 0)
  {
    v111 = v152;
    if (v151)
    {
      v112 = v130;
      v113 = v129;
      v114 = v128;
LABEL_16:

      sub_1C4F00958();

      if ((*(v113 + 88))(v114, v112) == *MEMORY[0x1E69E93E8])
      {
        v117 = 0;
        v118 = "[Error] Interval already ended";
      }

      else
      {
        (*(v113 + 8))(v114, v112);
        v118 = "rows=%{public}ld";
        v117 = 1;
      }

      v119 = swift_slowAlloc();
      v120 = 0;
      v155 = 0;
      v154 = 0;
      *v119 = 0;
      v119[1] = v117;
      v156[0] = v119 + 2;
      while (v120 != 48)
      {
        v122 = *(v104 + v120 + 32);
        v121 = *(v104 + v120 + 40);

        v122(v156, &v155, &v154);

        v120 += 16;
      }

      v123 = v145;
      v124 = sub_1C4F008A8();
      _os_signpost_emit_with_name_impl(&dword_1C43F8000, v108, v143, v124, v151, v118, v119, 0xCu);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      v138(v123, v148);
      v125 = sub_1C4412758();
      v126(v125);
      (*(v131 + 8))(v111, v132);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_25;
  }

  v111 = v152;
  if (HIDWORD(v151))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v151 & 0xFFFFF800) != 0xD800)
  {
    v112 = v130;
    v113 = v129;
    v114 = v128;
    if (v151 >> 16 <= 0x10)
    {
      v151 = &a10;
      goto LABEL_16;
    }

    goto LABEL_26;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1C4BE15E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

void sub_1C4BE1614(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, unint64_t, uint64_t)@<X5>, int a7@<W6>, void *a8@<X8>)
{
  LODWORD(v49) = a7;
  v51 = a6;
  v50 = a5;
  v48 = a8;
  v13 = sub_1C4EFF0C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a2 + 12, sizeof(__dst));
  sub_1C4BDF6D4(a1, a3, a4);
  if (!v8)
  {
    v46 = a4;
    v54 = v17;
    v18 = a2[22];
    if (v18)
    {
      v53 = v14;
      v52 = v13;
      v19 = a2[26];
      v20 = a2[27];
      v21 = a2[24];
      v22 = a2[25];
      v23 = a2[23];
      v24 = a2[21];
      v56[5] = v24;
      v56[6] = v18;
      v56[7] = v23;
      v56[8] = v21;
      v56[9] = v22;
      v56[10] = v19;
      v56[11] = v20;
      _s23UpdatedObjectDiffWriterCMa();
      v47 = swift_allocObject();
      sub_1C4BC3C1C(v24, v18);

      sub_1C4B8B458();
      v26 = 0;
      v27 = v46;
      v28 = *(v46 + 16);
      v29 = v52;
      if (v28)
      {
        v49 = 0;
        v58 = MEMORY[0x1E69E7CC0];
        v47 = v25;

        sub_1C44CD9C0();
        v30 = v58;
        v51 = *(v53 + 16);
        v31 = v27 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v50 = *(v53 + 72);
        v53 += 16;
        v32 = (v53 - 8);
        v33 = v54;
        do
        {
          v51(v33, v31, v29);
          v55 = sub_1C4EFF0A8();
          v34 = sub_1C4F02858();
          v33 = v54;
          v35 = v34;
          v37 = v36;
          (*v32)(v54, v29);
          v58 = v30;
          v38 = *(v30 + 16);
          if (v38 >= *(v30 + 24) >> 1)
          {
            sub_1C44CD9C0();
            v33 = v54;
            v30 = v58;
          }

          *(v30 + 16) = v38 + 1;
          v39 = v30 + 16 * v38;
          *(v39 + 32) = v35;
          *(v39 + 40) = v37;
          v31 += v50;
          --v28;
          v29 = v52;
        }

        while (v28);
        v41 = v48;
        v26 = v49;
      }

      else
      {

        v30 = MEMORY[0x1E69E7CC0];
        v41 = v48;
      }

      v56[3] = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      v56[4] = sub_1C4401CBC(&qword_1EDDFCEC0, &unk_1EC0B9620, &unk_1C4F0E870);
      v56[0] = v30;
      sub_1C4B8C0BC();

      if (v26)
      {

        sub_1C440962C(v56);
      }

      else
      {
        sub_1C440962C(v56);

        sub_1C4B8BB5C();
        v43 = v42;
        v45 = v44;

        *v41 = v43;
        v41[1] = v45;
        *(v41 + 16) = 0;
      }
    }

    else
    {
      v40 = v48;
      *v48 = 0;
      v40[1] = 0;
      *(v40 + 16) = 1;
    }
  }
}

void *sub_1C4BE1AB0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  sub_1C440962C(v0 + 7);
  memcpy(v5, v0 + 12, sizeof(v5));
  sub_1C4BCDE54(v5);
  return v0;
}

uint64_t sub_1C4BE1B08()
{
  sub_1C4BE1AB0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BE1B60(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C4BE1B78(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C4BE1BB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C4BE1C30(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C44E9220();
  if (!v4)
  {
    v10 = v9;
    v11 = a3[9];
    if (v11)
    {
      v12 = a3[14];
      v13 = a3[12];
      v26 = a3[11];
      v14 = a3[10];
      v15 = a3[8];
      v16 = MEMORY[0x1E69E7CC0];
      if (v12)
      {
        v16 = v12;
      }

      v22 = v16;
      *&v24 = v15;
      *(&v24 + 1) = v11;
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440E8AC();
      a4[3] = &type metadata for CustomRowDatabaseTable;
      a4[4] = &off_1F43E71A0;
      v17 = swift_allocObject();
      *a4 = v17;
      *(v17 + 16) = v10;
      *(v17 + 24) = v15;
      *(v17 + 32) = v11;
      *(v17 + 40) = v14;
      *(v17 + 48) = v26;
      *(v17 + 56) = v13;
      *(v17 + 64) = v22;
      *(v17 + 72) = v24;
    }

    else
    {
      sub_1C440B538();
      v18 = sub_1C43FFB2C();
      *v19 = a1;
      v19[1] = a2;
      sub_1C440B528(v18, v19);
      sub_1C4411340(v23, v25, v20, v21);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4BE1D98()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v62 = 0;
  v63 = 0;
  sub_1C44E9220();
  if (!v1)
  {
    v9 = v3[9];
    if (!v9)
    {
      sub_1C440B538();
      v36 = sub_1C43FFB2C();
      *v37 = v7;
      v37[1] = v5;
      sub_1C440B528(v36, v37);
      sub_1C4411340(v61[0], v61[1], v38, v39);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      goto LABEL_2;
    }

    v53 = v0;
    v10 = v3[14];
    v11 = v3[12];
    v58 = v3[11];
    v74 = v8;
    v12 = v3[10];
    v52 = (v3 + 10);
    v13 = v3[8];
    v56 = v13;
    v14 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v14 = v10;
    }

    v57 = v14;
    v59.n128_u64[0] = v13;
    v59.n128_u64[1] = v9;
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440E8AC();
    v55 = v9;
    v15 = (v3 + *(_s6ConfigVMa() + 52));
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    v20 = v15[4];
    v21 = v15[5];
    v22 = v15[6];
    v61[0].n128_u64[0] = v74;
    v61[0].n128_u64[1] = v56;
    v61[1].n128_u64[0] = v9;
    v23 = v16;
    v61[1].n128_u64[1] = v12;
    v61[2].n128_u64[0] = v58;
    v61[2].n128_u64[1] = v11;
    v61[3].n128_u64[0] = v57;
    v61[3].n128_u64[1] = v59.n128_u64[0];
    v24 = v17;
    v61[4].n128_u64[0] = v55;
    v61[4].n128_u64[1] = v16;
    v61[5].n128_u64[0] = v17;
    v61[5].n128_u64[1] = v18;
    v57 = v19;
    v58 = v18;
    v61[6].n128_u64[0] = v19;
    v61[6].n128_u64[1] = v20;
    v55 = v21;
    v56 = v20;
    v61[7].n128_u64[0] = v21;
    v61[7].n128_u64[1] = v22;
    v54 = v22;
    memcpy(v64, v61, sizeof(v64));
    v25 = v3[9];
    if (!v25)
    {
      sub_1C450B034();
      v40 = sub_1C43FFB2C();
      *v41 = v7;
      v41[1] = v5;
      sub_1C440B528(v40, v41);
      sub_1C4411340(v59, v60, v42, v43);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4BC3C1C(v23, v24);
      sub_1C4BCDE54(v61);
      goto LABEL_2;
    }

    v27 = v3[16];
    v26 = v3[17];
    v28 = v3[18];
    v29 = v3[19];
    v30 = v3[20];
    v65[0] = v3[8];
    v65[1] = v25;
    v31 = v52[1];
    v66 = *v52;
    v67 = v31;
    v68 = v52[2];
    v69 = v27;
    v70 = v26;
    v32 = v28;
    v71 = v28;
    v72 = v29;
    v73 = v30;
    sub_1C4BC3C1C(v23, v24);
    if (v26)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4C67CE4();
      v33 = *(_s27CustomRowViewClientProviderVMa(0) + 20);
      sub_1C4432C64();
      sub_1C4C67D64();
      v27 = v34;
      v46 = v35;

      v26 = v46;
      if (!v29)
      {
        goto LABEL_14;
      }
    }

    else if (!v29)
    {
LABEL_14:
      v48 = 0;
      v45 = v32;
      goto LABEL_15;
    }

    sub_1C4C67CE4();
    v44 = *(_s27CustomRowViewClientProviderVMa(0) + 20);
    sub_1C4432C64();
    sub_1C4C67D64();
    v48 = v47;
LABEL_15:
    v49 = *(v74 + 16);
    MEMORY[0x1EEE9AC00](v45);
    v51[2] = v64;
    v51[3] = v65;
    v51[4] = v27;
    v51[5] = v26;
    v51[6] = v50;
    v51[7] = v48;

    sub_1C446C37C(sub_1C4BE3268, v51);
    sub_1C4BCDE54(v61);
  }

LABEL_2:
  sub_1C43FBC80();
}

void sub_1C4BE216C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3[12])
  {
    v13 = a3[12];
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  memcpy(__dst, a2, sizeof(__dst));
  v14 = a3[5];
  v15 = a3[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = v14;
  v17 = v28;
  sub_1C46A78E8(a1, v16, v15, a4, a5, a6, a7, v13);

  if (!v17)
  {
    v18 = *(a2 + 80);
    if (v18)
    {
      v19 = *(a2 + 72);
      v20 = *(a2 + 104);
      v25 = *(a2 + 88);
      v26 = v20;
      v27 = *(a2 + 120);
      v23 = v19;
      v24 = v18;
      sub_1C4B8C8BC();
    }
  }
}

void sub_1C4BE227C()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v34 = 0;
  v35 = 0;
  sub_1C44E9220();
  if (!v0)
  {
    v8 = v2[9];
    if (v8)
    {
      v9 = v2[14];
      v10 = v2[12];
      v30 = v2[11];
      v11 = v2[10];
      v12 = v2[8];
      v37 = v7;
      if (v9)
      {
        v13 = v9;
      }

      else
      {
        v13 = MEMORY[0x1E69E7CC0];
      }

      v33[0].n128_u64[0] = v2[8];
      v33[0].n128_u64[1] = v8;
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440E8AC();
      v32[0] = v37;
      v32[1] = v12;
      v32[2] = v8;
      v32[3] = v11;
      v32[4] = v30;
      v32[5] = v10;
      v32[6] = v13;
      *&v32[7] = v33[0];
      v14 = (v2 + *(_s6ConfigVMa() + 52));
      v15 = *v14;
      v28 = v14[1];
      v29 = v15;
      v16 = v14[2];
      v17 = v14[3];
      v18 = v14[4];
      v19 = v14[5];
      v20 = v14[6];
      memcpy(v33, v32, 0x48uLL);
      v33[4].n128_u64[1] = v15;
      v33[5].n128_u64[0] = v28;
      v33[5].n128_u64[1] = v16;
      v33[6].n128_u64[0] = v17;
      v33[6].n128_u64[1] = v18;
      v33[7].n128_u64[0] = v19;
      v33[7].n128_u64[1] = v20;
      v21 = memcpy(v36, v33, 0x80uLL);
      v30 = &v28;
      v22 = *(v37 + 16);
      MEMORY[0x1EEE9AC00](v21);
      v27[2] = v36;
      sub_1C4BC3C1C(v29, v28);
      sub_1C46A9810(v32, &v31);

      sub_1C446C37C(sub_1C4BE324C, v27);
      sub_1C4BCDE54(v33);

      sub_1C4AF99F4(v32);
    }

    else
    {
      sub_1C440B538();
      v23 = sub_1C43FFB2C();
      *v24 = v6;
      v24[1] = v4;
      sub_1C440B528(v23, v24);
      sub_1C4411340(v33[0], v33[1], v25, v26);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  sub_1C43FBC80();
}

void sub_1C4BE24A8(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_1C4D03CE4();
  if (!v2)
  {
    v4 = *(a2 + 88);
    v7[0] = *(a2 + 72);
    v7[1] = v4;
    v7[2] = *(a2 + 104);
    v8 = *(a2 + 120);
    if (*(&v7[0] + 1))
    {
      v5 = *(a2 + 104);
      v11 = *(a2 + 88);
      v12 = v5;
      v13 = *(a2 + 120);
      v10 = v7[0];
      _s23UpdatedObjectDiffWriterCMa();
      swift_allocObject();
      sub_1C4BE2FBC(v7, v6);

      sub_1C4B8B458();
      sub_1C4B8B8EC();
    }
  }
}

void sub_1C4BE260C()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = _s10ViewConfigVMa(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *v0;
  v12 = *(*v0 + 16);

  sub_1C443A738(v6, v4, v13, v14, v15, v16, v17, v18);
  if (v1)
  {
  }

  else
  {
    v90 = v6;
    v92 = v2;

    v19 = v10[26];
    v91 = v11;
    if (v19)
    {
      v20 = v10[25];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v21 = *(v10 + *(v7 + 76) + 8) != 0;
    v22 = _s31CustomSQLViewGenerationProviderVMa(0);
    v23 = v22[5];
    v24 = v22[6];
    sub_1C4432C64();
    sub_1C4C67D64();
    v26 = v25;
    v28 = v27;

    sub_1C4C68220();
    v30 = v29;
    v85 = v26;
    *(&v94[1] + 1) = sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    *&v94[2] = sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50);
    *&v94[0] = v30;
    v31 = sub_1C4C81ADC(v94);
    v81 = v28;
    v82 = v4;
    sub_1C440962C(v94);
    if (v10[33])
    {
      v32 = v10[33];
    }

    else
    {
      v32 = MEMORY[0x1E69E7CC0];
    }

    v33 = *(v32 + 16);
    v84 = v22;
    v87 = v31;
    v88 = v10;
    if (v33)
    {
      *&v94[0] = MEMORY[0x1E69E7CC0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44CD9C0();
      v34 = *&v94[0];
      v89 = v32;
      v35 = (v32 + 48);
      do
      {
        v36 = *(v35 - 1);
        v37 = *v35;
        *&v94[0] = v34;
        v39 = *(v34 + 16);
        v38 = *(v34 + 24);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (v39 >= v38 >> 1)
        {
          sub_1C44CD9C0();
          v34 = *&v94[0];
        }

        *(v34 + 16) = v39 + 1;
        v40 = v34 + 16 * v39;
        *(v40 + 32) = v36;
        *(v40 + 40) = v37;
        v35 += 7;
        --v33;
      }

      while (v33);

      v31 = v87;
      v10 = v88;
      v22 = v84;
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v34 = MEMORY[0x1E69E7CC0];
    }

    sub_1C4499940(v34, v41, v42, v43, v44, v45, v46, v47, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
    v49 = v48;
    v50 = v31 + 64;
    v51 = 1 << *(v31 + 32);
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    else
    {
      v52 = -1;
    }

    v53 = v52 & *(v31 + 64);
    v86 = (v51 + 63) >> 6;
    v89 = v48 + 56;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v54 = 0;
    v83 = v31 + 64;
LABEL_21:
    v55 = v92;
    if (v53)
    {
LABEL_26:
      v57 = (*(v31 + 48) + ((v54 << 10) | (16 * __clz(__rbit64(v53)))));
      v59 = *v57;
      v58 = v57[1];
      if (*(v49 + 16))
      {
        v53 &= v53 - 1;
        v60 = *(v49 + 40);
        v61 = v49;
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        v62 = sub_1C4F02B68();
        v63 = ~(-1 << *(v49 + 32));
        while (1)
        {
          v64 = v62 & v63;
          if (((*(v89 + (((v62 & v63) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v62 & v63)) & 1) == 0)
          {
            break;
          }

          v65 = (*(v49 + 48) + 16 * v64);
          if (*v65 != v59 || v65[1] != v58)
          {
            v49 = v61;
            v67 = sub_1C4F02938();
            v62 = v64 + 1;
            if ((v67 & 1) == 0)
            {
              continue;
            }
          }

          v49 = v61;
          v31 = v87;
          v10 = v88;
          v50 = v83;
          v22 = v84;
          goto LABEL_21;
        }
      }

      else
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      *&v94[0] = 0;
      *(&v94[0] + 1) = 0xE000000000000000;
      v73 = v82;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000040, 0x80000001C4FB8E80);
      MEMORY[0x1C6940010](v59, v58);

      MEMORY[0x1C6940010](41, 0xE100000000000000);
      v74 = v94[0];
      sub_1C450B034();
      v75 = sub_1C43FFB2C();
      *v76 = v90;
      *(v76 + 8) = v73;
      *(v76 + 16) = v74;
      sub_1C4411340(v94[0], v94[1], v75, v76);

      sub_1C445F57C(v88);
    }

    else
    {
      while (1)
      {
        v56 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          __break(1u);
          return;
        }

        if (v56 >= v86)
        {
          break;
        }

        v53 = *(v50 + 8 * v56);
        ++v54;
        if (v53)
        {
          v54 = v56;
          goto LABEL_26;
        }
      }

      if (*(v31 + 16))
      {
        sub_1C4C687F0(v31, v95);
      }

      else
      {
        v72 = *(*(v55 + v22[7]) + 16);
        v95[3] = type metadata accessor for GraphDatabase();
        v95[4] = &off_1F4405C68;
        v95[0] = v72;
      }

      v69 = v81;
      v68 = v82;
      v71 = v90;
      v70 = v91;
      sub_1C4C81AA0();
      sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
      if (swift_dynamicCast())
      {
        memcpy(v96, v94, sizeof(v96));
        sub_1C442E860(v95, v94);
        v78 = sub_1C4C68B88(v31);

        _s22CustomSQLViewGeneratorCMa();
        v79 = swift_allocObject();
        v79[2] = v71;
        v79[3] = v68;
        sub_1C441D670(v94, (v79 + 7));
        memcpy(v79 + 12, v96, 0x80uLL);
        v79[5] = v85;
        v79[6] = v69;
        v79[4] = v78;
      }

      else
      {

        sub_1C440B538();
        sub_1C43FFB2C();
        *v77 = v71;
        *(v77 + 8) = v68;
        *(v77 + 16) = xmmword_1C4F5B670;
        *(v77 + 32) = 0xD000000000000025;
        *(v77 + 40) = v70;
        *(v77 + 48) = v93;
        *(v77 + 64) = 0;
        swift_willThrow();
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C445F57C(v10);
      sub_1C440962C(v95);
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4BE2D7C()
{
  sub_1C4BE260C();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1C4BE2E24(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1C4C81AA0();
  if (!v3)
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if (swift_dynamicCast())
    {
      memcpy(a3, __src, 0x80uLL);
    }

    else
    {
      sub_1C450B034();
      sub_1C43FFB2C();
      *v7 = a1;
      *(v7 + 8) = a2;
      *(v7 + 16) = 0xD000000000000013;
      *(v7 + 24) = 0x80000001C4FB8E60;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0xE000000000000000;
      *(v7 + 48) = v8;
      *(v7 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

unint64_t sub_1C4BE2F48()
{
  result = qword_1EDDFCCA0;
  if (!qword_1EDDFCCA0)
  {
    sub_1C4EFF0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCCA0);
  }

  return result;
}

uint64_t sub_1C4BE2FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4880, &unk_1C4F5C360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C4BE3074()
{
  sub_1C4EF98F8();
  if (v0 <= 0x3F)
  {
    sub_1C4BE30F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4BE30F8()
{
  if (!qword_1EDDFCD88)
  {
    sub_1C4EF98F8();
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFCD88);
    }
  }
}

void sub_1C4BE3198()
{
  type metadata accessor for ViewGeneration.ViewClients(319);
  if (v0 <= 0x3F)
  {
    sub_1C4EF98F8();
    if (v1 <= 0x3F)
    {
      sub_1C4BE30F8();
      if (v2 <= 0x3F)
      {
        type metadata accessor for GraphStore();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void *sub_1C4BE328C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();

  if (!v4)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      swift_unownedRetainStrong();
      sub_1C4C5ACD4(0x656D655269726973, 0xED0000737265626DLL, __src);

      _s40DefaultResolverInteractionsViewGeneratorCMa();
      a4 = swift_allocObject();
      a4[2] = v11;
      a4[3] = v12;
      a4[4] = v13;
      a4[5] = v14;
      memcpy(a4 + 6, __src, 0x58uLL);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v8 = a1;
      *(v8 + 8) = a2;
      *(v8 + 16) = xmmword_1C4F5B670;
      *(v8 + 32) = 0xD000000000000025;
      *(v8 + 40) = 0x80000001C4FB83A0;
      *(v8 + 48) = v10;
      *(v8 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4BE344C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4BE328C(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4BE34F8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1C4F00978();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4BE35B8, 0, 0);
}

uint64_t sub_1C4BE35B8()
{
  v1 = v0[5];
  sub_1C4F00178();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "DefaultResolverInteractionsViewGenerator: performUpdate: it is unsupported.", v4, 2u);
    MEMORY[0x1C6942830](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  (*(v6 + 8))(v5, v8);
  sub_1C4D0E51C();

  v9 = v0[1];

  return v9();
}

void *sub_1C4BE36C8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];

  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[11];
  v8 = v0[13];
  v9 = v0[15];

  return v0;
}

uint64_t sub_1C4BE3754()
{
  sub_1C4BE36C8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BE37AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C44A7DA0;

  return sub_1C4BE34F8(a1);
}

void *sub_1C4BE3840()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return v0;
}

uint64_t sub_1C4BE3888()
{
  sub_1C4BE3840();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BE38E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 8))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4BE391C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

void sub_1C4BE3978(uint64_t a1@<X6>, uint64_t a2@<X7>, uint64_t *a3@<X8>)
{
  sub_1C44E9220();
  if (!v3)
  {
    v8 = v7;
    a3[3] = a1;
    a3[4] = a2;
    v9 = swift_allocObject();
    *a3 = v9;
    strcpy((v9 + 16), "interactions");
    *(v9 + 29) = 0;
    *(v9 + 30) = -5120;
    v10 = MEMORY[0x1E69E7CC0];
    *(v9 + 32) = v8;
    *(v9 + 40) = v10;
  }
}

void sub_1C4BE3A20()
{
  sub_1C44E9220();
  if (!v0)
  {
    sub_1C46BB164(0x7463617265746E69, 0xEC000000736E6F69, v1);
  }
}

void sub_1C4BE3AA4()
{
  v9 = 0;
  v10 = 0;
  sub_1C44E9220();
  if (!v0)
  {
    v2 = *(v1 + 16);
    MEMORY[0x1EEE9AC00](v1);
    strcpy(v5, "interactions");
    v5[13] = 0;
    v6 = -5120;
    v7 = v3;
    v8 = MEMORY[0x1E69E7CC0];
    sub_1C446C37C(sub_1C46BC374, &v4);
  }
}

uint64_t sub_1C4BE3C50()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C4BE3CA8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = 0;
  v8 = *(a1 + 16);
  do
  {
    if (v8 == v7)
    {
      break;
    }

    v9 = *(sub_1C4EFF0C8() - 8);
    sub_1C4BE46C4(a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++, a2, a3);
  }

  while (!v3);
}

uint64_t sub_1C4BE3D80(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = *(v8 + 16);
  sub_1C44205D4(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1], v11[2], v11[3], v11[4], v12);
  sub_1C442D5EC();
  sub_1C446C37C(sub_1C4BE51FC, v11);
}

uint64_t sub_1C4BE3DEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = *v8;
  sub_1C44205D4(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1], v11[2], v11[3], v11[4], v12);
  sub_1C442D5EC();
  sub_1C446C37C(sub_1C4BE5194, v11);
}

uint64_t sub_1C4BE3EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  sub_1C4BE2E24(a1, a2, __src);

  if (!v5)
  {
    memcpy(__dst, __src, sizeof(__dst));

    sub_1C46A9810(__dst, &v11);
    sub_1C4BCDE54(__src);
    _s36EntityImportanceSignalsViewGeneratorCMa();
    a4 = swift_allocObject();
    *(a4 + 16) = a5;
    memcpy((a4 + 24), __dst, 0x48uLL);
  }

  return a4;
}

uint64_t sub_1C4BE3F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4BE3EB0(a1, a2, 0, *v2, v2[1]);
  v5 = *(v3 + 8);

  return v5(v4);
}

uint64_t sub_1C4BE4034(uint64_t a1)
{
  v2 = sub_1C4EFD548();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v58 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1C456902C(&qword_1EC0C4718, &unk_1C4F5B7F0);
  v9 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v11 = v52 - v10;
  v12 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_1C43FBFDC();
  v69 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v52 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v52 - v19;
  v21 = sub_1C4EFF0C8();
  v22 = sub_1C43FCDF8(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBFDC();
  v54 = v25;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v70 = v52 - v28;
  v29 = 0;
  v30 = a1;
  v68 = *(a1 + 16);
  v64 = v31 + 16;
  v56 = (v5 + 32);
  v60 = (v5 + 8);
  v61 = (v31 + 8);
  v65 = v31;
  v53 = (v31 + 32);
  v32 = MEMORY[0x1E69E7CC0];
  v66 = v33;
  v57 = a1;
LABEL_2:
  v55 = v32;
  while (1)
  {
    v34 = v69;
    if (v68 == v29)
    {
      break;
    }

    v63 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v62 = *(v65 + 72);
    (*(v65 + 16))(v70, v30 + v63 + v62 * v29, v21, v27);
    sub_1C4EFF038();
    sub_1C4EFD4C8();
    sub_1C440BAA8(v17, 0, 1, v2);
    v35 = *(v67 + 48);
    sub_1C44A2E4C(v20, v11);
    sub_1C44A2E4C(v17, &v11[v35]);
    sub_1C440029C(v11);
    if (v36)
    {
      sub_1C4423A0C(v17, &qword_1EC0B8568, &unk_1C4F319B0);
      sub_1C4423A0C(v20, &qword_1EC0B8568, &unk_1C4F319B0);
      sub_1C440029C(&v11[v35]);
      if (v36)
      {
        sub_1C4423A0C(v11, &qword_1EC0B8568, &unk_1C4F319B0);
        v21 = v66;
LABEL_15:
        v39 = *v53;
        (*v53)(v54, v70, v21);
        v32 = v55;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        __dst[0] = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v41 = *(v32 + 16);
          sub_1C459D178();
          v32 = __dst[0];
        }

        v42 = *(v32 + 16);
        v43 = v42 + 1;
        if (v42 >= *(v32 + 24) >> 1)
        {
          v59 = v42 + 1;
          v55 = v42;
          sub_1C459D178();
          v43 = v59;
          v42 = v55;
          v32 = __dst[0];
        }

        ++v29;
        *(v32 + 16) = v43;
        v39(v32 + v63 + v42 * v62, v54, v21);
        goto LABEL_2;
      }

      goto LABEL_12;
    }

    sub_1C44A2E4C(v11, v34);
    sub_1C440029C(&v11[v35]);
    if (v36)
    {
      sub_1C4423A0C(v17, &qword_1EC0B8568, &unk_1C4F319B0);
      sub_1C4423A0C(v20, &qword_1EC0B8568, &unk_1C4F319B0);
      (*v60)(v34, v2);
LABEL_12:
      sub_1C4423A0C(v11, &qword_1EC0C4718, &unk_1C4F5B7F0);
      v21 = v66;
      goto LABEL_14;
    }

    v37 = v58;
    (*v56)(v58, &v11[v35], v2);
    sub_1C4BE51B4(&qword_1EDDFCCD8, MEMORY[0x1E69A92C8]);
    LODWORD(v59) = sub_1C4F010B8();
    v38 = *v60;
    (*v60)(v37, v2);
    sub_1C4423A0C(v17, &qword_1EC0B8568, &unk_1C4F319B0);
    sub_1C4423A0C(v20, &qword_1EC0B8568, &unk_1C4F319B0);
    v38(v69, v2);
    v30 = v57;
    sub_1C4423A0C(v11, &qword_1EC0B8568, &unk_1C4F319B0);
    v21 = v66;
    if (v59)
    {
      goto LABEL_15;
    }

LABEL_14:
    (*v61)(v70, v21);
    ++v29;
  }

  v72 = MEMORY[0x1E69E7CC0];
  v44 = v52[1];

  sub_1C4BE3CA8(v55, v44, &v72);

  memcpy(__dst, (v44 + 24), sizeof(__dst));
  sub_1C4BE3DEC(v72, v30, v45, v46, v47, v48, v49, v50);
}

void sub_1C4BE46C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v88 = a3;
  v89 = a1;
  v97 = sub_1C4EFEEF8();
  v101 = *(v97 - 8);
  v4 = v101;
  v5 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v92 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v86 - v9;
  v11 = type metadata accessor for Source();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v103 = v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v93 = v86 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v102 = v86 - v17;
  v104 = *(a2 + 16);
  sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
  v18 = sub_1C4EFF0C8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C4F0D130;
  v23 = *(v19 + 16);
  v86[1] = v19 + 16;
  v87 = v18;
  v86[0] = v23;
  v23(v22 + v21, v89, v18);
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v24 = *(v4 + 72);
  v25 = v101;
  v26 = (*(v101 + 80) + 32) & ~*(v101 + 80);
  *(swift_allocObject() + 16) = xmmword_1C4F0C890;
  sub_1C4EFEBB8();
  sub_1C4EFE318();
  sub_1C4EFE878();
  v27 = sub_1C4872C50();

  v99 = 0;
  v100 = 0;
  v94 = 0;
  v28 = *(v27 + 16);
  v95 = v27;
  v96 = v28;
  v91 = (v25 + 8);
  v90 = MEMORY[0x1E69E7CC0];
  p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
  while (1)
  {
    v30 = v100;
    if (v100 == v96)
    {

      sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_1C4F13950;
      v75 = v87;
      *(v74 + 56) = v87;
      *(v74 + 64) = sub_1C4BE51B4(&qword_1EDDFA1C8, MEMORY[0x1E69A9810]);
      v76 = sub_1C4422F90((v74 + 32));
      (v86[0])(v76, v89, v75);
      v77 = MEMORY[0x1E69E6370];
      v78 = MEMORY[0x1E69A0150];
      *(v74 + 96) = MEMORY[0x1E69E6370];
      *(v74 + 104) = v78;
      *(v74 + 72) = v94 & 1;
      *(v74 + 136) = v77;
      *(v74 + 144) = v78;
      *(v74 + 112) = v99 & 1;
      *(v74 + 176) = v77;
      *(v74 + 184) = v78;
      *(v74 + 152) = BYTE4(v99) & 1;
      v105 = v90;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C443D694();
      v79 = sub_1C4F01048();
      v81 = v80;

      v82 = MEMORY[0x1E69A0138];
      *(v74 + 216) = MEMORY[0x1E69E6158];
      *(v74 + 224) = v82;
      *(v74 + 192) = v79;
      *(v74 + 200) = v81;
      v83 = v88;
      sub_1C4588E94();
      v84 = *(*v83 + 16);
      sub_1C4589A7C();
      v85 = *v83;
      *(v85 + 16) = v84 + 1;
      *(v85 + 8 * v84 + 32) = v74;

      return;
    }

    if (v100 >= v96)
    {
      break;
    }

    v31 = type metadata accessor for GraphTriple(0);
    if (__OFADD__(v30, 1))
    {
      goto LABEL_44;
    }

    v32 = *(*(v31 - 8) + 80);
    v33 = v95 + ((v32 + 32) & ~v32) + *(*(v31 - 8) + 72) * v30;
    v100 = v30 + 1;
    v101 = v31;
    v34 = *(v33 + *(v31 + 36));
    v35 = sub_1C4BE51B4(&qword_1EDDDC168, type metadata accessor for Source);
    v105 = MEMORY[0x1C69407C0](0, v11, v35);
    v36 = 1;
    v37 = &dword_1EDE2D000;
    v104 = v33;
    v38 = v93;
    while (1)
    {
      if (p_info[213] != -1)
      {
        swift_once();
      }

      if (*(v37 + 414) < v36)
      {
        break;
      }

      sub_1C449E530(v36, v10);
      if (sub_1C44157D4(v10, 1, v11) == 1)
      {
        sub_1C4423A0C(v10, &unk_1EC0C0760, &qword_1C4F170D0);
        v39 = __OFADD__(v36++, 1);
        if (v39)
        {
          goto LABEL_41;
        }
      }

      else
      {
        sub_1C448B210(v10, v38);
        v40 = v36 - 1;
        if (__OFSUB__(v36, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v39 = __OFADD__(v36++, 1);
        if (v39)
        {
          goto LABEL_42;
        }

        v41 = v40 > 0x40;
        if (v40 >= 0x40)
        {
          v42 = 0;
        }

        else
        {
          v42 = 1 << v40;
        }

        if (v41)
        {
          v42 = 0;
        }

        v43 = v38;
        if ((v42 & v34) >= 1)
        {
          sub_1C448B210(v38, v102);
          v44 = v11;
          v45 = p_info;
          v46 = v103;
          v33 = v104;
          sub_1C483B6F0();
          v37 = &dword_1EDE2D000;
          v43 = v46;
          p_info = v45;
          v11 = v44;
        }

        sub_1C448D818(v43);
      }
    }

    if (qword_1EDDFED28 != -1)
    {
      swift_once();
    }

    sub_1C442B738(v11, &unk_1EDDFD088);
    sub_1C4836BF8();
    v47 = v91;
    if (v48)
    {
      v49 = *(v101 + 20);
      v50 = v92;
      sub_1C4EFE318();
      v51 = v33 + v49;
      v52 = v50;
      LODWORD(v50) = sub_1C44DBB50(v51, v50);
      (*v47)(v52, v97);
      v94 |= v50;
    }

    else
    {
      v52 = v92;
    }

    if (qword_1EDDFED38 != -1)
    {
      swift_once();
    }

    sub_1C442B738(v11, qword_1EDDFD0F0);
    sub_1C4836BF8();
    v54 = v53;
    if (qword_1EDDFD218 != -1)
    {
      swift_once();
    }

    HIDWORD(v99) |= v54;
    sub_1C442B738(v11, &qword_1EDDFD220);
    sub_1C4836BF8();
    v56 = v55;

    LODWORD(v99) = v56 | v99;
    v57 = v101;
    v58 = *(v101 + 28);
    sub_1C4EFE878();
    v59 = v104;
    LODWORD(v98) = sub_1C44DBB50(v104 + v58, v52);
    v60 = *v47;
    v61 = v97;
    v60(v52, v97);
    if ((v98 & 1) == 0)
    {
      v98 = *(v57 + 20);
      sub_1C4EFE878();
      LODWORD(v98) = sub_1C44DBB50(v59 + v98, v52);
      v60(v52, v61);
      if ((v98 & 1) == 0)
      {
        continue;
      }
    }

    v62 = (v59 + *(v57 + 32));
    v63 = *v62;
    v64 = v62[1];
    v65 = sub_1C4F00FF8();
    v67 = v66;
    v68 = v90;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = *(v68 + 16);
      sub_1C443D664();
      v68 = v72;
    }

    v69 = *(v68 + 16);
    if (v69 >= *(v68 + 24) >> 1)
    {
      sub_1C443D664();
      v68 = v73;
    }

    *(v68 + 16) = v69 + 1;
    v90 = v68;
    v70 = v68 + 16 * v69;
    *(v70 + 32) = v65;
    *(v70 + 40) = v67;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

void *sub_1C4BE4FE8()
{
  v1 = v0[2];

  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[11];

  return v0;
}

uint64_t sub_1C4BE505C()
{
  sub_1C4BE4FE8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BE51B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C4BE522C(uint64_t *a1)
{
  v2 = *(sub_1C4EFFE78() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B048(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C4BE8DAC(v6);
  *a1 = v3;
}

uint64_t sub_1C4BE52D4()
{
  sub_1C43FBCD4();
  *(v0 + 680) = v1;
  *(v0 + 672) = v2;
  *(v0 + 664) = v3;
  *(v0 + 656) = v4;
  *(v0 + 720) = v5;
  *(v0 + 648) = v6;
  *(v0 + 640) = v7;
  v8 = *(*(type metadata accessor for Configuration() - 8) + 64);
  *(v0 + 688) = sub_1C43FBE7C();
  v9 = _s6ConfigVMa();
  *(v0 + 696) = v9;
  v10 = *(*(v9 - 8) + 64);
  *(v0 + 704) = sub_1C43FBE7C();
  v11 = *(*(_s10ViewConfigVMa(0) - 8) + 64);
  *(v0 + 712) = sub_1C43FBE7C();
  v12 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C4BE53B4()
{
  v86 = v0;
  v1 = *(v0 + 712);
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  swift_unownedRetainStrong();
  v5 = *(v2 + 16);

  sub_1C443A738(v4, v3, v6, v7, v8, v9, v10, v11);
  v12 = *(v0 + 712);
  v13 = *(v0 + 704);
  v14 = *(v0 + 696);

  sub_1C4438D00(v13);
  memcpy((v0 + 344), (v13 + *(v14 + 64)), 0x58uLL);
  sub_1C4460050(v0 + 344, v0 + 432, &qword_1EC0C4678, &unk_1C4F5C7F0);
  sub_1C4BEB7A0(v13, _s6ConfigVMa);
  v15 = *(v0 + 712);
  if (*(v0 + 352))
  {
    v71 = *(v0 + 352);
    v73 = *(v0 + 344);
    v16 = *(v0 + 720);
    v17 = *(v0 + 648);
    v18 = *(v0 + 640);
    v76 = *(v0 + 656);
    v78 = *(v0 + 672);
    v19 = *(v0 + 656);
    swift_unownedRetainStrong();
    v20 = *(v19 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_lockbox);

    v21 = swift_task_alloc();
    *(v21 + 16) = v76;
    *(v21 + 32) = v78;
    *(v21 + 48) = v15;
    *(v21 + 56) = v18;
    *(v21 + 64) = v17;
    *(v21 + 72) = v16;
    sub_1C4EFFA58();
    v30 = *(v0 + 672);
    v31 = *(v0 + 664);

    v32 = *(*(*(v0 + 48) + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
    v33 = type metadata accessor for BehaviorHistoryUtility();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    swift_retain_n();
    v36 = v31;

    v70 = v33;
    v37 = sub_1C4624330(v30, v36);

    v38 = *(v0 + 672);
    v39 = *(v0 + 664);
    type metadata accessor for InteractionSourceAdapterRegistry();
    v40 = *(v0 + 32);
    v41 = *(v0 + 40);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C494D274(v40, v41, v39, v38);
    v43 = v42;

    v44 = v73;
    v77 = objc_autoreleasePoolPush();
    if (v37 && v43)
    {
      v67 = *(v0 + 688);
      v45 = *(v0 + 656);
      v69 = *(v0 + 648);
      v74 = *(v0 + 640);
      sub_1C442E860(v0 + 104, v0 + 264);
      v68 = v41;
      *(v0 + 328) = v70;
      *(v0 + 336) = &off_1F43E41D8;
      *(v0 + 304) = v37;
      *(v0 + 240) = v44;
      *(v0 + 248) = v71;
      *(v0 + 256) = v32;
      *(v0 + 544) = &type metadata for BehaviorDatabaseHistogramManager;
      *(v0 + 552) = &off_1F43E25F0;
      v46 = swift_allocObject();
      *(v0 + 520) = v46;
      sub_1C4BEB830(v0 + 240, v46 + 16);
      v66 = *(v0 + 168);
      v47 = *(v0 + 168);
      v48 = sub_1C4409678((v0 + 144), v47);
      *(v0 + 584) = v66;
      v49 = sub_1C4422F90((v0 + 560));
      (*(*(v47 - 8) + 16))(v49, v48, v47);
      *(v0 + 624) = v70;
      *(v0 + 632) = &off_1F43E41D8;
      *(v0 + 600) = v37;
      swift_unownedRetainStrong();
      sub_1C44098F0(v45 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_config, v67);
      swift_retain_n();

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C4F02248();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v84 = v74;
      v85 = v69;
      MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4F92720);
      v50 = type metadata accessor for KeyValueStore();
      v51 = *(v50 + 48);
      v52 = *(v50 + 52);
      swift_allocObject();
      v58 = KeyValueStore.init(config:domain:)(v67, v74, v69);
      v72 = *(v0 + 680);
      v75 = type metadata accessor for EntityInteractionHistoryIngestor();
      v82 = v70;
      v83 = &off_1F43E41D8;
      v81 = v37;
      sub_1C4BEB88C(v0 + 240);
      *&v79 = v58;
      *(&v79 + 1) = 0xD000000000000023;
      v80 = 0x80000001C4F8DA80;
      v59 = *(v0 + 584);
      v60 = *(v0 + 592);
      v61 = sub_1C4418280(v0 + 560, v59);
      v62 = *(v59 - 8);
      v63 = *(v62 + 64);
      v64 = sub_1C43FBE7C();
      (*(v62 + 16))(v64, v61, v59);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v65 = sub_1C46E0824(v40, v68, (v0 + 520), v64, (v0 + 600), &v79, v43, v72, v75, v59, v60);
      sub_1C4420C3C(v0 + 344, &qword_1EC0C4678, &unk_1C4F5C7F0);

      sub_1C440962C((v0 + 560));

      v41 = v68;
    }

    else
    {
      sub_1C4420C3C(v0 + 344, &qword_1EC0C4678, &unk_1C4F5C7F0);

      v65 = 0;
    }

    v53 = *(v0 + 712);
    v54 = *(v0 + 704);
    v55 = *(v0 + 688);
    _s39EntityInteractionHistogramViewGeneratorCMa();
    v56 = swift_allocObject();
    v56[2] = v40;
    v56[3] = v41;
    v56[4] = v65;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    objc_autoreleasePoolPop(v77);

    sub_1C4707ED4(v0 + 16);
    sub_1C4BEB7A0(v53, _s10ViewConfigVMa);

    v57 = *(v0 + 8);

    return v57(v56, &off_1F4402330);
  }

  else
  {
    v22 = *(v0 + 648);
    v23 = *(v0 + 640);
    sub_1C450B034();
    swift_allocError();
    *v24 = v23;
    *(v24 + 8) = v22;
    *(v24 + 16) = 0xD000000000000023;
    *(v24 + 24) = 0x80000001C4FB91A0;
    *(v24 + 32) = 0;
    *(v24 + 40) = 0xE000000000000000;
    *(v24 + 48) = v79;
    *(v24 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4BEB7A0(v15, _s10ViewConfigVMa);
    v25 = *(v0 + 712);
    v26 = *(v0 + 704);
    v27 = *(v0 + 688);

    sub_1C43FBDA0();

    return v28();
  }
}

uint64_t sub_1C4BE5EA4@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t a3@<X6>, uint64_t a4@<X7>, unint64_t *a5@<X8>, unsigned __int8 a6)
{
  v12 = _s6ConfigVMa();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  swift_unownedRetainStrong();
  sub_1C4C839B4();

  if (!v6)
  {
    sub_1C456902C(&qword_1EC0C48F0, &qword_1C4F61380);
    _s44EntityInteractionHistogramViewClientProviderCMa();
    if (swift_dynamicCast())
    {
      v20[3] = a6;
      v21 = v23;
      sub_1C4438D00(v15);
      v18 = *(v16 + 32);
      sub_1C4BEBA08(a3, a4, v15, a2, a5);
      sub_1C4BEB7A0(v15, _s6ConfigVMa);
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v19 = a3;
      *(v19 + 8) = a4;
      *(v19 + 16) = xmmword_1C4F5B670;
      *(v19 + 32) = 0xD00000000000002CLL;
      *(v19 + 40) = 0x80000001C4FB91D0;
      *(v19 + 48) = v22;
      *(v19 + 64) = 0;
      swift_willThrow();
      return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return result;
}

uint64_t sub_1C4BE6098()
{
  v2 = *v0;
  v3 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C4BE616C;

  return sub_1C4BE52D4();
}

uint64_t sub_1C4BE616C()
{
  sub_1C43FCF70();
  v3 = v2;
  v5 = v4;
  sub_1C43FBDE4();
  v7 = *(v6 + 16);
  v8 = *v1;
  sub_1C43FBDAC();
  *v9 = v8;

  v12 = *(v8 + 8);
  if (!v0)
  {
    v10 = v5;
    v11 = v3;
  }

  return v12(v10, v11);
}

uint64_t sub_1C4BE626C()
{
  *(v1 + 16) = v0;
  v2 = sub_1C43FCE74();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C4BE6294()
{
  if (*(*(v0 + 16) + 32))
  {
    sub_1C46DE0D8();
  }

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4BE66A4(uint64_t *a1)
{
  v2 = v1;
  v73 = a1;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v74 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v67 - v7;
  v9 = sub_1C4EF9CD8();
  v77 = *(v9 - 8);
  v78 = v9;
  v10 = v77[8];
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v67 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v67 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v67 - v18;
  v19 = *(v1 + 64);
  v79 = MEMORY[0x1E69E7CC0];
  v20 = sub_1C4428DA0();
  v21 = 0;
  v22 = v19 & 0xC000000000000001;
  while (v20 != v21)
  {
    if (v22)
    {
      MEMORY[0x1C6940F90](v21, v19);
    }

    else
    {
      if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v23 = *(v19 + 8 * v21 + 32);
    }

    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      if (sub_1C44157D4(v2, 1, v22) == 1)
      {
        v16(v76, v22);
        v38 = v2;
        goto LABEL_22;
      }

      v54 = v72;
      v70(v72, v2, v22);
      v68(v8, v54, v22);
      v55 = sub_1C4F00968();
      v56 = sub_1C4F01CF8();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = v16;
        v59 = swift_slowAlloc();
        v79 = v59;
        *v57 = 136315138;
        sub_1C4BEB660(&qword_1EDDFCD50, MEMORY[0x1E6969530]);
        v60 = sub_1C4F02858();
        v62 = v61;
        v58(v8, v78);
        v63 = sub_1C441D828(v60, v62, &v79);

        *(v57 + 4) = v63;
        _os_log_impl(&dword_1C43F8000, v55, v56, "EntityInteractionHistogramViewGenerator: Last digest date is %s", v57, 0xCu);
        sub_1C440962C(v59);
        v64 = v59;
        v16 = v58;
        MEMORY[0x1C6942830](v64, -1, -1);
        v22 = v78;
        MEMORY[0x1C6942830](v57, -1, -1);
      }

      else
      {

        v16(v8, v22);
      }

      v65 = v76;
      v66 = v72;
      v30 = sub_1C4EF9C18();
      v16(v66, v22);
      v16(v65, v22);
      return v30 & 1;
    }

    v24 = sub_1C4CDF950(0, 1, 0, 1);

    sub_1C49D3B44(v24);
    ++v21;
  }

  v25 = v79;
  if (qword_1EDDFA668 != -1)
  {
    swift_once();
  }

  v26 = sub_1C4F00978();
  sub_1C442B738(v26, qword_1EDE2DDE0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v27 = sub_1C4F00968();
  v28 = sub_1C4F01CF8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = *(v25 + 16);

    _os_log_impl(&dword_1C43F8000, v27, v28, "EntityInteractionHistogramViewGenerator: Retrieving graph objects for %ld events", v29, 0xCu);
    MEMORY[0x1C6942830](v29, -1, -1);
  }

  else
  {
  }

  v32 = sub_1C4D20674();
  v33 = *(v25 + 16);

  if (*(v32 + 16) >= v33)
  {
    v37 = sub_1C4BE7A90(v32);

    sub_1C4BE8684(v37, v8);

    v22 = v78;
    if (sub_1C44157D4(v8, 1, v78) != 1)
    {
      v39 = v76;
      v40 = v77;
      v70 = v77[4];
      v71 = v77 + 4;
      v70(v76, v8, v22);
      v68 = v40[2];
      v69 = v40 + 2;
      v68(v16, v39, v22);
      v41 = sub_1C4F00968();
      v42 = sub_1C4F01CF8();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v79 = v44;
        *v43 = 136315138;
        sub_1C4BEB660(&qword_1EDDFCD50, MEMORY[0x1E6969530]);
        v45 = sub_1C4F02858();
        v47 = v46;
        v48 = v16;
        v16 = v77[1];
        v16(v48, v22);
        v49 = sub_1C441D828(v45, v47, &v79);

        *(v43 + 4) = v49;
        _os_log_impl(&dword_1C43F8000, v41, v42, "EntityInteractionHistogramViewGenerator: Earliest date for updated life events is %s", v43, 0xCu);
        sub_1C440962C(v44);
        MEMORY[0x1C6942830](v44, -1, -1);
        MEMORY[0x1C6942830](v43, -1, -1);
      }

      else
      {

        v50 = v16;
        v16 = v40[1];
        v16(v50, v22);
      }

      v2 = v74;
      v8 = v75;
      v52 = *v73;
      v51 = v73[1];
      v53 = v73[2];
      sub_1C446FB00();
      goto LABEL_29;
    }

    v38 = v8;
LABEL_22:
    sub_1C4420C3C(v38, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v30 = 0;
    return v30 & 1;
  }

  v34 = sub_1C4F00968();
  v35 = sub_1C4F01CF8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1C43F8000, v34, v35, "EntityInteractionHistogramViewGenerator: Some subjects couldn't be resolved, therefore a delete occurred", v36, 2u);
    MEMORY[0x1C6942830](v36, -1, -1);
  }

  v30 = 1;
  return v30 & 1;
}

uint64_t sub_1C4BE6FE8()
{
  sub_1C43FBCD4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1C4EF9CD8();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64);
  v1[6] = sub_1C43FBE7C();
  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4BE7094()
{
  sub_1C43FCF70();
  v1 = v0[3];
  if (sub_1C4BE6414(v0[2]))
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v3 = sub_1C4BE72B4;
LABEL_5:
    v2[1] = v3;
    v5 = v0[3];

    return sub_1C4BE626C();
  }

  v4 = v0[2];
  if (sub_1C4D0E2C0())
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v3 = sub_1C4BE74FC;
    goto LABEL_5;
  }

  sub_1C4432C74();
  if (v4)
  {
    v7 = v0[6];

    sub_1C4EF9CC8();
    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    sub_1C442D60C(v8);

    return sub_1C46DE19C();
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDE2DDE0);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CF8();
    if (os_log_type_enabled(v10, v11))
    {
      *swift_slowAlloc() = 0;
      sub_1C43FBED8(&dword_1C43F8000, v12, v13, "EntityInteractionHistogramViewGenerator: EventSource is nil. Ignoring AllSources and returning");
      sub_1C43FBE2C();
    }

    v14 = v0[2];

    sub_1C4D0E51C();
    v15 = v0[6];

    sub_1C43FC1B0();

    return v16();
  }
}

uint64_t sub_1C4BE72B4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 56);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4BE7398()
{
  sub_1C43FCF70();
  v1 = v0[2];
  sub_1C4D0E478();
  sub_1C4432C74();
  if (v1)
  {
    v2 = v0[6];

    sub_1C4EF9CC8();
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    sub_1C442D60C(v3);

    return sub_1C46DE19C();
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDE2DDE0);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(v6, v7))
    {
      *swift_slowAlloc() = 0;
      sub_1C43FBED8(&dword_1C43F8000, v8, v9, "EntityInteractionHistogramViewGenerator: EventSource is nil. Ignoring AllSources and returning");
      sub_1C43FBE2C();
    }

    v10 = v0[2];

    sub_1C4D0E51C();
    v11 = v0[6];

    sub_1C43FC1B0();

    return v12();
  }
}

uint64_t sub_1C4BE74FC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 64);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4BE75E0()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 16);
  sub_1C4D0E478();
  v2 = *(v0 + 48);

  sub_1C43FC1B0();

  return v3();
}

uint64_t sub_1C4BE7640(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_1C43FBDAC();
  *v6 = v5;
  v7 = v4[11];
  *v6 = *v2;
  v5[12] = v1;

  v8 = v4[6];
  v9 = v4[5];
  v10 = v4[4];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);
    v11 = sub_1C4BE7908;
  }

  else
  {
    v5[13] = a1;
    (*(v9 + 8))(v8, v10);
    v11 = sub_1C4BE77C0;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1C4BE77C0()
{
  sub_1C43FCF70();
  if (v0[9] >> 60 != 15 && v0[13] < 1)
  {
    v4 = v0[2];
    sub_1C4D0E51C();
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDE2DDE0);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[10];
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C43F8000, v6, v7, "EntityInteractionHistogramViewGenerator: No changes since last time. Ignoring all Sources", v10, 2u);
      sub_1C43FBE2C();

      goto LABEL_12;
    }
  }

  else
  {
    v2 = v0[10];
    v3 = v0[2];
    sub_1C4D0E5C0();
  }

LABEL_12:
  v11 = v0[6];

  sub_1C43FC1B0();

  return v12();
}

uint64_t sub_1C4BE7908()
{
  sub_1C43FBCD4();
  v1 = v0[10];
  v2 = v0[6];

  sub_1C43FBDA0();
  v4 = v0[12];

  return v3();
}

void *sub_1C4BE7970()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_1C4BE79A8()
{
  sub_1C4BE7970();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BE7A00()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return sub_1C4BE6FE8();
}

char *sub_1C4BE7A90(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C4890, &qword_1C4F5C710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v93 = (v78 - v4);
  v5 = sub_1C456902C(&qword_1EC0C4888, &unk_1C4F5C700);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v78 - v7;
  v101 = sub_1C4EFFE78();
  v82 = *(v101 - 8);
  v9 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v81 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v79 = v78 - v12;
  v88 = sub_1C456902C(&qword_1EC0C4898, &qword_1C4F5C718);
  v13 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v90 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v78 - v16;
  v18 = sub_1C456902C(&qword_1EC0C48A0, &qword_1C4F5C720);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v78 - v20;
  v94 = sub_1C456902C(&qword_1EC0C48A8, &qword_1C4F5C728);
  v80 = *(v94 - 8);
  v22 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v95 = v78 - v23;
  v24 = sub_1C456902C(&qword_1EC0C48B0, &unk_1C4F5C730);
  v84 = *(v24 - 8);
  v85 = v24;
  v25 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v89 = v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v78 - v28;
  v96 = a1;
  sub_1C456902C(&qword_1EC0BD400, &qword_1C4F2DBE0);
  sub_1C4401CBC(&qword_1EDDDBCD8, &qword_1EC0BD400, &qword_1C4F2DBE0);
  sub_1C4BEB660(&qword_1EDDFE218, type metadata accessor for GraphTriple);
  v30 = sub_1C4F01498();
  v96 = v30;
  v31 = sub_1C456902C(&qword_1EC0C48B8, &qword_1C4F5C740);
  v32 = sub_1C4401CBC(&qword_1EC0C48C0, &qword_1EC0C48B8, &qword_1C4F5C740);
  v33 = sub_1C4BEB660(&qword_1EC0C48C8, MEMORY[0x1E69A9C00]);
  v34 = sub_1C4BEB6A8();
  v83 = v29;
  v87 = v31;
  v35 = v32;
  v36 = v34;
  v37 = AssociatedConformanceWitness;
  sub_1C4EFFDC8();
  if (v37)
  {

    return v17;
  }

  v78[1] = 0;
  v78[2] = v30;
  (*(v84 + 16))(v89, v83, v85);
  v96 = v87;
  v97 = v101;
  v98 = v35;
  v99 = v33;
  v100 = v36;
  swift_getOpaqueTypeConformance2();
  sub_1C4F01478();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v87 = MEMORY[0x1E69E7CC0];
  v38 = &qword_1EC0C4890;
  v89 = (v82 + 32);
  *&v39 = 138412290;
  v86 = v39;
  v91 = v21;
LABEL_4:
  v40 = v88;
  v41 = v90;
  while (1)
  {
    sub_1C4F01FA8();
    if (sub_1C44157D4(v21, 1, v40) == 1)
    {
      break;
    }

    v42 = v8;
    v43 = v38;
    sub_1C44CD9E0(v21, v17, &qword_1EC0C4898, &qword_1C4F5C718);
    v44 = v17;
    sub_1C4460050(v17, v41, &qword_1EC0C4898, &qword_1C4F5C718);
    v45 = v93;
    sub_1C44CD9E0(v41 + *(v40 + 48), v93, v38, &qword_1C4F5C710);
    v46 = sub_1C456902C(&qword_1EC0C48E0, &qword_1C4F5C750);
    if (sub_1C44157D4(v45, 1, v46) == 1)
    {
      v47 = sub_1C456902C(&qword_1EC0C48E8, qword_1C4F5C758);
      (*(*(v47 - 8) + 8))(v41, v47);
      sub_1C4420C3C(v45, v38, &qword_1C4F5C710);
      v48 = 1;
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v8 = v42;
        (*v89)(v42, v45, v101);
        v61 = sub_1C456902C(&qword_1EC0C48E8, qword_1C4F5C758);
        (*(*(v61 - 8) + 8))(v41, v61);
        v48 = 0;
        goto LABEL_17;
      }

      v49 = v41;
      v50 = *v45;
      v96 = *v45;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      swift_willThrowTypedImpl();
      v51 = sub_1C456902C(&qword_1EC0C48E8, qword_1C4F5C758);
      (*(*(v51 - 8) + 8))(v49, v51);
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v52 = sub_1C4F00978();
      sub_1C442B738(v52, qword_1EDE2DDE0);
      v53 = v50;
      v54 = sub_1C4F00968();
      v55 = sub_1C4F01CD8();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = v86;
        v58 = v50;
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v56 + 4) = v59;
        *v57 = v59;
        _os_log_impl(&dword_1C43F8000, v54, v55, "EntityInteractionHistogramViewGenerator: Ignoring updated event: %@", v56, 0xCu);
        sub_1C4420C3C(v57, &qword_1EC0BDA00, &qword_1C4F10D30);
        MEMORY[0x1C6942830](v57, -1, -1);
        v60 = v56;
        v40 = v88;
        MEMORY[0x1C6942830](v60, -1, -1);
      }

      else
      {
      }

      v48 = 1;
      v41 = v90;
      v38 = v43;
    }

    v8 = v42;
LABEL_17:
    v62 = v101;
    sub_1C440BAA8(v8, v48, 1, v101);
    v17 = v44;
    sub_1C4420C3C(v44, &qword_1EC0C4898, &qword_1C4F5C718);
    if (sub_1C44157D4(v8, 1, v62) != 1)
    {
      v63 = *v89;
      v64 = v79;
      v65 = v101;
      (*v89)(v79, v8, v101);
      v63(v81, v64, v65);
      v66 = v87;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v91;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C458BE04(0, *(v66 + 16) + 1, 1, v66);
        v66 = v71;
      }

      v69 = *(v66 + 16);
      v68 = *(v66 + 24);
      v87 = v66;
      if (v69 >= v68 >> 1)
      {
        sub_1C458BE04(v68 > 1, v69 + 1, 1, v87);
        v87 = v72;
      }

      v70 = v87;
      *(v87 + 2) = v69 + 1;
      (v63)(v70 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v69);
      goto LABEL_4;
    }

    sub_1C4420C3C(v8, &qword_1EC0C4888, &unk_1C4F5C700);
    v21 = v91;
  }

  (*(v80 + 8))(v95, v94);
  (*(v84 + 8))(v83, v85);
  if (qword_1EDDFA668 != -1)
  {
    swift_once();
  }

  v73 = sub_1C4F00978();
  sub_1C442B738(v73, qword_1EDE2DDE0);
  v17 = v87;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v74 = sub_1C4F00968();
  v75 = sub_1C4F01CF8();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 134217984;
    *(v76 + 4) = *(v17 + 2);

    _os_log_impl(&dword_1C43F8000, v74, v75, "EntityInteractionHistogramViewGenerator: Resolved %ld life events", v76, 0xCu);
    MEMORY[0x1C6942830](v76, -1, -1);
  }

  else
  {
  }

  return v17;
}

uint64_t sub_1C4BE8684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C456902C(&qword_1EC0C4888, &unk_1C4F5C700);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  v20 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4BE522C(&v20);
  sub_1C48684C0(v20, v7);

  v12 = sub_1C4EFFE78();
  if (sub_1C44157D4(v7, 1, v12) == 1)
  {
    v13 = &qword_1EC0C4888;
    v14 = &unk_1C4F5C700;
    v15 = v7;
LABEL_5:
    sub_1C4420C3C(v15, v13, v14);
    v17 = sub_1C4EF9CD8();
    return sub_1C440BAA8(a2, 1, 1, v17);
  }

  sub_1C4EFFE68();
  (*(*(v12 - 8) + 8))(v7, v12);
  v16 = sub_1C4EFFC68();
  if (sub_1C44157D4(v11, 1, v16) == 1)
  {
    v13 = &qword_1EC0C0CC8;
    v14 = &unk_1C4F405F0;
    v15 = v11;
    goto LABEL_5;
  }

  sub_1C4EFFC58();
  return (*(*(v16 - 8) + 8))(v11, v16);
}

uint64_t sub_1C4BE88A4(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v2 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v36 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v36 - v10;
  v12 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v38 = v36 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v36 - v19;
  v21 = sub_1C4EF9CD8();
  v39 = *(v21 - 8);
  v22 = v39[8];
  MEMORY[0x1EEE9AC00](v21);
  v37 = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v36 - v25;
  sub_1C4EFFE68();
  v27 = sub_1C4EFFC68();
  if (sub_1C44157D4(v11, 1, v27) == 1)
  {
    sub_1C4420C3C(v11, &qword_1EC0C0CC8, &unk_1C4F405F0);
    sub_1C440BAA8(v20, 1, 1, v21);
  }

  else
  {
    sub_1C4EFFC58();
    v28 = *(v27 - 8);
    v29 = *(v28 + 8);
    v36[1] = v28 + 8;
    v29(v11, v27);
    if (sub_1C44157D4(v20, 1, v21) != 1)
    {
      v36[0] = v29;
      v31 = v39;
      v32 = v39[4];
      v32(v26, v20, v21);
      sub_1C4EFFE68();
      if (sub_1C44157D4(v8, 1, v27) != 1)
      {
        v15 = v38;
        sub_1C4EFFC58();
        (v36[0])(v8, v27);
        if (sub_1C44157D4(v15, 1, v21) != 1)
        {
          v34 = v37;
          v32(v37, v15, v21);
          v30 = sub_1C4EF9C18();
          v35 = v39[1];
          v35(v34, v21);
          v35(v26, v21);
          return v30 & 1;
        }

        (v39[1])(v26, v21);
        goto LABEL_11;
      }

      (v31[1])(v26, v21);
      sub_1C4420C3C(v8, &qword_1EC0C0CC8, &unk_1C4F405F0);
      v15 = v38;
      goto LABEL_10;
    }
  }

  sub_1C4420C3C(v20, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C4EFFE68();
  if (sub_1C44157D4(v5, 1, v27) == 1)
  {
    sub_1C4420C3C(v5, &qword_1EC0C0CC8, &unk_1C4F405F0);
LABEL_10:
    sub_1C440BAA8(v15, 1, 1, v21);
    goto LABEL_11;
  }

  sub_1C4EFFC58();
  (*(*(v27 - 8) + 8))(v5, v27);
  if (sub_1C44157D4(v15, 1, v21) == 1)
  {
LABEL_11:
    sub_1C4420C3C(v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v30 = 1;
    return v30 & 1;
  }

  sub_1C4420C3C(v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v30 = 0;
  return v30 & 1;
}

void sub_1C4BE8DAC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C4F02828();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C4EFFE78();
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C4EFFE78() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1C4BE972C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C4BE8EDC(0, v2, 1, a1);
  }
}

void sub_1C4BE8EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v78 = &v67[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v91 = &v67[-v15];
  v16 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v83 = &v67[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v81 = &v67[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v67[-v22];
  v94 = sub_1C4EF9CD8();
  v24 = *(v94 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v70 = &v67[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v82 = &v67[-v28];
  v29 = sub_1C4EFFE78();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v87 = &v67[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32);
  v95 = &v67[-v33];
  v36 = MEMORY[0x1EEE9AC00](v34);
  v93 = &v67[-v37];
  v69 = a2;
  if (a3 == a2)
  {
    return;
  }

  v38 = *a4;
  v40 = *(v35 + 16);
  v39 = v35 + 16;
  v41 = *(v39 + 56);
  v80 = (v24 + 32);
  v75 = (v24 + 8);
  v88 = (v39 - 8);
  v89 = v40;
  v90 = v39;
  v42 = v38 + v41 * (a3 - 1);
  v84 = -v41;
  v85 = (v39 + 16);
  v43 = (a1 - a3);
  v86 = v38;
  v68 = v41;
  v44 = v38 + v41 * a3;
  v76 = v23;
  v77 = v13;
  while (2)
  {
    v74 = a3;
    v71 = v44;
    v72 = v43;
    v73 = v42;
    v45 = v78;
    while (1)
    {
      v46 = v89;
      (v89)(v93, v44, v29, v36);
      v46(v95, v42, v29);
      v47 = v91;
      sub_1C4EFFE68();
      v48 = sub_1C4EFFC68();
      if (sub_1C44157D4(v47, 1, v48) == 1)
      {
        break;
      }

      sub_1C4EFFC58();
      v49 = *(*(v48 - 8) + 8);
      v49(v47, v48);
      if (sub_1C44157D4(v23, 1, v94) == 1)
      {
        goto LABEL_7;
      }

      v92 = v49;
      v54 = v23;
      v55 = v94;
      v79 = *v80;
      v79(v82, v54, v94);
      v56 = v77;
      sub_1C4EFFE68();
      if (sub_1C44157D4(v56, 1, v48) == 1)
      {
        (*v75)(v82, v55);
        sub_1C4420C3C(v56, &qword_1EC0C0CC8, &unk_1C4F405F0);
        v57 = v81;
        sub_1C440BAA8(v81, 1, 1, v55);
      }

      else
      {
        sub_1C4EFFC58();
        v58 = v48;
        v57 = v81;
        (v92)(v56, v58);
        if (sub_1C44157D4(v57, 1, v55) != 1)
        {
          v62 = v70;
          v79(v70, v57, v55);
          v63 = v82;
          LODWORD(v92) = sub_1C4EF9C18();
          v64 = *v75;
          (*v75)(v62, v55);
          v64(v63, v55);
          v65 = *v88;
          (*v88)(v95, v29);
          v65(v93, v29);
          v45 = v78;
          v23 = v76;
          if ((v92 & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_17;
        }

        (*v75)(v82, v55);
      }

      v51 = v57;
      v45 = v78;
      v23 = v76;
LABEL_16:
      sub_1C4420C3C(v51, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v59 = *v88;
      (*v88)(v95, v29);
      v59(v93, v29);
LABEL_17:
      if (!v86)
      {
        __break(1u);
        return;
      }

      v92 = v43;
      v60 = *v85;
      v61 = v87;
      (*v85)(v87, v44, v29);
      swift_arrayInitWithTakeFrontToBack();
      v60(v42, v61, v29);
      v42 += v84;
      v44 += v84;
      v43 = v92 + 1;
      if (v92 == -1)
      {
        goto LABEL_21;
      }
    }

    sub_1C4420C3C(v47, &qword_1EC0C0CC8, &unk_1C4F405F0);
    sub_1C440BAA8(v23, 1, 1, v94);
LABEL_7:
    sub_1C4420C3C(v23, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C4EFFE68();
    if (sub_1C44157D4(v45, 1, v48) == 1)
    {
      sub_1C4420C3C(v45, &qword_1EC0C0CC8, &unk_1C4F405F0);
      v50 = v83;
      sub_1C440BAA8(v83, 1, 1, v94);
      v51 = v50;
      goto LABEL_16;
    }

    v52 = v83;
    sub_1C4EFFC58();
    (*(*(v48 - 8) + 8))(v45, v48);
    v53 = sub_1C44157D4(v52, 1, v94);
    v51 = v52;
    if (v53 == 1)
    {
      goto LABEL_16;
    }

    sub_1C4420C3C(v83, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v66 = *v88;
    (*v88)(v95, v29);
    v66(v93, v29);
LABEL_21:
    a3 = v74 + 1;
    v42 = v73 + v68;
    v43 = v72 - 1;
    v44 = v71 + v68;
    if (v74 + 1 != v69)
    {
      continue;
    }

    break;
  }
}

void sub_1C4BE972C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v202 = a4;
  v206 = a1;
  v7 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v201 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v201 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v230 = &v201 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v201 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v212 = &v201 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v201 - v22;
  v24 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v236 = &v201 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v233 = &v201 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v241 = &v201 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v217 = &v201 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v207 = &v201 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v220 = &v201 - v36;
  v37 = sub_1C4EF9CD8();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v214 = &v201 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v201 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v201 = &v201 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v209 = &v201 - v47;
  v243 = sub_1C4EFFE78();
  v48 = *(*(v243 - 8) + 64);
  MEMORY[0x1EEE9AC00](v243);
  v213 = &v201 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v239 = &v201 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v248 = &v201 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v247 = &v201 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v227 = &v201 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v225 = &v201 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v203 = &v201 - v61;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v205 = &v201 - v65;
  v224 = a3;
  v66 = a3[1];
  v223 = v63;
  if (v66 < 1)
  {
    v215 = MEMORY[0x1E69E7CC0];
LABEL_133:
    v68 = *v206;
    if (!*v206)
    {
      goto LABEL_175;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_135;
    }

    goto LABEL_169;
  }

  v67 = 0;
  v244 = v63 + 16;
  v245 = (v63 + 8);
  v232 = (v38 + 32);
  v228 = (v38 + 8);
  v242 = (v63 + 32);
  v215 = MEMORY[0x1E69E7CC0];
  v235 = v10;
  v226 = v13;
  v68 = v230;
  v216 = v18;
  v222 = v23;
  v69 = v37;
  v246 = v37;
  v234 = v43;
  while (1)
  {
    v70 = v67;
    v71 = v67 + 1;
    v208 = v67;
    if (v67 + 1 >= v66)
    {
      v75 = v243;
      v103 = v67;
      v104 = v69;
      goto LABEL_48;
    }

    v237 = v66;
    v72 = *v224;
    v73 = *(v63 + 72);
    v229 = v67 + 1;
    v74 = *(v63 + 16);
    v240 = (v72 + v73 * v71);
    v75 = v243;
    (v74)(v205, v64);
    v238 = v72;
    v76 = v203;
    v221 = v74;
    (v74)(v203, v72 + v73 * v70, v75);
    v77 = v205;
    LODWORD(v231) = sub_1C4BE88A4(v205, v76);
    if (v5)
    {
      v200 = *v245;
      (*v245)(v76, v75);
      (v200)(v77, v75);
LABEL_144:

      return;
    }

    v204 = 0;
    v78 = *v245;
    (*v245)(v76, v75);
    v219 = v78;
    (v78)(v77, v75);
    v79 = v70 + 2;
    v80 = v237;
    v5 = v238 + v73 * (v70 + 2);
    v71 = v229;
    v238 = v73;
    v81 = v240;
    while (1)
    {
      v82 = v79;
      if (v71 + 1 >= v80)
      {
        break;
      }

      v229 = v71;
      v83 = v221;
      (v221)(v225, v5, v75);
      v240 = v81;
      v83(v227, v81, v75);
      sub_1C4EFFE68();
      v84 = sub_1C4EFFC68();
      if (sub_1C44157D4(v23, 1, v84) == 1)
      {
        sub_1C4420C3C(v23, &qword_1EC0C0CC8, &unk_1C4F405F0);
        v85 = v220;
        sub_1C440BAA8(v220, 1, 1, v246);
      }

      else
      {
        v86 = v220;
        sub_1C4EFFC58();
        v85 = v86;
        v87 = v23;
        v88 = *(*(v84 - 8) + 8);
        v88(v87, v84);
        if (sub_1C44157D4(v86, 1, v246) != 1)
        {
          v95 = v209;
          v96 = v246;
          v218 = *v232;
          (v218)(v209, v86, v246);
          v97 = v212;
          sub_1C4EFFE68();
          if (sub_1C44157D4(v97, 1, v84) == 1)
          {
            (*v228)(v95, v96);
            sub_1C4420C3C(v97, &qword_1EC0C0CC8, &unk_1C4F405F0);
            v98 = v207;
            sub_1C440BAA8(v207, 1, 1, v96);
          }

          else
          {
            v98 = v207;
            sub_1C4EFFC58();
            v88(v212, v84);
            if (sub_1C44157D4(v98, 1, v96) != 1)
            {
              v99 = v201;
              (v218)(v201, v98, v96);
              v100 = v209;
              v94 = sub_1C4EF9C18();
              v101 = *v228;
              (*v228)(v99, v96);
              v101(v100, v96);
              v23 = v222;
              v75 = v243;
              v91 = v229;
              v68 = v230;
              goto LABEL_21;
            }

            (*v228)(v209, v96);
          }

          v23 = v222;
          v68 = v230;
          sub_1C4420C3C(v98, &unk_1EC0B84E0, qword_1C4F0D2D0);
          v94 = 1;
          v75 = v243;
          v91 = v229;
          goto LABEL_21;
        }
      }

      sub_1C4420C3C(v85, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v89 = v216;
      sub_1C4EFFE68();
      if (sub_1C44157D4(v89, 1, v84) == 1)
      {
        sub_1C4420C3C(v89, &qword_1EC0C0CC8, &unk_1C4F405F0);
        v90 = v217;
        sub_1C440BAA8(v217, 1, 1, v246);
        v23 = v222;
        v91 = v229;
      }

      else
      {
        v92 = v217;
        sub_1C4EFFC58();
        v90 = v92;
        (*(*(v84 - 8) + 8))(v89, v84);
        v93 = sub_1C44157D4(v92, 1, v246);
        v23 = v222;
        v91 = v229;
        if (v93 != 1)
        {
          sub_1C4420C3C(v90, &unk_1EC0B84E0, qword_1C4F0D2D0);
          v94 = 0;
          goto LABEL_21;
        }
      }

      sub_1C4420C3C(v90, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v94 = 1;
LABEL_21:
      v102 = v219;
      (v219)(v227, v75);
      v102(v225, v75);
      v80 = v237;
      v5 += v238;
      v81 = &v240[v238];
      v71 = v91 + 1;
      v79 = v82 + 1;
      if ((v231 ^ v94))
      {
        goto LABEL_25;
      }
    }

    v71 = v80;
LABEL_25:
    if ((v231 & 1) == 0)
    {
      v5 = v204;
      v104 = v246;
      goto LABEL_46;
    }

    v103 = v208;
    if (v71 < v208)
    {
      goto LABEL_168;
    }

    if (v208 >= v71)
    {
      v5 = v204;
      v104 = v246;
    }

    else
    {
      v105 = v80 >= v82 ? v82 : v80;
      v106 = v71;
      v107 = v238 * (v105 - 1);
      v108 = v208;
      v109 = v238 * v105;
      v110 = v208 * v238;
      v229 = v106;
      do
      {
        if (v108 != --v106)
        {
          v111 = *v224;
          if (!*v224)
          {
            goto LABEL_173;
          }

          v112 = v243;
          v113 = *v242;
          (*v242)(v213, v111 + v110, v243);
          v114 = v110 < v107 || v111 + v110 >= (v111 + v109);
          if (v114)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v110 != v107)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v113((v111 + v107), v213, v112);
          v68 = v230;
        }

        ++v108;
        v107 -= v238;
        v109 -= v238;
        v110 += v238;
      }

      while (v108 < v106);
      v5 = v204;
      v104 = v246;
      v75 = v243;
      v71 = v229;
LABEL_46:
      v103 = v208;
    }

LABEL_48:
    v115 = v224[1];
    if (v71 < v115)
    {
      if (__OFSUB__(v71, v103))
      {
        goto LABEL_165;
      }

      if (v71 - v103 < v202)
      {
        break;
      }
    }

LABEL_80:
    v68 = v215;
    if (v71 < v103)
    {
      goto LABEL_164;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v229 = v71;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v190 = *(v68 + 2);
      sub_1C458A358();
      v68 = v191;
    }

    v148 = *(v68 + 2);
    v149 = v148 + 1;
    if (v148 >= *(v68 + 3) >> 1)
    {
      sub_1C458A358();
      v68 = v192;
    }

    *(v68 + 2) = v149;
    v150 = v68 + 32;
    v151 = &v68[16 * v148 + 32];
    v152 = v229;
    *v151 = v208;
    *(v151 + 1) = v152;
    v240 = *v206;
    if (!v240)
    {
      goto LABEL_174;
    }

    if (v148)
    {
      while (1)
      {
        v153 = v149 - 1;
        v154 = &v150[2 * v149 - 2];
        v155 = &v68[16 * v149];
        if (v149 >= 4)
        {
          break;
        }

        if (v149 == 3)
        {
          v156 = *(v68 + 4);
          v157 = *(v68 + 5);
          v166 = __OFSUB__(v157, v156);
          v158 = v157 - v156;
          v159 = v166;
LABEL_100:
          if (v159)
          {
            goto LABEL_151;
          }

          v171 = *v155;
          v170 = *(v155 + 1);
          v172 = __OFSUB__(v170, v171);
          v173 = v170 - v171;
          v174 = v172;
          if (v172)
          {
            goto LABEL_154;
          }

          v175 = v154[1];
          v176 = v175 - *v154;
          if (__OFSUB__(v175, *v154))
          {
            goto LABEL_157;
          }

          if (__OFADD__(v173, v176))
          {
            goto LABEL_159;
          }

          if (v173 + v176 >= v158)
          {
            if (v158 < v176)
            {
              v153 = v149 - 2;
            }

            goto LABEL_122;
          }

          goto LABEL_115;
        }

        if (v149 < 2)
        {
          goto LABEL_153;
        }

        v178 = *v155;
        v177 = *(v155 + 1);
        v166 = __OFSUB__(v177, v178);
        v173 = v177 - v178;
        v174 = v166;
LABEL_115:
        if (v174)
        {
          goto LABEL_156;
        }

        v180 = *v154;
        v179 = v154[1];
        v166 = __OFSUB__(v179, v180);
        v181 = v179 - v180;
        if (v166)
        {
          goto LABEL_158;
        }

        if (v181 < v173)
        {
          goto LABEL_129;
        }

LABEL_122:
        if (v153 - 1 >= v149)
        {
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        if (!*v224)
        {
          goto LABEL_171;
        }

        v185 = &v150[2 * v153 - 2];
        v186 = *v185;
        v187 = &v150[2 * v153];
        v188 = *(v187 + 1);
        sub_1C4BEAD5C(*v224 + *(v223 + 72) * *v185, *v224 + *(v223 + 72) * *v187, *v224 + *(v223 + 72) * v188, v240);
        if (v5)
        {
          goto LABEL_144;
        }

        if (v188 < v186)
        {
          goto LABEL_146;
        }

        v5 = *(v68 + 2);
        if (v153 > v5)
        {
          goto LABEL_147;
        }

        *v185 = v186;
        v185[1] = v188;
        if (v153 >= v5)
        {
          goto LABEL_148;
        }

        v149 = v5 - 1;
        sub_1C461950C(v187 + 16, v5 - 1 - v153, &v150[2 * v153]);
        *(v68 + 2) = v5 - 1;
        v189 = v5 > 2;
        v5 = 0;
        v104 = v246;
        if (!v189)
        {
          goto LABEL_129;
        }
      }

      v160 = &v150[2 * v149];
      v161 = *(v160 - 8);
      v162 = *(v160 - 7);
      v166 = __OFSUB__(v162, v161);
      v163 = v162 - v161;
      if (v166)
      {
        goto LABEL_149;
      }

      v165 = *(v160 - 6);
      v164 = *(v160 - 5);
      v166 = __OFSUB__(v164, v165);
      v158 = v164 - v165;
      v159 = v166;
      if (v166)
      {
        goto LABEL_150;
      }

      v167 = *(v155 + 1);
      v168 = v167 - *v155;
      if (__OFSUB__(v167, *v155))
      {
        goto LABEL_152;
      }

      v166 = __OFADD__(v158, v168);
      v169 = v158 + v168;
      if (v166)
      {
        goto LABEL_155;
      }

      if (v169 >= v163)
      {
        v183 = *v154;
        v182 = v154[1];
        v166 = __OFSUB__(v182, v183);
        v184 = v182 - v183;
        if (v166)
        {
          goto LABEL_163;
        }

        if (v158 < v184)
        {
          v153 = v149 - 2;
        }

        goto LABEL_122;
      }

      goto LABEL_100;
    }

LABEL_129:
    v69 = v104;
    v215 = v68;
    v66 = v224[1];
    v67 = v229;
    v68 = v230;
    v23 = v222;
    v63 = v223;
    if (v229 >= v66)
    {
      goto LABEL_133;
    }
  }

  v116 = v103 + v202;
  if (__OFADD__(v103, v202))
  {
    goto LABEL_166;
  }

  if (v116 >= v115)
  {
    v116 = v224[1];
  }

  if (v116 < v103)
  {
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    v215 = sub_1C46194F4(v215);
LABEL_135:
    v193 = (v215 + 16);
    for (i = *(v215 + 2); i >= 2; *v193 = i)
    {
      if (!*v224)
      {
        goto LABEL_172;
      }

      v195 = &v215[16 * i];
      v196 = *v195;
      v197 = &v193[2 * i];
      v198 = *(v197 + 1);
      sub_1C4BEAD5C(*v224 + *(v223 + 72) * *v195, *v224 + *(v223 + 72) * *v197, *v224 + *(v223 + 72) * v198, v68);
      if (v5)
      {
        break;
      }

      if (v198 < v196)
      {
        goto LABEL_160;
      }

      if (i - 2 >= *v193)
      {
        goto LABEL_161;
      }

      *v195 = v196;
      *(v195 + 1) = v198;
      v199 = *v193 - i;
      if (*v193 < i)
      {
        goto LABEL_162;
      }

      i = *v193 - 1;
      sub_1C461950C(v197 + 16, v199, v197);
    }

    goto LABEL_144;
  }

  if (v71 == v116)
  {
    goto LABEL_80;
  }

  v204 = v5;
  v117 = *v224;
  v118 = *(v223 + 72);
  v240 = *(v223 + 16);
  v119 = (v117 + v118 * (v71 - 1));
  v237 = -v118;
  v238 = v117;
  v120 = (v103 - v71);
  v210 = v118;
  v121 = (v117 + v71 * v118);
  v211 = v116;
  while (2)
  {
    v229 = v71;
    v218 = v121;
    v122 = v121;
    v219 = v120;
    v221 = v119;
LABEL_58:
    v123 = v240;
    (v240)(v247, v122, v75, v64);
    (v123)(v248, v119, v75);
    sub_1C4EFFE68();
    v124 = sub_1C4EFFC68();
    if (sub_1C44157D4(v68, 1, v124) == 1)
    {
      sub_1C4420C3C(v68, &qword_1EC0C0CC8, &unk_1C4F405F0);
      v125 = v241;
      sub_1C440BAA8(v241, 1, 1, v104);
      goto LABEL_61;
    }

    v126 = v241;
    sub_1C4EFFC58();
    v125 = v126;
    v127 = *(*(v124 - 8) + 8);
    v127(v68, v124);
    v128 = v234;
    if (sub_1C44157D4(v125, 1, v104) != 1)
    {
      v135 = v128;
      v131 = v246;
      v231 = *v232;
      (v231)(v135, v125, v246);
      v136 = v226;
      sub_1C4EFFE68();
      if (sub_1C44157D4(v136, 1, v124) == 1)
      {
        (*v228)(v234, v131);
        sub_1C4420C3C(v136, &qword_1EC0C0CC8, &unk_1C4F405F0);
        v137 = v233;
        sub_1C440BAA8(v233, 1, 1, v131);
      }

      else
      {
        sub_1C4EFFC58();
        v138 = v136;
        v137 = v233;
        v127(v138, v124);
        if (sub_1C44157D4(v137, 1, v131) != 1)
        {
          v142 = v214;
          (v231)(v214, v137, v131);
          v143 = v234;
          LODWORD(v231) = sub_1C4EF9C18();
          v144 = *v228;
          (*v228)(v142, v131);
          v144(v143, v131);
          v145 = *v245;
          v75 = v243;
          (*v245)(v248, v243);
          (v145)(v247, v75);
          v68 = v230;
          if ((v231 & 1) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_72;
        }

        (*v228)(v234, v131);
      }

      v132 = v137;
      v68 = v230;
LABEL_70:
      v75 = v243;
      break;
    }

LABEL_61:
    sub_1C4420C3C(v125, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v129 = v235;
    sub_1C4EFFE68();
    if (sub_1C44157D4(v129, 1, v124) == 1)
    {
      sub_1C4420C3C(v129, &qword_1EC0C0CC8, &unk_1C4F405F0);
      v130 = v236;
      v131 = v246;
      sub_1C440BAA8(v236, 1, 1, v246);
      v132 = v130;
      goto LABEL_70;
    }

    v133 = v236;
    sub_1C4EFFC58();
    (*(*(v124 - 8) + 8))(v129, v124);
    v131 = v246;
    v134 = sub_1C44157D4(v133, 1, v246);
    v132 = v133;
    v75 = v243;
    if (v134 != 1)
    {
      sub_1C4420C3C(v236, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v146 = *v245;
      (*v245)(v248, v75);
      (v146)(v247, v75);
LABEL_77:
      v104 = v131;
LABEL_78:
      v71 = v229 + 1;
      v119 = &v221[v210];
      v120 = v219 - 1;
      v121 = &v218[v210];
      if (v229 + 1 == v211)
      {
        v71 = v211;
        v5 = v204;
        v103 = v208;
        goto LABEL_80;
      }

      continue;
    }

    break;
  }

  sub_1C4420C3C(v132, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v139 = *v245;
  (*v245)(v248, v75);
  (v139)(v247, v75);
LABEL_72:
  if (v238)
  {
    v140 = *v242;
    v141 = v239;
    (*v242)(v239, v122, v75);
    swift_arrayInitWithTakeFrontToBack();
    v140(v119, v141, v75);
    v119 += v237;
    v122 += v237;
    v114 = __CFADD__(v120++, 1);
    v104 = v131;
    if (v114)
    {
      goto LABEL_78;
    }

    goto LABEL_58;
  }

  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
}

void sub_1C4BEAD5C(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_1C4EFFE78();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v72 - v19;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  v23 = a2 - a1 == 0x8000000000000000 && v22 == -1;
  if (v23)
  {
    goto LABEL_66;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_67;
  }

  v88 = a1;
  v87 = a4;
  v81 = a3;
  v82 = (v18 + 16);
  v83 = (v18 + 8);
  v26 = v24 / v22;
  v27 = v22;
  if ((a2 - a1) / v22 >= v24 / v22)
  {
    v77 = v13;
    sub_1C459C64C(a2, v24 / v22, a4);
    v43 = a2;
    v44 = a4 + v26 * v27;
    v45 = -v27;
    v46 = v44;
    v47 = v81;
    v48 = v85;
    v74 = v45;
    v75 = a1;
    v76 = a4;
LABEL_39:
    v78 = v43;
    v79 = (v43 + v45);
    v49 = v47;
    v72 = v46;
    v50 = v46;
    v51 = v80;
    while (1)
    {
      if (v44 <= a4)
      {
        v85 = v48;
        v86 = v50;
        v88 = v43;
        goto LABEL_64;
      }

      if (v43 <= a1)
      {
        v88 = v43;
        v85 = v48;
        v86 = v72;
        goto LABEL_64;
      }

      v52 = v51;
      v53 = v49;
      v73 = v50;
      v54 = v48;
      v81 = v44;
      v55 = v44 + v45;
      v56 = *v82;
      v57 = v77;
      (*v82)(v77, v44 + v45, v8);
      (v56)(v52, v79, v8);
      v58 = sub_1C4BE88A4(v57, v52);
      v85 = v54;
      if (v54)
      {
        break;
      }

      v59 = v58;
      v47 = v53 + v45;
      v60 = *v83;
      (*v83)(v52, v8);
      v60(v57, v8);
      if (v59)
      {
        v64 = v53 < v78 || v47 >= v78;
        a4 = v76;
        if (v64)
        {
          v65 = v79;
          swift_arrayInitWithTakeFrontToBack();
          v43 = v65;
          v46 = v73;
          v45 = v74;
          v48 = v85;
          a1 = v75;
          v44 = v81;
        }

        else
        {
          v45 = v74;
          v46 = v73;
          v66 = v79;
          v43 = v79;
          v48 = v85;
          a1 = v75;
          v44 = v81;
          if (v53 != v78)
          {
            v67 = v85;
            v68 = v74;
            v69 = v73;
            swift_arrayInitWithTakeBackToFront();
            v44 = v81;
            v48 = v67;
            v43 = v66;
            v46 = v69;
            v45 = v68;
          }
        }

        goto LABEL_39;
      }

      v61 = v53 < v81 || v47 >= v81;
      a4 = v76;
      if (v61)
      {
        swift_arrayInitWithTakeFrontToBack();
        v49 = v53 + v45;
        v44 = v55;
        v50 = v55;
        v43 = v78;
        v48 = v85;
        v45 = v74;
        a1 = v75;
        v51 = v80;
      }

      else
      {
        v50 = v55;
        v23 = v81 == v53;
        v49 = v53 + v45;
        v44 = v55;
        v43 = v78;
        v48 = v85;
        v45 = v74;
        a1 = v75;
        v51 = v80;
        if (!v23)
        {
          v62 = v78;
          v63 = v85;
          swift_arrayInitWithTakeBackToFront();
          v48 = v63;
          v43 = v62;
          v49 = v47;
          v44 = v55;
          v50 = v55;
        }
      }
    }

    v71 = *v83;
    (*v83)(v52, v8);
    v71(v57, v8);
    v88 = v78;
    v86 = v73;
  }

  else
  {
    v28 = v8;
    v29 = (a2 - a1) / v22;
    sub_1C459C64C(a1, v29, a4);
    v30 = a2;
    v79 = v20;
    v80 = (a4 + v29 * v27);
    v86 = v80;
    v31 = v81;
    v32 = a1;
    v84 = v28;
    v78 = v16;
    while (a4 < v80 && v30 < v31)
    {
      v34 = v27;
      v35 = *v82;
      v36 = v30;
      (*v82)(v20);
      (v35)(v16, a4, v28);
      v37 = v85;
      v38 = sub_1C4BE88A4(v20, v16);
      v85 = v37;
      if (v37)
      {
        v70 = *v83;
        (*v83)(v16, v28);
        v70(v20, v28);
        break;
      }

      v39 = v38;
      v40 = *v83;
      (*v83)(v16, v28);
      v40(v20, v28);
      v27 = v34;
      if (v39)
      {
        if (v32 < v36 || v32 >= v36 + v34)
        {
          swift_arrayInitWithTakeFrontToBack();
          v30 = v36 + v34;
          v16 = v78;
        }

        else
        {
          v16 = v78;
          if (v32 != v36)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v30 = v36 + v34;
        }

        v20 = v79;
      }

      else
      {
        if (v32 < a4 || v32 >= a4 + v34)
        {
          swift_arrayInitWithTakeFrontToBack();
          v16 = v78;
        }

        else
        {
          v16 = v78;
          if (v32 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v87 = a4 + v34;
        a4 += v34;
        v20 = v79;
        v30 = v36;
      }

      v32 += v34;
      v88 = v32;
      v31 = v81;
      v28 = v84;
    }
  }

LABEL_64:
  sub_1C4BEB4BC(&v88, &v87, &v86, MEMORY[0x1E69A9C00]);
}

void sub_1C4BEB4BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a4(0);
  sub_1C43FBCE0(v7);
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  sub_1C4409238();
  v12 = !v12 || v4 >= v11;
  if (v12)
  {
    sub_1C4402120();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    sub_1C4402120();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1C4BEB598(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  v8 = sub_1C456902C(a4, a5);
  sub_1C43FBCE0(v8);
  v10 = *(v9 + 72);
  if (!v10)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v7 - v6 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_20;
  }

  sub_1C4409238();
  v13 = !v13 || v5 >= v12;
  if (v13)
  {
    sub_1C4402120();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {
    sub_1C4402120();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1C4BEB660(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C4BEB6A8()
{
  result = qword_1EC0C48D0;
  if (!qword_1EC0C48D0)
  {
    sub_1C4572308(&qword_1EC0C48D8, &qword_1C4F5C748);
    sub_1C4401CBC(&qword_1EDDDBCD8, &qword_1EC0BD400, &qword_1C4F2DBE0);
    sub_1C4BEB660(&qword_1EDDFE218, type metadata accessor for GraphTriple);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C48D0);
  }

  return result;
}

uint64_t sub_1C4BEB7A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4BEB7F8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  return sub_1C4BE5EA4(a1, *(v2 + 24), *(v2 + 56), *(v2 + 64), a2, *(v2 + 72));
}

void sub_1C4BEB8E0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1C4C81AA0();
  if (!v3)
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if (swift_dynamicCast())
    {
      memcpy(a3, __src, 0xE0uLL);
    }

    else
    {
      bzero(__src, 0xE0uLL);
      sub_1C4423A0C(__src, &qword_1EC0C48F8, &qword_1C4F5C958);
      sub_1C450B034();
      swift_allocError();
      *v7 = a1;
      *(v7 + 8) = a2;
      *(v7 + 16) = 0xD000000000000024;
      *(v7 + 24) = 0x80000001C4FB9260;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0xE000000000000000;
      *(v7 + 48) = v8;
      *(v7 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4BEBA08(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, unint64_t *a5@<X8>)
{
  v8 = sub_1C4EFBE38();
  sub_1C43FCE64();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  v17 = sub_1C4EFDAB8();
  sub_1C43FCE64();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v25 = v24 - v23;
  v26 = (a3 + *(_s6ConfigVMa() + 64));
  if (v26[1])
  {
    v77 = v26[1];
    v71 = v16;
    v72 = v10;
    v73 = v8;
    v74 = *v26;
    v76 = v26[2];
    v75 = v26[3];
    v80 = v26[4];
    v79 = v26[5];
    v27 = v26[7];
    v78 = v26[6];
    v29 = v26[8];
    v28 = v26[9];
    v30 = v26[10];
    v89 = 0uLL;
    sub_1C44E9220();
    if (!v102)
    {
      v68 = v30;
      v69 = v28;
      v70 = v29;
      v84 = v31;
      v32 = *(*(v31 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
      (*(v19 + 104))(v25, *MEMORY[0x1E69A9418], v17);
      v33 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      v36 = sub_1C45EA510(v32, v25, v80, v79);
      v37 = *(v81 + 16);
      v38 = type metadata accessor for BehaviorHistoryUtility();
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      swift_allocObject();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      swift_bridgeObjectRetain_n();

      v45 = sub_1C4624330(v37, a4);
      v102 = 0;
      v93 = v33;
      v94 = &off_1F43E2510;
      v96 = v38;
      v97 = &off_1F43E41D8;
      v95 = v45;
      v89.n128_u64[0] = v74;
      v89.n128_u64[1] = v77;
      v90 = v32;
      v91 = v36;
      v100 = &type metadata for BehaviorDatabaseHistogramManager;
      v101 = &off_1F43E25F0;
      *&v98 = swift_allocObject();
      sub_1C4BEB830(&v89, v98 + 16);
      v87 = v38;
      v88 = &off_1F43E41D8;
      *&v86 = v45;
      v85[4] = &off_1F43E2510;
      v85[3] = v33;
      v85[0] = v36;
      type metadata accessor for CachedBehaviorDatabaseHistogramManager();
      v46 = swift_allocObject();
      sub_1C4418280(v85, v33);
      sub_1C43FCE64();
      v48 = *(v47 + 64);
      MEMORY[0x1EEE9AC00](v49);
      sub_1C43FBCC4();
      v52 = (v51 - v50);
      (*(v53 + 16))(v51 - v50);
      v54 = *v52;
      v46[15] = v33;
      v46[16] = &off_1F43E2510;
      v46[12] = v54;
      v46[17] = MEMORY[0x1E69E7CC8];
      sub_1C441D670(&v86, (v46 + 2));
      sub_1C441D670(&v98, (v46 + 7));
      swift_retain_n();

      sub_1C440962C(v85);
      sub_1C4BEB88C(&v89);

      v91 = v33;
      v92 = &off_1F43E2510;
      v89.n128_u64[0] = v36;
      v55 = 0;
      if (v46)
      {
        v55 = type metadata accessor for CachedBehaviorDatabaseHistogramManager();
        v56 = &off_1F43E24F0;
      }

      else
      {
        v56 = 0;
        *(&v98 + 1) = 0;
        v99 = 0;
      }

      *&v98 = v46;
      v100 = v55;
      v101 = v56;
      sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
      v57 = (type metadata accessor for ViewDatabaseArtifact.Property() - 8);
      v58 = *(*v57 + 72);
      v59 = (*(*v57 + 80) + 32) & ~*(*v57 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1C4F0C890;
      v61 = (v60 + v59);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4BEC810(v29, v69);
      sub_1C4EFBE08();
      *v61 = 1701869940;
      *(v61 + 1) = 0xE400000000000000;
      v62 = *(v72 + 32);
      v62(&v61[v57[7]], v71, v73);
      v63 = &v61[v58];
      sub_1C4EFBE08();
      strcpy(&v61[v58], "behaviorType");
      v63[13] = 0;
      *(v63 + 7) = -5120;
      v62(&v61[v58 + v57[7]], v71, v73);
      v64 = &v61[2 * v58];
      sub_1C4EFBDB8();
      *v64 = 1635017060;
      *(v64 + 1) = 0xE400000000000000;
      v62(&v64[v57[7]], v71, v73);
      a5[4] = v84;
      a5[5] = v60;
      *a5 = v74;
      a5[1] = v77;
      a5[2] = v76;
      a5[3] = v75;
      sub_1C442E860(&v89, (a5 + 11));
      sub_1C46DA590(&v98, (a5 + 6));
      v65 = *(*(v84 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
      v66 = type metadata accessor for BehaviorDatabaseEventTracker();
      swift_allocObject();
      v67 = sub_1C45DC594(v78, v27, v65, v70, v69, v68);
      a5[19] = v66;
      a5[20] = &off_1F43E2390;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4BEC810(v70, v69);

      a5[16] = v67;
      sub_1C4423A0C(&v98, &qword_1EC0BB460, &qword_1C4F5D900);
      sub_1C440962C(&v89);
      a5[21] = v80;
      a5[22] = v79;
      a5[23] = v78;
      a5[24] = v27;
      a5[25] = v70;
      a5[26] = v69;
      a5[27] = v68;
    }
  }

  else
  {
    sub_1C450B034();
    v41 = swift_allocError();
    *v42 = a1;
    v42[1] = a2;
    sub_1C442D638(v41, v42);
    sub_1C44010A8(v89, v43, v44);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4BEC2A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  a5[3] = &type metadata for EntityInteractionHistogramDatabaseTable;
  a5[4] = &off_1F43E8B88;
  v11 = swift_allocObject();
  *a5 = v11;
  sub_1C4BEBA08(a1, a2, a3, a4, (v11 + 16));
  if (v5)
  {
    sub_1C47C41F8(a5);
  }
}

void sub_1C4BEC368(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  sub_1C4BEBA08(a1, a2, a3, a4, v8);
  if (!v5)
  {
    a5[3] = &_s36EntityInteractionHistogramViewClientVN;
    a5[4] = &off_1F4402490;
    v7 = swift_allocObject();
    *a5 = v7;
    memcpy((v7 + 16), v8, 0xE0uLL);
  }
}

void sub_1C4BEC438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_1C4BEBA08(a1, a2, a3, a5, v12);
  if (!v7)
  {
    v10 = *(v12[4] + 16);
    MEMORY[0x1EEE9AC00](v9);
    v11[2] = v12;

    sub_1C446C37C(a7, v11);

    sub_1C4707ED4(v12);
  }
}

uint64_t sub_1C4BEC4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  v7 = (a3 + *(_s6ConfigVMa() + 64));
  v8 = v7[1];
  if (v8)
  {
    v26 = a1;
    v27 = a2;
    v9 = v7[9];
    v25 = v7[8];
    v10 = v7[10];
    v11 = v7[6];
    v12 = v7[7];
    v14 = v7[4];
    v13 = v7[5];
    v15 = *v7;
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0C890;
    *(inited + 32) = v15;
    *(inited + 40) = v8;
    *(inited + 48) = v14;
    *(inited + 56) = v13;
    *(inited + 64) = v11;
    *(inited + 72) = v12;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v9)
    {
      sub_1C4BEC810(v25, v9);

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C443D664();
      v18 = v17;
      v17[2] = 4;
      v17[10] = v25;
      v17[11] = v9;

      sub_1C4C74574(v26, v27, v18);
    }

    else
    {
      sub_1C4C74574(v26, v27, inited);
    }
  }

  else
  {
    sub_1C450B034();
    v19 = swift_allocError();
    *v20 = a1;
    v20[1] = a2;
    sub_1C442D638(v19, v20);
    sub_1C44010A8(v28, v21, v22);
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C4BEC810(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C4BEC854()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  if (v0[11])
  {
    sub_1C440962C(v0 + 8);
  }

  sub_1C440962C(v0 + 13);
  sub_1C440962C(v0 + 18);
  v6 = v0[24];

  v7 = v0[26];

  if (v0[28])
  {

    v8 = v0[29];
  }

  return MEMORY[0x1EEE6BDD0](v0, 240, 7);
}

void sub_1C4BEC8F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_contextAspects);
  if (*(v1 + 16) == 1)
  {
    v2 = *(v1 + 32);
    sub_1C456902C(&qword_1EC0B8810, &qword_1C4F0DC00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0C890;
    *(inited + 32) = v2;
    *(inited + 40) = 1;
    *(inited + 48) = v2;
    *(inited + 56) = 0;
    sub_1C456902C(&qword_1EC0B8BC8, &unk_1C4F17750);
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_1C4F0D130;
    *(v4 + 32) = v2;
    sub_1C4D50668(v4);
    *(inited + 64) = v5;
    *(inited + 72) = 3;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B8810, &qword_1C4F0DC00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    v6 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    *(inited + 32) = sub_1C45979B8(v6);
    *(inited + 40) = 3;
  }

  sub_1C4D50A90(inited);
}

void sub_1C4BEC9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C4BEC8F0();
  sub_1C463402C(v22);
  v24 = v23;

  sub_1C4499940(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4BECA58(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v96 = a2;
  v102 = a1;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v90 - v7;
  v9 = sub_1C4EF9CD8();
  v10 = sub_1C43FCDF8(v9);
  v103 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v90 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v90 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v90 - v24;
  v26 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_keyValueStore);
  sub_1C446FB00();
  if (v3)
  {

    sub_1C440BAA8(v8, 1, 1, v9);
    v91 = 0;
  }

  else
  {
    v100 = v22;
    v101 = v19;
    v91 = 0;
    if (sub_1C44157D4(v8, 1, v9) != 1)
    {
      v38 = v103;
      v39 = v25;
      (v103)[4](v25, v8, v9);
      v40 = v9;
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406728();
      }

      v41 = sub_1C4F00978();
      sub_1C442B738(v41, qword_1EDE2DDE0);
      v42 = sub_1C4F00968();
      v43 = sub_1C4F01CD8();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v100;
      if (v44)
      {
        v46 = swift_slowAlloc();
        v16 = v4;
        *v46 = 0;
        _os_log_impl(&dword_1C43F8000, v42, v43, "EntityRelevanceContextualFeatureView: Mocked date context found in KeyValueStore.", v46, 2u);
        sub_1C43FBE2C();
      }

      v99 = v38[2];
      v99(v45, v39, v40);
      v47 = sub_1C4F00968();
      v48 = sub_1C4F01CD8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v98 = v39;
        v50 = v49;
        v97 = swift_slowAlloc();
        v104 = v97;
        *v50 = 136315138;
        sub_1C45C2A2C();
        LODWORD(v95) = v48;
        v51 = sub_1C4F02858();
        v93 = v4;
        v53 = v52;
        v54 = sub_1C44205F4();
        v55(v54);
        v56 = sub_1C441D828(v51, v53, &v104);
        v4 = v93;

        v57 = v50;
        v39 = v98;
        *(v57 + 1) = v56;
        _os_log_impl(&dword_1C43F8000, v47, v95, "EntityRelevanceContextualFeatureView: Using %s as the context instead of reading from currentContext views.", v57, 0xCu);
        sub_1C440962C(v97);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      else
      {

        v58 = sub_1C44205F4();
        v59(v58);
      }

      v99(v101, v39, v40);
      v104 = 0;
      v105 = 256;
      v60 = type metadata accessor for BehaviorContext();
      v61 = *(v60 + 48);
      v62 = *(v60 + 52);
      swift_allocObject();
      sub_1C45D689C();
      v37 = v63;
      v45(v39, v40);
      goto LABEL_18;
    }
  }

  sub_1C4423A0C(v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (qword_1EDDFA668 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v27 = sub_1C4F00978();
    sub_1C442B738(v27, qword_1EDE2DDE0);
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CF8();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v103;
    if (v30)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1C43F8000, v28, v29, "EntityRelevanceContextualFeatureView: Merging contexts based on currentContext views.", v32, 2u);
      sub_1C43FBE2C();
    }

    type metadata accessor for BehaviorContext();
    v33 = *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_contextViews);
    sub_1C4EF9CC8();
    v34 = v91;
    v35 = sub_1C4BED310(v33, v16);
    v91 = v34;
    if (v34)
    {
      return (v31[1])(v16, v9);
    }

    v37 = v35;
    (v31[1])(v16, v9);
LABEL_18:
    v108 = MEMORY[0x1E69E7CC0];
    v95 = *(v102 + 16);
    v94 = v102 + 32;

    v64 = 0;
    v93 = v4;
    v92 = v37;
    while (1)
    {
      if (v64 == v95)
      {

        return v108;
      }

      v65 = (v94 + 48 * v64);
      v66 = v65[1];
      v106 = *v65;
      v107[0] = v66;
      *(v107 + 9) = *(v65 + 25);
      sub_1C45A2358(&v106, &v104);
      sub_1C4BEC8F0();
      v68 = sub_1C4601874(&v106, v67, v37);

      if (v68)
      {
        break;
      }

      sub_1C45EC75C(&v106);
      v89 = MEMORY[0x1E69E7CC0];
LABEL_41:
      ++v64;
      sub_1C49D3A70(v89);
    }

    v98 = v64;
    v97 = objc_autoreleasePoolPush();
    v103 = v68;
    v69 = [v68 featureNames];
    v70 = sub_1C4F01AB8();

    v9 = v70 + 56;
    v71 = 1 << *(v70 + 32);
    if (v71 < 64)
    {
      v72 = ~(-1 << v71);
    }

    else
    {
      v72 = -1;
    }

    v73 = v72 & *(v70 + 56);
    v74 = (v71 + 63) >> 6;
    v102 = v70;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v4 = 0;
    v99 = MEMORY[0x1E69E7CC0];
    while (v73)
    {
LABEL_30:
      v76 = (*(v102 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v73)))));
      v77 = *v76;
      v78 = v76[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v16 = objc_autoreleasePoolPush();
      v79 = sub_1C4F01108();
      v80 = [v103 featureValueForName_];

      v101 = v80;
      if (v80)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v100 = sub_1C45D2400();
        v82 = v81;
        v80 = v78;
      }

      else
      {
        v77 = 0;
        v100 = 0;
        v82 = 0;
      }

      v73 &= v73 - 1;
      objc_autoreleasePoolPop(v16);

      if (v80)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = *(v99 + 2);
          sub_1C458B504();
          v99 = v87;
        }

        v16 = *(v99 + 2);
        if (v16 >= *(v99 + 3) >> 1)
        {
          sub_1C458B504();
          v99 = v88;
        }

        v84 = v99;
        v83 = v100;
        *(v99 + 2) = v16 + 1;
        v85 = &v84[5 * v16];
        v85[4] = v77;
        v85[5] = v80;
        v85[6] = v83;
        v85[7] = v82;
        v85[8] = v101;
      }
    }

    while (1)
    {
      v75 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v75 >= v74)
      {

        objc_autoreleasePoolPop(v97);
        sub_1C45EC75C(&v106);
        swift_unknownObjectRelease();
        v37 = v92;
        v64 = v98;
        v89 = v99;
        goto LABEL_41;
      }

      v73 = *(v9 + 8 * v75);
      ++v4;
      if (v73)
      {
        v4 = v75;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_44:
    sub_1C4406728();
  }
}

uint64_t sub_1C4BED310(char *a1, uint64_t a2)
{
  v4 = v3;
  v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C43FBD08();
  v140 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v137 = &v119 - v12;
  v153 = sub_1C4EF9F68();
  v13 = sub_1C43FCDF8(v153);
  v138 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v139 = v18 - v17;
  v19 = sub_1C4EF9F88();
  v20 = sub_1C43FCDF8(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v27 = v26 - v25;
  v28 = sub_1C4EF9CD8();
  v29 = sub_1C43FCDF8(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v119 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v44 = *(a1 + 2);
  if (!v44)
  {
    sub_1C4BEE870();
    swift_allocError();
    *v48 = 0;
LABEL_18:
    swift_willThrow();
    return a1;
  }

  if (v44 == 1)
  {
    v45 = *(a1 + 7);
    v46 = *(a1 + 8);
    sub_1C4409678(a1 + 4, v45);
    v47 = (*(v46 + 24))(v45, v46);
    if (!v4)
    {
      return v47;
    }

    return a1;
  }

  v131 = v39;
  v122 = v36;
  v123 = v43;
  v126 = v27;
  v124 = v22;
  v125 = v19;
  v128 = a2;
  v134 = &v119 - v40;
  v132 = v42;
  v135 = v41;
  v133 = v38;
  v127 = v2;
  v136 = v4;
  v49 = (a1 + 32);
  v50 = MEMORY[0x1E69E7CC0];
  a1 = &qword_1EC0B8F70;
  v129 = v49;
  v130 = v44;
  do
  {
    sub_1C442E860(v49, &v150);
    sub_1C441D670(&v150, &v143);
    sub_1C456902C(&qword_1EC0B8F70, &qword_1C4F0EA48);
    sub_1C456902C(&qword_1EC0B8968, &qword_1C4F0DD70);
    if (swift_dynamicCast())
    {
      sub_1C441D670(v141, &v148);
      sub_1C441D670(&v148, &v145);
      sub_1C441D670(&v145, &v148);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = v50[2];
        sub_1C458BF90();
        v50 = v61;
      }

      v51 = v50[2];
      if (v51 >= v50[3] >> 1)
      {
        sub_1C458BF90();
        v50 = v62;
      }

      v52 = v149;
      v53 = sub_1C4418280(&v148, v149);
      v54 = *(*(v52 - 8) + 64);
      MEMORY[0x1EEE9AC00](v53);
      sub_1C43FBCC4();
      v57 = (v56 - v55);
      (*(v58 + 16))(v56 - v55);
      v59 = *v57;
      v146 = type metadata accessor for CurrentTimeContextView(0);
      v147 = &off_1F43E6EE0;
      *&v145 = v59;
      v50[2] = v51 + 1;
      sub_1C441D670(&v145, &v50[5 * v51 + 4]);
      sub_1C440962C(&v148);
      a1 = &qword_1EC0B8F70;
    }

    else
    {
      v142 = 0;
      memset(v141, 0, sizeof(v141));
      sub_1C4423A0C(v141, &qword_1EC0C4900, &qword_1C4F5C9F8);
    }

    v49 += 40;
    --v44;
  }

  while (v44);
  v63 = v50[2];
  if (v63 > 2)
  {
LABEL_16:

LABEL_17:
    sub_1C4BEE870();
    swift_allocError();
    *v64 = 1;
    goto LABEL_18;
  }

  if (v63 == 2)
  {
    v66 = 0;
    a1 = (v50 + 4);
    v67 = (v50 + 4);
    v68 = v153;
    while (v66 != 2)
    {
      if (v66 >= v50[2])
      {
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      sub_1C442E860(v67, &v145);
      if (*(*sub_1C4409678(&v145, v146) + 72) != 1)
      {
        sub_1C441D670(&v145, &v148);
        sub_1C441D670(&v148, &v150);
        v73 = 0;
        v74 = v139;
        while (1)
        {
          if (v73 == 2)
          {

            sub_1C440962C(&v150);
            goto LABEL_17;
          }

          if (v73 >= v50[2])
          {
            goto LABEL_72;
          }

          sub_1C442E860(a1, &v143);
          if (*(*sub_1C4409678(&v143, v144) + 72))
          {
            break;
          }

          ++v73;
          sub_1C440962C(&v143);
          a1 += 40;
        }

        sub_1C441D670(&v143, &v145);
        sub_1C441D670(&v145, &v148);
        v76 = sub_1C4409678(&v150, v151);
        if (*(*v76 + 72))
        {
          goto LABEL_76;
        }

        v77 = *(*v76 + 64);

        v78 = *sub_1C4409678(&v150, v151);
        v79 = v136;
        sub_1C46A7024();
        a1 = v79;
        if (v79)
        {
          sub_1C440962C(&v148);
          sub_1C440962C(&v150);
          return a1;
        }

        v100 = *sub_1C4409678(&v148, v149);
        v101 = sub_1C46A7024();
        v136 = 0;
        v140 = v101;
        v121 = objc_autoreleasePoolPush();
        sub_1C4EF9F58();
        v131 = objc_autoreleasePoolPush();
        v102 = v138;
        v103 = *(v138 + 104);
        v103(v74, *MEMORY[0x1E6969AB0], v68);
        v104 = sub_1C4EF9F78();
        v105 = *(v102 + 8);
        v138 = v102 + 8;
        v120 = v105;
        v105(v74, v68);
        v106 = __OFSUB__(v104, 1);
        v107 = v104 - 1;
        if (!v106)
        {
          objc_autoreleasePoolPop(v131);
          v103(v74, *MEMORY[0x1E6969A48], v68);
          v108 = v140;
          if (__OFSUB__(v140, v107))
          {
            goto LABEL_75;
          }

          a1 = v137;
          sub_1C4EF9F28();
          v120(v74, v68);
          v69 = v133;
          if (sub_1C44157D4(a1, 1, v133) == 1)
          {
            sub_1C4423A0C(a1, &unk_1EC0B84E0, qword_1C4F0D2D0);
            sub_1C4600F60();
            swift_allocError();
            *v109 = v108;
            swift_willThrow();
            v110 = sub_1C44010C8();
            v111(v110);
            objc_autoreleasePoolPop(v121);
            sub_1C440962C(&v148);
            sub_1C440962C(&v150);
            return a1;
          }

          v112 = a1;
          v113 = v135;
          v114 = v122;
          (*(v135 + 32))(v122, v112, v69);
          v115 = v123;
          sub_1C4EF9E78();
          sub_1C4EF9BE8();
          v116 = *(v113 + 8);
          v116(v115, v69);
          v116(v114, v69);
          v117 = sub_1C44010C8();
          v118(v117);
          objc_autoreleasePoolPop(v121);
          sub_1C440962C(&v148);
          sub_1C440962C(&v150);
          v82 = v129;
          goto LABEL_46;
        }

        goto LABEL_74;
      }

      ++v66;
      sub_1C440962C(&v145);
      v67 += 40;
    }

    goto LABEL_16;
  }

  sub_1C486C278(&v150, v50);

  a1 = v151;
  v69 = v133;
  if (!v151)
  {
    sub_1C4423A0C(&v150, &qword_1EC0C4900, &qword_1C4F5C9F8);
    v75 = v140;
    sub_1C440BAA8(v140, 1, 1, v69);
    (*(v135 + 16))(v131, v128, v69);
    goto LABEL_42;
  }

  v70 = v152;
  sub_1C4409678(&v150, v151);
  v71 = v136;
  v72 = (*(*(v70 + 8) + 24))(a1);
  v136 = v71;
  if (v71)
  {
    sub_1C440962C(&v150);
    return a1;
  }

  v80 = v135;
  v81 = *(v135 + 16);
  v75 = v140;
  v81(v140, v72 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v69);

  sub_1C440BAA8(v75, 0, 1, v69);
  sub_1C440962C(&v150);
  if (sub_1C44157D4(v75, 1, v69) == 1)
  {
    v81(v131, v128, v69);
LABEL_42:
    if (sub_1C44157D4(v75, 1, v69) != 1)
    {
      sub_1C4423A0C(v75, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

    goto LABEL_45;
  }

  (*(v80 + 32))(v131, v75, v69);
LABEL_45:
  v82 = v129;
  (*(v135 + 32))(v134, v131, v69);
LABEL_46:
  v83 = MEMORY[0x1E69E7CC0];
  v84 = MEMORY[0x1E69E7CC0];
  for (i = v130; i; --i)
  {
    sub_1C442E860(v82, &v150);
    sub_1C442E860(&v150, &v148);
    type metadata accessor for CurrentTimeContextView(0);
    if (swift_dynamicCast())
    {

      sub_1C440962C(&v150);
    }

    else
    {
      sub_1C441D670(&v150, &v148);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v145 = v84;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v87 = *(v84 + 16);
        sub_1C459DC38();
        v84 = v145;
      }

      v88 = *(v84 + 16);
      if (v88 >= *(v84 + 24) >> 1)
      {
        sub_1C459DC38();
        v84 = v145;
      }

      *(v84 + 16) = v88 + 1;
      sub_1C441D670(&v148, v84 + 40 * v88 + 32);
    }

    v82 += 40;
  }

  (*(v135 + 16))(v132, v134, v69);
  a1 = *(v84 + 16);
  if (!a1)
  {

    v95 = MEMORY[0x1E69E7CC0];
    v91 = v136;
LABEL_62:
    sub_1C45D6F00(v132, v95);
    if (!v91)
    {
      a1 = v96;
    }

    v97 = sub_1C440B550();
    v98(v97);
    return a1;
  }

  *&v148 = v83;
  sub_1C4F02348();
  v89 = 0;
  v90 = v84 + 32;
  v91 = v136;
  while (v89 < *(v84 + 16))
  {
    sub_1C442E860(v90, &v150);
    v92 = v151;
    v93 = v152;
    sub_1C4409678(&v150, v151);
    (*(v93 + 24))(v92, v93);
    if (v91)
    {

      a1 = *(v135 + 8);
      v99 = v133;
      (a1)(v132, v133);
      (a1)(v134, v99);
      sub_1C440962C(&v150);

      return a1;
    }

    ++v89;
    sub_1C440962C(&v150);
    sub_1C4F02318();
    v94 = *(v148 + 16);
    sub_1C4F02358();
    sub_1C4F02368();
    sub_1C4F02328();
    v90 += 40;
    if (a1 == v89)
    {

      v95 = v148;
      goto LABEL_62;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}