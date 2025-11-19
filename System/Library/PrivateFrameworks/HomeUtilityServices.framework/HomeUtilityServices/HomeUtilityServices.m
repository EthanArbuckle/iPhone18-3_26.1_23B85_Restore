uint64_t sub_20DF63D40()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20DF63E0C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20DF63E54()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20DF63E94()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20DF63F14@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_alternateSupplier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_20DF63FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20E008ED4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8) >> 60;
    v13 = ((4 * v12) & 0xC) == 0;
    v14 = ((4 * v12) & 0xC | (v12 >> 2)) ^ 0xF;
    if (v13)
    {
      return 0;
    }

    else
    {
      return v14;
    }
  }
}

uint64_t sub_20DF6406C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20E008ED4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v13 = (a1 + *(a4 + 24));
    *v13 = 0;
    v13[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_20DF64138(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20E008ED4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20DF641E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_20E008ED4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20DF64288(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20E008ED4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_20DF64334(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_20E008ED4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20DF643D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852CE8, &qword_20E00EA90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20DF6446C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20DF644F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20DF645B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20DF64664()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20DF646C4()
{
  _Block_release(*(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20DF64730()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20DF647E0()
{
  v1 = sub_20E008CD4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 5);

  v8 = *(v0 + 7);

  v9 = *(v0 + 9);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20DF648D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20DF64938()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534A0, &unk_20E012B58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20DF649CC(int a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  (*(v3 + 2))(v3, 0, 0);
  _Block_release(v3);
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_20DF64A4C(int a1, int a2, int a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  (*(v5 + 2))(v5, 0, 0);
  _Block_release(v5);
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_20DF64ACC()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20DF64B24()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20DF64B5C()
{
  _Block_release(*(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20DF64BC8()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20DF64D38()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20DF64DE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_20DF67FFC(a1, a2);
  }

  return a1;
}

uint64_t sub_20DF64E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v7 = sub_20E008714();
  v5[16] = v7;
  v8 = *(v7 - 8);
  v5[17] = v8;
  v9 = *(v8 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v11 = sub_20E008AF4();
  v5[21] = v11;
  v12 = *(v11 - 8);
  v5[22] = v12;
  v13 = *(v12 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF64FB8, 0, 0);
}

uint64_t sub_20DF64FB8()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v5 = v0[11];
  v4 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E00AB50;
  *(inited + 32) = 1701603700;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v5;
  *(inited + 56) = v4;

  v7 = sub_20DF74E1C(inited);
  v0[25] = v7;
  swift_setDeallocating();
  sub_20DF66E28(inited + 32, &qword_27C852140, &qword_20E011050);
  KeyPath = swift_getKeyPath();
  v0[26] = KeyPath;
  sub_20DF85FEC(KeyPath, v7);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v0[20], &qword_27C8520D0, &qword_20E00AB70);
    if (qword_281123100 != -1)
    {
      swift_once();
    }

    v9 = sub_20E009094();
    __swift_project_value_buffer(v9, qword_281124A48);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20DF62000, v10, v11, "Request URL for Utility Territory Lookup API not found", v12, 2u);
      MEMORY[0x20F32B3A0](v12, -1, -1);
    }

    v13 = v0[23];
    v14 = v0[24];
    v16 = v0[19];
    v15 = v0[20];
    v17 = v0[18];
    v18 = v0[15];
    (*(v0[17] + 56))(v0[10], 1, 1, v0[16]);

    v19 = v0[1];

    return v19();
  }

  else
  {
    v22 = v0[23];
    v21 = v0[24];
    v23 = v0[21];
    v24 = v0[22];
    v25 = v0[19];
    v26 = v0[14];
    (*(v24 + 32))(v21, v0[20], v23);
    (*(v24 + 16))(v22, v21, v23);
    sub_20E0086B4();
    sub_20E008694();
    if (v26)
    {
      v27 = v0[14];
      v28 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v28 = v0[13] & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        v29 = v0[19];
        sub_20E0086D4();
      }
    }

    v30 = v0[19];
    sub_20DFDF668(v0[18]);
    v31 = swift_task_alloc();
    v0[27] = v31;
    *v31 = v0;
    v31[1] = sub_20DF65390;
    v32 = v0[18];
    v33 = v0[15];

    return (sub_20DF83234)(v33, v32, KeyPath, v7);
  }
}

uint64_t sub_20DF65390()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 216);
  v5 = *v1;

  v6 = v2[18];
  v7 = v2[17];
  v8 = v2[16];
  if (v0)
  {

    v9 = *(v7 + 8);
    v3[30] = v9;
    v9(v6, v8);
    v10 = sub_20DF65810;
  }

  else
  {
    v11 = *(v7 + 8);
    v3[28] = v11;
    v3[29] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v6, v8);
    v10 = sub_20DF65534;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_20DF65534()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[28];
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_281123100 != -1)
    {
      swift_once();
    }

    v5 = sub_20E009094();
    __swift_project_value_buffer(v5, qword_281124A48);
    v6 = sub_20E009074();
    v7 = sub_20E009544();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20DF62000, v6, v7, "Unable to sign Utility Geohash Lookup request", v8, 2u);
      MEMORY[0x20F32B3A0](v8, -1, -1);
    }

    v10 = v0[25];
    v9 = v0[26];
    v11 = v0[24];
    v12 = v0[21];
    v13 = v0[22];
    v14 = v0[19];
    v15 = v0[16];
    v16 = v0[17];

    v4(v14, v15);
    (*(v13 + 8))(v11, v12);
    v17 = 1;
  }

  else
  {
    v19 = v0[28];
    v18 = v0[29];
    v21 = v0[25];
    v20 = v0[26];
    v33 = v0[24];
    v22 = v0[22];
    v32 = v0[21];
    v23 = v0[19];
    (*(v2 + 32))(v0[10], v3, v1);
    sub_20E008704();

    v19(v23, v1);
    (*(v22 + 8))(v33, v32);
    v17 = 0;
  }

  v24 = v0[23];
  v25 = v0[24];
  v27 = v0[19];
  v26 = v0[20];
  v28 = v0[18];
  v29 = v0[15];
  (*(v0[17] + 56))(v0[10], v17, 1, v0[16]);

  v30 = v0[1];

  return v30();
}

uint64_t sub_20DF65810()
{
  (*(v0[17] + 56))(v0[15], 1, 1, v0[16]);
  v1 = v0[30];
  sub_20DF66E28(v0[15], &qword_27C8520C8, &qword_20E010830);
  if (qword_281123100 != -1)
  {
    swift_once();
  }

  v2 = sub_20E009094();
  __swift_project_value_buffer(v2, qword_281124A48);
  v3 = sub_20E009074();
  v4 = sub_20E009544();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20DF62000, v3, v4, "Unable to sign Utility Geohash Lookup request", v5, 2u);
    MEMORY[0x20F32B3A0](v5, -1, -1);
  }

  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  v9 = v0[21];
  v10 = v0[22];
  v11 = v0[19];
  v12 = v0[16];
  v13 = v0[17];

  v1(v11, v12);
  (*(v10 + 8))(v8, v9);
  v14 = v0[23];
  v15 = v0[24];
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[18];
  v19 = v0[15];
  (*(v0[17] + 56))(v0[10], 1, 1, v0[16]);

  v20 = v0[1];

  return v20();
}

uint64_t sub_20DF65A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v7 = sub_20E008714();
  v5[16] = v7;
  v8 = *(v7 - 8);
  v5[17] = v8;
  v9 = *(v8 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v10 = sub_20E008AF4();
  v5[20] = v10;
  v11 = *(v10 - 8);
  v5[21] = v11;
  v12 = *(v11 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70) - 8) + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF65C30, 0, 0);
}

uint64_t sub_20DF65C30()
{
  v1 = v0;
  v3 = v0[30];
  v2 = v0 + 30;
  v5 = v2[1];
  v4 = v2[2];
  v6 = *(v2 - 10);
  v7 = *(v2 - 9);
  v8 = *(v2 - 19);
  v9 = *(v2 - 18);
  v81 = *(v7 + 56);
  v81(v4, 1, 1, v6);
  KeyPath = swift_getKeyPath();
  v2[3] = KeyPath;
  v84 = KeyPath;
  sub_20DF85FEC(KeyPath, 0);
  sub_20DF66E28(v4, &qword_27C8520D0, &qword_20E00AB70);
  sub_20DF66D10(v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
  inited = swift_initStackObject();
  v2[4] = inited;
  *(inited + 16) = xmmword_20E00AB50;
  *(inited + 32) = 0x6E6F69676572;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  sub_20DF66D80(v4, v3);
  v12 = *(v7 + 48);
  if (v12(v3, 1, v6) == 1)
  {
    v13 = v1[12];

LABEL_7:
    sub_20DF66E28(*v2, &qword_27C8520D0, &qword_20E00AB70);
    if (qword_281123100 != -1)
    {
      swift_once();
    }

    v25 = sub_20E009094();
    __swift_project_value_buffer(v25, qword_281124A48);
    v26 = sub_20E009074();
    v27 = sub_20E009544();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20DF62000, v26, v27, "Unable to create All Utilities In Region URL with required query parameters", v28, 2u);
      MEMORY[0x20F32B3A0](v28, -1, -1);
    }

    v29 = v1[32];
    v31 = v1[16];
    v30 = v1[17];
    v32 = v1[10];

    sub_20DF66E28(v29, &qword_27C8520D0, &qword_20E00AB70);
    (*(v30 + 56))(v32, 1, 1, v31);
LABEL_12:
    v34 = v1[31];
    v33 = v1[32];
    v36 = v1[29];
    v35 = v1[30];
    v38 = v1[27];
    v37 = v1[28];
    v40 = v1[25];
    v39 = v1[26];
    v41 = v1[23];
    v42 = v1[24];
    v80 = v1[22];
    v82 = v1[19];
    v83 = v1[18];
    v85 = v1[15];

    v43 = v1[1];

    return v43();
  }

  v14 = v1[28];
  v15 = v1[20];
  v16 = v1[21];
  v17 = v1[12];
  v79 = *(v16 + 32);
  (v79)(v1[26], v1[30], v15);

  sub_20E008A54();
  sub_20E008AC4();
  v78 = v12;
  v18 = v12(v14, 1, v15);
  v19 = (v16 + 8);
  v2 = v1 + 29;
  v20 = v1[29];
  v21 = v1[28];
  if (v18 == 1)
  {
    v22 = v1[20];

    sub_20DF66E28(v21, &qword_27C8520D0, &qword_20E00AB70);
    v81(v20, 1, 1, v22);
    (*v19)(v1[26], v1[20]);
    goto LABEL_7;
  }

  v23 = v1[24];
  v77 = v1[20];
  v79(v23, v21);
  sub_20DFE91DC(inited, 1, 0, v20);

  v24 = *v19;
  v1[35] = *v19;
  v1[36] = v19 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v23, v77);
  if (v78(v20, 1, v77) == 1)
  {
    v24(v1[26], v1[20]);
    goto LABEL_7;
  }

  v45 = v1[32];
  v46 = v1[29];
  v47 = v1[27];
  v48 = v1[25];
  v50 = v1[20];
  v49 = v1[21];
  sub_20DF66E28(v45, &qword_27C8520D0, &qword_20E00AB70);
  (v79)(v48, v46, v50);
  v51 = *(v49 + 16);
  v51(v45, v48, v50);
  v81(v45, 0, 1, v50);
  sub_20DF66D80(v45, v47);
  v52 = v78(v47, 1, v50);
  v53 = v1[27];
  if (v52 == 1)
  {
    sub_20DF66E28(v1[27], &qword_27C8520D0, &qword_20E00AB70);
    if (qword_281123100 != -1)
    {
      swift_once();
    }

    v54 = sub_20E009094();
    __swift_project_value_buffer(v54, qword_281124A48);
    v55 = sub_20E009074();
    v56 = sub_20E009544();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_20DF62000, v55, v56, "Request URL for Utility Configuration API not found", v57, 2u);
      MEMORY[0x20F32B3A0](v57, -1, -1);
    }

    v58 = v1[32];
    v60 = v1[25];
    v59 = v1[26];
    v61 = v1[20];
    v63 = v1[16];
    v62 = v1[17];
    v64 = v1[10];

    v24(v60, v61);
    v24(v59, v61);
    sub_20DF66E28(v58, &qword_27C8520D0, &qword_20E00AB70);
    (*(v62 + 56))(v64, 1, 1, v63);
    goto LABEL_12;
  }

  v66 = v1[22];
  v65 = v1[23];
  v67 = v51;
  v68 = v1[20];
  v69 = v1[14];
  (v79)(v65, v1[27], v68);
  v67(v66, v65, v68);
  sub_20E0086B4();
  sub_20E008694();
  if (v69)
  {
    v70 = v1[14];
    v71 = HIBYTE(v70) & 0xF;
    if ((v70 & 0x2000000000000000) == 0)
    {
      v71 = v1[13] & 0xFFFFFFFFFFFFLL;
    }

    if (v71)
    {
      v72 = v1[19];
      sub_20E0086D4();
    }
  }

  v73 = v1[19];
  sub_20DFDF668(v1[18]);
  v74 = swift_task_alloc();
  v1[37] = v74;
  *v74 = v1;
  v74[1] = sub_20DF66444;
  v75 = v1[18];
  v76 = v1[15];

  return (sub_20DF83234)(v76, v75, v84, 0);
}

uint64_t sub_20DF66444()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 296);
  v5 = *v1;

  v6 = v2[18];
  v7 = v2[17];
  v8 = v2[16];
  if (v0)
  {

    v9 = *(v7 + 8);
    v3[40] = v9;
    v9(v6, v8);
    v10 = sub_20DF66998;
  }

  else
  {
    v11 = *(v7 + 8);
    v3[38] = v11;
    v3[39] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v6, v8);
    v10 = sub_20DF665E8;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_20DF665E8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v47 = v0[38];
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_281123100 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_281124A48);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to sign Utilities in Region request", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v9 = v0[35];
    v8 = v0[36];
    v10 = v0[33];
    v11 = v0[25];
    v38 = v0[26];
    v12 = v0[23];
    v14 = v0[19];
    v13 = v0[20];
    v16 = v0[16];
    v15 = v0[17];
    v41 = v0[10];
    v44 = v0[32];

    v47(v14, v16);
    v9(v12, v13);
    v9(v11, v13);
    v9(v38, v13);
    sub_20DF66E28(v44, &qword_27C8520D0, &qword_20E00AB70);
    (*(v15 + 56))(v41, 1, 1, v16);
  }

  else
  {
    v37 = v0[38];
    v39 = v0[39];
    v18 = v0[35];
    v17 = v0[36];
    v19 = v0[33];
    v20 = v0[26];
    v45 = v20;
    v48 = v0[32];
    v42 = v0[25];
    v36 = v0[23];
    v22 = v0[19];
    v21 = v0[20];
    v23 = v0[10];
    (*(v2 + 32))(v23, v3, v1);
    sub_20E008704();

    v37(v22, v1);
    v18(v36, v21);
    v18(v42, v21);
    v18(v45, v21);
    sub_20DF66E28(v48, &qword_27C8520D0, &qword_20E00AB70);
    (*(v2 + 56))(v23, 0, 1, v1);
  }

  v25 = v0[31];
  v24 = v0[32];
  v27 = v0[29];
  v26 = v0[30];
  v29 = v0[27];
  v28 = v0[28];
  v31 = v0[25];
  v30 = v0[26];
  v33 = v0[23];
  v32 = v0[24];
  v40 = v0[22];
  v43 = v0[19];
  v46 = v0[18];
  v49 = v0[15];

  v34 = v0[1];

  return v34();
}

uint64_t sub_20DF66998()
{
  (*(v0[17] + 56))(v0[15], 1, 1, v0[16]);
  v32 = v0[40];
  sub_20DF66E28(v0[15], &qword_27C8520C8, &qword_20E010830);
  if (qword_281123100 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_281124A48);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "Unable to sign Utilities in Region request", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[33];
  v8 = v0[25];
  v26 = v0[26];
  v9 = v0[23];
  v11 = v0[19];
  v10 = v0[20];
  v13 = v0[16];
  v12 = v0[17];
  v28 = v0[10];
  v30 = v0[32];

  v32(v11, v13);
  v6(v9, v10);
  v6(v8, v10);
  v6(v26, v10);
  sub_20DF66E28(v30, &qword_27C8520D0, &qword_20E00AB70);
  (*(v12 + 56))(v28, 1, 1, v13);
  v15 = v0[31];
  v14 = v0[32];
  v17 = v0[29];
  v16 = v0[30];
  v19 = v0[27];
  v18 = v0[28];
  v21 = v0[25];
  v20 = v0[26];
  v23 = v0[23];
  v22 = v0[24];
  v27 = v0[22];
  v29 = v0[19];
  v31 = v0[18];
  v33 = v0[15];

  v24 = v0[1];

  return v24();
}

BOOL sub_20DF66C4C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_20DF66CA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
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

uint64_t sub_20DF66D10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DF66D80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_20DF66E28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_20DF66EE8(uint64_t a1, int a2)
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

uint64_t sub_20DF66F08(uint64_t result, int a2, int a3)
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

void sub_20DF66F58(uint64_t a1, unint64_t *a2)
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

uint64_t sub_20DF66FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x277D85DE8];
  v8[11] = a8;
  v8[12] = v21;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v8[5] = a2;
  v8[6] = a3;
  v8[4] = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  v10 = sub_20E008714();
  v8[14] = v10;
  v11 = *(v10 - 8);
  v8[15] = v11;
  v12 = *(v11 + 64) + 15;
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70) - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v14 = sub_20E008AF4();
  v8[20] = v14;
  v15 = *(v14 - 8);
  v8[21] = v15;
  v16 = *(v15 + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v17 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20DF671A4, 0, 0);
}

uint64_t sub_20DF671A4()
{
  v72 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  sub_20DF85FEC(*(v0 + 88), *(v0 + 96));
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(*(v0 + 152), &qword_27C8520D0, &qword_20E00AB70);
    if (qword_27C852080 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8626E0);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Request URL for Token API not found", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v8 = *(v0 + 112);
    v9 = *(v0 + 120);
    v10 = *(v0 + 32);

    (*(v9 + 56))(v10, 1, 1, v8);
    goto LABEL_25;
  }

  v11 = *(v0 + 48);
  (*(*(v0 + 168) + 32))(*(v0 + 184), *(v0 + 152), *(v0 + 160));
  *(v0 + 16) = MEMORY[0x277D84F98];
  if (v11)
  {
    v13 = *(v0 + 40);
    v12 = *(v0 + 48);

    sub_20DF83B60(v13, v12, 0xD000000000000011, 0x800000020E014AC0);
    v14 = *(v0 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = 0xD000000000000012;
    v17 = 0x800000020E014AE0;
  }

  else
  {
    v18 = *(v0 + 64);
    if (!v18)
    {
      if (qword_27C852080 != -1)
      {
        swift_once();
      }

      v50 = sub_20E009094();
      __swift_project_value_buffer(v50, qword_27C8626E0);
      v46 = sub_20E009074();
      v47 = sub_20E009544();
      if (!os_log_type_enabled(v46, v47))
      {
        goto LABEL_24;
      }

      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "No authorization code or refresh token provided";
      goto LABEL_23;
    }

    v19 = *(v0 + 56);
    v20 = *(v0 + 64);

    sub_20DF83B60(v19, v18, 0x5468736572666572, 0xEC0000006E656B6FLL);
    v21 = *(v0 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = 0x5F48534552464552;
    v17 = 0xED00004E454B4F54;
  }

  sub_20DF8564C(v16, v17, 0x707954746E617267, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v22 = objc_opt_self();
  v23 = sub_20E009154();

  *(v0 + 24) = 0;
  v24 = [v22 dataWithJSONObject:v23 options:0 error:v0 + 24];

  v25 = *(v0 + 24);
  if (!v24)
  {
    v43 = v25;
    v44 = sub_20E008A34();

    swift_willThrow();
    if (qword_27C852080 != -1)
    {
      swift_once();
    }

    v45 = sub_20E009094();
    __swift_project_value_buffer(v45, qword_27C8626E0);
    v46 = sub_20E009074();
    v47 = sub_20E009544();
    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_24;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = "Unable to encode Token request body";
LABEL_23:
    _os_log_impl(&dword_20DF62000, v46, v47, v49, v48, 2u);
    MEMORY[0x20F32B3A0](v48, -1, -1);
LABEL_24:
    v51 = *(v0 + 184);
    v52 = *(v0 + 160);
    v53 = *(v0 + 168);
    v54 = *(v0 + 112);
    v55 = *(v0 + 120);
    v56 = *(v0 + 32);

    (*(v53 + 8))(v51, v52);
    (*(v55 + 56))(v56, 1, 1, v54);
LABEL_25:
    v58 = *(v0 + 176);
    v57 = *(v0 + 184);
    v60 = *(v0 + 144);
    v59 = *(v0 + 152);
    v62 = *(v0 + 128);
    v61 = *(v0 + 136);
    v63 = *(v0 + 104);

    v64 = *(v0 + 8);
    v65 = *MEMORY[0x277D85DE8];

    return v64();
  }

  v26 = *(v0 + 176);
  v27 = *(v0 + 168);
  v66 = *(v0 + 160);
  v67 = *(v0 + 184);
  v28 = *(v0 + 144);
  v30 = *(v0 + 120);
  v29 = *(v0 + 128);
  v31 = *(v0 + 112);
  v70 = *(v0 + 80);
  v68 = *(v0 + 136);
  v69 = *(v0 + 72);
  v71 = sub_20E008B84();
  v33 = v32;

  *(v0 + 192) = v71;
  *(v0 + 200) = v33;
  v34 = v33;
  (*(v27 + 16))(v26, v67, v66);
  sub_20E0086B4();
  sub_20DFDF668(v68);
  v35 = *(v30 + 8);
  *(v0 + 208) = v35;
  *(v0 + 216) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v29, v31);
  (*(v30 + 16))(v28, v68, v31);
  sub_20E0086D4();
  v35(v68, v31);
  sub_20E008694();
  sub_20DF67FA8(v71, v34);
  sub_20E0086F4();
  v36 = swift_task_alloc();
  *(v0 + 224) = v36;
  *v36 = v0;
  v36[1] = sub_20DF678F4;
  v37 = *(v0 + 144);
  v39 = *(v0 + 96);
  v38 = *(v0 + 104);
  v40 = *(v0 + 88);
  v41 = *MEMORY[0x277D85DE8];

  return sub_20DF83234(v38, v37, v40);
}

uint64_t sub_20DF678F4()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 224);
  v7 = *v1;

  if (v0)
  {

    v3 = sub_20DF67D5C;
  }

  else
  {
    v3 = sub_20DF67A38;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF67A38()
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8626C8);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to sign Token request", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v8 = v0[26];
    v10 = v0[24];
    v9 = v0[25];
    v32 = v0[27];
    v34 = v0[23];
    v12 = v0[20];
    v11 = v0[21];
    v13 = v0[18];
    v14 = v0[14];
    v15 = v0[15];
    v36 = v0[4];

    sub_20DF67FFC(v10, v9);
    v8(v13, v14);
    (*(v11 + 8))(v34, v12);
    (*(v15 + 56))(v36, 1, 1, v14);
  }

  else
  {
    v16 = v0[26];
    v18 = v0[24];
    v17 = v0[25];
    v35 = v0[27];
    v37 = v0[23];
    v19 = v0[21];
    v33 = v0[20];
    v20 = v0[18];
    v21 = v0[4];
    (*(v2 + 32))(v21, v3, v1);
    sub_20E008704();
    sub_20DF67FFC(v18, v17);
    v16(v20, v1);
    (*(v19 + 8))(v37, v33);
    (*(v2 + 56))(v21, 0, 1, v1);
  }

  v23 = v0[22];
  v22 = v0[23];
  v25 = v0[18];
  v24 = v0[19];
  v27 = v0[16];
  v26 = v0[17];
  v28 = v0[13];

  v29 = v0[1];
  v30 = *MEMORY[0x277D85DE8];

  return v29();
}

uint64_t sub_20DF67D5C()
{
  v26 = *MEMORY[0x277D85DE8];
  (*(v0[15] + 56))(v0[13], 1, 1, v0[14]);
  sub_20DF66E28(v0[13], &qword_27C8520C8, &qword_20E010830);
  if (qword_27C852078 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_27C8626C8);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "Unable to sign Token request", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v5 = v0[26];
  v7 = v0[24];
  v6 = v0[25];
  v23 = v0[27];
  v24 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[18];
  v11 = v0[14];
  v12 = v0[15];
  v25 = v0[4];

  sub_20DF67FFC(v7, v6);
  v5(v10, v11);
  (*(v8 + 8))(v24, v9);
  (*(v12 + 56))(v25, 1, 1, v11);
  v14 = v0[22];
  v13 = v0[23];
  v16 = v0[18];
  v15 = v0[19];
  v18 = v0[16];
  v17 = v0[17];
  v19 = v0[13];

  v20 = v0[1];
  v21 = *MEMORY[0x277D85DE8];

  return v20();
}

uint64_t sub_20DF67FA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_20DF67FFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_20DF68050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_20DF697AC(a1, v11);
  if (!v12)
  {
    goto LABEL_15;
  }

  sub_20DF697AC(v11, v10);
  sub_20DF698C4(0, &qword_27C852200, 0x277CCABB0);
  if (!swift_dynamicCast())
  {
    sub_20DF698C4(0, &qword_27C852208, 0x277CBEB68);
    if (swift_dynamicCast())
    {

      *a2 = 0u;
      *(a2 + 16) = 0u;
      goto LABEL_13;
    }

    __swift_destroy_boxed_opaque_existential_0(v10);
LABEL_15:
    sub_20DF697AC(a1, a2);
    return sub_20DF66E28(v11, &qword_27C8521F0, &unk_20E00EC00);
  }

  [v9 objCType];
  if (sub_20E0092F4() == 99 && v4 == 0xE100000000000000)
  {

    goto LABEL_12;
  }

  v6 = sub_20E009984();

  if (v6)
  {
LABEL_12:
    v7 = [v9 BOOLValue];
    *(a2 + 24) = MEMORY[0x277D839B0];

    *a2 = v7;
    goto LABEL_13;
  }

  sub_20DF697AC(a1, a2);
LABEL_13:
  __swift_destroy_boxed_opaque_existential_0(v10);
  return sub_20DF66E28(v11, &qword_27C8521F0, &unk_20E00EC00);
}

uint64_t sub_20DF681F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_20DF697AC(v3, &v11);
  if (!*(&v12 + 1))
  {
    result = sub_20DF66E28(&v11, &qword_27C8521F0, &unk_20E00EC00);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8521F8, &unk_20E00EBC0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_7:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  if (*(v10 + 16) && (v8 = sub_20DFB85D0(a1, a2), (v9 & 1) != 0))
  {
    sub_20DF6981C(*(v10 + 56) + 32 * v8, &v11);
  }

  else
  {

    v11 = 0u;
    v12 = 0u;
  }

  sub_20DF68050(&v11, a3);
  return sub_20DF66E28(&v11, &qword_27C8521F0, &unk_20E00EC00);
}

char *sub_20DF68334(CLLocationDegrees a1, CLLocationDegrees a2)
{
  v86[1] = *MEMORY[0x277D85DE8];
  v4 = sub_20E009234();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x20F32ADB0](v7);
  sub_20DF68C10(v86);
  objc_autoreleasePoolPop(v10);
  v12 = v86[0];
  if (!v86[0])
  {
    if (qword_2811230E0 != -1)
    {
LABEL_59:
      swift_once();
    }

    v72 = sub_20E009094();
    __swift_project_value_buffer(v72, qword_281124A00);
    v73 = sub_20E009074();
    v74 = sub_20E009544();
    if (!os_log_type_enabled(v73, v74))
    {
      goto LABEL_55;
    }

    v75 = swift_slowAlloc();
    *v75 = 0;
    v76 = "Unable to retrieve geoJSONs from geohash tile";
    goto LABEL_54;
  }

  v13 = *(v86[0] + 2);
  if (v13)
  {
    v14 = 0;
    v15 = (v5 + 8);
    v82 = MEMORY[0x277D84F90];
    *&v11 = 138412290;
    v81 = v11;
    v83 = v9;
    v84 = (v5 + 8);
    do
    {
      if (v14 >= v12[2])
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v16 = v12[v14 + 4];
      if (*(v16 + 16))
      {
        v17 = v12[v14 + 4];

        v18 = sub_20DFB85D0(6516580, 0xE300000000000000);
        if (v19)
        {
          v20 = (*(v16 + 56) + 16 * v18);
          v21 = *v20;
          v22 = v20[1];

          sub_20E009214();
          v23 = sub_20E0091E4();
          v25 = v24;

          (*v15)(v9, v4);
          if (v25 >> 60 != 15)
          {
            v26 = [objc_allocWithZone(MEMORY[0x277CD4DE0]) init];
            v85 = v23;
            v27 = sub_20E008B64();
            v86[0] = 0;
            v28 = [v26 geoJSONObjectsWithData:v27 error:v86];

            v29 = v86[0];
            if (v28)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8521E8, &qword_20E00AD00);
              v30 = sub_20E009424();
              v31 = v29;

              if ((v30 & 0xC000000000000001) != 0)
              {
                MEMORY[0x20F32A900](0, v30);
              }

              else
              {
                if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_58;
                }

                v32 = *(v30 + 32);
                swift_unknownObjectRetain();
              }

              objc_opt_self();
              v33 = swift_dynamicCastObjCClass();
              if (v33)
              {
                v34 = v33;
                sub_20DF69198(v33, a1, a2);
                if (v35)
                {
                  v80 = v4;
                  if (qword_2811230E0 != -1)
                  {
                    swift_once();
                  }

                  v36 = sub_20E009094();
                  __swift_project_value_buffer(v36, qword_281124A00);
                  v37 = sub_20E009074();
                  v38 = sub_20E009554();
                  if (os_log_type_enabled(v37, v38))
                  {
                    v39 = swift_slowAlloc();
                    *v39 = 0;
                    _os_log_impl(&dword_20DF62000, v37, v38, "Found matching Polygon", v39, 2u);
                    MEMORY[0x20F32B3A0](v39, -1, -1);
                  }

                  v40 = sub_20E009074();
                  v41 = sub_20E009524();
                  if (os_log_type_enabled(v40, v41))
                  {
                    v42 = swift_slowAlloc();
                    *v42 = 0;
                    _os_log_impl(&dword_20DF62000, v40, v41, "Extracting Utility Info", v42, 2u);
                    MEMORY[0x20F32B3A0](v42, -1, -1);
                  }

                  v43 = [v34 properties];
                  if (v43)
                  {
                    v44 = v43;
                    v45 = sub_20E008B84();
                    v47 = v46;
                  }

                  else
                  {
                    v45 = 0;
                    v47 = 0xF000000000000000;
                  }

                  v58 = sub_20DF69540(v45, v47);
                  v60 = v59;
                  sub_20DF64DE8(v45, v47);
                  if (v60)
                  {
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v15 = v84;
                    v62 = v58;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v82 = sub_20DFFAE38(0, *(v82 + 2) + 1, 1, v82);
                    }

                    v64 = *(v82 + 2);
                    v63 = *(v82 + 3);
                    if (v64 >= v63 >> 1)
                    {
                      v82 = sub_20DFFAE38((v63 > 1), v64 + 1, 1, v82);
                    }

                    sub_20DF64DE8(v85, v25);
                    swift_unknownObjectRelease();
                    v65 = v82;
                    *(v82 + 2) = v64 + 1;
                    v66 = &v65[16 * v64];
                    *(v66 + 4) = v62;
                    *(v66 + 5) = v60;
                  }

                  else
                  {
                    v67 = sub_20E009074();
                    v68 = sub_20E009544();
                    v69 = os_log_type_enabled(v67, v68);
                    v15 = v84;
                    if (v69)
                    {
                      v70 = swift_slowAlloc();
                      *v70 = 0;
                      _os_log_impl(&dword_20DF62000, v67, v68, "Unable to extract Utility Information from GeoFeature", v70, 2u);
                      MEMORY[0x20F32B3A0](v70, -1, -1);
                    }

                    sub_20DF64DE8(v85, v25);

                    swift_unknownObjectRelease();
                  }

                  v4 = v80;
                  v9 = v83;
                }

                else
                {
                  sub_20DF64DE8(v85, v25);
                  swift_unknownObjectRelease();
                  v15 = v84;
                }
              }

              else
              {
                swift_unknownObjectRelease();
                sub_20DF64DE8(v85, v25);
                v15 = v84;
              }
            }

            else
            {
              v48 = v86[0];
              v49 = sub_20E008A34();

              swift_willThrow();
              if (qword_2811230E0 != -1)
              {
                swift_once();
              }

              v50 = sub_20E009094();
              __swift_project_value_buffer(v50, qword_281124A00);
              v51 = v49;
              v52 = sub_20E009074();
              v53 = sub_20E009544();

              if (os_log_type_enabled(v52, v53))
              {
                v54 = swift_slowAlloc();
                v55 = swift_slowAlloc();
                *v54 = v81;
                v56 = v49;
                v57 = _swift_stdlib_bridgeErrorToNSError();
                *(v54 + 4) = v57;
                *v55 = v57;
                _os_log_impl(&dword_20DF62000, v52, v53, "Error while decoding geoJSON File %@", v54, 0xCu);
                sub_20DF66E28(v55, &qword_27C8521E0, &unk_20E011080);
                MEMORY[0x20F32B3A0](v55, -1, -1);
                MEMORY[0x20F32B3A0](v54, -1, -1);
                sub_20DF64DE8(v85, v25);
              }

              else
              {
                sub_20DF64DE8(v85, v25);
              }

              v9 = v83;
              v15 = v84;
            }
          }
        }

        else
        {
        }
      }

      ++v14;
    }

    while (v13 != v14);

    result = v82;
    if (*(v82 + 2))
    {
      goto LABEL_56;
    }

    goto LABEL_50;
  }

  result = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
LABEL_50:

    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v77 = sub_20E009094();
    __swift_project_value_buffer(v77, qword_281124A00);
    v73 = sub_20E009074();
    v74 = sub_20E009554();
    if (!os_log_type_enabled(v73, v74))
    {
      goto LABEL_55;
    }

    v75 = swift_slowAlloc();
    *v75 = 0;
    v76 = "No matching utility territory polygon in geohash tile.";
LABEL_54:
    _os_log_impl(&dword_20DF62000, v73, v74, v76, v75, 2u);
    MEMORY[0x20F32B3A0](v75, -1, -1);
LABEL_55:

    result = 0;
  }

LABEL_56:
  v78 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_20DF68C10(void *a1@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_20DFAF758();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
LABEL_14:
    *a1 = 0;
    goto LABEL_15;
  }

  v6 = objc_opt_self();
  v7 = sub_20E008B64();
  *&v18 = 0;
  v8 = [v6 JSONObjectWithData:v7 options:0 error:&v18];

  v9 = v18;
  if (v8)
  {
    sub_20E009654();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = v9;
    v11 = sub_20E008A34();

    swift_willThrow();
    memset(v20, 0, sizeof(v20));
  }

  sub_20DF681F8(1935896420, 0xE400000000000000, &v18);
  if (!v19)
  {
    sub_20DF66E28(&v18, &qword_27C8521F0, &unk_20E00EC00);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C852220, &unk_20E00AD10);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v12 = sub_20E009094();
    __swift_project_value_buffer(v12, qword_281124A00);
    v13 = sub_20E009074();
    v14 = sub_20E009544();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20DF62000, v13, v14, "Unable to deserialize Geohash GeoJSON document", v15, 2u);
      MEMORY[0x20F32B3A0](v15, -1, -1);
    }

    sub_20DF64DE8(v3, v5);

    sub_20DF66E28(v20, &qword_27C8521F0, &unk_20E00EC00);
    goto LABEL_14;
  }

  sub_20DF66E28(v20, &qword_27C8521F0, &unk_20E00EC00);
  sub_20DF64DE8(v3, v5);
  *a1 = v17;
LABEL_15:
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t sub_20DF68EE8(void *a1)
{
  v2 = [a1 geometry];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852210, &qword_20E00AD08);
  v3 = sub_20E009424();

  v4 = sub_20DFE4B44(v3);

  if (!v4)
  {
    goto LABEL_11;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x20F32A900](0, v4);
    goto LABEL_5;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v4 + 32);
LABEL_5:
    v6 = v5;
    v7 = [v5 polygons];

    sub_20DF698C4(0, &qword_27C852218, 0x277CD4F18);
    v8 = sub_20E009424();

    if (v8 >> 62)
    {
      v9 = sub_20E009804();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x20F32A900](0, v4);
      }

      else
      {
        v10 = *(v4 + 32);
      }

      v18 = v10;

      v19 = [v18 polygons];

      v13 = sub_20E009424();
      return v13;
    }

LABEL_11:
    v11 = [a1 geometry];
    v12 = sub_20E009424();

    v13 = sub_20DFE4B50(v12);

    if (v13)
    {
      return v13;
    }

    if (qword_2811230E0 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_22:
  swift_once();
LABEL_13:
  v14 = sub_20E009094();
  __swift_project_value_buffer(v14, qword_281124A00);
  v15 = sub_20E009074();
  v16 = sub_20E009534();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_20DF62000, v15, v16, "Unable to locate Polygons in current GeoFeature", v17, 2u);
    MEMORY[0x20F32B3A0](v17, -1, -1);
  }

  return 0;
}

void sub_20DF69198(void *a1, CLLocationDegrees a2, CLLocationDegrees a3)
{
  v36 = sub_20E008E64();
  v6 = *(v36 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v36);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20DF68EE8(a1);
  if (v9)
  {
    v10 = v9;
    v11 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
LABEL_23:
      v12 = sub_20E009804();
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_4:
        v13 = 0;
        v37 = v10 & 0xC000000000000001;
        v34 = *MEMORY[0x277CBF258];
        v32 = (v6 + 1);
        v33 = (v6 + 13);
        v14 = &dword_277E1B000;
        v31 = v12;
        do
        {
          if (v37)
          {
            v15 = MEMORY[0x20F32A900](v13, v10);
          }

          else
          {
            if (v13 >= *(v11 + 16))
            {
              goto LABEL_22;
            }

            v15 = *(v10 + 8 * v13 + 32);
          }

          v16 = v15;
          v17 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v6 = [objc_allocWithZone(MEMORY[0x277CD4F20]) initWithPolygon_];
          v45.latitude = a2;
          v45.longitude = a3;
          v18 = MKMapPointForCoordinate(v45);
          [v6 pointForMapPoint_];
          v19 = v6;
          v20 = [v19 *(v14 + 10)];
          if (v20)
          {
            v38 = v13 + 1;
            v21 = v10;
            v22 = v11;

            v23 = v14;
            v6 = [v19 *(v14 + 10)];

            if (!v6)
            {
              __break(1u);
              return;
            }

            v25 = v35;
            v24 = v36;
            (*v33)(v35, v34, v36);
            v40 = 0;
            v41 = 0;
            v39 = 0x3FF0000000000000;
            v42 = 0x3FF0000000000000;
            v43 = 0;
            v44 = 0;
            v26 = sub_20E0095A4();

            (*v32)(v25, v24);
            v11 = v22;
            v10 = v21;
            v12 = v31;
            v14 = v23;
            v17 = v38;
            if (v26)
            {
              break;
            }
          }

          else
          {
          }

          ++v13;
        }

        while (v17 != v12);
      }
    }

    return;
  }

  if (qword_2811230E0 != -1)
  {
    swift_once();
  }

  v27 = sub_20E009094();
  __swift_project_value_buffer(v27, qword_281124A00);
  v28 = sub_20E009074();
  v29 = sub_20E009534();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_20DF62000, v28, v29, "No multiPolygons for the current Geofeature", v30, 2u);
    MEMORY[0x20F32B3A0](v30, -1, -1);
  }
}

uint64_t sub_20DF69540(uint64_t a1, unint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2 >> 60 == 15)
  {
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v2 = sub_20E009094();
    __swift_project_value_buffer(v2, qword_281124A00);
    v3 = sub_20E009074();
    v4 = sub_20E009544();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20DF62000, v3, v4, "Unable to find utility in matching Polygon", v5, 2u);
      MEMORY[0x20F32B3A0](v5, -1, -1);
    }

    goto LABEL_15;
  }

  v8 = objc_opt_self();
  sub_20DF67FA8(a1, a2);
  v9 = sub_20E008B64();
  *&v17 = 0;
  v10 = [v8 JSONObjectWithData:v9 options:0 error:&v17];

  v11 = v17;
  if (v10)
  {
    sub_20E009654();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = v11;
    v13 = sub_20E008A34();

    swift_willThrow();
    memset(v19, 0, sizeof(v19));
  }

  sub_20DF681F8(25705, 0xE200000000000000, &v17);
  sub_20DF64DE8(a1, a2);
  sub_20DF66E28(v19, &qword_27C8521F0, &unk_20E00EC00);
  if (!v18)
  {
    sub_20DF66E28(&v17, &qword_27C8521F0, &unk_20E00EC00);
LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    result = v16;
  }

  else
  {
    result = 0;
  }

LABEL_16:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_20DF697AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8521F0, &unk_20E00EC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DF6981C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_20DF698C4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t static UtilityServices.fetchUtilityRecords(token:date:recordType:offset:limit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = *a5;
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_20DF699FC;

  return sub_20DFE11A8(a1, a2, a3, a4, (v8 + 32), a6, a7, a8);
}

uint64_t sub_20DF699FC()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DF69B30, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

HomeUtilityServices::UtilityRecordType_optional __swiftcall UtilityRecordType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E009844();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UtilityRecordType.rawValue.getter()
{
  v1 = 0x696F506567617355;
  if (*v0 != 1)
  {
    v1 = 0x6D75536567617355;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61767265746E49;
  }
}

uint64_t sub_20DF69C24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x696F506567617355;
  v4 = 0xEA0000000000746ELL;
  if (v2 != 1)
  {
    v3 = 0x6D75536567617355;
    v4 = 0xEC0000007972616DLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C61767265746E49;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED00006B636F6C42;
  }

  v7 = 0x696F506567617355;
  v8 = 0xEA0000000000746ELL;
  if (*a2 != 1)
  {
    v7 = 0x6D75536567617355;
    v8 = 0xEC0000007972616DLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C61767265746E49;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED00006B636F6C42;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20E009984();
  }

  return v11 & 1;
}

uint64_t sub_20DF69D48()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DF69E04()
{
  *v0;
  *v0;
  sub_20E009194();
}

uint64_t sub_20DF69EAC()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

void sub_20DF69F70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006B636F6C42;
  v4 = 0xEA0000000000746ELL;
  v5 = 0x696F506567617355;
  if (v2 != 1)
  {
    v5 = 0x6D75536567617355;
    v4 = 0xEC0000007972616DLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C61767265746E49;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t UtilityRecordsResponse.records.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t UtilityRecordsResponse.offset.getter()
{
  v1 = *(v0 + 8);
  sub_20DF67FA8(v1, *(v0 + 16));
  return v1;
}

uint64_t UtilityRecordsResponse.offset.setter(uint64_t a1, uint64_t a2)
{
  result = sub_20DF67FFC(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t UtilityRecordsResponse.init(records:offset:moreToCome:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  result = sub_20DF67FFC(0, 0xC000000000000000);
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

unint64_t sub_20DF6A15C()
{
  result = qword_27C852230;
  if (!qword_27C852230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852230);
  }

  return result;
}

unint64_t sub_20DF6A1B4()
{
  result = qword_27C852238;
  if (!qword_27C852238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852240, &qword_20E00ADC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852238);
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

uint64_t getEnumTagSinglePayload for UtilityRecordType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UtilityRecordType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_20DF6A3EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20DF6A434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static UtilityServices.verifyServiceAddress(_:withSession:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20DF6A53C;

  return (sub_20DFB3A20)(a1, a2);
}

uint64_t sub_20DF6A53C(uint64_t a1)
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

uint64_t sub_20DF6A7C8(void *a1, void *a2, void *aBlock)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a2;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_20DF6A8A4;

  return sub_20DFB3A20(v6, v7);
}

uint64_t sub_20DF6A8A4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_20E008A24();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for MatchedServiceAddress();
    v11 = sub_20E009414();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id MatchedServiceAddress.__allocating_init(address:matchType:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC19HomeUtilityServices21MatchedServiceAddress_address] = a1;
  *&v5[OBJC_IVAR____TtC19HomeUtilityServices21MatchedServiceAddress_matchType] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id MatchedServiceAddress.init(address:matchType:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC19HomeUtilityServices21MatchedServiceAddress_address] = a1;
  *&v2[OBJC_IVAR____TtC19HomeUtilityServices21MatchedServiceAddress_matchType] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MatchedServiceAddress();
  return objc_msgSendSuper2(&v4, sel_init);
}

id MatchedServiceAddress.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t _s19HomeUtilityServices0B20TerritoryConfigErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_20E009A34();
  MEMORY[0x20F32AC10](v1);
  return sub_20E009A54();
}

uint64_t sub_20DF6ABFC()
{
  v1 = *v0;
  sub_20E009A34();
  MEMORY[0x20F32AC10](v1);
  return sub_20E009A54();
}

uint64_t sub_20DF6AC40()
{
  if (*v0)
  {
    result = 0x707954686374616DLL;
  }

  else
  {
    result = 0x73736572646461;
  }

  *v0;
  return result;
}

uint64_t sub_20DF6AC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v6 || (sub_20E009984() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x707954686374616DLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E009984();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20DF6AD70(uint64_t a1)
{
  v2 = sub_20DF6B528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF6ADAC(uint64_t a1)
{
  v2 = sub_20DF6B528();

  return MEMORY[0x2821FE720](a1, v2);
}

id MatchedServiceAddress.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatchedServiceAddress();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20DF6AE2C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852258, &qword_20E00AF18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF6B528();
  sub_20E009A84();
  v13 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices21MatchedServiceAddress_address);
  HIBYTE(v12) = 0;
  type metadata accessor for UtilityServiceAddress();
  sub_20DF6B5D0(&qword_27C852268);
  sub_20E009944();
  if (!v2)
  {
    v13 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices21MatchedServiceAddress_matchType);
    HIBYTE(v12) = 1;
    sub_20DF6B57C();
    sub_20E009944();
  }

  return (*(v6 + 8))(v9, v5);
}

id MatchedServiceAddress.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852278, &qword_20E00AF20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF6B528();
  sub_20E009A74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for MatchedServiceAddress();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for UtilityServiceAddress();
    v15 = 0;
    sub_20DF6B5D0(&qword_27C852280);
    sub_20E0098C4();
    *&v1[OBJC_IVAR____TtC19HomeUtilityServices21MatchedServiceAddress_address] = v16;
    v15 = 1;
    sub_20DF6B614();
    sub_20E0098C4();
    *&v1[OBJC_IVAR____TtC19HomeUtilityServices21MatchedServiceAddress_matchType] = v16;
    v12 = type metadata accessor for MatchedServiceAddress();
    v14.receiver = v1;
    v14.super_class = v12;
    v3 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

id sub_20DF6B2B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for MatchedServiceAddress());
  result = MatchedServiceAddress.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t ServiceAddressMatchType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_20DF6B33C()
{
  v1 = *v0;
  sub_20E009A34();
  MEMORY[0x20F32AC10](v1);
  return sub_20E009A54();
}

uint64_t sub_20DF6B3B0()
{
  v1 = *v0;
  sub_20E009A34();
  MEMORY[0x20F32AC10](v1);
  return sub_20E009A54();
}

uint64_t *sub_20DF6B3F4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
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

unint64_t sub_20DF6B528()
{
  result = qword_27C852260;
  if (!qword_27C852260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852260);
  }

  return result;
}

unint64_t sub_20DF6B57C()
{
  result = qword_27C852270;
  if (!qword_27C852270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852270);
  }

  return result;
}

uint64_t sub_20DF6B5D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UtilityServiceAddress();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20DF6B614()
{
  result = qword_27C852288;
  if (!qword_27C852288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852288);
  }

  return result;
}

unint64_t sub_20DF6B66C()
{
  result = qword_27C852290;
  if (!qword_27C852290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852290);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MatchedServiceAddress.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MatchedServiceAddress.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20DF6B8C0()
{
  result = qword_27C852298;
  if (!qword_27C852298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852298);
  }

  return result;
}

unint64_t sub_20DF6B918()
{
  result = qword_27C8522A0;
  if (!qword_27C8522A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8522A0);
  }

  return result;
}

unint64_t sub_20DF6B970()
{
  result = qword_27C8522A8;
  if (!qword_27C8522A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8522A8);
  }

  return result;
}

uint64_t sub_20DF6B9C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20DF6BA84;

  return sub_20DF6A7C8(v2, v3, v5);
}

uint64_t sub_20DF6BA84()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20DF6BB78()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20DF6BD98;

  return sub_20DFF7BF8(v2, v3, v5);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20DF6BC78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20DF6BD98;

  return sub_20DFF7CE0(a1, v4, v5, v7);
}

unint64_t sub_20DF6BD44()
{
  result = qword_27C8522B8;
  if (!qword_27C8522B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8522B8);
  }

  return result;
}

id sub_20DF6BE1C()
{
  v0 = [objc_opt_self() ephemeralSessionConfiguration];
  v1 = [objc_opt_self() sessionWithConfiguration_];

  return v1;
}

uint64_t static UtilityServices.configuration(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20DF6BF20;

  return sub_20DF9CFE0(a1);
}

uint64_t sub_20DF6BF20(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_20DF6C1A0(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_20DF6C250;

  return sub_20DF9CFE0(v4);
}

uint64_t sub_20DF6C250(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (a1)
  {
    v7 = sub_20E009154();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v3 + 24);
  (v8)[2](v8, v7);

  _Block_release(v8);
  v9 = *(v6 + 8);

  return v9();
}

uint64_t static UtilityServices.isSupportedInRegion(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DF9D3A0();
  LOBYTE(a2) = sub_20DF6C41C(a1, a2, v4);

  return a2 & 1;
}

uint64_t sub_20DF6C41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_20E009A34();
  sub_20E009194();
  v7 = sub_20E009A54();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_20E009984() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id UtilityServices.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UtilityServices();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t static UtilityServices.utilityIDLookup(for:withSession:)(uint64_t a1, double a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20DF6A53C;

  return sub_20DFBBF24(a1, a2, a3);
}

uint64_t sub_20DF6C89C(void *a1, void *aBlock, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = _Block_copy(aBlock);
  v8 = a1;
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_20DF6C980;

  return sub_20DFBBF24(v8, a3, a4);
}

uint64_t sub_20DF6C980()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_20E008A24();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = sub_20E009414();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t static UtilityServices.allUtilitiesInRegion(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20DF77B54;

  return sub_20DFBE964(a1, a2, a3);
}

uint64_t sub_20DF6CD54(int a1, void *a2, void *aBlock)
{
  v3[2] = a2;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_20E0091D4();
  v7 = v6;
  v3[4] = v6;
  v8 = a2;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_20DF6CE44;

  return sub_20DFBE964(v5, v7, v8);
}

uint64_t sub_20DF6CE44()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_20E008A24();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for UtilityRegion();
    v11 = sub_20E009414();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t static UtilityServices.utilityConfiguration(for:withSession:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20DF6D09C;

  return sub_20DFCFC94(a1, a2, a3);
}

uint64_t sub_20DF6D09C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v5 + 8);

    return v8(a1);
  }
}

uint64_t sub_20DF6D358(int a1, void *a2, void *aBlock)
{
  v3[2] = a2;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_20E0091D4();
  v7 = v6;
  v3[4] = v6;
  v8 = a2;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_20DF6D430;

  return sub_20DFCFC94(v5, v7, v8);
}

uint64_t sub_20DF6D430(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_20E008A24();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_20DF6D64C()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 248);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 256);

  return v1;
}

uint64_t sub_20DF6D70C()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 304);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 296);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  return v2;
}

uint64_t sub_20DF6D7F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 240);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v19 = MEMORY[0x277D84F90];
      sub_20DF74A2C(0, v2, 0);
      v3 = v19;
      v4 = (v1 + 56);
      do
      {
        v6 = *(v4 - 3);
        v5 = *(v4 - 2);
        v8 = *(v4 - 1);
        v7 = *v4;
        v19 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);

        if (v10 >= v9 >> 1)
        {
          sub_20DF74A2C((v9 > 1), v10 + 1, 1);
          v3 = v19;
        }

        *(v3 + 16) = v10 + 1;
        v11 = (v3 + 32 * v10);
        v11[4] = v6;
        v11[5] = v5;
        v11[6] = v8;
        v11[7] = v7;
        v4 += 4;
        --v2;
      }

      while (v2);
    }

    else if (!*(MEMORY[0x277D84F90] + 16))
    {
      v17 = MEMORY[0x277D84F98];
      goto LABEL_15;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522C8, &qword_20E00B240);
    v17 = sub_20E009834();
LABEL_15:
    v19 = v17;

    sub_20DF74A6C(v18, 1, &v19);

    return v19;
  }

  if (qword_2811230D8 != -1)
  {
    swift_once();
  }

  v12 = sub_20E009094();
  __swift_project_value_buffer(v12, qword_2811249E8);
  v13 = sub_20E009074();
  v14 = sub_20E009544();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_20DF62000, v13, v14, "No Alternate Supplier name found in config.", v15, 2u);
    MEMORY[0x20F32B3A0](v15, -1, -1);
  }

  return 0;
}

uint64_t sub_20DF6DA28(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 240);
  if (v3)
  {
    v6 = (v3 + 56);
    v7 = -*(v3 + 16);
    v8 = -1;
    while (v7 + v8 != -1)
    {
      if (++v8 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v9 = *(v6 - 1);
      v10 = *v6;
      if (*(v6 - 3) != a1 || *(v6 - 2) != a2)
      {
        v6 += 4;
        if ((sub_20E009984() & 1) == 0)
        {
          continue;
        }
      }

      return v9;
    }

    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v16 = sub_20E009094();
    __swift_project_value_buffer(v16, qword_2811249E8);
    v17 = sub_20E009074();
    v18 = sub_20E009544();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20DF62000, v17, v18, "Could not locate Alternate Supplier id in Utility Config.", v19, 2u);
      MEMORY[0x20F32B3A0](v19, -1, -1);
    }

    if (qword_281123118 != -1)
    {
      swift_once();
    }

    if (byte_281124A78 == 1)
    {

      v20 = sub_20E009074();
      v21 = sub_20E009544();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v25 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_20DF74468(a1, a2, &v25);
        _os_log_impl(&dword_20DF62000, v20, v21, "Missing Alternate Supplier ID: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x20F32B3A0](v23, -1, -1);
        MEMORY[0x20F32B3A0](v22, -1, -1);
      }
    }
  }

  else
  {
    if (qword_2811230D8 != -1)
    {
LABEL_28:
      swift_once();
    }

    v12 = sub_20E009094();
    __swift_project_value_buffer(v12, qword_2811249E8);
    v13 = sub_20E009074();
    v14 = sub_20E009544();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20DF62000, v13, v14, "No Alternate Supplier name found in config.", v15, 2u);
      MEMORY[0x20F32B3A0](v15, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_20DF6DE30()
{
  if (*(v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 112) != 1)
  {
    return 0;
  }

  result = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84F90];
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 152);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 168);
    v5 = type metadata accessor for TAFField();
    do
    {
      v28 = v3;
      v7 = *(v4 - 17);
      v6 = *(v4 - 16);
      v9 = *(v4 - 15);
      v8 = *(v4 - 14);
      v10 = *(v4 - 13);
      v11 = *(v4 - 12);
      v12 = *(v4 - 8);
      v22 = *(v4 - 9);
      v23 = *(v4 - 40);
      v24 = *(v4 - 4);
      v13 = *(v4 - 1);
      v26 = *(v4 - 3);
      v27 = *(v4 - 2);
      v25 = (*v4 == 2) | *v4;
      v14 = objc_allocWithZone(v5);
      v15 = &v14[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_type];
      *v15 = v7;
      v15[1] = v6;
      v16 = &v14[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_label];
      *v16 = v9;
      v16[1] = v8;
      v17 = &v14[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_formKey];
      *v17 = v10;
      v17[1] = v11;
      v18 = &v14[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_hintText];
      *v18 = 0;
      v18[1] = 0xE000000000000000;
      v19 = &v14[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_textContextType];
      *v19 = v22;
      v19[1] = v12;
      v14[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_isSecure] = v23;
      *&v14[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_maxCharacterCount] = v24;
      *&v14[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_minCharacterCount] = v26;
      v20 = &v14[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_regex];
      *v20 = v27;
      v20[1] = v13;
      v14[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_required] = v25 & 1;
      v29.receiver = v14;
      v29.super_class = v5;

      objc_msgSendSuper2(&v29, sel_init);
      MEMORY[0x20F32A5D0]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20E009444();
      }

      v4 += 144;
      sub_20E009464();
      v3 = v28 - 1;
    }

    while (v28 != 1);
    return v30;
  }

  return result;
}

id sub_20DF6E08C(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void))
{
  v6 = a1;
  v7 = a3();

  if (v7)
  {
    a4();
    v8 = sub_20E009414();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_20DF6E114()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 160);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_20E0097B4();
    v4 = type metadata accessor for TAFSection();
    v5 = (v1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 3;
      v9 = objc_allocWithZone(v4);
      v10 = &v9[OBJC_IVAR____TtC19HomeUtilityServices10TAFSection_header];
      *v10 = v7;
      *(v10 + 1) = v6;
      *&v9[OBJC_IVAR____TtC19HomeUtilityServices10TAFSection_fields] = v8;
      v12.receiver = v9;
      v12.super_class = v4;

      objc_msgSendSuper2(&v12, sel_init);
      sub_20E009794();
      v11 = *(v13 + 16);
      sub_20E0097C4();
      sub_20E0097D4();
      sub_20E0097A4();
      --v2;
    }

    while (v2);
    return v13;
  }

  return result;
}

id TAFSection.__allocating_init(header:fields:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC19HomeUtilityServices10TAFSection_header];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC19HomeUtilityServices10TAFSection_fields] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_20DF6E3D0()
{
  v1 = v0;
  v2 = sub_20E008D04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E008CF4();
  v7 = sub_20E008CE4();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  if (qword_2811230D8 != -1)
  {
    swift_once();
  }

  v10 = sub_20E009094();
  __swift_project_value_buffer(v10, qword_2811249E8);

  v11 = sub_20E009074();
  v12 = sub_20E009554();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_20DF74468(v7, v9, v18);
    _os_log_impl(&dword_20DF62000, v11, v12, "OAuth State UUID set to : %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F32B3A0](v14, -1, -1);
    MEMORY[0x20F32B3A0](v13, -1, -1);
  }

  v15 = *(v1 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 88);
  v18[0] = *(v1 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 80);
  v18[1] = v15;
  v17[2] = 0x535F4D4F444E4152;
  v17[3] = 0xEF44495F45544154;
  v17[0] = v7;
  v17[1] = v9;
  sub_20DF751E4();
  sub_20E0095F4();

  sub_20E008AC4();
}

uint64_t sub_20DF6E694()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 96);
  result = 3600 * v1;
  if ((v1 * 3600) >> 64 != (3600 * v1) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20DF6E6EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 104);
  result = 3600 * v1;
  if ((v1 * 3600) >> 64 != (3600 * v1) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20DF6E77C()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 512);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 520);

  return v1;
}

uint64_t sub_20DF6E7BC()
{
  if (*(v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 112) == 1)
  {
    return *(v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 168);
  }

  if (qword_281123100 != -1)
  {
    swift_once();
  }

  v2 = sub_20E009094();
  __swift_project_value_buffer(v2, qword_281124A48);
  v3 = sub_20E009074();
  v4 = sub_20E009544();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20DF62000, v3, v4, "Current Utility does not support TAF Flow. Check your code!", v5, 2u);
    MEMORY[0x20F32B3A0](v5, -1, -1);
  }

  return 0;
}

id sub_20DF6E900()
{
  v1 = (v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 248);
  v3 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 256);
  v31 = v2;
  v32 = v1[35];
  v30 = v1[36];
  v5 = v1[2];
  v4 = v1[3];
  v6 = type metadata accessor for UtilityArtwork();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC19HomeUtilityServices14UtilityArtwork_icon];
  *v8 = v5;
  *(v8 + 1) = v4;
  v35.receiver = v7;
  v35.super_class = v6;

  v29 = objc_msgSendSuper2(&v35, sel_init);
  v10 = v1[55];
  v9 = v1[56];
  v12 = v1[57];
  v11 = v1[58];
  v13 = v1[59];
  v14 = v1[60];
  v15 = v1[61];
  v16 = v1[62];
  v17 = type metadata accessor for UtilitySupport();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServicePhone];
  *v19 = v10;
  *(v19 + 1) = v9;
  v20 = &v18[OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceEmail];
  *v20 = v12;
  *(v20 + 1) = v11;
  v21 = &v18[OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceSMS];
  *v21 = v13;
  *(v21 + 1) = v14;
  v22 = &v18[OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceBusinessChat];
  *v22 = v15;
  *(v22 + 1) = v16;
  v34.receiver = v18;
  v34.super_class = v17;

  v23 = objc_msgSendSuper2(&v34, sel_init);
  v24 = type metadata accessor for UtilityOrganization();
  v25 = objc_allocWithZone(v24);
  v26 = &v25[OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_name];
  *v26 = v31;
  *(v26 + 1) = v3;
  v27 = &v25[OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_website];
  *v27 = v32;
  *(v27 + 1) = v30;
  *&v25[OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_artwork] = v29;
  *&v25[OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_support] = v23;
  v33.receiver = v25;
  v33.super_class = v24;
  return objc_msgSendSuper2(&v33, sel_init);
}

id UtilityArtwork.__allocating_init(icon:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC19HomeUtilityServices14UtilityArtwork_icon];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id UtilitySupport.__allocating_init(customerServicePhone:customerServiceEmail:customerServiceSMS:customerServiceBusinessChat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServicePhone];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v17[OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceEmail];
  *v19 = a3;
  *(v19 + 1) = a4;
  v20 = &v17[OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceSMS];
  *v20 = a5;
  *(v20 + 1) = a6;
  v21 = &v17[OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceBusinessChat];
  *v21 = a7;
  *(v21 + 1) = a8;
  v23.receiver = v17;
  v23.super_class = v8;
  return objc_msgSendSuper2(&v23, sel_init);
}

id UtilityOrganization.__allocating_init(name:website:artwork:support:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_name];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_website];
  *v15 = a3;
  *(v15 + 1) = a4;
  *&v13[OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_artwork] = a5;
  *&v13[OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_support] = a6;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_20DF6EC94()
{
  if (*(v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 216))
  {
    return 60;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 208);
  }
}

uint64_t sub_20DF6ED08()
{
  if (*(v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 232))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 224);
  }
}

uint64_t sub_20DF6ED48()
{
  v1 = v0[2] + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config;
  if (*(v1 + 112) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852378, &qword_20E00B250);
    v2 = swift_allocObject();
    v0[3] = v2;
    *(v2 + 16) = xmmword_20E00AB50;
    v3 = *(v1 + 200);
    *(v2 + 32) = *(v1 + 192);
    *(v2 + 40) = v3;

    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_20DF6EE70;

    return sub_20DFC1D5C(v2, 0);
  }

  else
  {
    v6 = v0[1];

    return v6(0);
  }
}

uint64_t sub_20DF6EE70(uint64_t a1, uint64_t a2)
{
  v7 = *v3;
  v6 = *v3;
  v8 = *(*v3 + 32);
  v9 = *v3;

  v10 = *(v6 + 24);
  if (v2)
  {

    v11 = *(v9 + 8);

    return v11(0);
  }

  else
  {

    *(v7 + 40) = a2;
    *(v7 + 48) = a1;

    return MEMORY[0x2822009F8](sub_20DF6EFF8, 0, 0);
  }
}

uint64_t sub_20DF6EFF8()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  v4 = v0[1];

  return v4(v3 != 0);
}

uint64_t sub_20DF6F1E8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20DF6F290;

  return sub_20DF6ED28();
}

uint64_t sub_20DF6F290(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_20DF6F454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6769666E6F63 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20E009984();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20DF6F4D8(uint64_t a1)
{
  v2 = sub_20DF752C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF6F514(uint64_t a1)
{
  v2 = sub_20DF752C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF6F5B0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852380, &qword_20E00B258);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7 - 8];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF752C8();
  sub_20E009A84();
  memcpy(v14, (v2 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config), 0x220uLL);
  memcpy(v13, (v2 + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config), sizeof(v13));
  sub_20DF7531C(v14, v12);
  sub_20DF75378();
  sub_20E009944();
  memcpy(v12, v13, sizeof(v12));
  sub_20DF753CC(v12);
  return (*(v5 + 8))(v8, v4);
}

void *UtilityConfiguration.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852398, &qword_20E00B260);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF752C8();
  sub_20E009A74();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for UtilityConfiguration();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_20DF75420();
    sub_20E0098C4();
    v11 = v16;
    memcpy(&v16[OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config], v15, 0x220uLL);
    v12 = type metadata accessor for UtilityConfiguration();
    v14.receiver = v11;
    v14.super_class = v12;
    v9 = objc_msgSendSuper2(&v14, sel_init);
    (*(v4 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

uint64_t UtilityOrganization.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_name);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_name + 8);

  return v1;
}

uint64_t UtilityOrganization.website.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_website);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_website + 8);

  return v1;
}

id UtilityOrganization.init(name:website:artwork:support:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = &v6[OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_name];
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = &v6[OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_website];
  *v8 = a3;
  *(v8 + 1) = a4;
  *&v6[OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_artwork] = a5;
  *&v6[OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_support] = a6;
  v10.receiver = v6;
  v10.super_class = type metadata accessor for UtilityOrganization();
  return objc_msgSendSuper2(&v10, sel_init);
}

id UtilityOrganization.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_20DF6FB74()
{
  v1 = 1701667182;
  v2 = 0x6B726F77747261;
  if (*v0 != 2)
  {
    v2 = 0x74726F70707573;
  }

  if (*v0)
  {
    v1 = 0x65746973626577;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20DF6FBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DF757B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DF6FC0C(uint64_t a1)
{
  v2 = sub_20DF75474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF6FC48(uint64_t a1)
{
  v2 = sub_20DF75474();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF6FD10(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8523A8, &qword_20E00B268);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF75474();
  sub_20E009A84();
  v11 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_name);
  v12 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_name + 8);
  LOBYTE(v17) = 0;
  sub_20E009914();
  if (!v2)
  {
    v14 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_website);
    v15 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_website + 8);
    LOBYTE(v17) = 1;
    sub_20E009914();
    v17 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_artwork);
    HIBYTE(v16) = 2;
    type metadata accessor for UtilityArtwork();
    sub_20DF754C8(&qword_27C8523B8, type metadata accessor for UtilityArtwork);
    sub_20E009944();
    v17 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_support);
    HIBYTE(v16) = 3;
    type metadata accessor for UtilitySupport();
    sub_20DF754C8(&qword_27C8523C0, type metadata accessor for UtilitySupport);
    sub_20E009944();
  }

  return (*(v6 + 8))(v9, v5);
}

id UtilityOrganization.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8523C8, &qword_20E00B270);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF75474();
  sub_20E009A74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for UtilityOrganization();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v22) = 0;
    v11 = sub_20E009894();
    v13 = &v1[OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_name];
    *v13 = v11;
    v13[1] = v14;
    LOBYTE(v22) = 1;
    v15 = sub_20E009894();
    v16 = &v1[OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_website];
    *v16 = v15;
    v16[1] = v17;
    type metadata accessor for UtilityArtwork();
    v21 = 2;
    sub_20DF754C8(&qword_27C8523D0, type metadata accessor for UtilityArtwork);
    sub_20E0098C4();
    *&v1[OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_artwork] = v22;
    type metadata accessor for UtilitySupport();
    v21 = 3;
    sub_20DF754C8(&qword_27C8523D8, type metadata accessor for UtilitySupport);
    sub_20E0098C4();
    *&v1[OBJC_IVAR____TtC19HomeUtilityServices19UtilityOrganization_support] = v22;
    v18 = type metadata accessor for UtilityOrganization();
    v20.receiver = v1;
    v20.super_class = v18;
    v3 = objc_msgSendSuper2(&v20, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t UtilityArtwork.icon.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices14UtilityArtwork_icon);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices14UtilityArtwork_icon + 8);

  return v1;
}

id UtilityArtwork.init(icon:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC19HomeUtilityServices14UtilityArtwork_icon];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for UtilityArtwork();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_20DF704DC()
{
  sub_20E009A34();
  MEMORY[0x20F32AC10](0);
  return sub_20E009A54();
}

uint64_t sub_20DF70520()
{
  sub_20E009A34();
  MEMORY[0x20F32AC10](0);
  return sub_20E009A54();
}

uint64_t sub_20DF70570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1852793705 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20E009984();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20DF705F8(uint64_t a1)
{
  v2 = sub_20DF7550C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF70634(uint64_t a1)
{
  v2 = sub_20DF7550C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF7069C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8523E0, &qword_20E00B278);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF7550C();
  sub_20E009A84();
  v10 = *(v2 + OBJC_IVAR____TtC19HomeUtilityServices14UtilityArtwork_icon);
  v11 = *(v2 + OBJC_IVAR____TtC19HomeUtilityServices14UtilityArtwork_icon + 8);
  sub_20E009914();
  return (*(v5 + 8))(v8, v4);
}

id UtilityArtwork.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8523F0, &qword_20E00B280);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF7550C();
  sub_20E009A74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for UtilityArtwork();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = sub_20E009894();
    v13 = &v1[OBJC_IVAR____TtC19HomeUtilityServices14UtilityArtwork_icon];
    *v13 = v11;
    v13[1] = v14;
    v15 = type metadata accessor for UtilityArtwork();
    v16.receiver = v1;
    v16.super_class = v15;
    v3 = objc_msgSendSuper2(&v16, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t sub_20DF70A18(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8523E0, &qword_20E00B278);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF7550C();
  sub_20E009A84();
  v10 = *(v8 + OBJC_IVAR____TtC19HomeUtilityServices14UtilityArtwork_icon);
  v11 = *(v8 + OBJC_IVAR____TtC19HomeUtilityServices14UtilityArtwork_icon + 8);
  sub_20E009914();
  return (*(v4 + 8))(v7, v3);
}

uint64_t UtilitySupport.customerServicePhone.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServicePhone);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServicePhone + 8);

  return v1;
}

uint64_t UtilitySupport.customerServiceEmail.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceEmail);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceEmail + 8);

  return v1;
}

uint64_t UtilitySupport.customerServiceSMS.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceSMS);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceSMS + 8);

  return v1;
}

uint64_t UtilitySupport.customerServiceBusinessChat.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceBusinessChat);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceBusinessChat + 8);

  return v1;
}

id UtilitySupport.init(customerServicePhone:customerServiceEmail:customerServiceSMS:customerServiceBusinessChat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &v8[OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServicePhone];
  *v9 = a1;
  *(v9 + 1) = a2;
  v10 = &v8[OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceEmail];
  *v10 = a3;
  *(v10 + 1) = a4;
  v11 = &v8[OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceSMS];
  *v11 = a5;
  *(v11 + 1) = a6;
  v12 = &v8[OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceBusinessChat];
  *v12 = a7;
  *(v12 + 1) = a8;
  v14.receiver = v8;
  v14.super_class = type metadata accessor for UtilitySupport();
  return objc_msgSendSuper2(&v14, sel_init);
}

unint64_t sub_20DF70D20()
{
  v1 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v1 = 0xD00000000000001BLL;
  }

  *v0;
  if (*v0 <= 1u)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_20DF70D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DF7591C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DF70DB4(uint64_t a1)
{
  v2 = sub_20DF75560();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF70DF0(uint64_t a1)
{
  v2 = sub_20DF75560();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF70EC0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8523F8, &qword_20E00B288);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF75560();
  sub_20E009A84();
  v11 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServicePhone);
  v12 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServicePhone + 8);
  v20[15] = 0;
  sub_20E009914();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceEmail);
  v14 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceEmail + 8);
  v20[14] = 1;
  sub_20E009914();
  v15 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceSMS);
  v16 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceSMS + 8);
  v20[13] = 2;
  sub_20E009914();
  v18 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceBusinessChat);
  v19 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceBusinessChat + 8);
  v20[12] = 3;
  sub_20E009914();
  return (*(v6 + 8))(v9, v5);
}

id UtilitySupport.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852408, &qword_20E00B290);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF75560();
  sub_20E009A74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for UtilitySupport();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = 0;
    v11 = sub_20E009894();
    v13 = &v1[OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServicePhone];
    *v13 = v11;
    v13[1] = v14;
    v26 = 1;
    v15 = sub_20E009894();
    v16 = &v1[OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceEmail];
    *v16 = v15;
    v16[1] = v17;
    v26 = 2;
    v18 = sub_20E009894();
    v19 = &v1[OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceSMS];
    *v19 = v18;
    v19[1] = v20;
    v26 = 3;
    v21 = sub_20E009894();
    v22 = &v1[OBJC_IVAR____TtC19HomeUtilityServices14UtilitySupport_customerServiceBusinessChat];
    *v22 = v21;
    v22[1] = v23;
    v24 = type metadata accessor for UtilitySupport();
    v25.receiver = v1;
    v25.super_class = v24;
    v3 = objc_msgSendSuper2(&v25, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t TAFField.type.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_type);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_type + 8);

  return v1;
}

uint64_t TAFField.label.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_label);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_label + 8);

  return v1;
}

uint64_t TAFField.formKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_formKey);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_formKey + 8);

  return v1;
}

uint64_t TAFField.hintText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_hintText);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_hintText + 8);

  return v1;
}

uint64_t TAFField.textContextType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_textContextType);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_textContextType + 8);

  return v1;
}

id sub_20DF71628(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_20E0091C4();

  return v6;
}

uint64_t TAFField.regex.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_regex);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_regex + 8);

  return v1;
}

id sub_20DF716E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v15 = &v14[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_type];
  *v15 = a1;
  v15[1] = a2;
  v16 = &v14[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_label];
  *v16 = a3;
  v16[1] = a4;
  v17 = &v14[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_formKey];
  *v17 = a5;
  v17[1] = a6;
  v18 = &v14[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_hintText];
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = &v14[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_textContextType];
  *v19 = a7;
  v19[1] = a8;
  v14[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_isSecure] = a9;
  *&v14[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_maxCharacterCount] = a10;
  *&v14[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_minCharacterCount] = a11;
  v20 = &v14[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_regex];
  *v20 = a12;
  v20[1] = a13;
  v14[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_required] = a14;
  v22.receiver = v14;
  v22.super_class = type metadata accessor for TAFField();
  return objc_msgSendSuper2(&v22, sel_init);
}

unint64_t sub_20DF7190C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000011;
    v6 = 0x7865676572;
    if (a1 != 8)
    {
      v6 = 0x6465726975716572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6572756365537369;
    if (a1 != 5)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701869940;
    v2 = 0x79654B6D726F66;
    v3 = 0x74786554746E6968;
    if (a1 != 3)
    {
      v3 = 0x746E6F4374786574;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6C6562616CLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_20DF71A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DF75A8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DF71A88(uint64_t a1)
{
  v2 = sub_20DF755B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF71AC4(uint64_t a1)
{
  v2 = sub_20DF755B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF71BBC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852410, &qword_20E00B298);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF755B4();
  sub_20E009A84();
  v11 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_type);
  v12 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_type + 8);
  v28[15] = 0;
  sub_20E009914();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_label);
  v14 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_label + 8);
  v28[14] = 1;
  sub_20E009914();
  v15 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_formKey);
  v16 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_formKey + 8);
  v28[13] = 2;
  sub_20E009914();
  v17 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_hintText);
  v18 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_hintText + 8);
  v28[12] = 3;
  sub_20E009914();
  v19 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_textContextType);
  v20 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_textContextType + 8);
  v28[11] = 4;
  sub_20E009914();
  v21 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_isSecure);
  v28[10] = 5;
  sub_20E009924();
  v22 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_maxCharacterCount);
  v28[9] = 6;
  sub_20E009934();
  v23 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_minCharacterCount);
  v28[8] = 7;
  sub_20E009934();
  v24 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_regex);
  v25 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_regex + 8);
  v28[7] = 8;
  sub_20E009914();
  v27 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices8TAFField_required);
  v28[6] = 9;
  sub_20E009924();
  return (*(v6 + 8))(v9, v5);
}

id TAFField.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852420, &qword_20E00B2A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF755B4();
  sub_20E009A74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for TAFField();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v32 = 0;
    v11 = sub_20E009894();
    v13 = &v1[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_type];
    *v13 = v11;
    v13[1] = v14;
    v32 = 1;
    v15 = sub_20E009894();
    v16 = &v1[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_label];
    *v16 = v15;
    v16[1] = v17;
    v32 = 2;
    v18 = sub_20E009894();
    v19 = &v1[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_formKey];
    *v19 = v18;
    v19[1] = v20;
    v32 = 3;
    v21 = sub_20E009894();
    v22 = &v1[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_hintText];
    *v22 = v21;
    v22[1] = v23;
    v32 = 4;
    v24 = sub_20E009894();
    v25 = &v1[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_textContextType];
    *v25 = v24;
    v25[1] = v26;
    v32 = 5;
    v1[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_isSecure] = sub_20E0098A4() & 1;
    v32 = 6;
    *&v1[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_maxCharacterCount] = sub_20E0098B4();
    v32 = 7;
    *&v1[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_minCharacterCount] = sub_20E0098B4();
    v32 = 8;
    v27 = sub_20E009894();
    v28 = &v1[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_regex];
    *v28 = v27;
    v28[1] = v29;
    v32 = 9;
    v1[OBJC_IVAR____TtC19HomeUtilityServices8TAFField_required] = sub_20E0098A4() & 1;
    v30 = type metadata accessor for TAFField();
    v31.receiver = v1;
    v31.super_class = v30;
    v3 = objc_msgSendSuper2(&v31, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

id TAFAuthorizationField.__allocating_init(formKey:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC19HomeUtilityServices21TAFAuthorizationField_formKey];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC19HomeUtilityServices21TAFAuthorizationField_value];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id TAFAuthorizationField.init(formKey:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC19HomeUtilityServices21TAFAuthorizationField_formKey];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR____TtC19HomeUtilityServices21TAFAuthorizationField_value];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for TAFAuthorizationField();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t TAFAuthorizationField.formKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21TAFAuthorizationField_formKey);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21TAFAuthorizationField_formKey + 8);

  return v1;
}

uint64_t TAFAuthorizationField.value.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21TAFAuthorizationField_value);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21TAFAuthorizationField_value + 8);

  return v1;
}

uint64_t sub_20DF72670()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 0x79654B6D726F66;
  }

  *v0;
  return result;
}

uint64_t sub_20DF726A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B6D726F66 && a2 == 0xE700000000000000;
  if (v6 || (sub_20E009984() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E009984();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20DF72780(uint64_t a1)
{
  v2 = sub_20DF7562C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF727BC(uint64_t a1)
{
  v2 = sub_20DF7562C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF72864(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852438, &qword_20E00B2A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF7562C();
  sub_20E009A84();
  v11 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices21TAFAuthorizationField_formKey);
  v12 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices21TAFAuthorizationField_formKey + 8);
  v16[15] = 0;
  sub_20E009914();
  if (!v2)
  {
    v14 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices21TAFAuthorizationField_value);
    v15 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices21TAFAuthorizationField_value + 8);
    v16[14] = 1;
    sub_20E009914();
  }

  return (*(v6 + 8))(v9, v5);
}

id TAFAuthorizationField.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852448, &qword_20E00B2B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF7562C();
  sub_20E009A74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for TAFAuthorizationField();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = 0;
    v11 = sub_20E009894();
    v13 = &v1[OBJC_IVAR____TtC19HomeUtilityServices21TAFAuthorizationField_formKey];
    *v13 = v11;
    v13[1] = v14;
    v20 = 1;
    v15 = sub_20E009894();
    v16 = &v1[OBJC_IVAR____TtC19HomeUtilityServices21TAFAuthorizationField_value];
    *v16 = v15;
    v16[1] = v17;
    v18 = type metadata accessor for TAFAuthorizationField();
    v19.receiver = v1;
    v19.super_class = v18;
    v3 = objc_msgSendSuper2(&v19, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t TAFSection.header.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices10TAFSection_header);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices10TAFSection_header + 8);

  return v1;
}

id TAFSection.init(header:fields:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC19HomeUtilityServices10TAFSection_header];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC19HomeUtilityServices10TAFSection_fields] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for TAFSection();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_20DF72DC0()
{
  if (*v0)
  {
    return 0x73646C656966;
  }

  else
  {
    return 0x726564616568;
  }
}

uint64_t sub_20DF72DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726564616568 && a2 == 0xE600000000000000;
  if (v6 || (sub_20E009984() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73646C656966 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E009984();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20DF72EC0(uint64_t a1)
{
  v2 = sub_20DF75680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF72EFC(uint64_t a1)
{
  v2 = sub_20DF75680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF72FA0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852450, &qword_20E00B2B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF75680();
  sub_20E009A84();
  v11 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices10TAFSection_header);
  v12 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices10TAFSection_header + 8);
  v16 = 0;
  sub_20E009914();
  if (!v2)
  {
    v15 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices10TAFSection_fields);
    v14[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
    sub_20DF756D4(&qword_2811230A8);
    sub_20E009944();
  }

  return (*(v6 + 8))(v9, v5);
}

id TAFSection.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852468, &qword_20E00B2C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF75680();
  sub_20E009A74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for TAFSection();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v19) = 0;
    v11 = sub_20E009894();
    v13 = &v1[OBJC_IVAR____TtC19HomeUtilityServices10TAFSection_header];
    *v13 = v11;
    v13[1] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
    v18 = 1;
    sub_20DF756D4(&qword_2811230A0);
    sub_20E0098C4();
    *&v1[OBJC_IVAR____TtC19HomeUtilityServices10TAFSection_fields] = v19;
    v15 = type metadata accessor for TAFSection();
    v17.receiver = v1;
    v17.super_class = v15;
    v3 = objc_msgSendSuper2(&v17, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t sub_20DF73484()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21TAFVerificationFactor__factor + 16);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21TAFVerificationFactor__factor + 24);
  v3 = v1 == 5459283 && v2 == 0xE300000000000000;
  if (v3 || (sub_20E009984() & 1) != 0)
  {
    return 1;
  }

  v5 = v1 == 0x4C49414D45 && v2 == 0xE500000000000000;
  if (v5 || (sub_20E009984() & 1) != 0)
  {
    return 0;
  }

  v6 = v1 == 0xD000000000000010 && 0x800000020E014D40 == v2;
  if (v6 || (sub_20E009984() & 1) != 0)
  {
    return 3;
  }

  if (v1 == 1280065859 && v2 == 0xE400000000000000)
  {
    return 2;
  }

  if (sub_20E009984())
  {
    return 2;
  }

  return 4;
}

uint64_t sub_20DF735C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21TAFVerificationFactor__factor + 32);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21TAFVerificationFactor__factor + 40);

  return v1;
}

unint64_t sub_20DF73600()
{
  v5 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21TAFVerificationFactor__factor + 32);
  v6 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21TAFVerificationFactor__factor + 48);
  v7 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21TAFVerificationFactor__factor + 64);
  v3 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21TAFVerificationFactor__factor);
  v4 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21TAFVerificationFactor__factor + 16);
  result = sub_20DFFFE98();
  if (!result)
  {
    v2 = MEMORY[0x277D84F90];

    return sub_20DF74F30(v2);
  }

  return result;
}

id TAFVerificationFactor.__allocating_init(dict:)()
{
  v27 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = sub_20E009154();

  *&v26[0] = 0;
  v2 = [v0 dataWithJSONObject:v1 options:0 error:v26];

  v3 = *&v26[0];
  if (v2)
  {
    v4 = sub_20E008B84();
    v6 = v5;

    v7 = sub_20E008744();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_20E008734();
    sub_20DF75740();
    sub_20E008724();

    v23 = v26[2];
    v24 = v26[3];
    v25 = v26[4];
    v21 = v26[0];
    v22 = v26[1];
    v12 = type metadata accessor for TAFVerificationFactor();
    v13 = objc_allocWithZone(v12);
    v14 = &v13[OBJC_IVAR____TtC19HomeUtilityServices21TAFVerificationFactor__factor];
    v15 = v22;
    *v14 = v21;
    *(v14 + 1) = v15;
    v16 = v24;
    *(v14 + 2) = v23;
    *(v14 + 3) = v16;
    *(v14 + 4) = v25;
    v20.receiver = v13;
    v20.super_class = v12;
    v17 = objc_msgSendSuper2(&v20, sel_init);
    sub_20DF67FFC(v4, v6);
    result = v17;
  }

  else
  {
    v10 = v3;
    v11 = sub_20E008A34();

    swift_willThrow();
    result = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_20DF73990@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_20DF75DC8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t UtilityRegion.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_name);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_name + 8);

  return v1;
}

uint64_t UtilityRegion.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_identifier + 8);

  return v1;
}

uint64_t UtilityRegion.shortName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_shortName);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_shortName + 8);

  return v1;
}

id UtilityRegion.__allocating_init(name:identifier:shortName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_name];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_identifier];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_shortName];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id UtilityRegion.init(name:identifier:shortName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = &v6[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_name];
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = &v6[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_identifier];
  *v8 = a3;
  *(v8 + 1) = a4;
  v9 = &v6[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_shortName];
  *v9 = a5;
  *(v9 + 1) = a6;
  v11.receiver = v6;
  v11.super_class = type metadata accessor for UtilityRegion();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_20DF73C8C()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x6D614E74726F6873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_20DF73CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DF774B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DF73D10(uint64_t a1)
{
  v2 = sub_20DF75DFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF73D4C(uint64_t a1)
{
  v2 = sub_20DF75DFC();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_20DF73DA0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20DF73E40(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852498, &qword_20E00B2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF75DFC();
  sub_20E009A84();
  v11 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_name);
  v12 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_name + 8);
  v18[15] = 0;
  sub_20E009914();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_identifier);
  v14 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_identifier + 8);
  v18[14] = 1;
  sub_20E009914();
  v16 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_shortName);
  v17 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_shortName + 8);
  v18[13] = 2;
  sub_20E009914();
  return (*(v6 + 8))(v9, v5);
}

id UtilityRegion.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8524A8, &qword_20E00B2D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF75DFC();
  sub_20E009A74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for UtilityRegion();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = 0;
    v11 = sub_20E009894();
    v13 = &v1[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_name];
    *v13 = v11;
    v13[1] = v14;
    v23 = 1;
    v15 = sub_20E009894();
    v16 = &v1[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_identifier];
    *v16 = v15;
    v16[1] = v17;
    v23 = 2;
    v18 = sub_20E009894();
    v19 = &v1[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_shortName];
    *v19 = v18;
    v19[1] = v20;
    v21 = type metadata accessor for UtilityRegion();
    v22.receiver = v1;
    v22.super_class = v21;
    v3 = objc_msgSendSuper2(&v22, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t sub_20DF74314@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = objc_allocWithZone(a2());
  result = a3(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_20DF74398(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_20DF7440C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_20DF74468(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_20DF74468(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20DF74534(v11, 0, 0, 1, a1, a2);
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
    sub_20DF6981C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_20DF74534(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_20DF74640(a5, a6);
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
    result = sub_20E009784();
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

uint64_t sub_20DF74640(uint64_t a1, unint64_t a2)
{
  v4 = sub_20DF7468C(a1, a2);
  sub_20DF747BC(&unk_28252D110);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_20DF7468C(uint64_t a1, unint64_t a2)
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

  v6 = sub_20DFB855C(v5, 0);
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

  result = sub_20E009784();
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
        v10 = sub_20E009314();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20DFB855C(v10, 0);
        result = sub_20E0096F4();
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

uint64_t sub_20DF747BC(uint64_t result)
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

  result = sub_20DF748A8(result, v12, 1, v3);
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

char *sub_20DF748A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A0, &qword_20E013380);
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

_BYTE **sub_20DF7499C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

char *sub_20DF749AC(char *a1, int64_t a2, char a3)
{
  result = sub_20DFF077C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20DF749CC(char *a1, int64_t a2, char a3)
{
  result = sub_20DFF0888(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_20DF749EC(size_t a1, int64_t a2, char a3)
{
  result = sub_20DFF097C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20DF74A0C(char *a1, int64_t a2, char a3)
{
  result = sub_20DFF0B6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20DF74A2C(void *a1, int64_t a2, char a3)
{
  result = sub_20DFF0C8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20DF74A4C(void *a1, int64_t a2, char a3)
{
  result = sub_20DFF0DC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_20DF74A6C(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_20DFB85D0(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_20DFFB490(v15, v4 & 1);
    v17 = *a3;
    v10 = sub_20DFB85D0(v6, v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_20E0099D4();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_20DFFBF88();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v6;
  v23[1] = v5;
  v24 = (v22[7] + 16 * v10);
  *v24 = v7;
  v24[1] = v8;
  v25 = v22[2];
  v14 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_20E009714();
    MEMORY[0x20F32A4B0](0xD00000000000001BLL, 0x800000020E015560);
    sub_20E0097E4();
    MEMORY[0x20F32A4B0](39, 0xE100000000000000);
    sub_20E0097F4();
    __break(1u);
    return;
  }

  v22[2] = v26;
  if (v41 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v27 = *(v4 - 1);
      v8 = *v4;
      v28 = *a3;

      v29 = sub_20DFB85D0(v6, v5);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v30;
      if (v28[3] < v33)
      {
        sub_20DFFB490(v33, 1);
        v34 = *a3;
        v29 = sub_20DFB85D0(v6, v5);
        if ((v16 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v6;
      v37[1] = v5;
      v38 = (v36[7] + 16 * v29);
      *v38 = v27;
      v38[1] = v8;
      v39 = v36[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v36[2] = v40;
      v4 += 4;
      if (v41 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

unint64_t sub_20DF74E1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522C8, &qword_20E00B240);
    v3 = sub_20E009834();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_20DFB85D0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20DF74F30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852590, &qword_20E00C118);
    v3 = sub_20E009834();
    v4 = a1 + 32;

    while (1)
    {
      sub_20DF77A74(v4, &v13, &qword_27C852598, &unk_20E00C120);
      v5 = v13;
      v6 = v14;
      result = sub_20DFB85D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_20DF77A64(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20DF75060(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852580, &qword_20E00C108);
    v3 = sub_20E009834();
    v4 = a1 + 32;

    while (1)
    {
      sub_20DF77A74(v4, v13, &qword_27C852588, &qword_20E00C110);
      result = sub_20DFB85FC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_20DF77A64(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20DF751E4()
{
  result = qword_2811233B0;
  if (!qword_2811233B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811233B0);
  }

  return result;
}

unint64_t sub_20DF752C8()
{
  result = qword_27C852388;
  if (!qword_27C852388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852388);
  }

  return result;
}

unint64_t sub_20DF75378()
{
  result = qword_27C852390;
  if (!qword_27C852390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852390);
  }

  return result;
}

unint64_t sub_20DF75420()
{
  result = qword_27C8523A0;
  if (!qword_27C8523A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8523A0);
  }

  return result;
}

unint64_t sub_20DF75474()
{
  result = qword_27C8523B0;
  if (!qword_27C8523B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8523B0);
  }

  return result;
}

uint64_t sub_20DF754C8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20DF7550C()
{
  result = qword_27C8523E8;
  if (!qword_27C8523E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8523E8);
  }

  return result;
}

unint64_t sub_20DF75560()
{
  result = qword_27C852400;
  if (!qword_27C852400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852400);
  }

  return result;
}

unint64_t sub_20DF755B4()
{
  result = qword_27C852418;
  if (!qword_27C852418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852418);
  }

  return result;
}

unint64_t sub_20DF7562C()
{
  result = qword_27C852440;
  if (!qword_27C852440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852440);
  }

  return result;
}

unint64_t sub_20DF75680()
{
  result = qword_27C852458;
  if (!qword_27C852458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852458);
  }

  return result;
}

uint64_t sub_20DF756D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852460, &qword_20E00B2C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20DF75740()
{
  result = qword_27C852478;
  if (!qword_27C852478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852478);
  }

  return result;
}

uint64_t sub_20DF757B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746973626577 && a2 == 0xE700000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74726F70707573 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_20DF7591C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000020E014990 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000020E0149B0 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020E0152B0 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000020E0149F0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_20E009984();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_20DF75A8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79654B6D726F66 && a2 == 0xE700000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74786554746E6968 && a2 == 0xE800000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E6F4374786574 && a2 == 0xEF65707954747865 || (sub_20E009984() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6572756365537369 && a2 == 0xE800000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020E015360 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020E015380 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7865676572 && a2 == 0xE500000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xE800000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t sub_20DF75DC8(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_20DF75DFC()
{
  result = qword_27C8524A0;
  if (!qword_27C8524A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8524A0);
  }

  return result;
}

unint64_t sub_20DF75E54()
{
  result = qword_27C8524B0;
  if (!qword_27C8524B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8524B0);
  }

  return result;
}

uint64_t dispatch thunk of UtilityConfiguration.trustedAccountFingerprintEnabled()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DF6BF20;

  return v6();
}

uint64_t getEnumTagSinglePayload for TAFField.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TAFField.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UtilityPeaks.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UtilityPeaks.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AuthTokenRefreshResponse.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AuthTokenRefreshResponse.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_20DF76C78()
{
  result = qword_27C8524B8;
  if (!qword_27C8524B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8524B8);
  }

  return result;
}

unint64_t sub_20DF76CD0()
{
  result = qword_27C8524C0;
  if (!qword_27C8524C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8524C0);
  }

  return result;
}

unint64_t sub_20DF76D28()
{
  result = qword_27C8524C8;
  if (!qword_27C8524C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8524C8);
  }

  return result;
}

unint64_t sub_20DF76D80()
{
  result = qword_27C8524D0;
  if (!qword_27C8524D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8524D0);
  }

  return result;
}

unint64_t sub_20DF76DD8()
{
  result = qword_27C8524D8;
  if (!qword_27C8524D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8524D8);
  }

  return result;
}

unint64_t sub_20DF76E30()
{
  result = qword_27C8524E0;
  if (!qword_27C8524E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8524E0);
  }

  return result;
}

unint64_t sub_20DF76E88()
{
  result = qword_27C8524E8;
  if (!qword_27C8524E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8524E8);
  }

  return result;
}

unint64_t sub_20DF76EE0()
{
  result = qword_27C8524F0;
  if (!qword_27C8524F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8524F0);
  }

  return result;
}

unint64_t sub_20DF76F38()
{
  result = qword_27C8524F8;
  if (!qword_27C8524F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8524F8);
  }

  return result;
}

unint64_t sub_20DF76F90()
{
  result = qword_27C852500;
  if (!qword_27C852500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852500);
  }

  return result;
}

unint64_t sub_20DF76FE8()
{
  result = qword_27C852508;
  if (!qword_27C852508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852508);
  }

  return result;
}

unint64_t sub_20DF77040()
{
  result = qword_27C852510;
  if (!qword_27C852510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852510);
  }

  return result;
}

unint64_t sub_20DF77098()
{
  result = qword_27C852518;
  if (!qword_27C852518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852518);
  }

  return result;
}

unint64_t sub_20DF770F0()
{
  result = qword_27C852520;
  if (!qword_27C852520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852520);
  }

  return result;
}

unint64_t sub_20DF77148()
{
  result = qword_27C852528;
  if (!qword_27C852528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852528);
  }

  return result;
}

unint64_t sub_20DF771A0()
{
  result = qword_27C852530;
  if (!qword_27C852530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852530);
  }

  return result;
}

unint64_t sub_20DF771F8()
{
  result = qword_27C852538;
  if (!qword_27C852538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852538);
  }

  return result;
}

unint64_t sub_20DF77250()
{
  result = qword_27C852540;
  if (!qword_27C852540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852540);
  }

  return result;
}

unint64_t sub_20DF772A8()
{
  result = qword_27C852548;
  if (!qword_27C852548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852548);
  }

  return result;
}

unint64_t sub_20DF77300()
{
  result = qword_27C852550;
  if (!qword_27C852550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852550);
  }

  return result;
}

unint64_t sub_20DF77358()
{
  result = qword_27C852558;
  if (!qword_27C852558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852558);
  }

  return result;
}

unint64_t sub_20DF773B0()
{
  result = qword_27C852560;
  if (!qword_27C852560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852560);
  }

  return result;
}

unint64_t sub_20DF77408()
{
  result = qword_27C852568;
  if (!qword_27C852568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852568);
  }

  return result;
}

unint64_t sub_20DF77460()
{
  result = qword_27C852570;
  if (!qword_27C852570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852570);
  }

  return result;
}

uint64_t sub_20DF774B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E74726F6873 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_20DF775DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_20DF77620()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DF6BA84;

  return sub_20DF6F1E8(v2, v3);
}

uint64_t sub_20DF776CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20DF6BD98;

  return sub_20DF6D358(v2, v3, v5);
}

uint64_t objectdestroy_115Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20DF777D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20DF6BD98;

  return sub_20DF6CD54(v2, v3, v5);
}

uint64_t sub_20DF77894()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_20DF6BD98;

  return sub_20DF6C89C(v4, v5, v2, v3);
}

uint64_t sub_20DF7795C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20DF6BD98;

  return sub_20DF6C1A0(v2, v3);
}

unint64_t sub_20DF77A10()
{
  result = qword_27C852578;
  if (!qword_27C852578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852578);
  }

  return result;
}

_OWORD *sub_20DF77A64(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_20DF77A74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20DF77B58()
{
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t UtilitySubscriptionResponse.authorizationToken.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionResponse_authorizationToken);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionResponse_authorizationToken + 8);

  return v1;
}

unint64_t sub_20DF77DC4()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x7069726373627573;
  }

  *v0;
  return result;
}

uint64_t sub_20DF77E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7069726373627573 && a2 == 0xEC0000006E6F6974;
  if (v6 || (sub_20E009984() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020E015810 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E009984();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20DF77EF4(uint64_t a1)
{
  v2 = sub_20DF781D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF77F30(uint64_t a1)
{
  v2 = sub_20DF781D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF77FF8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525C0, &qword_20E00C140);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF781D8();
  sub_20E009A84();
  v15 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionResponse_subscription);
  v14[7] = 0;
  type metadata accessor for UtilitySubscriptionInformation();
  sub_20DF811BC(&qword_27C8525D0, type metadata accessor for UtilitySubscriptionInformation);
  sub_20E009944();
  if (!v2)
  {
    v12 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionResponse_authorizationToken);
    v13 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionResponse_authorizationToken + 8);
    v14[6] = 1;
    sub_20E0098D4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_20DF781D8()
{
  result = qword_27C8525C8;
  if (!qword_27C8525C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8525C8);
  }

  return result;
}

id UtilitySubscriptionResponse.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525D8, &qword_20E00C148);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF781D8();
  sub_20E009A74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for UtilitySubscriptionResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for UtilitySubscriptionInformation();
    v18 = 0;
    sub_20DF811BC(&qword_27C8525E0, type metadata accessor for UtilitySubscriptionInformation);
    sub_20E0098C4();
    *&v1[OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionResponse_subscription] = v19;
    LOBYTE(v19) = 1;
    v12 = sub_20E009854();
    v13 = &v1[OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionResponse_authorizationToken];
    *v13 = v12;
    v13[1] = v14;
    v15 = type metadata accessor for UtilitySubscriptionResponse();
    v17.receiver = v1;
    v17.super_class = v15;
    v3 = objc_msgSendSuper2(&v17, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t UtilitySubscriptionInformation.subscriptionID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_subscriptionID);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_subscriptionID + 8);

  return v1;
}

uint64_t UtilitySubscriptionInformation.state.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_state);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_state + 8);

  return v1;
}

uint64_t UtilitySubscriptionInformation.startDate.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_startDate);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_startDate + 8);

  return v1;
}

uint64_t sub_20DF7879C()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DF7889C()
{
  *v0;
  *v0;
  *v0;
  sub_20E009194();
}

uint64_t sub_20DF78988()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DF78A84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_20DF827F4();
  *a2 = result;
  return result;
}

void sub_20DF78AB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0064496E6F6974;
  v4 = 0x7069726373627573;
  v5 = 0xE900000000000065;
  v6 = 0x7461447472617473;
  v7 = 0xEF6E6F697461636FLL;
  v8 = 0x4C65636976726573;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x800000020E014640;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6574617473;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_20DF78B70()
{
  v1 = *v0;
  v2 = 0x7069726373627573;
  v3 = 0x7461447472617473;
  v4 = 0x4C65636976726573;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574617473;
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

uint64_t sub_20DF78C28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20DF827F4();
  *a1 = result;
  return result;
}

uint64_t sub_20DF78C50(uint64_t a1)
{
  v2 = sub_20DF79084();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF78C8C(uint64_t a1)
{
  v2 = sub_20DF79084();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF78DC8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852610, &qword_20E00C150);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF79084();
  sub_20E009A84();
  v11 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_subscriptionID);
  v12 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_subscriptionID + 8);
  LOBYTE(v19) = 0;
  sub_20E009914();
  if (!v2)
  {
    v13 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_state);
    v14 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_state + 8);
    LOBYTE(v19) = 1;
    sub_20E009914();
    v15 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_startDate);
    v16 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_startDate + 8);
    LOBYTE(v19) = 2;
    sub_20E009914();
    v19 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_serviceLocation);
    HIBYTE(v18) = 3;
    type metadata accessor for UtilityServiceLocation();
    sub_20DF811BC(&qword_27C852620, type metadata accessor for UtilityServiceLocation);
    sub_20E009944();
    v19 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_customerAgreements);
    HIBYTE(v18) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852628, &qword_20E00C158);
    sub_20DF790FC();
    sub_20E009944();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_20DF79084()
{
  result = qword_27C852618;
  if (!qword_27C852618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852618);
  }

  return result;
}

unint64_t sub_20DF790FC()
{
  result = qword_27C852630;
  if (!qword_27C852630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852628, &qword_20E00C158);
    sub_20DF811BC(&qword_27C852638, type metadata accessor for UtilityCustomerAgreement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852630);
  }

  return result;
}

id UtilitySubscriptionInformation.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852640, &qword_20E00C160);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF79084();
  sub_20E009A74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for UtilitySubscriptionInformation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v25) = 0;
    v11 = sub_20E009894();
    v13 = &v1[OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_subscriptionID];
    *v13 = v11;
    v13[1] = v14;
    LOBYTE(v25) = 1;
    v15 = sub_20E009894();
    v16 = &v1[OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_state];
    *v16 = v15;
    v16[1] = v17;
    LOBYTE(v25) = 2;
    v18 = sub_20E009894();
    v19 = &v1[OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_startDate];
    *v19 = v18;
    v19[1] = v20;
    type metadata accessor for UtilityServiceLocation();
    v24 = 3;
    sub_20DF811BC(&qword_27C852648, type metadata accessor for UtilityServiceLocation);
    sub_20E0098C4();
    *&v1[OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_serviceLocation] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852628, &qword_20E00C158);
    v24 = 4;
    sub_20DF79614();
    sub_20E0098C4();
    *&v1[OBJC_IVAR____TtC19HomeUtilityServices30UtilitySubscriptionInformation_customerAgreements] = v25;
    v21 = type metadata accessor for UtilitySubscriptionInformation();
    v23.receiver = v1;
    v23.super_class = v21;
    v3 = objc_msgSendSuper2(&v23, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

unint64_t sub_20DF79614()
{
  result = qword_27C852650;
  if (!qword_27C852650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852628, &qword_20E00C158);
    sub_20DF811BC(&qword_27C852658, type metadata accessor for UtilityCustomerAgreement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852650);
  }

  return result;
}

uint64_t UtilityCustomerAgreement.customerAgreementID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_customerAgreementID);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_customerAgreementID + 8);

  return v1;
}

uint64_t UtilityCustomerAgreement.accountID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_accountID);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_accountID + 8);

  return v1;
}

id sub_20DF79858(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v4 = *(a1 + *a3);
  a4();

  v5 = sub_20E009414();

  return v5;
}

uint64_t sub_20DF79954()
{
  v1 = (v0 + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_alternateSupplier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_20DF79A28(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_alternateSupplier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_20DF79A88(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_alternateSupplier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_20DF79C9C()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DF79D84()
{
  *v0;
  *v0;
  sub_20E009194();
}

uint64_t sub_20DF79E58()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DF79F3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_20DF82840();
  *a2 = result;
  return result;
}

void sub_20DF79F6C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x49746E756F636361;
  v5 = 0xE800000000000000;
  v6 = 0x736D6172676F7270;
  v7 = 0xE600000000000000;
  v8 = 0x73726574656DLL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000020E014690;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x800000020E014660;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_20DF7A010()
{
  v1 = *v0;
  v2 = 0x49746E756F636361;
  v3 = 0x736D6172676F7270;
  v4 = 0x73726574656DLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_20DF7A0B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20DF82840();
  *a1 = result;
  return result;
}

uint64_t sub_20DF7A0D8(uint64_t a1)
{
  v2 = sub_20DF7A500();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF7A114(uint64_t a1)
{
  v2 = sub_20DF7A500();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF7A250(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852688, &qword_20E00C168);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF7A500();
  sub_20E009A84();
  v11 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_customerAgreementID);
  v12 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_customerAgreementID + 8);
  LOBYTE(v19) = 0;
  sub_20E009914();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_accountID);
  v14 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_accountID + 8);
  LOBYTE(v19) = 1;
  sub_20E009914();
  v19 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_programs);
  v20 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852698, &qword_20E00C170);
  sub_20DF7A554();
  sub_20E009904();
  v19 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_meters);
  v20 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8526B0, &qword_20E00C178);
  sub_20DF7A62C();
  sub_20E009944();
  v15 = (v3 + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_alternateSupplier);
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  v20 = 4;

  sub_20E0098D4();
  (*(v6 + 8))(v9, v5);
}

unint64_t sub_20DF7A500()
{
  result = qword_27C852690;
  if (!qword_27C852690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852690);
  }

  return result;
}

unint64_t sub_20DF7A554()
{
  result = qword_27C8526A0;
  if (!qword_27C8526A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852698, &qword_20E00C170);
    sub_20DF811BC(&qword_27C8526A8, type metadata accessor for UtilityProgram);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8526A0);
  }

  return result;
}

unint64_t sub_20DF7A62C()
{
  result = qword_27C8526B8;
  if (!qword_27C8526B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8526B0, &qword_20E00C178);
    sub_20DF811BC(&qword_27C8526C0, type metadata accessor for UtilityMeter);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8526B8);
  }

  return result;
}

id UtilityCustomerAgreement.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8526C8, &qword_20E00C180);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = v1;
  v10 = &v1[OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_alternateSupplier];
  *v10 = 0;
  v10[1] = 0;
  v28 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF7A500();
  sub_20E009A74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v15 = v28[1];

    type metadata accessor for UtilityCustomerAgreement();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v5;
    LOBYTE(v30) = 0;
    v13 = v4;
    v14 = sub_20E009894();
    v17 = &v1[OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_customerAgreementID];
    *v17 = v14;
    v17[1] = v18;
    LOBYTE(v30) = 1;
    v19 = sub_20E009894();
    v20 = &v1[OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_accountID];
    *v20 = v19;
    v20[1] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852698, &qword_20E00C170);
    v31 = 2;
    sub_20DF7AB60();
    sub_20E009884();
    *&v1[OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_programs] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8526B0, &qword_20E00C178);
    v31 = 3;
    sub_20DF7AC14();
    sub_20E0098C4();
    *&v1[OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_meters] = v30;
    LOBYTE(v30) = 4;
    v22 = sub_20E009854();
    v24 = v23;
    v25 = v28;
    swift_beginAccess();
    v26 = v25[1];
    *v25 = v22;
    v25[1] = v24;

    v27 = type metadata accessor for UtilityCustomerAgreement();
    v29.receiver = v9;
    v29.super_class = v27;
    v9 = objc_msgSendSuper2(&v29, sel_init);
    (*(v12 + 8))(v8, v13);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

unint64_t sub_20DF7AB60()
{
  result = qword_27C8526D0;
  if (!qword_27C8526D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852698, &qword_20E00C170);
    sub_20DF811BC(&qword_27C8526D8, type metadata accessor for UtilityProgram);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8526D0);
  }

  return result;
}

unint64_t sub_20DF7AC14()
{
  result = qword_27C8526E0;
  if (!qword_27C8526E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8526B0, &qword_20E00C178);
    sub_20DF811BC(&qword_27C8526E8, type metadata accessor for UtilityMeter);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8526E0);
  }

  return result;
}

uint64_t UtilityProgram.programID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_programID);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_programID + 8);

  return v1;
}

uint64_t UtilityProgram.programDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_programDescription);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_programDescription + 8);

  return v1;
}

uint64_t UtilityProgram.enrollmentStatus.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_enrollmentStatus);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_enrollmentStatus + 8);

  return v1;
}

id UtilityProgram.__allocating_init(programID:programDescription:enrollmentStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_programID];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_programDescription];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_enrollmentStatus];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id UtilityProgram.init(programID:programDescription:enrollmentStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = &v6[OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_programID];
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = &v6[OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_programDescription];
  *v8 = a3;
  *(v8 + 1) = a4;
  v9 = &v6[OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_enrollmentStatus];
  *v9 = a5;
  *(v9 + 1) = a6;
  v11.receiver = v6;
  v11.super_class = type metadata accessor for UtilityProgram();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_20DF7AFB8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0x800000020E0146B0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v3 == 1)
  {
    v6 = 0x800000020E0146B0;
  }

  else
  {
    v6 = 0x800000020E0146D0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x496D6172676F7270;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE900000000000064;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x800000020E0146D0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x496D6172676F7270;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20E009984();
  }

  return v11 & 1;
}

uint64_t sub_20DF7B098()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DF7B14C()
{
  *v0;
  *v0;
  sub_20E009194();
}

uint64_t sub_20DF7B1EC()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DF7B29C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_20DF8288C();
  *a2 = result;
  return result;
}

void sub_20DF7B2CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x800000020E0146B0;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000020E0146D0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x496D6172676F7270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_20DF7B33C()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x496D6172676F7270;
  }
}

uint64_t sub_20DF7B3A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20DF8288C();
  *a1 = result;
  return result;
}

uint64_t sub_20DF7B3D0(uint64_t a1)
{
  v2 = sub_20DF7B6EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF7B40C(uint64_t a1)
{
  v2 = sub_20DF7B6EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF7B528(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852708, &qword_20E00C188);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF7B6EC();
  sub_20E009A84();
  v11 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_programID);
  v12 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_programID + 8);
  v18[15] = 0;
  sub_20E009914();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_programDescription);
  v14 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_programDescription + 8);
  v18[14] = 1;
  sub_20E009914();
  v16 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_enrollmentStatus);
  v17 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_enrollmentStatus + 8);
  v18[13] = 2;
  sub_20E009914();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_20DF7B6EC()
{
  result = qword_27C852710;
  if (!qword_27C852710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852710);
  }

  return result;
}

id UtilityProgram.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852718, &qword_20E00C190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF7B6EC();
  sub_20E009A74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for UtilityProgram();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = 0;
    v11 = sub_20E009894();
    v13 = &v1[OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_programID];
    *v13 = v11;
    v13[1] = v14;
    v23 = 1;
    v15 = sub_20E009894();
    v16 = &v1[OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_programDescription];
    *v16 = v15;
    v16[1] = v17;
    v23 = 2;
    v18 = sub_20E009894();
    v19 = &v1[OBJC_IVAR____TtC19HomeUtilityServices14UtilityProgram_enrollmentStatus];
    *v19 = v18;
    v19[1] = v20;
    v21 = type metadata accessor for UtilityProgram();
    v22.receiver = v1;
    v22.super_class = v21;
    v3 = objc_msgSendSuper2(&v22, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t UtilityMeter.meterID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_meterID);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_meterID + 8);

  return v1;
}

uint64_t UtilityMeter.serialNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_serialNumber);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_serialNumber + 8);

  return v1;
}

uint64_t UtilityMeter.make.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_make);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_make + 8);

  return v1;
}

uint64_t UtilityMeter.model.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_model);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_model + 8);

  return v1;
}

uint64_t UtilityMeter.intervalLengthInSeconds.getter()
{
  result = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_intervalLengthInSeconds);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_intervalLengthInSeconds + 8);
  return result;
}

uint64_t UtilityMeter.commodity.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_commodity);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_commodity + 8);

  return v1;
}

uint64_t UtilityMeter.usagePointID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_usagePointID);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_usagePointID + 8);

  return v1;
}

uint64_t sub_20DF7BC54()
{
  *v0;
  *v0;
  *v0;
  sub_20E009194();
}

uint64_t sub_20DF7BD6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_20DF828D8();
  *a2 = result;
  return result;
}

void sub_20DF7BD9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE900000000000079;
  v6 = 0x7469646F6D6D6F63;
  if (v2 != 5)
  {
    v6 = 0x696F506567617375;
    v5 = 0xEC0000006449746ELL;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6C65646F6DLL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000015;
    v7 = 0x800000020E014700;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC0000007265626DLL;
  v10 = 0x754E6C6169726573;
  if (v2 != 1)
  {
    v10 = 1701536109;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_20DF7BE7C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7469646F6D6D6F63;
  if (v1 != 5)
  {
    v3 = 0x696F506567617375;
  }

  v4 = 0x6C65646F6DLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x754E6C6169726573;
  if (v1 != 1)
  {
    v5 = 1701536109;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20DF7BF58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20DF828D8();
  *a1 = result;
  return result;
}

uint64_t sub_20DF7BF80(uint64_t a1)
{
  v2 = sub_20DF7C38C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF7BFBC(uint64_t a1)
{
  v2 = sub_20DF7C38C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF7C114(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852758, &qword_20E00C198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF7C38C();
  sub_20E009A84();
  v11 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_meterID);
  v12 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_meterID + 8);
  v26[15] = 0;
  sub_20E009914();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_serialNumber);
  v14 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_serialNumber + 8);
  v26[14] = 1;
  sub_20E0098D4();
  v15 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_make);
  v16 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_make + 8);
  v26[13] = 2;
  sub_20E0098D4();
  v17 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_model);
  v18 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_model + 8);
  v26[12] = 3;
  sub_20E0098D4();
  v19 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_intervalLengthInSeconds);
  v20 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_intervalLengthInSeconds + 8);
  v26[11] = 4;
  sub_20E0098F4();
  v21 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_commodity);
  v22 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_commodity + 8);
  v26[10] = 5;
  sub_20E0098D4();
  v24 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_usagePointID);
  v25 = *(v3 + OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_usagePointID + 8);
  v26[9] = 6;
  sub_20E0098D4();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_20DF7C38C()
{
  result = qword_27C852760;
  if (!qword_27C852760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852760);
  }

  return result;
}

id UtilityMeter.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852768, &qword_20E00C1A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF7C38C();
  sub_20E009A74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for UtilityMeter();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v35 = 0;
    v11 = sub_20E009894();
    v13 = &v1[OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_meterID];
    *v13 = v11;
    v13[1] = v14;
    v35 = 1;
    v15 = sub_20E009854();
    v16 = &v1[OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_serialNumber];
    *v16 = v15;
    v16[1] = v17;
    v35 = 2;
    v18 = sub_20E009854();
    v19 = &v1[OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_make];
    *v19 = v18;
    v19[1] = v20;
    v35 = 3;
    v21 = sub_20E009854();
    v22 = &v1[OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_model];
    *v22 = v21;
    v22[1] = v23;
    v35 = 4;
    v24 = sub_20E009874();
    v25 = &v1[OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_intervalLengthInSeconds];
    *v25 = v24;
    v25[8] = v26 & 1;
    v35 = 5;
    v27 = sub_20E009854();
    v28 = &v1[OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_commodity];
    *v28 = v27;
    v28[1] = v29;
    v35 = 6;
    v30 = sub_20E009854();
    v31 = &v1[OBJC_IVAR____TtC19HomeUtilityServices12UtilityMeter_usagePointID];
    *v31 = v30;
    v31[1] = v32;
    v33 = type metadata accessor for UtilityMeter();
    v34.receiver = v1;
    v34.super_class = v33;
    v3 = objc_msgSendSuper2(&v34, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t UtilitySubscriptionTokenSet.accessToken.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_accessToken);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_accessToken + 8);

  return v1;
}

uint64_t UtilitySubscriptionTokenSet.idToken.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_idToken);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_idToken + 8);

  return v1;
}

uint64_t UtilitySubscriptionTokenSet.refreshToken.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_refreshToken);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_refreshToken + 8);

  return v1;
}

uint64_t UtilitySubscriptionTokenSet.tokenType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_tokenType);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_tokenType + 8);

  return v1;
}

uint64_t sub_20DF7C9B4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6E656B6F745F6469;
    v6 = 0x5F68736572666572;
    if (a1 != 8)
    {
      v6 = 0x79745F6E656B6F74;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x745F737365636361;
    if (a1 != 5)
    {
      v7 = 0x5F73657269707865;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6F54737365636361;
    v2 = 0x6E656B6F546469;
    v3 = 0x5468736572666572;
    if (a1 != 3)
    {
      v3 = 0x7079546E656B6F74;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x4973657269707865;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_20DF7CB1C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_20DF7C9B4(*a1);
  v5 = v4;
  if (v3 == sub_20DF7C9B4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20E009984();
  }

  return v8 & 1;
}

uint64_t sub_20DF7CBA4()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20DF7C9B4(v1);
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DF7CC08()
{
  sub_20DF7C9B4(*v0);
  sub_20E009194();
}

uint64_t sub_20DF7CC5C()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20DF7C9B4(v1);
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DF7CCBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_20DF82924();
  *a2 = result;
  return result;
}

uint64_t sub_20DF7CCEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20DF7C9B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_20DF7CD34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20DF82924();
  *a1 = result;
  return result;
}

uint64_t sub_20DF7CD5C(uint64_t a1)
{
  v2 = sub_20DF7D274();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF7CD98(uint64_t a1)
{
  v2 = sub_20DF7D274();

  return MEMORY[0x2821FE720](a1, v2);
}

id UtilitySubscriptionTokenSet.__allocating_init(accessToken:expiresIn:idToken:refreshToken:tokenType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = &v18[OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_accessToken];
  *v19 = a1;
  *(v19 + 1) = a2;
  *&v18[OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_expiresIn] = a3;
  v20 = &v18[OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_refreshToken];
  *v20 = a6;
  *(v20 + 1) = a7;
  v21 = &v18[OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_idToken];
  *v21 = a4;
  *(v21 + 1) = a5;
  v22 = &v18[OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_tokenType];
  *v22 = a8;
  *(v22 + 1) = a9;
  v24.receiver = v18;
  v24.super_class = v9;
  return objc_msgSendSuper2(&v24, sel_init);
}

id UtilitySubscriptionTokenSet.init(accessToken:expiresIn:idToken:refreshToken:tokenType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = &v9[OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_accessToken];
  *v10 = a1;
  *(v10 + 1) = a2;
  *&v9[OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_expiresIn] = a3;
  v11 = &v9[OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_refreshToken];
  *v11 = a6;
  *(v11 + 1) = a7;
  v12 = &v9[OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_idToken];
  *v12 = a4;
  *(v12 + 1) = a5;
  v13 = &v9[OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_tokenType];
  *v13 = a8;
  *(v13 + 1) = a9;
  v15.receiver = v9;
  v15.super_class = type metadata accessor for UtilitySubscriptionTokenSet();
  return objc_msgSendSuper2(&v15, sel_init);
}

id UtilitySubscriptionTokenSet.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852798, &qword_20E00C1A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF7D274();
  sub_20E009A74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for UtilitySubscriptionTokenSet();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = sub_20DF7D2C8(&unk_28252D7E8);
    v13 = &v1[OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_accessToken];
    *v13 = v11;
    v13[1] = v14;
    *&v1[OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_expiresIn] = sub_20DF7D3C8(&unk_28252D810);
    v15 = sub_20DF7D2C8(&unk_28252D838);
    v16 = &v1[OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_idToken];
    *v16 = v15;
    v16[1] = v17;
    v18 = sub_20DF7D2C8(&unk_28252D860);
    v19 = &v1[OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_refreshToken];
    *v19 = v18;
    v19[1] = v20;
    v21 = sub_20DF7D2C8(&unk_28252D888);
    v22 = &v1[OBJC_IVAR____TtC19HomeUtilityServices27UtilitySubscriptionTokenSet_tokenType];
    *v22 = v21;
    v22[1] = v23;
    v24 = type metadata accessor for UtilitySubscriptionTokenSet();
    v25.receiver = v1;
    v25.super_class = v24;
    v3 = objc_msgSendSuper2(&v25, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

unint64_t sub_20DF7D274()
{
  result = qword_27C8527A0;
  if (!qword_27C8527A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8527A0);
  }

  return result;
}