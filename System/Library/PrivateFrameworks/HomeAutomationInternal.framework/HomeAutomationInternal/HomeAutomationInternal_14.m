uint64_t sub_252A1D510()
{
  sub_252A1EE7C(v0[6], v0[5]);
  v1 = v0[6];

  v2 = v0[1];

  return v2();
}

uint64_t sub_252A1D578()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544D18);
  sub_252E379F4();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000002FLL, 0x8000000252E72310);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC3D90(v0[2], v0[3], 0xD000000000000075, 0x8000000252E71F50);

  v4 = type metadata accessor for HomeAutomationSnippetModels();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_252A1D73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = type metadata accessor for SnippetResponseViewIds();
  v5[19] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A1D7E4, 0, 0);
}

uint64_t sub_252A1D7E4()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[15];
  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544D18);
  sub_252E379F4();
  v0[12] = 0;
  v0[13] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E71FD0);
  v6 = type metadata accessor for CompletionSnippetModel();
  sub_252E37AE4();
  sub_252CC3D90(v0[12], v0[13], 0xD000000000000075, 0x8000000252E71F50);

  sub_252A1EC94(v4, v2, type metadata accessor for CompletionSnippetModel);
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  swift_storeEnumTagMultiPayload();
  sub_252A1EC94(v2, v1, type metadata accessor for SnippetResponseViewIds);
  swift_getEnumCaseMultiPayload();
  v7 = v0[20];
  v9 = v0[17];
  v8 = v0[18];
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  sub_252A1ED64(v0[21], type metadata accessor for SnippetResponseViewIds);
  sub_252A1ED64(v7, type metadata accessor for SnippetResponseViewIds);
  (*(v9 + 8))(v10, v9);
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[10] = v6;
  v0[11] = sub_252A1EDC4(&qword_27F541B28, type metadata accessor for CompletionSnippetModel);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
  sub_252A1EC94(v11, boxed_opaque_existential_0, type metadata accessor for CompletionSnippetModel);
  sub_252E33CD4();
  v15 = v0[20];
  v16 = v0[21];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v17 = v0[1];

  return v17();
}

uint64_t sub_252A1DBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v10 = *(*(sub_252E33944() - 8) + 64) + 15;
  v9[11] = swift_task_alloc();
  v11 = sub_252E34014();
  v9[12] = v11;
  v12 = *(v11 - 8);
  v9[13] = v12;
  v13 = *(v12 + 64) + 15;
  v9[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A1DC9C, 0, 0);
}

uint64_t sub_252A1DC9C()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  v4 = sub_252E36AD4();
  v13 = *(v0 + 40);
  __swift_project_value_buffer(v4, qword_27F544D18);
  sub_252CC3D90(0xD000000000000034, 0x8000000252E71F10, 0xD000000000000075, 0x8000000252E71F50);
  sub_252E33934();
  *(swift_task_alloc() + 16) = v3;
  sub_252E33F54();

  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *(v5 + 16) = v13;
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_252A1DE80;
  v7 = *(v0 + 112);
  v8 = *(v0 + 80);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);
  v15 = *(v0 + 64);
  v16 = *(v0 + 72);

  return sub_252A199A8(v11, v9, v10, &unk_252E3D1A0, v5, v7, 0, 0);
}

uint64_t sub_252A1DE80()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_252A1E038;
  }

  else
  {
    v4 = sub_252A1DFB0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252A1DFB0()
{
  v1 = v0[11];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_252A1E038()
{
  v1 = v0[11];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v2 = v0[1];
  v3 = v0[17];

  return v2();
}

uint64_t sub_252A1E0C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_252E339D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540390, &qword_252E3C448);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_252E33FB4();
  sub_252E34004();
  v12 = sub_252E33C44();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a2, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_252E33FC4();
  (*(v4 + 104))(v7, *MEMORY[0x277D5BC50], v3);
  return sub_252E33F84();
}

uint64_t sub_252A1E27C(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for HomeAutomationSnippetModels();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[5] = v7;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v2[6] = v9;
  *v9 = v2;
  v9[1] = sub_252A1E3DC;

  return v11(v7);
}

uint64_t sub_252A1E3DC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[5];
  }

  else
  {
    v8 = v2[4];
    v7 = v2[5];
    v11 = v2 + 2;
    v9 = v2[2];
    v10 = v11[1];
    sub_252A1ECFC(v7, v9, type metadata accessor for HomeAutomationSnippetModels);
    (*(v8 + 56))(v9, 0, 1, v10);
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_252A1E544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 72) = v19;
  *(v9 + 80) = v8;
  *(v9 + 56) = a6;
  *(v9 + 64) = a8;
  *(v9 + 160) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = *(*(sub_252E33944() - 8) + 64) + 15;
  *(v9 + 88) = swift_task_alloc();
  v11 = sub_252E34014();
  *(v9 + 96) = v11;
  v12 = *(v11 - 8);
  *(v9 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 112) = swift_task_alloc();
  v14 = sub_252E33C44();
  *(v9 + 120) = v14;
  v15 = *(v14 - 8);
  *(v9 + 128) = v15;
  v16 = *(v15 + 64) + 15;
  *(v9 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A1E6A8, 0, 0);
}

uint64_t sub_252A1E6A8()
{
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 56);
  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544C58);
  sub_252CC3D90(0xD000000000000032, 0x8000000252E6A480, 0xD000000000000075, 0x8000000252E71F50);
  sub_252A6097C(v4, v1);
  sub_252E33934();
  *(swift_task_alloc() + 16) = v1;
  sub_252E33F54();

  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_252A1E85C;
  v7 = *(v0 + 112);
  v8 = *(v0 + 80);
  v9 = *(v0 + 160);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  v14 = *(v0 + 16);
  v17 = *(v0 + 64);
  v18 = *(v0 + 72);

  return sub_252A199A8(v14, v12, v13, v10, v11, v7, v9, 0);
}

uint64_t sub_252A1E85C()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_252A1EA30;
  }

  else
  {
    v3 = sub_252A1E970;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252A1E970()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[11];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_252A1EA30()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[11];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];
  v6 = v0[19];

  return v5();
}

uint64_t sub_252A1EAF0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540390, &qword_252E3C448);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  sub_252E33FB4();
  sub_252E34004();
  v7 = sub_252E33C44();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_252E33FC4();
  return sub_252E33FA4();
}

uint64_t sub_252A1EC2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B30, &qword_252E41AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252A1EC94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252A1ECFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252A1ED64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252A1EDC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252A1EE0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B30, &qword_252E41AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A1EE7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B30, &qword_252E41AB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A1EEEC()
{
  v1 = [v0 userTask];
  if (!v1)
  {
    if (qword_27F53F4B8 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544CD0);
    sub_252E379F4();

    v12 = v0;
    v13 = [v12 description];
    v14 = sub_252E36F34();
    v16 = v15;

    MEMORY[0x2530AD570](v14, v16);

    sub_252CC4050(0xD000000000000012, 0x8000000252E72480, 0xD000000000000089, 0x8000000252E72370, 0xD00000000000001ALL, 0x8000000252E724A0, 14);
    goto LABEL_21;
  }

  v2 = v1;
  v3 = [v1 value];
  if (!v3)
  {
    if (qword_27F53F4B8 != -1)
    {
      swift_once();
    }

    v17 = sub_252E36AD4();
    __swift_project_value_buffer(v17, qword_27F544CD0);
    sub_252E379F4();

    v18 = v2;
    v19 = [v18 description];
    v20 = sub_252E36F34();
    v22 = v21;

    MEMORY[0x2530AD570](v20, v22);

    sub_252CC4050(0xD000000000000026, 0x8000000252E724C0, 0xD000000000000089, 0x8000000252E72370, 0xD00000000000001ALL, 0x8000000252E724A0, 19);

    goto LABEL_21;
  }

  v4 = v3;
  v5 = [v2 attribute];
  v6 = [v2 taskType];
  if ([v2 attribute] == 27)
  {
    if (*(ControlHomeIntent.getTargetDeviceTypes()() + 16) == 1)
    {
      v7 = sub_252DB4F48();
      v9 = v8;

      v10 = v7;
      goto LABEL_14;
    }
  }

  v10 = 0;
  v9 = 1;
LABEL_14:
  sub_252BFA88C(v5, v4, v6, v10, v9 & 1, 0);
  if (!v23)
  {
    if (qword_27F53F4B8 != -1)
    {
      swift_once();
    }

    v30 = sub_252E36AD4();
    __swift_project_value_buffer(v30, qword_27F544CD0);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E724F0);
    v31 = HomeAttributeType.description.getter([v2 attribute]);
    MEMORY[0x2530AD570](v31);

    MEMORY[0x2530AD570](0x6C617620646E6120, 0xEC000000203A6575);
    v32 = [v4 description];
    v33 = sub_252E36F34();
    v35 = v34;

    MEMORY[0x2530AD570](v33, v35);

    sub_252CC4050(0, 0xE000000000000000, 0xD000000000000089, 0x8000000252E72370, 0xD00000000000001ALL, 0x8000000252E724A0, 28);

LABEL_21:
    v24 = 0;
    goto LABEL_22;
  }

  v24 = v23;
  v25 = qword_27F53F4B8;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_252E36AD4();
  __swift_project_value_buffer(v26, qword_27F544CD0);
  sub_252E379F4();

  v27 = MEMORY[0x2530AD730](v24, &type metadata for Attribute);
  v29 = v28;

  MEMORY[0x2530AD570](v27, v29);

  sub_252CC3D90(0xD000000000000027, 0x8000000252E72520, 0xD000000000000089, 0x8000000252E72370);

LABEL_22:

  return v24;
}

char *sub_252A1F47C()
{
  v1 = v0;
  v2 = [v0 userTask];
  if (!v2 || (v3 = v2, v4 = [v2 attribute], v3, (v5 = objc_msgSend(v1, sel_userTask)) == 0))
  {
    if (qword_27F53F4B8 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544CD0);
    sub_252E379F4();

    [v1 userTask];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
    v17 = sub_252E36F94();
    MEMORY[0x2530AD570](v17);

    sub_252CC4050(0xD000000000000021, 0x8000000252E72430, 0xD000000000000089, 0x8000000252E72370, 0xD00000000000001ELL, 0x8000000252E72460, 49);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [v5 taskType];

  v8 = sub_252BFA2C0(v4, v7, 0);
  if (!v8)
  {
    if (qword_27F53F4B8 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_27F544CD0);
    sub_252E379F4();

    v19 = HomeAttributeType.description.getter(v4);
    MEMORY[0x2530AD570](v19);

    sub_252CC3D90(0xD000000000000029, 0x8000000252E72340, 0xD000000000000089, 0x8000000252E72370);
LABEL_10:

    return 0;
  }

  v9 = qword_27F53F4B8;
  v10 = v8;

  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544CD0);
  sub_252E379F4();

  v12 = MEMORY[0x2530AD730](v10, &type metadata for AttributeKind);
  v14 = v13;

  MEMORY[0x2530AD570](v12, v14);

  sub_252CC3D90(0xD000000000000028, 0x8000000252E72400, 0xD000000000000089, 0x8000000252E72370);

  return v10;
}

id AutomateHomeIntent.userTask.getter()
{
  result = [v0 automatableTask];
  if (result)
  {
    v2 = result;
    type metadata accessor for ControlAutomateHomeIntent();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *AutomateHomeIntent.withUpdated(task:)(void *a1)
{
  v3 = [v1 automatableTask];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  type metadata accessor for ControlAutomateHomeIntent();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_5:
    v9 = v1;
    return v1;
  }

  v6 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask) = a1;
  v7 = a1;

  v8 = v1;
  return v1;
}

void *AutomateHomeIntent.withUpdated(trigger:)(void *a1)
{
  if (a1)
  {
    v2 = a1;
    [v1 setTrigger_];
    v3 = v1;
  }

  else
  {
    v4 = v1;
  }

  return v1;
}

id ControlHomeIntent.withUpdated(task:)(uint64_t a1)
{
  swift_getObjectType();
  v13 = v1;
  v3 = [v13 userTask];
  v4 = [v13 filters];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeFilter();
    v6 = sub_252E37264();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  type metadata accessor for ControlHomeIntent.Builder();
  v7 = [v13 time];
  v8 = sub_252D47574(v3, v6, v7);

  v9 = (*(*v8 + 184))(a1);

  v11 = (*(*v9 + 224))(v10);

  result = swift_dynamicCastClass();
  if (!result)
  {

    return v13;
  }

  return result;
}

id sub_252A1FB0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = ControlHomeIntent.withUpdated(task:)(a1);
  *a2 = result;
  return result;
}

id sub_252A1FB38@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

id sub_252A1FB44()
{
  result = [*v0 automatableTask];
  if (result)
  {
    v2 = result;
    type metadata accessor for ControlAutomateHomeIntent();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_252A1FBC4(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = [v5 automatableTask];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  type metadata accessor for ControlAutomateHomeIntent();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

LABEL_5:
    v12 = v5;
    goto LABEL_6;
  }

  v9 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask) = a1;

  v10 = a1;
  v11 = v5;

LABEL_6:
  *a2 = v5;
}

void sub_252A1FC60(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    v5 = a1;
    [v4 setTrigger_];
    v6 = v4;
  }

  else
  {
    v7 = v4;
  }

  *a2 = v4;
}

uint64_t sub_252A1FCFC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2)
  {
    v4 = v2;
    v6 = [v4 homeName];
    if (v6)
    {
      v7 = v6;
      v8 = sub_252E36F34();
      v10 = v9;

      if (v8 == a1 && v10 == v3)
      {
        goto LABEL_38;
      }

      v12 = sub_252E37DB4();

      if (v12)
      {
        goto LABEL_34;
      }
    }

    v13 = [v4 roomName];
    if (v13)
    {
      v14 = v13;
      v15 = sub_252E36F34();
      v17 = v16;

      if (v15 == a1 && v17 == v3)
      {
        goto LABEL_38;
      }

      v19 = sub_252E37DB4();

      if (v19)
      {
        goto LABEL_34;
      }
    }

    v20 = [v4 groupName];
    if (v20)
    {
      v21 = v20;
      v22 = sub_252E36F34();
      v24 = v23;

      if (v22 == a1 && v24 == v3)
      {
        goto LABEL_38;
      }

      v25 = sub_252E37DB4();

      if (v25)
      {
        goto LABEL_34;
      }
    }

    v26 = [v4 zoneName];
    if (v26)
    {
      v27 = v26;
      v28 = sub_252E36F34();
      v30 = v29;

      if (v28 == a1 && v30 == v3)
      {
        goto LABEL_38;
      }

      v31 = sub_252E37DB4();

      if (v31)
      {
        goto LABEL_34;
      }
    }

    v32 = [v4 homeEntityName];
    if (v32)
    {
      v33 = v32;
      v34 = sub_252E36F34();
      v36 = v35;

      if (v34 == a1 && v36 == v3)
      {
        goto LABEL_38;
      }

      v37 = sub_252E37DB4();

      if (v37)
      {
        goto LABEL_34;
      }
    }

    v38 = [v4 outerDeviceName];
    if (v38)
    {
      v39 = v38;
      v40 = sub_252E36F34();
      v42 = v41;

      if (v40 == a1 && v42 == v3)
      {
        goto LABEL_38;
      }

      v43 = sub_252E37DB4();

      if (v43)
      {
LABEL_34:
        LOBYTE(v3) = 1;
        return v3 & 1;
      }
    }

    v44 = [v4 targetArea];
    if (v44)
    {
      v45 = v44;
      v46 = sub_252E36F34();
      v48 = v47;

      if (v46 == a1 && v48 == v3)
      {
        goto LABEL_38;
      }

      v49 = sub_252E37DB4();

      if (v49)
      {
        goto LABEL_34;
      }
    }

    v50 = [v4 targetMap];
    if (!v50)
    {
      LOBYTE(v3) = 0;
      return v3 & 1;
    }

    v51 = v50;
    v52 = sub_252E36F34();
    v54 = v53;

    if (v52 != a1 || v54 != v3)
    {
      LOBYTE(v3) = sub_252E37DB4();
      goto LABEL_39;
    }

LABEL_38:
    LOBYTE(v3) = 1;
LABEL_39:
  }

  return v3 & 1;
}

uint64_t sub_252A20088()
{
  v1 = [v0 entityIdentifiers];
  if (!v1)
  {
    goto LABEL_4;
  }

  result = [v0 entityIdentifiers];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = sub_252E37264();

  v5 = *(v4 + 16);

  if (!v5)
  {
LABEL_4:
    v6 = v0;
    v7 = [v6 homeName];

    if (!v7)
    {
      v8 = v6;
      v7 = [v8 roomName];

      if (!v7)
      {
        v9 = v8;
        v7 = [v9 groupName];

        if (!v7)
        {
          v10 = [v9 zoneName];
          if (v10)
          {
            v7 = v10;
          }

          else
          {
            v11 = v9;
            v7 = [v11 homeEntityName];

            if (!v7)
            {
              v12 = v11;
              v7 = [v12 outerDeviceName];

              if (!v7)
              {
                if ([v12 deviceType] || objc_msgSend(v12, sel_outerDeviceType))
                {
                  return 0;
                }

                v13 = v12;
                v7 = [v13 targetArea];

                if (!v7)
                {
                  v14 = v13;
                  v7 = [v14 targetMap];

                  if (!v7)
                  {
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_252A20280(void *a1)
{
  v2 = v1;
  v4 = [a1 homeEntityName];
  if (v4 || (v4 = [v1 homeEntityName]) != 0)
  {
    v5 = v4;
    v82 = sub_252E36F34();
    v83 = v6;
  }

  else
  {
    v82 = 0;
    v83 = 0;
  }

  if ([a1 entityType])
  {
    v7 = a1;
  }

  else
  {
    v7 = v1;
  }

  v80 = [v7 entityType];
  if ([a1 outerDeviceType])
  {
    v8 = a1;
  }

  else
  {
    v8 = v1;
  }

  v81 = [v8 outerDeviceType];
  v9 = [a1 outerDeviceName];
  if (v9 || (v9 = [v1 outerDeviceName]) != 0)
  {
    v10 = v9;
    v78 = sub_252E36F34();
    v79 = v11;
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

  if ([a1 deviceType])
  {
    v12 = a1;
  }

  else
  {
    v12 = v1;
  }

  v77 = [v12 deviceType];
  v13 = [a1 homeName];
  if (v13 || (v13 = [v1 homeName]) != 0)
  {
    v14 = v13;
    v75 = sub_252E36F34();
    v76 = v15;
  }

  else
  {
    v75 = 0;
    v76 = 0;
  }

  v16 = [a1 zoneName];
  if (v16 || (v16 = [v1 zoneName]) != 0)
  {
    v17 = v16;
    v73 = sub_252E36F34();
    v74 = v18;
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  v19 = [a1 groupName];
  if (v19 || (v19 = [v1 groupName]) != 0)
  {
    v20 = v19;
    v71 = sub_252E36F34();
    v72 = v21;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  v22 = [a1 roomName];
  if (v22 || (v22 = [v1 roomName]) != 0)
  {
    v23 = v22;
    v70 = sub_252E36F34();
    v25 = v24;
  }

  else
  {
    v70 = 0;
    v25 = 0;
  }

  v26 = [a1 targetArea];
  if (v26 || (v26 = [v1 targetArea]) != 0)
  {
    v27 = v26;
    v69 = sub_252E36F34();
    v29 = v28;
  }

  else
  {
    v69 = 0;
    v29 = 0;
  }

  v30 = [a1 targetMap];
  if (v30 || (v30 = [v1 targetMap]) != 0)
  {
    v31 = v30;
    v67 = sub_252E36F34();
    v33 = v32;

    v34 = [a1 hasAllQuantifier];
  }

  else
  {
    v33 = 0;
    v34 = [a1 hasAllQuantifier];
  }

  v35 = v34;
  sub_252956D08();
  v36 = sub_252E37674();
  v37 = v36;
  if (v35)
  {
    v38 = sub_252E37694();

    if (v38)
    {
      v39 = 1;
      goto LABEL_42;
    }
  }

  else
  {
  }

  v40 = [v2 hasAllQuantifier];
  v41 = sub_252E37674();
  if (v40)
  {
    v39 = sub_252E37694();

    v41 = v40;
  }

  else
  {
    v39 = 0;
  }

LABEL_42:
  v42 = [a1 referencesFavorites];
  v43 = sub_252E37674();
  v44 = v43;
  if (v42)
  {
    v45 = sub_252E37694();

    if (v45)
    {
      v46 = 1;
      goto LABEL_50;
    }
  }

  else
  {
  }

  v47 = [v2 referencesFavorites];
  v48 = sub_252E37674();
  if (v47)
  {
    v46 = sub_252E37694();

    v48 = v47;
  }

  else
  {
    v46 = 0;
  }

LABEL_50:
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v49.n128_f64[0] = HomeFilter.Builder.init()();
  v51 = (*(*v50 + 576))(v82, v83, v49);

  v52 = (*(*v51 + 592))(v80);

  v53 = (*(*v52 + 600))(v81);

  v54 = (*(*v53 + 608))(v78, v79);

  v55 = (*(*v54 + 624))(v77);

  v56 = (*(*v55 + 632))(v75, v76);

  v57 = (*(*v56 + 648))(v73, v74);

  v58 = (*(*v57 + 664))(v71, v72);

  v59 = (*(*v58 + 680))(v70, v25);

  v60 = (*(*v59 + 696))(v69, v29);

  v61 = (*(*v60 + 712))(v68, v33);

  v62 = (*(*v61 + 736))(v39 & 1);

  v63 = (*(*v62 + 744))(v46 & 1);

  v65 = (*(*v63 + 760))(v64);

  return v65;
}

uint64_t sub_252A20B84()
{
  v1 = [v0 entityIdentifiers];
  if (v1)
  {
    goto LABEL_3;
  }

  v1 = [v0 homeEntityName];
  if (v1)
  {
    goto LABEL_3;
  }

  if ([v0 entityType] || objc_msgSend(v0, sel_outerDeviceType))
  {
    goto LABEL_4;
  }

  v1 = [v0 outerDeviceName];
  if (v1)
  {
    goto LABEL_3;
  }

  if ([v0 deviceType])
  {
    goto LABEL_4;
  }

  v1 = [v0 homeName];
  if (v1 || (v1 = [v0 zoneName]) != 0 || (v1 = objc_msgSend(v0, sel_groupName)) != 0 || (v1 = objc_msgSend(v0, sel_roomName)) != 0 || (v1 = objc_msgSend(v0, sel_targetArea)) != 0 || (v1 = objc_msgSend(v0, sel_targetMap)) != 0)
  {
LABEL_3:

    goto LABEL_4;
  }

  v4 = [v0 isExcludeFilter];
  sub_252956D08();
  v5 = sub_252E37674();
  v6 = v5;
  if (v4)
  {
    v7 = sub_252E37694();

    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v8 = [v0 hasAllQuantifier];
  v9 = sub_252E37674();
  v10 = v9;
  if (!v8)
  {

    goto LABEL_24;
  }

  v11 = sub_252E37694();

  if (v11)
  {
LABEL_4:
    v2 = 0;
    return v2 & 1;
  }

LABEL_24:
  v12 = [v0 referencesFavorites];
  v13 = sub_252E37674();
  v14 = v13;
  if (v12)
  {
    v15 = sub_252E37694();

    v2 = v15 ^ 1;
  }

  else
  {

    v2 = 1;
  }

  return v2 & 1;
}

id sub_252A20DFC(void *a1)
{
  if (a1)
  {
    v94 = v1;
    v2 = a1;
    v3 = [v2 isExcludeFilter];
    sub_252956D08();
    v4 = sub_252E37674();
    v5 = v4;
    if (v3)
    {
      v6 = sub_252E37694();

      if (v6)
      {
        v7 = v94;

        return v7;
      }
    }

    else
    {
    }

    v9 = [v94 homeEntityName];
    if (v9 || (v9 = [v94 outerDeviceName]) != 0)
    {

      v10 = [v2 outerDeviceName];
      if (!v10)
      {
        v10 = [v2 homeEntityName];
        if (!v10)
        {
          v75 = [v94 homeEntityName];
          if (v75)
          {
            v76 = v75;
            v92 = sub_252E36F34();
            v93 = v77;
          }

          else
          {
            v92 = 0;
            v93 = 0;
          }

          v14 = [v94 outerDeviceName];
LABEL_17:
          v15 = v14;
          if (v15)
          {
            v16 = v15;
            v90 = sub_252E36F34();
            v91 = v17;
          }

          else
          {
            v90 = 0;
            v91 = 0;
          }

          if ([v94 entityType])
          {
            v18 = v94;
          }

          else
          {
            v18 = v2;
          }

          v89 = [v18 entityType];
          if ([v2 outerDeviceType])
          {
            v19 = v2;
          }

          else
          {
            v19 = v94;
          }

          v87 = [v19 outerDeviceType];
          if ([v2 deviceType])
          {
            v20 = v2;
          }

          else
          {
            v20 = v94;
          }

          v88 = [v20 deviceType];
          v21 = [v2 homeName];
          if (v21 || (v21 = [v94 homeName]) != 0)
          {
            v22 = v21;
            v85 = sub_252E36F34();
            v86 = v23;
          }

          else
          {
            v85 = 0;
            v86 = 0;
          }

          v24 = [v2 zoneName];
          if (v24 || (v24 = [v94 zoneName]) != 0)
          {
            v25 = v24;
            v83 = sub_252E36F34();
            v84 = v26;
          }

          else
          {
            v83 = 0;
            v84 = 0;
          }

          v27 = [v2 groupName];
          if (v27 || (v27 = [v94 groupName]) != 0)
          {
            v28 = v27;
            v81 = sub_252E36F34();
            v82 = v29;
          }

          else
          {
            v81 = 0;
            v82 = 0;
          }

          v30 = [v2 roomName];
          if (v30 || (v30 = [v94 roomName]) != 0)
          {
            v31 = v30;
            v80 = sub_252E36F34();
            v33 = v32;
          }

          else
          {
            v80 = 0;
            v33 = 0;
          }

          v34 = [v2 targetArea];
          if (v34 || (v34 = [v94 targetArea]) != 0)
          {
            v35 = v34;
            v79 = sub_252E36F34();
            v37 = v36;
          }

          else
          {
            v79 = 0;
            v37 = 0;
          }

          v38 = [v2 targetMap];
          if (v38 || (v38 = [v94 targetMap]) != 0)
          {
            v39 = v38;
            v78 = sub_252E36F34();
            v41 = v40;
          }

          else
          {
            v78 = 0;
            v41 = 0;
          }

          v42 = [v2 hasAllQuantifier];
          v43 = sub_252E37674();
          v44 = v43;
          if (v42)
          {
            v45 = sub_252E37694();

            if (v45)
            {
              v46 = 1;
              goto LABEL_55;
            }
          }

          else
          {
          }

          v47 = [v94 hasAllQuantifier];
          v48 = sub_252E37674();
          if (v47)
          {
            v46 = sub_252E37694();

            v48 = v47;
          }

          else
          {
            v46 = 0;
          }

LABEL_55:
          v49 = [v2 referencesFavorites];
          v50 = sub_252E37674();
          v51 = v50;
          if (v49)
          {
            v52 = sub_252E37694();

            if (v52)
            {
LABEL_62:
              type metadata accessor for HomeFilter.Builder();
              swift_allocObject();
              v55.n128_f64[0] = HomeFilter.Builder.init()();
              v57 = (*(*v56 + 576))(v92, v93, v55);

              v58 = (*(*v57 + 592))(v89);

              v59 = (*(*v58 + 600))(v87);

              v60 = (*(*v59 + 608))(v90, v91);

              v61 = (*(*v60 + 624))(v88);

              v62 = (*(*v61 + 632))(v85, v86);

              v63 = (*(*v62 + 648))(v83, v84);

              v64 = (*(*v63 + 664))(v81, v82);

              v65 = (*(*v64 + 680))(v80, v33);

              v66 = (*(*v65 + 696))(v79, v37);

              v67 = (*(*v66 + 712))(v78, v41);

              v68 = (*(*v67 + 736))(v46 & 1);

              v69 = [v94 isExcludeFilter];
              v70 = sub_252E37674();
              if (v69)
              {
                v71 = sub_252E37694();

                v70 = v69;
              }

              else
              {
                v71 = 0;
              }

              v72 = (*(*v68 + 728))(v71 & 1);

              v74 = (*(*v72 + 760))(v73);

              return v74;
            }
          }

          else
          {
          }

          v53 = [v94 referencesFavorites];
          v54 = sub_252E37674();
          if (v53)
          {
            sub_252E37694();

            v54 = v53;
          }

          goto LABEL_62;
        }
      }

      v11 = [v2 homeEntityName];
      if (!v11)
      {
        v92 = 0;
        v93 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v11 = [v2 homeEntityName];
      if (!v11)
      {
        v92 = 0;
        v93 = 0;
        goto LABEL_16;
      }
    }

    v12 = v11;
    v92 = sub_252E36F34();
    v93 = v13;

LABEL_16:
    v14 = [v2 outerDeviceName];
    goto LABEL_17;
  }

  return v1;
}

uint64_t sub_252A218E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v79 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v79 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v79 = &v79 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v80 = &v79 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v79 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v79 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v79 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v79 - v28;
  v30 = sub_252E36324();
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v82 = a2;
  v83 = v32;
  v33 = a2;
  v34 = v30;
  v84 = v31 + 56;
  v32(v33, 1, 1, v30);
  if (a1 > 4)
  {
    if (a1 > 10)
    {
      if (a1 == 11)
      {
        v66 = [v81 targetArea];
        if (v66)
        {
          v67 = v66;
          sub_252E36F34();

          sub_252E37024();

          v68 = v82;
          sub_252938BBC(v82);
          v69 = 0;
        }

        else
        {
          v68 = v82;
          sub_252938BBC(v82);
          v69 = 1;
        }

        v83(v11, v69, 1, v34);
        v73 = v11;
        v74 = v68;
        return sub_2529439A0(v73, v74);
      }

      if (a1 == 12)
      {
        v50 = v34;
        v51 = [v81 targetMap];
        v37 = v82;
        if (v51)
        {
          v52 = v51;
          sub_252E36F34();

          sub_252E37024();

          sub_252938BBC(v37);
          v53 = 0;
        }

        else
        {
          sub_252938BBC(v82);
          v53 = 1;
        }

        v83(v8, v53, 1, v50);
        v73 = v8;
        goto LABEL_49;
      }
    }

    else
    {
      if (a1 == 5)
      {
        v58 = [v81 homeName];
        if (v58)
        {
          v59 = v58;
          sub_252E36F34();

          sub_252E37024();

          v60 = v82;
          sub_252938BBC(v82);
          v61 = 0;
        }

        else
        {
          v60 = v82;
          sub_252938BBC(v82);
          v61 = 1;
        }

        v83(v14, v61, 1, v34);
        v73 = v14;
        v74 = v60;
        return sub_2529439A0(v73, v74);
      }

      if (a1 == 7)
      {
        v40 = v81;
        v41 = [v81 homeEntityName];
        v42 = v82;
        if (v41)
        {
          v43 = v41;
          sub_252E36F34();

          v44 = v79;
          sub_252E37024();

          v83(v44, 0, 1, v34);
          sub_252938BBC(v42);
          v45 = v80;
          (*(v31 + 32))(v80, v44, v34);
          v83(v45, 0, 1, v34);
        }

        else
        {
          v75 = 1;
          v76 = v79;
          v83(v79, 1, 1, v34);
          v77 = [v40 outerDeviceName];
          v45 = v80;
          if (v77)
          {
            v78 = v77;
            sub_252E36F34();

            sub_252E37024();

            v75 = 0;
          }

          sub_252938BBC(v42);
          v83(v45, v75, 1, v34);
          if ((*(v31 + 48))(v76, 1, v34) != 1)
          {
            sub_252938BBC(v76);
          }
        }

        v73 = v45;
        v74 = v42;
        return sub_2529439A0(v73, v74);
      }
    }
  }

  else
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v62 = [v81 roomName];
        if (v62)
        {
          v63 = v62;
          sub_252E36F34();

          sub_252E37024();

          v64 = v82;
          sub_252938BBC(v82);
          v65 = 0;
        }

        else
        {
          v64 = v82;
          sub_252938BBC(v82);
          v65 = 1;
        }

        v83(v27, v65, 1, v34);
        v73 = v27;
        v74 = v64;
      }

      else
      {
        v46 = [v81 groupName];
        v47 = v82;
        if (v46)
        {
          v48 = v46;
          sub_252E36F34();

          sub_252E37024();

          sub_252938BBC(v47);
          v49 = 0;
        }

        else
        {
          sub_252938BBC(v82);
          v49 = 1;
        }

        v83(v24, v49, 1, v34);
        v73 = v24;
        v74 = v47;
      }

      return sub_2529439A0(v73, v74);
    }

    if (a1 == 1)
    {
      v54 = [v81 homeName];
      if (v54)
      {
        v55 = v54;
        sub_252E36F34();

        sub_252E37024();

        v56 = v82;
        sub_252938BBC(v82);
        v57 = 0;
      }

      else
      {
        v56 = v82;
        sub_252938BBC(v82);
        v57 = 1;
      }

      v83(v29, v57, 1, v34);
      v73 = v29;
      v74 = v56;
      return sub_2529439A0(v73, v74);
    }

    if (a1 == 2)
    {
      v35 = v34;
      v36 = [v81 zoneName];
      v37 = v82;
      if (v36)
      {
        v38 = v36;
        sub_252E36F34();

        sub_252E37024();

        sub_252938BBC(v37);
        v39 = 0;
      }

      else
      {
        sub_252938BBC(v82);
        v39 = 1;
      }

      v83(v21, v39, 1, v35);
      v73 = v21;
LABEL_49:
      v74 = v37;
      return sub_2529439A0(v73, v74);
    }
  }

  v70 = v82;
  sub_252938BBC(v82);
  v71 = v83;

  return v71(v70, 1, 1, v34);
}

uint64_t HomeFilter.hash.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_252E41B60;
  sub_252E379F4();

  v3 = [v0 entityIdentifiers];
  if (v3)
  {
    v4 = v3;
    v5 = sub_252E37264();
  }

  else
  {
    v5 = 0;
  }

  v55[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540378, &unk_252E43ED0);
  sub_252A22AFC();
  v6 = sub_252E37744();

  v56 = v6;
  v7 = sub_252E37D94();
  MEMORY[0x2530AD570](v7);

  *(v2 + 32) = 0xD000000000000013;
  *(v2 + 40) = 0x8000000252E72550;
  sub_252E379F4();

  v8 = [v1 homeEntityName];
  if (v8)
  {
    v9 = v8;
    sub_252E36F34();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v10 = sub_252E37744();

  v56 = v10;
  v11 = sub_252E37D94();
  MEMORY[0x2530AD570](v11);

  *(v2 + 48) = 0x69746E45656D6F68;
  *(v2 + 56) = 0xEF20656D614E7974;
  strcpy(v55, "entityType: ");
  BYTE5(v55[1]) = 0;
  HIWORD(v55[1]) = -5120;
  v12 = [v1 entityType];
  sub_252E37EC4();
  MEMORY[0x2530AE390](v12);
  sub_252E37F14();
  v13 = sub_252E37D94();
  MEMORY[0x2530AD570](v13);

  v14 = v55[1];
  *(v2 + 64) = v55[0];
  *(v2 + 72) = v14;
  sub_252E379F4();

  v15 = [v1 outerDeviceType];
  sub_252E37EC4();
  MEMORY[0x2530AE390](v15);
  sub_252E37F14();
  v16 = sub_252E37D94();
  MEMORY[0x2530AD570](v16);

  *(v2 + 80) = 0xD000000000000011;
  *(v2 + 88) = 0x8000000252E72570;
  sub_252E379F4();

  v17 = [v1 outerDeviceName];
  if (v17)
  {
    v18 = v17;
    sub_252E36F34();
  }

  v19 = sub_252E37744();

  v56 = v19;
  v20 = sub_252E37D94();
  MEMORY[0x2530AD570](v20);

  *(v2 + 96) = 0xD000000000000011;
  *(v2 + 104) = 0x8000000252E72590;
  strcpy(v55, "deviceType: ");
  BYTE5(v55[1]) = 0;
  HIWORD(v55[1]) = -5120;
  v21 = [v1 deviceType];
  sub_252E37EC4();
  MEMORY[0x2530AE390](v21);
  sub_252E37F14();
  v22 = sub_252E37D94();
  MEMORY[0x2530AD570](v22);

  v23 = v55[1];
  *(v2 + 112) = v55[0];
  *(v2 + 120) = v23;
  v24 = [v1 homeName];
  if (v24)
  {
    v25 = v24;
    v26 = sub_252E36F34();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v55[0] = v26;
  v55[1] = v28;
  v29 = sub_252E37744();

  v56 = v29;
  v30 = sub_252E37D94();
  MEMORY[0x2530AD570](v30);

  *(v2 + 128) = 0x203A656D6F68;
  *(v2 + 136) = 0xE600000000000000;
  v31 = [v1 zoneName];
  if (v31)
  {
    v32 = v31;
    v33 = sub_252E36F34();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v55[0] = v33;
  v55[1] = v35;
  v36 = sub_252E37744();

  v56 = v36;
  v37 = sub_252E37D94();
  MEMORY[0x2530AD570](v37);

  *(v2 + 144) = 0x203A656E6F7ALL;
  *(v2 + 152) = 0xE600000000000000;
  v38 = [v1 groupName];
  if (v38)
  {
    v39 = v38;
    v40 = sub_252E36F34();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v55[0] = v40;
  v55[1] = v42;
  v43 = sub_252E37744();

  v56 = v43;
  v44 = sub_252E37D94();
  MEMORY[0x2530AD570](v44);

  *(v2 + 160) = 0x203A70756F7267;
  *(v2 + 168) = 0xE700000000000000;
  v45 = [v1 roomName];
  if (v45)
  {
    v46 = v45;
    sub_252E36F34();
  }

  sub_252E37744();

  v47 = sub_252E37D94();
  MEMORY[0x2530AD570](v47);

  *(v2 + 176) = 0x203A6D6F6F72;
  *(v2 + 184) = 0xE600000000000000;
  sub_252E379F4();

  v48 = [v1 isExcludeFilter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540348, &qword_252E3C348);
  sub_252A22B78();
  sub_252E37744();

  v49 = sub_252E37D94();
  MEMORY[0x2530AD570](v49);

  *(v2 + 192) = 0xD000000000000011;
  *(v2 + 200) = 0x8000000252E725B0;
  sub_252E379F4();

  v50 = [v1 hasAllQuantifier];
  sub_252E37744();

  v51 = sub_252E37D94();
  MEMORY[0x2530AD570](v51);

  *(v2 + 208) = 0xD000000000000012;
  *(v2 + 216) = 0x8000000252E725D0;
  sub_252E379F4();

  v55[0] = [v1 referencesFavorites];
  sub_252E37744();

  v52 = sub_252E37D94();
  MEMORY[0x2530AD570](v52);

  *(v2 + 224) = 0xD000000000000015;
  *(v2 + 232) = 0x8000000252E725F0;
  v53 = sub_252E37314();

  return v53;
}

unint64_t sub_252A22AFC()
{
  result = qword_27F541B40;
  if (!qword_27F541B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540480, &qword_252E3C910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541B40);
  }

  return result;
}

unint64_t sub_252A22B78()
{
  result = qword_27F541B48;
  if (!qword_27F541B48)
  {
    sub_252956D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541B48);
  }

  return result;
}

uint64_t HomeAttributeModeType.description.getter(uint64_t a1)
{
  result = 1869903201;
  switch(a1)
  {
    case 0:
      result = 0x6E776F6E6B6E75;
      break;
    case 1:
      result = 0x6D7575636176;
      break;
    case 2:
      result = 7368557;
      break;
    case 3:
      result = 0x6E6F697461636176;
      break;
    case 4:
      result = 0x61656C4370656564;
      break;
    case 5:
      return result;
    case 6:
      result = 0x6B63697571;
      break;
    case 7:
      result = 0x7465697571;
      break;
    case 8:
      result = 7889261;
      break;
    case 9:
      result = 1701736302;
      break;
    case 10:
      result = 0x6772656E45776F6CLL;
      break;
    case 11:
      result = 0x746867696ELL;
      break;
    case 12:
      result = 7954788;
      break;
    case 13:
      result = 7235949;
      break;
    case 14:
      result = 0x7465736E75;
      break;
    case 15:
      result = 0x6573696F4E776F6CLL;
      break;
    default:
      result = sub_252E37DF4();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_252A22D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v4[22] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v4[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v9 = type metadata accessor for CompletionSnippetModel();
  v4[28] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B58, &qword_252E41BE8);
  v4[31] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v13 = sub_252E36324();
  v4[35] = v13;
  v14 = *(v13 - 8);
  v4[36] = v14;
  v15 = *(v14 + 64) + 15;
  v4[37] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v17 = sub_252E36AB4();
  v4[39] = v17;
  v18 = *(v17 - 8);
  v4[40] = v18;
  v19 = *(v18 + 64) + 15;
  v4[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A22FE8, 0, 0);
}

uint64_t sub_252A22FE8()
{
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = qword_27F544FD0;
  v0[42] = qword_27F544FD0;
  v3 = v2;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v4 = v0[38];
  v5 = v0[36];
  v6 = v0[20];
  v18 = v0[35];
  v19 = v0[21];
  v7 = v0[19];
  v8 = sub_252E36AD4();
  v0[43] = __swift_project_value_buffer(v8, qword_27F544EB0);
  sub_252E379F4();
  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E729F0);
  v9 = [v7 description];
  v10 = sub_252E36F34();
  v12 = v11;

  MEMORY[0x2530AD570](v10, v12);

  MEMORY[0x2530AD570](0x6E6F707365522020, 0xEC000000203A6573);
  v0[17] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B90, &qword_252E41C08);
  sub_252E37AE4();
  sub_252CC3D90(v0[9], v0[10], 0xD000000000000072, 0x8000000252E72680);

  v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v0[44] = *(v13 + 23);

  type metadata accessor for ServiceCollectionDecorator();
  v0[45] = swift_initStackObject();
  v0[46] = sub_252B7DA9C(v7);
  (*(v5 + 56))(v4, 1, 1, v18);
  v14 = swift_task_alloc();
  v0[47] = v14;
  *v14 = v0;
  v14[1] = sub_252A2330C;
  v15 = v0[38];
  v16 = v0[20];

  return sub_252D2715C(v16, v19, v15);
}

uint64_t sub_252A2330C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v5 = *(*v2 + 304);
  v8 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
  if (v1)
  {
    v6 = sub_252A3320C;
  }

  else
  {
    v6 = sub_252A23450;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252A23450()
{
  v83 = v0;
  v1 = *(v0 + 384);
  v64 = *(v0 + 368);
  v67 = *(v0 + 344);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  v79 = *(v0 + 264);
  v75 = *(v0 + 256);
  v6 = *(v0 + 240);
  v7 = *(v0 + 248);
  v66 = *(v0 + 232);
  v68 = *(v0 + 224);
  v56 = *(v0 + 216);
  v69 = *(v0 + 208);
  v73 = *(v0 + 200);
  v59 = *(v0 + 192);
  v71 = *(v0 + 184);
  v77 = *(v0 + 176);
  v62 = *(v0 + 160);
  v55 = *(v0 + 152);
  *(v0 + 400) = 0;
  sub_252E36374();
  sub_252E37024();

  v8 = sub_252E36304();
  v60 = v9;
  v61 = v8;
  v10 = *(v2 + 8);
  v10(v3, v5);
  *(v0 + 401) = 3;
  sub_252E36374();
  sub_252E37024();

  v11 = sub_252E36304();
  v57 = v12;
  v58 = v11;
  v10(v3, v5);
  v13 = *(v7 + 48);
  type metadata accessor for AccessoriesCollectionDecorator();
  swift_allocObject();
  v14 = v55;
  v15 = sub_252C2436C(v14);
  sub_252A2E2C8(v14, 1, v64, v15, v62, v4);

  sub_252A2F9E8(v64, v15, v4 + v13);

  sub_252938414(v4, v79, &qword_27F541B58, &qword_252E41BE8);
  v65 = *(v7 + 48);
  sub_252938414(v4, v75, &qword_27F541B58, &qword_252E41BE8);
  v63 = *(v7 + 48);
  v16 = v68[5];
  *(v0 + 96) = 0;
  *(v0 + 88) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v54 = v68[6];
  *(v0 + 402) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v52 = v68[9];
  v17 = type metadata accessor for IconConfiguration();
  (*(*(v17 - 8) + 56))(v56, 1, 1, v17);
  sub_252938414(v56, v69, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v56, &qword_27F541B50, &unk_252E47970);
  v53 = v68[10];
  v18 = sub_252E32CB4();
  (*(*(v18 - 8) + 56))(v59, 1, 1, v18);
  sub_252938414(v59, v71, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v59, &qword_27F540370, &qword_252E3C450);
  *(v0 + 104) = v61;
  *(v0 + 112) = v60;
  sub_252E330C4();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v19 - 8) + 8))(v6 + v16, v19);
  *(v0 + 120) = v58;
  *(v0 + 128) = v57;
  sub_252E330C4();
  sub_252938414(v79, v56, &qword_27F541B50, &unk_252E47970);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  (*(*(v20 - 8) + 8))(v6 + v52, v20);
  sub_252938414(v56, v69, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v56, &qword_27F541B50, &unk_252E47970);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  (*(*(v21 - 8) + 8))(v6 + v54, v21);
  *(v0 + 403) = 1;
  sub_252E330C4();
  v22 = v68[7];
  *(v0 + 404) = 1;
  sub_252E330C4();
  sub_252938414(v75 + v63, v59, &qword_27F540370, &qword_252E3C450);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  (*(*(v23 - 8) + 8))(v6 + v53, v23);
  sub_252938414(v59, v71, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v59, &qword_27F540370, &qword_252E3C450);
  v24 = v68[8];
  *(v0 + 405) = 0;
  sub_252E330C4();
  v25 = v68[11];
  *(v0 + 406) = 1;
  sub_252E330C4();
  sub_25293847C(v75 + v63, &qword_27F540370, &qword_252E3C450);
  sub_25293847C(v79, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v75, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v79 + v65, &qword_27F540370, &qword_252E3C450);
  sub_252A31B70(v6, v66);
  v26 = sub_252E36AC4();
  v27 = sub_252E374C4();
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 384);
  v30 = *(v0 + 368);
  v31 = *(v0 + 352);
  v32 = *(v0 + 272);
  v33 = *(v0 + 232);
  if (v28)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v82 = v35;
    *v34 = 136315138;
    v80 = v32;
    v36 = CompletionSnippetModel.description.getter();
    v38 = v37;
    sub_252A31BD4(v33);
    v39 = sub_252BE2CE0(v36, v38, &v82);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_252917000, v26, v27, "Created Completion Failure snippet model : %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x2530AED00](v35, -1, -1);
    MEMORY[0x2530AED00](v34, -1, -1);

    v40 = v80;
  }

  else
  {
    v41 = *(v0 + 384);

    sub_252A31BD4(v33);
    v40 = v32;
  }

  sub_25293847C(v40, &qword_27F541B58, &qword_252E41BE8);
  v42 = *(v0 + 328);
  v43 = *(v0 + 336);
  v44 = *(v0 + 312);
  v45 = *(v0 + 320);
  v47 = *(v0 + 296);
  v46 = *(v0 + 304);
  v48 = *(v0 + 264);
  v49 = *(v0 + 272);
  v70 = *(v0 + 256);
  v72 = *(v0 + 232);
  v74 = *(v0 + 216);
  v76 = *(v0 + 208);
  v78 = *(v0 + 192);
  v81 = *(v0 + 184);
  sub_252A3314C(*(v0 + 240), *(v0 + 144), type metadata accessor for CompletionSnippetModel);
  sub_252E375C4();
  sub_252E36A74();
  (*(v45 + 8))(v42, v44);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_252A23D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v4[22] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v4[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v9 = type metadata accessor for CompletionSnippetModel();
  v4[28] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B58, &qword_252E41BE8);
  v4[31] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v13 = sub_252E36324();
  v4[35] = v13;
  v14 = *(v13 - 8);
  v4[36] = v14;
  v15 = *(v14 + 64) + 15;
  v4[37] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v17 = sub_252E36AB4();
  v4[39] = v17;
  v18 = *(v17 - 8);
  v4[40] = v18;
  v19 = *(v18 + 64) + 15;
  v4[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A23FF8, 0, 0);
}

uint64_t sub_252A23FF8()
{
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = qword_27F544FD0;
  v0[42] = qword_27F544FD0;
  v3 = v2;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v4 = v0[38];
  v5 = v0[36];
  v6 = v0[20];
  v18 = v0[35];
  v19 = v0[21];
  v7 = v0[19];
  v8 = sub_252E36AD4();
  v0[43] = __swift_project_value_buffer(v8, qword_27F544EB0);
  sub_252E379F4();
  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E729C0);
  v9 = [v7 description];
  v10 = sub_252E36F34();
  v12 = v11;

  MEMORY[0x2530AD570](v10, v12);

  MEMORY[0x2530AD570](0x6E6F707365522020, 0xEC000000203A6573);
  v0[17] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B90, &qword_252E41C08);
  sub_252E37AE4();
  sub_252CC3D90(v0[9], v0[10], 0xD000000000000072, 0x8000000252E72680);

  v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v0[44] = *(v13 + 23);

  type metadata accessor for ServiceCollectionDecorator();
  v0[45] = swift_initStackObject();
  v0[46] = sub_252B7DA9C(v7);
  (*(v5 + 56))(v4, 1, 1, v18);
  v14 = swift_task_alloc();
  v0[47] = v14;
  *v14 = v0;
  v14[1] = sub_252A2431C;
  v15 = v0[38];
  v16 = v0[20];

  return sub_252D2715C(v16, v19, v15);
}

uint64_t sub_252A2431C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v5 = *(*v2 + 304);
  v8 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
  if (v1)
  {
    v6 = sub_252A3320C;
  }

  else
  {
    v6 = sub_252A33208;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252A24460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v4[22] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v4[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v9 = type metadata accessor for CompletionSnippetModel();
  v4[28] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B58, &qword_252E41BE8);
  v4[31] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v13 = sub_252E36324();
  v4[35] = v13;
  v14 = *(v13 - 8);
  v4[36] = v14;
  v15 = *(v14 + 64) + 15;
  v4[37] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v17 = sub_252E36AB4();
  v4[39] = v17;
  v18 = *(v17 - 8);
  v4[40] = v18;
  v19 = *(v18 + 64) + 15;
  v4[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A246D8, 0, 0);
}

uint64_t sub_252A246D8()
{
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = qword_27F544FD0;
  v0[42] = qword_27F544FD0;
  v3 = v2;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v4 = v0[38];
  v5 = v0[36];
  v6 = v0[20];
  v18 = v0[35];
  v19 = v0[21];
  v7 = v0[19];
  v8 = sub_252E36AD4();
  v0[43] = __swift_project_value_buffer(v8, qword_27F544EB0);
  sub_252E379F4();
  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E72840);
  v9 = [v7 description];
  v10 = sub_252E36F34();
  v12 = v11;

  MEMORY[0x2530AD570](v10, v12);

  MEMORY[0x2530AD570](0x6E6F707365522020, 0xEC000000203A6573);
  v0[17] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B90, &qword_252E41C08);
  sub_252E37AE4();
  sub_252CC3D90(v0[9], v0[10], 0xD000000000000072, 0x8000000252E72680);

  v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v0[44] = *(v13 + 23);

  type metadata accessor for ServiceCollectionDecorator();
  v0[45] = swift_initStackObject();
  v0[46] = sub_252B7DA9C(v7);
  (*(v5 + 56))(v4, 1, 1, v18);
  v14 = swift_task_alloc();
  v0[47] = v14;
  *v14 = v0;
  v14[1] = sub_252A249FC;
  v15 = v0[38];
  v16 = v0[20];

  return sub_252D2715C(v16, v19, v15);
}

uint64_t sub_252A249FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v5 = *(*v2 + 304);
  v8 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
  if (v1)
  {
    v6 = sub_252A2548C;
  }

  else
  {
    v6 = sub_252A24B40;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252A24B40()
{
  v85 = v0;
  v1 = [*(v0 + 152) userTask];
  if (v1)
  {
    v2 = v1;
    v67 = sub_252A32CA4(v1);
  }

  else
  {
    v67 = 1;
  }

  v3 = *(v0 + 384);
  v65 = *(v0 + 368);
  v70 = *(v0 + 344);
  v4 = *(v0 + 288);
  v5 = *(v0 + 296);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v81 = *(v0 + 264);
  v77 = *(v0 + 256);
  v8 = *(v0 + 240);
  v9 = *(v0 + 248);
  v69 = *(v0 + 232);
  v54 = *(v0 + 224);
  v59 = *(v0 + 216);
  v71 = *(v0 + 208);
  v73 = *(v0 + 200);
  v64 = *(v0 + 192);
  v75 = *(v0 + 184);
  v79 = *(v0 + 176);
  v56 = *(v0 + 152);
  v58 = *(v0 + 160);
  *(v0 + 400) = 0;
  sub_252E36374();
  sub_252E37024();

  v10 = sub_252E36304();
  v62 = v11;
  v63 = v10;
  v12 = *(v4 + 8);
  v12(v5, v6);
  *(v0 + 401) = 1;
  sub_252E36374();
  sub_252E37024();

  v60 = sub_252E36304();
  v61 = v13;
  v12(v5, v6);
  v14 = *(v9 + 48);
  type metadata accessor for AccessoriesCollectionDecorator();
  swift_allocObject();
  v15 = v56;
  v16 = sub_252C2436C(v15);
  sub_252A2E2C8(v15, v67 & 1, v65, v16, v58, v7);

  sub_252A2F9E8(v65, v16, v7 + v14);

  sub_252938414(v7, v81, &qword_27F541B58, &qword_252E41BE8);
  v68 = *(v9 + 48);
  sub_252938414(v7, v77, &qword_27F541B58, &qword_252E41BE8);
  v66 = *(v9 + 48);
  v17 = v54[5];
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v57 = v54[6];
  *(v0 + 402) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v53 = v54[9];
  v18 = type metadata accessor for IconConfiguration();
  (*(*(v18 - 8) + 56))(v59, 1, 1, v18);
  sub_252938414(v59, v71, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v59, &qword_27F541B50, &unk_252E47970);
  v55 = v54[10];
  v19 = sub_252E32CB4();
  (*(*(v19 - 8) + 56))(v64, 1, 1, v19);
  sub_252938414(v64, v75, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v64, &qword_27F540370, &qword_252E3C450);
  *(v0 + 104) = v63;
  *(v0 + 112) = v62;
  sub_252E330C4();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v20 - 8) + 8))(v8 + v17, v20);
  *(v0 + 120) = v60;
  *(v0 + 128) = v61;
  sub_252E330C4();
  sub_252938414(v81, v59, &qword_27F541B50, &unk_252E47970);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  (*(*(v21 - 8) + 8))(v8 + v53, v21);
  sub_252938414(v59, v71, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v59, &qword_27F541B50, &unk_252E47970);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  (*(*(v22 - 8) + 8))(v8 + v57, v22);
  *(v0 + 403) = 0;
  sub_252E330C4();
  v23 = v54[7];
  *(v0 + 404) = 0;
  sub_252E330C4();
  sub_252938414(v77 + v66, v64, &qword_27F540370, &qword_252E3C450);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  (*(*(v24 - 8) + 8))(v8 + v55, v24);
  sub_252938414(v64, v75, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v64, &qword_27F540370, &qword_252E3C450);
  v25 = v54[8];
  *(v0 + 405) = 0;
  sub_252E330C4();
  v26 = v54[11];
  *(v0 + 406) = 1;
  sub_252E330C4();
  sub_25293847C(v77 + v66, &qword_27F540370, &qword_252E3C450);
  sub_25293847C(v81, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v77, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v81 + v68, &qword_27F540370, &qword_252E3C450);
  sub_252A31B70(v8, v69);
  v27 = sub_252E36AC4();
  v28 = sub_252E374C4();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 384);
  v31 = *(v0 + 368);
  v32 = *(v0 + 352);
  v33 = *(v0 + 272);
  v34 = *(v0 + 232);
  if (v29)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v84 = v36;
    *v35 = 136315138;
    v82 = v33;
    v37 = CompletionSnippetModel.description.getter();
    v39 = v38;
    sub_252A31BD4(v34);
    v40 = sub_252BE2CE0(v37, v39, &v84);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_252917000, v27, v28, "Created Completion Failure snippet model : %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x2530AED00](v36, -1, -1);
    MEMORY[0x2530AED00](v35, -1, -1);

    v41 = v82;
  }

  else
  {
    v42 = *(v0 + 384);

    sub_252A31BD4(v34);
    v41 = v33;
  }

  sub_25293847C(v41, &qword_27F541B58, &qword_252E41BE8);
  v43 = *(v0 + 328);
  v44 = *(v0 + 336);
  v45 = *(v0 + 312);
  v46 = *(v0 + 320);
  v48 = *(v0 + 296);
  v47 = *(v0 + 304);
  v49 = *(v0 + 264);
  v50 = *(v0 + 272);
  v72 = *(v0 + 256);
  v74 = *(v0 + 232);
  v76 = *(v0 + 216);
  v78 = *(v0 + 208);
  v80 = *(v0 + 192);
  v83 = *(v0 + 184);
  sub_252A3314C(*(v0 + 240), *(v0 + 144), type metadata accessor for CompletionSnippetModel);
  sub_252E375C4();
  sub_252E36A74();
  (*(v46 + 8))(v43, v45);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_252A2548C()
{
  v1 = v0[46];
  v2 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[39];
  v6 = v0[40];
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[33];
  v10 = v0[34];
  v14 = v0[32];
  v15 = v0[30];
  v16 = v0[29];
  v17 = v0[27];
  v18 = v0[26];
  v19 = v0[24];
  v20 = v0[23];

  sub_252E375C4();
  sub_252E36A74();
  (*(v6 + 8))(v4, v5);

  v11 = v0[1];
  v12 = v0[49];

  return v11();
}

uint64_t sub_252A25610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v4[22] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v4[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v9 = type metadata accessor for CompletionSnippetModel();
  v4[28] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B58, &qword_252E41BE8);
  v4[31] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v13 = sub_252E36324();
  v4[35] = v13;
  v14 = *(v13 - 8);
  v4[36] = v14;
  v15 = *(v14 + 64) + 15;
  v4[37] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v17 = sub_252E36AB4();
  v4[39] = v17;
  v18 = *(v17 - 8);
  v4[40] = v18;
  v19 = *(v18 + 64) + 15;
  v4[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A25888, 0, 0);
}

uint64_t sub_252A25888()
{
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = qword_27F544FD0;
  v0[42] = qword_27F544FD0;
  v3 = v2;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v4 = v0[38];
  v5 = v0[36];
  v6 = v0[20];
  v18 = v0[35];
  v19 = v0[21];
  v7 = v0[19];
  v8 = sub_252E36AD4();
  v0[43] = __swift_project_value_buffer(v8, qword_27F544EB0);
  sub_252E379F4();
  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E72990);
  v9 = [v7 description];
  v10 = sub_252E36F34();
  v12 = v11;

  MEMORY[0x2530AD570](v10, v12);

  MEMORY[0x2530AD570](0x6E6F707365522020, 0xEC000000203A6573);
  v0[17] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B90, &qword_252E41C08);
  sub_252E37AE4();
  sub_252CC3D90(v0[9], v0[10], 0xD000000000000072, 0x8000000252E72680);

  v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v0[44] = *(v13 + 23);

  type metadata accessor for ServiceCollectionDecorator();
  v0[45] = swift_initStackObject();
  v0[46] = sub_252B7DA9C(v7);
  (*(v5 + 56))(v4, 1, 1, v18);
  v14 = swift_task_alloc();
  v0[47] = v14;
  *v14 = v0;
  v14[1] = sub_252A25BAC;
  v15 = v0[38];
  v16 = v0[20];

  return sub_252D2715C(v16, v19, v15);
}

uint64_t sub_252A25BAC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v5 = *(*v2 + 304);
  v8 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
  if (v1)
  {
    v6 = sub_252A3320C;
  }

  else
  {
    v6 = sub_252A25CF0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252A25CF0()
{
  v87 = v0;
  v1 = [*(v0 + 152) userTask];
  if (v1)
  {
    v2 = v1;
    v3 = sub_252A32CA4(v1);

    v68 = v3 ^ 1;
  }

  else
  {
    v68 = 0;
  }

  v4 = *(v0 + 384);
  v66 = *(v0 + 368);
  v71 = *(v0 + 344);
  v5 = *(v0 + 288);
  v6 = *(v0 + 296);
  v8 = *(v0 + 272);
  v7 = *(v0 + 280);
  v83 = *(v0 + 264);
  v79 = *(v0 + 256);
  v9 = *(v0 + 240);
  v10 = *(v0 + 248);
  v70 = *(v0 + 232);
  v72 = *(v0 + 224);
  v60 = *(v0 + 216);
  v73 = *(v0 + 208);
  v77 = *(v0 + 200);
  v65 = *(v0 + 192);
  v75 = *(v0 + 184);
  v81 = *(v0 + 176);
  v57 = *(v0 + 152);
  v59 = *(v0 + 160);
  *(v0 + 400) = 0;
  sub_252E36374();
  sub_252E37024();

  v11 = sub_252E36304();
  v63 = v12;
  v64 = v11;
  v13 = *(v5 + 8);
  v13(v6, v7);
  *(v0 + 401) = 2;
  sub_252E36374();
  sub_252E37024();

  v14 = sub_252E36304();
  v61 = v15;
  v62 = v14;
  v13(v6, v7);
  v16 = *(v10 + 48);
  type metadata accessor for AccessoriesCollectionDecorator();
  swift_allocObject();
  v17 = v57;
  v18 = sub_252C2436C(v17);
  sub_252A2E2C8(v17, v68 & 1, v66, v18, v59, v8);

  sub_252A2F9E8(v66, v18, v8 + v16);

  sub_252938414(v8, v83, &qword_27F541B58, &qword_252E41BE8);
  v69 = *(v10 + 48);
  sub_252938414(v8, v79, &qword_27F541B58, &qword_252E41BE8);
  v67 = *(v10 + 48);
  v19 = v72[5];
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v58 = v72[6];
  *(v0 + 402) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v20 = v72[9];
  v21 = type metadata accessor for IconConfiguration();
  (*(*(v21 - 8) + 56))(v60, 1, 1, v21);
  sub_252938414(v60, v73, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v60, &qword_27F541B50, &unk_252E47970);
  v56 = v72[10];
  v22 = sub_252E32CB4();
  (*(*(v22 - 8) + 56))(v65, 1, 1, v22);
  sub_252938414(v65, v75, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v65, &qword_27F540370, &qword_252E3C450);
  *(v0 + 104) = v64;
  *(v0 + 112) = v63;
  sub_252E330C4();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v23 - 8) + 8))(v9 + v19, v23);
  *(v0 + 120) = v62;
  *(v0 + 128) = v61;
  sub_252E330C4();
  sub_252938414(v83, v60, &qword_27F541B50, &unk_252E47970);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  (*(*(v24 - 8) + 8))(v9 + v20, v24);
  sub_252938414(v60, v73, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v60, &qword_27F541B50, &unk_252E47970);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  (*(*(v25 - 8) + 8))(v9 + v58, v25);
  *(v0 + 403) = 0;
  sub_252E330C4();
  v26 = v72[7];
  *(v0 + 404) = 0;
  sub_252E330C4();
  sub_252938414(v79 + v67, v65, &qword_27F540370, &qword_252E3C450);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  (*(*(v27 - 8) + 8))(v9 + v56, v27);
  sub_252938414(v65, v75, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v65, &qword_27F540370, &qword_252E3C450);
  v28 = v72[8];
  *(v0 + 405) = 0;
  sub_252E330C4();
  v29 = v72[11];
  *(v0 + 406) = 1;
  sub_252E330C4();
  sub_25293847C(v79 + v67, &qword_27F540370, &qword_252E3C450);
  sub_25293847C(v83, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v79, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v83 + v69, &qword_27F540370, &qword_252E3C450);
  sub_252A31B70(v9, v70);
  v30 = sub_252E36AC4();
  v31 = sub_252E374C4();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 384);
  v34 = *(v0 + 368);
  v35 = *(v0 + 352);
  v36 = *(v0 + 272);
  v37 = *(v0 + 232);
  if (v32)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v86 = v39;
    *v38 = 136315138;
    v84 = v36;
    v40 = CompletionSnippetModel.description.getter();
    v42 = v41;
    sub_252A31BD4(v37);
    v43 = sub_252BE2CE0(v40, v42, &v86);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_252917000, v30, v31, "Created Completion Inprogress snippet model : %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x2530AED00](v39, -1, -1);
    MEMORY[0x2530AED00](v38, -1, -1);

    v44 = v84;
  }

  else
  {
    v45 = *(v0 + 384);

    sub_252A31BD4(v37);
    v44 = v36;
  }

  sub_25293847C(v44, &qword_27F541B58, &qword_252E41BE8);
  v46 = *(v0 + 328);
  v47 = *(v0 + 336);
  v48 = *(v0 + 312);
  v49 = *(v0 + 320);
  v51 = *(v0 + 296);
  v50 = *(v0 + 304);
  v52 = *(v0 + 264);
  v53 = *(v0 + 272);
  v74 = *(v0 + 256);
  v76 = *(v0 + 232);
  v78 = *(v0 + 216);
  v80 = *(v0 + 208);
  v82 = *(v0 + 192);
  v85 = *(v0 + 184);
  sub_252A3314C(*(v0 + 240), *(v0 + 144), type metadata accessor for CompletionSnippetModel);
  sub_252E375C4();
  sub_252E36A74();
  (*(v49 + 8))(v46, v48);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_252A26640(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  *(v6 + 376) = a2;
  *(v6 + 384) = a6;
  *(v6 + 654) = a5;
  *(v6 + 653) = a4;
  *(v6 + 368) = a1;
  v7 = type metadata accessor for CompletionSnippetModel();
  *(v6 + 392) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90) - 8) + 64) + 15;
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();
  v10 = sub_252E32E84();
  *(v6 + 432) = v10;
  v11 = *(v10 - 8);
  *(v6 + 440) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 448) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  *(v6 + 456) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  *(v6 + 496) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v6 + 504) = swift_task_alloc();
  *(v6 + 512) = swift_task_alloc();
  *(v6 + 520) = swift_task_alloc();
  *(v6 + 528) = swift_task_alloc();
  v17 = sub_252E36324();
  *(v6 + 536) = v17;
  v18 = *(v17 - 8);
  *(v6 + 544) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 552) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  *(v6 + 560) = swift_task_alloc();
  v21 = sub_252E36AB4();
  *(v6 + 568) = v21;
  v22 = *(v21 - 8);
  *(v6 + 576) = v22;
  v23 = *(v22 + 64) + 15;
  *(v6 + 584) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A2693C, 0, 0);
}

uint64_t sub_252A2693C()
{
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 584);
  v2 = qword_27F544FD0;
  *(v0 + 592) = qword_27F544FD0;
  v3 = v2;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 560);
  v5 = *(v0 + 544);
  v6 = *(v0 + 536);
  v7 = *(v0 + 376);
  v8 = *(v0 + 384);
  v9 = sub_252E36AD4();
  *(v0 + 600) = __swift_project_value_buffer(v9, qword_27F544EB0);
  sub_252E379F4();

  v10 = [v7 description];
  v11 = sub_252E36F34();
  v13 = v12;

  MEMORY[0x2530AD570](v11, v13);

  MEMORY[0x2530AD570](0x3A656E6563532020, 0xE900000000000020);
  v14 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v15 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  MEMORY[0x2530AD570](v14, v15);

  sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E728A0, 0xD000000000000072, 0x8000000252E72680);

  v16 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  *(v0 + 608) = *(v16 + 23);

  sub_252E37024();
  (*(v5 + 56))(v4, 0, 1, v6);
  v17 = swift_task_alloc();
  *(v0 + 616) = v17;
  *v17 = v0;
  v17[1] = sub_252A26C2C;
  v18 = *(v0 + 560);
  v19 = *(v0 + 653);

  return sub_252D29590(v18, v19);
}

uint64_t sub_252A26C2C(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[77];
  v7 = *v2;
  v3[78] = a1;
  v3[79] = v1;

  sub_25293847C(v3[70], &qword_27F540298, &unk_252E3C270);
  if (v1)
  {
    v5 = sub_252A27CB8;
  }

  else
  {
    v5 = sub_252A26D74;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A26D74()
{
  v134 = v0;
  v1 = *(v0 + 624);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 384);
  *(v0 + 649) = 0;
  sub_252E36374();
  sub_252E37024();

  v7 = sub_252E36304();
  v115 = v8;
  v117 = v7;
  v9 = *(v3 + 8);
  v9(v2, v4);
  *(v0 + 648) = 1;
  sub_252E36374();
  sub_252E37024();

  v10 = sub_252E36304();
  v111 = v11;
  v113 = v10;
  v9(v2, v4);
  v12 = type metadata accessor for IconConfiguration();
  v120 = *(*(v12 - 1) + 56);
  v120(v5, 1, 1, v12);
  type metadata accessor for DefaultHomeDataDecorator();
  swift_initStackObject();
  v13 = *(v6 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate);
  sub_252DD3B64(v133);
  v14 = v133[1];
  *(v0 + 16) = v133[0];
  *(v0 + 32) = v14;
  v15 = v133[3];
  *(v0 + 48) = v133[2];
  *(v0 + 64) = v15;
  v16 = sub_252E32E24();
  v18 = v17;
  v19 = [v13 home];
  if (v19)
  {
    v20 = v19;
    v21 = *(v0 + 440);
    v22 = *(v0 + 448);
    v23 = *(v0 + 432);
    v24 = type metadata accessor for Home();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = sub_2529E65BC(v20);
    (*(v21 + 16))(v22, v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v23);

    v28 = sub_252E32E24();
    v30 = v29;
    (*(v21 + 8))(v22, v23);
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v31 + 16), v0 + 80);

  v32 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((v0 + 80), *(v0 + 104));
  v33 = sub_252E338C4();
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  if ((v33 & 1) != 0 && v30)
  {
    sub_252A30F7C(v28, v30, v16, v18, 5u);
  }

  else
  {
    sub_252A31464(v28, v30, v16, v18, 5u, *(v0 + 488));
  }

  if (*(v0 + 24))
  {
    v34 = *(v0 + 520);
    v35 = *(v0 + 416);
    v36 = *(v0 + 424);
    v123 = v36;
    v126 = *(v0 + 528);
    v104 = *(v0 + 72);
    v96 = v35;
    v98 = *(v0 + 64);
    v108 = *(v0 + 49);
    v106 = *(v0 + 48);
    v95 = *(v0 + 40);
    v100 = *(v0 + 32);
    v101 = *(v0 + 56);
    sub_252A27E70(*(v0 + 376), v36);
    sub_252938414(v36, v35, &qword_27F540068, &qword_252E3BC90);
    v91 = v12[5];
    *(v0 + 304) = 0;
    *(v0 + 312) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    sub_252E330C4();
    v90 = v12[6];
    *(v0 + 640) = 0;
    sub_252E330C4();
    v103 = v12[9];
    *(v0 + 641) = 48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
    sub_252E330C4();
    v37 = v12[10];
    *(v0 + 336) = 0;
    *(v0 + 344) = 0;
    sub_252E330C4();
    v93 = v12[11];
    *(v0 + 352) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
    sub_252E330C4();
    v38 = v12[12];
    *(v0 + 320) = 0;
    *(v0 + 328) = 0;
    sub_252E330C4();
    v39 = v12[13];
    *(v0 + 288) = 0;
    *(v0 + 296) = 0;
    sub_252E330C4();
    v40 = v12[14];
    v41 = type metadata accessor for DirectInvocationConfig();
    (*(*(v41 - 8) + 56))(v34 + v40, 1, 1, v41);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    v43 = *(*(v42 - 8) + 8);
    v43(v34 + v37, v42);
    *(v0 + 272) = 0;
    *(v0 + 280) = 0;
    sub_252E330C4();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
    (*(*(v44 - 8) + 8))(v34 + v90, v44);
    *(v0 + 644) = 0;
    sub_252E330C4();
    sub_25292D864(v96, v34 + v40);
    *(v0 + 256) = v100;
    *(v0 + 264) = v95;
    sub_252E330C4();
    v43(v34 + v91, v42);
    *(v0 + 240) = v101;
    *(v0 + 248) = v98;
    sub_252E330C4();
    v43(v34 + v38, v42);
    *(v0 + 192) = 0;
    *(v0 + 200) = 0;
    sub_252E330C4();
    v43(v34 + v39, v42);
    *(v0 + 144) = 0;
    *(v0 + 152) = 0;
    sub_252E330C4();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
    (*(*(v45 - 8) + 8))(v34 + v93, v45);
    *(v0 + 360) = v104;
    sub_252E330C4();
    v46 = v12[7];
    *(v0 + 650) = v106;
    sub_252E330C4();
    v47 = v12[8];
    *(v0 + 651) = v108;
    sub_252E330C4();
    *(v0 + 652) = 48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
    sub_252E330F4();
    sub_25293847C(v0 + 16, &qword_27F541B80, &unk_252E4E7B0);
    sub_25293847C(v96, &qword_27F540068, &qword_252E3BC90);
    sub_25293847C(v123, &qword_27F540068, &qword_252E3BC90);
    sub_25293847C(v126, &qword_27F541B50, &unk_252E47970);
    v120(v34, 0, 1, v12);
    sub_25293DDF0(v34, v126, &qword_27F541B50, &unk_252E47970);
  }

  v109 = *(v0 + 600);
  v127 = *(v0 + 520);
  v48 = *(v0 + 504);
  v49 = *(v0 + 512);
  v50 = *(v0 + 488);
  v97 = *(v0 + 496);
  v51 = *(v0 + 480);
  v92 = *(v0 + 472);
  v124 = *(v0 + 464);
  v130 = *(v0 + 456);
  v52 = *(v0 + 408);
  v107 = *(v0 + 400);
  v53 = v12;
  v54 = *(v0 + 392);
  v102 = *(v0 + 654);
  v105 = *(v0 + 653);
  sub_252938414(*(v0 + 528), v127, &qword_27F541B50, &unk_252E47970);
  sub_252938414(v50, v51, &qword_27F540370, &qword_252E3C450);
  v55 = v54[5];
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v99 = v54[6];
  *(v0 + 647) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v94 = v54[9];
  v120(v49, 1, 1, v53);
  sub_252938414(v49, v48, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v49, &qword_27F541B50, &unk_252E47970);
  v121 = v54[10];
  v56 = sub_252E32CB4();
  (*(*(v56 - 8) + 56))(v92, 1, 1, v56);
  sub_252938414(v92, v124, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v92, &qword_27F540370, &qword_252E3C450);
  *(v0 + 208) = v117;
  *(v0 + 216) = v115;
  sub_252E330C4();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v57 - 8) + 8))(v52 + v55, v57);
  *(v0 + 224) = v113;
  *(v0 + 232) = v111;
  sub_252E330C4();
  sub_252938414(v127, v49, &qword_27F541B50, &unk_252E47970);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  (*(*(v58 - 8) + 8))(v52 + v94, v58);
  sub_252938414(v49, v48, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v49, &qword_27F541B50, &unk_252E47970);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  (*(*(v59 - 8) + 8))(v52 + v99, v59);
  *(v0 + 646) = v102;
  sub_252E330C4();
  v60 = v54[7];
  *(v0 + 645) = v105;
  sub_252E330C4();
  sub_252938414(v51, v92, &qword_27F540370, &qword_252E3C450);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  (*(*(v61 - 8) + 8))(v52 + v121, v61);
  sub_252938414(v92, v124, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v92, &qword_27F540370, &qword_252E3C450);
  v62 = v54[8];
  *(v0 + 643) = 0;
  sub_252E330C4();
  v63 = v54[11];
  *(v0 + 642) = 0;
  sub_252E330C4();
  sub_25293847C(v51, &qword_27F540370, &qword_252E3C450);
  sub_25293847C(v127, &qword_27F541B50, &unk_252E47970);
  sub_252A31B70(v52, v107);
  v64 = sub_252E36AC4();
  v65 = sub_252E374C4();
  v66 = os_log_type_enabled(v64, v65);
  v67 = *(v0 + 624);
  v68 = *(v0 + 608);
  v69 = *(v0 + 528);
  v70 = *(v0 + 488);
  v71 = *(v0 + 400);
  if (v66)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *&v133[0] = v73;
    *v72 = 136315138;
    v128 = v70;
    v131 = v69;
    v74 = CompletionSnippetModel.description.getter();
    v76 = v75;
    sub_252A31BD4(v71);
    v77 = sub_252BE2CE0(v74, v76, v133);

    *(v72 + 4) = v77;
    _os_log_impl(&dword_252917000, v64, v65, "Created Scene Completion snippet model : %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v73);
    MEMORY[0x2530AED00](v73, -1, -1);
    MEMORY[0x2530AED00](v72, -1, -1);

    sub_25293847C(v128, &qword_27F540370, &qword_252E3C450);
    v78 = v131;
  }

  else
  {
    v79 = *(v0 + 624);

    sub_252A31BD4(v71);
    sub_25293847C(v70, &qword_27F540370, &qword_252E3C450);
    v78 = v69;
  }

  sub_25293847C(v78, &qword_27F541B50, &unk_252E47970);
  v80 = *(v0 + 592);
  v81 = *(v0 + 584);
  v82 = *(v0 + 576);
  v83 = *(v0 + 568);
  v84 = *(v0 + 560);
  v85 = *(v0 + 552);
  v86 = *(v0 + 528);
  v87 = *(v0 + 520);
  v110 = *(v0 + 512);
  v112 = *(v0 + 504);
  v114 = *(v0 + 488);
  v116 = *(v0 + 480);
  v118 = *(v0 + 472);
  v119 = *(v0 + 464);
  v122 = *(v0 + 448);
  v125 = *(v0 + 424);
  v129 = *(v0 + 416);
  v132 = *(v0 + 400);
  sub_252A3314C(*(v0 + 408), *(v0 + 368), type metadata accessor for CompletionSnippetModel);
  sub_252E375C4();
  sub_252E36A74();
  (*(v82 + 8))(v81, v83);

  v88 = *(v0 + 8);

  return v88();
}

uint64_t sub_252A27CB8()
{
  v1 = v0[76];
  v2 = v0[74];
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[69];
  v8 = v0[66];
  v9 = v0[65];
  v10 = v0[64];
  v14 = v0[63];
  v15 = v0[61];
  v16 = v0[60];
  v17 = v0[59];
  v18 = v0[58];
  v19 = v0[56];
  v20 = v0[53];
  v21 = v0[52];
  v22 = v0[51];
  v23 = v0[50];

  sub_252E375C4();
  sub_252E36A74();
  (*(v4 + 8))(v3, v5);

  v11 = v0[1];
  v12 = v0[79];

  return v11();
}

uint64_t sub_252A27E70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 userTask];
  if (v4)
  {
    v5 = v4;
    v6 = sub_252A31C30(v4);
    if (v6)
    {
      v7 = v6;
      if (qword_27F53F558 != -1)
      {
        swift_once();
      }

      v8 = sub_252E36AD4();
      __swift_project_value_buffer(v8, qword_27F544EB0);
      v9 = v5;
      v10 = v7;
      v11 = sub_252E36AC4();
      v12 = sub_252E374C4();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412546;
        *(v13 + 4) = v9;
        *(v13 + 12) = 2112;
        *(v13 + 14) = v10;
        *v14 = v5;
        v14[1] = v7;
        v15 = v9;
        v16 = v10;
        _os_log_impl(&dword_252917000, v11, v12, "Inverted the task for directInvocation original: [ %@ ] inverted: [%@]", v13, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B78, &qword_252E4A340);
        swift_arrayDestroy();
        MEMORY[0x2530AED00](v14, -1, -1);
        MEMORY[0x2530AED00](v13, -1, -1);
      }

      v17 = [a1 filters];
      if (v17)
      {
        v18 = v17;
        type metadata accessor for HomeFilter();
        v19 = sub_252E37264();
      }

      else
      {
        v19 = 0;
      }

      type metadata accessor for ControlHomeIntent();
      v21 = v10;
      v22 = sub_252D473EC(v7, v19);

      v23 = objc_allocWithZone(MEMORY[0x277D5C220]);
      v5 = v22;
      v24 = sub_252E36F04();
      v25 = [v23 initWithIdentifier_];

      sub_252D15B64(v5, v25);
      sub_25293F638(0, &qword_27F541B88, 0x277D47438);
      sub_252E33054();

      v20 = 0;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 1;
  }

  v26 = type metadata accessor for DirectInvocationConfig();
  v27 = *(*(v26 - 8) + 56);

  return v27(a2, v20, 1, v26);
}

uint64_t sub_252A28180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v4[22] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v4[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v9 = type metadata accessor for CompletionSnippetModel();
  v4[28] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B58, &qword_252E41BE8);
  v4[31] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v13 = sub_252E36324();
  v4[35] = v13;
  v14 = *(v13 - 8);
  v4[36] = v14;
  v15 = *(v14 + 64) + 15;
  v4[37] = swift_task_alloc();
  v16 = sub_252E36AB4();
  v4[38] = v16;
  v17 = *(v16 - 8);
  v4[39] = v17;
  v18 = *(v17 + 64) + 15;
  v4[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A283C0, 0, 0);
}

uint64_t sub_252A283C0()
{
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = qword_27F544FD0;
  *(v0 + 328) = qword_27F544FD0;
  v3 = v2;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = sub_252E36AD4();
  *(v0 + 336) = __swift_project_value_buffer(v6, qword_27F544EB0);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002ELL, 0x8000000252E72960);
  v7 = [v5 description];
  v8 = sub_252E36F34();
  v10 = v9;

  MEMORY[0x2530AD570](v8, v10);

  MEMORY[0x2530AD570](0x6E6F707365522020, 0xEC000000203A6573);
  v11 = type metadata accessor for HomeAutomationEntityResponse(0);
  v12 = MEMORY[0x2530AD730](v4, v11);
  MEMORY[0x2530AD570](v12);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000072, 0x8000000252E72680);

  type metadata accessor for HomeAutomationPolledEntityResponses();
  v13 = swift_allocObject();
  *(v0 + 344) = v13;
  *(v13 + 16) = 0;
  *(v13 + 24) = v4;
  swift_beginAccess();

  v14 = sub_252BC6360(&unk_27F543C09, 0);
  swift_endAccess();
  v15 = *(v14 + 24);
  if (v15 >> 62)
  {
    v16 = sub_252E378C4();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 352) = v16;
  v17 = *(v0 + 152);

  v18 = [v17 userTask];
  if (v18)
  {
    v19 = v18;
    v20 = sub_252A32CA4(v18);

    v21 = v20 ^ 1;
  }

  else
  {
    v21 = 1;
  }

  *(v0 + 415) = v21 & 1;
  v22 = *(v0 + 168);
  v23 = *(v0 + 152);
  v24 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  *(v0 + 360) = *(v24 + 23);

  v25 = *(sub_252B680FC() + 161);

  type metadata accessor for ServiceCollectionDecorator();
  *(v0 + 368) = swift_initStackObject();
  *(v0 + 376) = sub_252B7DA9C(v23);

  v26 = swift_task_alloc();
  *(v0 + 384) = v26;
  *v26 = v0;
  v26[1] = sub_252A2879C;

  return sub_252D2AF38(v13, v22, v25);
}

uint64_t sub_252A2879C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 384);
  v5 = *(*v2 + 344);
  v8 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v6 = sub_252A29218;
  }

  else
  {
    v6 = sub_252A288D0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252A288D0()
{
  v83 = v0;
  v1 = *(v0 + 392);
  v63 = *(v0 + 376);
  v71 = *(v0 + 415);
  v2 = *(v0 + 344);
  v62 = *(v0 + 352);
  v66 = *(v0 + 336);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 272);
  v6 = *(v0 + 280);
  v79 = *(v0 + 264);
  v75 = *(v0 + 256);
  v8 = *(v0 + 240);
  v7 = *(v0 + 248);
  v65 = *(v0 + 232);
  v54 = *(v0 + 216);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v73 = *(v0 + 200);
  v69 = *(v0 + 192);
  v70 = *(v0 + 184);
  v77 = *(v0 + 176);
  v60 = *(v0 + 152);
  *(v0 + 408) = 0;
  sub_252E36374();
  sub_252E37024();

  v9 = sub_252E36304();
  v56 = v10;
  v57 = v9;
  (*(v4 + 8))(v3, v6);
  *(v0 + 409) = 1;
  v58 = sub_252E36374();
  v59 = v11;
  v12 = *(v7 + 48);
  type metadata accessor for AccessoriesCollectionDecorator();
  swift_allocObject();
  v13 = v60;

  v14 = sub_252C2436C(v13);
  sub_252A2E2C8(v13, v71, v63, v14, v2, v5);

  sub_252A2F9E8(v63, v14, v5 + v12);

  sub_252938414(v5, v79, &qword_27F541B58, &qword_252E41BE8);
  v64 = *(v7 + 48);
  sub_252938414(v5, v75, &qword_27F541B58, &qword_252E41BE8);
  v61 = *(v7 + 48);
  v15 = v67[5];
  *(v0 + 104) = 0;
  *(v0 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v55 = v67[6];
  *(v0 + 410) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v52 = v67[9];
  v16 = type metadata accessor for IconConfiguration();
  (*(*(v16 - 8) + 56))(v54, 1, 1, v16);
  sub_252938414(v54, v68, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v54, &qword_27F541B50, &unk_252E47970);
  v53 = v67[10];
  v17 = sub_252E32CB4();
  (*(*(v17 - 8) + 56))(v69, 1, 1, v17);
  sub_252938414(v69, v70, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v69, &qword_27F540370, &qword_252E3C450);
  *(v0 + 112) = v57;
  *(v0 + 120) = v56;
  sub_252E330C4();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v18 - 8) + 8))(v8 + v15, v18);
  LOBYTE(v62) = v62 != 0;
  *(v0 + 128) = v58;
  *(v0 + 136) = v59;
  sub_252E330C4();
  sub_252938414(v79, v54, &qword_27F541B50, &unk_252E47970);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  (*(*(v19 - 8) + 8))(v8 + v52, v19);
  sub_252938414(v54, v68, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v54, &qword_27F541B50, &unk_252E47970);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  (*(*(v20 - 8) + 8))(v8 + v55, v20);
  *(v0 + 411) = v71 ^ v62;
  sub_252E330C4();
  v21 = v67[7];
  *(v0 + 412) = 1;
  sub_252E330C4();
  sub_252938414(v75 + v61, v69, &qword_27F540370, &qword_252E3C450);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  (*(*(v22 - 8) + 8))(v8 + v53, v22);
  sub_252938414(v69, v70, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v69, &qword_27F540370, &qword_252E3C450);
  v23 = v67[8];
  *(v0 + 413) = v62;
  sub_252E330C4();
  v24 = v67[11];
  *(v0 + 414) = 1;
  sub_252E330C4();
  sub_25293847C(v75 + v61, &qword_27F540370, &qword_252E3C450);
  sub_25293847C(v79, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v75, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v79 + v64, &qword_27F540370, &qword_252E3C450);
  sub_252A31B70(v8, v65);
  v25 = sub_252E36AC4();
  v26 = sub_252E374C4();
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 392);
  v29 = *(v0 + 376);
  v30 = *(v0 + 360);
  v31 = *(v0 + 344);
  v32 = *(v0 + 272);
  v33 = *(v0 + 232);
  if (v27)
  {
    v34 = swift_slowAlloc();
    v80 = v32;
    v82 = swift_slowAlloc();
    v35 = v82;
    *v34 = 136315138;
    v36 = CompletionSnippetModel.description.getter();
    v38 = v37;
    sub_252A31BD4(v33);
    v39 = sub_252BE2CE0(v36, v38, &v82);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_252917000, v25, v26, "Created Completion snippet model for long running actions: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x2530AED00](v35, -1, -1);
    MEMORY[0x2530AED00](v34, -1, -1);

    v40 = v80;
  }

  else
  {
    v41 = *(v0 + 392);

    sub_252A31BD4(v33);
    v40 = v32;
  }

  sub_25293847C(v40, &qword_27F541B58, &qword_252E41BE8);
  v42 = *(v0 + 320);
  v43 = *(v0 + 328);
  v44 = *(v0 + 304);
  v45 = *(v0 + 312);
  v46 = *(v0 + 296);
  v47 = *(v0 + 264);
  v48 = *(v0 + 272);
  v49 = *(v0 + 256);
  v72 = *(v0 + 232);
  v74 = *(v0 + 216);
  v76 = *(v0 + 208);
  v78 = *(v0 + 192);
  v81 = *(v0 + 184);
  sub_252A3314C(*(v0 + 240), *(v0 + 144), type metadata accessor for CompletionSnippetModel);
  sub_252E375C4();
  sub_252E36A74();
  (*(v45 + 8))(v42, v44);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_252A29218()
{
  v1 = v0[47];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[40];
  v5 = v0[41];
  v6 = v0[38];
  v7 = v0[39];
  v8 = v0[37];
  v9 = v0[33];
  v10 = v0[34];
  v14 = v0[32];
  v15 = v0[30];
  v16 = v0[29];
  v17 = v0[27];
  v18 = v0[26];
  v19 = v0[24];
  v20 = v0[23];

  sub_252E375C4();
  sub_252E36A74();
  (*(v7 + 8))(v4, v6);

  v11 = v0[1];
  v12 = v0[50];

  return v11();
}

uint64_t sub_252A293A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[33] = a3;
  v4[34] = a4;
  v4[31] = a1;
  v4[32] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v4[35] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v4[38] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v9 = type metadata accessor for CompletionSnippetModel();
  v4[41] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B58, &qword_252E41BE8);
  v4[44] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v13 = sub_252E36324();
  v4[48] = v13;
  v14 = *(v13 - 8);
  v4[49] = v14;
  v15 = *(v14 + 64) + 15;
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v4[52] = swift_task_alloc();
  v17 = sub_252E36AB4();
  v4[53] = v17;
  v18 = *(v17 - 8);
  v4[54] = v18;
  v19 = *(v18 + 64) + 15;
  v4[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A29624, 0, 0);
}

uint64_t sub_252A29624()
{
  v157 = v0;
  if (qword_27F53F648 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v1 = *(v0 + 440);
    v2 = qword_27F544FD0;
    *(v0 + 448) = qword_27F544FD0;
    v3 = v2;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    if (qword_27F53F558 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 256);
    v4 = *(v0 + 264);
    v6 = sub_252E36AD4();
    *(v0 + 456) = __swift_project_value_buffer(v6, qword_27F544EB0);
    v7 = v4;
    v8 = v5;
    v9 = sub_252E36AC4();
    v10 = sub_252E374C4();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 256);
      v11 = *(v0 + 264);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412546;
      *(v13 + 4) = v12;
      *(v13 + 12) = 2112;
      *(v13 + 14) = v7;
      *v14 = v12;
      v14[1] = v11;
      v15 = v12;
      v16 = v7;
      _os_log_impl(&dword_252917000, v9, v10, "Building BOOLean state completion snippet model : %@ %@", v13, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B78, &qword_252E4A340);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v14, -1, -1);
      MEMORY[0x2530AED00](v13, -1, -1);
    }

    v17 = *(v0 + 256);

    v18 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    swift_beginAccess();
    *(v0 + 464) = *(v18 + 23);

    type metadata accessor for ServiceCollectionDecorator();
    *(v0 + 472) = swift_initStackObject();
    v19 = v17;
    *(v0 + 480) = sub_252B7DA9C(v19);
    v20 = [v19 userTask];
    *(v0 + 488) = v20;
    if (!v20)
    {
      break;
    }

    v21 = v20;
    v22 = *(v0 + 264);
    if (sub_252B7F858(39))
    {
      v23 = MEMORY[0x277D84F90];
      if (!v22)
      {
LABEL_27:
        type metadata accessor for HomeAutomationAirPurifierResponses();
        v70 = swift_allocObject();
        *(v70 + 16) = 0;
        *(v70 + 24) = v23;

        v71 = 2;
        v72 = 1;
        goto LABEL_97;
      }

      v24 = sub_252C285F0();
      v25 = v24;
      v156 = v23;
      v26 = v24 & 0xFFFFFFFFFFFFFF8;
      if (v24 >> 62)
      {
        v27 = sub_252E378C4();
      }

      else
      {
        v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 = 0;
      while (1)
      {
        if (v27 == v28)
        {

          goto LABEL_27;
        }

        if ((v25 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x2530ADF00](v28, v25);
        }

        else
        {
          if (v28 >= *(v26 + 16))
          {
            goto LABEL_69;
          }

          v29 = *(v25 + 8 * v28 + 32);
        }

        v30 = v29;
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        v32 = sub_252DA124C(0);

        ++v28;
        if (v32)
        {
          MEMORY[0x2530AD700]();
          if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v33 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v23 = v156;
          v28 = v31;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }

    else
    {
      if (v22)
      {
        v69 = sub_252C2B064(v21);
      }

      else
      {
        v69 = 0;
      }

      v84 = sub_252A32260();
      if (!v84)
      {
        goto LABEL_78;
      }

      v86 = v84;
      if (v84 >> 62)
      {
        v115 = v85;
        v116 = sub_252E378C4();
        v85 = v115;
        if (!v116)
        {
LABEL_77:

LABEL_78:
          v107 = MEMORY[0x277D84F90];
          if (v69)
          {
            v156 = MEMORY[0x277D84F90];
            if (v69 >> 62)
            {
LABEL_102:
              v117 = sub_252E378C4();
            }

            else
            {
              v117 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v118 = 0;
            while (v117 != v118)
            {
              if ((v69 & 0xC000000000000001) != 0)
              {
                v119 = MEMORY[0x2530ADF00](v118, v69);
              }

              else
              {
                if (v118 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_101;
                }

                v119 = *(v69 + 8 * v118 + 32);
              }

              v120 = v119;
              v121 = v118 + 1;
              if (__OFADD__(v118, 1))
              {
                __break(1u);
LABEL_101:
                __break(1u);
                goto LABEL_102;
              }

              v122 = sub_252DA124C(0);

              ++v118;
              if (v122)
              {
                MEMORY[0x2530AD700]();
                if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v123 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_252E372A4();
                }

                sub_252E372D4();
                v107 = v156;
                v118 = v121;
              }
            }

            v87 = 2;
          }

          else
          {
            v87 = 2;
          }

LABEL_94:
          type metadata accessor for HomeAutomationEntityResponses();
          v70 = swift_allocObject();
          *(v70 + 16) = 0;
          *(v70 + 24) = v107;

          v71 = sub_252A32ADC(v21, v69);

          if (v87 == 2)
          {
            v72 = 1;
          }

          else
          {
            v124 = *(v0 + 416);
            sub_252E37024();

            v72 = 0;
          }

LABEL_97:
          *(v0 + 535) = v71;
          *(v0 + 496) = v70;
          v125 = *(v0 + 272);
          (*(*(v0 + 392) + 56))(*(v0 + 416), v72, 1, *(v0 + 384));
          v126 = swift_task_alloc();
          *(v0 + 504) = v126;
          *v126 = v0;
          v126[1] = sub_252A2A818;
          v127 = *(v0 + 416);

          return sub_252D2715C(v70, v125, v127);
        }
      }

      else if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      v87 = v85 & 1;
      if (!v69)
      {

        v107 = MEMORY[0x277D84F90];
        goto LABEL_94;
      }

      v156 = MEMORY[0x277D84F90];
      v88 = v69 & 0xFFFFFFFFFFFFFF8;
      v142 = v21;
      if (v69 >> 62)
      {
        v89 = sub_252E378C4();
      }

      else
      {
        v89 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v90 = MEMORY[0x277D84F90];
      v139 = v87;
      if (!v89)
      {
        v106 = MEMORY[0x277D84F90];
LABEL_54:

        v156 = v90;
        if (v106 >> 62)
        {
          v108 = sub_252E378C4();
        }

        else
        {
          v108 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v109 = 0;
        v152 = MEMORY[0x277D84F90];
        while (v108 != v109)
        {
          if ((v106 & 0xC000000000000001) != 0)
          {
            v110 = MEMORY[0x2530ADF00](v109, v106);
          }

          else
          {
            if (v109 >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_71;
            }

            v110 = *(v106 + 8 * v109 + 32);
          }

          v111 = v110;
          v112 = v109 + 1;
          if (__OFADD__(v109, 1))
          {
            goto LABEL_70;
          }

          v113 = sub_252DA124C(0);

          ++v109;
          if (v113)
          {
            MEMORY[0x2530AD700]();
            if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v114 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_252E372A4();
            }

            sub_252E372D4();
            v152 = v156;
            v109 = v112;
          }
        }

        v21 = v142;
        v87 = v139;
        v107 = v152;
        goto LABEL_94;
      }

      v91 = 0;
      v148 = v69 & 0xC000000000000001;
      v151 = v86;
      v145 = v89;
      while (1)
      {
        if (v148)
        {
          v92 = MEMORY[0x2530ADF00](v91, v69);
        }

        else
        {
          if (v91 >= *(v88 + 16))
          {
            goto LABEL_73;
          }

          v92 = *(v69 + 8 * v91 + 32);
        }

        v93 = v92;
        v94 = v91 + 1;
        if (__OFADD__(v91, 1))
        {
          break;
        }

        v95 = v69;
        type metadata accessor for HomeEntityResponse.Builder();
        v96 = swift_allocObject();
        type metadata accessor for HomeEntity.Builder();
        inited = swift_initStackObject();
        *(inited + 16) = 0;
        *(inited + 24) = 0;
        *(inited + 32) = 7;
        *(inited + 40) = 0;
        *(inited + 48) = 0;
        v98 = MEMORY[0x277D84F90];
        *(inited + 56) = MEMORY[0x277D84F90];
        *(inited + 64) = 0u;
        *(inited + 80) = 0u;
        *(inited + 96) = 0u;
        *(inited + 112) = 0;
        *(inited + 120) = v98;
        v99 = sub_25294BCA8();
        swift_setDeallocating();
        HomeEntity.Builder.deinit();
        swift_deallocClassInstance();
        *(v96 + 16) = v99;
        *(v96 + 24) = v98;
        v100 = [v93 entity];
        if (v100)
        {
          v101 = *(v96 + 16);
          *(v96 + 16) = v100;
        }

        v102 = sub_252B4EF4C(v151);
        v103 = sub_25297D0C0(v102);

        (*(*v103 + 192))(v104);

        MEMORY[0x2530AD700]();
        v69 = v95;
        if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v105 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v91;
        if (v94 == v145)
        {
          v106 = v156;
          v90 = MEMORY[0x277D84F90];
          goto LABEL_54;
        }
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  v34 = *(v0 + 480);
  v135 = *(v0 + 456);
  v35 = *(v0 + 376);
  v153 = *(v0 + 368);
  v36 = *(v0 + 352);
  v37 = *(v0 + 360);
  v132 = v37;
  v38 = *(v0 + 344);
  v134 = *(v0 + 336);
  v39 = *(v0 + 320);
  v140 = *(v0 + 328);
  v137 = *(v0 + 312);
  v146 = *(v0 + 304);
  v129 = *(v0 + 296);
  v143 = *(v0 + 288);
  v149 = *(v0 + 280);
  v40 = *(v0 + 256);
  v41 = *(v36 + 48);
  type metadata accessor for AccessoriesCollectionDecorator();
  swift_allocObject();
  v42 = v40;
  v43 = sub_252C2436C(v42);
  sub_252A2E2C8(v42, 0, v34, v43, 0, v35);

  sub_252A2F9E8(v34, v43, v35 + v41);

  sub_252938414(v35, v153, &qword_27F541B58, &qword_252E41BE8);
  v133 = *(v36 + 48);
  sub_252938414(v35, v37, &qword_27F541B58, &qword_252E41BE8);
  v131 = *(v36 + 48);
  v44 = v140[5];
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v130 = v140[6];
  *(v0 + 528) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v45 = v140[9];
  v46 = type metadata accessor for IconConfiguration();
  (*(*(v46 - 8) + 56))(v39, 1, 1, v46);
  sub_252938414(v39, v137, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v39, &qword_27F541B50, &unk_252E47970);
  v128 = v140[10];
  v47 = sub_252E32CB4();
  (*(*(v47 - 8) + 56))(v129, 1, 1, v47);
  sub_252938414(v129, v143, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v129, &qword_27F540370, &qword_252E3C450);
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xE000000000000000;
  sub_252E330C4();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v48 - 8) + 8))(v38 + v44, v48);
  *(v0 + 232) = xmmword_252E41B90;
  sub_252E330C4();
  sub_252938414(v153, v39, &qword_27F541B50, &unk_252E47970);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  (*(*(v49 - 8) + 8))(v38 + v45, v49);
  sub_252938414(v39, v137, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v39, &qword_27F541B50, &unk_252E47970);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  (*(*(v50 - 8) + 8))(v38 + v130, v50);
  *(v0 + 529) = 2;
  sub_252E330C4();
  v51 = v140[7];
  *(v0 + 530) = 1;
  sub_252E330C4();
  sub_252938414(v132 + v131, v129, &qword_27F540370, &qword_252E3C450);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  (*(*(v52 - 8) + 8))(v38 + v128, v52);
  sub_252938414(v129, v143, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v129, &qword_27F540370, &qword_252E3C450);
  v53 = v140[8];
  *(v0 + 531) = 0;
  sub_252E330C4();
  v54 = v140[11];
  *(v0 + 532) = 1;
  sub_252E330C4();
  sub_25293847C(v132 + v131, &qword_27F540370, &qword_252E3C450);
  sub_25293847C(v153, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v132, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v153 + v133, &qword_27F540370, &qword_252E3C450);
  sub_252A31B70(v38, v134);
  v55 = sub_252E36AC4();
  v56 = sub_252E374C4();
  v57 = os_log_type_enabled(v55, v56);
  v58 = *(v0 + 480);
  v59 = *(v0 + 464);
  v60 = *(v0 + 376);
  v61 = *(v0 + 336);
  if (v57)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v156 = v63;
    *v62 = 136315138;
    v64 = CompletionSnippetModel.description.getter();
    v154 = v60;
    v66 = v65;
    sub_252A31BD4(v61);
    v67 = sub_252BE2CE0(v64, v66, &v156);

    *(v62 + 4) = v67;
    _os_log_impl(&dword_252917000, v55, v56, "Created Completion snippet model : %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x2530AED00](v63, -1, -1);
    MEMORY[0x2530AED00](v62, -1, -1);

    v68 = v154;
  }

  else
  {
    v73 = *(v0 + 464);

    sub_252A31BD4(v61);
    v68 = v60;
  }

  sub_25293847C(v68, &qword_27F541B58, &qword_252E41BE8);
  v74 = *(v0 + 440);
  v75 = *(v0 + 448);
  v76 = *(v0 + 424);
  v77 = *(v0 + 432);
  v78 = *(v0 + 408);
  v79 = *(v0 + 416);
  v80 = *(v0 + 400);
  v81 = *(v0 + 376);
  v136 = *(v0 + 368);
  v138 = *(v0 + 360);
  v141 = *(v0 + 336);
  v144 = *(v0 + 320);
  v147 = *(v0 + 312);
  v150 = *(v0 + 296);
  v155 = *(v0 + 288);
  sub_252A3314C(*(v0 + 344), *(v0 + 248), type metadata accessor for CompletionSnippetModel);
  sub_252E375C4();
  sub_252E36A74();
  (*(v77 + 8))(v74, v76);

  v82 = *(v0 + 8);

  return v82();
}

uint64_t sub_252A2A818(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 504);
  v5 = *(*v2 + 496);
  v6 = *(*v2 + 416);
  v9 = *v2;
  *(v3 + 512) = a1;
  *(v3 + 520) = v1;

  sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);

  if (v1)
  {
    v7 = sub_252A2B3F4;
  }

  else
  {
    v7 = sub_252A2A984;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252A2A984()
{
  v103 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 408);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);
  *(v0 + 533) = 3;
  sub_252E36374();
  sub_252E37024();

  v5 = sub_252E36304();
  v7 = v6;
  v8 = *(v4 + 8);
  v8(v2, v3);
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    sub_252E37174();
    v10 = sub_252E36FC4();
    v12 = v11;

    v86 = sub_252AD52A0(0xFuLL, 15, v10, v12, v5, v7);
    v14 = v13;

    v85 = v14;
  }

  else
  {
    v85 = v7;
    v86 = v5;
  }

  v15 = *(v0 + 512);
  v16 = *(v0 + 400);
  v17 = *(v0 + 384);
  *(v0 + 534) = 0;
  sub_252E36374();
  sub_252E37024();

  v18 = sub_252E36304();
  v20 = v19;
  v8(v16, v17);
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    sub_252E37174();
    v22 = sub_252E36FC4();
    v24 = v23;

    v18 = sub_252AD52A0(0xFuLL, 15, v22, v24, v18, v20);
    v26 = v25;

    v80 = v26;
  }

  else
  {
    v80 = v20;
  }

  v27 = *(v0 + 535);
  v28 = *(v0 + 512);
  v29 = *(v0 + 488);
  v81 = v18;
  if (v27 == 2)
  {
    v30 = sub_252A32CA4(v29);

    LOBYTE(v27) = v30 ^ 1;
  }

  else
  {
  }

  v31 = *(v0 + 496);
  v32 = *(v0 + 480);
  v84 = *(v0 + 456);
  v33 = *(v0 + 376);
  v99 = *(v0 + 368);
  v34 = *(v0 + 352);
  v95 = *(v0 + 360);
  v35 = *(v0 + 344);
  v83 = *(v0 + 336);
  v89 = *(v0 + 328);
  v75 = *(v0 + 320);
  v87 = *(v0 + 312);
  v93 = *(v0 + 304);
  v77 = *(v0 + 296);
  v91 = *(v0 + 288);
  v97 = *(v0 + 280);
  v36 = *(v0 + 256);
  v37 = *(v34 + 48);
  type metadata accessor for AccessoriesCollectionDecorator();
  swift_allocObject();
  v38 = v36;
  v39 = sub_252C2436C(v38);
  sub_252A2E2C8(v38, v27 & 1, v32, v39, v31, v33);

  sub_252A2F9E8(v32, v39, v33 + v37);

  sub_252938414(v33, v99, &qword_27F541B58, &qword_252E41BE8);
  v82 = *(v34 + 48);
  sub_252938414(v33, v95, &qword_27F541B58, &qword_252E41BE8);
  v79 = *(v34 + 48);
  v40 = v89[5];
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v78 = v89[6];
  *(v0 + 528) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v41 = v89[9];
  v42 = type metadata accessor for IconConfiguration();
  (*(*(v42 - 8) + 56))(v75, 1, 1, v42);
  sub_252938414(v75, v87, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v75, &qword_27F541B50, &unk_252E47970);
  v76 = v89[10];
  v43 = sub_252E32CB4();
  (*(*(v43 - 8) + 56))(v77, 1, 1, v43);
  sub_252938414(v77, v91, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v77, &qword_27F540370, &qword_252E3C450);
  *(v0 + 216) = v81;
  *(v0 + 224) = v80;
  sub_252E330C4();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v44 - 8) + 8))(v35 + v40, v44);
  *(v0 + 232) = v86;
  *(v0 + 240) = v85;
  sub_252E330C4();
  sub_252938414(v99, v75, &qword_27F541B50, &unk_252E47970);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  (*(*(v45 - 8) + 8))(v35 + v41, v45);
  sub_252938414(v75, v87, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v75, &qword_27F541B50, &unk_252E47970);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  (*(*(v46 - 8) + 8))(v35 + v78, v46);
  *(v0 + 529) = v27 & 1;
  sub_252E330C4();
  v47 = v89[7];
  *(v0 + 530) = 1;
  sub_252E330C4();
  sub_252938414(v95 + v79, v77, &qword_27F540370, &qword_252E3C450);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  (*(*(v48 - 8) + 8))(v35 + v76, v48);
  sub_252938414(v77, v91, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v77, &qword_27F540370, &qword_252E3C450);
  v49 = v89[8];
  *(v0 + 531) = 0;
  sub_252E330C4();
  v50 = v89[11];
  *(v0 + 532) = 1;
  sub_252E330C4();
  sub_25293847C(v95 + v79, &qword_27F540370, &qword_252E3C450);
  sub_25293847C(v99, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v95, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v99 + v82, &qword_27F540370, &qword_252E3C450);
  sub_252A31B70(v35, v83);
  v51 = sub_252E36AC4();
  v52 = sub_252E374C4();
  v53 = os_log_type_enabled(v51, v52);
  v54 = *(v0 + 480);
  v55 = *(v0 + 464);
  v56 = *(v0 + 376);
  v57 = *(v0 + 336);
  if (v53)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v102 = v59;
    *v58 = 136315138;
    v60 = CompletionSnippetModel.description.getter();
    v100 = v56;
    v62 = v61;
    sub_252A31BD4(v57);
    v63 = sub_252BE2CE0(v60, v62, &v102);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_252917000, v51, v52, "Created Completion snippet model : %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x2530AED00](v59, -1, -1);
    MEMORY[0x2530AED00](v58, -1, -1);

    v64 = v100;
  }

  else
  {

    sub_252A31BD4(v57);
    v64 = v56;
  }

  sub_25293847C(v64, &qword_27F541B58, &qword_252E41BE8);
  v65 = *(v0 + 440);
  v66 = *(v0 + 448);
  v67 = *(v0 + 424);
  v68 = *(v0 + 432);
  v69 = *(v0 + 408);
  v70 = *(v0 + 416);
  v71 = *(v0 + 400);
  v72 = *(v0 + 376);
  v88 = *(v0 + 368);
  v90 = *(v0 + 360);
  v92 = *(v0 + 336);
  v94 = *(v0 + 320);
  v96 = *(v0 + 312);
  v98 = *(v0 + 296);
  v101 = *(v0 + 288);
  sub_252A3314C(*(v0 + 344), *(v0 + 248), type metadata accessor for CompletionSnippetModel);
  sub_252E375C4();
  sub_252E36A74();
  (*(v68 + 8))(v65, v67);

  v73 = *(v0 + 8);

  return v73();
}

uint64_t sub_252A2B3F4()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 480);
  v3 = *(v0 + 464);
  v4 = *(v0 + 440);
  v5 = *(v0 + 448);
  v7 = *(v0 + 424);
  v6 = *(v0 + 432);
  v8 = *(v0 + 408);
  v9 = *(v0 + 416);
  v13 = *(v0 + 400);
  v14 = *(v0 + 376);
  v15 = *(v0 + 368);
  v16 = *(v0 + 360);
  v17 = *(v0 + 344);
  v18 = *(v0 + 336);
  v19 = *(v0 + 320);
  v20 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 288);

  sub_252E375C4();
  sub_252E36A74();
  (*(v6 + 8))(v4, v7);

  v10 = *(v0 + 8);
  v11 = *(v0 + 520);

  return v10();
}

uint64_t sub_252A2B5A4(uint64_t a1, uint64_t a2)
{
  v2[75] = a2;
  v2[74] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v2[76] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v2[79] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v7 = type metadata accessor for CompletionSnippetModel();
  v2[82] = v7;
  v8 = *(v7 - 8);
  v2[83] = v8;
  v9 = *(v8 + 64) + 15;
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B58, &qword_252E41BE8);
  v2[86] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v12 = sub_252E36324();
  v2[91] = v12;
  v13 = *(v12 - 8);
  v2[92] = v13;
  v14 = *(v13 + 64) + 15;
  v2[93] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v16 = sub_252E36AB4();
  v2[97] = v16;
  v17 = *(v16 - 8);
  v2[98] = v17;
  v18 = *(v17 + 64) + 15;
  v2[99] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A2B86C, 0, 0);
}

uint64_t sub_252A2B86C()
{
  v86 = v0;
  if (qword_27F53F648 != -1)
  {
LABEL_54:
    swift_once();
  }

  v1 = *(v0 + 792);
  v2 = qword_27F544FD0;
  *(v0 + 800) = qword_27F544FD0;
  v3 = v2;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 768);
  v5 = *(v0 + 736);
  v6 = *(v0 + 728);
  v7 = *(v0 + 600);
  v8 = sub_252E36AD4();
  *(v0 + 808) = __swift_project_value_buffer(v8, qword_27F544EB0);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000023;
  __dst[1] = 0x8000000252E728C0;
  v9 = [v7 description];
  v10 = sub_252E36F34();
  v12 = v11;

  MEMORY[0x2530AD570](v10, v12);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000072, 0x8000000252E72680);

  sub_25293DEE0(v0 + 16);
  memcpy(__dst, (v0 + 16), 0x1F8uLL);
  v13 = v7;
  v84 = sub_252953488(v7, __dst, 0);
  *(v0 + 816) = v84;

  type metadata accessor for ServiceCollectionDecorator();
  swift_allocObject();
  v14 = v13;
  v15 = sub_252B7DA9C(v14);
  *(v0 + 824) = v15;
  v16 = *(v5 + 56);
  v17 = 1;
  v16(v4, 1, 1, v6);
  v18 = *(v15 + 16);

  v19 = [v14 userTask];
  if (v19)
  {
    v20 = v19;
    v21 = sub_252A32CA4(v19);

    v17 = v21 ^ 1;
  }

  *(v0 + 887) = v17 & 1;
  v22 = *(v0 + 600);
  v80 = v18;
  if (sub_252C4D664(5))
  {
    v23 = [*(v0 + 600) filters];
    if (v23)
    {
      v24 = v23;
      type metadata accessor for HomeFilter();
      v25 = sub_252E37264();

      if (v25 >> 62)
      {
        v26 = sub_252E378C4();
        if (v26)
        {
LABEL_10:
          v78 = v16;
          v27 = 0;
          while (1)
          {
            if ((v25 & 0xC000000000000001) != 0)
            {
              v28 = MEMORY[0x2530ADF00](v27, v25);
            }

            else
            {
              if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_51;
              }

              v28 = *(v25 + 8 * v27 + 32);
            }

            v29 = v28;
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              __break(1u);
LABEL_51:
              __break(1u);
              goto LABEL_52;
            }

            v31 = [v28 isExcludeFilter];
            sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
            v32 = sub_252E37674();
            v33 = v32;
            if (!v31)
            {
              break;
            }

            v34 = sub_252E37694();

            if ((v34 & 1) == 0)
            {
              goto LABEL_47;
            }

            ++v27;
            if (v30 == v26)
            {
              v56 = 1;
              goto LABEL_59;
            }
          }

LABEL_47:

          v54 = [v29 homeEntityName];

          if (v54)
          {
            v55 = *(v0 + 760);
            sub_252E36F34();

            sub_252E37024();
            v56 = 0;
            goto LABEL_59;
          }

          v56 = 1;
          goto LABEL_60;
        }
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26)
        {
          goto LABEL_10;
        }
      }

      v56 = 1;
LABEL_59:
    }

    else
    {
      v56 = 1;
    }

LABEL_60:
    v57 = *(v0 + 768);
    v58 = *(v0 + 760);
    v59 = *(v0 + 728);
    sub_25293847C(v57, &qword_27F540298, &unk_252E3C270);
    v16(v58, v56, 1, v59);
    sub_25293DDF0(v58, v57, &qword_27F540298, &unk_252E3C270);
    goto LABEL_61;
  }

  if (v18 >> 62)
  {
    v35 = sub_252E378C4();
    if (!v35)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v35 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v35)
    {
LABEL_61:
      v82 = 0;
      goto LABEL_62;
    }
  }

  v36 = 0;
  v81 = v18 & 0xC000000000000001;
  v79 = v18 & 0xFFFFFFFFFFFFFF8;
  v37 = v18 + 32;
  while (1)
  {
    if (v81)
    {
      v38 = MEMORY[0x2530ADF00](v36, v80);
      v39 = __OFADD__(v36++, 1);
      if (v39)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v36 >= *(v79 + 16))
      {
        goto LABEL_53;
      }

      v38 = *(v37 + 8 * v36);

      v39 = __OFADD__(v36++, 1);
      if (v39)
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    if (qword_27F53F410 != -1)
    {
      swift_once();
    }

    v40 = qword_27F575A48;
    v41 = [*(v38 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v42 = sub_252E36F34();
    v44 = v43;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v45 = off_27F546230;
    if (*(off_27F546230 + 2) && (v46 = sub_252A44A10(v42, v44), (v47 & 1) != 0))
    {
      v48 = *(v45[7] + 8 * v46);
    }

    else
    {
      v48 = 0;
    }

    if (*(v40 + 16))
    {
      v49 = *(v40 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v48);
      v50 = sub_252E37F14();
      v51 = -1 << *(v40 + 32);
      v52 = v50 & ~v51;
      if ((*(v40 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
      {
        break;
      }
    }

LABEL_23:

    if (v36 == v35)
    {
      goto LABEL_61;
    }
  }

  v53 = ~v51;
  while (*(*(v40 + 48) + 8 * v52) != v48)
  {
    v52 = (v52 + 1) & v53;
    if (((*(v40 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v82 = 1;
LABEL_62:
  v60 = *(v0 + 768);
  v61 = *(v0 + 752);
  v62 = *(v0 + 736);
  v63 = *(v0 + 728);
  v64 = type metadata accessor for HomeAutomationEntityResponses();
  v65 = sub_25299DDFC(v80);
  *(v0 + 832) = v65;

  v66 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  *(v0 + 840) = *(v66 + 23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v67 = swift_allocObject();
  *(v0 + 848) = v67;
  *(v67 + 16) = xmmword_252E3EF80;
  *(v67 + 32) = 0xD000000000000012;
  *(v67 + 40) = 0x8000000252E728F0;
  sub_252938414(v60, v61, &qword_27F540298, &unk_252E3C270);
  v68 = (*(v62 + 48))(v61, 1, v63);
  v69 = *(v0 + 752);
  if (v68 == 1)
  {
    sub_25293847C(*(v0 + 752), &qword_27F540298, &unk_252E3C270);
    *(v67 + 48) = 0u;
    *(v67 + 64) = 0u;
  }

  else
  {
    v70 = *(v0 + 736);
    v71 = *(v0 + 728);
    *(v67 + 72) = v71;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v67 + 48));
    (*(v70 + 32))(boxed_opaque_existential_0, v69, v71);
  }

  *(v67 + 80) = 0x6572756365537369;
  *(v67 + 88) = 0xEF74736575716552;
  v73 = MEMORY[0x277D839B0];
  *(v67 + 96) = v82;
  *(v67 + 120) = v73;
  *(v67 + 128) = 0xD000000000000010;
  *(v67 + 136) = 0x8000000252E72940;
  *(v67 + 144) = v65;
  *(v67 + 168) = v64;
  strcpy((v67 + 176), "intentContext");
  *(v67 + 190) = -4864;
  *(v67 + 216) = type metadata accessor for HomeAutomationIntentContext(0);
  *(v67 + 192) = v84;
  v74 = *(MEMORY[0x277D55C68] + 4);
  v83 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);

  v75 = swift_task_alloc();
  *(v0 + 856) = v75;
  v76 = sub_252A331B4();
  *v75 = v0;
  v75[1] = sub_252A2C210;

  return v83(0xD000000000000022, 0x8000000252E72910, v67, &type metadata for HomeAutomationCATsSimple.RequestSentUILabelsDialogIds, v76);
}

uint64_t sub_252A2C210(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 856);
  v10 = *v2;
  v3[108] = a1;
  v3[109] = v1;

  if (v1)
  {
    v5 = sub_252A2CF4C;
  }

  else
  {
    v6 = v3[106];
    v7 = v3[104];
    v8 = v3[102];

    v5 = sub_252A2C348;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A2C348()
{
  v114 = v0;
  v1 = *(v0 + 864);
  v102 = *(v0 + 832);
  v99 = *(v0 + 887);
  v2 = *(v0 + 824);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  v8 = *(v0 + 688);
  v97 = *(v0 + 600);
  *(v0 + 880) = 0;
  sub_252E36374();
  sub_252E37024();

  v93 = sub_252E36304();
  v109 = v9;
  (*(v4 + 8))(v3, v5);
  *(v0 + 881) = 2;
  v95 = sub_252E36374();
  v106 = v10;
  v11 = *(v8 + 48);
  type metadata accessor for AccessoriesCollectionDecorator();
  swift_allocObject();
  v12 = v97;
  v13 = sub_252C2436C(v12);
  sub_252A2E2C8(v12, v99, v2, v13, v102, v6);

  sub_252A2F9E8(v2, v13, v6 + v11);

  sub_252938414(v6, v7, &qword_27F541B58, &qword_252E41BE8);
  v90 = v8;
  v14 = v7 + *(v8 + 48);
  v15 = type metadata accessor for IconConfiguration();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v7, 1, v15) == 1)
  {
    v17 = *(v0 + 808);
    v18 = *(v0 + 712);

    sub_25293847C(v14, &qword_27F540370, &qword_252E3C450);
    sub_25293847C(v18, &qword_27F541B50, &unk_252E47970);
    v19 = sub_252E36AC4();
    v20 = sub_252E374C4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_252917000, v19, v20, "Could not create completion model for prehandle", v21, 2u);
      MEMORY[0x2530AED00](v21, -1, -1);
    }

    v22 = *(v0 + 864);
    v23 = *(v0 + 840);
    v24 = *(v0 + 832);
    v25 = *(v0 + 824);
    v26 = *(v0 + 816);
    v27 = *(v0 + 768);
    v28 = *(v0 + 720);
    v29 = *(v0 + 664);
    v110 = *(v0 + 656);
    v30 = *(v0 + 592);

    sub_25293847C(v28, &qword_27F541B58, &qword_252E41BE8);
    sub_25293847C(v27, &qword_27F540298, &unk_252E3C270);
    (*(v29 + 56))(v30, 1, 1, v110);
  }

  else
  {
    v31 = *(v0 + 887);
    v87 = *(v0 + 808);
    v32 = *(v0 + 720);
    v33 = *(v0 + 704);
    v34 = *(v0 + 696);
    v35 = *(v0 + 680);
    v86 = *(v0 + 672);
    v36 = *(v0 + 656);
    v79 = *(v0 + 648);
    v88 = *(v0 + 640);
    v100 = *(v0 + 632);
    v80 = *(v0 + 624);
    v81 = *(v0 + 616);
    v103 = *(v0 + 608);
    sub_25293847C(*(v0 + 712), &qword_27F541B50, &unk_252E47970);
    sub_25293847C(v14, &qword_27F540370, &qword_252E3C450);
    v84 = (v31 & 1) == 0;
    sub_252938414(v32, v33, &qword_27F541B58, &qword_252E41BE8);
    v85 = *(v90 + 48);
    sub_252938414(v32, v34, &qword_27F541B58, &qword_252E41BE8);
    v91 = *(v90 + 48);
    v37 = v36[5];
    *(v0 + 544) = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    sub_252E330C4();
    v83 = v36[6];
    *(v0 + 882) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
    sub_252E330C4();
    v38 = v36[9];
    (*(v16 + 56))(v79, 1, 1, v15);
    sub_252938414(v79, v88, &qword_27F541B50, &unk_252E47970);
    sub_252E330C4();
    sub_25293847C(v79, &qword_27F541B50, &unk_252E47970);
    v82 = v36[10];
    v39 = sub_252E32CB4();
    (*(*(v39 - 8) + 56))(v80, 1, 1, v39);
    sub_252938414(v80, v81, &qword_27F540370, &qword_252E3C450);
    sub_252E330C4();
    sub_25293847C(v80, &qword_27F540370, &qword_252E3C450);
    *(v0 + 560) = v93;
    *(v0 + 568) = v109;
    sub_252E330C4();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    (*(*(v40 - 8) + 8))(v35 + v37, v40);
    *(v0 + 576) = v95;
    *(v0 + 584) = v106;
    sub_252E330C4();
    sub_252938414(v33, v79, &qword_27F541B50, &unk_252E47970);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
    (*(*(v41 - 8) + 8))(v35 + v38, v41);
    sub_252938414(v79, v88, &qword_27F541B50, &unk_252E47970);
    sub_252E330C4();
    sub_25293847C(v79, &qword_27F541B50, &unk_252E47970);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
    (*(*(v42 - 8) + 8))(v35 + v83, v42);
    *(v0 + 883) = v84;
    sub_252E330C4();
    v43 = v36[7];
    *(v0 + 884) = 1;
    sub_252E330C4();
    sub_252938414(v34 + v91, v80, &qword_27F540370, &qword_252E3C450);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
    (*(*(v44 - 8) + 8))(v35 + v82, v44);
    sub_252938414(v80, v81, &qword_27F540370, &qword_252E3C450);
    sub_252E330C4();
    sub_25293847C(v80, &qword_27F540370, &qword_252E3C450);
    v45 = v36[8];
    *(v0 + 885) = 1;
    sub_252E330C4();
    v46 = v36[11];
    *(v0 + 886) = 1;
    sub_252E330C4();
    sub_25293847C(v34 + v91, &qword_27F540370, &qword_252E3C450);
    sub_25293847C(v33, &qword_27F541B50, &unk_252E47970);
    sub_25293847C(v34, &qword_27F541B50, &unk_252E47970);
    sub_25293847C(v33 + v85, &qword_27F540370, &qword_252E3C450);
    sub_252A31B70(v35, v86);
    v47 = sub_252E36AC4();
    v48 = sub_252E374C4();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 864);
    v111 = *(v0 + 840);
    v51 = *(v0 + 832);
    v52 = *(v0 + 824);
    v53 = *(v0 + 816);
    v54 = *(v0 + 768);
    v55 = *(v0 + 720);
    v56 = *(v0 + 672);
    if (v49)
    {
      v107 = *(v0 + 768);
      v57 = swift_slowAlloc();
      v104 = v55;
      v58 = swift_slowAlloc();
      v113 = v58;
      *v57 = 136315138;
      v59 = CompletionSnippetModel.description.getter();
      v61 = v60;
      sub_252A31BD4(v56);
      v62 = sub_252BE2CE0(v59, v61, &v113);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_252917000, v47, v48, "Created Completion snippet model for prehandle: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x2530AED00](v58, -1, -1);
      MEMORY[0x2530AED00](v57, -1, -1);

      sub_25293847C(v104, &qword_27F541B58, &qword_252E41BE8);
      v63 = v107;
    }

    else
    {
      v64 = *(v0 + 832);

      sub_252A31BD4(v56);
      sub_25293847C(v55, &qword_27F541B58, &qword_252E41BE8);
      v63 = v54;
    }

    sub_25293847C(v63, &qword_27F540298, &unk_252E3C270);
    v65 = *(v0 + 664);
    v66 = *(v0 + 656);
    v67 = *(v0 + 592);
    sub_252A3314C(*(v0 + 680), v67, type metadata accessor for CompletionSnippetModel);
    (*(v65 + 56))(v67, 0, 1, v66);
  }

  v68 = *(v0 + 800);
  v69 = *(v0 + 792);
  v70 = *(v0 + 784);
  v71 = *(v0 + 776);
  v72 = *(v0 + 768);
  v73 = *(v0 + 760);
  v74 = *(v0 + 752);
  v75 = *(v0 + 744);
  v76 = *(v0 + 720);
  v89 = *(v0 + 712);
  v92 = *(v0 + 704);
  v94 = *(v0 + 696);
  v96 = *(v0 + 680);
  v98 = *(v0 + 672);
  v101 = *(v0 + 648);
  v105 = *(v0 + 640);
  v108 = *(v0 + 624);
  v112 = *(v0 + 616);
  sub_252E375C4();
  sub_252E36A74();
  (*(v70 + 8))(v69, v71);

  v77 = *(v0 + 8);

  return v77();
}

uint64_t sub_252A2CF4C()
{
  v1 = v0[106];
  v2 = v0[105];
  v3 = v0[104];
  v4 = v0[103];
  v5 = v0[102];
  v6 = v0[100];
  v7 = v0[99];
  v8 = v0[98];
  v9 = v0[97];
  v10 = v0[96];
  v14 = v0[95];
  v15 = v0[94];
  v16 = v0[93];
  v17 = v0[90];
  v18 = v0[89];
  v19 = v0[88];
  v20 = v0[87];
  v21 = v0[85];
  v22 = v0[84];
  v23 = v0[81];
  v24 = v0[80];
  v25 = v0[78];
  v26 = v0[77];

  sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
  sub_252E375C4();
  sub_252E36A74();
  (*(v8 + 8))(v7, v9);

  v11 = v0[1];
  v12 = v0[109];

  return v11();
}

uint64_t sub_252A2D160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v4[22] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v4[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v9 = type metadata accessor for CompletionSnippetModel();
  v4[28] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B58, &qword_252E41BE8);
  v4[31] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v13 = sub_252E36324();
  v4[35] = v13;
  v14 = *(v13 - 8);
  v4[36] = v14;
  v15 = *(v14 + 64) + 15;
  v4[37] = swift_task_alloc();
  v16 = sub_252E36AB4();
  v4[38] = v16;
  v17 = *(v16 - 8);
  v4[39] = v17;
  v18 = *(v17 + 64) + 15;
  v4[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A2D3A0, 0, 0);
}

uint64_t sub_252A2D3A0()
{
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v1 = v0[40];
  v2 = qword_27F544FD0;
  v0[41] = qword_27F544FD0;
  v3 = v2;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v7 = sub_252E36AD4();
  v0[42] = __swift_project_value_buffer(v7, qword_27F544EB0);
  sub_252E379F4();
  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E72870);
  v8 = [v6 description];
  v9 = sub_252E36F34();
  v11 = v10;

  MEMORY[0x2530AD570](v9, v11);

  MEMORY[0x2530AD570](0x6E6F707365522020, 0xEC000000203A6573);
  v0[17] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B90, &qword_252E41C08);
  sub_252E37AE4();
  sub_252CC3D90(v0[9], v0[10], 0xD000000000000072, 0x8000000252E72680);

  v12 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v0[43] = *(v12 + 23);

  type metadata accessor for ServiceCollectionDecorator();
  v0[44] = swift_initStackObject();
  v0[45] = sub_252B7DA9C(v6);
  v13 = swift_task_alloc();
  v0[46] = v13;
  *v13 = v0;
  v13[1] = sub_252A2D698;
  v14 = v0[20];

  return sub_252D2A56C(v14, 0, v4);
}

uint64_t sub_252A2D698(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v7 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v5 = sub_252A2E150;
  }

  else
  {
    v5 = sub_252A2D7AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A2D7AC()
{
  v96 = v0;
  v1 = [*(v0 + 152) userTask];
  if (v1)
  {
    v2 = v1;
    v3 = sub_252A32CA4(v1);

    v91 = v3 ^ 1;
  }

  else
  {
    v91 = 0;
  }

  v4 = *(v0 + 376);
  v5 = *(v0 + 360);
  v7 = *(v0 + 288);
  v6 = *(v0 + 296);
  v8 = *(v0 + 272);
  v9 = *(v0 + 280);
  v10 = *(v0 + 248);
  v85 = *(v0 + 152);
  v88 = *(v0 + 160);
  *(v0 + 392) = 0;
  sub_252E36374();
  sub_252E37024();

  v11 = sub_252E36304();
  v77 = v12;
  v78 = v11;
  v13 = *(v7 + 8);
  v13(v6, v9);
  *(v0 + 393) = 3;
  sub_252E36374();
  sub_252E37024();

  v14 = sub_252E36304();
  v75 = v15;
  v76 = v14;
  v13(v6, v9);
  v71 = v10;
  v16 = *(v10 + 48);
  type metadata accessor for AccessoriesCollectionDecorator();
  swift_allocObject();
  v17 = v85;
  v18 = sub_252C2436C(v17);
  sub_252A2E2C8(v17, v91 & 1, v5, v18, v88, v8);

  sub_252A2F9E8(v5, v18, v8 + v16);

  v19 = [v17 userTask];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 attribute];

    if (v21 == 67)
    {
      v22 = *(v0 + 152);
      v23 = sub_252C4D868();
      goto LABEL_9;
    }
  }

  else
  {
    v24 = *(v0 + 152);
    sub_252C515AC();
  }

  v23 = 1;
LABEL_9:
  v81 = *(v0 + 336);
  v25 = *(v0 + 272);
  v89 = *(v0 + 264);
  v26 = *(v0 + 256);
  v74 = v26;
  v27 = *(v0 + 240);
  v80 = *(v0 + 232);
  v29 = *(v0 + 216);
  v28 = *(v0 + 224);
  v83 = *(v0 + 208);
  v67 = *(v0 + 192);
  v68 = *(v0 + 200);
  v73 = v23 & 1;
  v86 = *(v0 + 184);
  v92 = *(v0 + 176);
  sub_252938414(v25, v89, &qword_27F541B58, &qword_252E41BE8);
  v79 = *(v71 + 48);
  sub_252938414(v25, v26, &qword_27F541B58, &qword_252E41BE8);
  v72 = *(v71 + 48);
  v30 = v28[5];
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v70 = v28[6];
  *(v0 + 394) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v66 = v28[9];
  v31 = type metadata accessor for IconConfiguration();
  (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
  sub_252938414(v29, v83, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v29, &qword_27F541B50, &unk_252E47970);
  v69 = v28[10];
  v32 = sub_252E32CB4();
  (*(*(v32 - 8) + 56))(v67, 1, 1, v32);
  sub_252938414(v67, v86, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v67, &qword_27F540370, &qword_252E3C450);
  *(v0 + 104) = v78;
  *(v0 + 112) = v77;
  sub_252E330C4();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v33 - 8) + 8))(v27 + v30, v33);
  *(v0 + 120) = v76;
  *(v0 + 128) = v75;
  sub_252E330C4();
  sub_252938414(v89, v29, &qword_27F541B50, &unk_252E47970);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  (*(*(v34 - 8) + 8))(v27 + v66, v34);
  sub_252938414(v29, v83, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v29, &qword_27F541B50, &unk_252E47970);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  (*(*(v35 - 8) + 8))(v27 + v70, v35);
  *(v0 + 395) = v73;
  sub_252E330C4();
  v36 = v28[7];
  *(v0 + 396) = 1;
  sub_252E330C4();
  sub_252938414(v74 + v72, v67, &qword_27F540370, &qword_252E3C450);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  (*(*(v37 - 8) + 8))(v27 + v69, v37);
  sub_252938414(v67, v86, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v67, &qword_27F540370, &qword_252E3C450);
  v38 = v28[8];
  *(v0 + 397) = 0;
  sub_252E330C4();
  v39 = v28[11];
  *(v0 + 398) = 0;
  sub_252E330C4();
  sub_25293847C(v74 + v72, &qword_27F540370, &qword_252E3C450);
  sub_25293847C(v89, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v74, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v89 + v79, &qword_27F540370, &qword_252E3C450);
  sub_252A31B70(v27, v80);
  v40 = sub_252E36AC4();
  v41 = sub_252E374C4();
  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v0 + 376);
  v44 = *(v0 + 360);
  v45 = *(v0 + 344);
  v46 = *(v0 + 272);
  v47 = *(v0 + 232);
  if (v42)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v95 = v49;
    *v48 = 136315138;
    v93 = v46;
    v50 = CompletionSnippetModel.description.getter();
    v52 = v51;
    sub_252A31BD4(v47);
    v53 = sub_252BE2CE0(v50, v52, &v95);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_252917000, v40, v41, "Created mode completion snippet model : %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x2530AED00](v49, -1, -1);
    MEMORY[0x2530AED00](v48, -1, -1);

    v54 = v93;
  }

  else
  {
    v55 = *(v0 + 376);

    sub_252A31BD4(v47);
    v54 = v46;
  }

  sub_25293847C(v54, &qword_27F541B58, &qword_252E41BE8);
  v56 = *(v0 + 320);
  v57 = *(v0 + 328);
  v58 = *(v0 + 304);
  v59 = *(v0 + 312);
  v60 = *(v0 + 296);
  v61 = *(v0 + 264);
  v62 = *(v0 + 272);
  v63 = *(v0 + 256);
  v82 = *(v0 + 232);
  v84 = *(v0 + 216);
  v87 = *(v0 + 208);
  v90 = *(v0 + 192);
  v94 = *(v0 + 184);
  sub_252A3314C(*(v0 + 240), *(v0 + 144), type metadata accessor for CompletionSnippetModel);
  sub_252E375C4();
  sub_252E36A74();
  (*(v59 + 8))(v56, v58);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_252A2E150()
{
  v1 = v0[45];
  v2 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[37];
  v8 = v0[33];
  v9 = v0[34];
  v10 = v0[32];
  v14 = v0[30];
  v15 = v0[29];
  v16 = v0[27];
  v17 = v0[26];
  v18 = v0[24];
  v19 = v0[23];

  sub_252E375C4();
  sub_252E36A74();
  (*(v6 + 8))(v4, v5);

  v11 = v0[1];
  v12 = v0[48];

  return v11();
}

uint64_t sub_252A2E2C8@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v126 = a5;
  LODWORD(v127) = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v115 - v12;
  v132 = type metadata accessor for IconConfiguration();
  v14 = *(v132 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v132);
  v17 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v130 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v129 = &v115 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v115 - v24;
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v26 = sub_252E36AD4();
  __swift_project_value_buffer(v26, qword_27F544EB0);
  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E727B0, 0xD000000000000072, 0x8000000252E72680);
  v131 = v25;
  sub_252A27E70(a1, v25);
  v27 = v14;
  if (sub_252B7DC00())
  {
    sub_252B7FE5C(&v135);
    v28 = *(&v135 + 1);
    if (*(&v135 + 1))
    {
      v29 = v135;
      v30 = v136;
      v31 = v137;
      v33 = v138;
      v32 = v139;
      if (v127)
      {

        v127 = v30;
        v124 = v31;
      }

      else
      {

        v127 = v29;
        v124 = v28;
      }

      sub_252938414(v131, v129, &qword_27F540068, &qword_252E3BC90);
      v34 = *(a3 + 16);
      if (v34 >> 62)
      {
        if (v34 < 0)
        {
          v113 = *(a3 + 16);
        }

        v53 = sub_252E378C4();
      }

      else
      {
        v53 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v128 = v27;
      v130 = v29;
      v125 = v33;
      v126 = v30;
      v123 = v28;
      v122 = v31;
      v121 = v32;
      if (!v53)
      {

        goto LABEL_26;
      }

      if ((v34 & 0xC000000000000001) == 0)
      {
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v54 = *(v34 + 32);

LABEL_22:
          v55 = [*(v54 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
          if (v55)
          {
            v56 = v55;
            v57 = type metadata accessor for Accessory();
            v58 = *(v57 + 48);
            v59 = *(v57 + 52);
            swift_allocObject();
            v60 = sub_252D4CE7C(v56);

            (*(*v60 + 256))(v61);

            HomeDeviceType.toSnippetHomeDeviceType()();
            v62 = v133;
LABEL_27:
            v120 = v62;
            v63 = v132;
            v117 = *(v132 + 20);
            v133 = 0;
            v134 = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
            sub_252E330C4();
            v64 = v63[6];
            LOBYTE(v133) = 0;
            sub_252E330C4();
            v119 = v63[9];
            LOBYTE(v133) = 48;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
            sub_252E330C4();
            v65 = v63[10];
            v133 = 0;
            v134 = 0;
            sub_252E330C4();
            v116 = v63[11];
            v133 = 0;
            v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
            sub_252E330C4();
            v66 = v63[12];
            v133 = 0;
            v134 = 0;
            sub_252E330C4();
            v67 = v63[13];
            v133 = 0;
            v134 = 0;
            sub_252E330C4();
            v68 = v63[14];
            v69 = type metadata accessor for DirectInvocationConfig();
            (*(*(v69 - 8) + 56))(a6 + v68, 1, 1, v69);
            v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
            v71 = *(*(v70 - 8) + 8);
            v71(a6 + v65, v70);
            v133 = 0;
            v134 = 0;
            sub_252E330C4();
            v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
            (*(*(v72 - 8) + 8))(a6 + v64, v72);
            LOBYTE(v133) = 0;
            sub_252E330C4();
            v73 = a6 + v68;
            v74 = v129;
            sub_25292D864(v129, v73);
            v133 = v127;
            v134 = v124;
            sub_252E330C4();
            v71(a6 + v117, v70);
            v133 = v125;
            v134 = v121;
            sub_252E330C4();
            v71(a6 + v66, v70);
            v133 = v126;
            v134 = v122;
            sub_252E330C4();
            v71(a6 + v67, v70);
            v133 = v130;
            v134 = v123;
            sub_252E330C4();
            v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
            (*(*(v75 - 8) + 8))(a6 + v116, v75);
            v133 = 0;
            sub_252E330C4();
            v76 = v132;
            v77 = *(v132 + 28);
            LOBYTE(v133) = 2;
            sub_252E330C4();
            v78 = *(v76 + 32);
            LOBYTE(v133) = 2;
            sub_252E330C4();
            LOBYTE(v133) = v120;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
            sub_252E330F4();
            sub_25293847C(&v135, &qword_27F541B80, &unk_252E4E7B0);
            sub_25293847C(v74, &qword_27F540068, &qword_252E3BC90);
            sub_25293847C(v131, &qword_27F540068, &qword_252E3BC90);
            return (*(v128 + 56))(a6, 0, 1, v76);
          }

LABEL_26:
          v62 = 48;
          goto LABEL_27;
        }

        __break(1u);
LABEL_50:
        v114 = sub_252E378C4();

        if (!v114)
        {
          goto LABEL_41;
        }

LABEL_39:
        v127 = 0x8000000252E727D0;
        sub_252938414(v30, v130, &qword_27F540068, &qword_252E3BC90);
        v86 = v132;
        v124 = *(v132 + 20);
        v135 = 0uLL;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
        sub_252E330C4();
        v123 = v86[6];
        LOBYTE(v135) = 0;
        sub_252E330C4();
        v129 = v86[9];
        LOBYTE(v135) = 48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
        sub_252E330C4();
        v87 = v86;
        v88 = v86[10];
        v135 = 0uLL;
        sub_252E330C4();
        v125 = v87[11];
        *&v135 = 0;
        v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
        sub_252E330C4();
        v89 = v87[12];
        v135 = 0uLL;
        sub_252E330C4();
        v90 = v87[13];
        v135 = 0uLL;
        sub_252E330C4();
        v91 = v87[14];
        v92 = type metadata accessor for DirectInvocationConfig();
        (*(*(v92 - 8) + 56))(a6 + v91, 1, 1, v92);
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
        v94 = *(*(v93 - 8) + 8);
        v94(a6 + v88, v93);
        v135 = 0uLL;
        sub_252E330C4();
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
        (*(*(v95 - 8) + 8))(a6 + v123, v95);
        LOBYTE(v135) = 0;
        sub_252E330C4();
        v96 = a6 + v91;
        v97 = v130;
        sub_25292D864(v130, v96);
        *&v135 = 0xD00000000000001FLL;
        *(&v135 + 1) = v127;
        sub_252E330C4();
        v94(a6 + v124, v93);
        v135 = xmmword_252E41BB0;
        sub_252E330C4();
        v94(a6 + v89, v93);
        v135 = 0uLL;
        sub_252E330C4();
        v94(a6 + v90, v93);
        v135 = 0uLL;
        sub_252E330C4();
        v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
        (*(*(v98 - 8) + 8))(a6 + v125, v98);
        *&v135 = 0;
        sub_252E330C4();
        v99 = v87[7];
        LOBYTE(v135) = 2;
        sub_252E330C4();
        v100 = v87[8];
        LOBYTE(v135) = 2;
        sub_252E330C4();
        LOBYTE(v135) = 48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
        sub_252E330F4();
        sub_25293847C(v97, &qword_27F540068, &qword_252E3BC90);
        sub_25293847C(v131, &qword_27F540068, &qword_252E3BC90);
        return (*(v128 + 56))(a6, 0, 1, v87);
      }

LABEL_48:

      v54 = MEMORY[0x2530ADF00](0, v34);

      goto LABEL_22;
    }
  }

  if ((sub_252C244D4() & 1) == 0)
  {
    goto LABEL_31;
  }

  v34 = *(a4 + 16);
  if (v34 >> 62)
  {
    if (v34 < 0)
    {
      v80 = *(a4 + 16);
    }

    if (!sub_252E378C4())
    {
      goto LABEL_31;
    }
  }

  else if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

  if ((v34 & 0xC000000000000001) != 0)
  {

    v35 = MEMORY[0x2530ADF00](0, v34);
  }

  else
  {
    if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_48;
    }

    v35 = *(v34 + 32);
  }

  v37 = (*(*v35 + 256))(v36);

  v27 = v14;
  if (v37 != 41)
  {
LABEL_31:
    v81 = a4;
    v30 = v131;
    sub_252A307E8(a1, v81, v131, v13);
    if ((*(v27 + 48))(v13, 1, v132) != 1)
    {
      sub_25293847C(v30, &qword_27F540068, &qword_252E3BC90);
      sub_252A3314C(v13, v17, type metadata accessor for IconConfiguration);
      sub_252A3314C(v17, a6, type metadata accessor for IconConfiguration);
      return (*(v27 + 56))(a6, 0, 1, v132);
    }

    sub_25293847C(v13, &qword_27F541B50, &unk_252E47970);
    sub_252C4D9D8();
    v128 = v27;
    if (v82 == 2)
    {

      if (!v126)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v83 = sub_252E37DB4();

      if ((v83 & 1) == 0 || !v126)
      {
        goto LABEL_41;
      }
    }

    v84 = sub_25299EEB4();
    if (v84 >> 62)
    {
      goto LABEL_50;
    }

    v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v85)
    {
      goto LABEL_39;
    }

LABEL_41:
    sub_252938414(v30, v130, &qword_27F540068, &qword_252E3BC90);
    v38 = v132;
    v125 = *(v132 + 20);
    v135 = 0uLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    sub_252E330C4();
    v124 = v38[6];
    LOBYTE(v135) = 0;
    sub_252E330C4();
    v129 = v38[9];
    LOBYTE(v135) = 48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
    sub_252E330C4();
    v101 = v38[10];
    v135 = 0uLL;
    sub_252E330C4();
    v126 = v38[11];
    *&v135 = 0;
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
    sub_252E330C4();
    v102 = v38[12];
    v135 = 0uLL;
    sub_252E330C4();
    v103 = v38[13];
    v135 = 0uLL;
    sub_252E330C4();
    v104 = v38[14];
    v105 = type metadata accessor for DirectInvocationConfig();
    (*(*(v105 - 8) + 56))(a6 + v104, 1, 1, v105);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    v107 = *(*(v106 - 8) + 8);
    v107(a6 + v101, v106);
    v135 = 0uLL;
    sub_252E330C4();
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
    (*(*(v108 - 8) + 8))(a6 + v124, v108);
    LOBYTE(v135) = 0;
    sub_252E330C4();
    v109 = a6 + v104;
    v48 = v130;
    sub_25292D864(v130, v109);
    *&v135 = 0x74696B656D6F68;
    *(&v135 + 1) = 0xE700000000000000;
    sub_252E330C4();
    v107(a6 + v125, v106);
    v135 = xmmword_252E41BB0;
    sub_252E330C4();
    v107(a6 + v102, v106);
    v135 = 0uLL;
    sub_252E330C4();
    v107(a6 + v103, v106);
    v135 = 0uLL;
    sub_252E330C4();
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
    (*(*(v110 - 8) + 8))(a6 + v126, v110);
    *&v135 = 0;
    sub_252E330C4();
    v111 = v38[7];
    LOBYTE(v135) = 2;
    sub_252E330C4();
    v112 = v38[8];
    LOBYTE(v135) = 2;
    sub_252E330C4();
    v52 = 48;
    goto LABEL_42;
  }

  sub_252938414(v131, v130, &qword_27F540068, &qword_252E3BC90);
  v38 = v132;
  v125 = *(v132 + 20);
  v135 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v124 = v38[6];
  LOBYTE(v135) = 0;
  sub_252E330C4();
  v129 = v38[9];
  LOBYTE(v135) = 48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
  sub_252E330C4();
  v39 = v38[10];
  v135 = 0uLL;
  sub_252E330C4();
  v126 = v38[11];
  *&v135 = 0;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
  sub_252E330C4();
  v40 = v38[12];
  v135 = 0uLL;
  sub_252E330C4();
  v41 = v38[13];
  v135 = 0uLL;
  sub_252E330C4();
  v128 = v27;
  v42 = v38[14];
  v43 = type metadata accessor for DirectInvocationConfig();
  (*(*(v43 - 8) + 56))(a6 + v42, 1, 1, v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  v45 = *(*(v44 - 8) + 8);
  v45(a6 + v39, v44);
  v135 = 0uLL;
  sub_252E330C4();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  (*(*(v46 - 8) + 8))(a6 + v124, v46);
  LOBYTE(v135) = 0;
  sub_252E330C4();
  v47 = a6 + v42;
  v48 = v130;
  sub_25292D864(v130, v47);
  strcpy(&v135, "appletv.fill");
  BYTE13(v135) = 0;
  HIWORD(v135) = -5120;
  sub_252E330C4();
  v45(a6 + v125, v44);
  v135 = xmmword_252E41BA0;
  sub_252E330C4();
  v45(a6 + v40, v44);
  v135 = 0uLL;
  sub_252E330C4();
  v45(a6 + v41, v44);
  v135 = 0uLL;
  sub_252E330C4();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  (*(*(v49 - 8) + 8))(a6 + v126, v49);
  *&v135 = 0;
  sub_252E330C4();
  v50 = v38[7];
  LOBYTE(v135) = 2;
  sub_252E330C4();
  v51 = v38[8];
  LOBYTE(v135) = 2;
  sub_252E330C4();
  v52 = 39;
LABEL_42:
  LOBYTE(v135) = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  sub_252E330F4();
  sub_25293847C(v48, &qword_27F540068, &qword_252E3BC90);
  sub_25293847C(v131, &qword_27F540068, &qword_252E3BC90);
  return (*(v128 + 56))(a6, 0, 1, v38);
}

uint64_t sub_252A2F9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v98 - v8;
  v10 = sub_252E32E84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544EB0);
  sub_252CC3D90(0xD000000000000020, 0x8000000252E72720, 0xD000000000000072, 0x8000000252E72680);
  if (sub_252B7E404())
  {
    v16 = *(a1 + 16);
    if (v16 >> 62)
    {
      if (v16 < 0)
      {
        v95 = *(a1 + 16);
      }

      if (sub_252E378C4())
      {
        goto LABEL_6;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v100 = a3;
      if ((v16 & 0xC000000000000001) != 0)
      {

        v17 = MEMORY[0x2530ADF00](0, v16);
      }

      else
      {
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_70:

          v75 = MEMORY[0x2530ADF00](0, v16);

LABEL_38:
          v76 = [*(v75 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
          if (!v76)
          {
            goto LABEL_42;
          }

          v77 = v76;
          v78 = type metadata accessor for Accessory();
          v79 = *(v78 + 48);
          v80 = *(v78 + 52);
          swift_allocObject();
          v81 = sub_252D4CE7C(v77);

          v82 = [*(v81 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
          if (v82)
          {
            v83 = v82;
            v84 = type metadata accessor for Home();
            v85 = *(v84 + 48);
            v86 = *(v84 + 52);
            swift_allocObject();
            v87 = sub_2529E65BC(v83);

            (*(v11 + 16))(v14, v87 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v10);

            v88 = sub_252E32E24();
            v90 = v89;
            (*(v11 + 8))(v14, v10);
          }

          else
          {
LABEL_42:

LABEL_43:
            v88 = 0;
            v90 = 0;
          }

          v91 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
          sub_252929E74((v91 + 16), v101);

          __swift_project_boxed_opaque_existential_1(v101, v102);
          v92 = sub_252E338C4();
          __swift_destroy_boxed_opaque_existential_1(v101);
          if ((v92 & 1) != 0 && v90)
          {
            sub_252A30F7C(v88, v90, 0, 0, 6u);
          }

          else
          {
            sub_252A31464(v88, v90, 0, 0, 6u, a3);
          }
        }

        v17 = *(v16 + 32);
      }

      v18 = [*(v17 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
      if (v18)
      {
        v19 = v18;
        v20 = type metadata accessor for Accessory();
        v21 = *(v20 + 48);
        v22 = *(v20 + 52);
        swift_allocObject();
        v23 = sub_252D4CE7C(v19);

        v24 = *(v11 + 16);
        v24(v14, v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v10);
        v99 = sub_252E32E24();
        v26 = v25;
        v27 = *(v11 + 8);
        v27(v14, v10);
        v28 = [*(v23 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
        if (v28)
        {
          v29 = v28;
          v30 = type metadata accessor for Home();
          v31 = *(v30 + 48);
          v32 = *(v30 + 52);
          swift_allocObject();
          v33 = sub_2529E65BC(v29);
          v24(v14, (v33 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier), v10);

          v34 = sub_252E32E24();
          v36 = v35;
          v27(v14, v10);
        }

        else
        {
          v34 = 0;
          v36 = 0;
        }

        v59 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
        sub_252929E74((v59 + 16), v101);

        __swift_project_boxed_opaque_existential_1(v101, v102);
        v60 = sub_252E338C4();
        __swift_destroy_boxed_opaque_existential_1(v101);
        if ((v60 & 1) != 0 && v36)
        {
          v61 = v99;
          v62 = v34;
          v63 = v36;
          v64 = v26;
          v65 = 2;
          goto LABEL_52;
        }

        v66 = v99;
        v67 = v100;
        v68 = v34;
        v69 = v36;
        v70 = v26;
        v71 = 2;
        goto LABEL_54;
      }

      a3 = v100;
    }
  }

  if ((sub_252B7EBB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v16 = *(a1 + 16);
  if (v16 >> 62)
  {
    if (v16 < 0)
    {
      v97 = *(a1 + 16);
    }

    result = sub_252E378C4();
    if (!result)
    {
      goto LABEL_30;
    }
  }

  else
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_30;
    }
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_72;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v38 = *(v16 + 32);

  while (1)
  {
    v39 = [*(v38 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
    if (v39)
    {
      break;
    }

LABEL_29:

LABEL_30:
    if (a2)
    {

      sub_252A303B4(v72, v9);

      v73 = sub_252E32CB4();
      v74 = *(v73 - 8);
      if ((*(v74 + 48))(v9, 1, v73) != 1)
      {
        (*(v74 + 32))(a3, v9, v73);
        return (*(v74 + 56))(a3, 0, 1, v73);
      }

      sub_25293847C(v9, &qword_27F540370, &qword_252E3C450);
    }

    v16 = *(a1 + 16);
    if (v16 >> 62)
    {
      if (v16 < 0)
      {
        v96 = *(a1 + 16);
      }

      if (!sub_252E378C4())
      {
        goto LABEL_43;
      }
    }

    else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      goto LABEL_70;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v75 = *(v16 + 32);

      goto LABEL_38;
    }

    __break(1u);
LABEL_72:

    v38 = MEMORY[0x2530ADF00](0, v16);
  }

  v40 = v39;
  v100 = a3;
  v41 = type metadata accessor for Accessory();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = sub_252D4CE7C(v40);

  v45 = [*(v44 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
  if (!v45)
  {
    a3 = v100;
    goto LABEL_29;
  }

  v46 = v45;
  v47 = type metadata accessor for Room();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = sub_2529A1E08(v46);

  v51 = *(v11 + 16);
  v51(v14, v50 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v10);
  v99 = sub_252E32E24();
  v53 = v52;
  v54 = *(v11 + 8);
  v54(v14, v10);
  v55 = sub_2529A2E84();
  if (v55)
  {
    v51(v14, v55 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v10);

    v56 = sub_252E32E24();
    v58 = v57;
    v54(v14, v10);
  }

  else
  {
    v56 = 0;
    v58 = 0;
  }

  v93 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v93 + 16), v101);

  __swift_project_boxed_opaque_existential_1(v101, v102);
  v94 = sub_252E338C4();
  __swift_destroy_boxed_opaque_existential_1(v101);
  if ((v94 & 1) == 0 || !v58)
  {
    v66 = v99;
    v67 = v100;
    v68 = v56;
    v69 = v58;
    v70 = v53;
    v71 = 0;
LABEL_54:
    sub_252A31464(v68, v69, v66, v70, v71, v67);
  }

  v61 = v99;
  v62 = v56;
  v63 = v58;
  v64 = v53;
  v65 = 0;
LABEL_52:
  sub_252A30F7C(v62, v63, v61, v64, v65);
}

uint64_t sub_252A303B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v34[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_252C244D4() & 1) == 0 || (sub_252C244D4() & 1) == 0)
  {
    goto LABEL_29;
  }

  v9 = *(a1 + 16);
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v30 = *(a1 + 16);
    }

    if (!sub_252E378C4())
    {
      goto LABEL_29;
    }
  }

  else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {

    v10 = MEMORY[0x2530ADF00](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_28:
      result = sub_252E378C4();
      if (result)
      {
        goto LABEL_11;
      }

LABEL_29:
      v31 = sub_252E32CB4();
      v32 = *(*(v31 - 8) + 56);

      return v32(a2, 1, 1, v31);
    }

    v10 = *(v9 + 32);
  }

  v12 = (*(*v10 + 256))(v11);

  if (v12 != 46)
  {
    goto LABEL_29;
  }

  v9 = *(a1 + 16);
  if (v9 >> 62)
  {
    goto LABEL_28;
  }

  result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_29;
  }

LABEL_11:
  if ((v9 & 0xC000000000000001) != 0)
  {

    v14 = MEMORY[0x2530ADF00](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v14 = *(v9 + 32);
  }

  v15 = v5[2];
  v15(v8, v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v4);
  v33 = sub_252E32E24();
  v17 = v16;
  v18 = v5[1];
  v18(v8, v4);
  v19 = [*(v14 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
  if (v19)
  {
    v20 = v19;
    v21 = type metadata accessor for Home();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = sub_2529E65BC(v20);
    v15(v8, v24 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v4);

    v25 = sub_252E32E24();
    v27 = v26;
    v18(v8, v4);
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v28 + 16), v34);

  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  v29 = sub_252E338C4();
  __swift_destroy_boxed_opaque_existential_1(v34);
  if ((v29 & 1) != 0 && v27)
  {
    sub_252A30F7C(v25, v27, v33, v17, 2u);
  }

  else
  {
    sub_252A31464(v25, v27, v33, v17, 2u, a2);
  }
}

uint64_t sub_252A307E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v39 - v14;
  if ((sub_252C244D4() & 1) == 0 || (sub_252C244D4() & 1) == 0)
  {
    goto LABEL_25;
  }

  v16 = *(a2 + 16);
  if (v16 >> 62)
  {
    if (v16 < 0)
    {
      v36 = *(a2 + 16);
    }

    if (!sub_252E378C4())
    {
      goto LABEL_25;
    }
  }

  else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_25;
  }

  if ((v16 & 0xC000000000000001) != 0)
  {

    v17 = MEMORY[0x2530ADF00](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_30:
      v20 = sub_252E378C4();
      goto LABEL_15;
    }

    v17 = *(v16 + 32);
  }

  v19 = (*(*v17 + 256))(v18);

  if (v19 != 46 || (sub_252C248B0(&v56), (v4 = *(&v56 + 1)) == 0))
  {
LABEL_25:
    v37 = type metadata accessor for IconConfiguration();
    v38 = *(*(v37 - 8) + 56);

    return v38(a4, 1, 1, v37);
  }

  v6 = v56;
  v7 = v57;
  v5 = v58;
  v50 = v59;
  v53 = v60;
  if (sub_252C4D868())
  {

    a1 = v7;
    v48 = v5;
  }

  else
  {

    a1 = v6;
    v48 = v4;
  }

  sub_252938414(a3, v15, &qword_27F540068, &qword_252E3BC90);
  v16 = *(a2 + 16);
  if (v16 >> 62)
  {
    goto LABEL_30;
  }

  v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
  v51 = v7;
  v52 = v6;
  v49 = a1;
  v46 = v5;
  v47 = v4;
  if (!v20)
  {

    v24 = 48;
    goto LABEL_21;
  }

  if ((v16 & 0xC000000000000001) != 0)
  {

    v22 = MEMORY[0x2530ADF00](0, v16);

    goto LABEL_19;
  }

  result = v53;
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v16 + 32);

LABEL_19:
    (*(*v22 + 256))(v23);

    HomeDeviceType.toSnippetHomeDeviceType()();
    v24 = v54;
LABEL_21:
    v45 = v24;
    v25 = type metadata accessor for IconConfiguration();
    v42 = v25[5];
    v54 = 0;
    v55 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    sub_252E330C4();
    v40 = v25[6];
    LOBYTE(v54) = 0;
    sub_252E330C4();
    v44 = v25[9];
    LOBYTE(v54) = 48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
    sub_252E330C4();
    v26 = v25[10];
    v54 = 0;
    v55 = 0;
    sub_252E330C4();
    v41 = v25[11];
    v54 = 0;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
    sub_252E330C4();
    v27 = v25[12];
    v54 = 0;
    v55 = 0;
    sub_252E330C4();
    v39 = v25[13];
    v54 = 0;
    v55 = 0;
    sub_252E330C4();
    v28 = v25[14];
    v29 = type metadata accessor for DirectInvocationConfig();
    (*(*(v29 - 8) + 56))(a4 + v28, 1, 1, v29);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    v31 = *(*(v30 - 8) + 8);
    v31(a4 + v26, v30);
    v54 = 0;
    v55 = 0;
    sub_252E330C4();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
    (*(*(v32 - 8) + 8))(a4 + v40, v32);
    LOBYTE(v54) = 0;
    sub_252E330C4();
    sub_25292D864(v15, a4 + v28);
    v54 = v49;
    v55 = v48;
    sub_252E330C4();
    v31(a4 + v42, v30);
    v54 = v50;
    v55 = v53;
    sub_252E330C4();
    v31(a4 + v27, v30);
    v54 = v51;
    v55 = v46;
    sub_252E330C4();
    v31(a4 + v39, v30);
    v54 = v52;
    v55 = v47;
    sub_252E330C4();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
    (*(*(v33 - 8) + 8))(a4 + v41, v33);
    v54 = 0;
    sub_252E330C4();
    v34 = v25[7];
    LOBYTE(v54) = 2;
    sub_252E330C4();
    v35 = v25[8];
    LOBYTE(v54) = 2;
    sub_252E330C4();
    LOBYTE(v54) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
    sub_252E330F4();
    sub_25293847C(&v56, &qword_27F541B80, &unk_252E4E7B0);
    sub_25293847C(v15, &qword_27F540068, &qword_252E3BC90);
    return (*(*(v25 - 1) + 56))(a4, 0, 1, v25);
  }

  __break(1u);
  return result;
}

uint64_t sub_252A30F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 2u)
  {
    if (!a5)
    {
      sub_252E379F4();

      v32 = 0xD00000000000001ALL;
      v33 = 0x8000000252E72770;
      MEMORY[0x2530AD570](a1, a2);
      v10 = 29222;
      goto LABEL_19;
    }

    if (a5 != 1)
    {
      sub_252E379F4();

      v32 = 0xD00000000000001ALL;
      v33 = 0x8000000252E72790;
      MEMORY[0x2530AD570](a1, a2);
      v17 = 0x6F73736563636126;
      v18 = 0xED00003D64697972;
      goto LABEL_21;
    }

LABEL_7:
    sub_252E379F4();

    v32 = 0xD000000000000014;
    v33 = 0x8000000252E72750;
    MEMORY[0x2530AD570](a1, a2);
    MEMORY[0x2530AD570](38, 0xE100000000000000);
    v11 = 0xE400000000000000;
    v12 = 1701670760;
    v13 = 0xE700000000000000;
    v14 = 0x72656767697274;
    if (a5 != 3)
    {
      v14 = 0x6172656D6163;
      v13 = 0xE600000000000000;
    }

    if (a5 != 1)
    {
      v12 = 0x726F737365636361;
      v11 = 0xE900000000000079;
    }

    if (a5 <= 2u)
    {
      v15 = v12;
    }

    else
    {
      v15 = v14;
    }

    if (a5 <= 2u)
    {
      v16 = v11;
    }

    else
    {
      v16 = v13;
    }

    MEMORY[0x2530AD570](v15, v16);

    v17 = 4023401;
    v18 = 0xE300000000000000;
    goto LABEL_21;
  }

  if (a5 - 3 < 2)
  {
    goto LABEL_7;
  }

  if (a5 == 5)
  {
    sub_252E379F4();

    v32 = 0xD00000000000001ALL;
    v33 = 0x8000000252E72770;
    MEMORY[0x2530AD570](a1, a2);
    v10 = 24870;
LABEL_19:
    v17 = v10 & 0xFFFF00000000FFFFLL | 0x3D64690000;
    v18 = 0xE500000000000000;
LABEL_21:
    MEMORY[0x2530AD570](v17, v18);
    MEMORY[0x2530AD570](a3, a4);
    v20 = v32;
    v19 = v33;

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544D18);

    v22 = sub_252E36AC4();
    v23 = sub_252E374C4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315138;
      v26 = sub_252BE2CE0(v20, v19, &v32);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_252917000, v22, v23, "Generated link: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x2530AED00](v25, -1, -1);
      MEMORY[0x2530AED00](v24, -1, -1);
    }

    else
    {
    }

    goto LABEL_27;
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v28 = sub_252E36AD4();
  __swift_project_value_buffer(v28, qword_27F544D18);
  v29 = sub_252E36AC4();
  v30 = sub_252E374C4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_252917000, v29, v30, "Returning default link", v31, 2u);
    MEMORY[0x2530AED00](v31, -1, -1);
  }

  v32 = 0xD000000000000014;
  v33 = 0x8000000252E72750;
  MEMORY[0x2530AD570](a1, a2);
LABEL_27:
  sub_252E32CA4();
}

uint64_t sub_252A31464@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  v12 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v13 = sub_252A31A94(0x6C7070612E6D6F63, 0xEE00656D6F482E65, 0);
  v14 = [v13 applicationState];

  LOBYTE(v13) = [v14 isInstalled];
  if (v13)
  {
    strcpy(v42, "com.apple.Home");
    HIBYTE(v42[1]) = -18;
    MEMORY[0x2530AD570](0x40252F40252F2F3ALL, 0xE800000000000000);
    if (a5 >= 5u)
    {
      if (a5 == 5)
      {

        strcpy(v42, "com.apple.Home");
        HIBYTE(v42[1]) = -18;
        MEMORY[0x2530AD570](0x2F656D6F682F2F3ALL, 0xE800000000000000);
        if (a2)
        {
          v37 = a2;
        }

        else
        {
          a1 = 0;
          v37 = 0xE000000000000000;
        }

        MEMORY[0x2530AD570](a1, v37);
      }

      else
      {

        if (qword_27F53F558 != -1)
        {
          swift_once();
        }

        v38 = sub_252E36AD4();
        __swift_project_value_buffer(v38, qword_27F544EB0);
        v39 = sub_252E36AC4();
        v40 = sub_252E374C4();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_252917000, v39, v40, "Returning default link", v41, 2u);
          MEMORY[0x2530AED00](v41, -1, -1);
        }

        strcpy(v42, "com.apple.Home");
        HIBYTE(v42[1]) = -18;
        MEMORY[0x2530AD570](0x656D6F682F2F3ALL, 0xE700000000000000);
      }

      sub_252E32CA4();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_252E3C3C0;
      v16 = 1836019570;
      v42[0] = 0;
      v42[1] = 0xE000000000000000;
      v17 = 0xE900000000000079;
      v18 = 0x726F737365636361;
      v19 = 0xE700000000000000;
      v20 = 0x72656767697274;
      if (a5 != 3)
      {
        v20 = 0x6172656D6163;
        v19 = 0xE600000000000000;
      }

      if (a5 != 2)
      {
        v18 = v20;
        v17 = v19;
      }

      if (a5)
      {
        v16 = 1701670760;
      }

      if (a5 <= 1u)
      {
        v21 = v16;
      }

      else
      {
        v21 = v18;
      }

      if (a5 <= 1u)
      {
        v22 = 0xE400000000000000;
      }

      else
      {
        v22 = v17;
      }

      MEMORY[0x2530AD570](v21, v22);

      v23 = v42[0];
      v24 = v42[1];
      v25 = MEMORY[0x277D837D0];
      *(v15 + 56) = MEMORY[0x277D837D0];
      v26 = sub_252987BC8();
      *(v15 + 32) = v23;
      *(v15 + 40) = v24;
      *(v15 + 96) = v25;
      *(v15 + 104) = v26;
      *(v15 + 64) = v26;
      *(v15 + 72) = a3;
      *(v15 + 80) = a4;
      sub_252A33134(a3, a4, a5);
      v27 = sub_252E36F64();
      v29 = v28;

      if (qword_27F53F558 != -1)
      {
        swift_once();
      }

      v30 = sub_252E36AD4();
      __swift_project_value_buffer(v30, qword_27F544EB0);

      v31 = sub_252E36AC4();
      v32 = sub_252E374C4();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v42[0] = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_252BE2CE0(v27, v29, v42);
        _os_log_impl(&dword_252917000, v31, v32, "Generated link: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x2530AED00](v34, -1, -1);
        MEMORY[0x2530AED00](v33, -1, -1);
      }

      sub_252E32CA4();
    }
  }

  else
  {
    v35 = sub_252E32CB4();
    return (*(*(v35 - 8) + 56))(a6, 1, 1, v35);
  }
}

id sub_252A31A94(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_252E36F04();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_252E32C54();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_252A31B70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompletionSnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A31BD4(uint64_t a1)
{
  v2 = type metadata accessor for CompletionSnippetModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_252A31C30(void *a1)
{
  v2 = [a1 attribute];
  type metadata accessor for MutableHomeUserTask();
  swift_initStackObject();
  v3 = a1;
  v4 = sub_252D6CA80(v3);
  swift_beginAccess();
  v5 = v4[4];
  if (v5)
  {
    v6 = *(v5 + 16);
    if (v2 <= 9)
    {
      goto LABEL_3;
    }

LABEL_10:
    if (v2 <= 12)
    {
      if (v2 != 10)
      {
        if (v2 == 11)
        {
LABEL_26:
          v4[3] = 27;
          v10 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());

          v11 = sub_252E36F04();
          v12 = [v10 initWithIdentifier:0 displayString:v11];

          v13 = v12;
          [v13 setBoolValue_];
LABEL_27:
          [v13 setType_];

          type metadata accessor for MutableAttributeValue();
          swift_allocObject();
          v14 = sub_252D6CC80(v13);

          v5 = v14;
LABEL_64:
          v42 = v4[4];
          v4[4] = v5;

          v39 = sub_252D6CB58();

          goto LABEL_65;
        }

        goto LABEL_52;
      }
    }

    else
    {
      if (v2 == 13)
      {
        if (v5 && (v15 = *(v5 + 56)) != 0)
        {
          v16 = *(v5 + 48);
          v17 = v4[4];
        }

        else
        {
          v27 = v4[4];

          v16 = 0;
          v15 = 0xE000000000000000;
        }

        v48[0] = v16;
        v48[1] = v15;
        MEMORY[0x28223BE20](v18);
        v47[2] = v48;
        v28 = sub_2529ED970(sub_25296A724, v47, &unk_2864A7120);
        swift_arrayDestroy();

        if (v28)
        {
          if (!v5)
          {
            goto LABEL_52;
          }

          v29 = *(v5 + 56);
          v30 = xmmword_252E41BD0;
        }

        else
        {
          if (!v5)
          {
            goto LABEL_52;
          }

          v31 = *(v5 + 56);
          v30 = xmmword_252E41BC0;
        }

        *(v5 + 48) = v30;

        goto LABEL_51;
      }

      if (v2 != 16)
      {
        if (v2 != 27)
        {
          goto LABEL_52;
        }

        v8 = v4[4];

        if ([v3 taskType] != 6)
        {
          if (v5)
          {
            v40 = *(v5 + 24) ^ 1;
          }

          else
          {
            v40 = 0;
          }

          v44 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
          v45 = sub_252E36F04();
          v46 = [v44 initWithIdentifier:0 displayString:v45];

          v13 = v46;
          [v13 setBoolValue_];
          goto LABEL_27;
        }

        if (!v5)
        {
          goto LABEL_52;
        }

LABEL_51:

        goto LABEL_64;
      }
    }

LABEL_28:
    if (!v5)
    {
      goto LABEL_52;
    }

    if (v6 == 2)
    {
      v19 = 0.0;
      if (*(v5 + 32) == 0.0)
      {
        v19 = 1.0;
      }

      *(v5 + 32) = v19;
      goto LABEL_63;
    }

    if (v6 == 4)
    {
      v9 = *(v5 + 40) == 0;
      goto LABEL_32;
    }

    v20 = *(v5 + 24);
    v21 = qword_27F53F558;
    v22 = v4[4];

    if (v21 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544EB0);
    v24 = sub_252E36AC4();
    v25 = sub_252E374C4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 67109120;
      *(v26 + 4) = v20;
      _os_log_impl(&dword_252917000, v24, v25, "Inverting BOOLean value: %{BOOL}d", v26, 8u);
      MEMORY[0x2530AED00](v26, -1, -1);
    }

    *(v5 + 24) = v20 ^ 1;
    goto LABEL_51;
  }

  v6 = 0;
  if (v2 > 9)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v2 <= 7)
  {
    if ((v2 - 2) >= 2 && v2 != 5)
    {
      goto LABEL_52;
    }

    goto LABEL_26;
  }

  if (v2 == 8)
  {
    goto LABEL_28;
  }

  if (v5)
  {
    if (v6 == 2)
    {
      v41 = 100.0;
      if (*(v5 + 32) != 0.0)
      {
        v41 = 0.0;
      }

      *(v5 + 32) = v41;
      goto LABEL_63;
    }

    if (v6 != 4)
    {
      *(v5 + 24) = (*(v5 + 24) & 1) == 0;
      goto LABEL_63;
    }

    v9 = 100;
    if (*(v5 + 40))
    {
      v9 = 0;
    }

LABEL_32:
    *(v5 + 40) = v9;
LABEL_63:
    swift_retain_n();
    goto LABEL_64;
  }

LABEL_52:
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v32 = sub_252E36AD4();
  __swift_project_value_buffer(v32, qword_27F544EB0);
  v33 = v3;
  v34 = sub_252E36AC4();
  v35 = sub_252E374D4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v33;
    *v37 = v33;
    v38 = v33;
    _os_log_impl(&dword_252917000, v34, v35, "Failed to invert the task for directInvocation: %@", v36, 0xCu);
    sub_25293847C(v37, &qword_27F541B78, &qword_252E4A340);
    MEMORY[0x2530AED00](v37, -1, -1);
    MEMORY[0x2530AED00](v36, -1, -1);
  }

  v39 = sub_252D6CB58();
LABEL_65:

  return v39;
}

unint64_t sub_252A32260()
{
  if ((sub_252B7DC00() & 1) == 0 || !sub_252B80338())
  {
    return 0;
  }

  result = sub_252B8048C();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v3 = sub_252E378C4();
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_64:

    return 0;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_64;
  }

LABEL_6:
  v4 = v1 & 0xC000000000000001;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2530ADF00](0, v1);
  }

  else
  {
    if (!*(v2 + 16))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v5 = *(v1 + 32);
  }

  v6 = v5;
  if (sub_252B7F858(1))
  {
    v78 = v6;
    v7 = [v6 userTask];
    if (v7)
    {
      v8 = v7;
      v9 = COERCE_DOUBLE(sub_2529C7370());
      v11 = v10;

      if ((v11 & 1) == 0 && (*&v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v12 = 0;
        v13 = v9;
        while (v3 != v12)
        {
          if (v4)
          {
            v14 = MEMORY[0x2530ADF00](v12, v1);
          }

          else
          {
            if (v12 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_73;
            }

            v14 = *(v1 + 8 * v12 + 32);
          }

          v15 = v14;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_69;
          }

          v16 = [v14 userTask];
          if (!v16 || (v17 = v16, v18 = [v16 attribute], v17, v18 != 2) || (v19 = objc_msgSend(v15, sel_userTask)) == 0)
          {

            goto LABEL_44;
          }

          v20 = v19;
          v21 = COERCE_DOUBLE(sub_2529C7370());
          v23 = v22;

          if ((v23 & 1) == 0)
          {
            ++v12;
            if (v21 == v13)
            {
              continue;
            }
          }

          goto LABEL_44;
        }

        if (qword_27F53F558 != -1)
        {
          goto LABEL_75;
        }

        goto LABEL_55;
      }
    }

LABEL_44:
    if (qword_27F53F558 == -1)
    {
LABEL_45:
      v41 = sub_252E36AD4();
      __swift_project_value_buffer(v41, qword_27F544EB0);

      v42 = sub_252E36AC4();
      v43 = sub_252E374C4();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v79 = v45;
        *v44 = 136315138;
        v46 = type metadata accessor for HomeUserTaskResponse();
        v47 = MEMORY[0x2530AD730](v1, v46);
        v49 = v48;

        v50 = sub_252BE2CE0(v47, v49, &v79);

        *(v44 + 4) = v50;
        v51 = "Not all services at the same brightness levels: %s";
LABEL_51:
        _os_log_impl(&dword_252917000, v42, v43, v51, v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x2530AED00](v45, -1, -1);
        MEMORY[0x2530AED00](v44, -1, -1);
LABEL_53:

        return 0;
      }

      goto LABEL_52;
    }

LABEL_71:
    swift_once();
    goto LABEL_45;
  }

  if ((sub_252B7F858(5) & 1) == 0)
  {

    return 0;
  }

  v78 = v6;
  v24 = [v6 userTask];
  if (!v24 || (v25 = v24, v26 = COERCE_DOUBLE(sub_2529C7370()), v28 = v27, v25, (v28 & 1) != 0))
  {
LABEL_48:
    if (qword_27F53F558 != -1)
    {
LABEL_73:
      swift_once();
    }

    v52 = sub_252E36AD4();
    __swift_project_value_buffer(v52, qword_27F544EB0);

    v42 = sub_252E36AC4();
    v43 = sub_252E374C4();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v79 = v45;
      *v44 = 136315138;
      v53 = type metadata accessor for HomeUserTaskResponse();
      v54 = MEMORY[0x2530AD730](v1, v53);
      v56 = v55;

      v57 = sub_252BE2CE0(v54, v56, &v79);

      *(v44 + 4) = v57;
      v51 = "Not all services at the same speed levels: %s";
      goto LABEL_51;
    }

LABEL_52:

    goto LABEL_53;
  }

  v29 = 0;
  v30 = v26;
  while (1)
  {
    if (v3 == v29)
    {

      if (qword_27F53F558 != -1)
      {
        swift_once();
      }

      v69 = sub_252E36AD4();
      __swift_project_value_buffer(v69, qword_27F544EB0);
      v59 = v78;
      v60 = sub_252E36AC4();
      v70 = sub_252E374C4();

      if (os_log_type_enabled(v60, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v79 = v72;
        *v71 = 136315138;
        v73 = [v59 description];
        v74 = sub_252E36F34();
        v76 = v75;

        v77 = sub_252BE2CE0(v74, v76, &v79);

        *(v71 + 4) = v77;
        _os_log_impl(&dword_252917000, v60, v70, "Found all services at same %s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v72);
        MEMORY[0x2530AED00](v72, -1, -1);
        MEMORY[0x2530AED00](v71, -1, -1);
      }

      goto LABEL_57;
    }

    if (v4)
    {
      v31 = MEMORY[0x2530ADF00](v29, v1);
      goto LABEL_35;
    }

    if (v29 >= *(v2 + 16))
    {
      break;
    }

    v31 = *(v1 + 8 * v29 + 32);
LABEL_35:
    v32 = v31;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_70;
    }

    v33 = [v31 userTask];
    if (!v33 || (v34 = v33, v35 = [v33 attribute], v34, v35 != 11) || (v36 = objc_msgSend(v32, sel_userTask)) == 0)
    {

      goto LABEL_48;
    }

    v37 = v36;
    v38 = COERCE_DOUBLE(sub_2529C7370());
    v40 = v39;

    if ((v40 & 1) == 0)
    {
      ++v29;
      if (v38 == v30)
      {
        continue;
      }
    }

    goto LABEL_48;
  }

  __break(1u);
LABEL_75:
  swift_once();
LABEL_55:
  v58 = sub_252E36AD4();
  __swift_project_value_buffer(v58, qword_27F544EB0);
  v59 = v78;
  v60 = sub_252E36AC4();
  v61 = sub_252E374C4();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v79 = v63;
    *v62 = 136315138;
    v64 = [v59 description];
    v65 = sub_252E36F34();
    v67 = v66;

    v68 = sub_252BE2CE0(v65, v67, &v79);

    *(v62 + 4) = v68;
    _os_log_impl(&dword_252917000, v60, v61, "Found all services at same brightness levels: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x2530AED00](v63, -1, -1);
    MEMORY[0x2530AED00](v62, -1, -1);
  }

LABEL_57:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  result = swift_allocObject();
  *(result + 16) = xmmword_252E3C130;
  *(result + 32) = v59;
  return result;
}

uint64_t sub_252A32ADC(void *a1, unint64_t a2)
{
  if ([a1 taskType] != 6)
  {
    return 2;
  }

  v3 = MEMORY[0x277D84F90];
  if (a2)
  {
    v15 = MEMORY[0x277D84F90];
    if (a2 >> 62)
    {
LABEL_22:
      v4 = sub_252E378C4();
    }

    else
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    while (v4 != v5)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](v5, a2);
      }

      else
      {
        if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(a2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = sub_252DA124C(0);

      ++v5;
      if (v9)
      {
        MEMORY[0x2530AD700]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v10 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v3 = v15;
        v5 = v8;
      }
    }
  }

  type metadata accessor for HomeAutomationEntityResponses();
  *(swift_initStackObject() + 24) = v3;
  v11 = sub_252999524();

  if (!v11)
  {
    return 2;
  }

  v12 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);

  if (!v12)
  {
    return 2;
  }

  v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);

  return v13;
}

uint64_t sub_252A32CA4(void *a1)
{
  v2 = [a1 attribute];
  v3 = [a1 value];
  v4 = v3;
  v5 = 0.0;
  v6 = 0.0;
  if (v3)
  {
    v7 = [v3 integerValue];

    v6 = v7;
  }

  v8 = [a1 value];
  v9 = v8 == 0;
  if (v8)
  {
    v10 = v8;
    [v8 doubleValue];
    v5 = v11;
  }

  v12 = [a1 value];
  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = v12;
  v14 = [v12 type];

  if (v4 && v14 == 4)
  {
    v9 = 0;
    v5 = v6;
    goto LABEL_21;
  }

  if (v14 != 1 || (v15 = [a1 value]) == 0)
  {
LABEL_21:
    if (qword_27F53F558 != -1)
    {
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544EB0);
    sub_252E379F4();

    *&v31[6] = v5;
    v32 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540740, &unk_252E40560);
    v22 = sub_252E36F94();
    MEMORY[0x2530AD570](v22);

    sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E72660, 0xD000000000000072, 0x8000000252E72680);

    LOBYTE(v17) = 0;
    if (v2 <= 10)
    {
      if (v2 == 2)
      {
        goto LABEL_33;
      }

      if (v2 != 8)
      {
        if (v2 != 9)
        {
          return v17 & 1;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (v2 <= 15)
      {
        if (v2 != 11)
        {
          if (v2 == 13)
          {
            v23 = [a1 value];
            if (v23 && (v24 = v23, v25 = [v23 stringValue], v24, v25))
            {
              v26 = sub_252E36F34();
              v28 = v27;
            }

            else
            {
              v26 = 0;
              v28 = 0xE000000000000000;
            }

            v33 = v26;
            v34 = v28;
            MEMORY[0x28223BE20](v23);
            v31[2] = &v33;
            v29 = sub_2529ED970(sub_25296A69C, v31, &unk_2864A72A8);
            swift_arrayDestroy();

            LOBYTE(v17) = v29 ^ 1;
          }

          return v17 & 1;
        }

LABEL_33:
        LOBYTE(v17) = (v9 & 1) == 0 && v5 == 0.0;
        return v17 & 1;
      }

      if (v2 != 38)
      {
        if (v2 == 16)
        {
          LOBYTE(v17) = (v5 == 0.0) & ~v9;
        }

        return v17 & 1;
      }
    }

    if (v5 == 0.0)
    {
      LOBYTE(v17) = v9;
    }

    else
    {
      LOBYTE(v17) = 1;
    }

    return v17 & 1;
  }

  v16 = v15;
  v17 = [v15 BOOLValue];

  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v18 = sub_252E36AD4();
  __swift_project_value_buffer(v18, qword_27F544EB0);
  sub_252E379F4();

  v33 = 0xD00000000000001ALL;
  v34 = 0x8000000252E72700;
  if (v17)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v17)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v19, v20);

  sub_252CC3D90(v33, v34, 0xD000000000000072, 0x8000000252E72680);

  if (v2 != 8)
  {
    LOBYTE(v17) = (v2 != 38) ^ v17;
  }

  return v17 & 1;
}

uint64_t sub_252A33134(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t sub_252A3314C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_252A331B4()
{
  result = qword_27F541B98;
  if (!qword_27F541B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541B98);
  }

  return result;
}

__n128 __swift_memcpy146_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_252A33244(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 146))
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

uint64_t sub_252A332A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 146) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 146) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_252A3332C(uint64_t a1)
{
  v2 = v1;
  v26 = *(a1 + 16);
  if (!v26)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v25 = a1 + 32;
  while (1)
  {
    v30 = *(v25 + 8 * v3);

    sub_252A362EC(&v30, &v29);
    if (v2)
    {

      return v4;
    }

    v6 = v29;
    v7 = v29 >> 62;
    v8 = v29 >> 62 ? sub_252E378C4() : *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = v4 >> 62;
    if (v4 >> 62)
    {
      v24 = sub_252E378C4();
      v11 = v24 + v8;
      if (__OFADD__(v24, v8))
      {
LABEL_35:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v10 + v8;
      if (__OFADD__(v10, v8))
      {
        goto LABEL_35;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v9)
      {
        goto LABEL_17;
      }

      v12 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v11 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v9)
      {
LABEL_17:
        sub_252E378C4();
        goto LABEL_18;
      }

      v12 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v13 = *(v12 + 16);
LABEL_18:
    result = sub_252E37A54();
    v4 = result;
    v12 = result & 0xFFFFFFFFFFFFFF8;
LABEL_19:
    v27 = v8;
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v7)
    {
      break;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_3;
    }

LABEL_23:
    if (((v15 >> 1) - v14) < v27)
    {
      goto LABEL_40;
    }

    if (v7)
    {
      if (v16 < 1)
      {
        goto LABEL_42;
      }

      sub_2529E6488(&qword_27F541C38, &qword_27F541C30, &qword_252E41DE8);
      for (i = 0; i != v16; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C30, &qword_252E41DE8);
        v18 = sub_2529FBF08(v28, i, v6);
        v20 = *v19;

        (v18)(v28, 0);
        *(v12 + 8 * v14 + 32 + 8 * i) = v20;
      }
    }

    else
    {
      sub_252E34554();
      swift_arrayInitWithCopy();
    }

    v2 = 0;
    if (v27 >= 1)
    {
      v21 = *(v12 + 16);
      v22 = __OFADD__(v21, v27);
      v23 = v21 + v27;
      if (v22)
      {
        goto LABEL_41;
      }

      *(v12 + 16) = v23;
    }

LABEL_4:
    if (++v3 == v26)
    {
      return v4;
    }
  }

  result = sub_252E378C4();
  v16 = result;
  if (result)
  {
    goto LABEL_23;
  }

LABEL_3:

  if (v27 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_252A33640(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x61737265766E6F63;
  v4 = 0xEE006C616E6F6974;
  if (v2 != 1)
  {
    v3 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E65657263536E6FLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x61737265766E6F63;
  v8 = 0xEE006C616E6F6974;
  if (*a2 != 1)
  {
    v7 = 1701736302;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E65657263536E6FLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252A3374C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A337F4()
{
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252A33888()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A3392C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252A3EE9C();
  *a2 = result;
  return result;
}

void sub_252A3395C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEE006C616E6F6974;
  v5 = 0x61737265766E6F63;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E65657263536E6FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_252A33A84()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252A33B98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252A3C504();
  *a2 = result;
  return result;
}

void sub_252A33BC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000079746974;
  v4 = 0x6E45656369766544;
  v5 = 0xEE00797469746E45;
  v6 = 0x79726F6765746143;
  v7 = 0x69746E456D6F6F52;
  v8 = 0xEA00000000007974;
  if (v2 != 4)
  {
    v7 = 1701736302;
    v8 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x69746E45656D6F48;
  v10 = 0xEA00000000007974;
  if (v2 != 1)
  {
    v9 = 0x746E45656E656353;
    v10 = 0xEB00000000797469;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_252A33D54()
{
  v24 = sub_252E32A64();
  v1 = *(v24 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v24);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v27 = *v0;
  v28 = v5;
  v25 = 0x6965636976726573;
  v26 = 0xEA00000000003A64;
  v23 = sub_252947DBC();
  v7 = sub_252E37794();
  v8 = *(v7 + 16);
  v9 = v8 != 0;
  if (v8 <= 1)
  {
LABEL_9:

    return v6;
  }

  v10 = v7;
  v25 = v6;
  result = sub_2529AA3A0(0, (v8 - v9) & ~((v8 - v9) >> 63), 0);
  if (((v8 - v9) & 0x8000000000000000) == 0)
  {
    v6 = v25;
    v21 = v10;
    v22 = (v1 + 8);
    v12 = (v10 + 16 * v9 + 40);
    while (v9 < v8)
    {
      v13 = v8;
      v14 = *v12;
      v27 = *(v12 - 1);
      v28 = v14;

      sub_252E32A44();
      v15 = sub_252E377A4();
      v17 = v16;
      (*v22)(v4, v24);

      v25 = v6;
      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_2529AA3A0((v18 > 1), v19 + 1, 1);
        v6 = v25;
      }

      *(v6 + 16) = v19 + 1;
      v20 = v6 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      ++v9;
      v12 += 2;
      v8 = v13;
      if (v13 == v9)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252A33F8C()
{
  v39 = v0[1];
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[5];
  v28 = v0[4];
  v29 = *v0;
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[9];
  v30 = v0[8];
  v38 = *(v0 + 80);
  v32 = v0[12];
  v33 = v0[11];
  v34 = v0[14];
  v35 = v0[13];
  v36 = v0[16];
  v37 = v0[15];
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  HomeFilter.Builder.init()();
  v8 = *(*v7 + 664);

  v31 = v2;
  v9 = v2;
  v10 = v1;
  v11 = v8(v9, v1);
  if (v5)
  {
    v3 = v5;
    v12 = v30;
  }

  else
  {
    v4 = v28;
    if (v3)
    {
      v12 = v30;
    }

    else
    {

      v12 = v30;
      v4 = v30;
      v3 = v6;
    }
  }

  v13 = (*(*v11 + 576))(v4, v3);

  v14 = (*(*v13 + 608))(v12, v6);

  v15 = (*(*v14 + 680))(v33, v32);

  v16 = (*(*v15 + 664))(v31, v10);

  v17 = (*(*v16 + 648))(v35, v34);

  v18 = (*(*v17 + 632))(v37, v36);

  v40 = v38;
  v19 = sub_252A47F84(&v40);
  if (v20)
  {
    v19 = 0;
  }

  v21 = (*(*v18 + 624))(v19);

  if (v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_252E3C290;
    *(v23 + 32) = v29;
    *(v23 + 40) = v39;
    v24 = *(*v21 + 568);

    v25 = v24(v23);

    v21 = v25;
  }

  v26 = (*(*v21 + 760))(v22);

  return v26;
}

uint64_t sub_252A343D4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x79636E65696C6173;
    v7 = 1701869940;
    if (a1 != 10)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 1836019570;
    v9 = 1701736314;
    if (a1 != 7)
    {
      v9 = 1701670760;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x6D614E656E656373;
    v3 = 0x726F737365636361;
    if (a1 != 4)
    {
      v3 = 0x7954656369766564;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6D614E70756F7267;
    if (a1 != 1)
    {
      v4 = 0x4E65636976726573;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_252A34554(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541BD0, &qword_252E41DA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v39 = v1[3];
  v40 = v8;
  v9 = v1[4];
  v37 = v1[5];
  v38 = v9;
  v10 = v1[6];
  v35 = v1[7];
  v36 = v10;
  v11 = v1[9];
  v33 = v1[8];
  v34 = v11;
  v32 = *(v1 + 80);
  v12 = v1[12];
  v30 = v1[11];
  v31 = v12;
  v13 = v1[14];
  v28 = v1[13];
  v29 = v13;
  v14 = v1[16];
  v26 = v1[15];
  v27 = v14;
  v15 = v1[17];
  v25 = *(v1 + 144);
  v16 = *(v1 + 145);
  v17 = a1[3];
  v18 = a1[4];
  v19 = a1;
  v21 = &v24 - v20;
  __swift_project_boxed_opaque_existential_1(v19, v17);
  sub_252A39AE0();
  sub_252E37F84();
  v56 = 0;
  v22 = v41;
  sub_252E37C94();
  if (!v22)
  {
    LODWORD(v41) = v16;
    v55 = 1;
    sub_252E37C94();
    v54 = 2;
    sub_252E37C94();
    v53 = 3;
    sub_252E37C94();
    v52 = 4;
    sub_252E37C94();
    v51 = v32;
    v50 = 5;
    sub_252984F9C();
    sub_252E37CD4();
    v49 = 6;
    sub_252E37C94();
    v48 = 7;
    sub_252E37C94();
    v47 = 8;
    sub_252E37C94();
    v46 = 9;
    sub_252E37D14();
    v45 = v25;
    v44 = 10;
    sub_252A39BDC();
    sub_252E37D54();
    v43 = v41;
    v42 = 11;
    sub_252A39C30();
    sub_252E37D54();
  }

  return (*(v4 + 8))(v21, v3);
}

uint64_t sub_252A34930()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 5);
  v13 = *(v0 + 4);
  v14 = *(v0 + 6);
  v4 = *(v0 + 9);
  v5 = *(v0 + 80);
  v15 = *(v0 + 8);
  v16 = *(v0 + 11);
  v21 = *(v0 + 12);
  v19 = *(v0 + 7);
  v20 = *(v0 + 14);
  v6 = *(v0 + 16);
  v17 = *(v0 + 13);
  v18 = *(v0 + 15);
  v7 = v0[17];
  v22 = *(v0 + 144);
  v23 = *(v0 + 145);
  if (*(v0 + 1))
  {
    v8 = *v0;
    sub_252E37EE4();
    sub_252E37044();
    if (v2)
    {
LABEL_3:
      sub_252E37EE4();
      sub_252E37044();
      goto LABEL_6;
    }
  }

  else
  {
    sub_252E37EE4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_252E37EE4();
LABEL_6:
  if (v3)
  {
    sub_252E37EE4();
    sub_252E37044();
    v9 = v20;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_252E37EE4();
    v9 = v20;
    if (v19)
    {
LABEL_8:
      sub_252E37EE4();
      sub_252E37044();
      v10 = v21;
      if (v4)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  sub_252E37EE4();
  v10 = v21;
  if (v4)
  {
LABEL_9:
    sub_252E37EE4();
    sub_252E37044();
    if (v5 == 52)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  sub_252E37EE4();
  if (v5 == 52)
  {
LABEL_10:
    sub_252E37EE4();
    if (v10)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  sub_252E37EE4();
  AccessoryTypeSemantic.rawValue.getter();
  sub_252E37044();

  if (v10)
  {
LABEL_11:
    sub_252E37EE4();
    sub_252E37044();
    if (v9)
    {
      goto LABEL_12;
    }

LABEL_19:
    sub_252E37EE4();
    if (v6)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

LABEL_18:
  sub_252E37EE4();
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_12:
  sub_252E37EE4();
  sub_252E37044();
  if (v6)
  {
LABEL_13:
    sub_252E37EE4();
    sub_252E37044();
    goto LABEL_21;
  }

LABEL_20:
  sub_252E37EE4();
LABEL_21:
  v11 = 0.0;
  if (v7 != 0.0)
  {
    v11 = v7;
  }

  MEMORY[0x2530AE3C0](*&v11);
  sub_252E37044();

  sub_252E37044();
}