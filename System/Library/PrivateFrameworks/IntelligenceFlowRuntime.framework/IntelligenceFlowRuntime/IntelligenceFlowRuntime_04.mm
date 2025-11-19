uint64_t sub_22BBB4B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB2F35C();
  v13 = *(v12 + 688);
  v14 = *(v12 + 664);
  v15 = *(v12 + 352);
  v16 = *(v12 + 360);
  *(v12 + 696) = qword_28142AC88;
  sub_22BB32CE8();
  sub_22BB335C0(v16 + v17, v18);
  sub_22BBE6DE0(&qword_27D8E64A8, &qword_22BDCE360);
  sub_22BDBAF64();
  *(v12 + 704) = sub_22BD6156C(qword_28142AC00, &qword_27D8E6458, &qword_22BDCE2D0);
  v19 = *v16;
  sub_22BD62BCC();
  *(v12 + 712) = *(v20 + 176);
  sub_22BD62BCC();
  *(v12 + 720) = *(v21 + 152);
  *(v12 + 864) = *MEMORY[0x277D85B00];
  v22 = *(v12 + 360);
  v23 = *(MEMORY[0x277D85798] + 4);
  swift_task_alloc();
  sub_22BB30B34();
  *(v12 + 728) = v24;
  *v24 = v25;
  v26 = sub_22BB6BBD8(v24);

  return MEMORY[0x2822003E8](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_22BBB4C34()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = *(v2 + 472);
  v4 = *v1;
  sub_22BB3052C();
  *v5 = v4;
  *(v6 + 480) = v0;

  if (v0)
  {
    v7 = sub_22BD312EC;
  }

  else
  {
    v7 = sub_22BBB4D38;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22BBB4D54()
{
  v74 = v0;
  v1 = v0[14];
  if (sub_22BB3AA28(v1, 1, v0[52]) == 1)
  {
    v2 = v0[57];
    v53 = v0[56];
    v54 = v0[58];
    v55 = v0[55];
    v56 = v0[54];
    v51 = v0[50];
    v52 = v0[51];
    v3 = v0[48];
    v50 = v0[49];
    v4 = v0[46];
    v5 = v0[47];
    v6 = v0[45];
    v57 = v0[53];
    v58 = v0[44];
    v7 = v0[40];
    v8 = v0[41];
    v9 = v0[39];
    v59 = v0[38];
    v60 = v0[35];
    v62 = v0[32];
    v63 = v0[29];
    v64 = v0[26];
    v65 = v0[23];
    v61 = v0[20];
    v10 = v0[18];
    v66 = v0[17];
    v67 = v0[13];
    v68 = v0[12];
    v69 = v0[11];
    v70 = v0[8];
    v71 = v0[7];
    (*(v0[19] + 8))();
    (*(v7 + 8))(v8, v9);
    v11 = *(v4 + 8);
    v11(v5, v6);
    v11(v3, v6);
    v11(v50, v6);
    v11(v51, v6);
    v11(v52, v6);
    (*(v2 + 8))(v54, v53);

    v12 = v0[1];

    return v12();
  }

  else
  {
    v15 = v0[53];
    v14 = v0[54];
    v16 = v0[13];
    sub_22BBB5460(v1, v14);
    _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
    sub_22BBB54C4(v14, v15);
    v17 = sub_22BDB77C4();
    v18 = sub_22BDBB134();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[53];
    v21 = v0[13];
    v23 = v0[9];
    v22 = v0[10];
    if (v19)
    {
      v72 = v0[13];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v73 = v25;
      *v24 = 136315138;
      v26 = *(v20 + 16);
      v27 = *(v20 + 24);

      sub_22BBB5528(v20);
      v28 = sub_22BB32EE0(v26, v27, &v73);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_22BB2C000, v17, v18, "ToolKitMonitor: Got %s notification. Starting toolbox update.", v24, 0xCu);
      sub_22BB32FA4(v25);
      MEMORY[0x2318A6080](v25, -1, -1);
      sub_22BB30458();

      v29 = *(v22 + 8);
      v29(v72, v23);
    }

    else
    {

      sub_22BBB5528(v20);
      v29 = *(v22 + 8);
      v29(v21, v23);
    }

    v0[61] = v29;
    v30 = v0[54];
    v32 = v0[7];
    v31 = v0[8];
    v33 = *(v0[52] + 24);
    v34 = sub_22BDBAEF4();
    v35 = *(v34 - 8);
    (*(v35 + 16))(v31, v30 + v33, v34);
    sub_22BB336D0(v31, 0, 1, v34);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    sub_22BBB5584(v31, v32);
    LODWORD(v32) = sub_22BB3AA28(v32, 1, v34);

    v37 = v0[7];
    if (v32 == 1)
    {
      sub_22BB58780(v0[7], &qword_27D8E2978, &qword_22BDBD020);
    }

    else
    {
      sub_22BDBAEE4();
      (*(v35 + 8))(v37, v34);
    }

    v38 = *(v36 + 16);
    v39 = *(v36 + 24);
    swift_unknownObjectRetain();

    if (v38)
    {
      swift_getObjectType();
      v40 = sub_22BDBAE44();
      v42 = v41;
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    if (v42 | v40)
    {
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v40;
      v0[5] = v42;
    }

    v43 = v0[8];
    v44 = MEMORY[0x277D84F78];
    v45 = swift_task_create();
    v0[62] = v45;
    sub_22BB58780(v43, &qword_27D8E2978, &qword_22BDBD020);
    v46 = *(MEMORY[0x277D857C8] + 4);
    v47 = swift_task_alloc();
    v0[63] = v47;
    v48 = sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
    *v47 = v0;
    v47[1] = sub_22BBB5D54;
    v49 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v48, v45, v44 + 8, v48, v49);
  }
}

uint64_t sub_22BBB5388()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22BBB53D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22BDBAEF4();
    v9 = a1 + *(a3 + 24);

    return sub_22BB3AA28(v9, a2, v8);
  }
}

uint64_t sub_22BBB5460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolboxRebuildTrigger();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BBB54C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolboxRebuildTrigger();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BBB5528(uint64_t a1)
{
  v2 = type metadata accessor for ToolboxRebuildTrigger();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BBB5584(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BBB55F4()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  sub_22BB3280C(v4);

  return sub_22BBB5690();
}

uint64_t sub_22BBB56A8()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 16);
  sub_22BD6156C(qword_28142AC00, &qword_27D8E6458, &qword_22BDCE2D0);
  v2 = *(MEMORY[0x277D858E8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_22BBB7B34;
  v4 = *(v0 + 16);

  return MEMORY[0x282200600]();
}

uint64_t sub_22BBB5794()
{
  sub_22BB2F35C();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  v6 = sub_22BB31BAC(v5);
  *v6 = v7;
  v6[1] = sub_22BB3C48C;

  return sub_22BBB5834(v4, v2, v0);
}

uint64_t sub_22BBB5834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v5 = sub_22BBE6DE0(&qword_27D8E6468, &qword_22BDCE318);
  v3[23] = v5;
  v6 = *(v5 - 8);
  v3[24] = v6;
  v7 = *(v6 + 64) + 15;
  v3[25] = swift_task_alloc();
  v8 = sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
  v3[26] = v8;
  v9 = *(v8 - 8);
  v3[27] = v9;
  v10 = *(v9 + 64) + 15;
  v3[28] = swift_task_alloc();
  v11 = sub_22BBE6DE0(&qword_27D8E6478, &qword_22BDCE328);
  v3[29] = v11;
  v12 = *(v11 - 8);
  v3[30] = v12;
  v3[31] = *(v12 + 64);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v13 = sub_22BBE6DE0(&qword_27D8E6480, &qword_22BDCE330);
  v3[34] = v13;
  v14 = *(v13 - 8);
  v3[35] = v14;
  v15 = *(v14 + 64) + 15;
  v3[36] = swift_task_alloc();
  v16 = sub_22BBE6DE0(&qword_27D8E6488, &qword_22BDCE338);
  v3[37] = v16;
  v17 = *(v16 - 8);
  v3[38] = v17;
  v18 = *(v17 + 64) + 15;
  v3[39] = swift_task_alloc();
  v19 = sub_22BBE6DE0(&qword_27D8E6490, &unk_22BDCE340);
  v3[40] = v19;
  v20 = *(v19 - 8);
  v3[41] = v20;
  v3[42] = *(v20 + 64);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v21 = sub_22BBE6DE0(&qword_27D8E6038, &qword_22BDD0300);
  v3[45] = v21;
  v22 = *(v21 - 8);
  v3[46] = v22;
  v23 = *(v22 + 64) + 15;
  v3[47] = swift_task_alloc();
  v24 = *(*(sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020) - 8) + 64) + 15;
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v25 = sub_22BBE6DE0(&qword_27D8E6498, &qword_22BDCE350);
  v3[51] = v25;
  v26 = *(v25 - 8);
  v3[52] = v26;
  v27 = *(v26 + 64) + 15;
  v3[53] = swift_task_alloc();
  v28 = sub_22BBE6DE0(&qword_27D8E64A0, &qword_22BDCE358);
  v3[54] = v28;
  v29 = *(v28 - 8);
  v3[55] = v29;
  v30 = *(v29 + 64) + 15;
  v3[56] = swift_task_alloc();
  v31 = sub_22BBE6DE0(&qword_27D8E64A8, &qword_22BDCE360);
  v3[57] = v31;
  v32 = *(v31 - 8);
  v3[58] = v32;
  v3[59] = *(v32 + 64);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB774F8, a3, 0);
}

uint64_t sub_22BBB5D38()
{

  return swift_slowAlloc();
}

uint64_t sub_22BBB5D54()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = *(v2 + 504);
  v4 = *v1;
  sub_22BB3052C();
  *v5 = v4;
  *(v6 + 512) = v0;

  if (v0)
  {
    v7 = sub_22BD31374;
  }

  else
  {
    v7 = sub_22BBB5E58;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22BBB5E58()
{
  v1 = *(v0 + 96);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v2 = sub_22BDB77C4();
  v3 = sub_22BDBB134();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 496);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22BB2C000, v2, v3, "ToolKitMonitor: Indexing finished.", v6, 2u);
    MEMORY[0x2318A6080](v6, -1, -1);
  }

  v7 = *(v0 + 432);
  v8 = *(v0 + 80) + 8;
  (*(v0 + 488))(*(v0 + 96), *(v0 + 72));
  sub_22BBB5528(v7);
  sub_22BB308B8(&qword_281428938, &qword_27D8E6248, &qword_22BDCD848);
  v9 = *(MEMORY[0x277D856D0] + 4);
  v10 = swift_task_alloc();
  v11 = sub_22BB31DA4(v10);
  *v11 = v12;
  v13 = sub_22BB35BE4();

  return MEMORY[0x282200308](v13);
}

uint64_t sub_22BBB5F9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_22BBB5FE4()
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
  sub_22BB382B4(v2, v5, &qword_27D8E6AB8, &qword_22BDD0308);
  v9 = sub_22BB37E98();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD278DC(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

uint64_t sub_22BBB60C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22BDBAEF4();
    v8 = v5 + *(a4 + 24);

    return sub_22BB336D0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22BBB6144(uint64_t result)
{
  *(v1 + 2136) = 0;
  *(v1 + 2144) = result;
  return result;
}

uint64_t sub_22BBB6154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  sub_22BB3CD70(a1, v22 - v10, &qword_27D8E2978, &qword_22BDBD020);
  v12 = sub_22BDBAEF4();
  if (sub_22BB3AA28(v11, 1, v12) == 1)
  {
    sub_22BB325EC(v11, &qword_27D8E2978, &qword_22BDBD020);
  }

  else
  {
    sub_22BDBAEE4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a3 + 16))
  {
    v13 = *(a3 + 24);
    v14 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = sub_22BDBAE44();
    v17 = v16;
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_22BBB634C()
{
  sub_22BB2F35C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  v4[1] = sub_22BB3C48C;
  sub_22BD62E70();

  return v6();
}

uint64_t sub_22BBB6408(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22BBADEBC;

  return v7(a1);
}

uint64_t sub_22BBB6500()
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  v0 = sub_22BBE6DE0(&qword_27D8E64A8, &qword_22BDCE360);
  sub_22BB2F0C8(v0);
  v2 = *(v1 + 80);
  sub_22BD63FC8();
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  v4[1] = sub_22BB3C48C;
  sub_22BB37834();
  sub_22BB3A1C0();

  return sub_22BBB65E8(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_22BBB65E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_22BB3C48C;

  return sub_22BBB6694(a5, a6);
}

uint64_t sub_22BBB6694(uint64_t a1, uint64_t a2)
{
  v3[44] = a2;
  v3[45] = v2;
  v3[43] = a1;
  v4 = sub_22BDB7764();
  v3[46] = v4;
  v5 = *(v4 - 8);
  v3[47] = v5;
  v6 = *(v5 + 64) + 15;
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v7 = sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  v3[50] = v7;
  v8 = *(v7 - 8);
  v3[51] = v8;
  v9 = *(v8 + 64) + 15;
  v3[52] = swift_task_alloc();
  v10 = sub_22BDB98C4();
  v3[53] = v10;
  v11 = *(v10 - 8);
  v3[54] = v11;
  v12 = *(v11 + 64) + 15;
  v3[55] = swift_task_alloc();
  v13 = sub_22BDB7734();
  v3[56] = v13;
  v14 = *(v13 - 8);
  v3[57] = v14;
  v15 = *(v14 + 64) + 15;
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v16 = sub_22BDB7754();
  v3[63] = v16;
  v17 = *(v16 - 8);
  v3[64] = v17;
  v18 = *(v17 + 64) + 15;
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v19 = type metadata accessor for SessionCoordinatorAcceptPayload.Transaction(0);
  v3[70] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v21 = sub_22BDB77D4();
  v3[74] = v21;
  v22 = *(v21 - 8);
  v3[75] = v22;
  v23 = *(v22 + 64) + 15;
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v24 = type metadata accessor for SessionCoordinatorAcceptPayload(0);
  v3[78] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v3[79] = swift_task_alloc();
  v26 = *(*(sub_22BBE6DE0(&qword_27D8E65C8, &qword_22BDCE500) - 8) + 64) + 15;
  v3[80] = swift_task_alloc();
  v27 = sub_22BBE6DE0(&qword_27D8E65D0, &qword_22BDCE508);
  v3[81] = v27;
  v28 = *(v27 - 8);
  v3[82] = v28;
  v29 = *(v28 + 64) + 15;
  v3[83] = swift_task_alloc();
  v30 = *(*(sub_22BDB5664() - 8) + 64) + 15;
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBB4B08, v2, 0);
}

uint64_t sub_22BBB6B04()
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  v0 = sub_22BBE6DE0(&qword_27D8E6490, &unk_22BDCE340);
  sub_22BB2F0C8(v0);
  v2 = *(v1 + 80);
  sub_22BD63FC8();
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  v4[1] = sub_22BB3C48C;
  sub_22BB37834();
  sub_22BB3A1C0();

  return sub_22BBB6BDC(v6, v7, v8, v9, v10);
}

uint64_t sub_22BBB6BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_22BBF90EC;

  return sub_22BBB6C78(a5);
}

uint64_t sub_22BBB6C78(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22BDB77D4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_22BDB9B54();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = *(*(sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = sub_22BBE6DE0(&qword_27D8E65C0, &qword_22BDCE4C0);
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();
  v13 = *(*(type metadata accessor for SessionPersistenceManager() - 8) + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBB6E60, 0, 0);
}

uint64_t sub_22BBB6E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB2F0D4();
  v14 = *(v12 + 104);
  v13 = *(v12 + 112);
  v15 = *(v12 + 16);
  sub_22BD649FC(*(v12 + 24));
  sub_22BB335C0(v17 + *(v16 + 160), v18);
  *(v12 + 144) = sub_22BBB6F5C() & 1;
  sub_22BBE6DE0(&qword_27D8E6490, &unk_22BDCE340);
  sub_22BDBAF64();
  *(v12 + 120) = qword_28142AC88;
  *(v12 + 128) = 0;
  v19 = *(MEMORY[0x277D85798] + 4);
  swift_task_alloc();
  sub_22BB30B34();
  *(v12 + 136) = v20;
  *v20 = v21;
  v20[1] = sub_22BB95024;
  v22 = *(v12 + 104);
  v23 = *(v12 + 80);
  v24 = *(v12 + 88);
  sub_22BB9743C();

  return MEMORY[0x2822003E8](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_22BBB6F5C()
{
  if (sub_22BDB6634())
  {
    swift_getKeyPath();
    sub_22BDB4BE4();

    v0 = v2 ^ 1;
  }

  else
  {
    v0 = 1;
  }

  return v0 & 1;
}

uint64_t sub_22BBB6FD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BDB4B74();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22BBB7004(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22BBE6DE0(a3, a4);
  sub_22BB30474(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BBB7068(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v5 = *(v3 - 224);

  return swift_allocObject();
}

unint64_t sub_22BBB7088()
{
  result = qword_28142A870;
  if (!qword_28142A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28142A870);
  }

  return result;
}

uint64_t sub_22BBB70DC()
{
  sub_22BB2F0D4();
  v2 = *v1;
  sub_22BB33FF4();
  *v3 = v2;
  v5 = *(v4 + 472);
  v15 = *v1;
  v2[60] = v0;

  if (v0)
  {
    v6 = v2[56];
    v8 = v2[18];
    v7 = v2[19];
    v9 = v2[17];
    v10 = v2[9];
    (*(v8 + 8))(v7, v9);

    v11 = sub_22BBAC494;
    v12 = v10;
  }

  else
  {
    v13 = v2[9];
    (*(v2[18] + 8))(v2[19], v2[17]);
    v11 = sub_22BBCC350;
    v12 = v13;
  }

  return MEMORY[0x2822009F8](v11, v12, 0);
}

uint64_t sub_22BBB7250()
{
  v22 = *(v0 + 496);
  v23 = *(v0 + 488);
  v24 = *(v0 + 480);
  v25 = *(v0 + 448);
  sub_22BB6FAF4();
  v26 = *(v0 + 344);
  v1 = *(v0 + 328);
  v20 = *(v0 + 320);
  v21 = *(v0 + 352);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v19 = *(v0 + 296);
  v27 = *(v0 + 288);
  v18 = *(v0 + 264);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v8 = *(v0 + 208);
  v28 = *(v0 + 256);
  v29 = *(v0 + 200);
  v9 = *(v0 + 176);
  v10 = **(v0 + 168);
  sub_22BDBAEA4();
  sub_22BBACC08(v9, (v0 + 160), (v0 + 152), v2, v6);
  (*(v7 + 8))(v6, v8);
  v11 = *(v5 + 8);
  v12 = sub_22BB3182C();
  v13(v12);
  (*(v3 + 8))(v2, v19);
  (*(v1 + 8))(v21, v20);
  v14 = *(v0 + 160);

  sub_22BB2F09C();
  sub_22BD6421C();

  return v15();
}

Swift::Void __swiftcall SnippetStreamingRouter.Scoped.deallocateAllContexts()()
{
  v1 = sub_22BBE6DE0(&qword_27D8E6878, &qword_22BDCF808);
  sub_22BB2F0C8(v1);
  v3 = *(v2 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = *(v0 + 16);
  sub_22BBB74FC(v0 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime22SnippetStreamingRouter6Scoped_scope, &v12 - v5);
  v8 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  v11 = sub_22BB35DC4(v6, v9, v10, v8);
  sub_22BBAD104(v11);
  sub_22BBB7914(v6);
}

uint64_t sub_22BBB74FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BBB756C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = *(type metadata accessor for FeedbackLearning.TaskEvaluation(0) - 8);
  v3[6] = v4;
  v5 = *(v4 + 64) + 15;
  v3[7] = swift_task_alloc();
  v6 = *(_s18TaskDefinitionThinO18TaskEvaluationThinVMa(0) - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = sub_22BDB9774();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = sub_22BDB7734();
  v3[13] = v11;
  v12 = *(v11 - 8);
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v14 = sub_22BDB7754();
  v3[17] = v14;
  v15 = *(v14 - 8);
  v3[18] = v15;
  v16 = *(v15 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v17 = sub_22BDB43E4();
  v3[21] = v17;
  v18 = *(v17 - 8);
  v3[22] = v18;
  v19 = *(v18 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v20 = sub_22BDB9B54();
  v3[25] = v20;
  v21 = *(v20 - 8);
  v3[26] = v21;
  v22 = *(v21 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v23 = sub_22BDB77D4();
  v3[29] = v23;
  v24 = *(v23 - 8);
  v3[30] = v24;
  v25 = *(v24 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBB8720, 0, 0);
}

uint64_t sub_22BBB7914(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E6878, &qword_22BDCF808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22BBB798C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_log_t log)
{

  _os_log_impl(a1, log, v12, a4, v11, 0x16u);
}

uint64_t sub_22BBB79B0()
{

  return swift_task_alloc();
}

uint64_t sub_22BBB79E4()
{

  return sub_22BDBB214();
}

uint64_t sub_22BBB79FC(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_22BBB7A1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22BBB7AA4()
{
  sub_22BB2F0D4();
  v1 = *sub_22BB69FEC((v0 + 16), *(v0 + 56));
  sub_22BD790CC(MEMORY[0x277D84F90], sub_22BB35598, 0);
  sub_22BB32FA4((v0 + 16));
  sub_22BB2F09C();

  return v2();
}

uint64_t sub_22BBB7B34()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_22BB3052C();
  *v5 = v4;

  v6 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_22BBB7E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB31014();
  a19 = v22;
  a20 = v23;
  v24 = sub_22BDB5F24();
  v25 = sub_22BB2F0C8(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BB30574();
  sub_22BB3ABC8();
  v28 = sub_22BDB77D4();
  v29 = sub_22BB30444(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BB30574();
  sub_22BB345CC();
  sub_22BB51A9C();
  if (!v20)
  {
    sub_22BBB8068();
    sub_22BDB63E4();
    sub_22BB36720();
    sub_22BB33618();
    v34 = sub_22BDB77C4();
    v35 = sub_22BDBB134();
    if (os_log_type_enabled(v34, v35))
    {
      sub_22BB354D0();
      v40 = swift_slowAlloc();
      sub_22BB2F440();
      v41 = swift_slowAlloc();
      a10 = v41;
      *v40 = 136446210;
      v39 = MEMORY[0x23189FEB0]();
      v37 = v36;
      sub_22BB309FC();
      sub_22BB34698();
      v38 = sub_22BB32EE0(v39, v37, &a10);

      *(v40 + 4) = v38;
      _os_log_impl(&dword_22BB2C000, v34, v35, "Session %{public}s deregistered.", v40, 0xCu);
      sub_22BB32FA4(v41);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
    }

    else
    {

      sub_22BB309FC();
      sub_22BB34698();
    }

    (*(v31 + 8))(v21, v28);
  }

  sub_22BB376A8();
}

uint64_t sub_22BBB8068()
{
  v0 = sub_22BDB5F24();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v46 = sub_22BDB77D4();
  v4 = *(v46 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v46);
  v8 = &v47[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v47[-1] - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v47[-1] - v12;
  v14 = sub_22BBE6DE0(&qword_27D8E67E8, &qword_22BDCF4B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v47[-1] - v16;
  swift_beginAccess();
  sub_22BBAE0E0();
  swift_endAccess();
  v18 = type metadata accessor for SessionSwitchboard.SessionInfo();
  if (sub_22BB3AA28(v17, 1, v18) == 1)
  {
    sub_22BB58728(v17, &qword_27D8E67E8, &qword_22BDCF4B0);
    sub_22BDB63E4();
    sub_22BB33618();
    v19 = sub_22BDB77C4();
    v20 = sub_22BDBB124();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v47[0] = v22;
      *v21 = 136446210;
      v23 = MEMORY[0x23189FEB0]();
      v25 = v24;
      sub_22BB34698();
      v26 = sub_22BB32EE0(v23, v25, v47);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_22BB2C000, v19, v20, "SessionCoordinator %{public}s could not be popped.", v21, 0xCu);
      sub_22BB32FA4(v22);
      MEMORY[0x2318A6080](v22, -1, -1);
      MEMORY[0x2318A6080](v21, -1, -1);
    }

    else
    {

      sub_22BB34698();
    }

    return (*(v4 + 8))(v8, v46);
  }

  else
  {
    v27 = *&v17[*(v18 + 32)];

    sub_22BB34698();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();

    if (isUniquelyReferenced_nonNull_native)
    {
      sub_22BDB63E4();
      sub_22BB33618();
      v29 = sub_22BDB77C4();
      v30 = sub_22BDBB134();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v47[0] = v32;
        *v31 = 136446210;
        v33 = MEMORY[0x23189FEB0]();
        v35 = v34;
        sub_22BB34698();
        v36 = sub_22BB32EE0(v33, v35, v47);

        *(v31 + 4) = v36;
        _os_log_impl(&dword_22BB2C000, v29, v30, "SessionCoordinator %{public}s removed. It was destroyed.", v31, 0xCu);
        sub_22BB32FA4(v32);
        MEMORY[0x2318A6080](v32, -1, -1);
        MEMORY[0x2318A6080](v31, -1, -1);
      }

      else
      {

        sub_22BB34698();
      }

      return (*(v4 + 8))(v11, v46);
    }

    else
    {
      sub_22BDB63E4();
      sub_22BB33618();
      v38 = sub_22BDB77C4();
      v39 = sub_22BDBB114();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v47[0] = v41;
        *v40 = 136446210;
        v42 = MEMORY[0x23189FEB0]();
        v44 = v43;
        sub_22BB34698();
        v45 = sub_22BB32EE0(v42, v44, v47);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_22BB2C000, v38, v39, "SessionCoordinator %{public}s removed. The SessionCoordinator was held with non-exclusive ownership. Its destruction may be deferred.", v40, 0xCu);
        sub_22BB32FA4(v41);
        MEMORY[0x2318A6080](v41, -1, -1);
        MEMORY[0x2318A6080](v40, -1, -1);
      }

      else
      {

        sub_22BB34698();
      }

      return (*(v4 + 8))(v13, v46);
    }
  }
}

uint64_t sub_22BBB86C8()
{
  sub_22BBAE224();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22BBB86F4()
{
  sub_22BBAE7D0();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22BBB8720()
{
  v174 = v0;
  v1 = v0[25];
  v2 = v0[4];
  v3 = v0[26] + 16;
  if (*(*(v0[3] + 104) + 16))
  {
    v4 = v0[31];
    v5 = v0[27];
    sub_22BDB6404();
    v6 = sub_22BB38B84();
    v7(v6);
    v8 = sub_22BDB77C4();
    v9 = sub_22BDBB0F4();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[30];
    v11 = v0[31];
    v13 = v0[29];
    v14 = v0[26];
    v15 = v0[27];
    v16 = v0[25];
    if (v10)
    {
      v151 = v0[25];
      v17 = sub_22BB311A4();
      loga = sub_22BB314C8();
      v171 = loga;
      sub_22BB37DA4(4.8149e-34);
      sub_22BB30890();
      sub_22BBB8FCC(v18, v19);
      sub_22BDBB684();
      v20 = sub_22BB31D70();
      v21(v20);
      v22 = sub_22BB36300();
      v23(v22, v151);
      v24 = sub_22BB32EE0(v13, v9, &v171);

      *(v17 + 4) = v24;
      sub_22BB37308(&dword_22BB2C000, v25, v26, "Cancelling evaluation of eventId=%s, a termination signal was received", v27, v28, v29, v30, v140, v141, v143, v145, v148, v151, buf);
      sub_22BB32FA4(loga);
      sub_22BB30AF0();
      sub_22BB30AF0();

      (*(v12 + 8))();
    }

    else
    {

      v61 = sub_22BB36300();
      v62(v61, v16);
      v63 = *(v12 + 8);
      v64 = sub_22BB2F324();
      v66(v64, v65);
    }
  }

  else
  {
    v31 = v0[33];
    v32 = v0[28];
    sub_22BDB6404();
    v33 = sub_22BB38B84();
    v34(v33);
    v35 = sub_22BDB77C4();
    v36 = sub_22BDBB0F4();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[33];
    v39 = v0[29];
    v40 = v0[30];
    v41 = v0[28];
    v43 = v0[25];
    v42 = v0[26];
    if (v37)
    {
      v152 = v0[25];
      v44 = sub_22BB311A4();
      logb = sub_22BB314C8();
      v171 = logb;
      sub_22BB37DA4(4.8149e-34);
      sub_22BB30890();
      sub_22BBB8FCC(v45, v46);
      sub_22BDBB684();
      v47 = sub_22BB31D70();
      v48(v47);
      v49 = sub_22BB36300();
      v50(v49, v152);
      v51 = sub_22BB32EE0(v39, v36, &v171);

      *(v44 + 4) = v51;
      sub_22BB37308(&dword_22BB2C000, v52, v53, "Starting evaluation of eventId=%s", v54, v55, v56, v57, v140, v141, v143, v145, v148, v152, buf);
      sub_22BB32FA4(logb);
      sub_22BB30AF0();
      sub_22BB30AF0();

      v58 = *(v40 + 8);
      v59 = v164;
      v60 = v168;
    }

    else
    {

      v67 = sub_22BB36300();
      v68(v67, v43);
      v69 = *(v40 + 8);
      v59 = sub_22BB2F324();
    }

    v169 = v58;
    v58(v59, v60);
    v71 = v0[19];
    v70 = v0[20];
    v72 = v0[17];
    v73 = v0[18];
    v74 = v0[16];
    sub_22BDB6144();
    sub_22BDB6144();
    sub_22BDB7744();
    sub_22BDB7704();
    v165 = *(v73 + 8);
    v165(v71, v72);
    v75 = sub_22BDB7744();
    v76 = sub_22BDBB1D4();
    if (sub_22BDBB244())
    {
      v77 = v0[16];
      v78 = swift_slowAlloc();
      *v78 = 0;
      v79 = sub_22BDB7714();
      _os_signpost_emit_with_name_impl(&dword_22BB2C000, v75, v76, v79, "FeedbackLearning", "", v78, 2u);
      sub_22BB30AF0();
    }

    v144 = v0[20];
    v146 = v0[23];
    v80 = v0[16];
    v142 = v0[17];
    v82 = v0[14];
    v81 = v0[15];
    v83 = v0[12];
    v84 = v0[13];
    v85 = v0[11];
    bufb = v0[10];
    logc = v0[32];
    v149 = v0[5];
    v153 = v0[4];
    v86 = v0[3];

    v87 = *(v82 + 16);
    v88 = sub_22BB2F324();
    v89(v88);
    v90 = sub_22BDB77A4();
    v91 = *(v90 + 48);
    v92 = *(v90 + 52);
    swift_allocObject();
    v93 = sub_22BDB7794();
    (*(v82 + 8))(v80, v84);
    v165(v144, v142);
    sub_22BDB43D4();
    sub_22BB69FEC((v86 + 24), *(v86 + 48));
    sub_22BDB96A4();
    sub_22BBAE984(v83, v153, v146, &v171);
    (*(v85 + 8))(v83, bufb);
    v94 = v171;
    v95 = v172;
    sub_22BDB6404();

    v96 = sub_22BDB77C4();
    v97 = sub_22BDBB0F4();

    if (os_log_type_enabled(v96, v97))
    {
      log = v96;
      v166 = v93;
      v98 = swift_slowAlloc();
      v154 = sub_22BB314C8();
      v173 = v154;
      bufa = v98;
      *v98 = 136380675;
      v99 = *(v95 + 16);
      v100 = MEMORY[0x277D84F90];
      if (v99)
      {
        v147 = v97;
        v150 = v94;
        v101 = v0[8];
        v102 = v0[6];
        v171 = MEMORY[0x277D84F90];
        sub_22BD28530();
        v100 = v171;
        v103 = v95 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
        v104 = *(v102 + 72);
        do
        {
          v105 = v0[9];
          v106 = v0[7];
          sub_22BD1CA68(v103, v106);
          sub_22BCF7988();
          sub_22BD1CB30(v106, type metadata accessor for FeedbackLearning.TaskEvaluation);
          v171 = v100;
          v107 = *(v100 + 16);
          if (v107 >= *(v100 + 24) >> 1)
          {
            sub_22BD28530();
            v100 = v171;
          }

          v108 = v0[9];
          *(v100 + 16) = v107 + 1;
          sub_22BD1CACC(v108, v100 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v107);
          v103 += v104;
          --v99;
        }

        while (v99);
        v94 = v150;
        v97 = v147;
      }

      v113 = v0[32];
      v115 = v0[29];
      v114 = v0[30];
      v0[2] = v100;
      sub_22BBE6DE0(&qword_27D8E5ED8, &unk_22BDCCD10);
      sub_22BBDC038();
      v116 = sub_22BDBAB74();
      v118 = v117;

      v119 = sub_22BB32EE0(v116, v118, &v173);

      *(bufa + 4) = v119;
      _os_log_impl(&dword_22BB2C000, log, v97, "Evaluation Results: %{private}s", bufa, 0xCu);
      sub_22BB32FA4(v154);
      sub_22BB30AF0();
      sub_22BB30AF0();

      v169(v113, v115);
      v93 = v166;
    }

    else
    {
      v109 = v0[32];
      v110 = v0[29];
      v111 = v0[30];

      v112 = sub_22BB2F324();
      (v169)(v112);
    }

    v121 = v0[22];
    v120 = v0[23];
    v122 = v0[21];
    v124 = v0[3];
    v123 = v0[4];
    LOBYTE(v171) = v94;
    v172 = v95;
    sub_22BBDC0EC(&v171, v123, v120);
    v125 = *(v121 + 8);
    v126 = sub_22BB33728();
    v127(v126);

    sub_22BBDCE44(v93, "FeedbackLearning");
  }

  v129 = v0[32];
  v128 = v0[33];
  v130 = v0[31];
  v132 = v0[27];
  v131 = v0[28];
  v134 = v0[23];
  v133 = v0[24];
  v136 = v0[19];
  v135 = v0[20];
  v137 = v0[16];
  bufc = v0[15];
  logd = v0[12];
  v167 = v0[9];
  v170 = v0[7];

  v138 = v0[1];

  return v138();
}

uint64_t sub_22BBB8F84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BBB8FCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s19TranscriptRetrieverVMa()
{
  result = qword_28142BFD8;
  if (!qword_28142BFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BBB9080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22BDB9C14();
  v7 = sub_22BB30444(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22BDB9774();
  v14 = *(v37 - 8);
  (*(v14 + 16))(a3, a1, v37);
  v15 = sub_22BDB9744();
  v16 = sub_22BDB9744();
  sub_22BBB04DC(v16, v17, v18, v19, v20, v21, v22, v23, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  v25 = v24;

  v26 = _s19TranscriptRetrieverVMa();
  sub_22BBB2510(v15, a2, v25, (a3 + v26[5]));

  v27 = sub_22BDB9744();
  v28 = sub_22BDB9744();
  v29 = sub_22BBC23C8(v27, v28, _s23PromptResponseRetrieverCMa, 72, sub_22BBC2588);
  v30 = (a3 + v26[6]);
  v30[3] = _s23PromptResponseRetrieverCMa();
  v30[4] = &off_283F767C8;
  *v30 = v29;
  v31 = sub_22BDB9744();
  (*(v9 + 16))(v13, a2, v6);
  v32 = sub_22BBC975C(v31, v13);

  v33 = *(v9 + 8);
  v33(v13, v6);
  v34 = (a3 + v26[7]);
  v34[3] = &_s28StatementParameterResolutionVN;
  v34[4] = &off_283F76848;
  *v34 = v32;
  v33(a2, v6);
  return (*(v14 + 8))(a1, v37);
}

uint64_t sub_22BBB92F0()
{
  v1 = OBJC_IVAR____TtC23IntelligenceFlowRuntime8Executor_session;
  v2 = sub_22BDB43E4();
  sub_22BB2F330(v2);
  (*(v3 + 8))(v0 + v1);
  sub_22BB32FA4((v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime8Executor_runtime));
  sub_22BB32FA4((v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime8Executor_instrumentationSender));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22BBB9370()
{
  sub_22BBB939C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22BBB939C()
{
  v1 = *(*v0 + 104);
  sub_22BB30474(*(*v0 + 80));
  (*(v2 + 8))(v0 + v3);
  sub_22BB5413C();
  sub_22BB32FA4((v0 + *(v4 + 112)));
  sub_22BB5413C();
  sub_22BB32FA4((v0 + *(v5 + 120)));
  sub_22BB5413C();
  v7 = *(v0 + *(v6 + 128));

  sub_22BB5413C();
  sub_22BB32FA4((v0 + *(v8 + 136)));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22BBB9470()
{
  v1 = OBJC_IVAR____TtC23IntelligenceFlowRuntime20ShortcutsToolContext_toolbox;
  v2 = sub_22BDB9C14();
  sub_22BB2F330(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ShortcutsToolContext_clientActions);

  sub_22BBB9500(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ShortcutsToolContext_toolExecutionSession);
  v5 = *(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ShortcutsToolContext_candidateGenerationToolExecutionSessionSetupTask);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22BBB9530()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22BBB9568()
{
  v1 = sub_22BDB77D4();
  v2 = sub_22BB30444(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  sub_22BB36220();
  v7 = sub_22BDB77C4();
  v8 = sub_22BDBB104();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_22BB37F30();
    *v9 = 0;
    _os_log_impl(&dword_22BB2C000, v7, v8, "ODPEvent Publisher finished with .cancel", v9, 2u);
    sub_22BB30AF0();
  }

  (*(v4 + 8))(v0, v1);
  return sub_22BB37CB8();
}

uint64_t SnippetStreamingRouter.Scoped.__deallocating_deinit()
{
  v1 = v0[2];

  sub_22BBB9714(v0 + OBJC_IVAR____TtCC23IntelligenceFlowRuntime22SnippetStreamingRouter6Scoped_scope);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t sub_22BBB9714(uint64_t a1)
{
  v2 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BBB9770()
{
  sub_22BB343F4();
  sub_22BB34648();
  v1 = *(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_clientProxy);

  v2 = *(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_switchboard);

  sub_22BB325EC(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_configuration, &qword_27D8E6628, &qword_22BDCE5B0);
  v3 = *(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_clientActionIndexTask);

  return v0;
}

void sub_22BBB97EC()
{
  sub_22BB30F94();
  sub_22BB51360(v4);
  v5 = sub_22BDB4C34();
  v6 = sub_22BB30444(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  sub_22BB52EA4();
  sub_22BB31D8C();
  sub_22BBB9968(v9, v10);
  sub_22BB898A4();
  sub_22BB38B98();
  while (1)
  {
    sub_22BB53DA4(v11);
    if (v12)
    {
      v16 = *v26;
      swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_22BB6BB34();
      v18(v17);
      v19 = sub_22BB3A2A8();
      sub_22BBB99B0(v19, v20, v21);
      v22 = sub_22BB54294();
      v23(v22);
      goto LABEL_7;
    }

    v13 = sub_22BB2F578();
    v3(v13);
    sub_22BB31D8C();
    sub_22BBB9968(&qword_28142DD10, v14);
    sub_22BB337C8();
    v15 = sub_22BB37080();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v24 = sub_22BB3E3B4();
  v1(v24);
  v25 = sub_22BB58AEC();
  v3(v25);
LABEL_7:
  sub_22BB314EC();
}

uint64_t sub_22BBB9968(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BBB99B0(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_22BDB4C34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22BD2C0BC(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_22BBB9C60(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_22BBB9968(&qword_28142DD18, MEMORY[0x277D1C338]);
      v15 = sub_22BDBABA4();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_22BBB9968(&qword_28142DD10, MEMORY[0x277D1C338]);
        v17 = sub_22BDBABD4();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_22BD2D510();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_22BDBB734();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_22BBB9C60(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22BDB4C34();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_22BBE6DE0(&qword_27D8E6098, &unk_22BDCD5D0);
  v10 = sub_22BDBB304();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_22BBB9968(&qword_28142DD18, MEMORY[0x277D1C338]);
        result = sub_22BDBABA4();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_22BBB9F78(uint64_t a1, uint64_t a2)
{
  v154 = a2;
  v152 = _s13ValueExecutedVMa(0);
  v151 = *(v152 - 8);
  v3 = *(v151 + 64);
  v4 = MEMORY[0x28223BE20](v152);
  v171 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v170 = &v147 - v6;
  v179 = sub_22BDBA594();
  v159 = *(v179 - 8);
  v7 = *(v159 + 64);
  v8 = MEMORY[0x28223BE20](v179);
  v158 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v178 = &v147 - v10;
  v11 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v199 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v147 - v15;
  v205 = sub_22BDB80F4();
  v227 = *(v205 - 8);
  v17 = v227[8];
  v18 = MEMORY[0x28223BE20](v205);
  v202 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v214 = &v147 - v21;
  MEMORY[0x28223BE20](v20);
  v203 = &v147 - v22;
  v23 = sub_22BDB89F4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v207 = &v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_22BDB9954();
  v219 = *(v191 - 8);
  v27 = *(v219 + 8);
  MEMORY[0x28223BE20](v191);
  v190 = &v147 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_22BDB8D84();
  v224 = *(v169 - 8);
  v29 = v224[8];
  MEMORY[0x28223BE20](v169);
  v31 = &v147 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22BDB4C34();
  v225 = *(v32 - 8);
  v33 = v225[8];
  v34 = MEMORY[0x28223BE20](v32);
  v200 = &v147 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v229 = &v147 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v147 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v153 = &v147 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v226 = &v147 - v44;
  MEMORY[0x28223BE20](v43);
  v168 = &v147 - v45;
  v177 = sub_22BDB5404();
  v223 = *(v177 - 8);
  v46 = *(v223 + 64);
  v47 = MEMORY[0x28223BE20](v177);
  v187 = &v147 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v167 = &v147 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v166 = &v147 - v52;
  MEMORY[0x28223BE20](v51);
  v186 = &v147 - v53;
  v165 = sub_22BDB90B4();
  v222 = *(v165 - 8);
  v54 = *(v222 + 64);
  MEMORY[0x28223BE20](v165);
  v164 = &v147 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_22BDB87F4();
  v56 = *(v185 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v185);
  v184 = &v147 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_22BDB9B14();
  v59 = *(v196 - 8);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v196);
  v198 = &v147 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_22BBBB918(a1);
  v230 = MEMORY[0x277D84FA0];
  v63 = a1;
  v64 = *(a1 + 16);
  if (!v64)
  {

    v180 = MEMORY[0x277D84F90];
    goto LABEL_72;
  }

  v204 = v16;
  v197 = v62;
  v65 = *(sub_22BDB9B54() - 8);
  v195 = v63 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
  v194 = (v59 + 88);
  v150 = (v59 + 8);
  v189 = (v59 + 96);
  v193 = *MEMORY[0x277D1E6F8];
  v183 = *MEMORY[0x277D1E798];
  v163 = *MEMORY[0x277D1E7C0];
  v149 = (v224 + 4);
  v176 = (v223 + 16);
  v175 = (v223 + 88);
  v174 = *MEMORY[0x277D1CBF0];
  v173 = *MEMORY[0x277D1CBE8];
  v228 = (v225 + 1);
  v172 = (v223 + 8);
  v148 = (v224 + 1);
  v162 = (v56 + 32);
  v161 = (v222 + 8);
  v160 = (v56 + 8);
  v182 = (v219 + 32);
  v211 = v24 + 16;
  v210 = (v227 + 4);
  v224 = v227 + 11;
  LODWORD(v223) = *MEMORY[0x277D1DAD0];
  LODWORD(v222) = *MEMORY[0x277D1DA48];
  v221 = *MEMORY[0x277D1DAE8];
  v66 = v64;
  v220 = (v227 + 1);
  v209 = (v24 + 8);
  v227 = v225 + 2;
  v192 = *(v65 + 72);
  v188 = (v225 + 4);
  v181 = (v219 + 8);
  v157 = v159 + 16;
  v156 = v159 + 32;
  v155 = (v159 + 8);
  v180 = MEMORY[0x277D84F90];
  v67 = v205;
  v68 = v203;
  v69 = v187;
  v70 = v198;
  v206 = v23;
  v212 = v31;
  v213 = v24;
  v208 = v40;
  do
  {
    v201 = v66 - 1;
    sub_22BDB9B24();
    v71 = v196;
    v72 = (*v194)(v70, v196);
    if (v72 != v193)
    {
      if (v72 == v183)
      {
        v123 = v198;
        (*v189)(v198, v71);
        (*v162)(v184, v123, v185);
        v124 = v164;
        sub_22BDB87E4();
        v125 = v186;
        sub_22BDB9094();
        (*v161)(v124, v165);
        v126 = v168;
        sub_22BDB8794();
        v127 = v166;
        v128 = v177;
        (*v176)(v166, v125, v177);
        v129 = (*v175)(v127, v128);
        if (v129 != v174 && v129 != v173)
        {
          (*v228)(v126, v32);
          v144 = *v172;
          (*v172)(v186, v128);
          v144(v127, v128);
          v40 = v208;
LABEL_65:
          (*v160)(v184, v185);
          goto LABEL_66;
        }

        v131 = *v172;
        (*v172)(v127, v128);
        sub_22BBBCB1C();
        LODWORD(v219) = v132;
        v133 = *v228;
        (*v228)(v126, v32);
        v131(v186, v128);
        v67 = v205;
        v40 = v208;
        if (v219)
        {
          goto LABEL_65;
        }

        v219 = v133;
        v134 = v184;
        sub_22BDB8794();
        v135 = v226;
        sub_22BBB97EC();
        v219(v135, v32);
        (*v160)(v134, v185);
      }

      else
      {
        if (v72 != v163)
        {
          (*v150)(v198, v71);
          goto LABEL_68;
        }

        v136 = v198;
        (*v189)(v198, v71);
        (*v149)(v31, v136, v169);
        v137 = v167;
        sub_22BDB8D44();
        sub_22BDB8174();
        v138 = v177;
        (*v176)(v69, v137, v177);
        v139 = (*v175)(v69, v138);
        if (v139 == v174 || v139 == v173)
        {
          v141 = *v172;
          (*v172)(v69, v138);
          sub_22BBBCB1C();
          LODWORD(v219) = v142;
          v218 = *v228;
          v218(v40, v32);
          v141(v167, v138);
          if ((v219 & 1) == 0)
          {
            sub_22BDB8174();
            v143 = v226;
            sub_22BBB97EC();
            v218(v143, v32);
          }

          (*v148)(v31, v169);
          v67 = v205;
        }

        else
        {
          (*v228)(v40, v32);
          v145 = *v172;
          (*v172)(v167, v138);
          (*v148)(v31, v169);
          v145(v187, v138);
        }
      }

LABEL_66:
      v69 = v187;
      goto LABEL_68;
    }

    (*v189)(v70, v71);
    (*v182)(v190, v70, v191);
    v73 = sub_22BDB9914();
    v217 = *(v73 + 16);
    if (v217)
    {
      v74 = 0;
      v215 = v73 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
      v75 = v207;
      v76 = v204;
      v216 = v73;
      while (1)
      {
        if (v74 >= *(v73 + 16))
        {
          __break(1u);
          goto LABEL_71;
        }

        (*(v24 + 16))(v75, v215 + *(v24 + 72) * v74, v23);
        v77 = v75;
        sub_22BDB89D4();
        v78 = v214;
        (*v210)(v214, v68, v67);
        v218 = *v224;
        v79 = (v218)(v78, v67);
        v219 = *v220;
        v219(v78, v67);
        if (v79 == v223 || v79 == v222 || v79 == v221)
        {
          v82 = v76;
          v83 = v229;
          v84 = v230;
          sub_22BDB8174();
          if (!*(v84 + 16))
          {
            (*v228)(v83, v32);
            v23 = v206;
            (*v209)(v77, v206);
            v75 = v77;
            v31 = v212;
            v24 = v213;
            v76 = v82;
LABEL_31:
            v40 = v208;
            goto LABEL_32;
          }

          v85 = *(v84 + 40);
          sub_22BCD3F54(&qword_28142DD18, MEMORY[0x277D1C338]);
          v86 = sub_22BDBABA4();
          v87 = ~(-1 << *(v84 + 32));
          do
          {
            v88 = v86 & v87;
            if (((*(v84 + 56 + (((v86 & v87) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v86 & v87)) & 1) == 0)
            {
              (*v228)(v229, v32);
              v75 = v207;
              v23 = v206;
              (*v209)(v207, v206);
              v76 = v204;
              v67 = v205;
              v68 = v203;
              v31 = v212;
              v24 = v213;
              goto LABEL_31;
            }

            v90 = v225;
            v89 = v226;
            v91 = v225[2];
            v91(v226, *(v84 + 48) + v225[9] * v88, v32);
            sub_22BCD3F54(&qword_28142DD10, MEMORY[0x277D1C338]);
            v92 = sub_22BDBABD4();
            v93 = v90[1];
            v93(v89, v32);
            v86 = v88 + 1;
          }

          while ((v92 & 1) == 0);
          v93(v229, v32);
          v94 = v202;
          sub_22BDB89D4();
          v95 = v94;
          v67 = v205;
          v96 = (v218)(v95, v205);
          v98 = v96 == v223 || v96 == v222 || v96 == v221;
          v99 = v204;
          if (v98)
          {
            v100 = v199;
            sub_22BDB8174();
            v102 = v100;
            v67 = v205;
            v101 = 0;
          }

          else
          {
            v101 = 1;
            v102 = v199;
          }

          v24 = v213;
          sub_22BB336D0(v102, v101, 1, v32);
          v219(v202, v67);
          sub_22BBCD82C(v102, v99, &qword_27D8E27C0, &qword_22BDBCDF0);
          if (sub_22BB3AA28(v99, 1, v32) == 1)
          {
            v75 = v207;
            v103 = v206;
            (*v209)(v207, v206);
            v23 = v103;
            sub_22BB58728(v99, &qword_27D8E27C0, &qword_22BDBCDF0);
            v68 = v203;
            v40 = v208;
            v76 = v99;
          }

          else
          {
            v104 = v200;
            (*v188)(v200, v99, v32);
            if (*(v197 + 16) && (sub_22BBDAE68(), v104 = v200, (v106 & 1) != 0))
            {
              v107 = v159;
              v108 = v158;
              v109 = v179;
              (*(v159 + 16))(v158, *(v197 + 56) + *(v159 + 72) * v105, v179);
              v110 = *(v107 + 32);
              v111 = v178;
              v110(v178, v108, v109);
              sub_22BCB3AC0();
              v23 = v206;
              if (!v112)
              {
                (*v155)(v111, v109);
                v93(v200, v32);
                v75 = v207;
                (*v209)(v207, v23);
                v67 = v205;
                v68 = v203;
                v31 = v212;
                v40 = v208;
                v76 = v204;
                goto LABEL_32;
              }

              v113 = v112;
              v114 = v170;
              sub_22BDB8174();
              v115 = v152;
              v91((v114 + *(v152 + 20)), v200, v32);
              *(v114 + *(v115 + 24)) = v113;
              sub_22BCD3F9C(v114, v171);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v76 = v204;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v120 = *(v180 + 16);
                sub_22BD90B38();
                v180 = v121;
              }

              v117 = *(v180 + 16);
              v40 = v208;
              if (v117 >= *(v180 + 24) >> 1)
              {
                sub_22BD90B38();
                v180 = v122;
              }

              sub_22BCD3FF4(v170, _s13ValueExecutedVMa);
              (*v155)(v178, v179);
              v93(v200, v32);
              v118 = v207;
              (*v209)(v207, v23);
              v119 = v180;
              *(v180 + 16) = v117 + 1;
              v75 = v118;
              sub_22BCD404C(v171, v119 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v117);
              v67 = v205;
              v68 = v203;
            }

            else
            {
              v93(v104, v32);
              v75 = v207;
              v23 = v206;
              (*v209)(v207, v206);
              v68 = v203;
              v40 = v208;
              v76 = v204;
            }
          }
        }

        else
        {
          (*v209)(v77, v23);
          v24 = v213;
          v75 = v77;
        }

        v31 = v212;
LABEL_32:
        ++v74;
        v73 = v216;
        if (v74 == v217)
        {

          v69 = v187;
          goto LABEL_64;
        }
      }
    }

LABEL_64:
    (*v181)(v190, v191);
LABEL_68:
    v70 = v198;
    v66 = v201;
  }

  while (v201);
LABEL_71:

LABEL_72:

  return v180;
}

uint64_t sub_22BBBB918(uint64_t a1)
{
  v2 = sub_22BDBA594();
  v3 = sub_22BB30444(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v10 = v9 - v8;
  v69 = sub_22BDB4C34();
  v11 = sub_22BB30444(v69);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v78 = v17 - v16;
  v18 = sub_22BBE6DE0(&qword_27D8E3F20, &qword_22BDC1508);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v61 - v20;
  v22 = _s12ValueFetcherV14ValueStatementVMa();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BB30574();
  v77 = v25 - v24;
  v26 = sub_22BDB9B54();
  v27 = sub_22BB30444(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BB30574();
  v79 = v32 - v31;
  v33 = *(a1 + 16);
  if (!v33)
  {
    return MEMORY[0x277D84F98];
  }

  v35 = *(v30 + 16);
  v34 = v30 + 16;
  v36 = v13;
  v37 = a1 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
  v74 = *(v34 + 56);
  v72 = (v36 + 16);
  v68 = (v5 + 16);
  v61[1] = v5 + 32;
  v62 = v36;
  v64 = (v36 + 8);
  v75 = (v34 - 8);
  v76 = v35;
  v61[0] = v5 + 40;
  v38 = MEMORY[0x277D84F98];
  v66 = v2;
  v67 = v5;
  v63 = v21;
  v71 = v22;
  v65 = v26;
  v73 = v34;
  while (1)
  {
    v39 = v79;
    v76(v79, v37, v26);
    sub_22BBBBEBC(v21);
    if (sub_22BB3AA28(v21, 1, v22) == 1)
    {
      (*v75)(v39, v26);
      sub_22BB58780(v21, &qword_27D8E3F20, &qword_22BDC1508);
      goto LABEL_15;
    }

    v26 = v10;
    v40 = v77;
    sub_22BCBBA90(v21, v77);
    v41 = v69;
    v70 = *v72;
    v70(v78, v40);
    (*v68)(v26, v40 + *(v22 + 20), v2);
    swift_isUniquelyReferenced_nonNull_native();
    v80 = v38;
    sub_22BBDAE68();
    if (__OFADD__(*(v38 + 16), (v43 & 1) == 0))
    {
      break;
    }

    v44 = v42;
    v45 = v43;
    sub_22BBE6DE0(&qword_27D8E3F28, &qword_22BDC1510);
    if (sub_22BDBB4A4())
    {
      sub_22BBDAE68();
      v10 = v26;
      v48 = v41;
      v22 = v71;
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_21;
      }

      v44 = v46;
    }

    else
    {
      v10 = v26;
      v48 = v41;
      v22 = v71;
    }

    v38 = v80;
    if (v45)
    {
      v49 = sub_22BB32BFC();
      v2 = v66;
      (*(v45 + 40))(v49, v10, v66);
      (*v64)(v78, v48);
      sub_22BCBBAF4(v77);
      v50 = sub_22BB33D40();
      v51(v50);
    }

    else
    {
      *(v80 + 8 * (v44 >> 6) + 64) |= 1 << v44;
      v52 = v62;
      v53 = v78;
      (v70)(*(v38 + 48) + *(v62 + 72) * v44, v78, v48);
      v54 = sub_22BB32BFC();
      v2 = v66;
      (*(v45 + 32))(v54, v10, v66);
      (*(v52 + 8))(v53, v48);
      sub_22BCBBAF4(v77);
      v55 = sub_22BB33D40();
      v56(v55);
      v57 = *(v38 + 16);
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_20;
      }

      *(v38 + 16) = v59;
      v22 = v71;
    }

    v21 = v63;
LABEL_15:
    v37 += v74;
    if (!--v33)
    {
      return v38;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t _s12ValueFetcherV14ValueStatementVMa()
{
  result = qword_28142D020;
  if (!qword_28142D020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BBBBEBC@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v1 = sub_22BDB5404();
  v107 = *(v1 - 8);
  v108 = v1;
  v2 = *(v107 + 64);
  MEMORY[0x28223BE20](v1);
  v106 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BDB90B4();
  v95 = *(v4 - 8);
  v96 = v4;
  v5 = *(v95 + 64);
  MEMORY[0x28223BE20](v4);
  v93 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v105 = &v89 - v9;
  v10 = sub_22BDB87F4();
  v97 = *(v10 - 8);
  v98 = v10;
  v11 = *(v97 + 64);
  MEMORY[0x28223BE20](v10);
  v94 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDBA634();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v100 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22BDBA594();
  v110 = *(v16 - 8);
  v17 = *(v110 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v92 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v90 = &v89 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v91 = &v89 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v99 = (&v89 - v25);
  MEMORY[0x28223BE20](v24);
  v101 = &v89 - v26;
  v27 = sub_22BBE6DE0(&qword_27D8E3F30, qword_22BDC1518);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v109 = &v89 - v29;
  v30 = sub_22BDB86E4();
  v103 = *(v30 - 8);
  v31 = *(v103 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v102 = &v89 - v35;
  v36 = sub_22BDB8304();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v89 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22BDB9B14();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v89 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB9B24();
  v46 = (*(v42 + 88))(v45, v41);
  if (v46 != *MEMORY[0x277D1E708])
  {
    if (v46 != *MEMORY[0x277D1E798])
    {
      v79 = _s12ValueFetcherV14ValueStatementVMa();
      sub_22BB336D0(v104, 1, 1, v79);
      return (*(v42 + 8))(v45, v41);
    }

    (*(v42 + 96))(v45, v41);
    v53 = v97;
    v52 = v98;
    v54 = v94;
    (*(v97 + 32))(v94, v45, v98);
    v55 = v93;
    sub_22BDB87E4();
    v56 = v106;
    sub_22BDB9094();
    (*(v95 + 8))(v55, v96);
    v57 = v105;
    sub_22BCB5AAC(v105);
    (*(v107 + 8))(v56, v108);
    v58 = sub_22BB3AA28(v57, 1, v16);
    v59 = v104;
    if (v58 == 1)
    {
      (*(v53 + 8))(v54, v52);
      sub_22BB58780(v57, &qword_27D8E2668, &unk_22BDBCCD0);
      v50 = _s12ValueFetcherV14ValueStatementVMa();
      v51 = v59;
      goto LABEL_7;
    }

    v81 = *(v110 + 32);
    v82 = v92;
    v81(v92, v57, v16);
    sub_22BDB8794();
    (*(v53 + 8))(v54, v52);
    v83 = _s12ValueFetcherV14ValueStatementVMa();
    v81((v59 + *(v83 + 20)), v82, v16);
    v51 = v59;
LABEL_21:
    v60 = 0;
    v50 = v83;
    return sub_22BB336D0(v51, v60, 1, v50);
  }

  (*(v42 + 96))(v45, v41);
  (*(v37 + 32))(v40, v45, v36);
  v47 = sub_22BDB82F4();
  v48 = v109;
  sub_22BC74158(v47, v109);

  v49 = v40;
  if (sub_22BB3AA28(v48, 1, v30) != 1)
  {
    v61 = v30;
    v97 = v37;
    v98 = v36;
    v62 = v102;
    (*(v103 + 32))(v102, v48, v30);
    v63 = *(sub_22BDB82F4() + 16);

    v64 = v104;
    v89 = v49;
    if (v63 < 2)
    {
      v84 = v99;
      sub_22BDB86D4();
      v66 = v110;
    }

    else
    {
      v65 = v91;
      sub_22BDB86D4();
      sub_22BDBA524();
      v66 = v110;
      (*(v110 + 8))(v65, v16);
      v67 = sub_22BDB82F4();
      v68 = *(v67 + 16);
      if (v68)
      {
        v109 = v61;
        v111 = MEMORY[0x277D84F90];
        sub_22BD27A40();
        v69 = v111;
        v70 = *(v103 + 16);
        v71 = *(v103 + 80);
        v96 = v67;
        v72 = v67 + ((v71 + 32) & ~v71);
        v106 = *(v103 + 72);
        v107 = v70;
        v108 = v103 + 16;
        v73 = (v103 + 8);
        v105 = v66 + 32;
        v74 = v90;
        do
        {
          v75 = v16;
          v76 = v109;
          (v107)(v34, v72, v109);
          sub_22BDB86D4();
          (*v73)(v34, v76);
          v111 = v69;
          v77 = *(v69 + 16);
          if (v77 >= *(v69 + 24) >> 1)
          {
            sub_22BD27A40();
            v69 = v111;
          }

          *(v69 + 16) = v77 + 1;
          v78 = v69 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v77;
          v16 = v75;
          (*(v110 + 32))(v78, v74, v75);
          v72 += v106;
          --v68;
        }

        while (v68);

        v64 = v104;
        v61 = v109;
        v66 = v110;
      }

      else
      {
      }

      sub_22BDBA3A4();
      v85 = swift_allocBox();
      sub_22BDBA374();
      v84 = v99;
      *v99 = v85;
      (*(v66 + 104))(v84, *MEMORY[0x277D729E0], v16);
      v62 = v102;
    }

    v86 = *(v66 + 32);
    v87 = v101;
    v86(v101, v84, v16);
    v88 = v89;
    sub_22BDB8174();
    (*(v103 + 8))(v62, v61);
    (*(v97 + 8))(v88, v98);
    v83 = _s12ValueFetcherV14ValueStatementVMa();
    v86((v64 + *(v83 + 20)), v87, v16);
    v51 = v64;
    goto LABEL_21;
  }

  (*(v37 + 8))(v40, v36);
  sub_22BB58780(v48, &qword_27D8E3F30, qword_22BDC1518);
  v50 = _s12ValueFetcherV14ValueStatementVMa();
  v51 = v104;
LABEL_7:
  v60 = 1;
  return sub_22BB336D0(v51, v60, 1, v50);
}

uint64_t sub_22BBBC9C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22BDB4C34();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_22BDBA594();
    v10 = a1 + *(a4 + 20);
  }

  return sub_22BB336D0(v10, a2, a2, v9);
}

uint64_t sub_22BBBCA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BDB4C34();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_22BDBA594();
    v8 = a1 + *(a3 + 20);
  }

  return sub_22BB3AA28(v8, a2, v7);
}

void sub_22BBBCB1C()
{
  sub_22BB30F94();
  sub_22BB97D98();
  v1 = sub_22BDB4C34();
  v2 = sub_22BB30444(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  sub_22BC548EC();
  if (v5)
  {
    v6 = *(v0 + 40);
    sub_22BB3A594();
    sub_22BB8E56C(v7, v8);
    sub_22BC54250();
    sub_22BB512D4();
    do
    {
      sub_22BB3E46C(v9);
      if (!v10)
      {
        break;
      }

      v11 = sub_22BBC96AC();
      v12(v11);
      sub_22BB3A594();
      sub_22BB8E56C(&qword_28142DD10, v13);
      sub_22BC5421C();
      v14 = sub_22BC541FC();
      v15(v14);
      v9 = v0 + 1;
    }

    while ((v6 & 1) == 0);
  }

  sub_22BB314EC();
}

void sub_22BBBCC48()
{
  sub_22BB2F35C();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 176);

    MEMORY[0x2822009F8](sub_22BBBCD64, v9, 0);
  }
}

uint64_t sub_22BBBCD64()
{
  sub_22BB2F35C();
  v1 = v0[34];

  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[24];

  sub_22BB360FC();

  return v7();
}

void sub_22BBBCDF4()
{
  sub_22BB2F35C();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 792);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = v3[98];
    v10 = v3[97];
    v11 = v3[45];
    sub_22BB325EC((v3 + 2), &qword_27D8E65D8, &qword_22BDCE520);

    MEMORY[0x2822009F8](sub_22BBBDED8, v11, 0);
  }
}

uint64_t sub_22BBBCF40()
{
  sub_22BBBCF98();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BBBCF98()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_commandContinuation;
  v4 = sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_fastCheckInjectionEnabledState);

  v6 = *(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_encoder);

  v7 = *(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_decoder);

  return v0;
}

uint64_t sub_22BBBD044()
{
  sub_22BBBE088();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BBBD09C()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = v1;
  v3 = *(v1 + 72);
  v4 = *v0;
  sub_22BB3052C();
  *v5 = v4;

  sub_22BB32FA4((v2 + 16));
  sub_22BB2F09C();

  return v6();
}

uint64_t sub_22BBBD184()
{
  sub_22BB2F0D4();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_22BB3052C();
  *v3 = v2;

  sub_22BB2F09C();

  return v4();
}

void sub_22BBBD26C()
{
  v1 = v0[167];
  v2 = v0[166];
  v3 = v0[165];
}

uint64_t sub_22BBBD288()
{
  v2 = *(v0 - 152);
  v3 = *(v0 - 184);
  v4 = *(v0 - 88);

  return sub_22BDBB664();
}

uint64_t sub_22BBBD2AC(uint64_t result)
{
  *(result + 16) = sub_22BB8AE24;
  *(result + 24) = v1;
  return result;
}

void sub_22BBBD2C4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_22BBBD2DC()
{
  v1 = v0[6];
  *(v0[3] + 112) = 1;
  sub_22BDB63D4();
  v2 = sub_22BDB77C4();
  v3 = sub_22BDBB104();
  if (sub_22BB333C0(v3))
  {
    v4 = sub_22BB37F30();
    sub_22BB360F0(v4);
    sub_22BB2F0A8(&dword_22BB2C000, v5, v6, "Setting up all services succeeded");
    sub_22BB35600();
  }

  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  v11 = v0[9];
  v10 = v0[10];
  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[4];

  (*(v13 + 8))(v12, v14);
  sub_22BBBD410();

  sub_22BB2F09C();

  return v15();
}

void sub_22BBBD410()
{
  sub_22BB30F94();
  v32 = v0;
  v1 = sub_22BDB7764();
  v2 = sub_22BB30444(v1);
  v31 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v8 = v7 - v6;
  v33 = sub_22BDB7734();
  v9 = sub_22BB30444(v33);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v16 = v15 - v14;
  v17 = sub_22BDB7754();
  v18 = sub_22BB30444(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  v25 = v24 - v23;
  sub_22BDB6114();
  v26 = sub_22BDB7744();
  sub_22BDB7774();
  v30 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {

    sub_22BDB77B4();

    if ((*(v31 + 88))(v8, v1) == *MEMORY[0x277D85B00])
    {
      v27 = "[Error] Interval already ended";
    }

    else
    {
      (*(v31 + 8))(v8, v1);
      v27 = "";
    }

    v28 = sub_22BB37F30();
    *v28 = 0;
    v29 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v26, v30, v29, v32, v27, v28, 2u);
    sub_22BB3A3D8();
  }

  (*(v11 + 8))(v16, v33);
  (*(v20 + 8))(v25, v17);
  sub_22BB314EC();
}

uint64_t sub_22BBBD69C()
{
  sub_22BB2F35C();
  sub_22BB34764();
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v1 + 384);
  *v4 = *v2;
  *(v3 + 392) = v0;

  sub_22BB33218();
  v7 = *(v6 + 104);
  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BBBD7B0()
{
  sub_22BB72224();
  sub_22BB72FA8(v1, v0);
  v7 = type metadata accessor for StandardPlanner.StandardPlannerAction(0);
  sub_22BB31814(v0, 1, v7);
  if (v8)
  {
    sub_22BB3A8A8();
    v9 = *(v3 + 16);
    v10 = sub_22BB31F54();
    v11(v10);
    v12 = sub_22BDB77C4();
    v13 = sub_22BDBB114();
    v14 = sub_22BB3805C(v13);
    v16 = v2[36];
    v15 = v2[37];
    v17 = v2[35];
    if (v14)
    {
      v102 = sub_22BB315E4();
      v107 = sub_22BB314C8();
      sub_22BB70C1C(4.8149e-34);
      sub_22BB3AFA0();
      sub_22BB8C540(v18, 255, v19);
      v20 = sub_22BDBB684();
      v21 = *(v4 + 8);
      v22 = sub_22BB2F0E0();
      v23(v22);
      v24 = sub_22BB37364();
      v25(v24, v17);
      v26 = sub_22BB3CB04();
      sub_22BB32EE0(v26, v27, v28);
      sub_22BB3935C();

      *(v102 + 4) = v20;
      sub_22BB3FE04(&dword_22BB2C000, v29, v30, "unhandled event payload: %s", v31, v32, v33, v34, v97, v98, v99, v100, v101, v102, v103);
      sub_22BB32FA4(v107);
      sub_22BB30AF0();
      sub_22BB35600();

      (*(v104 + 8))();
    }

    else
    {
      v41 = v2[17];
      v42 = v2[14];
      v43 = v2[15];

      v44 = sub_22BB37364();
      v45(v44, v17);
      v46 = *(v43 + 8);
      v47 = sub_22BB2F3F0();
      v48(v47);
    }

    v49 = v2[38];
    v50 = v2[35];
    v51 = v2[30];
    v52 = v2[19];
    sub_22BBC788C();
    sub_22BB33E40();
    sub_22BB8C540(v53, 255, v54);
    v55 = sub_22BB37F10();
    sub_22BB3961C(v55, v56);
    v57 = sub_22BB331D4();
    v15(v57);
LABEL_9:
    sub_22BB58728(v51, &qword_27D8E6320, &qword_22BDCDD00);
    v59 = v2[46];
    v58 = v2[47];
    v60 = v2[45];
    v62 = v2[41];
    v61 = v2[42];
    sub_22BB35C30();
    sub_22BBBD410();

    sub_22BB31044();
    sub_22BB374A0();

    __asm { BRAA            X1, X16 }
  }

  v36 = v2[29];
  v35 = v2[30];
  sub_22BC5E5C4();
  sub_22BB31F54();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v70 = v2[36];
      v105 = v2[35];
      v106 = v2[38];
      v51 = v2[30];
      v71 = v2[23];
      v72 = v2[21];
      v74 = v2[19];
      v73 = v2[20];
      (*(v71 + 32))(v2[24], v2[29], v2[22]);
      sub_22BDB9784();
      sub_22BDB9794();
      sub_22BDB4B84();
      (*(v73 + 8))(v72, v74);
      swift_willThrow();
      v75 = *(v71 + 8);
      v76 = sub_22BB35464();
      v77(v76);
      (*(v70 + 8))(v106, v105);
      goto LABEL_9;
    case 2:
      v65 = sub_22BB6BE80();
      v36 = v2[30];
      (*(v66 + 8))(v65);
      goto LABEL_20;
    case 3:
    case 5:
      v38 = v2[13];
      sub_22BB58728(v2[30], &qword_27D8E6320, &qword_22BDCDD00);
      swift_task_alloc();
      sub_22BB30B34();
      v2[50] = v39;
      *v39 = v40;
      sub_22BB2F26C(v39);
      goto LABEL_27;
    case 4:
      v91 = swift_task_alloc();
      v2[53] = v91;
      *v91 = v2;
      sub_22BB692F8(v91);
      sub_22BB374A0();

      return sub_22BD3B850();
    case 6:
      v93 = v2[13];
      swift_task_alloc();
      sub_22BB30B34();
      v2[59] = v94;
      *v94 = v95;
      sub_22BB34128(v94);
LABEL_27:
      sub_22BB374A0();

      result = sub_22BD3DE98();
      break;
    case 7:
      v78 = v2[18];
      sub_22BDB63D4();
      sub_22BDB77C4();
      v79 = sub_22BDBB0F4();
      if (sub_22BB333C0(v79))
      {
        v80 = sub_22BB37F30();
        sub_22BB360F0(v80);
        sub_22BB2F0A8(&dword_22BB2C000, v81, v82, "Received STOP request. Not doing work");
        sub_22BB35600();
      }

      sub_22BD42530();
      v83 = *(v6 + 8);
      v84 = sub_22BB32E04();
      v85(v84);
      v86 = *(v5 + 8);
      v87 = sub_22BB2F0E0();
      v88(v87);
LABEL_20:
      sub_22BB58728(v36, &qword_27D8E6320, &qword_22BDCDD00);
      sub_22BB391D4();
      sub_22BBBD410();

      sub_22BB39738();
      sub_22BB374A0();

      __asm { BRAA            X2, X16 }

      return result;
    default:
      sub_22BB898C8();
      v67 = swift_task_alloc();
      v2[56] = v67;
      *v67 = v2;
      sub_22BB3B3E0(v67);
      sub_22BB374A0();

      result = sub_22BD3BC4C();
      break;
  }

  return result;
}

uint64_t sub_22BBBDEB0(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BBBDED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v14 = *(v13 + 752);
  v15 = *(v13 + 536);
  v16 = *(v13 + 480);
  sub_22BDB6104();
  sub_22BDB7744();
  sub_22BD64580();
  sub_22BDBB1C4();
  if (sub_22BD646BC())
  {
    v17 = *(v13 + 752);
    v18 = *(v13 + 864);
    v19 = *(v13 + 392);
    v20 = *(v13 + 368);
    v21 = *(v13 + 376);

    sub_22BDB77B4();

    v22 = *(v21 + 88);
    v23 = sub_22BB331D4();
    if (v24(v23) == v18)
    {
      v25 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v13 + 376) + 8))(*(v13 + 392), *(v13 + 368));
      v25 = "Accept End";
    }

    v26 = *(v13 + 480);
    v27 = sub_22BB37F30();
    *v27 = 0;
    sub_22BDB7714();
    sub_22BD6424C();
    _os_signpost_emit_with_name_impl(v28, v29, v30, v31, v32, v25, v27, 2u);
    sub_22BB30458();
  }

  v33 = *(v13 + 768);
  v34 = *(v13 + 760);
  v35 = *(v13 + 752);
  v36 = *(v13 + 744);
  v37 = *(v13 + 736);
  v56 = *(v13 + 584);
  v38 = *(v13 + 536);
  v39 = *(v13 + 504);
  v40 = *(v13 + 480);
  v41 = *(v13 + 448);

  v42 = sub_22BB32E04();
  v34(v42);
  v43 = sub_22BB2F0E0();
  v37(v43);
  sub_22BBBEB48();
  sub_22BB34648();
  sub_22BD6484C();
  v44 = *(MEMORY[0x277D85798] + 4);
  swift_task_alloc();
  sub_22BB30B34();
  *(v13 + 728) = v45;
  *v45 = v46;
  sub_22BB6BBD8();
  sub_22BB33430();

  return MEMORY[0x2822003E8](v47, v48, v49, v50, v51, v52, v53, v54, v56, a10, a11, a12);
}

uint64_t sub_22BBBE088()
{
  v1 = v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_signpostIntervalState;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_signpostIntervalState));
  sub_22BD78AF0((v1 + 8));
  os_unfair_lock_unlock(v1);
  sub_22BBBE964(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_sessionId, MEMORY[0x277D1D2C8]);
  sub_22BBBE964(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_spanMetadata, type metadata accessor for SpanMetadata);
  v2 = OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_commandContinuation;
  v3 = sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  sub_22BB2F330(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(v1 + 8);

  return v0;
}

uint64_t sub_22BBBE180()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  v3[18] = v0;

  if (v0)
  {
    v9 = v3[3];
    v10 = sub_22BD3A520;
  }

  else
  {
    v11 = v3[16];
    v12 = v3[3];

    v10 = sub_22BBBD2DC;
    v9 = v12;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22BBBE290@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + 3664);
  v5 = *(v2 + 2496);
  *(a1 + 16) = v1;
  *(*(v3 - 216) + 16) = 1;
  return result;
}

uint64_t sub_22BBBE2AC()
{
  sub_22BB35F54();
  v2 = v1(0);
  sub_22BB2F330(v2);
  v4 = *(v3 + 32);
  v5 = sub_22BB31F54();
  v6(v5);
  return v0;
}

uint64_t sub_22BBBE304()
{
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v5 = v0[33];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[29];
  v13 = v0[28];
  v14 = v0[27];
  v15 = v0[24];
  v16 = v0[23];
  v17 = v0[20];
  v18 = v0[19];
  v19 = v0[16];
  v20 = v0[15];
  v9 = v0[12];
  v21 = v0[10];
  v10 = v0[8];
  v22 = v0[7];
  v11 = v0[2];

  return type metadata accessor for EntitySearchableItemCandidateGenerator();
}

uint64_t sub_22BBBE374()
{
  sub_22BB35850();
  v4 = v3;
  v5 = *(v3 + 312);
  v6 = *v2;
  sub_22BB3052C();
  *v7 = v6;

  if (v1)
  {
    v8 = sub_22BB31288();
    v9(v8);
    v10 = sub_22BD73E70;
  }

  else
  {
    *(v4 + 320) = v0;
    v10 = sub_22BBBE494;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_22BBBE494()
{
  v2 = v0[40];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v7 = sub_22BBDB920();
  sub_22BB69338();
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_22BB53E14(v9);
  v10 = *v7;
  sub_22BD790CC(v2, sub_22BB9614C, v1);

  v11 = sub_22BB324FC();
  sub_22BB58728(v11, &qword_27D8E6518, &unk_22BDCE420);
  (*(v4 + 8))(v7, v1);
  sub_22BB32FA4(v0 + 2);

  sub_22BB2F09C();

  return v12();
}

uint64_t sub_22BBBE62C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22BB36C80(a1, a2, a3, a4);
  sub_22BB2F330(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_22BBBE6D0()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 144);
  v4 = *(v0 - 88);

  return sub_22BDBB664();
}

void sub_22BBBE6F4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, os_log_type_t a17)
{

  _os_log_impl(a1, v17, a17, a4, v18, 0x16u);
}

uint64_t sub_22BBBE764()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BBBE790()
{
  v1 = v0[147];
  v2 = v0[97];
  v3 = v0[46];
  v4 = v0[19];
  v5 = v0[17];
  v6 = v0[14];
  return v0[12];
}

uint64_t sub_22BBBE7C0(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BBBE7DC()
{

  return swift_arrayDestroy();
}

void sub_22BBBE7F8()
{
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[102];
}

uint64_t sub_22BBBE80C()
{

  return sub_22BDB9584();
}

uint64_t sub_22BBBE860(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BBBE888(uint64_t result)
{
  *(result + 16) = sub_22BB8AE24;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BBBE8A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BBBE8EC()
{
  result = v0[568];
  v2 = v0[550];
  v3 = v0[547];
  v4 = v0[546];
  v5 = v0[545];
  return result;
}

uint64_t sub_22BBBE904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BB2F330(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BBBE964(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BBBE9BC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_22BBE6DE0(a1, a2);
  sub_22BB30434(v5);
  v7 = *(v6 + 80);
  v8 = (v7 + 16) & ~v7;
  v10 = *(v9 + 64);
  v11 = a3(0);
  if (!sub_22BB3AA28(v3 + v8, 1, v11))
  {
    sub_22BB30474(v11);
    (*(v12 + 8))(v3 + v8, v11);
  }

  return MEMORY[0x2821FE8E8](v3, v8 + v10, v7 | 7);
}

uint64_t sub_22BBBEAA0()
{
  v3 = *(v1 - 136);

  return sub_22BB67984(v0 + 1368, v0 + 2352, v0 + 2344, v0 + 2312);
}

uint64_t sub_22BBBEAD0()
{
  v2 = v0[526];
  v3 = v0[522];
  v4 = v0[521];
  v5 = v0[519];
  *(v1 - 160) = v0[312];
  *(v1 - 152) = v4;
  result = v2;
  v7 = *(v1 - 256);
  return result;
}

void sub_22BBBEAFC()
{
  v1 = v0[163];
  v2 = v0[161];
  v3 = v0[142];
  v4 = v0[136];
  v5 = v0[135];
  v6 = v0[132];
  v7 = v0[131];
}

uint64_t sub_22BBBEB28(uint64_t result)
{
  *(result + 16) = sub_22BB89FA0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BBBEB8C()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_22BBBEBD8()
{
  v2 = *(v0 - 256);
  v3 = STACK[0x478];
  v4 = STACK[0x468];
  v5 = STACK[0x460];
  v6 = STACK[0x458];
  v7 = STACK[0x450];
  v8 = STACK[0x448];
  v9 = *(v0 - 144);
  v10 = STACK[0x440];

  return sub_22BDB5D54();
}

uint64_t sub_22BBBEC20()
{
  result = v0;
  v3 = *(v1 - 176);
  return result;
}

uint64_t sub_22BBBEC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x277D1D2C8];
  sub_22BBBE904(a1, v4 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_sessionId, MEMORY[0x277D1D2C8]);
  sub_22BBBE904(a2, v4 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_spanMetadata, type metadata accessor for SpanMetadata);
  v10 = OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_commandContinuation;
  v11 = sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v4 + v10, a3, v11);
  (*(v12 + 8))(a3, v11);
  sub_22BBBE964(a2, type metadata accessor for SpanMetadata);
  sub_22BBBE964(a1, v9);
  v13 = v4 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_signpostIntervalState;
  *v13 = 0;
  *(v13 + 8) = a4;
  return v4;
}

uint64_t sub_22BBBED88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_22BBBEC38(a1, a2, a3, a4);
  return v11;
}

uint64_t sub_22BBBEDFC(uint64_t a1)
{
  v4 = *(a1 + 48);
  *v1 = *(v2 - 160);

  return sub_22BDBB564();
}

uint64_t sub_22BBBEE2C()
{

  return swift_slowAlloc();
}

uint64_t sub_22BBBEE60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22BB36C80(a1, a2, a3, a4);
  sub_22BB30ED8(v5);
  v7 = *(v6 + 16);
  v8 = sub_22BB31F54();
  v9(v8);
  return v4;
}

uint64_t sub_22BBBEED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v30 = a8;
  v13 = sub_22BBE6DE0(&qword_27D8E6740, &qword_22BDCE878);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v29 - v15;
  v17 = sub_22BBE6DE0(&qword_27D8E34D0, &qword_22BDBEF30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v29 - v19;
  v21 = sub_22BBE6DE0(&qword_27D8E6A80, &unk_22BDC0E70);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v29 - v23;
  sub_22BDB4334();
  v25 = sub_22BDB4354();
  sub_22BB336D0(v24, 0, 1, v25);
  sub_22BDB7474();
  sub_22BDB7604();
  v26 = sub_22BDB7614();
  sub_22BB336D0(v20, 0, 1, v26);
  sub_22BDB7484();
  v27 = sub_22BDB7564();
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = v29;
  v37 = v30;
  sub_22BDB76D4();
  sub_22BB336D0(v16, 0, 1, v27);
  return sub_22BDB74C4();
}

uint64_t sub_22BBBF120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a6;
  v23 = a8;
  v28 = a7;
  v21[0] = a2;
  v21[1] = a4;
  v10 = sub_22BBE6DE0(&qword_27D8E6748, &qword_22BDCE880);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (v21 - v12);
  v14 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v21 - v16;
  v18 = sub_22BDB7674();
  v26 = a2;
  v27 = a3;
  sub_22BDB76D4();
  sub_22BB336D0(v17, 0, 1, v18);
  sub_22BDB74D4();

  sub_22BBBF494(v13);
  v19 = sub_22BDB74E4();
  sub_22BB336D0(v13, 0, 1, v19);
  sub_22BDB7544();
  sub_22BDB7504();
  v24 = v21[0];
  v25 = v22;
  sub_22BDB76D4();
  sub_22BB336D0(v17, 0, 1, v18);
  sub_22BDB7554();

  sub_22BBBF494(v13);
  sub_22BB336D0(v13, 0, 1, v19);
  sub_22BDB7524();
  return sub_22BDB74F4();
}

uint64_t sub_22BBBF3A8()
{
  v0 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v0);
  v2 = *(v1 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v3);
  sub_22BB3627C();
  sub_22BDB6734();
  sub_22BDB43E4();
  sub_22BB331C8();
  sub_22BB336D0(v4, v5, v6, v7);
  return sub_22BDB7654();
}

uint64_t sub_22BBBF460()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22BBBF3A8();
}

uint64_t sub_22BBBF494@<X0>(uint64_t *a1@<X8>)
{
  sub_22BDB83A4();
  sub_22BB3DF20();
  v2 = sub_22BDBABD4();

  if (v2)
  {

    v3 = 1;
  }

  else
  {
    sub_22BDB8404();
    v4 = sub_22BDBABD4();

    if (v4)
    {

      v3 = 2;
    }

    else
    {
      sub_22BDB8434();
      v9 = sub_22BDBABD4();

      if (v9)
      {

        v5 = MEMORY[0x277D1FAA0];
        goto LABEL_7;
      }

      sub_22BDB8424();
      v10 = sub_22BDBABD4();

      if (v10)
      {

        v3 = 3;
      }

      else
      {
        sub_22BDB83E4();
        v11 = sub_22BDBABD4();

        if (v11)
        {

          v3 = 4;
        }

        else
        {
          sub_22BDB83C4();
          v12 = sub_22BDBABD4();

          if (v12)
          {

            v3 = 5;
          }

          else
          {
            sub_22BDB83D4();
            v13 = sub_22BDBABD4();

            if (v13)
            {

              v5 = MEMORY[0x277D1FA88];
              goto LABEL_7;
            }

            sub_22BDB83F4();
            v14 = sub_22BDBABD4();

            if (v14)
            {

              v5 = MEMORY[0x277D1FA90];
              goto LABEL_7;
            }

            sub_22BDB8414();
            v15 = sub_22BDBABD4();

            if (v15)
            {

              v3 = 6;
            }

            else
            {
              sub_22BDB83B4();
              v16 = sub_22BDBABD4();

              if ((v16 & 1) == 0)
              {
                *a1 = 0;
                goto LABEL_6;
              }

              v3 = 7;
            }
          }
        }
      }
    }
  }

  *a1 = v3;
LABEL_6:
  v5 = MEMORY[0x277D1FA98];
LABEL_7:
  v6 = *v5;
  v7 = sub_22BDB74E4();
  return (*(*(v7 - 8) + 104))(a1, v6, v7);
}

uint64_t IFRequestTelemetryFilterOnlyPRToExecutorAndRG.shouldAllowEvent(_:)(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E6738, &qword_22BDCE870);
  sub_22BB2F330(v2);
  v4 = *(v3 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - v6;
  v8 = sub_22BBE6DE0(&qword_27D8E6740, &qword_22BDCE878);
  v9 = sub_22BB2F0C8(v8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v17 = sub_22BBE6DE0(&qword_27D8E6748, &qword_22BDCE880);
  v18 = sub_22BB2F0C8(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30560();
  v50 = v21;
  sub_22BB30B70();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v49 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v49 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v49 - v29;
  sub_22BDB74B4();
  v31 = sub_22BDB7564();
  if (sub_22BB3AA28(v16, 1, v31) == 1)
  {
    sub_22BB58728(v16, &qword_27D8E6740, &qword_22BDCE878);
    v32 = sub_22BDB74E4();
    sub_22BB336D0(v30, 1, 1, v32);
  }

  else
  {
    sub_22BDB7514();
    (*(*(v31 - 8) + 8))(v16, v31);
  }

  v33 = a1;
  sub_22BDB74B4();
  if (sub_22BB3AA28(v14, 1, v31) == 1)
  {
    sub_22BB58728(v14, &qword_27D8E6740, &qword_22BDCE878);
    v34 = sub_22BDB74E4();
    sub_22BB336D0(v28, 1, 1, v34);
  }

  else
  {
    v33 = v14;
    sub_22BDB7534();
    (*(*(v31 - 8) + 8))(v14, v31);
  }

  v35 = *(v2 + 48);
  sub_22BBBFD88(v30, v7);
  sub_22BBBFD88(v28, &v7[v35]);
  sub_22BDB74E4();
  v36 = sub_22BB371E4();
  if (sub_22BB3AA28(v36, 1, v33) == 1)
  {
    goto LABEL_17;
  }

  sub_22BC7E3C4(v7, v25, &qword_27D8E6748, &qword_22BDCE880);
  v37 = *(v33 - 8);
  v38 = *(v37 + 88);
  v39 = sub_22BB3627C();
  if (v38(v39) != *MEMORY[0x277D1FA88])
  {
    goto LABEL_16;
  }

  if (sub_22BB3AA28(&v7[v35], 1, v33) != 1)
  {
    sub_22BC7E3C4(&v7[v35], v50, &qword_27D8E6748, &qword_22BDCE880);
    v40 = sub_22BB3627C();
    v41 = v38(v40);
    if (v41 == *MEMORY[0x277D1FA90] || v41 == *MEMORY[0x277D1FAA0])
    {
      sub_22BB58728(&v7[v35], &qword_27D8E6748, &qword_22BDCE880);
      v43 = sub_22BB31F54();
      sub_22BB58728(v43, v44, &qword_22BDCE880);
      return 1;
    }

LABEL_16:
    v46 = *(v37 + 8);
    v47 = sub_22BB3627C();
    v48(v47);
  }

LABEL_17:
  sub_22BB58728(v7, &qword_27D8E6738, &qword_22BDCE870);
  return 0;
}

uint64_t sub_22BBBFCA0(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_22BB69FEC(a1, v3);
  return (*(v4 + 8))(a2, v3, v4) & 1;
}

BOOL sub_22BBBFD28(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_22BBBFD88(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E6748, &qword_22BDCE880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

int *sub_22BBBFDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_22BDB96E4();
  sub_22BB2F330(v16);
  (*(v17 + 32))(a8, a1);
  result = type metadata accessor for SessionCoordinatorAcceptPayload.Transaction(0);
  v19 = (a8 + result[5]);
  *v19 = a2;
  v19[1] = a3;
  *(a8 + result[6]) = a4;
  v20 = (a8 + result[7]);
  *v20 = a5;
  v20[1] = a6;
  *(a8 + result[8]) = a7;
  return result;
}

uint64_t sub_22BBBFEB0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22BBBFED0()
{

  return sub_22BDBB334();
}

void sub_22BBBFEF0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

void sub_22BBBFF10(_WORD *a1@<X8>)
{
  *a1 = 770;
  *(v1 + 2400) = a1 + 1;
  *(v1 + 1528) = sub_22BB89C08;
}

uint64_t sub_22BBBFF34()
{

  return swift_slowAlloc();
}

uint64_t sub_22BBBFF50()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_22BBBFF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20)
{
  result = *(v20 + 336);
  v22 = *(v20 + 320);
  v23 = *a20;
  return result;
}

unint64_t sub_22BBBFFC8()
{
  v1 = v0[1];
  v17 = *v0;
  v18 = v1;
  v19 = *(v0 + 4);
  result = sub_22BBC00B4();
  v3 = *(v17 + 16);
  if (result == v3)
  {
    return 0;
  }

  if (result >= v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 5);
    v4 = *(v0 + 6);
    v6 = v17 + 16 * result;
    v7 = *(v6 + 40);
    v11 = *(v6 + 32);
    v12 = v7;

    (*(&v17 + 1))(&v14, &v11);

    v8 = v14;
    v9 = v15;
    v10 = v16;
    v11 = v14;
    v12 = v15;
    v13 = v16;
    v5(&v14, &v11);
    sub_22BB50CF4(v8, v9, v10);
    return v14;
  }

  return result;
}

uint64_t sub_22BBC00B4()
{
  v1 = 0;
  v13 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(*v0 + 16);
  v6 = (*v0 + 40);
  while (v5 != v1)
  {
    v7 = *v6;
    v14 = *(v6 - 1);
    v15 = v7;

    v13(v17, &v14);

    v14 = v17[0];
    v15 = v17[1];
    v8 = v18;
    v16 = v18;
    v9 = v3(&v14);
    v10 = sub_22BB331D4();
    sub_22BB50CF4(v10, v11, v8);
    if (v9)
    {
      return v1;
    }

    ++v1;
    v6 += 2;
  }

  return v5;
}

uint64_t sub_22BBC01B4()
{

  return swift_slowAlloc();
}

uint64_t sub_22BBC01E4()
{
  result = v0;
  v3 = *(v1 - 160);
  v4 = *(v1 - 176);
  return result;
}

uint64_t sub_22BBC0200(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t sub_22BBC021C(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  return *(v3 - 224);
}

uint64_t sub_22BBC0228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return sub_22BBF684C(a1, a2, v3, v4, a3);
}

uint64_t sub_22BBC0258()
{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[58];
  return v0[74];
}

void sub_22BBC02B0()
{
  v5 = *(v4 - 200);
  v3[587] = *(v4 - 208);
  v3[586] = v5;
  v3[585] = v2;
  v3[584] = v0;
  v3[583] = v1;
  v3[582] = *(v4 - 152);
  v3[588] = *(v3[312] + v3[564]);
}

uint64_t sub_22BBC02E4()
{
  result = v0;
  v2 = STACK[0x370];
  return result;
}

uint64_t sub_22BBC02FC(uint64_t a1)
{
  *(a1 + 16) = sub_22BB8AE80;
  *(a1 + 24) = v1;
}

uint64_t sub_22BBC0340(uint64_t a1, uint64_t a2)
{

  return sub_22BB336D0(a1, a2, 1, v2);
}

uint64_t sub_22BBC0358(uint64_t a1)
{
  v3 = *(v1 - 136);

  return sub_22BD44210(a1);
}

uint64_t sub_22BBC0380()
{
  v2 = v0[179];
  v3 = v0[176];
  v4 = v0[173];
  v5 = v0[157];

  return sub_22BDB63F4();
}

void sub_22BBC03A4()
{
  v1 = v0[479];
  v2 = v0[432];
  v3 = v0[429];
  v4 = v0[428];
}

uint64_t sub_22BBC03B8()
{
  result = v0[346];
  v2 = v0[344];
  v3 = *(v0[345] + 8);
  return result;
}

uint64_t sub_22BBC03CC()
{
  sub_22BBC047C();
  sub_22BDBAD04();
  sub_22BDBAD04();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_22BDBB6D4();
  }

  return v1 & 1;
}

unint64_t sub_22BBC047C()
{
  result = qword_281428A88;
  if (!qword_281428A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428A88);
  }

  return result;
}

void sub_22BBC04D0()
{
  v1 = STACK[0x458] + 1;
  v2 = *(v0 - 152);
  v3 = STACK[0x460];
}

void sub_22BBC04E8()
{
  v3 = *(v0 + 1008);
  v4 = *(v0 + 1000);
}

void sub_22BBC052C()
{
  v1[19] = v2;
  v1[20] = sub_22BB89C7C;
  v1[21] = v0;
  v1[22] = sub_22BB89C08;
}

void sub_22BBC0568()
{
  v1 = v0[179];
  v2 = v0[113];
  v3 = v0[112];
  v4 = *(v0[173] + 36);
}

uint64_t sub_22BBC0580()
{

  return sub_22BDBB554();
}

void sub_22BBC05A0()
{
  *(v1 - 144) = v0;
  v2 = *(v1 - 120);
  v3 = *(v1 - 112);
  *(v1 - 65) = 0;
}

void sub_22BBC05D8()
{
  v1 = v0[171];
  v2 = v0[170];
  v3 = v0[169];
  v4 = v0[168];
  v5 = v0[167];
}

uint64_t sub_22BBC05FC()
{
}

uint64_t sub_22BBC0614(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BBC0678()
{
  sub_22BB30F5C();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_22BB3052C();
  *v6 = v5;
  v7 = v4[6];
  *v6 = *v1;
  v5[7] = v0;

  v8 = v4[5];
  v9 = v4[4];
  v10 = v4[3];
  if (v0)
  {
    (*(v9 + 8))(v8, v10);
    v11 = sub_22BC440F0;
  }

  else
  {
    v5[8] = v3;
    (*(v9 + 8))(v8, v10);
    v11 = sub_22BB693C8;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_22BBC07F4()
{
  sub_22BBE6DE0(&qword_27D8E6358, &qword_22BDCDD68);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22BDBD160;
  *(v0 + 32) = sub_22BDB83E4();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_22BDB83C4();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_22BDB83D4();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_22BDB83F4();
  *(v0 + 88) = v4;
  return v0;
}

uint64_t sub_22BBC0888(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BBC08A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  a4[1] = a1;
  a4[2] = a2;
  a4[3] = sub_22BBC0194;
  a4[4] = 0;
  a4[5] = sub_22BD5E9D4;
  a4[6] = 0;
}

void sub_22BBC091C()
{
  v1 = *(v0 - 168);
  v3 = *(v0 - 216);
  v2 = *(v0 - 208);
  v4 = *(v0 - 232);
  v5 = STACK[0x438];
  v6 = LODWORD(STACK[0x430]);
}

void sub_22BBC0934()
{
  *(v1 - 240) = v0[402];
  *(v1 - 224) = v0[401];
  *(v1 - 168) = v0[400];
  v2 = v0[399];
}

uint64_t sub_22BBC0954(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 1528);
  return result;
}

uint64_t sub_22BBC0978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      swift_slowAlloc();
      sub_22BB3A974();
      a2 = sub_22BCD3D9C(v13, v14, v15, v16, a4);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  sub_22BBC0B54(0, v8, v17 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_22BB3A974();
  v9 = a3();
  if (v4)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v9;
  }

LABEL_5:
  v10 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_22BBC0AE4()
{
  *(v1 - 160) = v0;
}

uint64_t sub_22BBC0AFC()
{
  sub_22BB35F54();
  v2 = v1(0);
  sub_22BB2F330(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BB31F54();
  v6(v5);
  return v0;
}

uint64_t sub_22BBC0B54(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_22BDCCD50;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_22BBC0BB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BBC0C10(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v61 = a4;
  v48[0] = a2;
  v50 = a1;
  v60 = sub_22BBE6DE0(&qword_27D8E42F0, &unk_22BDC2CE8);
  v5 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v7 = v48 - v6;
  v8 = sub_22BDB9564();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB43E4();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v65 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v20 = v48 - v18;
  v53 = 0;
  v21 = 0;
  v22 = *(a3 + 64);
  v49 = a3 + 64;
  v23 = 1 << *(a3 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v70 = v19 + 16;
  v58 = v19;
  v59 = v9;
  v68 = (v19 + 8);
  v69 = v7;
  v54 = (v9 + 8);
  v55 = v9 + 16;
  v56 = v26;
  v57 = v48 - v18;
  v62 = a3;
  v51 = v12;
  v52 = v8;
  while (v25)
  {
    v27 = __clz(__rbit64(v25));
    v64 = (v25 - 1) & v25;
LABEL_12:
    v30 = v27 | (v21 << 6);
    v31 = *(a3 + 48);
    v67 = *(v58 + 72);
    v32 = *(v58 + 16);
    v32(v20, v31 + v67 * v30, v13);
    v33 = *(a3 + 56);
    v34 = *(v59 + 72);
    v63 = v30;
    v35 = v33 + v34 * v30;
    v36 = *(v59 + 16);
    v36(v12, v35, v8);
    v37 = v36;
    v38 = v69;
    v66 = v32;
    v32(v69, v20, v13);
    v37(v38 + *(v60 + 48), v12, v8);
    v39 = *v61;
    if (*(*v61 + 16))
    {
      v40 = *(v39 + 40);
      sub_22BCD3F54(&qword_28142DD50, MEMORY[0x277CC95F0]);

      v41 = sub_22BDBABA4();
      v42 = ~(-1 << *(v39 + 32));
      do
      {
        v43 = v41 & v42;
        if (((*(v39 + 56 + (((v41 & v42) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v41 & v42)) & 1) == 0)
        {

          a3 = v62;
          v38 = v69;
          v12 = v51;
          v8 = v52;
          goto LABEL_21;
        }

        v44 = v65;
        v66(v65, *(v39 + 48) + v43 * v67, v13);
        sub_22BCD3F54(&unk_28142DD40, MEMORY[0x277CC95F0]);
        v45 = sub_22BDBABD4();
        v46 = *v68;
        (*v68)(v44, v13);
        v41 = v43 + 1;
      }

      while ((v45 & 1) == 0);

      sub_22BB58728(v69, &qword_27D8E42F0, &unk_22BDC2CE8);
      v12 = v51;
      v8 = v52;
      (*v54)(v51, v52);
      v20 = v57;
      result = v46(v57);
      a3 = v62;
      *(v50 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
      v47 = __OFADD__(v53++, 1);
      v26 = v56;
      v25 = v64;
      if (v47)
      {
        goto LABEL_24;
      }
    }

    else
    {
      a3 = v62;
LABEL_21:
      sub_22BB58728(v38, &qword_27D8E42F0, &unk_22BDC2CE8);
      (*v54)(v12, v8);
      v20 = v57;
      result = (*v68)(v57);
      v26 = v56;
      v25 = v64;
    }
  }

  v28 = v21;
  while (1)
  {
    v21 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v21 >= v26)
    {
      return sub_22BBC11CC(v50, v48[0], v53, a3);
    }

    v29 = *(v49 + 8 * v21);
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v64 = (v29 - 1) & v29;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22BBC11B4()
{

  return sub_22BDBAF34();
}

uint64_t sub_22BBC11CC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v61 = sub_22BDB9564();
  v57 = *(v61 - 8);
  v8 = *(v57 + 64);
  v9 = MEMORY[0x28223BE20](v61);
  v60 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = v47 - v11;
  v12 = sub_22BDB43E4();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v59 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = v47 - v16;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_22BBE6DE0(&qword_27D8E4310, &unk_22BDC2D10);
  result = sub_22BDBB524();
  v18 = result;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v47[3] = v56 + 16;
  v48 = a2;
  v58 = v56 + 32;
  v21 = result + 64;
  v49 = a1;
  v47[0] = a4;
  v47[1] = v57 + 32;
  v47[2] = v57 + 16;
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v52 = (v19 - 1) & v19;
LABEL_16:
    v25 = v22 | (v20 << 6);
    v26 = a4[6];
    v27 = v56;
    v55 = *(v56 + 72);
    v28 = v50;
    (*(v56 + 16))(v50, v26 + v55 * v25, v12);
    v29 = a4[7];
    v30 = v57;
    v54 = *(v57 + 72);
    v31 = v29 + v54 * v25;
    v32 = v12;
    v33 = v51;
    v34 = v61;
    (*(v57 + 16))(v51, v31, v61);
    v53 = *(v27 + 32);
    v53(v59, v28, v32);
    v35 = *(v30 + 32);
    v36 = v33;
    v12 = v32;
    v35(v60, v36, v34);
    v37 = *(v18 + 40);
    sub_22BCD3F54(&qword_28142DD50, MEMORY[0x277CC95F0]);
    result = sub_22BDBABA4();
    v38 = -1 << *(v18 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v21 + 8 * (v39 >> 6))) == 0)
    {
      v42 = 0;
      v43 = (63 - v38) >> 6;
      a2 = v48;
      a1 = v49;
      while (++v40 != v43 || (v42 & 1) == 0)
      {
        v44 = v40 == v43;
        if (v40 == v43)
        {
          v40 = 0;
        }

        v42 |= v44;
        v45 = *(v21 + 8 * v40);
        if (v45 != -1)
        {
          v41 = __clz(__rbit64(~v45)) + (v40 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v41 = __clz(__rbit64((-1 << v39) & ~*(v21 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
    a2 = v48;
    a1 = v49;
LABEL_25:
    *(v21 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v53((*(v18 + 48) + v41 * v55), v59, v32);
    result = (v35)(*(v18 + 56) + v41 * v54, v60, v61);
    ++*(v18 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v47[0];
    v19 = v52;
    if (!a3)
    {
      return v18;
    }
  }

  v23 = v20;
  while (1)
  {
    v20 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      return v18;
    }

    v24 = a1[v20];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v52 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22BBC1668(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v61 = a4;
  v48[0] = a2;
  v50 = a1;
  v60 = sub_22BBE6DE0(&qword_27D8E42E8, &qword_22BDC2CE0);
  v5 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v7 = v48 - v6;
  v8 = sub_22BDB81A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB4C34();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v65 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v20 = v48 - v18;
  v53 = 0;
  v21 = 0;
  v22 = *(a3 + 64);
  v49 = a3 + 64;
  v23 = 1 << *(a3 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v70 = v19 + 16;
  v58 = v19;
  v59 = v9;
  v68 = (v19 + 8);
  v69 = v7;
  v54 = (v9 + 8);
  v55 = v9 + 16;
  v56 = v26;
  v57 = v48 - v18;
  v62 = a3;
  v51 = v12;
  v52 = v8;
  while (v25)
  {
    v27 = __clz(__rbit64(v25));
    v64 = (v25 - 1) & v25;
LABEL_12:
    v30 = v27 | (v21 << 6);
    v31 = *(a3 + 48);
    v67 = *(v58 + 72);
    v32 = *(v58 + 16);
    v32(v20, v31 + v67 * v30, v13);
    v33 = *(a3 + 56);
    v34 = *(v59 + 72);
    v63 = v30;
    v35 = v33 + v34 * v30;
    v36 = *(v59 + 16);
    v36(v12, v35, v8);
    v37 = v36;
    v38 = v69;
    v66 = v32;
    v32(v69, v20, v13);
    v37(v38 + *(v60 + 48), v12, v8);
    v39 = *v61;
    if (*(*v61 + 16))
    {
      v40 = *(v39 + 40);
      sub_22BCD3F54(&qword_28142DD18, MEMORY[0x277D1C338]);

      v41 = sub_22BDBABA4();
      v42 = ~(-1 << *(v39 + 32));
      do
      {
        v43 = v41 & v42;
        if (((*(v39 + 56 + (((v41 & v42) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v41 & v42)) & 1) == 0)
        {

          a3 = v62;
          v38 = v69;
          v12 = v51;
          v8 = v52;
          goto LABEL_21;
        }

        v44 = v65;
        v66(v65, *(v39 + 48) + v43 * v67, v13);
        sub_22BCD3F54(&qword_28142DD10, MEMORY[0x277D1C338]);
        v45 = sub_22BDBABD4();
        v46 = *v68;
        (*v68)(v44, v13);
        v41 = v43 + 1;
      }

      while ((v45 & 1) == 0);

      sub_22BB58728(v69, &qword_27D8E42E8, &qword_22BDC2CE0);
      v12 = v51;
      v8 = v52;
      (*v54)(v51, v52);
      v20 = v57;
      result = v46(v57);
      a3 = v62;
      *(v50 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
      v47 = __OFADD__(v53++, 1);
      v26 = v56;
      v25 = v64;
      if (v47)
      {
        goto LABEL_24;
      }
    }

    else
    {
      a3 = v62;
LABEL_21:
      sub_22BB58728(v38, &qword_27D8E42E8, &qword_22BDC2CE0);
      (*v54)(v12, v8);
      v20 = v57;
      result = (*v68)(v57);
      v26 = v56;
      v25 = v64;
    }
  }

  v28 = v21;
  while (1)
  {
    v21 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v21 >= v26)
    {
      return sub_22BBC1C0C(v50, v48[0], v53, a3);
    }

    v29 = *(v49 + 8 * v21);
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v64 = (v29 - 1) & v29;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22BBC1C0C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v61 = sub_22BDB81A4();
  v57 = *(v61 - 8);
  v8 = *(v57 + 64);
  v9 = MEMORY[0x28223BE20](v61);
  v60 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = v47 - v11;
  v12 = sub_22BDB4C34();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v59 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = v47 - v16;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_22BBE6DE0(&qword_27D8E4308, &qword_22BDC2D08);
  result = sub_22BDBB524();
  v18 = result;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v47[3] = v56 + 16;
  v48 = a2;
  v58 = v56 + 32;
  v21 = result + 64;
  v49 = a1;
  v47[0] = a4;
  v47[1] = v57 + 32;
  v47[2] = v57 + 16;
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v52 = (v19 - 1) & v19;
LABEL_16:
    v25 = v22 | (v20 << 6);
    v26 = a4[6];
    v27 = v56;
    v55 = *(v56 + 72);
    v28 = v50;
    (*(v56 + 16))(v50, v26 + v55 * v25, v12);
    v29 = a4[7];
    v30 = v57;
    v54 = *(v57 + 72);
    v31 = v29 + v54 * v25;
    v32 = v12;
    v33 = v51;
    v34 = v61;
    (*(v57 + 16))(v51, v31, v61);
    v53 = *(v27 + 32);
    v53(v59, v28, v32);
    v35 = *(v30 + 32);
    v36 = v33;
    v12 = v32;
    v35(v60, v36, v34);
    v37 = *(v18 + 40);
    sub_22BCD3F54(&qword_28142DD18, MEMORY[0x277D1C338]);
    result = sub_22BDBABA4();
    v38 = -1 << *(v18 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v21 + 8 * (v39 >> 6))) == 0)
    {
      v42 = 0;
      v43 = (63 - v38) >> 6;
      a2 = v48;
      a1 = v49;
      while (++v40 != v43 || (v42 & 1) == 0)
      {
        v44 = v40 == v43;
        if (v40 == v43)
        {
          v40 = 0;
        }

        v42 |= v44;
        v45 = *(v21 + 8 * v40);
        if (v45 != -1)
        {
          v41 = __clz(__rbit64(~v45)) + (v40 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v41 = __clz(__rbit64((-1 << v39) & ~*(v21 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
    a2 = v48;
    a1 = v49;
LABEL_25:
    *(v21 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v53((*(v18 + 48) + v41 * v55), v59, v32);
    result = (v35)(*(v18 + 56) + v41 * v54, v60, v61);
    ++*(v18 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v47[0];
    v19 = v52;
    if (!a3)
    {
      return v18;
    }
  }

  v23 = v20;
  while (1)
  {
    v20 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      return v18;
    }

    v24 = a1[v20];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v52 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22BBC20BC(unint64_t a1)
{
  v3 = sub_22BBC20A8(a1);
  v4 = sub_22BBC20A8(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_22BBC2168(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_22BBC2208(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_22BBC2168(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_22BDBB4F4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_22BDBB384();
  *v1 = result;
  return result;
}

uint64_t sub_22BBC2208(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_22BDBB4F4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_22BBC20A8(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        _s13ActionCreatedCMa(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_22BBB5F9C(&qword_27D8E6708, &qword_27D8E6700, &qword_22BDCE7D8);
        for (i = 0; i != v7; ++i)
        {
          sub_22BBE6DE0(&qword_27D8E6700, &qword_22BDCE7D8);
          v9 = sub_22BCACBB4(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BBC23B0()
{
  *(v1 - 176) = v0;
}

uint64_t sub_22BBC23C8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, void, uint64_t))
{
  v16[0] = a2;
  v16[3] = &_s24StatementResultRetrievalVN;
  v16[4] = &off_283F76800;
  a3(0);
  v7 = swift_allocObject();
  v8 = sub_22BB8D7AC(v16, &_s24StatementResultRetrievalVN);
  v9 = *(qword_283F767E0 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = a5(a1, *v11, v7);
  sub_22BB32FA4(v16);
  return v13;
}

void sub_22BBC251C()
{
  v1 = *(v0 - 152);
  v2 = *(v0 - 144);
  v3 = v2[530];
  v4 = v2[528];
  v5 = v2[521];
}

uint64_t sub_22BBC2530()
{
  v1 = *(*(v0 - 232) + 8);
  result = *(v0 - 200);
  v3 = *(v0 - 216);
  return result;
}

uint64_t sub_22BBC2544()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 184);
  v4 = *(v0 - 88);

  return sub_22BDBB664();
}

uint64_t sub_22BBC2588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BDB8DB4();
  v181 = *(v6 - 8);
  v7 = *(v181 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_22BDB8634();
  v182 = *(v177 - 8);
  v10 = *(v182 + 64);
  v11 = MEMORY[0x28223BE20](v177);
  v13 = v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v163 = v130 - v14;
  v176 = sub_22BDB8624();
  v15 = *(v176 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v176);
  v137 = v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v172 = v130 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v136 = v130 - v22;
  MEMORY[0x28223BE20](v21);
  v171 = v130 - v23;
  v161 = sub_22BDB9624();
  v179 = *(v161 - 8);
  v24 = *(v179 + 64);
  MEMORY[0x28223BE20](v161);
  v162 = v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = _s19SystemResponseEventVMa(0);
  v144 = *(v145 - 8);
  v26 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v154 = v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_22BDB5264();
  v178 = *(v153 - 8);
  v28 = *(v178 + 64);
  MEMORY[0x28223BE20](v153);
  v152 = v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = _s9PlanEventVMa(0);
  v150 = *(v151 - 8);
  v30 = *(v150 + 64);
  MEMORY[0x28223BE20](v151);
  v170 = v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_22BDB9954();
  v166 = *(v169 - 8);
  v32 = *(v166 + 64);
  MEMORY[0x28223BE20](v169);
  v168 = v130 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22BDB9B14();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = v130 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_22BDB9B54();
  v39 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180);
  v189 = v130 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192[3] = &_s24StatementResultRetrievalVN;
  v192[4] = &off_283F76800;
  v192[0] = a2;
  v42 = *(a1 + 16);
  if (!v42)
  {

    v112 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
    v113 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v135 = v13;
  v138 = v9;
  v139 = v6;
  v131 = a3;
  v44 = *(v40 + 16);
  v43 = v40 + 16;
  v188 = v44;
  v45 = (*(v43 + 64) + 32) & ~*(v43 + 64);
  v130[1] = a1;
  v46 = a1 + v45;
  v47 = *(v43 + 56);
  v186 = (v35 + 88);
  v187 = v47;
  v185 = *MEMORY[0x277D1E858];
  v167 = *MEMORY[0x277D1E6F8];
  v149 = *MEMORY[0x277D1E820];
  v143 = *MEMORY[0x277D1E7C8];
  v184 = (v43 - 8);
  v134 = (v35 + 8);
  v183 = (v35 + 96);
  v133 = (v181 + 32);
  v175 = (v182 + 88);
  v174 = *MEMORY[0x277D1DD78];
  v132 = (v181 + 8);
  v158 = (v182 + 8);
  v157 = (v182 + 96);
  v173 = (v15 + 32);
  v156 = (v15 + 16);
  v160 = v15;
  v155 = v15 + 8;
  v142 = (v178 + 32);
  v141 = (v178 + 16);
  v140 = (v178 + 8);
  v148 = (v166 + 32);
  v147 = (v166 + 16);
  v146 = (v166 + 8);
  v166 = v179 + 32;
  v165 = (v179 + 8);
  v164 = MEMORY[0x277D84F90];
  v181 = MEMORY[0x277D84F90];
  v182 = MEMORY[0x277D84F90];
  v48 = v163;
  v49 = v161;
  v50 = v162;
  v178 = v34;
  v51 = v180;
  v159 = v38;
  v179 = v43;
  do
  {
    v188(v189, v46, v51);
    sub_22BDB9B24();
    v52 = (*v186)(v38, v34);
    if (v52 == v185)
    {
      (*v183)(v38, v34);
      (*v166)(v50, v38, v49);
      sub_22BDB8DA4();
      v53 = v177;
      v54 = (*v175)(v48, v177);
      if (v54 == v174)
      {
        (*v157)(v48, v53);
        v55 = *v173;
        v56 = v171;
        v57 = v176;
        (*v173)(v171, v48, v176);
        (*v156)(v172, v56, v57);
        v58 = v182;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = *(v58 + 16);
          sub_22BD90428();
          v58 = v101;
        }

        v59 = *(v58 + 16);
        v60 = v160;
        if (v59 >= *(v58 + 24) >> 1)
        {
          sub_22BD90428();
          v60 = v160;
          v182 = v102;
        }

        else
        {
          v182 = v58;
        }

        v61 = v176;
        (*(v60 + 8))(v171, v176);
        v62 = v162;
        v63 = v161;
        (*v165)(v162, v161);
        v51 = v180;
        (*v184)(v189, v180);
        v64 = v182;
        *(v182 + 16) = v59 + 1;
        v65 = v62;
        v49 = v63;
        v50 = v65;
        v55((v64 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v59), v172, v61);
        v48 = v163;
        v34 = v178;
        v38 = v159;
      }

      else
      {
        (*v165)(v50, v49);
        (*v184)(v189, v51);
        (*v158)(v48, v53);
      }

      goto LABEL_24;
    }

    if (v52 == v167)
    {
      (*v183)(v38, v34);
      v66 = v168;
      v67 = v169;
      (*v148)(v168, v38, v169);
      v68 = v170;
      sub_22BDB8F24();
      (*v147)(&v68[*(v151 + 20)], v66, v67);
      v69 = v181;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = *(v69 + 16);
        sub_22BD905B8();
        v69 = v104;
      }

      v71 = *(v69 + 16);
      v70 = *(v69 + 24);
      v181 = v69;
      v34 = v178;
      v51 = v180;
      if (v71 >= v70 >> 1)
      {
        sub_22BD905B8();
        v181 = v105;
      }

      (*v146)(v168, v169);
      (*v184)(v189, v51);
      v72 = v181;
      *(v181 + 16) = v71 + 1;
      v73 = v72 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v71;
      v74 = &v193;
LABEL_23:
      v82 = *(v74 - 32);
      sub_22BD17DA4();
      goto LABEL_24;
    }

    if (v52 == v149)
    {
      (*v183)(v38, v34);
      v75 = v152;
      v76 = v153;
      (*v142)(v152, v38, v153);
      v77 = v154;
      sub_22BDB8F24();
      (*v141)(&v77[*(v145 + 20)], v75, v76);
      v78 = v164;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v106 = *(v78 + 16);
        sub_22BD904F0();
        v78 = v107;
      }

      v164 = v78;
      v79 = *(v78 + 16);
      v34 = v178;
      v51 = v180;
      if (v79 >= *(v78 + 24) >> 1)
      {
        sub_22BD904F0();
        v164 = v108;
      }

      (*v140)(v152, v153);
      (*v184)(v189, v51);
      v80 = v164;
      *(v164 + 16) = v79 + 1;
      v81 = v80 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v79;
      v74 = &v186;
      goto LABEL_23;
    }

    if (v52 == v143)
    {
      (*v183)(v38, v34);
      v83 = v138;
      v84 = v139;
      (*v133)(v138, v38, v139);
      v85 = v135;
      sub_22BDB8DA4();
      v86 = v177;
      v87 = (*v175)(v85, v177);
      if (v87 == v174)
      {
        (*v157)(v85, v86);
        v88 = *v173;
        v89 = v136;
        v90 = v176;
        (*v173)(v136, v85, v176);
        (*v156)(v137, v89, v90);
        v91 = v182;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = *(v91 + 16);
          sub_22BD90428();
          v91 = v110;
        }

        v48 = v163;
        v92 = *(v91 + 16);
        v93 = v160;
        if (v92 >= *(v91 + 24) >> 1)
        {
          sub_22BD90428();
          v93 = v160;
          v182 = v111;
        }

        else
        {
          v182 = v91;
        }

        v94 = v176;
        v95 = v93;
        (*(v93 + 8))(v136, v176);
        (*v132)(v138, v139);
        v96 = v180;
        (*v184)(v189, v180);
        v97 = v182;
        *(v182 + 16) = v92 + 1;
        v98 = v97 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
        v99 = *(v95 + 72);
        v51 = v96;
        v88((v98 + v99 * v92), v137, v94);
        v49 = v161;
        v38 = v159;
      }

      else
      {
        (*v132)(v83, v84);
        (*v184)(v189, v51);
        (*v158)(v85, v86);
        v48 = v163;
      }

      v50 = v162;
    }

    else
    {
      (*v184)(v189, v51);
      (*v134)(v38, v34);
    }

LABEL_24:
    v46 += v187;
    --v42;
  }

  while (v42);

  a3 = v131;
  v113 = v181;
  v112 = v182;
  v114 = v164;
LABEL_39:
  sub_22BB69088(v192, a3 + 16);
  sub_22BB69088(v192, &v190);
  v115 = v191;
  v116 = sub_22BB8D7AC(&v190, v191);
  v117 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v119 = (v130 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v120 + 16))(v119);
  v121 = sub_22BBC3980(v114, *v119, v112);
  sub_22BB32FA4(&v190);
  *(a3 + 56) = v121;
  sub_22BB69088(v192, &v190);
  v122 = v191;
  v123 = sub_22BB8D7AC(&v190, v191);
  v124 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v126 = (v130 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v127 + 16))(v126);
  v128 = sub_22BBC23C8(v113, *v126, _s30PlannerPromptResponseRetrieverCMa, 24, sub_22BBC7EB8);
  sub_22BB32FA4(v192);
  sub_22BB32FA4(&v190);
  *(a3 + 64) = v128;
  return a3;
}

uint64_t sub_22BBC3980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[3] = &_s24StatementResultRetrievalVN;
  v14[4] = &off_283F76800;
  v14[0] = a2;
  _s29SystemPromptResponseRetrieverCMa();
  v5 = swift_allocObject();
  v6 = sub_22BB8D7AC(v14, &_s24StatementResultRetrievalVN);
  v7 = *(qword_283F767E0 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_22BBC4DD8(a1, *v9, a3, v5);
  sub_22BB32FA4(v14);
  return v11;
}

uint64_t sub_22BBC3AD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 1384);
  *(v1 - 104) = *(*(v1 - 96) + 1256);
  v5 = *(*(v1 - 96) + 1232);
  v6 = *(*(v1 - 96) + 1224);

  return swift_slowAlloc();
}

uint64_t sub_22BBC3B18()
{
  v2 = *(v0 - 160);
  v3 = *(v0 - 88);

  return sub_22BDBB664();
}

uint64_t sub_22BBC3B70()
{
  v1 = v0[403];
  v2 = *(v0[404] + 32);
  return v0[412];
}

uint64_t sub_22BBC3B90()
{
  v2 = *(*(v0 + 4632) + 16);
}

uint64_t sub_22BBC3BB8(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BBC3BF4()
{
  v1 = v0[188];
  v2 = v0[187];
  result = v0[152];
  v4 = v0[130];
  v5 = v0[117];
  return result;
}

void *sub_22BBC3C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_encoder;
  v17 = sub_22BDB4164();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v7 + v16) = sub_22BDB4154();
  v20 = OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_decoder;
  v21 = sub_22BDB4134();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v7 + v20) = sub_22BDB4124();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a4;
  v7[6] = a5;
  v24 = OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_commandContinuation;
  v25 = sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  (*(*(v25 - 8) + 32))(v8 + v24, a6, v25);
  *(v8 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_fastCheckInjectionEnabledState) = a7;
  return v8;
}

uint64_t sub_22BBC3D3C()
{
  sub_22BB2F35C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_22BB31BAC(v4);
  *v5 = v6;
  v5[1] = sub_22BBF90EC;
  v7 = sub_22BB37834();

  return sub_22BBC3DD8(v7, v8, v9, v3);
}

uint64_t sub_22BBC3DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[21] = a2;
  v6 = *(*(sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v7 = type metadata accessor for SessionCoordinatorAcceptPayload.Transaction(0);
  v4[25] = v7;
  v8 = *(v7 - 8);
  v4[26] = v8;
  v4[27] = *(v8 + 64);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v9 = sub_22BDB77D4();
  v4[30] = v9;
  v10 = *(v9 - 8);
  v4[31] = v10;
  v11 = *(v10 + 64) + 15;
  v4[32] = swift_task_alloc();
  v12 = *(*(sub_22BBE6DE0(&qword_27D8E64E8, &qword_22BDCE3F0) - 8) + 64) + 15;
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBC3F80, a3, 0);
}

uint64_t sub_22BBC3F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BB31550();
  a21 = v25;
  a22 = v26;
  a20 = v22;
  v27 = *(v22 + 264);
  v28 = *(v22 + 176);
  v29 = *(*(v22 + 168) + *(*(v22 + 200) + 24));
  v30 = *(*v28 + 136);
  sub_22BB31B88();
  swift_beginAccess();
  v31 = *(v28 + v30);

  v32 = sub_22BB30AE4();
  sub_22BBC4514(v32, v33);

  v34 = type metadata accessor for SpanMetadata();
  v35 = sub_22BB3A190();
  v37 = sub_22BB3AA28(v35, v36, v34);
  v38 = *(v22 + 264);
  if (v37)
  {
    sub_22BB325EC(v38, &qword_27D8E64E8, &qword_22BDCE3F0);
LABEL_6:
    v118 = v29;
    v60 = *(v22 + 216);
    v61 = *(v22 + 224);
    v62 = v34;
    v63 = *(v22 + 208);
    v65 = *(v22 + 184);
    v64 = *(v22 + 192);
    v66 = *(v22 + 168);
    v117 = *(v22 + 176);
    sub_22BDBAEF4();
    sub_22BB30B28();
    sub_22BB336D0(v67, v68, v69, v70);
    sub_22BB690EC(v65, v22 + 16);
    sub_22BD62A34();
    v71 = sub_22BB96020();
    sub_22BB335C0(v71, v72);
    v73 = (*(v63 + 80) + 72) & ~*(v63 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = 0;
    *(v74 + 24) = 0;
    sub_22BB382E8((v22 + 16), v74 + 32);
    sub_22BD62A4C();
    v75 = v74 + v73;
    v76 = v62;
    sub_22BB3A518(v61, v75);
    v77 = sub_22BCA20FC(0, 0, v64, &unk_22BDCE528, v74);
    *(v22 + 272) = v77;
    v78 = sub_22BBC45D0();
    v80 = v79;
    sub_22BBC463C((v22 + 88), v118);
    sub_22BC54A30();
    sub_22BD623FC();
    if (!sub_22BB3AA28(v81, v82, v83))
    {
      v84 = *(v76 + 36);
      v85 = *(v60 + v84);
      *(v60 + v84) = v77;
    }

    v86 = sub_22BD63DBC();
    v80(v86);
    v87 = sub_22BD64D68();
    (v78)(v87);
    v88 = *(v22 + 176);
    sub_22BD6156C(qword_28142AC00, &qword_27D8E6458, &qword_22BDCE2D0);
    v89 = *(MEMORY[0x277D85A10] + 4);
    v90 = swift_task_alloc();
    *(v22 + 280) = v90;
    *v90 = v22;
    v90[1] = sub_22BBBCC48;
    sub_22BB31534();

    return MEMORY[0x282200830](v91, v92, v93, v94, v95, v96, v97, v98, v117, v118, a11, a12, a13, a14);
  }

  v39 = *(v38 + *(v34 + 40));
  sub_22BB325EC(v38, &qword_27D8E64E8, &qword_22BDCE3F0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_6;
  }

  v40 = *(v22 + 256);
  v41 = *(v22 + 232);
  v42 = *(v22 + 168);
  sub_22BDB63E4();
  sub_22BD62A34();
  v43 = sub_22BB39478();
  sub_22BB335C0(v43, v44);
  v45 = sub_22BDB77C4();
  sub_22BDBB104();
  sub_22BB93938();
  v47 = os_log_type_enabled(v45, v46);
  v49 = *(v22 + 248);
  v48 = *(v22 + 256);
  v50 = *(v22 + 232);
  if (v47)
  {
    a10 = *(v22 + 240);
    v51 = *(v22 + 200);
    sub_22BB3B778();
    a11 = sub_22BD62464();
    *v24 = 136315394;
    *(v22 + 160) = v29;
    sub_22BB70194();
    a9 = v48;
    v52 = sub_22BDBB684();
    sub_22BB32EE0(v52, v53, &a11);
    sub_22BB2F1B0();

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    v54 = (v50 + *(v51 + 28));
    v56 = *v54;
    v55 = v54[1];
    *(v22 + 144) = v56;
    *(v22 + 152) = v55;
    sub_22BBADE68();
    sub_22BDBB684();
    sub_22BC54A30();
    sub_22BBBEB48();
    sub_22BB34648();
    v57 = sub_22BB2F324();
    sub_22BB32EE0(v57, v58, v59);
    sub_22BB371E4();

    *(v24 + 14) = v22 + 144;
    sub_22BD63F58(&dword_22BB2C000, v45, v23, "Span %s for participant %s was cancelled while in queue. Skipping accept");
    sub_22BB8ABD4();
    sub_22BB38680();
    sub_22BB3A3D8();

    (*(v49 + 8))(v48, a10);
  }

  else
  {

    sub_22BBBEB48();
    sub_22BB34648();
    v99 = *(v49 + 8);
    v100 = sub_22BB345A8();
    v102(v100, v101);
  }

  v104 = *(v22 + 256);
  v103 = *(v22 + 264);
  v106 = *(v22 + 224);
  v105 = *(v22 + 232);
  v107 = *(v22 + 192);

  sub_22BB360FC();
  sub_22BB31534();

  return v109(v108, v109, v110, v111, v112, v113, v114, v115, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22BBC442C()
{
  v2 = type metadata accessor for SessionCoordinatorAcceptPayload.Transaction(0);
  sub_22BB3A75C(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v1 + 16);
  swift_unknownObjectRelease();
  sub_22BB32FA4((v1 + 32));
  v8 = v1 + ((v4 + 72) & ~v4);
  v9 = sub_22BDB96E4();
  sub_22BB31F70(v9);
  (*(v10 + 8))(v8);
  v11 = *(v8 + *(v0 + 36) + 8);

  v12 = *(v8 + *(v0 + 40));

  v13 = sub_22BBC20AC();

  return MEMORY[0x2821FE8E8](v13, v14, v15);
}

uint64_t sub_22BBC4514(uint64_t a1, uint64_t a2)
{
  sub_22BB5431C(a1, a2);
  if (v4 && (v5 = v3, sub_22BB4FC1C(v2), (v6 & 1) != 0))
  {
    v7 = *(v5 + 56);
    v8 = type metadata accessor for SpanMetadata();
    sub_22BB2F330(v8);
    v10 = *(v9 + 72);
    sub_22BB67A00();
    v11 = sub_22BB36764();
  }

  else
  {
    type metadata accessor for SpanMetadata();
    v11 = sub_22BB31CB0();
  }

  return sub_22BB336D0(v11, v12, v13, v14);
}

uint64_t sub_22BBC45B4(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t (*sub_22BBC45D0())()
{
  v1 = *(*v0 + 136);
  swift_beginAccess();
  return j__swift_endAccess;
}

void (*sub_22BBC463C(void *a1, uint64_t a2))(uint64_t a1)
{
  v4 = sub_22BD7EA64(0x28uLL);
  *a1 = v4;
  v4[4] = sub_22BBC46A0(v4, a2);
  return sub_22BBC49D8;
}

void (*sub_22BBC46A0(void *a1, uint64_t a2))(uint64_t a1)
{
  v5 = sub_22BD7EA64(0x50uLL);
  *a1 = v5;
  v6 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_22BBC4980(v5);
  v5[9] = sub_22BBC4730(v5 + 4, a2);
  return sub_22BBC4C10;
}

void (*sub_22BBC4730(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_22BD7EA64(0x60uLL);
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v7 = type metadata accessor for SpanMetadata();
  v6[2] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[3] = v8;
  v10 = *(v8 + 64);
  v6[4] = sub_22BD7EA64(v10);
  v6[5] = sub_22BD7EA64(v10);
  v6[6] = sub_22BD7EA64(v10);
  v11 = *(*(sub_22BBE6DE0(&qword_27D8E64E8, &qword_22BDCE3F0) - 8) + 64);
  v6[7] = sub_22BD7EA64(v11);
  v6[8] = sub_22BD7EA64(v11);
  v12 = sub_22BD7EA64(v11);
  v6[9] = v12;
  v13 = *v3;
  v14 = sub_22BB4FC1C(a2);
  *(v6 + 88) = v15 & 1;
  if (__OFADD__(*(v13 + 16), (v15 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v14;
  v17 = v15;
  sub_22BBE6DE0(&qword_27D8E67F8, &qword_22BDCF4C0);
  if (sub_22BDBB4A4())
  {
    v18 = *v3;
    v19 = sub_22BB4FC1C(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      v16 = v19;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_22BDBB744();
    __break(1u);
    return result;
  }

LABEL_5:
  v6[10] = v16;
  if (v17)
  {
    v21 = *(*v3 + 56);
    v22 = *(v9 + 72);
    sub_22BB38958();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  sub_22BB336D0(v12, v23, 1, v7);
  return sub_22BBC4A20;
}

uint64_t (*sub_22BBC4980(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_22BBC4C6C;
}

uint64_t sub_22BBC49A8()
{
  v2 = v0[535];
  v3 = v0[529];
  v4 = v0[528];
  v5 = v0[527];
  v6 = v0[526];
  v7 = v0[520];
  v8 = v0[519];

  return sub_22BDB77A4();
}

void sub_22BBC49D8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = sub_22BC541D0();
  v4(v3);

  free(v1);
}

void sub_22BBC4A20(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = v2[2];
  if (a2)
  {
    v5 = v2[7];
    sub_22BC5E5C4();
    sub_22BB8ACC0();
    v9 = sub_22BB3AA28(v6, v7, v8);
    v10 = *(v2 + 88);
    v11 = v2[7];
    if (v9 != 1)
    {
      v12 = v2[5];
      v13 = v2[1];
      sub_22BB312A4();
      sub_22BB38958();
      v14 = *v13;
      v15 = v2[10];
      v16 = v2[5];
      if ((v10 & 1) == 0)
      {
LABEL_4:
        v17 = v2[4];
        v18 = *v2;
        sub_22BB312A4();
        sub_22BB38958();
        sub_22BB4FEA0();
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v19 = v2[8];
    sub_22BC5E5C4();
    sub_22BB8ACC0();
    v23 = sub_22BB3AA28(v20, v21, v22);
    v10 = *(v2 + 88);
    v11 = v2[8];
    if (v23 != 1)
    {
      v27 = v2[6];
      v28 = v2[1];
      sub_22BB312A4();
      sub_22BB38958();
      v14 = *v28;
      v29 = v2[10];
      v30 = v2[6];
      if ((v10 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v31 = *(v14 + 56);
      v32 = *(v2[3] + 72);
      sub_22BB312A4();
      sub_22BB38958();
      goto LABEL_10;
    }
  }

  sub_22BB58728(v11, &qword_27D8E64E8, &qword_22BDCE3F0);
  if (v10)
  {
    v24 = v2[10];
    v25 = v2[2];
    v26 = *v2[1];
    sub_22BB6B7B8();
    sub_22BDBB4C4();
  }

LABEL_10:
  v33 = v2[8];
  v34 = v2[9];
  v36 = v2[6];
  v35 = v2[7];
  v38 = v2[4];
  v37 = v2[5];
  sub_22BB58728(v34, &qword_27D8E64E8, &qword_22BDCE3F0);
  free(v34);
  free(v33);
  free(v35);
  free(v36);
  free(v37);
  free(v38);

  free(v2);
}

void sub_22BBC4C10(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v3 = sub_22BC541D0();
  v2(v3);

  free(v1);
}

uint64_t sub_22BBC4C80()
{

  return sub_22BB67984(v0 + 1496, v0 + 1648, v0 + 1656, v0 + 1664);
}

uint64_t sub_22BBC4CA0()
{
  sub_22BB2F0D4();
  v0 = swift_task_alloc();
  v1 = sub_22BB31BAC(v0);
  *v1 = v2;
  v1[1] = sub_22BB3C48C;

  return sub_22BBC4D30();
}

uint64_t sub_22BBC4D30()
{
  sub_22BB2F0D4();
  v1 = v0;
  v3 = v2;
  v4 = *(MEMORY[0x277D857E0] + 4);
  v5 = swift_task_alloc();
  v6 = sub_22BB37580(v5);
  *v6 = v7;
  v6[1] = sub_22BB68FA4;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200460](v3, v1, v8);
}

uint64_t sub_22BBC4DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = &_s24StatementResultRetrievalVN;
  v10[4] = &off_283F76800;
  v10[0] = a2;
  v7 = sub_22BB69FEC(v10, &_s24StatementResultRetrievalVN);
  v8 = sub_22BBC4E68(a1, *v7, a3);

  sub_22BB32FA4(v10);
  *(a4 + 16) = v8;
  return a4;
}

uint64_t *sub_22BBC4E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v135 = a3;
  v148 = _s19ValueStepEvaluationVMa(0);
  v5 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v147 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = _s24ActionConfirmationResultVMa(0);
  v7 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v145 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = _s20ActionStepEvaluationVMa(0);
  v9 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v143 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = _s29ParameterDisambiguationResultVMa(0);
  v11 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v130 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = _s27ParameterConfirmationResultVMa(0);
  v13 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v128 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  found = _s33ParameterCandidatesNotFoundResultVMa(0);
  v15 = *(*(found - 8) + 64);
  MEMORY[0x28223BE20](found);
  v126 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = _s25ParameterNotAllowedResultVMa(0);
  v17 = *(*(v125 - 8) + 64);
  MEMORY[0x28223BE20](v125);
  v124 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = _s25ParameterNeedsValueResultVMa(0);
  v19 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v122 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = _s19ParameterStepResultOMa(0);
  v21 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142);
  v151 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = _s23ParameterStepEvaluationVMa(0);
  v23 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v150 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = _s24ToolDisambiguationResultVMa(0);
  v25 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140);
  v139 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = _s14ToolStepResultOMa(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v138 = &v122 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = _s18ToolStepEvaluationVMa(0);
  v30 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v136 = &v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_22BDB43E4();
  v32 = *(v163 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v163);
  v162 = &v122 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v158 = &v122 - v36;
  v37 = _s23StatementStepEvaluationOMa(0);
  v38 = *(v37 - 8);
  v153 = v37;
  v154 = v38;
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v159 = &v122 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v160 = &v122 - v43;
  MEMORY[0x28223BE20](v42);
  v155 = &v122 - v44;
  v134 = sub_22BDB77D4();
  v133 = *(v134 - 8);
  v45 = *(v133 + 64);
  MEMORY[0x28223BE20](v134);
  v132 = &v122 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = _s19SystemResponseEventVMa(0);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v47 - 8);
  v51 = &v122 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v54 = &v122 - v53;
  v165[3] = &_s24StatementResultRetrievalVN;
  v165[4] = &off_283F76800;
  v165[0] = a2;
  v55 = *(a1 + 16);
  v156 = v32;
  if (v55)
  {
    v56 = a1 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v57 = *(v52 + 72);
    v157 = (v32 + 16);
    v152 = (v32 + 8);

    v58 = MEMORY[0x277D84F98];
    v149 = v54;
    while (1)
    {
      v161 = v55;
      sub_22BD17DF8();
      v59 = *v157;
      (*v157)(v162, v54, v163);
      v60 = v51;
      sub_22BD17DF8();
      swift_isUniquelyReferenced_nonNull_native();
      v164 = v58;
      sub_22BD84660();
      if (__OFADD__(*(v58 + 2), (v62 & 1) == 0))
      {
        break;
      }

      v63 = v61;
      v64 = v62;
      sub_22BBE6DE0(&qword_27D8E5C80, qword_22BDCBCE8);
      if (sub_22BDBB4A4())
      {
        sub_22BD84660();
        if ((v64 & 1) != (v66 & 1))
        {
          goto LABEL_48;
        }

        v63 = v65;
      }

      v58 = v164;
      if (v64)
      {
        v67 = v164[7];
        v51 = v60;
        sub_22BD176F4();
        (*v152)(v162, v163);
        v68 = sub_22BD17E4C(v54, _s19SystemResponseEventVMa);
      }

      else
      {
        v164[(v63 >> 6) + 8] |= 1 << v63;
        v69 = v156;
        v71 = v162;
        v70 = v163;
        v59((*(v58 + 6) + *(v156 + 72) * v63), v162, v163);
        v72 = *(v58 + 7);
        v51 = v60;
        sub_22BD17DA4();
        v73 = v71;
        v54 = v149;
        (*(v69 + 8))(v73, v70);
        v68 = sub_22BD17E4C(v54, _s19SystemResponseEventVMa);
        v74 = *(v58 + 2);
        v75 = __OFADD__(v74, 1);
        v76 = v74 + 1;
        if (v75)
        {
          goto LABEL_46;
        }

        *(v58 + 2) = v76;
      }

      v56 += v57;
      v55 = v161 - 1;
      if (v161 == 1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    sub_22BDBB744();
    __break(1u);
    JUMPOUT(0x22BBC6118);
  }

  v58 = MEMORY[0x277D84F98];
LABEL_14:
  MEMORY[0x28223BE20](v68);
  *(&v122 - 2) = v58;
  *(&v122 - 1) = v165;
  sub_22BBC7C84();
  v78 = v77;

  v79 = v132;
  sub_22BDB6404();

  v80 = sub_22BDB77C4();
  v81 = sub_22BDBB0F4();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v164 = v83;
    *v82 = 136315138;
    v84 = MEMORY[0x2318A4D50](v78, v153);
    v86 = sub_22BB32EE0(v84, v85, &v164);

    *(v82 + 4) = v86;
    _os_log_impl(&dword_22BB2C000, v80, v81, "Generated statement steps for system prompt resolutions: %s", v82, 0xCu);
    sub_22BB32FA4(v83);
    MEMORY[0x2318A6080](v83, -1, -1);
    MEMORY[0x2318A6080](v82, -1, -1);
  }

  (*(v133 + 8))(v79, v134);
  v87 = v158;
  v162 = *(v78 + 16);
  if (v162)
  {
    v88 = 0;
    v161 = v78 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
    v89 = (v156 + 16);
    v157 = (v156 + 32);
    v90 = MEMORY[0x277D84F98];
    v91 = (v156 + 8);
    while (2)
    {
      if (v88 < *(v78 + 16))
      {
        v92 = *(v154 + 72);
        sub_22BD17DF8();
        ++v88;
        sub_22BD17DF8();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            sub_22BD17DA4();
            v104 = *(v141 + 28);
            sub_22BD17DF8();
            switch(swift_getEnumCaseMultiPayload())
            {
              case 1u:
                v105 = v124;
                sub_22BD17DA4();
                (*v89)(v87, v105 + *(v125 + 20), v163);
                v106 = _s25ParameterNotAllowedResultVMa;
                break;
              case 2u:
                v105 = v126;
                sub_22BD17DA4();
                (*v89)(v87, v105 + *(found + 20), v163);
                v106 = _s33ParameterCandidatesNotFoundResultVMa;
                break;
              case 3u:
                v105 = v128;
                sub_22BD17DA4();
                (*v89)(v87, v105 + *(v129 + 24), v163);
                v106 = _s27ParameterConfirmationResultVMa;
                break;
              case 4u:
                v105 = v130;
                sub_22BD17DA4();
                (*v89)(v87, v105 + *(v131 + 24), v163);
                v106 = _s29ParameterDisambiguationResultVMa;
                break;
              default:
                v105 = v122;
                sub_22BD17DA4();
                (*v89)(v87, v105 + *(v123 + 20), v163);
                v106 = _s25ParameterNeedsValueResultVMa;
                break;
            }

            sub_22BD17E4C(v105, v106);
            v96 = _s23ParameterStepEvaluationVMa;
            v97 = v150;
            goto LABEL_30;
          case 2u:
            v98 = v143;
            sub_22BD17DA4();
            v99 = v98 + *(v144 + 20);
            v100 = v145;
            sub_22BD17DF8();
            sub_22BD17E4C(v98, _s20ActionStepEvaluationVMa);
            (*v157)(v87, &v100[*(v146 + 20)], v163);
            goto LABEL_31;
          case 3u:
            v101 = v147;
            sub_22BD17DA4();
            v102 = &v101[*(v148 + 24)];
            v103 = _s25ValueDisambiguationResultVMa(0);
            (*v89)(v87, &v102[*(v103 + 24)], v163);
            v96 = _s19ValueStepEvaluationVMa;
            v97 = v101;
            goto LABEL_30;
          default:
            v93 = v136;
            sub_22BD17DA4();
            v94 = v93 + *(v137 + 20);
            sub_22BD17DF8();
            sub_22BD17E4C(v93, _s18ToolStepEvaluationVMa);
            v95 = v139;
            sub_22BD17DA4();
            (*v89)(v87, &v95[*(v140 + 24)], v163);
            v96 = _s24ToolDisambiguationResultVMa;
            v97 = v95;
LABEL_30:
            sub_22BD17E4C(v97, v96);
LABEL_31:
            sub_22BD17DF8();
            swift_isUniquelyReferenced_nonNull_native();
            v164 = v90;
            sub_22BD84660();
            if (__OFADD__(v90[2], (v108 & 1) == 0))
            {
              goto LABEL_45;
            }

            v109 = v107;
            v110 = v108;
            sub_22BBE6DE0(&qword_27D8E5C78, &qword_22BDCBCE0);
            if ((sub_22BDBB4A4() & 1) == 0)
            {
              goto LABEL_35;
            }

            sub_22BD84660();
            if ((v110 & 1) != (v112 & 1))
            {
              goto LABEL_48;
            }

            v109 = v111;
LABEL_35:
            v90 = v164;
            if (v110)
            {
              v113 = v164[7];
              sub_22BD176F4();
              v87 = v158;
              (*v91)(v158, v163);
              sub_22BD17E4C(v155, _s23StatementStepEvaluationOMa);
            }

            else
            {
              v164[(v109 >> 6) + 8] |= 1 << v109;
              v114 = v156;
              v115 = v158;
              v116 = v163;
              (*(v156 + 16))(v90[6] + *(v156 + 72) * v109, v158, v163);
              v117 = v90[7];
              sub_22BD17DA4();
              v118 = *(v114 + 8);
              v87 = v115;
              v118(v115, v116);
              sub_22BD17E4C(v155, _s23StatementStepEvaluationOMa);
              v119 = v90[2];
              v75 = __OFADD__(v119, 1);
              v120 = v119 + 1;
              if (v75)
              {
                goto LABEL_47;
              }

              v90[2] = v120;
            }

            if (v162 == v88)
            {
              goto LABEL_42;
            }

            continue;
        }
      }

      goto LABEL_44;
    }
  }

  v90 = MEMORY[0x277D84F98];
LABEL_42:

  sub_22BB32FA4(v165);
  return v90;
}

uint64_t sub_22BBC619C()
{
  sub_22BB30F5C();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v8 = v0[4];
  v7 = v0[5];
  v9 = swift_task_alloc();
  v10 = sub_22BB31BAC(v9);
  *v10 = v11;
  v10[1] = sub_22BBF90EC;

  return sub_22BBC6298(v4, v2, v5, v6, v8, v7);
}

uint64_t sub_22BBC6298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[179] = a6;
  v6[178] = a5;
  v6[177] = a4;
  v6[176] = a3;
  v6[175] = a2;
  v7 = *(sub_22BDB52C4() - 8);
  v6[180] = v7;
  v8 = *(v7 + 64) + 15;
  v6[181] = swift_task_alloc();
  v6[182] = swift_task_alloc();
  v9 = sub_22BDB5894();
  v6[183] = v9;
  v10 = *(v9 - 8);
  v6[184] = v10;
  v6[185] = *(v10 + 64);
  v6[186] = swift_task_alloc();
  v11 = *(*(sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020) - 8) + 64) + 15;
  v6[187] = swift_task_alloc();
  v6[188] = swift_task_alloc();
  v6[189] = swift_task_alloc();
  v6[190] = swift_task_alloc();
  v6[191] = swift_task_alloc();
  v6[192] = swift_task_alloc();
  v6[193] = swift_task_alloc();
  v6[194] = swift_task_alloc();
  v6[195] = swift_task_alloc();
  v12 = sub_22BDB5154();
  v6[196] = v12;
  v13 = *(v12 - 8);
  v6[197] = v13;
  v14 = *(v13 + 64) + 15;
  v6[198] = swift_task_alloc();
  if (qword_28142A928 != -1)
  {
    swift_once();
  }

  v6[199] = qword_28142F3F0;
  type metadata accessor for SessionControlActor();
  v6[200] = sub_22BB3CC60(&unk_28142A918, type metadata accessor for SessionControlActor);

  v16 = sub_22BDBAE44();
  v6[201] = v16;
  v6[202] = v15;

  return MEMORY[0x2822009F8](sub_22BBC6594, v16, v15);
}

void sub_22BBC6594()
{
  v1 = *(v0 + 1408);
  v197 = type metadata accessor for SessionSwitchboard.SessionInfo();
  if (*(v1 + *(v197 + 28)) != 1)
  {
    goto LABEL_21;
  }

  v2 = *(v0 + 1584);
  v3 = *(v0 + 1576);
  v4 = *(v0 + 1568);
  v5 = *(v0 + 1416);
  sub_22BDB5874();
  v6 = *(v3 + 88);
  v7 = sub_22BB30AE4();
  LODWORD(v5) = v8(v7);
  v9 = *MEMORY[0x277D1C758];
  v10 = *(v3 + 8);
  v11 = sub_22BB30AE4();
  v12(v11);
  if (v5 == v9)
  {
    v13 = *(v0 + 1424);
    sub_22BB40108();
    if (v14)
    {
      v15 = *(v0 + 1472);
      v16 = *(v0 + 1424);
      sub_22BB31B88();
      swift_beginAccess();
      v17 = *(v16 + 24);
      v19 = *(v17 + 64);
      v18 = v17 + 64;
      v20 = *(v17 + 32);
      sub_22BB75520();
      v23 = v22 & v21;
      v25 = (63 - v24) >> 6;
      v210 = v15;

      v26 = 0;
      v209 = v17;
      while (v23)
      {
LABEL_10:
        v28 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v29 = *(v17 + 56);
        v30 = sub_22BB70C60(v28 | (v26 << 6));
        *(v0 + 232) = v31;
        *(v0 + 216) = v32;
        *(v0 + 200) = v33;
        *(v0 + 184) = v30;
        if (*(v0 + 216))
        {
          v34 = *(v0 + 1560);
          v215 = *(v0 + 1552);
          v35 = *(v0 + 1488);
          v212 = v35;
          v218 = *(v0 + 1480);
          v36 = *(v0 + 1464);
          v37 = *(v0 + 1416);
          v38 = sub_22BDBAEF4();
          sub_22BB30B28();
          sub_22BB336D0(v39, v40, v41, v38);
          (*(v210 + 16))(v35, v37, v36);
          v42 = (*(v210 + 80) + 88) & ~*(v210 + 80);
          v43 = swift_allocObject();
          *(v43 + 16) = 0;
          v217 = (v43 + 16);
          *(v43 + 24) = 0;
          v44 = *(v0 + 200);
          *(v43 + 32) = *(v0 + 184);
          *(v43 + 48) = v44;
          *(v43 + 64) = *(v0 + 216);
          *(v43 + 80) = *(v0 + 232);
          (*(v210 + 32))(v43 + v42, v212, v36);
          sub_22BC5E5C4();
          v45 = sub_22BB3A190();
          v47 = sub_22BB3AA28(v45, v46, v38);
          v48 = *(v0 + 1552);
          if (v47 == 1)
          {
            sub_22BB92898(v0 + 184, v0 + 912);
            sub_22BB92898(v0 + 184, v0 + 968);
            sub_22BB58728(v48, &qword_27D8E2978, &qword_22BDBD020);
          }

          else
          {
            sub_22BB92898(v0 + 184, v0 + 1024);
            sub_22BB92898(v0 + 184, v0 + 72);
            sub_22BDBAEE4();
            (*(*(v38 - 8) + 8))(v48, v38);
          }

          if (*v217)
          {
            v49 = *(v43 + 24);
            swift_getObjectType();
            swift_unknownObjectRetain();
            v50 = sub_22BDBAE44();
            v52 = v51;
            swift_unknownObjectRelease();
          }

          else
          {
            v50 = 0;
            v52 = 0;
          }

          v53 = **(v0 + 1400);

          if (v52 | v50)
          {
            v54 = v0 + 1176;
            *(v0 + 1176) = 0;
            *(v0 + 1184) = 0;
            *(v0 + 1192) = v50;
            *(v0 + 1200) = v52;
          }

          else
          {
            v54 = 0;
          }

          v17 = v209;
          v55 = *(v0 + 1560);
          *(v0 + 1352) = 1;
          *(v0 + 1360) = v54;
          *(v0 + 1368) = v53;
          swift_task_create();

          sub_22BBCC320(v0 + 184);
          sub_22BB58728(v55, &qword_27D8E2978, &qword_22BDBD020);
        }
      }

      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v27 >= v25)
        {
          v187 = *(v0 + 1600);

          v188 = qword_28142F3F0;
          *(v0 + 1624) = qword_28142F3F0;
          sub_22BB3CE3C(dword_22BDCF528);
          v189 = swift_task_alloc();
          *(v0 + 1632) = v189;
          *v189 = v0;
          v190 = sub_22BD7BB90;
          goto LABEL_71;
        }

        v23 = *(v18 + 8 * v27);
        ++v26;
        if (v23)
        {
          v26 = v27;
          goto LABEL_10;
        }
      }

LABEL_79:
      __break(1u);
    }

    else
    {
      v192 = *(v0 + 1592);

      sub_22BBB7088();
      swift_allocError();
      *v193 = 3;
      swift_willThrow();
      v194 = *(v0 + 1584);
      sub_22BB2F610();
      v195 = *(v0 + 1496);
      v213 = *(v0 + 1488);
      v214 = *(v0 + 1456);
      v216 = *(v0 + 1448);

      sub_22BB2F09C();

      v196();
    }
  }

  else
  {
LABEL_21:
    v56 = *(v0 + 1544);
    v57 = *(v0 + 1488);
    v58 = *(v0 + 1480);
    v59 = *(v0 + 1472);
    v60 = *(v0 + 1464);
    v61 = *(v0 + 1432);
    v62 = *(v0 + 1416);
    v63 = *(v0 + 1400);
    sub_22BDBAEF4();
    sub_22BB30B28();
    v217 = v64;
    sub_22BB336D0(v65, v66, v67, v64);
    v211 = *(v59 + 16);
    v211(v57, v62, v60);
    v68 = (*(v59 + 80) + 88) & ~*(v59 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = 0;
    *(v69 + 24) = 0;
    v70 = *v61;
    v71 = *(v61 + 16);
    v72 = *(v61 + 32);
    *(v69 + 80) = *(v61 + 48);
    *(v69 + 48) = v71;
    *(v69 + 64) = v72;
    *(v69 + 32) = v70;
    v208 = *(v59 + 32);
    v208(v69 + v68, v57, v60);
    sub_22BB92898(v61, v0 + 240);
    sub_22BBC7634(v56, &unk_22BDCF510, v69);
    sub_22BB58728(v56, &qword_27D8E2978, &qword_22BDBD020);
    v73 = *(v61 + 40);
    v74 = *(v73 + 16);
    if (v74)
    {
      v75 = *(v0 + 1440);
      v76 = *(v0 + 1424);
      sub_22BB92300(v73);
      v78 = *(v77 + 72);
      v200 = v78;
      v203 = v76;
      do
      {
        v79 = *(v0 + 1456);
        sub_22BB32564();
        sub_22BB33618();
        sub_22BB89970();
        swift_beginAccess();
        v80 = *(v76 + 24);
        if (*(v80 + 16) && (v81 = *(v0 + 1456), v82 = sub_22BB3CB98(), (v83 & 1) != 0))
        {
          v84 = *(v0 + 1536);
          v205 = *(v0 + 1528);
          v85 = *(v0 + 1488);
          v86 = *(v0 + 1464);
          v87 = *(v0 + 1456);
          v88 = *(v0 + 1416);
          sub_22BB3711C(v82);
          v91 = v89[1];
          v90 = v89[2];
          v92 = *v89;
          *(v0 + 64) = *(v89 + 6);
          *(v0 + 32) = v91;
          *(v0 + 48) = v90;
          *(v0 + 16) = v92;
          swift_endAccess();
          sub_22BB92898(v0 + 16, v0 + 744);
          sub_22BB35D94();
          sub_22BB34698();
          sub_22BB30B28();
          sub_22BB336D0(v93, v94, v95, v217);
          v211(v85, v88, v86);
          sub_22BB3AFC4();
          v96 = swift_allocObject();
          *(v96 + 16) = 0;
          v97 = (v96 + 16);
          *(v96 + 24) = 0;
          v98 = *(v0 + 32);
          *(v96 + 32) = *(v0 + 16);
          *(v96 + 48) = v98;
          *(v96 + 64) = *(v0 + 48);
          *(v96 + 80) = *(v0 + 64);
          v208(v96 + v80, v85, v86);
          sub_22BC5E5C4();
          v99 = sub_22BB3A190();
          v101 = sub_22BB3AA28(v99, v100, v217);
          v102 = *(v0 + 1528);
          if (v101 == 1)
          {
            sub_22BB92898(v0 + 16, v0 + 800);
            sub_22BB58728(v102, &qword_27D8E2978, &qword_22BDBD020);
          }

          else
          {
            sub_22BB92898(v0 + 16, v0 + 856);
            sub_22BDBAEE4();
            (*(*(v217 - 1) + 8))(v102, v217);
          }

          if (*v97)
          {
            v104 = *(v96 + 24);
            v105 = *v97;
            swift_getObjectType();
            swift_unknownObjectRetain();
            v106 = sub_22BDBAE44();
            v108 = v107;
            swift_unknownObjectRelease();
          }

          else
          {
            v106 = 0;
            v108 = 0;
          }

          v109 = **(v0 + 1400);

          if (v108 | v106)
          {
            v110 = v0 + 1144;
            *(v0 + 1144) = 0;
            *(v0 + 1152) = 0;
            *(v0 + 1160) = v106;
            *(v0 + 1168) = v108;
          }

          else
          {
            v110 = 0;
          }

          v111 = *(v0 + 1536);
          *(v0 + 1304) = 1;
          *(v0 + 1312) = v110;
          *(v0 + 1320) = v109;
          swift_task_create();

          sub_22BBCC320(v0 + 16);
          sub_22BB58728(v111, &qword_27D8E2978, &qword_22BDBD020);
          v78 = v200;
          v76 = v203;
        }

        else
        {
          v103 = *(v0 + 1456);
          swift_endAccess();
          sub_22BB35D94();
          sub_22BB34698();
        }

        v56 += v78;
        --v74;
      }

      while (v74);
    }

    v112 = *(*(v0 + 1408) + *(v197 + 24));
    v113 = *(v112 + 16);
    if (v113)
    {
      v114 = *(v0 + 1440);
      v115 = *(v0 + 1424);
      sub_22BB92300(v112);
      v117 = *(v116 + 72);
      v198 = v117;
      v201 = v115;
      do
      {
        v118 = *(v0 + 1448);
        sub_22BB32564();
        sub_22BB33618();
        sub_22BB89970();
        swift_beginAccess();
        v119 = *(v115 + 24);
        if (*(v119 + 16) && (v120 = *(v0 + 1448), v121 = sub_22BB3CB98(), (v122 & 1) != 0))
        {
          v123 = *(v0 + 1520);
          v206 = *(v0 + 1512);
          v124 = *(v0 + 1488);
          v125 = *(v0 + 1464);
          v126 = *(v0 + 1448);
          v127 = *(v0 + 1416);
          sub_22BB3711C(v121);
          sub_22BB37A5C(v128);
          swift_endAccess();
          sub_22BB92898(v0 + 632, v0 + 520);
          sub_22BB35D94();
          sub_22BB34698();
          sub_22BB30B28();
          sub_22BB336D0(v129, v130, v131, v217);
          v211(v124, v127, v125);
          sub_22BB3AFC4();
          v132 = swift_allocObject();
          *(v132 + 16) = 0;
          *(v132 + 24) = 0;
          v133 = *(v0 + 648);
          *(v132 + 32) = *(v0 + 632);
          *(v132 + 48) = v133;
          *(v132 + 64) = *(v0 + 664);
          *(v132 + 80) = *(v0 + 680);
          v208(v132 + v119, v124, v125);
          sub_22BC5E5C4();
          v134 = sub_22BB3A190();
          v136 = sub_22BB3AA28(v134, v135, v217);
          v137 = *(v0 + 1512);
          if (v136 == 1)
          {
            sub_22BB92898(v0 + 632, v0 + 576);
            sub_22BB58728(v137, &qword_27D8E2978, &qword_22BDBD020);
          }

          else
          {
            sub_22BB92898(v0 + 632, v0 + 688);
            sub_22BDBAEE4();
            (*(*(v217 - 1) + 8))(v137, v217);
          }

          if (*(v132 + 16))
          {
            v139 = *(v132 + 24);
            swift_getObjectType();
            swift_unknownObjectRetain();
            v140 = sub_22BDBAE44();
            v142 = v141;
            swift_unknownObjectRelease();
          }

          else
          {
            v140 = 0;
            v142 = 0;
          }

          v143 = **(v0 + 1400);

          if (v142 | v140)
          {
            v144 = v0 + 1112;
            *(v0 + 1112) = 0;
            *(v0 + 1120) = 0;
            *(v0 + 1128) = v140;
            *(v0 + 1136) = v142;
          }

          else
          {
            v144 = 0;
          }

          v117 = v198;
          v145 = *(v0 + 1520);
          *(v0 + 1280) = 1;
          *(v0 + 1288) = v144;
          *(v0 + 1296) = v143;
          swift_task_create();

          sub_22BBCC320(v0 + 632);
          sub_22BB58728(v145, &qword_27D8E2978, &qword_22BDBD020);
          v115 = v201;
        }

        else
        {
          v138 = *(v0 + 1448);
          swift_endAccess();
          sub_22BB35D94();
          sub_22BB34698();
        }

        v56 += v117;
        --v113;
      }

      while (v113);
    }

    v146 = *(v0 + 1424);
    sub_22BB31B88();
    swift_beginAccess();
    v147 = *(v146 + 24);
    v149 = *(v147 + 64);
    v148 = v147 + 64;
    v150 = *(*(v146 + 24) + 32);
    sub_22BB75520();
    v153 = v152 & v151;
    v155 = (63 - v154) >> 6;

    v157 = 0;
    v199 = v156;
    while (v153)
    {
LABEL_59:
      v159 = __clz(__rbit64(v153));
      v153 &= v153 - 1;
      v160 = *(v156 + 56);
      v161 = sub_22BB70C60(v159 | (v157 << 6));
      *(v0 + 176) = v162;
      *(v0 + 144) = v163;
      *(v0 + 160) = v164;
      *(v0 + 128) = v161;
      if (*(v0 + 160))
      {
        v202 = *(v0 + 1504);
        v204 = *(v0 + 1496);
        v165 = *(v0 + 1488);
        v166 = *(v0 + 1464);
        v167 = *(v0 + 1416);
        sub_22BB30B28();
        sub_22BB336D0(v168, v169, v170, v217);
        v211(v165, v167, v166);
        sub_22BB3AFC4();
        v171 = swift_allocObject();
        *(v171 + 16) = 0;
        v207 = (v171 + 16);
        *(v171 + 24) = 0;
        v172 = *(v0 + 144);
        *(v171 + 32) = *(v0 + 128);
        *(v171 + 48) = v172;
        *(v171 + 64) = *(v0 + 160);
        *(v171 + 80) = *(v0 + 176);
        v208(v171 + v146, v165, v166);
        sub_22BC5E5C4();
        v173 = sub_22BB3A190();
        v175 = sub_22BB3AA28(v173, v174, v217);
        v176 = *(v0 + 1496);
        if (v175 == 1)
        {
          sub_22BB92898(v0 + 128, v0 + 296);
          sub_22BB92898(v0 + 128, v0 + 352);
          sub_22BB58728(v176, &qword_27D8E2978, &qword_22BDBD020);
        }

        else
        {
          sub_22BB92898(v0 + 128, v0 + 408);
          sub_22BB92898(v0 + 128, v0 + 464);
          sub_22BDBAEE4();
          v177 = *(*(v217 - 1) + 8);
          v178 = sub_22BB345A8();
          v179(v178);
        }

        if (*v207)
        {
          v180 = *(v171 + 24);
          v181 = *v207;
          swift_getObjectType();
          sub_22BB32EA4();
          swift_unknownObjectRetain();
          v182 = sub_22BDBAE44();
          v184 = v183;
          swift_unknownObjectRelease();
        }

        else
        {
          v182 = 0;
          v184 = 0;
        }

        v185 = **(v0 + 1400);

        if (v184 | v182)
        {
          v186 = v0 + 1080;
          *(v0 + 1080) = 0;
          *(v0 + 1088) = 0;
          *(v0 + 1096) = v182;
          *(v0 + 1104) = v184;
        }

        else
        {
          v186 = 0;
        }

        v146 = *(v0 + 1504);
        *(v0 + 1376) = 1;
        *(v0 + 1384) = v186;
        *(v0 + 1392) = v185;
        swift_task_create();

        sub_22BBCC320(v0 + 128);
        sub_22BB58728(v146, &qword_27D8E2978, &qword_22BDBD020);
        v156 = v199;
      }
    }

    while (1)
    {
      v158 = v157 + 1;
      if (__OFADD__(v157, 1))
      {
        __break(1u);
        goto LABEL_79;
      }

      if (v158 >= v155)
      {
        break;
      }

      v153 = *(v148 + 8 * v158);
      ++v157;
      if (v153)
      {
        v157 = v158;
        goto LABEL_59;
      }
    }

    v187 = *(v0 + 1600);

    v188 = qword_28142F3F0;
    *(v0 + 1648) = qword_28142F3F0;
    sub_22BB3CE3C(dword_22BDCF528);
    v189 = swift_task_alloc();
    *(v0 + 1656) = v189;
    *v189 = v0;
    v190 = sub_22BBCBE68;
LABEL_71:
    v189[1] = v190;
    v191 = *(v0 + 1400);

    v217(v188, v187);
  }
}

uint64_t sub_22BBC7634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_22BB32E04();
  v8 = sub_22BBE6DE0(v6, v7);
  sub_22BB2F0C8(v8);
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  sub_22BC5E5C4();
  v14 = sub_22BDBAEF4();
  v15 = sub_22BB3A190();
  if (sub_22BB3AA28(v15, v16, v14) == 1)
  {
    sub_22BB58728(v13, &qword_27D8E2978, &qword_22BDBD020);
  }

  else
  {
    sub_22BDBAEE4();
    v17 = *(*(v14 - 8) + 8);
    v18 = sub_22BB345A8();
    v19(v18);
  }

  if (*(a3 + 16))
  {
    v20 = *(a3 + 24);
    v21 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v22 = sub_22BDBAE44();
    v24 = v23;
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v25 = *v4;
  v26 = (v24 | v22);
  if (v24 | v22)
  {
    v29[0] = 0;
    v29[1] = 0;
    v26 = v29;
    v29[2] = v22;
    v29[3] = v24;
  }

  v28[1] = 1;
  v28[2] = v26;
  v28[3] = v25;
  swift_task_create();
}

void sub_22BBC7868()
{

  JUMPOUT(0x2318A4C40);
}

uint64_t sub_22BBC78D0()
{
  sub_22BB2F0D4();
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
  if (sub_22BDBB034())
  {
    sub_22BB2F09C();

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = *(MEMORY[0x277D85818] + 4);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    sub_22BBE6DE0(&qword_27D8E62B8, &qword_22BDCDD50);
    sub_22BB95BC8();
    *v4 = v5;
    v6 = sub_22BB38268();

    return MEMORY[0x2822004D0](v6);
  }
}

uint64_t sub_22BBC79F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_22BDBAE44();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x2822009F8](sub_22BBC78D0, v4, v6);
}

uint64_t sub_22BBC7AD0()
{
  sub_22BB30F5C();
  sub_22BB35760();
  v0 = sub_22BDB5894();
  sub_22BB2F0C8(v0);
  v2 = *(v1 + 80);
  sub_22BB3A9FC();
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  v6 = sub_22BB38EF4(v4);

  return sub_22BBC7E74(v6, v7, v8, v9, v10);
}

uint64_t sub_22BBC7BB0()
{
  sub_22BB2F35C();
  sub_22BD7F034();
  v1 = OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_clientProxy;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  if (qword_28142A928 != -1)
  {
    sub_22BB36324();
  }

  sub_22BB72E68();
  sub_22BB32860();
  sub_22BB3CC60(v3, v4);
  sub_22BD7F040();
  sub_22BB30AE4();
  sub_22BDBAE44();
  sub_22BB39694();
  v5 = sub_22BB72F98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_22BBC7C84()
{
  sub_22BB31014();
  sub_22BB37250();
  v5 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  sub_22BB2F0C8(v5);
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BB30CE4();
  v10 = _s23StatementStepEvaluationOMa(v9);
  v11 = sub_22BB33CD0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30790(v14, v42);
  v16 = MEMORY[0x28223BE20](v15);
  sub_22BB32BC8(v16, v17, v18, v19, v20, v21, v22, v23, v43);
  while (v4 != v3)
  {
    v24 = sub_22BDB8624();
    sub_22BB30434(v24);
    v26 = v25;
    v28 = v27;
    v29 = v1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v30 = *(v28 + 72);
    v31 = sub_22BB37CD8(v29);
    v2(v31);
    if (v0)
    {
      sub_22BB3407C();
      break;
    }

    v32 = sub_22BB37720();
    if (v34)
    {
      v35 = sub_22BB33410();
      sub_22BB58728(v35, v36, &qword_22BDC1258);
      ++v3;
    }

    else
    {
      sub_22BB3871C(v32, v33, _s23StatementStepEvaluationOMa);
      sub_22BB39134();
      v37 = sub_22BB39750();
      if ((v37 & 1) == 0)
      {
        sub_22BB310BC();
        sub_22BD90360();
      }

      sub_22BB36568();
      if (v38)
      {
        sub_22BB342A8();
        sub_22BD90360();
        sub_22BB69254(v41);
      }

      v39 = sub_22BB35AD4();
      sub_22BB52E3C(v39, v40);
    }
  }

  sub_22BB38D50();
  sub_22BB376A8();
}

uint64_t sub_22BBC7E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22BBC7BB0, 0, 0);
}

uint64_t sub_22BBC7EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[3] = &_s24StatementResultRetrievalVN;
  v8[4] = &off_283F76800;
  v8[0] = a2;
  v5 = sub_22BB69FEC(v8, &_s24StatementResultRetrievalVN);
  v6 = sub_22BBC8064(a1, *v5);

  sub_22BB32FA4(v8);
  *(a3 + 16) = v6;
  return a3;
}

uint64_t sub_22BBC7F38()
{
  v1 = *(v0 - 152) + 8;
  v3 = *(v0 - 136);
  result = *(v0 - 128);
  v4 = *(v0 - 120);
  return result;
}

uint64_t sub_22BBC7F9C()
{

  return sub_22BDBB554();
}

uint64_t sub_22BBC7FC0(uint64_t a1, uint64_t a2)
{
  v3 = v2[95];
  v4 = v2[86];
  v5 = v2[71];
  v6 = v2[70];
  v7 = v2[69];
  v8 = v2[68];
  v9 = sub_22BB69FEC(v2 + 12, a2);

  return sub_22BB69088(v9, (v2 + 47));
}

uint64_t sub_22BBC8004()
{
  sub_22BB2F0D4();
  sub_22BB36050();

  v0 = sub_22BB3758C();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t *sub_22BBC8064(uint64_t a1, uint64_t a2)
{
  v156 = _s19ValueStepEvaluationVMa(0);
  v4 = *(*(v156 - 8) + 64);
  MEMORY[0x28223BE20](v156);
  v155 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = _s24ActionConfirmationResultVMa(0);
  v6 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v153 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = _s20ActionStepEvaluationVMa(0);
  v8 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v151 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = _s29ParameterDisambiguationResultVMa(0);
  v10 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140);
  v139 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = _s27ParameterConfirmationResultVMa(0);
  v12 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v137 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  found = _s33ParameterCandidatesNotFoundResultVMa(0);
  v14 = *(*(found - 8) + 64);
  MEMORY[0x28223BE20](found);
  v135 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = _s25ParameterNotAllowedResultVMa(0);
  v16 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v133 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = _s25ParameterNeedsValueResultVMa(0);
  v18 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v131 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = _s19ParameterStepResultOMa(0);
  v20 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v158 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = _s23ParameterStepEvaluationVMa(0);
  v22 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v157 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = _s24ToolDisambiguationResultVMa(0);
  v24 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v147 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = _s14ToolStepResultOMa(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v146 = &v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = _s18ToolStepEvaluationVMa(0);
  v29 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v144 = &v130 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_22BDB43E4();
  v159 = *(v164 - 8);
  v31 = *(v159 + 64);
  v32 = MEMORY[0x28223BE20](v164);
  v143 = &v130 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v163 = &v130 - v35;
  MEMORY[0x28223BE20](v34);
  v171 = &v130 - v36;
  v37 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = &v130 - v39;
  v166 = _s23StatementStepEvaluationOMa(0);
  v165 = *(v166 - 8);
  v41 = *(v165 + 64);
  v42 = MEMORY[0x28223BE20](v166);
  v167 = (&v130 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = MEMORY[0x28223BE20](v42);
  v169 = &v130 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v170 = &v130 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v130 - v49;
  MEMORY[0x28223BE20](v48);
  v141 = &v130 - v51;
  v162 = sub_22BDB77D4();
  v161 = *(v162 - 8);
  v52 = *(v161 + 64);
  MEMORY[0x28223BE20](v162);
  v160 = (&v130 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = _s9PlanEventVMa(0);
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v58 = &v130 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178[3] = &_s24StatementResultRetrievalVN;
  v178[4] = &off_283F76800;
  v178[0] = a2;
  sub_22BB69088(v178, &v176);
  v59 = v177;
  v60 = sub_22BB8D7AC(&v176, v177);
  v61 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v63 = (&v130 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v64 + 16))(v63);
  v65 = *v63;
  v174 = &_s24StatementResultRetrievalVN;
  v175 = &off_283F76800;
  v173 = v65;
  _s22PlannerPromptEvaluatorCMa();
  inited = swift_initStackObject();
  v67 = v174;
  v68 = sub_22BB8D7AC(&v173, v174);
  v69 = *(v67[-1].Description + 8);
  MEMORY[0x28223BE20](v68);
  v71 = (&v130 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71);
  inited[2] = *v71;
  v142 = inited + 2;
  inited[5] = &_s24StatementResultRetrievalVN;
  inited[6] = &off_283F76800;

  sub_22BB32FA4(&v173);
  sub_22BB32FA4(&v176);
  v73 = *(a1 + 16);
  v168 = inited;

  v74 = 0;
  v75 = MEMORY[0x277D84F90];
LABEL_2:
  v76 = v166;
  while (v73 != v74)
  {
    v77 = a1 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
    v78 = *(v55 + 72);
    sub_22BD17DF8();
    sub_22BCBBBE4(v58, v40);
    sub_22BD17E4C(v58, _s9PlanEventVMa);
    if (sub_22BB3AA28(v40, 1, v76) != 1)
    {
      sub_22BD17DA4();
      sub_22BD17DA4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = *(v75 + 16);
        sub_22BD90360();
        v75 = v82;
      }

      v79 = *(v75 + 16);
      if (v79 >= *(v75 + 24) >> 1)
      {
        sub_22BD90360();
        v75 = v83;
      }

      ++v74;
      *(v75 + 16) = v79 + 1;
      v80 = v75 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v79;
      sub_22BD17DA4();
      goto LABEL_2;
    }

    sub_22BB58728(v40, &qword_27D8E3E10, &qword_22BDC1258);
    ++v74;
  }

  v84 = v160;
  sub_22BDB6404();

  v85 = sub_22BDB77C4();
  v86 = sub_22BDBB0F4();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v172 = v88;
    *v87 = 136315138;
    v89 = MEMORY[0x2318A4D50](v75, v76);
    v91 = sub_22BB32EE0(v89, v90, &v172);

    *(v87 + 4) = v91;
    _os_log_impl(&dword_22BB2C000, v85, v86, "Generated statement steps for planner prompt resolutions: %s", v87, 0xCu);
    sub_22BB32FA4(v88);
    MEMORY[0x2318A6080](v88, -1, -1);
    MEMORY[0x2318A6080](v87, -1, -1);
  }

  (*(v161 + 8))(v84, v162);
  v92 = v164;
  v93 = v163;
  v162 = *(v75 + 16);
  if (v162)
  {
    v94 = 0;
    v161 = v75 + ((*(v165 + 80) + 32) & ~*(v165 + 80));
    v167 = (v159 + 16);
    v95 = (v159 + 32);
    v96 = MEMORY[0x277D84F98];
    v160 = (v159 + 8);
    while (2)
    {
      if (v94 < *(v75 + 16))
      {
        v97 = v75;
        v98 = *(v165 + 72);
        sub_22BD17DF8();
        ++v94;
        sub_22BD17DF8();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v110 = v157;
            sub_22BD17DA4();
            v111 = &v110[*(v149 + 28)];
            sub_22BD17DF8();
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v113 = v143;
            switch(EnumCaseMultiPayload)
            {
              case 1:
                v114 = v133;
                sub_22BD17DA4();
                (*v167)(v113, v114 + *(v134 + 20), v92);
                v115 = _s25ParameterNotAllowedResultVMa;
                break;
              case 2:
                v114 = v135;
                sub_22BD17DA4();
                (*v167)(v113, v114 + *(found + 20), v92);
                v115 = _s33ParameterCandidatesNotFoundResultVMa;
                break;
              case 3:
                v114 = v137;
                sub_22BD17DA4();
                (*v167)(v113, v114 + *(v138 + 24), v92);
                v115 = _s27ParameterConfirmationResultVMa;
                break;
              case 4:
                v114 = v139;
                sub_22BD17DA4();
                (*v167)(v113, v114 + *(v140 + 24), v92);
                v115 = _s29ParameterDisambiguationResultVMa;
                break;
              default:
                v114 = v131;
                sub_22BD17DA4();
                (*v167)(v113, v114 + *(v132 + 20), v92);
                v115 = _s25ParameterNeedsValueResultVMa;
                break;
            }

            sub_22BD17E4C(v114, v115);
            (*v95)(v93, v113, v92);
            v102 = _s23ParameterStepEvaluationVMa;
            v103 = v157;
            goto LABEL_27;
          case 2u:
            v104 = v151;
            sub_22BD17DA4();
            v105 = v104 + *(v152 + 20);
            v106 = v153;
            sub_22BD17DF8();
            sub_22BD17E4C(v104, _s20ActionStepEvaluationVMa);
            (*v95)(v93, &v106[*(v154 + 20)], v92);
            goto LABEL_28;
          case 3u:
            v107 = v155;
            sub_22BD17DA4();
            v108 = &v107[*(v156 + 24)];
            v109 = _s25ValueDisambiguationResultVMa(0);
            (*v167)(v93, &v108[*(v109 + 24)], v92);
            v102 = _s19ValueStepEvaluationVMa;
            v103 = v107;
            goto LABEL_27;
          default:
            v99 = v144;
            sub_22BD17DA4();
            v100 = v99 + *(v145 + 20);
            sub_22BD17DF8();
            sub_22BD17E4C(v99, _s18ToolStepEvaluationVMa);
            v101 = v147;
            sub_22BD17DA4();
            (*v167)(v93, &v101[*(v148 + 24)], v92);
            v102 = _s24ToolDisambiguationResultVMa;
            v103 = v101;
LABEL_27:
            sub_22BD17E4C(v103, v102);
LABEL_28:
            (*v95)(v171, v93, v92);
            sub_22BD17DF8();
            swift_isUniquelyReferenced_nonNull_native();
            v172 = v96;
            sub_22BD84660();
            if (__OFADD__(v96[2], (v117 & 1) == 0))
            {
              goto LABEL_42;
            }

            v118 = v116;
            v119 = v117;
            sub_22BBE6DE0(&qword_27D8E5C78, &qword_22BDCBCE0);
            if (sub_22BDBB4A4())
            {
              sub_22BD84660();
              v92 = v164;
              if ((v119 & 1) != (v121 & 1))
              {
                goto LABEL_44;
              }

              v118 = v120;
            }

            else
            {
              v92 = v164;
            }

            v96 = v172;
            if (v119)
            {
              v122 = v172[7] + v118 * v98;
              sub_22BD176F4();
              (*v160)(v171, v92);
              sub_22BD17E4C(v50, _s23StatementStepEvaluationOMa);
            }

            else
            {
              v172[(v118 >> 6) + 8] |= 1 << v118;
              v123 = v159;
              v124 = v171;
              (*(v159 + 16))(v96[6] + *(v159 + 72) * v118, v171, v92);
              v125 = v96[7] + v118 * v98;
              sub_22BD17DA4();
              (*(v123 + 8))(v124, v92);
              sub_22BD17E4C(v50, _s23StatementStepEvaluationOMa);
              v126 = v96[2];
              v127 = __OFADD__(v126, 1);
              v128 = v126 + 1;
              if (v127)
              {
                goto LABEL_43;
              }

              v96[2] = v128;
            }

            v93 = v163;
            v75 = v97;
            if (v162 == v94)
            {
              goto LABEL_40;
            }

            continue;
        }
      }

      break;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    sub_22BDBB744();
    __break(1u);
    JUMPOUT(0x22BBC95ACLL);
  }

  v96 = MEMORY[0x277D84F98];
LABEL_40:

  swift_setDeallocating();
  sub_22BB32FA4(v142);
  sub_22BB32FA4(v178);
  return v96;
}

void sub_22BBC95F0()
{
  if (*(v0 + 56))
  {
    sub_22BB2F0D4();
    v1 = *(v0 + 48);

    sub_22BB32A48(MEMORY[0x277D1CED8]);
    v2 = swift_task_alloc();
    v3 = sub_22BB72038(v2);
    *v3 = v4;
    v5 = sub_22BB53E38(v3);

    v6(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22BBC968C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_22BBBEE60(a1, a2, a3, a4);
}

uint64_t sub_22BBC96AC()
{
  v4 = *(*(v3 - 88) + 48) + *(v1 + 72) * v0;
  v5 = *(v1 + 16);
  return v2;
}

uint64_t sub_22BBC96CC()
{
  v3 = *v0;
  *(v1 - 192) = v0[1];
  *(v1 - 176) = v3;
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 7);
}

__n128 *sub_22BBC96FC(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = sub_22BB89C08;
  return result;
}

void sub_22BBC9718(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v10 = *(a1 + 296);
  v11 = a10[35];
  v12 = a10[33];
  v13 = a10[32];
}

uint64_t sub_22BBC975C(uint64_t a1, uint64_t a2)
{
  v450 = a2;
  v475 = sub_22BBE6DE0(&qword_27D8E3F70, &unk_22BDC1770);
  v3 = sub_22BB2F330(v475);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v6);
  sub_22BB2F39C();
  v8 = sub_22BB30B8C(v7);
  v472 = type metadata accessor for FeedbackLearning.CandidateDefinition(v8);
  v9 = sub_22BB2F330(v472);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB305A8();
  sub_22BB30B8C(v12);
  v492 = sub_22BDB7B44();
  v13 = sub_22BB30444(v492);
  v440 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB305A8();
  sub_22BB30B8C(v17);
  v491 = sub_22BDBA014();
  v18 = sub_22BB30444(v491);
  v439 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB305A8();
  sub_22BB2F14C(v22);
  v23 = sub_22BBE6DE0(&qword_27D8E3E60, &qword_22BDC23E0);
  v24 = sub_22BB2F0C8(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v27);
  sub_22BB2F39C();
  v509 = v28;
  v484 = sub_22BBE6DE0(&qword_27D8E3F78, &qword_22BDC1780);
  v29 = sub_22BB2F330(v484);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v32);
  sub_22BB2F39C();
  sub_22BB2F14C(v33);
  v487 = sub_22BBE6DE0(&qword_27D8E3F80, &qword_22BDC1788);
  v34 = sub_22BB2F330(v487);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v37);
  sub_22BB2F39C();
  sub_22BB30B8C(v38);
  v504 = sub_22BDB8674();
  v39 = sub_22BB30444(v504);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v44);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v45);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v46);
  sub_22BB2F39C();
  sub_22BB30B8C(v47);
  v503 = sub_22BDB8F04();
  v48 = sub_22BB30444(v503);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v53);
  sub_22BB2F384();
  v506 = v54;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v55);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v56);
  sub_22BB2F39C();
  sub_22BB30B8C(v57);
  v463 = sub_22BDB81A4();
  v58 = sub_22BB30444(v463);
  v60 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22BB305A8();
  v64 = sub_22BB30B8C(v63);
  v465 = type metadata accessor for FeedbackLearning.ActionValue(v64);
  v65 = sub_22BB2F330(v465);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22BB305A8();
  sub_22BB30B8C(v68);
  v515 = sub_22BDB4C34();
  v69 = sub_22BB30444(v515);
  v71 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v69);
  sub_22BB30560();
  v512 = v74;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v75);
  sub_22BB2F384();
  v505 = v76;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v77);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v78);
  sub_22BB2F384();
  v508 = v79;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v80);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v81);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v82);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v83);
  sub_22BB2F39C();
  sub_22BB30B8C(v84);
  v480 = sub_22BDB9564();
  v85 = sub_22BB30444(v480);
  v87 = v86;
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v85);
  sub_22BB305A8();
  sub_22BB30B8C(v90);
  v467 = sub_22BDB9954();
  v91 = sub_22BB30444(v467);
  v93 = v92;
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v91);
  sub_22BB30560();
  v510 = v96;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v97);
  sub_22BB2F39C();
  *&v501 = v98;
  v500 = sub_22BDB9B14();
  v99 = sub_22BB30444(v500);
  v101 = v100;
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v99);
  sub_22BB30574();
  v106 = v105 - v104;
  v107 = *(a1 + 16);
  v502 = v50;
  v511 = v41;
  v514 = v71;
  v438 = a1;
  if (v107)
  {
    v108 = *(sub_22BDB9B54() - 8);
    v109 = a1 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v499 = (v101 + 88);
    v436 = v101 + 8;
    v495 = v101 + 96;
    v437 = (v41 + 32);
    v435 = v41 + 16;
    v457 = v71 + 16;
    v466 = v71 + 8;
    v434 = v41 + 8;
    LODWORD(v498) = *MEMORY[0x277D1E6F8];
    v448 = (v50 + 32);
    LODWORD(v477) = *MEMORY[0x277D1E710];
    v444 = v50 + 16;
    v442 = v50 + 8;
    v461 = *MEMORY[0x277D1E7A0];
    v454 = v60 + 32;
    v453 = *MEMORY[0x277D1E830];
    v452 = v60 + 16;
    v451 = v60 + 8;
    v443 = *MEMORY[0x277D1E738];
    v460 = v87 + 32;
    v459 = v87 + 16;
    v458 = v87 + 8;
    v497 = (v93 + 4);
    v469 = v93 + 2;
    v468 = v93 + 1;
    v496 = *(v108 + 72);
    v494 = MEMORY[0x277D84F90];
    v110 = MEMORY[0x277D84F98];
    v111 = MEMORY[0x277D84F98];
    v507 = MEMORY[0x277D84F98];
    v112 = v467;
    v478 = v93;
    v113 = v500;
    while (1)
    {
      sub_22BDB9B24();
      (*v499)(v106, v113);
      sub_22BB33FE8(&v522);
      if (v123)
      {
        v114 = sub_22BB32338();
        v115(v114);
        v116 = *v497;
        v117 = v501;
        (*v497)(v501, v106, v112);
        sub_22BB30F88(&v501);
        v118(v510, v117, v112);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v248 = *(v494 + 16);
          sub_22BD90680();
          v494 = v249;
        }

        v119 = *(v494 + 16);
        if (v119 >= *(v494 + 24) >> 1)
        {
          sub_22BD90680();
          v494 = v250;
        }

        (v93[1])(v501, v112);
        *(v494 + 16) = v119 + 1;
        v120 = *(v93 + 80);
        sub_22BB2F390();
        v116(v122 + v121 + v93[9] * v119, v510, v112);
        goto LABEL_47;
      }

      sub_22BB33FE8(&v507);
      if (v123)
      {
        v124 = sub_22BB32338();
        v125(v124);
        sub_22BB30F88(&v491);
        v126 = v479;
        v127 = v480;
        v128(v479, v106, v480);
        sub_22BB3A950(&v511);
        sub_22BDB8174();
        sub_22BB30F88(&v490);
        v129(v464, v126, v127);
        swift_storeEnumTagMultiPayload();
        v130 = _s13ActionCreatedCMa(0);
        v131 = *(v130 + 48);
        v132 = *(v130 + 52);
        v133 = swift_allocObject();
        *(v133 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated____lazy_storage___parameters) = 0;
        sub_22BB3A670();
        sub_22BCC7414();
        swift_isUniquelyReferenced_nonNull_native();
        v517 = v110;
        sub_22BBDAE68();
        sub_22BB35700();
        if (__OFADD__(v136, v137))
        {
          goto LABEL_173;
        }

        v138 = v134;
        v139 = v135;
        sub_22BBE6DE0(&qword_27D8E3FC0, &qword_22BDC17C8);
        sub_22BB37D08();
        if (sub_22BDBB4A4())
        {
          sub_22BBDAE68();
          if ((v139 & 1) != (v141 & 1))
          {
            goto LABEL_181;
          }

          v138 = v140;
        }

        v110 = v517;
        if (v139)
        {
          v142 = v517[7];
          v143 = *(v142 + 8 * v138);
          *(v142 + 8 * v138) = v133;

          sub_22BB30F88(&v498);
          v144 = sub_22BB58844();
          v145(v144);
          sub_22BB30F88(v489);
          v147 = v479;
          v148 = &v510;
          goto LABEL_26;
        }

        sub_22BB37698(&v517[v138 >> 6]);
        sub_22BB38738();
        sub_22BB36D54();
        v187();
        v188 = sub_22BB36864();
        v189(v188);
        sub_22BB30F88(v489);
        v190(v479, v480);
        v191 = *(v110 + 16);
        v192 = __OFADD__(v191, 1);
        v193 = v191 + 1;
        if (v192)
        {
          goto LABEL_175;
        }

LABEL_45:
        *(v110 + 16) = v193;
        goto LABEL_46;
      }

      sub_22BB33FE8(&v492 + 4);
      if (v149)
      {
        break;
      }

      sub_22BB33FE8(&v483 + 4);
      if (v171)
      {
        v513 = v110;
        v172 = sub_22BB32338();
        v173(v172);
        v174 = *v448;
        v175 = sub_22BB3A238();
        v441 = v176;
        v176(v175);
        sub_22BB3A950(&v487);
        sub_22BDB8174();
        sub_22BB30F88(&v474);
        sub_22BB69260();
        v177();
        swift_isUniquelyReferenced_nonNull_native();
        v517 = v111;
        v178 = v111;
        sub_22BBDAE68();
        v179 = v111[2];
        sub_22BB38090();
        if (__OFADD__(v182, v183))
        {
          goto LABEL_176;
        }

        v184 = v180;
        v185 = v181;
        sub_22BBE6DE0(&qword_27D8E3FB8, &qword_22BDC17C0);
        sub_22BB37D08();
        if (sub_22BDBB4A4())
        {
          v178 = v517;
          sub_22BBDAE68();
          sub_22BB3A228();
          v93 = v478;
          if (!v123)
          {
            goto LABEL_181;
          }

          v184 = v186;
        }

        else
        {
          v93 = v478;
        }

        v111 = v517;
        if (v185)
        {
          v215 = sub_22BB6BCEC();
          (*(v185 + 40))(v215, v455, v178);
          sub_22BB30F88(&v498);
          v216 = sub_22BB58844();
          v217(v216);
          v218 = sub_22BB94E14();
          goto LABEL_58;
        }

        sub_22BB37698(&v517[v184 >> 6]);
        v223 = v514;
        v222 = v515;
        v224 = v456;
        (*(v514 + 16))(v111[6] + *(v514 + 72) * v184, v456, v515);
        v225 = sub_22BB6BCEC();
        v441(v225, v455, v178);
        (*(v223 + 8))(v224, v222);
        v226 = sub_22BB94E14();
        v228 = *(v227 - 256) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v229(v226);
        v230 = v111[2];
        v192 = __OFADD__(v230, 1);
        v231 = v230 + 1;
        if (v192)
        {
          goto LABEL_179;
        }

        v111[2] = v231;
LABEL_61:
        v110 = v513;
        goto LABEL_46;
      }

      sub_22BB33FE8(&v473 + 4);
      if (v194)
      {
        v513 = v110;
        v195 = sub_22BB32338();
        v196(v195);
        v197 = *v437;
        v198 = sub_22BB3A238();
        v441 = v199;
        v199(v198);
        sub_22BB3A950(&v479);
        sub_22BDB8654();
        sub_22BB30F88(&v465);
        sub_22BB69260();
        v200();
        v201 = v507;
        swift_isUniquelyReferenced_nonNull_native();
        v517 = v201;
        sub_22BBDAE68();
        sub_22BB35700();
        if (__OFADD__(v204, v205))
        {
          goto LABEL_178;
        }

        v206 = v202;
        v207 = v203;
        sub_22BBE6DE0(&qword_27D8E3FB0, &qword_22BDC17B8);
        sub_22BB37D08();
        if (sub_22BDBB4A4())
        {
          sub_22BBDAE68();
          sub_22BB3A228();
          v93 = v478;
          if (!v123)
          {
            goto LABEL_181;
          }

          v206 = v208;
        }

        else
        {
          v93 = v478;
        }

        v232 = v517;
        v507 = v517;
        if ((v207 & 1) == 0)
        {
          sub_22BB37698(&v517[v206 >> 6]);
          v239 = v514;
          v238 = v515;
          v240 = v232[6] + *(v514 + 72) * v206;
          v241 = *(v514 + 16);
          v242 = v449;
          sub_22BB36D54();
          v243();
          v244 = sub_22BB2F204();
          v245 = v504;
          v441(v244, v447, v504);
          (*(v239 + 8))(v242, v238);
          (*(v207 + 8))(v446, v245);
          v246 = v232[2];
          v192 = __OFADD__(v246, 1);
          v247 = v246 + 1;
          if (v192)
          {
            goto LABEL_180;
          }

          v232[2] = v247;
          goto LABEL_61;
        }

        v233 = sub_22BB2F204();
        v234 = v504;
        (*(v207 + 40))(v233, v447, v504);
        sub_22BB30F88(&v498);
        v235 = sub_22BB58844();
        v236(v235);
        v220 = *(v207 + 8);
        v218 = v446;
        v219 = v234;
        v221 = &v464;
LABEL_58:
        v237 = *(v221 - 32) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v220(v218, v219);
        v110 = v513;
LABEL_47:
        v113 = v500;
        goto LABEL_48;
      }

      sub_22BB30F88(&v466);
      v214(v106, v113);
LABEL_48:
      v109 += v496;
      if (!--v107)
      {
        goto LABEL_63;
      }
    }

    v150 = sub_22BB32338();
    v151(v150);
    sub_22BB30F88(&v484);
    v152 = sub_22BB3A238();
    v153(v152);
    sub_22BDB8174();
    sub_22BB30F88(&v482);
    sub_22BB69260();
    v154();
    swift_storeEnumTagMultiPayload();
    v155 = _s13ActionCreatedCMa(0);
    v156 = *(v155 + 48);
    v157 = *(v155 + 52);
    v158 = swift_allocObject();
    *(v158 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated____lazy_storage___parameters) = 0;
    sub_22BB3A670();
    sub_22BCC7414();
    swift_isUniquelyReferenced_nonNull_native();
    v517 = v110;
    sub_22BBDAE68();
    sub_22BB35700();
    if (__OFADD__(v161, v162))
    {
      goto LABEL_174;
    }

    v163 = v159;
    v164 = v160;
    sub_22BBE6DE0(&qword_27D8E3FC0, &qword_22BDC17C8);
    sub_22BB37D08();
    if (sub_22BDBB4A4())
    {
      sub_22BBDAE68();
      if ((v164 & 1) != (v166 & 1))
      {
        goto LABEL_181;
      }

      v163 = v165;
    }

    v110 = v517;
    if ((v164 & 1) == 0)
    {
      sub_22BB37698(&v517[v163 >> 6]);
      sub_22BB38738();
      sub_22BB36D54();
      v209();
      v210 = sub_22BB36864();
      v211(v210);
      sub_22BB30F88(&v481);
      v212(v462, v463);
      v213 = *(v110 + 16);
      v192 = __OFADD__(v213, 1);
      v193 = v213 + 1;
      if (v192)
      {
        goto LABEL_177;
      }

      goto LABEL_45;
    }

    v167 = v517[7];
    v168 = *(v167 + 8 * v163);
    *(v167 + 8 * v163) = v158;

    sub_22BB30F88(&v498);
    v169 = sub_22BB58844();
    v170(v169);
    sub_22BB30F88(&v481);
    v147 = v462;
    v148 = &v494;
LABEL_26:
    v146(v147, *(v148 - 32));
LABEL_46:
    v112 = v467;
    v93 = v478;
    goto LABEL_47;
  }

  v111 = MEMORY[0x277D84F98];
  v494 = MEMORY[0x277D84F90];
  v507 = MEMORY[0x277D84F98];
  v110 = MEMORY[0x277D84F98];
LABEL_63:
  v251 = *(v110 + 16);
  v252 = MEMORY[0x277D84F90];
  v253 = v514;
  v513 = v110;
  v481 = v111;
  if (v251)
  {
    v517 = MEMORY[0x277D84F90];
    sub_22BDBB414();
    v255 = sub_22BDB1D48(v110);
    v257 = v256;
    v258 = 0;
    v259 = v110 + 64;
    v499 = (v253 + 4);
    v500 = v253 + 2;
    v498 = v256;
    v497 = v110 + 72;
    v260 = v485;
    while ((v255 & 0x8000000000000000) == 0 && v255 < 1 << *(v110 + 32))
    {
      v261 = v255 >> 6;
      if ((*(v259 + 8 * (v255 >> 6)) & (1 << v255)) == 0)
      {
        goto LABEL_154;
      }

      if (*(v110 + 36) != v257)
      {
        goto LABEL_155;
      }

      v510 = v258;
      LODWORD(v501) = v254;
      v263 = v514;
      v262 = v515;
      (*(v514 + 16))(v260, *(v110 + 48) + *(v514 + 72) * v255, v515);
      v264 = *(*(v110 + 56) + 8 * v255);
      v265 = *(v263 + 32);
      v266 = v486;
      v265(v486, v260, v262);
      *(v266 + *(v487 + 48)) = v264;
      swift_retain_n();
      sub_22BB58728(v266, &qword_27D8E3F80, &qword_22BDC1788);
      sub_22BDBB3F4();
      v267 = v517[2];
      sub_22BDBB424();
      v110 = v513;
      sub_22BDBB434();
      sub_22BDBB404();
      v268 = 1 << *(v110 + 32);
      if (v255 >= v268)
      {
        goto LABEL_156;
      }

      v269 = *(v259 + 8 * v261);
      if ((v269 & (1 << v255)) == 0)
      {
        goto LABEL_157;
      }

      if (*(v110 + 36) != v257)
      {
        goto LABEL_158;
      }

      v270 = v269 & (-2 << (v255 & 0x3F));
      if (v270)
      {
        v268 = __clz(__rbit64(v270)) | v255 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v271 = v261 << 6;
        v272 = v261 + 1;
        v273 = (v497 + 8 * v261);
        while (v272 < (v268 + 63) >> 6)
        {
          v275 = *v273++;
          v274 = v275;
          v271 += 64;
          ++v272;
          if (v275)
          {
            sub_22BBBFEB0(v255, v257, v501 & 1);
            v268 = __clz(__rbit64(v274)) + v271;
            goto LABEL_79;
          }
        }

        sub_22BBBFEB0(v255, v257, v501 & 1);
      }

LABEL_79:
      v254 = 0;
      v258 = (v510 + 1);
      v255 = v268;
      v257 = v498;
      if ((v510 + 1) == v251)
      {
        v252 = v517;
        v253 = v514;
        goto LABEL_81;
      }
    }

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
    goto LABEL_159;
  }

LABEL_81:
  v468 = v252;
  v276 = v507;
  v277 = v507[2];
  v278 = MEMORY[0x277D84F90];
  v279 = v445;
  if (v277)
  {
    v517 = MEMORY[0x277D84F90];
    sub_22BD28010();
    v280 = v517;
    v281 = sub_22BDB1D48(v276);
    v284 = v281;
    *&v501 = v276 + 8;
    v486 = v253 + 2;
    v285 = v511;
    v485 = v511 + 16;
    v480 = v253 + 4;
    v479 = v511 + 32;
    v477 = v282;
    v469 = v276 + 9;
    v478 = v277;
    v507 = v276;
    while ((v284 & 0x8000000000000000) == 0 && v284 < 1 << *(v276 + 32))
    {
      if ((*(v501 + 8 * (v284 >> 6)) & (1 << v284)) == 0)
      {
        goto LABEL_160;
      }

      if (*(v276 + 9) != v282)
      {
        goto LABEL_161;
      }

      sub_22BB38DA0(v281, v282, v283);
      v286 = v484;
      v510 = v280;
      v287 = *(v484 + 12);
      v288 = v276[6] + v253[9] * v284;
      v289 = v253[2];
      v290 = v482;
      v110 = v279;
      sub_22BBDB8C8();
      v291();
      v292 = v276[7];
      v499 = v285[9];
      v500 = v284;
      v293 = v292 + v499 * v284;
      v294 = v285[2];
      v295 = v504;
      v294(v290 + v287, v293, v504);
      v296 = v483;
      (*(v514 + 32))(v483, v290, v279);
      v297 = *(v286 + 48);
      v298 = v285[4];
      v299 = v290 + v287;
      v280 = v510;
      v253 = v479;
      v298(v296 + v297, v299, v295);
      v294(v110, v296 + v297, v295);
      sub_22BB58728(v296, &qword_27D8E3F78, &qword_22BDC1780);
      v517 = v280;
      v300 = v280[2];
      if (v300 >= v280[3] >> 1)
      {
        sub_22BD28010();
        v295 = v504;
        v280 = v517;
      }

      v280[2] = v300 + 1;
      v301 = *(v511 + 80);
      sub_22BB2F390();
      v298(v280 + v302 + v300 * v499, v110, v295);
      v276 = v507;
      v303 = 1 << *(v507 + 32);
      if (v500 >= v303)
      {
        goto LABEL_162;
      }

      if ((*(v501 + 8 * v498) & v497) == 0)
      {
        goto LABEL_163;
      }

      if (*(v507 + 9) != v496)
      {
        goto LABEL_164;
      }

      v279 = v110;
      sub_22BB354A4();
      if (v123)
      {
        v308 = v306 << 6;
        v309 = v306 + 1;
        v310 = &v469[v306];
        v110 = v513;
        v253 = v514;
        v307 = v478;
        while (v309 < (v303 + 63) >> 6)
        {
          v312 = *v310++;
          v311 = v312;
          v308 += 64;
          ++v309;
          if (v312)
          {
            sub_22BBBFEB0(v304, v305, v487 & 1);
            v303 = __clz(__rbit64(v311)) + v308;
            goto LABEL_99;
          }
        }

        sub_22BBBFEB0(v304, v305, v487 & 1);
LABEL_99:
        v276 = v507;
      }

      else
      {
        sub_22BB3AD30();
        v307 = v478;
      }

      sub_22BB334C0();
      v284 = v303;
      v282 = v477;
      v285 = v511;
      if (v313 == v307)
      {
        v278 = MEMORY[0x277D84F90];
        goto LABEL_103;
      }
    }

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
    goto LABEL_165;
  }

  v280 = MEMORY[0x277D84F90];
LABEL_103:
  v314 = v481;
  v315 = v481[2];
  v510 = v280;
  if (!v315)
  {
    v350 = v253;

    v500 = MEMORY[0x277D84F90];
    v352 = v504;
LABEL_125:
    MEMORY[0x28223BE20](v351);
    sub_22BB53D08();
    v485 = sub_22BBCCA88(v468, sub_22BCC73A8, v353);
    v354 = 0;
    v498 = v511 + 16;
    v499 = v280[2];
    v497 = v439 + 8;
    v495 = v440 + 32;
    v487 = v440 + 16;
    v486 = (v440 + 8);
    v513 = (v350 + 2);
    v507 = v350 + 1;
    v355 = MEMORY[0x277D84F98];
    v496 = v511 + 8;
    v356 = v493;
    v501 = xmmword_22BDBCBD0;
    while (v499 != v354)
    {
      v357 = *(v511 + 80);
      sub_22BB2F390();
      (*(v359 + 16))(v356, v280 + v358 + *(v359 + 72) * v354, v352);
      v360 = v490;
      sub_22BDB8664();
      v361 = v509;
      sub_22BDBA004();
      sub_22BB30F88(&v521);
      v362(v360, v491);
      v363 = v492;
      sub_22BB336D0(v361, 0, 1, v492);
      sub_22BB37008(&v518);
      sub_22BB3CD70(v364, v365, &qword_27D8E3E60, &qword_22BDC23E0);
      if (sub_22BB3AA28(v360, 1, v363) == 1)
      {
        v366 = 0;
      }

      else
      {
        sub_22BB30F88(&v519);
        v367 = v470;
        v368(v470, v360, v363);
        sub_22BBE6DE0(&qword_27D8E3FA8, &qword_22BDC17B0);
        v369 = _s27StatementParameterCandidateVMa(0);
        sub_22BB34094(v369);
        v371 = *(v370 + 72);
        v366 = sub_22BB6BAC0();
        *(v366 + 16) = v501;
        v372 = v366 + v360;
        v360 = v471;
        sub_22BDB8664();
        swift_storeEnumTagMultiPayload();
        (*v487)(v372 + *(v110 + 28), v367, v363);
        sub_22BCC7414();
        sub_22BB30F88(v516);
        v373(v367, v363);
      }

      sub_22BB58728(v509, &qword_27D8E3E60, &qword_22BDC23E0);
      v374 = v508;
      sub_22BDB8654();
      sub_22BBE6DE0(&qword_27D8E3F88, &qword_22BDC1790);
      v375 = sub_22BBE6DE0(&qword_27D8E3F90, &unk_22BDC1798);
      sub_22BB34094(v375);
      v377 = *(v376 + 72);
      v378 = sub_22BB6BAC0();
      *(v378 + 16) = v501;
      v379 = v378 + v360;
      v380 = *(v110 + 56);
      type metadata accessor for FeedbackLearning.CandidateParameter(0);
      swift_storeEnumTagMultiPayload();
      *(v379 + v380) = v366;
      sub_22BBE6DE0(&qword_27D8E3E78, &unk_22BDC1340);
      sub_22BCC7468(&qword_27D8E3F98, type metadata accessor for FeedbackLearning.CandidateParameter);
      v381 = sub_22BDBAB14();
      v382 = *v513;
      v383 = v488;
      (*v513)(v488, v374, v515);
      swift_isUniquelyReferenced_nonNull_native();
      v517 = v355;
      sub_22BBDAE68();
      v384 = v355[2];
      sub_22BB38090();
      if (__OFADD__(v387, v388))
      {
        __break(1u);
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      v389 = v385;
      v110 = v386;
      sub_22BBE6DE0(&qword_27D8E3FA0, &qword_22BDC17A8);
      if (sub_22BB5295C())
      {
        sub_22BBDAE68();
        if ((v110 & 1) != (v391 & 1))
        {
          goto LABEL_181;
        }

        v389 = v390;
      }

      v355 = v517;
      if (v110)
      {
        v392 = v517[7];
        v393 = *(v392 + 8 * v389);
        *(v392 + 8 * v389) = v381;
      }

      else
      {
        sub_22BB37698(&v517[v389 >> 6]);
        v382(v355[6] + *(v514 + 72) * v389, v383, v515);
        *(v355[7] + 8 * v389) = v381;
        v394 = v355[2];
        v192 = __OFADD__(v394, 1);
        v395 = v394 + 1;
        if (v192)
        {
          goto LABEL_171;
        }

        v355[2] = v395;
      }

      v396 = *v507;
      v397 = v515;
      (*v507)(v383, v515);
      v396(v508, v397);
      sub_22BB30F88(&v520);
      v356 = v493;
      v352 = v504;
      v398(v493, v504);
      v354 = (v354 + 1);
      v280 = v510;
    }

    MEMORY[0x28223BE20](v399);
    sub_22BB53D08();
    v400 = v500;
    sub_22BBCCDB4(v500, sub_22BCC73B0, v401);
    sub_22BBCD168();
    v402 = sub_22BBCD168();
    v508 = 0;
    v509 = v402;
    v403 = sub_22BBBB918(v438);
    v504 = sub_22BBCD890(v494, v403);

    *&v501 = sub_22BBCD974(v468);

    v404 = 0;
    v405 = *(v400 + 16);
    v406 = v502;
    v407 = v503;
    v510 = (v502 + 16);
    v511 = v405;
    v408 = MEMORY[0x277D84F98];
    v409 = (v502 + 8);
    while (v511 != v404)
    {
      v410 = *(v406 + 80);
      sub_22BB2F390();
      v413 = v506;
      (*(v412 + 16))(v506, v400 + v411 + *(v412 + 72) * v404, v407);
      v414 = v505;
      sub_22BDB8174();
      v415 = sub_22BCC29AC(v413);
      v416 = *v513;
      (*v513)(v512, v414, v515);
      swift_isUniquelyReferenced_nonNull_native();
      v517 = v408;
      sub_22BBDAE68();
      v417 = v408[2];
      sub_22BB38090();
      if (__OFADD__(v420, v421))
      {
        goto LABEL_152;
      }

      v422 = v418;
      v423 = v419;
      sub_22BBE6DE0(&qword_27D8E3FA0, &qword_22BDC17A8);
      if (sub_22BB5295C())
      {
        sub_22BBDAE68();
        if ((v423 & 1) != (v425 & 1))
        {
          goto LABEL_181;
        }

        v422 = v424;
      }

      v408 = v517;
      if (v423)
      {
        v426 = v517[7];
        v427 = *(v426 + 8 * v422);
        *(v426 + 8 * v422) = v415;
      }

      else
      {
        sub_22BB37698(&v517[v422 >> 6]);
        v416(v408[6] + *(v514 + 72) * v422, v512, v515);
        *(v408[7] + 8 * v422) = v415;
        v428 = v408[2];
        v192 = __OFADD__(v428, 1);
        v429 = v428 + 1;
        if (v192)
        {
          goto LABEL_172;
        }

        v408[2] = v429;
      }

      v430 = *v507;
      v431 = v515;
      (*v507)(v512, v515);
      v430(v505, v431);
      v407 = v503;
      (*v409)(v506, v503);
      ++v404;
      v406 = v502;
    }

    sub_22BBCD168();
    sub_22BBCDEA4();
    v432 = sub_22BBCDEA4();

    return v432;
  }

  v517 = v278;

  sub_22BD27FC8();
  v316 = v517;
  v317 = sub_22BDB1D48(v314);
  v320 = v314 + 16;
  v486 = v253 + 2;
  v485 = v502 + 16;
  v484 = v253 + 4;
  v479 = v318;
  v478 = v314 + 18;
  v480 = v315;
  v482 = v314 + 16;
  v483 = v502 + 32;
  while ((v317 & 0x8000000000000000) == 0 && v317 < 1 << *(v314 + 32))
  {
    if ((v320[v317 >> 6] & (1 << v317)) == 0)
    {
      goto LABEL_166;
    }

    if (v314[9] != v318)
    {
      goto LABEL_167;
    }

    sub_22BB38DA0(v317, v318, v319);
    v500 = v316;
    v321 = v475;
    v322 = *(v475 + 48);
    v324 = *(v314 + 6) + v253[9] * v323;
    v325 = v253[2];
    v326 = v473;
    v327 = v323;
    sub_22BBDB8C8();
    v328();
    v329 = *(v314 + 7);
    v330 = v502;
    v331 = v503;
    v332 = *(v502 + 72);
    *&v501 = v327;
    v499 = v332;
    v333 = *(v502 + 16);
    v333(v326 + v322, v329 + v332 * v327, v503);
    v334 = v253[4];
    v253 = v474;
    v334(v474, v326, v315);
    v335 = *(v321 + 48);
    v316 = v500;
    v336 = *(v330 + 32);
    (v336)(v253 + v335, v326 + v322, v331);
    v333(v476, v253 + v335, v331);
    sub_22BB58728(v253, &qword_27D8E3F70, &unk_22BDC1770);
    v517 = v316;
    v337 = *(v316 + 16);
    v110 = v337 + 1;
    if (v337 >= *(v316 + 24) >> 1)
    {
      sub_22BD27FC8();
      v316 = v517;
    }

    *(v316 + 16) = v110;
    v338 = *(v330 + 80);
    sub_22BB2F390();
    sub_22BB69260();
    v336();
    v314 = v481;
    v339 = 1 << *(v481 + 32);
    if (v501 >= v339)
    {
      goto LABEL_168;
    }

    v320 = v482;
    if ((v482[v498] & v497) == 0)
    {
      goto LABEL_169;
    }

    if (*(v481 + 9) != v496)
    {
      goto LABEL_170;
    }

    sub_22BB354A4();
    if (v123)
    {
      v343 = v342 << 6;
      v344 = v342 + 1;
      v345 = &v478[v342];
      v110 = v513;
      v346 = v514;
      while (v344 < (v339 + 63) >> 6)
      {
        v348 = *v345++;
        v347 = v348;
        v343 += 64;
        ++v344;
        if (v348)
        {
          sub_22BBBFEB0(v340, v341, v487 & 1);
          v339 = __clz(__rbit64(v347)) + v343;
          goto LABEL_121;
        }
      }

      sub_22BBBFEB0(v340, v341, v487 & 1);
LABEL_121:
      v253 = v346;
    }

    else
    {
      sub_22BB3AD30();
    }

    sub_22BB334C0();
    v317 = v339;
    v318 = v479;
    v315 = v480;
    if (v349 == v480)
    {
      v500 = v316;
      v350 = v253;

      v351 = swift_bridgeObjectRelease_n();
      v352 = v504;
      v280 = v510;
      goto LABEL_125;
    }
  }

LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
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
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BBCBD70()
{
  sub_22BB2F35C();
  if (*(v0 + 97))
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    if (sub_22BDBB034())
    {
      if (v2)
      {
        swift_willThrow();
      }

      sub_22BB2F09C();

      return v4();
    }

    *(v0 + 72) = v2;
  }

  v6 = *(MEMORY[0x277D85818] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  sub_22BBE6DE0(&qword_27D8E62B8, &qword_22BDCDD50);
  sub_22BB95BC8();
  *v7 = v8;
  v9 = sub_22BB38268();

  return MEMORY[0x2822004D0](v9);
}

uint64_t sub_22BBCBE68()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 1656);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 1664) = v0;

  if (v0)
  {
    sub_22BB384F4();
    v11 = sub_22BD7BD78;
  }

  else
  {
    v12 = *(v3 + 1648);

    sub_22BB384F4();
    v11 = sub_22BBCBFDC;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_22BBCBF80(uint64_t *a1)
{
  result = *a1;
  v4 = *(v2 + 8);
  v5 = *v1;
  v6 = v1[1];
  return result;
}

uint64_t sub_22BBCBFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BB974BC();
  v17 = v16[199];
  v18 = v16[198];
  sub_22BB2F610();
  v28 = v16[187];
  v29 = v16[186];
  v30 = v16[182];
  v31 = v16[181];

  sub_22BB2F09C();
  sub_22BB32660();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, v28, v29, v30, v31, a14, a15, a16);
}

void sub_22BBCC0D0()
{
  v3 = v0[191];
  v4 = v0[95];
  v5 = v0[93];
  *(v2 - 128) = v0[94];
  *(v2 - 120) = v5;
  *(v2 - 104) = v1;
}

uint64_t sub_22BBCC100()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 112);

  return sub_22BDBB5D4();
}