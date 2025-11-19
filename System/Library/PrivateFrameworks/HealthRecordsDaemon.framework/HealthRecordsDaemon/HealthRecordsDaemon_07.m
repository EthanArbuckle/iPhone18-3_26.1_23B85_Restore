uint64_t sub_251B10CA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_251B10CF0()
{
  result = qword_27F479EB8;
  if (!qword_27F479EB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479EB8);
  }

  return result;
}

void sub_251B10D3C(unint64_t a1, void *a2, Swift::Bool a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x25308D460](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      v13.value._rawValue = a2;
      v13.is_nil = a3;
      sub_251B0FAC0(&v12, v13);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_251B10E3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251B10EAC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251B10EAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251B10F10()
{
  if (!qword_27F479EC8)
  {
    v0 = sub_251C70E74();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479EC8);
    }
  }
}

uint64_t sub_251B10F6C(uint64_t a1)
{
  sub_251B10FC8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251B10FC8()
{
  if (!qword_27F479ED0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479ED0);
    }
  }
}

uint64_t sub_251B11030(uint64_t a1, uint64_t a2)
{
  sub_251B10FC8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_251B11094()
{
  if (!qword_2813E1C40)
  {
    v0 = sub_251C719B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1C40);
    }
  }
}

uint64_t sub_251B110E4(uint64_t a1)
{
  v3 = a1;
  v2[8] = a1;
  v2[9] = v1;
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = sub_251B11184;

  return sub_251B12CE8((v2 + 2), v3 & 1);
}

uint64_t sub_251B11184()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_251B11584;
  }

  else
  {
    v4 = sub_251B112AC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_251B112AC()
{
  v2 = v0[2];
  v1 = v0[3];
  v0[12] = v2;
  v0[13] = v1;
  v0[14] = v0[5];
  if (*(v1 + 16))
  {
    v3 = (v0[8] >> 1) & 1;
    v0[6] = v2;
    v0[7] = v1;

    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_251B113D0;
    v5 = v0[9];

    return sub_251B13240(v0 + 6, v3);
  }

  else
  {

    v7 = v0[1];
    v8 = v0[12];
    v9 = MEMORY[0x277D84F90];

    return v7(v9, v8);
  }
}

uint64_t sub_251B113D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = v4[9];
    v8 = v4[7];

    v9 = sub_251B1159C;
  }

  else
  {
    v7 = v4[9];
    v4[17] = a1;
    v10 = v4[7];

    v9 = sub_251B11510;
  }

  return MEMORY[0x2822009F8](v9, v7, 0);
}

uint64_t sub_251B11510()
{
  v1 = v0[13];
  v2 = v0[14];

  v3 = v0[17];
  v4 = v0[1];
  v5 = v0[12];

  return v4(v3, v5);
}

uint64_t sub_251B1159C()
{
  v1 = v0[13];
  v2 = v0[14];

  v3 = v0[16];
  v4 = v0[1];

  return v4();
}

uint64_t sub_251B11608(uint64_t a1)
{
  v3 = a1;
  v2[8] = a1;
  v2[9] = v1;
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = sub_251B116A8;

  return sub_251B12CE8((v2 + 2), v3 & 1);
}

uint64_t sub_251B116A8()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_251B14FEC;
  }

  else
  {
    v4 = sub_251B117D0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_251B117D0()
{
  v1 = v0[4];
  v0[12] = v0[3];
  v0[13] = v1;
  v2 = v0[5];
  v0[14] = v2;
  if (*(v2 + 16))
  {
    v3 = (v0[8] >> 1) & 1;
    v0[6] = v1;
    v0[7] = v2;

    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_251B118F8;
    v5 = v0[9];

    return sub_251B13EB4(v0 + 6, v3);
  }

  else
  {

    v7 = v0[1];
    v8 = v0[13];
    v9 = MEMORY[0x277D84F90];

    return v7(v9, v8);
  }
}

uint64_t sub_251B118F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = v4[9];
    v8 = v4[7];

    v9 = sub_251B11AB0;
  }

  else
  {
    v7 = v4[9];
    v4[17] = a1;
    v10 = v4[7];

    v9 = sub_251B11A38;
  }

  return MEMORY[0x2822009F8](v9, v7, 0);
}

uint64_t sub_251B11A38()
{
  v1 = v0[14];
  v2 = v0[12];

  v3 = v0[17];
  v4 = v0[1];
  v5 = v0[13];

  return v4(v3, v5);
}

uint64_t sub_251B11AB0()
{
  v1 = v0[14];
  v2 = v0[12];

  v3 = v0[16];
  v4 = v0[1];

  return v4();
}

uint64_t sub_251B11B20(uint64_t a1)
{
  v3 = a1;
  v2[10] = a1;
  v2[11] = v1;
  v4 = swift_task_alloc();
  v2[12] = v4;
  *v4 = v2;
  v4[1] = sub_251B11BC0;

  return sub_251B12CE8((v2 + 2), v3 & 1);
}

uint64_t sub_251B11BC0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_251B1296C;
  }

  else
  {
    v4 = sub_251B11CE8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_251B11CE8()
{
  v36 = v0;
  v1 = v0[10];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v0[14] = v2;
  v0[15] = v4;
  v0[16] = v5;
  if (*(v2 + 16))
  {
    v6 = (v1 >> 1) & 1;
    v0[6] = v3;
    v0[7] = v2;

    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_251B121F4;
    v8 = v0[11];

    return sub_251B13240(v0 + 6, v6);
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v10 = v0[11];
    v11 = sub_251C70764();
    __swift_project_value_buffer(v11, qword_2813E8130);

    v12 = sub_251C70744();
    v13 = sub_251C713B4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[11];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_251B10780(*(v14 + 112), *(v14 + 120), &v35);
      _os_log_impl(&dword_251A6C000, v12, v13, "%s: no new issuers", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x25308E2B0](v16, -1, -1);
      MEMORY[0x25308E2B0](v15, -1, -1);
    }

    v17 = v0[16];
    if (*(v17 + 16))
    {
      v18 = v0[10];
      v0[8] = v0[15];
      v0[9] = v17;

      v19 = swift_task_alloc();
      v0[19] = v19;
      *v19 = v0;
      v19[1] = sub_251B12688;
      v20 = v0[11];

      return sub_251B13EB4(v0 + 8, (v18 & 2) != 0);
    }

    else
    {
      v21 = v0[14];

      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v22 = v0[11];
      __swift_project_value_buffer(v11, qword_2813E8130);

      v23 = sub_251C70744();
      v24 = sub_251C713B4();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = v0[11];
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v35 = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_251B10780(*(v25 + 112), *(v25 + 120), &v35);
        _os_log_impl(&dword_251A6C000, v23, v24, "%s: no new public keys", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x25308E2B0](v27, -1, -1);
        MEMORY[0x25308E2B0](v26, -1, -1);
      }

      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v28 = v0[11];
      __swift_project_value_buffer(v11, qword_2813E8130);

      v29 = sub_251C70744();
      v30 = sub_251C713F4();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = v0[11];
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v35 = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_251B10780(*(v31 + 112), *(v31 + 120), &v35);
        _os_log_impl(&dword_251A6C000, v29, v30, "%s: done", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        MEMORY[0x25308E2B0](v33, -1, -1);
        MEMORY[0x25308E2B0](v32, -1, -1);
      }

      v34 = v0[1];

      return v34();
    }
  }
}

uint64_t sub_251B121F4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v5 = *(v2 + 88);
    v6 = *(v2 + 56);

    v7 = sub_251B12984;
  }

  else
  {
    v5 = *(v2 + 88);

    v8 = *(v2 + 56);

    v7 = sub_251B12338;
  }

  return MEMORY[0x2822009F8](v7, v5, 0);
}

uint64_t sub_251B12338()
{
  v22 = v0;
  v1 = v0[16];
  if (*(v1 + 16))
  {
    v2 = v0[10];
    v0[8] = v0[15];
    v0[9] = v1;

    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_251B12688;
    v4 = v0[11];

    return sub_251B13EB4(v0 + 8, (v2 & 2) != 0);
  }

  else
  {
    v6 = v0[14];

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v7 = v0[11];
    v8 = sub_251C70764();
    __swift_project_value_buffer(v8, qword_2813E8130);

    v9 = sub_251C70744();
    v10 = sub_251C713B4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[11];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_251B10780(*(v11 + 112), *(v11 + 120), &v21);
      _os_log_impl(&dword_251A6C000, v9, v10, "%s: no new public keys", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x25308E2B0](v13, -1, -1);
      MEMORY[0x25308E2B0](v12, -1, -1);
    }

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v14 = v0[11];
    __swift_project_value_buffer(v8, qword_2813E8130);

    v15 = sub_251C70744();
    v16 = sub_251C713F4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[11];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_251B10780(*(v17 + 112), *(v17 + 120), &v21);
      _os_log_impl(&dword_251A6C000, v15, v16, "%s: done", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x25308E2B0](v19, -1, -1);
      MEMORY[0x25308E2B0](v18, -1, -1);
    }

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_251B12688()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v13 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = v2[9];

    v6 = sub_251B129F4;
    v7 = v4;
  }

  else
  {
    v8 = v2[16];
    v9 = v2[14];
    v10 = v2[11];

    v11 = v2[9];

    v6 = sub_251B127F0;
    v7 = v10;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_251B127F0()
{
  v11 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_251C70764();
  __swift_project_value_buffer(v2, qword_2813E8130);

  v3 = sub_251C70744();
  v4 = sub_251C713F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 88);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_251B10780(*(v5 + 112), *(v5 + 120), &v10);
    _os_log_impl(&dword_251A6C000, v3, v4, "%s: done", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25308E2B0](v7, -1, -1);
    MEMORY[0x25308E2B0](v6, -1, -1);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_251B12984()
{
  v1 = v0[16];
  v2 = v0[14];

  v3 = v0[18];
  v4 = v0[1];

  return v4();
}

uint64_t sub_251B129F4()
{
  v1 = v0[16];
  v2 = v0[14];

  v3 = v0[20];
  v4 = v0[1];

  return v4();
}

uint64_t sub_251B12BEC(int a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v4[2](v4, 1, 0);
  _Block_release(v4);
  v5 = *(v3 + 8);

  return v5();
}

id sub_251B12CB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IssuerDirectoryDownloadTaskManager.URLSessionNoCustomCertVerificationDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_251B12CE8(uint64_t a1, char a2)
{
  *(v3 + 216) = a2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v2;
  return MEMORY[0x2822009F8](sub_251B12D0C, v2, 0);
}

uint64_t sub_251B12D0C()
{
  v25 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = sub_251C70764();
  __swift_project_value_buffer(v2, qword_2813E8130);

  v3 = sub_251C70744();
  v4 = sub_251C713F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 192);
    v6 = *(v0 + 216);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_251B10780(*(v5 + 112), *(v5 + 120), &v24);
    *(v7 + 12) = 2080;
    if (v6)
    {
      v9 = 0x7972726163;
    }

    else
    {
      v9 = 1685025392;
    }

    if (v6)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    v11 = sub_251B10780(v9, v10, &v24);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_251A6C000, v3, v4, "%s: starting issuer directory and public key download from %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v8, -1, -1);
    MEMORY[0x25308E2B0](v7, -1, -1);
  }

  if (*(v0 + 216))
  {

LABEL_14:
    v13 = *(v0 + 192);
    v14 = v13[19];
    v15 = v13[20];
    __swift_project_boxed_opaque_existential_1(v13 + 16, v14);
    v16 = [objc_allocWithZone(type metadata accessor for IssuerDirectoryDownloadTaskManager.URLSessionNoCustomCertVerificationDelegate()) init];
    v17 = *(v15 + 24);
    *(v0 + 136) = v14;
    *(v0 + 144) = v15;
    __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    v17(v16, v14, v15);

    goto LABEL_16;
  }

  v12 = sub_251C719D4();

  if (v12)
  {
    goto LABEL_14;
  }

  sub_251A823B4(*(v0 + 192) + 128, v0 + 112);
LABEL_16:
  v18 = *(v0 + 192);
  v19 = *(v0 + 216);
  sub_251A7E8D8((v0 + 112), v0 + 72);
  sub_251A823B4(v0 + 72, v0 + 24);
  v20 = *(v18 + 168);
  *(v0 + 16) = v19 & 1;
  *(v0 + 64) = v20;
  v21 = v20;
  v22 = swift_task_alloc();
  *(v0 + 200) = v22;
  *v22 = v0;
  v22[1] = sub_251B13028;

  return sub_251AB37D8(v0 + 152);
}

uint64_t sub_251B13028()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_251B131D4;
  }

  else
  {
    v6 = sub_251B13154;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_251B13154()
{
  v1 = *(v0 + 184);
  sub_251B14F7C(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  *v1 = *(v0 + 152);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_251B131D4()
{
  sub_251B14F7C((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  v1 = v0[1];
  v2 = v0[26];

  return v1();
}

uint64_t sub_251B13240(uint64_t *a1, char a2)
{
  *(v3 + 280) = v2;
  *(v3 + 408) = a2;
  v5 = type metadata accessor for VHRDirectoryIssuer();
  *(v3 + 288) = v5;
  v6 = *(v5 - 8);
  *(v3 + 296) = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a1;
  v10 = a1[1];
  *(v3 + 304) = v8;
  *(v3 + 312) = v9;
  *(v3 + 320) = v10;

  return MEMORY[0x2822009F8](sub_251B13310, v2, 0);
}

uint64_t sub_251B13310()
{
  v32 = v0;
  v1 = *(v0 + 320);
  *(v0 + 272) = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 296);
    v30 = (*(v0 + 304) + *(*(v0 + 288) + 20));
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v29 = *(v4 + 72);
    do
    {
      sub_251B14EB4(v5, *(v0 + 304), type metadata accessor for VHRDirectoryIssuer);
      sub_251C6FDA4();
      v6 = *v30;
      v7 = v30[1];
      v8 = objc_allocWithZone(MEMORY[0x277D12498]);
      v9 = sub_251C70EE4();

      v10 = sub_251C70EE4();
      [v8 initWithIdentifier:v9 title:v10];

      MEMORY[0x25308CEE0]();
      if (*((*(v0 + 272) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 272) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((*(v0 + 272) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_251C71174();
      }

      sub_251C71194();
      v11 = *(v0 + 272);
      v12 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v12 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (!v12 && __OFADD__(v3++, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      sub_251B14F1C(*(v0 + 304), type metadata accessor for VHRDirectoryIssuer);
      v5 += v29;
      --v2;
    }

    while (v2);
    if ((*(v0 + 408) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
    if ((*(v0 + 408) & 1) == 0)
    {
LABEL_22:
      v26 = *(v0 + 304);

      v27 = *(v0 + 8);

      return v27(v11);
    }

    v3 = 0;
  }

  *(v0 + 336) = v3;
  *(v0 + 344) = v11;
  *(v0 + 328) = v3;
  if (qword_2813E26F8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v15 = *(v0 + 280);
  v16 = sub_251C70764();
  *(v0 + 352) = __swift_project_value_buffer(v16, qword_2813E8130);

  v17 = sub_251C70744();
  v18 = sub_251C713B4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 280);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_251B10780(*(v19 + 112), *(v19 + 120), &v31);
    _os_log_impl(&dword_251A6C000, v17, v18, "%s: saving issuers", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x25308E2B0](v21, -1, -1);
    MEMORY[0x25308E2B0](v20, -1, -1);
  }

  v22 = *(*(v0 + 280) + 168);
  *(v0 + 360) = v22;
  sub_251A8223C(0, &unk_27F479F50, 0x277D12498);

  v23 = sub_251C71144();
  *(v0 + 368) = v23;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_251B13788;
  v24 = swift_continuation_init();
  sub_251AF7F78();
  *(v0 + 376) = v25;
  *(v0 + 200) = v25;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_251BB5ED4;
  *(v0 + 168) = &block_descriptor_19;
  *(v0 + 176) = v24;
  [v22 insertOrReplaceIssuerRegistryEntries:v23 completion:v0 + 144];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_251B13788()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 384) = v3;
  v4 = *(v1 + 280);
  if (v3)
  {
    v5 = sub_251B13DA0;
  }

  else
  {
    v5 = sub_251B138A8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_251B138A8()
{
  v33 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 280);

  v3 = sub_251C70744();
  v4 = sub_251C713C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 344);
    v6 = *(v0 + 280);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_251B10780(*(v6 + 112), *(v6 + 120), &v32);
    *(v7 + 12) = 2048;
    if (v5 >> 62)
    {
      if (*(v0 + 344) < 0)
      {
        v30 = *(v0 + 344);
      }

      v9 = sub_251C717F4();
    }

    else
    {
      v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = *(v0 + 336);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (v11)
    {
      __break(1u);
      return MEMORY[0x282200938](v9);
    }

    v13 = *(v0 + 328);
    *(v7 + 14) = v12;
    *(v7 + 22) = 2048;
    *(v7 + 24) = v13;
    _os_log_impl(&dword_251A6C000, v3, v4, "%s: inserted %ld issuers. Deleted %ld issuers.", v7, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25308E2B0](v8, -1, -1);
    MEMORY[0x25308E2B0](v7, -1, -1);
  }

  v14 = *(v0 + 352);
  v15 = *(v0 + 320);
  v16 = *(v0 + 280);

  v17 = sub_251C70744();
  v18 = sub_251C713B4();

  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 320);
  if (v19)
  {
    v21 = *(v0 + 312);
    v22 = *(v0 + 280);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_251B10780(*(v22 + 112), *(v22 + 120), &v32);
    *(v23 + 12) = 2048;
    *(v23 + 14) = v21;

    _os_log_impl(&dword_251A6C000, v17, v18, "%s: updating RegistryIssuerContentVersion to %ld", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x25308E2B0](v24, -1, -1);
    MEMORY[0x25308E2B0](v23, -1, -1);
  }

  else
  {
    v25 = *(v0 + 320);
  }

  v26 = *(v0 + 376);
  v27 = *(v0 + 360);
  v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v0 + 392) = v28;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_251B13C0C;
  v29 = swift_continuation_init();
  *(v0 + 264) = v26;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_251BB5ED4;
  *(v0 + 232) = &block_descriptor_23;
  *(v0 + 240) = v29;
  [v27 setRegistryIssuerContentVersion:v28 completion:v0 + 208];
  v9 = v0 + 80;

  return MEMORY[0x282200938](v9);
}

uint64_t sub_251B13C0C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 400) = v3;
  v4 = *(v1 + 280);
  if (v3)
  {
    v5 = sub_251B13E2C;
  }

  else
  {
    v5 = sub_251B13D2C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_251B13D2C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 304);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_251B13DA0()
{
  v1 = *(v0 + 384);
  swift_willThrow();
  v2 = *(v0 + 384);
  v3 = *(v0 + 344);
  v4 = *(v0 + 304);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_251B13E2C()
{
  v1 = *(v0 + 400);
  swift_willThrow();
  v2 = *(v0 + 400);
  v3 = *(v0 + 344);
  v4 = *(v0 + 304);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_251B13EB4(uint64_t *a1, char a2)
{
  *(v3 + 272) = v2;
  *(v3 + 376) = a2;
  v5 = *(type metadata accessor for EUDCCPublicKey() - 8);
  *(v3 + 280) = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a1;
  v9 = a1[1];
  *(v3 + 288) = v7;
  *(v3 + 296) = v8;
  *(v3 + 304) = v9;

  return MEMORY[0x2822009F8](sub_251B13F80, v2, 0);
}

uint64_t sub_251B13F80()
{
  v27 = v0;
  v1 = *(v0 + 304);
  v2 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v0 + 280);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      v7 = *(v0 + 288);
      sub_251B14EB4(v5, v7, type metadata accessor for EUDCCPublicKey);
      v8 = sub_251C283DC();
      v9 = sub_251B14F1C(v7, type metadata accessor for EUDCCPublicKey);
      if (v8)
      {
        MEMORY[0x25308CEE0](v9);
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v10 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_251C71174();
        }

        sub_251C71194();
        v2 = v26;
      }

      v5 += v6;
      --v3;
    }

    while (v3);
  }

  *(v0 + 312) = v2;
  if (*(v0 + 376))
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 272);
    v12 = sub_251C70764();
    *(v0 + 320) = __swift_project_value_buffer(v12, qword_2813E8130);

    v13 = sub_251C70744();
    v14 = sub_251C713B4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 272);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_251B10780(*(v15 + 112), *(v15 + 120), &v26);
      _os_log_impl(&dword_251A6C000, v13, v14, "%s: saving public keys", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x25308E2B0](v17, -1, -1);
      MEMORY[0x25308E2B0](v16, -1, -1);
    }

    v18 = *(*(v0 + 272) + 168);
    *(v0 + 328) = v18;
    sub_251A8223C(0, &unk_27F47BCF0, 0x277D124A0);
    v19 = sub_251C71144();
    *(v0 + 336) = v19;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_251B14310;
    v20 = swift_continuation_init();
    sub_251AF7F78();
    *(v0 + 344) = v21;
    *(v0 + 200) = v21;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_251BB5ED4;
    *(v0 + 168) = &block_descriptor_6;
    *(v0 + 176) = v20;
    [v18 insertOrReplacePublicKeyEntries:v19 completion:v0 + 144];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v22 = *(v0 + 288);

    v23 = *(v0 + 8);
    v24 = *(v0 + 312);

    return v23(v24);
  }
}

uint64_t sub_251B14310()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 352) = v3;
  if (v3)
  {
    v4 = *(v1 + 312);
    v5 = *(v1 + 272);

    v6 = sub_251B14938;
    v7 = v5;
  }

  else
  {
    v7 = *(v1 + 272);
    v6 = sub_251B14438;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_251B14438()
{
  v33 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 272);

  v4 = sub_251C70744();
  v5 = sub_251C713C4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 312);
  if (v6)
  {
    v8 = *(v0 + 272);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_251B10780(*(v8 + 112), *(v8 + 120), &v32);
    *(v9 + 12) = 2048;
    if (v7 >> 62)
    {
      if (*(v0 + 312) < 0)
      {
        v30 = *(v0 + 312);
      }

      v11 = sub_251C717F4();
    }

    else
    {
      v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = *(v0 + 312);
    *(v9 + 14) = v11;

    _os_log_impl(&dword_251A6C000, v4, v5, "%s: inserted %ld public keys", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x25308E2B0](v10, -1, -1);
    MEMORY[0x25308E2B0](v9, -1, -1);
  }

  else
  {
    v13 = *(v0 + 312);
  }

  v14 = *(v0 + 320);
  v15 = *(v0 + 304);
  v16 = *(v0 + 272);

  v17 = sub_251C70744();
  v18 = sub_251C713B4();

  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 304);
  if (v19)
  {
    v21 = *(v0 + 296);
    v22 = *(v0 + 272);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_251B10780(*(v22 + 112), *(v22 + 120), &v32);
    *(v23 + 12) = 2048;
    *(v23 + 14) = v21;

    _os_log_impl(&dword_251A6C000, v17, v18, "%s: updating RegistryPublicKeyContentVersion to %ld", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x25308E2B0](v24, -1, -1);
    MEMORY[0x25308E2B0](v23, -1, -1);
  }

  else
  {
    v25 = *(v0 + 304);
  }

  v26 = *(v0 + 344);
  v27 = *(v0 + 328);
  v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v0 + 360) = v28;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_251B147A0;
  v29 = swift_continuation_init();
  *(v0 + 264) = v26;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_251BB5ED4;
  *(v0 + 232) = &block_descriptor_16_0;
  *(v0 + 240) = v29;
  [v27 setRegistryPublicKeyContentVersion:v28 completion:v0 + 208];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_251B147A0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 368) = v3;
  if (v3)
  {
    v4 = *(v1 + 312);
    v5 = *(v1 + 272);

    v6 = sub_251B149B8;
    v7 = v5;
  }

  else
  {
    v7 = *(v1 + 272);
    v6 = sub_251B148C8;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_251B148C8()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 8);
  v3 = *(v0 + 312);

  return v2(v3);
}

uint64_t sub_251B14938()
{
  v1 = *(v0 + 352);
  swift_willThrow();
  v2 = *(v0 + 352);
  v3 = *(v0 + 288);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_251B149B8()
{
  v1 = *(v0 + 368);
  swift_willThrow();
  v2 = *(v0 + 368);
  v3 = *(v0 + 288);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_251B14A34()
{
  v1 = *(v0 + 120);

  __swift_destroy_boxed_opaque_existential_1((v0 + 128));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t *sub_251B14AC4(uint64_t a1, id a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = (a3 + 16);
  v9 = *a3;
  v17[3] = a4;
  v17[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  swift_defaultActor_initialize();
  sub_251A823B4(v17, v10);
  if (!a2)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    a2 = [objc_allocWithZone(MEMORY[0x277D124A8]) initWithHealthStore_];
  }

  a3[21] = a2;
  swift_getMetatypeMetadata();
  v13 = sub_251C70F74();
  v15 = v14;
  __swift_destroy_boxed_opaque_existential_1(v17);
  a3[14] = v13;
  a3[15] = v15;
  return a3;
}

uint64_t sub_251B14BFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_251AF4F78;

  return sub_251B12BEC(v2, v3, v5);
}

uint64_t sub_251B14CBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_251B14FE8;

  return sub_251B33EA8(v2, v3, v5);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251B14DBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_251B14FE8;

  return sub_251B33F90(a1, v4, v5, v7);
}

uint64_t sub_251B14EB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B14F1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251B15050(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_251C71764();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_251A83384(i, v6);
    type metadata accessor for SecCertificate(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_251C71734();
    v4 = *(v7 + 16);
    sub_251C71774();
    sub_251C71784();
    sub_251C71744();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_251B15160(unint64_t a1, uint64_t *a2)
{
  v13 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_251C71764();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x25308D460](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = *a2;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_251C71734();
      v11 = *(v13 + 16);
      sub_251C71774();
      sub_251C71784();
      sub_251C71744();
      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_251C717F4();
    sub_251C71764();
  }

  return v13;
}

void sub_251B152C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_251B15550;
  *(v15 + 24) = v14;
  if (a6 < 1)
  {

    sub_251C716A4();

    v20 = sub_251C719A4();
    MEMORY[0x25308CDA0](v20);

    MEMORY[0x25308CDA0](0x7365697274657220, 0xE800000000000000);
    sub_251C717E4();
    __break(1u);
  }

  else
  {
    v16 = v15;

    v17 = sub_251C70E44();
    v18 = swift_allocObject();
    v18[2] = a6;
    v18[3] = a4;
    v18[4] = a5;
    v18[5] = a7;
    v18[6] = sub_251B157FC;
    v18[7] = v16;
    aBlock[4] = sub_251B166D8;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_251B166DC;
    aBlock[3] = &block_descriptor_7;
    v19 = _Block_copy(aBlock);
    sub_251A858C4(a4, a5);

    DeviceIdentityIssueClientCertificateWithCompletion();
    _Block_release(v19);
  }
}

uint64_t sub_251B15550(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v9 = a4 & 1;
  return v5(v8);
}

void sub_251B15594(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, void (*a7)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  if (a1)
  {

    sub_251A858C4(a2, a3);
    a7(a1, a2, a3, 0);
    sub_251B1694C(a1, a2, a3);
  }

  if (a6 != 0xFF)
  {
    sub_251B16908(a4, a5, a6);
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v14 = sub_251C70764();
    __swift_project_value_buffer(v14, qword_2813E8130);
    sub_251B16908(a4, a5, a6);
    v15 = sub_251C70744();
    v16 = sub_251C713D4();
    sub_251B16920(a4, a5, a6);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v17 = 136315138;
      sub_251B16908(a4, a5, a6);
      v18 = sub_251C70F74();
      v20 = sub_251B10780(v18, v19, &v24);

      *(v17 + 4) = v20;
      _os_log_impl(&dword_251A6C000, v15, v16, "Could not generate BAA Cert Signature. Error: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x25308E2B0](v23, -1, -1);
      MEMORY[0x25308E2B0](v17, -1, -1);
    }

    sub_251AFEBE4();
    v21 = swift_allocError();
    *v22 = a4;
    *(v22 + 8) = a5;
    *(v22 + 16) = a6;
    a7(v21, 0, 0, 1);
  }
}

void sub_251B15804(__SecKey *a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void (*a8)(void, void, void, void, void, void), uint64_t a9)
{
  v10 = a8;
  v14 = a9;
  v131 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v16 = a3;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v17 = sub_251C70764();
    __swift_project_value_buffer(v17, qword_2813E8130);
    v18 = a3;
    v19 = sub_251C70744();
    v20 = sub_251C713D4();

    v117 = a6;
    if (os_log_type_enabled(v19, v20))
    {
      v119 = v10;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock = v22;
      *v21 = 136315138;
      v123[0] = a3;
      v23 = a3;
      sub_251A82284();
      v24 = sub_251C70F74();
      v26 = sub_251B10780(v24, v25, &aBlock);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_251A6C000, v19, v20, "Could not retrieve BAA private key caused. Error: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      v27 = v22;
      v14 = a9;
      MEMORY[0x25308E2B0](v27, -1, -1);
      v28 = v21;
      v10 = v119;
      MEMORY[0x25308E2B0](v28, -1, -1);
    }

    aBlock = a3;
    v29 = a3;
    sub_251A82284();
    v30 = sub_251C70F74();
    if (a4 < 2)
    {
      v10(0, 0, 0, v30, v31, 0);

LABEL_41:
      HKReleaseSecKey();
      v69 = *MEMORY[0x277D85DE8];
      return;
    }

    v32 = sub_251C70744();
    v33 = sub_251C713C4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      v35 = a4 - 1;
      *(v34 + 4) = a4 - 1;
      _os_log_impl(&dword_251A6C000, v32, v33, "Retrying generating the BAA signature. Retries left: %ld", v34, 0xCu);
      MEMORY[0x25308E2B0](v34, -1, -1);
    }

    else
    {

      v35 = a4 - 1;
    }

    v50 = sub_251C70E44();
    v51 = swift_allocObject();
    v51[2] = v35;
    v51[3] = a5;
    v51[4] = v117;
    v51[5] = a7;
    v51[6] = v10;
    v51[7] = v14;
    v129 = sub_251B169B0;
    v130 = v51;
    aBlock = MEMORY[0x277D85DD0];
    v126 = 1107296256;
    v127 = sub_251B166DC;
    v128 = &block_descriptor_27;
    v52 = _Block_copy(&aBlock);
    sub_251A858C4(a5, v117);

    DeviceIdentityIssueClientCertificateWithCompletion();

LABEL_25:
    _Block_release(v52);

    goto LABEL_41;
  }

  if (!a2 || (v37 = sub_251B15050(a2)) == 0)
  {
LABEL_27:
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v53 = sub_251C70764();
    __swift_project_value_buffer(v53, qword_2813E8130);

    v54 = sub_251C70744();
    v55 = sub_251C713D4();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v123[0] = v57;
      *v56 = 136315138;
      if (a2)
      {
        v58 = *(a2 + 16);
      }

      else
      {
        v58 = 0;
      }

      aBlock = v58;
      LOBYTE(v126) = a2 == 0;
      sub_251B167A8();
      v59 = sub_251C70F74();
      v61 = sub_251B10780(v59, v60, v123);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_251A6C000, v54, v55, "Could not retrieve BAA private key caused by incorrect certs. Count: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x25308E2B0](v57, -1, -1);
      MEMORY[0x25308E2B0](v56, -1, -1);

      v14 = a9;
    }

    else
    {
    }

    if (a4 < 2)
    {
      a8(0, 0, 0, 0xD000000000000011, 0x8000000251C8ADF0, 0);
    }

    else
    {
      v62 = sub_251C70744();
      v63 = sub_251C713C4();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 134217984;
        v65 = a4 - 1;
        *(v64 + 4) = a4 - 1;
        _os_log_impl(&dword_251A6C000, v62, v63, "Retrying generating the BAA signature. Retries left: %ld", v64, 0xCu);
        MEMORY[0x25308E2B0](v64, -1, -1);
      }

      else
      {

        v65 = a4 - 1;
      }

      v66 = sub_251C70E44();
      v67 = swift_allocObject();
      v67[2] = v65;
      v67[3] = a5;
      v67[4] = a6;
      v67[5] = a7;
      v67[6] = a8;
      v67[7] = v14;
      v129 = sub_251B169B0;
      v130 = v67;
      aBlock = MEMORY[0x277D85DD0];
      v126 = 1107296256;
      v127 = sub_251B166DC;
      v128 = &block_descriptor_13;
      v68 = _Block_copy(&aBlock);
      sub_251A858C4(a5, a6);

      DeviceIdentityIssueClientCertificateWithCompletion();
      _Block_release(v68);
    }

    goto LABEL_41;
  }

  v38 = v37;
  if (*(a2 + 16) != 2)
  {

    goto LABEL_27;
  }

  if (v37 >> 62)
  {
    v39 = sub_251C717F4();
  }

  else
  {
    v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = MEMORY[0x277D84F90];
  if (v39)
  {
    aBlock = MEMORY[0x277D84F90];
    sub_251C0BC34(0, v39 & ~(v39 >> 63), 0);
    if (v39 < 0)
    {
      __break(1u);
      goto LABEL_74;
    }

    v114 = a5;
    v118 = a6;
    v40 = aBlock;
    if ((v38 & 0xC000000000000001) != 0)
    {
      v41 = 0;
      do
      {
        v42 = MEMORY[0x25308D460](v41, v38);
        v43 = SecCertificateCopyData(v42);
        v44 = sub_251C6FEE4();
        v46 = v45;
        swift_unknownObjectRelease();

        aBlock = v40;
        v48 = *(v40 + 16);
        v47 = *(v40 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_251C0BC34((v47 > 1), v48 + 1, 1);
          v40 = aBlock;
        }

        ++v41;
        *(v40 + 16) = v48 + 1;
        v49 = v40 + 16 * v48;
        *(v49 + 32) = v44;
        *(v49 + 40) = v46;
      }

      while (v39 != v41);
    }

    else
    {
      v70 = (v38 + 32);
      do
      {
        v71 = *v70;
        v72 = SecCertificateCopyData(v71);
        v73 = sub_251C6FEE4();
        v75 = v74;

        aBlock = v40;
        v77 = *(v40 + 16);
        v76 = *(v40 + 24);
        if (v77 >= v76 >> 1)
        {
          sub_251C0BC34((v76 > 1), v77 + 1, 1);
          v40 = aBlock;
        }

        *(v40 + 16) = v77 + 1;
        v78 = v40 + 16 * v77;
        *(v78 + 32) = v73;
        *(v78 + 40) = v75;
        ++v70;
        --v39;
      }

      while (v39);
    }

    v14 = a9;
    a6 = v118;
    a5 = v114;
  }

  error = 0;
  if (a1)
  {
    v79 = *MEMORY[0x277CDC300];
    v80 = sub_251C6FEC4();
    v81 = SecKeyCreateSignature(a1, v79, v80, &error);

    if (v81)
    {
      v82 = sub_251C6FEE4();
      v9 = v83;

      v84 = error;

      if (!v84)
      {
        a8(v40, v82, v9, 0, 0, 255);

        sub_251A83028(v82, v9);
        goto LABEL_41;
      }
    }

    else
    {

      v82 = 0;
      v9 = 0xF000000000000000;
    }

    v116 = v82;
    if (!*(v40 + 16))
    {

      v88 = a8;
LABEL_58:
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v93 = sub_251C70764();
      __swift_project_value_buffer(v93, qword_2813E8130);
      v94 = sub_251C70744();
      v95 = sub_251C713D4();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&dword_251A6C000, v94, v95, "BAA Signature failed with nil, but referenceKey populated", v96, 2u);
        MEMORY[0x25308E2B0](v96, -1, -1);
      }

      if (error)
      {
        v97 = sub_251C70744();
        v98 = sub_251C713D4();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          aBlock = v113;
          *v99 = 136315138;
          swift_beginAccess();
          v123[0] = error;
          sub_251B1682C(0, &qword_27F479F60, sub_251B167F8, MEMORY[0x277D83D88]);
          v100 = sub_251C71564();
          v102 = sub_251B10780(v100, v101, &aBlock);

          *(v99 + 4) = v102;
          _os_log_impl(&dword_251A6C000, v97, v98, "Failed to sign the payload. Error: %s", v99, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v113);
          MEMORY[0x25308E2B0](v113, -1, -1);
          v103 = v99;
          v88 = a8;
          MEMORY[0x25308E2B0](v103, -1, -1);
        }
      }

      swift_beginAccess();
      sub_251B1682C(0, &qword_27F479F60, sub_251B167F8, MEMORY[0x277D83D88]);
      v104 = sub_251C71564();
      if (a4 < 2)
      {
        v88(0, 0, 0, v104, v105, 0);

        sub_251A8596C(v116, v9);
        goto LABEL_41;
      }

      v115 = v9;
      v106 = a5;
      v107 = a6;
      v108 = sub_251C70744();
      v109 = sub_251C713C4();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 134217984;
        v111 = a4 - 1;
        *(v110 + 4) = a4 - 1;
        _os_log_impl(&dword_251A6C000, v108, v109, "Retrying generating the BAA signature. Retries left: %ld", v110, 0xCu);
        MEMORY[0x25308E2B0](v110, -1, -1);
      }

      else
      {

        v111 = a4 - 1;
      }

      v50 = sub_251C70E44();
      v112 = swift_allocObject();
      v112[2] = v111;
      v112[3] = v106;
      v112[4] = v107;
      v112[5] = a7;
      v112[6] = v88;
      v112[7] = v14;
      v129 = sub_251B169B0;
      v130 = v112;
      aBlock = MEMORY[0x277D85DD0];
      v126 = 1107296256;
      v127 = sub_251B166DC;
      v128 = &block_descriptor_20_0;
      v52 = _Block_copy(&aBlock);
      sub_251A858C4(v106, v107);

      DeviceIdentityIssueClientCertificateWithCompletion();

      sub_251A8596C(v116, v115);
      goto LABEL_25;
    }

    if (qword_2813E26F8 == -1)
    {
LABEL_54:
      v85 = sub_251C70764();
      __swift_project_value_buffer(v85, qword_2813E8130);

      v86 = sub_251C70744();
      v87 = sub_251C713D4();
      v88 = a8;
      if (os_log_type_enabled(v86, v87))
      {
        v89 = swift_slowAlloc();
        *v89 = 134217984;
        v90 = v9;
        v91 = a5;
        v92 = *(v40 + 16);

        *(v89 + 4) = v92;
        a5 = v91;
        v9 = v90;
        v88 = a8;

        _os_log_impl(&dword_251A6C000, v86, v87, "BAA Signature failed with nil, but certs populated. Count: %ld", v89, 0xCu);
        MEMORY[0x25308E2B0](v89, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      goto LABEL_58;
    }

LABEL_74:
    swift_once();
    goto LABEL_54;
  }

  __break(1u);
}

uint64_t sub_251B166DC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = sub_251C71154();
  }

  else
  {
    v8 = 0;
  }

  v9 = a2;
  v10 = a4;
  v7(a2, v8, a4);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_251B167A8()
{
  if (!qword_2813E1DD0)
  {
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1DD0);
    }
  }
}

void sub_251B1682C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_5Tm()
{
  sub_251A83028(v0[3], v0[4]);
  v1 = v0[5];

  v2 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_251B16908(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 6u)
  {
  }

  return result;
}

uint64_t sub_251B16920(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_251B16934(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_251B16934(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 6u)
  {
  }

  return result;
}

uint64_t sub_251B1694C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_251A83028(a2, a3);
  }

  return result;
}

uint64_t sub_251B169C0@<X0>(void **a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v254 = a3;
  v256 = a4;
  sub_251B17E18(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v255 = &v247 - v8;
  sub_251B17E18(0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v251 = &v247 - v11;
  v250 = type metadata accessor for PBHKInspectableValueCollection(0);
  v249 = *(v250 - 8);
  v12 = *(v249 + 64);
  MEMORY[0x28223BE20](v250);
  v252 = &v247 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_251C70014();
  v260 = *(v261 - 8);
  v14 = *(v260 + 64);
  MEMORY[0x28223BE20](v261);
  v257 = &v247 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = sub_251C701E4();
  v258 = *(v259 - 8);
  v16 = *(v258 + 64);
  MEMORY[0x28223BE20](v259);
  v18 = &v247 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B17E18(0, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v264 = &v247 - v21;
  v263 = type metadata accessor for PBHKConcept(0);
  v265 = *(v263 - 8);
  v22 = *(v265 + 64);
  v23 = MEMORY[0x28223BE20](v263);
  v248 = &v247 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v247 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v247 - v28;
  v30 = type metadata accessor for PBHKDiagnosticTestResult(0);
  v31 = v30 - 8;
  v32 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v253 = &v247 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v247 - v35;
  v37 = *a1;
  sub_251C703A4();
  v38 = *(v31 + 28);
  if (qword_27F4786E8 != -1)
  {
    swift_once();
  }

  *&v36[v38] = qword_27F47AC00;

  v39 = [v37 bodySite];
  v262 = a2;
  if (v39)
  {
    v40 = v39;
    sub_251AF0ACC(v39, 1, v29);
    v41 = *&v36[v38];
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v42 = *&v36[v38];
    }

    else
    {
      v43 = *&v36[v38];
      v44 = type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
      v45 = *(v44 + 48);
      v46 = *(v44 + 52);
      swift_allocObject();

      v42 = sub_251B7A05C(v47);
      a2 = v262;

      *&v36[v38] = v42;
    }

    v48 = v264;
    sub_251B17F98(v29, v264, type metadata accessor for PBHKConcept);
    (*(v265 + 56))(v48, 0, 1, v263);
    v49 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__bodySite;
    swift_beginAccess();
    sub_251B17ED0(v48, v42 + v49, qword_2813E6D28, type metadata accessor for PBHKConcept);
    swift_endAccess();
  }

  v50 = [v37 category];
  v51 = sub_251C70F14();
  v53 = v52;

  v54 = *&v36[v38];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *&v36[v38];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v57 = type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();
    v56 = sub_251B7A05C(v56);
    *&v36[v38] = v56;
  }

  v60 = (v56 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__category);
  swift_beginAccess();
  v61 = v60[1];
  *v60 = v51;
  v60[1] = v53;

  v62 = [v37 comments];
  if (v62)
  {
    v63 = v62;
    v64 = sub_251C70F14();
    v66 = v65;

    v67 = *&v36[v38];
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *&v36[v38];
    if ((v68 & 1) == 0)
    {
      v70 = type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
      v71 = *(v70 + 48);
      v72 = *(v70 + 52);
      swift_allocObject();
      v69 = sub_251B7A05C(v69);
      *&v36[v38] = v69;
    }

    v73 = (v69 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__comments);
    swift_beginAccess();
    v74 = v73[1];
    *v73 = v64;
    v73[1] = v66;
  }

  v75 = [v37 diagnosticTest];
  sub_251AF0ACC(v75, 1, v27);

  v76 = *&v36[v38];
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *&v36[v38];
  if ((v77 & 1) == 0)
  {
    v79 = type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    swift_allocObject();
    v78 = sub_251B7A05C(v78);
    *&v36[v38] = v78;
  }

  v82 = v27;
  v83 = v264;
  sub_251B17F98(v82, v264, type metadata accessor for PBHKConcept);
  v84 = *(v265 + 56);
  v265 += 56;
  v247 = v84;
  v84(v83, 0, 1, v263);
  v85 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__diagnosticTest;
  swift_beginAccess();
  sub_251B17ED0(v83, v78 + v85, qword_2813E6D28, type metadata accessor for PBHKConcept);
  swift_endAccess();
  v86 = [v37 effectiveEndDate];
  if (v86)
  {
    v87 = v86;
    v88 = *a2;
    v89 = v258;
    v90 = *a2 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
    v91 = v259;
    (*(v258 + 16))(v18, v90, v259);
    v92 = sub_251C70114();
    (*(v89 + 8))(v18, v91);
    v93 = [v87 adjustedDateForCalendar_];

    v94 = v257;
    sub_251C6FFE4();

    v95 = *(v88 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v96 = sub_251C6FF94();
    v97 = [v95 stringFromDate_];

    v98 = sub_251C70F14();
    v100 = v99;

    (*(v260 + 8))(v94, v261);
    v101 = *&v36[v38];
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v102 = *&v36[v38];
    }

    else
    {
      v103 = *&v36[v38];
      v104 = type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
      v105 = *(v104 + 48);
      v106 = *(v104 + 52);
      swift_allocObject();

      v102 = sub_251B7A05C(v107);

      *&v36[v38] = v102;
    }

    v108 = (v102 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveEndDate);
    swift_beginAccess();
    v109 = v108[1];
    *v108 = v98;
    v108[1] = v100;

    a2 = v262;
  }

  v110 = [v37 effectiveStartDate];
  if (v110)
  {
    v111 = v110;
    v112 = *a2;
    v113 = v258;
    v114 = *a2 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
    v115 = v259;
    (*(v258 + 16))(v18, v114, v259);
    v116 = sub_251C70114();
    (*(v113 + 8))(v18, v115);
    v117 = [v111 adjustedDateForCalendar_];

    v118 = v257;
    sub_251C6FFE4();

    v119 = *(v112 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v120 = sub_251C6FF94();
    v121 = [v119 stringFromDate_];

    v122 = sub_251C70F14();
    v124 = v123;

    (*(v260 + 8))(v118, v261);
    v125 = *&v36[v38];
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v126 = *&v36[v38];
    }

    else
    {
      v127 = *&v36[v38];
      v128 = type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
      v129 = *(v128 + 48);
      v130 = *(v128 + 52);
      swift_allocObject();

      v126 = sub_251B7A05C(v131);

      *&v36[v38] = v126;
    }

    v132 = (v126 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveStartDate);
    swift_beginAccess();
    v133 = v132[1];
    *v132 = v122;
    v132[1] = v124;

    a2 = v262;
  }

  v134 = [v37 interpretation];
  if (v134)
  {
    v135 = v134;
    sub_251A8223C(0, &qword_27F479F70, 0x277CCD1B0);
    v136 = sub_251C71154();

    MEMORY[0x28223BE20](v137);
    *(&v247 - 2) = a2;
    sub_251C4FA0C(sub_251B18000, (&v247 - 4), v136);
    v139 = v138;

    v140 = *&v36[v38];
    v141 = swift_isUniquelyReferenced_nonNull_native();
    v142 = *&v36[v38];
    if ((v141 & 1) == 0)
    {
      v143 = type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
      v144 = *(v143 + 48);
      v145 = *(v143 + 52);
      swift_allocObject();
      v142 = sub_251B7A05C(v142);
      *&v36[v38] = v142;
    }

    v146 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretation;
    swift_beginAccess();
    v147 = *(v142 + v146);
    *(v142 + v146) = v139;
  }

  v148 = [v37 issueDate];
  if (v148)
  {
    v149 = v148;
    v150 = *a2;
    v151 = v258;
    v152 = v259;
    (*(v258 + 16))(v18, v150 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v259);
    v153 = sub_251C70114();
    (*(v151 + 8))(v18, v152);
    v154 = [v149 adjustedDateForCalendar_];

    v155 = v257;
    sub_251C6FFE4();

    v156 = *(v150 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v157 = sub_251C6FF94();
    v158 = [v156 stringFromDate_];

    v159 = sub_251C70F14();
    v161 = v160;

    (*(v260 + 8))(v155, v261);
    v162 = *&v36[v38];
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v163 = *&v36[v38];
    }

    else
    {
      v164 = *&v36[v38];
      v165 = type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
      v166 = *(v165 + 48);
      v167 = *(v165 + 52);
      swift_allocObject();

      v163 = sub_251B7A05C(v168);

      *&v36[v38] = v163;
    }

    v169 = (v163 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__issueDate);
    swift_beginAccess();
    v170 = v169[1];
    *v169 = v159;
    v169[1] = v161;

    a2 = v262;
  }

  v171 = [v37 method];
  v172 = v252;
  if (v171)
  {
    v173 = v171;
    v174 = v248;
    sub_251AF0ACC(v171, 1, v248);
    v175 = *&v36[v38];
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v176 = *&v36[v38];
    }

    else
    {
      v177 = *&v36[v38];
      v178 = type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
      v179 = *(v178 + 48);
      v180 = *(v178 + 52);
      swift_allocObject();

      v176 = sub_251B7A05C(v181);

      *&v36[v38] = v176;
    }

    v182 = v264;
    sub_251B17F98(v174, v264, type metadata accessor for PBHKConcept);
    v247(v182, 0, 1, v263);
    v183 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__method;
    swift_beginAccess();
    sub_251B17ED0(v182, v176 + v183, qword_2813E6D28, type metadata accessor for PBHKConcept);
    swift_endAccess();
  }

  v184 = [v37 performers];
  if (v184)
  {
    v185 = v184;
    v186 = sub_251C71154();

    v187 = *&v36[v38];
    v188 = swift_isUniquelyReferenced_nonNull_native();
    v189 = *&v36[v38];
    if ((v188 & 1) == 0)
    {
      v190 = type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
      v191 = *(v190 + 48);
      v192 = *(v190 + 52);
      swift_allocObject();
      v189 = sub_251B7A05C(v189);
      *&v36[v38] = v189;
    }

    v193 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__performers;
    swift_beginAccess();
    v194 = *(v189 + v193);
    *(v189 + v193) = v186;
  }

  v195 = [v37 value];
  if (v195)
  {
    v196 = v195;
    sub_251AEE494(v195, v172);
    v197 = *&v36[v38];
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v198 = *&v36[v38];
    }

    else
    {
      v199 = *&v36[v38];
      v200 = type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
      v201 = *(v200 + 48);
      v202 = *(v200 + 52);
      swift_allocObject();

      v198 = sub_251B7A05C(v203);

      *&v36[v38] = v198;
    }

    v204 = v251;
    sub_251B17F98(v172, v251, type metadata accessor for PBHKInspectableValueCollection);
    (*(v249 + 56))(v204, 0, 1, v250);
    v205 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__value;
    swift_beginAccess();
    sub_251B17ED0(v204, v198 + v205, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
    swift_endAccess();
  }

  v206 = [v37 referenceRanges];
  if (v206)
  {
    v207 = v206;
    sub_251A8223C(0, &qword_27F479B28, 0x277CCD890);
    v208 = sub_251C71154();

    MEMORY[0x28223BE20](v209);
    *(&v247 - 2) = a2;
    sub_251C4F9B8(sub_251AF2E8C, (&v247 - 4), v208);
    v211 = v210;

    v212 = *&v36[v38];
    v213 = swift_isUniquelyReferenced_nonNull_native();
    v214 = *&v36[v38];
    if ((v213 & 1) == 0)
    {
      v215 = type metadata accessor for PBHKDiagnosticTestResult._StorageClass(0);
      v216 = *(v215 + 48);
      v217 = *(v215 + 52);
      swift_allocObject();
      v214 = sub_251B7A05C(v214);
      *&v36[v38] = v214;
    }

    v218 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__referenceRanges;
    swift_beginAccess();
    v219 = *(v214 + v218);
    *(v214 + v218) = v211;
  }

  v220 = v256;
  sub_251AF11B4(v37, v254, v256);
  v221 = v253;
  sub_251B17E6C(v36, v253);
  v222 = *(type metadata accessor for PBClinicalRecord(0) + 20);
  v223 = *(v220 + v222);
  v224 = swift_isUniquelyReferenced_nonNull_native();
  v225 = *(v220 + v222);
  if ((v224 & 1) == 0)
  {
    v226 = type metadata accessor for PBClinicalRecord._StorageClass(0);
    v227 = *(v226 + 48);
    v228 = *(v226 + 52);
    swift_allocObject();
    v229 = sub_251BB2A8C(v225);

    *(v220 + v222) = v229;
    v225 = v229;
  }

  v230 = v221;
  v231 = v255;
  sub_251B17F98(v230, v255, type metadata accessor for PBHKDiagnosticTestResult);
  v232 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v232 - 8) + 56))(v231, 0, 1, v232);
  v233 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251B17ED0(v231, &v225[v233], qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  swift_endAccess();
  v234 = sub_251C6CC54();
  v236 = v235;
  v237 = *(v220 + v222);
  v238 = swift_isUniquelyReferenced_nonNull_native();
  v239 = *(v220 + v222);
  if ((v238 & 1) == 0)
  {
    v240 = type metadata accessor for PBClinicalRecord._StorageClass(0);
    v241 = *(v240 + 48);
    v242 = *(v240 + 52);
    swift_allocObject();
    v243 = sub_251BB2A8C(v239);

    *(v220 + v222) = v243;
    v239 = v243;
  }

  v244 = (v239 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName);
  swift_beginAccess();
  v245 = v244[1];
  *v244 = v234;
  v244[1] = v236;

  return sub_251B17F3C(v36);
}

void sub_251B17E18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251B17E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBHKDiagnosticTestResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B17ED0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_251B17E18(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_251B17F3C(uint64_t a1)
{
  v2 = type metadata accessor for PBHKDiagnosticTestResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251B17F98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B18034()
{
  v1 = type metadata accessor for ClinicalSharingOperationalAnalyticsSubmissionTask();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_251B18434();
  v5 = *(v4 - 8);
  v22 = v4;
  v23 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A823B4(v0, v24);
  v9 = swift_allocObject();
  sub_251AE7B64(v24, v9 + 16);
  v10 = MEMORY[0x277CBCEA8];
  sub_251B18A7C(0, &qword_2813E1FF0, MEMORY[0x277CBCEA8]);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v24[0] = sub_251C70A64();
  sub_251B18AFC(&qword_2813E1FF8, &qword_2813E1FF0, v10);
  v14 = sub_251C70A94();

  *&v24[0] = v14;
  sub_251B18B40(v0, &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v16 = swift_allocObject();
  sub_251B18BA4(&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_251C70964();
  v17 = MEMORY[0x277CBCD88];
  sub_251B18A7C(0, &qword_2813E20D0, MEMORY[0x277CBCD88]);
  sub_251AA98B0(0, qword_2813E46A0);
  sub_251B1853C();
  sub_251B18AFC(&qword_2813E20D8, &qword_2813E20D0, v17);
  sub_251B18DC8(&qword_2813E2200, sub_251B1853C);
  sub_251C70B94();

  sub_251B18DC8(&qword_2813E2420, sub_251B18434);
  v18 = v22;
  v19 = sub_251C70A94();
  (*(v23 + 8))(v8, v18);
  return v19;
}

uint64_t type metadata accessor for ClinicalSharingOperationalAnalyticsSubmissionTask()
{
  result = qword_2813E2A10;
  if (!qword_2813E2A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251B18434()
{
  if (!qword_2813E2418)
  {
    sub_251B1853C();
    v0 = MEMORY[0x277CBCD88];
    sub_251B18A7C(255, &qword_2813E20D0, MEMORY[0x277CBCD88]);
    sub_251B18DC8(&qword_2813E2200, sub_251B1853C);
    sub_251B18AFC(&qword_2813E20D8, &qword_2813E20D0, v0);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2418);
    }
  }
}

void sub_251B1853C()
{
  if (!qword_2813E21F0)
  {
    sub_251AA98B0(255, qword_2813E46A0);
    sub_251AA98B0(255, &qword_2813E1C30);
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E21F0);
    }
  }
}

uint64_t sub_251B185CC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v29 = a3;
  sub_251AE52B8();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_251B066C4();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_251B18C88();
  v18 = *(v17 - 8);
  v27 = v17;
  v28 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v25[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = *a1;
  v32 = *(a2 + *(type metadata accessor for ClinicalSharingOperationalAnalyticsSubmissionTask() + 28));
  sub_251B18E10(0, &qword_2813E1EA0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277D83940]);
  sub_251AE5338();
  sub_251C710D4();
  sub_251AA98B0(0, &qword_2813E1C30);
  sub_251C708E4();
  (*(v7 + 8))(v10, v6);
  v30 = a2;
  v31 = v26;
  sub_251AA98B0(0, qword_2813E46A0);
  sub_251C708F4();
  (*(v13 + 8))(v16, v12);
  sub_251B18DC8(&qword_2813E2260, sub_251B18C88);
  v22 = v27;
  v23 = sub_251C70A94();
  result = (*(v28 + 8))(v21, v22);
  *v29 = v23;
  return result;
}

uint64_t sub_251B18914@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = type metadata accessor for ClinicalSharingOperationalAnalyticsSubmissionTask();
  v16 = *(a2 + v7[8]);
  v8 = v7[5];
  v9 = type metadata accessor for ClinicalSharingOperationalMetric(0);
  a4[3] = v9;
  a4[4] = &off_2863FBE70;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v11 = v9[6];
  v12 = sub_251C70014();
  v13 = *(*(v12 - 8) + 16);
  v13(boxed_opaque_existential_1 + v11, a2 + v8, v12);
  sub_251AC553C(a2 + v7[9], boxed_opaque_existential_1 + v9[7]);
  v13(boxed_opaque_existential_1 + v9[8], a2 + v7[10], v12);
  *boxed_opaque_existential_1 = v6;
  boxed_opaque_existential_1[1] = v16;
  *(boxed_opaque_existential_1 + v9[9]) = a3;
  *(boxed_opaque_existential_1 + v9[10]) = 0;
  v14 = (boxed_opaque_existential_1 + v9[11]);
  *v14 = 0xD000000000000032;
  v14[1] = 0x8000000251C8AE10;
}

void sub_251B18A7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_251AA98B0(255, &qword_2813E1C30);
    v7 = a3(a1, MEMORY[0x277D839B0], v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251B18AFC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_251B18A7C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251B18B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingOperationalAnalyticsSubmissionTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B18BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingOperationalAnalyticsSubmissionTask();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B18C08@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingOperationalAnalyticsSubmissionTask() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_251B185CC(a1, v6, a2);
}

void sub_251B18C88()
{
  if (!qword_2813E2258)
  {
    sub_251B18D54();
    sub_251AA98B0(255, &qword_2813E1C30);
    sub_251B18DC8(&qword_2813E1EB0, sub_251B18D54);
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2258);
    }
  }
}

void sub_251B18D54()
{
  if (!qword_2813E1EB8)
  {
    sub_251AA98B0(255, qword_2813E46A0);
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1EB8);
    }
  }
}

uint64_t sub_251B18DC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251B18E10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251B18E9C()
{
  sub_251AA98B0(319, qword_2813E7418);
  if (v0 <= 0x3F)
  {
    sub_251C70014();
    if (v1 <= 0x3F)
    {
      sub_251B18FF4();
      if (v2 <= 0x3F)
      {
        sub_251B18E10(319, &qword_2813E1EA0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for HKClinicalSharingReason(319);
          if (v4 <= 0x3F)
          {
            sub_251B18E10(319, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_251B18FF4()
{
  result = qword_2813E1DB0;
  if (!qword_2813E1DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813E1DB0);
  }

  return result;
}

uint64_t sub_251B19040()
{
  v1 = [v0 collectionType];
  if (v1 < 4)
  {
    return v1 + 1;
  }

  sub_251C716A4();
  MEMORY[0x25308CDA0](0xD00000000000002ELL, 0x8000000251C8AEB0);
  [v0 collectionType];
  type metadata accessor for HKInspectableValueCollectionType(0);
  sub_251C717C4();
  MEMORY[0x25308CDA0](0xD000000000000015, 0x8000000251C8AEE0);
  result = sub_251C717E4();
  __break(1u);
  return result;
}

uint64_t sub_251B19160(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v15 = a4;
  v16 = a5;
  sub_251B199C8(0, &qword_27F479F90, MEMORY[0x277D84538]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251B19920();
  sub_251C71B14();
  LOBYTE(v17) = 0;
  sub_251C71934();
  if (!v5)
  {
    v17 = v15;
    v18 = v16;
    v19 = 1;
    sub_251A858C4(v15, v16);
    sub_251B19A2C();
    sub_251C71964();
    sub_251A83028(v17, v18);
  }

  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_251B1930C()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_251B19340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_251C719D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000251C8AF00 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_251C719D4();

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

uint64_t sub_251B1941C(uint64_t a1)
{
  v2 = sub_251B19920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251B19458(uint64_t a1)
{
  v2 = sub_251B19920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251B19494@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_251B196F4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_251B194E4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  return sub_251A9D1F0(v2, v3, v4, v5);
}

uint64_t sub_251B19570()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_251C71AA4();
  sub_251C70FB4();
  sub_251C6FEF4();
  return sub_251C71AD4();
}

uint64_t sub_251B195D8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_251C70FB4();

  return sub_251C6FEF4();
}

uint64_t sub_251B19628()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_251C71AA4();
  sub_251C70FB4();
  sub_251C6FEF4();
  return sub_251C71AD4();
}

unint64_t sub_251B196A0()
{
  result = qword_2813E37B8;
  if (!qword_2813E37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E37B8);
  }

  return result;
}

uint64_t sub_251B196F4(uint64_t *a1)
{
  sub_251B199C8(0, &qword_27F479F78, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251B19920();
  sub_251C71B04();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v14) = 0;
    v9 = sub_251C718B4();
    v13[15] = 1;
    sub_251B19974();
    sub_251C718D4();
    (*(v5 + 8))(v8, v4);
    v11 = v14;
    v12 = v15;

    sub_251A858C4(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_251A83028(v11, v12);
  }

  return v9;
}

unint64_t sub_251B19920()
{
  result = qword_27F479F80;
  if (!qword_27F479F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479F80);
  }

  return result;
}

unint64_t sub_251B19974()
{
  result = qword_27F479F88;
  if (!qword_27F479F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479F88);
  }

  return result;
}

void sub_251B199C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251B19920();
    v7 = a3(a1, &type metadata for ClinicalSharingNodeMetadata.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_251B19A2C()
{
  result = qword_27F479F98;
  if (!qword_27F479F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479F98);
  }

  return result;
}

unint64_t sub_251B19A94()
{
  result = qword_27F479FA0;
  if (!qword_27F479FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479FA0);
  }

  return result;
}

unint64_t sub_251B19AEC()
{
  result = qword_27F479FA8;
  if (!qword_27F479FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479FA8);
  }

  return result;
}

unint64_t sub_251B19B44()
{
  result = qword_27F479FB0;
  if (!qword_27F479FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479FB0);
  }

  return result;
}

void sub_251B19B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_251AD96B8;
  *(v11 + 24) = v10;
  v12 = objc_allocWithZone(MEMORY[0x277D11998]);
  v15[4] = sub_251B19DBC;
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_251B19DC4;
  v15[3] = &block_descriptor_8;
  v13 = _Block_copy(v15);

  v14 = [v12 initWithDayIndexRange:a3 ascending:a4 limit:1 resultsHandler:{0, v13}];
  _Block_release(v13);

  [a5 executeQuery_];
}

void sub_251B19D00(int a1, void *a2, int a3, id a4, void (*a5)(id, BOOL))
{
  v7 = a2;
  if (!a2)
  {
    v7 = a4;
    if (!a4)
    {
      sub_251AC6624();
      v8 = swift_allocError();
      a4 = 0;
      v7 = v8;
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
    }

    v10 = a4;
  }

  a5(v7, a2 == 0);

  sub_251B19EEC(v7, a2 == 0);
}

uint64_t sub_251B19DC4(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a3;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a3)
  {
    sub_251B19EA0();
    v7 = sub_251C71154();
  }

  v11 = a2;
  v12 = a4;
  v13 = a5;
  v10(v11, v7, a4, a5);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251B19EA0()
{
  result = qword_27F479FB8;
  if (!qword_27F479FB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479FB8);
  }

  return result;
}

void sub_251B19EEC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_251B19EF8(uint64_t a1)
{
  v2 = sub_251C70014();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v85 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v90 = &v75 - v7;
  sub_251B1B198(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v76 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v87 = &v75 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v75 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v75 - v17;
  v92 = type metadata accessor for ClinicalSharingDataNodeInfo();
  v19 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 16);
  if (!v24)
  {
    return MEMORY[0x277D84F98];
  }

  v25 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v80 = "ber24@NSError32";
  v88 = (v3 + 48);
  v82 = (v3 + 16);
  v83 = (v3 + 8);
  v84 = (v3 + 32);
  v77 = v3 + 40;
  v78 = (v3 + 56);
  v91 = *(v20 + 72);
  v93 = MEMORY[0x277D84F98];
  *&v21 = 136315394;
  v79 = v21;
  v81 = v3;
  v89 = v16;
  v86 = v18;
  while (1)
  {
    sub_251B1B080(v25, v23, type metadata accessor for ClinicalSharingDataNodeInfo);
    v34 = &v23[*(v92 + 28)];
    v35 = *v34;
    if ((v34[8] & 1) == 0)
    {
      v94 = nullsub_1(v35, 0);
      sub_251B1B0E8();
      v41 = sub_251C715B4();
      v43 = v42;
      sub_251A82AF0();
      v44 = swift_allocError();
      *v45 = v41;
      *(v45 + 8) = v43;
      *(v45 + 16) = 6;
      swift_willThrow();
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v46 = sub_251C70764();
      __swift_project_value_buffer(v46, qword_2813E8130);
      v47 = v44;
      v48 = sub_251C70744();
      v49 = sub_251C713D4();

      if (os_log_type_enabled(v48, v49))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = v2;
        v29 = swift_slowAlloc();
        v94 = v29;
        *v26 = v79;
        *(v26 + 4) = sub_251B10780(0xD000000000000023, v80 | 0x8000000000000000, &v94);
        *(v26 + 12) = 2112;
        v30 = v44;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 14) = v31;
        *v27 = v31;
        _os_log_impl(&dword_251A6C000, v48, v49, "%s %@", v26, 0x16u);
        sub_251B1B13C(v27, &qword_2813E1D10, sub_251B1B1EC);
        v32 = v27;
        v18 = v86;
        MEMORY[0x25308E2B0](v32, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v29);
        v33 = v29;
        v2 = v28;
        v3 = v81;
        MEMORY[0x25308E2B0](v33, -1, -1);
        MEMORY[0x25308E2B0](v26, -1, -1);
      }

      else
      {
      }

      sub_251B1B020(v23, type metadata accessor for ClinicalSharingDataNodeInfo);
      v16 = v89;
      goto LABEL_5;
    }

    v36 = qword_251C77928[v35];
    sub_251ABA6B8(v18);
    sub_251AC553C(v18, v16);
    v37 = *v88;
    if ((*v88)(v16, 1, v2) != 1)
    {
      break;
    }

    v38 = MEMORY[0x277CC9578];
    sub_251B1B13C(v18, &qword_2813E7500, MEMORY[0x277CC9578]);
    sub_251B1B020(v23, type metadata accessor for ClinicalSharingDataNodeInfo);
    v39 = v16;
    v40 = v38;
LABEL_31:
    sub_251B1B13C(v39, &qword_2813E7500, v40);
LABEL_5:
    v25 += v91;
    if (!--v24)
    {
      return v93;
    }
  }

  v50 = *v84;
  (*v84)(v90, v16, v2);
  if (v93[2] && (v51 = sub_251AC8BD0(v36, 1), (v52 & 1) != 0))
  {
    v53 = v87;
    (*(v3 + 16))(v87, v93[7] + *(v3 + 72) * v51, v2);
    (*(v3 + 56))(v53, 0, 1, v2);
    v54 = v53;
    v55 = v76;
    sub_251AC553C(v54, v76);
    if (v37(v55, 1, v2) == 1)
    {
      goto LABEL_36;
    }

    v56 = sub_251C6FFB4();
    v57 = v55;
    v58 = v56;
    v59 = *v83;
    (*v83)(v57, v2);
    if ((v58 & 1) == 0)
    {
      v59(v90, v2);
      goto LABEL_27;
    }
  }

  else
  {
    (*v78)(v87, 1, 1, v2);
  }

  (*v82)(v85, v90, v2);
  v60 = v93;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v94 = v60;
  v62 = sub_251AC8BD0(v36, 1);
  v64 = *(v60 + 16);
  v65 = (v63 & 1) == 0;
  v66 = __OFADD__(v64, v65);
  v67 = v64 + v65;
  if (!v66)
  {
    v68 = v63;
    if (*(v60 + 24) >= v67)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v73 = v62;
        sub_251ACE574();
        v62 = v73;
        v3 = v81;
      }
    }

    else
    {
      sub_251ACA62C(v67, isUniquelyReferenced_nonNull_native);
      v62 = sub_251AC8BD0(v36, 1);
      if ((v68 & 1) != (v69 & 1))
      {
        goto LABEL_37;
      }
    }

    v16 = v89;
    v93 = v94;
    if ((v68 & 1) == 0)
    {
      v94[(v62 >> 6) + 8] |= 1 << v62;
      v70 = v93[6] + 16 * v62;
      *v70 = v36;
      *(v70 + 8) = 1;
      v50((v93[7] + *(v3 + 72) * v62), v85, v2);
      (*(v3 + 8))(v90, v2);
      v18 = v86;
      sub_251B1B13C(v86, &qword_2813E7500, MEMORY[0x277CC9578]);
      sub_251B1B020(v23, type metadata accessor for ClinicalSharingDataNodeInfo);
      v71 = v93[2];
      v66 = __OFADD__(v71, 1);
      v72 = v71 + 1;
      if (v66)
      {
        goto LABEL_35;
      }

      v93[2] = v72;
      goto LABEL_30;
    }

    (*(v3 + 40))(v94[7] + *(v3 + 72) * v62, v85, v2);
    (*(v3 + 8))(v90, v2);
LABEL_27:
    v18 = v86;
    sub_251B1B13C(v86, &qword_2813E7500, MEMORY[0x277CC9578]);
    sub_251B1B020(v23, type metadata accessor for ClinicalSharingDataNodeInfo);
LABEL_30:
    v40 = MEMORY[0x277CC9578];
    v39 = v87;
    goto LABEL_31;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_251C71A14();
  __break(1u);
  return result;
}

uint64_t sub_251B1A850(uint64_t a1)
{
  v2 = sub_251C70014();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v83 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v71 - v7;
  sub_251B1B198(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v77 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v71 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v88 = &v71 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v71 - v18;
  v75 = type metadata accessor for ClinicalSharingCategoryNodeInfo();
  v20 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(a1 + 16);
  if (!v74)
  {
    return MEMORY[0x277D84F98];
  }

  v24 = 0;
  v73 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v84 = (v3 + 16);
  v85 = v15;
  v89 = (v3 + 48);
  v90 = (v3 + 56);
  v82 = (v3 + 32);
  v80 = (v3 + 8);
  v78 = v3 + 40;
  v86 = MEMORY[0x277D84F98];
  v72 = *(v21 + 72);
  v25 = v88;
  v79 = v19;
  v71 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
LABEL_4:
  v76 = v24 + 1;
  sub_251B1B080(v73 + v72 * v24, v23, type metadata accessor for ClinicalSharingCategoryNodeInfo);
  v26 = *&v23[*(v75 + 28)];
  v27 = &byte_2863F3230;
  v28 = 3;
  v87 = v26;
  while (1)
  {
    v30 = *(v27 - 1);
    v31 = *v27;
    v32 = *(v26 + 16);
    v92 = v30;
    v91 = v31;
    if (v32)
    {
      v33 = sub_251AC8BD0(v30, v31);
      if (v34)
      {
        (*(v3 + 16))(v19, *(v26 + 56) + *(v3 + 72) * v33, v2);
        v35 = 0;
      }

      else
      {
        v35 = 1;
      }

      v25 = v88;
    }

    else
    {
      v35 = 1;
    }

    v36 = *v90;
    (*v90)(v19, v35, 1, v2);
    sub_251AC553C(v19, v25);
    v37 = *v89;
    if ((*v89)(v25, 1, v2) == 1)
    {
      sub_251B1B13C(v19, &qword_2813E7500, MEMORY[0x277CC9578]);
      v29 = v25;
      goto LABEL_6;
    }

    v81 = *v82;
    v81(v8, v25, v2);
    v38 = v86;
    if (!v86[2])
    {
      v47 = v85;
      goto LABEL_21;
    }

    v39 = sub_251AC8BD0(v92, v91);
    v40 = v85;
    if ((v41 & 1) == 0)
    {
      break;
    }

    (*(v3 + 16))(v85, v38[7] + *(v3 + 72) * v39, v2);
    v36(v40, 0, 1, v2);
    v42 = v77;
    sub_251AC553C(v40, v77);
    if (v37(v42, 1, v2) == 1)
    {
      goto LABEL_37;
    }

    v43 = sub_251C6FFB4();
    v44 = v42;
    v45 = v43;
    v46 = *v80;
    (*v80)(v44, v2);
    if (v45)
    {
      goto LABEL_22;
    }

    v46(v8, v2);
    v19 = v79;
    sub_251B1B13C(v79, &qword_2813E7500, MEMORY[0x277CC9578]);
    v29 = v40;
    v25 = v88;
LABEL_6:
    sub_251B1B13C(v29, &qword_2813E7500, MEMORY[0x277CC9578]);
    v27 += 16;
    --v28;
    v26 = v87;
    if (!v28)
    {
      v23 = v71;
      sub_251B1B020(v71, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      v24 = v76;
      if (v76 == v74)
      {
        return v86;
      }

      goto LABEL_4;
    }
  }

  v47 = v85;
LABEL_21:
  v36(v47, 1, 1, v2);
LABEL_22:
  v48 = v2;
  v49 = v3;
  v50 = v8;
  v51 = v8;
  v52 = v48;
  (*v84)(v83, v51);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v93 = v38;
  v55 = sub_251AC8BD0(v92, v91);
  v56 = v38[2];
  v57 = (v54 & 1) == 0;
  v58 = v56 + v57;
  if (!__OFADD__(v56, v57))
  {
    v59 = v54;
    if (v38[3] >= v58)
    {
      v25 = v88;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_251ACE574();
        v25 = v88;
      }
    }

    else
    {
      sub_251ACA62C(v58, isUniquelyReferenced_nonNull_native);
      v60 = sub_251AC8BD0(v92, v91);
      if ((v59 & 1) != (v61 & 1))
      {
        goto LABEL_38;
      }

      v55 = v60;
      v25 = v88;
    }

    v19 = v79;
    v62 = v93;
    v86 = v93;
    if (v59)
    {
      v63 = v93[7] + *(v49 + 72) * v55;
      v3 = v49;
      v64 = *(v49 + 40);
      v2 = v52;
      v64(v63, v83, v52);
      v8 = v50;
      (*(v3 + 8))(v50, v2);
      sub_251B1B13C(v19, &qword_2813E7500, MEMORY[0x277CC9578]);
    }

    else
    {
      v93[(v55 >> 6) + 8] |= 1 << v55;
      v65 = v62[6] + 16 * v55;
      *v65 = v92;
      *(v65 + 8) = v91;
      v66 = v62[7] + *(v49 + 72) * v55;
      v3 = v49;
      v2 = v52;
      v81(v66, v83, v52);
      v8 = v50;
      (*(v3 + 8))(v50, v2);
      sub_251B1B13C(v19, &qword_2813E7500, MEMORY[0x277CC9578]);
      v67 = v62[2];
      v68 = __OFADD__(v67, 1);
      v69 = v67 + 1;
      if (v68)
      {
        goto LABEL_36;
      }

      v62[2] = v69;
    }

    v29 = v85;
    goto LABEL_6;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_251C71A14();
  __break(1u);
  return result;
}

uint64_t sub_251B1B020(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251B1B080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_251B1B0E8()
{
  result = qword_2813E1FC0;
  if (!qword_2813E1FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E1FC0);
  }

  return result;
}

uint64_t sub_251B1B13C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251B1B198(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251B1B198(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_251B1B1EC()
{
  result = qword_2813E1D20;
  if (!qword_2813E1D20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813E1D20);
  }

  return result;
}

uint64_t HTTPMethod.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x5443454E4E4F43;
  v3 = 5526864;
  if (v1 != 6)
  {
    v3 = 0x4543415254;
  }

  v4 = 0x534E4F4954504FLL;
  if (v1 != 4)
  {
    v4 = 1414745936;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 5522759;
  if (v1 != 2)
  {
    v5 = 1145128264;
  }

  if (*v0)
  {
    v2 = 0x4554454C4544;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_251B1B308()
{
  sub_251C70FB4();
}

uint64_t sub_251B1B40C()
{
  sub_251C71AA4();
  sub_251C70FB4();

  return sub_251C71AD4();
}

HealthRecordsDaemon::HTTPMethod_optional __swiftcall HTTPMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_251C71854();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_251B1B590()
{
  result = qword_27F479FC0;
  if (!qword_27F479FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479FC0);
  }

  return result;
}

void sub_251B1B60C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x5443454E4E4F43;
  v5 = 0xE300000000000000;
  v6 = 5526864;
  if (v2 != 6)
  {
    v6 = 0x4543415254;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x534E4F4954504FLL;
  if (v2 != 4)
  {
    v8 = 1414745936;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 5522759;
  if (v2 != 2)
  {
    v10 = 1145128264;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x4554454C4544;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
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

uint64_t getEnumTagSinglePayload for HTTPMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTTPMethod(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_251B1B858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_251C719D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_251B1B8E0(uint64_t a1)
{
  v2 = sub_251B1BB08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251B1B91C(uint64_t a1)
{
  v2 = sub_251B1BB08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Catalog.encode(to:)(void *a1)
{
  sub_251B1BD8C(0, &qword_27F479FC8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251B1BB08();

  sub_251C71B14();
  v12[1] = v9;
  sub_251B1BB5C();
  sub_251B1BDF0(&qword_27F479FE0, &qword_27F479FE8);
  sub_251C71964();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_251B1BB08()
{
  result = qword_27F479FD0;
  if (!qword_27F479FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479FD0);
  }

  return result;
}

void sub_251B1BB5C()
{
  if (!qword_27F479FD8)
  {
    type metadata accessor for CatalogEntry();
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479FD8);
    }
  }
}

uint64_t Catalog.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_251B1BD8C(0, &qword_27F479FF0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251B1BB08();
  sub_251C71B04();
  if (!v2)
  {
    sub_251B1BB5C();
    sub_251B1BDF0(&qword_27F479FF8, &qword_27F47A000);
    sub_251C718D4();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_251B1BD8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251B1BB08();
    v7 = a3(a1, &type metadata for Catalog.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251B1BDF0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_251B1BB5C();
    sub_251B1BE6C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251B1BE6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CatalogEntry();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251B1BEE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_251B1BF28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_251B1BF88()
{
  result = qword_27F47A008;
  if (!qword_27F47A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A008);
  }

  return result;
}

unint64_t sub_251B1BFE0()
{
  result = qword_27F47A010;
  if (!qword_27F47A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A010);
  }

  return result;
}

unint64_t sub_251B1C038()
{
  result = qword_27F47A018;
  if (!qword_27F47A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A018);
  }

  return result;
}

uint64_t sub_251B1C08C(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_251C70DE4();
      sub_251B1C918(&qword_27F47A020, MEMORY[0x277CC5540]);
      result = sub_251C70C34();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_251B1C26C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_251B1C26C(uint64_t a1, uint64_t a2)
{
  result = sub_251C6FB74();
  if (!result || (result = sub_251C6FBA4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_251C6FB94();
      sub_251C70DE4();
      sub_251B1C918(&qword_27F47A020, MEMORY[0x277CC5540]);
      return sub_251C70C34();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_251B1C34C(uint64_t a1, unint64_t a2)
{
  v5 = sub_251C70DE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251C70C64();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v18 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v18)
  {
    if (a1 == a1 >> 32)
    {
LABEL_11:
      sub_251AFEBE4();
      swift_allocError();
      *v25 = xmmword_251C77FD0;
      *(v25 + 16) = 1;
      swift_willThrow();
      return v11;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v38 = v14;
  v42 = v15;
  sub_251B1C918(&qword_27F47A020, MEMORY[0x277CC5540]);
  *&v39 = v2;
  sub_251C70C54();
  sub_251A858C4(a1, a2);
  v19 = v39;
  sub_251B1C08C(a1, a2);
  v35 = v19;
  sub_251A83028(a1, a2);
  sub_251C70C44();
  (*(v6 + 8))(v9, v5);
  v36 = v17;
  v37 = v11;
  (*(v11 + 16))(v42, v17, v38);
  sub_251B1C918(&qword_27F47A028, MEMORY[0x277CC5290]);
  result = sub_251C710B4();
  v21 = v40;
  v22 = v41;
  v23 = *(v40 + 16);
  if (v41 == v23)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_9:
    (*(v37 + 8))(v36, v38);

    v40 = v24;
    sub_251B1C8C8();
    sub_251B1C918(&qword_2813E1E40, sub_251B1C8C8);
    v11 = sub_251C70EA4();

    return v11;
  }

  v42 = v40 + 32;
  v24 = MEMORY[0x277D84F90];
  v39 = xmmword_251C74800;
  v26 = v41;
  while ((v22 & 0x8000000000000000) == 0)
  {
    if (v26 >= *(v21 + 16))
    {
      goto LABEL_23;
    }

    v27 = *(v42 + v26);
    sub_251B1C80C();
    v28 = swift_allocObject();
    *(v28 + 16) = v39;
    *(v28 + 56) = MEMORY[0x277D84B78];
    *(v28 + 64) = MEMORY[0x277D84BC0];
    *(v28 + 32) = v27;
    v29 = sub_251C70F44();
    v31 = v30;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_251C38CCC(0, *(v24 + 16) + 1, 1, v24);
      v24 = result;
    }

    v33 = *(v24 + 16);
    v32 = *(v24 + 24);
    if (v33 >= v32 >> 1)
    {
      result = sub_251C38CCC((v32 > 1), v33 + 1, 1, v24);
      v24 = result;
    }

    ++v26;
    *(v24 + 16) = v33 + 1;
    v34 = v24 + 16 * v33;
    *(v34 + 32) = v29;
    *(v34 + 40) = v31;
    if (v23 == v26)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_251B1C80C()
{
  if (!qword_27F47A030)
  {
    sub_251B1C864();
    v0 = sub_251C719B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47A030);
    }
  }
}

unint64_t sub_251B1C864()
{
  result = qword_27F47A038;
  if (!qword_27F47A038)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F47A038);
  }

  return result;
}

void sub_251B1C8C8()
{
  if (!qword_2813E1E48)
  {
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1E48);
    }
  }
}

uint64_t sub_251B1C918(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251B1C960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v55 = a1;
  v4 = sub_251C70104();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_251C700F4();
  v48 = *(v50 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_251C700D4();
  v10 = *(v57 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v57);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D83D88];
  sub_251B1D388(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v58 = &v45 - v17;
  sub_251B1D388(0, &qword_27F4793D8, MEMORY[0x277CC9A70], v14);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v45 - v20;
  sub_251B1D388(0, &qword_27F4793E0, MEMORY[0x277CC99E8], v14);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v45 - v24;
  v26 = sub_251C6FC94();
  v46 = *(v26 - 8);
  v47 = v26;
  v27 = *(v46 + 64);
  MEMORY[0x28223BE20](v26);
  v53 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_251C701C4();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v45 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 104))(v33, *MEMORY[0x277CC99B8], v29);
  v56 = a2;
  v34 = sub_251C701D4();
  (*(v30 + 8))(v33, v29);
  if (v34 == v55 + 1)
  {
    return sub_251C700C4();
  }

  v36 = sub_251C701E4();
  (*(*(v36 - 8) + 56))(v25, 1, 1, v36);
  v37 = sub_251C70244();
  (*(*(v37 - 8) + 56))(v21, 1, 1, v37);
  sub_251C6FC74();
  (*(v10 + 104))(v13, *MEMORY[0x277CC9878], v57);
  v38 = v48;
  v39 = v50;
  (*(v48 + 104))(v9, *MEMORY[0x277CC98F0], v50);
  v41 = v51;
  v40 = v52;
  v42 = v49;
  (*(v51 + 104))(v49, *MEMORY[0x277CC9900], v52);
  sub_251C70194();
  (*(v41 + 8))(v42, v40);
  (*(v38 + 8))(v9, v39);
  (*(v10 + 8))(v13, v57);
  v43 = sub_251C70014();
  v44 = *(v43 - 8);
  result = (*(v44 + 48))(v58, 1, v43);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v46 + 8))(v53, v47);
    return (*(v44 + 32))(v54, v58, v43);
  }

  return result;
}

uint64_t sub_251B1D048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = a1;
  sub_251B1D388(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_251C6FC94();
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B1D388(0, &qword_27F479AA0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v10 = sub_251C701C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_251C76AF0;
  v15 = v14 + v13;
  v16 = *(v11 + 104);
  v16(v15, *MEMORY[0x277CC9978], v10);
  v16(v15 + v12, *MEMORY[0x277CC9988], v10);
  v16(v15 + 2 * v12, *MEMORY[0x277CC9998], v10);
  sub_251B1D3EC(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_251C700E4();

  sub_251C70134();
  v17 = sub_251C70014();
  v18 = *(v17 - 8);
  result = (*(v18 + 48))(v5, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v20 + 8))(v9, v21);
    return (*(v18 + 32))(v22, v5, v17);
  }

  return result;
}

void sub_251B1D388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251B1D3EC(uint64_t a1)
{
  v2 = sub_251C701C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_251B1D700();
    v10 = sub_251C71674();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_251B1DAB0(&qword_27F47A048, MEMORY[0x277CC99D0]);
      v18 = sub_251C70E84();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_251B1DAB0(&qword_27F47A050, MEMORY[0x277CC99D0]);
          v25 = sub_251C70ED4();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_251B1D700()
{
  if (!qword_27F47A040)
  {
    sub_251C701C4();
    sub_251B1DAB0(&qword_27F47A048, MEMORY[0x277CC99D0]);
    v0 = sub_251C71684();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47A040);
    }
  }
}

unint64_t sub_251B1D794(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_251C717F4();
    if (result)
    {
LABEL_3:
      sub_251B1DA1C();
      result = sub_251C71674();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_251C717F4();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x25308D460](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    sub_251C709A4();
    sub_251B1DAB0(&qword_27F47A060, MEMORY[0x277CBCDA8]);
    result = sub_251C70E84();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_251B1DAB0(&qword_27F47A068, MEMORY[0x277CBCDA8]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_251C70ED4();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_251B1DA1C()
{
  if (!qword_27F47A058)
  {
    sub_251C709A4();
    sub_251B1DAB0(&qword_27F47A060, MEMORY[0x277CBCDA8]);
    v0 = sub_251C71684();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47A058);
    }
  }
}

uint64_t sub_251B1DAB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251B1DAF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_251B1DB40(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_251B1DB90(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 112) = a5;
  *(v6 + 120) = a6;
  *(v6 + 96) = a2;
  *(v6 + 104) = a4;
  *(v6 + 328) = a3;
  *(v6 + 88) = a1;
  v11 = type metadata accessor for HTTPError();
  *(v6 + 128) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  v13 = sub_251C6FE64();
  *(v6 + 152) = v13;
  v14 = *(v13 - 8);
  *(v6 + 160) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 168) = swift_task_alloc();
  v16 = type metadata accessor for WebRequestResponseError.ErrorType(0);
  *(v6 + 176) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  v18 = type metadata accessor for WebRequestResponseError(0);
  *(v6 + 216) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  v20 = type metadata accessor for ClinicalDocumentDownloadRequest();
  *(v6 + 272) = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v22 = swift_task_alloc();
  *(v6 + 280) = v22;
  v24 = swift_task_alloc();
  *(v6 + 288) = v24;
  *v24 = v6;
  v24[1] = sub_251B1DDF4;

  return sub_251B207C0(v22, a2, a3, 0, v23, a5, a6);
}

uint64_t sub_251B1DDF4()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_251B1E920;
  }

  else
  {
    v3 = sub_251B1DF08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_251B1DF08()
{
  v1 = v0[35];
  v2 = v0[13];
  v0[5] = v0[34];
  v0[6] = &off_2863FC100;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_251B21DEC(v1, boxed_opaque_existential_1, type metadata accessor for ClinicalDocumentDownloadRequest);

  v4 = swift_task_alloc();
  v0[38] = v4;
  *v4 = v0;
  v4[1] = sub_251B1E024;
  v5 = v0[21];
  v6 = v0[13];
  v8 = v0[25];

  JUMPOUT(0x251C6A968);
}

uint64_t sub_251B1E024(void *a1)
{
  v4 = *(*v2 + 304);
  v7 = *v2;

  if (v1)
  {
    v5 = sub_251B1E294;
  }

  else
  {

    v5 = sub_251B1E13C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251B1E13C()
{
  (*(v0[20] + 32))(v0[11], v0[21], v0[19]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[25];
  v8 = v0[26];
  v11 = v0[24];
  v12 = v0[23];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[17];
  sub_251B21F90(v0[35], type metadata accessor for ClinicalDocumentDownloadRequest);

  v9 = v0[1];

  return v9();
}

uint64_t sub_251B1E294()
{
  v65 = v0;
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 192);
  v8 = *(v0 + 176);
  v7 = *(v0 + 184);
  sub_251B21FF0(*(v0 + 200), v4, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251B21FF0(v4, v6, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251A823B4(v0 + 16, v2);
  sub_251B21DEC(v6, v2 + *(v5 + 20), type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251B21D94();
  swift_willThrowTypedImpl();
  sub_251B21F90(v6, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251B21FF0(v2, v1, type metadata accessor for WebRequestResponseError);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_251B21FF0(v1, v3, type metadata accessor for WebRequestResponseError);
  sub_251B21DEC(v3 + *(v5 + 20), v7, type metadata accessor for WebRequestResponseError.ErrorType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(v0 + 184);
  if (EnumCaseMultiPayload != 1)
  {
    v22 = type metadata accessor for WebRequestResponseError.ErrorType;
LABEL_10:
    sub_251B21F90(v10, v22);
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 240);
    v23 = *(v0 + 248);
    v25 = sub_251C70764();
    __swift_project_value_buffer(v25, qword_2813E8130);
    sub_251B21DEC(v23, v24, type metadata accessor for WebRequestResponseError);
    v26 = sub_251C70744();
    v27 = sub_251C713D4();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 240);
    if (v28)
    {
      v31 = *(v0 + 224);
      v30 = *(v0 + 232);
      v32 = *(v0 + 216);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 136315138;
      v64 = v34;
      sub_251B21DEC(v29, v30, type metadata accessor for WebRequestResponseError);
      sub_251B21DEC(v30, v31, type metadata accessor for WebRequestResponseError);
      sub_251C719F4();
      v35 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v36 = sub_251C70F74();
      v38 = v37;
      sub_251B21F90(v30, type metadata accessor for WebRequestResponseError);
      sub_251B21F90(v29, type metadata accessor for WebRequestResponseError);
      v39 = sub_251B10780(v36, v38, &v64);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_251A6C000, v26, v27, "ClinicalDocumentDownloadHandler performFileDownload HTTPError %s : re-throwing error", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x25308E2B0](v34, -1, -1);
      MEMORY[0x25308E2B0](v33, -1, -1);
    }

    else
    {

      sub_251B21F90(v29, type metadata accessor for WebRequestResponseError);
    }

    v18 = *(v0 + 280);
    v19 = *(v0 + 248);
    v40 = *(v0 + 216);
    swift_allocError();
    sub_251B21DEC(v19, v41, type metadata accessor for WebRequestResponseError);
    swift_willThrow();
    goto LABEL_16;
  }

  v12 = *(v0 + 136);
  v11 = *(v0 + 144);
  v13 = *(v0 + 128);
  sub_251B21FF0(v10, v11, type metadata accessor for HTTPError);
  sub_251B21DEC(v11, v12, type metadata accessor for HTTPError);
  v14 = swift_getEnumCaseMultiPayload();
  v15 = *(v0 + 136);
  if (v14 != 2)
  {
    sub_251B21F90(v15, type metadata accessor for HTTPError);
LABEL_9:
    v10 = *(v0 + 144);
    v22 = type metadata accessor for HTTPError;
    goto LABEL_10;
  }

  if (!v15[1])
  {
    goto LABEL_9;
  }

  v16 = *v15;
  v17 = sub_251C4EEAC();

  if ((v17 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (*(v0 + 328))
  {
    v18 = *(v0 + 280);
    v19 = *(v0 + 248);
    v20 = *(v0 + 144);
    sub_251B21E54();
    swift_allocError();
    *v21 = 2;
    swift_willThrow();
    sub_251B21F90(v20, type metadata accessor for HTTPError);
LABEL_16:
    sub_251B21F90(v19, type metadata accessor for WebRequestResponseError);
    sub_251B21F90(v18, type metadata accessor for ClinicalDocumentDownloadRequest);
    v42 = *(v0 + 280);
    v44 = *(v0 + 256);
    v43 = *(v0 + 264);
    v46 = *(v0 + 240);
    v45 = *(v0 + 248);
    v48 = *(v0 + 224);
    v47 = *(v0 + 232);
    v50 = *(v0 + 200);
    v49 = *(v0 + 208);
    v51 = *(v0 + 192);
    v60 = *(v0 + 184);
    v61 = *(v0 + 168);
    v62 = *(v0 + 144);
    v63 = *(v0 + 136);

    v52 = *(v0 + 8);

    return v52();
  }

  v54 = swift_task_alloc();
  *(v0 + 312) = v54;
  *v54 = v0;
  v54[1] = sub_251B1EA38;
  v55 = *(v0 + 112);
  v56 = *(v0 + 120);
  v57 = *(v0 + 96);
  v58 = *(v0 + 104);
  v59 = *(v0 + 88);

  return sub_251B1DB90(v59, v57, 1, v58, v55, v56);
}

uint64_t sub_251B1E920()
{
  v1 = v0[35];
  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[24];
  v13 = v0[23];
  v14 = v0[21];
  v15 = v0[18];
  v16 = v0[17];
  v17 = v0[37];

  v11 = v0[1];

  return v11();
}

uint64_t sub_251B1EA38()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_251B1ECBC;
  }

  else
  {
    v3 = sub_251B1EB4C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251B1EB4C()
{
  v1 = v0[31];
  sub_251B21F90(v0[18], type metadata accessor for HTTPError);
  sub_251B21F90(v1, type metadata accessor for WebRequestResponseError);
  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[25];
  v9 = v0[26];
  v12 = v0[24];
  v13 = v0[23];
  v14 = v0[21];
  v15 = v0[18];
  v16 = v0[17];
  sub_251B21F90(v0[35], type metadata accessor for ClinicalDocumentDownloadRequest);

  v10 = v0[1];

  return v10();
}

uint64_t sub_251B1ECBC()
{
  v1 = v0[35];
  v2 = v0[31];
  sub_251B21F90(v0[18], type metadata accessor for HTTPError);
  sub_251B21F90(v2, type metadata accessor for WebRequestResponseError);
  sub_251B21F90(v1, type metadata accessor for ClinicalDocumentDownloadRequest);
  v3 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[30];
  v6 = v0[31];
  v9 = v0[28];
  v8 = v0[29];
  v11 = v0[25];
  v10 = v0[26];
  v12 = v0[24];
  v15 = v0[23];
  v16 = v0[21];
  v17 = v0[18];
  v18 = v0[17];
  v19 = v0[40];

  v13 = v0[1];

  return v13();
}

uint64_t sub_251B1EE30(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 192) = a4;
  *(v5 + 200) = a5;
  *(v5 + 408) = a2;
  *(v5 + 176) = a1;
  *(v5 + 184) = a3;
  v10 = type metadata accessor for HTTPError();
  *(v5 + 208) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  v12 = type metadata accessor for WebRequestResponseError.ErrorType(0);
  *(v5 + 232) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  v14 = type metadata accessor for WebRequestResponseError(0);
  *(v5 + 272) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  v16 = type metadata accessor for ClinicalDocumentDownloadRequest();
  *(v5 + 328) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v18 = swift_task_alloc();
  *(v5 + 336) = v18;
  v20 = swift_task_alloc();
  *(v5 + 344) = v20;
  *v20 = v5;
  v20[1] = sub_251B1F034;

  return sub_251B207C0(v18, a1, a2, 1, v19, a4, a5);
}

uint64_t sub_251B1F034()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_251B202A4;
  }

  else
  {
    v3 = sub_251B1F148;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_251B1F148()
{
  v1 = v0[42];
  v2 = v0[23];
  v0[13] = v0[41];
  v0[14] = &off_2863FC100;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 10);
  sub_251B21DEC(v1, boxed_opaque_existential_1, type metadata accessor for ClinicalDocumentDownloadRequest);

  v4 = swift_task_alloc();
  v0[45] = v4;
  *v4 = v0;
  v4[1] = sub_251B1F264;
  v5 = v0[23];
  v7 = v0[32];

  JUMPOUT(0x251C695F4);
}

uint64_t sub_251B1F264(uint64_t a1)
{
  v3 = *(*v2 + 360);
  v6 = *v2;
  *(*v2 + 368) = a1;

  if (v1)
  {
    v4 = sub_251B1FB80;
  }

  else
  {
    v4 = sub_251B1F378;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251B1F378()
{
  v88 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (v3)
    {
      if (v2 != v2 >> 32)
      {
        goto LABEL_10;
      }
    }

    else if ((v1 & 0xFF000000000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v3 != 2 || *(v2 + 16) == *(v2 + 24))
  {
LABEL_9:
    sub_251A83028(*(v0 + 152), *(v0 + 160));
    v2 = 0;
    v1 = 0xF000000000000000;
  }

LABEL_10:
  v4 = *(v0 + 368);
  sub_251A823B4(v0 + 80, v0 + 16);
  *(v0 + 56) = v2;
  *(v0 + 64) = v1;
  *(v0 + 72) = v4;
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  v5 = *(v0 + 64);
  if (v5 >> 60 != 15)
  {
    v30 = *(v0 + 336);
    v85 = *(v0 + 56);
    sub_251A858C4(v85, v5);
    sub_251A857E0(v0 + 16);
    sub_251B21F90(v30, type metadata accessor for ClinicalDocumentDownloadRequest);
    v31 = *(v0 + 336);
    v33 = *(v0 + 312);
    v32 = *(v0 + 320);
    v35 = *(v0 + 296);
    v34 = *(v0 + 304);
    v37 = *(v0 + 280);
    v36 = *(v0 + 288);
    v38 = *(v0 + 256);
    v39 = *(v0 + 264);
    v78 = *(v0 + 248);
    v79 = *(v0 + 240);
    v81 = *(v0 + 224);
    v83 = *(v0 + 216);

    v40 = *(v0 + 8);

    return v40(v85, v5);
  }

  sub_251B21E54();
  v6 = swift_allocError();
  *v7 = 1;
  swift_willThrow();
  sub_251A857E0(v0 + 16);
  v8 = *(v0 + 312);
  v9 = *(v0 + 272);
  *(v0 + 168) = v6;
  v10 = v6;
  sub_251A82284();
  if (!swift_dynamicCast())
  {
    v25 = *(v0 + 336);
LABEL_32:
    sub_251B21F90(v25, type metadata accessor for ClinicalDocumentDownloadRequest);

    v63 = *(v0 + 336);
    v65 = *(v0 + 312);
    v64 = *(v0 + 320);
    v67 = *(v0 + 296);
    v66 = *(v0 + 304);
    v69 = *(v0 + 280);
    v68 = *(v0 + 288);
    v71 = *(v0 + 256);
    v70 = *(v0 + 264);
    v80 = *(v0 + 248);
    v82 = *(v0 + 240);
    v84 = *(v0 + 224);
    v86 = *(v0 + 216);

    v72 = *(v0 + 8);

    return v72();
  }

  v12 = *(v0 + 304);
  v11 = *(v0 + 312);
  v13 = *(v0 + 272);
  v15 = *(v0 + 232);
  v14 = *(v0 + 240);

  sub_251B21FF0(v11, v12, type metadata accessor for WebRequestResponseError);
  sub_251B21DEC(v12 + *(v13 + 20), v14, type metadata accessor for WebRequestResponseError.ErrorType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = *(v0 + 240);
  if (EnumCaseMultiPayload != 1)
  {
    v42 = type metadata accessor for WebRequestResponseError.ErrorType;
LABEL_25:
    sub_251B21F90(v17, v42);
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 296);
    v44 = *(v0 + 304);
    v45 = sub_251C70764();
    __swift_project_value_buffer(v45, qword_2813E8130);
    sub_251B21DEC(v44, v43, type metadata accessor for WebRequestResponseError);
    v46 = sub_251C70744();
    v47 = sub_251C713D4();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 296);
    if (v48)
    {
      v51 = *(v0 + 280);
      v50 = *(v0 + 288);
      v52 = *(v0 + 272);
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v87 = v54;
      *v53 = 136315138;
      sub_251B21DEC(v49, v50, type metadata accessor for WebRequestResponseError);
      sub_251B21DEC(v50, v51, type metadata accessor for WebRequestResponseError);
      sub_251C719F4();
      v55 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v56 = sub_251C70F74();
      v58 = v57;
      sub_251B21F90(v50, type metadata accessor for WebRequestResponseError);
      sub_251B21F90(v49, type metadata accessor for WebRequestResponseError);
      v59 = sub_251B10780(v56, v58, &v87);

      *(v53 + 4) = v59;
      _os_log_impl(&dword_251A6C000, v46, v47, "ClinicalDocumentDownloadHandler performDataRequest WebRequestResponseError %s : re-throwing error", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x25308E2B0](v54, -1, -1);
      MEMORY[0x25308E2B0](v53, -1, -1);
    }

    else
    {

      sub_251B21F90(v49, type metadata accessor for WebRequestResponseError);
    }

    v25 = *(v0 + 336);
    v60 = *(v0 + 304);
    v61 = *(v0 + 272);
    sub_251B21D94();
    swift_allocError();
    sub_251B21DEC(v60, v62, type metadata accessor for WebRequestResponseError);
    swift_willThrow();
    v29 = v60;
    goto LABEL_31;
  }

  v19 = *(v0 + 216);
  v18 = *(v0 + 224);
  v20 = *(v0 + 208);
  sub_251B21FF0(v17, v18, type metadata accessor for HTTPError);
  sub_251B21DEC(v18, v19, type metadata accessor for HTTPError);
  v21 = swift_getEnumCaseMultiPayload();
  v22 = *(v0 + 216);
  if (v21 != 2)
  {
    sub_251B21F90(v22, type metadata accessor for HTTPError);
LABEL_24:
    v17 = *(v0 + 224);
    v42 = type metadata accessor for HTTPError;
    goto LABEL_25;
  }

  if (!v22[1])
  {
    goto LABEL_24;
  }

  v23 = *v22;
  v24 = sub_251C4EEAC();

  if ((v24 & 1) == 0)
  {
    goto LABEL_24;
  }

  if (*(v0 + 408))
  {
    v25 = *(v0 + 336);
    v26 = *(v0 + 304);
    v27 = *(v0 + 224);
    swift_allocError();
    *v28 = 2;
    swift_willThrow();
    sub_251B21F90(v27, type metadata accessor for HTTPError);
    v29 = v26;
LABEL_31:
    sub_251B21F90(v29, type metadata accessor for WebRequestResponseError);
    goto LABEL_32;
  }

  v73 = swift_task_alloc();
  *(v0 + 376) = v73;
  *v73 = v0;
  v73[1] = sub_251B203AC;
  v74 = *(v0 + 192);
  v75 = *(v0 + 200);
  v77 = *(v0 + 176);
  v76 = *(v0 + 184);

  return sub_251B1EE30(v77, 1, v76, v74, v75);
}

uint64_t sub_251B1FB80()
{
  v71 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v4 = *(v0 + 248);
  sub_251B21FF0(*(v0 + 256), v2, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251B21FF0(v2, v4, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251A823B4(v0 + 80, v1);
  sub_251B21DEC(v4, v1 + *(v3 + 20), type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251B21D94();
  swift_willThrowTypedImpl();
  sub_251B21F90(v4, type metadata accessor for WebRequestResponseError.ErrorType);
  v5 = swift_allocError();
  sub_251B21FF0(v1, v6, type metadata accessor for WebRequestResponseError);
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  *(v0 + 168) = v5;
  v7 = *(v0 + 312);
  v8 = *(v0 + 272);
  v9 = v5;
  sub_251A82284();
  if (!swift_dynamicCast())
  {
    v24 = *(v0 + 336);
LABEL_19:
    sub_251B21F90(v24, type metadata accessor for ClinicalDocumentDownloadRequest);

    v49 = *(v0 + 336);
    v51 = *(v0 + 312);
    v50 = *(v0 + 320);
    v53 = *(v0 + 296);
    v52 = *(v0 + 304);
    v55 = *(v0 + 280);
    v54 = *(v0 + 288);
    v57 = *(v0 + 256);
    v56 = *(v0 + 264);
    v58 = *(v0 + 248);
    v66 = *(v0 + 240);
    v67 = *(v0 + 224);
    v68 = *(v0 + 216);

    v59 = *(v0 + 8);

    return v59();
  }

  v11 = *(v0 + 304);
  v10 = *(v0 + 312);
  v12 = *(v0 + 272);
  v14 = *(v0 + 232);
  v13 = *(v0 + 240);

  sub_251B21FF0(v10, v11, type metadata accessor for WebRequestResponseError);
  sub_251B21DEC(v11 + *(v12 + 20), v13, type metadata accessor for WebRequestResponseError.ErrorType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = *(v0 + 240);
  if (EnumCaseMultiPayload != 1)
  {
    v29 = type metadata accessor for WebRequestResponseError.ErrorType;
LABEL_12:
    sub_251B21F90(v16, v29);
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 296);
    v30 = *(v0 + 304);
    v32 = sub_251C70764();
    __swift_project_value_buffer(v32, qword_2813E8130);
    sub_251B21DEC(v30, v31, type metadata accessor for WebRequestResponseError);
    v33 = sub_251C70744();
    v34 = sub_251C713D4();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 296);
    if (v35)
    {
      v38 = *(v0 + 280);
      v37 = *(v0 + 288);
      v39 = *(v0 + 272);
      v40 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = v69;
      *v40 = 136315138;
      sub_251B21DEC(v36, v37, type metadata accessor for WebRequestResponseError);
      sub_251B21DEC(v37, v38, type metadata accessor for WebRequestResponseError);
      sub_251C719F4();
      v41 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v42 = sub_251C70F74();
      v44 = v43;
      sub_251B21F90(v37, type metadata accessor for WebRequestResponseError);
      sub_251B21F90(v36, type metadata accessor for WebRequestResponseError);
      v45 = sub_251B10780(v42, v44, &v70);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_251A6C000, v33, v34, "ClinicalDocumentDownloadHandler performDataRequest WebRequestResponseError %s : re-throwing error", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v69);
      MEMORY[0x25308E2B0](v69, -1, -1);
      MEMORY[0x25308E2B0](v40, -1, -1);
    }

    else
    {

      sub_251B21F90(v36, type metadata accessor for WebRequestResponseError);
    }

    v24 = *(v0 + 336);
    v46 = *(v0 + 304);
    v47 = *(v0 + 272);
    swift_allocError();
    sub_251B21DEC(v46, v48, type metadata accessor for WebRequestResponseError);
    swift_willThrow();
    v28 = v46;
    goto LABEL_18;
  }

  v18 = *(v0 + 216);
  v17 = *(v0 + 224);
  v19 = *(v0 + 208);
  sub_251B21FF0(v16, v17, type metadata accessor for HTTPError);
  sub_251B21DEC(v17, v18, type metadata accessor for HTTPError);
  v20 = swift_getEnumCaseMultiPayload();
  v21 = *(v0 + 216);
  if (v20 != 2)
  {
    sub_251B21F90(v21, type metadata accessor for HTTPError);
LABEL_11:
    v16 = *(v0 + 224);
    v29 = type metadata accessor for HTTPError;
    goto LABEL_12;
  }

  if (!v21[1])
  {
    goto LABEL_11;
  }

  v22 = *v21;
  v23 = sub_251C4EEAC();

  if ((v23 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (*(v0 + 408))
  {
    v24 = *(v0 + 336);
    v25 = *(v0 + 304);
    v26 = *(v0 + 224);
    sub_251B21E54();
    swift_allocError();
    *v27 = 2;
    swift_willThrow();
    sub_251B21F90(v26, type metadata accessor for HTTPError);
    v28 = v25;
LABEL_18:
    sub_251B21F90(v28, type metadata accessor for WebRequestResponseError);
    goto LABEL_19;
  }

  v61 = swift_task_alloc();
  *(v0 + 376) = v61;
  *v61 = v0;
  v61[1] = sub_251B203AC;
  v62 = *(v0 + 192);
  v63 = *(v0 + 200);
  v65 = *(v0 + 176);
  v64 = *(v0 + 184);

  return sub_251B1EE30(v65, 1, v64, v62, v63);
}

uint64_t sub_251B202A4()
{
  v1 = v0[42];
  v3 = v0[39];
  v2 = v0[40];
  v5 = v0[37];
  v4 = v0[38];
  v7 = v0[35];
  v6 = v0[36];
  v9 = v0[32];
  v8 = v0[33];
  v10 = v0[31];
  v13 = v0[30];
  v14 = v0[28];
  v15 = v0[27];
  v16 = v0[44];

  v11 = v0[1];

  return v11();
}

uint64_t sub_251B203AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 376);
  v8 = *v3;
  *(*v3 + 384) = v2;

  if (v2)
  {
    v9 = sub_251B20654;
  }

  else
  {
    *(v6 + 392) = a2;
    *(v6 + 400) = a1;
    v9 = sub_251B204E0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_251B204E0()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  sub_251B21F90(*(v0 + 224), type metadata accessor for HTTPError);
  sub_251B21F90(v2, type metadata accessor for WebRequestResponseError);
  sub_251B21F90(v1, type metadata accessor for ClinicalDocumentDownloadRequest);

  v18 = *(v0 + 392);
  v19 = *(v0 + 400);
  v3 = *(v0 + 336);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  v7 = *(v0 + 296);
  v6 = *(v0 + 304);
  v9 = *(v0 + 280);
  v8 = *(v0 + 288);
  v10 = *(v0 + 256);
  v11 = *(v0 + 264);
  v12 = *(v0 + 248);
  v15 = *(v0 + 240);
  v16 = *(v0 + 224);
  v17 = *(v0 + 216);

  v13 = *(v0 + 8);

  return v13(v19, v18);
}

uint64_t sub_251B20654()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  sub_251B21F90(*(v0 + 224), type metadata accessor for HTTPError);
  sub_251B21F90(v2, type metadata accessor for WebRequestResponseError);
  sub_251B21F90(v1, type metadata accessor for ClinicalDocumentDownloadRequest);

  v3 = *(v0 + 336);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  v7 = *(v0 + 296);
  v6 = *(v0 + 304);
  v9 = *(v0 + 280);
  v8 = *(v0 + 288);
  v11 = *(v0 + 256);
  v10 = *(v0 + 264);
  v12 = *(v0 + 248);
  v15 = *(v0 + 240);
  v16 = *(v0 + 224);
  v17 = *(v0 + 216);
  v18 = *(v0 + 384);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_251B207C0(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 200) = a6;
  *(v7 + 208) = a7;
  *(v7 + 345) = a4;
  *(v7 + 344) = a3;
  *(v7 + 184) = a1;
  *(v7 + 192) = a2;
  sub_251AF3A84();
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 232) = swift_task_alloc();
  *(v7 + 240) = swift_task_alloc();
  v10 = type metadata accessor for ClinicalDocumentDownloadRequest();
  *(v7 + 248) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v7 + 256) = swift_task_alloc();
  v12 = sub_251C70074();
  *(v7 + 264) = v12;
  v13 = *(v12 - 8);
  *(v7 + 272) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251B20918, 0, 0);
}

uint64_t sub_251B20918()
{
  v75 = v0;
  v1 = [*(v0 + 192) accountIdentifier];
  if (!v1)
  {
    sub_251B21E54();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    v18 = *(v0 + 280);
    v17 = *(v0 + 288);
    v19 = *(v0 + 256);
    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v23 = *(v0 + 216);
    v22 = *(v0 + 224);

    v24 = *(v0 + 8);
LABEL_8:

    return v24();
  }

  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);
  v6 = *(v0 + 344);
  v7 = v1;
  sub_251C70054();

  (*(v5 + 32))(v3, v2, v4);
  if (v6)
  {
    v8 = swift_task_alloc();
    *(v0 + 296) = v8;
    *v8 = v0;
    v8[1] = sub_251B20EA4;
    v9 = *(v0 + 288);
    v10 = *(v0 + 200);

    return sub_251C5F768(v9);
  }

  v13 = *(v0 + 208);
  *(v0 + 320) = v13;
  v14 = *(v0 + 256);
  v15 = *(v0 + 192);
  v16 = v13;
  sub_251BD3948(v15, v14);
  if (*(v0 + 345))
  {
    v25 = *(v0 + 320);
    HKFHIRCredential.asAuthorizationHeader()(&v74);
    object = v74.value.name._object;
    if (v74.value.name._object)
    {
      countAndFlagsBits = v74.value.name._countAndFlagsBits;
      v29 = v74.value.value._countAndFlagsBits;
      v28 = v74.value.value._object;
      v30 = *(v0 + 256);
      if (*(v30 + 8))
      {
        v31 = *(v0 + 248);
        v32 = sub_251A85478();
        v34 = v32;
        v35 = *v33;
        if (*v33)
        {
          v36 = v33;
          v37 = v32;
          v38 = *v33;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v36 = v35;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v35 = sub_251C39148(0, *(v35 + 2) + 1, 1, v35);
            *v36 = v35;
          }

          v70 = countAndFlagsBits;
          v73 = v28;
          v41 = *(v35 + 2);
          v40 = *(v35 + 3);
          v42 = v41 + 1;
          v43 = v29;
          if (v41 >= v40 >> 1)
          {
            v69 = sub_251C39148((v40 > 1), v41 + 1, 1, v35);
            v42 = v41 + 1;
            v35 = v69;
            *v36 = v69;
          }

          v44 = v37;
          v45 = *(v0 + 320);
          v46 = *(v0 + 288);
          v48 = *(v0 + 264);
          v47 = *(v0 + 272);
          *(v35 + 2) = v42;
          v49 = &v35[32 * v41];
          *(v49 + 4) = v70;
          *(v49 + 5) = object;
          *(v49 + 6) = v43;
          *(v49 + 7) = v73;
          v44(v0 + 144, 0);

          (*(v47 + 8))(v46, v48);
        }

        else
        {
          v60 = *(v0 + 320);
          v72 = *(v0 + 288);
          v61 = *(v0 + 264);
          v62 = *(v0 + 272);
          sub_251B220A8(countAndFlagsBits, object);
          v34(v0 + 144, 0);

          (*(v62 + 8))(v72, v61);
        }
      }

      else
      {
        v56 = *(v0 + 320);
        v71 = *(v0 + 288);
        v58 = *(v0 + 264);
        v57 = *(v0 + 272);
        sub_251B22058();
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_251C74800;
        *(v59 + 32) = countAndFlagsBits;
        *(v59 + 40) = object;
        *(v59 + 48) = v29;
        *(v59 + 56) = v28;

        (*(v57 + 8))(v71, v58);
        *(v30 + 8) = v59;
      }
    }

    else
    {
      v55 = *(v0 + 320);
      (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
    }

    v63 = *(v0 + 280);
    v64 = *(v0 + 288);
    v66 = *(v0 + 232);
    v65 = *(v0 + 240);
    v68 = *(v0 + 216);
    v67 = *(v0 + 224);
    sub_251B21FF0(*(v0 + 256), *(v0 + 184), type metadata accessor for ClinicalDocumentDownloadRequest);

    v24 = *(v0 + 8);
    goto LABEL_8;
  }

  v50 = *(v0 + 288);
  v51 = *(v0 + 200);
  v52 = sub_251C70034();
  *(v0 + 328) = v52;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 176;
  *(v0 + 24) = sub_251B21444;
  v53 = swift_continuation_init();
  sub_251B21EA8();
  *(v0 + 136) = v54;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_251AB5E04;
  *(v0 + 104) = &block_descriptor_9;
  *(v0 + 112) = v53;
  [v51 fetchAccountWithIdentifier:v52 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_251B20EA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v7 = sub_251B21BB8;
  }

  else
  {
    *(v4 + 312) = a1;
    v7 = sub_251B20FCC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_251B20FCC()
{
  v62 = v0;
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  *(v0 + 320) = v1;
  sub_251BD3948(*(v0 + 192), *(v0 + 256));
  if (v2)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));

    v4 = *(v0 + 280);
    v3 = *(v0 + 288);
    v5 = *(v0 + 256);
    v7 = *(v0 + 232);
    v6 = *(v0 + 240);
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);

    v10 = *(v0 + 8);
LABEL_19:

    return v10();
  }

  if (*(v0 + 345))
  {
    v11 = *(v0 + 320);
    HKFHIRCredential.asAuthorizationHeader()(&v61);
    object = v61.value.name._object;
    if (v61.value.name._object)
    {
      countAndFlagsBits = v61.value.name._countAndFlagsBits;
      v15 = v61.value.value._countAndFlagsBits;
      v14 = v61.value.value._object;
      v16 = *(v0 + 256);
      if (*(v16 + 8))
      {
        v17 = *(v0 + 248);
        v18 = sub_251A85478();
        v20 = v18;
        v21 = *v19;
        if (*v19)
        {
          v22 = v19;
          v23 = v18;
          v24 = *v19;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v22 = v21;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v21 = sub_251C39148(0, *(v21 + 2) + 1, 1, v21);
            *v22 = v21;
          }

          v57 = countAndFlagsBits;
          v60 = v14;
          v27 = *(v21 + 2);
          v26 = *(v21 + 3);
          v28 = v27 + 1;
          v29 = v15;
          if (v27 >= v26 >> 1)
          {
            v55 = sub_251C39148((v26 > 1), v27 + 1, 1, v21);
            v28 = v27 + 1;
            v21 = v55;
            *v22 = v55;
          }

          v30 = v23;
          v31 = *(v0 + 320);
          v32 = *(v0 + 288);
          v34 = *(v0 + 264);
          v33 = *(v0 + 272);
          *(v21 + 2) = v28;
          v35 = &v21[32 * v27];
          *(v35 + 4) = v57;
          *(v35 + 5) = object;
          *(v35 + 6) = v29;
          *(v35 + 7) = v60;
          v30(v0 + 144, 0);

          (*(v33 + 8))(v32, v34);
        }

        else
        {
          v46 = *(v0 + 320);
          v59 = *(v0 + 288);
          v47 = *(v0 + 264);
          v48 = *(v0 + 272);
          sub_251B220A8(countAndFlagsBits, object);
          v20(v0 + 144, 0);

          (*(v48 + 8))(v59, v47);
        }
      }

      else
      {
        v42 = *(v0 + 320);
        v58 = *(v0 + 288);
        v44 = *(v0 + 264);
        v43 = *(v0 + 272);
        sub_251B22058();
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_251C74800;
        *(v45 + 32) = countAndFlagsBits;
        *(v45 + 40) = object;
        *(v45 + 48) = v15;
        *(v45 + 56) = v14;

        (*(v43 + 8))(v58, v44);
        *(v16 + 8) = v45;
      }
    }

    else
    {
      v41 = *(v0 + 320);
      (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
    }

    v49 = *(v0 + 280);
    v50 = *(v0 + 288);
    v52 = *(v0 + 232);
    v51 = *(v0 + 240);
    v54 = *(v0 + 216);
    v53 = *(v0 + 224);
    sub_251B21FF0(*(v0 + 256), *(v0 + 184), type metadata accessor for ClinicalDocumentDownloadRequest);

    v10 = *(v0 + 8);
    goto LABEL_19;
  }

  v36 = *(v0 + 288);
  v37 = *(v0 + 200);
  v38 = sub_251C70034();
  *(v0 + 328) = v38;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 176;
  *(v0 + 24) = sub_251B21444;
  v39 = swift_continuation_init();
  sub_251B21EA8();
  *(v0 + 136) = v40;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_251AB5E04;
  *(v0 + 104) = &block_descriptor_9;
  *(v0 + 112) = v39;
  [v37 fetchAccountWithIdentifier:v38 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_251B21444()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  if (v2)
  {
    v3 = sub_251B21C88;
  }

  else
  {
    v3 = sub_251B21554;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251B21554()
{
  v85 = v0;
  v1 = *(v0 + 176);

  v2 = [v1 gateway];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v2 baseURL];

  if (v4)
  {
    v5 = *(v0 + 232);
    sub_251C6FE14();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  v9 = sub_251C6FE64();
  v10 = *(v9 - 8);
  v11 = v10[7];
  v11(v8, v6, 1, v9);
  sub_251B21FF0(v8, v7, sub_251AF3A84);
  v12 = v10[6];
  v13 = v12(v7, 1, v9);
  v14 = *(v0 + 240);
  if (v13 == 1)
  {
    sub_251B21F90(*(v0 + 240), sub_251AF3A84);
LABEL_7:
    v15 = *(v0 + 320);
    v16 = *(v0 + 288);
    v17 = *(v0 + 264);
    v18 = *(v0 + 272);
    v19 = *(v0 + 256);
    sub_251B21E54();
    swift_allocError();
    *v20 = 3;
    swift_willThrow();

    (*(v18 + 8))(v16, v17);
    sub_251B21F90(v19, type metadata accessor for ClinicalDocumentDownloadRequest);
    v22 = *(v0 + 280);
    v21 = *(v0 + 288);
    v23 = *(v0 + 256);
    v25 = *(v0 + 232);
    v24 = *(v0 + 240);
    v27 = *(v0 + 216);
    v26 = *(v0 + 224);

    v28 = *(v0 + 8);
    goto LABEL_25;
  }

  v29 = *(v0 + 192);
  sub_251C6FDA4();
  v30 = v10[1];
  v30(v14, v9);
  v31 = [v29 webURL];
  if (v31)
  {
    v32 = *(v0 + 216);
    v33 = v31;
    sub_251C6FE14();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v36 = *(v0 + 216);
  v35 = *(v0 + 224);
  v11(v36, v34, 1, v9);
  sub_251B21FF0(v36, v35, sub_251AF3A84);
  if (v12(v35, 1, v9) == 1)
  {
    v37 = *(v0 + 224);

    sub_251B21F90(v37, sub_251AF3A84);
  }

  else
  {
    v38 = *(v0 + 224);
    sub_251C6FDA4();
    v30(v38, v9);
    v39 = sub_251C4EEAC();

    if (v39)
    {
      HKFHIRCredential.asAuthorizationHeader()(&v84);
      object = v84.value.name._object;
      if (v84.value.name._object)
      {
        countAndFlagsBits = v84.value.name._countAndFlagsBits;
        v43 = v84.value.value._countAndFlagsBits;
        v42 = v84.value.value._object;
        v44 = *(v0 + 256);
        if (*(v44 + 8))
        {
          v45 = *(v0 + 248);
          v46 = sub_251A85478();
          v48 = v46;
          v49 = *v47;
          if (*v47)
          {
            v50 = v47;
            v51 = v46;
            v52 = *v47;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v50 = v49;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v49 = sub_251C39148(0, *(v49 + 2) + 1, 1, v49);
              *v50 = v49;
            }

            v80 = countAndFlagsBits;
            v83 = v42;
            v55 = *(v49 + 2);
            v54 = *(v49 + 3);
            v56 = v55 + 1;
            v57 = v43;
            if (v55 >= v54 >> 1)
            {
              v79 = sub_251C39148((v54 > 1), v55 + 1, 1, v49);
              v56 = v55 + 1;
              v49 = v79;
              *v50 = v79;
            }

            v58 = v51;
            v59 = *(v0 + 320);
            v60 = *(v0 + 288);
            v62 = *(v0 + 264);
            v61 = *(v0 + 272);
            *(v49 + 2) = v56;
            v63 = &v49[32 * v55];
            *(v63 + 4) = v80;
            *(v63 + 5) = object;
            *(v63 + 6) = v57;
            *(v63 + 7) = v83;
            v58(v0 + 144, 0);

            (*(v61 + 8))(v60, v62);
          }

          else
          {
            v76 = *(v0 + 320);
            v82 = *(v0 + 288);
            v77 = *(v0 + 264);
            v78 = *(v0 + 272);
            sub_251B220A8(countAndFlagsBits, object);
            v48(v0 + 144, 0);

            (*(v78 + 8))(v82, v77);
          }
        }

        else
        {
          v72 = *(v0 + 320);
          v81 = *(v0 + 288);
          v74 = *(v0 + 264);
          v73 = *(v0 + 272);
          sub_251B22058();
          v75 = swift_allocObject();
          *(v75 + 16) = xmmword_251C74800;
          *(v75 + 32) = countAndFlagsBits;
          *(v75 + 40) = object;
          *(v75 + 48) = v43;
          *(v75 + 56) = v42;

          (*(v73 + 8))(v81, v74);
          *(v44 + 8) = v75;
        }
      }

      else
      {
        v71 = *(v0 + 320);
        (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
      }

      goto LABEL_24;
    }
  }

  (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
LABEL_24:
  v64 = *(v0 + 280);
  v65 = *(v0 + 288);
  v67 = *(v0 + 232);
  v66 = *(v0 + 240);
  v69 = *(v0 + 216);
  v68 = *(v0 + 224);
  sub_251B21FF0(*(v0 + 256), *(v0 + 184), type metadata accessor for ClinicalDocumentDownloadRequest);

  v28 = *(v0 + 8);
LABEL_25:

  return v28();
}

uint64_t sub_251B21BB8()
{
  (*(v0[34] + 8))(v0[36], v0[33]);
  v1 = v0[38];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[32];
  v6 = v0[29];
  v5 = v0[30];
  v8 = v0[27];
  v7 = v0[28];

  v9 = v0[1];

  return v9();
}

uint64_t sub_251B21C88()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  v7 = v0[32];
  swift_willThrow();

  (*(v6 + 8))(v4, v5);
  sub_251B21F90(v7, type metadata accessor for ClinicalDocumentDownloadRequest);

  v8 = v0[42];
  v10 = v0[35];
  v9 = v0[36];
  v11 = v0[32];
  v13 = v0[29];
  v12 = v0[30];
  v15 = v0[27];
  v14 = v0[28];

  v16 = v0[1];

  return v16();
}

unint64_t sub_251B21D94()
{
  result = qword_27F478E50;
  if (!qword_27F478E50)
  {
    type metadata accessor for WebRequestResponseError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478E50);
  }

  return result;
}

uint64_t sub_251B21DEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_251B21E54()
{
  result = qword_27F47A070;
  if (!qword_27F47A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A070);
  }

  return result;
}

void sub_251B21EA8()
{
  if (!qword_27F47A078)
  {
    sub_251B21F18();
    sub_251A82284();
    v0 = sub_251C71224();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47A078);
    }
  }
}

unint64_t sub_251B21F18()
{
  result = qword_2813E1D98;
  if (!qword_2813E1D98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813E1D98);
  }

  return result;
}

uint64_t sub_251B21F90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251B21FF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_251B22058()
{
  if (!qword_27F47A080)
  {
    v0 = sub_251C719B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47A080);
    }
  }
}

uint64_t sub_251B220A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_251B22100()
{
  result = qword_27F47A088;
  if (!qword_27F47A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A088);
  }

  return result;
}

void *sub_251B221B4()
{
  MEMORY[0x25308E2B0](v0[2], -1, -1);
  v1 = v0[3];

  v2 = v0[4];

  return v0;
}

uint64_t sub_251B221EC()
{
  sub_251B221B4();

  return swift_deallocClassInstance();
}

uint64_t sub_251B22238(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_251B222E0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = (v0 + *(*v0 + 104));
  v2 = v1[1];
  sub_251A7EA4C(*v1);
  sub_251B22798(v0 + *(*v0 + 112));
  return v0;
}

uint64_t sub_251B2238C()
{
  sub_251B222E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_251B22404(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_251ADC9F8();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_251B2248C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_251B225C8(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_251B22798(uint64_t a1)
{
  sub_251B227F4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251B227F4()
{
  if (!qword_2813E2220)
  {
    sub_251B2284C();
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2220);
    }
  }
}

unint64_t sub_251B2284C()
{
  result = qword_2813E2228;
  if (!qword_2813E2228)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813E2228);
  }

  return result;
}

void sub_251B228E4(uint64_t a1@<X8>)
{
  sub_251B2429C();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_251B22928(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_251B2429C();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

uint64_t sub_251B22960(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B23E00();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251B229C8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1BC8);
  __swift_project_value_buffer(v0, qword_27F4A1BC8);
  sub_251B240DC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_251C78260;
  v5 = v24 + v4;
  v6 = v24 + v4 + *(v2 + 56);
  *(v24 + v4) = 0;
  *v6 = "ACTIVITY";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "VITALS_AND_MES";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "ALERTS_AND_ECG";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "CHR";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "CYCLE_TRACKING";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "SLEEP";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "DEVICE_GENERATED";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "PATIENT_GENERATED";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B22D3C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1BE0);
  __swift_project_value_buffer(v0, qword_27F4A1BE0);
  sub_251B240DC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "latest_update_date";
  *(v7 + 8) = 18;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "data_type";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B22F1C()
{
  result = sub_251C70444();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_251C70534();
      }

      else if (result == 2)
      {
        sub_251B23E00();
        sub_251C70494();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B22FD8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_251C70674(), !v1))
  {
    if (!v0[2] || (v7 = v0[2], v8 = *(v0 + 24), sub_251B23E00(), result = sub_251C70604(), !v1))
    {
      v6 = v0 + *(type metadata accessor for PBDataTypeShared(0) + 24);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B230BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v2 = a2 + *(a1 + 24);
  return sub_251C703A4();
}

uint64_t sub_251B2313C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B23BE8(&qword_27F47A0D0, type metadata accessor for PBDataTypeShared);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B231DC(uint64_t a1)
{
  v2 = sub_251B23BE8(&qword_27F47A0B8, type metadata accessor for PBDataTypeShared);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B23248()
{
  sub_251B23BE8(&qword_27F47A0B8, type metadata accessor for PBDataTypeShared);

  return sub_251C705C4();
}

uint64_t sub_251B232C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 24);
  if (!sub_251BB3774(*(a1 + 16), *(a1 + 24), *(a2 + 16)))
  {
    return 0;
  }

  v8 = *(a3 + 24);
  sub_251C703B4();
  sub_251B23BE8(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B23398()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1BF8);
  __swift_project_value_buffer(v0, qword_27F4A1BF8);
  sub_251B240DC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "current_sync_date";
  *(v7 + 8) = 17;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "data_type_shared";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "gateway_id";
  *(v12 + 8) = 10;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B235C4()
{
  result = sub_251C70444();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      switch(result)
      {
        case 3:
          goto LABEL_10;
        case 2:
          type metadata accessor for PBDataTypeShared(0);
          sub_251B23BE8(&qword_27F47A0B8, type metadata accessor for PBDataTypeShared);
          sub_251C70554();
          break;
        case 1:
LABEL_10:
          sub_251C70534();
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B236D0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_251C70674(), !v1))
  {
    if (!*(v0[2] + 16) || (type metadata accessor for PBDataTypeShared(0), sub_251B23BE8(&qword_27F47A0B8, type metadata accessor for PBDataTypeShared), result = sub_251C70694(), !v1))
    {
      v6 = v0[4];
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v0[3] & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = sub_251C70674(), !v1))
      {
        v8 = v0 + *(type metadata accessor for PBDaiPayload(0) + 28);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B2381C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x277D84F90];
  a2[3] = 0;
  a2[4] = 0xE000000000000000;
  v2 = a2 + *(a1 + 28);
  return sub_251C703A4();
}

uint64_t sub_251B23870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251B238E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_251B23958(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_251B239AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B23BE8(&qword_27F47A0E0, type metadata accessor for PBDaiPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B23A4C(uint64_t a1)
{
  v2 = sub_251B23BE8(&qword_27F47A098, type metadata accessor for PBDaiPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B23AB8()
{
  sub_251B23BE8(&qword_27F47A098, type metadata accessor for PBDaiPayload);

  return sub_251C705C4();
}

uint64_t sub_251B23BE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_251B23E00()
{
  result = qword_27F47A0D8;
  if (!qword_27F47A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A0D8);
  }

  return result;
}

uint64_t sub_251B23E54(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  if ((sub_251A9C138(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v5 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for PBDaiPayload(0) + 28);
  sub_251C703B4();
  sub_251B23BE8(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B23F6C()
{
  result = sub_251C703B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251B24018()
{
  sub_251B240DC(319, &qword_27F47A108, type metadata accessor for PBDataTypeShared, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_251B240DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251B24198()
{
  if (!qword_27F47A118)
  {
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47A118);
    }
  }
}

unint64_t sub_251B241EC()
{
  result = qword_27F47A120;
  if (!qword_27F47A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A120);
  }

  return result;
}

unint64_t sub_251B24248()
{
  result = qword_27F47A128;
  if (!qword_27F47A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A128);
  }

  return result;
}

uint64_t HKClinicalSharingQueryDiagnosticOptions.description.getter(uint64_t a1)
{
  v1 = sub_251B2437C(&unk_2863F2DE0, a1);
  sub_251B2463C(0, &qword_27F4791B8, type metadata accessor for HKClinicalSharingQueryDiagnosticOptions);
  swift_arrayDestroy();
  return v1;
}

uint64_t HKClinicalSharingOptions.description.getter(uint64_t a1)
{
  v1 = sub_251B2437C(&unk_2863F2DA8, a1);
  sub_251B245C4(&unk_2863F2DC8);
  return v1;
}

uint64_t sub_251B2437C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 48);
    v5 = MEMORY[0x277D84F90];
    v6 = a2;
    do
    {
      v8 = *(v4 - 2);
      if ((v8 & ~a2) == 0)
      {
        v10 = *(v4 - 1);
        v9 = *v4;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_251C38CCC(0, *(v5 + 2) + 1, 1, v5);
        }

        v12 = *(v5 + 2);
        v11 = *(v5 + 3);
        if (v12 >= v11 >> 1)
        {
          v5 = sub_251C38CCC((v11 > 1), v12 + 1, 1, v5);
        }

        *(v5 + 2) = v12 + 1;
        v7 = &v5[16 * v12];
        *(v7 + 4) = v10;
        *(v7 + 5) = v9;
        if ((v8 & v6) != 0)
        {
          v6 &= ~v8;
        }
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    v6 = a2;
  }

  if (v6)
  {
    MEMORY[0x25308CDA0](0x286E776F6E6B6E75, 0xE800000000000000);
    sub_251C717C4();
    MEMORY[0x25308CDA0](41, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_251C38CCC(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_251C38CCC((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[16 * v14];
    *(v15 + 4) = 0;
    *(v15 + 5) = 0xE000000000000000;
  }

  sub_251B1C8C8();
  sub_251AF3520();
  v16 = sub_251C70EA4();
  v18 = v17;

  MEMORY[0x25308CDA0](v16, v18);

  MEMORY[0x25308CDA0](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_251B245C4(uint64_t a1)
{
  sub_251B2463C(0, &qword_2813E1D48, type metadata accessor for HKClinicalSharingOptions);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251B2463C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_251B246A0()
{
  v1 = sub_251B2437C(&unk_2863F2DA8, *v0);
  sub_251B245C4(&unk_2863F2DC8);
  return v1;
}

uint64_t sub_251B246F0()
{
  v1 = sub_251B2437C(&unk_2863F2DE0, *v0);
  sub_251B2463C(0, &qword_27F4791B8, type metadata accessor for HKClinicalSharingQueryDiagnosticOptions);
  swift_arrayDestroy();
  return v1;
}

uint64_t HKClinicalSharingReason.description.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      return 0x676E6974736574;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return 0xD000000000000010;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x696E692D72657375;
  }

  else
  {
    if (a1 == 1)
    {
      return 0x7A69726F68747561;
    }

    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x756F72676B636162;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x617461642D77656ELL;
  }
}

uint64_t sub_251B24878@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, uint64_t *a3@<X8>)
{
  sub_251AB2CCC();
  result = a2(a1, *(a1 + *(v6 + 48)));
  *a3 = result;
  return result;
}

uint64_t sub_251B248CC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v62 = a2;
  v68 = a3;
  v4 = sub_251C70074();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2C00();
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v7);
  v61 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2D3C();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v10);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B264EC(0, &qword_27F479400, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCE78]);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v58 - v17;
  v19 = MEMORY[0x277CBCF38];
  sub_251AFD990(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v21 = v20;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v25 = &v58 - v24;
  v69[0] = *a1;
  v26 = v69[0];
  type metadata accessor for ClinicalSharingSyncContext();

  sub_251C70A24();
  sub_251A82284();
  sub_251C709F4();
  (*(v15 + 8))(v18, v14);
  sub_251AFDA08(&qword_27F479410, &qword_27F479408, v19);
  v27 = sub_251C70A94();
  (*(v22 + 8))(v25, v21);
  v28 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v26 + v28, v69);
  v29 = v70;
  v30 = v71;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  (*(v30 + 16))(v29, v30);
  v32 = v31;
  __swift_destroy_boxed_opaque_existential_1(v69);
  if (v32)
  {

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v33 = sub_251C70764();
    __swift_project_value_buffer(v33, qword_2813E8130);

    v34 = sub_251C70744();
    v35 = sub_251C713C4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v69[0] = v37;
      *v36 = 136315138;
      v39 = v59;
      v38 = v60;
      v40 = v26 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID;
      v41 = v58;
      (*(v59 + 16))(v58, v40, v60);
      sub_251B25DF0(&qword_27F479418, MEMORY[0x277CC95F0]);
      v42 = sub_251C719A4();
      v44 = v43;
      (*(v39 + 8))(v41, v38);
      v45 = sub_251B10780(v42, v44, v69);

      *(v36 + 4) = v45;
      _os_log_impl(&dword_251A6C000, v34, v35, "No DocRef creation required. DocRef already exists. Account: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x25308E2B0](v37, -1, -1);
      MEMORY[0x25308E2B0](v36, -1, -1);
    }

    v69[0] = v27;
    v46 = MEMORY[0x277CBCD88];
    sub_251AFD990(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v46);
    v47 = sub_251C70A94();
  }

  else
  {
    v69[0] = v27;
    v49 = MEMORY[0x277CBCD88];
    sub_251AFD990(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AB2CCC();
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v49);
    v50 = v61;
    sub_251C70B54();
    v51 = swift_allocObject();
    v52 = v62;
    *(v51 + 16) = v62;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_251B25A90;
    *(v53 + 24) = v51;
    v54 = v52;
    sub_251C70964();
    sub_251B25DF0(&qword_27F479440, sub_251AB2C00);
    v55 = v63;
    v56 = v65;
    sub_251C70B94();

    (*(v64 + 8))(v50, v56);
    sub_251B25DF0(&qword_27F479450, sub_251AB2D3C);
    v57 = v67;
    v47 = sub_251C70A94();

    result = (*(v66 + 8))(v55, v57);
  }

  *v68 = v47;
  return result;
}

uint64_t sub_251B25124@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_251C70074();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v12 = sub_251C70764();
  __swift_project_value_buffer(v12, qword_2813E8130);

  v13 = sub_251C70744();
  v14 = sub_251C713C4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v36 = a2;
    v18 = v17;
    v33[0] = v17;
    *v16 = 136315138;
    (*(v7 + 16))(v10, v11 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v6);
    sub_251B25DF0(&qword_27F479418, MEMORY[0x277CC95F0]);
    v19 = sub_251C719A4();
    v20 = v7;
    v22 = v21;
    (*(v20 + 8))(v10, v6);
    v23 = sub_251B10780(v19, v22, v33);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_251A6C000, v13, v14, "Preparing create request. Account: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v24 = v18;
    a2 = v36;
    MEMORY[0x25308E2B0](v24, -1, -1);
    v25 = v16;
    v3 = v32;
    MEMORY[0x25308E2B0](v25, -1, -1);
  }

  v26 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v11 + v26, v33);
  v27 = v34;
  v28 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  sub_251BBBD38(v27, v28, a2);
  if (!v3)
  {
    sub_251AB2CCC();
    *(a2 + *(v29 + 48)) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_251B25430(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_251C6F9A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_251AB31B0();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B25AE8();
  v16 = *(v15 - 8);
  v37 = v15;
  v38 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v35 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B25C68(0);
  v20 = *(v19 - 8);
  v39 = v19;
  v40 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v36 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_251C66E04(a1, a2, 3, a3);
  (*(v7 + 16))(&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = swift_allocObject();
  (*(v7 + 32))(v24 + v23, &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_251AB354C;
  *(v25 + 24) = v24;
  sub_251B25B84(0, &qword_27F479470, &qword_27F479478, &qword_27F479480, 0x277CCAD28);
  sub_251AB3264(0, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
  sub_251AB32E4();
  sub_251C70B54();

  sub_251B25DF0(&qword_27F4794B8, sub_251AB31B0);
  v26 = sub_251C70A94();
  (*(v11 + 8))(v14, v10);
  v41 = v26;
  sub_251B25B84(0, &qword_27F4794A8, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
  sub_251B25C00();
  sub_251AB34D4();
  v27 = v35;
  sub_251C70B54();

  sub_251C70964();
  type metadata accessor for ClinicalSharingSyncContext();
  v28 = MEMORY[0x277CBCD88];
  sub_251AFD990(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
  sub_251B25DF0(&qword_27F47A148, sub_251B25AE8);
  sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v28);
  v30 = v36;
  v29 = v37;
  sub_251C70B94();
  (*(v38 + 8))(v27, v29);
  sub_251B25DF0(&qword_27F47A150, sub_251B25C68);
  v31 = v39;
  v32 = sub_251C70A94();
  (*(v40 + 8))(v30, v31);
  return v32;
}

unint64_t sub_251B259D8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_251B25E38(*(a1 + 16), *(a1 + 24));
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_251B25A10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_251B26DF8(a1[1], a1[2]);
  result = sub_251B265A4();
  *a2 = result;
  return result;
}

uint64_t sub_251B25A48@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2], a1[3]);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = v8;
  }

  return result;
}

uint64_t sub_251B25A98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  sub_251AB2CCC();
  result = v6(a1, *(a1 + *(v7 + 48)));
  *a2 = result;
  return result;
}

void sub_251B25AE8()
{
  if (!qword_27F47A130)
  {
    sub_251B25B84(255, &qword_27F4794A8, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
    sub_251B25C00();
    sub_251AB34D4();
    v0 = sub_251C708B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47A130);
    }
  }
}

void sub_251B25B84(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_251AB3264(255, a3, a4, a5);
    sub_251A82284();
    v6 = sub_251C70974();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_251B25C00()
{
  if (!qword_27F47A138)
  {
    type metadata accessor for ClinicalSharingSyncContext();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47A138);
    }
  }
}

void sub_251B25CA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    v9 = MEMORY[0x277CBCD88];
    sub_251AFD990(255, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    a3(255);
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v9);
    sub_251B25DF0(a4, a5);
    v10 = sub_251C708D4();
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_251B25DAC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(*a1, a1[1], a1[2], a1[3]);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v8;
    a2[2] = v9;
    a2[3] = v10;
  }

  return result;
}

uint64_t sub_251B25DF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_251B25E38(void *a1, unint64_t a2)
{
  sub_251B264EC(0, &qword_2813E7520, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v40 - v7;
  v9 = sub_251C70EE4();
  v10 = [a1 valueForHTTPHeaderField_];

  if (!v10)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v23 = sub_251C70764();
    __swift_project_value_buffer(v23, qword_2813E8130);

    v24 = sub_251C70744();
    v25 = sub_251C713D4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42 = v27;
      *v26 = 136315138;
      sub_251C70074();
      sub_251B25DF0(&qword_27F479418, MEMORY[0x277CC95F0]);
      v28 = sub_251C719A4();
      a2 = v29;
      v30 = sub_251B10780(v28, v29, &v42);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_251A6C000, v24, v25, "No Location header found while creating DocRef. Account: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x25308E2B0](v27, -1, -1);
      MEMORY[0x25308E2B0](v26, -1, -1);
    }

    sub_251B26550();
    swift_allocError();
    v22 = 1;
    goto LABEL_13;
  }

  sub_251C70F14();

  sub_251C6FE54();

  v11 = sub_251C6FE64();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_251AF3ADC(v8);
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v13 = sub_251C70764();
    __swift_project_value_buffer(v13, qword_2813E8130);

    v14 = sub_251C70744();
    v15 = sub_251C713D4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v42 = v17;
      *v16 = 136315138;
      sub_251C70074();
      sub_251B25DF0(&qword_27F479418, MEMORY[0x277CC95F0]);
      v18 = sub_251C719A4();
      a2 = v19;
      v20 = sub_251B10780(v18, v19, &v42);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_251A6C000, v14, v15, "Could not parse location url from header while creating DocRef. Account: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x25308E2B0](v17, -1, -1);
      MEMORY[0x25308E2B0](v16, -1, -1);
    }

    sub_251B26550();
    swift_allocError();
    v22 = 2;
LABEL_13:
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *v21 = v22;
    *(v21 + 24) = 3;
    swift_willThrow();
    return a2;
  }

  sub_251C15DC8();
  if (v2)
  {
    (*(v12 + 8))(v8, v11);
  }

  else
  {
    (*(v12 + 8))(v8, v11);
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v32 = sub_251C70764();
    __swift_project_value_buffer(v32, qword_2813E8130);

    v33 = sub_251C70744();
    v34 = sub_251C713C4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = v41;
      *v35 = 136315138;
      sub_251C70074();
      sub_251B25DF0(&qword_27F479418, MEMORY[0x277CC95F0]);
      v36 = sub_251C719A4();
      v38 = sub_251B10780(v36, v37, &v42);

      *(v35 + 4) = v38;
      _os_log_impl(&dword_251A6C000, v33, v34, "Successfully created DocRef. Account: %s", v35, 0xCu);
      v39 = v41;
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x25308E2B0](v39, -1, -1);
      MEMORY[0x25308E2B0](v35, -1, -1);
    }
  }

  return a2;
}

void sub_251B264EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251B26550()
{
  result = qword_27F47A158;
  if (!qword_27F47A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47A158);
  }

  return result;
}

uint64_t sub_251B265A4()
{
  v1 = v0;
  v2 = sub_251C70074();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v45 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B28C98();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v6);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B2916C(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v16 = sub_251C70764();
  __swift_project_value_buffer(v16, qword_2813E8130);

  v17 = sub_251C70744();
  v18 = sub_251C713C4();

  v19 = os_log_type_enabled(v17, v18);
  v47 = v2;
  v48 = v15;
  v46 = v3;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v62[0] = v21;
    *v20 = 136315138;
    sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0]);
    v22 = sub_251C719A4();
    v24 = sub_251B10780(v22, v23, v62);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_251A6C000, v17, v18, "Updating syncSuccessful info. Account: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x25308E2B0](v21, -1, -1);
    MEMORY[0x25308E2B0](v20, -1, -1);
  }

  v25 = v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode;
  v26 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 16);
  v62[0] = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode);
  v27 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 48);
  v63 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 64);
  v62[2] = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 32);
  v62[3] = v27;
  v28 = *(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 80);
  v64 = v28;
  v62[1] = v26;
  v29 = *&v62[0];
  v30 = *(&v63 + 1);
  v31 = v63;
  if (*&v62[0])
  {
  }

  v54 = v29;
  v32 = *(v25 + 24);
  v55 = *(v25 + 8);
  v56 = v32;
  v57 = *(v25 + 40);
  v58 = *(v25 + 56);
  v59 = v31;
  v60 = v30;
  v61 = v28;
  sub_251B29234(v62, v53, sub_251B28E04);
  sub_251B2929C(&v54, sub_251B28E04);
  v33 = v48;
  sub_251BEDEC4(v48);

  sub_251A823B4(v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountStore, v53);
  v34 = __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  v36 = v45;
  v35 = v46;
  v37 = v47;
  (*(v46 + 16))(v45, v1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v47);
  if (*(v1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_firstTimeShare) == 1)
  {
    sub_251B28ED0(v33, v13, &qword_2813E7500, MEMORY[0x277CC9578]);
  }

  else
  {
    v38 = sub_251C70014();
    (*(*(v38 - 8) + 56))(v13, 1, 1, v38);
  }

  v39 = sub_251AC44F0(v36, v13, v33, *v34);
  v40 = MEMORY[0x277CC9578];
  sub_251B28E54(v13, &qword_2813E7500, MEMORY[0x277CC9578]);
  (*(v35 + 8))(v36, v37);
  v52 = v39;
  sub_251B28D44();
  type metadata accessor for ClinicalSharingSyncContext();
  sub_251B28DBC(&qword_2813E20D8, sub_251B28D44);

  v41 = v49;
  sub_251C70AE4();

  __swift_destroy_boxed_opaque_existential_1(v53);
  sub_251B28DBC(&qword_27F47A168, sub_251B28C98);
  v42 = v51;
  v43 = sub_251C70A94();
  (*(v50 + 8))(v41, v42);
  sub_251B28E54(v33, &qword_2813E7500, v40);
  return v43;
}

void sub_251B26C14(void *a1)
{
  v2 = v1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v4 = sub_251C70764();
  __swift_project_value_buffer(v4, qword_2813E8130);

  v5 = sub_251C70744();
  v6 = sub_251C713C4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    sub_251C70074();
    sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0]);
    v9 = sub_251C719A4();
    v11 = sub_251B10780(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_251A6C000, v5, v6, "Updating error info. Account: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25308E2B0](v8, -1, -1);
    MEMORY[0x25308E2B0](v7, -1, -1);
  }

  v12 = *(v1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error);
  *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error) = a1;
  v13 = a1;
}

uint64_t sub_251B26DF8(uint64_t a1, uint64_t a2)
{
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v5 = sub_251C70764();
  __swift_project_value_buffer(v5, qword_2813E8130);

  v6 = sub_251C70744();
  v7 = sub_251C713C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315138;
    sub_251C70074();
    sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0]);
    v10 = sub_251C719A4();
    v12 = sub_251B10780(v10, v11, v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_251A6C000, v6, v7, "Updating resource ID. Account: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x25308E2B0](v9, -1, -1);
    MEMORY[0x25308E2B0](v8, -1, -1);
  }

  v13 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v2 + v13, v18);
  v14 = v19;
  v15 = v20;
  __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  v16 = *(v15 + 24);

  v16(a1, a2, v14, v15);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v2 + v13), v18);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_251B27054(uint64_t a1)
{
  v3 = v1;
  v5 = *(a1 + 48);
  v64 = *(a1 + 32);
  v65 = v5;
  v66 = *(a1 + 64);
  v67 = *(a1 + 80);
  v6 = *(a1 + 16);
  v62 = *a1;
  v63 = v6;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v7 = sub_251C70764();
  __swift_project_value_buffer(v7, qword_2813E8130);

  v8 = sub_251C70744();
  v9 = sub_251C713C4();

  v68 = v2;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v55[0] = v11;
    *v10 = 136315138;
    sub_251C70074();
    sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0]);
    v12 = sub_251C719A4();
    v14 = sub_251B10780(v12, v13, v55);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_251A6C000, v8, v9, "Updating root node. Account: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x25308E2B0](v11, -1, -1);
    MEMORY[0x25308E2B0](v10, -1, -1);
  }

  v15 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v3 + v15, v56);
  sub_251AA98B0(0, &qword_27F47A178);
  if (swift_dynamicCast())
  {
    v59 = v55[0];
    v60 = v55[1];
    v61 = v55[2];
    v57 = v55[5];
    v58 = v55[6];
    v16 = *(v3 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus);
    if ([v16 userStatus] == 4)
    {
    }

    else
    {
      v22 = [v16 userStatus];

      if (v22 != 5)
      {
        v23 = *(a1 + 48);
        v24 = *(a1 + 56);

        goto LABEL_14;
      }
    }

    v23 = 0;
    v24 = 0;
LABEL_14:

    v26 = *(a1 + 16);
    v25 = *(a1 + 24);

    v27 = v3 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode;
    v28 = *(v3 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 48);
    v39[2] = *(v3 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 32);
    v39[3] = v28;
    v39[4] = *(v3 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 64);
    v40 = *(v3 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 80);
    v29 = *(v3 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 16);
    v39[0] = *(v3 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode);
    v39[1] = v29;
    v30 = v65;
    *(v27 + 32) = v64;
    *(v27 + 48) = v30;
    *(v27 + 64) = v66;
    *(v27 + 80) = v67;
    v31 = v63;
    *v27 = v62;
    *(v27 + 16) = v31;
    sub_251B29390(a1, v48);
    sub_251B2929C(v39, sub_251B28E04);
    v41 = v59;
    v42 = v60;
    v43 = v61;
    *&v44 = v23;
    *(&v44 + 1) = v24;
    *&v45 = v26;
    *(&v45 + 1) = v25;
    v46 = v57;
    v47 = v58;
    v37 = &type metadata for ClinicalSharingDocumentReferenceForLookupInfo;
    v38 = &off_2863F9CD8;
    v32 = swift_allocObject();
    *&v36 = v32;
    v33 = v46;
    v32[5] = v45;
    v32[6] = v33;
    v32[7] = v47;
    v34 = v42;
    v32[1] = v41;
    v32[2] = v34;
    v35 = v44;
    v32[3] = v43;
    v32[4] = v35;
    swift_beginAccess();
    sub_251B293EC(&v41, v48);
    __swift_destroy_boxed_opaque_existential_1((v3 + v15));
    sub_251A7E8D8(&v36, v3 + v15);
    swift_endAccess();
    v48[0] = v59;
    v48[1] = v60;
    v48[2] = v61;
    v49 = v23;
    v50 = v24;
    v51 = v26;
    v52 = v25;
    v53 = v57;
    v54 = v58;
    return sub_251B29448(v48);
  }

  v17 = sub_251C70744();
  v18 = sub_251C713D4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_251A6C000, v17, v18, "Attempting to update rootNodeInfo when docRefInfo is not for lookupInfo", v19, 2u);
    MEMORY[0x25308E2B0](v19, -1, -1);
  }

  sub_251A82AF0();
  swift_allocError();
  *v20 = xmmword_251C78750;
  *(v20 + 16) = 4;
  return swift_willThrow();
}

uint64_t sub_251B27540(uint64_t a1, uint64_t a2)
{
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v5 = sub_251C70764();
  __swift_project_value_buffer(v5, qword_2813E8130);

  v6 = sub_251C70744();
  v7 = sub_251C713C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    sub_251C70074();
    sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0]);
    v10 = sub_251C719A4();
    v12 = sub_251B10780(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_251A6C000, v6, v7, "Updating access token. Account: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x25308E2B0](v9, -1, -1);
    MEMORY[0x25308E2B0](v8, -1, -1);
  }

  v13 = (v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accessToken);
  v14 = *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accessToken + 8);
  *v13 = a1;
  v13[1] = a2;
}

uint64_t sub_251B27734(uint64_t a1, uint64_t a2)
{
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v5 = sub_251C70764();
  __swift_project_value_buffer(v5, qword_2813E8130);

  v6 = sub_251C70744();
  v7 = sub_251C713C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315138;
    sub_251C70074();
    sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0]);
    v10 = sub_251C719A4();
    v12 = sub_251B10780(v10, v11, v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_251A6C000, v6, v7, "Updating eTag. Account: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x25308E2B0](v9, -1, -1);
    MEMORY[0x25308E2B0](v8, -1, -1);
  }

  v13 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v2 + v13, v18);
  v14 = v19;
  v15 = v20;
  __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  v16 = *(v15 + 48);

  v16(a1, a2, v14, v15);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v2 + v13), v18);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_251B27990(uint64_t a1)
{
  v2 = v1;
  sub_251B28C98();
  v92 = *(v4 - 8);
  v93 = v4;
  v5 = *(v92 + 64);
  MEMORY[0x28223BE20](v4);
  v91 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_251B2916C(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v87 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v88 = &v85 - v12;
  sub_251B2916C(0, &qword_27F47A170, type metadata accessor for PBLookupInfo, v7);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v85 - v15;
  v90 = type metadata accessor for PBLookupInfo(0);
  v17 = *(v90 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v90);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v89 = (&v85 - v22);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v23 = sub_251C70764();
  v24 = __swift_project_value_buffer(v23, qword_2813E8130);

  v25 = sub_251C70744();
  v26 = sub_251C713C4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v85 = a1;
    v28 = v27;
    v29 = swift_slowAlloc();
    v94[0] = v29;
    *v28 = 136315138;
    sub_251C70074();
    v86 = v24;
    sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0]);
    v30 = sub_251C719A4();
    v32 = sub_251B10780(v30, v31, v94);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_251A6C000, v25, v26, "Updating multi device info. Account: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x25308E2B0](v29, -1, -1);
    v33 = v28;
    a1 = v85;
    MEMORY[0x25308E2B0](v33, -1, -1);
  }

  v86 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus;
  v34 = [*(v1 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus) multiDeviceStatus];
  sub_251B28ED0(a1, v16, &qword_27F47A170, type metadata accessor for PBLookupInfo);
  if ((*(v17 + 48))(v16, 1, v90) == 1)
  {
    sub_251B28E54(v16, &qword_27F47A170, type metadata accessor for PBLookupInfo);
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v37 = v89;
    sub_251B291D0(v16, v89);
    sub_251B29234(v37, v21, type metadata accessor for PBLookupInfo);
    v39 = *(v21 + 8);
    v38 = *(v21 + 9);
    v41 = *(v21 + 10);
    v40 = *(v21 + 11);
    v42 = *(v21 + 24);

    v43 = v21;
    v44 = v37;
    sub_251B2929C(v43, type metadata accessor for PBLookupInfo);
    v45 = (v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo);
    v46 = *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo);
    v47 = *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8);
    v48 = *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 16);
    v49 = *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 24);
    v50 = *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 32);
    *v45 = v39;
    v45[1] = v38;
    v45[2] = v41;
    v45[3] = v40;
    v45[4] = v42;
    sub_251B220A8(v46, v47);
    v51 = v37[6];
    v52 = v37[7];
    if (qword_27F478930 != -1)
    {
      v83 = v37[6];
      v84 = v37[7];
      swift_once();
    }

    v53 = qword_27F4A2878;
    v54 = sub_251C70EE4();
    v55 = [v53 dateFromString_];

    if (v55)
    {
      v56 = v87;
      sub_251C6FFE4();

      v57 = 0;
    }

    else
    {
      v57 = 1;
      v56 = v87;
    }

    v58 = sub_251C70014();
    v34 = 1;
    (*(*(v58 - 8) + 56))(v56, v57, 1, v58);
    v59 = v56;
    v60 = v88;
    sub_251AC55A0(v59, v88);
    v61 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_lastSync;
    swift_beginAccess();
    sub_251B292FC(v60, v2 + v61);
    swift_endAccess();
    if (v37[8] != *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID) || v37[9] != *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID + 8))
    {
      if (sub_251C719D4())
      {
        v34 = 1;
      }

      else
      {
        v34 = 2;
      }
    }

    v35 = v37[10];
    v36 = *(v44 + 88);
    v62 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v62 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v62)
    {
      v63 = *(v44 + 88);
    }

    else
    {
      v35 = 0;
      v36 = 0;
    }

    sub_251B2929C(v44, type metadata accessor for PBLookupInfo);
  }

  v64 = sub_251C70744();
  v65 = sub_251C713C4();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v90 = v34;
    v69 = v68;
    v94[0] = v68;
    *v66 = 136315394;
    sub_251C70074();
    v89 = v35;
    sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0]);
    v70 = sub_251C719A4();
    v72 = sub_251B10780(v70, v71, v94);

    *(v66 + 4) = v72;
    v35 = v89;
    *(v66 + 12) = 2112;
    v73 = *(v2 + v86);
    *(v66 + 14) = v73;
    *v67 = v73;
    v74 = v73;
    _os_log_impl(&dword_251A6C000, v64, v65, "Updated multi device info. Account: %s HKClinicalSharingStatus: %@", v66, 0x16u);
    sub_251B28E54(v67, &qword_2813E1D10, sub_251B1B1EC);
    MEMORY[0x25308E2B0](v67, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v69);
    MEMORY[0x25308E2B0](v69, -1, -1);
    MEMORY[0x25308E2B0](v66, -1, -1);
  }

  v75 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountStore), *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountStore + 24));
  v76 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID;
  v77 = sub_251C712A4();
  v78 = sub_251AC4148(v2 + v76, v77, v35, v36, *v75);

  v94[0] = v78;
  sub_251B28D44();
  type metadata accessor for ClinicalSharingSyncContext();
  sub_251B28DBC(&qword_2813E20D8, sub_251B28D44);

  v79 = v91;
  sub_251C70AE4();

  sub_251B28DBC(&qword_27F47A168, sub_251B28C98);
  v80 = v93;
  v81 = sub_251C70A94();
  (*(v92 + 8))(v79, v80);
  return v81;
}

uint64_t sub_251B2835C(uint64_t a1)
{
  v2 = v1;
  sub_251B2916C(0, &qword_27F479400, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCE78]);
  v5 = v4;
  v56 = *(v4 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v56 - v7;
  sub_251B28C18();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B28C98();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus);
  if ([v19 userStatus] == 4)
  {
  }

  else
  {
    v20 = v15;
    v21 = [v19 userStatus];

    v22 = v21 == 5;
    v15 = v20;
    if (!v22)
    {
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v50 = sub_251C70764();
      __swift_project_value_buffer(v50, qword_2813E8130);

      v29 = sub_251C70744();
      v30 = sub_251C713C4();

      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_26;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v59 = v32;
      *v31 = 136315138;
      sub_251C70074();
      sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0]);
      v51 = sub_251C719A4();
      v53 = sub_251B10780(v51, v52, &v59);

      *(v31 + 4) = v53;
      v36 = "User status does not need to be updated. Account: %s";
      goto LABEL_25;
    }
  }

  v23 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID;
  if (*(a1 + 16) && (v24 = sub_251AC8AFC(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID), (v25 & 1) != 0))
  {
    v26 = *(*(a1 + 56) + 8 * v24);
  }

  else
  {
    v27 = 0;
  }

  if (*(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error))
  {
    if (v27)
    {

      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v28 = sub_251C70764();
      __swift_project_value_buffer(v28, qword_2813E8130);

      v29 = sub_251C70744();
      v30 = sub_251C713C4();

      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_26;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v59 = v32;
      *v31 = 136315138;
      sub_251C70074();
      sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0]);
      v33 = sub_251C719A4();
      v35 = sub_251B10780(v33, v34, &v59);

      *(v31 + 4) = v35;
      v36 = "User status not updated to revoked due to failed sync. Account: %s";
LABEL_25:
      _os_log_impl(&dword_251A6C000, v29, v30, v36, v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x25308E2B0](v32, -1, -1);
      MEMORY[0x25308E2B0](v31, -1, -1);
LABEL_26:

      v59 = v2;
      type metadata accessor for ClinicalSharingSyncContext();

      sub_251C70A24();
      sub_251AA98B0(0, &qword_2813E1C30);
      sub_251C709F4();
      (*(v56 + 8))(v8, v5);
      sub_251B28DBC(&qword_27F479410, sub_251B28C18);
      v54 = v58;
      v49 = sub_251C70A94();
      (*(v57 + 8))(v12, v54);
      return v49;
    }
  }

  else
  {
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v37 = sub_251C70764();
  __swift_project_value_buffer(v37, qword_2813E8130);

  v38 = sub_251C70744();
  v39 = sub_251C713C4();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v59 = v41;
    *v40 = 136315138;
    sub_251C70074();
    v58 = v14;
    v42 = v23;
    sub_251B28DBC(&qword_27F479418, MEMORY[0x277CC95F0]);
    v43 = sub_251C719A4();
    v45 = sub_251B10780(v43, v44, &v59);

    *(v40 + 4) = v45;
    v23 = v42;
    v14 = v58;
    _os_log_impl(&dword_251A6C000, v38, v39, "Updating User status to revoked. Account: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x25308E2B0](v41, -1, -1);
    MEMORY[0x25308E2B0](v40, -1, -1);
  }

  v46 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountStore), *(v2 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountStore + 24));
  v47 = sub_251C712A4();
  v48 = sub_251AC4D54(v2 + v23, v47, *v46);

  v59 = v48;
  sub_251B28D44();
  type metadata accessor for ClinicalSharingSyncContext();
  sub_251B28DBC(&qword_2813E20D8, sub_251B28D44);

  sub_251C70AE4();

  sub_251B28DBC(&qword_27F47A168, sub_251B28C98);
  v49 = sub_251C70A94();
  (*(v15 + 8))(v18, v14);
  return v49;
}

void sub_251B28C18()
{
  if (!qword_27F479408)
  {
    type metadata accessor for ClinicalSharingSyncContext();
    sub_251AA98B0(255, &qword_2813E1C30);
    v0 = sub_251C71AF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479408);
    }
  }
}

void sub_251B28C98()
{
  if (!qword_27F47A160)
  {
    sub_251B28D44();
    type metadata accessor for ClinicalSharingSyncContext();
    sub_251B28DBC(&qword_2813E20D8, sub_251B28D44);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47A160);
    }
  }
}