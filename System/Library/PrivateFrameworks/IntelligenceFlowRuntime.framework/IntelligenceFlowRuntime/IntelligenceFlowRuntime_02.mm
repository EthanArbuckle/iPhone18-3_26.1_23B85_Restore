uint64_t sub_22BB679CC()
{
  v3 = *(v0 + 16);
  result = v1;
  v5 = *(v2 - 160);
  return result;
}

uint64_t sub_22BB67A00()
{
  sub_22BB35F54();
  v2 = v1(0);
  sub_22BB2F330(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BB31F54();
  v6(v5);
  return v0;
}

uint64_t sub_22BB67A6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22BDB52C4();
  v9 = sub_22BB314BC(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_22BBE6DE0(&qword_27D8E6410, &unk_22BDCE250);
    result = sub_22BB314BC(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return sub_22BB336D0(v12, a2, a2, v11);
}

uint64_t sub_22BB67B60(uint64_t a1, void (*a2)(_BYTE *), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_22BDBB814();
  a2(v10);
  v7 = sub_22BDBB834();

  return a3(a1, v7);
}

unint64_t sub_22BB67BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB5F24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = ~(-1 << *(v2 + 32));
  for (i = a2 & v7; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v7)
  {
    v9 = *(v2 + 48);
    v10 = *(v5 + 72);
    sub_22BB67A00();
    v11 = sub_22BDB43B4();
    sub_22BB67E48();
    if (v11)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_22BB67D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BDB52C4();
  v7 = sub_22BB314BC(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return sub_22BB3AA28(v10, a2, v9);
  }

  v11 = sub_22BBE6DE0(&qword_27D8E6410, &unk_22BDCE250);
  v12 = sub_22BB314BC(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_22BB67E48()
{
  v1 = sub_22BB35760();
  v3 = v2(v1);
  sub_22BB2F330(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void sub_22BB67EF4()
{
  sub_22BB30F94();
  sub_22BB8ACCC();
  v5 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v5);
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BB3A4F8();
  sub_22BB369A8(v9);
  sub_22BB322B0();
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v3;
  v11 = swift_allocObject();
  sub_22BB95BD8(v11);
  v12 = v0;
  sub_22BB352C4(v2, v1);
  sub_22BDBAFB4();

  sub_22BB39390();
  sub_22BB314EC();
}

uint64_t sub_22BB68010()
{
  sub_22BB2F35C();
  sub_22BB35210();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_22BB31BAC(v2);
  *v3 = v4;
  v3[1] = sub_22BB3C48C;
  v5 = sub_22BB37834();

  return sub_22BB680A8(v5, v6, v7, v1);
}

uint64_t sub_22BB680A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_22BDB5764();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB6816C, 0, 0);
}

uint64_t sub_22BB6816C()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = *(v0[4] + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_jsonDecoder);
  sub_22BB39B40(&qword_28142DCD0, MEMORY[0x277D1CE68]);
  sub_22BB3134C();
  sub_22BDB4114();
  v6 = *(v0[4] + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_sessionManager);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_22BB9510C;
  sub_22BB3487C(v0[9]);
  sub_22BB3478C();

  return sub_22BB516FC();
}

uint64_t sub_22BB682A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_22BB68328()
{
  v0 = sub_22BDB8774();
  v1 = sub_22BB30444(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  v8 = v7 - v6;
  v9 = sub_22BDB77D4();
  v10 = sub_22BB30444(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  v17 = v16 - v15;
  sub_22BDB6384();

  v18 = sub_22BDB77C4();
  v19 = sub_22BDBB104();

  if (os_log_type_enabled(v18, v19))
  {
    v28 = v9;
    v20 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v20 = 136315138;
    v21 = sub_22BDB9C34();
    v23 = v3;
    v24 = v0;
    v25 = sub_22BB32EE0(v21, v22, &v29);

    *(v20 + 4) = v25;
    v0 = v24;
    v3 = v23;
    _os_log_impl(&dword_22BB2C000, v18, v19, "CurareFSServiceSubscriber received event: %s", v20, 0xCu);
    sub_22BB32FA4(v27);
    sub_22BB30AF0();
    sub_22BB30AF0();

    (*(v12 + 8))(v17, v28);
  }

  else
  {

    (*(v12 + 8))(v17, v9);
  }

  sub_22BDB9C44();
  (*(v3 + 8))(v8, v0);
  return sub_22BDB9E14();
}

uint64_t sub_22BB685D8(uint64_t a1)
{
  v2 = sub_22BDB8774();
  v3 = sub_22BB30444(v2);
  v87 = v4;
  v88 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v86 = v8 - v7;
  v9 = sub_22BBE6DE0(&qword_27D8E6A80, &unk_22BDC0E70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v89 = &v79 - v11;
  v12 = sub_22BDB5F24();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_22BB30574();
  v16 = v15 - v14;
  v17 = sub_22BDB77D4();
  v18 = sub_22BB30444(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v79 - v27;
  MEMORY[0x28223BE20](v26);
  sub_22BDB6384();

  v29 = sub_22BDB77C4();
  v30 = sub_22BDBB104();

  v31 = os_log_type_enabled(v29, v30);
  v90 = a1;
  v91 = v25;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v85 = v16;
    v34 = v17;
    v35 = v33;
    v94 = v33;
    *v32 = 136315138;
    v36 = sub_22BDB9C34();
    v38 = sub_22BB32EE0(v36, v37, &v94);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_22BB2C000, v29, v30, "TaskStepLoggingSubscriber received event: %s", v32, 0xCu);
    sub_22BB32FA4(v35);
    v17 = v34;
    v39 = v92;
    v16 = v85;
    sub_22BB30AF0();
    sub_22BB30AF0();

    v40 = sub_22BB322D4();
    (v29)(v40);
  }

  else
  {

    v41 = sub_22BB322D4();
    (v29)(v41);
    v39 = v92;
  }

  sub_22BDB6384();
  v42 = sub_22BDB77C4();
  v43 = sub_22BDBB104();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_22BB2C000, v42, v43, "BiomeLibrarySageDev can not be imported", v44, 2u);
    sub_22BB30AF0();
  }

  (v29)(v28, v17);
  v45 = *(&v39->isa + OBJC_IVAR____TtC23IntelligenceFlowRuntime25TaskStepLoggingSubscriber_biomeSiriExecutionSource);
  if (v45)
  {
    v92 = v29;
    sub_22BB35ABC();
    v84 = v46;
    v85 = v20 + 8;
    sub_22BB38894(v39 + v46, v16, v47);
    v48 = v45;
    v49 = sub_22BDB4374();
    v51 = v50;
    v52 = sub_22BDB43E4();
    v53 = *(v52 - 8);
    v54 = *(v53 + 8);
    v82 = v53 + 8;
    v83 = v54;
    v54(v16, v52);
    v55 = v89;
    sub_22BDB9C54();
    v56 = sub_22BDB4354();
    sub_22BB336D0(v55, 0, 1, v56);
    v57 = objc_allocWithZone(MEMORY[0x277CF1488]);
    v58 = sub_22BB68CB4(v49, v51, 26, 0, 0xE000000000000000, 0, 0xE000000000000000, 0x7361542065676153, 0xE90000000000006BLL, 0, 0xE000000000000000, 0, 0xE000000000000000, v55);
    v89 = v48;
    [v48 sendEvent_];
    v59 = v91;
    sub_22BDB6384();

    v60 = sub_22BDB77C4();
    v61 = sub_22BDBB104();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v94 = v80;
      *v62 = 136315650;
      v93 = 26;
      type metadata accessor for BMSiriExecutionTaskStep(0);
      v63 = sub_22BDBAC14();
      v81 = v58;
      v65 = sub_22BB32EE0(v63, v64, &v94);

      *(v62 + 4) = v65;
      v79 = v17;
      *(v62 + 12) = 2080;
      v66 = v86;
      sub_22BDB9C44();
      v67 = sub_22BDB8764();
      v69 = v68;
      (*(v87 + 8))(v66, v88);
      v70 = sub_22BB32EE0(v67, v69, &v94);

      *(v62 + 14) = v70;
      *(v62 + 22) = 2080;
      sub_22BB35ABC();
      sub_22BB38894(v39 + v84, v16, v71);
      v72 = sub_22BDB4374();
      v74 = v73;
      v83(v16, v52);
      v75 = sub_22BB32EE0(v72, v74, &v94);

      *(v62 + 24) = v75;
      _os_log_impl(&dword_22BB2C000, v60, v61, "#TaskStepLoggingSubscriber - donated taskstep %s for %s event to BIOME for taskId: %s", v62, 0x20u);
      swift_arrayDestroy();
      sub_22BB30AF0();
      sub_22BB30AF0();

      v76 = v91;
      v77 = v79;
    }

    else
    {

      v76 = v59;
      v77 = v17;
    }

    (v92)(v76, v77);
  }

  return sub_22BDB9E14();
}

id sub_22BB68CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2)
  {
    v17 = sub_22BDBABE4();

    if (a5)
    {
LABEL_3:
      v18 = sub_22BDBABE4();

      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_6:
  if (a7)
  {
    v19 = sub_22BDBABE4();
  }

  else
  {
    v19 = 0;
  }

  if (a9)
  {
    v20 = sub_22BDBABE4();
  }

  else
  {
    v20 = 0;
  }

  if (a11)
  {
    v21 = sub_22BDBABE4();

    if (a13)
    {
LABEL_14:
      v22 = sub_22BDBABE4();

      goto LABEL_17;
    }
  }

  else
  {
    v21 = 0;
    if (a13)
    {
      goto LABEL_14;
    }
  }

  v22 = 0;
LABEL_17:
  v23 = sub_22BDB4354();
  v24 = 0;
  if (sub_22BB3AA28(a14, 1, v23) != 1)
  {
    v24 = sub_22BDB4314();
    (*(*(v23 - 8) + 8))(a14, v23);
  }

  v25 = [v27 initWithTaskId:v17 taskStep:a3 statusReason:v18 slotValue:v19 intentName:v20 appBundleID:v21 interactionID:v22 absoluteTimestamp:v24];

  return v25;
}

uint64_t sub_22BB68ED4(uint64_t a1)
{
  *(a1 + 8) = sub_22BC3599C;
  v3 = v1[123];
  result = v1[62];
  v5 = v1[60];
  v6 = v1[39];
  v7 = *(v2 - 96);
  return result;
}

uint64_t sub_22BB68F34()
{
  v2 = *(v0 - 184);
  v3 = *(v0 - 136);

  return sub_22BDBB5D4();
}

uint64_t sub_22BB68F68()
{
  result = v0 + 56;
  v2 = 1 << *(v0 + 32);
  return result;
}

uint64_t sub_22BB68FA4()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_22BB3052C();
  *v4 = v3;

  sub_22BB2F09C();

  return v5();
}

uint64_t sub_22BB69088(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22BB690EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  sub_22BB30474(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_22BB6914C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BB69194(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22BB69210()
{
  *(v1 + 24) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t sub_22BB69224()
{
  result = v0[91];
  v2 = v0[90];
  v3 = v0[89];
  return result;
}

uint64_t sub_22BB69234(uint64_t a1)
{

  return sub_22BB336D0(v2, v1, 1, a1);
}

uint64_t sub_22BB69254(uint64_t result)
{
  v2 = *(v1 - 112);
  *(v1 - 72) = result;
  return result;
}

uint64_t sub_22BB69284()
{

  return _s23StatementStepEvaluationOMa(0);
}

uint64_t sub_22BB692AC()
{
  v3 = *(v1 - 104);

  return sub_22BB336D0(v3, 1, 1, v0);
}

uint64_t sub_22BB692F8(uint64_t a1)
{
  *(a1 + 8) = sub_22BD3A9D8;
  v2 = *(v1 + 104);
  return *(v1 + 96);
}

uint64_t sub_22BB69338()
{

  return sub_22BD741AC(v0, v1, v2, v3);
}

uint64_t sub_22BB69358()
{

  return swift_getAssociatedTypeWitness();
}

void sub_22BB69380(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_22BB693A0()
{
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);

  return swift_slowAlloc();
}

uint64_t sub_22BB693C8()
{
  sub_22BB2F35C();
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[2];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *v3 = v1;
  v3[1] = OpaqueTypeConformance2;

  sub_22BB2F09C();

  return v5();
}

uint64_t sub_22BB69458()
{
  sub_22BB2F35C();
  v1 = sub_22BB3B470();
  v2(v1);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();

  v4 = *(v0 + 8);
  v5 = *(v0 + 128);

  return v4(v5, OpaqueTypeConformance2);
}

id sub_22BB69508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22BC151E4(a1, a2, a3, a4, 0, 0, v4);
}

uint64_t sub_22BB69568()
{
  v2 = *(v0 - 72);

  return swift_arrayDestroy();
}

void sub_22BB69588()
{
  v2 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v0[22] = v1;
}

uint64_t sub_22BB69598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;

  return sub_22BDBA354();
}

void sub_22BB695D0()
{

  JUMPOUT(0x2318A4C40);
}

uint64_t sub_22BB695F8()
{
  sub_22BB2F35C();
  sub_22BB34764();
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v1 + 192);
  *v4 = *v2;
  *(v3 + 200) = v0;

  sub_22BB33218();
  v7 = *(v6 + 120);
  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BB69718()
{
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v5 = v0[29];
  v7 = v0[25];
  v6 = v0[26];
}

uint64_t sub_22BB69760(uint64_t result)
{
  *(result + 16) = sub_22BD5F660;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB69778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 104) = v2;
  *(v3 - 96) = a2;
  *(v3 - 128) = a1;

  return sub_22BDB9B74();
}

uint64_t sub_22BB697C8()
{
  sub_22BB2F35C();
  if (*(v0 + 208) == 1)
  {
    v2 = *(v0 + 168);
    v1 = *(v0 + 176);
    v3 = *(v0 + 160);

    sub_22BB2F09C();

    return v4();
  }

  else
  {
    v6 = *(v0 + 184);
    v7 = *(v0 + 120);
    v8 = *(MEMORY[0x277D85818] + 4);
    v9 = swift_task_alloc();
    *(v0 + 192) = v9;
    sub_22BBE6DE0(&qword_27D8E62B8, &qword_22BDCDD50);
    *v9 = v0;
    v10 = sub_22BB3A2C4();

    return MEMORY[0x2822004D0](v10);
  }
}

uint64_t sub_22BB698E8()
{
  v1 = sub_22BB35760();
  v3 = v2(v1);
  sub_22BB31F70(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22BB69974(uint64_t result, __n128 a2, __n128 a3)
{
  *(result + 16) = v3;
  *(result + 24) = a3;
  *(result + 40) = a2;
  return result;
}

uint64_t sub_22BB6999C()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

void sub_22BB699FC()
{
  v1 = v0[76];
  v2 = v0[75];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[69];
  v8 = v0[68];
  v9 = v0[65];
  v10 = v0[60];
  v11 = v0[57];
  v12 = v0[56];
  v13 = v0[55];
  v3 = v0[53];
  v14 = v0[50];
}

uint64_t sub_22BB69A90()
{
  v2 = *(v0 - 344);

  return sub_22BDB8784();
}

uint64_t sub_22BB69AB0()
{

  return sub_22BB344AC(v0, _s24StatementExecutionResultOMa);
}

BOOL sub_22BB69B08(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_22BB69B34()
{
  v2 = v0[555];
  v3 = v0[432];
  v4 = v0[429];
  *(v1 - 160) = v0[428];
  *(v1 - 152) = v3;
  v5 = *(*(v1 - 144) + 3336);
  v6 = *(*(v1 - 144) + 3216);
}

void sub_22BB69B5C()
{
  v1 = v0[102];
  v2 = v0[100];
  v3 = v0[95];
  v4 = v0[88];
  v5 = v0[87];
  v6 = v0[86];
}

uint64_t sub_22BB69B78()
{
}

uint64_t sub_22BB69B9C@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_22BB8AE8C(v2, &a2 - a1, v3, v4);
}

uint64_t sub_22BB69BE0()
{

  return sub_22BDBABA4();
}

void sub_22BB69C08()
{
  sub_22BB32FA4(v0);

  JUMPOUT(0x2318A6080);
}

double sub_22BB69C3C(uint64_t a1)
{

  return sub_22BD813A8(v1, a1);
}

uint64_t sub_22BB69C9C(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

void sub_22BB69CB4()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

uint64_t sub_22BB69D0C()
{
  v2 = sub_22BDB4C64();
  sub_22BB30418();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v10 = v9 - v8;
  v11 = sub_22BDBA014();
  sub_22BB30418();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v19 = v18 - v17;
  v20 = *v0;
  sub_22BDBA2E4();
  result = sub_22BDBA2D4();
  if (!v1)
  {
    v34 = v13;
    sub_22BDB9394();
    sub_22BDB9384();
    v22 = *(v20 + 16);
    if (v22)
    {
      v32 = v11;
      v33 = v10;
      v35 = MEMORY[0x277D84F90];
      sub_22BB69CB4();
      v24 = *(v4 + 16);
      v23 = v4 + 16;
      v25 = v20 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
      v30 = *(v23 + 56);
      v31 = v24;
      v29 = (v23 - 8);
      do
      {
        v26 = v23;
        v31(v33, v25, v2);
        sub_22BDB4C44();
        v27 = v2;
        (*v29)(v33, v2);
        v28 = *(v35 + 16);
        if (v28 >= *(v35 + 24) >> 1)
        {
          sub_22BB69CB4();
        }

        *(v35 + 16) = v28 + 1;
        (*(v34 + 32))(v35 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v28, v19, v32);
        v25 += v30;
        --v22;
        v2 = v27;
        v23 = v26;
      }

      while (v22);
    }

    return sub_22BDB9B74();
  }

  return result;
}

void *sub_22BB69FEC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t type metadata accessor for CurareFSServiceSubscriber()
{
  result = qword_281429C78;
  if (!qword_281429C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BB6A0A0()
{
  v2 = *(v0 + 104);
  result = v1;
  v4 = LODWORD(STACK[0x478]);
  return result;
}

uint64_t sub_22BB6A0B4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22BB6A1A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22BB2F330(v4);
  v6 = *(v5 + 16);
  v7 = sub_22BB31F54();
  v8(v7);
  return a2;
}

uint64_t sub_22BB6A204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BB2F330(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BB6A264()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 552);
  v3 = *v0;
  sub_22BB3052C();
  *v4 = v3;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22BB6A360@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22BDB77D4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BDB7594();
  sub_22BB8C540(qword_281428AE0, 255, MEMORY[0x277D20308]);
  sub_22BDB75A4();
  a1[3] = &type metadata for BiomeIFRequestTelemetrySink;
  a1[4] = &off_283F80500;
  v4 = swift_allocObject();
  *a1 = v4;
  return sub_22BB382E8(&v6, v4 + 16);
}

uint64_t sub_22BB6A5FC()
{
  sub_22BB32FA4((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22BB6A634()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB3053C();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  sub_22BB3052C();
  *v7 = v6;
  *(v8 + 104) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BB6A730()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 56);
  *v1 = *(v0 + 88);
  sub_22BB382E8((v0 + 16), (v1 + 1));
  sub_22BB360FC();

  return v2();
}

uint64_t sub_22BB6A794()
{
  sub_22BB34E84();
  if (*(v0 + 144))
  {
    v1 = *(v0 + 112);
    sub_22BB382E8((v0 + 120), v0 + 280);
    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(v0 + 544);
      if (v1 < *(v2 + 16))
      {
        sub_22BB385F4(v0 + 280, v2 + 40 * v1 + 32, &qword_27D8E6608, &qword_22BDCE580);
        v3 = *(MEMORY[0x277D85828] + 4);
        swift_task_alloc();
        sub_22BB30B34();
        *(v0 + 552) = v4;
        *v4 = v5;
        v4[1] = sub_22BB6A264;
        v6 = *(v0 + 472);
        v7 = *(v0 + 456);
        sub_22BB9743C();

        return MEMORY[0x2822004E8]();
      }
    }

    __break(1u);
    return MEMORY[0x2822004E8]();
  }

  v8 = *(v0 + 544);
  (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = MEMORY[0x277D84F90];
    v11 = 32;
    do
    {
      v12 = *(v0 + 544);
      sub_22BB9741C();
      sub_22BB3CD70(v13, v14, v15, v16);
      *(v0 + 272) = *(v0 + 192);
      v17 = *(v0 + 176);
      *(v0 + 240) = *(v0 + 160);
      *(v0 + 256) = v17;
      if (*(v0 + 264))
      {
        sub_22BB382E8((v0 + 240), v0 + 200);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = *(v10 + 16);
          sub_22BB305BC();
          sub_22BB6AA38();
          v10 = v21;
        }

        v19 = *(v10 + 16);
        v18 = *(v10 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_22BB2F158(v18);
          sub_22BB6AA38();
          v10 = v22;
        }

        *(v10 + 16) = v19 + 1;
        sub_22BB382E8((v0 + 200), v10 + 40 * v19 + 32);
      }

      else
      {
        sub_22BB325EC(v0 + 240, &qword_27D8E6608, &qword_22BDCE580);
      }

      v11 += 40;
      --v9;
    }

    while (v9);
    v23 = *(v0 + 544);
  }

  else
  {
    v24 = *(v0 + 544);

    v10 = MEMORY[0x277D84F90];
  }

  v25 = *(v0 + 536);
  v26 = *(v0 + 528);
  v27 = *(v0 + 520);
  v28 = *(v0 + 496);
  v29 = *(v0 + 472);

  sub_22BB39738();

  return v30(v10);
}

void sub_22BB6AA38()
{
  sub_22BB69BFC();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22BB3665C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22BB31E6C(v5);
    if (v2)
    {
      sub_22BBE6DE0(&qword_27D8E6AC0, &unk_22BDD0310);
      v8 = sub_22BB3A348();
      sub_22BB3A7D8(v8);
      sub_22BB3B4C4(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_22BB328BC();
        sub_22BD2F750(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22BBE6DE0(&qword_27D8E64C0, &qword_22BDCE3C8);
    sub_22BB312FC();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_22BB368F8();
  if (!v6)
  {
    sub_22BB30DA4();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_22BB6AB00()
{
  sub_22BB2F35C();
  v3 = v2;
  sub_22BB32690();
  v5 = v4;
  sub_22BB33FF4();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_22BB3052C();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_22BB6ABF8()
{
  sub_22BB2F35C();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 512);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  v3[65] = v0;

  if (v0)
  {
    v9 = v3[63];
    v10 = v3[10];
    v11 = v3[5];
    v12 = v3[6];
  }

  else
  {
    v13 = v3[63];
    v14 = v3[10];
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22BB6AD34()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22BB6AD6C()
{
  sub_22BC5496C();
  v58 = v0[60];
  v59 = v0[61];
  v48 = v0[55];
  v49 = v0[56];
  v1 = v0[54];
  v2 = v0[49];
  v3 = v0[43];
  v52 = v0[42];
  v53 = v0[44];
  v56 = v0[37];
  v57 = v0[41];
  v4 = v0[33];
  v44 = v0[32];
  v5 = v0[29];
  v60 = v0[30];
  v61 = v0[28];
  v6 = v0[22];
  v7 = v0[20];
  v45 = v0[21];
  v46 = v0[23];
  v8 = v0[18];
  v9 = v0[16];
  v54 = v0[19];
  v55 = v0[17];
  v50 = v0[12];
  v51 = v0[11];
  v10 = v0[9];
  v47 = v0[7];
  sub_22BB32CE8();
  sub_22BB335C0(v11, v2);
  sub_22BBE6DE0(&qword_27D8E65F8, &qword_22BDCE568);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22BDBCBD0;
  *(v12 + 56) = &type metadata for IFRequestTelemetryFilterOnlyPRToExecutorAndRG;
  *(v12 + 64) = &protocol witness table for IFRequestTelemetryFilterOnlyPRToExecutorAndRG;
  SessionPersistenceManager.init(id:transactionStreamFilters:)(v2, v12, v7);
  v13 = v0[5];
  v14 = v0[6];

  sub_22BB34070();
  sub_22BB3A518(v7, v9 + *(v15 + 160));
  v16 = *(v4 + *(v44 + 28));
  sub_22BB34070();
  *(v9 + *(v17 + 192)) = v16;
  sub_22BB34070();
  sub_22BB335C0(v4, v9 + *(v18 + 200));
  sub_22BB34070();
  (*(v6 + 16))(v9 + *(v19 + 128), v46, v45);

  v20 = sub_22BDBAB14();
  sub_22BB707F8();
  v21 = *(v9 + v1);
  *(v9 + v1) = v20;

  sub_22BB34070();
  *(v9 + *(v22 + 120)) = v47;
  sub_22BB34070();
  *(v9 + *(v23 + 184)) = v50;
  sub_22BB34070();
  (*(v3 + 16))(v9 + *(v24 + 168), v53, v52);
  sub_22BB34070();
  v58(v9 + *(v25 + 176), v57, v56);
  (*(v8 + 16))(v54, v51, v55);

  sub_22BBD0DBC();
  sub_22BB34070();
  v27 = v9 + *(v26 + 152);
  *v27 = v28 & 1;
  *(v27 + 1) = v29 & 1;
  *(v27 + 2) = v30 & 1;
  *(v27 + 8) = v31;
  sub_22BDB96A4();
  v32 = sub_22BDB9744();
  v33 = *(v5 + 8);
  v0[66] = v33;
  v0[67] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33(v60, v61);
  v0[8] = v32;
  v34 = sub_22BC54704();
  sub_22BBE6DE0(v34, v35);
  sub_22BB31DE0();
  sub_22BB899C0(v36, &qword_27D8E2F48, &unk_22BDBD950);
  v37 = sub_22BDB90F4();

  sub_22BB34070();
  *(v9 + *(v38 + 144)) = v37;
  sub_22BB3E07C();

  return MEMORY[0x2822009F8](v39, v40, v41);
}

uint64_t SessionPersistenceManager.init(id:transactionStreamFilters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22BDB5664();
  v8 = sub_22BB2F0C8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  v11 = sub_22BDB77D4();
  v12 = sub_22BB30444(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  sub_22BB35D58();
  sub_22BB6A1A8(a1, a3, v15);
  v16 = [BiomeLibrary() IntelligenceFlow];
  sub_22BB371E4();
  swift_unknownObjectRelease();
  v17 = [v3 Transcript];
  swift_unknownObjectRelease();
  v18 = [v17 Datastream];
  sub_22BB371E4();
  swift_unknownObjectRelease();
  v19 = [v3 source];

  v20 = type metadata accessor for SessionPersistenceManager();
  *(a3 + v20[5]) = v19;
  sub_22BDB7594();
  sub_22BBBE8A4(qword_281428AE0, MEMORY[0x277D20308]);
  sub_22BDB75A4();
  sub_22BB6B8A8(a1);
  v21 = swift_allocObject();
  result = sub_22BB382E8(v24, v21 + 16);
  v23 = a3 + v20[6];
  *v23 = v21;
  *(v23 + 8) = *&v24[5];
  *(v23 + 24) = &type metadata for BiomeIFRequestTelemetrySink;
  *(v23 + 32) = &off_283F80500;
  *(a3 + v20[7]) = a2;
  return result;
}

uint64_t sub_22BB6B560()
{
  sub_22BB32FA4((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_22BB6B598()
{

  sub_22BD8EBF4();
}

void *sub_22BB6B5D0()
{
  v2 = v0[6];
  v3 = v0[5];

  return sub_22BB69FEC(v0 + 2, v3);
}

uint64_t sub_22BB6B5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *v16 = v20;
  v16[1] = v17;
  v16[2] = v15;
  v22 = (v16 + v18[6]);
  *v22 = a9;
  v22[1] = a10;
  v23 = (v16 + v18[7]);
  *v23 = a15;
  v23[1] = a11;
  *(v16 + v18[9]) = v19;
  *(v16 + v18[10]) = 0;
  v24 = *(a12 + 40);
}

uint64_t sub_22BB6B650()
{

  return swift_slowAlloc();
}

uint64_t sub_22BB6B66C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_22BB6B6B8()
{
  v2 = *(v0 - 104);

  return sub_22BCE1778();
}

__n128 sub_22BB6B6F0(__n128 *a1)
{
  result = *(v2 - 192);
  a1[1] = result;
  a1[2].n128_u64[0] = sub_22BB89C08;
  a1[2].n128_u64[1] = v1;
  return result;
}

uint64_t sub_22BB6B714()
{
  v1 = *(v0 - 160);
  v2 = *(*(v0 - 168) + 8);
  return *(v0 - 152);
}

unint64_t sub_22BB6B73C()
{
  result = STACK[0x460];
  v1 = STACK[0x458];
  v2 = STACK[0x450];
  v3 = STACK[0x448];
  v4 = STACK[0x440];
  v5 = STACK[0x438];
  return result;
}

uint64_t sub_22BB6B75C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22BBE6DE0(a2, a3);
  sub_22BB30474(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_22BB6B7B8()
{
  result = qword_281428A58;
  if (!qword_281428A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428A58);
  }

  return result;
}

uint64_t sub_22BB6B80C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BB6B854(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22BBEB2E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BB6B8A8(uint64_t a1)
{
  v2 = sub_22BDB5664();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22BB6B904()
{
  result = qword_281428948;
  if (!qword_281428948)
  {
    sub_22BBEB2E0(&qword_27D8E3CD8, &qword_22BDC1018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428948);
  }

  return result;
}

void *sub_22BB6B968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  result = a13;
  *a13 = v14;
  v16 = *(v13 + 104);
  return result;
}

void sub_22BB6B99C()
{
  v1 = v0[154];
  v2 = v0[152];
  v3 = v0[171];
  v4 = v0[170];
  v5 = v0[169];
  v6 = v0[168];
  v7 = v0[167];
  v8 = v0[166];
  v9 = v0[163];
  v10 = v0[162];
  v11 = v0[161];
  v12 = v0[160];
}

uint64_t sub_22BB6B9FC()
{
  sub_22BB32FA4((v0 - 144));

  return sub_22BB32FA4((v0 - 104));
}

uint64_t sub_22BB6BA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *v19 = a1;
  *(*(v20 - 80) + 8) = a2;
  v22 = v19 + *(a19 + 20);

  return sub_22BDBA344();
}

uint64_t sub_22BB6BAA4()
{

  return sub_22BB32EE0(v0, v1, (v2 - 96));
}

uint64_t sub_22BB6BAC0()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_22BB6BB04()
{
  v3 = v0 + *(v2 - 128);
  v4 = *(*(v2 - 144) + 72);
  *(v2 - 136) = v4;
  return v3 + v4 * v1;
}

uint64_t sub_22BB6BB34()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 104);
  v6 = *(v2 - 96);
  return result;
}

void sub_22BB6BB50()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[47];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[40];
  v7 = v0[37];
  v8 = v0[34];
  v9 = v0[31];
  v10 = v0[27];
  v11 = v0[28];
}

uint64_t sub_22BB6BB74()
{
  v5 = v0[58];
  v6 = v0[55];
  v7 = v0[54];
  v8 = v0[51];
  v9 = v0[50];
  v10 = v0[49];
  v11 = v0[48];
  v12 = v0[47];
  v13 = v0[46];
  v14 = v0[45];
  v15 = v0[42];
  v16 = v0[39];
  v17 = v0[36];
  v18 = v0[33];
  v3 = v0[27];
  *(v1 - 104) = v0[30];
  *(v1 - 96) = v3;
}

uint64_t sub_22BB6BBD8(uint64_t a1)
{
  *(a1 + 8) = sub_22BB533E8;
  v2 = v1[83];
  v3 = v1[81];
  return v1[80];
}

void sub_22BB6BC54()
{
  *(v3 + 16) = v0;
  v5 = v3 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
}

uint64_t sub_22BB6BC64()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_22BB6BC90()
{

  sub_22BB8C414();
}

void sub_22BB6BD50(_WORD *a1@<X8>)
{
  *a1 = 258;
  *(v1 + 2200) = a1 + 1;
  *(v1 + 1192) = sub_22BB89C08;
}

uint64_t sub_22BB6BD9C()
{

  return sub_22BDB5154();
}

uint64_t sub_22BB6BDD0(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  v5 = *(v4 + 16);
  return v1;
}

uint64_t sub_22BB6BDF0()
{

  return swift_slowAlloc();
}

uint64_t sub_22BB6BE44()
{
  v3 = *(v1 - 104);

  return sub_22BD80EEC(v3, v0);
}

uint64_t sub_22BB6BE80()
{
  result = v0[38];
  v2 = v0[35];
  v3 = v0[36];
  return result;
}

uint64_t sub_22BB6BEAC()
{
  v1 = v0[58];
  v2 = v0[55];
  return v0[95];
}

uint64_t sub_22BB6BEC8()
{

  return swift_task_alloc();
}

uint64_t sub_22BB6BEE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22BB36C80(a1, a2, a3, a4);
  sub_22BB2F330(v5);
  v7 = *(v6 + 32);
  v8 = sub_22BB31F54();
  v9(v8);
  return v4;
}

uint64_t sub_22BB6BF44(void *a1)
{
  v1 = a1[4];
  sub_22BB69FEC(a1, a1[3]);
  sub_22BDB9E14();
  return sub_22BDB9E24();
}

uint64_t sub_22BB6BF88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22BB6BF98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22BB6BFA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22BB6BFB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22BB6BFFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22BB6C078(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v7 = sub_22BDB57A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BDB5F24();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22BDB8404();
  v18 = sub_22BB6C450(v16, v17, a1);

  if (v18)
  {
    sub_22BB335C0(a2, v15);
    v19 = *(a3 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_switchboard);
    v20 = type metadata accessor for SessionReverseClientDistributor(0);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    v23 = swift_allocObject();
    sub_22BB3A518(v15, v23 + OBJC_IVAR____TtC23IntelligenceFlowRuntime31SessionReverseClientDistributor_sessionId);
    *(v23 + OBJC_IVAR____TtC23IntelligenceFlowRuntime31SessionReverseClientDistributor_switchboard) = v19;
    v24 = type metadata accessor for XPCClientAvatarConfiguration();
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    v43 = v24;
    v44 = &off_281429730;
    v42[0] = v25;

    v26 = sub_22BB6C5EC(v42);
    sub_22BB325EC(v42, &qword_27D8E6618, &qword_22BDCE5A0);
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  v27 = sub_22BDB8424();
  v29 = sub_22BB6C450(v27, v28, a1);

  if (v29)
  {
    (*(v8 + 16))(v11, v41, v7);
    v30 = (*(v8 + 88))(v11, v7);
    if (v30 == *MEMORY[0x277D1CE88])
    {
      v31 = &type metadata for StandardPlannerConfiguration;
      v32 = &off_281429750;
    }

    else
    {
      if (v30 != *MEMORY[0x277D1CE80])
      {

        sub_22BD5EA68();
        swift_allocError();
        *v39 = 2;
        swift_willThrow();
        return (*(v8 + 8))(v11, v7);
      }

      v31 = &type metadata for AgenticPlannerConfiguration;
      v32 = &off_2818A8118;
    }

    v43 = v31;
    v44 = v32;
    v33 = sub_22BB6C5EC(v42);
    sub_22BB325EC(v42, &qword_27D8E6618, &qword_22BDCE5A0);
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v34 = sub_22BDB8434();
  v36 = sub_22BB6C450(v34, v35, a1);

  if (v36)
  {
    v43 = &type metadata for ExecutorConfiguration;
    v44 = &off_28142A548;
    v37 = sub_22BB6C5EC(v42);
    sub_22BB325EC(v42, &qword_27D8E6618, &qword_22BDCE5A0);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  v45 = v26;
  sub_22BB3FF6C(v33);
  sub_22BB3FF6C(v37);
  return v45;
}

BOOL sub_22BB6C450(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_22BDB83A4();
  sub_22BB3DF20();
  v4 = sub_22BD61E90();

  if (v4)
  {
    return 1;
  }

  sub_22BDB8404();
  v5 = sub_22BD61E90();

  if (v5)
  {
    return 1;
  }

  sub_22BDB8424();
  sub_22BD63340();
  v7 = sub_22BD61E90();

  if (v7)
  {
    return a3 & 1;
  }

  sub_22BDB8414();
  sub_22BD63340();
  v8 = sub_22BD61E90();

  if (v8)
  {
    return a3 & 1;
  }

  sub_22BDB8434();
  sub_22BD63340();
  v9 = sub_22BD61E90();

  if (v9)
  {
    return (a3 >> 1) & 1;
  }

  sub_22BDB83B4();
  sub_22BD63340();
  v10 = sub_22BD61E90();

  if (v10)
  {
    return (a3 >> 1) & 1;
  }

  else
  {
    return (~a3 & 0x1F) == 0;
  }
}

uint64_t sub_22BB6C5A8()
{
  v2 = *(v0 - 168);
  v3 = *(v0 - 176);

  return sub_22BDBAF34();
}

uint64_t sub_22BB6C5EC(uint64_t a1)
{
  sub_22BB3CD70(a1, &v3, &qword_27D8E6618, &qword_22BDCE5A0);
  if (v4)
  {
    sub_22BB382E8(&v3, v5);
    sub_22BBE6DE0(&qword_27D8E6620, &qword_22BDCE5A8);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_22BDBCBD0;
    sub_22BB382E8(v5, v1 + 32);
  }

  else
  {
    sub_22BB325EC(&v3, &qword_27D8E6618, &qword_22BDCE5A0);
    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_22BB6C6A0()
{

  return swift_dynamicCast();
}

uint64_t sub_22BB6C6BC(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

uint64_t sub_22BB6C6D4()
{
  *(v1 - 104) = v0;

  return swift_willThrow();
}

uint64_t sub_22BB6C728()
{
  result = v0[105];
  v2 = v0[101];
  v3 = *(v0[102] + 8);
  return result;
}

uint64_t sub_22BB6C73C()
{
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[42];
  v6 = v0[38];
  v5 = v0[39];
  v8 = v0[34];
  v7 = v0[35];
  v11 = v0[31];
  v9 = v0[23];

  return sub_22BD5F4C0((v0 + 2));
}

void sub_22BB6C76C()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

char *sub_22BB6C7C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_22BBE6DE0(&qword_27D8E6020, &qword_22BDCD550);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_22BB6C8C0(char *a1, int64_t a2, char a3)
{
  result = sub_22BB6C7C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22BB6C8E0()
{
  v1 = v0[463];
  v2 = v0[462];
  result = v0[461];
  v4 = v0[312];
  return result;
}

uint64_t sub_22BB6C90C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB5664();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BB6C970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v13 = *(v12 + 896);
  v14 = *(v12 + 888);
  v15 = *(v12 + 880);
  v16 = *(v12 + 872);
  v17 = *(v12 + 184);
  *v13 = 15;
  (*(v14 + 104))(v13, *MEMORY[0x277D85188], v15);
  sub_22BDB63E4();
  v18 = sub_22BDB6614();
  sub_22BB34ED4(v18);
  *(v12 + 936) = sub_22BDB65F4();
  if (v17)
  {
    v19 = *(v12 + 776);
    v20 = *(v12 + 752);
    sub_22BB94F54(*(v12 + 184), *(v12 + 784));
    v21 = sub_22BB2F324();
    sub_22BB3CD70(v21, v22, v23, v24);
    v25 = 1;
    v26 = sub_22BB36B68();
    sub_22BB31814(v26, v27, v20);
    if (!v28)
    {
      v29 = *(v12 + 800);
      v30 = *(v12 + 776);
      v31 = *(v12 + 768);
      v32 = *(v12 + 760);
      v33 = *(v12 + 752);
      v34 = *(v12 + 744);
      v35 = *(v32 + 32);
      v36 = sub_22BB97E2C();
      v37(v36);
      sub_22BDB9B34();
      sub_22BD63938();
      sub_22BDB5F04();
      v38 = *(v32 + 8);
      v39 = sub_22BB2F3F0();
      v40(v39);
      v25 = 0;
    }

    sub_22BB325EC(*(v12 + 784), &unk_27D8E69E0, &qword_22BDC1660);
  }

  else
  {
    v25 = 1;
  }

  v41 = *(v12 + 808);
  v42 = *(v12 + 792);
  v43 = *(v12 + 632);
  sub_22BB336D0(*(v12 + 800), v25, 1, v43);
  v44 = sub_22BB3182C();
  sub_22BB6BEE0(v44, v45, &qword_27D8E6440, &qword_22BDCE290);
  v46 = sub_22BD62428();
  sub_22BB3CD70(v46, v47, v48, &qword_22BDCE290);
  v49 = sub_22BB3A840();
  v51 = sub_22BB3AA28(v49, v50, v43);
  v52 = *(v12 + 792);
  if (v51 == 1)
  {
    v53 = *(v12 + 632);
    v54 = *(v12 + 640);
    sub_22BDB43D4();
    sub_22BB36B74(v52);
    if (!v28)
    {
      sub_22BB325EC(*(v12 + 792), &qword_27D8E6440, &qword_22BDCE290);
    }
  }

  else
  {
    sub_22BB3A518(*(v12 + 792), *(v12 + 640));
  }

  v55 = *(v12 + 736);
  v491 = *(v12 + 728);
  v56 = *(v12 + 640);
  v57 = *(v12 + 624);
  v58 = *(v12 + 616);
  v59 = *(v12 + 608);
  v60 = *(v12 + 600);
  v61 = *(v12 + 592);
  v62 = *(v12 + 192);
  v63 = *(v12 + 160);
  *(v12 + 40) = *v63;
  *(v12 + 56) = v63[1];
  *(v12 + 72) = v63[2];
  sub_22BB3FE9C(v12 + 40, v12 + 88);
  sub_22BB3FEF8(v12 + 56, v12 + 104);
  sub_22BB3CD70(v12 + 72, v12 + 120, &qword_27D8E6448, &qword_22BDCE298);
  sub_22BDB5654();
  sub_22BDB6124();
  sub_22BDB6104();
  sub_22BDB7744();
  sub_22BDB7704();
  v64 = *(v59 + 8);
  v65 = sub_22BB313A8();
  v495 = v66;
  v66(v65);
  sub_22BB32CE8();
  sub_22BB335C0(v55, v491);

  v67 = sub_22BDB7744();
  sub_22BDBB1D4();

  v68 = sub_22BDBB244();
  v69 = *(v12 + 728);
  if (v68)
  {
    v70 = *(v12 + 592);
    v71 = *(v12 + 560);
    v72 = *(v12 + 552);
    v73 = *(v12 + 192);
    sub_22BB3B778();
    v504[0] = sub_22BD62BD8();
    *v62 = 136315394;
    sub_22BB37DF4();
    sub_22BB335C0(v73 + v74, v71);
    sub_22BB3B194(&qword_28142DCF8, MEMORY[0x277D1CB28]);
    sub_22BDBB684();
    sub_22BC54A00();
    sub_22BB343F4();
    sub_22BB34648();
    v75 = sub_22BB2F12C();
    sub_22BB32EE0(v75, v76, v77);
    sub_22BB36C3C();

    *(v62 + 4) = v71;
    *(v62 + 12) = 2080;
    v78 = sub_22BDB5624();
    sub_22BB3093C();
    sub_22BB34648();
    v79 = sub_22BB3CB04();
    sub_22BB32EE0(v79, v80, v81);
    sub_22BB3935C();

    *(v62 + 14) = v78;
    sub_22BDB7714();
    sub_22BD6424C();
    _os_signpost_emit_with_name_impl(v82, v83, v84, v85, v86, v87, v62, 0x16u);
    sub_22BD62500();
    swift_arrayDestroy();
    sub_22BB30458();
    sub_22BB32238();
  }

  else
  {

    sub_22BB3093C();
    sub_22BB34648();
  }

  v88 = *(v12 + 624);
  v89 = *(v12 + 600);
  v90 = *(v12 + 592);
  v91 = *(v12 + 584);
  v92 = *(v12 + 576);
  v93 = *(v12 + 568);
  v94 = *(v12 + 528);
  v487 = *(v12 + 520);
  v492 = *(v12 + 544);
  v95 = *(v12 + 192);
  v96 = *(v12 + 176);
  sub_22BB97BA8();
  v97 = sub_22BB345A8();
  v98(v97);
  v99 = sub_22BDB77A4();
  sub_22BB34ED4(v99);
  sub_22BB3A190();
  v484 = sub_22BDB7794();
  *(v12 + 944) = v484;
  (*(v92 + 8))(v90, v93);
  v100 = sub_22BB30AE4();
  v495(v100);
  v101 = *(v94 + 16);
  *(v12 + 952) = v101;
  *(v12 + 960) = (v94 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v101(v492, v96, v487);
  v102 = OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_configuration;
  swift_beginAccess();
  v103 = sub_22BDB5B44();
  v104 = sub_22BB3AA28(v95 + v102, 1, v103);
  v105 = MEMORY[0x277D84F90];
  if (v104)
  {
    v106 = *(v12 + 544);
    swift_endAccess();
    v107 = sub_22BDB57C4();
    if (v107)
    {
      v108 = v107;
    }

    else
    {
      v108 = v105;
    }
  }

  else
  {
    v108 = sub_22BDB5B24();
    swift_endAccess();
  }

  v109 = *(v12 + 544);
  v110 = *(v12 + 496);
  v111 = *(v12 + 480);
  MEMORY[0x23189F780]();
  sub_22BB36B74(v111);
  if (v28)
  {
    v112 = *(v12 + 488);
    v113 = *(v12 + 496);
    v114 = *(v12 + 480);
    swift_getKeyPath();
    sub_22BDB4BE4();

    v115 = *(v12 + 136);
    v116 = *(v12 + 144);
    sub_22BDB5784();
    sub_22BB2F164(v114);
    if (!v28)
    {
      sub_22BB325EC(*(v12 + 480), &qword_27D8E6438, &qword_22BDD0FE0);
    }
  }

  else
  {
    v117 = *(v12 + 496);
    (*(*(v12 + 504) + 32))(*(v12 + 488), *(v12 + 480), v117);
    v118 = sub_22BB72084();
    sub_22BB336D0(v118, v119, v120, v117);
  }

  v122 = *(v12 + 488);
  v121 = *(v12 + 496);
  sub_22BB36B74(v122);
  if (!v28)
  {
    v133 = *(v12 + 544);
    v135 = *(v12 + 448);
    v134 = *(v12 + 456);
    (*(*(v12 + 504) + 32))(*(v12 + 512), v122, v121);
    sub_22BDB5844();
    if (sub_22BB3AA28(v135, 1, v134) == 1)
    {
      v136 = *(v12 + 448);
      v137 = *(v12 + 456);
      v138 = *(v12 + 472);
      sub_22BDB5824();
      v139 = sub_22BB2F164(v136);
      if (!v28)
      {
        v139 = sub_22BB325EC(*(v12 + 448), &qword_27D8E6430, &unk_22BDCE280);
      }
    }

    else
    {
      v139 = (*(*(v12 + 464) + 32))(*(v12 + 472), *(v12 + 448), *(v12 + 456));
    }

    v140 = *(v12 + 472);
    v141 = *(v12 + 432);
    v142 = *(v12 + 416);
    v143 = *(v12 + 424);
    v144 = *(v12 + 440);
    MEMORY[0x23189F7D0](v139);
    v145 = *(v143 + 16);
    sub_22BB35FA0();
    v146();
    v147 = *(v143 + 88);
    v148 = sub_22BB2F0E0();
    v150 = v149(v148);
    v151 = *(v12 + 440);
    v152 = *(v12 + 416);
    v153 = *(v12 + 424);
    v474 = v108;
    if (v150 == *MEMORY[0x277D1CEB0])
    {
      (*(v153 + 8))(v151, v152);
      v154 = 3;
    }

    else
    {
      v155 = *MEMORY[0x277D1CEA8];
      v156 = *(v153 + 8);
      v156(v151, v152);
      if (v150 == v155)
      {
        v154 = 1;
      }

      else
      {
        v156(*(v12 + 432), *(v12 + 416));
        v154 = 0;
      }
    }

    v157 = *(v12 + 864);
    v158 = *(v12 + 736);
    v159 = *(v12 + 720);
    v160 = *(v12 + 1041) & v154;
    _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
    sub_22BB32CE8();
    v161 = sub_22BB2F0E0();
    sub_22BB335C0(v161, v162);
    v163 = sub_22BDB77C4();
    v164 = sub_22BDBB0F4();
    v165 = os_log_type_enabled(v163, v164);
    v166 = *(v12 + 864);
    v167 = *(v12 + 824);
    v168 = *(v12 + 816);
    v169 = *(v12 + 720);
    if (v165)
    {
      v493 = v154;
      v170 = swift_slowAlloc();
      v171 = sub_22BB314C8();
      v504[0] = v171;
      *v170 = 136315650;
      v496 = v166;
      v502 = v168;
      v168 = sub_22BDB5624();
      v172 = v160;
      v174 = v173;
      sub_22BB3093C();
      sub_22BB34648();
      sub_22BB32EE0(v168, v174, v504);
      sub_22BB371E4();
      v160 = v172;

      *(v170 + 4) = v169;
      *(v170 + 12) = 256;
      *(v170 + 14) = v493;
      *(v170 + 15) = 256;
      *(v170 + 17) = v172;
      _os_log_impl(&dword_22BB2C000, v163, v164, "SessionCoordinator %s: client requested participants %hhu. client effective participants %hhu", v170, 0x12u);
      sub_22BB32FA4(v171);
      sub_22BD62140();
      sub_22BB38680();

      v175 = *(v167 + 8);
      v175(v496, v502);
    }

    else
    {

      sub_22BB3093C();
      sub_22BB34648();
      v175 = *(v167 + 8);
      v176 = sub_22BB331D4();
      v175(v176, v177);
    }

    sub_22BB6C078(v160, *(v12 + 736), *(v12 + 192), *(v12 + 512));
    v473 = v175;
    v197 = *(v12 + 544);
    v198 = *(v12 + 408);
    v470 = *(v12 + 184);

    sub_22BDB57D4();
    v199 = sub_22BDB5564();
    v200 = sub_22BB2F3FC();
    v202 = sub_22BB3AA28(v200, v201, v199);
    if (v202 == 1)
    {
      sub_22BB325EC(*(v12 + 408), &qword_27D8E6428, &qword_22BDCE278);
    }

    else
    {
      v203 = sub_22BDB5554();
      sub_22BB30474(v199);
      v205 = *(v204 + 8);
      v206 = sub_22BB2F324();
      v207(v206);
      v208 = *(v203 + 16);
      if (v208)
      {
        v209 = *(v12 + 376);
        v210 = *(v12 + 352);
        v504[0] = MEMORY[0x277D84F90];
        sub_22BB6C76C();
        v211 = v504[0];
        v212 = *(v210 + 16);
        v210 += 16;
        v213 = *(v210 + 64);
        sub_22BB2F390();
        v215 = v203 + v214;
        v482 = (v210 - 8);
        v486 = v216;
        v498 = v209;
        v478 = *(v210 + 56);
        do
        {
          v503 = v211;
          v217 = *(v12 + 360);
          v219 = *(v12 + 336);
          v218 = *(v12 + 344);
          v220 = sub_22BB3CB04();
          v486(v220);
          sub_22BDB4F34();
          v221 = sub_22BDB4BD4();
          v222 = sub_22BB36B68();
          v224 = sub_22BB3AA28(v222, v223, v221);
          if (v224 == 1)
          {
            sub_22BB325EC(*(v12 + 336), &qword_27D8E6420, &qword_22BDCE270);
            v168 = 0;
            v225 = 0;
            v226 = 0;
            v227 = 0;
          }

          else
          {
            v168 = sub_22BDB4BC4();
            v225 = v228;
            v226 = v229;
            v227 = v230;
            sub_22BB30474(v221);
            v232 = *(v231 + 8);
            v233 = sub_22BB2F3F0();
            v234(v233);
          }

          v235 = *(v12 + 360);
          v236 = *(v12 + 328);
          *(v12 + 1008) = v168;
          *(v12 + 1016) = v225;
          *(v12 + 1024) = v226;
          *(v12 + 1032) = v227;
          *(v12 + 1040) = v224 == 1;
          sub_22BDB4F14();
          v237 = sub_22BDB5444();
          v238 = sub_22BB2F3FC();
          v240 = sub_22BB3AA28(v238, v239, v237);
          v241 = *(v12 + 328);
          if (v240 == 1)
          {
            sub_22BB325EC(*(v12 + 328), &qword_27D8E6D90, &unk_22BDD0C20);
          }

          else
          {
            v242 = *(v12 + 328);
            sub_22BDB5424();
            sub_22BB30474(v237);
            v244 = *(v243 + 8);
            v245 = sub_22BB3182C();
            v246(v245);
          }

          v211 = v503;
          v247 = *(v12 + 400);
          v248 = *(v12 + 360);
          v249 = *(v12 + 344);
          sub_22BDB9644();
          v250 = *v482;
          v251 = sub_22BB30AE4();
          v252(v251);
          v504[0] = v503;
          v254 = *(v503 + 16);
          v253 = *(v503 + 24);
          if (v254 >= v253 >> 1)
          {
            sub_22BB2F158(v253);
            sub_22BB6C76C();
            v211 = v504[0];
          }

          v255 = *(v12 + 400);
          v256 = *(v12 + 368);
          *(v211 + 16) = v254 + 1;
          v257 = *(v498 + 80);
          sub_22BB2F390();
          (*(v259 + 32))(v211 + v258 + *(v259 + 72) * v254);
          v215 += v478;
          --v208;
        }

        while (v208);

LABEL_57:
        v260 = v474;
        if (*(v211 + 16))
        {
          v261 = *(v12 + 392);
          *(v12 + 1044) = sub_22BDB6444();
          *(v12 + 1052) = v262;
          *(v12 + 1060) = v263;
          *(v12 + 1068) = v264;
          *(v12 + 1076) = 0;
          sub_22BDB64A4();
          sub_22BDB6484();
          sub_22BDB9644();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v433 = *(v211 + 16);
            sub_22BB305BC();
            sub_22BB6E3F8();
            v211 = v434;
          }

          v266 = *(v211 + 16);
          v265 = *(v211 + 24);
          if (v266 >= v265 >> 1)
          {
            sub_22BB2F138(v265);
            sub_22BB6E3F8();
            v211 = v435;
          }

          v267 = *(v12 + 392);
          v268 = *(v12 + 368);
          v269 = *(v12 + 376);
          *(v211 + 16) = v266 + 1;
          (*(v269 + 32))(v211 + ((*(v269 + 80) + 32) & ~*(v269 + 80)) + *(v269 + 72) * v266, v267, v268);
        }

        *(v12 + 968) = v211;
        v270 = *(v12 + 856);
        v271 = *(v12 + 736);
        v272 = *(v12 + 712);
        sub_22BDB63E4();
        sub_22BB32CE8();
        v273 = sub_22BB30AE4();
        sub_22BB335C0(v273, v274);
        v275 = sub_22BDB77C4();
        v276 = sub_22BDBB134();
        if (os_log_type_enabled(v275, v276))
        {
          v466 = v276;
          v277 = *(v12 + 712);
          sub_22BB3B778();
          sub_22BB3E030();
          *v168 = 136446466;
          sub_22BDB5624();
          sub_22BB3093C();
          sub_22BB34648();
          v278 = sub_22BB30AE4();
          v281 = sub_22BB32EE0(v278, v279, v280);

          *(v168 + 4) = v281;
          v468 = v168;
          *(v168 + 12) = 2082;
          v282 = *(v211 + 16);
          v283 = MEMORY[0x277D84F90];
          if (v282)
          {
            v284 = *(v12 + 376);
            v504[0] = MEMORY[0x277D84F90];

            v285 = sub_22BB3B700();
            sub_22BB6C8C0(v285, v286, v287);
            v283 = v504[0];
            v289 = *(v284 + 16);
            v288 = v284 + 16;
            v290 = *(v288 + 64);
            sub_22BB2F390();
            v292 = v211 + v291;
            v480 = *(v288 + 56);
            v483 = v293;
            v489 = v275;
            do
            {
              v294 = *(v12 + 384);
              v295 = *(v12 + 368);
              v296 = sub_22BB345A8();
              v483(v296);
              sub_22BDB9634();
              v297 = *(v12 + 1112);
              if (v297)
              {
                v499 = 0;
              }

              else
              {
                v298 = *(v12 + 1104);
                v299 = *(v12 + 1096);
                v300 = *(v12 + 1088);
                v301 = *(v12 + 1080);
                v499 = sub_22BDB6454();
              }

              v302 = *(v12 + 384);
              v303 = sub_22BDB9654();
              if (v303)
              {
                v304 = sub_22BDB6494();
              }

              else
              {
                v304 = 0;
              }

              (*(v288 - 8))(*(v12 + 384), *(v12 + 368));
              v504[0] = v283;
              v306 = *(v283 + 16);
              v305 = *(v283 + 24);
              if (v306 >= v305 >> 1)
              {
                v308 = sub_22BB2F158(v305);
                sub_22BB6C8C0(v308, v306 + 1, 1);
                v283 = v504[0];
              }

              *(v283 + 16) = v306 + 1;
              v307 = v283 + 16 * v306;
              *(v307 + 32) = v499;
              *(v307 + 36) = v297 & 1;
              *(v307 + 40) = v304;
              *(v307 + 44) = v303 == 0;
              v292 += v480;
              --v282;
              v275 = v489;
            }

            while (v282);

            v260 = v474;
          }

          v314 = *(v12 + 856);
          v315 = *(v12 + 824);
          v316 = *(v12 + 816);
          v317 = sub_22BBE6DE0(&qword_27D8E6460, &unk_22BDCE2F0);
          MEMORY[0x2318A4D50](v283, v317);

          v318 = sub_22BB331D4();
          sub_22BB32EE0(v318, v319, v320);
          sub_22BD63698();

          *(v468 + 14) = v283;
          _os_log_impl(&dword_22BB2C000, v275, v466, "SessionCoordinator %{public}s ID token chain: %{public}s.", v468, 0x16u);
          swift_arrayDestroy();
          sub_22BB89BBC();
          sub_22BB32238();

          v313 = sub_22BB2F3F0();
        }

        else
        {
          v309 = *(v12 + 856);
          v310 = *(v12 + 824);
          v311 = *(v12 + 816);
          v312 = *(v12 + 712);

          sub_22BB3093C();
          sub_22BB34648();
          v313 = sub_22BB2F324();
        }

        v473(v313);
        v321 = *(v12 + 544);
        v323 = *(v12 + 280);
        v322 = *(v12 + 288);
        sub_22BDB57F4();
        v324 = sub_22BB2F3FC();
        if (sub_22BB3AA28(v324, v325, v322) == 1)
        {
          v326 = *(v12 + 280);
          v327 = *(v12 + 288);
          v328 = *(v12 + 320);
          sub_22BDB5354();
          v329 = sub_22BB2F164(v326);
          if (!v28)
          {
            v329 = sub_22BB325EC(*(v12 + 280), &qword_27D8E6418, &unk_22BDCE260);
          }
        }

        else
        {
          v329 = (*(*(v12 + 296) + 32))(*(v12 + 320), *(v12 + 280), *(v12 + 288));
        }

        v330 = *(v12 + 320);
        v331 = *(v12 + 240);
        v332 = *(v12 + 248);
        v333 = *(v12 + 264);
        MEMORY[0x23189F300](v329);
        v334 = *(v332 + 88);
        v335 = sub_22BB30AE4();
        v337 = v336(v335);
        v338 = *MEMORY[0x277D1CB58];
        v339 = MEMORY[0x277D1CB48];
        v340 = &unk_22BDCE000;
        if (v337 == v338)
        {
          v341 = *(v12 + 320);
          sub_22BDB5314();
LABEL_95:
          v387 = *(v12 + 192);
          v388 = OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_switchboard;
          *(v12 + 976) = OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_switchboard;
          v389 = *(v387 + v388);

          sub_22BB40108();
          v391 = v390;
          *(v12 + 1042) = v390 & 1;

          if (v391)
          {
            v392 = *(v12 + 832);
            v393 = *(v12 + 736);
            v394 = *(v12 + 688);
            sub_22BDB63E4();
            sub_22BB32CE8();
            v395 = sub_22BB30AE4();
            sub_22BB335C0(v395, v396);
            v397 = sub_22BDB77C4();
            sub_22BDBB134();
            sub_22BB93938();
            v399 = os_log_type_enabled(v397, v398);
            v400 = *(v12 + 832);
            v401 = *(v12 + 824);
            v402 = *(v12 + 816);
            v403 = *(v12 + 688);
            if (v399)
            {
              sub_22BB31AD8();
              v501 = v402;
              v404 = sub_22BB6B650();
              v504[0] = v404;
              *v260 = v340[34];
              sub_22BDB5624();
              sub_22BC54A00();
              sub_22BB3093C();
              sub_22BB34648();
              sub_22BB32EE0(v339, v340, v504);
              sub_22BB36C3C();

              *(v260 + 4) = v403;
              sub_22BD63B54(&dword_22BB2C000, v397, v338, "SessionCoordinator %{public}s has a side-channel debugger attached.");
              sub_22BB32FA4(v404);
              sub_22BB30458();
              MEMORY[0x2318A6080](v260, -1, -1);

              v405 = v400;
              v406 = v501;
            }

            else
            {

              sub_22BB3093C();
              sub_22BB34648();
              v405 = sub_22BC54704();
            }

            (v473)(v405, v406);
            v407 = *(v12 + 320);
            v408 = *(v12 + 256);
            (*(*(v12 + 248) + 104))(v408, *v339, *(v12 + 240));
            MEMORY[0x23189F310](v408);
            sub_22BDB5314();
            sub_22BDB52F4();
          }

          v409 = *(v12 + 736);
          v410 = *(v12 + 680);
          v411 = *(v12 + 320);
          v413 = *(v12 + 296);
          v412 = *(v12 + 304);
          v414 = *(v12 + 288);
          v415 = *(v12 + 168);
          sub_22BB32CE8();
          sub_22BB335C0(v416, v417);
          v418 = *(v413 + 16);
          sub_22BB35FA0();
          v419();
          v420 = sub_22BBE6DE0(&qword_27D8E6458, &qword_22BDCE2D0);
          sub_22BB34ED4(v420);

          v421 = swift_task_alloc();
          *(v12 + 984) = v421;
          *v421 = v12;
          v421[1] = sub_22BBD1550;
          v422 = *(v12 + 304);
          v423 = *(v12 + 168);
          sub_22BB3487C(*(v12 + 680));
          sub_22BB33430();

          return v431(v424, v425, v426, v427, v428, v429, v430, v431, a9, a10, a11, a12);
        }

        if (v337 == *MEMORY[0x277D1CB48])
        {
          if ((*(v12 + 1041) & 4) != 0)
          {
            goto LABEL_95;
          }

          v342 = *(v12 + 848);
          v343 = *(v12 + 736);
          v344 = *(v12 + 704);
          sub_22BDB63E4();
          sub_22BB32CE8();
          v345 = sub_22BB30AE4();
          sub_22BB335C0(v345, v346);
          v347 = sub_22BDB77C4();
          v348 = sub_22BDBB134();
          v349 = os_log_type_enabled(v347, v348);
          v350 = *(v12 + 848);
          v351 = *(v12 + 824);
          v352 = *(v12 + 816);
          v353 = *(v12 + 704);
          if (v349)
          {
LABEL_87:
            v354 = sub_22BB31AD8();
            v500 = v352;
            v355 = sub_22BB314C8();
            v504[0] = v355;
            *v354 = 136446210;
            v356 = sub_22BDB5624();
            v490 = v350;
            v358 = v357;
            sub_22BB3093C();
            sub_22BB34648();
            v359 = v356;
            v340 = &unk_22BDCE000;
            sub_22BB32EE0(v359, v358, v504);
            sub_22BB371E4();

            *(v354 + 4) = v353;
            _os_log_impl(&dword_22BB2C000, v347, v348, "SessionCoordinator %{public}s client requested debugging, but was not properly entitled.", v354, 0xCu);
            sub_22BB32FA4(v355);
            sub_22BB30458();
            v360 = v354;
            v339 = MEMORY[0x277D1CB48];
            MEMORY[0x2318A6080](v360, -1, -1);

            v361 = v490;
            v362 = v500;
LABEL_92:
            (v473)(v361, v362);
            v370 = *(v12 + 320);
            v371 = *(v12 + 256);
            (*(*(v12 + 248) + 104))(v371, v338, *(v12 + 240));
            MEMORY[0x23189F310](v371);
            sub_22BDB5314();
LABEL_94:
            v260 = v474;
            goto LABEL_95;
          }
        }

        else
        {
          if (v337 != *MEMORY[0x277D1CB50])
          {
            v372 = *(v12 + 312);
            v373 = *(v12 + 320);
            v374 = *(v12 + 288);
            v338 = *(v12 + 296);
            v375 = *(v12 + 264);
            v376 = *(v12 + 240);
            v377 = *(v12 + 248);
            sub_22BDB5354();
            v378 = *(v338 + 8);
            v379 = sub_22BB2F3F0();
            v380(v379);
            v381 = *(v338 + 32);
            LOBYTE(v338) = v338 + 32;
            v382 = sub_22BB2F324();
            v383(v382);
            v384 = *(v377 + 8);
            v385 = sub_22BB331D4();
            v386(v385);
            goto LABEL_94;
          }

          if ((~*(v12 + 1041) & 0x14) == 0)
          {
            goto LABEL_95;
          }

          v363 = *(v12 + 840);
          v364 = *(v12 + 736);
          v365 = *(v12 + 696);
          sub_22BDB63E4();
          sub_22BB32CE8();
          v366 = sub_22BB30AE4();
          sub_22BB335C0(v366, v367);
          v347 = sub_22BDB77C4();
          v348 = sub_22BDBB134();
          v368 = os_log_type_enabled(v347, v348);
          v350 = *(v12 + 840);
          v369 = *(v12 + 824);
          v352 = *(v12 + 816);
          v353 = *(v12 + 696);
          if (v368)
          {
            goto LABEL_87;
          }
        }

        sub_22BB3093C();
        sub_22BB34648();
        v361 = sub_22BB31B54();
        goto LABEL_92;
      }
    }

    v211 = MEMORY[0x277D84F90];
    goto LABEL_57;
  }

  v123 = *(v12 + 904);
  v124 = *(v12 + 736);
  v125 = *(v12 + 544);
  v126 = *(v12 + 528);
  v127 = *(v12 + 520);
  v128 = *(v12 + 192);

  sub_22BB325EC(v122, &qword_27D8E6438, &qword_22BDD0FE0);
  sub_22BD5EA68();
  sub_22BB31A08();
  *v129 = 2;
  swift_willThrow();
  v130 = *(v126 + 8);
  v131 = sub_22BB33728();
  v132(v131);
  sub_22BB76C64(v484, v128, v124);
  v178 = *(v12 + 944);
  v179 = *(v12 + 936);
  v180 = *(v12 + 896);
  v181 = *(v12 + 872);
  v182 = *(v12 + 864);
  v183 = *(v12 + 856);
  v184 = *(v12 + 848);
  v185 = *(v12 + 840);
  v186 = *(v12 + 808);
  v436 = *(v12 + 832);
  v437 = *(v12 + 800);
  v438 = *(v12 + 792);
  v439 = *(v12 + 784);
  v440 = *(v12 + 776);
  v441 = *(v12 + 768);
  v187 = *(v12 + 736);
  v442 = *(v12 + 744);
  v443 = *(v12 + 728);
  v444 = *(v12 + 720);
  v445 = *(v12 + 712);
  v446 = *(v12 + 704);
  v447 = *(v12 + 696);
  v448 = *(v12 + 688);
  v449 = *(v12 + 680);
  v450 = *(v12 + 672);
  v451 = *(v12 + 640);
  sub_22BB71D94();
  sub_22BBD2288();
  v452 = *(v12 + 560);
  v453 = *(v12 + 544);
  v454 = *(v12 + 536);
  v455 = *(v12 + 512);
  v456 = *(v12 + 488);
  v457 = *(v12 + 480);
  v458 = *(v12 + 472);
  v459 = *(v12 + 448);
  v460 = *(v12 + 440);
  v461 = *(v12 + 432);
  v462 = *(v12 + 408);
  v463 = *(v12 + 400);
  v464 = *(v12 + 392);
  v465 = *(v12 + 384);
  v467 = *(v12 + 360);
  v469 = *(v12 + 336);
  v471 = *(v12 + 328);
  v472 = *(v12 + 320);
  v475 = *(v12 + 312);
  v476 = *(v12 + 304);
  v477 = *(v12 + 280);
  v479 = *(v12 + 272);
  v481 = *(v12 + 264);
  v485 = *(v12 + 256);
  v488 = *(v12 + 232);
  v494 = *(v12 + 208);
  v497 = *(v12 + 200);

  sub_22BB3093C();
  sub_22BB34648();
  sub_22BB325EC(v186, &qword_27D8E6440, &qword_22BDCE290);
  sub_22BDB6604();

  sub_22BB2F09C();
  sub_22BB33430();

  return v189(v188, v189, v190, v191, v192, v193, v194, v195, a9, a10, a11, a12);
}

uint64_t sub_22BB6E3A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22BDB4B54();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_22BB6E3F8()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E6018, &qword_22BDD0330);
  sub_22BB38F5C();
  v9 = sub_22BDB9664();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD2788C(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

uint64_t sub_22BB6E4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22BDB5664();
  v6 = sub_22BB30434(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_22BDBB334();

  v19 = 0xD000000000000024;
  v20 = 0x800000022BDD41F0;
  v11 = sub_22BDB5624();
  MEMORY[0x2318A4C40](v11);

  sub_22BB35D70();
  v12 = sub_22BB3AAD8();
  sub_22BB388FC(v12, v13);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_22BB3D510(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = (v15 + ((v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a2;
  v16[1] = a3;
  v17 = sub_22BDB64C4();
  sub_22BB58B50(v17);
  swift_allocObject();

  return sub_22BDB64D4();
}

uint64_t sub_22BB6E65C()
{
  v2 = sub_22BDB5664();
  sub_22BB3A75C(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1 + v8;
  v11 = sub_22BDB43E4();
  sub_22BB31F70(v11);
  (*(v12 + 8))(v10);
  sub_22BB3AE18();
  v13 = *(v0 + 24);

  v14 = *(v0 + 40);

  v15 = *(v1 + v9 + 8);

  return MEMORY[0x2821FE8E8](v1, v9 + 16, v7 | 7);
}

uint64_t sub_22BB6E74C()
{
  sub_22BB30F68();
  v0 = sub_22BDB5664();
  v1 = sub_22BB2F0C8(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  sub_22BB33230();
  do
  {
    v10 = 0;
    MEMORY[0x2318A60A0](&v10, 8);
  }

  while (!v10);
  sub_22BB35D70();
  v4 = sub_22BB2F324();
  sub_22BB388FC(v4, v5);
  v6 = type metadata accessor for DefaultEventLogSender();
  sub_22BB58B50(v6);
  swift_allocObject();
  v7 = sub_22BB30AE4();
  return sub_22BB6E7EC(v7, v8);
}

uint64_t sub_22BB6E7EC(uint64_t a1, uint64_t a2)
{
  v5 = sub_22BBE6DE0(&qword_27D8E3CC8, &qword_22BDC1008);
  sub_22BB34ED4(v5);
  *(v2 + 16) = sub_22BDB9ED4();
  sub_22BB6C90C(a1, v2 + OBJC_IVAR____TtC23IntelligenceFlowRuntime21DefaultEventLogSender_id);
  *(v2 + OBJC_IVAR____TtC23IntelligenceFlowRuntime21DefaultEventLogSender_eventParentID) = a2;
  sub_22BB408A4(a1, a2);
  sub_22BB6B8A8(a1);
  return v2;
}

uint64_t sub_22BB6E87C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for DefaultEventHandler()
{
  result = qword_28142A9F8;
  if (!qword_28142A9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BB6E934(uint64_t a1)
{
  v3 = sub_22BDBB174();
  v4 = sub_22BB30444(v3);
  v20 = v5;
  v21 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v10 = v9 - v8;
  v11 = sub_22BDBB154();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v13 = sub_22BDBAA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_22BB30574();
  v18 = a1;
  sub_22BB6EC40(a1, v1 + OBJC_IVAR____TtC23IntelligenceFlowRuntime19DefaultEventHandler_subscriber);
  sub_22BB6ECB0();
  sub_22BDBB334();
  MEMORY[0x2318A4C40](0xD00000000000003ELL, 0x800000022BDD27C0);
  LODWORD(a1) = *(sub_22BBE6DE0(&qword_27D8E3C40, &qword_22BDC0FC0) + 56);
  sub_22BDB9DB4();
  sub_22BB6B80C(&qword_281428960, MEMORY[0x277CBCAD0]);
  v15 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v15);

  sub_22BDBAA24();
  sub_22BB6B80C(&unk_281428780, MEMORY[0x277D85230]);
  sub_22BBE6DE0(&qword_27D8E3C48, &unk_22BDC0CD0);
  sub_22BB6B854(&qword_2814287E0, &qword_27D8E3C48, &unk_22BDC0CD0);
  sub_22BDBB2B4();
  (*(v20 + 104))(v10, *MEMORY[0x277D85260], v21);
  v16 = sub_22BDBB1A4();
  sub_22BB6ECF4(v18);
  result = v19;
  *(v19 + OBJC_IVAR____TtC23IntelligenceFlowRuntime19DefaultEventHandler_subscriptionQueue) = v16;
  return result;
}

uint64_t sub_22BB6EC40(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3C40, &qword_22BDC0FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22BB6ECB0()
{
  result = qword_281428778;
  if (!qword_281428778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281428778);
  }

  return result;
}

uint64_t sub_22BB6ECF4(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E3C40, &qword_22BDC0FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BB6ED5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v95 = a3;
  v7 = sub_22BBE6DE0(&qword_27D8E3C80, &qword_22BDC0FB8);
  sub_22BB2F0C8(v7);
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v83 - v12;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v87 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  sub_22BB2F39C();
  v90 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v83 - v21;
  MEMORY[0x28223BE20](v20);
  sub_22BB2F39C();
  v94 = v23;
  MEMORY[0x28223BE20](v24);
  sub_22BB2F39C();
  v93 = v25;
  v89 = v26;
  MEMORY[0x28223BE20](v27);
  sub_22BB2F39C();
  v98 = v28;
  v29 = sub_22BBE6DE0(&qword_27D8E3C40, &qword_22BDC0FC0);
  sub_22BB30474(v29);
  v31 = *(v30 + 64);
  v33 = MEMORY[0x28223BE20](v32);
  v88 = &v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v96 = (&v83 - v36);
  MEMORY[0x28223BE20](v35);
  sub_22BB2F39C();
  v97 = v37;
  v38 = sub_22BDB77D4();
  v39 = sub_22BB30444(v38);
  v91 = v40;
  v92 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BB30574();
  sub_22BB36220();
  v43 = sub_22BDB77C4();
  v44 = sub_22BDBB104();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v85 = v22;
    v46 = v45;
    v47 = swift_slowAlloc();
    v86 = v14;
    v83 = v47;
    v100[0] = v47;
    *v46 = 136315138;
    v48 = sub_22BDBB8F4();
    v84 = a2;
    v50 = a1;
    v51 = v13;
    v52 = sub_22BB32EE0(v48, v49, v100);
    a2 = v84;

    *(v46 + 4) = v52;
    v13 = v51;
    a1 = v50;
    v4 = v3;
    _os_log_impl(&dword_22BB2C000, v43, v44, "IN receive<S>(subscriber: S) %s", v46, 0xCu);
    sub_22BB32FA4(v83);
    v14 = v86;
    sub_22BB30AF0();
    sub_22BB30AF0();
  }

  (*(v91 + 8))(v3, v92);
  v53 = *(v4 + 16);
  v54 = *(v14 + 16);
  v55 = v98;
  (v54)(v98, a1, a2);
  (v54)(v93, v55, a2);
  v56 = swift_dynamicCast();
  v57 = v96;
  if (v56)
  {
    sub_22BB336D0(v13, 0, 1, v29);
    v58 = v13;
    v59 = v88;
    sub_22BB6F6A4(v58, v88);
    sub_22BB6F6A4(v59, v57);
  }

  else
  {
    sub_22BB336D0(v13, 1, 1, v29);
    sub_22BB6B75C(v13, &qword_27D8E3C80, &qword_22BDC0FB8);
    v60 = *(v95 + 8);
    v61 = v57 + *(v29 + 56);
    sub_22BDB9D94();
    sub_22BDB9E54();
    sub_22BB38AB8();
    v54();
    *v57 = sub_22BDB9E64();
    sub_22BB38AB8();
    v54();
    v93 = sub_22BBE6DE0(&qword_27D8E3C88, &qword_22BDC0FC8);
    if (swift_dynamicCast())
    {
      sub_22BB36524();
      sub_22BB2F434();
      v62 = swift_allocObject();
      sub_22BB382E8(v99, v62 + 16);
      v63 = sub_22BCA3274;
    }

    else
    {
      sub_22BB30CD4();
      sub_22BB6B75C(v99, &qword_27D8E3C90, &qword_22BDC0FD0);
      swift_getDynamicType();
      v64 = sub_22BDBB8F4();
      v65 = a2;
      v67 = v66;
      sub_22BB322B0();
      v62 = swift_allocObject();
      *(v62 + 16) = v64;
      *(v62 + 24) = v67;
      a2 = v65;
      v63 = sub_22BCA2E50;
    }

    v57[1] = v63;
    v57[2] = v62;
    v68 = v94;
    sub_22BB38AB8();
    v54();
    v69 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v70 = swift_allocObject();
    v71 = v95;
    *(v70 + 16) = a2;
    *(v70 + 24) = v71;
    (*(v14 + 32))(v70 + v69, v68, a2);
    v57[3] = sub_22BCA3110;
    v57[4] = v70;
    sub_22BB38AB8();
    v54();
    sub_22BBE6DE0(&qword_27D8E3C98, &qword_22BDC0FD8);
    if (swift_dynamicCast())
    {
      sub_22BB36524();
      sub_22BB2F434();
      v72 = swift_allocObject();
      sub_22BB382E8(v99, v72 + 16);
      v73 = sub_22BCA326C;
    }

    else
    {
      sub_22BB30CD4();
      sub_22BB6B75C(v99, &qword_27D8E3CA0, &qword_22BDC0FE0);
      (v54)(v87, v98, a2);
      if (!swift_dynamicCast())
      {
        sub_22BB30CD4();
        sub_22BB6B75C(v99, &qword_27D8E3C90, &qword_22BDC0FD0);
        swift_getDynamicType();
        v74 = sub_22BDBB8F4();
        v76 = v75;
        sub_22BB322B0();
        v77 = swift_allocObject();
        *(v77 + 16) = v74;
        *(v77 + 24) = v76;
        v57[5] = sub_22BCA31C0;
        v57[6] = v77;
        goto LABEL_14;
      }

      sub_22BB36524();
      sub_22BB2F434();
      v72 = swift_allocObject();
      sub_22BB382E8(v99, v72 + 16);
      v73 = sub_22BCA321C;
    }

    v57[5] = v73;
    v57[6] = v72;
  }

LABEL_14:
  v78 = v97;
  sub_22BB6F6A4(v57, v97);
  (*(v14 + 8))(v98, a2);
  v79 = type metadata accessor for DefaultEventHandler();
  sub_22BB34ED4(v79);
  v100[0] = sub_22BB6E934(v78);
  sub_22BB33CB8();
  sub_22BB6E87C(v80, v81);
  return sub_22BDB9EC4();
}

uint64_t sub_22BB6F5C4()
{
  sub_22BB30474(*(v0 + 16));
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22BB6F640()
{
  sub_22BB32FA4((v0 + 16));
  sub_22BB2F434();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BB6F6A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3C40, &qword_22BDC0FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BB6F738(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC23IntelligenceFlowRuntime19DefaultEventHandler_subscriptionQueue);
  sub_22BB69088(a1, v9);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  sub_22BB382E8(v9, v4 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_22BB6BFC8;
  *(v5 + 24) = v4;
  aBlock[4] = sub_22BB6BFFC;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22BB6BFD4;
  aBlock[3] = &unk_283F76380;
  v6 = _Block_copy(aBlock);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22BB6F8A8()
{
  v1 = *(v0 + 16);

  sub_22BB32FA4((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22BB6F8FC()
{
  v2 = *(v0 - 224);

  return swift_allocObject();
}

void sub_22BB6F978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = *(v17 + 312);
  v19 = *(a17 + 296);
  v20 = *(a17 + 288);
}

uint64_t sub_22BB6FA18(uint64_t a1, uint64_t (*a2)(unint64_t))
{
  v4 = sub_22BB6FD88(a1, a2);
  v5 = *(a1 + 16);

  return sub_22BB6FB38(v4, v5, a1, a2);
}

void sub_22BB6FA98()
{
  v1 = *(v0 - 144);
  STACK[0x458] = *(v1 + 4464);
  v2 = *(v1 + 4448);
}

uint64_t sub_22BB6FAB0()
{

  return swift_dynamicCast();
}

void sub_22BB6FAD4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void sub_22BB6FAF4()
{
  v2 = v0[53];
  v3 = v0[50];
  v1 = v0[47];
  v4 = v0[49];
  v5 = v0[48];
}

uint64_t sub_22BB6FB38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t))
{
  v6 = a2;
  if (a2 >= result)
  {
    if (result == a2)
    {
      return 0;
    }

    v7 = 1;
    v8 = a2;
    v6 = result;
  }

  else
  {
    v7 = -1;
    v8 = result;
  }

  v9 = 0;
  v10 = *(a3 + 16);
  while (2)
  {
    v11 = __OFADD__(v9, v7);
    v9 += v7;
    if (v11)
    {
LABEL_19:
      __break(1u);
    }

    else if (v6 != v10)
    {
      while (1)
      {
        v12 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        if (v12 == v10)
        {
          break;
        }

        if (v12 >= v10)
        {
          goto LABEL_18;
        }

        v13 = *(type metadata accessor for EventPayloadWithPreassignedID(0) - 8);
        result = a4(a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v12);
        ++v6;
        if (result)
        {
          v6 = v12;
          goto LABEL_15;
        }
      }

      v6 = v10;
LABEL_15:
      if (v6 != v8)
      {
        continue;
      }

      return v9;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BB6FC94()
{
  v2 = v0[312];
  v3 = v0[568];
  v4 = v0[544];

  return sub_22BB74044(v3, v2, v4);
}

uint64_t sub_22BB6FD00()
{
  v1 = STACK[0x358];

  return swift_arrayDestroy();
}

uint64_t sub_22BB6FD20(void *a1)
{
  sub_22BB69FEC(a1, v1);

  return sub_22BDB7604();
}

uint64_t sub_22BB6FD50()
{
  *(v1 + 1352) = sub_22BB89C7C;
  *(v1 + 1360) = v0;

  return sub_22BB67984(v1 + 1352, v1 + 1584, v1 + 1744, v1 + 1752);
}

uint64_t sub_22BB6FD88(uint64_t a1, uint64_t (*a2)(unint64_t))
{
  v4 = 0;
  v5 = *(a1 + 16);
  while (v5 != v4)
  {
    v6 = *(type metadata accessor for EventPayloadWithPreassignedID(0) - 8);
    if (a2(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4))
    {
      return v4;
    }

    ++v4;
  }

  return v5;
}

uint64_t sub_22BB6FE48()
{
  v3 = v0[202];
  v4 = v0[171];
  v5 = v0[165];
  v6 = v0[164];
  *(v1 - 192) = v0[163];
  v7 = v0[156];
  v8 = v0[155];
  v9 = v0[153];
  *(v1 - 152) = v0[133];
  *(v1 - 144) = v4;
  v10 = v0[131];
  *(v1 - 168) = v0[130];
  *(v1 - 160) = v6;
  v11 = v0[80];
  v12 = v0[77];
  *(v1 - 136) = v0[76];
  *(v1 - 128) = v11;
  *(v1 - 112) = v0[74];
  *(v1 - 104) = v9;
  v13 = v0[70];
  *(v1 - 120) = v0[69];
  v14 = v0[67];
  v15 = v0[65];
  *(v1 - 184) = v0[64];
  *(v1 - 176) = v14;
}

uint64_t sub_22BB6FEDC(uint64_t result)
{
  *(result + 16) = sub_22BB8AE80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB6FF00()
{
  *(v1 - 116) = v0;

  return sub_22BDBB514();
}

void sub_22BB6FF1C()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

uint64_t sub_22BB6FF88()
{
  v8 = *(v0 - 248);
  v2 = *(v0 - 176);
  v3 = STACK[0x3E8];
  v4 = STACK[0x3D8];
  v5 = *(v0 - 224);
  v6 = *(v0 - 240);

  return sub_22BDB5D94();
}

uint64_t sub_22BB6FFCC()
{
  result = v0[379];
  v2 = v0[378];
  v3 = v0[350];
  v4 = v0[349];
  v5 = *(v0[374] + 48);
  return result;
}

void sub_22BB6FFE8()
{
  v2 = v0[401];
  *(v1 - 168) = v0[402];
  *(v1 - 160) = v2;
  *(v1 - 152) = v0[400];
}

uint64_t sub_22BB70000()
{
  v2 = *(v0 - 144);
  v3 = v2[490];
  v4 = v2[480];
  v5 = v2[479];
  v6 = STACK[0x440];
}

void sub_22BB70028()
{
  STACK[0x350] = v2;
  STACK[0x358] = v0;
  STACK[0x360] = v1;
  v4 = *(v3 - 144);
  v5 = v4[541];
  v6 = v4[511];
  v7 = v4[478];
  v8 = v4[312];
  v9 = v5[1];
  *(v3 - 168) = *v5;
  v4[571] = v9;
}

uint64_t sub_22BB70090()
{

  return swift_slowAlloc();
}

uint64_t sub_22BB700AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

void sub_22BB700DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1(&v12);
  sub_22BD648E4(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_22BB7012C(uint64_t a1, uint64_t a2)
{

  return sub_22BBBEE60(v2, a2, v3, v4);
}

uint64_t sub_22BB70160(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB70178()
{
  v2 = *(v0 + 496);
  v3 = *(v0 + 248);

  return _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
}

unint64_t sub_22BB70194()
{
  result = qword_281428A48;
  if (!qword_281428A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428A48);
  }

  return result;
}

uint64_t sub_22BB701E8()
{
  v2 = *(v0 + 2496);
}

uint64_t sub_22BB7021C()
{
  v2 = *(v0 + 4796);
  v3 = *(v0 + 2768);
  v4 = *(v0 + 2760);
  v5 = *(v0 + 2752);

  return sub_22BDB5D04();
}

uint64_t sub_22BB70270()
{
  v2 = *(v0 - 176);
  v3 = *(v0 - 232);

  return sub_22BDBAF34();
}

uint64_t sub_22BB70294()
{
  v3 = *(v1 + 104);
  result = v0;
  v5 = *(v2 - 248);
  v6 = *(v2 - 256);
  return result;
}

void sub_22BB702B4()
{
  v1 = v0[479];
  v2 = v0[407];
  v3 = v0[404];
  v4 = v0[403];
}

void sub_22BB70390()
{
  v2 = v0[207];
  v3 = v0[206];
  v4 = v0[205];
  v5 = v0[204];
  v6 = v0[203];
  v7 = v0[202];
  v8 = v0[201];
  v9 = v0[200];
  v10 = v0[199];
  v11 = v0[198];
  v12 = v0[197];
  v13 = v0[196];
  v14 = v0[195];
  v15 = v0[192];
  v16 = v0[191];
  v17 = v0[188];
  v18 = v0[187];
  v19 = v0[186];
  v20 = v0[185];
  v21 = v0[184];
  v22 = v0[181];
  v23 = v0[180];
  v24 = v0[179];
  v25 = v0[178];
  v1 = v0[177];
  v26 = v0[170];
}

uint64_t sub_22BB70434(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = sub_22BB89C08;
  result = *(v3 - 152);
  *(v2 + 40) = result;
  *(v2 + 48) = sub_22BB89C08;
  return result;
}

uint64_t sub_22BB70488()
{
  v1 = v0[419];
  v2 = v0[414];
  v3 = *(v0[415] + 32);
  return v0[417];
}

uint64_t sub_22BB704B0()
{
  v3 = *(v0 + 4352);
  v4 = *(v0 + 2496);
  v5 = *(v1 - 152);

  return sub_22BB74044(v5, v4, v3);
}

void sub_22BB704CC(void *a1@<X8>)
{
  v1 = a1[403];
  v2 = a1[391];
  v3 = a1[389];
  v4 = a1[388];
  v5 = a1[382];
}

void sub_22BB70530()
{
  STACK[0x468] = v0[473];
  v2 = v0[466];
  *(v1 - 256) = v0[465];
  *(v1 - 248) = v2;
}

uint64_t sub_22BB70588@<X0>(uint64_t a1@<X8>)
{

  return sub_22BB67984(a1 + 1080, a1 + 2104, a1 + 2072, a1 + 2064);
}

void sub_22BB705A8()
{
  sub_22BB30F94();
  v2 = v1;
  v3 = sub_22BDB77D4();
  v4 = sub_22BB30444(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v11 = v10 - v9;
  sub_22BDB63E4();

  v12 = sub_22BDB77C4();
  sub_22BDBB134();
  sub_22BB93938();
  if (os_log_type_enabled(v12, v13))
  {
    sub_22BB3B778();
    v25 = sub_22BB3E030();
    *v3 = 136446466;
    v14 = v2 + qword_28142AC88;
    sub_22BDB5624();
    sub_22BC54D78();

    v15 = sub_22BB3A19C();
    sub_22BB32EE0(v15, v16, v17);
    sub_22BB36C3C();

    *(v3 + 4) = v14;
    *(v3 + 12) = 2082;
    sub_22BB70194();
    v18 = sub_22BDBB684();
    v20 = sub_22BB32EE0(v18, v19, &v25);

    *(v3 + 14) = v20;
    _os_log_impl(&dword_22BB2C000, v12, v0, "[SessionCoordinator %{public}s] | [TX %{public}s] Finished preprocessing transaction.", v3, 0x16u);
    sub_22BB8ABD4();
    sub_22BB38680();
    sub_22BB30458();

    (*(v6 + 8))(v11, v3);
  }

  else
  {

    v21 = *(v6 + 8);
    v22 = sub_22BC54704();
    v24(v22, v23);
  }

  sub_22BB314EC();
}

uint64_t sub_22BB707CC()
{
  STACK[0x458] = v1;
  *(v3 - 176) = ~v0;
  v4 = v2[408];
  result = v2[407];
  v6 = v2[403];
  *(v3 - 160) = *(v2[404] + 32);
  return result;
}

uint64_t sub_22BB707F8()
{

  return swift_beginAccess();
}

uint64_t sub_22BB70810()
{
  v1 = *(*(v0 - 160) + 8);
  v3 = *(v0 - 144);
  return *(v0 - 136);
}

void sub_22BB70820()
{
  sub_22BB30F94();
  v43 = v1;
  v41[2] = v3;
  v42 = v2;
  v41[1] = v4;
  v5 = sub_22BDB77D4();
  v6 = sub_22BB30444(v5);
  v44 = v7;
  v45 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v12 = v11 - v10;
  v13 = sub_22BBE6DE0(&qword_27D8E67E8, &qword_22BDCF4B0);
  sub_22BB2F0C8(v13);
  v15 = *(v14 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  v18 = v41 - v17;
  v19 = sub_22BDB5F24();
  v20 = sub_22BB2F0C8(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BB30C74();
  MEMORY[0x28223BE20](v23);
  v24 = sub_22BBE6DE0(&qword_27D8E6410, &unk_22BDCE250);
  sub_22BB2F0C8(v24);
  v26 = *(v25 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v27);
  sub_22BB3721C();
  sub_22BB3ADA8();
  sub_22BC5E5C4();
  sub_22BB70C90();
  sub_22BB33618();
  sub_22BB32564();
  sub_22BB33618();
  v28 = type metadata accessor for SessionSwitchboard.SessionInfo();
  v29 = v28[5];
  sub_22BC5E5C4();
  *&v18[v28[6]] = MEMORY[0x277D84F90];
  v18[v28[7]] = v43;
  *&v18[v28[8]] = v42;
  sub_22BB336D0(v18, 0, 1, v28);
  sub_22BB31A60();
  swift_beginAccess();

  sub_22BB712E8();
  swift_endAccess();
  sub_22BDB63E4();
  sub_22BB33618();
  v30 = sub_22BDB77C4();
  v31 = sub_22BDBB134();
  if (os_log_type_enabled(v30, v31))
  {
    sub_22BB354D0();
    v32 = swift_slowAlloc();
    sub_22BB2F440();
    v33 = swift_slowAlloc();
    v46 = v33;
    *v32 = 136446210;
    v34 = MEMORY[0x23189FEB0]();
    v36 = v35;
    sub_22BB309FC();
    sub_22BB34698();
    v37 = sub_22BB6BD90();
    sub_22BB32EE0(v37, v36, v38);
    sub_22BB3935C();

    *(v32 + 4) = v34;
    _os_log_impl(&dword_22BB2C000, v30, v31, "Session %{public}s registered.", v32, 0xCu);
    sub_22BB32FA4(v33);
    v39 = sub_22BB94EFC();
    MEMORY[0x2318A6080](v39);
    v40 = sub_22BB6BC10();
    MEMORY[0x2318A6080](v40);
  }

  else
  {

    sub_22BB309FC();
    sub_22BB34698();
  }

  (*(v44 + 8))(v12, v45);
  sub_22BB58728(v0, &qword_27D8E6410, &unk_22BDCE250);
  sub_22BB314EC();
}

uint64_t sub_22BB70BB0(uint64_t a1, uint64_t a2)
{

  return sub_22BBBEE60(v2, a2, v3, v4);
}

uint64_t sub_22BB70BD8()
{
  v2 = *(v0 - 216);
  v3 = *(v0 - 184);

  return sub_22BDBB5D4();
}

uint64_t sub_22BB70C1C(float a1)
{
  *v1 = a1;

  return sub_22BDB9B24();
}

__n128 sub_22BB70C60@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1 * v2;
  result = *v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  v7 = *(v3 + 48);
  return result;
}

uint64_t sub_22BB70C74()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[68];
  v4 = v0[67];
  result = v0[66];
  v6 = v0[59];
  return result;
}

void sub_22BB70C90()
{
  sub_22BB30F94();
  sub_22BB35760();
  v0 = sub_22BDB77D4();
  v1 = sub_22BB30444(v0);
  v25[4] = v2;
  v25[5] = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  sub_22BB345CC();
  v5 = sub_22BB2F12C();
  v7 = sub_22BBE6DE0(v5, v6);
  sub_22BB2F0C8(v7);
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  v13 = sub_22BDB5984();
  v14 = sub_22BB30444(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BB30C74();
  MEMORY[0x28223BE20](v19);
  v21 = v25 - v20;
  sub_22BB30AE4();
  sub_22BC5E5C4();
  sub_22BB35204();
  if (sub_22BB3AA28(v22, v23, v24) == 1)
  {
    sub_22BB58728(v12, &qword_27D8E6410, &unk_22BDCE250);
  }

  else
  {
    (*(v16 + 32))(v21, v12, v13);
    sub_22BB7102C();
    (*(v16 + 8))(v21, v13);
  }

  sub_22BB314EC();
}

uint64_t sub_22BB7102C()
{
  sub_22BB31B88();
  swift_beginAccess();
  v1 = *(v0 + 16);

  v2 = sub_22BB710E4();

  if (v2)
  {
    sub_22BBB7088();
    swift_willThrowTypedImpl();
  }

  return 6;
}

uint64_t sub_22BB710E4()
{
  sub_22BB37860();
  v29 = v3;
  v28 = sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0);
  sub_22BB2F330(v28);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = v2 + 64;
  v10 = 1 << *(v2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v2 + 64);
  v13 = (v10 + 63) >> 6;
  v30 = v2;

  v15 = 0;
  while (v12)
  {
    v31 = v0;
LABEL_10:
    v17 = __clz(__rbit64(v12)) | (v15 << 6);
    v18 = v30;
    v19 = *(v30 + 48);
    v20 = sub_22BDB5F24();
    sub_22BB2F0C8(v20);
    sub_22BB6A1A8(v19 + *(v21 + 72) * v17, v8, MEMORY[0x277D1D2C8]);
    v22 = *(v18 + 56);
    v23 = type metadata accessor for SessionSwitchboard.SessionInfo();
    sub_22BB2F0C8(v23);
    sub_22BB6A1A8(v22 + *(v24 + 72) * v17, &v8[*(v28 + 48)], type metadata accessor for SessionSwitchboard.SessionInfo);
    v25 = v31;
    v26 = v29(v8);
    v0 = v25;
    result = sub_22BB58728(v8, &qword_27D8E6760, &unk_22BDCE9D0);
    if (v25)
    {
      goto LABEL_14;
    }

    v12 &= v12 - 1;
    if (v26)
    {
      v1 = 1;
LABEL_14:

      return v1 & 1;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      v1 = 0;
      goto LABEL_14;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v31 = v0;
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BB712E8()
{
  sub_22BB35F54();
  v2 = sub_22BBE6DE0(&qword_27D8E67E8, &qword_22BDCF4B0);
  sub_22BB2F0C8(v2);
  v4 = *(v3 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB334AC();
  v6 = type metadata accessor for SessionSwitchboard.SessionInfo();
  v7 = sub_22BB2F330(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  sub_22BB31580();
  v10 = sub_22BB3A190();
  if (sub_22BB3AA28(v10, v11, v12) == 1)
  {
    v13 = sub_22BB345A8();
    sub_22BB58728(v13, v14, &qword_22BDCF4B0);
    sub_22BBAE0E0();
    sub_22BB312D4();
    return sub_22BB58728(v1, &qword_27D8E67E8, &qword_22BDCF4B0);
  }

  else
  {
    sub_22BB345A8();
    sub_22BB5005C();
    v16 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    v17 = sub_22BB38298();
    sub_22BB71420(v17, v18);
    *v0 = v19;
    return sub_22BB312D4();
  }
}

void sub_22BB71420(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22BDB5F24();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = sub_22BB67B60(a2, MEMORY[0x277D1D2C0], sub_22BB67BE0);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  sub_22BBE6DE0(&qword_27D8E68D0, &qword_22BDCFBD8);
  if ((sub_22BDBB4A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v3;
  v16 = sub_22BB67B60(a2, MEMORY[0x277D1D2C0], sub_22BB67BE0);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_10:
    sub_22BDBB744();
    __break(1u);
    return;
  }

  v13 = v16;
LABEL_5:
  v18 = *v3;
  if (v14)
  {
    v19 = *(v18 + 56);
    v20 = *(*(type metadata accessor for SessionSwitchboard.SessionInfo() - 8) + 72);
    sub_22BD85988();
  }

  else
  {
    sub_22BB67A00();
    sub_22BD7DCB8(v13, v9, a1, v18);
  }
}

void sub_22BB7163C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  sub_22BB34428(a1, a2, a3, a4);
  v10 = *(v9 + 48);
  v12 = v11(0);
  sub_22BB2F0C8(v12);
  v14 = *(v13 + 72);
  sub_22BB38958();
  v15 = *(a4 + 56);
  v16 = a7(0);
  sub_22BB2F0C8(v16);
  v18 = *(v17 + 72);
  sub_22BB38958();
  sub_22BB39384();
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v19;
  }
}

uint64_t sub_22BB71700()
{
  v1 = sub_22BDB43E4();
  sub_22BB30444(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_22BB717B8(uint64_t result, uint64_t a2)
{
  v2 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*(a2 + 16) >= v2)
  {
    v3 = *(sub_22BDB9B54() - 8);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_22BB71858()
{
  sub_22BB30F94();
  v2 = v1;
  v3 = sub_22BBE6DE0(&qword_27D8E6320, &qword_22BDCDD00);
  sub_22BB2F0C8(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  v8 = &v64 - v7;
  v9 = type metadata accessor for StandardPlanner.StandardPlannerAction(0);
  v10 = sub_22BB2F330(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30C74();
  MEMORY[0x28223BE20](v13);
  v15 = &v64 - v14;
  v16 = sub_22BDB9B14();
  v17 = sub_22BB30444(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB30C74();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  sub_22BB92338();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v64 - v28;
  v30 = *(v2 + 16);
  if (v30)
  {
    v65 = v27;
    v31 = v30 - 1;
    v32 = sub_22BDB9B54();
    sub_22BB30434(v32);
    v35 = v2 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v34 + 72) * v31;
    v36 = v65;
    sub_22BDB9B24();
    (*(v19 + 32))(v29, v0, v36);
    (*(v19 + 16))(v24, v29, v36);
    sub_22BB72FA8(v24, v8);
    sub_22BB31814(v8, 1, v9);
    if (v37)
    {
      (*(v19 + 8))(v29, v36);
      sub_22BB58728(v8, &qword_27D8E6320, &qword_22BDCDD00);
    }

    else
    {
      sub_22BBBE2AC();
      sub_22BBC0AFC();
      sub_22BB32E04();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      switch(EnumCaseMultiPayload)
      {
        case 1:
          sub_22BDB8424();
          goto LABEL_11;
        case 2:
          sub_22BDB8424();
          sub_22BB32434();
          sub_22BBC0BB8(v15, v39);
          v40 = sub_22BB330E0();
          v41(v40);
          break;
        case 3:
        case 5:
          sub_22BDB83D4();
          goto LABEL_15;
        case 4:
          sub_22BDB83E4();
          goto LABEL_15;
        case 6:
          sub_22BDB83F4();
LABEL_15:
          sub_22BBE6DE0(&qword_27D8E62C8, &unk_22BDCD9F0);
          v55 = sub_22BDB9254();
          sub_22BB30444(v55);
          v57 = v56;
          v59 = *(v58 + 72);
          sub_22BB8D274();
          v60 = swift_allocObject();
          *(v60 + 16) = xmmword_22BDBCBD0;
          (*(v57 + 104))(v60 + v0, *MEMORY[0x277D1E308], v55);
          sub_22BB32434();
          sub_22BBC0BB8(v15, v61);
          v62 = sub_22BB330E0();
          v63(v62);
          break;
        case 7:
          sub_22BB32434();
          sub_22BBC0BB8(v15, v52);
          v53 = sub_22BB330E0();
          v54(v53);
          break;
        default:
          sub_22BDB83C4();
LABEL_11:
          sub_22BBE6DE0(&qword_27D8E62C8, &unk_22BDCD9F0);
          v42 = sub_22BDB9254();
          sub_22BB30444(v42);
          v44 = v43;
          v46 = *(v45 + 72);
          sub_22BB8D274();
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_22BDBCBD0;
          (*(v44 + 104))(v47 + v0, *MEMORY[0x277D1E308], v42);
          sub_22BBC0BB8(v15, type metadata accessor for StandardPlanner.StandardPlannerAction);
          v48 = sub_22BB330E0();
          v49(v48);
          v50 = sub_22BB34FB8();
          sub_22BBC0BB8(v50, v51);
          break;
      }
    }
  }

  sub_22BB314EC();
}

void sub_22BB71DA0()
{
  sub_22BB3B094();
  v2 = v1;
  v3 = v0;
  if ((v1 & 1) == 0)
  {
    v4 = v1 >> 1;
    v5 = (v1 >> 1) - v0;
    if (!__OFSUB__(v1 >> 1, v0))
    {
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_11:
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_14;
  }

  sub_22BDBB6F4();
  swift_unknownObjectRetain_n();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);

  v4 = v2 >> 1;
  v11 = __OFSUB__(v2 >> 1, v3);
  v5 = (v2 >> 1) - v3;
  if (v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 == v5)
  {
    v12 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v12)
    {
LABEL_12:
      sub_22BB36A24();
      return;
    }

    goto LABEL_11;
  }

LABEL_15:
  swift_unknownObjectRelease();
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_4:
  sub_22BD917AC(v5, 0);
  if (v4 != v3)
  {
    v6 = *(sub_22BDB9B54() - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = *(v6 + 72);
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_22BB71F1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3 + *(v4 - 120);

  return sub_22BB325EC(v6, a2, a3);
}

uint64_t sub_22BB71F68(void *a1)
{
  sub_22BB69FEC(a1, v1);

  return sub_22BDB9B24();
}

BOOL sub_22BB71F98()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22BB71FC8(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_22BB32EE0(v4, v3, va);
}

uint64_t sub_22BB7201C()
{
  v2 = *(*(v0 + 848) + 40);

  return sub_22BDBB804();
}

uint64_t sub_22BB72050()
{
  sub_22BB336D0(v2, 0, 1, v1);
  v4 = *(v3 + 32);
  return v0;
}

uint64_t sub_22BB720E0()
{
  v1 = *(*(v0 - 144) + 4384);
  v2 = *(*(v0 - 144) + 3232);
  v3 = *(*(v0 - 144) + 3224);
  v4 = *(*(v0 - 144) + 2496);
  return *(*(v0 - 144) + 3248);
}

uint64_t sub_22BB72114()
{
  *(v1 - 88) = v0;

  return swift_slowAlloc();
}

uint64_t sub_22BB72168()
{
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);

  return swift_slowAlloc();
}

uint64_t sub_22BB72224()
{
  v2 = v0[38];
  v3 = v0[30];
  v4 = v0[28];

  return sub_22BDB9B24();
}

uint64_t sub_22BB7226C(uint64_t a1)
{
  v121 = sub_22BDB90B4();
  v2 = sub_22BB30444(v121);
  v142 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v120 = v7 - v6;
  v133 = sub_22BDB5404();
  v8 = sub_22BB30444(v133);
  v139 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v12);
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v13);
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v14);
  v116 = v113 - v15;
  v115 = sub_22BDB8D84();
  v16 = sub_22BB30444(v115);
  v138 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v114 = v21 - v20;
  v22 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = v113 - v24;
  v131 = sub_22BDB87F4();
  v26 = sub_22BB30444(v131);
  v137 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BB30574();
  v32 = v31 - v30;
  v33 = sub_22BDB9B14();
  v34 = sub_22BB30444(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v34);
  v41 = v113 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = v113 - v42;
  v147 = sub_22BDB9B54();
  v44 = sub_22BB30444(v147);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BB30574();
  v49 = v48 - v47;
  v50 = 0;
  v51 = *(a1 + 16);
  v143 = a1;
  v144 = v51;
  v141 = v52 + 16;
  v146 = (v36 + 88);
  v140 = *MEMORY[0x277D1E798];
  v129 = *MEMORY[0x277D1E7C0];
  v145 = (v36 + 8);
  v134 = v36 + 96;
  v113[3] = v138 + 32;
  v113[2] = v138 + 8;
  v127 = v139 + 88;
  v128 = (v139 + 32);
  v126 = *MEMORY[0x277D1CBF0];
  v125 = *MEMORY[0x277D1CBE8];
  v124 = v139 + 8;
  v123 = v137 + 32;
  v113[1] = v142 + 8;
  v122 = v137 + 8;
  LODWORD(v138) = *MEMORY[0x277D1E718];
  LODWORD(v137) = *MEMORY[0x277D1E860];
  v142 = v52;
  v139 = v52 + 8;
  v136 = *MEMORY[0x277D1E868];
  v132 = v25;
  v135 = v41;
  v130 = v32;
  while (1)
  {
    if (v144 == v50)
    {
      return 0;
    }

    (*(v142 + 16))(v49, v143 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v50, v147);
    sub_22BDB9B24();
    v53 = *v146;
    v54 = (*v146)(v43, v33);
    if (v54 == v140)
    {
      v55 = sub_22BB37810();
      v56(v55);
      sub_22BB30F88(&v149);
      v58 = v130;
      v57 = v131;
      v59(v130, v43, v131);
      sub_22BDB87D4();
      v60 = sub_22BDB43E4();
      if (sub_22BB3AA28(v25, 1, v60) == 1)
      {
        sub_22BB30F88(&v148);
        v61(v58, v57);
        sub_22BB325EC(v25, &qword_27D8E3218, &qword_22BDBE390);
      }

      else
      {
        sub_22BB325EC(v25, &qword_27D8E3218, &qword_22BDBE390);
        v80 = v57;
        v81 = v120;
        sub_22BDB87E4();
        v82 = v118;
        sub_22BDB9094();
        sub_22BB30F88(&v144);
        v83(v81, v121);
        sub_22BB30F88(&v148);
        v84(v58, v80);
        v85 = v119;
        v86 = v133;
        (*v128)(v119, v82, v133);
        v87 = sub_22BB2F564();
        v89 = v88(v87);
        sub_22BB30F88(&v150);
        v90 = v85;
        v25 = v132;
        v91(v90, v86);
        sub_22BB38E48();
        v93 = *(v92 - 256);
        if (v79 || v89 == v93)
        {
          goto LABEL_28;
        }
      }
    }

    else if (v54 == v129)
    {
      v62 = sub_22BB37810();
      v63(v62);
      sub_22BB30F88(&v146);
      v64 = v114;
      v65 = v115;
      v66(v114, v43, v115);
      v67 = v116;
      sub_22BDB8D44();
      sub_22BB30F88(&v145);
      v68(v64, v65);
      v69 = v117;
      v70 = v67;
      v71 = v133;
      (*v128)(v117, v70, v133);
      v72 = sub_22BB2F564();
      v74 = v73(v72);
      sub_22BB30F88(&v150);
      v75 = v69;
      v25 = v132;
      v76(v75, v71);
      sub_22BB38E48();
      v78 = *(v77 - 256);
      v79 = v79 || v74 == v78;
      if (v79)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v95 = sub_22BB37810();
      v96(v95);
    }

    sub_22BDB9B24();
    v97 = sub_22BB33728();
    v98 = (v53)(v97);
    if (v98 == v138)
    {
      break;
    }

    if (v98 == v137 || v98 == v136)
    {
      goto LABEL_28;
    }

    v100 = *v145;
    v101 = sub_22BB33728();
    v102(v101);
    v103 = sub_22BB3A70C();
    v104(v103);
    ++v50;
  }

  v106 = *v145;
  v107 = sub_22BB33728();
  v108(v107);
LABEL_28:
  v109 = sub_22BB3A70C();
  v110(v109);
  v105 = *v113[0];
  v111 = *(v113[0] + 8);

  return v105;
}

void sub_22BB72B1C()
{
  v1 = *(v0 + 40);
  sub_22BB97200();
  sub_22BDBABA4();
  v2 = sub_22BB3AC54();
  sub_22BB954FC(v2, v3, v4);
  sub_22BB588E0();
}

uint64_t SessionPersistenceManager.write(initiatedParticipant:initiatedSpanId:postingParticipant:postingSpanId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v30[0] = a6;
  v12 = sub_22BDB7574();
  v13 = sub_22BB30444(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v20 = v19 - v18;
  v21 = type metadata accessor for SessionPersistenceManager();
  sub_22BC7E3C4(v7 + *(v21 + 24), &v31, &qword_27D8E62F8, &qword_22BDCDB90);
  if (!v32)
  {
    return sub_22BB58728(&v31, &qword_27D8E62F8, &qword_22BDCDB90);
  }

  v22 = sub_22BB382E8(&v31, v33);
  MEMORY[0x28223BE20](v22);
  v30[-8] = v7;
  v30[-7] = a3;
  v30[-6] = a1;
  v30[-5] = a2;
  v30[-4] = v30[0];
  v30[-3] = a4;
  v30[-2] = v23;
  v24 = sub_22BDB76D4();
  v25 = *(v7 + *(v21 + 28));
  MEMORY[0x28223BE20](v24);
  v30[-2] = v20;
  if (sub_22BBBFD28(sub_22BBBFD08, &v30[-4], v26))
  {
    v27 = v34;
    v28 = v35;
    sub_22BB69FEC(v33, v34);
    (*(v28 + 8))(v20, v27, v28);
  }

  (*(v15 + 8))(v20, v12);
  return sub_22BB32FA4(v33);
}

uint64_t sub_22BB72DE4(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

BOOL sub_22BB72E44()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22BB72E68()
{
  *(v1 + 48) = v0;

  return type metadata accessor for SessionControlActor();
}

uint64_t sub_22BB72EB4()
{
}

uint64_t sub_22BB72EE4(uint64_t result)
{
  *(v1 - 256) = result;
  v3 = *(v2 + 56);
  return result;
}

uint64_t sub_22BB72EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_22BB32EE0(v10, v11, va);
}

uint64_t sub_22BB72F2C()
{
  result = *(v1 + 240);
  v3 = *(v0 - 8);
  return result;
}

__n128 sub_22BB72F5C(__n128 *a1)
{
  result = *(v2 - 192);
  a1[1] = result;
  a1[2].n128_u64[0] = sub_22BB89C08;
  a1[2].n128_u64[1] = v1;
  return result;
}

uint64_t sub_22BB72FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = sub_22BDB8B44();
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v3);
  v75 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDB8634();
  v81 = *(v6 - 8);
  v82 = v6;
  v7 = *(v81 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v74 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v80 = &v72 - v10;
  v11 = sub_22BBE6DE0(&unk_27D8E69F0, &qword_22BDCDD08);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v86 = &v72 - v13;
  v85 = sub_22BDB92B4();
  v79 = *(v85 - 8);
  v14 = *(v79 + 64);
  MEMORY[0x28223BE20](v85);
  v78 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22BBE6DE0(&qword_27D8E6A10, &qword_22BDCDD10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v72 - v18;
  v20 = sub_22BDB8FB4();
  v84 = *(v20 - 8);
  v21 = *(v84 + 64);
  MEMORY[0x28223BE20](v20);
  v83 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22BDB9624();
  v24 = *(v23 - 8);
  v87 = v23;
  v88 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22BDB9B14();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for StandardPlanner.StandardPlannerAction(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v32, a1, v28);
  v37 = (*(v29 + 88))(v32, v28);
  if (v37 == *MEMORY[0x277D1E700])
  {
    v38 = *(v29 + 8);
    v38(a1, v28);
    swift_storeEnumTagMultiPayload();
    v38(v32, v28);
    goto LABEL_19;
  }

  v73 = a1;
  if (v37 == *MEMORY[0x277D1E858])
  {
    (*(v29 + 96))(v32, v28);
    v39 = v87;
    v40 = v88;
    (*(v88 + 32))(v27, v32, v87);
    sub_22BDB95B4();
    if (sub_22BB3AA28(v19, 1, v20) == 1)
    {
      sub_22BB58728(v19, &qword_27D8E6A10, &qword_22BDCDD10);
      v41 = v86;
      sub_22BDB95C4();
      v42 = v85;
      if (sub_22BB3AA28(v41, 1, v85) == 1)
      {
        sub_22BB58728(v41, &unk_27D8E69F0, &qword_22BDCDD08);
        v43 = v80;
        sub_22BDB8DA4();
        v45 = v81;
        v44 = v82;
        (*(v81 + 88))(v43, v82);
        v46 = *MEMORY[0x277D1DDC8];
        *MEMORY[0x277D1DD78];
        swift_storeEnumTagMultiPayload();
        (*(v45 + 8))(v43, v44);
        (*(v29 + 8))(v73, v28);
        (*(v88 + 8))(v27, v39);
        goto LABEL_19;
      }

      (*(v29 + 8))(v73, v28);
      (*(v88 + 8))(v27, v39);
      v53 = v78;
      v54 = *(v79 + 32);
      v54(v78, v41, v42);
      v54(v36, v53, v42);
      type metadata accessor for StandardPlanner.StandardPlannerAction.PlanGenerationAction(0);
    }

    else
    {
      (*(v29 + 8))(v73, v28);
      (*(v40 + 8))(v27, v39);
      v50 = v83;
      v51 = *(v84 + 32);
      v51(v83, v19, v20);
      v51(v36, v50, v20);
      type metadata accessor for StandardPlanner.StandardPlannerAction.PlanGenerationAction(0);
    }

    goto LABEL_17;
  }

  v47 = v37 == *MEMORY[0x277D1E6F8] || v37 == *MEMORY[0x277D1E708];
  v48 = v73;
  if (v47)
  {
    goto LABEL_12;
  }

  if (v37 == *MEMORY[0x277D1E770])
  {
    (*(v29 + 8))(v73, v28);
    (*(v29 + 96))(v32, v28);
    v52 = sub_22BDB97A4();
    (*(*(v52 - 8) + 32))(v36, v32, v52);
    goto LABEL_18;
  }

  if (v37 == *MEMORY[0x277D1E748] || v37 == *MEMORY[0x277D1E830])
  {
    goto LABEL_12;
  }

  if (v37 == *MEMORY[0x277D1E838])
  {
    v59 = *(v29 + 8);
    v59(v73, v28);
    swift_storeEnumTagMultiPayload();
    v59(v32, v28);
    goto LABEL_19;
  }

  if (v37 == *MEMORY[0x277D1E760] || v37 == *MEMORY[0x277D1E740] || v37 == *MEMORY[0x277D1E788])
  {
    goto LABEL_35;
  }

  if (v37 == *MEMORY[0x277D1E798])
  {
    goto LABEL_12;
  }

  if (v37 == *MEMORY[0x277D1E738])
  {
LABEL_35:
    v62 = *(v29 + 8);
    v62(v73, v28);
    v62(v32, v28);
    type metadata accessor for StandardPlanner.StandardPlannerAction.PlanGenerationAction(0);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    goto LABEL_18;
  }

  if (v37 == *MEMORY[0x277D1E7D8])
  {
LABEL_12:
    v49 = *(v29 + 8);
    v49(v73, v28);
    v49(v32, v28);
LABEL_18:
    swift_storeEnumTagMultiPayload();
    goto LABEL_19;
  }

  if (v37 == *MEMORY[0x277D1E808] || v37 == *MEMORY[0x277D1E768])
  {
    goto LABEL_35;
  }

  if (v37 == *MEMORY[0x277D1E720] || v37 == *MEMORY[0x277D1E850])
  {
    goto LABEL_12;
  }

  if (v37 != *MEMORY[0x277D1E778])
  {
    v71 = *(v29 + 8);
    v71(v73, v28);
    v71(v32, v28);
    v56 = 1;
    v55 = v89;
    return sub_22BB336D0(v55, v56, 1, v33);
  }

  (*(v29 + 96))(v32, v28);
  v65 = v75;
  v66 = v76;
  (*(v76 + 32))(v75, v32, v77);
  v67 = v74;
  sub_22BDB8B34();
  v69 = v81;
  v68 = v82;
  (*(v81 + 88))(v67, v82);
  v70 = *MEMORY[0x277D1DDC8];
  *MEMORY[0x277D1DD78];
  swift_storeEnumTagMultiPayload();
  (*(v69 + 8))(v67, v68);
  (*(v29 + 8))(v48, v28);
  (*(v66 + 8))(v65, v77);
LABEL_19:
  v55 = v89;
  sub_22BBBE2AC();
  v56 = 0;
  return sub_22BB336D0(v55, v56, 1, v33);
}

BOOL sub_22BB73AEC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22BB73B1C@<X0>(uint64_t a1@<X8>)
{

  return sub_22BB67984(a1 + 1048, a1 + 2032, a1 + 2040, a1 + 2048);
}

uint64_t sub_22BB73B3C()
{
  v1 = *(v0 - 144);
  v2 = *(v0 - 152) + 8;
  result = *(v0 - 136);
  v4 = *(v0 - 128);
  return result;
}

__n128 sub_22BB73B68(uint64_t a1)
{
  *(v2 + 184) = a1;
  v3 = *(v1 + 32);
  result = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

__n128 sub_22BB73BD0(uint64_t a1)
{
  result = *&STACK[0x390];
  *(a1 + 16) = *&STACK[0x390];
  *(a1 + 32) = sub_22BB89C08;
  return result;
}

id sub_22BB73C1C()
{
  v4 = *(v0 + 104);
  *(v1 + 14) = v4;
  *v2 = v4;

  return v4;
}

void sub_22BB73C38()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[43];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[38];
  v7 = v0[34];
  v8 = v0[35];
  v9 = v0[33];
}

uint64_t sub_22BB73C54()
{
  v1 = type metadata accessor for SessionCoordinatorCommand(0);
  v2 = sub_22BB2F330(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  sub_22BB33230();
  v5 = sub_22BB2F324();
  sub_22BB388FC(v5, v6);
  sub_22BB30AE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v8 = *v0;

      v9 = sub_22BBE6DE0(&qword_27D8E6538, &qword_22BDCE448);
      v10 = v9[16];
      v11 = *(v0 + v9[20] + 8);

      v12 = *(v0 + v9[24]);

      sub_22BB52EF4();
      sub_22BB325EC(v0 + v10, &qword_27D8E3218, &qword_22BDBE390);
      break;
    case 2u:
      v13 = sub_22BBE6DE0(&qword_27D8E6540, &qword_22BDCE450);
      sub_22BB325EC(v0 + *(v13 + 64), &qword_27D8E3218, &qword_22BDBE390);
      v14 = sub_22BDB98C4();
      sub_22BB31F70(v14);
      (*(v15 + 8))(v0);
      break;
    case 3u:
      sub_22BB52EF4();
      sub_22BB698E8();
      break;
    case 4u:
      sub_22BB698E8();
      sub_22BB52EF4();
      break;
    case 5u:
      sub_22BB698E8();
      break;
    case 6u:
      return sub_22BB37494();
    case 7u:
      sub_22BB52EF4();
      break;
    default:
      v7 = *(v0 + *(sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220) + 48) + 8);

      sub_22BB52EF4();
      sub_22BB698E8();
      break;
  }

  return sub_22BB37494();
}

uint64_t sub_22BB73F58@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22BB73FA4()
{
  v6 = *(v4 - 176);
  v7 = STACK[0x438];
  STACK[0x3E8] = v1;
  STACK[0x3F8] = v2;
  STACK[0x470] = v0;
  STACK[0x3F0] = v3;

  return sub_22BB67968();
}

uint64_t sub_22BB73FD0()
{

  return swift_task_alloc();
}

uint64_t sub_22BB73FE8()
{
  *(v1 - 176) = *(v0 + 4696);
  v3 = *(v0 + 4632) + 16;

  return swift_beginAccess();
}

void sub_22BB7402C()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v5 = v0[34];
  v4 = v0[35];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[28];
  v9 = v0[29];
}

uint64_t sub_22BB74044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22BDB7764();
  v44 = *(v4 - 1);
  v45 = v4;
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22BDB7734();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v46);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SessionCoordinatorCommand(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22BDB7754();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6124();
  sub_22BB335C0(a3, v14);

  v20 = sub_22BDB7744();
  sub_22BDB7774();
  v43 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {
    v37[1] = v14;
    v38 = v19;
    v39 = v16;
    v40 = v15;
    v41 = v7;

    v21 = v42;
    sub_22BDB77B4();

    v23 = v44;
    v22 = v45;
    if ((*(v44 + 88))(v21, v45) == *MEMORY[0x277D85B00])
    {
      v24 = 0;
      v45 = "[Error] Interval already ended";
    }

    else
    {
      (*(v23 + 8))(v21, v22);
      v45 = "[SessionCoordinator %{public}s] | End processing command %{public}s.";
      v24 = 2;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v47 = v27;
    *v26 = v24;
    *(v26 + 1) = v24;
    *(v26 + 2) = 2082;
    v28 = sub_22BDB5624();
    v30 = v29;

    v31 = sub_22BB32EE0(v28, v30, &v47);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2082;
    v32 = sub_22BB73C54();
    v34 = v33;
    sub_22BB34648();
    v35 = sub_22BB32EE0(v32, v34, &v47);

    *(v26 + 14) = v35;
    v36 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v20, v43, v36, "CommandProcess", v45, v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318A6080](v27, -1, -1);
    MEMORY[0x2318A6080](v26, -1, -1);

    (*(v41 + 8))(v10, v46);
    return (*(v39 + 8))(v38, v40);
  }

  else
  {

    (*(v7 + 8))(v10, v46);
    sub_22BB34648();
    return (*(v16 + 8))(v19, v15);
  }
}

id sub_22BB7453C()
{
  swift_getObjectType();
  sub_22BB35760();
  v2 = sub_22BDB52C4();
  v3 = sub_22BB30434(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v9);
  v11 = *(v10 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_sessionClientId;
  v16 = sub_22BDBAEF4();
  sub_22BB31B08(v14, v17, v18, v16);
  sub_22BB30AA0();
  sub_22BB33670(v1 + v15, v8, v19);
  v20 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_22BB7478C(v8, v21 + v20);
  sub_22BCA20FC(0, 0, v14, &unk_22BDD0C58, v21);

  v23.receiver = v1;
  v23.super_class = v0;
  return objc_msgSendSuper2(&v23, sel_dealloc);
}

uint64_t sub_22BB746CC()
{
  v1 = sub_22BDB52C4();
  sub_22BB30434(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = sub_22BDB43E4();
  sub_22BB31F70(v8);
  (*(v9 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

uint64_t sub_22BB7478C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB52C4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BB748A0()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  sub_22BB35760();
  v1 = sub_22BDB52C4();
  sub_22BB2F0C8(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = sub_22BB31BAC(v6);
  *v7 = v8;
  v7[1] = sub_22BBF90EC;
  sub_22BB37834();
  sub_22BB3478C();

  return sub_22BB74968(v9, v10, v11, v12);
}

uint64_t sub_22BB74988()
{
  sub_22BB2F0D4();
  if (qword_28142AB50 != -1)
  {
    sub_22BB32DD0();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22BBADC9C;
  sub_22BB3487C(*(v0 + 16));

  return sub_22BB74A3C();
}

uint64_t sub_22BB74A3C()
{
  sub_22BB2F35C();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_22BDB52C4();
  v1[13] = v3;
  sub_22BB2F0C8(v3);
  v5 = *(v4 + 64);
  v1[14] = sub_22BB30ACC();
  v6 = sub_22BDB77D4();
  v1[15] = v6;
  sub_22BB30434(v6);
  v1[16] = v7;
  v9 = *(v8 + 64);
  v1[17] = sub_22BB30ACC();
  v10 = sub_22BDB5154();
  v1[18] = v10;
  sub_22BB30434(v10);
  v1[19] = v11;
  v13 = *(v12 + 64);
  v1[20] = sub_22BB30ACC();
  v14 = sub_22BDB43E4();
  v1[21] = v14;
  sub_22BB30434(v14);
  v1[22] = v15;
  v17 = *(v16 + 64);
  v1[23] = sub_22BB30ACC();
  v18 = sub_22BDB5764();
  v1[24] = v18;
  sub_22BB30434(v18);
  v1[25] = v19;
  v21 = *(v20 + 64);
  v1[26] = sub_22BB30ACC();
  v22 = sub_22BDB5F24();
  sub_22BB30434(v22);
  v1[27] = v23;
  v25 = *(v24 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v26 = sub_22BBE6DE0(&qword_27D8E6808, &qword_22BDCF4D8);
  sub_22BB2F0C8(v26);
  v28 = *(v27 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v29 = type metadata accessor for SessionSwitchboard.SessionInfo();
  v1[32] = v29;
  sub_22BB30434(v29);
  v1[33] = v30;
  v32 = *(v31 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  if (qword_28142A928 != -1)
  {
    sub_22BB36324();
  }

  v1[38] = qword_28142F3F0;
  type metadata accessor for SessionControlActor();
  sub_22BB32860();
  sub_22BB3CC60(v33, v34);
  sub_22BD7F040();
  sub_22BB30AE4();
  v36 = sub_22BDBAE44();
  v1[39] = v36;
  v1[40] = v35;

  return MEMORY[0x2822009F8](sub_22BB74D7C, v36, v35);
}

uint64_t sub_22BB74D7C()
{
  v95 = v0;
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  swift_beginAccess();
  sub_22BB7538C(&v90);
  swift_endAccess();
  *(v0 + 328) = v90;
  v5 = v91;
  *(v0 + 336) = v91;
  *(v0 + 352) = v92;
  v6 = v93;
  *(v0 + 360) = v93;
  *(v0 + 376) = v94;
  if (!v5 || (v6 & 1) == 0)
  {
LABEL_13:
    v23 = *(v0 + 96);
    sub_22BB31B88();
    swift_beginAccess();
    v24 = *(v23 + 16);
    *(v0 + 416) = v24;
    *(v0 + 453) = *(v24 + 32);
    sub_22BB52A10(v24);
    v27 = v25 & v26;
    *(v0 + 448) = *MEMORY[0x277D1C8C0];

    if (!v27)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v28 = *(v0 + 416);
      v32 = *(v0 + 280);
      v33 = *(v0 + 264);
      v2 = *(v0 + 232);
      v34 = *(v0 + 240);
      v27 &= v27 - 1;
      v35 = *(v28 + 48);
      v36 = *(*(v0 + 216) + 72);
      sub_22BB36720();
      sub_22BB33618();
      v37 = *(v28 + 56);
      v38 = *(v33 + 72);
      sub_22BB37890();
      sub_22BB33618();
      LODWORD(v33) = *(sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0) + 48);
      sub_22BB30E54();
      sub_22BB38958();
      sub_22BB31E54();
      sub_22BB38958();
      v39 = sub_22BB34914();
      sub_22BB336D0(v39, v40, v41, v42);
      while (1)
      {
        sub_22BB53CA0();
        sub_22BC8D26C();
        v43 = sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0);
        sub_22BB34F58(v43);
        if (v44)
        {
          sub_22BB36AB0();

          sub_22BDB63E4();
          sub_22BB32564();
          sub_22BB33618();
          v55 = sub_22BDB77C4();
          sub_22BDBB134();
          sub_22BB3E2A4();
          os_log_type_enabled(v55, v56);
          sub_22BB3B494();
          if (v57)
          {
            v58 = *(v0 + 104);
            sub_22BB354D0();
            v89 = v34;
            v59 = swift_slowAlloc();
            sub_22BB2F440();
            v88 = v2;
            v60 = swift_slowAlloc();
            v90 = v60;
            *v59 = 136446210;
            sub_22BB32D54();
            sub_22BB3CC60(v61, v62);
            sub_22BDBB684();
            sub_22BB35D94();
            sub_22BB34698();
            v63 = sub_22BB2F12C();
            sub_22BB32EE0(v63, v64, v65);
            sub_22BB36C3C();

            *(v59 + 4) = &qword_27D8E6760;
            sub_22BB3163C(&dword_22BB2C000, v66, v67, "SessionClient %{public}s deregistered.");
            sub_22BB32FA4(v60);
            v68 = sub_22BB94EFC();
            MEMORY[0x2318A6080](v68);
            v69 = sub_22BB6BC10();
            MEMORY[0x2318A6080](v69);

            v70 = sub_22BB588D0();
            sub_22BBB7A1C(v70, v71);
            (qword_27D8E6768)(v89, v88);
          }

          else
          {

            v79 = sub_22BB588D0();
            sub_22BBB7A1C(v79, v80);
            sub_22BB35D94();
            sub_22BB34698();
            v81 = sub_22BB586F4();
            v83(v81, v82);
          }

          sub_22BB39248();

          sub_22BB2F09C();
          sub_22BB3AAA8();

          __asm { BRAA            X1, X16 }
        }

        v45 = *(v0 + 272);
        v2 = *(v0 + 248);
        v46 = *(v0 + 224);
        v47 = *(v0 + 88);
        v48 = *(v34 + 48);
        sub_22BB30E54();
        sub_22BB38958();
        sub_22BB31E54();
        sub_22BB38958();
        if (sub_22BDB43B4())
        {
          v72 = sub_22BB58B5C();
          v73(v72);
          sub_22BDB5144();
          v74 = sub_22BB3B144();
          v75(v74);
          sub_22BB31B20();
          sub_22BDB5744();
          sub_22BB32A48(&unk_22BDCE208);
          v76 = swift_task_alloc();
          *(v0 + 440) = v76;
          *v76 = v0;
          sub_22BB37E48(v76);
          sub_22BB3AAA8();

          __asm { BR              X1 }
        }

        v49 = *(v0 + 272);
        v50 = *(v0 + 224);
        sub_22BB309FC();
        sub_22BB34698();
        sub_22BB33EB8();
        sub_22BB34698();
        if (v27)
        {
          break;
        }

LABEL_15:
        while (1)
        {
          sub_22BB72258();
          if (v30 == v31)
          {
            break;
          }

          sub_22BB3B82C(v29);
        }

        v34 = *(v0 + 240);
        sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0);
        sub_22BB30B28();
        sub_22BB336D0(v51, v52, v53, v54);
        v27 = 0;
      }
    }
  }

  v7 = *(v0 + 96);
  sub_22BB31B88();
  swift_beginAccess();
  v8 = *(v7 + 16);
  *(v0 + 384) = v8;
  *(v0 + 452) = *(v8 + 32);
  sub_22BB52A10(v8);
  v11 = v9 & v10;

  v15 = 0;
  if (!v11)
  {
    goto LABEL_5;
  }

  while (2)
  {
    v16 = *(v0 + 384);
LABEL_9:
    *(v0 + 392) = v11;
    *(v0 + 400) = v15;
    sub_22BB3DF00();
    v19 = *(v18 + 56);
    v21 = *(v20 + 72);
    sub_22BB37890();
    sub_22BB33618();
    sub_22BB31E54();
    sub_22BB38958();
    if (*(v3 + *(v1 + 28)))
    {
      sub_22BB39808();
      sub_22BB3AAA8();
    }

    else
    {
      v11 &= v11 - 1;
      v22 = *(v0 + 288);
      sub_22BB33EB8();
      v12 = sub_22BB34698();
      if (v11)
      {
        continue;
      }

LABEL_5:
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v12 = *(v0 + 384);
        if (v17 >= (((1 << *(v0 + 452)) + 63) >> 6))
        {

          goto LABEL_13;
        }

        v11 = *(v12 + 8 * v17 + 64);
        ++v15;
        if (v11)
        {
          v15 = v17;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

double sub_22BB7538C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22BB3CB98();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v25 = *v2;
    v9 = *(*v2 + 24);
    sub_22BBE6DE0(&qword_27D8E67E0, &qword_22BDCF4A8);
    v10 = sub_22BB2F694();
    sub_22BB37974(v10, v11, v12, v13, v14, v15, v16, v17, v24, v25);
    v18 = sub_22BDB52C4();
    sub_22BB2F330(v18);
    sub_22BB34504(v9 + *(v19 + 72) * v7, MEMORY[0x277D1CB28]);
    v20 = *(v4 + 56) + 56 * v7;
    v21 = *(v20 + 8);
    v22 = *(v20 + 32);
    *a1 = *v20;
    *(a1 + 8) = v21;
    *(a1 + 16) = *(v20 + 16);
    *(a1 + 32) = v22;
    *(a1 + 40) = *(v20 + 40);
    sub_22BB754D8(&qword_28142DD08, 255, MEMORY[0x277D1CB28]);
    sub_22BDBB4C4();
    *v2 = v4;
  }

  else
  {
    *(a1 + 48) = 0;
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_22BB754D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22BB7553C()
{
  *(v5 - 192) = v0;
  *(v5 - 184) = v3;
  v7 = *(v5 - 104);
  v8 = *(v5 - 96);
  *(v5 - 176) = v2;
  *(v5 - 168) = v4;
  *(v5 - 88) = v1;

  return sub_22BDBB5E4();
}

uint64_t sub_22BB75570()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_22BB755A0()
{
  v3 = *(v1 - 152);
  *(v1 - 160) = v0;

  return sub_22BDB7774();
}

uint64_t sub_22BB755C0()
{
  v13 = v0[30];
  v14 = v0[36];
  v1 = v0[28];
  v12 = v0[25];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];
  v10 = v0[26];
  v11 = v0[4];
  v8 = v0[2];
  v15 = v0[11];
  return v0[19];
}

void sub_22BB75614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = *(v17 + 344);
  v21 = *(a17 + 328);
  v22 = *(a17 + 320);
}

void sub_22BB75638()
{
  v1 = v0[398];
  v2 = v0[397];
  v3 = v0[396];
  v4 = v0[310];
}

uint64_t sub_22BB75658()
{
}

uint64_t sub_22BB75690()
{

  return sub_22BDBB8A4();
}

uint64_t sub_22BB756F4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 4736) = a1;
  v3 = *(*(v1 + 4632) + 16);

  return sub_22BB721E4(v3);
}

uint64_t sub_22BB75728()
{

  return sub_22BDBB664();
}

uint64_t sub_22BB7574C()
{
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[26];

  return swift_willThrow();
}

uint64_t sub_22BB7577C()
{
  v2 = *v0;

  return swift_projectBox();
}

uint64_t sub_22BB757AC(uint64_t a1)
{

  return sub_22BB58728(a1, v1, v2);
}

uint64_t sub_22BB757D4()
{
  v2 = *(v0 - 144);
  *(v0 - 136) = v2[530];
  *(v0 - 192) = v2[528];
  v3 = v2[521];
  v4 = v2[519];
}

void sub_22BB7581C()
{
  STACK[0x460] = v0[555];
  v1 = v0[446];
  v2 = v0[441];
}

uint64_t sub_22BB7583C()
{
  v1 = STACK[0x370];

  return sub_22BDB5D84();
}

void sub_22BB75860()
{
  v2[584] = v0;
  v2[583] = v1;
  v2[582] = *(v3 - 152);
  v2[588] = *(v2[312] + v2[564]);
}

uint64_t sub_22BB75894(uint64_t result, uint64_t a2)
{
  *(v2 + 1336) = result;
  *(v2 + 1344) = a2;
  return result;
}

uint64_t sub_22BB758A0()
{
  v1 = v0[555];
  v2 = v0[541];
  result = v0[432];
  v4 = v0[428];
  v5 = v0[312];
  v6 = *(v0[429] + 32);
  return result;
}

uint64_t sub_22BB758C0()
{
  v3 = *(v0 + 1016);
}

void sub_22BB75978()
{
  *(v0 + 16) = v4;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t sub_22BB75994()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BB759E0()
{
  *(v5 - 224) = v2;
  *(v5 - 216) = v0;
  *(v5 - 208) = v1;
  *(v5 - 200) = v4;
  v8 = *(v5 - 112);
  v7 = *(v5 - 104);
  *(v5 - 88) = v3;

  return sub_22BDBB5E4();
}

uint64_t sub_22BB75A38(uint64_t a1)
{
  *(a1 + 8) = sub_22BC4B364;
  v2 = v1[248];
  v3 = v1[219];
  v4 = v1[186];
  v5 = v1[136];
  v6 = v1[133];
  return v1[233];
}

uint64_t sub_22BB75A90()
{
  v1 = v0[40];
  result = v0[35];
  v3 = v0[32];
  v4 = v0[31];
  v5 = *(v0[33] + 32);
  return result;
}

uint64_t sub_22BB75AA8()
{
  sub_22BB2F0D4();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_22BDB5664();
  sub_22BB30434(v3);
  v0[4] = v4;
  v0[5] = *(v5 + 64);
  v0[6] = swift_task_alloc();
  v6 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v6);
  v8 = *(v7 + 64) + 15;
  v0[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB75BAC, 0, 0);
}

uint64_t sub_22BB75BAC()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = sub_22BDB64C4();
  sub_22BB58B50(v7);
  v8 = swift_allocObject();
  sub_22BDB64D4();
  sub_22BB30F68();
  v9 = sub_22BDBAEF4();
  sub_22BB336D0(v2, 1, 1, v9);
  sub_22BB35D70();
  sub_22BB388FC(v5, v1);
  v10 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v8;
  sub_22BB3D510(v1, v11 + v10);
  *(v11 + ((v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;

  sub_22BC6A4F8(0, 0, v2, &unk_22BDCEDA8, v11);

  sub_22BB325EC(v2, &qword_27D8E2978, &qword_22BDBD020);

  sub_22BB2F09C();

  return v12();
}

uint64_t sub_22BB75D44()
{
  v2 = sub_22BDB5664();
  sub_22BB3A75C(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  swift_unknownObjectRelease();
  v9 = *(v1 + 32);

  v10 = sub_22BDB43E4();
  sub_22BB31F70(v10);
  (*(v11 + 8))(v1 + v5);
  sub_22BB3AE18();
  v12 = *(v0 + 24);

  v13 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v1, v7 + 8, v4 | 7);
}

uint64_t sub_22BB75E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  if (!*(v12 + 184))
  {
    v16 = *(v12 + 992);
    v17 = *(v12 + 960);
    v19 = *(v12 + 224);
    v18 = *(v12 + 232);
    v20 = *(v12 + 216);
    (*(v12 + 952))(*(v12 + 536), *(v12 + 544), *(v12 + 520));
    sub_22BD63C70();
    sub_22BDB82A4();
    sub_22BBD1688(v18);
    v21 = sub_22BBC0248();
    v22(v21);
  }

  v23 = *(v12 + 544);
  v24 = *(v12 + 288);
  v25 = *(v12 + 272);
  sub_22BDB57F4();
  sub_22BB36B74(v25);
  if (v26)
  {
    v27 = *(v12 + 904);
    v28 = *(v12 + 272);

    sub_22BB325EC(v28, &qword_27D8E6418, &unk_22BDCE260);
  }

  else
  {
    v29 = *(v12 + 288);
    v30 = *(v12 + 296);
    v31 = *(v12 + 272);
    v25 = sub_22BDB5324();
    v32 = *(v30 + 8);
    v33 = sub_22BB2F324();
    v34(v33);
    if (v25)
    {
      v35 = *(v12 + 992);
      sub_22BB33430();

      return MEMORY[0x2822009F8](v36, v37, v38);
    }

    v40 = *(v12 + 904);
  }

  v41 = *(v12 + 992);
  v79 = *(v12 + 1042);
  v78 = *(v12 + 976);
  v92 = *(v12 + 968);
  v93 = *(v12 + 944);
  v76 = *(v12 + 912);
  v95 = *(v12 + 936);
  v96 = *(v12 + 896);
  v97 = *(v12 + 872);
  v98 = *(v12 + 864);
  v99 = *(v12 + 856);
  v100 = *(v12 + 848);
  v101 = *(v12 + 840);
  v102 = *(v12 + 832);
  v94 = *(v12 + 808);
  v103 = *(v12 + 800);
  v104 = *(v12 + 792);
  v105 = *(v12 + 784);
  v106 = *(v12 + 776);
  v107 = *(v12 + 768);
  v108 = *(v12 + 744);
  v42 = *(v12 + 736);
  v109 = *(v12 + 728);
  v110 = *(v12 + 720);
  v111 = *(v12 + 712);
  v112 = *(v12 + 704);
  v113 = *(v12 + 696);
  v114 = *(v12 + 688);
  sub_22BD64108();
  v115 = *(v12 + 640);
  sub_22BB71D94();
  sub_22BBD2288();
  v119 = *(v12 + 560);
  v77 = *(v12 + 544);
  sub_22BD647EC();
  v90 = v44;
  v91 = v43;
  v87 = *(v12 + 504);
  v88 = *(v12 + 496);
  v89 = *(v12 + 512);
  v116 = *(v12 + 488);
  v117 = *(v12 + 480);
  v84 = *(v12 + 464);
  v85 = *(v12 + 456);
  v86 = *(v12 + 472);
  sub_22BD6259C();
  v82 = v45;
  v118 = *(v12 + 304);
  v46 = *(v12 + 280);
  v80 = *(v12 + 296);
  v81 = *(v12 + 288);
  sub_22BD62C80();
  v83 = v47;
  sub_22BDBAEF4();
  sub_22BB30B28();
  sub_22BB336D0(v48, v49, v50, v51);
  sub_22BB366B8();
  v52 = swift_allocObject();
  swift_weakInit();
  sub_22BB32CE8();
  v53 = sub_22BB34FB8();
  v54 = v13;
  sub_22BB335C0(v53, v55);
  v56 = qword_28142F3F0;
  sub_22BD63BA0();
  v57 = swift_allocObject();
  v57[2] = v56;
  v57[3] = v76;
  v57[4] = v52;
  sub_22BB2F5B0();
  sub_22BB3A518(v54, v58 + v25);
  *(v57 + v14) = v15;

  sub_22BB58138();

  v59 = *(v15 + v78);

  sub_22BDB5854();
  sub_22BB37DF4();
  sub_22BB335C0(v15 + v60, v119);
  sub_22BB3FBBC();
  sub_22BB70820();

  sub_22BB343F4();
  sub_22BB34648();
  sub_22BB325EC(v120, &qword_27D8E6410, &unk_22BDCE250);
  v61 = [objc_opt_self() defaultCenter];
  sub_22BD64E50();
  v62 = sub_22BD63698();
  sub_22BB335C0(v62, v54);
  sub_22BDBB724();
  v63 = sub_22BB3E460();
  [v63 v64];
  swift_unknownObjectRelease();

  (*(v80 + 8))(v82, v81);
  (*(v84 + 8))(v86, v85);
  (*(v87 + 8))(v89, v88);
  (*(v90 + 8))(v77, v91);
  sub_22BB335C0(v42, v83);

  v65 = sub_22BB3A19C();
  sub_22BB76C64(v65, v66, v42);

  sub_22BB3093C();
  sub_22BB34648();
  sub_22BB325EC(v94, &qword_27D8E6440, &qword_22BDCE290);
  sub_22BDB6604();

  sub_22BB360FC();
  sub_22BB33430();

  return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12);
}

uint64_t sub_22BB76518()
{
  swift_weakDestroy();
  sub_22BB366B8();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22BB7654C()
{
  v2 = sub_22BDB5664();
  sub_22BB3A75C(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  swift_unknownObjectRelease();
  v9 = *(v1 + 32);

  v10 = v1 + v5;
  v11 = sub_22BDB43E4();
  sub_22BB31F70(v11);
  (*(v12 + 8))(v10);
  v13 = (v10 + *(v0 + 28));
  v14 = v13[1];

  v15 = v13[3];

  v16 = v13[5];

  v17 = *(v1 + v7);

  return MEMORY[0x2821FE8E8](v1, v7 + 8, v4 | 7);
}

void sub_22BB76660(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 176);

  _os_log_impl(a1, v8, v5, a4, v4, 0x16u);
}

uint64_t sub_22BB7669C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22BDBAEF4();
  v7 = sub_22BB30444(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v14 = v13 - v12;
  v15 = sub_22BDB41A4();
  v16 = sub_22BB30444(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v23 = v22 - v21;
  v24 = (*(v18 + 16))(v22 - v21, a1, v15);
  a2(v24);
  v25 = sub_22BDB4194();
  v26 = type metadata accessor for ToolboxRebuildTrigger();
  (*(v9 + 16))(a3 + *(v26 + 24), v14, v6);
  *a3 = sub_22BDBABF4();
  a3[1] = v27;
  v28 = sub_22BB76868();
  v30 = v29;

  (*(v9 + 8))(v14, v6);
  result = (*(v18 + 8))(v23, v15);
  a3[2] = v28;
  a3[3] = v30;
  return result;
}

uint64_t sub_22BB76868()
{
  v0 = 0x20737365636F7270;
  v1 = sub_22BDBABE4();
  v2 = sub_22BDBABF4();
  v4 = v3;

  if (v2 == sub_22BDBABF4() && v4 == v5)
  {
LABEL_34:

    return v0;
  }

  v7 = sub_22BDBB6D4();

  if (v7)
  {
    return v0;
  }

  if (qword_281428770 != -1)
  {
    swift_once();
  }

  v8 = sub_22BDBABF4();
  v10 = v9;
  if (v8 == sub_22BDBABF4() && v10 == v11)
  {

    return 0xD000000000000012;
  }

  v13 = sub_22BDBB6D4();

  if (v13)
  {
    return 0xD000000000000012;
  }

  v0 = 0x206E6F6973736573;
  v14 = sub_22BDBABE4();
  v15 = sub_22BDBABF4();
  v17 = v16;

  if (v15 == sub_22BDBABF4() && v17 == v18)
  {
    goto LABEL_34;
  }

  v20 = sub_22BDBB6D4();

  if ((v20 & 1) == 0)
  {
    v21 = sub_22BDBB1B4();
    v22 = sub_22BDBABF4();
    v24 = v23;

    if (v22 == sub_22BDBABF4() && v24 == v25)
    {
    }

    else
    {
      v27 = sub_22BDBB6D4();

      if ((v27 & 1) == 0)
      {
        v28 = sub_22BDBABE4();
        v29 = sub_22BDBABF4();
        v31 = v30;

        if (v29 == sub_22BDBABF4() && v31 == v32)
        {
        }

        else
        {
          v34 = sub_22BDBB6D4();

          if ((v34 & 1) == 0)
          {
            v35 = sub_22BDBABE4();
            v36 = sub_22BDBABF4();
            v38 = v37;

            if (v36 == sub_22BDBABF4() && v38 == v39)
            {
            }

            else
            {
              v41 = sub_22BDBB6D4();

              if ((v41 & 1) == 0)
              {
                return sub_22BDBABF4();
              }
            }

            return 0xD000000000000022;
          }
        }

        return 0xD00000000000001CLL;
      }
    }

    return 0xD000000000000017;
  }

  return v0;
}

uint64_t sub_22BB76C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = sub_22BDB52C4();
  v5 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BDB7764();
  v47 = *(v7 - 1);
  v48 = v7;
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_22BDB7734();
  v10 = *(v53 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v53);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BDB5664();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22BDB7754();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6124();
  sub_22BB335C0(a3, v17);

  v23 = sub_22BDB7744();
  sub_22BDB7774();
  v49 = sub_22BDBB1C4();
  v50 = a2;

  if (sub_22BDBB244())
  {
    v42 = v23;
    v43 = v19;
    v44 = v18;
    v45 = v10;

    v24 = v46;
    sub_22BDB77B4();

    v26 = v47;
    v25 = v48;
    if ((*(v47 + 88))(v24, v48) == *MEMORY[0x277D85B00])
    {
      v27 = 0;
      v48 = "[Error] Interval already ended";
    }

    else
    {
      (*(v26 + 8))(v24, v25);
      v48 = "[ClientSessionManager %s] Create Session %s End";
      v27 = 2;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v54 = v30;
    *v29 = v27;
    *(v29 + 1) = v27;
    *(v29 + 2) = 2080;
    sub_22BB335C0(v50 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_sessionClientId, v51);
    sub_22BB3B194(&qword_28142DCF8, MEMORY[0x277D1CB28]);
    v31 = sub_22BDBB684();
    v33 = v32;
    sub_22BB34648();
    v34 = sub_22BB32EE0(v31, v33, &v54);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v35 = sub_22BDB5624();
    v37 = v36;
    sub_22BB34648();
    v38 = sub_22BB32EE0(v35, v37, &v54);

    *(v29 + 14) = v38;
    v39 = sub_22BDB7714();
    v40 = v42;
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v42, v49, v39, "SessionCreate", v48, v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318A6080](v30, -1, -1);
    MEMORY[0x2318A6080](v29, -1, -1);

    (*(v45 + 8))(v13, v53);
    return (*(v43 + 8))(v22, v44);
  }

  else
  {

    (*(v10 + 8))(v13, v53);
    sub_22BB34648();
    return (*(v19 + 8))(v22, v18);
  }
}

uint64_t sub_22BB771EC()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  v2 = *v1;
  v3 = *v1;
  sub_22BB3052C();
  *v4 = v3;
  v5 = v2[50];
  *v4 = *v1;
  v3[51] = v0;

  v6 = v2[49];
  v7 = v2[43];
  v8 = v2[42];
  v9 = v2[41];
  v10 = *(v8 + 8);
  v11 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v3[54] = v10;
    v3[55] = v11;
    v10(v7, v9);

    *(v3 + 7) = *(v3 + 1);
    sub_22BB77404((v3 + 14));
    *(v3 + 8) = *(v3 + 2);
    sub_22BB77458((v3 + 16));
    *(v3 + 9) = *(v3 + 3);
    sub_22BB325EC((v3 + 18), &qword_27D8E6448, &qword_22BDCE298);
  }

  else
  {
    v3[52] = v10;
    v3[53] = v11;
    v10(v7, v9);

    *(v3 + 10) = *(v3 + 1);
    sub_22BB77404((v3 + 20));
    *(v3 + 11) = *(v3 + 2);
    sub_22BB77458((v3 + 22));
    *(v3 + 12) = *(v3 + 3);
    sub_22BB325EC((v3 + 24), &qword_27D8E6448, &qword_22BDCE298);
  }

  sub_22BB31B20();
  sub_22BB3478C();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t type metadata accessor for ToolboxRebuildTrigger()
{
  result = qword_28142A490;
  if (!qword_28142A490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BB774F8()
{
  sub_22BC5496C();
  v1 = *(v0 + 176);
  *(v0 + 152) = MEMORY[0x277D84F90];
  sub_22BD64C28();
  v3 = *(v1 + *(v2 + 120));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v0 + 464);
    v6 = *(v0 + 440);
    v7 = *(v0 + 416);
    v136 = *(v0 + 360);
    v138 = *(v0 + 368);
    v8 = *(v0 + 168);
    type metadata accessor for SessionCoordinatorAcceptPayload(0);
    v9 = v3 + 32;
    v130 = *v8;
    v133 = (v7 + 104);
    v142 = *MEMORY[0x277D85778];
    v129 = (v7 + 8);
    v128 = (v6 + 16);
    v140 = v5;
    v126 = (v5 + 8);
    v127 = (v6 + 8);
    v10 = MEMORY[0x277D84F90];
    do
    {
      v149 = v4;
      v151 = v10;
      v12 = *(v0 + 480);
      v11 = *(v0 + 488);
      v143 = *(v0 + 472);
      v14 = *(v0 + 448);
      v13 = *(v0 + 456);
      v15 = *(v0 + 424);
      v16 = *(v0 + 400);
      v17 = *(v0 + 408);
      v145 = *(v0 + 392);
      v147 = v9;
      v18 = *(v0 + 176);
      sub_22BB690EC(v9, v0 + 16);
      (*v133)(v15, v142, v17);
      sub_22BDBAF04();
      v19 = *v129;
      v20 = sub_22BB31B54();
      v21(v20);
      v22 = sub_22BDBAEF4();
      sub_22BB30B28();
      sub_22BB336D0(v23, v24, v25, v22);
      sub_22BB690EC(v0 + 16, v0 + 56);
      v26 = *(v140 + 16);
      sub_22BB8E9F0();
      v27();
      v28 = (*(v140 + 80) + 80) & ~*(v140 + 80);
      v29 = swift_allocObject();
      v29[2] = 0;
      v30 = v29 + 2;
      v29[3] = 0;
      v29[4] = v18;
      sub_22BB382E8((v0 + 56), (v29 + 5));
      (*(v140 + 32))(v29 + v28, v12, v13);
      sub_22BD62134();
      sub_22BB3CD70(v31, v32, v33, &qword_22BDBD020);
      v34 = sub_22BB3A190();
      sub_22BB3AA28(v34, v35, v22);
      sub_22BC54DB0();

      if (v28 == 1)
      {
        v36 = *(v0 + 392);
        sub_22BD62218();
        sub_22BB325EC(v37, v38, v39);
      }

      else
      {
        sub_22BDBAEE4();
        sub_22BB30474(v22);
        v41 = *(v40 + 8);
        v42 = sub_22BB3A19C();
        v43(v42);
      }

      if (*v30)
      {
        v44 = v29[3];
        v45 = *v30;
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_22BB3182C();
        v46 = sub_22BDBAE44();
        v48 = v47;
        swift_unknownObjectRelease();
      }

      else
      {
        v46 = 0;
        v48 = 0;
      }

      sub_22BB322B0();
      v49 = swift_allocObject();
      *(v49 + 16) = &unk_22BDCE378;
      *(v49 + 24) = v29;
      v50 = v48 | v46;
      if (v48 | v46)
      {
        v50 = v0 + 96;
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 112) = v46;
        *(v0 + 120) = v48;
      }

      v51 = *(v0 + 448);
      v52 = *(v0 + 432);
      v53 = *(v0 + 400);
      v54 = *(v0 + 376);
      *(v0 + 128) = 1;
      *(v0 + 136) = v50;
      *(v0 + 144) = v130;
      swift_task_create();

      sub_22BD62218();
      sub_22BB325EC(v55, v56, v57);
      v58 = *(v136 + 48);
      sub_22BB690EC(v0 + 16, v54);
      v59 = *v128;
      sub_22BB72044();
      v60();
      v10 = v151;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = *(v151 + 16);
        sub_22BB305BC();
        sub_22BBB5FE4();
        v10 = v73;
      }

      v62 = *(v10 + 16);
      v61 = *(v10 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_22BB2F138(v61);
        sub_22BBB5FE4();
        v10 = v74;
      }

      v63 = *(v0 + 488);
      v64 = *(v0 + 456);
      v65 = *(v0 + 376);
      (*v127)(*(v0 + 448), *(v0 + 432));
      v66 = *v126;
      v67 = sub_22BB30AE4();
      v68(v67);
      sub_22BB32FA4((v0 + 16));
      *(v10 + 16) = v62 + 1;
      v69 = *(v138 + 80);
      sub_22BB2F390();
      sub_22BB6BEE0(v65, v10 + v70 + *(v71 + 72) * v62, &qword_27D8E6038, &qword_22BDD0300);
      *(v0 + 152) = v10;
      v9 = v147 + 40;
      v4 = v149 - 1;
    }

    while (v149 != 1);
    v1 = *(v0 + 176);
  }

  else
  {
    v142 = *MEMORY[0x277D85778];
    v10 = MEMORY[0x277D84F90];
  }

  *(v0 + 496) = v10;
  v75 = *(v0 + 352);
  v76 = *(v0 + 328);
  v137 = *(v0 + 344);
  v139 = *(v0 + 336);
  v134 = *(v0 + 384);
  v135 = *(v0 + 320);
  v131 = *(v0 + 312);
  v77 = *(v0 + 280);
  v78 = *(v0 + 288);
  v79 = *(v0 + 272);
  v148 = *(v0 + 224);
  v150 = *(v0 + 264);
  v80 = *(v0 + 192);
  v146 = *(v0 + 200);
  v144 = *(v0 + 184);
  v141 = *(v0 + 168);
  sub_22BDB43E4();
  v81 = sub_22BB35760();
  type metadata accessor for SessionCoordinatorInjectionRequest(v81);
  sub_22BB30DC4();
  sub_22BB3B194(v82, v83);
  *(v0 + 160) = sub_22BDBAB14();
  sub_22BDB9B54();
  (*(v77 + 104))(v78, v142, v79);
  sub_22BB9741C();
  sub_22BDBAF04();
  v84 = *(v77 + 8);
  v85 = sub_22BB8E9D0();
  v86(v85);
  sub_22BDBAEF4();
  sub_22BB30B28();
  v132 = v87;
  sub_22BB336D0(v88, v89, v90, v87);
  v91 = *(v76 + 16);
  v92 = sub_22BB3ACBC();
  v93(v92);
  v94 = (*(v76 + 80) + 40) & ~*(v76 + 80);
  v95 = swift_allocObject();
  *(v95 + 2) = 0;
  *(v95 + 3) = 0;
  *(v95 + 4) = v1;
  (*(v76 + 32))(&v95[v94], v137, v135);

  sub_22BBB6154(v134, &unk_22BDCE390, v95);
  sub_22BB325EC(v134, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BDB5E34();
  (*(v80 + 104))(v146, v142, v144);
  sub_22BDBAF04();
  v96 = sub_22BD612F8();
  v97(v96);
  sub_22BD64C28();
  if (*(v1 + *(v98 + 152)) == 1)
  {
    v99 = *(v0 + 384);
    v100 = *(v0 + 256);
    v101 = *(v0 + 264);
    v103 = *(v0 + 240);
    v102 = *(v0 + 248);
    v104 = *(v0 + 232);
    v105 = *(v0 + 168);
    v106 = *(v0 + 176);
    sub_22BB30B28();
    sub_22BB336D0(v107, v108, v109, v132);
    sub_22BB97BA8();
    v110 = sub_22BB3B528();
    v111(v110);
    v112 = (*(v103 + 80) + 40) & ~*(v103 + 80);
    v113 = swift_allocObject();
    v113[2] = 0;
    v113[3] = 0;
    v113[4] = v106;
    v114 = *(v103 + 32);
    sub_22BB35FA0();
    v115();

    sub_22BBB6154(v99, &unk_22BDCE3A8, v113);
    sub_22BB325EC(v99, &qword_27D8E2978, &qword_22BDBD020);
  }

  v116 = swift_task_alloc();
  *(v0 + 504) = v116;
  *v116 = v0;
  v116[1] = sub_22BBAB210;
  v117 = *(v0 + 312);
  v118 = *(v0 + 224);
  v119 = *(v0 + 176);
  sub_22BB3E07C();

  return sub_22BB77EA4(v120, v121, v122, v123);
}

uint64_t sub_22BB77D24()
{
  v1 = sub_22BBE6DE0(&qword_27D8E64A8, &qword_22BDCE360);
  sub_22BB30444(v1);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = v0[2];
  swift_unknownObjectRelease();
  v7 = v0[4];

  sub_22BB32FA4(v0 + 5);
  v8 = sub_22BB541E8();
  v9(v8);
  v10 = sub_22BBC20AC();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_22BB77E10()
{
  v1 = *(v0 + 24);

  sub_22BB322B0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

void sub_22BB77E48()
{

  JUMPOUT(0x2318A6080);
}

uint64_t sub_22BB77E74(uint64_t result)
{
  *(result + 16) = sub_22BB8AE80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB77EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[312] = v4;
  v5[311] = a4;
  v5[310] = a3;
  v5[309] = a2;
  v5[308] = a1;
  v6 = sub_22BDB5B84();
  v5[313] = v6;
  v7 = *(v6 - 8);
  v5[314] = v7;
  v8 = *(v7 + 64) + 15;
  v5[315] = swift_task_alloc();
  v9 = sub_22BDB5B64();
  v5[316] = v9;
  v10 = *(v9 - 8);
  v5[317] = v10;
  v11 = *(v10 + 64) + 15;
  v5[318] = swift_task_alloc();
  v12 = *(*(sub_22BBE6DE0(&qword_27D8E64D0, &qword_22BDCE3D8) - 8) + 64) + 15;
  v5[319] = swift_task_alloc();
  v13 = sub_22BDB5D44();
  v5[320] = v13;
  v14 = *(v13 - 8);
  v5[321] = v14;
  v15 = *(v14 + 64) + 15;
  v5[322] = swift_task_alloc();
  v16 = sub_22BDB5BC4();
  v5[323] = v16;
  v17 = *(v16 - 8);
  v5[324] = v17;
  v18 = *(v17 + 64) + 15;
  v5[325] = swift_task_alloc();
  v19 = sub_22BDB5CE4();
  v5[326] = v19;
  v20 = *(v19 - 8);
  v5[327] = v20;
  v21 = *(v20 + 64) + 15;
  v5[328] = swift_task_alloc();
  v22 = sub_22BDB5C64();
  v5[329] = v22;
  v23 = *(v22 - 8);
  v5[330] = v23;
  v24 = *(v23 + 64) + 15;
  v5[331] = swift_task_alloc();
  v25 = sub_22BDB5C84();
  v5[332] = v25;
  v26 = *(v25 - 8);
  v5[333] = v26;
  v27 = *(v26 + 64) + 15;
  v5[334] = swift_task_alloc();
  v28 = sub_22BDB5C34();
  v5[335] = v28;
  v29 = *(v28 - 8);
  v5[336] = v29;
  v30 = *(v29 + 64) + 15;
  v5[337] = swift_task_alloc();
  v31 = sub_22BDB5CC4();
  v5[338] = v31;
  v32 = *(v31 - 8);
  v5[339] = v32;
  v33 = *(v32 + 64) + 15;
  v5[340] = swift_task_alloc();
  v34 = sub_22BDB5CA4();
  v5[341] = v34;
  v35 = *(v34 - 8);
  v5[342] = v35;
  v36 = *(v35 + 64) + 15;
  v5[343] = swift_task_alloc();
  v37 = sub_22BDB5CF4();
  v5[344] = v37;
  v38 = *(v37 - 8);
  v5[345] = v38;
  v39 = *(v38 + 64) + 15;
  v5[346] = swift_task_alloc();
  v40 = *(*(sub_22BBE6DE0(&qword_27D8E64D8, &qword_22BDCE3E0) - 8) + 64) + 15;
  v5[347] = swift_task_alloc();
  v5[348] = swift_task_alloc();
  v41 = sub_22BBE6DE0(&qword_27D8E64A0, &qword_22BDCE358);
  v5[349] = v41;
  v42 = *(v41 - 8);
  v5[350] = v42;
  v43 = *(v42 + 64) + 15;
  v5[351] = swift_task_alloc();
  v44 = *(*(sub_22BBE6DE0(&qword_27D8E64E0, &qword_22BDCE3E8) - 8) + 64) + 15;
  v5[352] = swift_task_alloc();
  v5[353] = swift_task_alloc();
  v45 = sub_22BDB7764();
  v5[354] = v45;
  v46 = *(v45 - 8);
  v5[355] = v46;
  v47 = *(v46 + 64) + 15;
  v5[356] = swift_task_alloc();
  v5[357] = swift_task_alloc();
  v48 = *(*(sub_22BBE6DE0(&qword_27D8E64E8, &qword_22BDCE3F0) - 8) + 64) + 15;
  v5[358] = swift_task_alloc();
  v49 = type metadata accessor for SessionCoordinatorAcceptPayload(0);
  v5[359] = v49;
  v50 = *(*(v49 - 8) + 64) + 15;
  v5[360] = swift_task_alloc();
  v51 = sub_22BBE6DE0(&qword_27D8E64F0, &qword_22BDCE3F8);
  v5[361] = v51;
  v52 = *(v51 - 8);
  v5[362] = v52;
  v53 = *(v52 + 64) + 15;
  v5[363] = swift_task_alloc();
  v54 = *(*(type metadata accessor for SessionPersistenceManager() - 8) + 64) + 15;
  v5[364] = swift_task_alloc();
  v55 = *(*(sub_22BDB5F24() - 8) + 64) + 15;
  v5[365] = swift_task_alloc();
  v56 = *(sub_22BDB5664() - 8);
  v5[366] = v56;
  v5[367] = *(v56 + 64);
  v5[368] = swift_task_alloc();
  v5[369] = swift_task_alloc();
  v57 = sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  v5[370] = v57;
  v58 = *(v57 - 8);
  v5[371] = v58;
  v59 = *(v58 + 64) + 15;
  v5[372] = swift_task_alloc();
  v5[373] = swift_task_alloc();
  v60 = sub_22BBE6DE0(&qword_27D8E6038, &qword_22BDD0300);
  v5[374] = v60;
  v61 = *(v60 - 8);
  v5[375] = v61;
  v5[376] = *(v61 + 64);
  v5[377] = swift_task_alloc();
  v5[378] = swift_task_alloc();
  v5[379] = swift_task_alloc();
  v62 = sub_22BDB9254();
  v5[380] = v62;
  v63 = *(v62 - 8);
  v5[381] = v63;
  v64 = *(v63 + 64) + 15;
  v5[382] = swift_task_alloc();
  v65 = *(*(sub_22BBE6DE0(&qword_27D8E64F8, &qword_22BDCE400) - 8) + 64) + 15;
  v5[383] = swift_task_alloc();
  v5[384] = swift_task_alloc();
  v66 = sub_22BBE6DE0(&qword_27D8E6500, &qword_22BDCE408);
  v5[385] = v66;
  v67 = *(v66 - 8);
  v5[386] = v67;
  v68 = *(v67 + 64) + 15;
  v5[387] = swift_task_alloc();
  v69 = sub_22BDB9B14();
  v5[388] = v69;
  v70 = *(v69 - 8);
  v5[389] = v70;
  v71 = *(v70 + 64) + 15;
  v5[390] = swift_task_alloc();
  v5[391] = swift_task_alloc();
  v72 = type metadata accessor for EventPayloadWithPreassignedID(0);
  v5[392] = v72;
  v73 = *(v72 - 8);
  v5[393] = v73;
  v74 = *(v73 + 64) + 15;
  v5[394] = swift_task_alloc();
  v75 = *(*(sub_22BDB8C54() - 8) + 64) + 15;
  v5[395] = swift_task_alloc();
  v76 = sub_22BDB5E04();
  v5[396] = v76;
  v77 = *(v76 - 8);
  v5[397] = v77;
  v78 = *(v77 + 64) + 15;
  v5[398] = swift_task_alloc();
  v79 = *(*(sub_22BDB5E34() - 8) + 64) + 15;
  v5[399] = swift_task_alloc();
  v80 = sub_22BBE6DE0(&qword_27D8E6508, &qword_22BDCE410);
  v5[400] = v80;
  v81 = *(v80 - 8);
  v5[401] = v81;
  v82 = *(v81 + 64) + 15;
  v5[402] = swift_task_alloc();
  v83 = sub_22BDB9B54();
  v5[403] = v83;
  v84 = *(v83 - 8);
  v5[404] = v84;
  v5[405] = *(v84 + 64);
  v5[406] = swift_task_alloc();
  v5[407] = swift_task_alloc();
  v5[408] = swift_task_alloc();
  v5[409] = swift_task_alloc();
  v5[410] = swift_task_alloc();
  v5[411] = swift_task_alloc();
  v5[412] = swift_task_alloc();
  v5[413] = swift_task_alloc();
  v85 = sub_22BDB43E4();
  v5[414] = v85;
  v86 = *(v85 - 8);
  v5[415] = v86;
  v87 = *(v86 + 64) + 15;
  v5[416] = swift_task_alloc();
  v5[417] = swift_task_alloc();
  v88 = sub_22BBE6DE0(&qword_27D8E6510, &qword_22BDCE418);
  v5[418] = v88;
  v89 = *(*(v88 - 8) + 64) + 15;
  v5[419] = swift_task_alloc();
  v5[420] = swift_task_alloc();
  v90 = type metadata accessor for SpanMetadata();
  v5[421] = v90;
  v91 = *(v90 - 8);
  v5[422] = v91;
  v5[423] = *(v91 + 64);
  v5[424] = swift_task_alloc();
  v5[425] = swift_task_alloc();
  v5[426] = swift_task_alloc();
  v5[427] = swift_task_alloc();
  v92 = sub_22BDB5D14();
  v5[428] = v92;
  v93 = *(v92 - 8);
  v5[429] = v93;
  v5[430] = *(v93 + 64);
  v5[431] = swift_task_alloc();
  v5[432] = swift_task_alloc();
  v94 = type metadata accessor for SessionCoordinatorInjectionRequest(0);
  v5[433] = v94;
  v95 = *(*(v94 - 8) + 64) + 15;
  v5[434] = swift_task_alloc();
  v5[435] = swift_task_alloc();
  v96 = sub_22BDB9774();
  v5[436] = v96;
  v97 = *(v96 - 8);
  v5[437] = v97;
  v98 = *(v97 + 64) + 15;
  v5[438] = swift_task_alloc();
  v5[439] = swift_task_alloc();
  v5[440] = swift_task_alloc();
  v99 = sub_22BDB96E4();
  v5[441] = v99;
  v100 = *(v99 - 8);
  v5[442] = v100;
  v101 = *(v100 + 64) + 15;
  v5[443] = swift_task_alloc();
  v5[444] = swift_task_alloc();
  v5[445] = swift_task_alloc();
  v5[446] = swift_task_alloc();
  v102 = *(*(sub_22BBE6DE0(&qword_27D8E6518, &unk_22BDCE420) - 8) + 64) + 15;
  v5[447] = swift_task_alloc();
  v5[448] = swift_task_alloc();
  v103 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  v5[449] = v103;
  v104 = *(v103 - 8);
  v5[450] = v104;
  v5[451] = *(v104 + 64);
  v5[452] = swift_task_alloc();
  v5[453] = swift_task_alloc();
  v5[454] = swift_task_alloc();
  v5[455] = swift_task_alloc();
  v5[456] = swift_task_alloc();
  v5[457] = swift_task_alloc();
  v5[458] = swift_task_alloc();
  v5[459] = swift_task_alloc();
  v5[460] = swift_task_alloc();
  v5[461] = swift_task_alloc();
  v105 = sub_22BDB98C4();
  v5[462] = v105;
  v106 = *(v105 - 8);
  v5[463] = v106;
  v107 = *(v106 + 64) + 15;
  v5[464] = swift_task_alloc();
  v108 = *(sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390) - 8);
  v5[465] = v108;
  v5[466] = *(v108 + 64);
  v5[467] = swift_task_alloc();
  v5[468] = swift_task_alloc();
  v5[469] = swift_task_alloc();
  v5[470] = swift_task_alloc();
  v5[471] = swift_task_alloc();
  v5[472] = swift_task_alloc();
  v5[473] = swift_task_alloc();
  v5[474] = swift_task_alloc();
  v5[475] = swift_task_alloc();
  v5[476] = swift_task_alloc();
  v5[477] = swift_task_alloc();
  v5[478] = swift_task_alloc();
  v109 = sub_22BDB77D4();
  v5[479] = v109;
  v110 = *(v109 - 8);
  v5[480] = v110;
  v111 = *(v110 + 64) + 15;
  v5[481] = swift_task_alloc();
  v5[482] = swift_task_alloc();
  v5[483] = swift_task_alloc();
  v5[484] = swift_task_alloc();
  v5[485] = swift_task_alloc();
  v5[486] = swift_task_alloc();
  v5[487] = swift_task_alloc();
  v5[488] = swift_task_alloc();
  v5[489] = swift_task_alloc();
  v5[490] = swift_task_alloc();
  v5[491] = swift_task_alloc();
  v5[492] = swift_task_alloc();
  v5[493] = swift_task_alloc();
  v5[494] = swift_task_alloc();
  v5[495] = swift_task_alloc();
  v5[496] = swift_task_alloc();
  v5[497] = swift_task_alloc();
  v5[498] = swift_task_alloc();
  v5[499] = swift_task_alloc();
  v5[500] = swift_task_alloc();
  v5[501] = swift_task_alloc();
  v5[502] = swift_task_alloc();
  v5[503] = swift_task_alloc();
  v5[504] = swift_task_alloc();
  v5[505] = swift_task_alloc();
  v5[506] = swift_task_alloc();
  v5[507] = swift_task_alloc();
  v5[508] = swift_task_alloc();
  v5[509] = swift_task_alloc();
  v5[510] = swift_task_alloc();
  v5[511] = swift_task_alloc();
  v5[512] = swift_task_alloc();
  v112 = type metadata accessor for SessionCoordinatorCommand.TransactionRequestPayload(0);
  v5[513] = v112;
  v113 = *(v112 - 8);
  v5[514] = v113;
  v5[515] = *(v113 + 64);
  v5[516] = swift_task_alloc();
  v5[517] = swift_task_alloc();
  v5[518] = swift_task_alloc();
  v114 = sub_22BDB7734();
  v5[519] = v114;
  v115 = *(v114 - 8);
  v5[520] = v115;
  v116 = *(v115 + 64) + 15;
  v5[521] = swift_task_alloc();
  v5[522] = swift_task_alloc();
  v5[523] = swift_task_alloc();
  v5[524] = swift_task_alloc();
  v5[525] = swift_task_alloc();
  v5[526] = swift_task_alloc();
  v5[527] = swift_task_alloc();
  v117 = sub_22BDB7754();
  v5[528] = v117;
  v118 = *(v117 - 8);
  v5[529] = v118;
  v119 = *(v118 + 64) + 15;
  v5[530] = swift_task_alloc();
  v5[531] = swift_task_alloc();
  v5[532] = swift_task_alloc();
  v5[533] = swift_task_alloc();
  v5[534] = swift_task_alloc();
  v5[535] = swift_task_alloc();
  v120 = *(*(sub_22BBE6DE0(&qword_27D8E6520, &qword_22BDCE430) - 8) + 64) + 15;
  v5[536] = swift_task_alloc();
  v5[537] = swift_task_alloc();
  v121 = type metadata accessor for SessionCoordinatorCommand(0);
  v5[538] = v121;
  v122 = *(v121 - 8);
  v5[539] = v122;
  v5[540] = *(v122 + 64);
  v5[541] = swift_task_alloc();
  v5[542] = swift_task_alloc();
  v5[543] = swift_task_alloc();
  v5[544] = swift_task_alloc();
  v123 = sub_22BBE6DE0(&qword_27D8E6528, &qword_22BDCE438);
  v5[545] = v123;
  v124 = *(v123 - 8);
  v5[546] = v124;
  v125 = *(v124 + 64) + 15;
  v5[547] = swift_task_alloc();
  v126 = sub_22BDB8774();
  v5[548] = v126;
  v127 = *(v126 - 8);
  v5[549] = v127;
  v128 = *(v127 + 64) + 15;
  v5[550] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB79568, v4, 0);
}

void sub_22BB79568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v14 = v12;
  sub_22BD631D0();
  v15 = v12[550];
  v16 = v12[549];
  v17 = v12[548];
  v18 = *(v14 + 4376);
  v19 = *(v14 + 2496);
  sub_22BD64C28();
  v21 = *(v20 + 192);
  *(v14 + 4408) = sub_22BDB9C64();
  v22 = *MEMORY[0x277D1DEA0];
  v24 = *(v16 + 104);
  v23 = v16 + 104;
  *(v14 + 4416) = v24;
  *(v14 + 4424) = v23 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v25 = sub_22BB95BF8();
  v26(v25);
  sub_22BDB9C74();
  *(v14 + 4432) = *(v19 + v21);
  sub_22BB72E80();

  sub_22BD64C28();
  v28 = *(v27 + 168);
  sub_22BBE6DE0(&qword_27D8E6530, &qword_22BDCE440);
  sub_22BDBAF64();
  v29 = sub_22BB89354(0);
  *(v14 + 1576) = sub_22BB893E8(v29);
  v30 = *v19;
  sub_22BD62BCC();
  *(v14 + 4440) = *(v31 + 152);
  sub_22BD62BCC();
  *(v14 + 4448) = *(v32 + 128);
  sub_22BD62BCC();
  *(v14 + 4456) = *(v33 + 120);
  sub_22BD62BCC();
  *(v14 + 4464) = *(v34 + 136);
  sub_22BD62BCC();
  *(v14 + 4472) = *(v35 + 176);
  *(v14 + 4480) = qword_28142AC88;
  sub_22BD62BCC();
  *(v14 + 4488) = *(v36 + 160);
  sub_22BD62BCC();
  *(v14 + 4496) = *(v37 + 112);
  sub_22BD62BCC();
  *(v14 + 4504) = *(v38 + 144);
  sub_22BD62BCC();
  *(v14 + 4512) = *(v39 + 184);
  sub_22BB31B88();
  swift_beginAccess();
  sub_22BB31B88();
  swift_beginAccess();
  v40 = MEMORY[0x277D1D108];
  v41 = MEMORY[0x277D1D0E8];
  v42 = MEMORY[0x277D1D0F8];
  v43 = MEMORY[0x277D1D0F0];
  v44 = MEMORY[0x277D1D110];
  v45 = MEMORY[0x277D1D0C8];
  v46 = MEMORY[0x277D1D0D0];
  v47 = MEMORY[0x277D1D0D8];
  v48 = MEMORY[0x277D1D0E0];
  v49 = MEMORY[0x277D1D198];
  v50 = 0;
  v51 = MEMORY[0x277D1D178];
  *(v14 + 4796) = *MEMORY[0x277D1D100];
  *(v14 + 4800) = *v40;
  *(v14 + 4804) = *v41;
  *(v14 + 4808) = v42->n128_u32[0];
  *(v14 + 4812) = *v43;
  *(v14 + 4816) = v44->isa;
  *(v14 + 4820) = *v45;
  *(v14 + 4824) = *v46;
  *(v14 + 4828) = *v47;
  *(v14 + 4832) = *v48;
  *(v14 + 4836) = *v49;
  *(v14 + 4840) = *v51;
  *(v14 + 4844) = *MEMORY[0x277D1D1B8];
  v52 = MEMORY[0x277D1D160];
  *(v14 + 4848) = *MEMORY[0x277D1D128];
  *(v14 + 4852) = *v52;
  *(v14 + 4856) = *MEMORY[0x277D1D138];
  v53 = MEMORY[0x277D1D120];
  *(v14 + 4860) = *MEMORY[0x277D1D1A0];
  *(v14 + 4864) = *v53;
  *(v14 + 4868) = *MEMORY[0x277D1D130];
  v54 = MEMORY[0x277D1D1A8];
  *(v14 + 4872) = *MEMORY[0x277D1D170];
  *(v14 + 4876) = *v54;
  *(v14 + 4880) = *MEMORY[0x277D1D1B0];
  v55 = MEMORY[0x277D1D168];
  *(v14 + 4884) = *MEMORY[0x277D1D188];
  *(v14 + 4888) = *v55;
  v56 = *MEMORY[0x277D1E868];
  *(v14 + 4792) = *MEMORY[0x277D1E868];
  *(v14 + 4892) = v56;
  *(v14 + 4896) = *MEMORY[0x277D1D158];
  *(v14 + 4900) = *MEMORY[0x277D1DE90];
  *(v14 + 4904) = *MEMORY[0x277D1D180];
  *(v14 + 4912) = *MEMORY[0x277D1D190];
  v2859 = *MEMORY[0x277D85B00];
  *(v14 + 4908) = *MEMORY[0x277D85B00];
  v3024 = v14;
  while (2)
  {
    *(v14 + 4924) = v2987;
    *(v14 + 4920) = v2993;
    *(v14 + 4916) = v2990;
    *(v14 + 4520) = v50;
    sub_22BD62D9C();
    sub_22BBBFF9C(v18);
    if (v165)
    {
      sub_22BB325EC(*(v14 + 4296), &qword_27D8E6520, &qword_22BDCE430);
      v2315 = *(MEMORY[0x277D857A0] + 4);
      v2316 = swift_task_alloc();
      v2317 = sub_22BB980E8(v2316);
      *v2317 = v2318;
      sub_22BB6BE8C(v2317);
      sub_22BD63350();
      sub_22BB33430();

      MEMORY[0x2822003F0](v2319, v2320, v2321, v2322, v2323, v2324, v2325, v2326, a9, a10, a11, a12);
      return;
    }

    v57 = sub_22BD61F60();
    sub_22BB3A518(v57, v42);
    sub_22BDB6124();
    sub_22BB322B0();
    swift_allocObject();
    sub_22BB758D8();
    *(v58 + 16) = v59;
    *(v58 + 24) = v23;
    v60 = sub_22BB3B69C();
    sub_22BB335C0(v60, v61);
    sub_22BD62438();
    swift_allocObject();
    sub_22BD64D5C();
    v62 = sub_22BD64D74();
    sub_22BB3A518(v62, v63);

    sub_22BDB7724();
    v3016 = sub_22BDB7744();
    LODWORD(v3014) = sub_22BDBB1D4();
    sub_22BD616A8();
    v23 = swift_allocObject();
    sub_22BD6250C(v23);
    sub_22BD616A8();
    v64 = swift_allocObject();
    sub_22BBC0370(v64);
    sub_22BB322B0();
    swift_allocObject();
    sub_22BD5F7DC();
    *(v65 + 16) = v66;
    *(v65 + 24) = v18;
    sub_22BB322B0();
    v67 = swift_allocObject();
    sub_22BB3CEDC(v67);
    sub_22BD616A8();
    v68 = swift_allocObject();
    sub_22BD62B48(v68);
    sub_22BD616A8();
    v69 = swift_allocObject();
    sub_22BD64CFC(v69);
    sub_22BB322B0();
    v70 = swift_allocObject();
    sub_22BD601AC(v70);
    sub_22BB322B0();
    v50 = swift_allocObject();
    sub_22BB69C9C(v50);
    *(v14 + 4528) = sub_22BBE6DE0(&qword_27D8E6548, &qword_22BDCE458);
    v42 = sub_22BB970B4();
    sub_22BB3B5F8(v42);
    v71[4] = v72;
    v71[5] = v23;
    v71[6] = sub_22BB89C08;
    v71[7] = v13;
    v71[8] = sub_22BB89C68;
    v71[9] = v67;
    v71[10] = sub_22BB89C08;
    v71[11] = v19;
    v71[12] = sub_22BB89C08;
    v71[13] = v18;
    v71[14] = sub_22BB89C7C;
    v71[15] = v50;

    if (sub_22BDBB244())
    {
      sub_22BB73F58("CommandProcess", &v3032);
      sub_22BD62384();
      v73 = sub_22BD619F0();
      sub_22BD5F9D4(v73);
      *(v14 + 1440) = v23;
      v74 = sub_22BB39404();
      sub_22BB67984(v74, v75, v76, v77);
      if (!v3025)
      {
        *(v14 + 1432) = sub_22BB89C08;
        *(v14 + 1440) = v13;
        v78 = sub_22BB39404();
        sub_22BB67984(v78, v79, v80, v81);
        *(v14 + 1432) = sub_22BB89C68;
        *(v14 + 1440) = v67;
        v82 = sub_22BB39404();
        sub_22BB67984(v82, v83, v84, v85);
        *(v14 + 1432) = sub_22BB89C08;
        *(v14 + 1440) = v19;
        v86 = sub_22BB39404();
        sub_22BB67984(v86, v87, v88, v89);
        *(v14 + 1432) = sub_22BB89C08;
        *(v14 + 1440) = v18;
        v90 = sub_22BB39404();
        sub_22BB67984(v90, v91, v92, v93);
        *(v14 + 1432) = sub_22BB89C7C;
        *(v14 + 1440) = v50;
        v94 = sub_22BB39404();
        sub_22BB67984(v94, v95, v96, v97);
        sub_22BD63C54();

        sub_22BDB7714();
        sub_22BD61E34();
        sub_22BD62418();
        sub_22BD65380(v98, v99, v100, v101, v102, "[SessionCoordinator %{public}s] | Begin processing command %{public}s.");
        sub_22BD619D4();
        sub_22BD6193C();
        sub_22BB679C0();
      }

      goto LABEL_403;
    }

    sub_22BD61C8C();
    v103 = sub_22BBC49A8();
    sub_22BB92AA4();
    sub_22BD62218();
    v2946 = v104;
    v2933 = v105;
    v105();
    sub_22BB2F3FC();
    v2952 = v103;
    v106 = sub_22BDB7784();
    *(v14 + 4544) = v106;
    v107 = sub_22BD61AB0();
    v2960 = v108;
    (v108)(v107);
    v109 = *(v19 + 8);
    v19 += 8;
    v44 = v109;
    v110 = sub_22BB32E04();
    (v109)(v110);
    v111 = sub_22BB39368();
    sub_22BB335C0(v111, v42);
    sub_22BD63410();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_22BD63900();
        v252 = sub_22BBE6DE0(&qword_27D8E6538, &qword_22BDCE448);
        sub_22BD60B44(v252);
        v2852 = v253;
        sub_22BB6BEE0(v106 + v254, v42, &qword_27D8E3218, &qword_22BDBE390);
        sub_22BDB63E4();
        sub_22BB322B0();
        v255 = swift_allocObject();
        sub_22BD5F704(v255);
        sub_22BB366B8();
        v256 = swift_allocObject();
        v2854 = v23;
        *(v256 + 16) = v23;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BBC0500();
        *(v257 + 16) = v258;
        *(v257 + 24) = v256;

        v3018 = sub_22BDB77C4();
        LODWORD(v3014) = sub_22BDBB134();
        sub_22BD616A8();
        v259 = swift_allocObject();
        sub_22BD623EC(v259);
        sub_22BD616A8();
        v260 = swift_allocObject();
        sub_22BB97EE0(v260);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB3E0C4();
        *(v261 + 16) = v262;
        *(v261 + 24) = v255;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD648D8();
        sub_22BB3DEE8(v263);
        sub_22BD616A8();
        v264 = swift_allocObject();
        sub_22BD64C7C(v264);
        sub_22BD616A8();
        v265 = swift_allocObject();
        *(v265 + 16) = v13;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F77C();
        *(v266 + 16) = v267;
        *(v266 + 24) = v42;
        sub_22BB322B0();
        v268 = swift_allocObject();
        sub_22BB3DEE8(v268);
        v269 = sub_22BB97DF8();
        sub_22BB31444(v269);
        v270[4] = v271;
        v270[5] = v256;
        v270[6] = sub_22BB89C08;
        v270[7] = v260;
        v270[8] = sub_22BB89C7C;
        v270[9] = v14;
        v270[10] = sub_22BB89C08;
        v270[11] = v50;
        v270[12] = sub_22BB89C08;
        v270[13] = v265;
        v270[14] = sub_22BB89C7C;
        v270[15] = v268;
        sub_22BD640D8();

        v272 = sub_22BD612E8();
        if (os_log_type_enabled(v272, v273))
        {
          sub_22BB67968();
          v274 = sub_22BD62BD8();
          sub_22BD63440(v274);
          sub_22BD5FC78(v272);
          *(v23 + 1472) = v42;
          v275 = sub_22BD5F8D0();
          v276 = v3025;
          sub_22BB67984(v275, v277, v278, v279);
          if (!v3025)
          {

            sub_22BB6F924();
            *(v23 + 1472) = v260;
            v280 = sub_22BD5F8D0();
            sub_22BB67984(v280, v281, v282, v283);

            sub_22BB6FCD0();
            *(v23 + 1472) = v14;
            v284 = sub_22BD5F8D0();
            sub_22BB67984(v284, v285, v286, v287);

            sub_22BB6F924();
            *(v23 + 1472) = v50;
            v288 = sub_22BD5F8D0();
            sub_22BB67984(v288, v289, v290, v291);

            sub_22BB6F924();
            *(v23 + 1472) = v265;
            v292 = sub_22BD5F8D0();
            sub_22BB67984(v292, v293, v294, v295);

            sub_22BD60848();
            v296 = *(v23 + 4088);
            sub_22BD62094();

            sub_22BD61E34();
            sub_22BD62CB8();
            sub_22BD636C8(v297, v298, v299, "[SessionCoordinator %{public}s] | [TX %{public}s] Begin commit of transaction.");
            sub_22BD61EC8();
            sub_22BB77E48();
            sub_22BB679C0();
          }

          goto LABEL_319;
        }

        sub_22BB75884();
        v417 = *(v23 + 3832);

        v418 = sub_22BD633D4();
        v2856 = v419;
        v419(v418);
        v14 = v23;
        v2926 = *(v23 + 4448);
        sub_22BD609DC();
        v2920 = v420;
        v421 = sub_22BD60CF4();
        v260(v421);
        sub_22BDB96A4();
        v424 = *(v265 + 8);
        v423 = (v265 + 8);
        v422 = v424;
        v425 = sub_22BB393C4();
        (v424)(v425);
        v426 = v256;
        sub_22BDB9744();
        v427 = sub_22BB89BAC();
        v276 = v2920;
        (v272)(v427, v2920);
        v2892 = sub_22BB954F8(v426);

        v428 = sub_22BD613BC();
        v2885 = v260;
        v260(v428);
        sub_22BBBE690();
        sub_22BDB96A4();
        v429 = sub_22BB393C4();
        v2869 = v424;
        (v424)(v429);
        v430 = sub_22BDB9744();
        v431 = sub_22BB30AE4();
        v2871 = v50;
        v2866 = v272;
        (v272)(v431);
        sub_22BB954F8(v430);
        sub_22BD63F10();
        v2912 = v424;
        if (v424 < v2892)
        {
          __break(1u);
          goto LABEL_391;
        }

        v433 = sub_22BB721E4(v3012);
        v2883 = v432;
        do
        {
          v2925 = v433;
          if (v432 == v433)
          {
            goto LABEL_66;
          }

          if (v432 < v433)
          {
            __break(1u);
LABEL_341:
            __break(1u);
LABEL_342:
            __break(1u);
LABEL_343:

            goto LABEL_349;
          }

          if (v433 >= v432)
          {
            goto LABEL_341;
          }

          v2899 = *(v23 + 4448);
          sub_22BD62F70();
          v2921 = v434;
          sub_22BB500E4();
          sub_22BB971BC(v435);
          sub_22BD62C40();
          sub_22BDB9694();
          sub_22BD63698();
          sub_22BDB9734();
          v436 = sub_22BB70784();
          v437 = v2896;
          v2896 = v438;
          (v438)(v436, v437);
          v439 = sub_22BB97E58();
          v260(v439);
          swift_endAccess();
          v440 = sub_22BB97B0C();
          sub_22BB929E0(v440, v441, v442);
          sub_22BBE6DE0(&qword_27D8E6488, &qword_22BDCE338);
          v260 = v2912;
          sub_22BBB797C();
          sub_22BDBAF34();
          v443 = sub_22BB970E8();
          v444(v443, name);
          sub_22BD62F60();
          v276 = v2921;
          sub_22BD63B88();
          v445();
          sub_22BD63388();
          sub_22BDB96A4();
          v446 = sub_22BB30AE4();
          (v2869)(v446);
          v430 = v422;
          sub_22BDB9744();
          v447 = sub_22BD619C8();
          (v2866)(v447, v3018);
          sub_22BB954F8(v422);
          sub_22BD63F10();
          v2912 = v422;
          if (v422 < v2892)
          {
            goto LABEL_342;
          }

          sub_22BD60F34(v433);
          sub_22BDB9B24();
          v448 = sub_22BB53C48();
          v2896(v448);
          v449 = v423[11];
          v423 += 11;
          v450 = sub_22BB30AE4();
          v451(v450);
          v452 = sub_22BD615B8();
          v453(v452);
          v432 = v2883;
        }

        while (v422 != v23);
        sub_22BD636E0();
        sub_22BD61894();
        sub_22BB53C48();
        sub_22BB9741C();
        sub_22BB71DA0();
        v3012 = v454;
LABEL_66:
        v455 = sub_22BD62F50();
        v457 = v455 + 64;
        v456 = *(v455 + 64);
        sub_22BB8EA20(v455);
        v460 = v459 & v458;
        sub_22BD63CF8();
        v462 = (v461 >> 6);
        v2878 = v463;

        v464 = 0;
        v2900 = v457;
        v2896 = v462;
LABEL_67:
        v465 = &qword_27D8E6568;
        if (v460)
        {
LABEL_72:
          sub_22BD62F40();
          sub_22BD62F2C();
          v2919 = v460;
          v469 = *(v2878 + 56);
          v276 = *(*(v2878 + 48) + 8 * (v468 | (v467 << 6)));
          v471 = *(v470 + 72);
          sub_22BB366A0();
          sub_22BB335C0(v472, v430);
          v465 = &qword_27D8E6568;
          v460 = sub_22BBE6DE0(&qword_27D8E6568, &unk_22BDCE460);
          v473 = *(v460 + 48);
          *v422 = v276;
          sub_22BB31DC8();
          sub_22BD64614(v474);
          v475 = sub_22BD6108C();
          sub_22BB336D0(v475, v476, v477, v460);
        }

        else
        {
          while (1)
          {
            v466 = v464 + 1;
            if (__OFADD__(v464, 1))
            {
              __break(1u);

              goto LABEL_414;
            }

            if (v466 >= v462)
            {
              break;
            }

            v460 = *(v457 + 8 * v466);
            ++v464;
            if (v460)
            {
              v464 = v466;
              goto LABEL_72;
            }
          }

          v548 = *(v14 + 3064);
          v549 = sub_22BB331D4();
          sub_22BBE6DE0(v549, v550);
          v551 = sub_22BB3A190();
          sub_22BB336D0(v551, v552, 1, v553);
          v2919 = 0;
        }

        v478 = sub_22BB8EA40();
        sub_22BB6BEE0(v478, v479, &qword_27D8E64F8, &qword_22BDCE400);
        v480 = sub_22BB331D4();
        v430 = sub_22BBE6DE0(v480, v481);
        sub_22BB3329C();
        if (v165)
        {

          v3021 = sub_22BB954F8(v3012);
          if (v3021)
          {
            v457 = 0;
            while (1)
            {
              sub_22BD63A1C();
              isa = v276[2].isa;
              v791 = v276 + 2;
              v790 = isa;
              isa_low = LOBYTE(v791[8].isa);
              v794 = v791[7].isa;
              v795 = sub_22BB95BF8();
              isa(v795);
              v2919 = (v457 + 1);
              if (__OFADD__(v457, 1))
              {
                break;
              }

              v796 = sub_22BB707CC();
              v797(v796);
              sub_22BD636FC();
              sub_22BD63990();
              if (v798)
              {
                oslog = *(v464 + 3936);
                v799 = sub_22BB3AAD8();
                v790(v799);
                sub_22BB702C8(isa_low + 16);
                v800 = swift_allocObject();
                v801 = sub_22BB89B94(v800);
                v802(v801);
                sub_22BD63888();
                sub_22BDB63E4();
                sub_22BB322B0();
                swift_allocObject();
                sub_22BB758D8();
                *(v803 + 16) = v804;
                *(v803 + 24) = v457;
                sub_22BB322B0();
                swift_allocObject();
                sub_22BD60784();
                *(v805 + 16) = v806;
                *(v805 + 24) = v791;

                v2900 = v791;

                v3014 = sub_22BDB77C4();
                LODWORD(v3008) = sub_22BDBB134();
                sub_22BD616A8();
                v807 = swift_allocObject();
                sub_22BD61784(v807);
                sub_22BD616A8();
                v457 = swift_allocObject();
                sub_22BD62E20(v457);
                sub_22BB322B0();
                v808 = swift_allocObject();
                sub_22BBBE7C0(v808);
                sub_22BB322B0();
                v465 = swift_allocObject();
                sub_22BB69C9C(v465);
                sub_22BD616A8();
                v430 = swift_allocObject();
                sub_22BB6C06C(v430);
                sub_22BD616A8();
                v460 = swift_allocObject();
                *(v460 + 16) = isa_low;
                sub_22BB322B0();
                v809 = swift_allocObject();
                sub_22BBBEB28(v809);
                sub_22BB322B0();
                v810 = swift_allocObject();
                sub_22BB69C9C(v810);
                v811 = sub_22BB97DF8();
                sub_22BB348E0(v811);
                v812[4] = v813;
                v812[5] = v462;
                v812[6] = sub_22BB89C08;
                v812[7] = v457;
                v812[8] = sub_22BB89C7C;
                v812[9] = v465;
                v812[10] = sub_22BB89C08;
                v812[11] = v430;
                v812[12] = sub_22BB89C08;
                v812[13] = v460;
                v812[14] = sub_22BB89C7C;
                v812[15] = v810;

                v276 = sub_22BD620A0();
                if (os_log_type_enabled(v276, v814))
                {
                  sub_22BB67968();
                  v815 = sub_22BBBFF34();
                  *(v464 + 1608) = 0;
                  *(v464 + 1616) = v815;
                  sub_22BBBEB6C();
                  *(v464 + 1600) = v816;
                  *(v464 + 968) = sub_22BB89C08;
                  *(v464 + 976) = v462;
                  v817 = sub_22BD602FC();
                  sub_22BB67984(v817, v818, v819, v820);
                  if (!v3025)
                  {

                    *(v464 + 968) = sub_22BB89C08;
                    *(v464 + 976) = v457;
                    v821 = sub_22BD602FC();
                    sub_22BB67984(v821, v822, v823, v824);

                    *(v464 + 968) = sub_22BB89C7C;
                    *(v464 + 976) = v465;
                    v825 = sub_22BD602FC();
                    sub_22BB67984(v825, v826, v827, v828);

                    *(v464 + 968) = sub_22BB89C08;
                    *(v464 + 976) = v430;
                    v829 = sub_22BD602FC();
                    sub_22BB67984(v829, v830, v831, v832);

                    *(v464 + 968) = sub_22BB89C08;
                    *(v464 + 976) = v460;
                    v833 = sub_22BD602FC();
                    sub_22BB67984(v833, v834, v835, v836);

                    *(v464 + 968) = sub_22BB89C7C;
                    *(v464 + 976) = v810;
                    v837 = sub_22BD602FC();
                    sub_22BB67984(v837, v838, v839, v840);
                    sub_22BD63A4C();
                    sub_22BBBE830();
                    sub_22BD636C8(&dword_22BB2C000, v3014, v841, "[SessionCoordinator %{public}s] Event: %s");
                    sub_22BD62500();
                    swift_arrayDestroy();
                    sub_22BB30458();
                    sub_22BB679C0();
                  }

                  goto LABEL_356;
                }

                sub_22BD63594();

                (v2856)(v2896, v2878);
                (*(isa_low + 8))(v3008, oslog);
              }

              else
              {
                oslogb = *(v464 + 3928);
                sub_22BDB63E4();
                sub_22BB322B0();
                v842 = swift_allocObject();
                v843 = sub_22BD62AA0(v842);
                *(v843 + 16) = v844;
                *(v843 + 24) = v457;
                v845 = sub_22BB3AAD8();
                v790(v845);
                sub_22BD63970();
                v276 = swift_allocObject();
                sub_22BD63324(v276);
                sub_22BD64B28();
                (v422)();
                sub_22BB322B0();
                v846 = swift_allocObject();
                v847 = sub_22BD62A88(v846);
                *(v847 + 16) = v848;
                *(v847 + 24) = v276;
                v849 = sub_22BBBEC20();
                v790(v849);
                v2874 = swift_allocObject();
                v850 = sub_22BD63324(v2874);
                (v422)(v850);

                oslog = sub_22BDB77C4();
                LODWORD(v2900) = sub_22BDBB134();
                sub_22BD616A8();
                v851 = swift_allocObject();
                sub_22BB973E4(v851);
                sub_22BD616A8();
                v3008 = swift_allocObject();
                sub_22BD62CE4(v3008);
                sub_22BB322B0();
                swift_allocObject();
                sub_22BB9710C();
                *(v852 + 16) = v853;
                *(v852 + 24) = v2878;
                sub_22BB322B0();
                v854 = swift_allocObject();
                sub_22BB69C9C(v854);
                sub_22BD616A8();
                v855 = swift_allocObject();
                sub_22BD64AAC(v855);
                sub_22BD616A8();
                v430 = swift_allocObject();
                *(v430 + 16) = v465;
                sub_22BB322B0();
                swift_allocObject();
                sub_22BD6067C();
                *(v856 + 16) = v857;
                *(v856 + 24) = v2896;
                sub_22BB322B0();
                v462 = swift_allocObject();
                sub_22BB69C9C(v462);
                sub_22BD616A8();
                v858 = swift_allocObject();
                sub_22BD63D38(v858);
                sub_22BD616A8();
                v859 = swift_allocObject();
                *(v859 + 16) = v465;
                sub_22BB322B0();
                swift_allocObject();
                sub_22BD6073C();
                *(v860 + 16) = v861;
                *(v860 + 24) = v2874;
                sub_22BB322B0();
                v465 = swift_allocObject();
                sub_22BB960B8(v465);
                v862 = sub_22BD630D4();
                sub_22BB2F294(v862, xmmword_22BDCE140);
                v862[4].n128_u64[1] = v854;
                v862[5].n128_u64[0] = sub_22BB89C08;
                v862[5].n128_u64[1] = v14;
                v862[6].n128_u64[0] = sub_22BB89C08;
                v862[6].n128_u64[1] = v430;
                v862[7].n128_u64[0] = sub_22BB89C7C;
                v862[7].n128_u64[1] = v462;
                v862[8].n128_u64[0] = sub_22BB89C08;
                v862[8].n128_u64[1] = v276;
                v862[9].n128_u64[0] = sub_22BB89C08;
                v862[9].n128_u64[1] = v859;
                v862[10].n128_u64[0] = sub_22BB89C7C;
                v862[10].n128_u64[1] = v465;

                v2896 = v854;

                v460 = v14;

                sub_22BD64B08();
                if (os_log_type_enabled(oslog, v863))
                {
                  sub_22BB73FA4();
                  v864 = sub_22BB70090();
                  *(v464 + 1592) = 0;
                  *(v464 + 2456) = v864;
                  sub_22BB75908();
                  *(v464 + 1624) = v430;
                  *(v464 + 952) = sub_22BB89C08;
                  *(v464 + 960) = v3014;
                  v865 = sub_22BB971A8();
                  sub_22BB67984(v865, v866, v867, v868);
                  if (!v3025)
                  {

                    *(v464 + 952) = sub_22BB89C08;
                    *(v464 + 960) = v854;
                    v869 = sub_22BB971A8();
                    sub_22BB67984(v869, v870, v871, v872);

                    *(v464 + 952) = sub_22BB89C7C;
                    *(v464 + 960) = v862;
                    sub_22BD6122C();

                    *(v464 + 952) = sub_22BB89C08;
                    *(v464 + 960) = v14;
                    sub_22BD6122C();

                    *(v464 + 952) = sub_22BB89C08;
                    *(v464 + 960) = v2874;
                    sub_22BD6122C();

                    *(v464 + 952) = sub_22BB89C7C;
                    *(v464 + 960) = v462;
                    sub_22BD6122C();

                    *(v464 + 952) = sub_22BB89C08;
                    *(v464 + 960) = v2930;
                    sub_22BD6122C();

                    *(v464 + 952) = sub_22BB89C08;
                    *(v464 + 960) = v2878;
                    sub_22BD6122C();

                    *(v464 + 952) = sub_22BB89C7C;
                    *(v464 + 960) = v2871;
                    sub_22BD6122C();
                    sub_22BD63768();
                    sub_22BD6427C();
                    sub_22BD63B3C(&dword_22BB2C000, 0, v873, "[SessionCoordinator %{public}s] Event ID: %{public}s is %{public}s");
                    sub_22BD62500();
                    swift_arrayDestroy();
                    sub_22BB30458();
                    sub_22BB679C0();
                  }

LABEL_330:

                  goto LABEL_414;
                }

                sub_22BD6355C();

                v874 = v862->n128_u64[1];
                v422 = &v862->n128_i64[1];
                v2856 = v874;
                (v874)(v2874, v430);
                v875 = *(v854 + 8);
                v457 = v854 + 8;
                v875(v2900, v2878);
              }

              v14 = v464;
              v876 = v3025;
              sub_22BBC04D0();
              if (v165)
              {
                goto LABEL_147;
              }
            }

            __break(1u);

LABEL_368:

            goto LABEL_414;
          }

          v876 = v3025;
LABEL_147:
          v2807 = sub_22BB954F8(*(v14 + 2464));
          if (v2807)
          {
            sub_22BD64B90();
            v2818 = v992;
            v276 = &qword_27D8E6038;
            v2805 = v464;
            while (1)
            {
              sub_22BD632A8();
              sub_22BD618B8();
              sub_22BB954F0(v993, v994, v995);
              v996 = *(v460 + 80);
              v997 = *(v460 + 72);
              sub_22BB75920();
              sub_22BB3CD70(v998, v999, v1000, &qword_22BDD0300);
              v2826 = v457 + 1;
              if (__OFADD__(v457, 1))
              {
                goto LABEL_398;
              }

              v1001 = sub_22BB6FFCC();
              v1003 = v430 + v1002;
              sub_22BB970CC(v1001);
              v1004(v1003, v464 + v2818, v422);
              v1005 = sub_22BD60A8C();
              v1006(v1005);
              v422 = v1007;
              if (*(v2852 + 16))
              {
                v1008 = v2852;
                sub_22BB72B1C();
                sub_22BD63E60();
                if (v2852)
                {
                  v2816 = v457;
                  v3027 = v876;
                  v2811 = 0;
                  v1009 = *(v2852 + 36);
                  goto LABEL_156;
                }
              }

              else
              {
              }

              v1010 = sub_22BD60CC4(*(v14 + 3024));
              v1011(v1010);
              sub_22BB366B8();
              v422 = swift_allocObject();
              *(v422 + 16) = v2852;
              v1012 = sub_22BBC05B4();
              sub_22BD63CDC(v1012);

              v430 = v14 + 80;
              v2869 = sub_22BBBFFC8();
              v464 = v1013;
              v1015 = v1014;
              sub_22BD620D0();

              v1016 = *(v14 + 128);

              if (v460)
              {
                break;
              }

              v464 = v2805;
LABEL_171:
              v276 = &qword_27D8E6038;
              v465 = &qword_22BDD0300;
              sub_22BB325EC(*(v14 + 3024), &qword_27D8E6038, &qword_22BDD0300);
              ++v457;
              if (v2826 == v2807)
              {
                goto LABEL_172;
              }
            }

            v2816 = v457;
            v3027 = v876;
            v1008 = v2869;
            v1017 = sub_22BB3CB04();
            sub_22BD5EC9C(v1017, v1018, v1019);
            v2811 = v1015;
            sub_22BD6201C();
LABEL_156:
            v1020 = sub_22BD61FCC();
            v2869 = v1022;
            v2814 = v1023;
            sub_22BB97FF0(v1020, v1022, v1023, v1021 & 1, v2852);
            sub_22BD62B9C();
            v1024 = v876[175].isa;
            v2809 = v876[176].isa;
            sub_22BDB63E4();
            sub_22BB322B0();
            v1025 = swift_allocObject();
            v1026 = sub_22BD62A04(v1025);
            *(v1026 + 16) = v1027;
            *(v1026 + 24) = v464;
            sub_22BB366B8();
            v1028 = swift_allocObject();
            sub_22BB973F4(v1028);
            sub_22BB322B0();
            v1029 = swift_allocObject();
            v1030 = sub_22BD629EC(v1029);
            *(v1030 + 16) = v1031;
            *(v1030 + 24) = v876;
            v1032 = sub_22BD00E3C();
            sub_22BB3CD70(v1032, v1033, &qword_27D8E6038, &qword_22BDD0300);
            sub_22BD63CB4();
            swift_allocObject();
            sub_22BD64AFC();
            sub_22BD63CD0();
            sub_22BB6BEE0(v1034, v1035, v1036, v1037);
            sub_22BB322B0();
            v1038 = swift_allocObject();
            sub_22BB976A8(v1038);
            sub_22BB322B0();
            v1039 = swift_allocObject();
            v2896 = v1008;
            *(v1039 + 16) = v1008;
            *(v1039 + 24) = v422;
            sub_22BB322B0();
            v1040 = swift_allocObject();
            sub_22BB97D80(v1040);
            sub_22BB366B8();
            v2857 = v1024;
            *(swift_allocObject() + 16) = v1024;
            sub_22BB322B0();
            v1041 = swift_allocObject();
            sub_22BD60634(v1041);
            sub_22BB3CD70(oslog, v2900, &qword_27D8E3218, &qword_22BDBE390);
            sub_22BD62264(name);
            sub_22BB92A98();
            v1042 = swift_allocObject();
            sub_22BB9741C();
            sub_22BB6BEE0(v1043, v1044, v1045, v1046);

            v2830 = sub_22BDB77C4();
            v2824 = sub_22BDBB134();
            sub_22BD616A8();
            v2905 = swift_allocObject();
            *(v2905 + 16) = 34;
            sub_22BD616A8();
            osloga = swift_allocObject();
            sub_22BB6FB2C(osloga);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB96B64();
            *(v1047 + 16) = v1048;
            *(v1047 + 24) = v3008;
            sub_22BB322B0();
            v1049 = swift_allocObject();
            v1050 = sub_22BD629BC(v1049);
            *(v1050 + 16) = v1051;
            *(v1050 + 24) = &qword_27D8E3218;
            sub_22BD616A8();
            v3009 = swift_allocObject();
            *(v3009 + 16) = 34;
            sub_22BD616A8();
            v2923 = swift_allocObject();
            *(v2923 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB97D10();
            *(v1052 + 16) = v1053;
            *(v1052 + 24) = v3014;
            sub_22BB322B0();
            v1054 = swift_allocObject();
            v1055 = sub_22BD629A4(v1054);
            *(v1055 + 16) = v1056;
            *(v1055 + 24) = v422;
            sub_22BD616A8();
            v2841 = swift_allocObject();
            *(v2841 + 16) = 34;
            sub_22BD616A8();
            v2838 = swift_allocObject();
            *(v2838 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB3AC60();
            *(v1057 + 16) = v1058;
            *(v1057 + 24) = v1038;
            sub_22BB322B0();
            v1059 = swift_allocObject();
            sub_22BBC45B4(v1059);
            sub_22BD616A8();
            v1060 = swift_allocObject();
            *(v1060 + 16) = 34;
            sub_22BD616A8();
            v1061 = swift_allocObject();
            *(v1061 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F86C();
            *(v1062 + 16) = v1063;
            *(v1062 + 24) = v1040;
            sub_22BB322B0();
            v1064 = swift_allocObject();
            v2820 = sub_22BB8AEF8(v1064);
            sub_22BD616A8();
            v2835 = swift_allocObject();
            *(v2835 + 16) = 34;
            sub_22BD616A8();
            v2880 = swift_allocObject();
            *(v2880 + 16) = 8;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB97D10();
            *(v1065 + 16) = v1066;
            *(v1065 + 24) = v1041;
            sub_22BB322B0();
            v1067 = swift_allocObject();
            sub_22BB97474(v1067);
            sub_22BD616A8();
            v2828 = swift_allocObject();
            *(v2828 + 16) = 34;
            sub_22BD616A8();
            v2832 = swift_allocObject();
            *(v2832 + 16) = 8;
            v1068 = v1060;
            v2875 = v1060;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB97EBC();
            *(v1069 + 16) = v1070;
            *(v1069 + 24) = v1042;
            sub_22BB322B0();
            v1071 = swift_allocObject();
            sub_22BB97474(v1071);
            v1072 = swift_allocObject();
            sub_22BB73BD0(v1072);
            sub_22BD60544(v2905);
            sub_22BB3FE84(osloga);
            v1072[9] = name;
            v1072[10] = sub_22BB89C08;
            v1072[11] = v3009;
            v1072[12] = sub_22BB89C08;
            sub_22BD6061C(v2923);
            sub_22BD625EC();
            sub_22BD62974();
            sub_22BBC052C();
            v1072[23] = v1060;
            v1072[24] = sub_22BB89C08;
            v1072[25] = v1061;
            v1072[26] = sub_22BB89C7C;
            v1072[27] = v1040;
            v1072[28] = sub_22BB89C08;
            sub_22BD61974();
            sub_22BD62914();
            sub_22BD62EF4();

            sub_22BD65338();

            v1073 = v1071;

            if (os_log_type_enabled(v2830, v2824))
            {
              sub_22BB67968();
              v1074 = sub_22BD6449C();
              sub_22BB8A61C(v1074);
              *v2828 = 1538;
              MEMORY[0x6AA] = v2828 + 2;
              sub_22BB6B724();
              MEMORY[0x632] = v2905;
              v1075 = sub_22BB39218();
              sub_22BB67984(v1075, v1076, v1077, v1078);
              if (!v3027)
              {

                sub_22BB6B724();
                MEMORY[0x632] = osloga;
                v1079 = sub_22BB39218();
                sub_22BB67984(v1079, v1080, v1081, v1082);

                sub_22BB37EF8();
                MEMORY[0x632] = name;
                v1083 = sub_22BB39218();
                sub_22BB67984(v1083, v1084, v1085, v1086);

                sub_22BB6B724();
                MEMORY[0x632] = v3009;
                v1087 = sub_22BB39218();
                sub_22BB67984(v1087, v1088, v1089, v1090);

                sub_22BB6B724();
                MEMORY[0x632] = v2923;
                v1091 = sub_22BB39218();
                sub_22BB67984(v1091, v1092, v1093, v1094);

                sub_22BB37EF8();
                MEMORY[0x632] = v3014;
                v1095 = sub_22BB39218();
                sub_22BB67984(v1095, v1096, v1097, v1098);

                sub_22BB6B724();
                MEMORY[0x632] = v2841;
                v1099 = sub_22BB39218();
                sub_22BB67984(v1099, v1100, v1101, v1102);

                sub_22BB6B724();
                MEMORY[0x632] = v2838;
                v1103 = sub_22BB39218();
                sub_22BB67984(v1103, v1104, v1105, v1106);

                sub_22BB37EF8();
                MEMORY[0x632] = 34;
                v1107 = sub_22BB39218();
                sub_22BB67984(v1107, v1108, v1109, v1110);

                sub_22BB6B724();
                MEMORY[0x632] = v2875;
                v1111 = sub_22BB39218();
                sub_22BB67984(v1111, v1112, v1113, v1114);

                sub_22BB6B724();
                MEMORY[0x632] = v1061;
                v1115 = sub_22BB39218();
                sub_22BB67984(v1115, v1116, v1117, v1118);

                sub_22BB37EF8();
                MEMORY[0x632] = v2820;
                v1119 = sub_22BB39218();
                sub_22BB67984(v1119, v1120, v1121, v1122);

                sub_22BB6B724();
                MEMORY[0x632] = v2835;
                v1123 = sub_22BB39218();
                sub_22BB67984(v1123, v1124, v1125, v1126);

                sub_22BB6B724();
                MEMORY[0x632] = v2880;
                v1127 = sub_22BB39218();
                sub_22BB67984(v1127, v1128, v1129, v1130);

                sub_22BB37EF8();
                MEMORY[0x632] = v1068;
                v1131 = sub_22BB39218();
                sub_22BB67984(v1131, v1132, v1133, v1134);

                MEMORY[0x62A] = sub_22BB89C08;
                MEMORY[0x632] = v2828;
                v1135 = sub_22BB39218();
                sub_22BB67984(v1135, v1136, v1137, v1138);

                MEMORY[0x62A] = sub_22BB89C08;
                MEMORY[0x632] = v2832;
                v1139 = sub_22BB39218();
                sub_22BB67984(v1139, v1140, v1141, v1142);

                sub_22BB37EF8();
                MEMORY[0x632] = v1071;
                v1143 = sub_22BB39218();
                sub_22BB67984(v1143, v1144, v1145, v1146);
                sub_22BD62624();

                sub_22BD63EC8(&dword_22BB2C000, v2830, v2824, "[SessionCoordinator %{public}s] | [TX %{public}s] %{public}s (as %{public}s) notified. Span %{public}s spawned with request ID %{public}s.");
                sub_22BD62D5C();
                sub_22BB30458();
                sub_22BB679C0();
              }

              goto LABEL_349;
            }

            sub_22BB70000();

            v1147 = *(v2828 + 8);
            v1148 = sub_22BD00AA4();
            v1149(v1148);
            v1150 = sub_22BD5FC9C();
            v2876 = v1151;
            v1151(v1150);
            sub_22BD60604();
            sub_22BB335C0(v2832 + v1071, v1072);
            sub_22BDB6104();
            v1152 = sub_22BB3AC54();
            sub_22BB335C0(v1152, v1153);
            sub_22BB58DFC();
            swift_allocObject();
            sub_22BB2F5B0();
            sub_22BD652D8(v1154);
            sub_22BB322B0();
            v1155 = swift_allocObject();
            sub_22BB3E2EC(v1155);
            sub_22BB366B8();
            v1156 = swift_allocObject();
            sub_22BD61A0C(v1156);
            sub_22BB322B0();
            v1157 = swift_allocObject();
            sub_22BD5F71C(v1157);
            sub_22BB322B0();
            v1158 = swift_allocObject();
            sub_22BD64ADC(v1158);
            sub_22BB322B0();
            v1159 = swift_allocObject();
            sub_22BB8ADD4(v1159);
            sub_22BDB7724();
            v3010 = sub_22BDB7744();
            sub_22BDBB1D4();
            sub_22BD616A8();
            v1160 = swift_allocObject();
            sub_22BD63318(v1160);
            sub_22BD616A8();
            v1161 = swift_allocObject();
            sub_22BB97EE0(v1161);
            sub_22BB322B0();
            v1162 = swift_allocObject();
            sub_22BB586D8(v1162);
            sub_22BB322B0();
            v1163 = swift_allocObject();
            v3015 = sub_22BB3DEE8(v1163);
            sub_22BD616A8();
            oslog = swift_allocObject();
            LOBYTE(oslog[2].isa) = v1073;
            sub_22BD616A8();
            v2900 = swift_allocObject();
            *(v2900 + 16) = v2832;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB756B0();
            *(v1164 + 16) = v1165;
            *(v1164 + 24) = v1157;
            sub_22BB322B0();
            v1166 = swift_allocObject();
            sub_22BB3DEE8(v1166);
            sub_22BD616A8();
            v1167 = swift_allocObject();
            *(v1167 + 16) = v1073;
            sub_22BD616A8();
            v1168 = swift_allocObject();
            sub_22BD64300(v1168);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD60724();
            *(v1169 + 16) = v1170;
            *(v1169 + 24) = v1156;
            sub_22BB322B0();
            v1171 = swift_allocObject();
            sub_22BB960B8(v1171);
            v1172 = sub_22BD630D4();
            v1173 = sub_22BBC2570(v1172, xmmword_22BDCE140);
            v1173[2].n128_u64[0] = v1174;
            v1173[2].n128_u64[1] = v1160;
            v1173[3].n128_u64[0] = sub_22BB89C08;
            v1173[3].n128_u64[1] = v1161;
            v1173[4].n128_u64[0] = sub_22BB89C7C;
            v1173[4].n128_u64[1] = v3015;
            v1173[5].n128_u64[0] = sub_22BB89C08;
            v1173[5].n128_u64[1] = oslog;
            v1173[6].n128_u64[0] = sub_22BB89C08;
            v1173[6].n128_u64[1] = v2900;
            v1173[7].n128_u64[0] = sub_22BB89C7C;
            v1173[7].n128_u64[1] = v1166;
            v1173[8].n128_u64[0] = sub_22BB89C08;
            v1173[8].n128_u64[1] = v1167;
            v1173[9].n128_u64[0] = sub_22BB89C08;
            v1173[9].n128_u64[1] = v1068;
            v1173[10].n128_u64[0] = sub_22BB89C7C;
            v1173[10].n128_u64[1] = v1171;

            name = v1161;

            sub_22BD652C0();

            if (sub_22BDBB244())
            {
              v2842 = v1166;
              sub_22BB73F58("Span", &v3032);
              v2833 = v3032;
              sub_22BB67968();
              v1175 = sub_22BB70090();
              sub_22BD641EC(v1175);
              sub_22BB35530(v3010);
              v1176 = sub_22BB3A2F8(v1160);
              sub_22BB67984(v1176, v1177, v1178, v1179);
              if (!v3027)
              {
                sub_22BB73F80();
                MEMORY[0x5F2] = v1161;
                v1180 = sub_22BB69324();
                sub_22BB67984(v1180, v1181, v1182, v1183);
                sub_22BB6F960();
                v1184 = sub_22BB3A2F8(v3015);
                sub_22BB67984(v1184, v1185, v1186, v1187);
                sub_22BB73F80();
                MEMORY[0x5F2] = oslog;
                v1188 = sub_22BB69324();
                sub_22BB67984(v1188, v1189, v1190, v1191);
                sub_22BB73F80();
                MEMORY[0x5F2] = oslog;
                v1192 = sub_22BB69324();
                sub_22BB67984(v1192, v1193, v1194, v1195);
                sub_22BB6F960();
                v1196 = sub_22BB3A2F8(v2842);
                sub_22BB67984(v1196, v1197, v1198, v1199);
                sub_22BB73F80();
                MEMORY[0x5F2] = v1167;
                v1200 = sub_22BB69324();
                sub_22BB67984(v1200, v1201, v1202, v1203);
                sub_22BB73F80();
                MEMORY[0x5F2] = v1068;
                v1204 = sub_22BB69324();
                sub_22BB67984(v1204, v1205, v1206, v1207);
                sub_22BB6F960();
                MEMORY[0x5F2] = v1171;
                v1208 = sub_22BB69324();
                sub_22BB67984(v1208, v1209, v1210, v1211);
                sub_22BD643E0();

                sub_22BDB7714();
                sub_22BD64840();
                sub_22BD63C7C(v1212, v1213, v1214, v1215, v2833, "[SessionCoordinator %{public}s] - Span %{public}s - Part: %{public}s");
                sub_22BD64420();
                sub_22BB2F194();
                sub_22BB679C0();
              }

              goto LABEL_403;
            }

            sub_22BB897F0();
            v2843 = v1216;
            v1217 = MEMORY[0xD62];
            sub_22BD64DA4();
            v2919 = v1218;
            sub_22BB4FE90();
            v2839 = v1219;
            sub_22BD631B0();
            v2836 = v1220;
            v14 = *(v3024 + 2920);
            sub_22BB89508(*(v3024 + 2912));
            v2872 = *(v1221 + 2496);
            v1222 = sub_22BB313A8();
            (v2933)(v1222);
            sub_22BB3A190();
            v1223 = sub_22BDB7784();
            v1224 = sub_22BB362AC();
            (v2960)(v1224);
            sub_22BB3FBBC();
            sub_22BB75770();
            v1225();
            v1226 = SLODWORD(oslog[3].isa);
            v1227 = sub_22BB96DFC();
            sub_22BB3CD70(v1227, v1228, &qword_27D8E3218, &qword_22BDBE390);
            sub_22BB9766C();
            *v1229 = v2846;
            v1229[1] = v2848;
            sub_22BD64070(SLODWORD(oslog[4].isa));
            sub_22BB3B410();
            sub_22BB335C0(v2836, v14);
            sub_22BB366A0();
            sub_22BB335C0(v1217, v2843);
            v1230 = sub_22BBC01E4();
            v2876(v1230);

            sub_22BB35FA0();
            v3008 = v1223;
            v1234 = sub_22BBBED88(v1231, v1232, v1233, v1223);
            sub_22BB8B6A4();
            sub_22BD64FF0();
            sub_22BD63888();
            sub_22BB94F54(v3012, v1235);
            v1236 = sub_22BB3A190();
            v3014 = v1234;
            if (sub_22BB3AA28(v1236, v1237, v2919) == 1)
            {
              sub_22BB325EC(*(v3024 + 3624), &unk_27D8E69E0, &qword_22BDC1660);
            }

            else
            {
              v1238 = *(v3024 + 3232);
              v1239 = *(v3024 + 3224);
              sub_22BDB9AA4();
              sub_22BD63450();
              v1240 = *(v1238 + 8);
              v1241 = sub_22BB3AC54();
              v1242(v1241);
              if (v2839)
              {
LABEL_167:
                sub_22BB6FA98();
                sub_22BB7581C();
                sub_22BD6264C();
                v2881 = *(v14 + 2864);
                v2844 = *(v14 + 2792);
                v1243 = sub_22BD641D4();
                SessionPersistenceManager.write(initiatedParticipant:initiatedSpanId:postingParticipant:postingSpanId:)(v1243, v1244, v2857, v1245, v2839, v2854);

                sub_22BB387B8();
                sub_22BB34648();
                sub_22BD63B88();
                v1246();
                sub_22BD6379C();
                swift_storeEnumTagMultiPayload();

                sub_22BDBAF34();
                v1247 = sub_22BD632B8();
                v1248(v1247, v2876);
                sub_22BB366A0();
                sub_22BB335C0(v2900, v2881);
                sub_22BB331C8();
                sub_22BB336D0(v1249, v1250, v1251, oslog);
                sub_22BB3B574();
                sub_22BD63D1C();
                swift_endAccess();
                if (*(v2919 + v1234) == 1)
                {
                  v1252 = *(v14 + 4896);
                  name = *(v14 + 3216);
                  sub_22BB96D9C();
                  sub_22BB70244(v1253);
                  v1255 = *(v1254 + 3192);
                  v1256 = *(v3024 + 3184);
                  sub_22BD61744();
                  v1258 = *(v1257 + 3168);
                  sub_22BD63ADC();
                  sub_22BD63804();
                  sub_22BD61528();
                  sub_22BDB5D24();
                  v1259 = sub_22BD639D4();
                  v1260(v1259, v1252, v1258);
                  sub_22BB93D50();
                  sub_22BDB5E14();
                  sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
                  sub_22BBBFFBC();
                  sub_22BDBAF34();
                  v1261 = sub_22BB721D8();
                  sub_22BB50CF4(v1261, v2814, v2811);
                  v1262 = sub_22BB2F324();
                  sub_22BBBFEB0(v1262, v1263, v1264);

                  (*(v14 + 8))(name, v2919);
                  v14 = v3024;
                }

                else
                {
                  v1265 = sub_22BB721D8();
                  sub_22BB50CF4(v1265, v2814, v2811);
                  v1266 = sub_22BB53C48();
                  sub_22BBBFEB0(v1266, v1267, v1268);
                }

                v876 = v3027;
                v457 = v2816;
                v464 = v2805;
                v1269 = *(v14 + 3392);
                v430 = *(v14 + 2984);
                v1270 = *(v14 + 2968);
                v422 = *(v14 + 2960);
                v460 = *(v14 + 2952);
                sub_22BB33E70();
                sub_22BB34648();
                sub_22BB3093C();
                sub_22BB34648();
                v1271 = sub_22BBB4C24();
                v1272(v1271);
                goto LABEL_171;
              }
            }

            sub_22BDB83A4();
            sub_22BD63450();

            goto LABEL_167;
          }

LABEL_172:
          v3025 = v876;
          v1273 = *(v14 + 4272);
          v1274 = *(v14 + 4200);
          sub_22BD62768();
          sub_22BDB6124();
          sub_22BB322B0();
          v1275 = swift_allocObject();
          sub_22BB3E014(v1275);
          sub_22BB366B8();
          v1276 = swift_allocObject();
          sub_22BB973F4(v1276);
          sub_22BB322B0();
          v1277 = swift_allocObject();
          sub_22BD601E4(v1277);
          sub_22BDB7724();
          v3014 = sub_22BDB7744();
          LODWORD(v3008) = sub_22BDBB1D4();
          sub_22BD616A8();
          v1278 = swift_allocObject();
          sub_22BB97E20(v1278);
          sub_22BD616A8();
          v1279 = swift_allocObject();
          sub_22BBC0370(v1279);
          sub_22BB322B0();
          v1280 = swift_allocObject();
          sub_22BB89D30(v1280);
          sub_22BB322B0();
          v1281 = swift_allocObject();
          sub_22BB3DEE8(v1281);
          sub_22BD616A8();
          swift_allocObject();
          sub_22BD648D8();
          *(v1282 + 16) = v276;
          sub_22BD616A8();
          v1283 = swift_allocObject();
          sub_22BB7564C(v1283);
          sub_22BB322B0();
          v1284 = swift_allocObject();
          sub_22BD6018C(v1284);
          sub_22BB322B0();
          v1285 = swift_allocObject();
          sub_22BD60264(v1285);
          v1286 = sub_22BB97DF8();
          sub_22BB34620(v1286);
          v1287[4] = v1288;
          v1287[5] = v1278;
          v1287[6] = sub_22BB89C08;
          v1287[7] = v464;
          v1287[8] = sub_22BB89C7C;
          v1287[9] = v1281;
          v1287[10] = sub_22BB89C08;
          v1287[11] = v14;
          v1287[12] = sub_22BB89C08;
          v1287[13] = v465;
          v1287[14] = sub_22BB89C7C;
          v1287[15] = v1285;

          if (sub_22BDBB244())
          {
            sub_22BB73F58("InstrumentationSend", &v3032);
            sub_22BD65428();
            v1289 = sub_22BD619F0();
            sub_22BD5F9A0(v1289);
            v876[174].isa = v276;
            v1290 = sub_22BB3CE1C();
            sub_22BB67984(v1290, v1291, v1292, v1293);
            if (!v876)
            {
              sub_22BB70508();
              MEMORY[0x570] = v464;
              v1294 = sub_22BB3CE1C();
              sub_22BB67984(v1294, v1295, v1296, v1297);
              MEMORY[0x568] = sub_22BB89C7C;
              MEMORY[0x570] = v1281;
              v1298 = sub_22BB3CE1C();
              sub_22BB67984(v1298, v1299, v1300, v1301);
              sub_22BB70508();
              MEMORY[0x570] = v14;
              v1302 = sub_22BB3CE1C();
              sub_22BB67984(v1302, v1303, v1304, v1305);
              sub_22BD60234();
              MEMORY[0x570] = v465;
              v1306 = sub_22BB3CE1C();
              sub_22BB67984(v1306, v1307, v1308, v1309);
              sub_22BD602A8();
              MEMORY[0x570] = v1285;
              v1310 = sub_22BB3CE1C();
              sub_22BB67984(v1310, v1311, v1312, v1313);

              sub_22BDB7714();
              sub_22BBBE830();
              sub_22BD62590();
              sub_22BD65410(v1314, v1315, v1316, v1317, v1286, "[SessionCoordinator %s] | [TX %s] Begin dispatch to instrumentation.");
              sub_22BD62D7C();
              sub_22BD6193C();
              sub_22BB679C0();
            }

            goto LABEL_403;
          }

          v1819 = sub_22BD609B4();
          (v2933)(v1819);
          sub_22BB3A190();
          v876[596].isa = sub_22BDB7784();
          v1820 = sub_22BB2F0E0();
          (v2960)(v1820);
          sub_22BB37074();
          sub_22BB75770();
          v1821();
          sub_22BD648C0();
          if (v1822)
          {
            if (v1822 < 1)
            {
              __break(1u);
              goto LABEL_411;
            }

            sub_22BD60DAC();
            oslog = *(v1823 + 16);
            do
            {
              sub_22BD60928();
              name = v1824;
              sub_22BD61C78();
              sub_22BB70244(v1825);
              v876 = *(v1826 + 4400);
              sub_22BB720E0();
              sub_22BD634D0();
              (oslog)();
              sub_22BD62C60();
              v1827 = sub_22BD615E4();
              v1828(v1827);
              v1829 = sub_22BD62454();
              v1278(v1829);
              sub_22BDB9C74();
              sub_22BD654A0();

              sub_22BB6FB0C();
            }

            while (!v165);
          }

          sub_22BD60B30();
          if (v165)
          {
            v1830 = sub_22BD635CC();
            v1831 = v3025;
            sub_22BD44098(v1830);
            v2930 = v3025;
            if (v3025)
            {
              sub_22BD63BBC();
              sub_22BDB63E4();
              sub_22BB322B0();
              v1832 = swift_allocObject();
              sub_22BD6049C(v1832);
              sub_22BB366B8();
              *(swift_allocObject() + 16) = v2854;
              sub_22BB322B0();
              v1833 = swift_allocObject();
              sub_22BD60348(v1833);
              sub_22BB366B8();
              v1834 = swift_allocObject();
              sub_22BBC0200(v1834);
              v1835 = v3025;
              v3014 = sub_22BDB77C4();
              LODWORD(v3012) = sub_22BDBB114();
              sub_22BD616A8();
              v1836 = swift_allocObject();
              sub_22BD63B94(v1836);
              sub_22BD616A8();
              v3021 = swift_allocObject();
              sub_22BD612D8(v3021);
              sub_22BB322B0();
              v1837 = swift_allocObject();
              sub_22BB96D60(v1837);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD5F74C();
              *(v1838 + 16) = v1839;
              *(v1838 + 24) = v876;
              sub_22BD616A8();
              v1840 = swift_allocObject();
              *(v1840 + 16) = v465;
              sub_22BD616A8();
              v3031 = swift_allocObject();
              *(v3031 + 16) = v1831;
              sub_22BB322B0();
              v1841 = swift_allocObject();
              sub_22BBBE888(v1841);
              sub_22BB322B0();
              v1842 = swift_allocObject();
              sub_22BD6032C(v1842);
              sub_22BD616A8();
              v1843 = swift_allocObject();
              sub_22BD61B1C(v1843);
              sub_22BD616A8();
              v1281 = swift_allocObject();
              sub_22BB6FB2C(v1281);
              sub_22BB322B0();
              v1844 = swift_allocObject();
              sub_22BD60380(v1844);
              sub_22BB322B0();
              v1845 = swift_allocObject();
              sub_22BD603F0(v1845);
              sub_22BB322B0();
              v1846 = swift_allocObject();
              sub_22BD603B8(v1846);
              v1847 = sub_22BD630D4();
              v1848 = sub_22BBC2570(v1847, xmmword_22BDCE140);
              v1848[2].n128_u64[0] = v1849;
              v1848[2].n128_u64[1] = v1836;
              v1848[3].n128_u64[0] = sub_22BB89C08;
              v1848[3].n128_u64[1] = v3021;
              v1848[4].n128_u64[0] = sub_22BB89C7C;
              v1848[4].n128_u64[1] = v1832;
              v1848[5].n128_u64[0] = sub_22BB89C08;
              v1848[5].n128_u64[1] = v1840;
              v1848[6].n128_u64[0] = sub_22BB89C08;
              v1848[6].n128_u64[1] = v3031;
              v1848[7].n128_u64[0] = sub_22BB89C7C;
              v1848[7].n128_u64[1] = v876;
              v1848[8].n128_u64[0] = sub_22BB89C08;
              v1848[8].n128_u64[1] = v465;
              v1848[9].n128_u64[0] = sub_22BB89C08;
              v1848[9].n128_u64[1] = v1281;
              v1848[10].n128_u64[0] = sub_22BD5F648;
              v1848[10].n128_u64[1] = v1278;
              v2919 = v1836;

              v3008 = v1840;

              v1850 = sub_22BD60DFC();
              if (os_log_type_enabled(v1850, v1851))
              {
                sub_22BB67968();
                v1852 = sub_22BD63820();
                v1853 = sub_22BB3E490();
                *(v14 + 1784) = v1852;
                *(v14 + 1776) = v1853;
                sub_22BB75908();
                *(v14 + 1800) = v3031;
                sub_22BB3A8C8();
                *(v14 + 1328) = v2919;
                v1854 = sub_22BB397F4();
                sub_22BB67984(v1854, v1855, v1856, v1857);

                sub_22BB3A8C8();
                *(v14 + 1328) = v3021;
                v1858 = sub_22BB397F4();
                sub_22BB67984(v1858, v1859, v1860, v1861);

                *(v14 + 1320) = sub_22BB89C7C;
                *(v14 + 1328) = v1832;
                v1862 = sub_22BB397F4();
                sub_22BB67984(v1862, v1863, v1864, v1865);

                sub_22BB3A8C8();
                *(v14 + 1328) = v1840;
                v1866 = sub_22BB397F4();
                sub_22BB67984(v1866, v1867, v1868, v1869);

                sub_22BB3A8C8();
                *(v14 + 1328) = v3031;
                v1870 = sub_22BB397F4();
                sub_22BB67984(v1870, v1871, v1872, v1873);

                sub_22BD5F6D4();
                *(v14 + 1328) = v876;
                v1874 = sub_22BB397F4();
                sub_22BB67984(v1874, v1875, v1876, v1877);

                sub_22BB3A8C8();
                *(v14 + 1328) = v465;
                v1878 = sub_22BB397F4();
                sub_22BB67984(v1878, v1879, v1880, v1881);

                sub_22BB3A8C8();
                *(v14 + 1328) = v1281;
                v1882 = sub_22BB397F4();
                sub_22BB67984(v1882, v1883, v1884, v1885);

                sub_22BB70C3C();
                *(v14 + 1328) = v1278;
                v1886 = sub_22BB397F4();
                sub_22BB67984(v1886, v1887, v1888, v1889);
                v1890 = *(v14 + 3912);
                sub_22BD62094();

                sub_22BD61B3C();
                sub_22BD64A08();
                sub_22BD646EC(v1891, v1892, v1893, "[SessionCoordinator %{public}s] | [TX %{public}s] Failed to encode to proto data for debugger: %{public}@");
                sub_22BB325EC(v1852, &unk_27D8E6A70, &unk_22BDBCDB0);
                sub_22BB38680();
                sub_22BD619D4();
                sub_22BD6193C();
                sub_22BB679C0();
              }

              sub_22BD64098();

              (*(v3031 + 8))(v3012, name);
            }

            else
            {
              sub_22BD61E00();
              name = v2015;
              sub_22BB97628();
              v2919 = v2016;
              sub_22BD619BC();
              sub_22BD65170(v2017);

              sub_22BD600B0();
              sub_22BD62EA8();
              v2018 = sub_22BD62428();
              sub_22BD594F8(v2018, v2019, v2020);
              sub_22BB3CD70(name, v464, &qword_27D8E3218, &qword_22BDBE390);
              sub_22BDB5D84();
              v2021 = v1286[6].n128_u64[1];
              v2022 = sub_22BD633F4();
              v2023(v2022);
              sub_22BD63650();
              sub_22BDB5E14();
              sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
              sub_22BD62448();
              sub_22BDBAF34();
              v2024 = sub_22BBD1A5C();
              v2025(v2024);
              v14 = v3024;
            }

            v3025 = 0;
          }

          else
          {
          }

          v2091 = *(v14 + 4256);
          v2092 = *(v14 + 4184);
          sub_22BD62680();
          sub_22BDB6124();
          sub_22BB322B0();
          v2093 = swift_allocObject();
          sub_22BB977E8(v2093);
          sub_22BB366B8();
          v2094 = swift_allocObject();
          sub_22BB973F4(v2094);
          sub_22BB322B0();
          v2095 = swift_allocObject();
          sub_22BB77E74(v2095);

          v2096 = sub_22BDB7744();
          sub_22BB96D04(v2096);
          sub_22BDB7774();
          LODWORD(v3012) = sub_22BDBB1C4();
          sub_22BD616A8();
          v19 = swift_allocObject();
          sub_22BB97E20(v19);
          sub_22BD616A8();
          v2097 = swift_allocObject();
          sub_22BD62C10(v2097);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB3E0C4();
          *(v2098 + 16) = v2099;
          *(v2098 + 24) = v1278;
          sub_22BB322B0();
          v13 = swift_allocObject();
          sub_22BB3DEE8(v13);
          sub_22BD616A8();
          v2100 = swift_allocObject();
          sub_22BD64D08(v2100);
          sub_22BD616A8();
          v23 = swift_allocObject();
          *(v23 + 16) = v1281;
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB756B0();
          *(v2101 + 16) = v2102;
          *(v2101 + 24) = v2095;
          sub_22BB322B0();
          v42 = swift_allocObject();
          sub_22BB3DEE8(v42);
          v2103 = sub_22BB97DF8();
          sub_22BB31444(v2103);
          v2104[4] = v2105;
          v2104[5] = v19;
          v2104[6] = sub_22BB89C08;
          v2104[7] = v2097;
          v2104[8] = sub_22BB89C7C;
          v2104[9] = v13;
          v2104[10] = sub_22BB89C08;
          v2104[11] = v1278;
          v2104[12] = sub_22BB89C08;
          v2104[13] = v23;
          v2104[14] = sub_22BB89C7C;
          v2104[15] = v42;

          v44 = v3021;
          if (sub_22BDBB244())
          {
            sub_22BD63674();
            sub_22BB73F58("InstrumentationSend", v2106);
            sub_22BD64F90();
            sub_22BDB77B4();

            v2107 = *(v1281 + 88);
            v2108 = sub_22BB53C48();
            if (v2109(v2108) != v3021)
            {
              v2113 = sub_22BD61D04();
              v2114(v2113);
            }

            sub_22BB67968();
            v2115 = sub_22BD62464();
            sub_22BD64CB4(v2115);
            sub_22BD63FF8();
            *(v14 + 1848) = v2116;
            *(v14 + 1256) = sub_22BB89C08;
            *(v14 + 1264) = v3014;
            v2117 = sub_22BD5F6A8();
            sub_22BB67984(v2117, v2118, v2119, v2120);
            if (!v3025)
            {
              sub_22BBC3C0C();
              *(v14 + 1264) = v2097;
              v2121 = sub_22BD5F6A8();
              sub_22BB67984(v2121, v2122, v2123, v2124);
              sub_22BD606AC();
              *(v14 + 1264) = v13;
              v2125 = sub_22BD5F6A8();
              sub_22BB67984(v2125, v2126, v2127, v2128);
              sub_22BBC3C0C();
              *(v14 + 1264) = v3008;
              v2129 = sub_22BD5F6A8();
              sub_22BB67984(v2129, v2130, v2131, v2132);
              sub_22BBC3C0C();
              *(v14 + 1264) = v23;
              v2133 = sub_22BD5F6A8();
              sub_22BB67984(v2133, v2134, v2135, v2136);
              sub_22BD606AC();
              *(v14 + 1264) = v2919;
              v2137 = sub_22BD5F6A8();
              sub_22BB67984(v2137, v2138, v2139, v2140);
              sub_22BD63A7C();

              sub_22BDB7714();
              sub_22BD61B3C();
              sub_22BD64048(&dword_22BB2C000, v2141, v2142, v2143);
              sub_22BBBE764();
              sub_22BB2F194();
              sub_22BB679C0();
            }

            goto LABEL_403;
          }

          sub_22BD61D18();
          v2110 = *(v14 + 4152);

          v2111 = sub_22BB313A8();
          (v2960)(v2111);
          sub_22BB75770();
          v2112();
          v50 = v3025;
          v18 = &qword_27D8E3218;
          v276 = v2852;
          if (v2883 == v2925)
          {
            sub_22BD6451C();

            sub_22BB705A8();
            v2144 = sub_22BB2F324();
            sub_22BB325EC(v2144, v2145, &qword_22BDBE390);
            goto LABEL_97;
          }

          v2522 = *(v14 + 3904);
          sub_22BD62768();
          sub_22BDB63E4();
          sub_22BB322B0();
          v2523 = swift_allocObject();
          sub_22BD603D4(v2523);
          sub_22BB366B8();
          *(swift_allocObject() + 16) = v2854;
          sub_22BB322B0();
          v2524 = swift_allocObject();
          sub_22BBC02FC(v2524);
          sub_22BDB77C4();
          sub_22BDBB134();
          sub_22BD616A8();
          v2525 = swift_allocObject();
          sub_22BD632F8(v2525);
          sub_22BD616A8();
          v2526 = swift_allocObject();
          sub_22BBC0370(v2526);
          sub_22BB322B0();
          v2527 = swift_allocObject();
          sub_22BBBE7C0(v2527);
          sub_22BB322B0();
          v2528 = swift_allocObject();
          sub_22BB69C9C(v2528);
          sub_22BD616A8();
          v2529 = swift_allocObject();
          sub_22BD64D14(v2529);
          sub_22BD616A8();
          v2530 = swift_allocObject();
          *(v2530 + 16) = v3025;
          sub_22BB322B0();
          v2531 = swift_allocObject();
          sub_22BD602C4(v2531);
          sub_22BB322B0();
          v1285 = swift_allocObject();
          sub_22BB69C9C(v1285);
          v2532 = sub_22BB97DF8();
          sub_22BB72F5C(v2532);
          v2533[6] = sub_22BB89C08;
          v2533[7] = v13;
          v2533[8] = sub_22BB89C7C;
          v2533[9] = v2528;
          v2533[10] = sub_22BB89C08;
          v2533[11] = &qword_27D8E3218;
          v2533[12] = sub_22BB89C08;
          v2533[13] = v2530;
          v2533[14] = sub_22BB89C7C;
          v2533[15] = v1285;

          if (sub_22BD63B1C())
          {
            sub_22BB67968();
            v2534 = sub_22BD619F0();
            sub_22BD62E2C(v2534);
            sub_22BD641F8(v2535);
            v3032 = sub_22BB89C08;
            v3033 = v14;
            v2536 = sub_22BB58B08();
            sub_22BB67984(v2536, v2537, v2538, v2539);
            if (v2852)
            {
              goto LABEL_327;
            }

            v2647 = sub_22BB542B0();
            sub_22BB67984(v2647, v2648, v2649, v2650);

            v2664 = sub_22BB542B0();
            sub_22BB67984(v2664, v2665, v2666, v2667);

            v3032 = sub_22BB89C08;
            v3033 = &qword_27D8E3218;
            v2703 = sub_22BB542B0();
            sub_22BB67984(v2703, v2704, v2705, v2706);
LABEL_411:

            sub_22BB704E4();
            v3032 = v2710;
            v3033 = v2709;
            v2711 = sub_22BB542B0();
            sub_22BB67984(v2711, v2712, v2713, v2714);
            if (!v276)
            {

              v3032 = sub_22BB89C7C;
              v3033 = v1285;
              v2718 = sub_22BB542B0();
              sub_22BB67984(v2718, v2719, v2720, v2721);
              sub_22BD6324C();
              sub_22BD63120(&dword_22BB2C000, v2723, v2724, "[SessionCoordinator %{public}s] | [TX %{public}s] Terminate was encountered. Begin cleanup of session.");
              sub_22BD61EC8();
              sub_22BB77E48();
              sub_22BB679C0();
            }

            goto LABEL_368;
          }

          sub_22BD63270();

          v2566 = sub_22BD61704();
          v2567(v2566);
          sub_22BD63AFC();
          sub_22BB322B0();
          v2568 = swift_allocObject();
          sub_22BB977E8(v2568);
          sub_22BB366B8();
          v2569 = swift_allocObject();
          sub_22BB973F4(v2569);
          sub_22BB322B0();
          v2570 = swift_allocObject();
          sub_22BD60A50(v2570);
          sub_22BDB7724();
          v2571 = sub_22BDB7744();
          sub_22BDBB1D4();
          sub_22BD616A8();
          v2572 = swift_allocObject();
          *(v2572 + 16) = 32;
          sub_22BD616A8();
          v2573 = swift_allocObject();
          sub_22BD631A4(v2573);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB3E0C4();
          *(v2574 + 16) = v2575;
          *(v2574 + 24) = &qword_27D8E3218;
          sub_22BB322B0();
          v2576 = swift_allocObject();
          sub_22BB3DEE8(v2576);
          sub_22BD616A8();
          v2577 = swift_allocObject();
          *(v2577 + 16) = 32;
          sub_22BD616A8();
          v2578 = swift_allocObject();
          sub_22BB894FC(v2578);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB756B0();
          *(v2579 + 16) = v2580;
          *(v2579 + 24) = v42;
          sub_22BB322B0();
          v2581 = swift_allocObject();
          sub_22BB3DEE8(v2581);
          v2582 = sub_22BB97DF8();
          sub_22BB31444(v2582);
          v2583[4] = v2584;
          v2583[5] = v2572;
          v2583[6] = sub_22BB89C08;
          v2583[7] = v2573;
          v2583[8] = sub_22BB89C7C;
          v2583[9] = v2576;
          v2583[10] = sub_22BB89C08;
          v2583[11] = v2577;
          v2583[12] = sub_22BB89C08;
          v2583[13] = v2530;
          v2583[14] = sub_22BB89C7C;
          v2583[15] = v2581;

          if (sub_22BDBB244())
          {
            sub_22BD63EB0("ODPWait");
            sub_22BD62384();
            v2585 = sub_22BBBFF34();
            sub_22BB3ADEC(v2585);
            v3032 = v2586;
            v3033 = v2572;
            v2587 = sub_22BB58B08();
            sub_22BB67984(v2587, v2588, v2589, v2590);
            if (!v2852)
            {
              v2591 = sub_22BB542B0();
              sub_22BB67984(v2591, v2592, v2593, v2594);
              v2595 = sub_22BB542B0();
              sub_22BB67984(v2595, v2596, v2597, v2598);
              v2599 = sub_22BB542B0();
              sub_22BB67984(v2599, v2600, v2601, v2602);
              v2603 = sub_22BB542B0();
              sub_22BB67984(v2603, v2604, v2605, v2606);
              v3032 = sub_22BB89C7C;
              v3033 = v2581;
              v2607 = sub_22BB542B0();
              sub_22BB67984(v2607, v2608, v2609, v2610);
              sub_22BB3E564();

              v2611 = sub_22BDB7714();
              sub_22BB40F38(&dword_22BB2C000, v2612, v2613, v2611, v2614, "[SessionCoordinator %s] | [TX %s] Notifying ODP about session end.");
              sub_22BD623A0();
              sub_22BB77E48();
              sub_22BB679C0();
            }

            goto LABEL_403;
          }

          sub_22BD6153C();
          v2619 = *(v2852 + 4400);
          sub_22BD61CA0();
          v2620 = *(v2852 + 4224);
          v2621 = sub_22BBBEAD0();
          (v2933)(v2621);
          sub_22BB3A190();
          v2622 = sub_22BDB7784();
          v2623 = sub_22BBBEBC4(v2622);
          (v2960)(v2623);
          sub_22BB757A0();
          sub_22BB75770();
          v2624();
          (v2577)(v2619, *MEMORY[0x277D1DE98], v2573);
          sub_22BDB9C74();
          sub_22BD65518();

          sub_22BD65200();
          sub_22BB322B0();
          swift_allocObject();
          sub_22BD60428();
          *(v2625 + 16) = v2626;
          *(v2625 + 24) = v2571;
          sub_22BB366B8();
          *(swift_allocObject() + 16) = v2854;
          sub_22BB322B0();
          v2627 = swift_allocObject();
          sub_22BB6FEDC(v2627);

          sub_22BDB7744();
          sub_22BB755A0();
          sub_22BDBB1C4();
          sub_22BD616A8();
          v2628 = swift_allocObject();
          sub_22BD63D94(v2628);
          sub_22BD616A8();
          v2629 = swift_allocObject();
          sub_22BD631A4(v2629);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB3E0C4();
          *(v2630 + 16) = v2631;
          *(v2630 + 24) = v2573;
          sub_22BB322B0();
          v2632 = swift_allocObject();
          sub_22BB3DEE8(v2632);
          sub_22BD616A8();
          v2633 = swift_allocObject();
          sub_22BD64AB8(v2633);
          sub_22BD616A8();
          v2634 = swift_allocObject();
          sub_22BB894FC(v2634);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB756B0();
          *(v2635 + 16) = v2636;
          *(v2635 + 24) = v2627;
          sub_22BB322B0();
          v2637 = swift_allocObject();
          sub_22BB8DCE0(v2637);
          v2638 = sub_22BB97DF8();
          sub_22BB6B6F0(v2638);
          v2639[6] = sub_22BB89C08;
          v2639[7] = v2629;
          v2639[8] = sub_22BB89C7C;
          v2639[9] = v2632;
          v2639[10] = sub_22BB89C08;
          v2639[11] = v2576;
          v2639[12] = sub_22BB89C08;
          v2639[13] = v2530;
          v2639[14] = sub_22BB89C7C;
          v2639[15] = v2627;

          if ((sub_22BDBB244() & 1) == 0)
          {
            sub_22BBC251C();
            v2652 = *(v2651 + 4152);

            v2654 = sub_22BD00E3C();
            (v2960)(v2654);
            sub_22BB53C48();
            sub_22BB75770();
            v2655();
            sub_22BD615F8();
            v2656 = swift_task_alloc();
            v2657 = sub_22BD624A8(v2656);
            *v2657 = v2658;
            sub_22BB37558(v2657);
            sub_22BB33430();

            sub_22BB75AA8();
            return;
          }

          sub_22BD614E4();
          sub_22BD63EB0("ODPWait");
          sub_22BB96BE8();
          sub_22BDB77B4();

          v2640 = *(v2852 + 88);
          v2641 = sub_22BB53C48();
          if (v2642(v2641) != v2859)
          {
            v2668 = sub_22BD60E1C();
            v2669(v2668);
            sub_22BD647E0("[SessionCoordinator %s] | [TX %s] Finished notifying ODP about session end.");
          }

          sub_22BB67968();
          v2670 = sub_22BB97DCC();
          sub_22BD64B60(v2670);
          sub_22BB756D4();
          v3032 = sub_22BB89C08;
          v3033 = v2571;
          v2671 = sub_22BB58B08();
          sub_22BB67984(v2671, v2672, v2673, v2674);
          if (v2852 != -88)
          {
LABEL_403:
            sub_22BB33430();

            return;
          }

          v2675 = sub_22BB542B0();
          sub_22BB67984(v2675, v2676, v2677, v2678);
          v2679 = sub_22BB542B0();
          sub_22BB67984(v2679, v2680, v2681, v2682);
          v2683 = sub_22BB542B0();
          sub_22BB67984(v2683, v2684, v2685, v2686);
          v2687 = sub_22BB542B0();
          sub_22BB67984(v2687, v2688, v2689, v2690);
          v3032 = sub_22BB89C7C;
          v3033 = v2627;
          v2691 = sub_22BB542B0();
          sub_22BB67984(v2691, v2692, v2693, v2694);
LABEL_421:
          sub_22BB757D4();

          sub_22BDB7714();
          sub_22BD61424();
          sub_22BD6465C(v2725, v2726, v2727, v2728, v2729, v2730);

          sub_22BD619D4();
          sub_22BD6193C();
          sub_22BB679C0();
        }

        name = v464;
        sub_22BD62F1C();
        oslog = v482;
        v483 = *(v430 + 48);
        sub_22BB31DC8();
        sub_22BB3A518(v484 + v485, v486);
        v3008 = sub_22BB954F8(v3012);
        v464 = 0;
        v276 = v2930;
        do
        {
          if (v3008 == v464)
          {
            v14 = v3024;
            sub_22BD634C0();
LABEL_87:
            v460 = v2919;
            v547 = *(v14 + 3400);
            sub_22BB33E70();
            sub_22BB34648();
            goto LABEL_67;
          }

          sub_22BB97C84();
          if (v487)
          {
            __break(1u);
            goto LABEL_319;
          }

          sub_22BD61B54(v3024);
          sub_22BB704CC(v488);
          v490 = *(v489 + 3048);
          sub_22BB966E8(v489);
          v491 = sub_22BD61CC8();
          v492(v491);
          ++v464;
          sub_22BD63B6C();
          v493 = v465[1];
          ++v465;
          v494 = sub_22BB2F3F0();
          v495(v494);
          sub_22BB71FB0();
          sub_22BDB9AC4();
          v496 = sub_22BB58D10();
          v497(v496);
          v430 = swift_task_alloc();
          *(v430 + 16) = v460;
          sub_22BD5FBA4();
          sub_22BD65500();
          v499 = *(v490 + 8);
          v498 = v490 + 8;
          v500 = sub_22BD62E38();
          v501(v500);
          v3025 = v2930;
        }

        while ((&unk_22BDCE460 & 1) == 0);
        sub_22BD61364();
        sub_22BBCBF94();
        sub_22BB335C0(v460, v422);
        v464 = *(v465 + 80);
        sub_22BD61350();
        swift_allocObject();
        sub_22BB3E408();
        sub_22BB3A518(v422, v502 + v498);
        sub_22BB322B0();
        v503 = swift_allocObject();
        sub_22BD5F6BC(v503);
        v504 = sub_22BB500C0();
        sub_22BB335C0(v504, v505);
        sub_22BD62C1C();
        v506 = swift_allocObject();
        sub_22BD62E88(v506);
        sub_22BB322B0();
        v507 = swift_allocObject();
        sub_22BB96620(v507);
        LODWORD(v3014) = sub_22BDBB104();
        sub_22BD616A8();
        v508 = swift_allocObject();
        sub_22BB97E20(v508);
        sub_22BD616A8();
        v509 = swift_allocObject();
        sub_22BD62C10(v509);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB756B0();
        *(v510 + 16) = v511;
        *(v510 + 24) = v503;
        sub_22BB322B0();
        v512 = swift_allocObject();
        sub_22BB3DEE8(v512);
        sub_22BD616A8();
        v513 = swift_allocObject();
        sub_22BB75830(v513);
        sub_22BD616A8();
        v514 = swift_allocObject();
        sub_22BB96A88(v514);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB500CC();
        *(v515 + 16) = v516;
        *(v515 + 24) = v422;
        sub_22BB322B0();
        v457 = swift_allocObject();
        sub_22BB3DEE8(v457);
        v517 = sub_22BB97DF8();
        sub_22BB31444(v517);
        v518[4] = v519;
        v518[5] = v508;
        v518[6] = sub_22BB89C08;
        v518[7] = v509;
        v518[8] = sub_22BB89C7C;
        v518[9] = v512;
        v518[10] = sub_22BB89C08;
        v518[11] = v464;
        v518[12] = sub_22BB89C08;
        v518[13] = v498;
        v518[14] = sub_22BB89C7C;
        v518[15] = v457;
        sub_22BD64764();

        v520 = sub_22BD612E8();
        if (!os_log_type_enabled(v520, v521))
        {
          sub_22BD62028();

          v536 = sub_22BD62FF8();
          v2856(v536);
          v14 = v462;
          sub_22BD61DCC();
          sub_22BD634C0();
          v3025 = v537;
          if (v538)
          {
            sub_22BDBAFD4();
            v539 = v462[421];
          }

          v430 = v462[312];
          sub_22BBC45D0();
          v540 = sub_22BD61D7C();
          v541 = sub_22BBC463C(v540, oslog);
          if (!sub_22BD6341C(v541, v542))
          {
            sub_22BD634B0();
            *(&v2930->isa + v543) = v544;
          }

          v545 = sub_22BD63DBC();
          (v430)(v545);
          v546 = sub_22BD64D68();
          (v422)(v546);
          goto LABEL_87;
        }

        sub_22BB67968();
        v522 = sub_22BB3E030();
        sub_22BD64E04(v522);
        sub_22BB897E4(v520);
        v462[206] = v523;
        sub_22BB384C8();
        v462[188] = v422;
        v524 = sub_22BD607FC();
        sub_22BB67984(v524, v525, v526, v527);
        if (!v2930)
        {
          sub_22BB75658();
          sub_22BB384C8();
          v462[188] = v509;
          v528 = sub_22BD607FC();
          sub_22BB67984(v528, v529, v530, v531);

          sub_22BD608D0();

          sub_22BD607E4();
          *(v498 + 1504) = v464;
          sub_22BD611FC();

          sub_22BD607E4();
          *(v498 + 1504) = v498;
          sub_22BD611FC();

          sub_22BD607CC();
          *(v498 + 1504) = v457;
          sub_22BD611FC();
          v532 = *(v498 + 3944);
          sub_22BD62094();

          sub_22BB96D8C();
          sub_22BD62CB8();
          sub_22BD636C8(v533, v534, v535, "SessionCoordinator found ongoing span to be terminated: %s for participant: %s");
          sub_22BD61EC8();
          sub_22BB77E48();
          sub_22BB679C0();
        }

LABEL_319:

LABEL_349:

LABEL_414:
        sub_22BB33430();

        return;
      case 2u:
        sub_22BD649A0();
        v2995 = *(v14 + 3816);
        sub_22BD62190();
        v112 = sub_22BBE6DE0(&qword_27D8E6540, &qword_22BDCE450);
        v113 = sub_22BD6362C(v112);
        v114(v113);
        sub_22BB6BEE0(v44 + v106, v2995, &qword_27D8E3218, &qword_22BDBE390);
        v115 = sub_22BD61AC0(v42);
        v116(v115);
        sub_22BD64294();
        sub_22BDB96A4();
        v117 = v42->n128_u64[1];
        v118 = sub_22BB38518();
        v119(v118);
        v120 = sub_22BDB9744();
        v121 = *(v19 + 8);
        v19 += 8;
        v122 = sub_22BB97B18();
        v123(v122, v3012);
        *(v14 + 1872) = v120;
        v18 = sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
        sub_22BB31DE0();
        sub_22BB69260();
        sub_22BB899C0(v124, v125, v126);
        v42 = v3014;
        sub_22BBBFFBC();
        sub_22BDB90D4();

        sub_22BBE6DE0(&qword_27D8E6560, &qword_22BDCE740);
        sub_22BB3329C();
        if (v165)
        {
          v134 = sub_22BB325EC(*(v14 + 3584), &qword_27D8E6518, &unk_22BDCE420);
          v135 = 1;
        }

        else
        {
          v132 = sub_22BB8EAD8();
          v134 = v133(v132);
          v135 = 0;
        }

        v136 = sub_22BB96DB0(v134, v135);
        v44 = &unk_27D8E69E0;
        sub_22BB3CD70(v136, v137, &unk_27D8E69E0, &qword_22BDC1660);
        sub_22BB36B74(v3014);
        if (v165)
        {
          v138 = *(v14 + 3616);
          sub_22BD6201C();
          v144 = sub_22BB325EC(v139, v140, v141);
          v145 = 1;
        }

        else
        {
          sub_22BB93D70();
          v142 = sub_22BD60A7C();
          v144 = v143(v142);
          v145 = 0;
        }

        v146 = sub_22BD60C28(v144, v145);
        v13 = &qword_22BDBE390;
        sub_22BB3CD70(v146, v147, &qword_27D8E3218, &qword_22BDBE390);
        v148 = sub_22BBBE174();
        sub_22BD63AAC(v148, v149);
        v150 = sub_22BB3A190();
        sub_22BB31814(v150, v151, v120);
        if (v165)
        {
          sub_22BD6493C();
          sub_22BB8E9F0();
          sub_22BB325EC(v152, v153, v154);
          sub_22BBBFF9C(&unk_27D8E69E0 + v50);
          if (!v165)
          {
            goto LABEL_24;
          }

          v155 = *(v14 + 3352);
          sub_22BB8E9F0();
          sub_22BB325EC(v156, v157, v158);
        }

        else
        {
          v159 = sub_22BD630F0();
          sub_22BD63AAC(v159, v160);
          sub_22BD618B8();
          sub_22BB3AA28(v161, v162, v163);
          v164 = *(v14 + 3744);
          sub_22BD64930();
          if (v165)
          {
            sub_22BD64924();
            v166 = sub_22BD00E3C();
            sub_22BB325EC(v166, v167, &qword_22BDBE390);
            v168 = v18[1];
            ++v18;
            v169 = sub_22BB3627C();
            v170(v169);
LABEL_24:
            sub_22BB325EC(*(v14 + 3352), &qword_27D8E6510, &qword_22BDCE418);
LABEL_26:
            sub_22BD63100();
            v182 = sub_22BB6C8E0();
            sub_22BB325EC(v182, &unk_27D8E69E0, &qword_22BDC1660);
            v183 = sub_22BD6220C();
            sub_22BB325EC(v183, v184, &qword_22BDBE390);
            v185 = sub_22BB97688();
            v186(v185);
            v130 = sub_22BC54704();
LABEL_27:
            sub_22BB74044(v130, v131, v44);

            sub_22BB35CBC();
            sub_22BB34648();
            v50 = v3025;
            continue;
          }

          v18 = *(v14 + 3352);
          v23 = *(v14 + 3336);
          v171 = *(v14 + 3320);
          v172 = *(v14 + 3312);
          v173 = sub_22BBC0658(v171);
          v174(v173);
          sub_22BB30DC4();
          sub_22BB3B194(&unk_28142DD40, v175);
          v44 = sub_22BB97518();
          v176 = *(v171 + 8);
          v19 = v171 + 8;
          v177 = sub_22BB32E04();
          v176(v177);
          sub_22BB325EC(v164, &qword_27D8E3218, &qword_22BDBE390);
          v178 = sub_22BD6220C();
          v176(v178);
          sub_22BB8E9F0();
          sub_22BB325EC(v179, v180, v181);
          if ((v44 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v366 = sub_22BD613E8();
        sub_22BB3CD70(v366, v367, &qword_27D8E3218, &qword_22BDBE390);
        sub_22BDB97E4();
        sub_22BDB9804();
        v18 = sub_22BB954F8(v18);
        v19 = 0;
        v50 = v3025;
        v13 = &qword_22BDC1660;
        v3012 = v18;
        while (2)
        {
          if (v19 == v18)
          {
            sub_22BD642AC();
          }

          else
          {
            v370 = *(v14 + 3000);
            v44 = *(v14 + 2816);
            v42 = *(v14 + 2464);
            v371 = sub_22BD617C4();
            sub_22BB954F0(v371, v372, v373);
            v374 = sub_22BD60908();
            v368 = sub_22BB3CD70(v374, v375, &qword_27D8E6038, &qword_22BDD0300);
            v376 = __OFADD__(v19++, 1);
            if (v376)
            {
              __break(1u);

              goto LABEL_367;
            }

            v369 = 0;
          }

          v377 = sub_22BD6124C(v368, v369);
          sub_22BB6BEE0(v377, v378, &qword_27D8E64E0, &qword_22BDCE3E8);
          sub_22BB3329C();
          if (!v165)
          {
            v379 = sub_22BD60AE8();
            v380(v379);
            sub_22BD651E8();
            sub_22BBE6DE0(&qword_27D8E64C0, &qword_22BDCE3C8);
            sub_22BB30F68();
            type metadata accessor for XPCClientAvatar();
            if (sub_22BB6FAB0())
            {
              sub_22BB97548();
              v381 = sub_22BB679CC();
              v382(v381);
              v18 = v3012;
              sub_22BB35464();
              swift_storeEnumTagMultiPayload();
              sub_22BB96D40();
              sub_22BBC11B4();
              v383 = sub_22BD61F9C();
              v384(v383, v3016);
              v385 = sub_22BD63620();
              v13 = &qword_22BDC1660;
              v386 = v14;
              v14 = v3024;
              v50 = v3025;
              v387(v385, v386);
            }

            else
            {
              v388 = sub_22BD61BCC();
              v389(v388);
            }

            continue;
          }

          break;
        }

        v390 = sub_22BD613D0();
        sub_22BB325EC(v390, &unk_27D8E69E0, &qword_22BDC1660);
        v391 = sub_22BB313A8();
        sub_22BB325EC(v391, v392, &qword_22BDBE390);
        v393 = sub_22BD60A40();
        v394(v393);
LABEL_97:
        sub_22BB6FC94();
LABEL_98:

        sub_22BB35CBC();
        sub_22BB34648();
        continue;
      case 3u:
        v335 = *(v14 + 4328);
        v336 = *(v14 + 3480);
        v44 = (*(v14 + 2496) + *(v14 + 4440));
        sub_22BB3737C();
        sub_22BB3A518(v337, v338);
        sub_22BD6143C();
        sub_22BB6FC74();
        sub_22BD6233C();
        sub_22BD6462C();
        v2990 = v42;
        sub_22BD7577C(v42, v44);
        sub_22BD61FB4();

        sub_22BD6486C();
        if (v42)
        {
          v2997 = *(v14 + 4888);
          v19 = *(v14 + 3336);
          v13 = *(v14 + 3320);
          v2896 = *(v14 + 3312);
          sub_22BB6FFE8();
          v2947 = *(v14 + 3184);
          v2953 = *(v14 + 3176);
          v2962 = *(v14 + 3168);
          v2971 = *(v14 + 3192);
          v339 = sub_22BD60B0C();
          (v23)(v339);
          sub_22BD5FFD4();
          v340 = sub_22BD6108C();
          sub_22BB336D0(v340, v341, v342, v67);
          sub_22BB3B69C();
          sub_22BD80A04();
          v343 = v18[1];
          v2934 = *v18;
          v344 = v18[2];
          v2925 = sub_22BDB8444();
          v2919 = v345;
          v346 = v18[3];
          v347 = v18[4];
          v348 = sub_22BDB8444();
          v350 = sub_22BD63008(v348, v349);
          (v23)(v350);
          sub_22BD60F68();

          v351 = sub_22BB53C48();
          sub_22BB352C4(v351, v352);

          sub_22BD61C08();
          sub_22BBBEBD8();
          (*(v2953 + 104))(v42, v2997, v2962);
          sub_22BD64360();
          sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
          sub_22BB6C5A8();
          sub_22BD61E28();
          v353(v42);
          sub_22BB32824();
          goto LABEL_90;
        }

        v42 = *(v14 + 4352);
        v19 = v106;
        sub_22BD61670();
        sub_22BBE6DE0(&qword_27D8E64C8, &qword_22BDCE3D0);
        sub_22BD63E28();
        sub_22BB32824();
        sub_22BB34648();
        v568 = sub_22BB39478();
        sub_22BB74044(v568, v569, v42);
        v50 = v3025;
        goto LABEL_98;
      case 4u:
        sub_22BB96D4C();
        v301 = *v300;
        v44 = v300[1];
        v18 = v300[2];
        v42 = v300[3];
        v23 = v300[4];
        v2996 = v300[5];
        sub_22BB5837C();
        v19 = v302[10];
        v2961 = v302[9];
        v304 = v302[11];
        v303 = v302[12];
        sub_22BD61468(v305);
        v307 = *(v306 + 8);
        sub_22BB71D80();
        sub_22BD6232C();
        if (v165)
        {
          v309 = 0;
        }

        v310 = v308 | v309;

        v2993 = v310;
        LOBYTE(v310) = sub_22BD7577C(v310, v307);

        if ((v310 & 1) == 0)
        {
          sub_22BB93D44();

          sub_22BB3531C(v3014, v3016);
          goto LABEL_12;
        }

        v1894 = sub_22BD622A0();
        sub_22BB89ADC(v1894, v1895);
        sub_22BD636B0();

        v23 = v19;

        sub_22BD635CC();

        v19 = v3016;
        v1896 = sub_22BD63E7C();
        sub_22BB352C4(v1896, v1897);
        sub_22BB93D90();
        sub_22BDB5D94();
        v1898 = sub_22BB96CC0();
        v1899(v1898);
        sub_22BDB5E14();
        sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
        v42 = v2933;
        sub_22BD61B48();
        v44 = v2919;
        sub_22BDBAF34();

        v1900 = sub_22BD63E7C();
        sub_22BB3531C(v1900, v1901);
        v1902 = sub_22BB9607C();
        v1903(v1902);
        v14 = v106;
        goto LABEL_96;
      case 5u:
        v127 = sub_22BB758A0();
        (v50)(v127);
        sub_22BD64948();
        if ((v128 & 1) == 0)
        {
          sub_22BD614A0();
          v129();
LABEL_12:
          v130 = sub_22BB3A9D4();
          goto LABEL_27;
        }

        sub_22BB7021C();
        v354 = *(v19 + 88);
        v19 += 88;
        v355 = sub_22BB37074();
        if (v356(v355) == v106)
        {
          v2972 = *(v14 + 4880);
          sub_22BB69B34();
          v2998 = v357;
          sub_22BD5F8B4();
          v359 = *(v358 + 3192);
          sub_22BB955CC();
          sub_22BB31234();
          sub_22BD61BE0();
          v13 = *(v360 + 2728);
          sub_22BB707B8();
          v2963 = v361;
          v362 = sub_22BD61400();
          v363(v362);
          v364 = sub_22BD60280(v18);
          v365(v364);
          *(v50 + 2) = 1;
          sub_22BD62270();
          MEMORY[0x23189FC60]();
LABEL_95:
          v579 = sub_22BB5810C();
          MEMORY[0x23189FDB0](v579);
          v580 = sub_22BD63484();
          v581(v580);
          sub_22BDB5E14();
          sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
          v42 = v2998;
          sub_22BD62448();
          v44 = v2963;
          sub_22BDBAF34();
          v582 = sub_22BD61754();
          v583(v582);
          v584 = sub_22BD62DE8();
          v585(v584, v13);
          v586 = sub_22BD62480();
          v587(v586);
LABEL_96:
          v50 = v3025;
          goto LABEL_97;
        }

        sub_22BD64D38();
        if (v165)
        {
          v2973 = *(v14 + 4880);
          sub_22BB69B34();
          v2998 = v570;
          sub_22BD5F8B4();
          v572 = *(v571 + 3192);
          sub_22BB955CC();
          sub_22BB31234();
          sub_22BB3E550();
          v13 = *(v573 + 2704);
          sub_22BB707B8();
          v2963 = v574;
          v575 = sub_22BD61400();
          v576(v575);
          v577 = sub_22BD60280(v18);
          v578(v577);
          *(v50 + 2) = 0;
          sub_22BD62270();
          MEMORY[0x23189FC80]();
          goto LABEL_95;
        }

        sub_22BD64A80();
        if (v877)
        {
          sub_22BD60EAC();
          v878 = *(v14 + 2696);
          v879 = *(v14 + 2688);
          v18 = *(v14 + 2680);
          v881 = sub_22BC54A3C(v880);
          v882(v881);
          v883 = *(v879 + 32);
          v19 = v879 + 32;
          v884 = sub_22BD60F04();
          v885(v884);
          v42 = sub_22BDB5BE4();
          sub_22BD44210(v42);
          if (!v3025)
          {
            sub_22BB701E8();
            sub_22BD5A87C(v18);
            sub_22BD64DC8();
            sub_22BBE6DE0(&qword_27D8E6558, &unk_22BDCFC00);
            sub_22BB97200();
            v1977 = sub_22BDBAB14();
            if (sub_22BD63E94(v1977))
            {
              sub_22BD64C10();
              do
              {
                sub_22BD618B8();
                sub_22BB954F0(v1978, v1979, v1980);
                sub_22BD65530();
                v1981 = sub_22BD60F9C();
                v1982(v1981);
                sub_22BD62E50();
                if (v67)
                {
                  sub_22BBC066C();
                  sub_22BD62584();
                  sub_22BD80B94(v1983);
                }

                sub_22BB954F8(v42);
                sub_22BBD1A4C();
              }

              while (!v165);
            }

            sub_22BD61DB8();
            name = v1984;
            sub_22BB36E60();
            v2919 = *(v14 + 3336);
            v2969 = *(v14 + 3216);
            v3004 = *(v14 + 3208);
            v3012 = *(v14 + 3200);
            v2941 = *(v14 + 3192);
            sub_22BD64D8C();
            sub_22BD64D80();
            sub_22BD61280();
            v13 = sub_22BDB95A4();
            v1985 = sub_22BDB5C04();
            sub_22BD63E0C(v1985);
            sub_22BB702A8();

            sub_22BD46274(v23);
            sub_22BD64CA8();
            v1986 = sub_22BBE6DE0(&qword_27D8E6538, &qword_22BDCE448);
            sub_22BB976D0(v1986);
            MEMORY[0] = sub_22BDB5BF4();
            MEMORY[8] = v1987;
            sub_22BD44F8C(v23);
            sub_22BD65488();
            sub_22BD634A0();
            swift_storeEnumTagMultiPayload();
            sub_22BB370B8();
            sub_22BD652A8(v1988, v1989);
            sub_22BB35CBC();
            sub_22BB34648();
            v18 = v2919;
            sub_22BD65398();
            v1990 = sub_22BB6FCB8();
            MEMORY[0x23189FDA0](v1990);
            v1991 = sub_22BD61DA4();
            v1992(v1991);
            sub_22BB6FCB8();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD60A2C();
            v44 = v2952;
            sub_22BDBAF34();
            v1993 = sub_22BB9607C();
            v1994(v1993, v3012);
            v1995 = sub_22BD61D90();
            v1996(v1995);
            v1997 = sub_22BD60C18();
            v1998(v1997);
            v1999 = *(v14 + 1880);

            v2930 = v50;
            goto LABEL_97;
          }

          sub_22BB8AEEC();
          sub_22BD651D0();
          sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
          sub_22BB76654();
          v1748 = swift_dynamicCast();
          v1749 = *(v14 + 2496);
          if (v1748)
          {
            sub_22BD651B8();
            sub_22BB322B0();
            v1750 = swift_allocObject();
            sub_22BD6002C(v1750);
            v1751 = sub_22BDB77C4();
            v19 = sub_22BDBB114();
            sub_22BD616A8();
            v1752 = swift_allocObject();
            sub_22BD60E0C(v1752);
            sub_22BD616A8();
            v1753 = swift_allocObject();
            sub_22BD617B4(v1753);
            sub_22BB322B0();
            v1754 = swift_allocObject();
            sub_22BB97500(v1754);
            sub_22BB322B0();
            v1755 = swift_allocObject();
            sub_22BD6040C(v1755);
            v1756 = sub_22BD6374C();
            v1757 = sub_22BBC2570(v1756, xmmword_22BDC2F20);
            v1757[2].n128_u64[0] = v1758;
            v1757[2].n128_u64[1] = v23;
            v1757[3].n128_u64[0] = sub_22BB89C08;
            v1757[3].n128_u64[1] = v18;
            v1757[4].n128_u64[0] = sub_22BB89C7C;
            v1757[4].n128_u64[1] = v42;

            if (sub_22BB72E44())
            {
              sub_22BB67968();
              v1759 = sub_22BB38198();
              sub_22BD64138(v1759);
              sub_22BB3A9B0(v1754);
              *(v14 + 1072) = v23;
              v1760 = sub_22BD5FBD4();
              sub_22BB67984(v1760, v1761, v1762, v1763);

              sub_22BB385A8();
              *(v14 + 1072) = v18;
              v1764 = sub_22BD5FBD4();
              sub_22BB67984(v1764, v1765, v1766, v1767);

              sub_22BBCC154();
              *(v14 + 1072) = v42;
              v1768 = sub_22BD5FBD4();
              sub_22BB67984(v1768, v1769, v1770, v1771);
              v1772 = *(v14 + 3888);
              sub_22BBD1A28();

              sub_22BB337EC(&dword_22BB2C000, v1751, v19, "[SessionCoordinator %{public}s] | Injected events violate security policy.");
              sub_22BB30DDC();
              sub_22BB679C0();
            }

            v1921 = *(v14 + 3888);
            sub_22BD624B8();

            v1922 = sub_22BB70554();
            v1923(v1922);
            v2939 = *(v14 + 4856);
            sub_22BD62C34();
            sub_22BB3A738();
            v2980 = *(v1924 + 3216);
            sub_22BD60E9C();
            v1926 = *(v1925 + 3200);
            sub_22BB38BC4();
            v44 = *(v3024 + 2696);
            sub_22BD61C64();
            v3008 = v1927;
            v3012 = v1928;
            sub_22BB38E74();
            sub_22BB70778(v1929);
            MEMORY[0x23189FBE0]();
            v1930 = sub_22BB6A0A0();
            v1931(v1930);
            sub_22BD60C68();
            sub_22BDB5D34();
            v1932 = sub_22BB70294();
            v1933(v1932);
            sub_22BBBFFBC();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD617A4();
            sub_22BDBAF34();
            v1934 = sub_22BD60E8C();
            v1935(v1934);
            v1936 = sub_22BD63FA8();
            v1937(v1936);
            v1938 = sub_22BD60C18();
            v1939(v1938);
            v1940 = *(v14 + 2056);
            goto LABEL_247;
          }

          sub_22BD65188();
          sub_22BDB63E4();
          sub_22BB322B0();
          v18 = swift_allocObject();
          sub_22BB3CF50(v18);
          sub_22BB366B8();
          v1773 = swift_allocObject();
          sub_22BD62774(v1773);
          sub_22BD640C0();
          v1774 = v3025;
          v3025 = sub_22BDB77C4();
          LODWORD(v3016) = sub_22BDBB114();
          sub_22BD616A8();
          v13 = swift_allocObject();
          sub_22BB97ED4(v13);
          sub_22BD616A8();
          v1775 = swift_allocObject();
          sub_22BD61698(v1775);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB3E0C4();
          *(v1776 + 16) = v1777;
          *(v1776 + 24) = v18;
          sub_22BB322B0();
          v1778 = swift_allocObject();
          sub_22BB3DEE8(v1778);
          sub_22BD616A8();
          v1779 = swift_allocObject();
          sub_22BD61B1C(v1779);
          sub_22BD616A8();
          v1780 = swift_allocObject();
          sub_22BD63400(v1780);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BBBEBAC();
          *(v1781 + 16) = v1782;
          *(v1781 + 24) = v42;
          sub_22BB322B0();
          v1783 = swift_allocObject();
          sub_22BB3965C(v1783);
          sub_22BB322B0();
          v1784 = swift_allocObject();
          sub_22BB69760(v1784);
          v1785 = sub_22BB97DF8();
          sub_22BB31444(v1785);
          v1786[4] = v1787;
          v1786[5] = v13;
          v1786[6] = sub_22BB89C08;
          v1786[7] = v67;
          v1786[8] = sub_22BB89C7C;
          v1786[9] = v1778;
          v1786[10] = sub_22BB89C08;
          v1786[11] = v19;
          v1786[12] = sub_22BB89C08;
          v1786[13] = v23;
          v1786[14] = sub_22BD5F648;
          v1786[15] = v1784;
          sub_22BD65470();

          if (sub_22BD62224())
          {
            v3011 = v19;
            v1788 = sub_22BB67968();
            sub_22BD63870();
            v1789 = sub_22BD62730();
            sub_22BD64038(v1789);
            sub_22BB897E4(v1788);
            *(v14 + 2024) = v1790;
            *(v14 + 1000) = sub_22BB89C08;
            *(v14 + 1008) = v42;
            v1791 = sub_22BB72008();
            sub_22BB67984(v1791, v1792, v1793, v1794);

            sub_22BD604CC();
            *(v14 + 1008) = v67;
            v1795 = sub_22BB72008();
            sub_22BB67984(v1795, v1796, v1797, v1798);

            sub_22BD604E4();
            *(v14 + 1008) = v1778;
            v1799 = sub_22BB72008();
            sub_22BB67984(v1799, v1800, v1801, v1802);

            sub_22BD604CC();
            *(v14 + 1008) = v3011;
            v1803 = sub_22BB72008();
            sub_22BB67984(v1803, v1804, v1805, v1806);

            sub_22BD604CC();
            *(v14 + 1008) = v23;
            v1807 = sub_22BB72008();
            sub_22BB67984(v1807, v1808, v1809, v1810);

            sub_22BD604B4();
            *(v14 + 1008) = v1784;
            v1811 = sub_22BB72008();
            sub_22BB67984(v1811, v1812, v1813, v1814);
            v1815 = *(v14 + 3880);
            sub_22BD61A18();

            sub_22BBD1A34();
            sub_22BB6F9C8();
            sub_22BD636C8(v1816, v1817, v1818, "[SessionCoordinator %{public}s] | Failed to decode proto data from debugger: %{public}@");
            sub_22BB325EC(v18, &unk_27D8E6A70, &unk_22BDBCDB0);
            sub_22BB89BBC();
            sub_22BB35808();
            sub_22BB679C0();
          }

          sub_22BB89F08(*(v14 + 3880));
          sub_22BD651A0();

          v1941 = sub_22BD6268C();
          v1942(v1941, v13);
          sub_22BD62C34();
          LODWORD(v2919) = *(v14 + 4848);
          sub_22BB34150();
          sub_22BD60954(v1943);
          v2981 = *(v14 + 2696);
          sub_22BD6477C();
          v3001 = v1944;
          sub_22BD60AC0();
          sub_22BD647D4(v1945);
          MEMORY[0x23189FBE0]();
          goto LABEL_249;
        }

        sub_22BD649AC();
        if (v1318)
        {
          v1319 = sub_22BD5F900();
          v1320(v1319);
          v1321 = sub_22BB6FF74();
          v1322(v1321);
          v1323 = sub_22BB8ADB4();
          v1324(v1323);
          sub_22BDB96A4();
          v1325 = *(v14 + 8);
          v1326 = sub_22BB53C48();
          v1327(v1326);
          sub_22BDB9744();
          v1328 = sub_22BD6161C();
          v1329(v1328);
          sub_22BD64734();
          v2930 = v3025;
          if (v3025)
          {
            sub_22BD63C38();
            sub_22BDB63E4();
            sub_22BB322B0();
            v1330 = swift_allocObject();
            sub_22BB977E8(v1330);
            sub_22BB366B8();
            v1331 = swift_allocObject();
            sub_22BBC0200(v1331);
            v1332 = v3025;
            v1333 = v23;
            v3028 = sub_22BDB77C4();
            sub_22BDBB114();
            sub_22BD616A8();
            v1334 = swift_allocObject();
            sub_22BD60E0C(v1334);
            sub_22BD616A8();
            v1335 = swift_allocObject();
            sub_22BD61698(v1335);
            sub_22BB322B0();
            v1336 = swift_allocObject();
            sub_22BB31A44(v1336);
            sub_22BB322B0();
            v1337 = swift_allocObject();
            sub_22BB3DEE8(v1337);
            sub_22BD616A8();
            v14 = swift_allocObject();
            sub_22BD61EB0(v14);
            sub_22BD616A8();
            v1338 = swift_allocObject();
            sub_22BD62B48(v1338);
            v18 = v3028;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BBBEBAC();
            *(v1339 + 16) = v1340;
            *(v1339 + 24) = v42;
            sub_22BB322B0();
            v1341 = swift_allocObject();
            sub_22BB3965C(v1341);
            sub_22BB322B0();
            v1342 = swift_allocObject();
            sub_22BB69760(v1342);
            v1343 = sub_22BB97DF8();
            sub_22BB31444(v1343);
            v1344[4] = v1345;
            v1344[5] = v23;
            v1344[6] = sub_22BB89C08;
            v1344[7] = v67;
            v1344[8] = sub_22BB89C7C;
            v1344[9] = v1337;
            v1344[10] = sub_22BB89C08;
            v1344[11] = v14;
            v1344[12] = sub_22BB89C08;
            v1344[13] = v19;
            v1344[14] = sub_22BD5F648;
            v1344[15] = v1342;
            sub_22BD64764();

            if (sub_22BD62224())
            {
              sub_22BB67968();
              sub_22BBB5D38();
              v1346 = sub_22BD62BF4();
              v13[259] = v23;
              v13[258] = v1346;
              sub_22BD62374();
              v13[263] = v1342;
              v13[135] = sub_22BB89C08;
              v13[136] = v42;
              v1347 = sub_22BB6C714();
              sub_22BB67984(v1347, v1348, v1349, v1350);

              sub_22BB96064();
              v13[136] = v67;
              v1351 = sub_22BB6C714();
              sub_22BB67984(v1351, v1352, v1353, v1354);

              sub_22BD605BC();
              v13[136] = v1337;
              v1355 = sub_22BB6C714();
              sub_22BB67984(v1355, v1356, v1357, v1358);

              v13[135] = sub_22BB89C08;
              v13[136] = v14;
              v1359 = sub_22BB6C714();
              sub_22BB67984(v1359, v1360, v1361, v1362);

              sub_22BB96064();
              v13[136] = v19;
              v1363 = sub_22BB6C714();
              sub_22BB67984(v1363, v1364, v1365, v1366);

              v13[135] = sub_22BD5F648;
              v13[136] = v1342;
              v1367 = sub_22BB6C714();
              sub_22BB67984(v1367, v1368, v1369, v1370);
              sub_22BD62CF0();
              sub_22BBD1A34();
              sub_22BD64B84();
              sub_22BD636C8(v1371, v1372, v1373, "[SessionCoordinator %{public}s] Failed to encode to proto data for debugger: %{public}@");
              sub_22BB325EC(v23, &unk_27D8E6A70, &unk_22BDBCDB0);
              sub_22BB77E48();
              sub_22BB32FA4(v1346);
              sub_22BB89BBC();
              sub_22BB679C0();
            }

            sub_22BD61E14();
            v23 = v13[479];

            v1966 = sub_22BD6268C();
            v1967(v1966, v23);
            v3025 = v2930;
            LODWORD(v2925) = *(v13 + 1217);
            v2950 = *(v13 + 1213);
            sub_22BB9666C();
            sub_22BB9664C();
            v2940 = v1968;
            v44 = v13[334];
            sub_22BD64DD4();
            v3003 = v1969;
            sub_22BD6116C();
            MEMORY[0x23189FC40]();
            sub_22BB6FC88();
            sub_22BD64AA0();
            v1970();
            sub_22BD63938();
            sub_22BDB5D34();
            v1971 = sub_22BD62C28();
            v1972(v1971, v2950, v2940);
            sub_22BBBFFBC();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD61834();

            v1973 = sub_22BB96A1C();
            v1974(v1973, v3008);
            (*(v67 + 8))(v44, v3003);
            v1975 = sub_22BB6B714();
            v1976(v1975);
            v50 = 0;
            sub_22BD64BF8();
          }

          else
          {
            sub_22BD64C4C();
            v2968 = v1955;
            sub_22BD6109C();
            v3002 = v13[402];
            sub_22BB8AD4C();
            v2957 = v1956;
            sub_22BD62288();
            v2982 = v1957;

            sub_22BD646D4();
            sub_22BB3FBBC();
            sub_22BDB5D64();
            v1958 = sub_22BD64DF8();
            v1959(v1958, v2968, v2957);
            sub_22BD62724();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            v19 = v3002;
            v44 = v2982;
            sub_22BDBAF34();
            v1960 = sub_22BD633C4();
            v1961(v1960);
            v1962 = sub_22BB70264();
            v1963(v1962, v3008);
            v1964 = sub_22BD60C18();
            v1965(v1964);
            v50 = 0;
            v14 = v13;
          }

          goto LABEL_97;
        }

        sub_22BBC01F4();
        if (!v1533)
        {
          sub_22BD647A8();
          if (v1904)
          {
            v2979 = *(v14 + 4844);
            sub_22BD5FA30();
            sub_22BB58D38();
            v3000 = v1905;
            v1907 = sub_22BC54A3C(v1906);
            v1908(v1907);
            v1909 = sub_22BD60294();
            v1910(v1909);
            sub_22BD653C8();
            v1911 = sub_22BBC055C();
            MEMORY[0x23189FDC0](v1911);
            v1912 = sub_22BD63484();
            v1913(v1912);
            sub_22BD642A0();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            v42 = v3008;
            sub_22BB5810C();
            v44 = v3000;
            sub_22BDBAF34();
            v1914 = sub_22BD6160C();
            v1915(v1914);
            v1916 = v18[1];
            ++v18;
            v1917 = sub_22BB35464();
            v1918(v1917);
            v1919 = sub_22BD649D0();
          }

          else
          {
            sub_22BD64D50();
            if (!v2000)
            {
              sub_22BD64C9C();
              if (v2146)
              {
                v3005 = *(v14 + 4840);
                sub_22BB32468();
                v2148 = *(v2147 + 2544);
                v19 = *(v3024 + 2536);
                v13 = *(v3024 + 2528);
                v2149 = sub_22BB381B4();
                v2150(v2149);
                v2151 = sub_22BD601CC();
                v2152(v2151);
                sub_22BD63EF8();
                sub_22BD5FC18();

                sub_22BD62270();
                MEMORY[0x23189FB20]();
              }

              else
              {
                sub_22BD64C34();
                if (!v2195)
                {
                  sub_22BD64C1C();
                  if (v2230)
                  {
                    v3022 = *(v14 + 3464);
                    sub_22BB96B90();
                    v2231 = *(v14 + 2488);
                    v2233 = sub_22BC54A3C(v2232);
                    v2234(v2233);
                    v2235 = sub_22BB70250();
                    v2236(v2235);
                    sub_22BB71FB0();
                    sub_22BDB5BA4();
                    sub_22BD644B8();
                    v2237 = sub_22BD61590();
                    v2238(v2237);
                    v2239 = sub_22BB3A840();
                    sub_22BB3AA28(v2239, v2240, v3022);
                    sub_22BB97DC0();
                    if (v165)
                    {
                      sub_22BB325EC(*(v14 + 2776), &qword_27D8E64D8, &qword_22BDCE3E0);
                    }

                    else
                    {
                      v18 = *(v14 + 3472);
                      v2241 = *(v14 + 3464);
                      v2242 = *(v14 + 3336);
                      v23 = *(v14 + 2784);
                      v2243 = *(v14 + 2776);
                      v67 = *(v14 + 2600);
                      v2244 = *(v14 + 2488);
                      sub_22BB3737C();
                      sub_22BB3A518(v2245, v18);
                      v2246 = sub_22BD65440();
                      sub_22BB75894(v2246, v2247);
                      sub_22BBE6DE0(&qword_27D8E64C8, &qword_22BDCE3D0);
                      sub_22BD63E44();
                      sub_22BD646A4();
                      sub_22BD61854();
                      sub_22BB32824();
                      sub_22BB34648();
                    }

                    v2959 = *(v14 + 4836);
                    v19 = v2231 != 1;
                    sub_22BD61390();
                    v2986 = *(v14 + 3216);
                    v2298 = *(v14 + 3208);
                    v2299 = *(v14 + 3200);
                    sub_22BD61308();
                    v3007 = v44;
                    sub_22BB95A24();
                    v3008 = v2300;
                    v3012 = v2301;
                    sub_22BD619BC();
                    v2970 = v2302;
                    MEMORY[0x23189FB80]();
                    sub_22BD63334();
                    sub_22BDB5DB4();
                    v2303 = v18[13];
                    v18 += 13;
                    v2304 = sub_22BD636A4();
                    v2305(v2304);
                    sub_22BB97B18();
                    sub_22BDB5E14();
                    sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
                    v44 = v2970;
                    v42 = v2986;
                    sub_22BBC055C();
                    sub_22BDBAF34();
                    v2306 = sub_22BD6160C();
                    v2307(v2306);
                    (*(v67 + 8))(v3007, v3008);
                    v2308 = sub_22BB3ACA0();
                    v2309(v2308);
                    goto LABEL_96;
                  }

                  sub_22BD616CC();
                  sub_22BB322B0();
                  v2268 = swift_allocObject();
                  v2269 = sub_22BD5FB20(v2268);
                  v2270(v2269);
                  sub_22BD60E54(*(v14 + 64));
                  v2271 = swift_allocObject();
                  v2272 = sub_22BD61D68(v2271);
                  (v50)(v2272);

                  v3023 = sub_22BDB77C4();
                  LODWORD(v3012) = sub_22BDBB114();
                  sub_22BD616A8();
                  v2273 = swift_allocObject();
                  sub_22BD61784(v2273);
                  sub_22BD616A8();
                  v2274 = swift_allocObject();
                  sub_22BD63308(v2274);
                  sub_22BB322B0();
                  v2275 = swift_allocObject();
                  sub_22BBBE7C0(v2275);
                  sub_22BB322B0();
                  v19 = swift_allocObject();
                  sub_22BB69C9C(v19);
                  sub_22BD616A8();
                  v23 = swift_allocObject();
                  sub_22BB6C06C(v23);
                  sub_22BD616A8();
                  v2276 = swift_allocObject();
                  sub_22BD64AC4(v2276);
                  sub_22BB322B0();
                  v2277 = swift_allocObject();
                  sub_22BD6039C(v2277);
                  sub_22BB322B0();
                  v2278 = swift_allocObject();
                  sub_22BB960B8(v2278);
                  v42 = sub_22BB97DF8();
                  sub_22BB34620(v42);
                  v2279[4] = v2280;
                  v2279[5] = v50;
                  v2279[6] = sub_22BB89C08;
                  v2279[7] = v14;
                  v2279[8] = sub_22BB89C7C;
                  v2279[9] = v19;
                  v2279[10] = sub_22BB89C08;
                  v2279[11] = v23;
                  v2279[12] = sub_22BB89C08;
                  v2279[13] = v3025;
                  v2279[14] = sub_22BB89C7C;
                  v2279[15] = v2278;

                  sub_22BD63C2C();

                  v2281 = sub_22BD624F4();
                  if (!os_log_type_enabled(v2281, v2282))
                  {
                    sub_22BD61ADC();

                    v2310 = sub_22BD60A40();
                    v2311(v2310);
                    v2312 = v44[1].isa;
                    ++v44;
                    v2312(v3012, v3008);
                    v2313 = sub_22BBC03B8();
                    v2314(v2313);
                    v14 = v13;
                    goto LABEL_96;
                  }

                  sub_22BB67968();
                  v2283 = sub_22BBBFF34();
                  v13[293] = 0;
                  v13[289] = v2283;
                  sub_22BBBEB6C();
                  sub_22BD60EBC(v2284);
                  v13[172] = v50;
                  sub_22BBBEAA0();
                  if (!v3025)
                  {

                    sub_22BB3B510();
                    *(v2285 + 1368) = v2286;
                    *(v2285 + 1376) = v14;
                    sub_22BD60E34(v2285);

                    sub_22BB70564();
                    *(v2287 + 1368) = v2288;
                    *(v2287 + 1376) = v19;
                    sub_22BD60E34(v2287);

                    sub_22BB3B510();
                    *(v2289 + 1368) = v2290;
                    *(v2289 + 1376) = v23;
                    sub_22BD60E34(v2289);

                    sub_22BB3B510();
                    *(v2291 + 1368) = v2292;
                    *(v2291 + 1376) = v3014;
                    sub_22BD60E34(v2291);

                    sub_22BB70564();
                    *(v2293 + 1368) = v2294;
                    *(v2293 + 1376) = v2278;
                    sub_22BD60E34(v2293);
                    v2295 = *(v3024 + 3896);
                    v2296 = *(v3024 + 3840);
                    sub_22BBC03A4();

                    sub_22BD61B3C();
                    sub_22BD636C8(&dword_22BB2C000, v3023, v2297, "[SessionCoordinator %{public}s] Unrecognized debugger event: %s.");
                    sub_22BD61EE4();
                    sub_22BB89BBC();
                    sub_22BB679C0();
                  }

LABEL_356:

                  goto LABEL_368;
                }

                v3005 = *(v14 + 4840);
                sub_22BB32468();
                v2197 = *(v2196 + 2520);
                v19 = *(v3024 + 2512);
                v13 = *(v3024 + 2504);
                v2198 = sub_22BB381B4();
                v2199(v2198);
                v2200 = sub_22BD601CC();
                v2201(v2200);
                sub_22BD63EF8();
                sub_22BD5FBE8();

                sub_22BD62270();
                MEMORY[0x23189FB40]();
              }

              v2202 = sub_22BD60C68();
              MEMORY[0x23189FD40](v2202);
              v2203 = sub_22BD62240();
              v2204(v2203, v3005, v2952);
              v44 = v2960;
              sub_22BB6FCB8();
              sub_22BDB5E14();
              sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
              sub_22BB70270();
              v2205 = sub_22BB8EAA8();
              v2206(v2205);
              v50 = v3025;
              v2207 = sub_22BD62FA4();
              v2208(v2207);
              v2209 = sub_22BD641B0();
              v2210(v2209);
              v2930 = v3025;
              goto LABEL_97;
            }

            sub_22BD64018();
            v2983 = *(v14 + 4104);
            sub_22BD5FADC();
            v2001 = sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220);
            sub_22BD64960(v2001);
            sub_22BBE6DE0(&qword_27D8E6008, &qword_22BDCD538);
            v2002 = v42[4].n128_u64[1];
            v2003 = v42[5].n128_u8[0];
            v2004 = sub_22BD61330();
            sub_22BD5B890(v2004, 1);
            v2005 = sub_22BD60DDC();
            v2006(v2005);
            v2007 = sub_22BD63D10();
            sub_22BD74A58(v2007, v2008);
            v2009 = sub_22BD61CB4();
            v2010(v2009);
            sub_22BD61D54();
            swift_storeEnumTagMultiPayload();
            sub_22BD5F83C();
            swift_storeEnumTagMultiPayload();
            sub_22BB3630C();
            sub_22BD65290(v2011, v2012);
            sub_22BB35CBC();
            sub_22BB34648();
            v2013 = sub_22BD62FB4();
            v2014(v2013);
            v1919 = sub_22BD63194();
          }

          v1920(v1919);
          goto LABEL_96;
        }

        v1534 = sub_22BD60BB8();
        v1535(v1534);
        v1536 = sub_22BD60BA4();
        v1537(v1536);
        v1538 = sub_22BDB5C54();
        sub_22BBC0358(v1538);
        if (v3025)
        {

          sub_22BB8AEEC();
          sub_22BD654E8();
          sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
          sub_22BD64D2C();
          v2026 = swift_dynamicCast();
          v2027 = *(v14 + 2496);
          if (v2026)
          {
            sub_22BD654D0();
            sub_22BB322B0();
            v2028 = swift_allocObject();
            sub_22BD6002C(v2028);
            v44 = sub_22BDB77C4();
            v19 = sub_22BDBB114();
            sub_22BD616A8();
            v18 = swift_allocObject();
            sub_22BB97ED4(v18);
            sub_22BD616A8();
            v42 = swift_allocObject();
            sub_22BB6FB2C(v42);
            sub_22BB322B0();
            v2029 = swift_allocObject();
            sub_22BB97500(v2029);
            sub_22BB322B0();
            v23 = swift_allocObject();
            sub_22BD6076C(v23);
            v2030 = sub_22BD6374C();
            v2031 = sub_22BBC2570(v2030, xmmword_22BDC2F20);
            v2031[2].n128_u64[0] = v2032;
            v2031[2].n128_u64[1] = v18;
            v2031[3].n128_u64[0] = sub_22BB89C08;
            v2031[3].n128_u64[1] = v42;
            v2031[4].n128_u64[0] = sub_22BB89C7C;
            v2031[4].n128_u64[1] = v23;

            if (sub_22BB72E44())
            {
              sub_22BB67968();
              v2033 = sub_22BB38198();
              sub_22BB89B00(v2033);
              sub_22BB6BD50(v2029);
              *(v14 + 1200) = v18;
              v2034 = sub_22BD5FC64();
              sub_22BB67984(v2034, v2035, v2036, v2037);

              sub_22BD5F824();
              *(v14 + 1200) = v42;
              v2038 = sub_22BD5FC64();
              sub_22BB67984(v2038, v2039, v2040, v2041);

              sub_22BD5F80C();
              *(v14 + 1200) = v23;
              v2042 = sub_22BD5FC64();
              sub_22BB67984(v2042, v2043, v2044, v2045);
              v2046 = *(v14 + 3856);
              sub_22BB96A7C();

              sub_22BB337EC(&dword_22BB2C000, v44, v19, "[SessionCoordinator %{public}s] | Injected events violate security policy.");
              sub_22BB30DDC();
              sub_22BB679C0();
            }

            v2153 = *(v14 + 3856);
            sub_22BD624B8();

            v2154 = sub_22BB70554();
            v2155(v2154);
            v2942 = *(v14 + 4856);
            sub_22BD62C34();
            sub_22BB3A738();
            v2984 = *(v2156 + 3216);
            sub_22BD60E9C();
            v2158 = *(v2157 + 3200);
            sub_22BB38BC4();
            sub_22BD62F94(v2159);
            sub_22BD60B7C();
            v3008 = v2160;
            v3012 = v2161;
            sub_22BB38E74();
            sub_22BB70778(v2162);
            MEMORY[0x23189FC10]();
            v2163 = sub_22BB6A0A0();
            v2164(v2163);
            sub_22BD60C68();
            sub_22BDB5D34();
            v2165 = sub_22BB70294();
            v2166(v2165);
            sub_22BBBFFBC();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BD617A4();
            sub_22BDBAF34();
            v2167 = sub_22BD60E8C();
            v2168(v2167);
            v2169 = sub_22BD63FA8();
            v2170(v2169);
            v2171 = sub_22BD60C18();
            v2172(v2171);
            v1940 = *(v14 + 2304);
LABEL_247:

LABEL_251:
            v50 = 0;
            goto LABEL_97;
          }

          sub_22BD654B8();
          sub_22BDB63E4();
          sub_22BB322B0();
          v18 = swift_allocObject();
          sub_22BB3CF50(v18);
          sub_22BB366B8();
          v2047 = swift_allocObject();
          sub_22BD62774(v2047);
          sub_22BD640C0();
          v2048 = v3025;
          v3025 = sub_22BDB77C4();
          LODWORD(v3016) = sub_22BDBB114();
          sub_22BD616A8();
          v13 = swift_allocObject();
          sub_22BB97ED4(v13);
          sub_22BD616A8();
          v2049 = swift_allocObject();
          sub_22BD61698(v2049);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB3E0C4();
          *(v2050 + 16) = v2051;
          *(v2050 + 24) = v18;
          sub_22BB322B0();
          v1778 = swift_allocObject();
          sub_22BB3DEE8(v1778);
          sub_22BD616A8();
          v2052 = swift_allocObject();
          sub_22BD61B1C(v2052);
          sub_22BD616A8();
          v2053 = swift_allocObject();
          sub_22BD63400(v2053);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BBBEBAC();
          *(v2054 + 16) = v2055;
          *(v2054 + 24) = v42;
          sub_22BB322B0();
          v2056 = swift_allocObject();
          sub_22BB3FE28(v2056);
          sub_22BB322B0();
          v2057 = swift_allocObject();
          sub_22BB8E554(v2057);
          v2058 = sub_22BB97DF8();
          sub_22BB31444(v2058);
          v2059[4] = v2060;
          v2059[5] = v13;
          v2059[6] = sub_22BB89C08;
          v2059[7] = v67;
          v2059[8] = sub_22BB89C7C;
          v2059[9] = v1778;
          v2059[10] = sub_22BB89C08;
          v2059[11] = v19;
          v2059[12] = sub_22BB89C08;
          v2059[13] = v23;
          v2059[14] = sub_22BD5EBD8;
          v2059[15] = v2057;
          sub_22BD65470();

          if (sub_22BD62224())
          {
            sub_22BB67968();
            sub_22BD63820();
            v2061 = sub_22BD62730();
            sub_22BD64CE4(v2061);
            sub_22BD60DCC();
            *(v14 + 2272) = v2062;
            *(v14 + 1240) = sub_22BB89C08;
            *(v14 + 1248) = v42;
            v2063 = sub_22BB72E30();
            sub_22BB67984(v2063, v2064, v2065, v2066);

            sub_22BD6070C();
            *(v14 + 1248) = v67;
            v2067 = sub_22BB72E30();
            sub_22BB67984(v2067, v2068, v2069, v2070);

            sub_22BB73B04();
            *(v14 + 1248) = v1778;
            v2071 = sub_22BB72E30();
            sub_22BB67984(v2071, v2072, v2073, v2074);

            sub_22BD6070C();
            *(v14 + 1248) = v19;
            v2075 = sub_22BB72E30();
            sub_22BB67984(v2075, v2076, v2077, v2078);

            sub_22BD6070C();
            *(v14 + 1248) = v23;
            v2079 = sub_22BB72E30();
            sub_22BB67984(v2079, v2080, v2081, v2082);

            sub_22BD606F4();
            *(v14 + 1248) = v2057;
            v2083 = sub_22BB72E30();
            sub_22BB67984(v2083, v2084, v2085, v2086);
            v2087 = *(v14 + 3848);
            sub_22BD61A18();

            sub_22BBD1A34();
            sub_22BB6F9C8();
            sub_22BD63EE0(v2088, v2089, v2090, "[SessionCoordinator %{public}s] | Failed to decode proto data from debugger: %{public}@");
            sub_22BB325EC(v18, &unk_27D8E6A70, &unk_22BDBCDB0);
            sub_22BB89BBC();
            sub_22BB35808();
            sub_22BB679C0();
          }

          sub_22BB89F08(*(v14 + 3848));
          sub_22BD651A0();

          v2173 = sub_22BD6268C();
          v2174(v2173, v13);
          sub_22BD62C34();
          LODWORD(v2919) = *(v14 + 4848);
          sub_22BB34150();
          sub_22BD60954(v2175);
          v2981 = *(v14 + 2648);
          sub_22BD64C58();
          v3001 = v2176;
          sub_22BD60AC0();
          sub_22BD647D4(v2177);
          MEMORY[0x23189FC10]();
LABEL_249:
          v1946 = sub_22BD64258();
          v1947(v1946, v2919, v1778);
          sub_22BD61F0C();
          sub_22BDB5D34();
          v1948 = sub_22BD62C28();
          v1949(v1948, v2952, v2925);
          sub_22BB6FCB8();
          sub_22BDB5E14();
          sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
          sub_22BD60A2C();
          v44 = v2946;
          sub_22BDBAF34();

          v1950 = sub_22BD61FA8();
          v1951(v1950, v3008);
          v1952 = *(v23 + 8);
          v23 += 8;
          v1952(v2981, v3001);
LABEL_250:
          v1953 = sub_22BD61EBC();
          v1954(v1953, v3016);
          goto LABEL_251;
        }

        sub_22BB701E8();
        sub_22BD5A87C(v18);
        v2930 = 0;
        sub_22BD63DA0();
        sub_22BDB96D4();
        sub_22BB3329C();
        if (!v165)
        {
          v2958 = *(v14 + 4860);
          v19 = *(v14 + 4448);
          v13 = *(v14 + 3544);
          v2211 = *(v14 + 3536);
          v2212 = *(v14 + 3528);
          sub_22BB36E60();
          sub_22BD630B0();
          v3006 = *(v14 + 3200);
          v2943 = *(v14 + 3192);
          v14 = *(v3024 + 3184);
          v2213 = *(v3024 + 3176);
          sub_22BD60B68();
          v2919 = *(v2214 + 2648);
          sub_22BD605D4();
          v2951 = v2215;

          v2216 = sub_22BD61510();
          v2217(v2216);
          sub_22BD62110();
          v2218 = sub_22BD614F8();
          v2219(v2218);
          v2220 = sub_22BD65260();
          v23 = v2919;
          MEMORY[0x23189FC10](v2220);
          sub_22BD653F8();
          v2221 = *(v2213 + 104);
          v42 = (v2213 + 104);
          v2222 = sub_22BD636A4();
          v2223(v2222);
          sub_22BB97B18();
          sub_22BDB5E14();
          sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
          sub_22BD60A2C();
          v44 = v2951;
          sub_22BDBAF34();
          v2224 = sub_22BB9607C();
          v2225(v2224, v3006);
          v2226 = sub_22BD632C4();
          v2227(v2226);
          v2228 = sub_22BD63394();
          v2229(v2228);
          goto LABEL_250;
        }

        v2178 = sub_22BD633E4();
        sub_22BB325EC(v2178, &qword_27D8E64D0, &qword_22BDCE3D8);
        sub_22BDB63E4();
        sub_22BB322B0();
        v2179 = swift_allocObject();
        sub_22BD60000(v2179);
        v44 = sub_22BDB77C4();
        v19 = sub_22BDBB114();
        sub_22BD616A8();
        v2180 = swift_allocObject();
        sub_22BB96D7C(v2180);
        sub_22BD616A8();
        v42 = swift_allocObject();
        sub_22BB6FB2C(v42);
        sub_22BB322B0();
        v2181 = swift_allocObject();
        sub_22BB97500(v2181);
        sub_22BB322B0();
        v23 = swift_allocObject();
        sub_22BBC0888(v23);
        v2182 = sub_22BD6374C();
        v2183 = sub_22BBC2570(v2182, xmmword_22BDC2F20);
        v2183[2].n128_u64[0] = v2184;
        v2183[2].n128_u64[1] = v67;
        v2183[3].n128_u64[0] = sub_22BB89C08;
        v2183[3].n128_u64[1] = v42;
        v2183[4].n128_u64[0] = sub_22BB89C7C;
        v2183[4].n128_u64[1] = v23;

        if (!sub_22BB72E44())
        {
          v2248 = *(v14 + 3864);
          v2249 = *(v14 + 3840);
          sub_22BD62CAC();

          v2250 = *(v2249 + 8);
          v2251 = sub_22BB2F0E0();
          v2252(v2251);
          v2944 = *(v14 + 4864);
          sub_22BD62C34();
          sub_22BB3A738();
          v2985 = *(v2253 + 3216);
          sub_22BD60E9C();
          v2255 = *(v2254 + 3200);
          sub_22BB38BC4();
          sub_22BD62F94(v2256);
          sub_22BD60B7C();
          v3008 = v2257;
          v3012 = v2258;
          sub_22BB38E74();
          sub_22BB70778(v2259);
          MEMORY[0x23189FC10]();
          v2260 = sub_22BB6A0A0();
          v2261(v2260);
          sub_22BD60C68();
          sub_22BDB5D34();
          v2262 = sub_22BB70294();
          v2263(v2262);
          sub_22BBBFFBC();
          sub_22BDB5E14();
          sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
          sub_22BD617A4();
          sub_22BDBAF34();
          v2264 = sub_22BD60E8C();
          v2265(v2264);
          v2266 = sub_22BD63FA8();
          v2267(v2266);
          goto LABEL_250;
        }

        sub_22BB67968();
        v2185 = sub_22BB6B650();
        sub_22BD5FB4C(v2185);
        if (!v2182)
        {

          sub_22BD61074();
          *(v14 + 1152) = v42;
          v2186 = sub_22BB938D8();
          sub_22BB67984(v2186, v2187, v2188, v2189);

          sub_22BD6105C();
          *(v14 + 1152) = v23;
          v2190 = sub_22BB938D8();
          sub_22BB67984(v2190, v2191, v2192, v2193);
          v2194 = *(v14 + 3864);
          sub_22BD64324();

          sub_22BD63B54(&dword_22BB2C000, v44, v19, "[SessionCoordinator %{public}s] | Provided transcript had no events. Rejecting it.");
          sub_22BB35808();
          sub_22BB679C0();
        }

        goto LABEL_367;
      case 6u:
        v2327 = *(v14 + 4080);
        sub_22BD63920();
        _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
        sub_22BB322B0();
        v2328 = swift_allocObject();
        sub_22BD60000(v2328);
        v2329 = sub_22BDB77C4();
        sub_22BDBB134();
        sub_22BD616A8();
        v2330 = swift_allocObject();
        sub_22BB97ED4(v2330);
        sub_22BD616A8();
        v2331 = swift_allocObject();
        sub_22BB6FB2C(v2331);
        sub_22BB322B0();
        v2332 = swift_allocObject();
        sub_22BB97500(v2332);
        sub_22BB322B0();
        v2333 = swift_allocObject();
        sub_22BBC0888(v2333);
        v2334 = sub_22BD6374C();
        v2335 = sub_22BBC2570(v2334, xmmword_22BDC2F20);
        v2335[2].n128_u64[0] = v2336;
        v2335[2].n128_u64[1] = v2330;
        v2335[3].n128_u64[0] = sub_22BB89C08;
        v2335[3].n128_u64[1] = v2331;
        v2335[4].n128_u64[0] = sub_22BB89C7C;
        v2335[4].n128_u64[1] = v2333;

        if (sub_22BC54EF8())
        {
          sub_22BB67968();
          v2337 = sub_22BB6B650();
          sub_22BB3E0DC(v2337);
          sub_22BBC78A8(v2338);
          v3032 = v2339;
          v3033 = v2330;
          v2340 = sub_22BB58B08();
          sub_22BB67984(v2340, v2341, v2342, v2343);
          if (!v2334)
          {

            v2358 = sub_22BB542B0();
            sub_22BB67984(v2358, v2359, v2360, v2361);

            v3032 = sub_22BB89C7C;
            v3033 = v2333;
            v2362 = sub_22BB542B0();
            sub_22BB67984(v2362, v2363, v2364, v2365);
            v2366 = *(v14 + 4080);
            sub_22BD62094();

            sub_22BB6FAD4(&dword_22BB2C000, v2367, v2368, "[SessionCoordinator %{public}s] Processed SIGTERM. Exiting.");
            sub_22BB35808();
            sub_22BB679C0();
          }

          goto LABEL_349;
        }

        v2344 = *(v14 + 4080);
        sub_22BD62094();

        (*(v19 + 8))(v2344, v2334);
        sub_22BB704B0();
        sub_22BBBE8EC();
        v2345 = *(v14 + 4352);
        v2346 = *(v14 + 4344);
        sub_22BBD2294();
        v2731 = v2330[534];
        v2732 = v2330[533];
        v2733 = v2330[532];
        v2734 = v2330[531];
        v2735 = v2330[530];
        v2736 = v2330[527];
        v2737 = v2330[526];
        v2738 = v2330[525];
        v2739 = v2330[524];
        v2740 = v2330[523];
        v2741 = v2330[522];
        v2742 = v2330[521];
        v2743 = v2330[518];
        v2744 = v2330[517];
        v2745 = v2330[516];
        v2746 = v2330[512];
        v2747 = v2330[511];
        v2748 = v2330[510];
        v2749 = v2330[509];
        v2750 = v2330[508];
        v2751 = v2330[507];
        v2752 = v2330[506];
        v2753 = v2330[505];
        v2754 = v2330[504];
        v2755 = v2330[503];
        v2756 = v2330[502];
        v2757 = v2330[501];
        v2758 = v2330[500];
        v2759 = v2330[499];
        v2760 = v2330[498];
        v2761 = v2330[497];
        v2762 = v2330[496];
        v2763 = v2330[495];
        v2764 = v2330[494];
        v2765 = v2330[493];
        v2766 = v2330[492];
        v2767 = v2330[491];
        v2768 = v2330[490];
        v2769 = v2330[489];
        v2770 = v2330[488];
        v2771 = v2330[487];
        v2772 = v2330[486];
        v2773 = v2330[485];
        v2774 = v2330[484];
        v2775 = v2330[483];
        v2776 = v2330[482];
        v2777 = v2330[481];
        v2778 = v2330[478];
        v2779 = v2330[477];
        v2780 = v2330[476];
        v2781 = v2330[475];
        v2782 = v2330[474];
        v2783 = v2330[473];
        v2784 = v2330[472];
        v2785 = v2330[471];
        v2786 = v2330[470];
        v2787 = v2330[469];
        v2788 = v2330[468];
        v2789 = v2330[467];
        v2790 = v2330[464];
        v2791 = v2330[461];
        v2792 = v2330[460];
        v2793 = v2330[459];
        v2794 = v2330[458];
        v2795 = v2330[457];
        v2796 = v2330[456];
        v2797 = v2330[455];
        v2798 = v2330[454];
        v2799 = v2330[453];
        v2800 = v2330[452];
        v2801 = v2330[448];
        v2802 = v2330[447];
        v2803 = v2330[446];
        v2804 = v2330[445];
        v2806 = v2330[444];
        v2808 = v2330[443];
        v2810 = v2330[440];
        v2812 = v2330[439];
        v2813 = v2330[438];
        v2815 = v2330[435];
        v2817 = v2330[434];
        v2819 = v2330[432];
        v2821 = v2330[431];
        v2822 = v2330[427];
        v2823 = v2330[426];
        v2825 = v2330[425];
        v2827 = v2330[424];
        v2829 = v2330[420];
        v2831 = v2330[419];
        v2834 = v2330[417];
        v2837 = v2330[416];
        v2840 = v2330[413];
        v2845 = v2330[412];
        v2847 = v2330[411];
        v2849 = v2330[410];
        v2850 = v2330[409];
        v2851 = v2330[408];
        v2853 = v2330[407];
        v2855 = v2330[406];
        v2858 = v2330[402];
        v2860 = v2330[399];
        v2861 = v2330[398];
        v2862 = v2330[395];
        v2863 = v2330[394];
        v2864 = v2330[391];
        v2865 = v2330[390];
        v2868 = v2330[387];
        v2870 = v2330[384];
        v2873 = v2330[383];
        v2877 = v2330[382];
        v2882 = v2330[379];
        v2884 = v2330[378];
        v2886 = v2330[377];
        v2889 = v2330[373];
        v2890 = v2330[372];
        v2891 = v2330[369];
        v2894 = v2330[368];
        v2895 = v2330[365];
        v2898 = v2330[364];
        v2906 = v2330[363];
        oslogc = v2330[360];
        v2916 = v2330[358];
        namea = v2330[357];
        v2924 = v2330[356];
        v2929 = v2330[353];
        v2932 = v2330[352];
        v2945 = v2330[351];
        sub_22BB898F4();
        sub_22BB35CBC();
        sub_22BB34648();
        v2347 = v2330[197];

        v2348 = sub_22BD632B8();
        v2349(v2348, v2331);

        sub_22BB2F09C();
        sub_22BB33430();

        v2351(v2350, v2351, v2352, v2353, v2354, v2355, v2356, v2357, a9, a10, a11, a12);
        return;
      case 7u:
        v311 = *(v14 + 4072);
        sub_22BD63920();
        sub_22BDB63E4();
        sub_22BB322B0();
        v312 = swift_allocObject();
        sub_22BD60000(v312);
        v44 = sub_22BDB77C4();
        v313 = sub_22BDBB114();
        sub_22BD616A8();
        v314 = swift_allocObject();
        sub_22BD60E0C(v314);
        sub_22BD616A8();
        v315 = swift_allocObject();
        sub_22BB70358(v315);
        sub_22BB322B0();
        v316 = swift_allocObject();
        sub_22BB97500(v316);
        sub_22BB322B0();
        v317 = swift_allocObject();
        sub_22BD6040C(v317);
        v318 = sub_22BD6374C();
        v319 = sub_22BBC2570(v318, xmmword_22BDC2F20);
        v319[2].n128_u64[0] = v320;
        v319[2].n128_u64[1] = v23;
        v319[3].n128_u64[0] = sub_22BB89C08;
        v319[3].n128_u64[1] = v19;
        v319[4].n128_u64[0] = sub_22BB89C7C;
        v319[4].n128_u64[1] = v42;

        if (sub_22BC54EF8())
        {
          sub_22BB67968();
          v321 = sub_22BB38198();
          *(v14 + 2392) = 0;
          *(v14 + 2360) = v321;
          sub_22BD60D14(v316);
          *(v14 + 1456) = v23;
          v322 = sub_22BB6F9B4();
          sub_22BB67984(v322, v323, v324, v325);
          if (!v3025)
          {

            sub_22BBBE83C();
            *(v14 + 1456) = v19;
            v326 = sub_22BB6F9B4();
            sub_22BB67984(v326, v327, v328, v329);

            sub_22BD60FFC();
            *(v14 + 1456) = v42;
            v330 = sub_22BB6F9B4();
            sub_22BB67984(v330, v331, v332, v333);
            v334 = *(v14 + 4072);
            sub_22BD61A18();

            sub_22BB337EC(&dword_22BB2C000, v44, v313, "[SessionCoordinator %{public}s] | Detected failure in debugger handling. Disabling debug modes and terminating session.");
            sub_22BB30DDC();
            sub_22BB679C0();
          }

          goto LABEL_368;
        }

        v554 = *(v14 + 4072);
        sub_22BD64324();

        v555 = *(v316 + 8);
        v556 = sub_22BB30AE4();
        v557(v556);
        v23 = *(v14 + 4792);
        v42 = *(v14 + 4344);
        v18 = *(v14 + 4304);
        v19 = *(v14 + 4104);
        v558 = *(v14 + 3144);
        v559 = *(v14 + 3128);
        sub_22BB96BBC(*(v14 + 4440));
        v560 = sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220);
        sub_22BD64954(v560);
        sub_22BBE6DE0(&qword_27D8E6008, &qword_22BDCD538);
        v561 = sub_22BD60FD4();
        sub_22BD5B890(v561, 1);
        sub_22BD61630();
        v562(v559, v23, v316 + 8);
        sub_22BD74A58(v559, v558);
        v563 = *(v14 + 8);
        v14 += 8;
        v564 = sub_22BD00E3C();
        v565(v564);
        sub_22BD614B8();
        sub_22BD5F854();
        sub_22BB37074();
        swift_storeEnumTagMultiPayload();
        sub_22BB3630C();
        sub_22BD64674(v566, v567);
        sub_22BB35CBC();
LABEL_90:
        sub_22BB34648();
        goto LABEL_96;
      default:
        sub_22BB89C84();
        v187 = sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220);
        sub_22BB8D2E4(v187);
        v189 = *v188;
        *(v14 + 4552) = *v188;
        v190 = v188[1];
        *(v14 + 4560) = v190;
        sub_22BBBE74C();
        sub_22BB3A518(v18, v106);
        sub_22BDB63E4();
        sub_22BB322B0();
        v191 = swift_allocObject();
        sub_22BB977E8(v191);
        v192 = sub_22BB3A9D4();
        sub_22BB335C0(v192, v193);
        sub_22BBC0328(*(v23 + 80));
        v194 = swift_allocObject();
        sub_22BD650D0(v194);
        sub_22BB322B0();
        v195 = swift_allocObject();
        *(v195 + 16) = v189;
        *(v195 + 24) = v190;

        v3014 = sub_22BDB77C4();
        sub_22BDBB104();
        sub_22BD616A8();
        v3017 = swift_allocObject();
        sub_22BB97ED4(v3017);
        sub_22BD616A8();
        v196 = swift_allocObject();
        sub_22BD62CE4(v196);
        sub_22BB322B0();
        v197 = swift_allocObject();
        sub_22BBBDEB0(v197);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F74C();
        *(v198 + 16) = v199;
        *(v198 + 24) = v197;
        sub_22BD616A8();
        v2991 = swift_allocObject();
        *(v2991 + 16) = 32;
        sub_22BD616A8();
        v200 = swift_allocObject();
        *(v200 + 16) = v19;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD626B4();
        *(v201 + 16) = v203;
        *(v201 + 24) = v202;
        sub_22BB322B0();
        v204 = swift_allocObject();
        sub_22BB3AE40(v204);
        sub_22BD616A8();
        v205 = swift_allocObject();
        *(v205 + 16) = 32;
        sub_22BD616A8();
        v206 = swift_allocObject();
        sub_22BD64D98(v206);
        sub_22BB322B0();
        v207 = swift_allocObject();
        sub_22BD6055C(v207);
        sub_22BB322B0();
        v208 = swift_allocObject();
        sub_22BD626EC(v208);
        v209 = sub_22BD630D4();
        sub_22BBC96FC(v209, xmmword_22BDCE140);
        sub_22BD60544(v3017);
        sub_22BD62630();
        v209[4].n128_u64[1] = v50;
        v209[5].n128_u64[0] = sub_22BB89C08;
        sub_22BD62854();
        v209[6].n128_u64[1] = v200;
        v209[7].n128_u64[0] = sub_22BB89C7C;
        v209[7].n128_u64[1] = v44;
        v209[8].n128_u64[0] = sub_22BB89C08;
        v209[8].n128_u64[1] = v205;
        v209[9].n128_u64[0] = sub_22BB89C08;
        v209[9].n128_u64[1] = 32;
        v209[10].n128_u64[0] = sub_22BB89C7C;
        v209[10].n128_u64[1] = v19;

        HIDWORD(v3012) = 0;

        v210 = sub_22BD620A0();
        if (os_log_type_enabled(v210, v211))
        {
          v212 = sub_22BB67968();
          v213 = sub_22BD63AC4();
          *(v14 + 2408) = 0;
          *(v14 + 2416) = v213;
          *v212 = 770;
          *(v14 + 2400) = v212 + 1;
          *(v14 + 1528) = sub_22BB89C08;
          *(v14 + 1536) = v3017;
          v214 = sub_22BD5F978();
          sub_22BB67984(v214, v215, v216, v217);
          if (!v3025)
          {

            *(v14 + 1528) = sub_22BB89C08;
            *(v14 + 1536) = v207;
            v218 = sub_22BD5F978();
            sub_22BB67984(v218, v219, v220, v221);

            *(v14 + 1528) = sub_22BB89C7C;
            *(v14 + 1536) = v50;
            v222 = sub_22BD5F978();
            sub_22BB67984(v222, v223, v224, v225);

            *(v14 + 1528) = sub_22BB89C08;
            *(v14 + 1536) = v2991;
            v226 = sub_22BD5F978();
            sub_22BB67984(v226, v227, v228, v229);

            *(v14 + 1528) = sub_22BB89C08;
            *(v14 + 1536) = v200;
            v230 = sub_22BD5F978();
            sub_22BB67984(v230, v231, v232, v233);

            *(v14 + 1528) = sub_22BB89C7C;
            *(v14 + 1536) = v44;
            v234 = sub_22BD5F978();
            sub_22BB67984(v234, v235, v236, v237);

            *(v14 + 1528) = sub_22BB89C08;
            *(v14 + 1536) = v205;
            v238 = sub_22BD5F978();
            sub_22BB67984(v238, v239, v240, v241);

            *(v14 + 1528) = sub_22BB89C08;
            *(v14 + 1536) = 32;
            v242 = sub_22BD5F978();
            sub_22BB67984(v242, v243, v244, v245);

            *(v14 + 1528) = sub_22BB89C7C;
            *(v14 + 1536) = v19;
            v246 = sub_22BD5F978();
            sub_22BB67984(v246, v247, v248, v249);
            v250 = *(v14 + 4096);
            sub_22BD62624();

            sub_22BBBE830();
            sub_22BD63B3C(&dword_22BB2C000, v3014, v251, "[SessionCoordinator %{public}s] | Processing transaction request:\nContents: %s\nPostcondition: %s");
            sub_22BD62D3C();
            sub_22BB30458();
            sub_22BB679C0();
          }

          goto LABEL_330;
        }

        sub_22BD64E70();

        v395 = sub_22BD62258();
        v396(v395, 32);
        v397 = sub_22BD63524();
        HIDWORD(v3014) = v398;
        v2911 = v397;
        *(v14 + 4576) = v397;
        sub_22BD642C4();
        *(v14 + 4584) = v399;
        sub_22BD6480C();
        *(v14 + 4592) = v400;
        v401 = sub_22BB3E460();
        v2930 = v402;
        v2925 = v403;
        v403(v401);
        sub_22BDB96A4();
        *(v14 + 4600) = *(v50 + 8);
        sub_22BD63D50();
        *(v14 + 4608) = v404;
        v405 = sub_22BB2F324();
        v2935 = v50 + 8;
        v2919 = v406;
        v406(v405);
        v407 = sub_22BDB9744();
        v408 = MEMORY[0x28];
        *(v14 + 4616) = MEMORY[0x28];
        *(v14 + 4624) = 0x4F8000000000028;
        v409 = sub_22BB2F0E0();
        v408(v409);
        *(v14 + 1712) = v407;
        sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
        sub_22BB31DE0();
        sub_22BD63468();
        sub_22BB899C0(v410, v411, v412);
        v413 = (v14 + 1712);
        sub_22BD62448();
        sub_22BDB90D4();

        v414 = sub_22BBE6DE0(&qword_27D8E6560, &qword_22BDCE740);
        v415 = sub_22BBD2268(v414);
        v416 = *(v14 + 3576);
        if (v415 == 1)
        {
          sub_22BB325EC(v416, &qword_27D8E6518, &unk_22BDCE420);
        }

        else
        {
          sub_22BD61658(v416);
          v588 = sub_22BD64800();
          v589(v588);
        }

        sub_22BD61D40();
        v590 = sub_22BD64B6C();
        sub_22BB336D0(v590, v591, v592, v593);
        sub_22BB366B8();
        v594 = swift_allocObject();
        *(v14 + 4632) = v594;
        sub_22BD616A8();
        v595 = swift_allocObject();
        *(v14 + 4640) = v595;
        sub_22BD616A8();
        v276 = swift_allocObject();
        *(v14 + 4648) = v276;
        sub_22BD60084();
        sub_22BB37074();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v597 = v209->n128_u64[0];
        v3008 = v594;
        v2988 = v276;
        name = v595;
        if (EnumCaseMultiPayload == 1)
        {
          v2887 = v408;
          sub_22BD61D2C();
          oslog = v598;
          v2954 = v599;
          v600 = sub_22BDB8404();
          v2992 = v601;
          v2994 = v600;
          v602 = *(v209->n128_i64 + v407);
          sub_22BDB8404();
          sub_22BBBE80C();
          sub_22BB97C94();
          if (v376)
          {
            __break(1u);
LABEL_398:
            __break(1u);

            goto LABEL_349;
          }

          sub_22BD61914(v603);
          sub_22BB322B0();
          swift_allocObject();
          sub_22BB89DB4();
          *(v604 + 16) = v605;
          *(v604 + 24) = v276;
          sub_22BB366B8();
          v606 = swift_allocObject();
          sub_22BD64028(v606);
          sub_22BB322B0();
          v607 = swift_allocObject();
          sub_22BD60348(v607);
          sub_22BB366B8();
          v608 = swift_allocObject();
          sub_22BD645D4(v608);
          v2964 = v597;

          v2974 = sub_22BDB77C4();
          v2913 = sub_22BDBB134();
          sub_22BD616A8();
          v3019 = swift_allocObject();
          *(v3019 + 16) = 34;
          sub_22BD616A8();
          *(swift_allocObject() + 16) = 8;
          sub_22BB322B0();
          v609 = swift_allocObject();
          sub_22BB70160(v609);
          sub_22BB322B0();
          v610 = swift_allocObject();
          sub_22BB69C9C(v610);
          sub_22BD616A8();
          v611 = swift_allocObject();
          *(v611 + 16) = 34;
          sub_22BD616A8();
          v612 = swift_allocObject();
          *(v612 + 16) = 8;
          sub_22BB322B0();
          v613 = swift_allocObject();
          sub_22BBBE888(v613);
          sub_22BB322B0();
          v614 = swift_allocObject();
          sub_22BB69C9C(v614);
          sub_22BD616A8();
          v615 = swift_allocObject();
          sub_22BD62E7C(v615);
          sub_22BD616A8();
          v616 = swift_allocObject();
          *(v616 + 16) = 8;
          sub_22BB322B0();
          v617 = swift_allocObject();
          sub_22BD602E0(v617);
          sub_22BB322B0();
          v618 = swift_allocObject();
          sub_22BD606DC(v618);
          v619 = sub_22BD630D4();
          sub_22BB70434(v619, xmmword_22BDCE140);
          sub_22BB980A0();
          v619[4].n128_u64[1] = v610;
          v619[5].n128_u64[0] = sub_22BB89C08;
          v619[5].n128_u64[1] = v611;
          v619[6].n128_u64[0] = sub_22BB89C08;
          v619[6].n128_u64[1] = v612;
          v619[7].n128_u64[0] = sub_22BB89C7C;
          v619[7].n128_u64[1] = v614;
          v619[8].n128_u64[0] = sub_22BB89C08;
          v619[8].n128_u64[1] = v615;
          v619[9].n128_u64[0] = sub_22BB89C08;
          v619[9].n128_u64[1] = v616;
          v619[10].n128_u64[0] = sub_22BB70118;
          v619[10].n128_u64[1] = v618;

          v2896 = v611;

          if (os_log_type_enabled(v2974, v2913))
          {
            sub_22BB67968();
            v620 = sub_22BB3869C();
            *(v14 + 2288) = 0;
            *(v14 + 2296) = v620;
            *v609 = 770;
            *(v14 + 2280) = v609 + 1;
            sub_22BB70328();
            *(v14 + 1312) = v3019;
            v621 = sub_22BB58898();
            sub_22BB67984(v621, v622, v623, v624);
            if (!v3025)
            {

              sub_22BB70328();
              *(v14 + 1312) = v609;
              v625 = sub_22BB58898();
              sub_22BB67984(v625, v626, v627, v628);

              sub_22BB96CEC();
              *(v14 + 1312) = v610;
              v629 = sub_22BB58898();
              sub_22BB67984(v629, v630, v631, v632);

              sub_22BB70328();
              *(v14 + 1312) = v611;
              v633 = sub_22BB58898();
              sub_22BB67984(v633, v634, v635, v636);

              sub_22BB70328();
              *(v14 + 1312) = v612;
              v637 = sub_22BB58898();
              sub_22BB67984(v637, v638, v639, v640);

              sub_22BB96CEC();
              *(v14 + 1312) = v614;
              v641 = sub_22BB58898();
              sub_22BB67984(v641, v642, v643, v644);

              sub_22BB70328();
              *(v14 + 1312) = v615;
              v645 = sub_22BB58898();
              sub_22BB67984(v645, v646, v647, v648);

              sub_22BB70328();
              *(v14 + 1312) = v616;
              v649 = sub_22BB58898();
              sub_22BB67984(v649, v650, v651, v652);

              sub_22BD606C4();
              *(v14 + 1312) = v618;
              v653 = sub_22BB58898();
              sub_22BB67984(v653, v654, v655, v656);
              v657 = *(v14 + 4064);
              sub_22BD6256C();

              sub_22BD63B3C(&dword_22BB2C000, v2974, v2913, "[SessionCoordinator %{public}s] | [TX %{public}s] Client transaction turned in with %{public}ld events.");
              sub_22BB96A94();
              sub_22BB30458();
              sub_22BB679C0();
            }

            goto LABEL_368;
          }

          v920 = *(v14 + 4064);
          v921 = *(v14 + 3840);
          sub_22BD640F0();

          v923 = *(v921 + 8);
          v922 = v921 + 8;
          sub_22BD61DF4(v923);
          v924();
          sub_22BD60B30();
          if (v165)
          {
            sub_22BD615A0();
            v615 = *(v14 + 3192);
            sub_22BB75638();
            sub_22BDB8444();
            sub_22BD62408();
            sub_22BB8E9C4();
            sub_22BDB5D24();
            v925 = sub_22BD61CDC();
            v926(v925);
            sub_22BD63938();
            sub_22BDB5E14();
            sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
            sub_22BBBFFBC();
            sub_22BDBAF34();
            v927 = sub_22BD62DF4();
            v928(v927, v3025);
          }

          v929 = v2964;
          v2915 = sub_22BD46088(v2964);
          v931 = v930;

          v932 = sub_22BB31614();
          v934 = sub_22BB6F9D4(v932, v933, v2964);
          sub_22BD6471C(v934, v935);
          sub_22BB2F1B0();

          v2904 = v931;
          if (v615 < 2)
          {
            v423 = &qword_22BDC1660;
            v978 = v3008;
            v979 = v2954;
          }

          else
          {
            v936 = *(v14 + 3960);
            sub_22BD62680();
            sub_22BDB63E4();
            sub_22BB322B0();
            v937 = swift_allocObject();
            sub_22BB977E8(v937);
            sub_22BB366B8();
            v938 = swift_allocObject();
            sub_22BD63080(v938);
            sub_22BB322B0();
            v939 = swift_allocObject();
            sub_22BD60A50(v939);
            v2976 = sub_22BDB77C4();
            sub_22BDBB114();
            sub_22BD616A8();
            v940 = swift_allocObject();
            sub_22BD623EC(v940);
            sub_22BD616A8();
            v941 = swift_allocObject();
            sub_22BD62E20(v941);
            sub_22BB322B0();
            v942 = swift_allocObject();
            sub_22BD60310(v942);
            sub_22BB322B0();
            v929 = swift_allocObject();
            sub_22BD60664(v929);
            sub_22BD616A8();
            v943 = swift_allocObject();
            sub_22BD636BC(v943);
            sub_22BD616A8();
            v944 = swift_allocObject();
            sub_22BD64DE0(v944);
            sub_22BB322B0();
            v945 = swift_allocObject();
            sub_22BD60364(v945);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F764();
            *(v946 + 16) = v947;
            *(v946 + 24) = v615;
            v619 = sub_22BB97DF8();
            sub_22BB34620(v619);
            v948[4] = v949;
            v948[5] = v3025;
            v948[6] = sub_22BB89C08;
            v948[7] = v941;
            v948[8] = sub_22BB89C7C;
            v948[9] = v929;
            v948[10] = sub_22BB89C08;
            v948[11] = v610;
            v948[12] = sub_22BB89C08;
            v948[13] = v922;
            v948[14] = sub_22BB89C7C;
            v948[15] = v938;
            sub_22BD6474C();

            sub_22BD63D04();
            if (os_log_type_enabled(v2976, v950))
            {
              sub_22BB67968();
              v951 = sub_22BBBFF34();
              sub_22BD64A74(v951);
              sub_22BBBEB6C();
              *(v14 + 2248) = v952;
              sub_22BB97DA8();
              *(v14 + 1296) = v615;
              v953 = sub_22BB8ABC0();
              sub_22BB67984(v953, v954, v955, v956);
              if (!v3025)
              {

                sub_22BB97DA8();
                *(v14 + 1296) = v941;
                v957 = sub_22BB8ABC0();
                sub_22BB67984(v957, v958, v959, v960);

                sub_22BD6064C();
                *(v14 + 1296) = v929;
                v961 = sub_22BB8ABC0();
                sub_22BB67984(v961, v962, v963, v964);

                sub_22BB97DA8();
                *(v14 + 1296) = v610;
                v965 = sub_22BB8ABC0();
                sub_22BB67984(v965, v966, v967, v968);

                sub_22BB97DA8();
                *(v14 + 1296) = v922;
                v969 = sub_22BB8ABC0();
                sub_22BB67984(v969, v970, v971, v972);

                *(v14 + 1288) = sub_22BB89C7C;
                *(v14 + 1296) = v938;
                v973 = sub_22BB8ABC0();
                sub_22BB67984(v973, v974, v975, v976);
                sub_22BD65030();
                sub_22BB39F58();
                sub_22BD636C8(&dword_22BB2C000, v2976, v977, "[SessionCoordinator %{public}s] | [TX %{public}s] A client transaction contains more than one query. Only the last one will be used as the current query.");
                sub_22BBBE7DC();
                sub_22BB32238();
                sub_22BB679C0();
              }

              goto LABEL_356;
            }

            v2896 = *(v14 + 3960);
            sub_22BD6256C();

            sub_22BB896A8();
            v1374();
            v423 = &qword_22BDC1660;
            v978 = v3008;
            v979 = v2954;
            v931 = v931;
          }

          v1375 = oslog;
          if (v931)
          {
            v13 = v2964;
          }

          else
          {
            if (v2915)
            {
              v1376 = *(v14 + 3952);
              sub_22BD62680();
              sub_22BDB63E4();
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB758D8();
              *(v1377 + 16) = v1378;
              *(v1377 + 24) = v931;
              sub_22BB366B8();
              v1379 = swift_allocObject();
              sub_22BD63080(v1379);
              sub_22BB322B0();
              v1380 = swift_allocObject();
              sub_22BD5F71C(v1380);
              sub_22BB366B8();
              v1381 = swift_allocObject();
              sub_22BBC0200(v1381);
              v2977 = sub_22BDB77C4();
              sub_22BDBB114();
              sub_22BD616A8();
              v3019 = swift_allocObject();
              sub_22BD6250C(v3019);
              sub_22BD616A8();
              v2893 = swift_allocObject();
              sub_22BB6FB2C(v2893);
              v931 = 8;
              sub_22BB322B0();
              v1382 = swift_allocObject();
              sub_22BB31A44(v1382);
              sub_22BB322B0();
              v1383 = swift_allocObject();
              sub_22BB3DEE8(v1383);
              sub_22BD616A8();
              v1384 = swift_allocObject();
              sub_22BD64CC0(v1384);
              sub_22BD616A8();
              v1385 = swift_allocObject();
              sub_22BD64AF0(v1385);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD607B4();
              *(v1386 + 16) = v1387;
              *(v1386 + 24) = v1380;
              sub_22BB322B0();
              v1388 = swift_allocObject();
              sub_22BB72DE4(v1388);
              sub_22BD616A8();
              v1389 = swift_allocObject();
              sub_22BD6430C(v1389);
              sub_22BD616A8();
              v1390 = swift_allocObject();
              sub_22BB70358(v1390);
              sub_22BB322B0();
              v1391 = swift_allocObject();
              sub_22BD605A4(v1391);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD6079C();
              *(v1392 + 16) = v1393;
              *(v1392 + 24) = v1391;
              v619 = sub_22BD630D4();
              v619[2].n128_u64[1] = sub_22BB53DC8(v619, xmmword_22BDCE140);
              v619[3].n128_u64[0] = v1394;
              v423 = v2893;
              sub_22BB8E984();
              v619[4].n128_u64[1] = v1383;
              v619[5].n128_u64[0] = sub_22BB89C08;
              v619[5].n128_u64[1] = v1376;
              v619[6].n128_u64[0] = sub_22BB89C08;
              v619[6].n128_u64[1] = v2915;
              v619[7].n128_u64[0] = sub_22BB89C7C;
              v619[7].n128_u64[1] = v1388;
              v619[8].n128_u64[0] = sub_22BB89C08;
              v619[8].n128_u64[1] = v615;
              v619[9].n128_u64[0] = sub_22BB89C08;
              v619[9].n128_u64[1] = 8;
              v619[10].n128_u64[0] = sub_22BD5F64C;
              v619[10].n128_u64[1] = v610;

              sub_22BD63D04();
              if (os_log_type_enabled(v2977, v1395))
              {
                sub_22BD643A0();
                v1396 = sub_22BBC01B4();
                *(v14 + 2224) = 0;
                *(v14 + 2232) = v1396;
                sub_22BD61FC0(v615);
                *(v14 + 2216) = v1397;
                sub_22BB6B120();
                *(v14 + 1280) = v3019;
                v1398 = sub_22BB33564();
                sub_22BB67984(v1398, v1399, v1400, v1401);
                if (!v3025)
                {

                  sub_22BB6B120();
                  *(v14 + 1280) = v619;
                  v1402 = sub_22BB33564();
                  sub_22BB67984(v1402, v1403, v1404, v1405);

                  sub_22BBC0960();
                  *(v14 + 1280) = v1383;
                  v1406 = sub_22BB33564();
                  sub_22BB67984(v1406, v1407, v1408, v1409);

                  sub_22BB6B120();
                  *(v14 + 1280) = v1376;
                  v1410 = sub_22BB33564();
                  sub_22BB67984(v1410, v1411, v1412, v1413);

                  sub_22BB6B120();
                  *(v14 + 1280) = v2915;
                  v1414 = sub_22BB33564();
                  sub_22BB67984(v1414, v1415, v1416, v1417);

                  sub_22BBC0960();
                  *(v14 + 1280) = v2885;
                  v1418 = sub_22BB33564();
                  sub_22BB67984(v1418, v1419, v1420, v1421);

                  sub_22BB6B120();
                  *(v14 + 1280) = v610;
                  v1422 = sub_22BB33564();
                  sub_22BB67984(v1422, v1423, v1424, v1425);

                  sub_22BB6B120();
                  *(v14 + 1280) = 8;
                  v1426 = sub_22BB33564();
                  sub_22BB67984(v1426, v1427, v1428, v1429);

                  sub_22BD6058C();
                  *(v14 + 1280) = v2883;
                  v1430 = sub_22BB33564();
                  sub_22BB67984(v1430, v1431, v1432, v1433);
                  v1434 = *(v14 + 3952);
                  sub_22BD62624();

                  sub_22BB39F58();
                  sub_22BD63B3C(&dword_22BB2C000, v2977, v1435, "[SessionCoordinator %{public}s] | [TX %{public}s] A client transaction contains a query at index %ld. Queries should be the first event in their transaction. This may cause incorrect behavior.");
                  swift_arrayDestroy();
                  sub_22BB3A3D8();
                  sub_22BB679C0();
                }

LABEL_367:

                goto LABEL_368;
              }

              v2896 = *(v14 + 3952);
              sub_22BD6256C();

              sub_22BD61DF4(*(v2915 + 8));
              v1539();
            }

            sub_22BD63894();
            v2978 = v1540;
            sub_22BB96E08();
            v1541 = *(v14 + 3312);
            v2999 = *(v14 + 3224);
            v2883 = *(v14 + 3160);
            sub_22BD61BF4();
            v2885 = v1542;
            sub_22BD61A40();
            v1544 = sub_22BD61410(v1543);
            (v2925)(v1544);
            sub_22BDB96A4();
            v1545 = sub_22BB2F324();
            v2919(v1545);
            v13 = v2964;
            sub_22BD446BC(v2915, v2964, v14);
            v1546 = sub_22BD63144();
            v1547(v1546);
            sub_22BB69550();
            sub_22BB34648();
            v1548 = sub_22BD63D44();
            MEMORY[0x2318A2C10](v1548);
            v1549 = sub_22BB3A84C();
            sub_22BD446BC(v1549, v1550, v1551);
            sub_22BD61C44(v2885);
            v1552(v423);
            sub_22BB97B18();
            sub_22BB34648();
            v615 = v2896;
            sub_22BBB797C();
            v1375 = oslog;
            v979 = v2954;
            v929 = v931;
            sub_22BDB9704();
            v1553 = v619->n128_u64[1];
            v1554 = sub_22BB35464();
            v1555(v1554);
            v2887(v931, v2978);
            v1556 = sub_22BB72084();
            sub_22BB336D0(v1556, v1557, v1558, v2999);
            sub_22BD6308C();
            v1559 = sub_22BB500C0();
            v423 = &qword_22BDC1660;
            sub_22BB385F4(v1559, v1560, &unk_27D8E69E0, &qword_22BDC1660);
            v978 = v3008;
            v931 = v2904;
          }

          sub_22BD618C4();
          v1561 = sub_22BB3627C();
          sub_22BB3CD70(v1561, v1562, &unk_27D8E69E0, &qword_22BDC1660);
          v1530 = swift_task_alloc();
          *(v1530 + 16) = v615;
          *(v1530 + 24) = v1375;
          *(v1530 + 32) = v979;
          *(v1530 + 40) = v929;
          v1563 = sub_22BB36C20();
          sub_22BB72184(v1563, v1564, v13);

          sub_22BD63F80();
          if (v931)
          {
            v1565 = *(v14 + 3648);

            v1566 = sub_22BB37074();
            sub_22BB3CD70(v1566, v1567, &unk_27D8E69E0, &qword_22BDC1660);
            sub_22BB93908();
            if (v165)
            {
              sub_22BB325EC(v1568, &unk_27D8E69E0, &qword_22BDC1660);
              v1569 = sub_22BB36B68();
              sub_22BBC0340(v1569, v1570);
              v1476 = 0;
              v18 = 0;
              v914 = 0xE000000000000000;
            }

            else
            {
              v1597 = *(v14 + 3296);
              v1598 = *(v14 + 3232);
              v1599 = *(v14 + 3224);
              v1600 = *(v1598 + 32);
              v1601 = sub_22BB97E2C();
              v1602(v1601);
              sub_22BDB8F24();
              v1476 = 1;
              v1603 = sub_22BB72084();
              sub_22BB336D0(v1603, v1604, v1605, v1530);
              v18 = sub_22BDB9A24();
              v914 = v1606;
              v1607 = *(v1598 + 8);
              v13 = (v1598 + 8);
              v1608 = sub_22BB2F3F0();
              v1609(v1608);
            }

            goto LABEL_208;
          }

          v1571 = *(v14 + 3656);
          v1572 = sub_22BB37074();
          sub_22BB3CD70(v1572, v1573, &unk_27D8E69E0, &qword_22BDC1660);
          sub_22BB2F164(v1571);
          if (v165)
          {
            __break(1u);
          }

          else
          {
            sub_22BD64180();
            sub_22BB3B574();
            sub_22BB93884();
            v1574 = v978[2].isa;
            v1575 = sub_22BB8B49C();
            sub_22BB938EC(v1575, v1576);
            sub_22BD61A5C();
            sub_22BB35FA0();
            v1578 = v1577();
            nullsub_1(v1578);
            swift_endAccess();
            v1579 = sub_22BB3AC54();
            sub_22BB3CD70(v1579, v1580, &unk_27D8E69E0, &qword_22BDC1660);
            v1581 = sub_22BB2F3FC();
            sub_22BB31814(v1581, v1582, v931);
            if (v165)
            {
LABEL_424:
              __break(1u);
              JUMPOUT(0x22BB883C8);
            }

            sub_22BD61450();
            v1583 = *(v14 + 3632);
            v1584 = *(v14 + 3312);
            v1585 = *(v14 + 3232);
            v1586 = *(v14 + 3224);
            sub_22BDB8F24();
            v13 = *(v1585 + 8);
            v1587 = sub_22BB2F3F0();
            (v13)(v1587);
            v1588 = sub_22BB72084();
            sub_22BB336D0(v1588, v1589, v1590, v1584);
            v1591 = sub_22BB500C0();
            sub_22BB6BEE0(v1591, v1592, &qword_27D8E3218, &qword_22BDBE390);
            sub_22BB3CD70(v3025, v1583, &unk_27D8E69E0, &qword_22BDC1660);
            v1593 = sub_22BB3A840();
            sub_22BB31814(v1593, v1594, v1586);
            if (!v165)
            {
              sub_22BD64174();

              v18 = sub_22BDB9A24();
              v914 = v1595;
              v1596 = sub_22BB53C48();
              (v13)(v1596);
              v1476 = 1;
              v978 = v3008;
LABEL_208:
              v276 = v3025;
              v1610 = *(v14 + 3664);
              v1532 = *(v14 + 2496);
              name[16] = v1476;
              LOBYTE(v2988[2].isa) = 1;
              sub_22BB325EC(v1610, &unk_27D8E69E0, &qword_22BDC1660);
              sub_22BD64CD8();
              sub_22BB705A8();
              goto LABEL_209;
            }
          }

          __break(1u);
          goto LABEL_424;
        }

        v658 = *(v14 + 4128);
        v2927 = *(v14 + 4056);
        v659 = *(v14 + 3800);
        sub_22BD63DC8();
        v2901 = *(v14 + 3680);
        sub_22BD61CF0();
        v2955 = v661;
        v2965 = v660;
        sub_22BD63FE8();
        v2922 = v662;
        v663 = *(sub_22BBE6DE0(&qword_27D8E6408, &qword_22BDCE240) + 48);
        sub_22BB31DC8();
        sub_22BB3A518(v658 + v664, v14 + 1712);
        v665 = *(v14 + 1728);
        v2994 = *(v14 + 1720);
        v666 = *v413;
        *(v594 + 16) = v597;
        v667 = *(v595 + 24);
        v668 = (v413 + *(v595 + 28));
        v669 = *v668;
        v670 = v668[1];
        v671 = sub_22BD64C88();
        sub_22BB3CD70(v671, v659, &qword_27D8E3218, &qword_22BDBE390);
        v2992 = v665;

        v2867 = v670;

        sub_22BD459A4(v597, v2901);
        v2975 = v3025;

        sub_22BDB63E4();
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB8AF40();
        *(v672 + 16) = v673;
        *(v672 + 24) = v2922;
        sub_22BB366B8();
        v674 = swift_allocObject();
        v3012 = v666;
        *(v674 + 16) = v666;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB89B58();
        *(v675 + 16) = v676;
        *(v675 + 24) = v674;
        sub_22BD639B0();
        sub_22BB3CD70(v677, v678, v679, v680);
        sub_22BD62264(v2935);
        sub_22BB6FB18(v681);
        v2897 = swift_allocObject();
        sub_22BD639B0();
        sub_22BB6BEE0(v682, v683, v684, v685);
        sub_22BB3CD70(v2901, v2955, &unk_27D8E69E0, &qword_22BDC1660);
        sub_22BBC0328(*(v2965 + 80));
        v2902 = swift_allocObject();
        sub_22BB6BEE0(v2955, v2902 + v674, &unk_27D8E69E0, &qword_22BDC1660);

        v686 = v2927;
        oslog = sub_22BDB77C4();
        v2888 = sub_22BDBB134();
        sub_22BD616A8();
        v687 = swift_allocObject();
        sub_22BD62E44(v687);
        sub_22BD616A8();
        v2936 = swift_allocObject();
        sub_22BD612D8(v2936);
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB3E0C4();
        *(v688 + 16) = v689;
        *(v688 + 24) = v594;
        sub_22BB322B0();
        v2931 = swift_allocObject();
        v2931[2] = sub_22BB89C80;
        v2931[3] = v2927;
        sub_22BD616A8();
        v2948 = swift_allocObject();
        *(v2948 + 16) = &qword_22BDBE390;
        sub_22BD616A8();
        v2966 = swift_allocObject();
        *(v2966 + 16) = v674;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BB756B0();
        *(v690 + 16) = v691;
        *(v690 + 24) = v595;
        sub_22BB322B0();
        v692 = swift_allocObject();
        v693 = sub_22BD62B6C(v692);
        *(v693 + 16) = v694;
        *(v693 + 24) = v2927;
        sub_22BD616A8();
        v695 = swift_allocObject();
        sub_22BD62E7C(v695);
        sub_22BD616A8();
        v2928 = swift_allocObject();
        *(v2928 + 16) = v674;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F7F4();
        *(v696 + 16) = v697;
        *(v696 + 24) = v3008;
        sub_22BB322B0();
        v698 = swift_allocObject();
        v699 = sub_22BB96B4C(v698);
        *(v699 + 16) = v700;
        *(v699 + 24) = v686;
        sub_22BD616A8();
        v3026 = swift_allocObject();
        sub_22BD639BC(v3026);
        sub_22BD616A8();
        v3020 = swift_allocObject();
        *(v3020 + 16) = v674;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F7AC();
        *(v701 + 16) = v702;
        *(v701 + 24) = v2897;
        sub_22BB322B0();
        v703 = swift_allocObject();
        v704 = sub_22BB3DEE8(v703);
        sub_22BD616A8();
        v705 = swift_allocObject();
        *(v705 + 16) = &qword_22BDBE390;
        sub_22BD616A8();
        v706 = swift_allocObject();
        *(v706 + 16) = v674;
        v707 = v706;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F794();
        *(v708 + 16) = v709;
        *(v708 + 24) = v2911;
        sub_22BB322B0();
        v2914 = swift_allocObject();
        *(v2914 + 16) = sub_22BB89C80;
        *(v2914 + 24) = v686;
        sub_22BD616A8();
        v2883 = swift_allocObject();
        *(v2883 + 16) = &qword_22BDBE390;
        sub_22BD616A8();
        v2879 = swift_allocObject();
        *(v2879 + 16) = v674;
        sub_22BB322B0();
        swift_allocObject();
        sub_22BD5F884();
        *(v710 + 16) = v711;
        *(v710 + 24) = v2902;
        sub_22BB322B0();
        v712 = swift_allocObject();
        sub_22BB97474(v712);
        v713 = swift_allocObject();
        sub_22BB73BD0(v713);
        sub_22BD6274C();
        sub_22BB3FE84(v2936);
        sub_22BB8E9FC(v2931);
        v713[11] = v2948;
        v713[12] = sub_22BB89C08;
        sub_22BD60694();
        v713[15] = v714;
        v713[16] = sub_22BB89C08;
        v713[17] = v695;
        v713[18] = sub_22BB89C08;
        sub_22BB97130(v2928);
        v713[21] = v2922;
        v713[22] = sub_22BB89C08;
        sub_22BB3FC00(v3026);
        v713[27] = v704;
        v713[28] = sub_22BB89C08;
        v713[29] = v705;
        v713[30] = sub_22BB89C08;
        sub_22BD62B00();
        v713[33] = v2914;
        v713[34] = sub_22BB89C08;
        v713[35] = v2883;
        v713[36] = sub_22BB89C08;
        v713[37] = v2879;
        v713[38] = sub_22BB89C7C;
        v713[39] = v712;
        v2903 = v715;

        v2885 = v695;

        v2896 = v704;

        if (os_log_type_enabled(oslog, v2888))
        {
          sub_22BB67968();
          v716 = sub_22BD64704();
          *(v14 + 2376) = 0;
          *(v14 + 2384) = v716;
          sub_22BD62548();
          *(v14 + 1520) = v2903;
          v717 = sub_22BBDB8F4();
          v276 = v2975;
          sub_22BB67984(v717, v718, v719, v720);
          if (!v2975)
          {

            sub_22BB96A04();
            *(v14 + 1520) = v2936;
            v721 = sub_22BBDB8F4();
            sub_22BB67984(v721, v722, v723, v724);

            sub_22BB70204();
            *(v14 + 1520) = v2931;
            v725 = sub_22BBDB8F4();
            sub_22BB67984(v725, v726, v727, v728);

            sub_22BB96A04();
            *(v14 + 1520) = v2948;
            v729 = sub_22BBDB8F4();
            sub_22BB67984(v729, v730, v731, v732);

            sub_22BB96A04();
            *(v14 + 1520) = v2966;
            v733 = sub_22BBDB8F4();
            sub_22BB67984(v733, v734, v735, v736);

            sub_22BB70204();
            *(v14 + 1520) = v2955;
            v737 = sub_22BBDB8F4();
            sub_22BB67984(v737, v738, v739, v740);

            sub_22BB96A04();
            *(v14 + 1520) = v695;
            v741 = sub_22BBDB8F4();
            sub_22BB67984(v741, v742, v743, v744);

            *(v14 + 1512) = sub_22BB89C08;
            *(v14 + 1520) = v2928;
            v745 = sub_22BBDB8F4();
            sub_22BB67984(v745, v746, v747, v748);

            sub_22BD62B18();
            *(v14 + 1520) = v2922;
            v749 = sub_22BBDB8F4();
            sub_22BB67984(v749, v750, v751, v752);

            *(v14 + 1512) = sub_22BB89C08;
            *(v14 + 1520) = v3026;
            v753 = sub_22BBDB8F4();
            sub_22BB67984(v753, v754, v755, v756);

            *(v14 + 1512) = sub_22BB89C08;
            *(v14 + 1520) = v3020;
            v757 = sub_22BBDB8F4();
            sub_22BB67984(v757, v758, v759, v760);

            sub_22BB70204();
            *(v14 + 1520) = v704;
            v761 = sub_22BBDB8F4();
            sub_22BB67984(v761, v762, v763, v764);

            *(v14 + 1512) = sub_22BB89C08;
            *(v14 + 1520) = v705;
            v765 = sub_22BBDB8F4();
            sub_22BB67984(v765, v766, v767, v768);

            sub_22BB96A04();
            *(v14 + 1520) = v707;
            v769 = sub_22BBDB8F4();
            sub_22BB67984(v769, v770, v771, v772);

            sub_22BB70204();
            *(v14 + 1520) = v2914;
            v773 = sub_22BBDB8F4();
            sub_22BB67984(v773, v774, v775, v776);

            sub_22BB96A04();
            *(v14 + 1520) = v2883;
            v777 = sub_22BBDB8F4();
            sub_22BB67984(v777, v778, v779, v780);

            sub_22BB96A04();
            *(v14 + 1520) = v2879;
            v781 = sub_22BBDB8F4();
            sub_22BB67984(v781, v782, v783, v784);

            sub_22BB70204();
            *(v14 + 1520) = v712;
            v785 = sub_22BBDB8F4();
            sub_22BB67984(v785, v786, v787, v788);
            v789 = *(v14 + 4056);
            sub_22BB96A7C();

            sub_22BD63EC8(&dword_22BB2C000, oslog, v2888, "[SessionCoordinator %{public}s] | [TX %{public}s] Internal transaction turned in with %{public}ld events. originatingSpanQueryEventId: %s, latestQueryEventId: %s, newQueryEventId: %s");
            sub_22BB6FD00();
            sub_22BB30458();
            sub_22BB679C0();
          }

          goto LABEL_343;
        }

        v886 = *(v14 + 4056);
        sub_22BB96A7C();

        v887 = *(v704 + 8);
        v888 = sub_22BB2F324();
        v889(v888);
        v890 = sub_22BD63944();
        sub_22BB3CD70(v890, v891, &qword_27D8E3218, &qword_22BDBE390);
        v892 = sub_22BB53C48();
        sub_22BD63AAC(v892, v893);
        sub_22BD6383C();
        v894 = sub_22BB3A190();
        if (!sub_22BB3AA28(v894, v895, v2914))
        {
          v896 = *(v14 + 3768);
          sub_22BDB8F24();
        }

        swift_endAccess();
        v897 = *(v14 + 3776);
        v276 = *(v14 + 3768);
        v898 = *(v14 + 3360);
        v899 = *(v14 + 3344);
        v900 = *(v14 + 3312);
        v901 = sub_22BB3A9D4();
        sub_22BB336D0(v901, v902, 1, v900);
        v903 = *(v899 + 48);
        v904 = sub_22BB31F54();
        sub_22BD63AAC(v904, v905);
        sub_22BD63AAC(v276, v898 + v903);
        v906 = sub_22BB3A190();
        v908 = sub_22BB3AA28(v906, v907, v900);
        v909 = *(v14 + 3312);
        if (v908 == 1)
        {
          v910 = *(v14 + 3776);
          sub_22BB325EC(*(v14 + 3768), &qword_27D8E3218, &qword_22BDBE390);
          v897 = &qword_22BDBE390;
          sub_22BD62A7C();
          sub_22BB325EC(v911, v912, v913);
          sub_22BBBFF9C(v898 + v903);
          v914 = name;
          if (v165)
          {
            v915 = *(v14 + 3360);
            sub_22BD62A7C();
            sub_22BB325EC(v916, v917, v918);
            v919 = 1;
LABEL_145:
            v1446 = v2988;
            goto LABEL_187;
          }
        }

        else
        {
          sub_22BD63AAC(*(v14 + 3360), *(v14 + 3760));
          sub_22BD618B8();
          sub_22BB3AA28(v980, v981, v982);
          sub_22BD64234();
          if (!v165)
          {
            v3029 = *(v14 + 3360);
            v1436 = v899;
            v1437 = *(v14 + 3336);
            v1438 = *(v14 + 3320);
            v1439 = *(v14 + 3312);
            v1440 = sub_22BBC0658(v1438);
            v1441(v1440);
            sub_22BB30DC4();
            sub_22BB3B194(&unk_28142DD40, v1442);
            v919 = sub_22BB97518();
            v1443 = *(v1438 + 8);
            v1444 = sub_22BB32E04();
            v1443(v1444);
            sub_22BB325EC(v276, &qword_27D8E3218, v897);
            sub_22BB325EC(v1436, &qword_27D8E3218, v897);
            v1445 = sub_22BD6220C();
            v1443(v1445);
            sub_22BB325EC(v3029, &qword_27D8E3218, v897);
            v1446 = v2988;
            v914 = name;
LABEL_187:
            *(v914 + 16) = v919 & 1;
            LOBYTE(v1446[2].isa) = v919 & 1;
            sub_22BDB8404();
            sub_22BB89B88();
            sub_22BBC03CC();
            sub_22BD61FB4();

            if (v909)
            {
              v1447 = *(v14 + 4504);
              v909 = *(v14 + 2496);
              sub_22BB707F8();
              v897 = 1;
              *(v914 + 16) = 1;
              sub_22BB707F8();
              LOBYTE(v1446[2].isa) = 1;
              sub_22BD641A4();
              if (v376)
              {
                __break(1u);
                goto LABEL_407;
              }

              *(*(v14 + 2496) + *(v14 + 4504)) = v1448;
            }

            v1449 = *(v14 + 4048);
            sub_22BD62768();
            sub_22BDB63E4();
            sub_22BB322B0();
            swift_allocObject();
            sub_22BBBEE48();
            *(v1450 + 16) = v1451;
            *(v1450 + 24) = v276;
            sub_22BB366B8();
            v1452 = swift_allocObject();
            sub_22BD63080(v1452);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BBC0500();
            *(v1453 + 16) = v1454;
            *(v1453 + 24) = v1452;

            v2930 = sub_22BDB77C4();
            v2937 = sub_22BDBB134();
            sub_22BD616A8();
            v1455 = swift_allocObject();
            sub_22BD6250C(v1455);
            sub_22BD616A8();
            v2967 = swift_allocObject();
            sub_22BD62C10(v2967);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB3E0C4();
            *(v1456 + 16) = v1457;
            *(v1456 + 24) = v897;
            sub_22BB322B0();
            v1458 = swift_allocObject();
            v2956 = sub_22BB3DEE8(v1458);
            sub_22BD616A8();
            v2949 = swift_allocObject();
            *(v2949 + 16) = v276;
            sub_22BD616A8();
            v1459 = swift_allocObject();
            *(v1459 + 16) = v1446;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BB756B0();
            *(v1460 + 16) = v1461;
            *(v1460 + 24) = v909;
            sub_22BB322B0();
            v1462 = swift_allocObject();
            v3014 = sub_22BB3DEE8(v1462);
            sub_22BD616A8();
            v2925 = swift_allocObject();
            *(v2925 + 16) = 0;
            sub_22BD616A8();
            v2919 = swift_allocObject();
            sub_22BBD19F8(v2919);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F7C4();
            *(v1463 + 16) = v1464;
            *(v1463 + 24) = v914;
            sub_22BB322B0();
            v1465 = swift_allocObject();
            sub_22BD5F670(v1465);
            sub_22BB322B0();
            v1466 = swift_allocObject();
            sub_22BB95B9C(v1466);
            sub_22BB322B0();
            v1467 = swift_allocObject();
            sub_22BD60574(v1467);
            sub_22BD616A8();
            v1468 = swift_allocObject();
            *(v1468 + 16) = 0;
            v1469 = v1468;
            sub_22BD616A8();
            v3019 = swift_allocObject();
            *(v3019 + 16) = v897;
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F7C4();
            *(v1470 + 16) = v1471;
            *(v1470 + 24) = v2988;
            sub_22BB322B0();
            v1472 = swift_allocObject();
            sub_22BD5F68C(v1472);
            sub_22BB322B0();
            v1473 = swift_allocObject();
            sub_22BB53C68(v1473);
            sub_22BB322B0();
            v1474 = swift_allocObject();
            sub_22BB97728(v1474);
            v1475 = swift_allocObject();
            sub_22BB3E214(v1475);
            sub_22BD62790();
            v1475[7] = v2967;
            v1475[8] = sub_22BB89C7C;
            v1475[9] = v2956;
            v1475[10] = sub_22BB89C08;
            v1476 = v2949;
            sub_22BD6286C();
            v1475[13] = v1459;
            v1475[14] = sub_22BB89C7C;
            v1475[15] = v3014;
            v1475[16] = sub_22BB89C08;
            v1475[17] = v2925;
            v1475[18] = sub_22BB89C08;
            v423 = v2919;
            v1475[19] = v2919;
            v1475[20] = sub_22BD5F268;
            v1475[21] = v1467;
            v1475[22] = sub_22BB89C08;
            sub_22BD6280C();
            v1475[25] = v3019;
            v1475[26] = sub_22BD5F650;
            v1475[27] = v1474;
            v2989 = v1477;

            sub_22BD6474C();

            if (os_log_type_enabled(v2930, v2937))
            {
              sub_22BB67968();
              v1478 = sub_22BD619F0();
              *(v14 + 2328) = 0;
              *(v14 + 2336) = v1478;
              sub_22BD624D0(v1474);
              *(v14 + 1424) = v2989;
              v1479 = sub_22BB95784();
              sub_22BB67984(v1479, v1480, v1481, v1482);
              if (!v2975)
              {

                sub_22BB69C84();
                *(v14 + 1424) = v2967;
                v1483 = sub_22BB95784();
                sub_22BB67984(v1483, v1484, v1485, v1486);

                sub_22BD6289C();
                *(v14 + 1424) = v2956;
                v1487 = sub_22BB95784();
                sub_22BB67984(v1487, v1488, v1489, v1490);

                sub_22BB69C84();
                *(v14 + 1424) = v2949;
                v1491 = sub_22BB95784();
                sub_22BB67984(v1491, v1492, v1493, v1494);

                *(v14 + 1416) = sub_22BB89C08;
                *(v14 + 1424) = v1459;
                v1495 = sub_22BB95784();
                sub_22BB67984(v1495, v1496, v1497, v1498);

                *(v14 + 1416) = sub_22BB89C7C;
                *(v14 + 1424) = v3014;
                v1499 = sub_22BB95784();
                sub_22BB67984(v1499, v1500, v1501, v1502);

                *(v14 + 1416) = sub_22BB89C08;
                *(v14 + 1424) = v2967;
                v1503 = sub_22BB95784();
                sub_22BB67984(v1503, v1504, v1505, v1506);

                *(v14 + 1416) = sub_22BB89C08;
                *(v14 + 1424) = v2919;
                v1507 = sub_22BB95784();
                sub_22BB67984(v1507, v1508, v1509, v1510);

                sub_22BD62824();
                *(v14 + 1424) = v1467;
                v1511 = sub_22BB95784();
                sub_22BB67984(v1511, v1512, v1513, v1514);

                *(v14 + 1416) = sub_22BB89C08;
                *(v14 + 1424) = v1469;
                v1515 = sub_22BB95784();
                sub_22BB67984(v1515, v1516, v1517, v1518);

                sub_22BB69C84();
                *(v14 + 1424) = v3019;
                v1519 = sub_22BB95784();
                sub_22BB67984(v1519, v1520, v1521, v1522);

                sub_22BB8EA6C();
                *(v14 + 1424) = v1474;
                v1523 = sub_22BB95784();
                sub_22BB67984(v1523, v1524, v1525, v1526);
                sub_22BD630C0();
                v1527 = *(v14 + 3680);
                sub_22BD65218();
                _os_log_impl(&dword_22BB2C000, v2930, v2937, "[SessionCoordinator %{public}s] | [TX %{public}s] workCausationAllowed: %{BOOL}d, allowedToSendToClient: %{BOOL}d", v1474, 0x22u);
                swift_arrayDestroy();
                sub_22BB2F194();
                sub_22BB679C0();
              }

              goto LABEL_368;
            }

            v1528 = *(v14 + 4048);
            v1529 = *(v14 + 3840);
            v1530 = *(v14 + 3832);
            v2938 = *(v14 + 3800);
            name = *(v14 + 3680);
            v13 = *(v14 + 3416);

            sub_22BD61DF4(*(v1529 + 8));
            v1531();
            sub_22BB325EC(name, &unk_27D8E69E0, &qword_22BDC1660);
            sub_22BB325EC(v2938, &qword_27D8E3218, &qword_22BDBE390);
            sub_22BB33E70();
            sub_22BB34648();
            v276 = v2975;
            sub_22BD62CC4();
            v978 = v3008;
            v1532 = v3012;
            v18 = v2869;
            v914 = v2867;
LABEL_209:
            *(v14 + 4696) = v2992;
            *(v14 + 4688) = v2994;
            *(v14 + 4680) = v914;
            sub_22BB75860();
            if (v1532)
            {
              v2369 = *(v14 + 4480);
              sub_22BB707F8();
              v2370 = v978[2].isa;

              v2371 = swift_task_alloc();
              v2372 = sub_22BB702D8(v2371);
              *v2372 = v2373;
              sub_22BB34F38(v2372);
              sub_22BB33430();

              sub_22BB95A50();
              return;
            }

            v1611 = *(v14 + 4632);
            sub_22BB31B88();
            swift_beginAccess();
            v1612 = sub_22BD64644();
            sub_22BD45DE8(v1612);
            sub_22BD61FB4();

            if (v1530)
            {
              v3012 = v276;
              v1613 = *(v14 + 4664);
              v3030 = *(v14 + 4528);
              sub_22BD63BF4();
              sub_22BB322B0();
              swift_allocObject();
              sub_22BBC0284();
              *(v1614 + 16) = v1615;
              *(v1614 + 24) = v914;
              sub_22BB366B8();
              v1616 = swift_allocObject();
              sub_22BD64DEC(v1616);
              sub_22BB322B0();
              v18 = swift_allocObject();
              sub_22BD5F6EC(v18);

              v3008 = sub_22BDB77C4();
              sub_22BDBB0F4();
              sub_22BD616A8();
              v1617 = swift_allocObject();
              sub_22BD634DC(v1617);
              sub_22BD616A8();
              v1618 = swift_allocObject();
              sub_22BD61688(v1618);
              sub_22BB322B0();
              v914 = swift_allocObject();
              sub_22BBC0614(v914);
              sub_22BB322B0();
              v1619 = swift_allocObject();
              sub_22BD6052C(v1619);
              sub_22BD616A8();
              v1476 = swift_allocObject();
              *(v1476 + 16) = v1611;
              sub_22BD616A8();
              v1620 = swift_allocObject();
              *(v1620 + 16) = v1530;
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB756B0();
              *(v1621 + 16) = v1622;
              *(v1621 + 24) = v18;
              sub_22BB322B0();
              v1623 = swift_allocObject();
              sub_22BB51370(v1623);
              v1624 = sub_22BB970B4();
              sub_22BB31444(v1624);
              v1625[4] = v1626;
              v1625[5] = v423;
              v1625[6] = sub_22BB89C08;
              v1625[7] = v13;
              v1625[8] = sub_22BB89C7C;
              v1625[9] = v1619;
              v1625[10] = sub_22BB89C08;
              v1625[11] = v1476;
              v1625[12] = sub_22BB89C08;
              v1625[13] = v1620;
              v1625[14] = sub_22BB89C7C;
              v1625[15] = v914;

              sub_22BB93DBC();
              if (os_log_type_enabled(v3008, v1627))
              {
                sub_22BB67968();
                v1628 = sub_22BBBFF34();
                sub_22BBB6144(v1628);
                sub_22BBBEB6C();
                *(v14 + 2128) = v1629;
                *(v14 + 1176) = sub_22BB89C08;
                *(v14 + 1184) = v423;
                v1630 = sub_22BB32E7C();
                sub_22BB67984(v1630, v1631, v1632, v1633);
                if (!v3012)
                {

                  sub_22BD604FC();
                  *(v14 + 1184) = v13;
                  v1634 = sub_22BB32E7C();
                  sub_22BB67984(v1634, v1635, v1636, v1637);

                  sub_22BD60514();
                  *(v14 + 1184) = v1619;
                  v1638 = sub_22BB32E7C();
                  sub_22BB67984(v1638, v1639, v1640, v1641);

                  sub_22BD604FC();
                  *(v14 + 1184) = v1476;
                  v1642 = sub_22BB32E7C();
                  sub_22BB67984(v1642, v1643, v1644, v1645);

                  sub_22BD604FC();
                  *(v14 + 1184) = v1620;
                  v1646 = sub_22BB32E7C();
                  sub_22BB67984(v1646, v1647, v1648, v1649);

                  *(v14 + 1176) = sub_22BB89C7C;
                  *(v14 + 1184) = v914;
                  v1650 = sub_22BB32E7C();
                  sub_22BB67984(v1650, v1651, v1652, v1653);
                  v1654 = *(v14 + 4032);
                  sub_22BD62094();

                  sub_22BB96D8C();
                  sub_22BD636C8(&dword_22BB2C000, v3008, v1655, "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction is advisory.");
                  sub_22BD61EE4();
                  sub_22BB89BBC();
                  sub_22BB679C0();
                }

                goto LABEL_368;
              }

              v1656 = *(v14 + 4032);
              sub_22BD62624();

              v1657 = sub_22BB3A9D4();
              (v3019)(v1657);
              v276 = v3012;
              sub_22BB897B0();
              sub_22BB707F8();
              sub_22BD62070();
              sub_22BD64288();
            }

            v1658 = sub_22BBC3B90();
            sub_22BD45220(v1658);
            sub_22BD61FB4();

            v3025 = v276;
            if (v1530)
            {
              sub_22BD61714();
              v1659 = *(v14 + 4024);
              sub_22BD62768();
              sub_22BDB63E4();
              sub_22BB322B0();
              v1660 = swift_allocObject();
              sub_22BB3E014(v1660);
              sub_22BB366B8();
              v1661 = swift_allocObject();
              sub_22BD63DE4(v1661);
              sub_22BB322B0();
              v1662 = swift_allocObject();
              sub_22BB89B20(v1662);
              v3014 = sub_22BDB77C4();
              sub_22BDBB0F4();
              sub_22BD616A8();
              v1663 = swift_allocObject();
              sub_22BB3CE80(v1663);
              sub_22BD616A8();
              v1664 = swift_allocObject();
              sub_22BD624C4(v1664);
              sub_22BB322B0();
              v1665 = swift_allocObject();
              sub_22BBBE860(v1665);
              sub_22BB322B0();
              v1666 = swift_allocObject();
              sub_22BB3AE40(v1666);
              sub_22BD616A8();
              v1667 = swift_allocObject();
              sub_22BD636BC(v1667);
              sub_22BD616A8();
              v1668 = swift_allocObject();
              sub_22BBD1A04(v1668);
              sub_22BB322B0();
              v1669 = swift_allocObject();
              sub_22BBBE888(v1669);
              sub_22BB322B0();
              v1670 = swift_allocObject();
              v1671 = sub_22BD60980(v1670);
              sub_22BB34620(v1671);
              v1672[4] = v1673;
              v1672[5] = v914;
              v1672[6] = sub_22BB89C08;
              v1672[7] = v1664;
              v1672[8] = sub_22BB89C7C;
              v1672[9] = v1659;
              v1672[10] = sub_22BB89C08;
              v1672[11] = v13;
              v1672[12] = sub_22BB89C08;
              v1672[13] = v423;
              v1672[14] = sub_22BB89C7C;
              v1672[15] = v18;
              sub_22BD6443C();

              v1476 = sub_22BD60DFC();
              if (os_log_type_enabled(v1476, v1674))
              {
                sub_22BB67968();
                v1675 = sub_22BBBFF34();
                sub_22BD5FA78(v1675);
                *(v14 + 1104) = v276;
                v1676 = sub_22BB71F54();
                sub_22BB67984(v1676, v1677, v1678, v1679);
                if (!v276)
                {

                  *(v14 + 1096) = sub_22BB89C08;
                  *(v14 + 1104) = v1664;
                  v1680 = sub_22BB71F54();
                  sub_22BB67984(v1680, v1681, v1682, v1683);

                  *(v14 + 1096) = sub_22BB89C7C;
                  *(v14 + 1104) = v1659;
                  v1684 = sub_22BB71F54();
                  sub_22BB67984(v1684, v1685, v1686, v1687);

                  sub_22BBD2250();
                  *(v14 + 1104) = v13;
                  v1688 = sub_22BB71F54();
                  sub_22BB67984(v1688, v1689, v1690, v1691);

                  sub_22BBD2250();
                  *(v14 + 1104) = v423;
                  v1692 = sub_22BB71F54();
                  sub_22BB67984(v1692, v1693, v1694, v1695);

                  *(v14 + 1096) = sub_22BB89C7C;
                  *(v14 + 1104) = v18;
                  v1696 = sub_22BB71F54();
                  sub_22BB67984(v1696, v1697, v1698, v1699);
                  sub_22BD643FC();
                  sub_22BD61B3C();
                  sub_22BD62590();
                  sub_22BD636C8(v1700, v1701, v1702, "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction is work-allowing advisory.");
                  sub_22BBBE7DC();
                  sub_22BB32238();
                  sub_22BB679C0();
                }

                goto LABEL_327;
              }

              sub_22BD6204C();

              v1703 = sub_22BD61130();
              v1704(v1703);
              sub_22BD64BF8();
              v3025 = v1705;
              sub_22BB897B0();
              sub_22BB707F8();
              sub_22BD618EC();
              *(v1659 + 16) = v18;
            }

            else
            {
              v2930 = v276;
            }

            sub_22BB966A8();
            v1706 = sub_22BB94E5C();
            v1707(v1706);
            sub_22BDB96A4();
            v1708 = sub_22BB2F324();
            (v13)(v1708);
            v1709 = sub_22BB95A18();
            v50 = v3024;
            v1710 = (v14)(v1709);
            v1711 = sub_22BB2F0E0();
            (v423)(v1711);
            v1712 = *(v3024 + 2496);
            if ((v1710 & 1) == 0)
            {
              sub_22BD62FC4();
              sub_22BDB63E4();
              sub_22BB322B0();
              v1713 = swift_allocObject();
              sub_22BB3CF50(v1713);
              sub_22BB366B8();
              v1714 = swift_allocObject();
              sub_22BD63DE4(v1714);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD60754();
              *(v1715 + 16) = v1716;
              *(v1715 + 24) = v914;

              v3014 = sub_22BDB77C4();
              LODWORD(v3012) = sub_22BDBB134();
              sub_22BD616A8();
              v1717 = swift_allocObject();
              v44 = v3024;
              sub_22BB3CE80(v1717);
              sub_22BD616A8();
              v1718 = swift_allocObject();
              sub_22BD61688(v1718);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB9710C();
              *(v1719 + 16) = v1720;
              *(v1719 + 24) = v1713;
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD5F734();
              *(v1721 + 16) = v1722;
              *(v1721 + 24) = v276;
              sub_22BD616A8();
              v1723 = swift_allocObject();
              sub_22BD64C7C(v1723);
              sub_22BD616A8();
              v1724 = swift_allocObject();
              sub_22BBD1A04(v1724);
              sub_22BB322B0();
              v1725 = swift_allocObject();
              sub_22BBBE888(v1725);
              sub_22BB322B0();
              v1726 = swift_allocObject();
              v42 = sub_22BD60980(v1726);
              sub_22BB34620(v42);
              v1727[4] = v1728;
              v1727[5] = v914;
              v1727[6] = sub_22BB89C08;
              v1727[7] = v13;
              v1727[8] = sub_22BB89C7C;
              v1727[9] = v14;
              v1727[10] = sub_22BB89C08;
              v1727[11] = v3024;
              v1727[12] = sub_22BB89C08;
              v1727[13] = v423;
              v1727[14] = sub_22BB89C7C;
              v1727[15] = v18;
              sub_22BD6443C();

              v19 = sub_22BD60DFC();
              if (!os_log_type_enabled(v19, v1729))
              {
                sub_22BB3FB4C();
                v23 = *(v3024 + 3832);

                v1743 = sub_22BD61130();
                v1744(v1743);
                v14 = v3024;
                sub_22BD600DC();

                v1745 = sub_22BB97B18();
                sub_22BB325EC(v1745, &qword_27D8E3218, &qword_22BDBE390);
                sub_22BD5FA08();

                v1746 = sub_22BD00AA4();
                sub_22BB74044(v1746, v1747, v3024);

                sub_22BB35CBC();
                sub_22BB34648();
                v2987 = *(v3024 + 4924);
                v2993 = *(v3024 + 4920);
                v2990 = *(v3024 + 4916);
                v50 = v3025;
                continue;
              }

              sub_22BD64EB0();
              v1730 = sub_22BD62464();
              sub_22BB975AC(v1730);
              if (!v276)
              {

                *(v3024 + 1352) = sub_22BB89C08;
                *(v3024 + 1360) = v13;
                v1731 = sub_22BD6020C();
                sub_22BB67984(v1731, v1732, v1733, v1734);
                sub_22BD653E0();
                *(v3024 + 1352) = sub_22BB89C7C;
                *(v3024 + 1360) = v42;
                v1735 = sub_22BD6020C();
                sub_22BB67984(v1735, v1736, v1737, v1738);

                sub_22BD60444();

                sub_22BD60810();

                sub_22BB6FD50();
                v1739 = *(v14 + 4008);
                sub_22BD624B8();

                sub_22BD61B3C();
                sub_22BD62590();
                sub_22BD63F58(v1740, v1741, v1742, "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction postcondition FAILED. It will be skipped.");
                sub_22BD62500();
                swift_arrayDestroy();
                sub_22BB30458();
                sub_22BB679C0();
              }

              goto LABEL_362;
            }

            sub_22BD63228();
            sub_22BB322B0();
            v2375 = swift_allocObject();
            sub_22BB922D8(v2375);
            sub_22BB366B8();
            v2376 = swift_allocObject();
            sub_22BBBE07C(v2376);
            sub_22BB322B0();
            v2377 = swift_allocObject();
            sub_22BD60058(v2377);
            sub_22BDB77C4();
            LODWORD(v3014) = sub_22BDBB134();
            sub_22BD616A8();
            v2378 = swift_allocObject();
            sub_22BD62F80(v2378);
            sub_22BD616A8();
            v268 = swift_allocObject();
            sub_22BD61F00(v268);
            sub_22BB322B0();
            v2379 = swift_allocObject();
            sub_22BBC0614(v2379);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F74C();
            *(v2380 + 16) = v2381;
            *(v2380 + 24) = v2379;
            sub_22BD616A8();
            v2382 = swift_allocObject();
            sub_22BD64C40(v2382);
            sub_22BD616A8();
            v2383 = swift_allocObject();
            sub_22BB89CA8(v2383);
            sub_22BB322B0();
            v2384 = swift_allocObject();
            sub_22BBBD2AC(v2384);
            sub_22BB322B0();
            swift_allocObject();
            sub_22BD5F764();
            v2386 = sub_22BD620AC(v2385);
            sub_22BB348E0(v2386);
            v2387[4] = v2388;
            v2387[5] = v14;
            v2387[6] = sub_22BB89C08;
            v2387[7] = v268;
            v2387[8] = sub_22BB89C7C;
            v2387[9] = v3024;
            v2387[10] = sub_22BB89C08;
            v2387[11] = v1476;
            v2387[12] = sub_22BB89C08;
            v2387[13] = v18;
            v2387[14] = sub_22BB89C7C;
            v2387[15] = v914;

            sub_22BD62518();
            if (os_log_type_enabled(v2384, v2389))
            {
              sub_22BB67968();
              v2390 = sub_22BBC01B4();
              v423[255] = 0;
              v423[256] = v2390;
              sub_22BD60D8C();
              v423[254] = v2391;
              v423[131] = sub_22BB89C08;
              v423[132] = v14;
              v2392 = sub_22BD5FCD8();
              v276 = v3025;
              sub_22BB67984(v2392, v2393, v2394, v2395);
              if (v3025)
              {
LABEL_327:

                goto LABEL_367;
              }

              v423[131] = sub_22BB89C08;
              v423[132] = v268;
              v2467 = sub_22BD5FCD8();
              sub_22BB67984(v2467, v2468, v2469, v2470);

              v423[131] = sub_22BB89C7C;
              v423[132] = v3024;
              v2540 = sub_22BD5FCD8();
              sub_22BB67984(v2540, v2541, v2542, v2543);

              sub_22BD61044();
              v423[132] = v1476;
              v2615 = sub_22BD5FCD8();
              sub_22BB67984(v2615, v2616, v2617, v2618);

              sub_22BB3B510();
              *(v2660 + 1048) = v2661;
              *(v2660 + 1056) = v18;
              sub_22BB73B1C(v2660);
LABEL_407:

              sub_22BB70564();
              *(v2697 + 1048) = v2698;
              *(v2697 + 1056) = v914;
              sub_22BB73B1C(v2697);
              if (!v276)
              {
                sub_22BD63154();
                sub_22BB76660(&dword_22BB2C000, v2699, v2700, "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction postcondition passed.");
                sub_22BD619D4();
                sub_22BD6193C();
                sub_22BB679C0();
              }

              goto LABEL_414;
            }

            sub_22BD631E4();

            v2396 = sub_22BD623D0();
            v2397(v2396);
            sub_22BD623C0();
            sub_22BB31B88();
            swift_beginAccess();
            sub_22BD64A14();
            sub_22BB31B88();
            swift_beginAccess();
            sub_22BD61A94();
            v14 = v423;
            if (v165)
            {
              if (v2398)
              {
                sub_22BD65368();
                sub_22BB322B0();
                v2399 = swift_allocObject();
                sub_22BB351E8(v2399);
                sub_22BB366B8();
                v2400 = swift_allocObject();
                sub_22BD6227C(v2400);
                sub_22BB322B0();
                v2401 = swift_allocObject();
                sub_22BB52D3C(v2401);
                v3013 = sub_22BDB77C4();
                sub_22BDBB134();
                sub_22BD616A8();
                v2402 = swift_allocObject();
                sub_22BD60C88(v2402);
                sub_22BD616A8();
                v2403 = swift_allocObject();
                sub_22BD60EF4(v2403);
                sub_22BB322B0();
                v2404 = swift_allocObject();
                sub_22BB70160(v2404);
                sub_22BB322B0();
                swift_allocObject();
                sub_22BB97CD8();
                *(v2405 + 16) = v2406;
                *(v2405 + 24) = v2404;
                sub_22BD616A8();
                v2407 = swift_allocObject();
                sub_22BBBEC2C(v2407);
                sub_22BD616A8();
                v2408 = swift_allocObject();
                sub_22BBB7560(v2408);
                sub_22BB322B0();
                v2409 = swift_allocObject();
                sub_22BD602C4(v2409);
                sub_22BB322B0();
                swift_allocObject();
                sub_22BD5F89C();
                v2411 = sub_22BD617F4(v2410);
                sub_22BB3602C(v2411);
                v2412[6] = sub_22BB89C08;
                v2412[7] = v3024;
                v2412[8] = sub_22BB89C7C;
                v2412[9] = v268;
                v2412[10] = sub_22BB89C08;
                v2412[11] = v18;
                v2412[12] = sub_22BB89C08;
                v2412[13] = v914;
                v2412[14] = sub_22BB89C7C;
                v2412[15] = v423;

                sub_22BBC0AE4();
                sub_22BBC23B0();

                if (sub_22BD61814())
                {
                  sub_22BB67968();
                  v2413 = sub_22BBC01B4();
                  v423[251] = 0;
                  v423[252] = v2413;
                  sub_22BD60D8C();
                  v423[250] = v2414;
                  v423[129] = sub_22BB89C08;
                  v423[130] = v1476;
                  v2415 = sub_22BD60178();
                  v276 = v3025;
                  sub_22BB67984(v2415, v2416, v2417, v2418);
                  if (!v3025)
                  {

                    v423[129] = sub_22BB89C08;
                    v423[130] = v3024;
                    v2419 = sub_22BD60178();
                    sub_22BB67984(v2419, v2420, v2421, v2422);

                    sub_22BB70564();
                    *(v2423 + 1032) = v2424;
                    *(v2423 + 1040) = v268;
                    sub_22BD611DC(v2423);

                    sub_22BB3B510();
                    *(v2425 + 1032) = v2426;
                    *(v2425 + 1040) = v3014;
                    sub_22BD611DC(v2425);

                    sub_22BB3B510();
                    *(v2427 + 1032) = v2428;
                    *(v2427 + 1040) = v3008;
                    sub_22BD611DC(v2427);

                    sub_22BB70564();
                    *(v2429 + 1032) = v2430;
                    *(v2429 + 1040) = v423;
                    sub_22BD611DC(v2429);
                    v2431 = *(v3024 + 4000);
                    sub_22BD61A18();

                    v2434 = "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction allowed to cause work and be sent to client.";
                    goto LABEL_418;
                  }

                  goto LABEL_362;
                }

                v2544 = v423[500];
                goto LABEL_373;
              }

              sub_22BD65308();
              sub_22BB322B0();
              v2471 = swift_allocObject();
              sub_22BB351E8(v2471);
              sub_22BB366B8();
              v2472 = swift_allocObject();
              sub_22BD6227C(v2472);
              sub_22BB322B0();
              v2473 = swift_allocObject();
              sub_22BB52D3C(v2473);
              v3013 = sub_22BDB77C4();
              sub_22BDBB134();
              sub_22BD616A8();
              v2474 = swift_allocObject();
              sub_22BD60C88(v2474);
              sub_22BD616A8();
              v2475 = swift_allocObject();
              sub_22BD60EF4(v2475);
              sub_22BB322B0();
              v2404 = swift_allocObject();
              sub_22BB70160(v2404);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB97CD8();
              *(v2476 + 16) = v2477;
              *(v2476 + 24) = v2404;
              sub_22BD616A8();
              v2478 = swift_allocObject();
              sub_22BBBEC2C(v2478);
              sub_22BD616A8();
              v2479 = swift_allocObject();
              sub_22BBB7560(v2479);
              sub_22BB322B0();
              v2480 = swift_allocObject();
              sub_22BD602C4(v2480);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD5F89C();
              v2482 = sub_22BD617F4(v2481);
              sub_22BB3602C(v2482);
              v2483[6] = sub_22BB89C08;
              v2483[7] = v3024;
              v2483[8] = sub_22BB89C7C;
              v2483[9] = v268;
              v2483[10] = sub_22BB89C08;
              v2483[11] = v18;
              v2483[12] = sub_22BB89C08;
              v2483[13] = v914;
              v2483[14] = sub_22BB89C7C;
              v2483[15] = v423;

              sub_22BBC0AE4();
              sub_22BBC23B0();

              if (!sub_22BD61814())
              {
                v2546 = v423[499];
                goto LABEL_373;
              }

              sub_22BB67968();
              v2484 = sub_22BBC01B4();
              v423[247] = 0;
              v423[248] = v2484;
              sub_22BD60D8C();
              v423[246] = v2485;
              v423[195] = sub_22BB89C08;
              v423[196] = v1476;
              v2486 = sub_22BD60150();
              v276 = v3025;
              sub_22BB67984(v2486, v2487, v2488, v2489);
              if (!v3025)
              {

                v423[195] = sub_22BB89C08;
                v423[196] = v3024;
                v2490 = sub_22BD60150();
                sub_22BB67984(v2490, v2491, v2492, v2493);

                sub_22BB70564();
                *(v2494 + 1560) = v2495;
                *(v2494 + 1568) = v268;
                sub_22BB97758(v2494);

                sub_22BB3B510();
                *(v2496 + 1560) = v2497;
                *(v2496 + 1568) = v3014;
                sub_22BB97758(v2496);

                sub_22BB3B510();
                *(v2498 + 1560) = v2499;
                *(v2498 + 1568) = v3008;
                sub_22BB97758(v2498);

                sub_22BB70564();
                *(v2500 + 1560) = v2501;
                *(v2500 + 1568) = v423;
                sub_22BB97758(v2500);
                v2502 = *(v3024 + 3992);
                sub_22BD61A18();

                v2434 = "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction allowed to cause work, but will not be sent to client.";
                goto LABEL_418;
              }
            }

            else
            {
              if (v2398)
              {
                sub_22BD65320();
                sub_22BB322B0();
                v2435 = swift_allocObject();
                sub_22BB351E8(v2435);
                sub_22BB366B8();
                v2436 = swift_allocObject();
                sub_22BD6227C(v2436);
                sub_22BB322B0();
                v2437 = swift_allocObject();
                sub_22BB52D3C(v2437);
                v3013 = sub_22BDB77C4();
                sub_22BDBB134();
                sub_22BD616A8();
                v2438 = swift_allocObject();
                sub_22BD60C88(v2438);
                sub_22BD616A8();
                v2439 = swift_allocObject();
                sub_22BD60EF4(v2439);
                sub_22BB322B0();
                v2404 = swift_allocObject();
                sub_22BB70160(v2404);
                sub_22BB322B0();
                swift_allocObject();
                sub_22BB97CD8();
                *(v2440 + 16) = v2441;
                *(v2440 + 24) = v2404;
                sub_22BD616A8();
                v2442 = swift_allocObject();
                sub_22BBBEC2C(v2442);
                sub_22BD616A8();
                v2443 = swift_allocObject();
                sub_22BBB7560(v2443);
                sub_22BB322B0();
                v2444 = swift_allocObject();
                sub_22BD602C4(v2444);
                sub_22BB322B0();
                swift_allocObject();
                sub_22BD5F89C();
                v2446 = sub_22BD617F4(v2445);
                sub_22BB3602C(v2446);
                v2447[6] = sub_22BB89C08;
                v2447[7] = v3024;
                v2447[8] = sub_22BB89C7C;
                v2447[9] = v268;
                v2447[10] = sub_22BB89C08;
                v2447[11] = v18;
                v2447[12] = sub_22BB89C08;
                v2447[13] = v914;
                v2447[14] = sub_22BB89C7C;
                v2447[15] = v423;

                sub_22BBC0AE4();
                sub_22BBC23B0();

                if (sub_22BD61814())
                {
                  sub_22BB67968();
                  v2448 = sub_22BBC01B4();
                  v423[243] = 0;
                  v423[244] = v2448;
                  sub_22BD60D8C();
                  v423[242] = v2449;
                  v423[123] = sub_22BB89C08;
                  v423[124] = v1476;
                  v2450 = sub_22BD60164();
                  v276 = v3025;
                  sub_22BB67984(v2450, v2451, v2452, v2453);
                  if (!v3025)
                  {

                    v423[123] = sub_22BB89C08;
                    v423[124] = v3024;
                    v2454 = sub_22BD60164();
                    sub_22BB67984(v2454, v2455, v2456, v2457);

                    sub_22BB70564();
                    *(v2458 + 984) = v2459;
                    *(v2458 + 992) = v268;
                    sub_22BD611BC(v2458);

                    sub_22BB3B510();
                    *(v2460 + 984) = v2461;
                    *(v2460 + 992) = v3014;
                    sub_22BD611BC(v2460);

                    sub_22BB3B510();
                    *(v2462 + 984) = v2463;
                    *(v2462 + 992) = v3008;
                    sub_22BD611BC(v2462);

                    sub_22BB70564();
                    *(v2464 + 984) = v2465;
                    *(v2464 + 992) = v423;
                    sub_22BD611BC(v2464);
                    v2466 = *(v3024 + 3976);
                    sub_22BD61A18();

                    v2434 = "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction not allowed to cause work, but will be sent to client.";
                    goto LABEL_418;
                  }

                  goto LABEL_362;
                }

                v2545 = v423[497];
LABEL_373:
                v2548 = v423[480];
                v2549 = v423[479];

                v2550 = sub_22BB37074();
                (v3019)(v2550);
                v2551 = sub_22BB756F4(v3025);
                if (v2551 != v2552)
                {
                  sub_22BB97DE8();
                  if (v2553 != v376)
                  {
                    __break(1u);
                  }

                  else if (v2404 < v2548)
                  {
                    sub_22BB73FE8();
                    do
                    {
                      sub_22BD60880();
                      v2554 = sub_22BD60D38();
                      nullsub_1(v2554);

                      sub_22BB93884();
                      sub_22BB52814();
                      sub_22BBBEC20();
                      v2555 = sub_22BDB9AB4();
                      nullsub_1(v2555);
                      v2556 = sub_22BB97B18();
                      sub_22BB3CD70(v2556, v268, &qword_27D8E3218, &qword_22BDBE390);
                      sub_22BB93884();
                      sub_22BB52814();
                      v2557 = sub_22BDB9974();
                      nullsub_1(v2557);
                      sub_22BD65278();
                      sub_22BB93884();
                      sub_22BB52814();
                      v2558 = sub_22BD65230();
                      nullsub_1(v2558);
                      sub_22BD61C1C();
                    }

                    while (!v165);
                    swift_endAccess();
                    goto LABEL_380;
                  }

                  __break(1u);
                  goto LABEL_421;
                }

LABEL_380:
                v2559 = v423[579];
                sub_22BBE6DE0(&qword_27D8E6570, &qword_22BDCFBF0);
                sub_22BB97200();
                v2560 = sub_22BDBAB14();
                sub_22BD631C0(v2560);

                v2561 = swift_task_alloc();
                v2562 = sub_22BD64B78(v2561);
                *v2562 = v2563;
                sub_22BB34818(v2562);
                sub_22BD61554();
                sub_22BB33430();

                sub_22BD59BE8(v2564);
                return;
              }

              sub_22BD652F0();
              sub_22BB322B0();
              v2503 = swift_allocObject();
              sub_22BB351E8(v2503);
              sub_22BB366B8();
              v2504 = swift_allocObject();
              sub_22BD6227C(v2504);
              sub_22BB322B0();
              v2505 = swift_allocObject();
              sub_22BB52D3C(v2505);
              v3013 = sub_22BDB77C4();
              sub_22BDBB134();
              sub_22BD616A8();
              v2506 = swift_allocObject();
              sub_22BD60C88(v2506);
              sub_22BD616A8();
              v2507 = swift_allocObject();
              sub_22BD60EF4(v2507);
              sub_22BB322B0();
              v2404 = swift_allocObject();
              sub_22BB70160(v2404);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BB97CD8();
              *(v2508 + 16) = v2509;
              *(v2508 + 24) = v2404;
              sub_22BD616A8();
              v2510 = swift_allocObject();
              sub_22BBBEC2C(v2510);
              sub_22BD616A8();
              v2511 = swift_allocObject();
              sub_22BBB7560(v2511);
              sub_22BB322B0();
              v2512 = swift_allocObject();
              sub_22BD602C4(v2512);
              sub_22BB322B0();
              swift_allocObject();
              sub_22BD5F89C();
              v2514 = sub_22BD617F4(v2513);
              sub_22BB3602C(v2514);
              v2515[6] = sub_22BB89C08;
              v2515[7] = v3024;
              v2515[8] = sub_22BB89C7C;
              v2515[9] = v268;
              v2515[10] = sub_22BB89C08;
              v2515[11] = v18;
              v2515[12] = sub_22BB89C08;
              v2515[13] = v914;
              v2515[14] = sub_22BB89C7C;
              v2515[15] = v423;

              sub_22BBC0AE4();
              sub_22BBC23B0();

              if (!sub_22BD61814())
              {
                v2547 = v423[496];
                goto LABEL_373;
              }

              sub_22BB67968();
              v2516 = sub_22BBC01B4();
              v423[239] = 0;
              v423[240] = v2516;
              sub_22BD60D8C();
              v423[238] = v2517;
              v423[127] = sub_22BB89C08;
              v423[128] = v1476;
              v2518 = sub_22BD6013C();
              v276 = v3025;
              sub_22BB67984(v2518, v2519, v2520, v2521);
              if (!v3025)
              {
LABEL_391:

                *(v14 + 1016) = sub_22BB89C08;
                *(v14 + 1024) = v50;
                v2643 = sub_22BD6013C();
                sub_22BB67984(v2643, v2644, v2645, v2646);
                if (v276)
                {

                  goto LABEL_368;
                }

                sub_22BB70564();
                *(v2662 + 1016) = v2663;
                *(v2662 + 1024) = v268;
                sub_22BD6119C(v2662);

                sub_22BB3B510();
                *(v2701 + 1016) = v2702;
                *(v2701 + 1024) = v3014;
                sub_22BD6119C(v2701);

                sub_22BB3B510();
                *(v2707 + 1016) = v2708;
                *(v2707 + 1024) = v3008;
                sub_22BD6119C(v2707);

                sub_22BB70564();
                *(v2715 + 1016) = v2716;
                *(v2715 + 1024) = v423;
                sub_22BD6119C(v2715);
                v2722 = *(v3024 + 3968);
                sub_22BD61A18();

                v2434 = "[SessionCoordinator %{public}s] | [TX %{public}s] Transaction not allowed to cause work or be sent to client.";
LABEL_418:
                sub_22BD632D4(&dword_22BB2C000, v2432, v2433, v2434);
                sub_22BD619D4();
                sub_22BD6193C();
                sub_22BB679C0();
              }
            }

LABEL_362:

            goto LABEL_368;
          }

          v983 = *(v14 + 3320);
          v984 = *(v14 + 3312);
          v985 = sub_22BD00E3C();
          sub_22BB325EC(v985, v986, v897);
          v987 = sub_22BB32E04();
          sub_22BB325EC(v987, v988, v897);
          v989 = *(v983 + 8);
          v990 = sub_22BB3627C();
          v991(v990);
          v914 = name;
        }

        sub_22BB325EC(*(v14 + 3360), &qword_27D8E6510, &qword_22BDCE418);
        v919 = 0;
        goto LABEL_145;
    }
  }
}