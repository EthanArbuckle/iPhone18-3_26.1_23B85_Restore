uint64_t sub_22DEEB820()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22DEEB868()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22DEEB8A4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22DEEB8DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22DEEB93C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22DEEB954()
{
  v1 = sub_22DF63594();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22DEEB9EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22DF63444();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22DEEBA98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22DF63444();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22DEEBB3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DF63444();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22DEEBBA8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22DF63444();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22DEEBC40(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22DF63594();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22DEEBCEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22DF63594();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22DEEBD90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA478A8, "r6");
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22DEEBEC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DF63444();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22DEEBF30(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DF63444();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22DEEBFA0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22DEEBFF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22DEEC028()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22DEEC070()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22DEEC0B8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_22DEEC100()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[14];

  if (v0[15])
  {

    v6 = v0[16];

    v7 = v0[17];
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 18);

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_22DEEC190(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22DF63594();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22DEEC23C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22DF63594();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22DEEC2E0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22DEEC328()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22DEEC360()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22DEEC3A8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22DEEC3F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22DEEC430()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D00, qword_22DF69B40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22DEEC530()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22DEEC578()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22DEEC5B8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22DEEC600()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47E28, &unk_22DF6A120);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
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

uint64_t sub_22DEEC6DC()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E560);
  __swift_project_value_buffer(v0, qword_27DA4E560);
  return sub_22DF63724();
}

void *sub_22DEEC750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v6[14] = a1;
  v6[15] = a2;
  v6[16] = a3;
  return v6;
}

uint64_t sub_22DEEC7A4()
{
  v1[39] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310) - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  v3 = type metadata accessor for CachedSession();
  v1[41] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[42] = swift_task_alloc();
  v5 = sub_22DF63594();
  v1[43] = v5;
  v6 = *(v5 - 8);
  v1[44] = v6;
  v7 = *(v6 + 64) + 15;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DEEC8D8, v0, 0);
}

uint64_t sub_22DEEC8D8()
{
  if (qword_27DA47E40 != -1)
  {
    swift_once();
  }

  v1 = sub_22DF63734();
  v0[47] = __swift_project_value_buffer(v1, qword_27DA4E560);
  v2 = sub_22DF63714();
  v3 = sub_22DF63CF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22DEEA000, v2, v3, "starting submission activity", v4, 2u);
    MEMORY[0x2318DDBE0](v4, -1, -1);
  }

  v5 = v0[39];

  v6 = *(v5 + 112);
  v0[48] = v6;
  if (!v6 || (v7 = v0[39], v8 = *(v7 + 120), (v0[49] = v8) == 0) || (v9 = *(v7 + 128), (v0[50] = v9) == 0))
  {
    v13 = sub_22DF63714();
    v14 = sub_22DF63D24();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22DEEA000, v13, v14, "submission activity skipped due to bad initialization", v15, 2u);
      MEMORY[0x2318DDBE0](v15, -1, -1);
    }

    goto LABEL_13;
  }

  if (sub_22DF63C74())
  {
    v11 = v0[49];
    v10 = v0[50];
    v12 = v0[48];

LABEL_13:
    v17 = v0[45];
    v16 = v0[46];
    v18 = v0[42];
    v19 = v0[40];

    v20 = v0[1];

    return v20();
  }

  v22 = v0[48];
  v23 = v0[46];
  sub_22DF63554();
  v24 = swift_task_alloc();
  v0[51] = v24;
  *v24 = v0;
  v24[1] = sub_22DEECB68;

  return sub_22DF024F8(50);
}

uint64_t sub_22DEECB68(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  *(v4 + 416) = a1;
  *(v4 + 424) = v1;

  v7 = *(v3 + 312);
  if (v1)
  {
    v8 = sub_22DEEE7FC;
  }

  else
  {
    v8 = sub_22DEECC9C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22DEECC9C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v25 = v3;
  v4 = v3[52];
  v5 = v4[2];
  v3[54] = v5;
  if (v5)
  {
    v6 = v3[49];
    v7 = (*v6 + 248) & 0xFFFFFFFFFFFFLL | 0xA469000000000000;
    v3[55] = *(*v6 + 248);
    v3[56] = v7;
    v3[57] = 0;
    if (v4[2])
    {
      v8 = v3[47];
      v9 = v4[4];
      v3[58] = v9;
      v10 = v4[5];
      v3[59] = v10;
      swift_bridgeObjectRetain_n();
      v11 = sub_22DF63714();
      v12 = sub_22DF63D24();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v24 = v14;
        *v13 = 136446210;
        *(v13 + 4) = sub_22DEF0354(v9, v10, &v24);
        _os_log_impl(&dword_22DEEA000, v11, v12, "sending events for client type: %{public}s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x2318DDBE0](v14, -1, -1);
        MEMORY[0x2318DDBE0](v13, -1, -1);
      }

      a2 = v3[49];
      a1 = sub_22DEECED4;
      a3 = 0;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  else
  {
    v16 = v3[49];
    v15 = v3[50];
    v17 = v3[48];
    (*(v3[44] + 8))(v3[46], v3[43]);

    v19 = v3[45];
    v18 = v3[46];
    v20 = v3[42];
    v21 = v3[40];

    v22 = v3[1];

    return v22();
  }
}

uint64_t sub_22DEECED4()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 392);
  v3 = *(v0 + 312);
  (*(v0 + 440))(*(v0 + 464), *(v0 + 472));

  return MEMORY[0x2822009F8](sub_22DEECF48, v3, 0);
}

uint64_t sub_22DEECF48()
{
  v1 = v0[59];
  v2 = v0[48];

  v3 = swift_task_alloc();
  v0[60] = v3;
  *v3 = v0;
  v3[1] = sub_22DEECFF4;
  v5 = v0[58];
  v4 = v0[59];

  return sub_22DF02838(v5, v4, 50);
}

uint64_t sub_22DEECFF4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 480);
  v11 = *v2;
  v3[61] = a1;
  v3[62] = v1;

  if (v1)
  {
    v5 = v3[59];
    v6 = v3[52];
    v7 = v3[39];

    v8 = sub_22DEEE9CC;
    v9 = v7;
  }

  else
  {
    v9 = v3[39];
    v8 = sub_22DEED128;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_22DEED128(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 488);
  v5 = *(v4 + 16);
  *(v3 + 504) = v5;
  if (!v5)
  {
    v14 = *(v3 + 472);
    v15 = *(v3 + 392);

    *(v3 + 640) = sub_22DEF1280() & 1;
    v16 = *v15;
    *(v3 + 624) = *(*v15 + 256);
    *(v3 + 632) = (v16 + 256) & 0xFFFFFFFFFFFFLL | 0x1E4F000000000000;
    a2 = *(v3 + 392);
    a1 = sub_22DEEE4B4;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  *(v3 + 512) = 0;
  if (!*(v4 + 16))
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  *(v3 + 64) = *(v4 + 80);
  *(v3 + 32) = v7;
  *(v3 + 48) = v8;
  *(v3 + 16) = v6;
  sub_22DEF0F4C(v3 + 16, v3 + 72);
  v9 = *(v3 + 384);
  v10 = *sub_22DF144E4();
  v11 = *sub_22DF144D8();
  v12 = swift_task_alloc();
  *(v3 + 520) = v12;
  *v12 = v3;
  v12[1] = sub_22DEED2BC;

  return sub_22DF01F74(v3 + 16, v10, v11);
}

uint64_t sub_22DEED2BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 520);
  v12 = *v2;
  v3[66] = a1;
  v3[67] = v1;

  if (v1)
  {
    v5 = v3[61];
    v6 = v3[59];
    v7 = v3[52];
    v8 = v3[39];

    sub_22DEF0FA8((v3 + 2));

    v9 = sub_22DEEEC7C;
    v10 = v8;
  }

  else
  {
    v10 = v3[39];
    v9 = sub_22DEED410;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_22DEED410()
{
  v1 = *(v0 + 528);
  if (*(v1 + 2))
  {
    v2 = *(v0 + 400);
    v3 = *(v0 + 360);
    v4 = *(v0 + 336);
    v5 = v1[4];
    v6 = *(v1 + 6);
    v7 = *(v1 + 7);
    v8 = *(v1 + 8);
    (*(*(v0 + 352) + 16))(v3, *(v0 + 368), *(v0 + 344));
    sub_22DEF0F4C(v0 + 16, v0 + 128);

    sub_22DF186B4(v0 + 16, v6, v7, v3, v8, v4, v5);
    v9 = *(*v2 + 120);
    v30 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 544) = v11;
    *v11 = v0;
    v11[1] = sub_22DEED758;
    v12 = *(v0 + 328);
    v13 = *(v0 + 336);

    return (v30)(v13, v12, &off_284194200);
  }

  else
  {
    sub_22DEF0FA8(v0 + 16);

    v15 = *(v0 + 512) + 1;
    if (v15 == *(v0 + 504))
    {
      v16 = *(v0 + 488);

      v17 = *(v0 + 384);
      v18 = swift_task_alloc();
      *(v0 + 480) = v18;
      *v18 = v0;
      v18[1] = sub_22DEECFF4;
      v20 = *(v0 + 464);
      v19 = *(v0 + 472);

      return sub_22DF02838(v20, v19, 50);
    }

    else
    {
      *(v0 + 512) = v15;
      v21 = *(v0 + 488);
      if (v15 >= *(v21 + 16))
      {
        __break(1u);
      }

      else
      {
        v22 = v21 + 56 * v15;
        v23 = *(v22 + 32);
        v24 = *(v22 + 48);
        v25 = *(v22 + 64);
        *(v0 + 64) = *(v22 + 80);
        *(v0 + 32) = v24;
        *(v0 + 48) = v25;
        *(v0 + 16) = v23;
        sub_22DEF0F4C(v0 + 16, v0 + 72);
        v26 = *(v0 + 384);
        v27 = *sub_22DF144E4();
        v28 = *sub_22DF144D8();
        v29 = swift_task_alloc();
        *(v0 + 520) = v29;
        *v29 = v0;
        v29[1] = sub_22DEED2BC;

        return sub_22DF01F74(v0 + 16, v27, v28);
      }
    }
  }

  return result;
}

uint64_t sub_22DEED758(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 544);
  v7 = *v3;
  v5[69] = a1;
  v5[70] = a2;
  v5[71] = v2;

  v8 = v4[39];
  if (v2)
  {
    v9 = sub_22DEEEF2C;
  }

  else
  {
    v9 = sub_22DEED894;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22DEED894()
{
  v71 = v0;
  if (v0[69])
  {
    v1 = v0[70];
    v2 = *(v0[66] + 16);
    v3 = MEMORY[0x277D84F90];
    if (v2)
    {
      v65 = v0[70];
      v66 = v0[69];
      v0[37] = MEMORY[0x277D84F90];
      sub_22DEF0AD0(0, v2, 0);
      v0 = v69;
      v4 = 0;
      v3 = v69[37];
      do
      {
        v5 = (v0[66] + v4);
        v7 = v5[5];
        v6 = v5[6];
        v8 = v5[7];
        v9 = v5[8];
        v0[37] = v3;
        v11 = v3[2];
        v10 = v3[3];
        v12 = v11 + 1;

        if (v11 >= v10 >> 1)
        {
          sub_22DEF0AD0((v10 > 1), v11 + 1, 1);
          v3 = v69[37];
        }

        v3[2] = v12;
        v13 = &v3[4 * v11];
        v13[4] = v7;
        v13[5] = v6;
        v13[6] = v8;
        v13[7] = v9;
        v4 += 40;
        --v2;
        v0 = v69;
      }

      while (v2);
    }

    else
    {
      v12 = *(MEMORY[0x277D84F90] + 16);
      if (!v12)
      {
        v30 = MEMORY[0x277D84F90];

LABEL_17:
        v69[72] = v30;
        ObjectType = swift_getObjectType();
        v39 = *(v1 + 8);
        v68 = (v39 + *v39);
        v40 = v39[1];
        v41 = swift_task_alloc();
        v69[73] = v41;
        *v41 = v69;
        v41[1] = sub_22DEEDF14;

        return v68(v30, ObjectType, v1);
      }

      v65 = v0[70];
      v67 = v0[69];
    }

    v0[38] = MEMORY[0x277D84F90];
    sub_22DEF0AB0(0, v12, 0);
    v30 = v0[38];
    v31 = v3 + 7;
    do
    {
      v32 = *(v31 - 2);
      v33 = *(v31 - 1);
      v34 = *v31;
      v69[38] = v30;
      v35 = *(v30 + 16);
      v36 = *(v30 + 24);

      if (v35 >= v36 >> 1)
      {
        sub_22DEF0AB0((v36 > 1), v35 + 1, 1);
        v30 = v69[38];
      }

      *(v30 + 16) = v35 + 1;
      v37 = (v30 + 24 * v35);
      v37[4] = v32;
      v37[5] = v33;
      v37[6] = v34;
      v31 += 4;
      --v12;
    }

    while (v12);

    v1 = v65;
    goto LABEL_17;
  }

  sub_22DEF105C();
  v14 = swift_allocError();
  swift_willThrow();
  v15 = v0[59];
  v16 = v0[47];
  sub_22DEF0FFC(v0[42], type metadata accessor for CachedSession);

  v17 = v14;
  v18 = sub_22DF63714();
  v19 = sub_22DF63D04();

  if (os_log_type_enabled(v18, v19))
  {
    v21 = v0[58];
    v20 = v0[59];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v70[0] = v23;
    *v22 = 136446466;
    *(v22 + 4) = sub_22DEF0354(v21, v20, v70);
    *(v22 + 12) = 2082;
    swift_getErrorValue();
    v25 = v0[29];
    v24 = v0[30];
    v26 = v0[31];
    v27 = sub_22DF64244();
    v29 = sub_22DEF0354(v27, v28, v70);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_22DEEA000, v18, v19, "failed to send sendOneMessage events for clientType %{public}s: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v23, -1, -1);
    MEMORY[0x2318DDBE0](v22, -1, -1);
  }

  else
  {
  }

  v43 = *(v0[66] + 16);
  v44 = v0;
  if (v43)
  {
    v0[33] = MEMORY[0x277D84F90];
    sub_22DEF0AD0(0, v43, 0);
    v44 = v69;
    v45 = 0;
    v46 = v69[33];
    do
    {
      v47 = (v44[66] + v45);
      v48 = v47[5];
      v49 = v47[6];
      v50 = v47[7];
      v51 = v47[8];
      v44[33] = v46;
      v53 = *(v46 + 16);
      v52 = *(v46 + 24);

      if (v53 >= v52 >> 1)
      {
        sub_22DEF0AD0((v52 > 1), v53 + 1, 1);
        v46 = v69[33];
      }

      *(v46 + 16) = v53 + 1;
      v54 = (v46 + 32 * v53);
      v54[4] = v48;
      v54[5] = v49;
      v54[6] = v50;
      v54[7] = v51;
      v45 += 40;
      --v43;
      v44 = v69;
    }

    while (v43);
    v55 = v69[66];

    v56 = *(v46 + 16);
    if (v56)
    {
      goto LABEL_27;
    }
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
    v56 = *(MEMORY[0x277D84F90] + 16);
    if (v56)
    {
LABEL_27:
      v44[34] = MEMORY[0x277D84F90];
      sub_22DEF0A90(0, v56, 0);
      v44 = v69;
      v57 = v69[34];
      v58 = *(v57 + 16);
      v59 = 32;
      do
      {
        v60 = *(v46 + v59);
        v44[34] = v57;
        v61 = *(v57 + 24);
        if (v58 >= v61 >> 1)
        {
          sub_22DEF0A90((v61 > 1), v58 + 1, 1);
          v44 = v69;
          v57 = v69[34];
        }

        *(v57 + 16) = v58 + 1;
        *(v57 + 8 * v58 + 32) = v60;
        v59 += 32;
        ++v58;
        --v56;
      }

      while (v56);

      goto LABEL_34;
    }
  }

  v57 = MEMORY[0x277D84F90];
LABEL_34:
  v44[75] = v57;
  v62 = v44;
  v63 = v44[48];
  v64 = swift_task_alloc();
  v62[76] = v64;
  *v64 = v62;
  v64[1] = sub_22DEEE2C4;

  return sub_22DF0239C(v57);
}

uint64_t sub_22DEEDF14()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v4 = *v1;
  *(*v1 + 592) = v0;

  v5 = *(v2 + 576);
  v6 = *(v2 + 312);

  if (v0)
  {
    v7 = sub_22DEEF2D4;
  }

  else
  {
    v7 = sub_22DEEE05C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22DEEE05C()
{
  v1 = v0;
  v2 = v0[69];
  v3 = v0[42];
  swift_unknownObjectRelease();
  sub_22DEF0FFC(v3, type metadata accessor for CachedSession);
  v4 = *(v0[66] + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v0[33] = MEMORY[0x277D84F90];
    sub_22DEF0AD0(0, v4, 0);
    v6 = 0;
    v26 = v0;
    v7 = v0[33];
    do
    {
      v8 = (v26[66] + v6);
      v10 = v8[5];
      v9 = v8[6];
      v11 = v8[7];
      v12 = v8[8];
      v26[33] = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);

      if (v14 >= v13 >> 1)
      {
        sub_22DEF0AD0((v13 > 1), v14 + 1, 1);
        v7 = v26[33];
      }

      *(v7 + 16) = v14 + 1;
      v15 = (v7 + 32 * v14);
      v15[4] = v10;
      v15[5] = v9;
      v15[6] = v11;
      v15[7] = v12;
      v6 += 40;
      --v4;
    }

    while (v4);
    v1 = v26;
    v16 = v26[66];

    v5 = MEMORY[0x277D84F90];
    v17 = *(v7 + 16);
    if (v17)
    {
      goto LABEL_7;
    }

LABEL_13:

    v18 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v7 = MEMORY[0x277D84F90];
  v17 = *(MEMORY[0x277D84F90] + 16);
  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_7:
  v1[34] = v5;
  sub_22DEF0A90(0, v17, 0);
  v18 = v1[34];
  v19 = *(v18 + 16);
  v20 = 32;
  do
  {
    v21 = *(v7 + v20);
    v1[34] = v18;
    v22 = *(v18 + 24);
    if (v19 >= v22 >> 1)
    {
      sub_22DEF0A90((v22 > 1), v19 + 1, 1);
      v18 = v1[34];
    }

    *(v18 + 16) = v19 + 1;
    *(v18 + 8 * v19 + 32) = v21;
    v20 += 32;
    ++v19;
    --v17;
  }

  while (v17);

LABEL_14:
  v1[75] = v18;
  v23 = v1[48];
  v24 = swift_task_alloc();
  v1[76] = v24;
  *v24 = v1;
  v24[1] = sub_22DEEE2C4;

  return sub_22DF0239C(v18);
}

uint64_t sub_22DEEE2C4()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v8 = *v1;
  *(*v1 + 616) = v0;

  v4 = *(v2 + 600);
  if (v0)
  {
    v5 = *(v2 + 312);

    sub_22DEF0FA8(v2 + 16);
    v6 = sub_22DEEF684;
  }

  else
  {
    v5 = *(v2 + 312);

    v6 = sub_22DEEE3F8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22DEEE3F8()
{
  v1 = *(v0 + 384);
  v2 = *sub_22DF144E4();
  v3 = *sub_22DF144D8();
  v4 = swift_task_alloc();
  *(v0 + 520) = v4;
  *v4 = v0;
  v4[1] = sub_22DEED2BC;

  return sub_22DF01F74(v0 + 16, v2, v3);
}

uint64_t sub_22DEEE4B4()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 392);
  v3 = *(v0 + 312);
  (*(v0 + 624))(*(v0 + 464), *(v0 + 472), *(v0 + 640));

  return MEMORY[0x2822009F8](sub_22DEEE544, v3, 0);
}

uint64_t sub_22DEEE544(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v31 = v3;
  v4 = v3[57] + 1;
  if (v4 == v3[54])
  {
    v5 = v3[52];
    v6 = v3[46];
    v7 = v3[43];
    v8 = v3[44];

    (*(v8 + 8))(v6, v7);
    if (sub_22DF63C74())
    {
      v10 = v3[49];
      v9 = v3[50];
      v11 = v3[48];

      v13 = v3[45];
      v12 = v3[46];
      v14 = v3[42];
      v15 = v3[40];

      v16 = v3[1];

      return v16();
    }

    else
    {
      v27 = v3[48];
      v28 = v3[46];
      sub_22DF63554();
      v29 = swift_task_alloc();
      v3[51] = v29;
      *v29 = v3;
      v29[1] = sub_22DEECB68;

      return sub_22DF024F8(50);
    }
  }

  else
  {
    v3[57] = v4;
    v18 = v3[52];
    if (v4 >= *(v18 + 16))
    {
      __break(1u);
    }

    else
    {
      v19 = v3[47];
      v20 = v18 + 16 * v4;
      v21 = *(v20 + 32);
      v3[58] = v21;
      v22 = *(v20 + 40);
      v3[59] = v22;
      swift_bridgeObjectRetain_n();
      v23 = sub_22DF63714();
      v24 = sub_22DF63D24();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v30 = v26;
        *v25 = 136446210;
        *(v25 + 4) = sub_22DEF0354(v21, v22, &v30);
        _os_log_impl(&dword_22DEEA000, v23, v24, "sending events for client type: %{public}s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x2318DDBE0](v26, -1, -1);
        MEMORY[0x2318DDBE0](v25, -1, -1);
      }

      a2 = v3[49];
      a1 = sub_22DEECED4;
      a3 = 0;
    }

    return MEMORY[0x2822009F8](a1, a2, a3);
  }
}

uint64_t sub_22DEEE7FC()
{
  v24 = v0;
  v1 = v0[53];
  v2 = v0[47];
  (*(v0[44] + 8))(v0[46], v0[43]);
  v3 = v1;
  v4 = sub_22DF63714();
  v5 = sub_22DF63D04();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[23];
    v8 = v0[24];
    v10 = v0[25];
    v11 = sub_22DF64244();
    v13 = sub_22DEF0354(v11, v12, &v23);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_22DEEA000, v4, v5, "error running sendOneMessage submission: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2318DDBE0](v7, -1, -1);
    MEMORY[0x2318DDBE0](v6, -1, -1);
  }

  else
  {
  }

  v15 = v0[49];
  v14 = v0[50];
  v16 = v0[48];

  v18 = v0[45];
  v17 = v0[46];
  v19 = v0[42];
  v20 = v0[40];

  v21 = v0[1];

  return v21();
}

uint64_t sub_22DEEE9CC()
{
  v30 = v0;
  v1 = v0[62];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[47];
  (*(v0[44] + 8))(v0[46], v0[43]);
  v5 = v1;
  v6 = sub_22DF63714();
  v7 = sub_22DF63D04();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[23];
    v10 = v0[24];
    v12 = v0[25];
    v13 = sub_22DF64244();
    v15 = sub_22DEF0354(v13, v14, &v29);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_22DEEA000, v6, v7, "error running sendOneMessage submission: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2318DDBE0](v9, -1, -1);
    MEMORY[0x2318DDBE0](v8, -1, -1);
  }

  else
  {
  }

  v16 = v0[49];
  v17 = v0[50];
  v18 = v0[48];
  if (v2)
  {
    v19 = v0[40];
    v20 = sub_22DF63C34();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v16;
    v21[5] = v3;
    v21[6] = v2;

    sub_22DEEFE64(0, 0, v19, &unk_22DF65320, v21);
  }

  else
  {
    v22 = v0[50];
  }

  v24 = v0[45];
  v23 = v0[46];
  v25 = v0[42];
  v26 = v0[40];

  v27 = v0[1];

  return v27();
}

uint64_t sub_22DEEEC7C()
{
  v30 = v0;
  v1 = v0[67];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[47];
  (*(v0[44] + 8))(v0[46], v0[43]);
  v5 = v1;
  v6 = sub_22DF63714();
  v7 = sub_22DF63D04();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[23];
    v10 = v0[24];
    v12 = v0[25];
    v13 = sub_22DF64244();
    v15 = sub_22DEF0354(v13, v14, &v29);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_22DEEA000, v6, v7, "error running sendOneMessage submission: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2318DDBE0](v9, -1, -1);
    MEMORY[0x2318DDBE0](v8, -1, -1);
  }

  else
  {
  }

  v16 = v0[49];
  v17 = v0[50];
  v18 = v0[48];
  if (v2)
  {
    v19 = v0[40];
    v20 = sub_22DF63C34();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v16;
    v21[5] = v3;
    v21[6] = v2;

    sub_22DEEFE64(0, 0, v19, &unk_22DF65320, v21);
  }

  else
  {
    v22 = v0[50];
  }

  v24 = v0[45];
  v23 = v0[46];
  v25 = v0[42];
  v26 = v0[40];

  v27 = v0[1];

  return v27();
}

uint64_t sub_22DEEEF2C()
{
  v42 = v0;
  v1 = v0;
  v2 = v0[71];
  v3 = v0[59];
  v4 = v0[47];
  sub_22DEF0FFC(v0[42], type metadata accessor for CachedSession);

  v5 = v2;
  v6 = sub_22DF63714();
  v7 = sub_22DF63D04();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[58];
    v8 = v0[59];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v41 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_22DEF0354(v9, v8, &v41);
    *(v10 + 12) = 2082;
    swift_getErrorValue();
    v13 = v0[29];
    v12 = v0[30];
    v14 = v0[31];
    v15 = sub_22DF64244();
    v17 = sub_22DEF0354(v15, v16, &v41);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_22DEEA000, v6, v7, "failed to send sendOneMessage events for clientType %{public}s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v11, -1, -1);
    MEMORY[0x2318DDBE0](v10, -1, -1);
  }

  else
  {
  }

  v18 = *(v0[66] + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v0[33] = MEMORY[0x277D84F90];
    sub_22DEF0AD0(0, v18, 0);
    v20 = 0;
    v40 = v0;
    v21 = v0[33];
    do
    {
      v22 = (v40[66] + v20);
      v24 = v22[5];
      v23 = v22[6];
      v25 = v22[7];
      v26 = v22[8];
      v40[33] = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);

      if (v28 >= v27 >> 1)
      {
        sub_22DEF0AD0((v27 > 1), v28 + 1, 1);
        v21 = v40[33];
      }

      *(v21 + 16) = v28 + 1;
      v29 = (v21 + 32 * v28);
      v29[4] = v24;
      v29[5] = v23;
      v29[6] = v25;
      v29[7] = v26;
      v20 += 40;
      --v18;
    }

    while (v18);
    v1 = v40;
    v30 = v40[66];

    v19 = MEMORY[0x277D84F90];
    v31 = *(v21 + 16);
    if (v31)
    {
      goto LABEL_10;
    }

LABEL_16:

    v32 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v21 = MEMORY[0x277D84F90];
  v31 = *(MEMORY[0x277D84F90] + 16);
  if (!v31)
  {
    goto LABEL_16;
  }

LABEL_10:
  v1[34] = v19;
  sub_22DEF0A90(0, v31, 0);
  v32 = v1[34];
  v33 = *(v32 + 16);
  v34 = 32;
  do
  {
    v35 = *(v21 + v34);
    v1[34] = v32;
    v36 = *(v32 + 24);
    if (v33 >= v36 >> 1)
    {
      sub_22DEF0A90((v36 > 1), v33 + 1, 1);
      v32 = v1[34];
    }

    *(v32 + 16) = v33 + 1;
    *(v32 + 8 * v33 + 32) = v35;
    v34 += 32;
    ++v33;
    --v31;
  }

  while (v31);

LABEL_17:
  v1[75] = v32;
  v37 = v1[48];
  v38 = swift_task_alloc();
  v1[76] = v38;
  *v38 = v1;
  v38[1] = sub_22DEEE2C4;

  return sub_22DF0239C(v32);
}

uint64_t sub_22DEEF2D4()
{
  v43 = v0;
  v1 = v0;
  v2 = v0[69];
  swift_unknownObjectRelease();
  v3 = v0[74];
  v4 = v0[59];
  v5 = v0[47];
  sub_22DEF0FFC(v0[42], type metadata accessor for CachedSession);

  v6 = v3;
  v7 = sub_22DF63714();
  v8 = sub_22DF63D04();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[58];
    v9 = v0[59];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v42 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_22DEF0354(v10, v9, &v42);
    *(v11 + 12) = 2082;
    swift_getErrorValue();
    v14 = v0[29];
    v13 = v0[30];
    v15 = v0[31];
    v16 = sub_22DF64244();
    v18 = sub_22DEF0354(v16, v17, &v42);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_22DEEA000, v7, v8, "failed to send sendOneMessage events for clientType %{public}s: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v12, -1, -1);
    MEMORY[0x2318DDBE0](v11, -1, -1);
  }

  else
  {
  }

  v19 = *(v0[66] + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v0[33] = MEMORY[0x277D84F90];
    sub_22DEF0AD0(0, v19, 0);
    v21 = 0;
    v41 = v0;
    v22 = v0[33];
    do
    {
      v23 = (v41[66] + v21);
      v25 = v23[5];
      v24 = v23[6];
      v26 = v23[7];
      v27 = v23[8];
      v41[33] = v22;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);

      if (v29 >= v28 >> 1)
      {
        sub_22DEF0AD0((v28 > 1), v29 + 1, 1);
        v22 = v41[33];
      }

      *(v22 + 16) = v29 + 1;
      v30 = (v22 + 32 * v29);
      v30[4] = v25;
      v30[5] = v24;
      v30[6] = v26;
      v30[7] = v27;
      v21 += 40;
      --v19;
    }

    while (v19);
    v1 = v41;
    v31 = v41[66];

    v20 = MEMORY[0x277D84F90];
    v32 = *(v22 + 16);
    if (v32)
    {
      goto LABEL_10;
    }

LABEL_16:

    v33 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v22 = MEMORY[0x277D84F90];
  v32 = *(MEMORY[0x277D84F90] + 16);
  if (!v32)
  {
    goto LABEL_16;
  }

LABEL_10:
  v1[34] = v20;
  sub_22DEF0A90(0, v32, 0);
  v33 = v1[34];
  v34 = *(v33 + 16);
  v35 = 32;
  do
  {
    v36 = *(v22 + v35);
    v1[34] = v33;
    v37 = *(v33 + 24);
    if (v34 >= v37 >> 1)
    {
      sub_22DEF0A90((v37 > 1), v34 + 1, 1);
      v33 = v1[34];
    }

    *(v33 + 16) = v34 + 1;
    *(v33 + 8 * v34 + 32) = v36;
    v35 += 32;
    ++v34;
    --v32;
  }

  while (v32);

LABEL_17:
  v1[75] = v33;
  v38 = v1[48];
  v39 = swift_task_alloc();
  v1[76] = v39;
  *v39 = v1;
  v39[1] = sub_22DEEE2C4;

  return sub_22DF0239C(v33);
}

void sub_22DEEF684()
{
  v35 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 472);
  v3 = *(v0 + 376);

  v4 = v1;
  v5 = sub_22DF63714();
  v6 = sub_22DF63D04();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 616);
    v9 = *(v0 + 464);
    v8 = *(v0 + 472);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_22DEF0354(v9, v8, &v34);
    *(v10 + 12) = 2082;
    swift_getErrorValue();
    v13 = *(v0 + 208);
    v12 = *(v0 + 216);
    v14 = *(v0 + 224);
    v15 = sub_22DF64244();
    v17 = sub_22DEF0354(v15, v16, &v34);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_22DEEA000, v5, v6, "failed to remove sendOneMessage events for clientType %{public}s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v11, -1, -1);
    MEMORY[0x2318DDBE0](v10, -1, -1);
  }

  else
  {
    v18 = *(v0 + 616);
  }

  v19 = *(v0 + 512) + 1;
  if (v19 == *(v0 + 504))
  {
    v20 = *(v0 + 488);

    v21 = *(v0 + 384);
    v22 = swift_task_alloc();
    *(v0 + 480) = v22;
    *v22 = v0;
    v22[1] = sub_22DEECFF4;
    v24 = *(v0 + 464);
    v23 = *(v0 + 472);

    sub_22DF02838(v24, v23, 50);
  }

  else
  {
    *(v0 + 512) = v19;
    v25 = *(v0 + 488);
    if (v19 >= *(v25 + 16))
    {
      __break(1u);
    }

    else
    {
      v26 = v25 + 56 * v19;
      v27 = *(v26 + 32);
      v28 = *(v26 + 48);
      v29 = *(v26 + 64);
      *(v0 + 64) = *(v26 + 80);
      *(v0 + 32) = v28;
      *(v0 + 48) = v29;
      *(v0 + 16) = v27;
      sub_22DEF0F4C(v0 + 16, v0 + 72);
      v30 = *(v0 + 384);
      v31 = *sub_22DF144E4();
      v32 = *sub_22DF144D8();
      v33 = swift_task_alloc();
      *(v0 + 520) = v33;
      *v33 = v0;
      v33[1] = sub_22DEED2BC;

      sub_22DF01F74(v0 + 16, v31, v32);
    }
  }
}

uint64_t sub_22DEEF98C()
{
  sub_22DF642A4();
  MEMORY[0x2318DD240](0);
  return sub_22DF642D4();
}

uint64_t sub_22DEEF9F8()
{
  sub_22DF642A4();
  MEMORY[0x2318DD240](0);
  return sub_22DF642D4();
}

uint64_t sub_22DEEFA70()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DEEFAC4()
{
  v2 = *(*v0 + 120);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22DEEFBD4;

  return v6();
}

uint64_t sub_22DEEFBD4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22DEEFCC8()
{
  v0 = SubmitEventsActivityConfig.activityFlags.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = *v0;
}

uint64_t sub_22DEEFD0C()
{
  v0 = SubmitEventsActivityConfig.identifier.unsafeMutableAddressor();
  v1 = *v0;
  v2 = *(v0 + 1);

  return v1;
}

uint64_t sub_22DEEFD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22DEEFD64, 0, 0);
}

uint64_t sub_22DEEFD64()
{
  v1 = *(v0 + 16);
  *(v0 + 56) = sub_22DEF1280() & 1;
  v2 = *v1 + 256;
  *(v0 + 40) = *v2;
  *(v0 + 48) = v2 & 0xFFFFFFFFFFFFLL | 0x1E4F000000000000;

  return MEMORY[0x2822009F8](sub_22DEEFDF8, v1, 0);
}

uint64_t sub_22DEEFDF8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  (*(v0 + 40))(*(v0 + 24), *(v0 + 32), *(v0 + 56));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22DEEFE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_22DEF12FC(a3, v27 - v11, &qword_27DA47460, &qword_22DF65310);
  v13 = sub_22DF63C34();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22DEF1364(v12, &qword_27DA47460, &qword_22DF65310);
  }

  else
  {
    sub_22DF63C24();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22DF63BE4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22DF63A34() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_22DEF1364(a3, &qword_27DA47460, &qword_22DF65310);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22DEF1364(a3, &qword_27DA47460, &qword_22DF65310);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_22DEF0164(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22DEF025C;

  return v7(a1);
}

uint64_t sub_22DEF025C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22DEF0354(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22DEF0420(v11, 0, 0, 1, a1, a2);
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
    sub_22DEF12A0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22DEF0420(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22DEF052C(a5, a6);
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
    result = sub_22DF63F84();
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

uint64_t sub_22DEF052C(uint64_t a1, unint64_t a2)
{
  v4 = sub_22DEF0578(a1, a2);
  sub_22DEF06A8(&unk_284192D38);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22DEF0578(uint64_t a1, unint64_t a2)
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

  v6 = sub_22DEF0794(v5, 0);
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

  result = sub_22DF63F84();
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
        v10 = sub_22DF63AD4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22DEF0794(v10, 0);
        result = sub_22DF63F14();
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

uint64_t sub_22DEF06A8(uint64_t result)
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

  result = sub_22DEF0808(result, v12, 1, v3);
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

void *sub_22DEF0794(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47490, &qword_22DF65BE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22DEF0808(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47490, &qword_22DF65BE0);
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

unint64_t sub_22DEF08FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22DF642A4();
  sub_22DF63A54();
  v6 = sub_22DF642D4();

  return sub_22DEF09D8(a1, a2, v6);
}

uint64_t sub_22DEF0974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEventValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22DEF09D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22DF64184())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_22DEF0A90(char *a1, int64_t a2, char a3)
{
  result = sub_22DEF0AF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22DEF0AB0(char *a1, int64_t a2, char a3)
{
  result = sub_22DEF0BF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22DEF0AD0(char *a1, int64_t a2, char a3)
{
  result = sub_22DEF0D14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22DEF0AF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA472A0, &qword_22DF654C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_22DEF0BF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47298, &qword_22DF654C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22DEF0D14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA472A8, &unk_22DF654D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22DEF0E58()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22DEEFBD4;

  return sub_22DEEFD40(v5, v6, v7, v2, v3, v4);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_22DEF0FFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22DEF105C()
{
  result = qword_27DA47280;
  if (!qword_27DA47280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47280);
  }

  return result;
}

unint64_t sub_22DEF10B4()
{
  result = qword_27DA47288;
  if (!qword_27DA47288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47288);
  }

  return result;
}

unint64_t sub_22DEF110C(uint64_t a1)
{
  result = sub_22DEF1134();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22DEF1134()
{
  result = qword_27DA47290;
  if (!qword_27DA47290)
  {
    type metadata accessor for SubmitEventsActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47290);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubmitEventsActivity.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SubmitEventsActivity.Error(_WORD *result, int a2, int a3)
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

uint64_t sub_22DEF12A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22DEF12FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22DEF1364(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22DEF13C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22DEF1598;

  return sub_22DEF0164(a1, v5);
}

uint64_t sub_22DEF147C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22DEEFBD4;

  return sub_22DEF0164(a1, v5);
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

uint64_t sub_22DEF15C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x79745F746E657665 && a2 == 0xEB00000000736570)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22DF64184();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22DEF1668(uint64_t a1)
{
  v2 = sub_22DEF22F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DEF16A4(uint64_t a1)
{
  v2 = sub_22DEF22F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22DEF16E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22DEF189C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_22DEF1734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x675F747069726373 && a2 == 0xED00007370756F72)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22DF64184();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22DEF17C4(uint64_t a1)
{
  v2 = sub_22DEF229C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DEF1800(uint64_t a1)
{
  v2 = sub_22DEF229C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_22DEF183C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_22DEF1B0C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22DEF1868@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22DEF1CBC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_22DEF189C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47310, &qword_22DF658D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14[-1] - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DEF22F0();
  sub_22DF64304();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v8;
  }

  v15 = v4;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_22DF642E4();
  v11 = *(v10 + 16);
  if (v11)
  {
    sub_22DEF2388(v10 + 40 * v11 - 8, v14);

    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v8 = sub_22DF64344();
    __swift_destroy_boxed_opaque_existential_0(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47318, &qword_22DF658E0);
    sub_22DEF2488(&qword_27DA47320, &qword_27DA47318, &qword_22DF658E0, sub_22DEF2504);
    sub_22DF640E4();
    (*(v15 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v8;
  }

  __break(1u);
  return result;
}

void *sub_22DEF1B0C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA472F0, "<K");
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DEF229C();
  sub_22DF64304();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA472F8, &qword_22DF658D0);
    sub_22DEF2488(&qword_27DA47300, &qword_27DA472F8, &qword_22DF658D0, sub_22DEF2434);
    sub_22DF640E4();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

uint64_t sub_22DEF1CBC(uint64_t *a1)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_22DF642E4();
  v5 = *(v4 + 16);
  if (v5)
  {
    sub_22DEF2388(v4 + 40 * v5 - 8, v15);

    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v6 = sub_22DF64344();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0(v15);
    v9 = v6 == 0x6F736A5F70747468 && v8 == 0xE90000000000006ELL;
    if (v9 || (sub_22DF64184() & 1) != 0)
    {

      sub_22DEF2388(a1, v15);
      v10 = sub_22DEF189C(v15);
      if (v1)
      {
        return __swift_destroy_boxed_opaque_existential_0(a1);
      }

      v12 = v10;
      goto LABEL_10;
    }

    if (v6 == 0x6C61636F6CLL && v8 == 0xE500000000000000)
    {
    }

    else
    {
      v13 = sub_22DF64184();

      if ((v13 & 1) == 0)
      {
        v12 = 0;
LABEL_10:
        __swift_destroy_boxed_opaque_existential_0(a1);
        return v12;
      }
    }

    sub_22DEF2388(a1, v15);
    v14 = sub_22DEF1B0C(v15);
    if (v1)
    {
      return __swift_destroy_boxed_opaque_existential_0(a1);
    }

    v12 = v14;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_22DEF1EC0()
{
  result = qword_27DA472B0;
  if (!qword_27DA472B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA472B0);
  }

  return result;
}

unint64_t sub_22DEF1F18()
{
  result = qword_27DA472B8;
  if (!qword_27DA472B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA472B8);
  }

  return result;
}

unint64_t sub_22DEF1F70()
{
  result = qword_27DA472C0;
  if (!qword_27DA472C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA472C0);
  }

  return result;
}

unint64_t sub_22DEF1FC8()
{
  result = qword_27DA472C8;
  if (!qword_27DA472C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA472C8);
  }

  return result;
}

unint64_t sub_22DEF2020()
{
  result = qword_27DA472D0;
  if (!qword_27DA472D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA472D0);
  }

  return result;
}

unint64_t sub_22DEF2078()
{
  result = qword_27DA472D8;
  if (!qword_27DA472D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA472D8);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22DEF20E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22DEF2128(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19CloudTelemetryTools22StorebagSectionBackendO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_22DEF21E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_22DEF2228(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_22DEF2270(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_22DEF229C()
{
  result = qword_27DA472E0;
  if (!qword_27DA472E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA472E0);
  }

  return result;
}

unint64_t sub_22DEF22F0()
{
  result = qword_27DA472E8;
  if (!qword_27DA472E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA472E8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22DEF2388(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

unint64_t sub_22DEF2434()
{
  result = qword_27DA47308;
  if (!qword_27DA47308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47308);
  }

  return result;
}

uint64_t sub_22DEF2488(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22DEF2504()
{
  result = qword_27DA47328;
  if (!qword_27DA47328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47328);
  }

  return result;
}

uint64_t sub_22DEF2570(uint64_t a1, const char *a2)
{
  v4 = sub_22DF630C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22DF63734();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22DF2E560();
  (*(v10 + 16))(v13, v14, v9);
  (*(v5 + 16))(v8, a1, v4);
  v15 = sub_22DF63714();
  v16 = sub_22DF63D14();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = a2;
    v18 = v17;
    v26 = swift_slowAlloc();
    v28 = v26;
    *v18 = 136446210;
    sub_22DEF9E90(&unk_27DA47330, MEMORY[0x277CC8620]);
    v19 = sub_22DF64244();
    v25 = v9;
    v21 = v20;
    (*(v5 + 8))(v8, v4);
    v22 = sub_22DEF0354(v19, v21, &v28);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_22DEEA000, v15, v16, v27, v18, 0xCu);
    v23 = v26;
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x2318DDBE0](v23, -1, -1);
    MEMORY[0x2318DDBE0](v18, -1, -1);

    return (*(v10 + 8))(v13, v25);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_22DEF2864(void *a1)
{
  v2 = sub_22DF63734();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22DF2E560();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_22DF63714();
  v10 = sub_22DF63D14();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = sub_22DF64244();
    v15 = sub_22DEF0354(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_22DEEA000, v9, v10, "unable to access transparency log (UNKNOWN): %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x2318DDBE0](v12, -1, -1);
    MEMORY[0x2318DDBE0](v11, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22DEF2A68()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E578);
  __swift_project_value_buffer(v0, qword_27DA4E578);
  return sub_22DF63724();
}

uint64_t sub_22DEF2AE8@<X0>(uint64_t a1@<X8>)
{
  v152 = a1;
  v170[5] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47468, &qword_22DF697B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v148 = &v142 - v4;
  v147 = sub_22DF632E4();
  v146 = *(v147 - 8);
  v5 = *(v146 + 64);
  MEMORY[0x28223BE20](v147);
  v151 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_22DF63594();
  v150 = *(v149 - 8);
  v7 = *(v150 + 64);
  v8 = MEMORY[0x28223BE20](v149);
  v144 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v145 = &v142 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47410, &qword_22DF65B80);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v153 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v155 = &v142 - v15;
  v16 = sub_22DF63444();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v143 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v156 = &v142 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v164 = &v142 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v158 = &v142 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v142 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v142 - v30;
  v159 = objc_opt_self();
  v32 = [v159 defaultManager];
  v33 = OBJC_IVAR____TtC19CloudTelemetryTools15TransparencyLog_rootLogsURL;
  swift_beginAccess();
  v169 = *(v17 + 16);
  v169(v31, v1 + v33, v16);
  v34 = sub_22DF63394();
  v165 = v17;
  v35 = *(v17 + 8);
  v168 = (v17 + 8);
  v167 = v35;
  v35(v31, v16);
  type metadata accessor for URLResourceKey();
  v36 = sub_22DF63B74();
  v170[0] = 0;
  v37 = [v32 contentsOfDirectoryAtURL:v34 includingPropertiesForKeys:v36 options:0 error:v170];

  v38 = v170[0];
  if (!v37)
  {
    v51 = v170[0];
    sub_22DF63334();

    result = swift_willThrow();
    goto LABEL_38;
  }

  v39 = sub_22DF63B84();
  v40 = v38;

  v41 = *(v39 + 16);
  v160 = v16;
  v157 = (v17 + 16);
  v163 = v41;
  if (v41)
  {
    v42 = 0;
    *&v162 = "yyyy-MM-dd-HH-mm-ss";
    v161 = v165 + 4;
    v166 = MEMORY[0x277D84F90];
    while (v42 < *(v39 + 16))
    {
      v43 = (*(v165 + 80) + 32) & ~*(v165 + 80);
      v17 = v165[9];
      v169(v29, v39 + v43 + v17 * v42, v16);
      sub_22DF63374();
      v44 = sub_22DEF3D7C();

      if (v44)
      {
        v45 = *v161;
        (*v161)(v164, v29, v16);
        v46 = v166;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v170[0] = v46;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22DEF97D4(0, v46[2] + 1, 1);
          v46 = v170[0];
        }

        v49 = v46[2];
        v48 = v46[3];
        if (v49 >= v48 >> 1)
        {
          sub_22DEF97D4(v48 > 1, v49 + 1, 1);
          v46 = v170[0];
        }

        v46[2] = v49 + 1;
        v166 = v46;
        v50 = v46 + v43 + v49 * v17;
        v16 = v160;
        v45(v50, v164, v160);
      }

      else
      {
        v167(v29, v16);
      }

      if (v163 == ++v42)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_55:
    v166 = sub_22DEF99CC(v166);
    goto LABEL_16;
  }

  v166 = MEMORY[0x277D84F90];
LABEL_15:

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_16:
  v53 = v165;
  v54 = v154;
  v55 = v166;
  v56 = v166[2];
  v170[0] = v166 + ((*(v165 + 80) + 32) & ~*(v165 + 80));
  v57 = v170[0];
  v170[1] = v56;
  sub_22DEF7FC0(v170);
  v58 = v54;
  v59 = sub_22DEF3ED8(1uLL, v55);
  v63 = ((v62 >> 1) - v61);
  v154 = v57;
  v161 = v59;
  if (v62 >> 1 == v61)
  {

    goto LABEL_18;
  }

  if ((v62 >> 1) > v61)
  {
    v70 = v60;
    v71 = v61;
    v72 = v53[9];

    v73 = v70 + v71 * v72;
    *&v74 = 136446210;
    v162 = v74;
    do
    {
      v76 = v158;
      v169(v158, v73, v16);
      v77 = [v159 defaultManager];
      v78 = sub_22DF63394();
      v167(v76, v16);
      v170[0] = 0;
      LODWORD(v76) = [v77 removeItemAtURL:v78 error:v170];

      if (v76)
      {
        v75 = v170[0];
      }

      else
      {
        v79 = v170[0];
        v80 = sub_22DF63334();

        swift_willThrow();
        if (qword_27DA487D0 != -1)
        {
          swift_once();
        }

        v58 = 0;
        v81 = sub_22DF63734();
        __swift_project_value_buffer(v81, qword_27DA4E578);
        v82 = v80;
        v83 = sub_22DF63714();
        v84 = sub_22DF63D04();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v164 = 0;
          v86 = v85;
          v163 = swift_slowAlloc();
          v170[0] = v163;
          *v86 = v162;
          swift_getErrorValue();
          v87 = sub_22DF64244();
          v89 = v72;
          v90 = sub_22DEF0354(v87, v88, v170);

          *(v86 + 4) = v90;
          v72 = v89;
          _os_log_impl(&dword_22DEEA000, v83, v84, "failed to erase old log: %{public}s", v86, 0xCu);
          v91 = v163;
          __swift_destroy_boxed_opaque_existential_0(v163);
          MEMORY[0x2318DDBE0](v91, -1, -1);
          v92 = v86;
          v58 = v164;
          MEMORY[0x2318DDBE0](v92, -1, -1);
        }

        else
        {
        }

        v16 = v160;
      }

      v73 += v72;
      --v63;
    }

    while (v63);
LABEL_18:
    swift_unknownObjectRelease();
    v64 = v166[2];
    if (v64)
    {
      v65 = v165;
      v66 = v155;
      v169(v155, &v154[v165[9] * (v64 - 1)], v16);
      v67 = 0;
      v68 = v16;
      v63 = v156;
      v69 = v153;
    }

    else
    {
      v67 = 1;
      v66 = v155;
      v68 = v16;
      v63 = v156;
      v69 = v153;
      v65 = v165;
    }

    v17 = v65[7];
    (v17)(v66, v67, 1, v68);
    sub_22DEF12FC(v66, v69, &qword_27DA47410, &qword_22DF65B80);
    if ((v65[6])(v69, 1, v68) == 1)
    {
      v93 = &qword_27DA47410;
      v94 = &qword_22DF65B80;
      v95 = v69;
LABEL_34:
      sub_22DEF1364(v95, v93, v94);
LABEL_35:
      result = sub_22DEF99E0(v66, v152);
      goto LABEL_38;
    }

    (v65[4])(v63, v69, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47470, &unk_22DF65BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22DF65900;
    v97 = *MEMORY[0x277CBE7C0];
    *(inited + 32) = *MEMORY[0x277CBE7C0];
    v98 = v97;
    sub_22DEF9A50(inited);
    swift_setDeallocating();
    sub_22DEF9C44(inited + 32);
    v99 = v151;
    sub_22DF63354();
    if (v58)
    {

      v167(v63, v68);
      result = sub_22DEF1364(v66, &qword_27DA47410, &qword_22DF65B80);
      goto LABEL_38;
    }

    v101 = v148;
    sub_22DF63294();
    (*(v146 + 8))(v99, v147);
    v102 = v150;
    v103 = v149;
    if ((*(v150 + 48))(v101, 1, v149) == 1)
    {
      v167(v63, v160);
      v93 = &qword_27DA47468;
      v94 = &qword_22DF697B0;
      v95 = v101;
      goto LABEL_34;
    }

    v104 = v145;
    (*(v102 + 32))(v145, v101, v103);
    v105 = v144;
    sub_22DF63554();
    sub_22DF63574();
    v107 = v106;
    v109 = *(v102 + 8);
    v108 = v102 + 8;
    v110 = v105;
    v57 = v109;
    (v109)(v110, v103);
    if (v107 <= 604800.0)
    {
      (v57)(v104, v103);
      v167(v63, v160);
      goto LABEL_35;
    }

    v150 = v108;
    if (qword_27DA487D0 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_57;
  }

  __break(1u);
LABEL_57:
  swift_once();
LABEL_43:
  v166 = v57;
  v111 = sub_22DF63734();
  v112 = __swift_project_value_buffer(v111, qword_27DA4E578);
  v113 = v143;
  v114 = v160;
  v169(v143, v63, v160);
  v169 = v112;
  v115 = sub_22DF63714();
  v116 = sub_22DF63CE4();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = v113;
    v118 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v170[0] = v165;
    *v118 = 136446210;
    v119 = sub_22DF63374();
    v164 = v58;
    v121 = v120;
    v167(v117, v114);
    v122 = sub_22DEF0354(v119, v121, v170);

    *(v118 + 4) = v122;
    _os_log_impl(&dword_22DEEA000, v115, v116, "aging out log file: %{public}s", v118, 0xCu);
    v123 = v165;
    __swift_destroy_boxed_opaque_existential_0(v165);
    MEMORY[0x2318DDBE0](v123, -1, -1);
    MEMORY[0x2318DDBE0](v118, -1, -1);
  }

  else
  {

    v167(v113, v114);
  }

  v124 = v155;
  v125 = [v159 defaultManager];
  v126 = v156;
  v127 = sub_22DF63394();
  v170[0] = 0;
  v128 = [v125 removeItemAtURL:v127 error:v170];

  if (v128)
  {
    v129 = v170[0];
    (v166)(v145, v149);
    v130 = v160;
    v167(v126, v160);
    sub_22DEF1364(v124, &qword_27DA47410, &qword_22DF65B80);
  }

  else
  {
    v131 = v170[0];
    v132 = sub_22DF63334();

    swift_willThrow();
    v164 = 0;
    v133 = v132;
    v134 = sub_22DF63714();
    v135 = sub_22DF63D04();

    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v170[0] = v137;
      *v136 = 136446210;
      swift_getErrorValue();
      v138 = sub_22DF64244();
      v140 = sub_22DEF0354(v138, v139, v170);

      *(v136 + 4) = v140;
      _os_log_impl(&dword_22DEEA000, v134, v135, "failed to erase old log: %{public}s", v136, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v137);
      MEMORY[0x2318DDBE0](v137, -1, -1);
      MEMORY[0x2318DDBE0](v136, -1, -1);

      (v166)(v145, v149);
      v130 = v160;
      v167(v156, v160);
      v141 = v155;
    }

    else
    {

      (v166)(v145, v149);
      v130 = v160;
      v167(v156, v160);
      v141 = v124;
    }

    sub_22DEF1364(v141, &qword_27DA47410, &qword_22DF65B80);
  }

  result = (v17)(v152, 1, 1, v130);
LABEL_38:
  v100 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22DEF3D7C()
{

  v0 = sub_22DF63AC4();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_22DF63AC4();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_22DF64184();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_22DF63AC4();
      v3 = v5;
    }

    while (v5);
  }

  sub_22DF63AC4();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

unint64_t sub_22DEF3ED8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    v4 = *(sub_22DF63444() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_22DEF3F6C(uint64_t a1)
{
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22DEF4014;

  return sub_22DEF4114(a1);
}

uint64_t sub_22DEF4014(uint64_t a1)
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

uint64_t sub_22DEF4114(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22DEF4134, 0, 0);
}

uint64_t sub_22DEF4134()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC19CloudTelemetryTools15TransparencyLog_writeInternalEvents) = 2;
  *(v2 + OBJC_IVAR____TtC19CloudTelemetryTools15TransparencyLog_fileDeletionSource) = 0;
  v3 = [objc_opt_self() fileHandleWithNullDevice];
  *(v2 + OBJC_IVAR____TtC19CloudTelemetryTools15TransparencyLog_activeFile) = v3;
  v4 = OBJC_IVAR____TtC19CloudTelemetryTools15TransparencyLog_rootLogsURL;
  v5 = sub_22DF63444();
  v0[4] = v5;
  v6 = *(v5 - 8);
  v0[5] = v6;
  (*(v6 + 16))(v2 + v4, v1, v5);

  return MEMORY[0x2822009F8](sub_22DEF424C, v2, 0);
}

uint64_t sub_22DEF424C()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_22DEF432C();
  (*(v2 + 8))(v4, v1);
  v5 = v0[1];
  v6 = v0[3];

  return v5(v6);
}

void sub_22DEF432C()
{
  v1 = sub_22DF630B4();
  v93 = *(v1 - 8);
  v2 = v93[8];
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v82 - v6;
  v8 = sub_22DF630C4();
  v94 = *(v8 - 8);
  v9 = *(v94 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v89 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v92 = v82 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v82 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v91 = v82 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v90 = v82 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v82 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v82 - v24;
  sub_22DEF4F0C();
  if (v0)
  {
    v97 = v0;
    v26 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
    if (swift_dynamicCast())
    {
      v84 = v16;
      v27 = v94 + 16;
      v87 = *(v94 + 16);
      v87(v23, v25, v8);
      v85 = sub_22DEF9E90(&qword_27DA47348, MEMORY[0x277CC8620]);
      sub_22DF63324();
      sub_22DF630A4();
      v28 = sub_22DEF9E90(&qword_27DA47350, MEMORY[0x277CC8608]);
      v86 = v25;
      v29 = v28;
      sub_22DF63B54();
      sub_22DF63B54();
      v88 = v8;
      v30 = v93[1];
      v30(v5, v1);
      v30(v7, v1);
      if (v96 == v95)
      {
        v31 = v87;
        v32 = v88;

        if (qword_27DA487D0 != -1)
        {
          swift_once();
        }

        v33 = sub_22DF63734();
        __swift_project_value_buffer(v33, qword_27DA4E578);
        v34 = v90;
        v31(v90, v23, v32);
        v35 = sub_22DF63714();
        v36 = sub_22DF63D24();
        v37 = os_log_type_enabled(v35, v36);
        v38 = v94;
        if (v37)
        {
          v39 = v34;
          v40 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          *v40 = 138412290;
          sub_22DF63064();
          v41 = _swift_stdlib_bridgeErrorToNSError();
          v42 = *(v38 + 8);
          v42(v39, v32);
          *(v40 + 4) = v41;
          v43 = v93;
          *v93 = v41;
          _os_log_impl(&dword_22DEEA000, v35, v36, "transparency log - no write permission. %@", v40, 0xCu);
          sub_22DEF1364(v43, &qword_27DA47340, &unk_22DF65940);
          MEMORY[0x2318DDBE0](v43, -1, -1);
          MEMORY[0x2318DDBE0](v40, -1, -1);
        }

        else
        {

          v42 = *(v38 + 8);
          v42(v34, v32);
        }

        sub_22DEF2570(v23, "unable to access transparency log (PERM): %{public}s");
        sub_22DF63064();
        swift_willThrow();
        v42(v23, v32);
        v42(v86, v32);
LABEL_30:

        return;
      }

      v44 = *(v94 + 8);
      v45 = v23;
      v46 = v88;
      v93 = (v94 + 8);
      v90 = v44;
      (v44)(v45, v88);
      v82[1] = v29;
      v83 = v30;
      v47 = v91;
      v82[0] = v27;
      v87(v91, v86, v46);
      v48 = v83;
      sub_22DF63324();
      sub_22DF63094();
      sub_22DF63B54();
      sub_22DF63B54();
      v48(v5, v1);
      v48(v7, v1);
      v49 = v87;
      if (v96 == v95)
      {
        v50 = v47;
        v51 = v90;
        v52 = v88;

        if (qword_27DA487D0 != -1)
        {
          swift_once();
        }

        v53 = sub_22DF63734();
        __swift_project_value_buffer(v53, qword_27DA4E578);
        v54 = v84;
        v55 = v47;
        v49(v84, v47, v52);
        v56 = sub_22DF63714();
        v57 = sub_22DF63D24();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          *v58 = 138412290;
          sub_22DF63064();
          v60 = _swift_stdlib_bridgeErrorToNSError();
          v51(v54, v52);
          *(v58 + 4) = v60;
          *v59 = v60;
          _os_log_impl(&dword_22DEEA000, v56, v57, "transparency log - no space. %@", v58, 0xCu);
          sub_22DEF1364(v59, &qword_27DA47340, &unk_22DF65940);
          MEMORY[0x2318DDBE0](v59, -1, -1);
          v61 = v58;
          v55 = v50;
          MEMORY[0x2318DDBE0](v61, -1, -1);
        }

        else
        {

          v51(v54, v52);
        }

        v73 = v86;
        sub_22DEF2570(v55, "unable to write transparency log (OOS): %{public}s");
        sub_22DF63064();
        swift_willThrow();
        v51(v55, v52);
        v51(v73, v52);
        goto LABEL_30;
      }

      v62 = v88;
      (v90)(v47, v88);
      (*(v94 + 32))(v92, v86, v62);
      sub_22DF63324();
      sub_22DF63084();
      sub_22DF63B54();
      sub_22DF63B54();
      v48(v5, v1);
      v48(v7, v1);
      if (v96 == v95)
      {
        v63 = v90;
        v64 = v88;

        if (qword_27DA487D0 != -1)
        {
          swift_once();
        }

        v65 = sub_22DF63734();
        __swift_project_value_buffer(v65, qword_27DA4E578);
        v66 = v89;
        v67 = v92;
        v87(v89, v92, v64);
        v68 = sub_22DF63714();
        v69 = sub_22DF63D24();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *v70 = 138412290;
          sub_22DF63064();
          v72 = _swift_stdlib_bridgeErrorToNSError();
          v63(v66, v64);
          *(v70 + 4) = v72;
          *v71 = v72;
          _os_log_impl(&dword_22DEEA000, v68, v69, "transparency log - unknown write error. %@", v70, 0xCu);
          sub_22DEF1364(v71, &qword_27DA47340, &unk_22DF65940);
          MEMORY[0x2318DDBE0](v71, -1, -1);
          MEMORY[0x2318DDBE0](v70, -1, -1);
        }

        else
        {

          v63(v66, v64);
        }

        sub_22DEF2570(v67, "unable to access storebag cache (WRITE-UNKNOWN): %{public}s");
        sub_22DF63064();
        swift_willThrow();
        v63(v67, v64);
        goto LABEL_30;
      }

      (v90)(v92, v88);
    }

    if (qword_27DA487D0 != -1)
    {
      swift_once();
    }

    v74 = sub_22DF63734();
    __swift_project_value_buffer(v74, qword_27DA4E578);
    v75 = v0;
    v76 = sub_22DF63714();
    v77 = sub_22DF63D24();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138412290;
      v80 = v0;
      v81 = _swift_stdlib_bridgeErrorToNSError();
      *(v78 + 4) = v81;
      *v79 = v81;
      _os_log_impl(&dword_22DEEA000, v76, v77, "transparency log - unexpected error. %@", v78, 0xCu);
      sub_22DEF1364(v79, &qword_27DA47340, &unk_22DF65940);
      MEMORY[0x2318DDBE0](v79, -1, -1);
      MEMORY[0x2318DDBE0](v78, -1, -1);
    }

    sub_22DEF2864(v0);
    swift_willThrow();
  }
}

void sub_22DEF4F0C()
{
  v1 = v0;
  v128 = sub_22DF63814();
  v127 = *(v128 - 8);
  v2 = *(v127 + 64);
  MEMORY[0x28223BE20](v128);
  v125 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_22DF63854();
  v124 = *(v126 - 8);
  v4 = *(v124 + 64);
  MEMORY[0x28223BE20](v126);
  v123 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_22DF63DB4();
  v121 = *(v122 - 8);
  v6 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v120 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22DF63594();
  v132 = *(v8 - 8);
  v133 = v8;
  v9 = *(v132 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47410, &qword_22DF65B80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v116 - v14;
  v16 = sub_22DF63444();
  v17 = *(v16 - 8);
  v136 = v16;
  v137 = v17;
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v119 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v129 = &v116 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v116 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v134 = &v116 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v130 = &v116 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v118 = &v116 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v116 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v116 - v35;
  v37 = OBJC_IVAR____TtC19CloudTelemetryTools15TransparencyLog_activeFile;
  swift_beginAccess();
  v131 = v37;
  v38 = *(v1 + v37);
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 fileHandleWithNullDevice];
  v135 = sub_22DEF7E20(0, &qword_27DA47418, 0x277CCA9F8);
  LOBYTE(v37) = sub_22DF63E14();

  if ((v37 & 1) == 0)
  {
    if (qword_27DA487D0 != -1)
    {
      swift_once();
    }

    v42 = sub_22DF63734();
    __swift_project_value_buffer(v42, qword_27DA4E578);
    v43 = sub_22DF63714();
    v44 = sub_22DF63D24();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_22DEEA000, v43, v44, "witnessed log vanish - refeshing", v45, 2u);
      MEMORY[0x2318DDBE0](v45, -1, -1);
    }
  }

  v46 = OBJC_IVAR____TtC19CloudTelemetryTools15TransparencyLog_fileDeletionSource;
  swift_beginAccess();
  if (*(v1 + v46))
  {
    v47 = *(v1 + v46);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_22DF63DE4();
    swift_unknownObjectRelease();
    v48 = *(v1 + v46);
    *(v1 + v46) = 0;
    swift_unknownObjectRelease();
  }

  v49 = v144;
  sub_22DEF2AE8(v15);
  if (!v49)
  {
    v117 = v46;
    v144 = 0;
    v51 = v136;
    v50 = v137;
    if ((v137[6])(v15, 1, v136) == 1)
    {
      sub_22DEF1364(v15, &qword_27DA47410, &qword_22DF65B80);
      v52 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v53 = sub_22DF63984();
      [v52 setDateFormat_];

      sub_22DF63554();
      v54 = sub_22DF63514();
      (*(v132 + 8))(v11, v133);
      v55 = [v52 stringFromDate_];

      v56 = sub_22DF639B4();
      v58 = v57;

      v59 = OBJC_IVAR____TtC19CloudTelemetryTools15TransparencyLog_rootLogsURL;
      swift_beginAccess();
      v133 = v137[2];
      v133(v25, v1 + v59, v51);
      aBlock = 0;
      v139 = 0xE000000000000000;
      sub_22DF63F24();

      aBlock = 0xD00000000000001ALL;
      v139 = 0x800000022DF6D3F0;
      MEMORY[0x2318DCA20](v56, v58);

      MEMORY[0x2318DCA20](1954051118, 0xE400000000000000);
      v60 = v134;
      sub_22DF633B4();
      v61 = v137;

      v62 = v25;
      v63 = v61[1];
      v63(v62, v51);
      v64 = v144;
      sub_22DF634D4();
      if (v64)
      {
        v63(v60, v51);

        return;
      }

      v69 = v130;
      (v61[4])(v130, v60, v51);
      v70 = v129;
      v71 = v133;
      v133(v129, v69, v51);
      v72 = sub_22DEF5EA4(v70);
      v144 = 0;
      v76 = v71;
      v77 = *(v1 + v131);
      *(v1 + v131) = v72;

      if (qword_27DA487D0 != -1)
      {
        swift_once();
      }

      v78 = sub_22DF63734();
      __swift_project_value_buffer(v78, qword_27DA4E578);
      v79 = v119;
      v76(v119, v69, v51);
      v80 = sub_22DF63714();
      v81 = sub_22DF63CE4();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = v79;
        v137 = swift_slowAlloc();
        aBlock = v137;
        *v82 = 136446210;
        v135 = sub_22DF63404();
        v85 = v84;
        v63(v83, v51);
        v86 = sub_22DEF0354(v135, v85, &aBlock);

        *(v82 + 4) = v86;
        _os_log_impl(&dword_22DEEA000, v80, v81, "created new log file at %{public}s", v82, 0xCu);
        v87 = v137;
        __swift_destroy_boxed_opaque_existential_0(v137);
        MEMORY[0x2318DDBE0](v87, -1, -1);
        MEMORY[0x2318DDBE0](v82, -1, -1);

        v88 = v130;
      }

      else
      {

        v63(v79, v51);
        v88 = v69;
      }

      v63(v88, v51);
      v73 = v131;
    }

    else
    {
      (v50[4])(v36, v15, v51);
      v65 = v50[2];
      v65(v34, v36, v51);
      v66 = v144;
      v67 = sub_22DEF5EA4(v34);
      v68 = v51;
      if (v66)
      {
        (v50[1])(v36, v51);
        return;
      }

      v73 = v131;
      v74 = *(v1 + v131);
      *(v1 + v131) = v67;
      v75 = v67;

      sub_22DF63CD4();
      v144 = 0;

      if (qword_27DA487D0 != -1)
      {
        swift_once();
      }

      v89 = sub_22DF63734();
      __swift_project_value_buffer(v89, qword_27DA4E578);
      v90 = v118;
      v65(v118, v36, v68);
      v91 = sub_22DF63714();
      v92 = sub_22DF63CE4();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = v90;
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        aBlock = v95;
        *v94 = 136446210;
        v135 = sub_22DF63404();
        v96 = v68;
        v98 = v97;
        v137 = v137[1];
        (v137)(v93, v96);
        v99 = sub_22DEF0354(v135, v98, &aBlock);

        *(v94 + 4) = v99;
        _os_log_impl(&dword_22DEEA000, v91, v92, "opened log file at %{public}s", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v95);
        v100 = v95;
        v73 = v131;
        MEMORY[0x2318DDBE0](v100, -1, -1);
        MEMORY[0x2318DDBE0](v94, -1, -1);

        (v137)(v36, v136);
      }

      else
      {

        v101 = v137[1];
        v101(v90, v68);
        v101(v36, v68);
      }
    }

    sub_22DEF7E20(0, &qword_27DA47420, 0x277D85CA0);
    [*(v1 + v73) fileDescriptor];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47428, &qword_22DF65B88);
    v102 = v121;
    v103 = *(v121 + 72);
    v104 = (*(v121 + 80) + 32) & ~*(v121 + 80);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_22DF65910;
    sub_22DF63DA4();
    sub_22DF63D94();
    aBlock = v105;
    sub_22DEF9E90(&qword_27DA47430, MEMORY[0x277D85288]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47438, &qword_22DF65B90);
    sub_22DEF7E88(&qword_27DA47440, &qword_27DA47438, &qword_22DF65B90);
    v106 = v120;
    v107 = v122;
    sub_22DF63E54();
    v108 = sub_22DF63DC4();
    (*(v102 + 8))(v106, v107);
    v109 = v117;
    v110 = *(v1 + v117);
    *(v1 + v117) = v108;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_getObjectType();
    v111 = swift_allocObject();
    swift_weakInit();
    v142 = sub_22DEF7E68;
    v143 = v111;
    aBlock = MEMORY[0x277D85DD0];
    v139 = 1107296256;
    v140 = sub_22DEF6464;
    v141 = &block_descriptor;
    v112 = _Block_copy(&aBlock);

    v113 = v123;
    sub_22DF63844();
    v114 = v125;
    sub_22DEF64A8();
    sub_22DF63DD4();
    _Block_release(v112);
    swift_unknownObjectRelease();
    (*(v127 + 8))(v114, v128);
    (*(v124 + 8))(v113, v126);

    if (*(v1 + v109))
    {
      v115 = *(v1 + v109);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_22DF63DF4();
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_22DEF5EA4(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22DF63394();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_22DF63444();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_22DF63334();

    swift_willThrow();
    v9 = sub_22DF63444();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_22DEF5FFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_22DF63C34();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_22DEF61B8(0, 0, v3, &unk_22DF65BB0, v7);
  }

  return result;
}

uint64_t sub_22DEF613C()
{
  v1 = *(v0 + 16);
  sub_22DEF432C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22DEF61B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_22DEF12FC(a3, v24 - v10, &qword_27DA47460, &qword_22DF65310);
  v12 = sub_22DF63C34();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22DEF1364(v11, &qword_27DA47460, &qword_22DF65310);
  }

  else
  {
    sub_22DF63C24();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22DF63BE4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22DF63A34() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_22DEF1364(a3, &qword_27DA47460, &qword_22DF65310);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22DEF1364(a3, &qword_27DA47460, &qword_22DF65310);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22DEF6464(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_22DEF64A8()
{
  sub_22DF63814();
  sub_22DEF9E90(&qword_27DA47448, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47450, &unk_22DF65B98);
  sub_22DEF7E88(&qword_27DA47458, &qword_27DA47450, &unk_22DF65B98);
  return sub_22DF63E54();
}

uint64_t sub_22DEF6580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38[2] = a3;
  v38[3] = a4;
  v39 = a1;
  v40 = a2;
  v47 = *MEMORY[0x277D85DE8];
  v4 = sub_22DF63A04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22DF63594();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_22DF63F24();

  v43 = 40;
  v44 = 0xE100000000000000;
  sub_22DF63554();
  v14 = sub_22DF634F4();
  v16 = v15;
  v17 = v9;
  v18 = v4;
  (*(v10 + 8))(v13, v17);
  MEMORY[0x2318DCA20](v14, v16);

  MEMORY[0x2318DCA20](5972009, 0xE300000000000000);
  MEMORY[0x2318DCA20](v39, v40);
  MEMORY[0x2318DCA20](0xD000000000000013, 0x800000022DF6D300);
  sub_22DF639F4();
  v19 = sub_22DF639C4();
  v21 = v20;
  v22 = *(v5 + 8);
  v22(v8, v18);
  if (v21 >> 60 == 15)
  {

    sub_22DEF79CC();
    swift_allocError();
    result = swift_willThrow();
LABEL_10:
    v37 = *MEMORY[0x277D85DE8];
    return result;
  }

  v45 = v19;
  v46 = v21;
  sub_22DF634E4();
  sub_22DF639F4();
  v24 = sub_22DF639C4();
  v26 = v25;
  result = (v22)(v8, v18);
  if (v26 >> 60 != 15)
  {

    sub_22DF634E4();
    sub_22DEF7A20(v24, v26);
    v27 = OBJC_IVAR____TtC19CloudTelemetryTools15TransparencyLog_activeFile;
    v28 = v38[1];
    swift_beginAccess();
    v29 = *(v28 + v27);
    v31 = v45;
    v30 = v46;
    v41 = v45;
    v42 = v46;
    v32 = v29;
    sub_22DEF7A88(v31, v30);
    sub_22DEF7ADC();
    v33 = v38[0];
    sub_22DF63CC4();
    if (v33)
    {

      sub_22DEF7A34(v41, v42);
    }

    else
    {
      sub_22DEF7A34(v41, v42);

      v34 = *(v28 + v27);
      v41 = 0;
      if ([v34 synchronizeAndReturnError_])
      {
        v35 = v41;
      }

      else
      {
        v36 = v41;
        sub_22DF63334();

        swift_willThrow();
      }
    }

    result = sub_22DEF7A34(v31, v30);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

_BYTE *sub_22DEF6968(uint64_t a1, uint64_t (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a5;
  v60 = a1;
  v61 = a2;
  v70 = *MEMORY[0x277D85DE8];
  v7 = sub_22DF63174();
  v58 = *(v7 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22DF63A04();
  v10 = *(v9 - 8);
  v62 = v9;
  v63 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22DF63594();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22DF2E5EC();
  result = swift_beginAccess();
  if (*v19 != 1)
  {
    goto LABEL_11;
  }

  result = sub_22DF2E7D0();
  if (*result != 1)
  {
    goto LABEL_11;
  }

  v56 = v5;
  v57 = v6;
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_22DF63F24();

  v66 = 40;
  v67 = 0xE100000000000000;
  sub_22DF63554();
  v21 = sub_22DF634F4();
  v23 = v22;
  (*(v15 + 8))(v18, v14);
  MEMORY[0x2318DCA20](v21, v23);

  MEMORY[0x2318DCA20](5972009, 0xE300000000000000);
  MEMORY[0x2318DCA20](v60, v61);
  MEMORY[0x2318DCA20](0xD000000000000011, 0x800000022DF6D320);
  sub_22DF639F4();
  v24 = sub_22DF639C4();
  v26 = v25;
  v27 = v63 + 8;
  v28 = *(v63 + 8);
  v28(v13, v62);
  if (v26 >> 60 == 15)
  {

    sub_22DEF79CC();
    swift_allocError();
    result = swift_willThrow();
LABEL_11:
    v54 = *MEMORY[0x277D85DE8];
    return result;
  }

  v61 = v28;
  v63 = v27;
  v68 = v24;
  v69 = v26;
  v29 = sub_22DF631B4();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_22DF631A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47368, qword_22DF67230);
  v33 = *(v58 + 72);
  v34 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_22DF65900;
  sub_22DF63164();
  v66 = v35;
  sub_22DEF9E90(&qword_27DA47370, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47378, &qword_22DF65950);
  v36 = v32;
  sub_22DEF7E88(&qword_27DA47380, &qword_27DA47378, &qword_22DF65950);
  sub_22DF63E54();
  sub_22DF63184();
  v66 = v59;
  sub_22DEF7B30();

  v37 = v57;
  v38 = sub_22DF63194();
  if (v37)
  {

    result = sub_22DEF7A34(v68, v69);
    goto LABEL_11;
  }

  v40 = v38;
  v41 = v39;
  v60 = v36;

  sub_22DF634E4();
  sub_22DF639F4();
  v42 = sub_22DF639C4();
  v44 = v43;
  result = v61(v13, v62);
  if (v44 >> 60 != 15)
  {

    sub_22DF634E4();
    sub_22DEF7A20(v42, v44);
    v45 = OBJC_IVAR____TtC19CloudTelemetryTools15TransparencyLog_activeFile;
    v46 = v56;
    swift_beginAccess();
    v47 = *(v46 + v45);
    v49 = v68;
    v48 = v69;
    v64 = v68;
    v65 = v69;
    v50 = v47;
    sub_22DEF7A88(v49, v48);
    sub_22DEF7ADC();
    sub_22DF63CC4();
    sub_22DEF7A34(v64, v65);

    v51 = *(v56 + v45);
    v64 = 0;
    if ([v51 synchronizeAndReturnError_])
    {
      v52 = v64;
      sub_22DEF7A34(v49, v48);
      sub_22DEF7A34(v40, v41);
    }

    else
    {
      v53 = v64;
      sub_22DF63334();

      swift_willThrow();
      sub_22DEF7A34(v40, v41);

      result = sub_22DEF7A34(v49, v48);
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_22DEF6FD0()
{
  v1 = OBJC_IVAR____TtC19CloudTelemetryTools15TransparencyLog_rootLogsURL;
  v2 = sub_22DF63444();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC19CloudTelemetryTools15TransparencyLog_fileDeletionSource);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DEF707C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22DF64184();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22DEF7100(uint64_t a1)
{
  v2 = sub_22DEF7D10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DEF713C(uint64_t a1)
{
  v2 = sub_22DEF7D10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22DEF7178(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA473F0, &unk_22DF65B70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DEF7D10();
  sub_22DF64334();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47590, &unk_22DF65E20);
  sub_22DEF7D64();
  sub_22DF64134();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22DEF72F8(uint64_t a1, id *a2)
{
  result = sub_22DF63994();
  *a2 = 0;
  return result;
}

uint64_t sub_22DEF7370(uint64_t a1, id *a2)
{
  v3 = sub_22DF639A4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22DEF73F0@<X0>(uint64_t *a1@<X8>)
{
  sub_22DF639B4();
  v2 = sub_22DF63984();

  *a1 = v2;
  return result;
}

uint64_t sub_22DEF7434()
{
  v1 = *v0;
  v2 = sub_22DF639B4();
  v3 = MEMORY[0x2318DCA80](v2);

  return v3;
}

uint64_t sub_22DEF7470()
{
  v1 = *v0;
  sub_22DF639B4();
  sub_22DF63A54();
}

uint64_t sub_22DEF74C4()
{
  v1 = *v0;
  sub_22DF639B4();
  sub_22DF642A4();
  sub_22DF63A54();
  v2 = sub_22DF642D4();

  return v2;
}

uint64_t sub_22DEF7538(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_22DF639B4();
  v6 = v5;
  if (v4 == sub_22DF639B4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22DF64184();
  }

  return v9 & 1;
}

uint64_t sub_22DEF75C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22DF63984();

  *a2 = v5;
  return result;
}

uint64_t sub_22DEF7608@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22DF639B4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_22DEF7634(uint64_t a1)
{
  v2 = sub_22DEF9E90(&unk_27DA47CA0, type metadata accessor for URLResourceKey);
  v3 = sub_22DEF9E90(&unk_27DA474C0, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

size_t sub_22DEF76F0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47480, &qword_22DF65BD0);
  v10 = *(sub_22DF63444() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22DF63444() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_22DEF78C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47488, &qword_22DF65BD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_22DEF79CC()
{
  result = qword_27DA47358;
  if (!qword_27DA47358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47358);
  }

  return result;
}

uint64_t sub_22DEF7A20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22DEF7A34(a1, a2);
  }

  return a1;
}

uint64_t sub_22DEF7A34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22DEF7A88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_22DEF7ADC()
{
  result = qword_27DA47360;
  if (!qword_27DA47360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47360);
  }

  return result;
}

unint64_t sub_22DEF7B30()
{
  result = qword_27DA487D8[0];
  if (!qword_27DA487D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA487D8);
  }

  return result;
}

unint64_t sub_22DEF7B88()
{
  result = qword_27DA47388;
  if (!qword_27DA47388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47388);
  }

  return result;
}

uint64_t type metadata accessor for TransparencyLog()
{
  result = qword_28150A880;
  if (!qword_28150A880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DEF7C34()
{
  result = sub_22DF63444();
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

unint64_t sub_22DEF7D10()
{
  result = qword_27DA48B60[0];
  if (!qword_27DA48B60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA48B60);
  }

  return result;
}

unint64_t sub_22DEF7D64()
{
  result = qword_27DA47400;
  if (!qword_27DA47400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA47590, &unk_22DF65E20);
    sub_22DEF9E90(&qword_27DA47408, type metadata accessor for ServiceEventValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47400);
  }

  return result;
}

uint64_t sub_22DEF7E20(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22DEF7E88(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22DEF7EDC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22DEEFBD4;

  return sub_22DEF611C(v3, v4, v5, v2);
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_27DA47C80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DA47C80);
    }
  }
}

uint64_t sub_22DEF7FC0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_22DF64144();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22DF63444();
        v6 = sub_22DF63BA4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22DF63444() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22DEF83F8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22DEF80EC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22DEF80EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22DF63444();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = &v35 - v13;
  result = MEMORY[0x28223BE20](v12);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v15 + 16);
    v47 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v43 = (v15 + 32);
    v44 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      v46(v48, v22, v8);
      v25(v49, v24, v8);
      v26 = sub_22DF63374();
      v28 = v27;
      if (v26 == sub_22DF63374() && v28 == v29)
      {

        v23 = *v19;
        (*v19)(v49, v8);
        result = (v23)(v48, v8);
LABEL_5:
        a3 = v41 + 1;
        v20 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_22DF64184();

      v31 = *v19;
      (*v19)(v49, v8);
      result = (v31)(v48, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v24, v33, v8);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22DEF83F8(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_22DF63444();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v150 = &v129 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v155 = &v129 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v154 = &v129 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v147 = &v129 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v146 = &v129 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v134 = &v129 - v24;
  result = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v27;
  v28 = *(a3 + 1);
  v144 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_103:
    v32 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (result)
    {
LABEL_105:
      v156 = v30;
      v123 = *(v30 + 16);
      if (v123 >= 2)
      {
        while (1)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v30 + 16 * v123);
          a3 = v30;
          v127 = *(v30 + 16 * (v123 - 1) + 32);
          v30 = *(v30 + 16 * (v123 - 1) + 40);
          sub_22DEF8FB4(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v30], v32);
          if (v6)
          {
          }

          if (v30 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_22DEF96DC(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v30;
          v156 = a3;
          result = sub_22DEF9650(v123 - 1);
          v30 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
          if (v123 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_22DEF96DC(v30);
    v30 = result;
    goto LABEL_105;
  }

  v130 = a4;
  v29 = 0;
  v152 = v26 + 16;
  v153 = (v26 + 8);
  v151 = (v26 + 32);
  v30 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v138 = v29;
    if (v29 + 1 < v28)
    {
      v142 = v28;
      v131 = v30;
      v33 = *a3;
      v34 = *(v144 + 72);
      v5 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v144 + 16);
      v36(v133, v35, v9);
      v145 = v34;
      v141 = v36;
      v36(v134, &v33[v34 * v31], v9);
      v32 = sub_22DF63374();
      v38 = v37;
      v39 = sub_22DF63374();
      v132 = v6;
      if (v32 == v39 && v38 == v40)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_22DF64184();
      }

      v41 = *v153;
      (*v153)(v134, v9);
      v140 = v41;
      result = (v41)(v133, v9);
      v42 = (v138 + 2);
      v43 = v145 * (v138 + 2);
      v44 = &v33[v43];
      v45 = v145 * v5;
      v46 = &v33[v145 * v5];
      do
      {
        a3 = v42;
        v49 = v5;
        v6 = v45;
        v30 = v43;
        if (v42 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v42;
        v50 = v141;
        (v141)(v146, v44, v9);
        v50(v147, v46, v9);
        v51 = sub_22DF63374();
        v53 = v52;
        if (v51 == sub_22DF63374() && v53 == v54)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_22DF64184();
        }

        a3 = v149;

        v32 = v140;
        v140(v147, v9);
        result = (v32)(v146, v9);
        v48 = v143 ^ v47;
        v42 = a3 + 1;
        v44 += v145;
        v46 += v145;
        v49 = v148;
        v5 = v148 + 1;
        v45 = v6 + v145;
        v43 = v30 + v145;
      }

      while ((v48 & 1) == 0);
      if (v143)
      {
        v31 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v55 = v138 * v145;
          v56 = v138;
          do
          {
            if (v56 != v49)
            {
              v58 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v49;
              v149 = *v151;
              (v149)(v139, v58 + v55, v9);
              if (v55 < v6 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v149)(v58 + v6, v139, v9);
              v31 = v138;
              v49 = v5;
            }

            ++v56;
            v6 -= v145;
            v30 -= v145;
            v55 += v145;
          }

          while (v56 < v49--);
        }

        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
      }

      else
      {
        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
      }
    }

    v59 = *(a3 + 1);
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22DEF78C8(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_22DEF78C8((v76 > 1), v77 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
        {
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
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_22DEF8FB4(&v119[*(v144 + 72) * v120], &v119[*(v144 + 72) * v121], &v119[*(v144 + 72) * v30], v80);
        if (v6)
        {
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_22DEF96DC(a3);
        }

        if (v118 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v122 = &a3[16 * v118];
        *(v122 + 4) = v120;
        *(v122 + 5) = v30;
        v156 = a3;
        result = sub_22DEF9650(v32);
        v30 = v156;
        v78 = *(v156 + 16);
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = *(a3 + 1);
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v130);
  if (__OFADD__(v31, v130))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = *(a3 + 1);
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v131 = v30;
  v132 = v6;
  v61 = *a3;
  v62 = *(v144 + 72);
  v63 = *(v144 + 16);
  v64 = *a3 + v62 * (v32 - 1);
  v148 = -v62;
  v149 = v61;
  v65 = v31 - v32;
  v137 = v62;
  v66 = &v61[v32 * v62];
  v140 = v60;
LABEL_43:
  v145 = v32;
  v141 = v66;
  v142 = v65;
  v143 = v64;
  v68 = v64;
  while (1)
  {
    v63(v154, v66, v9);
    (v63)(v155, v68);
    v5 = sub_22DF63374();
    v70 = v69;
    if (v5 == sub_22DF63374() && v70 == v71)
    {

      v67 = *v153;
      (*v153)(v155, v9);
      v67(v154, v9);
LABEL_42:
      v32 = v145 + 1;
      v64 = v143 + v137;
      v65 = v142 - 1;
      v66 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v32 = v140;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_22DF64184();

    v72 = *v153;
    (*v153)(v155, v9);
    result = (v72)(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v73 = v150;
    v5 = v151;
    v74 = *v151;
    (*v151)(v150, v66, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v74)(v68, v73, v9);
    v68 += v148;
    v66 += v148;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_22DEF8FB4(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v72 = sub_22DF63444();
  v8 = *(v72 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v72);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = &v60 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v60 - v15;
  result = MEMORY[0x28223BE20](v14);
  v70 = &v60 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_70;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = (a2 - a1) / v19;
  v75 = a1;
  v74 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v23;
    if (v23 < 1)
    {
      v45 = a4 + v23;
    }

    else
    {
      v64 = a4;
      v65 = (v8 + 16);
      v63 = (v8 + 8);
      v43 = -v19;
      v44 = a4 + v23;
      v45 = v42;
      v66 = v43;
      while (2)
      {
        while (1)
        {
          v61 = v45;
          v46 = (a2 + v43);
          v70 = (a2 + v43);
          v67 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v75 = a2;
              v73 = v61;
              goto LABEL_68;
            }

            v48 = a3;
            v62 = v45;
            v49 = *v65;
            v71 = (v44 + v43);
            v50 = v72;
            (v49)(v68);
            (v49)(v69, v46, v50);
            v51 = sub_22DF63374();
            v53 = v52;
            if (v51 != sub_22DF63374())
            {
              goto LABEL_51;
            }

            if (v53 == v54)
            {
              v55 = 0;
            }

            else
            {
LABEL_51:
              v55 = sub_22DF64184();
            }

            v43 = v66;
            a3 = v66 + v48;
            v56 = *v63;
            v57 = v72;
            (*v63)(v69, v72);
            v56(v68, v57);
            if (v55)
            {
              break;
            }

            v58 = v71;
            v45 = v71;
            if (v48 < v44 || a3 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v70;
            }

            else
            {
              v46 = v70;
              if (v48 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v45;
            v47 = v58 > v64;
            a2 = v67;
            if (!v47)
            {
              goto LABEL_66;
            }
          }

          if (v48 < v67 || a3 >= v67)
          {
            break;
          }

          a2 = v70;
          v59 = v64;
          v45 = v62;
          if (v48 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v59)
          {
            goto LABEL_66;
          }
        }

        a2 = v70;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v62;
        if (v44 > v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v75 = a2;
    v73 = v45;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = (a4 + v22);
    v73 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v8 + 16);
      v67 = v19;
      v68 = (v8 + 16);
      v65 = (v8 + 8);
      v66 = v25;
      do
      {
        v26 = a3;
        v27 = a2;
        v28 = a2;
        v29 = v72;
        v30 = v66;
        v66(v70, v28, v72);
        v30(v71, a4, v29);
        v31 = sub_22DF63374();
        v33 = v32;
        if (v31 == sub_22DF63374() && v33 == v34)
        {

          v35 = *v65;
          v36 = v72;
          (*v65)(v71, v72);
          v35(v70, v36);
        }

        else
        {
          v37 = sub_22DF64184();

          v38 = *v65;
          v39 = v72;
          (*v65)(v71, v72);
          v38(v70, v39);
          if (v37)
          {
            a2 = v27 + v67;
            a3 = v26;
            if (a1 < v27 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v41 = v67;
            goto LABEL_37;
          }
        }

        v40 = a4;
        v41 = v67;
        a4 += v67;
        a2 = v27;
        a3 = v26;
        if (a1 < v40 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
          v74 = a4;
          goto LABEL_37;
        }

        v74 = a4;
LABEL_37:
        a1 += v41;
        v75 = a1;
      }

      while (a4 < v69 && a2 < a3);
    }
  }

LABEL_68:
  sub_22DEF96F0(&v75, &v74, &v73);
  return 1;
}

uint64_t sub_22DEF9650(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22DEF96DC(v3);
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

uint64_t sub_22DEF96F0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_22DF63444();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_22DEF97D4(size_t a1, int64_t a2, char a3)
{
  result = sub_22DEF97F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22DEF97F4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47480, &qword_22DF65BD0);
  v10 = *(sub_22DF63444() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22DF63444() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_22DEF99E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47410, &qword_22DF65B80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DEF9A50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47478, qword_22DF66410);
    v3 = sub_22DF63F04();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_22DF639B4();
      sub_22DF642A4();
      v29 = v7;
      sub_22DF63A54();
      v9 = sub_22DF642D4();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_22DF639B4();
        v20 = v19;
        if (v18 == sub_22DF639B4() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_22DF64184();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22DEF9C44(uint64_t a1)
{
  type metadata accessor for URLResourceKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22DEF9CB4()
{
  result = qword_27DA48C70[0];
  if (!qword_27DA48C70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA48C70);
  }

  return result;
}

unint64_t sub_22DEF9DE4()
{
  result = qword_27DA48F00;
  if (!qword_27DA48F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA48F00);
  }

  return result;
}

unint64_t sub_22DEF9E3C()
{
  result = qword_27DA48F08[0];
  if (!qword_27DA48F08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA48F08);
  }

  return result;
}

uint64_t sub_22DEF9E90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22DEF9ED8(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + 16);
  sub_22DEFE4C4(v5, sub_22DEFCFA4, 0, isUniquelyReferenced_nonNull_native, &v9);

  *(v2 + 16) = v9;
  return result;
}

uint64_t sub_22DEF9F84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for ServiceEventValue();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v64 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v64 - v14;
  sub_22DEF12A0(a1, v78);
  if (swift_dynamicCast())
  {
    v16 = *(&v76 + 1);
    *a2 = v76;
    a2[1] = v16;
LABEL_16:
    swift_storeEnumTagMultiPayload();
    return __swift_destroy_boxed_opaque_existential_0(v78);
  }

  v71 = v15;
  sub_22DEF7E20(0, &qword_27DA47630, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    v17 = v76;
    if (*MEMORY[0x277CBED28])
    {
      v18 = v76 == *MEMORY[0x277CBED28];
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {

      *a2 = 1;
      goto LABEL_16;
    }

    v19 = *MEMORY[0x277CBED10];

    if (v19)
    {
      if (v17 == v19)
      {
        *a2 = 0;
        goto LABEL_16;
      }
    }
  }

  if (swift_dynamicCast())
  {
    *a2 = v76;
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    *a2 = v76;
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    *a2 = v76;
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47638, &qword_22DF660F0);
  v21 = swift_dynamicCast();
  v68 = v6;
  if (!v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47640, &qword_22DF660F8);
    if (swift_dynamicCast())
    {
      v64 = a2;
      v65 = v5;
      v57 = v73;
      v58 = sub_22DEFDB40(0, *(v73 + 16), 0, MEMORY[0x277D84F90]);
      v59 = *(v57 + 16);
      if (v59)
      {
        v60 = 0;
        v61 = v57 + 32;
        while (1)
        {
          if (v60 >= *(v57 + 16))
          {
            goto LABEL_67;
          }

          sub_22DEF12A0(v61, &v76);
          sub_22DEF9F84(&v76);
          if (v2)
          {
            break;
          }

          __swift_destroy_boxed_opaque_existential_0(&v76);
          v63 = v58[2];
          v62 = v58[3];
          if (v63 >= v62 >> 1)
          {
            v58 = sub_22DEFDB40(v62 > 1, v63 + 1, 1, v58);
          }

          ++v60;
          v58[2] = v63 + 1;
          sub_22DEFE894(v10, v58 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v63);
          v61 += 32;
          if (v59 == v60)
          {
            goto LABEL_62;
          }
        }

        __swift_destroy_boxed_opaque_existential_0(&v76);
      }

      else
      {
LABEL_62:

        *v64 = v58;
        swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      sub_22DEFF798();
      swift_allocError();
      swift_willThrow();
    }

    return __swift_destroy_boxed_opaque_existential_0(v78);
  }

  v64 = a2;
  v70 = v2;
  v22 = v79;
  v23 = *(v79 + 16);
  v65 = v5;
  v24 = MEMORY[0x2318DC890](v23, MEMORY[0x277D837D0], v5, MEMORY[0x277D837E0]);
  v25 = 0;
  v27 = v22 + 64;
  v26 = *(v22 + 64);
  v66 = v22;
  v28 = 1 << *(v22 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v26;
  v31 = (v28 + 63) >> 6;
  v69 = v13;
  v67 = v22 + 64;
  while (v30)
  {
    v32 = v25;
LABEL_35:
    v35 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v36 = v35 | (v32 << 6);
    v37 = (*(v66 + 48) + 16 * v36);
    v39 = *v37;
    v38 = v37[1];
    sub_22DEF12A0(*(v66 + 56) + 32 * v36, v72);
    *&v73 = v39;
    *(&v73 + 1) = v38;
    sub_22DEFFBF0(v72, &v74);

    v34 = v32;
LABEL_36:
    v76 = v73;
    v77[0] = v74;
    v77[1] = v75;
    v40 = *(&v73 + 1);
    v41 = v71;
    if (!*(&v73 + 1))
    {

      *v64 = v24;
      swift_storeEnumTagMultiPayload();
      return __swift_destroy_boxed_opaque_existential_0(v78);
    }

    v42 = v76;
    sub_22DEFFBF0(v77, &v73);
    v43 = v70;
    sub_22DEF9F84(&v73);
    v70 = v43;
    if (v43)
    {
      __swift_destroy_boxed_opaque_existential_0(&v73);

      return __swift_destroy_boxed_opaque_existential_0(v78);
    }

    sub_22DEFE894(v41, v69);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v72[0] = v24;
    v46 = sub_22DEF08FC(v42, v40);
    v47 = v24[2];
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_65;
    }

    v50 = v45;
    if (v24[3] >= v49)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v45)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_22DEFD638();
        if (v50)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      sub_22DEFD044(v49, isUniquelyReferenced_nonNull_native);
      v51 = sub_22DEF08FC(v42, v40);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_68;
      }

      v46 = v51;
      if (v50)
      {
LABEL_24:

        v24 = *&v72[0];
        sub_22DEFFB1C(v69, *(*&v72[0] + 56) + *(v68 + 72) * v46);
        __swift_destroy_boxed_opaque_existential_0(&v73);
        goto LABEL_25;
      }
    }

    v24 = *&v72[0];
    *(*&v72[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
    v53 = (v24[6] + 16 * v46);
    *v53 = v42;
    v53[1] = v40;
    sub_22DEFE894(v69, v24[7] + *(v68 + 72) * v46);
    __swift_destroy_boxed_opaque_existential_0(&v73);
    v54 = v24[2];
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_66;
    }

    v24[2] = v56;
LABEL_25:
    v25 = v34;
    v27 = v67;
  }

  if (v31 <= v25 + 1)
  {
    v33 = v25 + 1;
  }

  else
  {
    v33 = v31;
  }

  v34 = v33 - 1;
  while (1)
  {
    v32 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v32 >= v31)
    {
      v30 = 0;
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
      goto LABEL_36;
    }

    v30 = *(v27 + 8 * v32);
    ++v25;
    if (v30)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = sub_22DF64234();
  __break(1u);
  return result;
}

uint64_t sub_22DEFA734(uint64_t a1, uint64_t a2)
{
  sub_22DEFE8F8(a2);
  if (v2)
  {
    return v4;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_22DEFA784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEventValue();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_22DEFF2A8(v14, v11, type metadata accessor for ServiceEventValue);
        sub_22DEFF2A8(v15, v8, type metadata accessor for ServiceEventValue);
        v17 = sub_22DEFEC38(v11, v8);
        sub_22DEFF310(v8, type metadata accessor for ServiceEventValue);
        sub_22DEFF310(v11, type metadata accessor for ServiceEventValue);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_22DEFA92C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEventValue();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47598, &qword_22DF65E30);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v55 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = a2;
  v54 = (&v51 - v17);
  v18 = 0;
  v52 = a1;
  v19 = *(a1 + 64);
  v51 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  while (v22)
  {
    v56 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v18 << 6);
    v25 = v55;
LABEL_16:
    v30 = (*(v52 + 48) + 16 * v24);
    v31 = *v30;
    v32 = v30[1];
    sub_22DEFF2A8(*(v52 + 56) + *(v5 + 72) * v24, v11, type metadata accessor for ServiceEventValue);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
    v34 = *(v33 + 48);
    *v25 = v31;
    v25[1] = v32;
    sub_22DEFE894(v11, v25 + v34);
    (*(*(v33 - 8) + 56))(v25, 0, 1, v33);

LABEL_17:
    v35 = v54;
    sub_22DEFFC08(v25, v54, &qword_27DA47598, &qword_22DF65E30);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = v11;
    v40 = v5;
    v41 = *(v36 + 48);
    v43 = *v35;
    v42 = v35[1];
    sub_22DEFE894(v35 + v41, v9);
    v44 = v53;
    v45 = sub_22DEF08FC(v43, v42);
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      sub_22DEFF310(v9, type metadata accessor for ServiceEventValue);
      return 0;
    }

    v48 = *(v44 + 56);
    v5 = v40;
    v11 = v39;
    sub_22DEFF2A8(v48 + *(v40 + 72) * v45, v39, type metadata accessor for ServiceEventValue);
    v49 = sub_22DEFEC38(v39, v9);
    sub_22DEFF310(v39, type metadata accessor for ServiceEventValue);
    result = sub_22DEFF310(v9, type metadata accessor for ServiceEventValue);
    v22 = v56;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v23 <= v18 + 1)
  {
    v26 = v18 + 1;
  }

  else
  {
    v26 = v23;
  }

  v27 = v26 - 1;
  v25 = v55;
  while (1)
  {
    v28 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
      (*(*(v50 - 8) + 56))(v25, 1, 1, v50);
      v56 = 0;
      v18 = v27;
      goto LABEL_17;
    }

    v29 = *(v51 + 8 * v28);
    ++v18;
    if (v29)
    {
      v56 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v18 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22DEFADA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for XPCObject();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ServiceEventValue();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEFF2A8(a1, v7, type metadata accessor for XPCObject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_22DEFF310(a1, type metadata accessor for XPCObject);
        *v12 = *v7;
        goto LABEL_19;
      }

      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload <= 8)
  {
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_29;
      }

      sub_22DEFF310(a1, type metadata accessor for XPCObject);
      v22 = *(v7 + 1);
      *v12 = *v7;
      *(v12 + 1) = v22;
LABEL_19:
      swift_storeEnumTagMultiPayload();
      v20 = 0;
      v21 = 0;
      goto LABEL_20;
    }

LABEL_12:
    sub_22DEFF310(a1, type metadata accessor for XPCObject);
    *v12 = *v7;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 9)
  {
    sub_22DEFF310(a1, type metadata accessor for XPCObject);
    v23 = sub_22DF63604();
    (*(*(v23 - 8) + 32))(v12, v7, v23);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 11)
  {
    if (EnumCaseMultiPayload == 12)
    {
      v14 = *v7;
      v40 = sub_22DEFF370(MEMORY[0x277D84F90]);
      xpc_dictionary_get_count(v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47590, &unk_22DF65E20);
      sub_22DF63914();
      v15 = swift_allocObject();
      *(v15 + 16) = &v40;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_22DEFF534;
      *(v16 + 24) = v15;
      v38 = sub_22DEFF554;
      v39 = v16;
      aBlock = MEMORY[0x277D85DD0];
      v35 = 1107296256;
      v36 = sub_22DEFBBE8;
      v37 = &block_descriptor_0;
      v17 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      xpc_dictionary_apply(v14, v17);
      _Block_release(v17);
      swift_unknownObjectRelease_n();
      sub_22DEFF310(a1, type metadata accessor for XPCObject);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        *v12 = v40;
        swift_storeEnumTagMultiPayload();
        v20 = 0;
        v21 = sub_22DEFF534;
LABEL_20:
        sub_22DEFE894(v12, a2);
        (*(v9 + 56))(a2, 0, 1, v8);
        sub_22DEEB93C(v20);
        return sub_22DEEB93C(v21);
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_29:
    sub_22DEFF310(a1, type metadata accessor for XPCObject);
    sub_22DEFF310(v7, type metadata accessor for XPCObject);
    return (*(v9 + 56))(a2, 1, 1, v8);
  }

  v24 = *v7;
  count = xpc_array_get_count(*v7);
  v26 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || count > v26[3] >> 1)
  {
    if (v26[2] <= count)
    {
      v28 = count;
    }

    else
    {
      v28 = v26[2];
    }

    v26 = sub_22DEFDB40(isUniquelyReferenced_nonNull_native, v28, 0, v26);
  }

  v40 = v26;
  v29 = swift_allocObject();
  *(v29 + 16) = &v40;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_22DEFF598;
  *(v30 + 24) = v29;
  v38 = sub_22DEFF5BC;
  v39 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_22DEFB794;
  v37 = &block_descriptor_12;
  v31 = _Block_copy(&aBlock);

  xpc_array_apply(v24, v31);
  _Block_release(v31);
  swift_unknownObjectRelease();
  sub_22DEFF310(a1, type metadata accessor for XPCObject);
  v32 = swift_isEscapingClosureAtFileLocation();

  if ((v32 & 1) == 0)
  {
    *v12 = v40;
    swift_storeEnumTagMultiPayload();
    v21 = 0;
    v20 = sub_22DEFF598;
    goto LABEL_20;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22DEFB4C0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_11:
      result = sub_22DF63F54();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    sub_22DF63E94();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  *v1 = v3;
  return result;
}

uint64_t sub_22DEFB55C(uint64_t a1, void **a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC0, &unk_22DF65300);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = swift_unknownObjectRetain();
  XPCObject.init(_:)(v11, v6);
  v12 = type metadata accessor for XPCObject();
  result = (*(*(v12 - 8) + 48))(v6, 1, v12);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22DEFADA0(v6);
  v14 = type metadata accessor for ServiceEventValue();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v10, 1, v14);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v16 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_22DEFDB40(0, v16[2] + 1, 1, v16);
    *a2 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_22DEFDB40(v18 > 1, v19 + 1, 1, v16);
    *a2 = v16;
  }

  v16[2] = v19 + 1;
  return sub_22DEFE894(v10, v16 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v19);
}

uint64_t sub_22DEFB79C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v22 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC0, &unk_22DF65300);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = type metadata accessor for ServiceEventValue();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22DF63AA4();
  v18 = v17;
  v19 = swift_unknownObjectRetain();
  XPCObject.init(_:)(v19, v3);
  v20 = type metadata accessor for XPCObject();
  result = (*(*(v20 - 8) + 48))(v3, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_22DEFADA0(v3);
    result = (*(v12 + 48))(v10, 1, v11);
    if (result != 1)
    {
      sub_22DEFE894(v10, v15);
      sub_22DEFF2A8(v15, v8, type metadata accessor for ServiceEventValue);
      (*(v12 + 56))(v8, 0, 1, v11);
      sub_22DEFBA28(v8, v16, v18);
      return sub_22DEFF310(v15, type metadata accessor for ServiceEventValue);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22DEFBA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC0, &unk_22DF65300);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ServiceEventValue();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_22DEF1364(a1, &qword_27DA47BC0, &unk_22DF65300);
    sub_22DEFD9E8(a2, a3, v10);

    return sub_22DEF1364(v10, &qword_27DA47BC0, &unk_22DF65300);
  }

  else
  {
    sub_22DEFE894(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_22DEFDF04(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_22DEFBBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  v7 = v6(a2, a3);
  swift_unknownObjectRelease();
  return v7 & 1;
}

uint64_t sub_22DEFBC50()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_22DEFBC80@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_22DEFBC88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22DF64154();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22DEFBCD0(uint64_t a1)
{
  v2 = sub_22DEFF5E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DEFBD0C(uint64_t a1)
{
  v2 = sub_22DEFF5E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22DEFBD48(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47598, &qword_22DF65E30);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v83 = (&v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v8 = (&v73 - v7);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA475A0, &qword_22DF65E38);
  v73 = *(v78 - 8);
  v9 = *(v73 + 64);
  MEMORY[0x28223BE20](v78);
  v79 = &v73 - v10;
  v11 = sub_22DF63604();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ServiceEventValue();
  v80 = *(v16 - 8);
  v17 = *(v80 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v77 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v76 = &v73 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v73 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = (&v73 - v25);
  sub_22DEFF2A8(v82, &v73 - v25, type metadata accessor for ServiceEventValue);
  v82 = v16;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v33 = *v26;
        v34 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_22DF64324();
        __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
        sub_22DF641F4();
      }

      else
      {
        v43 = *v26;
        v44 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_22DF64324();
        __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
        sub_22DF641D4();
      }

      return __swift_destroy_boxed_opaque_existential_0(v84);
    }

    if (!EnumCaseMultiPayload)
    {
      v29 = *v26;
      v28 = v26[1];
      v30 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_22DF64324();
      __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
      sub_22DF641B4();
LABEL_19:

      return __swift_destroy_boxed_opaque_existential_0(v84);
    }

    v40 = *v26;
    v41 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22DF64324();
    __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
    sub_22DF641E4();
    return __swift_destroy_boxed_opaque_existential_0(v84);
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      (*(v12 + 32))(v15, v26, v11);
      v42 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_22DF64324();
      sub_22DF635A4();
      __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
      sub_22DF641B4();
      (*(v12 + 8))(v15, v11);
      goto LABEL_19;
    }

    v31 = *v26;
    v32 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22DF64324();
    __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
    sub_22DF641C4();
    return __swift_destroy_boxed_opaque_existential_0(v84);
  }

  if (EnumCaseMultiPayload == 6)
  {
    v35 = *v26;
    v36 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = sub_22DF64314();
    v38 = *(v35 + 16);
    if (!v38)
    {
      goto LABEL_19;
    }

    v39 = 0;
    while (v39 < *(v35 + 16))
    {
      sub_22DEFF2A8(v35 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v39, v24, type metadata accessor for ServiceEventValue);
      __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
      sub_22DEFF63C();
      sub_22DF64174();
      if (v1)
      {
        sub_22DEFF310(v24, type metadata accessor for ServiceEventValue);
        goto LABEL_19;
      }

      ++v39;
      result = sub_22DEFF310(v24, type metadata accessor for ServiceEventValue);
      if (v38 == v39)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_44;
  }

  v45 = *v26;
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DEFF5E8();
  result = sub_22DF64334();
  v47 = 0;
  v49 = v45 + 64;
  v48 = *(v45 + 64);
  v74 = v8;
  v75 = v45;
  v50 = 1 << *(v45 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & v48;
  v53 = (v50 + 63) >> 6;
  v81 = v1;
  if ((v51 & v48) == 0)
  {
LABEL_26:
    if (v53 <= v47 + 1)
    {
      v55 = v47 + 1;
    }

    else
    {
      v55 = v53;
    }

    v56 = v55 - 1;
    while (1)
    {
      v54 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v54 >= v53)
      {
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
        (*(*(v72 - 8) + 56))(v83, 1, 1, v72);
        v52 = 0;
        goto LABEL_34;
      }

      v52 = *(v49 + 8 * v54);
      ++v47;
      if (v52)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  while (1)
  {
    v54 = v47;
LABEL_33:
    v57 = __clz(__rbit64(v52));
    v52 &= v52 - 1;
    v58 = v57 | (v54 << 6);
    v59 = v76;
    v60 = (*(v75 + 48) + 16 * v58);
    v61 = *v60;
    v62 = v60[1];
    sub_22DEFF2A8(*(v75 + 56) + *(v80 + 72) * v58, v76, type metadata accessor for ServiceEventValue);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
    v64 = *(v63 + 48);
    v65 = v83;
    *v83 = v61;
    v65[1] = v62;
    sub_22DEFE894(v59, v65 + v64);
    (*(*(v63 - 8) + 56))(v65, 0, 1, v63);

    v56 = v54;
    v8 = v74;
LABEL_34:
    sub_22DEFFC08(v83, v8, &qword_27DA47598, &qword_22DF65E30);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
    if ((*(*(v66 - 8) + 48))(v8, 1, v66) == 1)
    {

      return (*(v73 + 8))(v79, v78);
    }

    v67 = v56;
    v69 = *v8;
    v68 = v8[1];
    v70 = v77;
    sub_22DEFE894(v8 + *(v66 + 48), v77);
    v84[0] = v69;
    v84[1] = v68;
    sub_22DEFF63C();
    v71 = v81;
    sub_22DF64134();
    if (v71)
    {
      break;
    }

    result = sub_22DEFF310(v70, type metadata accessor for ServiceEventValue);
    v47 = v67;
    v81 = 0;
    if (!v52)
    {
      goto LABEL_26;
    }
  }

  sub_22DEFF310(v70, type metadata accessor for ServiceEventValue);
  return (*(v73 + 8))(v79, v78);
}

id sub_22DEFC730()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47598, &qword_22DF65E30);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = (&v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v86 = (&v79 - v6);
  v7 = sub_22DF63604();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServiceEventValue();
  v85 = *(v12 - 8);
  v13 = *(v85 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v87 = &v79 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v84 = &v79 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v79 - v21;
  sub_22DEFF2A8(v0, &v79 - v21, type metadata accessor for ServiceEventValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
      }

      else
      {
        return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      }
    }

    if (EnumCaseMultiPayload)
    {
      return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    }

    v24 = *v22;
    v25 = *(v22 + 1);
    v26 = sub_22DF63984();
LABEL_49:
    v78 = v26;

    return v78;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    }

    (*(v8 + 32))(v11, v22, v7);
    v34 = sub_22DF635B4();
    (*(v8 + 8))(v11, v7);
    return v34;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v28 = *v22;
    v88 = MEMORY[0x277D84F90];
    sub_22DEFB4C0(*(v28 + 16));
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = v28 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
      v31 = *(v85 + 72);
      do
      {
        v32 = sub_22DEFF2A8(v30, v16, type metadata accessor for ServiceEventValue);
        sub_22DEFC730(v32);
        MEMORY[0x2318DCAF0]();
        if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v33 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22DF63B94();
        }

        sub_22DF63BB4();
        sub_22DEFF310(v16, type metadata accessor for ServiceEventValue);
        v30 += v31;
        --v29;
      }

      while (v29);
    }

    sub_22DEF7E20(0, &qword_27DA475C0, 0x277D82BB8);
    v26 = sub_22DF63B74();
    goto LABEL_49;
  }

  v35 = *v22;
  v36 = *(*v22 + 16);
  v79 = sub_22DEF7E20(0, &qword_27DA475C0, 0x277D82BB8);
  v37 = MEMORY[0x2318DC890](v36, MEMORY[0x277D837D0]);
  v38 = 0;
  v39 = *(v35 + 64);
  v80 = v35 + 64;
  v81 = v35;
  v40 = 1 << *(v35 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & v39;
  v43 = (v40 + 63) >> 6;
  v82 = v5;
  v83 = v43;
  while (v42)
  {
    v46 = v38;
LABEL_34:
    v49 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v50 = v49 | (v46 << 6);
    v51 = (*(v81 + 48) + 16 * v50);
    v53 = *v51;
    v52 = v51[1];
    v54 = v84;
    sub_22DEFF2A8(*(v81 + 56) + *(v85 + 72) * v50, v84, type metadata accessor for ServiceEventValue);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
    v56 = *(v55 + 48);
    *v5 = v53;
    v5[1] = v52;
    sub_22DEFE894(v54, v5 + v56);
    (*(*(v55 - 8) + 56))(v5, 0, 1, v55);

    v48 = v46;
LABEL_35:
    v57 = v86;
    sub_22DEFFC08(v5, v86, &qword_27DA47598, &qword_22DF65E30);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
    if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
    {

      v34 = sub_22DF638C4();

      return v34;
    }

    v60 = *v57;
    v59 = v57[1];
    v61 = sub_22DEFE894(v57 + *(v58 + 48), v87);
    v62 = sub_22DEFC730(v61);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v37;
    v65 = sub_22DEF08FC(v60, v59);
    v66 = v37[2];
    v67 = (v64 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      goto LABEL_53;
    }

    v69 = v64;
    if (v37[3] >= v68)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v64)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_22DEFD87C();
        if (v69)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_22DEFD394(v68, isUniquelyReferenced_nonNull_native);
      v70 = sub_22DEF08FC(v60, v59);
      if ((v69 & 1) != (v71 & 1))
      {
        goto LABEL_55;
      }

      v65 = v70;
      if (v69)
      {
LABEL_23:

        v37 = v88;
        v44 = *(v88 + 56);
        v45 = *(v44 + 8 * v65);
        *(v44 + 8 * v65) = v62;

        sub_22DEFF310(v87, type metadata accessor for ServiceEventValue);
        goto LABEL_24;
      }
    }

    v72 = v87;
    v37 = v88;
    *(v88 + 8 * (v65 >> 6) + 64) |= 1 << v65;
    v73 = (v37[6] + 16 * v65);
    *v73 = v60;
    v73[1] = v59;
    *(v37[7] + 8 * v65) = v62;
    sub_22DEFF310(v72, type metadata accessor for ServiceEventValue);
    v74 = v37[2];
    v75 = __OFADD__(v74, 1);
    v76 = v74 + 1;
    if (v75)
    {
      goto LABEL_54;
    }

    v37[2] = v76;
LABEL_24:
    v38 = v48;
    v5 = v82;
    v43 = v83;
  }

  if (v43 <= v38 + 1)
  {
    v47 = v38 + 1;
  }

  else
  {
    v47 = v43;
  }

  v48 = v47 - 1;
  while (1)
  {
    v46 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v46 >= v43)
    {
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
      (*(*(v77 - 8) + 56))(v5, 1, 1, v77);
      v42 = 0;
      goto LABEL_35;
    }

    v42 = *(v80 + 8 * v46);
    ++v38;
    if (v42)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_22DF64234();
  __break(1u);
  return result;
}

uint64_t sub_22DEFCFA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47620, &unk_22DF660E0);
  v7 = *a1;
  v6 = a1[1];
  sub_22DEFF2A8(a1 + v4, a2 + *(v5 + 48), type metadata accessor for ServiceEventValue);
  *a2 = v7;
  a2[1] = v6;
}

uint64_t sub_22DEFD044(uint64_t a1, int a2)
{
  v3 = v2;
  v42 = *(type metadata accessor for ServiceEventValue() - 8);
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20]();
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v9 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47618, &unk_22DF68C30);
  v43 = a2;
  result = sub_22DF64034();
  v11 = result;
  if (*(v8 + 16))
  {
    v40 = v3;
    v41 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = *(v8 + 56);
      v26 = (*(v8 + 48) + 16 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = *(v42 + 72);
      v30 = v25 + v29 * v24;
      if (v43)
      {
        sub_22DEFE894(v30, v44);
      }

      else
      {
        sub_22DEFF2A8(v30, v44, type metadata accessor for ServiceEventValue);
      }

      v31 = *(v11 + 40);
      sub_22DF642A4();
      sub_22DF63A54();
      result = sub_22DF642D4();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v27;
      v20[1] = v28;
      result = sub_22DEFE894(v44, *(v11 + 56) + v29 * v19);
      ++*(v11 + 16);
      v8 = v41;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v8 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v3 = v11;
  return result;
}

uint64_t sub_22DEFD394(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA475F8, qword_22DF67590);
  v39 = a2;
  result = sub_22DF64034();
  v8 = result;
  if (*(v5 + 16))
  {
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_22DF642A4();
      sub_22DF63A54();
      result = sub_22DF642D4();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_22DEFD638()
{
  v1 = v0;
  v31 = *(type metadata accessor for ServiceEventValue() - 8);
  v2 = *(v31 + 64);
  MEMORY[0x28223BE20]();
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47618, &unk_22DF68C30);
  v4 = *v0;
  v5 = sub_22DF64024();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_22DEFF2A8(*(v4 + 56) + v26, v30, type metadata accessor for ServiceEventValue);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_22DEFE894(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_22DEFD87C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA475F8, qword_22DF67590);
  v2 = *v0;
  v3 = sub_22DF64024();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22DEFD9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22DEF08FC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22DEFD638();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for ServiceEventValue();
    v22 = *(v15 - 8);
    sub_22DEFE894(v14 + *(v22 + 72) * v9, a3);
    sub_22DEFDD18(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for ServiceEventValue();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

size_t sub_22DEFDB40(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47610, &unk_22DF660D0);
  v10 = *(type metadata accessor for ServiceEventValue() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ServiceEventValue() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_22DEFDD18(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22DF63E64() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22DF642A4();

      sub_22DF63A54();
      v13 = sub_22DF642D4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for ServiceEventValue() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22DEFDF04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22DEF08FC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_22DEFD638();
      goto LABEL_7;
    }

    sub_22DEFD044(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_22DEF08FC(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22DF64234();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for ServiceEventValue() - 8) + 72) * v12;

    return sub_22DEFFB1C(a1, v20);
  }

LABEL_13:
  sub_22DEFE068(v12, a2, a3, a1, v18);
}

uint64_t sub_22DEFE068(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ServiceEventValue();
  result = sub_22DEFE894(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

uint64_t sub_22DEFE100@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - v5;
  v7 = type metadata accessor for ServiceEventValue();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47598, &qword_22DF65E30);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v44 - v17);
  v19 = *v1;
  v20 = v1[1];
  v22 = v1[2];
  v21 = v1[3];
  v23 = v1[4];
  v44 = v6;
  v49 = v22;
  if (v23)
  {
    v45 = a1;
    v24 = v21;
LABEL_11:
    v28 = (v23 - 1) & v23;
    v29 = __clz(__rbit64(v23)) | (v24 << 6);
    v30 = (*(v19 + 48) + 16 * v29);
    v32 = *v30;
    v31 = v30[1];
    sub_22DEFF2A8(*(v19 + 56) + *(v46 + 72) * v29, v10, type metadata accessor for ServiceEventValue);
    v33 = v48;
    v34 = *(v48 + 48);
    *v18 = v32;
    v18[1] = v31;
    v35 = v10;
    v36 = v33;
    sub_22DEFE894(v35, v18 + v34);
    v37 = v47;
    (*(v47 + 56))(v18, 0, 1, v36);

    v27 = v24;
    v38 = v37;
    a1 = v45;
LABEL_12:
    *v1 = v19;
    v1[1] = v20;
    v1[2] = v49;
    v1[3] = v27;
    v1[4] = v28;
    v39 = v1[5];
    v40 = v1[6];
    sub_22DEFFC08(v18, v15, &qword_27DA47598, &qword_22DF65E30);
    v41 = 1;
    if ((*(v38 + 48))(v15, 1, v36) != 1)
    {
      v42 = v44;
      sub_22DEFFC08(v15, v44, &unk_27DA475B0, qword_22DF65E40);
      v39(v42);
      sub_22DEF1364(v42, &unk_27DA475B0, qword_22DF65E40);
      v41 = 0;
    }

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47620, &unk_22DF660E0);
    return (*(*(v43 - 8) + 56))(a1, v41, 1, v43);
  }

  else
  {
    v25 = (v22 + 64) >> 6;
    if (v25 <= v21 + 1)
    {
      v26 = v21 + 1;
    }

    else
    {
      v26 = (v22 + 64) >> 6;
    }

    v27 = v26 - 1;
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= v25)
      {
        v38 = v47;
        v36 = v48;
        (*(v47 + 56))(&v44 - v17, 1, 1, v48);
        v28 = 0;
        goto LABEL_12;
      }

      v23 = *(v20 + 8 * v24);
      ++v21;
      if (v23)
      {
        v45 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22DEFE4C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for ServiceEventValue();
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v48 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47648, &unk_22DF66100);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v47 - v18);
  v20 = -1 << *(a1 + 32);
  v21 = ~v20;
  v22 = *(a1 + 64);
  v23 = -v20;
  v49 = a1;
  v50 = a1 + 64;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v51 = v21;
  v52 = 0;
  v53 = v24 & v22;
  v54 = a2;
  v55 = a3;

  v47 = a3;

  while (1)
  {
    sub_22DEFE100(v19);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47620, &unk_22DF660E0);
    if ((*(*(v27 - 8) + 48))(v19, 1, v27) == 1)
    {
      sub_22DEFFC00();
    }

    v28 = *(v27 + 48);
    v29 = *v19;
    v30 = v19[1];
    sub_22DEFE894(v19 + v28, v15);
    v31 = *a5;
    v33 = sub_22DEF08FC(v29, v30);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (v31[3] >= v36)
    {
      if (a4)
      {
        v41 = *a5;
        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_22DEFD638();
        v41 = *a5;
        if ((v37 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      v25 = *(v56 + 72) * v33;
      v26 = v48;
      sub_22DEFF2A8(v41[7] + v25, v48, type metadata accessor for ServiceEventValue);
      sub_22DEFF310(v15, type metadata accessor for ServiceEventValue);

      sub_22DEFFB1C(v26, v41[7] + v25);
      a4 = 1;
    }

    else
    {
      sub_22DEFD044(v36, a4 & 1);
      v38 = *a5;
      v39 = sub_22DEF08FC(v29, v30);
      if ((v37 & 1) != (v40 & 1))
      {
        goto LABEL_21;
      }

      v33 = v39;
      v41 = *a5;
      if (v37)
      {
        goto LABEL_5;
      }

LABEL_14:
      v41[(v33 >> 6) + 8] |= 1 << v33;
      v42 = (v41[6] + 16 * v33);
      *v42 = v29;
      v42[1] = v30;
      sub_22DEFE894(v15, v41[7] + *(v56 + 72) * v33);
      v43 = v41[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_20;
      }

      v41[2] = v45;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22DF64234();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ServiceEventValue()
{
  result = qword_27DA49390;
  if (!qword_27DA49390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DEFE894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEventValue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}