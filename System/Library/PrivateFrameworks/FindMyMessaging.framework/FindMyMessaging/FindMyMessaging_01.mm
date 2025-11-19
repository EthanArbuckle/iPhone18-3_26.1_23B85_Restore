uint64_t sub_24AEE37B0()
{
  v1 = *(v0 + 48);
  if (*(v0 + 56))
  {
    v2 = *(v0 + 240);
    v3 = *(v0 + 232);
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 120);
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);

    (*(v2 + 8))(v7, v3);
    (*(v5 + 8))(v4, v6);
LABEL_5:
    v21 = *(v0 + 224);
    v22 = *(v0 + 192);
    v23 = *(v0 + 200);
    v24 = *(v0 + 160);
    v25 = *(v0 + 136);
    v26 = *(v0 + 112);

    v27 = *(v0 + 8);
    v28 = *(v0 + 104);

    return v27(v28);
  }

  if (v1 == 3)
  {
    v9 = *(v0 + 248);
    v10 = *(v0 + 256);
    v11 = *(v0 + 240);
    v12 = *(v0 + 128);
    v47 = *(v0 + 136);
    v13 = *(v0 + 112);
    v45 = *(v0 + 232);
    v46 = *(v0 + 120);
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    v16 = *(v0 + 88);
    v17 = sub_24AF3557C();
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = v14;
    v18[3] = v10;
    v18[4] = v14;
    swift_retain_n();
    v19 = sub_24AF255AC(0, 0, v13, &unk_24AF37D90, v18);

    (*(v11 + 8))(v15, v45);
    (*(v12 + 8))(v47, v46);
    v20 = *(v14 + OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_receiveTask);
    *(v14 + OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_receiveTask) = v19;

    goto LABEL_5;
  }

  if (qword_27EFC06F8 != -1)
  {
    swift_once();
  }

  v30 = sub_24AF3529C();
  __swift_project_value_buffer(v30, qword_27EFC0828);
  v31 = sub_24AF3527C();
  v32 = sub_24AF3570C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *(v0 + 72) = v34;
    *v33 = 136446210;
    if (v1 <= 1)
    {
      if (!v1)
      {
        v36 = 0xE800000000000000;
        v35 = 0x64696C61766E692ELL;
        goto LABEL_23;
      }

      if (v1 == 1)
      {
        v36 = 0xE800000000000000;
        v35 = 0x676E69746961772ELL;
        goto LABEL_23;
      }
    }

    else
    {
      switch(v1)
      {
        case 2:
          v36 = 0xEA0000000000676ELL;
          v35 = 0x697261706572702ELL;
          goto LABEL_23;
        case 4:
          v36 = 0xE700000000000000;
          v35 = 0x64656C6961662ELL;
          goto LABEL_23;
        case 5:
          v35 = 0x6C6C65636E61632ELL;
          v36 = 0xEA00000000006465;
LABEL_23:
          v38 = sub_24AEF599C(v35, v36, (v0 + 72));

          *(v33 + 4) = v38;
          _os_log_impl(&dword_24AECF000, v31, v32, "SessionMessagingDatagramConnection connection state is %{public}s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v34);
          MEMORY[0x24C236490](v34, -1, -1);
          MEMORY[0x24C236490](v33, -1, -1);
          goto LABEL_24;
      }
    }

    *(v0 + 32) = 0x4E574F4E4B4E553CLL;
    *(v0 + 40) = 0xEA00000000002820;
    *(v0 + 80) = v1;
    v37 = sub_24AF35C0C();
    MEMORY[0x24C235440](v37);

    MEMORY[0x24C235440](15913, 0xE200000000000000);
    v35 = *(v0 + 32);
    v36 = *(v0 + 40);
    goto LABEL_23;
  }

LABEL_24:

  v39 = *(v0 + 256);
  v40 = *(v0 + 104);
  v41 = *(MEMORY[0x277D85798] + 4);

  v42 = swift_task_alloc();
  *(v0 + 264) = v42;
  *v42 = v0;
  v42[1] = sub_24AEE366C;
  v43 = *(v0 + 136);
  v44 = *(v0 + 120);

  return MEMORY[0x2822003E8](v0 + 48, v40, v39, v44);
}

uint64_t sub_24AEE3C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08D0, &qword_24AF37D98);
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_packetContinuation;
  v4[8] = v9;
  v4[9] = v10;

  return MEMORY[0x2822009F8](sub_24AEE3D64, a4, 0);
}

uint64_t sub_24AEE3D64()
{
  sub_24AF3563C();
  v1 = *(v0 + 40);
  v2 = sub_24AEE5404();
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08D8, &qword_24AF37DA0);
  *v4 = v0;
  v4[1] = sub_24AEE3EEC;
  v6 = *(v0 + 40);

  return MEMORY[0x2822008A0](v0 + 32, v1, v2, 0x6B63615064616572, 0xED00002928737465, sub_24AEE5650, v6, v5);
}

uint64_t sub_24AEE3EEC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_24AEE4144;
  }

  else
  {
    v6 = sub_24AEE4018;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AEE4018()
{
  v11 = *(v0 + 32);
  v1 = *(v11 + 16);
  if (v1)
  {
    v2 = (v11 + 32);
    do
    {
      v4 = *(v0 + 64);
      v3 = *(v0 + 72);
      v6 = *(v0 + 48);
      v5 = *(v0 + 56);
      v7 = *(v0 + 40);
      v8 = *v2++;
      *(v0 + 16) = v8;
      sub_24AEE5154(v8, *(&v8 + 1));
      sub_24AEE5154(v8, *(&v8 + 1));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D00, &qword_24AF37D08);
      sub_24AF355CC();
      sub_24AED6198(v8, *(&v8 + 1));
      (*(v5 + 8))(v4, v6);
      --v1;
    }

    while (v1);
  }

  v9 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24AEE41E0, v9, 0);
}

uint64_t sub_24AEE4144()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D00, &qword_24AF37D08);
  sub_24AF355DC();

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AEE41E0()
{
  v1 = v0[11];
  sub_24AF3563C();
  if (v1)
  {
    v2 = v0[8];
    v3 = v0[9];
    v4 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D00, &qword_24AF37D08);
    sub_24AF355DC();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[5];
    v8 = sub_24AEE5404();
    v9 = *(MEMORY[0x277D85A40] + 4);
    v10 = swift_task_alloc();
    v0[10] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08D8, &qword_24AF37DA0);
    *v10 = v0;
    v10[1] = sub_24AEE3EEC;
    v12 = v0[5];

    return MEMORY[0x2822008A0](v0 + 4, v7, v8, 0x6B63615064616572, 0xED00002928737465, sub_24AEE5650, v12, v11);
  }
}

void sub_24AEE4368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08E0, &qword_24AF37DA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 112);
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_24AEE56DC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AEE46D0;
  aBlock[3] = &block_descriptor_29;
  v12 = _Block_copy(aBlock);

  [v9 readDatagramsWithMinimumCount:1 maximumCount:1 completionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_24AEE4524(int a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_27EFC0710 != -1)
    {
      swift_once();
    }

    v4 = sub_24AF3529C();
    __swift_project_value_buffer(v4, qword_27EFC4BD0);
    v5 = a2;
    v6 = sub_24AF3527C();
    v7 = sub_24AF3570C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_24AECF000, v6, v7, "MessagingDatagramConnection read error: %{public}@", v8, 0xCu);
      sub_24AEE5304(v9);
      MEMORY[0x24C236490](v9, -1, -1);
      MEMORY[0x24C236490](v8, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08E0, &qword_24AF37DA8);
    return sub_24AF3552C();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08E0, &qword_24AF37DA8);
    return sub_24AF3553C();
  }
}

void sub_24AEE46D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_24AF3549C();

  v7 = a3;
  v5(v6, a3);
}

void sub_24AEE4760(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0C40, &qword_24AF37D10);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  v13 = *(a2 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A0, &qword_24AF37D18);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24AF37AB0;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  sub_24AEE5154(a3, a4);
  v15 = sub_24AF3548C();

  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v12, v8);
  aBlock[4] = sub_24AEE51A8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AEE4B24;
  aBlock[3] = &block_descriptor_0;
  v18 = _Block_copy(aBlock);

  [v13 writeDatagrams:v15 completionHandler:v18];
  _Block_release(v18);
}

uint64_t sub_24AEE4988(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27EFC0710 != -1)
    {
      swift_once();
    }

    v3 = sub_24AF3529C();
    __swift_project_value_buffer(v3, qword_27EFC4BD0);
    v4 = a1;
    v5 = sub_24AF3527C();
    v6 = sub_24AF3570C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_24AECF000, v5, v6, "MessagingDatagramConnection send error: %{public}@", v7, 0xCu);
      sub_24AEE5304(v8);
      MEMORY[0x24C236490](v8, -1, -1);
      MEMORY[0x24C236490](v7, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0C40, &qword_24AF37D10);
    return sub_24AF3552C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0C40, &qword_24AF37D10);
    return sub_24AF3553C();
  }
}

void sub_24AEE4B24(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_24AEE4B90()
{
  v1 = OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_receiveTask;
  if (*(v0 + OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_receiveTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_receiveTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0898, &qword_24AF37D00);
    sub_24AF3562C();

    v3 = *(v0 + v1);
  }

  *(v0 + v1) = 0;

  [*(v0 + 112) cancel];

  v4 = OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_packetContinuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D00, &qword_24AF37D08);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24AEE4C94()
{
  sub_24AEE4B90();

  return MEMORY[0x282200960](v0);
}

void sub_24AEE4CE8()
{
  sub_24AEE4D98();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_24AEE4D98()
{
  if (!qword_27EFC0C50)
  {
    v0 = sub_24AF355EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC0C50);
    }
  }
}

uint64_t sub_24AEE4DE8(id *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08E8, &qword_24AF37DB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v8 - v5;
  v8[1] = [*a1 connectionState];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08C0, qword_24AF37D48);
  sub_24AF355CC();
  return (*(v3 + 8))(v6, v2);
}

id sub_24AEE4F24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KVOHelperNWDatagramConnection(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24AEE501C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AEE5054()
{
  sub_24AEE50FC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_24AEE50FC()
{
  if (!qword_27EFC0888)
  {
    type metadata accessor for NWConnectionState(255);
    v0 = sub_24AF3561C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC0888);
    }
  }
}

uint64_t sub_24AEE5154(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24AEE51A8(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0C40, &qword_24AF37D10) - 8) + 80);

  return sub_24AEE4988(a1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24AEE523C()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_27EFC0828);
  v1 = __swift_project_value_buffer(v0, qword_27EFC0828);
  if (qword_27EFC0710 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EFC4BD0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AEE5304(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D70, &qword_24AF37D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AEE5378(id *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08C0, qword_24AF37D48) - 8) + 80);

  return sub_24AEE4DE8(a1);
}

unint64_t sub_24AEE5404()
{
  result = qword_27EFC08C8;
  if (!qword_27EFC08C8)
  {
    type metadata accessor for SessionMessagingDatagramConnection(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC08C8);
  }

  return result;
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

uint64_t sub_24AEE54A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AEE555C;

  return sub_24AEE3C8C(a1, v4, v5, v6);
}

uint64_t sub_24AEE555C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_24AEE56DC(int a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08E0, &qword_24AF37DA8) - 8) + 80);

  return sub_24AEE4524(a1, a2);
}

uint64_t sub_24AEE5770(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_24AEF6128(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24AEF6128((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_24AEE2FBC(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_24AEE5870(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24AF3585C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_24AEF6128(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x24C2359A0](i, a1);
        sub_24AED0EAC(0, &qword_281392DB8, 0x277D186E0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_24AEF6128((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_24AEE2FBC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_24AED0EAC(0, &qword_281392DB8, 0x277D186E0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_24AEF6128((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_24AEE2FBC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AEE5A6C()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_281392F00);
  v1 = __swift_project_value_buffer(v0, qword_281392F00);
  if (qword_281392F38 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281393410);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AEE5B34()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  type metadata accessor for InternetMessaging();
  swift_getMetatypeMetadata();
  return sub_24AF353BC();
}

uint64_t InternetMessaging.serviceName.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t sub_24AEE5BA8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 184);
  v4 = *(v2 + 192);
  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  return sub_24AED56FC(v3);
}

uint64_t sub_24AEE5BBC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 200);
  v4 = *(v2 + 208);
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return sub_24AED56FC(v3);
}

uint64_t sub_24AEE5BD0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 216);
  v4 = *(v2 + 224);
  *(v2 + 216) = a1;
  *(v2 + 224) = a2;
  return sub_24AED56FC(v3);
}

uint64_t sub_24AEE5BE4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 232);
  v4 = *(v2 + 240);
  *(v2 + 232) = a1;
  *(v2 + 240) = a2;
  return sub_24AED56FC(v3);
}

uint64_t sub_24AEE5BF8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 248);
  v4 = *(v2 + 256);
  *(v2 + 248) = a1;
  *(v2 + 256) = a2;
  return sub_24AED56FC(v3);
}

uint64_t sub_24AEE5C0C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 264);
  v4 = *(v2 + 272);
  *(v2 + 264) = a1;
  *(v2 + 272) = a2;
  return sub_24AED56FC(v3);
}

uint64_t sub_24AEE5C20(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 280);
  v4 = *(v2 + 288);
  *(v2 + 280) = a1;
  *(v2 + 288) = a2;
  return sub_24AED56FC(v3);
}

uint64_t sub_24AEE5C34()
{
  sub_24AF3503C();
  if (!v30)
  {
    sub_24AEE2E10(&v28, &qword_27EFC0968, &qword_24AF381E8);
LABEL_13:
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v8 = sub_24AF3529C();
    __swift_project_value_buffer(v8, qword_281392F00);
    v9 = sub_24AF3527C();
    v10 = sub_24AF3571C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24AECF000, v9, v10, "Missing com.apple.private.ids.registration entitlement!", v11, 2u);
      MEMORY[0x24C236490](v11, -1, -1);
    }

    v26 = 0;
    v25 = 78;
    goto LABEL_35;
  }

  if ((swift_dynamicCast() & 1) == 0 || v27 != 1)
  {
    goto LABEL_13;
  }

  sub_24AF3503C();
  if ((swift_dynamicCast() & 1) == 0 || v27 != 1)
  {
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v12 = sub_24AF3529C();
    __swift_project_value_buffer(v12, qword_281392F00);
    v13 = sub_24AF3527C();
    v14 = sub_24AF3571C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24AECF000, v13, v14, "Missing com.apple.private.ids.remotecredentials entitlement!", v15, 2u);
      MEMORY[0x24C236490](v15, -1, -1);
    }

    v26 = 0;
    v25 = 84;
    goto LABEL_35;
  }

  sub_24AF3503C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0970, &qword_24AF381F0);
  v1 = swift_dynamicCast();
  if ((v1 & 1) == 0)
  {
    goto LABEL_24;
  }

  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v28 = v2;
  v29 = v3;
  MEMORY[0x28223BE20](v1);
  v25 = &v28;
  if ((sub_24AF13060(sub_24AEF9D80, v24, v27) & 1) == 0)
  {

LABEL_24:
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v16 = sub_24AF3529C();
    __swift_project_value_buffer(v16, qword_281392F00);
    v17 = sub_24AF3527C();
    v18 = sub_24AF3571C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24AECF000, v17, v18, "Missing com.apple.private.ids.messaging entitlement!", v19, 2u);
      MEMORY[0x24C236490](v19, -1, -1);
    }

    v26 = 0;
    v25 = 90;
    goto LABEL_35;
  }

  sub_24AF3503C();
  if (v30)
  {
    v4 = swift_dynamicCast();
    if (v4)
    {
      v5 = v27;
      v28 = v2;
      v29 = v3;
      MEMORY[0x28223BE20](v4);
      v25 = &v28;
      v6 = sub_24AF13060(sub_24AEF9DD4, v24, v5);

      if (v6)
      {
      }
    }
  }

  else
  {
    sub_24AEE2E10(&v28, &qword_27EFC0968, &qword_24AF381E8);
  }

  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v20 = sub_24AF3529C();
  __swift_project_value_buffer(v20, qword_281392F00);
  v21 = sub_24AF3527C();
  v22 = sub_24AF3571C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_24AECF000, v21, v22, "Missing com.apple.private.ids.messaging.urgent-priority entitlement!", v23, 2u);
    MEMORY[0x24C236490](v23, -1, -1);
  }

  v26 = 0;
  v25 = 96;
LABEL_35:
  result = sub_24AF35A3C();
  __break(1u);
  return result;
}

uint64_t InternetMessaging.__allocating_init(serviceName:crossAccount:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_24AEE6370;

  return InternetMessaging.__allocating_init(serviceName:linkSelectionStrategy:crossAccount:)(a1, a2, (v3 + 16), a3);
}

uint64_t sub_24AEE6370(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t InternetMessaging.__allocating_init(serviceName:linkSelectionStrategy:crossAccount:)(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AEE1D70;

  return InternetMessaging.init(serviceName:linkSelectionStrategy:crossAccount:)(a1, a2, a3, a4);
}

uint64_t InternetMessaging.init(serviceName:linkSelectionStrategy:crossAccount:)(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  *(v5 + 80) = a4;
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 16) = a1;
  *(v5 + 40) = *v4;
  v6 = *a3;
  *(v5 + 48) = *v4;
  *(v5 + 56) = v6;
  *(v5 + 81) = *(a3 + 8);
  return MEMORY[0x2822009F8](sub_24AEE65C0, 0, 0);
}

uint64_t sub_24AEE65C0()
{
  v1 = *(v0 + 81);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 80);
  v7 = *(v0 + 16);
  swift_defaultActor_initialize();
  *(v5 + 160) = 0;
  *(v5 + 168) = sub_24AEE263C(MEMORY[0x277D84F90]);
  v8 = sub_24AF3521C();
  *(v0 + 64) = *(v2 + 80);
  *(v0 + 72) = *(v2 + 88);
  type metadata accessor for Message();
  type metadata accessor for MessageContext();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0898, &qword_24AF37D00);
  v9 = sub_24AF3501C();
  swift_getTupleTypeMetadata2();
  v10 = sub_24AF354CC();
  v11 = sub_24AEF8F34(&qword_281393400, MEMORY[0x277CC95F0]);
  v12 = sub_24AEF6664(v10, v8, v9, v11);

  *(v5 + 184) = 0u;
  v5 += 184;
  *(v5 - 8) = v12;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 - 72) = v7;
  *(v5 - 64) = v4;
  *(v5 - 56) = v6;
  *(v5 - 40) = v3;
  *(v5 - 32) = v1;
  v13 = objc_allocWithZone(MEMORY[0x277D18778]);

  v14 = sub_24AF3539C();
  v15 = [v13 initWithService_];

  if (v15)
  {
    v19 = *(v0 + 24);
    v20 = *(v0 + 32);

    *(v20 + 136) = v15;
    v16 = sub_24AEE67E8;
    v17 = v20;
    v18 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_24AEE67E8()
{
  v25 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 81);
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = type metadata accessor for MessagingDelegateTrampoline();
  v23 = v4;
  v24 = v3;
  v7 = type metadata accessor for InternetMessaging();

  v9 = sub_24AF31908(v8, &v23, v6, v7, &off_285E3DA90);
  v10 = *(v5 + 160);
  *(v5 + 160) = v9;

  sub_24AEE5C34();
  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v11 = sub_24AF3529C();
  __swift_project_value_buffer(v11, qword_281392F00);
  v12 = sub_24AF3527C();
  v13 = sub_24AF3572C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 40);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446210;
    v17 = sub_24AEE5B34();
    v19 = sub_24AEF599C(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_24AECF000, v12, v13, "%{public}s: created.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C236490](v16, -1, -1);
    MEMORY[0x24C236490](v15, -1, -1);
  }

  v20 = *(v0 + 8);
  v21 = *(v0 + 32);

  return v20(v21);
}

void sub_24AEE69D4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_24AF352AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D18A20]) init];
  [v8 setWantsCrossAccountMessaging_];
  v9 = v1[17];
  v10 = v1[20];
  sub_24AED0EAC(0, &qword_281392DC0, 0x277D85C78);
  (*(v4 + 104))(v7, *MEMORY[0x277D851C8], v3);
  v11 = v8;
  v12 = v10;
  v13 = sub_24AF3576C();
  (*(v4 + 8))(v7, v3);
  [v9 addDelegate:v12 withDelegateProperties:v11 queue:v13];

  v14 = [v9 devices];
  if (v14)
  {
    v15 = v14;
    sub_24AED0EAC(0, &qword_281392DB8, 0x277D186E0);
    v16 = sub_24AF3549C();

    v17 = v1[20];
    if (v17)
    {
      v18 = v17;
      v19 = sub_24AEE5870(v16);

      sub_24AF2A794(v9, v19);
    }
  }

  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v20 = sub_24AF3529C();
  __swift_project_value_buffer(v20, qword_281392F00);
  v21 = sub_24AF3527C();
  v22 = sub_24AF3572C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136446210;
    v25 = sub_24AEE5B34();
    v27 = sub_24AEF599C(v25, v26, &v29);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_24AECF000, v21, v22, "%{public}s: started.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x24C236490](v24, -1, -1);
    MEMORY[0x24C236490](v23, -1, -1);
  }
}

void sub_24AEE6D34()
{
  v1 = v0;
  v34 = *v0;
  swift_beginAccess();
  v2 = v0[21];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v0[21];

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = *(*(v2 + 56) + ((v9 << 9) | (8 * v10)));
      sub_24AF3554C();
      sub_24AEF8F34(&qword_27EFC08F0, MEMORY[0x277D85678]);
      v12 = swift_allocError();

      sub_24AF352DC();
      v35[9] = v12;
      sub_24AF34FFC();

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  swift_beginAccess();
  v13 = v1[21];
  v1[21] = MEMORY[0x277D84F98];

  swift_beginAccess();
  v14 = v1[22];
  sub_24AF3521C();
  v15 = *(v34 + 80);
  v16 = *(v34 + 88);
  type metadata accessor for Message();
  type metadata accessor for MessageContext();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0898, &qword_24AF37D00);
  sub_24AF3501C();
  sub_24AEF8F34(&qword_281393400, MEMORY[0x277CC95F0]);
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 64);
  v20 = (v17 + 63) >> 6;

  v21 = 0;
  while (v19)
  {
    v22 = v21;
LABEL_19:
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v24 = *(*(v14 + 56) + ((v22 << 9) | (8 * v23)));
    sub_24AF3554C();
    sub_24AEF8F34(&qword_27EFC08F0, MEMORY[0x277D85678]);
    v25 = swift_allocError();

    sub_24AF352DC();
    v35[0] = v25;
    sub_24AF34FFC();
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v20)
    {

      swift_beginAccess();
      sub_24AF3532C();
      sub_24AF3531C();
      swift_endAccess();
      [v1[17] removeDelegate_];
      if (qword_281392EF8 != -1)
      {
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    v19 = *(v14 + 64 + 8 * v22);
    ++v21;
    if (v19)
    {
      v21 = v22;
      goto LABEL_19;
    }
  }

LABEL_26:
  __break(1u);
LABEL_27:
  swift_once();
LABEL_22:
  v26 = sub_24AF3529C();
  __swift_project_value_buffer(v26, qword_281392F00);
  v27 = sub_24AF3527C();
  v28 = sub_24AF3572C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35[0] = v30;
    *v29 = 136446210;
    v31 = sub_24AEE5B34();
    v33 = sub_24AEF599C(v31, v32, v35);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_24AECF000, v27, v28, "%{public}s: stopped.", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x24C236490](v30, -1, -1);
    MEMORY[0x24C236490](v29, -1, -1);
  }
}

void sub_24AEE7254(void *a1@<X8>)
{
  v3 = [*(v1 + 136) iCloudAccount];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 loginID];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = sub_24AF353AC();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    Destination.init(string:)(v10);
    v11 = v21;
    if (v22)
    {
      v17 = v20;
      v18 = v21;
      v19 = v22;
      sub_24AF11EE0(v14);

      v12 = v15;
      v13 = v16;
      *a1 = v14[0];
      a1[1] = v12;
      a1[2] = v13;
      return;
    }

    *a1 = v20;
    a1[1] = v11;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  a1[2] = 0;
}

void sub_24AEE7340(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 136);
  v4 = sub_24AF3539C();
  v5 = [v3 deviceForFromID_];

  if (v5)
  {
    sub_24AF329AC(v5, &v26);
    v22 = v32;
    v23 = v33;
    v24 = v34;
    v25 = v35;
    v18 = v28;
    v19 = v29;
    v20 = v30;
    v21 = v31;
    v16 = v26;
    v17 = v27;
    nullsub_1(&v16);
    v10 = v23;
    a1[6] = v22;
    a1[7] = v10;
    v11 = v25;
    a1[8] = v24;
    a1[9] = v11;
    v12 = v19;
    a1[2] = v18;
    a1[3] = v12;
    v13 = v21;
    a1[4] = v20;
    a1[5] = v13;
    v14 = v16;
    v15 = v17;
  }

  else
  {
    sub_24AEF6968(&v26);
    v6 = v33;
    a1[6] = v32;
    a1[7] = v6;
    v7 = v35;
    a1[8] = v34;
    a1[9] = v7;
    v8 = v29;
    a1[2] = v28;
    a1[3] = v8;
    v9 = v31;
    a1[4] = v30;
    a1[5] = v9;
    v14 = v26;
    v15 = v27;
  }

  *a1 = v14;
  a1[1] = v15;
}

void sub_24AEE7454(_OWORD *a1@<X8>)
{
  v2 = sub_24AEE7578();
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = 32;
    while (1)
    {
      v5 = *&v2[v4 + 16];
      v32 = *&v2[v4];
      v33 = v5;
      v6 = *&v2[v4 + 32];
      v7 = *&v2[v4 + 48];
      v8 = *&v2[v4 + 80];
      v36 = *&v2[v4 + 64];
      v37 = v8;
      v34 = v6;
      v35 = v7;
      v9 = *&v2[v4 + 96];
      v10 = *&v2[v4 + 112];
      v11 = *&v2[v4 + 144];
      v40 = *&v2[v4 + 128];
      v41 = v11;
      v38 = v9;
      v39 = v10;
      if (BYTE3(v40))
      {
        break;
      }

      v4 += 160;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_24AEF6984(&v32, &v22);

    v28 = v38;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v22 = v32;
    v23 = v33;
    nullsub_1(&v22);
    v18 = v29;
    a1[6] = v28;
    a1[7] = v18;
    v19 = v31;
    a1[8] = v30;
    a1[9] = v19;
    v20 = v25;
    a1[2] = v24;
    a1[3] = v20;
    v21 = v27;
    a1[4] = v26;
    a1[5] = v21;
    v16 = v22;
    v17 = v23;
  }

  else
  {
LABEL_5:

    sub_24AEF6968(&v32);
    v12 = v39;
    a1[6] = v38;
    a1[7] = v12;
    v13 = v41;
    a1[8] = v40;
    a1[9] = v13;
    v14 = v35;
    a1[2] = v34;
    a1[3] = v14;
    v15 = v37;
    a1[4] = v36;
    a1[5] = v15;
    v16 = v32;
    v17 = v33;
  }

  *a1 = v16;
  a1[1] = v17;
}

char *sub_24AEE7578()
{
  v0 = sub_24AEE790C();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_27:

    v5 = MEMORY[0x277D84F90];
    v17 = *(MEMORY[0x277D84F90] + 16);
    if (v17)
    {
LABEL_13:
      v18 = 0;
      v19 = MEMORY[0x277D84F90];
      do
      {
        v1 = v5 + 32 + 160 * v18;
        v20 = v18;
        while (1)
        {
          if (v20 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_26;
          }

          v21 = *(v1 + 16);
          v58 = *v1;
          v59 = v21;
          v22 = *(v1 + 32);
          v23 = *(v1 + 48);
          v24 = *(v1 + 80);
          v62 = *(v1 + 64);
          v63 = v24;
          v60 = v22;
          v61 = v23;
          v25 = *(v1 + 96);
          v26 = *(v1 + 112);
          v27 = *(v1 + 144);
          v66 = *(v1 + 128);
          v67 = v27;
          v64 = v25;
          v65 = v26;
          v18 = v20 + 1;
          memmove(&__dst, v1, 0xA0uLL);
          if (sub_24AEF69E0(&__dst) != 1)
          {
            break;
          }

          v1 += 160;
          ++v20;
          if (v17 == v18)
          {
            goto LABEL_29;
          }
        }

        v54 = v64;
        v55 = v65;
        v56 = v66;
        v57 = v67;
        v50 = v60;
        v51 = v61;
        v52 = v62;
        v53 = v63;
        v48 = v58;
        v49 = v59;
        sub_24AEF6984(&v48, &v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_24AEF543C(0, *(v19 + 2) + 1, 1, v19);
        }

        v29 = *(v19 + 2);
        v28 = *(v19 + 3);
        if (v29 >= v28 >> 1)
        {
          v19 = sub_24AEF543C((v28 > 1), v29 + 1, 1, v19);
        }

        v42 = v62;
        v43 = v63;
        v40 = v60;
        v41 = v61;
        v46 = v66;
        v47 = v67;
        v44 = v64;
        v45 = v65;
        v38 = v58;
        v39 = v59;
        *(v19 + 2) = v29 + 1;
        v30 = &v19[160 * v29];
        v31 = v39;
        *(v30 + 2) = v38;
        *(v30 + 3) = v31;
        v32 = v40;
        v33 = v41;
        v34 = v43;
        *(v30 + 6) = v42;
        *(v30 + 7) = v34;
        *(v30 + 4) = v32;
        *(v30 + 5) = v33;
        v35 = v44;
        v36 = v45;
        v37 = v47;
        *(v30 + 10) = v46;
        *(v30 + 11) = v37;
        *(v30 + 8) = v35;
        *(v30 + 9) = v36;
      }

      while (v17 - 1 != v20);
      goto LABEL_29;
    }

LABEL_28:
    v19 = MEMORY[0x277D84F90];
LABEL_29:

    return v19;
  }

LABEL_26:
  v2 = sub_24AF3585C();
  if (!v2)
  {
    goto LABEL_27;
  }

LABEL_3:
  *&v38 = MEMORY[0x277D84F90];
  result = sub_24AEF6168(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v38;
    if ((v1 & 0xC000000000000001) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    for (i = MEMORY[0x24C2359A0](v4, v1); ; i = *(v1 + 8 * v4 + 32))
    {
      sub_24AF329AC(i, &v58);
      v54 = v64;
      v55 = v65;
      v56 = v66;
      v57 = v67;
      v50 = v60;
      v51 = v61;
      v52 = v62;
      v53 = v63;
      v48 = v58;
      v49 = v59;
      nullsub_1(&v48);
      v74 = v54;
      v75 = v55;
      v76 = v56;
      v77 = v57;
      v70 = v50;
      v71 = v51;
      v72 = v52;
      v73 = v53;
      __dst = v48;
      v69 = v49;
      *&v38 = v5;
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_24AEF6168((v7 > 1), v8 + 1, 1);
        v5 = v38;
      }

      *(v5 + 16) = v8 + 1;
      v9 = (v5 + 160 * v8);
      v10 = v69;
      v9[2] = __dst;
      v9[3] = v10;
      v11 = v70;
      v12 = v71;
      v13 = v73;
      v9[6] = v72;
      v9[7] = v13;
      v9[4] = v11;
      v9[5] = v12;
      v14 = v74;
      v15 = v75;
      v16 = v77;
      v9[10] = v76;
      v9[11] = v16;
      v9[8] = v14;
      v9[9] = v15;
      if (v2 - 1 == v4)
      {
        break;
      }

      ++v4;
      if ((v1 & 0xC000000000000001) != 0)
      {
        goto LABEL_5;
      }

LABEL_6:
      ;
    }

    v17 = *(v5 + 16);
    if (v17)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

  __break(1u);
  return result;
}

id sub_24AEE790C()
{
  if (MEMORY[0x24C235020]())
  {
    return MEMORY[0x277D84F90];
  }

  result = [*(v0 + 136) devices];
  if (result)
  {
    v2 = result;
    sub_24AED0EAC(0, &qword_281392DB8, 0x277D186E0);
    v3 = sub_24AF3549C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t InternetMessaging.deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 168);

  v3 = *(v0 + 176);

  v4 = *(v0 + 192);
  sub_24AED56FC(*(v0 + 184));
  v5 = *(v0 + 208);
  sub_24AED56FC(*(v0 + 200));
  v6 = *(v0 + 224);
  sub_24AED56FC(*(v0 + 216));
  v7 = *(v0 + 240);
  sub_24AED56FC(*(v0 + 232));
  v8 = *(v0 + 256);
  sub_24AED56FC(*(v0 + 248));
  v9 = *(v0 + 272);
  sub_24AED56FC(*(v0 + 264));
  v10 = *(v0 + 288);
  sub_24AED56FC(*(v0 + 280));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t InternetMessaging.__deallocating_deinit()
{
  InternetMessaging.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t InternetMessaging.send(message:messageOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = *v3;
  v6 = type metadata accessor for MessagingOptions();
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v8 = *(v5 + 80);
  v9 = *(v5 + 88);
  v10 = type metadata accessor for Message();
  v4[10] = v10;
  v11 = *(v10 - 8);
  v4[11] = v11;
  v12 = *(v11 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEE7BCC, v3, 0);
}

uint64_t sub_24AEE7BCC()
{
  v108 = v0;
  v1 = *(v0[4] + *(v0[7] + 20));
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v106 = MEMORY[0x277D84F90];
    sub_24AEF6148(0, v2, 0);
    v3 = v106;
    v4 = *(v106 + 16);
    v5 = 16 * v4;
    v6 = (v1 + 48);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v106 = v3;
      v9 = *(v3 + 24);

      if (v4 >= v9 >> 1)
      {
        sub_24AEF6148((v9 > 1), v4 + 1, 1);
        v3 = v106;
      }

      *(v3 + 16) = v4 + 1;
      v10 = v3 + v5;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      v5 += 16;
      v6 += 3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  v11 = v0[10];
  v12 = v0[3];
  v13 = sub_24AEF69F8(v3);
  v0[14] = v13;

  v14 = sub_24AF350CC();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_24AF350BC();
  swift_getWitnessTable();
  v17 = sub_24AF3509C();
  v0[15] = v17;
  v0[16] = v18;
  v19 = v17;
  v20 = v18;
  v21 = v0[7];
  v22 = v0[4];

  v23 = *(v22 + *(v21 + 36));
  v24 = 0x6F707365722F7728;
  if (!*(v22 + *(v21 + 24)))
  {
    v24 = 0;
  }

  v25 = 0xE000000000000000;
  if (*(v22 + *(v21 + 24)))
  {
    v25 = 0xED0000202965736ELL;
  }

  v106 = v24;
  v107 = v25;
  if (v23)
  {
    v26 = 0xD000000000000017;
  }

  else
  {
    v26 = 0x6567617373656DLL;
  }

  if (v23)
  {
    v27 = 0x800000024AF36C70;
  }

  else
  {
    v27 = 0xE700000000000000;
  }

  MEMORY[0x24C235440](v26, v27);

  v34 = v107;
  v35 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    v36 = 0;
    if (v35 != 2)
    {
      goto LABEL_25;
    }

    v38 = *(v19 + 16);
    v37 = *(v19 + 24);
    v36 = v37 - v38;
    if (!__OFSUB__(v37, v38))
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v35)
  {
    v36 = BYTE6(v20);
    goto LABEL_25;
  }

  if (__OFSUB__(HIDWORD(v19), v19))
  {
    __break(1u);
    return MEMORY[0x28215EC68](v28, v29, v30, v31, v32, v33);
  }

  v36 = HIDWORD(v19) - v19;
LABEL_25:
  if ([objc_opt_self() checkMessageSize:v36 priority:300])
  {
    v103 = v106;
    v104 = v19;
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v39 = v0[13];
    v40 = v0[10];
    v41 = v0[11];
    v42 = v0[9];
    v44 = v0[3];
    v43 = v0[4];
    v45 = sub_24AF3529C();
    __swift_project_value_buffer(v45, qword_281392F00);
    v102 = *(v41 + 16);
    v102(v39, v44, v40);
    sub_24AEF8F7C(v43, v42, type metadata accessor for MessagingOptions);

    v46 = sub_24AF3527C();
    v47 = sub_24AF3572C();

    v48 = os_log_type_enabled(v46, v47);
    v49 = v0[13];
    v105 = v20;
    if (v48)
    {
      v50 = v0[11];
      log = v46;
      v51 = v0[10];
      v97 = v0[12];
      v98 = v0[9];
      v100 = v47;
      v52 = v0[6];
      v53 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v106 = v99;
      *v53 = 136316162;
      v54 = sub_24AEE5B34();
      v56 = sub_24AEF599C(v54, v55, &v106);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2082;
      v57 = sub_24AEF599C(v103, v34, &v106);

      *(v53 + 14) = v57;
      *(v53 + 22) = 2082;
      v102(v97, v49, v51);
      v58 = *(v50 + 8);
      v58(v49, v51);
      v59 = Message.description.getter(v51);
      v61 = v60;
      v58(v97, v51);
      v62 = sub_24AEF599C(v59, v61, &v106);

      *(v53 + 24) = v62;
      *(v53 + 32) = 2080;
      v63 = sub_24AF3567C();
      v65 = sub_24AEF599C(v63, v64, &v106);

      *(v53 + 34) = v65;
      *(v53 + 42) = 2082;
      sub_24AF3521C();
      sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
      v66 = sub_24AF35C0C();
      v68 = v67;
      sub_24AEF8FE4(v98, type metadata accessor for MessagingOptions);
      v69 = sub_24AEF599C(v66, v68, &v106);

      *(v53 + 44) = v69;
      _os_log_impl(&dword_24AECF000, log, v100, "%s: Sending %{public}s: %{public}s to %s with identifier: %{public}s", v53, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v99, -1, -1);
      MEMORY[0x24C236490](v53, -1, -1);
    }

    else
    {
      v77 = v0[9];
      (*(v0[11] + 8))(v49, v0[10]);

      sub_24AEF8FE4(v77, type metadata accessor for MessagingOptions);
    }

    sub_24AEF8F7C(v0[4], v0[8], type metadata accessor for MessagingOptions);
    v78 = sub_24AF3527C();
    v79 = sub_24AF3572C();
    v80 = os_log_type_enabled(v78, v79);
    v81 = v0[8];
    if (v80)
    {
      v82 = v0[6];
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v106 = v84;
      *v83 = 136446466;
      v85 = sub_24AEE5B34();
      v87 = sub_24AEF599C(v85, v86, &v106);

      *(v83 + 4) = v87;
      *(v83 + 12) = 2080;
      MessagingOptions.dictionaryValue.getter();
      v88 = sub_24AF3530C();
      v90 = v89;

      sub_24AEF8FE4(v81, type metadata accessor for MessagingOptions);
      v91 = sub_24AEF599C(v88, v90, &v106);

      *(v83 + 14) = v91;
      _os_log_impl(&dword_24AECF000, v78, v79, "%{public}s: IDSSendMessageOptions: %s", v83, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v84, -1, -1);
      MEMORY[0x24C236490](v83, -1, -1);
    }

    else
    {

      sub_24AEF8FE4(v81, type metadata accessor for MessagingOptions);
    }

    v92 = v0[5];
    v93 = swift_task_alloc();
    v0[17] = v93;
    v94 = *(v0 + 3);
    *(v93 + 16) = v92;
    *(v93 + 24) = v94;
    *(v93 + 40) = v104;
    *(v93 + 48) = v105;
    *(v93 + 56) = v13;
    v95 = *(MEMORY[0x277D089C0] + 4);
    v96 = swift_task_alloc();
    v0[18] = v96;
    v33 = sub_24AF3521C();
    *v96 = v0;
    v96[1] = sub_24AEE8530;
    v28 = v0[2];
    v31 = sub_24AEF6A90;
    v29 = 0xD00000000000001DLL;
    v30 = 0x800000024AF36C50;
    v32 = v93;

    return MEMORY[0x28215EC68](v28, v29, v30, v31, v32, v33);
  }

  sub_24AED9680();
  swift_allocError();
  *v70 = 2;
  swift_willThrow();
  sub_24AED6198(v19, v20);
  v72 = v0[12];
  v71 = v0[13];
  v74 = v0[8];
  v73 = v0[9];

  v75 = v0[1];

  return v75();
}

uint64_t sub_24AEE8530()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v10 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = sub_24AEE86F8;
  }

  else
  {
    v6 = v2[17];
    v7 = v2[14];
    v8 = v2[5];

    v5 = sub_24AEE8664;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AEE8664()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  sub_24AED6198(v0[15], v0[16]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AEE86F8()
{
  v1 = v0[17];
  v2 = v0[14];
  sub_24AED6198(v0[15], v0[16]);

  v3 = v0[19];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[8];
  v6 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_24AEE879C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v41 = a6;
  v42 = a7;
  v39 = a1;
  v40 = a5;
  v10 = *a2;
  v11 = type metadata accessor for MessagingOptions();
  v36 = *(v11 - 8);
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v34 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v10 + 80);
  v37 = *(v10 + 88);
  v13 = type metadata accessor for Message();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v33 - v20;
  v35 = &v33 - v20;
  v22 = sub_24AF3557C();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  (*(v14 + 16))(v17, a3, v13);
  sub_24AEF8F7C(a4, &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessagingOptions);
  v23 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v24 = (v15 + *(v36 + 80) + v23) & ~*(v36 + 80);
  v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = v37;
  *(v27 + 4) = v38;
  *(v27 + 5) = v28;
  *(v27 + 6) = a2;
  (*(v14 + 32))(&v27[v23], v17, v13);
  sub_24AEF9044(v34, &v27[v24], type metadata accessor for MessagingOptions);
  v29 = &v27[v25];
  v31 = v40;
  v30 = v41;
  *v29 = v40;
  v29[1] = v30;
  *&v27[v26] = v42;
  *&v27[(v26 + 15) & 0xFFFFFFFFFFFFFFF8] = v39;

  sub_24AEE5154(v31, v30);

  sub_24AF08F10(0, 0, v35, &unk_24AF38198, v27);
}

uint64_t sub_24AEE8AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_24AEF9DD0;

  return sub_24AEE8BD0(a5, a6, a7, a8, v16, v17);
}

uint64_t sub_24AEE8BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[15] = v6;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  v7[16] = *v6;
  v8 = *v6;
  v9 = sub_24AF3521C();
  v7[17] = v9;
  v10 = *(v9 - 8);
  v7[18] = v10;
  v11 = *(v10 + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = *(v8 + 80);
  v7[21] = *(v8 + 88);
  v12 = type metadata accessor for Message();
  v7[22] = v12;
  v13 = *(v12 - 8);
  v7[23] = v13;
  v7[24] = *(v13 + 64);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v14 = type metadata accessor for MessagingOptions();
  v7[27] = v14;
  v15 = *(v14 - 8);
  v7[28] = v15;
  v7[29] = *(v15 + 64);
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEE8DD8, v6, 0);
}

uint64_t sub_24AEE8DD8()
{
  v1 = *(v0 + 248);
  v20 = *(v0 + 224);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 184);
  v21 = *(v0 + 192);
  v22 = *(v0 + 232);
  v5 = *(v0 + 176);
  v6 = *(v0 + 120);
  v29 = *(v0 + 128);
  v7 = *(v0 + 112);
  v25 = *(v0 + 96);
  v26 = *(v0 + 104);
  v24 = *(v0 + 88);
  v8 = *(v0 + 80);
  v19 = *(v0 + 72);
  v23 = *(v0 + 160);
  swift_beginAccess();

  v9 = *(v6 + 168);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v6 + 168);
  *(v6 + 168) = 0x8000000000000000;
  sub_24AF031AC(v7, v8, isUniquelyReferenced_nonNull_native);
  *(v6 + 168) = v30;
  swift_endAccess();
  v11 = (v8 + *(v2 + 52));
  v28 = *v11;
  v27 = v11[1];
  sub_24AEF8F7C(v8, v1, type metadata accessor for MessagingOptions);
  v12 = *(v4 + 16);
  *(v0 + 256) = v12;
  *(v0 + 264) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v3, v19, v5);
  v13 = (*(v20 + 80) + 64) & ~*(v20 + 80);
  v14 = (v22 + *(v4 + 80) + v13) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v0 + 272) = v15;
  *(v15 + 16) = v23;
  *(v15 + 32) = v6;
  *(v15 + 40) = v24;
  *(v15 + 48) = v25;
  *(v15 + 56) = v26;
  sub_24AEF9044(v1, v15 + v13, type metadata accessor for MessagingOptions);
  (*(v4 + 32))(v15 + v14, v3, v5);
  *(v15 + ((v21 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;

  sub_24AEE5154(v24, v25);
  v16 = *(MEMORY[0x277D08920] + 4);

  v17 = swift_task_alloc();
  *(v0 + 280) = v17;
  *v17 = v0;
  v17[1] = sub_24AEE9084;

  return MEMORY[0x28215EB08]();
}

uint64_t sub_24AEE9084()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v9 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = sub_24AEE923C;
  }

  else
  {
    v6 = *(v2 + 272);
    v7 = *(v2 + 120);

    v5 = sub_24AEE91AC;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AEE91AC()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[19];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AEE923C()
{
  v58 = v0;
  v1 = v0[34];

  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  v6 = v0[25];
  v7 = v0[22];
  v9 = v0[9];
  v8 = v0[10];
  v10 = sub_24AF3529C();
  __swift_project_value_buffer(v10, qword_281392F00);
  v4(v6, v9, v7);
  sub_24AEF8F7C(v8, v5, type metadata accessor for MessagingOptions);
  v11 = v2;
  v12 = sub_24AF3527C();
  v13 = sub_24AF3572C();

  if (os_log_type_enabled(v12, v13))
  {
    v54 = v0[36];
    v14 = v0[33];
    v52 = v0[30];
    v15 = v0[25];
    v16 = v0[26];
    v18 = v0[22];
    v17 = v0[23];
    v50 = v0[32];
    v51 = v0[17];
    v55 = v13;
    v19 = v0[16];
    v20 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = v56;
    *v20 = 136446978;
    v21 = sub_24AEE5B34();
    v23 = sub_24AEF599C(v21, v22, &v57);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2082;
    v50(v16, v15, v18);
    v24 = *(v17 + 8);
    v24(v15, v18);
    v25 = Message.description.getter(v18);
    v27 = v26;
    v24(v16, v18);
    v28 = sub_24AEF599C(v25, v27, &v57);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2082;
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v29 = sub_24AF35C0C();
    v31 = v30;
    sub_24AEF8FE4(v52, type metadata accessor for MessagingOptions);
    v32 = sub_24AEF599C(v29, v31, &v57);

    *(v20 + 24) = v32;
    *(v20 + 32) = 2114;
    v33 = v54;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 34) = v34;
    *v53 = v34;
    _os_log_impl(&dword_24AECF000, v12, v55, "%{public}s: Failed to send message (resource) %{public}s. with identifier: %{public}s. Error: %{public}@.", v20, 0x2Au);
    sub_24AEE2E10(v53, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v53, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v56, -1, -1);
    MEMORY[0x24C236490](v20, -1, -1);
  }

  else
  {
    v35 = v0[30];
    (*(v0[23] + 8))(v0[25], v0[22]);

    sub_24AEF8FE4(v35, type metadata accessor for MessagingOptions);
  }

  v36 = v0[36];
  v38 = v0[18];
  v37 = v0[19];
  v39 = v0[17];
  v40 = v0[14];
  v41 = v0[15];
  v42 = v0[10];
  v0[8] = v36;
  sub_24AF34FFC();
  (*(v38 + 16))(v37, v42, v39);
  swift_beginAccess();
  sub_24AF09284(0, v37);
  swift_endAccess();

  v44 = v0[30];
  v43 = v0[31];
  v46 = v0[25];
  v45 = v0[26];
  v47 = v0[19];

  v48 = v0[1];

  return v48();
}

uint64_t InternetMessaging.send(message:metadata:messageOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  v6 = *v4;
  v7 = type metadata accessor for MessagingOptions();
  v5[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v9 = *(v6 + 80);
  v10 = *(v6 + 88);
  v11 = type metadata accessor for Message();
  v5[11] = v11;
  v12 = *(v11 - 8);
  v5[12] = v12;
  v13 = *(v12 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEE9818, v4, 0);
}

uint64_t sub_24AEE9818()
{
  v85 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v2 + v1[5]);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v83 = MEMORY[0x277D84F90];
    sub_24AEF6148(0, v4, 0);
    v5 = v83;
    v6 = *(v83 + 16);
    v7 = 16 * v6;
    v8 = (v3 + 48);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v83 = v5;
      v11 = *(v5 + 24);

      if (v6 >= v11 >> 1)
      {
        sub_24AEF6148((v11 > 1), v6 + 1, 1);
        v5 = v83;
      }

      *(v5 + 16) = v6 + 1;
      v12 = v5 + v7;
      *(v12 + 32) = v10;
      *(v12 + 40) = v9;
      v7 += 16;
      v8 += 3;
      ++v6;
      --v4;
    }

    while (v4);
    v1 = v0[8];
    v2 = v0[5];
  }

  v13 = sub_24AEF69F8(v5);
  v0[15] = v13;

  v14 = *(v2 + v1[9]);
  v15 = 0x6F707365722F7728;
  if (!*(v2 + v1[6]))
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (*(v2 + v1[6]))
  {
    v16 = 0xED0000202965736ELL;
  }

  v83 = v15;
  v84 = v16;
  if (v14)
  {
    v17 = 0xD000000000000017;
  }

  else
  {
    v17 = 0x6567617373656DLL;
  }

  if (v14)
  {
    v18 = 0x800000024AF36C70;
  }

  else
  {
    v18 = 0xE700000000000000;
  }

  MEMORY[0x24C235440](v17, v18);

  v19 = v84;
  v81 = v83;
  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v20 = v0[14];
  v21 = v0[11];
  v22 = v0[12];
  v23 = v0[10];
  v24 = v0[5];
  v25 = v0[3];
  v26 = sub_24AF3529C();
  __swift_project_value_buffer(v26, qword_281392F00);
  v80 = *(v22 + 16);
  v80(v20, v25, v21);
  sub_24AEF8F7C(v24, v23, type metadata accessor for MessagingOptions);

  v27 = sub_24AF3527C();
  v28 = sub_24AF3572C();

  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[14];
  v82 = v13;
  if (v29)
  {
    v32 = v0[12];
    v31 = v0[13];
    log = v27;
    v33 = v0[11];
    v76 = v0[10];
    v78 = v28;
    v34 = v0[7];
    v35 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v83 = v77;
    *v35 = 136316162;
    v36 = sub_24AEE5B34();
    v38 = sub_24AEF599C(v36, v37, &v83);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2082;
    v39 = sub_24AEF599C(v81, v19, &v83);

    *(v35 + 14) = v39;
    *(v35 + 22) = 2082;
    v80(v31, v30, v33);
    v40 = *(v32 + 8);
    v40(v30, v33);
    v41 = Message.description.getter(v33);
    v43 = v42;
    v40(v31, v33);
    v44 = sub_24AEF599C(v41, v43, &v83);

    *(v35 + 24) = v44;
    *(v35 + 32) = 2080;
    v45 = sub_24AF3567C();
    v47 = sub_24AEF599C(v45, v46, &v83);

    *(v35 + 34) = v47;
    *(v35 + 42) = 2082;
    sub_24AF3521C();
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v48 = sub_24AF35C0C();
    v50 = v49;
    sub_24AEF8FE4(v76, type metadata accessor for MessagingOptions);
    v51 = sub_24AEF599C(v48, v50, &v83);

    *(v35 + 44) = v51;
    _os_log_impl(&dword_24AECF000, log, v78, "%s: Sending (resource) %{public}s: %{public}s to %s with identifier: %{public}s", v35, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v77, -1, -1);
    MEMORY[0x24C236490](v35, -1, -1);
  }

  else
  {
    v52 = v0[10];
    (*(v0[12] + 8))(v30, v0[11]);

    sub_24AEF8FE4(v52, type metadata accessor for MessagingOptions);
  }

  sub_24AEF8F7C(v0[5], v0[9], type metadata accessor for MessagingOptions);
  v53 = sub_24AF3527C();
  v54 = sub_24AF3572C();
  v55 = os_log_type_enabled(v53, v54);
  v56 = v0[9];
  if (v55)
  {
    v57 = v0[7];
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v83 = v59;
    *v58 = 136446466;
    v60 = sub_24AEE5B34();
    v62 = sub_24AEF599C(v60, v61, &v83);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2080;
    MessagingOptions.dictionaryValue.getter();
    v63 = sub_24AF3530C();
    v65 = v64;

    sub_24AEF8FE4(v56, type metadata accessor for MessagingOptions);
    v66 = sub_24AEF599C(v63, v65, &v83);

    *(v58 + 14) = v66;
    _os_log_impl(&dword_24AECF000, v53, v54, "%{public}s: IDSSendMessageOptions: %s", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v59, -1, -1);
    MEMORY[0x24C236490](v58, -1, -1);
  }

  else
  {

    sub_24AEF8FE4(v56, type metadata accessor for MessagingOptions);
  }

  v68 = v0[5];
  v67 = v0[6];
  v69 = swift_task_alloc();
  v0[16] = v69;
  v70 = *(v0 + 3);
  *(v69 + 16) = v67;
  *(v69 + 24) = v70;
  *(v69 + 40) = v68;
  *(v69 + 48) = v82;
  v71 = *(MEMORY[0x277D089C0] + 4);
  v72 = swift_task_alloc();
  v0[17] = v72;
  v73 = sub_24AF3521C();
  *v72 = v0;
  v72[1] = sub_24AEE9FC8;
  v74 = v0[2];

  return MEMORY[0x28215EC68](v74, 0xD000000000000026, 0x800000024AF36C90, sub_24AEF6AA0, v69, v73);
}

uint64_t sub_24AEE9FC8()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {
    v4 = v3[6];

    return MEMORY[0x2822009F8](sub_24AEEA150, v4, 0);
  }

  else
  {
    v5 = v3[15];
    v6 = v3[16];
    v8 = v3[13];
    v7 = v3[14];
    v9 = v3[9];
    v10 = v3[10];

    v11 = v3[1];

    return v11();
  }
}

uint64_t sub_24AEEA150()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[9];
  v5 = v0[10];

  v7 = v0[1];
  v8 = v0[18];

  return v7();
}

uint64_t sub_24AEEA1F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a1;
  v37 = a6;
  v35 = a4;
  v32 = a3;
  v8 = *a2;
  v9 = type metadata accessor for MessagingOptions();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v30 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v8 + 80);
  v33 = *(v8 + 88);
  v12 = type metadata accessor for Message();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v30 - v19;
  v31 = &v30 - v19;
  v21 = sub_24AF3557C();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v13 + 16))(v16, v32, v12);
  sub_24AEF8F7C(a5, &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessagingOptions);
  v22 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v23 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v10 + 80) + v23 + 8) & ~*(v10 + 80);
  v25 = (v11 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v27 = v33;
  *(v26 + 4) = v34;
  *(v26 + 5) = v27;
  *(v26 + 6) = a2;
  (*(v13 + 32))(&v26[v22], v16, v12);
  *&v26[v23] = v35;
  sub_24AEF9044(v30, &v26[v24], type metadata accessor for MessagingOptions);
  v28 = v36;
  *&v26[v25] = v37;
  *&v26[(v25 + 15) & 0xFFFFFFFFFFFFFFF8] = v28;

  sub_24AF08F10(0, 0, v31, &unk_24AF38170, v26);
}

uint64_t sub_24AEEA540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_24AEF9DD0;

  return sub_24AEEA610(a5, a6, a7, a8, v16);
}

uint64_t sub_24AEEA610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v6[16] = *v5;
  v7 = *v5;
  v6[17] = *(*v5 + 80);
  v6[18] = *(v7 + 88);
  v8 = type metadata accessor for Message();
  v6[19] = v8;
  v9 = *(v8 - 8);
  v6[20] = v9;
  v6[21] = *(v9 + 64);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v10 = type metadata accessor for MessagingOptions();
  v6[24] = v10;
  v11 = *(v10 - 8);
  v6[25] = v11;
  v6[26] = *(v11 + 64);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v12 = sub_24AF3521C();
  v6[29] = v12;
  v13 = *(v12 - 8);
  v6[30] = v13;
  v14 = *(v13 + 64) + 15;
  v6[31] = swift_task_alloc();
  v15 = sub_24AF3513C();
  v6[32] = v15;
  v16 = *(v15 - 8);
  v6[33] = v16;
  v6[34] = *(v16 + 64);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v17 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24AEEA8B8, v5, 0);
}

uint64_t sub_24AEEA8B8()
{
  v57 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 264);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  v6 = *(v0 + 232);
  v50 = *(v0 + 256);
  v52 = *(v0 + 152);
  v54 = *(v0 + 80);
  v7 = NSTemporaryDirectory();
  sub_24AF353AC();

  sub_24AF350FC();

  sub_24AF3520C();
  sub_24AF351EC();
  (*(v4 + 8))(v5, v6);
  sub_24AF3511C();

  v8 = *(v3 + 8);
  *(v0 + 296) = v8;
  *(v0 + 304) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v50);
  v9 = sub_24AF350CC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_24AF350BC();
  swift_getWitnessTable();
  *(v0 + 312) = sub_24AF3509C();
  *(v0 + 320) = v12;
  v13 = *(v0 + 288);

  sub_24AF3518C();
  v14 = *(v0 + 280);
  v15 = *(v0 + 264);
  v44 = *(v0 + 272);
  v16 = *(v0 + 256);
  v38 = v14;
  v17 = *(v0 + 224);
  v39 = v17;
  v46 = *(v0 + 208);
  v42 = *(v0 + 288);
  v43 = *(v0 + 200);
  v36 = *(v0 + 192);
  v55 = *(v0 + 184);
  v45 = *(v0 + 168);
  v53 = *(v0 + 160);
  v18 = *(v0 + 152);
  v40 = v18;
  v19 = *(v0 + 120);
  v51 = *(v0 + 128);
  v20 = *(v0 + 112);
  v21 = *(v0 + 96);
  v48 = *(v0 + 88);
  v49 = *(v0 + 104);
  v41 = *(v0 + 80);
  v47 = *(v0 + 136);
  swift_beginAccess();

  v22 = *(v19 + 168);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *(v19 + 168);
  *(v19 + 168) = 0x8000000000000000;
  sub_24AF031AC(v20, v21, isUniquelyReferenced_nonNull_native);
  *(v19 + 168) = v56;
  swift_endAccess();
  v24 = (v21 + *(v36 + 52));
  v35 = v24[1];
  v37 = *v24;
  (*(v15 + 16))(v14, v42, v16);
  sub_24AEF8F7C(v21, v17, type metadata accessor for MessagingOptions);
  (*(v53 + 16))(v55, v41, v18);
  v25 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v26 = (v44 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v43 + 80) + v27 + 8) & ~*(v43 + 80);
  v29 = (v46 + *(v53 + 80) + v28) & ~*(v53 + 80);
  v30 = swift_allocObject();
  *(v0 + 328) = v30;
  *(v30 + 16) = v47;
  *(v30 + 32) = v19;
  (*(v15 + 32))(v30 + v25, v38, v16);
  *(v30 + v26) = v48;
  *(v30 + v27) = v49;
  sub_24AEF9044(v39, v30 + v28, type metadata accessor for MessagingOptions);
  (*(v53 + 32))(v30 + v29, v55, v40);
  *(v30 + ((v45 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v51;
  v31 = *(MEMORY[0x277D08920] + 4);

  v32 = swift_task_alloc();
  *(v0 + 336) = v32;
  *v32 = v0;
  v32[1] = sub_24AEEB278;
  v33 = *MEMORY[0x277D85DE8];

  return MEMORY[0x28215EB08]();
}

uint64_t sub_24AEEB278()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 336);
  v12 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = *MEMORY[0x277D85DE8];
    v6 = sub_24AEEB578;
  }

  else
  {
    v7 = *(v2 + 328);
    v8 = *(v2 + 120);

    v9 = *MEMORY[0x277D85DE8];
    v6 = sub_24AEEB3EC;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

uint64_t sub_24AEEB3EC()
{
  v19 = *MEMORY[0x277D85DE8];
  sub_24AED6198(*(v0 + 312), *(v0 + 320));
  v1 = *(v0 + 288);
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_24AF3510C();
  *(v0 + 72) = 0;
  v4 = [v2 removeItemAtURL:v3 error:v0 + 72];

  v5 = *(v0 + 72);
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v7 = v5;
    v8 = sub_24AF350DC();

    swift_willThrow();
  }

  v9 = *(v0 + 304);
  v10 = *(v0 + 280);
  v11 = *(v0 + 248);
  v13 = *(v0 + 216);
  v12 = *(v0 + 224);
  v15 = *(v0 + 176);
  v14 = *(v0 + 184);
  (*(v0 + 296))(*(v0 + 288), *(v0 + 256));

  v16 = *(v0 + 8);
  v17 = *MEMORY[0x277D85DE8];

  return v16();
}

uint64_t sub_24AEEB578()
{
  v67 = v0;
  v66[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 328);
  sub_24AED6198(*(v0 + 312), *(v0 + 320));

  v2 = *(v0 + 344);
  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 216);
  v4 = *(v0 + 176);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 96);
  v8 = *(v0 + 80);
  v9 = sub_24AF3529C();
  __swift_project_value_buffer(v9, qword_281392F00);
  v10 = *(v5 + 16);
  v10(v4, v8, v6);
  sub_24AEF8F7C(v7, v3, type metadata accessor for MessagingOptions);
  v11 = v2;
  v12 = sub_24AF3527C();
  v13 = sub_24AF3572C();

  if (os_log_type_enabled(v12, v13))
  {
    v60 = *(v0 + 216);
    v61 = *(v0 + 232);
    v59 = v10;
    v14 = *(v0 + 176);
    v15 = *(v0 + 184);
    v65 = v2;
    v17 = *(v0 + 152);
    v16 = *(v0 + 160);
    v63 = v13;
    v18 = *(v0 + 128);
    v19 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v66[0] = v64;
    *v19 = 136446978;
    v20 = sub_24AEE5B34();
    v22 = sub_24AEF599C(v20, v21, v66);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2082;
    v59(v15, v14, v17);
    v23 = *(v16 + 8);
    v23(v14, v17);
    v24 = Message.description.getter(v17);
    v26 = v25;
    v27 = v17;
    v2 = v65;
    v23(v15, v27);
    v28 = sub_24AEF599C(v24, v26, v66);

    *(v19 + 14) = v28;
    *(v19 + 22) = 2082;
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v29 = sub_24AF35C0C();
    v31 = v30;
    sub_24AEF8FE4(v60, type metadata accessor for MessagingOptions);
    v32 = sub_24AEF599C(v29, v31, v66);

    *(v19 + 24) = v32;
    *(v19 + 32) = 2114;
    v33 = v65;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 34) = v34;
    *v62 = v34;
    _os_log_impl(&dword_24AECF000, v12, v63, "%{public}s: Failed to send message (resource) %{public}s. with identifier: %{public}s. Error: %{public}@.", v19, 0x2Au);
    sub_24AEE2E10(v62, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v62, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v64, -1, -1);
    MEMORY[0x24C236490](v19, -1, -1);
  }

  else
  {
    v35 = *(v0 + 216);
    (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));

    sub_24AEF8FE4(v35, type metadata accessor for MessagingOptions);
  }

  v36 = *(v0 + 240);
  v37 = *(v0 + 248);
  v38 = *(v0 + 232);
  v39 = *(v0 + 112);
  v40 = *(v0 + 120);
  v41 = *(v0 + 96);
  *(v0 + 64) = v2;
  sub_24AF34FFC();
  (*(v36 + 16))(v37, v41, v38);
  swift_beginAccess();
  sub_24AF09284(0, v37);
  swift_endAccess();

  v42 = *(v0 + 288);
  v43 = [objc_opt_self() defaultManager];
  v44 = sub_24AF3510C();
  *(v0 + 72) = 0;
  LOBYTE(v37) = [v43 removeItemAtURL:v44 error:v0 + 72];

  v45 = *(v0 + 72);
  if (v37)
  {
    v46 = v45;
  }

  else
  {
    v47 = v45;
    v48 = sub_24AF350DC();

    swift_willThrow();
  }

  v49 = *(v0 + 304);
  v50 = *(v0 + 280);
  v51 = *(v0 + 248);
  v53 = *(v0 + 216);
  v52 = *(v0 + 224);
  v55 = *(v0 + 176);
  v54 = *(v0 + 184);
  (*(v0 + 296))(*(v0 + 288), *(v0 + 256));

  v56 = *(v0 + 8);
  v57 = *MEMORY[0x277D85DE8];

  return v56();
}

uint64_t InternetMessaging.sendWithResponse(message:messageOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  v5[7] = type metadata accessor for Message();
  type metadata accessor for MessageContext();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5[8] = TupleTypeMetadata2;
  v9 = *(*(TupleTypeMetadata2 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = type metadata accessor for MessagingOptions();
  v5[10] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEEBC08, v4, 0);
}

uint64_t sub_24AEEBC08()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  sub_24AEF8F7C(v0[5], v2, type metadata accessor for MessagingOptions);
  *(v2 + *(v3 + 24)) = 1;
  sub_24AEF8F7C(v2, v1, type metadata accessor for MessagingOptions);
  v4 = *(v1 + *(v3 + 20));
  if (*(v4 + 16) == 1 && *(v4 + 32) - 2 <= 2)
  {
    v5 = v0[11];
    v6 = v0[6];
    v7 = v0[4];
    v8 = swift_task_alloc();
    v0[13] = v8;
    v8[2] = v6;
    v8[3] = v7;
    v8[4] = v5;
    v9 = *(MEMORY[0x277D089C0] + 4);
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_24AEEBE20;
    v12 = v0[8];
    v11 = v0[9];

    return MEMORY[0x28215EC68](v11, 0xD000000000000029, 0x800000024AF36CC0, sub_24AEF6AB0, v8, v12);
  }

  else
  {
    sub_24AED9680();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    v14 = v0[11];
    v15 = v0[9];
    sub_24AEF8FE4(v0[12], type metadata accessor for MessagingOptions);
    sub_24AEF8FE4(v14, type metadata accessor for MessagingOptions);

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_24AEEBE20()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 120) = v0;

  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_24AEEC088;
  }

  else
  {
    v7 = sub_24AEEBF68;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24AEEBF68()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v6 = v0[2];
  v5 = v0[3];
  sub_24AEF8FE4(v0[12], type metadata accessor for MessagingOptions);
  v7 = *(v3 + 48);
  (*(*(v4 - 8) + 32))(v6, v2, v4);
  sub_24AEF9044(v2 + v7, v5, type metadata accessor for MessageContext);
  sub_24AEF8FE4(v1, type metadata accessor for MessagingOptions);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24AEEC088()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[9];
  sub_24AEF8FE4(v0[12], type metadata accessor for MessagingOptions);
  sub_24AEF8FE4(v2, type metadata accessor for MessagingOptions);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AEEC140(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v28 = a1;
  v6 = *a2;
  v7 = type metadata accessor for MessagingOptions();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v27 = *(v6 + 80);
  v26 = *(v6 + 88);
  v10 = type metadata accessor for Message();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v25 - v17;
  v19 = sub_24AF3557C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v11 + 16))(v14, v25, v10);
  sub_24AEF8F7C(a4, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessagingOptions);
  v20 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v21 = (v12 + *(v8 + 80) + v20) & ~*(v8 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v26;
  *(v22 + 4) = v27;
  *(v22 + 5) = v23;
  *(v22 + 6) = a2;
  (*(v11 + 32))(&v22[v20], v14, v10);
  sub_24AEF9044(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), &v22[v21], type metadata accessor for MessagingOptions);
  *&v22[(v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8] = v28;

  sub_24AF08F10(0, 0, v18, &unk_24AF38148, v22);
}

uint64_t sub_24AEEC450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_24AEE555C;

  return sub_24AEEC504(a5, a6, a7);
}

uint64_t sub_24AEEC504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v4[15] = *v3;
  v5 = *v3;
  v6 = type metadata accessor for MessagingOptions();
  v4[16] = v6;
  v7 = *(v6 - 8);
  v4[17] = v7;
  v4[18] = *(v7 + 64);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = *(v5 + 80);
  v4[22] = *(v5 + 88);
  v8 = type metadata accessor for Message();
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v4[25] = *(v9 + 64);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v10 = sub_24AF3521C();
  v4[28] = v10;
  v11 = *(v10 - 8);
  v4[29] = v11;
  v12 = *(v11 + 64) + 15;
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEEC70C, v3, 0);
}

uint64_t sub_24AEEC70C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 192);
  v5 = *(v0 + 184);
  v22 = *(v0 + 216);
  v23 = *(v0 + 160);
  v26 = *(v0 + 144);
  v27 = *(v0 + 200);
  v24 = *(v0 + 136);
  v19 = *(v0 + 128);
  v28 = *(v0 + 120);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v1 + 16);
  v9 = *(v0 + 96);
  v21 = *(v0 + 88);
  *(v0 + 248) = v8;
  *(v0 + 256) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25 = *(v0 + 168);
  v8(v2, v9, v3);
  *(v0 + 64) = v7;
  swift_beginAccess();
  type metadata accessor for MessageContext();

  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0898, &qword_24AF37D00);
  sub_24AF3501C();
  sub_24AEF8F34(&qword_281393400, MEMORY[0x277CC95F0]);
  *(v0 + 264) = sub_24AF3532C();
  sub_24AF3534C();
  swift_endAccess();
  v10 = (v9 + *(v19 + 52));
  v18 = v10[1];
  v20 = *v10;
  v11 = *(v4 + 16);
  *(v0 + 272) = v11;
  *(v0 + 280) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v22, v21, v5);
  sub_24AEF8F7C(v9, v23, type metadata accessor for MessagingOptions);
  v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v13 = (v27 + *(v24 + 80) + v12) & ~*(v24 + 80);
  v14 = swift_allocObject();
  *(v0 + 288) = v14;
  *(v14 + 16) = v25;
  *(v14 + 32) = v6;
  (*(v4 + 32))(v14 + v12, v22, v5);
  sub_24AEF9044(v23, v14 + v13, type metadata accessor for MessagingOptions);
  *(v14 + ((v26 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  v15 = *(MEMORY[0x277D08920] + 4);

  v16 = swift_task_alloc();
  *(v0 + 296) = v16;
  *v16 = v0;
  v16[1] = sub_24AEECA48;

  return MEMORY[0x28215EB08]();
}

uint64_t sub_24AEECA48()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v9 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = *(v2 + 112);
    v5 = sub_24AEECC00;
  }

  else
  {
    v6 = *(v2 + 288);
    v7 = *(v2 + 112);

    v5 = sub_24AEECB70;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AEECB70()
{
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[19];
  v4 = v0[20];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AEECC00()
{
  v60 = v0;
  v1 = v0[36];

  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v2 = v0[38];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[19];
  v9 = v0[11];
  v8 = v0[12];
  v10 = sub_24AF3529C();
  __swift_project_value_buffer(v10, qword_281392F00);
  v4(v5, v9, v6);
  sub_24AEF8F7C(v8, v7, type metadata accessor for MessagingOptions);
  v11 = v2;
  v12 = sub_24AF3527C();
  v13 = sub_24AF3572C();

  if (os_log_type_enabled(v12, v13))
  {
    v56 = v0[38];
    v14 = v0[35];
    v15 = v0[27];
    v54 = v0[28];
    v16 = v0[26];
    v18 = v0[23];
    v17 = v0[24];
    v52 = v0[34];
    v53 = v0[19];
    v57 = v13;
    v19 = v0[15];
    v20 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v59 = v58;
    *v20 = 136446978;
    v21 = sub_24AEE5B34();
    v23 = sub_24AEF599C(v21, v22, &v59);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2082;
    v52(v15, v16, v18);
    v24 = *(v17 + 8);
    v24(v16, v18);
    v25 = Message.description.getter(v18);
    v27 = v26;
    v24(v15, v18);
    v28 = sub_24AEF599C(v25, v27, &v59);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2082;
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v29 = sub_24AF35C0C();
    v31 = v30;
    sub_24AEF8FE4(v53, type metadata accessor for MessagingOptions);
    v32 = sub_24AEF599C(v29, v31, &v59);

    *(v20 + 24) = v32;
    *(v20 + 32) = 2114;
    v33 = v56;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 34) = v34;
    *v55 = v34;
    _os_log_impl(&dword_24AECF000, v12, v57, "%{public}s: Failed to send message (with response) %{public}s. with identifier: %{public}s. Error: %{public}@.", v20, 0x2Au);
    sub_24AEE2E10(v55, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v55, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v58, -1, -1);
    MEMORY[0x24C236490](v20, -1, -1);
  }

  else
  {
    v35 = v0[19];
    (*(v0[24] + 8))(v0[26], v0[23]);

    sub_24AEF8FE4(v35, type metadata accessor for MessagingOptions);
  }

  v36 = v0[38];
  v38 = v0[32];
  v37 = v0[33];
  v39 = v0[30];
  v40 = v0[31];
  v41 = v0[28];
  v42 = v0[13];
  v43 = v0[14];
  v44 = v0[12];
  v0[9] = v36;
  sub_24AF34FFC();
  v40(v39, v44, v41);
  v0[10] = 0;
  swift_beginAccess();
  sub_24AF3534C();
  swift_endAccess();

  v45 = v0[30];
  v46 = v0[26];
  v47 = v0[27];
  v49 = v0[19];
  v48 = v0[20];

  v50 = v0[1];

  return v50();
}

uint64_t InternetMessaging.send(dictionary:messageOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = type metadata accessor for MessagingOptions();
  v4[7] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEED140, v3, 0);
}

uint64_t sub_24AEED140()
{
  v55 = v0;
  v1 = *(*(v0 + 32) + *(*(v0 + 56) + 20));
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v54 = MEMORY[0x277D84F90];
    sub_24AEF6148(0, v2, 0);
    v3 = v54;
    v4 = *(v54 + 16);
    v5 = 16 * v4;
    v6 = (v1 + 48);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v54 = v3;
      v9 = *(v3 + 24);

      if (v4 >= v9 >> 1)
      {
        sub_24AEF6148((v9 > 1), v4 + 1, 1);
        v3 = v54;
      }

      *(v3 + 16) = v4 + 1;
      v10 = v3 + v5;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      v5 += 16;
      v6 += 3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  v11 = sub_24AEF69F8(v3);
  *(v0 + 80) = v11;

  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 72);
  v13 = *(v0 + 32);
  v14 = sub_24AF3529C();
  __swift_project_value_buffer(v14, qword_281392F00);
  sub_24AEF8F7C(v13, v12, type metadata accessor for MessagingOptions);

  v15 = sub_24AF3527C();
  v16 = sub_24AF3572C();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 72);
  if (v17)
  {
    v19 = *(v0 + 48);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = v21;
    *v20 = 136315650;
    v22 = sub_24AEE5B34();
    v24 = sub_24AEF599C(v22, v23, &v54);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v25 = sub_24AF3567C();
    v27 = sub_24AEF599C(v25, v26, &v54);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2082;
    sub_24AF3521C();
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v28 = sub_24AF35C0C();
    v30 = v29;
    sub_24AEF8FE4(v18, type metadata accessor for MessagingOptions);
    v31 = sub_24AEF599C(v28, v30, &v54);

    *(v20 + 24) = v31;
    _os_log_impl(&dword_24AECF000, v15, v16, "%s: Sending raw dictionary to %s with identifier: %{public}s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v21, -1, -1);
    MEMORY[0x24C236490](v20, -1, -1);
  }

  else
  {

    sub_24AEF8FE4(v18, type metadata accessor for MessagingOptions);
  }

  sub_24AEF8F7C(*(v0 + 32), *(v0 + 64), type metadata accessor for MessagingOptions);
  v32 = sub_24AF3527C();
  v33 = sub_24AF3572C();
  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v0 + 64);
  if (v34)
  {
    v36 = *(v0 + 48);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v38;
    *v37 = 136446466;
    v39 = sub_24AEE5B34();
    v41 = sub_24AEF599C(v39, v40, &v54);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    MessagingOptions.dictionaryValue.getter();
    v42 = sub_24AF3530C();
    v44 = v43;

    sub_24AEF8FE4(v35, type metadata accessor for MessagingOptions);
    v45 = sub_24AEF599C(v42, v44, &v54);

    *(v37 + 14) = v45;
    _os_log_impl(&dword_24AECF000, v32, v33, "%{public}s: IDSSendMessageOptions: %s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v38, -1, -1);
    MEMORY[0x24C236490](v37, -1, -1);
  }

  else
  {

    sub_24AEF8FE4(v35, type metadata accessor for MessagingOptions);
  }

  v46 = *(v0 + 40);
  v47 = swift_task_alloc();
  *(v0 + 88) = v47;
  v48 = *(v0 + 24);
  *(v47 + 16) = v46;
  *(v47 + 24) = v11;
  *(v47 + 32) = v48;
  v49 = *(MEMORY[0x277D089C0] + 4);
  v50 = swift_task_alloc();
  *(v0 + 96) = v50;
  v51 = sub_24AF3521C();
  *v50 = v0;
  v50[1] = sub_24AEED710;
  v52 = *(v0 + 16);

  return MEMORY[0x28215EC68](v52, 0xD000000000000020, 0x800000024AF36CF0, sub_24AEF6ABC, v47, v51);
}

uint64_t sub_24AEED710()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x2822009F8](sub_24AEED878, v4, 0);
  }

  else
  {
    v5 = v3[10];
    v6 = v3[11];
    v7 = v3[8];
    v8 = v3[9];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_24AEED878()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

uint64_t sub_24AEED900(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = type metadata accessor for MessagingOptions();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v22 - v16;
  v18 = sub_24AF3557C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_24AEF8F7C(a5, &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessagingOptions);
  v19 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = *(v10 + 80);
  v20[5] = *(v10 + 88);
  v20[6] = a2;
  v20[7] = a3;
  v20[8] = a4;
  sub_24AEF9044(&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for MessagingOptions);
  *(v20 + ((v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  sub_24AF08F10(0, 0, v17, &unk_24AF38120, v20);
}

uint64_t sub_24AEEDB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_24AEF9DD0;

  return sub_24AEEDC10(a5, a6, a7, a8);
}

uint64_t sub_24AEEDC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v5[14] = *v4;
  v5[15] = *v4;
  v6 = sub_24AF3521C();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v8 = *(v7 + 64) + 15;
  v5[18] = swift_task_alloc();
  v9 = type metadata accessor for MessagingOptions();
  v5[19] = v9;
  v10 = *(v9 - 8);
  v5[20] = v10;
  v5[21] = *(v10 + 64);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEEDD98, v4, 0);
}

uint64_t sub_24AEEDD98()
{
  v1 = v0[23];
  v18 = v0[20];
  v19 = v0[21];
  v2 = v0[19];
  v3 = v0[15];
  v21 = v0[14];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[9];
  swift_beginAccess();

  v9 = *(v4 + 168);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v4 + 168);
  *(v4 + 168) = 0x8000000000000000;
  sub_24AF031AC(v5, v7, isUniquelyReferenced_nonNull_native);
  *(v4 + 168) = v22;
  swift_endAccess();
  v11 = (v7 + *(v2 + 52));
  v12 = v11[1];
  v20 = *v11;
  sub_24AEF8F7C(v7, v1, type metadata accessor for MessagingOptions);
  v13 = (*(v18 + 80) + 56) & ~*(v18 + 80);
  v14 = swift_allocObject();
  v0[24] = v14;
  v14[2] = *(v3 + 80);
  v14[3] = *(v3 + 88);
  v14[4] = v4;
  v14[5] = v6;
  v14[6] = v8;
  sub_24AEF9044(v1, v14 + v13, type metadata accessor for MessagingOptions);
  *(v14 + ((v19 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v15 = *(MEMORY[0x277D08920] + 4);

  v16 = swift_task_alloc();
  v0[25] = v16;
  *v16 = v0;
  v16[1] = sub_24AEEDFB4;

  return MEMORY[0x28215EB08]();
}

uint64_t sub_24AEEDFB4()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = sub_24AEEE150;
  }

  else
  {
    v6 = *(v2 + 192);
    v7 = *(v2 + 104);

    v5 = sub_24AEEE0DC;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AEEE0DC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[18];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AEEE150()
{
  v39 = v0;
  v1 = v0[24];

  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[11];
  v5 = sub_24AF3529C();
  __swift_project_value_buffer(v5, qword_281392F00);
  sub_24AEF8F7C(v4, v3, type metadata accessor for MessagingOptions);
  v6 = v2;
  v7 = sub_24AF3527C();
  v8 = sub_24AF3572C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[26];
    v10 = v0[22];
    v37 = v0[16];
    v11 = v0[14];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v38 = v14;
    *v12 = 136446722;
    v15 = sub_24AEE5B34();
    v17 = sub_24AEF599C(v15, v16, &v38);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v18 = sub_24AF35C0C();
    v20 = v19;
    sub_24AEF8FE4(v10, type metadata accessor for MessagingOptions);
    v21 = sub_24AEF599C(v18, v20, &v38);

    *(v12 + 14) = v21;
    *(v12 + 22) = 2114;
    v22 = v9;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v23;
    *v13 = v23;
    _os_log_impl(&dword_24AECF000, v7, v8, "%{public}s: Failed to send raw dictionary with identifier: %{public}s. Error: %{public}@.", v12, 0x20u);
    sub_24AEE2E10(v13, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v14, -1, -1);
    MEMORY[0x24C236490](v12, -1, -1);
  }

  else
  {
    v24 = v0[22];

    sub_24AEF8FE4(v24, type metadata accessor for MessagingOptions);
  }

  v25 = v0[26];
  v27 = v0[17];
  v26 = v0[18];
  v28 = v0[16];
  v29 = v0[12];
  v30 = v0[13];
  v31 = v0[11];
  v0[8] = v25;
  sub_24AF34FFC();
  (*(v27 + 16))(v26, v31, v28);
  swift_beginAccess();
  sub_24AF09284(0, v26);
  swift_endAccess();

  v33 = v0[22];
  v32 = v0[23];
  v34 = v0[18];

  v35 = v0[1];

  return v35();
}

uint64_t sub_24AEEE4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = *MEMORY[0x277D85DE8];
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[4] = a2;
  v9 = *(*a2 + 80);
  v10 = *(*a2 + 88);
  v11 = type metadata accessor for Message();
  v8[11] = v11;
  v12 = *(v11 - 8);
  v8[12] = v12;
  v13 = *(v12 + 64) + 15;
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0) - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v15 = sub_24AF3521C();
  v8[16] = v15;
  v16 = *(v15 - 8);
  v8[17] = v16;
  v17 = *(v16 + 64) + 15;
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v18 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24AEEE6AC, 0, 0);
}

uint64_t sub_24AEEE6AC()
{
  v81 = v0;
  v80[1] = *MEMORY[0x277D85DE8];
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v0[4] + 136);
  v6 = sub_24AF3516C();
  sub_24AF1310C(v2);
  v7 = sub_24AF3565C();

  v8 = MessagingOptions.dictionaryValue.getter();
  sub_24AF13340(v8);

  v9 = sub_24AF352EC();

  v0[2] = 0;
  v0[3] = 0;
  LODWORD(v5) = [v5 sendData:v6 toDestinations:v7 priority:300 options:v9 identifier:v0 + 2 error:v0 + 3];

  v10 = v0[3];
  v11 = v0[2];
  if (!v5)
  {
    v18 = v10;
    v19 = v11;
    sub_24AF350DC();

LABEL_8:
    swift_willThrow();
    v23 = v0[18];
    v22 = v0[19];
    v25 = v0[14];
    v24 = v0[15];
    v26 = v0[13];

    v27 = v0[1];
    v28 = *MEMORY[0x277D85DE8];
    goto LABEL_9;
  }

  if (!v11)
  {
    v20 = v10;
    goto LABEL_7;
  }

  v12 = v0[16];
  v13 = v0[17];
  v14 = v0[15];
  v15 = v0[2];
  sub_24AF353AC();
  v16 = v10;
  v17 = v11;
  sub_24AF351DC();

  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    sub_24AEE2E10(v0[15], &qword_27EFC11C0, &qword_24AF38DC0);
LABEL_7:
    sub_24AED9680();
    swift_allocError();
    *v21 = 0;
    goto LABEL_8;
  }

  v79 = v17;
  (*(v0[17] + 32))(v0[19], v0[15], v0[16]);
  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v30 = v0[18];
  v31 = v0[19];
  v32 = v0[16];
  v33 = v0[17];
  v34 = v0[14];
  v35 = v0[11];
  v36 = v0[12];
  v37 = v0[9];
  v38 = sub_24AF3529C();
  __swift_project_value_buffer(v38, qword_281392F00);
  v78 = *(v36 + 16);
  v78(v34, v37, v35);
  (*(v33 + 16))(v30, v31, v32);
  v39 = sub_24AF3527C();
  v40 = sub_24AF3572C();
  v41 = os_log_type_enabled(v39, v40);
  v43 = v0[18];
  v42 = v0[19];
  v45 = v0[16];
  v44 = v0[17];
  v46 = v0[14];
  if (v41)
  {
    log = v39;
    v77 = v0[19];
    v74 = v0[16];
    v48 = v0[12];
    v47 = v0[13];
    v49 = v0[10];
    v50 = v0[11];
    v72 = v0[18];
    v51 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v80[0] = v75;
    *v51 = 136446722;
    v52 = sub_24AEE5B34();
    v73 = v40;
    v54 = sub_24AEF599C(v52, v53, v80);

    *(v51 + 4) = v54;
    *(v51 + 12) = 2082;
    v78(v47, v46, v50);
    v55 = *(v48 + 8);
    v55(v46, v50);
    v56 = Message.description.getter(v50);
    v58 = v57;
    v55(v47, v50);
    v59 = sub_24AEF599C(v56, v58, v80);

    *(v51 + 14) = v59;
    *(v51 + 22) = 2082;
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v60 = sub_24AF35C0C();
    v62 = v61;
    v63 = *(v44 + 8);
    v63(v72, v74);
    v64 = sub_24AEF599C(v60, v62, v80);

    *(v51 + 24) = v64;
    _os_log_impl(&dword_24AECF000, log, v73, "%{public}s: Sent message %{public}s with identifier: %{public}s", v51, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v75, -1, -1);
    MEMORY[0x24C236490](v51, -1, -1);

    v63(v77, v74);
  }

  else
  {
    (*(v0[12] + 8))(v0[14], v0[11]);

    v65 = *(v44 + 8);
    v65(v43, v45);
    v65(v42, v45);
  }

  v67 = v0[18];
  v66 = v0[19];
  v69 = v0[14];
  v68 = v0[15];
  v70 = v0[13];

  v27 = v0[1];
  v71 = *MEMORY[0x277D85DE8];
LABEL_9:

  return v27();
}

uint64_t sub_24AEEECCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = *MEMORY[0x277D85DE8];
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[4] = a2;
  v9 = *(*a2 + 80);
  v10 = *(*a2 + 88);
  v11 = type metadata accessor for Message();
  v8[11] = v11;
  v12 = *(v11 - 8);
  v8[12] = v12;
  v13 = *(v12 + 64) + 15;
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0) - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v15 = sub_24AF3521C();
  v8[16] = v15;
  v16 = *(v15 - 8);
  v8[17] = v16;
  v17 = *(v16 + 64) + 15;
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v18 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24AEEEEA0, 0, 0);
}

uint64_t sub_24AEEEEA0()
{
  v82 = v0;
  v81[1] = *MEMORY[0x277D85DE8];
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v0[4] + 136);
  v6 = sub_24AF3510C();
  sub_24AF13608(v4);
  v7 = sub_24AF352EC();

  sub_24AF1310C(v1);
  v8 = sub_24AF3565C();

  v9 = MessagingOptions.dictionaryValue.getter();
  sub_24AF13340(v9);

  v10 = sub_24AF352EC();

  v0[2] = 0;
  v0[3] = 0;
  LODWORD(v5) = [v5 sendResourceAtURL:v6 metadata:v7 toDestinations:v8 priority:300 options:v10 identifier:v0 + 2 error:v0 + 3];

  v11 = v0[3];
  v12 = v0[2];
  if (!v5)
  {
    v19 = v11;
    v20 = v12;
    sub_24AF350DC();

LABEL_8:
    swift_willThrow();
    v24 = v0[18];
    v23 = v0[19];
    v26 = v0[14];
    v25 = v0[15];
    v27 = v0[13];

    v28 = v0[1];
    v29 = *MEMORY[0x277D85DE8];
    goto LABEL_9;
  }

  if (!v12)
  {
    v21 = v11;
    goto LABEL_7;
  }

  v13 = v0[16];
  v14 = v0[17];
  v15 = v0[15];
  v16 = v0[2];
  sub_24AF353AC();
  v17 = v11;
  v18 = v12;
  sub_24AF351DC();

  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    sub_24AEE2E10(v0[15], &qword_27EFC11C0, &qword_24AF38DC0);
LABEL_7:
    sub_24AED9680();
    swift_allocError();
    *v22 = 0;
    goto LABEL_8;
  }

  v80 = v18;
  (*(v0[17] + 32))(v0[19], v0[15], v0[16]);
  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v31 = v0[18];
  v32 = v0[19];
  v33 = v0[16];
  v34 = v0[17];
  v35 = v0[14];
  v36 = v0[11];
  v37 = v0[12];
  v38 = v0[9];
  v39 = sub_24AF3529C();
  __swift_project_value_buffer(v39, qword_281392F00);
  v79 = *(v37 + 16);
  v79(v35, v38, v36);
  (*(v34 + 16))(v31, v32, v33);
  v40 = sub_24AF3527C();
  v41 = sub_24AF3572C();
  v42 = os_log_type_enabled(v40, v41);
  v44 = v0[18];
  v43 = v0[19];
  v46 = v0[16];
  v45 = v0[17];
  v47 = v0[14];
  if (v42)
  {
    log = v40;
    v78 = v0[19];
    v75 = v0[16];
    v49 = v0[12];
    v48 = v0[13];
    v50 = v0[10];
    v51 = v0[11];
    v73 = v0[18];
    v52 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v81[0] = v76;
    *v52 = 136446722;
    v53 = sub_24AEE5B34();
    v74 = v41;
    v55 = sub_24AEF599C(v53, v54, v81);

    *(v52 + 4) = v55;
    *(v52 + 12) = 2082;
    v79(v48, v47, v51);
    v56 = *(v49 + 8);
    v56(v47, v51);
    v57 = Message.description.getter(v51);
    v59 = v58;
    v56(v48, v51);
    v60 = sub_24AEF599C(v57, v59, v81);

    *(v52 + 14) = v60;
    *(v52 + 22) = 2082;
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v61 = sub_24AF35C0C();
    v63 = v62;
    v64 = *(v45 + 8);
    v64(v73, v75);
    v65 = sub_24AEF599C(v61, v63, v81);

    *(v52 + 24) = v65;
    _os_log_impl(&dword_24AECF000, log, v74, "%{public}s: Sent message (resource) %{public}s with identifier: %{public}s", v52, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v76, -1, -1);
    MEMORY[0x24C236490](v52, -1, -1);

    v64(v78, v75);
  }

  else
  {
    (*(v0[12] + 8))(v0[14], v0[11]);

    v66 = *(v45 + 8);
    v66(v44, v46);
    v66(v43, v46);
  }

  v68 = v0[18];
  v67 = v0[19];
  v70 = v0[14];
  v69 = v0[15];
  v71 = v0[13];

  v28 = v0[1];
  v72 = *MEMORY[0x277D85DE8];
LABEL_9:

  return v28();
}

uint64_t sub_24AEEF4F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v8 = *a2;
  v9 = *(*(type metadata accessor for MessagingOptions() - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v10 = *(v8 + 80);
  v11 = *(v8 + 88);
  v12 = type metadata accessor for Message();
  v5[6] = v12;
  v13 = *(v12 - 8);
  v5[7] = v13;
  v14 = *(v13 + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v15 = sub_24AF3521C();
  v5[10] = v15;
  v16 = *(v15 - 8);
  v5[11] = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v5[12] = v18;
  v19 = swift_task_alloc();
  v5[13] = v19;
  *v19 = v5;
  v19[1] = sub_24AEEF6D0;

  return InternetMessaging.send(message:messageOptions:)(v18, a3, a4);
}

uint64_t sub_24AEEF6D0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_24AEEFB80;
  }

  else
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v4 = sub_24AEEF7FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AEEF7FC()
{
  v42 = v0;
  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = sub_24AF3529C();
  __swift_project_value_buffer(v7, qword_281392F00);
  v8 = *(v3 + 16);
  v8(v1, v6, v2);
  sub_24AEF8F7C(v5, v4, type metadata accessor for MessagingOptions);
  v9 = sub_24AF3527C();
  v10 = sub_24AF3572C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[9];
    v36 = v8;
    v12 = v0[7];
    v13 = v0[8];
    v14 = v0[6];
    v37 = v0[5];
    v38 = v0[10];
    v40 = v10;
    v15 = v0[4];
    v16 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = v39;
    *v16 = 136446722;
    v17 = sub_24AEE5B34();
    v19 = sub_24AEF599C(v17, v18, &v41);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    v36(v13, v11, v14);
    v20 = *(v12 + 8);
    v20(v11, v14);
    v21 = Message.description.getter(v14);
    v23 = v22;
    v20(v13, v14);
    v24 = sub_24AEF599C(v21, v23, &v41);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2082;
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v25 = sub_24AF35C0C();
    v27 = v26;
    sub_24AEF8FE4(v37, type metadata accessor for MessagingOptions);
    v28 = sub_24AEF599C(v25, v27, &v41);

    *(v16 + 24) = v28;
    _os_log_impl(&dword_24AECF000, v9, v40, "%{public}s: Sent message (with response) %{public}s with identifier: %{public}s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v39, -1, -1);
    MEMORY[0x24C236490](v16, -1, -1);
  }

  else
  {
    v29 = v0[5];
    (*(v0[7] + 8))(v0[9], v0[6]);

    sub_24AEF8FE4(v29, type metadata accessor for MessagingOptions);
  }

  v30 = v0[12];
  v31 = v0[8];
  v32 = v0[9];
  v33 = v0[5];

  v34 = v0[1];

  return v34();
}

uint64_t sub_24AEEFB80()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];

  v5 = v0[1];
  v6 = v0[14];

  return v5();
}

uint64_t sub_24AEEFC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x277D85DE8];
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[4] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v8 = sub_24AF3521C();
  v6[10] = v8;
  v9 = *(v8 - 8);
  v6[11] = v9;
  v10 = *(v9 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24AEEFD44, 0, 0);
}

uint64_t sub_24AEEFD44()
{
  v58 = v0;
  v57[1] = *MEMORY[0x277D85DE8];
  v2 = v0[6];
  v1 = v0[7];
  v3 = *(v0[4] + 136);
  sub_24AF13608(v0[5]);
  v4 = sub_24AF352EC();

  sub_24AF1310C(v2);
  v5 = sub_24AF3565C();

  v6 = MessagingOptions.dictionaryValue.getter();
  sub_24AF13340(v6);

  v7 = sub_24AF352EC();

  v0[2] = 0;
  v0[3] = 0;
  LODWORD(v3) = [v3 sendMessage:v4 toDestinations:v5 priority:300 options:v7 identifier:v0 + 2 error:v0 + 3];

  v8 = v0[3];
  v9 = v0[2];
  if (!v3)
  {
    v16 = v8;
    v17 = v9;
    sub_24AF350DC();

LABEL_8:
    swift_willThrow();
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[9];

    v23 = v0[1];
    v24 = *MEMORY[0x277D85DE8];
    goto LABEL_9;
  }

  if (!v9)
  {
    v18 = v8;
    goto LABEL_7;
  }

  v10 = v0[10];
  v11 = v0[11];
  v12 = v0[9];
  v13 = v0[2];
  sub_24AF353AC();
  v14 = v8;
  v15 = v9;
  sub_24AF351DC();

  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_24AEE2E10(v0[9], &qword_27EFC11C0, &qword_24AF38DC0);
LABEL_7:
    sub_24AED9680();
    swift_allocError();
    *v19 = 0;
    goto LABEL_8;
  }

  v56 = v15;
  (*(v0[11] + 32))(v0[13], v0[9], v0[10]);
  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v27 = v0[12];
  v26 = v0[13];
  v29 = v0[10];
  v28 = v0[11];
  v30 = sub_24AF3529C();
  __swift_project_value_buffer(v30, qword_281392F00);
  (*(v28 + 16))(v27, v26, v29);
  v31 = sub_24AF3527C();
  v32 = sub_24AF3572C();
  v33 = os_log_type_enabled(v31, v32);
  v35 = v0[12];
  v34 = v0[13];
  v37 = v0[10];
  v36 = v0[11];
  if (v33)
  {
    v53 = v32;
    v38 = v0[8];
    v39 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v57[0] = v54;
    *v39 = 136446466;
    v40 = sub_24AEE5B34();
    v55 = v34;
    v42 = sub_24AEF599C(v40, v41, v57);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2082;
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v43 = sub_24AF35C0C();
    v45 = v44;
    v46 = *(v36 + 8);
    v46(v35, v37);
    v47 = sub_24AEF599C(v43, v45, v57);

    *(v39 + 14) = v47;
    _os_log_impl(&dword_24AECF000, v31, v53, "%{public}s: Sent raw dictionary to with identifier: %{public}s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v54, -1, -1);
    MEMORY[0x24C236490](v39, -1, -1);

    v46(v55, v37);
  }

  else
  {

    v48 = *(v36 + 8);
    v48(v35, v37);
    v48(v34, v37);
  }

  v50 = v0[12];
  v49 = v0[13];
  v51 = v0[9];

  v23 = v0[1];
  v52 = *MEMORY[0x277D85DE8];
LABEL_9:

  return v23();
}

uint64_t InternetMessaging.makeSession<A>(destination:invitationContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 136) = *a1;
  v6 = *(a1 + 16);
  *(v5 + 48) = *(a1 + 8);
  *(v5 + 56) = v6;
  return MEMORY[0x2822009F8](sub_24AEF02A0, v4, 0);
}

uint64_t sub_24AEF02A0()
{
  v21 = v0;
  v1 = *(v0 + 16);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = sub_24AF350CC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_24AF350BC();
  v6 = *(v2 + 16);
  *(v0 + 64) = sub_24AF3509C();
  *(v0 + 72) = v7;

  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  v16[0] = *(v0 + 136);
  v17 = v8;
  v18 = v9;
  v11 = *(v10 + 136);
  v12 = *(v10 + 144);
  LOBYTE(v10) = *(v10 + 152);
  v19 = v12;
  v20 = v10;
  v13 = v11;

  sub_24AF0889C(v13, v16, &v19);
  *(v0 + 80) = v14;

  return MEMORY[0x2822009F8](sub_24AEF0438, v14, 0);
}

uint64_t sub_24AEF0438()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_24AF05840();
  v4 = swift_task_alloc();
  v0[11] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_24AEF0508;

  return sub_24AF069F8(sub_24AEF708C, v4);
}

uint64_t sub_24AEF0508()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {
    v4 = v3[10];

    return MEMORY[0x2822009F8](sub_24AEF07A4, v4, 0);
  }

  else
  {
    v6 = v3[10];
    v5 = v3[11];

    v7 = swift_task_alloc();
    v3[14] = v7;
    *v7 = v3;
    v7[1] = sub_24AEF0678;

    return sub_24AF07168();
  }
}

uint64_t sub_24AEF0678(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;

  if (v1)
  {
    v4[16] = v1;
    v7 = v4[5];
    v8 = sub_24AEF08E0;
  }

  else
  {
    v7 = v4[5];
    v4[15] = a1;
    v8 = sub_24AEF0814;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24AEF07A4()
{
  v1 = v0[11];

  v0[16] = v0[13];
  v2 = v0[5];

  return MEMORY[0x2822009F8](sub_24AEF08E0, v2, 0);
}

uint64_t sub_24AEF0814()
{
  v12 = v0;
  v1 = v0[15];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[3];
  v6 = v0[4];
  type metadata accessor for SessionMessaging();
  v10[0] = xmmword_24AF37E10;
  v10[1] = xmmword_24AF37E20;
  v11 = 6;
  v7 = sub_24AF09200(v2, v1, v10);
  sub_24AED6198(v4, v3);
  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_24AEF08E0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  sub_24AED6198(v3, v2);
  v4 = v0[16];
  v5 = v0[1];

  return v5();
}

uint64_t sub_24AEF0954(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 152) = a7;
  *(v8 + 160) = v7;
  *(v8 + 136) = a4;
  *(v8 + 144) = a5;
  *(v8 + 120) = a1;
  *(v8 + 128) = a2;
  *(v8 + 168) = *v7;
  v11 = *v7;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30) - 8) + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = *(v11 + 80);
  *(v8 + 192) = *(v11 + 88);
  v13 = type metadata accessor for Message();
  *(v8 + 200) = v13;
  v14 = type metadata accessor for MessageContext();
  *(v8 + 208) = v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v8 + 216) = TupleTypeMetadata2;
  v16 = *(TupleTypeMetadata2 - 8);
  *(v8 + 224) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  v18 = sub_24AF3521C();
  *(v8 + 240) = v18;
  v19 = *(v18 - 8);
  *(v8 + 248) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0) - 8) + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  v22 = type metadata accessor for MessagingOptions();
  *(v8 + 304) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  v24 = *(v14 - 8);
  *(v8 + 320) = v24;
  *(v8 + 328) = *(v24 + 64);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v25 = *(v13 - 8);
  *(v8 + 360) = v25;
  *(v8 + 368) = *(v25 + 64);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  v26 = swift_task_alloc();
  v27 = *a3;
  v28 = a3[1];
  *(v8 + 424) = v26;
  *(v8 + 432) = v27;
  *(v8 + 536) = *a6;
  v29 = *(a6 + 8);
  v30 = *(a6 + 16);
  *(v8 + 440) = v28;
  *(v8 + 448) = v29;
  *(v8 + 456) = v30;

  return MEMORY[0x2822009F8](sub_24AEF0D14, v7, 0);
}

uint64_t sub_24AEF0D14()
{
  v280 = v0;
  v1 = v0[20];
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  if (v2 != v0[15] || v3 != v0[16])
  {
    v5 = *(v1 + 112);
    v6 = *(v1 + 120);
    if ((sub_24AF35C4C() & 1) == 0)
    {
      if (qword_281392EF8 != -1)
      {
        swift_once();
      }

      v54 = v0[20];
      v55 = v0[16];
      v56 = sub_24AF3529C();
      __swift_project_value_buffer(v56, qword_281392F00);

      v57 = sub_24AF3527C();
      v58 = sub_24AF3570C();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = v0[21];
        v60 = v0[15];
        v275 = v0[16];
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v279[0] = v62;
        *v61 = 136446722;
        v63 = sub_24AEE5B34();
        v65 = sub_24AEF599C(v63, v64, v279);

        *(v61 + 4) = v65;
        *(v61 + 12) = 2082;
        *(v61 + 14) = sub_24AEF599C(v2, v3, v279);
        *(v61 + 22) = 2082;
        *(v61 + 24) = sub_24AEF599C(v60, v275, v279);
        _os_log_impl(&dword_24AECF000, v57, v58, "%{public}s: Ignoring delegate callback from wrong IDS service! Expected %{public}s, received: %{public}s", v61, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C236490](v62, -1, -1);
        MEMORY[0x24C236490](v61, -1, -1);
      }

      goto LABEL_48;
    }
  }

  v7 = v0[52];
  v8 = v0[25];
  v10 = v0[17];
  v9 = v0[18];
  v11 = sub_24AF3508C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_24AF3507C();
  swift_getWitnessTable();
  sub_24AF3505C();
  v15 = v0[52];
  v14 = v0[53];
  v16 = v0[45];
  v17 = v0[25];
  v18 = v0[26];
  v19 = v0[19];

  v20 = *(v16 + 32);
  v20(v14, v15, v17);
  if (*(v19 + *(v18 + 36)) == 1)
  {
    v21 = v0[20];
    v22 = *(v21 + 264);
    v0[58] = v22;
    v0[59] = *(v21 + 272);
    if (v22)
    {
      v270 = v22;
      sub_24AED1164(v22);
      if (qword_281392EF8 != -1)
      {
        swift_once();
      }

      v23 = v0[57];
      v24 = v0[53];
      v25 = v0[51];
      v27 = v0[44];
      v26 = v0[45];
      v28 = v0[25];
      v29 = v0[19];
      v30 = v0[16];
      v31 = sub_24AF3529C();
      v0[60] = __swift_project_value_buffer(v31, qword_281392F00);
      sub_24AEF8F7C(v29, v27, type metadata accessor for MessageContext);
      v32 = *(v26 + 16);
      v32(v25, v24, v28);

      v33 = sub_24AF3527C();
      v34 = sub_24AF3572C();

      if (os_log_type_enabled(v33, v34))
      {
        v237 = v0[56];
        v243 = v0[57];
        v260 = v0[51];
        v250 = v0[50];
        v35 = v0[44];
        v36 = v0[45];
        v225 = v0[30];
        v38 = v0[25];
        v37 = v0[26];
        v39 = v0[21];
        v229 = v0[15];
        v232 = v0[16];
        v40 = swift_slowAlloc();
        v264 = swift_slowAlloc();
        v279[0] = v264;
        *v40 = 136316162;
        v41 = sub_24AEE5B34();
        log = v33;
        v43 = sub_24AEF599C(v41, v42, v279);

        *(v40 + 4) = v43;
        *(v40 + 12) = 2080;
        v44 = *(v37 + 20);
        sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
        v45 = sub_24AF35C0C();
        v47 = v46;
        sub_24AEF8FE4(v35, type metadata accessor for MessageContext);
        v48 = sub_24AEF599C(v45, v47, v279);

        *(v40 + 14) = v48;
        *(v40 + 22) = 2080;
        *(v40 + 24) = sub_24AEF599C(v229, v232, v279);
        *(v40 + 32) = 2080;
        *(v40 + 34) = sub_24AEF599C(v237, v243, v279);
        *(v40 + 42) = 2080;
        v32(v250, v260, v38);
        v49 = *(v36 + 8);
        v49(v260, v38);
        v50 = Message.description.getter(v38);
        v52 = v51;
        v49(v250, v38);
        v53 = sub_24AEF599C(v50, v52, v279);

        *(v40 + 44) = v53;
        _os_log_impl(&dword_24AECF000, log, v34, "%s: Received message %s on %s from %s: %s expecting response", v40, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C236490](v264, -1, -1);
        MEMORY[0x24C236490](v40, -1, -1);
      }

      else
      {
        v127 = v0[44];
        v49 = *(v0[45] + 8);
        v49(v0[51], v0[25]);

        sub_24AEF8FE4(v127, type metadata accessor for MessageContext);
      }

      v0[61] = v49;
      v128 = *(v0 + 28);
      v129 = v0[55];
      v0[11] = v0[54];
      v130 = *(v0 + 536);
      v0[12] = v129;
      *(v0 + 64) = v130;
      *(v0 + 9) = v128;
      v131 = sub_24AEE2954(MEMORY[0x277D84F90]);
      v0[62] = v131;
      v267 = (v270 + *v270);
      v132 = v270[1];
      v133 = swift_task_alloc();
      v0[63] = v133;
      *v133 = v0;
      v133[1] = sub_24AEF253C;
      v134 = v0[53];
      v135 = v0[49];
      v136 = v0[19];

      return (v267)(v135, v0 + 11, v0 + 8, v134, v131, v136);
    }

    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v114 = sub_24AF3529C();
    __swift_project_value_buffer(v114, qword_281392F00);
    v115 = sub_24AF3527C();
    v116 = sub_24AF3570C();
    v117 = os_log_type_enabled(v115, v116);
    v118 = v0[53];
    v119 = v0[45];
    v120 = v0[25];
    if (v117)
    {
      v121 = v0[21];
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v279[0] = v123;
      *v122 = 136446210;
      v124 = sub_24AEE5B34();
      v126 = sub_24AEF599C(v124, v125, v279);

      *(v122 + 4) = v126;
      _os_log_impl(&dword_24AECF000, v115, v116, "%{public}s: No replyCallback!", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v123);
      MEMORY[0x24C236490](v123, -1, -1);
      MEMORY[0x24C236490](v122, -1, -1);
    }

    (*(v119 + 8))(v118, v120);
  }

  else
  {
    v66 = v0[36];
    v67 = v0[30];
    v68 = v0[31];
    sub_24AEF8C60(v0[19], v66);
    v69 = (*(v68 + 48))(v66, 1, v67);
    v70 = v0[36];
    if (v69 == 1)
    {
      sub_24AEE2E10(v0[36], &qword_27EFC11C0, &qword_24AF38DC0);
    }

    else
    {
      v71 = v0[27];
      v72 = v0[20];
      (*(v0[31] + 32))(v0[34], v0[36], v0[30]);
      swift_beginAccess();
      v73 = *(v72 + 176);

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0898, &qword_24AF37D00);
      sub_24AF3501C();
      sub_24AEF8F34(&qword_281393400, MEMORY[0x277CC95F0]);
      sub_24AF3533C();

      if (v0[13])
      {
        v265 = v0[13];
        if (qword_281392EF8 != -1)
        {
          swift_once();
        }

        v244 = v0[57];
        v276 = v0[53];
        v74 = v0[48];
        v75 = v0[45];
        v76 = v0[43];
        v251 = v0[33];
        loga = v0[34];
        v77 = v0[31];
        v238 = v0[30];
        v78 = v0[25];
        v79 = v0[19];
        v80 = v0[16];
        v81 = sub_24AF3529C();
        v82 = v0;
        __swift_project_value_buffer(v81, qword_281392F00);
        sub_24AEF8F7C(v79, v76, type metadata accessor for MessageContext);
        v83 = v276;
        v277 = *(v75 + 16);
        v277(v74, v83, v78);
        v84 = v251;
        v252 = *(v77 + 16);
        v252(v84, loga, v238);

        v85 = sub_24AF3527C();
        v86 = sub_24AF3572C();

        if (os_log_type_enabled(v85, v86))
        {
          v239 = v0[57];
          v245 = v0[50];
          v230 = v0[48];
          v87 = v0[45];
          v88 = v82[43];
          v233 = v82[33];
          v226 = v85;
          v89 = v82[30];
          v90 = v82[31];
          v91 = v82[25];
          v92 = v82[26];
          v223 = v86;
          v93 = v82[21];
          v218 = v82[16];
          v220 = v82[56];
          v216 = v89;
          v217 = v82[15];
          v94 = swift_slowAlloc();
          v222 = swift_slowAlloc();
          v279[0] = v222;
          *v94 = 136316418;
          v95 = sub_24AEE5B34();
          v97 = sub_24AEF599C(v95, v96, v279);

          *(v94 + 4) = v97;
          *(v94 + 12) = 2080;
          v98 = *(v92 + 20);
          sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
          v99 = sub_24AF35C0C();
          v101 = v100;
          sub_24AEF8FE4(v88, type metadata accessor for MessageContext);
          v102 = sub_24AEF599C(v99, v101, v279);

          *(v94 + 14) = v102;
          *(v94 + 22) = 2080;
          *(v94 + 24) = sub_24AEF599C(v217, v218, v279);
          *(v94 + 32) = 2080;
          *(v94 + 34) = sub_24AEF599C(v220, v239, v279);
          *(v94 + 42) = 2080;
          v277(v245, v230, v91);
          v103 = *(v87 + 8);
          v103(v230, v91);
          v104 = v245;
          v105 = Message.description.getter(v91);
          v107 = v106;
          v246 = v103;
          v103(v104, v91);
          v108 = sub_24AEF599C(v105, v107, v279);

          *(v94 + 44) = v108;
          *(v94 + 52) = 2080;
          v109 = v233;
          v110 = sub_24AF35C0C();
          v112 = v111;
          v234 = *(v90 + 8);
          v234(v109, v216);
          v113 = sub_24AEF599C(v110, v112, v279);

          *(v94 + 54) = v113;
          _os_log_impl(&dword_24AECF000, v226, v223, "%s: Received message %s on %s from %s: %s in response to %s", v94, 0x3Eu);
          swift_arrayDestroy();
          MEMORY[0x24C236490](v222, -1, -1);
          MEMORY[0x24C236490](v94, -1, -1);
        }

        else
        {
          v152 = v0[43];
          v153 = v0[33];
          v154 = v0[30];
          v155 = v0[31];
          v246 = *(v82[45] + 8);
          v246(v82[48], v82[25]);

          v234 = *(v155 + 8);
          v234(v153, v154);
          sub_24AEF8FE4(v152, type metadata accessor for MessageContext);
        }

        v0 = v82;
        v227 = v82[53];
        v156 = v82[34];
        v157 = v82[32];
        v158 = v82[29];
        v159 = v82[30];
        v161 = v82[27];
        v160 = v82[28];
        v162 = v82[25];
        v163 = v82[19];
        v164 = *(v161 + 48);
        (v277)(v0[29]);
        sub_24AEF8F7C(v163, v158 + v164, type metadata accessor for MessageContext);
        sub_24AF3500C();
        (*(v160 + 8))(v158, v161);
        v252(v157, v156, v159);
        v0[14] = 0;
        swift_beginAccess();
        sub_24AF3532C();
        sub_24AF3534C();
        swift_endAccess();

        v234(v156, v159);
        v246(v227, v162);
        goto LABEL_48;
      }

      if (qword_281392EF8 != -1)
      {
        swift_once();
      }

      v138 = sub_24AF3529C();
      __swift_project_value_buffer(v138, qword_281392F00);
      v139 = sub_24AF3527C();
      v140 = sub_24AF3570C();
      v141 = os_log_type_enabled(v139, v140);
      v142 = v0[34];
      v143 = v0[30];
      v144 = v0[31];
      if (v141)
      {
        v271 = v0[34];
        v145 = v0[21];
        v146 = swift_slowAlloc();
        v279[0] = swift_slowAlloc();
        v147 = v279[0];
        *v146 = 136315138;
        v148 = sub_24AEE5B34();
        v150 = v20;
        v151 = sub_24AEF599C(v148, v149, v279);

        *(v146 + 4) = v151;
        v20 = v150;
        _os_log_impl(&dword_24AECF000, v139, v140, "%s: Got unexpected response!", v146, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v147);
        MEMORY[0x24C236490](v147, -1, -1);
        MEMORY[0x24C236490](v146, -1, -1);

        (*(v144 + 8))(v271, v143);
      }

      else
      {

        (*(v144 + 8))(v142, v143);
      }
    }

    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v165 = v0[57];
    v166 = v0[53];
    v167 = v0[47];
    v168 = v0[45];
    v169 = v0[25];
    v170 = v0[16];
    v171 = sub_24AF3529C();
    __swift_project_value_buffer(v171, qword_281392F00);
    v172 = v169;
    v173 = *(v168 + 16);
    v173(v167, v166, v172);

    v174 = sub_24AF3527C();
    v175 = sub_24AF3572C();

    v268 = v20;
    if (os_log_type_enabled(v174, v175))
    {
      v247 = v0[56];
      v253 = v0[57];
      v176 = v0[50];
      logb = v0[47];
      v177 = v0[45];
      v178 = v0[25];
      v272 = v175;
      v179 = v0[21];
      v235 = v0[15];
      v240 = v0[16];
      v180 = swift_slowAlloc();
      v261 = swift_slowAlloc();
      v279[0] = v261;
      *v180 = 136316163;
      v181 = sub_24AEE5B34();
      v183 = sub_24AEF599C(v181, v182, v279);

      *(v180 + 4) = v183;
      *(v180 + 12) = 2082;
      *(v180 + 14) = sub_24AEF599C(v235, v240, v279);
      *(v180 + 22) = 2160;
      *(v180 + 24) = 1752392040;
      *(v180 + 32) = 2081;
      *(v180 + 34) = sub_24AEF599C(v247, v253, v279);
      *(v180 + 42) = 2082;
      v173(v176, logb, v178);
      v184 = *(v177 + 8);
      v184(logb, v178);
      v185 = Message.description.getter(v178);
      v187 = v186;
      v184(v176, v178);
      v188 = sub_24AEF599C(v185, v187, v279);

      *(v180 + 44) = v188;
      _os_log_impl(&dword_24AECF000, v174, v272, "%s: Received message on %{public}s from %{private,mask.hash}s: %{public}s", v180, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v261, -1, -1);
      MEMORY[0x24C236490](v180, -1, -1);
    }

    else
    {
      v184 = *(v0[45] + 8);
      v184(v0[47], v0[25]);
    }

    v189 = v173;
    v190 = v0[20];
    v191 = *(v190 + 200);
    if (v191)
    {
      v236 = *(v0 + 536);
      v241 = v0[56];
      v248 = v0[57];
      v228 = v0[54];
      v231 = v0[55];
      v192 = v0[53];
      v262 = v184;
      v193 = v0[50];
      v194 = v189;
      v224 = v0[46];
      v273 = v0[45];
      v195 = v0[42];
      v219 = v0[40];
      v196 = v0[25];
      v197 = v0[22];
      v254 = v197;
      v198 = v0[19];
      v199 = *(v190 + 208);
      v200 = sub_24AF3557C();
      v221 = *(v0 + 23);
      (*(*(v200 - 8) + 56))(v197, 1, 1, v200);
      v194(v193, v192, v196);
      sub_24AEF8F7C(v198, v195, type metadata accessor for MessageContext);
      v201 = (*(v273 + 80) + 104) & ~*(v273 + 80);
      v202 = (v224 + *(v219 + 80) + v201) & ~*(v219 + 80);
      v203 = swift_allocObject();
      *(v203 + 16) = 0;
      *(v203 + 24) = 0;
      *(v203 + 32) = v221;
      *(v203 + 48) = v191;
      *(v203 + 56) = v199;
      *(v203 + 64) = v228;
      *(v203 + 72) = v231;
      *(v203 + 80) = v236;
      *(v203 + 88) = v241;
      *(v203 + 96) = v248;
      v268(v203 + v201, v193, v196);
      sub_24AEF9044(v195, v203 + v202, type metadata accessor for MessageContext);
      sub_24AED1164(v191);

      sub_24AED1164(v191);

      sub_24AF08F10(0, 0, v254, &unk_24AF380F8, v203);

      sub_24AED56FC(v191);
      v262(v192, v196);
    }

    else
    {
      v204 = v0[45] + 8;
      v184(v0[53], v0[25]);
    }
  }

LABEL_48:
  v206 = v0[52];
  v205 = v0[53];
  v208 = v0[50];
  v207 = v0[51];
  v210 = v0[48];
  v209 = v0[49];
  v211 = v0[47];
  v213 = v0[43];
  v212 = v0[44];
  v214 = v0[42];
  v242 = v0[39];
  v249 = v0[37];
  v255 = v0[36];
  logc = v0[35];
  v263 = v0[34];
  v266 = v0[33];
  v269 = v0[32];
  v274 = v0[29];
  v278 = v0[22];

  v215 = v0[1];

  return v215();
}

uint64_t sub_24AEF253C()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v9 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);
    v5 = sub_24AEF2B68;
  }

  else
  {
    v6 = *(v2 + 496);
    v7 = *(v2 + 160);

    v5 = sub_24AEF2664;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AEF2664()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 536);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 296);
  v6 = *(v0 + 240);
  v7 = *(v0 + 248);
  v8 = *(v0 + 208);
  v22 = *(v0 + 152);
  v23 = *(v0 + 448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0748, &qword_24AF38100);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24AF37AB0;
  *(v9 + 32) = v2;
  *(v9 + 40) = v23;
  *(v9 + 48) = v1;
  (*(v7 + 16))(v5, v22 + *(v8 + 20), v6);
  v10 = *(v7 + 56);
  v10(v5, 0, 1, v6);

  v11 = MEMORY[0x277D84F90];
  v24 = sub_24AEF6B54(MEMORY[0x277D84F90]);
  v12 = sub_24AEF6B54(v11);
  v13 = v4[7];
  v10(v3 + v13, 1, 1, v6);
  sub_24AF3520C();
  *(v3 + v4[5]) = v9;
  *(v3 + v4[6]) = 0;
  sub_24AEF8E70(v5, v3 + v13);
  v14 = v3 + v4[8];
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v3 + v4[9]) = 0;
  *(v3 + v4[10]) = v24;
  *(v3 + v4[11]) = v12;
  v15 = (v3 + v4[12]);
  *v15 = 0;
  v15[1] = 0;
  *(v3 + v4[13]) = xmmword_24AF37E10;
  v16 = swift_task_alloc();
  *(v0 + 520) = v16;
  *v16 = v0;
  v16[1] = sub_24AEF287C;
  v17 = *(v0 + 392);
  v18 = *(v0 + 312);
  v19 = *(v0 + 280);
  v20 = *(v0 + 160);

  return InternetMessaging.send(message:messageOptions:)(v19, v17, v18);
}

uint64_t sub_24AEF287C()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v8 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v4 = v2[20];
    v5 = sub_24AEF2E74;
  }

  else
  {
    v6 = v2[20];
    (*(v2[31] + 8))(v2[35], v2[30]);
    v5 = sub_24AEF29B4;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AEF29B4()
{
  v1 = v0[59];
  v2 = v0[53];
  v3 = v0[49];
  v4 = v0[45];
  v5 = v0[39];
  v6 = v0[25];
  sub_24AED56FC(v0[58]);
  v7 = *(v4 + 8);
  v7(v3, v6);
  v7(v2, v6);
  sub_24AEF8FE4(v5, type metadata accessor for MessagingOptions);
  v9 = v0[52];
  v8 = v0[53];
  v11 = v0[50];
  v10 = v0[51];
  v12 = v0[48];
  v13 = v0[49];
  v14 = v0[47];
  v16 = v0[43];
  v15 = v0[44];
  v17 = v0[42];
  v20 = v0[39];
  v21 = v0[37];
  v22 = v0[36];
  v23 = v0[35];
  v24 = v0[34];
  v25 = v0[33];
  v26 = v0[32];
  v27 = v0[29];
  v28 = v0[22];

  v18 = v0[1];

  return v18();
}

uint64_t sub_24AEF2B68()
{
  v48 = v0;
  v1 = v0[62];

  v2 = v0[64];
  v3 = v0[60];
  v4 = v0[61];
  v5 = v2;
  v6 = sub_24AF3527C();
  v7 = sub_24AF3570C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[58];
  v10 = v0[53];
  v11 = v0[45];
  v12 = v0[25];
  if (v8)
  {
    v45 = v0[53];
    v13 = v0[21];
    v41 = v0[59];
    v14 = swift_slowAlloc();
    v43 = v12;
    v15 = swift_slowAlloc();
    v39 = v4;
    v16 = swift_slowAlloc();
    v47 = v16;
    *v14 = 136446466;
    v17 = sub_24AEE5B34();
    v19 = sub_24AEF599C(v17, v18, &v47);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2114;
    v20 = v2;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v15 = v21;
    _os_log_impl(&dword_24AECF000, v6, v7, "%{public}s: Error sending response: %{public}@", v14, 0x16u);
    sub_24AEE2E10(v15, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C236490](v16, -1, -1);
    MEMORY[0x24C236490](v14, -1, -1);
    sub_24AED56FC(v9);

    v39(v45, v43);
  }

  else
  {
    sub_24AED56FC(v0[58]);

    v4(v10, v12);
  }

  v23 = v0[52];
  v22 = v0[53];
  v25 = v0[50];
  v24 = v0[51];
  v26 = v0[48];
  v27 = v0[49];
  v28 = v0[47];
  v30 = v0[43];
  v29 = v0[44];
  v31 = v0[42];
  v34 = v0[39];
  v35 = v0[37];
  v36 = v0[36];
  v37 = v0[35];
  v38 = v0[34];
  v40 = v0[33];
  v42 = v0[32];
  v44 = v0[29];
  v46 = v0[22];

  v32 = v0[1];

  return v32();
}

uint64_t sub_24AEF2E74()
{
  v48 = v0;
  v1 = v0[39];
  v2 = *(v0[45] + 8);
  v2(v0[49], v0[25]);
  sub_24AEF8FE4(v1, type metadata accessor for MessagingOptions);
  v3 = v0[66];
  v4 = v0[60];
  v5 = v3;
  v6 = sub_24AF3527C();
  v7 = sub_24AF3570C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[58];
  v10 = v0[53];
  v11 = v0[45];
  v12 = v0[25];
  if (v8)
  {
    v45 = v0[53];
    v13 = v0[21];
    v41 = v0[59];
    v14 = swift_slowAlloc();
    v43 = v12;
    v15 = swift_slowAlloc();
    v39 = v2;
    v16 = swift_slowAlloc();
    v47 = v16;
    *v14 = 136446466;
    v17 = sub_24AEE5B34();
    v19 = sub_24AEF599C(v17, v18, &v47);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2114;
    v20 = v3;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v15 = v21;
    _os_log_impl(&dword_24AECF000, v6, v7, "%{public}s: Error sending response: %{public}@", v14, 0x16u);
    sub_24AEE2E10(v15, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C236490](v16, -1, -1);
    MEMORY[0x24C236490](v14, -1, -1);
    sub_24AED56FC(v9);

    v39(v45, v43);
  }

  else
  {
    sub_24AED56FC(v0[58]);

    v2(v10, v12);
  }

  v23 = v0[52];
  v22 = v0[53];
  v25 = v0[50];
  v24 = v0[51];
  v26 = v0[48];
  v27 = v0[49];
  v28 = v0[47];
  v30 = v0[43];
  v29 = v0[44];
  v31 = v0[42];
  v34 = v0[39];
  v35 = v0[37];
  v36 = v0[36];
  v37 = v0[35];
  v38 = v0[34];
  v40 = v0[33];
  v42 = v0[32];
  v44 = v0[29];
  v46 = v0[22];

  v32 = v0[1];

  return v32();
}

uint64_t sub_24AEF31B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 104) = v11;
  *(v8 + 112) = v12;
  *(v8 + 88) = v10;
  *(v8 + 136) = a8;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  return MEMORY[0x2822009F8](sub_24AEF31F0, 0, 0);
}

uint64_t sub_24AEF31F0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 136);
  v3 = *(v0 + 80);
  *(v0 + 40) = *(v0 + 72);
  v4 = *(v0 + 56);
  *(v0 + 48) = v3;
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  v5 = sub_24AEE2954(MEMORY[0x277D84F90]);
  *(v0 + 120) = v5;
  v12 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_24AEF3334;
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v10 = *(v0 + 64);

  return v12(v0 + 40, v0 + 16, v8, v5, v9);
}

uint64_t sub_24AEF3334()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_24AEF3444(void (*a1)(char *, uint64_t), unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7)
{
  v102 = a7;
  v109 = a5;
  v111 = *v7;
  v12 = v111;
  v13 = type metadata accessor for MessageContext();
  v100 = *(v13 - 8);
  v14 = *(v100 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v101 = v15;
  v107 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v108 = &v86 - v18;
  v19 = *(v12 + 80);
  v98 = *(v12 + 88);
  v99 = v19;
  v20 = type metadata accessor for Message();
  v110 = *(v20 - 8);
  isa = v110[8].isa;
  v22 = MEMORY[0x28223BE20](v20);
  v106 = &v86 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v103 = &v86 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v86 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v86 - v28;
  v30 = a3[1];
  v96 = *a3;
  v97 = v30;
  v95 = *a6;
  v31 = *(a6 + 1);
  v104 = *(a6 + 2);
  v105 = v31;
  v33 = v7[14];
  v32 = v7[15];
  v112 = a1;
  if (v33 == a1 && v32 == a2 || (sub_24AF35C4C() & 1) != 0)
  {
    v34 = sub_24AF3514C();
    v36 = v35;
    v94 = v7;
    v37 = sub_24AF3508C();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    sub_24AF3507C();
    swift_getWitnessTable();
    sub_24AF3505C();
    sub_24AED6198(v34, v36);

    v48 = v110;
    v49 = v110[4].isa;
    v91 = v110 + 4;
    v90 = v49;
    (v49)(v29, v27, v20);
    v50 = v20;
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v51 = sub_24AF3529C();
    __swift_project_value_buffer(v51, qword_281392F00);
    v52 = v48[2].isa;
    v53 = v103;
    v93 = v29;
    v92 = v48 + 2;
    v52(v103, v29, v20);
    v54 = a2;

    v55 = v104;

    v56 = sub_24AF3527C();
    v57 = sub_24AF3572C();

    v88 = v57;
    v58 = os_log_type_enabled(v56, v57);
    v89 = v52;
    if (v58)
    {
      v59 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v113[0] = v87;
      *v59 = 136316419;
      v86 = v56;
      v60 = sub_24AEE5B34();
      v62 = sub_24AEF599C(v60, v61, v113);

      *(v59 + 4) = v62;
      *(v59 + 12) = 2082;
      *(v59 + 14) = sub_24AEF599C(v112, v54, v113);
      *(v59 + 22) = 2160;
      *(v59 + 24) = 1752392040;
      *(v59 + 32) = 2081;
      *(v59 + 34) = sub_24AEF599C(v105, v55, v113);
      *(v59 + 42) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0918, &qword_24AF380D8);
      v63 = sub_24AF3530C();
      v65 = sub_24AEF599C(v63, v64, v113);

      *(v59 + 44) = v65;
      v50 = v20;
      *(v59 + 52) = 2082;
      v66 = v106;
      v52(v106, v53, v50);
      v67 = v110[1].isa;
      (v67)(v53, v50);
      v68 = Message.description.getter(v50);
      v70 = v69;
      (v67)(v66, v50);
      v71 = sub_24AEF599C(v68, v70, v113);

      *(v59 + 54) = v71;
      v72 = v86;
      _os_log_impl(&dword_24AECF000, v86, v88, "%s: Received (resource) message on %{public}s from %{private,mask.hash}s: metadata: %s'; message: %{public}s", v59, 0x3Eu);
      v73 = v87;
      swift_arrayDestroy();
      MEMORY[0x24C236490](v73, -1, -1);
      MEMORY[0x24C236490](v59, -1, -1);

      v74 = v94;
      v48 = v110;
      v75 = v94[25];
      if (v75)
      {
LABEL_16:
        v111 = v74[26];
        v76 = sub_24AF3557C();
        (*(*(v76 - 8) + 56))(v108, 1, 1, v76);
        v112 = v67;
        v77 = v55;
        v78 = v106;
        v89(v106, v93, v50);
        sub_24AEF8F7C(v102, v107, type metadata accessor for MessageContext);
        v79 = (LOBYTE(v48[10].isa) + 104) & ~LOBYTE(v48[10].isa);
        v80 = (isa + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
        v81 = (*(v100 + 80) + v80 + 8) & ~*(v100 + 80);
        v82 = swift_allocObject();
        *(v82 + 16) = 0;
        *(v82 + 24) = 0;
        v83 = v98;
        *(v82 + 32) = v99;
        *(v82 + 40) = v83;
        v84 = v111;
        *(v82 + 48) = v75;
        *(v82 + 56) = v84;
        v85 = v97;
        *(v82 + 64) = v96;
        *(v82 + 72) = v85;
        *(v82 + 80) = v95;
        *(v82 + 88) = v105;
        *(v82 + 96) = v77;
        v90(v82 + v79, v78, v50);
        *(v82 + v80) = v109;
        sub_24AEF9044(v107, v82 + v81, type metadata accessor for MessageContext);
        sub_24AED1164(v75);

        sub_24AED1164(v75);

        sub_24AF08F10(0, 0, v108, &unk_24AF380D0, v82);

        sub_24AED56FC(v75);
        v112(v93, v50);
        return;
      }
    }

    else
    {
      v67 = v48[1].isa;
      (v67)(v53, v20);

      v74 = v94;
      v75 = v94[25];
      if (v75)
      {
        goto LABEL_16;
      }
    }

    (v67)(v93, v50);
  }

  else
  {
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v40 = sub_24AF3529C();
    __swift_project_value_buffer(v40, qword_281392F00);

    v110 = sub_24AF3527C();
    v41 = sub_24AF3570C();

    if (os_log_type_enabled(v110, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v113[0] = v43;
      *v42 = 136446722;
      v44 = sub_24AEE5B34();
      v46 = sub_24AEF599C(v44, v45, v113);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2082;
      *(v42 + 14) = sub_24AEF599C(v33, v32, v113);
      *(v42 + 22) = 2082;
      *(v42 + 24) = sub_24AEF599C(v112, a2, v113);
      _os_log_impl(&dword_24AECF000, v110, v41, "%{public}s: Ignoring delegate callback from wrong IDS service! Expected %{public}s, received: %{public}s", v42, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v43, -1, -1);
      MEMORY[0x24C236490](v42, -1, -1);
    }

    else
    {
      v47 = v110;
    }
  }
}

uint64_t sub_24AEF4064(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 16) = a8;
  *(v8 + 24) = v14;
  *(v8 + 32) = v15;
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v8 + 56) = v10;
  *v10 = v8;
  v10[1] = sub_24AEF9E08;

  return v12(v8 + 40, v8 + 16);
}

uint64_t sub_24AEF419C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 16) = a8;
  *(v8 + 24) = v14;
  *(v8 + 32) = v15;
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v8 + 56) = v10;
  *v10 = v8;
  v10[1] = sub_24AEF42C8;

  return v12(v8 + 40, v8 + 16);
}

uint64_t sub_24AEF42C8()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AEF43BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = v6;
  *(v7 + 48) = a5;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24AEF43E4, v6, 0);
}

uint64_t sub_24AEF43E4()
{
  v1 = *(v0 + 40);
  sub_24AEF75F0(*(v0 + 16), *(v0 + 24), *(v0 + 48), *(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AEF444C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_24AEF9DD0;

  return (sub_24AEF7A84)(a3, a4, a5);
}

uint64_t sub_24AEF4510(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_24AEF9DD0;

  return sub_24AEF0954(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_24AEF45F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_24AEF4620, v7, 0);
}

uint64_t sub_24AEF4620()
{
  v1 = *(v0 + 72);
  sub_24AEF3444(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AEF468C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_24AEF9DD0;

  return sub_24AEF7DA8(a1, a2, a3, a4, a6, a7);
}

uint64_t sub_24AEF4778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24AEF9DD0;

  return (sub_24AEF841C)(a3);
}

uint64_t sub_24AEF4824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24AEF9DD0;

  return (sub_24AEF8694)(a3);
}

uint64_t sub_24AEF48E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 184);
  v4 = *(v2 + 192);
  *(v2 + 184) = a1;
  *(v2 + 192) = a2;

  return sub_24AED56FC(v3);
}

uint64_t sub_24AEF4938(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 200);
  v4 = *(v2 + 208);
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;

  return sub_24AED56FC(v3);
}

uint64_t sub_24AEF4988(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 216);
  v4 = *(v2 + 224);
  *(v2 + 216) = a1;
  *(v2 + 224) = a2;

  return sub_24AED56FC(v3);
}

uint64_t sub_24AEF49D8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 232);
  v4 = *(v2 + 240);
  *(v2 + 232) = a1;
  *(v2 + 240) = a2;

  return sub_24AED56FC(v3);
}

uint64_t sub_24AEF4A28(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 248);
  v4 = *(v2 + 256);
  *(v2 + 248) = a1;
  *(v2 + 256) = a2;

  return sub_24AED56FC(v3);
}

uint64_t InternetMessaging.setReplyCallback(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 264);
  v4 = *(v2 + 272);
  *(v2 + 264) = a1;
  *(v2 + 272) = a2;

  return sub_24AED56FC(v3);
}

uint64_t sub_24AEF4AC4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 280);
  v4 = *(v2 + 288);
  *(v2 + 280) = a1;
  *(v2 + 288) = a2;

  return sub_24AED56FC(v3);
}

uint64_t sub_24AEF4B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 240) = a2;
  *(v4 + 248) = v3;
  *(v4 + 232) = a1;
  *(v4 + 256) = *v3;
  v5 = *(a3 + 48);
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a3 + 64);
  v6 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v6;
  return MEMORY[0x2822009F8](sub_24AEF4B74, v3, 0);
}

uint64_t sub_24AEF4B74()
{
  v45 = v0;
  v1 = *(v0 + 248);
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = v2 == *(v0 + 232) && v3 == *(v0 + 240);
  if (v4 || (v5 = *(v1 + 112), v6 = *(v1 + 120), (sub_24AF35C4C() & 1) != 0))
  {
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 240);
    v8 = sub_24AF3529C();
    __swift_project_value_buffer(v8, qword_281392F00);

    sub_24AEF7540(v0 + 16, v0 + 88);
    v9 = sub_24AF3527C();
    v10 = sub_24AF3572C();

    sub_24AEF759C(v0 + 16);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 256);
      v13 = *(v0 + 232);
      v12 = *(v0 + 240);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v44 = v15;
      *v14 = 136315907;
      v16 = sub_24AEE5B34();
      v18 = sub_24AEF599C(v16, v17, &v44);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_24AEF599C(v13, v12, &v44);
      *(v14 + 22) = 2160;
      *(v14 + 24) = 1752392040;
      *(v14 + 32) = 2081;
      v19 = *(v0 + 48);
      v20 = *(v0 + 56);

      v21 = sub_24AEF599C(v19, v20, &v44);

      *(v14 + 34) = v21;
      _os_log_impl(&dword_24AECF000, v9, v10, "%s: Received IDS session invite on %{public}s from %{private,mask.hash}s", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v15, -1, -1);
      MEMORY[0x24C236490](v14, -1, -1);
    }

    v22 = *(v0 + 248);
    v23 = *(v22 + 280);
    *(v0 + 264) = v23;
    if (v23)
    {
      *(v0 + 272) = *(v22 + 288);
      v24 = *(v0 + 64);
      *(v0 + 192) = *(v0 + 48);
      *(v0 + 208) = v24;
      *(v0 + 224) = *(v0 + 80);
      v25 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v25;
      sub_24AED1164(v23);
      v42 = (v23 + *v23);
      v26 = v23[1];
      v27 = swift_task_alloc();
      *(v0 + 280) = v27;
      *v27 = v0;
      v27[1] = sub_24AEF5054;

      return v42(v0 + 160);
    }
  }

  else
  {
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 240);
    v29 = *(v0 + 248);
    v31 = sub_24AF3529C();
    __swift_project_value_buffer(v31, qword_281392F00);

    v32 = sub_24AF3527C();
    v33 = sub_24AF3570C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 256);
      v35 = *(v0 + 232);
      v43 = *(v0 + 240);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44 = v37;
      *v36 = 136446722;
      v38 = sub_24AEE5B34();
      v40 = sub_24AEF599C(v38, v39, &v44);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2082;
      *(v36 + 14) = sub_24AEF599C(v2, v3, &v44);
      *(v36 + 22) = 2082;
      *(v36 + 24) = sub_24AEF599C(v35, v43, &v44);
      _os_log_impl(&dword_24AECF000, v32, v33, "%{public}s: Ignoring delegate callback from wrong IDS service! Expected %{public}s, received: %{public}s", v36, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v37, -1, -1);
      MEMORY[0x24C236490](v36, -1, -1);
    }
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_24AEF5054()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AEF5164, v2, 0);
}

uint64_t sub_24AEF5164()
{
  v1 = v0[34];
  sub_24AED56FC(v0[33]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_24AEF51C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AEF9DD0;

  return sub_24AEF4B10(a1, a2, a3);
}

uint64_t InternetMessaging.description.getter()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for InternetMessaging();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_24AF35BEC();
  MEMORY[0x24C235440](v5);

  MEMORY[0x24C235440](32, 0xE100000000000000);
  v6 = MEMORY[0x24C235C50](v3, WitnessTable);
  MEMORY[0x24C235440](v6);

  MEMORY[0x24C235440](32, 0xE100000000000000);
  MEMORY[0x24C235440](v0[14], v0[15]);
  MEMORY[0x24C235440](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AEF53BC()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_281393410);
  __swift_project_value_buffer(v0, qword_281393410);
  return sub_24AF3528C();
}

char *sub_24AEF543C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0940, &qword_24AF381C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_24AEF555C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0930, &qword_24AF38110);
  v10 = *(type metadata accessor for CorrelationIdentifier() - 8);
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
  v15 = *(type metadata accessor for CorrelationIdentifier() - 8);
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

char *sub_24AEF5734(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0748, &qword_24AF38100);
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

void *sub_24AEF5854(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0910, &qword_24AF38078);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0778, &qword_24AF38080);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24AEF599C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AEF5A68(v11, 0, 0, 1, a1, a2);
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
    sub_24AED0E50(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24AEF5A68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24AEF5B74(a5, a6);
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
    result = sub_24AF3597C();
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

uint64_t sub_24AEF5B74(uint64_t a1, unint64_t a2)
{
  v4 = sub_24AEF5BC0(a1, a2);
  sub_24AEF5CF0(&unk_285E3D5D8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24AEF5BC0(uint64_t a1, unint64_t a2)
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

  v6 = sub_24AEF5DDC(v5, 0);
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

  result = sub_24AF3597C();
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
        v10 = sub_24AF353FC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AEF5DDC(v10, 0);
        result = sub_24AF3591C();
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

uint64_t sub_24AEF5CF0(uint64_t result)
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

  result = sub_24AEF5E50(result, v12, 1, v3);
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

void *sub_24AEF5DDC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0960, &qword_24AF381E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24AEF5E50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0960, &qword_24AF381E0);
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

unint64_t sub_24AEF5F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_24AF3535C();

  return sub_24AEF5FA0(a1, v9, a2, a3);
}

unint64_t sub_24AEF5FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_24AF3537C();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

char *sub_24AEF6128(char *a1, int64_t a2, char a3)
{
  result = sub_24AEF61A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24AEF6148(char *a1, int64_t a2, char a3)
{
  result = sub_24AEF62B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24AEF6168(void *a1, int64_t a2, char a3)
{
  result = sub_24AEF63C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24AEF6188(char *a1, int64_t a2, char a3)
{
  result = sub_24AEF650C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24AEF61A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0958, &qword_24AF381D8);
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

char *sub_24AEF62B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0938, &unk_24AF39A80);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24AEF63C4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0948, &qword_24AF381C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[20 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 160 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0950, &qword_24AF381D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24AEF650C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0908, &qword_24AF38070);
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
    swift_arrayInitWithCopy();
  }

  return v10;
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

uint64_t sub_24AEF6664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_24AF354EC())
  {
    sub_24AF35A8C();
    v13 = sub_24AF35A7C();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_24AF354EC();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_24AF354DC())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_24AF3593C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_24AEF5F44(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

double sub_24AEF6968(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_24AEF69E0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24AEF69F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C2356E0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24AEDD8D4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24AEF6AC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C2356E0](v2, MEMORY[0x277D84030], MEMORY[0x277D84038]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_24AEE2A84(v4, v5);
      sub_24AEDDA24(v6, v5);
      sub_24AEE2AE0(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_24AEF6B54(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24AEF74EC();
  v4 = MEMORY[0x24C2356E0](v2, &type metadata for MessagingCapability, v3);
  if (!v2)
  {
    return v4;
  }

  v5 = 0;
  while (1)
  {
    v6 = v4 + 56;
    while (1)
    {
      v7 = *(a1 + 32 + v5++);
      v8 = *(v4 + 40);
      sub_24AF35D0C();
      MEMORY[0x24C235D70](v7);
      v9 = sub_24AF35D4C();
      v10 = -1 << *(v4 + 32);
      v11 = v9 & ~v10;
      if (((*(v6 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        break;
      }

      v12 = ~v10;
      while (*(*(v4 + 48) + v11) != v7)
      {
        v11 = (v11 + 1) & v12;
        if (((*(v6 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      if (v5 == v2)
      {
        return v4;
      }
    }

LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v4 + 16);
    if (*(v4 + 24) > v14)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24AEE0590();
      }

      goto LABEL_21;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      sub_24AEDE984(v14 + 1);
    }

    else
    {
      sub_24AEE0FE0(v14 + 1);
    }

    v15 = *(v4 + 40);
    sub_24AF35D0C();
    MEMORY[0x24C235D70](v7);
    v16 = sub_24AF35D4C();
    v17 = -1 << *(v4 + 32);
    v11 = v16 & ~v17;
    if ((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      break;
    }

LABEL_21:
    *(v4 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v11;
    *(*(v4 + 48) + v11) = v7;
    v19 = *(v4 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      __break(1u);
      goto LABEL_25;
    }

    *(v4 + 16) = v21;
    if (v5 == v2)
    {
      return v4;
    }
  }

  v18 = ~v17;
  while (*(*(v4 + 48) + v11) != v7)
  {
    v11 = (v11 + 1) & v18;
    if (((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_25:
  result = sub_24AF35C7C();
  __break(1u);
  return result;
}

uint64_t sub_24AEF6D74(uint64_t a1)
{
  v2 = type metadata accessor for CorrelationIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_24AEF8F34(&qword_27EFC0928, type metadata accessor for CorrelationIdentifier);
  result = MEMORY[0x24C2356E0](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_24AEF8F7C(v13, v7, type metadata accessor for CorrelationIdentifier);
      sub_24AEDDB70(v9, v7);
      sub_24AEF8FE4(v9, type metadata accessor for CorrelationIdentifier);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_24AEF6F00(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24AEF8EE0();
  result = MEMORY[0x24C2356E0](v2, &type metadata for Destination, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v5 - 16);

      sub_24AEDE1E0(&v9, v8, v7, v6);

      v5 += 3;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_24AEF6FA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24AEF7494();
  result = MEMORY[0x24C2356E0](v2, &type metadata for Account, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_24AEDE374(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t sub_24AEF7038()
{
  result = qword_27EFC0900;
  if (!qword_27EFC0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0900);
  }

  return result;
}

void sub_24AEF708C()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_24AF06994(v0[2]);
}

uint64_t dispatch thunk of InternetMessaging.__allocating_init(serviceName:linkSelectionStrategy:crossAccount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = (*(v4 + 512) + **(v4 + 512));
  v10 = *(*(v4 + 512) + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_24AEE1D70;

  return v13(a1, a2, a3, a4);
}

unint64_t sub_24AEF7494()
{
  result = qword_281392EF0;
  if (!qword_281392EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281392EF0);
  }

  return result;
}

unint64_t sub_24AEF74EC()
{
  result = qword_281393270[0];
  if (!qword_281393270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281393270);
  }

  return result;
}

void sub_24AEF75F0(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = *v4;
  v9 = sub_24AF3521C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v37 - v15;
  swift_beginAccess();
  v17 = v4[21];
  if (*(v17 + 16))
  {

    v18 = sub_24AEDA254(a2);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);

      if (a3)
      {
        sub_24AF3500C();
      }

      else
      {
        if (a4)
        {
          v33 = a4;
        }

        else
        {
          v34 = sub_24AF34FEC();
          sub_24AEF8F34(&qword_27EFC07F8, MEMORY[0x277D08938]);
          v33 = swift_allocError();
          *v35 = 0xD00000000000001CLL;
          v35[1] = 0x800000024AF36E80;
          (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D08930], v34);
        }

        v37[0] = v33;
        v36 = a4;
        sub_24AF34FFC();
      }

      (*(v10 + 16))(v16, a2, v9);
      swift_beginAccess();
      sub_24AF09284(0, v16);
      swift_endAccess();

      return;
    }
  }

  if (qword_281392EF8 != -1)
  {
    swift_once();
  }

  v21 = sub_24AF3529C();
  __swift_project_value_buffer(v21, qword_281392F00);
  (*(v10 + 16))(v14, a2, v9);
  v22 = sub_24AF3527C();
  v23 = sub_24AF3570C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v37[0] = v25;
    *v24 = 136446466;
    v26 = sub_24AEE5B34();
    v28 = sub_24AEF599C(v26, v27, v37);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    sub_24AEF8F34(&qword_27EFC08F8, MEMORY[0x277CC95F0]);
    v29 = sub_24AF35C0C();
    v31 = v30;
    (*(v10 + 8))(v14, v9);
    v32 = sub_24AEF599C(v29, v31, v37);

    *(v24 + 14) = v32;
    _os_log_impl(&dword_24AECF000, v22, v23, "%{public}s: Got didSend callback for unsent message! %{public}s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C236490](v25, -1, -1);
    MEMORY[0x24C236490](v24, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }
}

uint64_t sub_24AEF7A84(void *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  v5 = a1[1];
  *(v4 + 72) = *a1;
  *(v4 + 80) = v5;
  *(v4 + 128) = *a3;
  v6 = *(a3 + 16);
  *(v4 + 88) = *(a3 + 8);
  *(v4 + 96) = v6;
  return MEMORY[0x2822009F8](sub_24AEF7ABC, v3, 0);
}

uint64_t sub_24AEF7ABC()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 184);
  *(v0 + 104) = v2;
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 128);
    v5 = *(v0 + 80);
    v6 = *(v1 + 192);
    *(v0 + 40) = *(v0 + 72);
    *(v0 + 112) = v6;
    *(v0 + 48) = v5;
    *(v0 + 16) = v4;
    *(v0 + 24) = v3;

    v12 = (v2 + *v2);
    v7 = v2[1];
    v8 = swift_task_alloc();
    *(v0 + 120) = v8;
    *v8 = v0;
    v8[1] = sub_24AEF7C38;
    v9 = *(v0 + 56);

    return v12(v0 + 40, v9, v0 + 16);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_24AEF7C38()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AEF7D48, v2, 0);
}

uint64_t sub_24AEF7D48()
{
  v1 = v0[14];
  sub_24AED56FC(v0[13]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_24AEF7DA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 24) = a2;
  *(v7 + 32) = a4;
  *(v7 + 16) = a1;
  *(v7 + 56) = *v6;
  v10 = *(type metadata accessor for MessageContext() - 8);
  *(v7 + 64) = v10;
  *(v7 + 72) = *(v10 + 64);
  *(v7 + 80) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30) - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *a3;
  v14 = a3[1];
  *(v7 + 88) = v12;
  *(v7 + 96) = v13;
  *(v7 + 128) = *a5;
  v15 = *(a5 + 8);
  v16 = *(a5 + 16);
  *(v7 + 104) = v14;
  *(v7 + 112) = v15;
  *(v7 + 120) = v16;

  return MEMORY[0x2822009F8](sub_24AEF7EFC, v6, 0);
}

uint64_t sub_24AEF7EFC()
{
  v57 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = v2 == *(v0 + 16) && v3 == *(v0 + 24);
  if (v4 || (v5 = *(v1 + 112), v6 = *(v1 + 120), (sub_24AF35C4C() & 1) != 0))
  {
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 120);
    v8 = *(v0 + 24);
    v9 = sub_24AF3529C();
    __swift_project_value_buffer(v9, qword_281392F00);

    v10 = sub_24AF3527C();
    v11 = sub_24AF3572C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 112);
      v54 = *(v0 + 120);
      v13 = *(v0 + 56);
      v15 = *(v0 + 16);
      v14 = *(v0 + 24);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v56 = v17;
      *v16 = 136315907;
      v18 = sub_24AEE5B34();
      v20 = sub_24AEF599C(v18, v19, &v56);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_24AEF599C(v15, v14, &v56);
      *(v16 + 22) = 2160;
      *(v16 + 24) = 1752392040;
      *(v16 + 32) = 2081;
      *(v16 + 34) = sub_24AEF599C(v12, v54, &v56);
      _os_log_impl(&dword_24AECF000, v10, v11, "%s: Received raw dictionary on %{public}s from %{private,mask.hash}s", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v17, -1, -1);
      MEMORY[0x24C236490](v16, -1, -1);
    }

    v21 = *(v0 + 48);
    v22 = *(v21 + 216);
    if (v22)
    {
      v23 = *(v0 + 120);
      v52 = *(v0 + 128);
      v50 = *(v0 + 96);
      v51 = *(v0 + 104);
      v25 = *(v0 + 80);
      v24 = *(v0 + 88);
      v53 = *(v0 + 112);
      v26 = *(v0 + 64);
      v27 = *(v0 + 72);
      v28 = *(v0 + 32);
      v29 = *(v0 + 40);
      v30 = *(v21 + 224);
      v31 = sub_24AF3557C();
      (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
      sub_24AEF8F7C(v29, v25, type metadata accessor for MessageContext);
      v32 = (*(v26 + 80) + 96) & ~*(v26 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      *(v33 + 32) = v22;
      *(v33 + 40) = v30;
      *(v33 + 48) = v50;
      *(v33 + 56) = v51;
      *(v33 + 64) = v52;
      *(v33 + 72) = v53;
      *(v33 + 80) = v23;
      *(v33 + 88) = v28;
      sub_24AEF9044(v25, v33 + v32, type metadata accessor for MessageContext);

      sub_24AED1164(v22);

      sub_24AF08F10(0, 0, v24, &unk_24AF380B8, v33);
    }
  }

  else
  {
    if (qword_281392EF8 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 48);
    v35 = *(v0 + 24);
    v36 = sub_24AF3529C();
    __swift_project_value_buffer(v36, qword_281392F00);

    v37 = sub_24AF3527C();
    v38 = sub_24AF3570C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 56);
      v40 = *(v0 + 16);
      v55 = *(v0 + 24);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v56 = v42;
      *v41 = 136446722;
      v43 = sub_24AEE5B34();
      v45 = sub_24AEF599C(v43, v44, &v56);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      *(v41 + 14) = sub_24AEF599C(v2, v3, &v56);
      *(v41 + 22) = 2082;
      *(v41 + 24) = sub_24AEF599C(v40, v55, &v56);
      _os_log_impl(&dword_24AECF000, v37, v38, "%{public}s: Ignoring delegate callback from wrong IDS service! Expected %{public}s, received: %{public}s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v42, -1, -1);
      MEMORY[0x24C236490](v41, -1, -1);
    }
  }

  v47 = *(v0 + 80);
  v46 = *(v0 + 88);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_24AEF841C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AEF843C, v1, 0);
}

uint64_t sub_24AEF843C()
{
  v1 = v0[3];
  v2 = *(v1 + 232);
  v0[4] = v2;
  if (v2)
  {
    v0[5] = *(v1 + 240);

    v8 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_24AEF8584;
    v5 = v0[2];

    return v8(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_24AEF8584()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AEF9E0C, v2, 0);
}

uint64_t sub_24AEF8694(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AEF86B4, v1, 0);
}

uint64_t sub_24AEF86B4()
{
  v1 = v0[3];
  v2 = *(v1 + 248);
  v0[4] = v2;
  if (v2)
  {
    v0[5] = *(v1 + 256);

    v8 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_24AEF87FC;
    v5 = v0[2];

    return v8(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_24AEF87FC()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AEF890C, v2, 0);
}

uint64_t sub_24AEF890C()
{
  v1 = v0[5];
  sub_24AED56FC(v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_24AEF896C(uint64_t a1)
{
  v3 = *(type metadata accessor for MessageContext() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v15 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = v1 + ((*(v3 + 80) + 96) & ~*(v3 + 80));
  v12 = *(v1 + 64);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_24AEF9DD0;

  return sub_24AEF419C(a1, v4, v5, v6, v7, v8, v9, v12);
}

uint64_t sub_24AEF8AA8(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v6 = *(type metadata accessor for Message() - 8);
  v7 = (*(v6 + 64) + ((*(v6 + 80) + 104) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for MessageContext() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v20 = *(v1 + 24);
  v21 = *(v1 + 16);
  v18 = *(v1 + 56);
  v19 = *(v1 + 48);
  v10 = *(v1 + 64);
  v17 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = *(v1 + 96);
  v13 = *(v1 + v7);
  v14 = *(v1 + 80);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_24AEF9DD0;

  return sub_24AEF4064(a1, v21, v20, v19, v18, v10, v17, v14);
}

uint64_t sub_24AEF8C60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AEF8CD0(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v6 = *(type metadata accessor for Message() - 8);
  v7 = (*(v6 + 80) + 104) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for MessageContext() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v20 = *(v1 + 24);
  v21 = *(v1 + 16);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v18 = *(v1 + 72);
  v19 = *(v1 + 48);
  v13 = *(v1 + 88);
  v14 = *(v1 + 96);
  v15 = *(v1 + 80);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_24AEF9DD0;

  return sub_24AEF31B4(a1, v21, v20, v19, v11, v12, v18, v15);
}

uint64_t sub_24AEF8E70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AEF8EE0()
{
  result = qword_27EFC0920;
  if (!qword_27EFC0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0920);
  }

  return result;
}

uint64_t sub_24AEF8F34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AEF8F7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AEF8FE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24AEF9044(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AEF90AC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessagingOptions() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AEF9DD0;

  return sub_24AEEDB4C(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t sub_24AEF91F4(uint64_t a1)
{
  v4 = *(type metadata accessor for MessagingOptions() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AEF9DD0;

  return sub_24AEEFC0C(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_24AEF9324(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for Message() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for MessagingOptions() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[6];
  v15 = *(v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_24AEE555C;

  return sub_24AEEC450(a1, v12, v13, v14, v1 + v8, v1 + v11, v15);
}

uint64_t sub_24AEF94B8(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(type metadata accessor for Message() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for MessagingOptions() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[4];
  v13 = *(v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24AEE555C;

  return sub_24AEEF4F4(a1, v12, v1 + v8, v1 + v11, v13);
}

uint64_t sub_24AEF9638(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for Message() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for MessagingOptions() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[6];
  v15 = *(v1 + v8);
  v16 = *(v1 + v11);
  v17 = *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_24AEF9DD0;

  return sub_24AEEA540(a1, v12, v13, v14, v1 + v7, v15, v1 + v10, v16);
}

uint64_t sub_24AEF97FC(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(sub_24AF3513C() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for MessagingOptions() - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for Message() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = v1[4];
  v17 = *(v1 + v9);
  v18 = *(v1 + v10);
  v19 = *(v1 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_24AEF9DD0;

  return sub_24AEEECCC(a1, v16, v1 + v8, v17, v18, v1 + v12, v1 + v15, v19);
}

uint64_t sub_24AEF9A14(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for Message() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for MessagingOptions() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v22 = v1[2];
  v14 = v1[6];
  v15 = (v1 + v11);
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v1 + v12);
  v19 = *(v1 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_24AEF9DD0;

  return sub_24AEE8AF4(a1, v22, v13, v14, v1 + v7, v1 + v10, v16, v17);
}

uint64_t sub_24AEF9BD8(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(type metadata accessor for MessagingOptions() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(type metadata accessor for Message() - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[6];
  v15 = v1[7];
  v16 = *(v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_24AEF9DD0;

  return sub_24AEEE4D8(a1, v12, v13, v14, v15, v1 + v8, v1 + v11, v16);
}

uint64_t sub_24AEF9E10(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v44 = sub_24AF3521C();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v44);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07A8, &qword_24AF37BC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  v10 = type metadata accessor for CorrelationIdentifier();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v43 = (&v37 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = *(a2 + 16);
  if (!v20)
  {
    return 0;
  }

  v21 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v45 = *(v17 + 72);
  v42 = (v3 + 8);
  v38 = (v3 + 32);
  v39 = v10;
  while (1)
  {
    sub_24AEE2B34(v21, v19);
    v22 = &v9[*(v6 + 48)];
    sub_24AEE2B34(v19, v9);
    sub_24AEE2B34(v46, v22);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24AEE2B34(v9, v14);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = v6;
        v24 = v40;
        v25 = v22;
        v26 = v44;
        (*v38)(v40, v25, v44);
        v41 = sub_24AF351FC();
        v27 = *v42;
        v28 = v24;
        v6 = v23;
        (*v42)(v28, v26);
        v27(v14, v26);
        sub_24AEE2B98(v9);
        if (v41)
        {
          goto LABEL_21;
        }

        goto LABEL_5;
      }

      (*v42)(v14, v44);
LABEL_4:
      sub_24AEFE584(v9);
      goto LABEL_5;
    }

    v29 = v43;
    sub_24AEE2B34(v9, v43);
    v31 = *v29;
    v30 = v29[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      goto LABEL_4;
    }

    v32 = *v22;
    v33 = *(v22 + 1);
    if (v31 == v32 && v30 == v33)
    {
      break;
    }

    v35 = sub_24AF35C4C();

    if (v35)
    {
      goto LABEL_20;
    }

    sub_24AEE2B98(v9);
LABEL_5:
    sub_24AEE2B98(v19);
    v21 += v45;
    if (!--v20)
    {
      return 0;
    }
  }

LABEL_20:
  sub_24AEE2B98(v9);
LABEL_21:
  sub_24AEE2B98(v19);
  return 1;
}

uint64_t sub_24AEFA1E8()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_27EFC0978);
  v1 = __swift_project_value_buffer(v0, qword_27EFC0978);
  if (qword_27EFC06F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EFC4BB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t CorrelationIdentifierMap.init(serviceName:destinations:disambiguate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  return MEMORY[0x2822009F8](sub_24AEFA2D8, 0, 0);
}

{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  return MEMORY[0x2822009F8](sub_24AEFBAFC, 0, 0);
}

id sub_24AEFA2D8()
{
  Controller = type metadata accessor for QueryController();
  v2 = swift_allocObject();
  v0[17] = v2;
  swift_defaultActor_initialize();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v4 = v0[16];
    v6 = v0[12];
    v5 = v0[13];
    v2[14] = result;
    v2[15] = v6;
    v2[16] = v5;
    v0[5] = Controller;
    v0[6] = &protocol witness table for QueryController;
    v0[2] = v2;

    v7 = swift_task_alloc();
    v0[18] = v7;
    *v7 = v0;
    v7[1] = sub_24AEFA404;
    v8 = v0[15];
    v9 = v0[16];
    v10 = v0[14];

    return sub_24AEFA600((v0 + 7), (v0 + 2), v10, v8, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AEFA404()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_24AEFA594;
  }

  else
  {
    v3 = sub_24AEFA518;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AEFA518()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 88);

  v4 = *(v0 + 72);
  *v3 = *(v0 + 56);
  v3[1] = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24AEFA594()
{
  v2 = v0[16];
  v1 = v0[17];

  v3 = v0[1];
  v4 = v0[19];

  return v3();
}

uint64_t sub_24AEFA600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = type metadata accessor for CorrelationIdentifier();
  v5[28] = v6;
  v7 = *(v6 - 8);
  v5[29] = v7;
  v8 = *(v7 + 64) + 15;
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEFA710, 0, 0);
}

uint64_t sub_24AEFA710()
{
  result = *(v0 + 200);
  v2 = *(result + 16);
  *(v0 + 296) = v2;
  if (v2)
  {
    v3 = *(v0 + 192);
    v4 = MEMORY[0x277D84F98];
    *(v0 + 312) = 0;
    *(v0 + 320) = v4;
    *(v0 + 304) = v4;
    if (*(result + 16))
    {
      v5 = *(result + 32);
      *(v0 + 376) = v5;
      v6 = *(result + 40);
      *(v0 + 328) = v6;
      v7 = *(result + 48);
      *(v0 + 336) = v7;
      v8 = v3[3];
      v9 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v8);
      *(v0 + 16) = v5;
      *(v0 + 24) = v6;
      *(v0 + 32) = v7;
      v10 = *(v9 + 8);

      v24 = (v10 + *v10);
      v11 = v10[1];
      v12 = swift_task_alloc();
      *(v0 + 344) = v12;
      *v12 = v0;
      v12[1] = sub_24AEFA994;

      return v24(v0 + 16, v8, v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v14 = *(v0 + 280);
    v13 = *(v0 + 288);
    v16 = *(v0 + 264);
    v15 = *(v0 + 272);
    v23 = *(v0 + 256);
    v25 = *(v0 + 248);
    v26 = *(v0 + 240);
    v17 = *(v0 + 208);
    v18 = *(v0 + 216);
    v19 = *(v0 + 184);
    v20 = *(v0 + 192);

    v21 = MEMORY[0x277D84F98];
    *v19 = MEMORY[0x277D84F98];
    v19[1] = v21;
    v19[2] = v17;
    v19[3] = v18;
    swift_bridgeObjectRetain_n();

    __swift_destroy_boxed_opaque_existential_0(v20);
    swift_bridgeObjectRelease_n();

    v22 = *(v0 + 8);

    return v22();
  }

  return result;
}

uint64_t sub_24AEFA994(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 344);
  v9 = *v3;
  v4[44] = a1;
  v4[45] = a2;
  v4[46] = v2;

  if (v2)
  {
    v6 = v4[25];

    v7 = sub_24AEFB9D4;
  }

  else
  {
    v7 = sub_24AEFAAB4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

unint64_t sub_24AEFAAB4()
{
  v190 = v0;
  v1 = *(v0 + 360);
  if (!v1)
  {
    if (qword_27EFC0700 == -1)
    {
LABEL_7:
      v22 = *(v0 + 336);
      v23 = sub_24AF3529C();
      __swift_project_value_buffer(v23, qword_27EFC0978);

      v24 = sub_24AF3527C();
      v25 = sub_24AF3570C();

      if (os_log_type_enabled(v24, v25))
      {
        v27 = *(v0 + 328);
        v26 = *(v0 + 336);
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v189 = v29;
        *v28 = 141558275;
        *(v28 + 4) = 1752392040;
        *(v28 + 12) = 2081;

        v30 = sub_24AEF599C(v27, v26, &v189);

        *(v28 + 14) = v30;
        _os_log_impl(&dword_24AECF000, v24, v25, "CorrelationIdentifierMap: No correlationIdentifier for %{private,mask.hash}s!", v28, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x24C236490](v29, -1, -1);
        MEMORY[0x24C236490](v28, -1, -1);
      }

      v16 = *(v0 + 328);
      v1 = *(v0 + 336);
      v31 = *(v0 + 320);
      v32 = *(v0 + 248);
      v185 = *(v0 + 240);
      v33 = *(v0 + 224);
      *(v0 + 128) = 0;
      *(v0 + 136) = 0xE000000000000000;
      v34 = *(v0 + 376);
      sub_24AF3592C();
      v35 = *(v0 + 136);

      *(v0 + 112) = 0xD00000000000001FLL;
      *(v0 + 120) = 0x800000024AF370C0;
      MEMORY[0x24C235440](v16, v1);
      MEMORY[0x24C235440](93, 0xE100000000000000);
      v36 = *(v0 + 112);
      v37 = *(v0 + 120);
      v38 = sub_24AF3538C();
      v40 = v39;

      *(v0 + 144) = v38;
      *(v0 + 152) = v40;
      sub_24AEFE5EC();
      sub_24AF3504C();
      sub_24AED6198(v38, v40);
      swift_storeEnumTagMultiPayload();
      sub_24AEE2B34(v32, v185);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 160) = v31;
      result = sub_24AEDA148(v34, v16, v1);
      v43 = *(v31 + 16);
      v44 = (v42 & 1) == 0;
      v14 = __OFADD__(v43, v44);
      v45 = v43 + v44;
      if (!v14)
      {
        LOBYTE(v1) = v42;
        if (*(*(v0 + 320) + 24) >= v45)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v47 = *(v0 + 328);
          v46 = *(v0 + 336);
          v48 = *(v0 + 376);
          sub_24AEDB3EC(v45, isUniquelyReferenced_nonNull_native);
          v49 = *(v0 + 160);
          result = sub_24AEDA148(v48, v47, v46);
          if ((v1 & 1) != (v50 & 1))
          {
            goto LABEL_43;
          }
        }

        v51 = *(v0 + 160);
        if ((v1 & 1) == 0)
        {
LABEL_63:
          v142 = *(v0 + 328);
          v141 = *(v0 + 336);
          v143 = *(v0 + 376);
          v145 = *(v0 + 232);
          v144 = *(v0 + 240);
          v51[(result >> 6) + 8] |= 1 << result;
          v146 = v51[6] + 24 * result;
          *v146 = v143;
          *(v146 + 8) = v142;
          *(v146 + 16) = v141;
          result = sub_24AEE2BF4(v144, v51[7] + *(v145 + 72) * result);
          v147 = v51[2];
          v14 = __OFADD__(v147, 1);
          v148 = v147 + 1;
          if (v14)
          {
            __break(1u);
LABEL_79:
            __break(1u);
            return result;
          }

          v149 = *(v0 + 336);
          v51[2] = v148;

LABEL_65:
          v1 = *(v0 + 328);
          v150 = *(v0 + 336);
          v151 = *(v0 + 304);
          v152 = *(v0 + 248);
          v153 = *(v0 + 376);
          v154 = swift_isUniquelyReferenced_nonNull_native();
          v189 = v151;
          sub_24AF03378(v153, v1, v150, v152, v154);
          result = sub_24AEE2B98(v152);
          v106 = v189;
          goto LABEL_66;
        }

LABEL_18:
        sub_24AEFE640(*(v0 + 240), v51[7] + *(*(v0 + 232) + 72) * result);
        goto LABEL_65;
      }

      __break(1u);
LABEL_22:
      v52 = result;
      sub_24AEDD148();
      result = v52;
      v51 = *(v0 + 168);
      if (v16)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }

LABEL_20:
    swift_once();
    goto LABEL_7;
  }

  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 320);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 224);
  v8 = *(v0 + 376);
  *v5 = *(v0 + 352);
  v5[1] = v1;
  swift_storeEnumTagMultiPayload();
  sub_24AEE2BF4(v5, v6);

  v9 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 168) = v4;
  result = sub_24AEDA148(v8, v3, v2);
  v12 = *(v4 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_20;
  }

  LOBYTE(v16) = v11;
  if (*(*(v0 + 320) + 24) >= v15)
  {
    if (v9)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  v18 = *(v0 + 328);
  v17 = *(v0 + 336);
  v19 = *(v0 + 376);
  sub_24AEDB3EC(v15, v9);
  v20 = *(v0 + 168);
  result = sub_24AEDA148(v19, v18, v17);
  if ((v16 & 1) != (v21 & 1))
  {
LABEL_43:

    return sub_24AF35C8C();
  }

LABEL_14:
  v51 = *(v0 + 168);
  if (v16)
  {
LABEL_15:
    v33 = *(*(v0 + 232) + 72);
    sub_24AEFE640(*(v0 + 280), v51[7] + v33 * result);
    goto LABEL_25;
  }

LABEL_23:
  v54 = *(v0 + 328);
  v53 = *(v0 + 336);
  v55 = *(v0 + 376);
  v56 = *(v0 + 280);
  v57 = *(v0 + 232);
  v51[(result >> 6) + 8] |= 1 << result;
  v58 = v51[6] + 24 * result;
  *v58 = v55;
  *(v58 + 8) = v54;
  *(v58 + 16) = v53;
  v33 = *(v57 + 72);
  result = sub_24AEE2BF4(v56, v51[7] + v33 * result);
  v59 = v51[2];
  v14 = __OFADD__(v59, 1);
  v60 = v59 + 1;
  if (v14)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    v140 = result;
    sub_24AEDD148();
    result = v140;
    v51 = *(v0 + 160);
    if ((v1 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_18;
  }

  v61 = *(v0 + 336);
  v51[2] = v60;

LABEL_25:
  if (qword_27EFC0700 != -1)
  {
    swift_once();
  }

  v62 = *(v0 + 336);
  v63 = sub_24AF3529C();
  __swift_project_value_buffer(v63, qword_27EFC0978);

  v64 = sub_24AF3527C();
  v65 = sub_24AF356FC();

  if (os_log_type_enabled(v64, v65))
  {
    v178 = *(v0 + 352);
    v181 = v33;
    v67 = *(v0 + 328);
    v66 = *(v0 + 336);
    v68 = swift_slowAlloc();
    v186 = v51;
    v189 = swift_slowAlloc();
    v69 = v189;
    *v68 = 141558787;
    *(v68 + 4) = 1752392040;
    *(v68 + 12) = 2081;

    v70 = sub_24AEF599C(v67, v66, &v189);
    v33 = v181;

    *(v68 + 14) = v70;
    *(v68 + 22) = 2160;
    *(v68 + 24) = 1752392040;
    *(v68 + 32) = 2081;
    *(v68 + 34) = sub_24AEF599C(v178, v1, &v189);
    _os_log_impl(&dword_24AECF000, v64, v65, "CorrelationIdentifierMap: %{private,mask.hash}s -> %{private,mask.hash}s", v68, 0x2Au);
    swift_arrayDestroy();
    v71 = v69;
    v51 = v186;
    MEMORY[0x24C236490](v71, -1, -1);
    MEMORY[0x24C236490](v68, -1, -1);
  }

  v72 = *(v0 + 304);
  v73 = *(v0 + 272);
  v74 = *(v0 + 224);
  *v73 = *(v0 + 352);
  v73[1] = v1;
  swift_storeEnumTagMultiPayload();
  if (!*(v72 + 16))
  {

    goto LABEL_39;
  }

  v75 = *(v0 + 304);
  v76 = *(v0 + 272);

  v77 = sub_24AEDA2F0(v76);
  if ((v78 & 1) == 0)
  {
LABEL_39:
    v93 = *(v0 + 352);
    v94 = *(v0 + 304);
    v95 = *(v0 + 264);
    v96 = *(v0 + 224);
    sub_24AEE2B98(*(v0 + 272));
    *v95 = v93;
    v95[1] = v1;
    swift_storeEnumTagMultiPayload();
    v97 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 176) = v94;
    result = sub_24AEDA2F0(v95);
    v99 = *(v94 + 16);
    v100 = (v98 & 1) == 0;
    v14 = __OFADD__(v99, v100);
    v101 = v99 + v100;
    if (!v14)
    {
      LOBYTE(v1) = v98;
      if (*(*(v0 + 304) + 24) >= v101)
      {
        if ((v97 & 1) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_47;
      }

      v102 = *(v0 + 264);
      sub_24AEDAEC4(v101, v97);
      v103 = *(v0 + 176);
      result = sub_24AEDA2F0(v102);
      if ((v1 & 1) == (v104 & 1))
      {
        goto LABEL_47;
      }

      v105 = *(v0 + 224);
      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_61;
  }

  v79 = *(v0 + 376);
  v80 = *(v0 + 272);
  v81 = (*(*(v0 + 304) + 56) + 24 * v77);
  v82 = *v81;
  v83 = *(v81 + 1);
  v33 = *(v81 + 2);

  sub_24AEE2B98(v80);
  if (v82 != v79)
  {
    v187 = v51;
    v116 = *(v0 + 376);
LABEL_52:
    v117 = *(v0 + 328);
    v118 = *(v0 + 336);
    v119 = *(v0 + 208);
    v120 = *(v0 + 216);
    *(v0 + 64) = v82;
    *(v0 + 72) = v83;
    *(v0 + 80) = v33;
    *(v0 + 88) = v116;
    *(v0 + 96) = v117;
    *(v0 + 104) = v118;
    v119(v0 + 64, v0 + 88);
    v121 = *(v0 + 40);
    v122 = *(v0 + 56);
    v182 = *(v0 + 48);

    v123 = sub_24AF3527C();
    v124 = sub_24AF3572C();

    v125 = os_log_type_enabled(v123, v124);
    v126 = *(v0 + 336);
    if (v125)
    {
      v127 = *(v0 + 328);
      v179 = v121;
      v128 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v189 = v176;
      *v128 = 141559299;
      *(v128 + 4) = 1752392040;
      *(v128 + 12) = 2081;
      v129 = sub_24AEF599C(v83, v33, &v189);

      *(v128 + 14) = v129;
      v33 = 2160;
      *(v128 + 22) = 2160;
      *(v128 + 24) = 1752392040;
      *(v128 + 32) = 2081;
      v130 = sub_24AEF599C(v127, v126, &v189);

      *(v128 + 34) = v130;
      *(v128 + 42) = 2160;
      *(v128 + 44) = 1752392040;
      *(v128 + 52) = 2081;

      v131 = v182;
      v132 = sub_24AEF599C(v182, v122, &v189);

      *(v128 + 54) = v132;
      _os_log_impl(&dword_24AECF000, v123, v124, "CorrelationIdentifierMap: Disambiguating (%{private,mask.hash}s, %{private,mask.hash}s) to %{private,mask.hash}s", v128, 0x3Eu);
      swift_arrayDestroy();
      MEMORY[0x24C236490](v176, -1, -1);
      v133 = v128;
      v121 = v179;
      MEMORY[0x24C236490](v133, -1, -1);
    }

    else
    {

      v131 = v182;
    }

    v134 = *(v0 + 304);
    v135 = *(v0 + 256);
    v136 = *(v0 + 224);
    *v135 = *(v0 + 352);
    v135[1] = v1;
    swift_storeEnumTagMultiPayload();
    v137 = swift_isUniquelyReferenced_nonNull_native();
    v189 = v134;
    sub_24AF03378(v121, v131, v122, v135, v137);
    result = sub_24AEE2B98(v135);
    v51 = v187;
    v106 = v189;
    goto LABEL_66;
  }

  if (v83 == *(v0 + 328) && v33 == *(v0 + 336))
  {
    goto LABEL_36;
  }

  v84 = *(v0 + 336);
  if ((sub_24AF35C4C() & 1) == 0)
  {
    v187 = v51;
    v116 = *(v0 + 376);
    LOBYTE(v82) = v116;
    goto LABEL_52;
  }

  v85 = *(v0 + 336);
LABEL_36:

  v86 = sub_24AF3527C();
  LOBYTE(v1) = sub_24AF3572C();

  v87 = os_log_type_enabled(v86, v1);
  v88 = *(v0 + 336);
  if (v87)
  {
    v89 = *(v0 + 328);
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v189 = v91;
    *v90 = 141558275;
    *(v90 + 4) = 1752392040;
    *(v90 + 12) = 2081;
    v92 = sub_24AEF599C(v89, v88, &v189);

    *(v90 + 14) = v92;
    _os_log_impl(&dword_24AECF000, v86, v1, "Duplicate destination: %{private,mask.hash}s", v90, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v91);
    MEMORY[0x24C236490](v91, -1, -1);
    MEMORY[0x24C236490](v90, -1, -1);
  }

  else
  {
  }

  v138 = *(v0 + 312) + 1;
  if (v138 == *(v0 + 296))
  {
    v139 = v51;
    v106 = *(v0 + 304);
LABEL_68:
    v156 = *(v0 + 280);
    v155 = *(v0 + 288);
    v157 = *(v0 + 272);
    v177 = *(v0 + 264);
    v180 = *(v0 + 256);
    v183 = *(v0 + 248);
    v188 = *(v0 + 240);
    v159 = *(v0 + 208);
    v158 = *(v0 + 216);
    v161 = *(v0 + 192);
    v160 = *(v0 + 200);
    v162 = *(v0 + 184);

    *v162 = v139;
    v162[1] = v106;
    v162[2] = v159;
    v162[3] = v158;

    __swift_destroy_boxed_opaque_existential_0(v161);

    v163 = *(v0 + 8);

    return v163();
  }

  else
  {
    while (1)
    {
      *(v0 + 312) = v138;
      *(v0 + 320) = v51;
      v164 = *(v0 + 200);
      if (v138 < *(v164 + 16))
      {
        break;
      }

      __break(1u);
LABEL_77:
      v175 = result;
      sub_24AEDCEFC();
      result = v175;
LABEL_47:
      v106 = *(v0 + 176);
      v108 = *(v0 + 328);
      v107 = *(v0 + 336);
      v109 = *(v0 + 376);
      v110 = *(v0 + 264);
      if (v1)
      {
        v111 = v106[7] + 24 * result;
        v112 = *(v111 + 16);
        *v111 = v109;
        *(v111 + 8) = v108;
        *(v111 + 16) = v107;

        result = sub_24AEE2B98(v110);
      }

      else
      {
        v106[(result >> 6) + 8] |= 1 << result;
        v1 = result;
        sub_24AEE2B34(v110, v106[6] + result * v33);
        v113 = v106[7] + 24 * v1;
        *v113 = v109;
        *(v113 + 8) = v108;
        *(v113 + 16) = v107;
        result = sub_24AEE2B98(v110);
        v114 = v106[2];
        v14 = __OFADD__(v114, 1);
        v115 = v114 + 1;
        if (v14)
        {
          goto LABEL_79;
        }

        v106[2] = v115;
      }

LABEL_66:
      v138 = *(v0 + 312) + 1;
      if (v138 == *(v0 + 296))
      {
        v139 = v51;
        goto LABEL_68;
      }

      *(v0 + 304) = v106;
    }

    v165 = *(v0 + 192);
    v166 = v164 + 24 * v138;
    v167 = *(v166 + 32);
    *(v0 + 376) = v167;
    v168 = *(v166 + 40);
    *(v0 + 328) = v168;
    v169 = *(v166 + 48);
    *(v0 + 336) = v169;
    v170 = v165[3];
    v171 = v165[4];
    __swift_project_boxed_opaque_existential_1(v165, v170);
    *(v0 + 16) = v167;
    *(v0 + 24) = v168;
    *(v0 + 32) = v169;
    v172 = *(v171 + 8);

    v184 = (v172 + *v172);
    v173 = v172[1];
    v174 = swift_task_alloc();
    *(v0 + 344) = v174;
    *v174 = v0;
    v174[1] = sub_24AEFA994;

    return v184(v0 + 16, v170, v171);
  }
}

uint64_t sub_24AEFB9D4()
{
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[32];
  v14 = v0[31];
  v15 = v0[30];
  v9 = v0[27];
  v10 = v0[24];

  __swift_destroy_boxed_opaque_existential_0(v10);

  v11 = v0[1];
  v12 = v0[46];

  return v11();
}