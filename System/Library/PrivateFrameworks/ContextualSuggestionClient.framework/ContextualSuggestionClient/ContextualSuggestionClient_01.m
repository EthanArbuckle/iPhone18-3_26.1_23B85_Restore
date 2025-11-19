uint64_t sub_2441AAE3C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 168) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = sub_2441AAFC8;
  }

  else
  {
    v5 = sub_2441AAF5C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2441AAF5C()
{
  v1 = v0[20];
  v2 = v0[18];
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_2441AAFC8()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = v0[21];
  v4 = v0[1];

  return v4();
}

uint64_t sub_2441AB03C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5CC8, &unk_2441DB250);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    type metadata accessor for ContextualSuggestionSnapshot();
    **(*(v4 + 64) + 40) = sub_2441D8C0C();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_2441AB2A4(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_2441AB34C;

  return sub_2441AACAC();
}

uint64_t sub_2441AB34C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_2441D88AC();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for ContextualSuggestionSnapshot();
    v10 = sub_2441D8BFC();

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

uint64_t sub_2441AB50C()
{
  v1 = v0[19];
  v2 = sub_2441AA88C();
  v0[20] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2441AB67C;
  v3 = v2;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5C58, &qword_2441DB0D8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2441AB79C;
  v0[13] = &block_descriptor_4;
  v0[14] = v4;
  [v3 fetchSnapshotOverrideWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2441AB67C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 168) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = sub_2441AD960;
  }

  else
  {
    v5 = sub_2441AD958;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2441AB79C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5CC8, &unk_2441DB250);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2441AB9EC(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_2441ABA94;

  return sub_2441AB4EC();
}

uint64_t sub_2441ABA94(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_2441D88AC();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_2441ABC38(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_2441ABC58, v1, 0);
}

uint64_t sub_2441ABC58()
{
  v1 = v0[19];
  v2 = sub_2441AA88C();
  v0[20] = v2;
  v3 = v0[18];
  v0[2] = v0;
  v0[3] = sub_2441ABDC8;
  v4 = v2;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5C60, &qword_2441DB0E8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2441ABF4C;
  v0[13] = &block_descriptor_8;
  v0[14] = v5;
  [v4 overrideWithSnapshot:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2441ABDC8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 168) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = sub_2441AAFC8;
  }

  else
  {
    v5 = sub_2441ABEE8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2441ABEE8()
{
  v1 = *(v0 + 160);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2441ABF4C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5CC8, &unk_2441DB250);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_2441AC184(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_2441AC248;

  return sub_2441ABC38(v5);
}

uint64_t sub_2441AC248()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = sub_2441D88AC();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_2441AC408()
{
  v1 = v0[18];
  v2 = sub_2441AA88C();
  v0[19] = v2;
  v0[2] = v0;
  v0[3] = sub_2441AC570;
  v3 = v2;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5C60, &qword_2441DB0E8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2441ABF4C;
  v0[13] = &block_descriptor_12;
  v0[14] = v4;
  [v3 updateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2441AC570()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 160) = v3;
  v4 = *(v1 + 144);
  if (v3)
  {
    v5 = sub_2441AC6F4;
  }

  else
  {
    v5 = sub_2441AC690;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2441AC690()
{
  v1 = *(v0 + 152);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2441AC6F4()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = v0[20];
  v4 = v0[1];

  return v4();
}

uint64_t sub_2441AC8E0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_2441AC988;

  return sub_2441AC3E8();
}

uint64_t sub_2441AC988()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_2441D88AC();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

id ContextualEngineInternalClient.__allocating_init()()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

id ContextualEngineInternalClient.init()()
{
  swift_defaultActor_initialize();
  v0[14] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextualEngineInternalClient();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t ContextualEngineInternalClient.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of ContextualEngineInternalClient.fetchAllSnapshots()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x80);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2441ACDC0;

  return v6();
}

uint64_t sub_2441ACDC0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of ContextualEngineInternalClient.fetchSnapshotOverride()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2441AD95C;

  return v6();
}

uint64_t dispatch thunk of ContextualEngineInternalClient.override(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x90);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_244198A50;

  return v8(a1);
}

uint64_t dispatch thunk of ContextualEngineInternalClient.update()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x98);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_244198A54;

  return v6();
}

uint64_t sub_2441AD240()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_244198A50;

  return sub_2441AC8E0(v2, v3);
}

uint64_t sub_2441AD2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_2441A991C(a3, v25 - v11);
  v13 = sub_2441D8D9C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2441979F8(v12, &unk_27EDD5F30, &qword_2441DAEC0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2441D8D8C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_2441D8D7C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_2441D8C8C() + 32;
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

    sub_2441979F8(a3, &unk_27EDD5F30, &qword_2441DAEC0);

    return v23;
  }

LABEL_8:
  sub_2441979F8(a3, &unk_27EDD5F30, &qword_2441DAEC0);
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

uint64_t sub_2441AD5D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_244198A50;

  return sub_2441AC184(v2, v3, v4);
}

uint64_t sub_2441AD68C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_244198A50;

  return sub_2441AB9EC(v2, v3);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2441AD778()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_244198A54;

  return sub_2441AB2A4(v2, v3);
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t block_copy_helper_91(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2441AD8C8()
{
  result = qword_27EDD7070[0];
  if (!qword_27EDD7070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD7070);
  }

  return result;
}

uint64_t sub_2441AD964(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2441D91CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2441ADA14()
{
  sub_2441D924C();
  MEMORY[0x245D5AA50](0);
  return sub_2441D926C();
}

uint64_t sub_2441ADA74()
{
  sub_2441D924C();
  MEMORY[0x245D5AA50](0);
  return sub_2441D926C();
}

uint64_t sub_2441ADAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2441D91CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2441ADB50(uint64_t a1)
{
  v2 = sub_2441AE1B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2441ADB8C(uint64_t a1)
{
  v2 = sub_2441AE1B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContextualSuggestion.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient20ContextualSuggestion_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC26ContextualSuggestionClient20ContextualSuggestion_identifier + 8);

  return v1;
}

id ContextualSuggestion.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC26ContextualSuggestionClient20ContextualSuggestion_identifier];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t ContextualSuggestion.init(coder:)(void *a1)
{
  sub_244197164();
  v2 = sub_2441D8EBC();
  if (v2)
  {
    v3 = v2;
    sub_2441D8C5C();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id ContextualSuggestion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContextualSuggestion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextualSuggestion();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2441ADF4C()
{
  result = qword_27EDD5CF0;
  if (!qword_27EDD5CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5CF0);
  }

  return result;
}

unint64_t sub_2441ADFA4()
{
  result = qword_27EDD5CF8;
  if (!qword_27EDD5CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5CF8);
  }

  return result;
}

unint64_t sub_2441ADFFC()
{
  result = qword_27EDD5D00;
  if (!qword_27EDD5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5D00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextualSuggestion.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ContextualSuggestion.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_2441AE1B8()
{
  result = qword_27EDD5D10;
  if (!qword_27EDD5D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5D10);
  }

  return result;
}

uint64_t sub_2441AE228()
{
  v1 = sub_2441BD434();
  v2 = *v1;
  v0[2] = *v1;
  v3 = (*v2 + 240) & 0xFFFFFFFFFFFFLL | 0x563E000000000000;
  v0[3] = *(*v2 + 240);
  v0[4] = v3;

  return MEMORY[0x2822009F8](sub_2441AE2BC, v2, 0);
}

uint64_t sub_2441AE2BC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = (*(v0 + 24))();
  *(v0 + 40) = 0;
  v4 = *(v0 + 16);
  v5 = v3;

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_2441AE388()
{
  v1 = v0[2];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_2441AE560(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_2441AE5C8, 0, 0);
}

uint64_t sub_2441AE5C8()
{
  v1 = sub_2441BD434();
  v2 = *v1;
  v0[3] = *v1;
  v3 = (*v2 + 240) & 0xFFFFFFFFFFFFLL | 0x563E000000000000;
  v0[4] = *(*v2 + 240);
  v0[5] = v3;

  return MEMORY[0x2822009F8](sub_2441AE65C, v2, 0);
}

uint64_t sub_2441AE65C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = (*(v0 + 32))();
  *(v0 + 48) = 0;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  if (v6)
  {
    if (v4)
    {
      sub_244194FC8(0, qword_280F94B20, off_278E089E0);
      v7 = sub_2441D8CFC();
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v0 + 16);
    (v8)[2](v8, v7, 0);
    _Block_release(v8);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2441AE790()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[6];
  if (v2)
  {
    v4 = v0[2];
    v5 = v0[6];
    v6 = sub_2441D88AC();

    (v4)[2](v4, 0, v6);
    _Block_release(v4);
  }

  else
  {
  }

  v7 = v0[1];

  return v7();
}

ATXAmbientConfigurationReader __swiftcall ATXAmbientConfigurationReader.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_2441AE904()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_244198A50;

  return sub_2441AE560(v2);
}

uint64_t sub_2441AE9B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_244198A54;

  return sub_244197B10(a1, v5);
}

uint64_t sub_2441AEA90()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2441AEAC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2441AEAF0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_2441AEB20()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

unint64_t sub_2441AEBB0()
{
  v1 = *v0;
  v2 = 1684957547;
  v3 = 0x6E6F697469736F70;
  if (v1 != 6)
  {
    v3 = 0xD000000000000017;
  }

  v4 = 0xD000000000000015;
  if (v1 == 4)
  {
    v4 = 0x6567677553736177;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6148746E65746E69;
  if (v1 == 2)
  {
    v5 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_2441AECC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2441AF434(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2441AECF8(uint64_t a1)
{
  v2 = sub_2441AF000();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2441AED34(uint64_t a1)
{
  v2 = sub_2441AF000();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarPlayWidgetConfigurationMetricsEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D20, &qword_2441DB460);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v23 = v1[3];
  v24 = v10;
  v11 = v1[4];
  v21 = v1[5];
  v22 = v11;
  v12 = v1[6];
  v19 = v1[7];
  v20 = v12;
  v18 = *(v1 + 64);
  v13 = v1[9];
  v17[2] = v1[10];
  v17[3] = v13;
  v17[1] = v1[11];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2441AF000();
  sub_2441D92BC();
  v33 = 0;
  v15 = v25;
  sub_2441D916C();
  if (v15)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v32 = 1;
  sub_2441D916C();
  v31 = 2;
  sub_2441D915C();
  v30 = 3;
  sub_2441D915C();
  v29 = 4;
  sub_2441D917C();
  v28 = 5;
  sub_2441D919C();
  v27 = 6;
  sub_2441D919C();
  v26 = 7;
  sub_2441D919C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2441AF000()
{
  result = qword_27EDD7390[0];
  if (!qword_27EDD7390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD7390);
  }

  return result;
}

unint64_t sub_2441AF074(uint64_t a1)
{
  result = sub_2441AF09C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2441AF09C()
{
  result = qword_27EDD5D28;
  if (!qword_27EDD5D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5D28);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_2441AF124(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_2441AF16C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarPlayWidgetEngagementEvent.CarPlayWidgetOutcome(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CarPlayWidgetEngagementEvent.CarPlayWidgetOutcome(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2441AF330()
{
  result = qword_27EDD75A0[0];
  if (!qword_27EDD75A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD75A0);
  }

  return result;
}

unint64_t sub_2441AF388()
{
  result = qword_27EDD76B0;
  if (!qword_27EDD76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD76B0);
  }

  return result;
}

unint64_t sub_2441AF3E0()
{
  result = qword_27EDD76B8[0];
  if (!qword_27EDD76B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD76B8);
  }

  return result;
}

uint64_t sub_2441AF434(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000011 && 0x80000002441DF010 == a2;
  if (v4 || (sub_2441D91CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_2441D91CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002441DF030 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6148746E65746E69 && a2 == 0xEA00000000006873 || (sub_2441D91CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6567677553736177 && a2 == 0xEC00000064657473 || (sub_2441D91CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002441DF050 == a2 || (sub_2441D91CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xEF6B63617453664FLL || (sub_2441D91CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002441DF070 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_2441D91CC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_2441AF6E4()
{
  v10 = sub_2441D8E3C();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2441D8E2C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_2441D8BEC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2441AF92C();
  sub_2441D8BCC();
  v11 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5AC8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5DF0, &unk_2441DB660);
  sub_244198688(&qword_27EDD5AD0, &unk_27EDD5DF0, &unk_2441DB660);
  sub_2441D8F3C();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  return sub_2441D8E6C();
}

unint64_t sub_2441AF92C()
{
  result = qword_27EDD5DE0;
  if (!qword_27EDD5DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDD5DE0);
  }

  return result;
}

id sub_2441AF978()
{
  v0 = *MEMORY[0x277CEBD00];
  sub_2441D8C6C();
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_2441D8C4C();

  v3 = [v1 initWithSuiteName_];

  return v3;
}

uint64_t CarPlayWidgetEngagementStream.identifier.getter()
{
  v1 = [*(v0 + 8) identifier];
  v2 = sub_2441D8C6C();

  return v2;
}

double CarPlayWidgetEngagementStream.init()@<D0>(uint64_t a1@<X8>)
{
  CarPlayWidgetEngagementStream.init(config:)(0, &v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

void CarPlayWidgetEngagementStream.init(config:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a1;
  v26 = a2;
  v24 = sub_2441D8E3C();
  v2 = *(v24 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v24);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2441D8E2C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_2441D8BEC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v23[1] = sub_2441AF92C();
  sub_2441D8BCC();
  v27 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5AC8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5DF0, &unk_2441DB660);
  sub_244198688(&qword_27EDD5AD0, &unk_27EDD5DF0, &unk_2441DB660);
  sub_2441D8F3C();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v24);
  v10 = v25;
  v11 = sub_2441D8E6C();
  v12 = *MEMORY[0x277CEBD00];
  sub_2441D8C6C();
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_2441D8C4C();

  v15 = [v13 initWithSuiteName_];

  if (v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = [objc_opt_self() atx:2419200.0 storeConfigWithMaxAge:?];
  }

  type metadata accessor for CarPlayWidgetEngagementEvent();
  v17 = objc_allocWithZone(MEMORY[0x277CF1B30]);
  v18 = v10;
  v19 = v16;
  v20 = sub_2441D8C4C();
  v21 = [v17 initWithPrivateStreamIdentifier:v20 storeConfig:v19 eventDataClass:swift_getObjCClassFromMetadata()];

  v22 = v26;
  *v26 = v11;
  v22[1] = v21;
  v22[2] = v15;
}

void CarPlayWidgetEngagementStream.sendEvent(_:)(uint64_t a1)
{
  v3 = [*(v1 + 8) source];
  [v3 sendEvent_];
}

id CarPlayWidgetEngagementStream.source()()
{
  v1 = [*(v0 + 8) source];

  return v1;
}

Swift::Void __swiftcall CarPlayWidgetEngagementStream.logViewDidAppear()()
{
  v1 = sub_2441D8BAC();
  v18 = *(v1 - 8);
  v2 = *(v18 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2441D8BEC();
  v5 = *(v17 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  v10 = *(v0 + 8);
  v11 = *(v0 + 16);
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = v10;
  v12[4] = v11;
  aBlock[4] = sub_2441B0180;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2441988C4;
  aBlock[3] = &block_descriptor_1;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v9;
  v15 = v10;
  sub_2441D8BDC();
  v19 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5B20, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E10, &qword_2441DAF00);
  sub_244198688(&qword_27EDD5B28, &unk_27EDD5E10, &qword_2441DAF00);
  sub_2441D8F3C();
  MEMORY[0x245D5A650](0, v8, v4, v13);
  _Block_release(v13);
  (*(v18 + 8))(v4, v1);
  (*(v5 + 8))(v8, v17);
}

void sub_2441B0180()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v6 = sub_2441D8D6C();
    v2 = sub_2441C27EC();
    v3 = *v2;
    v4 = v2[1];

    v5 = sub_2441D8C4C();

    [v1 setValue:v6 forKey:v5];
  }
}

uint64_t sub_2441B02B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v28 = a6;
  v10 = sub_2441D8BAC();
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2441D8BEC();
  v29 = *(v14 - 8);
  v30 = v14;
  v15 = *(v29 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v6;
  v18 = *(v6 + 8);
  v20 = *(v6 + 16);
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = v19;
  v21[6] = v18;
  v21[7] = v20;
  aBlock[4] = v27;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2441988C4;
  aBlock[3] = v28;
  v22 = _Block_copy(aBlock);
  v23 = v20;
  v24 = a1;

  v19;
  v25 = v18;
  sub_2441D8BDC();
  v32 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5B20, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E10, &qword_2441DAF00);
  sub_244198688(&qword_27EDD5B28, &unk_27EDD5E10, &qword_2441DAF00);
  sub_2441D8F3C();
  MEMORY[0x245D5A650](0, v17, v13, v22);
  _Block_release(v22);
  (*(v31 + 8))(v13, v10);
  (*(v29 + 8))(v17, v30);
}

uint64_t sub_2441B05E8(void *a1, void *a2, uint64_t a3, void *a4, int a5, const char *a6, uint64_t a7)
{
  v66 = a7;
  v65 = a6;
  LODWORD(v75) = a5;
  v69 = a4;
  v76 = a2;
  v81 = sub_2441D8B8C();
  v77 = *(v81 - 8);
  v9 = *(v77 + 64);
  v10 = MEMORY[0x28223BE20](v81);
  v71 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v64 - v12;
  v13 = sub_2441D892C();
  v73 = *(v13 - 8);
  v74 = v13;
  v14 = *(v73 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v70 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v64 - v22;
  v24 = [a1 chsWidget];
  v25 = [v24 extensionIdentity];

  v26 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  v78 = v18;
  v27 = *(v18 + 16);
  v68 = v18 + 16;
  v67 = v27;
  v27(v23, &v25[v26], v17);

  v28 = [a1 chsWidget];
  v29 = [v28 kind];

  v30 = sub_2441D8C6C();
  v32 = v31;

  type metadata accessor for CarPlayWidgetEngagementEvent();

  v33 = [a1 identifier];
  v34 = sub_2441D8C6C();
  v36 = v35;

  v79 = v23;
  v80 = v17;
  v37 = sub_2441D89BC();
  v39 = v38;

  sub_2441D890C();
  sub_2441D88EC();
  v41 = v40;
  (*(v73 + 8))(v16, v74);
  LOBYTE(v82[0]) = v75;
  v42 = CarPlayWidgetEngagementEvent.__allocating_init(carPlayIdentifier:widgetIdentifier:extensionIdentifier:widgetKind:timestamp:outcome:)(v76, a3, v34, v36, v37, v39, v30, v32, v41, v82);
  v75 = v30;
  v43 = [v69 source];
  v76 = v42;
  [v43 sendEvent_];

  v44 = sub_2441957AC();
  v45 = v77;
  v46 = v81;
  (*(v77 + 16))(v72, v44, v81);
  v47 = v70;
  v49 = v79;
  v48 = v80;
  v67(v70, v79, v80);
  v50 = v32;

  v51 = sub_2441D8B7C();
  v52 = sub_2441D8E1C();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    v54 = v82[0];
    *v53 = 136315394;
    v55 = sub_2441D89BC();
    v57 = v56;
    v58 = v47;
    v59 = *(v78 + 8);
    v59(v58, v48);
    v60 = sub_244195848(v55, v57, v82);

    *(v53 + 4) = v60;
    *(v53 + 12) = 2080;
    v61 = sub_244195848(v75, v50, v82);

    *(v53 + 14) = v61;
    _os_log_impl(&dword_244192000, v51, v52, v65, v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D5B3C0](v54, -1, -1);
    MEMORY[0x245D5B3C0](v53, -1, -1);

    (*(v45 + 8))(v72, v81);
    return (v59)(v79, v80);
  }

  else
  {

    v63 = *(v78 + 8);
    v63(v47, v48);
    (*(v45 + 8))(v72, v46);
    return (v63)(v49, v48);
  }
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t CarPlayWidgetEngagementStream.logStackDidChange(_:widget:reason:carPlayIdentifier:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v10 = sub_2441D8BAC();
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2441D8BEC();
  v31 = *(v14 - 8);
  v32 = v14;
  v15 = *(v31 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v5;
  v19 = *(v5 + 8);
  v20 = *(v5 + 16);
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = v18;
  v21[4] = v19;
  v21[5] = v20;
  v22 = v30;
  v21[6] = a3;
  v21[7] = v22;
  v21[8] = a5;
  v21[9] = a1;
  aBlock[4] = sub_2441B1C84;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2441988C4;
  aBlock[3] = &block_descriptor_24;
  v23 = _Block_copy(aBlock);
  v24 = a1;
  v25 = a2;
  v18;
  v26 = v19;
  v27 = v20;

  sub_2441D8BDC();
  v34 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5B20, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E10, &qword_2441DAF00);
  sub_244198688(&qword_27EDD5B28, &unk_27EDD5E10, &qword_2441DAF00);
  sub_2441D8F3C();
  MEMORY[0x245D5A650](0, v17, v13, v23);
  _Block_release(v23);
  (*(v33 + 8))(v13, v10);
  (*(v31 + 8))(v17, v32);
}

uint64_t sub_2441B10F0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v116 = a7;
  v120 = a5;
  v121 = a6;
  v111 = a3;
  v115 = a2;
  v9 = sub_2441D8B8C();
  v10 = *(v9 - 8);
  v125 = v9;
  v126 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v117 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v109 = &v107 - v15;
  MEMORY[0x28223BE20](v14);
  v112 = &v107 - v16;
  v17 = sub_2441D892C();
  v118 = *(v17 - 8);
  v119 = v17;
  v18 = *(v118 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v108 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v110 = &v107 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v107 - v28;
  v30 = [a1 chsWidget];
  v31 = [v30 extensionIdentity];

  v32 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  v122 = v22;
  v33 = *(v22 + 16);
  v34 = &v31[v32];
  v35 = v21;
  v127 = v29;
  v114 = v22 + 16;
  v113 = v33;
  v33(v29, v34, v21);

  v36 = [a1 chsWidget];
  v37 = [v36 kind];

  v124 = sub_2441D8C6C();
  v128 = v38;

  switch(a4)
  {
    case 1:
      v39 = 5;
      break;
    case 2:
      if ([a1 isSuggestedWidget])
      {
        v40 = v111;
        if (v111)
        {
          v41 = sub_2441D8D6C();
          v42 = sub_2441C283C();
          v43 = *v42;
          v44 = v42[1];

          v45 = sub_2441D8C4C();

          [v40 setValue:v41 forKey:v45];
        }

        v39 = 3;
      }

      else
      {
        v46 = v111;
        if (v111)
        {
          v47 = sub_2441D8D6C();
          v48 = sub_2441C2814();
          v49 = *v48;
          v50 = v48[1];

          v51 = sub_2441D8C4C();

          [v46 setValue:v47 forKey:v51];
        }

        v39 = 6;
      }

      break;
    case 3:
      v39 = 4;
      break;
    default:
      v39 = 0;
      break;
  }

  type metadata accessor for CarPlayWidgetEngagementEvent();
  v52 = v121;

  v53 = [a1 identifier];
  v54 = sub_2441D8C6C();
  v56 = v55;

  v123 = v35;
  v57 = sub_2441D89BC();
  v59 = v58;
  v60 = v128;

  sub_2441D890C();
  sub_2441D88EC();
  v62 = v61;
  (*(v118 + 8))(v20, v119);
  LOBYTE(v129[0]) = v39;
  v63 = CarPlayWidgetEngagementEvent.__allocating_init(carPlayIdentifier:widgetIdentifier:extensionIdentifier:widgetKind:timestamp:outcome:)(v120, v52, v54, v56, v57, v59, v124, v60, v62, v129);
  v64 = [v115 source];
  [v64 sendEvent_];

  v66 = v125;
  v65 = v126;
  if (v116)
  {
    v121 = v63;
    v67 = [v116 identifier];
    v120 = sub_2441D8C6C();
    v69 = v68;

    v70 = sub_2441957AC();
    v71 = v112;
    (*(v65 + 16))(v112, v70, v66);
    v72 = v110;
    v73 = v127;
    v74 = v123;
    v113(v110, v127, v123);

    v75 = sub_2441D8B7C();
    v76 = sub_2441D8E1C();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = v128;
      v79 = v77;
      v119 = swift_slowAlloc();
      v129[0] = v119;
      *v79 = 136315650;
      v80 = sub_2441D89BC();
      v82 = v81;
      v83 = *(v122 + 8);
      v83(v72, v74);
      v84 = sub_244195848(v80, v82, v129);

      *(v79 + 4) = v84;
      *(v79 + 12) = 2080;
      v85 = sub_244195848(v124, v78, v129);

      *(v79 + 14) = v85;
      *(v79 + 22) = 2080;
      v86 = sub_244195848(v120, v69, v129);

      *(v79 + 24) = v86;
      _os_log_impl(&dword_244192000, v75, v76, "Successfully sent logStackDidChange feedback event for widget %s of kind %s in stack with identifier %s", v79, 0x20u);
      v87 = v119;
      swift_arrayDestroy();
      MEMORY[0x245D5B3C0](v87, -1, -1);
      MEMORY[0x245D5B3C0](v79, -1, -1);

      (*(v126 + 8))(v112, v125);
      return (v83)(v127, v74);
    }

    v106 = *(v122 + 8);
    v106(v72, v74);
    (*(v126 + 8))(v71, v125);
  }

  else
  {
    v89 = sub_2441957AC();
    v90 = v109;
    (*(v65 + 16))(v109, v89, v66);
    v91 = v108;
    v73 = v127;
    v74 = v123;
    v113(v108, v127, v123);

    v92 = sub_2441D8B7C();
    v93 = sub_2441D8E1C();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v96 = v126;
      v97 = v95;
      v129[0] = v95;
      *v94 = 136315394;
      v98 = sub_2441D89BC();
      v100 = v99;
      v121 = v63;
      v101 = v128;
      v102 = v91;
      v103 = *(v122 + 8);
      v103(v102, v74);
      v104 = sub_244195848(v98, v100, v129);

      *(v94 + 4) = v104;
      *(v94 + 12) = 2080;
      v105 = sub_244195848(v124, v101, v129);

      *(v94 + 14) = v105;
      _os_log_impl(&dword_244192000, v92, v93, "Successfully sent logStackDidChange feedback event for widget %s of kind %s in unknown stack", v94, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D5B3C0](v97, -1, -1);
      MEMORY[0x245D5B3C0](v94, -1, -1);

      (*(v96 + 8))(v109, v125);
      return (v103)(v127, v123);
    }

    v106 = *(v122 + 8);
    v106(v91, v74);
    (*(v126 + 8))(v90, v66);
  }

  return (v106)(v73, v74);
}

uint64_t CarPlayWidgetEngagementStream.getEngagementLogs(lastN:)(uint64_t a1)
{
  v3 = *(v1 + 2);
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F90];
  v12 = *v1;
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v6 = CarPlayWidgetEngagementStream.publisher(lastN:)(v5);

  v15 = sub_2441B20B4;
  v16 = 0;
  *&v12 = MEMORY[0x277D85DD0];
  *(&v12 + 1) = 1107296256;
  v13 = sub_2441B2EB4;
  v14 = &block_descriptor_30;
  v7 = _Block_copy(&v12);
  v15 = sub_2441B20B8;
  v16 = v4;
  *&v12 = MEMORY[0x277D85DD0];
  *(&v12 + 1) = 1107296256;
  v13 = sub_2441B2EB4;
  v14 = &block_descriptor_33;
  v8 = _Block_copy(&v12);

  v9 = [v6 sinkWithCompletion:v7 receiveInput:v8];
  _Block_release(v8);
  _Block_release(v7);

  swift_beginAccess();
  v10 = *(v4 + 16);

  return v10;
}

id CarPlayWidgetEngagementStream.publisher(lastN:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D30, qword_2441DB670);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = *(v1 + 8);
  v11 = sub_2441D892C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v9, 1, 1, v11);
  v13(v7, 1, 1, v11);
  v14 = [a1 integerValue];
  v15 = *(v12 + 48);
  v16 = 0;
  if (v15(v9, 1, v11) != 1)
  {
    v16 = sub_2441D88FC();
    (*(v12 + 8))(v9, v11);
  }

  if (v15(v7, 1, v11) == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_2441D88FC();
    (*(v12 + 8))(v7, v11);
  }

  v18 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v16 endDate:v17 maxEvents:0 lastN:v14 reversed:0];

  v19 = [v10 publisherWithOptions_];
  return v19;
}

uint64_t CarPlayWidgetEngagementStream.getEngagementLogs(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D30, qword_2441DB670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &aBlock - v6;
  v8 = *(v2 + 8);
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x277D84F90];
  v10 = sub_2441D892C();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v7, a2, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  v12 = sub_2441D88FC();
  v13 = 0;
  if ((*(v11 + 48))(v7, 1, v10) != 1)
  {
    v13 = sub_2441D88FC();
    (*(v11 + 8))(v7, v10);
  }

  v14 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v12 endDate:v13 maxEvents:0 lastN:0 reversed:0];

  v15 = [v8 publisherWithOptions_];
  v25 = sub_2441B2E8C;
  v26 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_2441B2EB4;
  v24 = &block_descriptor_37;
  v16 = _Block_copy(&aBlock);
  v25 = sub_2441B29A4;
  v26 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_2441B29C4;
  v24 = &block_descriptor_40;
  v17 = _Block_copy(&aBlock);

  v18 = [v15 sinkWithCompletion:v16 shouldContinue:v17];
  _Block_release(v17);
  _Block_release(v16);

  swift_beginAccess();
  v19 = *(v9 + 16);

  return v19;
}

id CarPlayWidgetEngagementStream.publisher(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D30, qword_2441DB670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = *(v2 + 8);
  v9 = sub_2441D892C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, a2, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  v11 = sub_2441D88FC();
  v12 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v12 = sub_2441D88FC();
    (*(v10 + 8))(v7, v9);
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v11 endDate:v12 maxEvents:0 lastN:0 reversed:0];

  v14 = [v8 publisherWithOptions_];
  return v14;
}

id sub_2441B25C8(void *a1)
{
  v2 = sub_2441D8B8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v8 = result;
    v9 = sub_2441957AC();
    (*(v3 + 16))(v6, v9, v2);
    v10 = v8;
    v11 = sub_2441D8B7C();
    v12 = sub_2441D8E0C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v10;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_244192000, v11, v12, "Could not retrieve events from engagement stream: %@", v13, 0xCu);
      sub_2441B2E00(v14);
      MEMORY[0x245D5B3C0](v14, -1, -1);
      MEMORY[0x245D5B3C0](v13, -1, -1);
    }

    else
    {
      v15 = v11;
      v11 = v10;
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_2441B27AC(void *a1, uint64_t a2)
{
  v4 = sub_2441D8B8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 eventBody];
  if (v9)
  {
    v10 = v9;
    swift_beginAccess();
    v11 = v10;
    MEMORY[0x245D5A4E0]();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v16 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2441D8D2C();
    }

    sub_2441D8D4C();
    swift_endAccess();
  }

  else
  {
    v12 = sub_2441957AC();
    (*(v5 + 16))(v8, v12, v4);
    v13 = sub_2441D8B7C();
    v14 = sub_2441D8E0C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_244192000, v13, v14, "Failed to get eventBody from event.", v15, 2u);
      MEMORY[0x245D5B3C0](v15, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_2441B29C4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

Swift::Void __swiftcall CarPlayWidgetEngagementStream.clearAllData()()
{
  v1 = sub_2441D8B8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 8);
  aBlock[4] = sub_2441AD9E4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2441B2C28;
  aBlock[3] = &block_descriptor_43;
  v7 = _Block_copy(aBlock);

  [v6 pruneWithPredicateBlock_];
  _Block_release(v7);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v8 = sub_2441957AC();
    (*(v2 + 16))(v5, v8, v1);
    v9 = sub_2441D8B7C();
    v10 = sub_2441D8DFC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_244192000, v9, v10, "CarPlayWidgetFeedback stream cleared.", v11, 2u);
      MEMORY[0x245D5B3C0](v11, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_2441B2C28(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a2;
  LOBYTE(a3) = v6(a2, a3);

  return a3 & 1;
}

void sub_2441B2C84(uint64_t a1)
{
  v3 = [*(v1 + 8) source];
  [v3 sendEvent_];
}

void *sub_2441B2CF4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2441B2D18(uint64_t *a1, int a2)
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

uint64_t sub_2441B2D60(uint64_t result, int a2, int a3)
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

void type metadata accessor for ATXWidgetStackChangeReason()
{
  if (!qword_27EDD5D38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EDD5D38);
    }
  }
}

uint64_t sub_2441B2E00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F60, &qword_2441DBCB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2441B2ED4(unint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = [v2 widgets];
  sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
  v4 = sub_2441D8D0C();

  v50 = v1;
  v49 = v2;
  if (v4 >> 62)
  {
    goto LABEL_48;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_49:

    return;
  }

LABEL_3:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x245D5A7F0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      v5 = sub_2441D8F5C();
      if (!v5)
      {
        goto LABEL_49;
      }

      goto LABEL_3;
    }

    if ([v7 isSuggestedWidget])
    {
      break;
    }

    ++v6;
    if (v9 == v5)
    {
      goto LABEL_49;
    }
  }

  v10 = a1;
  if (a1 >> 62)
  {
    v4 = a1;
    v47 = sub_2441D8F5C();
    v10 = a1;
    v11 = v47;
    if (!v47)
    {
      goto LABEL_51;
    }

LABEL_14:
    v12 = 0;
    v52 = v10 & 0xFFFFFFFFFFFFFF8;
    v53 = v10 & 0xC000000000000001;
    v51 = v11;
    while (1)
    {
      if (v53)
      {
        v13 = MEMORY[0x245D5A7F0](v12);
      }

      else
      {
        if (v12 >= *(v52 + 16))
        {
          goto LABEL_47;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v4 = v13;
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_46;
      }

      v15 = *&v13[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier];
      v16 = *&v13[OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier + 8];
      v17 = [v8 chsWidget];
      v18 = [v17 extensionIdentity];

      v19 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
      v20 = sub_2441D89BC();
      v22 = v21;
      swift_endAccess();

      if (v15 == v20 && v16 == v22)
      {
      }

      else
      {
        v24 = sub_2441D91CC();

        if ((v24 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v25 = *(v4 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind);
      v26 = *(v4 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind + 8);
      v27 = [v8 chsWidget];
      v28 = [v27 kind];

      v29 = sub_2441D8C6C();
      v31 = v30;

      if (v25 == v29 && v26 == v31)
      {
      }

      else
      {
        v32 = sub_2441D91CC();

        if ((v32 & 1) == 0)
        {
LABEL_15:

          goto LABEL_16;
        }
      }

      v33 = [v8 chsWidget];
      v34 = [v33 intentReference];

      if (!v34 || (v35 = [v34 intent], v34, !v35))
      {
        v35 = v4;
LABEL_40:

LABEL_41:
        v38 = [v49 identifier];
        if (!v38)
        {
          sub_2441D8C6C();
          v38 = sub_2441D8C4C();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D98, "fq");
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2441DB770;
        *(inited + 32) = v8;
        v40 = v8;
        sub_2441B7AA4(inited);
        swift_setDeallocating();
        v41 = *(inited + 16);
        swift_arrayDestroy();
        v42 = objc_allocWithZone(ATXWidgetStackSuggestion);
        sub_244195E64();
        v43 = v40;
        v44 = sub_2441D8DAC();

        v45 = [v42 initWithStackIdentifier:v38 topWidget:v43 suggestedWidgets:v44];

        v46 = *(v50 + 32);
        *(v50 + 32) = v45;

        return;
      }

      v36 = *(v4 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_intent);
      if (!v36)
      {

        goto LABEL_40;
      }

      v37 = [objc_opt_self() intent:v35 isEqualToIntent:v36];

      if (v37)
      {
        goto LABEL_41;
      }

LABEL_16:
      ++v12;
      v10 = a1;
      if (v14 == v51)
      {
        goto LABEL_51;
      }
    }
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_51:
  sub_2441B6614();
  swift_allocError();
  *v48 = 4;
  swift_willThrow();
}

void *sub_2441B3474(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2441D8F5C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x245D5A7F0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_2441B3588(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_2441D8F5C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x245D5A7F0](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

void sub_2441B36AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (![v2 allowsSmartRotate])
  {
    sub_2441B7D94();
    swift_allocError();
    v34 = 0;
LABEL_41:
    *v33 = v34;
    swift_willThrow();
    return;
  }

  v3 = [v2 widgets];
  sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
  v4 = sub_2441D8D0C();

  v44 = v1;
  v43 = v2;
  if (v4 >> 62)
  {
LABEL_39:
    v5 = sub_2441D8F5C();
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_40;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_40:

    sub_2441B7D94();
    swift_allocError();
    v34 = 1;
    goto LABEL_41;
  }

LABEL_4:
  v6 = 0;
  v49 = (a1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier);
  v46 = (a1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind);
  v45 = OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_intent;
  v48 = v5;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x245D5A7F0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v10 = *v49;
    v11 = v49[1];
    v12 = [v7 chsWidget];
    v13 = [v12 extensionIdentity];

    v14 = *MEMORY[0x277CFA138];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
    v15 = sub_2441D89BC();
    v17 = v16;
    swift_endAccess();

    if (v10 == v15 && v11 == v17)
    {
    }

    else
    {
      v19 = sub_2441D91CC();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v20 = *v46;
    v21 = v46[1];
    v22 = [v8 chsWidget];
    v23 = [v22 kind];

    v24 = sub_2441D8C6C();
    v26 = v25;

    if (v20 != v24)
    {
      goto LABEL_20;
    }

    if (v21 == v26)
    {
    }

    else
    {
LABEL_20:
      v27 = sub_2441D91CC();

      if ((v27 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v28 = [v8 chsWidget];
    v29 = [v28 intentReference];

    if (!v29)
    {
      goto LABEL_29;
    }

    v30 = [v29 intent];

    if (!v30)
    {
      goto LABEL_29;
    }

    v31 = *(a1 + v45);
    if (!v31)
    {
      break;
    }

    v32 = [objc_opt_self() intent:v30 isEqualToIntent:v31];

    if (v32)
    {
      goto LABEL_29;
    }

LABEL_5:

    ++v6;
    if (v9 == v48)
    {
      goto LABEL_40;
    }
  }

LABEL_29:

  v35 = [v43 identifier];
  if (!v35)
  {
    sub_2441D8C6C();
    v35 = sub_2441D8C4C();
  }

  v36 = *(a1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_blendingClientModelSpecification);
  if (v36)
  {
    v37 = [v36 clientModelId];
    if (!v37)
    {
      sub_2441D8C6C();
      v37 = sub_2441D8C4C();
    }
  }

  else
  {
    v37 = 0;
  }

  v38 = [v8 copyWithSource_];

  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_2441D8F5C())
    {
      sub_2441B7AA4(MEMORY[0x277D84F90]);
    }
  }

  v39 = objc_allocWithZone(ATXWidgetStackSuggestion);
  sub_244195E64();
  v40 = sub_2441D8DAC();

  v41 = [v39 initWithStackIdentifier:v35 topWidget:v38 suggestedWidgets:v40];

  v42 = *(v44 + 32);
  *(v44 + 32) = v41;
}

void sub_2441B3C1C(uint64_t a1, void *a2)
{
  v85 = a2;
  v5 = sub_2441D895C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D88, &unk_2441DCDA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v74 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v84 = &v74 - v16;
  v17 = *(v2 + 16);
  if (![v17 allowsNewWidget])
  {
    sub_2441B6614();
    swift_allocError();
    *v26 = 0;
    goto LABEL_14;
  }

  v76 = v13;
  v77 = v9;
  v78 = v6;
  v83 = a1;
  v18 = [v17 widgets];
  v19 = sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
  v20 = sub_2441D8D0C();

  v80 = v19;
  v81 = v3;
  v82 = v17;
  v79 = v5;
  if (v20 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2441D8F5C())
  {
    v22 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x245D5A7F0](v22, v20);
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v23 = *(v20 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if ([v23 isSuggestedWidget])
      {

        sub_2441B6614();
        swift_allocError();
        *v27 = 3;
        swift_willThrow();

        return;
      }

      ++v22;
      if (v25 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:
  v75 = v2;

  type metadata accessor for WidgetPersonality();
  v29 = *(v83 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier);
  v28 = *(v83 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_extensionBundleIdentifier + 8);
  v31 = *(v83 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind);
  v30 = *(v83 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_kind + 8);

  v32 = sub_2441C38C4(v29, v28, v31, v30);
  v33 = [v85 descriptorForPersonality_];
  v34 = v82;
  if (!v33)
  {
    type metadata accessor for SpecialWidgetDescriptor();
    v35 = v32;
    v36 = sub_2441C9FD8(v35);
    if (v36)
    {
      v33 = v36;
      goto LABEL_22;
    }

    sub_2441B6614();
    swift_allocError();
    *v46 = v35;
LABEL_14:
    swift_willThrow();
    return;
  }

LABEL_22:
  [v34 family];
  v37 = CHSWidgetFamilyMaskFromWidgetFamily();
  if ((v37 & ~[v33 supportedFamilies]) != 0)
  {
    sub_2441B6614();
    swift_allocError();
    v40 = 2;
LABEL_31:
    *v39 = v40;
    swift_willThrow();

    return;
  }

  if (*(v75 + 24))
  {
    if (*(v75 + 24) == 1)
    {
      v38 = sub_2441C9FA0();
    }

    else
    {
      v38 = sub_2441C9FC4();
    }
  }

  else
  {
    v38 = sub_2441C9FB8();
  }

  if ((v37 & ~[v33 disfavoredFamiliesForLocation_]) == 0)
  {
    sub_2441B6614();
    swift_allocError();
    v40 = 5;
    goto LABEL_31;
  }

  sub_2441D89AC();
  v41 = v83;
  v42 = *(v83 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_containerBundleIdentifier + 8);
  v74 = v32;
  v85 = v33;
  if (v42)
  {
    v43 = *(v83 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_containerBundleIdentifier);

    v44 = v76;
    sub_2441D89AC();
    v45 = 0;
  }

  else
  {
    v45 = 1;
    v44 = v76;
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D90, &qword_2441DCDB0);
  (*(*(v47 - 8) + 56))(v44, v45, 1, v47);
  sub_2441D8E9C();
  v48 = sub_2441D8E8C();
  v49 = [v34 &selRef_clientModelTypeFromClientModelId_];
  v50 = *(v41 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_intent);
  v51 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v52 = v41;
  v53 = sub_2441D8C4C();
  v54 = [v51 initWithExtensionIdentity:v48 kind:v53 family:v49 intent:v50 activityIdentifier:0];

  v55 = v77;
  sub_2441D894C();
  sub_2441D893C();
  (*(v78 + 8))(v55, v79);
  v56 = *(v52 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_blendingClientModelSpecification);
  if (v56)
  {
    v57 = [v56 clientModelId];
    sub_2441D8C6C();
    v59 = v58;
  }

  else
  {
    v59 = 0;
  }

  v60 = v75;
  v61 = v54;
  v62 = sub_2441D8C4C();

  if (v59)
  {
    v63 = sub_2441D8C4C();
  }

  else
  {
    v63 = 0;
  }

  v64 = [objc_allocWithZone(ATXWidget) initWithIdentifier:v62 chsWidget:v61 suggestedWidget:1 source:v63];

  v65 = [v34 identifier];
  if (!v65)
  {
    sub_2441D8C6C();
    v65 = sub_2441D8C4C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D98, "fq");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2441DB770;
  *(inited + 32) = v64;
  v67 = v64;
  sub_2441B7AA4(inited);
  swift_setDeallocating();
  v68 = *(inited + 16);
  swift_arrayDestroy();
  v69 = objc_allocWithZone(ATXWidgetStackSuggestion);
  sub_244195E64();
  v70 = v67;
  v71 = sub_2441D8DAC();

  v72 = [v69 initWithStackIdentifier:v65 topWidget:v70 suggestedWidgets:v71];

  v73 = *(v60 + 32);
  *(v60 + 32) = v72;
}

uint64_t sub_2441B4458()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

id sub_2441B4498()
{
  v0 = objc_allocWithZone(ATXWidgetLocationAuthorizationTracker);

  return [v0 init];
}

uint64_t sub_2441B4508(unsigned __int8 a1)
{
  sub_2441D924C();
  MEMORY[0x245D5AA50](a1);
  return sub_2441D926C();
}

uint64_t sub_2441B4558@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetStackSuggestionGenerator() + 40);
  v4 = sub_2441D8B8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WidgetStackSuggestionGenerator()
{
  result = qword_27EDD7AC0;
  if (!qword_27EDD7AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2441B4620@<X0>(char a1@<W0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 40) = [objc_allocWithZone(ATXWidgetLocationAuthorizationTracker) init];
  *(a6 + 48) = a1;
  if (a2 >> 62)
  {
    v12 = sub_2441D8F5C();
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_13:

    v24 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_3:
  v30 = MEMORY[0x277D84F90];
  result = sub_2441D904C();
  if (v12 < 0)
  {
    __break(1u);
    return result;
  }

  v29 = a4;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    do
    {
      v15 = v14 + 1;
      v16 = MEMORY[0x245D5A7F0]();
      type metadata accessor for WidgetStackSuggestionGenerator.StackState();
      v17 = swift_allocObject();
      *(v17 + 32) = 0;
      *(v17 + 16) = v16;
      *(v17 + 24) = a1;
      sub_2441D902C();
      v18 = *(v30 + 16);
      sub_2441D905C();
      sub_2441D906C();
      sub_2441D903C();
      v14 = v15;
    }

    while (v12 != v15);
  }

  else
  {
    v28 = a5;
    type metadata accessor for WidgetStackSuggestionGenerator.StackState();
    v19 = 32;
    do
    {
      v20 = *(a2 + v19);
      v21 = swift_allocObject();
      *(v21 + 32) = 0;
      *(v21 + 16) = v20;
      *(v21 + 24) = a1;
      v22 = v20;
      sub_2441D902C();
      v23 = *(v30 + 16);
      sub_2441D905C();
      sub_2441D906C();
      sub_2441D903C();
      v19 += 8;
      --v12;
    }

    while (v12);

    a5 = v28;
  }

  a4 = v29;
  v24 = v30;
LABEL_14:
  *a6 = v24;
  *(a6 + 8) = a3;
  *(a6 + 32) = a4;
  v25 = *(type metadata accessor for WidgetStackSuggestionGenerator() + 40);
  v26 = sub_2441D8B8C();
  v27 = *(*(v26 - 8) + 32);

  return v27(a6 + v25, a5, v26);
}

uint64_t sub_2441B4894()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[2];
    goto LABEL_114;
  }

  v89 = v0[3];
  sub_244199AF4();
  v4 = v0[1];
  v97[0] = MEMORY[0x277D84F90];
  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_132:
    v81 = v3;
    v6 = sub_2441D8F5C();
    v3 = v81;
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v91 = v0;
  v88 = v3;
  if (v6)
  {
    v7 = 0;
    v0 = MEMORY[0x277D84F90];
    while (2)
    {
      v8 = v7;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x245D5A7F0](v8, v4);
        }

        else
        {
          if (v8 >= *(v5 + 16))
          {
            goto LABEL_117;
          }

          v3 = *(v4 + 8 * v8 + 32);
        }

        v9 = v3;
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
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
          goto LABEL_132;
        }

        type metadata accessor for ContextualActionSuggestion();
        if (swift_dynamicCastClass())
        {
          break;
        }

        ++v8;
        if (v7 == v6)
        {
          goto LABEL_21;
        }
      }

      MEMORY[0x245D5A4E0]();
      if (*((v97[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v97[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2441D8D2C();
      }

      v3 = sub_2441D8D4C();
      v0 = v97[0];
      if (v7 != v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v0 = MEMORY[0x277D84F90];
  }

LABEL_21:
  v99 = v0;
  v98 = sub_2441B7DE8(MEMORY[0x277D84F90]);
  v11 = v91;
  v12 = *v91;
  if (!(*v91 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_23;
    }

LABEL_112:

    goto LABEL_113;
  }

  if (v12 < 0)
  {
    v82 = *v91;
  }

  v13 = sub_2441D8F5C();
  if (!v13)
  {
    goto LABEL_112;
  }

LABEL_23:
  v5 = 0;
  v14 = v12 & 0xC000000000000001;
  v83 = v12 + 32;
  v84 = v12 & 0xFFFFFFFFFFFFFF8;
  v94 = *MEMORY[0x277CEBBA0];
  v15 = &unk_278E09000;
  v16 = &unk_278E09000;
  v86 = v13;
  v87 = v12;
  v85 = v12 & 0xC000000000000001;
  while (1)
  {
    if (v14)
    {
      v3 = MEMORY[0x245D5A7F0](v5, v12);
      v0 = v3;
      v17 = __OFADD__(v5++, 1);
      if (v17)
      {
        goto LABEL_127;
      }
    }

    else
    {
      if (v5 >= *(v84 + 16))
      {
        __break(1u);
LABEL_138:
        result = sub_2441D91EC();
        __break(1u);
        return result;
      }

      v0 = *(v83 + 8 * v5);

      v17 = __OFADD__(v5++, 1);
      if (v17)
      {
        goto LABEL_127;
      }
    }

    v4 = [v0[2] v15[247]];
    sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
    v18 = sub_2441D8D0C();

    v93 = v18;
    if (!(v18 >> 62))
    {
      v3 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
        break;
      }

      goto LABEL_108;
    }

    v3 = sub_2441D8F5C();
    if (v3)
    {
      break;
    }

LABEL_108:

LABEL_25:

    if (v5 == v13)
    {
      goto LABEL_112;
    }
  }

  v90 = v5;
  v19 = v18;
  v95 = v3;
  v96 = v18 & 0xC000000000000001;
  v92 = v18 & 0xFFFFFFFFFFFFFF8;
  v20 = 4;
  while (1)
  {
    v0 = (v20 - 4);
    if (v96)
    {
      v3 = MEMORY[0x245D5A7F0](v20 - 4, v19);
    }

    else
    {
      if (v0 >= *(v92 + 16))
      {
        goto LABEL_118;
      }

      v3 = *(v19 + 8 * v20);
    }

    v25 = v3;
    v4 = v20 - 3;
    if (__OFADD__(v0, 1))
    {
      __break(1u);
      goto LABEL_116;
    }

    v26 = [v3 v16[192]];
    v27 = [v26 extensionIdentity];

    v28 = *MEMORY[0x277CFA138];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
    v29 = sub_2441D89BC();
    v31 = v30;
    swift_endAccess();

    if (v29 == sub_2441D8C6C() && v31 == v32)
    {
    }

    else
    {
      v5 = sub_2441D91CC();

      if ((v5 & 1) == 0)
      {

        goto LABEL_37;
      }
    }

    v34 = [v25 v16[192]];
    v35 = [v34 kind];

    v36 = sub_2441D8C6C();
    v38 = v37;

    v39 = ATXSpecialWidgetKindSiriSuggestions();
    v40 = sub_2441D8C6C();
    v42 = v41;

    if (v36 != v40)
    {
      goto LABEL_53;
    }

    if (v38 == v42)
    {
    }

    else
    {
LABEL_53:
      v5 = sub_2441D91CC();

      if ((v5 & 1) == 0)
      {

        v19 = v93;
        goto LABEL_37;
      }
    }

    v5 = v99;
    v43 = v99 >> 62;
    if (v99 >> 62)
    {
      break;
    }

    if (!*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_109;
    }

LABEL_56:
    v44 = [v25 identifier];
    v45 = sub_2441D8C6C();
    v47 = v46;

    if (*(v98 + 16))
    {
      sub_244198F90(v45, v47);
      v49 = v48;

      if (v49)
      {
        v50 = [v25 identifier];
        v51 = sub_2441D8C6C();
        v53 = v52;

        v0 = &v98;
        v3 = sub_2441B5DF4(v97, v51, v53);
        v55 = v3;
        if (!*v54)
        {
          (v3)(v97, 0);

          v16 = &unk_278E09000;
          v19 = v93;
          goto LABEL_37;
        }

        v56 = v54;
        if (v43)
        {
          if (v5 < 0)
          {
            v0 = v5;
          }

          else
          {
            v0 = (v5 & 0xFFFFFFFFFFFFFF8);
          }

          v3 = sub_2441D8F5C();
          if (!v3)
          {
            goto LABEL_129;
          }

          v3 = sub_2441D8F5C();
          if (!v3)
          {
            goto LABEL_130;
          }
        }

        else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_128;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          MEMORY[0x245D5A7F0](0, v5);
          if (!v43)
          {
LABEL_85:
            v3 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_103:
            v19 = v93;
            if (!v3)
            {
              goto LABEL_131;
            }

            v73 = sub_2441B7FEC(0, 1);
            MEMORY[0x245D5A4E0](v73);
            if (*((*v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v74 = *((*v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_2441D8D2C();
              v19 = v93;
            }

            sub_2441D8D4C();
            v55(v97, 0);

            goto LABEL_36;
          }
        }

        else
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_126;
          }

          v62 = *(v5 + 32);
          if (!v43)
          {
            goto LABEL_85;
          }
        }

        v3 = sub_2441D8F5C();
        goto LABEL_103;
      }
    }

    else
    {
    }

    v0 = [v25 identifier];
    v57 = sub_2441D8C6C();
    v59 = v58;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D98, "fq");
    v3 = swift_allocObject();
    v60 = v3;
    *(v3 + 16) = xmmword_2441DB770;
    if (v43)
    {
      if (v5 < 0)
      {
        v0 = v5;
      }

      else
      {
        v0 = (v5 & 0xFFFFFFFFFFFFFF8);
      }

      v3 = sub_2441D8F5C();
      if (!v3)
      {
        goto LABEL_121;
      }

      v3 = sub_2441D8F5C();
      if (!v3)
      {
        goto LABEL_123;
      }
    }

    else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_122;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v61 = MEMORY[0x245D5A7F0](0, v5);
      if (!v43)
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_119;
      }

      v61 = *(v5 + 32);
      if (!v43)
      {
LABEL_75:
        v3 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_90;
      }
    }

    v3 = sub_2441D8F5C();
LABEL_90:
    v19 = v93;
    if (!v3)
    {
      goto LABEL_124;
    }

    sub_2441B7FEC(0, 1);
    *(v60 + 32) = v61;
    v0 = v98;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97[0] = v0;
    v3 = sub_244198F90(v57, v59);
    v65 = v0[2];
    v66 = (v64 & 1) == 0;
    v17 = __OFADD__(v65, v66);
    v67 = v65 + v66;
    if (v17)
    {
      goto LABEL_120;
    }

    v5 = v64;
    if (v0[3] < v67)
    {
      sub_2441B7420(v67, isUniquelyReferenced_nonNull_native);
      v3 = sub_244198F90(v57, v59);
      if ((v5 & 1) != (v68 & 1))
      {
        goto LABEL_138;
      }

LABEL_96:
      if ((v5 & 1) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_35;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_96;
    }

    v72 = v3;
    sub_2441B7878();
    v3 = v72;
    v19 = v93;
    if ((v5 & 1) == 0)
    {
LABEL_97:
      v0 = v97[0];
      v97[0][(v3 >> 6) + 8] |= 1 << v3;
      v69 = (v0[6] + 16 * v3);
      *v69 = v57;
      v69[1] = v59;
      *(v0[7] + 8 * v3) = v60;

      v70 = v0[2];
      v17 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v17)
      {
        goto LABEL_125;
      }

      v0[2] = v71;
      v98 = v0;
      goto LABEL_36;
    }

LABEL_35:
    v21 = v3;

    v22 = v97[0];
    v23 = v97[0][7];
    v24 = *(v23 + 8 * v21);
    *(v23 + 8 * v21) = v60;

    v98 = v22;
LABEL_36:
    v16 = &unk_278E09000;
LABEL_37:
    ++v20;
    if (v4 == v95)
    {

      v11 = v91;
      v13 = v86;
      v12 = v87;
      v5 = v90;
      v14 = v85;
      v15 = &unk_278E09000;
      goto LABEL_25;
    }
  }

  if (sub_2441D8F5C())
  {
    goto LABEL_56;
  }

LABEL_109:

  v11 = v91;
  v75 = v91 + *(type metadata accessor for WidgetStackSuggestionGenerator() + 40);
  v76 = sub_2441D8B7C();
  v77 = sub_2441D8E0C();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_244192000, v76, v77, "Ran out of action suggestions while assigning suggestions widgets", v78, 2u);
    MEMORY[0x245D5B3C0](v78, -1, -1);
  }

LABEL_113:
  v79 = v98;
  v2 = v88;
  v11[2] = v88;
  v11[3] = v79;

  v1 = 0;
LABEL_114:
  sub_2441B531C(v1);
  return v2;
}

uint64_t sub_2441B531C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2441B5360()
{
  result = qword_27EDD5D40;
  if (!qword_27EDD5D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5D40);
  }

  return result;
}

unint64_t sub_2441B53B8()
{
  result = qword_27EDD5D48;
  if (!qword_27EDD5D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5D48);
  }

  return result;
}

double sub_2441B540C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_2441D8B8C();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  if (!*(v1 + 48))
  {
    v18 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
    if (!v18)
    {
LABEL_13:
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }

    v33 = v18;
    v19 = sub_2441C13C4();
    v20 = *v19;
    v21 = v19[1];

    v22 = sub_2441D8C4C();

    v23 = [v33 dataForKey_];

    if (v23)
    {
      v24 = sub_2441D88DC();
      v26 = v25;

      v27 = sub_2441D882C();
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      sub_2441D881C();
      *(a1 + 24) = &type metadata for AmbientDebugRotation;
      *(a1 + 32) = sub_2441B85FC();
      *a1 = swift_allocObject();
      sub_2441B86A0();
      sub_2441D880C();

      v30 = v24;
      v31 = v26;
      goto LABEL_10;
    }

LABEL_9:

    goto LABEL_13;
  }

  if (*(v1 + 48) == 1)
  {
    goto LABEL_13;
  }

  v6 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v6)
  {
    goto LABEL_13;
  }

  v33 = v6;
  v7 = sub_2441C288C();
  v8 = *v7;
  v9 = v7[1];

  v10 = sub_2441D8C4C();

  v11 = [v33 dataForKey_];

  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = sub_2441D88DC();
  v14 = v13;

  v15 = sub_2441D882C();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_2441D881C();
  *(a1 + 24) = &type metadata for CarPlayDebugRotation;
  *(a1 + 32) = sub_2441B84B0();
  *a1 = swift_allocObject();
  sub_2441B8504();
  sub_2441D880C();

  v30 = v12;
  v31 = v14;
LABEL_10:
  sub_2441B85A8(v30, v31);

  return result;
}

uint64_t sub_2441B5A64(void *a1)
{
  v3 = *v1;
  v30 = a1;
  v4 = sub_2441B3588(sub_2441B8150, v29, v3);
  if (!v4)
  {
    v21 = v1 + *(type metadata accessor for WidgetStackSuggestionGenerator() + 40);
    v9 = sub_2441D8B7C();
    v22 = sub_2441D8E0C();
    if (os_log_type_enabled(v9, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_244192000, v9, v22, "Debug rotation didn't refer to an existing stack", v23, 2u);
      MEMORY[0x245D5B3C0](v23, -1, -1);
    }

    goto LABEL_12;
  }

  v5 = *(v4 + 16);
  v6 = [v5 widgets];
  sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
  v7 = sub_2441D8D0C();

  MEMORY[0x28223BE20](v8);
  v28[2] = a1;
  v9 = sub_2441B3474(sub_2441B8230, v28, v7);

  if (!v9)
  {
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v10);
    if (((*(v11 + 72))(v10, v11) & 1) == 0)
    {
      v24 = v1 + *(type metadata accessor for WidgetStackSuggestionGenerator() + 40);
      v9 = sub_2441D8B7C();
      v25 = sub_2441D8E0C();
      if (os_log_type_enabled(v9, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_244192000, v9, v25, "Debug rotation didn't refer to an existing widget, and debug rotation doesn't allow for new widget suggestions", v26, 2u);
        MEMORY[0x245D5B3C0](v26, -1, -1);
      }

LABEL_12:
      v20 = MEMORY[0x277D84F90];
      goto LABEL_13;
    }
  }

  v12 = sub_2441B6668(v9, v1, v5, a1);
  v13 = *(type metadata accessor for WidgetStackSuggestionGenerator() + 40);
  v14 = v12;
  v15 = sub_2441D8B7C();
  v16 = sub_2441D8E1C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_244192000, v15, v16, "Applying debug rotation suggestion: %@", v17, 0xCu);
    sub_2441979F8(v18, &unk_27EDD5F60, &qword_2441DBCB0);
    MEMORY[0x245D5B3C0](v18, -1, -1);
    MEMORY[0x245D5B3C0](v17, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D98, "fq");
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2441DB770;
  *(v20 + 32) = v14;

LABEL_13:
  return v20;
}

void (*sub_2441B5DF4(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2441B7044(v6, a2, a3);
  return sub_2441B5E7C;
}

void sub_2441B5E7C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_2441B5EC8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void sub_2441B5F78(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_blendingClientModelSpecification);
  if (!v2)
  {
    sub_2441B53B8();
    swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 1;
LABEL_8:
    swift_willThrow();
    return;
  }

  v3 = [v2 clientModelId];
  if (!v3)
  {
    sub_2441D8C6C();
    v3 = sub_2441D8C4C();
  }

  v4 = sub_2441D8C6C();
  v5 = v4;
  v7 = v6;
  v8 = *(a1 + OBJC_IVAR____TtC26ContextualSuggestionClient26ContextualWidgetSuggestion_scoreSpecification);
  if (v8)
  {
    v9 = v8;
    if ([v9 suggestedConfidenceCategory] <= 2)
    {

      sub_2441B53B8();
      swift_allocError();
      *v10 = 2;
      *(v10 + 8) = 1;
      swift_willThrow();

      return;
    }
  }

  v17 = v5;
  v18 = v7;
  MEMORY[0x28223BE20](v4);
  v16[2] = &v17;
  v12 = sub_2441B5EC8(sub_2441B8458, v16, &unk_28578EED0);

  if (v12)
  {

    return;
  }

  v13 = [objc_opt_self() clientModelTypeFromClientModelId_];

  if (v13 > 0x14 || ((1 << v13) & 0x1C1114) == 0)
  {
    sub_2441B53B8();
    swift_allocError();
    *v15 = v13;
    *(v15 + 8) = 0;
    goto LABEL_8;
  }
}

void sub_2441B61D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2441B6344(319, &qword_27EDD5D58, a3, type metadata accessor for WidgetStackSuggestionGenerator.StackState);
  if (v3 <= 0x3F)
  {
    sub_2441B6344(319, &qword_27EDD5D60, 255, type metadata accessor for ContextualSuggestion);
    if (v4 <= 0x3F)
    {
      sub_2441B65C4(319, &qword_27EDD5D68, &type metadata for WidgetStackSuggestionGenerator.Result, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        sub_244194FC8(319, &qword_27EDD5D70, 0x277CFA380);
        if (v6 <= 0x3F)
        {
          sub_244194FC8(319, &qword_27EDD5D78, off_278E089D8);
          if (v7 <= 0x3F)
          {
            sub_2441D8B8C();
            if (v8 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2441B6344(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a4(a3);
    v5 = sub_2441D8D5C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2441B6398(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2441B63E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetStackSuggestionGenerator.Location(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WidgetStackSuggestionGenerator.Location(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_2441B65C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2441B6614()
{
  result = qword_27EDD7AD0;
  if (!qword_27EDD7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD7AD0);
  }

  return result;
}

id sub_2441B6668(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D88, &unk_2441DCDA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v77[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_2441D895C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v77[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a1)
  {
    sub_2441D894C();
    sub_2441D893C();
    (*(v14 + 8))(v17, v13);
    v37 = a4[3];
    v38 = a4[4];
    __swift_project_boxed_opaque_existential_0(a4, v37);
    (*(v38 + 40))(v37, v38);
    sub_2441D89AC();
    v39 = a4[3];
    v40 = a4[4];
    __swift_project_boxed_opaque_existential_0(a4, v39);
    (*(v40 + 48))(v39, v40);
    if (v41)
    {
      sub_2441D89AC();
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D90, &qword_2441DCDB0);
    (*(*(v53 - 8) + 56))(v10, v42, 1, v53);
    sub_2441D8E9C();
    v54 = sub_2441D8E8C();
    v55 = a4[3];
    v56 = a4[4];
    __swift_project_boxed_opaque_existential_0(a4, v55);
    (*(v56 + 56))(v55, v56);
    v57 = *sub_2441C9F60();
    v58 = objc_allocWithZone(MEMORY[0x277CFA358]);
    v59 = sub_2441D8C4C();

    v60 = [v58 initWithExtensionIdentity:v54 kind:v59 family:v57 intent:0 activityIdentifier:0];

    v61 = objc_allocWithZone(ATXWidget);
    v62 = sub_2441D8C4C();

    v63 = sub_2441D8C4C();
    v64 = [v61 initWithIdentifier:v62 chsWidget:v60 suggestedWidget:1 source:v63];

    LODWORD(v62) = *(type metadata accessor for WidgetStackSuggestionGenerator() + 40);
    v65 = v64;
    v66 = sub_2441D8B7C();
    v67 = sub_2441D8E1C();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138412290;
      *(v68 + 4) = v65;
      *v69 = v65;
      v70 = v65;
      _os_log_impl(&dword_244192000, v66, v67, "Creating new debug suggested widget: %@", v68, 0xCu);
      sub_2441979F8(v69, &unk_27EDD5F60, &qword_2441DBCB0);
      MEMORY[0x245D5B3C0](v69, -1, -1);
      MEMORY[0x245D5B3C0](v68, -1, -1);
    }

    v71 = [a3 identifier];
    if (!v71)
    {
      sub_2441D8C6C();
      v71 = sub_2441D8C4C();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D98, "fq");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2441DB770;
    *(inited + 32) = v65;
    v73 = v65;
    sub_2441B7AA4(inited);
    swift_setDeallocating();
    v74 = *(inited + 16);
    swift_arrayDestroy();
    v75 = objc_allocWithZone(ATXWidgetStackSuggestion);
    sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
    sub_244195E64();
    v76 = v73;
    v35 = sub_2441D8DAC();

    v36 = [v75 initWithStackIdentifier:v71 topWidget:v76 suggestedWidgets:v35];

    goto LABEL_22;
  }

  v18 = a1;
  v19 = [v18 isSuggestedWidget];
  v20 = *(type metadata accessor for WidgetStackSuggestionGenerator() + 40);
  v21 = v18;
  v22 = sub_2441D8B7C();
  v23 = sub_2441D8E1C();

  v24 = os_log_type_enabled(v22, v23);
  if (v19)
  {
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v21;
      *v26 = a1;
      v27 = v21;
      _os_log_impl(&dword_244192000, v22, v23, "Debug widget already suggested, retaining: %@", v25, 0xCu);
      sub_2441979F8(v26, &unk_27EDD5F60, &qword_2441DBCB0);
      MEMORY[0x245D5B3C0](v26, -1, -1);
      MEMORY[0x245D5B3C0](v25, -1, -1);
    }

    v28 = [a3 identifier];
    if (!v28)
    {
      sub_2441D8C6C();
      v28 = sub_2441D8C4C();
    }

    v29 = sub_2441D8C4C();
    v30 = [v21 copyWithSource_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D98, "fq");
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_2441DB770;
    *(v31 + 32) = v21;
    v32 = v21;
    sub_2441B7AA4(v31);
    swift_setDeallocating();
    v33 = *(v31 + 16);
    swift_arrayDestroy();
    v34 = objc_allocWithZone(ATXWidgetStackSuggestion);
    sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
    sub_244195E64();
    v35 = sub_2441D8DAC();

    v36 = [v34 initWithStackIdentifier:v28 topWidget:v30 suggestedWidgets:v35];

LABEL_22:
    return v36;
  }

  if (v24)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    *(v43 + 4) = v21;
    *v44 = a1;
    v45 = v21;
    _os_log_impl(&dword_244192000, v22, v23, "Debug widget already in stack, rotating: %@", v43, 0xCu);
    sub_2441979F8(v44, &unk_27EDD5F60, &qword_2441DBCB0);
    MEMORY[0x245D5B3C0](v44, -1, -1);
    MEMORY[0x245D5B3C0](v43, -1, -1);
  }

  v46 = [a3 identifier];
  if (!v46)
  {
    sub_2441D8C6C();
    v46 = sub_2441D8C4C();
  }

  v47 = sub_2441D8C4C();
  v48 = [v21 copyWithSource_];

  if (MEMORY[0x277D84F90] >> 62 && sub_2441D8F5C())
  {
    sub_2441B7AA4(MEMORY[0x277D84F90]);
  }

  v49 = objc_allocWithZone(ATXWidgetStackSuggestion);
  sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
  sub_244195E64();
  v50 = sub_2441D8DAC();

  v51 = [v49 initWithStackIdentifier:v46 topWidget:v48 suggestedWidgets:v50];

  return v51;
}

void (*sub_2441B7044(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_2441B73EC(v8);
  v8[9] = sub_2441B7150(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_2441B70F0;
}

void sub_2441B70F0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2441B7150(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_244198F90(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_2441B7878();
      v13 = v21;
      goto LABEL_11;
    }

    sub_2441B7420(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_244198F90(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2441D91EC();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_2441B72A8;
}

void sub_2441B72A8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[2];
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_2441B80C4(*(v13 + 48) + 16 * v12);
      sub_2441B76C8(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  v19 = *v2;

  free(v2);
}

uint64_t (*sub_2441B73EC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2441B7414;
}

uint64_t sub_2441B7420(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5DB0, &qword_2441DBA30);
  v38 = a2;
  result = sub_2441D90BC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_2441D924C();
      sub_2441D8C9C();
      result = sub_2441D926C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2441B76C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2441D8F4C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2441D924C();

      sub_2441D8C9C();
      v13 = sub_2441D926C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_2441B7878()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5DB0, &qword_2441DBA30);
  v2 = *v0;
  v3 = sub_2441D90AC();
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

uint64_t sub_2441B79E8(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_2441D8F5C();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_2441D900C();
    *v1 = result;
  }

  return result;
}

void sub_2441B7AA4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_2441D8F5C())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5DA8, "jq");
      v3 = sub_2441D8FCC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_2441D8F5C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x245D5A7F0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_2441D8EEC();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_2441D8EFC();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_2441D8EEC();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_244194FC8(0, &qword_27EDD5AF8, off_278E089D0);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_2441D8EFC();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_2441B7D94()
{
  result = qword_27EDD7AD8[0];
  if (!qword_27EDD7AD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD7AD8);
  }

  return result;
}

unint64_t sub_2441B7DE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5DB0, &qword_2441DBA30);
    v3 = sub_2441D90CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_244198F90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_2441B7EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ContextualActionSuggestion();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_2441D8F5C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_2441D8F5C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2441B7FEC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2441D8F5C();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_2441D8F5C();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_2441B79E8(result);

  return sub_2441B7EEC(v4, v2, 0);
}

id sub_2441B8118(id result)
{
  if (result >= 6)
  {
    return result;
  }

  return result;
}

void sub_2441B8128(id a1)
{
  if (a1 >= 6)
  {
  }
}

uint64_t sub_2441B8138(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2441B8150(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = [*(*a1 + 16) identifier];
  v4 = sub_2441D8C6C();
  v6 = v5;

  v7 = v2[3];
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v7);
  if (v4 == (*(v8 + 64))(v7, v8) && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2441D91CC();
  }

  return v11 & 1;
}

uint64_t sub_2441B8230(id *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = [*a1 chsWidget];
  v5 = [v4 extensionIdentity];

  v6 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5B00, &unk_2441DAEB0);
  v7 = sub_2441D89BC();
  v9 = v8;
  swift_endAccess();

  v10 = v2[3];
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v10);
  if (v7 == (*(v11 + 40))(v10, v11) && v9 == v12)
  {
  }

  else
  {
    v14 = sub_2441D91CC();

    v15 = 0;
    if ((v14 & 1) == 0)
    {
      return v15 & 1;
    }
  }

  v16 = [v3 chsWidget];
  v17 = [v16 kind];

  v18 = sub_2441D8C6C();
  v20 = v19;

  v21 = v2[3];
  v22 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v21);
  if (v18 == (*(v22 + 56))(v21, v22) && v20 == v23)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_2441D91CC();
  }

  return v15 & 1;
}

uint64_t sub_2441B8458(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2441D91CC() & 1;
  }
}

unint64_t sub_2441B84B0()
{
  result = qword_27EDD5DC0;
  if (!qword_27EDD5DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5DC0);
  }

  return result;
}

unint64_t sub_2441B8504()
{
  result = qword_27EDD5DC8;
  if (!qword_27EDD5DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5DC8);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x245D5B3C0);
  }

  return result;
}

uint64_t sub_2441B85A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2441B85FC()
{
  result = qword_27EDD5DD0;
  if (!qword_27EDD5DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5DD0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

unint64_t sub_2441B86A0()
{
  result = qword_27EDD5DD8;
  if (!qword_27EDD5DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5DD8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26ContextualSuggestionClient011WidgetStackB9GeneratorV0E5State33_35986E1DE76D164CD57B0DD1BAA3E32CLLC03NewdB7FailureO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2441B8728(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2441B8780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void *sub_2441B87D0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_2441B880C()
{
  result = qword_27EDD7BE0[0];
  if (!qword_27EDD7BE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDD7BE0);
  }

  return result;
}

uint64_t sub_2441B88B8()
{
  type metadata accessor for ContextualSuggestionService();
  v0 = swift_allocObject();
  result = sub_2441BAD24();
  qword_27EDDB118 = v0;
  return result;
}

uint64_t sub_2441B88F4()
{
  v0 = swift_allocObject();
  sub_2441BAD24();
  return v0;
}

uint64_t *sub_2441B892C()
{
  if (qword_27EDD7DF0 != -1)
  {
    swift_once();
  }

  return &qword_27EDDB118;
}

uint64_t sub_2441B897C()
{
  if (qword_27EDD7DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_2441B89F4(uint64_t a1)
{
  if (qword_27EDD7DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27EDDB118 = a1;
}

uint64_t (*sub_2441B8A74())()
{
  if (qword_27EDD7DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2441B8AFC()
{
  v10 = sub_2441D8E3C();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2441D8E2C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_2441D8BEC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2441AF92C();
  sub_2441D8BDC();
  v11 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5AC8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5DF0, &unk_2441DB660);
  sub_244198688(&qword_27EDD5AD0, &unk_27EDD5DF0, &unk_2441DB660);
  sub_2441D8F3C();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  return sub_2441D8E6C();
}

void *sub_2441B8D44()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_2441B8D88(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_2441B8E7C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t sub_2441B8EF8(int a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_2441B8F88()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E00, qword_2441DBC08);
  sub_2441D8E4C();
  return v3;
}

uint64_t sub_2441B9004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = sub_2441D8BAC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2441D8BEC();
  v14 = *(v22 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v22);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = v4[2];
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a1;
  v18[6] = v8;
  aBlock[4] = sub_2441BC02C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2441988C4;
  aBlock[3] = &block_descriptor_2;
  v19 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_2441D8BDC();
  v23 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5B20, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E10, &qword_2441DAF00);
  sub_244198688(&qword_27EDD5B28, &unk_27EDD5E10, &qword_2441DAF00);
  sub_2441D8F3C();
  MEMORY[0x245D5A650](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v22);
}

uint64_t sub_2441B930C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v43 = sub_2441D8B8C();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v43);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*a1 + 168);
  v15 = *(v14(v11) + 16);

  v17 = v14(v16);
  v18 = *(v17 + 16);
  v45 = a2;
  v46 = a4;
  v44 = a3;
  if (!v18 || (v19 = sub_244198F90(a2, a3), (v20 & 1) == 0))
  {

    v32 = [objc_opt_self() weakObjectsHashTable];
    [v32 addObject_];
    v33 = *(*a1 + 184);
    v34 = v15;
    v35 = v13;

    v36 = v32;
    v37 = v33(v48);
    v39 = v38;
    v40 = *v38;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *v39;
    *v39 = 0x8000000000000000;
    sub_2441BB2CC(v36, a2, a3, isUniquelyReferenced_nonNull_native);

    *v39 = v47;
    v37(v48, 0);
    v13 = v35;

    if (!v34)
    {
      goto LABEL_4;
    }

    return (*(*a1 + 296))(v46, v45, v44);
  }

  v21 = *(*(v17 + 56) + 8 * v19);

  [v21 addObject_];

  if (v15)
  {
    return (*(*a1 + 296))(v46, v45, v44);
  }

LABEL_4:
  v22 = sub_2441994FC();
  v23 = v43;
  (*(v9 + 16))(v13, v22, v43);
  v24 = sub_2441D8B7C();
  v25 = sub_2441D8E1C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v48[0] = v27;
    *v26 = 136315394;
    v28 = sub_2441D92EC();
    v30 = sub_244195848(v28, v29, v48);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_244195848(0xD000000000000017, 0x80000002441DF3E0, v48);
    _os_log_impl(&dword_244192000, v24, v25, "%s: %s: first observer, start listening for server startup", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D5B3C0](v27, -1, -1);
    MEMORY[0x245D5B3C0](v26, -1, -1);
  }

  (*(v9 + 8))(v13, v23);
  sub_2441BA3D4();
  return sub_2441B9E34();
}

uint64_t sub_2441B96F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v4;
  v8 = sub_2441D8BAC();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2441D8BEC();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v4[2];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = v16;
  v17[6] = v7;
  aBlock[4] = sub_2441BC09C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2441988C4;
  aBlock[3] = &block_descriptor_9;
  v18 = _Block_copy(aBlock);

  sub_2441D8BDC();
  v23 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5B20, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E10, &qword_2441DAF00);
  sub_244198688(&qword_27EDD5B28, &unk_27EDD5E10, &qword_2441DAF00);
  sub_2441D8F3C();
  MEMORY[0x245D5A650](0, v15, v11, v18);
  _Block_release(v18);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

uint64_t sub_2441B9A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a5;
  v8 = sub_2441D8B8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*a1 + 168);
  v15 = v14(v11);
  if (*(v15 + 16) && (v16 = sub_244198F90(a2, a3), (v17 & 1) != 0))
  {
    v39 = v9;
    v18 = *(*(v15 + 56) + 8 * v16);

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [v18 removeObject_];
      swift_unknownObjectRelease();
    }

    v20 = [v18 allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E20, &qword_2441DBC28);
    v21 = sub_2441D8D0C();

    if (v21 >> 62)
    {
      v22 = sub_2441D8F5C();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v22)
    {
      v23 = (*(*a1 + 184))(v41);

      v23(v41, 0);
    }

    v9 = v39;
  }

  else
  {
  }

  v25 = *(v14(v24) + 16);

  if (!v25)
  {
    v27 = sub_2441994FC();
    (*(v9 + 16))(v13, v27, v8);
    v28 = sub_2441D8B7C();
    v29 = sub_2441D8E1C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = v9;
      v32 = swift_slowAlloc();
      v41[0] = v32;
      *v30 = 136315394;
      v33 = sub_2441D92EC();
      v35 = sub_244195848(v33, v34, v41);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_244195848(0xD000000000000019, 0x80000002441DF3C0, v41);
      _os_log_impl(&dword_244192000, v28, v29, "%s: %s: no more observers, stop listening for server startup", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D5B3C0](v32, -1, -1);
      MEMORY[0x245D5B3C0](v30, -1, -1);

      v36 = (*(v31 + 8))(v13, v8);
    }

    else
    {

      v36 = (*(v9 + 8))(v13, v8);
    }

    v37 = (*(*a1 + 192))(v36);
    return notify_cancel(v37);
  }

  return result;
}

uint64_t sub_2441B9E34()
{
  v1 = v0[2];
  v2 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_2441BC1AC;
  v8[5] = v2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2441A5EE0;
  v8[3] = &block_descriptor_38;
  v3 = _Block_copy(v8);

  v4 = sub_2441D8C8C();
  v5 = (*(*v0 + 208))(v8);
  notify_register_dispatch((v4 + 32), v6, v1, v3);
  _Block_release(v3);
  v5(v8, 0);
}

uint64_t sub_2441B9F7C()
{
  v0 = sub_2441D8B8C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2441994FC();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2441D8B7C();
  v7 = sub_2441D8E1C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_244192000, v6, v7, "ContextualSuggestionService: received server startup notification, fetching latest snapshots", v8, 2u);
    MEMORY[0x245D5B3C0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2441BA3D4();
  }

  return result;
}

void sub_2441BA10C()
{
  v1 = (*(*v0 + 120))();
  if (v1)
  {
  }

  else
  {
    v2 = sub_2441D7EB8();
    v3 = *v2;
    v4 = v2[1];
    v5 = objc_allocWithZone(MEMORY[0x277CCAE80]);

    v6 = sub_2441D8C4C();

    v7 = [v5 initWithMachServiceName:v6 options:0];

    v8 = contextualSuggestionServerInterface.getter();
    [v7 setRemoteObjectInterface_];

    [v7 setExportedObject_];
    v9 = contextualSuggestionServiceInterface.getter();
    [v7 setExportedInterface_];

    v10 = swift_allocObject();
    swift_weakInit();
    v20 = sub_2441BC1CC;
    v21 = v10;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_2441988C4;
    v19 = &block_descriptor_30_0;
    v11 = _Block_copy(&v16);

    [v7 setInterruptionHandler_];
    _Block_release(v11);
    v12 = swift_allocObject();
    swift_weakInit();
    v20 = sub_2441BC0F8;
    v21 = v12;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_2441988C4;
    v19 = &block_descriptor_34;
    v13 = _Block_copy(&v16);

    [v7 setInvalidationHandler_];
    _Block_release(v13);
    [v7 resume];
    v14 = *(*v0 + 128);
    v15 = v7;
    v14(v7);
  }
}

void sub_2441BA3D4()
{
  v1 = *(*v0 + 168);
  v2 = *(v1() + 16);

  if (v2)
  {
    sub_2441BA10C();
    v3 = v1();
    sub_2441BA630(v3);
    v4 = (*(*v0 + 120))();
    if (!v4)
    {
      goto LABEL_5;
    }

    v5 = v4;
    v15 = sub_2441BA74C;
    v16 = 0;
    v11 = MEMORY[0x277D85DD0];
    v12 = 1107296256;
    v13 = sub_2441AAC44;
    v14 = &block_descriptor_21;
    v6 = _Block_copy(&v11);
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v6);

    sub_2441D8F2C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5E90, &qword_2441DBCA8);
    if (swift_dynamicCast())
    {
      v8 = v11;
      v9 = sub_2441D8DAC();

      v15 = sub_2441BC0F0;
      v16 = v0;
      v11 = MEMORY[0x277D85DD0];
      v12 = 1107296256;
      v13 = sub_2441BAB00;
      v14 = &block_descriptor_24_0;
      v10 = _Block_copy(&v11);

      [v8 requestSnapshotsForEndpoints:v9 completion:v10];
      _Block_release(v10);
      swift_unknownObjectRelease();
    }

    else
    {
LABEL_5:
    }
  }
}

uint64_t sub_2441BA630(uint64_t a1)
{
  result = MEMORY[0x245D5A5E0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_2441BB5B0(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2441BA74C()
{
  v0 = sub_2441D8B8C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2441994FC();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2441D8B7C();
  v7 = sub_2441D8E0C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_244192000, v6, v7, "ContextualSuggestionService: error grabbing remote object proxy while fetching latest snapshots from server", v8, 2u);
    MEMORY[0x245D5B3C0](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2441BA89C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_2441D8B8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = a2;
    v13 = sub_2441994FC();
    (*(v7 + 16))(v11, v13, v6);
    v14 = a2;
    v15 = sub_2441D8B7C();
    v16 = sub_2441D8E0C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = a2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_244192000, v15, v16, "ContextualSuggestionService: error requesting snapshots: %@", v17, 0xCu);
      sub_2441979F8(v18, &unk_27EDD5F60, &qword_2441DBCB0);
      MEMORY[0x245D5B3C0](v18, -1, -1);
      MEMORY[0x245D5B3C0](v17, -1, -1);
    }

    else
    {
    }

    result = (*(v7 + 8))(v11, v6);
  }

  if (a1)
  {
    v21 = *(*a3 + 152);

    v23 = v21(v22);
    return (*(*a3 + 288))(v23);
  }

  return result;
}

uint64_t sub_2441BAB00(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for ContextualSuggestionSnapshot();
    v4 = sub_2441D8C0C();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_2441BABA4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*v3 + 144))();
  if (v7)
  {
    v8 = v7;
    if (*(v7 + 16) && (v9 = sub_244198F90(a2, a3), (v10 & 1) != 0))
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      [a1 serviceDidUpdateWithSnapshot_];
    }

    else
    {
    }
  }
}

uint64_t sub_2441BAC9C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_2441BACD4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 52, 7);
}

uint64_t sub_2441BAD24()
{
  v13 = sub_2441D8E3C();
  v1 = *(v13 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v13);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2441D8E2C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_2441D8BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2441AF92C();
  v12[0] = "ive.ContextualEngine.startup";
  v12[1] = v9;
  sub_2441D8BDC();
  v14 = MEMORY[0x277D84F90];
  sub_2441985F8(&qword_27EDD5AC8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5DF0, &unk_2441DB660);
  sub_244198688(&qword_27EDD5AD0, &unk_27EDD5DF0, &unk_2441DB660);
  sub_2441D8F3C();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v13);
  v10 = sub_2441D8E6C();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = v10;
  *(v0 + 40) = sub_2441BBE74(MEMORY[0x277D84F90]);
  *(v0 + 48) = 0;
  return v0;
}

uint64_t sub_2441BAF90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_244198F90(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2441BB444();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_2441B76C8(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_2441BB028(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5EB0, qword_2441DBD10);
  v39 = a2;
  result = sub_2441D90BC();
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
      sub_2441D924C();
      sub_2441D8C9C();
      result = sub_2441D926C();
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

uint64_t sub_2441BB2CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_244198F90(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2441BB028(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_244198F90(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_2441D91EC();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_2441BB444();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_2441BB444()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5EB0, qword_2441DBD10);
  v2 = *v0;
  v3 = sub_2441D90AC();
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

uint64_t sub_2441BB5B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2441D924C();
  sub_2441D8C9C();
  v9 = sub_2441D926C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2441D91CC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2441BB960(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2441BB700(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5EA0, &unk_2441DBCB8);
  result = sub_2441D8FBC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2441D924C();
      sub_2441D8C9C();
      result = sub_2441D926C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2441BB960(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2441BB700(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2441BBAE0();
      goto LABEL_16;
    }

    sub_2441BBC3C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2441D924C();
  sub_2441D8C9C();
  result = sub_2441D926C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2441D91CC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2441D91DC();
  __break(1u);
  return result;
}

void *sub_2441BBAE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5EA0, &unk_2441DBCB8);
  v2 = *v0;
  v3 = sub_2441D8FAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2441BBC3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5EA0, &unk_2441DBCB8);
  result = sub_2441D8FBC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2441D924C();

      sub_2441D8C9C();
      result = sub_2441D926C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_2441BBE74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5EB0, qword_2441DBD10);
    v3 = sub_2441D90CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_244198F90(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_2441BBF78@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  result = (*(**(v1 + 16) + 144))();
  if (!result)
  {
    goto LABEL_6;
  }

  v6 = result;
  if (!*(result + 16) || (v7 = sub_244198F90(v3, v4), (v8 & 1) == 0))
  {

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

LABEL_7:
  *a1 = v9;
  return result;
}

uint64_t objectdestroyTm_1(void (*a1)(void))
{
  v3 = v1[2];

  v4 = v1[4];

  a1(v1[5]);

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t sub_2441BC0FC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = (*(*result + 120))(result);
    [v2 invalidate];

    (*(*v1 + 128))(0);
  }

  return result;
}

id sub_2441BC244()
{
  if (qword_280F95160 != -1)
  {
    swift_once();
  }

  v0 = qword_280F95168;

  return v0;
}

uint64_t sub_2441BC2A0()
{
  sub_244194FC8(0, &qword_280F94CE8, 0x277D86200);
  v0 = sub_2441D0DB8();
  v1 = *v0;
  v2 = v0[1];

  result = sub_2441D8F0C();
  qword_280F95168 = result;
  return result;
}

uint64_t sub_2441BC368()
{
  v0 = sub_2441D8B8C();
  __swift_allocate_value_buffer(v0, qword_280F94E88);
  __swift_project_value_buffer(v0, qword_280F94E88);
  v1 = [objc_opt_self() log];
  return sub_2441D8B9C();
}

uint64_t sub_2441BC3D8()
{
  if (qword_280F94E80 != -1)
  {
    swift_once();
  }

  v0 = sub_2441D8B8C();

  return __swift_project_value_buffer(v0, qword_280F94E88);
}

Swift::Void __swiftcall CoreAnalyticsEvent.send()()
{
  v2 = v1;
  v3 = v0;
  CoreAnalyticsEvent.createPayload()(v0);
  (*(v2 + 16))(v3, v2);
  v4 = sub_2441D8C4C();

  sub_2441BC94C();
  v5 = sub_2441D8BFC();

  AnalyticsSendEvent();
}

uint64_t CoreAnalyticsEvent.createPayload()(uint64_t a1)
{
  v3 = sub_2441D929C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2441BCDA8(MEMORY[0x277D84F90]);
  *(&v47 + 1) = a1;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v46);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v1, a1);
  sub_2441D927C();
  sub_2441D928C();
  sub_2441D907C();

  sub_2441D90DC();
  if (!v48)
  {
LABEL_23:
    (*(v4 + 8))(v7, v3);

    return v8;
  }

  while (1)
  {
    v44 = v46;
    sub_244194FB8(&v47, &v45);
    sub_2441BCF10(&v44, &v41);
    v10 = v42;
    if (v42)
    {
      break;
    }

    sub_2441BCF80(&v44);
    __swift_destroy_boxed_opaque_existential_0(v43);
LABEL_4:
    sub_2441D90DC();
    if (!v48)
    {
      goto LABEL_23;
    }
  }

  v39 = v7;
  v11 = v41;
  __swift_destroy_boxed_opaque_existential_0(v43);
  sub_2441BCF10(&v44, &v41);

  sub_2441BC94C();
  if (!swift_dynamicCast())
  {
    v22 = sub_244198F90(v11, v10);
    v24 = v23;

    if (v24)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v8;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2441BCC3C();
        v8 = v40;
      }

      v26 = *(v8[6] + 16 * v22 + 8);

      sub_2441B76C8(v22, v8);
    }

    goto LABEL_19;
  }

  v38 = v4;
  v12 = v3;
  v36 = v40;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v40 = v8;
  v37 = v11;
  v14 = sub_244198F90(v11, v10);
  v16 = v8[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (!v18)
  {
    v20 = v15;
    if (v8[3] >= v19)
    {
      if ((v13 & 1) == 0)
      {
        v33 = v14;
        sub_2441BCC3C();
        v14 = v33;
      }
    }

    else
    {
      sub_2441BC998(v19, v13);
      v14 = sub_244198F90(v37, v10);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_26;
      }
    }

    v3 = v12;
    v4 = v38;
    if ((v20 & 1) == 0)
    {
      v8 = v40;
      v40[(v14 >> 6) + 8] |= 1 << v14;
      v30 = (v8[6] + 16 * v14);
      *v30 = v37;
      v30[1] = v10;
      *(v8[7] + 8 * v14) = v36;
      sub_2441BCF80(&v44);
      v31 = v8[2];
      v18 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v18)
      {
        goto LABEL_25;
      }

      v8[2] = v32;
      goto LABEL_22;
    }

    v27 = v14;

    v8 = v40;
    v28 = v40[7];
    v29 = *(v28 + 8 * v27);
    *(v28 + 8 * v27) = v36;

LABEL_19:
    sub_2441BCF80(&v44);
LABEL_22:
    v7 = v39;
    goto LABEL_4;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_2441D91EC();
  __break(1u);
  return result;
}

unint64_t sub_2441BC94C()
{
  result = qword_280F94CF0;
  if (!qword_280F94CF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F94CF0);
  }

  return result;
}

uint64_t sub_2441BC998(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5F28, "Jp");
  v39 = a2;
  result = sub_2441D90BC();
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
      sub_2441D924C();
      sub_2441D8C9C();
      result = sub_2441D926C();
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

id sub_2441BCC3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5F28, "Jp");
  v2 = *v0;
  v3 = sub_2441D90AC();
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

unint64_t sub_2441BCDA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5F28, "Jp");
    v3 = sub_2441D90CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_244198F90(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2441BCF10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5F20, "Hp");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2441BCF80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5F20, "Hp");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

ATXIntentComparator __swiftcall ATXIntentComparator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_2441BD0D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5B50, &unk_2441DAF40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2441BD160(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 57))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 56);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2441BD19C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_2441BD1EC(uint64_t result, unsigned int a2)
{
  if (a2 > 5)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 6;
    LOBYTE(a2) = 6;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_2441BD270(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

unint64_t AmbientConfigurationManager.Error.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2441D8FEC();

  MEMORY[0x245D5A4A0](v1, v2);
  return 0xD000000000000010;
}

unint64_t sub_2441BD37C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2441D8FEC();

  MEMORY[0x245D5A4A0](v1, v2);
  return 0xD000000000000010;
}

void *sub_2441BD3F8()
{
  type metadata accessor for AmbientConfigurationManager();
  v0 = swift_allocObject();
  result = sub_2441BD74C();
  qword_280F94F48 = v0;
  return result;
}

uint64_t *sub_2441BD434()
{
  if (qword_280F94F40 != -1)
  {
    swift_once();
  }

  return &qword_280F94F48;
}

uint64_t static AmbientConfigurationManager.shared.getter()
{
  if (qword_280F94F40 != -1)
  {
    swift_once();
  }
}

id sub_2441BD4E0()
{
  v0 = [objc_opt_self() weakObjectsHashTable];

  return v0;
}

id sub_2441BD520()
{
  v0 = objc_opt_self();
  v1 = sub_2441D8C4C();
  v2 = [v0 appPredictionDirectoryFile_];

  if (!v2)
  {
    sub_2441D8C6C();
    v2 = sub_2441D8C4C();
  }

  v3 = [objc_opt_self() log];
  v4 = objc_allocWithZone(MEMORY[0x277CEBC68]);
  v5 = sub_2441D8C4C();
  v6 = [v4 initWithCacheFilePath:v2 loggingHandle:v3 debugName:v5];

  return v6;
}

id sub_2441BD630()
{
  v0 = [objc_opt_self() defaultCenter];

  return v0;
}

uint64_t sub_2441BD670()
{
  v0 = sub_2441D895C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2441D894C();
  v5 = sub_2441D893C();
  (*(v1 + 8))(v4, v0);
  return v5;
}

void *sub_2441BD74C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_2441D895C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v1[14] = 0;
  v1[15] = [objc_opt_self() weakObjectsHashTable];
  v1[16] = 0;
  v8 = objc_opt_self();
  v9 = sub_2441D8C4C();
  v10 = [v8 appPredictionDirectoryFile_];

  if (!v10)
  {
    sub_2441D8C6C();
    v10 = sub_2441D8C4C();
  }

  v11 = [objc_opt_self() log];
  v12 = objc_allocWithZone(MEMORY[0x277CEBC68]);
  v13 = sub_2441D8C4C();
  v14 = [v12 initWithCacheFilePath:v10 loggingHandle:v11 debugName:v13];

  v1[17] = v14;
  v1[18] = [objc_opt_self() defaultCenter];
  sub_2441D894C();
  v15 = sub_2441D893C();
  v17 = v16;
  (*(v4 + 8))(v7, v3);
  v1[19] = v15;
  v1[20] = v17;
  v18 = v1[18];
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v2;
  aBlock[4] = sub_2441C09D8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2441BE574;
  aBlock[3] = &block_descriptor_51_0;
  v21 = _Block_copy(aBlock);
  v22 = v18;

  v23 = [v22 addObserverForName:@"com.apple.proactive.contextualengine.AmbientConfigurationManager.cacheDidUpdate" object:0 queue:0 usingBlock:v21];
  _Block_release(v21);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_2441BDAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v53 - v6;
  v8 = sub_2441D8B8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v53 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v53 - v17;
  sub_2441D884C();
  if (!v56[3])
  {
    sub_2441979F8(v56, &unk_27EDD5B50, &unk_2441DAF40);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v24 = sub_2441BC3D8();
    (*(v9 + 16))(v13, v24, v8);
    v25 = sub_2441D8B7C();
    v26 = sub_2441D8E0C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v56[0] = v28;
      *v27 = 136315138;
      v29 = sub_2441D92EC();
      v31 = sub_244195848(v29, v30, v56);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_244192000, v25, v26, "%s: ambientConfigDidUpdateNotification had no sender identifier", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x245D5B3C0](v28, -1, -1);
      MEMORY[0x245D5B3C0](v27, -1, -1);
    }

    return (*(v9 + 8))(v13, v8);
  }

  v20 = v55[0];
  v19 = v55[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v53[1] = a3;
    v54 = v8;
    v23 = *(Strong + 152);
    v22 = *(Strong + 160);

    if (v20 == v23 && v19 == v22)
    {

      v8 = v54;
LABEL_14:
      v34 = sub_2441BC3D8();
      (*(v9 + 16))(v16, v34, v8);
      v35 = sub_2441D8B7C();
      v36 = sub_2441D8E1C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v55[0] = v38;
        *v37 = 136315138;
        v39 = sub_2441D92EC();
        v41 = sub_244195848(v39, v40, v55);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_244192000, v35, v36, "%s: ignoring ambientConfigDidUpdateNotification from self", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x245D5B3C0](v38, -1, -1);
        MEMORY[0x245D5B3C0](v37, -1, -1);
      }

      return (*(v9 + 8))(v16, v8);
    }

    v33 = sub_2441D91CC();

    v8 = v54;
    if (v33)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v42 = sub_2441BC3D8();
  (*(v9 + 16))(v18, v42, v8);
  v43 = sub_2441D8B7C();
  v44 = sub_2441D8E1C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v55[0] = v46;
    *v45 = 136315138;
    v47 = sub_2441D92EC();
    v54 = v8;
    v49 = sub_244195848(v47, v48, v55);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_244192000, v43, v44, "%s: received ambient config did update notification", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x245D5B3C0](v46, -1, -1);
    MEMORY[0x245D5B3C0](v45, -1, -1);

    (*(v9 + 8))(v18, v54);
  }

  else
  {

    (*(v9 + 8))(v18, v8);
  }

  v50 = sub_2441D8D9C();
  (*(*(v50 - 8) + 56))(v7, 1, 1, v50);
  v51 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = 0;
  v52[4] = v51;
  sub_2441BE270(0, 0, v7, &unk_2441DC1D0, v52);
}

uint64_t sub_2441BE0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2441BE114, 0, 0);
}

uint64_t sub_2441BE114()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2441BE1D8, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_2441BE1D8()
{
  v1 = *(v0 + 56);
  sub_2441BE668();

  return MEMORY[0x2822009F8](sub_2441BE248, 0, 0);
}

uint64_t sub_2441BE270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2441A991C(a3, v27 - v11);
  v13 = sub_2441D8D9C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2441979F8(v12, &unk_27EDD5F30, &qword_2441DAEC0);
  }

  else
  {
    sub_2441D8D8C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2441D8D7C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2441D8C8C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5F98, &qword_2441DC1E8);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_2441979F8(a3, &unk_27EDD5F30, &qword_2441DAEC0);

      return v24;
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

  sub_2441979F8(a3, &unk_27EDD5F30, &qword_2441DAEC0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5F98, &qword_2441DC1E8);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2441BE574(uint64_t a1)
{
  v2 = sub_2441D885C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_2441D883C();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2441BE668()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v44 - v5;
  v7 = sub_2441D8B8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v44 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  sub_2441BF334();
  v18 = v0[16];
  if (v16)
  {
    if (v18)
    {
      v45 = v2;
      v19 = v7;
      v20 = v16;

      v22 = sub_2441C05C8(v21, v18);

      if (v22)
      {

        v7 = v19;
LABEL_6:
        v23 = sub_2441BC3D8();
        (*(v8 + 16))(v13, v23, v7);
        v24 = sub_2441D8B7C();
        v25 = sub_2441D8E1C();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v46[0] = v27;
          *v26 = 136315394;
          v28 = sub_2441D92EC();
          v30 = sub_244195848(v28, v29, v46);

          *(v26 + 4) = v30;
          *(v26 + 12) = 2080;
          *(v26 + 14) = sub_244195848(0xD000000000000010, 0x80000002441DF700, v46);
          _os_log_impl(&dword_244192000, v24, v25, "%s: %s: stacks from cache unchanged, not notifying observers", v26, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x245D5B3C0](v27, -1, -1);
          MEMORY[0x245D5B3C0](v26, -1, -1);
        }

        return (*(v8 + 8))(v13, v7);
      }

      v31 = v0[16];
      v16 = v20;
      v7 = v19;
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  v0[16] = v16;

  v32 = sub_2441BC3D8();
  (*(v8 + 16))(v15, v32, v7);
  v33 = sub_2441D8B7C();
  v34 = sub_2441D8E1C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v46[0] = v36;
    *v35 = 136315394;
    v37 = sub_2441D92EC();
    v39 = sub_244195848(v37, v38, v46);
    v45 = v7;
    v40 = v39;

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_244195848(0xD000000000000010, 0x80000002441DF700, v46);
    _os_log_impl(&dword_244192000, v33, v34, "%s: %s: read new stacks from cache, notifying observers", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D5B3C0](v36, -1, -1);
    MEMORY[0x245D5B3C0](v35, -1, -1);

    (*(v8 + 8))(v15, v45);
  }

  else
  {

    (*(v8 + 8))(v15, v7);
  }

  v41 = sub_2441D8D9C();
  (*(*(v41 - 8) + 56))(v6, 1, 1, v41);
  v42 = sub_2441BFD20();
  v43 = swift_allocObject();
  v43[2] = v1;
  v43[3] = v42;
  v43[4] = v1;
  swift_retain_n();
  sub_2441A5C20(0, 0, v6, &unk_2441DC160, v43);
}

uint64_t sub_2441BECEC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_2441D8D9C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;

  swift_unknownObjectRetain();
  sub_2441A5C20(0, 0, v6, &unk_2441DBF98, v8);
}

uint64_t sub_2441BEE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2441BEE20, a4, 0);
}

uint64_t sub_2441BEE20()
{
  [*(v0[2] + 120) addObject_];
  v1 = v0[1];

  return v1();
}

uint64_t sub_2441BEE8C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_244198A50;

  return sub_2441BEE00(v4, v5, v6, v2, v3);
}

unint64_t sub_2441BEF24()
{
  result = *(v1 + 128);
  if (result)
  {
    v0 = *(v1 + 128);
    if (!(result >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_2441BF334();
    if (v2)
    {
      return v0;
    }

    v0 = v11;
    v12 = *(v1 + 128);
    *(v1 + 128) = v11;

    if (!v0)
    {
      return v0;
    }

    result = 0;
    if (!(v0 >> 62))
    {
LABEL_3:
      v4 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_20:
      swift_bridgeObjectRetain_n();
LABEL_21:

      return v0;
    }
  }

  v13 = result;
  v4 = sub_2441D8F5C();
  result = v13;
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_4:
  if (v4 >= 1)
  {
    swift_bridgeObjectRetain_n();
    for (i = 0; i != v4; ++i)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245D5A7F0](i, v0);
      }

      else
      {
        v8 = *(v0 + 8 * i + 32);
      }

      v7 = v8;
      v9 = [v8 topWidgetIdentifier];
      if (v9)
      {
        v6 = v7;
        v7 = v9;
      }

      else
      {
        sub_2441BF718(v7);
        if (v10)
        {
          v6 = sub_2441D8C4C();
        }

        else
        {
          v6 = 0;
        }

        [v7 setTopWidgetIdentifier_];
      }
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void sub_2441BF0D4(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v24 - v5;
  if (v1[16])
  {
    v7 = v1[16];

    v9 = sub_2441C05C8(v8, a1);

    if (v9)
    {
      goto LABEL_7;
    }

    v10 = v1[16];
  }

  v1[16] = a1;

  v11 = v1[17];
  sub_244194FC8(0, qword_280F94B20, off_278E089E0);
  v12 = sub_2441D8CFC();
  v24[0] = 0;
  LODWORD(v11) = [v11 storeSecureCodedObject:v12 error:v24];

  v13 = v24[0];
  if (v11)
  {
    v14 = sub_2441D8D9C();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = sub_2441BFD20();
    v16 = swift_allocObject();
    v16[2] = v1;
    v16[3] = v15;
    v16[4] = v1;
    swift_retain_n();
    v17 = v13;
    sub_2441A5C20(0, 0, v6, &unk_2441DBFA8, v16);

    v19 = v1[18];
    v18 = v1[19];
    v20 = v1[20];
    v21 = sub_2441D8C4C();
    [v19 postNotificationName:@"com.apple.proactive.contextualengine.AmbientConfigurationManager.cacheDidUpdate" object:v21 userInfo:0 options:0];
  }

  else
  {
    v22 = v24[0];
    sub_2441D88BC();

    swift_willThrow();
  }

LABEL_7:
  v23 = *MEMORY[0x277D85DE8];
}

void sub_2441BF334()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 136);
  sub_244194FC8(0, &qword_280F94B10, 0x277CBEB98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F70, &unk_2441DD000);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2441DAF20;
  v3 = sub_244194FC8(0, &qword_280F94B00, 0x277CBEA60);
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F80, qword_2441DC180);
  *(v2 + 32) = v3;
  v4 = sub_244194FC8(0, qword_280F94B20, off_278E089E0);
  *(v2 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD6210, &unk_2441DD010);
  *(v2 + 64) = v4;
  MEMORY[0x245D5A6A0](v2);
  sub_2441D8DBC();
  __break(1u);
}

void sub_2441BF5D0()
{
  v1 = [*(*(v0 + 16) + 120) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F50, &unk_2441DC170);
  v2 = sub_2441D8D0C();

  if (v2 >> 62)
  {
    v3 = sub_2441D8F5C();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x245D5A7F0](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v5 ambientConfigurationManagerCacheDidUpdate];
    swift_unknownObjectRelease();
  }

LABEL_10:

  v6 = *(v0 + 8);

  v6();
}

uint64_t sub_2441BF718(void *a1)
{
  v49 = *v1;
  v50 = a1;
  v2 = sub_2441D898C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2441D899C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD5D30, qword_2441DB670);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v45 - v14;
  v16 = sub_2441D892C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v48 = &v45 - v22;
  sub_2441D897C();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9968], v2);
  sub_2441D891C();
  sub_2441D896C();
  v46 = *(v17 + 8);
  v47 = v17 + 8;
  v46(v21, v16);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  v23 = v16;
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_2441979F8(v15, &qword_27EDD5D30, qword_2441DB670);
    return 0;
  }

  else
  {
    v25 = *(v17 + 32);
    v26 = v48;
    v45 = v23;
    v25(v48, v15, v23);
    v27 = swift_allocObject();
    *(v27 + 24) = 0;
    *(v27 + 16) = 0;
    v28 = objc_allocWithZone(MEMORY[0x277CF1A50]);
    v29 = sub_2441D88FC();
    v30 = [v28 initWithStartDate:0 endDate:v29 maxEvents:0 lastN:0 reversed:1];

    v31 = [BiomeLibrary() SpringBoard];
    swift_unknownObjectRelease();
    v32 = [v31 Domino];
    swift_unknownObjectRelease();
    v33 = [v32 StackRotation];
    swift_unknownObjectRelease();
    v34 = [v33 publisherWithOptions_];

    v35 = swift_allocObject();
    v36 = v49;
    *(v35 + 16) = v49;
    v55 = sub_2441C09C4;
    v56 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v52 = 1107296256;
    v53 = sub_2441B2EB4;
    v54 = &block_descriptor_3;
    v37 = _Block_copy(&aBlock);

    v38 = swift_allocObject();
    v39 = v50;
    v38[2] = v50;
    v38[3] = v27;
    v38[4] = v36;
    v55 = sub_2441C09CC;
    v56 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v52 = 1107296256;
    v53 = sub_2441B29C4;
    v54 = &block_descriptor_32;
    v40 = _Block_copy(&aBlock);
    v41 = v39;

    v42 = [v34 sinkWithCompletion:v37 shouldContinue:v40];
    _Block_release(v40);
    _Block_release(v37);

    v46(v26, v45);
    swift_beginAccess();
    v24 = *(v27 + 16);
    v43 = *(v27 + 24);
  }

  return v24;
}

unint64_t sub_2441BFD20()
{
  result = qword_27EDD5F40;
  if (!qword_27EDD5F40)
  {
    type metadata accessor for AmbientConfigurationManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD5F40);
  }

  return result;
}

uint64_t sub_2441BFD98()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_244198A50;

  return sub_2441BF5B0(v3, v4, v5, v2);
}

id sub_2441BFE2C(void *a1)
{
  v2 = sub_2441D8B8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v8 = result;
    v9 = sub_2441BC3D8();
    (*(v3 + 16))(v6, v9, v2);
    v10 = v8;
    v11 = sub_2441D8B7C();
    v12 = sub_2441D8E0C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v13 = 136315650;
      v15 = sub_2441D92EC();
      v17 = sub_244195848(v15, v16, &v22);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_244195848(0xD000000000000031, 0x80000002441DF730, &v22);
      *(v13 + 22) = 2112;
      v18 = v10;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 24) = v19;
      *v14 = v19;
      _os_log_impl(&dword_244192000, v11, v12, "%s.%s: error reading stack rotation stream: %@", v13, 0x20u);
      sub_2441979F8(v14, &unk_27EDD5F60, &qword_2441DBCB0);
      MEMORY[0x245D5B3C0](v14, -1, -1);
      v20 = v21;
      swift_arrayDestroy();
      MEMORY[0x245D5B3C0](v20, -1, -1);
      MEMORY[0x245D5B3C0](v13, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_2441C00C0(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_2441D8B8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 eventBody];
  if (!v11)
  {
    return 1;
  }

  v12 = v11;
  v13 = [v11 stackId];
  if (!v13)
  {
LABEL_9:

    return 1;
  }

  v46 = v7;
  v14 = v13;
  v15 = sub_2441D8C6C();
  v17 = v16;

  v18 = [a2 identifier];
  v19 = sub_2441D8C6C();
  v21 = v20;

  if (v15 == v19 && v17 == v21)
  {
  }

  else
  {
    v23 = sub_2441D91CC();

    if ((v23 & 1) == 0)
    {

      goto LABEL_9;
    }
  }

  v25 = [v12 widget];
  if (v25 && (v26 = v25, v27 = [v25 uniqueId], v26, v27))
  {
    v28 = sub_2441D8C6C();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  swift_beginAccess();
  v31 = *(a3 + 24);
  *(a3 + 16) = v28;
  *(a3 + 24) = v30;

  if (v30)
  {
  }

  else
  {
    v32 = sub_2441BC3D8();
    v33 = v46;
    (*(v46 + 16))(v10, v32, v6);

    v34 = sub_2441D8B7C();
    v35 = sub_2441D8E0C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v44 = v35;
      v37 = v36;
      v45 = swift_slowAlloc();
      v47 = v45;
      *v37 = 136315650;
      v38 = sub_2441D92EC();
      v40 = sub_244195848(v38, v39, &v47);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_244195848(0xD000000000000031, 0x80000002441DF730, &v47);
      *(v37 + 22) = 2080;
      v41 = sub_244195848(v15, v17, &v47);

      *(v37 + 24) = v41;
      _os_log_impl(&dword_244192000, v34, v44, "%s.%s: no topWidgetIdentifier found in stack rotation event with id: %s", v37, 0x20u);
      v42 = v45;
      swift_arrayDestroy();
      MEMORY[0x245D5B3C0](v42, -1, -1);
      MEMORY[0x245D5B3C0](v37, -1, -1);
    }

    else
    {
    }

    (*(v33 + 8))(v10, v6);
  }

  return 0;
}