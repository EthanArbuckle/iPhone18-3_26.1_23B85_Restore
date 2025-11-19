uint64_t sub_25845F964()
{
  v1 = *v0;
  sub_258533EEC();
  MEMORY[0x259C81F40](v1);
  return sub_258533F2C();
}

uint64_t sub_25845F9D8()
{
  v1 = *v0;
  sub_258533EEC();
  MEMORY[0x259C81F40](v1);
  return sub_258533F2C();
}

uint64_t sub_25845FA84()
{
  if (*v0)
  {
    return 22;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_25845FAAC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  sub_258465168((v0 + 21), &qword_27F92FB70, &qword_2585353E8);
  v1 = v0[26];

  v2 = v0[28];
  sub_258464B24(v0[27]);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_25845FB48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25845FB68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 6) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25845FBC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25845FBE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ControlConnectionMigrationManager.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlConnectionMigrationManager.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25845FDA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25845FDC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_25845FE00()
{
  result = qword_27F92FAA0;
  if (!qword_27F92FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FAA0);
  }

  return result;
}

uint64_t sub_25845FE64@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ControlConnectionMigrationManager();
  result = sub_258533B9C();
  *a1 = result;
  return result;
}

uint64_t sub_25845FEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0) - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB80, &qword_258535410);
  v5[45] = v7;
  v8 = *(v7 - 8);
  v5[46] = v8;
  v5[47] = *(v8 + 64);
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25845FFC4, v4, 0);
}

uint64_t sub_25845FFC4()
{
  v30 = v0;
  v1 = v0[43];
  if (*(v1 + 112))
  {
    sub_258464BC4();
    v2 = swift_allocError();
    *v3 = 0;
    swift_willThrow();
    v0[55] = v2;
    v4 = swift_task_alloc();
    v0[56] = v4;
    *v4 = v0;
    v4[1] = sub_258461010;
    v5 = v0[43];

    return sub_2584621A4(v2);
  }

  else
  {
    v7 = v0[43];
    if (qword_27F92F910 != -1)
    {
      swift_once();
      v26 = v0[43];
    }

    v8 = sub_258532A4C();
    v0[50] = __swift_project_value_buffer(v8, qword_27F93D080);

    v9 = sub_258532A2C();
    v10 = sub_2585338EC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[43];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v13;
      v28 = 0;
      *v12 = 136315138;
      v29 = 0xE000000000000000;
      sub_258533B8C();
      v0[34] = v28;
      v0[35] = 0xE000000000000000;
      MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
      type metadata accessor for ControlConnectionMigrationManager();
      sub_258464D04(&qword_27F92FAA8, v14, type metadata accessor for ControlConnectionMigrationManager);
      v0[38] = sub_258533B9C();
      sub_258533C8C();
      MEMORY[0x259C81500](93, 0xE100000000000000);
      v15 = sub_2584713B0(v0[34], v0[35], &v27);

      *(v12 + 4) = v15;
      _os_log_impl(&dword_25845E000, v9, v10, "%s activating", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x259C82900](v13, -1, -1);
      MEMORY[0x259C82900](v12, -1, -1);
    }

    v16 = v0[42];
    v17 = v0[43];
    v18 = v0[41];
    *(v1 + 112) = 1;
    v20 = v17[27];
    v19 = v17[28];
    v17[27] = v18;
    v17[28] = v16;

    sub_258464B24(v20);
    v21 = *__swift_project_boxed_opaque_existential_1(v17 + 15, v17[18]);
    v22 = swift_task_alloc();
    v0[51] = v22;
    *v22 = v0;
    v22[1] = sub_258460348;
    v23 = v0[49];
    v24 = v0[39];
    v25 = v0[40];

    return sub_2584E7D68(v23, v24, v25);
  }
}

uint64_t sub_258460348()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 344);
  if (v0)
  {
    v6 = sub_25846067C;
  }

  else
  {
    v6 = sub_258460474;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258460474()
{
  if (*(v0[43] + 112) == 1)
  {
    v1 = v0[40];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v4 = *(v3 + 104);
    v15 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[53] = v6;
    *v6 = v0;
    v6[1] = sub_258460718;

    return (v15)(v0 + 12, v2, v3);
  }

  else
  {
    v8 = v0[49];
    v9 = v0[45];
    v10 = v0[46];
    sub_258464BC4();
    v11 = swift_allocError();
    *v12 = 0;
    swift_willThrow();
    (*(v10 + 8))(v8, v9);
    v0[55] = v11;
    v13 = swift_task_alloc();
    v0[56] = v13;
    *v13 = v0;
    v13[1] = sub_258461010;
    v14 = v0[43];

    return sub_2584621A4(v11);
  }
}

uint64_t sub_25846067C()
{
  v1 = v0[52];
  v0[55] = v1;
  v2 = swift_task_alloc();
  v0[56] = v2;
  *v2 = v0;
  v2[1] = sub_258461010;
  v3 = v0[43];

  return sub_2584621A4(v1);
}

uint64_t sub_258460718()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  v5 = *(v2 + 344);
  if (v0)
  {
    v6 = sub_2584611B4;
  }

  else
  {
    v6 = sub_258460844;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258460844()
{
  v65 = v0;
  v1 = *(v0 + 120);
  if (!v1)
  {
    sub_258465168(v0 + 96, &qword_27F92FB90, &qword_258535420);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    goto LABEL_9;
  }

  v2 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  if (!*(v0 + 80))
  {
LABEL_9:
    v22 = *(v0 + 392);
    v24 = *(v0 + 360);
    v23 = *(v0 + 368);
    sub_258465168(v0 + 56, &qword_27F92FB70, &qword_2585353E8);
    sub_258464BC4();
    v18 = swift_allocError();
    *v25 = 1;
    swift_willThrow();
LABEL_11:
    (*(v23 + 8))(v22, v24);
    goto LABEL_12;
  }

  v3 = *(v0 + 344);
  sub_258464C18((v0 + 56), v0 + 16);
  if (*(v3 + 112) != 1)
  {
    v22 = *(v0 + 392);
    v24 = *(v0 + 360);
    v23 = *(v0 + 368);
    sub_258464BC4();
    v18 = swift_allocError();
    *v26 = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    goto LABEL_11;
  }

  v4 = *(v0 + 400);
  v5 = *(v0 + 344);
  sub_258464C30(v0 + 16, v0 + 136);
  swift_beginAccess();
  sub_258464C94(v0 + 136, v5 + 168);
  swift_endAccess();

  v6 = sub_258532A2C();
  v7 = sub_2585338EC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 344);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v62 = v10;
    v63 = 0;
    *v9 = 136315394;
    v64 = 0xE000000000000000;
    sub_258533B8C();
    *(v0 + 256) = v63;
    *(v0 + 264) = 0xE000000000000000;
    MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
    type metadata accessor for ControlConnectionMigrationManager();
    sub_258464D04(&qword_27F92FAA8, v11, type metadata accessor for ControlConnectionMigrationManager);
    *(v0 + 296) = sub_258533B9C();
    sub_258533C8C();
    MEMORY[0x259C81500](93, 0xE100000000000000);
    v12 = sub_2584713B0(*(v0 + 256), *(v0 + 264), &v62);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    sub_258464990(v5 + 168, v0 + 176);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB70, &qword_2585353E8);
    v13 = sub_25853347C();
    v15 = sub_2584713B0(v13, v14, &v62);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_25845E000, v6, v7, "%s current interface=%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v10, -1, -1);
    MEMORY[0x259C82900](v9, -1, -1);
  }

  v16 = *(v0 + 432);
  v17 = *(v0 + 344);
  sub_258461268();
  if (v16)
  {
    v18 = v16;
    v19 = *(v0 + 392);
    v20 = *(v0 + 360);
    v21 = *(v0 + 368);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    (*(v21 + 8))(v19, v20);
LABEL_12:
    *(v0 + 440) = v18;
    v27 = swift_task_alloc();
    *(v0 + 448) = v27;
    *v27 = v0;
    v27[1] = sub_258461010;
    v28 = *(v0 + 344);

    return sub_2584621A4(v18);
  }

  v30 = *(v0 + 392);
  v61 = *(v0 + 400);
  v32 = *(v0 + 376);
  v31 = *(v0 + 384);
  v33 = *(v0 + 360);
  v34 = *(v0 + 368);
  v35 = *(v0 + 344);
  v36 = *(v0 + 352);
  v37 = sub_25853368C();
  (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
  (*(v34 + 16))(v31, v30, v33);
  v39 = sub_258464D04(&qword_27F92FB98, v38, type metadata accessor for ControlConnectionMigrationManager);
  v40 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v41 = (v32 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  *(v42 + 16) = v35;
  *(v42 + 24) = v39;
  (*(v34 + 32))(v42 + v40, v31, v33);
  *(v42 + v41) = v35;
  swift_retain_n();
  v43 = sub_2585135CC(0, 0, v36, &unk_258535430, v42);
  v44 = *(v35 + 208);
  *(v35 + 208) = v43;

  v45 = sub_258532A2C();
  v46 = sub_2585338EC();

  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 392);
  v49 = *(v0 + 360);
  v50 = *(v0 + 368);
  if (v47)
  {
    v51 = *(v0 + 344);
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v62 = v53;
    v63 = 0;
    *v52 = 136315138;
    v64 = 0xE000000000000000;
    sub_258533B8C();
    v54 = v64;
    *(v0 + 240) = v63;
    *(v0 + 248) = v54;
    MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
    type metadata accessor for ControlConnectionMigrationManager();
    sub_258464D04(&qword_27F92FAA8, v55, type metadata accessor for ControlConnectionMigrationManager);
    *(v0 + 288) = sub_258533B9C();
    sub_258533C8C();
    MEMORY[0x259C81500](93, 0xE100000000000000);
    v56 = sub_2584713B0(*(v0 + 240), *(v0 + 248), &v62);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_25845E000, v45, v46, "%s activated", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x259C82900](v53, -1, -1);
    MEMORY[0x259C82900](v52, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  (*(v50 + 8))(v48, v49);
  v58 = *(v0 + 384);
  v57 = *(v0 + 392);
  v59 = *(v0 + 352);
  *(*(v0 + 344) + 112) = 2;

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_258461010()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 344);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_258461120, v2, 0);
}

uint64_t sub_258461120()
{
  v1 = v0[55];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[44];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[55];

  return v5();
}

uint64_t sub_2584611B4()
{
  (*(v0[46] + 8))(v0[49], v0[45]);
  v1 = v0[54];
  v0[55] = v1;
  v2 = swift_task_alloc();
  v0[56] = v2;
  *v2 = v0;
  v2[1] = sub_258461010;
  v3 = v0[43];

  return sub_2584621A4(v1);
}

void sub_258461268()
{
  v2 = v0;
  v3 = sub_258532D2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v82 - v11;
  v13 = *__swift_project_boxed_opaque_existential_1((v0 + 120), *(v0 + 144));
  v14 = sub_2584E95E0();
  if (v1)
  {
    return;
  }

  v15 = v14;
  v90 = v12;
  v84 = 0;
  if (qword_27F92F910 != -1)
  {
    goto LABEL_77;
  }

LABEL_3:
  v16 = sub_258532A4C();
  v17 = __swift_project_value_buffer(v16, qword_27F93D080);

  v18 = sub_258532A2C();
  v19 = sub_2585338EC();

  v20 = os_log_type_enabled(v18, v19);
  v86 = v2;
  v85 = v17;
  v92 = v9;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v98 = v4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v102[0] = v23;
    *v22 = 136315394;
    *&v104 = 0;
    *(&v104 + 1) = 0xE000000000000000;
    sub_258533B8C();
    MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
    type metadata accessor for ControlConnectionMigrationManager();
    sub_258464D04(&qword_27F92FAA8, v24, type metadata accessor for ControlConnectionMigrationManager);
    *&v99 = sub_258533B9C();
    sub_258533C8C();
    MEMORY[0x259C81500](93, 0xE100000000000000);
    v25 = sub_2584713B0(v104, *(&v104 + 1), v102);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931420, &unk_258535450);
    v27 = MEMORY[0x259C81630](v15, v26);
    v29 = sub_2584713B0(v27, v28, v102);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_25845E000, v18, v19, "%s availableInterfaces=%s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v23, -1, -1);
    v30 = v22;
    v4 = v98;
    MEMORY[0x259C82900](v30, -1, -1);
  }

  v9 = v90;
  v98 = *(v15 + 16);
  if (v98)
  {
    v2 = 0;
    v31 = v15 + 32;
    v97 = (v4 + 88);
    v96 = *MEMORY[0x277CD8CB0];
    v91 = *MEMORY[0x277CD8CA8];
    v89 = *MEMORY[0x277CD8CB8];
    v88 = *MEMORY[0x277CD8CA0];
    v87 = *MEMORY[0x277CD8CC0];
    v83 = (v4 + 8);
    v32 = MEMORY[0x277D84F90];
    v33 = v15 + 32;
    v93 = v15;
    v94 = v3;
    while (1)
    {
      if (v2 >= *(v15 + 16))
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        swift_once();
        goto LABEL_3;
      }

      sub_258464C30(v33, &v104);
      __swift_project_boxed_opaque_existential_1(&v104, v105);
      sub_258532D6C();
      v95 = *v97;
      v34 = v95(v9, v3);
      if (v34 != v96 && v34 != v91 && v34 != v89)
      {
        if (v34 == v88)
        {

LABEL_14:
          sub_258464C18(&v104, v102);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v106 = v32;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2584F92F8(0, *(v32 + 16) + 1, 1);
            v32 = v106;
          }

          v37 = *(v32 + 16);
          v36 = *(v32 + 24);
          v4 = v37 + 1;
          if (v37 >= v36 >> 1)
          {
            sub_2584F92F8((v36 > 1), v37 + 1, 1);
            v32 = v106;
          }

          v38 = v103;
          v39 = __swift_mutable_project_boxed_opaque_existential_1(v102, v103);
          v40 = *(*(v38 - 8) + 64);
          MEMORY[0x28223BE20](v39, v39);
          v42 = &v82 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v43 + 16))(v42);
          v100 = type metadata accessor for NetworkBackedNetworkInterface();
          v101 = &off_2869900B8;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v99);
          sub_258465104(v42, boxed_opaque_existential_1);
          *(v32 + 16) = v4;
          sub_258464C18(&v99, v32 + 40 * v37 + 32);
          __swift_destroy_boxed_opaque_existential_1Tm(v102);
          v15 = v93;
          v3 = v94;
          v9 = v90;
          goto LABEL_8;
        }

        if (v34 != v87)
        {
          (*v83)(v9, v3);
        }
      }

      v4 = sub_258533E2C();

      if (v4)
      {
        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v104);
LABEL_8:
      ++v2;
      v33 += 40;
      if (v98 == v2)
      {
        v4 = 0;
        v2 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v4 >= *(v15 + 16))
          {
            goto LABEL_76;
          }

          sub_258464C30(v31, &v104);
          __swift_project_boxed_opaque_existential_1(&v104, v105);
          v45 = v92;
          sub_258532D6C();
          v46 = v95(v45, v3);
          if (v46 != v96)
          {
            if (v46 == v91)
            {

LABEL_33:
              sub_258464C18(&v104, v102);
              v48 = swift_isUniquelyReferenced_nonNull_native();
              v106 = v2;
              if ((v48 & 1) == 0)
              {
                sub_2584F92F8(0, *(v2 + 16) + 1, 1);
                v2 = v106;
              }

              v50 = *(v2 + 16);
              v49 = *(v2 + 24);
              if (v50 >= v49 >> 1)
              {
                sub_2584F92F8((v49 > 1), v50 + 1, 1);
                v2 = v106;
              }

              v51 = v103;
              v52 = __swift_mutable_project_boxed_opaque_existential_1(v102, v103);
              v53 = *(*(v51 - 8) + 64);
              MEMORY[0x28223BE20](v52, v52);
              v9 = &v82 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v55 + 16))(v9);
              v100 = type metadata accessor for NetworkBackedNetworkInterface();
              v101 = &off_2869900B8;
              v56 = __swift_allocate_boxed_opaque_existential_1(&v99);
              sub_258465104(v9, v56);
              *(v2 + 16) = v50 + 1;
              sub_258464C18(&v99, v2 + 40 * v50 + 32);
              __swift_destroy_boxed_opaque_existential_1Tm(v102);
              v15 = v93;
              v3 = v94;
              goto LABEL_26;
            }

            if (v46 != v89 && v46 != v88 && v46 != v87)
            {
              (*v83)(v92, v3);
            }
          }

          v47 = sub_258533E2C();

          if (v47)
          {
            goto LABEL_33;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&v104);
LABEL_26:
          ++v4;
          v31 += 40;
          if (v98 == v4)
          {
            goto LABEL_44;
          }
        }
      }
    }
  }

  v32 = MEMORY[0x277D84F90];
  v2 = MEMORY[0x277D84F90];
LABEL_44:

  if (*(v86 + 160) > 1u)
  {
    v57 = *(v86 + 160) == 2;
    goto LABEL_48;
  }

  if (*(v86 + 160))
  {
LABEL_48:
    v58 = sub_258533E2C();

    if (v58)
    {
      v59 = v32;
    }

    else
    {
      v59 = v2;
    }

    if ((v58 & 1) == 0)
    {
      v2 = v32;
    }

    v32 = v59;
    goto LABEL_54;
  }

LABEL_54:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FBA8, &unk_258535440);
  v60 = swift_allocObject();
  v15 = 0;
  *(v60 + 16) = xmmword_258535160;
  *(v60 + 32) = v32;
  v9 = (v60 + 32);
  *(v60 + 40) = v2;
  v61 = MEMORY[0x277D84F90];
  v62 = v86;
  do
  {
    if (v15 > 1)
    {
      __break(1u);
      goto LABEL_75;
    }

    v2 = *&v9[8 * v15];
    if (*(v2 + 16))
    {
      ++v15;
    }

    else
    {
      if (v15 == 1)
      {
        break;
      }

      v2 = *&v9[8 * v15 + 8];
      if (!*(v2 + 16))
      {
        break;
      }

      v15 = 2;
    }

    v63 = swift_isUniquelyReferenced_nonNull_native();
    *&v104 = v61;
    if ((v63 & 1) == 0)
    {
      sub_2584F9358(0, *(v61 + 16) + 1, 1);
      v61 = v104;
    }

    v4 = *(v61 + 16);
    v64 = *(v61 + 24);
    v3 = v4 + 1;
    if (v4 >= v64 >> 1)
    {
      sub_2584F9358((v64 > 1), v4 + 1, 1);
      v61 = v104;
    }

    *(v61 + 16) = v3;
    *(v61 + 8 * v4 + 32) = v2;
  }

  while (v15 != 2);

  if (*(v61 + 16))
  {

    v65 = sub_258532A2C();
    v66 = sub_2585338EC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v102[0] = v68;
      *v67 = 136315394;
      *&v104 = 0;
      *(&v104 + 1) = 0xE000000000000000;
      sub_258533B8C();
      MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
      type metadata accessor for ControlConnectionMigrationManager();
      sub_258464D04(&qword_27F92FAA8, v69, type metadata accessor for ControlConnectionMigrationManager);
      *&v99 = sub_258533B9C();
      sub_258533C8C();
      MEMORY[0x259C81500](93, 0xE100000000000000);
      v70 = sub_2584713B0(v104, *(&v104 + 1), v102);

      *(v67 + 4) = v70;
      *(v67 + 12) = 2080;
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F92FBB0, &qword_25853A840);
      v72 = MEMORY[0x259C81630](v61, v71);
      v74 = sub_2584713B0(v72, v73, v102);

      *(v67 + 14) = v74;
      _os_log_impl(&dword_25845E000, v65, v66, "%s Setting preferredInterfaces=%s", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v68, -1, -1);
      MEMORY[0x259C82900](v67, -1, -1);
    }

    v75 = *__swift_project_boxed_opaque_existential_1((v62 + 120), *(v62 + 144));
    sub_2584E98B4(v61);
  }

  else
  {

    v76 = sub_258532A2C();
    v77 = sub_2585338EC();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v102[0] = v79;
      *v78 = 136315138;
      *&v104 = 0;
      *(&v104 + 1) = 0xE000000000000000;
      sub_258533B8C();
      MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
      type metadata accessor for ControlConnectionMigrationManager();
      sub_258464D04(&qword_27F92FAA8, v80, type metadata accessor for ControlConnectionMigrationManager);
      *&v99 = sub_258533B9C();
      sub_258533C8C();
      MEMORY[0x259C81500](93, 0xE100000000000000);
      v81 = sub_2584713B0(v104, *(&v104 + 1), v102);

      *(v78 + 4) = v81;
      _os_log_impl(&dword_25845E000, v76, v77, "%s Not setting empty preferredInterfaces", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      MEMORY[0x259C82900](v79, -1, -1);
      MEMORY[0x259C82900](v78, -1, -1);
    }
  }
}

uint64_t sub_2584621A4(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2584621C4, v1, 0);
}

uint64_t sub_2584621C4()
{
  v30 = v0;
  v1 = v0[6];
  if (*(v1 + 112) > 2u)
  {
    v23 = v0[1];

    return v23();
  }

  else
  {
    *(v1 + 112) = 4;
    if (qword_27F92F910 != -1)
    {
      swift_once();
    }

    v3 = v0[5];
    v2 = v0[6];
    v4 = sub_258532A4C();
    __swift_project_value_buffer(v4, qword_27F93D080);

    v5 = v3;
    v6 = sub_258532A2C();
    v7 = sub_2585338CC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[5];
      v9 = v0[6];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      v28 = 0;
      *v10 = 136315394;
      v29 = 0xE000000000000000;
      sub_258533B8C();
      v0[2] = v28;
      v0[3] = 0xE000000000000000;
      MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
      type metadata accessor for ControlConnectionMigrationManager();
      sub_258464D04(&qword_27F92FAA8, v13, type metadata accessor for ControlConnectionMigrationManager);
      v0[4] = sub_258533B9C();
      sub_258533C8C();
      MEMORY[0x259C81500](93, 0xE100000000000000);
      v14 = sub_2584713B0(v0[2], v0[3], &v27);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2112;
      v15 = v8;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v16;
      *v11 = v16;
      _os_log_impl(&dword_25845E000, v6, v7, "%s interrupted: %@", v10, 0x16u);
      sub_258465168(v11, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x259C82900](v12, -1, -1);
      MEMORY[0x259C82900](v10, -1, -1);
    }

    v17 = v0[6];
    v18 = *(v17 + 216);
    v0[7] = v18;
    if (v18)
    {
      v0[8] = *(v17 + 224);

      v26 = (v18 + *v18);
      v19 = v18[1];
      v20 = swift_task_alloc();
      v0[9] = v20;
      *v20 = v0;
      v20[1] = sub_25846260C;
      v21 = v0[5];

      return v26(v21);
    }

    else
    {
      v24 = swift_task_alloc();
      v0[10] = v24;
      *v24 = v0;
      v24[1] = sub_258462788;
      v25 = v0[6];

      return sub_258463924();
    }
  }
}

uint64_t sub_25846260C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *v0;

  sub_258464B24(v4);
  v6 = swift_task_alloc();
  *(v1 + 80) = v6;
  *v6 = v5;
  v6[1] = sub_258462788;
  v7 = *(v1 + 48);

  return sub_258463924();
}

uint64_t sub_258462788()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25846287C()
{
  v1[29] = v0;
  v2 = sub_258532D2C();
  v1[30] = v2;
  v3 = *(v2 - 8);
  v1[31] = v3;
  v4 = *(v3 + 64) + 15;
  v1[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25846293C, v0, 0);
}

uint64_t sub_25846293C()
{
  v41 = v0;
  if (qword_27F92F910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93D080);

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 232);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v38 = v7;
    v39 = 0;
    *v6 = 136315394;
    v40 = 0xE000000000000000;
    sub_258533B8C();
    *(v0 + 200) = v39;
    *(v0 + 208) = 0xE000000000000000;
    MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
    type metadata accessor for ControlConnectionMigrationManager();
    sub_258464D04(&qword_27F92FAA8, v8, type metadata accessor for ControlConnectionMigrationManager);
    *(v0 + 224) = sub_258533B9C();
    sub_258533C8C();
    MEMORY[0x259C81500](93, 0xE100000000000000);
    v9 = sub_2584713B0(*(v0 + 200), *(v0 + 208), &v38);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    swift_beginAccess();
    sub_258464990(v5 + 168, v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB70, &qword_2585353E8);
    v10 = sub_25853347C();
    v12 = sub_2584713B0(v10, v11, &v38);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_25845E000, v3, v4, "%s mediaStreamKeepAliveDidTimeOut, current interface=%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v13 = *(v0 + 232);
  swift_beginAccess();
  sub_258464990(v13 + 168, v0 + 56);
  if (!*(v0 + 80))
  {
    sub_258465168(v0 + 56, &qword_27F92FB70, &qword_2585353E8);
    goto LABEL_24;
  }

  v15 = *(v0 + 248);
  v14 = *(v0 + 256);
  v16 = *(v0 + 240);
  sub_258464C18((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_258532D6C();
  v17 = (*(v15 + 88))(v14, v16);
  if (v17 == *MEMORY[0x277CD8CB0])
  {
    goto LABEL_7;
  }

  if (v17 == *MEMORY[0x277CD8CA8])
  {
    v18 = 1;
    goto LABEL_11;
  }

  if (v17 == *MEMORY[0x277CD8CB8])
  {
LABEL_7:
    v18 = 3;
    goto LABEL_11;
  }

  if (v17 == *MEMORY[0x277CD8CA0])
  {
    v18 = 0;
    goto LABEL_11;
  }

  if (v17 != *MEMORY[0x277CD8CC0])
  {
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
    goto LABEL_7;
  }

  v18 = 2;
LABEL_11:
  v19 = *(v0 + 232);
  if (sub_2584667FC(v18, *(v19 + 160)))
  {
    if (*(v19 + 160) > 1u)
    {
      *(v19 + 160);
    }

    else if (!*(v19 + 160))
    {

      v20 = 1;
LABEL_20:
      v22 = *(v0 + 232);
      *(v19 + 160) = v20;

      v23 = sub_258532A2C();
      v24 = sub_2585338EC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = *(v0 + 232);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v38 = v27;
        v39 = 0;
        *v26 = 136315394;
        v40 = 0xE000000000000000;
        sub_258533B8C();
        v28 = v40;
        *(v0 + 184) = v39;
        *(v0 + 192) = v28;
        MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
        type metadata accessor for ControlConnectionMigrationManager();
        sub_258464D04(&qword_27F92FAA8, v29, type metadata accessor for ControlConnectionMigrationManager);
        *(v0 + 216) = sub_258533B9C();
        sub_258533C8C();
        MEMORY[0x259C81500](93, 0xE100000000000000);
        v30 = sub_2584713B0(*(v0 + 184), *(v0 + 192), &v38);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2080;
        *(v0 + 280) = *(v19 + 160);
        v31 = sub_25853347C();
        v33 = sub_2584713B0(v31, v32, &v38);

        *(v26 + 14) = v33;
        _os_log_impl(&dword_25845E000, v23, v24, "%s Toggled preferredInterfaceType to=%s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C82900](v27, -1, -1);
        MEMORY[0x259C82900](v26, -1, -1);
      }

      v34 = *(v0 + 232);
      sub_258461268();
      *(v0 + 264) = 0;
      goto LABEL_23;
    }

    v21 = sub_258533E2C();

    v20 = v21 & 1;
    goto LABEL_20;
  }

LABEL_23:
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
LABEL_24:
  v35 = *(v0 + 256);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_25846305C()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 232);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25846316C, v2, 0);
}

uint64_t sub_25846316C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2584631DC(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_2584631FC, v1, 0);
}

uint64_t sub_2584631FC()
{
  v22 = v0;
  if (qword_27F92F910 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[14];
  v3 = sub_258532A4C();
  __swift_project_value_buffer(v3, qword_27F93D080);
  sub_258464990(v1, (v0 + 2));

  v4 = sub_258532A2C();
  v5 = sub_2585338EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    v20 = 0;
    *v7 = 136315394;
    v21 = 0xE000000000000000;
    sub_258533B8C();
    v0[7] = v20;
    v0[8] = 0xE000000000000000;
    MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
    type metadata accessor for ControlConnectionMigrationManager();
    sub_258464D04(&qword_27F92FAA8, v9, type metadata accessor for ControlConnectionMigrationManager);
    v0[12] = sub_258533B9C();
    sub_258533C8C();
    MEMORY[0x259C81500](93, 0xE100000000000000);
    v10 = sub_2584713B0(v0[7], v0[8], &v19);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    sub_258464990((v0 + 2), (v0 + 7));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB70, &qword_2585353E8);
    v11 = sub_25853347C();
    v13 = v12;
    sub_258465168((v0 + 2), &qword_27F92FB70, &qword_2585353E8);
    v14 = sub_2584713B0(v11, v13, &v19);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_25845E000, v4, v5, "%s current interface updated to=%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v7, -1, -1);
  }

  else
  {

    sub_258465168((v0 + 2), &qword_27F92FB70, &qword_2585353E8);
  }

  v16 = v0[13];
  v15 = v0[14];
  swift_beginAccess();
  sub_258464A48(v16, v15 + 168);
  swift_endAccess();
  v17 = v0[1];

  return v17();
}

uint64_t sub_258463554()
{
  v18 = v0;
  v1 = v0[5];
  if (*(v1 + 112) > 2u)
  {
    v14 = v0[1];

    return v14();
  }

  else
  {
    *(v1 + 112) = 3;
    if (qword_27F92F910 != -1)
    {
      swift_once();
    }

    v2 = v0[5];
    v3 = sub_258532A4C();
    __swift_project_value_buffer(v3, qword_27F93D080);

    v4 = sub_258532A2C();
    v5 = sub_2585338EC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[5];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      v16 = 0;
      *v7 = 136315138;
      v17 = 0xE000000000000000;
      sub_258533B8C();
      v0[2] = v16;
      v0[3] = 0xE000000000000000;
      MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
      type metadata accessor for ControlConnectionMigrationManager();
      sub_258464D04(&qword_27F92FAA8, v9, type metadata accessor for ControlConnectionMigrationManager);
      v0[4] = sub_258533B9C();
      sub_258533C8C();
      MEMORY[0x259C81500](93, 0xE100000000000000);
      v10 = sub_2584713B0(v0[2], v0[3], &v15);

      *(v7 + 4) = v10;
      _os_log_impl(&dword_25845E000, v4, v5, "%s invalidated", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x259C82900](v8, -1, -1);
      MEMORY[0x259C82900](v7, -1, -1);
    }

    v11 = swift_task_alloc();
    v0[6] = v11;
    *v11 = v0;
    v11[1] = sub_258463830;
    v12 = v0[5];

    return sub_258463924();
  }
}

uint64_t sub_258463830()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_258463944()
{
  v1 = *(v0 + 16);
  v2 = v1[27];
  v3 = v1[28];
  v1[27] = 0;
  v1[28] = 0;
  sub_258464B24(v2);
  if (v1[26])
  {

    sub_25853374C();
  }

  v4 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 120), *(*(v0 + 16) + 144));
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_258463A2C;

  return sub_2584E9FB8();
}

uint64_t sub_258463A2C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_258463B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FBA0, &qword_258535438);
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258463BF0, a5, 0);
}

uint64_t sub_258463BF0()
{
  v1 = v0[8];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB80, &qword_258535410);
  sub_2585336FC();
  v4 = sub_258464D04(&qword_27F92FB98, v3, type metadata accessor for ControlConnectionMigrationManager);
  v0[9] = v4;
  v5 = v0[5];
  v6 = *(MEMORY[0x277D858B8] + 4);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_258463D08;
  v8 = v0[8];
  v9 = v0[6];

  return MEMORY[0x2822005A8](v0 + 2, v5, v4, v9, v0 + 3);
}

uint64_t sub_258463D08()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_25846419C;
  }

  else
  {
    v5 = sub_258463E20;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_258463E20()
{
  v1 = v0[2];
  if (!v1)
  {
    (*(v0[7] + 8))(v0[8], v0[6]);
    goto LABEL_5;
  }

  if (sub_25853376C())
  {
    (*(v0[7] + 8))(v0[8], v0[6]);

LABEL_5:
    v2 = v0[8];

    v3 = v0[1];

    return v3();
  }

  v5 = v0[11];
  v6 = v0[5];
  sub_258464250(v1);

  sub_258461268();
  if (v5)
  {
    (*(v0[7] + 8))(v0[8], v0[6]);
    v0[12] = v5;
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_258464024;
    v8 = v0[5];

    return sub_2584621A4(v5);
  }

  else
  {
    v9 = v0[9];
    v10 = v0[5];
    v11 = *(MEMORY[0x277D858B8] + 4);
    v12 = swift_task_alloc();
    v0[10] = v12;
    *v12 = v0;
    v12[1] = sub_258463D08;
    v13 = v0[8];
    v14 = v0[6];

    return MEMORY[0x2822005A8](v0 + 2, v10, v9, v14, v0 + 3);
  }
}

uint64_t sub_258464024()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_258464134, v2, 0);
}

uint64_t sub_258464134()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25846419C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[3];
  v0[12] = v1;
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_258464024;
  v3 = v0[5];

  return sub_2584621A4(v1);
}

void sub_258464250(uint64_t a1)
{
  v2 = sub_258532D2C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_13:
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    sub_258465168(v34, &qword_27F92FB70, &qword_2585353E8);
    v15 = 0;
    v16 = (v29 + 232);
    goto LABEL_27;
  }

  v9 = a1 + 32;
  v10 = (v5 + 88);
  v11 = *MEMORY[0x277CD8CB0];
  v12 = *MEMORY[0x277CD8CA8];
  v30 = *MEMORY[0x277CD8CB8];
  v28 = *MEMORY[0x277CD8CA0];
  v27 = *MEMORY[0x277CD8CC0];
  v26 = (v5 + 8);
  while (1)
  {
    sub_258464C30(v9, &v32);
    __swift_project_boxed_opaque_existential_1(&v32, v33);
    sub_258532D6C();
    v13 = (*v10)(v7, v2);
    if (v13 == v11 || v13 == v12 || v13 == v30)
    {
      goto LABEL_6;
    }

    if (v13 == v28)
    {
      break;
    }

    if (v13 != v27)
    {
      (*v26)(v7, v2);
    }

LABEL_6:
    v14 = sub_258533E2C();

    if (v14)
    {
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v32);
    v9 += 40;
    if (!--v8)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  sub_258464C18(&v32, v34);
  sub_258465168(v34, &qword_27F92FB70, &qword_2585353E8);
  v17 = v29;
  v16 = (v29 + 232);
  if ((*(v29 + 232) & 1) == 0)
  {
    if (*(v29 + 160) <= 1u && *(v29 + 160))
    {
    }

    else
    {
      v18 = sub_258533E2C();

      if ((v18 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (qword_27F92F910 != -1)
    {
      swift_once();
    }

    v19 = sub_258532A4C();
    __swift_project_value_buffer(v19, qword_27F93D080);

    v20 = sub_258532A2C();
    v21 = sub_2585338EC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v32 = v23;
      *v22 = 136315138;
      *&v34[0] = 0;
      *(&v34[0] + 1) = 0xE000000000000000;
      sub_258533B8C();
      MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
      type metadata accessor for ControlConnectionMigrationManager();
      sub_258464D04(&qword_27F92FAA8, v24, type metadata accessor for ControlConnectionMigrationManager);
      v31 = sub_258533B9C();
      sub_258533C8C();
      MEMORY[0x259C81500](93, 0xE100000000000000);
      v25 = sub_2584713B0(*&v34[0], *(&v34[0] + 1), &v32);

      *(v22 + 4) = v25;
      _os_log_impl(&dword_25845E000, v20, v21, "%s Wired interface became available. Toggling preferredInterfaceType to wired", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x259C82900](v23, -1, -1);
      MEMORY[0x259C82900](v22, -1, -1);
    }

    *(v17 + 160) = 0;
  }

LABEL_26:
  v15 = 1;
LABEL_27:
  *v16 = v15;
}

uint64_t sub_258464754()
{
  v1 = *v0;
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
  type metadata accessor for ControlConnectionMigrationManager();
  sub_258464D04(&qword_27F92FAA8, v2, type metadata accessor for ControlConnectionMigrationManager);
  sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_25846484C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_258532A1C();
}

uint64_t sub_258464898()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_258532A0C();
}

uint64_t sub_2584648F0()
{
  sub_258533EEC();
  v1 = *v0;
  swift_getWitnessTable();
  sub_258532A0C();
  return sub_258533F2C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_258464990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB70, &qword_2585353E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_258464A48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB70, &qword_2585353E8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_258464AB8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FED10](v4, v5, a3, WitnessTable);
}

uint64_t sub_258464B24(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_258464BC4()
{
  result = qword_27F92FB88;
  if (!qword_27F92FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FB88);
  }

  return result;
}

uint64_t sub_258464C18(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_258464C30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_258464C94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB70, &qword_2585353E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_258464D04(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_258464D4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB80, &qword_258535410);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_258464E30(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB80, &qword_258535410) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258464F5C;

  return sub_258463B20(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_258464F5C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_258465104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkBackedNetworkInterface();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258465168(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for ControlConnectionMigrationManager.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlConnectionMigrationManager.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Version(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Version(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_2584653E8(uint64_t a1)
{
  result = sub_258464BC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258465414()
{
  result = qword_27F92FBF0;
  if (!qword_27F92FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FBF0);
  }

  return result;
}

void sub_258465514(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_258465564()
{
  v0 = sub_2585332FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v20 - v8;
  sub_2585332EC();
  type metadata accessor for FoundationBackedUserDefaultsProvider();
  inited = swift_initStackObject();
  v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v12 = sub_25853341C();
  v13 = [v11 initWithSuiteName_];

  *(inited + 16) = v13;
  v14 = sub_2585138CC(4, 1);

  if (v14 != 2 && (v14 & 1) != 0)
  {
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v15 = sub_258532A4C();
    __swift_project_value_buffer(v15, qword_27F93CFD8);
    v16 = sub_258532A2C();
    v17 = sub_2585338EC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_25845E000, v16, v17, "Allowing CompositorServices to browse for iPhones", v18, 2u);
      MEMORY[0x259C82900](v18, -1, -1);
    }

    sub_2585332DC();
    sub_2584657C4(v9, v6);
    v19 = *(v1 + 8);
    v19(v6, v0);
    v19(v9, v0);
  }
}

uint64_t sub_2584657C4(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FC90, &qword_2585356E8);
  v4 = *(*(v34 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v34, v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v31 - v9;
  v11 = sub_2585332FC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v31 - v19;
  v21 = *(v12 + 16);
  v33 = v2;
  v21(v17, v2, v11);
  v22 = MEMORY[0x277CD90B0];
  v31 = sub_258466028(&qword_27F92FC98, MEMORY[0x277CD90B0]);
  sub_258533A6C();
  v23 = v22;
  v24 = v34;
  sub_258466028(qword_27F92FCA0, v23);
  v32 = a2;
  v25 = sub_25853340C();
  v26 = *(v24 + 48);
  *v10 = (v25 & 1) == 0;
  if (v25)
  {
    (*(v12 + 32))(&v10[v26], v20, v11);
  }

  else
  {
    (*(v12 + 8))(v20, v11);
    v27 = v32;
    v21(&v10[v26], v32, v11);
    v21(v17, v27, v11);
    sub_258533A7C();
  }

  v28 = v35;
  sub_258466070(v10, v35);
  v29 = *v28;
  (*(v12 + 32))(v36, &v28[*(v24 + 48)], v11);
  return v29;
}

uint64_t static NWBrowser.Descriptor.Options.compositorServicesBrowserOptions.getter()
{
  v0 = sub_2585332FC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_25853331C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FC70, &qword_2585356D0);
  v7 = *(v4 + 72);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_2585356C0;
  sub_2585332DC();
  sub_258466028(&qword_27F92FC78, MEMORY[0x277CD90C8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FC80, &qword_2585356D8);
  sub_258465CA0();
  sub_258533A8C();
  sub_258465564();
  return sub_25853332C();
}

unint64_t sub_258465CA0()
{
  result = qword_27F92FC88;
  if (!qword_27F92FC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F92FC80, &qword_2585356D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FC88);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_258465D4C()
{
  v1 = sub_2585332FC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = sub_25853331C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  if (*(v0 + 33) == 1)
  {
    if (*(v0 + 32) || *(v0 + 16) | *(v0 + 24) | *v0 | *(v0 + 8))
    {
      *(v0 + 32);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FC70, &qword_2585356D0);
    v8 = *(v5 + 72);
    v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    *(swift_allocObject() + 16) = xmmword_2585356C0;
    sub_2585332DC();
    sub_258466028(&qword_27F92FC78, MEMORY[0x277CD90C8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FC80, &qword_2585356D8);
    sub_258465CA0();
    sub_258533A8C();
    sub_2585332CC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FC70, &qword_2585356D0);
    v10 = *(v5 + 72);
    v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    *(swift_allocObject() + 16) = xmmword_2585356C0;
    sub_2585332DC();
    sub_258466028(&qword_27F92FC78, MEMORY[0x277CD90C8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FC80, &qword_2585356D8);
    sub_258465CA0();
    sub_258533A8C();
    sub_258465564();
  }

  return sub_25853332C();
}

uint64_t sub_258466028(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258466070(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FC90, &qword_2585356E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2584660E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    sub_258466470();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 24);
      swift_getExtendedExistentialTypeMetadata_unique();
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_258466188(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 80;
  if (*(v3 + 64) > 0x50uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_2584662A0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x50)
  {
    v5 = 80;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_258466470()
{
  if (!qword_27F92FD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F92FB90, &qword_258535420);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F92FD28);
    }
  }
}

unint64_t sub_2584664F8()
{
  result = qword_27F92FD30;
  if (!qword_27F92FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FD30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkInterfaceReportingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkInterfaceReportingType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkInterfaceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkInterfaceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2584667FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6465726977;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6B636162706F6F6CLL;
    }

    else
    {
      v4 = 0x726568746FLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1768319351;
    }

    else
    {
      v4 = 0x6465726977;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x6B636162706F6F6CLL;
  if (a2 != 2)
  {
    v8 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 1768319351;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_258533E2C();
  }

  return v11 & 1;
}

uint64_t sub_258466924(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x800000025853FAC0;
    if (a1 == 6)
    {
      v10 = 0xD000000000000020;
    }

    else
    {
      v10 = 0x6E6F73616572;
    }

    if (a1 != 6)
    {
      v9 = 0xE600000000000000;
    }

    v11 = 0x6C6F636F746F7270;
    v12 = 0xEF6E6F6973726556;
    if (a1 != 4)
    {
      v11 = 0xD00000000000001FLL;
      v12 = 0x800000025853FAA0;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0x496E6F6973736573;
    v5 = 0xE900000000000044;
    if (a1 != 2)
    {
      v4 = 0x6F6973726556736FLL;
      v5 = 0xE90000000000006ELL;
    }

    v6 = 0x44496C65646F6DLL;
    if (a1)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v6 = 1701869940;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0x800000025853FAC0;
        if (v7 != 0xD000000000000020)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v13 = 0xE600000000000000;
        if (v7 != 0x6E6F73616572)
        {
LABEL_50:
          v14 = sub_258533E2C();
          goto LABEL_51;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEF6E6F6973726556;
      if (v7 != 0x6C6F636F746F7270)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v13 = 0x800000025853FAA0;
      if (v7 != 0xD00000000000001FLL)
      {
        goto LABEL_50;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE900000000000044;
      if (v7 != 0x496E6F6973736573)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v13 = 0xE90000000000006ELL;
      if (v7 != 0x6F6973726556736FLL)
      {
        goto LABEL_50;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x44496C65646F6DLL)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v13 = 0xE400000000000000;
    if (v7 != 1701869940)
    {
      goto LABEL_50;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_50;
  }

  v14 = 1;
LABEL_51:

  return v14 & 1;
}

uint64_t sub_258466BD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006465646ELL;
  v3 = 0xD000000000000018;
  v4 = 0x456E6F6973736573;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000022;
    }

    else
    {
      v6 = 0x456E6F6973736573;
    }

    if (v5 == 2)
    {
      v7 = 0x800000025853FB30;
    }

    else
    {
      v7 = 0xEC0000006465646ELL;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000019;
    }

    else
    {
      v6 = 0xD000000000000018;
    }

    if (v5)
    {
      v7 = 0x800000025853FB10;
    }

    else
    {
      v7 = 0x800000025853FAF0;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000022;
    v2 = 0x800000025853FB30;
  }

  v8 = 0x800000025853FB10;
  if (a2)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v8 = 0x800000025853FAF0;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_258533E2C();
  }

  return v11 & 1;
}

uint64_t sub_258466CF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646564;
  v3 = a1;
  if (a1 <= 2u)
  {
    v10 = 0x800000025853FC00;
    if (a1 == 1)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD000000000000011;
    }

    if (a1 != 1)
    {
      v10 = 0x800000025853FC20;
    }

    if (a1)
    {
      v8 = v11;
    }

    else
    {
      v8 = 0x6E456D6165727473;
    }

    if (v3)
    {
      v9 = v10;
    }

    else
    {
      v9 = 0xEB00000000646564;
    }
  }

  else
  {
    v4 = 0x800000025853FC80;
    v5 = 0xD000000000000016;
    if (a1 != 5)
    {
      v5 = 0xD000000000000017;
      v4 = 0x800000025853FCA0;
    }

    v6 = 0x800000025853FC40;
    if (a1 == 3)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v6 = 0x800000025853FC60;
    }

    if (a1 <= 4u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v3 <= 4)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      if (v8 != 0x6E456D6165727473)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    if (a2 == 1)
    {
      v12 = "videoStreamOffer";
LABEL_33:
      v2 = (v12 - 32) | 0x8000000000000000;
      if (v8 != 0xD000000000000010)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    v13 = "videoStreamAnswer";
LABEL_42:
    v2 = (v13 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000011)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v12 = "audioStreamOffer";
      goto LABEL_33;
    }

    v13 = "audioStreamAnswer";
    goto LABEL_42;
  }

  if (a2 == 5)
  {
    v2 = 0x800000025853FC80;
    if (v8 != 0xD000000000000016)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v2 = 0x800000025853FCA0;
    if (v8 != 0xD000000000000017)
    {
LABEL_47:
      v14 = sub_258533E2C();
      goto LABEL_48;
    }
  }

LABEL_45:
  if (v9 != v2)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_258466EFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x800000025853F9E0;
      v3 = 0xD000000000000016;
    }

    else
    {
      v4 = 0xE800000000000000;
      v3 = 0x4449656369766564;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x746E696F70646E65;
    }

    else
    {
      v3 = 0xD000000000000015;
    }

    if (v2)
    {
      v4 = 0xEC00000065707954;
    }

    else
    {
      v4 = 0x800000025853F9B0;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x800000025853F9E0;
      if (v3 != 0xD000000000000016)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xE800000000000000;
      if (v3 != 0x4449656369766564)
      {
LABEL_26:
        v7 = sub_258533E2C();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x746E696F70646E65;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (a2)
    {
      v6 = 0xEC00000065707954;
    }

    else
    {
      v6 = 0x800000025853F9B0;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_258467070()
{
  v1 = *v0;
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_258467124()
{
  *v0;
  *v0;
  *v0;
  sub_2585334AC();
}

uint64_t sub_2584671C4()
{
  v1 = *v0;
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_258467274@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25846752C();
  *a2 = result;
  return result;
}

void sub_2584672A4(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6465726977;
  v4 = 0xE800000000000000;
  v5 = 0x6B636162706F6F6CLL;
  if (*v1 != 2)
  {
    v5 = 0x726568746FLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 1768319351;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_258467318()
{
  result = qword_27F92FD38;
  if (!qword_27F92FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FD38);
  }

  return result;
}

unint64_t sub_258467370()
{
  result = qword_27F92FD40;
  if (!qword_27F92FD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F92FD48, qword_258535C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FD40);
  }

  return result;
}

uint64_t sub_2584673D4()
{
  v1 = *v0;
  sub_258533EEC();
  sub_258533F0C();
  return sub_258533F2C();
}

uint64_t sub_258467448()
{
  v1 = *v0;
  sub_258533EEC();
  sub_258533F0C();
  return sub_258533F2C();
}

uint64_t sub_25846748C@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_258467578(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2584674D8()
{
  result = qword_27F92FD50;
  if (!qword_27F92FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FD50);
  }

  return result;
}

uint64_t sub_25846752C()
{
  v0 = sub_258533CEC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_258467578(uint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

uint64_t get_enum_tag_for_layout_string_18MediaContinuityKit22RemoteVideoClientEventO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2584675C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_258467608(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_25846764C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_25846768C(void *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = (v1 + OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue);
  v4 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue);
  v5 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 8);
  v7 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 16);
  v6 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 24);
  v8 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 32);
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 33) == 1)
  {
    v9 = v7 | v5;
    if (v9 | v4 | v6)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8 == 0;
    }

    if (!v10)
    {
      v11 = v9 | v6;
      v12 = (v9 | v6) == 0;
      if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 32))
      {
        v13 = 0;
      }

      else
      {
        v13 = v4 == 1;
      }

      if (v13 && v11 == 0)
      {
        if (!v9)
        {
          v17 = 2;
          goto LABEL_45;
        }
      }

      else
      {
        if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 32))
        {
          v15 = 0;
        }

        else
        {
          v15 = v4 == 2;
        }

        if (!v15 || v11 != 0)
        {
          goto LABEL_32;
        }

        if (!v9)
        {
          v17 = 3;
LABEL_45:
          v35 = sub_25853341C();
          [a1 encodeInteger:v17 forKey:?];
          v32 = *MEMORY[0x277D85DE8];

          return;
        }
      }

      v12 = 0;
LABEL_32:
      v27 = v8 == 0;
      v28 = v4 == 3 && v12;
      if (v27 && v28)
      {
        v17 = 4;
      }

      else
      {
        v17 = 5;
      }

      goto LABEL_45;
    }

    v17 = 1;
    goto LABEL_45;
  }

  if (v8)
  {
    v18 = 0;
  }

  else
  {
    v36[0] = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue);
    v36[1] = v5;
    v36[2] = v7;
    v36[3] = v6;
    v19 = sub_258467D64(v36, &v37);
    v21 = v20;
    v22 = sub_25853291C();
    sub_258467E20(v19, v21);
    v23 = sub_25853341C();
    [a1 encodeObject:v22 forKey:v23];

    if (*(v3 + 33) == 1)
    {
      v24 = *v3;
      v25 = v3[1];
      v26 = v3[2] | v3[3];
      if (*(v3 + 32) || v26 | v24 | v25)
      {
        v31 = v26 | v25;
        if (*(v3 + 32) || v24 != 1 || v31)
        {
          if (*(v3 + 32) || v24 != 2 || v31)
          {
            if (v31)
            {
              v33 = 0;
            }

            else
            {
              v33 = v24 == 3;
            }

            if (v33 && *(v3 + 32) == 0)
            {
              v18 = 4;
            }

            else
            {
              v18 = 5;
            }
          }

          else
          {
            v18 = 3;
          }
        }

        else
        {
          v18 = 2;
        }
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  v29 = sub_25853341C();
  [a1 encodeInteger:v18 forKey:v29];

  v30 = *MEMORY[0x277D85DE8];
}

id sub_2584679D0(void *a1)
{
  v3 = sub_25853341C();
  v4 = [a1 decodeIntegerForKey_];

  v5 = sub_258467E74(v4);
  if (v5 > 2)
  {
    if (v5 <= 4)
    {
      if (v5 == 3)
      {
        v6 = &v1[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue];
        *&v1[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 32] = 256;
        v7 = 2;
      }

      else
      {
        v6 = &v1[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue];
        *&v1[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 32] = 256;
        v7 = 3;
      }

      goto LABEL_14;
    }

    if (v5 == 5)
    {
      v6 = &v1[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue];
      *&v1[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 32] = 256;
      v7 = 4;
LABEL_14:
      *v6 = v7;
      v6[1] = 0;
      v6[2] = 0;
      v6[3] = 0;
      goto LABEL_15;
    }

    sub_258467F84();
    v13 = swift_allocError();
    *v14 = 0;
LABEL_25:
    v20 = sub_2585328AC();

    [a1 failWithError_];
    type metadata accessor for MediaContinuityUsageSecureCodingWrapper();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if (!v5)
  {
    v9 = sub_25853341C();
    v10 = [a1 decodeObjectForKey_];

    if (v10)
    {
      sub_258533A5C();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v26 = v23;
    v27 = v24;
    if (*(&v24 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_258467F84();
        v13 = swift_allocError();
        *v19 = 1;
        goto LABEL_25;
      }

      sub_2585079D4(v21, v22, &v26);
      v15 = v26;
      v16 = v27;
      v17 = v28;
    }

    else
    {
      sub_258467FD8(&v26);
      v15 = 0uLL;
      v17 = 1;
      v16 = 0uLL;
    }

    v18 = &v1[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue];
    *v18 = v15;
    *(v18 + 1) = v16;
    v18[32] = v17;
    v18[33] = 0;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
    v6 = &v1[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue];
    *&v1[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 32] = 256;
    v7 = 1;
    goto LABEL_14;
  }

  v8 = &v1[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue];
  *(v8 + 16) = 256;
  *v8 = 0u;
  *(v8 + 1) = 0u;
LABEL_15:
  v25.receiver = v1;
  v25.super_class = type metadata accessor for MediaContinuityUsageSecureCodingWrapper();
  v11 = objc_msgSendSuper2(&v25, sel_init);

  return v11;
}

id sub_258467D0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaContinuityUsageSecureCodingWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_258467D64(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_2584F0138(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_258467F08(v3, v4);
    }

    else
    {
      v6 = sub_258467E84(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t sub_258467E20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_258467E74(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_258467E84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25853288C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25853284C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_258467F08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25853288C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25853284C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2585328FC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

unint64_t sub_258467F84()
{
  result = qword_27F92FD78;
  if (!qword_27F92FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FD78);
  }

  return result;
}

uint64_t sub_258467FD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FD80, &unk_25853F3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258468054()
{
  result = qword_27F92FD88;
  if (!qword_27F92FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FD88);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_258468278(uint64_t a1, uint64_t *a2)
{
  v3 = sub_258532A4C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_258532A3C();
}

unint64_t sub_258468304()
{
  result = qword_27F92FDF0;
  if (!qword_27F92FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FDF0);
  }

  return result;
}

const char *sub_25846836C()
{
  if (*v0)
  {
    return "preferWiredInterfaceForConnectionSetup";
  }

  else
  {
    return "migrationController";
  }
}

uint64_t sub_2584683B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2585329BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_258468470(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2585329BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ActivationRequestInfo()
{
  result = qword_27F92FDF8;
  if (!qword_27F92FDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258468560()
{
  result = sub_2585329BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_2584685F8(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_258533E2C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_258533E2C() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for ActivationRequestInfo();
  v7 = v6[6];
  if ((sub_25853296C() & 1) == 0)
  {
    return 0;
  }

  v8 = v6[7];
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = *(a1 + v8 + 16);
  v12 = (a2 + v8);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v9 == v13 && v10 == v14;
  if (!v16 || v11 != v15)
  {
    return 0;
  }

  v18 = v6[8];
  v19 = a1 + v18;
  v20 = *(a1 + v18);
  v21 = *(a1 + v18 + 8);
  v22 = *(a1 + v18 + 16);
  v23 = *(v19 + 3);
  v24 = (a2 + v18);
  v25 = v24[2];
  v26 = v24[3];
  if ((sub_2584F0D1C(v20, v21, *v24, v24[1]) & 1) == 0)
  {
    return 0;
  }

  return (sub_2584F0D1C(v22, v23, v25, v26) & 1) != 0;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_258468718(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_258468760(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_2584687BC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_258533E2C() & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_258533E2C() & 1) == 0)
  {
    return 0;
  }

  return v4 == v9 && v5 == v10 && v6 == v11;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
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

uint64_t sub_2584688C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 56))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_258468918(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_25846898C()
{
  v1 = 0x6553656D75736572;
  if (*(v0 + 16) != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*(v0 + 16))
  {
    return v1;
  }

  else
  {
    return 0x53646E6570737573;
  }
}

uint64_t sub_258468A04(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x646570706F7473;
    v6 = 0x64657472617473;
    if (a1 != 2)
    {
      v6 = 0x676E6970706F7473;
    }

    if (a1)
    {
      v5 = 0x676E697472617473;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x676E696D75736572;
    v2 = 0x74726174736572;
    if (a1 != 7)
    {
      v2 = 0x7075727265746E69;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x69646E6570737573;
    if (a1 != 4)
    {
      v3 = 0x65646E6570737573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t MediaContinuityCoexSession.Errors.hashValue.getter()
{
  v1 = *v0;
  sub_258533EEC();
  MEMORY[0x259C81F40](v1);
  return sub_258533F2C();
}

MediaContinuityKit::MediaContinuityCoexSession::Interface_optional __swiftcall MediaContinuityCoexSession.Interface.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258533CEC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaContinuityCoexSession.Interface.rawValue.getter()
{
  if (*v0)
  {
    result = 0x7373656C65726977;
  }

  else
  {
    result = 0x6465726977;
  }

  *v0;
  return result;
}

uint64_t sub_258468C60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7373656C65726977;
  }

  else
  {
    v4 = 0x6465726977;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x7373656C65726977;
  }

  else
  {
    v6 = 0x6465726977;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_258533E2C();
  }

  return v9 & 1;
}

uint64_t sub_258468D04()
{
  v1 = *v0;
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_258468D84()
{
  *v0;
  sub_2585334AC();
}

uint64_t sub_258468DF0()
{
  v1 = *v0;
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_258468E6C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_258533CEC();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_258468ECC(uint64_t *a1@<X8>)
{
  v2 = 0x6465726977;
  if (*v1)
  {
    v2 = 0x7373656C65726977;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t MediaContinuityCoexSession.__allocating_init(config:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v11 = sub_2584718E4(a1, a2, v9, ObjectType, a3);

  swift_unknownObjectRelease();
  return v11;
}

uint64_t MediaContinuityCoexSession.init(config:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_2584718E4(a1, a2, v3, ObjectType, a3);

  swift_unknownObjectRelease();
  return v8;
}

uint64_t MediaContinuityCoexSession.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE08, &unk_258536380);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v19 - v6;
  v8 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask;
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask))
  {
    v9 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();
  }

  v10 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventStreamContinuation;
  (*(v3 + 16))(v7, v1 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventStreamContinuation, v2);
  v19[1] = 0;
  sub_2585337FC();
  v11 = *(v3 + 8);
  v11(v7, v2);

  sub_258471C08(v1 + 120);
  v12 = *(v1 + 152);
  swift_unknownObjectRelease();
  v13 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_uuid;
  v14 = sub_2585329BC();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_startContinuation, &unk_27F930DB0, &qword_258536390);
  v15 = *(v1 + v8);

  v16 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventStream;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE38, &qword_258536398);
  (*(*(v17 - 8) + 8))(v1 + v16, v17);
  v11((v1 + v10), v2);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t MediaContinuityCoexSession.__deallocating_deinit()
{
  MediaContinuityCoexSession.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_258469288()
{
  v34 = v0;
  if (qword_27F92F908 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_258532A4C();
  v0[3] = __swift_project_value_buffer(v2, qword_27F93D068);

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v6 = 136315394;
    v31 = v8;
    v32 = 91;
    v33 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v9 = sub_258533DFC();
    MEMORY[0x259C81500](v9);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v10 = sub_2584713B0(91, 0xE100000000000000, &v31);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2112;
    v11 = *(v5 + 112);
    *(v6 + 14) = v11;
    *v7 = v11;
    v12 = v11;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Starting client with config=%@", v6, 0x16u);
    sub_258465168(v7, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v13 = v0[2];
  if (*(v13 + 136))
  {
    v14 = v0[2];

    v15 = sub_258532A2C();
    v16 = sub_2585338CC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[2];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v18 = 136315394;
      v31 = v20;
      v32 = 91;
      v33 = 0xE100000000000000;
      sub_2585329BC();
      sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
      v21 = sub_258533DFC();
      MEMORY[0x259C81500](v21);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v22 = sub_2584713B0(v32, v33, &v31);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2112;
      sub_258471C30();
      swift_allocError();
      *v23 = 0;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v24;
      *v19 = v24;
      _os_log_impl(&dword_25845E000, v15, v16, "%s Start failed with error=%@", v18, 0x16u);
      sub_258465168(v19, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x259C82900](v20, -1, -1);
      MEMORY[0x259C82900](v18, -1, -1);
    }

    sub_258471C30();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    v26 = v0[1];

    return v26();
  }

  else
  {
    *(v13 + 136) = 1;
    sub_25846CA58(v13 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventStream);
    v28 = *(v13 + 136);
    v29 = swift_task_alloc();
    v0[4] = v29;
    *v29 = v0;
    v29[1] = sub_2584697A4;
    v30 = v0[2];

    return sub_25847076C(0, v28);
  }
}

uint64_t sub_2584697A4()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_258469AA4;
  }

  else
  {
    v6 = sub_2584698D0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584698D0()
{
  v13 = v0;
  v2 = v0[2];
  v1 = v0[3];

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136315138;
    v12[0] = v7;
    v12[1] = 91;
    v12[2] = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v8 = sub_258533DFC();
    MEMORY[0x259C81500](v8);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v9 = sub_2584713B0(91, 0xE100000000000000, v12);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Started successfully", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_258469AA4()
{
  v1 = v0[2];
  if (*(v1 + 136) == 1)
  {
    *(v1 + 136) = 8;
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_258469B94;
    v3 = v0[2];

    return sub_2584702E4();
  }

  else
  {
    v5 = v0[5];
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_258469B94()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_258469CA4, v2, 0);
}

uint64_t sub_258469CA4()
{
  v1 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = *(v0[2] + 128);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);
    v13 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_258469E28;
    v8 = v0[5];
    v9 = v0[2];

    return v13(v9, v8, ObjectType, v3);
  }

  else
  {
    v11 = v0[5];
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_258469E28()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 16);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_258469F54, v3, 0);
}

uint64_t sub_258469F54()
{
  v1 = *(v0 + 40);
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258469FE0()
{
  v25 = v0;
  if (qword_27F92F908 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_258532A4C();
  v0[3] = __swift_project_value_buffer(v2, qword_27F93D068);

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136315138;
    v24[0] = v7;
    v24[1] = 91;
    v24[2] = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v8 = sub_258533DFC();
    MEMORY[0x259C81500](v8);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v9 = sub_2584713B0(91, 0xE100000000000000, v24);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Stopping client", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v10 = v0[2];
  v11 = &byte_28698B348;
  for (i = qword_28698B338; i; --i)
  {
    v13 = *v11++;
    if (v13 == *(v10 + 136))
    {
      sub_258471C30();
      swift_allocError();
      *v14 = 4;
      swift_willThrow();
      v15 = v0[1];

      return v15();
    }
  }

  *(v10 + 136) = 3;
  v17 = *(v10 + 152);
  v0[4] = v17;
  if (v17)
  {
    v18 = v0[2];
    *(v10 + 152) = 0;
    sub_258471DD0(&qword_27F92FE50, type metadata accessor for MediaContinuityCoexSession);
    v19 = swift_task_alloc();
    v0[5] = v19;
    *(v19 + 16) = v17;
    v20 = *(MEMORY[0x277D85A40] + 4);
    v21 = swift_task_alloc();
    v0[6] = v21;
    *v21 = v0;
    v21[1] = sub_25846A3E8;

    return MEMORY[0x2822008A0]();
  }

  else
  {
    v22 = swift_task_alloc();
    v0[8] = v22;
    *v22 = v0;
    v22[1] = sub_25846A79C;
    v23 = v0[2];

    return sub_2584702E4();
  }
}

uint64_t sub_25846A3E8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_25846A698;
  }

  else
  {
    v6 = *(v2 + 40);
    v7 = *(v2 + 16);

    v5 = sub_25846A510;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_25846A510()
{
  v1 = v0[4];
  if (*(v0[2] + 136) == 3)
  {
    v2 = v0[4];
    swift_unknownObjectRelease();
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v4 = sub_25846A79C;
LABEL_5:
    v3[1] = v4;
    v8 = v0[2];

    return sub_2584702E4();
  }

  sub_258471C30();
  v5 = swift_allocError();
  *v6 = 6;
  swift_willThrow();
  swift_unknownObjectRelease();
  v0[9] = v5;
  v7 = v0[2];
  if (*(v7 + 136) == 3)
  {
    *(v7 + 136) = 8;
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v4 = sub_25846AB68;
    goto LABEL_5;
  }

  swift_willThrow();
  v10 = v0[1];

  return v10();
}

uint64_t sub_25846A698()
{
  v2 = v0[4];
  v1 = v0[5];

  swift_unknownObjectRelease();
  v0[9] = v0[7];
  v3 = v0[2];
  if (*(v3 + 136) == 3)
  {
    *(v3 + 136) = 8;
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = sub_25846AB68;
    v5 = v0[2];

    return sub_2584702E4();
  }

  else
  {
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_25846A79C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25846A8AC, v2, 0);
}

uint64_t sub_25846A8AC()
{
  v18 = v0;
  v1 = v0[2];
  if (*(v1 + 136) == 3)
  {
    v2 = v0[3];
    *(v1 + 136) = 0;

    v3 = sub_258532A2C();
    v4 = sub_2585338EC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[2];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 136315138;
      v17[0] = v7;
      v17[1] = 91;
      v17[2] = 0xE100000000000000;
      sub_2585329BC();
      sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
      v8 = sub_258533DFC();
      MEMORY[0x259C81500](v8);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v9 = sub_2584713B0(91, 0xE100000000000000, v17);

      *(v6 + 4) = v9;
      _os_log_impl(&dword_25845E000, v3, v4, "%s Client stopped successfully", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x259C82900](v7, -1, -1);
      MEMORY[0x259C82900](v6, -1, -1);
    }

    v10 = v0[1];
    goto LABEL_10;
  }

  sub_258471C30();
  v11 = swift_allocError();
  *v12 = 6;
  swift_willThrow();
  v0[9] = v11;
  v13 = v0[2];
  if (*(v13 + 136) != 3)
  {
    swift_willThrow();
    v10 = v0[1];
LABEL_10:

    return v10();
  }

  *(v13 + 136) = 8;
  v14 = swift_task_alloc();
  v0[10] = v14;
  *v14 = v0;
  v14[1] = sub_25846AB68;
  v15 = v0[2];

  return sub_2584702E4();
}

uint64_t sub_25846AB68()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25846AC78, v2, 0);
}

uint64_t sub_25846AC78()
{
  v1 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = *(v0[2] + 128);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);
    v13 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_25846ADFC;
    v8 = v0[9];
    v9 = v0[2];

    return v13(v9, v8, ObjectType, v3);
  }

  else
  {
    v11 = v0[9];
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_25846ADFC()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 16);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_25846AF28, v3, 0);
}

uint64_t sub_25846AF28()
{
  v1 = *(v0 + 72);
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

BOOL sub_25846AF94(unsigned __int8 a1, uint64_t a2)
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

  while (v6 != a1);
  return v4 != 0;
}

id sub_25846AFC4()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_25853341C();
  v3 = [v1 initWithMachServiceName:v2 options:0];

  v4 = objc_opt_self();
  v5 = [v4 interfaceWithProtocol_];
  sub_258473C6C();
  v6 = sub_25853386C();

  [v5 setClasses:v6 forSelector:sel_startWithUuid_config_completionHandler_ argumentIndex:1 ofReply:0];

  sub_258473C6C();
  v7 = sub_25853386C();

  [v5 setClasses:v7 forSelector:sel_startSuspendedWithUuid_config_completionHandler_ argumentIndex:1 ofReply:0];

  [v3 setRemoteObjectInterface_];
  v8 = [v4 interfaceWithProtocol_];
  [v3 setExportedInterface_];

  [v3 setExportedObject_];
  v9 = swift_allocObject();
  swift_weakInit();
  v18 = sub_2584728B0;
  v19 = v9;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_2584D170C;
  v17 = &block_descriptor_79;
  v10 = _Block_copy(&v14);

  [v3 setInterruptionHandler_];
  _Block_release(v10);
  v11 = swift_allocObject();
  swift_weakInit();
  v18 = sub_2584728B8;
  v19 = v11;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_2584D170C;
  v17 = &block_descriptor_83;
  v12 = _Block_copy(&v14);

  [v3 setInvalidationHandler_];
  _Block_release(v12);

  return v3;
}

uint64_t sub_25846B2E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FEA8, &qword_2585368E0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v16 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27F92F908 != -1)
    {
      swift_once();
    }

    v7 = sub_258532A4C();
    __swift_project_value_buffer(v7, qword_27F93D068);

    v8 = sub_258532A2C();
    v9 = sub_2585338CC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v16 = v0;
      v11 = v10;
      v12 = swift_slowAlloc();
      *v11 = 136315138;
      v17 = v12;
      v18 = 91;
      v19 = 0xE100000000000000;
      sub_2585329BC();
      sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);

      v13 = sub_258533DFC();
      MEMORY[0x259C81500](v13);

      MEMORY[0x259C81500](93, 0xE100000000000000);

      v14 = sub_2584713B0(v18, v19, &v17);

      *(v11 + 4) = v14;
      _os_log_impl(&dword_25845E000, v8, v9, "%s interruptionHandler called", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x259C82900](v12, -1, -1);
      v15 = v11;
      v0 = v16;
      MEMORY[0x259C82900](v15, -1, -1);
    }

    v18 = 0;
    v19 = 0;
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE08, &unk_258536380);
    sub_2585337EC();

    return (*(v1 + 8))(v5, v0);
  }

  return result;
}

void sub_25846B5E0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_27F92F908 != -1)
    {
      swift_once();
    }

    v0 = sub_258532A4C();
    __swift_project_value_buffer(v0, qword_27F93D068);

    v1 = sub_258532A2C();
    v2 = sub_2585338CC();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 136315138;
      v7 = v4;
      sub_2585329BC();
      sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);

      v5 = sub_258533DFC();
      MEMORY[0x259C81500](v5);

      MEMORY[0x259C81500](93, 0xE100000000000000);

      v6 = sub_2584713B0(91, 0xE100000000000000, &v7);

      *(v3 + 4) = v6;
      _os_log_impl(&dword_25845E000, v1, v2, "%s invalidationHandler called", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      MEMORY[0x259C82900](v4, -1, -1);
      MEMORY[0x259C82900](v3, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_25846B810(uint64_t a1, char a2)
{
  *(v3 + 152) = a2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v2;
  return MEMORY[0x2822009F8](sub_25846B834, v2, 0);
}

uint64_t sub_25846B834()
{
  v1 = v0[13];
  v2 = v0[14];
  v0[6] = sub_258472760;
  v0[7] = v2;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_25846C0F0;
  v0[5] = &block_descriptor;
  v3 = _Block_copy(v0 + 2);
  v4 = v0[7];

  v5 = [v1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v3);
  sub_258533A5C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FEB0, &qword_2585368E8);
  if (swift_dynamicCast())
  {
    v6 = v0[14];
    v7 = *(v0 + 152);
    v8 = v0[12];
    v0[15] = v8;
    sub_258471DD0(&qword_27F92FE50, type metadata accessor for MediaContinuityCoexSession);
    v9 = swift_task_alloc();
    v0[16] = v9;
    *(v9 + 16) = v6;
    *(v9 + 24) = v7;
    *(v9 + 32) = v8;
    v10 = *(MEMORY[0x277D85A40] + 4);
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = sub_25846BADC;

    return MEMORY[0x2822008A0]();
  }

  else
  {
    sub_258471C30();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_25846BADC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v9 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = *(v2 + 112);
    v5 = sub_25846BC20;
  }

  else
  {
    v6 = *(v2 + 128);
    v7 = *(v2 + 112);

    v5 = sub_25846BC04;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_25846BC20()
{
  v1 = v0[15];
  v2 = v0[16];
  swift_unknownObjectRelease();

  v3 = v0[18];
  v4 = v0[1];

  return v4();
}

uint64_t sub_25846BC8C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v40 = &v37 - v17;
  if (qword_27F92F908 != -1)
  {
    swift_once();
  }

  v18 = sub_258532A4C();
  __swift_project_value_buffer(v18, qword_27F93D068);

  v19 = a1;
  v20 = sub_258532A2C();
  v21 = sub_2585338CC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v38 = v14;
    v23 = v22;
    v24 = swift_slowAlloc();
    v39 = v9;
    v25 = v24;
    v37 = swift_slowAlloc();
    v41 = v37;
    *v23 = 136315394;
    v42 = 91;
    v43 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v26 = sub_258533DFC();
    MEMORY[0x259C81500](v26);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v27 = sub_2584713B0(v42, v43, &v41);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2112;
    v28 = a1;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v29;
    *v25 = v29;
    _os_log_impl(&dword_25845E000, v20, v21, "%s Failed to retrieve remote object. error=%@", v23, 0x16u);
    sub_258465168(v25, &qword_27F92FBC0, &qword_258537930);
    v30 = v25;
    v9 = v39;
    MEMORY[0x259C82900](v30, -1, -1);
    v31 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x259C82900](v31, -1, -1);
    v32 = v23;
    v14 = v38;
    MEMORY[0x259C82900](v32, -1, -1);
  }

  v33 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_startContinuation;
  swift_beginAccess();
  sub_258472808(a2 + v33, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_258465168(v12, &unk_27F930DB0, &qword_258536390);
  }

  v35 = v40;
  (*(v14 + 32))(v40, v12, v13);
  v41 = a1;
  v36 = a1;
  sub_25853363C();
  (*(v14 + 8))(v35, v13);
  (*(v14 + 56))(v9, 1, 1, v13);
  swift_beginAccess();
  sub_258472790(v9, a2 + v33);
  return swift_endAccess();
}

void sub_25846C0F0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_25846C158(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &aBlock - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a1, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  v15 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_startContinuation;
  swift_beginAccess();
  sub_258472790(v12, a2 + v15);
  swift_endAccess();

  v16 = sub_25853295C();
  v17 = *(a2 + 112);
  if (a3)
  {
    v24 = sub_258472800;
    v25 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_25846C77C;
    v23 = &block_descriptor_73;
    v18 = _Block_copy(&aBlock);

    v19 = &selRef_startSuspendedWithUuid_config_completionHandler_;
  }

  else
  {
    v24 = sub_258472800;
    v25 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_25846C77C;
    v23 = &block_descriptor_70;
    v18 = _Block_copy(&aBlock);

    v19 = &selRef_startWithUuid_config_completionHandler_;
  }

  [a4 *v19];

  _Block_release(v18);
}

uint64_t sub_25846C3F0(char a1, void *a2, uint64_t a3)
{
  v37 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v36 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v36 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v36 - v25;
  v27 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_startContinuation;
  v28 = (v6 + 48);
  if (a1)
  {
    swift_beginAccess();
    sub_258472808(a3 + v27, v26);
    if ((*v28)(v26, 1, v5))
    {
      sub_258465168(v26, &unk_27F930DB0, &qword_258536390);
    }

    else
    {
      (*(v6 + 16))(v13, v26, v5);
      sub_258465168(v26, &unk_27F930DB0, &qword_258536390);
      sub_25853364C();
      (*(v6 + 8))(v13, v5);
    }
  }

  else
  {
    swift_beginAccess();
    sub_258472808(a3 + v27, v23);
    if ((*v28)(v23, 1, v5))
    {
      sub_258465168(v23, &unk_27F930DB0, &qword_258536390);
    }

    else
    {
      v29 = v36;
      (*(v6 + 16))(v36, v23, v5);
      sub_258465168(v23, &unk_27F930DB0, &qword_258536390);
      v30 = v37;
      if (v37)
      {
        v31 = v37;
      }

      else
      {
        sub_258471C30();
        v31 = swift_allocError();
        *v32 = 1;
      }

      v38 = v31;
      v33 = v30;
      sub_25853363C();
      (*(v6 + 8))(v29, v5);
    }
  }

  (*(v6 + 56))(v19, 1, 1, v5);
  v34 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_startContinuation;
  swift_beginAccess();
  sub_258472790(v19, a3 + v34);
  return swift_endAccess();
}

void sub_25846C77C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_25846C7F4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = aBlock - v8;
  (*(v5 + 16))(aBlock - v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  aBlock[4] = sub_258472954;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25846C77C;
  aBlock[3] = &block_descriptor_89;
  v12 = _Block_copy(aBlock);

  [a2 stopWithCompletionHandler_];
  _Block_release(v12);
}

uint64_t sub_25846C9A4(char a1, id a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
    return sub_25853364C();
  }

  else
  {
    if (!a2)
    {
      sub_258471C30();
      swift_allocError();
      v4 = v3;
      a2 = 0;
      *v4 = 2;
    }

    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
    return sub_25853363C();
  }
}

uint64_t sub_25846CA58(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE38, &qword_258536398);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v25 - v13;
  v27 = 91;
  v28 = 0xE100000000000000;
  sub_2585329BC();
  sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
  v15 = sub_258533DFC();
  MEMORY[0x259C81500](v15);

  MEMORY[0x259C81500](93, 0xE100000000000000);
  v16 = v28;
  v26 = v27;
  v17 = sub_25853368C();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v4;
  (*(v5 + 16))(v9, a1, v4);
  v20 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v26;
  *(v21 + 5) = v16;
  (*(v5 + 32))(&v21[v20], v9, v19);
  *&v21[(v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8] = v18;
  v22 = sub_258476C88(0, 0, v14, &unk_258536900, v21);
  v23 = *(v2 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask);
  *(v2 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask) = v22;
}

uint64_t MediaContinuityCoexSession.description.getter()
{
  sub_2585329BC();
  sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
  v0 = sub_258533DFC();
  MEMORY[0x259C81500](v0);

  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_25846CDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FEB8, &qword_258536908);
  v7[16] = v8;
  v9 = *(v8 - 8);
  v7[17] = v9;
  v10 = *(v9 + 64) + 15;
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25846CEAC, 0, 0);
}

uint64_t sub_25846CEAC()
{
  v18 = v0;
  if (qword_27F92F908 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_258532A4C();
  v0[19] = __swift_project_value_buffer(v2, qword_27F93D068);

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2584713B0(v6, v5, &v17);
    _os_log_impl(&dword_25845E000, v3, v4, "%s Start monitoring events", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v7, -1, -1);
  }

  v9 = v0[18];
  v10 = v0[14];
  v11 = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE38, &qword_258536398);
  sub_2585336FC();
  swift_beginAccess();
  v12 = *(MEMORY[0x277D858B8] + 4);
  v13 = swift_task_alloc();
  v0[20] = v13;
  *v13 = v0;
  v13[1] = sub_25846D0C0;
  v14 = v0[18];
  v15 = v0[16];

  return MEMORY[0x2822005A8](v0 + 5, 0, 0, v15, v0 + 10);
}

uint64_t sub_25846D0C0()
{
  v2 = *(*v1 + 160);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_25846D82C;
  }

  else
  {
    v3 = sub_25846D1D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25846D1D0()
{
  v32 = v0;
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  *(v0 + 168) = v2;
  *(v0 + 176) = v1;
  v3 = *(v0 + 56);
  *(v0 + 57) = v3;
  if (v3 == 255)
  {
    v19 = *(v0 + 152);
    v20 = *(v0 + 104);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    v21 = sub_258532A2C();
    v22 = sub_2585338EC();

    if (os_log_type_enabled(v21, v22))
    {
      v24 = *(v0 + 96);
      v23 = *(v0 + 104);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_2584713B0(v24, v23, &v31);
      _os_log_impl(&dword_25845E000, v21, v22, "%s Stop monitoring events", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x259C82900](v26, -1, -1);
      MEMORY[0x259C82900](v25, -1, -1);
    }
  }

  else
  {
    if ((sub_25853376C() & 1) == 0)
    {
      v4 = *(v0 + 120);
      Strong = swift_weakLoadStrong();
      *(v0 + 184) = Strong;
      if (Strong)
      {
        v6 = *(v0 + 152);

        sub_258472C3C(v2, v1, v3);
        v7 = sub_258532A2C();
        v8 = sub_2585338BC();

        sub_258472C10(v2, v1, v3);
        if (os_log_type_enabled(v7, v8))
        {
          v30 = v8;
          v9 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *(v0 + 88) = v29;
          *v9 = 136315394;
          *(v0 + 64) = 91;
          *(v0 + 72) = 0xE100000000000000;
          sub_2585329BC();
          sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);

          v10 = sub_258533DFC();
          MEMORY[0x259C81500](v10);

          MEMORY[0x259C81500](93, 0xE100000000000000);

          v11 = sub_2584713B0(*(v0 + 64), *(v0 + 72), (v0 + 88));

          *(v9 + 4) = v11;
          *(v9 + 12) = 2080;
          v12 = 0xED00006E6F697373;
          v13 = 0x6553656D75736572;
          if (v3 != 1)
          {
            v13 = 0xD000000000000016;
            v12 = 0x80000002585401E0;
          }

          if (v3)
          {
            v14 = v13;
          }

          else
          {
            v14 = 0x53646E6570737573;
          }

          if (v3)
          {
            v15 = v12;
          }

          else
          {
            v15 = 0xEE006E6F69737365;
          }

          v16 = sub_2584713B0(v14, v15, (v0 + 88));

          *(v9 + 14) = v16;
          _os_log_impl(&dword_25845E000, v7, v30, "%s event=%s", v9, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C82900](v29, -1, -1);
          MEMORY[0x259C82900](v9, -1, -1);
        }

        v17 = swift_task_alloc();
        *(v0 + 192) = v17;
        *v17 = v0;
        v17[1] = sub_25846D65C;

        return sub_25846D8AC(v2, v1, v3);
      }
    }

    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    sub_258472C10(v2, v1, v3);
  }

  v27 = *(v0 + 144);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_25846D65C()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25846D758, 0, 0);
}

uint64_t sub_25846D758()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 57);

  sub_258472C10(v3, v2, v4);
  v5 = *(MEMORY[0x277D858B8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  *v6 = v0;
  v6[1] = sub_25846D0C0;
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);

  return MEMORY[0x2822005A8](v0 + 40, 0, 0, v8, v0 + 80);
}

uint64_t sub_25846D82C()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = v0[10];

  v2 = v0[1];

  return v2();
}

uint64_t sub_25846D8AC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 72) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_25846D8D4, v3, 0);
}

uint64_t sub_25846D8D4()
{
  v18 = v0;
  if (*(v0 + 72))
  {
    if (*(v0 + 72) == 1)
    {
      v1 = swift_task_alloc();
      *(v0 + 48) = v1;
      *v1 = v0;
      v1[1] = sub_25846DD94;
      v2 = *(v0 + 32);

      return sub_25846ECD8();
    }

    else
    {
      if (qword_27F92F908 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 32);
      v7 = sub_258532A4C();
      *(v0 + 56) = __swift_project_value_buffer(v7, qword_27F93D068);

      v8 = sub_258532A2C();
      v9 = sub_2585338EC();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = *(v0 + 32);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 136315138;
        v17[0] = v12;
        v17[1] = 91;
        v17[2] = 0xE100000000000000;
        sub_2585329BC();
        sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
        v13 = sub_258533DFC();
        MEMORY[0x259C81500](v13);

        MEMORY[0x259C81500](93, 0xE100000000000000);
        v14 = sub_2584713B0(91, 0xE100000000000000, v17);

        *(v11 + 4) = v14;
        _os_log_impl(&dword_25845E000, v8, v9, "%s Reconnecting", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x259C82900](v12, -1, -1);
        MEMORY[0x259C82900](v11, -1, -1);
      }

      v15 = swift_task_alloc();
      *(v0 + 64) = v15;
      *v15 = v0;
      v15[1] = sub_25846DEA4;
      v16 = *(v0 + 32);

      return sub_25846FB44();
    }
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 40) = v4;
    *v4 = v0;
    v4[1] = sub_25846DC20;
    v5 = *(v0 + 32);

    return sub_25846E188();
  }
}

uint64_t sub_25846DC20()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25846DD30, v2, 0);
}

uint64_t sub_25846DD30()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25846DD94()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_258472CE4, v2, 0);
}

uint64_t sub_25846DEA4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25846DFB4, v2, 0);
}

uint64_t sub_25846DFB4()
{
  v13 = v0;
  v1 = v0[7];
  v2 = v0[4];

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136315138;
    v12[0] = v7;
    v12[1] = 91;
    v12[2] = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v8 = sub_258533DFC();
    MEMORY[0x259C81500](v8);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v9 = sub_2584713B0(91, 0xE100000000000000, v12);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Reconnected", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_25846E1A8()
{
  v42 = v0;
  if (qword_27F92F908 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_258532A4C();
  v0[3] = __swift_project_value_buffer(v2, qword_27F93D068);

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136315138;
    v39 = v7;
    v40 = 91;
    v41 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v8 = sub_258533DFC();
    MEMORY[0x259C81500](v8);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v9 = sub_2584713B0(91, 0xE100000000000000, &v39);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Suspending session", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v10 = v0[2];
  if (*(v10 + 136) == 2)
  {
    *(v10 + 136) = 4;
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[4] = Strong;
    v12 = v0[2];
    if (Strong)
    {
      v13 = *(v12 + 128);
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 8);
      v38 = (v15 + *v15);
      v16 = v15[1];
      v17 = swift_task_alloc();
      v0[5] = v17;
      *v17 = v0;
      v17[1] = sub_25846E8BC;
      v18 = v0[2];

      return v38(v18, ObjectType, v13);
    }

    v30 = v0[3];
    if (*(v12 + 136) == 4)
    {
      *(v12 + 136) = 5;

      v21 = sub_258532A2C();
      v22 = sub_2585338EC();

      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_13;
      }

      v31 = v0[2];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 136315138;
      v39 = v25;
      v40 = 91;
      v41 = 0xE100000000000000;
      sub_2585329BC();
      sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
      v32 = sub_258533DFC();
      MEMORY[0x259C81500](v32);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v33 = sub_2584713B0(v40, v41, &v39);

      *(v24 + 4) = v33;
      v28 = "%s Suspended session";
    }

    else
    {
      v34 = v0[2];

      v21 = sub_258532A2C();
      v22 = sub_2585338CC();

      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_13;
      }

      v35 = v0[2];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 136315138;
      v39 = v25;
      v40 = 91;
      v41 = 0xE100000000000000;
      sub_2585329BC();
      sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
      v36 = sub_258533DFC();
      MEMORY[0x259C81500](v36);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v37 = sub_2584713B0(v40, v41, &v39);

      *(v24 + 4) = v37;
      v28 = "%s Suspended abort, session is was stopped";
    }

    goto LABEL_12;
  }

  v20 = v0[2];

  v21 = sub_258532A2C();
  v22 = sub_2585338CC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v0[2];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 136315138;
    v39 = v25;
    v40 = 91;
    v41 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v26 = sub_258533DFC();
    MEMORY[0x259C81500](v26);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v27 = sub_2584713B0(v40, v41, &v39);

    *(v24 + 4) = v27;
    v28 = "%s Suspended abort, session is not started";
LABEL_12:
    _os_log_impl(&dword_25845E000, v21, v22, v28, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x259C82900](v25, -1, -1);
    MEMORY[0x259C82900](v24, -1, -1);
  }

LABEL_13:

  v29 = v0[1];

  return v29();
}

uint64_t sub_25846E8BC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25846E9CC, v2, 0);
}

uint64_t sub_25846E9CC()
{
  v21 = v0;
  v1 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[2];
  v2 = v0[3];
  if (*(v3 + 136) == 4)
  {
    *(v3 + 136) = 5;

    v4 = sub_258532A2C();
    v5 = sub_2585338EC();

    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_7;
    }

    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v18 = v8;
    v19 = 91;
    v20 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v9 = sub_258533DFC();
    MEMORY[0x259C81500](v9);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v10 = sub_2584713B0(91, 0xE100000000000000, &v18);

    *(v7 + 4) = v10;
    v11 = "%s Suspended session";
  }

  else
  {
    v12 = v0[2];

    v4 = sub_258532A2C();
    v5 = sub_2585338CC();

    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_7;
    }

    v13 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v18 = v8;
    v19 = 91;
    v20 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v14 = sub_258533DFC();
    MEMORY[0x259C81500](v14);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v15 = sub_2584713B0(91, 0xE100000000000000, &v18);

    *(v7 + 4) = v15;
    v11 = "%s Suspended abort, session is was stopped";
  }

  _os_log_impl(&dword_25845E000, v4, v5, v11, v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  MEMORY[0x259C82900](v8, -1, -1);
  MEMORY[0x259C82900](v7, -1, -1);
LABEL_7:

  v16 = v0[1];

  return v16();
}

uint64_t sub_25846ECF8()
{
  v49 = v0;
  if (qword_27F92F908 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_258532A4C();
  v0[3] = __swift_project_value_buffer(v2, qword_27F93D068);

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136315138;
    v46 = v7;
    v47 = 91;
    v48 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v8 = sub_258533DFC();
    MEMORY[0x259C81500](v8);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v9 = sub_2584713B0(91, 0xE100000000000000, &v46);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Resuming session", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v10 = v0[2];
  if (*(v10 + 136) != 5)
  {
    v20 = v0[2];

    v21 = sub_258532A2C();
    v22 = sub_2585338CC();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_37;
    }

    v23 = v0[2];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 136315394;
    v46 = v25;
    v47 = 91;
    v48 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v26 = sub_258533DFC();
    MEMORY[0x259C81500](v26);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v27 = sub_2584713B0(v47, v48, &v46);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    v28 = *(v10 + 136);
    if (v28 <= 3)
    {
      if (*(v10 + 136) <= 1u)
      {
        if (*(v10 + 136))
        {
LABEL_26:
          v29 = 0xE800000000000000;
          v30 = 0x676E697472617473;
          goto LABEL_35;
        }

LABEL_21:
        v30 = 0x646570706F7473;
        v29 = 0xE700000000000000;
LABEL_35:
        v43 = sub_2584713B0(v30, v29, &v46);

        *(v24 + 14) = v43;
        _os_log_impl(&dword_25845E000, v21, v22, "%s Suspended resume, session state=%s has changed", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C82900](v25, -1, -1);
        v38 = v24;
        goto LABEL_36;
      }

LABEL_27:
      if (v28 == 2)
      {
        v29 = 0xE700000000000000;
        v30 = 0x64657472617473;
      }

      else
      {
        v29 = 0xE800000000000000;
        v30 = 0x676E6970706F7473;
      }

      goto LABEL_35;
    }

LABEL_12:
    if (v28 <= 5)
    {
      if (v28 == 4)
      {
        v30 = 0x69646E6570737573;
        v29 = 0xEA0000000000676ELL;
      }

      else
      {
        v30 = 0x65646E6570737573;
        v29 = 0xE900000000000064;
      }
    }

    else if (v28 == 6)
    {
      v29 = 0xE800000000000000;
      v30 = 0x676E696D75736572;
    }

    else if (v28 == 7)
    {
      v29 = 0xE700000000000000;
      v30 = 0x74726174736572;
    }

    else
    {
      v30 = 0x7075727265746E69;
      v29 = 0xEB00000000646574;
    }

    goto LABEL_35;
  }

  *(v10 + 136) = 6;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[4] = Strong;
  v12 = v0[2];
  if (Strong)
  {
    v13 = *(v12 + 128);
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 16);
    v45 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v0[5] = v17;
    *v17 = v0;
    v17[1] = sub_25846F5A0;
    v18 = v0[2];

    return v45(v18, ObjectType, v13);
  }

  v31 = v0[3];
  if (*(v12 + 136) != 6)
  {
    v39 = v0[2];

    v21 = sub_258532A2C();
    v22 = sub_2585338CC();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_37;
    }

    v40 = v0[2];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 136315394;
    v46 = v25;
    v47 = 91;
    v48 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v41 = sub_258533DFC();
    MEMORY[0x259C81500](v41);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v42 = sub_2584713B0(v47, v48, &v46);

    *(v24 + 4) = v42;
    *(v24 + 12) = 2080;
    v28 = *(v40 + 136);
    if (v28 <= 3)
    {
      if (*(v40 + 136) <= 1u)
      {
        if (*(v40 + 136))
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }

      goto LABEL_27;
    }

    goto LABEL_12;
  }

  *(v12 + 136) = 2;

  v21 = sub_258532A2C();
  v32 = sub_2585338EC();

  if (os_log_type_enabled(v21, v32))
  {
    v33 = v0[2];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 136315138;
    v46 = v35;
    v47 = 91;
    v48 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v36 = sub_258533DFC();
    MEMORY[0x259C81500](v36);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v37 = sub_2584713B0(v47, v48, &v46);

    *(v34 + 4) = v37;
    _os_log_impl(&dword_25845E000, v21, v32, "%s Resumed session", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x259C82900](v35, -1, -1);
    v38 = v34;
LABEL_36:
    MEMORY[0x259C82900](v38, -1, -1);
  }

LABEL_37:

  v44 = v0[1];

  return v44();
}

uint64_t sub_25846F5A0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25846F6B0, v2, 0);
}

uint64_t sub_25846F6B0()
{
  v28 = v0;
  v1 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[2];
  v2 = v0[3];
  if (*(v3 + 136) == 6)
  {
    *(v3 + 136) = 2;

    v4 = sub_258532A2C();
    v5 = sub_2585338EC();

    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_24;
    }

    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v25 = v8;
    v26 = 91;
    v27 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v9 = sub_258533DFC();
    MEMORY[0x259C81500](v9);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v10 = sub_2584713B0(91, 0xE100000000000000, &v25);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_25845E000, v4, v5, "%s Resumed session", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x259C82900](v8, -1, -1);
    v11 = v7;
  }

  else
  {
    v12 = v0[2];

    v4 = sub_258532A2C();
    v13 = sub_2585338CC();

    if (!os_log_type_enabled(v4, v13))
    {
      goto LABEL_24;
    }

    v14 = v0[2];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 136315394;
    v25 = v16;
    v26 = 91;
    v27 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v17 = sub_258533DFC();
    MEMORY[0x259C81500](v17);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v18 = sub_2584713B0(91, 0xE100000000000000, &v25);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = *(v14 + 136);
    if (v19 <= 3)
    {
      if (*(v14 + 136) > 1u)
      {
        if (v19 == 2)
        {
          v20 = 0xE700000000000000;
          v21 = 0x64657472617473;
        }

        else
        {
          v20 = 0xE800000000000000;
          v21 = 0x676E6970706F7473;
        }
      }

      else if (*(v14 + 136))
      {
        v20 = 0xE800000000000000;
        v21 = 0x676E697472617473;
      }

      else
      {
        v20 = 0xE700000000000000;
        v21 = 0x646570706F7473;
      }
    }

    else if (*(v14 + 136) <= 5u)
    {
      if (v19 == 4)
      {
        v20 = 0xEA0000000000676ELL;
        v21 = 0x69646E6570737573;
      }

      else
      {
        v20 = 0xE900000000000064;
        v21 = 0x65646E6570737573;
      }
    }

    else if (v19 == 6)
    {
      v20 = 0xE800000000000000;
      v21 = 0x676E696D75736572;
    }

    else if (v19 == 7)
    {
      v20 = 0xE700000000000000;
      v21 = 0x74726174736572;
    }

    else
    {
      v20 = 0xEB00000000646574;
      v21 = 0x7075727265746E69;
    }

    v22 = sub_2584713B0(v21, v20, &v25);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_25845E000, v4, v13, "%s Suspended resume, session state=%s has changed", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v16, -1, -1);
    v11 = v15;
  }

  MEMORY[0x259C82900](v11, -1, -1);
LABEL_24:

  v23 = v0[1];

  return v23();
}

uint64_t sub_25846FB64()
{
  v1 = v0[2];
  v2 = *(v1 + 136);
  v3 = &byte_28698B370;
  for (i = qword_28698B360; i; --i)
  {
    v5 = *v3++;
    if (v5 == v2)
    {
      v6 = v2 == 5;
      *(v1 + 136) = 7;
      v7 = swift_task_alloc();
      v0[3] = v7;
      *v7 = v0;
      v7[1] = sub_25846FC64;
      v8 = v0[2];

      return sub_25847076C(v6, 7);
    }
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_25846FC64()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {
    v4 = v3[2];

    return MEMORY[0x2822009F8](sub_25846FD98, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_25846FD98()
{
  v1 = *(v0 + 16);
  if (*(v1 + 136) == 7)
  {
    sub_258471C30();
    *(v0 + 40) = swift_allocError();
    *v2 = 5;
    if (*(v1 + 136) <= 7u)
    {
      *(*(v0 + 16) + 136) = 8;
      v3 = swift_task_alloc();
      *(v0 + 48) = v3;
      *v3 = v0;
      v3[1] = sub_25846FEB8;
      v4 = *(v0 + 16);

      return sub_2584702E4();
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25846FEB8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25846FFC8, v2, 0);
}

uint64_t sub_25846FFC8()
{
  v1 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = *(*(v0 + 16) + 128);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);
    v12 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 64) = v7;
    *v7 = v0;
    v7[1] = sub_258470150;
    v8 = *(v0 + 40);
    v9 = *(v0 + 16);

    return v12(v9, v8, ObjectType, v3);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_258470150()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 16);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_25847027C, v3, 0);
}

uint64_t sub_25847027C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258470304()
{
  v1 = v0[2];
  v2 = *(v1 + 152);
  v0[3] = v2;
  if (v2)
  {
    sub_258471DD0(&qword_27F92FE50, type metadata accessor for MediaContinuityCoexSession);
    swift_unknownObjectRetain();
    v3 = swift_task_alloc();
    v0[4] = v3;
    *(v3 + 16) = v2;
    v4 = *(MEMORY[0x277D85A40] + 4);
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_258470510;

    return MEMORY[0x2822008A0]();
  }

  else
  {
    *(v1 + 152) = 0;
    v6 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask;
    if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask))
    {
      v7 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      sub_25853374C();

      v8 = *(v1 + v6);
    }

    v9 = v0[2];
    *(v1 + v6) = 0;

    [*(v9 + 144) invalidate];
    v10 = *(v9 + 144);
    *(v9 + 144) = 0;

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_258470510()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  v5 = *(v2 + 32);
  v6 = *(v2 + 16);
  if (v0)
  {

    v7 = sub_258472CE8;
  }

  else
  {

    v7 = sub_25847066C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_25847066C()
{
  v1 = v0[3];
  swift_unknownObjectRelease();
  v2 = v0[2];
  v3 = *(v2 + 152);
  *(v2 + 152) = 0;
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask;
  if (*(v2 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask))
  {
    v5 = *(v2 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v6 = *(v2 + v4);
  }

  v7 = v0[2];
  *(v2 + v4) = 0;

  [*(v7 + 144) invalidate];
  v8 = *(v7 + 144);
  *(v7 + 144) = 0;

  v9 = v0[1];

  return v9();
}

uint64_t sub_25847076C(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 81) = a2;
  *(v3 + 80) = a1;
  return MEMORY[0x2822009F8](sub_258470794, v2, 0);
}

uint64_t sub_258470794()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 152);
  *(v1 + 152) = 0;
  swift_unknownObjectRelease();
  v3 = sub_25846AFC4();
  *(v0 + 24) = v3;
  v4 = *(v1 + 144);
  *(v1 + 144) = v3;
  v5 = v3;

  [v5 activate];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_258470870;
  v7 = *(v0 + 16);
  v8 = *(v0 + 80);

  return sub_25846B810(v5, v8);
}

uint64_t sub_258470870(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(v4 + 40) = a1;
  *(v4 + 48) = v1;

  v7 = *(v3 + 16);
  if (v1)
  {
    v8 = sub_258470DA4;
  }

  else
  {
    v8 = sub_2584709A4;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2584709A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  if (*(v1 + 136) == *(v0 + 81))
  {
    v3 = *(v0 + 80);

    v4 = *(v1 + 152);
    *(v1 + 152) = v2;
    swift_unknownObjectRelease();
    if (v3)
    {
      v5 = 5;
    }

    else
    {
      v5 = 2;
    }

    *(v1 + 136) = v5;
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    sub_258471DD0(&qword_27F92FE50, type metadata accessor for MediaContinuityCoexSession);
    v8 = swift_task_alloc();
    *(v0 + 56) = v8;
    *(v8 + 16) = v2;
    v9 = *(MEMORY[0x277D85A40] + 4);
    v10 = swift_task_alloc();
    *(v0 + 64) = v10;
    *v10 = v0;
    v10[1] = sub_258470B54;

    return MEMORY[0x2822008A0]();
  }
}

uint64_t sub_258470B54()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_258470D2C;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 16);

    v5 = sub_258470C7C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_258470C7C()
{
  v1 = v0[5];
  v2 = v0[3];
  sub_258471C30();
  swift_allocError();
  *v3 = 5;
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_258470D2C()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[3];

  swift_unknownObjectRelease();

  v4 = v0[9];
  v5 = v0[1];

  return v5();
}

uint64_t sub_258470DA4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258470E5C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FEA8, &qword_2585368E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v18 - v13;
  v15 = _Block_copy(a3);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v18[1] = a5;
  v18[2] = v16;
  v19 = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE08, &unk_258536380);
  sub_2585337EC();

  return (*(v10 + 8))(v14, v9);
}

uint64_t MediaContinuityCoexSession.hash(into:)()
{
  sub_2585329BC();
  sub_258471DD0(&qword_27F92FE58, MEMORY[0x277CC95F0]);
  return sub_2585333BC();
}

uint64_t MediaContinuityCoexSession.hashValue.getter()
{
  sub_258533EEC();
  sub_2585329BC();
  sub_258471DD0(&qword_27F92FE58, MEMORY[0x277CC95F0]);
  sub_2585333BC();
  return sub_258533F2C();
}

uint64_t sub_2584710F4()
{
  v1 = *v0;
  sub_258533EEC();
  sub_2585329BC();
  sub_258471DD0(&qword_27F92FE58, MEMORY[0x277CC95F0]);
  sub_2585333BC();
  return sub_258533F2C();
}

uint64_t sub_258471194()
{
  v1 = *v0;
  sub_2585329BC();
  sub_258471DD0(&qword_27F92FE58, MEMORY[0x277CC95F0]);
  return sub_2585333BC();
}

uint64_t sub_25847121C()
{
  v1 = *v0;
  sub_258533EEC();
  sub_2585329BC();
  sub_258471DD0(&qword_27F92FE58, MEMORY[0x277CC95F0]);
  sub_2585333BC();
  return sub_258533F2C();
}

uint64_t sub_2584712B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_25853296C();
}

uint64_t sub_2584712D4()
{
  v1 = *v0;
  sub_2585329BC();
  sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
  v2 = sub_258533DFC();
  MEMORY[0x259C81500](v2);

  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_2584713B0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25847147C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_258472C68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_25847147C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_258471588(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_258533BDC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_258471588(uint64_t a1, unint64_t a2)
{
  v4 = sub_2584715D4(a1, a2);
  sub_258471704(&unk_28698B208);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2584715D4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2584B42C4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_258533BDC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2585334EC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2584B42C4(v10, 0);
        result = sub_258533B7C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_258471704(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2584717F0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2584717F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FEC0, &qword_258536910);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2584718E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v31 = a2;
  v29 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FEC8, &qword_258536918);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v29 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE08, &unk_258536380);
  v12 = *(v32 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v32, v14);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE38, &qword_258536398);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v29 - v21;
  swift_defaultActor_initialize();
  *(a3 + 128) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  sub_2585329AC();
  v23 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_startContinuation;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  (*(*(v24 - 8) + 56))(a3 + v23, 1, 1, v24);
  *(a3 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask) = 0;
  v26 = v29;
  v25 = v30;
  *(a3 + 112) = v29;
  *(a3 + 128) = v25;
  swift_unknownObjectWeakAssign();
  (*(v7 + 104))(v11, *MEMORY[0x277D858A0], v6);
  v27 = v26;
  sub_2585337BC();
  (*(v7 + 8))(v11, v6);
  (*(v18 + 32))(a3 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventStream, v22, v17);
  (*(v12 + 32))(a3 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventStreamContinuation, v16, v32);
  return a3;
}

unint64_t sub_258471C30()
{
  result = qword_27F92FE40;
  if (!qword_27F92FE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FE40);
  }

  return result;
}

uint64_t type metadata accessor for MediaContinuityCoexSession()
{
  result = qword_27F92FE78;
  if (!qword_27F92FE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_258471CDC()
{
  result = qword_27F92FE60;
  if (!qword_27F92FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FE60);
  }

  return result;
}

unint64_t sub_258471D34()
{
  result = qword_27F92FE68;
  if (!qword_27F92FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FE68);
  }

  return result;
}

uint64_t sub_258471DD0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258471E18(uint64_t a1)
{
  result = sub_258471C30();
  *(a1 + 8) = result;
  return result;
}

void sub_258471E48()
{
  v0 = sub_2585329BC();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_258472254();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_2584722B8(319, &qword_27F92FE90, MEMORY[0x277D858D8]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_2584722B8(319, &qword_27F92FE98, MEMORY[0x277D858B0]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of MediaContinuityCoexSession.start()()
{
  v2 = *(*v0 + 320);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_258472CF8;

  return v6();
}

uint64_t dispatch thunk of MediaContinuityCoexSession.stop()()
{
  v2 = *(*v0 + 328);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_258472CF8;

  return v6();
}

void sub_258472254()
{
  if (!qword_27F92FE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308F0, &qword_25853AC70);
    v0 = sub_258533A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F92FE88);
    }
  }
}

void sub_2584722B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v7 = a3(a1, &type metadata for MediaContinuityCoexSession.Events, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MediaContinuityCoexSession.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaContinuityCoexSession.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaContinuityCoexSession.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaContinuityCoexSession.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18MediaContinuityKit0aB11CoexSessionC6Events33_039972B4F306E32CA3B28AD5CB28EAFBLLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_258472614(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25847265C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2584726A0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_2584726C8()
{
  result = qword_27F92FEA0;
  if (!qword_27F92FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FEA0);
  }

  return result;
}

uint64_t sub_258472720()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_258472790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_258472808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258472878()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2584728C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_258472954(char a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70) - 8) + 80);

  return sub_25846C9A4(a1, a2);
}

uint64_t sub_2584729E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE38, &qword_258536398);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_258472ACC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE38, &qword_258536398) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_258464F5C;

  return sub_25846CDDC(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_258472C10(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_258472C24(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_258472C24(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_258472C3C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_258472C50(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_258472C50(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_258472C68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t static MediaContinuityCoexSession.Configuration.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27F92FED0 = a1;
  return result;
}

uint64_t MediaContinuityCoexSession.Configuration.Errors.hashValue.getter()
{
  v1 = *v0;
  sub_258533EEC();
  MEMORY[0x259C81F40](v1);
  return sub_258533F2C();
}

id MediaContinuityCoexSession.Configuration.__allocating_init(usage:remoteDeviceID:interface:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = *(a1 + 32);
  v11 = *(a1 + 33);
  v12 = *a4;
  v13 = &v9[OBJC_IVAR___MediaContinuityCoexSessionConfig_usage];
  v14 = *(a1 + 16);
  *v13 = *a1;
  *(v13 + 1) = v14;
  v13[32] = v10;
  v13[33] = v11;
  v15 = &v9[OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID];
  *v15 = a2;
  v15[1] = a3;
  v9[OBJC_IVAR___MediaContinuityCoexSessionConfig_interface] = v12;
  v17.receiver = v9;
  v17.super_class = v4;
  return objc_msgSendSuper2(&v17, sel_init);
}

id MediaContinuityCoexSession.Configuration.init(usage:remoteDeviceID:interface:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 33);
  v7 = *a4;
  v8 = &v4[OBJC_IVAR___MediaContinuityCoexSessionConfig_usage];
  v9 = *(a1 + 16);
  *v8 = *a1;
  *(v8 + 1) = v9;
  v8[32] = v5;
  v8[33] = v6;
  v10 = &v4[OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID];
  *v10 = a2;
  v10[1] = a3;
  v4[OBJC_IVAR___MediaContinuityCoexSessionConfig_interface] = v7;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for MediaContinuityCoexSession.Configuration();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_2584730C4()
{
  sub_258533B8C();
  MEMORY[0x259C81500](0x3D65676173755BLL, 0xE700000000000000);
  v1 = (v0 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage);
  if (*(v0 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 33) == 1)
  {
    v2 = *(v1 + 32);
    v4 = v1[2];
    v3 = v1[3];
    v5 = *v1;
    v6 = v1[1];
    v7 = v4 | v3;
    if (v2)
    {
      v8 = 0;
    }

    else
    {
      v8 = (v7 | v5 | v6) == 0;
    }

    if (v8)
    {
      v14 = 0x80000002585402D0;
      v15 = 0xD000000000000011;
    }

    else
    {
      v9 = v7 | v6;
      if (v2)
      {
        v10 = 0;
      }

      else
      {
        v10 = v5 == 1;
      }

      if (v10 && v9 == 0)
      {
        v14 = 0xE700000000000000;
        v15 = 0x79616C70726961;
      }

      else
      {
        if (v2)
        {
          v12 = 0;
        }

        else
        {
          v12 = v5 == 2;
        }

        if (v12 && v9 == 0)
        {
          v14 = 0xE700000000000000;
          v15 = 0x72616365646973;
        }

        else
        {
          v14 = 0xEF676E69726F7272;
          v15 = 0x694D656E6F685069;
          if (!v2 && v5 == 3 && !v9)
          {
            v14 = 0x80000002585402B0;
            v15 = 0xD000000000000010;
          }
        }
      }
    }
  }

  else
  {
    v14 = 0x80000002585402F0;
    v15 = 0xD000000000000012;
  }

  MEMORY[0x259C81500](v15, v14);

  MEMORY[0x259C81500](0xD000000000000011, 0x8000000258540290);
  MEMORY[0x259C81500](*(v0 + OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID), *(v0 + OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID + 8));
  MEMORY[0x259C81500](0x667265746E69202CLL, 0xEC0000003D656361);
  v17 = *(v0 + OBJC_IVAR___MediaContinuityCoexSessionConfig_interface);
  sub_258533C8C();
  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0;
}

id MediaContinuityCoexSession.Configuration.init(coder:)(void *a1)
{
  v3 = sub_25853341C();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_258533A5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32 = v30;
  v33 = v31;
  if (!*(&v31 + 1))
  {
    sub_258467FD8(&v32);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    sub_258473A80();
    v8 = swift_allocError();
    *v9 = 0;
LABEL_18:
    v14 = sub_2585328AC();

    [a1 failWithError_];
LABEL_19:

    type metadata accessor for MediaContinuityCoexSession.Configuration();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v5 = v29;
  v6 = sub_25853341C();
  v7 = [a1 decodeObjectForKey_];

  if (v7)
  {
    sub_258533A5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32 = v30;
  v33 = v31;
  if (!*(&v31 + 1))
  {

    sub_258467FD8(&v32);
LABEL_17:
    sub_258473A80();
    v8 = swift_allocError();
    *v13 = 3;
    goto LABEL_18;
  }

  type metadata accessor for MediaContinuityUsageSecureCodingWrapper();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  v10 = v28;
  v11 = sub_25853341C();
  v12 = [a1 decodeObjectForKey_];

  if (v12)
  {
    sub_258533A5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32 = v30;
  v33 = v31;
  if (!*(&v31 + 1))
  {

    sub_258467FD8(&v32);
LABEL_27:
    sub_258473A80();
    v23 = swift_allocError();
    v24 = 1;
LABEL_28:
    *v22 = v24;
    v14 = sub_2585328AC();

    [a1 failWithError_];
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_27;
  }

  v16 = sub_258533CEC();

  if (v16 > 1)
  {

    sub_258473A80();
    v23 = swift_allocError();
    v24 = 2;
    goto LABEL_28;
  }

  v17 = &v1[OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID];
  *v17 = v28;
  v17[1] = v5;
  v18 = v10[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 32];
  v19 = v10[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 33];
  v25 = *&v10[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 16];
  v26 = *&v10[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue];

  v20 = &v1[OBJC_IVAR___MediaContinuityCoexSessionConfig_usage];
  *v20 = v26;
  *(v20 + 1) = v25;
  v20[32] = v18;
  v20[33] = v19;
  v1[OBJC_IVAR___MediaContinuityCoexSessionConfig_interface] = v16;
  v27.receiver = v1;
  v27.super_class = type metadata accessor for MediaContinuityCoexSession.Configuration();
  v21 = objc_msgSendSuper2(&v27, sel_init);

  return v21;
}

void sub_258473778(void *a1)
{
  v3 = (v1 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage);
  v4 = *(v1 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32);
  v5 = *(v1 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 33);
  v6 = type metadata accessor for MediaContinuityUsageSecureCodingWrapper();
  v17 = v3[1];
  v18 = *v3;
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue];
  *v8 = v18;
  *(v8 + 1) = v17;
  v8[32] = v4;
  v8[33] = v5;
  v19.receiver = v7;
  v19.super_class = v6;
  v9 = objc_msgSendSuper2(&v19, sel_init);
  v10 = sub_25853341C();
  [a1 encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID);
  v12 = *(v1 + OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID + 8);
  v13 = sub_25853341C();
  v14 = sub_25853341C();
  [a1 encodeObject:v13 forKey:v14];

  *(v1 + OBJC_IVAR___MediaContinuityCoexSessionConfig_interface);
  *(v1 + OBJC_IVAR___MediaContinuityCoexSessionConfig_interface);
  v15 = sub_25853341C();

  v16 = sub_25853341C();
  [a1 encodeObject:v15 forKey:v16];
}

id MediaContinuityCoexSession.Configuration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MediaContinuityCoexSession.Configuration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaContinuityCoexSession.Configuration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_258473A80()
{
  result = qword_27F92FEF8;
  if (!qword_27F92FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FEF8);
  }

  return result;
}

unint64_t sub_258473AD8()
{
  result = qword_27F92FF00;
  if (!qword_27F92FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FF00);
  }

  return result;
}

unint64_t sub_258473B2C(uint64_t a1)
{
  result = sub_258473A80();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258473B54@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F92FED0;
  return result;
}

uint64_t sub_258473BA0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27F92FED0 = v1;
  return result;
}

uint64_t sub_258473C6C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEB98]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FF70, &qword_25853D620);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_258536920;
  v2 = type metadata accessor for MediaContinuityCoexSession.Configuration();
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FF78, &qword_258536A30);
  *(v1 + 32) = v2;
  v3 = sub_258473E04(0, &qword_27F92FF80, 0x277CCACA8);
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FF88, &qword_258536A38);
  *(v1 + 64) = v3;
  v4 = type metadata accessor for MediaContinuityUsageSecureCodingWrapper();
  *(v1 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FF90, &qword_258536A40);
  *(v1 + 96) = v4;
  v5 = sub_258473E04(0, &qword_27F92FF98, 0x277CBEA90);
  *(v1 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F92FFA0, &qword_258536A48);
  *(v1 + 128) = v5;
  v6 = sub_2585335CC();

  v7 = [v0 setByAddingObjectsFromArray_];

  v8 = sub_25853387C();
  return v8;
}

uint64_t sub_258473E04(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t dispatch thunk of MediaContinuityCoexSessionDelegate.sessionDidSuspend(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_258472CF8;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MediaContinuityCoexSessionDelegate.sessionDidResume(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_258464F5C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MediaContinuityCoexSessionDelegate.sessionDidInterrupt(_:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_258472CF8;

  return v13(a1, a2, a3, a4);
}

uint64_t static AudioStreamConfiguration.appAudioSend.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F92F918 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_27F92FFB0;
  v3 = byte_27F92FFB8;
  *a1 = qword_27F92FFB0;
  *(a1 + 8) = v3;

  return sub_2584742A4(v2, v3);
}

uint64_t sub_2584742A4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

double static AudioStreamConfiguration.appAudioSend(auditToken:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FFC0, &qword_258536AB0);
  v10 = swift_allocObject();
  *&result = 1;
  *(v10 + 16) = xmmword_2585356C0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 48) = a3;
  *(v10 + 56) = a4;
  *a5 = v10;
  *(a5 + 8) = 0;
  return result;
}

unint64_t sub_258474340()
{
  result = qword_27F92FFC8;
  if (!qword_27F92FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FFC8);
  }

  return result;
}

uint64_t sub_2584743A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2584743E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioStreamIdentifier(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AudioStreamIdentifier(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}