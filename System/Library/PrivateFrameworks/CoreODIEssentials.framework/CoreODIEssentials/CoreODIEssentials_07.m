uint64_t ODIAssessmentAdapter.init(providerID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (sub_1DAF92FC8())
  {
    v6 = &type metadata for AMPAssessmentPayloadAdapter;
    v7 = &off_1F56CFE08;
  }

  else
  {
    v6 = &type metadata for Base64AssessmentPayloadAdapter;
    v7 = &off_1F56CCDB0;
  }

  a3[5] = v6;
  a3[6] = v7;
  a3[2] = 45;
  a3[3] = 0xE100000000000000;
  result = MEMORY[0x1E127FE90](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t sub_1DAFB85E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

unint64_t sub_1DAFB8614(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB80, &unk_1DB0B26F0);
  if (a1 < 0)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A0500;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x80000001DB0C62E0;
    *(inited + 48) = sub_1DB09DAE4();
    *(inited + 56) = 0x646F43726F727265;
    *(inited + 64) = 0xE900000000000065;
    *(inited + 72) = sub_1DB09DB14();
    v3 = sub_1DAF3F518(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB88, &unk_1DB0AB610);
    swift_arrayDestroy();
  }

  else
  {
    v2 = swift_initStackObject();
    *(v2 + 16) = xmmword_1DB0A04E0;
    *(v2 + 32) = 0xD000000000000012;
    *(v2 + 40) = 0x80000001DB0C62E0;
    *(v2 + 48) = sub_1DB09DAE4();
    v3 = sub_1DAF3F518(v2);
    swift_setDeallocating();
    sub_1DAFB8900(v2 + 32);
  }

  return v3;
}

void _s17CoreODIEssentials19ODIAnalyticsManagerC5track5eventyAA0C5EventO_tF_0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_1DB09D6B4();

  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v6[4] = sub_1DAFB8968;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1DAFD2A28;
  v6[3] = &block_descriptor_7;
  v5 = _Block_copy(v6);

  AnalyticsSendEventLazy();
  _Block_release(v5);
}

uint64_t sub_1DAFB8900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB88, &unk_1DB0AB610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t PGAStore.init(providerID:primaryDSID:conversationID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = type metadata accessor for ODNAssessmentsFactory();
  result = swift_allocObject();
  *(a6 + 64) = v12;
  *(a6 + 72) = &off_1F56CC998;
  *(a6 + 40) = result;
  *(a6 + 104) = &type metadata for FeatureStore;
  *(a6 + 112) = &off_1F56CE240;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v11;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t PGAStore.fetchFallback()(uint64_t a1)
{
  v2[168] = v1;
  v2[167] = a1;
  v3 = *(*(type metadata accessor for ODNAssessmentResult() - 8) + 64) + 15;
  v2[169] = swift_task_alloc();
  v4 = *(*(type metadata accessor for PregeneratedAssessment() - 8) + 64) + 15;
  v2[170] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFB8ADC, 0, 0);
}

uint64_t sub_1DAFB8ADC()
{
  v1 = v0[168];
  v2 = *v1;
  v0[171] = *v1;
  v3 = v1[1];
  v0[172] = v3;
  v7 = v2;
  v8 = v3;

  MEMORY[0x1E127FE90](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
  v0[173] = v7;
  v0[174] = v8;
  v4 = qword_1EE304008;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = swift_task_alloc();
  v0[175] = v5;
  *v5 = v0;
  v5[1] = sub_1DAFB8BFC;

  return sub_1DAFEFC24((v0 + 132));
}

uint64_t sub_1DAFB8BFC()
{
  v1 = *(*v0 + 1400);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFB8CF8, 0, 0);
}

uint64_t sub_1DAFB8CF8()
{
  v22 = v0;
  v1 = *(v0 + 1232);
  *(v0 + 992) = *(v0 + 1216);
  *(v0 + 1008) = v1;
  *(v0 + 1024) = *(v0 + 1248);
  *(v0 + 1040) = *(v0 + 1264);
  v2 = *(v0 + 1168);
  *(v0 + 928) = *(v0 + 1152);
  *(v0 + 944) = v2;
  v3 = *(v0 + 1200);
  *(v0 + 960) = *(v0 + 1184);
  *(v0 + 976) = v3;
  v4 = *(v0 + 1104);
  *(v0 + 864) = *(v0 + 1088);
  *(v0 + 880) = v4;
  v5 = *(v0 + 1136);
  *(v0 + 896) = *(v0 + 1120);
  *(v0 + 912) = v5;
  v6 = *(v0 + 1072);
  *(v0 + 832) = *(v0 + 1056);
  *(v0 + 848) = v6;
  v7 = *(v0 + 1048);
  if (v7)
  {
    v8 = *(v0 + 1048);
  }

  else
  {
    v7 = sub_1DAF3EE1C(MEMORY[0x1E69E7CC0]);
  }

  v9 = *(v0 + 1392);
  v10 = *(v0 + 1384);
  sub_1DAF791EC(v0 + 832);
  v21[0] = 2;
  LOBYTE(v10) = sub_1DAFFF15C(v21, v10, v9, v7);

  if (v10)
  {
    v11 = swift_task_alloc();
    *(v0 + 1408) = v11;
    *v11 = v0;
    v11[1] = sub_1DAFB8ED8;
    v12 = *(v0 + 1392);
    v13 = *(v0 + 1384);
    v14 = *(v0 + 1360);
    v15 = *(v0 + 1344);

    return sub_1DAFB95D8(v14, v13, v12);
  }

  else
  {
    v17 = *(v0 + 1392);

    sub_1DAFBA708();
    swift_allocError();
    swift_willThrow();
    v18 = *(v0 + 1360);
    v19 = *(v0 + 1352);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1DAFB8ED8()
{
  v2 = *(*v1 + 1408);
  v3 = *v1;
  v3[177] = v0;

  if (v0)
  {
    v4 = v3[174];

    return MEMORY[0x1EEE6DFA0](sub_1DAFB94DC, 0, 0);
  }

  else
  {
    v5 = v3[174];

    v6 = swift_task_alloc();
    v3[178] = v6;
    *v6 = v3;
    v6[1] = sub_1DAFB9060;
    v7 = v3[170];
    v8 = v3[168];

    return sub_1DAFB993C((v3 + 2), v7);
  }
}

uint64_t sub_1DAFB9060()
{
  v2 = *(*v1 + 1424);
  v5 = *v1;
  *(*v1 + 1432) = v0;

  if (v0)
  {
    v3 = sub_1DAFB954C;
  }

  else
  {
    v3 = sub_1DAFB9174;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAFB9174()
{
  memcpy(v0 + 18, v0 + 1, 0x110uLL);
  memcpy(v0 + 35, v0 + 1, 0x110uLL);
  v1 = swift_task_alloc();
  *(v0 + 180) = v1;
  *v1 = v0;
  v1[1] = sub_1DAFB9234;
  v2 = *(v0 + 170);
  v3 = *(v0 + 169);
  v4 = *(v0 + 168);

  return sub_1DAFB9CB8(v3, v2, v0 + 35);
}

uint64_t sub_1DAFB9234()
{
  v1 = *v0;
  v2 = *(*v0 + 1440);
  v4 = *v0;

  sub_1DAF8C380(v1 + 288);

  return MEMORY[0x1EEE6DFA0](sub_1DAFB9338, 0, 0);
}

uint64_t sub_1DAFB9338()
{
  v1 = v0[172];
  v2 = v0[171];

  v3 = sub_1DAF92FC8();
  v4 = v0[172];
  v5 = v0[171];
  if (v3)
  {
    v0[165] = &type metadata for AMPAssessmentPayloadAdapter;
    v6 = &off_1F56CFE08;
  }

  else
  {
    v0[165] = &type metadata for Base64AssessmentPayloadAdapter;
    v6 = &off_1F56CCDB0;
  }

  v0[166] = v6;
  v0[162] = 45;
  v0[163] = 0xE100000000000000;
  v12 = v5;
  v13 = v4;
  MEMORY[0x1E127FE90](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
  v7 = v0[170];
  v8 = v0[169];
  v9 = v0[167];
  v0[160] = v12;
  v0[161] = v13;
  sub_1DAFB7FF4(v8, MEMORY[0x1E69E7CC0], v9);
  sub_1DAF949F0((v0 + 160));
  sub_1DAFBA75C(v8, type metadata accessor for ODNAssessmentResult);
  sub_1DAFBA75C(v7, type metadata accessor for PregeneratedAssessment);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DAFB94DC()
{
  v1 = v0[177];
  v2 = v0[170];
  v3 = v0[169];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DAFB954C()
{
  sub_1DAFBA75C(v0[170], type metadata accessor for PregeneratedAssessment);
  v1 = v0[179];
  v2 = v0[170];
  v3 = v0[169];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DAFB95D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = *(*(type metadata accessor for PregeneratedAssessment() - 8) + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFB966C, 0, 0);
}

uint64_t sub_1DAFB966C()
{
  v0[5] = &type metadata for AssessmentPregenerator;
  v0[6] = &off_1F56C5468;
  __swift_project_boxed_opaque_existential_1(v0 + 2, &type metadata for AssessmentPregenerator);
  ODIBindingsDict.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], v0 + 7);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1DAFB9734;
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  return sub_1DAFF5D44(v2, v0 + 7, v4, v3);
}

uint64_t sub_1DAFB9734()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(v2 + 104) = v0;

  v4 = *(v2 + 56);

  if (v0)
  {
    v5 = sub_1DAFB98CC;
  }

  else
  {
    v5 = sub_1DAFB9850;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DAFB9850()
{
  sub_1DAFBA96C(v0[11], v0[8]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DAFB98CC()
{
  v1 = v0[11];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_1DAFB993C(uint64_t a1, uint64_t a2)
{
  v3[36] = a2;
  v3[37] = v2;
  v3[35] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAFB9960, 0, 0);
}

uint64_t sub_1DAFB9960()
{
  *(v0 + 320) = *(*(v0 + 296) + 16);
  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *v1 = v0;
  v1[1] = sub_1DAFB9A08;

  return DIPClientGUIDFactory.init(primaryDSIDBehavior:)(v0 + 16, (v0 + 320));
}

uint64_t sub_1DAFB9A08()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_1DAFB9CA0;
  }

  else
  {
    v3 = sub_1DAFB9B1C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAFB9B1C()
{
  v16 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  type metadata accessor for ODNAssessmentGUIDManager();
  v3 = swift_allocObject();
  *(v3 + 16) = 45;
  *(v3 + 24) = 0xE100000000000000;
  v4 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v4;
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = *(v0 + 96);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  sub_1DAFDBC18(v2, __src);
  if (v1)
  {
    swift_setDeallocating();
    v6 = *(v3 + 24);

    v7 = *(v3 + 80);
    *(v0 + 136) = *(v3 + 64);
    *(v0 + 152) = v7;
    *(v0 + 168) = *(v3 + 96);
    *(v0 + 184) = *(v3 + 112);
    v8 = *(v3 + 48);
    *(v0 + 104) = *(v3 + 32);
    *(v0 + 120) = v8;
    sub_1DAFBA904(v0 + 104);
    swift_deallocClassInstance();
  }

  else
  {
    v10 = *(v0 + 280);
    swift_setDeallocating();
    v11 = *(v3 + 24);

    v12 = *(v3 + 80);
    *(v0 + 224) = *(v3 + 64);
    *(v0 + 240) = v12;
    *(v0 + 256) = *(v3 + 96);
    *(v0 + 272) = *(v3 + 112);
    v13 = *(v3 + 48);
    *(v0 + 192) = *(v3 + 32);
    *(v0 + 208) = v13;
    sub_1DAFBA904(v0 + 192);
    swift_deallocClassInstance();
    memcpy(v10, __src, 0x110uLL);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DAFB9CB8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v4 + 848) = v3;
  *(v4 + 840) = a2;
  *(v4 + 832) = a1;
  v6 = type metadata accessor for PregeneratedAssessment();
  *(v4 + 856) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 864) = swift_task_alloc();
  *(v4 + 872) = swift_task_alloc();
  v8 = a3[4];
  *(v4 + 232) = a3[5];
  v9 = a3[7];
  *(v4 + 248) = a3[6];
  *(v4 + 264) = v9;
  *(v4 + 280) = *(a3 + 16);
  v10 = *a3;
  *(v4 + 168) = a3[1];
  v11 = a3[3];
  *(v4 + 184) = a3[2];
  *(v4 + 200) = v11;
  *(v4 + 216) = v8;
  *(v4 + 152) = v10;
  v12 = *(a3 + 216);
  v13 = *(a3 + 248);
  *(v4 + 112) = *(a3 + 232);
  *(v4 + 128) = v13;
  *(v4 + 144) = *(a3 + 33);
  v14 = *(a3 + 152);
  v15 = *(a3 + 184);
  *(v4 + 48) = *(a3 + 168);
  *(v4 + 64) = v15;
  *(v4 + 80) = *(a3 + 200);
  *(v4 + 96) = v12;
  *(v4 + 16) = *(a3 + 136);
  *(v4 + 32) = v14;
  sub_1DAF49ECC(v4 + 16, v4 + 288);

  return MEMORY[0x1EEE6DFA0](sub_1DAFB9DEC, 0, 0);
}

uint64_t sub_1DAFB9DEC()
{
  sub_1DAF8C428(*(v0 + 840), *(v0 + 872));
  *(v0 + 880) = *(v0 + 152) + 49;
  v1 = *(v0 + 864);
  v2 = *(v0 + 232);
  *(v0 + 888) = *(v0 + 224);
  v3 = *(v0 + 248);
  *(v0 + 904) = *(v0 + 240);
  v4 = *(v0 + 264);
  *(v0 + 920) = *(v0 + 256);
  v5 = *(v0 + 840);
  *(v0 + 896) = v2;
  *(v0 + 912) = v3;
  *(v0 + 928) = v4;
  sub_1DAF8C428(v5, v1);

  sub_1DAF49ECC(v0 + 152, v0 + 424);
  if (qword_1EE301710 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE30A060;
  *(v0 + 936) = qword_1EE30A060;

  return MEMORY[0x1EEE6DFA0](sub_1DAFB9EFC, v6, 0);
}

uint64_t sub_1DAFB9EFC()
{
  v1 = v0[117];
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = *(v1 + 112);
    v0[122] = v2;
    v0[121] = v3;

    return MEMORY[0x1EEE6DFA0](sub_1DAFBA18C, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[118] = v4;
    *v4 = v0;
    v4[1] = sub_1DAFB9FE0;

    return sub_1DAFB1344();
  }
}

uint64_t sub_1DAFB9FE0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 944);
  v5 = *(*v2 + 936);
  v7 = *v2;
  *(v3 + 952) = a1;
  *(v3 + 960) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAFBA0FC, v5, 0);
}

uint64_t sub_1DAFBA0FC()
{
  v1 = v0[120];
  v2 = v0[117];
  v3 = *(v2 + 120);
  *(v2 + 112) = v0[119];
  *(v2 + 120) = v1;

  v4 = v0[119];
  v0[122] = v0[120];
  v0[121] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1DAFBA18C, 0, 0);
}

uint64_t sub_1DAFBA18C()
{
  v82 = v0;
  v1 = *(v0 + 864);
  v2 = *(v0 + 856);
  v3 = *(v0 + 848);
  v77 = *(v3 + 32);
  v78 = *(v3 + 24);
  v4 = (v1 + v2[15]);
  v6 = *v4;
  v5 = v4[1];
  v7 = (v1 + v2[16]);
  v8 = *v7;
  v9 = v7[1];

  v10 = sub_1DAFDD930();
  v74 = sub_1DAF8B2AC(*(v1 + v2[7]), *(v1 + v2[7] + 8));

  v11 = v1[1];
  v76 = *v1;
  v12 = (v1 + v2[19]);
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v15 = *(v14 + 24);
  v75 = v11;

  v16 = v15(v13, v14);
  v18 = v17;
  v19 = v12[3];
  v20 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v19);
  (*(v20 + 64))(v80, v19, v20);
  if (v10)
  {
  }

  v21 = *(v0 + 856);
  v22 = *(*(v0 + 864) + *(v21 + 52));
  v23 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    __break(1u);
  }

  else
  {
    v81 = 0;
    if (qword_1EE301DD0 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
  v62 = *(v0 + 864);
  v21 = *(v0 + 856);
LABEL_5:
  v25 = qword_1EE309EE0;
  v24 = qword_1EE309EE8;
  v26 = *(v21 + 20);

  sub_1DB09D0F4();
  v28 = v27;
  v29 = v27;
  result = sub_1DAF8C48C(v10);
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v79 = v23;
  v72 = v25;
  v73 = *(v0 + 976);
  v66 = *(v0 + 920);
  v67 = *(v0 + 928);
  v64 = *(v0 + 888);
  v65 = *(v0 + 904);
  v63 = *(v0 + 880);
  v31 = *(v0 + 872);
  v70 = v24;
  v32 = *(v0 + 856);
  v68 = v16;
  v33 = *(v0 + 832);
  v71 = *(v0 + 968);
  sub_1DAFBA75C(*(v0 + 864), type metadata accessor for PregeneratedAssessment);
  v69 = v81;
  v34 = v33 + *(type metadata accessor for ODNAssessmentResult() + 52);
  sub_1DB09DF34();
  v35 = *(v0 + 232);
  v36 = *(v0 + 264);
  *(v0 + 792) = *(v0 + 248);
  *(v0 + 808) = v36;
  *(v0 + 824) = *(v0 + 280);
  v37 = *(v0 + 168);
  v38 = *(v0 + 200);
  *(v0 + 728) = *(v0 + 184);
  *(v0 + 744) = v38;
  *(v0 + 760) = *(v0 + 216);
  *(v0 + 776) = v35;
  *(v0 + 696) = *(v0 + 152);
  *(v0 + 712) = v37;
  nullsub_3(v0 + 696);
  *v33 = *(v0 + 696);
  v39 = *(v0 + 712);
  v40 = *(v0 + 728);
  v41 = *(v0 + 760);
  *(v33 + 48) = *(v0 + 744);
  *(v33 + 64) = v41;
  *(v33 + 16) = v39;
  *(v33 + 32) = v40;
  v42 = *(v0 + 776);
  v43 = *(v0 + 792);
  v44 = *(v0 + 808);
  *(v33 + 128) = *(v0 + 824);
  *(v33 + 96) = v43;
  *(v33 + 112) = v44;
  *(v33 + 80) = v42;
  v45 = *(v0 + 128);
  *(v0 + 656) = *(v0 + 112);
  *(v0 + 672) = v45;
  *(v0 + 688) = *(v0 + 144);
  v46 = *(v0 + 64);
  *(v0 + 592) = *(v0 + 48);
  *(v0 + 608) = v46;
  v47 = *(v0 + 96);
  *(v0 + 624) = *(v0 + 80);
  *(v0 + 640) = v47;
  v48 = *(v0 + 32);
  *(v0 + 560) = *(v0 + 16);
  *(v0 + 576) = v48;
  nullsub_3(v0 + 560);
  *(v33 + 136) = *(v0 + 560);
  v49 = *(v0 + 576);
  v50 = *(v0 + 592);
  v51 = *(v0 + 608);
  *(v33 + 200) = *(v0 + 624);
  *(v33 + 184) = v51;
  *(v33 + 168) = v50;
  *(v33 + 152) = v49;
  v52 = *(v0 + 640);
  v53 = *(v0 + 656);
  v54 = *(v0 + 672);
  *(v33 + 264) = *(v0 + 688);
  *(v33 + 248) = v54;
  *(v33 + 232) = v53;
  *(v33 + 216) = v52;
  v55 = (v31 + *(v32 + 48));
  v56 = v55[1];
  *(v33 + 272) = *v55;
  *(v33 + 280) = v56;
  v57 = (v31 + *(v32 + 24));
  v58 = v57[1];
  *(v33 + 288) = *v57;
  *(v33 + 296) = v58;
  *(v33 + 304) = 0u;
  *(v33 + 320) = 0u;
  *(v33 + 336) = 0u;
  *(v33 + 352) = 1;
  *(v33 + 360) = v63;
  *(v33 + 368) = 0xE100000000000000;
  *(v33 + 376) = v64;
  *(v33 + 392) = v65;
  *(v33 + 408) = v66;
  *(v33 + 416) = v67;
  sub_1DAF3523C(v31 + v2[19], v33 + 424);

  sub_1DAFBA75C(v31, type metadata accessor for PregeneratedAssessment);
  *(v33 + 464) = v76;
  *(v33 + 472) = v75;
  *(v33 + 480) = v68;
  *(v33 + 488) = v18;
  v59 = v80[3];
  *(v33 + 528) = v80[2];
  *(v33 + 544) = v59;
  *(v33 + 560) = v80[4];
  v60 = v80[1];
  *(v33 + 496) = v80[0];
  *(v33 + 512) = v60;
  *(v33 + 576) = v71;
  *(v33 + 584) = v73;
  *(v33 + 592) = v78;
  *(v33 + 600) = v77;
  *(v33 + 608) = v10;
  *(v33 + 616) = v79;
  *(v33 + 624) = v69;
  *(v33 + 632) = 0;
  *(v33 + 640) = v72;
  *(v33 + 648) = v70;
  *(v33 + 656) = -45;
  *(v33 + 664) = v28;
  *(v33 + 672) = v74 & 1;

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_1DAFBA684()
{
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](0);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAFBA6C8()
{
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](0);
  return sub_1DB09E3E4();
}

unint64_t sub_1DAFBA708()
{
  result = qword_1ECC0EB90;
  if (!qword_1ECC0EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EB90);
  }

  return result;
}

uint64_t sub_1DAFBA75C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1DAFBA7E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAFBA830(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAFBA8B0()
{
  result = qword_1ECC0EB98;
  if (!qword_1ECC0EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EB98);
  }

  return result;
}

uint64_t sub_1DAFBA904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7E8, &qword_1DB0A51D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAFBA96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PregeneratedAssessment();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAFBA9D0(void *a1, char a2)
{
  v5 = sub_1DB09D4C4();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1DB09D4F4();
  v10 = *(v28 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v28, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16, v16);
  (*(v19 + 16))(&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_1DB09D744();
  v22 = v21;
  v23 = *(v2 + 24);
  v24 = swift_allocObject();
  *(v24 + 16) = v2;
  *(v24 + 24) = v20;
  *(v24 + 32) = v22;
  *(v24 + 40) = a2;
  aBlock[4] = sub_1DAFBAF14;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAF75DB0;
  aBlock[3] = &block_descriptor_8;
  v25 = _Block_copy(aBlock);

  sub_1DB09D4E4();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1DAF75F08(&unk_1EE301990, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F010, &qword_1DB0A0948);
  sub_1DAF75F50(&qword_1EE301940, &qword_1ECC0F010, &qword_1DB0A0948);
  sub_1DB09DCF4();
  MEMORY[0x1E12802A0](0, v14, v9, v25);
  _Block_release(v25);
  (*(v29 + 8))(v9, v5);
  (*(v10 + 8))(v14, v28);
}

uint64_t sub_1DAFBAD44()
{
  type metadata accessor for CertUsageMapper();
  v0 = swift_allocObject();
  result = sub_1DAFBAF3C();
  qword_1EE30A1D8 = v0;
  return result;
}

uint64_t sub_1DAFBAD80(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1DAF3B958(a4, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_1DAFBAE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (*(v8 + 16) && (v9 = sub_1DAF35210(a2, a3), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + v9);
  }

  else
  {
    v11 = 17;
  }

  *a4 = v11;
  return swift_endAccess();
}

uint64_t sub_1DAFBAEB0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DAFBAF3C()
{
  v19 = sub_1DB09DBB4();
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v19, v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DB09DBA4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v9 = sub_1DB09D4F4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v12 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = sub_1DAF3F3F4(MEMORY[0x1E69E7CC0]);
  v13 = sub_1DAFBB1A4();
  v17[1] = "geMapper";
  v17[2] = v13;
  sub_1DB09D4E4();
  v20 = v12;
  sub_1DAF75F08(&qword_1EE3018F0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EEB0, &unk_1DB0A4ED0);
  sub_1DAF75F50(&qword_1EE301918, &unk_1ECC0EEB0, &unk_1DB0A4ED0);
  sub_1DB09DCF4();
  (*(v1 + 104))(v5, *MEMORY[0x1E69E8090], v19);
  v14 = sub_1DB09DBE4();
  v15 = v18;
  *(v18 + 24) = v14;
  return v15;
}

unint64_t sub_1DAFBB1A4()
{
  result = qword_1EE3018E0;
  if (!qword_1EE3018E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE3018E0);
  }

  return result;
}

uint64_t sub_1DAFBB1F0(uint64_t a1)
{
  v41 = sub_1DB09CC94();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v41, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v39 = v7;
  v34 = v1;
  v44 = MEMORY[0x1E69E7CC0];
  sub_1DAF5F668(0, v8, 0);
  v9 = v44;
  v10 = a1 + 64;
  v11 = -1 << *(a1 + 32);
  result = sub_1DB09DD04();
  v13 = result;
  v14 = 0;
  v43 = *(a1 + 36);
  v37 = a1 + 64;
  v38 = v3 + 32;
  v35 = a1 + 72;
  v36 = v8;
  v40 = v3;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    v16 = v13 >> 6;
    if ((*(v10 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_23;
    }

    if (v43 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v42 = v14;
    v17 = (*(a1 + 48) + 16 * v13);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(a1 + 56) + 16 * v13);
    v21 = a1;
    v23 = *v20;
    v22 = v20[1];

    v24 = v39;
    sub_1DB09CC84();

    v44 = v9;
    v26 = *(v9 + 16);
    v25 = *(v9 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1DAF5F668(v25 > 1, v26 + 1, 1);
      v9 = v44;
    }

    *(v9 + 16) = v26 + 1;
    result = (*(v40 + 32))(v9 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v26, v24, v41);
    v15 = 1 << *(v21 + 32);
    if (v13 >= v15)
    {
      goto LABEL_25;
    }

    v10 = v37;
    v27 = *(v37 + 8 * v16);
    if ((v27 & (1 << v13)) == 0)
    {
      goto LABEL_26;
    }

    a1 = v21;
    if (v43 != *(v21 + 36))
    {
      goto LABEL_27;
    }

    v28 = v27 & (-2 << (v13 & 0x3F));
    if (v28)
    {
      v15 = __clz(__rbit64(v28)) | v13 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v16 << 6;
      v30 = v16 + 1;
      v31 = (v35 + 8 * v16);
      while (v30 < (v15 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_1DAFBD7C8(v13, v43, 0);
          v15 = __clz(__rbit64(v32)) + v29;
          goto LABEL_20;
        }
      }

      result = sub_1DAFBD7C8(v13, v43, 0);
LABEL_20:
      a1 = v21;
    }

    v14 = v42 + 1;
    v13 = v15;
    if (v42 + 1 == v36)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t TapToRadar.__allocating_init()()
{
  v0 = sub_1DB09D344();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for DeepLink();
  v6 = swift_allocObject();
  v7 = v5;

  sub_1DB09D334();
  v8 = sub_1DAF601B4(v7, v6, 45, 0xE100000000000000, v4);

  return v8;
}

uint64_t TapToRadar.trigger(error:for:file:line:timestamp:)(void *a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1DAFBB880(a1, a2, a3, a4, a5, a6, a7);
}

id sub_1DAFBB68C()
{
  v1 = OBJC_IVAR____TtC17CoreODIEssentials10TapToRadar____lazy_storage___formatter;
  v2 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials10TapToRadar____lazy_storage___formatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials10TapToRadar____lazy_storage___formatter);
  }

  else
  {
    v4 = sub_1DAFBB6F0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1DAFBB6F0()
{
  v0 = sub_1DB09D2A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v7 = sub_1DB09D324();
  [v6 setTimeZone_];

  sub_1DB09D1E4();
  v8 = sub_1DB09D214();
  (*(v1 + 8))(v5, v0);
  [v6 setLocale_];

  v9 = sub_1DB09D6B4();
  [v6 setDateFormat_];

  return v6;
}

uint64_t sub_1DAFBB880(void *a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v132 = a6;
  v130 = a7;
  v131 = a5;
  v141 = a4;
  v137 = a3;
  v123 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v120 = &v112 - v12;
  v13 = sub_1DB09CC94();
  v115 = *(v13 - 8);
  v116 = v13;
  v14 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v114 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DB09CD14();
  v135 = *(v17 - 8);
  v136 = v17;
  v18 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DB09CE94();
  v128 = *(v22 - 8);
  v129 = v22;
  v23 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v22, v24);
  v127 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v26 - 8, v28);
  v126 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v31);
  v134 = &v112 - v32;
  v140 = sub_1DB09CF64();
  v138 = *(v140 - 8);
  v33 = *(v138 + 64);
  v35 = MEMORY[0x1EEE9AC00](v140, v34);
  v118 = &v112 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v40 = &v112 - v39;
  v117 = v41;
  MEMORY[0x1EEE9AC00](v38, v42);
  v119 = &v112 - v43;
  v45 = v7[10];
  v44 = v7[11];
  v139 = v7;
  __swift_project_boxed_opaque_existential_1(v7 + 7, v45);
  sub_1DAFD2A1C(&v143);
  Loggable.info(_:category:)(0xD000000000000017, 0x80000001DB0C6490, &v143, v45, v44);
  *&v142[0] = a1;
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  v47 = swift_dynamicCast();
  v125 = v21;
  if (v47)
  {
    v48 = v123;
    v49 = v137;
    v50 = v143;
    if (v144 > 1u)
    {
      v51 = v140;
      v55 = v131;
      if (v144 == 2)
      {
        *&v143 = 0;
        *(&v143 + 1) = 0xE000000000000000;
        sub_1DB09DE44();

        *&v143 = 0xD000000000000018;
        *(&v143 + 1) = 0x80000001DB0C65B0;
        MEMORY[0x1E127FE90](v50, *(&v50 + 1));
        v124 = *(&v143 + 1);
        v121 = v143;
        strcpy(&v143, "workflow ID: ");
        HIWORD(v143) = -4864;
        MEMORY[0x1E127FE90](v48, v49);
        sub_1DAFBD764(v50, *(&v50 + 1), 2);
        v113 = 0;
        v137 = 0;
        v122 = *(&v143 + 1);
        v123 = v143;
      }

      else
      {
        v124 = 0x80000001DB0C65D0;
        strcpy(&v143, "workflow ID: ");
        HIWORD(v143) = -4864;
        MEMORY[0x1E127FE90](v123, v137);
        v113 = 0;
        v137 = 0;
        v122 = *(&v143 + 1);
        v123 = v143;
        v121 = 0xD000000000000012;
      }
    }

    else
    {
      v51 = v140;
      if (v144)
      {
        *&v143 = 0;
        *(&v143 + 1) = 0xE000000000000000;
        sub_1DB09DE44();
        MEMORY[0x1E127FE90](0x776F6C666B726F77, 0xED0000203A444920);
        MEMORY[0x1E127FE90](v48, v49);
        MEMORY[0x1E127FE90](0x74756F656D69740ALL, 0xEA0000000000203ALL);
        sub_1DB09DAC4();
        v122 = *(&v143 + 1);
        v123 = v143;
        v137 = 0x80000001DB0C65F0;
        v113 = 0xD000000000000013;
        v124 = 0xE700000000000000;
        v53 = 0x74756F656D6954;
      }

      else
      {
        v124 = 0x80000001DB0C6610;
        *&v143 = 0;
        *(&v143 + 1) = 0xE000000000000000;
        sub_1DB09DE44();

        strcpy(&v143, "workflow ID: ");
        HIWORD(v143) = -4864;
        MEMORY[0x1E127FE90](v48, v49);
        MEMORY[0x1E127FE90](0xD000000000000013, 0x80000001DB0C6630);
        v52 = MEMORY[0x1E1280010](v50, MEMORY[0x1E69E6158]);
        MEMORY[0x1E127FE90](v52);

        v122 = *(&v143 + 1);
        v123 = v143;
        v137 = 0x80000001DB0C6650;
        sub_1DAFBD764(v50, *(&v50 + 1), 0);
        v113 = 0xD00000000000001CLL;
        v53 = 0xD000000000000010;
      }

      v121 = v53;
      v55 = v131;
    }
  }

  else
  {
    *&v143 = 0;
    *(&v143 + 1) = 0xE000000000000000;
    v124 = 0xE000000000000000;
    sub_1DB09DE44();

    strcpy(&v143, "workflow ID: ");
    HIWORD(v143) = -4864;
    MEMORY[0x1E127FE90](v123, v137);
    MEMORY[0x1E127FE90](10, 0xE100000000000000);
    swift_getErrorValue();
    v54 = sub_1DB09E324();
    MEMORY[0x1E127FE90](v54);

    v113 = 0;
    v137 = 0;
    v123 = v143;
    v121 = 0;
    v122 = *(&v143 + 1);
    v51 = v140;
    v55 = v131;
  }

  v56 = v138;
  (*(v138 + 56))(v126, 1, 1, v51);
  (*(v128 + 104))(v127, *MEMORY[0x1E6968F70], v129);

  sub_1DB09CF34();
  v57 = sub_1DB09CEB4();
  v58 = *(v56 + 8);
  v131 = v56 + 8;
  v129 = v58;
  v58(v40, v51);
  v59 = *(v57 + 16);
  if (v59)
  {
    v60 = (v57 + 16 + 16 * v59);
    v61 = v60[1];
    v141 = *v60;
  }

  else
  {

    v61 = v55;
  }

  v62 = sub_1DAFBB68C();
  v63 = sub_1DB09D0B4();
  v64 = [v62 stringFromDate_];

  v65 = sub_1DB09D6C4();
  v67 = v66;

  v68 = v125;
  sub_1DB09CD04();
  sub_1DB09CCF4();
  MEMORY[0x1E127F3B0](7824750, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EBB8, &qword_1DB0AB850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB0AB780;
  *(inited + 32) = 0x656C746954;
  *(inited + 40) = 0xE500000000000000;
  strcpy(&v143, "[CoreODI] - ");
  BYTE13(v143) = 0;
  HIWORD(v143) = -5120;
  MEMORY[0x1E127FE90](v121, v124);
  v70 = v68;

  v71 = *(&v143 + 1);
  *(inited + 48) = v143;
  *(inited + 56) = v71;
  *(inited + 64) = 0x7470697263736544;
  *(inited + 72) = 0xEB000000006E6F69;
  *&v143 = 0;
  *(&v143 + 1) = 0xE000000000000000;
  sub_1DB09DE44();

  *&v143 = v123;
  *(&v143 + 1) = v122;
  MEMORY[0x1E127FE90](0x3A656C69660ALL, 0xE600000000000000);
  MEMORY[0x1E127FE90](v141, v61);

  MEMORY[0x1E127FE90](0x3A656E696C20, 0xE600000000000000);
  *&v142[0] = v132;
  v72 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v72);

  MEMORY[0x1E127FE90](0xD000000000000012, 0x80000001DB0C64B0);
  MEMORY[0x1E127FE90](v65, v67);

  v73 = *(&v143 + 1);
  *(inited + 80) = v143;
  *(inited + 88) = v73;
  *(inited + 96) = 0x6E656E6F706D6F43;
  *(inited + 104) = 0xEB00000000444974;
  *(inited + 112) = xmmword_1DB0AB790;
  strcpy((inited + 128), "ComponentName");
  *(inited + 142) = -4864;
  *(inited + 144) = 0xD00000000000001ALL;
  *(inited + 152) = 0x80000001DB0C64D0;
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x80000001DB0C64F0;
  *(inited + 176) = xmmword_1DB0AB7A0;
  strcpy((inited + 192), "Classification");
  *(inited + 207) = -18;
  *(inited + 208) = 0xD000000000000014;
  *(inited + 216) = 0x80000001DB0C6510;
  v74 = sub_1DAF3E658(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EBC0, &unk_1DB0AB858);
  swift_arrayDestroy();
  v75 = v133;
  sub_1DAFBB1F0(v74);
  v141 = v75;

  sub_1DB09CCB4();
  v76 = v140;
  if (v137)
  {
    v78 = sub_1DB09CCA4();
    if (*v77)
    {
      v79 = v77;
      v80 = v114;
      sub_1DB09CC84();
      v81 = *v79;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v79 = v81;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v81 = sub_1DAF73268(0, v81[2] + 1, 1, v81);
        *v79 = v81;
      }

      v84 = v81[2];
      v83 = v81[3];
      if (v84 >= v83 >> 1)
      {
        v81 = sub_1DAF73268(v83 > 1, v84 + 1, 1, v81);
        *v79 = v81;
      }

      v81[2] = v84 + 1;
      (*(v115 + 32))(v81 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v84, v80, v116);
      v78(&v143, 0);
      v76 = v140;
    }

    else
    {
      v78(&v143, 0);
    }
  }

  v85 = v134;
  sub_1DB09CCD4();

  (*(v135 + 8))(v70, v136);
  v86 = v138;
  if ((*(v138 + 48))(v85, 1, v76) == 1)
  {
    sub_1DAF783EC(v85);
    v87 = v139[10];
    v88 = v139[11];
    __swift_project_boxed_opaque_existential_1(v139 + 7, v87);
    LOBYTE(v143) = 14;
    Loggable.error(_:category:)(0xD00000000000001BLL, 0x80000001DB0C6530, &v143, v87, v88);
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v89 = MEMORY[0x1E69E7CC0];
    v90 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v90 + 16))
    {
      v91 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v92)
      {
        sub_1DAF409DC(*(v90 + 56) + 32 * v91, &v143);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v89 = *&v142[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v89 = sub_1DAF72EC0(0, *(v89 + 2) + 1, 1, v89);
    }

    v94 = *(v89 + 2);
    v93 = *(v89 + 3);
    if (v94 >= v93 >> 1)
    {
      v89 = sub_1DAF72EC0((v93 > 1), v94 + 1, 1, v89);
    }

    *(v89 + 2) = v94 + 1;
    v95 = &v89[56 * v94];
    *(v95 + 4) = 0;
    *(v95 + 5) = 0xE000000000000000;
    *(v95 + 6) = 0xD000000000000022;
    *(v95 + 7) = 0x80000001DB0C6550;
    *(v95 + 8) = 0xD00000000000002BLL;
    *(v95 + 9) = 0x80000001DB0C6580;
    *(v95 + 10) = 94;
    v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v143 = v89;
    sub_1DAF40D20(&v143, v142);
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v90;
    sub_1DAF3B11C(v142, 0x636F766E4949444FLL, 0xEE00736E6F697461, v96);
    v97 = v146;
    v98 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v99 = sub_1DB09D6B4();
    v100 = sub_1DB09D604();
    [v98 initWithDomain:v99 code:-1 userInfo:v100];

    swift_willThrow();
  }

  else
  {
    v101 = v86;
    v137 = *(v86 + 32);
    v102 = v76;
    v103 = v119;
    v137(v119, v85, v102);
    v104 = sub_1DB09DA24();
    v105 = v120;
    (*(*(v104 - 8) + 56))(v120, 1, 1, v104);
    v106 = v139;
    v107 = *(v139 + OBJC_IVAR____TtC17CoreODIEssentials10TapToRadar_ttrDelay);
    sub_1DAF3523C((v139 + 7), &v143);
    sub_1DAF3523C((v106 + 2), v142);
    v108 = v118;
    (*(v101 + 16))(v118, v103, v102);
    v109 = (*(v101 + 80) + 120) & ~*(v101 + 80);
    v110 = swift_allocObject();
    v110[2] = 0;
    v110[3] = 0;
    sub_1DAF332B8(&v143, (v110 + 4));
    v110[9] = v107;
    sub_1DAF332B8(v142, (v110 + 10));
    v137(v110 + v109, v108, v102);
    v97 = sub_1DAF5B2C0(0, 0, v105, &unk_1DB0AB870, v110);
    v129(v103, v102);
  }

  return v97;
}

uint64_t sub_1DAFBCA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a5;
  v7[5] = a7;
  v7[3] = a4;
  v8 = sub_1DB09DF74();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFBCAD8, 0, 0);
}

uint64_t sub_1DAFBCAD8()
{
  v13 = v0;
  v1 = v0[8];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  sub_1DB09DE44();

  strcpy(v12, "Awaiting for ");
  HIWORD(v12[1]) = -4864;
  v0[2] = v3;
  v6 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v6);

  MEMORY[0x1E127FE90](0xD00000000000001DLL, 0x80000001DB0C6670);
  v7 = v12[0];
  v8 = v12[1];
  sub_1DAFD2A1C(v12);
  Loggable.info(_:category:)(v7, v8, v12, v4, v5);

  sub_1DB09E314();
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_1DAFBCCB4;
  v10 = v0[8];

  return sub_1DAFBD08C(1000000000000000000 * v3, ((v3 >> 63) & 0xF21F494C589C0000) + ((v3 * 0xDE0B6B3A7640000uLL) >> 64), 0, 0, 1);
}

uint64_t sub_1DAFBCCB4()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1DAFBCEEC;
  }

  else
  {
    v6 = sub_1DAFBCE24;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

id sub_1DAFBCE24()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v2 = result;
    v3 = v0[8];
    v4 = v0[5];
    v5 = sub_1DB09CEE4();
    [v2 openURL:v5 withOptions:0];

    v6 = v0[1];

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAFBCEEC()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t TapToRadar.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = OBJC_IVAR____TtC17CoreODIEssentials10TapToRadar_timeZone;
  v2 = sub_1DB09D344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TapToRadar.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = OBJC_IVAR____TtC17CoreODIEssentials10TapToRadar_timeZone;
  v2 = sub_1DB09D344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAFBD08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1DB09DF64();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1DAFBD18C, 0, 0);
}

uint64_t sub_1DAFBD18C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1DB09DF74();
  v7 = sub_1DAFBD780(&qword_1ECC0EBC8, MEMORY[0x1E69E8820]);
  sub_1DB09E2F4();
  sub_1DAFBD780(&qword_1ECC0EBD0, MEMORY[0x1E69E87E8]);
  sub_1DB09DF84();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1DAFBD31C;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1DAFBD31C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAFBD4D8, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1DAFBD4D8()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t type metadata accessor for TapToRadar()
{
  result = qword_1ECC0EBA8;
  if (!qword_1ECC0EBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAFBD598()
{
  result = sub_1DB09D344();
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

uint64_t sub_1DAFBD664(uint64_t a1)
{
  v4 = *(sub_1DB09CF64() - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[9];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF62CC4;

  return sub_1DAFBCA14(a1, v6, v7, (v1 + 4), v8, (v1 + 10), v1 + v5);
}

uint64_t sub_1DAFBD764(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1DAFBD780(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAFBD7C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t FeedbackState.state.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FeedbackState.trainingSignalID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1DAFBD860()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAFBD964()
{
  *v0;
  *v0;
  *v0;
  sub_1DB09D794();
}

uint64_t sub_1DAFBDA54()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAFBDB54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAFBE26C();
  *a2 = result;
  return result;
}

void sub_1DAFBDB84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6574617473;
  v5 = 0x42746E6572727563;
  v6 = 0xEF73676E69646E69;
  v7 = 0xE900000000000065;
  v8 = 0x646F43726F727265;
  if (v2 != 3)
  {
    v8 = 0x616E696D6F4E7369;
    v7 = 0xEB00000000646574;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x42676E697373696DLL;
    v3 = 0xEF73676E69646E69;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DAFBDC44()
{
  v1 = *v0;
  v2 = 0x6574617473;
  v3 = 0x42746E6572727563;
  v4 = 0x646F43726F727265;
  if (v1 != 3)
  {
    v4 = 0x616E696D6F4E7369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x42676E697373696DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DAFBDD00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAFBE26C();
  *a1 = result;
  return result;
}

uint64_t sub_1DAFBDD28(uint64_t a1)
{
  v2 = sub_1DAFBE024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAFBDD64(uint64_t a1)
{
  v2 = sub_1DAFBE024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void __swiftcall FeedbackState.init(state:missingBindings:currentBindings:trainingSignalID:errorCode:)(CoreODIEssentials::FeedbackState *__return_ptr retstr, Swift::String state, Swift::Int missingBindings, Swift::Int currentBindings, Swift::String_optional trainingSignalID, Swift::Int errorCode)
{
  retstr->state = state;
  retstr->missingBindings = missingBindings;
  retstr->currentBindings = currentBindings;
  retstr->trainingSignalID = trainingSignalID;
  retstr->errorCode = errorCode;
  retstr->isNominated = 0;
}

void __swiftcall FeedbackState.nominated()(CoreODIEssentials::FeedbackState *__return_ptr retstr)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  retstr->state._countAndFlagsBits = *v1;
  retstr->state._object = v2;
  *&retstr->missingBindings = *(v1 + 16);
  retstr->trainingSignalID.value._countAndFlagsBits = v3;
  *&retstr->trainingSignalID.value._object = *(v1 + 40);
  retstr->isNominated = 1;
}

uint64_t FeedbackState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EBD8, &qword_1DB0AB880);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v17 = v1[3];
  v18 = v11;
  v16 = v1[6];
  v15[3] = *(v1 + 56);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAFBE024();
  sub_1DB09E434();
  v24 = 0;
  v13 = v19;
  sub_1DB09E154();
  if (v13)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v23 = 1;
  sub_1DB09E184();
  v22 = 2;
  sub_1DB09E184();
  v21 = 3;
  sub_1DB09E184();
  v20 = 4;
  sub_1DB09E164();
  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_1DAFBE024()
{
  result = qword_1ECC0EBE0;
  if (!qword_1ECC0EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EBE0);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DAFBE0AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAFBE0F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAFBE168()
{
  result = qword_1ECC0EBE8;
  if (!qword_1ECC0EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EBE8);
  }

  return result;
}

unint64_t sub_1DAFBE1C0()
{
  result = qword_1ECC0EBF0;
  if (!qword_1ECC0EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EBF0);
  }

  return result;
}

unint64_t sub_1DAFBE218()
{
  result = qword_1ECC0EBF8;
  if (!qword_1ECC0EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EBF8);
  }

  return result;
}

uint64_t sub_1DAFBE26C()
{
  v0 = sub_1DB09E004();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

void *PrecomputationSession.__allocating_init(workflowID:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB09D1D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB09D1C4();
  v10 = sub_1DB09D174();
  v12 = v11;
  (*(v5 + 8))(v9, v4);
  v13 = type metadata accessor for DIPAssessmentStaticWebService();
  v14 = objc_allocWithZone(v13);
  v14[OBJC_IVAR____TtC17CoreODIEssentials29DIPAssessmentStaticWebService_serverRepo] = 5;
  v14[OBJC_IVAR____TtC17CoreODIEssentials29DIPAssessmentStaticWebService_mode] = 1;
  v15 = sub_1DAFBF408(v10, v12, 0x10000, 0xD000000000000015, 0x80000001DB0ABA40, v14, 10.0);
  v25[3] = v13;
  v25[4] = &off_1F56C4838;
  v25[0] = v15;
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v25, v13);
  v18 = *(*(v13 - 1) + 64);
  MEMORY[0x1EEE9AC00](v17, v17);
  v20 = (&v25[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = sub_1DAFBFAE8(a1, a2, *v20, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v22;
}

void *PrecomputationSession.__allocating_init(workflowID:diskCommand:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = sub_1DB09D1D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v30[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB09D1C4();
  v14 = sub_1DB09D174();
  v16 = v15;
  (*(v9 + 8))(v13, v8);
  v17 = type metadata accessor for DIPAssessmentStaticWebService();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtC17CoreODIEssentials29DIPAssessmentStaticWebService_serverRepo] = 5;
  v18[OBJC_IVAR____TtC17CoreODIEssentials29DIPAssessmentStaticWebService_mode] = 1;
  v19 = sub_1DAFBF408(v14, v16, 0x10000, 0xD000000000000015, 0x80000001DB0ABA40, v18, 10.0);
  sub_1DAF3523C(a3, v30);
  v20 = v31;
  v21 = v32;
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  v23 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22, v22);
  v25 = &v30[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  v29 = v19;
  v27 = sub_1DAFBF884(a1, a2, &v29, v25, v4, v17, v20, &off_1F56C4838, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return v27;
}

uint64_t PrecomputationSession.fetchEncapsulatedProfile()(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAFBE764, 0, 0);
}

uint64_t sub_1DAFBE764()
{
  v1 = v0[18];
  v24 = *(v1 + 24);
  v25 = *(v1 + 16);
  sub_1DAF3523C(v1 + 32, (v0 + 2));
  sub_1DAF3523C(v1 + 72, (v0 + 7));
  v2 = v0[5];
  v3 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v3, v2);
  v7 = *v6;
  v8 = type metadata accessor for DIPAssessmentStaticWebService();
  v0[15] = v8;
  v0[16] = &off_1F56C4838;
  v0[12] = v7;
  type metadata accessor for ProfileManager();
  v23 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 12), v8);
  v10 = *(v8 - 8);
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  (*(v10 + 16))(v12, v9, v8);
  v13 = *v12;
  v14 = v0[10];
  v15 = v0[11];
  v16 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v14);
  v17 = *(v14 - 8);
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  (*(v17 + 16))(v19, v16, v14);

  v0[19] = sub_1DAFA6E04(v25, v24, v13, v19, v23, v14, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v20 = swift_task_alloc();
  v0[20] = v20;
  *v20 = v0;
  v20[1] = sub_1DAFBEA5C;
  v21 = v0[17];

  return sub_1DAFA41D8(v21);
}

uint64_t sub_1DAFBEA5C()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1DAFBEBD4;
  }

  else
  {
    v3 = sub_1DAFBEB70;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAFBEB70()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DAFBEBD4()
{
  v1 = v0[19];

  v2 = v0[1];
  v3 = v0[21];

  return v2();
}

uint64_t sub_1DAFBEC58()
{
  v1 = v0[17];
  v23 = *(v1 + 24);
  v24 = *(v1 + 16);
  sub_1DAF3523C(v1 + 32, (v0 + 2));
  sub_1DAF3523C(v1 + 72, (v0 + 7));
  v2 = v0[5];
  v3 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v3, v2);
  v7 = *v6;
  v8 = type metadata accessor for DIPAssessmentStaticWebService();
  v0[15] = v8;
  v0[16] = &off_1F56C4838;
  v0[12] = v7;
  type metadata accessor for ProfileManager();
  v22 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 12), v8);
  v10 = *(v8 - 8);
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  (*(v10 + 16))(v12, v9, v8);
  v13 = *v12;
  v14 = v0[10];
  v15 = v0[11];
  v16 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v14);
  v17 = *(v14 - 8);
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  (*(v17 + 16))(v19, v16, v14);

  v0[18] = sub_1DAFA6E04(v24, v23, v13, v19, v22, v14, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v20 = swift_task_alloc();
  v0[19] = v20;
  *v20 = v0;
  v20[1] = sub_1DAFBEF48;

  return sub_1DAFA0BEC();
}

uint64_t sub_1DAFBEF48()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1DAFBF0C0;
  }

  else
  {
    v3 = sub_1DAFBF05C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAFBF05C()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DAFBF0C0()
{
  v1 = v0[18];

  v2 = v0[1];
  v3 = v0[20];

  return v2();
}

uint64_t sub_1DAFBF144()
{
  v1 = *(*(v0 + 16) + 112);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1DAFBF1D8;

  return sub_1DAFA5D90();
}

uint64_t sub_1DAFBF1D8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

void *PrecomputationSession.deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  v2 = v0[14];

  return v0;
}

uint64_t PrecomputationSession.__deallocating_deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  v2 = v0[14];

  return swift_deallocClassInstance();
}

uint64_t sub_1DAFBF380()
{
  sub_1DAFC003C();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

char *sub_1DAFBF408(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char *a6, double a7)
{
  v20[3] = &type metadata for CoreODILogger;
  v20[4] = &protocol witness table for CoreODILogger;
  v20[0] = a4;
  v20[1] = a5;
  v12 = &a6[OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_conversationID];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = objc_allocWithZone(type metadata accessor for DIPHTTPSession());

  *&a6[OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_httpSession] = sub_1DAFBF538(a3 & 0x10101, a4, a5, v13, a7);
  sub_1DAF3523C(v20, &a6[OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger]);
  v19.receiver = a6;
  v19.super_class = type metadata accessor for DIPWebService();
  v14 = objc_msgSendSuper2(&v19, sel_init);
  v15 = *&v14[OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_httpSession];
  v16 = v14;
  v17 = v15;
  sub_1DAFA93FC();

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return v16;
}

char *sub_1DAFBF538(int a1, uint64_t a2, uint64_t a3, char *a4, double a5)
{
  ObjectType = swift_getObjectType();
  v32[3] = &type metadata for CoreODILogger;
  v32[4] = &protocol witness table for CoreODILogger;
  v32[0] = a2;
  v32[1] = a3;
  *&a4[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__urlSession] = 0;
  *&a4[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__anonymousURLSession] = 0;
  v11 = OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_state;
  type metadata accessor for DIPHTTPSession.SessionState();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 112) = 0;
  *(v12 + 120) = 0;
  *&a4[v11] = v12;
  swift_unknownObjectWeakInit();
  sub_1DAF3523C(v32, &a4[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_logger]);
  v13 = &a4[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_configuration];
  *v13 = a5;
  *(v13 + 8) = a1 & 1;
  *(v13 + 9) = BYTE1(a1) & 1;
  *(v13 + 10) = BYTE2(a1) & 1;
  v14 = &a4[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_retrier];
  *v14 = xmmword_1DB0ABA50;
  v14[16] = 1;
  v15 = objc_opt_self();
  v16 = [v15 defaultSessionConfiguration];
  v17 = [v15 defaultSessionConfiguration];
  [v16 setTimeoutIntervalForRequest_];
  [v17 setTimeoutIntervalForRequest_];
  [v16 setURLCache_];
  [v17 setURLCache_];
  [v16 setRequestCachePolicy_];
  [v17 setRequestCachePolicy_];
  if ((a1 & 0x100) != 0)
  {
    v18 = [objc_opt_self() mainBundle];
    v19 = [v18 bundleIdentifier];

    v20 = [objc_allocWithZone(MEMORY[0x1E698DCC8]) initWithIdentifier_];
    [v16 set:v20 appleIDContext:?];
  }

  *&a4[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_nsurlSessionConfiguration] = v16;
  *&a4[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession_anonymousNSURLSessionConfiguration] = v17;
  v31.receiver = a4;
  v31.super_class = ObjectType;
  v21 = v16;
  v22 = v17;
  v23 = objc_msgSendSuper2(&v31, sel_init);
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 sessionWithConfiguration:v21 delegate:v25 delegateQueue:0];
  v27 = *&v25[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__urlSession];
  *&v25[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__urlSession] = v26;

  v28 = [v24 sessionWithConfiguration:v22 delegate:v25 delegateQueue:0];
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  v29 = *&v25[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__anonymousURLSession];
  *&v25[OBJC_IVAR____TtC17CoreODIEssentials14DIPHTTPSession__anonymousURLSession] = v28;

  return v25;
}

void *sub_1DAFBF884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a2;
  v14 = *(a7 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1, a2);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v36[-1] - v20;
  v37 = v22;
  v38 = v23;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a3, a6);
  (*(v14 + 32))(v21, a4, a7);
  v25 = swift_allocObject();
  v26 = v37;
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27, v27);
  v30 = (&v36[-1] - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v30;
  (*(v14 + 16))(v18, v21, a7);
  v33 = sub_1DAFBFD90(a1, v35, v32, v18, v25, a7, a9);
  (*(v14 + 8))(v21, a7);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  return v33;
}

void *sub_1DAFBFAE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v32[3] = &type metadata for NullDiskCommand;
  v32[4] = &off_1F56CD610;
  v8 = type metadata accessor for DIPAssessmentStaticWebService();
  v31[3] = v8;
  v31[4] = &off_1F56C4838;
  v31[0] = a3;
  a4[2] = a1;
  a4[3] = a2;
  sub_1DAF3523C(v31, (a4 + 4));
  sub_1DAF3523C(v32, (a4 + 9));
  sub_1DAF3523C(v31, v29);
  v9 = v30;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v10);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v28[3] = v8;
  v28[4] = &off_1F56C4838;
  v28[0] = v15;
  type metadata accessor for ServerTimeSeedProvider();
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v28, v8);
  v18 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v17);
  v20 = (&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v26 = v8;
  v27 = &off_1F56C4838;
  *&v25 = v22;

  swift_defaultActor_initialize();
  *(v16 + 168) = 0;
  *(v16 + 176) = MEMORY[0x1E69E7CC0];
  *(v16 + 184) = 0;
  *(v16 + 192) = 0;
  *(v16 + 200) = 45;
  *(v16 + 208) = 0xE100000000000000;
  sub_1DAF96EAC(&v25, v16 + 112);
  *(v16 + 152) = a1;
  *(v16 + 160) = a2;
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  a4[14] = v16;
  return a4;
}

void *sub_1DAFBFD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v38[3] = a6;
  v38[4] = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  v14 = type metadata accessor for DIPAssessmentStaticWebService();
  v37[3] = v14;
  v37[4] = &off_1F56C4838;
  v37[0] = a3;
  a5[2] = a1;
  a5[3] = a2;
  sub_1DAF3523C(v37, (a5 + 4));
  sub_1DAF3523C(v38, (a5 + 9));
  sub_1DAF3523C(v37, v35);
  v15 = v36;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16, v16);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v34[3] = v14;
  v34[4] = &off_1F56C4838;
  v34[0] = v21;
  type metadata accessor for ServerTimeSeedProvider();
  v22 = swift_allocObject();
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v34, v14);
  v24 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23, v23);
  v26 = (&v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v26;
  v32 = v14;
  v33 = &off_1F56C4838;
  *&v31 = v28;

  swift_defaultActor_initialize();
  *(v22 + 168) = 0;
  *(v22 + 176) = MEMORY[0x1E69E7CC0];
  *(v22 + 184) = 0;
  *(v22 + 192) = 0;
  *(v22 + 200) = 45;
  *(v22 + 208) = 0xE100000000000000;
  sub_1DAF96EAC(&v31, v22 + 112);
  *(v22 + 152) = a1;
  *(v22 + 160) = a2;
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  a5[14] = v22;
  return a5;
}

unint64_t sub_1DAFC003C()
{
  result = qword_1ECC0EC00;
  if (!qword_1ECC0EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EC00);
  }

  return result;
}

unint64_t sub_1DAFC00A4()
{
  result = qword_1ECC0EC08;
  if (!qword_1ECC0EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EC08);
  }

  return result;
}

uint64_t *sub_1DAFC00F8@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void *sub_1DAFC011C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1DAFC013C()
{
  *(v1 + 56) = v0;
  v2 = *(*(type metadata accessor for ODNAssessmentResult() - 8) + 64) + 15;
  *(v1 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFC01CC, v0, 0);
}

uint64_t sub_1DAFC01CC()
{
  v11 = v0;
  v1 = *(v0 + 56);
  if (*(v1 + 136))
  {
    v2 = *(v1 + 136);
  }

  else
  {
    ODIBindingsDict.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], &v10);
    v2 = v10;
    v1 = *(v0 + 56);
  }

  *(v0 + 72) = v2;
  v3 = *(v1 + 120);
  *(v0 + 80) = v3;
  v4 = *(v1 + 128);
  *(v0 + 88) = v4;
  v5 = *(v1 + 144);
  v6 = *(v1 + 152);
  *(v0 + 16) = 1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  *(v0 + 49) = 1;

  sub_1DAF4ED88(v3, v4);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_1DAFC02EC;
  v8 = *(v0 + 64);

  return sub_1DAF7A2E4(v8, v0 + 16);
}

uint64_t sub_1DAFC02EC()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFC03FC, v2, 0);
}

uint64_t sub_1DAFC03FC()
{
  v12 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = *(v5 + 192);
  v7 = *(v5 + 200);
  __swift_project_boxed_opaque_existential_1((v5 + 168), v6);
  v11 = 8;
  (*(v7 + 16))(0xD00000000000002CLL, 0x80000001DB0C6930, &v11, v6, v7);
  v8 = *(v5 + 224);
  (*(v5 + 216))(v4);

  sub_1DAF4AC40(v2, v1);
  sub_1DAFC29BC(v4, type metadata accessor for ODNAssessmentResult);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DAFC051C()
{
  sub_1DAF4AC40(v0[15], v0[16]);
  v1 = v0[17];

  v2 = v0[19];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 21);
  v3 = v0[28];

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAFC0598(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 113);
  v3 = *(*a2 + 113);
  if (v2 == v3)
  {
    return *(*a1 + 112) < *(*a2 + 112);
  }

  else
  {
    return v3 & (v2 ^ 1u);
  }
}

uint64_t sub_1DAFC05F0()
{
  v3 = v2[5];
  swift_beginAccess();
  v4 = *(v3 + 112);
  v5 = (v4 >> 62);
  if (v4 >> 62)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      v0 = v4;
    }

    else
    {
      v0 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_1DB09DD44())
    {
      v8 = sub_1DB09DD44();
      if (!v8)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (sub_1DB09DD44())
      {
LABEL_3:
        if ((v4 & 0xC000000000000001) != 0)
        {
          v0 = MEMORY[0x1E1280530](0, v4);
        }

        else
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_39;
          }

          v0 = *(v4 + 32);
        }

        v2[6] = v0;
        if (v5)
        {
          v8 = sub_1DB09DD44();
          if (!v8)
          {
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          v8 = sub_1DB09DD44();
          if (v8 < 1)
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          v8 = sub_1DB09DD44();
        }

        else
        {
          v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v8)
          {
            goto LABEL_44;
          }
        }

        v1 = (v8 - 1);
        if (!__OFSUB__(v8, 1))
        {
          v9 = v2[5];
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *(v9 + 112) = v4;
          if (isUniquelyReferenced_nonNull_bridgeObject)
          {
            if (!v5)
            {
              v5 = (v4 & 0xFFFFFFFFFFFFFF8);
              if (v1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_22;
              }

              goto LABEL_19;
            }
          }

          else if (!v5)
          {
            v5 = (v4 & 0xFFFFFFFFFFFFFF8);
LABEL_19:
            v11 = v5[2];
LABEL_21:
            v12 = v2[5];
            v4 = sub_1DB09DE74();
            *(v12 + 112) = v4;
            v5 = (v4 & 0xFFFFFFFFFFFFFF8);
LABEL_22:
            v1 = v5 + 4;
            v13 = v5[4];

            if (!(v4 >> 62))
            {
              v14 = v5[2];
              v8 = memmove(v5 + 4, v5 + 5, 8 * v14 - 8);
              v15 = v14 - 1;
              if (!__OFSUB__(v14, 1))
              {
                goto LABEL_24;
              }

LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

LABEL_40:
            v8 = sub_1DB09DD44();
            if (__OFSUB__(v8, 1))
            {
LABEL_47:
              __break(1u);
              return MEMORY[0x1EEE6DFA0](v8, v6, v7);
            }

            memmove(v1, v5 + 5, 8 * (v8 - 1));
            v8 = sub_1DB09DD44();
            v15 = v8 - 1;
            if (!__OFSUB__(v8, 1))
            {
LABEL_24:
              v16 = v2[5];
              v5[2] = v15;
              *(v16 + 112) = v4;
              swift_endAccess();

              v8 = sub_1DAFC08E0;
              v6 = v0;
              v7 = 0;

              return MEMORY[0x1EEE6DFA0](v8, v6, v7);
            }

            goto LABEL_43;
          }

          sub_1DB09DD44();
          goto LABEL_21;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  sub_1DAFC270C();
  swift_allocError();
  swift_willThrow();
  swift_endAccess();
  v17 = v2[1];

  return v17();
}

uint64_t sub_1DAFC08E0()
{
  v1 = *(v0 + 40);
  *(v0 + 56) = *(*(v0 + 48) + 208);

  return MEMORY[0x1EEE6DFA0](sub_1DAFC0950, v1, 0);
}

uint64_t sub_1DAFC0950()
{
  if (*(v1 + 56))
  {
    v3 = *(v1 + 40);
    v4 = *(v1 + 48);
    swift_beginAccess();
    v5 = *(v3 + 112);
    v6 = (v5 >> 62);
    if (v5 >> 62)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        v0 = v5;
      }

      else
      {
        v0 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      if (sub_1DB09DD44())
      {
        v9 = sub_1DB09DD44();
        if (!v9)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        if (sub_1DB09DD44())
        {
LABEL_4:
          if ((v5 & 0xC000000000000001) != 0)
          {
            v0 = MEMORY[0x1E1280530](0, v5);
          }

          else
          {
            if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_43;
            }

            v0 = *(v5 + 32);
          }

          *(v1 + 48) = v0;
          if (v6)
          {
            v9 = sub_1DB09DD44();
            if (!v9)
            {
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

            v9 = sub_1DB09DD44();
            if (v9 < 1)
            {
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            v9 = sub_1DB09DD44();
          }

          else
          {
            v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v9)
            {
              goto LABEL_48;
            }
          }

          v2 = (v9 - 1);
          if (!__OFSUB__(v9, 1))
          {
            v13 = *(v1 + 40);
            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            *(v13 + 112) = v5;
            if (isUniquelyReferenced_nonNull_bridgeObject)
            {
              if (!v6)
              {
                v6 = (v5 & 0xFFFFFFFFFFFFFF8);
                if (v2 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  goto LABEL_26;
                }

                goto LABEL_23;
              }
            }

            else if (!v6)
            {
              v6 = (v5 & 0xFFFFFFFFFFFFFF8);
LABEL_23:
              v15 = v6[2];
LABEL_25:
              v16 = *(v1 + 40);
              v5 = sub_1DB09DE74();
              *(v16 + 112) = v5;
              v6 = (v5 & 0xFFFFFFFFFFFFFF8);
LABEL_26:
              v2 = v6 + 4;
              v17 = v6[4];

              if (!(v5 >> 62))
              {
                v18 = v6[2];
                v9 = memmove(v6 + 4, v6 + 5, 8 * v18 - 8);
                v19 = v18 - 1;
                if (!__OFSUB__(v18, 1))
                {
                  goto LABEL_28;
                }

LABEL_47:
                __break(1u);
                goto LABEL_48;
              }

LABEL_44:
              v9 = sub_1DB09DD44();
              if (__OFSUB__(v9, 1))
              {
LABEL_51:
                __break(1u);
                return MEMORY[0x1EEE6DFA0](v9, v7, v8);
              }

              memmove(v2, v6 + 5, 8 * (v9 - 1));
              v9 = sub_1DB09DD44();
              v19 = v9 - 1;
              if (!__OFSUB__(v9, 1))
              {
LABEL_28:
                v20 = *(v1 + 40);
                v6[2] = v19;
                *(v20 + 112) = v5;
                swift_endAccess();

                v9 = sub_1DAFC08E0;
                v7 = v0;
                v8 = 0;

                return MEMORY[0x1EEE6DFA0](v9, v7, v8);
              }

              goto LABEL_47;
            }

            sub_1DB09DD44();
            goto LABEL_25;
          }

LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        __break(1u);
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    sub_1DAFC270C();
    swift_allocError();
    swift_willThrow();
    swift_endAccess();

    v21 = *(v1 + 8);

    return v21();
  }

  else
  {
    v10 = *(v1 + 8);
    v11 = *(v1 + 48);

    return v10(v11);
  }
}

uint64_t sub_1DAFC0CC0()
{
  v18 = v0;
  v1 = v0[11];
  v2 = v1[20];
  v15[0] = v1[19];
  v15[1] = v2;
  v16 = 0;
  v17 = 0xE000000000000000;

  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000026, 0x80000001DB0C6850);
  swift_beginAccess();
  v3 = v1[14];
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v14 = v1[14];
    }

    v4 = sub_1DB09DD44();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v0[11];
  v0[8] = v4;
  v6 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v6);

  MEMORY[0x1E127FE90](0xD000000000000010, 0x80000001DB0C6880);
  v7 = v16;
  LOBYTE(v16) = 8;
  CoreODILogger.debug(_:category:)(v7, v17, &v16);

  if (*(v5 + 136) || (v8 = v0[11], (*(v8 + 144) & 1) != 0))
  {
    v9 = v1[20];
    v16 = v1[19];
    v17 = v9;
    LOBYTE(v15[0]) = 8;

    CoreODILogger.debug(_:category:)(0xD000000000000027, 0x80000001DB0C6900, v15);

    v10 = v0[1];

    return v10();
  }

  else
  {
    *(v8 + 144) = 1;
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_1DAFC0F04;
    v13 = v0[11];

    return sub_1DAFC05D0();
  }
}

uint64_t sub_1DAFC0F04(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  v4[13] = v1;

  v7 = v4[11];
  if (v1)
  {
    v8 = sub_1DAFC1464;
  }

  else
  {
    v4[14] = a1;
    v8 = sub_1DAFC1040;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DAFC1040()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v2 + 136);
  *(v2 + 136) = v1;

  *(v2 + 144) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFC10CC, v1, 0);
}

uint64_t sub_1DAFC10CC()
{
  *(*(v0 + 112) + 209) = 1;
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1DAFC1168;
  v2 = *(v0 + 112);

  return sub_1DAFC013C();
}

uint64_t sub_1DAFC1168()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFC1278, v2, 0);
}

uint64_t sub_1DAFC1278()
{
  v10 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v7 = *(v2 + 152);
  v8 = *(v2 + 160);
  v9 = 8;

  CoreODILogger.debug(_:category:)(0xD00000000000002CLL, 0x80000001DB0C68D0, &v9);

  v3 = *(v2 + 136);
  *(v2 + 136) = 0;

  *(v2 + 144) = 0;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1DAFC1370;
  v5 = v0[11];

  return sub_1DAFC0CA0();
}

uint64_t sub_1DAFC1370()
{
  v1 = *(*v0 + 128);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DAFC1464()
{
  v16 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v2 + 136);
  *(v2 + 136) = 0;

  *(v2 + 144) = 0;
  *(v0 + 72) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  if (swift_dynamicCast())
  {
  }

  else
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 88);
    v13 = *(v6 + 152);
    v14 = *(v6 + 160);

    sub_1DB09DE44();

    v15[0] = 0xD000000000000028;
    v15[1] = 0x80000001DB0C68A0;
    swift_getErrorValue();
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = *(v0 + 56);
    v10 = sub_1DB09E324();
    MEMORY[0x1E127FE90](v10);

    LOBYTE(v15[0]) = 8;
    CoreODILogger.error(_:category:)(0xD000000000000028, 0x80000001DB0C68A0, v15);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1DAFC15D8(uint64_t a1, unsigned __int8 *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  LODWORD(v48) = a7;
  v44 = a6;
  v45 = a4;
  v46 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v47 = &v41 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EC20, &qword_1DB0ABE98);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v41 - v20;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = *a2;
  v23 = *(a8 + 152);
  v24 = *(a8 + 160);
  v25 = *(v17 + 16);
  v26 = a3 & 1;
  v42 = v48 & 1;
  v43 = v22;
  v48 = *(a8 + 120);
  v25(v21, a1, v16);
  v27 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v28 = swift_allocObject();
  (*(v17 + 32))(v28 + v27, v21, v16);
  v50 = &type metadata for CoreODILogger;
  v51 = &protocol witness table for CoreODILogger;
  *&v49 = v23;
  *(&v49 + 1) = v24;
  type metadata accessor for ODNRequestTask();
  v29 = swift_allocObject();
  v30 = v44;

  swift_unknownObjectRetain();

  swift_defaultActor_initialize();
  *(v29 + 208) = 0;
  v31 = v42;
  *(v29 + 112) = v43;
  *(v29 + 113) = v26;
  v33 = v45;
  v32 = v46;
  *(v29 + 120) = v45;
  *(v29 + 128) = v32;
  *(v29 + 136) = v30;
  *(v29 + 144) = v31;
  *(v29 + 152) = v48;
  *(v29 + 216) = sub_1DAFC2760;
  *(v29 + 224) = v28;
  sub_1DAF96EAC(&v49, v29 + 168);
  swift_beginAccess();
  sub_1DAF4ED88(v33, v32);

  MEMORY[0x1E127FFD0](v34);
  if (*((*(a8 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a8 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v40 = *((*(a8 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1DB09D954();
  }

  sub_1DB09D974();
  sub_1DAFC4960(sub_1DAFC0598, 0);
  swift_endAccess();
  v35 = sub_1DB09DA24();
  v36 = v47;
  (*(*(v35 - 8) + 56))(v47, 1, 1, v35);
  v37 = sub_1DAFC27DC();
  v38 = swift_allocObject();
  v38[2] = a8;
  v38[3] = v37;
  v38[4] = a8;
  swift_retain_n();
  sub_1DAF4F0EC(0, 0, v36, &unk_1DB0ABEA8, v38);
}

uint64_t sub_1DAFC19B4(uint64_t a1)
{
  v2 = type metadata accessor for ODNAssessmentResult();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  sub_1DAFC28E4(a1, &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ODNAssessmentResult);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EC20, &qword_1DB0ABE98);
  return sub_1DB09D9B4();
}

uint64_t sub_1DAFC1A68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF62CC4;

  return sub_1DAFC0CA0();
}

uint64_t sub_1DAFC1AF8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 1584) = v5;
  *(v6 + 1576) = a5;
  *(v6 + 1568) = a4;
  *(v6 + 1560) = a3;
  *(v6 + 1552) = a1;
  v8 = type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload(0);
  *(v6 + 1592) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v6 + 1600) = swift_task_alloc();
  v10 = type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload(0);
  *(v6 + 1608) = v10;
  v11 = *(v10 - 8);
  *(v6 + 1616) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 1624) = swift_task_alloc();
  *(v6 + 602) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAFC1C04, v5, 0);
}

uint64_t sub_1DAFC1C04()
{
  v15 = v0;
  v1 = v0[198];
  v2 = v0[197];
  v3 = v0[196];
  v4 = v1[20];
  v0[189] = v1[19];
  v0[190] = v4;
  v14[0] = 0;
  v14[1] = 0xE000000000000000;

  sub_1DB09DE44();

  v0[191] = 0xD000000000000027;
  v0[192] = 0x80000001DB0C6990;
  if (v2)
  {
    v5 = v2;
  }

  else
  {
    v3 = 7104878;
    v5 = 0xE300000000000000;
  }

  MEMORY[0x1E127FE90](v3, v5);

  v6 = v0[191];
  v7 = v0[192];
  LOBYTE(v14[0]) = 12;
  CoreODILogger.debug(_:category:)(v6, v7, v14);

  v8 = v0[190];

  v0[204] = v1[15];
  v9 = v1[16];
  swift_getObjectType();
  v10 = *(v9 + 8);
  v12 = sub_1DB09D984();

  return MEMORY[0x1EEE6DFA0](sub_1DAFC1D58, v12, v11);
}

uint64_t sub_1DAFC1D58()
{
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1584);
  swift_beginAccess();
  sub_1DAF8B8D8(v1 + 400, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DAFC1DE0, v2, 0);
}

uint64_t sub_1DAFC1DE0()
{
  v51 = *(v0 + 602);
  v1 = *(v0 + 1624);
  v2 = *(v0 + 1608);
  v3 = *(v0 + 1568);
  v47 = *(v0 + 1576);
  v49 = *(v0 + 1560);
  v4 = *(v0 + 1552);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v53 = *(v0 + 32);
  v56 = *(v0 + 40);
  sub_1DAF8BFD0(v0 + 48, v0 + 1408);
  v7 = *(v0 + 184);
  v8 = *(v0 + 216);
  *(v0 + 976) = *(v0 + 200);
  *(v0 + 992) = v8;
  v9 = *(v0 + 120);
  v10 = *(v0 + 152);
  *(v0 + 912) = *(v0 + 136);
  *(v0 + 928) = v10;
  *(v0 + 944) = *(v0 + 168);
  *(v0 + 960) = v7;
  *(v0 + 880) = *(v0 + 104);
  *(v0 + 896) = v9;
  v11 = *(v0 + 272);
  *(v0 + 1216) = *(v0 + 256);
  *(v0 + 1232) = v11;
  v12 = *(v0 + 304);
  *(v0 + 1248) = *(v0 + 288);
  *(v0 + 1264) = v12;
  v13 = *(v0 + 448);
  *(v0 + 840) = *(v0 + 432);
  *(v0 + 856) = v13;
  v14 = *(v0 + 384);
  *(v0 + 776) = *(v0 + 368);
  *(v0 + 792) = v14;
  v15 = *(v0 + 416);
  *(v0 + 808) = *(v0 + 400);
  *(v0 + 824) = v15;
  v16 = *(v0 + 352);
  *(v0 + 744) = *(v0 + 336);
  *(v0 + 760) = v16;
  v17 = *(v0 + 504);
  *(v0 + 1152) = *(v0 + 488);
  *(v0 + 1168) = v17;
  v18 = *(v0 + 536);
  *(v0 + 1184) = *(v0 + 520);
  *(v0 + 1008) = *(v0 + 232);
  *(v0 + 872) = *(v0 + 464);
  *(v0 + 1200) = v18;
  v19 = v2[6];
  sub_1DAFC28E4(v4, &v1[v19], type metadata accessor for AssessmentTiming);
  v20 = type metadata accessor for AssessmentTiming();
  (*(*(v20 - 8) + 56))(&v1[v19], 0, 1, v20);
  v54 = v6;
  v55 = v5;
  *v1 = v6;
  *(v1 + 1) = v5;
  *(v1 + 2) = v3;
  *(v1 + 3) = v47;
  v1[v2[7]] = v51;
  *&v1[v2[8]] = v49;
  v21 = *(v0 + 992);
  *(v0 + 704) = *(v0 + 976);
  *(v0 + 720) = v21;
  *(v0 + 736) = *(v0 + 1008);
  v22 = *(v0 + 928);
  *(v0 + 640) = *(v0 + 912);
  *(v0 + 656) = v22;
  v23 = *(v0 + 960);
  *(v0 + 672) = *(v0 + 944);
  *(v0 + 688) = v23;
  v24 = *(v0 + 896);
  *(v0 + 608) = *(v0 + 880);
  *(v0 + 624) = v24;
  v25 = 0;
  v26 = 0;
  if (sub_1DAF8B9A8(v0 + 608) != 1)
  {
    v25 = *(v0 + 728);
    v26 = *(v0 + 736);
  }

  v27 = *(v0 + 856);
  *(v0 + 1112) = *(v0 + 840);
  *(v0 + 1128) = v27;
  *(v0 + 1144) = *(v0 + 872);
  v28 = *(v0 + 792);
  *(v0 + 1048) = *(v0 + 776);
  *(v0 + 1064) = v28;
  v29 = *(v0 + 824);
  *(v0 + 1080) = *(v0 + 808);
  *(v0 + 1096) = v29;
  v30 = *(v0 + 760);
  *(v0 + 1016) = *(v0 + 744);
  *(v0 + 1032) = v30;
  v50 = v26;
  if (sub_1DAF8B9A8(v0 + 1016) == 1)
  {
    v45 = 0;
    v31 = 0;
  }

  else
  {
    v45 = *(v0 + 1136);
    v31 = *(v0 + 1144);
  }

  v52 = *(v0 + 1632);
  v32 = *(v0 + 1624);
  v33 = *(v0 + 1616);
  v34 = *(v0 + 1608);
  v35 = *(v0 + 1600);
  v36 = *(v0 + 1592);
  v46 = *(v0 + 1576);
  v48 = *(v0 + 1560);
  sub_1DAF3523C(v0 + 1424, v35 + 376);
  v37 = *(v36 + 88);
  sub_1DAFC28E4(v32, v35 + v37, type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload);
  (*(v33 + 56))(v35 + v37, 0, 1, v34);
  *v35 = v53;
  *(v35 + 8) = v56;
  *(v35 + 16) = v54;
  *(v35 + 24) = v55;
  *(v35 + 32) = v25;
  *(v35 + 40) = v50;
  v38 = *(v0 + 1216);
  v39 = *(v0 + 1232);
  v40 = *(v0 + 1264);
  *(v35 + 80) = *(v0 + 1248);
  *(v35 + 96) = v40;
  *(v35 + 48) = v38;
  *(v35 + 64) = v39;
  *(v35 + 112) = v45;
  *(v35 + 120) = v31;
  v41 = *(v0 + 1152);
  v42 = *(v0 + 1168);
  v43 = *(v0 + 1200);
  *(v35 + 160) = *(v0 + 1184);
  *(v35 + 176) = v43;
  *(v35 + 128) = v41;
  *(v35 + 144) = v42;
  *(v35 + 192) = 0u;
  *(v35 + 208) = 0u;
  *(v35 + 224) = 0u;
  *(v35 + 240) = 0u;
  *(v35 + 256) = 0u;
  *(v35 + 272) = 0u;
  *(v35 + 288) = 0u;
  *(v35 + 304) = 0;
  *(v35 + 312) = 1;
  *(v35 + 320) = 2;
  *(v35 + 328) = 0;
  *(v35 + 336) = 0;
  *(v35 + 344) = 1;
  *(v35 + 352) = 0;
  *(v35 + 360) = 0;
  *(v35 + 368) = 1;
  *(v35 + 416) = 0;
  *(v35 + 424) = 1;
  swift_bridgeObjectRetain_n();

  sub_1DAFC294C(v0 + 1216, v0 + 1280);
  sub_1DAFC294C(v0 + 1152, v0 + 1344);

  return MEMORY[0x1EEE6DFA0](sub_1DAFC21A8, v52, 0);
}

uint64_t sub_1DAFC21A8()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[204] + 208), *(v0[204] + 232));
  v2 = swift_task_alloc();
  v0[205] = v2;
  *v2 = v0;
  v2[1] = sub_1DAFC2254;
  v3 = v0[200];

  return sub_1DAFF9558(v3, 0);
}

uint64_t sub_1DAFC2254()
{
  v2 = *v1;
  v3 = *(*v1 + 1640);
  v4 = *v1;
  *(*v1 + 1648) = v0;

  v5 = *(v2 + 1584);
  if (v0)
  {
    v6 = sub_1DAFC2438;
  }

  else
  {
    v6 = sub_1DAFC2380;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DAFC2380()
{
  v1 = v0[203];
  sub_1DAFC29BC(v0[200], type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload);
  sub_1DAFC29BC(v1, type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload);
  sub_1DAF8C02C((v0 + 176));
  sub_1DAF8B934((v0 + 2));
  v2 = v0[203];
  v3 = v0[200];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DAFC2438()
{
  v16 = v0;
  v1 = v0[206];
  v2 = v0[203];
  v3 = v0[200];
  v4 = v0[198];
  v13 = *(v4 + 152);
  v14 = *(v4 + 160);

  sub_1DB09DE44();

  v15[0] = 0xD00000000000001ALL;
  v15[1] = 0x80000001DB0C69C0;
  swift_getErrorValue();
  v5 = v0[186];
  v6 = v0[187];
  v7 = v0[188];
  v8 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v8);

  LOBYTE(v15[0]) = 12;
  CoreODILogger.error(_:category:)(0xD00000000000001ALL, 0x80000001DB0C69C0, v15);

  sub_1DAFC29BC(v3, type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload);
  sub_1DAFC29BC(v2, type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload);
  sub_1DAF8C02C((v0 + 176));
  sub_1DAF8B934((v0 + 2));
  v9 = v0[203];
  v10 = v0[200];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DAFC25B8()
{
  v1 = v0[14];

  v2 = v0[15];
  swift_unknownObjectRelease();
  v3 = v0[17];

  v4 = v0[20];

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

unint64_t sub_1DAFC2660()
{
  result = qword_1ECC0EC10;
  if (!qword_1ECC0EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EC10);
  }

  return result;
}

unint64_t sub_1DAFC26B8()
{
  result = qword_1ECC0EC18;
  if (!qword_1ECC0EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EC18);
  }

  return result;
}

unint64_t sub_1DAFC270C()
{
  result = qword_1EE3011E0;
  if (!qword_1EE3011E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3011E0);
  }

  return result;
}

uint64_t sub_1DAFC2760(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EC20, &qword_1DB0ABE98) - 8) + 80);

  return sub_1DAFC19B4(a1);
}

unint64_t sub_1DAFC27DC()
{
  result = qword_1EE3011E8;
  if (!qword_1EE3011E8)
  {
    type metadata accessor for ODNAtorQueueManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3011E8);
  }

  return result;
}

uint64_t sub_1DAFC2830()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DAF62CC4;

  return sub_1DAFC1A68();
}

uint64_t sub_1DAFC28E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAFC294C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7A8, &unk_1DB0ABEB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAFC29BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DAFC2A30()
{
  result = qword_1ECC0EC28;
  if (!qword_1ECC0EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EC28);
  }

  return result;
}

unint64_t sub_1DAFC2A84(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  if (*&a1 >> 52 > 0x7FEuLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a1 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a1 >= 1.84467441e19)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a1 > 0x44B82FA08)
  {
    return -1;
  }

  v1 = a1 * 1000000000.0;
  if (*&v1 >> 52 > 0x7FEuLL)
  {
    goto LABEL_15;
  }

  if (v1 > -1.0)
  {
    if (v1 < 1.84467441e19)
    {
      return v1;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1DAFC2B3C(uint64_t *a1, unsigned int a2)
{
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB09E404();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_1DB09E274();
    v8 = sub_1DB046540();
    if (v8 == 5)
    {
      v6 = a2;
    }

    else
    {
      v6 = v8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v6;
}

uint64_t sub_1DAFC2C2C@<X0>(uint64_t *a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB09E404();
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_1DB09E274();
    v8 = sub_1DB09E004();

    if (v8 >= 4)
    {
      v9 = a2;
    }

    else
    {
      v9 = v8;
    }

    *a3 = v9;
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DAFC2D28@<X0>(uint64_t *a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB09E404();
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_1DB09E274();
    AssessmentConfig.Sources.init(rawValue:)(v10);
    v8 = v12;
    if (v12 == 7)
    {
      v8 = a2;
    }

    *a3 = v8;
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t DsidType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1DAF3523C(a1, v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_1DB09E404();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_1DB09E274();
    v6 = sub_1DB09E004();

    if (v6 >= 4)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1DAFC2F34()
{
  v0 = swift_allocObject();
  v1 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EC58, &unk_1DB0AC0B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB0ABF90;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB0ABFA0;
  *(v3 + 32) = 0xE400000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_1F56CA500;
  *(v3 + 40) = v4 | 0x1000000000000000;
  *(v3 + 48) = 0;
  *(v2 + 32) = v3 | 0x7000000000000000;
  *(v2 + 40) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB0ABFB0;
  *(v5 + 32) = 0xE400000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_1F56CA540;
  *(v5 + 40) = v6 | 0x1000000000000000;
  *(v5 + 48) = 0;
  *(v2 + 48) = v5 | 0x7000000000000000;
  *(v2 + 56) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB0ABFC0;
  *(v7 + 32) = 0xE400000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = &unk_1F56CA580;
  *(v7 + 40) = v8 | 0x1000000000000000;
  *(v7 + 48) = 0;
  *(v2 + 64) = v7 | 0x7000000000000000;
  *(v2 + 72) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB0ABFD0;
  *(v9 + 32) = 0xE400000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_1F56CA5C0;
  *(v9 + 40) = v10 | 0x1000000000000000;
  *(v9 + 48) = 0;
  *(v2 + 80) = v9 | 0x7000000000000000;
  *(v2 + 88) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DB0ABFE0;
  *(v11 + 32) = 0xE400000000000000;
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_1F56CA600;
  *(v11 + 40) = v12 | 0x1000000000000000;
  *(v11 + 48) = 0;
  *(v2 + 96) = v11 | 0x7000000000000000;
  *(v2 + 104) = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DB0ABFF0;
  *(v13 + 32) = 0xE400000000000000;
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_1F56CA640;
  *(v13 + 40) = v14 | 0x1000000000000000;
  *(v13 + 48) = 0;
  *(v2 + 112) = v13 | 0x7000000000000000;
  *(v2 + 120) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DB0AC000;
  *(v15 + 32) = 0xE400000000000000;
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_1F56CA680;
  *(v15 + 40) = v16 | 0x1000000000000000;
  *(v15 + 48) = 0;
  *(v2 + 128) = v15 | 0x7000000000000000;
  *(v2 + 136) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DB0AC010;
  *(v17 + 32) = 0xE400000000000000;
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_1F56CA6C0;
  *(v17 + 40) = v18 | 0x1000000000000000;
  *(v17 + 48) = 0;
  *(v2 + 144) = v17 | 0x7000000000000000;
  *(v2 + 152) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DB0AC020;
  *(v19 + 32) = 0xE400000000000000;
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_1F56CA700;
  *(v19 + 40) = v20 | 0x1000000000000000;
  *(v19 + 48) = 0;
  *(v2 + 160) = v19 | 0x7000000000000000;
  *(v2 + 168) = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DB0AC030;
  *(v21 + 32) = 0xE400000000000000;
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1F56CA740;
  *(v21 + 40) = v22 | 0x1000000000000000;
  *(v21 + 48) = 0;
  *(v2 + 176) = v21 | 0x7000000000000000;
  *(v2 + 184) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DB0AC040;
  *(v23 + 32) = 0xE400000000000000;
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_1F56CA780;
  *(v23 + 40) = v24 | 0x1000000000000000;
  *(v23 + 48) = 0;
  *(v2 + 192) = v23 | 0x7000000000000000;
  *(v2 + 200) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1DB0AC050;
  *(v25 + 32) = 0xE400000000000000;
  v26 = swift_allocObject();
  *(v26 + 16) = &unk_1F56CA7C0;
  *(v25 + 40) = v26 | 0x1000000000000000;
  *(v25 + 48) = 0;
  *(v2 + 208) = v25 | 0x7000000000000000;
  *(v2 + 216) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1DB0AC060;
  *(v27 + 32) = 0xE400000000000000;
  v28 = swift_allocObject();
  *(v28 + 16) = &unk_1F56CA800;
  *(v27 + 40) = v28 | 0x1000000000000000;
  *(v27 + 48) = 0;
  *(v2 + 224) = v27 | 0x7000000000000000;
  *(v2 + 232) = 0;
  *(v2 + 240) = 0x8000000000000030;
  *(v2 + 248) = 0;
  *(v1 + 16) = v2;
  *(v0 + 16) = v1 | 0x3000000000000000;
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_1DAFC3478()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EC58, &unk_1DB0AC0B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DB0A0500;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB0AC070;
  *(v2 + 32) = 0xE90000000000006ELL;
  *(v2 + 40) = 0x8000000000000008;
  *(v2 + 48) = 0;
  *(v1 + 32) = v2 | 0x6000000000000000;
  *(v1 + 40) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB0AC080;
  *(v3 + 32) = 0x80000001DB0C69E0;
  *(v3 + 40) = 0x8000000000000000;
  *(v3 + 48) = 0;
  *(v1 + 48) = v3 | 0x6000000000000000;
  *(v1 + 56) = 1;
  *(v0 + 16) = v1;
  return v0 | 0x1000000000000000;
}

uint64_t sub_1DAFC3580(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = sub_1DB09D734();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v6 = a1;
  v7 = SecCertificateCopyExtensionValue();
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      goto LABEL_6;
    }

    sub_1DB09D024();
  }

LABEL_6:
  sub_1DAFC4300();
  swift_allocError();
  *v9 = 0;
  swift_willThrow();

  v10 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_1DAFC3D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DB09D734();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v9 = *(a3 + 16);
  if (v9)
  {
    for (i = a3 + 32; ; i += 56)
    {
      sub_1DAFC41EC(i, &v15);
      v11 = *(&v15 + 1) == a1 && v16 == a2;
      if (v11 || (sub_1DB09E254() & 1) != 0)
      {
        break;
      }

      sub_1DAFC4248(&v15);
      if (!--v9)
      {
        return 0;
      }
    }

    v19 = v15;
    v20[0] = v16;
    v20[1] = v17;
    v21 = v18;
    sub_1DAF409DC(v20 + 8, v22);
    sub_1DAFC4248(&v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EC30, &unk_1DB0AC090);
    if (swift_dynamicCast())
    {
      v12 = *(v19 + 16);
      if (v12)
      {
        sub_1DAF409DC(v19 + 32 * v12, v23);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4A0, &qword_1DB0A0968);
        if (swift_dynamicCast())
        {

          sub_1DB09D724();
          sub_1DAFC429C();
          v13 = sub_1DB09D6F4();
          swift_bridgeObjectRelease_n();
          return v13;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t sub_1DAFC3F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  for (i = a3 + 32; ; i += 56)
  {
    sub_1DAFC41EC(i, &v10);
    v7 = *(&v10 + 1) == a1 && v11 == a2;
    if (v7 || (sub_1DB09E254() & 1) != 0)
    {
      break;
    }

    sub_1DAFC4248(&v10);
    if (!--v3)
    {
      return 0;
    }
  }

  v14 = v10;
  v15[0] = v11;
  v15[1] = v12;
  v16 = v13;
  sub_1DAF409DC(v15 + 8, v17);
  sub_1DAFC4248(&v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EC30, &unk_1DB0AC090);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v14 + 16);
  if (!v8)
  {

    return 0;
  }

  sub_1DAF409DC(v14 + 32 * v8, &v14);

  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

void sub_1DAFC40A8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1;
  v5 = sub_1DAFC3580(v4);
  if (v2)
  {
  }

  else
  {
    v8 = v5;
    v9 = v7;
    v26 = v6;
    v10 = sub_1DAFC3D58(1684628851, 0xE400000000000000, v5);
    v24 = v11;
    v25 = v10;
    v23 = sub_1DAFC3F50(1145652037, 0xE400000000000000, v8);
    v27 = v12 & 1;
    v13 = sub_1DAFC3D58(1835954803, 0xE400000000000000, v8);
    v21 = v14;
    v22 = v13;
    v15 = sub_1DAFC3D58(1684628597, 0xE400000000000000, v8);
    v17 = v16;
    v18 = sub_1DAFC3D58(1768254825, 0xE400000000000000, v8);
    v20 = v19;

    *a2 = v25;
    *(a2 + 8) = v24;
    *(a2 + 16) = v23;
    *(a2 + 24) = v27;
    *(a2 + 32) = v22;
    *(a2 + 40) = v21;
    *(a2 + 48) = v15;
    *(a2 + 56) = v17;
    *(a2 + 64) = v18;
    *(a2 + 72) = v20;
    *(a2 + 80) = v26;
    *(a2 + 88) = v9;
  }
}

unint64_t sub_1DAFC429C()
{
  result = qword_1ECC0EC38;
  if (!qword_1ECC0EC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E4A0, &qword_1DB0A0968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EC38);
  }

  return result;
}

unint64_t sub_1DAFC4300()
{
  result = qword_1ECC0EC40;
  if (!qword_1ECC0EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EC40);
  }

  return result;
}

unint64_t sub_1DAFC4354(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6 || v1 == 7)
      {
      }
    }

    else if (v1 == 4 || v1 == 5)
    {
    }
  }

  else
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3)
    {
    }
  }

  return result;
}

uint64_t sub_1DAFC4428(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DAFC4484(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1DAFC4504()
{
  result = qword_1ECC0EC60;
  if (!qword_1ECC0EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EC60);
  }

  return result;
}

uint64_t sub_1DAFC4574()
{
  if (qword_1EE3039A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE3039B0;
  *(v0 + 16) = qword_1EE3039B0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFC461C, v1, 0);
}

uint64_t sub_1DAFC461C()
{
  if (*(v0[2] + 168))
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[3] = v3;
    *v3 = v0;
    v3[1] = sub_1DAFC46E8;
    v4 = v0[2];

    return sub_1DAFC5F3C();
  }
}

uint64_t sub_1DAFC46E8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v6 = *v0;

  v3 = *(v6 + 8);
  v4 = *(v1 + 16);

  return v3(v4);
}

uint64_t sub_1DAFC47F4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1DAFC48C8(uint64_t (*a1)(id *, id *), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1DAFCD314(v6);
    *v3 = v6;
  }

  v9 = *(v6 + 16);
  sub_1DAFCB5D4(a1, a2);
  return sub_1DB09DEF4();
}

uint64_t sub_1DAFC4960(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = *v2;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
  {
    v5 = sub_1DAFCCFCC(v5);
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  result = sub_1DAFCB6F8(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_1DAFC49F0()
{
  type metadata accessor for ODIDeviceInfo();
  swift_allocObject();
  result = sub_1DAFC5668();
  qword_1EE3039B0 = result;
  return result;
}

uint64_t sub_1DAFC4A2C@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 192))
  {
    v3 = *(v1 + 184);
    v4 = *(v1 + 192);
  }

  else
  {
    *(v1 + 184) = xmmword_1DB0AC200;

    v4 = 0xE100000000000000;
    v3 = 45;
  }

  *a1 = v3;
  a1[1] = v4;
}

id sub_1DAFC4AC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ODIDeviceInfo.DeviceInfoHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DAFC4B08()
{
  v10 = *MEMORY[0x1E69E9840];
  v1[20] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ED28, &qword_1DB0AC388);
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v5 = sub_1DB09D1D4();
  v1[24] = v5;
  v6 = *(v5 - 8);
  v1[25] = v6;
  v7 = *(v6 + 64) + 15;
  v1[26] = swift_task_alloc();
  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DAFC4C5C, v0, 0);
}

uint64_t sub_1DAFC4C5C()
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = v0[20];
  v2 = *(v1 + 224);
  v0[27] = v2;
  if (v2)
  {
    v3 = v0[26];
    v4 = v0[23];

    v5 = v0[1];
    v6 = *MEMORY[0x1E69E9840];

    return v5(v2);
  }

  else
  {
    v8 = *(v1 + 128);
    v0[18] = 0;
    v9 = [v8 getUserDefaultVoiceSubscriptionContext_];
    v10 = v0[18];
    if (v9)
    {
      v11 = v9;
      v12 = v0[26];
      v14 = v0[22];
      v13 = v0[23];
      v15 = v0[21];
      v16 = v10;
      v17 = [v11 uuid];

      sub_1DB09D194();
      v0[2] = v0;
      v0[7] = v0 + 19;
      v0[3] = sub_1DAFC4FD8;
      swift_continuation_init();
      v0[17] = v15;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
      sub_1DAF4062C(0, &qword_1EE3009A0, 0x1E6965098);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
      sub_1DB09D994();
      (*(v14 + 32))(boxed_opaque_existential_0, v13, v15);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1DAFC547C;
      v0[13] = &block_descriptor_68;
      [v8 getSubscriptionInfo_];
      (*(v14 + 8))(boxed_opaque_existential_0, v15);
      v19 = *MEMORY[0x1E69E9840];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    else
    {
      v20 = v10;
      sub_1DB09CE74();

      swift_willThrow();
      v21 = v0[26];
      v22 = v0[23];

      v23 = v0[1];
      v24 = *MEMORY[0x1E69E9840];

      return v23();
    }
  }
}

uint64_t sub_1DAFC4FD8()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 224) = v3;
  v4 = *(v1 + 160);
  if (v3)
  {
    v5 = sub_1DAFC53A8;
  }

  else
  {
    v5 = sub_1DAFC5124;
  }

  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DAFC5124()
{
  v27 = v0;
  v26 = *MEMORY[0x1E69E9840];
  v1 = v0[19];
  v2 = [v1 subscriptionsInUse];

  v3 = v0[26];
  if (v2)
  {
    sub_1DAF4062C(0, &unk_1EE3018B8, 0x1E6965090);
    v4 = sub_1DB09D934();

    sub_1DAFC552C(v4);

    v5 = swift_task_alloc();
    *(v5 + 16) = v3;

    v23 = sub_1DAFCD044(v6);
    sub_1DAFC48C8(sub_1DAFCD750, v5);
    v11 = v0[25];
    v10 = v0[26];
    v12 = v0[24];
    v13 = v0[20];

    v14 = v23;

    v15 = *(v13 + 224);
    *(v13 + 224) = v23;

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v7 = v0[24];
    v8 = v0[25];
    v9 = v0[20];
    sub_1DAFC4A2C(v22);
    v23 = v22[0];
    v24 = v22[1];
    v25[0] = 5;
    CoreODILogger.debug(_:category:)(0xD00000000000001ALL, 0x80000001DB0C6DB0, v25);

    (*(v8 + 8))(v3, v7);
    v14 = 0;
  }

  v17 = v0[26];
  v16 = v0[27];
  v18 = v0[23];

  v19 = v0[1];
  v20 = *MEMORY[0x1E69E9840];

  return v19(v14);
}

uint64_t sub_1DAFC53A8()
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = v0[28];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  swift_willThrow();
  (*(v3 + 8))(v2, v4);
  v5 = v0[28];
  v6 = v0[26];
  v7 = v0[23];

  v8 = v0[1];
  v9 = *MEMORY[0x1E69E9840];

  return v8();
}

void sub_1DAFC547C(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ED28, &qword_1DB0AC388);
    sub_1DB09D9A4();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ED28, &qword_1DB0AC388);
    sub_1DB09D9B4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DAFC552C(unint64_t a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DB09DD44())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1E1280530](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ([v5 isSimHidden])
      {
      }

      else
      {
        sub_1DB09DEE4();
        v4 = *(v9 + 16);
        sub_1DB09DF14();
        sub_1DB09DF24();
        sub_1DB09DEF4();
      }

      if (v7 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DAFC5668()
{
  v1 = v0;
  v2 = sub_1DB09DBB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DB09D4F4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v11 = sub_1DB09DBA4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  swift_defaultActor_initialize();
  sub_1DAF4062C(0, &qword_1EE3018E0, 0x1E69E9610);
  sub_1DB09DB94();
  sub_1DB09D4E4();
  v14 = *MEMORY[0x1E69E8090];
  v15 = *(v3 + 104);
  v15(v7, v14, v2);
  *(v0 + 112) = sub_1DB09DBE4();
  sub_1DB09DB94();
  sub_1DB09D4E4();
  v15(v7, v14, v2);
  v16 = sub_1DB09DBE4();
  *(v1 + 120) = v16;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0;
  *(v1 + 128) = [objc_allocWithZone(MEMORY[0x1E69650A0]) initWithQueue_];
  return v1;
}

BOOL sub_1DAFC58D8(void **a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ED20, &qword_1DB0AC380);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v33 = &v32 - v7;
  v8 = sub_1DB09D1D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v32 - v16;
  v18 = *a1;
  v19 = *a2;
  v20 = [v18 uuid];
  sub_1DB09D194();

  v21 = [v19 uuid];
  sub_1DB09D194();

  v22 = sub_1DB09D184();
  if ((v22 ^ sub_1DB09D184()))
  {
    if (v22)
    {
      v23 = -1;
    }

    else
    {
      v23 = 1;
    }
  }

  else
  {
    v24 = [v18 slotID];
    v25 = (v24 == 1) ^ ([v19 slotID] != 1);
    if (v24 == 1)
    {
      v23 = -1;
    }

    else
    {
      v23 = 1;
    }

    if (v25)
    {
      v36 = sub_1DB09D174();
      v37 = v26;
      v34 = sub_1DB09D174();
      v35 = v27;
      v28 = sub_1DB09D2A4();
      v29 = v33;
      (*(*(v28 - 8) + 56))(v33, 1, 1, v28);
      sub_1DAF9C5EC();
      v23 = sub_1DB09DCC4();
      sub_1DAF40AEC(v29, &qword_1ECC0ED20, &qword_1DB0AC380);
    }
  }

  v30 = *(v9 + 8);
  v30(v14, v8);
  v30(v17, v8);
  return v23 == -1;
}

char *sub_1DAFC5BDC(char a1)
{
  v2 = v1[25];
  if (!v2 || (v3 = *(v2 + 16)) == 0)
  {
    sub_1DAFC4A2C(&v41);
    v39 = v41;
    v40 = v42;
    LOBYTE(v38[0]) = 5;
    v11 = 0x80000001DB0C6A00;
    v12 = 0xD00000000000001ALL;
    goto LABEL_9;
  }

  if (a1)
  {
    v4 = v1[27];
    if (v4)
    {
      v5 = v1[26];
      v6 = v1[27];

      v7 = sub_1DAF72DB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v9 = *(v7 + 2);
      v8 = *(v7 + 3);
      if (v9 >= v8 >> 1)
      {
        v7 = sub_1DAF72DB4((v8 > 1), v9 + 1, 1, v7);
      }

      *(v7 + 2) = v9 + 1;
      v10 = &v7[16 * v9];
      *(v10 + 4) = v5;
      *(v10 + 5) = v4;
      return v7;
    }

    sub_1DAFC4A2C(&v41);
    v39 = v41;
    v40 = v42;
    LOBYTE(v38[0]) = 5;
    v12 = 0xD000000000000022;
    v11 = 0x80000001DB0C6A20;
LABEL_9:
    CoreODILogger.info(_:category:)(v12, v11, v38);

    return 0;
  }

  v13 = v1[25];

  v14 = sub_1DAF9C5EC();
  v37 = 0;
  v35 = v2;
  v15 = (v2 + 40);
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    v16 = *v15;
    v41 = *(v15 - 1);
    v17 = v41;
    v42 = v16;
    v39 = 48;
    v40 = 0xE100000000000000;
    v38[0] = 0;
    v38[1] = 0xE000000000000000;

    v33 = v14;
    v34 = v14;
    v32[1] = v14;
    v32[0] = MEMORY[0x1E69E6158];
    v18 = sub_1DB09DCA4();
    v20 = v19;
    if (!v17 && v16 == 0xE000000000000000 || (v21 = v18, v22 = sub_1DB09E254(), (v22 & 1) != 0))
    {
    }

    else
    {
      v41 = v17;
      v42 = v16;
      MEMORY[0x1EEE9AC00](v22, v23);
      v33 = &v41;
      v36 = v7;
      v24 = v7;
      v25 = v37;
      v26 = sub_1DAFC47F4(sub_1DAFCD328, v32, v24);
      v37 = v25;

      if (v26)
      {
        goto LABEL_25;
      }

      v27 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v27 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (!v27)
      {
LABEL_25:

        v7 = v36;
      }

      else
      {
        v7 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1DAF72DB4(0, *(v7 + 2) + 1, 1, v7);
        }

        v29 = *(v7 + 2);
        v28 = *(v7 + 3);
        if (v29 >= v28 >> 1)
        {
          v7 = sub_1DAF72DB4((v28 > 1), v29 + 1, 1, v7);
        }

        *(v7 + 2) = v29 + 1;
        v30 = &v7[16 * v29];
        *(v30 + 4) = v17;
        *(v30 + 5) = v16;
      }
    }

    v15 += 2;
    --v3;
  }

  while (v3);

  return v7;
}

uint64_t sub_1DAFC5F3C()
{
  v7 = *MEMORY[0x1E69E9840];
  v1[27] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ED50, &qword_1DB0AC3A8);
  v1[28] = v2;
  v3 = *(v2 - 8);
  v1[29] = v3;
  v4 = *(v3 + 64) + 15;
  v1[30] = swift_task_alloc();
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DAFC6034, v0, 0);
}

uint64_t sub_1DAFC6034()
{
  v27 = v0;
  v26 = *MEMORY[0x1E69E9840];
  v1 = v0[27];
  sub_1DAFC4A2C(&v22);
  v24 = v22;
  v25 = v23;
  LOBYTE(v21[0]) = 5;
  CoreODILogger.debug(_:category:)(0xD000000000000013, 0x80000001DB0C6EA0, v21);

  v2 = *(v1 + 128);
  v0[31] = v2;
  [v2 setDelegate_];
  v0[23] = 0;
  v3 = [v2 getUserDefaultVoiceSubscriptionContext_];
  v0[32] = v3;
  v4 = v0[23];
  if (v3)
  {
    v5 = v4;
    v6 = swift_task_alloc();
    v0[33] = v6;
    *v6 = v0;
    v6[1] = sub_1DAFC62D4;
    v7 = v0[27];
    v8 = *MEMORY[0x1E69E9840];

    return sub_1DAFC4B08();
  }

  else
  {
    v10 = v4;
    v11 = sub_1DB09CE74();

    swift_willThrow();
    v12 = v0[27];
    sub_1DAFC4A2C(v21);
    v22 = v21[0];
    v23 = v21[1];
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_1DB09DE44();

    v24 = 0xD00000000000001FLL;
    v25 = 0x80000001DB0C6EC0;
    swift_getErrorValue();
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[20];
    v16 = sub_1DB09E324();
    MEMORY[0x1E127FE90](v16);

    v17 = v24;
    LOBYTE(v24) = 5;
    CoreODILogger.debug(_:category:)(v17, v25, &v24);

    v18 = v0[30];
    *(v0[27] + 168) = 1;

    v19 = v0[1];
    v20 = *MEMORY[0x1E69E9840];

    return v19();
  }
}

uint64_t sub_1DAFC62D4(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  v7 = *(v3 + 216);
  if (v1)
  {
    v8 = sub_1DAFC6D24;
  }

  else
  {
    v8 = sub_1DAFC6434;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DAFC6434()
{
  v55 = v0;
  v54 = *MEMORY[0x1E69E9840];
  v1 = v0[34];
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DB09DD44())
    {
      v52 = MEMORY[0x1E69E7CC0];
      sub_1DAF5F4FC(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
      }

      v3 = 0;
      v4 = v0[34];
      v5 = v52;
      v46 = v4 & 0xFFFFFFFFFFFFFF8;
      v47 = v4 & 0xC000000000000001;
      while (1)
      {
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v47)
        {
          v7 = MEMORY[0x1E1280530](v3, v1);
        }

        else
        {
          if (v3 >= *(v46 + 16))
          {
            goto LABEL_24;
          }

          v7 = *(v1 + 8 * v3 + 32);
        }

        v8 = v7;
        v9 = v0[27];
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          v10 = v0[27];
          swift_task_reportUnexpectedExecutor();
        }

        v11 = v0[31];
        v0[25] = 0;
        v12 = [v11 getPhoneNumber:v8 error:v0 + 25];
        v13 = v0[25];
        if (!v12)
        {
          v25 = v0[32];
          v26 = v13;

          v27 = sub_1DB09CE74();

          swift_willThrow();

          v28 = v0[27];
          sub_1DAFC4A2C(v49);
          v50 = v49[0];
          v51 = v49[1];
          v52 = 0;
          v53 = 0xE000000000000000;
          sub_1DB09DE44();

          v52 = 0xD00000000000001FLL;
          v53 = 0x80000001DB0C6EC0;
          swift_getErrorValue();
          v30 = v0[18];
          v29 = v0[19];
          v31 = v0[20];
          v32 = sub_1DB09E324();
          MEMORY[0x1E127FE90](v32);

          v33 = v52;
          LOBYTE(v52) = 5;
          CoreODILogger.debug(_:category:)(v33, v53, &v52);

          goto LABEL_20;
        }

        v14 = v12;
        v15 = v13;
        v16 = [v14 number];

        v17 = sub_1DB09D6C4();
        v19 = v18;

        v52 = v5;
        v21 = *(v5 + 16);
        v20 = *(v5 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1DAF5F4FC((v20 > 1), v21 + 1, 1);
          v5 = v52;
        }

        *(v5 + 16) = v21 + 1;
        v22 = v5 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        ++v3;
        if (v6 == i)
        {

          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v5 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v38 = v0[31];
    v48 = v0[32];
    v40 = v0[29];
    v39 = v0[30];
    v41 = v0[27];
    v42 = v0[28];
    v43 = *(v41 + 200);
    *(v41 + 200) = v5;

    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1DAFC6994;
    swift_continuation_init();
    v0[17] = v42;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ED58, &qword_1DB0AC3B0);
    sub_1DB09D994();
    (*(v40 + 32))(boxed_opaque_existential_0, v39, v42);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1DAFC6E80;
    v0[13] = &block_descriptor_78;
    [v38 getPhoneNumberWithCompletion:v48 completion:v0 + 10];
    (*(v40 + 8))(boxed_opaque_existential_0, v42);
    v45 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v23 = v0[32];
    v24 = v0[27];
    sub_1DAFC4A2C(&v50);
    v52 = v50;
    v53 = v51;
    LOBYTE(v49[0]) = 14;
    CoreODILogger.debug(_:category:)(0xD00000000000001ALL, 0x80000001DB0C6DB0, v49);

LABEL_20:

    v34 = v0[30];
    *(v0[27] + 168) = 1;

    v35 = v0[1];
    v36 = *MEMORY[0x1E69E9840];

    return v35();
  }
}

uint64_t sub_1DAFC6994()
{
  v1 = *(*v0 + 216);
  v5 = *v0;
  v2 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DAFC6AB4, v1, 0);
}

uint64_t sub_1DAFC6AB4()
{
  v29 = v0;
  v28 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);
  v3 = *(v0 + 168);
  v4 = [v3 number];
  v5 = sub_1DB09D6C4();
  v7 = v6;

  v8 = v1[27];
  v1[26] = v5;
  v1[27] = v7;

  v9 = v1[25];
  if (!v9 || !v9[2])
  {

    goto LABEL_10;
  }

  if (v5 == v9[4] && v7 == v9[5])
  {
    goto LABEL_11;
  }

  v11 = sub_1DB09E254();

  if ((v11 & 1) == 0)
  {
LABEL_10:
    v12 = *(v0 + 216);
    sub_1DAFC4A2C(&v24);
    v26 = v24;
    v27 = v25;
    LOBYTE(v23[0]) = 5;
    CoreODILogger.info(_:category:)(0xD000000000000033, 0x80000001DB0C6F30, v23);
LABEL_11:
  }

  v13 = *(v0 + 216);
  sub_1DAFC4A2C(v23);
  v24 = v23[0];
  v25 = v23[1];
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1DB09DE44();

  v26 = 0xD000000000000021;
  v27 = 0x80000001DB0C6F70;
  v14 = *(v13 + 200);
  if (v14)
  {
    v15 = *(v14 + 16);
  }

  else
  {
    v15 = -1;
  }

  v16 = *(v0 + 256);
  *(v0 + 208) = v15;
  v17 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v17);

  v18 = v26;
  LOBYTE(v26) = 5;
  CoreODILogger.debug(_:category:)(v18, v27, &v26);

  v19 = *(v0 + 240);
  *(*(v0 + 216) + 168) = 1;

  v20 = *(v0 + 8);
  v21 = *MEMORY[0x1E69E9840];

  return v20();
}

uint64_t sub_1DAFC6D24()
{
  v16 = v0;
  v15 = *MEMORY[0x1E69E9840];

  v1 = *(v0 + 280);
  v2 = *(v0 + 216);
  sub_1DAFC4A2C(v12);
  v12[2] = v12[0];
  v12[3] = v12[1];
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1DB09DE44();

  v13 = 0xD00000000000001FLL;
  v14 = 0x80000001DB0C6EC0;
  swift_getErrorValue();
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v6);

  v7 = v13;
  LOBYTE(v13) = 5;
  CoreODILogger.debug(_:category:)(v7, v14, &v13);

  v8 = *(v0 + 240);
  *(*(v0 + 216) + 168) = 1;

  v9 = *(v0 + 8);
  v10 = *MEMORY[0x1E69E9840];

  return v9();
}

uint64_t sub_1DAFC6E80(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v5 = a2;
  v6 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ED50, &qword_1DB0AC3A8);
  return sub_1DB09D9B4();
}

uint64_t sub_1DAFC6EF4()
{
  v10 = *MEMORY[0x1E69E9840];
  v1[26] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ED00, &qword_1DB0A28F8);
  v1[27] = v2;
  v3 = *(v2 - 8);
  v1[28] = v3;
  v4 = *(v3 + 64) + 15;
  v1[29] = swift_task_alloc();
  v5 = sub_1DB09D1D4();
  v1[30] = v5;
  v6 = *(v5 - 8);
  v1[31] = v6;
  v7 = *(v6 + 64) + 15;
  v1[32] = swift_task_alloc();
  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DAFC7048, v0, 0);
}

uint64_t sub_1DAFC7048()
{
  v60 = v0;
  v59 = *MEMORY[0x1E69E9840];
  v1 = *(v0[26] + 128);
  v0[23] = 0;
  v0[33] = v1;
  v2 = [v1 getUserDefaultVoiceSubscriptionContext_];
  v3 = v0[23];
  if (!v2)
  {
    v17 = v3;
    v18 = sub_1DB09CE74();

    swift_willThrow();
LABEL_7:
    v23 = v0[26];
    sub_1DAFC4A2C(v54);
    v55 = v54[0];
    v56 = v54[1];
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_1DB09DE44();

    v57 = 0xD000000000000018;
    v58 = 0x80000001DB0C6DF0;
    swift_getErrorValue();
    v25 = v0[18];
    v24 = v0[19];
    v26 = v0[20];
    v27 = sub_1DB09E324();
    MEMORY[0x1E127FE90](v27);

    v28 = v57;
    LOBYTE(v57) = 5;
    CoreODILogger.debug(_:category:)(v28, v58, &v57);

LABEL_8:
    v29 = 0;
    goto LABEL_9;
  }

  v4 = v2;
  v5 = v0[32];
  v6 = v3;
  v7 = [v4 uuid];

  sub_1DB09D194();
  v0[25] = 0;
  v8 = [v1 getSubscriptionInfoWithError_];
  v9 = v0[25];
  if (!v8)
  {
    v20 = v0[31];
    v19 = v0[32];
    v21 = v0[30];
    v22 = v9;
    v18 = sub_1DB09CE74();

    swift_willThrow();
    (*(v20 + 8))(v19, v21);
    goto LABEL_7;
  }

  v10 = v8;
  v11 = v9;
  v12 = [v10 subscriptionsInUse];

  v13 = v0[32];
  if (!v12)
  {
    v35 = v0[30];
    v36 = v0[31];
    v37 = v0[26];
    sub_1DAFC4A2C(&v55);
    v57 = v55;
    v58 = v56;
    LOBYTE(v54[0]) = 5;
    CoreODILogger.debug(_:category:)(0xD00000000000001ALL, 0x80000001DB0C6DB0, v54);

    (*(v36 + 8))(v13, v35);
    goto LABEL_8;
  }

  sub_1DAF4062C(0, &unk_1EE3018B8, 0x1E6965090);
  v14 = sub_1DB09D934();

  sub_1DAFC552C(v14);

  v15 = swift_task_alloc();
  *(v15 + 16) = v13;

  v57 = sub_1DAFCD044(v16);
  sub_1DAFC48C8(sub_1DAFCD710, v15);

  v38 = v57;
  v0[34] = v57;

  if (v38 < 0 || (v38 & 0x4000000000000000) != 0)
  {
    v48 = sub_1DB09DD44();
    v0[35] = v48;
    if (v48)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v39 = *(v38 + 16);
    v0[35] = v39;
    if (v39)
    {
LABEL_16:
      v0[36] = MEMORY[0x1E69E7CC0];
      v40 = v0[34];
      if ((v40 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1E1280530](0);
      }

      else
      {
        if (!*(v40 + 16))
        {
          __break(1u);
        }

        v41 = *(v40 + 32);
      }

      v42 = v41;
      v0[37] = v41;
      v0[38] = 1;
      v53 = v0[33];
      v44 = v0[28];
      v43 = v0[29];
      v45 = v0[27];
      v0[2] = v0;
      v0[7] = v0 + 21;
      v0[3] = sub_1DAFC7688;
      swift_continuation_init();
      v0[17] = v45;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
      sub_1DB09D994();
      (*(v44 + 32))(boxed_opaque_existential_0, v43, v45);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1DAFC7CEC;
      v0[13] = &block_descriptor_65;
      [v53 copySIMIdentity:v42 completion:v0 + 10];
      (*(v44 + 8))(boxed_opaque_existential_0, v45);
      v47 = *MEMORY[0x1E69E9840];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }
  }

  v49 = v0[34];
  v51 = v0[31];
  v50 = v0[32];
  v52 = v0[30];

  (*(v51 + 8))(v50, v52);
  v29 = MEMORY[0x1E69E7CC0];
LABEL_9:
  v30 = v0[32];
  v31 = v0[29];

  v32 = v0[1];
  v33 = *MEMORY[0x1E69E9840];

  return v32(v29);
}

uint64_t sub_1DAFC7688()
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 312) = v3;
  if (v3)
  {
    v4 = v1[36];
    v5 = v1[34];
    v6 = v1[26];

    v7 = *MEMORY[0x1E69E9840];
    v8 = sub_1DAFC7B5C;
    v9 = v6;
  }

  else
  {
    v9 = v1[26];
    v10 = *MEMORY[0x1E69E9840];
    v8 = sub_1DAFC7808;
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

uint64_t sub_1DAFC7808()
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 168);
  v2 = *(v0 + 288);
  v3 = *(v0 + 176);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 288);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1DAF72DB4(0, *(v5 + 2) + 1, 1, *(v0 + 288));
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1DAF72DB4((v6 > 1), v7 + 1, 1, v5);
  }

  v8 = *(v0 + 304);
  v9 = *(v0 + 280);

  *(v5 + 2) = v7 + 1;
  v10 = &v5[16 * v7];
  *(v10 + 4) = v1;
  *(v10 + 5) = v3;
  if (v8 == v9)
  {
    v11 = *(v0 + 272);
    v13 = *(v0 + 248);
    v12 = *(v0 + 256);
    v14 = *(v0 + 240);

    (*(v13 + 8))(v12, v14);
    v15 = *(v0 + 256);
    v16 = *(v0 + 232);

    v17 = *(v0 + 8);
    v18 = *MEMORY[0x1E69E9840];

    return v17(v5);
  }

  v20 = *(v0 + 304);
  *(v0 + 288) = v5;
  v21 = *(v0 + 272);
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x1E1280530](v20);
  }

  else
  {
    if (v20 >= *(v21 + 16))
    {
      goto LABEL_18;
    }

    v22 = *(v21 + 8 * v20 + 32);
  }

  v23 = v22;
  *(v0 + 296) = v22;
  *(v0 + 304) = v20 + 1;
  if (__OFADD__(v20, 1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v25 = *(v0 + 224);
  v24 = *(v0 + 232);
  v26 = *(v0 + 216);
  v29 = *(v0 + 264);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_1DAFC7688;
  swift_continuation_init();
  *(v0 + 136) = v26;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v25 + 32))(boxed_opaque_existential_0, v24, v26);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1DAFC7CEC;
  *(v0 + 104) = &block_descriptor_65;
  [v29 copySIMIdentity:v23 completion:v0 + 80];
  (*(v25 + 8))(boxed_opaque_existential_0, v26);
  v28 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1DAFC7B5C()
{
  v22 = v0;
  v21 = *MEMORY[0x1E69E9840];
  v1 = v0[39];
  v2 = v0[37];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  swift_willThrow();

  (*(v4 + 8))(v3, v5);
  v6 = v0[39];
  v7 = v0[26];
  sub_1DAFC4A2C(v18);
  v18[2] = v18[0];
  v18[3] = v18[1];
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1DB09DE44();

  v19 = 0xD000000000000018;
  v20 = 0x80000001DB0C6DF0;
  swift_getErrorValue();
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[20];
  v11 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v11);

  v12 = v19;
  LOBYTE(v19) = 5;
  CoreODILogger.debug(_:category:)(v12, v20, &v19);

  v13 = v0[32];
  v14 = v0[29];

  v15 = v0[1];
  v16 = *MEMORY[0x1E69E9840];

  return v15(0);
}

void sub_1DAFC7CEC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ED00, &qword_1DB0A28F8);
    sub_1DB09D9A4();
  }

  else
  {
    sub_1DB09D6C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ED00, &qword_1DB0A28F8);
    sub_1DB09D9B4();
  }
}

uint64_t sub_1DAFC7D98()
{
  *(v1 + 56) = v0;
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_1DAFC7E28;

  return sub_1DAFC4B08();
}

uint64_t sub_1DAFC7E28(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 56);
  v8 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v6 = sub_1DAFC8284;
  }

  else
  {
    v6 = sub_1DAFC7F54;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DAFC7F54()
{
  v14 = v0;
  v1 = v0[9];
  if (v1)
  {
    v2 = *(v0[7] + 128);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
    sub_1DAFCD4CC(&qword_1EE303990, v4, type metadata accessor for ODIDeviceInfo);
    v5 = swift_task_alloc();
    v0[11] = v5;
    *(v5 + 16) = v1;
    *(v5 + 24) = v2;
    v6 = *(MEMORY[0x1E69E88A0] + 4);
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_1DAFC8138;
    v8 = MEMORY[0x1E69E6158];
    v16 = v3;

    return MEMORY[0x1EEE6DD58](v0 + 6, v8);
  }

  else
  {
    v9 = v0[7];
    sub_1DAFC4A2C(v12);
    v12[2] = v12[0];
    v12[3] = v12[1];
    v13 = 5;
    CoreODILogger.debug(_:category:)(0xD00000000000001ALL, 0x80000001DB0C6DB0, &v13);

    v10 = v0[1];

    return v10(0);
  }
}

uint64_t sub_1DAFC8138()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = sub_1DAFC839C;
  }

  else
  {
    v6 = v2[11];
    v7 = v2[9];
    v8 = v2[7];

    v5 = sub_1DAFC826C;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DAFC8284()
{
  v13 = v0;
  v1 = v0[10];
  v2 = v0[7];
  sub_1DAFC4A2C(v10);
  v10[2] = v10[0];
  v10[3] = v10[1];
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1DB09DE44();

  v11 = 0xD000000000000017;
  v12 = 0x80000001DB0C6D90;
  swift_getErrorValue();
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v6);

  v7 = v11;
  LOBYTE(v11) = 5;
  CoreODILogger.debug(_:category:)(v7, v12, &v11);

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_1DAFC839C()
{
  v15 = v0;
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[13];
  v4 = v0[7];
  sub_1DAFC4A2C(v12);
  v12[2] = v12[0];
  v12[3] = v12[1];
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1DB09DE44();

  v13 = 0xD000000000000017;
  v14 = 0x80000001DB0C6D90;
  swift_getErrorValue();
  v6 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v8 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v8);

  v9 = v13;
  LOBYTE(v13) = 5;
  CoreODILogger.debug(_:category:)(v9, v14, &v13);

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_1DAFC84C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE8, &qword_1DB0AC358);
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFC85DC, 0, 0);
}

uint64_t sub_1DAFC85DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 104);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v25 = *(v3 + 104);
    }

    v5 = sub_1DB09DD44();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_20:
    v26 = *(v3 + 136);
    v27 = **(v3 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
    sub_1DB09DA94();
    *(v3 + 160) = MEMORY[0x1E69E7CC0];
    v28 = sub_1DAF4AA8C(&unk_1EE300A08, &qword_1ECC0ECE8, &qword_1DB0AC358);
    v29 = *(MEMORY[0x1E69E85A8] + 4);
    v30 = swift_task_alloc();
    *(v3 + 168) = v30;
    *v30 = v3;
    v30[1] = sub_1DAFC89B0;
    v31 = *(v3 + 136);
    a2 = *(v3 + 120);
    v5 = v3 + 72;
    a3 = v28;

    return MEMORY[0x1EEE6D8C8](v5, a2, a3);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v35 = **(v3 + 96);
    v36 = v5;
    v34 = v4 & 0xC000000000000001;
    v33 = *(v3 + 104) + 32;
    while (1)
    {
      if (v34)
      {
        v9 = MEMORY[0x1E1280530](v6, *(v3 + 104));
      }

      else
      {
        v9 = *(v33 + 8 * v6);
      }

      v10 = v9;
      v12 = *(v3 + 144);
      v11 = *(v3 + 152);
      v13 = *(v3 + 112);
      v14 = sub_1DB09DA24();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v11, 1, 1, v14);
      v16 = swift_allocObject();
      v16[2] = 0;
      v17 = v16 + 2;
      v16[3] = 0;
      v16[4] = v13;
      v16[5] = v10;
      sub_1DAFCD688(v11, v12);
      LODWORD(v11) = (*(v15 + 48))(v12, 1, v14);
      v18 = v13;
      v19 = v10;
      v20 = *(v3 + 144);
      if (v11 == 1)
      {
        sub_1DAF40AEC(*(v3 + 144), &qword_1ECC0ECE0, &unk_1DB0A21D0);
        if (!*v17)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1DB09DA14();
        (*(v15 + 8))(v20, v14);
        if (!*v17)
        {
LABEL_14:
          v22 = 0;
          v24 = 0;
          goto LABEL_15;
        }
      }

      v21 = v16[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v22 = sub_1DB09D984();
      v24 = v23;
      swift_unknownObjectRelease();
LABEL_15:

      if (v24 | v22)
      {
        v7 = v3 + 16;
        *(v3 + 16) = 0;
        *(v3 + 24) = 0;
        *(v3 + 32) = v22;
        *(v3 + 40) = v24;
      }

      else
      {
        v7 = 0;
      }

      ++v6;
      v8 = *(v3 + 152);
      *(v3 + 48) = 1;
      *(v3 + 56) = v7;
      *(v3 + 64) = v35;
      swift_task_create();

      sub_1DAF40AEC(v8, &qword_1ECC0ECE0, &unk_1DB0A21D0);
      if (v36 == v6)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return MEMORY[0x1EEE6D8C8](v5, a2, a3);
}

uint64_t sub_1DAFC89B0()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = v2[20];
    (*(v2[16] + 8))(v2[17], v2[15]);

    v5 = sub_1DAFC8CC4;
  }

  else
  {
    v5 = sub_1DAFC8AE8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DAFC8AE8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[20];
  if (v1)
  {
    v4 = v0[20];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v0[20];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_1DAF72DB4(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_1DAF72DB4((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = v2;
    *(v9 + 5) = v1;
    v0[20] = v6;
    v10 = sub_1DAF4AA8C(&unk_1EE300A08, &qword_1ECC0ECE8, &qword_1DB0AC358);
    v11 = *(MEMORY[0x1E69E85A8] + 4);
    v12 = swift_task_alloc();
    v0[21] = v12;
    *v12 = v0;
    v12[1] = sub_1DAFC89B0;
    v13 = v0[17];
    v14 = v0[15];

    return MEMORY[0x1EEE6D8C8](v0 + 9, v14, v10);
  }

  else
  {
    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[11];
    (*(v0[16] + 8))(v0[17], v0[15]);
    *v17 = v3;

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1DAFC8CC4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

uint64_t sub_1DAFC8D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[20] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ED00, &qword_1DB0A28F8);
  v5[23] = v6;
  v7 = *(v6 - 8);
  v5[24] = v7;
  v8 = *(v7 + 64) + 15;
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFC8E0C, 0, 0);
}

uint64_t sub_1DAFC8E0C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  v9 = v1[21];
  v12 = v1[22];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1DAFC8FC8;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DAFC7CEC;
  v1[13] = &block_descriptor_9;
  [v9 copyMobileSubscriberIdentity:v12 completion:v4];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1DAFC8FC8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_1DAFC9148;
  }

  else
  {
    v3 = sub_1DAFC90D8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAFC90D8()
{
  v1 = v0[25];
  v3 = v0[19];
  v2 = v0[20];
  *v2 = v0[18];
  v2[1] = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DAFC9148()
{
  v1 = v0[25];
  v2 = v0[26];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[26];

  return v3();
}

uint64_t sub_1DAFC91BC()
{
  v1[32] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ED38, &qword_1DB0AC390);
  v1[33] = v2;
  v3 = *(v2 - 8);
  v1[34] = v3;
  v4 = *(v3 + 64) + 15;
  v1[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFC9288, v0, 0);
}

uint64_t sub_1DAFC9288()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 30;
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];
  v7 = [objc_allocWithZone(MEMORY[0x1E698DCC8]) init];
  v1[36] = v7;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1DAFC9470;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ED40, &unk_1DB0AC398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DAFC9994;
  v1[13] = &block_descriptor_73;
  [v7 appleIDHeadersWithCompletion_];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1DAFC9470()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 296) = v3;
  v4 = *(v1 + 256);
  if (v3)
  {
    v5 = sub_1DAFC991C;
  }

  else
  {
    v5 = sub_1DAFC9590;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DAFC9590()
{
  v1 = *(v0 + 240);

  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = sub_1DAF35210(0x2D656C7070412D58, 0xEE004D2D444D2D49);
      if (v3)
      {
        v4 = *(v0 + 280);
        v5 = (*(v1 + 56) + 16 * v2);
        v6 = *v5;
        v7 = v5[1];

        v8 = *(v0 + 8);

        return v8(v6, v7);
      }
    }
  }

  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v11 + 16))
  {
    v12 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if (v13)
    {
      sub_1DAF409DC(*(v11 + 56) + 32 * v12, v0 + 144);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      if (swift_dynamicCast())
      {
        v10 = *(v0 + 248);
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1DAF72EC0(0, *(v10 + 2) + 1, 1, v10);
  }

  v15 = *(v10 + 2);
  v14 = *(v10 + 3);
  if (v15 >= v14 >> 1)
  {
    v10 = sub_1DAF72EC0((v14 > 1), v15 + 1, 1, v10);
  }

  *(v10 + 2) = v15 + 1;
  v16 = &v10[56 * v15];
  *(v16 + 4) = 0xD000000000000011;
  *(v16 + 5) = 0x80000001DB0C6E80;
  *(v16 + 6) = 0xD000000000000025;
  *(v16 + 7) = 0x80000001DB0C2440;
  *(v16 + 8) = 0x292844494D746567;
  *(v16 + 9) = 0xE800000000000000;
  *(v16 + 10) = 322;
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 176) = v10;
  sub_1DAF40D20((v0 + 176), (v0 + 208));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C((v0 + 208), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v18 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v19 = sub_1DB09D6B4();
  v20 = sub_1DB09D604();
  [v18 initWithDomain:v19 code:-1110 userInfo:v20];

  swift_willThrow();
  v21 = *(v0 + 280);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1DAFC991C()
{
  v1 = v0[36];
  v2 = v0[37];
  swift_willThrow();

  v3 = v0[37];
  v4 = v0[35];

  v5 = v0[1];

  return v5();
}

void sub_1DAFC9994(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ED38, &qword_1DB0AC390);
    sub_1DB09D9A4();
  }

  else
  {
    if (a2)
    {
      sub_1DB09D624();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ED38, &qword_1DB0AC390);
    sub_1DB09D9B4();
  }
}

uint64_t sub_1DAFC9A60()
{
  v21[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 128);
  v21[0] = 0;
  v2 = [v1 getUserDefaultVoiceSubscriptionContext_];
  v3 = v21[0];
  if (!v2)
  {
    v14 = v21[0];
    v15 = sub_1DB09CE74();

    swift_willThrow();
    v16 = v15;
LABEL_6:

    v13 = 0;
    goto LABEL_7;
  }

  v4 = v2;
  v21[0] = 0;
  v5 = v3;
  v6 = [v1 getSIMStatus:v4 error:v21];
  v7 = v21[0];
  if (!v6)
  {
    v17 = v21[0];
    v18 = sub_1DB09CE74();

    swift_willThrow();
    v16 = v18;
    goto LABEL_6;
  }

  v8 = v6;
  v9 = sub_1DB09D6C4();
  v11 = v10;
  v12 = v7;

  v13 = sub_1DAFC9BB4(v9, v11);

LABEL_7:
  v19 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

uint64_t sub_1DAFC9BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB09D6B4();
  v5 = v4;
  v6 = *MEMORY[0x1E6965470];
  if (!*MEMORY[0x1E6965470])
  {
    v10 = v4;
LABEL_5:
    v11 = *MEMORY[0x1E6965420];
    if (*MEMORY[0x1E6965420])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString);
      v7 = v5;
      v12 = v11;
      v13 = sub_1DB09D414();

      if (v13)
      {
        goto LABEL_25;
      }
    }

    v14 = *MEMORY[0x1E6965490];
    if (*MEMORY[0x1E6965490])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString);
      v7 = v5;
      v15 = v14;
      v16 = sub_1DB09D414();

      if (v16)
      {
        goto LABEL_25;
      }
    }

    v17 = *MEMORY[0x1E6965448];
    if (*MEMORY[0x1E6965448])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString);
      v7 = v5;
      v18 = v17;
      v19 = sub_1DB09D414();

      if (v19)
      {
        goto LABEL_25;
      }
    }

    v20 = *MEMORY[0x1E6965450];
    if (*MEMORY[0x1E6965450])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString);
      v7 = v5;
      v21 = v20;
      v22 = sub_1DB09D414();

      if (v22)
      {
        goto LABEL_25;
      }
    }

    v23 = *MEMORY[0x1E6965478];
    if (*MEMORY[0x1E6965478])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString);
      v7 = v5;
      v24 = v23;
      v25 = sub_1DB09D414();

      if (v25)
      {
        goto LABEL_25;
      }
    }

    v26 = *MEMORY[0x1E6965468];
    if (*MEMORY[0x1E6965468])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString);
      v7 = v5;
      v27 = v26;
      v28 = sub_1DB09D414();

      if (v28)
      {
        goto LABEL_25;
      }
    }

    v29 = *MEMORY[0x1E6965418];
    if (*MEMORY[0x1E6965418])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString);
      v7 = v5;
      v30 = v29;
      v31 = sub_1DB09D414();

      if (v31)
      {
        goto LABEL_25;
      }
    }

    v32 = *MEMORY[0x1E6965430];
    if (*MEMORY[0x1E6965430])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString);
      v7 = v5;
      v33 = v32;
      v34 = sub_1DB09D414();

      if (v34)
      {
        goto LABEL_25;
      }
    }

    v35 = *MEMORY[0x1E6965460];
    if (*MEMORY[0x1E6965460])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString);
      v7 = v5;
      v36 = v35;
      v37 = sub_1DB09D414();

      if (v37)
      {
        goto LABEL_25;
      }
    }

    v38 = *MEMORY[0x1E6965458];
    if (*MEMORY[0x1E6965458])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString);
      v7 = v5;
      v39 = v38;
      v40 = sub_1DB09D414();

      if (v40)
      {
        goto LABEL_25;
      }
    }

    v42 = *MEMORY[0x1E6965440];
    if (*MEMORY[0x1E6965440])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString);
      v43 = v5;
      v44 = v42;
      v45 = sub_1DB09D414();

      if (v45)
      {
        goto LABEL_37;
      }
    }

    v46 = *MEMORY[0x1E6965438];
    if (*MEMORY[0x1E6965438])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString);
      v43 = v5;
      v47 = v46;
      v48 = sub_1DB09D414();

      if (v48)
      {
        goto LABEL_37;
      }
    }

    v49 = *MEMORY[0x1E6965488];
    if (*MEMORY[0x1E6965488])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString);
      v43 = v5;
      v50 = v49;
      v51 = sub_1DB09D414();

      if (v51)
      {
        goto LABEL_37;
      }
    }

    v52 = *MEMORY[0x1E6965498];
    if (*MEMORY[0x1E6965498])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString);
      v43 = v5;
      v53 = v52;
      v54 = sub_1DB09D414();

      if (v54)
      {
        goto LABEL_37;
      }
    }

    v55 = *MEMORY[0x1E6965428];
    if (*MEMORY[0x1E6965428])
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString);
      v43 = v5;
      v56 = v55;
      v57 = sub_1DB09D414();

      if (v57)
      {
LABEL_37:

        return 0;
      }
    }

    v58 = *MEMORY[0x1E6965480];
    v59 = *MEMORY[0x1E6965480];

    if (v58)
    {
      type metadata accessor for CFString(0);
      sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString);
      v60 = sub_1DB09D414();

      if (v60)
      {
        return 0;
      }
    }

    else
    {
    }

    sub_1DAFC4A2C(v62);
    v61[2] = v62[0];
    v61[3] = v62[1];
    sub_1DB09DE44();

    v61[0] = 0xD000000000000005;
    v61[1] = 0x80000001DB0C6D70;
    MEMORY[0x1E127FE90](a1, a2);
    CoreODILogger.info(_:category:)(0xD000000000000017, 0x80000001DB0C6D70, v61);

    return 0;
  }

  type metadata accessor for CFString(0);
  sub_1DAFCD4CC(&qword_1EE3009E0, 255, type metadata accessor for CFString);
  v7 = v5;
  v8 = v6;
  v9 = sub_1DB09D414();

  if ((v9 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_25:

  return 1;
}

uint64_t sub_1DAFCA5C4(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DAFCA654, v1, 0);
}

uint64_t sub_1DAFCA654()
{
  v42 = v0;
  v41 = *MEMORY[0x1E69E9840];
  v1 = v0[8];
  v2 = v0[9];
  sub_1DAFC4A2C(&v35);
  v37 = v35;
  v38 = v36;
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000045, 0x80000001DB0C6C60);
  v0[5] = [v1 slotID];
  v3 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v3);

  v4 = v39;
  LOBYTE(v39) = 5;
  CoreODILogger.info(_:category:)(v4, v40, &v39);

  v5 = *(v2 + 128);
  v0[6] = 0;
  v6 = [v5 getPhoneNumber:v1 error:v0 + 6];
  v7 = v0[6];
  if (v6)
  {
    v8 = v6;
    v9 = v0[9];
    v10 = v7;
    v11 = [v8 number];

    v12 = sub_1DB09D6C4();
    v14 = v13;

    v0[10] = v12;
    v0[11] = v14;
    sub_1DAFC4A2C(&v37);
    v16 = v37;
    v15 = v38;
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1DB09DE44();

    v39 = 0xD000000000000016;
    v40 = 0x80000001DB0C6D00;
    MEMORY[0x1E127FE90](v12, v14);
    v18 = v39;
    v17 = v40;
    if (qword_1EE3019A8 != -1)
    {
      swift_once();
    }

    v19 = sub_1DB09D4B4();
    v20 = __swift_project_value_buffer(v19, qword_1EE30A080);

    sub_1DB0163B8(v20, v16, v15, v18, v17);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v21 = swift_task_alloc();
    v0[12] = v21;
    *v21 = v0;
    v21[1] = sub_1DAFCAA50;
    v22 = v0[9];
    v23 = *MEMORY[0x1E69E9840];

    return sub_1DAFC4B08();
  }

  else
  {
    v25 = v7;
    v26 = sub_1DB09CE74();

    swift_willThrow();
    v27 = v0[9];
    sub_1DAFC4A2C(&v35);
    v37 = v35;
    v38 = v36;
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000048, 0x80000001DB0C6CB0);
    swift_getErrorValue();
    v29 = v0[2];
    v28 = v0[3];
    v30 = v0[4];
    v31 = sub_1DB09E324();
    MEMORY[0x1E127FE90](v31);

    v32 = v39;
    LOBYTE(v39) = 5;
    CoreODILogger.error(_:category:)(v32, v40, &v39);

    v33 = v0[1];
    v34 = *MEMORY[0x1E69E9840];

    return v33();
  }
}

uint64_t sub_1DAFCAA50(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v7 = *(v3 + 72);
  if (v1)
  {
    v8 = sub_1DAFCAF8C;
  }

  else
  {
    v8 = sub_1DAFCABB0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DAFCABB0()
{
  v26 = v0;
  v25 = *MEMORY[0x1E69E9840];
  v1 = v0[13];
  v2 = v0[9];
  v3 = *(v2 + 200);
  if (v1)
  {
    v4 = v0[8];
    v5 = *(v2 + 200);

    v6 = sub_1DAFCB0D8(v4, v1);
    v8 = v7;

    if ((v8 & 1) == 0 && (v6 & 0x8000000000000000) == 0)
    {
      if (v3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1DAFCD030(v3);
        }

        if (v6 >= *(v3 + 2))
        {
          __break(1u);
        }

        v9 = v0[11];
        v10 = &v3[16 * v6];
        v11 = *(v10 + 5);
        *(v10 + 4) = v0[10];
        *(v10 + 5) = v9;
      }

      else
      {
        v19 = v0[11];
      }

      v20 = *(v2 + 200);
      *(v2 + 200) = v3;

      v21 = v0[1];
      v22 = *MEMORY[0x1E69E9840];

      return v21();
    }

    v13 = v0[9];
  }

  else
  {
    v12 = *(v2 + 200);
  }

  v0[15] = v3;
  v14 = v0[11];

  sub_1DAFC4A2C(v23);
  v23[2] = v23[0];
  v23[3] = v23[1];
  v24 = 5;
  CoreODILogger.info(_:category:)(0xD000000000000040, 0x80000001DB0C6D20, &v24);

  v15 = swift_task_alloc();
  v0[16] = v15;
  *v15 = v0;
  v15[1] = sub_1DAFCADC4;
  v16 = v0[9];
  v17 = *MEMORY[0x1E69E9840];

  return sub_1DAFC5F3C();
}

uint64_t sub_1DAFCADC4()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DAFCAF00, v2, 0);
}

uint64_t sub_1DAFCAF00()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x1E69E9840];

  return v2();
}

uint64_t sub_1DAFCAF8C()
{
  v16 = v0;
  v15 = *MEMORY[0x1E69E9840];
  v1 = v0[11];

  v2 = v0[14];
  v3 = v0[9];
  sub_1DAFC4A2C(v12);
  v12[2] = v12[0];
  v12[3] = v12[1];
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000048, 0x80000001DB0C6CB0);
  swift_getErrorValue();
  v5 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v7 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v7);

  v8 = v13;
  LOBYTE(v13) = 5;
  CoreODILogger.error(_:category:)(v8, v14, &v13);

  v9 = v0[1];
  v10 = *MEMORY[0x1E69E9840];

  return v9();
}

unint64_t sub_1DAFCB0D8(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_1DB09DD44();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E1280530](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_1DAF4062C(0, &unk_1EE3018B8, 0x1E6965090);
    v8 = sub_1DB09DC34();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t ODIDeviceInfo.deinit()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 144);

  v3 = *(v0 + 160);

  v4 = *(v0 + 192);

  v5 = *(v0 + 200);

  v6 = *(v0 + 216);

  v7 = *(v0 + 224);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ODIDeviceInfo.__deallocating_deinit()
{
  ODIDeviceInfo.deinit();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAFCB298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAFCB2BC, 0, 0);
}

uint64_t sub_1DAFCB2BC()
{
  if (*(v0 + 24))
  {
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_1DAFCB394;
    v2 = *(v0 + 32);

    return sub_1DAFCA5C4(v2);
  }

  else
  {
    **(v0 + 16) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1DAFCB394()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFCB490, 0, 0);
}

void sub_1DAFCB5D4(uint64_t (*a1)(id *, id *), uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = sub_1DB09E1C4();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1DAF4062C(0, &unk_1EE3018B8, 0x1E6965090);
        v9 = sub_1DB09D964();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      sub_1DAFCBA0C(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1DAFCB80C(0, v5, 1, a1);
  }
}

uint64_t sub_1DAFCB6F8(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_1DB09E1C4();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ODNRequestTask();
        v9 = sub_1DB09D964();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
      v11[1] = v8;
      sub_1DAFCC0D8(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1DAFCB90C(0, v5, 1, a1);
  }

  return result;
}

void sub_1DAFCB80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

uint64_t sub_1DAFCB90C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = result - a3;
LABEL_4:
    v16 = v8;
    v17 = a3;
    v10 = *(v7 + 8 * a3);
    v15 = v9;
    while (1)
    {
      v19 = v10;
      v18 = *v8;

      v11 = a4(&v19, &v18);

      if (v5)
      {
        break;
      }

      if (v11)
      {
        if (!v7)
        {
          __break(1u);
          return result;
        }

        v12 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v12;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v17 + 1;
      v8 = v16 + 1;
      v9 = v15 - 1;
      if (v17 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_1DAFCBA0C(void ***a1, uint64_t a2, void **a3, uint64_t (*a4)(id *, id *), uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v7 = v9;
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v97 = v10;
      v7 = *v9;
      v14 = *(*v9 + v13);
      v105 = *(*v9 + v11);
      v15 = v105;
      v106 = v14;
      v16 = v14;
      v17 = v15;
      v100 = a4(&v106, &v105);
      if (v6)
      {

        return;
      }

      v18 = 8 * v11;
      v19 = &v7[v11 + 2];
      v95 = v11;
      while (v97 - 2 != v11)
      {
        v20 = *v19;
        v105 = *(v19 - 1);
        v21 = v105;
        v106 = v20;
        v22 = v20;
        v7 = v21;
        LODWORD(v21) = a4(&v106, &v105);

        ++v11;
        ++v19;
        if ((v100 ^ v21))
        {
          v13 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v97 - 1;
      v13 = v97;
LABEL_11:
      v9 = a3;
      if (v100)
      {
        if (v13 < v95)
        {
          goto LABEL_124;
        }

        v23 = v95 <= v11;
        v11 = v95;
        if (v23)
        {
          v24 = 8 * v13 - 8;
          v25 = v13;
          v26 = v95;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v28 = *&v27[v18];
              *&v27[v18] = *&v27[v24];
              *&v27[v24] = v28;
            }

            ++v26;
            v24 -= 8;
            v18 += 8;
          }

          while (v26 < v25);
        }
      }

      else
      {
        v11 = v95;
      }
    }

    v29 = v9[1];
    if (v13 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_120;
    }

    if (v13 - v11 >= a6)
    {
      goto LABEL_133;
    }

    v30 = (v11 + a6);
    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v30 >= v29)
    {
      v30 = v9[1];
    }

    if (v30 < v11)
    {
      goto LABEL_123;
    }

    if (v13 == v30)
    {
LABEL_133:
      if (v13 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = a5;
      v78 = *v9;
      v7 = (*v9 + 8 * v13 - 8);
      v96 = v11;
      v79 = v11 - v13;
      v92 = v30;
      do
      {
        v101 = v7;
        v103 = v13;
        v80 = v78[v13];
        v98 = v79;
        do
        {
          v105 = *v7;
          v81 = v105;
          v106 = v80;
          v82 = v80;
          v83 = v81;
          v84 = a4(&v106, &v105);
          if (v6)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v7;
          v80 = v7[1];
          *v7 = v80;
          v7[1] = v86;
          --v7;
        }

        while (!__CFADD__(v79++, 1));
        v13 = v103 + 1;
        v7 = v101 + 1;
        v79 = v98 - 1;
      }

      while ((v103 + 1) != v92);
      v13 = v92;
      a5 = v77;
      v9 = a3;
      v11 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1DAF72EDC(0, *(v12 + 2) + 1, 1, v12);
    }

    v32 = *(v12 + 2);
    v31 = *(v12 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v12 = sub_1DAF72EDC((v31 > 1), v32 + 1, 1, v12);
    }

    *(v12 + 2) = v33;
    v34 = &v12[16 * v32];
    *(v34 + 4) = v11;
    *(v34 + 5) = v13;
    v102 = v13;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v102;
    if (v102 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v12[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_106;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_107;
      }

      v47 = &v12[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_109;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_112;
      }

      if (v51 >= v43)
      {
        v69 = &v12[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_118;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v36 = *(v12 + 4);
      v37 = *(v12 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_49:
      if (v39)
      {
        goto LABEL_108;
      }

      v52 = &v12[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v58 = &v12[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_115;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v62 = &v12[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_63:
    if (v57)
    {
      goto LABEL_110;
    }

    v65 = &v12[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_113;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_70:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *&v12[16 * v73 + 32];
    v75 = *&v12[16 * v35 + 40];
    sub_1DAFCC7B4(*v9 + v74, *v9 + *&v12[16 * v35 + 32], *v9 + v75, v7, a4);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v75 < v74)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1DAFCCFB8(v12);
    }

    if (v73 >= *(v12 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v12[16 * v73];
    *(v76 + 4) = v74;
    *(v76 + 5) = v75;
    v107 = v12;
    sub_1DAFCCF2C(v35);
    v12 = v107;
    v33 = *(v107 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  v12 = sub_1DAFCCFB8(v12);
LABEL_92:
  v107 = v12;
  v88 = *(v12 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v89 = *&v12[16 * v88];
      v90 = *&v12[16 * v88 + 24];
      sub_1DAFCC7B4(*v7 + v89, *v7 + *&v12[16 * v88 + 16], *v7 + v90, v9, a4);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1DAFCCFB8(v12);
      }

      if (v88 - 2 >= *(v12 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v12[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v107 = v12;
      sub_1DAFCCF2C(v88 - 1);
      v12 = v107;
      v88 = *(v107 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

uint64_t sub_1DAFCC0D8(uint64_t result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v98 = result;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v7 = v9;
    v9 = *v98;
    if (*v98)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_92;
    }

    goto LABEL_129;
  }

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v14 = *v9;
      v15 = *(*v9 + 8 * v13);
      v16 = v14;
      v7 = *(v14 + 8 * v11);
      v105 = v7;
      v106 = v15;

      v99 = a4(&v106, &v105);
      if (v6)
      {
LABEL_101:
      }

      v101 = a5;

      v90 = v10 - 1;
      v94 = v11;
      v96 = v10;
      v17 = v10 - 2;
      v18 = 8 * v11;
      v19 = (v16 + 8 * v11 + 16);
      while (v17 != v11)
      {
        v7 = *(v19 - 1);
        v20 = *v19;
        v105 = v7;
        v106 = v20;

        v21 = a4(&v106, &v105);

        ++v11;
        ++v19;
        if ((v99 ^ v21))
        {
          v96 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v90;
LABEL_11:
      a5 = v101;
      v9 = a3;
      if (v99)
      {
        if (v96 < v94)
        {
          goto LABEL_123;
        }

        v22 = v94 <= v11;
        v11 = v94;
        if (v22)
        {
          v81 = v96;
          v82 = 8 * v96 - 8;
          v83 = v94;
          do
          {
            if (v83 != --v81)
            {
              v84 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v85 = *(v84 + v18);
              *(v84 + v18) = *(v84 + v82);
              *(v84 + v82) = v85;
            }

            ++v83;
            v82 -= 8;
            v18 += 8;
          }

          while (v83 < v81);
        }

        v13 = v96;
      }

      else
      {
        v11 = v94;
        v13 = v96;
      }
    }

    v23 = v9[1];
    if (v13 >= v23)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_119;
    }

    if (v13 - v11 >= a6)
    {
      goto LABEL_132;
    }

    v24 = v11 + a6;
    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v24 >= v23)
    {
      v24 = v9[1];
    }

    if (v24 < v11)
    {
      goto LABEL_122;
    }

    if (v13 == v24)
    {
LABEL_132:
      if (v13 < v11)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v71 = v9;
      v72 = a5;
      v73 = *v71;
      v74 = *v71 + 8 * v13 - 8;
      v95 = v11;
      v75 = v11 - v13;
      v91 = v24;
      do
      {
        v100 = v74;
        v103 = v13;
        v76 = *(v73 + 8 * v13);
        v97 = v75;
        do
        {
          v7 = *v74;
          v105 = *v74;
          v106 = v76;

          v77 = a4(&v106, &v105);
          if (v6)
          {
            goto LABEL_101;
          }

          v78 = v77;

          if ((v78 & 1) == 0)
          {
            break;
          }

          if (!v73)
          {
            goto LABEL_125;
          }

          v79 = *v74;
          v76 = *(v74 + 8);
          *v74 = v76;
          *(v74 + 8) = v79;
          v74 -= 8;
        }

        while (!__CFADD__(v75++, 1));
        v13 = v103 + 1;
        v74 = v100 + 8;
        v75 = v97 - 1;
      }

      while (v103 + 1 != v91);
      v13 = v91;
      a5 = v72;
      v9 = a3;
      v11 = v95;
      if (v91 < v95)
      {
        goto LABEL_118;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DAF72EDC(0, *(v12 + 2) + 1, 1, v12);
      v12 = result;
    }

    v26 = *(v12 + 2);
    v25 = *(v12 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      result = sub_1DAF72EDC((v25 > 1), v26 + 1, 1, v12);
      v12 = result;
    }

    *(v12 + 2) = v27;
    v28 = &v12[16 * v26];
    *(v28 + 4) = v11;
    *(v28 + 5) = v13;
    v7 = *v98;
    if (!*v98)
    {
      goto LABEL_128;
    }

    v102 = v13;
    if (v26)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v102;
    if (v102 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v29 = v27 - 1;
    if (v27 >= 4)
    {
      v34 = &v12[16 * v27 + 32];
      v35 = *(v34 - 64);
      v36 = *(v34 - 56);
      v40 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      if (v40)
      {
        goto LABEL_105;
      }

      v39 = *(v34 - 48);
      v38 = *(v34 - 40);
      v40 = __OFSUB__(v38, v39);
      v32 = v38 - v39;
      v33 = v40;
      if (v40)
      {
        goto LABEL_106;
      }

      v41 = &v12[16 * v27];
      v43 = *v41;
      v42 = *(v41 + 1);
      v40 = __OFSUB__(v42, v43);
      v44 = v42 - v43;
      if (v40)
      {
        goto LABEL_108;
      }

      v40 = __OFADD__(v32, v44);
      v45 = v32 + v44;
      if (v40)
      {
        goto LABEL_111;
      }

      if (v45 >= v37)
      {
        v63 = &v12[16 * v29 + 32];
        v65 = *v63;
        v64 = *(v63 + 1);
        v40 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v40)
        {
          goto LABEL_117;
        }

        if (v32 < v66)
        {
          v29 = v27 - 2;
        }

        goto LABEL_65;
      }

      goto LABEL_44;
    }

    if (v27 == 3)
    {
      v30 = *(v12 + 4);
      v31 = *(v12 + 5);
      v40 = __OFSUB__(v31, v30);
      v32 = v31 - v30;
      v33 = v40;
LABEL_44:
      if (v33)
      {
        goto LABEL_107;
      }

      v46 = &v12[16 * v27];
      v48 = *v46;
      v47 = *(v46 + 1);
      v49 = __OFSUB__(v47, v48);
      v50 = v47 - v48;
      v51 = v49;
      if (v49)
      {
        goto LABEL_110;
      }

      v52 = &v12[16 * v29 + 32];
      v54 = *v52;
      v53 = *(v52 + 1);
      v40 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v40)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v50, v55))
      {
        goto LABEL_114;
      }

      if (v50 + v55 >= v32)
      {
        if (v32 < v55)
        {
          v29 = v27 - 2;
        }

        goto LABEL_65;
      }

      goto LABEL_58;
    }

    v56 = &v12[16 * v27];
    v58 = *v56;
    v57 = *(v56 + 1);
    v40 = __OFSUB__(v57, v58);
    v50 = v57 - v58;
    v51 = v40;
LABEL_58:
    if (v51)
    {
      goto LABEL_109;
    }

    v59 = &v12[16 * v29];
    v61 = *(v59 + 4);
    v60 = *(v59 + 5);
    v40 = __OFSUB__(v60, v61);
    v62 = v60 - v61;
    if (v40)
    {
      goto LABEL_112;
    }

    if (v62 < v50)
    {
      goto LABEL_3;
    }

LABEL_65:
    v67 = v29 - 1;
    if (v29 - 1 >= v27)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_124;
    }

    v68 = *&v12[16 * v67 + 32];
    v69 = *&v12[16 * v29 + 40];
    sub_1DAFCCB7C((*v9 + 8 * v68), (*v9 + 8 * *&v12[16 * v29 + 32]), (*v9 + 8 * v69), v7, a4);
    if (v6)
    {
    }

    if (v69 < v68)
    {
      goto LABEL_103;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1DAFCCFB8(v12);
    }

    if (v67 >= *(v12 + 2))
    {
      goto LABEL_104;
    }

    v70 = &v12[16 * v67];
    *(v70 + 4) = v68;
    *(v70 + 5) = v69;
    v107 = v12;
    result = sub_1DAFCCF2C(v29);
    v12 = v107;
    v27 = *(v107 + 2);
    if (v27 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  result = sub_1DAFCCFB8(v12);
  v12 = result;
LABEL_92:
  v107 = v12;
  v86 = *(v12 + 2);
  if (v86 < 2)
  {
  }

  while (*v7)
  {
    v87 = *&v12[16 * v86];
    v88 = *&v12[16 * v86 + 24];
    sub_1DAFCCB7C((*v7 + 8 * v87), (*v7 + 8 * *&v12[16 * v86 + 16]), (*v7 + 8 * v88), v9, a4);
    if (v6)
    {
    }

    if (v88 < v87)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1DAFCCFB8(v12);
    }

    if (v86 - 2 >= *(v12 + 2))
    {
      goto LABEL_116;
    }

    v89 = &v12[16 * v86];
    *v89 = v87;
    *(v89 + 1) = v88;
    v107 = v12;
    result = sub_1DAFCCF2C(v86 - 1);
    v12 = v107;
    v86 = *(v107 + 2);
    if (v86 <= 1)
    {
    }
  }

LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

uint64_t sub_1DAFCC7B4(id *__src, id *a2, id *a3, uint64_t __dst, uint64_t (*a5)(id *, id *))
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = __dst;
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v52 = &v14[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_51;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = v6;
      v54 = *v6;
      v17 = v14;
      v53 = *v14;
      v18 = v53;
      v19 = v54;
      v20 = v18;
      v21 = a5(&v54, &v53);
      if (__dsta)
      {

        v43 = &v52[-v17 + 7];
        if (&v52[-v17] >= 0)
        {
          v43 = &v52[-v17];
        }

        if (v7 < v17 || v7 >= v17 + (v43 & 0xFFFFFFFFFFFFFFF8) || v7 != v17)
        {
          v42 = 8 * (v43 >> 3);
          v41 = v7;
          v40 = v17;
          goto LABEL_57;
        }

        return 1;
      }

      v22 = v21;

      __dsta = 0;
      if (v22)
      {
        break;
      }

      v15 = v17;
      v14 = (v17 + 8);
      v6 = v16;
      if (v7 != v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v14 >= v52)
      {
        goto LABEL_10;
      }
    }

    v15 = v16;
    v6 = v16 + 1;
    v14 = v17;
    if (v7 == v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v13] <= __dst)
  {
    v23 = __dst;
    memmove(__dst, a2, 8 * v13);
    __dst = v23;
  }

  __srca = __dst;
  v52 = (__dst + 8 * v13);
  if (v11 < 8)
  {
    v14 = __dst;
  }

  else
  {
    v24 = __dsta;
    if (v6 <= v7)
    {
      v14 = __dst;
    }

    else
    {
      v25 = -__dst;
      v46 = -__dst;
      v47 = v7;
      while (2)
      {
        v26 = v24;
        __dstb = v6;
        v27 = v6 - 1;
        v28 = v52;
        v29 = &v52[v25];
        --v5;
        while (1)
        {
          v30 = *--v28;
          v54 = v30;
          v31 = v27;
          v53 = *v27;
          v32 = v53;
          v33 = v30;
          v34 = v32;
          v35 = a5(&v54, &v53);
          if (v26)
          {

            if (v29 >= 0)
            {
              v38 = v29;
            }

            else
            {
              v38 = v29 + 7;
            }

            v39 = v38 >> 3;
            v40 = __srca;
            v41 = __dstb;
            if (__dstb < __srca || __dstb >= (__srca + (v38 & 0xFFFFFFFFFFFFFFF8)))
            {
              memmove(__dstb, __srca, 8 * v39);
              return 1;
            }

            if (__dstb == __srca)
            {
              return 1;
            }

            v42 = 8 * v39;
            goto LABEL_57;
          }

          v36 = v35;

          v37 = (v5 + 1);
          if (v36)
          {
            break;
          }

          v27 = v31;
          if (v37 != v52)
          {
            *v5 = *v28;
          }

          v29 -= 8;
          --v5;
          v52 = v28;
          if (v28 <= __srca)
          {
            v52 = v28;
            v6 = __dstb;
            v14 = __srca;
            goto LABEL_51;
          }
        }

        v6 = v31;
        if (v37 != __dstb)
        {
          *v5 = *v31;
        }

        v14 = __srca;
        v24 = 0;
        if (v52 > __srca)
        {
          v25 = v46;
          if (v31 > v47)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_51:
  v44 = v52 - v14 + 7;
  if (v52 - v14 >= 0)
  {
    v44 = v52 - v14;
  }

  if (v6 < v14 || v6 >= &v14[v44 & 0xFFFFFFFFFFFFFFF8] || v6 != v14)
  {
    v42 = 8 * (v44 >> 3);
    v41 = v6;
    v40 = v14;
LABEL_57:
    memmove(v41, v40, v42);
  }

  return 1;
}

uint64_t sub_1DAFCCB7C(char *__dst, char *a2, char *a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v6 = a3;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v9 = a2 - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != a2 || &a2[8 * v13] <= a4)
    {
      v21 = a2;
      v22 = a4;
      memmove(a4, a2, 8 * v13);
      a4 = v22;
      a2 = v21;
    }

    v40 = a4;
    v42 = (a4 + 8 * v13);
    if (v11 < 8 || a2 <= v7)
    {
LABEL_53:
      v15 = v40;
      goto LABEL_54;
    }

    v23 = -a4;
    v37 = -a4;
    while (1)
    {
      v38 = a2;
      v39 = a2 - 8;
      v24 = v42;
      v25 = &v42[v23];
      v6 -= 8;
      while (1)
      {
        v26 = *(v24 - 1);
        v24 -= 8;
        v44 = v26;
        v43 = *v39;

        v27 = a5(&v44, &v43);
        if (v5)
        {

          if (v25 >= 0)
          {
            v33 = v25;
          }

          else
          {
            v33 = v25 + 7;
          }

          v34 = v40;
          v32 = v38;
          if (v38 >= v40 && v38 < v40 + (v33 & 0xFFFFFFFFFFFFFFF8) && v38 == v40)
          {
            return 1;
          }

          v31 = 8 * (v33 >> 3);
          goto LABEL_61;
        }

        v28 = v27;

        v29 = v6 + 8;
        if (v28)
        {
          break;
        }

        if (v29 != v42)
        {
          *v6 = *v24;
        }

        v25 -= 8;
        v6 -= 8;
        v42 = v24;
        if (v24 <= v40)
        {
          v42 = v24;
          a2 = v38;
          goto LABEL_53;
        }
      }

      a2 = v39;
      if (v29 != v38)
      {
        *v6 = *v39;
      }

      v15 = v40;
      v23 = v37;
      if (v42 <= v40 || v39 <= v7)
      {
LABEL_54:
        v35 = v42 - v15 + 7;
        if (v42 - v15 >= 0)
        {
          v35 = v42 - v15;
        }

        if (a2 >= v15 && a2 < &v15[v35 & 0xFFFFFFFFFFFFFFF8] && a2 == v15)
        {
          return 1;
        }

        v31 = 8 * (v35 >> 3);
        v32 = a2;
LABEL_60:
        v34 = v15;
LABEL_61:
        memmove(v32, v34, v31);
        return 1;
      }
    }
  }

  v14 = a2;
  v15 = a4;
  if (a4 != __dst || &__dst[8 * v10] <= a4)
  {
    memmove(a4, __dst, 8 * v10);
  }

  v42 = &v15[8 * v10];
  if (v8 < 8 || v14 >= v6)
  {
LABEL_21:
    a2 = v7;
    goto LABEL_54;
  }

  v16 = v14;
  while (1)
  {
    v44 = *v16;
    v43 = *v15;

    v17 = a5(&v44, &v43);
    if (v5)
    {
      break;
    }

    v18 = v17;

    if ((v18 & 1) == 0)
    {
      v19 = v15;
      v20 = v7 == v15;
      v15 += 8;
      if (v20)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v7 = *v19;
      goto LABEL_19;
    }

    v19 = v16;
    v20 = v7 == v16;
    v16 += 8;
    if (!v20)
    {
      goto LABEL_18;
    }

LABEL_19:
    v7 += 8;
    if (v15 >= v42 || v16 >= v6)
    {
      goto LABEL_21;
    }
  }

  v30 = v42 - v15 + 7;
  if (v42 - v15 >= 0)
  {
    v30 = v42 - v15;
  }

  if (v7 < v15 || v7 >= &v15[v30 & 0xFFFFFFFFFFFFFFF8] || v7 != v15)
  {
    v31 = 8 * (v30 >> 3);
    v32 = v7;
    goto LABEL_60;
  }

  return 1;
}

uint64_t sub_1DAFCCF2C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DAFCCFB8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1DAFCCFCC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1DB09DD44();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1DB09DE74();
}

uint64_t sub_1DAFCD044(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1DB09DD44();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1DAFF7F70(v3, 0);
  sub_1DAFCD0D8(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1DAFCD0D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1DB09DD44();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1DB09DD44();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1DAF4AA8C(&qword_1ECC0ED18, &qword_1ECC0ED10, &qword_1DB0AC378);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ED10, &qword_1DB0AC378);
            v9 = sub_1DAFCD28C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1DAF4062C(0, &unk_1EE3018B8, 0x1E6965090);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1DAFCD28C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E1280530](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1DAFCD30C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAFCD328(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB09E254() & 1;
  }
}

uint64_t sub_1DAFCD40C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF62CC4;

  return sub_1DAFCB298(a1, v4, v5, v7, v6);
}

uint64_t sub_1DAFCD4CC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAFCD514(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DAF63DEC;

  return sub_1DAFC84C8(a1, a2, v7, v6);
}

uint64_t sub_1DAFCD5C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF62CC4;

  return sub_1DAFC8D3C(a1, v4, v5, v7, v6);
}

uint64_t sub_1DAFCD688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::String_optional __swiftcall ODIAssessmentResult.trainingSignalID()()
{
  v1 = v0;
  v2 = type metadata accessor for ODIAssessmentResult(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ODIAssessment(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DAF6F9BC(v1, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DAFCD910(v6, type metadata accessor for ODIAssessmentResult);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    sub_1DAFCD8AC(v6, v11);
    v12 = *v11;
    v13 = v11[1];

    sub_1DAFCD910(v11, type metadata accessor for ODIAssessment);
  }

  v14 = v12;
  v15 = v13;
  result.value._object = v15;
  result.value._countAndFlagsBits = v14;
  return result;
}